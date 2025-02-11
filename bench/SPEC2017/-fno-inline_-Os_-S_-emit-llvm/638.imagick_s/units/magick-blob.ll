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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @AttachBlob(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 16
  %5 = load i32, ptr %4, align 8, !tbaa !6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 197, ptr noundef nonnull @.str.2) #23
  br label %9

9:                                                ; preds = %7, %3
  store i64 %2, ptr %0, align 8, !tbaa !16
  %10 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 1
  store i64 %2, ptr %10, align 8, !tbaa !17
  %11 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 2
  store i64 65541, ptr %11, align 8, !tbaa !18
  %12 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 5
  store i64 0, ptr %12, align 8, !tbaa !19
  %13 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 11
  store i32 7, ptr %13, align 8, !tbaa !20
  %14 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 12
  store ptr null, ptr %14, align 8, !tbaa !21
  %15 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 15
  store ptr %1, ptr %15, align 8, !tbaa !22
  %16 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 3
  store i32 0, ptr %16, align 8, !tbaa !23
  ret void
}

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @BlobToFile(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 260, ptr noundef nonnull @.str.3, ptr noundef %0) #23
  %6 = load i8, ptr %0, align 1, !tbaa !21
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = tail call i32 @AcquireUniqueFileResource(ptr noundef nonnull %0) #23
  br label %12

10:                                               ; preds = %4
  %11 = tail call fastcc i32 @open_utf8(ptr noundef nonnull %0, i32 noundef 194, i32 noundef 384) #24
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = icmp eq i64 %2, 0
  br i1 %16, label %39, label %22

17:                                               ; preds = %12
  %18 = tail call ptr @__errno_location() #25
  %19 = load i32, ptr %18, align 4, !tbaa !24
  %20 = tail call ptr @GetExceptionMessage(i32 noundef %19) #23
  %21 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 268, i32 noundef 435, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull %0, ptr noundef %20) #23
  br label %49

22:                                               ; preds = %15, %35
  %23 = phi i64 [ %37, %35 ], [ 0, %15 ]
  %24 = getelementptr inbounds i8, ptr %1, i64 %23
  %25 = sub i64 %2, %23
  %26 = tail call fastcc i64 @MagickMin(i64 noundef %25, i64 noundef 9223372036854775807) #24
  %27 = tail call i64 @write(i32 noundef %13, ptr noundef %24, i64 noundef %26) #23
  %28 = icmp slt i64 %27, 1
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = tail call ptr @__errno_location() #25
  %31 = load i32, ptr %30, align 4, !tbaa !24
  %32 = icmp eq i32 %31, 4
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = tail call i32 @close(i32 noundef %13) #23
  br label %44

35:                                               ; preds = %22, %29
  %36 = phi i64 [ 0, %29 ], [ %27, %22 ]
  %37 = add i64 %36, %23
  %38 = icmp ult i64 %37, %2
  br i1 %38, label %22, label %39, !llvm.loop !25

39:                                               ; preds = %35, %15
  %40 = tail call i32 @close(i32 noundef %13) #23
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = tail call ptr @__errno_location() #25
  br label %44

44:                                               ; preds = %42, %33
  %45 = phi ptr [ %43, %42 ], [ %30, %33 ]
  %46 = load i32, ptr %45, align 4, !tbaa !24
  %47 = tail call ptr @GetExceptionMessage(i32 noundef %46) #23
  %48 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 285, i32 noundef 435, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull %0, ptr noundef %47) #23
  br label %49

49:                                               ; preds = %17, %44
  %50 = phi ptr [ %47, %44 ], [ %20, %17 ]
  %51 = tail call ptr @DestroyString(ptr noundef %50) #23
  br label %52

52:                                               ; preds = %49, %39
  %53 = phi i32 [ 1, %39 ], [ 0, %49 ]
  ret i32 %53
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare i32 @AcquireUniqueFileResource(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc noundef i32 @open_utf8(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #3 {
  %4 = tail call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef %1, i32 noundef %2) #23
  ret i32 %4
}

; Function Attrs: optsize
declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DestroyString(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree optsize
declare noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @MagickMin(i64 noundef %0, i64 noundef %1) unnamed_addr #6 {
  %3 = tail call i64 @llvm.umin.i64(i64 %0, i64 %1)
  ret i64 %3
}

; Function Attrs: optsize
declare i32 @close(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree optsize
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BlobToImage(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 52
  %6 = load i32, ptr %5, align 8, !tbaa !27
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 341, ptr noundef nonnull @.str.3, ptr noundef nonnull %9) #23
  br label %11

11:                                               ; preds = %8, %4
  %12 = icmp eq ptr %1, null
  %13 = icmp eq i64 %2, 0
  %14 = or i1 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 346, i32 noundef 435, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull %16) #23
  br label %82

18:                                               ; preds = %11
  %19 = tail call ptr @CloneImageInfo(ptr noundef nonnull %0) #23
  %20 = getelementptr inbounds %struct._ImageInfo, ptr %19, i64 0, i32 46
  store ptr %1, ptr %20, align 8, !tbaa !32
  %21 = getelementptr inbounds %struct._ImageInfo, ptr %19, i64 0, i32 47
  store i64 %2, ptr %21, align 8, !tbaa !33
  %22 = getelementptr inbounds %struct._ImageInfo, ptr %19, i64 0, i32 48
  %23 = load i8, ptr %22, align 8, !tbaa !21
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = tail call i32 @SetImageInfo(ptr noundef nonnull %19, i32 noundef 0, ptr noundef %3) #23
  br label %27

27:                                               ; preds = %25, %18
  %28 = tail call ptr @GetMagickInfo(ptr noundef nonnull %22, ptr noundef %3) #23
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 358, i32 noundef 420, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, ptr noundef nonnull %22) #23
  %32 = tail call ptr @DestroyImageInfo(ptr noundef nonnull %19) #23
  br label %82

33:                                               ; preds = %27
  %34 = tail call i32 @GetMagickBlobSupport(ptr noundef nonnull %28) #23
  %35 = icmp eq i32 %34, 0
  %36 = getelementptr inbounds %struct._ImageInfo, ptr %19, i64 0, i32 51
  br i1 %35, label %50, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %39 = tail call i64 @CopyMagickString(ptr noundef nonnull %36, ptr noundef nonnull %38, i64 noundef 4096) #23
  %40 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 48
  %41 = tail call i64 @CopyMagickString(ptr noundef nonnull %22, ptr noundef nonnull %40, i64 noundef 4096) #23
  %42 = tail call ptr @ReadImage(ptr noundef nonnull %19, ptr noundef %3) #23
  %43 = icmp eq ptr %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct._Image, ptr %42, i64 0, i32 52
  %46 = load ptr, ptr %45, align 8, !tbaa !34
  %47 = tail call ptr @DetachBlob(ptr noundef %46) #24
  br label %48

48:                                               ; preds = %44, %37
  %49 = tail call ptr @DestroyImageInfo(ptr noundef nonnull %19) #23
  br label %82

50:                                               ; preds = %33
  store i8 0, ptr %36, align 8, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, i8 0, i64 16, i1 false)
  %51 = tail call i32 @BlobToFile(ptr noundef nonnull %36, ptr noundef nonnull %1, i64 noundef %2, ptr noundef %3) #24, !range !44
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = tail call i32 @RelinquishUniqueFileResource(ptr noundef nonnull %36) #23
  %55 = tail call ptr @DestroyImageInfo(ptr noundef nonnull %19) #23
  br label %82

56:                                               ; preds = %50
  %57 = tail call ptr @CloneImageInfo(ptr noundef nonnull %19) #23
  %58 = getelementptr inbounds %struct._ImageInfo, ptr %57, i64 0, i32 51
  %59 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %58, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef nonnull %22, ptr noundef nonnull %36) #23
  %60 = tail call ptr @ReadImage(ptr noundef %57, ptr noundef %3) #23
  %61 = icmp eq ptr %60, null
  br i1 %61, label %78, label %62

62:                                               ; preds = %56
  %63 = tail call ptr @GetFirstImageInList(ptr noundef nonnull %60) #23
  %64 = icmp eq ptr %63, null
  br i1 %64, label %78, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  br label %67

67:                                               ; preds = %65, %67
  %68 = phi ptr [ %63, %65 ], [ %76, %67 ]
  %69 = getelementptr inbounds %struct._Image, ptr %68, i64 0, i32 53
  %70 = tail call i64 @CopyMagickString(ptr noundef nonnull %69, ptr noundef nonnull %66, i64 noundef 4096) #23
  %71 = getelementptr inbounds %struct._Image, ptr %68, i64 0, i32 54
  %72 = tail call i64 @CopyMagickString(ptr noundef nonnull %71, ptr noundef nonnull %66, i64 noundef 4096) #23
  %73 = getelementptr inbounds %struct._Image, ptr %68, i64 0, i32 55
  %74 = load ptr, ptr %28, align 8, !tbaa !45
  %75 = tail call i64 @CopyMagickString(ptr noundef nonnull %73, ptr noundef %74, i64 noundef 4096) #23
  %76 = tail call ptr @GetNextImageInList(ptr noundef nonnull %68) #23
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %67, !llvm.loop !47

78:                                               ; preds = %67, %62, %56
  %79 = tail call ptr @DestroyImageInfo(ptr noundef %57) #23
  %80 = tail call i32 @RelinquishUniqueFileResource(ptr noundef nonnull %36) #23
  %81 = tail call ptr @DestroyImageInfo(ptr noundef %19) #23
  br label %82

82:                                               ; preds = %78, %53, %48, %30, %15
  %83 = phi ptr [ null, %15 ], [ null, %30 ], [ %42, %48 ], [ null, %53 ], [ %60, %78 ]
  ret ptr %83
}

