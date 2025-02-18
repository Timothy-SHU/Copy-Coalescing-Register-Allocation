; ModuleID = 'magick/blob.c'
source_filename = "magick/blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._BlobInfo = type { i64, i64, i64, i32, i32, i64, i64, i32, i32, i32, i32, i32, %union.FileInfo, %struct.stat, ptr, ptr, i32, ptr, i64, i64 }
%union.FileInfo = type { ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
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

@.str = private unnamed_addr constant [14 x i8] c"magick/blob.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"UnableToWriteBlob\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"`%s': %s\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"ZeroLengthBlobNotPermitted\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"NoDecodeDelegateForThisImageFormat\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"UnableToOpenFile\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"UnableToReadBlob\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"UnableToOpenBlob\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.16 = private unnamed_addr constant [22 x i8] c"MemoryAllocationError\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"UnableToCreateTemporaryFile\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"w+b\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"a+b\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"NotAuthorized\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"fd:\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"%s-%.20g\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"%s-%.20g.%s\00", align 1
@.str.28 = private unnamed_addr constant [32 x i8] c"  read %.20g magic header bytes\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"UnrecognizedImageFormat\00", align 1
@switch.table.IsBlobSeekable = private unnamed_addr constant [7 x i32] [i32 1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 1], align 4
@reltable.OpenBlob = private unnamed_addr constant [5 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.19 to i64), i64 ptrtoint (ptr @reltable.OpenBlob to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.20 to i64), i64 ptrtoint (ptr @reltable.OpenBlob to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.21 to i64), i64 ptrtoint (ptr @reltable.OpenBlob to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.22 to i64), i64 ptrtoint (ptr @reltable.OpenBlob to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.23 to i64), i64 ptrtoint (ptr @reltable.OpenBlob to i64)) to i32)], align 4

; Function Attrs: nounwind uwtable
define dso_local void @AttachBlob(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 16
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 197, ptr noundef nonnull @.str.2) #22
  br label %9

9:                                                ; preds = %7, %3
  store i64 %2, ptr %0, align 8, !tbaa !44
  %10 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 1
  store i64 %2, ptr %10, align 8, !tbaa !45
  %11 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 2
  store i64 65541, ptr %11, align 8, !tbaa !46
  %12 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 5
  store i64 0, ptr %12, align 8, !tbaa !47
  %13 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 11
  store i32 7, ptr %13, align 8, !tbaa !48
  %14 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 12
  store ptr null, ptr %14, align 8, !tbaa !49
  %15 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 15
  store ptr %1, ptr %15, align 8, !tbaa !50
  %16 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 3
  store i32 0, ptr %16, align 8, !tbaa !51
  ret void
}

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @BlobToFile(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 260, ptr noundef nonnull @.str.3, ptr noundef %0) #22
  %6 = load i8, ptr %0, align 1, !tbaa !49
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = tail call i32 @AcquireUniqueFileResource(ptr noundef nonnull %0) #22
  br label %12

10:                                               ; preds = %4
  %11 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef 194, i32 noundef 384) #22
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = icmp ne i64 %2, 0
  br i1 %16, label %22, label %38

17:                                               ; preds = %12
  %18 = tail call ptr @__errno_location() #23
  %19 = load i32, ptr %18, align 4, !tbaa !52
  %20 = tail call ptr @GetExceptionMessage(i32 noundef %19) #22
  %21 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 268, i32 noundef 435, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull %0, ptr noundef %20) #22
  br label %48

22:                                               ; preds = %15, %34
  %23 = phi i1 [ %37, %34 ], [ %16, %15 ]
  %24 = phi i64 [ %36, %34 ], [ 0, %15 ]
  %25 = getelementptr inbounds i8, ptr %1, i64 %24
  %26 = sub i64 %2, %24
  %27 = tail call i64 @llvm.umin.i64(i64 %26, i64 9223372036854775807)
  %28 = tail call i64 @write(i32 noundef %13, ptr noundef %25, i64 noundef %27) #22
  %29 = icmp slt i64 %28, 1
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = tail call ptr @__errno_location() #23
  %32 = load i32, ptr %31, align 4, !tbaa !52
  %33 = icmp eq i32 %32, 4
  br i1 %33, label %34, label %38

34:                                               ; preds = %22, %30
  %35 = phi i64 [ 0, %30 ], [ %28, %22 ]
  %36 = add i64 %35, %24
  %37 = icmp ult i64 %36, %2
  br i1 %37, label %22, label %38, !llvm.loop !53

38:                                               ; preds = %34, %30, %15
  %39 = phi i1 [ %16, %15 ], [ %37, %34 ], [ %23, %30 ]
  %40 = tail call i32 @close(i32 noundef %13) #22
  %41 = icmp eq i32 %40, -1
  %42 = or i1 %39, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = tail call ptr @__errno_location() #23
  %45 = load i32, ptr %44, align 4, !tbaa !52
  %46 = tail call ptr @GetExceptionMessage(i32 noundef %45) #22
  %47 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 285, i32 noundef 435, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull %0, ptr noundef %46) #22
  br label %48

48:                                               ; preds = %17, %43
  %49 = phi ptr [ %46, %43 ], [ %20, %17 ]
  %50 = tail call ptr @DestroyString(ptr noundef %49) #22
  br label %51

51:                                               ; preds = %48, %38
  %52 = phi i32 [ 1, %38 ], [ 0, %48 ]
  ret i32 %52
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare i32 @AcquireUniqueFileResource(ptr noundef) local_unnamed_addr #1

declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @DestroyString(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #4

declare i32 @close(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @BlobToImage(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 52
  %6 = load i32, ptr %5, align 8, !tbaa !56
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 341, ptr noundef nonnull @.str.3, ptr noundef nonnull %9) #22
  br label %11

11:                                               ; preds = %8, %4
  %12 = icmp eq ptr %1, null
  %13 = icmp eq i64 %2, 0
  %14 = or i1 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 346, i32 noundef 435, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull %16) #22
  br label %98

18:                                               ; preds = %11
  %19 = tail call ptr @CloneImageInfo(ptr noundef %0) #22
  %20 = getelementptr inbounds %struct._ImageInfo, ptr %19, i64 0, i32 46
  store ptr %1, ptr %20, align 8, !tbaa !61
  %21 = getelementptr inbounds %struct._ImageInfo, ptr %19, i64 0, i32 47
  store i64 %2, ptr %21, align 8, !tbaa !62
  %22 = getelementptr inbounds %struct._ImageInfo, ptr %19, i64 0, i32 48
  %23 = load i8, ptr %22, align 8, !tbaa !49
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = tail call i32 @SetImageInfo(ptr noundef %19, i32 noundef 0, ptr noundef %3) #22
  br label %27

27:                                               ; preds = %25, %18
  %28 = tail call ptr @GetMagickInfo(ptr noundef nonnull %22, ptr noundef %3) #22
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 358, i32 noundef 420, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, ptr noundef nonnull %22) #22
  %32 = tail call ptr @DestroyImageInfo(ptr noundef %19) #22
  br label %98

33:                                               ; preds = %27
  %34 = tail call i32 @GetMagickBlobSupport(ptr noundef nonnull %28) #22
  %35 = icmp eq i32 %34, 0
  %36 = getelementptr inbounds %struct._ImageInfo, ptr %19, i64 0, i32 51
  br i1 %35, label %66, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %39 = tail call i64 @CopyMagickString(ptr noundef nonnull %36, ptr noundef nonnull %38, i64 noundef 4096) #22
  %40 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 48
  %41 = tail call i64 @CopyMagickString(ptr noundef nonnull %22, ptr noundef nonnull %40, i64 noundef 4096) #22
  %42 = tail call ptr @ReadImage(ptr noundef %19, ptr noundef %3) #22
  %43 = icmp eq ptr %42, null
  br i1 %43, label %64, label %44

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct._Image, ptr %42, i64 0, i32 52
  %46 = load ptr, ptr %45, align 8, !tbaa !63
  %47 = getelementptr inbounds %struct._BlobInfo, ptr %46, i64 0, i32 16
  %48 = load i32, ptr %47, align 8, !tbaa !34
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %44
  %51 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 691, ptr noundef nonnull @.str.2) #22
  br label %52

52:                                               ; preds = %50, %44
  %53 = getelementptr inbounds %struct._BlobInfo, ptr %46, i64 0, i32 3
  %54 = load i32, ptr %53, align 8, !tbaa !51
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct._BlobInfo, ptr %46, i64 0, i32 15
  store ptr null, ptr %57, align 8, !tbaa !50
  %58 = load i64, ptr %46, align 8, !tbaa !44
  tail call void @RelinquishMagickResource(i32 noundef 4, i64 noundef %58) #22
  br label %59

59:                                               ; preds = %52, %56
  store i64 0, ptr %46, align 8, !tbaa !44
  %60 = getelementptr inbounds %struct._BlobInfo, ptr %46, i64 0, i32 7
  store i32 0, ptr %60, align 8, !tbaa !73
  %61 = getelementptr inbounds %struct._BlobInfo, ptr %46, i64 0, i32 11
  store i32 0, ptr %61, align 8, !tbaa !48
  %62 = getelementptr inbounds %struct._BlobInfo, ptr %46, i64 0, i32 12
  store ptr null, ptr %62, align 8, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %53, i8 0, i64 16, i1 false)
  %63 = getelementptr inbounds %struct._BlobInfo, ptr %46, i64 0, i32 14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %63, i8 0, i64 16, i1 false)
  br label %64

64:                                               ; preds = %59, %37
  %65 = tail call ptr @DestroyImageInfo(ptr noundef %19) #22
  br label %98

66:                                               ; preds = %33
  store i8 0, ptr %36, align 8, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, i8 0, i64 16, i1 false)
  %67 = tail call i32 @BlobToFile(ptr noundef nonnull %36, ptr noundef %1, i64 noundef %2, ptr noundef %3), !range !74
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = tail call i32 @RelinquishUniqueFileResource(ptr noundef nonnull %36) #22
  %71 = tail call ptr @DestroyImageInfo(ptr noundef %19) #22
  br label %98

72:                                               ; preds = %66
  %73 = tail call ptr @CloneImageInfo(ptr noundef %19) #22
  %74 = getelementptr inbounds %struct._ImageInfo, ptr %73, i64 0, i32 51
  %75 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %74, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef nonnull %22, ptr noundef nonnull %36) #22
  %76 = tail call ptr @ReadImage(ptr noundef %73, ptr noundef %3) #22
  %77 = icmp eq ptr %76, null
  br i1 %77, label %94, label %78

78:                                               ; preds = %72
  %79 = tail call ptr @GetFirstImageInList(ptr noundef nonnull %76) #22
  %80 = icmp eq ptr %79, null
  br i1 %80, label %94, label %81

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  br label %83

83:                                               ; preds = %81, %83
  %84 = phi ptr [ %79, %81 ], [ %92, %83 ]
  %85 = getelementptr inbounds %struct._Image, ptr %84, i64 0, i32 53
  %86 = tail call i64 @CopyMagickString(ptr noundef nonnull %85, ptr noundef nonnull %82, i64 noundef 4096) #22
  %87 = getelementptr inbounds %struct._Image, ptr %84, i64 0, i32 54
  %88 = tail call i64 @CopyMagickString(ptr noundef nonnull %87, ptr noundef nonnull %82, i64 noundef 4096) #22
  %89 = getelementptr inbounds %struct._Image, ptr %84, i64 0, i32 55
  %90 = load ptr, ptr %28, align 8, !tbaa !75
  %91 = tail call i64 @CopyMagickString(ptr noundef nonnull %89, ptr noundef %90, i64 noundef 4096) #22
  %92 = tail call ptr @GetNextImageInList(ptr noundef nonnull %84) #22
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %83, !llvm.loop !77

94:                                               ; preds = %83, %78, %72
  %95 = tail call ptr @DestroyImageInfo(ptr noundef %73) #22
  %96 = tail call i32 @RelinquishUniqueFileResource(ptr noundef nonnull %36) #22
  %97 = tail call ptr @DestroyImageInfo(ptr noundef %19) #22
  br label %98

98:                                               ; preds = %94, %69, %64, %30, %15
  %99 = phi ptr [ null, %15 ], [ null, %30 ], [ %42, %64 ], [ null, %69 ], [ %76, %94 ]
  ret ptr %99
}

declare ptr @CloneImageInfo(ptr noundef) local_unnamed_addr #1

declare i32 @SetImageInfo(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @GetMagickInfo(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @DestroyImageInfo(ptr noundef) local_unnamed_addr #1

declare i32 @GetMagickBlobSupport(ptr noundef) local_unnamed_addr #1

declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @ReadImage(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @DetachBlob(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 16
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 691, ptr noundef nonnull @.str.2) #22
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !51
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 15
  store ptr null, ptr %12, align 8, !tbaa !50
  %13 = load i64, ptr %0, align 8, !tbaa !44
  tail call void @RelinquishMagickResource(i32 noundef 4, i64 noundef %13) #22
  br label %14

14:                                               ; preds = %11, %7
  store i64 0, ptr %0, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 7
  store i32 0, ptr %15, align 8, !tbaa !73
  %16 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 11
  store i32 0, ptr %16, align 8, !tbaa !48
  %17 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 12
  store ptr null, ptr %17, align 8, !tbaa !49
  %18 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %19 = load ptr, ptr %18, align 8, !tbaa !50
  %20 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, i8 0, i64 16, i1 false)
  ret ptr %19
}

declare i32 @RelinquishUniqueFileResource(ptr noundef) local_unnamed_addr #1

declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @GetFirstImageInList(ptr noundef) local_unnamed_addr #1

declare ptr @GetNextImageInList(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @CloneBlobInfo(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = tail call dereferenceable_or_null(272) ptr @AcquireMagickMemory(i64 noundef 272) #24
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #22
  call void @GetExceptionInfo(ptr noundef nonnull %2) #22
  %6 = tail call ptr @__errno_location() #23
  %7 = load i32, ptr %6, align 4, !tbaa !52
  %8 = call ptr @GetExceptionMessage(i32 noundef %7) #22
  %9 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 451, i32 noundef 700, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.7, ptr noundef %8) #22
  %10 = call ptr @DestroyString(ptr noundef %8) #22
  call void @CatchException(ptr noundef nonnull %2) #22
  %11 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #22
  call void @MagickCoreTerminus() #22
  call void @_exit(i32 noundef 1) #25
  unreachable

12:                                               ; preds = %1
  %13 = tail call ptr @ResetMagickMemory(ptr noundef %3, i32 noundef 0, i64 noundef 272) #22
  %14 = getelementptr inbounds %struct._BlobInfo, ptr %3, i64 0, i32 11
  store i32 0, ptr %14, align 8, !tbaa !48
  %15 = getelementptr inbounds %struct._BlobInfo, ptr %3, i64 0, i32 2
  store i64 65541, ptr %15, align 8, !tbaa !46
  %16 = tail call i64 @time(ptr noundef null) #22
  %17 = getelementptr inbounds %struct._BlobInfo, ptr %3, i64 0, i32 13, i32 12
  store i64 %16, ptr %17, align 8, !tbaa !78
  %18 = tail call i64 @time(ptr noundef null) #22
  %19 = getelementptr inbounds %struct._BlobInfo, ptr %3, i64 0, i32 13, i32 13
  store i64 %18, ptr %19, align 8, !tbaa !79
  %20 = tail call i32 @IsEventLogging() #22
  %21 = getelementptr inbounds %struct._BlobInfo, ptr %3, i64 0, i32 16
  store i32 %20, ptr %21, align 8, !tbaa !34
  %22 = getelementptr inbounds %struct._BlobInfo, ptr %3, i64 0, i32 18
  store i64 1, ptr %22, align 8, !tbaa !80
  %23 = tail call ptr @AllocateSemaphoreInfo() #22
  %24 = getelementptr inbounds %struct._BlobInfo, ptr %3, i64 0, i32 17
  store ptr %23, ptr %24, align 8, !tbaa !81
  %25 = getelementptr inbounds %struct._BlobInfo, ptr %3, i64 0, i32 19
  store i64 2880220587, ptr %25, align 8, !tbaa !82
  %26 = icmp eq ptr %0, null
  br i1 %26, label %72, label %27

27:                                               ; preds = %12
  %28 = load i64, ptr %0, align 8, !tbaa !44
  store i64 %28, ptr %3, align 8, !tbaa !44
  %29 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !45
  %31 = getelementptr inbounds %struct._BlobInfo, ptr %3, i64 0, i32 1
  store i64 %30, ptr %31, align 8, !tbaa !45
  %32 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 8
  %33 = load i32, ptr %32, align 4, !tbaa !83
  %34 = getelementptr inbounds %struct._BlobInfo, ptr %3, i64 0, i32 8
  store i32 %33, ptr %34, align 4, !tbaa !83
  %35 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 2
  %36 = load i64, ptr %35, align 8, !tbaa !46
  store i64 %36, ptr %15, align 8, !tbaa !46
  %37 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 3
  %38 = load i32, ptr %37, align 8, !tbaa !51
  %39 = getelementptr inbounds %struct._BlobInfo, ptr %3, i64 0, i32 3
  store i32 %38, ptr %39, align 8, !tbaa !51
  %40 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 4
  %41 = load i32, ptr %40, align 4, !tbaa !84
  %42 = getelementptr inbounds %struct._BlobInfo, ptr %3, i64 0, i32 4
  store i32 %41, ptr %42, align 4, !tbaa !84
  %43 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 5
  %44 = load i64, ptr %43, align 8, !tbaa !47
  %45 = getelementptr inbounds %struct._BlobInfo, ptr %3, i64 0, i32 5
  store i64 %44, ptr %45, align 8, !tbaa !47
  %46 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 6
  %47 = load i64, ptr %46, align 8, !tbaa !85
  %48 = getelementptr inbounds %struct._BlobInfo, ptr %3, i64 0, i32 6
  store i64 %47, ptr %48, align 8, !tbaa !85
  %49 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 7
  %50 = load i32, ptr %49, align 8, !tbaa !73
  %51 = getelementptr inbounds %struct._BlobInfo, ptr %3, i64 0, i32 7
  store i32 %50, ptr %51, align 8, !tbaa !73
  %52 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 9
  %53 = load i32, ptr %52, align 8, !tbaa !86
  %54 = getelementptr inbounds %struct._BlobInfo, ptr %3, i64 0, i32 9
  store i32 %53, ptr %54, align 8, !tbaa !86
  %55 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 10
  %56 = load i32, ptr %55, align 4, !tbaa !87
  %57 = getelementptr inbounds %struct._BlobInfo, ptr %3, i64 0, i32 10
  store i32 %56, ptr %57, align 4, !tbaa !87
  %58 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 11
  %59 = load i32, ptr %58, align 8, !tbaa !48
  store i32 %59, ptr %14, align 8, !tbaa !48
  %60 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 12
  %61 = load ptr, ptr %60, align 8, !tbaa !49
  %62 = getelementptr inbounds %struct._BlobInfo, ptr %3, i64 0, i32 12
  store ptr %61, ptr %62, align 8, !tbaa !49
  %63 = getelementptr inbounds %struct._BlobInfo, ptr %3, i64 0, i32 13
  %64 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %63, ptr noundef nonnull align 8 dereferenceable(144) %64, i64 144, i1 false), !tbaa.struct !88
  %65 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 14
  %66 = load ptr, ptr %65, align 8, !tbaa !90
  %67 = getelementptr inbounds %struct._BlobInfo, ptr %3, i64 0, i32 14
  store ptr %66, ptr %67, align 8, !tbaa !90
  %68 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 15
  %69 = load ptr, ptr %68, align 8, !tbaa !50
  %70 = getelementptr inbounds %struct._BlobInfo, ptr %3, i64 0, i32 15
  store ptr %69, ptr %70, align 8, !tbaa !50
  %71 = tail call i32 @IsEventLogging() #22
  store i32 %71, ptr %21, align 8, !tbaa !34
  store i64 1, ptr %22, align 8, !tbaa !80
  br label %72

72:                                               ; preds = %12, %27
  ret ptr %3
}

; Function Attrs: allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #5

declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #1

declare void @CatchException(ptr noundef) local_unnamed_addr #1

declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #1

declare void @MagickCoreTerminus() local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @GetBlobInfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @ResetMagickMemory(ptr noundef %0, i32 noundef 0, i64 noundef 272) #22
  %3 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 11
  store i32 0, ptr %3, align 8, !tbaa !48
  %4 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 2
  store i64 65541, ptr %4, align 8, !tbaa !46
  %5 = tail call i64 @time(ptr noundef null) #22
  %6 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 13, i32 12
  store i64 %5, ptr %6, align 8, !tbaa !78
  %7 = tail call i64 @time(ptr noundef null) #22
  %8 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 13, i32 13
  store i64 %7, ptr %8, align 8, !tbaa !79
  %9 = tail call i32 @IsEventLogging() #22
  %10 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 16
  store i32 %9, ptr %10, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 18
  store i64 1, ptr %11, align 8, !tbaa !80
  %12 = tail call ptr @AllocateSemaphoreInfo() #22
  %13 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 17
  store ptr %12, ptr %13, align 8, !tbaa !81
  %14 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 19
  store i64 2880220587, ptr %14, align 8, !tbaa !82
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

declare i32 @IsEventLogging() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @CloseBlob(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !91
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 509, ptr noundef nonnull @.str.3, ptr noundef nonnull %6) #22
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %10 = load ptr, ptr %9, align 8, !tbaa !63
  %11 = getelementptr inbounds %struct._BlobInfo, ptr %10, i64 0, i32 11
  %12 = load i32, ptr %11, align 8, !tbaa !48
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %111, label %14

14:                                               ; preds = %8
  %15 = load i32, ptr %2, align 8, !tbaa !91
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %19 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3898, ptr noundef nonnull @.str.3, ptr noundef nonnull %18) #22
  br label %20

20:                                               ; preds = %17, %14
  %21 = load ptr, ptr %9, align 8, !tbaa !63
  %22 = getelementptr inbounds %struct._BlobInfo, ptr %21, i64 0, i32 11
  %23 = load i32, ptr %22, align 8, !tbaa !48
  switch i32 %23, label %28 [
    i32 3, label %24
    i32 1, label %24
  ]

24:                                               ; preds = %20, %20
  %25 = getelementptr inbounds %struct._BlobInfo, ptr %21, i64 0, i32 12
  %26 = load ptr, ptr %25, align 8, !tbaa !49
  %27 = tail call i32 @fflush(ptr noundef %26)
  br label %28

28:                                               ; preds = %20, %24
  %29 = phi i32 [ 0, %20 ], [ %27, %24 ]
  %30 = load ptr, ptr %9, align 8, !tbaa !63
  %31 = getelementptr inbounds %struct._BlobInfo, ptr %30, i64 0, i32 11
  %32 = load i32, ptr %31, align 8, !tbaa !48
  switch i32 %32, label %59 [
    i32 7, label %41
    i32 3, label %33
    i32 1, label %33
  ]

33:                                               ; preds = %28, %28
  %34 = getelementptr inbounds %struct._BlobInfo, ptr %30, i64 0, i32 8
  %35 = load i32, ptr %34, align 4, !tbaa !83
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %54, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct._BlobInfo, ptr %30, i64 0, i32 12
  %39 = load ptr, ptr %38, align 8, !tbaa !49
  %40 = tail call i32 @fileno(ptr noundef %39) #22
  br label %51

41:                                               ; preds = %28
  %42 = getelementptr inbounds %struct._BlobInfo, ptr %30, i64 0, i32 12
  %43 = load ptr, ptr %42, align 8, !tbaa !49
  %44 = icmp eq ptr %43, null
  br i1 %44, label %59, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct._BlobInfo, ptr %30, i64 0, i32 8
  %47 = load i32, ptr %46, align 4, !tbaa !83
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %45
  %50 = tail call i32 @fileno(ptr noundef nonnull %43) #22
  br label %51

51:                                               ; preds = %49, %37
  %52 = phi i32 [ %40, %37 ], [ %50, %49 ]
  %53 = tail call i32 @fsync(i32 noundef %52) #22
  br label %54

54:                                               ; preds = %51, %33
  %55 = load ptr, ptr %9, align 8, !tbaa !63
  %56 = getelementptr inbounds %struct._BlobInfo, ptr %55, i64 0, i32 12
  %57 = load ptr, ptr %56, align 8, !tbaa !49
  %58 = tail call i32 @ferror(ptr noundef %57) #22
  br label %59

59:                                               ; preds = %54, %41, %45, %28
  %60 = phi i32 [ %29, %28 ], [ %29, %45 ], [ %29, %41 ], [ %58, %54 ]
  %61 = lshr i32 %60, 31
  %62 = load ptr, ptr %9, align 8, !tbaa !63
  %63 = getelementptr inbounds %struct._BlobInfo, ptr %62, i64 0, i32 9
  store i32 %61, ptr %63, align 8, !tbaa !86
  %64 = tail call i64 @GetBlobSize(ptr noundef %0)
  %65 = load ptr, ptr %9, align 8, !tbaa !63
  %66 = getelementptr inbounds %struct._BlobInfo, ptr %65, i64 0, i32 6
  store i64 %64, ptr %66, align 8, !tbaa !85
  %67 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 79
  store i64 %64, ptr %67, align 8, !tbaa !92
  %68 = getelementptr inbounds %struct._BlobInfo, ptr %65, i64 0, i32 4
  store i32 0, ptr %68, align 4, !tbaa !84
  %69 = getelementptr inbounds %struct._BlobInfo, ptr %65, i64 0, i32 7
  %70 = load i32, ptr %69, align 8, !tbaa !73
  %71 = icmp eq i32 %70, 0
  %72 = getelementptr inbounds %struct._BlobInfo, ptr %65, i64 0, i32 11
  br i1 %71, label %76, label %73

73:                                               ; preds = %59
  store i32 0, ptr %72, align 8, !tbaa !48
  %74 = getelementptr inbounds %struct._BlobInfo, ptr %65, i64 0, i32 9
  %75 = load i32, ptr %74, align 8, !tbaa !86
  br label %111

76:                                               ; preds = %59
  %77 = load i32, ptr %72, align 8, !tbaa !48
  switch i32 %77, label %88 [
    i32 7, label %82
    i32 1, label %78
  ]

78:                                               ; preds = %76
  %79 = getelementptr inbounds %struct._BlobInfo, ptr %65, i64 0, i32 12
  %80 = load ptr, ptr %79, align 8, !tbaa !49
  %81 = tail call i32 @fclose(ptr noundef %80)
  br label %88

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct._BlobInfo, ptr %65, i64 0, i32 12
  %84 = load ptr, ptr %83, align 8, !tbaa !49
  %85 = icmp eq ptr %84, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %82
  %87 = tail call i32 @fclose(ptr noundef nonnull %84)
  br label %88

88:                                               ; preds = %82, %86, %76, %78
  %89 = phi i32 [ %60, %76 ], [ %81, %78 ], [ %87, %86 ], [ %60, %82 ]
  %90 = load ptr, ptr %9, align 8, !tbaa !63
  %91 = getelementptr inbounds %struct._BlobInfo, ptr %90, i64 0, i32 16
  %92 = load i32, ptr %91, align 8, !tbaa !34
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %88
  %95 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 691, ptr noundef nonnull @.str.2) #22
  br label %96

96:                                               ; preds = %94, %88
  %97 = getelementptr inbounds %struct._BlobInfo, ptr %90, i64 0, i32 3
  %98 = load i32, ptr %97, align 8, !tbaa !51
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct._BlobInfo, ptr %90, i64 0, i32 15
  store ptr null, ptr %101, align 8, !tbaa !50
  %102 = load i64, ptr %90, align 8, !tbaa !44
  tail call void @RelinquishMagickResource(i32 noundef 4, i64 noundef %102) #22
  br label %103

103:                                              ; preds = %96, %100
  store i64 0, ptr %90, align 8, !tbaa !44
  %104 = getelementptr inbounds %struct._BlobInfo, ptr %90, i64 0, i32 7
  store i32 0, ptr %104, align 8, !tbaa !73
  %105 = getelementptr inbounds %struct._BlobInfo, ptr %90, i64 0, i32 11
  store i32 0, ptr %105, align 8, !tbaa !48
  %106 = getelementptr inbounds %struct._BlobInfo, ptr %90, i64 0, i32 12
  store ptr null, ptr %106, align 8, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %97, i8 0, i64 16, i1 false)
  %107 = getelementptr inbounds %struct._BlobInfo, ptr %90, i64 0, i32 14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %107, i8 0, i64 16, i1 false)
  %108 = lshr i32 %89, 31
  %109 = load ptr, ptr %9, align 8, !tbaa !63
  %110 = getelementptr inbounds %struct._BlobInfo, ptr %109, i64 0, i32 9
  store i32 %108, ptr %110, align 8, !tbaa !86
  br label %111

