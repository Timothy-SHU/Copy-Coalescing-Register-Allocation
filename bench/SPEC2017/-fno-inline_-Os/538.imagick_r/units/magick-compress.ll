; ModuleID = 'magick/compress.c'
source_filename = "magick/compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.HuffmanTable = type { i64, i64, i64, i64 }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._Image = type { i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, ptr, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, double, %struct._ChromaticityInfo, i32, ptr, i32, ptr, ptr, ptr, i64, double, double, %struct._RectangleInfo, %struct._RectangleInfo, %struct._RectangleInfo, double, double, double, i32, i32, i32, i32, i32, i32, ptr, i64, i64, i64, i64, i64, i64, %struct._ErrorInfo, %struct._TimerInfo, ptr, ptr, ptr, ptr, ptr, ptr, [4096 x i8], [4096 x i8], [4096 x i8], i64, i64, %struct._ExceptionInfo, i32, i64, ptr, %struct._ProfileInfo, %struct._ProfileInfo, ptr, i64, i64, ptr, ptr, ptr, i32, i32, %struct._PixelPacket, ptr, %struct._RectangleInfo, ptr, ptr, i32, i32, i64, i32, i64, i64, i32, i64 }
%struct._ChromaticityInfo = type { %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo }
%struct._PrimaryInfo = type { double, double, double }
%struct._ErrorInfo = type { double, double, double }
%struct._TimerInfo = type { %struct._Timer, %struct._Timer, i32, i64 }
%struct._Timer = type { double, double, double }
%struct._ProfileInfo = type { ptr, i64, ptr, i64 }
%struct._PixelPacket = type { i16, i16, i16, i16 }
%struct._RectangleInfo = type { i64, i64, i64, i64 }
%struct._Ascii85Info = type { i64, i64, [10 x i8] }
%struct._ImageInfo = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, double, double, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, i32, i32, i64, i32, i32, i32, i64, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [4096 x i8], [4096 x i8], [4096 x i8], [4096 x i8], i32, ptr, i64, i64, %struct._PixelPacket, i64, i32, %struct._PixelPacket, ptr, i32 }
%struct._TableType = type { i64, i64, i64 }

@.str = private unnamed_addr constant [18 x i8] c"magick/compress.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"!!!!\00", align 1
@TWTable = internal constant [65 x %struct.HuffmanTable] [%struct.HuffmanTable { i64 23, i64 53, i64 8, i64 0 }, %struct.HuffmanTable { i64 23, i64 7, i64 6, i64 1 }, %struct.HuffmanTable { i64 23, i64 7, i64 4, i64 2 }, %struct.HuffmanTable { i64 23, i64 8, i64 4, i64 3 }, %struct.HuffmanTable { i64 23, i64 11, i64 4, i64 4 }, %struct.HuffmanTable { i64 23, i64 12, i64 4, i64 5 }, %struct.HuffmanTable { i64 23, i64 14, i64 4, i64 6 }, %struct.HuffmanTable { i64 23, i64 15, i64 4, i64 7 }, %struct.HuffmanTable { i64 23, i64 19, i64 5, i64 8 }, %struct.HuffmanTable { i64 23, i64 20, i64 5, i64 9 }, %struct.HuffmanTable { i64 23, i64 7, i64 5, i64 10 }, %struct.HuffmanTable { i64 23, i64 8, i64 5, i64 11 }, %struct.HuffmanTable { i64 23, i64 8, i64 6, i64 12 }, %struct.HuffmanTable { i64 23, i64 3, i64 6, i64 13 }, %struct.HuffmanTable { i64 23, i64 52, i64 6, i64 14 }, %struct.HuffmanTable { i64 23, i64 53, i64 6, i64 15 }, %struct.HuffmanTable { i64 23, i64 42, i64 6, i64 16 }, %struct.HuffmanTable { i64 23, i64 43, i64 6, i64 17 }, %struct.HuffmanTable { i64 23, i64 39, i64 7, i64 18 }, %struct.HuffmanTable { i64 23, i64 12, i64 7, i64 19 }, %struct.HuffmanTable { i64 23, i64 8, i64 7, i64 20 }, %struct.HuffmanTable { i64 23, i64 23, i64 7, i64 21 }, %struct.HuffmanTable { i64 23, i64 3, i64 7, i64 22 }, %struct.HuffmanTable { i64 23, i64 4, i64 7, i64 23 }, %struct.HuffmanTable { i64 23, i64 40, i64 7, i64 24 }, %struct.HuffmanTable { i64 23, i64 43, i64 7, i64 25 }, %struct.HuffmanTable { i64 23, i64 19, i64 7, i64 26 }, %struct.HuffmanTable { i64 23, i64 36, i64 7, i64 27 }, %struct.HuffmanTable { i64 23, i64 24, i64 7, i64 28 }, %struct.HuffmanTable { i64 23, i64 2, i64 8, i64 29 }, %struct.HuffmanTable { i64 23, i64 3, i64 8, i64 30 }, %struct.HuffmanTable { i64 23, i64 26, i64 8, i64 31 }, %struct.HuffmanTable { i64 23, i64 27, i64 8, i64 32 }, %struct.HuffmanTable { i64 23, i64 18, i64 8, i64 33 }, %struct.HuffmanTable { i64 23, i64 19, i64 8, i64 34 }, %struct.HuffmanTable { i64 23, i64 20, i64 8, i64 35 }, %struct.HuffmanTable { i64 23, i64 21, i64 8, i64 36 }, %struct.HuffmanTable { i64 23, i64 22, i64 8, i64 37 }, %struct.HuffmanTable { i64 23, i64 23, i64 8, i64 38 }, %struct.HuffmanTable { i64 23, i64 40, i64 8, i64 39 }, %struct.HuffmanTable { i64 23, i64 41, i64 8, i64 40 }, %struct.HuffmanTable { i64 23, i64 42, i64 8, i64 41 }, %struct.HuffmanTable { i64 23, i64 43, i64 8, i64 42 }, %struct.HuffmanTable { i64 23, i64 44, i64 8, i64 43 }, %struct.HuffmanTable { i64 23, i64 45, i64 8, i64 44 }, %struct.HuffmanTable { i64 23, i64 4, i64 8, i64 45 }, %struct.HuffmanTable { i64 23, i64 5, i64 8, i64 46 }, %struct.HuffmanTable { i64 23, i64 10, i64 8, i64 47 }, %struct.HuffmanTable { i64 23, i64 11, i64 8, i64 48 }, %struct.HuffmanTable { i64 23, i64 82, i64 8, i64 49 }, %struct.HuffmanTable { i64 23, i64 83, i64 8, i64 50 }, %struct.HuffmanTable { i64 23, i64 84, i64 8, i64 51 }, %struct.HuffmanTable { i64 23, i64 85, i64 8, i64 52 }, %struct.HuffmanTable { i64 23, i64 36, i64 8, i64 53 }, %struct.HuffmanTable { i64 23, i64 37, i64 8, i64 54 }, %struct.HuffmanTable { i64 23, i64 88, i64 8, i64 55 }, %struct.HuffmanTable { i64 23, i64 89, i64 8, i64 56 }, %struct.HuffmanTable { i64 23, i64 90, i64 8, i64 57 }, %struct.HuffmanTable { i64 23, i64 91, i64 8, i64 58 }, %struct.HuffmanTable { i64 23, i64 74, i64 8, i64 59 }, %struct.HuffmanTable { i64 23, i64 75, i64 8, i64 60 }, %struct.HuffmanTable { i64 23, i64 50, i64 8, i64 61 }, %struct.HuffmanTable { i64 23, i64 51, i64 8, i64 62 }, %struct.HuffmanTable { i64 23, i64 52, i64 8, i64 63 }, %struct.HuffmanTable { i64 23, i64 0, i64 0, i64 0 }], align 16
@MWTable = internal constant [28 x %struct.HuffmanTable] [%struct.HuffmanTable { i64 24, i64 27, i64 5, i64 64 }, %struct.HuffmanTable { i64 24, i64 18, i64 5, i64 128 }, %struct.HuffmanTable { i64 24, i64 23, i64 6, i64 192 }, %struct.HuffmanTable { i64 24, i64 55, i64 7, i64 256 }, %struct.HuffmanTable { i64 24, i64 54, i64 8, i64 320 }, %struct.HuffmanTable { i64 24, i64 55, i64 8, i64 384 }, %struct.HuffmanTable { i64 24, i64 100, i64 8, i64 448 }, %struct.HuffmanTable { i64 24, i64 101, i64 8, i64 512 }, %struct.HuffmanTable { i64 24, i64 104, i64 8, i64 576 }, %struct.HuffmanTable { i64 24, i64 103, i64 8, i64 640 }, %struct.HuffmanTable { i64 24, i64 204, i64 9, i64 704 }, %struct.HuffmanTable { i64 24, i64 205, i64 9, i64 768 }, %struct.HuffmanTable { i64 24, i64 210, i64 9, i64 832 }, %struct.HuffmanTable { i64 24, i64 211, i64 9, i64 896 }, %struct.HuffmanTable { i64 24, i64 212, i64 9, i64 960 }, %struct.HuffmanTable { i64 24, i64 213, i64 9, i64 1024 }, %struct.HuffmanTable { i64 24, i64 214, i64 9, i64 1088 }, %struct.HuffmanTable { i64 24, i64 215, i64 9, i64 1152 }, %struct.HuffmanTable { i64 24, i64 216, i64 9, i64 1216 }, %struct.HuffmanTable { i64 24, i64 217, i64 9, i64 1280 }, %struct.HuffmanTable { i64 24, i64 218, i64 9, i64 1344 }, %struct.HuffmanTable { i64 24, i64 219, i64 9, i64 1408 }, %struct.HuffmanTable { i64 24, i64 152, i64 9, i64 1472 }, %struct.HuffmanTable { i64 24, i64 153, i64 9, i64 1536 }, %struct.HuffmanTable { i64 24, i64 154, i64 9, i64 1600 }, %struct.HuffmanTable { i64 24, i64 24, i64 6, i64 1664 }, %struct.HuffmanTable { i64 24, i64 155, i64 9, i64 1728 }, %struct.HuffmanTable { i64 24, i64 0, i64 0, i64 0 }], align 16
@EXTable = internal constant [14 x %struct.HuffmanTable] [%struct.HuffmanTable { i64 27, i64 8, i64 11, i64 1792 }, %struct.HuffmanTable { i64 27, i64 12, i64 11, i64 1856 }, %struct.HuffmanTable { i64 27, i64 13, i64 11, i64 1920 }, %struct.HuffmanTable { i64 27, i64 18, i64 12, i64 1984 }, %struct.HuffmanTable { i64 27, i64 19, i64 12, i64 2048 }, %struct.HuffmanTable { i64 27, i64 20, i64 12, i64 2112 }, %struct.HuffmanTable { i64 27, i64 21, i64 12, i64 2176 }, %struct.HuffmanTable { i64 27, i64 22, i64 12, i64 2240 }, %struct.HuffmanTable { i64 27, i64 23, i64 12, i64 2304 }, %struct.HuffmanTable { i64 27, i64 28, i64 12, i64 2368 }, %struct.HuffmanTable { i64 27, i64 29, i64 12, i64 2432 }, %struct.HuffmanTable { i64 27, i64 30, i64 12, i64 2496 }, %struct.HuffmanTable { i64 27, i64 31, i64 12, i64 2560 }, %struct.HuffmanTable { i64 27, i64 0, i64 0, i64 0 }], align 16
@TBTable = internal constant [65 x %struct.HuffmanTable] [%struct.HuffmanTable { i64 25, i64 55, i64 10, i64 0 }, %struct.HuffmanTable { i64 25, i64 2, i64 3, i64 1 }, %struct.HuffmanTable { i64 25, i64 3, i64 2, i64 2 }, %struct.HuffmanTable { i64 25, i64 2, i64 2, i64 3 }, %struct.HuffmanTable { i64 25, i64 3, i64 3, i64 4 }, %struct.HuffmanTable { i64 25, i64 3, i64 4, i64 5 }, %struct.HuffmanTable { i64 25, i64 2, i64 4, i64 6 }, %struct.HuffmanTable { i64 25, i64 3, i64 5, i64 7 }, %struct.HuffmanTable { i64 25, i64 5, i64 6, i64 8 }, %struct.HuffmanTable { i64 25, i64 4, i64 6, i64 9 }, %struct.HuffmanTable { i64 25, i64 4, i64 7, i64 10 }, %struct.HuffmanTable { i64 25, i64 5, i64 7, i64 11 }, %struct.HuffmanTable { i64 25, i64 7, i64 7, i64 12 }, %struct.HuffmanTable { i64 25, i64 4, i64 8, i64 13 }, %struct.HuffmanTable { i64 25, i64 7, i64 8, i64 14 }, %struct.HuffmanTable { i64 25, i64 24, i64 9, i64 15 }, %struct.HuffmanTable { i64 25, i64 23, i64 10, i64 16 }, %struct.HuffmanTable { i64 25, i64 24, i64 10, i64 17 }, %struct.HuffmanTable { i64 25, i64 8, i64 10, i64 18 }, %struct.HuffmanTable { i64 25, i64 103, i64 11, i64 19 }, %struct.HuffmanTable { i64 25, i64 104, i64 11, i64 20 }, %struct.HuffmanTable { i64 25, i64 108, i64 11, i64 21 }, %struct.HuffmanTable { i64 25, i64 55, i64 11, i64 22 }, %struct.HuffmanTable { i64 25, i64 40, i64 11, i64 23 }, %struct.HuffmanTable { i64 25, i64 23, i64 11, i64 24 }, %struct.HuffmanTable { i64 25, i64 24, i64 11, i64 25 }, %struct.HuffmanTable { i64 25, i64 202, i64 12, i64 26 }, %struct.HuffmanTable { i64 25, i64 203, i64 12, i64 27 }, %struct.HuffmanTable { i64 25, i64 204, i64 12, i64 28 }, %struct.HuffmanTable { i64 25, i64 205, i64 12, i64 29 }, %struct.HuffmanTable { i64 25, i64 104, i64 12, i64 30 }, %struct.HuffmanTable { i64 25, i64 105, i64 12, i64 31 }, %struct.HuffmanTable { i64 25, i64 106, i64 12, i64 32 }, %struct.HuffmanTable { i64 25, i64 107, i64 12, i64 33 }, %struct.HuffmanTable { i64 25, i64 210, i64 12, i64 34 }, %struct.HuffmanTable { i64 25, i64 211, i64 12, i64 35 }, %struct.HuffmanTable { i64 25, i64 212, i64 12, i64 36 }, %struct.HuffmanTable { i64 25, i64 213, i64 12, i64 37 }, %struct.HuffmanTable { i64 25, i64 214, i64 12, i64 38 }, %struct.HuffmanTable { i64 25, i64 215, i64 12, i64 39 }, %struct.HuffmanTable { i64 25, i64 108, i64 12, i64 40 }, %struct.HuffmanTable { i64 25, i64 109, i64 12, i64 41 }, %struct.HuffmanTable { i64 25, i64 218, i64 12, i64 42 }, %struct.HuffmanTable { i64 25, i64 219, i64 12, i64 43 }, %struct.HuffmanTable { i64 25, i64 84, i64 12, i64 44 }, %struct.HuffmanTable { i64 25, i64 85, i64 12, i64 45 }, %struct.HuffmanTable { i64 25, i64 86, i64 12, i64 46 }, %struct.HuffmanTable { i64 25, i64 87, i64 12, i64 47 }, %struct.HuffmanTable { i64 25, i64 100, i64 12, i64 48 }, %struct.HuffmanTable { i64 25, i64 101, i64 12, i64 49 }, %struct.HuffmanTable { i64 25, i64 82, i64 12, i64 50 }, %struct.HuffmanTable { i64 25, i64 83, i64 12, i64 51 }, %struct.HuffmanTable { i64 25, i64 36, i64 12, i64 52 }, %struct.HuffmanTable { i64 25, i64 55, i64 12, i64 53 }, %struct.HuffmanTable { i64 25, i64 56, i64 12, i64 54 }, %struct.HuffmanTable { i64 25, i64 39, i64 12, i64 55 }, %struct.HuffmanTable { i64 25, i64 40, i64 12, i64 56 }, %struct.HuffmanTable { i64 25, i64 88, i64 12, i64 57 }, %struct.HuffmanTable { i64 25, i64 89, i64 12, i64 58 }, %struct.HuffmanTable { i64 25, i64 43, i64 12, i64 59 }, %struct.HuffmanTable { i64 25, i64 44, i64 12, i64 60 }, %struct.HuffmanTable { i64 25, i64 90, i64 12, i64 61 }, %struct.HuffmanTable { i64 25, i64 102, i64 12, i64 62 }, %struct.HuffmanTable { i64 25, i64 103, i64 12, i64 63 }, %struct.HuffmanTable { i64 25, i64 0, i64 0, i64 0 }], align 16
@MBTable = internal constant [28 x %struct.HuffmanTable] [%struct.HuffmanTable { i64 26, i64 15, i64 10, i64 64 }, %struct.HuffmanTable { i64 26, i64 200, i64 12, i64 128 }, %struct.HuffmanTable { i64 26, i64 201, i64 12, i64 192 }, %struct.HuffmanTable { i64 26, i64 91, i64 12, i64 256 }, %struct.HuffmanTable { i64 26, i64 51, i64 12, i64 320 }, %struct.HuffmanTable { i64 26, i64 52, i64 12, i64 384 }, %struct.HuffmanTable { i64 26, i64 53, i64 12, i64 448 }, %struct.HuffmanTable { i64 26, i64 108, i64 13, i64 512 }, %struct.HuffmanTable { i64 26, i64 109, i64 13, i64 576 }, %struct.HuffmanTable { i64 26, i64 74, i64 13, i64 640 }, %struct.HuffmanTable { i64 26, i64 75, i64 13, i64 704 }, %struct.HuffmanTable { i64 26, i64 76, i64 13, i64 768 }, %struct.HuffmanTable { i64 26, i64 77, i64 13, i64 832 }, %struct.HuffmanTable { i64 26, i64 114, i64 13, i64 896 }, %struct.HuffmanTable { i64 26, i64 115, i64 13, i64 960 }, %struct.HuffmanTable { i64 26, i64 116, i64 13, i64 1024 }, %struct.HuffmanTable { i64 26, i64 117, i64 13, i64 1088 }, %struct.HuffmanTable { i64 26, i64 118, i64 13, i64 1152 }, %struct.HuffmanTable { i64 26, i64 119, i64 13, i64 1216 }, %struct.HuffmanTable { i64 26, i64 82, i64 13, i64 1280 }, %struct.HuffmanTable { i64 26, i64 83, i64 13, i64 1344 }, %struct.HuffmanTable { i64 26, i64 84, i64 13, i64 1408 }, %struct.HuffmanTable { i64 26, i64 85, i64 13, i64 1472 }, %struct.HuffmanTable { i64 26, i64 90, i64 13, i64 1536 }, %struct.HuffmanTable { i64 26, i64 91, i64 13, i64 1600 }, %struct.HuffmanTable { i64 26, i64 100, i64 13, i64 1664 }, %struct.HuffmanTable { i64 26, i64 101, i64 13, i64 1728 }, %struct.HuffmanTable { i64 26, i64 0, i64 0, i64 0 }], align 16
@LoadImageTag = external constant [0 x i8], align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"FAX\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"DelegateLibrarySupportNotBuiltIn\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"`%s' (ZIP)\00", align 1
@Ascii85Tuple.tuple = internal global [6 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Ascii85Initialize(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 51
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %16

6:                                                ; preds = %1
  %7 = tail call dereferenceable_or_null(32) ptr @AcquireMagickMemory(i64 noundef 32) #12
  store ptr %7, ptr %3, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #13
  call void @GetExceptionInfo(ptr noundef nonnull %2) #14
  %10 = tail call ptr @__errno_location() #15
  %11 = load i32, ptr %10, align 4, !tbaa !53
  %12 = call ptr @GetExceptionMessage(i32 noundef %11) #14
  %13 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 276, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %12) #14
  %14 = call ptr @DestroyString(ptr noundef %12) #14
  call void @CatchException(ptr noundef nonnull %2) #14
  %15 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #14
  call void @MagickCoreTerminus() #14
  call void @_exit(i32 noundef 1) #16
  unreachable

16:                                               ; preds = %1, %6
  %17 = phi ptr [ %7, %6 ], [ %4, %1 ]
  %18 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %17, i32 noundef 0, i64 noundef 32) #14
  %19 = load ptr, ptr %3, align 8, !tbaa !34
  %20 = getelementptr inbounds %struct._Ascii85Info, ptr %19, i64 0, i32 1
  store i64 72, ptr %20, align 8, !tbaa !54
  store i64 0, ptr %19, align 8, !tbaa !56
  ret void
}

