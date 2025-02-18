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

; Function Attrs: nounwind uwtable
define dso_local void @Ascii85Initialize(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 51
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call dereferenceable_or_null(32) ptr @AcquireMagickMemory(i64 noundef 32) #10
  store ptr %7, ptr %3, align 8, !tbaa !34
  br label %8

8:                                                ; preds = %6, %1
  %9 = load ptr, ptr %3, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #11
  call void @GetExceptionInfo(ptr noundef nonnull %2) #11
  %12 = tail call ptr @__errno_location() #12
  %13 = load i32, ptr %12, align 4, !tbaa !53
  %14 = call ptr @GetExceptionMessage(i32 noundef %13) #11
  %15 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 276, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %14) #11
  %16 = call ptr @DestroyString(ptr noundef %14) #11
  call void @CatchException(ptr noundef nonnull %2) #11
  %17 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #11
  call void @MagickCoreTerminus() #11
  call void @_exit(i32 noundef 1) #13
  unreachable

18:                                               ; preds = %8
  %19 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %9, i32 noundef 0, i64 noundef 32) #11
  %20 = load ptr, ptr %3, align 8, !tbaa !34
  %21 = getelementptr inbounds %struct._Ascii85Info, ptr %20, i64 0, i32 1
  store i64 72, ptr %21, align 8, !tbaa !54
  store i64 0, ptr %20, align 8, !tbaa !56
  ret void
}

; Function Attrs: allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #3

declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @DestroyString(ptr noundef) local_unnamed_addr #3

declare void @CatchException(ptr noundef) local_unnamed_addr #3

declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #3

declare void @MagickCoreTerminus() local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #5

declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @Ascii85Flush(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !57
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 290, ptr noundef nonnull @.str.4, ptr noundef nonnull %6) #11
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 51
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = load i64, ptr %10, align 8, !tbaa !56
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %69

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
  %25 = load i8, ptr %24, align 1, !tbaa !58
  %26 = zext i8 %25 to i64
  %27 = getelementptr inbounds %struct._Ascii85Info, ptr %23, i64 0, i32 2, i64 1
  %28 = load i8, ptr %27, align 1, !tbaa !58
  %29 = zext i8 %28 to i64
  %30 = shl nuw nsw i64 %26, 24
  %31 = shl nuw nsw i64 %29, 16
  %32 = or disjoint i64 %31, %30
  %33 = getelementptr inbounds %struct._Ascii85Info, ptr %23, i64 0, i32 2, i64 2
  %34 = load i8, ptr %33, align 1, !tbaa !58
  %35 = zext i8 %34 to i64
  %36 = shl nuw nsw i64 %35, 8
  %37 = or disjoint i64 %32, %36
  %38 = getelementptr inbounds %struct._Ascii85Info, ptr %23, i64 0, i32 2, i64 3
  %39 = load i8, ptr %38, align 1, !tbaa !58
  %40 = zext i8 %39 to i64
  %41 = or disjoint i64 %37, %40
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %13
  store i8 122, ptr @Ascii85Tuple.tuple, align 1, !tbaa !58
  br label %61

44:                                               ; preds = %13, %44
  %45 = phi i64 [ %54, %44 ], [ 52200625, %13 ]
  %46 = phi i64 [ %50, %44 ], [ %41, %13 ]
  %47 = phi i64 [ %55, %44 ], [ 0, %13 ]
  %48 = udiv i64 %46, %45
  %49 = mul nuw i64 %48, %45
  %50 = urem i64 %46, %45
  %51 = trunc i64 %48 to i8
  %52 = add i8 %51, 33
  %53 = getelementptr inbounds [6 x i8], ptr @Ascii85Tuple.tuple, i64 0, i64 %47
  store i8 %52, ptr %53, align 1, !tbaa !58
  %54 = udiv i64 %45, 85
  %55 = add nuw nsw i64 %47, 1
  %56 = icmp eq i64 %55, 4
  br i1 %56, label %57, label %44, !llvm.loop !59

57:                                               ; preds = %44
  %58 = urem i64 %50, 85
  %59 = trunc i64 %58 to i8
  %60 = add nuw nsw i8 %59, 33
  store i8 %60, ptr getelementptr inbounds ([6 x i8], ptr @Ascii85Tuple.tuple, i64 0, i64 4), align 1, !tbaa !58
  br label %61

61:                                               ; preds = %43, %57
  %62 = phi ptr [ getelementptr inbounds ([6 x i8], ptr @Ascii85Tuple.tuple, i64 0, i64 1), %43 ], [ getelementptr inbounds ([6 x i8], ptr @Ascii85Tuple.tuple, i64 0, i64 5), %57 ]
  store i8 0, ptr %62, align 1, !tbaa !58
  %63 = load i64, ptr %23, align 8, !tbaa !56
  %64 = add i64 %63, 1
  %65 = load i8, ptr @Ascii85Tuple.tuple, align 1, !tbaa !58
  %66 = icmp eq i8 %65, 122
  %67 = select i1 %66, ptr @.str.5, ptr @Ascii85Tuple.tuple
  %68 = tail call i64 @WriteBlob(ptr noundef %0, i64 noundef %64, ptr noundef nonnull %67) #11
  br label %69

69:                                               ; preds = %61, %8
  %70 = tail call i64 @WriteBlobByte(ptr noundef %0, i8 noundef zeroext 126) #11
  %71 = tail call i64 @WriteBlobByte(ptr noundef %0, i8 noundef zeroext 62) #11
  %72 = tail call i64 @WriteBlobByte(ptr noundef %0, i8 noundef zeroext 10) #11
  ret void
}

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i64 @WriteBlob(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare i64 @WriteBlobByte(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
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
  br i1 %10, label %92, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct._Ascii85Info, ptr %7, i64 0, i32 2
  br label %13

13:                                               ; preds = %11, %76
  %14 = phi i64 [ %78, %76 ], [ %9, %11 ]
  %15 = phi ptr [ %77, %76 ], [ %12, %11 ]
  %16 = load i8, ptr %15, align 1, !tbaa !58
  %17 = zext i8 %16 to i64
  %18 = getelementptr inbounds i8, ptr %15, i64 1
  %19 = load i8, ptr %18, align 1, !tbaa !58
  %20 = zext i8 %19 to i64
  %21 = shl nuw nsw i64 %17, 24
  %22 = shl nuw nsw i64 %20, 16
  %23 = or disjoint i64 %22, %21
  %24 = getelementptr inbounds i8, ptr %15, i64 2
  %25 = load i8, ptr %24, align 1, !tbaa !58
  %26 = zext i8 %25 to i64
  %27 = shl nuw nsw i64 %26, 8
  %28 = or disjoint i64 %23, %27
  %29 = getelementptr inbounds i8, ptr %15, i64 3
  %30 = load i8, ptr %29, align 1, !tbaa !58
  %31 = zext i8 %30 to i64
  %32 = or disjoint i64 %28, %31
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %13
  store i8 122, ptr @Ascii85Tuple.tuple, align 1, !tbaa !58
  br label %52

35:                                               ; preds = %13, %35
  %36 = phi i64 [ %45, %35 ], [ 52200625, %13 ]
  %37 = phi i64 [ %41, %35 ], [ %32, %13 ]
  %38 = phi i64 [ %46, %35 ], [ 0, %13 ]
  %39 = udiv i64 %37, %36
  %40 = mul nuw i64 %39, %36
  %41 = urem i64 %37, %36
  %42 = trunc i64 %39 to i8
  %43 = add i8 %42, 33
  %44 = getelementptr inbounds [6 x i8], ptr @Ascii85Tuple.tuple, i64 0, i64 %38
  store i8 %43, ptr %44, align 1, !tbaa !58
  %45 = udiv i64 %36, 85
  %46 = add nuw nsw i64 %38, 1
  %47 = icmp eq i64 %46, 4
  br i1 %47, label %48, label %35, !llvm.loop !59

48:                                               ; preds = %35
  %49 = urem i64 %41, 85
  %50 = trunc i64 %49 to i8
  %51 = add nuw nsw i8 %50, 33
  store i8 %51, ptr getelementptr inbounds ([6 x i8], ptr @Ascii85Tuple.tuple, i64 0, i64 4), align 1, !tbaa !58
  br label %52

52:                                               ; preds = %34, %48
  %53 = phi ptr [ getelementptr inbounds ([6 x i8], ptr @Ascii85Tuple.tuple, i64 0, i64 1), %34 ], [ getelementptr inbounds ([6 x i8], ptr @Ascii85Tuple.tuple, i64 0, i64 5), %48 ]
  store i8 0, ptr %53, align 1, !tbaa !58
  %54 = load i8, ptr @Ascii85Tuple.tuple, align 1, !tbaa !58
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %76, label %56

56:                                               ; preds = %52, %70
  %57 = phi i8 [ %74, %70 ], [ %54, %52 ]
  %58 = phi ptr [ %73, %70 ], [ @Ascii85Tuple.tuple, %52 ]
  %59 = load ptr, ptr %3, align 8, !tbaa !34
  %60 = getelementptr inbounds %struct._Ascii85Info, ptr %59, i64 0, i32 1
  %61 = load i64, ptr %60, align 8, !tbaa !54
  %62 = add nsw i64 %61, -1
  store i64 %62, ptr %60, align 8, !tbaa !54
  %63 = icmp sgt i64 %61, 0
  %64 = icmp eq i8 %57, 37
  %65 = or i1 %64, %63
  br i1 %65, label %70, label %66

66:                                               ; preds = %56
  %67 = tail call i64 @WriteBlobByte(ptr noundef %0, i8 noundef zeroext 10) #11
  %68 = load ptr, ptr %3, align 8, !tbaa !34
  %69 = getelementptr inbounds %struct._Ascii85Info, ptr %68, i64 0, i32 1
  store i64 72, ptr %69, align 8, !tbaa !54
  br label %70

70:                                               ; preds = %66, %56
  %71 = load i8, ptr %58, align 1, !tbaa !58
  %72 = tail call i64 @WriteBlobByte(ptr noundef %0, i8 noundef zeroext %71) #11
  %73 = getelementptr inbounds i8, ptr %58, i64 1
  %74 = load i8, ptr %73, align 1, !tbaa !58
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %56, !llvm.loop !62

76:                                               ; preds = %70, %52
  %77 = getelementptr inbounds i8, ptr %15, i64 8
  %78 = add nsw i64 %14, -4
  %79 = icmp sgt i64 %14, 7
  br i1 %79, label %13, label %80, !llvm.loop !63

80:                                               ; preds = %76
  %81 = load ptr, ptr %3, align 8, !tbaa !34
  store i64 %78, ptr %81, align 8, !tbaa !56
  %82 = getelementptr inbounds i8, ptr %15, i64 4
  br label %83

83:                                               ; preds = %80, %83
  %84 = phi i64 [ 0, %80 ], [ %90, %83 ]
  %85 = phi ptr [ %82, %80 ], [ %86, %83 ]
  %86 = getelementptr inbounds i8, ptr %85, i64 1
  %87 = load i8, ptr %85, align 1, !tbaa !58
  %88 = load ptr, ptr %3, align 8, !tbaa !34
  %89 = getelementptr inbounds %struct._Ascii85Info, ptr %88, i64 0, i32 2, i64 %84
  store i8 %87, ptr %89, align 1, !tbaa !58
  %90 = add nuw nsw i64 %84, 1
  %91 = icmp eq i64 %90, 4
  br i1 %91, label %92, label %83, !llvm.loop !64

92:                                               ; preds = %83, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @HuffmanDecodeImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [4096 x i8], align 16
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !57
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 473, ptr noundef nonnull @.str.4, ptr noundef nonnull %7) #11
  br label %9

9:                                                ; preds = %6, %1
  %10 = tail call dereferenceable_or_null(8168) ptr @AcquireQuantumMemory(i64 noundef 1021, i64 noundef 8) #14
  %11 = tail call dereferenceable_or_null(8168) ptr @AcquireQuantumMemory(i64 noundef 1021, i64 noundef 8) #14
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %13 = load i64, ptr %12, align 8, !tbaa !65
  %14 = tail call ptr @AcquireQuantumMemory(i64 noundef %13, i64 noundef 1) #14
  %15 = icmp eq ptr %10, null
  %16 = icmp eq ptr %11, null
  %17 = or i1 %15, %16
  %18 = icmp eq ptr %14, null
  %19 = select i1 %17, i1 true, i1 %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %9
  %21 = icmp eq ptr %0, null
  br i1 %21, label %476, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %25 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %23, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 482, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %24) #11
  br label %476