111:                                              ; preds = %8, %103, %73
  %112 = phi i32 [ %75, %73 ], [ %108, %103 ], [ 1, %8 ]
  ret i32 %112
}

declare i32 @fsync(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind memory(read)
declare noundef i32 @ferror(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i64 @GetBlobSize(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !91
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1358, ptr noundef nonnull @.str.3, ptr noundef nonnull %6) #22
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %10 = load ptr, ptr %9, align 8, !tbaa !63
  %11 = getelementptr inbounds %struct._BlobInfo, ptr %10, i64 0, i32 11
  %12 = load i32, ptr %11, align 8, !tbaa !48
  switch i32 %12, label %41 [
    i32 0, label %13
    i32 2, label %15
    i32 1, label %17
    i32 3, label %28
    i32 4, label %30
    i32 5, label %30
    i32 7, label %38
  ]

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct._BlobInfo, ptr %10, i64 0, i32 6
  br label %38

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct._BlobInfo, ptr %10, i64 0, i32 6
  br label %38

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct._BlobInfo, ptr %10, i64 0, i32 12
  %19 = load ptr, ptr %18, align 8, !tbaa !49
  %20 = tail call i32 @fileno(ptr noundef %19) #22
  %21 = load ptr, ptr %9, align 8, !tbaa !63
  %22 = getelementptr inbounds %struct._BlobInfo, ptr %21, i64 0, i32 13
  %23 = tail call i32 @fstat(i32 noundef %20, ptr noundef nonnull %22) #22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %17
  %26 = load ptr, ptr %9, align 8, !tbaa !63
  %27 = getelementptr inbounds %struct._BlobInfo, ptr %26, i64 0, i32 13, i32 8
  br label %38

28:                                               ; preds = %8
  %29 = getelementptr inbounds %struct._BlobInfo, ptr %10, i64 0, i32 6
  br label %38

30:                                               ; preds = %8, %8
  %31 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %32 = getelementptr inbounds %struct._BlobInfo, ptr %10, i64 0, i32 13
  %33 = tail call i32 @GetPathAttributes(ptr noundef nonnull %31, ptr noundef nonnull %32) #22
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %30
  %36 = load ptr, ptr %9, align 8, !tbaa !63
  %37 = getelementptr inbounds %struct._BlobInfo, ptr %36, i64 0, i32 13, i32 8
  br label %38

38:                                               ; preds = %8, %13, %15, %28, %25, %35
  %39 = phi ptr [ %37, %35 ], [ %27, %25 ], [ %29, %28 ], [ %16, %15 ], [ %14, %13 ], [ %10, %8 ]
  %40 = load i64, ptr %39, align 8, !tbaa !49
  br label %41

41:                                               ; preds = %38, %30, %17, %8
  %42 = phi i64 [ 0, %8 ], [ 0, %17 ], [ 0, %30 ], [ %40, %38 ]
  ret i64 %42
}

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local void @DestroyBlob(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !91
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 638, ptr noundef nonnull @.str.3, ptr noundef nonnull %6) #22
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %10 = load ptr, ptr %9, align 8, !tbaa !63
  %11 = getelementptr inbounds %struct._BlobInfo, ptr %10, i64 0, i32 17
  %12 = load ptr, ptr %11, align 8, !tbaa !81
  tail call void @LockSemaphoreInfo(ptr noundef %12) #22
  %13 = load ptr, ptr %9, align 8, !tbaa !63
  %14 = getelementptr inbounds %struct._BlobInfo, ptr %13, i64 0, i32 18
  %15 = load i64, ptr %14, align 8, !tbaa !80
  %16 = add nsw i64 %15, -1
  store i64 %16, ptr %14, align 8, !tbaa !80
  %17 = icmp eq i64 %16, 0
  %18 = getelementptr inbounds %struct._BlobInfo, ptr %13, i64 0, i32 17
  %19 = load ptr, ptr %18, align 8, !tbaa !81
  tail call void @UnlockSemaphoreInfo(ptr noundef %19) #22
  br i1 %17, label %20, label %38

20:                                               ; preds = %8
  %21 = tail call i32 @CloseBlob(ptr noundef %0)
  %22 = load ptr, ptr %9, align 8, !tbaa !63
  %23 = getelementptr inbounds %struct._BlobInfo, ptr %22, i64 0, i32 3
  %24 = load i32, ptr %23, align 8, !tbaa !51
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %20
  %27 = load i64, ptr %22, align 8, !tbaa !44
  tail call void @RelinquishMagickResource(i32 noundef 4, i64 noundef %27) #22
  br label %28

28:                                               ; preds = %26, %20
  %29 = load ptr, ptr %9, align 8, !tbaa !63
  %30 = getelementptr inbounds %struct._BlobInfo, ptr %29, i64 0, i32 17
  %31 = load ptr, ptr %30, align 8, !tbaa !81
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull %30) #22
  br label %34

34:                                               ; preds = %33, %28
  %35 = load ptr, ptr %9, align 8, !tbaa !63
  %36 = getelementptr inbounds %struct._BlobInfo, ptr %35, i64 0, i32 19
  store i64 -2880220588, ptr %36, align 8, !tbaa !82
  %37 = tail call ptr @RelinquishMagickMemory(ptr noundef %35) #22
  store ptr %37, ptr %9, align 8, !tbaa !63
  br label %38

38:                                               ; preds = %8, %34
  ret void
}

declare void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #1

declare void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @UnmapBlob(ptr nocapture noundef readnone %0, i64 noundef %1) local_unnamed_addr #10 {
  ret i32 0
}

declare void @RelinquishMagickResource(i32 noundef, i64 noundef) local_unnamed_addr #1

declare void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #1

declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @DiscardBlobBytes(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #11 {
  %3 = alloca [16384 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 16384, ptr nonnull %3) #22
  %4 = icmp slt i64 %1, 1
  br i1 %4, label %43, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  br label %7

7:                                                ; preds = %5, %39
  %8 = phi i1 [ %4, %5 ], [ %42, %39 ]
  %9 = phi i64 [ 0, %5 ], [ %41, %39 ]
  %10 = sub nsw i64 %1, %9
  %11 = tail call i64 @llvm.umin.i64(i64 %10, i64 16384)
  %12 = load ptr, ptr %6, align 8, !tbaa !63
  %13 = getelementptr inbounds %struct._BlobInfo, ptr %12, i64 0, i32 11
  %14 = load i32, ptr %13, align 8, !tbaa !48
  %15 = icmp eq i32 %14, 7
  br i1 %15, label %18, label %16

16:                                               ; preds = %7
  %17 = call i64 @ReadBlob(ptr noundef %0, i64 noundef %11, ptr noundef nonnull %3)
  br label %32

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct._BlobInfo, ptr %12, i64 0, i32 5
  %20 = load i64, ptr %19, align 8, !tbaa !47
  %21 = load i64, ptr %12, align 8, !tbaa !44
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct._BlobInfo, ptr %12, i64 0, i32 4
  store i32 1, ptr %24, align 4, !tbaa !84
  br label %32

25:                                               ; preds = %18
  %26 = sub i64 %21, %20
  %27 = tail call i64 @llvm.umin.i64(i64 %11, i64 %26)
  %28 = add nsw i64 %27, %20
  store i64 %28, ptr %19, align 8, !tbaa !47
  %29 = icmp ult i64 %26, %11
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct._BlobInfo, ptr %12, i64 0, i32 4
  store i32 1, ptr %31, align 4, !tbaa !84
  br label %32

32:                                               ; preds = %16, %23, %25, %30
  %33 = phi i64 [ %27, %30 ], [ %27, %25 ], [ 0, %23 ], [ %17, %16 ]
  %34 = icmp slt i64 %33, 1
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = tail call ptr @__errno_location() #23
  %37 = load i32, ptr %36, align 4, !tbaa !52
  %38 = icmp eq i32 %37, 4
  br i1 %38, label %39, label %43

39:                                               ; preds = %32, %35
  %40 = phi i64 [ 0, %35 ], [ %33, %32 ]
  %41 = add nuw nsw i64 %40, %9
  %42 = icmp sge i64 %41, %1
  br i1 %42, label %43, label %7, !llvm.loop !93

43:                                               ; preds = %39, %35, %2
  %44 = phi i1 [ %4, %2 ], [ %42, %39 ], [ %8, %35 ]
  %45 = zext i1 %44 to i32
  call void @llvm.lifetime.end.p0(i64 16384, ptr nonnull %3) #22
  ret i32 %45
}

; Function Attrs: nounwind uwtable
define dso_local void @DuplicateBlob(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !91
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 822, ptr noundef nonnull @.str.3, ptr noundef nonnull %7) #22
  br label %9

9:                                                ; preds = %6, %2
  tail call void @DestroyBlob(ptr noundef %0)
  %10 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 52
  %11 = load ptr, ptr %10, align 8, !tbaa !63
  %12 = getelementptr inbounds %struct._BlobInfo, ptr %11, i64 0, i32 16
  %13 = load i32, ptr %12, align 8, !tbaa !34
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %9
  %16 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3558, ptr noundef nonnull @.str.2) #22
  br label %17

17:                                               ; preds = %9, %15
  %18 = getelementptr inbounds %struct._BlobInfo, ptr %11, i64 0, i32 17
  %19 = load ptr, ptr %18, align 8, !tbaa !81
  tail call void @LockSemaphoreInfo(ptr noundef %19) #22
  %20 = getelementptr inbounds %struct._BlobInfo, ptr %11, i64 0, i32 18
  %21 = load i64, ptr %20, align 8, !tbaa !80
  %22 = add nsw i64 %21, 1
  store i64 %22, ptr %20, align 8, !tbaa !80
  %23 = load ptr, ptr %18, align 8, !tbaa !81
  tail call void @UnlockSemaphoreInfo(ptr noundef %23) #22
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  store ptr %11, ptr %24, align 8, !tbaa !63
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @ReferenceBlob(ptr noundef returned %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 16
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3558, ptr noundef nonnull @.str.2) #22
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 17
  %9 = load ptr, ptr %8, align 8, !tbaa !81
  tail call void @LockSemaphoreInfo(ptr noundef %9) #22
  %10 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 18
  %11 = load i64, ptr %10, align 8, !tbaa !80
  %12 = add nsw i64 %11, 1
  store i64 %12, ptr %10, align 8, !tbaa !80
  %13 = load ptr, ptr %8, align 8, !tbaa !81
  tail call void @UnlockSemaphoreInfo(ptr noundef %13) #22
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @EOFBlob(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !91
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 857, ptr noundef nonnull @.str.2) #22
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %9 = load ptr, ptr %8, align 8, !tbaa !63
  %10 = getelementptr inbounds %struct._BlobInfo, ptr %9, i64 0, i32 11
  %11 = load i32, ptr %10, align 8, !tbaa !48
  switch i32 %11, label %23 [
    i32 6, label %19
    i32 4, label %19
    i32 1, label %12
    i32 3, label %12
  ]

12:                                               ; preds = %7, %7
  %13 = getelementptr inbounds %struct._BlobInfo, ptr %9, i64 0, i32 12
  %14 = load ptr, ptr %13, align 8, !tbaa !49
  %15 = tail call i32 @feof(ptr noundef %14) #22
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = load ptr, ptr %8, align 8, !tbaa !63
  br label %19

19:                                               ; preds = %7, %7, %12
  %20 = phi ptr [ %18, %12 ], [ %9, %7 ], [ %9, %7 ]
  %21 = phi i32 [ %17, %12 ], [ 0, %7 ], [ 0, %7 ]
  %22 = getelementptr inbounds %struct._BlobInfo, ptr %20, i64 0, i32 4
  store i32 %21, ptr %22, align 4, !tbaa !84
  br label %23

23:                                               ; preds = %19, %7
  %24 = load ptr, ptr %8, align 8, !tbaa !63
  %25 = getelementptr inbounds %struct._BlobInfo, ptr %24, i64 0, i32 4
  %26 = load i32, ptr %25, align 4, !tbaa !84
  ret i32 %26
}

; Function Attrs: nofree nounwind
declare noundef i32 @feof(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local ptr @FileToBlob(ptr noundef %0, i64 noundef %1, ptr nocapture noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.stat, align 8
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 957, ptr noundef nonnull @.str.3, ptr noundef %0) #22
  store i64 0, ptr %2, align 8, !tbaa !89
  %7 = load ptr, ptr @stdin, align 8, !tbaa !94
  %8 = tail call i32 @fileno(ptr noundef %7) #22
  %9 = tail call i32 @LocaleCompare(ptr noundef %0, ptr noundef nonnull @.str.11) #22
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %4
  %12 = tail call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef 0, i32 noundef 0) #22
  br label %13

13:                                               ; preds = %11, %4
  %14 = phi i32 [ %12, %11 ], [ %8, %4 ]
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = tail call ptr @__errno_location() #23
  %18 = load i32, ptr %17, align 4, !tbaa !52
  %19 = tail call ptr @GetExceptionMessage(i32 noundef %18) #22
  %20 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 965, i32 noundef 435, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.5, ptr noundef %0, ptr noundef %19) #22
  %21 = tail call ptr @DestroyString(ptr noundef %19) #22
  br label %151

22:                                               ; preds = %13
  %23 = tail call i64 @lseek(i32 noundef %14, i64 noundef 0, i32 noundef 2) #22
  %24 = load ptr, ptr @stdin, align 8, !tbaa !94
  %25 = tail call i32 @fileno(ptr noundef %24) #22
  %26 = icmp eq i32 %14, %25
  %27 = icmp slt i64 %23, 0
  %28 = select i1 %26, i1 true, i1 %27
  br i1 %28, label %29, label %94

29:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %5) #22
  %30 = tail call i64 @lseek(i32 noundef %14, i64 noundef 0, i32 noundef 0) #22
  %31 = call i32 @fstat(i32 noundef %14, ptr noundef nonnull %5) #22
  %32 = icmp eq i32 %31, 0
  %33 = getelementptr inbounds %struct.stat, ptr %5, i64 0, i32 8
  %34 = load i64, ptr %33, align 8
  %35 = icmp ne i64 %34, 0
  %36 = select i1 %32, i1 %35, i1 false
  %37 = tail call i64 @llvm.umin.i64(i64 %34, i64 262142)
  %38 = select i1 %36, i64 %37, i64 262142
  %39 = tail call ptr @AcquireQuantumMemory(i64 noundef %38, i64 noundef 1) #26
  %40 = icmp eq ptr %39, null
  br i1 %40, label %66, label %41

41:                                               ; preds = %29
  %42 = sub nuw nsw i64 -2, %38
  %43 = add nuw nsw i64 %38, 1
  br label %46

44:                                               ; preds = %61
  %45 = icmp eq ptr %63, null
  br i1 %45, label %66, label %46, !llvm.loop !95

46:                                               ; preds = %41, %44
  %47 = phi i64 [ 0, %41 ], [ %64, %44 ]
  %48 = phi ptr [ %39, %41 ], [ %63, %44 ]
  %49 = getelementptr inbounds i8, ptr %48, i64 %47
  %50 = tail call i64 @read(i32 noundef %14, ptr noundef nonnull %49, i64 noundef %38) #22
  %51 = icmp slt i64 %50, 1
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = tail call ptr @__errno_location() #23
  %54 = load i32, ptr %53, align 4, !tbaa !52
  %55 = icmp eq i32 %54, 4
  br i1 %55, label %56, label %66

56:                                               ; preds = %52, %46
  %57 = phi i64 [ 0, %52 ], [ %50, %46 ]
  %58 = icmp ult i64 %42, %47
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %48) #22
  br label %66

61:                                               ; preds = %56
  %62 = add i64 %43, %47
  %63 = tail call ptr @ResizeQuantumMemory(ptr noundef nonnull %48, i64 noundef %62, i64 noundef 1) #27
  %64 = add i64 %57, %47
  %65 = icmp ult i64 %64, %1
  br i1 %65, label %44, label %66, !llvm.loop !95

66:                                               ; preds = %44, %52, %61, %29, %59
  %67 = phi i64 [ %47, %59 ], [ 0, %29 ], [ %47, %61 ], [ %47, %52 ], [ %64, %44 ]
  %68 = phi ptr [ %60, %59 ], [ null, %29 ], [ %63, %61 ], [ %48, %52 ], [ null, %44 ]
  %69 = phi i64 [ %57, %59 ], [ 0, %29 ], [ %57, %61 ], [ 0, %52 ], [ %57, %44 ]
  %70 = tail call i32 @LocaleCompare(ptr noundef %0, ptr noundef nonnull @.str.11) #22
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %66
  %73 = tail call i32 @close(i32 noundef %14) #22
  br label %74

74:                                               ; preds = %72, %66
  %75 = phi i32 [ %73, %72 ], [ %14, %66 ]
  %76 = icmp eq ptr %68, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1011, i32 noundef 400, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.7, ptr noundef %0) #22
  br label %92

79:                                               ; preds = %74
  %80 = icmp eq i32 %75, -1
  br i1 %80, label %81, label %88

81:                                               ; preds = %79
  %82 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %68) #22
  %83 = tail call ptr @__errno_location() #23
  %84 = load i32, ptr %83, align 4, !tbaa !52
  %85 = tail call ptr @GetExceptionMessage(i32 noundef %84) #22
  %86 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1018, i32 noundef 435, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.5, ptr noundef %0, ptr noundef %85) #22
  %87 = tail call ptr @DestroyString(ptr noundef %85) #22
  br label %92

88:                                               ; preds = %79
  %89 = add i64 %69, %67
  %90 = tail call i64 @llvm.umin.i64(i64 %89, i64 %1)
  store i64 %90, ptr %2, align 8, !tbaa !89
  %91 = getelementptr inbounds i8, ptr %68, i64 %90
  store i8 0, ptr %91, align 1, !tbaa !49
  br label %92

92:                                               ; preds = %88, %81, %77
  %93 = phi ptr [ null, %77 ], [ null, %81 ], [ %68, %88 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %5) #22
  br label %151

94:                                               ; preds = %22
  %95 = tail call i64 @llvm.umin.i64(i64 %23, i64 %1)
  store i64 %95, ptr %2, align 8, !tbaa !89
  %96 = add i64 %95, 4096
  %97 = tail call ptr @AcquireQuantumMemory(i64 noundef %96, i64 noundef 1) #26
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = tail call i32 @close(i32 noundef %14) #22
  %101 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1033, i32 noundef 400, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.7, ptr noundef %0) #22
  br label %151

102:                                              ; preds = %94
  %103 = tail call i64 @lseek(i32 noundef %14, i64 noundef 0, i32 noundef 0) #22
  %104 = load i64, ptr %2, align 8, !tbaa !89
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %123, label %106

106:                                              ; preds = %102, %118
  %107 = phi i64 [ %121, %118 ], [ %104, %102 ]
  %108 = phi i64 [ %120, %118 ], [ 0, %102 ]
  %109 = getelementptr inbounds i8, ptr %97, i64 %108
  %110 = sub i64 %107, %108
  %111 = tail call i64 @llvm.umin.i64(i64 %110, i64 9223372036854775807)
  %112 = tail call i64 @read(i32 noundef %14, ptr noundef nonnull %109, i64 noundef %111) #22
  %113 = icmp slt i64 %112, 1
  br i1 %113, label %114, label %118

114:                                              ; preds = %106
  %115 = tail call ptr @__errno_location() #23
  %116 = load i32, ptr %115, align 4, !tbaa !52
  %117 = icmp eq i32 %116, 4
  br i1 %117, label %118, label %123

118:                                              ; preds = %106, %114
  %119 = phi i64 [ 0, %114 ], [ %112, %106 ]
  %120 = add i64 %119, %108
  %121 = load i64, ptr %2, align 8, !tbaa !89
  %122 = icmp ult i64 %120, %121
  br i1 %122, label %106, label %123, !llvm.loop !96

123:                                              ; preds = %118, %114, %102
  %124 = phi i64 [ 0, %102 ], [ %120, %118 ], [ %108, %114 ]
  %125 = load i64, ptr %2, align 8, !tbaa !89
  %126 = icmp ult i64 %124, %125
  br i1 %126, label %127, label %135

127:                                              ; preds = %123
  %128 = tail call i32 @close(i32 noundef %14) #22
  %129 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %97) #22
  %130 = tail call ptr @__errno_location() #23
  %131 = load i32, ptr %130, align 4, !tbaa !52
  %132 = tail call ptr @GetExceptionMessage(i32 noundef %131) #22
  %133 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1061, i32 noundef 435, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.5, ptr noundef %0, ptr noundef %132) #22
  %134 = tail call ptr @DestroyString(ptr noundef %132) #22
  br label %151

135:                                              ; preds = %123
  %136 = getelementptr inbounds i8, ptr %97, i64 %125
  store i8 0, ptr %136, align 1, !tbaa !49
  %137 = tail call i32 @LocaleCompare(ptr noundef %0, ptr noundef nonnull @.str.11) #22
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %141, label %139

139:                                              ; preds = %135
  %140 = tail call i32 @close(i32 noundef %14) #22
  br label %141

141:                                              ; preds = %139, %135
  %142 = phi i32 [ %140, %139 ], [ %14, %135 ]
  %143 = icmp eq i32 %142, -1
  br i1 %143, label %144, label %151

144:                                              ; preds = %141
  %145 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %97) #22
  %146 = tail call ptr @__errno_location() #23
  %147 = load i32, ptr %146, align 4, !tbaa !52
  %148 = tail call ptr @GetExceptionMessage(i32 noundef %147) #22
  %149 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1071, i32 noundef 435, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.5, ptr noundef %0, ptr noundef %148) #22
  %150 = tail call ptr @DestroyString(ptr noundef %148) #22
  br label %151

151:                                              ; preds = %141, %144, %127, %99, %92, %16
  %152 = phi ptr [ null, %16 ], [ %93, %92 ], [ null, %99 ], [ null, %127 ], [ %145, %144 ], [ %97, %141 ]
  ret ptr %152
}

declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @fstat(i32 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: allocsize(1,2)
declare ptr @ResizeQuantumMemory(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @MapBlob(i32 noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #10 {
  ret ptr null
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @FileToImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #22
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1152, ptr noundef nonnull @.str.3, ptr noundef %1) #22
  %5 = load ptr, ptr @stdin, align 8, !tbaa !94
  %6 = tail call i32 @fileno(ptr noundef %5) #22
  %7 = tail call i32 @LocaleCompare(ptr noundef %1, ptr noundef nonnull @.str.11) #22
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = tail call i32 (ptr, i32, ...) @open(ptr noundef %1, i32 noundef 0, i32 noundef 0) #22
  br label %11

11:                                               ; preds = %9, %2
  %12 = phi i32 [ %10, %9 ], [ %6, %2 ]
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = tail call ptr @__errno_location() #23
  %16 = load i32, ptr %15, align 4, !tbaa !52
  %17 = tail call ptr @GetExceptionMessage(i32 noundef %16) #22
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %19 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %18, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1159, i32 noundef 435, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.5, ptr noundef %1, ptr noundef %17) #22
  %20 = tail call ptr @DestroyString(ptr noundef %17) #22
  br label %108

21:                                               ; preds = %11
  %22 = call i32 @fstat(i32 noundef %12, ptr noundef nonnull %3) #22
  %23 = icmp eq i32 %22, 0
  %24 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 8
  %25 = load i64, ptr %24, align 8
  %26 = icmp ne i64 %25, 0
  %27 = select i1 %23, i1 %26, i1 false
  %28 = tail call i64 @llvm.umin.i64(i64 %25, i64 262142)
  %29 = select i1 %27, i64 %28, i64 262142
  %30 = tail call ptr @AcquireQuantumMemory(i64 noundef %29, i64 noundef 1) #26
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %21
  %33 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  br label %42

34:                                               ; preds = %21
  %35 = tail call i32 @close(i32 noundef %12) #22
  %36 = tail call ptr @__errno_location() #23
  %37 = load i32, ptr %36, align 4, !tbaa !52
  %38 = tail call ptr @GetExceptionMessage(i32 noundef %37) #22
  %39 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %40 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %39, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1170, i32 noundef 400, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.5, ptr noundef %1, ptr noundef %38) #22
  %41 = tail call ptr @DestroyString(ptr noundef %38) #22
  br label %108

42:                                               ; preds = %32, %86
  %43 = tail call i64 @read(i32 noundef %12, ptr noundef nonnull %30, i64 noundef %29) #22
  %44 = icmp slt i64 %43, 1
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = tail call ptr @__errno_location() #23
  %47 = load i32, ptr %46, align 4, !tbaa !52
  %48 = icmp eq i32 %47, 4
  br i1 %48, label %49, label %96

49:                                               ; preds = %45, %42
  %50 = phi i64 [ 0, %45 ], [ %43, %42 ]
  %51 = load ptr, ptr %33, align 8, !tbaa !63
  %52 = getelementptr inbounds %struct._BlobInfo, ptr %51, i64 0, i32 11
  %53 = load i32, ptr %52, align 8, !tbaa !48
  %54 = icmp eq i32 %53, 7
  br i1 %54, label %57, label %55

55:                                               ; preds = %49
  %56 = tail call i64 @WriteBlob(ptr noundef %0, i64 noundef %50, ptr noundef nonnull %30)
  br label %86

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct._BlobInfo, ptr %51, i64 0, i32 5
  %59 = load i64, ptr %58, align 8, !tbaa !47
  %60 = add nsw i64 %59, %50
  %61 = getelementptr inbounds %struct._BlobInfo, ptr %51, i64 0, i32 1
  %62 = load i64, ptr %61, align 8, !tbaa !45
  %63 = icmp ult i64 %60, %62
  br i1 %63, label %72, label %64

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct._BlobInfo, ptr %51, i64 0, i32 2
  %66 = load i64, ptr %65, align 8, !tbaa !46
  %67 = add i64 %62, %50
  %68 = add i64 %67, %66
  %69 = shl i64 %66, 1
  store i64 %69, ptr %65, align 8, !tbaa !46
  %70 = tail call i32 @SetBlobExtent(ptr noundef %0, i64 noundef %68), !range !74
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %86, label %72

72:                                               ; preds = %64, %57
  %73 = load ptr, ptr %33, align 8, !tbaa !63
  %74 = getelementptr inbounds %struct._BlobInfo, ptr %73, i64 0, i32 15
  %75 = load ptr, ptr %74, align 8, !tbaa !50
  %76 = getelementptr inbounds %struct._BlobInfo, ptr %73, i64 0, i32 5
  %77 = load i64, ptr %76, align 8, !tbaa !47
  %78 = getelementptr inbounds i8, ptr %75, i64 %77
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %78, ptr nonnull align 1 %30, i64 %50, i1 false)
  %79 = load ptr, ptr %33, align 8, !tbaa !63
  %80 = getelementptr inbounds %struct._BlobInfo, ptr %79, i64 0, i32 5
  %81 = load i64, ptr %80, align 8, !tbaa !47
  %82 = add i64 %81, %50
  store i64 %82, ptr %80, align 8, !tbaa !47
  %83 = load i64, ptr %79, align 8, !tbaa !44
  %84 = icmp slt i64 %82, %83
  br i1 %84, label %86, label %85

85:                                               ; preds = %72
  store i64 %82, ptr %79, align 8, !tbaa !44
  br label %86

86:                                               ; preds = %55, %64, %72, %85
  %87 = phi i64 [ %56, %55 ], [ 0, %64 ], [ %50, %85 ], [ %50, %72 ]
  %88 = icmp eq i64 %87, %50
  br i1 %88, label %42, label %89, !llvm.loop !97

89:                                               ; preds = %86
  %90 = tail call ptr @__errno_location() #23
  %91 = load i32, ptr %90, align 4, !tbaa !52
  %92 = tail call ptr @GetExceptionMessage(i32 noundef %91) #22
  %93 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %94 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %93, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1187, i32 noundef 435, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef %1, ptr noundef %92) #22
  %95 = tail call ptr @DestroyString(ptr noundef %92) #22
  br label %96

96:                                               ; preds = %45, %89
  %97 = tail call i32 @close(i32 noundef %12) #22
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %99, label %106

99:                                               ; preds = %96
  %100 = tail call ptr @__errno_location() #23
  %101 = load i32, ptr %100, align 4, !tbaa !52
  %102 = tail call ptr @GetExceptionMessage(i32 noundef %101) #22
  %103 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %104 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %103, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1194, i32 noundef 435, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef %1, ptr noundef %102) #22
  %105 = tail call ptr @DestroyString(ptr noundef %102) #22
  br label %106