; Function Attrs: optsize allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @DestroyString(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @CatchException(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @MagickCoreTerminus() local_unnamed_addr #3

; Function Attrs: noreturn optsize
declare void @_exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Ascii85Flush(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !57
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 290, ptr noundef nonnull @.str.4, ptr noundef nonnull %6) #14
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 51
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = load i64, ptr %10, align 8, !tbaa !56
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct._Ascii85Info, ptr %10, i64 0, i32 2, i64 %11
  store i8 0, ptr %14, align 1, !tbaa !58
  %15 = load ptr, ptr %9, align 8, !tbaa !34
  %16 = load i64, ptr %15, align 8, !tbaa !56
  %17 = add nsw i64 %16, 1
  %18 = getelementptr inbounds %struct._Ascii85Info, ptr %15, i64 0, i32 2, i64 %17
  store i8 0, ptr %18, align 1, !tbaa !58
  %19 = load ptr, ptr %9, align 8, !tbaa !34
  %20 = load i64, ptr %19, align 8, !tbaa !56
  %21 = add nsw i64 %20, 2
  %22 = getelementptr inbounds %struct._Ascii85Info, ptr %19, i64 0, i32 2, i64 %21
  store i8 0, ptr %22, align 1, !tbaa !58
  %23 = load ptr, ptr %9, align 8, !tbaa !34
  %24 = getelementptr inbounds %struct._Ascii85Info, ptr %23, i64 0, i32 2
  tail call fastcc void @Ascii85Tuple(ptr noundef nonnull %24) #17
  %25 = load ptr, ptr %9, align 8, !tbaa !34
  %26 = load i64, ptr %25, align 8, !tbaa !56
  %27 = add i64 %26, 1
  %28 = load i8, ptr @Ascii85Tuple.tuple, align 1, !tbaa !58
  %29 = icmp eq i8 %28, 122
  %30 = select i1 %29, ptr @.str.5, ptr @Ascii85Tuple.tuple
  %31 = tail call i64 @WriteBlob(ptr noundef nonnull %0, i64 noundef %27, ptr noundef nonnull %30) #14
  br label %32

32:                                               ; preds = %13, %8
  %33 = tail call i64 @WriteBlobByte(ptr noundef nonnull %0, i8 noundef zeroext 126) #14
  %34 = tail call i64 @WriteBlobByte(ptr noundef nonnull %0, i8 noundef zeroext 62) #14
  %35 = tail call i64 @WriteBlobByte(ptr noundef nonnull %0, i8 noundef zeroext 10) #14
  ret void
}

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @Ascii85Tuple(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !59 {
  %2 = load i8, ptr %0, align 1, !tbaa !58
  %3 = zext i8 %2 to i64
  %4 = getelementptr inbounds i8, ptr %0, i64 1
  %5 = load i8, ptr %4, align 1, !tbaa !58
  %6 = zext i8 %5 to i64
  %7 = shl nuw nsw i64 %3, 24
  %8 = shl nuw nsw i64 %6, 16
  %9 = or disjoint i64 %8, %7
  %10 = getelementptr inbounds i8, ptr %0, i64 2
  %11 = load i8, ptr %10, align 1, !tbaa !58
  %12 = zext i8 %11 to i64
  %13 = shl nuw nsw i64 %12, 8
  %14 = or disjoint i64 %9, %13
  %15 = getelementptr inbounds i8, ptr %0, i64 3
  %16 = load i8, ptr %15, align 1, !tbaa !58
  %17 = zext i8 %16 to i64
  %18 = or disjoint i64 %14, %17
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i8 122, ptr @Ascii85Tuple.tuple, align 1, !tbaa !58
  br label %38

21:                                               ; preds = %1, %21
  %22 = phi i64 [ %31, %21 ], [ 52200625, %1 ]
  %23 = phi i64 [ %27, %21 ], [ %18, %1 ]
  %24 = phi i64 [ %32, %21 ], [ 0, %1 ]
  %25 = udiv i64 %23, %22
  %26 = mul nuw i64 %25, %22
  %27 = urem i64 %23, %22
  %28 = trunc i64 %25 to i8
  %29 = add i8 %28, 33
  %30 = getelementptr inbounds [6 x i8], ptr @Ascii85Tuple.tuple, i64 0, i64 %24
  store i8 %29, ptr %30, align 1, !tbaa !58
  %31 = udiv i64 %22, 85
  %32 = add nuw nsw i64 %24, 1
  %33 = icmp eq i64 %32, 4
  br i1 %33, label %34, label %21, !llvm.loop !60

34:                                               ; preds = %21
  %35 = urem i64 %27, 85
  %36 = trunc i64 %35 to i8
  %37 = add nuw nsw i8 %36, 33
  store i8 %37, ptr getelementptr inbounds ([6 x i8], ptr @Ascii85Tuple.tuple, i64 0, i64 4), align 1, !tbaa !58
  br label %38

38:                                               ; preds = %34, %20
  %39 = phi ptr [ getelementptr inbounds ([6 x i8], ptr @Ascii85Tuple.tuple, i64 0, i64 5), %34 ], [ getelementptr inbounds ([6 x i8], ptr @Ascii85Tuple.tuple, i64 0, i64 1), %20 ]
  store i8 0, ptr %39, align 1, !tbaa !58
  ret void
}

; Function Attrs: optsize
declare i64 @WriteBlob(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @WriteBlobByte(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Ascii85Encode(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 51
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = load i64, ptr %4, align 8, !tbaa !56
  %6 = getelementptr inbounds %struct._Ascii85Info, ptr %4, i64 0, i32 2, i64 %5
  store i8 %1, ptr %6, align 1, !tbaa !58
  %7 = load ptr, ptr %3, align 8, !tbaa !34
  %8 = load i64, ptr %7, align 8, !tbaa !56
  %9 = add nsw i64 %8, 1
  store i64 %9, ptr %7, align 8, !tbaa !56
  %10 = icmp slt i64 %8, 3
  br i1 %10, label %55, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct._Ascii85Info, ptr %7, i64 0, i32 2
  br label %13

13:                                               ; preds = %11, %39
  %14 = phi i64 [ %41, %39 ], [ %9, %11 ]
  %15 = phi ptr [ %40, %39 ], [ %12, %11 ]
  tail call fastcc void @Ascii85Tuple(ptr noundef nonnull %15) #17
  %16 = load i8, ptr @Ascii85Tuple.tuple, align 1, !tbaa !58
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %39, label %18

18:                                               ; preds = %13, %33
  %19 = phi i8 [ %37, %33 ], [ %16, %13 ]
  %20 = phi ptr [ %36, %33 ], [ @Ascii85Tuple.tuple, %13 ]
  %21 = load ptr, ptr %3, align 8, !tbaa !34
  %22 = getelementptr inbounds %struct._Ascii85Info, ptr %21, i64 0, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !54
  %24 = add nsw i64 %23, -1
  store i64 %24, ptr %22, align 8, !tbaa !54
  %25 = icmp sgt i64 %23, 0
  %26 = icmp eq i8 %19, 37
  %27 = or i1 %26, %25
  br i1 %27, label %33, label %28

28:                                               ; preds = %18
  %29 = tail call i64 @WriteBlobByte(ptr noundef nonnull %0, i8 noundef zeroext 10) #14
  %30 = load ptr, ptr %3, align 8, !tbaa !34
  %31 = getelementptr inbounds %struct._Ascii85Info, ptr %30, i64 0, i32 1
  store i64 72, ptr %31, align 8, !tbaa !54
  %32 = load i8, ptr %20, align 1, !tbaa !58
  br label %33

33:                                               ; preds = %28, %18
  %34 = phi i8 [ %32, %28 ], [ %19, %18 ]
  %35 = tail call i64 @WriteBlobByte(ptr noundef nonnull %0, i8 noundef zeroext %34) #14
  %36 = getelementptr inbounds i8, ptr %20, i64 1
  %37 = load i8, ptr %36, align 1, !tbaa !58
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %18, !llvm.loop !62

39:                                               ; preds = %33, %13
  %40 = getelementptr inbounds i8, ptr %15, i64 8
  %41 = add nsw i64 %14, -4
  %42 = icmp sgt i64 %14, 7
  br i1 %42, label %13, label %43, !llvm.loop !63

43:                                               ; preds = %39
  %44 = load ptr, ptr %3, align 8, !tbaa !34
  store i64 %41, ptr %44, align 8, !tbaa !56
  %45 = getelementptr inbounds i8, ptr %15, i64 4
  br label %46

46:                                               ; preds = %43, %46
  %47 = phi i64 [ 0, %43 ], [ %53, %46 ]
  %48 = phi ptr [ %45, %43 ], [ %49, %46 ]
  %49 = getelementptr inbounds i8, ptr %48, i64 1
  %50 = load i8, ptr %48, align 1, !tbaa !58
  %51 = load ptr, ptr %3, align 8, !tbaa !34
  %52 = getelementptr inbounds %struct._Ascii85Info, ptr %51, i64 0, i32 2, i64 %47
  store i8 %50, ptr %52, align 1, !tbaa !58
  %53 = add nuw nsw i64 %47, 1
  %54 = icmp eq i64 %53, 4
  br i1 %54, label %55, label %46, !llvm.loop !64

55:                                               ; preds = %46, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @HuffmanDecodeImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !57
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 473, ptr noundef nonnull @.str.4, ptr noundef nonnull %6) #14
  br label %8

8:                                                ; preds = %5, %1
  %9 = tail call dereferenceable_or_null(8168) ptr @AcquireQuantumMemory(i64 noundef 1021, i64 noundef 8) #18
  %10 = tail call dereferenceable_or_null(8168) ptr @AcquireQuantumMemory(i64 noundef 1021, i64 noundef 8) #18
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %12 = load i64, ptr %11, align 8, !tbaa !65
  %13 = tail call ptr @AcquireQuantumMemory(i64 noundef %12, i64 noundef 1) #18
  %14 = icmp eq ptr %9, null
  %15 = icmp eq ptr %10, null
  %16 = or i1 %14, %15
  %17 = icmp eq ptr %13, null
  %18 = select i1 %16, i1 true, i1 %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %22 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %20, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 482, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %21) #14
  br label %440

23:                                               ; preds = %8, %23
  %24 = phi i64 [ %27, %23 ], [ 0, %8 ]
  %25 = getelementptr inbounds ptr, ptr %9, i64 %24
  store ptr null, ptr %25, align 8, !tbaa !66
  %26 = getelementptr inbounds ptr, ptr %10, i64 %24
  store ptr null, ptr %26, align 8, !tbaa !66
  %27 = add nuw nsw i64 %24, 1
  %28 = icmp eq i64 %27, 1021
  br i1 %28, label %29, label %23, !llvm.loop !67

29:                                               ; preds = %23, %29
  %30 = phi i64 [ %41, %29 ], [ 53, %23 ]
  %31 = phi ptr [ %39, %29 ], [ @TWTable, %23 ]
  %32 = getelementptr inbounds %struct.HuffmanTable, ptr %31, i64 0, i32 2
  %33 = load i64, ptr %32, align 8, !tbaa !68
  %34 = add i64 %33, 3510
  %35 = add i64 %30, 1178
  %36 = mul i64 %34, %35
  %37 = urem i64 %36, 1021
  %38 = getelementptr inbounds ptr, ptr %10, i64 %37
  store ptr %31, ptr %38, align 8, !tbaa !66
  %39 = getelementptr inbounds %struct.HuffmanTable, ptr %31, i64 1
  %40 = getelementptr inbounds %struct.HuffmanTable, ptr %31, i64 1, i32 1
  %41 = load i64, ptr %40, align 8, !tbaa !70
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %29, !llvm.loop !71

43:                                               ; preds = %29, %43
  %44 = phi i64 [ %55, %43 ], [ 27, %29 ]
  %45 = phi ptr [ %53, %43 ], [ @MWTable, %29 ]
  %46 = getelementptr inbounds %struct.HuffmanTable, ptr %45, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !68
  %48 = add i64 %47, 3510
  %49 = add i64 %44, 1178
  %50 = mul i64 %48, %49
  %51 = urem i64 %50, 1021
  %52 = getelementptr inbounds ptr, ptr %10, i64 %51
  store ptr %45, ptr %52, align 8, !tbaa !66
  %53 = getelementptr inbounds %struct.HuffmanTable, ptr %45, i64 1
  %54 = getelementptr inbounds %struct.HuffmanTable, ptr %45, i64 1, i32 1
  %55 = load i64, ptr %54, align 8, !tbaa !70
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %43, !llvm.loop !72

57:                                               ; preds = %43, %57
  %58 = phi i64 [ %69, %57 ], [ 8, %43 ]
  %59 = phi ptr [ %67, %57 ], [ @EXTable, %43 ]
  %60 = getelementptr inbounds %struct.HuffmanTable, ptr %59, i64 0, i32 2
  %61 = load i64, ptr %60, align 8, !tbaa !68
  %62 = add i64 %61, 3510
  %63 = add i64 %58, 1178
  %64 = mul i64 %62, %63
  %65 = urem i64 %64, 1021
  %66 = getelementptr inbounds ptr, ptr %10, i64 %65
  store ptr %59, ptr %66, align 8, !tbaa !66
  %67 = getelementptr inbounds %struct.HuffmanTable, ptr %59, i64 1
  %68 = getelementptr inbounds %struct.HuffmanTable, ptr %59, i64 1, i32 1
  %69 = load i64, ptr %68, align 8, !tbaa !70
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %57, !llvm.loop !73

71:                                               ; preds = %57, %71
  %72 = phi i64 [ %83, %71 ], [ 55, %57 ]
  %73 = phi ptr [ %81, %71 ], [ @TBTable, %57 ]
  %74 = getelementptr inbounds %struct.HuffmanTable, ptr %73, i64 0, i32 2
  %75 = load i64, ptr %74, align 8, !tbaa !68
  %76 = add i64 %75, 293
  %77 = add i64 %72, 2695
  %78 = mul i64 %76, %77
  %79 = urem i64 %78, 1021
  %80 = getelementptr inbounds ptr, ptr %9, i64 %79
  store ptr %73, ptr %80, align 8, !tbaa !66
  %81 = getelementptr inbounds %struct.HuffmanTable, ptr %73, i64 1
  %82 = getelementptr inbounds %struct.HuffmanTable, ptr %73, i64 1, i32 1
  %83 = load i64, ptr %82, align 8, !tbaa !70
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %71, !llvm.loop !74

85:                                               ; preds = %71, %85
  %86 = phi i64 [ %97, %85 ], [ 15, %71 ]
  %87 = phi ptr [ %95, %85 ], [ @MBTable, %71 ]
  %88 = getelementptr inbounds %struct.HuffmanTable, ptr %87, i64 0, i32 2
  %89 = load i64, ptr %88, align 8, !tbaa !68
  %90 = add i64 %89, 293
  %91 = add i64 %86, 2695
  %92 = mul i64 %90, %91
  %93 = urem i64 %92, 1021
  %94 = getelementptr inbounds ptr, ptr %9, i64 %93
  store ptr %87, ptr %94, align 8, !tbaa !66
  %95 = getelementptr inbounds %struct.HuffmanTable, ptr %87, i64 1
  %96 = getelementptr inbounds %struct.HuffmanTable, ptr %87, i64 1, i32 1
  %97 = load i64, ptr %96, align 8, !tbaa !70
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %85, !llvm.loop !75

99:                                               ; preds = %85, %99
  %100 = phi i64 [ %111, %99 ], [ 8, %85 ]
  %101 = phi ptr [ %109, %99 ], [ @EXTable, %85 ]
  %102 = getelementptr inbounds %struct.HuffmanTable, ptr %101, i64 0, i32 2
  %103 = load i64, ptr %102, align 8, !tbaa !68
  %104 = add i64 %103, 293
  %105 = add i64 %100, 2695
  %106 = mul i64 %104, %105
  %107 = urem i64 %106, 1021
  %108 = getelementptr inbounds ptr, ptr %9, i64 %107
  store ptr %101, ptr %108, align 8, !tbaa !66
  %109 = getelementptr inbounds %struct.HuffmanTable, ptr %101, i64 1
  %110 = getelementptr inbounds %struct.HuffmanTable, ptr %101, i64 1, i32 1
  %111 = load i64, ptr %110, align 8, !tbaa !70
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %99, !llvm.loop !76

113:                                              ; preds = %99, %122
  %114 = phi i64 [ %130, %122 ], [ 0, %99 ]
  %115 = phi i64 [ %129, %122 ], [ 0, %99 ]
  %116 = phi i32 [ %123, %122 ], [ 0, %99 ]
  %117 = and i64 %115, 255
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %113
  %120 = tail call i32 @ReadBlobByte(ptr noundef %0) #14
  %121 = icmp eq i32 %120, -1
  br i1 %121, label %132, label %122

122:                                              ; preds = %119, %113
  %123 = phi i32 [ %116, %113 ], [ %120, %119 ]
  %124 = phi i64 [ %115, %113 ], [ 128, %119 ]
  %125 = add nuw nsw i64 %114, 1
  %126 = sext i32 %123 to i64
  %127 = and i64 %124, %126
  %128 = icmp eq i64 %127, 0
  %129 = lshr i64 %124, 1
  %130 = select i1 %128, i64 %125, i64 0
  %131 = icmp ult i64 %130, 11
  br i1 %131, label %113, label %132

132:                                              ; preds = %119, %122
  %133 = phi i32 [ %123, %122 ], [ -1, %119 ]
  %134 = phi i64 [ %129, %122 ], [ %115, %119 ]
  br label %135

135:                                              ; preds = %132, %143
  %136 = phi i32 [ %144, %143 ], [ %133, %132 ]
  %137 = phi i64 [ %149, %143 ], [ %134, %132 ]
  %138 = and i64 %137, 255
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %135
  %141 = tail call i32 @ReadBlobByte(ptr noundef %0) #14
  %142 = icmp eq i32 %141, -1
  br i1 %142, label %150, label %143

143:                                              ; preds = %140, %135
  %144 = phi i32 [ %136, %135 ], [ %141, %140 ]
  %145 = phi i64 [ %137, %135 ], [ 128, %140 ]
  %146 = sext i32 %144 to i64
  %147 = and i64 %145, %146
  %148 = icmp eq i64 %147, 0
  %149 = lshr i64 %145, 1
  br i1 %148, label %135, label %150, !llvm.loop !77

150:                                              ; preds = %140, %143
  %151 = phi i32 [ -1, %140 ], [ %144, %143 ]
  %152 = phi i64 [ %137, %140 ], [ %149, %143 ]
  %153 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 24
  store <2 x double> <double 2.040000e+02, double 1.960000e+02>, ptr %153, align 8, !tbaa !78
  %154 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 19
  store i32 1, ptr %154, align 8, !tbaa !79
  %155 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %156 = tail call ptr @AcquireAuthenticCacheView(ptr noundef %0, ptr noundef nonnull %155) #14
  %157 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %158 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  br label %159

159:                                              ; preds = %427, %150
  %160 = phi i32 [ %151, %150 ], [ %397, %427 ]
  %161 = phi i64 [ %152, %150 ], [ %398, %427 ]
  %162 = phi i64 [ 0, %150 ], [ %399, %427 ]
  %163 = phi i64 [ 0, %150 ], [ %431, %427 ]
  %164 = load i64, ptr %157, align 8, !tbaa !80
  %165 = icmp slt i64 %163, %164
  %166 = icmp ult i64 %162, 3
  %167 = select i1 %165, i1 %166, i1 false
  br i1 %167, label %168, label %432

168:                                              ; preds = %159
  %169 = load i64, ptr %11, align 8, !tbaa !65
  %170 = icmp sgt i64 %169, 0
  br i1 %170, label %173, label %171

171:                                              ; preds = %173, %168
  %172 = icmp eq i32 %160, -1
  br i1 %172, label %396, label %389

173:                                              ; preds = %168, %173
  %174 = phi i64 [ %177, %173 ], [ 0, %168 ]
  %175 = phi ptr [ %176, %173 ], [ %13, %168 ]
  %176 = getelementptr inbounds i8, ptr %175, i64 1
  store i8 0, ptr %175, align 1, !tbaa !58
  %177 = add nuw nsw i64 %174, 1
  %178 = load i64, ptr %11, align 8, !tbaa !65
  %179 = icmp slt i64 %177, %178
  br i1 %179, label %173, label %171, !llvm.loop !81

180:                                              ; preds = %327, %356
  %181 = phi i64 [ %329, %327 ], [ %280, %356 ]
  %182 = phi i64 [ %330, %327 ], [ %279, %356 ]
  %183 = phi i64 [ %331, %327 ], [ %278, %356 ]
  %184 = phi i64 [ %332, %327 ], [ %277, %356 ]
  %185 = phi i32 [ %333, %327 ], [ %276, %356 ]
  %186 = load i64, ptr %11, align 8, !tbaa !65
  %187 = icmp slt i64 %390, %186
  br i1 %187, label %227, label %188

188:                                              ; preds = %180
  %189 = icmp ult i64 %181, 11
  br i1 %189, label %190, label %209

190:                                              ; preds = %188, %199
  %191 = phi i64 [ %207, %199 ], [ %181, %188 ]
  %192 = phi i64 [ %206, %199 ], [ %183, %188 ]
  %193 = phi i32 [ %200, %199 ], [ %185, %188 ]
  %194 = and i64 %192, 255
  %195 = icmp eq i64 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %190
  %197 = tail call i32 @ReadBlobByte(ptr noundef %0) #14
  %198 = icmp eq i32 %197, -1
  br i1 %198, label %209, label %199

199:                                              ; preds = %196, %190
  %200 = phi i32 [ %193, %190 ], [ %197, %196 ]
  %201 = phi i64 [ %192, %190 ], [ 128, %196 ]
  %202 = add nuw nsw i64 %191, 1
  %203 = sext i32 %200 to i64
  %204 = and i64 %201, %203
  %205 = icmp eq i64 %204, 0
  %206 = lshr i64 %201, 1
  %207 = select i1 %205, i64 %202, i64 0
  %208 = icmp ult i64 %207, 11
  br i1 %208, label %190, label %209

209:                                              ; preds = %199, %196, %188
  %210 = phi i32 [ %185, %188 ], [ %200, %199 ], [ -1, %196 ]
  %211 = phi i64 [ %183, %188 ], [ %206, %199 ], [ %192, %196 ]
  br label %212

212:                                              ; preds = %209, %220
  %213 = phi i32 [ %221, %220 ], [ %210, %209 ]
  %214 = phi i64 [ %226, %220 ], [ %211, %209 ]
  %215 = and i64 %214, 255
  %216 = icmp eq i64 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %212
  %218 = tail call i32 @ReadBlobByte(ptr noundef %0) #14
  %219 = icmp eq i32 %218, -1
  br i1 %219, label %396, label %220

220:                                              ; preds = %217, %212
  %221 = phi i32 [ %213, %212 ], [ %218, %217 ]
  %222 = phi i64 [ %214, %212 ], [ 128, %217 ]
  %223 = sext i32 %221 to i64
  %224 = and i64 %222, %223
  %225 = icmp eq i64 %224, 0
  %226 = lshr i64 %222, 1
  br i1 %225, label %212, label %396, !llvm.loop !82

227:                                              ; preds = %180, %261
  %228 = phi i32 [ %262, %261 ], [ %185, %180 ]
  %229 = phi i64 [ 0, %261 ], [ %184, %180 ]
  %230 = phi i64 [ %264, %261 ], [ %183, %180 ]
  %231 = phi i64 [ %269, %261 ], [ %182, %180 ]
  %232 = phi i64 [ %265, %261 ], [ %181, %180 ]
  %233 = icmp ult i64 %232, 11
  %234 = and i64 %230, 255
  %235 = icmp eq i64 %234, 0
  br i1 %233, label %236, label %249

236:                                              ; preds = %227
  br i1 %235, label %237, label %240

237:                                              ; preds = %236
  %238 = tail call i32 @ReadBlobByte(ptr noundef %0) #14
  %239 = icmp eq i32 %238, -1
  br i1 %239, label %275, label %240

240:                                              ; preds = %237, %236
  %241 = phi i32 [ %228, %236 ], [ %238, %237 ]
  %242 = phi i64 [ %230, %236 ], [ 128, %237 ]
  %243 = add nuw nsw i64 %232, 1
  %244 = sext i32 %241 to i64
  %245 = and i64 %242, %244
  %246 = icmp ne i64 %245, 0
  %247 = lshr i64 %242, 1
  %248 = select i1 %246, i64 0, i64 %243
  br label %261

249:                                              ; preds = %227
  br i1 %235, label %250, label %253

250:                                              ; preds = %249
  %251 = tail call i32 @ReadBlobByte(ptr noundef %0) #14
  %252 = icmp eq i32 %251, -1
  br i1 %252, label %275, label %253

253:                                              ; preds = %250, %249
  %254 = phi i32 [ %228, %249 ], [ %251, %250 ]
  %255 = phi i64 [ %230, %249 ], [ 128, %250 ]
  %256 = add i64 %232, 1
  %257 = sext i32 %254 to i64
  %258 = and i64 %255, %257
  %259 = icmp eq i64 %258, 0
  %260 = lshr i64 %255, 1
  br i1 %259, label %261, label %271

261:                                              ; preds = %240, %253
  %262 = phi i32 [ %254, %253 ], [ %241, %240 ]
  %263 = phi i1 [ false, %253 ], [ %246, %240 ]
  %264 = phi i64 [ %260, %253 ], [ %247, %240 ]
  %265 = phi i64 [ %256, %253 ], [ %248, %240 ]
  %266 = zext i1 %263 to i64
  %267 = shl i64 %229, 1
  %268 = or disjoint i64 %267, %266
  %269 = add i64 %231, 1
  %270 = icmp eq i64 %268, 0
  br i1 %270, label %227, label %275, !llvm.loop !83

271:                                              ; preds = %253
  %272 = add i64 %162, 1
  %273 = icmp eq i64 %390, 0
  %274 = select i1 %273, i64 %272, i64 0
  br label %396

275:                                              ; preds = %237, %261, %250
  %276 = phi i32 [ -1, %250 ], [ %262, %261 ], [ -1, %237 ]
  %277 = phi i64 [ %229, %250 ], [ %268, %261 ], [ %229, %237 ]
  %278 = phi i64 [ %230, %250 ], [ %264, %261 ], [ %230, %237 ]
  %279 = phi i64 [ %231, %250 ], [ %269, %261 ], [ %231, %237 ]
  %280 = phi i64 [ %232, %250 ], [ %265, %261 ], [ %232, %237 ]
  %281 = icmp ugt i64 %279, 13
  br i1 %281, label %282, label %321

282:                                              ; preds = %275
  %283 = icmp ult i64 %280, 11
  br i1 %283, label %284, label %303

284:                                              ; preds = %282, %293
  %285 = phi i64 [ %301, %293 ], [ %280, %282 ]
  %286 = phi i64 [ %300, %293 ], [ %278, %282 ]
  %287 = phi i32 [ %294, %293 ], [ %276, %282 ]
  %288 = and i64 %286, 255
  %289 = icmp eq i64 %288, 0
  br i1 %289, label %290, label %293

290:                                              ; preds = %284
  %291 = tail call i32 @ReadBlobByte(ptr noundef %0) #14
  %292 = icmp eq i32 %291, -1
  br i1 %292, label %303, label %293

293:                                              ; preds = %290, %284
  %294 = phi i32 [ %287, %284 ], [ %291, %290 ]
  %295 = phi i64 [ %286, %284 ], [ 128, %290 ]
  %296 = add nuw nsw i64 %285, 1
  %297 = sext i32 %294 to i64
  %298 = and i64 %295, %297
  %299 = icmp eq i64 %298, 0
  %300 = lshr i64 %295, 1
  %301 = select i1 %299, i64 %296, i64 0
  %302 = icmp ult i64 %301, 11
  br i1 %302, label %284, label %303

303:                                              ; preds = %293, %290, %282
  %304 = phi i32 [ %276, %282 ], [ %294, %293 ], [ -1, %290 ]
  %305 = phi i64 [ %278, %282 ], [ %300, %293 ], [ %286, %290 ]
  br label %306

306:                                              ; preds = %303, %314
  %307 = phi i32 [ %315, %314 ], [ %304, %303 ]
  %308 = phi i64 [ %320, %314 ], [ %305, %303 ]
  %309 = and i64 %308, 255
  %310 = icmp eq i64 %309, 0
  br i1 %310, label %311, label %314

311:                                              ; preds = %306
  %312 = tail call i32 @ReadBlobByte(ptr noundef %0) #14
  %313 = icmp eq i32 %312, -1
  br i1 %313, label %396, label %314

314:                                              ; preds = %311, %306
  %315 = phi i32 [ %307, %306 ], [ %312, %311 ]
  %316 = phi i64 [ %308, %306 ], [ 128, %311 ]
  %317 = sext i32 %315 to i64
  %318 = and i64 %316, %317
  %319 = icmp eq i64 %318, 0
  %320 = lshr i64 %316, 1
  br i1 %319, label %306, label %396, !llvm.loop !84

321:                                              ; preds = %275
  br i1 %334, label %335, label %322

322:                                              ; preds = %321
  %323 = icmp ult i64 %279, 4
  br i1 %323, label %324, label %337

324:                                              ; preds = %322, %335
  %325 = phi i32 [ 1, %322 ], [ 0, %335 ]
  %326 = icmp eq i32 %276, -1
  br i1 %326, label %396, label %327

327:                                              ; preds = %389, %324
  %328 = phi i32 [ %391, %389 ], [ %325, %324 ]
  %329 = phi i64 [ %393, %389 ], [ %280, %324 ]
  %330 = phi i64 [ 0, %389 ], [ %279, %324 ]
  %331 = phi i64 [ %394, %389 ], [ %278, %324 ]
  %332 = phi i64 [ 0, %389 ], [ %277, %324 ]
  %333 = phi i32 [ %395, %389 ], [ %276, %324 ]
  %334 = icmp eq i32 %328, 0
  br label %180

335:                                              ; preds = %321
  %336 = icmp ult i64 %279, 2
  br i1 %336, label %324, label %337

337:                                              ; preds = %335, %322
  %338 = phi i64 [ 3510, %322 ], [ 293, %335 ]
  %339 = phi i64 [ 1178, %322 ], [ 2695, %335 ]
  %340 = phi ptr [ %10, %322 ], [ %9, %335 ]
  %341 = add nuw nsw i64 %279, %338
  %342 = add i64 %277, %339
  %343 = mul i64 %341, %342
  %344 = urem i64 %343, 1021
  %345 = getelementptr inbounds ptr, ptr %340, i64 %344
  %346 = load ptr, ptr %345, align 8, !tbaa !66
  %347 = icmp eq ptr %346, null
  br i1 %347, label %356, label %348

348:                                              ; preds = %337
  %349 = getelementptr inbounds %struct.HuffmanTable, ptr %346, i64 0, i32 2
  %350 = load i64, ptr %349, align 8, !tbaa !68
  %351 = icmp eq i64 %350, %279
  br i1 %351, label %352, label %356

352:                                              ; preds = %348
  %353 = getelementptr inbounds %struct.HuffmanTable, ptr %346, i64 0, i32 1
  %354 = load i64, ptr %353, align 8, !tbaa !70
  %355 = icmp eq i64 %354, %277
  br i1 %355, label %358, label %356

356:                                              ; preds = %348, %352, %337
  %357 = icmp eq i32 %276, -1
  br i1 %357, label %396, label %180

358:                                              ; preds = %352
  %359 = load i64, ptr %346, align 8, !tbaa !85
  switch i64 %359, label %384 [
    i64 23, label %360
    i64 25, label %360
    i64 24, label %380
    i64 26, label %380
    i64 27, label %380
  ]

360:                                              ; preds = %358, %358
  %361 = getelementptr inbounds %struct.HuffmanTable, ptr %346, i64 0, i32 3
  %362 = load i64, ptr %361, align 8, !tbaa !86
  %363 = add nsw i64 %362, %392
  %364 = add nsw i64 %363, %390
  %365 = load i64, ptr %11, align 8, !tbaa !65
  %366 = icmp sgt i64 %364, %365
  %367 = sub nsw i64 %365, %390
  %368 = select i1 %366, i64 %367, i64 %363
  %369 = icmp sgt i64 %368, 0
  br i1 %369, label %370, label %376

370:                                              ; preds = %360
  br i1 %334, label %371, label %374

371:                                              ; preds = %370
  %372 = getelementptr i8, ptr %13, i64 %390
  tail call void @llvm.memset.p0.i64(ptr align 1 %372, i8 1, i64 %368, i1 false), !tbaa !58
  %373 = tail call i64 @llvm.smin.i64(i64 %365, i64 %364)
  br label %376

374:                                              ; preds = %370
  %375 = add nsw i64 %368, %390
  br label %376

376:                                              ; preds = %371, %374, %360
  %377 = phi i64 [ 0, %374 ], [ %368, %360 ], [ 0, %371 ]
  %378 = phi i64 [ %375, %374 ], [ %390, %360 ], [ %373, %371 ]
  %379 = zext i1 %334 to i32
  br label %384

380:                                              ; preds = %358, %358, %358
  %381 = getelementptr inbounds %struct.HuffmanTable, ptr %346, i64 0, i32 3
  %382 = load i64, ptr %381, align 8, !tbaa !86
  %383 = add nsw i64 %382, %392
  br label %384

384:                                              ; preds = %358, %380, %376
  %385 = phi i64 [ %392, %358 ], [ %383, %380 ], [ %377, %376 ]
  %386 = phi i32 [ %328, %358 ], [ %328, %380 ], [ %379, %376 ]
  %387 = phi i64 [ %390, %358 ], [ %390, %380 ], [ %378, %376 ]
  %388 = icmp eq i32 %276, -1
  br i1 %388, label %396, label %389

389:                                              ; preds = %171, %384
  %390 = phi i64 [ %387, %384 ], [ 0, %171 ]
  %391 = phi i32 [ %386, %384 ], [ 1, %171 ]
  %392 = phi i64 [ %385, %384 ], [ 0, %171 ]
  %393 = phi i64 [ %280, %384 ], [ 0, %171 ]
  %394 = phi i64 [ %278, %384 ], [ %161, %171 ]
  %395 = phi i32 [ %276, %384 ], [ %160, %171 ]
  br label %327

396:                                              ; preds = %384, %220, %217, %314, %311, %324, %356, %171, %271
  %397 = phi i32 [ %254, %271 ], [ -1, %171 ], [ -1, %356 ], [ -1, %324 ], [ %315, %314 ], [ -1, %311 ], [ %221, %220 ], [ -1, %217 ], [ -1, %384 ]
  %398 = phi i64 [ %260, %271 ], [ %161, %171 ], [ %278, %356 ], [ %278, %324 ], [ %320, %314 ], [ %308, %311 ], [ %226, %220 ], [ %214, %217 ], [ %278, %384 ]
  %399 = phi i64 [ %274, %271 ], [ %162, %171 ], [ %162, %356 ], [ %162, %324 ], [ %162, %311 ], [ %162, %314 ], [ %162, %217 ], [ %162, %220 ], [ %162, %384 ]
  %400 = load i64, ptr %11, align 8, !tbaa !65
  %401 = tail call ptr @QueueCacheViewAuthenticPixels(ptr noundef %156, i64 noundef 0, i64 noundef %163, i64 noundef %400, i64 noundef 1, ptr noundef nonnull %155) #19
  %402 = icmp eq ptr %401, null
  br i1 %402, label %432, label %403

403:                                              ; preds = %396
  %404 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %156) #14
  %405 = load i64, ptr %11, align 8, !tbaa !65
  %406 = icmp sgt i64 %405, 0
  br i1 %406, label %407, label %424

407:                                              ; preds = %403
  %408 = icmp eq ptr %404, null
  %409 = load ptr, ptr %158, align 8, !tbaa !87
  br label %410

410:                                              ; preds = %407, %418
  %411 = phi i64 [ 0, %407 ], [ %422, %418 ]
  %412 = phi ptr [ %13, %407 ], [ %413, %418 ]
  %413 = getelementptr inbounds i8, ptr %412, i64 1
  %414 = load i8, ptr %412, align 1, !tbaa !58
  br i1 %408, label %418, label %415

415:                                              ; preds = %410
  %416 = zext i8 %414 to i16
  %417 = getelementptr inbounds i16, ptr %404, i64 %411
  store i16 %416, ptr %417, align 2, !tbaa !88
  br label %418

418:                                              ; preds = %415, %410
  %419 = zext i8 %414 to i64
  %420 = getelementptr inbounds %struct._PixelPacket, ptr %409, i64 %419
  %421 = load <4 x i16>, ptr %420, align 2, !tbaa !88
  store <4 x i16> %421, ptr %401, align 2, !tbaa !88
  %422 = add nuw nsw i64 %411, 1
  %423 = icmp eq i64 %422, %405
  br i1 %423, label %424, label %410, !llvm.loop !89

424:                                              ; preds = %418, %403
  %425 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %156, ptr noundef nonnull %155) #19
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %432, label %427

427:                                              ; preds = %424
  %428 = load i64, ptr %157, align 8, !tbaa !80
  %429 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, i64 noundef %163, i64 noundef %428) #17
  %430 = icmp eq i32 %429, 0
  %431 = add nuw nsw i64 %163, 1
  br i1 %430, label %432, label %159

