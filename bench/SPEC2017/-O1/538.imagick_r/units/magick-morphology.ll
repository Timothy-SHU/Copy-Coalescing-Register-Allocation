; ModuleID = 'magick/morphology.c'
source_filename = "magick/morphology.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GeometryInfo = type { double, double, double, double, double }
%struct.KernelInfo = type { i32, i64, i64, i64, i64, ptr, double, double, double, double, double, ptr, i64 }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._MagickPixelPacket = type { i32, i32, i32, double, i64, float, float, float, float, float }
%struct._Image = type { i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, ptr, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, double, %struct._ChromaticityInfo, i32, ptr, i32, ptr, ptr, ptr, i64, double, double, %struct._RectangleInfo, %struct._RectangleInfo, %struct._RectangleInfo, double, double, double, i32, i32, i32, i32, i32, i32, ptr, i64, i64, i64, i64, i64, i64, %struct._ErrorInfo, %struct._TimerInfo, ptr, ptr, ptr, ptr, ptr, ptr, [4096 x i8], [4096 x i8], [4096 x i8], i64, i64, %struct._ExceptionInfo, i32, i64, ptr, %struct._ProfileInfo, %struct._ProfileInfo, ptr, i64, i64, ptr, ptr, ptr, i32, i32, %struct._PixelPacket, ptr, %struct._RectangleInfo, ptr, ptr, i32, i32, i64, i32, i64, i64, i32, i64 }
%struct._ChromaticityInfo = type { %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo }
%struct._PrimaryInfo = type { double, double, double }
%struct._ErrorInfo = type { double, double, double }
%struct._TimerInfo = type { %struct._Timer, %struct._Timer, i32, i64 }
%struct._Timer = type { double, double, double }
%struct._ProfileInfo = type { ptr, i64, ptr, i64 }
%struct._PixelPacket = type { i16, i16, i16, i16 }
%struct._RectangleInfo = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [31 x i8] c"3: -1,-1,-1  -1,8,-1  -1,-1,-1\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"3: 0,-1,0  -1,4,-1  0,-1,0\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"3: -2,1,-2  1,4,1  -2,1,-2\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"3: 1,-2,1  -2,4,-2  1,-2,1\00", align 1
@.str.4 = private unnamed_addr constant [69 x i8] c"5: -4,-1,0,-1,-4  -1,2,3,2,-1  0,3,4,3,0  -1,2,3,2,-1  -4,-1,0,-1,-4\00", align 1
@.str.5 = private unnamed_addr constant [128 x i8] c"7:-10,-5,-2,-1,-2,-5,-10 -5,0,3,4,3,0,-5 -2,3,6,7,6,3,-2 -1,4,7,8,7,4,-1 -2,3,6,7,6,3,-2 -5,0,3,4,3,0,-5 -10,-5,-2,-1,-2,-5,-10\00", align 1
@.str.6 = private unnamed_addr constant [70 x i8] c"5: 0,0,-1,0,0  0,-1,-2,-1,0  -1,-2,16,-2,-1  0,-1,-2,-1,0  0,0,-1,0,0\00", align 1
@.str.7 = private unnamed_addr constant [250 x i8] c"9: 0,-1,-1,-2,-2,-2,-1,-1,0  -1,-2,-4,-5,-5,-5,-4,-2,-1  -1,-4,-5,-3,-0,-3,-5,-4,-1  -2,-5,-3,12,24,12,-3,-5,-2  -2,-5,-0,24,40,24,-0,-5,-2  -2,-5,-3,12,24,12,-3,-5,-2  -1,-4,-5,-3,-0,-3,-5,-4,-1  -1,-2,-4,-5,-5,-5,-4,-2,-1  0,-1,-1,-2,-2,-2,-1,-1,0\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"3: 1,0,-1  2,0,-2  1,0,-1\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"3: 0,0,0  1,-1,0  0,0,0\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"3: 1,0,-1  1,0,-1  1,0,-1\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"3: 1,1,-1  1,-2,-1  1,1,-1\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"3: 5,-3,-3  5,0,-3  5,-3,-3\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"3: 1,2,0  2,0,-2  0,-2,-1\00", align 1
@.str.14 = private unnamed_addr constant [108 x i8] c"FreiChen:11;FreiChen:12;FreiChen:13;FreiChen:14;FreiChen:15;FreiChen:16;FreiChen:17;FreiChen:18;FreiChen:19\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"3: 1,2,1  0,0,0  1,2,1\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"3: 2,-1,0  -1,0,1  0,1,-2\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"3: 0,1,-2  -1,0,1  2,-1,0\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"3: 0,-1,0  1,0,1  0,-1,0\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"3: 1,0,-1  0,0,0  -1,0,1\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"3: 1,-2,1  -2,4,-2  -1,-2,1\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"3: 1,1,1  1,1,1  1,1,1\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"ThinSE:482\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"ThinSE:87\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"3: 0,0,0  0,-,1  1,1,-\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"3: 0,0,1  0,-,1  0,1,-\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"LineEnds:1>;LineEnds:2>\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"3: 0,0,-  0,1,1  0,0,-\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"3: 0,0,0  0,1,0  0,0,1\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"3: 0,0,0  0,1,1  0,0,0\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"3: 0,0,0  0,1,-  0,0,-\00", align 1
@.str.31 = private unnamed_addr constant [34 x i8] c"LineJunctions:1@;LineJunctions:2>\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"3: 1,-,1  -,1,-  -,1,-\00", align 1
@.str.33 = private unnamed_addr constant [23 x i8] c"3: 1,-,-  -,1,-  1,-,1\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"3: -,-,-  1,1,1  -,1,-\00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"3: 1,-,1  -,1,-  1,-,1\00", align 1
@.str.36 = private unnamed_addr constant [23 x i8] c"3: -,1,-  1,1,1  -,1,-\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"3x1:0,1,0\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"4x1:0,1,1,0\00", align 1
@.str.39 = private unnamed_addr constant [32 x i8] c"4x3+1+1:0,1,1,- -,1,1,- -,1,1,0\00", align 1
@.str.40 = private unnamed_addr constant [32 x i8] c"4x3+2+1:0,1,1,- -,1,1,- -,1,1,0\00", align 1
@.str.41 = private unnamed_addr constant [32 x i8] c"4x3+1+1:-,1,1,0 -,1,1,- 0,1,1,-\00", align 1
@.str.42 = private unnamed_addr constant [32 x i8] c"4x3+2+1:-,1,1,0 -,1,1,- 0,1,1,-\00", align 1
@.str.43 = private unnamed_addr constant [32 x i8] c"3x4+1+1:0,-,- 1,1,1 1,1,1 -,-,0\00", align 1
@.str.44 = private unnamed_addr constant [32 x i8] c"3x4+1+2:0,-,- 1,1,1 1,1,1 -,-,0\00", align 1
@.str.45 = private unnamed_addr constant [32 x i8] c"3x4+1+1:-,-,0 1,1,1 1,1,1 0,-,-\00", align 1
@.str.46 = private unnamed_addr constant [32 x i8] c"3x4+1+2:-,-,0 1,1,1 1,1,1 0,-,-\00", align 1
@.str.47 = private unnamed_addr constant [23 x i8] c"3: 1,1,-  1,0,-  1,-,0\00", align 1
@.str.48 = private unnamed_addr constant [23 x i8] c"3: 1,1,1  1,0,-  -,-,0\00", align 1
@.str.49 = private unnamed_addr constant [26 x i8] c"ThinSE:482; ThinSE:87x90;\00", align 1
@.str.50 = private unnamed_addr constant [32 x i8] c"ThinSE:41; ThinSE:42; ThinSE:43\00", align 1
@.str.51 = private unnamed_addr constant [23 x i8] c"3: -,-,1  0,-,1  -,-,1\00", align 1
@.str.52 = private unnamed_addr constant [23 x i8] c"3: -,-,1  0,-,1  -,0,-\00", align 1
@.str.53 = private unnamed_addr constant [23 x i8] c"3: -,0,-  0,-,1  -,-,1\00", align 1
@.str.54 = private unnamed_addr constant [23 x i8] c"3: -,0,-  0,-,1  -,0,-\00", align 1
@.str.55 = private unnamed_addr constant [23 x i8] c"3: -,0,1  0,-,1  -,0,-\00", align 1
@.str.56 = private unnamed_addr constant [23 x i8] c"3: -,0,-  0,-,1  -,0,1\00", align 1
@.str.57 = private unnamed_addr constant [23 x i8] c"3: -,1,1  0,-,1  -,0,-\00", align 1
@.str.58 = private unnamed_addr constant [23 x i8] c"3: -,-,1  0,-,1  0,-,1\00", align 1
@.str.59 = private unnamed_addr constant [23 x i8] c"3: 0,-,1  0,-,1  -,-,1\00", align 1
@.str.60 = private unnamed_addr constant [23 x i8] c"3: -,1,-  0,-,1  -,1,-\00", align 1
@.str.61 = private unnamed_addr constant [23 x i8] c"3: -,1,-  0,-,1  0,-,-\00", align 1
@.str.62 = private unnamed_addr constant [23 x i8] c"3: 0,-,-  0,-,1  -,1,-\00", align 1
@.str.63 = private unnamed_addr constant [23 x i8] c"3: 0,-,-  0,-,1  0,-,-\00", align 1
@.str.64 = private unnamed_addr constant [23 x i8] c"3: 0,-,1  0,-,1  0,-,-\00", align 1
@.str.65 = private unnamed_addr constant [23 x i8] c"3: 0,-,-  0,-,1  0,-,1\00", align 1
@.str.66 = private unnamed_addr constant [23 x i8] c"3: -,1,-  0,-,1  0,0,-\00", align 1
@.str.67 = private unnamed_addr constant [23 x i8] c"3: -,1,-  0,-,1  0,1,-\00", align 1
@.str.68 = private unnamed_addr constant [23 x i8] c"3: 0,1,-  0,-,1  -,1,-\00", align 1
@.str.69 = private unnamed_addr constant [23 x i8] c"3: -,-,1  0,-,-  -,0,-\00", align 1
@.str.70 = private unnamed_addr constant [23 x i8] c"3: -,1,-  -,-,1  0,-,-\00", align 1
@.str.71 = private unnamed_addr constant [23 x i8] c"3: -,1,1  0,-,1  0,0,-\00", align 1
@.str.72 = private unnamed_addr constant [23 x i8] c"3: 0,-,1  0,-,1  0,-,1\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"1:1\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.75 = private unnamed_addr constant [40 x i8] c"%s:%.20g.%.20g #%.20g => Changed %.20g\0A\00", align 1
@.str.76 = private unnamed_addr constant [19 x i8] c"%s:%.20g.%.20g -> \00", align 1
@.str.77 = private unnamed_addr constant [13 x i8] c"%s:%.20g -> \00", align 1
@.str.78 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.79 = private unnamed_addr constant [43 x i8] c"%s%s%s:%.20g.%.20g #%.20g => Changed %.20g\00", align 1
@.str.80 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.81 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.82 = private unnamed_addr constant [15 x i8] c"   Total %.20g\00", align 1
@.str.83 = private unnamed_addr constant [36 x i8] c"\0A%s: Difference with original image\00", align 1
@.str.84 = private unnamed_addr constant [36 x i8] c"\0A%s: Difference of Dilate and Erode\00", align 1
@.str.85 = private unnamed_addr constant [14 x i8] c" (re-iterate)\00", align 1
@.str.86 = private unnamed_addr constant [8 x i8] c" (done)\00", align 1
@.str.87 = private unnamed_addr constant [20 x i8] c" (save for compose)\00", align 1
@.str.88 = private unnamed_addr constant [16 x i8] c" (compose \22%s\22)\00", align 1
@.str.89 = private unnamed_addr constant [14 x i8] c"convolve:bias\00", align 1
@.str.90 = private unnamed_addr constant [15 x i8] c"convolve:scale\00", align 1
@.str.91 = private unnamed_addr constant [11 x i8] c"showkernel\00", align 1
@.str.92 = private unnamed_addr constant [20 x i8] c"convolve:showkernel\00", align 1
@.str.93 = private unnamed_addr constant [22 x i8] c"morphology:showkernel\00", align 1
@.str.94 = private unnamed_addr constant [19 x i8] c"morphology:compose\00", align 1
@.str.95 = private unnamed_addr constant [7 x i8] c"Kernel\00", align 1
@.str.96 = private unnamed_addr constant [6 x i8] c" #%lu\00", align 1
@.str.97 = private unnamed_addr constant [5 x i8] c" \22%s\00", align 1
@.str.98 = private unnamed_addr constant [5 x i8] c"@%lg\00", align 1
@.str.99 = private unnamed_addr constant [26 x i8] c"\22 of size %lux%lu%+ld%+ld\00", align 1
@.str.100 = private unnamed_addr constant [34 x i8] c" with values from %.*lg to %.*lg\0A\00", align 1
@.str.101 = private unnamed_addr constant [43 x i8] c"Forming a output range from %.*lg to %.*lg\00", align 1
@.str.102 = private unnamed_addr constant [17 x i8] c" (Zero-Summing)\0A\00", align 1
@.str.103 = private unnamed_addr constant [15 x i8] c" (Normalized)\0A\00", align 1
@.str.104 = private unnamed_addr constant [14 x i8] c" (Sum %.*lg)\0A\00", align 1
@.str.105 = private unnamed_addr constant [6 x i8] c"%2lu:\00", align 1
@.str.106 = private unnamed_addr constant [5 x i8] c" %*s\00", align 1
@.str.107 = private unnamed_addr constant [4 x i8] c"nan\00", align 1
@.str.108 = private unnamed_addr constant [8 x i8] c" %*.*lg\00", align 1
@.str.109 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.110 = private unnamed_addr constant [17 x i8] c"Morphology/Image\00", align 1
@.str.111 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.112 = private unnamed_addr constant [20 x i8] c"magick/morphology.c\00", align 1
@.str.113 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.114 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.115 = private unnamed_addr constant [46 x i8] c"Unable to rotate non-3x3 kernel by 45 degrees\00", align 1
@.str.116 = private unnamed_addr constant [60 x i8] c"Unable to rotate a non-square, non-linear kernel 90 degrees\00", align 1
@reltable.AcquireKernelBuiltIn = private unnamed_addr constant [4 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.27 to i64), i64 ptrtoint (ptr @reltable.AcquireKernelBuiltIn to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.28 to i64), i64 ptrtoint (ptr @reltable.AcquireKernelBuiltIn to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.29 to i64), i64 ptrtoint (ptr @reltable.AcquireKernelBuiltIn to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.30 to i64), i64 ptrtoint (ptr @reltable.AcquireKernelBuiltIn to i64)) to i32)], align 4
@reltable.AcquireKernelBuiltIn.118 = private unnamed_addr constant [5 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.32 to i64), i64 ptrtoint (ptr @reltable.AcquireKernelBuiltIn.118 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.33 to i64), i64 ptrtoint (ptr @reltable.AcquireKernelBuiltIn.118 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.34 to i64), i64 ptrtoint (ptr @reltable.AcquireKernelBuiltIn.118 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.35 to i64), i64 ptrtoint (ptr @reltable.AcquireKernelBuiltIn.118 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.36 to i64), i64 ptrtoint (ptr @reltable.AcquireKernelBuiltIn.118 to i64)) to i32)], align 4

; Function Attrs: nounwind uwtable
define dso_local ptr @AcquireKernelInfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [4096 x i8], align 16
  %3 = alloca ptr, align 8
  %4 = alloca %struct._GeometryInfo, align 8
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #19
  %6 = icmp eq ptr %0, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 1
  %9 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 1
  %10 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 1
  %11 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 1
  %12 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 1
  %13 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 2
  %14 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 3
  %15 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 2
  %16 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 1
  br label %26

17:                                               ; preds = %1
  %18 = tail call float @sqrtf(float noundef -1.000000e+00) #5
  %19 = tail call dereferenceable_or_null(104) ptr @AcquireMagickMemory(i64 noundef 104) #20
  %20 = icmp eq ptr %19, null
  br i1 %20, label %175, label %21

21:                                               ; preds = %17
  %22 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %19, i32 noundef 0, i64 noundef 104) #19
  %23 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %23, i8 0, i64 40, i1 false)
  store i32 36, ptr %19, align 8, !tbaa !34
  %24 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 11
  store ptr null, ptr %24, align 8, !tbaa !42
  %25 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 12
  store i64 2880220587, ptr %25, align 8, !tbaa !43
  br label %175

26:                                               ; preds = %170, %7
  %27 = phi ptr [ %171, %170 ], [ null, %7 ]
  %28 = phi ptr [ %174, %170 ], [ %0, %7 ]
  call void @GetMagickToken(ptr noundef nonnull %28, ptr noundef null, ptr noundef nonnull %5) #19
  %29 = load i8, ptr %5, align 16, !tbaa !44
  switch i8 %29, label %30 [
    i8 0, label %175
    i8 59, label %170
  ]

30:                                               ; preds = %26
  %31 = tail call ptr @__ctype_b_loc() #21
  %32 = load ptr, ptr %31, align 8, !tbaa !45
  %33 = zext i8 %29 to i64
  %34 = getelementptr inbounds i16, ptr %32, i64 %33
  %35 = load i16, ptr %34, align 2, !tbaa !46
  %36 = and i16 %35, 1024
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %153, label %38

38:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #19
  call void @GetMagickToken(ptr noundef nonnull %28, ptr noundef nonnull %3, ptr noundef nonnull %2) #19
  %39 = call i64 @ParseCommandOption(i32 noundef 34, i32 noundef 0, ptr noundef nonnull %2) #19
  %40 = icmp slt i64 %39, 0
  %41 = icmp eq i64 %39, 36
  %42 = or i1 %40, %41
  br i1 %42, label %151, label %43

43:                                               ; preds = %38, %55
  %44 = load ptr, ptr %31, align 8, !tbaa !45
  %45 = load ptr, ptr %3, align 8, !tbaa !45
  %46 = load i8, ptr %45, align 1, !tbaa !44
  %47 = zext i8 %46 to i64
  %48 = getelementptr inbounds i16, ptr %44, i64 %47
  %49 = load i16, ptr %48, align 2, !tbaa !46
  %50 = freeze i16 %49
  %51 = and i16 %50, 8192
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  switch i8 %46, label %57 [
    i8 44, label %55
    i8 58, label %55
  ]

54:                                               ; preds = %43
  switch i8 %46, label %55 [
    i8 0, label %57
    i8 59, label %57
  ]

55:                                               ; preds = %53, %53, %54
  %56 = getelementptr inbounds i8, ptr %45, i64 1
  store ptr %56, ptr %3, align 8, !tbaa !45
  br label %43, !llvm.loop !48

57:                                               ; preds = %53, %54, %54
  %58 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %45, i32 noundef 59) #22
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %45)
  %62 = getelementptr inbounds i8, ptr %45, i64 %61
  br label %63

63:                                               ; preds = %60, %57
  %64 = phi ptr [ %62, %60 ], [ %58, %57 ]
  %65 = ptrtoint ptr %64 to i64
  %66 = ptrtoint ptr %45 to i64
  %67 = sub i64 %65, %66
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %2, ptr nonnull align 1 %45, i64 %67, i1 false)
  %68 = getelementptr inbounds [4096 x i8], ptr %2, i64 0, i64 %67
  store i8 0, ptr %68, align 1, !tbaa !44
  call void @SetGeometryInfo(ptr noundef nonnull %4) #19
  %69 = call i32 @ParseGeometry(ptr noundef nonnull %2, ptr noundef nonnull %4) #19
  switch i64 %39, label %131 [
    i64 1, label %70
    i64 15, label %74
    i64 14, label %74
    i64 17, label %74
    i64 18, label %74
    i64 19, label %74
    i64 20, label %74
    i64 21, label %78
    i64 16, label %82
    i64 32, label %114
    i64 33, label %114
    i64 34, label %114
    i64 35, label %114
  ]

70:                                               ; preds = %63
  %71 = and i32 %69, 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %131

73:                                               ; preds = %70
  store double 1.000000e+00, ptr %4, align 8, !tbaa !51
  br label %131

74:                                               ; preds = %63, %63, %63, %63, %63, %63
  %75 = and i32 %69, 8
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %131

77:                                               ; preds = %74
  store double 1.000000e+00, ptr %16, align 8, !tbaa !53
  br label %131

78:                                               ; preds = %63
  %79 = and i32 %69, 1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %131

81:                                               ; preds = %78
  store double 1.000000e+00, ptr %15, align 8, !tbaa !54
  br label %131

82:                                               ; preds = %63
  %83 = and i32 %69, 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = load double, ptr %11, align 8, !tbaa !53
  store double %86, ptr %4, align 8, !tbaa !51
  br label %87

87:                                               ; preds = %85, %82
  %88 = load double, ptr %4, align 8, !tbaa !51
  %89 = fcmp olt double %88, 1.000000e+00
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  store double 3.000000e+00, ptr %4, align 8, !tbaa !51
  br label %91

91:                                               ; preds = %90, %87
  %92 = load double, ptr %12, align 8, !tbaa !53
  %93 = fcmp olt double %92, 1.000000e+00
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = load double, ptr %4, align 8, !tbaa !51
  store double %95, ptr %12, align 8, !tbaa !53
  br label %96

96:                                               ; preds = %94, %91
  %97 = and i32 %69, 1
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = load double, ptr %4, align 8, !tbaa !51
  %101 = fptosi double %100 to i64
  %102 = add nsw i64 %101, -1
  %103 = sdiv i64 %102, 2
  %104 = sitofp i64 %103 to double
  store double %104, ptr %13, align 8, !tbaa !54
  br label %105

105:                                              ; preds = %99, %96
  %106 = and i32 %69, 2
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %131

108:                                              ; preds = %105
  %109 = load double, ptr %12, align 8, !tbaa !53
  %110 = fptosi double %109 to i64
  %111 = add nsw i64 %110, -1
  %112 = sdiv i64 %111, 2
  %113 = sitofp i64 %112 to double
  store double %113, ptr %14, align 8, !tbaa !55
  br label %131

114:                                              ; preds = %63, %63, %63, %63
  %115 = and i32 %69, 8
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  store double 1.000000e+02, ptr %10, align 8, !tbaa !53
  br label %131

118:                                              ; preds = %114
  %119 = and i32 %69, 8192
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %118
  %122 = load double, ptr %8, align 8, !tbaa !53
  %123 = fadd double %122, 1.000000e+00
  %124 = fdiv double 6.553500e+04, %123
  store double %124, ptr %8, align 8, !tbaa !53
  br label %131

125:                                              ; preds = %118
  %126 = and i32 %69, 4096
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %125
  %129 = load double, ptr %9, align 8, !tbaa !53
  %130 = fmul double %129, 6.553500e+02
  store double %130, ptr %9, align 8, !tbaa !53
  br label %131

131:                                              ; preds = %128, %125, %121, %117, %108, %105, %81, %78, %77, %74, %73, %70, %63
  %132 = trunc i64 %39 to i32
  %133 = call ptr @AcquireKernelBuiltIn(i32 noundef %132, ptr noundef nonnull %4)
  %134 = icmp eq ptr %133, null
  br i1 %134, label %151, label %135

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.KernelInfo, ptr %133, i64 0, i32 11
  %137 = load ptr, ptr %136, align 8, !tbaa !42
  %138 = icmp eq ptr %137, null
  br i1 %138, label %139, label %151

139:                                              ; preds = %135
  %140 = and i32 %69, 131072
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %139
  call fastcc void @ExpandRotateKernelInfo(ptr noundef nonnull %133, double noundef 4.500000e+01)
  br label %151

143:                                              ; preds = %139
  %144 = and i32 %69, 32768
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %143
  call fastcc void @ExpandRotateKernelInfo(ptr noundef nonnull %133, double noundef 9.000000e+01)
  br label %151

147:                                              ; preds = %143
  %148 = and i32 %69, 16384
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %147
  call fastcc void @ExpandMirrorKernelInfo(ptr noundef nonnull %133)
  br label %151

151:                                              ; preds = %38, %131, %135, %142, %146, %147, %150
  %152 = phi ptr [ null, %38 ], [ null, %131 ], [ %133, %142 ], [ %133, %147 ], [ %133, %150 ], [ %133, %146 ], [ %133, %135 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %2) #19
  br label %155

153:                                              ; preds = %30
  %154 = call fastcc ptr @ParseKernelArray(ptr noundef nonnull %28)
  br label %155

155:                                              ; preds = %153, %151
  %156 = phi ptr [ %152, %151 ], [ %154, %153 ]
  %157 = icmp eq ptr %156, null
  %158 = icmp eq ptr %27, null
  br i1 %157, label %159, label %162

159:                                              ; preds = %155
  br i1 %158, label %175, label %160

160:                                              ; preds = %159
  %161 = call ptr @DestroyKernelInfo(ptr noundef nonnull %27)
  br label %175

162:                                              ; preds = %155
  br i1 %158, label %170, label %163

163:                                              ; preds = %162, %163
  %164 = phi ptr [ %166, %163 ], [ %27, %162 ]
  %165 = getelementptr inbounds %struct.KernelInfo, ptr %164, i64 0, i32 11
  %166 = load ptr, ptr %165, align 8, !tbaa !42
  %167 = icmp eq ptr %166, null
  br i1 %167, label %168, label %163, !llvm.loop !56

168:                                              ; preds = %163
  %169 = getelementptr inbounds %struct.KernelInfo, ptr %164, i64 0, i32 11
  store ptr %156, ptr %169, align 8, !tbaa !42
  br label %170

170:                                              ; preds = %162, %26, %168
  %171 = phi ptr [ %27, %168 ], [ %27, %26 ], [ %156, %162 ]
  %172 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %28, i32 noundef 59) #22
  %173 = icmp eq ptr %172, null
  %174 = getelementptr inbounds i8, ptr %172, i64 1
  br i1 %173, label %175, label %26, !llvm.loop !57

175:                                              ; preds = %170, %26, %21, %17, %159, %160
  %176 = phi ptr [ null, %160 ], [ null, %159 ], [ null, %17 ], [ %19, %21 ], [ %171, %170 ], [ %27, %26 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #19
  ret ptr %176
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @ParseKernelArray(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [4096 x i8], align 16
  %3 = alloca ptr, align 8
  %4 = alloca %struct._GeometryInfo, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %5 = tail call double @sqrt(double noundef -1.000000e+00) #19
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #19
  %6 = tail call dereferenceable_or_null(104) ptr @AcquireMagickMemory(i64 noundef 104) #20
  %7 = icmp eq ptr %6, null
  br i1 %7, label %239, label %8

8:                                                ; preds = %1
  %9 = tail call ptr @ResetMagickMemory(ptr noundef %6, i32 noundef 0, i64 noundef 104) #19
  %10 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 7
  %11 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 6
  %12 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 9
  %13 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %11, i8 0, i64 40, i1 false)
  store i32 36, ptr %6, align 8, !tbaa !34
  %14 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 11
  store ptr null, ptr %14, align 8, !tbaa !42
  %15 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 12
  store i64 2880220587, ptr %15, align 8, !tbaa !43
  %16 = icmp eq ptr %0, null
  br i1 %16, label %239, label %17

17:                                               ; preds = %8
  %18 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 59) #22
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0)
  %22 = getelementptr inbounds i8, ptr %0, i64 %21
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi ptr [ %22, %20 ], [ %18, %17 ]
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 58) #22
  store ptr %25, ptr %3, align 8, !tbaa !45
  %26 = icmp ne ptr %25, null
  %27 = icmp ult ptr %25, %24
  %28 = select i1 %26, i1 %27, i1 false
  br i1 %28, label %31, label %29

29:                                               ; preds = %23
  %30 = tail call ptr @__ctype_b_loc() #21
  br label %97

31:                                               ; preds = %23
  %32 = ptrtoint ptr %25 to i64
  %33 = ptrtoint ptr %0 to i64
  %34 = sub i64 %32, %33
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %2, ptr nonnull align 1 %0, i64 %34, i1 false)
  %35 = getelementptr inbounds [4096 x i8], ptr %2, i64 0, i64 %34
  store i8 0, ptr %35, align 1, !tbaa !44
  call void @SetGeometryInfo(ptr noundef nonnull %4) #19
  %36 = call i32 @ParseGeometry(ptr noundef nonnull %2, ptr noundef nonnull %4) #19
  %37 = and i32 %36, 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 1
  %41 = load double, ptr %40, align 8, !tbaa !53
  store double %41, ptr %4, align 8, !tbaa !51
  br label %42

42:                                               ; preds = %39, %31
  %43 = load double, ptr %4, align 8, !tbaa !51
  %44 = fcmp olt double %43, 1.000000e+00
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store double 1.000000e+00, ptr %4, align 8, !tbaa !51
  br label %46

46:                                               ; preds = %45, %42
  %47 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 1
  %48 = load double, ptr %47, align 8, !tbaa !53
  %49 = fcmp olt double %48, 1.000000e+00
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load double, ptr %4, align 8, !tbaa !51
  store double %51, ptr %47, align 8, !tbaa !53
  br label %52

52:                                               ; preds = %50, %46
  %53 = load double, ptr %4, align 8, !tbaa !51
  %54 = fptoui double %53 to i64
  %55 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 1
  store i64 %54, ptr %55, align 8, !tbaa !58
  %56 = load double, ptr %47, align 8, !tbaa !53
  %57 = fptoui double %56 to i64
  %58 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 2
  store i64 %57, ptr %58, align 8, !tbaa !59
  %59 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 2
  %60 = load double, ptr %59, align 8, !tbaa !54
  %61 = fcmp olt double %60, 0.000000e+00
  %62 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 3
  %63 = load double, ptr %62, align 8
  %64 = fcmp olt double %63, 0.000000e+00
  %65 = select i1 %61, i1 true, i1 %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %52
  %67 = call ptr @DestroyKernelInfo(ptr noundef nonnull %6)
  br label %239

68:                                               ; preds = %52
  %69 = and i32 %36, 1
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %68
  %72 = fptosi double %60 to i64
  br label %76

73:                                               ; preds = %68
  %74 = add i64 %54, -1
  %75 = sdiv i64 %74, 2
  br label %76

76:                                               ; preds = %73, %71
  %77 = phi i64 [ %72, %71 ], [ %75, %73 ]
  %78 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 3
  store i64 %77, ptr %78, align 8, !tbaa !60
  %79 = and i32 %36, 2
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %76
  %82 = fptosi double %63 to i64
  br label %86

83:                                               ; preds = %76
  %84 = add i64 %57, -1
  %85 = sdiv i64 %84, 2
  br label %86

86:                                               ; preds = %83, %81
  %87 = phi i64 [ %82, %81 ], [ %85, %83 ]
  %88 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 4
  store i64 %87, ptr %88, align 8, !tbaa !61
  %89 = icmp slt i64 %77, %54
  %90 = icmp slt i64 %87, %57
  %91 = select i1 %89, i1 %90, i1 false
  br i1 %91, label %94, label %92

92:                                               ; preds = %86
  %93 = call ptr @DestroyKernelInfo(ptr noundef nonnull %6)
  br label %239

94:                                               ; preds = %86
  %95 = load ptr, ptr %3, align 8, !tbaa !45
  %96 = getelementptr inbounds i8, ptr %95, i64 1
  store ptr %96, ptr %3, align 8, !tbaa !45
  br label %148

97:                                               ; preds = %97, %29
  %98 = phi ptr [ %108, %97 ], [ %0, %29 ]
  store ptr %98, ptr %3, align 8, !tbaa !45
  %99 = load ptr, ptr %30, align 8, !tbaa !45
  %100 = load i8, ptr %98, align 1, !tbaa !44
  %101 = zext i8 %100 to i64
  %102 = getelementptr inbounds i16, ptr %99, i64 %101
  %103 = load i16, ptr %102, align 2, !tbaa !46
  %104 = and i16 %103, 8192
  %105 = icmp ne i16 %104, 0
  %106 = icmp eq i8 %100, 39
  %107 = or i1 %106, %105
  %108 = getelementptr inbounds i8, ptr %98, i64 1
  br i1 %107, label %97, label %109, !llvm.loop !62

109:                                              ; preds = %97
  %110 = load ptr, ptr %3, align 8, !tbaa !45
  %111 = icmp ult ptr %110, %24
  br i1 %111, label %112, label %126

112:                                              ; preds = %109, %119
  %113 = phi ptr [ %121, %119 ], [ %110, %109 ]
  %114 = phi i64 [ %120, %119 ], [ 0, %109 ]
  call void @GetMagickToken(ptr noundef %113, ptr noundef nonnull %3, ptr noundef nonnull %2) #19
  %115 = load i8, ptr %2, align 16, !tbaa !44
  %116 = icmp eq i8 %115, 44
  br i1 %116, label %117, label %119

117:                                              ; preds = %112
  %118 = load ptr, ptr %3, align 8, !tbaa !45
  call void @GetMagickToken(ptr noundef %118, ptr noundef nonnull %3, ptr noundef nonnull %2) #19
  br label %119

119:                                              ; preds = %112, %117
  %120 = add nuw nsw i64 %114, 1
  %121 = load ptr, ptr %3, align 8, !tbaa !45
  %122 = icmp ult ptr %121, %24
  br i1 %122, label %112, label %123, !llvm.loop !63

123:                                              ; preds = %119
  %124 = sitofp i64 %120 to double
  %125 = fadd double %124, 1.000000e+00
  br label %126

126:                                              ; preds = %123, %109
  %127 = phi double [ 1.000000e+00, %109 ], [ %125, %123 ]
  %128 = call double @sqrt(double noundef %127) #19
  %129 = fptoui double %128 to i64
  %130 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 2
  store i64 %129, ptr %130, align 8, !tbaa !59
  %131 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 1
  store i64 %129, ptr %131, align 8, !tbaa !58
  %132 = add i64 %129, -1
  %133 = sdiv i64 %132, 2
  %134 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 4
  store i64 %133, ptr %134, align 8, !tbaa !61
  %135 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 3
  store i64 %133, ptr %135, align 8, !tbaa !60
  br label %136

136:                                              ; preds = %136, %126
  %137 = phi ptr [ %0, %126 ], [ %147, %136 ]
  store ptr %137, ptr %3, align 8, !tbaa !45
  %138 = load ptr, ptr %30, align 8, !tbaa !45
  %139 = load i8, ptr %137, align 1, !tbaa !44
  %140 = zext i8 %139 to i64
  %141 = getelementptr inbounds i16, ptr %138, i64 %140
  %142 = load i16, ptr %141, align 2, !tbaa !46
  %143 = and i16 %142, 8192
  %144 = icmp ne i16 %143, 0
  %145 = icmp eq i8 %139, 39
  %146 = or i1 %145, %144
  %147 = getelementptr inbounds i8, ptr %137, i64 1
  br i1 %146, label %136, label %148, !llvm.loop !64

148:                                              ; preds = %136, %94
  %149 = phi i32 [ %36, %94 ], [ 0, %136 ]
  %150 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 1
  %151 = load i64, ptr %150, align 8, !tbaa !58
  %152 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 2
  %153 = load i64, ptr %152, align 8, !tbaa !59
  %154 = shl i64 %153, 3
  %155 = call ptr @AcquireAlignedMemory(i64 noundef %151, i64 noundef %154) #23
  %156 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 5
  store ptr %155, ptr %156, align 8, !tbaa !65
  %157 = icmp eq ptr %155, null
  br i1 %157, label %158, label %160

158:                                              ; preds = %148
  %159 = call ptr @DestroyKernelInfo(ptr noundef nonnull %6)
  br label %239

160:                                              ; preds = %148
  store double 0x7FEFFFFFFFFFFFFF, ptr %11, align 8, !tbaa !66
  store double 0xFFEFFFFFFFFFFFFF, ptr %10, align 8, !tbaa !67
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  %161 = load i64, ptr %150, align 8, !tbaa !58
  %162 = load i64, ptr %152, align 8, !tbaa !59
  %163 = mul i64 %162, %161
  %164 = icmp sgt i64 %163, 0
  %165 = load ptr, ptr %3, align 8
  %166 = icmp ult ptr %165, %24
  %167 = select i1 %164, i1 %166, i1 false
  br i1 %167, label %168, label %209

168:                                              ; preds = %160, %200
  %169 = phi ptr [ %206, %200 ], [ %165, %160 ]
  %170 = phi i64 [ %201, %200 ], [ 0, %160 ]
  call void @GetMagickToken(ptr noundef %169, ptr noundef nonnull %3, ptr noundef nonnull %2) #19
  %171 = load i8, ptr %2, align 16, !tbaa !44
  %172 = icmp eq i8 %171, 44
  br i1 %172, label %173, label %175

173:                                              ; preds = %168
  %174 = load ptr, ptr %3, align 8, !tbaa !45
  call void @GetMagickToken(ptr noundef %174, ptr noundef nonnull %3, ptr noundef nonnull %2) #19
  br label %175

175:                                              ; preds = %173, %168
  %176 = call i32 @LocaleCompare(ptr noundef nonnull @.str.107, ptr noundef nonnull %2) #19
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %181, label %178

178:                                              ; preds = %175
  %179 = call i32 @LocaleCompare(ptr noundef nonnull @.str.109, ptr noundef nonnull %2) #19
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %178, %175
  %182 = load ptr, ptr %156, align 8, !tbaa !65
  %183 = getelementptr inbounds double, ptr %182, i64 %170
  store double %5, ptr %183, align 8, !tbaa !68
  br label %200

184:                                              ; preds = %178
  %185 = call double @InterpretLocaleValue(ptr noundef nonnull %2, ptr noundef null) #19
  %186 = load ptr, ptr %156, align 8, !tbaa !65
  %187 = getelementptr inbounds double, ptr %186, i64 %170
  store double %185, ptr %187, align 8, !tbaa !68
  %188 = fcmp olt double %185, 0.000000e+00
  %189 = select i1 %188, ptr %13, ptr %12
  %190 = load double, ptr %189, align 8, !tbaa !68
  %191 = fadd double %185, %190
  store double %191, ptr %189, align 8, !tbaa !68
  %192 = load double, ptr %11, align 8, !tbaa !66
  %193 = load double, ptr %187, align 8, !tbaa !68
  %194 = fcmp olt double %192, %193
  %195 = select i1 %194, double %192, double %193
  store double %195, ptr %11, align 8, !tbaa !66
  %196 = load double, ptr %10, align 8, !tbaa !67
  %197 = load double, ptr %187, align 8, !tbaa !68
  %198 = fcmp ogt double %196, %197
  %199 = select i1 %198, double %196, double %197
  store double %199, ptr %10, align 8, !tbaa !67
  br label %200

200:                                              ; preds = %181, %184
  %201 = add nuw nsw i64 %170, 1
  %202 = load i64, ptr %150, align 8, !tbaa !58
  %203 = load i64, ptr %152, align 8, !tbaa !59
  %204 = mul i64 %203, %202
  %205 = icmp slt i64 %201, %204
  %206 = load ptr, ptr %3, align 8
  %207 = icmp ult ptr %206, %24
  %208 = select i1 %205, i1 %207, i1 false
  br i1 %208, label %168, label %209, !llvm.loop !69

209:                                              ; preds = %200, %160
  %210 = phi i64 [ 0, %160 ], [ %201, %200 ]
  %211 = phi ptr [ %165, %160 ], [ %206, %200 ]
  call void @GetMagickToken(ptr noundef %211, ptr noundef nonnull %3, ptr noundef nonnull %2) #19
  %212 = load i8, ptr %2, align 16
  switch i8 %212, label %213 [
    i8 59, label %215
    i8 39, label %215
    i8 0, label %215
  ]

213:                                              ; preds = %209
  %214 = call ptr @DestroyKernelInfo(ptr noundef nonnull %6)
  br label %239

215:                                              ; preds = %209, %209, %209
  %216 = load i64, ptr %150, align 8, !tbaa !58
  %217 = load i64, ptr %152, align 8, !tbaa !59
  %218 = mul i64 %217, %216
  %219 = icmp slt i64 %210, %218
  br i1 %219, label %220, label %222

220:                                              ; preds = %215
  %221 = call ptr @DestroyKernelInfo(ptr noundef nonnull %6)
  br label %239

222:                                              ; preds = %215
  %223 = load double, ptr %11, align 8, !tbaa !66
  %224 = fcmp oeq double %223, 0x7FEFFFFFFFFFFFFF
  br i1 %224, label %225, label %227

225:                                              ; preds = %222
  %226 = call ptr @DestroyKernelInfo(ptr noundef nonnull %6)
  br label %239

227:                                              ; preds = %222
  %228 = and i32 %149, 131072
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %231, label %230

230:                                              ; preds = %227
  call fastcc void @ExpandRotateKernelInfo(ptr noundef nonnull %6, double noundef 4.500000e+01)
  br label %239

231:                                              ; preds = %227
  %232 = and i32 %149, 32768
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %235, label %234

234:                                              ; preds = %231
  call fastcc void @ExpandRotateKernelInfo(ptr noundef nonnull %6, double noundef 9.000000e+01)
  br label %239

235:                                              ; preds = %231
  %236 = and i32 %149, 16384
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %239, label %238

238:                                              ; preds = %235
  call fastcc void @ExpandMirrorKernelInfo(ptr noundef nonnull %6)
  br label %239

239:                                              ; preds = %230, %235, %238, %234, %8, %1, %225, %220, %213, %158, %92, %66
  %240 = phi ptr [ %67, %66 ], [ %93, %92 ], [ %159, %158 ], [ %214, %213 ], [ %221, %220 ], [ %226, %225 ], [ null, %1 ], [ %6, %8 ], [ %6, %234 ], [ %6, %238 ], [ %6, %235 ], [ %6, %230 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %2) #19
  ret ptr %240
}

declare void @GetMagickToken(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @DestroyKernelInfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %3)
  store ptr %6, ptr %2, align 8, !tbaa !42
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !65
  %10 = tail call ptr @RelinquishAlignedMemory(ptr noundef %9) #19
  store ptr %10, ptr %8, align 8, !tbaa !65
  %11 = tail call ptr @RelinquishMagickMemory(ptr noundef %0) #19
  ret ptr %11
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @AcquireKernelBuiltIn(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call double @sqrt(double noundef -1.000000e+00) #19
  %4 = icmp ult i32 %0, 37
  br i1 %4, label %13, label %5

5:                                                ; preds = %13, %2
  %6 = tail call dereferenceable_or_null(104) ptr @AcquireMagickMemory(i64 noundef 104) #20
  %7 = icmp eq ptr %6, null
  br i1 %7, label %1965, label %8

8:                                                ; preds = %5
  %9 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %6, i32 noundef 0, i64 noundef 104) #19
  %10 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %10, i8 0, i64 40, i1 false)
  store i32 %0, ptr %6, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 11
  store ptr null, ptr %11, align 8, !tbaa !42
  %12 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 12
  store i64 2880220587, ptr %12, align 8, !tbaa !43
  br label %18

13:                                               ; preds = %2
  %14 = zext nneg i32 %0 to i64
  %15 = lshr i64 73006071681, %14
  %16 = and i64 %15, 1
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %5, label %18

18:                                               ; preds = %13, %8
  %19 = phi ptr [ %6, %8 ], [ null, %13 ]
  switch i32 %0, label %1959 [
    i32 1, label %20
    i32 2, label %32
    i32 3, label %32
    i32 4, label %32
    i32 5, label %282
    i32 6, label %391
    i32 37, label %482
    i32 7, label %602
    i32 8, label %617
    i32 10, label %622
    i32 11, label %627
    i32 12, label %632
    i32 13, label %637
    i32 9, label %642
    i32 14, label %933
    i32 35, label %1897
    i32 34, label %1826
    i32 17, label %1077
    i32 18, label %1144
    i32 19, label %1217
    i32 20, label %1283
    i32 21, label %1350
    i32 22, label %1350
    i32 23, label %1450
    i32 24, label %1454
    i32 25, label %1458
    i32 26, label %1485
    i32 27, label %1501
    i32 28, label %1517
    i32 29, label %1629
    i32 31, label %1648
    i32 30, label %1673
    i32 32, label %1704
    i32 33, label %1766
    i32 15, label %998
    i32 16, label %1012
  ]

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 1
  store i64 1, ptr %21, align 8, !tbaa !58
  %22 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 2
  store i64 1, ptr %22, align 8, !tbaa !59
  %23 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  %24 = tail call dereferenceable_or_null(8) ptr @AcquireAlignedMemory(i64 noundef 1, i64 noundef 8) #23
  %25 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 5
  store ptr %24, ptr %25, align 8, !tbaa !65
  %26 = icmp eq ptr %24, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = tail call ptr @DestroyKernelInfo(ptr noundef %19)
  br label %1965

29:                                               ; preds = %20
  %30 = load double, ptr %1, align 8, !tbaa !51
  store double %30, ptr %24, align 8, !tbaa !68
  %31 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 7
  store double %30, ptr %31, align 8, !tbaa !67
  br label %1963

32:                                               ; preds = %18, %18, %18
  %33 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %34 = load double, ptr %33, align 8, !tbaa !53
  %35 = tail call double @llvm.fabs.f64(double %34)
  %36 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 2
  %37 = load double, ptr %36, align 8, !tbaa !54
  %38 = tail call double @llvm.fabs.f64(double %37)
  %39 = load double, ptr %1, align 8, !tbaa !51
  %40 = fcmp ult double %39, 1.000000e+00
  %41 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 1
  br i1 %40, label %46, label %42

42:                                               ; preds = %32
  %43 = fptoui double %39 to i64
  %44 = shl i64 %43, 1
  %45 = or disjoint i64 %44, 1
  br label %54

46:                                               ; preds = %32
  %47 = icmp eq i32 %0, 3
  %48 = fcmp ult double %35, %38
  %49 = select i1 %47, i1 %48, i1 false
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  %51 = tail call i64 @GetOptimalKernelWidth2D(double noundef %39, double noundef %35) #19
  br label %54

52:                                               ; preds = %46
  %53 = tail call i64 @GetOptimalKernelWidth2D(double noundef %39, double noundef %38) #19
  br label %54

54:                                               ; preds = %50, %52, %42
  %55 = phi i64 [ %51, %50 ], [ %53, %52 ], [ %45, %42 ]
  store i64 %55, ptr %41, align 8, !tbaa !58
  %56 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 1
  %57 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 2
  store i64 %55, ptr %57, align 8, !tbaa !59
  %58 = add i64 %55, -1
  %59 = sdiv i64 %58, 2
  %60 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 4
  store i64 %59, ptr %60, align 8, !tbaa !61
  %61 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 3
  store i64 %59, ptr %61, align 8, !tbaa !60
  %62 = shl i64 %55, 3
  %63 = tail call ptr @AcquireAlignedMemory(i64 noundef %55, i64 noundef %62) #23
  %64 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 5
  store ptr %63, ptr %64, align 8, !tbaa !65
  %65 = icmp eq ptr %63, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %54
  %67 = tail call ptr @DestroyKernelInfo(ptr noundef %19)
  br label %280

68:                                               ; preds = %54
  %69 = icmp eq i32 %0, 3
  %70 = and i32 %0, -2
  %71 = icmp eq i32 %70, 2
  br i1 %71, label %72, label %127

72:                                               ; preds = %68
  %73 = fcmp ogt double %35, 1.000000e-15
  br i1 %73, label %74, label %114

74:                                               ; preds = %72
  %75 = fmul double %35, 2.000000e+00
  %76 = fmul double %35, %75
  %77 = fdiv double 1.000000e+00, %76
  %78 = fmul double %35, 0x401921FB54442D18
  %79 = fmul double %35, %78
  %80 = fdiv double 1.000000e+00, %79
  %81 = load i64, ptr %60, align 8, !tbaa !61
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %127, label %83

83:                                               ; preds = %74
  %84 = sub nsw i64 0, %81
  br label %85

85:                                               ; preds = %83, %109
  %86 = phi i64 [ %110, %109 ], [ 0, %83 ]
  %87 = phi i64 [ %111, %109 ], [ %84, %83 ]
  %88 = load i64, ptr %61, align 8, !tbaa !60
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %109, label %90

90:                                               ; preds = %85
  %91 = sub nsw i64 0, %88
  %92 = mul nsw i64 %87, %87
  br label %93

93:                                               ; preds = %90, %93
  %94 = phi i64 [ %86, %90 ], [ %106, %93 ]
  %95 = phi i64 [ %91, %90 ], [ %105, %93 ]
  %96 = mul nsw i64 %95, %95
  %97 = add nuw nsw i64 %96, %92
  %98 = sitofp i64 %97 to double
  %99 = fneg double %98
  %100 = fmul double %77, %99
  %101 = tail call double @exp(double noundef %100) #19
  %102 = fmul double %80, %101
  %103 = load ptr, ptr %64, align 8, !tbaa !65
  %104 = getelementptr inbounds double, ptr %103, i64 %94
  store double %102, ptr %104, align 8, !tbaa !68
  %105 = add nsw i64 %95, 1
  %106 = add nsw i64 %94, 1
  %107 = load i64, ptr %61, align 8, !tbaa !60
  %108 = icmp slt i64 %95, %107
  br i1 %108, label %93, label %109, !llvm.loop !70

109:                                              ; preds = %93, %85
  %110 = phi i64 [ %86, %85 ], [ %106, %93 ]
  %111 = add nsw i64 %87, 1
  %112 = load i64, ptr %60, align 8, !tbaa !61
  %113 = icmp slt i64 %87, %112
  br i1 %113, label %85, label %127, !llvm.loop !71

114:                                              ; preds = %72
  %115 = load i64, ptr %56, align 8, !tbaa !58
  %116 = load i64, ptr %57, align 8, !tbaa !59
  %117 = shl i64 %115, 3
  %118 = mul i64 %117, %116
  %119 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %63, i32 noundef 0, i64 noundef %118) #19
  %120 = load ptr, ptr %64, align 8, !tbaa !65
  %121 = load i64, ptr %61, align 8, !tbaa !60
  %122 = load i64, ptr %60, align 8, !tbaa !61
  %123 = load i64, ptr %56, align 8, !tbaa !58
  %124 = mul i64 %123, %122
  %125 = getelementptr double, ptr %120, i64 %121
  %126 = getelementptr double, ptr %125, i64 %124
  store double 1.000000e+00, ptr %126, align 8, !tbaa !68
  br label %127

127:                                              ; preds = %109, %74, %114, %68
  br i1 %69, label %128, label %182

128:                                              ; preds = %127
  %129 = fcmp ogt double %38, 1.000000e-15
  br i1 %129, label %130, label %172

130:                                              ; preds = %128
  %131 = fmul double %38, 2.000000e+00
  %132 = fmul double %38, %131
  %133 = fdiv double 1.000000e+00, %132
  %134 = fmul double %38, 0x401921FB54442D18
  %135 = fmul double %38, %134
  %136 = fdiv double 1.000000e+00, %135
  %137 = load i64, ptr %60, align 8, !tbaa !61
  %138 = icmp slt i64 %137, 0
  br i1 %138, label %182, label %139

139:                                              ; preds = %130
  %140 = sub nsw i64 0, %137
  br label %141

141:                                              ; preds = %139, %167
  %142 = phi i64 [ %168, %167 ], [ 0, %139 ]
  %143 = phi i64 [ %169, %167 ], [ %140, %139 ]
  %144 = load i64, ptr %61, align 8, !tbaa !60
  %145 = icmp slt i64 %144, 0
  br i1 %145, label %167, label %146

146:                                              ; preds = %141
  %147 = sub nsw i64 0, %144
  %148 = mul nsw i64 %143, %143
  br label %149

149:                                              ; preds = %146, %149
  %150 = phi i64 [ %142, %146 ], [ %164, %149 ]
  %151 = phi i64 [ %147, %146 ], [ %163, %149 ]
  %152 = mul nsw i64 %151, %151
  %153 = add nuw nsw i64 %152, %148
  %154 = sitofp i64 %153 to double
  %155 = fneg double %154
  %156 = fmul double %133, %155
  %157 = tail call double @exp(double noundef %156) #19
  %158 = load ptr, ptr %64, align 8, !tbaa !65
  %159 = getelementptr inbounds double, ptr %158, i64 %150
  %160 = load double, ptr %159, align 8, !tbaa !68
  %161 = fneg double %157
  %162 = tail call double @llvm.fmuladd.f64(double %161, double %136, double %160)
  store double %162, ptr %159, align 8, !tbaa !68
  %163 = add nsw i64 %151, 1
  %164 = add nsw i64 %150, 1
  %165 = load i64, ptr %61, align 8, !tbaa !60
  %166 = icmp slt i64 %151, %165
  br i1 %166, label %149, label %167, !llvm.loop !72

167:                                              ; preds = %149, %141
  %168 = phi i64 [ %142, %141 ], [ %164, %149 ]
  %169 = add nsw i64 %143, 1
  %170 = load i64, ptr %60, align 8, !tbaa !61
  %171 = icmp slt i64 %143, %170
  br i1 %171, label %141, label %182, !llvm.loop !73

172:                                              ; preds = %128
  %173 = load ptr, ptr %64, align 8, !tbaa !65
  %174 = load i64, ptr %61, align 8, !tbaa !60
  %175 = load i64, ptr %60, align 8, !tbaa !61
  %176 = load i64, ptr %56, align 8, !tbaa !58
  %177 = mul i64 %176, %175
  %178 = getelementptr double, ptr %173, i64 %174
  %179 = getelementptr double, ptr %178, i64 %177
  %180 = load double, ptr %179, align 8, !tbaa !68
  %181 = fadd double %180, -1.000000e+00
  store double %181, ptr %179, align 8, !tbaa !68
  br label %182

182:                                              ; preds = %167, %130, %172, %127
  %183 = phi double [ %35, %172 ], [ %35, %127 ], [ %38, %130 ], [ %38, %167 ]
  %184 = icmp eq i32 %0, 4
  br i1 %184, label %185, label %245

185:                                              ; preds = %182
  %186 = fcmp ogt double %183, 1.000000e-15
  br i1 %186, label %187, label %231

187:                                              ; preds = %185
  %188 = fmul double %183, 2.000000e+00
  %189 = fmul double %183, %188
  %190 = fdiv double 1.000000e+00, %189
  %191 = fmul double %183, 0x400921FB54442D18
  %192 = fmul double %183, %191
  %193 = fmul double %183, %192
  %194 = fmul double %183, %193
  %195 = fdiv double 1.000000e+00, %194
  %196 = load i64, ptr %60, align 8, !tbaa !61
  %197 = icmp slt i64 %196, 0
  br i1 %197, label %245, label %198

198:                                              ; preds = %187
  %199 = sub nsw i64 0, %196
  br label %200

200:                                              ; preds = %198, %226
  %201 = phi i64 [ %227, %226 ], [ 0, %198 ]
  %202 = phi i64 [ %228, %226 ], [ %199, %198 ]
  %203 = load i64, ptr %61, align 8, !tbaa !60
  %204 = icmp slt i64 %203, 0
  br i1 %204, label %226, label %205

205:                                              ; preds = %200
  %206 = sub nsw i64 0, %203
  %207 = mul nsw i64 %202, %202
  br label %208

208:                                              ; preds = %205, %208
  %209 = phi i64 [ %201, %205 ], [ %223, %208 ]
  %210 = phi i64 [ %206, %205 ], [ %222, %208 ]
  %211 = mul nsw i64 %210, %210
  %212 = add nuw nsw i64 %211, %207
  %213 = sitofp i64 %212 to double
  %214 = fmul double %190, %213
  %215 = fsub double 1.000000e+00, %214
  %216 = fneg double %214
  %217 = tail call double @exp(double noundef %216) #19
  %218 = fmul double %215, %217
  %219 = fmul double %195, %218
  %220 = load ptr, ptr %64, align 8, !tbaa !65
  %221 = getelementptr inbounds double, ptr %220, i64 %209
  store double %219, ptr %221, align 8, !tbaa !68
  %222 = add nsw i64 %210, 1
  %223 = add nsw i64 %209, 1
  %224 = load i64, ptr %61, align 8, !tbaa !60
  %225 = icmp slt i64 %210, %224
  br i1 %225, label %208, label %226, !llvm.loop !74

226:                                              ; preds = %208, %200
  %227 = phi i64 [ %201, %200 ], [ %223, %208 ]
  %228 = add nsw i64 %202, 1
  %229 = load i64, ptr %60, align 8, !tbaa !61
  %230 = icmp slt i64 %202, %229
  br i1 %230, label %200, label %245, !llvm.loop !75

231:                                              ; preds = %185
  %232 = load ptr, ptr %64, align 8, !tbaa !65
  %233 = load i64, ptr %56, align 8, !tbaa !58
  %234 = load i64, ptr %57, align 8, !tbaa !59
  %235 = shl i64 %233, 3
  %236 = mul i64 %235, %234
  %237 = tail call ptr @ResetMagickMemory(ptr noundef %232, i32 noundef 0, i64 noundef %236) #19
  %238 = load ptr, ptr %64, align 8, !tbaa !65
  %239 = load i64, ptr %61, align 8, !tbaa !60
  %240 = load i64, ptr %60, align 8, !tbaa !61
  %241 = load i64, ptr %56, align 8, !tbaa !58
  %242 = mul i64 %241, %240
  %243 = getelementptr double, ptr %238, i64 %239
  %244 = getelementptr double, ptr %243, i64 %242
  store double 1.000000e+00, ptr %244, align 8, !tbaa !68
  br label %245

245:                                              ; preds = %226, %187, %231, %182
  %246 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 7
  %247 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 6
  %248 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 9
  %249 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %247, i8 0, i64 32, i1 false)
  %250 = load i64, ptr %56, align 8, !tbaa !58
  %251 = load i64, ptr %57, align 8, !tbaa !59
  %252 = mul i64 %251, %250
  %253 = icmp eq i64 %252, 0
  br i1 %253, label %279, label %254

254:                                              ; preds = %245
  %255 = load ptr, ptr %64, align 8, !tbaa !65
  br label %256

256:                                              ; preds = %263, %254
  %257 = phi i64 [ 0, %254 ], [ %277, %263 ]
  %258 = getelementptr inbounds double, ptr %255, i64 %257
  %259 = load double, ptr %258, align 8, !tbaa !68
  %260 = tail call double @llvm.fabs.f64(double %259)
  %261 = fcmp olt double %260, 1.000000e-15
  br i1 %261, label %262, label %263

262:                                              ; preds = %256
  store double 0.000000e+00, ptr %258, align 8, !tbaa !68
  br label %263

263:                                              ; preds = %262, %256
  %264 = load double, ptr %258, align 8, !tbaa !68
  %265 = fcmp olt double %264, 0.000000e+00
  %266 = select i1 %265, ptr %249, ptr %248
  %267 = load double, ptr %266, align 8, !tbaa !68
  %268 = fadd double %264, %267
  store double %268, ptr %266, align 8, !tbaa !68
  %269 = load double, ptr %247, align 8, !tbaa !66
  %270 = load double, ptr %258, align 8, !tbaa !68
  %271 = fcmp olt double %269, %270
  %272 = select i1 %271, double %269, double %270
  store double %272, ptr %247, align 8, !tbaa !66
  %273 = load double, ptr %246, align 8, !tbaa !67
  %274 = load double, ptr %258, align 8, !tbaa !68
  %275 = fcmp ogt double %273, %274
  %276 = select i1 %275, double %273, double %274
  store double %276, ptr %246, align 8, !tbaa !67
  %277 = add nuw i64 %257, 1
  %278 = icmp eq i64 %277, %252
  br i1 %278, label %279, label %256, !llvm.loop !76

279:                                              ; preds = %263, %245
  tail call void @ScaleKernelInfo(ptr noundef %19, double noundef 1.000000e+00, i32 noundef 65536)
  br label %280

280:                                              ; preds = %279, %66
  %281 = phi ptr [ %67, %66 ], [ undef, %279 ]
  br i1 %65, label %1965, label %1963

282:                                              ; preds = %18
  %283 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %284 = load double, ptr %283, align 8, !tbaa !53
  %285 = tail call double @llvm.fabs.f64(double %284)
  %286 = load double, ptr %1, align 8, !tbaa !51
  %287 = fcmp ult double %286, 1.000000e+00
  br i1 %287, label %292, label %288

288:                                              ; preds = %282
  %289 = fptoui double %286 to i64
  %290 = shl i64 %289, 1
  %291 = or disjoint i64 %290, 1
  br label %294

292:                                              ; preds = %282
  %293 = tail call i64 @GetOptimalKernelWidth1D(double noundef %286, double noundef %285) #19
  br label %294

294:                                              ; preds = %292, %288
  %295 = phi i64 [ %293, %292 ], [ %291, %288 ]
  %296 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 1
  store i64 %295, ptr %296, align 8, !tbaa !58
  %297 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 2
  store i64 1, ptr %297, align 8, !tbaa !59
  %298 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 1
  %299 = add i64 %295, -1
  %300 = sdiv i64 %299, 2
  %301 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 3
  store i64 %300, ptr %301, align 8, !tbaa !60
  %302 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 4
  store i64 0, ptr %302, align 8, !tbaa !61
  %303 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 9
  %304 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %304, i8 0, i64 16, i1 false)
  %305 = tail call ptr @AcquireAlignedMemory(i64 noundef %295, i64 noundef 8) #23
  %306 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 5
  store ptr %305, ptr %306, align 8, !tbaa !65
  %307 = icmp eq ptr %305, null
  br i1 %307, label %308, label %310

308:                                              ; preds = %294
  %309 = tail call ptr @DestroyKernelInfo(ptr noundef %19)
  br label %389

310:                                              ; preds = %294
  %311 = load i64, ptr %298, align 8, !tbaa !58
  %312 = mul i64 %311, 3
  %313 = add i64 %312, -1
  %314 = sdiv i64 %313, 2
  %315 = load i64, ptr %297, align 8, !tbaa !59
  %316 = shl i64 %311, 3
  %317 = mul i64 %316, %315
  %318 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %305, i32 noundef 0, i64 noundef %317) #19
  %319 = fcmp ogt double %285, 1.000000e-15
  br i1 %319, label %320, label %346

320:                                              ; preds = %310
  %321 = fmul double %285, 3.000000e+00
  %322 = fmul double %321, 2.000000e+00
  %323 = fmul double %321, %322
  %324 = fdiv double 1.000000e+00, %323
  %325 = fmul double %321, 0x40040D931FF62705
  %326 = fdiv double 1.000000e+00, %325
  %327 = icmp ugt i64 %312, -9223372036854775808
  br i1 %327, label %354, label %328

328:                                              ; preds = %320
  %329 = sub nsw i64 0, %314
  %330 = tail call i64 @llvm.abs.i64(i64 %314, i1 true)
  br label %331

331:                                              ; preds = %328, %331
  %332 = phi i64 [ %344, %331 ], [ %329, %328 ]
  %333 = mul nsw i64 %332, %332
  %334 = sitofp i64 %333 to double
  %335 = fneg double %334
  %336 = fmul double %324, %335
  %337 = tail call double @exp(double noundef %336) #19
  %338 = load ptr, ptr %306, align 8, !tbaa !65
  %339 = add nsw i64 %332, %314
  %340 = udiv i64 %339, 3
  %341 = getelementptr inbounds double, ptr %338, i64 %340
  %342 = load double, ptr %341, align 8, !tbaa !68
  %343 = tail call double @llvm.fmuladd.f64(double %337, double %326, double %342)
  store double %343, ptr %341, align 8, !tbaa !68
  %344 = add i64 %332, 1
  %345 = icmp eq i64 %332, %330
  br i1 %345, label %354, label %331, !llvm.loop !77

346:                                              ; preds = %310
  %347 = load ptr, ptr %306, align 8, !tbaa !65
  %348 = load i64, ptr %301, align 8, !tbaa !60
  %349 = load i64, ptr %302, align 8, !tbaa !61
  %350 = load i64, ptr %298, align 8, !tbaa !58
  %351 = mul i64 %350, %349
  %352 = getelementptr double, ptr %347, i64 %348
  %353 = getelementptr double, ptr %352, i64 %351
  store double 1.000000e+00, ptr %353, align 8, !tbaa !68
  br label %354

354:                                              ; preds = %331, %320, %346
  %355 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 7
  %356 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %356, i8 0, i64 32, i1 false)
  %357 = load i64, ptr %298, align 8, !tbaa !58
  %358 = load i64, ptr %297, align 8, !tbaa !59
  %359 = mul i64 %358, %357
  %360 = icmp eq i64 %359, 0
  br i1 %360, label %386, label %361

361:                                              ; preds = %354
  %362 = load ptr, ptr %306, align 8, !tbaa !65
  br label %363

363:                                              ; preds = %370, %361
  %364 = phi i64 [ 0, %361 ], [ %384, %370 ]
  %365 = getelementptr inbounds double, ptr %362, i64 %364
  %366 = load double, ptr %365, align 8, !tbaa !68
  %367 = tail call double @llvm.fabs.f64(double %366)
  %368 = fcmp olt double %367, 1.000000e-15
  br i1 %368, label %369, label %370

369:                                              ; preds = %363
  store double 0.000000e+00, ptr %365, align 8, !tbaa !68
  br label %370

370:                                              ; preds = %369, %363
  %371 = load double, ptr %365, align 8, !tbaa !68
  %372 = fcmp olt double %371, 0.000000e+00
  %373 = select i1 %372, ptr %304, ptr %303
  %374 = load double, ptr %373, align 8, !tbaa !68
  %375 = fadd double %371, %374
  store double %375, ptr %373, align 8, !tbaa !68
  %376 = load double, ptr %356, align 8, !tbaa !66
  %377 = load double, ptr %365, align 8, !tbaa !68
  %378 = fcmp olt double %376, %377
  %379 = select i1 %378, double %376, double %377
  store double %379, ptr %356, align 8, !tbaa !66
  %380 = load double, ptr %355, align 8, !tbaa !67
  %381 = load double, ptr %365, align 8, !tbaa !68
  %382 = fcmp ogt double %380, %381
  %383 = select i1 %382, double %380, double %381
  store double %383, ptr %355, align 8, !tbaa !67
  %384 = add nuw i64 %364, 1
  %385 = icmp eq i64 %384, %359
  br i1 %385, label %386, label %363, !llvm.loop !76

386:                                              ; preds = %370, %354
  tail call void @ScaleKernelInfo(ptr noundef %19, double noundef 1.000000e+00, i32 noundef 65536)
  %387 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 2
  %388 = load double, ptr %387, align 8, !tbaa !54
  tail call fastcc void @RotateKernelInfo(ptr noundef %19, double noundef %388)
  br label %389

389:                                              ; preds = %386, %308
  %390 = phi ptr [ %309, %308 ], [ undef, %386 ]
  br i1 %307, label %1965, label %1963

391:                                              ; preds = %18
  %392 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %393 = load double, ptr %392, align 8, !tbaa !53
  %394 = tail call double @llvm.fabs.f64(double %393)
  %395 = load double, ptr %1, align 8, !tbaa !51
  %396 = fcmp olt double %395, 1.000000e+00
  br i1 %396, label %397, label %402

397:                                              ; preds = %391
  %398 = tail call i64 @GetOptimalKernelWidth1D(double noundef %395, double noundef %394) #19
  %399 = add i64 %398, -1
  %400 = lshr i64 %399, 1
  %401 = add nuw i64 %400, 1
  br label %404

402:                                              ; preds = %391
  %403 = fptoui double %395 to i64
  br label %404

404:                                              ; preds = %402, %397
  %405 = phi i64 [ %403, %402 ], [ %401, %397 ]
  %406 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 1
  store i64 %405, ptr %406, align 8, !tbaa !58
  %407 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 4
  %408 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 3
  %409 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %408, i8 0, i64 16, i1 false)
  store i64 1, ptr %409, align 8, !tbaa !59
  %410 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 9
  %411 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 8
  %412 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %411, i8 0, i64 16, i1 false)
  %413 = load i64, ptr %412, align 8, !tbaa !58
  %414 = tail call ptr @AcquireAlignedMemory(i64 noundef %413, i64 noundef 8) #23
  %415 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 5
  store ptr %414, ptr %415, align 8, !tbaa !65
  %416 = icmp eq ptr %414, null
  br i1 %416, label %417, label %419

417:                                              ; preds = %404
  %418 = tail call ptr @DestroyKernelInfo(ptr noundef %19)
  br label %480

419:                                              ; preds = %404
  %420 = fcmp ogt double %394, 1.000000e-15
  %421 = load i64, ptr %412, align 8, !tbaa !58
  br i1 %420, label %422, label %461

422:                                              ; preds = %419
  %423 = shl i64 %421, 3
  %424 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %414, i32 noundef 0, i64 noundef %423) #19
  %425 = fmul double %394, 3.000000e+00
  %426 = fmul double %425, 2.000000e+00
  %427 = fmul double %425, %426
  %428 = fdiv double 1.000000e+00, %427
  %429 = icmp sgt i64 %421, 0
  br i1 %429, label %430, label %433

430:                                              ; preds = %422
  %431 = mul i64 %421, 3
  %432 = tail call i64 @llvm.smax.i64(i64 %431, i64 1)
  br label %439

433:                                              ; preds = %439, %422
  %434 = load i64, ptr %412, align 8, !tbaa !58
  %435 = icmp sgt i64 %434, 0
  br i1 %435, label %436, label %473

436:                                              ; preds = %433
  %437 = load ptr, ptr %415, align 8, !tbaa !65
  %438 = load double, ptr %410, align 8, !tbaa !78
  br label %453

439:                                              ; preds = %430, %439
  %440 = phi i64 [ %451, %439 ], [ 0, %430 ]
  %441 = mul nsw i64 %440, %440
  %442 = sitofp i64 %441 to double
  %443 = fneg double %442
  %444 = fmul double %428, %443
  %445 = tail call double @exp(double noundef %444) #19
  %446 = load ptr, ptr %415, align 8, !tbaa !65
  %447 = udiv i64 %440, 3
  %448 = getelementptr inbounds double, ptr %446, i64 %447
  %449 = load double, ptr %448, align 8, !tbaa !68
  %450 = fadd double %445, %449
  store double %450, ptr %448, align 8, !tbaa !68
  %451 = add nuw nsw i64 %440, 1
  %452 = icmp eq i64 %451, %432
  br i1 %452, label %433, label %439, !llvm.loop !79

453:                                              ; preds = %436, %453
  %454 = phi double [ %438, %436 ], [ %458, %453 ]
  %455 = phi i64 [ 0, %436 ], [ %459, %453 ]
  %456 = getelementptr inbounds double, ptr %437, i64 %455
  %457 = load double, ptr %456, align 8, !tbaa !68
  %458 = fadd double %457, %454
  store double %458, ptr %410, align 8, !tbaa !78
  %459 = add nuw nsw i64 %455, 1
  %460 = icmp eq i64 %459, %434
  br i1 %460, label %473, label %453, !llvm.loop !80

461:                                              ; preds = %419
  %462 = load i64, ptr %409, align 8, !tbaa !59
  %463 = shl i64 %421, 3
  %464 = mul i64 %463, %462
  %465 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %414, i32 noundef 0, i64 noundef %464) #19
  %466 = load ptr, ptr %415, align 8, !tbaa !65
  %467 = load i64, ptr %408, align 8, !tbaa !60
  %468 = load i64, ptr %407, align 8, !tbaa !61
  %469 = load i64, ptr %412, align 8, !tbaa !58
  %470 = mul i64 %469, %468
  %471 = getelementptr double, ptr %466, i64 %467
  %472 = getelementptr double, ptr %471, i64 %470
  store double 1.000000e+00, ptr %472, align 8, !tbaa !68
  store double 1.000000e+00, ptr %410, align 8, !tbaa !78
  br label %473

473:                                              ; preds = %453, %433, %461
  %474 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 6
  store double 0.000000e+00, ptr %474, align 8, !tbaa !66
  %475 = load ptr, ptr %415, align 8, !tbaa !65
  %476 = load double, ptr %475, align 8, !tbaa !68
  %477 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 7
  store double %476, ptr %477, align 8, !tbaa !67
  store double 0.000000e+00, ptr %411, align 8, !tbaa !81
  tail call void @ScaleKernelInfo(ptr noundef %19, double noundef 1.000000e+00, i32 noundef 8192)
  %478 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 2
  %479 = load double, ptr %478, align 8, !tbaa !54
  tail call fastcc void @RotateKernelInfo(ptr noundef %19, double noundef %479)
  br label %480

480:                                              ; preds = %473, %417
  %481 = phi ptr [ %418, %417 ], [ undef, %473 ]
  br i1 %416, label %1965, label %1963

482:                                              ; preds = %18
  %483 = load double, ptr %1, align 8, !tbaa !51
  %484 = fcmp olt double %483, 1.000000e+00
  %485 = fptoui double %483 to i64
  %486 = shl i64 %485, 1
  %487 = or disjoint i64 %486, 1
  %488 = select i1 %484, i64 3, i64 %487
  %489 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 2
  store i64 %488, ptr %489, align 8, !tbaa !59
  %490 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 1
  store i64 %488, ptr %490, align 8, !tbaa !58
  %491 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 1
  %492 = add nsw i64 %488, -1
  %493 = ashr exact i64 %492, 1
  %494 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 4
  store i64 %493, ptr %494, align 8, !tbaa !61
  %495 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 3
  store i64 %493, ptr %495, align 8, !tbaa !60
  %496 = icmp eq i64 %492, 0
  br i1 %496, label %505, label %497

497:                                              ; preds = %482
  %498 = tail call i64 @llvm.umax.i64(i64 %488, i64 3)
  br label %499

499:                                              ; preds = %497, %499
  %500 = phi i64 [ %502, %499 ], [ 1, %497 ]
  %501 = phi i64 [ %503, %499 ], [ 2, %497 ]
  %502 = mul i64 %500, %501
  %503 = add nuw i64 %501, 1
  %504 = icmp eq i64 %503, %498
  br i1 %504, label %505, label %499, !llvm.loop !82

505:                                              ; preds = %499, %482
  %506 = phi i64 [ 1, %482 ], [ %502, %499 ]
  %507 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 2
  %508 = load i64, ptr %507, align 8, !tbaa !59
  %509 = shl i64 %508, 3
  %510 = tail call ptr @AcquireAlignedMemory(i64 noundef %488, i64 noundef %509) #23
  %511 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 5
  store ptr %510, ptr %511, align 8, !tbaa !65
  %512 = icmp eq ptr %510, null
  br i1 %512, label %520, label %513

513:                                              ; preds = %505
  %514 = load i64, ptr %507, align 8, !tbaa !59
  %515 = icmp sgt i64 %514, 0
  br i1 %515, label %516, label %589

516:                                              ; preds = %513
  %517 = load i64, ptr %491, align 8, !tbaa !58
  %518 = icmp sgt i64 %517, 0
  %519 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 9
  br label %522

520:                                              ; preds = %505
  %521 = tail call ptr @DestroyKernelInfo(ptr noundef %19)
  br label %600

522:                                              ; preds = %516, %584
  %523 = phi i64 [ 1, %516 ], [ %587, %584 ]
  %524 = phi i64 [ 0, %516 ], [ %585, %584 ]
  %525 = phi i64 [ 0, %516 ], [ %586, %584 ]
  %526 = icmp ult i64 %525, 2
  br i1 %526, label %533, label %527

527:                                              ; preds = %522, %527
  %528 = phi i64 [ %530, %527 ], [ 1, %522 ]
  %529 = phi i64 [ %531, %527 ], [ 2, %522 ]
  %530 = mul i64 %528, %529
  %531 = add nuw nsw i64 %529, 1
  %532 = icmp eq i64 %531, %523
  br i1 %532, label %533, label %527, !llvm.loop !82

533:                                              ; preds = %527, %522
  %534 = phi i64 [ 1, %522 ], [ %530, %527 ]
  %535 = xor i64 %525, -1
  %536 = add nsw i64 %514, %535
  %537 = icmp ult i64 %536, 2
  br i1 %537, label %544, label %538

538:                                              ; preds = %533, %538
  %539 = phi i64 [ %541, %538 ], [ 1, %533 ]
  %540 = phi i64 [ %542, %538 ], [ 2, %533 ]
  %541 = mul i64 %539, %540
  %542 = add nuw i64 %540, 1
  %543 = icmp ult i64 %540, %536
  br i1 %543, label %538, label %544, !llvm.loop !82

544:                                              ; preds = %538, %533
  %545 = phi i64 [ 1, %533 ], [ %541, %538 ]
  br i1 %518, label %546, label %584

546:                                              ; preds = %544
  %547 = mul i64 %545, %534
  %548 = udiv i64 %506, %547
  %549 = mul i64 %548, %506
  br label %550

550:                                              ; preds = %546, %572
  %551 = phi i64 [ 1, %546 ], [ %582, %572 ]
  %552 = phi i64 [ %524, %546 ], [ %581, %572 ]
  %553 = phi i64 [ 0, %546 ], [ %580, %572 ]
  %554 = icmp ult i64 %553, 2
  br i1 %554, label %561, label %555

555:                                              ; preds = %550, %555
  %556 = phi i64 [ %558, %555 ], [ 1, %550 ]
  %557 = phi i64 [ %559, %555 ], [ 2, %550 ]
  %558 = mul i64 %556, %557
  %559 = add nuw nsw i64 %557, 1
  %560 = icmp eq i64 %559, %551
  br i1 %560, label %561, label %555, !llvm.loop !82

561:                                              ; preds = %555, %550
  %562 = phi i64 [ 1, %550 ], [ %558, %555 ]
  %563 = xor i64 %553, -1
  %564 = add nsw i64 %514, %563
  %565 = icmp ult i64 %564, 2
  br i1 %565, label %572, label %566

566:                                              ; preds = %561, %566
  %567 = phi i64 [ %569, %566 ], [ 1, %561 ]
  %568 = phi i64 [ %570, %566 ], [ 2, %561 ]
  %569 = mul i64 %567, %568
  %570 = add nuw i64 %568, 1
  %571 = icmp ult i64 %568, %564
  br i1 %571, label %566, label %572, !llvm.loop !82

572:                                              ; preds = %566, %561
  %573 = phi i64 [ 1, %561 ], [ %569, %566 ]
  %574 = mul i64 %573, %562
  %575 = udiv i64 %549, %574
  %576 = uitofp i64 %575 to double
  %577 = getelementptr inbounds double, ptr %510, i64 %552
  store double %576, ptr %577, align 8, !tbaa !68
  %578 = load double, ptr %519, align 8, !tbaa !78
  %579 = fadd double %578, %576
  store double %579, ptr %519, align 8, !tbaa !78
  %580 = add nuw nsw i64 %553, 1
  %581 = add nsw i64 %552, 1
  %582 = add nuw i64 %551, 1
  %583 = icmp eq i64 %580, %517
  br i1 %583, label %584, label %550, !llvm.loop !83

584:                                              ; preds = %572, %544
  %585 = phi i64 [ %524, %544 ], [ %581, %572 ]
  %586 = add nuw nsw i64 %525, 1
  %587 = add nuw i64 %523, 1
  %588 = icmp eq i64 %586, %514
  br i1 %588, label %589, label %522, !llvm.loop !84

589:                                              ; preds = %584, %513
  %590 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 6
  store double 1.000000e+00, ptr %590, align 8, !tbaa !66
  %591 = load i64, ptr %495, align 8, !tbaa !60
  %592 = load i64, ptr %494, align 8, !tbaa !61
  %593 = load i64, ptr %491, align 8, !tbaa !58
  %594 = mul i64 %593, %592
  %595 = getelementptr double, ptr %510, i64 %591
  %596 = getelementptr double, ptr %595, i64 %594
  %597 = load double, ptr %596, align 8, !tbaa !68
  %598 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 7
  store double %597, ptr %598, align 8, !tbaa !67
  %599 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 8
  store double 0.000000e+00, ptr %599, align 8, !tbaa !81
  br label %600

600:                                              ; preds = %589, %520
  %601 = phi ptr [ %521, %520 ], [ undef, %589 ]
  br i1 %512, label %1965, label %1963

602:                                              ; preds = %18
  %603 = load double, ptr %1, align 8, !tbaa !51
  %604 = fptosi double %603 to i32
  switch i32 %604, label %612 [
    i32 19, label %611
    i32 1, label %605
    i32 2, label %606
    i32 3, label %607
    i32 5, label %608
    i32 7, label %609
    i32 15, label %610
  ]

605:                                              ; preds = %602
  br label %612

606:                                              ; preds = %602
  br label %612

607:                                              ; preds = %602
  br label %612

608:                                              ; preds = %602
  br label %612

609:                                              ; preds = %602
  br label %612

610:                                              ; preds = %602
  br label %612

611:                                              ; preds = %602
  br label %612

612:                                              ; preds = %602, %611, %610, %609, %608, %607, %606, %605
  %613 = phi ptr [ @.str.7, %611 ], [ @.str.6, %610 ], [ @.str.5, %609 ], [ @.str.4, %608 ], [ @.str.3, %607 ], [ @.str.2, %606 ], [ @.str.1, %605 ], [ @.str, %602 ]
  %614 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull %613)
  %615 = icmp eq ptr %614, null
  br i1 %615, label %1965, label %616

616:                                              ; preds = %612
  store i32 7, ptr %614, align 8, !tbaa !34
  br label %1963

617:                                              ; preds = %18
  %618 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.8)
  %619 = icmp eq ptr %618, null
  br i1 %619, label %1965, label %620

620:                                              ; preds = %617
  store i32 8, ptr %618, align 8, !tbaa !34
  %621 = load double, ptr %1, align 8, !tbaa !51
  tail call fastcc void @RotateKernelInfo(ptr noundef nonnull %618, double noundef %621)
  br label %1963

622:                                              ; preds = %18
  %623 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.9)
  %624 = icmp eq ptr %623, null
  br i1 %624, label %1965, label %625

625:                                              ; preds = %622
  store i32 10, ptr %623, align 8, !tbaa !34
  %626 = load double, ptr %1, align 8, !tbaa !51
  tail call fastcc void @RotateKernelInfo(ptr noundef nonnull %623, double noundef %626)
  br label %1963

627:                                              ; preds = %18
  %628 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.10)
  %629 = icmp eq ptr %628, null
  br i1 %629, label %1965, label %630

630:                                              ; preds = %627
  store i32 11, ptr %628, align 8, !tbaa !34
  %631 = load double, ptr %1, align 8, !tbaa !51
  tail call fastcc void @RotateKernelInfo(ptr noundef nonnull %628, double noundef %631)
  br label %1963

632:                                              ; preds = %18
  %633 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.11)
  %634 = icmp eq ptr %633, null
  br i1 %634, label %1965, label %635

635:                                              ; preds = %632
  store i32 12, ptr %633, align 8, !tbaa !34
  %636 = load double, ptr %1, align 8, !tbaa !51
  tail call fastcc void @RotateKernelInfo(ptr noundef nonnull %633, double noundef %636)
  br label %1963

637:                                              ; preds = %18
  %638 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.12)
  %639 = icmp eq ptr %638, null
  br i1 %639, label %1965, label %640

640:                                              ; preds = %637
  store i32 13, ptr %638, align 8, !tbaa !34
  %641 = load double, ptr %1, align 8, !tbaa !51
  tail call fastcc void @RotateKernelInfo(ptr noundef nonnull %638, double noundef %641)
  br label %1963

642:                                              ; preds = %18
  %643 = load double, ptr %1, align 8, !tbaa !51
  %644 = fptosi double %643 to i32
  switch i32 %644, label %645 [
    i32 19, label %916
    i32 2, label %686
    i32 10, label %730
    i32 1, label %733
    i32 11, label %733
    i32 12, label %775
    i32 13, label %817
    i32 14, label %858
    i32 15, label %900
    i32 16, label %904
    i32 17, label %908
    i32 18, label %912
  ]

645:                                              ; preds = %642
  %646 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.8)
  %647 = icmp eq ptr %646, null
  br i1 %647, label %1965, label %648

648:                                              ; preds = %645
  store i32 9, ptr %646, align 8, !tbaa !34
  %649 = getelementptr inbounds %struct.KernelInfo, ptr %646, i64 0, i32 5
  %650 = load ptr, ptr %649, align 8, !tbaa !65
  %651 = getelementptr inbounds double, ptr %650, i64 3
  store double 0x3FF6A09E667F3BCD, ptr %651, align 8, !tbaa !68
  %652 = getelementptr inbounds double, ptr %650, i64 5
  store double 0xBFF6A09E667F3BCD, ptr %652, align 8, !tbaa !68
  %653 = getelementptr inbounds %struct.KernelInfo, ptr %646, i64 0, i32 7
  %654 = getelementptr inbounds %struct.KernelInfo, ptr %646, i64 0, i32 6
  %655 = getelementptr inbounds %struct.KernelInfo, ptr %646, i64 0, i32 9
  %656 = getelementptr inbounds %struct.KernelInfo, ptr %646, i64 0, i32 8
  %657 = getelementptr inbounds %struct.KernelInfo, ptr %646, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %654, i8 0, i64 32, i1 false)
  %658 = load i64, ptr %657, align 8, !tbaa !58
  %659 = getelementptr inbounds %struct.KernelInfo, ptr %646, i64 0, i32 2
  %660 = load i64, ptr %659, align 8, !tbaa !59
  %661 = mul i64 %660, %658
  %662 = icmp eq i64 %661, 0
  br i1 %662, label %920, label %663

663:                                              ; preds = %648, %670
  %664 = phi i64 [ %684, %670 ], [ 0, %648 ]
  %665 = getelementptr inbounds double, ptr %650, i64 %664
  %666 = load double, ptr %665, align 8, !tbaa !68
  %667 = tail call double @llvm.fabs.f64(double %666)
  %668 = fcmp olt double %667, 1.000000e-15
  br i1 %668, label %669, label %670

669:                                              ; preds = %663
  store double 0.000000e+00, ptr %665, align 8, !tbaa !68
  br label %670

670:                                              ; preds = %669, %663
  %671 = load double, ptr %665, align 8, !tbaa !68
  %672 = fcmp olt double %671, 0.000000e+00
  %673 = select i1 %672, ptr %656, ptr %655
  %674 = load double, ptr %673, align 8, !tbaa !68
  %675 = fadd double %671, %674
  store double %675, ptr %673, align 8, !tbaa !68
  %676 = load double, ptr %654, align 8, !tbaa !66
  %677 = load double, ptr %665, align 8, !tbaa !68
  %678 = fcmp olt double %676, %677
  %679 = select i1 %678, double %676, double %677
  store double %679, ptr %654, align 8, !tbaa !66
  %680 = load double, ptr %653, align 8, !tbaa !67
  %681 = load double, ptr %665, align 8, !tbaa !68
  %682 = fcmp ogt double %680, %681
  %683 = select i1 %682, double %680, double %681
  store double %683, ptr %653, align 8, !tbaa !67
  %684 = add nuw i64 %664, 1
  %685 = icmp eq i64 %684, %661
  br i1 %685, label %920, label %663, !llvm.loop !76

686:                                              ; preds = %642
  %687 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.13)
  %688 = icmp eq ptr %687, null
  br i1 %688, label %1965, label %689

689:                                              ; preds = %686
  store i32 9, ptr %687, align 8, !tbaa !34
  %690 = getelementptr inbounds %struct.KernelInfo, ptr %687, i64 0, i32 5
  %691 = load ptr, ptr %690, align 8, !tbaa !65
  %692 = getelementptr inbounds double, ptr %691, i64 3
  store double 0x3FF6A09E667F3BCD, ptr %692, align 8, !tbaa !68
  %693 = getelementptr inbounds double, ptr %691, i64 1
  store double 0x3FF6A09E667F3BCD, ptr %693, align 8, !tbaa !68
  %694 = getelementptr inbounds double, ptr %691, i64 7
  store double 0xBFF6A09E667F3BCD, ptr %694, align 8, !tbaa !68
  %695 = getelementptr inbounds double, ptr %691, i64 5
  store double 0xBFF6A09E667F3BCD, ptr %695, align 8, !tbaa !68
  %696 = getelementptr inbounds %struct.KernelInfo, ptr %687, i64 0, i32 7
  %697 = getelementptr inbounds %struct.KernelInfo, ptr %687, i64 0, i32 6
  %698 = getelementptr inbounds %struct.KernelInfo, ptr %687, i64 0, i32 9
  %699 = getelementptr inbounds %struct.KernelInfo, ptr %687, i64 0, i32 8
  %700 = getelementptr inbounds %struct.KernelInfo, ptr %687, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %697, i8 0, i64 32, i1 false)
  %701 = load i64, ptr %700, align 8, !tbaa !58
  %702 = getelementptr inbounds %struct.KernelInfo, ptr %687, i64 0, i32 2
  %703 = load i64, ptr %702, align 8, !tbaa !59
  %704 = mul i64 %703, %701
  %705 = icmp eq i64 %704, 0
  br i1 %705, label %729, label %706

706:                                              ; preds = %689, %713
  %707 = phi i64 [ %727, %713 ], [ 0, %689 ]
  %708 = getelementptr inbounds double, ptr %691, i64 %707
  %709 = load double, ptr %708, align 8, !tbaa !68
  %710 = tail call double @llvm.fabs.f64(double %709)
  %711 = fcmp olt double %710, 1.000000e-15
  br i1 %711, label %712, label %713

712:                                              ; preds = %706
  store double 0.000000e+00, ptr %708, align 8, !tbaa !68
  br label %713

713:                                              ; preds = %712, %706
  %714 = load double, ptr %708, align 8, !tbaa !68
  %715 = fcmp olt double %714, 0.000000e+00
  %716 = select i1 %715, ptr %699, ptr %698
  %717 = load double, ptr %716, align 8, !tbaa !68
  %718 = fadd double %714, %717
  store double %718, ptr %716, align 8, !tbaa !68
  %719 = load double, ptr %697, align 8, !tbaa !66
  %720 = load double, ptr %708, align 8, !tbaa !68
  %721 = fcmp olt double %719, %720
  %722 = select i1 %721, double %719, double %720
  store double %722, ptr %697, align 8, !tbaa !66
  %723 = load double, ptr %696, align 8, !tbaa !67
  %724 = load double, ptr %708, align 8, !tbaa !68
  %725 = fcmp ogt double %723, %724
  %726 = select i1 %725, double %723, double %724
  store double %726, ptr %696, align 8, !tbaa !67
  %727 = add nuw i64 %707, 1
  %728 = icmp eq i64 %727, %704
  br i1 %728, label %729, label %706, !llvm.loop !76

729:                                              ; preds = %713, %689
  tail call void @ScaleKernelInfo(ptr noundef nonnull %687, double noundef 0x3FE6A09E667F3BCD, i32 noundef 0)
  br label %920

730:                                              ; preds = %642
  %731 = tail call ptr @AcquireKernelInfo(ptr noundef nonnull @.str.14)
  %732 = icmp eq ptr %731, null
  br i1 %732, label %1965, label %920

733:                                              ; preds = %642, %642
  %734 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.8)
  %735 = icmp eq ptr %734, null
  br i1 %735, label %1965, label %736

736:                                              ; preds = %733
  store i32 9, ptr %734, align 8, !tbaa !34
  %737 = getelementptr inbounds %struct.KernelInfo, ptr %734, i64 0, i32 5
  %738 = load ptr, ptr %737, align 8, !tbaa !65
  %739 = getelementptr inbounds double, ptr %738, i64 3
  store double 0x3FF6A09E667F3BCD, ptr %739, align 8, !tbaa !68
  %740 = getelementptr inbounds double, ptr %738, i64 5
  store double 0xBFF6A09E667F3BCD, ptr %740, align 8, !tbaa !68
  %741 = getelementptr inbounds %struct.KernelInfo, ptr %734, i64 0, i32 7
  %742 = getelementptr inbounds %struct.KernelInfo, ptr %734, i64 0, i32 6
  %743 = getelementptr inbounds %struct.KernelInfo, ptr %734, i64 0, i32 9
  %744 = getelementptr inbounds %struct.KernelInfo, ptr %734, i64 0, i32 8
  %745 = getelementptr inbounds %struct.KernelInfo, ptr %734, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %742, i8 0, i64 32, i1 false)
  %746 = load i64, ptr %745, align 8, !tbaa !58
  %747 = getelementptr inbounds %struct.KernelInfo, ptr %734, i64 0, i32 2
  %748 = load i64, ptr %747, align 8, !tbaa !59
  %749 = mul i64 %748, %746
  %750 = icmp eq i64 %749, 0
  br i1 %750, label %774, label %751

751:                                              ; preds = %736, %758
  %752 = phi i64 [ %772, %758 ], [ 0, %736 ]
  %753 = getelementptr inbounds double, ptr %738, i64 %752
  %754 = load double, ptr %753, align 8, !tbaa !68
  %755 = tail call double @llvm.fabs.f64(double %754)
  %756 = fcmp olt double %755, 1.000000e-15
  br i1 %756, label %757, label %758

757:                                              ; preds = %751
  store double 0.000000e+00, ptr %753, align 8, !tbaa !68
  br label %758

758:                                              ; preds = %757, %751
  %759 = load double, ptr %753, align 8, !tbaa !68
  %760 = fcmp olt double %759, 0.000000e+00
  %761 = select i1 %760, ptr %744, ptr %743
  %762 = load double, ptr %761, align 8, !tbaa !68
  %763 = fadd double %759, %762
  store double %763, ptr %761, align 8, !tbaa !68
  %764 = load double, ptr %742, align 8, !tbaa !66
  %765 = load double, ptr %753, align 8, !tbaa !68
  %766 = fcmp olt double %764, %765
  %767 = select i1 %766, double %764, double %765
  store double %767, ptr %742, align 8, !tbaa !66
  %768 = load double, ptr %741, align 8, !tbaa !67
  %769 = load double, ptr %753, align 8, !tbaa !68
  %770 = fcmp ogt double %768, %769
  %771 = select i1 %770, double %768, double %769
  store double %771, ptr %741, align 8, !tbaa !67
  %772 = add nuw i64 %752, 1
  %773 = icmp eq i64 %772, %749
  br i1 %773, label %774, label %751, !llvm.loop !76

774:                                              ; preds = %758, %736
  tail call void @ScaleKernelInfo(ptr noundef nonnull %734, double noundef 0x3FE6A09E667F3BCD, i32 noundef 0)
  br label %920

775:                                              ; preds = %642
  %776 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.15)
  %777 = icmp eq ptr %776, null
  br i1 %777, label %1965, label %778

778:                                              ; preds = %775
  store i32 9, ptr %776, align 8, !tbaa !34
  %779 = getelementptr inbounds %struct.KernelInfo, ptr %776, i64 0, i32 5
  %780 = load ptr, ptr %779, align 8, !tbaa !65
  %781 = getelementptr inbounds double, ptr %780, i64 1
  store double 0x3FF6A09E667F3BCD, ptr %781, align 8, !tbaa !68
  %782 = getelementptr inbounds double, ptr %780, i64 7
  store double 0x3FF6A09E667F3BCD, ptr %782, align 8, !tbaa !68
  %783 = getelementptr inbounds %struct.KernelInfo, ptr %776, i64 0, i32 7
  %784 = getelementptr inbounds %struct.KernelInfo, ptr %776, i64 0, i32 6
  %785 = getelementptr inbounds %struct.KernelInfo, ptr %776, i64 0, i32 9
  %786 = getelementptr inbounds %struct.KernelInfo, ptr %776, i64 0, i32 8
  %787 = getelementptr inbounds %struct.KernelInfo, ptr %776, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %784, i8 0, i64 32, i1 false)
  %788 = load i64, ptr %787, align 8, !tbaa !58
  %789 = getelementptr inbounds %struct.KernelInfo, ptr %776, i64 0, i32 2
  %790 = load i64, ptr %789, align 8, !tbaa !59
  %791 = mul i64 %790, %788
  %792 = icmp eq i64 %791, 0
  br i1 %792, label %816, label %793

793:                                              ; preds = %778, %800
  %794 = phi i64 [ %814, %800 ], [ 0, %778 ]
  %795 = getelementptr inbounds double, ptr %780, i64 %794
  %796 = load double, ptr %795, align 8, !tbaa !68
  %797 = tail call double @llvm.fabs.f64(double %796)
  %798 = fcmp olt double %797, 1.000000e-15
  br i1 %798, label %799, label %800

799:                                              ; preds = %793
  store double 0.000000e+00, ptr %795, align 8, !tbaa !68
  br label %800

800:                                              ; preds = %799, %793
  %801 = load double, ptr %795, align 8, !tbaa !68
  %802 = fcmp olt double %801, 0.000000e+00
  %803 = select i1 %802, ptr %786, ptr %785
  %804 = load double, ptr %803, align 8, !tbaa !68
  %805 = fadd double %801, %804
  store double %805, ptr %803, align 8, !tbaa !68
  %806 = load double, ptr %784, align 8, !tbaa !66
  %807 = load double, ptr %795, align 8, !tbaa !68
  %808 = fcmp olt double %806, %807
  %809 = select i1 %808, double %806, double %807
  store double %809, ptr %784, align 8, !tbaa !66
  %810 = load double, ptr %783, align 8, !tbaa !67
  %811 = load double, ptr %795, align 8, !tbaa !68
  %812 = fcmp ogt double %810, %811
  %813 = select i1 %812, double %810, double %811
  store double %813, ptr %783, align 8, !tbaa !67
  %814 = add nuw i64 %794, 1
  %815 = icmp eq i64 %814, %791
  br i1 %815, label %816, label %793, !llvm.loop !76

816:                                              ; preds = %800, %778
  tail call void @ScaleKernelInfo(ptr noundef nonnull %776, double noundef 0x3FE6A09E667F3BCD, i32 noundef 0)
  br label %920

817:                                              ; preds = %642
  %818 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.16)
  %819 = icmp eq ptr %818, null
  br i1 %819, label %1965, label %820

820:                                              ; preds = %817
  store i32 9, ptr %818, align 8, !tbaa !34
  %821 = getelementptr inbounds %struct.KernelInfo, ptr %818, i64 0, i32 5
  %822 = load ptr, ptr %821, align 8, !tbaa !65
  store double 0x3FF6A09E667F3BCD, ptr %822, align 8, !tbaa !68
  %823 = getelementptr inbounds double, ptr %822, i64 8
  store double 0xBFF6A09E667F3BCD, ptr %823, align 8, !tbaa !68
  %824 = getelementptr inbounds %struct.KernelInfo, ptr %818, i64 0, i32 7
  %825 = getelementptr inbounds %struct.KernelInfo, ptr %818, i64 0, i32 6
  %826 = getelementptr inbounds %struct.KernelInfo, ptr %818, i64 0, i32 9
  %827 = getelementptr inbounds %struct.KernelInfo, ptr %818, i64 0, i32 8
  %828 = getelementptr inbounds %struct.KernelInfo, ptr %818, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %825, i8 0, i64 32, i1 false)
  %829 = load i64, ptr %828, align 8, !tbaa !58
  %830 = getelementptr inbounds %struct.KernelInfo, ptr %818, i64 0, i32 2
  %831 = load i64, ptr %830, align 8, !tbaa !59
  %832 = mul i64 %831, %829
  %833 = icmp eq i64 %832, 0
  br i1 %833, label %857, label %834

834:                                              ; preds = %820, %841
  %835 = phi i64 [ %855, %841 ], [ 0, %820 ]
  %836 = getelementptr inbounds double, ptr %822, i64 %835
  %837 = load double, ptr %836, align 8, !tbaa !68
  %838 = tail call double @llvm.fabs.f64(double %837)
  %839 = fcmp olt double %838, 1.000000e-15
  br i1 %839, label %840, label %841

840:                                              ; preds = %834
  store double 0.000000e+00, ptr %836, align 8, !tbaa !68
  br label %841

841:                                              ; preds = %840, %834
  %842 = load double, ptr %836, align 8, !tbaa !68
  %843 = fcmp olt double %842, 0.000000e+00
  %844 = select i1 %843, ptr %827, ptr %826
  %845 = load double, ptr %844, align 8, !tbaa !68
  %846 = fadd double %842, %845
  store double %846, ptr %844, align 8, !tbaa !68
  %847 = load double, ptr %825, align 8, !tbaa !66
  %848 = load double, ptr %836, align 8, !tbaa !68
  %849 = fcmp olt double %847, %848
  %850 = select i1 %849, double %847, double %848
  store double %850, ptr %825, align 8, !tbaa !66
  %851 = load double, ptr %824, align 8, !tbaa !67
  %852 = load double, ptr %836, align 8, !tbaa !68
  %853 = fcmp ogt double %851, %852
  %854 = select i1 %853, double %851, double %852
  store double %854, ptr %824, align 8, !tbaa !67
  %855 = add nuw i64 %835, 1
  %856 = icmp eq i64 %855, %832
  br i1 %856, label %857, label %834, !llvm.loop !76

857:                                              ; preds = %841, %820
  tail call void @ScaleKernelInfo(ptr noundef nonnull %818, double noundef 0x3FE6A09E667F3BCD, i32 noundef 0)
  br label %920

858:                                              ; preds = %642
  %859 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.17)
  %860 = icmp eq ptr %859, null
  br i1 %860, label %1965, label %861

861:                                              ; preds = %858
  store i32 9, ptr %859, align 8, !tbaa !34
  %862 = getelementptr inbounds %struct.KernelInfo, ptr %859, i64 0, i32 5
  %863 = load ptr, ptr %862, align 8, !tbaa !65
  %864 = getelementptr inbounds double, ptr %863, i64 2
  store double 0xBFF6A09E667F3BCD, ptr %864, align 8, !tbaa !68
  %865 = getelementptr inbounds double, ptr %863, i64 6
  store double 0x3FF6A09E667F3BCD, ptr %865, align 8, !tbaa !68
  %866 = getelementptr inbounds %struct.KernelInfo, ptr %859, i64 0, i32 7
  %867 = getelementptr inbounds %struct.KernelInfo, ptr %859, i64 0, i32 6
  %868 = getelementptr inbounds %struct.KernelInfo, ptr %859, i64 0, i32 9
  %869 = getelementptr inbounds %struct.KernelInfo, ptr %859, i64 0, i32 8
  %870 = getelementptr inbounds %struct.KernelInfo, ptr %859, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %867, i8 0, i64 32, i1 false)
  %871 = load i64, ptr %870, align 8, !tbaa !58
  %872 = getelementptr inbounds %struct.KernelInfo, ptr %859, i64 0, i32 2
  %873 = load i64, ptr %872, align 8, !tbaa !59
  %874 = mul i64 %873, %871
  %875 = icmp eq i64 %874, 0
  br i1 %875, label %899, label %876

876:                                              ; preds = %861, %883
  %877 = phi i64 [ %897, %883 ], [ 0, %861 ]
  %878 = getelementptr inbounds double, ptr %863, i64 %877
  %879 = load double, ptr %878, align 8, !tbaa !68
  %880 = tail call double @llvm.fabs.f64(double %879)
  %881 = fcmp olt double %880, 1.000000e-15
  br i1 %881, label %882, label %883

882:                                              ; preds = %876
  store double 0.000000e+00, ptr %878, align 8, !tbaa !68
  br label %883

883:                                              ; preds = %882, %876
  %884 = load double, ptr %878, align 8, !tbaa !68
  %885 = fcmp olt double %884, 0.000000e+00
  %886 = select i1 %885, ptr %869, ptr %868
  %887 = load double, ptr %886, align 8, !tbaa !68
  %888 = fadd double %884, %887
  store double %888, ptr %886, align 8, !tbaa !68
  %889 = load double, ptr %867, align 8, !tbaa !66
  %890 = load double, ptr %878, align 8, !tbaa !68
  %891 = fcmp olt double %889, %890
  %892 = select i1 %891, double %889, double %890
  store double %892, ptr %867, align 8, !tbaa !66
  %893 = load double, ptr %866, align 8, !tbaa !67
  %894 = load double, ptr %878, align 8, !tbaa !68
  %895 = fcmp ogt double %893, %894
  %896 = select i1 %895, double %893, double %894
  store double %896, ptr %866, align 8, !tbaa !67
  %897 = add nuw i64 %877, 1
  %898 = icmp eq i64 %897, %874
  br i1 %898, label %899, label %876, !llvm.loop !76

899:                                              ; preds = %883, %861
  tail call void @ScaleKernelInfo(ptr noundef nonnull %859, double noundef 0x3FE6A09E667F3BCD, i32 noundef 0)
  br label %920

900:                                              ; preds = %642
  %901 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.18)
  %902 = icmp eq ptr %901, null
  br i1 %902, label %1965, label %903

903:                                              ; preds = %900
  store i32 9, ptr %901, align 8, !tbaa !34
  tail call void @ScaleKernelInfo(ptr noundef nonnull %901, double noundef 5.000000e-01, i32 noundef 0)
  br label %920

904:                                              ; preds = %642
  %905 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.19)
  %906 = icmp eq ptr %905, null
  br i1 %906, label %1965, label %907

907:                                              ; preds = %904
  store i32 9, ptr %905, align 8, !tbaa !34
  tail call void @ScaleKernelInfo(ptr noundef nonnull %905, double noundef 5.000000e-01, i32 noundef 0)
  br label %920

908:                                              ; preds = %642
  %909 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.20)
  %910 = icmp eq ptr %909, null
  br i1 %910, label %1965, label %911

911:                                              ; preds = %908
  store i32 9, ptr %909, align 8, !tbaa !34
  tail call void @ScaleKernelInfo(ptr noundef nonnull %909, double noundef 0x3FC5555555555555, i32 noundef 0)
  br label %920

912:                                              ; preds = %642
  %913 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.2)
  %914 = icmp eq ptr %913, null
  br i1 %914, label %1965, label %915

915:                                              ; preds = %912
  store i32 9, ptr %913, align 8, !tbaa !34
  tail call void @ScaleKernelInfo(ptr noundef nonnull %913, double noundef 0x3FC5555555555555, i32 noundef 0)
  br label %920

916:                                              ; preds = %642
  %917 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.21)
  %918 = icmp eq ptr %917, null
  br i1 %918, label %1965, label %919

919:                                              ; preds = %916
  store i32 9, ptr %917, align 8, !tbaa !34
  tail call void @ScaleKernelInfo(ptr noundef nonnull %917, double noundef 0x3FD5555555555555, i32 noundef 0)
  br label %920

920:                                              ; preds = %670, %648, %730, %919, %915, %911, %907, %903, %899, %857, %816, %774, %729
  %921 = phi ptr [ %913, %915 ], [ %909, %911 ], [ %905, %907 ], [ %901, %903 ], [ %859, %899 ], [ %818, %857 ], [ %776, %816 ], [ %734, %774 ], [ %731, %730 ], [ %687, %729 ], [ %917, %919 ], [ %646, %648 ], [ %646, %670 ]
  %922 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %923 = load double, ptr %922, align 8, !tbaa !53
  %924 = tail call double @llvm.fabs.f64(double %923)
  %925 = fcmp ult double %924, 1.000000e-15
  br i1 %925, label %927, label %926

926:                                              ; preds = %920
  tail call fastcc void @RotateKernelInfo(ptr noundef nonnull %921, double noundef %923)
  br label %1963

927:                                              ; preds = %920
  %928 = load double, ptr %1, align 8, !tbaa !51
  %929 = fcmp ogt double %928, 3.000000e+01
  %930 = fcmp olt double %928, -3.000000e+01
  %931 = or i1 %929, %930
  br i1 %931, label %932, label %1963

932:                                              ; preds = %927
  tail call fastcc void @RotateKernelInfo(ptr noundef nonnull %921, double noundef %928)
  br label %1963

933:                                              ; preds = %18
  %934 = load double, ptr %1, align 8, !tbaa !51
  %935 = fcmp olt double %934, 1.000000e+00
  %936 = fptoui double %934 to i64
  %937 = shl i64 %936, 1
  %938 = or disjoint i64 %937, 1
  %939 = select i1 %935, i64 3, i64 %938
  %940 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 2
  store i64 %939, ptr %940, align 8, !tbaa !59
  %941 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 1
  store i64 %939, ptr %941, align 8, !tbaa !58
  %942 = add nsw i64 %939, -1
  %943 = ashr exact i64 %942, 1
  %944 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 4
  store i64 %943, ptr %944, align 8, !tbaa !61
  %945 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 3
  store i64 %943, ptr %945, align 8, !tbaa !60
  %946 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 2
  %947 = load i64, ptr %946, align 8, !tbaa !59
  %948 = shl i64 %947, 3
  %949 = tail call ptr @AcquireAlignedMemory(i64 noundef %939, i64 noundef %948) #23
  %950 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 5
  store ptr %949, ptr %950, align 8, !tbaa !65
  %951 = icmp eq ptr %949, null
  br i1 %951, label %952, label %954

952:                                              ; preds = %933
  %953 = tail call ptr @DestroyKernelInfo(ptr noundef %19)
  br label %1965

954:                                              ; preds = %933
  %955 = load i64, ptr %944, align 8, !tbaa !61
  %956 = icmp slt i64 %955, 0
  br i1 %956, label %993, label %957

957:                                              ; preds = %954
  %958 = sub nsw i64 0, %955
  %959 = load i64, ptr %945, align 8, !tbaa !60
  %960 = sub nsw i64 0, %959
  %961 = icmp slt i64 %959, 0
  %962 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %963 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 9
  %964 = shl i64 %959, 1
  %965 = or disjoint i64 %964, 1
  br label %966

966:                                              ; preds = %957, %989
  %967 = phi i64 [ 0, %957 ], [ %990, %989 ]
  %968 = phi i64 [ %958, %957 ], [ %991, %989 ]
  br i1 %961, label %989, label %969

969:                                              ; preds = %966
  %970 = tail call i64 @llvm.abs.i64(i64 %968, i1 true)
  %971 = add i64 %965, %967
  br label %972

972:                                              ; preds = %969, %985
  %973 = phi i64 [ %967, %969 ], [ %987, %985 ]
  %974 = phi i64 [ %960, %969 ], [ %986, %985 ]
  %975 = tail call i64 @llvm.abs.i64(i64 %974, i1 true)
  %976 = add nuw nsw i64 %975, %970
  %977 = icmp sgt i64 %976, %959
  br i1 %977, label %983, label %978

978:                                              ; preds = %972
  %979 = load double, ptr %962, align 8, !tbaa !53
  %980 = getelementptr inbounds double, ptr %949, i64 %973
  store double %979, ptr %980, align 8, !tbaa !68
  %981 = load double, ptr %963, align 8, !tbaa !78
  %982 = fadd double %979, %981
  store double %982, ptr %963, align 8, !tbaa !78
  br label %985

983:                                              ; preds = %972
  %984 = getelementptr inbounds double, ptr %949, i64 %973
  store double %3, ptr %984, align 8, !tbaa !68
  br label %985

985:                                              ; preds = %978, %983
  %986 = add nsw i64 %974, 1
  %987 = add i64 %973, 1
  %988 = icmp eq i64 %987, %971
  br i1 %988, label %989, label %972, !llvm.loop !85

989:                                              ; preds = %985, %966
  %990 = phi i64 [ %967, %966 ], [ %987, %985 ]
  %991 = add i64 %968, 1
  %992 = icmp eq i64 %968, %955
  br i1 %992, label %993, label %966, !llvm.loop !86

993:                                              ; preds = %989, %954
  %994 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %995 = load double, ptr %994, align 8, !tbaa !53
  %996 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 7
  store double %995, ptr %996, align 8, !tbaa !67
  %997 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 6
  store double %995, ptr %997, align 8, !tbaa !66
  br label %1963

998:                                              ; preds = %18
  %999 = load double, ptr %1, align 8, !tbaa !51
  %1000 = fcmp olt double %999, 1.000000e+00
  %1001 = tail call double @llvm.fmuladd.f64(double %999, double 2.000000e+00, double 1.000000e+00)
  %1002 = fptoui double %1001 to i64
  %1003 = select i1 %1000, i64 3, i64 %1002
  %1004 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 2
  store i64 %1003, ptr %1004, align 8, !tbaa !59
  %1005 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 1
  store i64 %1003, ptr %1005, align 8, !tbaa !58
  %1006 = add i64 %1003, -1
  %1007 = sdiv i64 %1006, 2
  %1008 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 4
  store i64 %1007, ptr %1008, align 8, !tbaa !61
  %1009 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 3
  store i64 %1007, ptr %1009, align 8, !tbaa !60
  %1010 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %1011 = load double, ptr %1010, align 8, !tbaa !53
  br label %1046

1012:                                             ; preds = %18
  %1013 = load double, ptr %1, align 8, !tbaa !51
  %1014 = fcmp olt double %1013, 1.000000e+00
  br i1 %1014, label %1019, label %1015

1015:                                             ; preds = %1012
  %1016 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %1017 = load double, ptr %1016, align 8, !tbaa !53
  %1018 = fcmp olt double %1017, 1.000000e+00
  br i1 %1018, label %1019, label %1021

1019:                                             ; preds = %1015, %1012
  %1020 = tail call ptr @DestroyKernelInfo(ptr noundef %19)
  br label %1074

1021:                                             ; preds = %1015
  %1022 = fptoui double %1013 to i64
  %1023 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 1
  store i64 %1022, ptr %1023, align 8, !tbaa !58
  %1024 = fptoui double %1017 to i64
  %1025 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 2
  store i64 %1024, ptr %1025, align 8, !tbaa !59
  %1026 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 2
  %1027 = load double, ptr %1026, align 8, !tbaa !54
  %1028 = fcmp olt double %1027, 0.000000e+00
  %1029 = uitofp i64 %1022 to double
  %1030 = fcmp ogt double %1027, %1029
  %1031 = select i1 %1028, i1 true, i1 %1030
  br i1 %1031, label %1039, label %1032

1032:                                             ; preds = %1021
  %1033 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 3
  %1034 = load double, ptr %1033, align 8, !tbaa !55
  %1035 = fcmp olt double %1034, 0.000000e+00
  %1036 = uitofp i64 %1024 to double
  %1037 = fcmp ogt double %1034, %1036
  %1038 = select i1 %1035, i1 true, i1 %1037
  br i1 %1038, label %1039, label %1041

1039:                                             ; preds = %1032, %1021
  %1040 = tail call ptr @DestroyKernelInfo(ptr noundef %19)
  br label %1074

1041:                                             ; preds = %1032
  %1042 = fptosi double %1027 to i64
  %1043 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 3
  store i64 %1042, ptr %1043, align 8, !tbaa !60
  %1044 = fptosi double %1034 to i64
  %1045 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 4
  store i64 %1044, ptr %1045, align 8, !tbaa !61
  br label %1046

1046:                                             ; preds = %1041, %998
  %1047 = phi double [ %1011, %998 ], [ 1.000000e+00, %1041 ]
  %1048 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 1
  %1049 = load i64, ptr %1048, align 8, !tbaa !58
  %1050 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 2
  %1051 = load i64, ptr %1050, align 8, !tbaa !59
  %1052 = shl i64 %1051, 3
  %1053 = tail call ptr @AcquireAlignedMemory(i64 noundef %1049, i64 noundef %1052) #23
  %1054 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 5
  store ptr %1053, ptr %1054, align 8, !tbaa !65
  %1055 = icmp eq ptr %1053, null
  br i1 %1055, label %1056, label %1058

1056:                                             ; preds = %1046
  %1057 = tail call ptr @DestroyKernelInfo(ptr noundef %19)
  br label %1074

1058:                                             ; preds = %1046
  %1059 = load i64, ptr %1048, align 8, !tbaa !58
  %1060 = load i64, ptr %1050, align 8, !tbaa !59
  %1061 = mul i64 %1060, %1059
  %1062 = icmp sgt i64 %1061, 0
  br i1 %1062, label %1063, label %1068

1063:                                             ; preds = %1058, %1063
  %1064 = phi i64 [ %1066, %1063 ], [ 0, %1058 ]
  %1065 = getelementptr inbounds double, ptr %1053, i64 %1064
  store double %1047, ptr %1065, align 8, !tbaa !68
  %1066 = add nuw nsw i64 %1064, 1
  %1067 = icmp eq i64 %1066, %1061
  br i1 %1067, label %1068, label %1063, !llvm.loop !87

1068:                                             ; preds = %1063, %1058
  %1069 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 7
  store double %1047, ptr %1069, align 8, !tbaa !67
  %1070 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 6
  store double %1047, ptr %1070, align 8, !tbaa !66
  %1071 = sitofp i64 %1061 to double
  %1072 = fmul double %1047, %1071
  %1073 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 9
  store double %1072, ptr %1073, align 8, !tbaa !78
  br label %1074

1074:                                             ; preds = %1068, %1056, %1039, %1019
  %1075 = phi i1 [ false, %1056 ], [ true, %1068 ], [ false, %1019 ], [ false, %1039 ]
  %1076 = phi ptr [ %1057, %1056 ], [ undef, %1068 ], [ %1020, %1019 ], [ %1040, %1039 ]
  br i1 %1075, label %1963, label %1965

1077:                                             ; preds = %18
  %1078 = load double, ptr %1, align 8, !tbaa !51
  %1079 = fcmp olt double %1078, 1.000000e+00
  %1080 = fptoui double %1078 to i64
  %1081 = shl i64 %1080, 1
  %1082 = or disjoint i64 %1081, 1
  %1083 = select i1 %1079, i64 5, i64 %1082
  %1084 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 2
  store i64 %1083, ptr %1084, align 8, !tbaa !59
  %1085 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 1
  store i64 %1083, ptr %1085, align 8, !tbaa !58
  %1086 = add nsw i64 %1083, -1
  %1087 = ashr exact i64 %1086, 1
  %1088 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 4
  store i64 %1087, ptr %1088, align 8, !tbaa !61
  %1089 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 3
  store i64 %1087, ptr %1089, align 8, !tbaa !60
  %1090 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 2
  %1091 = load i64, ptr %1090, align 8, !tbaa !59
  %1092 = shl i64 %1091, 3
  %1093 = tail call ptr @AcquireAlignedMemory(i64 noundef %1083, i64 noundef %1092) #23
  %1094 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 5
  store ptr %1093, ptr %1094, align 8, !tbaa !65
  %1095 = icmp eq ptr %1093, null
  br i1 %1095, label %1096, label %1098

1096:                                             ; preds = %1077
  %1097 = tail call ptr @DestroyKernelInfo(ptr noundef %19)
  br label %1965

1098:                                             ; preds = %1077
  %1099 = load i64, ptr %1088, align 8, !tbaa !61
  %1100 = icmp slt i64 %1099, 0
  br i1 %1100, label %1139, label %1101

1101:                                             ; preds = %1098
  %1102 = sub nsw i64 0, %1099
  %1103 = load i64, ptr %1089, align 8, !tbaa !60
  %1104 = sub nsw i64 0, %1103
  %1105 = icmp slt i64 %1103, 0
  %1106 = sdiv i64 %1103, 2
  %1107 = add nsw i64 %1106, %1103
  %1108 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %1109 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 9
  %1110 = shl i64 %1103, 1
  %1111 = or disjoint i64 %1110, 1
  br label %1112

1112:                                             ; preds = %1101, %1135
  %1113 = phi i64 [ 0, %1101 ], [ %1136, %1135 ]
  %1114 = phi i64 [ %1102, %1101 ], [ %1137, %1135 ]
  br i1 %1105, label %1135, label %1115

1115:                                             ; preds = %1112
  %1116 = tail call i64 @llvm.abs.i64(i64 %1114, i1 true)
  %1117 = add i64 %1111, %1113
  br label %1118

1118:                                             ; preds = %1115, %1131
  %1119 = phi i64 [ %1113, %1115 ], [ %1133, %1131 ]
  %1120 = phi i64 [ %1104, %1115 ], [ %1132, %1131 ]
  %1121 = tail call i64 @llvm.abs.i64(i64 %1120, i1 true)
  %1122 = add nuw nsw i64 %1121, %1116
  %1123 = icmp sgt i64 %1122, %1107
  br i1 %1123, label %1129, label %1124

1124:                                             ; preds = %1118
  %1125 = load double, ptr %1108, align 8, !tbaa !53
  %1126 = getelementptr inbounds double, ptr %1093, i64 %1119
  store double %1125, ptr %1126, align 8, !tbaa !68
  %1127 = load double, ptr %1109, align 8, !tbaa !78
  %1128 = fadd double %1125, %1127
  store double %1128, ptr %1109, align 8, !tbaa !78
  br label %1131

1129:                                             ; preds = %1118
  %1130 = getelementptr inbounds double, ptr %1093, i64 %1119
  store double %3, ptr %1130, align 8, !tbaa !68
  br label %1131

1131:                                             ; preds = %1124, %1129
  %1132 = add nsw i64 %1120, 1
  %1133 = add i64 %1119, 1
  %1134 = icmp eq i64 %1133, %1117
  br i1 %1134, label %1135, label %1118, !llvm.loop !88

1135:                                             ; preds = %1131, %1112
  %1136 = phi i64 [ %1113, %1112 ], [ %1133, %1131 ]
  %1137 = add i64 %1114, 1
  %1138 = icmp eq i64 %1114, %1099
  br i1 %1138, label %1139, label %1112, !llvm.loop !89

1139:                                             ; preds = %1135, %1098
  %1140 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %1141 = load double, ptr %1140, align 8, !tbaa !53
  %1142 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 7
  store double %1141, ptr %1142, align 8, !tbaa !67
  %1143 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 6
  store double %1141, ptr %1143, align 8, !tbaa !66
  br label %1963

1144:                                             ; preds = %18
  %1145 = load double, ptr %1, align 8, !tbaa !51
  %1146 = fcmp olt double %1145, 4.000000e-01
  br i1 %1146, label %1154, label %1147

1147:                                             ; preds = %1144
  %1148 = fmul double %1145, %1145
  %1149 = fptosi double %1148 to i64
  %1150 = tail call double @llvm.fabs.f64(double %1145)
  %1151 = fptoui double %1150 to i64
  %1152 = shl i64 %1151, 1
  %1153 = or disjoint i64 %1152, 1
  br label %1154

1154:                                             ; preds = %1144, %1147
  %1155 = phi i64 [ %1153, %1147 ], [ 9, %1144 ]
  %1156 = phi i64 [ %1149, %1147 ], [ 18, %1144 ]
  %1157 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 2
  store i64 %1155, ptr %1157, align 8, !tbaa !59
  %1158 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 1
  store i64 %1155, ptr %1158, align 8, !tbaa !58
  %1159 = add nsw i64 %1155, -1
  %1160 = ashr exact i64 %1159, 1
  %1161 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 4
  store i64 %1160, ptr %1161, align 8, !tbaa !61
  %1162 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 3
  store i64 %1160, ptr %1162, align 8, !tbaa !60
  %1163 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 2
  %1164 = load i64, ptr %1163, align 8, !tbaa !59
  %1165 = shl i64 %1164, 3
  %1166 = tail call ptr @AcquireAlignedMemory(i64 noundef %1155, i64 noundef %1165) #23
  %1167 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 5
  store ptr %1166, ptr %1167, align 8, !tbaa !65
  %1168 = icmp eq ptr %1166, null
  br i1 %1168, label %1169, label %1171

1169:                                             ; preds = %1154
  %1170 = tail call ptr @DestroyKernelInfo(ptr noundef %19)
  br label %1215

1171:                                             ; preds = %1154
  %1172 = load i64, ptr %1161, align 8, !tbaa !61
  %1173 = icmp slt i64 %1172, 0
  br i1 %1173, label %1210, label %1174

1174:                                             ; preds = %1171
  %1175 = sub nsw i64 0, %1172
  %1176 = load i64, ptr %1162, align 8, !tbaa !60
  %1177 = sub nsw i64 0, %1176
  %1178 = icmp slt i64 %1176, 0
  %1179 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %1180 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 9
  %1181 = shl i64 %1176, 1
  %1182 = or disjoint i64 %1181, 1
  br label %1183

1183:                                             ; preds = %1174, %1206
  %1184 = phi i64 [ 0, %1174 ], [ %1207, %1206 ]
  %1185 = phi i64 [ %1175, %1174 ], [ %1208, %1206 ]
  br i1 %1178, label %1206, label %1186

1186:                                             ; preds = %1183
  %1187 = mul nsw i64 %1185, %1185
  %1188 = add i64 %1182, %1184
  br label %1189

1189:                                             ; preds = %1186, %1202
  %1190 = phi i64 [ %1184, %1186 ], [ %1204, %1202 ]
  %1191 = phi i64 [ %1177, %1186 ], [ %1203, %1202 ]
  %1192 = mul nsw i64 %1191, %1191
  %1193 = add nuw nsw i64 %1192, %1187
  %1194 = icmp sgt i64 %1193, %1156
  br i1 %1194, label %1200, label %1195

1195:                                             ; preds = %1189
  %1196 = load double, ptr %1179, align 8, !tbaa !53
  %1197 = getelementptr inbounds double, ptr %1166, i64 %1190
  store double %1196, ptr %1197, align 8, !tbaa !68
  %1198 = load double, ptr %1180, align 8, !tbaa !78
  %1199 = fadd double %1196, %1198
  store double %1199, ptr %1180, align 8, !tbaa !78
  br label %1202

1200:                                             ; preds = %1189
  %1201 = getelementptr inbounds double, ptr %1166, i64 %1190
  store double %3, ptr %1201, align 8, !tbaa !68
  br label %1202

1202:                                             ; preds = %1195, %1200
  %1203 = add nsw i64 %1191, 1
  %1204 = add i64 %1190, 1
  %1205 = icmp eq i64 %1204, %1188
  br i1 %1205, label %1206, label %1189, !llvm.loop !90

1206:                                             ; preds = %1202, %1183
  %1207 = phi i64 [ %1184, %1183 ], [ %1204, %1202 ]
  %1208 = add i64 %1185, 1
  %1209 = icmp eq i64 %1185, %1172
  br i1 %1209, label %1210, label %1183, !llvm.loop !91

1210:                                             ; preds = %1206, %1171
  %1211 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %1212 = load double, ptr %1211, align 8, !tbaa !53
  %1213 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 7
  store double %1212, ptr %1213, align 8, !tbaa !67
  %1214 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 6
  store double %1212, ptr %1214, align 8, !tbaa !66
  br label %1215

1215:                                             ; preds = %1210, %1169
  %1216 = phi ptr [ %1170, %1169 ], [ undef, %1210 ]
  br i1 %1168, label %1965, label %1963

1217:                                             ; preds = %18
  %1218 = load double, ptr %1, align 8, !tbaa !51
  %1219 = fcmp olt double %1218, 1.000000e+00
  %1220 = fptoui double %1218 to i64
  %1221 = shl i64 %1220, 1
  %1222 = or disjoint i64 %1221, 1
  %1223 = select i1 %1219, i64 5, i64 %1222
  %1224 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 2
  store i64 %1223, ptr %1224, align 8, !tbaa !59
  %1225 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 1
  store i64 %1223, ptr %1225, align 8, !tbaa !58
  %1226 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 1
  %1227 = add nsw i64 %1223, -1
  %1228 = ashr exact i64 %1227, 1
  %1229 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 4
  store i64 %1228, ptr %1229, align 8, !tbaa !61
  %1230 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 3
  store i64 %1228, ptr %1230, align 8, !tbaa !60
  %1231 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 2
  %1232 = load i64, ptr %1231, align 8, !tbaa !59
  %1233 = shl i64 %1232, 3
  %1234 = tail call ptr @AcquireAlignedMemory(i64 noundef %1223, i64 noundef %1233) #23
  %1235 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 5
  store ptr %1234, ptr %1235, align 8, !tbaa !65
  %1236 = icmp eq ptr %1234, null
  br i1 %1236, label %1237, label %1239

1237:                                             ; preds = %1217
  %1238 = tail call ptr @DestroyKernelInfo(ptr noundef %19)
  br label %1965

1239:                                             ; preds = %1217
  %1240 = load i64, ptr %1229, align 8, !tbaa !61
  %1241 = icmp slt i64 %1240, 0
  br i1 %1241, label %1273, label %1242

1242:                                             ; preds = %1239
  %1243 = sub nsw i64 0, %1240
  %1244 = load i64, ptr %1230, align 8, !tbaa !60
  %1245 = sub nsw i64 0, %1244
  %1246 = icmp slt i64 %1244, 0
  %1247 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %1248 = shl i64 %1244, 1
  %1249 = or disjoint i64 %1248, 1
  br label %1250

1250:                                             ; preds = %1242, %1269
  %1251 = phi i64 [ 0, %1242 ], [ %1270, %1269 ]
  %1252 = phi i64 [ %1243, %1242 ], [ %1271, %1269 ]
  br i1 %1246, label %1269, label %1253

1253:                                             ; preds = %1250
  %1254 = icmp eq i64 %1252, 0
  %1255 = add i64 %1249, %1251
  br label %1256

1256:                                             ; preds = %1253, %1263
  %1257 = phi i64 [ %1251, %1253 ], [ %1267, %1263 ]
  %1258 = phi i64 [ %1245, %1253 ], [ %1266, %1263 ]
  %1259 = icmp eq i64 %1258, 0
  %1260 = or i1 %1254, %1259
  br i1 %1260, label %1261, label %1263

1261:                                             ; preds = %1256
  %1262 = load double, ptr %1247, align 8, !tbaa !53
  br label %1263

1263:                                             ; preds = %1256, %1261
  %1264 = phi double [ %1262, %1261 ], [ %3, %1256 ]
  %1265 = getelementptr inbounds double, ptr %1234, i64 %1257
  store double %1264, ptr %1265, align 8, !tbaa !68
  %1266 = add nsw i64 %1258, 1
  %1267 = add i64 %1257, 1
  %1268 = icmp eq i64 %1267, %1255
  br i1 %1268, label %1269, label %1256, !llvm.loop !92

1269:                                             ; preds = %1263, %1250
  %1270 = phi i64 [ %1251, %1250 ], [ %1267, %1263 ]
  %1271 = add i64 %1252, 1
  %1272 = icmp eq i64 %1252, %1240
  br i1 %1272, label %1273, label %1250, !llvm.loop !93

1273:                                             ; preds = %1269, %1239
  %1274 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %1275 = load double, ptr %1274, align 8, !tbaa !53
  %1276 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 7
  store double %1275, ptr %1276, align 8, !tbaa !67
  %1277 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 6
  store double %1275, ptr %1277, align 8, !tbaa !66
  %1278 = load i64, ptr %1226, align 8, !tbaa !58
  %1279 = uitofp i64 %1278 to double
  %1280 = tail call double @llvm.fmuladd.f64(double %1279, double 2.000000e+00, double -1.000000e+00)
  %1281 = fmul double %1275, %1280
  %1282 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 9
  store double %1281, ptr %1282, align 8, !tbaa !78
  br label %1963

1283:                                             ; preds = %18
  %1284 = load double, ptr %1, align 8, !tbaa !51
  %1285 = fcmp olt double %1284, 1.000000e+00
  %1286 = fptoui double %1284 to i64
  %1287 = shl i64 %1286, 1
  %1288 = or disjoint i64 %1287, 1
  %1289 = select i1 %1285, i64 5, i64 %1288
  %1290 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 2
  store i64 %1289, ptr %1290, align 8, !tbaa !59
  %1291 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 1
  store i64 %1289, ptr %1291, align 8, !tbaa !58
  %1292 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 1
  %1293 = add nsw i64 %1289, -1
  %1294 = ashr exact i64 %1293, 1
  %1295 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 4
  store i64 %1294, ptr %1295, align 8, !tbaa !61
  %1296 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 3
  store i64 %1294, ptr %1296, align 8, !tbaa !60
  %1297 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 2
  %1298 = load i64, ptr %1297, align 8, !tbaa !59
  %1299 = shl i64 %1298, 3
  %1300 = tail call ptr @AcquireAlignedMemory(i64 noundef %1289, i64 noundef %1299) #23
  %1301 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 5
  store ptr %1300, ptr %1301, align 8, !tbaa !65
  %1302 = icmp eq ptr %1300, null
  br i1 %1302, label %1303, label %1305

1303:                                             ; preds = %1283
  %1304 = tail call ptr @DestroyKernelInfo(ptr noundef %19)
  br label %1965

1305:                                             ; preds = %1283
  %1306 = load i64, ptr %1295, align 8, !tbaa !61
  %1307 = icmp slt i64 %1306, 0
  br i1 %1307, label %1340, label %1308

1308:                                             ; preds = %1305
  %1309 = sub nsw i64 0, %1306
  %1310 = load i64, ptr %1296, align 8, !tbaa !60
  %1311 = sub nsw i64 0, %1310
  %1312 = icmp slt i64 %1310, 0
  %1313 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %1314 = shl i64 %1310, 1
  %1315 = or disjoint i64 %1314, 1
  br label %1316

1316:                                             ; preds = %1308, %1336
  %1317 = phi i64 [ 0, %1308 ], [ %1337, %1336 ]
  %1318 = phi i64 [ %1309, %1308 ], [ %1338, %1336 ]
  br i1 %1312, label %1336, label %1319

1319:                                             ; preds = %1316
  %1320 = sub nsw i64 0, %1318
  %1321 = add i64 %1315, %1317
  br label %1322

1322:                                             ; preds = %1319, %1330
  %1323 = phi i64 [ %1317, %1319 ], [ %1334, %1330 ]
  %1324 = phi i64 [ %1311, %1319 ], [ %1333, %1330 ]
  %1325 = icmp eq i64 %1324, %1318
  %1326 = icmp eq i64 %1324, %1320
  %1327 = select i1 %1325, i1 true, i1 %1326
  br i1 %1327, label %1328, label %1330

1328:                                             ; preds = %1322
  %1329 = load double, ptr %1313, align 8, !tbaa !53
  br label %1330

1330:                                             ; preds = %1322, %1328
  %1331 = phi double [ %1329, %1328 ], [ %3, %1322 ]
  %1332 = getelementptr inbounds double, ptr %1300, i64 %1323
  store double %1331, ptr %1332, align 8, !tbaa !68
  %1333 = add nsw i64 %1324, 1
  %1334 = add i64 %1323, 1
  %1335 = icmp eq i64 %1334, %1321
  br i1 %1335, label %1336, label %1322, !llvm.loop !94

1336:                                             ; preds = %1330, %1316
  %1337 = phi i64 [ %1317, %1316 ], [ %1334, %1330 ]
  %1338 = add i64 %1318, 1
  %1339 = icmp eq i64 %1318, %1306
  br i1 %1339, label %1340, label %1316, !llvm.loop !95

1340:                                             ; preds = %1336, %1305
  %1341 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %1342 = load double, ptr %1341, align 8, !tbaa !53
  %1343 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 7
  store double %1342, ptr %1343, align 8, !tbaa !67
  %1344 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 6
  store double %1342, ptr %1344, align 8, !tbaa !66
  %1345 = load i64, ptr %1292, align 8, !tbaa !58
  %1346 = uitofp i64 %1345 to double
  %1347 = tail call double @llvm.fmuladd.f64(double %1346, double 2.000000e+00, double -1.000000e+00)
  %1348 = fmul double %1342, %1347
  %1349 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 9
  store double %1348, ptr %1349, align 8, !tbaa !78
  br label %1963

1350:                                             ; preds = %18, %18
  %1351 = load double, ptr %1, align 8, !tbaa !51
  %1352 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %1353 = load double, ptr %1352, align 8, !tbaa !53
  %1354 = fcmp olt double %1351, %1353
  %1355 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 1
  br i1 %1354, label %1356, label %1362

1356:                                             ; preds = %1350
  %1357 = fptoui double %1353 to i64
  %1358 = shl i64 %1357, 1
  %1359 = or disjoint i64 %1358, 1
  store i64 %1359, ptr %1355, align 8, !tbaa !58
  %1360 = fmul double %1351, %1351
  %1361 = fmul double %1353, %1353
  br label %1368

1362:                                             ; preds = %1350
  %1363 = fptoui double %1351 to i64
  %1364 = shl i64 %1363, 1
  %1365 = or disjoint i64 %1364, 1
  store i64 %1365, ptr %1355, align 8, !tbaa !58
  %1366 = fmul double %1353, %1353
  %1367 = fmul double %1351, %1351
  br label %1368

1368:                                             ; preds = %1362, %1356
  %1369 = phi double [ %1360, %1356 ], [ %1366, %1362 ]
  %1370 = phi double [ %1361, %1356 ], [ %1367, %1362 ]
  %1371 = fptosi double %1370 to i64
  %1372 = fptosi double %1369 to i64
  %1373 = icmp slt i64 %1371, 1
  br i1 %1373, label %1374, label %1376

1374:                                             ; preds = %1368
  %1375 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 1
  store i64 7, ptr %1375, align 8, !tbaa !58
  br label %1376

1376:                                             ; preds = %1374, %1368
  %1377 = phi i64 [ 7, %1374 ], [ %1372, %1368 ]
  %1378 = phi i64 [ 11, %1374 ], [ %1371, %1368 ]
  %1379 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 1
  %1380 = load i64, ptr %1379, align 8, !tbaa !58
  %1381 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 2
  store i64 %1380, ptr %1381, align 8, !tbaa !59
  %1382 = add i64 %1380, -1
  %1383 = sdiv i64 %1382, 2
  %1384 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 4
  store i64 %1383, ptr %1384, align 8, !tbaa !61
  %1385 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 3
  store i64 %1383, ptr %1385, align 8, !tbaa !60
  %1386 = shl i64 %1380, 3
  %1387 = tail call ptr @AcquireAlignedMemory(i64 noundef %1380, i64 noundef %1386) #23
  %1388 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 5
  store ptr %1387, ptr %1388, align 8, !tbaa !65
  %1389 = icmp eq ptr %1387, null
  br i1 %1389, label %1390, label %1392

1390:                                             ; preds = %1376
  %1391 = tail call ptr @DestroyKernelInfo(ptr noundef %19)
  br label %1448

1392:                                             ; preds = %1376
  %1393 = icmp eq i32 %0, 22
  br i1 %1393, label %1399, label %1394

1394:                                             ; preds = %1392
  %1395 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 2
  %1396 = load double, ptr %1395, align 8, !tbaa !54
  %1397 = fptosi double %1396 to i64
  %1398 = sitofp i64 %1397 to double
  br label %1399

1399:                                             ; preds = %1392, %1394
  %1400 = phi double [ %1398, %1394 ], [ 0.000000e+00, %1392 ]
  %1401 = load i64, ptr %1384, align 8, !tbaa !61
  %1402 = icmp slt i64 %1401, 0
  br i1 %1402, label %1438, label %1403

1403:                                             ; preds = %1399
  %1404 = sub nsw i64 0, %1401
  %1405 = load i64, ptr %1385, align 8, !tbaa !60
  %1406 = sub nsw i64 0, %1405
  %1407 = icmp slt i64 %1405, 0
  %1408 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 9
  %1409 = shl i64 %1405, 1
  %1410 = or disjoint i64 %1409, 1
  br label %1411

1411:                                             ; preds = %1403, %1434
  %1412 = phi i64 [ 0, %1403 ], [ %1435, %1434 ]
  %1413 = phi i64 [ %1404, %1403 ], [ %1436, %1434 ]
  br i1 %1407, label %1434, label %1414

1414:                                             ; preds = %1411
  %1415 = mul nsw i64 %1413, %1413
  %1416 = add i64 %1410, %1412
  br label %1417

1417:                                             ; preds = %1414, %1430
  %1418 = phi i64 [ %1412, %1414 ], [ %1432, %1430 ]
  %1419 = phi i64 [ %1406, %1414 ], [ %1431, %1430 ]
  %1420 = mul nsw i64 %1419, %1419
  %1421 = add nuw nsw i64 %1420, %1415
  %1422 = icmp sge i64 %1377, %1421
  %1423 = icmp ugt i64 %1421, %1378
  %1424 = or i1 %1422, %1423
  %1425 = getelementptr inbounds double, ptr %1387, i64 %1418
  br i1 %1424, label %1429, label %1426

1426:                                             ; preds = %1417
  store double %1400, ptr %1425, align 8, !tbaa !68
  %1427 = load double, ptr %1408, align 8, !tbaa !78
  %1428 = fadd double %1400, %1427
  store double %1428, ptr %1408, align 8, !tbaa !78
  br label %1430

1429:                                             ; preds = %1417
  store double %3, ptr %1425, align 8, !tbaa !68
  br label %1430

1430:                                             ; preds = %1429, %1426
  %1431 = add nsw i64 %1419, 1
  %1432 = add i64 %1418, 1
  %1433 = icmp eq i64 %1432, %1416
  br i1 %1433, label %1434, label %1417, !llvm.loop !96

1434:                                             ; preds = %1430, %1411
  %1435 = phi i64 [ %1412, %1411 ], [ %1432, %1430 ]
  %1436 = add i64 %1413, 1
  %1437 = icmp eq i64 %1413, %1401
  br i1 %1437, label %1438, label %1411, !llvm.loop !97

1438:                                             ; preds = %1434, %1399
  %1439 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 7
  store double %1400, ptr %1439, align 8, !tbaa !67
  %1440 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 6
  store double %1400, ptr %1440, align 8, !tbaa !66
  br i1 %1393, label %1441, label %1448

1441:                                             ; preds = %1438
  %1442 = load i64, ptr %1385, align 8, !tbaa !60
  %1443 = load i64, ptr %1379, align 8, !tbaa !58
  %1444 = mul i64 %1443, %1401
  %1445 = getelementptr double, ptr %1387, i64 %1442
  %1446 = getelementptr double, ptr %1445, i64 %1444
  store double 1.000000e+00, ptr %1446, align 8, !tbaa !68
  %1447 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 9
  store double 1.000000e+00, ptr %1447, align 8, !tbaa !78
  store double 1.000000e+00, ptr %1439, align 8, !tbaa !67
  br label %1448

1448:                                             ; preds = %1438, %1441, %1390
  %1449 = phi ptr [ %1391, %1390 ], [ undef, %1441 ], [ undef, %1438 ]
  br i1 %1389, label %1965, label %1963

1450:                                             ; preds = %18
  %1451 = tail call ptr @AcquireKernelInfo(ptr noundef nonnull @.str.22)
  %1452 = icmp eq ptr %1451, null
  br i1 %1452, label %1965, label %1453

1453:                                             ; preds = %1450
  store i32 23, ptr %1451, align 8, !tbaa !34
  tail call fastcc void @ExpandMirrorKernelInfo(ptr noundef nonnull %1451)
  br label %1963

1454:                                             ; preds = %18
  %1455 = tail call ptr @AcquireKernelInfo(ptr noundef nonnull @.str.23)
  %1456 = icmp eq ptr %1455, null
  br i1 %1456, label %1965, label %1457

1457:                                             ; preds = %1454
  store i32 24, ptr %1455, align 8, !tbaa !34
  tail call fastcc void @ExpandRotateKernelInfo(ptr noundef nonnull %1455, double noundef 9.000000e+01)
  br label %1963

1458:                                             ; preds = %18
  %1459 = load double, ptr %1, align 8, !tbaa !51
  %1460 = fptosi double %1459 to i32
  switch i32 %1460, label %1461 [
    i32 2, label %1477
    i32 1, label %1478
  ]

1461:                                             ; preds = %1458
  %1462 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.24)
  %1463 = icmp eq ptr %1462, null
  br i1 %1463, label %1965, label %1464

1464:                                             ; preds = %1461
  store i32 25, ptr %1462, align 8, !tbaa !34
  %1465 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.25)
  %1466 = icmp eq ptr %1465, null
  br i1 %1466, label %1467, label %1469

1467:                                             ; preds = %1464
  %1468 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %1462)
  br label %1965

1469:                                             ; preds = %1464
  store i32 25, ptr %1465, align 8, !tbaa !34
  br label %1470

1470:                                             ; preds = %1470, %1469
  %1471 = phi ptr [ %1462, %1469 ], [ %1473, %1470 ]
  %1472 = getelementptr inbounds %struct.KernelInfo, ptr %1471, i64 0, i32 11
  %1473 = load ptr, ptr %1472, align 8, !tbaa !42
  %1474 = icmp eq ptr %1473, null
  br i1 %1474, label %1475, label %1470, !llvm.loop !56

1475:                                             ; preds = %1470
  %1476 = getelementptr inbounds %struct.KernelInfo, ptr %1471, i64 0, i32 11
  store ptr %1465, ptr %1476, align 8, !tbaa !42
  tail call fastcc void @ExpandMirrorKernelInfo(ptr noundef nonnull %1462)
  br label %1965

1477:                                             ; preds = %1458
  br label %1478

1478:                                             ; preds = %1458, %1477
  %1479 = phi ptr [ @.str.25, %1477 ], [ @.str.24, %1458 ]
  %1480 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull %1479)
  %1481 = icmp eq ptr %1480, null
  br i1 %1481, label %1965, label %1482

1482:                                             ; preds = %1478
  store i32 25, ptr %1480, align 8, !tbaa !34
  %1483 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %1484 = load double, ptr %1483, align 8, !tbaa !53
  tail call fastcc void @RotateKernelInfo(ptr noundef nonnull %1480, double noundef %1484)
  br label %1963

1485:                                             ; preds = %18
  %1486 = load double, ptr %1, align 8, !tbaa !51
  %1487 = fptosi double %1486 to i32
  %1488 = add i32 %1487, -1
  %1489 = icmp ult i32 %1488, 4
  br i1 %1489, label %1492, label %1490

1490:                                             ; preds = %1485
  %1491 = tail call ptr @AcquireKernelInfo(ptr noundef nonnull @.str.26)
  br label %1965

1492:                                             ; preds = %1485
  %1493 = zext nneg i32 %1488 to i64
  %1494 = shl i64 %1493, 2
  %1495 = call ptr @llvm.load.relative.i64(ptr @reltable.AcquireKernelBuiltIn, i64 %1494)
  %1496 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull %1495)
  %1497 = icmp eq ptr %1496, null
  br i1 %1497, label %1965, label %1498

1498:                                             ; preds = %1492
  store i32 26, ptr %1496, align 8, !tbaa !34
  %1499 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %1500 = load double, ptr %1499, align 8, !tbaa !53
  tail call fastcc void @RotateKernelInfo(ptr noundef nonnull %1496, double noundef %1500)
  br label %1963

1501:                                             ; preds = %18
  %1502 = load double, ptr %1, align 8, !tbaa !51
  %1503 = fptosi double %1502 to i32
  %1504 = add i32 %1503, -1
  %1505 = icmp ult i32 %1504, 5
  br i1 %1505, label %1508, label %1506

1506:                                             ; preds = %1501
  %1507 = tail call ptr @AcquireKernelInfo(ptr noundef nonnull @.str.31)
  br label %1965

1508:                                             ; preds = %1501
  %1509 = zext nneg i32 %1504 to i64
  %1510 = shl i64 %1509, 2
  %1511 = call ptr @llvm.load.relative.i64(ptr @reltable.AcquireKernelBuiltIn.118, i64 %1510)
  %1512 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull %1511)
  %1513 = icmp eq ptr %1512, null
  br i1 %1513, label %1965, label %1514

1514:                                             ; preds = %1508
  store i32 27, ptr %1512, align 8, !tbaa !34
  %1515 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %1516 = load double, ptr %1515, align 8, !tbaa !53
  tail call fastcc void @RotateKernelInfo(ptr noundef nonnull %1512, double noundef %1516)
  br label %1963

1517:                                             ; preds = %18
  %1518 = load double, ptr %1, align 8, !tbaa !51
  %1519 = fptosi double %1518 to i32
  %1520 = icmp eq i32 %1519, 2
  br i1 %1520, label %1525, label %1521

1521:                                             ; preds = %1517
  %1522 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.37)
  %1523 = icmp eq ptr %1522, null
  br i1 %1523, label %1625, label %1524

1524:                                             ; preds = %1521
  store i32 28, ptr %1522, align 8, !tbaa !34
  tail call fastcc void @ExpandRotateKernelInfo(ptr noundef nonnull %1522, double noundef 9.000000e+01)
  br label %1625

1525:                                             ; preds = %1517
  %1526 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.38)
  %1527 = icmp eq ptr %1526, null
  br i1 %1527, label %1625, label %1528

1528:                                             ; preds = %1525
  store i32 28, ptr %1526, align 8, !tbaa !34
  tail call fastcc void @ExpandRotateKernelInfo(ptr noundef nonnull %1526, double noundef 9.000000e+01)
  %1529 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.39)
  %1530 = icmp eq ptr %1529, null
  br i1 %1530, label %1531, label %1533

1531:                                             ; preds = %1528
  %1532 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %1526)
  br label %1625

1533:                                             ; preds = %1528
  store i32 28, ptr %1529, align 8, !tbaa !34
  br label %1534

1534:                                             ; preds = %1534, %1533
  %1535 = phi ptr [ %1526, %1533 ], [ %1537, %1534 ]
  %1536 = getelementptr inbounds %struct.KernelInfo, ptr %1535, i64 0, i32 11
  %1537 = load ptr, ptr %1536, align 8, !tbaa !42
  %1538 = icmp eq ptr %1537, null
  br i1 %1538, label %1539, label %1534, !llvm.loop !56

1539:                                             ; preds = %1534
  %1540 = getelementptr inbounds %struct.KernelInfo, ptr %1535, i64 0, i32 11
  store ptr %1529, ptr %1540, align 8, !tbaa !42
  %1541 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.40)
  %1542 = icmp eq ptr %1541, null
  br i1 %1542, label %1543, label %1545

1543:                                             ; preds = %1539
  %1544 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %1526)
  br label %1625

1545:                                             ; preds = %1539
  store i32 28, ptr %1541, align 8, !tbaa !34
  br label %1546

1546:                                             ; preds = %1546, %1545
  %1547 = phi ptr [ %1526, %1545 ], [ %1549, %1546 ]
  %1548 = getelementptr inbounds %struct.KernelInfo, ptr %1547, i64 0, i32 11
  %1549 = load ptr, ptr %1548, align 8, !tbaa !42
  %1550 = icmp eq ptr %1549, null
  br i1 %1550, label %1551, label %1546, !llvm.loop !56

1551:                                             ; preds = %1546
  %1552 = getelementptr inbounds %struct.KernelInfo, ptr %1547, i64 0, i32 11
  store ptr %1541, ptr %1552, align 8, !tbaa !42
  %1553 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.41)
  %1554 = icmp eq ptr %1553, null
  br i1 %1554, label %1555, label %1557

1555:                                             ; preds = %1551
  %1556 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %1526)
  br label %1625

1557:                                             ; preds = %1551
  store i32 28, ptr %1553, align 8, !tbaa !34
  br label %1558

1558:                                             ; preds = %1558, %1557
  %1559 = phi ptr [ %1526, %1557 ], [ %1561, %1558 ]
  %1560 = getelementptr inbounds %struct.KernelInfo, ptr %1559, i64 0, i32 11
  %1561 = load ptr, ptr %1560, align 8, !tbaa !42
  %1562 = icmp eq ptr %1561, null
  br i1 %1562, label %1563, label %1558, !llvm.loop !56

1563:                                             ; preds = %1558
  %1564 = getelementptr inbounds %struct.KernelInfo, ptr %1559, i64 0, i32 11
  store ptr %1553, ptr %1564, align 8, !tbaa !42
  %1565 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.42)
  %1566 = icmp eq ptr %1565, null
  br i1 %1566, label %1567, label %1569

1567:                                             ; preds = %1563
  %1568 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %1526)
  br label %1625

1569:                                             ; preds = %1563
  store i32 28, ptr %1565, align 8, !tbaa !34
  br label %1570

1570:                                             ; preds = %1570, %1569
  %1571 = phi ptr [ %1526, %1569 ], [ %1573, %1570 ]
  %1572 = getelementptr inbounds %struct.KernelInfo, ptr %1571, i64 0, i32 11
  %1573 = load ptr, ptr %1572, align 8, !tbaa !42
  %1574 = icmp eq ptr %1573, null
  br i1 %1574, label %1575, label %1570, !llvm.loop !56

1575:                                             ; preds = %1570
  %1576 = getelementptr inbounds %struct.KernelInfo, ptr %1571, i64 0, i32 11
  store ptr %1565, ptr %1576, align 8, !tbaa !42
  %1577 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.43)
  %1578 = icmp eq ptr %1577, null
  br i1 %1578, label %1579, label %1581

1579:                                             ; preds = %1575
  %1580 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %1526)
  br label %1625

1581:                                             ; preds = %1575
  store i32 28, ptr %1577, align 8, !tbaa !34
  br label %1582

1582:                                             ; preds = %1582, %1581
  %1583 = phi ptr [ %1526, %1581 ], [ %1585, %1582 ]
  %1584 = getelementptr inbounds %struct.KernelInfo, ptr %1583, i64 0, i32 11
  %1585 = load ptr, ptr %1584, align 8, !tbaa !42
  %1586 = icmp eq ptr %1585, null
  br i1 %1586, label %1587, label %1582, !llvm.loop !56

1587:                                             ; preds = %1582
  %1588 = getelementptr inbounds %struct.KernelInfo, ptr %1583, i64 0, i32 11
  store ptr %1577, ptr %1588, align 8, !tbaa !42
  %1589 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.44)
  %1590 = icmp eq ptr %1589, null
  br i1 %1590, label %1591, label %1593

1591:                                             ; preds = %1587
  %1592 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %1526)
  br label %1625

1593:                                             ; preds = %1587
  store i32 28, ptr %1589, align 8, !tbaa !34
  br label %1594

1594:                                             ; preds = %1594, %1593
  %1595 = phi ptr [ %1526, %1593 ], [ %1597, %1594 ]
  %1596 = getelementptr inbounds %struct.KernelInfo, ptr %1595, i64 0, i32 11
  %1597 = load ptr, ptr %1596, align 8, !tbaa !42
  %1598 = icmp eq ptr %1597, null
  br i1 %1598, label %1599, label %1594, !llvm.loop !56

1599:                                             ; preds = %1594
  %1600 = getelementptr inbounds %struct.KernelInfo, ptr %1595, i64 0, i32 11
  store ptr %1589, ptr %1600, align 8, !tbaa !42
  %1601 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.45)
  %1602 = icmp eq ptr %1601, null
  br i1 %1602, label %1603, label %1605

1603:                                             ; preds = %1599
  %1604 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %1526)
  br label %1625

1605:                                             ; preds = %1599
  store i32 28, ptr %1601, align 8, !tbaa !34
  br label %1606

1606:                                             ; preds = %1606, %1605
  %1607 = phi ptr [ %1526, %1605 ], [ %1609, %1606 ]
  %1608 = getelementptr inbounds %struct.KernelInfo, ptr %1607, i64 0, i32 11
  %1609 = load ptr, ptr %1608, align 8, !tbaa !42
  %1610 = icmp eq ptr %1609, null
  br i1 %1610, label %1611, label %1606, !llvm.loop !56

1611:                                             ; preds = %1606
  %1612 = getelementptr inbounds %struct.KernelInfo, ptr %1607, i64 0, i32 11
  store ptr %1601, ptr %1612, align 8, !tbaa !42
  %1613 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.46)
  %1614 = icmp eq ptr %1613, null
  br i1 %1614, label %1615, label %1617

1615:                                             ; preds = %1611
  %1616 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %1526)
  br label %1625

1617:                                             ; preds = %1611
  store i32 28, ptr %1613, align 8, !tbaa !34
  br label %1618

1618:                                             ; preds = %1618, %1617
  %1619 = phi ptr [ %1526, %1617 ], [ %1621, %1618 ]
  %1620 = getelementptr inbounds %struct.KernelInfo, ptr %1619, i64 0, i32 11
  %1621 = load ptr, ptr %1620, align 8, !tbaa !42
  %1622 = icmp eq ptr %1621, null
  br i1 %1622, label %1623, label %1618, !llvm.loop !56

1623:                                             ; preds = %1618
  %1624 = getelementptr inbounds %struct.KernelInfo, ptr %1619, i64 0, i32 11
  store ptr %1613, ptr %1624, align 8, !tbaa !42
  br label %1625

1625:                                             ; preds = %1524, %1623, %1525, %1521, %1615, %1603, %1591, %1579, %1567, %1555, %1543, %1531
  %1626 = phi i1 [ false, %1531 ], [ false, %1543 ], [ false, %1555 ], [ false, %1567 ], [ false, %1579 ], [ false, %1591 ], [ false, %1603 ], [ false, %1615 ], [ false, %1521 ], [ false, %1525 ], [ true, %1623 ], [ true, %1524 ]
  %1627 = phi ptr [ %1526, %1531 ], [ %1526, %1543 ], [ %1526, %1555 ], [ %1526, %1567 ], [ %1526, %1579 ], [ %1526, %1591 ], [ %1526, %1603 ], [ %1526, %1615 ], [ null, %1521 ], [ null, %1525 ], [ %1526, %1623 ], [ %1522, %1524 ]
  %1628 = phi ptr [ %1532, %1531 ], [ %1544, %1543 ], [ %1556, %1555 ], [ %1568, %1567 ], [ %1580, %1579 ], [ %1592, %1591 ], [ %1604, %1603 ], [ %1616, %1615 ], [ null, %1521 ], [ null, %1525 ], [ undef, %1623 ], [ undef, %1524 ]
  br i1 %1626, label %1963, label %1965

1629:                                             ; preds = %18
  %1630 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.47)
  %1631 = icmp eq ptr %1630, null
  br i1 %1631, label %1645, label %1632

1632:                                             ; preds = %1629
  store i32 29, ptr %1630, align 8, !tbaa !34
  tail call fastcc void @ExpandRotateKernelInfo(ptr noundef nonnull %1630, double noundef 9.000000e+01)
  %1633 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.48)
  %1634 = icmp eq ptr %1633, null
  br i1 %1634, label %1635, label %1637

1635:                                             ; preds = %1632
  %1636 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %1630)
  br label %1645

1637:                                             ; preds = %1632
  store i32 29, ptr %1633, align 8, !tbaa !34
  tail call fastcc void @ExpandRotateKernelInfo(ptr noundef nonnull %1633, double noundef 9.000000e+01)
  br label %1638

1638:                                             ; preds = %1638, %1637
  %1639 = phi ptr [ %1630, %1637 ], [ %1641, %1638 ]
  %1640 = getelementptr inbounds %struct.KernelInfo, ptr %1639, i64 0, i32 11
  %1641 = load ptr, ptr %1640, align 8, !tbaa !42
  %1642 = icmp eq ptr %1641, null
  br i1 %1642, label %1643, label %1638, !llvm.loop !56

1643:                                             ; preds = %1638
  %1644 = getelementptr inbounds %struct.KernelInfo, ptr %1639, i64 0, i32 11
  store ptr %1633, ptr %1644, align 8, !tbaa !42
  br label %1645

1645:                                             ; preds = %1629, %1643, %1635
  %1646 = phi i1 [ false, %1635 ], [ true, %1643 ], [ false, %1629 ]
  %1647 = phi ptr [ %1636, %1635 ], [ undef, %1643 ], [ null, %1629 ]
  br i1 %1646, label %1963, label %1965

1648:                                             ; preds = %18
  %1649 = load double, ptr %1, align 8, !tbaa !51
  %1650 = fptosi double %1649 to i32
  switch i32 %1650, label %1651 [
    i32 3, label %1665
    i32 2, label %1655
  ]

1651:                                             ; preds = %1648
  %1652 = tail call ptr @AcquireKernelInfo(ptr noundef nonnull @.str.22)
  %1653 = icmp eq ptr %1652, null
  br i1 %1653, label %1965, label %1654

1654:                                             ; preds = %1651
  store i32 31, ptr %1652, align 8, !tbaa !34
  tail call fastcc void @ExpandRotateKernelInfo(ptr noundef nonnull %1652, double noundef 4.500000e+01)
  br label %1963

1655:                                             ; preds = %1648
  %1656 = tail call ptr @AcquireKernelInfo(ptr noundef nonnull @.str.49)
  %1657 = icmp eq ptr %1656, null
  br i1 %1657, label %1965, label %1658

1658:                                             ; preds = %1655
  %1659 = getelementptr inbounds %struct.KernelInfo, ptr %1656, i64 0, i32 11
  %1660 = load ptr, ptr %1659, align 8, !tbaa !42
  %1661 = icmp eq ptr %1660, null
  br i1 %1661, label %1662, label %1664

1662:                                             ; preds = %1658
  %1663 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %1656)
  br label %1965

1664:                                             ; preds = %1658
  store i32 31, ptr %1656, align 8, !tbaa !34
  store i32 31, ptr %1660, align 8, !tbaa !34
  tail call fastcc void @ExpandRotateKernelInfo(ptr noundef nonnull %1656, double noundef 9.000000e+01)
  br label %1963

1665:                                             ; preds = %1648
  %1666 = tail call ptr @AcquireKernelInfo(ptr noundef nonnull @.str.50)
  %1667 = icmp eq ptr %1666, null
  br i1 %1667, label %1965, label %1668

1668:                                             ; preds = %1665
  store i32 31, ptr %1666, align 8, !tbaa !34
  %1669 = getelementptr inbounds %struct.KernelInfo, ptr %1666, i64 0, i32 11
  %1670 = load ptr, ptr %1669, align 8, !tbaa !42
  store i32 31, ptr %1670, align 8, !tbaa !34
  %1671 = getelementptr inbounds %struct.KernelInfo, ptr %1670, i64 0, i32 11
  %1672 = load ptr, ptr %1671, align 8, !tbaa !42
  store i32 31, ptr %1672, align 8, !tbaa !34
  tail call fastcc void @ExpandMirrorKernelInfo(ptr noundef nonnull %1666)
  br label %1963

1673:                                             ; preds = %18
  %1674 = load double, ptr %1, align 8, !tbaa !51
  %1675 = fptosi double %1674 to i32
  switch i32 %1675, label %1696 [
    i32 41, label %1697
    i32 42, label %1676
    i32 43, label %1677
    i32 44, label %1678
    i32 45, label %1679
    i32 46, label %1680
    i32 47, label %1681
    i32 48, label %1682
    i32 49, label %1683
    i32 81, label %1684
    i32 82, label %1685
    i32 83, label %1686
    i32 84, label %1687
    i32 85, label %1688
    i32 86, label %1689
    i32 87, label %1690
    i32 88, label %1691
    i32 89, label %1692
    i32 423, label %1693
    i32 823, label %1694
    i32 481, label %1695
  ]

1676:                                             ; preds = %1673
  br label %1697

1677:                                             ; preds = %1673
  br label %1697

1678:                                             ; preds = %1673
  br label %1697

1679:                                             ; preds = %1673
  br label %1697

1680:                                             ; preds = %1673
  br label %1697

1681:                                             ; preds = %1673
  br label %1697

1682:                                             ; preds = %1673
  br label %1697

1683:                                             ; preds = %1673
  br label %1697

1684:                                             ; preds = %1673
  br label %1697

1685:                                             ; preds = %1673
  br label %1697

1686:                                             ; preds = %1673
  br label %1697

1687:                                             ; preds = %1673
  br label %1697

1688:                                             ; preds = %1673
  br label %1697

1689:                                             ; preds = %1673
  br label %1697

1690:                                             ; preds = %1673
  br label %1697

1691:                                             ; preds = %1673
  br label %1697

1692:                                             ; preds = %1673
  br label %1697

1693:                                             ; preds = %1673
  br label %1697

1694:                                             ; preds = %1673
  br label %1697

1695:                                             ; preds = %1673
  br label %1697

1696:                                             ; preds = %1673
  br label %1697

1697:                                             ; preds = %1673, %1696, %1695, %1694, %1693, %1692, %1691, %1690, %1689, %1688, %1687, %1686, %1685, %1684, %1683, %1682, %1681, %1680, %1679, %1678, %1677, %1676
  %1698 = phi ptr [ @.str.72, %1696 ], [ @.str.71, %1695 ], [ @.str.70, %1694 ], [ @.str.69, %1693 ], [ @.str.68, %1692 ], [ @.str.67, %1691 ], [ @.str.66, %1690 ], [ @.str.65, %1689 ], [ @.str.64, %1688 ], [ @.str.63, %1687 ], [ @.str.62, %1686 ], [ @.str.61, %1685 ], [ @.str.60, %1684 ], [ @.str.59, %1683 ], [ @.str.58, %1682 ], [ @.str.57, %1681 ], [ @.str.56, %1680 ], [ @.str.55, %1679 ], [ @.str.54, %1678 ], [ @.str.53, %1677 ], [ @.str.52, %1676 ], [ @.str.51, %1673 ]
  %1699 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull %1698)
  %1700 = icmp eq ptr %1699, null
  br i1 %1700, label %1965, label %1701

1701:                                             ; preds = %1697
  store i32 30, ptr %1699, align 8, !tbaa !34
  %1702 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %1703 = load double, ptr %1702, align 8, !tbaa !53
  tail call fastcc void @RotateKernelInfo(ptr noundef nonnull %1699, double noundef %1703)
  br label %1963

1704:                                             ; preds = %18
  %1705 = load double, ptr %1, align 8, !tbaa !51
  %1706 = fcmp olt double %1705, 1.000000e+00
  %1707 = fptoui double %1705 to i64
  %1708 = shl i64 %1707, 1
  %1709 = or disjoint i64 %1708, 1
  %1710 = select i1 %1706, i64 3, i64 %1709
  %1711 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 2
  store i64 %1710, ptr %1711, align 8, !tbaa !59
  %1712 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 1
  store i64 %1710, ptr %1712, align 8, !tbaa !58
  %1713 = add nsw i64 %1710, -1
  %1714 = ashr exact i64 %1713, 1
  %1715 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 4
  store i64 %1714, ptr %1715, align 8, !tbaa !61
  %1716 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 3
  store i64 %1714, ptr %1716, align 8, !tbaa !60
  %1717 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 2
  %1718 = load i64, ptr %1717, align 8, !tbaa !59
  %1719 = shl i64 %1718, 3
  %1720 = tail call ptr @AcquireAlignedMemory(i64 noundef %1710, i64 noundef %1719) #23
  %1721 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 5
  store ptr %1720, ptr %1721, align 8, !tbaa !65
  %1722 = icmp eq ptr %1720, null
  br i1 %1722, label %1723, label %1725

1723:                                             ; preds = %1704
  %1724 = tail call ptr @DestroyKernelInfo(ptr noundef %19)
  br label %1965

1725:                                             ; preds = %1704
  %1726 = load i64, ptr %1715, align 8, !tbaa !61
  %1727 = icmp slt i64 %1726, 0
  br i1 %1727, label %1763, label %1728

1728:                                             ; preds = %1725
  %1729 = sub nsw i64 0, %1726
  %1730 = load i64, ptr %1716, align 8, !tbaa !60
  %1731 = sub nsw i64 0, %1730
  %1732 = icmp slt i64 %1730, 0
  %1733 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %1734 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 9
  %1735 = shl i64 %1730, 1
  %1736 = or disjoint i64 %1735, 1
  br label %1737

1737:                                             ; preds = %1728, %1759
  %1738 = phi i64 [ 0, %1728 ], [ %1760, %1759 ]
  %1739 = phi i64 [ %1729, %1728 ], [ %1761, %1759 ]
  br i1 %1732, label %1759, label %1740

1740:                                             ; preds = %1737
  %1741 = sitofp i64 %1739 to double
  %1742 = tail call double @llvm.fabs.f64(double %1741)
  %1743 = add i64 %1736, %1738
  br label %1744

1744:                                             ; preds = %1740, %1744
  %1745 = phi i64 [ %1738, %1740 ], [ %1757, %1744 ]
  %1746 = phi i64 [ %1731, %1740 ], [ %1756, %1744 ]
  %1747 = load double, ptr %1733, align 8, !tbaa !53
  %1748 = sitofp i64 %1746 to double
  %1749 = tail call double @llvm.fabs.f64(double %1748)
  %1750 = fcmp ogt double %1749, %1742
  %1751 = select i1 %1750, double %1749, double %1742
  %1752 = fmul double %1751, %1747
  %1753 = getelementptr inbounds double, ptr %1720, i64 %1745
  store double %1752, ptr %1753, align 8, !tbaa !68
  %1754 = load double, ptr %1734, align 8, !tbaa !78
  %1755 = fadd double %1752, %1754
  store double %1755, ptr %1734, align 8, !tbaa !78
  %1756 = add nsw i64 %1746, 1
  %1757 = add i64 %1745, 1
  %1758 = icmp eq i64 %1757, %1743
  br i1 %1758, label %1759, label %1744, !llvm.loop !98

1759:                                             ; preds = %1744, %1737
  %1760 = phi i64 [ %1738, %1737 ], [ %1757, %1744 ]
  %1761 = add i64 %1739, 1
  %1762 = icmp eq i64 %1739, %1726
  br i1 %1762, label %1763, label %1737, !llvm.loop !99

1763:                                             ; preds = %1759, %1725
  %1764 = load double, ptr %1720, align 8, !tbaa !68
  %1765 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 7
  store double %1764, ptr %1765, align 8, !tbaa !67
  br label %1963

1766:                                             ; preds = %18
  %1767 = load double, ptr %1, align 8, !tbaa !51
  %1768 = fcmp olt double %1767, 1.000000e+00
  %1769 = fptoui double %1767 to i64
  %1770 = shl i64 %1769, 1
  %1771 = or disjoint i64 %1770, 1
  %1772 = select i1 %1768, i64 3, i64 %1771
  %1773 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 2
  store i64 %1772, ptr %1773, align 8, !tbaa !59
  %1774 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 1
  store i64 %1772, ptr %1774, align 8, !tbaa !58
  %1775 = add nsw i64 %1772, -1
  %1776 = ashr exact i64 %1775, 1
  %1777 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 4
  store i64 %1776, ptr %1777, align 8, !tbaa !61
  %1778 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 3
  store i64 %1776, ptr %1778, align 8, !tbaa !60
  %1779 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 2
  %1780 = load i64, ptr %1779, align 8, !tbaa !59
  %1781 = shl i64 %1780, 3
  %1782 = tail call ptr @AcquireAlignedMemory(i64 noundef %1772, i64 noundef %1781) #23
  %1783 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 5
  store ptr %1782, ptr %1783, align 8, !tbaa !65
  %1784 = icmp eq ptr %1782, null
  br i1 %1784, label %1785, label %1787

1785:                                             ; preds = %1766
  %1786 = tail call ptr @DestroyKernelInfo(ptr noundef %19)
  br label %1965

1787:                                             ; preds = %1766
  %1788 = load i64, ptr %1777, align 8, !tbaa !61
  %1789 = icmp slt i64 %1788, 0
  br i1 %1789, label %1823, label %1790

1790:                                             ; preds = %1787
  %1791 = sub nsw i64 0, %1788
  %1792 = load i64, ptr %1778, align 8, !tbaa !60
  %1793 = sub nsw i64 0, %1792
  %1794 = icmp slt i64 %1792, 0
  %1795 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %1796 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 9
  %1797 = shl i64 %1792, 1
  %1798 = or disjoint i64 %1797, 1
  br label %1799

1799:                                             ; preds = %1790, %1819
  %1800 = phi i64 [ 0, %1790 ], [ %1820, %1819 ]
  %1801 = phi i64 [ %1791, %1790 ], [ %1821, %1819 ]
  br i1 %1794, label %1819, label %1802

1802:                                             ; preds = %1799
  %1803 = tail call i64 @llvm.abs.i64(i64 %1801, i1 true)
  %1804 = add i64 %1798, %1800
  br label %1805

1805:                                             ; preds = %1802, %1805
  %1806 = phi i64 [ %1800, %1802 ], [ %1817, %1805 ]
  %1807 = phi i64 [ %1793, %1802 ], [ %1816, %1805 ]
  %1808 = load double, ptr %1795, align 8, !tbaa !53
  %1809 = tail call i64 @llvm.abs.i64(i64 %1807, i1 true)
  %1810 = add nuw nsw i64 %1809, %1803
  %1811 = sitofp i64 %1810 to double
  %1812 = fmul double %1808, %1811
  %1813 = getelementptr inbounds double, ptr %1782, i64 %1806
  store double %1812, ptr %1813, align 8, !tbaa !68
  %1814 = load double, ptr %1796, align 8, !tbaa !78
  %1815 = fadd double %1812, %1814
  store double %1815, ptr %1796, align 8, !tbaa !78
  %1816 = add nsw i64 %1807, 1
  %1817 = add i64 %1806, 1
  %1818 = icmp eq i64 %1817, %1804
  br i1 %1818, label %1819, label %1805, !llvm.loop !100

1819:                                             ; preds = %1805, %1799
  %1820 = phi i64 [ %1800, %1799 ], [ %1817, %1805 ]
  %1821 = add i64 %1801, 1
  %1822 = icmp eq i64 %1801, %1788
  br i1 %1822, label %1823, label %1799, !llvm.loop !101

1823:                                             ; preds = %1819, %1787
  %1824 = load double, ptr %1782, align 8, !tbaa !68
  %1825 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 7
  store double %1824, ptr %1825, align 8, !tbaa !67
  br label %1963

1826:                                             ; preds = %18
  %1827 = load double, ptr %1, align 8, !tbaa !51
  %1828 = fcmp olt double %1827, 2.000000e+00
  %1829 = fptoui double %1827 to i64
  %1830 = shl i64 %1829, 1
  %1831 = or disjoint i64 %1830, 1
  %1832 = select i1 %1828, i64 5, i64 %1831
  %1833 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 2
  store i64 %1832, ptr %1833, align 8, !tbaa !59
  %1834 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 1
  store i64 %1832, ptr %1834, align 8, !tbaa !58
  %1835 = add nsw i64 %1832, -1
  %1836 = ashr exact i64 %1835, 1
  %1837 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 4
  store i64 %1836, ptr %1837, align 8, !tbaa !61
  %1838 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 3
  store i64 %1836, ptr %1838, align 8, !tbaa !60
  %1839 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 2
  %1840 = load i64, ptr %1839, align 8, !tbaa !59
  %1841 = shl i64 %1840, 3
  %1842 = tail call ptr @AcquireAlignedMemory(i64 noundef %1832, i64 noundef %1841) #23
  %1843 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 5
  store ptr %1842, ptr %1843, align 8, !tbaa !65
  %1844 = icmp eq ptr %1842, null
  br i1 %1844, label %1845, label %1847

1845:                                             ; preds = %1826
  %1846 = tail call ptr @DestroyKernelInfo(ptr noundef %19)
  br label %1965

1847:                                             ; preds = %1826
  %1848 = load i64, ptr %1837, align 8, !tbaa !61
  %1849 = icmp slt i64 %1848, 0
  br i1 %1849, label %1894, label %1850

1850:                                             ; preds = %1847
  %1851 = sub nsw i64 0, %1848
  %1852 = load i64, ptr %1838, align 8, !tbaa !60
  %1853 = sub nsw i64 0, %1852
  %1854 = icmp slt i64 %1852, 0
  %1855 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %1856 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 9
  %1857 = shl i64 %1852, 1
  %1858 = or disjoint i64 %1857, 1
  br label %1859

1859:                                             ; preds = %1850, %1890
  %1860 = phi i64 [ 0, %1850 ], [ %1891, %1890 ]
  %1861 = phi i64 [ %1851, %1850 ], [ %1892, %1890 ]
  br i1 %1854, label %1890, label %1862

1862:                                             ; preds = %1859
  %1863 = sitofp i64 %1861 to double
  %1864 = tail call double @llvm.fabs.f64(double %1863)
  %1865 = tail call i64 @llvm.abs.i64(i64 %1861, i1 true)
  %1866 = add nuw i64 %1865, 1
  %1867 = add i64 %1858, %1860
  br label %1868

1868:                                             ; preds = %1862, %1868
  %1869 = phi i64 [ %1860, %1862 ], [ %1888, %1868 ]
  %1870 = phi i64 [ %1853, %1862 ], [ %1887, %1868 ]
  %1871 = sitofp i64 %1870 to double
  %1872 = tail call double @llvm.fabs.f64(double %1871)
  %1873 = fcmp ogt double %1872, %1864
  %1874 = select i1 %1873, double %1872, double %1864
  %1875 = tail call i64 @llvm.abs.i64(i64 %1870, i1 true)
  %1876 = add nuw i64 %1866, %1875
  %1877 = sitofp i64 %1876 to double
  %1878 = fdiv double %1877, 1.500000e+00
  %1879 = tail call double @llvm.floor.f64(double %1878)
  %1880 = load double, ptr %1855, align 8, !tbaa !53
  %1881 = fcmp ogt double %1874, %1879
  %1882 = select i1 %1881, double %1874, double %1879
  %1883 = fmul double %1882, %1880
  %1884 = getelementptr inbounds double, ptr %1842, i64 %1869
  store double %1883, ptr %1884, align 8, !tbaa !68
  %1885 = load double, ptr %1856, align 8, !tbaa !78
  %1886 = fadd double %1883, %1885
  store double %1886, ptr %1856, align 8, !tbaa !78
  %1887 = add nsw i64 %1870, 1
  %1888 = add i64 %1869, 1
  %1889 = icmp eq i64 %1888, %1867
  br i1 %1889, label %1890, label %1868, !llvm.loop !102

1890:                                             ; preds = %1868, %1859
  %1891 = phi i64 [ %1860, %1859 ], [ %1888, %1868 ]
  %1892 = add i64 %1861, 1
  %1893 = icmp eq i64 %1861, %1848
  br i1 %1893, label %1894, label %1859, !llvm.loop !103

1894:                                             ; preds = %1890, %1847
  %1895 = load double, ptr %1842, align 8, !tbaa !68
  %1896 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 7
  store double %1895, ptr %1896, align 8, !tbaa !67
  br label %1963

1897:                                             ; preds = %18
  %1898 = load double, ptr %1, align 8, !tbaa !51
  %1899 = fcmp olt double %1898, 1.000000e+00
  %1900 = fptoui double %1898 to i64
  %1901 = shl i64 %1900, 1
  %1902 = or disjoint i64 %1901, 1
  %1903 = select i1 %1899, i64 3, i64 %1902
  %1904 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 2
  store i64 %1903, ptr %1904, align 8, !tbaa !59
  %1905 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 1
  store i64 %1903, ptr %1905, align 8, !tbaa !58
  %1906 = add nsw i64 %1903, -1
  %1907 = ashr exact i64 %1906, 1
  %1908 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 4
  store i64 %1907, ptr %1908, align 8, !tbaa !61
  %1909 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 3
  store i64 %1907, ptr %1909, align 8, !tbaa !60
  %1910 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 2
  %1911 = load i64, ptr %1910, align 8, !tbaa !59
  %1912 = shl i64 %1911, 3
  %1913 = tail call ptr @AcquireAlignedMemory(i64 noundef %1903, i64 noundef %1912) #23
  %1914 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 5
  store ptr %1913, ptr %1914, align 8, !tbaa !65
  %1915 = icmp eq ptr %1913, null
  br i1 %1915, label %1916, label %1918

1916:                                             ; preds = %1897
  %1917 = tail call ptr @DestroyKernelInfo(ptr noundef %19)
  br label %1965

1918:                                             ; preds = %1897
  %1919 = load i64, ptr %1908, align 8, !tbaa !61
  %1920 = icmp slt i64 %1919, 0
  br i1 %1920, label %1955, label %1921

1921:                                             ; preds = %1918
  %1922 = sub nsw i64 0, %1919
  %1923 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %1924 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 9
  br label %1925

1925:                                             ; preds = %1921, %1950
  %1926 = phi i64 [ 0, %1921 ], [ %1951, %1950 ]
  %1927 = phi i64 [ %1922, %1921 ], [ %1952, %1950 ]
  %1928 = load i64, ptr %1909, align 8, !tbaa !60
  %1929 = icmp slt i64 %1928, 0
  br i1 %1929, label %1950, label %1930

1930:                                             ; preds = %1925
  %1931 = sub nsw i64 0, %1928
  %1932 = mul nsw i64 %1927, %1927
  br label %1933

1933:                                             ; preds = %1930, %1933
  %1934 = phi i64 [ %1926, %1930 ], [ %1947, %1933 ]
  %1935 = phi i64 [ %1931, %1930 ], [ %1946, %1933 ]
  %1936 = load double, ptr %1923, align 8, !tbaa !53
  %1937 = mul nsw i64 %1935, %1935
  %1938 = add nuw nsw i64 %1937, %1932
  %1939 = sitofp i64 %1938 to double
  %1940 = tail call double @sqrt(double noundef %1939) #19
  %1941 = fmul double %1936, %1940
  %1942 = load ptr, ptr %1914, align 8, !tbaa !65
  %1943 = getelementptr inbounds double, ptr %1942, i64 %1934
  store double %1941, ptr %1943, align 8, !tbaa !68
  %1944 = load double, ptr %1924, align 8, !tbaa !78
  %1945 = fadd double %1941, %1944
  store double %1945, ptr %1924, align 8, !tbaa !78
  %1946 = add nsw i64 %1935, 1
  %1947 = add nsw i64 %1934, 1
  %1948 = load i64, ptr %1909, align 8, !tbaa !60
  %1949 = icmp slt i64 %1935, %1948
  br i1 %1949, label %1933, label %1950, !llvm.loop !104

1950:                                             ; preds = %1933, %1925
  %1951 = phi i64 [ %1926, %1925 ], [ %1947, %1933 ]
  %1952 = add nsw i64 %1927, 1
  %1953 = load i64, ptr %1908, align 8, !tbaa !61
  %1954 = icmp slt i64 %1927, %1953
  br i1 %1954, label %1925, label %1955, !llvm.loop !105

1955:                                             ; preds = %1950, %1918
  %1956 = load ptr, ptr %1914, align 8, !tbaa !65
  %1957 = load double, ptr %1956, align 8, !tbaa !68
  %1958 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 7
  store double %1957, ptr %1958, align 8, !tbaa !67
  br label %1963

1959:                                             ; preds = %18
  %1960 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.73)
  %1961 = icmp eq ptr %1960, null
  br i1 %1961, label %1965, label %1962

1962:                                             ; preds = %1959
  store i32 0, ptr %1960, align 8, !tbaa !34
  br label %1963

1963:                                             ; preds = %927, %1654, %1664, %1668, %926, %932, %280, %389, %480, %600, %1074, %1215, %1448, %1625, %1645, %1962, %1955, %1894, %1823, %1763, %1701, %1514, %1498, %1482, %1457, %1453, %1340, %1273, %1139, %993, %640, %635, %630, %625, %620, %616, %29
  %1964 = phi ptr [ %1960, %1962 ], [ %19, %1955 ], [ %19, %1894 ], [ %19, %1823 ], [ %19, %1763 ], [ %1699, %1701 ], [ %1652, %1654 ], [ %1656, %1664 ], [ %1666, %1668 ], [ %1630, %1645 ], [ %1627, %1625 ], [ %1512, %1514 ], [ %1496, %1498 ], [ %1480, %1482 ], [ %1455, %1457 ], [ %1451, %1453 ], [ %19, %1448 ], [ %19, %1340 ], [ %19, %1273 ], [ %19, %1215 ], [ %19, %1139 ], [ %19, %1074 ], [ %19, %993 ], [ %921, %926 ], [ %921, %932 ], [ %638, %640 ], [ %633, %635 ], [ %628, %630 ], [ %623, %625 ], [ %618, %620 ], [ %614, %616 ], [ %19, %600 ], [ %19, %480 ], [ %19, %389 ], [ %19, %280 ], [ %19, %29 ], [ %921, %927 ]
  br label %1965

1965:                                             ; preds = %1959, %1697, %1665, %1655, %1651, %1508, %1492, %1478, %1467, %1475, %1461, %1454, %1450, %916, %912, %908, %904, %900, %858, %817, %775, %733, %730, %686, %645, %637, %632, %627, %622, %617, %612, %5, %280, %389, %480, %600, %1074, %1215, %1448, %1625, %1645, %1963, %1916, %1845, %1785, %1723, %1662, %1506, %1490, %1303, %1237, %1096, %952, %27
  %1966 = phi ptr [ %1964, %1963 ], [ %1917, %1916 ], [ %1846, %1845 ], [ %1786, %1785 ], [ %1724, %1723 ], [ %1663, %1662 ], [ %1647, %1645 ], [ %1628, %1625 ], [ %1507, %1506 ], [ %1491, %1490 ], [ %1449, %1448 ], [ %1304, %1303 ], [ %1238, %1237 ], [ %1216, %1215 ], [ %1097, %1096 ], [ %1076, %1074 ], [ %953, %952 ], [ %601, %600 ], [ %481, %480 ], [ %390, %389 ], [ %281, %280 ], [ %28, %27 ], [ null, %5 ], [ null, %612 ], [ null, %617 ], [ null, %622 ], [ null, %627 ], [ null, %632 ], [ null, %637 ], [ null, %645 ], [ null, %686 ], [ null, %730 ], [ null, %733 ], [ null, %775 ], [ null, %817 ], [ null, %858 ], [ null, %900 ], [ null, %904 ], [ null, %908 ], [ null, %912 ], [ null, %916 ], [ null, %1450 ], [ null, %1454 ], [ %1468, %1467 ], [ %1462, %1475 ], [ null, %1461 ], [ null, %1478 ], [ null, %1492 ], [ null, %1508 ], [ null, %1651 ], [ null, %1655 ], [ null, %1665 ], [ null, %1697 ], [ null, %1959 ]
  ret ptr %1966
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #5

; Function Attrs: allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #6

declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0,1)
declare ptr @AcquireAlignedMemory(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #8

declare i64 @GetOptimalKernelWidth2D(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ScaleKernelInfo(ptr nocapture noundef %0, double noundef %1, i32 noundef %2) local_unnamed_addr #9 {
  %4 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !42
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @ScaleKernelInfo(ptr noundef nonnull %5, double noundef %1, i32 noundef %2)
  br label %8

8:                                                ; preds = %7, %3
  %9 = and i32 %2, 8192
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 9
  %13 = load double, ptr %12, align 8, !tbaa !78
  %14 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 8
  %15 = load double, ptr %14, align 8, !tbaa !81
  %16 = fadd double %13, %15
  %17 = tail call double @llvm.fabs.f64(double %16)
  %18 = fcmp ult double %17, 1.000000e-15
  %19 = select i1 %18, double %13, double %17
  br label %20

20:                                               ; preds = %11, %8
  %21 = phi double [ 1.000000e+00, %8 ], [ %19, %11 ]
  %22 = and i32 %2, 65536
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %36, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 9
  %26 = load double, ptr %25, align 8, !tbaa !78
  %27 = tail call double @llvm.fabs.f64(double %26)
  %28 = fcmp ult double %27, 1.000000e-15
  %29 = select i1 %28, double 1.000000e+00, double %26
  %30 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 8
  %31 = load double, ptr %30, align 8, !tbaa !81
  %32 = tail call double @llvm.fabs.f64(double %31)
  %33 = fcmp ult double %32, 1.000000e-15
  %34 = fneg double %31
  %35 = select i1 %33, double 1.000000e+00, double %34
  br label %36

36:                                               ; preds = %20, %24
  %37 = phi double [ %29, %24 ], [ %21, %20 ]
  %38 = phi double [ %35, %24 ], [ %21, %20 ]
  %39 = fdiv double %1, %37
  %40 = fdiv double %1, %38
  %41 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !58
  %43 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 2
  %44 = load i64, ptr %43, align 8, !tbaa !59
  %45 = mul i64 %44, %42
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %36
  %48 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 5
  %49 = load ptr, ptr %48, align 8, !tbaa !65
  br label %50

50:                                               ; preds = %47, %59
  %51 = phi i64 [ 0, %47 ], [ %60, %59 ]
  %52 = getelementptr inbounds double, ptr %49, i64 %51
  %53 = load double, ptr %52, align 8, !tbaa !68
  %54 = fcmp uno double %53, 0.000000e+00
  br i1 %54, label %59, label %55

55:                                               ; preds = %50
  %56 = fcmp oge double %53, 0.000000e+00
  %57 = select i1 %56, double %39, double %40
  %58 = fmul double %53, %57
  store double %58, ptr %52, align 8, !tbaa !68
  br label %59

59:                                               ; preds = %55, %50
  %60 = add nuw nsw i64 %51, 1
  %61 = icmp eq i64 %60, %45
  br i1 %61, label %62, label %50, !llvm.loop !106

62:                                               ; preds = %59, %36
  %63 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 9
  %64 = load double, ptr %63, align 8, !tbaa !78
  %65 = fmul double %39, %64
  store double %65, ptr %63, align 8, !tbaa !78
  %66 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 8
  %67 = load double, ptr %66, align 8, !tbaa !81
  %68 = fmul double %40, %67
  store double %68, ptr %66, align 8, !tbaa !81
  %69 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 7
  %70 = load double, ptr %69, align 8, !tbaa !67
  %71 = fcmp oge double %70, 0.000000e+00
  %72 = select i1 %71, double %39, double %40
  %73 = fmul double %70, %72
  store double %73, ptr %69, align 8, !tbaa !67
  %74 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 6
  %75 = load double, ptr %74, align 8, !tbaa !66
  %76 = fcmp oge double %75, 0.000000e+00
  %77 = select i1 %76, double %39, double %40
  %78 = fmul double %75, %77
  store double %78, ptr %74, align 8, !tbaa !66
  %79 = fcmp olt double %1, 1.000000e-15
  br i1 %79, label %80, label %81

80:                                               ; preds = %62
  store double %68, ptr %63, align 8, !tbaa !78
  store double %65, ptr %66, align 8, !tbaa !81
  store double %78, ptr %69, align 8, !tbaa !67
  store double 1.000000e+00, ptr %74, align 8, !tbaa !66
  br label %81

81:                                               ; preds = %80, %62
  ret void
}

declare i64 @GetOptimalKernelWidth1D(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @RotateKernelInfo(ptr nocapture noundef %0, double noundef %1) unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call fastcc void @RotateKernelInfo(ptr noundef nonnull %4, double noundef %1)
  br label %7

7:                                                ; preds = %6, %2
  %8 = tail call double @fmod(double noundef %1, double noundef 3.600000e+02) #19
  %9 = fcmp olt double %8, 0.000000e+00
  %10 = fadd double %8, 3.600000e+02
  %11 = select i1 %9, double %10, double %8
  %12 = fcmp ogt double %11, 3.375000e+02
  %13 = fcmp ole double %11, 2.250000e+01
  %14 = or i1 %12, %13
  br i1 %14, label %229, label %15

15:                                               ; preds = %7
  %16 = load i32, ptr %0, align 8, !tbaa !34
  switch i32 %16, label %27 [
    i32 2, label %229
    i32 3, label %229
    i32 4, label %229
    i32 18, label %229
    i32 22, label %229
    i32 7, label %229
    i32 32, label %229
    i32 33, label %229
    i32 35, label %229
    i32 15, label %229
    i32 14, label %229
    i32 19, label %229
    i32 20, label %229
    i32 5, label %17
  ]

17:                                               ; preds = %15
  %18 = fcmp ogt double %11, 1.350000e+02
  %19 = fcmp ole double %11, 2.250000e+02
  %20 = and i1 %18, %19
  br i1 %20, label %229, label %21

21:                                               ; preds = %17
  %22 = fcmp ogt double %11, 2.250000e+02
  %23 = fcmp ole double %11, 3.150000e+02
  %24 = and i1 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = fadd double %11, -1.800000e+02
  br label %27

27:                                               ; preds = %15, %21, %25
  %28 = phi double [ %11, %15 ], [ %26, %25 ], [ %11, %21 ]
  %29 = tail call double @fmod(double noundef %28, double noundef 9.000000e+01) #19
  %30 = fcmp ogt double %29, 2.250000e+01
  br i1 %30, label %31, label %93

31:                                               ; preds = %27
  %32 = tail call double @fmod(double noundef %28, double noundef 9.000000e+01) #19
  %33 = fcmp ugt double %32, 6.750000e+01
  br i1 %33, label %93, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 1
  %36 = load i64, ptr %35, align 8, !tbaa !58
  %37 = icmp eq i64 %36, 3
  br i1 %37, label %38, label %92

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 2
  %40 = load i64, ptr %39, align 8, !tbaa !59
  %41 = icmp eq i64 %40, 3
  br i1 %41, label %42, label %92

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 5
  %44 = load ptr, ptr %43, align 8, !tbaa !65
  %45 = load double, ptr %44, align 8, !tbaa !68
  %46 = getelementptr inbounds double, ptr %44, i64 3
  %47 = load double, ptr %46, align 8, !tbaa !68
  store double %47, ptr %44, align 8, !tbaa !68
  %48 = getelementptr inbounds double, ptr %44, i64 6
  %49 = load double, ptr %48, align 8, !tbaa !68
  store double %49, ptr %46, align 8, !tbaa !68
  %50 = getelementptr inbounds double, ptr %44, i64 7
  %51 = load double, ptr %50, align 8, !tbaa !68
  store double %51, ptr %48, align 8, !tbaa !68
  %52 = getelementptr inbounds double, ptr %44, i64 8
  %53 = load double, ptr %52, align 8, !tbaa !68
  store double %53, ptr %50, align 8, !tbaa !68
  %54 = getelementptr inbounds double, ptr %44, i64 5
  %55 = load double, ptr %54, align 8, !tbaa !68
  store double %55, ptr %52, align 8, !tbaa !68
  %56 = getelementptr inbounds double, ptr %44, i64 2
  %57 = load double, ptr %56, align 8, !tbaa !68
  store double %57, ptr %54, align 8, !tbaa !68
  %58 = getelementptr inbounds double, ptr %44, i64 1
  %59 = load double, ptr %58, align 8, !tbaa !68
  store double %59, ptr %56, align 8, !tbaa !68
  store double %45, ptr %58, align 8, !tbaa !68
  %60 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 3
  %61 = load i64, ptr %60, align 8, !tbaa !60
  %62 = icmp eq i64 %61, 1
  br i1 %62, label %63, label %67

63:                                               ; preds = %42
  %64 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 4
  %65 = load i64, ptr %64, align 8, !tbaa !61
  %66 = icmp eq i64 %65, 1
  br i1 %66, label %85, label %67

67:                                               ; preds = %63, %42
  %68 = add nsw i64 %61, -1
  %69 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 4
  %70 = load i64, ptr %69, align 8, !tbaa !61
  %71 = icmp eq i64 %61, %70
  br i1 %71, label %82, label %72

72:                                               ; preds = %67
  %73 = icmp eq i64 %68, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %72
  %75 = sub i64 2, %70
  br label %82

76:                                               ; preds = %72
  %77 = sub nsw i64 1, %70
  %78 = icmp eq i64 %68, %77
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = icmp eq i64 %70, 1
  %81 = select i1 %80, i64 %61, i64 %70
  br label %82

82:                                               ; preds = %79, %76, %67, %74
  %83 = phi i64 [ %70, %74 ], [ %70, %67 ], [ 1, %76 ], [ %81, %79 ]
  %84 = phi i64 [ %75, %74 ], [ 1, %67 ], [ %61, %76 ], [ %61, %79 ]
  store i64 %84, ptr %60, align 8, !tbaa !60
  store i64 %83, ptr %69, align 8, !tbaa !61
  br label %85

85:                                               ; preds = %82, %63
  %86 = fadd double %28, 3.150000e+02
  %87 = tail call double @fmod(double noundef %86, double noundef 3.600000e+02) #19
  %88 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 10
  %89 = load double, ptr %88, align 8, !tbaa !107
  %90 = fadd double %89, 4.500000e+01
  %91 = tail call double @fmod(double noundef %90, double noundef 3.600000e+02) #19
  store double %91, ptr %88, align 8, !tbaa !107
  br label %93

92:                                               ; preds = %38, %34
  tail call void @perror(ptr noundef nonnull @.str.115) #24
  br label %93

93:                                               ; preds = %85, %92, %31, %27
  %94 = phi double [ %87, %85 ], [ %28, %92 ], [ %28, %31 ], [ %28, %27 ]
  %95 = tail call double @fmod(double noundef %94, double noundef 1.800000e+02) #19
  %96 = fcmp ogt double %95, 4.500000e+01
  br i1 %96, label %97, label %189

97:                                               ; preds = %93
  %98 = tail call double @fmod(double noundef %94, double noundef 1.800000e+02) #19
  %99 = fcmp ugt double %98, 1.350000e+02
  br i1 %99, label %189, label %100

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 1
  %102 = load i64, ptr %101, align 8, !tbaa !58
  %103 = icmp eq i64 %102, 1
  br i1 %103, label %108, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 2
  %106 = load i64, ptr %105, align 8, !tbaa !59
  %107 = icmp eq i64 %106, 1
  br i1 %107, label %108, label %129

108:                                              ; preds = %104, %100
  %109 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 2
  %110 = load i64, ptr %109, align 8, !tbaa !59
  store i64 %110, ptr %101, align 8, !tbaa !58
  store i64 %102, ptr %109, align 8, !tbaa !59
  %111 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 3
  %112 = load i64, ptr %111, align 8, !tbaa !60
  %113 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 4
  %114 = load i64, ptr %113, align 8, !tbaa !61
  store i64 %114, ptr %111, align 8, !tbaa !60
  store i64 %112, ptr %113, align 8, !tbaa !61
  %115 = icmp eq i64 %110, 1
  %116 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 10
  br i1 %115, label %117, label %123

117:                                              ; preds = %108
  %118 = fadd double %94, 2.700000e+02
  %119 = tail call double @fmod(double noundef %118, double noundef 3.600000e+02) #19
  %120 = load double, ptr %116, align 8, !tbaa !107
  %121 = fadd double %120, 9.000000e+01
  %122 = tail call double @fmod(double noundef %121, double noundef 3.600000e+02) #19
  store double %122, ptr %116, align 8, !tbaa !107
  br label %189

123:                                              ; preds = %108
  %124 = fadd double %94, 9.000000e+01
  %125 = tail call double @fmod(double noundef %124, double noundef 3.600000e+02) #19
  %126 = load double, ptr %116, align 8, !tbaa !107
  %127 = fadd double %126, 2.700000e+02
  %128 = tail call double @fmod(double noundef %127, double noundef 3.600000e+02) #19
  store double %128, ptr %116, align 8, !tbaa !107
  br label %189

129:                                              ; preds = %104
  %130 = icmp eq i64 %102, %106
  br i1 %130, label %131, label %188

131:                                              ; preds = %129
  %132 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 5
  %133 = load ptr, ptr %132, align 8, !tbaa !65
  %134 = add i64 %106, -1
  %135 = icmp eq i64 %134, 0
  %136 = add i64 %102, -1
  br label %137

137:                                              ; preds = %131, %163
  %138 = phi i64 [ %136, %131 ], [ %165, %163 ]
  %139 = phi i64 [ 0, %131 ], [ %164, %163 ]
  br i1 %135, label %163, label %140

140:                                              ; preds = %137
  %141 = getelementptr double, ptr %133, i64 %139
  %142 = mul i64 %138, %102
  %143 = getelementptr double, ptr %133, i64 %142
  %144 = getelementptr double, ptr %133, i64 %138
  %145 = mul i64 %139, %102
  %146 = getelementptr double, ptr %133, i64 %145
  br label %147

147:                                              ; preds = %140, %147
  %148 = phi i64 [ %134, %140 ], [ %161, %147 ]
  %149 = phi i64 [ 0, %140 ], [ %160, %147 ]
  %150 = mul i64 %149, %102
  %151 = getelementptr double, ptr %141, i64 %150
  %152 = load double, ptr %151, align 8, !tbaa !68
  %153 = getelementptr double, ptr %143, i64 %149
  %154 = load double, ptr %153, align 8, !tbaa !68
  store double %154, ptr %151, align 8, !tbaa !68
  %155 = mul i64 %148, %102
  %156 = getelementptr double, ptr %144, i64 %155
  %157 = load double, ptr %156, align 8, !tbaa !68
  store double %157, ptr %153, align 8, !tbaa !68
  %158 = getelementptr double, ptr %146, i64 %148
  %159 = load double, ptr %158, align 8, !tbaa !68
  store double %159, ptr %156, align 8, !tbaa !68
  store double %152, ptr %158, align 8, !tbaa !68
  %160 = add nuw i64 %149, 1
  %161 = add i64 %148, -1
  %162 = icmp ult i64 %160, %161
  br i1 %162, label %147, label %163, !llvm.loop !108

163:                                              ; preds = %147, %137
  %164 = add i64 %139, 1
  %165 = add i64 %138, -1
  %166 = icmp ugt i64 %164, %165
  br i1 %166, label %167, label %137, !llvm.loop !109

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 3
  %169 = load i64, ptr %168, align 8, !tbaa !60
  %170 = shl nsw i64 %169, 1
  %171 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 4
  %172 = load i64, ptr %171, align 8, !tbaa !61
  %173 = shl nsw i64 %172, 1
  %174 = xor i64 %173, -1
  %175 = add i64 %102, -1
  %176 = add i64 %175, %106
  %177 = add i64 %176, %174
  %178 = sdiv i64 %177, 2
  store i64 %178, ptr %168, align 8, !tbaa !60
  %179 = sub i64 %106, %102
  %180 = add i64 %179, %170
  %181 = sdiv i64 %180, 2
  store i64 %181, ptr %171, align 8, !tbaa !61
  %182 = fadd double %94, 2.700000e+02
  %183 = tail call double @fmod(double noundef %182, double noundef 3.600000e+02) #19
  %184 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 10
  %185 = load double, ptr %184, align 8, !tbaa !107
  %186 = fadd double %185, 9.000000e+01
  %187 = tail call double @fmod(double noundef %186, double noundef 3.600000e+02) #19
  store double %187, ptr %184, align 8, !tbaa !107
  br label %189

188:                                              ; preds = %129
  tail call void @perror(ptr noundef nonnull @.str.116) #24
  br label %189

189:                                              ; preds = %117, %123, %188, %167, %97, %93
  %190 = phi double [ %183, %167 ], [ %94, %188 ], [ %94, %97 ], [ %94, %93 ], [ %119, %117 ], [ %125, %123 ]
  %191 = fcmp ogt double %190, 1.350000e+02
  %192 = fcmp ole double %190, 2.250000e+02
  %193 = and i1 %191, %192
  br i1 %193, label %194, label %229

194:                                              ; preds = %189
  %195 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 5
  %196 = load ptr, ptr %195, align 8, !tbaa !65
  %197 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 1
  %198 = load i64, ptr %197, align 8, !tbaa !58
  %199 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 2
  %200 = load i64, ptr %199, align 8, !tbaa !59
  %201 = mul i64 %200, %198
  %202 = add i64 %201, -1
  %203 = icmp eq i64 %202, 0
  br i1 %203, label %214, label %204

204:                                              ; preds = %194, %204
  %205 = phi i64 [ %212, %204 ], [ %202, %194 ]
  %206 = phi i64 [ %211, %204 ], [ 0, %194 ]
  %207 = getelementptr inbounds double, ptr %196, i64 %206
  %208 = load double, ptr %207, align 8, !tbaa !68
  %209 = getelementptr inbounds double, ptr %196, i64 %205
  %210 = load double, ptr %209, align 8, !tbaa !68
  store double %210, ptr %207, align 8, !tbaa !68
  store double %208, ptr %209, align 8, !tbaa !68
  %211 = add nuw i64 %206, 1
  %212 = add i64 %205, -1
  %213 = icmp ult i64 %211, %212
  br i1 %213, label %204, label %214, !llvm.loop !110

214:                                              ; preds = %204, %194
  %215 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 3
  %216 = load i64, ptr %215, align 8, !tbaa !60
  %217 = xor i64 %216, -1
  %218 = add i64 %198, %217
  store i64 %218, ptr %215, align 8, !tbaa !60
  %219 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 4
  %220 = load i64, ptr %219, align 8, !tbaa !61
  %221 = xor i64 %220, -1
  %222 = add i64 %200, %221
  store i64 %222, ptr %219, align 8, !tbaa !61
  %223 = fadd double %190, -1.800000e+02
  %224 = tail call double @fmod(double noundef %223, double noundef 3.600000e+02) #19
  %225 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 10
  %226 = load double, ptr %225, align 8, !tbaa !107
  %227 = fadd double %226, 1.800000e+02
  %228 = tail call double @fmod(double noundef %227, double noundef 3.600000e+02) #19
  store double %228, ptr %225, align 8, !tbaa !107
  br label %229

229:                                              ; preds = %189, %214, %17, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define internal fastcc void @ExpandMirrorKernelInfo(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @CloneKernelInfo(ptr noundef %0)
  tail call fastcc void @RotateKernelInfo(ptr noundef %2, double noundef 1.800000e+02)
  br label %3

3:                                                ; preds = %3, %1
  %4 = phi ptr [ %0, %1 ], [ %6, %3 ]
  %5 = getelementptr inbounds %struct.KernelInfo, ptr %4, i64 0, i32 11
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %3, !llvm.loop !56

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.KernelInfo, ptr %4, i64 0, i32 11
  store ptr %2, ptr %9, align 8, !tbaa !42
  %10 = tail call ptr @CloneKernelInfo(ptr noundef %2)
  tail call fastcc void @RotateKernelInfo(ptr noundef %10, double noundef 9.000000e+01)
  br label %11

11:                                               ; preds = %11, %8
  %12 = phi ptr [ %2, %8 ], [ %14, %11 ]
  %13 = getelementptr inbounds %struct.KernelInfo, ptr %12, i64 0, i32 11
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %11, !llvm.loop !56

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.KernelInfo, ptr %12, i64 0, i32 11
  store ptr %10, ptr %17, align 8, !tbaa !42
  %18 = tail call ptr @CloneKernelInfo(ptr noundef %10)
  tail call fastcc void @RotateKernelInfo(ptr noundef %18, double noundef 1.800000e+02)
  br label %19

19:                                               ; preds = %19, %16
  %20 = phi ptr [ %10, %16 ], [ %22, %19 ]
  %21 = getelementptr inbounds %struct.KernelInfo, ptr %20, i64 0, i32 11
  %22 = load ptr, ptr %21, align 8, !tbaa !42
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %19, !llvm.loop !56

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.KernelInfo, ptr %20, i64 0, i32 11
  store ptr %18, ptr %25, align 8, !tbaa !42
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ExpandRotateKernelInfo(ptr nocapture noundef %0, double noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 3
  %6 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 4
  %7 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 5
  br label %8

8:                                                ; preds = %66, %2
  %9 = phi ptr [ %0, %2 ], [ %10, %66 ]
  %10 = tail call ptr @CloneKernelInfo(ptr noundef %9)
  tail call fastcc void @RotateKernelInfo(ptr noundef %10, double noundef %1)
  %11 = load i64, ptr %3, align 8, !tbaa !58
  %12 = getelementptr inbounds %struct.KernelInfo, ptr %10, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !58
  %14 = icmp eq i64 %11, %13
  br i1 %14, label %15, label %60

15:                                               ; preds = %8
  %16 = load i64, ptr %4, align 8, !tbaa !59
  %17 = getelementptr inbounds %struct.KernelInfo, ptr %10, i64 0, i32 2
  %18 = load i64, ptr %17, align 8, !tbaa !59
  %19 = icmp eq i64 %16, %18
  br i1 %19, label %20, label %60

20:                                               ; preds = %15
  %21 = load i64, ptr %5, align 8, !tbaa !60
  %22 = getelementptr inbounds %struct.KernelInfo, ptr %10, i64 0, i32 3
  %23 = load i64, ptr %22, align 8, !tbaa !60
  %24 = icmp eq i64 %21, %23
  br i1 %24, label %25, label %60

25:                                               ; preds = %20
  %26 = load i64, ptr %6, align 8, !tbaa !61
  %27 = getelementptr inbounds %struct.KernelInfo, ptr %10, i64 0, i32 4
  %28 = load i64, ptr %27, align 8, !tbaa !61
  %29 = icmp eq i64 %26, %28
  br i1 %29, label %30, label %60

30:                                               ; preds = %25
  %31 = mul i64 %16, %11
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %68, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr %7, align 8, !tbaa !65
  %35 = getelementptr inbounds %struct.KernelInfo, ptr %10, i64 0, i32 5
  %36 = getelementptr inbounds %struct.KernelInfo, ptr %10, i64 0, i32 5
  br label %40

37:                                               ; preds = %56
  %38 = add nuw i64 %41, 1
  %39 = icmp eq i64 %38, %31
  br i1 %39, label %68, label %40, !llvm.loop !111

40:                                               ; preds = %33, %37
  %41 = phi i64 [ 0, %33 ], [ %38, %37 ]
  %42 = getelementptr inbounds double, ptr %34, i64 %41
  %43 = load double, ptr %42, align 8, !tbaa !68
  %44 = fcmp uno double %43, 0.000000e+00
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load ptr, ptr %35, align 8, !tbaa !65
  %47 = getelementptr inbounds double, ptr %46, i64 %41
  %48 = load double, ptr %47, align 8, !tbaa !68
  %49 = fcmp uno double %48, 0.000000e+00
  br i1 %49, label %50, label %60

50:                                               ; preds = %45, %40
  %51 = load ptr, ptr %36, align 8, !tbaa !65
  %52 = getelementptr inbounds double, ptr %51, i64 %41
  %53 = load double, ptr %52, align 8, !tbaa !68
  %54 = fcmp ord double %53, 0.000000e+00
  %55 = or i1 %44, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = fsub double %43, %53
  %58 = tail call double @llvm.fabs.f64(double %57)
  %59 = fcmp ult double %58, 1.000000e-15
  br i1 %59, label %37, label %60

60:                                               ; preds = %50, %56, %45, %8, %15, %20, %25
  br label %61

61:                                               ; preds = %60, %61
  %62 = phi ptr [ %64, %61 ], [ %9, %60 ]
  %63 = getelementptr inbounds %struct.KernelInfo, ptr %62, i64 0, i32 11
  %64 = load ptr, ptr %63, align 8, !tbaa !42
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %61, !llvm.loop !56

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.KernelInfo, ptr %62, i64 0, i32 11
  store ptr %10, ptr %67, align 8, !tbaa !42
  br label %8, !llvm.loop !112

68:                                               ; preds = %30, %37
  %69 = tail call ptr @DestroyKernelInfo(ptr noundef %10)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #8

; Function Attrs: nounwind uwtable
define dso_local ptr @CloneKernelInfo(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call dereferenceable_or_null(104) ptr @AcquireMagickMemory(i64 noundef 104) #20
  %3 = icmp eq ptr %2, null
  br i1 %3, label %38, label %4

4:                                                ; preds = %1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(104) %0, i64 104, i1 false), !tbaa.struct !113
  %5 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !58
  %7 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 2
  %8 = load i64, ptr %7, align 8, !tbaa !59
  %9 = shl i64 %8, 3
  %10 = tail call ptr @AcquireAlignedMemory(i64 noundef %6, i64 noundef %9) #23
  %11 = getelementptr inbounds %struct.KernelInfo, ptr %2, i64 0, i32 5
  store ptr %10, ptr %11, align 8, !tbaa !65
  %12 = icmp eq ptr %10, null
  br i1 %12, label %36, label %13

13:                                               ; preds = %4
  %14 = load i64, ptr %5, align 8, !tbaa !58
  %15 = load i64, ptr %7, align 8, !tbaa !59
  %16 = mul i64 %15, %14
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !65
  br label %21

21:                                               ; preds = %18, %21
  %22 = phi i64 [ 0, %18 ], [ %26, %21 ]
  %23 = getelementptr inbounds double, ptr %20, i64 %22
  %24 = load double, ptr %23, align 8, !tbaa !68
  %25 = getelementptr inbounds double, ptr %10, i64 %22
  store double %24, ptr %25, align 8, !tbaa !68
  %26 = add nuw nsw i64 %22, 1
  %27 = icmp eq i64 %26, %16
  br i1 %27, label %28, label %21, !llvm.loop !116

28:                                               ; preds = %21, %13
  %29 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 11
  %30 = load ptr, ptr %29, align 8, !tbaa !42
  %31 = icmp eq ptr %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %28
  %33 = tail call ptr @CloneKernelInfo(ptr noundef nonnull %30)
  %34 = getelementptr inbounds %struct.KernelInfo, ptr %2, i64 0, i32 11
  store ptr %33, ptr %34, align 8, !tbaa !42
  %35 = icmp eq ptr %33, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %32, %4
  %37 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %2)
  br label %38

38:                                               ; preds = %36, %28, %32, %1
  %39 = phi ptr [ null, %1 ], [ %2, %32 ], [ %2, %28 ], [ %37, %36 ]
  ret ptr %39
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

declare ptr @RelinquishAlignedMemory(ptr noundef) local_unnamed_addr #2

declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @MorphologyApply(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, ptr noundef readonly %4, i32 noundef %5, double noundef %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = alloca [4096 x i8], align 16
  %10 = alloca [4096 x i8], align 16
  %11 = alloca %struct._ExceptionInfo, align 8
  %12 = alloca [4096 x i8], align 16
  %13 = alloca [4096 x i8], align 16
  %14 = alloca %struct._MagickPixelPacket, align 8
  %15 = alloca %struct._MagickPixelPacket, align 8
  %16 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %16) #19
  %17 = icmp eq i64 %3, 0
  br i1 %17, label %3187, label %18

18:                                               ; preds = %8
  %19 = icmp slt i64 %3, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %22 = load i64, ptr %21, align 8, !tbaa !117
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %24 = load i64, ptr %23, align 8, !tbaa !129
  %25 = tail call i64 @llvm.umax.i64(i64 %22, i64 %24)
  br label %26

26:                                               ; preds = %20, %18
  %27 = phi i64 [ %25, %20 ], [ %3, %18 ]
  %28 = tail call ptr @GetImageArtifact(ptr noundef %0, ptr noundef nonnull @.str.74) #19
  %29 = tail call i32 @IsMagickTrue(ptr noundef %28) #19
  switch i32 %2, label %35 [
    i32 12, label %30
    i32 8, label %31
    i32 10, label %31
    i32 16, label %31
    i32 9, label %31
    i32 11, label %31
    i32 17, label %31
    i32 15, label %31
    i32 18, label %32
    i32 19, label %33
    i32 20, label %33
    i32 7, label %34
    i32 21, label %34
  ]

30:                                               ; preds = %26
  br label %35

31:                                               ; preds = %26, %26, %26, %26, %26, %26, %26
  br label %35

32:                                               ; preds = %26
  br label %35

33:                                               ; preds = %26, %26
  br label %35

34:                                               ; preds = %26, %26
  br label %35

35:                                               ; preds = %32, %26, %34, %33, %31, %30
  %36 = phi i32 [ %5, %26 ], [ %5, %34 ], [ %5, %31 ], [ %5, %30 ], [ 33, %32 ], [ %5, %33 ]
  %37 = phi i1 [ true, %26 ], [ false, %34 ], [ true, %31 ], [ true, %30 ], [ true, %32 ], [ true, %33 ]
  %38 = phi i64 [ 1, %26 ], [ 1, %34 ], [ 1, %31 ], [ 1, %30 ], [ %27, %32 ], [ %27, %33 ]
  %39 = phi i1 [ false, %26 ], [ false, %34 ], [ true, %31 ], [ true, %30 ], [ false, %32 ], [ false, %33 ]
  %40 = phi i64 [ 1, %26 ], [ 1, %34 ], [ 2, %31 ], [ 4, %30 ], [ 1, %32 ], [ 1, %33 ]
  %41 = phi i64 [ %27, %26 ], [ %27, %34 ], [ %27, %31 ], [ %27, %30 ], [ 1, %32 ], [ 1, %33 ]
  br i1 %37, label %1293, label %42

42:                                               ; preds = %35
  %43 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %7) #19
  %44 = icmp eq ptr %43, null
  br i1 %44, label %3151, label %45

45:                                               ; preds = %42
  %46 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %43, i32 noundef 1) #19
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %3143, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.KernelInfo, ptr %4, i64 0, i32 3
  %50 = load i64, ptr %49, align 8, !tbaa !60
  %51 = getelementptr inbounds %struct.KernelInfo, ptr %4, i64 0, i32 4
  %52 = load i64, ptr %51, align 8, !tbaa !61
  switch i32 %2, label %62 [
    i32 7, label %53
    i32 21, label %53
  ]

53:                                               ; preds = %48, %48
  %54 = getelementptr inbounds %struct.KernelInfo, ptr %4, i64 0, i32 1
  %55 = load i64, ptr %54, align 8, !tbaa !58
  %56 = xor i64 %50, -1
  %57 = add i64 %55, %56
  %58 = getelementptr inbounds %struct.KernelInfo, ptr %4, i64 0, i32 2
  %59 = load i64, ptr %58, align 8, !tbaa !59
  %60 = xor i64 %52, -1
  %61 = add i64 %59, %60
  br label %62

62:                                               ; preds = %53, %48
  %63 = phi i64 [ %52, %48 ], [ %61, %53 ]
  %64 = phi i64 [ %50, %48 ], [ %57, %53 ]
  %65 = sub i64 0, %64
  %66 = tail call ptr @AcquireVirtualCacheView(ptr noundef %43, ptr noundef %7) #19
  %67 = tail call ptr @AcquireAuthenticCacheView(ptr noundef %43, ptr noundef %7) #19
  %68 = getelementptr inbounds %struct._Image, ptr %43, i64 0, i32 7
  %69 = load i64, ptr %68, align 8, !tbaa !117
  %70 = getelementptr inbounds %struct.KernelInfo, ptr %4, i64 0, i32 1
  %71 = load i64, ptr %70, align 8, !tbaa !58
  %72 = add i64 %69, -1
  %73 = add i64 %72, %71
  %74 = getelementptr inbounds %struct._Image, ptr %43, i64 0, i32 8
  %75 = load i64, ptr %74, align 8, !tbaa !129
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %77, label %667

77:                                               ; preds = %62
  %78 = add i64 %63, 1
  %79 = mul nsw i64 %73, %63
  %80 = add nsw i64 %79, %64
  %81 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 5
  %82 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 6
  %83 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 7
  %84 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 8
  %85 = getelementptr inbounds %struct._Image, ptr %43, i64 0, i32 1
  %86 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 9
  %87 = icmp eq i32 %2, 21
  %88 = icmp eq i32 %2, 7
  %89 = getelementptr inbounds %struct.KernelInfo, ptr %4, i64 0, i32 5
  %90 = getelementptr inbounds %struct.KernelInfo, ptr %4, i64 0, i32 2
  %91 = icmp slt i64 %63, 0
  %92 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 9
  %93 = icmp sgt i64 %64, 0
  %94 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 9
  %95 = getelementptr inbounds %struct.KernelInfo, ptr %4, i64 0, i32 5
  %96 = getelementptr inbounds %struct.KernelInfo, ptr %4, i64 0, i32 2
  %97 = icmp slt i64 %63, 0
  %98 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 9
  %99 = icmp sgt i64 %64, 0
  %100 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 9
  %101 = and i32 %1, 1
  %102 = icmp eq i32 %101, 0
  %103 = and i32 %1, 2
  %104 = icmp eq i32 %103, 0
  %105 = and i32 %1, 4
  %106 = icmp eq i32 %105, 0
  %107 = and i32 %1, 8
  %108 = icmp eq i32 %107, 0
  %109 = getelementptr inbounds %struct._Image, ptr %43, i64 0, i32 6
  %110 = and i32 %1, 32
  %111 = icmp eq i32 %110, 0
  %112 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 9
  %113 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 9
  %114 = getelementptr inbounds %struct._Image, ptr %43, i64 0, i32 47
  %115 = getelementptr inbounds %struct._Image, ptr %43, i64 0, i32 53
  %116 = getelementptr inbounds %struct._Image, ptr %43, i64 0, i32 48
  br label %121

117:                                              ; preds = %662
  %118 = add nuw nsw i64 %124, 1
  %119 = load i64, ptr %74, align 8, !tbaa !129
  %120 = icmp slt i64 %118, %119
  br i1 %120, label %121, label %667, !llvm.loop !130

121:                                              ; preds = %77, %117
  %122 = phi i32 [ 1, %77 ], [ %666, %117 ]
  %123 = phi i64 [ 0, %77 ], [ %664, %117 ]
  %124 = phi i64 [ 0, %77 ], [ %118, %117 ]
  %125 = phi i64 [ 0, %77 ], [ %663, %117 ]
  %126 = icmp eq i32 %122, 0
  br i1 %126, label %662, label %127

127:                                              ; preds = %121
  %128 = sub nsw i64 %124, %63
  %129 = call ptr @GetCacheViewVirtualPixels(ptr noundef %66, i64 noundef %65, i64 noundef %128, i64 noundef %73, i64 noundef %78, ptr noundef %7) #25
  %130 = load i64, ptr %68, align 8, !tbaa !117
  %131 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %67, i64 noundef 0, i64 noundef %124, i64 noundef %130, i64 noundef 1, ptr noundef %7) #25
  %132 = icmp eq ptr %129, null
  %133 = icmp eq ptr %131, null
  %134 = select i1 %132, i1 true, i1 %133
  br i1 %134, label %662, label %135

135:                                              ; preds = %127
  %136 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %66) #19
  %137 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %67) #19
  %138 = load i64, ptr %68, align 8, !tbaa !117
  %139 = icmp sgt i64 %138, 0
  br i1 %139, label %140, label %641

140:                                              ; preds = %135
  %141 = icmp ne ptr %137, null
  %142 = getelementptr inbounds i16, ptr %137, i64 %65
  %143 = icmp eq ptr %137, null
  %144 = getelementptr inbounds i16, ptr %137, i64 %65
  %145 = icmp eq ptr %137, null
  %146 = icmp eq ptr %137, null
  %147 = icmp eq ptr %136, null
  %148 = getelementptr inbounds i16, ptr %136, i64 %80
  %149 = icmp eq ptr %137, null
  br label %150

150:                                              ; preds = %140, %634
  %151 = phi i64 [ 0, %140 ], [ %638, %634 ]
  %152 = phi ptr [ %131, %140 ], [ %637, %634 ]
  %153 = phi ptr [ %129, %140 ], [ %636, %634 ]
  %154 = phi i64 [ %125, %140 ], [ %635, %634 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %14) #19
  call void @GetMagickPixelPacket(ptr noundef %43, ptr noundef nonnull %14) #19
  %155 = getelementptr inbounds %struct._PixelPacket, ptr %152, i64 0, i32 2
  %156 = load i16, ptr %155, align 2, !tbaa !131
  %157 = uitofp i16 %156 to float
  store float %157, ptr %81, align 8, !tbaa !132
  %158 = getelementptr inbounds %struct._PixelPacket, ptr %152, i64 0, i32 1
  %159 = load i16, ptr %158, align 2, !tbaa !135
  %160 = uitofp i16 %159 to float
  store float %160, ptr %82, align 4, !tbaa !136
  %161 = load i16, ptr %152, align 2, !tbaa !137
  %162 = uitofp i16 %161 to float
  store float %162, ptr %83, align 8, !tbaa !138
  %163 = getelementptr inbounds %struct._PixelPacket, ptr %152, i64 0, i32 3
  %164 = load i16, ptr %163, align 2, !tbaa !139
  %165 = uitofp i16 %164 to float
  store float %165, ptr %84, align 4, !tbaa !140
  %166 = load i32, ptr %85, align 4, !tbaa !141
  %167 = icmp eq i32 %166, 12
  %168 = and i1 %141, %167
  br i1 %168, label %169, label %172

169:                                              ; preds = %150
  %170 = load i16, ptr %137, align 2, !tbaa !46
  %171 = uitofp i16 %170 to float
  store float %171, ptr %86, align 8, !tbaa !142
  br label %172

172:                                              ; preds = %169, %150
  br i1 %87, label %369, label %173

173:                                              ; preds = %172
  %174 = fsub float 6.553500e+04, %165
  store float %174, ptr %84, align 4, !tbaa !140
  br i1 %88, label %175, label %535

175:                                              ; preds = %173
  %176 = load ptr, ptr %89, align 8, !tbaa !65
  %177 = load i64, ptr %70, align 8, !tbaa !58
  br i1 %91, label %288, label %178

178:                                              ; preds = %175
  %179 = load float, ptr %84, align 4, !tbaa !140
  %180 = load float, ptr %83, align 8, !tbaa !138
  %181 = load float, ptr %82, align 4, !tbaa !136
  %182 = load float, ptr %81, align 8, !tbaa !132
  %183 = load i64, ptr %90, align 8, !tbaa !59
  %184 = mul i64 %183, %177
  %185 = getelementptr double, ptr %176, i64 %184
  %186 = getelementptr double, ptr %185, i64 -1
  %187 = icmp sgt i64 %177, 0
  %188 = load float, ptr %92, align 8, !tbaa !142
  br label %189

189:                                              ; preds = %178, %277
  %190 = phi float [ %188, %178 ], [ %278, %277 ]
  %191 = phi ptr [ %136, %178 ], [ %285, %277 ]
  %192 = phi ptr [ %153, %178 ], [ %284, %277 ]
  %193 = phi ptr [ %186, %178 ], [ %283, %277 ]
  %194 = phi i64 [ 0, %178 ], [ %286, %277 ]
  %195 = phi float [ %182, %178 ], [ %282, %277 ]
  %196 = phi float [ %181, %178 ], [ %281, %277 ]
  %197 = phi float [ %180, %178 ], [ %280, %277 ]
  %198 = phi float [ %179, %178 ], [ %279, %277 ]
  br i1 %187, label %199, label %277

199:                                              ; preds = %189
  %200 = icmp eq ptr %191, null
  br label %201

201:                                              ; preds = %199, %263
  %202 = phi float [ %190, %199 ], [ %264, %263 ]
  %203 = phi float [ %198, %199 ], [ %265, %263 ]
  %204 = phi float [ %197, %199 ], [ %266, %263 ]
  %205 = phi float [ %196, %199 ], [ %267, %263 ]
  %206 = phi float [ %195, %199 ], [ %268, %263 ]
  %207 = phi float [ %190, %199 ], [ %269, %263 ]
  %208 = phi ptr [ %193, %199 ], [ %275, %263 ]
  %209 = phi i64 [ 0, %199 ], [ %274, %263 ]
  %210 = phi float [ %195, %199 ], [ %273, %263 ]
  %211 = phi float [ %196, %199 ], [ %272, %263 ]
  %212 = phi float [ %197, %199 ], [ %271, %263 ]
  %213 = phi float [ %198, %199 ], [ %270, %263 ]
  %214 = load double, ptr %208, align 8, !tbaa !68
  %215 = fcmp uno double %214, 0.000000e+00
  br i1 %215, label %263, label %216

216:                                              ; preds = %201
  %217 = fpext float %210 to double
  %218 = getelementptr inbounds %struct._PixelPacket, ptr %192, i64 %209
  %219 = getelementptr inbounds %struct._PixelPacket, ptr %192, i64 %209, i32 2
  %220 = load i16, ptr %219, align 2, !tbaa !131
  %221 = uitofp i16 %220 to double
  %222 = fadd double %214, %221
  %223 = fcmp ogt double %222, %217
  %224 = fptrunc double %222 to float
  %225 = select i1 %223, float %210, float %224
  store float %225, ptr %81, align 8, !tbaa !132
  %226 = fpext float %211 to double
  %227 = getelementptr inbounds %struct._PixelPacket, ptr %192, i64 %209, i32 1
  %228 = load i16, ptr %227, align 2, !tbaa !135
  %229 = uitofp i16 %228 to double
  %230 = fadd double %214, %229
  %231 = fcmp ogt double %230, %226
  %232 = fptrunc double %230 to float
  %233 = select i1 %231, float %211, float %232
  store float %233, ptr %82, align 4, !tbaa !136
  %234 = fpext float %212 to double
  %235 = load i16, ptr %218, align 2, !tbaa !137
  %236 = uitofp i16 %235 to double
  %237 = fadd double %214, %236
  %238 = fcmp ogt double %237, %234
  %239 = fptrunc double %237 to float
  %240 = select i1 %238, float %212, float %239
  store float %240, ptr %83, align 8, !tbaa !138
  %241 = fpext float %213 to double
  %242 = fadd double %214, 6.553500e+04
  %243 = getelementptr inbounds %struct._PixelPacket, ptr %192, i64 %209, i32 3
  %244 = load i16, ptr %243, align 2, !tbaa !139
  %245 = uitofp i16 %244 to double
  %246 = fsub double %242, %245
  %247 = fcmp ogt double %246, %241
  %248 = fptrunc double %246 to float
  %249 = select i1 %247, float %213, float %248
  store float %249, ptr %84, align 4, !tbaa !140
  br i1 %167, label %250, label %263

250:                                              ; preds = %216
  %251 = fpext float %207 to double
  br i1 %200, label %256, label %252

252:                                              ; preds = %250
  %253 = getelementptr inbounds i16, ptr %191, i64 %209
  %254 = load i16, ptr %253, align 2, !tbaa !46
  %255 = zext i16 %254 to i32
  br label %256

256:                                              ; preds = %252, %250
  %257 = phi i32 [ %255, %252 ], [ 0, %250 ]
  %258 = sitofp i32 %257 to double
  %259 = fadd double %214, %258
  %260 = fcmp ogt double %259, %251
  %261 = fptrunc double %259 to float
  %262 = select i1 %260, float %207, float %261
  store float %262, ptr %92, align 8, !tbaa !142
  br label %263

263:                                              ; preds = %256, %216, %201
  %264 = phi float [ %262, %256 ], [ %202, %216 ], [ %202, %201 ]
  %265 = phi float [ %249, %256 ], [ %249, %216 ], [ %203, %201 ]
  %266 = phi float [ %240, %256 ], [ %240, %216 ], [ %204, %201 ]
  %267 = phi float [ %233, %256 ], [ %233, %216 ], [ %205, %201 ]
  %268 = phi float [ %225, %256 ], [ %225, %216 ], [ %206, %201 ]
  %269 = phi float [ %262, %256 ], [ %207, %216 ], [ %207, %201 ]
  %270 = phi float [ %249, %256 ], [ %249, %216 ], [ %213, %201 ]
  %271 = phi float [ %240, %256 ], [ %240, %216 ], [ %212, %201 ]
  %272 = phi float [ %233, %256 ], [ %233, %216 ], [ %211, %201 ]
  %273 = phi float [ %225, %256 ], [ %225, %216 ], [ %210, %201 ]
  %274 = add nuw nsw i64 %209, 1
  %275 = getelementptr inbounds double, ptr %208, i64 -1
  %276 = icmp eq i64 %274, %177
  br i1 %276, label %277, label %201, !llvm.loop !143

277:                                              ; preds = %263, %189
  %278 = phi float [ %190, %189 ], [ %264, %263 ]
  %279 = phi float [ %198, %189 ], [ %265, %263 ]
  %280 = phi float [ %197, %189 ], [ %266, %263 ]
  %281 = phi float [ %196, %189 ], [ %267, %263 ]
  %282 = phi float [ %195, %189 ], [ %268, %263 ]
  %283 = phi ptr [ %193, %189 ], [ %275, %263 ]
  %284 = getelementptr inbounds %struct._PixelPacket, ptr %192, i64 %73
  %285 = getelementptr inbounds i16, ptr %191, i64 %73
  %286 = add nuw i64 %194, 1
  %287 = icmp eq i64 %194, %63
  br i1 %287, label %288, label %189, !llvm.loop !144

288:                                              ; preds = %277, %175
  %289 = getelementptr inbounds %struct._PixelPacket, ptr %152, i64 %65
  br i1 %93, label %290, label %482

290:                                              ; preds = %288
  %291 = load i64, ptr %51, align 8, !tbaa !61
  %292 = add nsw i64 %291, 1
  %293 = mul i64 %292, %177
  %294 = getelementptr double, ptr %176, i64 %293
  %295 = load float, ptr %84, align 4, !tbaa !140
  %296 = load float, ptr %83, align 8, !tbaa !138
  %297 = load float, ptr %82, align 4, !tbaa !136
  %298 = load float, ptr %81, align 8, !tbaa !132
  %299 = load float, ptr %94, align 8, !tbaa !142
  br label %300

300:                                              ; preds = %290, %361
  %301 = phi float [ %299, %290 ], [ %362, %361 ]
  %302 = phi ptr [ %294, %290 ], [ %308, %361 ]
  %303 = phi i64 [ 0, %290 ], [ %367, %361 ]
  %304 = phi float [ %298, %290 ], [ %366, %361 ]
  %305 = phi float [ %297, %290 ], [ %365, %361 ]
  %306 = phi float [ %296, %290 ], [ %364, %361 ]
  %307 = phi float [ %295, %290 ], [ %363, %361 ]
  %308 = getelementptr inbounds double, ptr %302, i64 -1
  %309 = add nuw nsw i64 %303, %151
  %310 = icmp slt i64 %309, %64
  br i1 %310, label %361, label %311

311:                                              ; preds = %300
  %312 = load double, ptr %308, align 8, !tbaa !68
  %313 = fcmp uno double %312, 0.000000e+00
  br i1 %313, label %361, label %314

314:                                              ; preds = %311
  %315 = fpext float %304 to double
  %316 = getelementptr inbounds %struct._PixelPacket, ptr %289, i64 %303
  %317 = getelementptr inbounds %struct._PixelPacket, ptr %289, i64 %303, i32 2
  %318 = load i16, ptr %317, align 2, !tbaa !131
  %319 = uitofp i16 %318 to double
  %320 = fadd double %312, %319
  %321 = fcmp ogt double %320, %315
  %322 = fptrunc double %320 to float
  %323 = select i1 %321, float %304, float %322
  store float %323, ptr %81, align 8, !tbaa !132
  %324 = fpext float %305 to double
  %325 = getelementptr inbounds %struct._PixelPacket, ptr %289, i64 %303, i32 1
  %326 = load i16, ptr %325, align 2, !tbaa !135
  %327 = uitofp i16 %326 to double
  %328 = fadd double %312, %327
  %329 = fcmp ogt double %328, %324
  %330 = fptrunc double %328 to float
  %331 = select i1 %329, float %305, float %330
  store float %331, ptr %82, align 4, !tbaa !136
  %332 = fpext float %306 to double
  %333 = load i16, ptr %316, align 2, !tbaa !137
  %334 = uitofp i16 %333 to double
  %335 = fadd double %312, %334
  %336 = fcmp ogt double %335, %332
  %337 = fptrunc double %335 to float
  %338 = select i1 %336, float %306, float %337
  store float %338, ptr %83, align 8, !tbaa !138
  %339 = fpext float %307 to double
  %340 = fadd double %312, 6.553500e+04
  %341 = getelementptr inbounds %struct._PixelPacket, ptr %289, i64 %303, i32 3
  %342 = load i16, ptr %341, align 2, !tbaa !139
  %343 = uitofp i16 %342 to double
  %344 = fsub double %340, %343
  %345 = fcmp ogt double %344, %339
  %346 = fptrunc double %344 to float
  %347 = select i1 %345, float %307, float %346
  store float %347, ptr %84, align 4, !tbaa !140
  br i1 %167, label %348, label %361

348:                                              ; preds = %314
  %349 = fpext float %301 to double
  br i1 %143, label %354, label %350

350:                                              ; preds = %348
  %351 = getelementptr inbounds i16, ptr %142, i64 %303
  %352 = load i16, ptr %351, align 2, !tbaa !46
  %353 = zext i16 %352 to i32
  br label %354

354:                                              ; preds = %350, %348
  %355 = phi i32 [ %353, %350 ], [ 0, %348 ]
  %356 = sitofp i32 %355 to double
  %357 = fadd double %312, %356
  %358 = fcmp ogt double %357, %349
  %359 = fptrunc double %357 to float
  %360 = select i1 %358, float %301, float %359
  store float %360, ptr %94, align 8, !tbaa !142
  br label %361

361:                                              ; preds = %354, %314, %311, %300
  %362 = phi float [ %360, %354 ], [ %301, %314 ], [ %301, %311 ], [ %301, %300 ]
  %363 = phi float [ %347, %354 ], [ %347, %314 ], [ %307, %311 ], [ %307, %300 ]
  %364 = phi float [ %338, %354 ], [ %338, %314 ], [ %306, %311 ], [ %306, %300 ]
  %365 = phi float [ %331, %354 ], [ %331, %314 ], [ %305, %311 ], [ %305, %300 ]
  %366 = phi float [ %323, %354 ], [ %323, %314 ], [ %304, %311 ], [ %304, %300 ]
  %367 = add nuw nsw i64 %303, 1
  %368 = icmp eq i64 %367, %64
  br i1 %368, label %482, label %300, !llvm.loop !145

369:                                              ; preds = %172
  %370 = load ptr, ptr %95, align 8, !tbaa !65
  %371 = load i64, ptr %70, align 8, !tbaa !58
  br i1 %97, label %434, label %372

372:                                              ; preds = %369
  %373 = load float, ptr %84, align 4, !tbaa !140
  %374 = load i64, ptr %96, align 8, !tbaa !59
  %375 = mul i64 %374, %371
  %376 = getelementptr double, ptr %370, i64 %375
  %377 = getelementptr double, ptr %376, i64 -1
  %378 = icmp sgt i64 %371, 0
  br label %379

379:                                              ; preds = %372, %427
  %380 = phi ptr [ %136, %372 ], [ %431, %427 ]
  %381 = phi ptr [ %153, %372 ], [ %430, %427 ]
  %382 = phi ptr [ %377, %372 ], [ %429, %427 ]
  %383 = phi i64 [ 0, %372 ], [ %432, %427 ]
  %384 = phi float [ %373, %372 ], [ %428, %427 ]
  br i1 %378, label %385, label %427

385:                                              ; preds = %379
  %386 = icmp ne ptr %380, null
  %387 = and i1 %167, %386
  br label %388

388:                                              ; preds = %385, %421
  %389 = phi float [ %384, %385 ], [ %422, %421 ]
  %390 = phi ptr [ %382, %385 ], [ %425, %421 ]
  %391 = phi i64 [ 0, %385 ], [ %424, %421 ]
  %392 = phi float [ %384, %385 ], [ %423, %421 ]
  %393 = load double, ptr %390, align 8, !tbaa !68
  %394 = fcmp uno double %393, 0.000000e+00
  br i1 %394, label %421, label %395

395:                                              ; preds = %388
  %396 = fpext float %392 to double
  %397 = getelementptr inbounds %struct._PixelPacket, ptr %381, i64 %391, i32 3
  %398 = load i16, ptr %397, align 2, !tbaa !139
  %399 = uitofp i16 %398 to double
  %400 = fadd double %393, %399
  %401 = fcmp olt double %400, %396
  br i1 %401, label %402, label %421

402:                                              ; preds = %395
  %403 = getelementptr inbounds %struct._PixelPacket, ptr %381, i64 %391
  %404 = getelementptr inbounds %struct._PixelPacket, ptr %381, i64 %391, i32 2
  %405 = load i16, ptr %404, align 2, !tbaa !131
  %406 = uitofp i16 %405 to float
  store float %406, ptr %81, align 8, !tbaa !132
  %407 = getelementptr inbounds %struct._PixelPacket, ptr %381, i64 %391, i32 1
  %408 = load i16, ptr %407, align 2, !tbaa !135
  %409 = uitofp i16 %408 to float
  store float %409, ptr %82, align 4, !tbaa !136
  %410 = load i16, ptr %403, align 2, !tbaa !137
  %411 = uitofp i16 %410 to float
  store float %411, ptr %83, align 8, !tbaa !138
  %412 = uitofp i16 %398 to float
  store float %412, ptr %84, align 4, !tbaa !140
  br i1 %387, label %413, label %417

413:                                              ; preds = %402
  %414 = getelementptr inbounds i16, ptr %380, i64 %391
  %415 = load i16, ptr %414, align 2, !tbaa !46
  %416 = uitofp i16 %415 to float
  store float %416, ptr %98, align 8, !tbaa !142
  br label %417

417:                                              ; preds = %413, %402
  %418 = uitofp i16 %398 to double
  %419 = fadd double %393, %418
  %420 = fptrunc double %419 to float
  store float %420, ptr %84, align 4, !tbaa !140
  br label %421

421:                                              ; preds = %417, %395, %388
  %422 = phi float [ %420, %417 ], [ %389, %395 ], [ %389, %388 ]
  %423 = phi float [ %420, %417 ], [ %392, %395 ], [ %392, %388 ]
  %424 = add nuw nsw i64 %391, 1
  %425 = getelementptr inbounds double, ptr %390, i64 -1
  %426 = icmp eq i64 %424, %371
  br i1 %426, label %427, label %388, !llvm.loop !146

427:                                              ; preds = %421, %379
  %428 = phi float [ %384, %379 ], [ %422, %421 ]
  %429 = phi ptr [ %382, %379 ], [ %425, %421 ]
  %430 = getelementptr inbounds %struct._PixelPacket, ptr %381, i64 %73
  %431 = getelementptr inbounds i16, ptr %380, i64 %73
  %432 = add nuw i64 %383, 1
  %433 = icmp eq i64 %383, %63
  br i1 %433, label %434, label %379, !llvm.loop !147

434:                                              ; preds = %427, %369
  %435 = getelementptr inbounds %struct._PixelPacket, ptr %152, i64 %65
  br i1 %99, label %436, label %482

436:                                              ; preds = %434
  %437 = load float, ptr %84, align 4, !tbaa !140
  %438 = load i64, ptr %51, align 8, !tbaa !61
  %439 = add nsw i64 %438, 1
  %440 = mul i64 %439, %371
  %441 = getelementptr double, ptr %370, i64 %440
  br label %442

442:                                              ; preds = %436, %478
  %443 = phi ptr [ %446, %478 ], [ %441, %436 ]
  %444 = phi i64 [ %480, %478 ], [ 0, %436 ]
  %445 = phi float [ %479, %478 ], [ %437, %436 ]
  %446 = getelementptr inbounds double, ptr %443, i64 -1
  %447 = add nuw nsw i64 %444, %151
  %448 = icmp slt i64 %447, %64
  br i1 %448, label %478, label %449

449:                                              ; preds = %442
  %450 = load double, ptr %446, align 8, !tbaa !68
  %451 = fcmp uno double %450, 0.000000e+00
  br i1 %451, label %478, label %452

452:                                              ; preds = %449
  %453 = fpext float %445 to double
  %454 = getelementptr inbounds %struct._PixelPacket, ptr %435, i64 %444, i32 3
  %455 = load i16, ptr %454, align 2, !tbaa !139
  %456 = uitofp i16 %455 to double
  %457 = fadd double %450, %456
  %458 = fcmp olt double %457, %453
  br i1 %458, label %459, label %478

459:                                              ; preds = %452
  %460 = getelementptr inbounds %struct._PixelPacket, ptr %435, i64 %444
  %461 = getelementptr inbounds %struct._PixelPacket, ptr %435, i64 %444, i32 2
  %462 = load i16, ptr %461, align 2, !tbaa !131
  %463 = uitofp i16 %462 to float
  store float %463, ptr %81, align 8, !tbaa !132
  %464 = getelementptr inbounds %struct._PixelPacket, ptr %435, i64 %444, i32 1
  %465 = load i16, ptr %464, align 2, !tbaa !135
  %466 = uitofp i16 %465 to float
  store float %466, ptr %82, align 4, !tbaa !136
  %467 = load i16, ptr %460, align 2, !tbaa !137
  %468 = uitofp i16 %467 to float
  store float %468, ptr %83, align 8, !tbaa !138
  %469 = uitofp i16 %455 to float
  store float %469, ptr %84, align 4, !tbaa !140
  br i1 %168, label %470, label %474

470:                                              ; preds = %459
  %471 = getelementptr inbounds i16, ptr %144, i64 %444
  %472 = load i16, ptr %471, align 2, !tbaa !46
  %473 = uitofp i16 %472 to float
  store float %473, ptr %100, align 8, !tbaa !142
  br label %474

474:                                              ; preds = %470, %459
  %475 = uitofp i16 %455 to double
  %476 = fadd double %450, %475
  %477 = fptrunc double %476 to float
  store float %477, ptr %84, align 4, !tbaa !140
  br label %478

478:                                              ; preds = %474, %452, %449, %442
  %479 = phi float [ %477, %474 ], [ %445, %452 ], [ %445, %449 ], [ %445, %442 ]
  %480 = add nuw nsw i64 %444, 1
  %481 = icmp eq i64 %480, %64
  br i1 %481, label %482, label %442, !llvm.loop !148

482:                                              ; preds = %361, %478, %288, %434
  br i1 %87, label %483, label %535

483:                                              ; preds = %482
  %484 = load float, ptr %81, align 8, !tbaa !132
  %485 = fcmp ugt float %484, 0.000000e+00
  br i1 %485, label %486, label %491

486:                                              ; preds = %483
  %487 = fcmp ult float %484, 6.553500e+04
  br i1 %487, label %488, label %491

488:                                              ; preds = %486
  %489 = fadd float %484, 5.000000e-01
  %490 = fptoui float %489 to i16
  br label %491

491:                                              ; preds = %488, %486, %483
  %492 = phi i16 [ %490, %488 ], [ 0, %483 ], [ -1, %486 ]
  store i16 %492, ptr %155, align 2, !tbaa !131
  %493 = load float, ptr %82, align 4, !tbaa !136
  %494 = fcmp ugt float %493, 0.000000e+00
  br i1 %494, label %495, label %500

495:                                              ; preds = %491
  %496 = fcmp ult float %493, 6.553500e+04
  br i1 %496, label %497, label %500

497:                                              ; preds = %495
  %498 = fadd float %493, 5.000000e-01
  %499 = fptoui float %498 to i16
  br label %500

500:                                              ; preds = %497, %495, %491
  %501 = phi i16 [ %499, %497 ], [ 0, %491 ], [ -1, %495 ]
  store i16 %501, ptr %158, align 2, !tbaa !135
  %502 = load float, ptr %83, align 8, !tbaa !138
  %503 = fcmp ugt float %502, 0.000000e+00
  br i1 %503, label %504, label %509

504:                                              ; preds = %500
  %505 = fcmp ult float %502, 6.553500e+04
  br i1 %505, label %506, label %509

506:                                              ; preds = %504
  %507 = fadd float %502, 5.000000e-01
  %508 = fptoui float %507 to i16
  br label %509

509:                                              ; preds = %506, %504, %500
  %510 = phi i16 [ %508, %506 ], [ 0, %500 ], [ -1, %504 ]
  store i16 %510, ptr %152, align 2, !tbaa !137
  %511 = load float, ptr %84, align 4, !tbaa !140
  %512 = fcmp ugt float %511, 0.000000e+00
  br i1 %512, label %513, label %518

513:                                              ; preds = %509
  %514 = fcmp ult float %511, 6.553500e+04
  br i1 %514, label %515, label %518

515:                                              ; preds = %513
  %516 = fadd float %511, 5.000000e-01
  %517 = fptoui float %516 to i16
  br label %518

518:                                              ; preds = %515, %513, %509
  %519 = phi i16 [ %517, %515 ], [ 0, %509 ], [ -1, %513 ]
  store i16 %519, ptr %163, align 2, !tbaa !139
  br i1 %167, label %524, label %520

520:                                              ; preds = %518
  %521 = load i32, ptr %43, align 8, !tbaa !149
  %522 = icmp eq i32 %521, 2
  %523 = and i1 %141, %522
  br i1 %523, label %525, label %598

524:                                              ; preds = %518
  br i1 %146, label %598, label %525

525:                                              ; preds = %524, %520
  %526 = load float, ptr %113, align 8, !tbaa !142
  %527 = fcmp ugt float %526, 0.000000e+00
  br i1 %527, label %528, label %533

528:                                              ; preds = %525
  %529 = fcmp ult float %526, 6.553500e+04
  br i1 %529, label %530, label %533

530:                                              ; preds = %528
  %531 = fadd float %526, 5.000000e-01
  %532 = fptoui float %531 to i16
  br label %533

533:                                              ; preds = %530, %528, %525
  %534 = phi i16 [ %532, %530 ], [ 0, %525 ], [ -1, %528 ]
  store i16 %534, ptr %137, align 2, !tbaa !46
  br label %598

535:                                              ; preds = %482, %173
  br i1 %102, label %546, label %536

536:                                              ; preds = %535
  %537 = load float, ptr %81, align 8, !tbaa !132
  %538 = fcmp ugt float %537, 0.000000e+00
  br i1 %538, label %539, label %544

539:                                              ; preds = %536
  %540 = fcmp ult float %537, 6.553500e+04
  br i1 %540, label %541, label %544

541:                                              ; preds = %539
  %542 = fadd float %537, 5.000000e-01
  %543 = fptoui float %542 to i16
  br label %544

544:                                              ; preds = %541, %539, %536
  %545 = phi i16 [ %543, %541 ], [ 0, %536 ], [ -1, %539 ]
  store i16 %545, ptr %155, align 2, !tbaa !131
  br label %546

546:                                              ; preds = %544, %535
  br i1 %104, label %557, label %547

547:                                              ; preds = %546
  %548 = load float, ptr %82, align 4, !tbaa !136
  %549 = fcmp ugt float %548, 0.000000e+00
  br i1 %549, label %550, label %555

550:                                              ; preds = %547
  %551 = fcmp ult float %548, 6.553500e+04
  br i1 %551, label %552, label %555

552:                                              ; preds = %550
  %553 = fadd float %548, 5.000000e-01
  %554 = fptoui float %553 to i16
  br label %555

555:                                              ; preds = %552, %550, %547
  %556 = phi i16 [ %554, %552 ], [ 0, %547 ], [ -1, %550 ]
  store i16 %556, ptr %158, align 2, !tbaa !135
  br label %557

557:                                              ; preds = %555, %546
  br i1 %106, label %568, label %558

558:                                              ; preds = %557
  %559 = load float, ptr %83, align 8, !tbaa !138
  %560 = fcmp ugt float %559, 0.000000e+00
  br i1 %560, label %561, label %566

561:                                              ; preds = %558
  %562 = fcmp ult float %559, 6.553500e+04
  br i1 %562, label %563, label %566

563:                                              ; preds = %561
  %564 = fadd float %559, 5.000000e-01
  %565 = fptoui float %564 to i16
  br label %566

566:                                              ; preds = %563, %561, %558
  %567 = phi i16 [ %565, %563 ], [ 0, %558 ], [ -1, %561 ]
  store i16 %567, ptr %152, align 2, !tbaa !137
  br label %568

568:                                              ; preds = %566, %557
  br i1 %108, label %583, label %569

569:                                              ; preds = %568
  %570 = load i32, ptr %109, align 8, !tbaa !150
  %571 = icmp eq i32 %570, 0
  br i1 %571, label %583, label %572

572:                                              ; preds = %569
  %573 = load float, ptr %84, align 4, !tbaa !140
  %574 = fcmp ugt float %573, 0.000000e+00
  br i1 %574, label %575, label %580

575:                                              ; preds = %572
  %576 = fcmp ult float %573, 6.553500e+04
  br i1 %576, label %577, label %580

577:                                              ; preds = %575
  %578 = fadd float %573, 5.000000e-01
  %579 = fptoui float %578 to i16
  br label %580

580:                                              ; preds = %577, %575, %572
  %581 = phi i16 [ %579, %577 ], [ 0, %572 ], [ -1, %575 ]
  %582 = xor i16 %581, -1
  store i16 %582, ptr %163, align 2, !tbaa !139
  br label %583

583:                                              ; preds = %580, %569, %568
  %584 = icmp ne i32 %166, 12
  %585 = or i1 %111, %584
  %586 = select i1 %585, i1 true, i1 %145
  br i1 %586, label %598, label %587

587:                                              ; preds = %583
  %588 = getelementptr inbounds i16, ptr %137, i64 %151
  %589 = load float, ptr %112, align 8, !tbaa !142
  %590 = fcmp ugt float %589, 0.000000e+00
  br i1 %590, label %591, label %596

591:                                              ; preds = %587
  %592 = fcmp ult float %589, 6.553500e+04
  br i1 %592, label %593, label %596

593:                                              ; preds = %591
  %594 = fadd float %589, 5.000000e-01
  %595 = fptoui float %594 to i16
  br label %596

596:                                              ; preds = %593, %591, %587
  %597 = phi i16 [ %595, %593 ], [ 0, %587 ], [ -1, %591 ]
  store i16 %597, ptr %588, align 2, !tbaa !46
  br label %598

598:                                              ; preds = %596, %583, %533, %524, %520
  %599 = getelementptr inbounds %struct._PixelPacket, ptr %153, i64 %80
  %600 = getelementptr inbounds %struct._PixelPacket, ptr %153, i64 %80, i32 2
  %601 = load i16, ptr %600, align 2, !tbaa !131
  %602 = load i16, ptr %155, align 2, !tbaa !131
  %603 = icmp eq i16 %601, %602
  br i1 %603, label %604, label %632

604:                                              ; preds = %598
  %605 = getelementptr inbounds %struct._PixelPacket, ptr %153, i64 %80, i32 1
  %606 = load i16, ptr %605, align 2, !tbaa !135
  %607 = load i16, ptr %158, align 2, !tbaa !135
  %608 = icmp eq i16 %606, %607
  br i1 %608, label %609, label %632

609:                                              ; preds = %604
  %610 = load i16, ptr %599, align 2, !tbaa !137
  %611 = load i16, ptr %152, align 2, !tbaa !137
  %612 = icmp eq i16 %610, %611
  br i1 %612, label %613, label %632

613:                                              ; preds = %609
  %614 = getelementptr inbounds %struct._PixelPacket, ptr %153, i64 %80, i32 3
  %615 = load i16, ptr %614, align 2, !tbaa !139
  %616 = load i16, ptr %163, align 2, !tbaa !139
  %617 = icmp eq i16 %615, %616
  br i1 %617, label %618, label %632

618:                                              ; preds = %613
  br i1 %167, label %619, label %634

619:                                              ; preds = %618
  br i1 %147, label %623, label %620

620:                                              ; preds = %619
  %621 = load i16, ptr %148, align 2, !tbaa !46
  %622 = zext i16 %621 to i32
  br label %623

623:                                              ; preds = %620, %619
  %624 = phi i32 [ %622, %620 ], [ 0, %619 ]
  br i1 %149, label %629, label %625

625:                                              ; preds = %623
  %626 = getelementptr inbounds i16, ptr %137, i64 %151
  %627 = load i16, ptr %626, align 2, !tbaa !46
  %628 = zext i16 %627 to i32
  br label %629

629:                                              ; preds = %625, %623
  %630 = phi i32 [ %628, %625 ], [ 0, %623 ]
  %631 = icmp eq i32 %624, %630
  br i1 %631, label %634, label %632

632:                                              ; preds = %629, %613, %609, %604, %598
  %633 = add i64 %154, 1
  br label %634

634:                                              ; preds = %632, %629, %618
  %635 = phi i64 [ %633, %632 ], [ %154, %629 ], [ %154, %618 ]
  %636 = getelementptr inbounds %struct._PixelPacket, ptr %153, i64 1
  %637 = getelementptr inbounds %struct._PixelPacket, ptr %152, i64 1
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %14) #19
  %638 = add nuw nsw i64 %151, 1
  %639 = load i64, ptr %68, align 8, !tbaa !117
  %640 = icmp slt i64 %638, %639
  br i1 %640, label %150, label %641, !llvm.loop !151

641:                                              ; preds = %634, %135
  %642 = phi i64 [ %125, %135 ], [ %635, %634 ]
  %643 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %67, ptr noundef %7) #25
  %644 = icmp ne i32 %643, 0
  %645 = zext i1 %644 to i32
  %646 = load ptr, ptr %114, align 8, !tbaa !152
  %647 = icmp eq ptr %646, null
  br i1 %647, label %662, label %648

648:                                              ; preds = %641
  %649 = add nsw i64 %123, 1
  %650 = load i64, ptr %74, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %13) #19
  %651 = load ptr, ptr %114, align 8, !tbaa !152
  %652 = icmp eq ptr %651, null
  br i1 %652, label %658, label %653

653:                                              ; preds = %648
  %654 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %13, i64 noundef 4096, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.110, ptr noundef nonnull %115) #19
  %655 = load ptr, ptr %114, align 8, !tbaa !152
  %656 = load ptr, ptr %116, align 8, !tbaa !153
  %657 = call i32 %655(ptr noundef nonnull %13, i64 noundef %123, i64 noundef %650, ptr noundef %656) #19
  br label %658

658:                                              ; preds = %653, %648
  %659 = phi i32 [ %657, %653 ], [ 1, %648 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %13) #19
  %660 = icmp eq i32 %659, 0
  %661 = select i1 %660, i32 0, i32 %645
  br label %662

662:                                              ; preds = %658, %641, %127, %121
  %663 = phi i64 [ %125, %121 ], [ %125, %127 ], [ %642, %658 ], [ %642, %641 ]
  %664 = phi i64 [ %123, %121 ], [ %123, %127 ], [ %649, %658 ], [ %123, %641 ]
  %665 = phi i1 [ false, %121 ], [ false, %127 ], [ true, %658 ], [ true, %641 ]
  %666 = phi i32 [ 0, %121 ], [ 0, %127 ], [ %661, %658 ], [ %645, %641 ]
  br i1 %665, label %117, label %667

667:                                              ; preds = %117, %662, %62
  %668 = phi i64 [ 0, %62 ], [ %663, %662 ], [ %663, %117 ]
  %669 = phi i64 [ 0, %62 ], [ %664, %662 ], [ %664, %117 ]
  %670 = phi i32 [ 1, %62 ], [ %666, %662 ], [ %666, %117 ]
  %671 = load i64, ptr %74, align 8, !tbaa !129
  %672 = sub nsw i64 0, %64
  %673 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 5
  %674 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 6
  %675 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 7
  %676 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 8
  %677 = getelementptr inbounds %struct._Image, ptr %43, i64 0, i32 1
  %678 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 9
  %679 = icmp eq i32 %2, 21
  %680 = icmp eq i32 %2, 7
  %681 = getelementptr inbounds %struct.KernelInfo, ptr %4, i64 0, i32 5
  %682 = getelementptr inbounds %struct.KernelInfo, ptr %4, i64 0, i32 2
  %683 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 9
  %684 = add nsw i64 %64, 1
  %685 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 9
  %686 = getelementptr inbounds %struct.KernelInfo, ptr %4, i64 0, i32 5
  %687 = getelementptr inbounds %struct.KernelInfo, ptr %4, i64 0, i32 2
  %688 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 9
  %689 = add nsw i64 %64, 1
  %690 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 9
  %691 = and i32 %1, 1
  %692 = icmp eq i32 %691, 0
  %693 = and i32 %1, 2
  %694 = icmp eq i32 %693, 0
  %695 = and i32 %1, 4
  %696 = icmp eq i32 %695, 0
  %697 = and i32 %1, 8
  %698 = icmp eq i32 %697, 0
  %699 = getelementptr inbounds %struct._Image, ptr %43, i64 0, i32 6
  %700 = and i32 %1, 32
  %701 = icmp eq i32 %700, 0
  %702 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 9
  %703 = getelementptr inbounds %struct._MagickPixelPacket, ptr %15, i64 0, i32 9
  %704 = getelementptr inbounds %struct._Image, ptr %43, i64 0, i32 47
  %705 = getelementptr inbounds %struct._Image, ptr %43, i64 0, i32 53
  %706 = getelementptr inbounds %struct._Image, ptr %43, i64 0, i32 48
  br label %707

707:                                              ; preds = %1266, %667
  %708 = phi i64 [ %668, %667 ], [ %1267, %1266 ]
  %709 = phi i64 [ %671, %667 ], [ %712, %1266 ]
  %710 = phi i64 [ %669, %667 ], [ %1268, %1266 ]
  %711 = phi i32 [ %670, %667 ], [ %1270, %1266 ]
  %712 = add nsw i64 %709, -1
  %713 = icmp sgt i64 %709, 0
  br i1 %713, label %714, label %1271

714:                                              ; preds = %707
  %715 = icmp eq i32 %711, 0
  br i1 %715, label %1266, label %716

716:                                              ; preds = %714
  %717 = load i64, ptr %51, align 8, !tbaa !61
  %718 = add i64 %717, 1
  %719 = call ptr @GetCacheViewVirtualPixels(ptr noundef %66, i64 noundef %672, i64 noundef %712, i64 noundef %73, i64 noundef %718, ptr noundef %7) #25
  %720 = load i64, ptr %68, align 8, !tbaa !117
  %721 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %67, i64 noundef 0, i64 noundef %712, i64 noundef %720, i64 noundef 1, ptr noundef %7) #25
  %722 = icmp eq ptr %719, null
  %723 = icmp eq ptr %721, null
  %724 = select i1 %722, i1 true, i1 %723
  br i1 %724, label %1266, label %725

725:                                              ; preds = %716
  %726 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %66) #19
  %727 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %67) #19
  %728 = load i64, ptr %68, align 8, !tbaa !117
  %729 = add i64 %728, -1
  %730 = icmp sgt i64 %729, -1
  br i1 %730, label %731, label %1245

731:                                              ; preds = %725
  %732 = getelementptr inbounds %struct._PixelPacket, ptr %721, i64 %729
  %733 = getelementptr inbounds %struct._PixelPacket, ptr %719, i64 %729
  %734 = icmp ne ptr %727, null
  %735 = getelementptr inbounds i16, ptr %727, i64 %672
  %736 = icmp eq ptr %727, null
  %737 = getelementptr inbounds i16, ptr %727, i64 %672
  %738 = icmp eq ptr %727, null
  %739 = icmp eq ptr %727, null
  %740 = icmp eq ptr %726, null
  %741 = getelementptr inbounds i16, ptr %726, i64 %64
  %742 = icmp eq ptr %727, null
  br label %743

743:                                              ; preds = %731, %1239
  %744 = phi i64 [ %729, %731 ], [ %1243, %1239 ]
  %745 = phi ptr [ %732, %731 ], [ %1242, %1239 ]
  %746 = phi ptr [ %733, %731 ], [ %1241, %1239 ]
  %747 = phi i64 [ %708, %731 ], [ %1240, %1239 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %15) #19
  call void @GetMagickPixelPacket(ptr noundef %43, ptr noundef nonnull %15) #19
  %748 = getelementptr inbounds %struct._PixelPacket, ptr %745, i64 0, i32 2
  %749 = load i16, ptr %748, align 2, !tbaa !131
  %750 = uitofp i16 %749 to float
  store float %750, ptr %673, align 8, !tbaa !132
  %751 = getelementptr inbounds %struct._PixelPacket, ptr %745, i64 0, i32 1
  %752 = load i16, ptr %751, align 2, !tbaa !135
  %753 = uitofp i16 %752 to float
  store float %753, ptr %674, align 4, !tbaa !136
  %754 = load i16, ptr %745, align 2, !tbaa !137
  %755 = uitofp i16 %754 to float
  store float %755, ptr %675, align 8, !tbaa !138
  %756 = getelementptr inbounds %struct._PixelPacket, ptr %745, i64 0, i32 3
  %757 = load i16, ptr %756, align 2, !tbaa !139
  %758 = uitofp i16 %757 to float
  store float %758, ptr %676, align 4, !tbaa !140
  %759 = load i32, ptr %677, align 4, !tbaa !141
  %760 = icmp eq i32 %759, 12
  %761 = and i1 %734, %760
  br i1 %761, label %762, label %765

762:                                              ; preds = %743
  %763 = load i16, ptr %727, align 2, !tbaa !46
  %764 = uitofp i16 %763 to float
  store float %764, ptr %678, align 8, !tbaa !142
  br label %765

765:                                              ; preds = %762, %743
  br i1 %679, label %968, label %766

766:                                              ; preds = %765
  %767 = fsub float 6.553500e+04, %758
  store float %767, ptr %676, align 4, !tbaa !140
  br i1 %680, label %768, label %1140

768:                                              ; preds = %766
  %769 = load ptr, ptr %681, align 8, !tbaa !65
  %770 = load i64, ptr %70, align 8, !tbaa !58
  %771 = load i64, ptr %51, align 8, !tbaa !61
  %772 = load i64, ptr %682, align 8, !tbaa !59
  %773 = icmp slt i64 %63, %772
  br i1 %773, label %774, label %884

774:                                              ; preds = %768
  %775 = load float, ptr %676, align 4, !tbaa !140
  %776 = load float, ptr %675, align 8, !tbaa !138
  %777 = load float, ptr %674, align 4, !tbaa !136
  %778 = load float, ptr %673, align 8, !tbaa !132
  %779 = add nsw i64 %771, 1
  %780 = mul i64 %779, %770
  %781 = getelementptr double, ptr %769, i64 %780
  %782 = getelementptr double, ptr %781, i64 -1
  %783 = icmp sgt i64 %770, 0
  %784 = load float, ptr %683, align 8, !tbaa !142
  br label %785

785:                                              ; preds = %774, %873
  %786 = phi float [ %784, %774 ], [ %874, %873 ]
  %787 = phi ptr [ %726, %774 ], [ %881, %873 ]
  %788 = phi ptr [ %746, %774 ], [ %880, %873 ]
  %789 = phi ptr [ %782, %774 ], [ %879, %873 ]
  %790 = phi i64 [ %63, %774 ], [ %882, %873 ]
  %791 = phi float [ %778, %774 ], [ %878, %873 ]
  %792 = phi float [ %777, %774 ], [ %877, %873 ]
  %793 = phi float [ %776, %774 ], [ %876, %873 ]
  %794 = phi float [ %775, %774 ], [ %875, %873 ]
  br i1 %783, label %795, label %873

795:                                              ; preds = %785
  %796 = icmp eq ptr %787, null
  br label %797

797:                                              ; preds = %795, %859
  %798 = phi float [ %786, %795 ], [ %860, %859 ]
  %799 = phi float [ %794, %795 ], [ %861, %859 ]
  %800 = phi float [ %793, %795 ], [ %862, %859 ]
  %801 = phi float [ %792, %795 ], [ %863, %859 ]
  %802 = phi float [ %791, %795 ], [ %864, %859 ]
  %803 = phi float [ %786, %795 ], [ %865, %859 ]
  %804 = phi ptr [ %789, %795 ], [ %871, %859 ]
  %805 = phi i64 [ 0, %795 ], [ %870, %859 ]
  %806 = phi float [ %791, %795 ], [ %869, %859 ]
  %807 = phi float [ %792, %795 ], [ %868, %859 ]
  %808 = phi float [ %793, %795 ], [ %867, %859 ]
  %809 = phi float [ %794, %795 ], [ %866, %859 ]
  %810 = load double, ptr %804, align 8, !tbaa !68
  %811 = fcmp uno double %810, 0.000000e+00
  br i1 %811, label %859, label %812

812:                                              ; preds = %797
  %813 = fpext float %806 to double
  %814 = getelementptr inbounds %struct._PixelPacket, ptr %788, i64 %805
  %815 = getelementptr inbounds %struct._PixelPacket, ptr %788, i64 %805, i32 2
  %816 = load i16, ptr %815, align 2, !tbaa !131
  %817 = uitofp i16 %816 to double
  %818 = fadd double %810, %817
  %819 = fcmp ogt double %818, %813
  %820 = fptrunc double %818 to float
  %821 = select i1 %819, float %806, float %820
  store float %821, ptr %673, align 8, !tbaa !132
  %822 = fpext float %807 to double
  %823 = getelementptr inbounds %struct._PixelPacket, ptr %788, i64 %805, i32 1
  %824 = load i16, ptr %823, align 2, !tbaa !135
  %825 = uitofp i16 %824 to double
  %826 = fadd double %810, %825
  %827 = fcmp ogt double %826, %822
  %828 = fptrunc double %826 to float
  %829 = select i1 %827, float %807, float %828
  store float %829, ptr %674, align 4, !tbaa !136
  %830 = fpext float %808 to double
  %831 = load i16, ptr %814, align 2, !tbaa !137
  %832 = uitofp i16 %831 to double
  %833 = fadd double %810, %832
  %834 = fcmp ogt double %833, %830
  %835 = fptrunc double %833 to float
  %836 = select i1 %834, float %808, float %835
  store float %836, ptr %675, align 8, !tbaa !138
  %837 = fpext float %809 to double
  %838 = fadd double %810, 6.553500e+04
  %839 = getelementptr inbounds %struct._PixelPacket, ptr %788, i64 %805, i32 3
  %840 = load i16, ptr %839, align 2, !tbaa !139
  %841 = uitofp i16 %840 to double
  %842 = fsub double %838, %841
  %843 = fcmp ogt double %842, %837
  %844 = fptrunc double %842 to float
  %845 = select i1 %843, float %809, float %844
  store float %845, ptr %676, align 4, !tbaa !140
  br i1 %760, label %846, label %859

846:                                              ; preds = %812
  %847 = fpext float %803 to double
  br i1 %796, label %852, label %848

848:                                              ; preds = %846
  %849 = getelementptr inbounds i16, ptr %787, i64 %805
  %850 = load i16, ptr %849, align 2, !tbaa !46
  %851 = zext i16 %850 to i32
  br label %852

852:                                              ; preds = %848, %846
  %853 = phi i32 [ %851, %848 ], [ 0, %846 ]
  %854 = sitofp i32 %853 to double
  %855 = fadd double %810, %854
  %856 = fcmp ogt double %855, %847
  %857 = fptrunc double %855 to float
  %858 = select i1 %856, float %803, float %857
  store float %858, ptr %683, align 8, !tbaa !142
  br label %859

859:                                              ; preds = %852, %812, %797
  %860 = phi float [ %858, %852 ], [ %798, %812 ], [ %798, %797 ]
  %861 = phi float [ %845, %852 ], [ %845, %812 ], [ %799, %797 ]
  %862 = phi float [ %836, %852 ], [ %836, %812 ], [ %800, %797 ]
  %863 = phi float [ %829, %852 ], [ %829, %812 ], [ %801, %797 ]
  %864 = phi float [ %821, %852 ], [ %821, %812 ], [ %802, %797 ]
  %865 = phi float [ %858, %852 ], [ %803, %812 ], [ %803, %797 ]
  %866 = phi float [ %845, %852 ], [ %845, %812 ], [ %809, %797 ]
  %867 = phi float [ %836, %852 ], [ %836, %812 ], [ %808, %797 ]
  %868 = phi float [ %829, %852 ], [ %829, %812 ], [ %807, %797 ]
  %869 = phi float [ %821, %852 ], [ %821, %812 ], [ %806, %797 ]
  %870 = add nuw nsw i64 %805, 1
  %871 = getelementptr inbounds double, ptr %804, i64 -1
  %872 = icmp eq i64 %870, %770
  br i1 %872, label %873, label %797, !llvm.loop !154

873:                                              ; preds = %859, %785
  %874 = phi float [ %786, %785 ], [ %860, %859 ]
  %875 = phi float [ %794, %785 ], [ %861, %859 ]
  %876 = phi float [ %793, %785 ], [ %862, %859 ]
  %877 = phi float [ %792, %785 ], [ %863, %859 ]
  %878 = phi float [ %791, %785 ], [ %864, %859 ]
  %879 = phi ptr [ %789, %785 ], [ %871, %859 ]
  %880 = getelementptr inbounds %struct._PixelPacket, ptr %788, i64 %73
  %881 = getelementptr inbounds i16, ptr %787, i64 %73
  %882 = add nsw i64 %790, 1
  %883 = icmp eq i64 %882, %772
  br i1 %883, label %884, label %785, !llvm.loop !155

884:                                              ; preds = %873, %768
  %885 = getelementptr inbounds %struct._PixelPacket, ptr %745, i64 %672
  %886 = icmp slt i64 %684, %770
  br i1 %886, label %887, label %1087

887:                                              ; preds = %884
  %888 = mul i64 %771, %770
  %889 = getelementptr double, ptr %769, i64 %888
  %890 = load i64, ptr %49, align 8, !tbaa !60
  %891 = getelementptr double, ptr %889, i64 %890
  %892 = load float, ptr %676, align 4, !tbaa !140
  %893 = load float, ptr %675, align 8, !tbaa !138
  %894 = load float, ptr %674, align 4, !tbaa !136
  %895 = load float, ptr %673, align 8, !tbaa !132
  %896 = sub i64 %744, %64
  %897 = load i64, ptr %68, align 8, !tbaa !117
  %898 = load float, ptr %685, align 8, !tbaa !142
  br label %899

899:                                              ; preds = %887, %960
  %900 = phi float [ %898, %887 ], [ %961, %960 ]
  %901 = phi i64 [ %684, %887 ], [ %966, %960 ]
  %902 = phi ptr [ %891, %887 ], [ %907, %960 ]
  %903 = phi float [ %895, %887 ], [ %965, %960 ]
  %904 = phi float [ %894, %887 ], [ %964, %960 ]
  %905 = phi float [ %893, %887 ], [ %963, %960 ]
  %906 = phi float [ %892, %887 ], [ %962, %960 ]
  %907 = getelementptr inbounds double, ptr %902, i64 -1
  %908 = add i64 %896, %901
  %909 = icmp slt i64 %908, %897
  br i1 %909, label %910, label %960

910:                                              ; preds = %899
  %911 = load double, ptr %907, align 8, !tbaa !68
  %912 = fcmp uno double %911, 0.000000e+00
  br i1 %912, label %960, label %913

913:                                              ; preds = %910
  %914 = fpext float %903 to double
  %915 = getelementptr inbounds %struct._PixelPacket, ptr %885, i64 %901
  %916 = getelementptr inbounds %struct._PixelPacket, ptr %885, i64 %901, i32 2
  %917 = load i16, ptr %916, align 2, !tbaa !131
  %918 = uitofp i16 %917 to double
  %919 = fadd double %911, %918
  %920 = fcmp ogt double %919, %914
  %921 = fptrunc double %919 to float
  %922 = select i1 %920, float %903, float %921
  store float %922, ptr %673, align 8, !tbaa !132
  %923 = fpext float %904 to double
  %924 = getelementptr inbounds %struct._PixelPacket, ptr %885, i64 %901, i32 1
  %925 = load i16, ptr %924, align 2, !tbaa !135
  %926 = uitofp i16 %925 to double
  %927 = fadd double %911, %926
  %928 = fcmp ogt double %927, %923
  %929 = fptrunc double %927 to float
  %930 = select i1 %928, float %904, float %929
  store float %930, ptr %674, align 4, !tbaa !136
  %931 = fpext float %905 to double
  %932 = load i16, ptr %915, align 2, !tbaa !137
  %933 = uitofp i16 %932 to double
  %934 = fadd double %911, %933
  %935 = fcmp ogt double %934, %931
  %936 = fptrunc double %934 to float
  %937 = select i1 %935, float %905, float %936
  store float %937, ptr %675, align 8, !tbaa !138
  %938 = fpext float %906 to double
  %939 = fadd double %911, 6.553500e+04
  %940 = getelementptr inbounds %struct._PixelPacket, ptr %885, i64 %901, i32 3
  %941 = load i16, ptr %940, align 2, !tbaa !139
  %942 = uitofp i16 %941 to double
  %943 = fsub double %939, %942
  %944 = fcmp ogt double %943, %938
  %945 = fptrunc double %943 to float
  %946 = select i1 %944, float %906, float %945
  store float %946, ptr %676, align 4, !tbaa !140
  br i1 %760, label %947, label %960

947:                                              ; preds = %913
  %948 = fpext float %900 to double
  br i1 %736, label %953, label %949

949:                                              ; preds = %947
  %950 = getelementptr inbounds i16, ptr %735, i64 %901
  %951 = load i16, ptr %950, align 2, !tbaa !46
  %952 = zext i16 %951 to i32
  br label %953

953:                                              ; preds = %949, %947
  %954 = phi i32 [ %952, %949 ], [ 0, %947 ]
  %955 = sitofp i32 %954 to double
  %956 = fadd double %911, %955
  %957 = fcmp ogt double %956, %948
  %958 = fptrunc double %956 to float
  %959 = select i1 %957, float %900, float %958
  store float %959, ptr %685, align 8, !tbaa !142
  br label %960

960:                                              ; preds = %953, %913, %910, %899
  %961 = phi float [ %959, %953 ], [ %900, %913 ], [ %900, %910 ], [ %900, %899 ]
  %962 = phi float [ %946, %953 ], [ %946, %913 ], [ %906, %910 ], [ %906, %899 ]
  %963 = phi float [ %937, %953 ], [ %937, %913 ], [ %905, %910 ], [ %905, %899 ]
  %964 = phi float [ %930, %953 ], [ %930, %913 ], [ %904, %910 ], [ %904, %899 ]
  %965 = phi float [ %922, %953 ], [ %922, %913 ], [ %903, %910 ], [ %903, %899 ]
  %966 = add nsw i64 %901, 1
  %967 = icmp eq i64 %966, %770
  br i1 %967, label %1087, label %899, !llvm.loop !156

968:                                              ; preds = %765
  %969 = load ptr, ptr %686, align 8, !tbaa !65
  %970 = load i64, ptr %70, align 8, !tbaa !58
  %971 = load i64, ptr %51, align 8, !tbaa !61
  %972 = load i64, ptr %687, align 8, !tbaa !59
  %973 = icmp slt i64 %63, %972
  br i1 %973, label %974, label %1036

974:                                              ; preds = %968
  %975 = load float, ptr %676, align 4, !tbaa !140
  %976 = add nsw i64 %971, 1
  %977 = mul i64 %976, %970
  %978 = getelementptr double, ptr %969, i64 %977
  %979 = getelementptr double, ptr %978, i64 -1
  %980 = icmp sgt i64 %970, 0
  br label %981

981:                                              ; preds = %974, %1029
  %982 = phi ptr [ %726, %974 ], [ %1033, %1029 ]
  %983 = phi ptr [ %746, %974 ], [ %1032, %1029 ]
  %984 = phi ptr [ %979, %974 ], [ %1031, %1029 ]
  %985 = phi i64 [ %63, %974 ], [ %1034, %1029 ]
  %986 = phi float [ %975, %974 ], [ %1030, %1029 ]
  br i1 %980, label %987, label %1029

987:                                              ; preds = %981
  %988 = icmp ne ptr %982, null
  %989 = and i1 %760, %988
  br label %990

990:                                              ; preds = %987, %1023
  %991 = phi float [ %986, %987 ], [ %1024, %1023 ]
  %992 = phi ptr [ %984, %987 ], [ %1027, %1023 ]
  %993 = phi i64 [ 0, %987 ], [ %1026, %1023 ]
  %994 = phi float [ %986, %987 ], [ %1025, %1023 ]
  %995 = load double, ptr %992, align 8, !tbaa !68
  %996 = fcmp uno double %995, 0.000000e+00
  br i1 %996, label %1023, label %997

997:                                              ; preds = %990
  %998 = fpext float %994 to double
  %999 = getelementptr inbounds %struct._PixelPacket, ptr %983, i64 %993, i32 3
  %1000 = load i16, ptr %999, align 2, !tbaa !139
  %1001 = uitofp i16 %1000 to double
  %1002 = fadd double %995, %1001
  %1003 = fcmp olt double %1002, %998
  br i1 %1003, label %1004, label %1023

1004:                                             ; preds = %997
  %1005 = getelementptr inbounds %struct._PixelPacket, ptr %983, i64 %993
  %1006 = getelementptr inbounds %struct._PixelPacket, ptr %983, i64 %993, i32 2
  %1007 = load i16, ptr %1006, align 2, !tbaa !131
  %1008 = uitofp i16 %1007 to float
  store float %1008, ptr %673, align 8, !tbaa !132
  %1009 = getelementptr inbounds %struct._PixelPacket, ptr %983, i64 %993, i32 1
  %1010 = load i16, ptr %1009, align 2, !tbaa !135
  %1011 = uitofp i16 %1010 to float
  store float %1011, ptr %674, align 4, !tbaa !136
  %1012 = load i16, ptr %1005, align 2, !tbaa !137
  %1013 = uitofp i16 %1012 to float
  store float %1013, ptr %675, align 8, !tbaa !138
  %1014 = uitofp i16 %1000 to float
  store float %1014, ptr %676, align 4, !tbaa !140
  br i1 %989, label %1015, label %1019

1015:                                             ; preds = %1004
  %1016 = getelementptr inbounds i16, ptr %982, i64 %993
  %1017 = load i16, ptr %1016, align 2, !tbaa !46
  %1018 = uitofp i16 %1017 to float
  store float %1018, ptr %688, align 8, !tbaa !142
  br label %1019

1019:                                             ; preds = %1015, %1004
  %1020 = uitofp i16 %1000 to double
  %1021 = fadd double %995, %1020
  %1022 = fptrunc double %1021 to float
  store float %1022, ptr %676, align 4, !tbaa !140
  br label %1023

1023:                                             ; preds = %1019, %997, %990
  %1024 = phi float [ %1022, %1019 ], [ %991, %997 ], [ %991, %990 ]
  %1025 = phi float [ %1022, %1019 ], [ %994, %997 ], [ %994, %990 ]
  %1026 = add nuw nsw i64 %993, 1
  %1027 = getelementptr inbounds double, ptr %992, i64 -1
  %1028 = icmp eq i64 %1026, %970
  br i1 %1028, label %1029, label %990, !llvm.loop !157

1029:                                             ; preds = %1023, %981
  %1030 = phi float [ %986, %981 ], [ %1024, %1023 ]
  %1031 = phi ptr [ %984, %981 ], [ %1027, %1023 ]
  %1032 = getelementptr inbounds %struct._PixelPacket, ptr %983, i64 %73
  %1033 = getelementptr inbounds i16, ptr %982, i64 %73
  %1034 = add nsw i64 %985, 1
  %1035 = icmp eq i64 %1034, %972
  br i1 %1035, label %1036, label %981, !llvm.loop !158

1036:                                             ; preds = %1029, %968
  %1037 = getelementptr inbounds %struct._PixelPacket, ptr %745, i64 %672
  %1038 = icmp slt i64 %689, %970
  br i1 %1038, label %1039, label %1087

1039:                                             ; preds = %1036
  %1040 = mul i64 %971, %970
  %1041 = getelementptr double, ptr %969, i64 %1040
  %1042 = load i64, ptr %49, align 8, !tbaa !60
  %1043 = getelementptr double, ptr %1041, i64 %1042
  %1044 = load float, ptr %676, align 4, !tbaa !140
  %1045 = sub i64 %744, %64
  %1046 = load i64, ptr %68, align 8, !tbaa !117
  br label %1047

1047:                                             ; preds = %1039, %1083
  %1048 = phi i64 [ %689, %1039 ], [ %1085, %1083 ]
  %1049 = phi ptr [ %1043, %1039 ], [ %1051, %1083 ]
  %1050 = phi float [ %1044, %1039 ], [ %1084, %1083 ]
  %1051 = getelementptr inbounds double, ptr %1049, i64 -1
  %1052 = add i64 %1045, %1048
  %1053 = icmp slt i64 %1052, %1046
  br i1 %1053, label %1054, label %1083

1054:                                             ; preds = %1047
  %1055 = load double, ptr %1051, align 8, !tbaa !68
  %1056 = fcmp uno double %1055, 0.000000e+00
  br i1 %1056, label %1083, label %1057

1057:                                             ; preds = %1054
  %1058 = fpext float %1050 to double
  %1059 = getelementptr inbounds %struct._PixelPacket, ptr %1037, i64 %1048, i32 3
  %1060 = load i16, ptr %1059, align 2, !tbaa !139
  %1061 = uitofp i16 %1060 to double
  %1062 = fadd double %1055, %1061
  %1063 = fcmp olt double %1062, %1058
  br i1 %1063, label %1064, label %1083

1064:                                             ; preds = %1057
  %1065 = getelementptr inbounds %struct._PixelPacket, ptr %1037, i64 %1048
  %1066 = getelementptr inbounds %struct._PixelPacket, ptr %1037, i64 %1048, i32 2
  %1067 = load i16, ptr %1066, align 2, !tbaa !131
  %1068 = uitofp i16 %1067 to float
  store float %1068, ptr %673, align 8, !tbaa !132
  %1069 = getelementptr inbounds %struct._PixelPacket, ptr %1037, i64 %1048, i32 1
  %1070 = load i16, ptr %1069, align 2, !tbaa !135
  %1071 = uitofp i16 %1070 to float
  store float %1071, ptr %674, align 4, !tbaa !136
  %1072 = load i16, ptr %1065, align 2, !tbaa !137
  %1073 = uitofp i16 %1072 to float
  store float %1073, ptr %675, align 8, !tbaa !138
  %1074 = uitofp i16 %1060 to float
  store float %1074, ptr %676, align 4, !tbaa !140
  br i1 %761, label %1075, label %1079

1075:                                             ; preds = %1064
  %1076 = getelementptr inbounds i16, ptr %737, i64 %1048
  %1077 = load i16, ptr %1076, align 2, !tbaa !46
  %1078 = uitofp i16 %1077 to float
  store float %1078, ptr %690, align 8, !tbaa !142
  br label %1079

1079:                                             ; preds = %1075, %1064
  %1080 = uitofp i16 %1060 to double
  %1081 = fadd double %1055, %1080
  %1082 = fptrunc double %1081 to float
  store float %1082, ptr %676, align 4, !tbaa !140
  br label %1083

1083:                                             ; preds = %1079, %1057, %1054, %1047
  %1084 = phi float [ %1082, %1079 ], [ %1050, %1057 ], [ %1050, %1054 ], [ %1050, %1047 ]
  %1085 = add nsw i64 %1048, 1
  %1086 = icmp eq i64 %1085, %970
  br i1 %1086, label %1087, label %1047, !llvm.loop !159

1087:                                             ; preds = %960, %1083, %884, %1036
  br i1 %679, label %1088, label %1140

1088:                                             ; preds = %1087
  %1089 = load float, ptr %673, align 8, !tbaa !132
  %1090 = fcmp ugt float %1089, 0.000000e+00
  br i1 %1090, label %1091, label %1096

1091:                                             ; preds = %1088
  %1092 = fcmp ult float %1089, 6.553500e+04
  br i1 %1092, label %1093, label %1096

1093:                                             ; preds = %1091
  %1094 = fadd float %1089, 5.000000e-01
  %1095 = fptoui float %1094 to i16
  br label %1096

1096:                                             ; preds = %1093, %1091, %1088
  %1097 = phi i16 [ %1095, %1093 ], [ 0, %1088 ], [ -1, %1091 ]
  store i16 %1097, ptr %748, align 2, !tbaa !131
  %1098 = load float, ptr %674, align 4, !tbaa !136
  %1099 = fcmp ugt float %1098, 0.000000e+00
  br i1 %1099, label %1100, label %1105

1100:                                             ; preds = %1096
  %1101 = fcmp ult float %1098, 6.553500e+04
  br i1 %1101, label %1102, label %1105

1102:                                             ; preds = %1100
  %1103 = fadd float %1098, 5.000000e-01
  %1104 = fptoui float %1103 to i16
  br label %1105

1105:                                             ; preds = %1102, %1100, %1096
  %1106 = phi i16 [ %1104, %1102 ], [ 0, %1096 ], [ -1, %1100 ]
  store i16 %1106, ptr %751, align 2, !tbaa !135
  %1107 = load float, ptr %675, align 8, !tbaa !138
  %1108 = fcmp ugt float %1107, 0.000000e+00
  br i1 %1108, label %1109, label %1114

1109:                                             ; preds = %1105
  %1110 = fcmp ult float %1107, 6.553500e+04
  br i1 %1110, label %1111, label %1114

1111:                                             ; preds = %1109
  %1112 = fadd float %1107, 5.000000e-01
  %1113 = fptoui float %1112 to i16
  br label %1114

1114:                                             ; preds = %1111, %1109, %1105
  %1115 = phi i16 [ %1113, %1111 ], [ 0, %1105 ], [ -1, %1109 ]
  store i16 %1115, ptr %745, align 2, !tbaa !137
  %1116 = load float, ptr %676, align 4, !tbaa !140
  %1117 = fcmp ugt float %1116, 0.000000e+00
  br i1 %1117, label %1118, label %1123

1118:                                             ; preds = %1114
  %1119 = fcmp ult float %1116, 6.553500e+04
  br i1 %1119, label %1120, label %1123

1120:                                             ; preds = %1118
  %1121 = fadd float %1116, 5.000000e-01
  %1122 = fptoui float %1121 to i16
  br label %1123

1123:                                             ; preds = %1120, %1118, %1114
  %1124 = phi i16 [ %1122, %1120 ], [ 0, %1114 ], [ -1, %1118 ]
  store i16 %1124, ptr %756, align 2, !tbaa !139
  br i1 %760, label %1129, label %1125

1125:                                             ; preds = %1123
  %1126 = load i32, ptr %43, align 8, !tbaa !149
  %1127 = icmp eq i32 %1126, 2
  %1128 = and i1 %734, %1127
  br i1 %1128, label %1130, label %1203

1129:                                             ; preds = %1123
  br i1 %739, label %1203, label %1130

1130:                                             ; preds = %1129, %1125
  %1131 = load float, ptr %703, align 8, !tbaa !142
  %1132 = fcmp ugt float %1131, 0.000000e+00
  br i1 %1132, label %1133, label %1138

1133:                                             ; preds = %1130
  %1134 = fcmp ult float %1131, 6.553500e+04
  br i1 %1134, label %1135, label %1138

1135:                                             ; preds = %1133
  %1136 = fadd float %1131, 5.000000e-01
  %1137 = fptoui float %1136 to i16
  br label %1138

1138:                                             ; preds = %1135, %1133, %1130
  %1139 = phi i16 [ %1137, %1135 ], [ 0, %1130 ], [ -1, %1133 ]
  store i16 %1139, ptr %727, align 2, !tbaa !46
  br label %1203

1140:                                             ; preds = %1087, %766
  br i1 %692, label %1151, label %1141

1141:                                             ; preds = %1140
  %1142 = load float, ptr %673, align 8, !tbaa !132
  %1143 = fcmp ugt float %1142, 0.000000e+00
  br i1 %1143, label %1144, label %1149

1144:                                             ; preds = %1141
  %1145 = fcmp ult float %1142, 6.553500e+04
  br i1 %1145, label %1146, label %1149

1146:                                             ; preds = %1144
  %1147 = fadd float %1142, 5.000000e-01
  %1148 = fptoui float %1147 to i16
  br label %1149

1149:                                             ; preds = %1146, %1144, %1141
  %1150 = phi i16 [ %1148, %1146 ], [ 0, %1141 ], [ -1, %1144 ]
  store i16 %1150, ptr %748, align 2, !tbaa !131
  br label %1151

1151:                                             ; preds = %1149, %1140
  br i1 %694, label %1162, label %1152

1152:                                             ; preds = %1151
  %1153 = load float, ptr %674, align 4, !tbaa !136
  %1154 = fcmp ugt float %1153, 0.000000e+00
  br i1 %1154, label %1155, label %1160

1155:                                             ; preds = %1152
  %1156 = fcmp ult float %1153, 6.553500e+04
  br i1 %1156, label %1157, label %1160

1157:                                             ; preds = %1155
  %1158 = fadd float %1153, 5.000000e-01
  %1159 = fptoui float %1158 to i16
  br label %1160

1160:                                             ; preds = %1157, %1155, %1152
  %1161 = phi i16 [ %1159, %1157 ], [ 0, %1152 ], [ -1, %1155 ]
  store i16 %1161, ptr %751, align 2, !tbaa !135
  br label %1162

1162:                                             ; preds = %1160, %1151
  br i1 %696, label %1173, label %1163

1163:                                             ; preds = %1162
  %1164 = load float, ptr %675, align 8, !tbaa !138
  %1165 = fcmp ugt float %1164, 0.000000e+00
  br i1 %1165, label %1166, label %1171

1166:                                             ; preds = %1163
  %1167 = fcmp ult float %1164, 6.553500e+04
  br i1 %1167, label %1168, label %1171

1168:                                             ; preds = %1166
  %1169 = fadd float %1164, 5.000000e-01
  %1170 = fptoui float %1169 to i16
  br label %1171

1171:                                             ; preds = %1168, %1166, %1163
  %1172 = phi i16 [ %1170, %1168 ], [ 0, %1163 ], [ -1, %1166 ]
  store i16 %1172, ptr %745, align 2, !tbaa !137
  br label %1173

1173:                                             ; preds = %1171, %1162
  br i1 %698, label %1188, label %1174

1174:                                             ; preds = %1173
  %1175 = load i32, ptr %699, align 8, !tbaa !150
  %1176 = icmp eq i32 %1175, 0
  br i1 %1176, label %1188, label %1177

1177:                                             ; preds = %1174
  %1178 = load float, ptr %676, align 4, !tbaa !140
  %1179 = fcmp ugt float %1178, 0.000000e+00
  br i1 %1179, label %1180, label %1185

1180:                                             ; preds = %1177
  %1181 = fcmp ult float %1178, 6.553500e+04
  br i1 %1181, label %1182, label %1185

1182:                                             ; preds = %1180
  %1183 = fadd float %1178, 5.000000e-01
  %1184 = fptoui float %1183 to i16
  br label %1185

1185:                                             ; preds = %1182, %1180, %1177
  %1186 = phi i16 [ %1184, %1182 ], [ 0, %1177 ], [ -1, %1180 ]
  %1187 = xor i16 %1186, -1
  store i16 %1187, ptr %756, align 2, !tbaa !139
  br label %1188

1188:                                             ; preds = %1185, %1174, %1173
  %1189 = icmp ne i32 %759, 12
  %1190 = or i1 %701, %1189
  %1191 = select i1 %1190, i1 true, i1 %738
  br i1 %1191, label %1203, label %1192

1192:                                             ; preds = %1188
  %1193 = getelementptr inbounds i16, ptr %727, i64 %744
  %1194 = load float, ptr %702, align 8, !tbaa !142
  %1195 = fcmp ugt float %1194, 0.000000e+00
  br i1 %1195, label %1196, label %1201

1196:                                             ; preds = %1192
  %1197 = fcmp ult float %1194, 6.553500e+04
  br i1 %1197, label %1198, label %1201

1198:                                             ; preds = %1196
  %1199 = fadd float %1194, 5.000000e-01
  %1200 = fptoui float %1199 to i16
  br label %1201

1201:                                             ; preds = %1198, %1196, %1192
  %1202 = phi i16 [ %1200, %1198 ], [ 0, %1192 ], [ -1, %1196 ]
  store i16 %1202, ptr %1193, align 2, !tbaa !46
  br label %1203

1203:                                             ; preds = %1201, %1188, %1138, %1129, %1125
  %1204 = getelementptr inbounds %struct._PixelPacket, ptr %746, i64 %64
  %1205 = getelementptr inbounds %struct._PixelPacket, ptr %746, i64 %64, i32 2
  %1206 = load i16, ptr %1205, align 2, !tbaa !131
  %1207 = load i16, ptr %748, align 2, !tbaa !131
  %1208 = icmp eq i16 %1206, %1207
  br i1 %1208, label %1209, label %1237

1209:                                             ; preds = %1203
  %1210 = getelementptr inbounds %struct._PixelPacket, ptr %746, i64 %64, i32 1
  %1211 = load i16, ptr %1210, align 2, !tbaa !135
  %1212 = load i16, ptr %751, align 2, !tbaa !135
  %1213 = icmp eq i16 %1211, %1212
  br i1 %1213, label %1214, label %1237

1214:                                             ; preds = %1209
  %1215 = load i16, ptr %1204, align 2, !tbaa !137
  %1216 = load i16, ptr %745, align 2, !tbaa !137
  %1217 = icmp eq i16 %1215, %1216
  br i1 %1217, label %1218, label %1237

1218:                                             ; preds = %1214
  %1219 = getelementptr inbounds %struct._PixelPacket, ptr %746, i64 %64, i32 3
  %1220 = load i16, ptr %1219, align 2, !tbaa !139
  %1221 = load i16, ptr %756, align 2, !tbaa !139
  %1222 = icmp eq i16 %1220, %1221
  br i1 %1222, label %1223, label %1237

1223:                                             ; preds = %1218
  br i1 %760, label %1224, label %1239

1224:                                             ; preds = %1223
  br i1 %740, label %1228, label %1225

1225:                                             ; preds = %1224
  %1226 = load i16, ptr %741, align 2, !tbaa !46
  %1227 = zext i16 %1226 to i32
  br label %1228

1228:                                             ; preds = %1225, %1224
  %1229 = phi i32 [ %1227, %1225 ], [ 0, %1224 ]
  br i1 %742, label %1234, label %1230

1230:                                             ; preds = %1228
  %1231 = getelementptr inbounds i16, ptr %727, i64 %744
  %1232 = load i16, ptr %1231, align 2, !tbaa !46
  %1233 = zext i16 %1232 to i32
  br label %1234

1234:                                             ; preds = %1230, %1228
  %1235 = phi i32 [ %1233, %1230 ], [ 0, %1228 ]
  %1236 = icmp eq i32 %1229, %1235
  br i1 %1236, label %1239, label %1237

1237:                                             ; preds = %1234, %1218, %1214, %1209, %1203
  %1238 = add i64 %747, 1
  br label %1239

1239:                                             ; preds = %1237, %1234, %1223
  %1240 = phi i64 [ %1238, %1237 ], [ %747, %1234 ], [ %747, %1223 ]
  %1241 = getelementptr inbounds %struct._PixelPacket, ptr %746, i64 -1
  %1242 = getelementptr inbounds %struct._PixelPacket, ptr %745, i64 -1
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %15) #19
  %1243 = add nsw i64 %744, -1
  %1244 = icmp sgt i64 %744, 0
  br i1 %1244, label %743, label %1245, !llvm.loop !160

1245:                                             ; preds = %1239, %725
  %1246 = phi i64 [ %708, %725 ], [ %1240, %1239 ]
  %1247 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %67, ptr noundef %7) #25
  %1248 = icmp ne i32 %1247, 0
  %1249 = zext i1 %1248 to i32
  %1250 = load ptr, ptr %704, align 8, !tbaa !152
  %1251 = icmp eq ptr %1250, null
  br i1 %1251, label %1266, label %1252

1252:                                             ; preds = %1245
  %1253 = add nsw i64 %710, 1
  %1254 = load i64, ptr %74, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %12) #19
  %1255 = load ptr, ptr %704, align 8, !tbaa !152
  %1256 = icmp eq ptr %1255, null
  br i1 %1256, label %1262, label %1257

1257:                                             ; preds = %1252
  %1258 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %12, i64 noundef 4096, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.110, ptr noundef nonnull %705) #19
  %1259 = load ptr, ptr %704, align 8, !tbaa !152
  %1260 = load ptr, ptr %706, align 8, !tbaa !153
  %1261 = call i32 %1259(ptr noundef nonnull %12, i64 noundef %710, i64 noundef %1254, ptr noundef %1260) #19
  br label %1262

1262:                                             ; preds = %1257, %1252
  %1263 = phi i32 [ %1261, %1257 ], [ 1, %1252 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %12) #19
  %1264 = icmp eq i32 %1263, 0
  %1265 = select i1 %1264, i32 0, i32 %1249
  br label %1266

1266:                                             ; preds = %1262, %1245, %716, %714
  %1267 = phi i64 [ %708, %714 ], [ %708, %716 ], [ %1246, %1262 ], [ %1246, %1245 ]
  %1268 = phi i64 [ %710, %714 ], [ %710, %716 ], [ %1253, %1262 ], [ %710, %1245 ]
  %1269 = phi i1 [ false, %714 ], [ false, %716 ], [ true, %1262 ], [ true, %1245 ]
  %1270 = phi i32 [ 0, %714 ], [ 0, %716 ], [ %1265, %1262 ], [ %1249, %1245 ]
  br i1 %1269, label %707, label %1271, !llvm.loop !161

1271:                                             ; preds = %707, %1266
  %1272 = phi i64 [ %1267, %1266 ], [ %708, %707 ]
  %1273 = phi i32 [ %1270, %1266 ], [ %711, %707 ]
  %1274 = call ptr @DestroyCacheView(ptr noundef %67) #19
  %1275 = call ptr @DestroyCacheView(ptr noundef %66) #19
  %1276 = icmp eq i32 %1273, 0
  %1277 = select i1 %1276, i64 -1, i64 %1272
  %1278 = icmp eq i32 %29, 0
  br i1 %1278, label %1285, label %1279

1279:                                             ; preds = %1271
  %1280 = load ptr, ptr @stderr, align 8, !tbaa !45
  %1281 = zext i32 %2 to i64
  %1282 = call ptr @CommandOptionToMnemonic(i32 noundef 48, i64 noundef %1281) #19
  %1283 = sitofp i64 %1277 to double
  %1284 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %1280, ptr noundef nonnull @.str.75, ptr noundef %1282, double noundef 1.000000e+00, double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef %1283) #19
  br label %1285

1285:                                             ; preds = %1279, %1271
  %1286 = icmp slt i64 %1277, 0
  br i1 %1286, label %3151, label %1287

1287:                                             ; preds = %1285
  %1288 = icmp eq i32 %2, 21
  br i1 %1288, label %1289, label %3162

1289:                                             ; preds = %1287
  %1290 = call i32 @SetImageAlphaChannel(ptr noundef nonnull %43, i32 noundef 4) #19
  %1291 = call i32 @CompositeImageChannel(ptr noundef nonnull %43, i32 noundef 134217719, i32 noundef 17, ptr noundef %0, i64 noundef 0, i64 noundef 0) #19
  %1292 = call i32 @SetImageAlphaChannel(ptr noundef nonnull %43, i32 noundef 4) #19
  br label %3162

1293:                                             ; preds = %35
  %1294 = icmp eq i32 %5, 0
  %1295 = select i1 %1294, i32 %36, i32 %5
  %1296 = tail call i32 @llvm.umax.i32(i32 %1295, i32 1)
  switch i32 %2, label %1301 [
    i32 2, label %1297
    i32 9, label %1297
    i32 11, label %1297
    i32 17, label %1297
    i32 12, label %1297
  ]

1297:                                             ; preds = %1293, %1293, %1293, %1293, %1293
  %1298 = tail call ptr @CloneKernelInfo(ptr noundef %4)
  %1299 = icmp eq ptr %1298, null
  br i1 %1299, label %3151, label %1300

1300:                                             ; preds = %1297
  tail call fastcc void @RotateKernelInfo(ptr noundef nonnull %1298, double noundef 1.800000e+02)
  br label %1301

1301:                                             ; preds = %1293, %1300
  %1302 = phi ptr [ null, %1293 ], [ %1298, %1300 ]
  %1303 = icmp eq i64 %38, 0
  br i1 %1303, label %3162, label %1304

1304:                                             ; preds = %1301
  %1305 = icmp eq ptr %4, null
  %1306 = icmp eq i32 %29, 0
  %1307 = zext i32 %2 to i64
  %1308 = zext i32 %2 to i64
  %1309 = icmp eq i64 %41, 0
  %1310 = and i32 %1, 256
  %1311 = icmp eq i32 %1310, 0
  %1312 = and i32 %1, 1
  %1313 = icmp eq i32 %1312, 0
  %1314 = and i32 %1, 2
  %1315 = icmp eq i32 %1314, 0
  %1316 = and i32 %1, 4
  %1317 = icmp eq i32 %1316, 0
  %1318 = and i32 %1, 8
  %1319 = icmp eq i32 %1318, 0
  %1320 = and i32 %1, 32
  %1321 = icmp eq i32 %1320, 0
  %1322 = and i32 %1, 1
  %1323 = icmp eq i32 %1322, 0
  %1324 = and i32 %1, 2
  %1325 = icmp eq i32 %1324, 0
  %1326 = and i32 %1, 4
  %1327 = icmp eq i32 %1326, 0
  %1328 = and i32 %1, 8
  %1329 = icmp eq i32 %1328, 0
  %1330 = and i32 %1, 32
  %1331 = icmp eq i32 %1330, 0
  %1332 = and i32 %1, 256
  %1333 = icmp eq i32 %1332, 0
  %1334 = and i32 %1, 1
  %1335 = icmp eq i32 %1334, 0
  %1336 = and i32 %1, 2
  %1337 = icmp eq i32 %1336, 0
  %1338 = and i32 %1, 4
  %1339 = icmp eq i32 %1338, 0
  %1340 = and i32 %1, 8
  %1341 = icmp eq i32 %1340, 0
  %1342 = and i32 %1, 32
  %1343 = icmp eq i32 %1342, 0
  %1344 = icmp eq i32 %29, 0
  %1345 = and i32 %1, -257
  %1346 = icmp eq i32 %29, 0
  %1347 = zext i32 %2 to i64
  %1348 = and i32 %1, -257
  %1349 = getelementptr inbounds %struct.KernelInfo, ptr %4, i64 0, i32 11
  %1350 = icmp ult i32 %1295, 2
  %1351 = icmp eq i32 %29, 0
  %1352 = zext i32 %1296 to i64
  %1353 = and i32 %1, -257
  %1354 = icmp eq i32 %29, 0
  %1355 = icmp eq i32 %29, 0
  %1356 = icmp eq i32 %29, 0
  br label %1367

1357:                                             ; preds = %3139, %1367
  %1358 = phi ptr [ %1373, %1367 ], [ %3061, %3139 ]
  %1359 = phi ptr [ %1372, %1367 ], [ %3098, %3139 ]
  %1360 = phi ptr [ %1371, %1367 ], [ %3127, %3139 ]
  %1361 = phi ptr [ %1370, %1367 ], [ %3128, %3139 ]
  %1362 = phi i64 [ %1368, %1367 ], [ %3063, %3139 ]
  %1363 = phi i64 [ 0, %1367 ], [ %3065, %3139 ]
  %1364 = icmp ult i64 %1374, %38
  %1365 = icmp ne i64 %1363, 0
  %1366 = select i1 %1364, i1 %1365, i1 false
  br i1 %1366, label %1367, label %3162, !llvm.loop !162

1367:                                             ; preds = %1304, %1357
  %1368 = phi i64 [ 0, %1304 ], [ %1362, %1357 ]
  %1369 = phi i64 [ 0, %1304 ], [ %1374, %1357 ]
  %1370 = phi ptr [ %0, %1304 ], [ %1361, %1357 ]
  %1371 = phi ptr [ null, %1304 ], [ %1360, %1357 ]
  %1372 = phi ptr [ null, %1304 ], [ %1359, %1357 ]
  %1373 = phi ptr [ null, %1304 ], [ %1358, %1357 ]
  %1374 = add nuw i64 %1369, 1
  br i1 %1305, label %1357, label %1375

1375:                                             ; preds = %1367
  %1376 = uitofp i64 %1374 to double
  %1377 = uitofp i64 %1374 to double
  br label %1378

1378:                                             ; preds = %1375, %3139
  %1379 = phi i64 [ 0, %1375 ], [ %3065, %3139 ]
  %1380 = phi i64 [ %1368, %1375 ], [ %3063, %3139 ]
  %1381 = phi i64 [ 0, %1375 ], [ %3141, %3139 ]
  %1382 = phi ptr [ %1370, %1375 ], [ %3128, %3139 ]
  %1383 = phi ptr [ %1302, %1375 ], [ %3140, %3139 ]
  %1384 = phi ptr [ %4, %1375 ], [ %3134, %3139 ]
  %1385 = phi ptr [ %1371, %1375 ], [ %3127, %3139 ]
  %1386 = phi ptr [ %1372, %1375 ], [ %3098, %3139 ]
  %1387 = phi ptr [ %1373, %1375 ], [ %3061, %3139 ]
  %1388 = uitofp i64 %1381 to double
  br label %1389

1389:                                             ; preds = %1378, %3079
  %1390 = phi i64 [ %1379, %1378 ], [ %3065, %3079 ]
  %1391 = phi i64 [ %1380, %1378 ], [ %3063, %3079 ]
  %1392 = phi i64 [ 0, %1378 ], [ %1396, %3079 ]
  %1393 = phi ptr [ %1382, %1378 ], [ %3062, %3079 ]
  %1394 = phi ptr [ %1386, %1378 ], [ %1421, %3079 ]
  %1395 = phi ptr [ %1387, %1378 ], [ %3061, %3079 ]
  %1396 = add nuw nsw i64 %1392, 1
  switch i32 %2, label %1420 [
    i32 3, label %1397
    i32 13, label %1397
    i32 4, label %1398
    i32 14, label %1398
    i32 8, label %1399
    i32 16, label %1399
    i32 10, label %1402
    i32 9, label %1405
    i32 17, label %1405
    i32 11, label %1408
    i32 12, label %1411
    i32 15, label %1415
    i32 2, label %1418
  ]

1397:                                             ; preds = %1389, %1389
  br label %1420

1398:                                             ; preds = %1389, %1389
  br label %1420

1399:                                             ; preds = %1389, %1389
  %1400 = icmp eq i64 %1396, 2
  %1401 = select i1 %1400, i32 4, i32 3
  br label %1420

1402:                                             ; preds = %1389
  %1403 = icmp eq i64 %1396, 2
  %1404 = select i1 %1403, i32 6, i32 5
  br label %1420

1405:                                             ; preds = %1389, %1389
  %1406 = icmp eq i64 %1396, 2
  %1407 = select i1 %1406, i32 3, i32 4
  br label %1420

1408:                                             ; preds = %1389
  %1409 = icmp eq i64 %1396, 2
  %1410 = select i1 %1409, i32 5, i32 6
  br label %1420

1411:                                             ; preds = %1389
  switch i64 %1392, label %1419 [
    i64 0, label %1420
    i64 1, label %1412
    i64 2, label %1413
    i64 3, label %1414
  ]

1412:                                             ; preds = %1411
  br label %1420

1413:                                             ; preds = %1411
  br label %1420

1414:                                             ; preds = %1411
  br label %1420

1415:                                             ; preds = %1389
  %1416 = icmp eq i64 %1396, 2
  br i1 %1416, label %1417, label %1420

1417:                                             ; preds = %1415
  br label %1420

1418:                                             ; preds = %1389
  br label %1420

1419:                                             ; preds = %1411
  unreachable

1420:                                             ; preds = %1411, %1389, %1415, %1417, %1412, %1413, %1414, %1418, %1408, %1405, %1402, %1399, %1398, %1397
  %1421 = phi ptr [ %1394, %1389 ], [ %1394, %1418 ], [ %1393, %1417 ], [ %1394, %1415 ], [ %1394, %1414 ], [ %1394, %1413 ], [ %1394, %1412 ], [ %1394, %1408 ], [ %1394, %1405 ], [ %1394, %1402 ], [ %1394, %1399 ], [ %1394, %1398 ], [ %1394, %1397 ], [ %1394, %1411 ]
  %1422 = phi ptr [ %1384, %1389 ], [ %1383, %1418 ], [ %1384, %1417 ], [ %1384, %1415 ], [ %1383, %1414 ], [ %1383, %1413 ], [ %1384, %1412 ], [ %1383, %1408 ], [ %1383, %1405 ], [ %1384, %1402 ], [ %1384, %1399 ], [ %1384, %1398 ], [ %1384, %1397 ], [ %1384, %1411 ]
  %1423 = phi i32 [ %2, %1389 ], [ 1, %1418 ], [ 3, %1417 ], [ 4, %1415 ], [ 3, %1414 ], [ 4, %1413 ], [ 4, %1412 ], [ %1410, %1408 ], [ %1407, %1405 ], [ %1404, %1402 ], [ %1401, %1399 ], [ 4, %1398 ], [ 3, %1397 ], [ 3, %1411 ]
  %1424 = phi ptr [ %1393, %1389 ], [ %1393, %1418 ], [ %0, %1417 ], [ %1393, %1415 ], [ %1393, %1414 ], [ %1393, %1413 ], [ %1393, %1412 ], [ %1393, %1408 ], [ %1393, %1405 ], [ %1393, %1402 ], [ %1393, %1399 ], [ %1393, %1398 ], [ %1393, %1397 ], [ %1393, %1411 ]
  br i1 %1306, label %1436, label %1425

1425:                                             ; preds = %1420
  br i1 %39, label %1426, label %1430

1426:                                             ; preds = %1425
  %1427 = call ptr @CommandOptionToMnemonic(i32 noundef 48, i64 noundef %1308) #19
  %1428 = uitofp i64 %1396 to double
  %1429 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %16, i64 noundef 4096, ptr noundef nonnull @.str.76, ptr noundef %1427, double noundef %1377, double noundef %1428) #19
  br label %1436

1430:                                             ; preds = %1425
  %1431 = icmp eq i32 %1423, %2
  br i1 %1431, label %1435, label %1432

1432:                                             ; preds = %1430
  %1433 = call ptr @CommandOptionToMnemonic(i32 noundef 48, i64 noundef %1307) #19
  %1434 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %16, i64 noundef 4096, ptr noundef nonnull @.str.77, ptr noundef %1433, double noundef %1376) #19
  br label %1436

1435:                                             ; preds = %1430
  store i8 0, ptr %16, align 16, !tbaa !44
  br label %1436

1436:                                             ; preds = %1426, %1435, %1432, %1420
  br i1 %1309, label %3060, label %1437

1437:                                             ; preds = %1436
  %1438 = getelementptr inbounds %struct.KernelInfo, ptr %1422, i64 0, i32 1
  %1439 = getelementptr inbounds %struct.KernelInfo, ptr %1422, i64 0, i32 3
  %1440 = getelementptr inbounds %struct.KernelInfo, ptr %1422, i64 0, i32 4
  %1441 = getelementptr inbounds %struct.KernelInfo, ptr %1422, i64 0, i32 2
  %1442 = icmp eq i32 %1423, 1
  %1443 = getelementptr inbounds %struct.KernelInfo, ptr %1422, i64 0, i32 2
  %1444 = getelementptr inbounds %struct.KernelInfo, ptr %1422, i64 0, i32 5
  %1445 = getelementptr inbounds %struct.KernelInfo, ptr %1422, i64 0, i32 5
  %1446 = getelementptr inbounds %struct.KernelInfo, ptr %1422, i64 0, i32 5
  %1447 = getelementptr inbounds %struct.KernelInfo, ptr %1422, i64 0, i32 5
  %1448 = getelementptr inbounds %struct.KernelInfo, ptr %1422, i64 0, i32 5
  %1449 = getelementptr inbounds %struct.KernelInfo, ptr %1422, i64 0, i32 5
  %1450 = getelementptr inbounds %struct.KernelInfo, ptr %1422, i64 0, i32 5
  %1451 = getelementptr inbounds %struct.KernelInfo, ptr %1422, i64 0, i32 2
  %1452 = getelementptr inbounds %struct.KernelInfo, ptr %1422, i64 0, i32 5
  %1453 = zext i32 %1423 to i64
  %1454 = icmp eq ptr %1422, %1383
  %1455 = select i1 %1454, ptr @.str.80, ptr @.str.81
  br label %1456

1456:                                             ; preds = %1437, %3052
  %1457 = phi i64 [ %1390, %1437 ], [ %3054, %3052 ]
  %1458 = phi i64 [ 0, %1437 ], [ %3053, %3052 ]
  %1459 = phi i64 [ %1391, %1437 ], [ %1473, %3052 ]
  %1460 = phi i64 [ 0, %1437 ], [ %1463, %3052 ]
  %1461 = phi ptr [ %1424, %1437 ], [ %1472, %3052 ]
  %1462 = phi ptr [ %1395, %1437 ], [ %3056, %3052 ]
  %1463 = add nuw i64 %1460, 1
  %1464 = icmp eq ptr %1462, null
  br i1 %1464, label %1465, label %1471

1465:                                             ; preds = %1456
  %1466 = call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %7) #19
  %1467 = icmp eq ptr %1466, null
  br i1 %1467, label %3151, label %1468

1468:                                             ; preds = %1465
  %1469 = call i32 @SetImageStorageClass(ptr noundef nonnull %1466, i32 noundef 1) #19
  %1470 = icmp eq i32 %1469, 0
  br i1 %1470, label %3143, label %1471

1471:                                             ; preds = %1468, %1456
  %1472 = phi ptr [ %1466, %1468 ], [ %1462, %1456 ]
  %1473 = add i64 %1459, 1
  %1474 = call ptr @AcquireVirtualCacheView(ptr noundef %1461, ptr noundef %7) #19
  %1475 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %1472, ptr noundef %7) #19
  %1476 = getelementptr inbounds %struct._Image, ptr %1461, i64 0, i32 7
  %1477 = load i64, ptr %1476, align 8, !tbaa !117
  %1478 = load i64, ptr %1438, align 8, !tbaa !58
  %1479 = add i64 %1477, -1
  %1480 = add i64 %1479, %1478
  %1481 = load i64, ptr %1439, align 8, !tbaa !60
  %1482 = load i64, ptr %1440, align 8, !tbaa !61
  switch i32 %1423, label %1489 [
    i32 1, label %1483
    i32 4, label %1483
    i32 6, label %1483
    i32 22, label %1483
  ]

1483:                                             ; preds = %1471, %1471, %1471, %1471
  %1484 = xor i64 %1481, -1
  %1485 = add i64 %1478, %1484
  %1486 = load i64, ptr %1441, align 8, !tbaa !59
  %1487 = xor i64 %1482, -1
  %1488 = add i64 %1486, %1487
  br label %1489

1489:                                             ; preds = %1483, %1471
  %1490 = phi i64 [ %1482, %1471 ], [ %1488, %1483 ]
  %1491 = phi i64 [ %1481, %1471 ], [ %1485, %1483 ]
  %1492 = call dereferenceable_or_null(8) ptr @AcquireQuantumMemory(i64 noundef 1, i64 noundef 8) #23
  %1493 = icmp eq ptr %1492, null
  br i1 %1493, label %1494, label %1501

1494:                                             ; preds = %1489
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %11) #19
  call void @GetExceptionInfo(ptr noundef nonnull %11) #19
  %1495 = tail call ptr @__errno_location() #21
  %1496 = load i32, ptr %1495, align 4, !tbaa !114
  %1497 = call ptr @GetExceptionMessage(i32 noundef %1496) #19
  %1498 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %11, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.81, i64 noundef 2622, i32 noundef 700, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.114, ptr noundef %1497) #19
  %1499 = call ptr @DestroyString(ptr noundef %1497) #19
  call void @CatchException(ptr noundef nonnull %11) #19
  %1500 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %11) #19
  call void @MagickCoreTerminus() #19
  call void @_exit(i32 noundef 1) #26
  unreachable

1501:                                             ; preds = %1489
  store i64 0, ptr %1492, align 8, !tbaa !115
  br i1 %1442, label %1502, label %1912

1502:                                             ; preds = %1501
  %1503 = load i64, ptr %1438, align 8, !tbaa !58
  %1504 = icmp eq i64 %1503, 1
  br i1 %1504, label %1505, label %1912

1505:                                             ; preds = %1502
  %1506 = load i64, ptr %1476, align 8, !tbaa !117
  %1507 = icmp sgt i64 %1506, 0
  br i1 %1507, label %1508, label %1907

1508:                                             ; preds = %1505
  %1509 = sub nsw i64 0, %1490
  %1510 = getelementptr inbounds %struct._Image, ptr %1461, i64 0, i32 8
  %1511 = getelementptr inbounds %struct._Image, ptr %1472, i64 0, i32 8
  %1512 = getelementptr inbounds %struct._Image, ptr %1461, i64 0, i32 1
  %1513 = getelementptr inbounds %struct._Image, ptr %1461, i64 0, i32 6
  %1514 = getelementptr inbounds %struct._Image, ptr %1461, i64 0, i32 6
  %1515 = getelementptr inbounds %struct._Image, ptr %1461, i64 0, i32 47
  %1516 = getelementptr inbounds %struct._Image, ptr %1461, i64 0, i32 53
  %1517 = getelementptr inbounds %struct._Image, ptr %1461, i64 0, i32 48
  br label %1518

1518:                                             ; preds = %1508, %1901
  %1519 = phi i32 [ 1, %1508 ], [ %1903, %1901 ]
  %1520 = phi i64 [ 0, %1508 ], [ %1904, %1901 ]
  %1521 = phi i64 [ 0, %1508 ], [ %1902, %1901 ]
  %1522 = icmp eq i32 %1519, 0
  br i1 %1522, label %1901, label %1523

1523:                                             ; preds = %1518
  %1524 = load i64, ptr %1510, align 8, !tbaa !129
  %1525 = load i64, ptr %1451, align 8, !tbaa !59
  %1526 = add i64 %1524, -1
  %1527 = add i64 %1526, %1525
  %1528 = call ptr @GetCacheViewVirtualPixels(ptr noundef %1474, i64 noundef %1520, i64 noundef %1509, i64 noundef 1, i64 noundef %1527, ptr noundef %7) #25
  %1529 = load i64, ptr %1511, align 8, !tbaa !129
  %1530 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %1475, i64 noundef %1520, i64 noundef 0, i64 noundef 1, i64 noundef %1529, ptr noundef %7) #25
  %1531 = icmp eq ptr %1528, null
  %1532 = icmp eq ptr %1530, null
  %1533 = select i1 %1531, i1 true, i1 %1532
  br i1 %1533, label %1901, label %1534

1534:                                             ; preds = %1523
  %1535 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %1474) #19
  %1536 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %1475) #19
  %1537 = load i64, ptr %1510, align 8, !tbaa !129
  %1538 = icmp sgt i64 %1537, 0
  br i1 %1538, label %1539, label %1881

1539:                                             ; preds = %1534
  %1540 = icmp eq ptr %1536, null
  %1541 = icmp eq ptr %1535, null
  %1542 = getelementptr inbounds i16, ptr %1535, i64 %1490
  %1543 = icmp eq ptr %1536, null
  %1544 = icmp eq ptr %1536, null
  %1545 = icmp eq ptr %1535, null
  %1546 = getelementptr inbounds i16, ptr %1535, i64 %1490
  %1547 = icmp eq ptr %1536, null
  br label %1548

1548:                                             ; preds = %1539, %1875
  %1549 = phi i64 [ 0, %1539 ], [ %1878, %1875 ]
  %1550 = phi ptr [ %1530, %1539 ], [ %1877, %1875 ]
  %1551 = phi ptr [ %1528, %1539 ], [ %1876, %1875 ]
  %1552 = getelementptr inbounds %struct._PixelPacket, ptr %1551, i64 %1490
  %1553 = load i64, ptr %1552, align 2
  store i64 %1553, ptr %1550, align 2
  %1554 = load i32, ptr %1512, align 4, !tbaa !141
  %1555 = icmp eq i32 %1554, 12
  br i1 %1555, label %1556, label %1563

1556:                                             ; preds = %1548
  %1557 = getelementptr inbounds i16, ptr %1536, i64 %1549
  br i1 %1540, label %1563, label %1558

1558:                                             ; preds = %1556
  br i1 %1541, label %1561, label %1559

1559:                                             ; preds = %1558
  %1560 = load i16, ptr %1542, align 2, !tbaa !46
  br label %1561

1561:                                             ; preds = %1559, %1558
  %1562 = phi i16 [ %1560, %1559 ], [ 0, %1558 ]
  store i16 %1562, ptr %1557, align 2, !tbaa !46
  br label %1563

1563:                                             ; preds = %1561, %1556, %1548
  %1564 = load ptr, ptr %1452, align 8, !tbaa !65
  %1565 = load i64, ptr %1451, align 8, !tbaa !59
  %1566 = getelementptr double, ptr %1564, i64 %1565
  %1567 = getelementptr double, ptr %1566, i64 -1
  br i1 %1333, label %1573, label %1568

1568:                                             ; preds = %1563
  %1569 = load i32, ptr %1513, align 8, !tbaa !150
  %1570 = icmp eq i32 %1569, 0
  br i1 %1570, label %1573, label %1571

1571:                                             ; preds = %1568
  %1572 = icmp sgt i64 %1565, 0
  br i1 %1572, label %1693, label %1763

1573:                                             ; preds = %1568, %1563
  %1574 = icmp sgt i64 %1565, 0
  br i1 %1574, label %1575, label %1623

1575:                                             ; preds = %1573, %1612
  %1576 = phi ptr [ %1620, %1612 ], [ %1535, %1573 ]
  %1577 = phi ptr [ %1619, %1612 ], [ %1551, %1573 ]
  %1578 = phi ptr [ %1618, %1612 ], [ %1567, %1573 ]
  %1579 = phi i64 [ %1621, %1612 ], [ 0, %1573 ]
  %1580 = phi double [ %1617, %1612 ], [ %6, %1573 ]
  %1581 = phi double [ %1616, %1612 ], [ %6, %1573 ]
  %1582 = phi double [ %1615, %1612 ], [ %6, %1573 ]
  %1583 = phi double [ %1614, %1612 ], [ %6, %1573 ]
  %1584 = phi double [ %1613, %1612 ], [ %6, %1573 ]
  %1585 = load double, ptr %1578, align 8, !tbaa !68
  %1586 = fcmp uno double %1585, 0.000000e+00
  br i1 %1586, label %1612, label %1587

1587:                                             ; preds = %1575
  %1588 = getelementptr inbounds %struct._PixelPacket, ptr %1577, i64 0, i32 2
  %1589 = load i16, ptr %1588, align 2, !tbaa !131
  %1590 = uitofp i16 %1589 to double
  %1591 = call double @llvm.fmuladd.f64(double %1585, double %1590, double %1580)
  %1592 = getelementptr inbounds %struct._PixelPacket, ptr %1577, i64 0, i32 1
  %1593 = load i16, ptr %1592, align 2, !tbaa !135
  %1594 = uitofp i16 %1593 to double
  %1595 = call double @llvm.fmuladd.f64(double %1585, double %1594, double %1581)
  %1596 = load i16, ptr %1577, align 2, !tbaa !137
  %1597 = uitofp i16 %1596 to double
  %1598 = call double @llvm.fmuladd.f64(double %1585, double %1597, double %1582)
  %1599 = getelementptr inbounds %struct._PixelPacket, ptr %1577, i64 0, i32 3
  %1600 = load i16, ptr %1599, align 2, !tbaa !139
  %1601 = uitofp i16 %1600 to double
  %1602 = call double @llvm.fmuladd.f64(double %1585, double %1601, double %1583)
  br i1 %1555, label %1603, label %1607

1603:                                             ; preds = %1587
  %1604 = load i16, ptr %1576, align 2, !tbaa !46
  %1605 = uitofp i16 %1604 to double
  %1606 = call double @llvm.fmuladd.f64(double %1585, double %1605, double %1584)
  br label %1607

1607:                                             ; preds = %1603, %1587
  %1608 = phi double [ %1606, %1603 ], [ %1584, %1587 ]
  %1609 = getelementptr inbounds double, ptr %1578, i64 -1
  %1610 = getelementptr inbounds %struct._PixelPacket, ptr %1577, i64 1
  %1611 = getelementptr inbounds i16, ptr %1576, i64 1
  br label %1612

1612:                                             ; preds = %1607, %1575
  %1613 = phi double [ %1584, %1575 ], [ %1608, %1607 ]
  %1614 = phi double [ %1583, %1575 ], [ %1602, %1607 ]
  %1615 = phi double [ %1582, %1575 ], [ %1598, %1607 ]
  %1616 = phi double [ %1581, %1575 ], [ %1595, %1607 ]
  %1617 = phi double [ %1580, %1575 ], [ %1591, %1607 ]
  %1618 = phi ptr [ %1578, %1575 ], [ %1609, %1607 ]
  %1619 = phi ptr [ %1577, %1575 ], [ %1610, %1607 ]
  %1620 = phi ptr [ %1576, %1575 ], [ %1611, %1607 ]
  %1621 = add nuw nsw i64 %1579, 1
  %1622 = icmp eq i64 %1621, %1565
  br i1 %1622, label %1623, label %1575, !llvm.loop !163

1623:                                             ; preds = %1612, %1573
  %1624 = phi double [ %6, %1573 ], [ %1613, %1612 ]
  %1625 = phi double [ %6, %1573 ], [ %1614, %1612 ]
  %1626 = phi double [ %6, %1573 ], [ %1615, %1612 ]
  %1627 = phi double [ %6, %1573 ], [ %1616, %1612 ]
  %1628 = phi double [ %6, %1573 ], [ %1617, %1612 ]
  br i1 %1335, label %1640, label %1629

1629:                                             ; preds = %1623
  %1630 = fptrunc double %1628 to float
  %1631 = fcmp ugt float %1630, 0.000000e+00
  br i1 %1631, label %1632, label %1637

1632:                                             ; preds = %1629
  %1633 = fcmp ult float %1630, 6.553500e+04
  br i1 %1633, label %1634, label %1637

1634:                                             ; preds = %1632
  %1635 = fadd float %1630, 5.000000e-01
  %1636 = fptoui float %1635 to i16
  br label %1637

1637:                                             ; preds = %1634, %1632, %1629
  %1638 = phi i16 [ %1636, %1634 ], [ 0, %1629 ], [ -1, %1632 ]
  %1639 = getelementptr inbounds %struct._PixelPacket, ptr %1550, i64 0, i32 2
  store i16 %1638, ptr %1639, align 2, !tbaa !131
  br label %1640

1640:                                             ; preds = %1637, %1623
  br i1 %1337, label %1652, label %1641

1641:                                             ; preds = %1640
  %1642 = fptrunc double %1627 to float
  %1643 = fcmp ugt float %1642, 0.000000e+00
  br i1 %1643, label %1644, label %1649

1644:                                             ; preds = %1641
  %1645 = fcmp ult float %1642, 6.553500e+04
  br i1 %1645, label %1646, label %1649

1646:                                             ; preds = %1644
  %1647 = fadd float %1642, 5.000000e-01
  %1648 = fptoui float %1647 to i16
  br label %1649

1649:                                             ; preds = %1646, %1644, %1641
  %1650 = phi i16 [ %1648, %1646 ], [ 0, %1641 ], [ -1, %1644 ]
  %1651 = getelementptr inbounds %struct._PixelPacket, ptr %1550, i64 0, i32 1
  store i16 %1650, ptr %1651, align 2, !tbaa !135
  br label %1652

1652:                                             ; preds = %1649, %1640
  br i1 %1339, label %1663, label %1653

1653:                                             ; preds = %1652
  %1654 = fptrunc double %1626 to float
  %1655 = fcmp ugt float %1654, 0.000000e+00
  br i1 %1655, label %1656, label %1661

1656:                                             ; preds = %1653
  %1657 = fcmp ult float %1654, 6.553500e+04
  br i1 %1657, label %1658, label %1661

1658:                                             ; preds = %1656
  %1659 = fadd float %1654, 5.000000e-01
  %1660 = fptoui float %1659 to i16
  br label %1661

1661:                                             ; preds = %1658, %1656, %1653
  %1662 = phi i16 [ %1660, %1658 ], [ 0, %1653 ], [ -1, %1656 ]
  store i16 %1662, ptr %1550, align 2, !tbaa !137
  br label %1663

1663:                                             ; preds = %1661, %1652
  br i1 %1341, label %1678, label %1664

1664:                                             ; preds = %1663
  %1665 = load i32, ptr %1514, align 8, !tbaa !150
  %1666 = icmp eq i32 %1665, 0
  br i1 %1666, label %1678, label %1667

1667:                                             ; preds = %1664
  %1668 = fptrunc double %1625 to float
  %1669 = fcmp ugt float %1668, 0.000000e+00
  br i1 %1669, label %1670, label %1675

1670:                                             ; preds = %1667
  %1671 = fcmp ult float %1668, 6.553500e+04
  br i1 %1671, label %1672, label %1675

1672:                                             ; preds = %1670
  %1673 = fadd float %1668, 5.000000e-01
  %1674 = fptoui float %1673 to i16
  br label %1675

1675:                                             ; preds = %1672, %1670, %1667
  %1676 = phi i16 [ %1674, %1672 ], [ 0, %1667 ], [ -1, %1670 ]
  %1677 = getelementptr inbounds %struct._PixelPacket, ptr %1550, i64 0, i32 3
  store i16 %1676, ptr %1677, align 2, !tbaa !139
  br label %1678

1678:                                             ; preds = %1675, %1664, %1663
  %1679 = icmp ne i32 %1554, 12
  %1680 = or i1 %1343, %1679
  %1681 = select i1 %1680, i1 true, i1 %1544
  br i1 %1681, label %1836, label %1682

1682:                                             ; preds = %1678
  %1683 = getelementptr inbounds i16, ptr %1536, i64 %1549
  %1684 = fptrunc double %1624 to float
  %1685 = fcmp ugt float %1684, 0.000000e+00
  br i1 %1685, label %1686, label %1691

1686:                                             ; preds = %1682
  %1687 = fcmp ult float %1684, 6.553500e+04
  br i1 %1687, label %1688, label %1691

1688:                                             ; preds = %1686
  %1689 = fadd float %1684, 5.000000e-01
  %1690 = fptoui float %1689 to i16
  br label %1691

1691:                                             ; preds = %1688, %1686, %1682
  %1692 = phi i16 [ %1690, %1688 ], [ 0, %1682 ], [ -1, %1686 ]
  store i16 %1692, ptr %1683, align 2, !tbaa !46
  br label %1836

1693:                                             ; preds = %1571, %1750
  %1694 = phi i64 [ %1760, %1750 ], [ 0, %1571 ]
  %1695 = phi double [ %1759, %1750 ], [ 0.000000e+00, %1571 ]
  %1696 = phi ptr [ %1758, %1750 ], [ %1535, %1571 ]
  %1697 = phi ptr [ %1757, %1750 ], [ %1551, %1571 ]
  %1698 = phi ptr [ %1756, %1750 ], [ %1567, %1571 ]
  %1699 = phi i64 [ %1761, %1750 ], [ 0, %1571 ]
  %1700 = phi double [ %1755, %1750 ], [ %6, %1571 ]
  %1701 = phi double [ %1754, %1750 ], [ %6, %1571 ]
  %1702 = phi double [ %1753, %1750 ], [ %6, %1571 ]
  %1703 = phi double [ %1752, %1750 ], [ %6, %1571 ]
  %1704 = phi double [ %1751, %1750 ], [ %6, %1571 ]
  %1705 = load double, ptr %1698, align 8, !tbaa !68
  %1706 = fcmp uno double %1705, 0.000000e+00
  br i1 %1706, label %1750, label %1707

1707:                                             ; preds = %1693
  %1708 = getelementptr inbounds %struct._PixelPacket, ptr %1697, i64 0, i32 3
  %1709 = load i16, ptr %1708, align 2, !tbaa !139
  %1710 = xor i16 %1709, -1
  %1711 = uitofp i16 %1710 to double
  %1712 = fmul double %1711, 0x3EF0001000100010
  %1713 = fptrunc double %1712 to float
  %1714 = add i64 %1694, 1
  %1715 = fpext float %1713 to double
  %1716 = fmul double %1705, %1715
  %1717 = fptrunc double %1716 to float
  %1718 = fpext float %1717 to double
  %1719 = fadd double %1695, %1718
  %1720 = getelementptr inbounds %struct._PixelPacket, ptr %1697, i64 0, i32 2
  %1721 = load i16, ptr %1720, align 2, !tbaa !131
  %1722 = uitofp i16 %1721 to float
  %1723 = fmul float %1722, %1717
  %1724 = fpext float %1723 to double
  %1725 = fadd double %1700, %1724
  %1726 = getelementptr inbounds %struct._PixelPacket, ptr %1697, i64 0, i32 1
  %1727 = load i16, ptr %1726, align 2, !tbaa !135
  %1728 = uitofp i16 %1727 to float
  %1729 = fmul float %1728, %1717
  %1730 = fpext float %1729 to double
  %1731 = fadd double %1701, %1730
  %1732 = load i16, ptr %1697, align 2, !tbaa !137
  %1733 = uitofp i16 %1732 to float
  %1734 = fmul float %1733, %1717
  %1735 = fpext float %1734 to double
  %1736 = fadd double %1702, %1735
  %1737 = uitofp i16 %1709 to double
  %1738 = call double @llvm.fmuladd.f64(double %1705, double %1737, double %1703)
  br i1 %1555, label %1739, label %1745

1739:                                             ; preds = %1707
  %1740 = load i16, ptr %1696, align 2, !tbaa !46
  %1741 = uitofp i16 %1740 to float
  %1742 = fmul float %1717, %1741
  %1743 = fpext float %1742 to double
  %1744 = fadd double %1704, %1743
  br label %1745

1745:                                             ; preds = %1739, %1707
  %1746 = phi double [ %1744, %1739 ], [ %1704, %1707 ]
  %1747 = getelementptr inbounds double, ptr %1698, i64 -1
  %1748 = getelementptr inbounds %struct._PixelPacket, ptr %1697, i64 1
  %1749 = getelementptr inbounds i16, ptr %1696, i64 1
  br label %1750

1750:                                             ; preds = %1745, %1693
  %1751 = phi double [ %1704, %1693 ], [ %1746, %1745 ]
  %1752 = phi double [ %1703, %1693 ], [ %1738, %1745 ]
  %1753 = phi double [ %1702, %1693 ], [ %1736, %1745 ]
  %1754 = phi double [ %1701, %1693 ], [ %1731, %1745 ]
  %1755 = phi double [ %1700, %1693 ], [ %1725, %1745 ]
  %1756 = phi ptr [ %1698, %1693 ], [ %1747, %1745 ]
  %1757 = phi ptr [ %1697, %1693 ], [ %1748, %1745 ]
  %1758 = phi ptr [ %1696, %1693 ], [ %1749, %1745 ]
  %1759 = phi double [ %1695, %1693 ], [ %1719, %1745 ]
  %1760 = phi i64 [ %1694, %1693 ], [ %1714, %1745 ]
  %1761 = add nuw nsw i64 %1699, 1
  %1762 = icmp eq i64 %1761, %1565
  br i1 %1762, label %1763, label %1693, !llvm.loop !164

1763:                                             ; preds = %1750, %1571
  %1764 = phi double [ %6, %1571 ], [ %1751, %1750 ]
  %1765 = phi double [ %6, %1571 ], [ %1752, %1750 ]
  %1766 = phi double [ %6, %1571 ], [ %1753, %1750 ]
  %1767 = phi double [ %6, %1571 ], [ %1754, %1750 ]
  %1768 = phi double [ %6, %1571 ], [ %1755, %1750 ]
  %1769 = phi double [ 0.000000e+00, %1571 ], [ %1759, %1750 ]
  %1770 = phi i64 [ 0, %1571 ], [ %1760, %1750 ]
  %1771 = fcmp olt double %1769, 0.000000e+00
  %1772 = select i1 %1771, double 0.000000e+00, double %1769
  %1773 = fcmp ult double %1772, 1.000000e-15
  %1774 = fdiv double 1.000000e+00, %1772
  %1775 = select i1 %1773, double 0x430C6BF52633FFFF, double %1774
  %1776 = uitofp i64 %1565 to double
  %1777 = uitofp i64 %1770 to double
  %1778 = fdiv double %1776, %1777
  %1779 = fmul double %1778, %1775
  %1780 = fmul double %1768, %1779
  %1781 = fptrunc double %1780 to float
  %1782 = fcmp ugt float %1781, 0.000000e+00
  br i1 %1782, label %1783, label %1788

1783:                                             ; preds = %1763
  %1784 = fcmp ult float %1781, 6.553500e+04
  br i1 %1784, label %1785, label %1788

1785:                                             ; preds = %1783
  %1786 = fadd float %1781, 5.000000e-01
  %1787 = fptoui float %1786 to i16
  br label %1788

1788:                                             ; preds = %1785, %1783, %1763
  %1789 = phi i16 [ %1787, %1785 ], [ 0, %1763 ], [ -1, %1783 ]
  %1790 = getelementptr inbounds %struct._PixelPacket, ptr %1550, i64 0, i32 2
  store i16 %1789, ptr %1790, align 2, !tbaa !131
  %1791 = fmul double %1767, %1779
  %1792 = fptrunc double %1791 to float
  %1793 = fcmp ugt float %1792, 0.000000e+00
  br i1 %1793, label %1794, label %1799

1794:                                             ; preds = %1788
  %1795 = fcmp ult float %1792, 6.553500e+04
  br i1 %1795, label %1796, label %1799

1796:                                             ; preds = %1794
  %1797 = fadd float %1792, 5.000000e-01
  %1798 = fptoui float %1797 to i16
  br label %1799

1799:                                             ; preds = %1796, %1794, %1788
  %1800 = phi i16 [ %1798, %1796 ], [ 0, %1788 ], [ -1, %1794 ]
  %1801 = getelementptr inbounds %struct._PixelPacket, ptr %1550, i64 0, i32 1
  store i16 %1800, ptr %1801, align 2, !tbaa !135
  %1802 = fmul double %1766, %1779
  %1803 = fptrunc double %1802 to float
  %1804 = fcmp ugt float %1803, 0.000000e+00
  br i1 %1804, label %1805, label %1810

1805:                                             ; preds = %1799
  %1806 = fcmp ult float %1803, 6.553500e+04
  br i1 %1806, label %1807, label %1810

1807:                                             ; preds = %1805
  %1808 = fadd float %1803, 5.000000e-01
  %1809 = fptoui float %1808 to i16
  br label %1810

1810:                                             ; preds = %1807, %1805, %1799
  %1811 = phi i16 [ %1809, %1807 ], [ 0, %1799 ], [ -1, %1805 ]
  store i16 %1811, ptr %1550, align 2, !tbaa !137
  %1812 = fptrunc double %1765 to float
  %1813 = fcmp ugt float %1812, 0.000000e+00
  br i1 %1813, label %1814, label %1819

1814:                                             ; preds = %1810
  %1815 = fcmp ult float %1812, 6.553500e+04
  br i1 %1815, label %1816, label %1819

1816:                                             ; preds = %1814
  %1817 = fadd float %1812, 5.000000e-01
  %1818 = fptoui float %1817 to i16
  br label %1819

1819:                                             ; preds = %1816, %1814, %1810
  %1820 = phi i16 [ %1818, %1816 ], [ 0, %1810 ], [ -1, %1814 ]
  %1821 = getelementptr inbounds %struct._PixelPacket, ptr %1550, i64 0, i32 3
  store i16 %1820, ptr %1821, align 2, !tbaa !139
  %1822 = icmp ne i32 %1554, 12
  %1823 = select i1 %1822, i1 true, i1 %1543
  br i1 %1823, label %1836, label %1824

1824:                                             ; preds = %1819
  %1825 = getelementptr inbounds i16, ptr %1536, i64 %1549
  %1826 = fmul double %1764, %1779
  %1827 = fptrunc double %1826 to float
  %1828 = fcmp ugt float %1827, 0.000000e+00
  br i1 %1828, label %1829, label %1834

1829:                                             ; preds = %1824
  %1830 = fcmp ult float %1827, 6.553500e+04
  br i1 %1830, label %1831, label %1834

1831:                                             ; preds = %1829
  %1832 = fadd float %1827, 5.000000e-01
  %1833 = fptoui float %1832 to i16
  br label %1834

1834:                                             ; preds = %1831, %1829, %1824
  %1835 = phi i16 [ %1833, %1831 ], [ 0, %1824 ], [ -1, %1829 ]
  store i16 %1835, ptr %1825, align 2, !tbaa !46
  br label %1836

1836:                                             ; preds = %1834, %1819, %1691, %1678
  %1837 = getelementptr inbounds %struct._PixelPacket, ptr %1551, i64 %1490, i32 2
  %1838 = load i16, ptr %1837, align 2, !tbaa !131
  %1839 = getelementptr inbounds %struct._PixelPacket, ptr %1550, i64 0, i32 2
  %1840 = load i16, ptr %1839, align 2, !tbaa !131
  %1841 = icmp eq i16 %1838, %1840
  br i1 %1841, label %1842, label %1872

1842:                                             ; preds = %1836
  %1843 = getelementptr inbounds %struct._PixelPacket, ptr %1551, i64 %1490, i32 1
  %1844 = load i16, ptr %1843, align 2, !tbaa !135
  %1845 = getelementptr inbounds %struct._PixelPacket, ptr %1550, i64 0, i32 1
  %1846 = load i16, ptr %1845, align 2, !tbaa !135
  %1847 = icmp eq i16 %1844, %1846
  br i1 %1847, label %1848, label %1872

1848:                                             ; preds = %1842
  %1849 = load i16, ptr %1552, align 2, !tbaa !137
  %1850 = load i16, ptr %1550, align 2, !tbaa !137
  %1851 = icmp eq i16 %1849, %1850
  br i1 %1851, label %1852, label %1872

1852:                                             ; preds = %1848
  %1853 = getelementptr inbounds %struct._PixelPacket, ptr %1551, i64 %1490, i32 3
  %1854 = load i16, ptr %1853, align 2, !tbaa !139
  %1855 = getelementptr inbounds %struct._PixelPacket, ptr %1550, i64 0, i32 3
  %1856 = load i16, ptr %1855, align 2, !tbaa !139
  %1857 = icmp eq i16 %1854, %1856
  br i1 %1857, label %1858, label %1872

1858:                                             ; preds = %1852
  br i1 %1555, label %1859, label %1875

1859:                                             ; preds = %1858
  br i1 %1545, label %1863, label %1860

1860:                                             ; preds = %1859
  %1861 = load i16, ptr %1546, align 2, !tbaa !46
  %1862 = zext i16 %1861 to i32
  br label %1863

1863:                                             ; preds = %1860, %1859
  %1864 = phi i32 [ %1862, %1860 ], [ 0, %1859 ]
  br i1 %1547, label %1869, label %1865

1865:                                             ; preds = %1863
  %1866 = getelementptr inbounds i16, ptr %1536, i64 %1549
  %1867 = load i16, ptr %1866, align 2, !tbaa !46
  %1868 = zext i16 %1867 to i32
  br label %1869

1869:                                             ; preds = %1865, %1863
  %1870 = phi i32 [ %1868, %1865 ], [ 0, %1863 ]
  %1871 = icmp eq i32 %1864, %1870
  br i1 %1871, label %1875, label %1872

1872:                                             ; preds = %1869, %1852, %1848, %1842, %1836
  %1873 = load i64, ptr %1492, align 8, !tbaa !115
  %1874 = add i64 %1873, 1
  store i64 %1874, ptr %1492, align 8, !tbaa !115
  br label %1875

1875:                                             ; preds = %1872, %1869, %1858
  %1876 = getelementptr inbounds %struct._PixelPacket, ptr %1551, i64 1
  %1877 = getelementptr inbounds %struct._PixelPacket, ptr %1550, i64 1
  %1878 = add nuw nsw i64 %1549, 1
  %1879 = load i64, ptr %1510, align 8, !tbaa !129
  %1880 = icmp slt i64 %1878, %1879
  br i1 %1880, label %1548, label %1881, !llvm.loop !165

1881:                                             ; preds = %1875, %1534
  %1882 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %1475, ptr noundef %7) #25
  %1883 = icmp ne i32 %1882, 0
  %1884 = zext i1 %1883 to i32
  %1885 = load ptr, ptr %1515, align 8, !tbaa !152
  %1886 = icmp eq ptr %1885, null
  br i1 %1886, label %1901, label %1887

1887:                                             ; preds = %1881
  %1888 = add nsw i64 %1521, 1
  %1889 = load i64, ptr %1510, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %10) #19
  %1890 = load ptr, ptr %1515, align 8, !tbaa !152
  %1891 = icmp eq ptr %1890, null
  br i1 %1891, label %1897, label %1892

1892:                                             ; preds = %1887
  %1893 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %10, i64 noundef 4096, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.110, ptr noundef nonnull %1516) #19
  %1894 = load ptr, ptr %1515, align 8, !tbaa !152
  %1895 = load ptr, ptr %1517, align 8, !tbaa !153
  %1896 = call i32 %1894(ptr noundef nonnull %10, i64 noundef %1521, i64 noundef %1889, ptr noundef %1895) #19
  br label %1897

1897:                                             ; preds = %1892, %1887
  %1898 = phi i32 [ %1896, %1892 ], [ 1, %1887 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %10) #19
  %1899 = icmp eq i32 %1898, 0
  %1900 = select i1 %1899, i32 0, i32 %1884
  br label %1901

1901:                                             ; preds = %1897, %1881, %1523, %1518
  %1902 = phi i64 [ %1521, %1518 ], [ %1521, %1523 ], [ %1888, %1897 ], [ %1521, %1881 ]
  %1903 = phi i32 [ 0, %1518 ], [ 0, %1523 ], [ %1900, %1897 ], [ %1884, %1881 ]
  %1904 = add nuw nsw i64 %1520, 1
  %1905 = load i64, ptr %1476, align 8, !tbaa !117
  %1906 = icmp slt i64 %1904, %1905
  br i1 %1906, label %1518, label %1907, !llvm.loop !166

1907:                                             ; preds = %1901, %1505
  %1908 = phi i32 [ 1, %1505 ], [ %1903, %1901 ]
  %1909 = getelementptr inbounds %struct._Image, ptr %1461, i64 0, i32 77
  %1910 = load i32, ptr %1909, align 8, !tbaa !167
  %1911 = getelementptr inbounds %struct._Image, ptr %1472, i64 0, i32 77
  store i32 %1910, ptr %1911, align 8, !tbaa !167
  br label %3028

1912:                                             ; preds = %1502, %1501
  %1913 = getelementptr inbounds %struct._Image, ptr %1461, i64 0, i32 8
  %1914 = load i64, ptr %1913, align 8, !tbaa !129
  %1915 = icmp sgt i64 %1914, 0
  br i1 %1915, label %1916, label %3028

1916:                                             ; preds = %1912
  %1917 = sub nsw i64 0, %1491
  %1918 = getelementptr inbounds %struct._Image, ptr %1472, i64 0, i32 7
  %1919 = mul i64 %1490, %1480
  %1920 = add i64 %1919, %1491
  %1921 = getelementptr inbounds %struct._Image, ptr %1461, i64 0, i32 1
  %1922 = getelementptr inbounds %struct._Image, ptr %1461, i64 0, i32 6
  %1923 = getelementptr inbounds %struct._Image, ptr %1461, i64 0, i32 6
  %1924 = getelementptr inbounds %struct._Image, ptr %1461, i64 0, i32 6
  %1925 = getelementptr inbounds %struct._Image, ptr %1461, i64 0, i32 47
  %1926 = getelementptr inbounds %struct._Image, ptr %1461, i64 0, i32 53
  %1927 = getelementptr inbounds %struct._Image, ptr %1461, i64 0, i32 48
  br label %1928

1928:                                             ; preds = %1916, %3022
  %1929 = phi i64 [ 0, %1916 ], [ %3025, %3022 ]
  %1930 = phi i32 [ 1, %1916 ], [ %3024, %3022 ]
  %1931 = phi i64 [ 0, %1916 ], [ %3023, %3022 ]
  %1932 = icmp eq i32 %1930, 0
  br i1 %1932, label %3022, label %1933

1933:                                             ; preds = %1928
  %1934 = sub nsw i64 %1929, %1490
  %1935 = load i64, ptr %1443, align 8, !tbaa !59
  %1936 = call ptr @GetCacheViewVirtualPixels(ptr noundef %1474, i64 noundef %1917, i64 noundef %1934, i64 noundef %1480, i64 noundef %1935, ptr noundef %7) #25
  %1937 = load i64, ptr %1918, align 8, !tbaa !117
  %1938 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %1475, i64 noundef 0, i64 noundef %1929, i64 noundef %1937, i64 noundef 1, ptr noundef %7) #25
  %1939 = icmp eq ptr %1936, null
  %1940 = icmp eq ptr %1938, null
  %1941 = select i1 %1939, i1 true, i1 %1940
  br i1 %1941, label %3022, label %1942

1942:                                             ; preds = %1933
  %1943 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %1474) #19
  %1944 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %1475) #19
  %1945 = load i64, ptr %1476, align 8, !tbaa !117
  %1946 = icmp sgt i64 %1945, 0
  br i1 %1946, label %1947, label %3002

1947:                                             ; preds = %1942
  %1948 = icmp eq ptr %1944, null
  %1949 = icmp eq ptr %1943, null
  %1950 = getelementptr inbounds i16, ptr %1943, i64 %1920
  %1951 = icmp eq ptr %1943, null
  %1952 = getelementptr inbounds i16, ptr %1943, i64 %1920
  %1953 = icmp eq ptr %1944, null
  %1954 = icmp eq ptr %1944, null
  %1955 = icmp eq ptr %1944, null
  %1956 = icmp eq ptr %1943, null
  %1957 = getelementptr inbounds i16, ptr %1943, i64 %1920
  %1958 = icmp eq ptr %1944, null
  br label %1959

1959:                                             ; preds = %1947, %2996
  %1960 = phi i64 [ 0, %1947 ], [ %2999, %2996 ]
  %1961 = phi ptr [ %1938, %1947 ], [ %2998, %2996 ]
  %1962 = phi ptr [ %1936, %1947 ], [ %2997, %2996 ]
  %1963 = getelementptr inbounds %struct._PixelPacket, ptr %1962, i64 %1920
  %1964 = load i64, ptr %1963, align 2
  store i64 %1964, ptr %1961, align 2
  %1965 = load i32, ptr %1921, align 4, !tbaa !141
  %1966 = icmp eq i32 %1965, 12
  br i1 %1966, label %1967, label %1974

1967:                                             ; preds = %1959
  %1968 = getelementptr inbounds i16, ptr %1944, i64 %1960
  br i1 %1948, label %1974, label %1969

1969:                                             ; preds = %1967
  br i1 %1949, label %1972, label %1970

1970:                                             ; preds = %1969
  %1971 = load i16, ptr %1950, align 2, !tbaa !46
  br label %1972

1972:                                             ; preds = %1970, %1969
  %1973 = phi i16 [ %1971, %1970 ], [ 0, %1969 ]
  store i16 %1973, ptr %1968, align 2, !tbaa !46
  br label %1974

1974:                                             ; preds = %1972, %1967, %1959
  %1975 = getelementptr inbounds %struct._PixelPacket, ptr %1962, i64 %1920, i32 2
  %1976 = load i16, ptr %1975, align 2, !tbaa !131
  %1977 = uitofp i16 %1976 to double
  %1978 = getelementptr inbounds %struct._PixelPacket, ptr %1962, i64 %1920, i32 1
  %1979 = load i16, ptr %1978, align 2, !tbaa !135
  %1980 = uitofp i16 %1979 to double
  %1981 = load i16, ptr %1963, align 2, !tbaa !137
  %1982 = uitofp i16 %1981 to double
  %1983 = getelementptr inbounds %struct._PixelPacket, ptr %1962, i64 %1920, i32 3
  %1984 = load i16, ptr %1983, align 2, !tbaa !139
  %1985 = uitofp i16 %1984 to double
  %1986 = fsub double 6.553500e+04, %1985
  br i1 %1966, label %1987, label %1994

1987:                                             ; preds = %1974
  br i1 %1951, label %1991, label %1988

1988:                                             ; preds = %1987
  %1989 = load i16, ptr %1952, align 2, !tbaa !46
  %1990 = zext i16 %1989 to i32
  br label %1991

1991:                                             ; preds = %1988, %1987
  %1992 = phi i32 [ %1990, %1988 ], [ 0, %1987 ]
  %1993 = sitofp i32 %1992 to double
  br label %1994

1994:                                             ; preds = %1991, %1974
  %1995 = phi double [ %1993, %1991 ], [ 0.000000e+00, %1974 ]
  switch i32 %1423, label %1998 [
    i32 1, label %1996
    i32 6, label %1997
    i32 5, label %1997
  ]

1996:                                             ; preds = %1994
  br label %1998

1997:                                             ; preds = %1994, %1994
  br label %1998

1998:                                             ; preds = %1997, %1996, %1994
  %1999 = phi double [ %1995, %1994 ], [ %1995, %1997 ], [ %6, %1996 ]
  %2000 = phi double [ %1986, %1994 ], [ %1986, %1997 ], [ %6, %1996 ]
  %2001 = phi double [ %1982, %1994 ], [ %1982, %1997 ], [ %6, %1996 ]
  %2002 = phi double [ %1980, %1994 ], [ %1980, %1997 ], [ %6, %1996 ]
  %2003 = phi double [ %1977, %1994 ], [ 0.000000e+00, %1997 ], [ %6, %1996 ]
  switch i32 %1423, label %2855 [
    i32 1, label %2004
    i32 3, label %2323
    i32 4, label %2409
    i32 18, label %2498
    i32 19, label %2498
    i32 20, label %2498
    i32 5, label %2665
    i32 6, label %2712
    i32 22, label %2763
  ]

2004:                                             ; preds = %1998
  %2005 = load ptr, ptr %1450, align 8, !tbaa !65
  %2006 = load i64, ptr %1438, align 8, !tbaa !58
  %2007 = load i64, ptr %1443, align 8, !tbaa !59
  %2008 = mul i64 %2007, %2006
  %2009 = getelementptr double, ptr %2005, i64 %2008
  %2010 = getelementptr double, ptr %2009, i64 -1
  br i1 %1311, label %2019, label %2011

2011:                                             ; preds = %2004
  %2012 = load i32, ptr %1922, align 8, !tbaa !150
  %2013 = icmp eq i32 %2012, 0
  br i1 %2013, label %2019, label %2014

2014:                                             ; preds = %2011
  %2015 = icmp sgt i64 %2007, 0
  br i1 %2015, label %2016, label %2248

2016:                                             ; preds = %2014
  %2017 = icmp sgt i64 %2006, 0
  %2018 = mul i64 %2006, -8
  br label %2164

2019:                                             ; preds = %2011, %2004
  %2020 = icmp sgt i64 %2007, 0
  br i1 %2020, label %2021, label %2094

2021:                                             ; preds = %2019
  %2022 = icmp sgt i64 %2006, 0
  %2023 = mul i64 %2006, -8
  br label %2024

2024:                                             ; preds = %2021, %2083
  %2025 = phi double [ %2003, %2021 ], [ %2089, %2083 ]
  %2026 = phi double [ %2002, %2021 ], [ %2088, %2083 ]
  %2027 = phi double [ %2001, %2021 ], [ %2087, %2083 ]
  %2028 = phi double [ %2000, %2021 ], [ %2086, %2083 ]
  %2029 = phi double [ %1999, %2021 ], [ %2085, %2083 ]
  %2030 = phi ptr [ %1943, %2021 ], [ %2091, %2083 ]
  %2031 = phi ptr [ %1962, %2021 ], [ %2090, %2083 ]
  %2032 = phi ptr [ %2010, %2021 ], [ %2084, %2083 ]
  %2033 = phi i64 [ 0, %2021 ], [ %2092, %2083 ]
  br i1 %2022, label %2034, label %2083

2034:                                             ; preds = %2024
  %2035 = icmp eq ptr %2030, null
  br label %2036

2036:                                             ; preds = %2034, %2072
  %2037 = phi double [ %2025, %2034 ], [ %2077, %2072 ]
  %2038 = phi double [ %2026, %2034 ], [ %2076, %2072 ]
  %2039 = phi double [ %2027, %2034 ], [ %2075, %2072 ]
  %2040 = phi double [ %2028, %2034 ], [ %2074, %2072 ]
  %2041 = phi double [ %2029, %2034 ], [ %2073, %2072 ]
  %2042 = phi ptr [ %2032, %2034 ], [ %2079, %2072 ]
  %2043 = phi i64 [ 0, %2034 ], [ %2078, %2072 ]
  %2044 = load double, ptr %2042, align 8, !tbaa !68
  %2045 = fcmp uno double %2044, 0.000000e+00
  br i1 %2045, label %2072, label %2046

2046:                                             ; preds = %2036
  %2047 = getelementptr inbounds %struct._PixelPacket, ptr %2031, i64 %2043
  %2048 = getelementptr inbounds %struct._PixelPacket, ptr %2031, i64 %2043, i32 2
  %2049 = load i16, ptr %2048, align 2, !tbaa !131
  %2050 = uitofp i16 %2049 to double
  %2051 = call double @llvm.fmuladd.f64(double %2044, double %2050, double %2037)
  %2052 = getelementptr inbounds %struct._PixelPacket, ptr %2031, i64 %2043, i32 1
  %2053 = load i16, ptr %2052, align 2, !tbaa !135
  %2054 = uitofp i16 %2053 to double
  %2055 = call double @llvm.fmuladd.f64(double %2044, double %2054, double %2038)
  %2056 = load i16, ptr %2047, align 2, !tbaa !137
  %2057 = uitofp i16 %2056 to double
  %2058 = call double @llvm.fmuladd.f64(double %2044, double %2057, double %2039)
  %2059 = getelementptr inbounds %struct._PixelPacket, ptr %2031, i64 %2043, i32 3
  %2060 = load i16, ptr %2059, align 2, !tbaa !139
  %2061 = uitofp i16 %2060 to double
  %2062 = call double @llvm.fmuladd.f64(double %2044, double %2061, double %2040)
  br i1 %1966, label %2063, label %2072

2063:                                             ; preds = %2046
  br i1 %2035, label %2068, label %2064

2064:                                             ; preds = %2063
  %2065 = getelementptr inbounds i16, ptr %2030, i64 %2043
  %2066 = load i16, ptr %2065, align 2, !tbaa !46
  %2067 = zext i16 %2066 to i32
  br label %2068

2068:                                             ; preds = %2064, %2063
  %2069 = phi i32 [ %2067, %2064 ], [ 0, %2063 ]
  %2070 = sitofp i32 %2069 to double
  %2071 = call double @llvm.fmuladd.f64(double %2044, double %2070, double %2041)
  br label %2072

2072:                                             ; preds = %2068, %2046, %2036
  %2073 = phi double [ %2041, %2036 ], [ %2071, %2068 ], [ %2041, %2046 ]
  %2074 = phi double [ %2040, %2036 ], [ %2062, %2068 ], [ %2062, %2046 ]
  %2075 = phi double [ %2039, %2036 ], [ %2058, %2068 ], [ %2058, %2046 ]
  %2076 = phi double [ %2038, %2036 ], [ %2055, %2068 ], [ %2055, %2046 ]
  %2077 = phi double [ %2037, %2036 ], [ %2051, %2068 ], [ %2051, %2046 ]
  %2078 = add nuw nsw i64 %2043, 1
  %2079 = getelementptr inbounds double, ptr %2042, i64 -1
  %2080 = icmp eq i64 %2078, %2006
  br i1 %2080, label %2081, label %2036, !llvm.loop !168

2081:                                             ; preds = %2072
  %2082 = getelementptr i8, ptr %2032, i64 %2023
  br label %2083

2083:                                             ; preds = %2081, %2024
  %2084 = phi ptr [ %2032, %2024 ], [ %2082, %2081 ]
  %2085 = phi double [ %2029, %2024 ], [ %2073, %2081 ]
  %2086 = phi double [ %2028, %2024 ], [ %2074, %2081 ]
  %2087 = phi double [ %2027, %2024 ], [ %2075, %2081 ]
  %2088 = phi double [ %2026, %2024 ], [ %2076, %2081 ]
  %2089 = phi double [ %2025, %2024 ], [ %2077, %2081 ]
  %2090 = getelementptr inbounds %struct._PixelPacket, ptr %2031, i64 %1480
  %2091 = getelementptr inbounds i16, ptr %2030, i64 %1480
  %2092 = add nuw nsw i64 %2033, 1
  %2093 = icmp eq i64 %2092, %2007
  br i1 %2093, label %2094, label %2024, !llvm.loop !169

2094:                                             ; preds = %2083, %2019
  %2095 = phi double [ %1999, %2019 ], [ %2085, %2083 ]
  %2096 = phi double [ %2000, %2019 ], [ %2086, %2083 ]
  %2097 = phi double [ %2001, %2019 ], [ %2087, %2083 ]
  %2098 = phi double [ %2002, %2019 ], [ %2088, %2083 ]
  %2099 = phi double [ %2003, %2019 ], [ %2089, %2083 ]
  br i1 %1313, label %2111, label %2100

2100:                                             ; preds = %2094
  %2101 = fptrunc double %2099 to float
  %2102 = fcmp ugt float %2101, 0.000000e+00
  br i1 %2102, label %2103, label %2108

2103:                                             ; preds = %2100
  %2104 = fcmp ult float %2101, 6.553500e+04
  br i1 %2104, label %2105, label %2108

2105:                                             ; preds = %2103
  %2106 = fadd float %2101, 5.000000e-01
  %2107 = fptoui float %2106 to i16
  br label %2108

2108:                                             ; preds = %2105, %2103, %2100
  %2109 = phi i16 [ %2107, %2105 ], [ 0, %2100 ], [ -1, %2103 ]
  %2110 = getelementptr inbounds %struct._PixelPacket, ptr %1961, i64 0, i32 2
  store i16 %2109, ptr %2110, align 2, !tbaa !131
  br label %2111

2111:                                             ; preds = %2108, %2094
  br i1 %1315, label %2123, label %2112

2112:                                             ; preds = %2111
  %2113 = fptrunc double %2098 to float
  %2114 = fcmp ugt float %2113, 0.000000e+00
  br i1 %2114, label %2115, label %2120

2115:                                             ; preds = %2112
  %2116 = fcmp ult float %2113, 6.553500e+04
  br i1 %2116, label %2117, label %2120

2117:                                             ; preds = %2115
  %2118 = fadd float %2113, 5.000000e-01
  %2119 = fptoui float %2118 to i16
  br label %2120

2120:                                             ; preds = %2117, %2115, %2112
  %2121 = phi i16 [ %2119, %2117 ], [ 0, %2112 ], [ -1, %2115 ]
  %2122 = getelementptr inbounds %struct._PixelPacket, ptr %1961, i64 0, i32 1
  store i16 %2121, ptr %2122, align 2, !tbaa !135
  br label %2123

2123:                                             ; preds = %2120, %2111
  br i1 %1317, label %2134, label %2124

2124:                                             ; preds = %2123
  %2125 = fptrunc double %2097 to float
  %2126 = fcmp ugt float %2125, 0.000000e+00
  br i1 %2126, label %2127, label %2132

2127:                                             ; preds = %2124
  %2128 = fcmp ult float %2125, 6.553500e+04
  br i1 %2128, label %2129, label %2132

2129:                                             ; preds = %2127
  %2130 = fadd float %2125, 5.000000e-01
  %2131 = fptoui float %2130 to i16
  br label %2132

2132:                                             ; preds = %2129, %2127, %2124
  %2133 = phi i16 [ %2131, %2129 ], [ 0, %2124 ], [ -1, %2127 ]
  store i16 %2133, ptr %1961, align 2, !tbaa !137
  br label %2134

2134:                                             ; preds = %2132, %2123
  br i1 %1319, label %2149, label %2135

2135:                                             ; preds = %2134
  %2136 = load i32, ptr %1923, align 8, !tbaa !150
  %2137 = icmp eq i32 %2136, 0
  br i1 %2137, label %2149, label %2138

2138:                                             ; preds = %2135
  %2139 = fptrunc double %2096 to float
  %2140 = fcmp ugt float %2139, 0.000000e+00
  br i1 %2140, label %2141, label %2146

2141:                                             ; preds = %2138
  %2142 = fcmp ult float %2139, 6.553500e+04
  br i1 %2142, label %2143, label %2146

2143:                                             ; preds = %2141
  %2144 = fadd float %2139, 5.000000e-01
  %2145 = fptoui float %2144 to i16
  br label %2146

2146:                                             ; preds = %2143, %2141, %2138
  %2147 = phi i16 [ %2145, %2143 ], [ 0, %2138 ], [ -1, %2141 ]
  %2148 = getelementptr inbounds %struct._PixelPacket, ptr %1961, i64 0, i32 3
  store i16 %2147, ptr %2148, align 2, !tbaa !139
  br label %2149

2149:                                             ; preds = %2146, %2135, %2134
  %2150 = icmp ne i32 %1965, 12
  %2151 = or i1 %1321, %2150
  %2152 = select i1 %2151, i1 true, i1 %1954
  br i1 %2152, label %2855, label %2153

2153:                                             ; preds = %2149
  %2154 = getelementptr inbounds i16, ptr %1944, i64 %1960
  %2155 = fptrunc double %2095 to float
  %2156 = fcmp ugt float %2155, 0.000000e+00
  br i1 %2156, label %2157, label %2162

2157:                                             ; preds = %2153
  %2158 = fcmp ult float %2155, 6.553500e+04
  br i1 %2158, label %2159, label %2162

2159:                                             ; preds = %2157
  %2160 = fadd float %2155, 5.000000e-01
  %2161 = fptoui float %2160 to i16
  br label %2162

2162:                                             ; preds = %2159, %2157, %2153
  %2163 = phi i16 [ %2161, %2159 ], [ 0, %2153 ], [ -1, %2157 ]
  store i16 %2163, ptr %2154, align 2, !tbaa !46
  br label %2855

2164:                                             ; preds = %2016, %2235
  %2165 = phi i64 [ 0, %2016 ], [ %2243, %2235 ]
  %2166 = phi double [ 0.000000e+00, %2016 ], [ %2242, %2235 ]
  %2167 = phi double [ %2003, %2016 ], [ %2241, %2235 ]
  %2168 = phi double [ %2002, %2016 ], [ %2240, %2235 ]
  %2169 = phi double [ %2001, %2016 ], [ %2239, %2235 ]
  %2170 = phi double [ %2000, %2016 ], [ %2238, %2235 ]
  %2171 = phi double [ %1999, %2016 ], [ %2237, %2235 ]
  %2172 = phi ptr [ %1943, %2016 ], [ %2245, %2235 ]
  %2173 = phi ptr [ %1962, %2016 ], [ %2244, %2235 ]
  %2174 = phi ptr [ %2010, %2016 ], [ %2236, %2235 ]
  %2175 = phi i64 [ 0, %2016 ], [ %2246, %2235 ]
  br i1 %2017, label %2176, label %2235

2176:                                             ; preds = %2164
  %2177 = icmp eq ptr %2172, null
  br label %2178

2178:                                             ; preds = %2176, %2222
  %2179 = phi i64 [ %2165, %2176 ], [ %2229, %2222 ]
  %2180 = phi double [ %2166, %2176 ], [ %2228, %2222 ]
  %2181 = phi double [ %2167, %2176 ], [ %2227, %2222 ]
  %2182 = phi double [ %2168, %2176 ], [ %2226, %2222 ]
  %2183 = phi double [ %2169, %2176 ], [ %2225, %2222 ]
  %2184 = phi double [ %2170, %2176 ], [ %2224, %2222 ]
  %2185 = phi double [ %2171, %2176 ], [ %2223, %2222 ]
  %2186 = phi ptr [ %2174, %2176 ], [ %2231, %2222 ]
  %2187 = phi i64 [ 0, %2176 ], [ %2230, %2222 ]
  %2188 = load double, ptr %2186, align 8, !tbaa !68
  %2189 = fcmp uno double %2188, 0.000000e+00
  br i1 %2189, label %2222, label %2190

2190:                                             ; preds = %2178
  %2191 = getelementptr inbounds %struct._PixelPacket, ptr %2173, i64 %2187
  %2192 = getelementptr inbounds %struct._PixelPacket, ptr %2173, i64 %2187, i32 3
  %2193 = load i16, ptr %2192, align 2, !tbaa !139
  %2194 = xor i16 %2193, -1
  %2195 = uitofp i16 %2194 to double
  %2196 = fmul double %2195, 0x3EF0001000100010
  %2197 = add i64 %2179, 1
  %2198 = fmul double %2188, %2196
  %2199 = fadd double %2180, %2198
  %2200 = getelementptr inbounds %struct._PixelPacket, ptr %2173, i64 %2187, i32 2
  %2201 = load i16, ptr %2200, align 2, !tbaa !131
  %2202 = uitofp i16 %2201 to double
  %2203 = call double @llvm.fmuladd.f64(double %2198, double %2202, double %2181)
  %2204 = getelementptr inbounds %struct._PixelPacket, ptr %2173, i64 %2187, i32 1
  %2205 = load i16, ptr %2204, align 2, !tbaa !135
  %2206 = uitofp i16 %2205 to double
  %2207 = call double @llvm.fmuladd.f64(double %2198, double %2206, double %2182)
  %2208 = load i16, ptr %2191, align 2, !tbaa !137
  %2209 = uitofp i16 %2208 to double
  %2210 = call double @llvm.fmuladd.f64(double %2198, double %2209, double %2183)
  %2211 = uitofp i16 %2193 to double
  %2212 = call double @llvm.fmuladd.f64(double %2188, double %2211, double %2184)
  br i1 %1966, label %2213, label %2222

2213:                                             ; preds = %2190
  br i1 %2177, label %2218, label %2214

2214:                                             ; preds = %2213
  %2215 = getelementptr inbounds i16, ptr %2172, i64 %2187
  %2216 = load i16, ptr %2215, align 2, !tbaa !46
  %2217 = zext i16 %2216 to i32
  br label %2218

2218:                                             ; preds = %2214, %2213
  %2219 = phi i32 [ %2217, %2214 ], [ 0, %2213 ]
  %2220 = sitofp i32 %2219 to double
  %2221 = call double @llvm.fmuladd.f64(double %2198, double %2220, double %2185)
  br label %2222

2222:                                             ; preds = %2218, %2190, %2178
  %2223 = phi double [ %2185, %2178 ], [ %2221, %2218 ], [ %2185, %2190 ]
  %2224 = phi double [ %2184, %2178 ], [ %2212, %2218 ], [ %2212, %2190 ]
  %2225 = phi double [ %2183, %2178 ], [ %2210, %2218 ], [ %2210, %2190 ]
  %2226 = phi double [ %2182, %2178 ], [ %2207, %2218 ], [ %2207, %2190 ]
  %2227 = phi double [ %2181, %2178 ], [ %2203, %2218 ], [ %2203, %2190 ]
  %2228 = phi double [ %2180, %2178 ], [ %2199, %2218 ], [ %2199, %2190 ]
  %2229 = phi i64 [ %2179, %2178 ], [ %2197, %2218 ], [ %2197, %2190 ]
  %2230 = add nuw nsw i64 %2187, 1
  %2231 = getelementptr inbounds double, ptr %2186, i64 -1
  %2232 = icmp eq i64 %2230, %2006
  br i1 %2232, label %2233, label %2178, !llvm.loop !170

2233:                                             ; preds = %2222
  %2234 = getelementptr i8, ptr %2174, i64 %2018
  br label %2235

2235:                                             ; preds = %2233, %2164
  %2236 = phi ptr [ %2174, %2164 ], [ %2234, %2233 ]
  %2237 = phi double [ %2171, %2164 ], [ %2223, %2233 ]
  %2238 = phi double [ %2170, %2164 ], [ %2224, %2233 ]
  %2239 = phi double [ %2169, %2164 ], [ %2225, %2233 ]
  %2240 = phi double [ %2168, %2164 ], [ %2226, %2233 ]
  %2241 = phi double [ %2167, %2164 ], [ %2227, %2233 ]
  %2242 = phi double [ %2166, %2164 ], [ %2228, %2233 ]
  %2243 = phi i64 [ %2165, %2164 ], [ %2229, %2233 ]
  %2244 = getelementptr inbounds %struct._PixelPacket, ptr %2173, i64 %1480
  %2245 = getelementptr inbounds i16, ptr %2172, i64 %1480
  %2246 = add nuw nsw i64 %2175, 1
  %2247 = icmp eq i64 %2246, %2007
  br i1 %2247, label %2248, label %2164, !llvm.loop !171

2248:                                             ; preds = %2235, %2014
  %2249 = phi double [ %1999, %2014 ], [ %2237, %2235 ]
  %2250 = phi double [ %2000, %2014 ], [ %2238, %2235 ]
  %2251 = phi double [ %2001, %2014 ], [ %2239, %2235 ]
  %2252 = phi double [ %2002, %2014 ], [ %2240, %2235 ]
  %2253 = phi double [ %2003, %2014 ], [ %2241, %2235 ]
  %2254 = phi double [ 0.000000e+00, %2014 ], [ %2242, %2235 ]
  %2255 = phi i64 [ 0, %2014 ], [ %2243, %2235 ]
  %2256 = fcmp olt double %2254, 0.000000e+00
  %2257 = select i1 %2256, double 0.000000e+00, double %2254
  %2258 = fcmp ult double %2257, 1.000000e-15
  %2259 = fdiv double 1.000000e+00, %2257
  %2260 = select i1 %2258, double 0x430C6BF52633FFFF, double %2259
  %2261 = uitofp i64 %2007 to double
  %2262 = uitofp i64 %2006 to double
  %2263 = fmul double %2262, %2261
  %2264 = uitofp i64 %2255 to double
  %2265 = fdiv double %2263, %2264
  %2266 = fmul double %2265, %2260
  %2267 = fmul double %2253, %2266
  %2268 = fptrunc double %2267 to float
  %2269 = fcmp ugt float %2268, 0.000000e+00
  br i1 %2269, label %2270, label %2275

2270:                                             ; preds = %2248
  %2271 = fcmp ult float %2268, 6.553500e+04
  br i1 %2271, label %2272, label %2275

2272:                                             ; preds = %2270
  %2273 = fadd float %2268, 5.000000e-01
  %2274 = fptoui float %2273 to i16
  br label %2275

2275:                                             ; preds = %2272, %2270, %2248
  %2276 = phi i16 [ %2274, %2272 ], [ 0, %2248 ], [ -1, %2270 ]
  %2277 = getelementptr inbounds %struct._PixelPacket, ptr %1961, i64 0, i32 2
  store i16 %2276, ptr %2277, align 2, !tbaa !131
  %2278 = fmul double %2252, %2266
  %2279 = fptrunc double %2278 to float
  %2280 = fcmp ugt float %2279, 0.000000e+00
  br i1 %2280, label %2281, label %2286

2281:                                             ; preds = %2275
  %2282 = fcmp ult float %2279, 6.553500e+04
  br i1 %2282, label %2283, label %2286

2283:                                             ; preds = %2281
  %2284 = fadd float %2279, 5.000000e-01
  %2285 = fptoui float %2284 to i16
  br label %2286

2286:                                             ; preds = %2283, %2281, %2275
  %2287 = phi i16 [ %2285, %2283 ], [ 0, %2275 ], [ -1, %2281 ]
  %2288 = getelementptr inbounds %struct._PixelPacket, ptr %1961, i64 0, i32 1
  store i16 %2287, ptr %2288, align 2, !tbaa !135
  %2289 = fmul double %2251, %2266
  %2290 = fptrunc double %2289 to float
  %2291 = fcmp ugt float %2290, 0.000000e+00
  br i1 %2291, label %2292, label %2297

2292:                                             ; preds = %2286
  %2293 = fcmp ult float %2290, 6.553500e+04
  br i1 %2293, label %2294, label %2297

2294:                                             ; preds = %2292
  %2295 = fadd float %2290, 5.000000e-01
  %2296 = fptoui float %2295 to i16
  br label %2297

2297:                                             ; preds = %2294, %2292, %2286
  %2298 = phi i16 [ %2296, %2294 ], [ 0, %2286 ], [ -1, %2292 ]
  store i16 %2298, ptr %1961, align 2, !tbaa !137
  %2299 = fptrunc double %2250 to float
  %2300 = fcmp ugt float %2299, 0.000000e+00
  br i1 %2300, label %2301, label %2306

2301:                                             ; preds = %2297
  %2302 = fcmp ult float %2299, 6.553500e+04
  br i1 %2302, label %2303, label %2306

2303:                                             ; preds = %2301
  %2304 = fadd float %2299, 5.000000e-01
  %2305 = fptoui float %2304 to i16
  br label %2306

2306:                                             ; preds = %2303, %2301, %2297
  %2307 = phi i16 [ %2305, %2303 ], [ 0, %2297 ], [ -1, %2301 ]
  %2308 = getelementptr inbounds %struct._PixelPacket, ptr %1961, i64 0, i32 3
  store i16 %2307, ptr %2308, align 2, !tbaa !139
  %2309 = icmp ne i32 %1965, 12
  %2310 = select i1 %2309, i1 true, i1 %1953
  br i1 %2310, label %2855, label %2311

2311:                                             ; preds = %2306
  %2312 = getelementptr inbounds i16, ptr %1944, i64 %1960
  %2313 = fmul double %2249, %2266
  %2314 = fptrunc double %2313 to float
  %2315 = fcmp ugt float %2314, 0.000000e+00
  br i1 %2315, label %2316, label %2321

2316:                                             ; preds = %2311
  %2317 = fcmp ult float %2314, 6.553500e+04
  br i1 %2317, label %2318, label %2321

2318:                                             ; preds = %2316
  %2319 = fadd float %2314, 5.000000e-01
  %2320 = fptoui float %2319 to i16
  br label %2321

2321:                                             ; preds = %2318, %2316, %2311
  %2322 = phi i16 [ %2320, %2318 ], [ 0, %2311 ], [ -1, %2316 ]
  store i16 %2322, ptr %2312, align 2, !tbaa !46
  br label %2855

2323:                                             ; preds = %1998
  %2324 = load i64, ptr %1443, align 8, !tbaa !59
  %2325 = icmp sgt i64 %2324, 0
  br i1 %2325, label %2326, label %2855

2326:                                             ; preds = %2323
  %2327 = load ptr, ptr %1449, align 8, !tbaa !65
  %2328 = load i64, ptr %1438, align 8, !tbaa !58
  %2329 = icmp sgt i64 %2328, 0
  %2330 = shl i64 %2328, 3
  br label %2331

2331:                                             ; preds = %2326, %2398
  %2332 = phi double [ 6.553500e+04, %2326 ], [ %2404, %2398 ]
  %2333 = phi double [ 6.553500e+04, %2326 ], [ %2403, %2398 ]
  %2334 = phi double [ 6.553500e+04, %2326 ], [ %2402, %2398 ]
  %2335 = phi double [ 6.553500e+04, %2326 ], [ %2401, %2398 ]
  %2336 = phi double [ 6.553500e+04, %2326 ], [ %2400, %2398 ]
  %2337 = phi ptr [ %1943, %2326 ], [ %2406, %2398 ]
  %2338 = phi ptr [ %1962, %2326 ], [ %2405, %2398 ]
  %2339 = phi ptr [ %2327, %2326 ], [ %2399, %2398 ]
  %2340 = phi i64 [ 0, %2326 ], [ %2407, %2398 ]
  br i1 %2329, label %2341, label %2398

2341:                                             ; preds = %2331
  %2342 = icmp eq ptr %2337, null
  br label %2343

2343:                                             ; preds = %2341, %2387
  %2344 = phi double [ %2332, %2341 ], [ %2392, %2387 ]
  %2345 = phi double [ %2333, %2341 ], [ %2391, %2387 ]
  %2346 = phi double [ %2334, %2341 ], [ %2390, %2387 ]
  %2347 = phi double [ %2335, %2341 ], [ %2389, %2387 ]
  %2348 = phi double [ %2336, %2341 ], [ %2388, %2387 ]
  %2349 = phi ptr [ %2339, %2341 ], [ %2394, %2387 ]
  %2350 = phi i64 [ 0, %2341 ], [ %2393, %2387 ]
  %2351 = load double, ptr %2349, align 8, !tbaa !68
  %2352 = fcmp uno double %2351, 0.000000e+00
  %2353 = fcmp olt double %2351, 5.000000e-01
  %2354 = or i1 %2352, %2353
  br i1 %2354, label %2387, label %2355

2355:                                             ; preds = %2343
  %2356 = getelementptr inbounds %struct._PixelPacket, ptr %2338, i64 %2350
  %2357 = getelementptr inbounds %struct._PixelPacket, ptr %2338, i64 %2350, i32 2
  %2358 = load i16, ptr %2357, align 2, !tbaa !131
  %2359 = uitofp i16 %2358 to double
  %2360 = fcmp olt double %2344, %2359
  %2361 = select i1 %2360, double %2344, double %2359
  %2362 = getelementptr inbounds %struct._PixelPacket, ptr %2338, i64 %2350, i32 1
  %2363 = load i16, ptr %2362, align 2, !tbaa !135
  %2364 = uitofp i16 %2363 to double
  %2365 = fcmp olt double %2345, %2364
  %2366 = select i1 %2365, double %2345, double %2364
  %2367 = load i16, ptr %2356, align 2, !tbaa !137
  %2368 = uitofp i16 %2367 to double
  %2369 = fcmp olt double %2346, %2368
  %2370 = select i1 %2369, double %2346, double %2368
  %2371 = getelementptr inbounds %struct._PixelPacket, ptr %2338, i64 %2350, i32 3
  %2372 = load i16, ptr %2371, align 2, !tbaa !139
  %2373 = uitofp i16 %2372 to double
  %2374 = fsub double 6.553500e+04, %2373
  %2375 = fcmp olt double %2347, %2374
  %2376 = select i1 %2375, double %2347, double %2374
  br i1 %1966, label %2377, label %2387

2377:                                             ; preds = %2355
  br i1 %2342, label %2382, label %2378

2378:                                             ; preds = %2377
  %2379 = getelementptr inbounds i16, ptr %2337, i64 %2350
  %2380 = load i16, ptr %2379, align 2, !tbaa !46
  %2381 = zext i16 %2380 to i32
  br label %2382

2382:                                             ; preds = %2378, %2377
  %2383 = phi i32 [ %2381, %2378 ], [ 0, %2377 ]
  %2384 = sitofp i32 %2383 to double
  %2385 = fcmp olt double %2348, %2384
  %2386 = select i1 %2385, double %2348, double %2384
  br label %2387

2387:                                             ; preds = %2382, %2355, %2343
  %2388 = phi double [ %2348, %2343 ], [ %2386, %2382 ], [ %2348, %2355 ]
  %2389 = phi double [ %2347, %2343 ], [ %2376, %2382 ], [ %2376, %2355 ]
  %2390 = phi double [ %2346, %2343 ], [ %2370, %2382 ], [ %2370, %2355 ]
  %2391 = phi double [ %2345, %2343 ], [ %2366, %2382 ], [ %2366, %2355 ]
  %2392 = phi double [ %2344, %2343 ], [ %2361, %2382 ], [ %2361, %2355 ]
  %2393 = add nuw nsw i64 %2350, 1
  %2394 = getelementptr inbounds double, ptr %2349, i64 1
  %2395 = icmp eq i64 %2393, %2328
  br i1 %2395, label %2396, label %2343, !llvm.loop !172

2396:                                             ; preds = %2387
  %2397 = getelementptr i8, ptr %2339, i64 %2330
  br label %2398

2398:                                             ; preds = %2396, %2331
  %2399 = phi ptr [ %2339, %2331 ], [ %2397, %2396 ]
  %2400 = phi double [ %2336, %2331 ], [ %2388, %2396 ]
  %2401 = phi double [ %2335, %2331 ], [ %2389, %2396 ]
  %2402 = phi double [ %2334, %2331 ], [ %2390, %2396 ]
  %2403 = phi double [ %2333, %2331 ], [ %2391, %2396 ]
  %2404 = phi double [ %2332, %2331 ], [ %2392, %2396 ]
  %2405 = getelementptr inbounds %struct._PixelPacket, ptr %2338, i64 %1480
  %2406 = getelementptr inbounds i16, ptr %2337, i64 %1480
  %2407 = add nuw nsw i64 %2340, 1
  %2408 = icmp eq i64 %2407, %2324
  br i1 %2408, label %2855, label %2331, !llvm.loop !173

2409:                                             ; preds = %1998
  %2410 = load i64, ptr %1438, align 8, !tbaa !58
  %2411 = load i64, ptr %1443, align 8, !tbaa !59
  %2412 = icmp sgt i64 %2411, 0
  br i1 %2412, label %2413, label %2855

2413:                                             ; preds = %2409
  %2414 = load ptr, ptr %1448, align 8, !tbaa !65
  %2415 = mul i64 %2411, %2410
  %2416 = getelementptr double, ptr %2414, i64 %2415
  %2417 = getelementptr double, ptr %2416, i64 -1
  %2418 = icmp sgt i64 %2410, 0
  %2419 = mul i64 %2410, -8
  br label %2420

2420:                                             ; preds = %2413, %2487
  %2421 = phi double [ 0.000000e+00, %2413 ], [ %2493, %2487 ]
  %2422 = phi double [ 0.000000e+00, %2413 ], [ %2492, %2487 ]
  %2423 = phi double [ 0.000000e+00, %2413 ], [ %2491, %2487 ]
  %2424 = phi double [ 0.000000e+00, %2413 ], [ %2490, %2487 ]
  %2425 = phi double [ 0.000000e+00, %2413 ], [ %2489, %2487 ]
  %2426 = phi ptr [ %1943, %2413 ], [ %2495, %2487 ]
  %2427 = phi ptr [ %1962, %2413 ], [ %2494, %2487 ]
  %2428 = phi ptr [ %2417, %2413 ], [ %2488, %2487 ]
  %2429 = phi i64 [ 0, %2413 ], [ %2496, %2487 ]
  br i1 %2418, label %2430, label %2487

2430:                                             ; preds = %2420
  %2431 = icmp eq ptr %2426, null
  br label %2432

2432:                                             ; preds = %2430, %2476
  %2433 = phi double [ %2421, %2430 ], [ %2481, %2476 ]
  %2434 = phi double [ %2422, %2430 ], [ %2480, %2476 ]
  %2435 = phi double [ %2423, %2430 ], [ %2479, %2476 ]
  %2436 = phi double [ %2424, %2430 ], [ %2478, %2476 ]
  %2437 = phi double [ %2425, %2430 ], [ %2477, %2476 ]
  %2438 = phi ptr [ %2428, %2430 ], [ %2483, %2476 ]
  %2439 = phi i64 [ 0, %2430 ], [ %2482, %2476 ]
  %2440 = load double, ptr %2438, align 8, !tbaa !68
  %2441 = fcmp uno double %2440, 0.000000e+00
  %2442 = fcmp olt double %2440, 5.000000e-01
  %2443 = or i1 %2441, %2442
  br i1 %2443, label %2476, label %2444

2444:                                             ; preds = %2432
  %2445 = getelementptr inbounds %struct._PixelPacket, ptr %2427, i64 %2439
  %2446 = getelementptr inbounds %struct._PixelPacket, ptr %2427, i64 %2439, i32 2
  %2447 = load i16, ptr %2446, align 2, !tbaa !131
  %2448 = uitofp i16 %2447 to double
  %2449 = fcmp ogt double %2433, %2448
  %2450 = select i1 %2449, double %2433, double %2448
  %2451 = getelementptr inbounds %struct._PixelPacket, ptr %2427, i64 %2439, i32 1
  %2452 = load i16, ptr %2451, align 2, !tbaa !135
  %2453 = uitofp i16 %2452 to double
  %2454 = fcmp ogt double %2434, %2453
  %2455 = select i1 %2454, double %2434, double %2453
  %2456 = load i16, ptr %2445, align 2, !tbaa !137
  %2457 = uitofp i16 %2456 to double
  %2458 = fcmp ogt double %2435, %2457
  %2459 = select i1 %2458, double %2435, double %2457
  %2460 = getelementptr inbounds %struct._PixelPacket, ptr %2427, i64 %2439, i32 3
  %2461 = load i16, ptr %2460, align 2, !tbaa !139
  %2462 = uitofp i16 %2461 to double
  %2463 = fsub double 6.553500e+04, %2462
  %2464 = fcmp ogt double %2436, %2463
  %2465 = select i1 %2464, double %2436, double %2463
  br i1 %1966, label %2466, label %2476

2466:                                             ; preds = %2444
  br i1 %2431, label %2471, label %2467

2467:                                             ; preds = %2466
  %2468 = getelementptr inbounds i16, ptr %2426, i64 %2439
  %2469 = load i16, ptr %2468, align 2, !tbaa !46
  %2470 = zext i16 %2469 to i32
  br label %2471

2471:                                             ; preds = %2467, %2466
  %2472 = phi i32 [ %2470, %2467 ], [ 0, %2466 ]
  %2473 = sitofp i32 %2472 to double
  %2474 = fcmp ogt double %2437, %2473
  %2475 = select i1 %2474, double %2437, double %2473
  br label %2476

2476:                                             ; preds = %2471, %2444, %2432
  %2477 = phi double [ %2437, %2432 ], [ %2475, %2471 ], [ %2437, %2444 ]
  %2478 = phi double [ %2436, %2432 ], [ %2465, %2471 ], [ %2465, %2444 ]
  %2479 = phi double [ %2435, %2432 ], [ %2459, %2471 ], [ %2459, %2444 ]
  %2480 = phi double [ %2434, %2432 ], [ %2455, %2471 ], [ %2455, %2444 ]
  %2481 = phi double [ %2433, %2432 ], [ %2450, %2471 ], [ %2450, %2444 ]
  %2482 = add nuw nsw i64 %2439, 1
  %2483 = getelementptr inbounds double, ptr %2438, i64 -1
  %2484 = icmp eq i64 %2482, %2410
  br i1 %2484, label %2485, label %2432, !llvm.loop !174

2485:                                             ; preds = %2476
  %2486 = getelementptr i8, ptr %2428, i64 %2419
  br label %2487

2487:                                             ; preds = %2485, %2420
  %2488 = phi ptr [ %2428, %2420 ], [ %2486, %2485 ]
  %2489 = phi double [ %2425, %2420 ], [ %2477, %2485 ]
  %2490 = phi double [ %2424, %2420 ], [ %2478, %2485 ]
  %2491 = phi double [ %2423, %2420 ], [ %2479, %2485 ]
  %2492 = phi double [ %2422, %2420 ], [ %2480, %2485 ]
  %2493 = phi double [ %2421, %2420 ], [ %2481, %2485 ]
  %2494 = getelementptr inbounds %struct._PixelPacket, ptr %2427, i64 %1480
  %2495 = getelementptr inbounds i16, ptr %2426, i64 %1480
  %2496 = add nuw nsw i64 %2429, 1
  %2497 = icmp eq i64 %2496, %2411
  br i1 %2497, label %2855, label %2420, !llvm.loop !175

2498:                                             ; preds = %1998, %1998, %1998
  %2499 = load i64, ptr %1443, align 8, !tbaa !59
  %2500 = icmp sgt i64 %2499, 0
  br i1 %2500, label %2501, label %2639

2501:                                             ; preds = %2498
  %2502 = load ptr, ptr %1447, align 8, !tbaa !65
  %2503 = load i64, ptr %1438, align 8, !tbaa !58
  %2504 = icmp sgt i64 %2503, 0
  %2505 = shl i64 %2503, 3
  br label %2506

2506:                                             ; preds = %2501, %2623
  %2507 = phi double [ 0.000000e+00, %2501 ], [ %2634, %2623 ]
  %2508 = phi double [ 0.000000e+00, %2501 ], [ %2633, %2623 ]
  %2509 = phi double [ 0.000000e+00, %2501 ], [ %2632, %2623 ]
  %2510 = phi double [ 0.000000e+00, %2501 ], [ %2631, %2623 ]
  %2511 = phi double [ 0.000000e+00, %2501 ], [ %2630, %2623 ]
  %2512 = phi double [ 6.553500e+04, %2501 ], [ %2629, %2623 ]
  %2513 = phi double [ 6.553500e+04, %2501 ], [ %2628, %2623 ]
  %2514 = phi double [ 6.553500e+04, %2501 ], [ %2627, %2623 ]
  %2515 = phi double [ 6.553500e+04, %2501 ], [ %2626, %2623 ]
  %2516 = phi double [ 6.553500e+04, %2501 ], [ %2625, %2623 ]
  %2517 = phi ptr [ %1943, %2501 ], [ %2636, %2623 ]
  %2518 = phi ptr [ %1962, %2501 ], [ %2635, %2623 ]
  %2519 = phi ptr [ %2502, %2501 ], [ %2624, %2623 ]
  %2520 = phi i64 [ 0, %2501 ], [ %2637, %2623 ]
  br i1 %2504, label %2521, label %2623

2521:                                             ; preds = %2506
  %2522 = icmp eq ptr %2517, null
  %2523 = icmp eq ptr %2517, null
  br label %2524

2524:                                             ; preds = %2521, %2607
  %2525 = phi double [ %2507, %2521 ], [ %2617, %2607 ]
  %2526 = phi double [ %2508, %2521 ], [ %2616, %2607 ]
  %2527 = phi double [ %2509, %2521 ], [ %2615, %2607 ]
  %2528 = phi double [ %2510, %2521 ], [ %2614, %2607 ]
  %2529 = phi double [ %2511, %2521 ], [ %2613, %2607 ]
  %2530 = phi double [ %2512, %2521 ], [ %2612, %2607 ]
  %2531 = phi double [ %2513, %2521 ], [ %2611, %2607 ]
  %2532 = phi double [ %2514, %2521 ], [ %2610, %2607 ]
  %2533 = phi double [ %2515, %2521 ], [ %2609, %2607 ]
  %2534 = phi double [ %2516, %2521 ], [ %2608, %2607 ]
  %2535 = phi ptr [ %2519, %2521 ], [ %2619, %2607 ]
  %2536 = phi i64 [ 0, %2521 ], [ %2618, %2607 ]
  %2537 = load double, ptr %2535, align 8, !tbaa !68
  %2538 = fcmp uno double %2537, 0.000000e+00
  br i1 %2538, label %2607, label %2539

2539:                                             ; preds = %2524
  %2540 = fcmp ogt double %2537, 0x3FE6666666666666
  br i1 %2540, label %2541, label %2573

2541:                                             ; preds = %2539
  %2542 = getelementptr inbounds %struct._PixelPacket, ptr %2518, i64 %2536
  %2543 = getelementptr inbounds %struct._PixelPacket, ptr %2518, i64 %2536, i32 2
  %2544 = load i16, ptr %2543, align 2, !tbaa !131
  %2545 = uitofp i16 %2544 to double
  %2546 = fcmp olt double %2530, %2545
  %2547 = select i1 %2546, double %2530, double %2545
  %2548 = getelementptr inbounds %struct._PixelPacket, ptr %2518, i64 %2536, i32 1
  %2549 = load i16, ptr %2548, align 2, !tbaa !135
  %2550 = uitofp i16 %2549 to double
  %2551 = fcmp olt double %2531, %2550
  %2552 = select i1 %2551, double %2531, double %2550
  %2553 = load i16, ptr %2542, align 2, !tbaa !137
  %2554 = uitofp i16 %2553 to double
  %2555 = fcmp olt double %2532, %2554
  %2556 = select i1 %2555, double %2532, double %2554
  %2557 = getelementptr inbounds %struct._PixelPacket, ptr %2518, i64 %2536, i32 3
  %2558 = load i16, ptr %2557, align 2, !tbaa !139
  %2559 = uitofp i16 %2558 to double
  %2560 = fsub double 6.553500e+04, %2559
  %2561 = fcmp olt double %2533, %2560
  %2562 = select i1 %2561, double %2533, double %2560
  br i1 %1966, label %2563, label %2607

2563:                                             ; preds = %2541
  br i1 %2523, label %2568, label %2564

2564:                                             ; preds = %2563
  %2565 = getelementptr inbounds i16, ptr %2517, i64 %2536
  %2566 = load i16, ptr %2565, align 2, !tbaa !46
  %2567 = zext i16 %2566 to i32
  br label %2568

2568:                                             ; preds = %2564, %2563
  %2569 = phi i32 [ %2567, %2564 ], [ 0, %2563 ]
  %2570 = sitofp i32 %2569 to double
  %2571 = fcmp olt double %2534, %2570
  %2572 = select i1 %2571, double %2534, double %2570
  br label %2607

2573:                                             ; preds = %2539
  %2574 = fcmp olt double %2537, 3.000000e-01
  br i1 %2574, label %2575, label %2607

2575:                                             ; preds = %2573
  %2576 = getelementptr inbounds %struct._PixelPacket, ptr %2518, i64 %2536
  %2577 = getelementptr inbounds %struct._PixelPacket, ptr %2518, i64 %2536, i32 2
  %2578 = load i16, ptr %2577, align 2, !tbaa !131
  %2579 = uitofp i16 %2578 to double
  %2580 = fcmp ogt double %2525, %2579
  %2581 = select i1 %2580, double %2525, double %2579
  %2582 = getelementptr inbounds %struct._PixelPacket, ptr %2518, i64 %2536, i32 1
  %2583 = load i16, ptr %2582, align 2, !tbaa !135
  %2584 = uitofp i16 %2583 to double
  %2585 = fcmp ogt double %2526, %2584
  %2586 = select i1 %2585, double %2526, double %2584
  %2587 = load i16, ptr %2576, align 2, !tbaa !137
  %2588 = uitofp i16 %2587 to double
  %2589 = fcmp ogt double %2527, %2588
  %2590 = select i1 %2589, double %2527, double %2588
  %2591 = getelementptr inbounds %struct._PixelPacket, ptr %2518, i64 %2536, i32 3
  %2592 = load i16, ptr %2591, align 2, !tbaa !139
  %2593 = uitofp i16 %2592 to double
  %2594 = fsub double 6.553500e+04, %2593
  %2595 = fcmp ogt double %2528, %2594
  %2596 = select i1 %2595, double %2528, double %2594
  br i1 %1966, label %2597, label %2607

2597:                                             ; preds = %2575
  br i1 %2522, label %2602, label %2598

2598:                                             ; preds = %2597
  %2599 = getelementptr inbounds i16, ptr %2517, i64 %2536
  %2600 = load i16, ptr %2599, align 2, !tbaa !46
  %2601 = zext i16 %2600 to i32
  br label %2602

2602:                                             ; preds = %2598, %2597
  %2603 = phi i32 [ %2601, %2598 ], [ 0, %2597 ]
  %2604 = sitofp i32 %2603 to double
  %2605 = fcmp ogt double %2529, %2604
  %2606 = select i1 %2605, double %2529, double %2604
  br label %2607

2607:                                             ; preds = %2602, %2575, %2573, %2568, %2541, %2524
  %2608 = phi double [ %2534, %2524 ], [ %2572, %2568 ], [ %2534, %2541 ], [ %2534, %2602 ], [ %2534, %2575 ], [ %2534, %2573 ]
  %2609 = phi double [ %2533, %2524 ], [ %2562, %2568 ], [ %2562, %2541 ], [ %2533, %2602 ], [ %2533, %2575 ], [ %2533, %2573 ]
  %2610 = phi double [ %2532, %2524 ], [ %2556, %2568 ], [ %2556, %2541 ], [ %2532, %2602 ], [ %2532, %2575 ], [ %2532, %2573 ]
  %2611 = phi double [ %2531, %2524 ], [ %2552, %2568 ], [ %2552, %2541 ], [ %2531, %2602 ], [ %2531, %2575 ], [ %2531, %2573 ]
  %2612 = phi double [ %2530, %2524 ], [ %2547, %2568 ], [ %2547, %2541 ], [ %2530, %2602 ], [ %2530, %2575 ], [ %2530, %2573 ]
  %2613 = phi double [ %2529, %2524 ], [ %2529, %2568 ], [ %2529, %2541 ], [ %2606, %2602 ], [ %2529, %2575 ], [ %2529, %2573 ]
  %2614 = phi double [ %2528, %2524 ], [ %2528, %2568 ], [ %2528, %2541 ], [ %2596, %2602 ], [ %2596, %2575 ], [ %2528, %2573 ]
  %2615 = phi double [ %2527, %2524 ], [ %2527, %2568 ], [ %2527, %2541 ], [ %2590, %2602 ], [ %2590, %2575 ], [ %2527, %2573 ]
  %2616 = phi double [ %2526, %2524 ], [ %2526, %2568 ], [ %2526, %2541 ], [ %2586, %2602 ], [ %2586, %2575 ], [ %2526, %2573 ]
  %2617 = phi double [ %2525, %2524 ], [ %2525, %2568 ], [ %2525, %2541 ], [ %2581, %2602 ], [ %2581, %2575 ], [ %2525, %2573 ]
  %2618 = add nuw nsw i64 %2536, 1
  %2619 = getelementptr inbounds double, ptr %2535, i64 1
  %2620 = icmp eq i64 %2618, %2503
  br i1 %2620, label %2621, label %2524, !llvm.loop !176

2621:                                             ; preds = %2607
  %2622 = getelementptr i8, ptr %2519, i64 %2505
  br label %2623

2623:                                             ; preds = %2621, %2506
  %2624 = phi ptr [ %2519, %2506 ], [ %2622, %2621 ]
  %2625 = phi double [ %2516, %2506 ], [ %2608, %2621 ]
  %2626 = phi double [ %2515, %2506 ], [ %2609, %2621 ]
  %2627 = phi double [ %2514, %2506 ], [ %2610, %2621 ]
  %2628 = phi double [ %2513, %2506 ], [ %2611, %2621 ]
  %2629 = phi double [ %2512, %2506 ], [ %2612, %2621 ]
  %2630 = phi double [ %2511, %2506 ], [ %2613, %2621 ]
  %2631 = phi double [ %2510, %2506 ], [ %2614, %2621 ]
  %2632 = phi double [ %2509, %2506 ], [ %2615, %2621 ]
  %2633 = phi double [ %2508, %2506 ], [ %2616, %2621 ]
  %2634 = phi double [ %2507, %2506 ], [ %2617, %2621 ]
  %2635 = getelementptr inbounds %struct._PixelPacket, ptr %2518, i64 %1480
  %2636 = getelementptr inbounds i16, ptr %2517, i64 %1480
  %2637 = add nuw nsw i64 %2520, 1
  %2638 = icmp eq i64 %2637, %2499
  br i1 %2638, label %2639, label %2506, !llvm.loop !177

2639:                                             ; preds = %2623, %2498
  %2640 = phi double [ 6.553500e+04, %2498 ], [ %2625, %2623 ]
  %2641 = phi double [ 6.553500e+04, %2498 ], [ %2626, %2623 ]
  %2642 = phi double [ 6.553500e+04, %2498 ], [ %2627, %2623 ]
  %2643 = phi double [ 6.553500e+04, %2498 ], [ %2628, %2623 ]
  %2644 = phi double [ 6.553500e+04, %2498 ], [ %2629, %2623 ]
  %2645 = phi double [ 0.000000e+00, %2498 ], [ %2630, %2623 ]
  %2646 = phi double [ 0.000000e+00, %2498 ], [ %2631, %2623 ]
  %2647 = phi double [ 0.000000e+00, %2498 ], [ %2632, %2623 ]
  %2648 = phi double [ 0.000000e+00, %2498 ], [ %2633, %2623 ]
  %2649 = phi double [ 0.000000e+00, %2498 ], [ %2634, %2623 ]
  %2650 = fsub double %2644, %2649
  %2651 = fcmp ogt double %2650, 0.000000e+00
  %2652 = select i1 %2651, double %2650, double 0.000000e+00
  %2653 = fsub double %2643, %2648
  %2654 = fcmp ogt double %2653, 0.000000e+00
  %2655 = select i1 %2654, double %2653, double 0.000000e+00
  %2656 = fsub double %2642, %2647
  %2657 = fcmp ogt double %2656, 0.000000e+00
  %2658 = select i1 %2657, double %2656, double 0.000000e+00
  %2659 = fsub double %2641, %2646
  %2660 = fcmp ogt double %2659, 0.000000e+00
  %2661 = select i1 %2660, double %2659, double 0.000000e+00
  %2662 = fsub double %2640, %2645
  %2663 = fcmp ogt double %2662, 0.000000e+00
  %2664 = select i1 %2663, double %2662, double 0.000000e+00
  br label %2855

2665:                                             ; preds = %1998
  %2666 = load i64, ptr %1443, align 8, !tbaa !59
  %2667 = icmp sgt i64 %2666, 0
  br i1 %2667, label %2668, label %2855

2668:                                             ; preds = %2665
  %2669 = load ptr, ptr %1446, align 8, !tbaa !65
  br label %2670

2670:                                             ; preds = %2668, %2705
  %2671 = phi double [ %2707, %2705 ], [ %2003, %2668 ]
  %2672 = phi ptr [ %2708, %2705 ], [ %1962, %2668 ]
  %2673 = phi ptr [ %2706, %2705 ], [ %2669, %2668 ]
  %2674 = phi i64 [ %2709, %2705 ], [ 0, %2668 ]
  %2675 = load i64, ptr %1438, align 8, !tbaa !58
  %2676 = icmp sgt i64 %2675, 0
  br i1 %2676, label %2677, label %2705

2677:                                             ; preds = %2670, %2699
  %2678 = phi double [ %2700, %2699 ], [ %2671, %2670 ]
  %2679 = phi ptr [ %2702, %2699 ], [ %2673, %2670 ]
  %2680 = phi i64 [ %2701, %2699 ], [ 0, %2670 ]
  %2681 = load double, ptr %2679, align 8, !tbaa !68
  %2682 = fcmp uno double %2681, 0.000000e+00
  %2683 = fcmp olt double %2681, 5.000000e-01
  %2684 = or i1 %2682, %2683
  br i1 %2684, label %2699, label %2685

2685:                                             ; preds = %2677
  %2686 = fcmp oeq double %2678, 0.000000e+00
  br i1 %2686, label %2692, label %2687

2687:                                             ; preds = %2685
  %2688 = getelementptr inbounds %struct._PixelPacket, ptr %2672, i64 %2680
  %2689 = call float @GetPixelIntensity(ptr noundef %1461, ptr noundef %2688) #25
  %2690 = call float @GetPixelIntensity(ptr noundef nonnull %1472, ptr noundef nonnull %1961) #25
  %2691 = fcmp olt float %2689, %2690
  br i1 %2691, label %2692, label %2699

2692:                                             ; preds = %2687, %2685
  %2693 = getelementptr inbounds %struct._PixelPacket, ptr %2672, i64 %2680
  %2694 = load i64, ptr %2693, align 2
  store i64 %2694, ptr %1961, align 2
  %2695 = fcmp ogt double %2678, 0.000000e+00
  br i1 %2695, label %2696, label %2699

2696:                                             ; preds = %2692
  %2697 = load i64, ptr %1492, align 8, !tbaa !115
  %2698 = add i64 %2697, 1
  store i64 %2698, ptr %1492, align 8, !tbaa !115
  br label %2699

2699:                                             ; preds = %2696, %2692, %2687, %2677
  %2700 = phi double [ %2678, %2677 ], [ %2678, %2687 ], [ 1.000000e+00, %2696 ], [ 1.000000e+00, %2692 ]
  %2701 = add nuw nsw i64 %2680, 1
  %2702 = getelementptr inbounds double, ptr %2679, i64 1
  %2703 = load i64, ptr %1438, align 8, !tbaa !58
  %2704 = icmp slt i64 %2701, %2703
  br i1 %2704, label %2677, label %2705, !llvm.loop !178

2705:                                             ; preds = %2699, %2670
  %2706 = phi ptr [ %2673, %2670 ], [ %2702, %2699 ]
  %2707 = phi double [ %2671, %2670 ], [ %2700, %2699 ]
  %2708 = getelementptr inbounds %struct._PixelPacket, ptr %2672, i64 %1480
  %2709 = add nuw nsw i64 %2674, 1
  %2710 = load i64, ptr %1443, align 8, !tbaa !59
  %2711 = icmp slt i64 %2709, %2710
  br i1 %2711, label %2670, label %2855, !llvm.loop !179

2712:                                             ; preds = %1998
  %2713 = load i64, ptr %1443, align 8, !tbaa !59
  %2714 = icmp sgt i64 %2713, 0
  br i1 %2714, label %2715, label %2855

2715:                                             ; preds = %2712
  %2716 = load ptr, ptr %1445, align 8, !tbaa !65
  %2717 = load i64, ptr %1438, align 8, !tbaa !58
  %2718 = mul i64 %2713, %2717
  %2719 = getelementptr double, ptr %2716, i64 %2718
  %2720 = getelementptr double, ptr %2719, i64 -1
  br label %2721

2721:                                             ; preds = %2715, %2756
  %2722 = phi double [ %2758, %2756 ], [ %2003, %2715 ]
  %2723 = phi ptr [ %2759, %2756 ], [ %1962, %2715 ]
  %2724 = phi ptr [ %2757, %2756 ], [ %2720, %2715 ]
  %2725 = phi i64 [ %2760, %2756 ], [ 0, %2715 ]
  %2726 = load i64, ptr %1438, align 8, !tbaa !58
  %2727 = icmp sgt i64 %2726, 0
  br i1 %2727, label %2728, label %2756

2728:                                             ; preds = %2721, %2750
  %2729 = phi double [ %2751, %2750 ], [ %2722, %2721 ]
  %2730 = phi ptr [ %2753, %2750 ], [ %2724, %2721 ]
  %2731 = phi i64 [ %2752, %2750 ], [ 0, %2721 ]
  %2732 = load double, ptr %2730, align 8, !tbaa !68
  %2733 = fcmp uno double %2732, 0.000000e+00
  %2734 = fcmp olt double %2732, 5.000000e-01
  %2735 = or i1 %2733, %2734
  br i1 %2735, label %2750, label %2736

2736:                                             ; preds = %2728
  %2737 = fcmp oeq double %2729, 0.000000e+00
  br i1 %2737, label %2743, label %2738

2738:                                             ; preds = %2736
  %2739 = getelementptr inbounds %struct._PixelPacket, ptr %2723, i64 %2731
  %2740 = call float @GetPixelIntensity(ptr noundef %1461, ptr noundef %2739) #25
  %2741 = call float @GetPixelIntensity(ptr noundef nonnull %1472, ptr noundef nonnull %1961) #25
  %2742 = fcmp ogt float %2740, %2741
  br i1 %2742, label %2743, label %2750

2743:                                             ; preds = %2738, %2736
  %2744 = getelementptr inbounds %struct._PixelPacket, ptr %2723, i64 %2731
  %2745 = load i64, ptr %2744, align 2
  store i64 %2745, ptr %1961, align 2
  %2746 = fcmp ogt double %2729, 0.000000e+00
  br i1 %2746, label %2747, label %2750

2747:                                             ; preds = %2743
  %2748 = load i64, ptr %1492, align 8, !tbaa !115
  %2749 = add i64 %2748, 1
  store i64 %2749, ptr %1492, align 8, !tbaa !115
  br label %2750

2750:                                             ; preds = %2747, %2743, %2738, %2728
  %2751 = phi double [ %2729, %2728 ], [ %2729, %2738 ], [ 1.000000e+00, %2747 ], [ 1.000000e+00, %2743 ]
  %2752 = add nuw nsw i64 %2731, 1
  %2753 = getelementptr inbounds double, ptr %2730, i64 -1
  %2754 = load i64, ptr %1438, align 8, !tbaa !58
  %2755 = icmp slt i64 %2752, %2754
  br i1 %2755, label %2728, label %2756, !llvm.loop !180

2756:                                             ; preds = %2750, %2721
  %2757 = phi ptr [ %2724, %2721 ], [ %2753, %2750 ]
  %2758 = phi double [ %2722, %2721 ], [ %2751, %2750 ]
  %2759 = getelementptr inbounds %struct._PixelPacket, ptr %2723, i64 %1480
  %2760 = add nuw nsw i64 %2725, 1
  %2761 = load i64, ptr %1443, align 8, !tbaa !59
  %2762 = icmp slt i64 %2760, %2761
  br i1 %2762, label %2721, label %2855, !llvm.loop !181

2763:                                             ; preds = %1998
  %2764 = load i64, ptr %1438, align 8, !tbaa !58
  %2765 = load i64, ptr %1443, align 8, !tbaa !59
  %2766 = icmp sgt i64 %2765, 0
  br i1 %2766, label %2767, label %2855

2767:                                             ; preds = %2763
  %2768 = load ptr, ptr %1444, align 8, !tbaa !65
  %2769 = mul i64 %2765, %2764
  %2770 = getelementptr double, ptr %2768, i64 %2769
  %2771 = getelementptr double, ptr %2770, i64 -1
  %2772 = icmp sgt i64 %2764, 0
  %2773 = mul i64 %2764, -8
  br label %2774

2774:                                             ; preds = %2767, %2844
  %2775 = phi double [ %2003, %2767 ], [ %2850, %2844 ]
  %2776 = phi double [ %2002, %2767 ], [ %2849, %2844 ]
  %2777 = phi double [ %2001, %2767 ], [ %2848, %2844 ]
  %2778 = phi double [ %2000, %2767 ], [ %2847, %2844 ]
  %2779 = phi double [ %1999, %2767 ], [ %2846, %2844 ]
  %2780 = phi ptr [ %1943, %2767 ], [ %2852, %2844 ]
  %2781 = phi ptr [ %1962, %2767 ], [ %2851, %2844 ]
  %2782 = phi ptr [ %2771, %2767 ], [ %2845, %2844 ]
  %2783 = phi i64 [ 0, %2767 ], [ %2853, %2844 ]
  br i1 %2772, label %2784, label %2844

2784:                                             ; preds = %2774
  %2785 = icmp eq ptr %2780, null
  br label %2786

2786:                                             ; preds = %2784, %2833
  %2787 = phi double [ %2775, %2784 ], [ %2838, %2833 ]
  %2788 = phi double [ %2776, %2784 ], [ %2837, %2833 ]
  %2789 = phi double [ %2777, %2784 ], [ %2836, %2833 ]
  %2790 = phi double [ %2778, %2784 ], [ %2835, %2833 ]
  %2791 = phi double [ %2779, %2784 ], [ %2834, %2833 ]
  %2792 = phi ptr [ %2782, %2784 ], [ %2840, %2833 ]
  %2793 = phi i64 [ 0, %2784 ], [ %2839, %2833 ]
  %2794 = load double, ptr %2792, align 8, !tbaa !68
  %2795 = fcmp uno double %2794, 0.000000e+00
  br i1 %2795, label %2833, label %2796

2796:                                             ; preds = %2786
  %2797 = getelementptr inbounds %struct._PixelPacket, ptr %2781, i64 %2793
  %2798 = getelementptr inbounds %struct._PixelPacket, ptr %2781, i64 %2793, i32 2
  %2799 = load i16, ptr %2798, align 2, !tbaa !131
  %2800 = uitofp i16 %2799 to double
  %2801 = fadd double %2794, %2800
  %2802 = fcmp olt double %2787, %2801
  %2803 = select i1 %2802, double %2787, double %2801
  %2804 = getelementptr inbounds %struct._PixelPacket, ptr %2781, i64 %2793, i32 1
  %2805 = load i16, ptr %2804, align 2, !tbaa !135
  %2806 = uitofp i16 %2805 to double
  %2807 = fadd double %2794, %2806
  %2808 = fcmp olt double %2788, %2807
  %2809 = select i1 %2808, double %2788, double %2807
  %2810 = load i16, ptr %2797, align 2, !tbaa !137
  %2811 = uitofp i16 %2810 to double
  %2812 = fadd double %2794, %2811
  %2813 = fcmp olt double %2789, %2812
  %2814 = select i1 %2813, double %2789, double %2812
  %2815 = fadd double %2794, 6.553500e+04
  %2816 = getelementptr inbounds %struct._PixelPacket, ptr %2781, i64 %2793, i32 3
  %2817 = load i16, ptr %2816, align 2, !tbaa !139
  %2818 = uitofp i16 %2817 to double
  %2819 = fsub double %2815, %2818
  %2820 = fcmp olt double %2790, %2819
  %2821 = select i1 %2820, double %2790, double %2819
  br i1 %1966, label %2822, label %2833

2822:                                             ; preds = %2796
  br i1 %2785, label %2827, label %2823

2823:                                             ; preds = %2822
  %2824 = getelementptr inbounds i16, ptr %2780, i64 %2793
  %2825 = load i16, ptr %2824, align 2, !tbaa !46
  %2826 = zext i16 %2825 to i32
  br label %2827

2827:                                             ; preds = %2823, %2822
  %2828 = phi i32 [ %2826, %2823 ], [ 0, %2822 ]
  %2829 = sitofp i32 %2828 to double
  %2830 = fadd double %2794, %2829
  %2831 = fcmp olt double %2791, %2830
  %2832 = select i1 %2831, double %2791, double %2830
  br label %2833

2833:                                             ; preds = %2827, %2796, %2786
  %2834 = phi double [ %2791, %2786 ], [ %2832, %2827 ], [ %2791, %2796 ]
  %2835 = phi double [ %2790, %2786 ], [ %2821, %2827 ], [ %2821, %2796 ]
  %2836 = phi double [ %2789, %2786 ], [ %2814, %2827 ], [ %2814, %2796 ]
  %2837 = phi double [ %2788, %2786 ], [ %2809, %2827 ], [ %2809, %2796 ]
  %2838 = phi double [ %2787, %2786 ], [ %2803, %2827 ], [ %2803, %2796 ]
  %2839 = add nuw nsw i64 %2793, 1
  %2840 = getelementptr inbounds double, ptr %2792, i64 -1
  %2841 = icmp eq i64 %2839, %2764
  br i1 %2841, label %2842, label %2786, !llvm.loop !182

2842:                                             ; preds = %2833
  %2843 = getelementptr i8, ptr %2782, i64 %2773
  br label %2844

2844:                                             ; preds = %2842, %2774
  %2845 = phi ptr [ %2782, %2774 ], [ %2843, %2842 ]
  %2846 = phi double [ %2779, %2774 ], [ %2834, %2842 ]
  %2847 = phi double [ %2778, %2774 ], [ %2835, %2842 ]
  %2848 = phi double [ %2777, %2774 ], [ %2836, %2842 ]
  %2849 = phi double [ %2776, %2774 ], [ %2837, %2842 ]
  %2850 = phi double [ %2775, %2774 ], [ %2838, %2842 ]
  %2851 = getelementptr inbounds %struct._PixelPacket, ptr %2781, i64 %1480
  %2852 = getelementptr inbounds i16, ptr %2780, i64 %1480
  %2853 = add nuw nsw i64 %2783, 1
  %2854 = icmp eq i64 %2853, %2765
  br i1 %2854, label %2855, label %2774, !llvm.loop !183

2855:                                             ; preds = %2844, %2756, %2705, %2487, %2398, %2763, %2712, %2665, %2409, %2323, %2639, %2321, %2306, %2162, %2149, %1998
  %2856 = phi double [ %1999, %1998 ], [ %1999, %2639 ], [ %2095, %2162 ], [ %2095, %2149 ], [ %2249, %2321 ], [ %2249, %2306 ], [ %1999, %2323 ], [ %1999, %2409 ], [ %1999, %2665 ], [ %1999, %2712 ], [ %1999, %2763 ], [ %1999, %2398 ], [ %1999, %2487 ], [ %1999, %2705 ], [ %1999, %2756 ], [ %2846, %2844 ]
  %2857 = phi double [ %2000, %1998 ], [ %2000, %2639 ], [ %2096, %2162 ], [ %2096, %2149 ], [ %2250, %2321 ], [ %2250, %2306 ], [ %2000, %2323 ], [ %2000, %2409 ], [ %2000, %2665 ], [ %2000, %2712 ], [ %2000, %2763 ], [ %2000, %2398 ], [ %2000, %2487 ], [ %2000, %2705 ], [ %2000, %2756 ], [ %2847, %2844 ]
  %2858 = phi double [ %2001, %1998 ], [ %2001, %2639 ], [ %2097, %2162 ], [ %2097, %2149 ], [ %2251, %2321 ], [ %2251, %2306 ], [ %2001, %2323 ], [ %2001, %2409 ], [ %2001, %2665 ], [ %2001, %2712 ], [ %2001, %2763 ], [ %2001, %2398 ], [ %2001, %2487 ], [ %2001, %2705 ], [ %2001, %2756 ], [ %2848, %2844 ]
  %2859 = phi double [ %2002, %1998 ], [ %2002, %2639 ], [ %2098, %2162 ], [ %2098, %2149 ], [ %2252, %2321 ], [ %2252, %2306 ], [ %2002, %2323 ], [ %2002, %2409 ], [ %2002, %2665 ], [ %2002, %2712 ], [ %2002, %2763 ], [ %2002, %2398 ], [ %2002, %2487 ], [ %2002, %2705 ], [ %2002, %2756 ], [ %2849, %2844 ]
  %2860 = phi double [ %2003, %1998 ], [ %2003, %2639 ], [ %2099, %2162 ], [ %2099, %2149 ], [ %2253, %2321 ], [ %2253, %2306 ], [ %2003, %2323 ], [ %2003, %2409 ], [ %2003, %2665 ], [ %2003, %2712 ], [ %2003, %2763 ], [ %2003, %2398 ], [ %2003, %2487 ], [ %2707, %2705 ], [ %2758, %2756 ], [ %2850, %2844 ]
  %2861 = phi double [ 6.553500e+04, %1998 ], [ %2664, %2639 ], [ 6.553500e+04, %2162 ], [ 6.553500e+04, %2149 ], [ 6.553500e+04, %2321 ], [ 6.553500e+04, %2306 ], [ 6.553500e+04, %2323 ], [ 6.553500e+04, %2409 ], [ 6.553500e+04, %2665 ], [ 6.553500e+04, %2712 ], [ 6.553500e+04, %2763 ], [ %2400, %2398 ], [ 6.553500e+04, %2487 ], [ 6.553500e+04, %2705 ], [ 6.553500e+04, %2756 ], [ 6.553500e+04, %2844 ]
  %2862 = phi double [ 6.553500e+04, %1998 ], [ %2661, %2639 ], [ 6.553500e+04, %2162 ], [ 6.553500e+04, %2149 ], [ 6.553500e+04, %2321 ], [ 6.553500e+04, %2306 ], [ 6.553500e+04, %2323 ], [ 6.553500e+04, %2409 ], [ 6.553500e+04, %2665 ], [ 6.553500e+04, %2712 ], [ 6.553500e+04, %2763 ], [ %2401, %2398 ], [ 6.553500e+04, %2487 ], [ 6.553500e+04, %2705 ], [ 6.553500e+04, %2756 ], [ 6.553500e+04, %2844 ]
  %2863 = phi double [ 6.553500e+04, %1998 ], [ %2658, %2639 ], [ 6.553500e+04, %2162 ], [ 6.553500e+04, %2149 ], [ 6.553500e+04, %2321 ], [ 6.553500e+04, %2306 ], [ 6.553500e+04, %2323 ], [ 6.553500e+04, %2409 ], [ 6.553500e+04, %2665 ], [ 6.553500e+04, %2712 ], [ 6.553500e+04, %2763 ], [ %2402, %2398 ], [ 6.553500e+04, %2487 ], [ 6.553500e+04, %2705 ], [ 6.553500e+04, %2756 ], [ 6.553500e+04, %2844 ]
  %2864 = phi double [ 6.553500e+04, %1998 ], [ %2655, %2639 ], [ 6.553500e+04, %2162 ], [ 6.553500e+04, %2149 ], [ 6.553500e+04, %2321 ], [ 6.553500e+04, %2306 ], [ 6.553500e+04, %2323 ], [ 6.553500e+04, %2409 ], [ 6.553500e+04, %2665 ], [ 6.553500e+04, %2712 ], [ 6.553500e+04, %2763 ], [ %2403, %2398 ], [ 6.553500e+04, %2487 ], [ 6.553500e+04, %2705 ], [ 6.553500e+04, %2756 ], [ 6.553500e+04, %2844 ]
  %2865 = phi double [ 6.553500e+04, %1998 ], [ %2652, %2639 ], [ 6.553500e+04, %2162 ], [ 6.553500e+04, %2149 ], [ 6.553500e+04, %2321 ], [ 6.553500e+04, %2306 ], [ 6.553500e+04, %2323 ], [ 6.553500e+04, %2409 ], [ 6.553500e+04, %2665 ], [ 6.553500e+04, %2712 ], [ 6.553500e+04, %2763 ], [ %2404, %2398 ], [ 6.553500e+04, %2487 ], [ 6.553500e+04, %2705 ], [ 6.553500e+04, %2756 ], [ 6.553500e+04, %2844 ]
  %2866 = phi double [ 0.000000e+00, %1998 ], [ %2645, %2639 ], [ 0.000000e+00, %2162 ], [ 0.000000e+00, %2149 ], [ 0.000000e+00, %2321 ], [ 0.000000e+00, %2306 ], [ 0.000000e+00, %2323 ], [ 0.000000e+00, %2409 ], [ 0.000000e+00, %2665 ], [ 0.000000e+00, %2712 ], [ 0.000000e+00, %2763 ], [ 0.000000e+00, %2398 ], [ %2489, %2487 ], [ 0.000000e+00, %2705 ], [ 0.000000e+00, %2756 ], [ 0.000000e+00, %2844 ]
  %2867 = phi double [ 0.000000e+00, %1998 ], [ %2646, %2639 ], [ 0.000000e+00, %2162 ], [ 0.000000e+00, %2149 ], [ 0.000000e+00, %2321 ], [ 0.000000e+00, %2306 ], [ 0.000000e+00, %2323 ], [ 0.000000e+00, %2409 ], [ 0.000000e+00, %2665 ], [ 0.000000e+00, %2712 ], [ 0.000000e+00, %2763 ], [ 0.000000e+00, %2398 ], [ %2490, %2487 ], [ 0.000000e+00, %2705 ], [ 0.000000e+00, %2756 ], [ 0.000000e+00, %2844 ]
  %2868 = phi double [ 0.000000e+00, %1998 ], [ %2647, %2639 ], [ 0.000000e+00, %2162 ], [ 0.000000e+00, %2149 ], [ 0.000000e+00, %2321 ], [ 0.000000e+00, %2306 ], [ 0.000000e+00, %2323 ], [ 0.000000e+00, %2409 ], [ 0.000000e+00, %2665 ], [ 0.000000e+00, %2712 ], [ 0.000000e+00, %2763 ], [ 0.000000e+00, %2398 ], [ %2491, %2487 ], [ 0.000000e+00, %2705 ], [ 0.000000e+00, %2756 ], [ 0.000000e+00, %2844 ]
  %2869 = phi double [ 0.000000e+00, %1998 ], [ %2648, %2639 ], [ 0.000000e+00, %2162 ], [ 0.000000e+00, %2149 ], [ 0.000000e+00, %2321 ], [ 0.000000e+00, %2306 ], [ 0.000000e+00, %2323 ], [ 0.000000e+00, %2409 ], [ 0.000000e+00, %2665 ], [ 0.000000e+00, %2712 ], [ 0.000000e+00, %2763 ], [ 0.000000e+00, %2398 ], [ %2492, %2487 ], [ 0.000000e+00, %2705 ], [ 0.000000e+00, %2756 ], [ 0.000000e+00, %2844 ]
  %2870 = phi double [ 0.000000e+00, %1998 ], [ %2649, %2639 ], [ 0.000000e+00, %2162 ], [ 0.000000e+00, %2149 ], [ 0.000000e+00, %2321 ], [ 0.000000e+00, %2306 ], [ 0.000000e+00, %2323 ], [ 0.000000e+00, %2409 ], [ 0.000000e+00, %2665 ], [ 0.000000e+00, %2712 ], [ 0.000000e+00, %2763 ], [ 0.000000e+00, %2398 ], [ %2493, %2487 ], [ 0.000000e+00, %2705 ], [ 0.000000e+00, %2756 ], [ 0.000000e+00, %2844 ]
  switch i32 %1423, label %2885 [
    i32 18, label %2871
    i32 3, label %2871
    i32 4, label %2872
    i32 19, label %2873
    i32 20, label %2879
  ]

2871:                                             ; preds = %2855, %2855
  br label %2885

2872:                                             ; preds = %2855
  br label %2885

2873:                                             ; preds = %2855
  %2874 = fsub double %2860, %2865
  %2875 = fsub double %2859, %2864
  %2876 = fsub double %2858, %2863
  %2877 = fsub double %2857, %2862
  %2878 = fsub double %2856, %2861
  br label %2885

2879:                                             ; preds = %2855
  %2880 = fadd double %2860, %2865
  %2881 = fadd double %2859, %2864
  %2882 = fadd double %2858, %2863
  %2883 = fadd double %2857, %2862
  %2884 = fadd double %2856, %2861
  br label %2885

2885:                                             ; preds = %2879, %2873, %2872, %2871, %2855
  %2886 = phi double [ %2856, %2855 ], [ %2884, %2879 ], [ %2878, %2873 ], [ %2866, %2872 ], [ %2861, %2871 ]
  %2887 = phi double [ %2857, %2855 ], [ %2883, %2879 ], [ %2877, %2873 ], [ %2867, %2872 ], [ %2862, %2871 ]
  %2888 = phi double [ %2858, %2855 ], [ %2882, %2879 ], [ %2876, %2873 ], [ %2868, %2872 ], [ %2863, %2871 ]
  %2889 = phi double [ %2859, %2855 ], [ %2881, %2879 ], [ %2875, %2873 ], [ %2869, %2872 ], [ %2864, %2871 ]
  %2890 = phi double [ %2860, %2855 ], [ %2880, %2879 ], [ %2874, %2873 ], [ %2870, %2872 ], [ %2865, %2871 ]
  switch i32 %1423, label %2891 [
    i32 0, label %2958
    i32 1, label %2958
    i32 6, label %2958
    i32 5, label %2958
  ]

2891:                                             ; preds = %2885
  br i1 %1323, label %2903, label %2892

2892:                                             ; preds = %2891
  %2893 = fptrunc double %2890 to float
  %2894 = fcmp ugt float %2893, 0.000000e+00
  br i1 %2894, label %2895, label %2900

2895:                                             ; preds = %2892
  %2896 = fcmp ult float %2893, 6.553500e+04
  br i1 %2896, label %2897, label %2900

2897:                                             ; preds = %2895
  %2898 = fadd float %2893, 5.000000e-01
  %2899 = fptoui float %2898 to i16
  br label %2900

2900:                                             ; preds = %2897, %2895, %2892
  %2901 = phi i16 [ %2899, %2897 ], [ 0, %2892 ], [ -1, %2895 ]
  %2902 = getelementptr inbounds %struct._PixelPacket, ptr %1961, i64 0, i32 2
  store i16 %2901, ptr %2902, align 2, !tbaa !131
  br label %2903

2903:                                             ; preds = %2900, %2891
  br i1 %1325, label %2915, label %2904

2904:                                             ; preds = %2903
  %2905 = fptrunc double %2889 to float
  %2906 = fcmp ugt float %2905, 0.000000e+00
  br i1 %2906, label %2907, label %2912

2907:                                             ; preds = %2904
  %2908 = fcmp ult float %2905, 6.553500e+04
  br i1 %2908, label %2909, label %2912

2909:                                             ; preds = %2907
  %2910 = fadd float %2905, 5.000000e-01
  %2911 = fptoui float %2910 to i16
  br label %2912

2912:                                             ; preds = %2909, %2907, %2904
  %2913 = phi i16 [ %2911, %2909 ], [ 0, %2904 ], [ -1, %2907 ]
  %2914 = getelementptr inbounds %struct._PixelPacket, ptr %1961, i64 0, i32 1
  store i16 %2913, ptr %2914, align 2, !tbaa !135
  br label %2915

2915:                                             ; preds = %2912, %2903
  br i1 %1327, label %2926, label %2916

2916:                                             ; preds = %2915
  %2917 = fptrunc double %2888 to float
  %2918 = fcmp ugt float %2917, 0.000000e+00
  br i1 %2918, label %2919, label %2924

2919:                                             ; preds = %2916
  %2920 = fcmp ult float %2917, 6.553500e+04
  br i1 %2920, label %2921, label %2924

2921:                                             ; preds = %2919
  %2922 = fadd float %2917, 5.000000e-01
  %2923 = fptoui float %2922 to i16
  br label %2924

2924:                                             ; preds = %2921, %2919, %2916
  %2925 = phi i16 [ %2923, %2921 ], [ 0, %2916 ], [ -1, %2919 ]
  store i16 %2925, ptr %1961, align 2, !tbaa !137
  br label %2926

2926:                                             ; preds = %2924, %2915
  br i1 %1329, label %2942, label %2927

2927:                                             ; preds = %2926
  %2928 = load i32, ptr %1924, align 8, !tbaa !150
  %2929 = icmp eq i32 %2928, 0
  br i1 %2929, label %2942, label %2930

2930:                                             ; preds = %2927
  %2931 = fptrunc double %2887 to float
  %2932 = fcmp ugt float %2931, 0.000000e+00
  br i1 %2932, label %2933, label %2938

2933:                                             ; preds = %2930
  %2934 = fcmp ult float %2931, 6.553500e+04
  br i1 %2934, label %2935, label %2938

2935:                                             ; preds = %2933
  %2936 = fadd float %2931, 5.000000e-01
  %2937 = fptoui float %2936 to i16
  br label %2938

2938:                                             ; preds = %2935, %2933, %2930
  %2939 = phi i16 [ %2937, %2935 ], [ 0, %2930 ], [ -1, %2933 ]
  %2940 = xor i16 %2939, -1
  %2941 = getelementptr inbounds %struct._PixelPacket, ptr %1961, i64 0, i32 3
  store i16 %2940, ptr %2941, align 2, !tbaa !139
  br label %2942

2942:                                             ; preds = %2938, %2927, %2926
  br i1 %1331, label %2958, label %2943

2943:                                             ; preds = %2942
  %2944 = load i32, ptr %1921, align 4, !tbaa !141
  %2945 = icmp ne i32 %2944, 12
  %2946 = select i1 %2945, i1 true, i1 %1955
  br i1 %2946, label %2958, label %2947

2947:                                             ; preds = %2943
  %2948 = getelementptr inbounds i16, ptr %1944, i64 %1960
  %2949 = fptrunc double %2886 to float
  %2950 = fcmp ugt float %2949, 0.000000e+00
  br i1 %2950, label %2951, label %2956

2951:                                             ; preds = %2947
  %2952 = fcmp ult float %2949, 6.553500e+04
  br i1 %2952, label %2953, label %2956

2953:                                             ; preds = %2951
  %2954 = fadd float %2949, 5.000000e-01
  %2955 = fptoui float %2954 to i16
  br label %2956

2956:                                             ; preds = %2953, %2951, %2947
  %2957 = phi i16 [ %2955, %2953 ], [ 0, %2947 ], [ -1, %2951 ]
  store i16 %2957, ptr %2948, align 2, !tbaa !46
  br label %2958

2958:                                             ; preds = %2956, %2943, %2942, %2885, %2885, %2885, %2885
  %2959 = load i16, ptr %1975, align 2, !tbaa !131
  %2960 = getelementptr inbounds %struct._PixelPacket, ptr %1961, i64 0, i32 2
  %2961 = load i16, ptr %2960, align 2, !tbaa !131
  %2962 = icmp eq i16 %2959, %2961
  br i1 %2962, label %2963, label %2993

2963:                                             ; preds = %2958
  %2964 = load i16, ptr %1978, align 2, !tbaa !135
  %2965 = getelementptr inbounds %struct._PixelPacket, ptr %1961, i64 0, i32 1
  %2966 = load i16, ptr %2965, align 2, !tbaa !135
  %2967 = icmp eq i16 %2964, %2966
  br i1 %2967, label %2968, label %2993

2968:                                             ; preds = %2963
  %2969 = load i16, ptr %1963, align 2, !tbaa !137
  %2970 = load i16, ptr %1961, align 2, !tbaa !137
  %2971 = icmp eq i16 %2969, %2970
  br i1 %2971, label %2972, label %2993

2972:                                             ; preds = %2968
  %2973 = load i16, ptr %1983, align 2, !tbaa !139
  %2974 = getelementptr inbounds %struct._PixelPacket, ptr %1961, i64 0, i32 3
  %2975 = load i16, ptr %2974, align 2, !tbaa !139
  %2976 = icmp eq i16 %2973, %2975
  br i1 %2976, label %2977, label %2993

2977:                                             ; preds = %2972
  %2978 = load i32, ptr %1921, align 4, !tbaa !141
  %2979 = icmp eq i32 %2978, 12
  br i1 %2979, label %2980, label %2996

2980:                                             ; preds = %2977
  br i1 %1956, label %2984, label %2981

2981:                                             ; preds = %2980
  %2982 = load i16, ptr %1957, align 2, !tbaa !46
  %2983 = zext i16 %2982 to i32
  br label %2984

2984:                                             ; preds = %2981, %2980
  %2985 = phi i32 [ %2983, %2981 ], [ 0, %2980 ]
  br i1 %1958, label %2990, label %2986

2986:                                             ; preds = %2984
  %2987 = getelementptr inbounds i16, ptr %1944, i64 %1960
  %2988 = load i16, ptr %2987, align 2, !tbaa !46
  %2989 = zext i16 %2988 to i32
  br label %2990

2990:                                             ; preds = %2986, %2984
  %2991 = phi i32 [ %2989, %2986 ], [ 0, %2984 ]
  %2992 = icmp eq i32 %2985, %2991
  br i1 %2992, label %2996, label %2993

2993:                                             ; preds = %2990, %2972, %2968, %2963, %2958
  %2994 = load i64, ptr %1492, align 8, !tbaa !115
  %2995 = add i64 %2994, 1
  store i64 %2995, ptr %1492, align 8, !tbaa !115
  br label %2996

2996:                                             ; preds = %2993, %2990, %2977
  %2997 = getelementptr inbounds %struct._PixelPacket, ptr %1962, i64 1
  %2998 = getelementptr inbounds %struct._PixelPacket, ptr %1961, i64 1
  %2999 = add nuw nsw i64 %1960, 1
  %3000 = load i64, ptr %1476, align 8, !tbaa !117
  %3001 = icmp slt i64 %2999, %3000
  br i1 %3001, label %1959, label %3002, !llvm.loop !184

3002:                                             ; preds = %2996, %1942
  %3003 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %1475, ptr noundef %7) #25
  %3004 = icmp ne i32 %3003, 0
  %3005 = zext i1 %3004 to i32
  %3006 = load ptr, ptr %1925, align 8, !tbaa !152
  %3007 = icmp eq ptr %3006, null
  br i1 %3007, label %3022, label %3008

3008:                                             ; preds = %3002
  %3009 = add nsw i64 %1931, 1
  %3010 = load i64, ptr %1913, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %9) #19
  %3011 = load ptr, ptr %1925, align 8, !tbaa !152
  %3012 = icmp eq ptr %3011, null
  br i1 %3012, label %3018, label %3013

3013:                                             ; preds = %3008
  %3014 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %9, i64 noundef 4096, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.110, ptr noundef nonnull %1926) #19
  %3015 = load ptr, ptr %1925, align 8, !tbaa !152
  %3016 = load ptr, ptr %1927, align 8, !tbaa !153
  %3017 = call i32 %3015(ptr noundef nonnull %9, i64 noundef %1931, i64 noundef %3010, ptr noundef %3016) #19
  br label %3018

3018:                                             ; preds = %3013, %3008
  %3019 = phi i32 [ %3017, %3013 ], [ 1, %3008 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %9) #19
  %3020 = icmp eq i32 %3019, 0
  %3021 = select i1 %3020, i32 0, i32 %3005
  br label %3022

3022:                                             ; preds = %3018, %3002, %1933, %1928
  %3023 = phi i64 [ %1931, %1928 ], [ %1931, %1933 ], [ %3009, %3018 ], [ %1931, %3002 ]
  %3024 = phi i32 [ 0, %1928 ], [ 0, %1933 ], [ %3021, %3018 ], [ %3005, %3002 ]
  %3025 = add nuw nsw i64 %1929, 1
  %3026 = load i64, ptr %1913, align 8, !tbaa !129
  %3027 = icmp slt i64 %3025, %3026
  br i1 %3027, label %1928, label %3028, !llvm.loop !185

3028:                                             ; preds = %3022, %1912, %1907
  %3029 = phi i32 [ %1908, %1907 ], [ 1, %1912 ], [ %3024, %3022 ]
  %3030 = phi i64 [ 0, %1907 ], [ -1, %1912 ], [ -1, %3022 ]
  %3031 = call ptr @DestroyCacheView(ptr noundef %1475) #19
  %3032 = call ptr @DestroyCacheView(ptr noundef %1474) #19
  %3033 = load i64, ptr %1492, align 8, !tbaa !115
  %3034 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %1492) #19
  %3035 = icmp eq i32 %3029, 0
  %3036 = select i1 %3035, i64 %3030, i64 %3033
  br i1 %1306, label %3050, label %3037

3037:                                             ; preds = %3028
  %3038 = icmp eq i64 %1460, 0
  br i1 %3038, label %3042, label %3039

3039:                                             ; preds = %3037
  %3040 = load ptr, ptr @stderr, align 8, !tbaa !45
  %3041 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %3040, ptr noundef nonnull @.str.78) #19
  br label %3042

3042:                                             ; preds = %3039, %3037
  %3043 = load ptr, ptr @stderr, align 8, !tbaa !45
  %3044 = call ptr @CommandOptionToMnemonic(i32 noundef 48, i64 noundef %1453) #19
  %3045 = add i64 %1460, %1374
  %3046 = uitofp i64 %3045 to double
  %3047 = uitofp i64 %1473 to double
  %3048 = sitofp i64 %3036 to double
  %3049 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %3043, ptr noundef nonnull @.str.79, ptr noundef nonnull %16, ptr noundef %3044, ptr noundef nonnull %1455, double noundef %3046, double noundef %1388, double noundef %3047, double noundef %3048) #19
  br label %3050

3050:                                             ; preds = %3042, %3028
  %3051 = icmp slt i64 %3036, 0
  br i1 %3051, label %3151, label %3052

3052:                                             ; preds = %3050
  %3053 = add i64 %3036, %1458
  %3054 = add i64 %3036, %1457
  %3055 = icmp eq ptr %1461, %0
  %3056 = select i1 %3055, ptr null, ptr %1461
  %3057 = icmp ult i64 %1463, %41
  %3058 = icmp ne i64 %3036, 0
  %3059 = select i1 %3057, i1 %3058, i1 false
  br i1 %3059, label %1456, label %3060, !llvm.loop !186

3060:                                             ; preds = %3052, %1436
  %3061 = phi ptr [ %1395, %1436 ], [ %3056, %3052 ]
  %3062 = phi ptr [ %1424, %1436 ], [ %1472, %3052 ]
  %3063 = phi i64 [ %1391, %1436 ], [ %1473, %3052 ]
  %3064 = phi i64 [ 0, %1436 ], [ %3053, %3052 ]
  %3065 = phi i64 [ %1390, %1436 ], [ %3054, %3052 ]
  %3066 = phi i64 [ 1, %1436 ], [ %3036, %3052 ]
  %3067 = icmp eq i64 %3064, %3066
  %3068 = select i1 %1306, i1 true, i1 %3067
  br i1 %3068, label %3073, label %3069

3069:                                             ; preds = %3060
  %3070 = load ptr, ptr @stderr, align 8, !tbaa !45
  %3071 = uitofp i64 %3064 to double
  %3072 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %3070, ptr noundef nonnull @.str.82, double noundef %3071) #19
  br label %3073

3073:                                             ; preds = %3069, %3060
  %3074 = icmp uge i64 %1396, %40
  %3075 = select i1 %1306, i1 true, i1 %3074
  br i1 %3075, label %3079, label %3076

3076:                                             ; preds = %3073
  %3077 = load ptr, ptr @stderr, align 8, !tbaa !45
  %3078 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %3077, ptr noundef nonnull @.str.78) #19
  br label %3079

3079:                                             ; preds = %3076, %3073
  %3080 = icmp eq i64 %1396, %40
  br i1 %3080, label %3081, label %1389, !llvm.loop !187

3081:                                             ; preds = %3079
  switch i32 %2, label %3097 [
    i32 14, label %3082
    i32 13, label %3082
    i32 16, label %3082
    i32 17, label %3082
    i32 15, label %3089
  ]

3082:                                             ; preds = %3081, %3081, %3081, %3081
  br i1 %1346, label %3087, label %3083

3083:                                             ; preds = %3082
  %3084 = load ptr, ptr @stderr, align 8, !tbaa !45
  %3085 = call ptr @CommandOptionToMnemonic(i32 noundef 48, i64 noundef %1347) #19
  %3086 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %3084, ptr noundef nonnull @.str.83, ptr noundef %3085) #19
  br label %3087

3087:                                             ; preds = %3083, %3082
  %3088 = call i32 @CompositeImageChannel(ptr noundef %3062, i32 noundef %1348, i32 noundef 26, ptr noundef %0, i64 noundef 0, i64 noundef 0) #19
  br label %3097

3089:                                             ; preds = %3081
  br i1 %1344, label %3094, label %3090

3090:                                             ; preds = %3089
  %3091 = load ptr, ptr @stderr, align 8, !tbaa !45
  %3092 = call ptr @CommandOptionToMnemonic(i32 noundef 48, i64 noundef 15) #19
  %3093 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %3091, ptr noundef nonnull @.str.84, ptr noundef %3092) #19
  br label %3094

3094:                                             ; preds = %3090, %3089
  %3095 = call i32 @CompositeImageChannel(ptr noundef %3062, i32 noundef %1345, i32 noundef 26, ptr noundef %1421, i64 noundef 0, i64 noundef 0) #19
  %3096 = call ptr @DestroyImage(ptr noundef %1421) #19
  br label %3097

3097:                                             ; preds = %3081, %3094, %3087
  %3098 = phi ptr [ %1421, %3081 ], [ %3096, %3094 ], [ %1421, %3087 ]
  %3099 = load ptr, ptr %1349, align 8, !tbaa !42
  %3100 = icmp eq ptr %3099, null
  br i1 %3100, label %3126, label %3101

3101:                                             ; preds = %3097
  br i1 %1350, label %3102, label %3112

3102:                                             ; preds = %3101
  br i1 %1355, label %3126, label %3103

3103:                                             ; preds = %3102
  %3104 = getelementptr inbounds %struct.KernelInfo, ptr %1422, i64 0, i32 11
  %3105 = load ptr, ptr %3104, align 8, !tbaa !42
  %3106 = icmp eq ptr %3105, null
  %3107 = load ptr, ptr @stderr, align 8, !tbaa !45
  br i1 %3106, label %3110, label %3108

3108:                                             ; preds = %3103
  %3109 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %3107, ptr noundef nonnull @.str.85) #19
  br label %3126

3110:                                             ; preds = %3103
  %3111 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %3107, ptr noundef nonnull @.str.86) #19
  br label %3126

3112:                                             ; preds = %3101
  %3113 = icmp eq ptr %1385, null
  br i1 %3113, label %3114, label %3118

3114:                                             ; preds = %3112
  br i1 %1354, label %3126, label %3115

3115:                                             ; preds = %3114
  %3116 = load ptr, ptr @stderr, align 8, !tbaa !45
  %3117 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %3116, ptr noundef nonnull @.str.87) #19
  br label %3126

3118:                                             ; preds = %3112
  br i1 %1351, label %3123, label %3119

3119:                                             ; preds = %3118
  %3120 = load ptr, ptr @stderr, align 8, !tbaa !45
  %3121 = call ptr @CommandOptionToMnemonic(i32 noundef 11, i64 noundef %1352) #19
  %3122 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %3120, ptr noundef nonnull @.str.88, ptr noundef %3121) #19
  br label %3123

3123:                                             ; preds = %3119, %3118
  %3124 = call i32 @CompositeImageChannel(ptr noundef nonnull %1385, i32 noundef %1353, i32 noundef %1296, ptr noundef %3062, i64 noundef 0, i64 noundef 0) #19
  %3125 = call ptr @DestroyImage(ptr noundef %3062) #19
  br label %3126

3126:                                             ; preds = %3114, %3115, %3102, %3110, %3108, %3097, %3123
  %3127 = phi ptr [ %1385, %3123 ], [ %3062, %3097 ], [ %3062, %3108 ], [ %3062, %3110 ], [ %3062, %3102 ], [ %3062, %3115 ], [ %3062, %3114 ]
  %3128 = phi ptr [ %0, %3123 ], [ %3062, %3097 ], [ %3062, %3108 ], [ %3062, %3110 ], [ %3062, %3102 ], [ %0, %3115 ], [ %0, %3114 ]
  br i1 %1356, label %3132, label %3129

3129:                                             ; preds = %3126
  %3130 = load ptr, ptr @stderr, align 8, !tbaa !45
  %3131 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %3130, ptr noundef nonnull @.str.78) #19
  br label %3132

3132:                                             ; preds = %3129, %3126
  %3133 = getelementptr inbounds %struct.KernelInfo, ptr %1384, i64 0, i32 11
  %3134 = load ptr, ptr %3133, align 8, !tbaa !42
  %3135 = icmp eq ptr %1383, null
  br i1 %3135, label %3139, label %3136

3136:                                             ; preds = %3132
  %3137 = getelementptr inbounds %struct.KernelInfo, ptr %1383, i64 0, i32 11
  %3138 = load ptr, ptr %3137, align 8, !tbaa !42
  br label %3139

3139:                                             ; preds = %3136, %3132
  %3140 = phi ptr [ %3138, %3136 ], [ null, %3132 ]
  %3141 = add i64 %1381, 1
  %3142 = icmp eq ptr %3134, null
  br i1 %3142, label %1357, label %1378, !llvm.loop !188

3143:                                             ; preds = %1468, %45
  %3144 = phi ptr [ %43, %45 ], [ %1466, %1468 ]
  %3145 = phi ptr [ null, %45 ], [ %1466, %1468 ]
  %3146 = phi ptr [ null, %45 ], [ %1421, %1468 ]
  %3147 = phi ptr [ %43, %45 ], [ %1385, %1468 ]
  %3148 = phi ptr [ null, %45 ], [ %1302, %1468 ]
  %3149 = phi ptr [ %0, %45 ], [ %1461, %1468 ]
  %3150 = getelementptr inbounds %struct._Image, ptr %3144, i64 0, i32 58
  call void @InheritException(ptr noundef %7, ptr noundef nonnull %3150) #19
  br label %3151

3151:                                             ; preds = %3050, %1465, %3143, %1297, %1285, %42
  %3152 = phi ptr [ null, %42 ], [ null, %1285 ], [ null, %1297 ], [ %3145, %3143 ], [ null, %1465 ], [ %1472, %3050 ]
  %3153 = phi ptr [ null, %42 ], [ null, %1285 ], [ null, %1297 ], [ %3146, %3143 ], [ %1421, %1465 ], [ %1421, %3050 ]
  %3154 = phi ptr [ null, %42 ], [ %43, %1285 ], [ null, %1297 ], [ %3147, %3143 ], [ %1385, %1465 ], [ %1385, %3050 ]
  %3155 = phi ptr [ null, %42 ], [ null, %1285 ], [ null, %1297 ], [ %3148, %3143 ], [ %1302, %1465 ], [ %1302, %3050 ]
  %3156 = phi ptr [ %0, %42 ], [ %0, %1285 ], [ %0, %1297 ], [ %3149, %3143 ], [ %1461, %1465 ], [ %1461, %3050 ]
  %3157 = icmp eq ptr %3156, %3154
  %3158 = select i1 %3157, ptr null, ptr %3156
  %3159 = icmp eq ptr %3154, null
  br i1 %3159, label %3162, label %3160

3160:                                             ; preds = %3151
  %3161 = call ptr @DestroyImage(ptr noundef nonnull %3154) #19
  br label %3162

3162:                                             ; preds = %1357, %1301, %3151, %3160, %1287, %1289
  %3163 = phi ptr [ %3152, %3160 ], [ %3152, %3151 ], [ null, %1289 ], [ null, %1287 ], [ null, %1301 ], [ %1358, %1357 ]
  %3164 = phi ptr [ %3153, %3160 ], [ %3153, %3151 ], [ null, %1289 ], [ null, %1287 ], [ null, %1301 ], [ %1359, %1357 ]
  %3165 = phi ptr [ %3161, %3160 ], [ null, %3151 ], [ %43, %1289 ], [ %43, %1287 ], [ null, %1301 ], [ %1360, %1357 ]
  %3166 = phi ptr [ %3155, %3160 ], [ %3155, %3151 ], [ null, %1289 ], [ null, %1287 ], [ %1302, %1301 ], [ %1302, %1357 ]
  %3167 = phi ptr [ %3158, %3160 ], [ %3158, %3151 ], [ %0, %1289 ], [ %0, %1287 ], [ %0, %1301 ], [ %1361, %1357 ]
  %3168 = icmp eq ptr %3167, %3165
  %3169 = icmp eq ptr %3167, %0
  %3170 = or i1 %3168, %3169
  %3171 = icmp eq ptr %3167, null
  %3172 = or i1 %3171, %3170
  br i1 %3172, label %3175, label %3173

3173:                                             ; preds = %3162
  %3174 = call ptr @DestroyImage(ptr noundef nonnull %3167) #19
  br label %3175

3175:                                             ; preds = %3173, %3162
  %3176 = icmp eq ptr %3163, null
  br i1 %3176, label %3179, label %3177

3177:                                             ; preds = %3175
  %3178 = call ptr @DestroyImage(ptr noundef nonnull %3163) #19
  br label %3179

3179:                                             ; preds = %3177, %3175
  %3180 = icmp eq ptr %3164, null
  br i1 %3180, label %3183, label %3181

3181:                                             ; preds = %3179
  %3182 = call ptr @DestroyImage(ptr noundef nonnull %3164) #19
  br label %3183

3183:                                             ; preds = %3181, %3179
  %3184 = icmp eq ptr %3166, null
  br i1 %3184, label %3187, label %3185

3185:                                             ; preds = %3183
  %3186 = call ptr @DestroyKernelInfo(ptr noundef nonnull %3166)
  br label %3187

3187:                                             ; preds = %3183, %3185, %8
  %3188 = phi ptr [ null, %8 ], [ %3165, %3185 ], [ %3165, %3183 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %16) #19
  ret ptr %3188
}

declare i32 @IsMagickTrue(ptr noundef) local_unnamed_addr #2

declare ptr @GetImageArtifact(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @CommandOptionToMnemonic(i32 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @SetImageAlphaChannel(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @CompositeImageChannel(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @MorphologyImageChannel(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca ptr, align 8
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 29
  %9 = load double, ptr %8, align 8, !tbaa !189
  %10 = add i32 %2, -1
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %12, label %35

12:                                               ; preds = %6
  %13 = tail call ptr @GetImageArtifact(ptr noundef %0, ptr noundef nonnull @.str.89) #19
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  %16 = call double @InterpretLocaleValue(ptr noundef nonnull %13, ptr noundef nonnull %7) #19
  %17 = load ptr, ptr %7, align 8, !tbaa !45
  %18 = load i8, ptr %17, align 1, !tbaa !44
  %19 = icmp eq i8 %18, 37
  %20 = fmul double %16, 6.553600e+02
  %21 = select i1 %19, double %20, double %16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  br label %22

22:                                               ; preds = %15, %12
  %23 = phi double [ %21, %15 ], [ %9, %12 ]
  %24 = call ptr @GetImageArtifact(ptr noundef %0, ptr noundef nonnull @.str.90) #19
  %25 = icmp eq ptr %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = call ptr @CloneKernelInfo(ptr noundef %4)
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call ptr @DestroyKernelInfo(ptr noundef null)
  br label %32

31:                                               ; preds = %26
  call void @ScaleGeometryKernelInfo(ptr noundef nonnull %27, ptr noundef nonnull %24)
  br label %32

32:                                               ; preds = %22, %31, %29
  %33 = phi ptr [ %30, %29 ], [ %27, %31 ], [ %4, %22 ]
  %34 = phi i1 [ false, %29 ], [ true, %31 ], [ true, %22 ]
  br i1 %34, label %35, label %62

35:                                               ; preds = %32, %6
  %36 = phi double [ %23, %32 ], [ %9, %6 ]
  %37 = phi ptr [ %33, %32 ], [ %4, %6 ]
  %38 = call ptr @GetImageArtifact(ptr noundef %0, ptr noundef nonnull @.str.91) #19
  %39 = call i32 @IsMagickTrue(ptr noundef %38) #19
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %35
  %42 = call ptr @GetImageArtifact(ptr noundef %0, ptr noundef nonnull @.str.92) #19
  %43 = call i32 @IsMagickTrue(ptr noundef %42) #19
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = call ptr @GetImageArtifact(ptr noundef %0, ptr noundef nonnull @.str.93) #19
  %47 = call i32 @IsMagickTrue(ptr noundef %46) #19
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45, %41, %35
  call void @ShowKernelInfo(ptr noundef %37)
  br label %50

50:                                               ; preds = %49, %45
  %51 = call ptr @GetImageArtifact(ptr noundef %0, ptr noundef nonnull @.str.94) #19
  %52 = icmp eq ptr %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = call i64 @ParseCommandOption(i32 noundef 11, i32 noundef 0, ptr noundef nonnull %51) #19
  %55 = trunc i64 %54 to i32
  br label %56

56:                                               ; preds = %53, %50
  %57 = phi i32 [ %55, %53 ], [ 0, %50 ]
  %58 = call ptr @MorphologyApply(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, ptr noundef %37, i32 noundef %57, double noundef %36, ptr noundef %5)
  %59 = icmp eq ptr %37, %4
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = call ptr @DestroyKernelInfo(ptr noundef %37)
  br label %62

62:                                               ; preds = %56, %60, %32
  %63 = phi ptr [ null, %32 ], [ %58, %60 ], [ %58, %56 ]
  ret ptr %63
}

; Function Attrs: nounwind uwtable
define dso_local void @ScaleGeometryKernelInfo(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._GeometryInfo, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #19
  call void @SetGeometryInfo(ptr noundef nonnull %3) #19
  %4 = call i32 @ParseGeometry(ptr noundef %1, ptr noundef nonnull %3) #19
  %5 = and i32 %4, 4096
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load double, ptr %3, align 8, !tbaa !51
  %9 = fmul double %8, 1.000000e-02
  store double %9, ptr %3, align 8, !tbaa !51
  %10 = getelementptr inbounds %struct._GeometryInfo, ptr %3, i64 0, i32 1
  %11 = load double, ptr %10, align 8, !tbaa !53
  %12 = fmul double %11, 1.000000e-02
  store double %12, ptr %10, align 8, !tbaa !53
  br label %13

13:                                               ; preds = %7, %2
  %14 = and i32 %4, 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store double 1.000000e+00, ptr %3, align 8, !tbaa !51
  br label %17

17:                                               ; preds = %16, %13
  %18 = and i32 %4, 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct._GeometryInfo, ptr %3, i64 0, i32 1
  store double 0.000000e+00, ptr %21, align 8, !tbaa !53
  %22 = load double, ptr %3, align 8, !tbaa !51
  call void @ScaleKernelInfo(ptr noundef %0, double noundef %22, i32 noundef %4)
  br label %27

23:                                               ; preds = %17
  %24 = load double, ptr %3, align 8, !tbaa !51
  call void @ScaleKernelInfo(ptr noundef %0, double noundef %24, i32 noundef %4)
  %25 = getelementptr inbounds %struct._GeometryInfo, ptr %3, i64 0, i32 1
  %26 = load double, ptr %25, align 8, !tbaa !53
  call void @UnityAddKernelInfo(ptr noundef %0, double noundef %26)
  br label %27

27:                                               ; preds = %20, %23
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #19
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ShowKernelInfo(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %123, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 11
  br label %5

5:                                                ; preds = %3, %118
  %6 = phi i64 [ 0, %3 ], [ %119, %118 ]
  %7 = phi ptr [ %0, %3 ], [ %121, %118 ]
  %8 = load ptr, ptr @stderr, align 8, !tbaa !45
  %9 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %8, ptr noundef nonnull @.str.95) #19
  %10 = load ptr, ptr %4, align 8, !tbaa !42
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %5
  %13 = load ptr, ptr @stderr, align 8, !tbaa !45
  %14 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %13, ptr noundef nonnull @.str.96, i64 noundef %6) #19
  br label %15

15:                                               ; preds = %12, %5
  %16 = load ptr, ptr @stderr, align 8, !tbaa !45
  %17 = load i32, ptr %7, align 8, !tbaa !34
  %18 = zext i32 %17 to i64
  %19 = tail call ptr @CommandOptionToMnemonic(i32 noundef 34, i64 noundef %18) #19
  %20 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %16, ptr noundef nonnull @.str.97, ptr noundef %19) #19
  %21 = getelementptr inbounds %struct.KernelInfo, ptr %7, i64 0, i32 10
  %22 = load double, ptr %21, align 8, !tbaa !107
  %23 = tail call double @llvm.fabs.f64(double %22)
  %24 = fcmp ult double %23, 1.000000e-15
  br i1 %24, label %28, label %25

25:                                               ; preds = %15
  %26 = load ptr, ptr @stderr, align 8, !tbaa !45
  %27 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %26, ptr noundef nonnull @.str.98, double noundef %22) #19
  br label %28

28:                                               ; preds = %25, %15
  %29 = load ptr, ptr @stderr, align 8, !tbaa !45
  %30 = getelementptr inbounds %struct.KernelInfo, ptr %7, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !58
  %32 = getelementptr inbounds %struct.KernelInfo, ptr %7, i64 0, i32 2
  %33 = load i64, ptr %32, align 8, !tbaa !59
  %34 = getelementptr inbounds %struct.KernelInfo, ptr %7, i64 0, i32 3
  %35 = load i64, ptr %34, align 8, !tbaa !60
  %36 = getelementptr inbounds %struct.KernelInfo, ptr %7, i64 0, i32 4
  %37 = load i64, ptr %36, align 8, !tbaa !61
  %38 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %29, ptr noundef nonnull @.str.99, i64 noundef %31, i64 noundef %33, i64 noundef %35, i64 noundef %37) #19
  %39 = load ptr, ptr @stderr, align 8, !tbaa !45
  %40 = tail call i32 @GetMagickPrecision() #19
  %41 = getelementptr inbounds %struct.KernelInfo, ptr %7, i64 0, i32 6
  %42 = load double, ptr %41, align 8, !tbaa !66
  %43 = tail call i32 @GetMagickPrecision() #19
  %44 = getelementptr inbounds %struct.KernelInfo, ptr %7, i64 0, i32 7
  %45 = load double, ptr %44, align 8, !tbaa !67
  %46 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %39, ptr noundef nonnull @.str.100, i32 noundef %40, double noundef %42, i32 noundef %43, double noundef %45) #19
  %47 = load ptr, ptr @stderr, align 8, !tbaa !45
  %48 = tail call i32 @GetMagickPrecision() #19
  %49 = getelementptr inbounds %struct.KernelInfo, ptr %7, i64 0, i32 8
  %50 = load double, ptr %49, align 8, !tbaa !81
  %51 = tail call i32 @GetMagickPrecision() #19
  %52 = getelementptr inbounds %struct.KernelInfo, ptr %7, i64 0, i32 9
  %53 = load double, ptr %52, align 8, !tbaa !78
  %54 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %47, ptr noundef nonnull @.str.101, i32 noundef %48, double noundef %50, i32 noundef %51, double noundef %53) #19
  %55 = load double, ptr %52, align 8, !tbaa !78
  %56 = load double, ptr %49, align 8, !tbaa !81
  %57 = fadd double %55, %56
  %58 = tail call double @llvm.fabs.f64(double %57)
  %59 = fcmp olt double %58, 1.000000e-15
  br i1 %59, label %60, label %63

60:                                               ; preds = %28
  %61 = load ptr, ptr @stderr, align 8, !tbaa !45
  %62 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %61, ptr noundef nonnull @.str.102) #19
  br label %76

63:                                               ; preds = %28
  %64 = fadd double %57, -1.000000e+00
  %65 = tail call double @llvm.fabs.f64(double %64)
  %66 = fcmp olt double %65, 1.000000e-15
  %67 = load ptr, ptr @stderr, align 8, !tbaa !45
  br i1 %66, label %68, label %70

68:                                               ; preds = %63
  %69 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %67, ptr noundef nonnull @.str.103) #19
  br label %76

70:                                               ; preds = %63
  %71 = tail call i32 @GetMagickPrecision() #19
  %72 = load double, ptr %52, align 8, !tbaa !78
  %73 = load double, ptr %49, align 8, !tbaa !81
  %74 = fadd double %72, %73
  %75 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %67, ptr noundef nonnull @.str.104, i32 noundef %71, double noundef %74) #19
  br label %76

76:                                               ; preds = %68, %70, %60
  %77 = load i64, ptr %32, align 8, !tbaa !59
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %118, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.KernelInfo, ptr %7, i64 0, i32 5
  br label %81

81:                                               ; preds = %79, %111
  %82 = phi i64 [ 0, %79 ], [ %115, %111 ]
  %83 = phi i64 [ 0, %79 ], [ %112, %111 ]
  %84 = load ptr, ptr @stderr, align 8, !tbaa !45
  %85 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %84, ptr noundef nonnull @.str.105, i64 noundef %82) #19
  %86 = load i64, ptr %30, align 8, !tbaa !58
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %111, label %88

88:                                               ; preds = %81, %106
  %89 = phi i64 [ %107, %106 ], [ 0, %81 ]
  %90 = phi i64 [ %108, %106 ], [ %83, %81 ]
  %91 = load ptr, ptr %80, align 8, !tbaa !65
  %92 = getelementptr inbounds double, ptr %91, i64 %90
  %93 = load double, ptr %92, align 8, !tbaa !68
  %94 = fcmp uno double %93, 0.000000e+00
  %95 = load ptr, ptr @stderr, align 8, !tbaa !45
  %96 = tail call i32 @GetMagickPrecision() #19
  %97 = add nsw i32 %96, 3
  br i1 %94, label %98, label %100

98:                                               ; preds = %88
  %99 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %95, ptr noundef nonnull @.str.106, i32 noundef %97, ptr noundef nonnull @.str.107) #19
  br label %106

100:                                              ; preds = %88
  %101 = tail call i32 @GetMagickPrecision() #19
  %102 = load ptr, ptr %80, align 8, !tbaa !65
  %103 = getelementptr inbounds double, ptr %102, i64 %90
  %104 = load double, ptr %103, align 8, !tbaa !68
  %105 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %95, ptr noundef nonnull @.str.108, i32 noundef %97, i32 noundef %101, double noundef %104) #19
  br label %106

106:                                              ; preds = %98, %100
  %107 = add nuw i64 %89, 1
  %108 = add i64 %90, 1
  %109 = load i64, ptr %30, align 8, !tbaa !58
  %110 = icmp ult i64 %107, %109
  br i1 %110, label %88, label %111, !llvm.loop !190

111:                                              ; preds = %106, %81
  %112 = phi i64 [ %83, %81 ], [ %108, %106 ]
  %113 = load ptr, ptr @stderr, align 8, !tbaa !45
  %114 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %113, ptr noundef nonnull @.str.78) #19
  %115 = add nuw i64 %82, 1
  %116 = load i64, ptr %32, align 8, !tbaa !59
  %117 = icmp ult i64 %115, %116
  br i1 %117, label %81, label %118, !llvm.loop !191

118:                                              ; preds = %111, %76
  %119 = add i64 %6, 1
  %120 = getelementptr inbounds %struct.KernelInfo, ptr %7, i64 0, i32 11
  %121 = load ptr, ptr %120, align 8, !tbaa !42
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %5, !llvm.loop !192

123:                                              ; preds = %118, %1
  ret void
}

declare i64 @ParseCommandOption(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @MorphologyImage(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @MorphologyImageChannel(ptr noundef %0, i32 noundef 134217719, i32 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4)
  ret ptr %6
}

declare void @SetGeometryInfo(ptr noundef) local_unnamed_addr #2

declare i32 @ParseGeometry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @UnityAddKernelInfo(ptr nocapture noundef %0, double noundef %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @UnityAddKernelInfo(ptr noundef nonnull %4, double noundef %1)
  br label %7

7:                                                ; preds = %6, %2
  %8 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !65
  %10 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 3
  %11 = load i64, ptr %10, align 8, !tbaa !60
  %12 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 4
  %13 = load i64, ptr %12, align 8, !tbaa !61
  %14 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !58
  %16 = mul i64 %15, %13
  %17 = getelementptr double, ptr %9, i64 %11
  %18 = getelementptr double, ptr %17, i64 %16
  %19 = load double, ptr %18, align 8, !tbaa !68
  %20 = fadd double %19, %1
  store double %20, ptr %18, align 8, !tbaa !68
  %21 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 7
  %22 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 6
  %23 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 9
  %24 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %22, i8 0, i64 32, i1 false)
  %25 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 2
  %26 = load i64, ptr %25, align 8, !tbaa !59
  %27 = mul i64 %26, %15
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %52, label %29

29:                                               ; preds = %7, %36
  %30 = phi i64 [ %50, %36 ], [ 0, %7 ]
  %31 = getelementptr inbounds double, ptr %9, i64 %30
  %32 = load double, ptr %31, align 8, !tbaa !68
  %33 = tail call double @llvm.fabs.f64(double %32)
  %34 = fcmp olt double %33, 1.000000e-15
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store double 0.000000e+00, ptr %31, align 8, !tbaa !68
  br label %36

36:                                               ; preds = %35, %29
  %37 = load double, ptr %31, align 8, !tbaa !68
  %38 = fcmp olt double %37, 0.000000e+00
  %39 = select i1 %38, ptr %24, ptr %23
  %40 = load double, ptr %39, align 8, !tbaa !68
  %41 = fadd double %37, %40
  store double %41, ptr %39, align 8, !tbaa !68
  %42 = load double, ptr %22, align 8, !tbaa !66
  %43 = load double, ptr %31, align 8, !tbaa !68
  %44 = fcmp olt double %42, %43
  %45 = select i1 %44, double %42, double %43
  store double %45, ptr %22, align 8, !tbaa !66
  %46 = load double, ptr %21, align 8, !tbaa !67
  %47 = load double, ptr %31, align 8, !tbaa !68
  %48 = fcmp ogt double %46, %47
  %49 = select i1 %48, double %46, double %47
  store double %49, ptr %21, align 8, !tbaa !67
  %50 = add nuw i64 %30, 1
  %51 = icmp eq i64 %50, %27
  br i1 %51, label %52, label %29, !llvm.loop !76

52:                                               ; preds = %36, %7
  ret void
}

declare i32 @GetMagickPrecision() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ZeroKernelNans(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @ZeroKernelNans(ptr noundef nonnull %3)
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !58
  %9 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 2
  %10 = load i64, ptr %9, align 8, !tbaa !59
  %11 = mul i64 %10, %8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !65
  br label %16

16:                                               ; preds = %13, %22
  %17 = phi i64 [ 0, %13 ], [ %23, %22 ]
  %18 = getelementptr inbounds double, ptr %15, i64 %17
  %19 = load double, ptr %18, align 8, !tbaa !68
  %20 = fcmp uno double %19, 0.000000e+00
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store double 0.000000e+00, ptr %18, align 8, !tbaa !68
  br label %22

22:                                               ; preds = %21, %16
  %23 = add nuw i64 %17, 1
  %24 = icmp eq i64 %23, %11
  br i1 %24, label %25, label %16, !llvm.loop !193

25:                                               ; preds = %22, %6
  ret void
}

declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #2

declare double @InterpretLocaleValue(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: hot
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: hot
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #12

declare ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #2

declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #2

declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: hot
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #12

declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #7

declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #2

declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @DestroyString(ptr noundef) local_unnamed_addr #2

declare void @CatchException(ptr noundef) local_unnamed_addr #2

declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #2

declare void @MagickCoreTerminus() local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #13

; Function Attrs: hot
declare float @GetPixelIntensity(ptr noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #14

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

declare float @sqrtf(float) local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #18

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { hot "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind willreturn memory(argmem: read) }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #19 = { nounwind }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nounwind willreturn memory(none) }
attributes #22 = { nounwind willreturn memory(read) }
attributes #23 = { nounwind allocsize(0,1) }
attributes #24 = { cold }
attributes #25 = { hot nounwind }
attributes #26 = { noreturn nounwind }

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
!34 = !{!35, !36, i64 0}
!35 = !{!"KernelInfo", !36, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !40, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !41, i64 80, !40, i64 88, !39, i64 96}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"long", !37, i64 0}
!40 = !{!"any pointer", !37, i64 0}
!41 = !{!"double", !37, i64 0}
!42 = !{!35, !40, i64 88}
!43 = !{!35, !39, i64 96}
!44 = !{!37, !37, i64 0}
!45 = !{!40, !40, i64 0}
!46 = !{!47, !47, i64 0}
!47 = !{!"short", !37, i64 0}
!48 = distinct !{!48, !49, !50}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!"llvm.loop.unroll.disable"}
!51 = !{!52, !41, i64 0}
!52 = !{!"_GeometryInfo", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32}
!53 = !{!52, !41, i64 8}
!54 = !{!52, !41, i64 16}
!55 = !{!52, !41, i64 24}
!56 = distinct !{!56, !49, !50}
!57 = distinct !{!57, !49, !50}
!58 = !{!35, !39, i64 8}
!59 = !{!35, !39, i64 16}
!60 = !{!35, !39, i64 24}
!61 = !{!35, !39, i64 32}
!62 = distinct !{!62, !49, !50}
!63 = distinct !{!63, !49, !50}
!64 = distinct !{!64, !49, !50}
!65 = !{!35, !40, i64 40}
!66 = !{!35, !41, i64 48}
!67 = !{!35, !41, i64 56}
!68 = !{!41, !41, i64 0}
!69 = distinct !{!69, !49, !50}
!70 = distinct !{!70, !49, !50}
!71 = distinct !{!71, !49, !50}
!72 = distinct !{!72, !49, !50}
!73 = distinct !{!73, !49, !50}
!74 = distinct !{!74, !49, !50}
!75 = distinct !{!75, !49, !50}
!76 = distinct !{!76, !49, !50}
!77 = distinct !{!77, !49, !50}
!78 = !{!35, !41, i64 72}
!79 = distinct !{!79, !49, !50}
!80 = distinct !{!80, !49, !50}
!81 = !{!35, !41, i64 64}
!82 = distinct !{!82, !49, !50}
!83 = distinct !{!83, !49, !50}
!84 = distinct !{!84, !49, !50}
!85 = distinct !{!85, !49, !50}
!86 = distinct !{!86, !49, !50}
!87 = distinct !{!87, !49, !50}
!88 = distinct !{!88, !49, !50}
!89 = distinct !{!89, !49, !50}
!90 = distinct !{!90, !49, !50}
!91 = distinct !{!91, !49, !50}
!92 = distinct !{!92, !49, !50}
!93 = distinct !{!93, !49, !50}
!94 = distinct !{!94, !49, !50}
!95 = distinct !{!95, !49, !50}
!96 = distinct !{!96, !49, !50}
!97 = distinct !{!97, !49, !50}
!98 = distinct !{!98, !49, !50}
!99 = distinct !{!99, !49, !50}
!100 = distinct !{!100, !49, !50}
!101 = distinct !{!101, !49, !50}
!102 = distinct !{!102, !49, !50}
!103 = distinct !{!103, !49, !50}
!104 = distinct !{!104, !49, !50}
!105 = distinct !{!105, !49, !50}
!106 = distinct !{!106, !49, !50}
!107 = !{!35, !41, i64 80}
!108 = distinct !{!108, !49, !50}
!109 = distinct !{!109, !49, !50}
!110 = distinct !{!110, !49, !50}
!111 = distinct !{!111, !49, !50}
!112 = distinct !{!112, !50}
!113 = !{i64 0, i64 4, !114, i64 8, i64 8, !115, i64 16, i64 8, !115, i64 24, i64 8, !115, i64 32, i64 8, !115, i64 40, i64 8, !45, i64 48, i64 8, !68, i64 56, i64 8, !68, i64 64, i64 8, !68, i64 72, i64 8, !68, i64 80, i64 8, !68, i64 88, i64 8, !45, i64 96, i64 8, !115}
!114 = !{!36, !36, i64 0}
!115 = !{!39, !39, i64 0}
!116 = distinct !{!116, !49, !50}
!117 = !{!118, !39, i64 40}
!118 = !{!"_Image", !36, i64 0, !36, i64 4, !36, i64 8, !39, i64 16, !36, i64 24, !36, i64 28, !36, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !40, i64 72, !119, i64 80, !119, i64 88, !119, i64 96, !41, i64 104, !120, i64 112, !36, i64 208, !40, i64 216, !36, i64 224, !40, i64 232, !40, i64 240, !40, i64 248, !39, i64 256, !41, i64 264, !41, i64 272, !122, i64 280, !122, i64 312, !122, i64 344, !41, i64 376, !41, i64 384, !41, i64 392, !36, i64 400, !36, i64 404, !36, i64 408, !36, i64 412, !36, i64 416, !36, i64 420, !40, i64 424, !39, i64 432, !39, i64 440, !39, i64 448, !39, i64 456, !39, i64 464, !39, i64 472, !123, i64 480, !124, i64 504, !40, i64 568, !40, i64 576, !40, i64 584, !40, i64 592, !40, i64 600, !40, i64 608, !37, i64 616, !37, i64 4712, !37, i64 8808, !39, i64 12904, !39, i64 12912, !126, i64 12920, !36, i64 12976, !39, i64 12984, !40, i64 12992, !127, i64 13000, !127, i64 13032, !40, i64 13064, !39, i64 13072, !39, i64 13080, !40, i64 13088, !40, i64 13096, !40, i64 13104, !36, i64 13112, !36, i64 13116, !119, i64 13120, !40, i64 13128, !122, i64 13136, !40, i64 13168, !40, i64 13176, !36, i64 13184, !36, i64 13188, !128, i64 13192, !36, i64 13200, !39, i64 13208, !39, i64 13216, !36, i64 13224, !39, i64 13232}
!119 = !{!"_PixelPacket", !47, i64 0, !47, i64 2, !47, i64 4, !47, i64 6}
!120 = !{!"_ChromaticityInfo", !121, i64 0, !121, i64 24, !121, i64 48, !121, i64 72}
!121 = !{!"_PrimaryInfo", !41, i64 0, !41, i64 8, !41, i64 16}
!122 = !{!"_RectangleInfo", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24}
!123 = !{!"_ErrorInfo", !41, i64 0, !41, i64 8, !41, i64 16}
!124 = !{!"_TimerInfo", !125, i64 0, !125, i64 24, !36, i64 48, !39, i64 56}
!125 = !{!"_Timer", !41, i64 0, !41, i64 8, !41, i64 16}
!126 = !{!"_ExceptionInfo", !36, i64 0, !36, i64 4, !40, i64 8, !40, i64 16, !40, i64 24, !36, i64 32, !40, i64 40, !39, i64 48}
!127 = !{!"_ProfileInfo", !40, i64 0, !39, i64 8, !40, i64 16, !39, i64 24}
!128 = !{!"long long", !37, i64 0}
!129 = !{!118, !39, i64 48}
!130 = distinct !{!130, !49, !50}
!131 = !{!119, !47, i64 4}
!132 = !{!133, !134, i64 32}
!133 = !{!"_MagickPixelPacket", !36, i64 0, !36, i64 4, !36, i64 8, !41, i64 16, !39, i64 24, !134, i64 32, !134, i64 36, !134, i64 40, !134, i64 44, !134, i64 48}
!134 = !{!"float", !37, i64 0}
!135 = !{!119, !47, i64 2}
!136 = !{!133, !134, i64 36}
!137 = !{!119, !47, i64 0}
!138 = !{!133, !134, i64 40}
!139 = !{!119, !47, i64 6}
!140 = !{!133, !134, i64 44}
!141 = !{!118, !36, i64 4}
!142 = !{!133, !134, i64 48}
!143 = distinct !{!143, !49, !50}
!144 = distinct !{!144, !49, !50}
!145 = distinct !{!145, !49, !50}
!146 = distinct !{!146, !49, !50}
!147 = distinct !{!147, !49, !50}
!148 = distinct !{!148, !49, !50}
!149 = !{!118, !36, i64 0}
!150 = !{!118, !36, i64 32}
!151 = distinct !{!151, !49, !50}
!152 = !{!118, !40, i64 568}
!153 = !{!118, !40, i64 576}
!154 = distinct !{!154, !49, !50}
!155 = distinct !{!155, !49, !50}
!156 = distinct !{!156, !49, !50}
!157 = distinct !{!157, !49, !50}
!158 = distinct !{!158, !49, !50}
!159 = distinct !{!159, !49, !50}
!160 = distinct !{!160, !49, !50}
!161 = distinct !{!161, !49, !50}
!162 = distinct !{!162, !49, !50}
!163 = distinct !{!163, !49, !50}
!164 = distinct !{!164, !49, !50}
!165 = distinct !{!165, !49, !50}
!166 = distinct !{!166, !49, !50}
!167 = !{!118, !36, i64 13184}
!168 = distinct !{!168, !49, !50}
!169 = distinct !{!169, !49, !50}
!170 = distinct !{!170, !49, !50}
!171 = distinct !{!171, !49, !50}
!172 = distinct !{!172, !49, !50}
!173 = distinct !{!173, !49, !50}
!174 = distinct !{!174, !49, !50}
!175 = distinct !{!175, !49, !50}
!176 = distinct !{!176, !49, !50}
!177 = distinct !{!177, !49, !50}
!178 = distinct !{!178, !49, !50}
!179 = distinct !{!179, !49, !50}
!180 = distinct !{!180, !49, !50}
!181 = distinct !{!181, !49, !50}
!182 = distinct !{!182, !49, !50}
!183 = distinct !{!183, !49, !50}
!184 = distinct !{!184, !49, !50}
!185 = distinct !{!185, !49, !50}
!186 = distinct !{!186, !49, !50}
!187 = distinct !{!187, !49, !50}
!188 = distinct !{!188, !49, !50}
!189 = !{!118, !41, i64 376}
!190 = distinct !{!190, !49, !50}
!191 = distinct !{!191, !49, !50}
!192 = distinct !{!192, !49, !50}
!193 = distinct !{!193, !49, !50}