106:                                              ; preds = %99, %96
  %107 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %30) #22
  br label %108

108:                                              ; preds = %106, %34, %14
  %109 = phi i32 [ 0, %14 ], [ 0, %34 ], [ 1, %106 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #22
  ret i32 %109
}

; Function Attrs: nounwind uwtable
define dso_local i32 @GetBlobError(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !91
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1227, ptr noundef nonnull @.str.3, ptr noundef nonnull %6) #22
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %10 = load ptr, ptr %9, align 8, !tbaa !63
  %11 = getelementptr inbounds %struct._BlobInfo, ptr %10, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !86
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @GetBlobFileHandle(ptr nocapture noundef readonly %0) local_unnamed_addr #15 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct._BlobInfo, ptr %3, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  ret ptr %5
}

declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #12

declare ptr @AllocateSemaphoreInfo() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @GetBlobProperties(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !91
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1323, ptr noundef nonnull @.str.3, ptr noundef nonnull %6) #22
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %10 = load ptr, ptr %9, align 8, !tbaa !63
  %11 = getelementptr inbounds %struct._BlobInfo, ptr %10, i64 0, i32 13
  ret ptr %11
}

declare i32 @GetPathAttributes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @GetBlobStreamData(ptr nocapture noundef readonly %0) local_unnamed_addr #15 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct._BlobInfo, ptr %3, i64 0, i32 15
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetBlobStreamHandler(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !91
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1462, ptr noundef nonnull @.str.3, ptr noundef nonnull %6) #22
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %10 = load ptr, ptr %9, align 8, !tbaa !63
  %11 = getelementptr inbounds %struct._BlobInfo, ptr %10, i64 0, i32 14
  %12 = load ptr, ptr %11, align 8, !tbaa !90
  ret ptr %12
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ImageToBlob(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  %6 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 52
  %7 = load i32, ptr %6, align 8, !tbaa !56
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1517, ptr noundef nonnull @.str.3, ptr noundef nonnull %10) #22
  br label %12

12:                                               ; preds = %9, %4
  store i64 0, ptr %2, align 8, !tbaa !89
  %13 = tail call ptr @CloneImageInfo(ptr noundef %0) #22
  %14 = getelementptr inbounds %struct._ImageInfo, ptr %13, i64 0, i32 3
  store i32 0, ptr %14, align 4, !tbaa !98
  %15 = tail call i32 @SetImageInfo(ptr noundef %13, i32 noundef 1, ptr noundef %3) #22
  %16 = getelementptr inbounds %struct._ImageInfo, ptr %13, i64 0, i32 48
  %17 = load i8, ptr %16, align 8, !tbaa !49
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 55
  %21 = tail call i64 @CopyMagickString(ptr noundef nonnull %20, ptr noundef nonnull %16, i64 noundef 4096) #22
  br label %22

22:                                               ; preds = %19, %12
  %23 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 55
  %24 = tail call ptr @GetMagickInfo(ptr noundef nonnull %23, ptr noundef %3) #22
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1532, i32 noundef 420, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, ptr noundef nonnull %23) #22
  br label %107

28:                                               ; preds = %22
  %29 = tail call i64 @CopyMagickString(ptr noundef nonnull %16, ptr noundef nonnull %23, i64 noundef 4096) #22
  %30 = tail call i32 @GetMagickBlobSupport(ptr noundef nonnull %24) #22
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %76, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct._ImageInfo, ptr %13, i64 0, i32 47
  store i64 0, ptr %33, align 8, !tbaa !62
  %34 = tail call dereferenceable_or_null(65541) ptr @AcquireQuantumMemory(i64 noundef 65541, i64 noundef 1) #26
  %35 = getelementptr inbounds %struct._ImageInfo, ptr %13, i64 0, i32 46
  store ptr %34, ptr %35, align 8, !tbaa !61
  %36 = icmp eq ptr %34, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %39 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1548, i32 noundef 400, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.7, ptr noundef nonnull %38) #22
  br label %107

40:                                               ; preds = %32
  %41 = tail call i32 @CloseBlob(ptr noundef %1)
  %42 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 52
  %43 = load ptr, ptr %42, align 8, !tbaa !63
  %44 = getelementptr inbounds %struct._BlobInfo, ptr %43, i64 0, i32 7
  store i32 1, ptr %44, align 8, !tbaa !73
  %45 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  store i8 0, ptr %45, align 8, !tbaa !49
  %46 = tail call i32 @WriteImage(ptr noundef %13, ptr noundef %1) #22
  %47 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  tail call void @InheritException(ptr noundef %3, ptr noundef nonnull %47) #22
  %48 = load ptr, ptr %42, align 8, !tbaa !63
  %49 = load i64, ptr %48, align 8, !tbaa !44
  store i64 %49, ptr %2, align 8, !tbaa !89
  %50 = getelementptr inbounds %struct._BlobInfo, ptr %48, i64 0, i32 16
  %51 = load i32, ptr %50, align 8, !tbaa !34
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %40
  %54 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 691, ptr noundef nonnull @.str.2) #22
  br label %55

55:                                               ; preds = %53, %40
  %56 = getelementptr inbounds %struct._BlobInfo, ptr %48, i64 0, i32 3
  %57 = load i32, ptr %56, align 8, !tbaa !51
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct._BlobInfo, ptr %48, i64 0, i32 15
  store ptr null, ptr %60, align 8, !tbaa !50
  %61 = load i64, ptr %48, align 8, !tbaa !44
  tail call void @RelinquishMagickResource(i32 noundef 4, i64 noundef %61) #22
  br label %62

62:                                               ; preds = %55, %59
  store i64 0, ptr %48, align 8, !tbaa !44
  %63 = getelementptr inbounds %struct._BlobInfo, ptr %48, i64 0, i32 7
  store i32 0, ptr %63, align 8, !tbaa !73
  %64 = getelementptr inbounds %struct._BlobInfo, ptr %48, i64 0, i32 11
  store i32 0, ptr %64, align 8, !tbaa !48
  %65 = getelementptr inbounds %struct._BlobInfo, ptr %48, i64 0, i32 12
  store ptr null, ptr %65, align 8, !tbaa !49
  %66 = getelementptr inbounds %struct._BlobInfo, ptr %48, i64 0, i32 15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %56, i8 0, i64 16, i1 false)
  %67 = load ptr, ptr %66, align 8, !tbaa !50
  %68 = getelementptr inbounds %struct._BlobInfo, ptr %48, i64 0, i32 14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %68, i8 0, i64 16, i1 false)
  %69 = icmp eq i32 %46, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = tail call ptr @RelinquishMagickMemory(ptr noundef %67) #22
  br label %107

72:                                               ; preds = %62
  %73 = load i64, ptr %2, align 8, !tbaa !89
  %74 = add i64 %73, 1
  %75 = tail call ptr @ResizeQuantumMemory(ptr noundef %67, i64 noundef %74, i64 noundef 1) #27
  br label %107

76:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #22
  %77 = call i32 @AcquireUniqueFileResource(ptr noundef nonnull %5) #22
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %79, label %86

79:                                               ; preds = %76
  %80 = tail call ptr @__errno_location() #23
  %81 = load i32, ptr %80, align 4, !tbaa !52
  %82 = call ptr @GetExceptionMessage(i32 noundef %81) #22
  %83 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %84 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1581, i32 noundef 435, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull %83, ptr noundef %82) #22
  %85 = call ptr @DestroyString(ptr noundef %82) #22
  br label %105

86:                                               ; preds = %76
  %87 = call noalias ptr @fdopen(i32 noundef %77, ptr noundef nonnull @.str.15) #22
  %88 = getelementptr inbounds %struct._ImageInfo, ptr %13, i64 0, i32 45
  store ptr %87, ptr %88, align 8, !tbaa !99
  %89 = icmp eq ptr %87, null
  br i1 %89, label %102, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %92 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %91, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef nonnull %23, ptr noundef nonnull %5) #22
  %93 = call i32 @WriteImage(ptr noundef %13, ptr noundef %1) #22
  %94 = call i32 @CloseBlob(ptr noundef %1)
  %95 = load ptr, ptr %88, align 8, !tbaa !99
  %96 = call i32 @fclose(ptr noundef %95)
  %97 = icmp eq i32 %93, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %90
  %99 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  call void @InheritException(ptr noundef %3, ptr noundef nonnull %99) #22
  br label %102

100:                                              ; preds = %90
  %101 = call ptr @FileToBlob(ptr noundef nonnull %5, i64 noundef -1, ptr noundef nonnull %2, ptr noundef %3)
  br label %102

102:                                              ; preds = %98, %100, %86
  %103 = phi ptr [ null, %98 ], [ %101, %100 ], [ null, %86 ]
  %104 = call i32 @RelinquishUniqueFileResource(ptr noundef nonnull %5) #22
  br label %105

105:                                              ; preds = %102, %79
  %106 = phi ptr [ null, %79 ], [ %103, %102 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #22
  br label %107

107:                                              ; preds = %105, %70, %72, %37, %26
  %108 = phi ptr [ null, %26 ], [ null, %37 ], [ %71, %70 ], [ %75, %72 ], [ %106, %105 ]
  %109 = call ptr @DestroyImageInfo(ptr noundef %13) #22
  ret ptr %108
}

declare i32 @WriteImage(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ImageToFile(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %4) #22
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !91
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1663, ptr noundef nonnull @.str.3, ptr noundef %1) #22
  br label %10

10:                                               ; preds = %8, %3
  %11 = load i8, ptr %1, align 1, !tbaa !49
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = tail call i32 @AcquireUniqueFileResource(ptr noundef nonnull %1) #22
  br label %23

15:                                               ; preds = %10
  %16 = tail call i32 @LocaleCompare(ptr noundef nonnull %1, ptr noundef nonnull @.str.11) #22
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load ptr, ptr @stdout, align 8, !tbaa !94
  %20 = tail call i32 @fileno(ptr noundef %19) #22
  br label %23

21:                                               ; preds = %15
  %22 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %1, i32 noundef 194, i32 noundef 384) #22
  br label %23

23:                                               ; preds = %18, %21, %13
  %24 = phi i32 [ %14, %13 ], [ %20, %18 ], [ %22, %21 ]
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = tail call ptr @__errno_location() #23
  %28 = load i32, ptr %27, align 4, !tbaa !52
  %29 = tail call ptr @GetExceptionMessage(i32 noundef %28) #22
  %30 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1674, i32 noundef 435, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull %1, ptr noundef %29) #22
  %31 = tail call ptr @DestroyString(ptr noundef %29) #22
  br label %142

32:                                               ; preds = %23
  %33 = call i32 @fstat(i32 noundef %24, ptr noundef nonnull %4) #22
  %34 = icmp eq i32 %33, 0
  %35 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 8
  %36 = load i64, ptr %35, align 8
  %37 = icmp ne i64 %36, 0
  %38 = select i1 %34, i1 %37, i1 false
  %39 = tail call i64 @llvm.umin.i64(i64 %36, i64 262142)
  %40 = select i1 %38, i64 %39, i64 262142
  %41 = tail call ptr @AcquireQuantumMemory(i64 noundef %40, i64 noundef 1) #26
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %32
  %44 = tail call i32 @close(i32 noundef %24) #22
  %45 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1685, i32 noundef 400, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.7, ptr noundef nonnull %1) #22
  br label %142

46:                                               ; preds = %32
  %47 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %48 = load ptr, ptr %47, align 8, !tbaa !63
  %49 = getelementptr inbounds %struct._BlobInfo, ptr %48, i64 0, i32 11
  %50 = load i32, ptr %49, align 8, !tbaa !48
  %51 = icmp eq i32 %50, 7
  br i1 %51, label %54, label %52

52:                                               ; preds = %46
  %53 = tail call i64 @ReadBlob(ptr noundef %0, i64 noundef %40, ptr noundef nonnull %41)
  br label %71

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct._BlobInfo, ptr %48, i64 0, i32 5
  %56 = load i64, ptr %55, align 8, !tbaa !47
  %57 = load i64, ptr %48, align 8, !tbaa !44
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %61, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct._BlobInfo, ptr %48, i64 0, i32 4
  store i32 1, ptr %60, align 4, !tbaa !84
  br label %71

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct._BlobInfo, ptr %48, i64 0, i32 15
  %63 = load ptr, ptr %62, align 8, !tbaa !50
  %64 = getelementptr inbounds i8, ptr %63, i64 %56
  %65 = sub i64 %57, %56
  %66 = tail call i64 @llvm.umin.i64(i64 %40, i64 %65)
  %67 = add nsw i64 %66, %56
  store i64 %67, ptr %55, align 8, !tbaa !47
  %68 = icmp ult i64 %65, %40
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = getelementptr inbounds %struct._BlobInfo, ptr %48, i64 0, i32 4
  store i32 1, ptr %70, align 4, !tbaa !84
  br label %71

71:                                               ; preds = %52, %59, %61, %69
  %72 = phi i64 [ %66, %69 ], [ %66, %61 ], [ 0, %59 ], [ %53, %52 ]
  %73 = phi ptr [ %64, %69 ], [ %64, %61 ], [ %41, %59 ], [ %41, %52 ]
  %74 = icmp sgt i64 %72, 0
  br i1 %74, label %75, label %120

75:                                               ; preds = %71, %116
  %76 = phi ptr [ %118, %116 ], [ %73, %71 ]
  %77 = phi i64 [ %117, %116 ], [ %72, %71 ]
  br label %78

78:                                               ; preds = %75, %88
  %79 = phi i64 [ 0, %75 ], [ %90, %88 ]
  %80 = getelementptr inbounds i8, ptr %76, i64 %79
  %81 = sub nsw i64 %77, %79
  %82 = tail call i64 @write(i32 noundef %24, ptr noundef %80, i64 noundef %81) #22
  %83 = icmp slt i64 %82, 1
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = tail call ptr @__errno_location() #23
  %86 = load i32, ptr %85, align 4, !tbaa !52
  %87 = icmp eq i32 %86, 4
  br i1 %87, label %88, label %120

88:                                               ; preds = %78, %84
  %89 = phi i64 [ 0, %84 ], [ %82, %78 ]
  %90 = add i64 %89, %79
  %91 = icmp ult i64 %90, %77
  br i1 %91, label %78, label %92, !llvm.loop !100

92:                                               ; preds = %88
  %93 = load ptr, ptr %47, align 8, !tbaa !63
  %94 = getelementptr inbounds %struct._BlobInfo, ptr %93, i64 0, i32 11
  %95 = load i32, ptr %94, align 8, !tbaa !48
  %96 = icmp eq i32 %95, 7
  br i1 %96, label %99, label %97

97:                                               ; preds = %92
  %98 = tail call i64 @ReadBlob(ptr noundef %0, i64 noundef %40, ptr noundef nonnull %41)
  br label %116

99:                                               ; preds = %92
  %100 = getelementptr inbounds %struct._BlobInfo, ptr %93, i64 0, i32 5
  %101 = load i64, ptr %100, align 8, !tbaa !47
  %102 = load i64, ptr %93, align 8, !tbaa !44
  %103 = icmp slt i64 %101, %102
  br i1 %103, label %106, label %104

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct._BlobInfo, ptr %93, i64 0, i32 4
  store i32 1, ptr %105, align 4, !tbaa !84
  br label %116

106:                                              ; preds = %99
  %107 = getelementptr inbounds %struct._BlobInfo, ptr %93, i64 0, i32 15
  %108 = load ptr, ptr %107, align 8, !tbaa !50
  %109 = getelementptr inbounds i8, ptr %108, i64 %101
  %110 = sub i64 %102, %101
  %111 = tail call i64 @llvm.umin.i64(i64 %40, i64 %110)
  %112 = add nsw i64 %111, %101
  store i64 %112, ptr %100, align 8, !tbaa !47
  %113 = icmp ult i64 %110, %40
  br i1 %113, label %114, label %116

114:                                              ; preds = %106
  %115 = getelementptr inbounds %struct._BlobInfo, ptr %93, i64 0, i32 4
  store i32 1, ptr %115, align 4, !tbaa !84
  br label %116

116:                                              ; preds = %97, %104, %106, %114
  %117 = phi i64 [ %111, %114 ], [ %111, %106 ], [ 0, %104 ], [ %98, %97 ]
  %118 = phi ptr [ %109, %114 ], [ %109, %106 ], [ %41, %104 ], [ %41, %97 ]
  %119 = icmp sgt i64 %117, 0
  br i1 %119, label %75, label %120, !llvm.loop !101

120:                                              ; preds = %116, %84, %71
  %121 = phi i64 [ 0, %71 ], [ %79, %84 ], [ %90, %116 ]
  %122 = phi i64 [ 0, %71 ], [ %77, %84 ], [ %77, %116 ]
  %123 = tail call i32 @LocaleCompare(ptr noundef nonnull %1, ptr noundef nonnull @.str.11) #22
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %120
  %126 = tail call i32 @close(i32 noundef %24) #22
  br label %127

127:                                              ; preds = %125, %120
  %128 = phi i32 [ %126, %125 ], [ %24, %120 ]
  %129 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %41) #22
  %130 = icmp eq i32 %128, -1
  %131 = icmp ult i64 %121, %122
  %132 = or i1 %131, %130
  br i1 %132, label %133, label %142

133:                                              ; preds = %127
  br i1 %130, label %136, label %134

134:                                              ; preds = %133
  %135 = tail call i32 @close(i32 noundef %128) #22
  br label %136

136:                                              ; preds = %134, %133
  %137 = tail call ptr @__errno_location() #23
  %138 = load i32, ptr %137, align 4, !tbaa !52
  %139 = tail call ptr @GetExceptionMessage(i32 noundef %138) #22
  %140 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1714, i32 noundef 435, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull %1, ptr noundef %139) #22
  %141 = tail call ptr @DestroyString(ptr noundef %139) #22
  br label %142

142:                                              ; preds = %127, %136, %43, %26
  %143 = phi i32 [ 0, %26 ], [ 0, %43 ], [ 0, %136 ], [ 1, %127 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #22
  ret i32 %143
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ImagesToBlob(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  %6 = alloca [4096 x i8], align 16
  %7 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 52
  %8 = load i32, ptr %7, align 8, !tbaa !56
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1773, ptr noundef nonnull @.str.3, ptr noundef nonnull %11) #22
  br label %13

13:                                               ; preds = %10, %4
  store i64 0, ptr %2, align 8, !tbaa !89
  %14 = tail call ptr @CloneImageInfo(ptr noundef %0) #22
  %15 = tail call i64 @GetImageListLength(ptr noundef %1) #22
  %16 = trunc i64 %15 to i32
  %17 = tail call i32 @SetImageInfo(ptr noundef %14, i32 noundef %16, ptr noundef %3) #22
  %18 = getelementptr inbounds %struct._ImageInfo, ptr %14, i64 0, i32 48
  %19 = load i8, ptr %18, align 8, !tbaa !49
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 55
  %23 = tail call i64 @CopyMagickString(ptr noundef nonnull %22, ptr noundef nonnull %18, i64 noundef 4096) #22
  br label %24

24:                                               ; preds = %21, %13
  %25 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 55
  %26 = tail call ptr @GetMagickInfo(ptr noundef nonnull %25, ptr noundef %3) #22
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1788, i32 noundef 420, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, ptr noundef nonnull %25) #22
  %30 = tail call ptr @DestroyImageInfo(ptr noundef %14) #22
  br label %117

31:                                               ; preds = %24
  %32 = tail call i32 @GetMagickAdjoin(ptr noundef nonnull %26) #22
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = tail call ptr @DestroyImageInfo(ptr noundef %14) #22
  %36 = tail call ptr @ImageToBlob(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3)
  br label %117

37:                                               ; preds = %31
  %38 = tail call i64 @CopyMagickString(ptr noundef nonnull %18, ptr noundef nonnull %25, i64 noundef 4096) #22
  %39 = tail call i32 @GetMagickBlobSupport(ptr noundef nonnull %26) #22
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %84, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct._ImageInfo, ptr %14, i64 0, i32 47
  store i64 0, ptr %42, align 8, !tbaa !62
  %43 = tail call dereferenceable_or_null(65541) ptr @AcquireQuantumMemory(i64 noundef 65541, i64 noundef 1) #26
  %44 = getelementptr inbounds %struct._ImageInfo, ptr %14, i64 0, i32 46
  store ptr %43, ptr %44, align 8, !tbaa !61
  %45 = icmp eq ptr %43, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %48 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1809, i32 noundef 400, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.7, ptr noundef nonnull %47) #22
  br label %114

49:                                               ; preds = %41
  %50 = tail call i32 @CloseBlob(ptr noundef %1)
  %51 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 52
  %52 = load ptr, ptr %51, align 8, !tbaa !63
  %53 = getelementptr inbounds %struct._BlobInfo, ptr %52, i64 0, i32 7
  store i32 1, ptr %53, align 8, !tbaa !73
  %54 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  store i8 0, ptr %54, align 8, !tbaa !49
  %55 = tail call i32 @WriteImages(ptr noundef %14, ptr noundef %1, ptr noundef nonnull %54, ptr noundef %3) #22
  %56 = load ptr, ptr %51, align 8, !tbaa !63
  %57 = load i64, ptr %56, align 8, !tbaa !44
  store i64 %57, ptr %2, align 8, !tbaa !89
  %58 = getelementptr inbounds %struct._BlobInfo, ptr %56, i64 0, i32 16
  %59 = load i32, ptr %58, align 8, !tbaa !34
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %49
  %62 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 691, ptr noundef nonnull @.str.2) #22
  br label %63

63:                                               ; preds = %61, %49
  %64 = getelementptr inbounds %struct._BlobInfo, ptr %56, i64 0, i32 3
  %65 = load i32, ptr %64, align 8, !tbaa !51
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct._BlobInfo, ptr %56, i64 0, i32 15
  store ptr null, ptr %68, align 8, !tbaa !50
  %69 = load i64, ptr %56, align 8, !tbaa !44
  tail call void @RelinquishMagickResource(i32 noundef 4, i64 noundef %69) #22
  br label %70

70:                                               ; preds = %63, %67
  store i64 0, ptr %56, align 8, !tbaa !44
  %71 = getelementptr inbounds %struct._BlobInfo, ptr %56, i64 0, i32 7
  store i32 0, ptr %71, align 8, !tbaa !73
  %72 = getelementptr inbounds %struct._BlobInfo, ptr %56, i64 0, i32 11
  store i32 0, ptr %72, align 8, !tbaa !48
  %73 = getelementptr inbounds %struct._BlobInfo, ptr %56, i64 0, i32 12
  store ptr null, ptr %73, align 8, !tbaa !49
  %74 = getelementptr inbounds %struct._BlobInfo, ptr %56, i64 0, i32 15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %64, i8 0, i64 16, i1 false)
  %75 = load ptr, ptr %74, align 8, !tbaa !50
  %76 = getelementptr inbounds %struct._BlobInfo, ptr %56, i64 0, i32 14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %76, i8 0, i64 16, i1 false)
  %77 = icmp eq i32 %55, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %70
  %79 = tail call ptr @RelinquishMagickMemory(ptr noundef %75) #22
  br label %114

80:                                               ; preds = %70
  %81 = load i64, ptr %2, align 8, !tbaa !89
  %82 = add i64 %81, 1
  %83 = tail call ptr @ResizeQuantumMemory(ptr noundef %75, i64 noundef %82, i64 noundef 1) #27
  br label %114

84:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #22
  %85 = call i32 @AcquireUniqueFileResource(ptr noundef nonnull %6) #22
  %86 = icmp eq i32 %85, -1
  br i1 %86, label %87, label %94

87:                                               ; preds = %84
  %88 = tail call ptr @__errno_location() #23
  %89 = load i32, ptr %88, align 4, !tbaa !52
  %90 = call ptr @GetExceptionMessage(i32 noundef %89) #22
  %91 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %92 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1842, i32 noundef 430, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull %91, ptr noundef %90) #22
  %93 = call ptr @DestroyString(ptr noundef %90) #22
  br label %112

94:                                               ; preds = %84
  %95 = call noalias ptr @fdopen(i32 noundef %85, ptr noundef nonnull @.str.15) #22
  %96 = getelementptr inbounds %struct._ImageInfo, ptr %14, i64 0, i32 45
  store ptr %95, ptr %96, align 8, !tbaa !99
  %97 = icmp eq ptr %95, null
  br i1 %97, label %109, label %98

98:                                               ; preds = %94
  %99 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef nonnull %25, ptr noundef nonnull %6) #22
  %100 = call i32 @WriteImages(ptr noundef %14, ptr noundef %1, ptr noundef nonnull %5, ptr noundef %3) #22
  %101 = call i32 @CloseBlob(ptr noundef %1)
  %102 = load ptr, ptr %96, align 8, !tbaa !99
  %103 = call i32 @fclose(ptr noundef %102)
  %104 = icmp eq i32 %100, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %98
  %106 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  call void @InheritException(ptr noundef %3, ptr noundef nonnull %106) #22
  br label %109

107:                                              ; preds = %98
  %108 = call ptr @FileToBlob(ptr noundef nonnull %6, i64 noundef -1, ptr noundef nonnull %2, ptr noundef %3)
  br label %109

109:                                              ; preds = %105, %107, %94
  %110 = phi ptr [ null, %105 ], [ %108, %107 ], [ null, %94 ]
  %111 = call i32 @RelinquishUniqueFileResource(ptr noundef nonnull %6) #22
  br label %112

112:                                              ; preds = %109, %87
  %113 = phi ptr [ null, %87 ], [ %110, %109 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #22
  br label %114

114:                                              ; preds = %46, %80, %78, %112
  %115 = phi ptr [ null, %46 ], [ %79, %78 ], [ %83, %80 ], [ %113, %112 ]
  %116 = call ptr @DestroyImageInfo(ptr noundef %14) #22
  br label %117

117:                                              ; preds = %114, %34, %28
  %118 = phi ptr [ null, %28 ], [ %36, %34 ], [ %115, %114 ]
  ret ptr %118
}

declare i64 @GetImageListLength(ptr noundef) local_unnamed_addr #1

declare i32 @GetMagickAdjoin(ptr noundef) local_unnamed_addr #1

declare i32 @WriteImages(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @InjectImageBlob(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca [4096 x i8], align 16
  %7 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %7) #22
  %8 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 59
  %9 = load i32, ptr %8, align 8, !tbaa !91
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1942, ptr noundef nonnull @.str.3, ptr noundef nonnull %12) #22
  br label %14

14:                                               ; preds = %11, %5
  %15 = call i32 @AcquireUniqueFileResource(ptr noundef nonnull %6) #22
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = call noalias ptr @fdopen(i32 noundef %15, ptr noundef nonnull @.str.15) #22
  br label %19

19:                                               ; preds = %17, %14
  %20 = phi ptr [ %18, %17 ], [ null, %14 ]
  %21 = icmp eq ptr %20, null
  %22 = or i1 %16, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %25 = call i64 @CopyMagickString(ptr noundef nonnull %24, ptr noundef nonnull %6, i64 noundef 4096) #22
  %26 = tail call ptr @__errno_location() #23
  %27 = load i32, ptr %26, align 4, !tbaa !52
  %28 = call ptr @GetExceptionMessage(i32 noundef %27) #22
  %29 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1954, i32 noundef 430, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.5, ptr noundef nonnull %24, ptr noundef %28) #22
  %30 = call ptr @DestroyString(ptr noundef %28) #22
  br label %141

31:                                               ; preds = %19
  %32 = call ptr @CloneImage(ptr noundef %2, i64 noundef 0, i64 noundef 0, i32 noundef 0, ptr noundef %4) #22
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = call i32 @fclose(ptr noundef %20)
  %36 = call i32 @RelinquishUniqueFileResource(ptr noundef nonnull %6) #22
  br label %141

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct._Image, ptr %32, i64 0, i32 53
  %39 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %38, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef %3, ptr noundef nonnull %6) #22
  call void @DestroyBlob(ptr noundef nonnull %32)
  %40 = call ptr @CloneBlobInfo(ptr noundef null)
  %41 = getelementptr inbounds %struct._Image, ptr %32, i64 0, i32 52
  store ptr %40, ptr %41, align 8, !tbaa !63
  %42 = call ptr @CloneImageInfo(ptr noundef %0) #22
  call void @SetImageInfoFile(ptr noundef %42, ptr noundef %20) #22
  %43 = call i32 @WriteImage(ptr noundef %42, ptr noundef nonnull %32) #22
  %44 = call ptr @DestroyImageInfo(ptr noundef %42) #22
  %45 = call ptr @DestroyImage(ptr noundef nonnull %32) #22
  %46 = call i32 @fclose(ptr noundef %20)
  %47 = icmp eq i32 %43, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = call i32 @RelinquishUniqueFileResource(ptr noundef nonnull %6) #22
  br label %141