26:                                               ; preds = %9, %26
  %27 = phi i64 [ %30, %26 ], [ 0, %9 ]
  %28 = getelementptr inbounds ptr, ptr %10, i64 %27
  store ptr null, ptr %28, align 8, !tbaa !66
  %29 = getelementptr inbounds ptr, ptr %11, i64 %27
  store ptr null, ptr %29, align 8, !tbaa !66
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, 1021
  br i1 %31, label %32, label %26, !llvm.loop !67

32:                                               ; preds = %26, %32
  %33 = phi i64 [ %44, %32 ], [ 53, %26 ]
  %34 = phi ptr [ %42, %32 ], [ @TWTable, %26 ]
  %35 = getelementptr inbounds %struct.HuffmanTable, ptr %34, i64 0, i32 2
  %36 = load i64, ptr %35, align 8, !tbaa !68
  %37 = add i64 %36, 3510
  %38 = add i64 %33, 1178
  %39 = mul i64 %37, %38
  %40 = urem i64 %39, 1021
  %41 = getelementptr inbounds ptr, ptr %11, i64 %40
  store ptr %34, ptr %41, align 8, !tbaa !66
  %42 = getelementptr inbounds %struct.HuffmanTable, ptr %34, i64 1
  %43 = getelementptr inbounds %struct.HuffmanTable, ptr %34, i64 1, i32 1
  %44 = load i64, ptr %43, align 8, !tbaa !70
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %32, !llvm.loop !71

46:                                               ; preds = %32, %46
  %47 = phi i64 [ %58, %46 ], [ 27, %32 ]
  %48 = phi ptr [ %56, %46 ], [ @MWTable, %32 ]
  %49 = getelementptr inbounds %struct.HuffmanTable, ptr %48, i64 0, i32 2
  %50 = load i64, ptr %49, align 8, !tbaa !68
  %51 = add i64 %50, 3510
  %52 = add i64 %47, 1178
  %53 = mul i64 %51, %52
  %54 = urem i64 %53, 1021
  %55 = getelementptr inbounds ptr, ptr %11, i64 %54
  store ptr %48, ptr %55, align 8, !tbaa !66
  %56 = getelementptr inbounds %struct.HuffmanTable, ptr %48, i64 1
  %57 = getelementptr inbounds %struct.HuffmanTable, ptr %48, i64 1, i32 1
  %58 = load i64, ptr %57, align 8, !tbaa !70
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %46, !llvm.loop !72

60:                                               ; preds = %46, %60
  %61 = phi i64 [ %72, %60 ], [ 8, %46 ]
  %62 = phi ptr [ %70, %60 ], [ @EXTable, %46 ]
  %63 = getelementptr inbounds %struct.HuffmanTable, ptr %62, i64 0, i32 2
  %64 = load i64, ptr %63, align 8, !tbaa !68
  %65 = add i64 %64, 3510
  %66 = add i64 %61, 1178
  %67 = mul i64 %65, %66
  %68 = urem i64 %67, 1021
  %69 = getelementptr inbounds ptr, ptr %11, i64 %68
  store ptr %62, ptr %69, align 8, !tbaa !66
  %70 = getelementptr inbounds %struct.HuffmanTable, ptr %62, i64 1
  %71 = getelementptr inbounds %struct.HuffmanTable, ptr %62, i64 1, i32 1
  %72 = load i64, ptr %71, align 8, !tbaa !70
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %60, !llvm.loop !73

74:                                               ; preds = %60, %74
  %75 = phi i64 [ %86, %74 ], [ 55, %60 ]
  %76 = phi ptr [ %84, %74 ], [ @TBTable, %60 ]
  %77 = getelementptr inbounds %struct.HuffmanTable, ptr %76, i64 0, i32 2
  %78 = load i64, ptr %77, align 8, !tbaa !68
  %79 = add i64 %78, 293
  %80 = add i64 %75, 2695
  %81 = mul i64 %79, %80
  %82 = urem i64 %81, 1021
  %83 = getelementptr inbounds ptr, ptr %10, i64 %82
  store ptr %76, ptr %83, align 8, !tbaa !66
  %84 = getelementptr inbounds %struct.HuffmanTable, ptr %76, i64 1
  %85 = getelementptr inbounds %struct.HuffmanTable, ptr %76, i64 1, i32 1
  %86 = load i64, ptr %85, align 8, !tbaa !70
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %74, !llvm.loop !74

88:                                               ; preds = %74, %88
  %89 = phi i64 [ %100, %88 ], [ 15, %74 ]
  %90 = phi ptr [ %98, %88 ], [ @MBTable, %74 ]
  %91 = getelementptr inbounds %struct.HuffmanTable, ptr %90, i64 0, i32 2
  %92 = load i64, ptr %91, align 8, !tbaa !68
  %93 = add i64 %92, 293
  %94 = add i64 %89, 2695
  %95 = mul i64 %93, %94
  %96 = urem i64 %95, 1021
  %97 = getelementptr inbounds ptr, ptr %10, i64 %96
  store ptr %90, ptr %97, align 8, !tbaa !66
  %98 = getelementptr inbounds %struct.HuffmanTable, ptr %90, i64 1
  %99 = getelementptr inbounds %struct.HuffmanTable, ptr %90, i64 1, i32 1
  %100 = load i64, ptr %99, align 8, !tbaa !70
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %88, !llvm.loop !75

102:                                              ; preds = %88, %102
  %103 = phi i64 [ %114, %102 ], [ 8, %88 ]
  %104 = phi ptr [ %112, %102 ], [ @EXTable, %88 ]
  %105 = getelementptr inbounds %struct.HuffmanTable, ptr %104, i64 0, i32 2
  %106 = load i64, ptr %105, align 8, !tbaa !68
  %107 = add i64 %106, 293
  %108 = add i64 %103, 2695
  %109 = mul i64 %107, %108
  %110 = urem i64 %109, 1021
  %111 = getelementptr inbounds ptr, ptr %10, i64 %110
  store ptr %104, ptr %111, align 8, !tbaa !66
  %112 = getelementptr inbounds %struct.HuffmanTable, ptr %104, i64 1
  %113 = getelementptr inbounds %struct.HuffmanTable, ptr %104, i64 1, i32 1
  %114 = load i64, ptr %113, align 8, !tbaa !70
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %102, !llvm.loop !76

116:                                              ; preds = %102, %125
  %117 = phi i64 [ %133, %125 ], [ 0, %102 ]
  %118 = phi i64 [ %132, %125 ], [ 0, %102 ]
  %119 = phi i32 [ %126, %125 ], [ 0, %102 ]
  %120 = and i64 %118, 255
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %116
  %123 = tail call i32 @ReadBlobByte(ptr noundef %0) #11
  %124 = icmp eq i32 %123, -1
  br i1 %124, label %135, label %125

125:                                              ; preds = %122, %116
  %126 = phi i32 [ %119, %116 ], [ %123, %122 ]
  %127 = phi i64 [ %118, %116 ], [ 128, %122 ]
  %128 = add nuw nsw i64 %117, 1
  %129 = sext i32 %126 to i64
  %130 = and i64 %127, %129
  %131 = icmp eq i64 %130, 0
  %132 = lshr i64 %127, 1
  %133 = select i1 %131, i64 %128, i64 0
  %134 = icmp ult i64 %133, 11
  br i1 %134, label %116, label %135, !llvm.loop !77

135:                                              ; preds = %122, %125
  %136 = phi i32 [ %126, %125 ], [ -1, %122 ]
  %137 = phi i64 [ %132, %125 ], [ %118, %122 ]
  br label %138

138:                                              ; preds = %135, %146
  %139 = phi i32 [ %147, %146 ], [ %136, %135 ]
  %140 = phi i64 [ %152, %146 ], [ %137, %135 ]
  %141 = and i64 %140, 255
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %138
  %144 = tail call i32 @ReadBlobByte(ptr noundef %0) #11
  %145 = icmp eq i32 %144, -1
  br i1 %145, label %153, label %146

146:                                              ; preds = %143, %138
  %147 = phi i32 [ %139, %138 ], [ %144, %143 ]
  %148 = phi i64 [ %140, %138 ], [ 128, %143 ]
  %149 = sext i32 %147 to i64
  %150 = and i64 %148, %149
  %151 = icmp eq i64 %150, 0
  %152 = lshr i64 %148, 1
  br i1 %151, label %138, label %153, !llvm.loop !78

153:                                              ; preds = %143, %146
  %154 = phi i32 [ -1, %143 ], [ %147, %146 ]
  %155 = phi i64 [ %140, %143 ], [ %152, %146 ]
  %156 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 24
  store double 2.040000e+02, ptr %156, align 8, !tbaa !79
  %157 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 25
  store double 1.960000e+02, ptr %157, align 8, !tbaa !80
  %158 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 19
  store i32 1, ptr %158, align 8, !tbaa !81
  %159 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %160 = tail call ptr @AcquireAuthenticCacheView(ptr noundef %0, ptr noundef nonnull %159) #11
  %161 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %162 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %163 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %164 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %165 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %166

166:                                              ; preds = %464, %153
  %167 = phi i32 [ %154, %153 ], [ %411, %464 ]
  %168 = phi i64 [ %155, %153 ], [ %412, %464 ]
  %169 = phi i64 [ 0, %153 ], [ %413, %464 ]
  %170 = phi i64 [ 0, %153 ], [ %465, %464 ]
  %171 = load i64, ptr %161, align 8, !tbaa !82
  %172 = icmp slt i64 %170, %171
  %173 = icmp ult i64 %169, 3
  %174 = select i1 %172, i1 %173, i1 false
  br i1 %174, label %175, label %467

175:                                              ; preds = %166
  %176 = load i64, ptr %12, align 8, !tbaa !65
  %177 = icmp sgt i64 %176, 0
  br i1 %177, label %180, label %178

178:                                              ; preds = %180, %175
  %179 = icmp eq i32 %167, -1
  br i1 %179, label %410, label %401

180:                                              ; preds = %175, %180
  %181 = phi i64 [ %184, %180 ], [ 0, %175 ]
  %182 = phi ptr [ %183, %180 ], [ %14, %175 ]
  %183 = getelementptr inbounds i8, ptr %182, i64 1
  store i8 0, ptr %182, align 1, !tbaa !58
  %184 = add nuw nsw i64 %181, 1
  %185 = load i64, ptr %12, align 8, !tbaa !65
  %186 = icmp slt i64 %184, %185
  br i1 %186, label %180, label %178, !llvm.loop !83

187:                                              ; preds = %338, %368
  %188 = phi i64 [ %340, %338 ], [ %289, %368 ]
  %189 = phi i64 [ %341, %338 ], [ %288, %368 ]
  %190 = phi i64 [ %342, %338 ], [ %287, %368 ]
  %191 = phi i64 [ %343, %338 ], [ %286, %368 ]
  %192 = phi i64 [ %344, %338 ], [ %285, %368 ]
  %193 = phi i32 [ %345, %338 ], [ %284, %368 ]
  %194 = load i64, ptr %12, align 8, !tbaa !65
  %195 = icmp slt i64 %402, %194
  br i1 %195, label %235, label %196

196:                                              ; preds = %187
  %197 = icmp ult i64 %188, 11
  br i1 %197, label %198, label %217