; Function Attrs: optsize
declare ptr @CloneImageInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @SetImageInfo(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetMagickInfo(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DestroyImageInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @GetMagickBlobSupport(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @ReadImage(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DetachBlob(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 16
  %3 = load i32, ptr %2, align 8, !tbaa !6
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 691, ptr noundef nonnull @.str.2) #23
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !23
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 15
  %13 = load i64, ptr %0, align 8, !tbaa !16
  store ptr null, ptr %12, align 8, !tbaa !22
  tail call void @RelinquishMagickResource(i32 noundef 4, i64 noundef %13) #23
  br label %14

14:                                               ; preds = %11, %7
  store i64 0, ptr %0, align 8, !tbaa !16
  %15 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 7
  store i32 0, ptr %15, align 8, !tbaa !48
  %16 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 11
  store i32 0, ptr %16, align 8, !tbaa !20
  %17 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 12
  store ptr null, ptr %17, align 8, !tbaa !21
  %18 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %19 = load ptr, ptr %18, align 8, !tbaa !22
  %20 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, i8 0, i64 16, i1 false)
  ret ptr %19
}

; Function Attrs: optsize
declare i32 @RelinquishUniqueFileResource(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetFirstImageInList(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetNextImageInList(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @CloneBlobInfo(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = tail call dereferenceable_or_null(272) ptr @AcquireMagickMemory(i64 noundef 272) #26
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #27
  call void @GetExceptionInfo(ptr noundef nonnull %2) #23
  %6 = tail call ptr @__errno_location() #25
  %7 = load i32, ptr %6, align 4, !tbaa !24
  %8 = call ptr @GetExceptionMessage(i32 noundef %7) #23
  %9 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 451, i32 noundef 700, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.7, ptr noundef %8) #23
  %10 = call ptr @DestroyString(ptr noundef %8) #23
  call void @CatchException(ptr noundef nonnull %2) #23
  %11 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #23
  call void @MagickCoreTerminus() #23
  call void @_exit(i32 noundef 1) #28
  unreachable

12:                                               ; preds = %1
  tail call void @GetBlobInfo(ptr noundef nonnull %3) #24
  %13 = icmp eq ptr %0, null
  br i1 %13, label %48, label %14

14:                                               ; preds = %12
  %15 = load <2 x i64>, ptr %0, align 8, !tbaa !49
  store <2 x i64> %15, ptr %3, align 8, !tbaa !49
  %16 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 8
  %17 = load i32, ptr %16, align 4, !tbaa !50
  %18 = getelementptr inbounds %struct._BlobInfo, ptr %3, i64 0, i32 8
  store i32 %17, ptr %18, align 4, !tbaa !50
  %19 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !18
  %21 = getelementptr inbounds %struct._BlobInfo, ptr %3, i64 0, i32 2
  store i64 %20, ptr %21, align 8, !tbaa !18
  %22 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 3
  %23 = getelementptr inbounds %struct._BlobInfo, ptr %3, i64 0, i32 3
  %24 = load <2 x i32>, ptr %22, align 8, !tbaa !24
  store <2 x i32> %24, ptr %23, align 8, !tbaa !24
  %25 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 5
  %26 = getelementptr inbounds %struct._BlobInfo, ptr %3, i64 0, i32 5
  %27 = load <2 x i64>, ptr %25, align 8, !tbaa !51
  store <2 x i64> %27, ptr %26, align 8, !tbaa !51
  %28 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 7
  %29 = load i32, ptr %28, align 8, !tbaa !48
  %30 = getelementptr inbounds %struct._BlobInfo, ptr %3, i64 0, i32 7
  store i32 %29, ptr %30, align 8, !tbaa !48
  %31 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 9
  %32 = getelementptr inbounds %struct._BlobInfo, ptr %3, i64 0, i32 9
  %33 = load <2 x i32>, ptr %31, align 8, !tbaa !24
  store <2 x i32> %33, ptr %32, align 8, !tbaa !24
  %34 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 11
  %35 = load i32, ptr %34, align 8, !tbaa !20
  %36 = getelementptr inbounds %struct._BlobInfo, ptr %3, i64 0, i32 11
  store i32 %35, ptr %36, align 8, !tbaa !20
  %37 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 12
  %38 = load ptr, ptr %37, align 8, !tbaa !21
  %39 = getelementptr inbounds %struct._BlobInfo, ptr %3, i64 0, i32 12
  store ptr %38, ptr %39, align 8, !tbaa !21
  %40 = getelementptr inbounds %struct._BlobInfo, ptr %3, i64 0, i32 13
  %41 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %40, ptr noundef nonnull align 8 dereferenceable(144) %41, i64 144, i1 false), !tbaa.struct !52
  %42 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 14
  %43 = getelementptr inbounds %struct._BlobInfo, ptr %3, i64 0, i32 14
  %44 = load <2 x ptr>, ptr %42, align 8, !tbaa !53
  store <2 x ptr> %44, ptr %43, align 8, !tbaa !53
  %45 = tail call i32 @IsEventLogging() #23
  %46 = getelementptr inbounds %struct._BlobInfo, ptr %3, i64 0, i32 16
  store i32 %45, ptr %46, align 8, !tbaa !6
  %47 = getelementptr inbounds %struct._BlobInfo, ptr %3, i64 0, i32 18
  store i64 1, ptr %47, align 8, !tbaa !54
  br label %48

48:                                               ; preds = %12, %14
  ret ptr %3
}

; Function Attrs: optsize allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @CatchException(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @MagickCoreTerminus() local_unnamed_addr #1

; Function Attrs: noreturn optsize
declare void @_exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GetBlobInfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @ResetMagickMemory(ptr noundef %0, i32 noundef 0, i64 noundef 272) #23
  %3 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 11
  store i32 0, ptr %3, align 8, !tbaa !20
  %4 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 2
  store i64 65541, ptr %4, align 8, !tbaa !18
  %5 = tail call i64 @time(ptr noundef null) #23
  %6 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 13, i32 12
  store i64 %5, ptr %6, align 8, !tbaa !55
  %7 = tail call i64 @time(ptr noundef null) #23
  %8 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 13, i32 13
  store i64 %7, ptr %8, align 8, !tbaa !56
  %9 = tail call i32 @IsEventLogging() #23
  %10 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 16
  store i32 %9, ptr %10, align 8, !tbaa !6
  %11 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 18
  store i64 1, ptr %11, align 8, !tbaa !54
  %12 = tail call ptr @AllocateSemaphoreInfo() #23
  %13 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 17
  store ptr %12, ptr %13, align 8, !tbaa !57
  %14 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 19
  store i64 2880220587, ptr %14, align 8, !tbaa !58
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: optsize
declare i32 @IsEventLogging() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @CloseBlob(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !59
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 509, ptr noundef nonnull @.str.3, ptr noundef nonnull %6) #23
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct._BlobInfo, ptr %10, i64 0, i32 11
  %12 = load i32, ptr %11, align 8, !tbaa !20
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %82, label %14

14:                                               ; preds = %8
  %15 = tail call fastcc i32 @SyncBlob(ptr noundef nonnull %0) #24
  %16 = load ptr, ptr %9, align 8, !tbaa !34
  %17 = getelementptr inbounds %struct._BlobInfo, ptr %16, i64 0, i32 11
  %18 = load i32, ptr %17, align 8, !tbaa !20
  switch i32 %18, label %46 [
    i32 7, label %27
    i32 3, label %19
    i32 1, label %19
  ]

19:                                               ; preds = %14, %14
  %20 = getelementptr inbounds %struct._BlobInfo, ptr %16, i64 0, i32 8
  %21 = load i32, ptr %20, align 4, !tbaa !50
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %41, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._BlobInfo, ptr %16, i64 0, i32 12
  %25 = load ptr, ptr %24, align 8, !tbaa !21
  %26 = tail call i32 @fileno(ptr noundef %25) #23
  br label %37

27:                                               ; preds = %14
  %28 = getelementptr inbounds %struct._BlobInfo, ptr %16, i64 0, i32 12
  %29 = load ptr, ptr %28, align 8, !tbaa !21
  %30 = icmp eq ptr %29, null
  br i1 %30, label %46, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct._BlobInfo, ptr %16, i64 0, i32 8
  %33 = load i32, ptr %32, align 4, !tbaa !50
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %31
  %36 = tail call i32 @fileno(ptr noundef nonnull %29) #23
  br label %37

37:                                               ; preds = %35, %23
  %38 = phi i32 [ %26, %23 ], [ %36, %35 ]
  %39 = tail call i32 @fsync(i32 noundef %38) #23
  %40 = load ptr, ptr %9, align 8, !tbaa !34
  br label %41

41:                                               ; preds = %37, %19
  %42 = phi ptr [ %16, %19 ], [ %40, %37 ]
  %43 = getelementptr inbounds %struct._BlobInfo, ptr %42, i64 0, i32 12
  %44 = load ptr, ptr %43, align 8, !tbaa !21
  %45 = tail call i32 @ferror(ptr noundef %44) #23
  br label %46

46:                                               ; preds = %41, %27, %31, %14
  %47 = phi ptr [ %16, %14 ], [ %16, %31 ], [ %16, %27 ], [ %42, %41 ]
  %48 = phi i32 [ %15, %14 ], [ %15, %31 ], [ %15, %27 ], [ %45, %41 ]
  %49 = lshr i32 %48, 31
  %50 = getelementptr inbounds %struct._BlobInfo, ptr %47, i64 0, i32 9
  store i32 %49, ptr %50, align 8, !tbaa !60
  %51 = tail call i64 @GetBlobSize(ptr noundef nonnull %0) #24
  %52 = load ptr, ptr %9, align 8, !tbaa !34
  %53 = getelementptr inbounds %struct._BlobInfo, ptr %52, i64 0, i32 6
  store i64 %51, ptr %53, align 8, !tbaa !61
  %54 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 79
  store i64 %51, ptr %54, align 8, !tbaa !62
  %55 = getelementptr inbounds %struct._BlobInfo, ptr %52, i64 0, i32 4
  store i32 0, ptr %55, align 4, !tbaa !63
  %56 = getelementptr inbounds %struct._BlobInfo, ptr %52, i64 0, i32 7
  %57 = load i32, ptr %56, align 8, !tbaa !48
  %58 = icmp eq i32 %57, 0
  %59 = getelementptr inbounds %struct._BlobInfo, ptr %52, i64 0, i32 11
  br i1 %58, label %63, label %60

60:                                               ; preds = %46
  store i32 0, ptr %59, align 8, !tbaa !20
  %61 = getelementptr inbounds %struct._BlobInfo, ptr %52, i64 0, i32 9
  %62 = load i32, ptr %61, align 8, !tbaa !60
  br label %82

63:                                               ; preds = %46
  %64 = load i32, ptr %59, align 8, !tbaa !20
  switch i32 %64, label %75 [
    i32 7, label %69
    i32 1, label %65
  ]

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct._BlobInfo, ptr %52, i64 0, i32 12
  %67 = load ptr, ptr %66, align 8, !tbaa !21
  %68 = tail call i32 @fclose(ptr noundef %67) #24
  br label %75

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct._BlobInfo, ptr %52, i64 0, i32 12
  %71 = load ptr, ptr %70, align 8, !tbaa !21
  %72 = icmp eq ptr %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %69
  %74 = tail call i32 @fclose(ptr noundef nonnull %71) #24
  br label %75

75:                                               ; preds = %69, %73, %63, %65
  %76 = phi i32 [ %48, %63 ], [ %68, %65 ], [ %74, %73 ], [ %48, %69 ]
  %77 = load ptr, ptr %9, align 8, !tbaa !34
  %78 = tail call ptr @DetachBlob(ptr noundef %77) #24
  %79 = lshr i32 %76, 31
  %80 = load ptr, ptr %9, align 8, !tbaa !34
  %81 = getelementptr inbounds %struct._BlobInfo, ptr %80, i64 0, i32 9
  store i32 %79, ptr %81, align 8, !tbaa !60
  br label %82

82:                                               ; preds = %8, %75, %60
  %83 = phi i32 [ %62, %60 ], [ %79, %75 ], [ 1, %8 ]
  ret i32 %83
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @SyncBlob(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !59
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3898, ptr noundef nonnull @.str.3, ptr noundef nonnull %6) #23
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct._BlobInfo, ptr %10, i64 0, i32 11
  %12 = load i32, ptr %11, align 8, !tbaa !20
  switch i32 %12, label %17 [
    i32 3, label %13
    i32 1, label %13
  ]

13:                                               ; preds = %8, %8
  %14 = getelementptr inbounds %struct._BlobInfo, ptr %10, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !21
  %16 = tail call i32 @fflush(ptr noundef %15) #24
  br label %17

17:                                               ; preds = %8, %13
  %18 = phi i32 [ 0, %8 ], [ %16, %13 ]
  ret i32 %18
}

; Function Attrs: optsize
declare i32 @fsync(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind optsize memory(read)
declare noundef i32 @ferror(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @GetBlobSize(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !59
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1358, ptr noundef nonnull @.str.3, ptr noundef nonnull %6) #23
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct._BlobInfo, ptr %10, i64 0, i32 11
  %12 = load i32, ptr %11, align 8, !tbaa !20
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
  %19 = load ptr, ptr %18, align 8, !tbaa !21
  %20 = tail call i32 @fileno(ptr noundef %19) #23
  %21 = load ptr, ptr %9, align 8, !tbaa !34
  %22 = getelementptr inbounds %struct._BlobInfo, ptr %21, i64 0, i32 13
  %23 = tail call i32 @fstat(i32 noundef %20, ptr noundef nonnull %22) #23
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %17
  %26 = load ptr, ptr %9, align 8, !tbaa !34
  %27 = getelementptr inbounds %struct._BlobInfo, ptr %26, i64 0, i32 13, i32 8
  br label %38

28:                                               ; preds = %8
  %29 = getelementptr inbounds %struct._BlobInfo, ptr %10, i64 0, i32 6
  br label %38

30:                                               ; preds = %8, %8
  %31 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %32 = getelementptr inbounds %struct._BlobInfo, ptr %10, i64 0, i32 13
  %33 = tail call i32 @GetPathAttributes(ptr noundef nonnull %31, ptr noundef nonnull %32) #23
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %30
  %36 = load ptr, ptr %9, align 8, !tbaa !34
  %37 = getelementptr inbounds %struct._BlobInfo, ptr %36, i64 0, i32 13, i32 8
  br label %38

38:                                               ; preds = %8, %13, %15, %28, %25, %35
  %39 = phi ptr [ %37, %35 ], [ %27, %25 ], [ %29, %28 ], [ %16, %15 ], [ %14, %13 ], [ %10, %8 ]
  %40 = load i64, ptr %39, align 8, !tbaa !21
  br label %41

41:                                               ; preds = %38, %30, %17, %8
  %42 = phi i64 [ 0, %8 ], [ 0, %17 ], [ 0, %30 ], [ %40, %38 ]
  ret i64 %42
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DestroyBlob(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !59
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 638, ptr noundef nonnull @.str.3, ptr noundef nonnull %6) #23
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct._BlobInfo, ptr %10, i64 0, i32 17
  %12 = load ptr, ptr %11, align 8, !tbaa !57
  tail call void @LockSemaphoreInfo(ptr noundef %12) #23
  %13 = load ptr, ptr %9, align 8, !tbaa !34
  %14 = getelementptr inbounds %struct._BlobInfo, ptr %13, i64 0, i32 18
  %15 = load i64, ptr %14, align 8, !tbaa !54
  %16 = add nsw i64 %15, -1
  store i64 %16, ptr %14, align 8, !tbaa !54
  %17 = icmp eq i64 %16, 0
  %18 = getelementptr inbounds %struct._BlobInfo, ptr %13, i64 0, i32 17
  %19 = load ptr, ptr %18, align 8, !tbaa !57
  tail call void @UnlockSemaphoreInfo(ptr noundef %19) #23
  br i1 %17, label %20, label %40

20:                                               ; preds = %8
  %21 = tail call i32 @CloseBlob(ptr noundef nonnull %0) #24
  %22 = load ptr, ptr %9, align 8, !tbaa !34
  %23 = getelementptr inbounds %struct._BlobInfo, ptr %22, i64 0, i32 3
  %24 = load i32, ptr %23, align 8, !tbaa !23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i64, ptr %22, align 8, !tbaa !16
  tail call void @RelinquishMagickResource(i32 noundef 4, i64 noundef %27) #23
  %28 = load ptr, ptr %9, align 8, !tbaa !34
  br label %29

29:                                               ; preds = %26, %20
  %30 = phi ptr [ %28, %26 ], [ %22, %20 ]
  %31 = getelementptr inbounds %struct._BlobInfo, ptr %30, i64 0, i32 17
  %32 = load ptr, ptr %31, align 8, !tbaa !57
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull %31) #23
  %35 = load ptr, ptr %9, align 8, !tbaa !34
  br label %36

36:                                               ; preds = %34, %29
  %37 = phi ptr [ %35, %34 ], [ %30, %29 ]
  %38 = getelementptr inbounds %struct._BlobInfo, ptr %37, i64 0, i32 19
  store i64 -2880220588, ptr %38, align 8, !tbaa !58
  %39 = tail call ptr @RelinquishMagickMemory(ptr noundef %37) #23
  store ptr %39, ptr %9, align 8, !tbaa !34
  br label %40

40:                                               ; preds = %8, %36
  ret void
}

; Function Attrs: optsize
declare void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @UnmapBlob(ptr nocapture noundef readnone %0, i64 noundef %1) local_unnamed_addr #6 {
  ret i32 0
}

; Function Attrs: optsize
declare void @RelinquishMagickResource(i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef i32 @DiscardBlobBytes(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = alloca i64, align 8
  %4 = alloca [16384 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(i64 16384, ptr nonnull %4) #27
  store i64 0, ptr %3, align 8, !tbaa !49
  %5 = icmp slt i64 %1, 1
  br i1 %5, label %21, label %6

6:                                                ; preds = %2, %17
  %7 = phi i64 [ %19, %17 ], [ 0, %2 ]
  %8 = sub nsw i64 %1, %7
  %9 = call fastcc i64 @MagickMin(i64 noundef %8, i64 noundef 16384) #24
  %10 = call fastcc ptr @ReadBlobStream(ptr noundef %0, i64 noundef %9, ptr noundef nonnull %4, ptr noundef nonnull %3) #24
  %11 = load i64, ptr %3, align 8, !tbaa !49
  %12 = icmp slt i64 %11, 1
  br i1 %12, label %13, label %17

13:                                               ; preds = %6
  store i64 0, ptr %3, align 8, !tbaa !49
  %14 = tail call ptr @__errno_location() #25
  %15 = load i32, ptr %14, align 4, !tbaa !24
  %16 = icmp eq i32 %15, 4
  br i1 %16, label %17, label %21

17:                                               ; preds = %6, %13
  %18 = phi i64 [ %11, %6 ], [ 0, %13 ]
  %19 = add nuw nsw i64 %18, %7
  %20 = icmp slt i64 %19, %1
  br i1 %20, label %6, label %21, !llvm.loop !64

21:                                               ; preds = %17, %13, %2
  %22 = phi i32 [ 1, %2 ], [ 0, %13 ], [ 1, %17 ]
  call void @llvm.lifetime.end.p0(i64 16384, ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  ret i32 %22
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc ptr @ReadBlobStream(ptr nocapture noundef readonly %0, i64 noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #3 {
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct._BlobInfo, ptr %6, i64 0, i32 11
  %8 = load i32, ptr %7, align 8, !tbaa !20
  %9 = icmp eq i32 %8, 7
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = tail call i64 @ReadBlob(ptr noundef nonnull %0, i64 noundef %1, ptr noundef %2) #24
  store i64 %11, ptr %3, align 8, !tbaa !49
  br label %29

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct._BlobInfo, ptr %6, i64 0, i32 5
  %14 = load i64, ptr %13, align 8, !tbaa !19
  %15 = load i64, ptr %6, align 8, !tbaa !16
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  store i64 0, ptr %3, align 8, !tbaa !49
  %18 = getelementptr inbounds %struct._BlobInfo, ptr %6, i64 0, i32 4
  store i32 1, ptr %18, align 4, !tbaa !63
  br label %29

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct._BlobInfo, ptr %6, i64 0, i32 15
  %21 = load ptr, ptr %20, align 8, !tbaa !22
  %22 = getelementptr inbounds i8, ptr %21, i64 %14
  %23 = sub i64 %15, %14
  %24 = tail call fastcc i64 @MagickMin(i64 noundef %1, i64 noundef %23) #24
  store i64 %24, ptr %3, align 8, !tbaa !49
  %25 = add nsw i64 %24, %14
  store i64 %25, ptr %13, align 8, !tbaa !19
  %26 = icmp eq i64 %24, %1
  br i1 %26, label %29, label %27

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct._BlobInfo, ptr %6, i64 0, i32 4
  store i32 1, ptr %28, align 4, !tbaa !63
  br label %29

29:                                               ; preds = %19, %27, %17, %10
  %30 = phi ptr [ %2, %10 ], [ %2, %17 ], [ %22, %27 ], [ %22, %19 ]
  ret ptr %30
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local i64 @ReadBlob(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #3 {
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %74, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct._BlobInfo, ptr %7, i64 0, i32 11
  %9 = load i32, ptr %8, align 8, !tbaa !20
  switch i32 %9, label %74 [
    i32 7, label %56
    i32 2, label %10
    i32 1, label %31
    i32 3, label %31
  ]

10:                                               ; preds = %5
  %11 = icmp sgt i64 %1, 0
  br i1 %11, label %12, label %74

12:                                               ; preds = %10, %27
  %13 = phi i64 [ %29, %27 ], [ 0, %10 ]
  %14 = load ptr, ptr %6, align 8, !tbaa !34
  %15 = getelementptr inbounds %struct._BlobInfo, ptr %14, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !21
  %17 = tail call i32 @fileno(ptr noundef %16) #23
  %18 = getelementptr inbounds i8, ptr %2, i64 %13
  %19 = sub nsw i64 %1, %13
  %20 = tail call fastcc i64 @MagickMin(i64 noundef %19, i64 noundef 9223372036854775807) #24
  %21 = tail call i64 @read(i32 noundef %17, ptr noundef %18, i64 noundef %20) #23
  %22 = icmp slt i64 %21, 1
  br i1 %22, label %23, label %27

23:                                               ; preds = %12
  %24 = tail call ptr @__errno_location() #25
  %25 = load i32, ptr %24, align 4, !tbaa !24
  %26 = icmp eq i32 %25, 4
  br i1 %26, label %27, label %74

27:                                               ; preds = %12, %23
  %28 = phi i64 [ 0, %23 ], [ %21, %12 ]
  %29 = add nuw nsw i64 %28, %13
  %30 = icmp slt i64 %29, %1
  br i1 %30, label %12, label %74, !llvm.loop !65

31:                                               ; preds = %5, %5
  switch i64 %1, label %32 [
    i64 2, label %36
    i64 1, label %45
  ]

32:                                               ; preds = %31
  %33 = getelementptr inbounds %struct._BlobInfo, ptr %7, i64 0, i32 12
  %34 = load ptr, ptr %33, align 8, !tbaa !21
  %35 = tail call i64 @fread(ptr noundef %2, i64 noundef 1, i64 noundef %1, ptr noundef %34) #24
  br label %74

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct._BlobInfo, ptr %7, i64 0, i32 12
  %38 = load ptr, ptr %37, align 8, !tbaa !21
  %39 = tail call i32 @getc(ptr noundef %38) #24
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %74, label %41

41:                                               ; preds = %36
  %42 = trunc i32 %39 to i8
  %43 = getelementptr inbounds i8, ptr %2, i64 1
  store i8 %42, ptr %2, align 1, !tbaa !21
  %44 = load ptr, ptr %6, align 8, !tbaa !34
  br label %45

45:                                               ; preds = %31, %41
  %46 = phi ptr [ %7, %31 ], [ %44, %41 ]
  %47 = phi ptr [ %2, %31 ], [ %43, %41 ]
  %48 = phi i64 [ 0, %31 ], [ 1, %41 ]
  %49 = getelementptr inbounds %struct._BlobInfo, ptr %46, i64 0, i32 12
  %50 = load ptr, ptr %49, align 8, !tbaa !21
  %51 = tail call i32 @getc(ptr noundef %50) #24
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %74, label %53

53:                                               ; preds = %45
  %54 = trunc i32 %51 to i8
  store i8 %54, ptr %47, align 1, !tbaa !21
  %55 = add nuw nsw i64 %48, 1
  br label %74

56:                                               ; preds = %5
  %57 = getelementptr inbounds %struct._BlobInfo, ptr %7, i64 0, i32 5
  %58 = load i64, ptr %57, align 8, !tbaa !19
  %59 = load i64, ptr %7, align 8, !tbaa !16
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %63, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct._BlobInfo, ptr %7, i64 0, i32 4
  store i32 1, ptr %62, align 4, !tbaa !63
  br label %74

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct._BlobInfo, ptr %7, i64 0, i32 15
  %65 = load ptr, ptr %64, align 8, !tbaa !22
  %66 = getelementptr inbounds i8, ptr %65, i64 %58
  %67 = sub i64 %59, %58
  %68 = tail call fastcc i64 @MagickMin(i64 noundef %1, i64 noundef %67) #24
  %69 = add nsw i64 %68, %58
  store i64 %69, ptr %57, align 8, !tbaa !19
  %70 = icmp eq i64 %68, %1
  br i1 %70, label %73, label %71

71:                                               ; preds = %63
  %72 = getelementptr inbounds %struct._BlobInfo, ptr %7, i64 0, i32 4
  store i32 1, ptr %72, align 4, !tbaa !63
  br label %73

73:                                               ; preds = %71, %63
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %66, i64 %68, i1 false)
  br label %74

74:                                               ; preds = %27, %23, %10, %5, %45, %36, %53, %32, %73, %61, %3
  %75 = phi i64 [ 0, %3 ], [ 0, %5 ], [ %35, %32 ], [ %48, %45 ], [ %55, %53 ], [ 0, %36 ], [ 0, %61 ], [ %68, %73 ], [ 0, %10 ], [ %29, %27 ], [ %13, %23 ]
  ret i64 %75
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DuplicateBlob(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !59
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 822, ptr noundef nonnull @.str.3, ptr noundef nonnull %7) #23
  br label %9

9:                                                ; preds = %6, %2
  tail call void @DestroyBlob(ptr noundef nonnull %0) #24
  %10 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 52
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = tail call ptr @ReferenceBlob(ptr noundef %11) #24
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  store ptr %11, ptr %13, align 8, !tbaa !34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @ReferenceBlob(ptr noundef returned %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 16
  %3 = load i32, ptr %2, align 8, !tbaa !6
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3558, ptr noundef nonnull @.str.2) #23
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 17
  %9 = load ptr, ptr %8, align 8, !tbaa !57
  tail call void @LockSemaphoreInfo(ptr noundef %9) #23
  %10 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 18
  %11 = load i64, ptr %10, align 8, !tbaa !54
  %12 = add nsw i64 %11, 1
  store i64 %12, ptr %10, align 8, !tbaa !54
  %13 = load ptr, ptr %8, align 8, !tbaa !57
  tail call void @UnlockSemaphoreInfo(ptr noundef %13) #23
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @EOFBlob(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !59
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 857, ptr noundef nonnull @.str.2) #23
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct._BlobInfo, ptr %9, i64 0, i32 11
  %11 = load i32, ptr %10, align 8, !tbaa !20
  switch i32 %11, label %12 [
    i32 6, label %25
    i32 4, label %23
    i32 1, label %15
    i32 3, label %15
  ]

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct._BlobInfo, ptr %9, i64 0, i32 4
  %14 = load i32, ptr %13, align 4, !tbaa !63
  br label %27

15:                                               ; preds = %7, %7
  %16 = getelementptr inbounds %struct._BlobInfo, ptr %9, i64 0, i32 12
  %17 = load ptr, ptr %16, align 8, !tbaa !21
  %18 = tail call i32 @feof(ptr noundef %17) #23
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = load ptr, ptr %8, align 8, !tbaa !34
  %22 = getelementptr inbounds %struct._BlobInfo, ptr %21, i64 0, i32 4
  store i32 %20, ptr %22, align 4, !tbaa !63
  br label %27

23:                                               ; preds = %7
  %24 = getelementptr inbounds %struct._BlobInfo, ptr %9, i64 0, i32 4
  store i32 0, ptr %24, align 4, !tbaa !63
  br label %27

25:                                               ; preds = %7
  %26 = getelementptr inbounds %struct._BlobInfo, ptr %9, i64 0, i32 4
  store i32 0, ptr %26, align 4, !tbaa !63
  br label %27

27:                                               ; preds = %12, %25, %23, %15
  %28 = phi i32 [ %14, %12 ], [ 0, %25 ], [ 0, %23 ], [ %20, %15 ]
  ret i32 %28
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @feof(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @FileToBlob(ptr noundef %0, i64 noundef %1, ptr nocapture noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.stat, align 8
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 957, ptr noundef nonnull @.str.3, ptr noundef %0) #23
  store i64 0, ptr %2, align 8, !tbaa !49
  %7 = load ptr, ptr @stdin, align 8, !tbaa !53
  %8 = tail call i32 @fileno(ptr noundef %7) #23
  %9 = tail call i32 @LocaleCompare(ptr noundef %0, ptr noundef nonnull @.str.11) #23
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %4
  %12 = tail call fastcc i32 @open_utf8(ptr noundef %0, i32 noundef 0, i32 noundef 0) #24
  br label %13

13:                                               ; preds = %11, %4
  %14 = phi i32 [ %12, %11 ], [ %8, %4 ]
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = tail call ptr @__errno_location() #25
  %18 = load i32, ptr %17, align 4, !tbaa !24
  %19 = tail call ptr @GetExceptionMessage(i32 noundef %18) #23
  %20 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 965, i32 noundef 435, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.5, ptr noundef %0, ptr noundef %19) #23
  %21 = tail call ptr @DestroyString(ptr noundef %19) #23
  br label %158

22:                                               ; preds = %13
  %23 = tail call i64 @lseek(i32 noundef %14, i64 noundef 0, i32 noundef 2) #23
  %24 = load ptr, ptr @stdin, align 8, !tbaa !53
  %25 = tail call i32 @fileno(ptr noundef %24) #23
  %26 = icmp eq i32 %14, %25
  %27 = icmp slt i64 %23, 0
  %28 = select i1 %26, i1 true, i1 %27
  br i1 %28, label %29, label %96

29:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %5) #27
  %30 = tail call i64 @lseek(i32 noundef %14, i64 noundef 0, i32 noundef 0) #23
  %31 = call i32 @fstat(i32 noundef %14, ptr noundef nonnull %5) #23
  %32 = icmp eq i32 %31, 0
  %33 = getelementptr inbounds %struct.stat, ptr %5, i64 0, i32 8
  %34 = load i64, ptr %33, align 8
  %35 = icmp ne i64 %34, 0
  %36 = select i1 %32, i1 %35, i1 false
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = tail call fastcc i64 @MagickMin(i64 noundef %34, i64 noundef 262142) #24
  br label %39

39:                                               ; preds = %37, %29
  %40 = phi i64 [ %38, %37 ], [ 262142, %29 ]
  %41 = tail call ptr @AcquireQuantumMemory(i64 noundef %40, i64 noundef 1) #29
  %42 = icmp eq ptr %41, null
  br i1 %42, label %68, label %43

43:                                               ; preds = %39
  %44 = sub i64 -2, %40
  %45 = add i64 %40, 1
  br label %48

46:                                               ; preds = %63
  %47 = icmp eq ptr %65, null
  br i1 %47, label %68, label %48, !llvm.loop !66

48:                                               ; preds = %43, %46
  %49 = phi i64 [ 0, %43 ], [ %66, %46 ]
  %50 = phi ptr [ %41, %43 ], [ %65, %46 ]
  %51 = getelementptr inbounds i8, ptr %50, i64 %49
  %52 = tail call i64 @read(i32 noundef %14, ptr noundef nonnull %51, i64 noundef %40) #23
  %53 = icmp slt i64 %52, 1
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = tail call ptr @__errno_location() #25
  %56 = load i32, ptr %55, align 4, !tbaa !24
  %57 = icmp eq i32 %56, 4
  br i1 %57, label %58, label %68

58:                                               ; preds = %54, %48
  %59 = phi i64 [ 0, %54 ], [ %52, %48 ]
  %60 = icmp ult i64 %44, %49
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %50) #23
  br label %68

63:                                               ; preds = %58
  %64 = add i64 %45, %49
  %65 = tail call ptr @ResizeQuantumMemory(ptr noundef nonnull %50, i64 noundef %64, i64 noundef 1) #30
  %66 = add i64 %59, %49
  %67 = icmp ult i64 %66, %1
  br i1 %67, label %46, label %68, !llvm.loop !66

68:                                               ; preds = %46, %54, %63, %39, %61
  %69 = phi i64 [ %49, %61 ], [ 0, %39 ], [ %66, %46 ], [ %49, %54 ], [ %49, %63 ]
  %70 = phi ptr [ %62, %61 ], [ null, %39 ], [ null, %46 ], [ %50, %54 ], [ %65, %63 ]
  %71 = phi i64 [ %59, %61 ], [ 0, %39 ], [ %59, %46 ], [ 0, %54 ], [ %59, %63 ]
  %72 = tail call i32 @LocaleCompare(ptr noundef %0, ptr noundef nonnull @.str.11) #23
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %68
  %75 = tail call i32 @close(i32 noundef %14) #23
  br label %76

76:                                               ; preds = %74, %68
  %77 = phi i32 [ %75, %74 ], [ %14, %68 ]
  %78 = icmp eq ptr %70, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1011, i32 noundef 400, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.7, ptr noundef %0) #23
  br label %94

81:                                               ; preds = %76
  %82 = icmp eq i32 %77, -1
  br i1 %82, label %83, label %90

83:                                               ; preds = %81
  %84 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %70) #23
  %85 = tail call ptr @__errno_location() #25
  %86 = load i32, ptr %85, align 4, !tbaa !24
  %87 = tail call ptr @GetExceptionMessage(i32 noundef %86) #23
  %88 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1018, i32 noundef 435, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.5, ptr noundef %0, ptr noundef %87) #23
  %89 = tail call ptr @DestroyString(ptr noundef %87) #23
  br label %94

90:                                               ; preds = %81
  %91 = add i64 %71, %69
  %92 = tail call fastcc i64 @MagickMin(i64 noundef %91, i64 noundef %1) #24
  store i64 %92, ptr %2, align 8, !tbaa !49
  %93 = getelementptr inbounds i8, ptr %70, i64 %92
  store i8 0, ptr %93, align 1, !tbaa !21
  br label %94

94:                                               ; preds = %90, %83, %79
  %95 = phi ptr [ null, %79 ], [ null, %83 ], [ %70, %90 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %5) #27
  br label %158

96:                                               ; preds = %22
  %97 = tail call fastcc i64 @MagickMin(i64 noundef %23, i64 noundef %1) #24
  store i64 %97, ptr %2, align 8, !tbaa !49
  %98 = icmp ult i64 %97, -4095
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = add i64 %97, 4096
  %101 = tail call ptr @AcquireQuantumMemory(i64 noundef %100, i64 noundef 1) #29
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %96, %99
  %104 = tail call i32 @close(i32 noundef %14) #23
  %105 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1033, i32 noundef 400, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.7, ptr noundef %0) #23
  br label %158

106:                                              ; preds = %99
  %107 = tail call i64 @lseek(i32 noundef %14, i64 noundef 0, i32 noundef 0) #23
  %108 = load i64, ptr %2, align 8, !tbaa !49
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %141, label %110

110:                                              ; preds = %106, %124
  %111 = phi i64 [ %127, %124 ], [ %108, %106 ]
  %112 = phi i64 [ %126, %124 ], [ 0, %106 ]
  %113 = getelementptr inbounds i8, ptr %101, i64 %112
  %114 = sub i64 %111, %112
  %115 = tail call fastcc i64 @MagickMin(i64 noundef %114, i64 noundef 9223372036854775807) #24
  %116 = tail call i64 @read(i32 noundef %14, ptr noundef nonnull %113, i64 noundef %115) #23
  %117 = icmp slt i64 %116, 1
  br i1 %117, label %118, label %124

118:                                              ; preds = %110
  %119 = tail call ptr @__errno_location() #25
  %120 = load i32, ptr %119, align 4, !tbaa !24
  %121 = icmp eq i32 %120, 4
  br i1 %121, label %124, label %122

122:                                              ; preds = %118
  %123 = load i64, ptr %2, align 8, !tbaa !49
  br label %129

124:                                              ; preds = %110, %118
  %125 = phi i64 [ 0, %118 ], [ %116, %110 ]
  %126 = add i64 %125, %112
  %127 = load i64, ptr %2, align 8, !tbaa !49
  %128 = icmp ult i64 %126, %127
  br i1 %128, label %110, label %129, !llvm.loop !67

129:                                              ; preds = %124, %122
  %130 = phi i64 [ %123, %122 ], [ %127, %124 ]
  %131 = phi i64 [ %112, %122 ], [ %126, %124 ]
  %132 = icmp ult i64 %131, %130
  br i1 %132, label %133, label %141

133:                                              ; preds = %129
  %134 = tail call i32 @close(i32 noundef %14) #23
  %135 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %101) #23
  %136 = tail call ptr @__errno_location() #25
  %137 = load i32, ptr %136, align 4, !tbaa !24
  %138 = tail call ptr @GetExceptionMessage(i32 noundef %137) #23
  %139 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1061, i32 noundef 435, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.5, ptr noundef %0, ptr noundef %138) #23
  %140 = tail call ptr @DestroyString(ptr noundef %138) #23
  br label %158