50:                                               ; preds = %37
  %51 = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %6, i32 noundef 0, i32 noundef 0) #22
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = call i32 @RelinquishUniqueFileResource(ptr noundef nonnull %6) #22
  %55 = tail call ptr @__errno_location() #23
  %56 = load i32, ptr %55, align 4, !tbaa !52
  %57 = call ptr @GetExceptionMessage(i32 noundef %56) #22
  %58 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %59 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1987, i32 noundef 430, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.5, ptr noundef nonnull %58, ptr noundef %57) #22
  %60 = call ptr @DestroyString(ptr noundef %57) #22
  br label %141

61:                                               ; preds = %50
  %62 = call i32 @fstat(i32 noundef %51, ptr noundef nonnull %7) #22
  %63 = icmp eq i32 %62, 0
  %64 = getelementptr inbounds %struct.stat, ptr %7, i64 0, i32 8
  %65 = load i64, ptr %64, align 8
  %66 = icmp ne i64 %65, 0
  %67 = select i1 %63, i1 %66, i1 false
  %68 = call i64 @llvm.umin.i64(i64 %65, i64 262142)
  %69 = select i1 %67, i64 %68, i64 262142
  %70 = call ptr @AcquireQuantumMemory(i64 noundef %69, i64 noundef 1) #26
  %71 = icmp eq ptr %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %61
  %73 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 52
  br label %81

74:                                               ; preds = %61
  %75 = call i32 @RelinquishUniqueFileResource(ptr noundef nonnull %6) #22
  %76 = icmp eq ptr %1, null
  br i1 %76, label %141, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %79 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %80 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %78, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1998, i32 noundef 400, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.7, ptr noundef nonnull %79) #22
  br label %141

81:                                               ; preds = %72, %126
  %82 = phi i32 [ %129, %126 ], [ %43, %72 ]
  %83 = call i64 @read(i32 noundef %51, ptr noundef nonnull %70, i64 noundef %69) #22
  %84 = icmp slt i64 %83, 1
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = tail call ptr @__errno_location() #23
  %87 = load i32, ptr %86, align 4, !tbaa !52
  %88 = icmp eq i32 %87, 4
  br i1 %88, label %89, label %130

89:                                               ; preds = %85, %81
  %90 = phi i64 [ 0, %85 ], [ %83, %81 ]
  %91 = load ptr, ptr %73, align 8, !tbaa !63
  %92 = getelementptr inbounds %struct._BlobInfo, ptr %91, i64 0, i32 11
  %93 = load i32, ptr %92, align 8, !tbaa !48
  %94 = icmp eq i32 %93, 7
  br i1 %94, label %97, label %95

95:                                               ; preds = %89
  %96 = call i64 @WriteBlob(ptr noundef %1, i64 noundef %90, ptr noundef nonnull %70)
  br label %126

97:                                               ; preds = %89
  %98 = getelementptr inbounds %struct._BlobInfo, ptr %91, i64 0, i32 5
  %99 = load i64, ptr %98, align 8, !tbaa !47
  %100 = add nsw i64 %99, %90
  %101 = getelementptr inbounds %struct._BlobInfo, ptr %91, i64 0, i32 1
  %102 = load i64, ptr %101, align 8, !tbaa !45
  %103 = icmp ult i64 %100, %102
  br i1 %103, label %112, label %104

104:                                              ; preds = %97
  %105 = getelementptr inbounds %struct._BlobInfo, ptr %91, i64 0, i32 2
  %106 = load i64, ptr %105, align 8, !tbaa !46
  %107 = add i64 %102, %90
  %108 = add i64 %107, %106
  %109 = shl i64 %106, 1
  store i64 %109, ptr %105, align 8, !tbaa !46
  %110 = call i32 @SetBlobExtent(ptr noundef %1, i64 noundef %108), !range !74
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %126, label %112

112:                                              ; preds = %104, %97
  %113 = load ptr, ptr %73, align 8, !tbaa !63
  %114 = getelementptr inbounds %struct._BlobInfo, ptr %113, i64 0, i32 15
  %115 = load ptr, ptr %114, align 8, !tbaa !50
  %116 = getelementptr inbounds %struct._BlobInfo, ptr %113, i64 0, i32 5
  %117 = load i64, ptr %116, align 8, !tbaa !47
  %118 = getelementptr inbounds i8, ptr %115, i64 %117
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %118, ptr nonnull align 1 %70, i64 %90, i1 false)
  %119 = load ptr, ptr %73, align 8, !tbaa !63
  %120 = getelementptr inbounds %struct._BlobInfo, ptr %119, i64 0, i32 5
  %121 = load i64, ptr %120, align 8, !tbaa !47
  %122 = add i64 %121, %90
  store i64 %122, ptr %120, align 8, !tbaa !47
  %123 = load i64, ptr %119, align 8, !tbaa !44
  %124 = icmp slt i64 %122, %123
  br i1 %124, label %126, label %125

125:                                              ; preds = %112
  store i64 %122, ptr %119, align 8, !tbaa !44
  br label %126

126:                                              ; preds = %95, %104, %112, %125
  %127 = phi i64 [ %96, %95 ], [ 0, %104 ], [ %90, %125 ], [ %90, %112 ]
  %128 = icmp eq i64 %127, %90
  %129 = zext i1 %128 to i32
  br label %81, !llvm.loop !102

130:                                              ; preds = %85
  %131 = call i32 @close(i32 noundef %51) #22
  %132 = icmp eq i32 %131, -1
  br i1 %132, label %133, label %138

133:                                              ; preds = %130
  %134 = load i32, ptr %86, align 4, !tbaa !52
  %135 = call ptr @GetExceptionMessage(i32 noundef %134) #22
  %136 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2014, i32 noundef 430, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull %6, ptr noundef %135) #22
  %137 = call ptr @DestroyString(ptr noundef %135) #22
  br label %138

138:                                              ; preds = %133, %130
  %139 = call i32 @RelinquishUniqueFileResource(ptr noundef nonnull %6) #22
  %140 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %70) #22
  br label %141

141:                                              ; preds = %74, %77, %138, %53, %48, %34, %23
  %142 = phi i32 [ 0, %23 ], [ 0, %34 ], [ 0, %48 ], [ 0, %53 ], [ %82, %138 ], [ 0, %77 ], [ 0, %74 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #22
  ret i32 %142
}

declare ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @SetImageInfoFile(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @IsBlobExempt(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !91
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2047, ptr noundef nonnull @.str.3, ptr noundef nonnull %6) #22
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %10 = load ptr, ptr %9, align 8, !tbaa !63
  %11 = getelementptr inbounds %struct._BlobInfo, ptr %10, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !73
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @IsBlobSeekable(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !91
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2081, ptr noundef nonnull @.str.3, ptr noundef nonnull %6) #22
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %10 = load ptr, ptr %9, align 8, !tbaa !63
  %11 = getelementptr inbounds %struct._BlobInfo, ptr %10, i64 0, i32 11
  %12 = load i32, ptr %11, align 8, !tbaa !48
  %13 = add i32 %12, -1
  %14 = icmp ult i32 %13, 7
  br i1 %14, label %15, label %19

15:                                               ; preds = %8
  %16 = zext nneg i32 %13 to i64
  %17 = getelementptr inbounds [7 x i32], ptr @switch.table.IsBlobSeekable, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4
  br label %19

19:                                               ; preds = %8, %15
  %20 = phi i32 [ %18, %15 ], [ 0, %8 ]
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define dso_local i32 @IsBlobTemporary(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !91
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2127, ptr noundef nonnull @.str.3, ptr noundef nonnull %6) #22
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %10 = load ptr, ptr %9, align 8, !tbaa !63
  %11 = getelementptr inbounds %struct._BlobInfo, ptr %10, i64 0, i32 10
  %12 = load i32, ptr %11, align 4, !tbaa !87
  ret i32 %12
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MSBOrderLong(ptr noundef %0, i64 noundef %1) local_unnamed_addr #16 {
  %3 = getelementptr inbounds i8, ptr %0, i64 %1
  %4 = icmp sgt i64 %1, 0
  br i1 %4, label %5, label %16

5:                                                ; preds = %2, %5
  %6 = phi ptr [ %14, %5 ], [ %0, %2 ]
  %7 = getelementptr inbounds i8, ptr %6, i64 3
  %8 = load i8, ptr %7, align 1, !tbaa !49
  %9 = load i8, ptr %6, align 1, !tbaa !49
  store i8 %9, ptr %7, align 1, !tbaa !49
  %10 = getelementptr inbounds i8, ptr %6, i64 1
  store i8 %8, ptr %6, align 1, !tbaa !49
  %11 = getelementptr inbounds i8, ptr %6, i64 2
  %12 = load i8, ptr %11, align 1, !tbaa !49
  %13 = load i8, ptr %10, align 1, !tbaa !49
  store i8 %13, ptr %11, align 1, !tbaa !49
  store i8 %12, ptr %10, align 1, !tbaa !49
  %14 = getelementptr inbounds i8, ptr %6, i64 4
  %15 = icmp ult ptr %14, %3
  br i1 %15, label %5, label %16, !llvm.loop !103

16:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MSBOrderShort(ptr noundef %0, i64 noundef %1) local_unnamed_addr #16 {
  %3 = getelementptr inbounds i8, ptr %0, i64 %1
  %4 = icmp sgt i64 %1, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %2, %5
  %6 = phi ptr [ %10, %5 ], [ %0, %2 ]
  %7 = load i8, ptr %6, align 1, !tbaa !49
  %8 = getelementptr inbounds i8, ptr %6, i64 1
  %9 = load i8, ptr %8, align 1, !tbaa !49
  store i8 %9, ptr %6, align 1, !tbaa !49
  %10 = getelementptr inbounds i8, ptr %6, i64 2
  store i8 %7, ptr %8, align 1, !tbaa !49
  %11 = icmp ult ptr %10, %3
  br i1 %11, label %5, label %12, !llvm.loop !104

12:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @OpenBlob(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  %6 = alloca [4096 x i8], align 16
  %7 = alloca [4096 x i8], align 16
  %8 = alloca [4096 x i8], align 16
  %9 = alloca [3 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #22
  %10 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 52
  %11 = load i32, ptr %10, align 8, !tbaa !56
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %15 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2369, ptr noundef nonnull @.str.3, ptr noundef nonnull %14) #22
  br label %16

16:                                               ; preds = %13, %4
  %17 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 46
  %18 = load ptr, ptr %17, align 8, !tbaa !61
  %19 = icmp eq ptr %18, null
  br i1 %19, label %46, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 44
  %22 = load ptr, ptr %21, align 8, !tbaa !105
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 52
  %26 = load ptr, ptr %25, align 8, !tbaa !63
  %27 = getelementptr inbounds %struct._BlobInfo, ptr %26, i64 0, i32 14
  store ptr %22, ptr %27, align 8, !tbaa !90
  br label %28

28:                                               ; preds = %24, %20
  %29 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 52
  %30 = load ptr, ptr %29, align 8, !tbaa !63
  %31 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 47
  %32 = load i64, ptr %31, align 8, !tbaa !62
  %33 = getelementptr inbounds %struct._BlobInfo, ptr %30, i64 0, i32 16
  %34 = load i32, ptr %33, align 8, !tbaa !34
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %28
  %37 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 197, ptr noundef nonnull @.str.2) #22
  br label %38

38:                                               ; preds = %28, %36
  store i64 %32, ptr %30, align 8, !tbaa !44
  %39 = getelementptr inbounds %struct._BlobInfo, ptr %30, i64 0, i32 1
  store i64 %32, ptr %39, align 8, !tbaa !45
  %40 = getelementptr inbounds %struct._BlobInfo, ptr %30, i64 0, i32 2
  store i64 65541, ptr %40, align 8, !tbaa !46
  %41 = getelementptr inbounds %struct._BlobInfo, ptr %30, i64 0, i32 5
  store i64 0, ptr %41, align 8, !tbaa !47
  %42 = getelementptr inbounds %struct._BlobInfo, ptr %30, i64 0, i32 11
  store i32 7, ptr %42, align 8, !tbaa !48
  %43 = getelementptr inbounds %struct._BlobInfo, ptr %30, i64 0, i32 12
  store ptr null, ptr %43, align 8, !tbaa !49
  %44 = getelementptr inbounds %struct._BlobInfo, ptr %30, i64 0, i32 15
  store ptr %18, ptr %44, align 8, !tbaa !50
  %45 = getelementptr inbounds %struct._BlobInfo, ptr %30, i64 0, i32 3
  store i32 0, ptr %45, align 8, !tbaa !51
  br label %279

46:                                               ; preds = %16
  %47 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 52
  %48 = load ptr, ptr %47, align 8, !tbaa !63
  %49 = getelementptr inbounds %struct._BlobInfo, ptr %48, i64 0, i32 16
  %50 = load i32, ptr %49, align 8, !tbaa !34
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %46
  %53 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 691, ptr noundef nonnull @.str.2) #22
  br label %54

54:                                               ; preds = %52, %46
  %55 = getelementptr inbounds %struct._BlobInfo, ptr %48, i64 0, i32 3
  %56 = load i32, ptr %55, align 8, !tbaa !51
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct._BlobInfo, ptr %48, i64 0, i32 15
  store ptr null, ptr %59, align 8, !tbaa !50
  %60 = load i64, ptr %48, align 8, !tbaa !44
  tail call void @RelinquishMagickResource(i32 noundef 4, i64 noundef %60) #22
  br label %61

61:                                               ; preds = %54, %58
  store i64 0, ptr %48, align 8, !tbaa !44
  %62 = getelementptr inbounds %struct._BlobInfo, ptr %48, i64 0, i32 7
  store i32 0, ptr %62, align 8, !tbaa !73
  %63 = getelementptr inbounds %struct._BlobInfo, ptr %48, i64 0, i32 11
  store i32 0, ptr %63, align 8, !tbaa !48
  %64 = getelementptr inbounds %struct._BlobInfo, ptr %48, i64 0, i32 12
  store ptr null, ptr %64, align 8, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %55, i8 0, i64 16, i1 false)
  %65 = getelementptr inbounds %struct._BlobInfo, ptr %48, i64 0, i32 14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %65, i8 0, i64 16, i1 false)
  %66 = add i32 %2, -2
  %67 = icmp ult i32 %66, 5
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = zext nneg i32 %66 to i64
  %70 = shl i64 %69, 2
  %71 = call ptr @llvm.load.relative.i64(ptr @reltable.OpenBlob, i64 %70)
  br label %72

72:                                               ; preds = %68, %61
  %73 = phi ptr [ @.str.18, %61 ], [ %71, %68 ]
  %74 = load i8, ptr %73, align 1, !tbaa !49
  %75 = icmp eq i8 %74, 114
  br i1 %75, label %81, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 61
  %78 = load i32, ptr %77, align 8, !tbaa !106
  %79 = load ptr, ptr %47, align 8, !tbaa !63
  %80 = getelementptr inbounds %struct._BlobInfo, ptr %79, i64 0, i32 8
  store i32 %78, ptr %80, align 4, !tbaa !83
  br label %81

81:                                               ; preds = %76, %72
  %82 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 44
  %83 = load ptr, ptr %82, align 8, !tbaa !105
  %84 = icmp eq ptr %83, null
  br i1 %84, label %91, label %85

85:                                               ; preds = %81
  %86 = load ptr, ptr %47, align 8, !tbaa !63
  %87 = getelementptr inbounds %struct._BlobInfo, ptr %86, i64 0, i32 14
  store ptr %83, ptr %87, align 8, !tbaa !90
  %88 = icmp eq i8 %74, 119
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct._BlobInfo, ptr %86, i64 0, i32 11
  store i32 6, ptr %90, align 8, !tbaa !48
  br label %279

91:                                               ; preds = %85, %81
  store i8 0, ptr %6, align 16, !tbaa !49
  %92 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %93 = call i64 @CopyMagickString(ptr noundef nonnull %6, ptr noundef nonnull %92, i64 noundef 4096) #22
  %94 = icmp eq i8 %74, 119
  %95 = select i1 %94, i32 2, i32 1
  %96 = call i32 @IsRightsAuthorized(i32 noundef 4, i32 noundef %95, ptr noundef nonnull %6) #22
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %91
  %99 = tail call ptr @__errno_location() #23
  store i32 1, ptr %99, align 4, !tbaa !52
  %100 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2413, i32 noundef 499, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.7, ptr noundef nonnull %6) #22
  br label %279

101:                                              ; preds = %91
  %102 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.11) #22
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %111, label %104

104:                                              ; preds = %101
  %105 = load i8, ptr %6, align 16, !tbaa !49
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %120

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 45
  %109 = load ptr, ptr %108, align 8, !tbaa !99
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %120

111:                                              ; preds = %107, %101
  %112 = load ptr, ptr @stdin, align 8
  %113 = load ptr, ptr @stdout, align 8
  %114 = select i1 %75, ptr %112, ptr %113
  %115 = load ptr, ptr %47, align 8, !tbaa !63
  %116 = getelementptr inbounds %struct._BlobInfo, ptr %115, i64 0, i32 12
  store ptr %114, ptr %116, align 8, !tbaa !49
  %117 = load ptr, ptr %47, align 8, !tbaa !63
  %118 = getelementptr inbounds %struct._BlobInfo, ptr %117, i64 0, i32 11
  store i32 2, ptr %118, align 8, !tbaa !48
  %119 = getelementptr inbounds %struct._BlobInfo, ptr %117, i64 0, i32 7
  store i32 1, ptr %119, align 8, !tbaa !73
  br label %279

120:                                              ; preds = %107, %104
  %121 = call i32 @LocaleNCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.25, i64 noundef 3) #22
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %134

123:                                              ; preds = %120
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %7) #22
  store i8 %74, ptr %7, align 16, !tbaa !49
  %124 = getelementptr inbounds [4096 x i8], ptr %7, i64 0, i64 1
  store i8 0, ptr %124, align 1, !tbaa !49
  %125 = getelementptr inbounds i8, ptr %6, i64 3
  %126 = call i64 @strtol(ptr nocapture noundef nonnull %125, ptr noundef null, i32 noundef 10) #22
  %127 = trunc i64 %126 to i32
  %128 = call noalias ptr @fdopen(i32 noundef %127, ptr noundef nonnull %7) #22
  %129 = load ptr, ptr %47, align 8, !tbaa !63
  %130 = getelementptr inbounds %struct._BlobInfo, ptr %129, i64 0, i32 12
  store ptr %128, ptr %130, align 8, !tbaa !49
  %131 = load ptr, ptr %47, align 8, !tbaa !63
  %132 = getelementptr inbounds %struct._BlobInfo, ptr %131, i64 0, i32 11
  store i32 2, ptr %132, align 8, !tbaa !48
  %133 = getelementptr inbounds %struct._BlobInfo, ptr %131, i64 0, i32 7
  store i32 1, ptr %133, align 8, !tbaa !73
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %7) #22
  br label %279

134:                                              ; preds = %120
  %135 = load ptr, ptr %47, align 8, !tbaa !63
  %136 = getelementptr inbounds %struct._BlobInfo, ptr %135, i64 0, i32 13
  %137 = call i32 @GetPathAttributes(ptr noundef nonnull %6, ptr noundef nonnull %136) #22
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %162, label %139

139:                                              ; preds = %134
  %140 = load ptr, ptr %47, align 8, !tbaa !63
  %141 = getelementptr inbounds %struct._BlobInfo, ptr %140, i64 0, i32 13, i32 3
  %142 = load i32, ptr %141, align 8, !tbaa !107
  %143 = and i32 %142, 61440
  %144 = icmp eq i32 %143, 4096
  br i1 %144, label %145, label %162

145:                                              ; preds = %139
  %146 = call noalias ptr @fopen(ptr noundef nonnull %6, ptr noundef nonnull %73)
  %147 = load ptr, ptr %47, align 8, !tbaa !63
  %148 = getelementptr inbounds %struct._BlobInfo, ptr %147, i64 0, i32 12
  store ptr %146, ptr %148, align 8, !tbaa !49
  %149 = load ptr, ptr %47, align 8, !tbaa !63
  %150 = getelementptr inbounds %struct._BlobInfo, ptr %149, i64 0, i32 12
  %151 = load ptr, ptr %150, align 8, !tbaa !49
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %159

153:                                              ; preds = %145
  %154 = tail call ptr @__errno_location() #23
  %155 = load i32, ptr %154, align 4, !tbaa !52
  %156 = call ptr @GetExceptionMessage(i32 noundef %155) #22
  %157 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2478, i32 noundef 435, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.5, ptr noundef nonnull %6, ptr noundef %156) #22
  %158 = call ptr @DestroyString(ptr noundef %156) #22
  br label %279

159:                                              ; preds = %145
  %160 = getelementptr inbounds %struct._BlobInfo, ptr %149, i64 0, i32 11
  store i32 1, ptr %160, align 8, !tbaa !48
  %161 = getelementptr inbounds %struct._BlobInfo, ptr %149, i64 0, i32 7
  store i32 1, ptr %161, align 8, !tbaa !73
  br label %279

162:                                              ; preds = %139, %134
  call void @GetPathComponent(ptr noundef nonnull %92, i32 noundef 6, ptr noundef nonnull %5) #22
  br i1 %94, label %163, label %196

163:                                              ; preds = %162
  %164 = call i64 @CopyMagickString(ptr noundef nonnull %6, ptr noundef nonnull %92, i64 noundef 4096) #22
  %165 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 3
  %166 = load i32, ptr %165, align 4, !tbaa !98
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %171, label %168

168:                                              ; preds = %163
  %169 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %6, i32 noundef 37) #28
  %170 = icmp eq ptr %169, null
  br i1 %170, label %196, label %171

171:                                              ; preds = %168, %163
  %172 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 39
  %173 = load i64, ptr %172, align 8, !tbaa !108
  %174 = trunc i64 %173 to i32
  %175 = call i64 @InterpretImageFilename(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %92, i32 noundef %174, ptr noundef nonnull %6) #22
  %176 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull %92) #22
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %194

178:                                              ; preds = %171
  %179 = call ptr @GetPreviousImageInList(ptr noundef %1) #22
  %180 = icmp eq ptr %179, null
  br i1 %180, label %181, label %184

181:                                              ; preds = %178
  %182 = call ptr @GetNextImageInList(ptr noundef %1) #22
  %183 = icmp eq ptr %182, null
  br i1 %183, label %194, label %184

184:                                              ; preds = %181, %178
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %8) #22
  call void @GetPathComponent(ptr noundef nonnull %92, i32 noundef 2, ptr noundef nonnull %8) #22
  %185 = load i8, ptr %5, align 16, !tbaa !49
  %186 = icmp eq i8 %185, 0
  %187 = load i64, ptr %172, align 8, !tbaa !108
  %188 = uitofp i64 %187 to double
  br i1 %186, label %189, label %191

189:                                              ; preds = %184
  %190 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.26, ptr noundef nonnull %8, double noundef %188) #22
  br label %193

191:                                              ; preds = %184
  %192 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.27, ptr noundef nonnull %8, double noundef %188, ptr noundef nonnull %5) #22
  br label %193

193:                                              ; preds = %191, %189
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %8) #22
  br label %194

194:                                              ; preds = %193, %181, %171
  %195 = call i64 @CopyMagickString(ptr noundef nonnull %92, ptr noundef nonnull %6, i64 noundef 4096) #22
  br label %196

196:                                              ; preds = %168, %194, %162
  %197 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 45
  %198 = load ptr, ptr %197, align 8, !tbaa !99
  %199 = icmp eq ptr %198, null
  br i1 %199, label %206, label %200

200:                                              ; preds = %196
  %201 = load ptr, ptr %47, align 8, !tbaa !63
  %202 = getelementptr inbounds %struct._BlobInfo, ptr %201, i64 0, i32 12
  store ptr %198, ptr %202, align 8, !tbaa !49
  %203 = load ptr, ptr %47, align 8, !tbaa !63
  %204 = getelementptr inbounds %struct._BlobInfo, ptr %203, i64 0, i32 11
  store i32 1, ptr %204, align 8, !tbaa !48
  %205 = getelementptr inbounds %struct._BlobInfo, ptr %203, i64 0, i32 7
  store i32 1, ptr %205, align 8, !tbaa !73
  br label %263

206:                                              ; preds = %196
  %207 = call noalias ptr @fopen(ptr noundef nonnull %6, ptr noundef nonnull %73)
  %208 = load ptr, ptr %47, align 8, !tbaa !63
  %209 = getelementptr inbounds %struct._BlobInfo, ptr %208, i64 0, i32 12
  store ptr %207, ptr %209, align 8, !tbaa !49
  %210 = load ptr, ptr %47, align 8, !tbaa !63
  %211 = getelementptr inbounds %struct._BlobInfo, ptr %210, i64 0, i32 12
  %212 = load ptr, ptr %211, align 8, !tbaa !49
  %213 = icmp eq ptr %212, null
  br i1 %75, label %214, label %260

214:                                              ; preds = %206
  br i1 %213, label %263, label %215

215:                                              ; preds = %214
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %9) #22
  %216 = getelementptr inbounds %struct._BlobInfo, ptr %210, i64 0, i32 11
  store i32 1, ptr %216, align 8, !tbaa !48
  %217 = call ptr @ResetMagickMemory(ptr noundef nonnull %9, i32 noundef 0, i64 noundef 3) #22
  %218 = load ptr, ptr %47, align 8, !tbaa !63
  %219 = getelementptr inbounds %struct._BlobInfo, ptr %218, i64 0, i32 12
  %220 = load ptr, ptr %219, align 8, !tbaa !49
  %221 = call i64 @fread(ptr noundef nonnull %9, i64 noundef 1, i64 noundef 3, ptr noundef %220)
  %222 = load ptr, ptr %47, align 8, !tbaa !63
  %223 = getelementptr inbounds %struct._BlobInfo, ptr %222, i64 0, i32 12
  %224 = load ptr, ptr %223, align 8, !tbaa !49
  %225 = sub nsw i64 0, %221
  %226 = call i32 @fseek(ptr noundef %224, i64 noundef %225, i32 noundef 1)
  %227 = load ptr, ptr %47, align 8, !tbaa !63
  %228 = getelementptr inbounds %struct._BlobInfo, ptr %227, i64 0, i32 12
  %229 = load ptr, ptr %228, align 8, !tbaa !49
  %230 = call i32 @fflush(ptr noundef %229)
  %231 = uitofp i64 %221 to double
  %232 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2546, ptr noundef nonnull @.str.28, double noundef %231) #22
  %233 = load ptr, ptr %47, align 8, !tbaa !63
  %234 = getelementptr inbounds %struct._BlobInfo, ptr %233, i64 0, i32 11
  %235 = load i32, ptr %234, align 8, !tbaa !48
  %236 = icmp eq i32 %235, 1
  br i1 %236, label %237, label %259

237:                                              ; preds = %215
  %238 = call ptr @AcquireExceptionInfo() #22
  %239 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 48
  %240 = call ptr @GetMagickInfo(ptr noundef nonnull %239, ptr noundef %238) #22
  %241 = call ptr @DestroyExceptionInfo(ptr noundef %238) #22
  %242 = load ptr, ptr %47, align 8, !tbaa !63
  %243 = getelementptr inbounds %struct._BlobInfo, ptr %242, i64 0, i32 13, i32 8
  %244 = load i64, ptr %243, align 8, !tbaa !109
  %245 = icmp eq ptr %240, null
  br i1 %245, label %259, label %246

246:                                              ; preds = %237
  %247 = call i32 @GetMagickBlobSupport(ptr noundef nonnull %240) #22
  %248 = icmp ne i32 %247, 0
  %249 = icmp ult i64 %244, 262143
  %250 = select i1 %248, i1 %249, i1 false
  br i1 %250, label %251, label %259

251:                                              ; preds = %246
  %252 = call i32 @AcquireMagickResource(i32 noundef 4, i64 noundef %244) #22
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %259, label %254

254:                                              ; preds = %251
  %255 = load ptr, ptr %47, align 8, !tbaa !63
  %256 = getelementptr inbounds %struct._BlobInfo, ptr %255, i64 0, i32 12
  %257 = load ptr, ptr %256, align 8, !tbaa !49
  %258 = call i32 @fileno(ptr noundef %257) #22
  call void @RelinquishMagickResource(i32 noundef 4, i64 noundef %244) #22
  br label %259