432:                                              ; preds = %427, %424, %396, %159
  %433 = tail call ptr @DestroyCacheView(ptr noundef %156) #14
  %434 = add nsw i64 %163, -3
  %435 = tail call fastcc i64 @MagickMax(i64 noundef %434, i64 noundef 1) #17, !range !90
  store i64 %435, ptr %157, align 8, !tbaa !80
  %436 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 2
  store i32 6, ptr %436, align 8, !tbaa !91
  %437 = tail call ptr @RelinquishMagickMemory(ptr noundef %10) #14
  %438 = tail call ptr @RelinquishMagickMemory(ptr noundef %9) #14
  %439 = tail call ptr @RelinquishMagickMemory(ptr noundef %13) #14
  br label %440

440:                                              ; preds = %19, %432
  %441 = phi i32 [ 1, %432 ], [ 0, %19 ]
  ret i32 %441
}

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @ReadBlobByte(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: hot optsize
declare ptr @QueueCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: hot optsize
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @SetImageProgress(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 !PGOFuncName !92 {
  %4 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #13
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %6 = load ptr, ptr %5, align 8, !tbaa !93
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef nonnull @LoadImageTag, ptr noundef nonnull %9) #14
  %11 = load ptr, ptr %5, align 8, !tbaa !93
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %13 = load ptr, ptr %12, align 8, !tbaa !94
  %14 = call i32 %11(ptr noundef nonnull %4, i64 noundef %1, i64 noundef %2, ptr noundef %13) #14
  br label %15

15:                                               ; preds = %3, %8
  %16 = phi i32 [ %14, %8 ], [ 1, %3 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #13
  ret i32 %16
}

; Function Attrs: optsize
declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @MagickMax(i64 noundef %0, i64 noundef %1) unnamed_addr #9 !PGOFuncName !95 {
  %3 = tail call i64 @llvm.umax.i64(i64 %0, i64 %1)
  ret i64 %3
}

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @HuffmanEncodeImage(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !57
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 767, ptr noundef nonnull @.str.4, ptr noundef nonnull %8) #14
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 7
  %12 = load i64, ptr %11, align 8, !tbaa !65
  %13 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 48
  %14 = tail call i32 @LocaleCompare(ptr noundef nonnull %13, ptr noundef nonnull @.str.6) #14
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load i64, ptr %11, align 8, !tbaa !65
  %18 = tail call fastcc i64 @MagickMax(i64 noundef %17, i64 noundef 1728) #17, !range !90
  br label %19

19:                                               ; preds = %16, %10
  %20 = phi i64 [ %18, %16 ], [ %12, %10 ]
  %21 = add i64 %20, 1
  %22 = tail call ptr @AcquireQuantumMemory(i64 noundef %21, i64 noundef 1) #18
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %26 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 53
  %27 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %25, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 778, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %26) #14
  br label %398