141:                                              ; preds = %106, %129
  %142 = phi i64 [ %130, %129 ], [ 0, %106 ]
  %143 = getelementptr inbounds i8, ptr %101, i64 %142
  store i8 0, ptr %143, align 1, !tbaa !21
  %144 = tail call i32 @LocaleCompare(ptr noundef %0, ptr noundef nonnull @.str.11) #23
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %148, label %146

146:                                              ; preds = %141
  %147 = tail call i32 @close(i32 noundef %14) #23
  br label %148

148:                                              ; preds = %146, %141
  %149 = phi i32 [ %147, %146 ], [ %14, %141 ]
  %150 = icmp eq i32 %149, -1
  br i1 %150, label %151, label %158

151:                                              ; preds = %148
  %152 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %101) #23
  %153 = tail call ptr @__errno_location() #25
  %154 = load i32, ptr %153, align 4, !tbaa !24
  %155 = tail call ptr @GetExceptionMessage(i32 noundef %154) #23
  %156 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1071, i32 noundef 435, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.5, ptr noundef %0, ptr noundef %155) #23
  %157 = tail call ptr @DestroyString(ptr noundef %155) #23
  br label %158

158:                                              ; preds = %148, %151, %133, %103, %94, %16
  %159 = phi ptr [ null, %16 ], [ %95, %94 ], [ null, %103 ], [ null, %133 ], [ %152, %151 ], [ %101, %148 ]
  ret ptr %159
}

; Function Attrs: optsize
declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fstat(i32 noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nofree optsize
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: optsize allocsize(1,2)
declare ptr @ResizeQuantumMemory(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @MapBlob(i32 noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #6 {
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @FileToImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #27
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1152, ptr noundef nonnull @.str.3, ptr noundef %1) #23
  %5 = load ptr, ptr @stdin, align 8, !tbaa !53
  %6 = tail call i32 @fileno(ptr noundef %5) #23
  %7 = tail call i32 @LocaleCompare(ptr noundef %1, ptr noundef nonnull @.str.11) #23
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = tail call fastcc i32 @open_utf8(ptr noundef %1, i32 noundef 0, i32 noundef 0) #24
  br label %11

11:                                               ; preds = %9, %2
  %12 = phi i32 [ %10, %9 ], [ %6, %2 ]
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = tail call ptr @__errno_location() #25
  %16 = load i32, ptr %15, align 4, !tbaa !24
  %17 = tail call ptr @GetExceptionMessage(i32 noundef %16) #23
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %19 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %18, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1159, i32 noundef 435, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.5, ptr noundef %1, ptr noundef %17) #23
  %20 = tail call ptr @DestroyString(ptr noundef %17) #23
  br label %72

21:                                               ; preds = %11
  %22 = call i32 @fstat(i32 noundef %12, ptr noundef nonnull %3) #23
  %23 = icmp eq i32 %22, 0
  %24 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 8
  %25 = load i64, ptr %24, align 8
  %26 = icmp ne i64 %25, 0
  %27 = select i1 %23, i1 %26, i1 false
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = tail call fastcc i64 @MagickMin(i64 noundef %25, i64 noundef 262142) #24
  br label %30

30:                                               ; preds = %28, %21
  %31 = phi i64 [ %29, %28 ], [ 262142, %21 ]
  %32 = tail call ptr @AcquireQuantumMemory(i64 noundef %31, i64 noundef 1) #29
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = tail call i32 @close(i32 noundef %12) #23
  %36 = tail call ptr @__errno_location() #25
  %37 = load i32, ptr %36, align 4, !tbaa !24
  %38 = tail call ptr @GetExceptionMessage(i32 noundef %37) #23
  %39 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %40 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %39, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1170, i32 noundef 400, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.5, ptr noundef %1, ptr noundef %38) #23
  %41 = tail call ptr @DestroyString(ptr noundef %38) #23
  br label %72

42:                                               ; preds = %30, %49
  %43 = tail call i64 @read(i32 noundef %12, ptr noundef nonnull %32, i64 noundef %31) #23
  %44 = icmp slt i64 %43, 1
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = tail call ptr @__errno_location() #25
  %47 = load i32, ptr %46, align 4, !tbaa !24
  %48 = icmp eq i32 %47, 4
  br i1 %48, label %49, label %60

49:                                               ; preds = %45, %42
  %50 = phi i64 [ 0, %45 ], [ %43, %42 ]
  %51 = tail call fastcc i64 @WriteBlobStream(ptr noundef %0, i64 noundef %50, ptr noundef nonnull %32) #24
  %52 = icmp eq i64 %51, %50
  br i1 %52, label %42, label %53

53:                                               ; preds = %49
  %54 = tail call ptr @__errno_location() #25
  %55 = load i32, ptr %54, align 4, !tbaa !24
  %56 = tail call ptr @GetExceptionMessage(i32 noundef %55) #23
  %57 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %58 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %57, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1187, i32 noundef 435, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef %1, ptr noundef %56) #23
  %59 = tail call ptr @DestroyString(ptr noundef %56) #23
  br label %60

60:                                               ; preds = %45, %53
  %61 = tail call i32 @close(i32 noundef %12) #23
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = tail call ptr @__errno_location() #25
  %65 = load i32, ptr %64, align 4, !tbaa !24
  %66 = tail call ptr @GetExceptionMessage(i32 noundef %65) #23
  %67 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %68 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %67, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1194, i32 noundef 435, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef %1, ptr noundef %66) #23
  %69 = tail call ptr @DestroyString(ptr noundef %66) #23
  br label %70

70:                                               ; preds = %63, %60
  %71 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %32) #23
  br label %72