198:                                              ; preds = %196, %207
  %199 = phi i64 [ %215, %207 ], [ %188, %196 ]
  %200 = phi i64 [ %214, %207 ], [ %191, %196 ]
  %201 = phi i32 [ %208, %207 ], [ %193, %196 ]
  %202 = and i64 %200, 255
  %203 = icmp eq i64 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %198
  %205 = call i32 @ReadBlobByte(ptr noundef %0) #11
  %206 = icmp eq i32 %205, -1
  br i1 %206, label %217, label %207

207:                                              ; preds = %204, %198
  %208 = phi i32 [ %201, %198 ], [ %205, %204 ]
  %209 = phi i64 [ %200, %198 ], [ 128, %204 ]
  %210 = add nuw nsw i64 %199, 1
  %211 = sext i32 %208 to i64
  %212 = and i64 %209, %211
  %213 = icmp eq i64 %212, 0
  %214 = lshr i64 %209, 1
  %215 = select i1 %213, i64 %210, i64 0
  %216 = icmp ult i64 %215, 11
  br i1 %216, label %198, label %217, !llvm.loop !84

217:                                              ; preds = %207, %204, %196
  %218 = phi i32 [ %193, %196 ], [ -1, %204 ], [ %208, %207 ]
  %219 = phi i64 [ %191, %196 ], [ %200, %204 ], [ %214, %207 ]
  br label %220

220:                                              ; preds = %217, %228
  %221 = phi i32 [ %229, %228 ], [ %218, %217 ]
  %222 = phi i64 [ %234, %228 ], [ %219, %217 ]
  %223 = and i64 %222, 255
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %220
  %226 = call i32 @ReadBlobByte(ptr noundef %0) #11
  %227 = icmp eq i32 %226, -1
  br i1 %227, label %410, label %228

228:                                              ; preds = %225, %220
  %229 = phi i32 [ %221, %220 ], [ %226, %225 ]
  %230 = phi i64 [ %222, %220 ], [ 128, %225 ]
  %231 = sext i32 %229 to i64
  %232 = and i64 %230, %231
  %233 = icmp eq i64 %232, 0
  %234 = lshr i64 %230, 1
  br i1 %233, label %220, label %410, !llvm.loop !85

235:                                              ; preds = %187, %273
  %236 = phi i32 [ %274, %273 ], [ %193, %187 ]
  %237 = phi i64 [ 0, %273 ], [ %192, %187 ]
  %238 = phi i64 [ %276, %273 ], [ %191, %187 ]
  %239 = phi i64 [ %281, %273 ], [ %190, %187 ]
  %240 = phi i64 [ %277, %273 ], [ %188, %187 ]
  %241 = icmp ult i64 %240, 11
  %242 = and i64 %238, 255
  %243 = icmp eq i64 %242, 0
  br i1 %241, label %244, label %257

244:                                              ; preds = %235
  br i1 %243, label %245, label %248

245:                                              ; preds = %244
  %246 = call i32 @ReadBlobByte(ptr noundef %0) #11
  %247 = icmp eq i32 %246, -1
  br i1 %247, label %283, label %248

248:                                              ; preds = %245, %244
  %249 = phi i32 [ %236, %244 ], [ %246, %245 ]
  %250 = phi i64 [ %238, %244 ], [ 128, %245 ]
  %251 = add nuw nsw i64 %240, 1
  %252 = sext i32 %249 to i64
  %253 = and i64 %250, %252
  %254 = icmp ne i64 %253, 0
  %255 = lshr i64 %250, 1
  %256 = select i1 %254, i64 0, i64 %251
  br label %273

257:                                              ; preds = %235
  br i1 %243, label %258, label %261

258:                                              ; preds = %257
  %259 = call i32 @ReadBlobByte(ptr noundef %0) #11
  %260 = icmp eq i32 %259, -1
  br i1 %260, label %283, label %261

261:                                              ; preds = %258, %257
  %262 = phi i32 [ %236, %257 ], [ %259, %258 ]
  %263 = phi i64 [ %238, %257 ], [ 128, %258 ]
  %264 = add i64 %240, 1
  %265 = sext i32 %262 to i64
  %266 = and i64 %263, %265
  %267 = icmp ne i64 %266, 0
  %268 = lshr i64 %263, 1
  %269 = select i1 %267, i64 0, i64 %264
  br i1 %267, label %270, label %273

270:                                              ; preds = %261
  %271 = add i64 %189, 1
  %272 = select i1 %409, i64 %271, i64 0
  br label %283

273:                                              ; preds = %248, %261
  %274 = phi i32 [ %262, %261 ], [ %249, %248 ]
  %275 = phi i1 [ %267, %261 ], [ %254, %248 ]
  %276 = phi i64 [ %268, %261 ], [ %255, %248 ]
  %277 = phi i64 [ %269, %261 ], [ %256, %248 ]
  %278 = zext i1 %275 to i64
  %279 = shl i64 %237, 1
  %280 = or disjoint i64 %279, %278
  %281 = add i64 %239, 1
  %282 = icmp eq i64 %280, 0
  br i1 %282, label %235, label %283, !llvm.loop !86

283:                                              ; preds = %258, %245, %273, %270
  %284 = phi i32 [ %262, %270 ], [ -1, %245 ], [ %274, %273 ], [ -1, %258 ]
  %285 = phi i64 [ %237, %270 ], [ %237, %245 ], [ %280, %273 ], [ %237, %258 ]
  %286 = phi i64 [ %268, %270 ], [ %238, %245 ], [ %276, %273 ], [ %238, %258 ]
  %287 = phi i64 [ %239, %270 ], [ %239, %245 ], [ %281, %273 ], [ %239, %258 ]
  %288 = phi i64 [ %272, %270 ], [ %189, %273 ], [ %189, %245 ], [ %189, %258 ]
  %289 = phi i64 [ %269, %270 ], [ %240, %245 ], [ %277, %273 ], [ %240, %258 ]
  %290 = phi i1 [ false, %270 ], [ true, %273 ], [ true, %245 ], [ true, %258 ]
  br i1 %290, label %291, label %410

291:                                              ; preds = %283
  %292 = icmp ugt i64 %287, 13
  br i1 %292, label %293, label %332

293:                                              ; preds = %291
  %294 = icmp ult i64 %289, 11
  br i1 %294, label %295, label %314

295:                                              ; preds = %293, %304
  %296 = phi i64 [ %312, %304 ], [ %289, %293 ]
  %297 = phi i64 [ %311, %304 ], [ %286, %293 ]
  %298 = phi i32 [ %305, %304 ], [ %284, %293 ]
  %299 = and i64 %297, 255
  %300 = icmp eq i64 %299, 0
  br i1 %300, label %301, label %304

301:                                              ; preds = %295
  %302 = call i32 @ReadBlobByte(ptr noundef %0) #11
  %303 = icmp eq i32 %302, -1
  br i1 %303, label %314, label %304

304:                                              ; preds = %301, %295
  %305 = phi i32 [ %298, %295 ], [ %302, %301 ]
  %306 = phi i64 [ %297, %295 ], [ 128, %301 ]
  %307 = add nuw nsw i64 %296, 1
  %308 = sext i32 %305 to i64
  %309 = and i64 %306, %308
  %310 = icmp eq i64 %309, 0
  %311 = lshr i64 %306, 1
  %312 = select i1 %310, i64 %307, i64 0
  %313 = icmp ult i64 %312, 11
  br i1 %313, label %295, label %314, !llvm.loop !87

314:                                              ; preds = %304, %301, %293
  %315 = phi i32 [ %284, %293 ], [ -1, %301 ], [ %305, %304 ]
  %316 = phi i64 [ %286, %293 ], [ %297, %301 ], [ %311, %304 ]
  br label %317

317:                                              ; preds = %314, %325
  %318 = phi i32 [ %326, %325 ], [ %315, %314 ]
  %319 = phi i64 [ %331, %325 ], [ %316, %314 ]
  %320 = and i64 %319, 255
  %321 = icmp eq i64 %320, 0
  br i1 %321, label %322, label %325

322:                                              ; preds = %317
  %323 = call i32 @ReadBlobByte(ptr noundef %0) #11
  %324 = icmp eq i32 %323, -1
  br i1 %324, label %410, label %325

325:                                              ; preds = %322, %317
  %326 = phi i32 [ %318, %317 ], [ %323, %322 ]
  %327 = phi i64 [ %319, %317 ], [ 128, %322 ]
  %328 = sext i32 %326 to i64
  %329 = and i64 %327, %328
  %330 = icmp eq i64 %329, 0
  %331 = lshr i64 %327, 1
  br i1 %330, label %317, label %410, !llvm.loop !88

332:                                              ; preds = %291
  br i1 %346, label %347, label %333

333:                                              ; preds = %332
  %334 = icmp ult i64 %287, 4
  br i1 %334, label %335, label %349, !llvm.loop !89

335:                                              ; preds = %333, %347
  %336 = phi i32 [ 1, %333 ], [ 0, %347 ]
  %337 = icmp eq i32 %284, -1
  br i1 %337, label %410, label %338

338:                                              ; preds = %401, %335
  %339 = phi i32 [ %403, %401 ], [ %336, %335 ]
  %340 = phi i64 [ %405, %401 ], [ %289, %335 ]
  %341 = phi i64 [ %406, %401 ], [ %288, %335 ]
  %342 = phi i64 [ 0, %401 ], [ %287, %335 ]
  %343 = phi i64 [ %407, %401 ], [ %286, %335 ]
  %344 = phi i64 [ 0, %401 ], [ %285, %335 ]
  %345 = phi i32 [ %408, %401 ], [ %284, %335 ]
  %346 = icmp eq i32 %339, 0
  br label %187

347:                                              ; preds = %332
  %348 = icmp ult i64 %287, 2
  br i1 %348, label %335, label %349, !llvm.loop !89

349:                                              ; preds = %347, %333
  %350 = phi i64 [ 3510, %333 ], [ 293, %347 ]
  %351 = phi i64 [ 1178, %333 ], [ 2695, %347 ]
  %352 = phi ptr [ %11, %333 ], [ %10, %347 ]
  %353 = add nuw nsw i64 %287, %350
  %354 = add i64 %285, %351
  %355 = mul i64 %353, %354
  %356 = urem i64 %355, 1021
  %357 = getelementptr inbounds ptr, ptr %352, i64 %356
  %358 = load ptr, ptr %357, align 8, !tbaa !66
  %359 = icmp eq ptr %358, null
  br i1 %359, label %368, label %360

360:                                              ; preds = %349
  %361 = getelementptr inbounds %struct.HuffmanTable, ptr %358, i64 0, i32 2
  %362 = load i64, ptr %361, align 8, !tbaa !68
  %363 = icmp eq i64 %362, %287
  br i1 %363, label %364, label %368

364:                                              ; preds = %360
  %365 = getelementptr inbounds %struct.HuffmanTable, ptr %358, i64 0, i32 1
  %366 = load i64, ptr %365, align 8, !tbaa !70
  %367 = icmp eq i64 %366, %285
  br i1 %367, label %370, label %368

368:                                              ; preds = %360, %364, %349
  %369 = icmp eq i32 %284, -1
  br i1 %369, label %410, label %187, !llvm.loop !89

370:                                              ; preds = %364
  %371 = load i64, ptr %358, align 8, !tbaa !90
  switch i64 %371, label %396 [
    i64 23, label %372
    i64 25, label %372
    i64 24, label %392
    i64 26, label %392
    i64 27, label %392
  ]

372:                                              ; preds = %370, %370
  %373 = getelementptr inbounds %struct.HuffmanTable, ptr %358, i64 0, i32 3
  %374 = load i64, ptr %373, align 8, !tbaa !91
  %375 = add nsw i64 %374, %404
  %376 = add nsw i64 %375, %402
  %377 = load i64, ptr %12, align 8, !tbaa !65
  %378 = icmp sgt i64 %376, %377
  %379 = sub nsw i64 %377, %402
  %380 = select i1 %378, i64 %379, i64 %375
  %381 = icmp sgt i64 %380, 0
  br i1 %381, label %382, label %388