28:                                               ; preds = %19
  %29 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %22, i32 noundef 0, i64 noundef %20) #14
  %30 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %31 = tail call ptr @CloneImage(ptr noundef nonnull %2, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef nonnull %30) #14
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %22) #14
  br label %398

35:                                               ; preds = %28
  %36 = tail call i32 @SetImageType(ptr noundef nonnull %31, i32 noundef 1) #14
  %37 = tail call i32 @LocaleCompare(ptr noundef nonnull %13, ptr noundef nonnull @.str.6) #14
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  tail call void @Ascii85Initialize(ptr noundef nonnull %1) #17
  br label %64

40:                                               ; preds = %35, %51
  %41 = phi i8 [ %52, %51 ], [ -128, %35 ]
  %42 = phi i32 [ %53, %51 ], [ 0, %35 ]
  %43 = lshr i8 %41, 1
  %44 = icmp ult i8 %41, 2
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = tail call i32 @LocaleCompare(ptr noundef nonnull %13, ptr noundef nonnull @.str.6) #14
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = tail call i64 @WriteBlobByte(ptr noundef %1, i8 noundef zeroext 0) #14
  br label %51

50:                                               ; preds = %45
  tail call void @Ascii85Encode(ptr noundef %1, i8 noundef zeroext 0) #17
  br label %51