72:                                               ; preds = %70, %34, %14
  %73 = phi i32 [ 0, %14 ], [ 0, %34 ], [ 1, %70 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #27
  ret i32 %73
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @WriteBlobStream(ptr noundef %0, i64 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct._BlobInfo, ptr %5, i64 0, i32 11
  %7 = load i32, ptr %6, align 8, !tbaa !20
  %8 = icmp eq i32 %7, 7
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = tail call i64 @WriteBlob(ptr noundef nonnull %0, i64 noundef %1, ptr noundef %2) #24
  br label %43

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct._BlobInfo, ptr %5, i64 0, i32 5
  %13 = load i64, ptr %12, align 8, !tbaa !19
  %14 = add nsw i64 %13, %1
  %15 = getelementptr inbounds %struct._BlobInfo, ptr %5, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !17
  %17 = icmp ult i64 %14, %16
  br i1 %17, label %30, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct._BlobInfo, ptr %5, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !18
  %21 = add i64 %16, %1
  %22 = add i64 %21, %20
  %23 = shl i64 %20, 1
  store i64 %23, ptr %19, align 8, !tbaa !18
  %24 = tail call i32 @SetBlobExtent(ptr noundef nonnull %0, i64 noundef %22) #24, !range !44
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %43, label %26

26:                                               ; preds = %18
  %27 = load ptr, ptr %4, align 8, !tbaa !34
  %28 = getelementptr inbounds %struct._BlobInfo, ptr %27, i64 0, i32 5
  %29 = load i64, ptr %28, align 8, !tbaa !19
  br label %30

30:                                               ; preds = %26, %11
  %31 = phi i64 [ %29, %26 ], [ %13, %11 ]
  %32 = phi ptr [ %27, %26 ], [ %5, %11 ]
  %33 = getelementptr inbounds %struct._BlobInfo, ptr %32, i64 0, i32 15
  %34 = load ptr, ptr %33, align 8, !tbaa !22
  %35 = getelementptr inbounds i8, ptr %34, i64 %31
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %35, ptr align 1 %2, i64 %1, i1 false)
  %36 = load ptr, ptr %4, align 8, !tbaa !34
  %37 = getelementptr inbounds %struct._BlobInfo, ptr %36, i64 0, i32 5
  %38 = load i64, ptr %37, align 8, !tbaa !19
  %39 = add i64 %38, %1
  store i64 %39, ptr %37, align 8, !tbaa !19
  %40 = load i64, ptr %36, align 8, !tbaa !16
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %43, label %42

42:                                               ; preds = %30
  store i64 %39, ptr %36, align 8, !tbaa !16
  br label %43

43:                                               ; preds = %30, %42, %18, %9
  %44 = phi i64 [ %10, %9 ], [ 0, %18 ], [ %1, %42 ], [ %1, %30 ]
  ret i64 %44
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @WriteBlob(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %93, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct._BlobInfo, ptr %7, i64 0, i32 11
  %9 = load i32, ptr %8, align 8, !tbaa !20
  switch i32 %9, label %93 [
    i32 7, label %46
    i32 2, label %10
    i32 1, label %15
    i32 3, label %15
    i32 6, label %42
  ]

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct._BlobInfo, ptr %7, i64 0, i32 12
  %12 = load ptr, ptr %11, align 8, !tbaa !21
  %13 = tail call i32 @fileno(ptr noundef %12) #23
  %14 = tail call i64 @write(i32 noundef %13, ptr noundef %2, i64 noundef %1) #23
  br label %93

15:                                               ; preds = %5, %5
  switch i64 %1, label %16 [
    i64 2, label %20
    i64 1, label %30
  ]

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct._BlobInfo, ptr %7, i64 0, i32 12
  %18 = load ptr, ptr %17, align 8, !tbaa !21
  %19 = tail call i64 @fwrite(ptr noundef %2, i64 noundef 1, i64 noundef %1, ptr noundef %18) #24
  br label %93

20:                                               ; preds = %15
  %21 = load i8, ptr %2, align 1, !tbaa !21
  %22 = zext i8 %21 to i32
  %23 = getelementptr inbounds %struct._BlobInfo, ptr %7, i64 0, i32 12
  %24 = load ptr, ptr %23, align 8, !tbaa !21
  %25 = tail call i32 @putc(i32 noundef %22, ptr noundef %24) #24
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %93, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds i8, ptr %2, i64 1
  %29 = load ptr, ptr %6, align 8, !tbaa !34
  br label %30

30:                                               ; preds = %15, %27
  %31 = phi ptr [ %7, %15 ], [ %29, %27 ]
  %32 = phi ptr [ %2, %15 ], [ %28, %27 ]
  %33 = phi i64 [ 0, %15 ], [ 1, %27 ]
  %34 = load i8, ptr %32, align 1, !tbaa !21
  %35 = zext i8 %34 to i32
  %36 = getelementptr inbounds %struct._BlobInfo, ptr %31, i64 0, i32 12
  %37 = load ptr, ptr %36, align 8, !tbaa !21
  %38 = tail call i32 @putc(i32 noundef %35, ptr noundef %37) #24
  %39 = icmp ne i32 %38, -1
  %40 = zext i1 %39 to i64
  %41 = add nuw nsw i64 %33, %40
  br label %93

42:                                               ; preds = %5
  %43 = getelementptr inbounds %struct._BlobInfo, ptr %7, i64 0, i32 14
  %44 = load ptr, ptr %43, align 8, !tbaa !68
  %45 = tail call i64 %44(ptr noundef nonnull %0, ptr noundef %2, i64 noundef %1) #23
  br label %93

46:                                               ; preds = %5
  %47 = getelementptr inbounds %struct._BlobInfo, ptr %7, i64 0, i32 5
  %48 = load i64, ptr %47, align 8, !tbaa !19
  %49 = add nsw i64 %48, %1
  %50 = getelementptr inbounds %struct._BlobInfo, ptr %7, i64 0, i32 1
  %51 = load i64, ptr %50, align 8, !tbaa !17
  %52 = icmp slt i64 %49, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct._BlobInfo, ptr %7, i64 0, i32 15
  %55 = load ptr, ptr %54, align 8, !tbaa !22
  br label %82

56:                                               ; preds = %46
  %57 = getelementptr inbounds %struct._BlobInfo, ptr %7, i64 0, i32 3
  %58 = load i32, ptr %57, align 8, !tbaa !23
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %93

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct._BlobInfo, ptr %7, i64 0, i32 2
  %62 = load i64, ptr %61, align 8, !tbaa !18
  %63 = add i64 %51, %1
  %64 = add i64 %63, %62
  store i64 %64, ptr %50, align 8, !tbaa !17
  %65 = shl i64 %62, 1
  store i64 %65, ptr %61, align 8, !tbaa !18
  %66 = getelementptr inbounds %struct._BlobInfo, ptr %7, i64 0, i32 15
  %67 = load ptr, ptr %66, align 8, !tbaa !22
  %68 = add i64 %64, 1
  %69 = tail call ptr @ResizeQuantumMemory(ptr noundef %67, i64 noundef %68, i64 noundef 1) #30
  %70 = load ptr, ptr %6, align 8, !tbaa !34
  %71 = getelementptr inbounds %struct._BlobInfo, ptr %70, i64 0, i32 15
  store ptr %69, ptr %71, align 8, !tbaa !22
  %72 = tail call fastcc i32 @SyncBlob(ptr noundef nonnull %0) #24
  %73 = load ptr, ptr %6, align 8, !tbaa !34
  %74 = getelementptr inbounds %struct._BlobInfo, ptr %73, i64 0, i32 15
  %75 = load ptr, ptr %74, align 8, !tbaa !22
  %76 = icmp eq ptr %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %60
  %78 = getelementptr inbounds %struct._BlobInfo, ptr %73, i64 0, i32 5
  %79 = load i64, ptr %78, align 8, !tbaa !19
  br label %82

80:                                               ; preds = %60
  %81 = tail call ptr @DetachBlob(ptr noundef nonnull %73) #24
  br label %93

82:                                               ; preds = %77, %53
  %83 = phi i64 [ %79, %77 ], [ %48, %53 ]
  %84 = phi ptr [ %75, %77 ], [ %55, %53 ]
  %85 = getelementptr inbounds i8, ptr %84, i64 %83
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %85, ptr align 1 %2, i64 %1, i1 false)
  %86 = load ptr, ptr %6, align 8, !tbaa !34
  %87 = getelementptr inbounds %struct._BlobInfo, ptr %86, i64 0, i32 5
  %88 = load i64, ptr %87, align 8, !tbaa !19
  %89 = add i64 %88, %1
  store i64 %89, ptr %87, align 8, !tbaa !19
  %90 = load i64, ptr %86, align 8, !tbaa !16
  %91 = icmp slt i64 %89, %90
  br i1 %91, label %93, label %92

92:                                               ; preds = %82
  store i64 %89, ptr %86, align 8, !tbaa !16
  br label %93

93:                                               ; preds = %56, %80, %92, %82, %30, %10, %42, %5, %20, %16, %3
  %94 = phi i64 [ 0, %3 ], [ 0, %5 ], [ %45, %42 ], [ %19, %16 ], [ 0, %20 ], [ %14, %10 ], [ %41, %30 ], [ 0, %56 ], [ 0, %80 ], [ %1, %92 ], [ %1, %82 ]
  ret i64 %94
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @SetBlobExtent(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !59
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3754, ptr noundef nonnull @.str.3, ptr noundef nonnull %7) #23
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct._BlobInfo, ptr %11, i64 0, i32 11
  %13 = load i32, ptr %12, align 8, !tbaa !20
  switch i32 %13, label %72 [
    i32 7, label %28
    i32 2, label %73
    i32 1, label %14
    i32 3, label %73
    i32 4, label %73
    i32 5, label %73
    i32 6, label %73
  ]

14:                                               ; preds = %9
  %15 = tail call i64 @SeekBlob(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 2) #24
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %73, label %17

17:                                               ; preds = %14
  %18 = icmp ult i64 %15, %1
  br i1 %18, label %19, label %72

19:                                               ; preds = %17
  %20 = add nsw i64 %1, -1
  %21 = tail call i64 @SeekBlob(ptr noundef nonnull %0, i64 noundef %20, i32 noundef 0) #24
  %22 = load ptr, ptr %10, align 8, !tbaa !34
  %23 = getelementptr inbounds %struct._BlobInfo, ptr %22, i64 0, i32 12
  %24 = load ptr, ptr %23, align 8, !tbaa !21
  %25 = tail call i64 @fwrite(ptr noundef nonnull @.str.1, i64 noundef 1, i64 noundef 1, ptr noundef %24) #24
  %26 = tail call i64 @SeekBlob(ptr noundef nonnull %0, i64 noundef %21, i32 noundef 0) #24
  %27 = icmp eq i64 %25, 1
  br i1 %27, label %72, label %73

28:                                               ; preds = %9
  %29 = getelementptr inbounds %struct._BlobInfo, ptr %11, i64 0, i32 3
  %30 = load i32, ptr %29, align 8, !tbaa !23
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %57, label %32

32:                                               ; preds = %28
  %33 = load i64, ptr %11, align 8, !tbaa !16
  tail call void @RelinquishMagickResource(i32 noundef 4, i64 noundef %33) #23
  %34 = tail call i64 @SeekBlob(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 2) #24
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %73, label %36

36:                                               ; preds = %32
  %37 = icmp ult i64 %34, %1
  br i1 %37, label %38, label %72

38:                                               ; preds = %36
  %39 = add nsw i64 %1, -1
  %40 = tail call i64 @SeekBlob(ptr noundef nonnull %0, i64 noundef %39, i32 noundef 0) #24
  %41 = load ptr, ptr %10, align 8, !tbaa !34
  %42 = getelementptr inbounds %struct._BlobInfo, ptr %41, i64 0, i32 12
  %43 = load ptr, ptr %42, align 8, !tbaa !21
  %44 = tail call i64 @fwrite(ptr noundef nonnull @.str.1, i64 noundef 1, i64 noundef 1, ptr noundef %43) #24
  %45 = tail call i64 @SeekBlob(ptr noundef nonnull %0, i64 noundef %40, i32 noundef 0) #24
  %46 = icmp eq i64 %44, 1
  br i1 %46, label %47, label %73

47:                                               ; preds = %38
  %48 = tail call i32 @AcquireMagickResource(i32 noundef 4, i64 noundef %1) #23
  %49 = load ptr, ptr %10, align 8, !tbaa !34
  %50 = getelementptr inbounds %struct._BlobInfo, ptr %49, i64 0, i32 12
  %51 = load ptr, ptr %50, align 8, !tbaa !21
  %52 = tail call i32 @fileno(ptr noundef %51) #23
  %53 = load ptr, ptr %10, align 8, !tbaa !34
  %54 = getelementptr inbounds %struct._BlobInfo, ptr %53, i64 0, i32 15
  store ptr null, ptr %54, align 8, !tbaa !22
  %55 = getelementptr inbounds %struct._BlobInfo, ptr %53, i64 0, i32 1
  store i64 %1, ptr %55, align 8, !tbaa !17
  store i64 %1, ptr %53, align 8, !tbaa !16
  %56 = tail call fastcc i32 @SyncBlob(ptr noundef nonnull %0) #24
  br label %72

57:                                               ; preds = %28
  %58 = getelementptr inbounds %struct._BlobInfo, ptr %11, i64 0, i32 1
  store i64 %1, ptr %58, align 8, !tbaa !17
  %59 = getelementptr inbounds %struct._BlobInfo, ptr %11, i64 0, i32 15
  %60 = load ptr, ptr %59, align 8, !tbaa !22
  %61 = add i64 %1, 1
  %62 = tail call ptr @ResizeQuantumMemory(ptr noundef %60, i64 noundef %61, i64 noundef 1) #30
  %63 = load ptr, ptr %10, align 8, !tbaa !34
  %64 = getelementptr inbounds %struct._BlobInfo, ptr %63, i64 0, i32 15
  store ptr %62, ptr %64, align 8, !tbaa !22
  %65 = tail call fastcc i32 @SyncBlob(ptr noundef nonnull %0) #24
  %66 = load ptr, ptr %10, align 8, !tbaa !34
  %67 = getelementptr inbounds %struct._BlobInfo, ptr %66, i64 0, i32 15
  %68 = load ptr, ptr %67, align 8, !tbaa !22
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %57
  %71 = tail call ptr @DetachBlob(ptr noundef nonnull %66) #24
  br label %73

72:                                               ; preds = %47, %36, %17, %19, %57, %9
  br label %73

73:                                               ; preds = %38, %32, %14, %9, %9, %9, %9, %19, %9, %72, %70
  %74 = phi i32 [ 1, %72 ], [ 0, %19 ], [ 0, %70 ], [ 0, %9 ], [ 0, %9 ], [ 0, %9 ], [ 0, %9 ], [ 0, %9 ], [ 0, %14 ], [ 0, %32 ], [ 0, %38 ]
  ret i32 %74
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GetBlobError(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !59
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1227, ptr noundef nonnull @.str.3, ptr noundef nonnull %6) #23
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct._BlobInfo, ptr %10, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !60
  ret i32 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @GetBlobFileHandle(ptr nocapture noundef readonly %0) local_unnamed_addr #15 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct._BlobInfo, ptr %3, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !21
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare i64 @time(ptr noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare ptr @AllocateSemaphoreInfo() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local nonnull ptr @GetBlobProperties(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !59
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1323, ptr noundef nonnull @.str.3, ptr noundef nonnull %6) #23
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct._BlobInfo, ptr %10, i64 0, i32 13
  ret ptr %11
}

; Function Attrs: optsize
declare i32 @GetPathAttributes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @GetBlobStreamData(ptr nocapture noundef readonly %0) local_unnamed_addr #15 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct._BlobInfo, ptr %3, i64 0, i32 15
  %5 = load ptr, ptr %4, align 8, !tbaa !22
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetBlobStreamHandler(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !59
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1462, ptr noundef nonnull @.str.3, ptr noundef nonnull %6) #23
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct._BlobInfo, ptr %10, i64 0, i32 14
  %12 = load ptr, ptr %11, align 8, !tbaa !68
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ImageToBlob(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  %6 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 52
  %7 = load i32, ptr %6, align 8, !tbaa !27
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1517, ptr noundef nonnull @.str.3, ptr noundef nonnull %10) #23
  br label %12

12:                                               ; preds = %9, %4
  store i64 0, ptr %2, align 8, !tbaa !49
  %13 = tail call ptr @CloneImageInfo(ptr noundef nonnull %0) #23
  %14 = getelementptr inbounds %struct._ImageInfo, ptr %13, i64 0, i32 3
  store i32 0, ptr %14, align 4, !tbaa !69
  %15 = tail call i32 @SetImageInfo(ptr noundef %13, i32 noundef 1, ptr noundef %3) #23
  %16 = getelementptr inbounds %struct._ImageInfo, ptr %13, i64 0, i32 48
  %17 = load i8, ptr %16, align 8, !tbaa !21
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 55
  %21 = tail call i64 @CopyMagickString(ptr noundef nonnull %20, ptr noundef nonnull %16, i64 noundef 4096) #23
  br label %22

22:                                               ; preds = %19, %12
  %23 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 55
  %24 = tail call ptr @GetMagickInfo(ptr noundef nonnull %23, ptr noundef %3) #23
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1532, i32 noundef 420, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, ptr noundef nonnull %23) #23
  %28 = tail call ptr @DestroyImageInfo(ptr noundef nonnull %13) #23
  br label %93

29:                                               ; preds = %22
  %30 = tail call i64 @CopyMagickString(ptr noundef nonnull %16, ptr noundef nonnull %23, i64 noundef 4096) #23
  %31 = tail call i32 @GetMagickBlobSupport(ptr noundef nonnull %24) #23
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %59, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct._ImageInfo, ptr %13, i64 0, i32 47
  store i64 0, ptr %34, align 8, !tbaa !33
  %35 = tail call dereferenceable_or_null(65541) ptr @AcquireQuantumMemory(i64 noundef 65541, i64 noundef 1) #29
  %36 = getelementptr inbounds %struct._ImageInfo, ptr %13, i64 0, i32 46
  store ptr %35, ptr %36, align 8, !tbaa !32
  %37 = icmp eq ptr %35, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %40 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1548, i32 noundef 400, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.7, ptr noundef nonnull %39) #23
  br label %90

41:                                               ; preds = %33
  %42 = tail call i32 @CloseBlob(ptr noundef %1) #24
  %43 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 52
  %44 = load ptr, ptr %43, align 8, !tbaa !34
  %45 = getelementptr inbounds %struct._BlobInfo, ptr %44, i64 0, i32 7
  store i32 1, ptr %45, align 8, !tbaa !48
  %46 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  store i8 0, ptr %46, align 8, !tbaa !21
  %47 = tail call i32 @WriteImage(ptr noundef nonnull %13, ptr noundef %1) #23
  %48 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  tail call void @InheritException(ptr noundef %3, ptr noundef nonnull %48) #23
  %49 = load ptr, ptr %43, align 8, !tbaa !34
  %50 = load i64, ptr %49, align 8, !tbaa !16
  store i64 %50, ptr %2, align 8, !tbaa !49
  %51 = tail call ptr @DetachBlob(ptr noundef nonnull %49) #24
  %52 = icmp eq i32 %47, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %41
  %54 = tail call ptr @RelinquishMagickMemory(ptr noundef %51) #23
  br label %90

55:                                               ; preds = %41
  %56 = load i64, ptr %2, align 8, !tbaa !49
  %57 = add i64 %56, 1
  %58 = tail call ptr @ResizeQuantumMemory(ptr noundef %51, i64 noundef %57, i64 noundef 1) #30
  br label %90

59:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #27
  %60 = call i32 @AcquireUniqueFileResource(ptr noundef nonnull %5) #23
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = tail call ptr @__errno_location() #25
  %64 = load i32, ptr %63, align 4, !tbaa !24
  %65 = call ptr @GetExceptionMessage(i32 noundef %64) #23
  %66 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %67 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1581, i32 noundef 435, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull %66, ptr noundef %65) #23
  %68 = call ptr @DestroyString(ptr noundef %65) #23
  br label %88

69:                                               ; preds = %59
  %70 = call noalias ptr @fdopen(i32 noundef %60, ptr noundef nonnull @.str.15) #23
  %71 = getelementptr inbounds %struct._ImageInfo, ptr %13, i64 0, i32 45
  store ptr %70, ptr %71, align 8, !tbaa !70
  %72 = icmp eq ptr %70, null
  br i1 %72, label %85, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %75 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %74, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef nonnull %23, ptr noundef nonnull %5) #23
  %76 = call i32 @WriteImage(ptr noundef nonnull %13, ptr noundef %1) #23
  %77 = call i32 @CloseBlob(ptr noundef %1) #24
  %78 = load ptr, ptr %71, align 8, !tbaa !70
  %79 = call i32 @fclose(ptr noundef %78) #24
  %80 = icmp eq i32 %76, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %73
  %82 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  call void @InheritException(ptr noundef %3, ptr noundef nonnull %82) #23
  br label %85

83:                                               ; preds = %73
  %84 = call ptr @FileToBlob(ptr noundef nonnull %5, i64 noundef -1, ptr noundef nonnull %2, ptr noundef %3) #24
  br label %85

85:                                               ; preds = %81, %83, %69
  %86 = phi ptr [ null, %81 ], [ %84, %83 ], [ null, %69 ]
  %87 = call i32 @RelinquishUniqueFileResource(ptr noundef nonnull %5) #23
  br label %88

88:                                               ; preds = %85, %62
  %89 = phi ptr [ null, %62 ], [ %86, %85 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #27
  br label %90

90:                                               ; preds = %38, %55, %53, %88
  %91 = phi ptr [ null, %38 ], [ %54, %53 ], [ %58, %55 ], [ %89, %88 ]
  %92 = call ptr @DestroyImageInfo(ptr noundef nonnull %13) #23
  br label %93

93:                                               ; preds = %90, %26
  %94 = phi ptr [ null, %26 ], [ %91, %90 ]
  ret ptr %94
}

; Function Attrs: optsize
declare i32 @WriteImage(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ImageToFile(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %5) #27
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !59
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1663, ptr noundef nonnull @.str.3, ptr noundef %1) #23
  br label %11

11:                                               ; preds = %9, %3
  %12 = load i8, ptr %1, align 1, !tbaa !21
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = tail call i32 @AcquireUniqueFileResource(ptr noundef nonnull %1) #23
  br label %24

16:                                               ; preds = %11
  %17 = tail call i32 @LocaleCompare(ptr noundef nonnull %1, ptr noundef nonnull @.str.11) #23
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !tbaa !53
  %21 = tail call i32 @fileno(ptr noundef %20) #23
  br label %24

22:                                               ; preds = %16
  %23 = tail call fastcc i32 @open_utf8(ptr noundef nonnull %1, i32 noundef 194, i32 noundef 384) #24
  br label %24

24:                                               ; preds = %19, %22, %14
  %25 = phi i32 [ %15, %14 ], [ %21, %19 ], [ %23, %22 ]
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = tail call ptr @__errno_location() #25
  %29 = load i32, ptr %28, align 4, !tbaa !24
  %30 = tail call ptr @GetExceptionMessage(i32 noundef %29) #23
  %31 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1674, i32 noundef 435, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull %1, ptr noundef %30) #23
  %32 = tail call ptr @DestroyString(ptr noundef %30) #23
  br label %96