382:                                              ; preds = %372
  br i1 %346, label %383, label %386

383:                                              ; preds = %382
  %384 = getelementptr i8, ptr %14, i64 %402
  call void @llvm.memset.p0.i64(ptr align 1 %384, i8 1, i64 %380, i1 false), !tbaa !58
  %385 = call i64 @llvm.smin.i64(i64 %377, i64 %376)
  br label %388

386:                                              ; preds = %382
  %387 = add nsw i64 %380, %402
  br label %388

388:                                              ; preds = %383, %386, %372
  %389 = phi i64 [ 0, %386 ], [ %380, %372 ], [ 0, %383 ]
  %390 = phi i64 [ %387, %386 ], [ %402, %372 ], [ %385, %383 ]
  %391 = zext i1 %346 to i32
  br label %396

392:                                              ; preds = %370, %370, %370
  %393 = getelementptr inbounds %struct.HuffmanTable, ptr %358, i64 0, i32 3
  %394 = load i64, ptr %393, align 8, !tbaa !91
  %395 = add nsw i64 %394, %404
  br label %396

396:                                              ; preds = %370, %392, %388
  %397 = phi i64 [ %404, %370 ], [ %395, %392 ], [ %389, %388 ]
  %398 = phi i32 [ %339, %370 ], [ %339, %392 ], [ %391, %388 ]
  %399 = phi i64 [ %402, %370 ], [ %402, %392 ], [ %390, %388 ]
  %400 = icmp eq i32 %284, -1
  br i1 %400, label %410, label %401, !llvm.loop !89

401:                                              ; preds = %178, %396
  %402 = phi i64 [ %399, %396 ], [ 0, %178 ]
  %403 = phi i32 [ %398, %396 ], [ 1, %178 ]
  %404 = phi i64 [ %397, %396 ], [ 0, %178 ]
  %405 = phi i64 [ %289, %396 ], [ 0, %178 ]
  %406 = phi i64 [ %288, %396 ], [ %169, %178 ]
  %407 = phi i64 [ %286, %396 ], [ %168, %178 ]
  %408 = phi i32 [ %284, %396 ], [ %167, %178 ]
  %409 = icmp eq i64 %402, 0
  br label %338

410:                                              ; preds = %396, %228, %225, %325, %322, %335, %368, %283, %178
  %411 = phi i32 [ -1, %178 ], [ %284, %283 ], [ -1, %368 ], [ -1, %335 ], [ -1, %322 ], [ %326, %325 ], [ -1, %225 ], [ %229, %228 ], [ -1, %396 ]
  %412 = phi i64 [ %168, %178 ], [ %286, %283 ], [ %286, %368 ], [ %286, %335 ], [ %319, %322 ], [ %331, %325 ], [ %222, %225 ], [ %234, %228 ], [ %286, %396 ]
  %413 = phi i64 [ %169, %178 ], [ %288, %283 ], [ %288, %368 ], [ %288, %335 ], [ %288, %322 ], [ %288, %325 ], [ %189, %225 ], [ %189, %228 ], [ %288, %396 ]
  %414 = load i64, ptr %12, align 8, !tbaa !65
  %415 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %160, i64 noundef 0, i64 noundef %170, i64 noundef %414, i64 noundef 1, ptr noundef nonnull %159) #15
  %416 = icmp eq ptr %415, null
  br i1 %416, label %464, label %417

417:                                              ; preds = %410
  %418 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %160) #11
  %419 = load i64, ptr %12, align 8, !tbaa !65
  %420 = icmp sgt i64 %419, 0
  br i1 %420, label %421, label %447

421:                                              ; preds = %417
  %422 = icmp eq ptr %418, null
  %423 = load ptr, ptr %162, align 8, !tbaa !92
  %424 = getelementptr inbounds %struct._PixelPacket, ptr %415, i64 0, i32 2
  %425 = getelementptr inbounds %struct._PixelPacket, ptr %415, i64 0, i32 1
  %426 = getelementptr inbounds %struct._PixelPacket, ptr %415, i64 0, i32 3
  br label %427

427:                                              ; preds = %421, %435
  %428 = phi i64 [ 0, %421 ], [ %445, %435 ]
  %429 = phi ptr [ %14, %421 ], [ %430, %435 ]
  %430 = getelementptr inbounds i8, ptr %429, i64 1
  %431 = load i8, ptr %429, align 1, !tbaa !58
  br i1 %422, label %435, label %432

432:                                              ; preds = %427
  %433 = zext i8 %431 to i16
  %434 = getelementptr inbounds i16, ptr %418, i64 %428
  store i16 %433, ptr %434, align 2, !tbaa !93
  br label %435

435:                                              ; preds = %432, %427
  %436 = zext i8 %431 to i64
  %437 = getelementptr inbounds %struct._PixelPacket, ptr %423, i64 %436, i32 2
  %438 = load i16, ptr %437, align 2, !tbaa !94
  store i16 %438, ptr %424, align 2, !tbaa !94
  %439 = getelementptr inbounds %struct._PixelPacket, ptr %423, i64 %436, i32 1
  %440 = load i16, ptr %439, align 2, !tbaa !95
  store i16 %440, ptr %425, align 2, !tbaa !95
  %441 = getelementptr inbounds %struct._PixelPacket, ptr %423, i64 %436
  %442 = load i16, ptr %441, align 2, !tbaa !96
  store i16 %442, ptr %415, align 2, !tbaa !96
  %443 = getelementptr inbounds %struct._PixelPacket, ptr %423, i64 %436, i32 3
  %444 = load i16, ptr %443, align 2, !tbaa !97
  store i16 %444, ptr %426, align 2, !tbaa !97
  %445 = add nuw nsw i64 %428, 1
  %446 = icmp eq i64 %445, %419
  br i1 %446, label %447, label %427, !llvm.loop !98

447:                                              ; preds = %435, %417
  %448 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %160, ptr noundef nonnull %159) #15
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %464, label %450

450:                                              ; preds = %447
  %451 = load i64, ptr %161, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %2) #11
  %452 = load ptr, ptr %163, align 8, !tbaa !99
  %453 = icmp eq ptr %452, null
  br i1 %453, label %459, label %454

454:                                              ; preds = %450
  %455 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %2, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef nonnull @LoadImageTag, ptr noundef nonnull %164) #11
  %456 = load ptr, ptr %163, align 8, !tbaa !99
  %457 = load ptr, ptr %165, align 8, !tbaa !100
  %458 = call i32 %456(ptr noundef nonnull %2, i64 noundef %170, i64 noundef %451, ptr noundef %457) #11
  br label %459

459:                                              ; preds = %450, %454
  %460 = phi i32 [ %458, %454 ], [ 1, %450 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %2) #11
  %461 = icmp ne i32 %460, 0
  %462 = zext i1 %461 to i64
  %463 = add nsw i64 %170, %462
  br label %464

464:                                              ; preds = %459, %447, %410
  %465 = phi i64 [ %170, %410 ], [ %170, %447 ], [ %463, %459 ]
  %466 = phi i1 [ false, %410 ], [ false, %447 ], [ %461, %459 ]
  br i1 %466, label %166, label %467

467:                                              ; preds = %464, %166
  %468 = phi i64 [ %465, %464 ], [ %170, %166 ]
  %469 = call ptr @DestroyCacheView(ptr noundef %160) #11
  %470 = add i64 %468, -3
  %471 = call i64 @llvm.umax.i64(i64 %470, i64 1)
  store i64 %471, ptr %161, align 8, !tbaa !82
  %472 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 2
  store i32 6, ptr %472, align 8, !tbaa !101
  %473 = call ptr @RelinquishMagickMemory(ptr noundef %11) #11
  %474 = call ptr @RelinquishMagickMemory(ptr noundef %10) #11
  %475 = call ptr @RelinquishMagickMemory(ptr noundef %14) #11
  br label %476

476:                                              ; preds = %20, %22, %467
  %477 = phi i32 [ 1, %467 ], [ 0, %22 ], [ 0, %20 ]
  ret i32 %477
}

; Function Attrs: allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #6

declare i32 @ReadBlobByte(ptr noundef) local_unnamed_addr #3

declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: hot
declare ptr @QueueCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: hot
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #7

declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #3

declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @HuffmanEncodeImage(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  %5 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !57
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 767, ptr noundef nonnull @.str.4, ptr noundef nonnull %9) #11
  br label %11

11:                                               ; preds = %8, %3
  %12 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 7
  %13 = load i64, ptr %12, align 8, !tbaa !65
  %14 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 48
  %15 = tail call i32 @LocaleCompare(ptr noundef nonnull %14, ptr noundef nonnull @.str.6) #11
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load i64, ptr %12, align 8, !tbaa !65
  %19 = tail call i64 @llvm.umax.i64(i64 %18, i64 1728)
  br label %20

20:                                               ; preds = %17, %11
  %21 = phi i64 [ %19, %17 ], [ %13, %11 ]
  %22 = add i64 %21, 1
  %23 = tail call ptr @AcquireQuantumMemory(i64 noundef %22, i64 noundef 1) #14
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = icmp eq ptr %1, null
  br i1 %26, label %417, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %29 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 53
  %30 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %28, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 778, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %29) #11
  br label %417

31:                                               ; preds = %20
  %32 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %23, i32 noundef 0, i64 noundef %21) #11
  %33 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 58
  %34 = tail call ptr @CloneImage(ptr noundef %2, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef nonnull %33) #11
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %23) #11
  br label %417

38:                                               ; preds = %31
  %39 = tail call i32 @SetImageType(ptr noundef nonnull %34, i32 noundef 1) #11
  %40 = tail call i32 @LocaleCompare(ptr noundef nonnull %14, ptr noundef nonnull @.str.6) #11
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  tail call void @Ascii85Initialize(ptr noundef %1)
  br label %67

43:                                               ; preds = %38, %54
  %44 = phi i8 [ %55, %54 ], [ -128, %38 ]
  %45 = phi i32 [ %56, %54 ], [ 0, %38 ]
  %46 = lshr i8 %44, 1
  %47 = icmp ult i8 %44, 2
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = tail call i32 @LocaleCompare(ptr noundef nonnull %14, ptr noundef nonnull @.str.6) #11
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = tail call i64 @WriteBlobByte(ptr noundef %1, i8 noundef zeroext 0) #11
  br label %54

53:                                               ; preds = %48
  tail call void @Ascii85Encode(ptr noundef %1, i8 noundef zeroext 0)
  br label %54

54:                                               ; preds = %51, %53, %43
  %55 = phi i8 [ %46, %43 ], [ -128, %53 ], [ -128, %51 ]
  %56 = add nuw nsw i32 %45, 1
  %57 = icmp eq i32 %56, 11
  br i1 %57, label %58, label %43, !llvm.loop !102

58:                                               ; preds = %54
  %59 = lshr i8 %55, 1
  %60 = icmp ult i8 %55, 2
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = tail call i32 @LocaleCompare(ptr noundef nonnull %14, ptr noundef nonnull @.str.6) #11
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = tail call i64 @WriteBlobByte(ptr noundef %1, i8 noundef zeroext %55) #11
  br label %67

66:                                               ; preds = %61
  tail call void @Ascii85Encode(ptr noundef %1, i8 noundef zeroext %55)
  br label %67

67:                                               ; preds = %64, %66, %58, %42
  %68 = phi i8 [ 0, %42 ], [ %55, %58 ], [ 0, %66 ], [ 0, %64 ]
  %69 = phi i8 [ -128, %42 ], [ %59, %58 ], [ -128, %66 ], [ -128, %64 ]
  %70 = getelementptr inbounds %struct._Image, ptr %34, i64 0, i32 58
  %71 = getelementptr inbounds %struct._Image, ptr %34, i64 0, i32 7
  %72 = getelementptr inbounds %struct._Image, ptr %34, i64 0, i32 8
  %73 = load i64, ptr %72, align 8, !tbaa !82
  %74 = icmp sgt i64 %73, 0
  br i1 %74, label %75, label %363