51:                                               ; preds = %48, %50, %40
  %52 = phi i8 [ %43, %40 ], [ -128, %50 ], [ -128, %48 ]
  %53 = add nuw nsw i32 %42, 1
  %54 = icmp eq i32 %53, 11
  br i1 %54, label %55, label %40, !llvm.loop !96

55:                                               ; preds = %51
  %56 = lshr i8 %52, 1
  %57 = icmp ult i8 %52, 2
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = tail call i32 @LocaleCompare(ptr noundef nonnull %13, ptr noundef nonnull @.str.6) #14
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = tail call i64 @WriteBlobByte(ptr noundef %1, i8 noundef zeroext %52) #14
  br label %64

63:                                               ; preds = %58
  tail call void @Ascii85Encode(ptr noundef %1, i8 noundef zeroext %52) #17
  br label %64

64:                                               ; preds = %61, %63, %55, %39
  %65 = phi i8 [ 0, %39 ], [ %52, %55 ], [ 0, %63 ], [ 0, %61 ]
  %66 = phi i8 [ -128, %39 ], [ %56, %55 ], [ -128, %63 ], [ -128, %61 ]
  %67 = getelementptr inbounds %struct._Image, ptr %31, i64 0, i32 58
  %68 = getelementptr inbounds %struct._Image, ptr %31, i64 0, i32 7
  %69 = getelementptr inbounds %struct._Image, ptr %31, i64 0, i32 8
  %70 = load i64, ptr %69, align 8, !tbaa !80
  %71 = icmp sgt i64 %70, 0
  br i1 %71, label %72, label %344

72:                                               ; preds = %64
  %73 = icmp sgt i64 %20, 0
  br label %74

74:                                               ; preds = %72, %340
  %75 = phi i8 [ %66, %72 ], [ %333, %340 ]
  %76 = phi i8 [ %65, %72 ], [ %332, %340 ]
  %77 = phi i64 [ 0, %72 ], [ %341, %340 ]
  %78 = load i64, ptr %68, align 8, !tbaa !65
  %79 = tail call ptr @GetVirtualPixels(ptr noundef nonnull %31, i64 noundef 0, i64 noundef %77, i64 noundef %78, i64 noundef 1, ptr noundef nonnull %67) #14
  %80 = icmp eq ptr %79, null
  br i1 %80, label %344, label %81

81:                                               ; preds = %74
  %82 = load i64, ptr %68, align 8, !tbaa !65
  %83 = icmp sgt i64 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %85, %81
  br i1 %73, label %97, label %301

85:                                               ; preds = %81, %85
  %86 = phi ptr [ %92, %85 ], [ %22, %81 ]
  %87 = phi ptr [ %93, %85 ], [ %79, %81 ]
  %88 = phi i64 [ %94, %85 ], [ 0, %81 ]
  %89 = tail call float @GetPixelIntensity(ptr noundef nonnull %31, ptr noundef nonnull %87) #19
  %90 = fcmp ult float %89, 3.276750e+04
  %91 = zext i1 %90 to i8
  %92 = getelementptr inbounds i8, ptr %86, i64 1
  store i8 %91, ptr %86, align 1, !tbaa !58
  %93 = getelementptr inbounds %struct._PixelPacket, ptr %87, i64 1
  %94 = add nuw nsw i64 %88, 1
  %95 = load i64, ptr %68, align 8, !tbaa !65
  %96 = icmp slt i64 %94, %95
  br i1 %96, label %85, label %84, !llvm.loop !97

97:                                               ; preds = %84, %299
  %98 = phi i8 [ %296, %299 ], [ %75, %84 ]
  %99 = phi i8 [ %295, %299 ], [ %76, %84 ]
  %100 = phi i64 [ %265, %299 ], [ %20, %84 ]
  %101 = phi ptr [ %266, %299 ], [ %22, %84 ]
  %102 = tail call i64 @llvm.smin.i64(i64 %100, i64 1)
  %103 = add nsw i64 %102, -1
  br label %104

104:                                              ; preds = %97, %110
  %105 = phi i64 [ %100, %97 ], [ %113, %110 ]
  %106 = phi ptr [ %101, %97 ], [ %111, %110 ]
  %107 = phi i32 [ 0, %97 ], [ %112, %110 ]
  %108 = load i8, ptr %106, align 1, !tbaa !58
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %104
  %111 = getelementptr inbounds i8, ptr %106, i64 1
  %112 = add nuw nsw i32 %107, 1
  %113 = add nsw i64 %105, -1
  %114 = icmp sgt i64 %105, 1
  br i1 %114, label %104, label %115, !llvm.loop !98

115:                                              ; preds = %110, %104
  %116 = phi i32 [ %112, %110 ], [ %107, %104 ]
  %117 = phi ptr [ %111, %110 ], [ %106, %104 ]
  %118 = phi i64 [ %103, %110 ], [ %105, %104 ]
  %119 = icmp ugt i32 %116, 63
  br i1 %119, label %120, label %166

120:                                              ; preds = %115
  %121 = icmp ult i32 %116, 1792
  br i1 %121, label %122, label %126

122:                                              ; preds = %120
  %123 = lshr i32 %116, 6
  %124 = zext nneg i32 %123 to i64
  %125 = getelementptr %struct.HuffmanTable, ptr getelementptr ([28 x %struct.HuffmanTable], ptr @MWTable, i64 -1, i64 27), i64 %124
  br label %132

126:                                              ; preds = %120
  %127 = zext nneg i32 %116 to i64
  %128 = tail call fastcc i64 @MagickMin(i64 noundef %127, i64 noundef 2560) #17
  %129 = add i64 %128, -1792
  %130 = lshr i64 %129, 6
  %131 = getelementptr inbounds %struct.HuffmanTable, ptr @EXTable, i64 %130
  br label %132

132:                                              ; preds = %126, %122
  %133 = phi ptr [ %125, %122 ], [ %131, %126 ]
  %134 = getelementptr inbounds %struct.HuffmanTable, ptr %133, i64 0, i32 3
  %135 = load i64, ptr %134, align 8, !tbaa !86
  %136 = trunc i64 %135 to i32
  %137 = getelementptr inbounds %struct.HuffmanTable, ptr %133, i64 0, i32 2
  %138 = load i64, ptr %137, align 8, !tbaa !68
  %139 = add i64 %138, -1
  %140 = shl nuw i64 1, %139
  %141 = getelementptr inbounds %struct.HuffmanTable, ptr %133, i64 0, i32 1
  %142 = load i64, ptr %141, align 8, !tbaa !70
  br label %143