33:                                               ; preds = %24
  %34 = call i32 @fstat(i32 noundef %25, ptr noundef nonnull %5) #23
  %35 = icmp eq i32 %34, 0
  %36 = getelementptr inbounds %struct.stat, ptr %5, i64 0, i32 8
  %37 = load i64, ptr %36, align 8
  %38 = icmp ne i64 %37, 0
  %39 = select i1 %35, i1 %38, i1 false
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = tail call fastcc i64 @MagickMin(i64 noundef %37, i64 noundef 262142) #24
  br label %42

42:                                               ; preds = %40, %33
  %43 = phi i64 [ %41, %40 ], [ 262142, %33 ]
  %44 = tail call ptr @AcquireQuantumMemory(i64 noundef %43, i64 noundef 1) #29
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = tail call i32 @close(i32 noundef %25) #23
  %48 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1685, i32 noundef 400, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.7, ptr noundef nonnull %1) #23
  br label %96

49:                                               ; preds = %42
  %50 = call fastcc ptr @ReadBlobStream(ptr noundef nonnull %0, i64 noundef %43, ptr noundef nonnull %44, ptr noundef nonnull %4) #24
  %51 = load i64, ptr %4, align 8, !tbaa !49
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %74

53:                                               ; preds = %49, %70
  %54 = phi i64 [ %72, %70 ], [ %51, %49 ]
  %55 = phi ptr [ %71, %70 ], [ %50, %49 ]
  br label %56

56:                                               ; preds = %53, %66
  %57 = phi i64 [ 0, %53 ], [ %68, %66 ]
  %58 = getelementptr inbounds i8, ptr %55, i64 %57
  %59 = sub nsw i64 %54, %57
  %60 = tail call i64 @write(i32 noundef %25, ptr noundef %58, i64 noundef %59) #23
  %61 = icmp slt i64 %60, 1
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = tail call ptr @__errno_location() #25
  %64 = load i32, ptr %63, align 4, !tbaa !24
  %65 = icmp eq i32 %64, 4
  br i1 %65, label %66, label %74

66:                                               ; preds = %56, %62
  %67 = phi i64 [ %60, %56 ], [ 0, %62 ]
  %68 = add i64 %67, %57
  %69 = icmp ult i64 %68, %54
  br i1 %69, label %56, label %70, !llvm.loop !71

70:                                               ; preds = %66
  store i64 %67, ptr %4, align 8, !tbaa !49
  %71 = call fastcc ptr @ReadBlobStream(ptr noundef %0, i64 noundef %43, ptr noundef nonnull %44, ptr noundef nonnull %4) #24
  %72 = load i64, ptr %4, align 8, !tbaa !49
  %73 = icmp sgt i64 %72, 0
  br i1 %73, label %53, label %74, !llvm.loop !72

74:                                               ; preds = %70, %62, %49
  %75 = phi i64 [ 0, %49 ], [ %57, %62 ], [ %68, %70 ]
  %76 = phi i64 [ 0, %49 ], [ %54, %62 ], [ %54, %70 ]
  %77 = tail call i32 @LocaleCompare(ptr noundef nonnull %1, ptr noundef nonnull @.str.11) #23
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %74
  %80 = tail call i32 @close(i32 noundef %25) #23
  br label %81

81:                                               ; preds = %79, %74
  %82 = phi i32 [ %80, %79 ], [ %25, %74 ]
  %83 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %44) #23
  %84 = icmp eq i32 %82, -1
  %85 = icmp ult i64 %75, %76
  %86 = or i1 %85, %84
  br i1 %86, label %87, label %96

87:                                               ; preds = %81
  br i1 %84, label %90, label %88

88:                                               ; preds = %87
  %89 = tail call i32 @close(i32 noundef %82) #23
  br label %90

90:                                               ; preds = %88, %87
  %91 = tail call ptr @__errno_location() #25
  %92 = load i32, ptr %91, align 4, !tbaa !24
  %93 = tail call ptr @GetExceptionMessage(i32 noundef %92) #23
  %94 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1714, i32 noundef 435, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull %1, ptr noundef %93) #23
  %95 = tail call ptr @DestroyString(ptr noundef %93) #23
  br label %96

96:                                               ; preds = %81, %90, %46, %27
  %97 = phi i32 [ 0, %27 ], [ 0, %46 ], [ 0, %90 ], [ 1, %81 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #27
  ret i32 %97
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ImagesToBlob(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  %6 = alloca [4096 x i8], align 16
  %7 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 52
  %8 = load i32, ptr %7, align 8, !tbaa !27
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1773, ptr noundef nonnull @.str.3, ptr noundef nonnull %11) #23
  br label %13

13:                                               ; preds = %10, %4
  store i64 0, ptr %2, align 8, !tbaa !49
  %14 = tail call ptr @CloneImageInfo(ptr noundef nonnull %0) #23
  %15 = tail call i64 @GetImageListLength(ptr noundef %1) #23
  %16 = trunc i64 %15 to i32
  %17 = tail call i32 @SetImageInfo(ptr noundef %14, i32 noundef %16, ptr noundef %3) #23
  %18 = getelementptr inbounds %struct._ImageInfo, ptr %14, i64 0, i32 48
  %19 = load i8, ptr %18, align 8, !tbaa !21
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 55
  %23 = tail call i64 @CopyMagickString(ptr noundef nonnull %22, ptr noundef nonnull %18, i64 noundef 4096) #23
  br label %24

24:                                               ; preds = %21, %13
  %25 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 55
  %26 = tail call ptr @GetMagickInfo(ptr noundef nonnull %25, ptr noundef %3) #23
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1788, i32 noundef 420, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, ptr noundef nonnull %25) #23
  %30 = tail call ptr @DestroyImageInfo(ptr noundef nonnull %14) #23
  br label %99

31:                                               ; preds = %24
  %32 = tail call i32 @GetMagickAdjoin(ptr noundef nonnull %26) #23
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = tail call ptr @DestroyImageInfo(ptr noundef nonnull %14) #23
  %36 = tail call ptr @ImageToBlob(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3) #24
  br label %99

37:                                               ; preds = %31
  %38 = tail call i64 @CopyMagickString(ptr noundef nonnull %18, ptr noundef nonnull %25, i64 noundef 4096) #23
  %39 = tail call i32 @GetMagickBlobSupport(ptr noundef nonnull %26) #23
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %66, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct._ImageInfo, ptr %14, i64 0, i32 47
  store i64 0, ptr %42, align 8, !tbaa !33
  %43 = tail call dereferenceable_or_null(65541) ptr @AcquireQuantumMemory(i64 noundef 65541, i64 noundef 1) #29
  %44 = getelementptr inbounds %struct._ImageInfo, ptr %14, i64 0, i32 46
  store ptr %43, ptr %44, align 8, !tbaa !32
  %45 = icmp eq ptr %43, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %48 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1809, i32 noundef 400, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.7, ptr noundef nonnull %47) #23
  br label %96

49:                                               ; preds = %41
  %50 = tail call i32 @CloseBlob(ptr noundef %1) #24
  %51 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 52
  %52 = load ptr, ptr %51, align 8, !tbaa !34
  %53 = getelementptr inbounds %struct._BlobInfo, ptr %52, i64 0, i32 7
  store i32 1, ptr %53, align 8, !tbaa !48
  %54 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  store i8 0, ptr %54, align 8, !tbaa !21
  %55 = tail call i32 @WriteImages(ptr noundef nonnull %14, ptr noundef %1, ptr noundef nonnull %54, ptr noundef %3) #23
  %56 = load ptr, ptr %51, align 8, !tbaa !34
  %57 = load i64, ptr %56, align 8, !tbaa !16
  store i64 %57, ptr %2, align 8, !tbaa !49
  %58 = tail call ptr @DetachBlob(ptr noundef nonnull %56) #24
  %59 = icmp eq i32 %55, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %49
  %61 = tail call ptr @RelinquishMagickMemory(ptr noundef %58) #23
  br label %96

62:                                               ; preds = %49
  %63 = load i64, ptr %2, align 8, !tbaa !49
  %64 = add i64 %63, 1
  %65 = tail call ptr @ResizeQuantumMemory(ptr noundef %58, i64 noundef %64, i64 noundef 1) #30
  br label %96

66:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #27
  %67 = call i32 @AcquireUniqueFileResource(ptr noundef nonnull %6) #23
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = tail call ptr @__errno_location() #25
  %71 = load i32, ptr %70, align 4, !tbaa !24
  %72 = call ptr @GetExceptionMessage(i32 noundef %71) #23
  %73 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %74 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1842, i32 noundef 430, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull %73, ptr noundef %72) #23
  %75 = call ptr @DestroyString(ptr noundef %72) #23
  br label %94

76:                                               ; preds = %66
  %77 = call noalias ptr @fdopen(i32 noundef %67, ptr noundef nonnull @.str.15) #23
  %78 = getelementptr inbounds %struct._ImageInfo, ptr %14, i64 0, i32 45
  store ptr %77, ptr %78, align 8, !tbaa !70
  %79 = icmp eq ptr %77, null
  br i1 %79, label %91, label %80

80:                                               ; preds = %76
  %81 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef nonnull %25, ptr noundef nonnull %6) #23
  %82 = call i32 @WriteImages(ptr noundef nonnull %14, ptr noundef %1, ptr noundef nonnull %5, ptr noundef %3) #23
  %83 = call i32 @CloseBlob(ptr noundef %1) #24
  %84 = load ptr, ptr %78, align 8, !tbaa !70
  %85 = call i32 @fclose(ptr noundef %84) #24
  %86 = icmp eq i32 %82, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  call void @InheritException(ptr noundef %3, ptr noundef nonnull %88) #23
  br label %91

89:                                               ; preds = %80
  %90 = call ptr @FileToBlob(ptr noundef nonnull %6, i64 noundef -1, ptr noundef nonnull %2, ptr noundef %3) #24
  br label %91

91:                                               ; preds = %87, %89, %76
  %92 = phi ptr [ null, %87 ], [ %90, %89 ], [ null, %76 ]
  %93 = call i32 @RelinquishUniqueFileResource(ptr noundef nonnull %6) #23
  br label %94

94:                                               ; preds = %91, %69
  %95 = phi ptr [ null, %69 ], [ %92, %91 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #27
  br label %96

96:                                               ; preds = %46, %62, %60, %94
  %97 = phi ptr [ null, %46 ], [ %61, %60 ], [ %65, %62 ], [ %95, %94 ]
  %98 = call ptr @DestroyImageInfo(ptr noundef nonnull %14) #23
  br label %99

99:                                               ; preds = %96, %34, %28
  %100 = phi ptr [ null, %28 ], [ %36, %34 ], [ %97, %96 ]
  ret ptr %100
}

; Function Attrs: optsize
declare i64 @GetImageListLength(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @GetMagickAdjoin(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @WriteImages(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @InjectImageBlob(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca [4096 x i8], align 16
  %7 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %7) #27
  %8 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 59
  %9 = load i32, ptr %8, align 8, !tbaa !59
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1942, ptr noundef nonnull @.str.3, ptr noundef nonnull %12) #23
  br label %14

14:                                               ; preds = %11, %5
  %15 = call i32 @AcquireUniqueFileResource(ptr noundef nonnull %6) #23
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = call noalias ptr @fdopen(i32 noundef %15, ptr noundef nonnull @.str.15) #23
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %14, %17
  %21 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %22 = call i64 @CopyMagickString(ptr noundef nonnull %21, ptr noundef nonnull %6, i64 noundef 4096) #23
  %23 = tail call ptr @__errno_location() #25
  %24 = load i32, ptr %23, align 4, !tbaa !24
  %25 = call ptr @GetExceptionMessage(i32 noundef %24) #23
  %26 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1954, i32 noundef 430, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.5, ptr noundef nonnull %21, ptr noundef %25) #23
  %27 = call ptr @DestroyString(ptr noundef %25) #23
  br label %100

28:                                               ; preds = %17
  %29 = call ptr @CloneImage(ptr noundef %2, i64 noundef 0, i64 noundef 0, i32 noundef 0, ptr noundef %4) #23
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = call i32 @fclose(ptr noundef nonnull %18) #24
  %33 = call i32 @RelinquishUniqueFileResource(ptr noundef nonnull %6) #23
  br label %100

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct._Image, ptr %29, i64 0, i32 53
  %36 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %35, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef %3, ptr noundef nonnull %6) #23
  call void @DestroyBlob(ptr noundef nonnull %29) #24
  %37 = call ptr @CloneBlobInfo(ptr noundef null) #24
  %38 = getelementptr inbounds %struct._Image, ptr %29, i64 0, i32 52
  store ptr %37, ptr %38, align 8, !tbaa !34
  %39 = call ptr @CloneImageInfo(ptr noundef %0) #23
  call void @SetImageInfoFile(ptr noundef %39, ptr noundef nonnull %18) #23
  %40 = call i32 @WriteImage(ptr noundef %39, ptr noundef nonnull %29) #23
  %41 = call ptr @DestroyImageInfo(ptr noundef %39) #23
  %42 = call ptr @DestroyImage(ptr noundef nonnull %29) #23
  %43 = call i32 @fclose(ptr noundef nonnull %18) #24
  %44 = icmp eq i32 %40, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %34
  %46 = call i32 @RelinquishUniqueFileResource(ptr noundef nonnull %6) #23
  br label %100

47:                                               ; preds = %34
  %48 = call fastcc i32 @open_utf8(ptr noundef nonnull %6, i32 noundef 0, i32 noundef 0) #24
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = call i32 @RelinquishUniqueFileResource(ptr noundef nonnull %6) #23
  %52 = tail call ptr @__errno_location() #25
  %53 = load i32, ptr %52, align 4, !tbaa !24
  %54 = call ptr @GetExceptionMessage(i32 noundef %53) #23
  %55 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %56 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1987, i32 noundef 430, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.5, ptr noundef nonnull %55, ptr noundef %54) #23
  %57 = call ptr @DestroyString(ptr noundef %54) #23
  br label %100

58:                                               ; preds = %47
  %59 = call i32 @fstat(i32 noundef %48, ptr noundef nonnull %7) #23
  %60 = icmp eq i32 %59, 0
  %61 = getelementptr inbounds %struct.stat, ptr %7, i64 0, i32 8
  %62 = load i64, ptr %61, align 8
  %63 = icmp ne i64 %62, 0
  %64 = select i1 %60, i1 %63, i1 false
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = call fastcc i64 @MagickMin(i64 noundef %62, i64 noundef 262142) #24
  br label %67

67:                                               ; preds = %65, %58
  %68 = phi i64 [ %66, %65 ], [ 262142, %58 ]
  %69 = call ptr @AcquireQuantumMemory(i64 noundef %68, i64 noundef 1) #29
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = call i32 @RelinquishUniqueFileResource(ptr noundef nonnull %6) #23
  %73 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %74 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %75 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %73, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1998, i32 noundef 400, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.7, ptr noundef nonnull %74) #23
  br label %100

76:                                               ; preds = %67, %84
  %77 = phi i32 [ %88, %84 ], [ %40, %67 ]
  %78 = call i64 @read(i32 noundef %48, ptr noundef nonnull %69, i64 noundef %68) #23
  %79 = icmp slt i64 %78, 1
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = tail call ptr @__errno_location() #25
  %82 = load i32, ptr %81, align 4, !tbaa !24
  %83 = icmp eq i32 %82, 4
  br i1 %83, label %84, label %89

84:                                               ; preds = %80, %76
  %85 = phi i64 [ 0, %80 ], [ %78, %76 ]
  %86 = call fastcc i64 @WriteBlobStream(ptr noundef %1, i64 noundef %85, ptr noundef nonnull %69) #24
  %87 = icmp eq i64 %86, %85
  %88 = zext i1 %87 to i32
  br label %76

89:                                               ; preds = %80
  %90 = call i32 @close(i32 noundef %48) #23
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = load i32, ptr %81, align 4, !tbaa !24
  %94 = call ptr @GetExceptionMessage(i32 noundef %93) #23
  %95 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2014, i32 noundef 430, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull %6, ptr noundef %94) #23
  %96 = call ptr @DestroyString(ptr noundef %94) #23
  br label %97

97:                                               ; preds = %92, %89
  %98 = call i32 @RelinquishUniqueFileResource(ptr noundef nonnull %6) #23
  %99 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %69) #23
  br label %100

100:                                              ; preds = %71, %97, %50, %45, %31, %20
  %101 = phi i32 [ 0, %20 ], [ 0, %31 ], [ 0, %45 ], [ 0, %50 ], [ %77, %97 ], [ 0, %71 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #27
  ret i32 %101
}