75:                                               ; preds = %67
  %76 = icmp sgt i64 %21, 0
  %77 = getelementptr inbounds %struct._Image, ptr %34, i64 0, i32 47
  %78 = getelementptr inbounds %struct._Image, ptr %34, i64 0, i32 53
  %79 = getelementptr inbounds %struct._Image, ptr %34, i64 0, i32 48
  br label %80

80:                                               ; preds = %75, %359
  %81 = phi i8 [ %69, %75 ], [ %344, %359 ]
  %82 = phi i8 [ %68, %75 ], [ %343, %359 ]
  %83 = phi i64 [ 0, %75 ], [ %360, %359 ]
  %84 = load i64, ptr %71, align 8, !tbaa !65
  %85 = call ptr @GetVirtualPixels(ptr noundef nonnull %34, i64 noundef 0, i64 noundef %83, i64 noundef %84, i64 noundef 1, ptr noundef nonnull %70) #11
  %86 = icmp eq ptr %85, null
  br i1 %86, label %363, label %87

87:                                               ; preds = %80
  %88 = load i64, ptr %71, align 8, !tbaa !65
  %89 = icmp sgt i64 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %91, %87
  br i1 %76, label %103, label %312

91:                                               ; preds = %87, %91
  %92 = phi ptr [ %98, %91 ], [ %23, %87 ]
  %93 = phi ptr [ %99, %91 ], [ %85, %87 ]
  %94 = phi i64 [ %100, %91 ], [ 0, %87 ]
  %95 = call float @GetPixelIntensity(ptr noundef nonnull %34, ptr noundef nonnull %93) #15
  %96 = fcmp ult float %95, 3.276750e+04
  %97 = zext i1 %96 to i8
  %98 = getelementptr inbounds i8, ptr %92, i64 1
  store i8 %97, ptr %92, align 1, !tbaa !58
  %99 = getelementptr inbounds %struct._PixelPacket, ptr %93, i64 1
  %100 = add nuw nsw i64 %94, 1
  %101 = load i64, ptr %71, align 8, !tbaa !65
  %102 = icmp slt i64 %100, %101
  br i1 %102, label %91, label %90, !llvm.loop !103

103:                                              ; preds = %90, %306
  %104 = phi i8 [ %310, %306 ], [ %81, %90 ]
  %105 = phi i8 [ %309, %306 ], [ %82, %90 ]
  %106 = phi i64 [ %308, %306 ], [ %21, %90 ]
  %107 = phi ptr [ %307, %306 ], [ %23, %90 ]
  %108 = call i64 @llvm.smin.i64(i64 %106, i64 1)
  %109 = add nsw i64 %108, -1
  br label %110

110:                                              ; preds = %103, %116
  %111 = phi i64 [ %106, %103 ], [ %119, %116 ]
  %112 = phi ptr [ %107, %103 ], [ %117, %116 ]
  %113 = phi i32 [ 0, %103 ], [ %118, %116 ]
  %114 = load i8, ptr %112, align 1, !tbaa !58
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %110
  %117 = getelementptr inbounds i8, ptr %112, i64 1
  %118 = add nuw nsw i32 %113, 1
  %119 = add nsw i64 %111, -1
  %120 = icmp sgt i64 %111, 1
  br i1 %120, label %110, label %121, !llvm.loop !104

121:                                              ; preds = %116, %110
  %122 = phi i32 [ %118, %116 ], [ %113, %110 ]
  %123 = phi ptr [ %117, %116 ], [ %112, %110 ]
  %124 = phi i64 [ %109, %116 ], [ %111, %110 ]
  %125 = icmp ugt i32 %122, 63
  br i1 %125, label %126, label %172

126:                                              ; preds = %121
  %127 = icmp ult i32 %122, 1792
  br i1 %127, label %128, label %132

128:                                              ; preds = %126
  %129 = lshr i32 %122, 6
  %130 = zext nneg i32 %129 to i64
  %131 = getelementptr %struct.HuffmanTable, ptr getelementptr ([28 x %struct.HuffmanTable], ptr @MWTable, i64 -1, i64 27), i64 %130
  br label %138

132:                                              ; preds = %126
  %133 = call i32 @llvm.umin.i32(i32 %122, i32 2560)
  %134 = zext nneg i32 %133 to i64
  %135 = add nsw i64 %134, -1792
  %136 = lshr i64 %135, 6
  %137 = getelementptr inbounds %struct.HuffmanTable, ptr @EXTable, i64 %136
  br label %138

138:                                              ; preds = %132, %128
  %139 = phi ptr [ %131, %128 ], [ %137, %132 ]
  %140 = getelementptr inbounds %struct.HuffmanTable, ptr %139, i64 0, i32 3
  %141 = load i64, ptr %140, align 8, !tbaa !91
  %142 = trunc i64 %141 to i32
  %143 = getelementptr inbounds %struct.HuffmanTable, ptr %139, i64 0, i32 2
  %144 = load i64, ptr %143, align 8, !tbaa !68
  %145 = add i64 %144, -1
  %146 = shl nuw i64 1, %145
  %147 = getelementptr inbounds %struct.HuffmanTable, ptr %139, i64 0, i32 1
  %148 = load i64, ptr %147, align 8, !tbaa !70
  br label %149

149:                                              ; preds = %138, %165
  %150 = phi i8 [ %104, %138 ], [ %167, %165 ]
  %151 = phi i8 [ %105, %138 ], [ %166, %165 ]
  %152 = phi i64 [ %146, %138 ], [ %168, %165 ]
  %153 = and i64 %148, %152
  %154 = icmp eq i64 %153, 0
  %155 = select i1 %154, i8 0, i8 %150
  %156 = or i8 %155, %151
  %157 = lshr i8 %150, 1
  %158 = icmp ult i8 %150, 2
  br i1 %158, label %159, label %165

159:                                              ; preds = %149
  %160 = call i32 @LocaleCompare(ptr noundef nonnull %14, ptr noundef nonnull @.str.6) #11
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %159
  %163 = call i64 @WriteBlobByte(ptr noundef %1, i8 noundef zeroext %156) #11
  br label %165

164:                                              ; preds = %159
  call void @Ascii85Encode(ptr noundef %1, i8 noundef zeroext %156)
  br label %165

165:                                              ; preds = %162, %164, %149
  %166 = phi i8 [ %156, %149 ], [ 0, %164 ], [ 0, %162 ]
  %167 = phi i8 [ %157, %149 ], [ -128, %164 ], [ -128, %162 ]
  %168 = lshr i64 %152, 1
  %169 = icmp ult i64 %152, 2
  br i1 %169, label %170, label %149, !llvm.loop !105

170:                                              ; preds = %165
  %171 = sub i32 %122, %142
  br label %172

172:                                              ; preds = %170, %121
  %173 = phi i32 [ %122, %121 ], [ %171, %170 ]
  %174 = phi i8 [ %105, %121 ], [ %166, %170 ]
  %175 = phi i8 [ %104, %121 ], [ %167, %170 ]
  %176 = call i32 @llvm.umin.i32(i32 %173, i32 63)
  %177 = zext nneg i32 %176 to i64
  %178 = getelementptr inbounds %struct.HuffmanTable, ptr @TWTable, i64 %177, i32 2
  %179 = load i64, ptr %178, align 16, !tbaa !68
  %180 = add i64 %179, -1
  %181 = shl nuw i64 1, %180
  %182 = getelementptr inbounds %struct.HuffmanTable, ptr @TWTable, i64 %177, i32 1
  %183 = load i64, ptr %182, align 8, !tbaa !70
  br label %184

184:                                              ; preds = %172, %200
  %185 = phi i8 [ %175, %172 ], [ %202, %200 ]
  %186 = phi i8 [ %174, %172 ], [ %201, %200 ]
  %187 = phi i64 [ %181, %172 ], [ %203, %200 ]
  %188 = and i64 %183, %187
  %189 = icmp eq i64 %188, 0
  %190 = select i1 %189, i8 0, i8 %185
  %191 = or i8 %190, %186
  %192 = lshr i8 %185, 1
  %193 = icmp ult i8 %185, 2
  br i1 %193, label %194, label %200

194:                                              ; preds = %184
  %195 = call i32 @LocaleCompare(ptr noundef nonnull %14, ptr noundef nonnull @.str.6) #11
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %194
  %198 = call i64 @WriteBlobByte(ptr noundef %1, i8 noundef zeroext %191) #11
  br label %200

199:                                              ; preds = %194
  call void @Ascii85Encode(ptr noundef %1, i8 noundef zeroext %191)
  br label %200

200:                                              ; preds = %197, %199, %184
  %201 = phi i8 [ %191, %184 ], [ 0, %199 ], [ 0, %197 ]
  %202 = phi i8 [ %192, %184 ], [ -128, %199 ], [ -128, %197 ]
  %203 = lshr i64 %187, 1
  %204 = icmp ult i64 %187, 2
  br i1 %204, label %205, label %184, !llvm.loop !106

205:                                              ; preds = %200
  %206 = icmp eq i64 %124, 0
  br i1 %206, label %306, label %207

207:                                              ; preds = %205
  %208 = load i8, ptr %123, align 1, !tbaa !58
  %209 = icmp ne i8 %208, 0
  %210 = icmp sgt i64 %124, 0
  %211 = select i1 %209, i1 %210, i1 false
  br i1 %211, label %212, label %223

212:                                              ; preds = %207, %212
  %213 = phi i64 [ %218, %212 ], [ %124, %207 ]
  %214 = phi ptr [ %216, %212 ], [ %123, %207 ]
  %215 = phi i32 [ %217, %212 ], [ 0, %207 ]
  %216 = getelementptr inbounds i8, ptr %214, i64 1
  %217 = add nuw nsw i32 %215, 1
  %218 = add nsw i64 %213, -1
  %219 = load i8, ptr %216, align 1, !tbaa !58
  %220 = icmp ne i8 %219, 0
  %221 = icmp sgt i64 %213, 1
  %222 = select i1 %220, i1 %221, i1 false
  br i1 %222, label %212, label %223, !llvm.loop !107

223:                                              ; preds = %212, %207
  %224 = phi i32 [ 0, %207 ], [ %217, %212 ]
  %225 = phi ptr [ %123, %207 ], [ %216, %212 ]
  %226 = phi i64 [ %124, %207 ], [ %218, %212 ]
  %227 = icmp ugt i32 %224, 63
  br i1 %227, label %228, label %273

228:                                              ; preds = %223
  %229 = lshr i32 %224, 6
  %230 = zext nneg i32 %229 to i64
  %231 = getelementptr %struct.HuffmanTable, ptr getelementptr ([28 x %struct.HuffmanTable], ptr @MBTable, i64 -1, i64 27), i64 %230
  %232 = icmp ugt i32 %224, 1791
  br i1 %232, label %233, label %239

233:                                              ; preds = %228
  %234 = call i32 @llvm.umin.i32(i32 %224, i32 2560)
  %235 = zext nneg i32 %234 to i64
  %236 = add nsw i64 %235, -1792
  %237 = lshr i64 %236, 6
  %238 = getelementptr inbounds %struct.HuffmanTable, ptr @EXTable, i64 %237
  br label %239

239:                                              ; preds = %233, %228
  %240 = phi ptr [ %238, %233 ], [ %231, %228 ]
  %241 = getelementptr inbounds %struct.HuffmanTable, ptr %240, i64 0, i32 3
  %242 = load i64, ptr %241, align 8, !tbaa !91
  %243 = trunc i64 %242 to i32
  %244 = getelementptr inbounds %struct.HuffmanTable, ptr %240, i64 0, i32 2
  %245 = load i64, ptr %244, align 8, !tbaa !68
  %246 = add i64 %245, -1
  %247 = shl nuw i64 1, %246
  %248 = getelementptr inbounds %struct.HuffmanTable, ptr %240, i64 0, i32 1
  %249 = load i64, ptr %248, align 8, !tbaa !70
  br label %250