259:                                              ; preds = %237, %246, %251, %254, %215
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %9) #22
  br label %263

260:                                              ; preds = %206
  br i1 %213, label %263, label %261

261:                                              ; preds = %260
  %262 = getelementptr inbounds %struct._BlobInfo, ptr %210, i64 0, i32 11
  store i32 1, ptr %262, align 8, !tbaa !48
  br label %263

263:                                              ; preds = %259, %214, %261, %260, %200
  %264 = load ptr, ptr %47, align 8, !tbaa !63
  %265 = getelementptr inbounds %struct._BlobInfo, ptr %264, i64 0, i32 9
  store i32 0, ptr %265, align 8, !tbaa !86
  %266 = getelementptr inbounds %struct._BlobInfo, ptr %264, i64 0, i32 11
  %267 = load i32, ptr %266, align 8, !tbaa !48
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %273, label %269

269:                                              ; preds = %263
  %270 = call i64 @GetBlobSize(ptr noundef %1)
  %271 = load ptr, ptr %47, align 8, !tbaa !63
  %272 = getelementptr inbounds %struct._BlobInfo, ptr %271, i64 0, i32 6
  store i64 %270, ptr %272, align 8, !tbaa !85
  br label %279

273:                                              ; preds = %263
  %274 = tail call ptr @__errno_location() #23
  %275 = load i32, ptr %274, align 4, !tbaa !52
  %276 = call ptr @GetExceptionMessage(i32 noundef %275) #22
  %277 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2657, i32 noundef 435, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.5, ptr noundef nonnull %6, ptr noundef %276) #22
  %278 = call ptr @DestroyString(ptr noundef %276) #22
  br label %279

279:                                              ; preds = %269, %273, %159, %153, %123, %111, %98, %89, %38
  %280 = phi i32 [ 1, %38 ], [ 1, %89 ], [ 0, %98 ], [ 1, %111 ], [ 1, %123 ], [ 0, %153 ], [ 1, %159 ], [ 1, %269 ], [ 0, %273 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #22
  ret i32 %280
}