; Function Attrs: optsize
declare ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @SetImageInfoFile(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @IsBlobExempt(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !59
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2047, ptr noundef nonnull @.str.3, ptr noundef nonnull %6) #23
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct._BlobInfo, ptr %10, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !48
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @IsBlobSeekable(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !59
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2081, ptr noundef nonnull @.str.3, ptr noundef nonnull %6) #23
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct._BlobInfo, ptr %10, i64 0, i32 11
  %12 = load i32, ptr %11, align 8, !tbaa !20
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @IsBlobTemporary(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !59
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2127, ptr noundef nonnull @.str.3, ptr noundef nonnull %6) #23
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct._BlobInfo, ptr %10, i64 0, i32 10
  %12 = load i32, ptr %11, align 4, !tbaa !73
  ret i32 %12
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MSBOrderLong(ptr noundef %0, i64 noundef %1) local_unnamed_addr #16 {
  %3 = getelementptr inbounds i8, ptr %0, i64 %1
  %4 = icmp sgt i64 %1, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %2, %5
  %6 = phi ptr [ %9, %5 ], [ %0, %2 ]
  %7 = load <4 x i8>, ptr %6, align 1, !tbaa !21
  %8 = shufflevector <4 x i8> %7, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %8, ptr %6, align 1, !tbaa !21
  %9 = getelementptr inbounds i8, ptr %6, i64 4
  %10 = icmp ult ptr %9, %3
  br i1 %10, label %5, label %11, !llvm.loop !74

11:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MSBOrderShort(ptr noundef %0, i64 noundef %1) local_unnamed_addr #16 {
  %3 = getelementptr inbounds i8, ptr %0, i64 %1
  %4 = icmp sgt i64 %1, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %2, %5
  %6 = phi ptr [ %10, %5 ], [ %0, %2 ]
  %7 = load i8, ptr %6, align 1, !tbaa !21
  %8 = getelementptr inbounds i8, ptr %6, i64 1
  %9 = load i8, ptr %8, align 1, !tbaa !21
  store i8 %9, ptr %6, align 1, !tbaa !21
  %10 = getelementptr inbounds i8, ptr %6, i64 2
  store i8 %7, ptr %8, align 1, !tbaa !21
  %11 = icmp ult ptr %10, %3
  br i1 %11, label %5, label %12, !llvm.loop !75

12:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @OpenBlob(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  %6 = alloca [4096 x i8], align 16
  %7 = alloca [4096 x i8], align 16
  %8 = alloca [4096 x i8], align 16
  %9 = alloca [3 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #27
  %10 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 52
  %11 = load i32, ptr %10, align 8, !tbaa !27
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %15 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2369, ptr noundef nonnull @.str.3, ptr noundef nonnull %14) #23
  br label %16

16:                                               ; preds = %13, %4
  %17 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 46
  %18 = load ptr, ptr %17, align 8, !tbaa !32
  %19 = icmp eq ptr %18, null
  br i1 %19, label %31, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 44
  %22 = load ptr, ptr %21, align 8, !tbaa !76
  %23 = icmp eq ptr %22, null
  %24 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 52
  %25 = load ptr, ptr %24, align 8, !tbaa !34
  br i1 %23, label %28, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct._BlobInfo, ptr %25, i64 0, i32 14
  store ptr %22, ptr %27, align 8, !tbaa !68
  br label %28

28:                                               ; preds = %20, %26
  %29 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 47
  %30 = load i64, ptr %29, align 8, !tbaa !33
  tail call void @AttachBlob(ptr noundef %25, ptr noundef nonnull %18, i64 noundef %30) #24
  br label %254

31:                                               ; preds = %16
  %32 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 52
  %33 = load ptr, ptr %32, align 8, !tbaa !34
  %34 = tail call ptr @DetachBlob(ptr noundef %33) #24
  %35 = add i32 %2, -2
  %36 = icmp ult i32 %35, 5
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = zext nneg i32 %35 to i64
  %39 = shl i64 %38, 2
  %40 = call ptr @llvm.load.relative.i64(ptr @reltable.OpenBlob, i64 %39)
  br label %41

41:                                               ; preds = %37, %31
  %42 = phi ptr [ @.str.18, %31 ], [ %40, %37 ]
  %43 = load i8, ptr %42, align 1, !tbaa !21
  %44 = icmp eq i8 %43, 114
  br i1 %44, label %53, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 61
  %47 = load i32, ptr %46, align 8, !tbaa !77
  %48 = load ptr, ptr %32, align 8, !tbaa !34
  %49 = getelementptr inbounds %struct._BlobInfo, ptr %48, i64 0, i32 8
  store i32 %47, ptr %49, align 4, !tbaa !50
  %50 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 44
  %51 = load ptr, ptr %50, align 8, !tbaa !76
  %52 = icmp eq ptr %51, null
  br i1 %52, label %65, label %60

53:                                               ; preds = %41
  %54 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 44
  %55 = load ptr, ptr %54, align 8, !tbaa !76
  %56 = icmp eq ptr %55, null
  br i1 %56, label %65, label %57

57:                                               ; preds = %53
  %58 = load ptr, ptr %32, align 8, !tbaa !34
  %59 = getelementptr inbounds %struct._BlobInfo, ptr %58, i64 0, i32 14
  store ptr %55, ptr %59, align 8, !tbaa !68
  br label %65

60:                                               ; preds = %45
  %61 = getelementptr inbounds %struct._BlobInfo, ptr %48, i64 0, i32 14
  store ptr %51, ptr %61, align 8, !tbaa !68
  %62 = icmp eq i8 %43, 119
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct._BlobInfo, ptr %48, i64 0, i32 11
  store i32 6, ptr %64, align 8, !tbaa !20
  br label %254

65:                                               ; preds = %57, %53, %60, %45
  store i8 0, ptr %6, align 16, !tbaa !21
  %66 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %67 = call i64 @CopyMagickString(ptr noundef nonnull %6, ptr noundef nonnull %66, i64 noundef 4096) #23
  %68 = icmp eq i8 %43, 119
  %69 = select i1 %68, i32 2, i32 1
  %70 = call i32 @IsRightsAuthorized(i32 noundef 4, i32 noundef %69, ptr noundef nonnull %6) #23
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = tail call ptr @__errno_location() #25
  store i32 1, ptr %73, align 4, !tbaa !24
  %74 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2413, i32 noundef 499, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.7, ptr noundef nonnull %6) #23
  br label %254

75:                                               ; preds = %65
  %76 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.11) #23
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %75
  %79 = load i8, ptr %6, align 16, !tbaa !21
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 45
  %83 = load ptr, ptr %82, align 8, !tbaa !70
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %94

85:                                               ; preds = %81, %75
  %86 = load ptr, ptr @stdin, align 8
  %87 = load ptr, ptr @stdout, align 8
  %88 = select i1 %44, ptr %86, ptr %87
  %89 = load ptr, ptr %32, align 8, !tbaa !34
  %90 = getelementptr inbounds %struct._BlobInfo, ptr %89, i64 0, i32 12
  store ptr %88, ptr %90, align 8, !tbaa !21
  %91 = load ptr, ptr %32, align 8, !tbaa !34
  %92 = getelementptr inbounds %struct._BlobInfo, ptr %91, i64 0, i32 11
  store i32 2, ptr %92, align 8, !tbaa !20
  %93 = getelementptr inbounds %struct._BlobInfo, ptr %91, i64 0, i32 7
  store i32 1, ptr %93, align 8, !tbaa !48
  br label %254

94:                                               ; preds = %81, %78
  %95 = call i32 @LocaleNCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.25, i64 noundef 3) #23
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %94
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %7) #27
  store i8 %43, ptr %7, align 16, !tbaa !21
  %98 = getelementptr inbounds [4096 x i8], ptr %7, i64 0, i64 1
  store i8 0, ptr %98, align 1, !tbaa !21
  %99 = getelementptr inbounds i8, ptr %6, i64 3
  %100 = call fastcc i64 @StringToLong(ptr noundef nonnull %99) #24
  %101 = trunc i64 %100 to i32
  %102 = call noalias ptr @fdopen(i32 noundef %101, ptr noundef nonnull %7) #23
  %103 = load ptr, ptr %32, align 8, !tbaa !34
  %104 = getelementptr inbounds %struct._BlobInfo, ptr %103, i64 0, i32 12
  store ptr %102, ptr %104, align 8, !tbaa !21
  %105 = load ptr, ptr %32, align 8, !tbaa !34
  %106 = getelementptr inbounds %struct._BlobInfo, ptr %105, i64 0, i32 11
  store i32 2, ptr %106, align 8, !tbaa !20
  %107 = getelementptr inbounds %struct._BlobInfo, ptr %105, i64 0, i32 7
  store i32 1, ptr %107, align 8, !tbaa !48
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %7) #27
  br label %254

108:                                              ; preds = %94
  %109 = load ptr, ptr %32, align 8, !tbaa !34
  %110 = getelementptr inbounds %struct._BlobInfo, ptr %109, i64 0, i32 13
  %111 = call i32 @GetPathAttributes(ptr noundef nonnull %6, ptr noundef nonnull %110) #23
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %136, label %113

113:                                              ; preds = %108
  %114 = load ptr, ptr %32, align 8, !tbaa !34
  %115 = getelementptr inbounds %struct._BlobInfo, ptr %114, i64 0, i32 13, i32 3
  %116 = load i32, ptr %115, align 8, !tbaa !78
  %117 = and i32 %116, 61440
  %118 = icmp eq i32 %117, 4096
  br i1 %118, label %119, label %136

119:                                              ; preds = %113
  %120 = call fastcc ptr @fopen_utf8(ptr noundef nonnull %6, ptr noundef nonnull %42) #24
  %121 = load ptr, ptr %32, align 8, !tbaa !34
  %122 = getelementptr inbounds %struct._BlobInfo, ptr %121, i64 0, i32 12
  store ptr %120, ptr %122, align 8, !tbaa !21
  %123 = load ptr, ptr %32, align 8, !tbaa !34
  %124 = getelementptr inbounds %struct._BlobInfo, ptr %123, i64 0, i32 12
  %125 = load ptr, ptr %124, align 8, !tbaa !21
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %133

127:                                              ; preds = %119
  %128 = tail call ptr @__errno_location() #25
  %129 = load i32, ptr %128, align 4, !tbaa !24
  %130 = call ptr @GetExceptionMessage(i32 noundef %129) #23
  %131 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2478, i32 noundef 435, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.5, ptr noundef nonnull %6, ptr noundef %130) #23
  %132 = call ptr @DestroyString(ptr noundef %130) #23
  br label %254

133:                                              ; preds = %119
  %134 = getelementptr inbounds %struct._BlobInfo, ptr %123, i64 0, i32 11
  store i32 1, ptr %134, align 8, !tbaa !20
  %135 = getelementptr inbounds %struct._BlobInfo, ptr %123, i64 0, i32 7
  store i32 1, ptr %135, align 8, !tbaa !48
  br label %254

136:                                              ; preds = %113, %108
  call void @GetPathComponent(ptr noundef nonnull %66, i32 noundef 6, ptr noundef nonnull %5) #23
  br i1 %68, label %137, label %170

137:                                              ; preds = %136
  %138 = call i64 @CopyMagickString(ptr noundef nonnull %6, ptr noundef nonnull %66, i64 noundef 4096) #23
  %139 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 3
  %140 = load i32, ptr %139, align 4, !tbaa !69
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %137
  %143 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %6, i32 noundef 37) #31
  %144 = icmp eq ptr %143, null
  br i1 %144, label %170, label %145

145:                                              ; preds = %142, %137
  %146 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 39
  %147 = load i64, ptr %146, align 8, !tbaa !79
  %148 = trunc i64 %147 to i32
  %149 = call i64 @InterpretImageFilename(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %66, i32 noundef %148, ptr noundef nonnull %6) #23
  %150 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull %66) #23
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %168

152:                                              ; preds = %145
  %153 = call ptr @GetPreviousImageInList(ptr noundef nonnull %1) #23
  %154 = icmp eq ptr %153, null
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = call ptr @GetNextImageInList(ptr noundef nonnull %1) #23
  %157 = icmp eq ptr %156, null
  br i1 %157, label %168, label %158

158:                                              ; preds = %155, %152
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %8) #27
  call void @GetPathComponent(ptr noundef nonnull %66, i32 noundef 2, ptr noundef nonnull %8) #23
  %159 = load i8, ptr %5, align 16, !tbaa !21
  %160 = icmp eq i8 %159, 0
  %161 = load i64, ptr %146, align 8, !tbaa !79
  %162 = uitofp i64 %161 to double
  br i1 %160, label %163, label %165

163:                                              ; preds = %158
  %164 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.26, ptr noundef nonnull %8, double noundef %162) #23
  br label %167

165:                                              ; preds = %158
  %166 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.27, ptr noundef nonnull %8, double noundef %162, ptr noundef nonnull %5) #23
  br label %167

167:                                              ; preds = %165, %163
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %8) #27
  br label %168

168:                                              ; preds = %167, %155, %145
  %169 = call i64 @CopyMagickString(ptr noundef nonnull %66, ptr noundef nonnull %6, i64 noundef 4096) #23
  br label %170

170:                                              ; preds = %142, %168, %136
  %171 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 45
  %172 = load ptr, ptr %171, align 8, !tbaa !70
  %173 = icmp eq ptr %172, null
  br i1 %173, label %180, label %174

174:                                              ; preds = %170
  %175 = load ptr, ptr %32, align 8, !tbaa !34
  %176 = getelementptr inbounds %struct._BlobInfo, ptr %175, i64 0, i32 12
  store ptr %172, ptr %176, align 8, !tbaa !21
  %177 = load ptr, ptr %32, align 8, !tbaa !34
  %178 = getelementptr inbounds %struct._BlobInfo, ptr %177, i64 0, i32 11
  store i32 1, ptr %178, align 8, !tbaa !20
  %179 = getelementptr inbounds %struct._BlobInfo, ptr %177, i64 0, i32 7
  store i32 1, ptr %179, align 8, !tbaa !48
  br label %238

180:                                              ; preds = %170
  %181 = call fastcc ptr @fopen_utf8(ptr noundef nonnull %6, ptr noundef nonnull %42) #24
  %182 = load ptr, ptr %32, align 8, !tbaa !34
  %183 = getelementptr inbounds %struct._BlobInfo, ptr %182, i64 0, i32 12
  store ptr %181, ptr %183, align 8, !tbaa !21
  %184 = load ptr, ptr %32, align 8, !tbaa !34
  %185 = getelementptr inbounds %struct._BlobInfo, ptr %184, i64 0, i32 12
  %186 = load ptr, ptr %185, align 8, !tbaa !21
  %187 = icmp eq ptr %186, null
  br i1 %44, label %188, label %235

188:                                              ; preds = %180
  br i1 %187, label %238, label %189

189:                                              ; preds = %188
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %9) #27
  %190 = getelementptr inbounds %struct._BlobInfo, ptr %184, i64 0, i32 11
  store i32 1, ptr %190, align 8, !tbaa !20
  %191 = call ptr @ResetMagickMemory(ptr noundef nonnull %9, i32 noundef 0, i64 noundef 3) #23
  %192 = load ptr, ptr %32, align 8, !tbaa !34
  %193 = getelementptr inbounds %struct._BlobInfo, ptr %192, i64 0, i32 12
  %194 = load ptr, ptr %193, align 8, !tbaa !21
  %195 = call i64 @fread(ptr noundef nonnull %9, i64 noundef 1, i64 noundef 3, ptr noundef %194) #24
  %196 = load ptr, ptr %32, align 8, !tbaa !34
  %197 = getelementptr inbounds %struct._BlobInfo, ptr %196, i64 0, i32 12
  %198 = load ptr, ptr %197, align 8, !tbaa !21
  %199 = sub nsw i64 0, %195
  %200 = call i32 @fseek(ptr noundef %198, i64 noundef %199, i32 noundef 1) #24
  %201 = load ptr, ptr %32, align 8, !tbaa !34
  %202 = getelementptr inbounds %struct._BlobInfo, ptr %201, i64 0, i32 12
  %203 = load ptr, ptr %202, align 8, !tbaa !21
  %204 = call i32 @fflush(ptr noundef %203) #24
  %205 = uitofp i64 %195 to double
  %206 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2546, ptr noundef nonnull @.str.28, double noundef %205) #23
  %207 = load ptr, ptr %32, align 8, !tbaa !34
  %208 = getelementptr inbounds %struct._BlobInfo, ptr %207, i64 0, i32 11
  %209 = load i32, ptr %208, align 8, !tbaa !20
  %210 = icmp eq i32 %209, 1
  br i1 %210, label %211, label %233

211:                                              ; preds = %189
  %212 = call ptr @AcquireExceptionInfo() #23
  %213 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 48
  %214 = call ptr @GetMagickInfo(ptr noundef nonnull %213, ptr noundef %212) #23
  %215 = call ptr @DestroyExceptionInfo(ptr noundef %212) #23
  %216 = load ptr, ptr %32, align 8, !tbaa !34
  %217 = getelementptr inbounds %struct._BlobInfo, ptr %216, i64 0, i32 13, i32 8
  %218 = load i64, ptr %217, align 8, !tbaa !80
  %219 = icmp eq ptr %214, null
  br i1 %219, label %233, label %220

220:                                              ; preds = %211
  %221 = call i32 @GetMagickBlobSupport(ptr noundef nonnull %214) #23
  %222 = icmp ne i32 %221, 0
  %223 = icmp ult i64 %218, 262143
  %224 = select i1 %222, i1 %223, i1 false
  br i1 %224, label %225, label %233

225:                                              ; preds = %220
  %226 = call i32 @AcquireMagickResource(i32 noundef 4, i64 noundef %218) #23
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %233, label %228

228:                                              ; preds = %225
  %229 = load ptr, ptr %32, align 8, !tbaa !34
  %230 = getelementptr inbounds %struct._BlobInfo, ptr %229, i64 0, i32 12
  %231 = load ptr, ptr %230, align 8, !tbaa !21
  %232 = call i32 @fileno(ptr noundef %231) #23
  call void @RelinquishMagickResource(i32 noundef 4, i64 noundef %218) #23
  br label %233

233:                                              ; preds = %211, %220, %225, %228, %189
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %9) #27
  %234 = load ptr, ptr %32, align 8, !tbaa !34
  br label %238

235:                                              ; preds = %180
  br i1 %187, label %238, label %236

236:                                              ; preds = %235
  %237 = getelementptr inbounds %struct._BlobInfo, ptr %184, i64 0, i32 11
  store i32 1, ptr %237, align 8, !tbaa !20
  br label %238

238:                                              ; preds = %233, %188, %236, %235, %174
  %239 = phi ptr [ %234, %233 ], [ %184, %188 ], [ %184, %236 ], [ %184, %235 ], [ %177, %174 ]
  %240 = getelementptr inbounds %struct._BlobInfo, ptr %239, i64 0, i32 9
  store i32 0, ptr %240, align 8, !tbaa !60
  %241 = getelementptr inbounds %struct._BlobInfo, ptr %239, i64 0, i32 11
  %242 = load i32, ptr %241, align 8, !tbaa !20
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %248, label %244

244:                                              ; preds = %238
  %245 = call i64 @GetBlobSize(ptr noundef nonnull %1) #24
  %246 = load ptr, ptr %32, align 8, !tbaa !34
  %247 = getelementptr inbounds %struct._BlobInfo, ptr %246, i64 0, i32 6
  store i64 %245, ptr %247, align 8, !tbaa !61
  br label %254

248:                                              ; preds = %238
  %249 = tail call ptr @__errno_location() #25
  %250 = load i32, ptr %249, align 4, !tbaa !24
  %251 = call ptr @GetExceptionMessage(i32 noundef %250) #23
  %252 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2657, i32 noundef 435, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.5, ptr noundef nonnull %6, ptr noundef %251) #23
  %253 = call ptr @DestroyString(ptr noundef %251) #23
  br label %254

254:                                              ; preds = %244, %248, %133, %127, %97, %85, %72, %63, %28
  %255 = phi i32 [ 1, %28 ], [ 1, %63 ], [ 0, %72 ], [ 1, %85 ], [ 1, %97 ], [ 0, %127 ], [ 1, %133 ], [ 1, %244 ], [ 0, %248 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #27
  ret i32 %255
}