250:                                              ; preds = %239, %266
  %251 = phi i8 [ %202, %239 ], [ %268, %266 ]
  %252 = phi i8 [ %201, %239 ], [ %267, %266 ]
  %253 = phi i64 [ %247, %239 ], [ %269, %266 ]
  %254 = and i64 %249, %253
  %255 = icmp eq i64 %254, 0
  %256 = select i1 %255, i8 0, i8 %251
  %257 = or i8 %256, %252
  %258 = lshr i8 %251, 1
  %259 = icmp ult i8 %251, 2
  br i1 %259, label %260, label %266

260:                                              ; preds = %250
  %261 = call i32 @LocaleCompare(ptr noundef nonnull %14, ptr noundef nonnull @.str.6) #11
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %265

263:                                              ; preds = %260
  %264 = call i64 @WriteBlobByte(ptr noundef %1, i8 noundef zeroext %257) #11
  br label %266

265:                                              ; preds = %260
  call void @Ascii85Encode(ptr noundef %1, i8 noundef zeroext %257)
  br label %266

266:                                              ; preds = %263, %265, %250
  %267 = phi i8 [ %257, %250 ], [ 0, %265 ], [ 0, %263 ]
  %268 = phi i8 [ %258, %250 ], [ -128, %265 ], [ -128, %263 ]
  %269 = lshr i64 %253, 1
  %270 = icmp ult i64 %253, 2
  br i1 %270, label %271, label %250, !llvm.loop !108

271:                                              ; preds = %266
  %272 = sub i32 %224, %243
  br label %273

273:                                              ; preds = %271, %223
  %274 = phi i32 [ %224, %223 ], [ %272, %271 ]
  %275 = phi i8 [ %201, %223 ], [ %267, %271 ]
  %276 = phi i8 [ %202, %223 ], [ %268, %271 ]
  %277 = call i32 @llvm.umin.i32(i32 %274, i32 63)
  %278 = zext nneg i32 %277 to i64
  %279 = getelementptr inbounds %struct.HuffmanTable, ptr @TBTable, i64 %278, i32 2
  %280 = load i64, ptr %279, align 16, !tbaa !68
  %281 = add i64 %280, -1
  %282 = shl nuw i64 1, %281
  %283 = getelementptr inbounds %struct.HuffmanTable, ptr @TBTable, i64 %278, i32 1
  %284 = load i64, ptr %283, align 8, !tbaa !70
  br label %285

285:                                              ; preds = %273, %301
  %286 = phi i8 [ %276, %273 ], [ %303, %301 ]
  %287 = phi i8 [ %275, %273 ], [ %302, %301 ]
  %288 = phi i64 [ %282, %273 ], [ %304, %301 ]
  %289 = and i64 %284, %288
  %290 = icmp eq i64 %289, 0
  %291 = select i1 %290, i8 0, i8 %286
  %292 = or i8 %291, %287
  %293 = lshr i8 %286, 1
  %294 = icmp ult i8 %286, 2
  br i1 %294, label %295, label %301

295:                                              ; preds = %285
  %296 = call i32 @LocaleCompare(ptr noundef nonnull %14, ptr noundef nonnull @.str.6) #11
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %298, label %300

298:                                              ; preds = %295
  %299 = call i64 @WriteBlobByte(ptr noundef %1, i8 noundef zeroext %292) #11
  br label %301

300:                                              ; preds = %295
  call void @Ascii85Encode(ptr noundef %1, i8 noundef zeroext %292)
  br label %301

301:                                              ; preds = %298, %300, %285
  %302 = phi i8 [ %292, %285 ], [ 0, %300 ], [ 0, %298 ]
  %303 = phi i8 [ %293, %285 ], [ -128, %300 ], [ -128, %298 ]
  %304 = lshr i64 %288, 1
  %305 = icmp ult i64 %288, 2
  br i1 %305, label %306, label %285, !llvm.loop !109

306:                                              ; preds = %301, %205
  %307 = phi ptr [ %123, %205 ], [ %225, %301 ]
  %308 = phi i64 [ 0, %205 ], [ %226, %301 ]
  %309 = phi i8 [ %201, %205 ], [ %302, %301 ]
  %310 = phi i8 [ %202, %205 ], [ %303, %301 ]
  %311 = icmp sgt i64 %308, 0
  br i1 %311, label %103, label %312, !llvm.loop !110

312:                                              ; preds = %306, %90
  %313 = phi i8 [ %81, %90 ], [ %310, %306 ]
  %314 = phi i8 [ %82, %90 ], [ %309, %306 ]
  br label %315

315:                                              ; preds = %312, %327
  %316 = phi i8 [ %329, %327 ], [ %313, %312 ]
  %317 = phi i8 [ %328, %327 ], [ %314, %312 ]
  %318 = phi i32 [ %330, %327 ], [ 0, %312 ]
  %319 = lshr i8 %316, 1
  %320 = icmp ult i8 %316, 2
  br i1 %320, label %321, label %327

321:                                              ; preds = %315
  %322 = call i32 @LocaleCompare(ptr noundef nonnull %14, ptr noundef nonnull @.str.6) #11
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %324, label %326

324:                                              ; preds = %321
  %325 = call i64 @WriteBlobByte(ptr noundef %1, i8 noundef zeroext %317) #11
  br label %327

326:                                              ; preds = %321
  call void @Ascii85Encode(ptr noundef %1, i8 noundef zeroext %317)
  br label %327

327:                                              ; preds = %324, %326, %315
  %328 = phi i8 [ %317, %315 ], [ 0, %326 ], [ 0, %324 ]
  %329 = phi i8 [ %319, %315 ], [ -128, %326 ], [ -128, %324 ]
  %330 = add nuw nsw i32 %318, 1
  %331 = icmp eq i32 %330, 11
  br i1 %331, label %332, label %315, !llvm.loop !111

332:                                              ; preds = %327
  %333 = or i8 %329, %328
  %334 = lshr i8 %329, 1
  %335 = icmp ult i8 %329, 2
  br i1 %335, label %336, label %342

336:                                              ; preds = %332
  %337 = call i32 @LocaleCompare(ptr noundef nonnull %14, ptr noundef nonnull @.str.6) #11
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %339, label %341

339:                                              ; preds = %336
  %340 = call i64 @WriteBlobByte(ptr noundef %1, i8 noundef zeroext %333) #11
  br label %342

341:                                              ; preds = %336
  call void @Ascii85Encode(ptr noundef %1, i8 noundef zeroext %333)
  br label %342

342:                                              ; preds = %339, %341, %332
  %343 = phi i8 [ %333, %332 ], [ 0, %341 ], [ 0, %339 ]
  %344 = phi i8 [ %334, %332 ], [ -128, %341 ], [ -128, %339 ]
  %345 = call ptr @GetPreviousImageInList(ptr noundef nonnull %34) #11
  %346 = icmp eq ptr %345, null
  br i1 %346, label %347, label %359

347:                                              ; preds = %342
  %348 = load i64, ptr %72, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #11
  %349 = load ptr, ptr %77, align 8, !tbaa !99
  %350 = icmp eq ptr %349, null
  br i1 %350, label %356, label %351

351:                                              ; preds = %347
  %352 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef nonnull @LoadImageTag, ptr noundef nonnull %78) #11
  %353 = load ptr, ptr %77, align 8, !tbaa !99
  %354 = load ptr, ptr %79, align 8, !tbaa !100
  %355 = call i32 %353(ptr noundef nonnull %4, i64 noundef %83, i64 noundef %348, ptr noundef %354) #11
  br label %356

356:                                              ; preds = %347, %351
  %357 = phi i32 [ %355, %351 ], [ 1, %347 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #11
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %363, label %359

359:                                              ; preds = %342, %356
  %360 = add nuw nsw i64 %83, 1
  %361 = load i64, ptr %72, align 8, !tbaa !82
  %362 = icmp slt i64 %360, %361
  br i1 %362, label %80, label %363, !llvm.loop !112

363:                                              ; preds = %359, %80, %356, %67
  %364 = phi i8 [ %69, %67 ], [ %344, %356 ], [ %81, %80 ], [ %344, %359 ]
  %365 = phi i8 [ %68, %67 ], [ %343, %356 ], [ %82, %80 ], [ %343, %359 ]
  br label %366

366:                                              ; preds = %363, %397
  %367 = phi i8 [ %399, %397 ], [ %364, %363 ]
  %368 = phi i8 [ %398, %397 ], [ %365, %363 ]
  %369 = phi i64 [ %400, %397 ], [ 0, %363 ]
  br label %370

370:                                              ; preds = %366, %382
  %371 = phi i8 [ %367, %366 ], [ %384, %382 ]
  %372 = phi i8 [ %368, %366 ], [ %383, %382 ]
  %373 = phi i32 [ 0, %366 ], [ %385, %382 ]
  %374 = lshr i8 %371, 1
  %375 = icmp ult i8 %371, 2
  br i1 %375, label %376, label %382

376:                                              ; preds = %370
  %377 = call i32 @LocaleCompare(ptr noundef nonnull %14, ptr noundef nonnull @.str.6) #11
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %379, label %381

379:                                              ; preds = %376
  %380 = call i64 @WriteBlobByte(ptr noundef %1, i8 noundef zeroext %372) #11
  br label %382

381:                                              ; preds = %376
  call void @Ascii85Encode(ptr noundef %1, i8 noundef zeroext %372)
  br label %382

382:                                              ; preds = %379, %381, %370
  %383 = phi i8 [ %372, %370 ], [ 0, %381 ], [ 0, %379 ]
  %384 = phi i8 [ %374, %370 ], [ -128, %381 ], [ -128, %379 ]
  %385 = add nuw nsw i32 %373, 1
  %386 = icmp eq i32 %385, 11
  br i1 %386, label %387, label %370, !llvm.loop !113

387:                                              ; preds = %382
  %388 = or i8 %384, %383
  %389 = lshr i8 %384, 1
  %390 = icmp ult i8 %384, 2
  br i1 %390, label %391, label %397

391:                                              ; preds = %387
  %392 = call i32 @LocaleCompare(ptr noundef nonnull %14, ptr noundef nonnull @.str.6) #11
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %394, label %396

394:                                              ; preds = %391
  %395 = call i64 @WriteBlobByte(ptr noundef %1, i8 noundef zeroext %388) #11
  br label %397

396:                                              ; preds = %391
  call void @Ascii85Encode(ptr noundef %1, i8 noundef zeroext %388)
  br label %397

397:                                              ; preds = %394, %396, %387
  %398 = phi i8 [ %388, %387 ], [ 0, %396 ], [ 0, %394 ]
  %399 = phi i8 [ %389, %387 ], [ -128, %396 ], [ -128, %394 ]
  %400 = add nuw nsw i64 %369, 1
  %401 = icmp eq i64 %400, 6
  br i1 %401, label %402, label %366, !llvm.loop !114

402:                                              ; preds = %397
  %403 = icmp eq i8 %399, -128
  br i1 %403, label %410, label %404

404:                                              ; preds = %402
  %405 = call i32 @LocaleCompare(ptr noundef nonnull %14, ptr noundef nonnull @.str.6) #11
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %407, label %409

407:                                              ; preds = %404
  %408 = call i64 @WriteBlobByte(ptr noundef %1, i8 noundef zeroext %398) #11
  br label %410

409:                                              ; preds = %404
  call void @Ascii85Encode(ptr noundef %1, i8 noundef zeroext %398)
  br label %410

410:                                              ; preds = %407, %409, %402
  %411 = call i32 @LocaleCompare(ptr noundef nonnull %14, ptr noundef nonnull @.str.6) #11
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %414, label %413

413:                                              ; preds = %410
  call void @Ascii85Flush(ptr noundef %1)
  br label %414

414:                                              ; preds = %413, %410
  %415 = call ptr @DestroyImage(ptr noundef nonnull %34) #11
  %416 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %23) #11
  br label %417