declare i32 @IsRightsAuthorized(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @LocaleNCompare(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @GetPathComponent(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #17

declare i64 @InterpretImageFilename(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @GetPreviousImageInList(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #8

declare ptr @AcquireExceptionInfo() local_unnamed_addr #1

declare i32 @AcquireMagickResource(i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @PingBlob(ptr noundef %0, ptr noundef readonly %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 52
  %6 = load i32, ptr %5, align 8, !tbaa !56
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2726, ptr noundef nonnull @.str.3, ptr noundef nonnull %9) #22
  br label %11

11:                                               ; preds = %8, %4
  %12 = icmp eq ptr %1, null
  %13 = icmp eq i64 %2, 0
  %14 = or i1 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 48
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2731, i32 noundef 435, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.7, ptr noundef nonnull %16) #22
  br label %32

18:                                               ; preds = %11
  %19 = tail call ptr @CloneImageInfo(ptr noundef %0) #22
  %20 = tail call ptr @AcquireQuantumMemory(i64 noundef %2, i64 noundef 1) #26
  %21 = getelementptr inbounds %struct._ImageInfo, ptr %19, i64 0, i32 46
  store ptr %20, ptr %21, align 8, !tbaa !61
  %22 = icmp eq ptr %20, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2739, i32 noundef 700, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1) #22
  br label %32

25:                                               ; preds = %18
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %20, ptr align 1 %1, i64 %2, i1 false)
  %26 = getelementptr inbounds %struct._ImageInfo, ptr %19, i64 0, i32 47
  store i64 %2, ptr %26, align 8, !tbaa !62
  %27 = getelementptr inbounds %struct._ImageInfo, ptr %19, i64 0, i32 34
  store i32 1, ptr %27, align 8, !tbaa !110
  %28 = tail call ptr @ReadStream(ptr noundef %19, ptr noundef nonnull @PingStream, ptr noundef %3) #22
  %29 = load ptr, ptr %21, align 8, !tbaa !61
  %30 = tail call ptr @RelinquishMagickMemory(ptr noundef %29) #22
  store ptr %30, ptr %21, align 8, !tbaa !61
  %31 = tail call ptr @DestroyImageInfo(ptr noundef %19) #22
  br label %32

32:                                               ; preds = %25, %23, %15
  %33 = phi ptr [ null, %15 ], [ null, %23 ], [ %28, %25 ]
  ret ptr %33
}

declare ptr @ReadStream(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i64 @PingStream(ptr nocapture readnone %0, ptr nocapture readnone %1, i64 noundef returned %2) #10 {
  ret i64 %2
}

; Function Attrs: nofree nounwind uwtable
define dso_local i64 @ReadBlob(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #11 {
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %73, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %7 = load ptr, ptr %6, align 8, !tbaa !63
  %8 = getelementptr inbounds %struct._BlobInfo, ptr %7, i64 0, i32 11
  %9 = load i32, ptr %8, align 8, !tbaa !48
  switch i32 %9, label %73 [
    i32 7, label %55
    i32 2, label %10
    i32 1, label %31
    i32 3, label %31
  ]

10:                                               ; preds = %5
  %11 = icmp sgt i64 %1, 0
  br i1 %11, label %12, label %73

12:                                               ; preds = %10, %27
  %13 = phi i64 [ %29, %27 ], [ 0, %10 ]
  %14 = load ptr, ptr %6, align 8, !tbaa !63
  %15 = getelementptr inbounds %struct._BlobInfo, ptr %14, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !49
  %17 = tail call i32 @fileno(ptr noundef %16) #22
  %18 = getelementptr inbounds i8, ptr %2, i64 %13
  %19 = sub nsw i64 %1, %13
  %20 = tail call i64 @llvm.umin.i64(i64 %19, i64 9223372036854775807)
  %21 = tail call i64 @read(i32 noundef %17, ptr noundef %18, i64 noundef %20) #22
  %22 = icmp slt i64 %21, 1
  br i1 %22, label %23, label %27

23:                                               ; preds = %12
  %24 = tail call ptr @__errno_location() #23
  %25 = load i32, ptr %24, align 4, !tbaa !52
  %26 = icmp eq i32 %25, 4
  br i1 %26, label %27, label %73

27:                                               ; preds = %12, %23
  %28 = phi i64 [ 0, %23 ], [ %21, %12 ]
  %29 = add nuw nsw i64 %28, %13
  %30 = icmp slt i64 %29, %1
  br i1 %30, label %12, label %73, !llvm.loop !111

31:                                               ; preds = %5, %5
  switch i64 %1, label %32 [
    i64 2, label %36
    i64 1, label %44
  ]

32:                                               ; preds = %31
  %33 = getelementptr inbounds %struct._BlobInfo, ptr %7, i64 0, i32 12
  %34 = load ptr, ptr %33, align 8, !tbaa !49
  %35 = tail call i64 @fread(ptr noundef %2, i64 noundef 1, i64 noundef %1, ptr noundef %34)
  br label %73

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct._BlobInfo, ptr %7, i64 0, i32 12
  %38 = load ptr, ptr %37, align 8, !tbaa !49
  %39 = tail call i32 @getc(ptr noundef %38)
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %73, label %41

41:                                               ; preds = %36
  %42 = trunc i32 %39 to i8
  %43 = getelementptr inbounds i8, ptr %2, i64 1
  store i8 %42, ptr %2, align 1, !tbaa !49
  br label %44

44:                                               ; preds = %31, %41
  %45 = phi ptr [ %2, %31 ], [ %43, %41 ]
  %46 = phi i64 [ 0, %31 ], [ 1, %41 ]
  %47 = load ptr, ptr %6, align 8, !tbaa !63
  %48 = getelementptr inbounds %struct._BlobInfo, ptr %47, i64 0, i32 12
  %49 = load ptr, ptr %48, align 8, !tbaa !49
  %50 = tail call i32 @getc(ptr noundef %49)
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %73, label %52

52:                                               ; preds = %44
  %53 = trunc i32 %50 to i8
  store i8 %53, ptr %45, align 1, !tbaa !49
  %54 = add nuw nsw i64 %46, 1
  br label %73

55:                                               ; preds = %5
  %56 = getelementptr inbounds %struct._BlobInfo, ptr %7, i64 0, i32 5
  %57 = load i64, ptr %56, align 8, !tbaa !47
  %58 = load i64, ptr %7, align 8, !tbaa !44
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %62, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct._BlobInfo, ptr %7, i64 0, i32 4
  store i32 1, ptr %61, align 4, !tbaa !84
  br label %73

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct._BlobInfo, ptr %7, i64 0, i32 15
  %64 = load ptr, ptr %63, align 8, !tbaa !50
  %65 = getelementptr inbounds i8, ptr %64, i64 %57
  %66 = sub i64 %58, %57
  %67 = tail call i64 @llvm.umin.i64(i64 %1, i64 %66)
  %68 = add nsw i64 %67, %57
  store i64 %68, ptr %56, align 8, !tbaa !47
  %69 = icmp ult i64 %66, %1
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = getelementptr inbounds %struct._BlobInfo, ptr %7, i64 0, i32 4
  store i32 1, ptr %71, align 4, !tbaa !84
  br label %72

72:                                               ; preds = %70, %62
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %65, i64 %67, i1 false)
  br label %73

73:                                               ; preds = %27, %23, %10, %5, %44, %36, %52, %32, %72, %60, %3
  %74 = phi i64 [ 0, %3 ], [ 0, %5 ], [ %35, %32 ], [ %46, %44 ], [ %54, %52 ], [ 0, %36 ], [ 0, %60 ], [ %67, %72 ], [ 0, %10 ], [ %13, %23 ], [ %29, %27 ]
  ret i64 %74
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @ReadBlobByte(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
  %2 = alloca [1 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #22
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct._BlobInfo, ptr %4, i64 0, i32 11
  %6 = load i32, ptr %5, align 8, !tbaa !48
  %7 = icmp eq i32 %6, 7
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = call i64 @ReadBlob(ptr noundef %0, i64 noundef 1, ptr noundef nonnull %2)
  %10 = icmp eq i64 %9, 1
  br label %23

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct._BlobInfo, ptr %4, i64 0, i32 5
  %13 = load i64, ptr %12, align 8, !tbaa !47
  %14 = load i64, ptr %4, align 8, !tbaa !44
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct._BlobInfo, ptr %4, i64 0, i32 4
  store i32 1, ptr %17, align 4, !tbaa !84
  br label %23

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct._BlobInfo, ptr %4, i64 0, i32 15
  %20 = load ptr, ptr %19, align 8, !tbaa !50
  %21 = getelementptr inbounds i8, ptr %20, i64 %13
  %22 = add nsw i64 %13, 1
  store i64 %22, ptr %12, align 8, !tbaa !47
  br label %23

23:                                               ; preds = %18, %8, %16
  %24 = phi i1 [ true, %18 ], [ false, %16 ], [ %10, %8 ]
  %25 = phi ptr [ %21, %18 ], [ %2, %16 ], [ %2, %8 ]
  br i1 %24, label %26, label %29

26:                                               ; preds = %23
  %27 = load i8, ptr %25, align 1, !tbaa !49
  %28 = zext i8 %27 to i32
  br label %29

29:                                               ; preds = %23, %26
  %30 = phi i32 [ %28, %26 ], [ -1, %23 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #22
  ret i32 %30
}

; Function Attrs: nofree nounwind uwtable
define dso_local double @ReadBlobDouble(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
  %2 = tail call i64 @ReadBlobLongLong(ptr noundef %0)
  %3 = bitcast i64 %2 to double
  ret double %3
}

; Function Attrs: nofree nounwind uwtable
define dso_local i64 @ReadBlobLongLong(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
  %2 = alloca [8 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  store i8 0, ptr %2, align 1, !tbaa !49
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct._BlobInfo, ptr %4, i64 0, i32 11
  %6 = load i32, ptr %5, align 8, !tbaa !48
  %7 = icmp eq i32 %6, 7
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = call i64 @ReadBlob(ptr noundef %0, i64 noundef 8, ptr noundef nonnull %2)
  br label %27

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct._BlobInfo, ptr %4, i64 0, i32 5
  %12 = load i64, ptr %11, align 8, !tbaa !47
  %13 = load i64, ptr %4, align 8, !tbaa !44
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct._BlobInfo, ptr %4, i64 0, i32 4
  store i32 1, ptr %16, align 4, !tbaa !84
  br label %27

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct._BlobInfo, ptr %4, i64 0, i32 15
  %19 = load ptr, ptr %18, align 8, !tbaa !50
  %20 = getelementptr inbounds i8, ptr %19, i64 %12
  %21 = sub i64 %13, %12
  %22 = tail call i64 @llvm.umin.i64(i64 %21, i64 8)
  %23 = add nsw i64 %22, %12
  store i64 %23, ptr %11, align 8, !tbaa !47
  %24 = icmp ult i64 %21, 8
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct._BlobInfo, ptr %4, i64 0, i32 4
  store i32 1, ptr %26, align 4, !tbaa !84
  br label %27

27:                                               ; preds = %8, %15, %17, %25
  %28 = phi i64 [ %22, %25 ], [ %22, %17 ], [ 0, %15 ], [ %9, %8 ]
  %29 = phi ptr [ %20, %25 ], [ %20, %17 ], [ %2, %15 ], [ %2, %8 ]
  %30 = icmp eq i64 %28, 8
  br i1 %30, label %31, label %108

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 34
  %33 = load i32, ptr %32, align 8, !tbaa !112
  %34 = icmp eq i32 %33, 1
  %35 = getelementptr inbounds i8, ptr %29, i64 1
  %36 = load i8, ptr %29, align 1, !tbaa !49
  %37 = zext i8 %36 to i64
  br i1 %34, label %38, label %73

38:                                               ; preds = %31
  %39 = getelementptr inbounds i8, ptr %29, i64 2
  %40 = load i8, ptr %35, align 1, !tbaa !49
  %41 = zext i8 %40 to i64
  %42 = shl nuw nsw i64 %41, 8
  %43 = getelementptr inbounds i8, ptr %29, i64 3
  %44 = load i8, ptr %39, align 1, !tbaa !49
  %45 = zext i8 %44 to i64
  %46 = shl nuw nsw i64 %45, 16
  %47 = or disjoint i64 %42, %46
  %48 = getelementptr inbounds i8, ptr %29, i64 4
  %49 = load i8, ptr %43, align 1, !tbaa !49
  %50 = zext i8 %49 to i64
  %51 = shl nuw nsw i64 %50, 24
  %52 = or disjoint i64 %47, %51
  %53 = getelementptr inbounds i8, ptr %29, i64 5
  %54 = load i8, ptr %48, align 1, !tbaa !49
  %55 = zext i8 %54 to i64
  %56 = shl nuw nsw i64 %55, 32
  %57 = or disjoint i64 %52, %56
  %58 = getelementptr inbounds i8, ptr %29, i64 6
  %59 = load i8, ptr %53, align 1, !tbaa !49
  %60 = zext i8 %59 to i64
  %61 = shl nuw nsw i64 %60, 40
  %62 = or disjoint i64 %57, %61
  %63 = getelementptr inbounds i8, ptr %29, i64 7
  %64 = load i8, ptr %58, align 1, !tbaa !49
  %65 = zext i8 %64 to i64
  %66 = shl nuw nsw i64 %65, 48
  %67 = or i64 %62, %66
  %68 = load i8, ptr %63, align 1, !tbaa !49
  %69 = zext i8 %68 to i64
  %70 = shl nuw i64 %69, 56
  %71 = or i64 %67, %70
  %72 = or i64 %71, %37
  br label %108

73:                                               ; preds = %31
  %74 = shl nuw i64 %37, 56
  %75 = getelementptr inbounds i8, ptr %29, i64 2
  %76 = load i8, ptr %35, align 1, !tbaa !49
  %77 = zext i8 %76 to i64
  %78 = shl nuw nsw i64 %77, 48
  %79 = or disjoint i64 %78, %74
  %80 = getelementptr inbounds i8, ptr %29, i64 3
  %81 = load i8, ptr %75, align 1, !tbaa !49
  %82 = zext i8 %81 to i64
  %83 = shl nuw nsw i64 %82, 40
  %84 = or disjoint i64 %79, %83
  %85 = getelementptr inbounds i8, ptr %29, i64 4
  %86 = load i8, ptr %80, align 1, !tbaa !49
  %87 = zext i8 %86 to i64
  %88 = shl nuw nsw i64 %87, 32
  %89 = or disjoint i64 %84, %88
  %90 = getelementptr inbounds i8, ptr %29, i64 5
  %91 = load i8, ptr %85, align 1, !tbaa !49
  %92 = zext i8 %91 to i64
  %93 = shl nuw nsw i64 %92, 24
  %94 = or disjoint i64 %89, %93
  %95 = getelementptr inbounds i8, ptr %29, i64 6
  %96 = load i8, ptr %90, align 1, !tbaa !49
  %97 = zext i8 %96 to i64
  %98 = shl nuw nsw i64 %97, 16
  %99 = or disjoint i64 %94, %98
  %100 = getelementptr inbounds i8, ptr %29, i64 7
  %101 = load i8, ptr %95, align 1, !tbaa !49
  %102 = zext i8 %101 to i64
  %103 = shl nuw nsw i64 %102, 8
  %104 = or i64 %99, %103
  %105 = load i8, ptr %100, align 1, !tbaa !49
  %106 = zext i8 %105 to i64
  %107 = or i64 %104, %106
  br label %108

108:                                              ; preds = %27, %73, %38
  %109 = phi i64 [ %72, %38 ], [ %107, %73 ], [ 0, %27 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  ret i64 %109
}

; Function Attrs: nofree nounwind uwtable
define dso_local float @ReadBlobFloat(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
  %2 = tail call i32 @ReadBlobLong(ptr noundef %0)
  %3 = bitcast i32 %2 to float
  ret float %3
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @ReadBlobLong(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
  %2 = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #22
  store i8 0, ptr %2, align 1, !tbaa !49
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct._BlobInfo, ptr %4, i64 0, i32 11
  %6 = load i32, ptr %5, align 8, !tbaa !48
  %7 = icmp eq i32 %6, 7
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = call i64 @ReadBlob(ptr noundef %0, i64 noundef 4, ptr noundef nonnull %2)
  br label %27

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct._BlobInfo, ptr %4, i64 0, i32 5
  %12 = load i64, ptr %11, align 8, !tbaa !47
  %13 = load i64, ptr %4, align 8, !tbaa !44
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct._BlobInfo, ptr %4, i64 0, i32 4
  store i32 1, ptr %16, align 4, !tbaa !84
  br label %27

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct._BlobInfo, ptr %4, i64 0, i32 15
  %19 = load ptr, ptr %18, align 8, !tbaa !50
  %20 = getelementptr inbounds i8, ptr %19, i64 %12
  %21 = sub i64 %13, %12
  %22 = tail call i64 @llvm.umin.i64(i64 %21, i64 4)
  %23 = add nsw i64 %22, %12
  store i64 %23, ptr %11, align 8, !tbaa !47
  %24 = icmp ult i64 %21, 4
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct._BlobInfo, ptr %4, i64 0, i32 4
  store i32 1, ptr %26, align 4, !tbaa !84
  br label %27

27:                                               ; preds = %8, %15, %17, %25
  %28 = phi i64 [ %22, %25 ], [ %22, %17 ], [ 0, %15 ], [ %9, %8 ]
  %29 = phi ptr [ %20, %25 ], [ %20, %17 ], [ %2, %15 ], [ %2, %8 ]
  %30 = icmp eq i64 %28, 4
  br i1 %30, label %31, label %68

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 34
  %33 = load i32, ptr %32, align 8, !tbaa !112
  %34 = icmp eq i32 %33, 1
  %35 = getelementptr inbounds i8, ptr %29, i64 1
  %36 = load i8, ptr %29, align 1, !tbaa !49
  %37 = zext i8 %36 to i32
  br i1 %34, label %38, label %53

38:                                               ; preds = %31
  %39 = getelementptr inbounds i8, ptr %29, i64 2
  %40 = load i8, ptr %35, align 1, !tbaa !49
  %41 = zext i8 %40 to i32
  %42 = shl nuw nsw i32 %41, 8
  %43 = getelementptr inbounds i8, ptr %29, i64 3
  %44 = load i8, ptr %39, align 1, !tbaa !49
  %45 = zext i8 %44 to i32
  %46 = shl nuw nsw i32 %45, 16
  %47 = or disjoint i32 %42, %46
  %48 = load i8, ptr %43, align 1, !tbaa !49
  %49 = zext i8 %48 to i32
  %50 = shl nuw i32 %49, 24
  %51 = or disjoint i32 %47, %50
  %52 = or disjoint i32 %51, %37
  br label %68

53:                                               ; preds = %31
  %54 = shl nuw i32 %37, 24
  %55 = getelementptr inbounds i8, ptr %29, i64 2
  %56 = load i8, ptr %35, align 1, !tbaa !49
  %57 = zext i8 %56 to i32
  %58 = shl nuw nsw i32 %57, 16
  %59 = or disjoint i32 %58, %54
  %60 = getelementptr inbounds i8, ptr %29, i64 3
  %61 = load i8, ptr %55, align 1, !tbaa !49
  %62 = zext i8 %61 to i32
  %63 = shl nuw nsw i32 %62, 8
  %64 = or disjoint i32 %59, %63
  %65 = load i8, ptr %60, align 1, !tbaa !49
  %66 = zext i8 %65 to i32
  %67 = or disjoint i32 %64, %66
  br label %68

68:                                               ; preds = %27, %53, %38
  %69 = phi i32 [ %52, %38 ], [ %67, %53 ], [ 0, %27 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #22
  ret i32 %69
}

; Function Attrs: nofree nounwind uwtable
define dso_local zeroext i16 @ReadBlobShort(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
  %2 = alloca [2 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #22
  store i8 0, ptr %2, align 1, !tbaa !49
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct._BlobInfo, ptr %4, i64 0, i32 11
  %6 = load i32, ptr %5, align 8, !tbaa !48
  %7 = icmp eq i32 %6, 7
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = call i64 @ReadBlob(ptr noundef %0, i64 noundef 2, ptr noundef nonnull %2)
  br label %27

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct._BlobInfo, ptr %4, i64 0, i32 5
  %12 = load i64, ptr %11, align 8, !tbaa !47
  %13 = load i64, ptr %4, align 8, !tbaa !44
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct._BlobInfo, ptr %4, i64 0, i32 4
  store i32 1, ptr %16, align 4, !tbaa !84
  br label %27

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct._BlobInfo, ptr %4, i64 0, i32 15
  %19 = load ptr, ptr %18, align 8, !tbaa !50
  %20 = getelementptr inbounds i8, ptr %19, i64 %12
  %21 = sub i64 %13, %12
  %22 = tail call i64 @llvm.umin.i64(i64 %21, i64 2)
  %23 = add nsw i64 %22, %12
  store i64 %23, ptr %11, align 8, !tbaa !47
  %24 = icmp ult i64 %21, 2
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct._BlobInfo, ptr %4, i64 0, i32 4
  store i32 1, ptr %26, align 4, !tbaa !84
  br label %27

27:                                               ; preds = %8, %15, %17, %25
  %28 = phi i64 [ %22, %25 ], [ %22, %17 ], [ 0, %15 ], [ %9, %8 ]
  %29 = phi ptr [ %20, %25 ], [ %20, %17 ], [ %2, %15 ], [ %2, %8 ]
  %30 = icmp eq i64 %28, 2
  br i1 %30, label %31, label %48

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 34
  %33 = load i32, ptr %32, align 8, !tbaa !112
  %34 = icmp eq i32 %33, 1
  %35 = getelementptr inbounds i8, ptr %29, i64 1
  %36 = load i8, ptr %29, align 1, !tbaa !49
  %37 = zext i8 %36 to i16
  br i1 %34, label %38, label %43

38:                                               ; preds = %31
  %39 = load i8, ptr %35, align 1, !tbaa !49
  %40 = zext i8 %39 to i16
  %41 = shl nuw i16 %40, 8
  %42 = or disjoint i16 %41, %37
  br label %48

43:                                               ; preds = %31
  %44 = shl nuw i16 %37, 8
  %45 = load i8, ptr %35, align 1, !tbaa !49
  %46 = zext i8 %45 to i16
  %47 = or disjoint i16 %44, %46
  br label %48

48:                                               ; preds = %27, %43, %38
  %49 = phi i16 [ %42, %38 ], [ %47, %43 ], [ 0, %27 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #22
  ret i16 %49
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @ReadBlobLSBLong(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
  %2 = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #22
  store i8 0, ptr %2, align 1, !tbaa !49
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct._BlobInfo, ptr %4, i64 0, i32 11
  %6 = load i32, ptr %5, align 8, !tbaa !48
  %7 = icmp eq i32 %6, 7
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = call i64 @ReadBlob(ptr noundef %0, i64 noundef 4, ptr noundef nonnull %2)
  br label %27

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct._BlobInfo, ptr %4, i64 0, i32 5
  %12 = load i64, ptr %11, align 8, !tbaa !47
  %13 = load i64, ptr %4, align 8, !tbaa !44
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct._BlobInfo, ptr %4, i64 0, i32 4
  store i32 1, ptr %16, align 4, !tbaa !84
  br label %27

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct._BlobInfo, ptr %4, i64 0, i32 15
  %19 = load ptr, ptr %18, align 8, !tbaa !50
  %20 = getelementptr inbounds i8, ptr %19, i64 %12
  %21 = sub i64 %13, %12
  %22 = tail call i64 @llvm.umin.i64(i64 %21, i64 4)
  %23 = add nsw i64 %22, %12
  store i64 %23, ptr %11, align 8, !tbaa !47
  %24 = icmp ult i64 %21, 4
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct._BlobInfo, ptr %4, i64 0, i32 4
  store i32 1, ptr %26, align 4, !tbaa !84
  br label %27

27:                                               ; preds = %8, %15, %17, %25
  %28 = phi i64 [ %22, %25 ], [ %22, %17 ], [ 0, %15 ], [ %9, %8 ]
  %29 = phi ptr [ %20, %25 ], [ %20, %17 ], [ %2, %15 ], [ %2, %8 ]
  %30 = icmp eq i64 %28, 4
  br i1 %30, label %31, label %49

31:                                               ; preds = %27
  %32 = getelementptr inbounds i8, ptr %29, i64 1
  %33 = load i8, ptr %29, align 1, !tbaa !49
  %34 = zext i8 %33 to i32
  %35 = getelementptr inbounds i8, ptr %29, i64 2
  %36 = load i8, ptr %32, align 1, !tbaa !49
  %37 = zext i8 %36 to i32
  %38 = shl nuw nsw i32 %37, 8
  %39 = or disjoint i32 %38, %34
  %40 = getelementptr inbounds i8, ptr %29, i64 3
  %41 = load i8, ptr %35, align 1, !tbaa !49
  %42 = zext i8 %41 to i32
  %43 = shl nuw nsw i32 %42, 16
  %44 = or disjoint i32 %39, %43
  %45 = load i8, ptr %40, align 1, !tbaa !49
  %46 = zext i8 %45 to i32
  %47 = shl nuw i32 %46, 24
  %48 = or disjoint i32 %44, %47
  br label %49

49:                                               ; preds = %27, %31
  %50 = phi i32 [ %48, %31 ], [ 0, %27 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #22
  ret i32 %50
}

; Function Attrs: nofree nounwind uwtable
define dso_local zeroext i16 @ReadBlobLSBShort(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
  %2 = alloca [2 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #22
  store i8 0, ptr %2, align 1, !tbaa !49
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct._BlobInfo, ptr %4, i64 0, i32 11
  %6 = load i32, ptr %5, align 8, !tbaa !48
  %7 = icmp eq i32 %6, 7
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = call i64 @ReadBlob(ptr noundef %0, i64 noundef 2, ptr noundef nonnull %2)
  br label %27

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct._BlobInfo, ptr %4, i64 0, i32 5
  %12 = load i64, ptr %11, align 8, !tbaa !47
  %13 = load i64, ptr %4, align 8, !tbaa !44
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct._BlobInfo, ptr %4, i64 0, i32 4
  store i32 1, ptr %16, align 4, !tbaa !84
  br label %27

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct._BlobInfo, ptr %4, i64 0, i32 15
  %19 = load ptr, ptr %18, align 8, !tbaa !50
  %20 = getelementptr inbounds i8, ptr %19, i64 %12
  %21 = sub i64 %13, %12
  %22 = tail call i64 @llvm.umin.i64(i64 %21, i64 2)
  %23 = add nsw i64 %22, %12
  store i64 %23, ptr %11, align 8, !tbaa !47
  %24 = icmp ult i64 %21, 2
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct._BlobInfo, ptr %4, i64 0, i32 4
  store i32 1, ptr %26, align 4, !tbaa !84
  br label %27

27:                                               ; preds = %8, %15, %17, %25
  %28 = phi i64 [ %22, %25 ], [ %22, %17 ], [ 0, %15 ], [ %9, %8 ]
  %29 = phi ptr [ %20, %25 ], [ %20, %17 ], [ %2, %15 ], [ %2, %8 ]
  %30 = icmp eq i64 %28, 2
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = getelementptr inbounds i8, ptr %29, i64 1
  %33 = load i8, ptr %29, align 1, !tbaa !49
  %34 = zext i8 %33 to i16
  %35 = load i8, ptr %32, align 1, !tbaa !49
  %36 = zext i8 %35 to i16
  %37 = shl nuw i16 %36, 8
  %38 = or disjoint i16 %37, %34
  br label %39

39:                                               ; preds = %27, %31
  %40 = phi i16 [ %38, %31 ], [ 0, %27 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #22
  ret i16 %40
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @ReadBlobMSBLong(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
  %2 = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #22
  store i8 0, ptr %2, align 1, !tbaa !49
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct._BlobInfo, ptr %4, i64 0, i32 11
  %6 = load i32, ptr %5, align 8, !tbaa !48
  %7 = icmp eq i32 %6, 7
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = call i64 @ReadBlob(ptr noundef %0, i64 noundef 4, ptr noundef nonnull %2)
  br label %27

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct._BlobInfo, ptr %4, i64 0, i32 5
  %12 = load i64, ptr %11, align 8, !tbaa !47
  %13 = load i64, ptr %4, align 8, !tbaa !44
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct._BlobInfo, ptr %4, i64 0, i32 4
  store i32 1, ptr %16, align 4, !tbaa !84
  br label %27

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct._BlobInfo, ptr %4, i64 0, i32 15
  %19 = load ptr, ptr %18, align 8, !tbaa !50
  %20 = getelementptr inbounds i8, ptr %19, i64 %12
  %21 = sub i64 %13, %12
  %22 = tail call i64 @llvm.umin.i64(i64 %21, i64 4)
  %23 = add nsw i64 %22, %12
  store i64 %23, ptr %11, align 8, !tbaa !47
  %24 = icmp ult i64 %21, 4
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct._BlobInfo, ptr %4, i64 0, i32 4
  store i32 1, ptr %26, align 4, !tbaa !84
  br label %27

27:                                               ; preds = %8, %15, %17, %25
  %28 = phi i64 [ %22, %25 ], [ %22, %17 ], [ 0, %15 ], [ %9, %8 ]
  %29 = phi ptr [ %20, %25 ], [ %20, %17 ], [ %2, %15 ], [ %2, %8 ]
  %30 = icmp eq i64 %28, 4
  br i1 %30, label %31, label %49

31:                                               ; preds = %27
  %32 = getelementptr inbounds i8, ptr %29, i64 1
  %33 = load i8, ptr %29, align 1, !tbaa !49
  %34 = zext i8 %33 to i32
  %35 = shl nuw i32 %34, 24
  %36 = getelementptr inbounds i8, ptr %29, i64 2
  %37 = load i8, ptr %32, align 1, !tbaa !49
  %38 = zext i8 %37 to i32
  %39 = shl nuw nsw i32 %38, 16
  %40 = or disjoint i32 %39, %35
  %41 = getelementptr inbounds i8, ptr %29, i64 3
  %42 = load i8, ptr %36, align 1, !tbaa !49
  %43 = zext i8 %42 to i32
  %44 = shl nuw nsw i32 %43, 8
  %45 = or disjoint i32 %40, %44
  %46 = load i8, ptr %41, align 1, !tbaa !49
  %47 = zext i8 %46 to i32
  %48 = or disjoint i32 %45, %47
  br label %49

49:                                               ; preds = %27, %31
  %50 = phi i32 [ %48, %31 ], [ 0, %27 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #22
  ret i32 %50
}

; Function Attrs: nofree nounwind uwtable
define dso_local i64 @ReadBlobMSBLongLong(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
  %2 = alloca [8 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  store i8 0, ptr %2, align 1, !tbaa !49
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct._BlobInfo, ptr %4, i64 0, i32 11
  %6 = load i32, ptr %5, align 8, !tbaa !48
  %7 = icmp eq i32 %6, 7
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = call i64 @ReadBlob(ptr noundef %0, i64 noundef 8, ptr noundef nonnull %2)
  br label %27

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct._BlobInfo, ptr %4, i64 0, i32 5
  %12 = load i64, ptr %11, align 8, !tbaa !47
  %13 = load i64, ptr %4, align 8, !tbaa !44
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct._BlobInfo, ptr %4, i64 0, i32 4
  store i32 1, ptr %16, align 4, !tbaa !84
  br label %27

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct._BlobInfo, ptr %4, i64 0, i32 15
  %19 = load ptr, ptr %18, align 8, !tbaa !50
  %20 = getelementptr inbounds i8, ptr %19, i64 %12
  %21 = sub i64 %13, %12
  %22 = tail call i64 @llvm.umin.i64(i64 %21, i64 8)
  %23 = add nsw i64 %22, %12
  store i64 %23, ptr %11, align 8, !tbaa !47
  %24 = icmp ult i64 %21, 8
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct._BlobInfo, ptr %4, i64 0, i32 4
  store i32 1, ptr %26, align 4, !tbaa !84
  br label %27

27:                                               ; preds = %8, %15, %17, %25
  %28 = phi i64 [ %22, %25 ], [ %22, %17 ], [ 0, %15 ], [ %9, %8 ]
  %29 = phi ptr [ %20, %25 ], [ %20, %17 ], [ %2, %15 ], [ %2, %8 ]
  %30 = icmp eq i64 %28, 8
  br i1 %30, label %31, label %69

31:                                               ; preds = %27
  %32 = getelementptr inbounds i8, ptr %29, i64 1
  %33 = load i8, ptr %29, align 1, !tbaa !49
  %34 = zext i8 %33 to i64
  %35 = shl nuw i64 %34, 56
  %36 = getelementptr inbounds i8, ptr %29, i64 2
  %37 = load i8, ptr %32, align 1, !tbaa !49
  %38 = zext i8 %37 to i64
  %39 = shl nuw nsw i64 %38, 48
  %40 = or disjoint i64 %39, %35
  %41 = getelementptr inbounds i8, ptr %29, i64 3
  %42 = load i8, ptr %36, align 1, !tbaa !49
  %43 = zext i8 %42 to i64
  %44 = shl nuw nsw i64 %43, 40
  %45 = or disjoint i64 %40, %44
  %46 = getelementptr inbounds i8, ptr %29, i64 4
  %47 = load i8, ptr %41, align 1, !tbaa !49
  %48 = zext i8 %47 to i64
  %49 = shl nuw nsw i64 %48, 32
  %50 = or disjoint i64 %45, %49
  %51 = getelementptr inbounds i8, ptr %29, i64 5
  %52 = load i8, ptr %46, align 1, !tbaa !49
  %53 = zext i8 %52 to i64
  %54 = shl nuw nsw i64 %53, 24
  %55 = or disjoint i64 %50, %54
  %56 = getelementptr inbounds i8, ptr %29, i64 6
  %57 = load i8, ptr %51, align 1, !tbaa !49
  %58 = zext i8 %57 to i64
  %59 = shl nuw nsw i64 %58, 16
  %60 = or disjoint i64 %55, %59
  %61 = getelementptr inbounds i8, ptr %29, i64 7
  %62 = load i8, ptr %56, align 1, !tbaa !49
  %63 = zext i8 %62 to i64
  %64 = shl nuw nsw i64 %63, 8
  %65 = or i64 %60, %64
  %66 = load i8, ptr %61, align 1, !tbaa !49
  %67 = zext i8 %66 to i64
  %68 = or i64 %65, %67
  br label %69

69:                                               ; preds = %27, %31
  %70 = phi i64 [ %68, %31 ], [ 0, %27 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  ret i64 %70
}

; Function Attrs: nofree nounwind uwtable
define dso_local zeroext i16 @ReadBlobMSBShort(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
  %2 = alloca [2 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #22
  store i8 0, ptr %2, align 1, !tbaa !49
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct._BlobInfo, ptr %4, i64 0, i32 11
  %6 = load i32, ptr %5, align 8, !tbaa !48
  %7 = icmp eq i32 %6, 7
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = call i64 @ReadBlob(ptr noundef %0, i64 noundef 2, ptr noundef nonnull %2)
  br label %27

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct._BlobInfo, ptr %4, i64 0, i32 5
  %12 = load i64, ptr %11, align 8, !tbaa !47
  %13 = load i64, ptr %4, align 8, !tbaa !44
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct._BlobInfo, ptr %4, i64 0, i32 4
  store i32 1, ptr %16, align 4, !tbaa !84
  br label %27

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct._BlobInfo, ptr %4, i64 0, i32 15
  %19 = load ptr, ptr %18, align 8, !tbaa !50
  %20 = getelementptr inbounds i8, ptr %19, i64 %12
  %21 = sub i64 %13, %12
  %22 = tail call i64 @llvm.umin.i64(i64 %21, i64 2)
  %23 = add nsw i64 %22, %12
  store i64 %23, ptr %11, align 8, !tbaa !47
  %24 = icmp ult i64 %21, 2
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct._BlobInfo, ptr %4, i64 0, i32 4
  store i32 1, ptr %26, align 4, !tbaa !84
  br label %27

27:                                               ; preds = %8, %15, %17, %25
  %28 = phi i64 [ %22, %25 ], [ %22, %17 ], [ 0, %15 ], [ %9, %8 ]
  %29 = phi ptr [ %20, %25 ], [ %20, %17 ], [ %2, %15 ], [ %2, %8 ]
  %30 = icmp eq i64 %28, 2
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = getelementptr inbounds i8, ptr %29, i64 1
  %33 = load i8, ptr %29, align 1, !tbaa !49
  %34 = zext i8 %33 to i16
  %35 = shl nuw i16 %34, 8
  %36 = load i8, ptr %32, align 1, !tbaa !49
  %37 = zext i8 %36 to i16
  %38 = or disjoint i16 %35, %37
  br label %39

39:                                               ; preds = %27, %31
  %40 = phi i16 [ %38, %31 ], [ 0, %27 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #22
  ret i16 %40
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef ptr @ReadBlobString(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #11 {
  %3 = alloca [1 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #22
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  br label %5

5:                                                ; preds = %2, %34
  %6 = phi i64 [ 0, %2 ], [ %35, %34 ]
  %7 = load ptr, ptr %4, align 8, !tbaa !63
  %8 = getelementptr inbounds %struct._BlobInfo, ptr %7, i64 0, i32 11
  %9 = load i32, ptr %8, align 8, !tbaa !48
  %10 = icmp eq i32 %9, 7
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  %12 = call i64 @ReadBlob(ptr noundef %0, i64 noundef 1, ptr noundef nonnull %3)
  br label %25

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct._BlobInfo, ptr %7, i64 0, i32 5
  %15 = load i64, ptr %14, align 8, !tbaa !47
  %16 = load i64, ptr %7, align 8, !tbaa !44
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct._BlobInfo, ptr %7, i64 0, i32 4
  store i32 1, ptr %19, align 4, !tbaa !84
  br label %25

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct._BlobInfo, ptr %7, i64 0, i32 15
  %22 = load ptr, ptr %21, align 8, !tbaa !50
  %23 = getelementptr inbounds i8, ptr %22, i64 %15
  %24 = add nsw i64 %15, 1
  store i64 %24, ptr %14, align 8, !tbaa !47
  br label %25

25:                                               ; preds = %20, %11, %18
  %26 = phi i64 [ 1, %20 ], [ 0, %18 ], [ %12, %11 ]
  %27 = phi ptr [ %23, %20 ], [ %3, %18 ], [ %3, %11 ]
  %28 = icmp eq i64 %26, 1
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = icmp eq i64 %6, 0
  br i1 %30, label %60, label %37

31:                                               ; preds = %25
  %32 = load i8, ptr %27, align 1, !tbaa !49
  %33 = getelementptr inbounds i8, ptr %1, i64 %6
  store i8 %32, ptr %33, align 1, !tbaa !49
  switch i8 %32, label %34 [
    i8 13, label %37
    i8 10, label %37
  ]

34:                                               ; preds = %31
  %35 = add nuw nsw i64 %6, 1
  %36 = icmp eq i64 %35, 4095
  br i1 %36, label %37, label %5, !llvm.loop !113

37:                                               ; preds = %31, %31, %34, %29
  %38 = phi i64 [ %6, %29 ], [ %6, %31 ], [ %6, %31 ], [ 4095, %34 ]
  %39 = getelementptr inbounds i8, ptr %1, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !49
  %41 = icmp eq i8 %40, 13
  br i1 %41, label %42, label %59

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %44 = load ptr, ptr %43, align 8, !tbaa !63
  %45 = getelementptr inbounds %struct._BlobInfo, ptr %44, i64 0, i32 11
  %46 = load i32, ptr %45, align 8, !tbaa !48
  %47 = icmp eq i32 %46, 7
  br i1 %47, label %50, label %48

48:                                               ; preds = %42
  %49 = call i64 @ReadBlob(ptr noundef %0, i64 noundef 1, ptr noundef nonnull %3)
  br label %59

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct._BlobInfo, ptr %44, i64 0, i32 5
  %52 = load i64, ptr %51, align 8, !tbaa !47
  %53 = load i64, ptr %44, align 8, !tbaa !44
  %54 = icmp slt i64 %52, %53
  br i1 %54, label %57, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct._BlobInfo, ptr %44, i64 0, i32 4
  store i32 1, ptr %56, align 4, !tbaa !84
  br label %59

57:                                               ; preds = %50
  %58 = add nsw i64 %52, 1
  store i64 %58, ptr %51, align 8, !tbaa !47
  br label %59

59:                                               ; preds = %57, %55, %48, %37
  store i8 0, ptr %39, align 1, !tbaa !49
  br label %60

60:                                               ; preds = %29, %59
  %61 = phi ptr [ %1, %59 ], [ null, %29 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #22
  ret ptr %61
}

; Function Attrs: nounwind uwtable
define dso_local i64 @SeekBlob(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !91
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3604, ptr noundef nonnull @.str.3, ptr noundef nonnull %8) #22
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %12 = load ptr, ptr %11, align 8, !tbaa !63
  %13 = getelementptr inbounds %struct._BlobInfo, ptr %12, i64 0, i32 11
  %14 = load i32, ptr %13, align 8, !tbaa !48
  switch i32 %14, label %137 [
    i32 7, label %62
    i32 2, label %141
    i32 1, label %15
    i32 3, label %41
    i32 4, label %41
    i32 5, label %141
    i32 6, label %141
  ]

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct._BlobInfo, ptr %12, i64 0, i32 12
  %17 = load ptr, ptr %16, align 8, !tbaa !49
  %18 = tail call i32 @fseek(ptr noundef %17, i64 noundef %1, i32 noundef %2)
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %141, label %20

20:                                               ; preds = %15
  %21 = load i32, ptr %4, align 8, !tbaa !91
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %25 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3965, ptr noundef nonnull @.str.3, ptr noundef nonnull %24) #22
  br label %26

26:                                               ; preds = %23, %20
  %27 = load ptr, ptr %11, align 8, !tbaa !63
  %28 = getelementptr inbounds %struct._BlobInfo, ptr %27, i64 0, i32 11
  %29 = load i32, ptr %28, align 8, !tbaa !48
  switch i32 %29, label %37 [
    i32 7, label %34
    i32 1, label %30
  ]

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct._BlobInfo, ptr %27, i64 0, i32 12
  %32 = load ptr, ptr %31, align 8, !tbaa !49
  %33 = tail call i64 @ftell(ptr noundef %32)
  br label %37

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct._BlobInfo, ptr %27, i64 0, i32 5
  %36 = load i64, ptr %35, align 8, !tbaa !47
  br label %37

37:                                               ; preds = %26, %30, %34
  %38 = phi i64 [ -1, %26 ], [ %33, %30 ], [ %36, %34 ]
  %39 = load ptr, ptr %11, align 8, !tbaa !63
  %40 = getelementptr inbounds %struct._BlobInfo, ptr %39, i64 0, i32 5
  store i64 %38, ptr %40, align 8, !tbaa !47
  br label %137

41:                                               ; preds = %10, %10
  %42 = load i32, ptr %4, align 8, !tbaa !91
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %46 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3965, ptr noundef nonnull @.str.3, ptr noundef nonnull %45) #22
  br label %47

47:                                               ; preds = %44, %41
  %48 = load ptr, ptr %11, align 8, !tbaa !63
  %49 = getelementptr inbounds %struct._BlobInfo, ptr %48, i64 0, i32 11
  %50 = load i32, ptr %49, align 8, !tbaa !48
  switch i32 %50, label %58 [
    i32 7, label %55
    i32 1, label %51
  ]

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct._BlobInfo, ptr %48, i64 0, i32 12
  %53 = load ptr, ptr %52, align 8, !tbaa !49
  %54 = tail call i64 @ftell(ptr noundef %53)
  br label %58

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct._BlobInfo, ptr %48, i64 0, i32 5
  %57 = load i64, ptr %56, align 8, !tbaa !47
  br label %58

58:                                               ; preds = %47, %51, %55
  %59 = phi i64 [ -1, %47 ], [ %54, %51 ], [ %57, %55 ]
  %60 = load ptr, ptr %11, align 8, !tbaa !63
  %61 = getelementptr inbounds %struct._BlobInfo, ptr %60, i64 0, i32 5
  store i64 %59, ptr %61, align 8, !tbaa !47
  br label %137

62:                                               ; preds = %10
  switch i32 %2, label %63 [
    i32 2, label %73
    i32 1, label %67
  ]

63:                                               ; preds = %62
  %64 = icmp slt i64 %1, 0
  br i1 %64, label %141, label %65

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct._BlobInfo, ptr %12, i64 0, i32 5
  store i64 %1, ptr %66, align 8, !tbaa !47
  br label %79

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct._BlobInfo, ptr %12, i64 0, i32 5
  %69 = load i64, ptr %68, align 8, !tbaa !47
  %70 = add nsw i64 %69, %1
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %141, label %72

72:                                               ; preds = %67
  store i64 %70, ptr %68, align 8, !tbaa !47
  br label %79

73:                                               ; preds = %62
  %74 = load i64, ptr %12, align 8, !tbaa !44
  %75 = add nsw i64 %74, %1
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %141, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct._BlobInfo, ptr %12, i64 0, i32 5
  store i64 %75, ptr %78, align 8, !tbaa !47
  br label %79

79:                                               ; preds = %77, %72, %65
  %80 = getelementptr inbounds %struct._BlobInfo, ptr %12, i64 0, i32 5
  %81 = load i64, ptr %80, align 8, !tbaa !47
  %82 = load i64, ptr %12, align 8, !tbaa !44
  %83 = icmp sgt i64 %81, %82
  br i1 %83, label %86, label %84

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct._BlobInfo, ptr %12, i64 0, i32 4
  store i32 0, ptr %85, align 4, !tbaa !84
  br label %137

86:                                               ; preds = %79
  %87 = getelementptr inbounds %struct._BlobInfo, ptr %12, i64 0, i32 3
  %88 = load i32, ptr %87, align 8, !tbaa !51
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %141

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct._BlobInfo, ptr %12, i64 0, i32 2
  %92 = load i64, ptr %91, align 8, !tbaa !46
  %93 = add i64 %92, %81
  %94 = getelementptr inbounds %struct._BlobInfo, ptr %12, i64 0, i32 1
  store i64 %93, ptr %94, align 8, !tbaa !45
  %95 = shl i64 %92, 1
  store i64 %95, ptr %91, align 8, !tbaa !46
  %96 = getelementptr inbounds %struct._BlobInfo, ptr %12, i64 0, i32 15
  %97 = load ptr, ptr %96, align 8, !tbaa !50
  %98 = add i64 %93, 1
  %99 = tail call ptr @ResizeQuantumMemory(ptr noundef %97, i64 noundef %98, i64 noundef 1) #27
  %100 = load ptr, ptr %11, align 8, !tbaa !63
  %101 = getelementptr inbounds %struct._BlobInfo, ptr %100, i64 0, i32 15
  store ptr %99, ptr %101, align 8, !tbaa !50
  %102 = load i32, ptr %4, align 8, !tbaa !91
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %90
  %105 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %106 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3898, ptr noundef nonnull @.str.3, ptr noundef nonnull %105) #22
  br label %107

107:                                              ; preds = %104, %90
  %108 = load ptr, ptr %11, align 8, !tbaa !63
  %109 = getelementptr inbounds %struct._BlobInfo, ptr %108, i64 0, i32 11
  %110 = load i32, ptr %109, align 8, !tbaa !48
  switch i32 %110, label %115 [
    i32 3, label %111
    i32 1, label %111
  ]

111:                                              ; preds = %107, %107
  %112 = getelementptr inbounds %struct._BlobInfo, ptr %108, i64 0, i32 12
  %113 = load ptr, ptr %112, align 8, !tbaa !49
  %114 = tail call i32 @fflush(ptr noundef %113)
  br label %115

115:                                              ; preds = %107, %111
  %116 = load ptr, ptr %11, align 8, !tbaa !63
  %117 = getelementptr inbounds %struct._BlobInfo, ptr %116, i64 0, i32 15
  %118 = load ptr, ptr %117, align 8, !tbaa !50
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %137

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct._BlobInfo, ptr %116, i64 0, i32 16
  %122 = load i32, ptr %121, align 8, !tbaa !34
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %120
  %125 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 691, ptr noundef nonnull @.str.2) #22
  br label %126

126:                                              ; preds = %124, %120
  %127 = getelementptr inbounds %struct._BlobInfo, ptr %116, i64 0, i32 3
  %128 = load i32, ptr %127, align 8, !tbaa !51
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %126
  store ptr null, ptr %117, align 8, !tbaa !50
  %131 = load i64, ptr %116, align 8, !tbaa !44
  tail call void @RelinquishMagickResource(i32 noundef 4, i64 noundef %131) #22
  br label %132

132:                                              ; preds = %126, %130
  store i64 0, ptr %116, align 8, !tbaa !44
  %133 = getelementptr inbounds %struct._BlobInfo, ptr %116, i64 0, i32 7
  store i32 0, ptr %133, align 8, !tbaa !73
  %134 = getelementptr inbounds %struct._BlobInfo, ptr %116, i64 0, i32 11
  store i32 0, ptr %134, align 8, !tbaa !48
  %135 = getelementptr inbounds %struct._BlobInfo, ptr %116, i64 0, i32 12
  store ptr null, ptr %135, align 8, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %127, i8 0, i64 16, i1 false)
  %136 = getelementptr inbounds %struct._BlobInfo, ptr %116, i64 0, i32 14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %136, i8 0, i64 16, i1 false)
  br label %141

137:                                              ; preds = %84, %115, %10, %58, %37
  %138 = load ptr, ptr %11, align 8, !tbaa !63
  %139 = getelementptr inbounds %struct._BlobInfo, ptr %138, i64 0, i32 5
  %140 = load i64, ptr %139, align 8, !tbaa !47
  br label %141

141:                                              ; preds = %86, %73, %67, %63, %10, %10, %15, %10, %137, %132
  %142 = phi i64 [ %140, %137 ], [ -1, %132 ], [ -1, %10 ], [ -1, %15 ], [ -1, %10 ], [ -1, %10 ], [ -1, %63 ], [ -1, %67 ], [ -1, %73 ], [ -1, %86 ]
  ret i64 %142
}

; Function Attrs: nounwind uwtable
define dso_local i64 @TellBlob(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !91
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3965, ptr noundef nonnull @.str.3, ptr noundef nonnull %6) #22
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %10 = load ptr, ptr %9, align 8, !tbaa !63
  %11 = getelementptr inbounds %struct._BlobInfo, ptr %10, i64 0, i32 11
  %12 = load i32, ptr %11, align 8, !tbaa !48
  switch i32 %12, label %20 [
    i32 7, label %17
    i32 1, label %13
  ]

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct._BlobInfo, ptr %10, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !49
  %16 = tail call i64 @ftell(ptr noundef %15)
  br label %20

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct._BlobInfo, ptr %10, i64 0, i32 5
  %19 = load i64, ptr %18, align 8, !tbaa !47
  br label %20

20:                                               ; preds = %8, %17, %13
  %21 = phi i64 [ -1, %8 ], [ %16, %13 ], [ %19, %17 ]
  ret i64 %21
}

; Function Attrs: nounwind uwtable
define dso_local void @SetBlobExempt(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !91
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3718, ptr noundef nonnull @.str.3, ptr noundef nonnull %7) #22
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %11 = load ptr, ptr %10, align 8, !tbaa !63
  %12 = getelementptr inbounds %struct._BlobInfo, ptr %11, i64 0, i32 7
  store i32 %1, ptr %12, align 8, !tbaa !73
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @SetBlobExtent(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !91
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3754, ptr noundef nonnull @.str.3, ptr noundef nonnull %7) #22
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %11 = load ptr, ptr %10, align 8, !tbaa !63
  %12 = getelementptr inbounds %struct._BlobInfo, ptr %11, i64 0, i32 11
  %13 = load i32, ptr %12, align 8, !tbaa !48
  switch i32 %13, label %112 [
    i32 7, label %28
    i32 2, label %113
    i32 1, label %14
    i32 3, label %113
    i32 4, label %113
    i32 5, label %113
    i32 6, label %113
  ]

14:                                               ; preds = %9
  %15 = tail call i64 @SeekBlob(ptr noundef %0, i64 noundef 0, i32 noundef 2)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %113, label %17

17:                                               ; preds = %14
  %18 = icmp ult i64 %15, %1
  br i1 %18, label %19, label %112

19:                                               ; preds = %17
  %20 = add nsw i64 %1, -1
  %21 = tail call i64 @SeekBlob(ptr noundef %0, i64 noundef %20, i32 noundef 0)
  %22 = load ptr, ptr %10, align 8, !tbaa !63
  %23 = getelementptr inbounds %struct._BlobInfo, ptr %22, i64 0, i32 12
  %24 = load ptr, ptr %23, align 8, !tbaa !49
  %25 = tail call i64 @fwrite(ptr noundef nonnull @.str.1, i64 noundef 1, i64 noundef 1, ptr noundef %24)
  %26 = tail call i64 @SeekBlob(ptr noundef %0, i64 noundef %21, i32 noundef 0)
  %27 = icmp eq i64 %25, 1
  br i1 %27, label %112, label %113

28:                                               ; preds = %9
  %29 = getelementptr inbounds %struct._BlobInfo, ptr %11, i64 0, i32 3
  %30 = load i32, ptr %29, align 8, !tbaa !51
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %69, label %32

32:                                               ; preds = %28
  %33 = load i64, ptr %11, align 8, !tbaa !44
  tail call void @RelinquishMagickResource(i32 noundef 4, i64 noundef %33) #22
  %34 = tail call i64 @SeekBlob(ptr noundef %0, i64 noundef 0, i32 noundef 2)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %113, label %36

36:                                               ; preds = %32
  %37 = icmp ult i64 %34, %1
  br i1 %37, label %38, label %112

38:                                               ; preds = %36
  %39 = add nsw i64 %1, -1
  %40 = tail call i64 @SeekBlob(ptr noundef %0, i64 noundef %39, i32 noundef 0)
  %41 = load ptr, ptr %10, align 8, !tbaa !63
  %42 = getelementptr inbounds %struct._BlobInfo, ptr %41, i64 0, i32 12
  %43 = load ptr, ptr %42, align 8, !tbaa !49
  %44 = tail call i64 @fwrite(ptr noundef nonnull @.str.1, i64 noundef 1, i64 noundef 1, ptr noundef %43)
  %45 = tail call i64 @SeekBlob(ptr noundef %0, i64 noundef %40, i32 noundef 0)
  %46 = icmp eq i64 %44, 1
  br i1 %46, label %47, label %113

47:                                               ; preds = %38
  %48 = tail call i32 @AcquireMagickResource(i32 noundef 4, i64 noundef %1) #22
  %49 = load ptr, ptr %10, align 8, !tbaa !63
  %50 = getelementptr inbounds %struct._BlobInfo, ptr %49, i64 0, i32 12
  %51 = load ptr, ptr %50, align 8, !tbaa !49
  %52 = tail call i32 @fileno(ptr noundef %51) #22
  %53 = load ptr, ptr %10, align 8, !tbaa !63
  %54 = getelementptr inbounds %struct._BlobInfo, ptr %53, i64 0, i32 15
  store ptr null, ptr %54, align 8, !tbaa !50
  %55 = getelementptr inbounds %struct._BlobInfo, ptr %53, i64 0, i32 1
  store i64 %1, ptr %55, align 8, !tbaa !45
  store i64 %1, ptr %53, align 8, !tbaa !44
  %56 = load i32, ptr %3, align 8, !tbaa !91
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %47
  %59 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %60 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3898, ptr noundef nonnull @.str.3, ptr noundef nonnull %59) #22
  br label %61

61:                                               ; preds = %58, %47
  %62 = load ptr, ptr %10, align 8, !tbaa !63
  %63 = getelementptr inbounds %struct._BlobInfo, ptr %62, i64 0, i32 11
  %64 = load i32, ptr %63, align 8, !tbaa !48
  switch i32 %64, label %112 [
    i32 3, label %65
    i32 1, label %65
  ]

65:                                               ; preds = %61, %61
  %66 = getelementptr inbounds %struct._BlobInfo, ptr %62, i64 0, i32 12
  %67 = load ptr, ptr %66, align 8, !tbaa !49
  %68 = tail call i32 @fflush(ptr noundef %67)
  br label %112

69:                                               ; preds = %28
  %70 = getelementptr inbounds %struct._BlobInfo, ptr %11, i64 0, i32 1
  store i64 %1, ptr %70, align 8, !tbaa !45
  %71 = getelementptr inbounds %struct._BlobInfo, ptr %11, i64 0, i32 15
  %72 = load ptr, ptr %71, align 8, !tbaa !50
  %73 = add i64 %1, 1
  %74 = tail call ptr @ResizeQuantumMemory(ptr noundef %72, i64 noundef %73, i64 noundef 1) #27
  %75 = load ptr, ptr %10, align 8, !tbaa !63
  %76 = getelementptr inbounds %struct._BlobInfo, ptr %75, i64 0, i32 15
  store ptr %74, ptr %76, align 8, !tbaa !50
  %77 = load i32, ptr %3, align 8, !tbaa !91
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %69
  %80 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %81 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3898, ptr noundef nonnull @.str.3, ptr noundef nonnull %80) #22
  br label %82

82:                                               ; preds = %79, %69
  %83 = load ptr, ptr %10, align 8, !tbaa !63
  %84 = getelementptr inbounds %struct._BlobInfo, ptr %83, i64 0, i32 11
  %85 = load i32, ptr %84, align 8, !tbaa !48
  switch i32 %85, label %90 [
    i32 3, label %86
    i32 1, label %86
  ]

86:                                               ; preds = %82, %82
  %87 = getelementptr inbounds %struct._BlobInfo, ptr %83, i64 0, i32 12
  %88 = load ptr, ptr %87, align 8, !tbaa !49
  %89 = tail call i32 @fflush(ptr noundef %88)
  br label %90

90:                                               ; preds = %82, %86
  %91 = load ptr, ptr %10, align 8, !tbaa !63
  %92 = getelementptr inbounds %struct._BlobInfo, ptr %91, i64 0, i32 15
  %93 = load ptr, ptr %92, align 8, !tbaa !50
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %112

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct._BlobInfo, ptr %91, i64 0, i32 16
  %97 = load i32, ptr %96, align 8, !tbaa !34
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %95
  %100 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 691, ptr noundef nonnull @.str.2) #22
  br label %101

101:                                              ; preds = %99, %95
  %102 = getelementptr inbounds %struct._BlobInfo, ptr %91, i64 0, i32 3
  %103 = load i32, ptr %102, align 8, !tbaa !51
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %101
  store ptr null, ptr %92, align 8, !tbaa !50
  %106 = load i64, ptr %91, align 8, !tbaa !44
  tail call void @RelinquishMagickResource(i32 noundef 4, i64 noundef %106) #22
  br label %107

107:                                              ; preds = %101, %105
  store i64 0, ptr %91, align 8, !tbaa !44
  %108 = getelementptr inbounds %struct._BlobInfo, ptr %91, i64 0, i32 7
  store i32 0, ptr %108, align 8, !tbaa !73
  %109 = getelementptr inbounds %struct._BlobInfo, ptr %91, i64 0, i32 11
  store i32 0, ptr %109, align 8, !tbaa !48
  %110 = getelementptr inbounds %struct._BlobInfo, ptr %91, i64 0, i32 12
  store ptr null, ptr %110, align 8, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %102, i8 0, i64 16, i1 false)
  %111 = getelementptr inbounds %struct._BlobInfo, ptr %91, i64 0, i32 14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %111, i8 0, i64 16, i1 false)
  br label %113

112:                                              ; preds = %17, %36, %61, %65, %19, %90, %9
  br label %113

113:                                              ; preds = %32, %38, %14, %9, %9, %9, %9, %19, %9, %112, %107
  %114 = phi i32 [ 1, %112 ], [ 0, %19 ], [ 0, %107 ], [ 0, %9 ], [ 0, %9 ], [ 0, %9 ], [ 0, %9 ], [ 0, %9 ], [ 0, %14 ], [ 0, %38 ], [ 0, %32 ]
  ret i32 %114
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i64 @WriteBlob(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %118, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %7 = load ptr, ptr %6, align 8, !tbaa !63
  %8 = getelementptr inbounds %struct._BlobInfo, ptr %7, i64 0, i32 11
  %9 = load i32, ptr %8, align 8, !tbaa !48
  switch i32 %9, label %118 [
    i32 7, label %45
    i32 2, label %10
    i32 1, label %15
    i32 3, label %15
    i32 6, label %41
  ]

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct._BlobInfo, ptr %7, i64 0, i32 12
  %12 = load ptr, ptr %11, align 8, !tbaa !49
  %13 = tail call i32 @fileno(ptr noundef %12) #22
  %14 = tail call i64 @write(i32 noundef %13, ptr noundef %2, i64 noundef %1) #22
  br label %118

15:                                               ; preds = %5, %5
  switch i64 %1, label %16 [
    i64 2, label %20
    i64 1, label %29
  ]

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct._BlobInfo, ptr %7, i64 0, i32 12
  %18 = load ptr, ptr %17, align 8, !tbaa !49
  %19 = tail call i64 @fwrite(ptr noundef %2, i64 noundef 1, i64 noundef %1, ptr noundef %18)
  br label %118

20:                                               ; preds = %15
  %21 = load i8, ptr %2, align 1, !tbaa !49
  %22 = zext i8 %21 to i32
  %23 = getelementptr inbounds %struct._BlobInfo, ptr %7, i64 0, i32 12
  %24 = load ptr, ptr %23, align 8, !tbaa !49
  %25 = tail call i32 @putc(i32 noundef %22, ptr noundef %24)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %118, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds i8, ptr %2, i64 1
  br label %29

29:                                               ; preds = %15, %27
  %30 = phi ptr [ %2, %15 ], [ %28, %27 ]
  %31 = phi i64 [ 0, %15 ], [ 1, %27 ]
  %32 = load i8, ptr %30, align 1, !tbaa !49
  %33 = zext i8 %32 to i32
  %34 = load ptr, ptr %6, align 8, !tbaa !63
  %35 = getelementptr inbounds %struct._BlobInfo, ptr %34, i64 0, i32 12
  %36 = load ptr, ptr %35, align 8, !tbaa !49
  %37 = tail call i32 @putc(i32 noundef %33, ptr noundef %36)
  %38 = icmp ne i32 %37, -1
  %39 = zext i1 %38 to i64
  %40 = add nuw nsw i64 %31, %39
  br label %118

41:                                               ; preds = %5
  %42 = getelementptr inbounds %struct._BlobInfo, ptr %7, i64 0, i32 14
  %43 = load ptr, ptr %42, align 8, !tbaa !90
  %44 = tail call i64 %43(ptr noundef %0, ptr noundef %2, i64 noundef %1) #22
  br label %118

45:                                               ; preds = %5
  %46 = getelementptr inbounds %struct._BlobInfo, ptr %7, i64 0, i32 5
  %47 = load i64, ptr %46, align 8, !tbaa !47
  %48 = add nsw i64 %47, %1
  %49 = getelementptr inbounds %struct._BlobInfo, ptr %7, i64 0, i32 1
  %50 = load i64, ptr %49, align 8, !tbaa !45
  %51 = icmp slt i64 %48, %50
  br i1 %51, label %104, label %52

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct._BlobInfo, ptr %7, i64 0, i32 3
  %54 = load i32, ptr %53, align 8, !tbaa !51
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %118

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct._BlobInfo, ptr %7, i64 0, i32 2
  %58 = load i64, ptr %57, align 8, !tbaa !46
  %59 = add i64 %50, %1
  %60 = add i64 %59, %58
  store i64 %60, ptr %49, align 8, !tbaa !45
  %61 = shl i64 %58, 1
  store i64 %61, ptr %57, align 8, !tbaa !46
  %62 = getelementptr inbounds %struct._BlobInfo, ptr %7, i64 0, i32 15
  %63 = load ptr, ptr %62, align 8, !tbaa !50
  %64 = add i64 %60, 1
  %65 = tail call ptr @ResizeQuantumMemory(ptr noundef %63, i64 noundef %64, i64 noundef 1) #27
  %66 = load ptr, ptr %6, align 8, !tbaa !63
  %67 = getelementptr inbounds %struct._BlobInfo, ptr %66, i64 0, i32 15
  store ptr %65, ptr %67, align 8, !tbaa !50
  %68 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %69 = load i32, ptr %68, align 8, !tbaa !91
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %56
  %72 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %73 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3898, ptr noundef nonnull @.str.3, ptr noundef nonnull %72) #22
  br label %74

74:                                               ; preds = %71, %56
  %75 = load ptr, ptr %6, align 8, !tbaa !63
  %76 = getelementptr inbounds %struct._BlobInfo, ptr %75, i64 0, i32 11
  %77 = load i32, ptr %76, align 8, !tbaa !48
  switch i32 %77, label %82 [
    i32 3, label %78
    i32 1, label %78
  ]

78:                                               ; preds = %74, %74
  %79 = getelementptr inbounds %struct._BlobInfo, ptr %75, i64 0, i32 12
  %80 = load ptr, ptr %79, align 8, !tbaa !49
  %81 = tail call i32 @fflush(ptr noundef %80)
  br label %82

82:                                               ; preds = %74, %78
  %83 = load ptr, ptr %6, align 8, !tbaa !63
  %84 = getelementptr inbounds %struct._BlobInfo, ptr %83, i64 0, i32 15
  %85 = load ptr, ptr %84, align 8, !tbaa !50
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %104

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct._BlobInfo, ptr %83, i64 0, i32 16
  %89 = load i32, ptr %88, align 8, !tbaa !34
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %87
  %92 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 691, ptr noundef nonnull @.str.2) #22
  br label %93

93:                                               ; preds = %91, %87
  %94 = getelementptr inbounds %struct._BlobInfo, ptr %83, i64 0, i32 3
  %95 = load i32, ptr %94, align 8, !tbaa !51
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %93
  store ptr null, ptr %84, align 8, !tbaa !50
  %98 = load i64, ptr %83, align 8, !tbaa !44
  tail call void @RelinquishMagickResource(i32 noundef 4, i64 noundef %98) #22
  br label %99

99:                                               ; preds = %93, %97
  store i64 0, ptr %83, align 8, !tbaa !44
  %100 = getelementptr inbounds %struct._BlobInfo, ptr %83, i64 0, i32 7
  store i32 0, ptr %100, align 8, !tbaa !73
  %101 = getelementptr inbounds %struct._BlobInfo, ptr %83, i64 0, i32 11
  store i32 0, ptr %101, align 8, !tbaa !48
  %102 = getelementptr inbounds %struct._BlobInfo, ptr %83, i64 0, i32 12
  store ptr null, ptr %102, align 8, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %94, i8 0, i64 16, i1 false)
  %103 = getelementptr inbounds %struct._BlobInfo, ptr %83, i64 0, i32 14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %103, i8 0, i64 16, i1 false)
  br label %118

104:                                              ; preds = %82, %45
  %105 = load ptr, ptr %6, align 8, !tbaa !63
  %106 = getelementptr inbounds %struct._BlobInfo, ptr %105, i64 0, i32 15
  %107 = load ptr, ptr %106, align 8, !tbaa !50
  %108 = getelementptr inbounds %struct._BlobInfo, ptr %105, i64 0, i32 5
  %109 = load i64, ptr %108, align 8, !tbaa !47
  %110 = getelementptr inbounds i8, ptr %107, i64 %109
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %110, ptr align 1 %2, i64 %1, i1 false)
  %111 = load ptr, ptr %6, align 8, !tbaa !63
  %112 = getelementptr inbounds %struct._BlobInfo, ptr %111, i64 0, i32 5
  %113 = load i64, ptr %112, align 8, !tbaa !47
  %114 = add i64 %113, %1
  store i64 %114, ptr %112, align 8, !tbaa !47
  %115 = load i64, ptr %111, align 8, !tbaa !44
  %116 = icmp slt i64 %114, %115
  br i1 %116, label %118, label %117

117:                                              ; preds = %104
  store i64 %114, ptr %111, align 8, !tbaa !44
  br label %118

118:                                              ; preds = %99, %52, %117, %104, %29, %10, %41, %5, %20, %16, %3
  %119 = phi i64 [ 0, %3 ], [ 0, %5 ], [ %44, %41 ], [ %19, %16 ], [ 0, %20 ], [ %14, %10 ], [ %40, %29 ], [ 0, %99 ], [ 0, %52 ], [ %1, %117 ], [ %1, %104 ]
  ret i64 %119
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i64 @WriteBlobByte(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca i8, align 1
  store i8 %1, ptr %3, align 1, !tbaa !49
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %5 = load ptr, ptr %4, align 8, !tbaa !63
  %6 = getelementptr inbounds %struct._BlobInfo, ptr %5, i64 0, i32 11
  %7 = load i32, ptr %6, align 8, !tbaa !48
  %8 = icmp eq i32 %7, 7
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = call i64 @WriteBlob(ptr noundef %0, i64 noundef 1, ptr noundef nonnull %3)
  br label %41

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct._BlobInfo, ptr %5, i64 0, i32 5
  %13 = load i64, ptr %12, align 8, !tbaa !47
  %14 = add nsw i64 %13, 1
  %15 = getelementptr inbounds %struct._BlobInfo, ptr %5, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !45
  %17 = icmp ult i64 %14, %16
  br i1 %17, label %26, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct._BlobInfo, ptr %5, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !46
  %21 = add i64 %16, 1
  %22 = add i64 %21, %20
  %23 = shl i64 %20, 1
  store i64 %23, ptr %19, align 8, !tbaa !46
  %24 = tail call i32 @SetBlobExtent(ptr noundef %0, i64 noundef %22), !range !74
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %41, label %26

26:                                               ; preds = %18, %11
  %27 = load ptr, ptr %4, align 8, !tbaa !63
  %28 = getelementptr inbounds %struct._BlobInfo, ptr %27, i64 0, i32 15
  %29 = load ptr, ptr %28, align 8, !tbaa !50
  %30 = getelementptr inbounds %struct._BlobInfo, ptr %27, i64 0, i32 5
  %31 = load i64, ptr %30, align 8, !tbaa !47
  %32 = getelementptr inbounds i8, ptr %29, i64 %31
  %33 = load i8, ptr %3, align 1
  store i8 %33, ptr %32, align 1
  %34 = load ptr, ptr %4, align 8, !tbaa !63
  %35 = getelementptr inbounds %struct._BlobInfo, ptr %34, i64 0, i32 5
  %36 = load i64, ptr %35, align 8, !tbaa !47
  %37 = add i64 %36, 1
  store i64 %37, ptr %35, align 8, !tbaa !47
  %38 = load i64, ptr %34, align 8, !tbaa !44
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %41, label %40

40:                                               ; preds = %26
  store i64 %37, ptr %34, align 8, !tbaa !44
  br label %41

41:                                               ; preds = %9, %18, %26, %40
  %42 = phi i64 [ %10, %9 ], [ 0, %18 ], [ 1, %40 ], [ 1, %26 ]
  ret i64 %42
}

; Function Attrs: nounwind uwtable
define dso_local i64 @WriteBlobFloat(ptr noundef %0, float noundef %1) local_unnamed_addr #0 {
  %3 = bitcast float %1 to i32
  %4 = tail call i64 @WriteBlobLong(ptr noundef %0, i32 noundef %3)
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define dso_local i64 @WriteBlobLong(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 34
  %5 = load i32, ptr %4, align 8, !tbaa !112
  %6 = icmp eq i32 %5, 1
  %7 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 3
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  br i1 %6, label %9, label %55

9:                                                ; preds = %2
  %10 = trunc i32 %1 to i8
  store i8 %10, ptr %3, align 4, !tbaa !49
  %11 = lshr i32 %1, 8
  %12 = trunc i32 %11 to i8
  %13 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 1
  store i8 %12, ptr %13, align 1, !tbaa !49
  %14 = lshr i32 %1, 16
  %15 = trunc i32 %14 to i8
  %16 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 2
  store i8 %15, ptr %16, align 2, !tbaa !49
  %17 = lshr i32 %1, 24
  %18 = trunc i32 %17 to i8
  store i8 %18, ptr %7, align 1, !tbaa !49
  %19 = load ptr, ptr %8, align 8, !tbaa !63
  %20 = getelementptr inbounds %struct._BlobInfo, ptr %19, i64 0, i32 11
  %21 = load i32, ptr %20, align 8, !tbaa !48
  %22 = icmp eq i32 %21, 7
  br i1 %22, label %25, label %23

23:                                               ; preds = %9
  %24 = call i64 @WriteBlob(ptr noundef %0, i64 noundef 4, ptr noundef nonnull %3)
  br label %101

25:                                               ; preds = %9
  %26 = getelementptr inbounds %struct._BlobInfo, ptr %19, i64 0, i32 5
  %27 = load i64, ptr %26, align 8, !tbaa !47
  %28 = add nsw i64 %27, 4
  %29 = getelementptr inbounds %struct._BlobInfo, ptr %19, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !45
  %31 = icmp ult i64 %28, %30
  br i1 %31, label %40, label %32

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct._BlobInfo, ptr %19, i64 0, i32 2
  %34 = load i64, ptr %33, align 8, !tbaa !46
  %35 = add i64 %30, 4
  %36 = add i64 %35, %34
  %37 = shl i64 %34, 1
  store i64 %37, ptr %33, align 8, !tbaa !46
  %38 = tail call i32 @SetBlobExtent(ptr noundef %0, i64 noundef %36), !range !74
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %101, label %40

40:                                               ; preds = %32, %25
  %41 = load ptr, ptr %8, align 8, !tbaa !63
  %42 = getelementptr inbounds %struct._BlobInfo, ptr %41, i64 0, i32 15
  %43 = load ptr, ptr %42, align 8, !tbaa !50
  %44 = getelementptr inbounds %struct._BlobInfo, ptr %41, i64 0, i32 5
  %45 = load i64, ptr %44, align 8, !tbaa !47
  %46 = getelementptr inbounds i8, ptr %43, i64 %45
  %47 = load i32, ptr %3, align 4
  store i32 %47, ptr %46, align 1
  %48 = load ptr, ptr %8, align 8, !tbaa !63
  %49 = getelementptr inbounds %struct._BlobInfo, ptr %48, i64 0, i32 5
  %50 = load i64, ptr %49, align 8, !tbaa !47
  %51 = add i64 %50, 4
  store i64 %51, ptr %49, align 8, !tbaa !47
  %52 = load i64, ptr %48, align 8, !tbaa !44
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %101, label %54

54:                                               ; preds = %40
  store i64 %51, ptr %48, align 8, !tbaa !44
  br label %101

55:                                               ; preds = %2
  %56 = lshr i32 %1, 24
  %57 = trunc i32 %56 to i8
  store i8 %57, ptr %3, align 4, !tbaa !49
  %58 = lshr i32 %1, 16
  %59 = trunc i32 %58 to i8
  %60 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 1
  store i8 %59, ptr %60, align 1, !tbaa !49
  %61 = lshr i32 %1, 8
  %62 = trunc i32 %61 to i8
  %63 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 2
  store i8 %62, ptr %63, align 2, !tbaa !49
  %64 = trunc i32 %1 to i8
  store i8 %64, ptr %7, align 1, !tbaa !49
  %65 = load ptr, ptr %8, align 8, !tbaa !63
  %66 = getelementptr inbounds %struct._BlobInfo, ptr %65, i64 0, i32 11
  %67 = load i32, ptr %66, align 8, !tbaa !48
  %68 = icmp eq i32 %67, 7
  br i1 %68, label %71, label %69

69:                                               ; preds = %55
  %70 = call i64 @WriteBlob(ptr noundef %0, i64 noundef 4, ptr noundef nonnull %3)
  br label %101

71:                                               ; preds = %55
  %72 = getelementptr inbounds %struct._BlobInfo, ptr %65, i64 0, i32 5
  %73 = load i64, ptr %72, align 8, !tbaa !47
  %74 = add nsw i64 %73, 4
  %75 = getelementptr inbounds %struct._BlobInfo, ptr %65, i64 0, i32 1
  %76 = load i64, ptr %75, align 8, !tbaa !45
  %77 = icmp ult i64 %74, %76
  br i1 %77, label %86, label %78

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct._BlobInfo, ptr %65, i64 0, i32 2
  %80 = load i64, ptr %79, align 8, !tbaa !46
  %81 = add i64 %76, 4
  %82 = add i64 %81, %80
  %83 = shl i64 %80, 1
  store i64 %83, ptr %79, align 8, !tbaa !46
  %84 = tail call i32 @SetBlobExtent(ptr noundef %0, i64 noundef %82), !range !74
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %101, label %86

86:                                               ; preds = %78, %71
  %87 = load ptr, ptr %8, align 8, !tbaa !63
  %88 = getelementptr inbounds %struct._BlobInfo, ptr %87, i64 0, i32 15
  %89 = load ptr, ptr %88, align 8, !tbaa !50
  %90 = getelementptr inbounds %struct._BlobInfo, ptr %87, i64 0, i32 5
  %91 = load i64, ptr %90, align 8, !tbaa !47
  %92 = getelementptr inbounds i8, ptr %89, i64 %91
  %93 = load i32, ptr %3, align 4
  store i32 %93, ptr %92, align 1
  %94 = load ptr, ptr %8, align 8, !tbaa !63
  %95 = getelementptr inbounds %struct._BlobInfo, ptr %94, i64 0, i32 5
  %96 = load i64, ptr %95, align 8, !tbaa !47
  %97 = add i64 %96, 4
  store i64 %97, ptr %95, align 8, !tbaa !47
  %98 = load i64, ptr %94, align 8, !tbaa !44
  %99 = icmp slt i64 %97, %98
  br i1 %99, label %101, label %100

100:                                              ; preds = %86
  store i64 %97, ptr %94, align 8, !tbaa !44
  br label %101

101:                                              ; preds = %100, %86, %78, %69, %54, %40, %32, %23
  %102 = phi i64 [ %24, %23 ], [ 0, %32 ], [ 4, %54 ], [ 4, %40 ], [ %70, %69 ], [ 0, %78 ], [ 4, %100 ], [ 4, %86 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  ret i64 %102
}

; Function Attrs: nounwind uwtable
define dso_local i64 @WriteBlobShort(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca [2 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #22
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 34
  %5 = load i32, ptr %4, align 8, !tbaa !112
  %6 = icmp eq i32 %5, 1
  %7 = getelementptr inbounds [2 x i8], ptr %3, i64 0, i64 1
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  br i1 %6, label %9, label %49

9:                                                ; preds = %2
  %10 = trunc i16 %1 to i8
  store i8 %10, ptr %3, align 2, !tbaa !49
  %11 = lshr i16 %1, 8
  %12 = trunc i16 %11 to i8
  store i8 %12, ptr %7, align 1, !tbaa !49
  %13 = load ptr, ptr %8, align 8, !tbaa !63
  %14 = getelementptr inbounds %struct._BlobInfo, ptr %13, i64 0, i32 11
  %15 = load i32, ptr %14, align 8, !tbaa !48
  %16 = icmp eq i32 %15, 7
  br i1 %16, label %19, label %17

17:                                               ; preds = %9
  %18 = call i64 @WriteBlob(ptr noundef %0, i64 noundef 2, ptr noundef nonnull %3)
  br label %89

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct._BlobInfo, ptr %13, i64 0, i32 5
  %21 = load i64, ptr %20, align 8, !tbaa !47
  %22 = add nsw i64 %21, 2
  %23 = getelementptr inbounds %struct._BlobInfo, ptr %13, i64 0, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !45
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %34, label %26

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct._BlobInfo, ptr %13, i64 0, i32 2
  %28 = load i64, ptr %27, align 8, !tbaa !46
  %29 = add i64 %24, 2
  %30 = add i64 %29, %28
  %31 = shl i64 %28, 1
  store i64 %31, ptr %27, align 8, !tbaa !46
  %32 = tail call i32 @SetBlobExtent(ptr noundef %0, i64 noundef %30), !range !74
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %89, label %34

34:                                               ; preds = %26, %19
  %35 = load ptr, ptr %8, align 8, !tbaa !63
  %36 = getelementptr inbounds %struct._BlobInfo, ptr %35, i64 0, i32 15
  %37 = load ptr, ptr %36, align 8, !tbaa !50
  %38 = getelementptr inbounds %struct._BlobInfo, ptr %35, i64 0, i32 5
  %39 = load i64, ptr %38, align 8, !tbaa !47
  %40 = getelementptr inbounds i8, ptr %37, i64 %39
  %41 = load i16, ptr %3, align 2
  store i16 %41, ptr %40, align 1
  %42 = load ptr, ptr %8, align 8, !tbaa !63
  %43 = getelementptr inbounds %struct._BlobInfo, ptr %42, i64 0, i32 5
  %44 = load i64, ptr %43, align 8, !tbaa !47
  %45 = add i64 %44, 2
  store i64 %45, ptr %43, align 8, !tbaa !47
  %46 = load i64, ptr %42, align 8, !tbaa !44
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %89, label %48

48:                                               ; preds = %34
  store i64 %45, ptr %42, align 8, !tbaa !44
  br label %89

49:                                               ; preds = %2
  %50 = lshr i16 %1, 8
  %51 = trunc i16 %50 to i8
  store i8 %51, ptr %3, align 2, !tbaa !49
  %52 = trunc i16 %1 to i8
  store i8 %52, ptr %7, align 1, !tbaa !49
  %53 = load ptr, ptr %8, align 8, !tbaa !63
  %54 = getelementptr inbounds %struct._BlobInfo, ptr %53, i64 0, i32 11
  %55 = load i32, ptr %54, align 8, !tbaa !48
  %56 = icmp eq i32 %55, 7
  br i1 %56, label %59, label %57

57:                                               ; preds = %49
  %58 = call i64 @WriteBlob(ptr noundef %0, i64 noundef 2, ptr noundef nonnull %3)
  br label %89

59:                                               ; preds = %49
  %60 = getelementptr inbounds %struct._BlobInfo, ptr %53, i64 0, i32 5
  %61 = load i64, ptr %60, align 8, !tbaa !47
  %62 = add nsw i64 %61, 2
  %63 = getelementptr inbounds %struct._BlobInfo, ptr %53, i64 0, i32 1
  %64 = load i64, ptr %63, align 8, !tbaa !45
  %65 = icmp ult i64 %62, %64
  br i1 %65, label %74, label %66

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct._BlobInfo, ptr %53, i64 0, i32 2
  %68 = load i64, ptr %67, align 8, !tbaa !46
  %69 = add i64 %64, 2
  %70 = add i64 %69, %68
  %71 = shl i64 %68, 1
  store i64 %71, ptr %67, align 8, !tbaa !46
  %72 = tail call i32 @SetBlobExtent(ptr noundef %0, i64 noundef %70), !range !74
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %89, label %74

74:                                               ; preds = %66, %59
  %75 = load ptr, ptr %8, align 8, !tbaa !63
  %76 = getelementptr inbounds %struct._BlobInfo, ptr %75, i64 0, i32 15
  %77 = load ptr, ptr %76, align 8, !tbaa !50
  %78 = getelementptr inbounds %struct._BlobInfo, ptr %75, i64 0, i32 5
  %79 = load i64, ptr %78, align 8, !tbaa !47
  %80 = getelementptr inbounds i8, ptr %77, i64 %79
  %81 = load i16, ptr %3, align 2
  store i16 %81, ptr %80, align 1
  %82 = load ptr, ptr %8, align 8, !tbaa !63
  %83 = getelementptr inbounds %struct._BlobInfo, ptr %82, i64 0, i32 5
  %84 = load i64, ptr %83, align 8, !tbaa !47
  %85 = add i64 %84, 2
  store i64 %85, ptr %83, align 8, !tbaa !47
  %86 = load i64, ptr %82, align 8, !tbaa !44
  %87 = icmp slt i64 %85, %86
  br i1 %87, label %89, label %88

88:                                               ; preds = %74
  store i64 %85, ptr %82, align 8, !tbaa !44
  br label %89

89:                                               ; preds = %88, %74, %66, %57, %48, %34, %26, %17
  %90 = phi i64 [ %18, %17 ], [ 0, %26 ], [ 2, %48 ], [ 2, %34 ], [ %58, %57 ], [ 0, %66 ], [ 2, %88 ], [ 2, %74 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #22
  ret i64 %90
}

; Function Attrs: nounwind uwtable
define dso_local i64 @WriteBlobLSBLong(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  %4 = trunc i32 %1 to i8
  store i8 %4, ptr %3, align 4, !tbaa !49
  %5 = lshr i32 %1, 8
  %6 = trunc i32 %5 to i8
  %7 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 1
  store i8 %6, ptr %7, align 1, !tbaa !49
  %8 = lshr i32 %1, 16
  %9 = trunc i32 %8 to i8
  %10 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 2
  store i8 %9, ptr %10, align 2, !tbaa !49
  %11 = lshr i32 %1, 24
  %12 = trunc i32 %11 to i8
  %13 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 3
  store i8 %12, ptr %13, align 1, !tbaa !49
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %15 = load ptr, ptr %14, align 8, !tbaa !63
  %16 = getelementptr inbounds %struct._BlobInfo, ptr %15, i64 0, i32 11
  %17 = load i32, ptr %16, align 8, !tbaa !48
  %18 = icmp eq i32 %17, 7
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = call i64 @WriteBlob(ptr noundef %0, i64 noundef 4, ptr noundef nonnull %3)
  br label %51

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct._BlobInfo, ptr %15, i64 0, i32 5
  %23 = load i64, ptr %22, align 8, !tbaa !47
  %24 = add nsw i64 %23, 4
  %25 = getelementptr inbounds %struct._BlobInfo, ptr %15, i64 0, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !45
  %27 = icmp ult i64 %24, %26
  br i1 %27, label %36, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct._BlobInfo, ptr %15, i64 0, i32 2
  %30 = load i64, ptr %29, align 8, !tbaa !46
  %31 = add i64 %26, 4
  %32 = add i64 %31, %30
  %33 = shl i64 %30, 1
  store i64 %33, ptr %29, align 8, !tbaa !46
  %34 = tail call i32 @SetBlobExtent(ptr noundef %0, i64 noundef %32), !range !74
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %51, label %36

36:                                               ; preds = %28, %21
  %37 = load ptr, ptr %14, align 8, !tbaa !63
  %38 = getelementptr inbounds %struct._BlobInfo, ptr %37, i64 0, i32 15
  %39 = load ptr, ptr %38, align 8, !tbaa !50
  %40 = getelementptr inbounds %struct._BlobInfo, ptr %37, i64 0, i32 5
  %41 = load i64, ptr %40, align 8, !tbaa !47
  %42 = getelementptr inbounds i8, ptr %39, i64 %41
  %43 = load i32, ptr %3, align 4
  store i32 %43, ptr %42, align 1
  %44 = load ptr, ptr %14, align 8, !tbaa !63
  %45 = getelementptr inbounds %struct._BlobInfo, ptr %44, i64 0, i32 5
  %46 = load i64, ptr %45, align 8, !tbaa !47
  %47 = add i64 %46, 4
  store i64 %47, ptr %45, align 8, !tbaa !47
  %48 = load i64, ptr %44, align 8, !tbaa !44
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %51, label %50

50:                                               ; preds = %36
  store i64 %47, ptr %44, align 8, !tbaa !44
  br label %51

51:                                               ; preds = %19, %28, %36, %50
  %52 = phi i64 [ %20, %19 ], [ 0, %28 ], [ 4, %50 ], [ 4, %36 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  ret i64 %52
}

; Function Attrs: nounwind uwtable
define dso_local i64 @WriteBlobLSBShort(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca [2 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #22
  %4 = trunc i16 %1 to i8
  store i8 %4, ptr %3, align 2, !tbaa !49
  %5 = lshr i16 %1, 8
  %6 = trunc i16 %5 to i8
  %7 = getelementptr inbounds [2 x i8], ptr %3, i64 0, i64 1
  store i8 %6, ptr %7, align 1, !tbaa !49
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %9 = load ptr, ptr %8, align 8, !tbaa !63
  %10 = getelementptr inbounds %struct._BlobInfo, ptr %9, i64 0, i32 11
  %11 = load i32, ptr %10, align 8, !tbaa !48
  %12 = icmp eq i32 %11, 7
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = call i64 @WriteBlob(ptr noundef %0, i64 noundef 2, ptr noundef nonnull %3)
  br label %45

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct._BlobInfo, ptr %9, i64 0, i32 5
  %17 = load i64, ptr %16, align 8, !tbaa !47
  %18 = add nsw i64 %17, 2
  %19 = getelementptr inbounds %struct._BlobInfo, ptr %9, i64 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !45
  %21 = icmp ult i64 %18, %20
  br i1 %21, label %30, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct._BlobInfo, ptr %9, i64 0, i32 2
  %24 = load i64, ptr %23, align 8, !tbaa !46
  %25 = add i64 %20, 2
  %26 = add i64 %25, %24
  %27 = shl i64 %24, 1
  store i64 %27, ptr %23, align 8, !tbaa !46
  %28 = tail call i32 @SetBlobExtent(ptr noundef %0, i64 noundef %26), !range !74
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %45, label %30

30:                                               ; preds = %22, %15
  %31 = load ptr, ptr %8, align 8, !tbaa !63
  %32 = getelementptr inbounds %struct._BlobInfo, ptr %31, i64 0, i32 15
  %33 = load ptr, ptr %32, align 8, !tbaa !50
  %34 = getelementptr inbounds %struct._BlobInfo, ptr %31, i64 0, i32 5
  %35 = load i64, ptr %34, align 8, !tbaa !47
  %36 = getelementptr inbounds i8, ptr %33, i64 %35
  %37 = load i16, ptr %3, align 2
  store i16 %37, ptr %36, align 1
  %38 = load ptr, ptr %8, align 8, !tbaa !63
  %39 = getelementptr inbounds %struct._BlobInfo, ptr %38, i64 0, i32 5
  %40 = load i64, ptr %39, align 8, !tbaa !47
  %41 = add i64 %40, 2
  store i64 %41, ptr %39, align 8, !tbaa !47
  %42 = load i64, ptr %38, align 8, !tbaa !44
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %45, label %44

44:                                               ; preds = %30
  store i64 %41, ptr %38, align 8, !tbaa !44
  br label %45

45:                                               ; preds = %13, %22, %30, %44
  %46 = phi i64 [ %14, %13 ], [ 0, %22 ], [ 2, %44 ], [ 2, %30 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #22
  ret i64 %46
}

; Function Attrs: nounwind uwtable
define dso_local i64 @WriteBlobMSBLong(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  %4 = lshr i32 %1, 24
  %5 = trunc i32 %4 to i8
  store i8 %5, ptr %3, align 4, !tbaa !49
  %6 = lshr i32 %1, 16
  %7 = trunc i32 %6 to i8
  %8 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 1
  store i8 %7, ptr %8, align 1, !tbaa !49
  %9 = lshr i32 %1, 8
  %10 = trunc i32 %9 to i8
  %11 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 2
  store i8 %10, ptr %11, align 2, !tbaa !49
  %12 = trunc i32 %1 to i8
  %13 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 3
  store i8 %12, ptr %13, align 1, !tbaa !49
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %15 = load ptr, ptr %14, align 8, !tbaa !63
  %16 = getelementptr inbounds %struct._BlobInfo, ptr %15, i64 0, i32 11
  %17 = load i32, ptr %16, align 8, !tbaa !48
  %18 = icmp eq i32 %17, 7
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = call i64 @WriteBlob(ptr noundef %0, i64 noundef 4, ptr noundef nonnull %3)
  br label %51

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct._BlobInfo, ptr %15, i64 0, i32 5
  %23 = load i64, ptr %22, align 8, !tbaa !47
  %24 = add nsw i64 %23, 4
  %25 = getelementptr inbounds %struct._BlobInfo, ptr %15, i64 0, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !45
  %27 = icmp ult i64 %24, %26
  br i1 %27, label %36, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct._BlobInfo, ptr %15, i64 0, i32 2
  %30 = load i64, ptr %29, align 8, !tbaa !46
  %31 = add i64 %26, 4
  %32 = add i64 %31, %30
  %33 = shl i64 %30, 1
  store i64 %33, ptr %29, align 8, !tbaa !46
  %34 = tail call i32 @SetBlobExtent(ptr noundef %0, i64 noundef %32), !range !74
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %51, label %36

36:                                               ; preds = %28, %21
  %37 = load ptr, ptr %14, align 8, !tbaa !63
  %38 = getelementptr inbounds %struct._BlobInfo, ptr %37, i64 0, i32 15
  %39 = load ptr, ptr %38, align 8, !tbaa !50
  %40 = getelementptr inbounds %struct._BlobInfo, ptr %37, i64 0, i32 5
  %41 = load i64, ptr %40, align 8, !tbaa !47
  %42 = getelementptr inbounds i8, ptr %39, i64 %41
  %43 = load i32, ptr %3, align 4
  store i32 %43, ptr %42, align 1
  %44 = load ptr, ptr %14, align 8, !tbaa !63
  %45 = getelementptr inbounds %struct._BlobInfo, ptr %44, i64 0, i32 5
  %46 = load i64, ptr %45, align 8, !tbaa !47
  %47 = add i64 %46, 4
  store i64 %47, ptr %45, align 8, !tbaa !47
  %48 = load i64, ptr %44, align 8, !tbaa !44
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %51, label %50

50:                                               ; preds = %36
  store i64 %47, ptr %44, align 8, !tbaa !44
  br label %51

51:                                               ; preds = %19, %28, %36, %50
  %52 = phi i64 [ %20, %19 ], [ 0, %28 ], [ 4, %50 ], [ 4, %36 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  ret i64 %52
}

; Function Attrs: nounwind uwtable
define dso_local i64 @WriteBlobMSBLongLong(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  %4 = lshr i64 %1, 56
  %5 = trunc i64 %4 to i8
  store i8 %5, ptr %3, align 8, !tbaa !49
  %6 = lshr i64 %1, 48
  %7 = trunc i64 %6 to i8
  %8 = getelementptr inbounds [8 x i8], ptr %3, i64 0, i64 1
  store i8 %7, ptr %8, align 1, !tbaa !49
  %9 = lshr i64 %1, 40
  %10 = trunc i64 %9 to i8
  %11 = getelementptr inbounds [8 x i8], ptr %3, i64 0, i64 2
  store i8 %10, ptr %11, align 2, !tbaa !49
  %12 = lshr i64 %1, 32
  %13 = trunc i64 %12 to i8
  %14 = getelementptr inbounds [8 x i8], ptr %3, i64 0, i64 3
  store i8 %13, ptr %14, align 1, !tbaa !49
  %15 = lshr i64 %1, 24
  %16 = trunc i64 %15 to i8
  %17 = getelementptr inbounds [8 x i8], ptr %3, i64 0, i64 4
  store i8 %16, ptr %17, align 4, !tbaa !49
  %18 = lshr i64 %1, 16
  %19 = trunc i64 %18 to i8
  %20 = getelementptr inbounds [8 x i8], ptr %3, i64 0, i64 5
  store i8 %19, ptr %20, align 1, !tbaa !49
  %21 = lshr i64 %1, 8
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds [8 x i8], ptr %3, i64 0, i64 6
  store i8 %22, ptr %23, align 2, !tbaa !49
  %24 = trunc i64 %1 to i8
  %25 = getelementptr inbounds [8 x i8], ptr %3, i64 0, i64 7
  store i8 %24, ptr %25, align 1, !tbaa !49
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %27 = load ptr, ptr %26, align 8, !tbaa !63
  %28 = getelementptr inbounds %struct._BlobInfo, ptr %27, i64 0, i32 11
  %29 = load i32, ptr %28, align 8, !tbaa !48
  %30 = icmp eq i32 %29, 7
  br i1 %30, label %33, label %31

31:                                               ; preds = %2
  %32 = call i64 @WriteBlob(ptr noundef %0, i64 noundef 8, ptr noundef nonnull %3)
  br label %63

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct._BlobInfo, ptr %27, i64 0, i32 5
  %35 = load i64, ptr %34, align 8, !tbaa !47
  %36 = add nsw i64 %35, 8
  %37 = getelementptr inbounds %struct._BlobInfo, ptr %27, i64 0, i32 1
  %38 = load i64, ptr %37, align 8, !tbaa !45
  %39 = icmp ult i64 %36, %38
  br i1 %39, label %48, label %40

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct._BlobInfo, ptr %27, i64 0, i32 2
  %42 = load i64, ptr %41, align 8, !tbaa !46
  %43 = add i64 %38, 8
  %44 = add i64 %43, %42
  %45 = shl i64 %42, 1
  store i64 %45, ptr %41, align 8, !tbaa !46
  %46 = tail call i32 @SetBlobExtent(ptr noundef %0, i64 noundef %44), !range !74
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %63, label %48

48:                                               ; preds = %40, %33
  %49 = load ptr, ptr %26, align 8, !tbaa !63
  %50 = getelementptr inbounds %struct._BlobInfo, ptr %49, i64 0, i32 15
  %51 = load ptr, ptr %50, align 8, !tbaa !50
  %52 = getelementptr inbounds %struct._BlobInfo, ptr %49, i64 0, i32 5
  %53 = load i64, ptr %52, align 8, !tbaa !47
  %54 = getelementptr inbounds i8, ptr %51, i64 %53
  %55 = load i64, ptr %3, align 8
  store i64 %55, ptr %54, align 1
  %56 = load ptr, ptr %26, align 8, !tbaa !63
  %57 = getelementptr inbounds %struct._BlobInfo, ptr %56, i64 0, i32 5
  %58 = load i64, ptr %57, align 8, !tbaa !47
  %59 = add i64 %58, 8
  store i64 %59, ptr %57, align 8, !tbaa !47
  %60 = load i64, ptr %56, align 8, !tbaa !44
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %63, label %62

62:                                               ; preds = %48
  store i64 %59, ptr %56, align 8, !tbaa !44
  br label %63

63:                                               ; preds = %31, %40, %48, %62
  %64 = phi i64 [ %32, %31 ], [ 0, %40 ], [ 8, %62 ], [ 8, %48 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret i64 %64
}

; Function Attrs: nounwind uwtable
define dso_local i64 @WriteBlobMSBShort(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca [2 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #22
  %4 = lshr i16 %1, 8
  %5 = trunc i16 %4 to i8
  store i8 %5, ptr %3, align 2, !tbaa !49
  %6 = trunc i16 %1 to i8
  %7 = getelementptr inbounds [2 x i8], ptr %3, i64 0, i64 1
  store i8 %6, ptr %7, align 1, !tbaa !49
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %9 = load ptr, ptr %8, align 8, !tbaa !63
  %10 = getelementptr inbounds %struct._BlobInfo, ptr %9, i64 0, i32 11
  %11 = load i32, ptr %10, align 8, !tbaa !48
  %12 = icmp eq i32 %11, 7
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = call i64 @WriteBlob(ptr noundef %0, i64 noundef 2, ptr noundef nonnull %3)
  br label %45

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct._BlobInfo, ptr %9, i64 0, i32 5
  %17 = load i64, ptr %16, align 8, !tbaa !47
  %18 = add nsw i64 %17, 2
  %19 = getelementptr inbounds %struct._BlobInfo, ptr %9, i64 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !45
  %21 = icmp ult i64 %18, %20
  br i1 %21, label %30, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct._BlobInfo, ptr %9, i64 0, i32 2
  %24 = load i64, ptr %23, align 8, !tbaa !46
  %25 = add i64 %20, 2
  %26 = add i64 %25, %24
  %27 = shl i64 %24, 1
  store i64 %27, ptr %23, align 8, !tbaa !46
  %28 = tail call i32 @SetBlobExtent(ptr noundef %0, i64 noundef %26), !range !74
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %45, label %30

30:                                               ; preds = %22, %15
  %31 = load ptr, ptr %8, align 8, !tbaa !63
  %32 = getelementptr inbounds %struct._BlobInfo, ptr %31, i64 0, i32 15
  %33 = load ptr, ptr %32, align 8, !tbaa !50
  %34 = getelementptr inbounds %struct._BlobInfo, ptr %31, i64 0, i32 5
  %35 = load i64, ptr %34, align 8, !tbaa !47
  %36 = getelementptr inbounds i8, ptr %33, i64 %35
  %37 = load i16, ptr %3, align 2
  store i16 %37, ptr %36, align 1
  %38 = load ptr, ptr %8, align 8, !tbaa !63
  %39 = getelementptr inbounds %struct._BlobInfo, ptr %38, i64 0, i32 5
  %40 = load i64, ptr %39, align 8, !tbaa !47
  %41 = add i64 %40, 2
  store i64 %41, ptr %39, align 8, !tbaa !47
  %42 = load i64, ptr %38, align 8, !tbaa !44
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %45, label %44

44:                                               ; preds = %30
  store i64 %41, ptr %38, align 8, !tbaa !44
  br label %45

45:                                               ; preds = %13, %22, %30, %44
  %46 = phi i64 [ %14, %13 ], [ 0, %22 ], [ 2, %44 ], [ 2, %30 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #22
  ret i64 %46
}

; Function Attrs: nounwind uwtable
define dso_local i64 @WriteBlobString(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %5 = load ptr, ptr %4, align 8, !tbaa !63
  %6 = getelementptr inbounds %struct._BlobInfo, ptr %5, i64 0, i32 11
  %7 = load i32, ptr %6, align 8, !tbaa !48
  %8 = icmp eq i32 %7, 7
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = tail call i64 @WriteBlob(ptr noundef %0, i64 noundef %3, ptr noundef %1)
  br label %40

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct._BlobInfo, ptr %5, i64 0, i32 5
  %13 = load i64, ptr %12, align 8, !tbaa !47
  %14 = add nsw i64 %13, %3
  %15 = getelementptr inbounds %struct._BlobInfo, ptr %5, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !45
  %17 = icmp ult i64 %14, %16
  br i1 %17, label %26, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct._BlobInfo, ptr %5, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !46
  %21 = add i64 %16, %3
  %22 = add i64 %21, %20
  %23 = shl i64 %20, 1
  store i64 %23, ptr %19, align 8, !tbaa !46
  %24 = tail call i32 @SetBlobExtent(ptr noundef %0, i64 noundef %22), !range !74
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %40, label %26

26:                                               ; preds = %18, %11
  %27 = load ptr, ptr %4, align 8, !tbaa !63
  %28 = getelementptr inbounds %struct._BlobInfo, ptr %27, i64 0, i32 15
  %29 = load ptr, ptr %28, align 8, !tbaa !50
  %30 = getelementptr inbounds %struct._BlobInfo, ptr %27, i64 0, i32 5
  %31 = load i64, ptr %30, align 8, !tbaa !47
  %32 = getelementptr inbounds i8, ptr %29, i64 %31
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %32, ptr align 1 %1, i64 %3, i1 false)
  %33 = load ptr, ptr %4, align 8, !tbaa !63
  %34 = getelementptr inbounds %struct._BlobInfo, ptr %33, i64 0, i32 5
  %35 = load i64, ptr %34, align 8, !tbaa !47
  %36 = add i64 %35, %3
  store i64 %36, ptr %34, align 8, !tbaa !47
  %37 = load i64, ptr %33, align 8, !tbaa !44
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %40, label %39

39:                                               ; preds = %26
  store i64 %36, ptr %33, align 8, !tbaa !44
  br label %40

40:                                               ; preds = %9, %18, %26, %39
  %41 = phi i64 [ %10, %9 ], [ 0, %18 ], [ %3, %39 ], [ %3, %26 ]
  ret i64 %41
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nofree
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #21

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { allocsize(1,2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #22 = { nounwind }
attributes #23 = { nounwind willreturn memory(none) }
attributes #24 = { nounwind allocsize(0) }
attributes #25 = { noreturn nounwind }
attributes #26 = { nounwind allocsize(0,1) }
attributes #27 = { nounwind allocsize(1,2) }
attributes #28 = { nounwind willreturn memory(read) }

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
!34 = !{!35, !39, i64 240}
!35 = !{!"_BlobInfo", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !39, i64 28, !40, i64 32, !40, i64 40, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !37, i64 72, !41, i64 80, !43, i64 224, !43, i64 232, !39, i64 240, !43, i64 248, !36, i64 256, !36, i64 264}
!36 = !{!"long", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"long long", !37, i64 0}
!41 = !{!"stat", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !42, i64 72, !42, i64 88, !42, i64 104, !37, i64 120}
!42 = !{!"timespec", !36, i64 0, !36, i64 8}
!43 = !{!"any pointer", !37, i64 0}
!44 = !{!35, !36, i64 0}
!45 = !{!35, !36, i64 8}
!46 = !{!35, !36, i64 16}
!47 = !{!35, !40, i64 32}
!48 = !{!35, !39, i64 64}
!49 = !{!37, !37, i64 0}
!50 = !{!35, !43, i64 232}
!51 = !{!35, !39, i64 24}
!52 = !{!39, !39, i64 0}
!53 = distinct !{!53, !54, !55}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!"llvm.loop.unroll.disable"}
!56 = !{!57, !39, i64 16712}
!57 = !{!"_ImageInfo", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !39, i64 80, !39, i64 84, !39, i64 88, !36, i64 96, !43, i64 104, !43, i64 112, !43, i64 120, !43, i64 128, !43, i64 136, !58, i64 144, !58, i64 152, !59, i64 160, !59, i64 168, !59, i64 176, !39, i64 184, !39, i64 188, !36, i64 192, !39, i64 200, !39, i64 204, !39, i64 208, !36, i64 216, !39, i64 224, !39, i64 228, !43, i64 232, !43, i64 240, !39, i64 248, !43, i64 256, !43, i64 264, !43, i64 272, !43, i64 280, !43, i64 288, !43, i64 296, !43, i64 304, !43, i64 312, !36, i64 320, !37, i64 328, !37, i64 4424, !37, i64 8520, !37, i64 12616, !39, i64 16712, !43, i64 16720, !36, i64 16728, !36, i64 16736, !59, i64 16744, !36, i64 16752, !39, i64 16760, !59, i64 16764, !43, i64 16776, !39, i64 16784}
!58 = !{!"double", !37, i64 0}
!59 = !{!"_PixelPacket", !60, i64 0, !60, i64 2, !60, i64 4, !60, i64 6}
!60 = !{!"short", !37, i64 0}
!61 = !{!57, !43, i64 312}
!62 = !{!57, !36, i64 320}
!63 = !{!64, !43, i64 608}
!64 = !{!"_Image", !39, i64 0, !39, i64 4, !39, i64 8, !36, i64 16, !39, i64 24, !39, i64 28, !39, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !43, i64 72, !59, i64 80, !59, i64 88, !59, i64 96, !58, i64 104, !65, i64 112, !39, i64 208, !43, i64 216, !39, i64 224, !43, i64 232, !43, i64 240, !43, i64 248, !36, i64 256, !58, i64 264, !58, i64 272, !67, i64 280, !67, i64 312, !67, i64 344, !58, i64 376, !58, i64 384, !58, i64 392, !39, i64 400, !39, i64 404, !39, i64 408, !39, i64 412, !39, i64 416, !39, i64 420, !43, i64 424, !36, i64 432, !36, i64 440, !36, i64 448, !36, i64 456, !36, i64 464, !36, i64 472, !68, i64 480, !69, i64 504, !43, i64 568, !43, i64 576, !43, i64 584, !43, i64 592, !43, i64 600, !43, i64 608, !37, i64 616, !37, i64 4712, !37, i64 8808, !36, i64 12904, !36, i64 12912, !71, i64 12920, !39, i64 12976, !36, i64 12984, !43, i64 12992, !72, i64 13000, !72, i64 13032, !43, i64 13064, !36, i64 13072, !36, i64 13080, !43, i64 13088, !43, i64 13096, !43, i64 13104, !39, i64 13112, !39, i64 13116, !59, i64 13120, !43, i64 13128, !67, i64 13136, !43, i64 13168, !43, i64 13176, !39, i64 13184, !39, i64 13188, !40, i64 13192, !39, i64 13200, !36, i64 13208, !36, i64 13216, !39, i64 13224, !36, i64 13232}
!65 = !{!"_ChromaticityInfo", !66, i64 0, !66, i64 24, !66, i64 48, !66, i64 72}
!66 = !{!"_PrimaryInfo", !58, i64 0, !58, i64 8, !58, i64 16}
!67 = !{!"_RectangleInfo", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!68 = !{!"_ErrorInfo", !58, i64 0, !58, i64 8, !58, i64 16}
!69 = !{!"_TimerInfo", !70, i64 0, !70, i64 24, !39, i64 48, !36, i64 56}
!70 = !{!"_Timer", !58, i64 0, !58, i64 8, !58, i64 16}
!71 = !{!"_ExceptionInfo", !39, i64 0, !39, i64 4, !43, i64 8, !43, i64 16, !43, i64 24, !39, i64 32, !43, i64 40, !36, i64 48}
!72 = !{!"_ProfileInfo", !43, i64 0, !36, i64 8, !43, i64 16, !36, i64 24}
!73 = !{!35, !39, i64 48}
!74 = !{i32 0, i32 2}
!75 = !{!76, !43, i64 0}
!76 = !{!"_MagickInfo", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !43, i64 72, !39, i64 80, !39, i64 84, !39, i64 88, !39, i64 92, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !43, i64 112, !43, i64 120, !36, i64 128, !43, i64 136, !43, i64 144}
!77 = distinct !{!77, !54, !55}
!78 = !{!35, !36, i64 168}
!79 = !{!35, !36, i64 184}
!80 = !{!35, !36, i64 256}
!81 = !{!35, !43, i64 248}
!82 = !{!35, !36, i64 264}
!83 = !{!35, !39, i64 52}
!84 = !{!35, !39, i64 28}
!85 = !{!35, !40, i64 40}
!86 = !{!35, !39, i64 56}
!87 = !{!35, !39, i64 60}
!88 = !{i64 0, i64 8, !89, i64 8, i64 8, !89, i64 16, i64 8, !89, i64 24, i64 4, !52, i64 28, i64 4, !52, i64 32, i64 4, !52, i64 36, i64 4, !52, i64 40, i64 8, !89, i64 48, i64 8, !89, i64 56, i64 8, !89, i64 64, i64 8, !89, i64 72, i64 8, !89, i64 80, i64 8, !89, i64 88, i64 8, !89, i64 96, i64 8, !89, i64 104, i64 8, !89, i64 112, i64 8, !89, i64 120, i64 24, !49}
!89 = !{!36, !36, i64 0}
!90 = !{!35, !43, i64 224}
!91 = !{!64, !39, i64 12976}
!92 = !{!64, !40, i64 13192}
!93 = distinct !{!93, !54, !55}
!94 = !{!43, !43, i64 0}
!95 = distinct !{!95, !54, !55}
!96 = distinct !{!96, !54, !55}
!97 = distinct !{!97, !55}
!98 = !{!57, !39, i64 12}
!99 = !{!57, !43, i64 304}
!100 = distinct !{!100, !54, !55}
!101 = distinct !{!101, !54, !55}
!102 = distinct !{!102, !55}
!103 = distinct !{!103, !54, !55}
!104 = distinct !{!104, !54, !55}
!105 = !{!57, !43, i64 296}
!106 = !{!57, !39, i64 16784}
!107 = !{!35, !39, i64 104}
!108 = !{!64, !36, i64 432}
!109 = !{!35, !36, i64 128}
!110 = !{!57, !39, i64 224}
!111 = distinct !{!111, !54, !55}
!112 = !{!64, !39, i64 408}
!113 = distinct !{!113, !54, !55}