; Function Attrs: optsize
declare i32 @IsRightsAuthorized(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @LocaleNCompare(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn uwtable
define internal fastcc i64 @StringToLong(ptr noalias nocapture noundef readonly %0) unnamed_addr #17 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10) #23
  ret i64 %2
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc noalias noundef ptr @fopen_utf8(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef %1) #24
  ret ptr %3
}

; Function Attrs: optsize
declare void @GetPathComponent(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #18

; Function Attrs: optsize
declare i64 @InterpretImageFilename(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetPreviousImageInList(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare ptr @AcquireExceptionInfo() local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @AcquireMagickResource(i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #19

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PingBlob(ptr noundef %0, ptr noundef readonly %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 52
  %6 = load i32, ptr %5, align 8, !tbaa !27
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2726, ptr noundef nonnull @.str.3, ptr noundef nonnull %9) #23
  br label %11

11:                                               ; preds = %8, %4
  %12 = icmp eq ptr %1, null
  %13 = icmp eq i64 %2, 0
  %14 = or i1 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 48
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2731, i32 noundef 435, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.7, ptr noundef nonnull %16) #23
  br label %32

18:                                               ; preds = %11
  %19 = tail call ptr @CloneImageInfo(ptr noundef nonnull %0) #23
  %20 = tail call ptr @AcquireQuantumMemory(i64 noundef %2, i64 noundef 1) #29
  %21 = getelementptr inbounds %struct._ImageInfo, ptr %19, i64 0, i32 46
  store ptr %20, ptr %21, align 8, !tbaa !32
  %22 = icmp eq ptr %20, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2739, i32 noundef 700, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1) #23
  br label %32

25:                                               ; preds = %18
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %20, ptr nonnull align 1 %1, i64 %2, i1 false)
  %26 = getelementptr inbounds %struct._ImageInfo, ptr %19, i64 0, i32 47
  store i64 %2, ptr %26, align 8, !tbaa !33
  %27 = getelementptr inbounds %struct._ImageInfo, ptr %19, i64 0, i32 34
  store i32 1, ptr %27, align 8, !tbaa !81
  %28 = tail call ptr @ReadStream(ptr noundef nonnull %19, ptr noundef nonnull @PingStream, ptr noundef %3) #23
  %29 = load ptr, ptr %21, align 8, !tbaa !32
  %30 = tail call ptr @RelinquishMagickMemory(ptr noundef %29) #23
  store ptr %30, ptr %21, align 8, !tbaa !32
  %31 = tail call ptr @DestroyImageInfo(ptr noundef nonnull %19) #23
  br label %32

32:                                               ; preds = %25, %23, %15
  %33 = phi ptr [ null, %15 ], [ null, %23 ], [ %28, %25 ]
  ret ptr %33
}

; Function Attrs: optsize
declare ptr @ReadStream(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i64 @PingStream(ptr nocapture readnone %0, ptr nocapture readnone %1, i64 noundef returned %2) #6 {
  ret i64 %2
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local i32 @ReadBlobByte(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = alloca i64, align 8
  %3 = alloca [1 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #27
  %4 = call fastcc ptr @ReadBlobStream(ptr noundef %0, i64 noundef 1, ptr noundef nonnull %3, ptr noundef nonnull %2) #24
  %5 = load i64, ptr %2, align 8, !tbaa !49
  %6 = icmp eq i64 %5, 1
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i8, ptr %4, align 1, !tbaa !21
  %9 = zext i8 %8 to i32
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi i32 [ %9, %7 ], [ -1, %1 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #27
  ret i32 %11
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local double @ReadBlobDouble(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = tail call i64 @ReadBlobLongLong(ptr noundef %0) #24
  %3 = bitcast i64 %2 to double
  ret double %3
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local i64 @ReadBlobLongLong(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = alloca i64, align 8
  %3 = alloca [8 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #27
  store i8 0, ptr %3, align 1, !tbaa !21
  %4 = call fastcc ptr @ReadBlobStream(ptr noundef %0, i64 noundef 8, ptr noundef nonnull %3, ptr noundef nonnull %2) #24
  %5 = load i64, ptr %2, align 8, !tbaa !49
  %6 = icmp eq i64 %5, 8
  br i1 %6, label %7, label %51

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 34
  %9 = load i32, ptr %8, align 8, !tbaa !82
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = load i64, ptr %4, align 1
  br label %51

13:                                               ; preds = %7
  %14 = getelementptr inbounds i8, ptr %4, i64 1
  %15 = load i8, ptr %4, align 1, !tbaa !21
  %16 = zext i8 %15 to i64
  %17 = shl nuw i64 %16, 56
  %18 = getelementptr inbounds i8, ptr %4, i64 2
  %19 = load i8, ptr %14, align 1, !tbaa !21
  %20 = zext i8 %19 to i64
  %21 = shl nuw nsw i64 %20, 48
  %22 = or disjoint i64 %21, %17
  %23 = getelementptr inbounds i8, ptr %4, i64 3
  %24 = load i8, ptr %18, align 1, !tbaa !21
  %25 = zext i8 %24 to i64
  %26 = shl nuw nsw i64 %25, 40
  %27 = or disjoint i64 %22, %26
  %28 = getelementptr inbounds i8, ptr %4, i64 4
  %29 = load i8, ptr %23, align 1, !tbaa !21
  %30 = zext i8 %29 to i64
  %31 = shl nuw nsw i64 %30, 32
  %32 = or disjoint i64 %27, %31
  %33 = getelementptr inbounds i8, ptr %4, i64 5
  %34 = load i8, ptr %28, align 1, !tbaa !21
  %35 = zext i8 %34 to i64
  %36 = shl nuw nsw i64 %35, 24
  %37 = or disjoint i64 %32, %36
  %38 = getelementptr inbounds i8, ptr %4, i64 6
  %39 = load i8, ptr %33, align 1, !tbaa !21
  %40 = zext i8 %39 to i64
  %41 = shl nuw nsw i64 %40, 16
  %42 = or disjoint i64 %37, %41
  %43 = getelementptr inbounds i8, ptr %4, i64 7
  %44 = load i8, ptr %38, align 1, !tbaa !21
  %45 = zext i8 %44 to i64
  %46 = shl nuw nsw i64 %45, 8
  %47 = or i64 %42, %46
  %48 = load i8, ptr %43, align 1, !tbaa !21
  %49 = zext i8 %48 to i64
  %50 = or i64 %47, %49
  br label %51

51:                                               ; preds = %1, %13, %11
  %52 = phi i64 [ %12, %11 ], [ %50, %13 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #27
  ret i64 %52
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local float @ReadBlobFloat(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = tail call i32 @ReadBlobLong(ptr noundef %0) #24
  %3 = bitcast i32 %2 to float
  ret float %3
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local i32 @ReadBlobLong(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = alloca i64, align 8
  %3 = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #27
  store i8 0, ptr %3, align 1, !tbaa !21
  %4 = call fastcc ptr @ReadBlobStream(ptr noundef %0, i64 noundef 4, ptr noundef nonnull %3, ptr noundef nonnull %2) #24
  %5 = load i64, ptr %2, align 8, !tbaa !49
  %6 = icmp eq i64 %5, 4
  br i1 %6, label %7, label %31

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 34
  %9 = load i32, ptr %8, align 8, !tbaa !82
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = load i32, ptr %4, align 1
  br label %31

13:                                               ; preds = %7
  %14 = getelementptr inbounds i8, ptr %4, i64 1
  %15 = load i8, ptr %4, align 1, !tbaa !21
  %16 = zext i8 %15 to i32
  %17 = shl nuw i32 %16, 24
  %18 = getelementptr inbounds i8, ptr %4, i64 2
  %19 = load i8, ptr %14, align 1, !tbaa !21
  %20 = zext i8 %19 to i32
  %21 = shl nuw nsw i32 %20, 16
  %22 = or disjoint i32 %21, %17
  %23 = getelementptr inbounds i8, ptr %4, i64 3
  %24 = load i8, ptr %18, align 1, !tbaa !21
  %25 = zext i8 %24 to i32
  %26 = shl nuw nsw i32 %25, 8
  %27 = or disjoint i32 %22, %26
  %28 = load i8, ptr %23, align 1, !tbaa !21
  %29 = zext i8 %28 to i32
  %30 = or disjoint i32 %27, %29
  br label %31

31:                                               ; preds = %1, %13, %11
  %32 = phi i32 [ %12, %11 ], [ %30, %13 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #27
  ret i32 %32
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local zeroext i16 @ReadBlobShort(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = alloca i64, align 8
  %3 = alloca [2 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #27
  store i8 0, ptr %3, align 1, !tbaa !21
  %4 = call fastcc ptr @ReadBlobStream(ptr noundef %0, i64 noundef 2, ptr noundef nonnull %3, ptr noundef nonnull %2) #24
  %5 = load i64, ptr %2, align 8, !tbaa !49
  %6 = icmp eq i64 %5, 2
  br i1 %6, label %7, label %21

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 34
  %9 = load i32, ptr %8, align 8, !tbaa !82
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = load i16, ptr %4, align 1
  br label %21

13:                                               ; preds = %7
  %14 = getelementptr inbounds i8, ptr %4, i64 1
  %15 = load i8, ptr %4, align 1, !tbaa !21
  %16 = zext i8 %15 to i16
  %17 = shl nuw i16 %16, 8
  %18 = load i8, ptr %14, align 1, !tbaa !21
  %19 = zext i8 %18 to i16
  %20 = or disjoint i16 %17, %19
  br label %21

21:                                               ; preds = %1, %13, %11
  %22 = phi i16 [ %12, %11 ], [ %20, %13 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #27
  ret i16 %22
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local i32 @ReadBlobLSBLong(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = alloca i64, align 8
  %3 = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #27
  store i8 0, ptr %3, align 1, !tbaa !21
  %4 = call fastcc ptr @ReadBlobStream(ptr noundef %0, i64 noundef 4, ptr noundef nonnull %3, ptr noundef nonnull %2) #24
  %5 = load i64, ptr %2, align 8, !tbaa !49
  %6 = icmp eq i64 %5, 4
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, ptr %4, align 1
  br label %9

9:                                                ; preds = %1, %7
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #27
  ret i32 %10
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local zeroext i16 @ReadBlobLSBShort(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = alloca i64, align 8
  %3 = alloca [2 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #27
  store i8 0, ptr %3, align 1, !tbaa !21
  %4 = call fastcc ptr @ReadBlobStream(ptr noundef %0, i64 noundef 2, ptr noundef nonnull %3, ptr noundef nonnull %2) #24
  %5 = load i64, ptr %2, align 8, !tbaa !49
  %6 = icmp eq i64 %5, 2
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i16, ptr %4, align 1
  br label %9

9:                                                ; preds = %1, %7
  %10 = phi i16 [ %8, %7 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #27
  ret i16 %10
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local i32 @ReadBlobMSBLong(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = alloca i64, align 8
  %3 = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #27
  store i8 0, ptr %3, align 1, !tbaa !21
  %4 = call fastcc ptr @ReadBlobStream(ptr noundef %0, i64 noundef 4, ptr noundef nonnull %3, ptr noundef nonnull %2) #24
  %5 = load i64, ptr %2, align 8, !tbaa !49
  %6 = icmp eq i64 %5, 4
  br i1 %6, label %7, label %25

7:                                                ; preds = %1
  %8 = getelementptr inbounds i8, ptr %4, i64 1
  %9 = load i8, ptr %4, align 1, !tbaa !21
  %10 = zext i8 %9 to i32
  %11 = shl nuw i32 %10, 24
  %12 = getelementptr inbounds i8, ptr %4, i64 2
  %13 = load i8, ptr %8, align 1, !tbaa !21
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 16
  %16 = or disjoint i32 %15, %11
  %17 = getelementptr inbounds i8, ptr %4, i64 3
  %18 = load i8, ptr %12, align 1, !tbaa !21
  %19 = zext i8 %18 to i32
  %20 = shl nuw nsw i32 %19, 8
  %21 = or disjoint i32 %16, %20
  %22 = load i8, ptr %17, align 1, !tbaa !21
  %23 = zext i8 %22 to i32
  %24 = or disjoint i32 %21, %23
  br label %25

25:                                               ; preds = %1, %7
  %26 = phi i32 [ %24, %7 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #27
  ret i32 %26
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local i64 @ReadBlobMSBLongLong(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = alloca i64, align 8
  %3 = alloca [8 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #27
  store i8 0, ptr %3, align 1, !tbaa !21
  %4 = call fastcc ptr @ReadBlobStream(ptr noundef %0, i64 noundef 8, ptr noundef nonnull %3, ptr noundef nonnull %2) #24
  %5 = load i64, ptr %2, align 8, !tbaa !49
  %6 = icmp eq i64 %5, 8
  br i1 %6, label %7, label %45

7:                                                ; preds = %1
  %8 = getelementptr inbounds i8, ptr %4, i64 1
  %9 = load i8, ptr %4, align 1, !tbaa !21
  %10 = zext i8 %9 to i64
  %11 = shl nuw i64 %10, 56
  %12 = getelementptr inbounds i8, ptr %4, i64 2
  %13 = load i8, ptr %8, align 1, !tbaa !21
  %14 = zext i8 %13 to i64
  %15 = shl nuw nsw i64 %14, 48
  %16 = or disjoint i64 %15, %11
  %17 = getelementptr inbounds i8, ptr %4, i64 3
  %18 = load i8, ptr %12, align 1, !tbaa !21
  %19 = zext i8 %18 to i64
  %20 = shl nuw nsw i64 %19, 40
  %21 = or disjoint i64 %16, %20
  %22 = getelementptr inbounds i8, ptr %4, i64 4
  %23 = load i8, ptr %17, align 1, !tbaa !21
  %24 = zext i8 %23 to i64
  %25 = shl nuw nsw i64 %24, 32
  %26 = or disjoint i64 %21, %25
  %27 = getelementptr inbounds i8, ptr %4, i64 5
  %28 = load i8, ptr %22, align 1, !tbaa !21
  %29 = zext i8 %28 to i64
  %30 = shl nuw nsw i64 %29, 24
  %31 = or disjoint i64 %26, %30
  %32 = getelementptr inbounds i8, ptr %4, i64 6
  %33 = load i8, ptr %27, align 1, !tbaa !21
  %34 = zext i8 %33 to i64
  %35 = shl nuw nsw i64 %34, 16
  %36 = or disjoint i64 %31, %35
  %37 = getelementptr inbounds i8, ptr %4, i64 7
  %38 = load i8, ptr %32, align 1, !tbaa !21
  %39 = zext i8 %38 to i64
  %40 = shl nuw nsw i64 %39, 8
  %41 = or i64 %36, %40
  %42 = load i8, ptr %37, align 1, !tbaa !21
  %43 = zext i8 %42 to i64
  %44 = or i64 %41, %43
  br label %45

45:                                               ; preds = %1, %7
  %46 = phi i64 [ %44, %7 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #27
  ret i64 %46
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local zeroext i16 @ReadBlobMSBShort(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = alloca i64, align 8
  %3 = alloca [2 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #27
  store i8 0, ptr %3, align 1, !tbaa !21
  %4 = call fastcc ptr @ReadBlobStream(ptr noundef %0, i64 noundef 2, ptr noundef nonnull %3, ptr noundef nonnull %2) #24
  %5 = load i64, ptr %2, align 8, !tbaa !49
  %6 = icmp eq i64 %5, 2
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = getelementptr inbounds i8, ptr %4, i64 1
  %9 = load i8, ptr %4, align 1, !tbaa !21
  %10 = zext i8 %9 to i16
  %11 = shl nuw i16 %10, 8
  %12 = load i8, ptr %8, align 1, !tbaa !21
  %13 = zext i8 %12 to i16
  %14 = or disjoint i16 %11, %13
  br label %15

15:                                               ; preds = %1, %7
  %16 = phi i16 [ %14, %7 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #27
  ret i16 %16
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef ptr @ReadBlobString(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = alloca i64, align 8
  %4 = alloca [1 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #27
  br label %5

5:                                                ; preds = %2, %15
  %6 = phi i64 [ 0, %2 ], [ %16, %15 ]
  %7 = call fastcc ptr @ReadBlobStream(ptr noundef %0, i64 noundef 1, ptr noundef nonnull %4, ptr noundef nonnull %3) #24
  %8 = load i64, ptr %3, align 8, !tbaa !49
  %9 = icmp eq i64 %8, 1
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = icmp eq i64 %6, 0
  br i1 %11, label %26, label %18

12:                                               ; preds = %5
  %13 = load i8, ptr %7, align 1, !tbaa !21
  %14 = getelementptr inbounds i8, ptr %1, i64 %6
  store i8 %13, ptr %14, align 1, !tbaa !21
  switch i8 %13, label %15 [
    i8 13, label %18
    i8 10, label %18
  ]

15:                                               ; preds = %12
  %16 = add nuw nsw i64 %6, 1
  %17 = icmp eq i64 %16, 4095
  br i1 %17, label %18, label %5, !llvm.loop !83

18:                                               ; preds = %12, %12, %15, %10
  %19 = phi i64 [ %6, %10 ], [ 4095, %15 ], [ %6, %12 ], [ %6, %12 ]
  %20 = getelementptr inbounds i8, ptr %1, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !21
  %22 = icmp eq i8 %21, 13
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = call fastcc ptr @ReadBlobStream(ptr noundef %0, i64 noundef 1, ptr noundef nonnull %4, ptr noundef nonnull %3) #24
  br label %25

25:                                               ; preds = %23, %18
  store i8 0, ptr %20, align 1, !tbaa !21
  br label %26

26:                                               ; preds = %10, %25
  %27 = phi ptr [ %1, %25 ], [ null, %10 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  ret ptr %27
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @SeekBlob(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !59
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3604, ptr noundef nonnull @.str.3, ptr noundef nonnull %8) #23
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct._BlobInfo, ptr %12, i64 0, i32 11
  %14 = load i32, ptr %13, align 8, !tbaa !20
  switch i32 %14, label %74 [
    i32 7, label %28
    i32 2, label %78
    i32 1, label %15
    i32 3, label %24
    i32 4, label %24
    i32 5, label %78
    i32 6, label %78
  ]

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct._BlobInfo, ptr %12, i64 0, i32 12
  %17 = load ptr, ptr %16, align 8, !tbaa !21
  %18 = tail call i32 @fseek(ptr noundef %17, i64 noundef %1, i32 noundef %2) #24
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %78, label %20

20:                                               ; preds = %15
  %21 = tail call i64 @TellBlob(ptr noundef nonnull %0) #24
  %22 = load ptr, ptr %11, align 8, !tbaa !34
  %23 = getelementptr inbounds %struct._BlobInfo, ptr %22, i64 0, i32 5
  store i64 %21, ptr %23, align 8, !tbaa !19
  br label %74

24:                                               ; preds = %10, %10
  %25 = tail call i64 @TellBlob(ptr noundef nonnull %0) #24
  %26 = load ptr, ptr %11, align 8, !tbaa !34
  %27 = getelementptr inbounds %struct._BlobInfo, ptr %26, i64 0, i32 5
  store i64 %25, ptr %27, align 8, !tbaa !19
  br label %74

28:                                               ; preds = %10
  switch i32 %2, label %29 [
    i32 2, label %39
    i32 1, label %33
  ]

29:                                               ; preds = %28
  %30 = icmp slt i64 %1, 0
  br i1 %30, label %78, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct._BlobInfo, ptr %12, i64 0, i32 5
  store i64 %1, ptr %32, align 8, !tbaa !19
  br label %45

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct._BlobInfo, ptr %12, i64 0, i32 5
  %35 = load i64, ptr %34, align 8, !tbaa !19
  %36 = add nsw i64 %35, %1
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %78, label %38

38:                                               ; preds = %33
  store i64 %36, ptr %34, align 8, !tbaa !19
  br label %45

39:                                               ; preds = %28
  %40 = load i64, ptr %12, align 8, !tbaa !16
  %41 = add nsw i64 %40, %1
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %78, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct._BlobInfo, ptr %12, i64 0, i32 5
  store i64 %41, ptr %44, align 8, !tbaa !19
  br label %45

45:                                               ; preds = %43, %38, %31
  %46 = phi i64 [ %41, %43 ], [ %36, %38 ], [ %1, %31 ]
  %47 = load i64, ptr %12, align 8, !tbaa !16
  %48 = icmp sgt i64 %46, %47
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct._BlobInfo, ptr %12, i64 0, i32 4
  store i32 0, ptr %50, align 4, !tbaa !63
  br label %74

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct._BlobInfo, ptr %12, i64 0, i32 3
  %53 = load i32, ptr %52, align 8, !tbaa !23
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %78

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct._BlobInfo, ptr %12, i64 0, i32 2
  %57 = load i64, ptr %56, align 8, !tbaa !18
  %58 = add i64 %57, %46
  %59 = getelementptr inbounds %struct._BlobInfo, ptr %12, i64 0, i32 1
  store i64 %58, ptr %59, align 8, !tbaa !17
  %60 = shl i64 %57, 1
  store i64 %60, ptr %56, align 8, !tbaa !18
  %61 = getelementptr inbounds %struct._BlobInfo, ptr %12, i64 0, i32 15
  %62 = load ptr, ptr %61, align 8, !tbaa !22
  %63 = add i64 %58, 1
  %64 = tail call ptr @ResizeQuantumMemory(ptr noundef %62, i64 noundef %63, i64 noundef 1) #30
  %65 = load ptr, ptr %11, align 8, !tbaa !34
  %66 = getelementptr inbounds %struct._BlobInfo, ptr %65, i64 0, i32 15
  store ptr %64, ptr %66, align 8, !tbaa !22
  %67 = tail call fastcc i32 @SyncBlob(ptr noundef nonnull %0) #24
  %68 = load ptr, ptr %11, align 8, !tbaa !34
  %69 = getelementptr inbounds %struct._BlobInfo, ptr %68, i64 0, i32 15
  %70 = load ptr, ptr %69, align 8, !tbaa !22
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %55
  %73 = tail call ptr @DetachBlob(ptr noundef nonnull %68) #24
  br label %78

74:                                               ; preds = %49, %55, %10, %24, %20
  %75 = phi ptr [ %12, %49 ], [ %68, %55 ], [ %12, %10 ], [ %26, %24 ], [ %22, %20 ]
  %76 = getelementptr inbounds %struct._BlobInfo, ptr %75, i64 0, i32 5
  %77 = load i64, ptr %76, align 8, !tbaa !19
  br label %78

78:                                               ; preds = %51, %39, %33, %29, %10, %10, %15, %10, %74, %72
  %79 = phi i64 [ %77, %74 ], [ -1, %72 ], [ -1, %10 ], [ -1, %15 ], [ -1, %10 ], [ -1, %10 ], [ -1, %29 ], [ -1, %33 ], [ -1, %39 ], [ -1, %51 ]
  ret i64 %79
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @TellBlob(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !59
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3965, ptr noundef nonnull @.str.3, ptr noundef nonnull %6) #23
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct._BlobInfo, ptr %10, i64 0, i32 11
  %12 = load i32, ptr %11, align 8, !tbaa !20
  switch i32 %12, label %20 [
    i32 7, label %17
    i32 1, label %13
  ]

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct._BlobInfo, ptr %10, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !21
  %16 = tail call i64 @ftell(ptr noundef %15) #24
  br label %20

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct._BlobInfo, ptr %10, i64 0, i32 5
  %19 = load i64, ptr %18, align 8, !tbaa !19
  br label %20

20:                                               ; preds = %8, %17, %13
  %21 = phi i64 [ -1, %8 ], [ %16, %13 ], [ %19, %17 ]
  ret i64 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SetBlobExempt(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !59
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3718, ptr noundef nonnull @.str.3, ptr noundef nonnull %7) #23
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct._BlobInfo, ptr %11, i64 0, i32 7
  store i32 %1, ptr %12, align 8, !tbaa !48
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind optsize
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind optsize
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @WriteBlobByte(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca i8, align 1
  store i8 %1, ptr %3, align 1, !tbaa !21
  %4 = call fastcc i64 @WriteBlobStream(ptr noundef %0, i64 noundef 1, ptr noundef nonnull %3) #24
  ret i64 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @WriteBlobFloat(ptr noundef %0, float noundef %1) local_unnamed_addr #0 {
  %3 = bitcast float %1 to i32
  %4 = tail call i64 @WriteBlobLong(ptr noundef %0, i32 noundef %3) #24
  ret i64 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @WriteBlobLong(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #27
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 34
  %5 = load i32, ptr %4, align 8, !tbaa !82
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = trunc i32 %1 to i8
  store i8 %8, ptr %3, align 1, !tbaa !21
  %9 = lshr i32 %1, 8
  %10 = trunc i32 %9 to i8
  %11 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 1
  store i8 %10, ptr %11, align 1, !tbaa !21
  %12 = lshr i32 %1, 16
  %13 = trunc i32 %12 to i8
  %14 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 2
  store i8 %13, ptr %14, align 1, !tbaa !21
  %15 = lshr i32 %1, 24
  br label %25

16:                                               ; preds = %2
  %17 = lshr i32 %1, 24
  %18 = trunc i32 %17 to i8
  store i8 %18, ptr %3, align 1, !tbaa !21
  %19 = lshr i32 %1, 16
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 1
  store i8 %20, ptr %21, align 1, !tbaa !21
  %22 = lshr i32 %1, 8
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 2
  store i8 %23, ptr %24, align 1, !tbaa !21
  br label %25

25:                                               ; preds = %16, %7
  %26 = phi i32 [ %1, %16 ], [ %15, %7 ]
  %27 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 3
  %28 = trunc i32 %26 to i8
  store i8 %28, ptr %27, align 1, !tbaa !21
  %29 = call fastcc i64 @WriteBlobStream(ptr noundef nonnull %0, i64 noundef 4, ptr noundef nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #27
  ret i64 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @WriteBlobShort(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca [2 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #27
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 34
  %5 = load i32, ptr %4, align 8, !tbaa !82
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = trunc i16 %1 to i8
  store i8 %8, ptr %3, align 1, !tbaa !21
  %9 = lshr i16 %1, 8
  br label %13

10:                                               ; preds = %2
  %11 = lshr i16 %1, 8
  %12 = trunc i16 %11 to i8
  store i8 %12, ptr %3, align 1, !tbaa !21
  br label %13

13:                                               ; preds = %10, %7
  %14 = phi i16 [ %1, %10 ], [ %9, %7 ]
  %15 = getelementptr inbounds [2 x i8], ptr %3, i64 0, i64 1
  %16 = trunc i16 %14 to i8
  store i8 %16, ptr %15, align 1, !tbaa !21
  %17 = call fastcc i64 @WriteBlobStream(ptr noundef nonnull %0, i64 noundef 2, ptr noundef nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #27
  ret i64 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @WriteBlobLSBLong(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #27
  %4 = trunc i32 %1 to i8
  store i8 %4, ptr %3, align 1, !tbaa !21
  %5 = lshr i32 %1, 8
  %6 = trunc i32 %5 to i8
  %7 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 1
  store i8 %6, ptr %7, align 1, !tbaa !21
  %8 = lshr i32 %1, 16
  %9 = trunc i32 %8 to i8
  %10 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 2
  store i8 %9, ptr %10, align 1, !tbaa !21
  %11 = lshr i32 %1, 24
  %12 = trunc i32 %11 to i8
  %13 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 3
  store i8 %12, ptr %13, align 1, !tbaa !21
  %14 = call fastcc i64 @WriteBlobStream(ptr noundef %0, i64 noundef 4, ptr noundef nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #27
  ret i64 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @WriteBlobLSBShort(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca [2 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #27
  %4 = trunc i16 %1 to i8
  store i8 %4, ptr %3, align 1, !tbaa !21
  %5 = lshr i16 %1, 8
  %6 = trunc i16 %5 to i8
  %7 = getelementptr inbounds [2 x i8], ptr %3, i64 0, i64 1
  store i8 %6, ptr %7, align 1, !tbaa !21
  %8 = call fastcc i64 @WriteBlobStream(ptr noundef %0, i64 noundef 2, ptr noundef nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #27
  ret i64 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @WriteBlobMSBLong(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #27
  %4 = lshr i32 %1, 24
  %5 = trunc i32 %4 to i8
  store i8 %5, ptr %3, align 1, !tbaa !21
  %6 = lshr i32 %1, 16
  %7 = trunc i32 %6 to i8
  %8 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 1
  store i8 %7, ptr %8, align 1, !tbaa !21
  %9 = lshr i32 %1, 8
  %10 = trunc i32 %9 to i8
  %11 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 2
  store i8 %10, ptr %11, align 1, !tbaa !21
  %12 = trunc i32 %1 to i8
  %13 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 3
  store i8 %12, ptr %13, align 1, !tbaa !21
  %14 = call fastcc i64 @WriteBlobStream(ptr noundef %0, i64 noundef 4, ptr noundef nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #27
  ret i64 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @WriteBlobMSBLongLong(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [8 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #27
  %4 = lshr i64 %1, 56
  %5 = trunc i64 %4 to i8
  store i8 %5, ptr %3, align 1, !tbaa !21
  %6 = lshr i64 %1, 48
  %7 = trunc i64 %6 to i8
  %8 = getelementptr inbounds [8 x i8], ptr %3, i64 0, i64 1
  store i8 %7, ptr %8, align 1, !tbaa !21
  %9 = lshr i64 %1, 40
  %10 = trunc i64 %9 to i8
  %11 = getelementptr inbounds [8 x i8], ptr %3, i64 0, i64 2
  store i8 %10, ptr %11, align 1, !tbaa !21
  %12 = lshr i64 %1, 32
  %13 = trunc i64 %12 to i8
  %14 = getelementptr inbounds [8 x i8], ptr %3, i64 0, i64 3
  store i8 %13, ptr %14, align 1, !tbaa !21
  %15 = lshr i64 %1, 24
  %16 = trunc i64 %15 to i8
  %17 = getelementptr inbounds [8 x i8], ptr %3, i64 0, i64 4
  store i8 %16, ptr %17, align 1, !tbaa !21
  %18 = lshr i64 %1, 16
  %19 = trunc i64 %18 to i8
  %20 = getelementptr inbounds [8 x i8], ptr %3, i64 0, i64 5
  store i8 %19, ptr %20, align 1, !tbaa !21
  %21 = lshr i64 %1, 8
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds [8 x i8], ptr %3, i64 0, i64 6
  store i8 %22, ptr %23, align 1, !tbaa !21
  %24 = trunc i64 %1 to i8
  %25 = getelementptr inbounds [8 x i8], ptr %3, i64 0, i64 7
  store i8 %24, ptr %25, align 1, !tbaa !21
  %26 = call fastcc i64 @WriteBlobStream(ptr noundef %0, i64 noundef 8, ptr noundef nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  ret i64 %26
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @WriteBlobMSBShort(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca [2 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #27
  %4 = lshr i16 %1, 8
  %5 = trunc i16 %4 to i8
  store i8 %5, ptr %3, align 1, !tbaa !21
  %6 = trunc i16 %1 to i8
  %7 = getelementptr inbounds [2 x i8], ptr %3, i64 0, i64 1
  store i8 %6, ptr %7, align 1, !tbaa !21
  %8 = call fastcc i64 @WriteBlobStream(ptr noundef %0, i64 noundef 2, ptr noundef nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #27
  ret i64 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @WriteBlobString(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #31
  %4 = tail call fastcc i64 @WriteBlobStream(ptr noundef %0, i64 noundef %3, ptr noundef %1) #24
  ret i64 %4
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #22

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind optsize memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { optsize allocsize(1,2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #23 = { nounwind optsize }
attributes #24 = { optsize }
attributes #25 = { nounwind optsize willreturn memory(none) }
attributes #26 = { nounwind optsize allocsize(0) }
attributes #27 = { nounwind }
attributes #28 = { noreturn nounwind optsize }
attributes #29 = { nounwind optsize allocsize(0,1) }
attributes #30 = { nounwind optsize allocsize(1,2) }
attributes #31 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !11, i64 240}
!7 = !{!"_BlobInfo", !8, i64 0, !8, i64 8, !8, i64 16, !11, i64 24, !11, i64 28, !12, i64 32, !12, i64 40, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !9, i64 72, !13, i64 80, !15, i64 224, !15, i64 232, !11, i64 240, !15, i64 248, !8, i64 256, !8, i64 264}
!8 = !{!"long", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!"long long", !9, i64 0}
!13 = !{!"stat", !8, i64 0, !8, i64 8, !8, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !14, i64 72, !14, i64 88, !14, i64 104, !9, i64 120}
!14 = !{!"timespec", !8, i64 0, !8, i64 8}
!15 = !{!"any pointer", !9, i64 0}
!16 = !{!7, !8, i64 0}
!17 = !{!7, !8, i64 8}
!18 = !{!7, !8, i64 16}
!19 = !{!7, !12, i64 32}
!20 = !{!7, !11, i64 64}
!21 = !{!9, !9, i64 0}
!22 = !{!7, !15, i64 232}
!23 = !{!7, !11, i64 24}
!24 = !{!11, !11, i64 0}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!28, !11, i64 16712}
!28 = !{!"_ImageInfo", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !11, i64 80, !11, i64 84, !11, i64 88, !8, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !15, i64 128, !15, i64 136, !29, i64 144, !29, i64 152, !30, i64 160, !30, i64 168, !30, i64 176, !11, i64 184, !11, i64 188, !8, i64 192, !11, i64 200, !11, i64 204, !11, i64 208, !8, i64 216, !11, i64 224, !11, i64 228, !15, i64 232, !15, i64 240, !11, i64 248, !15, i64 256, !15, i64 264, !15, i64 272, !15, i64 280, !15, i64 288, !15, i64 296, !15, i64 304, !15, i64 312, !8, i64 320, !9, i64 328, !9, i64 4424, !9, i64 8520, !9, i64 12616, !11, i64 16712, !15, i64 16720, !8, i64 16728, !8, i64 16736, !30, i64 16744, !8, i64 16752, !11, i64 16760, !30, i64 16764, !15, i64 16776, !11, i64 16784}
!29 = !{!"double", !9, i64 0}
!30 = !{!"_PixelPacket", !31, i64 0, !31, i64 2, !31, i64 4, !31, i64 6}
!31 = !{!"short", !9, i64 0}
!32 = !{!28, !15, i64 312}
!33 = !{!28, !8, i64 320}
!34 = !{!35, !15, i64 608}
!35 = !{!"_Image", !11, i64 0, !11, i64 4, !11, i64 8, !8, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !15, i64 72, !30, i64 80, !30, i64 88, !30, i64 96, !29, i64 104, !36, i64 112, !11, i64 208, !15, i64 216, !11, i64 224, !15, i64 232, !15, i64 240, !15, i64 248, !8, i64 256, !29, i64 264, !29, i64 272, !38, i64 280, !38, i64 312, !38, i64 344, !29, i64 376, !29, i64 384, !29, i64 392, !11, i64 400, !11, i64 404, !11, i64 408, !11, i64 412, !11, i64 416, !11, i64 420, !15, i64 424, !8, i64 432, !8, i64 440, !8, i64 448, !8, i64 456, !8, i64 464, !8, i64 472, !39, i64 480, !40, i64 504, !15, i64 568, !15, i64 576, !15, i64 584, !15, i64 592, !15, i64 600, !15, i64 608, !9, i64 616, !9, i64 4712, !9, i64 8808, !8, i64 12904, !8, i64 12912, !42, i64 12920, !11, i64 12976, !8, i64 12984, !15, i64 12992, !43, i64 13000, !43, i64 13032, !15, i64 13064, !8, i64 13072, !8, i64 13080, !15, i64 13088, !15, i64 13096, !15, i64 13104, !11, i64 13112, !11, i64 13116, !30, i64 13120, !15, i64 13128, !38, i64 13136, !15, i64 13168, !15, i64 13176, !11, i64 13184, !11, i64 13188, !12, i64 13192, !11, i64 13200, !8, i64 13208, !8, i64 13216, !11, i64 13224, !8, i64 13232}
!36 = !{!"_ChromaticityInfo", !37, i64 0, !37, i64 24, !37, i64 48, !37, i64 72}
!37 = !{!"_PrimaryInfo", !29, i64 0, !29, i64 8, !29, i64 16}
!38 = !{!"_RectangleInfo", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24}
!39 = !{!"_ErrorInfo", !29, i64 0, !29, i64 8, !29, i64 16}
!40 = !{!"_TimerInfo", !41, i64 0, !41, i64 24, !11, i64 48, !8, i64 56}
!41 = !{!"_Timer", !29, i64 0, !29, i64 8, !29, i64 16}
!42 = !{!"_ExceptionInfo", !11, i64 0, !11, i64 4, !15, i64 8, !15, i64 16, !15, i64 24, !11, i64 32, !15, i64 40, !8, i64 48}
!43 = !{!"_ProfileInfo", !15, i64 0, !8, i64 8, !15, i64 16, !8, i64 24}
!44 = !{i32 0, i32 2}
!45 = !{!46, !15, i64 0}
!46 = !{!"_MagickInfo", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !11, i64 80, !11, i64 84, !11, i64 88, !11, i64 92, !11, i64 96, !11, i64 100, !11, i64 104, !11, i64 108, !15, i64 112, !15, i64 120, !8, i64 128, !15, i64 136, !15, i64 144}
!47 = distinct !{!47, !26}
!48 = !{!7, !11, i64 48}
!49 = !{!8, !8, i64 0}
!50 = !{!7, !11, i64 52}
!51 = !{!12, !12, i64 0}
!52 = !{i64 0, i64 8, !49, i64 8, i64 8, !49, i64 16, i64 8, !49, i64 24, i64 4, !24, i64 28, i64 4, !24, i64 32, i64 4, !24, i64 36, i64 4, !24, i64 40, i64 8, !49, i64 48, i64 8, !49, i64 56, i64 8, !49, i64 64, i64 8, !49, i64 72, i64 8, !49, i64 80, i64 8, !49, i64 88, i64 8, !49, i64 96, i64 8, !49, i64 104, i64 8, !49, i64 112, i64 8, !49, i64 120, i64 24, !21}
!53 = !{!15, !15, i64 0}
!54 = !{!7, !8, i64 256}
!55 = !{!7, !8, i64 168}
!56 = !{!7, !8, i64 184}
!57 = !{!7, !15, i64 248}
!58 = !{!7, !8, i64 264}
!59 = !{!35, !11, i64 12976}
!60 = !{!7, !11, i64 56}
!61 = !{!7, !12, i64 40}
!62 = !{!35, !12, i64 13192}
!63 = !{!7, !11, i64 28}
!64 = distinct !{!64, !26}
!65 = distinct !{!65, !26}
!66 = distinct !{!66, !26}
!67 = distinct !{!67, !26}
!68 = !{!7, !15, i64 224}
!69 = !{!28, !11, i64 12}
!70 = !{!28, !15, i64 304}
!71 = distinct !{!71, !26}
!72 = distinct !{!72, !26}
!73 = !{!7, !11, i64 60}
!74 = distinct !{!74, !26}
!75 = distinct !{!75, !26}
!76 = !{!28, !15, i64 296}
!77 = !{!28, !11, i64 16784}
!78 = !{!7, !11, i64 104}
!79 = !{!35, !8, i64 432}
!80 = !{!7, !8, i64 128}
!81 = !{!28, !11, i64 224}
!82 = !{!35, !11, i64 408}
!83 = distinct !{!83, !26}