417:                                              ; preds = %25, %27, %414, %36
  %418 = phi i32 [ 0, %36 ], [ 1, %414 ], [ 0, %27 ], [ 0, %25 ]
  ret i32 %418
}

declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @SetImageType(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @GetVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: hot
declare float @GetPixelIntensity(ptr noundef, ptr noundef) local_unnamed_addr #7

declare ptr @GetPreviousImageInList(ptr noundef) local_unnamed_addr #3

declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @LZWEncodeImage(ptr noundef %0, i64 noundef %1, ptr noalias nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !57
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 981, ptr noundef nonnull @.str.4, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %3
  %11 = tail call dereferenceable_or_null(98304) ptr @AcquireQuantumMemory(i64 noundef 4096, i64 noundef 24) #14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %168, label %13

13:                                               ; preds = %10
  %14 = tail call i64 @WriteBlobByte(ptr noundef %0, i8 noundef zeroext -128) #11
  br label %15

15:                                               ; preds = %13, %15
  %16 = phi i64 [ 0, %13 ], [ %20, %15 ]
  %17 = getelementptr inbounds %struct._TableType, ptr %11, i64 %16
  store i64 -1, ptr %17, align 8, !tbaa !115
  %18 = getelementptr inbounds %struct._TableType, ptr %11, i64 %16, i32 1
  store i64 %16, ptr %18, align 8, !tbaa !117
  %19 = getelementptr inbounds %struct._TableType, ptr %11, i64 %16, i32 2
  store i64 -1, ptr %19, align 8, !tbaa !118
  %20 = add nuw nsw i64 %16, 1
  %21 = icmp eq i64 %20, 256
  br i1 %21, label %22, label %15, !llvm.loop !119

22:                                               ; preds = %15
  %23 = load i8, ptr %2, align 1, !tbaa !58
  %24 = zext i8 %23 to i64
  %25 = icmp sgt i64 %1, 1
  br i1 %25, label %26, label %121

26:                                               ; preds = %22, %113
  %27 = phi i64 [ %118, %113 ], [ 258, %22 ]
  %28 = phi i64 [ %117, %113 ], [ %24, %22 ]
  %29 = phi i64 [ %116, %113 ], [ 9, %22 ]
  %30 = phi i64 [ %115, %113 ], [ 1, %22 ]
  %31 = phi i64 [ %114, %113 ], [ 549755813888, %22 ]
  %32 = phi i64 [ %119, %113 ], [ 1, %22 ]
  %33 = icmp eq i64 %28, -1
  br i1 %33, label %51, label %34

34:                                               ; preds = %26
  %35 = getelementptr inbounds i8, ptr %2, i64 %32
  br label %36

36:                                               ; preds = %34, %47
  %37 = phi i64 [ %28, %34 ], [ %49, %47 ]
  %38 = getelementptr inbounds %struct._TableType, ptr %11, i64 %37
  %39 = load i64, ptr %38, align 8, !tbaa !115
  %40 = icmp eq i64 %39, %28
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct._TableType, ptr %11, i64 %37, i32 1
  %43 = load i64, ptr %42, align 8, !tbaa !117
  %44 = load i8, ptr %35, align 1, !tbaa !58
  %45 = zext i8 %44 to i64
  %46 = icmp eq i64 %43, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %41, %36
  %48 = getelementptr inbounds %struct._TableType, ptr %11, i64 %37, i32 2
  %49 = load i64, ptr %48, align 8, !tbaa !118
  %50 = icmp eq i64 %49, -1
  br i1 %50, label %51, label %36, !llvm.loop !120

51:                                               ; preds = %47, %41, %26
  %52 = phi i64 [ %28, %26 ], [ %49, %47 ], [ %37, %41 ]
  %53 = phi i64 [ %28, %26 ], [ %28, %47 ], [ %37, %41 ]
  %54 = icmp eq i64 %53, %52
  br i1 %54, label %113, label %55

55:                                               ; preds = %51
  %56 = sub i64 32, %29
  %57 = sub i64 %56, %30
  %58 = shl i64 %53, %57
  %59 = add i64 %58, %31
  %60 = add i64 %29, %30
  %61 = icmp ugt i64 %60, 7
  br i1 %61, label %62, label %71

62:                                               ; preds = %55, %62
  %63 = phi i64 [ %69, %62 ], [ %60, %55 ]
  %64 = phi i64 [ %68, %62 ], [ %59, %55 ]
  %65 = lshr i64 %64, 24
  %66 = trunc i64 %65 to i8
  %67 = tail call i64 @WriteBlobByte(ptr noundef %0, i8 noundef zeroext %66) #11
  %68 = shl i64 %64, 8
  %69 = add i64 %63, -8
  %70 = icmp ugt i64 %69, 7
  br i1 %70, label %62, label %71, !llvm.loop !121

71:                                               ; preds = %62, %55
  %72 = phi i64 [ %59, %55 ], [ %68, %62 ]
  %73 = phi i64 [ %60, %55 ], [ %69, %62 ]
  %74 = getelementptr inbounds %struct._TableType, ptr %11, i64 %27
  store i64 %53, ptr %74, align 8, !tbaa !115
  %75 = getelementptr inbounds i8, ptr %2, i64 %32
  %76 = load i8, ptr %75, align 1, !tbaa !58
  %77 = zext i8 %76 to i64
  %78 = getelementptr inbounds %struct._TableType, ptr %11, i64 %27, i32 1
  store i64 %77, ptr %78, align 8, !tbaa !117
  %79 = getelementptr inbounds %struct._TableType, ptr %11, i64 %53, i32 2
  %80 = load i64, ptr %79, align 8, !tbaa !118
  %81 = getelementptr inbounds %struct._TableType, ptr %11, i64 %27, i32 2
  store i64 %80, ptr %81, align 8, !tbaa !118
  store i64 %27, ptr %79, align 8, !tbaa !118
  %82 = add i64 %27, 1
  %83 = lshr i64 %82, %29
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %113, label %85

85:                                               ; preds = %71
  %86 = add i64 %29, 1
  %87 = icmp ugt i64 %86, 12
  br i1 %87, label %88, label %113

88:                                               ; preds = %85
  %89 = sub i64 %56, %73
  %90 = shl i64 256, %89
  %91 = add i64 %90, %72
  %92 = add i64 %73, %29
  %93 = icmp ugt i64 %92, 7
  br i1 %93, label %97, label %94

94:                                               ; preds = %97, %88
  %95 = phi i64 [ %91, %88 ], [ %103, %97 ]
  %96 = phi i64 [ %92, %88 ], [ %104, %97 ]
  br label %106

97:                                               ; preds = %88, %97
  %98 = phi i64 [ %104, %97 ], [ %92, %88 ]
  %99 = phi i64 [ %103, %97 ], [ %91, %88 ]
  %100 = lshr i64 %99, 24
  %101 = trunc i64 %100 to i8
  %102 = tail call i64 @WriteBlobByte(ptr noundef %0, i8 noundef zeroext %101) #11
  %103 = shl i64 %99, 8
  %104 = add i64 %98, -8
  %105 = icmp ugt i64 %104, 7
  br i1 %105, label %97, label %94, !llvm.loop !122

106:                                              ; preds = %94, %106
  %107 = phi i64 [ 0, %94 ], [ %111, %106 ]
  %108 = getelementptr inbounds %struct._TableType, ptr %11, i64 %107
  store i64 -1, ptr %108, align 8, !tbaa !115
  %109 = getelementptr inbounds %struct._TableType, ptr %11, i64 %107, i32 1
  store i64 %107, ptr %109, align 8, !tbaa !117
  %110 = getelementptr inbounds %struct._TableType, ptr %11, i64 %107, i32 2
  store i64 -1, ptr %110, align 8, !tbaa !118
  %111 = add nuw nsw i64 %107, 1
  %112 = icmp eq i64 %111, 256
  br i1 %112, label %113, label %106, !llvm.loop !123

113:                                              ; preds = %106, %71, %85, %51
  %114 = phi i64 [ %31, %51 ], [ %72, %85 ], [ %72, %71 ], [ %95, %106 ]
  %115 = phi i64 [ %30, %51 ], [ %73, %85 ], [ %73, %71 ], [ %96, %106 ]
  %116 = phi i64 [ %29, %51 ], [ %86, %85 ], [ %29, %71 ], [ 9, %106 ]
  %117 = phi i64 [ %53, %51 ], [ %77, %85 ], [ %77, %71 ], [ %77, %106 ]
  %118 = phi i64 [ %27, %51 ], [ %82, %85 ], [ %82, %71 ], [ 258, %106 ]
  %119 = add nuw nsw i64 %32, 1
  %120 = icmp eq i64 %119, %1
  br i1 %120, label %121, label %26, !llvm.loop !124

121:                                              ; preds = %113, %22
  %122 = phi i64 [ 549755813888, %22 ], [ %114, %113 ]
  %123 = phi i64 [ 1, %22 ], [ %115, %113 ]
  %124 = phi i64 [ 9, %22 ], [ %116, %113 ]
  %125 = phi i64 [ %24, %22 ], [ %117, %113 ]
  %126 = sub i64 32, %124
  %127 = sub i64 %126, %123
  %128 = shl i64 %125, %127
  %129 = add i64 %128, %122
  %130 = add i64 %124, %123
  %131 = icmp ugt i64 %130, 7
  br i1 %131, label %132, label %141

132:                                              ; preds = %121, %132
  %133 = phi i64 [ %139, %132 ], [ %130, %121 ]
  %134 = phi i64 [ %138, %132 ], [ %129, %121 ]
  %135 = lshr i64 %134, 24
  %136 = trunc i64 %135 to i8
  %137 = tail call i64 @WriteBlobByte(ptr noundef %0, i8 noundef zeroext %136) #11
  %138 = shl i64 %134, 8
  %139 = add i64 %133, -8
  %140 = icmp ugt i64 %139, 7
  br i1 %140, label %132, label %141, !llvm.loop !125

141:                                              ; preds = %132, %121
  %142 = phi i64 [ %129, %121 ], [ %138, %132 ]
  %143 = phi i64 [ %130, %121 ], [ %139, %132 ]
  %144 = sub i64 %126, %143
  %145 = shl i64 257, %144
  %146 = add i64 %145, %142
  %147 = add i64 %143, %124
  %148 = icmp ugt i64 %147, 7
  br i1 %148, label %149, label %158

149:                                              ; preds = %141, %149
  %150 = phi i64 [ %156, %149 ], [ %147, %141 ]
  %151 = phi i64 [ %155, %149 ], [ %146, %141 ]
  %152 = lshr i64 %151, 24
  %153 = trunc i64 %152 to i8
  %154 = tail call i64 @WriteBlobByte(ptr noundef %0, i8 noundef zeroext %153) #11
  %155 = shl i64 %151, 8
  %156 = add i64 %150, -8
  %157 = icmp ugt i64 %156, 7
  br i1 %157, label %149, label %158, !llvm.loop !126

158:                                              ; preds = %149, %141
  %159 = phi i64 [ %146, %141 ], [ %155, %149 ]
  %160 = phi i64 [ %147, %141 ], [ %156, %149 ]
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %166, label %162

162:                                              ; preds = %158
  %163 = lshr i64 %159, 24
  %164 = trunc i64 %163 to i8
  %165 = tail call i64 @WriteBlobByte(ptr noundef %0, i8 noundef zeroext %164) #11
  br label %166

166:                                              ; preds = %162, %158
  %167 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %11) #11
  br label %168

168:                                              ; preds = %10, %166
  %169 = phi i32 [ 1, %166 ], [ 0, %10 ]
  ret i32 %169
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @PackbitsEncodeImage(ptr noundef %0, i64 noundef %1, ptr noalias nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !57
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1116, ptr noundef nonnull @.str.4, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %3
  %11 = tail call dereferenceable_or_null(128) ptr @AcquireQuantumMemory(i64 noundef 128, i64 noundef 1) #14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %91

13:                                               ; preds = %10
  %14 = icmp eq ptr %0, null
  br i1 %14, label %133, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1121, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %17) #11
  br label %133

19:                                               ; preds = %53, %91
  %20 = phi i64 [ %93, %91 ], [ %54, %53 ]
  switch i64 %20, label %55 [
    i64 0, label %130
    i64 1, label %21
    i64 2, label %26
    i64 3, label %33
  ]

21:                                               ; preds = %19
  %22 = add nsw i64 %20, -1
  %23 = tail call i64 @WriteBlobByte(ptr noundef %0, i8 noundef zeroext 0) #11
  %24 = load i8, ptr %92, align 1, !tbaa !58
  %25 = tail call i64 @WriteBlobByte(ptr noundef %0, i8 noundef zeroext %24) #11
  br label %53

26:                                               ; preds = %19
  %27 = add nsw i64 %20, -2
  %28 = tail call i64 @WriteBlobByte(ptr noundef %0, i8 noundef zeroext 1) #11
  %29 = load i8, ptr %92, align 1, !tbaa !58
  %30 = tail call i64 @WriteBlobByte(ptr noundef %0, i8 noundef zeroext %29) #11
  %31 = load i8, ptr %97, align 1, !tbaa !58
  %32 = tail call i64 @WriteBlobByte(ptr noundef %0, i8 noundef zeroext %31) #11
  br label %53

33:                                               ; preds = %19
  %34 = add nsw i64 %20, -3
  %35 = load i8, ptr %92, align 1, !tbaa !58
  %36 = load i8, ptr %94, align 1, !tbaa !58
  %37 = icmp eq i8 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load i8, ptr %95, align 1, !tbaa !58
  %40 = icmp eq i8 %36, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = tail call i64 @WriteBlobByte(ptr noundef %0, i8 noundef zeroext -2) #11
  %43 = load i8, ptr %92, align 1, !tbaa !58
  %44 = tail call i64 @WriteBlobByte(ptr noundef %0, i8 noundef zeroext %43) #11
  br label %53

45:                                               ; preds = %38, %33
  %46 = tail call i64 @WriteBlobByte(ptr noundef %0, i8 noundef zeroext 2) #11
  %47 = load i8, ptr %92, align 1, !tbaa !58
  %48 = tail call i64 @WriteBlobByte(ptr noundef %0, i8 noundef zeroext %47) #11
  %49 = load i8, ptr %94, align 1, !tbaa !58
  %50 = tail call i64 @WriteBlobByte(ptr noundef %0, i8 noundef zeroext %49) #11
  %51 = load i8, ptr %96, align 1, !tbaa !58
  %52 = tail call i64 @WriteBlobByte(ptr noundef %0, i8 noundef zeroext %51) #11
  br label %53

53:                                               ; preds = %45, %41, %26, %21
  %54 = phi i64 [ %34, %41 ], [ %34, %45 ], [ %27, %26 ], [ %22, %21 ]
  br label %19, !llvm.loop !127

55:                                               ; preds = %19
  %56 = load i8, ptr %92, align 1, !tbaa !58
  %57 = getelementptr inbounds i8, ptr %92, i64 1
  %58 = load i8, ptr %57, align 1, !tbaa !58
  %59 = icmp eq i8 %56, %58
  br i1 %59, label %60, label %98

60:                                               ; preds = %55
  %61 = getelementptr inbounds i8, ptr %92, i64 2
  %62 = load i8, ptr %61, align 1, !tbaa !58
  %63 = icmp eq i8 %58, %62
  br i1 %63, label %64, label %98

64:                                               ; preds = %60
  %65 = tail call i64 @llvm.smax.i64(i64 %20, i64 3)
  %66 = trunc i64 %65 to i32
  br label %67

67:                                               ; preds = %64, %74
  %68 = phi i64 [ 3, %64 ], [ %75, %74 ]
  %69 = icmp eq i64 %68, %65
  br i1 %69, label %79, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds i8, ptr %92, i64 %68
  %72 = load i8, ptr %71, align 1, !tbaa !58
  %73 = icmp eq i8 %56, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = add nuw nsw i64 %68, 1
  %76 = icmp eq i64 %75, 127
  br i1 %76, label %79, label %67, !llvm.loop !128

77:                                               ; preds = %70
  %78 = trunc i64 %68 to i32
  br label %79

79:                                               ; preds = %74, %67, %77
  %80 = phi i32 [ %78, %77 ], [ %66, %67 ], [ 127, %74 ]
  %81 = sext i32 %80 to i64
  %82 = trunc i32 %80 to i8
  %83 = sub i8 1, %82
  %84 = tail call i64 @WriteBlobByte(ptr noundef %0, i8 noundef zeroext %83) #11
  %85 = load i8, ptr %92, align 1, !tbaa !58
  %86 = tail call i64 @WriteBlobByte(ptr noundef %0, i8 noundef zeroext %85) #11
  br label %87

87:                                               ; preds = %123, %79
  %88 = phi i64 [ %81, %79 ], [ %120, %123 ]
  %89 = sub nsw i64 %20, %88
  %90 = getelementptr inbounds i8, ptr %92, i64 %88
  br label %91, !llvm.loop !127

91:                                               ; preds = %10, %87
  %92 = phi ptr [ %90, %87 ], [ %2, %10 ]
  %93 = phi i64 [ %89, %87 ], [ %1, %10 ]
  %94 = getelementptr inbounds i8, ptr %92, i64 1
  %95 = getelementptr inbounds i8, ptr %92, i64 2
  %96 = getelementptr inbounds i8, ptr %92, i64 2
  %97 = getelementptr inbounds i8, ptr %92, i64 1
  br label %19

98:                                               ; preds = %60, %55
  %99 = add nsw i64 %20, -3
  br label %100

100:                                              ; preds = %111, %98
  %101 = phi i64 [ %112, %111 ], [ 0, %98 ]
  %102 = getelementptr inbounds i8, ptr %92, i64 %101
  %103 = load i8, ptr %102, align 1, !tbaa !58
  %104 = getelementptr inbounds i8, ptr %102, i64 1
  %105 = load i8, ptr %104, align 1, !tbaa !58
  %106 = icmp eq i8 %103, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %100
  %108 = getelementptr inbounds i8, ptr %102, i64 2
  %109 = load i8, ptr %108, align 1, !tbaa !58
  %110 = icmp eq i8 %105, %109
  br i1 %110, label %117, label %111

111:                                              ; preds = %100, %107
  %112 = add nuw nsw i64 %101, 1
  %113 = getelementptr inbounds i8, ptr %11, i64 %112
  store i8 %103, ptr %113, align 1, !tbaa !58
  %114 = icmp sle i64 %99, %112
  %115 = icmp ugt i64 %101, 125
  %116 = or i1 %115, %114
  br i1 %116, label %117, label %100, !llvm.loop !129

117:                                              ; preds = %111, %107
  %118 = phi i64 [ %112, %111 ], [ %101, %107 ]
  %119 = shl i64 %118, 32
  %120 = ashr exact i64 %119, 32
  %121 = trunc i64 %118 to i8
  %122 = add i8 %121, -1
  store i8 %122, ptr %11, align 1, !tbaa !58
  br label %123

123:                                              ; preds = %117, %123
  %124 = phi i64 [ 0, %117 ], [ %128, %123 ]
  %125 = getelementptr inbounds i8, ptr %11, i64 %124
  %126 = load i8, ptr %125, align 1, !tbaa !58
  %127 = tail call i64 @WriteBlobByte(ptr noundef %0, i8 noundef zeroext %126) #11
  %128 = add nuw nsw i64 %124, 1
  %129 = icmp eq i64 %124, %120
  br i1 %129, label %87, label %123, !llvm.loop !130

130:                                              ; preds = %19
  %131 = tail call i64 @WriteBlobByte(ptr noundef %0, i8 noundef zeroext -128) #11
  %132 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %11) #11
  br label %133