143:                                              ; preds = %132, %159
  %144 = phi i8 [ %98, %132 ], [ %161, %159 ]
  %145 = phi i8 [ %99, %132 ], [ %160, %159 ]
  %146 = phi i64 [ %140, %132 ], [ %162, %159 ]
  %147 = and i64 %142, %146
  %148 = icmp eq i64 %147, 0
  %149 = select i1 %148, i8 0, i8 %144
  %150 = or i8 %149, %145
  %151 = lshr i8 %144, 1
  %152 = icmp ult i8 %144, 2
  br i1 %152, label %153, label %159

153:                                              ; preds = %143
  %154 = tail call i32 @LocaleCompare(ptr noundef nonnull %13, ptr noundef nonnull @.str.6) #14
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %153
  %157 = tail call i64 @WriteBlobByte(ptr noundef %1, i8 noundef zeroext %150) #14
  br label %159

158:                                              ; preds = %153
  tail call void @Ascii85Encode(ptr noundef %1, i8 noundef zeroext %150) #17
  br label %159

159:                                              ; preds = %156, %158, %143
  %160 = phi i8 [ %150, %143 ], [ 0, %158 ], [ 0, %156 ]
  %161 = phi i8 [ %151, %143 ], [ -128, %158 ], [ -128, %156 ]
  %162 = lshr i64 %146, 1
  %163 = icmp ult i64 %146, 2
  br i1 %163, label %164, label %143, !llvm.loop !99

164:                                              ; preds = %159
  %165 = sub i32 %116, %136
  br label %166

166:                                              ; preds = %164, %115
  %167 = phi i32 [ %116, %115 ], [ %165, %164 ]
  %168 = phi i8 [ %99, %115 ], [ %160, %164 ]
  %169 = phi i8 [ %98, %115 ], [ %161, %164 ]
  %170 = sext i32 %167 to i64
  %171 = tail call fastcc i64 @MagickMin(i64 noundef %170, i64 noundef 63) #17
  %172 = getelementptr inbounds %struct.HuffmanTable, ptr @TWTable, i64 %171, i32 2
  %173 = load i64, ptr %172, align 16, !tbaa !68
  %174 = add i64 %173, -1
  %175 = shl nuw i64 1, %174
  %176 = getelementptr inbounds %struct.HuffmanTable, ptr @TWTable, i64 %171, i32 1
  %177 = load i64, ptr %176, align 8, !tbaa !70
  br label %178

178:                                              ; preds = %166, %194
  %179 = phi i8 [ %169, %166 ], [ %196, %194 ]
  %180 = phi i8 [ %168, %166 ], [ %195, %194 ]
  %181 = phi i64 [ %175, %166 ], [ %197, %194 ]
  %182 = and i64 %177, %181
  %183 = icmp eq i64 %182, 0
  %184 = select i1 %183, i8 0, i8 %179
  %185 = or i8 %184, %180
  %186 = lshr i8 %179, 1
  %187 = icmp ult i8 %179, 2
  br i1 %187, label %188, label %194

188:                                              ; preds = %178
  %189 = tail call i32 @LocaleCompare(ptr noundef nonnull %13, ptr noundef nonnull @.str.6) #14
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %188
  %192 = tail call i64 @WriteBlobByte(ptr noundef %1, i8 noundef zeroext %185) #14
  br label %194

193:                                              ; preds = %188
  tail call void @Ascii85Encode(ptr noundef %1, i8 noundef zeroext %185) #17
  br label %194

194:                                              ; preds = %191, %193, %178
  %195 = phi i8 [ %185, %178 ], [ 0, %193 ], [ 0, %191 ]
  %196 = phi i8 [ %186, %178 ], [ -128, %193 ], [ -128, %191 ]
  %197 = lshr i64 %181, 1
  %198 = icmp ult i64 %181, 2
  br i1 %198, label %199, label %178, !llvm.loop !100

199:                                              ; preds = %194
  %200 = icmp eq i64 %118, 0
  br i1 %200, label %301, label %201

201:                                              ; preds = %199
  %202 = load i8, ptr %117, align 1, !tbaa !58
  %203 = icmp ne i8 %202, 0
  %204 = icmp sgt i64 %118, 0
  %205 = select i1 %203, i1 %204, i1 false
  br i1 %205, label %206, label %264

206:                                              ; preds = %201, %206
  %207 = phi i64 [ %212, %206 ], [ %118, %201 ]
  %208 = phi ptr [ %210, %206 ], [ %117, %201 ]
  %209 = phi i32 [ %211, %206 ], [ 0, %201 ]
  %210 = getelementptr inbounds i8, ptr %208, i64 1
  %211 = add nuw nsw i32 %209, 1
  %212 = add nsw i64 %207, -1
  %213 = load i8, ptr %210, align 1, !tbaa !58
  %214 = icmp ne i8 %213, 0
  %215 = icmp ugt i64 %207, 1
  %216 = select i1 %214, i1 %215, i1 false
  br i1 %216, label %206, label %217, !llvm.loop !101

217:                                              ; preds = %206
  %218 = icmp ugt i32 %209, 62
  br i1 %218, label %219, label %264

219:                                              ; preds = %217
  %220 = lshr i32 %211, 6
  %221 = zext nneg i32 %220 to i64
  %222 = getelementptr %struct.HuffmanTable, ptr getelementptr ([28 x %struct.HuffmanTable], ptr @MBTable, i64 -1, i64 27), i64 %221
  %223 = icmp ugt i32 %209, 1790
  br i1 %223, label %224, label %230

224:                                              ; preds = %219
  %225 = zext nneg i32 %211 to i64
  %226 = tail call fastcc i64 @MagickMin(i64 noundef %225, i64 noundef 2560) #17
  %227 = add i64 %226, -1792
  %228 = lshr i64 %227, 6
  %229 = getelementptr inbounds %struct.HuffmanTable, ptr @EXTable, i64 %228
  br label %230

230:                                              ; preds = %224, %219
  %231 = phi ptr [ %229, %224 ], [ %222, %219 ]
  %232 = getelementptr inbounds %struct.HuffmanTable, ptr %231, i64 0, i32 3
  %233 = load i64, ptr %232, align 8, !tbaa !86
  %234 = trunc i64 %233 to i32
  %235 = getelementptr inbounds %struct.HuffmanTable, ptr %231, i64 0, i32 2
  %236 = load i64, ptr %235, align 8, !tbaa !68
  %237 = add i64 %236, -1
  %238 = shl nuw i64 1, %237
  %239 = getelementptr inbounds %struct.HuffmanTable, ptr %231, i64 0, i32 1
  %240 = load i64, ptr %239, align 8, !tbaa !70
  br label %241

241:                                              ; preds = %230, %257
  %242 = phi i8 [ %196, %230 ], [ %259, %257 ]
  %243 = phi i8 [ %195, %230 ], [ %258, %257 ]
  %244 = phi i64 [ %238, %230 ], [ %260, %257 ]
  %245 = and i64 %240, %244
  %246 = icmp eq i64 %245, 0
  %247 = select i1 %246, i8 0, i8 %242
  %248 = or i8 %247, %243
  %249 = lshr i8 %242, 1
  %250 = icmp ult i8 %242, 2
  br i1 %250, label %251, label %257

251:                                              ; preds = %241
  %252 = tail call i32 @LocaleCompare(ptr noundef nonnull %13, ptr noundef nonnull @.str.6) #14
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %256

254:                                              ; preds = %251
  %255 = tail call i64 @WriteBlobByte(ptr noundef %1, i8 noundef zeroext %248) #14
  br label %257

256:                                              ; preds = %251
  tail call void @Ascii85Encode(ptr noundef %1, i8 noundef zeroext %248) #17
  br label %257

257:                                              ; preds = %254, %256, %241
  %258 = phi i8 [ %248, %241 ], [ 0, %256 ], [ 0, %254 ]
  %259 = phi i8 [ %249, %241 ], [ -128, %256 ], [ -128, %254 ]
  %260 = lshr i64 %244, 1
  %261 = icmp ult i64 %244, 2
  br i1 %261, label %262, label %241, !llvm.loop !102

262:                                              ; preds = %257
  %263 = sub i32 %211, %234
  br label %264

264:                                              ; preds = %201, %262, %217
  %265 = phi i64 [ %212, %217 ], [ %212, %262 ], [ %118, %201 ]
  %266 = phi ptr [ %210, %217 ], [ %210, %262 ], [ %117, %201 ]
  %267 = phi i32 [ %211, %217 ], [ %263, %262 ], [ 0, %201 ]
  %268 = phi i8 [ %195, %217 ], [ %258, %262 ], [ %195, %201 ]
  %269 = phi i8 [ %196, %217 ], [ %259, %262 ], [ %196, %201 ]
  %270 = sext i32 %267 to i64
  %271 = tail call fastcc i64 @MagickMin(i64 noundef %270, i64 noundef 63) #17
  %272 = getelementptr inbounds %struct.HuffmanTable, ptr @TBTable, i64 %271, i32 2
  %273 = load i64, ptr %272, align 16, !tbaa !68
  %274 = add i64 %273, -1
  %275 = shl nuw i64 1, %274
  %276 = getelementptr inbounds %struct.HuffmanTable, ptr @TBTable, i64 %271, i32 1
  %277 = load i64, ptr %276, align 8, !tbaa !70
  br label %278

278:                                              ; preds = %264, %294
  %279 = phi i8 [ %269, %264 ], [ %296, %294 ]
  %280 = phi i8 [ %268, %264 ], [ %295, %294 ]
  %281 = phi i64 [ %275, %264 ], [ %297, %294 ]
  %282 = and i64 %277, %281
  %283 = icmp eq i64 %282, 0
  %284 = select i1 %283, i8 0, i8 %279
  %285 = or i8 %284, %280
  %286 = lshr i8 %279, 1
  %287 = icmp ult i8 %279, 2
  br i1 %287, label %288, label %294

288:                                              ; preds = %278
  %289 = tail call i32 @LocaleCompare(ptr noundef nonnull %13, ptr noundef nonnull @.str.6) #14
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %293

291:                                              ; preds = %288
  %292 = tail call i64 @WriteBlobByte(ptr noundef %1, i8 noundef zeroext %285) #14
  br label %294

293:                                              ; preds = %288
  tail call void @Ascii85Encode(ptr noundef %1, i8 noundef zeroext %285) #17
  br label %294

294:                                              ; preds = %291, %293, %278
  %295 = phi i8 [ %285, %278 ], [ 0, %293 ], [ 0, %291 ]
  %296 = phi i8 [ %286, %278 ], [ -128, %293 ], [ -128, %291 ]
  %297 = lshr i64 %281, 1
  %298 = icmp ult i64 %281, 2
  br i1 %298, label %299, label %278, !llvm.loop !103

299:                                              ; preds = %294
  %300 = icmp sgt i64 %265, 0
  br i1 %300, label %97, label %301, !llvm.loop !104

301:                                              ; preds = %199, %299, %84
  %302 = phi i8 [ %75, %84 ], [ %296, %299 ], [ %196, %199 ]
  %303 = phi i8 [ %76, %84 ], [ %295, %299 ], [ %195, %199 ]
  br label %304

304:                                              ; preds = %301, %316
  %305 = phi i8 [ %318, %316 ], [ %302, %301 ]
  %306 = phi i8 [ %317, %316 ], [ %303, %301 ]
  %307 = phi i32 [ %319, %316 ], [ 0, %301 ]
  %308 = lshr i8 %305, 1
  %309 = icmp ult i8 %305, 2
  br i1 %309, label %310, label %316

310:                                              ; preds = %304
  %311 = tail call i32 @LocaleCompare(ptr noundef nonnull %13, ptr noundef nonnull @.str.6) #14
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %313, label %315

313:                                              ; preds = %310
  %314 = tail call i64 @WriteBlobByte(ptr noundef %1, i8 noundef zeroext %306) #14
  br label %316

315:                                              ; preds = %310
  tail call void @Ascii85Encode(ptr noundef %1, i8 noundef zeroext %306) #17
  br label %316

316:                                              ; preds = %313, %315, %304
  %317 = phi i8 [ %306, %304 ], [ 0, %315 ], [ 0, %313 ]
  %318 = phi i8 [ %308, %304 ], [ -128, %315 ], [ -128, %313 ]
  %319 = add nuw nsw i32 %307, 1
  %320 = icmp eq i32 %319, 11
  br i1 %320, label %321, label %304, !llvm.loop !105

321:                                              ; preds = %316
  %322 = or i8 %318, %317
  %323 = lshr i8 %318, 1
  %324 = icmp ult i8 %318, 2
  br i1 %324, label %325, label %331

325:                                              ; preds = %321
  %326 = tail call i32 @LocaleCompare(ptr noundef nonnull %13, ptr noundef nonnull @.str.6) #14
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %328, label %330

328:                                              ; preds = %325
  %329 = tail call i64 @WriteBlobByte(ptr noundef %1, i8 noundef zeroext %322) #14
  br label %331

330:                                              ; preds = %325
  tail call void @Ascii85Encode(ptr noundef %1, i8 noundef zeroext %322) #17
  br label %331

331:                                              ; preds = %328, %330, %321
  %332 = phi i8 [ %322, %321 ], [ 0, %330 ], [ 0, %328 ]
  %333 = phi i8 [ %323, %321 ], [ -128, %330 ], [ -128, %328 ]
  %334 = tail call ptr @GetPreviousImageInList(ptr noundef nonnull %31) #14
  %335 = icmp eq ptr %334, null
  br i1 %335, label %336, label %340

336:                                              ; preds = %331
  %337 = load i64, ptr %69, align 8, !tbaa !80
  %338 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %31, i64 noundef %77, i64 noundef %337) #17
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %344, label %340

340:                                              ; preds = %331, %336
  %341 = add nuw nsw i64 %77, 1
  %342 = load i64, ptr %69, align 8, !tbaa !80
  %343 = icmp slt i64 %341, %342
  br i1 %343, label %74, label %344, !llvm.loop !106

344:                                              ; preds = %340, %74, %336, %64
  %345 = phi i8 [ %66, %64 ], [ %333, %340 ], [ %75, %74 ], [ %333, %336 ]
  %346 = phi i8 [ %65, %64 ], [ %332, %340 ], [ %76, %74 ], [ %332, %336 ]
  br label %347