133:                                              ; preds = %13, %15, %130
  %134 = phi i32 [ 1, %130 ], [ 0, %15 ], [ 0, %13 ]
  ret i32 %134
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ZLIBEncodeImage(ptr noundef %0, i64 noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !57
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1308, ptr noundef nonnull @.str.4, ptr noundef nonnull %8) #11
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %13 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %11, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1309, i32 noundef 420, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull %12) #11
  ret i32 0
}

declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { hot "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(none) }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind allocsize(0,1) }
attributes #15 = { hot nounwind }

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
!59 = distinct !{!59, !60, !61}
!60 = !{!"llvm.loop.mustprogress"}
!61 = !{!"llvm.loop.unroll.disable"}
!62 = distinct !{!62, !60, !61}
!63 = distinct !{!63, !60, !61}
!64 = distinct !{!64, !60, !61}
!65 = !{!35, !39, i64 40}
!66 = !{!40, !40, i64 0}
!67 = distinct !{!67, !60, !61}
!68 = !{!69, !39, i64 16}
!69 = !{!"HuffmanTable", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24}
!70 = !{!69, !39, i64 8}
!71 = distinct !{!71, !60, !61}
!72 = distinct !{!72, !60, !61}
!73 = distinct !{!73, !60, !61}
!74 = distinct !{!74, !60, !61}
!75 = distinct !{!75, !60, !61}
!76 = distinct !{!76, !60, !61}
!77 = distinct !{!77, !60, !61}
!78 = distinct !{!78, !60, !61}
!79 = !{!35, !43, i64 264}
!80 = !{!35, !43, i64 272}
!81 = !{!35, !36, i64 224}
!82 = !{!35, !39, i64 48}
!83 = distinct !{!83, !60, !61}
!84 = distinct !{!84, !60, !61}
!85 = distinct !{!85, !60, !61}
!86 = distinct !{!86, !60, !61}
!87 = distinct !{!87, !60, !61}
!88 = distinct !{!88, !60, !61}
!89 = distinct !{!89, !61}
!90 = !{!69, !39, i64 0}
!91 = !{!69, !39, i64 24}
!92 = !{!35, !40, i64 72}
!93 = !{!42, !42, i64 0}
!94 = !{!41, !42, i64 4}
!95 = !{!41, !42, i64 2}
!96 = !{!41, !42, i64 0}
!97 = !{!41, !42, i64 6}
!98 = distinct !{!98, !60, !61}
!99 = !{!35, !40, i64 568}
!100 = !{!35, !40, i64 576}
!101 = !{!35, !36, i64 8}
!102 = distinct !{!102, !60, !61}
!103 = distinct !{!103, !60, !61}
!104 = distinct !{!104, !60, !61}
!105 = distinct !{!105, !60, !61}
!106 = distinct !{!106, !60, !61}
!107 = distinct !{!107, !60, !61}
!108 = distinct !{!108, !60, !61}
!109 = distinct !{!109, !60, !61}
!110 = distinct !{!110, !60, !61}
!111 = distinct !{!111, !60, !61}
!112 = distinct !{!112, !60, !61}
!113 = distinct !{!113, !60, !61}
!114 = distinct !{!114, !60, !61}
!115 = !{!116, !39, i64 0}
!116 = !{!"_TableType", !39, i64 0, !39, i64 8, !39, i64 16}
!117 = !{!116, !39, i64 8}
!118 = !{!116, !39, i64 16}
!119 = distinct !{!119, !60, !61}
!120 = distinct !{!120, !60, !61}
!121 = distinct !{!121, !60, !61}
!122 = distinct !{!122, !60, !61}
!123 = distinct !{!123, !60, !61}
!124 = distinct !{!124, !60, !61}
!125 = distinct !{!125, !60, !61}
!126 = distinct !{!126, !60, !61}
!127 = distinct !{!127, !60, !61}
!128 = distinct !{!128, !60, !61}
!129 = distinct !{!129, !60, !61}
!130 = distinct !{!130, !60, !61}