347:                                              ; preds = %344, %378
  %348 = phi i8 [ %380, %378 ], [ %345, %344 ]
  %349 = phi i8 [ %379, %378 ], [ %346, %344 ]
  %350 = phi i64 [ %381, %378 ], [ 0, %344 ]
  br label %351

351:                                              ; preds = %347, %363
  %352 = phi i8 [ %348, %347 ], [ %365, %363 ]
  %353 = phi i8 [ %349, %347 ], [ %364, %363 ]
  %354 = phi i32 [ 0, %347 ], [ %366, %363 ]
  %355 = lshr i8 %352, 1
  %356 = icmp ult i8 %352, 2
  br i1 %356, label %357, label %363

357:                                              ; preds = %351
  %358 = tail call i32 @LocaleCompare(ptr noundef nonnull %13, ptr noundef nonnull @.str.6) #14
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %360, label %362

360:                                              ; preds = %357
  %361 = tail call i64 @WriteBlobByte(ptr noundef %1, i8 noundef zeroext %353) #14
  br label %363

362:                                              ; preds = %357
  tail call void @Ascii85Encode(ptr noundef %1, i8 noundef zeroext %353) #17
  br label %363

363:                                              ; preds = %360, %362, %351
  %364 = phi i8 [ %353, %351 ], [ 0, %362 ], [ 0, %360 ]
  %365 = phi i8 [ %355, %351 ], [ -128, %362 ], [ -128, %360 ]
  %366 = add nuw nsw i32 %354, 1
  %367 = icmp eq i32 %366, 11
  br i1 %367, label %368, label %351, !llvm.loop !107

368:                                              ; preds = %363
  %369 = or i8 %365, %364
  %370 = lshr i8 %365, 1
  %371 = icmp ult i8 %365, 2
  br i1 %371, label %372, label %378

372:                                              ; preds = %368
  %373 = tail call i32 @LocaleCompare(ptr noundef nonnull %13, ptr noundef nonnull @.str.6) #14
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %375, label %377

375:                                              ; preds = %372
  %376 = tail call i64 @WriteBlobByte(ptr noundef %1, i8 noundef zeroext %369) #14
  br label %378

377:                                              ; preds = %372
  tail call void @Ascii85Encode(ptr noundef %1, i8 noundef zeroext %369) #17
  br label %378

378:                                              ; preds = %375, %377, %368
  %379 = phi i8 [ %369, %368 ], [ 0, %377 ], [ 0, %375 ]
  %380 = phi i8 [ %370, %368 ], [ -128, %377 ], [ -128, %375 ]
  %381 = add nuw nsw i64 %350, 1
  %382 = icmp eq i64 %381, 6
  br i1 %382, label %383, label %347, !llvm.loop !108

383:                                              ; preds = %378
  %384 = icmp eq i8 %380, -128
  br i1 %384, label %391, label %385

385:                                              ; preds = %383
  %386 = tail call i32 @LocaleCompare(ptr noundef nonnull %13, ptr noundef nonnull @.str.6) #14
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %388, label %390

388:                                              ; preds = %385
  %389 = tail call i64 @WriteBlobByte(ptr noundef %1, i8 noundef zeroext %379) #14
  br label %391

390:                                              ; preds = %385
  tail call void @Ascii85Encode(ptr noundef %1, i8 noundef zeroext %379) #17
  br label %391

391:                                              ; preds = %388, %390, %383
  %392 = tail call i32 @LocaleCompare(ptr noundef nonnull %13, ptr noundef nonnull @.str.6) #14
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %395, label %394

394:                                              ; preds = %391
  tail call void @Ascii85Flush(ptr noundef %1) #17
  br label %395

395:                                              ; preds = %394, %391
  %396 = tail call ptr @DestroyImage(ptr noundef nonnull %31) #14
  %397 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %22) #14
  br label %398

398:                                              ; preds = %24, %395, %33
  %399 = phi i32 [ 0, %33 ], [ 1, %395 ], [ 0, %24 ]
  ret i32 %399
}

; Function Attrs: optsize
declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @SetImageType(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @GetVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: hot optsize
declare float @GetPixelIntensity(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @MagickMin(i64 noundef %0, i64 noundef %1) unnamed_addr #9 !PGOFuncName !109 {
  %3 = tail call i64 @llvm.umin.i64(i64 %0, i64 %1)
  ret i64 %3
}

; Function Attrs: optsize
declare ptr @GetPreviousImageInList(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @LZWEncodeImage(ptr noundef %0, i64 noundef %1, ptr noalias nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !57
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 981, ptr noundef nonnull @.str.4, ptr noundef nonnull %8) #14
  br label %10

10:                                               ; preds = %7, %3
  %11 = tail call dereferenceable_or_null(98304) ptr @AcquireQuantumMemory(i64 noundef 4096, i64 noundef 24) #18
  %12 = icmp eq ptr %11, null
  br i1 %12, label %165, label %13

13:                                               ; preds = %10
  %14 = tail call i64 @WriteBlobByte(ptr noundef nonnull %0, i8 noundef zeroext -128) #14
  br label %15

15:                                               ; preds = %13, %15
  %16 = phi i64 [ 0, %13 ], [ %20, %15 ]
  %17 = getelementptr inbounds %struct._TableType, ptr %11, i64 %16
  store i64 -1, ptr %17, align 8, !tbaa !110
  %18 = getelementptr inbounds %struct._TableType, ptr %11, i64 %16, i32 1
  store i64 %16, ptr %18, align 8, !tbaa !112
  %19 = getelementptr inbounds %struct._TableType, ptr %11, i64 %16, i32 2
  store i64 -1, ptr %19, align 8, !tbaa !113
  %20 = add nuw nsw i64 %16, 1
  %21 = icmp eq i64 %20, 256
  br i1 %21, label %22, label %15, !llvm.loop !114

22:                                               ; preds = %15
  %23 = load i8, ptr %2, align 1, !tbaa !58
  %24 = zext i8 %23 to i64
  %25 = icmp sgt i64 %1, 1
  br i1 %25, label %26, label %118

26:                                               ; preds = %22, %110
  %27 = phi i64 [ %115, %110 ], [ 258, %22 ]
  %28 = phi i64 [ %114, %110 ], [ %24, %22 ]
  %29 = phi i64 [ %113, %110 ], [ 9, %22 ]
  %30 = phi i64 [ %112, %110 ], [ 1, %22 ]
  %31 = phi i64 [ %111, %110 ], [ 549755813888, %22 ]
  %32 = phi i64 [ %116, %110 ], [ 1, %22 ]
  %33 = icmp eq i64 %28, -1
  br i1 %33, label %110, label %34

34:                                               ; preds = %26
  %35 = getelementptr inbounds i8, ptr %2, i64 %32
  br label %36

36:                                               ; preds = %34, %47
  %37 = phi i64 [ %28, %34 ], [ %49, %47 ]
  %38 = getelementptr inbounds %struct._TableType, ptr %11, i64 %37
  %39 = load i64, ptr %38, align 8, !tbaa !110
  %40 = icmp eq i64 %39, %28
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct._TableType, ptr %11, i64 %37, i32 1
  %43 = load i64, ptr %42, align 8, !tbaa !112
  %44 = load i8, ptr %35, align 1, !tbaa !58
  %45 = zext i8 %44 to i64
  %46 = icmp eq i64 %43, %45
  br i1 %46, label %110, label %47

47:                                               ; preds = %41, %36
  %48 = getelementptr inbounds %struct._TableType, ptr %11, i64 %37, i32 2
  %49 = load i64, ptr %48, align 8, !tbaa !113
  %50 = icmp eq i64 %49, -1
  br i1 %50, label %51, label %36, !llvm.loop !115

51:                                               ; preds = %47
  br i1 %33, label %110, label %52

52:                                               ; preds = %51
  %53 = sub i64 32, %29
  %54 = sub i64 %53, %30
  %55 = shl i64 %28, %54
  %56 = add i64 %55, %31
  %57 = add i64 %29, %30
  %58 = icmp ugt i64 %57, 7
  br i1 %58, label %59, label %68

59:                                               ; preds = %52, %59
  %60 = phi i64 [ %66, %59 ], [ %57, %52 ]
  %61 = phi i64 [ %65, %59 ], [ %56, %52 ]
  %62 = lshr i64 %61, 24
  %63 = trunc i64 %62 to i8
  %64 = tail call i64 @WriteBlobByte(ptr noundef %0, i8 noundef zeroext %63) #14
  %65 = shl i64 %61, 8
  %66 = add i64 %60, -8
  %67 = icmp ugt i64 %66, 7
  br i1 %67, label %59, label %68, !llvm.loop !116

68:                                               ; preds = %59, %52
  %69 = phi i64 [ %56, %52 ], [ %65, %59 ]
  %70 = phi i64 [ %57, %52 ], [ %66, %59 ]
  %71 = getelementptr inbounds %struct._TableType, ptr %11, i64 %27
  store i64 %28, ptr %71, align 8, !tbaa !110
  %72 = getelementptr inbounds i8, ptr %2, i64 %32
  %73 = load i8, ptr %72, align 1, !tbaa !58
  %74 = zext i8 %73 to i64
  %75 = getelementptr inbounds %struct._TableType, ptr %11, i64 %27, i32 1
  store i64 %74, ptr %75, align 8, !tbaa !112
  %76 = getelementptr inbounds %struct._TableType, ptr %11, i64 %28, i32 2
  %77 = load i64, ptr %76, align 8, !tbaa !113
  %78 = getelementptr inbounds %struct._TableType, ptr %11, i64 %27, i32 2
  store i64 %77, ptr %78, align 8, !tbaa !113
  store i64 %27, ptr %76, align 8, !tbaa !113
  %79 = add i64 %27, 1
  %80 = lshr i64 %79, %29
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %110, label %82

82:                                               ; preds = %68
  %83 = add i64 %29, 1
  %84 = icmp ugt i64 %83, 12
  br i1 %84, label %85, label %110

85:                                               ; preds = %82
  %86 = sub i64 %53, %70
  %87 = shl i64 256, %86
  %88 = add i64 %87, %69
  %89 = add i64 %70, %29
  %90 = icmp ugt i64 %89, 7
  br i1 %90, label %94, label %91

91:                                               ; preds = %94, %85
  %92 = phi i64 [ %88, %85 ], [ %100, %94 ]
  %93 = phi i64 [ %89, %85 ], [ %101, %94 ]
  br label %103

94:                                               ; preds = %85, %94
  %95 = phi i64 [ %101, %94 ], [ %89, %85 ]
  %96 = phi i64 [ %100, %94 ], [ %88, %85 ]
  %97 = lshr i64 %96, 24
  %98 = trunc i64 %97 to i8
  %99 = tail call i64 @WriteBlobByte(ptr noundef %0, i8 noundef zeroext %98) #14
  %100 = shl i64 %96, 8
  %101 = add i64 %95, -8
  %102 = icmp ugt i64 %101, 7
  br i1 %102, label %94, label %91, !llvm.loop !117

103:                                              ; preds = %91, %103
  %104 = phi i64 [ 0, %91 ], [ %108, %103 ]
  %105 = getelementptr inbounds %struct._TableType, ptr %11, i64 %104
  store i64 -1, ptr %105, align 8, !tbaa !110
  %106 = getelementptr inbounds %struct._TableType, ptr %11, i64 %104, i32 1
  store i64 %104, ptr %106, align 8, !tbaa !112
  %107 = getelementptr inbounds %struct._TableType, ptr %11, i64 %104, i32 2
  store i64 -1, ptr %107, align 8, !tbaa !113
  %108 = add nuw nsw i64 %104, 1
  %109 = icmp eq i64 %108, 256
  br i1 %109, label %110, label %103, !llvm.loop !118

110:                                              ; preds = %41, %103, %26, %68, %82, %51
  %111 = phi i64 [ %31, %51 ], [ %69, %82 ], [ %69, %68 ], [ %31, %26 ], [ %92, %103 ], [ %31, %41 ]
  %112 = phi i64 [ %30, %51 ], [ %70, %82 ], [ %70, %68 ], [ %30, %26 ], [ %93, %103 ], [ %30, %41 ]
  %113 = phi i64 [ %29, %51 ], [ %83, %82 ], [ %29, %68 ], [ %29, %26 ], [ 9, %103 ], [ %29, %41 ]
  %114 = phi i64 [ -1, %51 ], [ %74, %82 ], [ %74, %68 ], [ -1, %26 ], [ %74, %103 ], [ %37, %41 ]
  %115 = phi i64 [ %27, %51 ], [ %79, %82 ], [ %79, %68 ], [ %27, %26 ], [ 258, %103 ], [ %27, %41 ]
  %116 = add nuw nsw i64 %32, 1
  %117 = icmp eq i64 %116, %1
  br i1 %117, label %118, label %26, !llvm.loop !119

118:                                              ; preds = %110, %22
  %119 = phi i64 [ 549755813888, %22 ], [ %111, %110 ]
  %120 = phi i64 [ 1, %22 ], [ %112, %110 ]
  %121 = phi i64 [ 9, %22 ], [ %113, %110 ]
  %122 = phi i64 [ %24, %22 ], [ %114, %110 ]
  %123 = sub i64 32, %121
  %124 = sub i64 %123, %120
  %125 = shl i64 %122, %124
  %126 = add i64 %125, %119
  %127 = add i64 %121, %120
  %128 = icmp ugt i64 %127, 7
  br i1 %128, label %129, label %138

129:                                              ; preds = %118, %129
  %130 = phi i64 [ %136, %129 ], [ %127, %118 ]
  %131 = phi i64 [ %135, %129 ], [ %126, %118 ]
  %132 = lshr i64 %131, 24
  %133 = trunc i64 %132 to i8
  %134 = tail call i64 @WriteBlobByte(ptr noundef %0, i8 noundef zeroext %133) #14
  %135 = shl i64 %131, 8
  %136 = add i64 %130, -8
  %137 = icmp ugt i64 %136, 7
  br i1 %137, label %129, label %138, !llvm.loop !120

138:                                              ; preds = %129, %118
  %139 = phi i64 [ %126, %118 ], [ %135, %129 ]
  %140 = phi i64 [ %127, %118 ], [ %136, %129 ]
  %141 = sub i64 %123, %140
  %142 = shl i64 257, %141
  %143 = add i64 %142, %139
  %144 = add i64 %140, %121
  %145 = icmp ugt i64 %144, 7
  br i1 %145, label %146, label %155

146:                                              ; preds = %138, %146
  %147 = phi i64 [ %153, %146 ], [ %144, %138 ]
  %148 = phi i64 [ %152, %146 ], [ %143, %138 ]
  %149 = lshr i64 %148, 24
  %150 = trunc i64 %149 to i8
  %151 = tail call i64 @WriteBlobByte(ptr noundef %0, i8 noundef zeroext %150) #14
  %152 = shl i64 %148, 8
  %153 = add i64 %147, -8
  %154 = icmp ugt i64 %153, 7
  br i1 %154, label %146, label %155, !llvm.loop !121

155:                                              ; preds = %146, %138
  %156 = phi i64 [ %143, %138 ], [ %152, %146 ]
  %157 = phi i64 [ %144, %138 ], [ %153, %146 ]
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %163, label %159

159:                                              ; preds = %155
  %160 = lshr i64 %156, 24
  %161 = trunc i64 %160 to i8
  %162 = tail call i64 @WriteBlobByte(ptr noundef %0, i8 noundef zeroext %161) #14
  br label %163

163:                                              ; preds = %159, %155
  %164 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %11) #14
  br label %165

165:                                              ; preds = %10, %163
  %166 = phi i32 [ 1, %163 ], [ 0, %10 ]
  ret i32 %166
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @PackbitsEncodeImage(ptr noundef %0, i64 noundef %1, ptr noalias nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !57
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1116, ptr noundef nonnull @.str.4, ptr noundef nonnull %8) #14
  br label %10

10:                                               ; preds = %7, %3
  %11 = tail call dereferenceable_or_null(128) ptr @AcquireQuantumMemory(i64 noundef 128, i64 noundef 1) #18
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %85

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1121, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %15) #14
  br label %127

17:                                               ; preds = %48, %85
  %18 = phi i64 [ %87, %85 ], [ 0, %48 ]
  switch i64 %18, label %49 [
    i64 0, label %124
    i64 1, label %19
    i64 2, label %23
    i64 3, label %29
  ]

19:                                               ; preds = %17
  %20 = tail call i64 @WriteBlobByte(ptr noundef %0, i8 noundef zeroext 0) #14
  %21 = load i8, ptr %86, align 1, !tbaa !58
  %22 = tail call i64 @WriteBlobByte(ptr noundef %0, i8 noundef zeroext %21) #14
  br label %48

23:                                               ; preds = %17
  %24 = tail call i64 @WriteBlobByte(ptr noundef %0, i8 noundef zeroext 1) #14
  %25 = load i8, ptr %86, align 1, !tbaa !58
  %26 = tail call i64 @WriteBlobByte(ptr noundef %0, i8 noundef zeroext %25) #14
  %27 = load i8, ptr %91, align 1, !tbaa !58
  %28 = tail call i64 @WriteBlobByte(ptr noundef %0, i8 noundef zeroext %27) #14
  br label %48

29:                                               ; preds = %17
  %30 = load i8, ptr %86, align 1, !tbaa !58
  %31 = load i8, ptr %88, align 1, !tbaa !58
  %32 = icmp eq i8 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load i8, ptr %89, align 1, !tbaa !58
  %35 = icmp eq i8 %30, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = tail call i64 @WriteBlobByte(ptr noundef %0, i8 noundef zeroext -2) #14
  %38 = load i8, ptr %86, align 1, !tbaa !58
  %39 = tail call i64 @WriteBlobByte(ptr noundef %0, i8 noundef zeroext %38) #14
  br label %48

40:                                               ; preds = %33, %29
  %41 = tail call i64 @WriteBlobByte(ptr noundef %0, i8 noundef zeroext 2) #14
  %42 = load i8, ptr %86, align 1, !tbaa !58
  %43 = tail call i64 @WriteBlobByte(ptr noundef %0, i8 noundef zeroext %42) #14
  %44 = load i8, ptr %88, align 1, !tbaa !58
  %45 = tail call i64 @WriteBlobByte(ptr noundef %0, i8 noundef zeroext %44) #14
  %46 = load i8, ptr %90, align 1, !tbaa !58
  %47 = tail call i64 @WriteBlobByte(ptr noundef %0, i8 noundef zeroext %46) #14
  br label %48

48:                                               ; preds = %40, %36, %23, %19
  br label %17, !llvm.loop !122

49:                                               ; preds = %17
  %50 = load i8, ptr %86, align 1, !tbaa !58
  %51 = getelementptr inbounds i8, ptr %86, i64 1
  %52 = load i8, ptr %51, align 1, !tbaa !58
  %53 = icmp eq i8 %50, %52
  br i1 %53, label %54, label %92

54:                                               ; preds = %49
  %55 = getelementptr inbounds i8, ptr %86, i64 2
  %56 = load i8, ptr %55, align 1, !tbaa !58
  %57 = icmp eq i8 %50, %56
  br i1 %57, label %58, label %92

58:                                               ; preds = %54
  %59 = tail call i64 @llvm.smax.i64(i64 %18, i64 3)
  %60 = trunc i64 %59 to i32
  br label %61

61:                                               ; preds = %58, %68
  %62 = phi i64 [ 3, %58 ], [ %69, %68 ]
  %63 = icmp eq i64 %62, %59
  br i1 %63, label %73, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds i8, ptr %86, i64 %62
  %66 = load i8, ptr %65, align 1, !tbaa !58
  %67 = icmp eq i8 %50, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = add nuw nsw i64 %62, 1
  %70 = icmp eq i64 %69, 127
  br i1 %70, label %73, label %61, !llvm.loop !123

71:                                               ; preds = %64
  %72 = trunc i64 %62 to i32
  br label %73

73:                                               ; preds = %68, %61, %71
  %74 = phi i32 [ %72, %71 ], [ %60, %61 ], [ 127, %68 ]
  %75 = sext i32 %74 to i64
  %76 = trunc i32 %74 to i8
  %77 = sub i8 1, %76
  %78 = tail call i64 @WriteBlobByte(ptr noundef %0, i8 noundef zeroext %77) #14
  %79 = load i8, ptr %86, align 1, !tbaa !58
  %80 = tail call i64 @WriteBlobByte(ptr noundef %0, i8 noundef zeroext %79) #14
  br label %81

81:                                               ; preds = %117, %73
  %82 = phi i64 [ %75, %73 ], [ %114, %117 ]
  %83 = sub nsw i64 %18, %82
  %84 = getelementptr inbounds i8, ptr %86, i64 %82
  br label %85, !llvm.loop !122

85:                                               ; preds = %10, %81
  %86 = phi ptr [ %84, %81 ], [ %2, %10 ]
  %87 = phi i64 [ %83, %81 ], [ %1, %10 ]
  %88 = getelementptr inbounds i8, ptr %86, i64 1
  %89 = getelementptr inbounds i8, ptr %86, i64 2
  %90 = getelementptr inbounds i8, ptr %86, i64 2
  %91 = getelementptr inbounds i8, ptr %86, i64 1
  br label %17

92:                                               ; preds = %54, %49
  %93 = add nsw i64 %18, -3
  br label %94

94:                                               ; preds = %105, %92
  %95 = phi i64 [ %106, %105 ], [ 0, %92 ]
  %96 = getelementptr inbounds i8, ptr %86, i64 %95
  %97 = load i8, ptr %96, align 1, !tbaa !58
  %98 = getelementptr inbounds i8, ptr %96, i64 1
  %99 = load i8, ptr %98, align 1, !tbaa !58
  %100 = icmp eq i8 %97, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %94
  %102 = getelementptr inbounds i8, ptr %96, i64 2
  %103 = load i8, ptr %102, align 1, !tbaa !58
  %104 = icmp eq i8 %97, %103
  br i1 %104, label %111, label %105

105:                                              ; preds = %94, %101
  %106 = add nuw nsw i64 %95, 1
  %107 = getelementptr inbounds i8, ptr %11, i64 %106
  store i8 %97, ptr %107, align 1, !tbaa !58
  %108 = icmp sle i64 %93, %106
  %109 = icmp ugt i64 %95, 125
  %110 = or i1 %109, %108
  br i1 %110, label %111, label %94, !llvm.loop !124

111:                                              ; preds = %105, %101
  %112 = phi i64 [ %106, %105 ], [ %95, %101 ]
  %113 = shl i64 %112, 32
  %114 = ashr exact i64 %113, 32
  %115 = trunc i64 %112 to i8
  %116 = add i8 %115, -1
  store i8 %116, ptr %11, align 1, !tbaa !58
  br label %117

117:                                              ; preds = %111, %117
  %118 = phi i64 [ 0, %111 ], [ %122, %117 ]
  %119 = getelementptr inbounds i8, ptr %11, i64 %118
  %120 = load i8, ptr %119, align 1, !tbaa !58
  %121 = tail call i64 @WriteBlobByte(ptr noundef %0, i8 noundef zeroext %120) #14
  %122 = add nuw nsw i64 %118, 1
  %123 = icmp eq i64 %118, %114
  br i1 %123, label %81, label %117, !llvm.loop !125

124:                                              ; preds = %17
  %125 = tail call i64 @WriteBlobByte(ptr noundef %0, i8 noundef zeroext -128) #14
  %126 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %11) #14
  br label %127

127:                                              ; preds = %13, %124
  %128 = phi i32 [ 1, %124 ], [ 0, %13 ]
  ret i32 %128
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ZLIBEncodeImage(ptr noundef %0, i64 noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !57
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1308, ptr noundef nonnull @.str.4, ptr noundef nonnull %8) #14
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %13 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %11, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1309, i32 noundef 420, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull %12) #14
  ret i32 0
}

; Function Attrs: optsize
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #10

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind optsize allocsize(0) }
attributes #13 = { nounwind }
attributes #14 = { nounwind optsize }
attributes #15 = { nounwind optsize willreturn memory(none) }
attributes #16 = { noreturn nounwind optsize }
attributes #17 = { optsize }
attributes #18 = { nounwind optsize allocsize(0,1) }
attributes #19 = { hot nounwind optsize }

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
!34 = !{!35, !40, i64 600}
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
!53 = !{!36, !36, i64 0}
!54 = !{!55, !39, i64 8}
!55 = !{!"_Ascii85Info", !39, i64 0, !39, i64 8, !37, i64 16}
!56 = !{!55, !39, i64 0}
!57 = !{!35, !36, i64 12976}
!58 = !{!37, !37, i64 0}
!59 = !{!"compress.c:Ascii85Tuple"}
!60 = distinct !{!60, !61}
!61 = !{!"llvm.loop.mustprogress"}
!62 = distinct !{!62, !61}
!63 = distinct !{!63, !61}
!64 = distinct !{!64, !61}
!65 = !{!35, !39, i64 40}
!66 = !{!40, !40, i64 0}
!67 = distinct !{!67, !61}
!68 = !{!69, !39, i64 16}
!69 = !{!"HuffmanTable", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24}
!70 = !{!69, !39, i64 8}
!71 = distinct !{!71, !61}
!72 = distinct !{!72, !61}
!73 = distinct !{!73, !61}
!74 = distinct !{!74, !61}
!75 = distinct !{!75, !61}
!76 = distinct !{!76, !61}
!77 = distinct !{!77, !61}
!78 = !{!43, !43, i64 0}
!79 = !{!35, !36, i64 224}
!80 = !{!35, !39, i64 48}
!81 = distinct !{!81, !61}
!82 = distinct !{!82, !61}
!83 = distinct !{!83, !61}
!84 = distinct !{!84, !61}
!85 = !{!69, !39, i64 0}
!86 = !{!69, !39, i64 24}
!87 = !{!35, !40, i64 72}
!88 = !{!42, !42, i64 0}
!89 = distinct !{!89, !61}
!90 = !{i64 1, i64 0}
!91 = !{!35, !36, i64 8}
!92 = !{!"compress.c:SetImageProgress"}
!93 = !{!35, !40, i64 568}
!94 = !{!35, !40, i64 576}
!95 = !{!"compress.c:MagickMax"}
!96 = distinct !{!96, !61}
!97 = distinct !{!97, !61}
!98 = distinct !{!98, !61}
!99 = distinct !{!99, !61}
!100 = distinct !{!100, !61}
!101 = distinct !{!101, !61}
!102 = distinct !{!102, !61}
!103 = distinct !{!103, !61}
!104 = distinct !{!104, !61}
!105 = distinct !{!105, !61}
!106 = distinct !{!106, !61}
!107 = distinct !{!107, !61}
!108 = distinct !{!108, !61}
!109 = !{!"compress.c:MagickMin"}
!110 = !{!111, !39, i64 0}
!111 = !{!"_TableType", !39, i64 0, !39, i64 8, !39, i64 16}
!112 = !{!111, !39, i64 8}
!113 = !{!111, !39, i64 16}
!114 = distinct !{!114, !61}
!115 = distinct !{!115, !61}
!116 = distinct !{!116, !61}
!117 = distinct !{!117, !61}
!118 = distinct !{!118, !61}
!119 = distinct !{!119, !61}
!120 = distinct !{!120, !61}
!121 = distinct !{!121, !61}
!122 = distinct !{!122, !61}
!123 = distinct !{!123, !61}
!124 = distinct !{!124, !61}
!125 = distinct !{!125, !61}
