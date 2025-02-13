; ModuleID = 'magick/morphology.c'
source_filename = "magick/morphology.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.KernelInfo = type { i32, i64, i64, i64, i64, ptr, double, double, double, double, double, ptr, i64 }
%struct._GeometryInfo = type { double, double, double, double, double }
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
%struct._MagickPixelPacket = type { i32, i32, i32, double, i64, float, float, float, float, float }

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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @AcquireKernelInfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %2) #24
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @ParseKernelArray(ptr noundef null) #25
  br label %38

6:                                                ; preds = %1, %33
  %7 = phi ptr [ %34, %33 ], [ null, %1 ]
  %8 = phi ptr [ %37, %33 ], [ %0, %1 ]
  call void @GetMagickToken(ptr noundef nonnull %8, ptr noundef null, ptr noundef nonnull %2) #26
  %9 = load i8, ptr %2, align 16, !tbaa !5
  switch i8 %9, label %10 [
    i8 0, label %38
    i8 59, label %33
  ]

10:                                               ; preds = %6
  %11 = tail call ptr @__ctype_b_loc() #27
  %12 = load ptr, ptr %11, align 8, !tbaa !8
  %13 = zext i8 %9 to i64
  %14 = getelementptr inbounds i16, ptr %12, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !10
  %16 = and i16 %15, 1024
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %10
  %19 = call fastcc ptr @ParseKernelName(ptr noundef nonnull %8) #25
  br label %22

20:                                               ; preds = %10
  %21 = call fastcc ptr @ParseKernelArray(ptr noundef nonnull %8) #25
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi ptr [ %19, %18 ], [ %21, %20 ]
  %24 = icmp eq ptr %23, null
  %25 = icmp eq ptr %7, null
  br i1 %24, label %26, label %29

26:                                               ; preds = %22
  br i1 %25, label %38, label %27

27:                                               ; preds = %26
  %28 = call ptr @DestroyKernelInfo(ptr noundef nonnull %7) #25
  br label %38

29:                                               ; preds = %22
  br i1 %25, label %33, label %30

30:                                               ; preds = %29
  %31 = call fastcc ptr @LastKernelInfo(ptr noundef nonnull %7) #25
  %32 = getelementptr inbounds %struct.KernelInfo, ptr %31, i64 0, i32 11
  store ptr %23, ptr %32, align 8, !tbaa !12
  br label %33

33:                                               ; preds = %29, %6, %30
  %34 = phi ptr [ %7, %30 ], [ %7, %6 ], [ %23, %29 ]
  %35 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %8, i32 noundef 59) #28
  %36 = icmp eq ptr %35, null
  %37 = getelementptr inbounds i8, ptr %35, i64 1
  br i1 %36, label %38, label %6, !llvm.loop !17

38:                                               ; preds = %33, %6, %26, %27, %4
  %39 = phi ptr [ %5, %4 ], [ null, %27 ], [ null, %26 ], [ %7, %6 ], [ %34, %33 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %2) #24
  ret ptr %39
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ParseKernelArray(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [4096 x i8], align 16
  %3 = alloca ptr, align 8
  %4 = alloca %struct._GeometryInfo, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  %5 = tail call double @sqrt(double noundef -1.000000e+00) #26
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #24
  %6 = tail call dereferenceable_or_null(104) ptr @AcquireMagickMemory(i64 noundef 104) #29
  %7 = icmp eq ptr %6, null
  br i1 %7, label %237, label %8

8:                                                ; preds = %1
  %9 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %6, i32 noundef 0, i64 noundef 104) #26
  %10 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 7
  %11 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 6
  %12 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 9
  %13 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %11, i8 0, i64 40, i1 false)
  store i32 36, ptr %6, align 8, !tbaa !19
  %14 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 11
  store ptr null, ptr %14, align 8, !tbaa !12
  %15 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 12
  store i64 2880220587, ptr %15, align 8, !tbaa !20
  %16 = icmp eq ptr %0, null
  br i1 %16, label %237, label %17

17:                                               ; preds = %8
  %18 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 59) #28
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0)
  %22 = getelementptr inbounds i8, ptr %0, i64 %21
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi ptr [ %22, %20 ], [ %18, %17 ]
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 58) #28
  store ptr %25, ptr %3, align 8, !tbaa !8
  %26 = icmp ne ptr %25, null
  %27 = icmp ult ptr %25, %24
  %28 = select i1 %26, i1 %27, i1 false
  br i1 %28, label %31, label %29

29:                                               ; preds = %23
  %30 = tail call ptr @__ctype_b_loc() #27
  br label %98

31:                                               ; preds = %23
  %32 = ptrtoint ptr %25 to i64
  %33 = ptrtoint ptr %0 to i64
  %34 = sub i64 %32, %33
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %2, ptr nonnull align 1 %0, i64 %34, i1 false)
  %35 = getelementptr inbounds [4096 x i8], ptr %2, i64 0, i64 %34
  store i8 0, ptr %35, align 1, !tbaa !5
  call void @SetGeometryInfo(ptr noundef nonnull %4) #26
  %36 = call i32 @ParseGeometry(ptr noundef nonnull %2, ptr noundef nonnull %4) #26
  %37 = and i32 %36, 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 1
  %41 = load double, ptr %40, align 8, !tbaa !21
  store double %41, ptr %4, align 8, !tbaa !23
  br label %44

42:                                               ; preds = %31
  %43 = load double, ptr %4, align 8, !tbaa !23
  br label %44

44:                                               ; preds = %42, %39
  %45 = phi double [ %43, %42 ], [ %41, %39 ]
  %46 = fcmp olt double %45, 1.000000e+00
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store double 1.000000e+00, ptr %4, align 8, !tbaa !23
  br label %48

48:                                               ; preds = %47, %44
  %49 = phi double [ 1.000000e+00, %47 ], [ %45, %44 ]
  %50 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 1
  %51 = load double, ptr %50, align 8, !tbaa !21
  %52 = fcmp olt double %51, 1.000000e+00
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store double %49, ptr %50, align 8, !tbaa !21
  br label %54

54:                                               ; preds = %53, %48
  %55 = phi double [ %49, %53 ], [ %51, %48 ]
  %56 = fptoui double %49 to i64
  %57 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 1
  store i64 %56, ptr %57, align 8, !tbaa !24
  %58 = fptoui double %55 to i64
  %59 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 2
  store i64 %58, ptr %59, align 8, !tbaa !25
  %60 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 2
  %61 = load double, ptr %60, align 8, !tbaa !26
  %62 = fcmp olt double %61, 0.000000e+00
  %63 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 3
  %64 = load double, ptr %63, align 8
  %65 = fcmp olt double %64, 0.000000e+00
  %66 = select i1 %62, i1 true, i1 %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %54
  %68 = call ptr @DestroyKernelInfo(ptr noundef nonnull %6) #25
  br label %237

69:                                               ; preds = %54
  %70 = and i32 %36, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %69
  %73 = fptosi double %61 to i64
  br label %77

74:                                               ; preds = %69
  %75 = add i64 %56, -1
  %76 = sdiv i64 %75, 2
  br label %77

77:                                               ; preds = %74, %72
  %78 = phi i64 [ %73, %72 ], [ %76, %74 ]
  %79 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 3
  store i64 %78, ptr %79, align 8, !tbaa !27
  %80 = and i32 %36, 2
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %77
  %83 = fptosi double %64 to i64
  br label %87

84:                                               ; preds = %77
  %85 = add i64 %58, -1
  %86 = sdiv i64 %85, 2
  br label %87

87:                                               ; preds = %84, %82
  %88 = phi i64 [ %83, %82 ], [ %86, %84 ]
  %89 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 4
  store i64 %88, ptr %89, align 8, !tbaa !28
  %90 = icmp slt i64 %78, %56
  %91 = icmp slt i64 %88, %58
  %92 = select i1 %90, i1 %91, i1 false
  br i1 %92, label %95, label %93

93:                                               ; preds = %87
  %94 = call ptr @DestroyKernelInfo(ptr noundef nonnull %6) #25
  br label %237

95:                                               ; preds = %87
  %96 = load ptr, ptr %3, align 8, !tbaa !8
  %97 = getelementptr inbounds i8, ptr %96, i64 1
  store ptr %97, ptr %3, align 8, !tbaa !8
  br label %148

98:                                               ; preds = %98, %29
  %99 = phi ptr [ %109, %98 ], [ %0, %29 ]
  store ptr %99, ptr %3, align 8, !tbaa !8
  %100 = load ptr, ptr %30, align 8, !tbaa !8
  %101 = load i8, ptr %99, align 1, !tbaa !5
  %102 = zext i8 %101 to i64
  %103 = getelementptr inbounds i16, ptr %100, i64 %102
  %104 = load i16, ptr %103, align 2, !tbaa !10
  %105 = and i16 %104, 8192
  %106 = icmp ne i16 %105, 0
  %107 = icmp eq i8 %101, 39
  %108 = or i1 %107, %106
  %109 = getelementptr inbounds i8, ptr %99, i64 1
  br i1 %108, label %98, label %110, !llvm.loop !29

110:                                              ; preds = %98
  %111 = icmp ult ptr %99, %24
  br i1 %111, label %112, label %126

112:                                              ; preds = %110, %119
  %113 = phi ptr [ %121, %119 ], [ %99, %110 ]
  %114 = phi i64 [ %120, %119 ], [ 0, %110 ]
  call void @GetMagickToken(ptr noundef %113, ptr noundef nonnull %3, ptr noundef nonnull %2) #26
  %115 = load i8, ptr %2, align 16, !tbaa !5
  %116 = icmp eq i8 %115, 44
  br i1 %116, label %117, label %119

117:                                              ; preds = %112
  %118 = load ptr, ptr %3, align 8, !tbaa !8
  call void @GetMagickToken(ptr noundef %118, ptr noundef nonnull %3, ptr noundef nonnull %2) #26
  br label %119

119:                                              ; preds = %112, %117
  %120 = add nuw nsw i64 %114, 1
  %121 = load ptr, ptr %3, align 8, !tbaa !8
  %122 = icmp ult ptr %121, %24
  br i1 %122, label %112, label %123, !llvm.loop !30

123:                                              ; preds = %119
  %124 = sitofp i64 %120 to double
  %125 = fadd double %124, 1.000000e+00
  br label %126

126:                                              ; preds = %123, %110
  %127 = phi double [ 1.000000e+00, %110 ], [ %125, %123 ]
  %128 = call double @sqrt(double noundef %127) #26
  %129 = fptoui double %128 to i64
  %130 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 2
  store i64 %129, ptr %130, align 8, !tbaa !25
  %131 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 1
  store i64 %129, ptr %131, align 8, !tbaa !24
  %132 = add i64 %129, -1
  %133 = sdiv i64 %132, 2
  %134 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 4
  store i64 %133, ptr %134, align 8, !tbaa !28
  %135 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 3
  store i64 %133, ptr %135, align 8, !tbaa !27
  br label %136

136:                                              ; preds = %136, %126
  %137 = phi ptr [ %0, %126 ], [ %147, %136 ]
  store ptr %137, ptr %3, align 8, !tbaa !8
  %138 = load ptr, ptr %30, align 8, !tbaa !8
  %139 = load i8, ptr %137, align 1, !tbaa !5
  %140 = zext i8 %139 to i64
  %141 = getelementptr inbounds i16, ptr %138, i64 %140
  %142 = load i16, ptr %141, align 2, !tbaa !10
  %143 = and i16 %142, 8192
  %144 = icmp ne i16 %143, 0
  %145 = icmp eq i8 %139, 39
  %146 = or i1 %145, %144
  %147 = getelementptr inbounds i8, ptr %137, i64 1
  br i1 %146, label %136, label %148, !llvm.loop !31

148:                                              ; preds = %136, %95
  %149 = phi i64 [ %58, %95 ], [ %129, %136 ]
  %150 = phi i64 [ %56, %95 ], [ %129, %136 ]
  %151 = phi i32 [ %36, %95 ], [ 0, %136 ]
  %152 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 1
  %153 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 2
  %154 = shl i64 %149, 3
  %155 = call ptr @AcquireAlignedMemory(i64 noundef %150, i64 noundef %154) #30
  %156 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 5
  store ptr %155, ptr %156, align 8, !tbaa !32
  %157 = icmp eq ptr %155, null
  br i1 %157, label %158, label %160

158:                                              ; preds = %148
  %159 = call ptr @DestroyKernelInfo(ptr noundef nonnull %6) #25
  br label %237

160:                                              ; preds = %148
  store <2 x double> <double 0x7FEFFFFFFFFFFFFF, double 0xFFEFFFFFFFFFFFFF>, ptr %11, align 8, !tbaa !33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  %161 = load i64, ptr %152, align 8, !tbaa !24
  %162 = load i64, ptr %153, align 8, !tbaa !25
  %163 = mul i64 %162, %161
  %164 = icmp sgt i64 %163, 0
  %165 = load ptr, ptr %3, align 8
  %166 = icmp ult ptr %165, %24
  %167 = select i1 %164, i1 %166, i1 false
  br i1 %167, label %168, label %207

168:                                              ; preds = %160, %198
  %169 = phi ptr [ %204, %198 ], [ %165, %160 ]
  %170 = phi i64 [ %199, %198 ], [ 0, %160 ]
  call void @GetMagickToken(ptr noundef %169, ptr noundef nonnull %3, ptr noundef nonnull %2) #26
  %171 = load i8, ptr %2, align 16, !tbaa !5
  %172 = icmp eq i8 %171, 44
  br i1 %172, label %173, label %175

173:                                              ; preds = %168
  %174 = load ptr, ptr %3, align 8, !tbaa !8
  call void @GetMagickToken(ptr noundef %174, ptr noundef nonnull %3, ptr noundef nonnull %2) #26
  br label %175

175:                                              ; preds = %173, %168
  %176 = call i32 @LocaleCompare(ptr noundef nonnull @.str.107, ptr noundef nonnull %2) #26
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %181, label %178

178:                                              ; preds = %175
  %179 = call i32 @LocaleCompare(ptr noundef nonnull @.str.109, ptr noundef nonnull %2) #26
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %178, %175
  %182 = load ptr, ptr %156, align 8, !tbaa !32
  %183 = getelementptr inbounds double, ptr %182, i64 %170
  store double %5, ptr %183, align 8, !tbaa !33
  br label %198

184:                                              ; preds = %178
  %185 = call fastcc double @StringToDouble(ptr noundef nonnull %2) #25
  %186 = load ptr, ptr %156, align 8, !tbaa !32
  %187 = getelementptr inbounds double, ptr %186, i64 %170
  store double %185, ptr %187, align 8, !tbaa !33
  %188 = fcmp olt double %185, 0.000000e+00
  %189 = select i1 %188, ptr %13, ptr %12
  %190 = load double, ptr %189, align 8, !tbaa !33
  %191 = fadd double %185, %190
  store double %191, ptr %189, align 8, !tbaa !33
  %192 = load double, ptr %11, align 8, !tbaa !34
  %193 = load double, ptr %187, align 8, !tbaa !33
  %194 = call fastcc double @MagickMin(double noundef %192, double noundef %193) #25
  store double %194, ptr %11, align 8, !tbaa !34
  %195 = load double, ptr %10, align 8, !tbaa !35
  %196 = load double, ptr %187, align 8, !tbaa !33
  %197 = call fastcc double @MagickMax(double noundef %195, double noundef %196) #25
  store double %197, ptr %10, align 8, !tbaa !35
  br label %198

198:                                              ; preds = %181, %184
  %199 = add nuw nsw i64 %170, 1
  %200 = load i64, ptr %152, align 8, !tbaa !24
  %201 = load i64, ptr %153, align 8, !tbaa !25
  %202 = mul i64 %201, %200
  %203 = icmp slt i64 %199, %202
  %204 = load ptr, ptr %3, align 8
  %205 = icmp ult ptr %204, %24
  %206 = select i1 %203, i1 %205, i1 false
  br i1 %206, label %168, label %207, !llvm.loop !36

207:                                              ; preds = %198, %160
  %208 = phi i64 [ 0, %160 ], [ %199, %198 ]
  %209 = phi ptr [ %165, %160 ], [ %204, %198 ]
  call void @GetMagickToken(ptr noundef %209, ptr noundef nonnull %3, ptr noundef nonnull %2) #26
  %210 = load i8, ptr %2, align 16
  switch i8 %210, label %211 [
    i8 59, label %213
    i8 39, label %213
    i8 0, label %213
  ]

211:                                              ; preds = %207
  %212 = call ptr @DestroyKernelInfo(ptr noundef nonnull %6) #25
  br label %237

213:                                              ; preds = %207, %207, %207
  %214 = load i64, ptr %152, align 8, !tbaa !24
  %215 = load i64, ptr %153, align 8, !tbaa !25
  %216 = mul i64 %215, %214
  %217 = icmp slt i64 %208, %216
  br i1 %217, label %218, label %220

218:                                              ; preds = %213
  %219 = call ptr @DestroyKernelInfo(ptr noundef nonnull %6) #25
  br label %237

220:                                              ; preds = %213
  %221 = load double, ptr %11, align 8, !tbaa !34
  %222 = fcmp oeq double %221, 0x7FEFFFFFFFFFFFFF
  br i1 %222, label %223, label %225

223:                                              ; preds = %220
  %224 = call ptr @DestroyKernelInfo(ptr noundef nonnull %6) #25
  br label %237

225:                                              ; preds = %220
  %226 = and i32 %151, 131072
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %229, label %228

228:                                              ; preds = %225
  call fastcc void @ExpandRotateKernelInfo(ptr noundef nonnull %6, double noundef 4.500000e+01) #25
  br label %237

229:                                              ; preds = %225
  %230 = and i32 %151, 32768
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %233, label %232

232:                                              ; preds = %229
  call fastcc void @ExpandRotateKernelInfo(ptr noundef nonnull %6, double noundef 9.000000e+01) #25
  br label %237

233:                                              ; preds = %229
  %234 = and i32 %151, 16384
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %237, label %236

236:                                              ; preds = %233
  call fastcc void @ExpandMirrorKernelInfo(ptr noundef nonnull %6) #25
  br label %237

237:                                              ; preds = %228, %233, %236, %232, %8, %1, %223, %218, %211, %158, %93, %67
  %238 = phi ptr [ %68, %67 ], [ %94, %93 ], [ %159, %158 ], [ %212, %211 ], [ %219, %218 ], [ %224, %223 ], [ null, %1 ], [ %6, %8 ], [ %6, %232 ], [ %6, %236 ], [ %6, %233 ], [ %6, %228 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %2) #24
  ret ptr %238
}

; Function Attrs: optsize
declare void @GetMagickToken(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ParseKernelName(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [4096 x i8], align 16
  %3 = alloca ptr, align 8
  %4 = alloca %struct._GeometryInfo, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #24
  call void @GetMagickToken(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %2) #26
  %5 = call i64 @ParseCommandOption(i32 noundef 34, i32 noundef 0, ptr noundef nonnull %2) #26
  %6 = icmp slt i64 %5, 0
  %7 = icmp eq i64 %5, 36
  %8 = or i1 %6, %7
  br i1 %8, label %130, label %9

9:                                                ; preds = %1
  %10 = tail call ptr @__ctype_b_loc() #27
  %11 = load ptr, ptr %3, align 8, !tbaa !8
  br label %12

12:                                               ; preds = %9, %24
  %13 = phi ptr [ %11, %9 ], [ %25, %24 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !8
  %15 = load i8, ptr %13, align 1, !tbaa !5
  %16 = zext i8 %15 to i64
  %17 = getelementptr inbounds i16, ptr %14, i64 %16
  %18 = load i16, ptr %17, align 2, !tbaa !10
  %19 = freeze i16 %18
  %20 = and i16 %19, 8192
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  switch i8 %15, label %26 [
    i8 44, label %24
    i8 58, label %24
  ]

23:                                               ; preds = %12
  switch i8 %15, label %24 [
    i8 0, label %26
    i8 59, label %26
  ]

24:                                               ; preds = %22, %22, %23
  %25 = getelementptr inbounds i8, ptr %13, i64 1
  store ptr %25, ptr %3, align 8, !tbaa !8
  br label %12, !llvm.loop !37

26:                                               ; preds = %22, %23, %23
  %27 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %13, i32 noundef 59) #28
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %13)
  %31 = getelementptr inbounds i8, ptr %13, i64 %30
  br label %32

32:                                               ; preds = %29, %26
  %33 = phi ptr [ %31, %29 ], [ %27, %26 ]
  %34 = ptrtoint ptr %33 to i64
  %35 = ptrtoint ptr %13 to i64
  %36 = sub i64 %34, %35
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %2, ptr nonnull align 1 %13, i64 %36, i1 false)
  %37 = getelementptr inbounds [4096 x i8], ptr %2, i64 0, i64 %36
  store i8 0, ptr %37, align 1, !tbaa !5
  call void @SetGeometryInfo(ptr noundef nonnull %4) #26
  %38 = call i32 @ParseGeometry(ptr noundef nonnull %2, ptr noundef nonnull %4) #26
  switch i64 %5, label %110 [
    i64 1, label %39
    i64 15, label %43
    i64 14, label %43
    i64 17, label %43
    i64 18, label %43
    i64 19, label %43
    i64 20, label %43
    i64 21, label %48
    i64 16, label %53
    i64 32, label %90
    i64 33, label %90
    i64 34, label %90
    i64 35, label %90
  ]

39:                                               ; preds = %32
  %40 = and i32 %38, 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %110

42:                                               ; preds = %39
  store double 1.000000e+00, ptr %4, align 8, !tbaa !23
  br label %110

43:                                               ; preds = %32, %32, %32, %32, %32, %32
  %44 = and i32 %38, 8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %110

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 1
  store double 1.000000e+00, ptr %47, align 8, !tbaa !21
  br label %110

48:                                               ; preds = %32
  %49 = and i32 %38, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %110

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 2
  store double 1.000000e+00, ptr %52, align 8, !tbaa !26
  br label %110

53:                                               ; preds = %32
  %54 = and i32 %38, 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 1
  %58 = load double, ptr %57, align 8, !tbaa !21
  store double %58, ptr %4, align 8, !tbaa !23
  br label %61

59:                                               ; preds = %53
  %60 = load double, ptr %4, align 8, !tbaa !23
  br label %61

61:                                               ; preds = %59, %56
  %62 = phi double [ %60, %59 ], [ %58, %56 ]
  %63 = fcmp olt double %62, 1.000000e+00
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store double 3.000000e+00, ptr %4, align 8, !tbaa !23
  br label %65

65:                                               ; preds = %64, %61
  %66 = phi double [ 3.000000e+00, %64 ], [ %62, %61 ]
  %67 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 1
  %68 = load double, ptr %67, align 8, !tbaa !21
  %69 = fcmp olt double %68, 1.000000e+00
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  store double %66, ptr %67, align 8, !tbaa !21
  br label %71

71:                                               ; preds = %70, %65
  %72 = phi double [ %66, %70 ], [ %68, %65 ]
  %73 = and i32 %38, 1
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = fptosi double %66 to i64
  %77 = add nsw i64 %76, -1
  %78 = sdiv i64 %77, 2
  %79 = sitofp i64 %78 to double
  %80 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 2
  store double %79, ptr %80, align 8, !tbaa !26
  br label %81

81:                                               ; preds = %75, %71
  %82 = and i32 %38, 2
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %110

84:                                               ; preds = %81
  %85 = fptosi double %72 to i64
  %86 = add nsw i64 %85, -1
  %87 = sdiv i64 %86, 2
  %88 = sitofp i64 %87 to double
  %89 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 3
  store double %88, ptr %89, align 8, !tbaa !38
  br label %110

90:                                               ; preds = %32, %32, %32, %32
  %91 = and i32 %38, 8
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 1
  store double 1.000000e+02, ptr %94, align 8, !tbaa !21
  br label %110

95:                                               ; preds = %90
  %96 = and i32 %38, 8192
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 1
  %100 = load double, ptr %99, align 8, !tbaa !21
  %101 = fadd double %100, 1.000000e+00
  %102 = fdiv double 6.553500e+04, %101
  store double %102, ptr %99, align 8, !tbaa !21
  br label %110

103:                                              ; preds = %95
  %104 = and i32 %38, 4096
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 1
  %108 = load double, ptr %107, align 8, !tbaa !21
  %109 = fmul double %108, 6.553500e+02
  store double %109, ptr %107, align 8, !tbaa !21
  br label %110

110:                                              ; preds = %32, %93, %103, %106, %98, %81, %84, %48, %51, %43, %46, %39, %42
  %111 = trunc i64 %5 to i32
  %112 = call ptr @AcquireKernelBuiltIn(i32 noundef %111, ptr noundef nonnull %4) #25
  %113 = icmp eq ptr %112, null
  br i1 %113, label %130, label %114

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.KernelInfo, ptr %112, i64 0, i32 11
  %116 = load ptr, ptr %115, align 8, !tbaa !12
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %130

118:                                              ; preds = %114
  %119 = and i32 %38, 131072
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %118
  call fastcc void @ExpandRotateKernelInfo(ptr noundef nonnull %112, double noundef 4.500000e+01) #25
  br label %130

122:                                              ; preds = %118
  %123 = and i32 %38, 32768
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %122
  call fastcc void @ExpandRotateKernelInfo(ptr noundef nonnull %112, double noundef 9.000000e+01) #25
  br label %130

126:                                              ; preds = %122
  %127 = and i32 %38, 16384
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %126
  call fastcc void @ExpandMirrorKernelInfo(ptr noundef nonnull %112) #25
  br label %130

130:                                              ; preds = %114, %125, %129, %126, %121, %110, %1
  %131 = phi ptr [ null, %1 ], [ null, %110 ], [ %112, %121 ], [ %112, %126 ], [ %112, %129 ], [ %112, %125 ], [ %112, %114 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %2) #24
  ret ptr %131
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DestroyKernelInfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %3) #25
  store ptr %6, ptr %2, align 8, !tbaa !12
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !32
  %10 = tail call ptr @RelinquishAlignedMemory(ptr noundef %9) #26
  store ptr %10, ptr %8, align 8, !tbaa !32
  %11 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #26
  ret ptr %11
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @LastKernelInfo(ptr noundef readonly %0) unnamed_addr #4 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %5, %2 ]
  %4 = getelementptr inbounds %struct.KernelInfo, ptr %3, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %2, !llvm.loop !39

7:                                                ; preds = %2
  ret ptr %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @AcquireKernelBuiltIn(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call double @sqrt(double noundef -1.000000e+00) #26
  %4 = icmp ult i32 %0, 37
  br i1 %4, label %13, label %5

5:                                                ; preds = %13, %2
  %6 = tail call dereferenceable_or_null(104) ptr @AcquireMagickMemory(i64 noundef 104) #29
  %7 = icmp eq ptr %6, null
  br i1 %7, label %1584, label %8

8:                                                ; preds = %5
  %9 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %6, i32 noundef 0, i64 noundef 104) #26
  %10 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %10, i8 0, i64 40, i1 false)
  store i32 %0, ptr %6, align 8, !tbaa !19
  %11 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 11
  store ptr null, ptr %11, align 8, !tbaa !12
  %12 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 12
  store i64 2880220587, ptr %12, align 8, !tbaa !20
  br label %18

13:                                               ; preds = %2
  %14 = zext nneg i32 %0 to i64
  %15 = lshr i64 73006071681, %14
  %16 = and i64 %15, 1
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %5, label %18

18:                                               ; preds = %13, %8
  %19 = phi ptr [ %6, %8 ], [ null, %13 ]
  switch i32 %0, label %1580 [
    i32 1, label %20
    i32 2, label %32
    i32 3, label %32
    i32 4, label %32
    i32 5, label %265
    i32 6, label %338
    i32 37, label %427
    i32 7, label %498
    i32 8, label %513
    i32 10, label %518
    i32 11, label %523
    i32 12, label %528
    i32 13, label %533
    i32 9, label %538
    i32 14, label %626
    i32 15, label %689
    i32 16, label %689
    i32 17, label %782
    i32 18, label %847
    i32 19, label %916
    i32 20, label %979
    i32 21, label %1043
    i32 22, label %1043
    i32 23, label %1132
    i32 24, label %1136
    i32 25, label %1140
    i32 26, label %1162
    i32 27, label %1178
    i32 28, label %1194
    i32 29, label %1262
    i32 31, label %1273
    i32 30, label %1298
    i32 32, label %1329
    i32 33, label %1388
    i32 34, label %1446
    i32 35, label %1513
  ]

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 1
  store i64 1, ptr %21, align 8, !tbaa !24
  %22 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 2
  store i64 1, ptr %22, align 8, !tbaa !25
  %23 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  %24 = tail call dereferenceable_or_null(8) ptr @AcquireAlignedMemory(i64 noundef 1, i64 noundef 8) #30
  %25 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 5
  store ptr %24, ptr %25, align 8, !tbaa !32
  %26 = icmp eq ptr %24, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %19) #25
  br label %1584

29:                                               ; preds = %20
  %30 = load double, ptr %1, align 8, !tbaa !23
  store double %30, ptr %24, align 8, !tbaa !33
  %31 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 7
  store double %30, ptr %31, align 8, !tbaa !35
  br label %1584

32:                                               ; preds = %18, %18, %18
  %33 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %34 = load double, ptr %33, align 8, !tbaa !21
  %35 = tail call double @llvm.fabs.f64(double %34)
  %36 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 2
  %37 = load double, ptr %36, align 8, !tbaa !26
  %38 = tail call double @llvm.fabs.f64(double %37)
  %39 = load double, ptr %1, align 8, !tbaa !23
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
  %51 = tail call i64 @GetOptimalKernelWidth2D(double noundef %39, double noundef %35) #26
  br label %54

52:                                               ; preds = %46
  %53 = tail call i64 @GetOptimalKernelWidth2D(double noundef %39, double noundef %38) #26
  br label %54

54:                                               ; preds = %50, %52, %42
  %55 = phi i64 [ %51, %50 ], [ %53, %52 ], [ %45, %42 ]
  store i64 %55, ptr %41, align 8, !tbaa !24
  %56 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 1
  %57 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 2
  store i64 %55, ptr %57, align 8, !tbaa !25
  %58 = add i64 %55, -1
  %59 = sdiv i64 %58, 2
  %60 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 4
  store i64 %59, ptr %60, align 8, !tbaa !28
  %61 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 3
  store i64 %59, ptr %61, align 8, !tbaa !27
  %62 = shl i64 %55, 3
  %63 = tail call ptr @AcquireAlignedMemory(i64 noundef %55, i64 noundef %62) #30
  %64 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 5
  store ptr %63, ptr %64, align 8, !tbaa !32
  %65 = icmp eq ptr %63, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %54
  %67 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %19) #25
  br label %1584

68:                                               ; preds = %54
  %69 = icmp eq i32 %0, 3
  %70 = and i32 %0, -2
  %71 = icmp eq i32 %70, 2
  br i1 %71, label %72, label %134

72:                                               ; preds = %68
  %73 = fcmp ogt double %35, 1.000000e-15
  br i1 %73, label %74, label %121

74:                                               ; preds = %72
  %75 = fmul double %35, 2.000000e+00
  %76 = fmul double %35, %75
  %77 = fdiv double 1.000000e+00, %76
  %78 = fmul double %35, 0x401921FB54442D18
  %79 = fmul double %35, %78
  %80 = fdiv double 1.000000e+00, %79
  %81 = load i64, ptr %60, align 8, !tbaa !28
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %134, label %83

83:                                               ; preds = %74
  %84 = sub nsw i64 0, %81
  %85 = load i64, ptr %61, align 8, !tbaa !27
  br label %86

86:                                               ; preds = %83, %114
  %87 = phi ptr [ %115, %114 ], [ %63, %83 ]
  %88 = phi i64 [ %116, %114 ], [ %81, %83 ]
  %89 = phi i64 [ %117, %114 ], [ %85, %83 ]
  %90 = phi i64 [ %118, %114 ], [ 0, %83 ]
  %91 = phi i64 [ %119, %114 ], [ %84, %83 ]
  %92 = icmp slt i64 %89, 0
  br i1 %92, label %114, label %93

93:                                               ; preds = %86
  %94 = sub nsw i64 0, %89
  %95 = mul nsw i64 %91, %91
  br label %96

96:                                               ; preds = %93, %96
  %97 = phi i64 [ %90, %93 ], [ %109, %96 ]
  %98 = phi i64 [ %94, %93 ], [ %108, %96 ]
  %99 = mul nsw i64 %98, %98
  %100 = add nuw nsw i64 %99, %95
  %101 = sitofp i64 %100 to double
  %102 = fneg double %101
  %103 = fmul double %77, %102
  %104 = tail call double @exp(double noundef %103) #26
  %105 = fmul double %80, %104
  %106 = load ptr, ptr %64, align 8, !tbaa !32
  %107 = getelementptr inbounds double, ptr %106, i64 %97
  store double %105, ptr %107, align 8, !tbaa !33
  %108 = add nsw i64 %98, 1
  %109 = add nsw i64 %97, 1
  %110 = load i64, ptr %61, align 8, !tbaa !27
  %111 = icmp slt i64 %98, %110
  br i1 %111, label %96, label %112, !llvm.loop !40

112:                                              ; preds = %96
  %113 = load i64, ptr %60, align 8, !tbaa !28
  br label %114

114:                                              ; preds = %112, %86
  %115 = phi ptr [ %87, %86 ], [ %106, %112 ]
  %116 = phi i64 [ %88, %86 ], [ %113, %112 ]
  %117 = phi i64 [ %89, %86 ], [ %110, %112 ]
  %118 = phi i64 [ %90, %86 ], [ %109, %112 ]
  %119 = add nsw i64 %91, 1
  %120 = icmp slt i64 %91, %116
  br i1 %120, label %86, label %134, !llvm.loop !41

121:                                              ; preds = %72
  %122 = load i64, ptr %56, align 8, !tbaa !24
  %123 = load i64, ptr %57, align 8, !tbaa !25
  %124 = shl i64 %122, 3
  %125 = mul i64 %124, %123
  %126 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %63, i32 noundef 0, i64 noundef %125) #26
  %127 = load ptr, ptr %64, align 8, !tbaa !32
  %128 = load i64, ptr %61, align 8, !tbaa !27
  %129 = load i64, ptr %60, align 8, !tbaa !28
  %130 = load i64, ptr %56, align 8, !tbaa !24
  %131 = mul i64 %130, %129
  %132 = getelementptr double, ptr %127, i64 %128
  %133 = getelementptr double, ptr %132, i64 %131
  store double 1.000000e+00, ptr %133, align 8, !tbaa !33
  br label %134

134:                                              ; preds = %114, %74, %121, %68
  %135 = phi ptr [ %63, %74 ], [ %127, %121 ], [ %63, %68 ], [ %115, %114 ]
  br i1 %69, label %136, label %196

136:                                              ; preds = %134
  %137 = fcmp ogt double %38, 1.000000e-15
  br i1 %137, label %138, label %187

138:                                              ; preds = %136
  %139 = fmul double %38, 2.000000e+00
  %140 = fmul double %38, %139
  %141 = fdiv double 1.000000e+00, %140
  %142 = fmul double %38, 0x401921FB54442D18
  %143 = fmul double %38, %142
  %144 = fdiv double 1.000000e+00, %143
  %145 = load i64, ptr %60, align 8, !tbaa !28
  %146 = icmp slt i64 %145, 0
  br i1 %146, label %264, label %147

147:                                              ; preds = %138
  %148 = sub nsw i64 0, %145
  %149 = load i64, ptr %61, align 8, !tbaa !27
  br label %150

150:                                              ; preds = %147, %180
  %151 = phi ptr [ %181, %180 ], [ %135, %147 ]
  %152 = phi i64 [ %182, %180 ], [ %145, %147 ]
  %153 = phi i64 [ %183, %180 ], [ %149, %147 ]
  %154 = phi i64 [ %184, %180 ], [ 0, %147 ]
  %155 = phi i64 [ %185, %180 ], [ %148, %147 ]
  %156 = icmp slt i64 %153, 0
  br i1 %156, label %180, label %157

157:                                              ; preds = %150
  %158 = sub nsw i64 0, %153
  %159 = mul nsw i64 %155, %155
  br label %160

160:                                              ; preds = %157, %160
  %161 = phi i64 [ %154, %157 ], [ %175, %160 ]
  %162 = phi i64 [ %158, %157 ], [ %174, %160 ]
  %163 = mul nsw i64 %162, %162
  %164 = add nuw nsw i64 %163, %159
  %165 = sitofp i64 %164 to double
  %166 = fneg double %165
  %167 = fmul double %141, %166
  %168 = tail call double @exp(double noundef %167) #26
  %169 = load ptr, ptr %64, align 8, !tbaa !32
  %170 = getelementptr inbounds double, ptr %169, i64 %161
  %171 = load double, ptr %170, align 8, !tbaa !33
  %172 = fneg double %168
  %173 = tail call double @llvm.fmuladd.f64(double %172, double %144, double %171)
  store double %173, ptr %170, align 8, !tbaa !33
  %174 = add nsw i64 %162, 1
  %175 = add nsw i64 %161, 1
  %176 = load i64, ptr %61, align 8, !tbaa !27
  %177 = icmp slt i64 %162, %176
  br i1 %177, label %160, label %178, !llvm.loop !42

178:                                              ; preds = %160
  %179 = load i64, ptr %60, align 8, !tbaa !28
  br label %180

180:                                              ; preds = %178, %150
  %181 = phi ptr [ %151, %150 ], [ %169, %178 ]
  %182 = phi i64 [ %152, %150 ], [ %179, %178 ]
  %183 = phi i64 [ %153, %150 ], [ %176, %178 ]
  %184 = phi i64 [ %154, %150 ], [ %175, %178 ]
  %185 = add nsw i64 %155, 1
  %186 = icmp slt i64 %155, %182
  br i1 %186, label %150, label %196, !llvm.loop !43

187:                                              ; preds = %136
  %188 = load i64, ptr %61, align 8, !tbaa !27
  %189 = load i64, ptr %60, align 8, !tbaa !28
  %190 = load i64, ptr %56, align 8, !tbaa !24
  %191 = mul i64 %190, %189
  %192 = getelementptr double, ptr %135, i64 %188
  %193 = getelementptr double, ptr %192, i64 %191
  %194 = load double, ptr %193, align 8, !tbaa !33
  %195 = fadd double %194, -1.000000e+00
  store double %195, ptr %193, align 8, !tbaa !33
  br label %264

196:                                              ; preds = %180, %134
  %197 = phi ptr [ %135, %134 ], [ %181, %180 ]
  %198 = phi double [ %35, %134 ], [ %38, %180 ]
  %199 = icmp eq i32 %0, 4
  br i1 %199, label %200, label %264

200:                                              ; preds = %196
  %201 = fcmp ogt double %198, 1.000000e-15
  br i1 %201, label %202, label %251

202:                                              ; preds = %200
  %203 = fmul double %198, 2.000000e+00
  %204 = fmul double %198, %203
  %205 = fdiv double 1.000000e+00, %204
  %206 = fmul double %198, 0x400921FB54442D18
  %207 = fmul double %198, %206
  %208 = fmul double %198, %207
  %209 = fmul double %198, %208
  %210 = fdiv double 1.000000e+00, %209
  %211 = load i64, ptr %60, align 8, !tbaa !28
  %212 = icmp slt i64 %211, 0
  br i1 %212, label %264, label %213

213:                                              ; preds = %202
  %214 = sub nsw i64 0, %211
  %215 = load i64, ptr %61, align 8, !tbaa !27
  br label %216

216:                                              ; preds = %213, %245
  %217 = phi i64 [ %246, %245 ], [ %211, %213 ]
  %218 = phi i64 [ %247, %245 ], [ %215, %213 ]
  %219 = phi i64 [ %248, %245 ], [ 0, %213 ]
  %220 = phi i64 [ %249, %245 ], [ %214, %213 ]
  %221 = icmp slt i64 %218, 0
  br i1 %221, label %245, label %222

222:                                              ; preds = %216
  %223 = sub nsw i64 0, %218
  %224 = mul nsw i64 %220, %220
  br label %225

225:                                              ; preds = %222, %225
  %226 = phi i64 [ %219, %222 ], [ %240, %225 ]
  %227 = phi i64 [ %223, %222 ], [ %239, %225 ]
  %228 = mul nsw i64 %227, %227
  %229 = add nuw nsw i64 %228, %224
  %230 = sitofp i64 %229 to double
  %231 = fmul double %205, %230
  %232 = fsub double 1.000000e+00, %231
  %233 = fneg double %231
  %234 = tail call double @exp(double noundef %233) #26
  %235 = fmul double %232, %234
  %236 = fmul double %210, %235
  %237 = load ptr, ptr %64, align 8, !tbaa !32
  %238 = getelementptr inbounds double, ptr %237, i64 %226
  store double %236, ptr %238, align 8, !tbaa !33
  %239 = add nsw i64 %227, 1
  %240 = add nsw i64 %226, 1
  %241 = load i64, ptr %61, align 8, !tbaa !27
  %242 = icmp slt i64 %227, %241
  br i1 %242, label %225, label %243, !llvm.loop !44

243:                                              ; preds = %225
  %244 = load i64, ptr %60, align 8, !tbaa !28
  br label %245

245:                                              ; preds = %243, %216
  %246 = phi i64 [ %217, %216 ], [ %244, %243 ]
  %247 = phi i64 [ %218, %216 ], [ %241, %243 ]
  %248 = phi i64 [ %219, %216 ], [ %240, %243 ]
  %249 = add nsw i64 %220, 1
  %250 = icmp slt i64 %220, %246
  br i1 %250, label %216, label %264, !llvm.loop !45

251:                                              ; preds = %200
  %252 = load i64, ptr %56, align 8, !tbaa !24
  %253 = load i64, ptr %57, align 8, !tbaa !25
  %254 = shl i64 %252, 3
  %255 = mul i64 %254, %253
  %256 = tail call ptr @ResetMagickMemory(ptr noundef %197, i32 noundef 0, i64 noundef %255) #26
  %257 = load ptr, ptr %64, align 8, !tbaa !32
  %258 = load i64, ptr %61, align 8, !tbaa !27
  %259 = load i64, ptr %60, align 8, !tbaa !28
  %260 = load i64, ptr %56, align 8, !tbaa !24
  %261 = mul i64 %260, %259
  %262 = getelementptr double, ptr %257, i64 %258
  %263 = getelementptr double, ptr %262, i64 %261
  store double 1.000000e+00, ptr %263, align 8, !tbaa !33
  br label %264

264:                                              ; preds = %245, %138, %202, %196, %251, %187
  tail call fastcc void @CalcKernelMetaData(ptr noundef nonnull %19) #25
  tail call void @ScaleKernelInfo(ptr noundef nonnull %19, double noundef 1.000000e+00, i32 noundef 65536) #25
  br label %1584

265:                                              ; preds = %18
  %266 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %267 = load double, ptr %266, align 8, !tbaa !21
  %268 = tail call double @llvm.fabs.f64(double %267)
  %269 = load double, ptr %1, align 8, !tbaa !23
  %270 = fcmp ult double %269, 1.000000e+00
  br i1 %270, label %275, label %271

271:                                              ; preds = %265
  %272 = fptoui double %269 to i64
  %273 = shl i64 %272, 1
  %274 = or disjoint i64 %273, 1
  br label %277

275:                                              ; preds = %265
  %276 = tail call i64 @GetOptimalKernelWidth1D(double noundef %269, double noundef %268) #26
  br label %277

277:                                              ; preds = %275, %271
  %278 = phi i64 [ %276, %275 ], [ %274, %271 ]
  %279 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 1
  store i64 %278, ptr %279, align 8
  %280 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 2
  store i64 1, ptr %280, align 8, !tbaa !25
  %281 = add i64 %278, -1
  %282 = sdiv i64 %281, 2
  %283 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 3
  store i64 %282, ptr %283, align 8, !tbaa !27
  %284 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 4
  store i64 0, ptr %284, align 8, !tbaa !28
  %285 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %285, i8 0, i64 16, i1 false)
  %286 = tail call ptr @AcquireAlignedMemory(i64 noundef %278, i64 noundef 8) #30
  %287 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 5
  store ptr %286, ptr %287, align 8, !tbaa !32
  %288 = icmp eq ptr %286, null
  br i1 %288, label %289, label %291

289:                                              ; preds = %277
  %290 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %19) #25
  br label %1584

291:                                              ; preds = %277
  %292 = load i64, ptr %279, align 8, !tbaa !24
  %293 = mul i64 %292, 3
  %294 = add i64 %293, -1
  %295 = sdiv i64 %294, 2
  %296 = load i64, ptr %280, align 8, !tbaa !25
  %297 = shl i64 %292, 3
  %298 = mul i64 %297, %296
  %299 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %286, i32 noundef 0, i64 noundef %298) #26
  %300 = fcmp ogt double %268, 1.000000e-15
  br i1 %300, label %301, label %327

301:                                              ; preds = %291
  %302 = fmul double %268, 3.000000e+00
  %303 = fmul double %302, 2.000000e+00
  %304 = fmul double %302, %303
  %305 = fdiv double 1.000000e+00, %304
  %306 = fmul double %302, 0x40040D931FF62705
  %307 = fdiv double 1.000000e+00, %306
  %308 = icmp ugt i64 %293, -9223372036854775808
  br i1 %308, label %335, label %309

309:                                              ; preds = %301
  %310 = sub nsw i64 0, %295
  %311 = tail call i64 @llvm.abs.i64(i64 %295, i1 true)
  br label %312

312:                                              ; preds = %309, %312
  %313 = phi i64 [ %325, %312 ], [ %310, %309 ]
  %314 = mul nsw i64 %313, %313
  %315 = sitofp i64 %314 to double
  %316 = fneg double %315
  %317 = fmul double %305, %316
  %318 = tail call double @exp(double noundef %317) #26
  %319 = load ptr, ptr %287, align 8, !tbaa !32
  %320 = add nsw i64 %313, %295
  %321 = udiv i64 %320, 3
  %322 = getelementptr inbounds double, ptr %319, i64 %321
  %323 = load double, ptr %322, align 8, !tbaa !33
  %324 = tail call double @llvm.fmuladd.f64(double %318, double %307, double %323)
  store double %324, ptr %322, align 8, !tbaa !33
  %325 = add i64 %313, 1
  %326 = icmp eq i64 %313, %311
  br i1 %326, label %335, label %312, !llvm.loop !46

327:                                              ; preds = %291
  %328 = load ptr, ptr %287, align 8, !tbaa !32
  %329 = load i64, ptr %283, align 8, !tbaa !27
  %330 = load i64, ptr %284, align 8, !tbaa !28
  %331 = load i64, ptr %279, align 8, !tbaa !24
  %332 = mul i64 %331, %330
  %333 = getelementptr double, ptr %328, i64 %329
  %334 = getelementptr double, ptr %333, i64 %332
  store double 1.000000e+00, ptr %334, align 8, !tbaa !33
  br label %335

335:                                              ; preds = %312, %301, %327
  tail call fastcc void @CalcKernelMetaData(ptr noundef nonnull %19) #25
  tail call void @ScaleKernelInfo(ptr noundef nonnull %19, double noundef 1.000000e+00, i32 noundef 65536) #25
  %336 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 2
  %337 = load double, ptr %336, align 8, !tbaa !26
  tail call fastcc void @RotateKernelInfo(ptr noundef nonnull %19, double noundef %337) #25
  br label %1584

338:                                              ; preds = %18
  %339 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %340 = load double, ptr %339, align 8, !tbaa !21
  %341 = tail call double @llvm.fabs.f64(double %340)
  %342 = load double, ptr %1, align 8, !tbaa !23
  %343 = fcmp olt double %342, 1.000000e+00
  br i1 %343, label %344, label %349

344:                                              ; preds = %338
  %345 = tail call i64 @GetOptimalKernelWidth1D(double noundef %342, double noundef %341) #26
  %346 = add i64 %345, -1
  %347 = lshr i64 %346, 1
  %348 = add nuw i64 %347, 1
  br label %351

349:                                              ; preds = %338
  %350 = fptoui double %342 to i64
  br label %351

351:                                              ; preds = %349, %344
  %352 = phi i64 [ %348, %344 ], [ %350, %349 ]
  %353 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 1
  store i64 %352, ptr %353, align 8
  %354 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 4
  %355 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 3
  %356 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %355, i8 0, i64 16, i1 false)
  store i64 1, ptr %356, align 8, !tbaa !25
  %357 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 9
  %358 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %358, i8 0, i64 16, i1 false)
  %359 = tail call ptr @AcquireAlignedMemory(i64 noundef %352, i64 noundef 8) #30
  %360 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 5
  store ptr %359, ptr %360, align 8, !tbaa !32
  %361 = icmp eq ptr %359, null
  br i1 %361, label %362, label %364

362:                                              ; preds = %351
  %363 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %19) #25
  br label %1584

364:                                              ; preds = %351
  %365 = fcmp ogt double %341, 1.000000e-15
  %366 = load i64, ptr %353, align 8, !tbaa !24
  br i1 %365, label %367, label %408

367:                                              ; preds = %364
  %368 = shl i64 %366, 3
  %369 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %359, i32 noundef 0, i64 noundef %368) #26
  %370 = fmul double %341, 3.000000e+00
  %371 = fmul double %370, 2.000000e+00
  %372 = fmul double %370, %371
  %373 = fdiv double 1.000000e+00, %372
  %374 = icmp sgt i64 %366, 0
  br i1 %374, label %377, label %375

375:                                              ; preds = %367
  %376 = load ptr, ptr %360, align 8, !tbaa !32
  br label %380

377:                                              ; preds = %367
  %378 = mul i64 %366, 3
  %379 = tail call i64 @llvm.smax.i64(i64 %378, i64 1)
  br label %386

380:                                              ; preds = %386, %375
  %381 = phi ptr [ %376, %375 ], [ %393, %386 ]
  %382 = load i64, ptr %353, align 8, !tbaa !24
  %383 = icmp sgt i64 %382, 0
  br i1 %383, label %384, label %420

384:                                              ; preds = %380
  %385 = load double, ptr %357, align 8, !tbaa !47
  br label %400

386:                                              ; preds = %377, %386
  %387 = phi i64 [ %398, %386 ], [ 0, %377 ]
  %388 = mul nsw i64 %387, %387
  %389 = sitofp i64 %388 to double
  %390 = fneg double %389
  %391 = fmul double %373, %390
  %392 = tail call double @exp(double noundef %391) #26
  %393 = load ptr, ptr %360, align 8, !tbaa !32
  %394 = udiv i64 %387, 3
  %395 = getelementptr inbounds double, ptr %393, i64 %394
  %396 = load double, ptr %395, align 8, !tbaa !33
  %397 = fadd double %392, %396
  store double %397, ptr %395, align 8, !tbaa !33
  %398 = add nuw nsw i64 %387, 1
  %399 = icmp eq i64 %398, %379
  br i1 %399, label %380, label %386, !llvm.loop !48

400:                                              ; preds = %384, %400
  %401 = phi double [ %385, %384 ], [ %405, %400 ]
  %402 = phi i64 [ 0, %384 ], [ %406, %400 ]
  %403 = getelementptr inbounds double, ptr %381, i64 %402
  %404 = load double, ptr %403, align 8, !tbaa !33
  %405 = fadd double %404, %401
  store double %405, ptr %357, align 8, !tbaa !47
  %406 = add nuw nsw i64 %402, 1
  %407 = icmp eq i64 %406, %382
  br i1 %407, label %420, label %400, !llvm.loop !49

408:                                              ; preds = %364
  %409 = load i64, ptr %356, align 8, !tbaa !25
  %410 = shl i64 %366, 3
  %411 = mul i64 %410, %409
  %412 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %359, i32 noundef 0, i64 noundef %411) #26
  %413 = load ptr, ptr %360, align 8, !tbaa !32
  %414 = load i64, ptr %355, align 8, !tbaa !27
  %415 = load i64, ptr %354, align 8, !tbaa !28
  %416 = load i64, ptr %353, align 8, !tbaa !24
  %417 = mul i64 %416, %415
  %418 = getelementptr double, ptr %413, i64 %414
  %419 = getelementptr double, ptr %418, i64 %417
  store double 1.000000e+00, ptr %419, align 8, !tbaa !33
  store double 1.000000e+00, ptr %357, align 8, !tbaa !47
  br label %420

420:                                              ; preds = %400, %380, %408
  %421 = phi ptr [ %381, %380 ], [ %413, %408 ], [ %381, %400 ]
  %422 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 6
  store double 0.000000e+00, ptr %422, align 8, !tbaa !34
  %423 = load double, ptr %421, align 8, !tbaa !33
  %424 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 7
  store double %423, ptr %424, align 8, !tbaa !35
  store double 0.000000e+00, ptr %358, align 8, !tbaa !50
  tail call void @ScaleKernelInfo(ptr noundef nonnull %19, double noundef 1.000000e+00, i32 noundef 8192) #25
  %425 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 2
  %426 = load double, ptr %425, align 8, !tbaa !26
  tail call fastcc void @RotateKernelInfo(ptr noundef nonnull %19, double noundef %426) #25
  br label %1584

427:                                              ; preds = %18
  %428 = load double, ptr %1, align 8, !tbaa !23
  %429 = fcmp olt double %428, 1.000000e+00
  %430 = fptoui double %428 to i64
  %431 = shl i64 %430, 1
  %432 = or disjoint i64 %431, 1
  %433 = select i1 %429, i64 3, i64 %432
  %434 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 2
  store i64 %433, ptr %434, align 8
  %435 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 1
  store i64 %433, ptr %435, align 8
  %436 = add nsw i64 %433, -1
  %437 = ashr exact i64 %436, 1
  %438 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 4
  store i64 %437, ptr %438, align 8, !tbaa !28
  %439 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 3
  store i64 %437, ptr %439, align 8, !tbaa !27
  %440 = tail call fastcc i64 @fact(i64 noundef %436) #25
  %441 = shl i64 %433, 3
  %442 = tail call ptr @AcquireAlignedMemory(i64 noundef %433, i64 noundef %441) #30
  %443 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 5
  store ptr %442, ptr %443, align 8, !tbaa !32
  %444 = icmp eq ptr %442, null
  br i1 %444, label %452, label %445

445:                                              ; preds = %427
  %446 = load i64, ptr %434, align 8, !tbaa !25
  %447 = icmp sgt i64 %446, 0
  br i1 %447, label %450, label %448

448:                                              ; preds = %445
  %449 = load i64, ptr %435, align 8, !tbaa !24
  br label %487

450:                                              ; preds = %445
  %451 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 9
  br label %454

452:                                              ; preds = %427
  %453 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %19) #25
  br label %1584

454:                                              ; preds = %450, %483
  %455 = phi i64 [ 0, %450 ], [ %484, %483 ]
  %456 = phi i64 [ 0, %450 ], [ %485, %483 ]
  %457 = tail call fastcc i64 @fact(i64 noundef %456) #25
  %458 = xor i64 %456, -1
  %459 = add nsw i64 %446, %458
  %460 = tail call fastcc i64 @fact(i64 noundef %459) #25
  %461 = load i64, ptr %435, align 8, !tbaa !24
  %462 = icmp sgt i64 %461, 0
  br i1 %462, label %463, label %483

463:                                              ; preds = %454
  %464 = mul i64 %460, %457
  %465 = udiv i64 %440, %464
  %466 = mul i64 %465, %440
  br label %467

467:                                              ; preds = %463, %467
  %468 = phi i64 [ %455, %463 ], [ %481, %467 ]
  %469 = phi i64 [ 0, %463 ], [ %480, %467 ]
  %470 = tail call fastcc i64 @fact(i64 noundef %469) #25
  %471 = xor i64 %469, -1
  %472 = add nsw i64 %446, %471
  %473 = tail call fastcc i64 @fact(i64 noundef %472) #25
  %474 = mul i64 %473, %470
  %475 = udiv i64 %466, %474
  %476 = uitofp i64 %475 to double
  %477 = getelementptr inbounds double, ptr %442, i64 %468
  store double %476, ptr %477, align 8, !tbaa !33
  %478 = load double, ptr %451, align 8, !tbaa !47
  %479 = fadd double %478, %476
  store double %479, ptr %451, align 8, !tbaa !47
  %480 = add nuw nsw i64 %469, 1
  %481 = add nsw i64 %468, 1
  %482 = icmp eq i64 %480, %461
  br i1 %482, label %483, label %467, !llvm.loop !51

483:                                              ; preds = %467, %454
  %484 = phi i64 [ %455, %454 ], [ %481, %467 ]
  %485 = add nuw nsw i64 %456, 1
  %486 = icmp eq i64 %485, %446
  br i1 %486, label %487, label %454, !llvm.loop !52

487:                                              ; preds = %483, %448
  %488 = phi i64 [ %449, %448 ], [ %461, %483 ]
  %489 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 6
  store double 1.000000e+00, ptr %489, align 8, !tbaa !34
  %490 = load i64, ptr %439, align 8, !tbaa !27
  %491 = load i64, ptr %438, align 8, !tbaa !28
  %492 = mul i64 %488, %491
  %493 = getelementptr double, ptr %442, i64 %490
  %494 = getelementptr double, ptr %493, i64 %492
  %495 = load double, ptr %494, align 8, !tbaa !33
  %496 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 7
  store double %495, ptr %496, align 8, !tbaa !35
  %497 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 8
  store double 0.000000e+00, ptr %497, align 8, !tbaa !50
  br label %1584

498:                                              ; preds = %18
  %499 = load double, ptr %1, align 8, !tbaa !23
  %500 = fptosi double %499 to i32
  switch i32 %500, label %508 [
    i32 19, label %507
    i32 1, label %501
    i32 2, label %502
    i32 3, label %503
    i32 5, label %504
    i32 7, label %505
    i32 15, label %506
  ]

501:                                              ; preds = %498
  br label %508

502:                                              ; preds = %498
  br label %508

503:                                              ; preds = %498
  br label %508

504:                                              ; preds = %498
  br label %508

505:                                              ; preds = %498
  br label %508

506:                                              ; preds = %498
  br label %508

507:                                              ; preds = %498
  br label %508

508:                                              ; preds = %498, %507, %506, %505, %504, %503, %502, %501
  %509 = phi ptr [ @.str.7, %507 ], [ @.str.6, %506 ], [ @.str.5, %505 ], [ @.str.4, %504 ], [ @.str.3, %503 ], [ @.str.2, %502 ], [ @.str.1, %501 ], [ @.str, %498 ]
  %510 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull %509) #25
  %511 = icmp eq ptr %510, null
  br i1 %511, label %1584, label %512

512:                                              ; preds = %508
  store i32 7, ptr %510, align 8, !tbaa !19
  br label %1584

513:                                              ; preds = %18
  %514 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.8) #25
  %515 = icmp eq ptr %514, null
  br i1 %515, label %1584, label %516

516:                                              ; preds = %513
  store i32 8, ptr %514, align 8, !tbaa !19
  %517 = load double, ptr %1, align 8, !tbaa !23
  tail call fastcc void @RotateKernelInfo(ptr noundef nonnull %514, double noundef %517) #25
  br label %1584

518:                                              ; preds = %18
  %519 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.9) #25
  %520 = icmp eq ptr %519, null
  br i1 %520, label %1584, label %521

521:                                              ; preds = %518
  store i32 10, ptr %519, align 8, !tbaa !19
  %522 = load double, ptr %1, align 8, !tbaa !23
  tail call fastcc void @RotateKernelInfo(ptr noundef nonnull %519, double noundef %522) #25
  br label %1584

523:                                              ; preds = %18
  %524 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.10) #25
  %525 = icmp eq ptr %524, null
  br i1 %525, label %1584, label %526

526:                                              ; preds = %523
  store i32 11, ptr %524, align 8, !tbaa !19
  %527 = load double, ptr %1, align 8, !tbaa !23
  tail call fastcc void @RotateKernelInfo(ptr noundef nonnull %524, double noundef %527) #25
  br label %1584

528:                                              ; preds = %18
  %529 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.11) #25
  %530 = icmp eq ptr %529, null
  br i1 %530, label %1584, label %531

531:                                              ; preds = %528
  store i32 12, ptr %529, align 8, !tbaa !19
  %532 = load double, ptr %1, align 8, !tbaa !23
  tail call fastcc void @RotateKernelInfo(ptr noundef nonnull %529, double noundef %532) #25
  br label %1584

533:                                              ; preds = %18
  %534 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.12) #25
  %535 = icmp eq ptr %534, null
  br i1 %535, label %1584, label %536

536:                                              ; preds = %533
  store i32 13, ptr %534, align 8, !tbaa !19
  %537 = load double, ptr %1, align 8, !tbaa !23
  tail call fastcc void @RotateKernelInfo(ptr noundef nonnull %534, double noundef %537) #25
  br label %1584

538:                                              ; preds = %18
  %539 = load double, ptr %1, align 8, !tbaa !23
  %540 = fptosi double %539 to i32
  switch i32 %540, label %541 [
    i32 19, label %609
    i32 2, label %549
    i32 10, label %559
    i32 1, label %562
    i32 11, label %562
    i32 12, label %570
    i32 13, label %578
    i32 14, label %585
    i32 15, label %593
    i32 16, label %597
    i32 17, label %601
    i32 18, label %605
  ]

541:                                              ; preds = %538
  %542 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.8) #25
  %543 = icmp eq ptr %542, null
  br i1 %543, label %1584, label %544

544:                                              ; preds = %541
  store i32 9, ptr %542, align 8, !tbaa !19
  %545 = getelementptr inbounds %struct.KernelInfo, ptr %542, i64 0, i32 5
  %546 = load ptr, ptr %545, align 8, !tbaa !32
  %547 = getelementptr inbounds double, ptr %546, i64 3
  store double 0x3FF6A09E667F3BCD, ptr %547, align 8, !tbaa !33
  %548 = getelementptr inbounds double, ptr %546, i64 5
  store double 0xBFF6A09E667F3BCD, ptr %548, align 8, !tbaa !33
  tail call fastcc void @CalcKernelMetaData(ptr noundef nonnull %542) #25
  br label %613

549:                                              ; preds = %538
  %550 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.13) #25
  %551 = icmp eq ptr %550, null
  br i1 %551, label %1584, label %552

552:                                              ; preds = %549
  store i32 9, ptr %550, align 8, !tbaa !19
  %553 = getelementptr inbounds %struct.KernelInfo, ptr %550, i64 0, i32 5
  %554 = load ptr, ptr %553, align 8, !tbaa !32
  %555 = getelementptr inbounds double, ptr %554, i64 3
  store double 0x3FF6A09E667F3BCD, ptr %555, align 8, !tbaa !33
  %556 = getelementptr inbounds double, ptr %554, i64 1
  store double 0x3FF6A09E667F3BCD, ptr %556, align 8, !tbaa !33
  %557 = getelementptr inbounds double, ptr %554, i64 7
  store double 0xBFF6A09E667F3BCD, ptr %557, align 8, !tbaa !33
  %558 = getelementptr inbounds double, ptr %554, i64 5
  store double 0xBFF6A09E667F3BCD, ptr %558, align 8, !tbaa !33
  tail call fastcc void @CalcKernelMetaData(ptr noundef nonnull %550) #25
  tail call void @ScaleKernelInfo(ptr noundef nonnull %550, double noundef 0x3FE6A09E667F3BCD, i32 noundef 0) #25
  br label %613

559:                                              ; preds = %538
  %560 = tail call ptr @AcquireKernelInfo(ptr noundef nonnull @.str.14) #25
  %561 = icmp eq ptr %560, null
  br i1 %561, label %1584, label %613

562:                                              ; preds = %538, %538
  %563 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.8) #25
  %564 = icmp eq ptr %563, null
  br i1 %564, label %1584, label %565

565:                                              ; preds = %562
  store i32 9, ptr %563, align 8, !tbaa !19
  %566 = getelementptr inbounds %struct.KernelInfo, ptr %563, i64 0, i32 5
  %567 = load ptr, ptr %566, align 8, !tbaa !32
  %568 = getelementptr inbounds double, ptr %567, i64 3
  store double 0x3FF6A09E667F3BCD, ptr %568, align 8, !tbaa !33
  %569 = getelementptr inbounds double, ptr %567, i64 5
  store double 0xBFF6A09E667F3BCD, ptr %569, align 8, !tbaa !33
  tail call fastcc void @CalcKernelMetaData(ptr noundef nonnull %563) #25
  tail call void @ScaleKernelInfo(ptr noundef nonnull %563, double noundef 0x3FE6A09E667F3BCD, i32 noundef 0) #25
  br label %613

570:                                              ; preds = %538
  %571 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.15) #25
  %572 = icmp eq ptr %571, null
  br i1 %572, label %1584, label %573

573:                                              ; preds = %570
  store i32 9, ptr %571, align 8, !tbaa !19
  %574 = getelementptr inbounds %struct.KernelInfo, ptr %571, i64 0, i32 5
  %575 = load ptr, ptr %574, align 8, !tbaa !32
  %576 = getelementptr inbounds double, ptr %575, i64 1
  store double 0x3FF6A09E667F3BCD, ptr %576, align 8, !tbaa !33
  %577 = getelementptr inbounds double, ptr %575, i64 7
  store double 0x3FF6A09E667F3BCD, ptr %577, align 8, !tbaa !33
  tail call fastcc void @CalcKernelMetaData(ptr noundef nonnull %571) #25
  tail call void @ScaleKernelInfo(ptr noundef nonnull %571, double noundef 0x3FE6A09E667F3BCD, i32 noundef 0) #25
  br label %613

578:                                              ; preds = %538
  %579 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.16) #25
  %580 = icmp eq ptr %579, null
  br i1 %580, label %1584, label %581

581:                                              ; preds = %578
  store i32 9, ptr %579, align 8, !tbaa !19
  %582 = getelementptr inbounds %struct.KernelInfo, ptr %579, i64 0, i32 5
  %583 = load ptr, ptr %582, align 8, !tbaa !32
  store double 0x3FF6A09E667F3BCD, ptr %583, align 8, !tbaa !33
  %584 = getelementptr inbounds double, ptr %583, i64 8
  store double 0xBFF6A09E667F3BCD, ptr %584, align 8, !tbaa !33
  tail call fastcc void @CalcKernelMetaData(ptr noundef nonnull %579) #25
  tail call void @ScaleKernelInfo(ptr noundef nonnull %579, double noundef 0x3FE6A09E667F3BCD, i32 noundef 0) #25
  br label %613

585:                                              ; preds = %538
  %586 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.17) #25
  %587 = icmp eq ptr %586, null
  br i1 %587, label %1584, label %588

588:                                              ; preds = %585
  store i32 9, ptr %586, align 8, !tbaa !19
  %589 = getelementptr inbounds %struct.KernelInfo, ptr %586, i64 0, i32 5
  %590 = load ptr, ptr %589, align 8, !tbaa !32
  %591 = getelementptr inbounds double, ptr %590, i64 2
  store double 0xBFF6A09E667F3BCD, ptr %591, align 8, !tbaa !33
  %592 = getelementptr inbounds double, ptr %590, i64 6
  store double 0x3FF6A09E667F3BCD, ptr %592, align 8, !tbaa !33
  tail call fastcc void @CalcKernelMetaData(ptr noundef nonnull %586) #25
  tail call void @ScaleKernelInfo(ptr noundef nonnull %586, double noundef 0x3FE6A09E667F3BCD, i32 noundef 0) #25
  br label %613

593:                                              ; preds = %538
  %594 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.18) #25
  %595 = icmp eq ptr %594, null
  br i1 %595, label %1584, label %596

596:                                              ; preds = %593
  store i32 9, ptr %594, align 8, !tbaa !19
  tail call void @ScaleKernelInfo(ptr noundef nonnull %594, double noundef 5.000000e-01, i32 noundef 0) #25
  br label %613

597:                                              ; preds = %538
  %598 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.19) #25
  %599 = icmp eq ptr %598, null
  br i1 %599, label %1584, label %600

600:                                              ; preds = %597
  store i32 9, ptr %598, align 8, !tbaa !19
  tail call void @ScaleKernelInfo(ptr noundef nonnull %598, double noundef 5.000000e-01, i32 noundef 0) #25
  br label %613

601:                                              ; preds = %538
  %602 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.20) #25
  %603 = icmp eq ptr %602, null
  br i1 %603, label %1584, label %604

604:                                              ; preds = %601
  store i32 9, ptr %602, align 8, !tbaa !19
  tail call void @ScaleKernelInfo(ptr noundef nonnull %602, double noundef 0x3FC5555555555555, i32 noundef 0) #25
  br label %613

605:                                              ; preds = %538
  %606 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.2) #25
  %607 = icmp eq ptr %606, null
  br i1 %607, label %1584, label %608

608:                                              ; preds = %605
  store i32 9, ptr %606, align 8, !tbaa !19
  tail call void @ScaleKernelInfo(ptr noundef nonnull %606, double noundef 0x3FC5555555555555, i32 noundef 0) #25
  br label %613

609:                                              ; preds = %538
  %610 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.21) #25
  %611 = icmp eq ptr %610, null
  br i1 %611, label %1584, label %612

612:                                              ; preds = %609
  store i32 9, ptr %610, align 8, !tbaa !19
  tail call void @ScaleKernelInfo(ptr noundef nonnull %610, double noundef 0x3FD5555555555555, i32 noundef 0) #25
  br label %613

613:                                              ; preds = %559, %612, %608, %604, %600, %596, %588, %581, %573, %565, %552, %544
  %614 = phi ptr [ %542, %544 ], [ %606, %608 ], [ %602, %604 ], [ %598, %600 ], [ %594, %596 ], [ %586, %588 ], [ %579, %581 ], [ %571, %573 ], [ %563, %565 ], [ %560, %559 ], [ %550, %552 ], [ %610, %612 ]
  %615 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %616 = load double, ptr %615, align 8, !tbaa !21
  %617 = tail call double @llvm.fabs.f64(double %616)
  %618 = fcmp ult double %617, 1.000000e-15
  br i1 %618, label %620, label %619

619:                                              ; preds = %613
  tail call fastcc void @RotateKernelInfo(ptr noundef nonnull %614, double noundef %616) #25
  br label %1584

620:                                              ; preds = %613
  %621 = load double, ptr %1, align 8, !tbaa !23
  %622 = fcmp ogt double %621, 3.000000e+01
  %623 = fcmp olt double %621, -3.000000e+01
  %624 = or i1 %622, %623
  br i1 %624, label %625, label %1584

625:                                              ; preds = %620
  tail call fastcc void @RotateKernelInfo(ptr noundef nonnull %614, double noundef %621) #25
  br label %1584

626:                                              ; preds = %18
  %627 = load double, ptr %1, align 8, !tbaa !23
  %628 = fcmp olt double %627, 1.000000e+00
  %629 = fptoui double %627 to i64
  %630 = shl i64 %629, 1
  %631 = or disjoint i64 %630, 1
  %632 = select i1 %628, i64 3, i64 %631
  %633 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 2
  store i64 %632, ptr %633, align 8
  %634 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 1
  store i64 %632, ptr %634, align 8
  %635 = add nsw i64 %632, -1
  %636 = ashr exact i64 %635, 1
  %637 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 4
  store i64 %636, ptr %637, align 8, !tbaa !28
  %638 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 3
  store i64 %636, ptr %638, align 8, !tbaa !27
  %639 = shl i64 %632, 3
  %640 = tail call ptr @AcquireAlignedMemory(i64 noundef %632, i64 noundef %639) #30
  %641 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 5
  store ptr %640, ptr %641, align 8, !tbaa !32
  %642 = icmp eq ptr %640, null
  br i1 %642, label %643, label %645

643:                                              ; preds = %626
  %644 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %19) #25
  br label %1584

645:                                              ; preds = %626
  %646 = load i64, ptr %637, align 8, !tbaa !28
  %647 = icmp slt i64 %646, 0
  br i1 %647, label %684, label %648

648:                                              ; preds = %645
  %649 = sub nsw i64 0, %646
  %650 = load i64, ptr %638, align 8, !tbaa !27
  %651 = sub nsw i64 0, %650
  %652 = icmp slt i64 %650, 0
  %653 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %654 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 9
  %655 = shl i64 %650, 1
  %656 = or disjoint i64 %655, 1
  br label %657

657:                                              ; preds = %648, %680
  %658 = phi i64 [ 0, %648 ], [ %681, %680 ]
  %659 = phi i64 [ %649, %648 ], [ %682, %680 ]
  br i1 %652, label %680, label %660

660:                                              ; preds = %657
  %661 = tail call i64 @llvm.abs.i64(i64 %659, i1 true)
  %662 = add i64 %656, %658
  br label %663

663:                                              ; preds = %660, %676
  %664 = phi i64 [ %658, %660 ], [ %678, %676 ]
  %665 = phi i64 [ %651, %660 ], [ %677, %676 ]
  %666 = tail call i64 @llvm.abs.i64(i64 %665, i1 true)
  %667 = add nuw nsw i64 %666, %661
  %668 = icmp sgt i64 %667, %650
  br i1 %668, label %674, label %669

669:                                              ; preds = %663
  %670 = load double, ptr %653, align 8, !tbaa !21
  %671 = getelementptr inbounds double, ptr %640, i64 %664
  store double %670, ptr %671, align 8, !tbaa !33
  %672 = load double, ptr %654, align 8, !tbaa !47
  %673 = fadd double %670, %672
  store double %673, ptr %654, align 8, !tbaa !47
  br label %676

674:                                              ; preds = %663
  %675 = getelementptr inbounds double, ptr %640, i64 %664
  store double %3, ptr %675, align 8, !tbaa !33
  br label %676

676:                                              ; preds = %669, %674
  %677 = add nsw i64 %665, 1
  %678 = add i64 %664, 1
  %679 = icmp eq i64 %678, %662
  br i1 %679, label %680, label %663, !llvm.loop !53

680:                                              ; preds = %676, %657
  %681 = phi i64 [ %658, %657 ], [ %662, %676 ]
  %682 = add i64 %659, 1
  %683 = icmp eq i64 %659, %646
  br i1 %683, label %684, label %657, !llvm.loop !54

684:                                              ; preds = %680, %645
  %685 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %686 = load double, ptr %685, align 8, !tbaa !21
  %687 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 7
  store double %686, ptr %687, align 8, !tbaa !35
  %688 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 6
  store double %686, ptr %688, align 8, !tbaa !34
  br label %1584

689:                                              ; preds = %18, %18
  %690 = icmp eq i32 %0, 15
  %691 = load double, ptr %1, align 8, !tbaa !23
  %692 = fcmp olt double %691, 1.000000e+00
  br i1 %690, label %693, label %705

693:                                              ; preds = %689
  %694 = tail call double @llvm.fmuladd.f64(double %691, double 2.000000e+00, double 1.000000e+00)
  %695 = fptoui double %694 to i64
  %696 = select i1 %692, i64 3, i64 %695
  %697 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 2
  store i64 %696, ptr %697, align 8
  %698 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 1
  store i64 %696, ptr %698, align 8
  %699 = add i64 %696, -1
  %700 = sdiv i64 %699, 2
  %701 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 4
  store i64 %700, ptr %701, align 8, !tbaa !28
  %702 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 3
  store i64 %700, ptr %702, align 8, !tbaa !27
  %703 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %704 = load double, ptr %703, align 8, !tbaa !21
  br label %737

705:                                              ; preds = %689
  br i1 %692, label %710, label %706

706:                                              ; preds = %705
  %707 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %708 = load double, ptr %707, align 8, !tbaa !21
  %709 = fcmp olt double %708, 1.000000e+00
  br i1 %709, label %710, label %712

710:                                              ; preds = %706, %705
  %711 = tail call ptr @DestroyKernelInfo(ptr noundef %19) #25
  br label %1584

712:                                              ; preds = %706
  %713 = fptoui double %691 to i64
  %714 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 1
  store i64 %713, ptr %714, align 8, !tbaa !24
  %715 = fptoui double %708 to i64
  %716 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 2
  store i64 %715, ptr %716, align 8, !tbaa !25
  %717 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 2
  %718 = load double, ptr %717, align 8, !tbaa !26
  %719 = fcmp olt double %718, 0.000000e+00
  %720 = uitofp i64 %713 to double
  %721 = fcmp ogt double %718, %720
  %722 = select i1 %719, i1 true, i1 %721
  br i1 %722, label %730, label %723

723:                                              ; preds = %712
  %724 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 3
  %725 = load double, ptr %724, align 8, !tbaa !38
  %726 = fcmp olt double %725, 0.000000e+00
  %727 = uitofp i64 %715 to double
  %728 = fcmp ogt double %725, %727
  %729 = select i1 %726, i1 true, i1 %728
  br i1 %729, label %730, label %732

730:                                              ; preds = %723, %712
  %731 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %19) #25
  br label %1584

732:                                              ; preds = %723
  %733 = fptosi double %718 to i64
  %734 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 3
  store i64 %733, ptr %734, align 8, !tbaa !27
  %735 = fptosi double %725 to i64
  %736 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 4
  store i64 %735, ptr %736, align 8, !tbaa !28
  br label %737

737:                                              ; preds = %732, %693
  %738 = phi i64 [ %696, %693 ], [ %715, %732 ]
  %739 = phi i64 [ %696, %693 ], [ %713, %732 ]
  %740 = phi double [ %704, %693 ], [ 1.000000e+00, %732 ]
  %741 = shl i64 %738, 3
  %742 = tail call ptr @AcquireAlignedMemory(i64 noundef %739, i64 noundef %741) #30
  %743 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 5
  store ptr %742, ptr %743, align 8, !tbaa !32
  %744 = icmp eq ptr %742, null
  br i1 %744, label %745, label %747

745:                                              ; preds = %737
  %746 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %19) #25
  br label %1584

747:                                              ; preds = %737
  %748 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 2
  %749 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 1
  %750 = load i64, ptr %749, align 8, !tbaa !24
  %751 = load i64, ptr %748, align 8, !tbaa !25
  %752 = mul i64 %751, %750
  %753 = icmp sgt i64 %752, 0
  br i1 %753, label %754, label %776

754:                                              ; preds = %747
  %755 = add nuw i64 %752, 1
  %756 = and i64 %755, -2
  %757 = add nsw i64 %752, -1
  %758 = insertelement <2 x i64> poison, i64 %757, i64 0
  %759 = shufflevector <2 x i64> %758, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %760

760:                                              ; preds = %772, %754
  %761 = phi i64 [ 0, %754 ], [ %773, %772 ]
  %762 = phi <2 x i64> [ <i64 0, i64 1>, %754 ], [ %774, %772 ]
  %763 = icmp ule <2 x i64> %762, %759
  %764 = extractelement <2 x i1> %763, i64 0
  br i1 %764, label %765, label %767

765:                                              ; preds = %760
  %766 = getelementptr inbounds double, ptr %742, i64 %761
  store double %740, ptr %766, align 8, !tbaa !33
  br label %767

767:                                              ; preds = %765, %760
  %768 = extractelement <2 x i1> %763, i64 1
  br i1 %768, label %769, label %772

769:                                              ; preds = %767
  %770 = or disjoint i64 %761, 1
  %771 = getelementptr inbounds double, ptr %742, i64 %770
  store double %740, ptr %771, align 8, !tbaa !33
  br label %772

772:                                              ; preds = %769, %767
  %773 = add i64 %761, 2
  %774 = add <2 x i64> %762, <i64 2, i64 2>
  %775 = icmp eq i64 %773, %756
  br i1 %775, label %776, label %760, !llvm.loop !55

776:                                              ; preds = %772, %747
  %777 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 7
  store double %740, ptr %777, align 8, !tbaa !35
  %778 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 6
  store double %740, ptr %778, align 8, !tbaa !34
  %779 = sitofp i64 %752 to double
  %780 = fmul double %740, %779
  %781 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 9
  store double %780, ptr %781, align 8, !tbaa !47
  br label %1584

782:                                              ; preds = %18
  %783 = load double, ptr %1, align 8, !tbaa !23
  %784 = fcmp olt double %783, 1.000000e+00
  %785 = fptoui double %783 to i64
  %786 = shl i64 %785, 1
  %787 = or disjoint i64 %786, 1
  %788 = select i1 %784, i64 5, i64 %787
  %789 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 2
  store i64 %788, ptr %789, align 8
  %790 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 1
  store i64 %788, ptr %790, align 8
  %791 = add nsw i64 %788, -1
  %792 = ashr exact i64 %791, 1
  %793 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 4
  store i64 %792, ptr %793, align 8, !tbaa !28
  %794 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 3
  store i64 %792, ptr %794, align 8, !tbaa !27
  %795 = shl i64 %788, 3
  %796 = tail call ptr @AcquireAlignedMemory(i64 noundef %788, i64 noundef %795) #30
  %797 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 5
  store ptr %796, ptr %797, align 8, !tbaa !32
  %798 = icmp eq ptr %796, null
  br i1 %798, label %799, label %801

799:                                              ; preds = %782
  %800 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %19) #25
  br label %1584

801:                                              ; preds = %782
  %802 = load i64, ptr %793, align 8, !tbaa !28
  %803 = icmp slt i64 %802, 0
  br i1 %803, label %842, label %804

804:                                              ; preds = %801
  %805 = sub nsw i64 0, %802
  %806 = load i64, ptr %794, align 8, !tbaa !27
  %807 = sub nsw i64 0, %806
  %808 = icmp slt i64 %806, 0
  %809 = sdiv i64 %806, 2
  %810 = add nsw i64 %809, %806
  %811 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %812 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 9
  %813 = shl i64 %806, 1
  %814 = or disjoint i64 %813, 1
  br label %815

815:                                              ; preds = %804, %838
  %816 = phi i64 [ 0, %804 ], [ %839, %838 ]
  %817 = phi i64 [ %805, %804 ], [ %840, %838 ]
  br i1 %808, label %838, label %818

818:                                              ; preds = %815
  %819 = tail call i64 @llvm.abs.i64(i64 %817, i1 true)
  %820 = add i64 %814, %816
  br label %821

821:                                              ; preds = %818, %834
  %822 = phi i64 [ %816, %818 ], [ %836, %834 ]
  %823 = phi i64 [ %807, %818 ], [ %835, %834 ]
  %824 = tail call i64 @llvm.abs.i64(i64 %823, i1 true)
  %825 = add nuw nsw i64 %824, %819
  %826 = icmp sgt i64 %825, %810
  br i1 %826, label %832, label %827

827:                                              ; preds = %821
  %828 = load double, ptr %811, align 8, !tbaa !21
  %829 = getelementptr inbounds double, ptr %796, i64 %822
  store double %828, ptr %829, align 8, !tbaa !33
  %830 = load double, ptr %812, align 8, !tbaa !47
  %831 = fadd double %828, %830
  store double %831, ptr %812, align 8, !tbaa !47
  br label %834

832:                                              ; preds = %821
  %833 = getelementptr inbounds double, ptr %796, i64 %822
  store double %3, ptr %833, align 8, !tbaa !33
  br label %834

834:                                              ; preds = %827, %832
  %835 = add nsw i64 %823, 1
  %836 = add i64 %822, 1
  %837 = icmp eq i64 %836, %820
  br i1 %837, label %838, label %821, !llvm.loop !58

838:                                              ; preds = %834, %815
  %839 = phi i64 [ %816, %815 ], [ %820, %834 ]
  %840 = add i64 %817, 1
  %841 = icmp eq i64 %817, %802
  br i1 %841, label %842, label %815, !llvm.loop !59

842:                                              ; preds = %838, %801
  %843 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %844 = load double, ptr %843, align 8, !tbaa !21
  %845 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 7
  store double %844, ptr %845, align 8, !tbaa !35
  %846 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 6
  store double %844, ptr %846, align 8, !tbaa !34
  br label %1584

847:                                              ; preds = %18
  %848 = load double, ptr %1, align 8, !tbaa !23
  %849 = fcmp olt double %848, 4.000000e-01
  br i1 %849, label %857, label %850

850:                                              ; preds = %847
  %851 = fmul double %848, %848
  %852 = fptosi double %851 to i64
  %853 = tail call double @llvm.fabs.f64(double %848)
  %854 = fptoui double %853 to i64
  %855 = shl i64 %854, 1
  %856 = or disjoint i64 %855, 1
  br label %857

857:                                              ; preds = %847, %850
  %858 = phi i64 [ %856, %850 ], [ 9, %847 ]
  %859 = phi i64 [ %852, %850 ], [ 18, %847 ]
  %860 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 2
  store i64 %858, ptr %860, align 8
  %861 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 1
  store i64 %858, ptr %861, align 8
  %862 = add nsw i64 %858, -1
  %863 = ashr exact i64 %862, 1
  %864 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 4
  store i64 %863, ptr %864, align 8, !tbaa !28
  %865 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 3
  store i64 %863, ptr %865, align 8, !tbaa !27
  %866 = shl i64 %858, 3
  %867 = tail call ptr @AcquireAlignedMemory(i64 noundef %858, i64 noundef %866) #30
  %868 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 5
  store ptr %867, ptr %868, align 8, !tbaa !32
  %869 = icmp eq ptr %867, null
  br i1 %869, label %870, label %872

870:                                              ; preds = %857
  %871 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %19) #25
  br label %1584

872:                                              ; preds = %857
  %873 = load i64, ptr %864, align 8, !tbaa !28
  %874 = icmp slt i64 %873, 0
  br i1 %874, label %911, label %875

875:                                              ; preds = %872
  %876 = sub nsw i64 0, %873
  %877 = load i64, ptr %865, align 8, !tbaa !27
  %878 = sub nsw i64 0, %877
  %879 = icmp slt i64 %877, 0
  %880 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %881 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 9
  %882 = shl i64 %877, 1
  %883 = or disjoint i64 %882, 1
  br label %884

884:                                              ; preds = %875, %907
  %885 = phi i64 [ 0, %875 ], [ %908, %907 ]
  %886 = phi i64 [ %876, %875 ], [ %909, %907 ]
  br i1 %879, label %907, label %887

887:                                              ; preds = %884
  %888 = mul nsw i64 %886, %886
  %889 = add i64 %883, %885
  br label %890

890:                                              ; preds = %887, %903
  %891 = phi i64 [ %885, %887 ], [ %905, %903 ]
  %892 = phi i64 [ %878, %887 ], [ %904, %903 ]
  %893 = mul nsw i64 %892, %892
  %894 = add nuw nsw i64 %893, %888
  %895 = icmp sgt i64 %894, %859
  br i1 %895, label %901, label %896

896:                                              ; preds = %890
  %897 = load double, ptr %880, align 8, !tbaa !21
  %898 = getelementptr inbounds double, ptr %867, i64 %891
  store double %897, ptr %898, align 8, !tbaa !33
  %899 = load double, ptr %881, align 8, !tbaa !47
  %900 = fadd double %897, %899
  store double %900, ptr %881, align 8, !tbaa !47
  br label %903

901:                                              ; preds = %890
  %902 = getelementptr inbounds double, ptr %867, i64 %891
  store double %3, ptr %902, align 8, !tbaa !33
  br label %903

903:                                              ; preds = %896, %901
  %904 = add nsw i64 %892, 1
  %905 = add i64 %891, 1
  %906 = icmp eq i64 %905, %889
  br i1 %906, label %907, label %890, !llvm.loop !60

907:                                              ; preds = %903, %884
  %908 = phi i64 [ %885, %884 ], [ %889, %903 ]
  %909 = add i64 %886, 1
  %910 = icmp eq i64 %886, %873
  br i1 %910, label %911, label %884, !llvm.loop !61

911:                                              ; preds = %907, %872
  %912 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %913 = load double, ptr %912, align 8, !tbaa !21
  %914 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 7
  store double %913, ptr %914, align 8, !tbaa !35
  %915 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 6
  store double %913, ptr %915, align 8, !tbaa !34
  br label %1584

916:                                              ; preds = %18
  %917 = load double, ptr %1, align 8, !tbaa !23
  %918 = fcmp olt double %917, 1.000000e+00
  %919 = fptoui double %917 to i64
  %920 = shl i64 %919, 1
  %921 = or disjoint i64 %920, 1
  %922 = select i1 %918, i64 5, i64 %921
  %923 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 2
  store i64 %922, ptr %923, align 8
  %924 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 1
  store i64 %922, ptr %924, align 8
  %925 = add nsw i64 %922, -1
  %926 = ashr exact i64 %925, 1
  %927 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 4
  store i64 %926, ptr %927, align 8, !tbaa !28
  %928 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 3
  store i64 %926, ptr %928, align 8, !tbaa !27
  %929 = shl i64 %922, 3
  %930 = tail call ptr @AcquireAlignedMemory(i64 noundef %922, i64 noundef %929) #30
  %931 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 5
  store ptr %930, ptr %931, align 8, !tbaa !32
  %932 = icmp eq ptr %930, null
  br i1 %932, label %933, label %935

933:                                              ; preds = %916
  %934 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %19) #25
  br label %1584

935:                                              ; preds = %916
  %936 = load i64, ptr %927, align 8, !tbaa !28
  %937 = icmp slt i64 %936, 0
  br i1 %937, label %969, label %938

938:                                              ; preds = %935
  %939 = sub nsw i64 0, %936
  %940 = load i64, ptr %928, align 8, !tbaa !27
  %941 = sub nsw i64 0, %940
  %942 = icmp slt i64 %940, 0
  %943 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %944 = shl i64 %940, 1
  %945 = or disjoint i64 %944, 1
  br label %946

946:                                              ; preds = %938, %965
  %947 = phi i64 [ 0, %938 ], [ %966, %965 ]
  %948 = phi i64 [ %939, %938 ], [ %967, %965 ]
  br i1 %942, label %965, label %949

949:                                              ; preds = %946
  %950 = icmp eq i64 %948, 0
  %951 = add i64 %945, %947
  br label %952

952:                                              ; preds = %949, %959
  %953 = phi i64 [ %947, %949 ], [ %963, %959 ]
  %954 = phi i64 [ %941, %949 ], [ %962, %959 ]
  %955 = icmp eq i64 %954, 0
  %956 = or i1 %950, %955
  br i1 %956, label %957, label %959

957:                                              ; preds = %952
  %958 = load double, ptr %943, align 8, !tbaa !21
  br label %959

959:                                              ; preds = %952, %957
  %960 = phi double [ %958, %957 ], [ %3, %952 ]
  %961 = getelementptr inbounds double, ptr %930, i64 %953
  store double %960, ptr %961, align 8, !tbaa !33
  %962 = add nsw i64 %954, 1
  %963 = add i64 %953, 1
  %964 = icmp eq i64 %963, %951
  br i1 %964, label %965, label %952, !llvm.loop !62

965:                                              ; preds = %959, %946
  %966 = phi i64 [ %947, %946 ], [ %951, %959 ]
  %967 = add i64 %948, 1
  %968 = icmp eq i64 %948, %936
  br i1 %968, label %969, label %946, !llvm.loop !63

969:                                              ; preds = %965, %935
  %970 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %971 = load double, ptr %970, align 8, !tbaa !21
  %972 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 7
  store double %971, ptr %972, align 8, !tbaa !35
  %973 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 6
  store double %971, ptr %973, align 8, !tbaa !34
  %974 = load i64, ptr %924, align 8, !tbaa !24
  %975 = uitofp i64 %974 to double
  %976 = tail call double @llvm.fmuladd.f64(double %975, double 2.000000e+00, double -1.000000e+00)
  %977 = fmul double %971, %976
  %978 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 9
  store double %977, ptr %978, align 8, !tbaa !47
  br label %1584

979:                                              ; preds = %18
  %980 = load double, ptr %1, align 8, !tbaa !23
  %981 = fcmp olt double %980, 1.000000e+00
  %982 = fptoui double %980 to i64
  %983 = shl i64 %982, 1
  %984 = or disjoint i64 %983, 1
  %985 = select i1 %981, i64 5, i64 %984
  %986 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 2
  store i64 %985, ptr %986, align 8
  %987 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 1
  store i64 %985, ptr %987, align 8
  %988 = add nsw i64 %985, -1
  %989 = ashr exact i64 %988, 1
  %990 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 4
  store i64 %989, ptr %990, align 8, !tbaa !28
  %991 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 3
  store i64 %989, ptr %991, align 8, !tbaa !27
  %992 = shl i64 %985, 3
  %993 = tail call ptr @AcquireAlignedMemory(i64 noundef %985, i64 noundef %992) #30
  %994 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 5
  store ptr %993, ptr %994, align 8, !tbaa !32
  %995 = icmp eq ptr %993, null
  br i1 %995, label %996, label %998

996:                                              ; preds = %979
  %997 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %19) #25
  br label %1584

998:                                              ; preds = %979
  %999 = load i64, ptr %990, align 8, !tbaa !28
  %1000 = icmp slt i64 %999, 0
  br i1 %1000, label %1033, label %1001

1001:                                             ; preds = %998
  %1002 = sub nsw i64 0, %999
  %1003 = load i64, ptr %991, align 8, !tbaa !27
  %1004 = sub nsw i64 0, %1003
  %1005 = icmp slt i64 %1003, 0
  %1006 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %1007 = shl i64 %1003, 1
  %1008 = or disjoint i64 %1007, 1
  br label %1009

1009:                                             ; preds = %1001, %1029
  %1010 = phi i64 [ 0, %1001 ], [ %1030, %1029 ]
  %1011 = phi i64 [ %1002, %1001 ], [ %1031, %1029 ]
  br i1 %1005, label %1029, label %1012

1012:                                             ; preds = %1009
  %1013 = sub nsw i64 0, %1011
  %1014 = add i64 %1008, %1010
  br label %1015

1015:                                             ; preds = %1012, %1023
  %1016 = phi i64 [ %1010, %1012 ], [ %1027, %1023 ]
  %1017 = phi i64 [ %1004, %1012 ], [ %1026, %1023 ]
  %1018 = icmp eq i64 %1017, %1011
  %1019 = icmp eq i64 %1017, %1013
  %1020 = select i1 %1018, i1 true, i1 %1019
  br i1 %1020, label %1021, label %1023

1021:                                             ; preds = %1015
  %1022 = load double, ptr %1006, align 8, !tbaa !21
  br label %1023

1023:                                             ; preds = %1015, %1021
  %1024 = phi double [ %1022, %1021 ], [ %3, %1015 ]
  %1025 = getelementptr inbounds double, ptr %993, i64 %1016
  store double %1024, ptr %1025, align 8, !tbaa !33
  %1026 = add nsw i64 %1017, 1
  %1027 = add i64 %1016, 1
  %1028 = icmp eq i64 %1027, %1014
  br i1 %1028, label %1029, label %1015, !llvm.loop !64

1029:                                             ; preds = %1023, %1009
  %1030 = phi i64 [ %1010, %1009 ], [ %1014, %1023 ]
  %1031 = add i64 %1011, 1
  %1032 = icmp eq i64 %1011, %999
  br i1 %1032, label %1033, label %1009, !llvm.loop !65

1033:                                             ; preds = %1029, %998
  %1034 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %1035 = load double, ptr %1034, align 8, !tbaa !21
  %1036 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 7
  store double %1035, ptr %1036, align 8, !tbaa !35
  %1037 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 6
  store double %1035, ptr %1037, align 8, !tbaa !34
  %1038 = load i64, ptr %987, align 8, !tbaa !24
  %1039 = uitofp i64 %1038 to double
  %1040 = tail call double @llvm.fmuladd.f64(double %1039, double 2.000000e+00, double -1.000000e+00)
  %1041 = fmul double %1035, %1040
  %1042 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 9
  store double %1041, ptr %1042, align 8, !tbaa !47
  br label %1584

1043:                                             ; preds = %18, %18
  %1044 = load double, ptr %1, align 8, !tbaa !23
  %1045 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %1046 = load double, ptr %1045, align 8, !tbaa !21
  %1047 = fcmp olt double %1044, %1046
  %1048 = fmul double %1044, %1044
  %1049 = fmul double %1046, %1046
  %1050 = fmul double %1046, %1046
  %1051 = fmul double %1044, %1044
  %1052 = select i1 %1047, double %1046, double %1044
  %1053 = select i1 %1047, double %1048, double %1050
  %1054 = select i1 %1047, double %1049, double %1051
  %1055 = fptoui double %1052 to i64
  %1056 = shl i64 %1055, 1
  %1057 = or disjoint i64 %1056, 1
  %1058 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 1
  %1059 = fptosi double %1054 to i64
  %1060 = fptosi double %1053 to i64
  %1061 = icmp slt i64 %1059, 1
  %1062 = select i1 %1061, i64 7, i64 %1057
  %1063 = select i1 %1061, i64 7, i64 %1060
  %1064 = select i1 %1061, i64 11, i64 %1059
  store i64 %1062, ptr %1058, align 8
  %1065 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 2
  store i64 %1062, ptr %1065, align 8, !tbaa !25
  %1066 = add nsw i64 %1062, -1
  %1067 = ashr exact i64 %1066, 1
  %1068 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 4
  store i64 %1067, ptr %1068, align 8, !tbaa !28
  %1069 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 3
  store i64 %1067, ptr %1069, align 8, !tbaa !27
  %1070 = shl i64 %1062, 3
  %1071 = tail call ptr @AcquireAlignedMemory(i64 noundef %1062, i64 noundef %1070) #30
  %1072 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 5
  store ptr %1071, ptr %1072, align 8, !tbaa !32
  %1073 = icmp eq ptr %1071, null
  br i1 %1073, label %1074, label %1076

1074:                                             ; preds = %1043
  %1075 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %19) #25
  br label %1584

1076:                                             ; preds = %1043
  %1077 = icmp eq i32 %0, 22
  br i1 %1077, label %1083, label %1078

1078:                                             ; preds = %1076
  %1079 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 2
  %1080 = load double, ptr %1079, align 8, !tbaa !26
  %1081 = fptosi double %1080 to i64
  %1082 = sitofp i64 %1081 to double
  br label %1083

1083:                                             ; preds = %1076, %1078
  %1084 = phi double [ %1082, %1078 ], [ 0.000000e+00, %1076 ]
  %1085 = load i64, ptr %1068, align 8, !tbaa !28
  %1086 = icmp slt i64 %1085, 0
  br i1 %1086, label %1122, label %1087

1087:                                             ; preds = %1083
  %1088 = sub nsw i64 0, %1085
  %1089 = load i64, ptr %1069, align 8, !tbaa !27
  %1090 = sub nsw i64 0, %1089
  %1091 = icmp slt i64 %1089, 0
  %1092 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 9
  %1093 = shl i64 %1089, 1
  %1094 = or disjoint i64 %1093, 1
  br label %1095

1095:                                             ; preds = %1087, %1118
  %1096 = phi i64 [ 0, %1087 ], [ %1119, %1118 ]
  %1097 = phi i64 [ %1088, %1087 ], [ %1120, %1118 ]
  br i1 %1091, label %1118, label %1098

1098:                                             ; preds = %1095
  %1099 = mul nsw i64 %1097, %1097
  %1100 = add i64 %1094, %1096
  br label %1101

1101:                                             ; preds = %1098, %1114
  %1102 = phi i64 [ %1096, %1098 ], [ %1116, %1114 ]
  %1103 = phi i64 [ %1090, %1098 ], [ %1115, %1114 ]
  %1104 = mul nsw i64 %1103, %1103
  %1105 = add nuw nsw i64 %1104, %1099
  %1106 = icmp sge i64 %1063, %1105
  %1107 = icmp ugt i64 %1105, %1064
  %1108 = or i1 %1106, %1107
  %1109 = getelementptr inbounds double, ptr %1071, i64 %1102
  br i1 %1108, label %1113, label %1110

1110:                                             ; preds = %1101
  store double %1084, ptr %1109, align 8, !tbaa !33
  %1111 = load double, ptr %1092, align 8, !tbaa !47
  %1112 = fadd double %1084, %1111
  store double %1112, ptr %1092, align 8, !tbaa !47
  br label %1114

1113:                                             ; preds = %1101
  store double %3, ptr %1109, align 8, !tbaa !33
  br label %1114

1114:                                             ; preds = %1113, %1110
  %1115 = add nsw i64 %1103, 1
  %1116 = add i64 %1102, 1
  %1117 = icmp eq i64 %1116, %1100
  br i1 %1117, label %1118, label %1101, !llvm.loop !66

1118:                                             ; preds = %1114, %1095
  %1119 = phi i64 [ %1096, %1095 ], [ %1100, %1114 ]
  %1120 = add i64 %1097, 1
  %1121 = icmp eq i64 %1097, %1085
  br i1 %1121, label %1122, label %1095, !llvm.loop !67

1122:                                             ; preds = %1118, %1083
  %1123 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 7
  store double %1084, ptr %1123, align 8, !tbaa !35
  %1124 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 6
  store double %1084, ptr %1124, align 8, !tbaa !34
  br i1 %1077, label %1125, label %1584

1125:                                             ; preds = %1122
  %1126 = load i64, ptr %1069, align 8, !tbaa !27
  %1127 = load i64, ptr %1058, align 8, !tbaa !24
  %1128 = mul i64 %1127, %1085
  %1129 = getelementptr double, ptr %1071, i64 %1126
  %1130 = getelementptr double, ptr %1129, i64 %1128
  store double 1.000000e+00, ptr %1130, align 8, !tbaa !33
  %1131 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 9
  store double 1.000000e+00, ptr %1131, align 8, !tbaa !47
  store double 1.000000e+00, ptr %1123, align 8, !tbaa !35
  br label %1584

1132:                                             ; preds = %18
  %1133 = tail call ptr @AcquireKernelInfo(ptr noundef nonnull @.str.22) #25
  %1134 = icmp eq ptr %1133, null
  br i1 %1134, label %1584, label %1135

1135:                                             ; preds = %1132
  store i32 23, ptr %1133, align 8, !tbaa !19
  tail call fastcc void @ExpandMirrorKernelInfo(ptr noundef nonnull %1133) #25
  br label %1584

1136:                                             ; preds = %18
  %1137 = tail call ptr @AcquireKernelInfo(ptr noundef nonnull @.str.23) #25
  %1138 = icmp eq ptr %1137, null
  br i1 %1138, label %1584, label %1139

1139:                                             ; preds = %1136
  store i32 24, ptr %1137, align 8, !tbaa !19
  tail call fastcc void @ExpandRotateKernelInfo(ptr noundef nonnull %1137, double noundef 9.000000e+01) #25
  br label %1584

1140:                                             ; preds = %18
  %1141 = load double, ptr %1, align 8, !tbaa !23
  %1142 = fptosi double %1141 to i32
  switch i32 %1142, label %1143 [
    i32 2, label %1154
    i32 1, label %1155
  ]

1143:                                             ; preds = %1140
  %1144 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.24) #25
  %1145 = icmp eq ptr %1144, null
  br i1 %1145, label %1584, label %1146

1146:                                             ; preds = %1143
  store i32 25, ptr %1144, align 8, !tbaa !19
  %1147 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.25) #25
  %1148 = icmp eq ptr %1147, null
  br i1 %1148, label %1149, label %1151

1149:                                             ; preds = %1146
  %1150 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %1144) #25
  br label %1584

1151:                                             ; preds = %1146
  store i32 25, ptr %1147, align 8, !tbaa !19
  %1152 = tail call fastcc ptr @LastKernelInfo(ptr noundef nonnull %1144) #25
  %1153 = getelementptr inbounds %struct.KernelInfo, ptr %1152, i64 0, i32 11
  store ptr %1147, ptr %1153, align 8, !tbaa !12
  tail call fastcc void @ExpandMirrorKernelInfo(ptr noundef nonnull %1144) #25
  br label %1584

1154:                                             ; preds = %1140
  br label %1155

1155:                                             ; preds = %1140, %1154
  %1156 = phi ptr [ @.str.25, %1154 ], [ @.str.24, %1140 ]
  %1157 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull %1156) #25
  %1158 = icmp eq ptr %1157, null
  br i1 %1158, label %1584, label %1159

1159:                                             ; preds = %1155
  store i32 25, ptr %1157, align 8, !tbaa !19
  %1160 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %1161 = load double, ptr %1160, align 8, !tbaa !21
  tail call fastcc void @RotateKernelInfo(ptr noundef nonnull %1157, double noundef %1161) #25
  br label %1584

1162:                                             ; preds = %18
  %1163 = load double, ptr %1, align 8, !tbaa !23
  %1164 = fptosi double %1163 to i32
  %1165 = add i32 %1164, -1
  %1166 = icmp ult i32 %1165, 4
  br i1 %1166, label %1169, label %1167

1167:                                             ; preds = %1162
  %1168 = tail call ptr @AcquireKernelInfo(ptr noundef nonnull @.str.26) #25
  br label %1584

1169:                                             ; preds = %1162
  %1170 = zext nneg i32 %1165 to i64
  %1171 = shl i64 %1170, 2
  %1172 = call ptr @llvm.load.relative.i64(ptr @reltable.AcquireKernelBuiltIn, i64 %1171)
  %1173 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull %1172) #25
  %1174 = icmp eq ptr %1173, null
  br i1 %1174, label %1584, label %1175

1175:                                             ; preds = %1169
  store i32 26, ptr %1173, align 8, !tbaa !19
  %1176 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %1177 = load double, ptr %1176, align 8, !tbaa !21
  tail call fastcc void @RotateKernelInfo(ptr noundef nonnull %1173, double noundef %1177) #25
  br label %1584

1178:                                             ; preds = %18
  %1179 = load double, ptr %1, align 8, !tbaa !23
  %1180 = fptosi double %1179 to i32
  %1181 = add i32 %1180, -1
  %1182 = icmp ult i32 %1181, 5
  br i1 %1182, label %1185, label %1183

1183:                                             ; preds = %1178
  %1184 = tail call ptr @AcquireKernelInfo(ptr noundef nonnull @.str.31) #25
  br label %1584

1185:                                             ; preds = %1178
  %1186 = zext nneg i32 %1181 to i64
  %1187 = shl i64 %1186, 2
  %1188 = call ptr @llvm.load.relative.i64(ptr @reltable.AcquireKernelBuiltIn.118, i64 %1187)
  %1189 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull %1188) #25
  %1190 = icmp eq ptr %1189, null
  br i1 %1190, label %1584, label %1191

1191:                                             ; preds = %1185
  store i32 27, ptr %1189, align 8, !tbaa !19
  %1192 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %1193 = load double, ptr %1192, align 8, !tbaa !21
  tail call fastcc void @RotateKernelInfo(ptr noundef nonnull %1189, double noundef %1193) #25
  br label %1584

1194:                                             ; preds = %18
  %1195 = load double, ptr %1, align 8, !tbaa !23
  %1196 = fptosi double %1195 to i32
  %1197 = icmp eq i32 %1196, 2
  br i1 %1197, label %1202, label %1198

1198:                                             ; preds = %1194
  %1199 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.37) #25
  %1200 = icmp eq ptr %1199, null
  br i1 %1200, label %1584, label %1201

1201:                                             ; preds = %1198
  store i32 28, ptr %1199, align 8, !tbaa !19
  tail call fastcc void @ExpandRotateKernelInfo(ptr noundef nonnull %1199, double noundef 9.000000e+01) #25
  br label %1584

1202:                                             ; preds = %1194
  %1203 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.38) #25
  %1204 = icmp eq ptr %1203, null
  br i1 %1204, label %1584, label %1205

1205:                                             ; preds = %1202
  store i32 28, ptr %1203, align 8, !tbaa !19
  tail call fastcc void @ExpandRotateKernelInfo(ptr noundef nonnull %1203, double noundef 9.000000e+01) #25
  %1206 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.39) #25
  %1207 = icmp eq ptr %1206, null
  br i1 %1207, label %1208, label %1210

1208:                                             ; preds = %1205
  %1209 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %1203) #25
  br label %1584

1210:                                             ; preds = %1205
  store i32 28, ptr %1206, align 8, !tbaa !19
  %1211 = tail call fastcc ptr @LastKernelInfo(ptr noundef nonnull %1203) #25
  %1212 = getelementptr inbounds %struct.KernelInfo, ptr %1211, i64 0, i32 11
  store ptr %1206, ptr %1212, align 8, !tbaa !12
  %1213 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.40) #25
  %1214 = icmp eq ptr %1213, null
  br i1 %1214, label %1215, label %1217

1215:                                             ; preds = %1210
  %1216 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %1203) #25
  br label %1584

1217:                                             ; preds = %1210
  store i32 28, ptr %1213, align 8, !tbaa !19
  %1218 = tail call fastcc ptr @LastKernelInfo(ptr noundef nonnull %1203) #25
  %1219 = getelementptr inbounds %struct.KernelInfo, ptr %1218, i64 0, i32 11
  store ptr %1213, ptr %1219, align 8, !tbaa !12
  %1220 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.41) #25
  %1221 = icmp eq ptr %1220, null
  br i1 %1221, label %1222, label %1224

1222:                                             ; preds = %1217
  %1223 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %1203) #25
  br label %1584

1224:                                             ; preds = %1217
  store i32 28, ptr %1220, align 8, !tbaa !19
  %1225 = tail call fastcc ptr @LastKernelInfo(ptr noundef nonnull %1203) #25
  %1226 = getelementptr inbounds %struct.KernelInfo, ptr %1225, i64 0, i32 11
  store ptr %1220, ptr %1226, align 8, !tbaa !12
  %1227 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.42) #25
  %1228 = icmp eq ptr %1227, null
  br i1 %1228, label %1229, label %1231

1229:                                             ; preds = %1224
  %1230 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %1203) #25
  br label %1584

1231:                                             ; preds = %1224
  store i32 28, ptr %1227, align 8, !tbaa !19
  %1232 = tail call fastcc ptr @LastKernelInfo(ptr noundef nonnull %1203) #25
  %1233 = getelementptr inbounds %struct.KernelInfo, ptr %1232, i64 0, i32 11
  store ptr %1227, ptr %1233, align 8, !tbaa !12
  %1234 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.43) #25
  %1235 = icmp eq ptr %1234, null
  br i1 %1235, label %1236, label %1238

1236:                                             ; preds = %1231
  %1237 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %1203) #25
  br label %1584

1238:                                             ; preds = %1231
  store i32 28, ptr %1234, align 8, !tbaa !19
  %1239 = tail call fastcc ptr @LastKernelInfo(ptr noundef nonnull %1203) #25
  %1240 = getelementptr inbounds %struct.KernelInfo, ptr %1239, i64 0, i32 11
  store ptr %1234, ptr %1240, align 8, !tbaa !12
  %1241 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.44) #25
  %1242 = icmp eq ptr %1241, null
  br i1 %1242, label %1243, label %1245

1243:                                             ; preds = %1238
  %1244 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %1203) #25
  br label %1584

1245:                                             ; preds = %1238
  store i32 28, ptr %1241, align 8, !tbaa !19
  %1246 = tail call fastcc ptr @LastKernelInfo(ptr noundef nonnull %1203) #25
  %1247 = getelementptr inbounds %struct.KernelInfo, ptr %1246, i64 0, i32 11
  store ptr %1241, ptr %1247, align 8, !tbaa !12
  %1248 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.45) #25
  %1249 = icmp eq ptr %1248, null
  br i1 %1249, label %1250, label %1252

1250:                                             ; preds = %1245
  %1251 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %1203) #25
  br label %1584

1252:                                             ; preds = %1245
  store i32 28, ptr %1248, align 8, !tbaa !19
  %1253 = tail call fastcc ptr @LastKernelInfo(ptr noundef nonnull %1203) #25
  %1254 = getelementptr inbounds %struct.KernelInfo, ptr %1253, i64 0, i32 11
  store ptr %1248, ptr %1254, align 8, !tbaa !12
  %1255 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.46) #25
  %1256 = icmp eq ptr %1255, null
  br i1 %1256, label %1257, label %1259

1257:                                             ; preds = %1252
  %1258 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %1203) #25
  br label %1584

1259:                                             ; preds = %1252
  store i32 28, ptr %1255, align 8, !tbaa !19
  %1260 = tail call fastcc ptr @LastKernelInfo(ptr noundef nonnull %1203) #25
  %1261 = getelementptr inbounds %struct.KernelInfo, ptr %1260, i64 0, i32 11
  store ptr %1255, ptr %1261, align 8, !tbaa !12
  br label %1584

1262:                                             ; preds = %18
  %1263 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.47) #25
  %1264 = icmp eq ptr %1263, null
  br i1 %1264, label %1584, label %1265

1265:                                             ; preds = %1262
  store i32 29, ptr %1263, align 8, !tbaa !19
  tail call fastcc void @ExpandRotateKernelInfo(ptr noundef nonnull %1263, double noundef 9.000000e+01) #25
  %1266 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.48) #25
  %1267 = icmp eq ptr %1266, null
  br i1 %1267, label %1268, label %1270

1268:                                             ; preds = %1265
  %1269 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %1263) #25
  br label %1584

1270:                                             ; preds = %1265
  store i32 29, ptr %1266, align 8, !tbaa !19
  tail call fastcc void @ExpandRotateKernelInfo(ptr noundef nonnull %1266, double noundef 9.000000e+01) #25
  %1271 = tail call fastcc ptr @LastKernelInfo(ptr noundef nonnull %1263) #25
  %1272 = getelementptr inbounds %struct.KernelInfo, ptr %1271, i64 0, i32 11
  store ptr %1266, ptr %1272, align 8, !tbaa !12
  br label %1584

1273:                                             ; preds = %18
  %1274 = load double, ptr %1, align 8, !tbaa !23
  %1275 = fptosi double %1274 to i32
  switch i32 %1275, label %1276 [
    i32 3, label %1290
    i32 2, label %1280
  ]

1276:                                             ; preds = %1273
  %1277 = tail call ptr @AcquireKernelInfo(ptr noundef nonnull @.str.22) #25
  %1278 = icmp eq ptr %1277, null
  br i1 %1278, label %1584, label %1279

1279:                                             ; preds = %1276
  store i32 31, ptr %1277, align 8, !tbaa !19
  tail call fastcc void @ExpandRotateKernelInfo(ptr noundef nonnull %1277, double noundef 4.500000e+01) #25
  br label %1584

1280:                                             ; preds = %1273
  %1281 = tail call ptr @AcquireKernelInfo(ptr noundef nonnull @.str.49) #25
  %1282 = icmp eq ptr %1281, null
  br i1 %1282, label %1584, label %1283

1283:                                             ; preds = %1280
  %1284 = getelementptr inbounds %struct.KernelInfo, ptr %1281, i64 0, i32 11
  %1285 = load ptr, ptr %1284, align 8, !tbaa !12
  %1286 = icmp eq ptr %1285, null
  br i1 %1286, label %1287, label %1289

1287:                                             ; preds = %1283
  %1288 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %1281) #25
  br label %1584

1289:                                             ; preds = %1283
  store i32 31, ptr %1281, align 8, !tbaa !19
  store i32 31, ptr %1285, align 8, !tbaa !19
  tail call fastcc void @ExpandRotateKernelInfo(ptr noundef nonnull %1281, double noundef 9.000000e+01) #25
  br label %1584

1290:                                             ; preds = %1273
  %1291 = tail call ptr @AcquireKernelInfo(ptr noundef nonnull @.str.50) #25
  %1292 = icmp eq ptr %1291, null
  br i1 %1292, label %1584, label %1293

1293:                                             ; preds = %1290
  store i32 31, ptr %1291, align 8, !tbaa !19
  %1294 = getelementptr inbounds %struct.KernelInfo, ptr %1291, i64 0, i32 11
  %1295 = load ptr, ptr %1294, align 8, !tbaa !12
  store i32 31, ptr %1295, align 8, !tbaa !19
  %1296 = getelementptr inbounds %struct.KernelInfo, ptr %1295, i64 0, i32 11
  %1297 = load ptr, ptr %1296, align 8, !tbaa !12
  store i32 31, ptr %1297, align 8, !tbaa !19
  tail call fastcc void @ExpandMirrorKernelInfo(ptr noundef nonnull %1291) #25
  br label %1584

1298:                                             ; preds = %18
  %1299 = load double, ptr %1, align 8, !tbaa !23
  %1300 = fptosi double %1299 to i32
  switch i32 %1300, label %1321 [
    i32 41, label %1322
    i32 42, label %1301
    i32 43, label %1302
    i32 44, label %1303
    i32 45, label %1304
    i32 46, label %1305
    i32 47, label %1306
    i32 48, label %1307
    i32 49, label %1308
    i32 81, label %1309
    i32 82, label %1310
    i32 83, label %1311
    i32 84, label %1312
    i32 85, label %1313
    i32 86, label %1314
    i32 87, label %1315
    i32 88, label %1316
    i32 89, label %1317
    i32 423, label %1318
    i32 823, label %1319
    i32 481, label %1320
  ]

1301:                                             ; preds = %1298
  br label %1322

1302:                                             ; preds = %1298
  br label %1322

1303:                                             ; preds = %1298
  br label %1322

1304:                                             ; preds = %1298
  br label %1322

1305:                                             ; preds = %1298
  br label %1322

1306:                                             ; preds = %1298
  br label %1322

1307:                                             ; preds = %1298
  br label %1322

1308:                                             ; preds = %1298
  br label %1322

1309:                                             ; preds = %1298
  br label %1322

1310:                                             ; preds = %1298
  br label %1322

1311:                                             ; preds = %1298
  br label %1322

1312:                                             ; preds = %1298
  br label %1322

1313:                                             ; preds = %1298
  br label %1322

1314:                                             ; preds = %1298
  br label %1322

1315:                                             ; preds = %1298
  br label %1322

1316:                                             ; preds = %1298
  br label %1322

1317:                                             ; preds = %1298
  br label %1322

1318:                                             ; preds = %1298
  br label %1322

1319:                                             ; preds = %1298
  br label %1322

1320:                                             ; preds = %1298
  br label %1322

1321:                                             ; preds = %1298
  br label %1322

1322:                                             ; preds = %1298, %1321, %1320, %1319, %1318, %1317, %1316, %1315, %1314, %1313, %1312, %1311, %1310, %1309, %1308, %1307, %1306, %1305, %1304, %1303, %1302, %1301
  %1323 = phi ptr [ @.str.72, %1321 ], [ @.str.71, %1320 ], [ @.str.70, %1319 ], [ @.str.69, %1318 ], [ @.str.68, %1317 ], [ @.str.67, %1316 ], [ @.str.66, %1315 ], [ @.str.65, %1314 ], [ @.str.64, %1313 ], [ @.str.63, %1312 ], [ @.str.62, %1311 ], [ @.str.61, %1310 ], [ @.str.60, %1309 ], [ @.str.59, %1308 ], [ @.str.58, %1307 ], [ @.str.57, %1306 ], [ @.str.56, %1305 ], [ @.str.55, %1304 ], [ @.str.54, %1303 ], [ @.str.53, %1302 ], [ @.str.52, %1301 ], [ @.str.51, %1298 ]
  %1324 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull %1323) #25
  %1325 = icmp eq ptr %1324, null
  br i1 %1325, label %1584, label %1326

1326:                                             ; preds = %1322
  store i32 30, ptr %1324, align 8, !tbaa !19
  %1327 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %1328 = load double, ptr %1327, align 8, !tbaa !21
  tail call fastcc void @RotateKernelInfo(ptr noundef nonnull %1324, double noundef %1328) #25
  br label %1584

1329:                                             ; preds = %18
  %1330 = load double, ptr %1, align 8, !tbaa !23
  %1331 = fcmp olt double %1330, 1.000000e+00
  %1332 = fptoui double %1330 to i64
  %1333 = shl i64 %1332, 1
  %1334 = or disjoint i64 %1333, 1
  %1335 = select i1 %1331, i64 3, i64 %1334
  %1336 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 2
  store i64 %1335, ptr %1336, align 8
  %1337 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 1
  store i64 %1335, ptr %1337, align 8
  %1338 = add nsw i64 %1335, -1
  %1339 = ashr exact i64 %1338, 1
  %1340 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 4
  store i64 %1339, ptr %1340, align 8, !tbaa !28
  %1341 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 3
  store i64 %1339, ptr %1341, align 8, !tbaa !27
  %1342 = shl i64 %1335, 3
  %1343 = tail call ptr @AcquireAlignedMemory(i64 noundef %1335, i64 noundef %1342) #30
  %1344 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 5
  store ptr %1343, ptr %1344, align 8, !tbaa !32
  %1345 = icmp eq ptr %1343, null
  br i1 %1345, label %1346, label %1348

1346:                                             ; preds = %1329
  %1347 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %19) #25
  br label %1584

1348:                                             ; preds = %1329
  %1349 = load i64, ptr %1340, align 8, !tbaa !28
  %1350 = icmp slt i64 %1349, 0
  br i1 %1350, label %1385, label %1351

1351:                                             ; preds = %1348
  %1352 = sub nsw i64 0, %1349
  %1353 = load i64, ptr %1341, align 8, !tbaa !27
  %1354 = sub nsw i64 0, %1353
  %1355 = icmp slt i64 %1353, 0
  %1356 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %1357 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 9
  %1358 = shl i64 %1353, 1
  %1359 = or disjoint i64 %1358, 1
  br label %1360

1360:                                             ; preds = %1351, %1381
  %1361 = phi i64 [ 0, %1351 ], [ %1382, %1381 ]
  %1362 = phi i64 [ %1352, %1351 ], [ %1383, %1381 ]
  br i1 %1355, label %1381, label %1363

1363:                                             ; preds = %1360
  %1364 = sitofp i64 %1362 to double
  %1365 = tail call double @llvm.fabs.f64(double %1364)
  %1366 = add i64 %1359, %1361
  br label %1367

1367:                                             ; preds = %1363, %1367
  %1368 = phi i64 [ %1361, %1363 ], [ %1379, %1367 ]
  %1369 = phi i64 [ %1354, %1363 ], [ %1378, %1367 ]
  %1370 = load double, ptr %1356, align 8, !tbaa !21
  %1371 = sitofp i64 %1369 to double
  %1372 = tail call double @llvm.fabs.f64(double %1371)
  %1373 = tail call fastcc double @MagickMax(double noundef %1372, double noundef %1365) #25
  %1374 = fmul double %1370, %1373
  %1375 = getelementptr inbounds double, ptr %1343, i64 %1368
  store double %1374, ptr %1375, align 8, !tbaa !33
  %1376 = load double, ptr %1357, align 8, !tbaa !47
  %1377 = fadd double %1374, %1376
  store double %1377, ptr %1357, align 8, !tbaa !47
  %1378 = add nsw i64 %1369, 1
  %1379 = add i64 %1368, 1
  %1380 = icmp eq i64 %1379, %1366
  br i1 %1380, label %1381, label %1367, !llvm.loop !68

1381:                                             ; preds = %1367, %1360
  %1382 = phi i64 [ %1361, %1360 ], [ %1366, %1367 ]
  %1383 = add i64 %1362, 1
  %1384 = icmp eq i64 %1362, %1349
  br i1 %1384, label %1385, label %1360, !llvm.loop !69

1385:                                             ; preds = %1381, %1348
  %1386 = load double, ptr %1343, align 8, !tbaa !33
  %1387 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 7
  store double %1386, ptr %1387, align 8, !tbaa !35
  br label %1584

1388:                                             ; preds = %18
  %1389 = load double, ptr %1, align 8, !tbaa !23
  %1390 = fcmp olt double %1389, 1.000000e+00
  %1391 = fptoui double %1389 to i64
  %1392 = shl i64 %1391, 1
  %1393 = or disjoint i64 %1392, 1
  %1394 = select i1 %1390, i64 3, i64 %1393
  %1395 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 2
  store i64 %1394, ptr %1395, align 8
  %1396 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 1
  store i64 %1394, ptr %1396, align 8
  %1397 = add nsw i64 %1394, -1
  %1398 = ashr exact i64 %1397, 1
  %1399 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 4
  store i64 %1398, ptr %1399, align 8, !tbaa !28
  %1400 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 3
  store i64 %1398, ptr %1400, align 8, !tbaa !27
  %1401 = shl i64 %1394, 3
  %1402 = tail call ptr @AcquireAlignedMemory(i64 noundef %1394, i64 noundef %1401) #30
  %1403 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 5
  store ptr %1402, ptr %1403, align 8, !tbaa !32
  %1404 = icmp eq ptr %1402, null
  br i1 %1404, label %1405, label %1407

1405:                                             ; preds = %1388
  %1406 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %19) #25
  br label %1584

1407:                                             ; preds = %1388
  %1408 = load i64, ptr %1399, align 8, !tbaa !28
  %1409 = icmp slt i64 %1408, 0
  br i1 %1409, label %1443, label %1410

1410:                                             ; preds = %1407
  %1411 = sub nsw i64 0, %1408
  %1412 = load i64, ptr %1400, align 8, !tbaa !27
  %1413 = sub nsw i64 0, %1412
  %1414 = icmp slt i64 %1412, 0
  %1415 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %1416 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 9
  %1417 = shl i64 %1412, 1
  %1418 = or disjoint i64 %1417, 1
  br label %1419

1419:                                             ; preds = %1410, %1439
  %1420 = phi i64 [ 0, %1410 ], [ %1440, %1439 ]
  %1421 = phi i64 [ %1411, %1410 ], [ %1441, %1439 ]
  br i1 %1414, label %1439, label %1422

1422:                                             ; preds = %1419
  %1423 = tail call i64 @llvm.abs.i64(i64 %1421, i1 true)
  %1424 = add i64 %1418, %1420
  br label %1425

1425:                                             ; preds = %1422, %1425
  %1426 = phi i64 [ %1420, %1422 ], [ %1437, %1425 ]
  %1427 = phi i64 [ %1413, %1422 ], [ %1436, %1425 ]
  %1428 = load double, ptr %1415, align 8, !tbaa !21
  %1429 = tail call i64 @llvm.abs.i64(i64 %1427, i1 true)
  %1430 = add nuw nsw i64 %1429, %1423
  %1431 = sitofp i64 %1430 to double
  %1432 = fmul double %1428, %1431
  %1433 = getelementptr inbounds double, ptr %1402, i64 %1426
  store double %1432, ptr %1433, align 8, !tbaa !33
  %1434 = load double, ptr %1416, align 8, !tbaa !47
  %1435 = fadd double %1432, %1434
  store double %1435, ptr %1416, align 8, !tbaa !47
  %1436 = add nsw i64 %1427, 1
  %1437 = add i64 %1426, 1
  %1438 = icmp eq i64 %1437, %1424
  br i1 %1438, label %1439, label %1425, !llvm.loop !70

1439:                                             ; preds = %1425, %1419
  %1440 = phi i64 [ %1420, %1419 ], [ %1424, %1425 ]
  %1441 = add i64 %1421, 1
  %1442 = icmp eq i64 %1421, %1408
  br i1 %1442, label %1443, label %1419, !llvm.loop !71

1443:                                             ; preds = %1439, %1407
  %1444 = load double, ptr %1402, align 8, !tbaa !33
  %1445 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 7
  store double %1444, ptr %1445, align 8, !tbaa !35
  br label %1584

1446:                                             ; preds = %18
  %1447 = load double, ptr %1, align 8, !tbaa !23
  %1448 = fcmp olt double %1447, 2.000000e+00
  %1449 = fptoui double %1447 to i64
  %1450 = shl i64 %1449, 1
  %1451 = or disjoint i64 %1450, 1
  %1452 = select i1 %1448, i64 5, i64 %1451
  %1453 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 2
  store i64 %1452, ptr %1453, align 8
  %1454 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 1
  store i64 %1452, ptr %1454, align 8
  %1455 = add nsw i64 %1452, -1
  %1456 = ashr exact i64 %1455, 1
  %1457 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 4
  store i64 %1456, ptr %1457, align 8, !tbaa !28
  %1458 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 3
  store i64 %1456, ptr %1458, align 8, !tbaa !27
  %1459 = shl i64 %1452, 3
  %1460 = tail call ptr @AcquireAlignedMemory(i64 noundef %1452, i64 noundef %1459) #30
  %1461 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 5
  store ptr %1460, ptr %1461, align 8, !tbaa !32
  %1462 = icmp eq ptr %1460, null
  br i1 %1462, label %1463, label %1465

1463:                                             ; preds = %1446
  %1464 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %19) #25
  br label %1584

1465:                                             ; preds = %1446
  %1466 = load i64, ptr %1457, align 8, !tbaa !28
  %1467 = icmp slt i64 %1466, 0
  br i1 %1467, label %1510, label %1468

1468:                                             ; preds = %1465
  %1469 = sub nsw i64 0, %1466
  %1470 = load i64, ptr %1458, align 8, !tbaa !27
  %1471 = sub nsw i64 0, %1470
  %1472 = icmp slt i64 %1470, 0
  %1473 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %1474 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 9
  %1475 = shl i64 %1470, 1
  %1476 = or disjoint i64 %1475, 1
  br label %1477

1477:                                             ; preds = %1468, %1506
  %1478 = phi i64 [ 0, %1468 ], [ %1507, %1506 ]
  %1479 = phi i64 [ %1469, %1468 ], [ %1508, %1506 ]
  br i1 %1472, label %1506, label %1480

1480:                                             ; preds = %1477
  %1481 = sitofp i64 %1479 to double
  %1482 = tail call double @llvm.fabs.f64(double %1481)
  %1483 = tail call i64 @llvm.abs.i64(i64 %1479, i1 true)
  %1484 = add nuw i64 %1483, 1
  %1485 = add i64 %1476, %1478
  br label %1486

1486:                                             ; preds = %1480, %1486
  %1487 = phi i64 [ %1478, %1480 ], [ %1504, %1486 ]
  %1488 = phi i64 [ %1471, %1480 ], [ %1503, %1486 ]
  %1489 = sitofp i64 %1488 to double
  %1490 = tail call double @llvm.fabs.f64(double %1489)
  %1491 = tail call fastcc double @MagickMax(double noundef %1490, double noundef %1482) #25
  %1492 = tail call i64 @llvm.abs.i64(i64 %1488, i1 true)
  %1493 = add nuw i64 %1484, %1492
  %1494 = sitofp i64 %1493 to double
  %1495 = fdiv double %1494, 1.500000e+00
  %1496 = tail call double @llvm.floor.f64(double %1495)
  %1497 = load double, ptr %1473, align 8, !tbaa !21
  %1498 = tail call fastcc double @MagickMax(double noundef %1491, double noundef %1496) #25
  %1499 = fmul double %1497, %1498
  %1500 = getelementptr inbounds double, ptr %1460, i64 %1487
  store double %1499, ptr %1500, align 8, !tbaa !33
  %1501 = load double, ptr %1474, align 8, !tbaa !47
  %1502 = fadd double %1499, %1501
  store double %1502, ptr %1474, align 8, !tbaa !47
  %1503 = add nsw i64 %1488, 1
  %1504 = add i64 %1487, 1
  %1505 = icmp eq i64 %1504, %1485
  br i1 %1505, label %1506, label %1486, !llvm.loop !72

1506:                                             ; preds = %1486, %1477
  %1507 = phi i64 [ %1478, %1477 ], [ %1485, %1486 ]
  %1508 = add i64 %1479, 1
  %1509 = icmp eq i64 %1479, %1466
  br i1 %1509, label %1510, label %1477, !llvm.loop !73

1510:                                             ; preds = %1506, %1465
  %1511 = load double, ptr %1460, align 8, !tbaa !33
  %1512 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 7
  store double %1511, ptr %1512, align 8, !tbaa !35
  br label %1584

1513:                                             ; preds = %18
  %1514 = load double, ptr %1, align 8, !tbaa !23
  %1515 = fcmp olt double %1514, 1.000000e+00
  %1516 = fptoui double %1514 to i64
  %1517 = shl i64 %1516, 1
  %1518 = or disjoint i64 %1517, 1
  %1519 = select i1 %1515, i64 3, i64 %1518
  %1520 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 2
  store i64 %1519, ptr %1520, align 8
  %1521 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 1
  store i64 %1519, ptr %1521, align 8
  %1522 = add nsw i64 %1519, -1
  %1523 = ashr exact i64 %1522, 1
  %1524 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 4
  store i64 %1523, ptr %1524, align 8, !tbaa !28
  %1525 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 3
  store i64 %1523, ptr %1525, align 8, !tbaa !27
  %1526 = shl i64 %1519, 3
  %1527 = tail call ptr @AcquireAlignedMemory(i64 noundef %1519, i64 noundef %1526) #30
  %1528 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 5
  store ptr %1527, ptr %1528, align 8, !tbaa !32
  %1529 = icmp eq ptr %1527, null
  br i1 %1529, label %1530, label %1532

1530:                                             ; preds = %1513
  %1531 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %19) #25
  br label %1584

1532:                                             ; preds = %1513
  %1533 = load i64, ptr %1524, align 8, !tbaa !28
  %1534 = icmp slt i64 %1533, 0
  br i1 %1534, label %1576, label %1535

1535:                                             ; preds = %1532
  %1536 = sub nsw i64 0, %1533
  %1537 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %1538 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 9
  %1539 = load i64, ptr %1525, align 8, !tbaa !27
  br label %1540

1540:                                             ; preds = %1535, %1569
  %1541 = phi ptr [ %1527, %1535 ], [ %1570, %1569 ]
  %1542 = phi i64 [ %1533, %1535 ], [ %1571, %1569 ]
  %1543 = phi i64 [ %1539, %1535 ], [ %1572, %1569 ]
  %1544 = phi i64 [ 0, %1535 ], [ %1573, %1569 ]
  %1545 = phi i64 [ %1536, %1535 ], [ %1574, %1569 ]
  %1546 = icmp slt i64 %1543, 0
  br i1 %1546, label %1569, label %1547

1547:                                             ; preds = %1540
  %1548 = sub nsw i64 0, %1543
  %1549 = mul nsw i64 %1545, %1545
  br label %1550

1550:                                             ; preds = %1547, %1550
  %1551 = phi i64 [ %1544, %1547 ], [ %1564, %1550 ]
  %1552 = phi i64 [ %1548, %1547 ], [ %1563, %1550 ]
  %1553 = load double, ptr %1537, align 8, !tbaa !21
  %1554 = mul nsw i64 %1552, %1552
  %1555 = add nuw nsw i64 %1554, %1549
  %1556 = sitofp i64 %1555 to double
  %1557 = tail call double @sqrt(double noundef %1556) #26
  %1558 = fmul double %1553, %1557
  %1559 = load ptr, ptr %1528, align 8, !tbaa !32
  %1560 = getelementptr inbounds double, ptr %1559, i64 %1551
  store double %1558, ptr %1560, align 8, !tbaa !33
  %1561 = load double, ptr %1538, align 8, !tbaa !47
  %1562 = fadd double %1558, %1561
  store double %1562, ptr %1538, align 8, !tbaa !47
  %1563 = add nsw i64 %1552, 1
  %1564 = add nsw i64 %1551, 1
  %1565 = load i64, ptr %1525, align 8, !tbaa !27
  %1566 = icmp slt i64 %1552, %1565
  br i1 %1566, label %1550, label %1567, !llvm.loop !74

1567:                                             ; preds = %1550
  %1568 = load i64, ptr %1524, align 8, !tbaa !28
  br label %1569

1569:                                             ; preds = %1567, %1540
  %1570 = phi ptr [ %1541, %1540 ], [ %1559, %1567 ]
  %1571 = phi i64 [ %1542, %1540 ], [ %1568, %1567 ]
  %1572 = phi i64 [ %1543, %1540 ], [ %1565, %1567 ]
  %1573 = phi i64 [ %1544, %1540 ], [ %1564, %1567 ]
  %1574 = add nsw i64 %1545, 1
  %1575 = icmp slt i64 %1545, %1571
  br i1 %1575, label %1540, label %1576, !llvm.loop !75

1576:                                             ; preds = %1569, %1532
  %1577 = phi ptr [ %1527, %1532 ], [ %1570, %1569 ]
  %1578 = load double, ptr %1577, align 8, !tbaa !33
  %1579 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 7
  store double %1578, ptr %1579, align 8, !tbaa !35
  br label %1584

1580:                                             ; preds = %18
  %1581 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.73) #25
  %1582 = icmp eq ptr %1581, null
  br i1 %1582, label %1584, label %1583

1583:                                             ; preds = %1580
  store i32 0, ptr %1581, align 8, !tbaa !19
  br label %1584

1584:                                             ; preds = %1122, %911, %487, %420, %335, %264, %29, %512, %516, %521, %526, %531, %536, %684, %842, %969, %1033, %1135, %1139, %1159, %1175, %1191, %1326, %1385, %1443, %1510, %1576, %1583, %625, %619, %1293, %1289, %1279, %620, %776, %1125, %1201, %1259, %1270, %1262, %1268, %1202, %1198, %1257, %1250, %1243, %1236, %1229, %1222, %1215, %1208, %730, %710, %745, %1074, %870, %452, %362, %289, %66, %1580, %1322, %1290, %1280, %1276, %1185, %1169, %1155, %1149, %1151, %1143, %1136, %1132, %609, %605, %601, %597, %593, %585, %578, %570, %562, %559, %549, %541, %533, %528, %523, %518, %513, %508, %5, %1530, %1463, %1405, %1346, %1287, %1183, %1167, %996, %933, %799, %643, %27
  %1585 = phi ptr [ %1531, %1530 ], [ %1464, %1463 ], [ %1406, %1405 ], [ %1347, %1346 ], [ %1288, %1287 ], [ %1184, %1183 ], [ %1168, %1167 ], [ %997, %996 ], [ %934, %933 ], [ %800, %799 ], [ %644, %643 ], [ %28, %27 ], [ null, %5 ], [ null, %508 ], [ null, %513 ], [ null, %518 ], [ null, %523 ], [ null, %528 ], [ null, %533 ], [ null, %541 ], [ null, %549 ], [ null, %559 ], [ null, %562 ], [ null, %570 ], [ null, %578 ], [ null, %585 ], [ null, %593 ], [ null, %597 ], [ null, %601 ], [ null, %605 ], [ null, %609 ], [ null, %1132 ], [ null, %1136 ], [ %1150, %1149 ], [ %1144, %1151 ], [ null, %1143 ], [ null, %1155 ], [ null, %1169 ], [ null, %1185 ], [ null, %1276 ], [ null, %1280 ], [ null, %1290 ], [ null, %1322 ], [ null, %1580 ], [ %67, %66 ], [ %290, %289 ], [ %363, %362 ], [ %453, %452 ], [ %871, %870 ], [ %1075, %1074 ], [ %731, %730 ], [ %711, %710 ], [ %746, %745 ], [ null, %1202 ], [ null, %1198 ], [ %1258, %1257 ], [ %1251, %1250 ], [ %1244, %1243 ], [ %1237, %1236 ], [ %1230, %1229 ], [ %1223, %1222 ], [ %1216, %1215 ], [ %1209, %1208 ], [ null, %1262 ], [ %1269, %1268 ], [ %1581, %1583 ], [ %19, %1576 ], [ %19, %1510 ], [ %19, %1443 ], [ %19, %1385 ], [ %1324, %1326 ], [ %1277, %1279 ], [ %1281, %1289 ], [ %1291, %1293 ], [ %1263, %1270 ], [ %1189, %1191 ], [ %1173, %1175 ], [ %1157, %1159 ], [ %1137, %1139 ], [ %1133, %1135 ], [ %19, %1033 ], [ %19, %969 ], [ %19, %911 ], [ %19, %842 ], [ %19, %776 ], [ %19, %684 ], [ %614, %619 ], [ %614, %625 ], [ %534, %536 ], [ %529, %531 ], [ %524, %526 ], [ %519, %521 ], [ %514, %516 ], [ %510, %512 ], [ %19, %487 ], [ %19, %420 ], [ %19, %335 ], [ %19, %264 ], [ %19, %29 ], [ %614, %620 ], [ %19, %1125 ], [ %1203, %1259 ], [ %1199, %1201 ], [ %19, %1122 ]
  ret ptr %1585
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #6

; Function Attrs: optsize allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireAlignedMemory(i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #9

; Function Attrs: optsize
declare i64 @GetOptimalKernelWidth2D(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @CalcKernelMetaData(ptr nocapture noundef %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 7
  %3 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 6
  %4 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 9
  %5 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 8
  %6 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %7 = load i64, ptr %6, align 8, !tbaa !24
  %8 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !25
  %10 = mul i64 %9, %7
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %49, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !32
  br label %15

15:                                               ; preds = %12, %39
  %16 = phi double [ 0.000000e+00, %12 ], [ %46, %39 ]
  %17 = phi double [ 0.000000e+00, %12 ], [ %44, %39 ]
  %18 = phi double [ 0.000000e+00, %12 ], [ %42, %39 ]
  %19 = phi i64 [ 0, %12 ], [ %47, %39 ]
  %20 = getelementptr inbounds double, ptr %14, i64 %19
  %21 = load double, ptr %20, align 8, !tbaa !33
  %22 = tail call double @llvm.fabs.f64(double %21)
  %23 = fcmp olt double %22, 1.000000e-15
  br i1 %23, label %24, label %28

24:                                               ; preds = %15
  store double 0.000000e+00, ptr %20, align 8, !tbaa !33
  %25 = load double, ptr %4, align 8, !tbaa !47
  %26 = load double, ptr %3, align 8, !tbaa !34
  %27 = load double, ptr %2, align 8, !tbaa !35
  br label %33

28:                                               ; preds = %15
  %29 = fcmp olt double %21, 0.000000e+00
  br i1 %29, label %30, label %33

30:                                               ; preds = %28
  %31 = load double, ptr %5, align 8, !tbaa !50
  %32 = fadd double %21, %31
  store double %32, ptr %5, align 8, !tbaa !50
  br label %39

33:                                               ; preds = %24, %28
  %34 = phi double [ %27, %24 ], [ %16, %28 ]
  %35 = phi double [ %26, %24 ], [ %17, %28 ]
  %36 = phi double [ %25, %24 ], [ %18, %28 ]
  %37 = phi double [ 0.000000e+00, %24 ], [ %21, %28 ]
  %38 = fadd double %37, %36
  store double %38, ptr %4, align 8, !tbaa !47
  br label %39

39:                                               ; preds = %33, %30
  %40 = phi double [ %34, %33 ], [ %16, %30 ]
  %41 = phi double [ %35, %33 ], [ %17, %30 ]
  %42 = phi double [ %38, %33 ], [ %18, %30 ]
  %43 = load double, ptr %20, align 8, !tbaa !33
  %44 = tail call fastcc double @MagickMin(double noundef %41, double noundef %43) #25
  store double %44, ptr %3, align 8, !tbaa !34
  %45 = load double, ptr %20, align 8, !tbaa !33
  %46 = tail call fastcc double @MagickMax(double noundef %40, double noundef %45) #25
  store double %46, ptr %2, align 8, !tbaa !35
  %47 = add nuw i64 %19, 1
  %48 = icmp eq i64 %47, %10
  br i1 %48, label %49, label %15, !llvm.loop !76

49:                                               ; preds = %39, %1
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ScaleKernelInfo(ptr nocapture noundef %0, double noundef %1, i32 noundef %2) local_unnamed_addr #11 {
  %4 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @ScaleKernelInfo(ptr noundef nonnull %5, double noundef %1, i32 noundef %2) #25
  br label %8

8:                                                ; preds = %7, %3
  %9 = and i32 %2, 8192
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 9
  %13 = load double, ptr %12, align 8, !tbaa !47
  %14 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 8
  %15 = load double, ptr %14, align 8, !tbaa !50
  %16 = fadd double %13, %15
  %17 = tail call double @llvm.fabs.f64(double %16)
  %18 = fcmp ult double %17, 1.000000e-15
  %19 = select i1 %18, double %13, double %17
  br label %20

20:                                               ; preds = %11, %8
  %21 = phi double [ 1.000000e+00, %8 ], [ %19, %11 ]
  %22 = and i32 %2, 65536
  %23 = icmp eq i32 %22, 0
  %24 = insertelement <2 x double> poison, double %21, i64 0
  %25 = shufflevector <2 x double> %24, <2 x double> poison, <2 x i32> zeroinitializer
  br i1 %23, label %34, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 8
  %28 = load <2 x double>, ptr %27, align 8, !tbaa !33
  %29 = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %28)
  %30 = fcmp ult <2 x double> %29, <double 1.000000e-15, double 1.000000e-15>
  %31 = fneg <2 x double> %28
  %32 = shufflevector <2 x double> %31, <2 x double> %28, <2 x i32> <i32 0, i32 3>
  %33 = select <2 x i1> %30, <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double> %32
  br label %34

34:                                               ; preds = %20, %26
  %35 = phi <2 x double> [ %33, %26 ], [ %25, %20 ]
  %36 = insertelement <2 x double> poison, double %1, i64 0
  %37 = shufflevector <2 x double> %36, <2 x double> poison, <2 x i32> zeroinitializer
  %38 = fdiv <2 x double> %37, %35
  %39 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !24
  %41 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 2
  %42 = load i64, ptr %41, align 8, !tbaa !25
  %43 = mul i64 %42, %40
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %34
  %46 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 5
  %47 = load ptr, ptr %46, align 8, !tbaa !32
  %48 = extractelement <2 x double> %38, i64 0
  %49 = extractelement <2 x double> %38, i64 1
  br label %50

50:                                               ; preds = %45, %59
  %51 = phi i64 [ 0, %45 ], [ %60, %59 ]
  %52 = getelementptr inbounds double, ptr %47, i64 %51
  %53 = load double, ptr %52, align 8, !tbaa !33
  %54 = fcmp uno double %53, 0.000000e+00
  br i1 %54, label %59, label %55

55:                                               ; preds = %50
  %56 = fcmp oge double %53, 0.000000e+00
  %57 = select i1 %56, double %49, double %48
  %58 = fmul double %53, %57
  store double %58, ptr %52, align 8, !tbaa !33
  br label %59

59:                                               ; preds = %55, %50
  %60 = add nuw nsw i64 %51, 1
  %61 = icmp eq i64 %60, %43
  br i1 %61, label %62, label %50, !llvm.loop !77

62:                                               ; preds = %59, %34
  %63 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 8
  %64 = load <2 x double>, ptr %63, align 8, !tbaa !33
  %65 = fmul <2 x double> %38, %64
  store <2 x double> %65, ptr %63, align 8, !tbaa !33
  %66 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 6
  %67 = load <2 x double>, ptr %66, align 8, !tbaa !33
  %68 = fcmp oge <2 x double> %67, zeroinitializer
  %69 = shufflevector <2 x double> %38, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %70 = shufflevector <2 x double> %38, <2 x double> poison, <2 x i32> zeroinitializer
  %71 = select <2 x i1> %68, <2 x double> %69, <2 x double> %70
  %72 = fmul <2 x double> %67, %71
  store <2 x double> %72, ptr %66, align 8, !tbaa !33
  %73 = fcmp olt double %1, 1.000000e-15
  br i1 %73, label %74, label %78

74:                                               ; preds = %62
  %75 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 7
  %76 = shufflevector <2 x double> %65, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %76, ptr %63, align 8, !tbaa !33
  %77 = extractelement <2 x double> %72, i64 0
  store double %77, ptr %75, align 8, !tbaa !35
  store double 1.000000e+00, ptr %66, align 8, !tbaa !34
  br label %78

78:                                               ; preds = %74, %62
  ret void
}

; Function Attrs: optsize
declare i64 @GetOptimalKernelWidth1D(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @RotateKernelInfo(ptr nocapture noundef %0, double noundef %1) unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call fastcc void @RotateKernelInfo(ptr noundef nonnull %4, double noundef %1) #25
  br label %7

7:                                                ; preds = %6, %2
  %8 = tail call double @fmod(double noundef %1, double noundef 3.600000e+02) #26
  %9 = fcmp olt double %8, 0.000000e+00
  %10 = fadd double %8, 3.600000e+02
  %11 = select i1 %9, double %10, double %8
  %12 = fcmp ogt double %11, 3.375000e+02
  %13 = fcmp ole double %11, 2.250000e+01
  %14 = or i1 %12, %13
  br i1 %14, label %213, label %15

15:                                               ; preds = %7
  %16 = load i32, ptr %0, align 8, !tbaa !19
  switch i32 %16, label %27 [
    i32 2, label %213
    i32 3, label %213
    i32 4, label %213
    i32 18, label %213
    i32 22, label %213
    i32 7, label %213
    i32 32, label %213
    i32 33, label %213
    i32 35, label %213
    i32 15, label %213
    i32 14, label %213
    i32 19, label %213
    i32 20, label %213
    i32 5, label %17
  ]

17:                                               ; preds = %15
  %18 = fcmp ogt double %11, 1.350000e+02
  %19 = fcmp ole double %11, 2.250000e+02
  %20 = and i1 %18, %19
  br i1 %20, label %213, label %21

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
  %29 = tail call double @fmod(double noundef %28, double noundef 9.000000e+01) #26
  %30 = fcmp ogt double %29, 2.250000e+01
  br i1 %30, label %31, label %90

31:                                               ; preds = %27
  %32 = tail call double @fmod(double noundef %28, double noundef 9.000000e+01) #26
  %33 = fcmp ugt double %32, 6.750000e+01
  br i1 %33, label %90, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 1
  %36 = load i64, ptr %35, align 8, !tbaa !24
  %37 = icmp eq i64 %36, 3
  br i1 %37, label %38, label %89

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 2
  %40 = load i64, ptr %39, align 8, !tbaa !25
  %41 = icmp eq i64 %40, 3
  br i1 %41, label %42, label %89

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 5
  %44 = load ptr, ptr %43, align 8, !tbaa !32
  %45 = getelementptr inbounds double, ptr %44, i64 3
  %46 = load double, ptr %45, align 8, !tbaa !33
  %47 = getelementptr inbounds double, ptr %44, i64 6
  %48 = load double, ptr %47, align 8, !tbaa !33
  store double %48, ptr %45, align 8, !tbaa !33
  %49 = getelementptr inbounds double, ptr %44, i64 7
  %50 = getelementptr inbounds double, ptr %44, i64 8
  %51 = load <2 x double>, ptr %49, align 8, !tbaa !33
  store <2 x double> %51, ptr %47, align 8, !tbaa !33
  %52 = getelementptr inbounds double, ptr %44, i64 5
  %53 = load double, ptr %52, align 8, !tbaa !33
  store double %53, ptr %50, align 8, !tbaa !33
  %54 = getelementptr inbounds double, ptr %44, i64 2
  %55 = load double, ptr %54, align 8, !tbaa !33
  store double %55, ptr %52, align 8, !tbaa !33
  %56 = getelementptr inbounds double, ptr %44, i64 1
  %57 = load <2 x double>, ptr %44, align 8, !tbaa !33
  store double %46, ptr %44, align 8, !tbaa !33
  store <2 x double> %57, ptr %56, align 8, !tbaa !33
  %58 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 3
  %59 = load i64, ptr %58, align 8, !tbaa !27
  %60 = icmp eq i64 %59, 1
  %61 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 4
  %62 = load i64, ptr %61, align 8, !tbaa !28
  %63 = icmp eq i64 %62, 1
  %64 = select i1 %60, i1 %63, i1 false
  br i1 %64, label %82, label %65

65:                                               ; preds = %42
  %66 = add nsw i64 %59, -1
  %67 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 4
  %68 = icmp eq i64 %59, %62
  br i1 %68, label %79, label %69

69:                                               ; preds = %65
  %70 = icmp eq i64 %66, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %69
  %72 = sub i64 2, %62
  br label %79

73:                                               ; preds = %69
  %74 = sub nsw i64 1, %62
  %75 = icmp eq i64 %66, %74
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = icmp eq i64 %62, 1
  %78 = select i1 %77, i64 %59, i64 %62
  br label %79

79:                                               ; preds = %76, %73, %65, %71
  %80 = phi i64 [ %62, %71 ], [ %59, %65 ], [ 1, %73 ], [ %78, %76 ]
  %81 = phi i64 [ %72, %71 ], [ 1, %65 ], [ %59, %73 ], [ %59, %76 ]
  store i64 %81, ptr %58, align 8, !tbaa !27
  store i64 %80, ptr %67, align 8, !tbaa !28
  br label %82

82:                                               ; preds = %42, %79
  %83 = fadd double %28, 3.150000e+02
  %84 = tail call double @fmod(double noundef %83, double noundef 3.600000e+02) #26
  %85 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 10
  %86 = load double, ptr %85, align 8, !tbaa !78
  %87 = fadd double %86, 4.500000e+01
  %88 = tail call double @fmod(double noundef %87, double noundef 3.600000e+02) #26
  store double %88, ptr %85, align 8, !tbaa !78
  br label %90

89:                                               ; preds = %38, %34
  tail call void @perror(ptr noundef nonnull @.str.115) #31
  br label %90

90:                                               ; preds = %82, %89, %31, %27
  %91 = phi double [ %84, %82 ], [ %28, %89 ], [ %28, %31 ], [ %28, %27 ]
  %92 = tail call double @fmod(double noundef %91, double noundef 1.800000e+02) #26
  %93 = fcmp ogt double %92, 4.500000e+01
  br i1 %93, label %94, label %177

94:                                               ; preds = %90
  %95 = tail call double @fmod(double noundef %91, double noundef 1.800000e+02) #26
  %96 = fcmp ugt double %95, 1.350000e+02
  br i1 %96, label %177, label %97

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 1
  %99 = load i64, ptr %98, align 8, !tbaa !24
  %100 = icmp eq i64 %99, 1
  %101 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 2
  %102 = load i64, ptr %101, align 8, !tbaa !25
  br i1 %100, label %105, label %103

103:                                              ; preds = %97
  %104 = icmp eq i64 %102, 1
  br i1 %104, label %105, label %125

105:                                              ; preds = %97, %103
  %106 = phi i64 [ 1, %103 ], [ %102, %97 ]
  %107 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 2
  store i64 %106, ptr %98, align 8, !tbaa !24
  store i64 %99, ptr %107, align 8, !tbaa !25
  %108 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 3
  %109 = load <2 x i64>, ptr %108, align 8, !tbaa !79
  %110 = shufflevector <2 x i64> %109, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %110, ptr %108, align 8, !tbaa !79
  %111 = icmp eq i64 %106, 1
  %112 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 10
  br i1 %111, label %113, label %119

113:                                              ; preds = %105
  %114 = fadd double %91, 2.700000e+02
  %115 = tail call double @fmod(double noundef %114, double noundef 3.600000e+02) #26
  %116 = load double, ptr %112, align 8, !tbaa !78
  %117 = fadd double %116, 9.000000e+01
  %118 = tail call double @fmod(double noundef %117, double noundef 3.600000e+02) #26
  store double %118, ptr %112, align 8, !tbaa !78
  br label %177

119:                                              ; preds = %105
  %120 = fadd double %91, 9.000000e+01
  %121 = tail call double @fmod(double noundef %120, double noundef 3.600000e+02) #26
  %122 = load double, ptr %112, align 8, !tbaa !78
  %123 = fadd double %122, 2.700000e+02
  %124 = tail call double @fmod(double noundef %123, double noundef 3.600000e+02) #26
  store double %124, ptr %112, align 8, !tbaa !78
  br label %177

125:                                              ; preds = %103
  %126 = icmp eq i64 %99, %102
  br i1 %126, label %127, label %176

127:                                              ; preds = %125
  %128 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 5
  %129 = load ptr, ptr %128, align 8, !tbaa !32
  %130 = add i64 %99, -1
  br label %131

131:                                              ; preds = %127, %156
  %132 = phi i64 [ %130, %127 ], [ %158, %156 ]
  %133 = phi i64 [ 0, %127 ], [ %157, %156 ]
  %134 = getelementptr double, ptr %129, i64 %133
  %135 = mul i64 %132, %99
  %136 = getelementptr double, ptr %129, i64 %135
  %137 = getelementptr double, ptr %129, i64 %132
  %138 = mul i64 %133, %99
  %139 = getelementptr double, ptr %129, i64 %138
  br label %140

140:                                              ; preds = %131, %140
  %141 = phi i64 [ %130, %131 ], [ %154, %140 ]
  %142 = phi i64 [ 0, %131 ], [ %153, %140 ]
  %143 = mul i64 %142, %99
  %144 = getelementptr double, ptr %134, i64 %143
  %145 = load double, ptr %144, align 8, !tbaa !33
  %146 = getelementptr double, ptr %136, i64 %142
  %147 = load double, ptr %146, align 8, !tbaa !33
  store double %147, ptr %144, align 8, !tbaa !33
  %148 = mul i64 %141, %99
  %149 = getelementptr double, ptr %137, i64 %148
  %150 = load double, ptr %149, align 8, !tbaa !33
  store double %150, ptr %146, align 8, !tbaa !33
  %151 = getelementptr double, ptr %139, i64 %141
  %152 = load double, ptr %151, align 8, !tbaa !33
  store double %152, ptr %149, align 8, !tbaa !33
  store double %145, ptr %151, align 8, !tbaa !33
  %153 = add nuw i64 %142, 1
  %154 = add i64 %141, -1
  %155 = icmp ult i64 %153, %154
  br i1 %155, label %140, label %156, !llvm.loop !80

156:                                              ; preds = %140
  %157 = add i64 %133, 1
  %158 = add i64 %132, -1
  %159 = icmp ugt i64 %157, %158
  br i1 %159, label %160, label %131, !llvm.loop !81

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 3
  %162 = load i64, ptr %161, align 8, !tbaa !27
  %163 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 4
  %164 = load i64, ptr %163, align 8, !tbaa !28
  %165 = shl nsw i64 %164, 1
  %166 = xor i64 %165, -1
  %167 = add i64 %130, %99
  %168 = add i64 %167, %166
  %169 = sdiv i64 %168, 2
  store i64 %169, ptr %161, align 8, !tbaa !27
  store i64 %162, ptr %163, align 8, !tbaa !28
  %170 = fadd double %91, 2.700000e+02
  %171 = tail call double @fmod(double noundef %170, double noundef 3.600000e+02) #26
  %172 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 10
  %173 = load double, ptr %172, align 8, !tbaa !78
  %174 = fadd double %173, 9.000000e+01
  %175 = tail call double @fmod(double noundef %174, double noundef 3.600000e+02) #26
  store double %175, ptr %172, align 8, !tbaa !78
  br label %177

176:                                              ; preds = %125
  tail call void @perror(ptr noundef nonnull @.str.116) #31
  br label %177

177:                                              ; preds = %113, %119, %176, %160, %94, %90
  %178 = phi double [ %171, %160 ], [ %91, %176 ], [ %91, %94 ], [ %91, %90 ], [ %115, %113 ], [ %121, %119 ]
  %179 = fcmp ogt double %178, 1.350000e+02
  %180 = fcmp ole double %178, 2.250000e+02
  %181 = and i1 %179, %180
  br i1 %181, label %182, label %213

182:                                              ; preds = %177
  %183 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 5
  %184 = load ptr, ptr %183, align 8, !tbaa !32
  %185 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 1
  %186 = load <2 x i64>, ptr %185, align 8, !tbaa !79
  %187 = extractelement <2 x i64> %186, i64 0
  %188 = extractelement <2 x i64> %186, i64 1
  %189 = mul i64 %188, %187
  %190 = add i64 %189, -1
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %202, label %192

192:                                              ; preds = %182, %192
  %193 = phi i64 [ %200, %192 ], [ %190, %182 ]
  %194 = phi i64 [ %199, %192 ], [ 0, %182 ]
  %195 = getelementptr inbounds double, ptr %184, i64 %194
  %196 = load double, ptr %195, align 8, !tbaa !33
  %197 = getelementptr inbounds double, ptr %184, i64 %193
  %198 = load double, ptr %197, align 8, !tbaa !33
  store double %198, ptr %195, align 8, !tbaa !33
  store double %196, ptr %197, align 8, !tbaa !33
  %199 = add nuw i64 %194, 1
  %200 = add i64 %193, -1
  %201 = icmp ult i64 %199, %200
  br i1 %201, label %192, label %202, !llvm.loop !82

202:                                              ; preds = %192, %182
  %203 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 3
  %204 = load <2 x i64>, ptr %203, align 8, !tbaa !79
  %205 = xor <2 x i64> %204, <i64 -1, i64 -1>
  %206 = add <2 x i64> %186, %205
  store <2 x i64> %206, ptr %203, align 8, !tbaa !79
  %207 = fadd double %178, -1.800000e+02
  %208 = tail call double @fmod(double noundef %207, double noundef 3.600000e+02) #26
  %209 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 10
  %210 = load double, ptr %209, align 8, !tbaa !78
  %211 = fadd double %210, 1.800000e+02
  %212 = tail call double @fmod(double noundef %211, double noundef 3.600000e+02) #26
  store double %212, ptr %209, align 8, !tbaa !78
  br label %213

213:                                              ; preds = %177, %202, %17, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %7
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define internal fastcc i64 @fact(i64 noundef %0) unnamed_addr #13 {
  %2 = icmp ult i64 %0, 2
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = add i64 %0, 1
  %5 = tail call i64 @llvm.umax.i64(i64 %4, i64 3)
  br label %6

6:                                                ; preds = %3, %6
  %7 = phi i64 [ %9, %6 ], [ 1, %3 ]
  %8 = phi i64 [ %10, %6 ], [ 2, %3 ]
  %9 = mul i64 %7, %8
  %10 = add nuw i64 %8, 1
  %11 = icmp eq i64 %10, %5
  br i1 %11, label %12, label %6, !llvm.loop !83

12:                                               ; preds = %6, %1
  %13 = phi i64 [ 1, %1 ], [ %9, %6 ]
  ret i64 %13
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ExpandMirrorKernelInfo(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @CloneKernelInfo(ptr noundef %0) #25
  tail call fastcc void @RotateKernelInfo(ptr noundef %2, double noundef 1.800000e+02) #25
  %3 = tail call fastcc ptr @LastKernelInfo(ptr noundef %0) #25
  %4 = getelementptr inbounds %struct.KernelInfo, ptr %3, i64 0, i32 11
  store ptr %2, ptr %4, align 8, !tbaa !12
  %5 = tail call ptr @CloneKernelInfo(ptr noundef %2) #25
  tail call fastcc void @RotateKernelInfo(ptr noundef %5, double noundef 9.000000e+01) #25
  %6 = tail call fastcc ptr @LastKernelInfo(ptr noundef %2) #25
  %7 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 11
  store ptr %5, ptr %7, align 8, !tbaa !12
  %8 = tail call ptr @CloneKernelInfo(ptr noundef %5) #25
  tail call fastcc void @RotateKernelInfo(ptr noundef %8, double noundef 1.800000e+02) #25
  %9 = tail call fastcc ptr @LastKernelInfo(ptr noundef %5) #25
  %10 = getelementptr inbounds %struct.KernelInfo, ptr %9, i64 0, i32 11
  store ptr %8, ptr %10, align 8, !tbaa !12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ExpandRotateKernelInfo(ptr noundef %0, double noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @CloneKernelInfo(ptr noundef %0) #25
  tail call fastcc void @RotateKernelInfo(ptr noundef %3, double noundef %1) #25
  %4 = tail call fastcc i32 @SameKernelInfo(ptr noundef %0, ptr noundef %3) #25, !range !84
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %11, %6 ], [ %3, %2 ]
  %8 = phi ptr [ %7, %6 ], [ %0, %2 ]
  %9 = tail call fastcc ptr @LastKernelInfo(ptr noundef %8) #25
  %10 = getelementptr inbounds %struct.KernelInfo, ptr %9, i64 0, i32 11
  store ptr %7, ptr %10, align 8, !tbaa !12
  %11 = tail call ptr @CloneKernelInfo(ptr noundef %7) #25
  tail call fastcc void @RotateKernelInfo(ptr noundef %11, double noundef %1) #25
  %12 = tail call fastcc i32 @SameKernelInfo(ptr noundef %0, ptr noundef %11) #25, !range !84
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %6, label %14

14:                                               ; preds = %6, %2
  %15 = phi ptr [ %3, %2 ], [ %11, %6 ]
  %16 = tail call ptr @DestroyKernelInfo(ptr noundef %15) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @MagickMax(double noundef %0, double noundef %1) unnamed_addr #14 {
  %3 = fcmp ogt double %0, %1
  %4 = select i1 %3, double %0, double %1
  ret double %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CloneKernelInfo(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call dereferenceable_or_null(104) ptr @AcquireMagickMemory(i64 noundef 104) #29
  %3 = icmp eq ptr %2, null
  br i1 %3, label %38, label %4

4:                                                ; preds = %1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(104) %0, i64 104, i1 false), !tbaa.struct !85
  %5 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !24
  %7 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 2
  %8 = load i64, ptr %7, align 8, !tbaa !25
  %9 = shl i64 %8, 3
  %10 = tail call ptr @AcquireAlignedMemory(i64 noundef %6, i64 noundef %9) #30
  %11 = getelementptr inbounds %struct.KernelInfo, ptr %2, i64 0, i32 5
  store ptr %10, ptr %11, align 8, !tbaa !32
  %12 = icmp eq ptr %10, null
  br i1 %12, label %36, label %13

13:                                               ; preds = %4
  %14 = load i64, ptr %5, align 8, !tbaa !24
  %15 = load i64, ptr %7, align 8, !tbaa !25
  %16 = mul i64 %15, %14
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !32
  br label %21

21:                                               ; preds = %18, %21
  %22 = phi i64 [ 0, %18 ], [ %26, %21 ]
  %23 = getelementptr inbounds double, ptr %20, i64 %22
  %24 = load double, ptr %23, align 8, !tbaa !33
  %25 = getelementptr inbounds double, ptr %10, i64 %22
  store double %24, ptr %25, align 8, !tbaa !33
  %26 = add nuw nsw i64 %22, 1
  %27 = icmp eq i64 %26, %16
  br i1 %27, label %28, label %21, !llvm.loop !87

28:                                               ; preds = %21, %13
  %29 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 11
  %30 = load ptr, ptr %29, align 8, !tbaa !12
  %31 = icmp eq ptr %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %28
  %33 = tail call ptr @CloneKernelInfo(ptr noundef nonnull %30) #25
  %34 = getelementptr inbounds %struct.KernelInfo, ptr %2, i64 0, i32 11
  store ptr %33, ptr %34, align 8, !tbaa !12
  %35 = icmp eq ptr %33, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %32, %4
  %37 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %2) #25
  br label %38

38:                                               ; preds = %36, %28, %32, %1
  %39 = phi ptr [ null, %1 ], [ %2, %32 ], [ %2, %28 ], [ %37, %36 ]
  ret ptr %39
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: optsize
declare ptr @RelinquishAlignedMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @MorphologyApply(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, ptr noundef readonly %4, i32 noundef %5, double noundef %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %9) #24
  %10 = icmp eq i64 %3, 0
  br i1 %10, label %338, label %11

11:                                               ; preds = %8
  %12 = icmp slt i64 %3, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %15 = load i64, ptr %14, align 8, !tbaa !88
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %17 = load i64, ptr %16, align 8, !tbaa !100
  %18 = tail call i64 @llvm.umax.i64(i64 %15, i64 %17)
  br label %19

19:                                               ; preds = %13, %11
  %20 = phi i64 [ %18, %13 ], [ %3, %11 ]
  %21 = tail call ptr @GetImageArtifact(ptr noundef %0, ptr noundef nonnull @.str.74) #26
  %22 = tail call i32 @IsMagickTrue(ptr noundef %21) #26
  switch i32 %2, label %55 [
    i32 12, label %23
    i32 8, label %25
    i32 10, label %25
    i32 16, label %25
    i32 9, label %25
    i32 11, label %25
    i32 17, label %25
    i32 15, label %25
    i32 18, label %26
    i32 19, label %29
    i32 20, label %29
    i32 7, label %30
    i32 21, label %30
  ]

23:                                               ; preds = %19
  %24 = tail call i32 @llvm.umax.i32(i32 %5, i32 1)
  br label %61

25:                                               ; preds = %19, %19, %19, %19, %19, %19, %19
  br label %55

26:                                               ; preds = %19
  %27 = icmp eq i32 %5, 0
  %28 = select i1 %27, i32 33, i32 %5
  br label %70

29:                                               ; preds = %19, %19
  br label %55

30:                                               ; preds = %19, %19
  %31 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %7) #26
  %32 = icmp eq ptr %31, null
  br i1 %32, label %338, label %33

33:                                               ; preds = %30
  %34 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %31, i32 noundef 1) #26
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct._Image, ptr %31, i64 0, i32 58
  tail call void @InheritException(ptr noundef %7, ptr noundef nonnull %37) #26
  br label %296

38:                                               ; preds = %33
  %39 = tail call fastcc i64 @MorphologyPrimitiveDirect(ptr noundef nonnull %31, i32 noundef %2, i32 noundef %1, ptr noundef %4, ptr noundef %7) #25
  %40 = icmp eq i32 %22, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr @stderr, align 8, !tbaa !8
  %43 = zext nneg i32 %2 to i64
  %44 = tail call ptr @CommandOptionToMnemonic(i32 noundef 48, i64 noundef %43) #26
  %45 = sitofp i64 %39 to double
  %46 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %42, ptr noundef nonnull @.str.75, ptr noundef %44, double noundef 1.000000e+00, double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef %45) #26
  br label %47

47:                                               ; preds = %41, %38
  %48 = icmp slt i64 %39, 0
  br i1 %48, label %296, label %49

49:                                               ; preds = %47
  %50 = icmp eq i32 %2, 21
  br i1 %50, label %51, label %338

51:                                               ; preds = %49
  %52 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %31, i32 noundef 4) #26
  %53 = tail call i32 @CompositeImageChannel(ptr noundef nonnull %31, i32 noundef 134217719, i32 noundef 17, ptr noundef %0, i64 noundef 0, i64 noundef 0) #26
  %54 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %31, i32 noundef 4) #26
  br label %338

55:                                               ; preds = %19, %25, %29
  %56 = phi i64 [ %20, %29 ], [ 1, %25 ], [ 1, %19 ]
  %57 = phi i1 [ false, %29 ], [ true, %25 ], [ false, %19 ]
  %58 = phi i64 [ 1, %29 ], [ 2, %25 ], [ 1, %19 ]
  %59 = phi i64 [ 1, %29 ], [ %20, %25 ], [ %20, %19 ]
  %60 = tail call i32 @llvm.umax.i32(i32 %5, i32 1)
  switch i32 %2, label %70 [
    i32 2, label %61
    i32 9, label %61
    i32 11, label %61
    i32 17, label %61
    i32 12, label %61
  ]

61:                                               ; preds = %23, %55, %55, %55, %55, %55
  %62 = phi i32 [ %24, %23 ], [ %60, %55 ], [ %60, %55 ], [ %60, %55 ], [ %60, %55 ], [ %60, %55 ]
  %63 = phi i64 [ %20, %23 ], [ %59, %55 ], [ %59, %55 ], [ %59, %55 ], [ %59, %55 ], [ %59, %55 ]
  %64 = phi i64 [ 4, %23 ], [ %58, %55 ], [ %58, %55 ], [ %58, %55 ], [ %58, %55 ], [ %58, %55 ]
  %65 = phi i1 [ true, %23 ], [ %57, %55 ], [ %57, %55 ], [ %57, %55 ], [ %57, %55 ], [ %57, %55 ]
  %66 = phi i64 [ 1, %23 ], [ %56, %55 ], [ %56, %55 ], [ %56, %55 ], [ %56, %55 ], [ %56, %55 ]
  %67 = tail call ptr @CloneKernelInfo(ptr noundef %4) #25
  %68 = icmp eq ptr %67, null
  br i1 %68, label %338, label %69

69:                                               ; preds = %61
  tail call fastcc void @RotateKernelInfo(ptr noundef nonnull %67, double noundef 1.800000e+02) #25
  br label %70

70:                                               ; preds = %26, %55, %69
  %71 = phi i32 [ %60, %55 ], [ %62, %69 ], [ %28, %26 ]
  %72 = phi i32 [ %5, %55 ], [ %5, %69 ], [ %28, %26 ]
  %73 = phi i64 [ %59, %55 ], [ %63, %69 ], [ 1, %26 ]
  %74 = phi i64 [ %58, %55 ], [ %64, %69 ], [ 1, %26 ]
  %75 = phi i1 [ %57, %55 ], [ %65, %69 ], [ false, %26 ]
  %76 = phi i64 [ %56, %55 ], [ %66, %69 ], [ %20, %26 ]
  %77 = phi ptr [ null, %55 ], [ %67, %69 ], [ null, %26 ]
  %78 = icmp eq i64 %76, 0
  br i1 %78, label %332, label %79

79:                                               ; preds = %70
  %80 = icmp eq ptr %4, null
  %81 = icmp eq i32 %22, 0
  %82 = zext i32 %2 to i64
  %83 = icmp eq i64 %73, 0
  %84 = and i32 %1, -257
  %85 = getelementptr inbounds %struct.KernelInfo, ptr %4, i64 0, i32 11
  %86 = icmp ult i32 %72, 2
  %87 = zext i32 %71 to i64
  br label %92

88:                                               ; preds = %292
  %89 = icmp ult i64 %99, %76
  %90 = icmp ne i64 %214, 0
  %91 = select i1 %89, i1 %90, i1 false
  br i1 %91, label %92, label %311, !llvm.loop !101

92:                                               ; preds = %79, %88
  %93 = phi i64 [ 0, %79 ], [ %212, %88 ]
  %94 = phi i64 [ 0, %79 ], [ %99, %88 ]
  %95 = phi ptr [ %0, %79 ], [ %284, %88 ]
  %96 = phi ptr [ null, %79 ], [ %285, %88 ]
  %97 = phi ptr [ null, %79 ], [ %247, %88 ]
  %98 = phi ptr [ null, %79 ], [ %210, %88 ]
  %99 = add nuw i64 %94, 1
  br i1 %80, label %311, label %100

100:                                              ; preds = %92
  %101 = uitofp i64 %99 to double
  br label %102

102:                                              ; preds = %100, %292
  %103 = phi i64 [ 0, %100 ], [ %214, %292 ]
  %104 = phi i64 [ %93, %100 ], [ %212, %292 ]
  %105 = phi i64 [ 0, %100 ], [ %294, %292 ]
  %106 = phi ptr [ %95, %100 ], [ %284, %292 ]
  %107 = phi ptr [ %77, %100 ], [ %293, %292 ]
  %108 = phi ptr [ %4, %100 ], [ %287, %292 ]
  %109 = phi ptr [ %96, %100 ], [ %285, %292 ]
  %110 = phi ptr [ %97, %100 ], [ %247, %292 ]
  %111 = phi ptr [ %98, %100 ], [ %210, %292 ]
  %112 = uitofp i64 %105 to double
  br label %113

113:                                              ; preds = %102, %228
  %114 = phi i64 [ %103, %102 ], [ %214, %228 ]
  %115 = phi i64 [ %104, %102 ], [ %212, %228 ]
  %116 = phi i64 [ 0, %102 ], [ %120, %228 ]
  %117 = phi ptr [ %106, %102 ], [ %211, %228 ]
  %118 = phi ptr [ %110, %102 ], [ %145, %228 ]
  %119 = phi ptr [ %111, %102 ], [ %210, %228 ]
  %120 = add nuw nsw i64 %116, 1
  switch i32 %2, label %144 [
    i32 3, label %121
    i32 13, label %121
    i32 4, label %122
    i32 14, label %122
    i32 8, label %123
    i32 16, label %123
    i32 10, label %126
    i32 9, label %129
    i32 17, label %129
    i32 11, label %132
    i32 12, label %135
    i32 15, label %139
    i32 2, label %142
  ]

121:                                              ; preds = %113, %113
  br label %144

122:                                              ; preds = %113, %113
  br label %144

123:                                              ; preds = %113, %113
  %124 = icmp eq i64 %120, 2
  %125 = select i1 %124, i32 4, i32 3
  br label %144

126:                                              ; preds = %113
  %127 = icmp eq i64 %120, 2
  %128 = select i1 %127, i32 6, i32 5
  br label %144

129:                                              ; preds = %113, %113
  %130 = icmp eq i64 %120, 2
  %131 = select i1 %130, i32 3, i32 4
  br label %144

132:                                              ; preds = %113
  %133 = icmp eq i64 %120, 2
  %134 = select i1 %133, i32 5, i32 6
  br label %144

135:                                              ; preds = %113
  switch i64 %116, label %143 [
    i64 0, label %144
    i64 1, label %136
    i64 2, label %137
    i64 3, label %138
  ]

136:                                              ; preds = %135
  br label %144

137:                                              ; preds = %135
  br label %144

138:                                              ; preds = %135
  br label %144

139:                                              ; preds = %113
  %140 = icmp eq i64 %120, 2
  br i1 %140, label %141, label %144

141:                                              ; preds = %139
  br label %144

142:                                              ; preds = %113
  br label %144

143:                                              ; preds = %135
  unreachable

144:                                              ; preds = %135, %113, %139, %141, %136, %137, %138, %142, %132, %129, %126, %123, %122, %121
  %145 = phi ptr [ %118, %113 ], [ %118, %142 ], [ %117, %141 ], [ %118, %139 ], [ %118, %138 ], [ %118, %137 ], [ %118, %136 ], [ %118, %132 ], [ %118, %129 ], [ %118, %126 ], [ %118, %123 ], [ %118, %122 ], [ %118, %121 ], [ %118, %135 ]
  %146 = phi ptr [ %108, %113 ], [ %107, %142 ], [ %108, %141 ], [ %108, %139 ], [ %107, %138 ], [ %107, %137 ], [ %108, %136 ], [ %107, %132 ], [ %107, %129 ], [ %108, %126 ], [ %108, %123 ], [ %108, %122 ], [ %108, %121 ], [ %108, %135 ]
  %147 = phi i32 [ %2, %113 ], [ 1, %142 ], [ 3, %141 ], [ 4, %139 ], [ 3, %138 ], [ 4, %137 ], [ 4, %136 ], [ %134, %132 ], [ %131, %129 ], [ %128, %126 ], [ %125, %123 ], [ 4, %122 ], [ 3, %121 ], [ 3, %135 ]
  %148 = phi ptr [ %117, %113 ], [ %117, %142 ], [ %0, %141 ], [ %117, %139 ], [ %117, %138 ], [ %117, %137 ], [ %117, %136 ], [ %117, %132 ], [ %117, %129 ], [ %117, %126 ], [ %117, %123 ], [ %117, %122 ], [ %117, %121 ], [ %117, %135 ]
  br i1 %81, label %160, label %149

149:                                              ; preds = %144
  br i1 %75, label %150, label %154

150:                                              ; preds = %149
  %151 = call ptr @CommandOptionToMnemonic(i32 noundef 48, i64 noundef %82) #26
  %152 = uitofp i64 %120 to double
  %153 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %9, i64 noundef 4096, ptr noundef nonnull @.str.76, ptr noundef %151, double noundef %101, double noundef %152) #26
  br label %160

154:                                              ; preds = %149
  %155 = icmp eq i32 %147, %2
  br i1 %155, label %159, label %156

156:                                              ; preds = %154
  %157 = call ptr @CommandOptionToMnemonic(i32 noundef 48, i64 noundef %82) #26
  %158 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %9, i64 noundef 4096, ptr noundef nonnull @.str.77, ptr noundef %157, double noundef %101) #26
  br label %160

159:                                              ; preds = %154
  store i8 0, ptr %9, align 16, !tbaa !5
  br label %160

160:                                              ; preds = %150, %159, %156, %144
  br i1 %83, label %209, label %161

161:                                              ; preds = %160
  %162 = zext i32 %147 to i64
  %163 = icmp eq ptr %146, %107
  %164 = select i1 %163, ptr @.str.80, ptr @.str.81
  br label %165

165:                                              ; preds = %161, %201
  %166 = phi i64 [ %114, %161 ], [ %203, %201 ]
  %167 = phi i64 [ 0, %161 ], [ %202, %201 ]
  %168 = phi i64 [ %115, %161 ], [ %184, %201 ]
  %169 = phi i64 [ 0, %161 ], [ %172, %201 ]
  %170 = phi ptr [ %148, %161 ], [ %183, %201 ]
  %171 = phi ptr [ %119, %161 ], [ %205, %201 ]
  %172 = add nuw i64 %169, 1
  %173 = icmp eq ptr %171, null
  br i1 %173, label %174, label %182

174:                                              ; preds = %165
  %175 = call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %7) #26
  %176 = icmp eq ptr %175, null
  br i1 %176, label %299, label %177

177:                                              ; preds = %174
  %178 = call i32 @SetImageStorageClass(ptr noundef nonnull %175, i32 noundef 1) #26
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %177
  %181 = getelementptr inbounds %struct._Image, ptr %175, i64 0, i32 58
  call void @InheritException(ptr noundef %7, ptr noundef nonnull %181) #26
  br label %299

182:                                              ; preds = %177, %165
  %183 = phi ptr [ %175, %177 ], [ %171, %165 ]
  %184 = add i64 %168, 1
  %185 = call fastcc i64 @MorphologyPrimitive(ptr noundef %170, ptr noundef nonnull %183, i32 noundef %147, i32 noundef %1, ptr noundef %146, double noundef %6, ptr noundef %7) #25
  br i1 %81, label %199, label %186

186:                                              ; preds = %182
  %187 = icmp eq i64 %169, 0
  br i1 %187, label %191, label %188

188:                                              ; preds = %186
  %189 = load ptr, ptr @stderr, align 8, !tbaa !8
  %190 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %189, ptr noundef nonnull @.str.78) #26
  br label %191

191:                                              ; preds = %188, %186
  %192 = load ptr, ptr @stderr, align 8, !tbaa !8
  %193 = call ptr @CommandOptionToMnemonic(i32 noundef 48, i64 noundef %162) #26
  %194 = add i64 %169, %99
  %195 = uitofp i64 %194 to double
  %196 = uitofp i64 %184 to double
  %197 = sitofp i64 %185 to double
  %198 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %192, ptr noundef nonnull @.str.79, ptr noundef nonnull %9, ptr noundef %193, ptr noundef nonnull %164, double noundef %195, double noundef %112, double noundef %196, double noundef %197) #26
  br label %199

199:                                              ; preds = %191, %182
  %200 = icmp slt i64 %185, 0
  br i1 %200, label %299, label %201

201:                                              ; preds = %199
  %202 = add i64 %185, %167
  %203 = add i64 %185, %166
  %204 = icmp eq ptr %170, %0
  %205 = select i1 %204, ptr null, ptr %170
  %206 = icmp ult i64 %172, %73
  %207 = icmp ne i64 %185, 0
  %208 = select i1 %206, i1 %207, i1 false
  br i1 %208, label %165, label %209, !llvm.loop !102

209:                                              ; preds = %201, %160
  %210 = phi ptr [ %119, %160 ], [ %205, %201 ]
  %211 = phi ptr [ %148, %160 ], [ %183, %201 ]
  %212 = phi i64 [ %115, %160 ], [ %184, %201 ]
  %213 = phi i64 [ 0, %160 ], [ %202, %201 ]
  %214 = phi i64 [ %114, %160 ], [ %203, %201 ]
  %215 = phi i64 [ 1, %160 ], [ %185, %201 ]
  %216 = icmp eq i64 %213, %215
  %217 = select i1 %81, i1 true, i1 %216
  br i1 %217, label %222, label %218

218:                                              ; preds = %209
  %219 = load ptr, ptr @stderr, align 8, !tbaa !8
  %220 = uitofp i64 %213 to double
  %221 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %219, ptr noundef nonnull @.str.82, double noundef %220) #26
  br label %222

222:                                              ; preds = %218, %209
  %223 = icmp uge i64 %120, %74
  %224 = select i1 %81, i1 true, i1 %223
  br i1 %224, label %228, label %225

225:                                              ; preds = %222
  %226 = load ptr, ptr @stderr, align 8, !tbaa !8
  %227 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %226, ptr noundef nonnull @.str.78) #26
  br label %228

228:                                              ; preds = %225, %222
  %229 = icmp eq i64 %120, %74
  br i1 %229, label %230, label %113, !llvm.loop !103

230:                                              ; preds = %228
  switch i32 %2, label %246 [
    i32 14, label %231
    i32 13, label %231
    i32 16, label %231
    i32 17, label %231
    i32 15, label %238
  ]

231:                                              ; preds = %230, %230, %230, %230
  br i1 %81, label %236, label %232

232:                                              ; preds = %231
  %233 = load ptr, ptr @stderr, align 8, !tbaa !8
  %234 = call ptr @CommandOptionToMnemonic(i32 noundef 48, i64 noundef %82) #26
  %235 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %233, ptr noundef nonnull @.str.83, ptr noundef %234) #26
  br label %236

236:                                              ; preds = %232, %231
  %237 = call i32 @CompositeImageChannel(ptr noundef %211, i32 noundef %84, i32 noundef 26, ptr noundef %0, i64 noundef 0, i64 noundef 0) #26
  br label %246

238:                                              ; preds = %230
  br i1 %81, label %243, label %239

239:                                              ; preds = %238
  %240 = load ptr, ptr @stderr, align 8, !tbaa !8
  %241 = call ptr @CommandOptionToMnemonic(i32 noundef 48, i64 noundef 15) #26
  %242 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %240, ptr noundef nonnull @.str.84, ptr noundef %241) #26
  br label %243

243:                                              ; preds = %239, %238
  %244 = call i32 @CompositeImageChannel(ptr noundef %211, i32 noundef %84, i32 noundef 26, ptr noundef %145, i64 noundef 0, i64 noundef 0) #26
  %245 = call ptr @DestroyImage(ptr noundef %145) #26
  br label %246

246:                                              ; preds = %230, %243, %236
  %247 = phi ptr [ %145, %230 ], [ %245, %243 ], [ %145, %236 ]
  %248 = load ptr, ptr %85, align 8, !tbaa !12
  %249 = icmp eq ptr %248, null
  br i1 %249, label %275, label %250

250:                                              ; preds = %246
  br i1 %86, label %251, label %261

251:                                              ; preds = %250
  br i1 %81, label %283, label %252

252:                                              ; preds = %251
  %253 = getelementptr inbounds %struct.KernelInfo, ptr %146, i64 0, i32 11
  %254 = load ptr, ptr %253, align 8, !tbaa !12
  %255 = icmp eq ptr %254, null
  %256 = load ptr, ptr @stderr, align 8, !tbaa !8
  br i1 %255, label %259, label %257

257:                                              ; preds = %252
  %258 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %256, ptr noundef nonnull @.str.85) #26
  br label %278

259:                                              ; preds = %252
  %260 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %256, ptr noundef nonnull @.str.86) #26
  br label %278

261:                                              ; preds = %250
  %262 = icmp eq ptr %109, null
  br i1 %262, label %263, label %267

263:                                              ; preds = %261
  br i1 %81, label %283, label %264

264:                                              ; preds = %263
  %265 = load ptr, ptr @stderr, align 8, !tbaa !8
  %266 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %265, ptr noundef nonnull @.str.87) #26
  br label %278

267:                                              ; preds = %261
  br i1 %81, label %272, label %268

268:                                              ; preds = %267
  %269 = load ptr, ptr @stderr, align 8, !tbaa !8
  %270 = call ptr @CommandOptionToMnemonic(i32 noundef 11, i64 noundef %87) #26
  %271 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %269, ptr noundef nonnull @.str.88, ptr noundef %270) #26
  br label %272

272:                                              ; preds = %268, %267
  %273 = call i32 @CompositeImageChannel(ptr noundef nonnull %109, i32 noundef %84, i32 noundef %71, ptr noundef %211, i64 noundef 0, i64 noundef 0) #26
  %274 = call ptr @DestroyImage(ptr noundef %211) #26
  br label %275

275:                                              ; preds = %246, %272
  %276 = phi ptr [ %109, %272 ], [ %211, %246 ]
  %277 = phi ptr [ %0, %272 ], [ %211, %246 ]
  br i1 %81, label %283, label %278

278:                                              ; preds = %257, %259, %264, %275
  %279 = phi ptr [ %277, %275 ], [ %0, %264 ], [ %211, %259 ], [ %211, %257 ]
  %280 = phi ptr [ %276, %275 ], [ %211, %264 ], [ %211, %259 ], [ %211, %257 ]
  %281 = load ptr, ptr @stderr, align 8, !tbaa !8
  %282 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %281, ptr noundef nonnull @.str.78) #26
  br label %283

283:                                              ; preds = %251, %263, %278, %275
  %284 = phi ptr [ %279, %278 ], [ %277, %275 ], [ %0, %263 ], [ %211, %251 ]
  %285 = phi ptr [ %280, %278 ], [ %276, %275 ], [ %211, %263 ], [ %211, %251 ]
  %286 = getelementptr inbounds %struct.KernelInfo, ptr %108, i64 0, i32 11
  %287 = load ptr, ptr %286, align 8, !tbaa !12
  %288 = icmp eq ptr %107, null
  br i1 %288, label %292, label %289

289:                                              ; preds = %283
  %290 = getelementptr inbounds %struct.KernelInfo, ptr %107, i64 0, i32 11
  %291 = load ptr, ptr %290, align 8, !tbaa !12
  br label %292

292:                                              ; preds = %289, %283
  %293 = phi ptr [ %291, %289 ], [ null, %283 ]
  %294 = add i64 %105, 1
  %295 = icmp eq ptr %287, null
  br i1 %295, label %88, label %102, !llvm.loop !104

296:                                              ; preds = %36, %47
  %297 = icmp eq ptr %31, %0
  %298 = select i1 %297, ptr null, ptr %0
  br label %304

299:                                              ; preds = %199, %174, %180
  %300 = phi ptr [ %175, %180 ], [ %183, %199 ], [ null, %174 ]
  %301 = icmp eq ptr %170, %109
  %302 = select i1 %301, ptr null, ptr %170
  %303 = icmp eq ptr %109, null
  br i1 %303, label %311, label %304

304:                                              ; preds = %296, %299
  %305 = phi ptr [ %298, %296 ], [ %302, %299 ]
  %306 = phi ptr [ null, %296 ], [ %77, %299 ]
  %307 = phi ptr [ %31, %296 ], [ %109, %299 ]
  %308 = phi ptr [ null, %296 ], [ %145, %299 ]
  %309 = phi ptr [ null, %296 ], [ %300, %299 ]
  %310 = call ptr @DestroyImage(ptr noundef nonnull %307) #26
  br label %311

311:                                              ; preds = %88, %92, %299, %304
  %312 = phi ptr [ %309, %304 ], [ %300, %299 ], [ %98, %92 ], [ %210, %88 ]
  %313 = phi ptr [ %308, %304 ], [ %145, %299 ], [ %97, %92 ], [ %247, %88 ]
  %314 = phi ptr [ %310, %304 ], [ null, %299 ], [ %96, %92 ], [ %285, %88 ]
  %315 = phi ptr [ %306, %304 ], [ %77, %299 ], [ %77, %92 ], [ %77, %88 ]
  %316 = phi ptr [ %305, %304 ], [ %302, %299 ], [ %95, %92 ], [ %284, %88 ]
  %317 = icmp eq ptr %316, %314
  %318 = icmp eq ptr %316, %0
  %319 = or i1 %317, %318
  %320 = icmp eq ptr %316, null
  %321 = or i1 %320, %319
  br i1 %321, label %324, label %322

322:                                              ; preds = %311
  %323 = call ptr @DestroyImage(ptr noundef nonnull %316) #26
  br label %324

324:                                              ; preds = %322, %311
  %325 = icmp eq ptr %312, null
  br i1 %325, label %328, label %326

326:                                              ; preds = %324
  %327 = call ptr @DestroyImage(ptr noundef nonnull %312) #26
  br label %328

328:                                              ; preds = %326, %324
  %329 = icmp eq ptr %313, null
  br i1 %329, label %332, label %330

330:                                              ; preds = %328
  %331 = call ptr @DestroyImage(ptr noundef nonnull %313) #26
  br label %332

332:                                              ; preds = %70, %330, %328
  %333 = phi ptr [ %315, %330 ], [ %315, %328 ], [ %77, %70 ]
  %334 = phi ptr [ %314, %330 ], [ %314, %328 ], [ null, %70 ]
  %335 = icmp eq ptr %333, null
  br i1 %335, label %338, label %336

336:                                              ; preds = %332
  %337 = call ptr @DestroyKernelInfo(ptr noundef nonnull %333) #25
  br label %338

338:                                              ; preds = %51, %49, %30, %61, %332, %336, %8
  %339 = phi ptr [ null, %8 ], [ %334, %336 ], [ %334, %332 ], [ %31, %51 ], [ %31, %49 ], [ null, %30 ], [ null, %61 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %9) #24
  ret ptr %339
}

; Function Attrs: optsize
declare i32 @IsMagickTrue(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetImageArtifact(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @MorphologyPrimitiveDirect(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca %struct._MagickPixelPacket, align 8
  %7 = alloca %struct._MagickPixelPacket, align 8
  %8 = getelementptr inbounds %struct.KernelInfo, ptr %3, i64 0, i32 3
  %9 = getelementptr inbounds %struct.KernelInfo, ptr %3, i64 0, i32 4
  %10 = load <2 x i64>, ptr %8, align 8, !tbaa !79
  switch i32 %1, label %16 [
    i32 7, label %11
    i32 21, label %11
  ]

11:                                               ; preds = %5, %5
  %12 = getelementptr inbounds %struct.KernelInfo, ptr %3, i64 0, i32 1
  %13 = xor <2 x i64> %10, <i64 -1, i64 -1>
  %14 = load <2 x i64>, ptr %12, align 8, !tbaa !79
  %15 = add <2 x i64> %14, %13
  br label %16

16:                                               ; preds = %5, %11
  %17 = phi <2 x i64> [ %10, %5 ], [ %15, %11 ]
  %18 = extractelement <2 x i64> %17, i64 0
  %19 = sub i64 0, %18
  %20 = tail call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %4) #26
  %21 = tail call ptr @AcquireAuthenticCacheView(ptr noundef %0, ptr noundef %4) #26
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %23 = load i64, ptr %22, align 8, !tbaa !88
  %24 = getelementptr inbounds %struct.KernelInfo, ptr %3, i64 0, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !24
  %26 = add i64 %23, -1
  %27 = add i64 %26, %25
  %28 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %29 = load i64, ptr %28, align 8, !tbaa !100
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %905

31:                                               ; preds = %16
  %32 = extractelement <2 x i64> %17, i64 1
  %33 = add i64 %32, 1
  %34 = mul nsw i64 %27, %32
  %35 = add nsw i64 %34, %18
  %36 = icmp eq i32 %1, 21
  %37 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 8
  %38 = icmp eq i32 %1, 7
  %39 = getelementptr inbounds %struct.KernelInfo, ptr %3, i64 0, i32 5
  %40 = getelementptr inbounds %struct.KernelInfo, ptr %3, i64 0, i32 2
  %41 = icmp slt i64 %32, 0
  %42 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 5
  %43 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 6
  %44 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 7
  %45 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %46 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 9
  %47 = icmp sgt i64 %18, 0
  %48 = and i32 %2, 1
  %49 = icmp eq i32 %48, 0
  %50 = and i32 %2, 2
  %51 = icmp eq i32 %50, 0
  %52 = and i32 %2, 4
  %53 = icmp eq i32 %52, 0
  %54 = and i32 %2, 8
  %55 = icmp eq i32 %54, 0
  %56 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %57 = and i32 %2, 32
  %58 = icmp eq i32 %57, 0
  %59 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %62

60:                                               ; preds = %455
  %61 = icmp eq i32 %457, 0
  br i1 %61, label %461, label %62, !llvm.loop !105

62:                                               ; preds = %31, %60
  %63 = phi i64 [ 0, %31 ], [ %443, %60 ]
  %64 = phi i64 [ 0, %31 ], [ %458, %60 ]
  %65 = phi i64 [ 0, %31 ], [ %456, %60 ]
  %66 = sub nsw i64 %64, %32
  %67 = call ptr @GetCacheViewVirtualPixels(ptr noundef %20, i64 noundef %19, i64 noundef %66, i64 noundef %27, i64 noundef %33, ptr noundef %4) #32
  %68 = load i64, ptr %22, align 8, !tbaa !88
  %69 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %21, i64 noundef 0, i64 noundef %64, i64 noundef %68, i64 noundef 1, ptr noundef %4) #32
  %70 = icmp eq ptr %67, null
  %71 = icmp eq ptr %69, null
  %72 = select i1 %70, i1 true, i1 %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %62
  %74 = load i64, ptr %28, align 8, !tbaa !100
  br label %461

75:                                               ; preds = %62
  %76 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %20) #26
  %77 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %21) #26
  %78 = load i64, ptr %22, align 8, !tbaa !88
  %79 = icmp sgt i64 %78, 0
  br i1 %79, label %80, label %442

80:                                               ; preds = %75
  %81 = getelementptr inbounds i16, ptr %77, i64 %19
  %82 = icmp eq ptr %77, null
  %83 = icmp eq ptr %76, null
  %84 = getelementptr inbounds i16, ptr %76, i64 %35
  br label %85

85:                                               ; preds = %80, %435
  %86 = phi i64 [ 0, %80 ], [ %439, %435 ]
  %87 = phi ptr [ %69, %80 ], [ %438, %435 ]
  %88 = phi ptr [ %67, %80 ], [ %437, %435 ]
  %89 = phi i64 [ %63, %80 ], [ %436, %435 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #24
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %6) #26
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %87, ptr noundef %77, ptr noundef nonnull %6) #25
  br i1 %36, label %280, label %90

90:                                               ; preds = %85
  %91 = load float, ptr %37, align 4, !tbaa !106
  %92 = fsub float 6.553500e+04, %91
  store float %92, ptr %37, align 4, !tbaa !106
  br i1 %38, label %93, label %362

93:                                               ; preds = %90
  %94 = load ptr, ptr %39, align 8, !tbaa !32
  %95 = load i64, ptr %24, align 8, !tbaa !24
  br i1 %41, label %202, label %96

96:                                               ; preds = %93
  %97 = load i64, ptr %40, align 8, !tbaa !25
  %98 = mul i64 %97, %95
  %99 = getelementptr double, ptr %94, i64 %98
  %100 = getelementptr double, ptr %99, i64 -1
  %101 = icmp sgt i64 %95, 0
  %102 = load float, ptr %42, align 8, !tbaa !109
  %103 = load float, ptr %43, align 4, !tbaa !110
  %104 = load float, ptr %44, align 8, !tbaa !111
  %105 = load float, ptr %46, align 8, !tbaa !112
  br label %106

106:                                              ; preds = %96, %191
  %107 = phi float [ %105, %96 ], [ %192, %191 ]
  %108 = phi float [ %104, %96 ], [ %193, %191 ]
  %109 = phi float [ %103, %96 ], [ %194, %191 ]
  %110 = phi float [ %102, %96 ], [ %195, %191 ]
  %111 = phi ptr [ %76, %96 ], [ %199, %191 ]
  %112 = phi ptr [ %88, %96 ], [ %198, %191 ]
  %113 = phi ptr [ %100, %96 ], [ %197, %191 ]
  %114 = phi i64 [ 0, %96 ], [ %200, %191 ]
  %115 = phi float [ %92, %96 ], [ %196, %191 ]
  br i1 %101, label %116, label %191

116:                                              ; preds = %106
  %117 = icmp eq ptr %111, null
  br label %118

118:                                              ; preds = %116, %177
  %119 = phi float [ %107, %116 ], [ %178, %177 ]
  %120 = phi float [ %108, %116 ], [ %179, %177 ]
  %121 = phi float [ %109, %116 ], [ %180, %177 ]
  %122 = phi float [ %110, %116 ], [ %181, %177 ]
  %123 = phi float [ %115, %116 ], [ %182, %177 ]
  %124 = phi float [ %107, %116 ], [ %183, %177 ]
  %125 = phi float [ %108, %116 ], [ %184, %177 ]
  %126 = phi float [ %109, %116 ], [ %185, %177 ]
  %127 = phi float [ %110, %116 ], [ %186, %177 ]
  %128 = phi ptr [ %113, %116 ], [ %189, %177 ]
  %129 = phi i64 [ 0, %116 ], [ %188, %177 ]
  %130 = phi float [ %115, %116 ], [ %187, %177 ]
  %131 = load double, ptr %128, align 8, !tbaa !33
  %132 = fcmp uno double %131, 0.000000e+00
  br i1 %132, label %177, label %133

133:                                              ; preds = %118
  %134 = fpext float %127 to double
  %135 = getelementptr inbounds %struct._PixelPacket, ptr %112, i64 %129
  %136 = getelementptr inbounds %struct._PixelPacket, ptr %112, i64 %129, i32 2
  %137 = load i16, ptr %136, align 2, !tbaa !113
  %138 = uitofp i16 %137 to double
  %139 = fadd double %131, %138
  %140 = call fastcc double @MagickMin(double noundef %134, double noundef %139) #25
  %141 = fptrunc double %140 to float
  store float %141, ptr %42, align 8, !tbaa !109
  %142 = fpext float %126 to double
  %143 = getelementptr inbounds %struct._PixelPacket, ptr %112, i64 %129, i32 1
  %144 = load i16, ptr %143, align 2, !tbaa !114
  %145 = uitofp i16 %144 to double
  %146 = fadd double %131, %145
  %147 = call fastcc double @MagickMin(double noundef %142, double noundef %146) #25
  %148 = fptrunc double %147 to float
  store float %148, ptr %43, align 4, !tbaa !110
  %149 = fpext float %125 to double
  %150 = load i16, ptr %135, align 2, !tbaa !115
  %151 = uitofp i16 %150 to double
  %152 = fadd double %131, %151
  %153 = call fastcc double @MagickMin(double noundef %149, double noundef %152) #25
  %154 = fptrunc double %153 to float
  store float %154, ptr %44, align 8, !tbaa !111
  %155 = fpext float %130 to double
  %156 = fadd double %131, 6.553500e+04
  %157 = getelementptr inbounds %struct._PixelPacket, ptr %112, i64 %129, i32 3
  %158 = load i16, ptr %157, align 2, !tbaa !116
  %159 = uitofp i16 %158 to double
  %160 = fsub double %156, %159
  %161 = call fastcc double @MagickMin(double noundef %155, double noundef %160) #25
  %162 = fptrunc double %161 to float
  store float %162, ptr %37, align 4, !tbaa !106
  %163 = load i32, ptr %45, align 4, !tbaa !117
  %164 = icmp eq i32 %163, 12
  br i1 %164, label %165, label %177

165:                                              ; preds = %133
  %166 = fpext float %124 to double
  br i1 %117, label %171, label %167

167:                                              ; preds = %165
  %168 = getelementptr inbounds i16, ptr %111, i64 %129
  %169 = load i16, ptr %168, align 2, !tbaa !10
  %170 = zext i16 %169 to i32
  br label %171

171:                                              ; preds = %165, %167
  %172 = phi i32 [ %170, %167 ], [ 0, %165 ]
  %173 = sitofp i32 %172 to double
  %174 = fadd double %131, %173
  %175 = call fastcc double @MagickMin(double noundef %166, double noundef %174) #25
  %176 = fptrunc double %175 to float
  store float %176, ptr %46, align 8, !tbaa !112
  br label %177

177:                                              ; preds = %133, %171, %118
  %178 = phi float [ %119, %133 ], [ %176, %171 ], [ %119, %118 ]
  %179 = phi float [ %154, %133 ], [ %154, %171 ], [ %120, %118 ]
  %180 = phi float [ %148, %133 ], [ %148, %171 ], [ %121, %118 ]
  %181 = phi float [ %141, %133 ], [ %141, %171 ], [ %122, %118 ]
  %182 = phi float [ %162, %133 ], [ %162, %171 ], [ %123, %118 ]
  %183 = phi float [ %124, %133 ], [ %176, %171 ], [ %124, %118 ]
  %184 = phi float [ %154, %133 ], [ %154, %171 ], [ %125, %118 ]
  %185 = phi float [ %148, %133 ], [ %148, %171 ], [ %126, %118 ]
  %186 = phi float [ %141, %133 ], [ %141, %171 ], [ %127, %118 ]
  %187 = phi float [ %162, %133 ], [ %162, %171 ], [ %130, %118 ]
  %188 = add nuw nsw i64 %129, 1
  %189 = getelementptr inbounds double, ptr %128, i64 -1
  %190 = icmp eq i64 %188, %95
  br i1 %190, label %191, label %118, !llvm.loop !118

191:                                              ; preds = %177, %106
  %192 = phi float [ %107, %106 ], [ %178, %177 ]
  %193 = phi float [ %108, %106 ], [ %179, %177 ]
  %194 = phi float [ %109, %106 ], [ %180, %177 ]
  %195 = phi float [ %110, %106 ], [ %181, %177 ]
  %196 = phi float [ %115, %106 ], [ %182, %177 ]
  %197 = phi ptr [ %113, %106 ], [ %189, %177 ]
  %198 = getelementptr inbounds %struct._PixelPacket, ptr %112, i64 %27
  %199 = getelementptr inbounds i16, ptr %111, i64 %27
  %200 = add nuw i64 %114, 1
  %201 = icmp eq i64 %114, %32
  br i1 %201, label %202, label %106, !llvm.loop !119

202:                                              ; preds = %191, %93
  %203 = phi float [ %92, %93 ], [ %196, %191 ]
  %204 = getelementptr inbounds %struct._PixelPacket, ptr %87, i64 %19
  br i1 %47, label %205, label %360

205:                                              ; preds = %202
  %206 = load i64, ptr %9, align 8, !tbaa !28
  %207 = add nsw i64 %206, 1
  %208 = mul i64 %207, %95
  %209 = getelementptr double, ptr %94, i64 %208
  %210 = load float, ptr %42, align 8, !tbaa !109
  %211 = load float, ptr %43, align 4, !tbaa !110
  %212 = load float, ptr %44, align 8, !tbaa !111
  %213 = load float, ptr %46, align 8, !tbaa !112
  br label %214

214:                                              ; preds = %205, %272
  %215 = phi float [ %213, %205 ], [ %273, %272 ]
  %216 = phi float [ %212, %205 ], [ %274, %272 ]
  %217 = phi float [ %211, %205 ], [ %275, %272 ]
  %218 = phi float [ %210, %205 ], [ %276, %272 ]
  %219 = phi ptr [ %209, %205 ], [ %222, %272 ]
  %220 = phi i64 [ 0, %205 ], [ %278, %272 ]
  %221 = phi float [ %203, %205 ], [ %277, %272 ]
  %222 = getelementptr inbounds double, ptr %219, i64 -1
  %223 = add nuw nsw i64 %220, %86
  %224 = icmp slt i64 %223, %18
  br i1 %224, label %272, label %225

225:                                              ; preds = %214
  %226 = load double, ptr %222, align 8, !tbaa !33
  %227 = fcmp uno double %226, 0.000000e+00
  br i1 %227, label %272, label %228

228:                                              ; preds = %225
  %229 = fpext float %218 to double
  %230 = getelementptr inbounds %struct._PixelPacket, ptr %204, i64 %220
  %231 = getelementptr inbounds %struct._PixelPacket, ptr %204, i64 %220, i32 2
  %232 = load i16, ptr %231, align 2, !tbaa !113
  %233 = uitofp i16 %232 to double
  %234 = fadd double %226, %233
  %235 = call fastcc double @MagickMin(double noundef %229, double noundef %234) #25
  %236 = fptrunc double %235 to float
  store float %236, ptr %42, align 8, !tbaa !109
  %237 = fpext float %217 to double
  %238 = getelementptr inbounds %struct._PixelPacket, ptr %204, i64 %220, i32 1
  %239 = load i16, ptr %238, align 2, !tbaa !114
  %240 = uitofp i16 %239 to double
  %241 = fadd double %226, %240
  %242 = call fastcc double @MagickMin(double noundef %237, double noundef %241) #25
  %243 = fptrunc double %242 to float
  store float %243, ptr %43, align 4, !tbaa !110
  %244 = fpext float %216 to double
  %245 = load i16, ptr %230, align 2, !tbaa !115
  %246 = uitofp i16 %245 to double
  %247 = fadd double %226, %246
  %248 = call fastcc double @MagickMin(double noundef %244, double noundef %247) #25
  %249 = fptrunc double %248 to float
  store float %249, ptr %44, align 8, !tbaa !111
  %250 = fpext float %221 to double
  %251 = fadd double %226, 6.553500e+04
  %252 = getelementptr inbounds %struct._PixelPacket, ptr %204, i64 %220, i32 3
  %253 = load i16, ptr %252, align 2, !tbaa !116
  %254 = uitofp i16 %253 to double
  %255 = fsub double %251, %254
  %256 = call fastcc double @MagickMin(double noundef %250, double noundef %255) #25
  %257 = fptrunc double %256 to float
  store float %257, ptr %37, align 4, !tbaa !106
  %258 = load i32, ptr %45, align 4, !tbaa !117
  %259 = icmp eq i32 %258, 12
  br i1 %259, label %260, label %272

260:                                              ; preds = %228
  %261 = fpext float %215 to double
  br i1 %82, label %266, label %262

262:                                              ; preds = %260
  %263 = getelementptr inbounds i16, ptr %81, i64 %220
  %264 = load i16, ptr %263, align 2, !tbaa !10
  %265 = zext i16 %264 to i32
  br label %266

266:                                              ; preds = %260, %262
  %267 = phi i32 [ %265, %262 ], [ 0, %260 ]
  %268 = sitofp i32 %267 to double
  %269 = fadd double %226, %268
  %270 = call fastcc double @MagickMin(double noundef %261, double noundef %269) #25
  %271 = fptrunc double %270 to float
  store float %271, ptr %46, align 8, !tbaa !112
  br label %272

272:                                              ; preds = %228, %266, %225, %214
  %273 = phi float [ %215, %228 ], [ %271, %266 ], [ %215, %225 ], [ %215, %214 ]
  %274 = phi float [ %249, %228 ], [ %249, %266 ], [ %216, %225 ], [ %216, %214 ]
  %275 = phi float [ %243, %228 ], [ %243, %266 ], [ %217, %225 ], [ %217, %214 ]
  %276 = phi float [ %236, %228 ], [ %236, %266 ], [ %218, %225 ], [ %218, %214 ]
  %277 = phi float [ %257, %228 ], [ %257, %266 ], [ %221, %225 ], [ %221, %214 ]
  %278 = add nuw nsw i64 %220, 1
  %279 = icmp eq i64 %278, %18
  br i1 %279, label %360, label %214, !llvm.loop !120

280:                                              ; preds = %85
  %281 = load ptr, ptr %39, align 8, !tbaa !32
  %282 = load i64, ptr %24, align 8, !tbaa !24
  br i1 %41, label %325, label %283

283:                                              ; preds = %280
  %284 = load i64, ptr %40, align 8, !tbaa !25
  %285 = mul i64 %284, %282
  %286 = getelementptr double, ptr %281, i64 %285
  %287 = getelementptr double, ptr %286, i64 -1
  %288 = icmp sgt i64 %282, 0
  br label %289

289:                                              ; preds = %283, %319
  %290 = phi ptr [ %76, %283 ], [ %322, %319 ]
  %291 = phi ptr [ %88, %283 ], [ %321, %319 ]
  %292 = phi ptr [ %287, %283 ], [ %320, %319 ]
  %293 = phi i64 [ 0, %283 ], [ %323, %319 ]
  br i1 %288, label %294, label %319

294:                                              ; preds = %289, %315
  %295 = phi ptr [ %317, %315 ], [ %292, %289 ]
  %296 = phi i64 [ %316, %315 ], [ 0, %289 ]
  %297 = load double, ptr %295, align 8, !tbaa !33
  %298 = fcmp uno double %297, 0.000000e+00
  br i1 %298, label %315, label %299

299:                                              ; preds = %294
  %300 = load float, ptr %37, align 4, !tbaa !106
  %301 = fpext float %300 to double
  %302 = getelementptr inbounds %struct._PixelPacket, ptr %291, i64 %296, i32 3
  %303 = load i16, ptr %302, align 2, !tbaa !116
  %304 = uitofp i16 %303 to double
  %305 = fadd double %297, %304
  %306 = fcmp olt double %305, %301
  br i1 %306, label %307, label %315

307:                                              ; preds = %299
  %308 = getelementptr inbounds %struct._PixelPacket, ptr %291, i64 %296
  %309 = getelementptr inbounds i16, ptr %290, i64 %296
  call fastcc void @SetMagickPixelPacket(ptr noundef %0, ptr noundef %308, ptr noundef %309, ptr noundef nonnull %6) #25
  %310 = load double, ptr %295, align 8, !tbaa !33
  %311 = load float, ptr %37, align 4, !tbaa !106
  %312 = fpext float %311 to double
  %313 = fadd double %310, %312
  %314 = fptrunc double %313 to float
  store float %314, ptr %37, align 4, !tbaa !106
  br label %315

315:                                              ; preds = %299, %307, %294
  %316 = add nuw nsw i64 %296, 1
  %317 = getelementptr inbounds double, ptr %295, i64 -1
  %318 = icmp eq i64 %316, %282
  br i1 %318, label %319, label %294, !llvm.loop !121

319:                                              ; preds = %315, %289
  %320 = phi ptr [ %292, %289 ], [ %317, %315 ]
  %321 = getelementptr inbounds %struct._PixelPacket, ptr %291, i64 %27
  %322 = getelementptr inbounds i16, ptr %290, i64 %27
  %323 = add nuw i64 %293, 1
  %324 = icmp eq i64 %293, %32
  br i1 %324, label %325, label %289, !llvm.loop !122

325:                                              ; preds = %319, %280
  %326 = getelementptr inbounds %struct._PixelPacket, ptr %87, i64 %19
  br i1 %47, label %327, label %360

327:                                              ; preds = %325
  %328 = load i64, ptr %9, align 8, !tbaa !28
  %329 = add nsw i64 %328, 1
  %330 = mul i64 %329, %282
  %331 = getelementptr double, ptr %281, i64 %330
  br label %332

332:                                              ; preds = %327, %357
  %333 = phi ptr [ %335, %357 ], [ %331, %327 ]
  %334 = phi i64 [ %358, %357 ], [ 0, %327 ]
  %335 = getelementptr inbounds double, ptr %333, i64 -1
  %336 = add nuw nsw i64 %334, %86
  %337 = icmp slt i64 %336, %18
  br i1 %337, label %357, label %338

338:                                              ; preds = %332
  %339 = load double, ptr %335, align 8, !tbaa !33
  %340 = fcmp uno double %339, 0.000000e+00
  br i1 %340, label %357, label %341

341:                                              ; preds = %338
  %342 = load float, ptr %37, align 4, !tbaa !106
  %343 = fpext float %342 to double
  %344 = getelementptr inbounds %struct._PixelPacket, ptr %326, i64 %334, i32 3
  %345 = load i16, ptr %344, align 2, !tbaa !116
  %346 = uitofp i16 %345 to double
  %347 = fadd double %339, %346
  %348 = fcmp olt double %347, %343
  br i1 %348, label %349, label %357

349:                                              ; preds = %341
  %350 = getelementptr inbounds %struct._PixelPacket, ptr %326, i64 %334
  %351 = getelementptr inbounds i16, ptr %81, i64 %334
  call fastcc void @SetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %350, ptr noundef nonnull %351, ptr noundef nonnull %6) #25
  %352 = load double, ptr %335, align 8, !tbaa !33
  %353 = load float, ptr %37, align 4, !tbaa !106
  %354 = fpext float %353 to double
  %355 = fadd double %352, %354
  %356 = fptrunc double %355 to float
  store float %356, ptr %37, align 4, !tbaa !106
  br label %357

357:                                              ; preds = %341, %349, %338, %332
  %358 = add nuw nsw i64 %334, 1
  %359 = icmp eq i64 %358, %18
  br i1 %359, label %360, label %332, !llvm.loop !123

360:                                              ; preds = %272, %357, %202, %325
  br i1 %36, label %361, label %362

361:                                              ; preds = %360
  call fastcc void @SetPixelPacket(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %87, ptr noundef %77) #25
  br label %394

362:                                              ; preds = %90, %360
  br i1 %49, label %367, label %363

363:                                              ; preds = %362
  %364 = load float, ptr %42, align 8, !tbaa !109
  %365 = call fastcc zeroext i16 @ClampToQuantum(float noundef %364) #25
  %366 = getelementptr inbounds %struct._PixelPacket, ptr %87, i64 0, i32 2
  store i16 %365, ptr %366, align 2, !tbaa !113
  br label %367

367:                                              ; preds = %363, %362
  br i1 %51, label %372, label %368

368:                                              ; preds = %367
  %369 = load float, ptr %43, align 4, !tbaa !110
  %370 = call fastcc zeroext i16 @ClampToQuantum(float noundef %369) #25
  %371 = getelementptr inbounds %struct._PixelPacket, ptr %87, i64 0, i32 1
  store i16 %370, ptr %371, align 2, !tbaa !114
  br label %372

372:                                              ; preds = %368, %367
  br i1 %53, label %376, label %373

373:                                              ; preds = %372
  %374 = load float, ptr %44, align 8, !tbaa !111
  %375 = call fastcc zeroext i16 @ClampToQuantum(float noundef %374) #25
  store i16 %375, ptr %87, align 2, !tbaa !115
  br label %376

376:                                              ; preds = %373, %372
  br i1 %55, label %385, label %377

377:                                              ; preds = %376
  %378 = load i32, ptr %56, align 8, !tbaa !124
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %385, label %380

380:                                              ; preds = %377
  %381 = load float, ptr %37, align 4, !tbaa !106
  %382 = call fastcc zeroext i16 @ClampToQuantum(float noundef %381) #25
  %383 = xor i16 %382, -1
  %384 = getelementptr inbounds %struct._PixelPacket, ptr %87, i64 0, i32 3
  store i16 %383, ptr %384, align 2, !tbaa !116
  br label %385

385:                                              ; preds = %380, %377, %376
  br i1 %58, label %394, label %386

386:                                              ; preds = %385
  %387 = load i32, ptr %45, align 4, !tbaa !117
  %388 = icmp ne i32 %387, 12
  %389 = select i1 %388, i1 true, i1 %82
  br i1 %389, label %394, label %390

390:                                              ; preds = %386
  %391 = getelementptr inbounds i16, ptr %77, i64 %86
  %392 = load float, ptr %46, align 8, !tbaa !112
  %393 = call fastcc zeroext i16 @ClampToQuantum(float noundef %392) #25
  store i16 %393, ptr %391, align 2, !tbaa !10
  br label %394

394:                                              ; preds = %385, %386, %390, %361
  %395 = getelementptr inbounds %struct._PixelPacket, ptr %88, i64 %35
  %396 = getelementptr inbounds %struct._PixelPacket, ptr %88, i64 %35, i32 2
  %397 = load i16, ptr %396, align 2, !tbaa !113
  %398 = getelementptr inbounds %struct._PixelPacket, ptr %87, i64 0, i32 2
  %399 = load i16, ptr %398, align 2, !tbaa !113
  %400 = icmp eq i16 %397, %399
  br i1 %400, label %401, label %433

401:                                              ; preds = %394
  %402 = getelementptr inbounds %struct._PixelPacket, ptr %88, i64 %35, i32 1
  %403 = load i16, ptr %402, align 2, !tbaa !114
  %404 = getelementptr inbounds %struct._PixelPacket, ptr %87, i64 0, i32 1
  %405 = load i16, ptr %404, align 2, !tbaa !114
  %406 = icmp eq i16 %403, %405
  br i1 %406, label %407, label %433

407:                                              ; preds = %401
  %408 = load i16, ptr %395, align 2, !tbaa !115
  %409 = load i16, ptr %87, align 2, !tbaa !115
  %410 = icmp eq i16 %408, %409
  br i1 %410, label %411, label %433

411:                                              ; preds = %407
  %412 = getelementptr inbounds %struct._PixelPacket, ptr %88, i64 %35, i32 3
  %413 = load i16, ptr %412, align 2, !tbaa !116
  %414 = getelementptr inbounds %struct._PixelPacket, ptr %87, i64 0, i32 3
  %415 = load i16, ptr %414, align 2, !tbaa !116
  %416 = icmp eq i16 %413, %415
  br i1 %416, label %417, label %433

417:                                              ; preds = %411
  %418 = load i32, ptr %45, align 4, !tbaa !117
  %419 = icmp eq i32 %418, 12
  br i1 %419, label %420, label %435

420:                                              ; preds = %417
  br i1 %83, label %424, label %421

421:                                              ; preds = %420
  %422 = load i16, ptr %84, align 2, !tbaa !10
  %423 = zext i16 %422 to i32
  br label %424

424:                                              ; preds = %420, %421
  %425 = phi i32 [ %423, %421 ], [ 0, %420 ]
  br i1 %82, label %430, label %426

426:                                              ; preds = %424
  %427 = getelementptr inbounds i16, ptr %77, i64 %86
  %428 = load i16, ptr %427, align 2, !tbaa !10
  %429 = zext i16 %428 to i32
  br label %430

430:                                              ; preds = %424, %426
  %431 = phi i32 [ %429, %426 ], [ 0, %424 ]
  %432 = icmp eq i32 %425, %431
  br i1 %432, label %435, label %433

433:                                              ; preds = %430, %411, %407, %401, %394
  %434 = add i64 %89, 1
  br label %435

435:                                              ; preds = %433, %430, %417
  %436 = phi i64 [ %434, %433 ], [ %89, %430 ], [ %89, %417 ]
  %437 = getelementptr inbounds %struct._PixelPacket, ptr %88, i64 1
  %438 = getelementptr inbounds %struct._PixelPacket, ptr %87, i64 1
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #24
  %439 = add nuw nsw i64 %86, 1
  %440 = load i64, ptr %22, align 8, !tbaa !88
  %441 = icmp slt i64 %439, %440
  br i1 %441, label %85, label %442, !llvm.loop !125

442:                                              ; preds = %435, %75
  %443 = phi i64 [ %63, %75 ], [ %436, %435 ]
  %444 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %21, ptr noundef %4) #32
  %445 = icmp ne i32 %444, 0
  %446 = zext i1 %445 to i32
  %447 = load ptr, ptr %59, align 8, !tbaa !126
  %448 = icmp eq ptr %447, null
  br i1 %448, label %455, label %449

449:                                              ; preds = %442
  %450 = add nsw i64 %65, 1
  %451 = load i64, ptr %28, align 8, !tbaa !100
  %452 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, i64 noundef %65, i64 noundef %451) #25
  %453 = icmp eq i32 %452, 0
  %454 = select i1 %453, i32 0, i32 %446
  br label %455

455:                                              ; preds = %449, %442
  %456 = phi i64 [ %450, %449 ], [ %65, %442 ]
  %457 = phi i32 [ %454, %449 ], [ %446, %442 ]
  %458 = add nuw nsw i64 %64, 1
  %459 = load i64, ptr %28, align 8, !tbaa !100
  %460 = icmp slt i64 %458, %459
  br i1 %460, label %60, label %461, !llvm.loop !105

461:                                              ; preds = %455, %60, %73
  %462 = phi i64 [ %74, %73 ], [ %459, %60 ], [ %459, %455 ]
  %463 = phi i64 [ %63, %73 ], [ %443, %60 ], [ %443, %455 ]
  %464 = phi i64 [ %65, %73 ], [ %456, %60 ], [ %456, %455 ]
  %465 = phi i32 [ 0, %73 ], [ %457, %455 ], [ 0, %60 ]
  %466 = icmp sgt i64 %462, 0
  br i1 %466, label %467, label %905

467:                                              ; preds = %461
  %468 = icmp eq i32 %1, 21
  %469 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 8
  %470 = icmp eq i32 %1, 7
  %471 = getelementptr inbounds %struct.KernelInfo, ptr %3, i64 0, i32 5
  %472 = getelementptr inbounds %struct.KernelInfo, ptr %3, i64 0, i32 2
  %473 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 5
  %474 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 6
  %475 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 7
  %476 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %477 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 9
  %478 = add nsw i64 %18, 1
  %479 = and i32 %2, 1
  %480 = icmp eq i32 %479, 0
  %481 = and i32 %2, 2
  %482 = icmp eq i32 %481, 0
  %483 = and i32 %2, 4
  %484 = icmp eq i32 %483, 0
  %485 = and i32 %2, 8
  %486 = icmp eq i32 %485, 0
  %487 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %488 = and i32 %2, 32
  %489 = icmp eq i32 %488, 0
  %490 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %491

491:                                              ; preds = %467, %901
  %492 = phi i64 [ %462, %467 ], [ %496, %901 ]
  %493 = phi i32 [ %465, %467 ], [ %903, %901 ]
  %494 = phi i64 [ %464, %467 ], [ %902, %901 ]
  %495 = phi i64 [ %463, %467 ], [ %889, %901 ]
  %496 = add nsw i64 %492, -1
  %497 = icmp eq i32 %493, 0
  br i1 %497, label %905, label %498

498:                                              ; preds = %491
  %499 = load i64, ptr %9, align 8, !tbaa !28
  %500 = add i64 %499, 1
  %501 = call ptr @GetCacheViewVirtualPixels(ptr noundef %20, i64 noundef %19, i64 noundef %496, i64 noundef %27, i64 noundef %500, ptr noundef %4) #32
  %502 = load i64, ptr %22, align 8, !tbaa !88
  %503 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %21, i64 noundef 0, i64 noundef %496, i64 noundef %502, i64 noundef 1, ptr noundef %4) #32
  %504 = icmp eq ptr %501, null
  %505 = icmp eq ptr %503, null
  %506 = select i1 %504, i1 true, i1 %505
  br i1 %506, label %905, label %507

507:                                              ; preds = %498
  %508 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %20) #26
  %509 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %21) #26
  %510 = load i64, ptr %22, align 8, !tbaa !88
  %511 = add i64 %510, -1
  %512 = icmp sgt i64 %511, -1
  br i1 %512, label %513, label %888

513:                                              ; preds = %507
  %514 = getelementptr inbounds %struct._PixelPacket, ptr %503, i64 %511
  %515 = getelementptr inbounds %struct._PixelPacket, ptr %501, i64 %511
  %516 = getelementptr inbounds i16, ptr %509, i64 %19
  %517 = icmp eq ptr %509, null
  %518 = icmp eq ptr %508, null
  %519 = getelementptr inbounds i16, ptr %508, i64 %18
  br label %520

520:                                              ; preds = %513, %882
  %521 = phi i64 [ %511, %513 ], [ %886, %882 ]
  %522 = phi ptr [ %514, %513 ], [ %885, %882 ]
  %523 = phi ptr [ %515, %513 ], [ %884, %882 ]
  %524 = phi i64 [ %495, %513 ], [ %883, %882 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #24
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %7) #26
  call fastcc void @SetMagickPixelPacket(ptr noundef %0, ptr noundef %522, ptr noundef %509, ptr noundef nonnull %7) #25
  br i1 %468, label %721, label %525

525:                                              ; preds = %520
  %526 = load float, ptr %469, align 4, !tbaa !106
  %527 = fsub float 6.553500e+04, %526
  store float %527, ptr %469, align 4, !tbaa !106
  br i1 %470, label %528, label %809

528:                                              ; preds = %525
  %529 = load ptr, ptr %471, align 8, !tbaa !32
  %530 = load i64, ptr %24, align 8, !tbaa !24
  %531 = load i64, ptr %9, align 8, !tbaa !28
  %532 = load i64, ptr %472, align 8, !tbaa !25
  %533 = icmp slt i64 %32, %532
  br i1 %533, label %534, label %640

534:                                              ; preds = %528
  %535 = add nsw i64 %531, 1
  %536 = mul i64 %535, %530
  %537 = getelementptr double, ptr %529, i64 %536
  %538 = getelementptr double, ptr %537, i64 -1
  %539 = icmp sgt i64 %530, 0
  %540 = load float, ptr %473, align 8, !tbaa !109
  %541 = load float, ptr %474, align 4, !tbaa !110
  %542 = load float, ptr %475, align 8, !tbaa !111
  %543 = load float, ptr %477, align 8, !tbaa !112
  br label %544

544:                                              ; preds = %534, %629
  %545 = phi float [ %543, %534 ], [ %630, %629 ]
  %546 = phi float [ %542, %534 ], [ %631, %629 ]
  %547 = phi float [ %541, %534 ], [ %632, %629 ]
  %548 = phi float [ %540, %534 ], [ %633, %629 ]
  %549 = phi ptr [ %508, %534 ], [ %637, %629 ]
  %550 = phi ptr [ %523, %534 ], [ %636, %629 ]
  %551 = phi ptr [ %538, %534 ], [ %635, %629 ]
  %552 = phi i64 [ %32, %534 ], [ %638, %629 ]
  %553 = phi float [ %527, %534 ], [ %634, %629 ]
  br i1 %539, label %554, label %629

554:                                              ; preds = %544
  %555 = icmp eq ptr %549, null
  br label %556

556:                                              ; preds = %554, %615
  %557 = phi float [ %545, %554 ], [ %616, %615 ]
  %558 = phi float [ %546, %554 ], [ %617, %615 ]
  %559 = phi float [ %547, %554 ], [ %618, %615 ]
  %560 = phi float [ %548, %554 ], [ %619, %615 ]
  %561 = phi float [ %553, %554 ], [ %620, %615 ]
  %562 = phi float [ %545, %554 ], [ %621, %615 ]
  %563 = phi float [ %546, %554 ], [ %622, %615 ]
  %564 = phi float [ %547, %554 ], [ %623, %615 ]
  %565 = phi float [ %548, %554 ], [ %624, %615 ]
  %566 = phi ptr [ %551, %554 ], [ %627, %615 ]
  %567 = phi i64 [ 0, %554 ], [ %626, %615 ]
  %568 = phi float [ %553, %554 ], [ %625, %615 ]
  %569 = load double, ptr %566, align 8, !tbaa !33
  %570 = fcmp uno double %569, 0.000000e+00
  br i1 %570, label %615, label %571

571:                                              ; preds = %556
  %572 = fpext float %565 to double
  %573 = getelementptr inbounds %struct._PixelPacket, ptr %550, i64 %567
  %574 = getelementptr inbounds %struct._PixelPacket, ptr %550, i64 %567, i32 2
  %575 = load i16, ptr %574, align 2, !tbaa !113
  %576 = uitofp i16 %575 to double
  %577 = fadd double %569, %576
  %578 = call fastcc double @MagickMin(double noundef %572, double noundef %577) #25
  %579 = fptrunc double %578 to float
  store float %579, ptr %473, align 8, !tbaa !109
  %580 = fpext float %564 to double
  %581 = getelementptr inbounds %struct._PixelPacket, ptr %550, i64 %567, i32 1
  %582 = load i16, ptr %581, align 2, !tbaa !114
  %583 = uitofp i16 %582 to double
  %584 = fadd double %569, %583
  %585 = call fastcc double @MagickMin(double noundef %580, double noundef %584) #25
  %586 = fptrunc double %585 to float
  store float %586, ptr %474, align 4, !tbaa !110
  %587 = fpext float %563 to double
  %588 = load i16, ptr %573, align 2, !tbaa !115
  %589 = uitofp i16 %588 to double
  %590 = fadd double %569, %589
  %591 = call fastcc double @MagickMin(double noundef %587, double noundef %590) #25
  %592 = fptrunc double %591 to float
  store float %592, ptr %475, align 8, !tbaa !111
  %593 = fpext float %568 to double
  %594 = fadd double %569, 6.553500e+04
  %595 = getelementptr inbounds %struct._PixelPacket, ptr %550, i64 %567, i32 3
  %596 = load i16, ptr %595, align 2, !tbaa !116
  %597 = uitofp i16 %596 to double
  %598 = fsub double %594, %597
  %599 = call fastcc double @MagickMin(double noundef %593, double noundef %598) #25
  %600 = fptrunc double %599 to float
  store float %600, ptr %469, align 4, !tbaa !106
  %601 = load i32, ptr %476, align 4, !tbaa !117
  %602 = icmp eq i32 %601, 12
  br i1 %602, label %603, label %615

603:                                              ; preds = %571
  %604 = fpext float %562 to double
  br i1 %555, label %609, label %605

605:                                              ; preds = %603
  %606 = getelementptr inbounds i16, ptr %549, i64 %567
  %607 = load i16, ptr %606, align 2, !tbaa !10
  %608 = zext i16 %607 to i32
  br label %609

609:                                              ; preds = %603, %605
  %610 = phi i32 [ %608, %605 ], [ 0, %603 ]
  %611 = sitofp i32 %610 to double
  %612 = fadd double %569, %611
  %613 = call fastcc double @MagickMin(double noundef %604, double noundef %612) #25
  %614 = fptrunc double %613 to float
  store float %614, ptr %477, align 8, !tbaa !112
  br label %615

615:                                              ; preds = %571, %609, %556
  %616 = phi float [ %557, %571 ], [ %614, %609 ], [ %557, %556 ]
  %617 = phi float [ %592, %571 ], [ %592, %609 ], [ %558, %556 ]
  %618 = phi float [ %586, %571 ], [ %586, %609 ], [ %559, %556 ]
  %619 = phi float [ %579, %571 ], [ %579, %609 ], [ %560, %556 ]
  %620 = phi float [ %600, %571 ], [ %600, %609 ], [ %561, %556 ]
  %621 = phi float [ %562, %571 ], [ %614, %609 ], [ %562, %556 ]
  %622 = phi float [ %592, %571 ], [ %592, %609 ], [ %563, %556 ]
  %623 = phi float [ %586, %571 ], [ %586, %609 ], [ %564, %556 ]
  %624 = phi float [ %579, %571 ], [ %579, %609 ], [ %565, %556 ]
  %625 = phi float [ %600, %571 ], [ %600, %609 ], [ %568, %556 ]
  %626 = add nuw nsw i64 %567, 1
  %627 = getelementptr inbounds double, ptr %566, i64 -1
  %628 = icmp eq i64 %626, %530
  br i1 %628, label %629, label %556, !llvm.loop !127

629:                                              ; preds = %615, %544
  %630 = phi float [ %545, %544 ], [ %616, %615 ]
  %631 = phi float [ %546, %544 ], [ %617, %615 ]
  %632 = phi float [ %547, %544 ], [ %618, %615 ]
  %633 = phi float [ %548, %544 ], [ %619, %615 ]
  %634 = phi float [ %553, %544 ], [ %620, %615 ]
  %635 = phi ptr [ %551, %544 ], [ %627, %615 ]
  %636 = getelementptr inbounds %struct._PixelPacket, ptr %550, i64 %27
  %637 = getelementptr inbounds i16, ptr %549, i64 %27
  %638 = add nsw i64 %552, 1
  %639 = icmp eq i64 %638, %532
  br i1 %639, label %640, label %544, !llvm.loop !128

640:                                              ; preds = %629, %528
  %641 = phi float [ %527, %528 ], [ %634, %629 ]
  %642 = getelementptr inbounds %struct._PixelPacket, ptr %522, i64 %19
  %643 = icmp slt i64 %478, %530
  br i1 %643, label %644, label %807

644:                                              ; preds = %640
  %645 = mul i64 %531, %530
  %646 = getelementptr double, ptr %529, i64 %645
  %647 = load i64, ptr %8, align 8, !tbaa !27
  %648 = getelementptr double, ptr %646, i64 %647
  %649 = sub i64 %521, %18
  %650 = load i64, ptr %22, align 8, !tbaa !88
  %651 = load float, ptr %473, align 8, !tbaa !109
  %652 = load float, ptr %474, align 4, !tbaa !110
  %653 = load float, ptr %475, align 8, !tbaa !111
  %654 = load float, ptr %477, align 8, !tbaa !112
  br label %655

655:                                              ; preds = %644, %713
  %656 = phi float [ %654, %644 ], [ %714, %713 ]
  %657 = phi float [ %653, %644 ], [ %715, %713 ]
  %658 = phi float [ %652, %644 ], [ %716, %713 ]
  %659 = phi float [ %651, %644 ], [ %717, %713 ]
  %660 = phi i64 [ %478, %644 ], [ %719, %713 ]
  %661 = phi ptr [ %648, %644 ], [ %663, %713 ]
  %662 = phi float [ %641, %644 ], [ %718, %713 ]
  %663 = getelementptr inbounds double, ptr %661, i64 -1
  %664 = add i64 %649, %660
  %665 = icmp slt i64 %664, %650
  br i1 %665, label %666, label %713

666:                                              ; preds = %655
  %667 = load double, ptr %663, align 8, !tbaa !33
  %668 = fcmp uno double %667, 0.000000e+00
  br i1 %668, label %713, label %669

669:                                              ; preds = %666
  %670 = fpext float %659 to double
  %671 = getelementptr inbounds %struct._PixelPacket, ptr %642, i64 %660
  %672 = getelementptr inbounds %struct._PixelPacket, ptr %642, i64 %660, i32 2
  %673 = load i16, ptr %672, align 2, !tbaa !113
  %674 = uitofp i16 %673 to double
  %675 = fadd double %667, %674
  %676 = call fastcc double @MagickMin(double noundef %670, double noundef %675) #25
  %677 = fptrunc double %676 to float
  store float %677, ptr %473, align 8, !tbaa !109
  %678 = fpext float %658 to double
  %679 = getelementptr inbounds %struct._PixelPacket, ptr %642, i64 %660, i32 1
  %680 = load i16, ptr %679, align 2, !tbaa !114
  %681 = uitofp i16 %680 to double
  %682 = fadd double %667, %681
  %683 = call fastcc double @MagickMin(double noundef %678, double noundef %682) #25
  %684 = fptrunc double %683 to float
  store float %684, ptr %474, align 4, !tbaa !110
  %685 = fpext float %657 to double
  %686 = load i16, ptr %671, align 2, !tbaa !115
  %687 = uitofp i16 %686 to double
  %688 = fadd double %667, %687
  %689 = call fastcc double @MagickMin(double noundef %685, double noundef %688) #25
  %690 = fptrunc double %689 to float
  store float %690, ptr %475, align 8, !tbaa !111
  %691 = fpext float %662 to double
  %692 = fadd double %667, 6.553500e+04
  %693 = getelementptr inbounds %struct._PixelPacket, ptr %642, i64 %660, i32 3
  %694 = load i16, ptr %693, align 2, !tbaa !116
  %695 = uitofp i16 %694 to double
  %696 = fsub double %692, %695
  %697 = call fastcc double @MagickMin(double noundef %691, double noundef %696) #25
  %698 = fptrunc double %697 to float
  store float %698, ptr %469, align 4, !tbaa !106
  %699 = load i32, ptr %476, align 4, !tbaa !117
  %700 = icmp eq i32 %699, 12
  br i1 %700, label %701, label %713

701:                                              ; preds = %669
  %702 = fpext float %656 to double
  br i1 %517, label %707, label %703

703:                                              ; preds = %701
  %704 = getelementptr inbounds i16, ptr %516, i64 %660
  %705 = load i16, ptr %704, align 2, !tbaa !10
  %706 = zext i16 %705 to i32
  br label %707

707:                                              ; preds = %701, %703
  %708 = phi i32 [ %706, %703 ], [ 0, %701 ]
  %709 = sitofp i32 %708 to double
  %710 = fadd double %667, %709
  %711 = call fastcc double @MagickMin(double noundef %702, double noundef %710) #25
  %712 = fptrunc double %711 to float
  store float %712, ptr %477, align 8, !tbaa !112
  br label %713

713:                                              ; preds = %669, %707, %666, %655
  %714 = phi float [ %656, %669 ], [ %712, %707 ], [ %656, %666 ], [ %656, %655 ]
  %715 = phi float [ %690, %669 ], [ %690, %707 ], [ %657, %666 ], [ %657, %655 ]
  %716 = phi float [ %684, %669 ], [ %684, %707 ], [ %658, %666 ], [ %658, %655 ]
  %717 = phi float [ %677, %669 ], [ %677, %707 ], [ %659, %666 ], [ %659, %655 ]
  %718 = phi float [ %698, %669 ], [ %698, %707 ], [ %662, %666 ], [ %662, %655 ]
  %719 = add nsw i64 %660, 1
  %720 = icmp eq i64 %719, %530
  br i1 %720, label %807, label %655, !llvm.loop !129

721:                                              ; preds = %520
  %722 = load ptr, ptr %471, align 8, !tbaa !32
  %723 = load i64, ptr %24, align 8, !tbaa !24
  %724 = load i64, ptr %9, align 8, !tbaa !28
  %725 = load i64, ptr %472, align 8, !tbaa !25
  %726 = icmp slt i64 %32, %725
  br i1 %726, label %727, label %769

727:                                              ; preds = %721
  %728 = add nsw i64 %724, 1
  %729 = mul i64 %728, %723
  %730 = getelementptr double, ptr %722, i64 %729
  %731 = getelementptr double, ptr %730, i64 -1
  %732 = icmp sgt i64 %723, 0
  br label %733

733:                                              ; preds = %727, %763
  %734 = phi ptr [ %508, %727 ], [ %766, %763 ]
  %735 = phi ptr [ %523, %727 ], [ %765, %763 ]
  %736 = phi ptr [ %731, %727 ], [ %764, %763 ]
  %737 = phi i64 [ %32, %727 ], [ %767, %763 ]
  br i1 %732, label %738, label %763

738:                                              ; preds = %733, %759
  %739 = phi ptr [ %761, %759 ], [ %736, %733 ]
  %740 = phi i64 [ %760, %759 ], [ 0, %733 ]
  %741 = load double, ptr %739, align 8, !tbaa !33
  %742 = fcmp uno double %741, 0.000000e+00
  br i1 %742, label %759, label %743

743:                                              ; preds = %738
  %744 = load float, ptr %469, align 4, !tbaa !106
  %745 = fpext float %744 to double
  %746 = getelementptr inbounds %struct._PixelPacket, ptr %735, i64 %740, i32 3
  %747 = load i16, ptr %746, align 2, !tbaa !116
  %748 = uitofp i16 %747 to double
  %749 = fadd double %741, %748
  %750 = fcmp olt double %749, %745
  br i1 %750, label %751, label %759

751:                                              ; preds = %743
  %752 = getelementptr inbounds %struct._PixelPacket, ptr %735, i64 %740
  %753 = getelementptr inbounds i16, ptr %734, i64 %740
  call fastcc void @SetMagickPixelPacket(ptr noundef %0, ptr noundef %752, ptr noundef %753, ptr noundef nonnull %7) #25
  %754 = load double, ptr %739, align 8, !tbaa !33
  %755 = load float, ptr %469, align 4, !tbaa !106
  %756 = fpext float %755 to double
  %757 = fadd double %754, %756
  %758 = fptrunc double %757 to float
  store float %758, ptr %469, align 4, !tbaa !106
  br label %759

759:                                              ; preds = %743, %751, %738
  %760 = add nuw nsw i64 %740, 1
  %761 = getelementptr inbounds double, ptr %739, i64 -1
  %762 = icmp eq i64 %760, %723
  br i1 %762, label %763, label %738, !llvm.loop !130

763:                                              ; preds = %759, %733
  %764 = phi ptr [ %736, %733 ], [ %761, %759 ]
  %765 = getelementptr inbounds %struct._PixelPacket, ptr %735, i64 %27
  %766 = getelementptr inbounds i16, ptr %734, i64 %27
  %767 = add nsw i64 %737, 1
  %768 = icmp eq i64 %767, %725
  br i1 %768, label %769, label %733, !llvm.loop !131

769:                                              ; preds = %763, %721
  %770 = getelementptr inbounds %struct._PixelPacket, ptr %522, i64 %19
  %771 = icmp slt i64 %478, %723
  br i1 %771, label %772, label %807

772:                                              ; preds = %769
  %773 = mul i64 %724, %723
  %774 = getelementptr double, ptr %722, i64 %773
  %775 = load i64, ptr %8, align 8, !tbaa !27
  %776 = getelementptr double, ptr %774, i64 %775
  %777 = sub i64 %521, %18
  %778 = load i64, ptr %22, align 8, !tbaa !88
  br label %779

779:                                              ; preds = %772, %804
  %780 = phi i64 [ %478, %772 ], [ %805, %804 ]
  %781 = phi ptr [ %776, %772 ], [ %782, %804 ]
  %782 = getelementptr inbounds double, ptr %781, i64 -1
  %783 = add i64 %777, %780
  %784 = icmp slt i64 %783, %778
  br i1 %784, label %785, label %804

785:                                              ; preds = %779
  %786 = load double, ptr %782, align 8, !tbaa !33
  %787 = fcmp uno double %786, 0.000000e+00
  br i1 %787, label %804, label %788

788:                                              ; preds = %785
  %789 = load float, ptr %469, align 4, !tbaa !106
  %790 = fpext float %789 to double
  %791 = getelementptr inbounds %struct._PixelPacket, ptr %770, i64 %780, i32 3
  %792 = load i16, ptr %791, align 2, !tbaa !116
  %793 = uitofp i16 %792 to double
  %794 = fadd double %786, %793
  %795 = fcmp olt double %794, %790
  br i1 %795, label %796, label %804

796:                                              ; preds = %788
  %797 = getelementptr inbounds %struct._PixelPacket, ptr %770, i64 %780
  %798 = getelementptr inbounds i16, ptr %516, i64 %780
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef %797, ptr noundef %798, ptr noundef nonnull %7) #25
  %799 = load double, ptr %782, align 8, !tbaa !33
  %800 = load float, ptr %469, align 4, !tbaa !106
  %801 = fpext float %800 to double
  %802 = fadd double %799, %801
  %803 = fptrunc double %802 to float
  store float %803, ptr %469, align 4, !tbaa !106
  br label %804

804:                                              ; preds = %788, %796, %785, %779
  %805 = add nsw i64 %780, 1
  %806 = icmp eq i64 %805, %723
  br i1 %806, label %807, label %779, !llvm.loop !132

807:                                              ; preds = %713, %804, %640, %769
  br i1 %468, label %808, label %809

808:                                              ; preds = %807
  call fastcc void @SetPixelPacket(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %522, ptr noundef %509) #25
  br label %841

809:                                              ; preds = %525, %807
  br i1 %480, label %814, label %810

810:                                              ; preds = %809
  %811 = load float, ptr %473, align 8, !tbaa !109
  %812 = call fastcc zeroext i16 @ClampToQuantum(float noundef %811) #25
  %813 = getelementptr inbounds %struct._PixelPacket, ptr %522, i64 0, i32 2
  store i16 %812, ptr %813, align 2, !tbaa !113
  br label %814

814:                                              ; preds = %810, %809
  br i1 %482, label %819, label %815

815:                                              ; preds = %814
  %816 = load float, ptr %474, align 4, !tbaa !110
  %817 = call fastcc zeroext i16 @ClampToQuantum(float noundef %816) #25
  %818 = getelementptr inbounds %struct._PixelPacket, ptr %522, i64 0, i32 1
  store i16 %817, ptr %818, align 2, !tbaa !114
  br label %819

819:                                              ; preds = %815, %814
  br i1 %484, label %823, label %820

820:                                              ; preds = %819
  %821 = load float, ptr %475, align 8, !tbaa !111
  %822 = call fastcc zeroext i16 @ClampToQuantum(float noundef %821) #25
  store i16 %822, ptr %522, align 2, !tbaa !115
  br label %823

823:                                              ; preds = %820, %819
  br i1 %486, label %832, label %824

824:                                              ; preds = %823
  %825 = load i32, ptr %487, align 8, !tbaa !124
  %826 = icmp eq i32 %825, 0
  br i1 %826, label %832, label %827

827:                                              ; preds = %824
  %828 = load float, ptr %469, align 4, !tbaa !106
  %829 = call fastcc zeroext i16 @ClampToQuantum(float noundef %828) #25
  %830 = xor i16 %829, -1
  %831 = getelementptr inbounds %struct._PixelPacket, ptr %522, i64 0, i32 3
  store i16 %830, ptr %831, align 2, !tbaa !116
  br label %832

832:                                              ; preds = %827, %824, %823
  br i1 %489, label %841, label %833

833:                                              ; preds = %832
  %834 = load i32, ptr %476, align 4, !tbaa !117
  %835 = icmp ne i32 %834, 12
  %836 = select i1 %835, i1 true, i1 %517
  br i1 %836, label %841, label %837

837:                                              ; preds = %833
  %838 = getelementptr inbounds i16, ptr %509, i64 %521
  %839 = load float, ptr %477, align 8, !tbaa !112
  %840 = call fastcc zeroext i16 @ClampToQuantum(float noundef %839) #25
  store i16 %840, ptr %838, align 2, !tbaa !10
  br label %841

841:                                              ; preds = %832, %833, %837, %808
  %842 = getelementptr inbounds %struct._PixelPacket, ptr %523, i64 %18
  %843 = getelementptr inbounds %struct._PixelPacket, ptr %523, i64 %18, i32 2
  %844 = load i16, ptr %843, align 2, !tbaa !113
  %845 = getelementptr inbounds %struct._PixelPacket, ptr %522, i64 0, i32 2
  %846 = load i16, ptr %845, align 2, !tbaa !113
  %847 = icmp eq i16 %844, %846
  br i1 %847, label %848, label %880

848:                                              ; preds = %841
  %849 = getelementptr inbounds %struct._PixelPacket, ptr %523, i64 %18, i32 1
  %850 = load i16, ptr %849, align 2, !tbaa !114
  %851 = getelementptr inbounds %struct._PixelPacket, ptr %522, i64 0, i32 1
  %852 = load i16, ptr %851, align 2, !tbaa !114
  %853 = icmp eq i16 %850, %852
  br i1 %853, label %854, label %880

854:                                              ; preds = %848
  %855 = load i16, ptr %842, align 2, !tbaa !115
  %856 = load i16, ptr %522, align 2, !tbaa !115
  %857 = icmp eq i16 %855, %856
  br i1 %857, label %858, label %880

858:                                              ; preds = %854
  %859 = getelementptr inbounds %struct._PixelPacket, ptr %523, i64 %18, i32 3
  %860 = load i16, ptr %859, align 2, !tbaa !116
  %861 = getelementptr inbounds %struct._PixelPacket, ptr %522, i64 0, i32 3
  %862 = load i16, ptr %861, align 2, !tbaa !116
  %863 = icmp eq i16 %860, %862
  br i1 %863, label %864, label %880

864:                                              ; preds = %858
  %865 = load i32, ptr %476, align 4, !tbaa !117
  %866 = icmp eq i32 %865, 12
  br i1 %866, label %867, label %882

867:                                              ; preds = %864
  br i1 %518, label %871, label %868

868:                                              ; preds = %867
  %869 = load i16, ptr %519, align 2, !tbaa !10
  %870 = zext i16 %869 to i32
  br label %871

871:                                              ; preds = %867, %868
  %872 = phi i32 [ %870, %868 ], [ 0, %867 ]
  br i1 %517, label %877, label %873

873:                                              ; preds = %871
  %874 = getelementptr inbounds i16, ptr %509, i64 %521
  %875 = load i16, ptr %874, align 2, !tbaa !10
  %876 = zext i16 %875 to i32
  br label %877

877:                                              ; preds = %871, %873
  %878 = phi i32 [ %876, %873 ], [ 0, %871 ]
  %879 = icmp eq i32 %872, %878
  br i1 %879, label %882, label %880

880:                                              ; preds = %877, %858, %854, %848, %841
  %881 = add i64 %524, 1
  br label %882

882:                                              ; preds = %880, %877, %864
  %883 = phi i64 [ %881, %880 ], [ %524, %877 ], [ %524, %864 ]
  %884 = getelementptr inbounds %struct._PixelPacket, ptr %523, i64 -1
  %885 = getelementptr inbounds %struct._PixelPacket, ptr %522, i64 -1
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #24
  %886 = add nsw i64 %521, -1
  %887 = icmp sgt i64 %521, 0
  br i1 %887, label %520, label %888, !llvm.loop !133

888:                                              ; preds = %882, %507
  %889 = phi i64 [ %495, %507 ], [ %883, %882 ]
  %890 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %21, ptr noundef %4) #32
  %891 = icmp ne i32 %890, 0
  %892 = zext i1 %891 to i32
  %893 = load ptr, ptr %490, align 8, !tbaa !126
  %894 = icmp eq ptr %893, null
  br i1 %894, label %901, label %895

895:                                              ; preds = %888
  %896 = add nsw i64 %494, 1
  %897 = load i64, ptr %28, align 8, !tbaa !100
  %898 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, i64 noundef %494, i64 noundef %897) #25
  %899 = icmp eq i32 %898, 0
  %900 = select i1 %899, i32 0, i32 %892
  br label %901

901:                                              ; preds = %895, %888
  %902 = phi i64 [ %494, %888 ], [ %896, %895 ]
  %903 = phi i32 [ %892, %888 ], [ %900, %895 ]
  %904 = icmp sgt i64 %492, 1
  br i1 %904, label %491, label %905, !llvm.loop !134

905:                                              ; preds = %901, %491, %498, %16, %461
  %906 = phi i64 [ %463, %461 ], [ 0, %16 ], [ %495, %498 ], [ %495, %491 ], [ %889, %901 ]
  %907 = phi i32 [ %465, %461 ], [ 1, %16 ], [ 0, %498 ], [ 0, %491 ], [ %903, %901 ]
  %908 = call ptr @DestroyCacheView(ptr noundef %21) #26
  %909 = call ptr @DestroyCacheView(ptr noundef %20) #26
  %910 = freeze i32 %907
  %911 = icmp eq i32 %910, 0
  %912 = select i1 %911, i64 -1, i64 %906
  ret i64 %912
}

; Function Attrs: optsize
declare i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CommandOptionToMnemonic(i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @SetImageAlphaChannel(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CompositeImageChannel(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @MorphologyPrimitive(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, double noundef %5, ptr noundef %6) unnamed_addr #0 {
  %8 = alloca %struct._ExceptionInfo, align 8
  %9 = tail call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %6) #26
  %10 = tail call ptr @AcquireAuthenticCacheView(ptr noundef %1, ptr noundef %6) #26
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %12 = load i64, ptr %11, align 8, !tbaa !88
  %13 = getelementptr inbounds %struct.KernelInfo, ptr %4, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !24
  %15 = add i64 %12, -1
  %16 = add i64 %15, %14
  %17 = getelementptr inbounds %struct.KernelInfo, ptr %4, i64 0, i32 3
  %18 = load i64, ptr %17, align 8, !tbaa !27
  %19 = getelementptr inbounds %struct.KernelInfo, ptr %4, i64 0, i32 4
  %20 = load i64, ptr %19, align 8, !tbaa !28
  switch i32 %2, label %28 [
    i32 1, label %21
    i32 4, label %21
    i32 6, label %21
    i32 22, label %21
  ]

21:                                               ; preds = %7, %7, %7, %7
  %22 = xor i64 %18, -1
  %23 = add i64 %14, %22
  %24 = getelementptr inbounds %struct.KernelInfo, ptr %4, i64 0, i32 2
  %25 = load i64, ptr %24, align 8, !tbaa !25
  %26 = xor i64 %20, -1
  %27 = add i64 %25, %26
  br label %28

28:                                               ; preds = %7, %21
  %29 = phi i64 [ %20, %7 ], [ %27, %21 ]
  %30 = phi i64 [ %18, %7 ], [ %23, %21 ]
  %31 = tail call dereferenceable_or_null(8) ptr @AcquireQuantumMemory(i64 noundef 1, i64 noundef 8) #30
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #24
  call void @GetExceptionInfo(ptr noundef nonnull %8) #26
  %34 = tail call ptr @__errno_location() #27
  %35 = load i32, ptr %34, align 4, !tbaa !86
  %36 = call ptr @GetExceptionMessage(i32 noundef %35) #26
  %37 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %8, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.81, i64 noundef 2622, i32 noundef 700, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.114, ptr noundef %36) #26
  %38 = call ptr @DestroyString(ptr noundef %36) #26
  call void @CatchException(ptr noundef nonnull %8) #26
  %39 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %8) #26
  call void @MagickCoreTerminus() #26
  call void @_exit(i32 noundef 1) #33
  unreachable

40:                                               ; preds = %28
  store i64 0, ptr %31, align 8, !tbaa !79
  %41 = icmp eq i32 %2, 1
  br i1 %41, label %42, label %362

42:                                               ; preds = %40
  %43 = load i64, ptr %13, align 8, !tbaa !24
  %44 = icmp eq i64 %43, 1
  br i1 %44, label %45, label %362

45:                                               ; preds = %42
  %46 = load i64, ptr %11, align 8, !tbaa !88
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %357

48:                                               ; preds = %45
  %49 = sub nsw i64 0, %29
  %50 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %51 = getelementptr inbounds %struct.KernelInfo, ptr %4, i64 0, i32 2
  %52 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %53 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %54 = getelementptr inbounds %struct.KernelInfo, ptr %4, i64 0, i32 5
  %55 = and i32 %3, 256
  %56 = icmp eq i32 %55, 0
  %57 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %58 = and i32 %3, 1
  %59 = icmp eq i32 %58, 0
  %60 = and i32 %3, 2
  %61 = icmp eq i32 %60, 0
  %62 = and i32 %3, 4
  %63 = icmp eq i32 %62, 0
  %64 = and i32 %3, 8
  %65 = icmp eq i32 %64, 0
  %66 = and i32 %3, 32
  %67 = icmp eq i32 %66, 0
  %68 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %69 = insertelement <4 x double> poison, double %5, i64 0
  %70 = shufflevector <4 x double> %69, <4 x double> poison, <4 x i32> zeroinitializer
  %71 = insertelement <2 x double> poison, double %5, i64 0
  %72 = shufflevector <2 x double> %71, <2 x double> poison, <2 x i32> zeroinitializer
  br label %73

73:                                               ; preds = %48, %349
  %74 = phi i32 [ 1, %48 ], [ %351, %349 ]
  %75 = phi i64 [ 0, %48 ], [ %352, %349 ]
  %76 = phi i64 [ 0, %48 ], [ %350, %349 ]
  %77 = icmp eq i32 %74, 0
  br i1 %77, label %349, label %78

78:                                               ; preds = %73
  %79 = load i64, ptr %50, align 8, !tbaa !100
  %80 = load i64, ptr %51, align 8, !tbaa !25
  %81 = add i64 %79, -1
  %82 = add i64 %81, %80
  %83 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %9, i64 noundef %75, i64 noundef %49, i64 noundef 1, i64 noundef %82, ptr noundef %6) #32
  %84 = load i64, ptr %52, align 8, !tbaa !100
  %85 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %10, i64 noundef %75, i64 noundef 0, i64 noundef 1, i64 noundef %84, ptr noundef %6) #32
  %86 = icmp eq ptr %83, null
  %87 = icmp eq ptr %85, null
  %88 = select i1 %86, i1 true, i1 %87
  br i1 %88, label %349, label %89

89:                                               ; preds = %78
  %90 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %9) #26
  %91 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %10) #26
  %92 = load i64, ptr %50, align 8, !tbaa !100
  %93 = icmp sgt i64 %92, 0
  br i1 %93, label %94, label %337

94:                                               ; preds = %89
  %95 = icmp eq ptr %91, null
  %96 = icmp eq ptr %90, null
  %97 = getelementptr inbounds i16, ptr %90, i64 %29
  br label %98

98:                                               ; preds = %94, %331
  %99 = phi i64 [ 0, %94 ], [ %334, %331 ]
  %100 = phi ptr [ %85, %94 ], [ %333, %331 ]
  %101 = phi ptr [ %83, %94 ], [ %332, %331 ]
  %102 = getelementptr inbounds %struct._PixelPacket, ptr %101, i64 %29
  %103 = load i64, ptr %102, align 2
  store i64 %103, ptr %100, align 2
  %104 = load i32, ptr %53, align 4, !tbaa !117
  %105 = icmp eq i32 %104, 12
  br i1 %105, label %106, label %113

106:                                              ; preds = %98
  %107 = getelementptr inbounds i16, ptr %91, i64 %99
  br i1 %95, label %113, label %108

108:                                              ; preds = %106
  br i1 %96, label %111, label %109

109:                                              ; preds = %108
  %110 = load i16, ptr %97, align 2, !tbaa !10
  br label %111

111:                                              ; preds = %108, %109
  %112 = phi i16 [ %110, %109 ], [ 0, %108 ]
  store i16 %112, ptr %107, align 2, !tbaa !10
  br label %113

113:                                              ; preds = %106, %111, %98
  %114 = load ptr, ptr %54, align 8, !tbaa !32
  %115 = load i64, ptr %51, align 8, !tbaa !25
  %116 = getelementptr double, ptr %114, i64 %115
  %117 = getelementptr double, ptr %116, i64 -1
  br i1 %56, label %123, label %118

118:                                              ; preds = %113
  %119 = load i32, ptr %57, align 8, !tbaa !124
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %118
  %122 = icmp sgt i64 %115, 0
  br i1 %122, label %189, label %253

123:                                              ; preds = %118, %113
  %124 = icmp sgt i64 %115, 0
  br i1 %124, label %125, label %157

125:                                              ; preds = %123, %149
  %126 = phi ptr [ %153, %149 ], [ %90, %123 ]
  %127 = phi ptr [ %152, %149 ], [ %101, %123 ]
  %128 = phi ptr [ %151, %149 ], [ %117, %123 ]
  %129 = phi i64 [ %155, %149 ], [ 0, %123 ]
  %130 = phi double [ %150, %149 ], [ %5, %123 ]
  %131 = phi <4 x double> [ %154, %149 ], [ %70, %123 ]
  %132 = load double, ptr %128, align 8, !tbaa !33
  %133 = fcmp uno double %132, 0.000000e+00
  br i1 %133, label %149, label %134

134:                                              ; preds = %125
  %135 = load <4 x i16>, ptr %127, align 2, !tbaa !10
  %136 = uitofp <4 x i16> %135 to <4 x double>
  %137 = insertelement <4 x double> poison, double %132, i64 0
  %138 = shufflevector <4 x double> %137, <4 x double> poison, <4 x i32> zeroinitializer
  %139 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %138, <4 x double> %136, <4 x double> %131)
  br i1 %105, label %140, label %144

140:                                              ; preds = %134
  %141 = load i16, ptr %126, align 2, !tbaa !10
  %142 = uitofp i16 %141 to double
  %143 = tail call double @llvm.fmuladd.f64(double %132, double %142, double %130)
  br label %144

144:                                              ; preds = %140, %134
  %145 = phi double [ %143, %140 ], [ %130, %134 ]
  %146 = getelementptr inbounds double, ptr %128, i64 -1
  %147 = getelementptr inbounds %struct._PixelPacket, ptr %127, i64 1
  %148 = getelementptr inbounds i16, ptr %126, i64 1
  br label %149

149:                                              ; preds = %125, %144
  %150 = phi double [ %130, %125 ], [ %145, %144 ]
  %151 = phi ptr [ %128, %125 ], [ %146, %144 ]
  %152 = phi ptr [ %127, %125 ], [ %147, %144 ]
  %153 = phi ptr [ %126, %125 ], [ %148, %144 ]
  %154 = phi <4 x double> [ %131, %125 ], [ %139, %144 ]
  %155 = add nuw nsw i64 %129, 1
  %156 = icmp eq i64 %155, %115
  br i1 %156, label %157, label %125, !llvm.loop !135

157:                                              ; preds = %149, %123
  %158 = phi double [ %5, %123 ], [ %150, %149 ]
  %159 = phi <4 x double> [ %70, %123 ], [ %154, %149 ]
  br i1 %59, label %165, label %160

160:                                              ; preds = %157
  %161 = extractelement <4 x double> %159, i64 2
  %162 = fptrunc double %161 to float
  %163 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %162) #25
  %164 = getelementptr inbounds %struct._PixelPacket, ptr %100, i64 0, i32 2
  store i16 %163, ptr %164, align 2, !tbaa !113
  br label %165

165:                                              ; preds = %160, %157
  br i1 %61, label %171, label %166

166:                                              ; preds = %165
  %167 = extractelement <4 x double> %159, i64 1
  %168 = fptrunc double %167 to float
  %169 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %168) #25
  %170 = getelementptr inbounds %struct._PixelPacket, ptr %100, i64 0, i32 1
  store i16 %169, ptr %170, align 2, !tbaa !114
  br label %171

171:                                              ; preds = %166, %165
  br i1 %63, label %176, label %172

172:                                              ; preds = %171
  %173 = extractelement <4 x double> %159, i64 0
  %174 = fptrunc double %173 to float
  %175 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %174) #25
  store i16 %175, ptr %100, align 2, !tbaa !115
  br label %176

176:                                              ; preds = %172, %171
  br i1 %65, label %185, label %177

177:                                              ; preds = %176
  %178 = load i32, ptr %57, align 8, !tbaa !124
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %185, label %180

180:                                              ; preds = %177
  %181 = extractelement <4 x double> %159, i64 3
  %182 = fptrunc double %181 to float
  %183 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %182) #25
  %184 = getelementptr inbounds %struct._PixelPacket, ptr %100, i64 0, i32 3
  store i16 %183, ptr %184, align 2, !tbaa !116
  br label %185

185:                                              ; preds = %180, %177, %176
  %186 = icmp ne i32 %104, 12
  %187 = or i1 %67, %186
  %188 = select i1 %187, i1 true, i1 %95
  br i1 %188, label %292, label %287

189:                                              ; preds = %121, %241
  %190 = phi i64 [ %249, %241 ], [ 0, %121 ]
  %191 = phi double [ %248, %241 ], [ 0.000000e+00, %121 ]
  %192 = phi ptr [ %247, %241 ], [ %90, %121 ]
  %193 = phi ptr [ %246, %241 ], [ %101, %121 ]
  %194 = phi ptr [ %245, %241 ], [ %117, %121 ]
  %195 = phi i64 [ %251, %241 ], [ 0, %121 ]
  %196 = phi double [ %244, %241 ], [ %5, %121 ]
  %197 = phi double [ %243, %241 ], [ %5, %121 ]
  %198 = phi double [ %242, %241 ], [ %5, %121 ]
  %199 = phi <2 x double> [ %250, %241 ], [ %72, %121 ]
  %200 = load double, ptr %194, align 8, !tbaa !33
  %201 = fcmp uno double %200, 0.000000e+00
  br i1 %201, label %241, label %202

202:                                              ; preds = %189
  %203 = getelementptr inbounds %struct._PixelPacket, ptr %193, i64 0, i32 3
  %204 = load i16, ptr %203, align 2, !tbaa !116
  %205 = xor i16 %204, -1
  %206 = uitofp i16 %205 to double
  %207 = fmul double %206, 0x3EF0001000100010
  %208 = fptrunc double %207 to float
  %209 = add i64 %190, 1
  %210 = fpext float %208 to double
  %211 = fmul double %200, %210
  %212 = fptrunc double %211 to float
  %213 = fpext float %212 to double
  %214 = fadd double %191, %213
  %215 = getelementptr inbounds %struct._PixelPacket, ptr %193, i64 0, i32 1
  %216 = load <2 x i16>, ptr %215, align 2, !tbaa !10
  %217 = uitofp <2 x i16> %216 to <2 x float>
  %218 = insertelement <2 x float> poison, float %212, i64 0
  %219 = shufflevector <2 x float> %218, <2 x float> poison, <2 x i32> zeroinitializer
  %220 = fmul <2 x float> %219, %217
  %221 = fpext <2 x float> %220 to <2 x double>
  %222 = fadd <2 x double> %199, %221
  %223 = load i16, ptr %193, align 2, !tbaa !115
  %224 = uitofp i16 %223 to float
  %225 = fmul float %224, %212
  %226 = fpext float %225 to double
  %227 = fadd double %196, %226
  %228 = uitofp i16 %204 to double
  %229 = tail call double @llvm.fmuladd.f64(double %200, double %228, double %197)
  br i1 %105, label %230, label %236

230:                                              ; preds = %202
  %231 = load i16, ptr %192, align 2, !tbaa !10
  %232 = uitofp i16 %231 to float
  %233 = fmul float %212, %232
  %234 = fpext float %233 to double
  %235 = fadd double %198, %234
  br label %236

236:                                              ; preds = %230, %202
  %237 = phi double [ %235, %230 ], [ %198, %202 ]
  %238 = getelementptr inbounds double, ptr %194, i64 -1
  %239 = getelementptr inbounds %struct._PixelPacket, ptr %193, i64 1
  %240 = getelementptr inbounds i16, ptr %192, i64 1
  br label %241

241:                                              ; preds = %189, %236
  %242 = phi double [ %198, %189 ], [ %237, %236 ]
  %243 = phi double [ %197, %189 ], [ %229, %236 ]
  %244 = phi double [ %196, %189 ], [ %227, %236 ]
  %245 = phi ptr [ %194, %189 ], [ %238, %236 ]
  %246 = phi ptr [ %193, %189 ], [ %239, %236 ]
  %247 = phi ptr [ %192, %189 ], [ %240, %236 ]
  %248 = phi double [ %191, %189 ], [ %214, %236 ]
  %249 = phi i64 [ %190, %189 ], [ %209, %236 ]
  %250 = phi <2 x double> [ %199, %189 ], [ %222, %236 ]
  %251 = add nuw nsw i64 %195, 1
  %252 = icmp eq i64 %251, %115
  br i1 %252, label %253, label %189, !llvm.loop !136

253:                                              ; preds = %241, %121
  %254 = phi double [ %5, %121 ], [ %242, %241 ]
  %255 = phi double [ %5, %121 ], [ %243, %241 ]
  %256 = phi double [ %5, %121 ], [ %244, %241 ]
  %257 = phi double [ 0.000000e+00, %121 ], [ %248, %241 ]
  %258 = phi i64 [ 0, %121 ], [ %249, %241 ]
  %259 = phi <2 x double> [ %72, %121 ], [ %250, %241 ]
  %260 = fcmp olt double %257, 0.000000e+00
  %261 = select i1 %260, double 0.000000e+00, double %257
  %262 = tail call fastcc double @PerceptibleReciprocal(double noundef %261) #25
  %263 = uitofp i64 %115 to double
  %264 = uitofp i64 %258 to double
  %265 = fdiv double %263, %264
  %266 = fmul double %265, %262
  %267 = extractelement <2 x double> %259, i64 1
  %268 = fmul double %267, %266
  %269 = fptrunc double %268 to float
  %270 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %269) #25
  %271 = getelementptr inbounds %struct._PixelPacket, ptr %100, i64 0, i32 2
  store i16 %270, ptr %271, align 2, !tbaa !113
  %272 = extractelement <2 x double> %259, i64 0
  %273 = fmul double %272, %266
  %274 = fptrunc double %273 to float
  %275 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %274) #25
  %276 = getelementptr inbounds %struct._PixelPacket, ptr %100, i64 0, i32 1
  store i16 %275, ptr %276, align 2, !tbaa !114
  %277 = fmul double %256, %266
  %278 = fptrunc double %277 to float
  %279 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %278) #25
  store i16 %279, ptr %100, align 2, !tbaa !115
  %280 = fptrunc double %255 to float
  %281 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %280) #25
  %282 = getelementptr inbounds %struct._PixelPacket, ptr %100, i64 0, i32 3
  store i16 %281, ptr %282, align 2, !tbaa !116
  %283 = icmp ne i32 %104, 12
  %284 = select i1 %283, i1 true, i1 %95
  br i1 %284, label %292, label %285

285:                                              ; preds = %253
  %286 = fmul double %254, %266
  br label %287

287:                                              ; preds = %185, %285
  %288 = phi double [ %286, %285 ], [ %158, %185 ]
  %289 = getelementptr inbounds i16, ptr %91, i64 %99
  %290 = fptrunc double %288 to float
  %291 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %290) #25
  store i16 %291, ptr %289, align 2, !tbaa !10
  br label %292

292:                                              ; preds = %287, %253, %185
  %293 = getelementptr inbounds %struct._PixelPacket, ptr %101, i64 %29, i32 2
  %294 = load i16, ptr %293, align 2, !tbaa !113
  %295 = getelementptr inbounds %struct._PixelPacket, ptr %100, i64 0, i32 2
  %296 = load i16, ptr %295, align 2, !tbaa !113
  %297 = icmp eq i16 %294, %296
  br i1 %297, label %298, label %328

298:                                              ; preds = %292
  %299 = getelementptr inbounds %struct._PixelPacket, ptr %101, i64 %29, i32 1
  %300 = load i16, ptr %299, align 2, !tbaa !114
  %301 = getelementptr inbounds %struct._PixelPacket, ptr %100, i64 0, i32 1
  %302 = load i16, ptr %301, align 2, !tbaa !114
  %303 = icmp eq i16 %300, %302
  br i1 %303, label %304, label %328

304:                                              ; preds = %298
  %305 = load i16, ptr %102, align 2, !tbaa !115
  %306 = load i16, ptr %100, align 2, !tbaa !115
  %307 = icmp eq i16 %305, %306
  br i1 %307, label %308, label %328

308:                                              ; preds = %304
  %309 = getelementptr inbounds %struct._PixelPacket, ptr %101, i64 %29, i32 3
  %310 = load i16, ptr %309, align 2, !tbaa !116
  %311 = getelementptr inbounds %struct._PixelPacket, ptr %100, i64 0, i32 3
  %312 = load i16, ptr %311, align 2, !tbaa !116
  %313 = icmp eq i16 %310, %312
  br i1 %313, label %314, label %328

314:                                              ; preds = %308
  br i1 %105, label %315, label %331

315:                                              ; preds = %314
  br i1 %96, label %319, label %316

316:                                              ; preds = %315
  %317 = load i16, ptr %97, align 2, !tbaa !10
  %318 = zext i16 %317 to i32
  br label %319

319:                                              ; preds = %315, %316
  %320 = phi i32 [ %318, %316 ], [ 0, %315 ]
  br i1 %95, label %325, label %321

321:                                              ; preds = %319
  %322 = getelementptr inbounds i16, ptr %91, i64 %99
  %323 = load i16, ptr %322, align 2, !tbaa !10
  %324 = zext i16 %323 to i32
  br label %325

325:                                              ; preds = %319, %321
  %326 = phi i32 [ %324, %321 ], [ 0, %319 ]
  %327 = icmp eq i32 %320, %326
  br i1 %327, label %331, label %328

328:                                              ; preds = %325, %308, %304, %298, %292
  %329 = load i64, ptr %31, align 8, !tbaa !79
  %330 = add i64 %329, 1
  store i64 %330, ptr %31, align 8, !tbaa !79
  br label %331

331:                                              ; preds = %328, %325, %314
  %332 = getelementptr inbounds %struct._PixelPacket, ptr %101, i64 1
  %333 = getelementptr inbounds %struct._PixelPacket, ptr %100, i64 1
  %334 = add nuw nsw i64 %99, 1
  %335 = load i64, ptr %50, align 8, !tbaa !100
  %336 = icmp slt i64 %334, %335
  br i1 %336, label %98, label %337, !llvm.loop !137

337:                                              ; preds = %331, %89
  %338 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %10, ptr noundef %6) #32
  %339 = icmp ne i32 %338, 0
  %340 = zext i1 %339 to i32
  %341 = load ptr, ptr %68, align 8, !tbaa !126
  %342 = icmp eq ptr %341, null
  br i1 %342, label %349, label %343

343:                                              ; preds = %337
  %344 = add nsw i64 %76, 1
  %345 = load i64, ptr %50, align 8, !tbaa !100
  %346 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, i64 noundef %76, i64 noundef %345) #25
  %347 = icmp eq i32 %346, 0
  %348 = select i1 %347, i32 0, i32 %340
  br label %349

349:                                              ; preds = %337, %343, %78, %73
  %350 = phi i64 [ %76, %73 ], [ %76, %78 ], [ %344, %343 ], [ %76, %337 ]
  %351 = phi i32 [ 0, %73 ], [ 0, %78 ], [ %348, %343 ], [ %340, %337 ]
  %352 = add nuw nsw i64 %75, 1
  %353 = load i64, ptr %11, align 8, !tbaa !88
  %354 = icmp slt i64 %352, %353
  br i1 %354, label %73, label %355, !llvm.loop !138

355:                                              ; preds = %349
  %356 = icmp eq i32 %351, 0
  br label %357

357:                                              ; preds = %355, %45
  %358 = phi i1 [ false, %45 ], [ %356, %355 ]
  %359 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %360 = load i32, ptr %359, align 8, !tbaa !139
  %361 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 77
  store i32 %360, ptr %361, align 8, !tbaa !139
  br label %1285

362:                                              ; preds = %42, %40
  %363 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %364 = load i64, ptr %363, align 8, !tbaa !100
  %365 = icmp sgt i64 %364, 0
  br i1 %365, label %366, label %1285

366:                                              ; preds = %362
  %367 = sub nsw i64 0, %30
  %368 = getelementptr inbounds %struct.KernelInfo, ptr %4, i64 0, i32 2
  %369 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %370 = mul i64 %29, %16
  %371 = add i64 %370, %30
  %372 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %373 = getelementptr inbounds %struct.KernelInfo, ptr %4, i64 0, i32 5
  %374 = and i32 %3, 256
  %375 = icmp eq i32 %374, 0
  %376 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %377 = and i32 %3, 1
  %378 = icmp eq i32 %377, 0
  %379 = and i32 %3, 2
  %380 = icmp eq i32 %379, 0
  %381 = and i32 %3, 4
  %382 = icmp eq i32 %381, 0
  %383 = and i32 %3, 8
  %384 = icmp eq i32 %383, 0
  %385 = and i32 %3, 32
  %386 = icmp eq i32 %385, 0
  %387 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %388 = insertelement <4 x double> poison, double %5, i64 0
  %389 = shufflevector <4 x double> %388, <4 x double> poison, <4 x i32> zeroinitializer
  br label %390

390:                                              ; preds = %366, %1277
  %391 = phi i64 [ 0, %366 ], [ %1280, %1277 ]
  %392 = phi i32 [ 1, %366 ], [ %1279, %1277 ]
  %393 = phi i64 [ 0, %366 ], [ %1278, %1277 ]
  %394 = icmp eq i32 %392, 0
  br i1 %394, label %1277, label %395

395:                                              ; preds = %390
  %396 = sub nsw i64 %391, %29
  %397 = load i64, ptr %368, align 8, !tbaa !25
  %398 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %9, i64 noundef %367, i64 noundef %396, i64 noundef %16, i64 noundef %397, ptr noundef %6) #32
  %399 = load i64, ptr %369, align 8, !tbaa !88
  %400 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %10, i64 noundef 0, i64 noundef %391, i64 noundef %399, i64 noundef 1, ptr noundef %6) #32
  %401 = icmp eq ptr %398, null
  %402 = icmp eq ptr %400, null
  %403 = select i1 %401, i1 true, i1 %402
  br i1 %403, label %1277, label %404

404:                                              ; preds = %395
  %405 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %9) #26
  %406 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %10) #26
  %407 = load i64, ptr %11, align 8, !tbaa !88
  %408 = icmp sgt i64 %407, 0
  br i1 %408, label %409, label %1265

409:                                              ; preds = %404
  %410 = icmp eq ptr %406, null
  %411 = icmp eq ptr %405, null
  %412 = getelementptr inbounds i16, ptr %405, i64 %371
  br label %413

413:                                              ; preds = %409, %1259
  %414 = phi i64 [ 0, %409 ], [ %1262, %1259 ]
  %415 = phi ptr [ %400, %409 ], [ %1261, %1259 ]
  %416 = phi ptr [ %398, %409 ], [ %1260, %1259 ]
  %417 = getelementptr inbounds %struct._PixelPacket, ptr %416, i64 %371
  %418 = load i64, ptr %417, align 2
  store i64 %418, ptr %415, align 2
  %419 = load i32, ptr %372, align 4, !tbaa !117
  %420 = icmp eq i32 %419, 12
  br i1 %420, label %421, label %428

421:                                              ; preds = %413
  %422 = getelementptr inbounds i16, ptr %406, i64 %414
  br i1 %410, label %428, label %423

423:                                              ; preds = %421
  br i1 %411, label %426, label %424

424:                                              ; preds = %423
  %425 = load i16, ptr %412, align 2, !tbaa !10
  br label %426

426:                                              ; preds = %423, %424
  %427 = phi i16 [ %425, %424 ], [ 0, %423 ]
  store i16 %427, ptr %422, align 2, !tbaa !10
  br label %428

428:                                              ; preds = %421, %426, %413
  %429 = getelementptr inbounds %struct._PixelPacket, ptr %416, i64 %371, i32 2
  %430 = load i16, ptr %429, align 2, !tbaa !113
  %431 = uitofp i16 %430 to double
  %432 = getelementptr inbounds %struct._PixelPacket, ptr %416, i64 %371, i32 1
  %433 = load <2 x i16>, ptr %417, align 2, !tbaa !10
  %434 = uitofp <2 x i16> %433 to <2 x double>
  %435 = getelementptr inbounds %struct._PixelPacket, ptr %416, i64 %371, i32 3
  %436 = load i16, ptr %435, align 2, !tbaa !116
  %437 = uitofp i16 %436 to double
  %438 = fsub double 6.553500e+04, %437
  br i1 %420, label %439, label %446

439:                                              ; preds = %428
  br i1 %411, label %443, label %440

440:                                              ; preds = %439
  %441 = load i16, ptr %412, align 2, !tbaa !10
  %442 = zext i16 %441 to i32
  br label %443

443:                                              ; preds = %439, %440
  %444 = phi i32 [ %442, %440 ], [ 0, %439 ]
  %445 = sitofp i32 %444 to double
  br label %446

446:                                              ; preds = %443, %428
  %447 = phi double [ %445, %443 ], [ 0.000000e+00, %428 ]
  switch i32 %2, label %449 [
    i32 1, label %454
    i32 6, label %448
    i32 5, label %448
  ]

448:                                              ; preds = %446, %446
  br label %449

449:                                              ; preds = %446, %448
  %450 = phi double [ %431, %446 ], [ 0.000000e+00, %448 ]
  %451 = shufflevector <2 x double> %434, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %452 = insertelement <4 x double> %451, double %450, i64 2
  %453 = insertelement <4 x double> %452, double %438, i64 3
  switch i32 %2, label %1166 [
    i32 1, label %454
    i32 3, label %663
    i32 4, label %740
    i32 18, label %820
    i32 19, label %820
    i32 20, label %820
    i32 5, label %972
    i32 6, label %1024
    i32 22, label %1079
  ]

454:                                              ; preds = %446, %449
  %455 = phi double [ %447, %449 ], [ %5, %446 ]
  %456 = phi <4 x double> [ %453, %449 ], [ %389, %446 ]
  %457 = load ptr, ptr %373, align 8, !tbaa !32
  %458 = load i64, ptr %13, align 8, !tbaa !24
  %459 = load i64, ptr %368, align 8, !tbaa !25
  %460 = mul i64 %459, %458
  %461 = getelementptr double, ptr %457, i64 %460
  %462 = getelementptr double, ptr %461, i64 -1
  br i1 %375, label %471, label %463

463:                                              ; preds = %454
  %464 = load i32, ptr %376, align 8, !tbaa !124
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %471, label %466

466:                                              ; preds = %463
  %467 = icmp sgt i64 %459, 0
  br i1 %467, label %468, label %624

468:                                              ; preds = %466
  %469 = icmp sgt i64 %458, 0
  %470 = mul i64 %458, -8
  br label %560

471:                                              ; preds = %463, %454
  %472 = icmp sgt i64 %459, 0
  br i1 %472, label %473, label %524

473:                                              ; preds = %471
  %474 = icmp sgt i64 %458, 0
  %475 = mul i64 %458, -8
  br label %476

476:                                              ; preds = %473, %516
  %477 = phi double [ %455, %473 ], [ %518, %516 ]
  %478 = phi ptr [ %405, %473 ], [ %521, %516 ]
  %479 = phi ptr [ %416, %473 ], [ %520, %516 ]
  %480 = phi ptr [ %462, %473 ], [ %517, %516 ]
  %481 = phi i64 [ 0, %473 ], [ %522, %516 ]
  %482 = phi <4 x double> [ %456, %473 ], [ %519, %516 ]
  br i1 %474, label %483, label %516

483:                                              ; preds = %476
  %484 = icmp eq ptr %478, null
  br label %485

485:                                              ; preds = %483, %508
  %486 = phi double [ %477, %483 ], [ %509, %508 ]
  %487 = phi ptr [ %480, %483 ], [ %512, %508 ]
  %488 = phi i64 [ 0, %483 ], [ %511, %508 ]
  %489 = phi <4 x double> [ %482, %483 ], [ %510, %508 ]
  %490 = load double, ptr %487, align 8, !tbaa !33
  %491 = fcmp uno double %490, 0.000000e+00
  br i1 %491, label %508, label %492

492:                                              ; preds = %485
  %493 = getelementptr inbounds %struct._PixelPacket, ptr %479, i64 %488
  %494 = load <4 x i16>, ptr %493, align 2, !tbaa !10
  %495 = uitofp <4 x i16> %494 to <4 x double>
  %496 = insertelement <4 x double> poison, double %490, i64 0
  %497 = shufflevector <4 x double> %496, <4 x double> poison, <4 x i32> zeroinitializer
  %498 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %497, <4 x double> %495, <4 x double> %489)
  br i1 %420, label %499, label %508

499:                                              ; preds = %492
  br i1 %484, label %504, label %500

500:                                              ; preds = %499
  %501 = getelementptr inbounds i16, ptr %478, i64 %488
  %502 = load i16, ptr %501, align 2, !tbaa !10
  %503 = zext i16 %502 to i32
  br label %504

504:                                              ; preds = %499, %500
  %505 = phi i32 [ %503, %500 ], [ 0, %499 ]
  %506 = sitofp i32 %505 to double
  %507 = tail call double @llvm.fmuladd.f64(double %490, double %506, double %486)
  br label %508

508:                                              ; preds = %492, %504, %485
  %509 = phi double [ %486, %485 ], [ %507, %504 ], [ %486, %492 ]
  %510 = phi <4 x double> [ %489, %485 ], [ %498, %504 ], [ %498, %492 ]
  %511 = add nuw nsw i64 %488, 1
  %512 = getelementptr inbounds double, ptr %487, i64 -1
  %513 = icmp eq i64 %511, %458
  br i1 %513, label %514, label %485, !llvm.loop !140

514:                                              ; preds = %508
  %515 = getelementptr i8, ptr %480, i64 %475
  br label %516

516:                                              ; preds = %514, %476
  %517 = phi ptr [ %480, %476 ], [ %515, %514 ]
  %518 = phi double [ %477, %476 ], [ %509, %514 ]
  %519 = phi <4 x double> [ %482, %476 ], [ %510, %514 ]
  %520 = getelementptr inbounds %struct._PixelPacket, ptr %479, i64 %16
  %521 = getelementptr inbounds i16, ptr %478, i64 %16
  %522 = add nuw nsw i64 %481, 1
  %523 = icmp eq i64 %522, %459
  br i1 %523, label %524, label %476, !llvm.loop !141

524:                                              ; preds = %516, %471
  %525 = phi double [ %455, %471 ], [ %518, %516 ]
  %526 = phi <4 x double> [ %456, %471 ], [ %519, %516 ]
  br i1 %378, label %532, label %527

527:                                              ; preds = %524
  %528 = extractelement <4 x double> %526, i64 2
  %529 = fptrunc double %528 to float
  %530 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %529) #25
  %531 = getelementptr inbounds %struct._PixelPacket, ptr %415, i64 0, i32 2
  store i16 %530, ptr %531, align 2, !tbaa !113
  br label %532

532:                                              ; preds = %527, %524
  br i1 %380, label %538, label %533

533:                                              ; preds = %532
  %534 = extractelement <4 x double> %526, i64 1
  %535 = fptrunc double %534 to float
  %536 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %535) #25
  %537 = getelementptr inbounds %struct._PixelPacket, ptr %415, i64 0, i32 1
  store i16 %536, ptr %537, align 2, !tbaa !114
  br label %538

538:                                              ; preds = %533, %532
  br i1 %382, label %543, label %539

539:                                              ; preds = %538
  %540 = extractelement <4 x double> %526, i64 0
  %541 = fptrunc double %540 to float
  %542 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %541) #25
  store i16 %542, ptr %415, align 2, !tbaa !115
  br label %543

543:                                              ; preds = %539, %538
  br i1 %384, label %552, label %544

544:                                              ; preds = %543
  %545 = load i32, ptr %376, align 8, !tbaa !124
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %552, label %547

547:                                              ; preds = %544
  %548 = extractelement <4 x double> %526, i64 3
  %549 = fptrunc double %548 to float
  %550 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %549) #25
  %551 = getelementptr inbounds %struct._PixelPacket, ptr %415, i64 0, i32 3
  store i16 %550, ptr %551, align 2, !tbaa !116
  br label %552

552:                                              ; preds = %547, %544, %543
  %553 = icmp ne i32 %419, 12
  %554 = or i1 %386, %553
  %555 = select i1 %554, i1 true, i1 %410
  br i1 %555, label %1166, label %556

556:                                              ; preds = %552
  %557 = getelementptr inbounds i16, ptr %406, i64 %414
  %558 = fptrunc double %525 to float
  %559 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %558) #25
  store i16 %559, ptr %557, align 2, !tbaa !10
  br label %1166

560:                                              ; preds = %468, %614
  %561 = phi i64 [ 0, %468 ], [ %618, %614 ]
  %562 = phi double [ 0.000000e+00, %468 ], [ %617, %614 ]
  %563 = phi double [ %455, %468 ], [ %616, %614 ]
  %564 = phi ptr [ %405, %468 ], [ %621, %614 ]
  %565 = phi ptr [ %416, %468 ], [ %620, %614 ]
  %566 = phi ptr [ %462, %468 ], [ %615, %614 ]
  %567 = phi i64 [ 0, %468 ], [ %622, %614 ]
  %568 = phi <4 x double> [ %456, %468 ], [ %619, %614 ]
  br i1 %469, label %569, label %614

569:                                              ; preds = %560
  %570 = icmp eq ptr %564, null
  br label %571

571:                                              ; preds = %569, %604
  %572 = phi i64 [ %561, %569 ], [ %607, %604 ]
  %573 = phi double [ %562, %569 ], [ %606, %604 ]
  %574 = phi double [ %563, %569 ], [ %605, %604 ]
  %575 = phi ptr [ %566, %569 ], [ %610, %604 ]
  %576 = phi i64 [ 0, %569 ], [ %609, %604 ]
  %577 = phi <4 x double> [ %568, %569 ], [ %608, %604 ]
  %578 = load double, ptr %575, align 8, !tbaa !33
  %579 = fcmp uno double %578, 0.000000e+00
  br i1 %579, label %604, label %580

580:                                              ; preds = %571
  %581 = getelementptr inbounds %struct._PixelPacket, ptr %565, i64 %576
  %582 = add i64 %572, 1
  %583 = load <4 x i16>, ptr %581, align 2, !tbaa !10
  %584 = extractelement <4 x i16> %583, i64 3
  %585 = xor i16 %584, -1
  %586 = uitofp i16 %585 to double
  %587 = fmul double %586, 0x3EF0001000100010
  %588 = fmul double %578, %587
  %589 = fadd double %573, %588
  %590 = uitofp <4 x i16> %583 to <4 x double>
  %591 = insertelement <4 x double> poison, double %588, i64 0
  %592 = insertelement <4 x double> %591, double %578, i64 1
  %593 = shufflevector <4 x double> %592, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %594 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %593, <4 x double> %590, <4 x double> %577)
  br i1 %420, label %595, label %604

595:                                              ; preds = %580
  br i1 %570, label %600, label %596

596:                                              ; preds = %595
  %597 = getelementptr inbounds i16, ptr %564, i64 %576
  %598 = load i16, ptr %597, align 2, !tbaa !10
  %599 = zext i16 %598 to i32
  br label %600

600:                                              ; preds = %595, %596
  %601 = phi i32 [ %599, %596 ], [ 0, %595 ]
  %602 = sitofp i32 %601 to double
  %603 = tail call double @llvm.fmuladd.f64(double %588, double %602, double %574)
  br label %604

604:                                              ; preds = %580, %600, %571
  %605 = phi double [ %574, %571 ], [ %603, %600 ], [ %574, %580 ]
  %606 = phi double [ %573, %571 ], [ %589, %600 ], [ %589, %580 ]
  %607 = phi i64 [ %572, %571 ], [ %582, %600 ], [ %582, %580 ]
  %608 = phi <4 x double> [ %577, %571 ], [ %594, %600 ], [ %594, %580 ]
  %609 = add nuw nsw i64 %576, 1
  %610 = getelementptr inbounds double, ptr %575, i64 -1
  %611 = icmp eq i64 %609, %458
  br i1 %611, label %612, label %571, !llvm.loop !142

612:                                              ; preds = %604
  %613 = getelementptr i8, ptr %566, i64 %470
  br label %614

614:                                              ; preds = %612, %560
  %615 = phi ptr [ %566, %560 ], [ %613, %612 ]
  %616 = phi double [ %563, %560 ], [ %605, %612 ]
  %617 = phi double [ %562, %560 ], [ %606, %612 ]
  %618 = phi i64 [ %561, %560 ], [ %607, %612 ]
  %619 = phi <4 x double> [ %568, %560 ], [ %608, %612 ]
  %620 = getelementptr inbounds %struct._PixelPacket, ptr %565, i64 %16
  %621 = getelementptr inbounds i16, ptr %564, i64 %16
  %622 = add nuw nsw i64 %567, 1
  %623 = icmp eq i64 %622, %459
  br i1 %623, label %624, label %560, !llvm.loop !143

624:                                              ; preds = %614, %466
  %625 = phi double [ %455, %466 ], [ %616, %614 ]
  %626 = phi double [ 0.000000e+00, %466 ], [ %617, %614 ]
  %627 = phi i64 [ 0, %466 ], [ %618, %614 ]
  %628 = phi <4 x double> [ %456, %466 ], [ %619, %614 ]
  %629 = fcmp olt double %626, 0.000000e+00
  %630 = select i1 %629, double 0.000000e+00, double %626
  %631 = tail call fastcc double @PerceptibleReciprocal(double noundef %630) #25
  %632 = uitofp i64 %459 to double
  %633 = uitofp i64 %458 to double
  %634 = fmul double %633, %632
  %635 = uitofp i64 %627 to double
  %636 = fdiv double %634, %635
  %637 = fmul double %636, %631
  %638 = extractelement <4 x double> %628, i64 2
  %639 = fmul double %638, %637
  %640 = fptrunc double %639 to float
  %641 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %640) #25
  %642 = getelementptr inbounds %struct._PixelPacket, ptr %415, i64 0, i32 2
  store i16 %641, ptr %642, align 2, !tbaa !113
  %643 = extractelement <4 x double> %628, i64 1
  %644 = fmul double %643, %637
  %645 = fptrunc double %644 to float
  %646 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %645) #25
  %647 = getelementptr inbounds %struct._PixelPacket, ptr %415, i64 0, i32 1
  store i16 %646, ptr %647, align 2, !tbaa !114
  %648 = extractelement <4 x double> %628, i64 0
  %649 = fmul double %648, %637
  %650 = fptrunc double %649 to float
  %651 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %650) #25
  store i16 %651, ptr %415, align 2, !tbaa !115
  %652 = extractelement <4 x double> %628, i64 3
  %653 = fptrunc double %652 to float
  %654 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %653) #25
  %655 = getelementptr inbounds %struct._PixelPacket, ptr %415, i64 0, i32 3
  store i16 %654, ptr %655, align 2, !tbaa !116
  %656 = icmp ne i32 %419, 12
  %657 = select i1 %656, i1 true, i1 %410
  br i1 %657, label %1166, label %658

658:                                              ; preds = %624
  %659 = getelementptr inbounds i16, ptr %406, i64 %414
  %660 = fmul double %625, %637
  %661 = fptrunc double %660 to float
  %662 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %661) #25
  store i16 %662, ptr %659, align 2, !tbaa !10
  br label %1166

663:                                              ; preds = %449
  %664 = load i64, ptr %368, align 8, !tbaa !25
  %665 = icmp sgt i64 %664, 0
  br i1 %665, label %666, label %1183

666:                                              ; preds = %663
  %667 = load ptr, ptr %373, align 8, !tbaa !32
  %668 = load i64, ptr %13, align 8, !tbaa !24
  %669 = icmp sgt i64 %668, 0
  %670 = shl i64 %668, 3
  br label %671

671:                                              ; preds = %666, %732
  %672 = phi double [ 6.553500e+04, %666 ], [ %734, %732 ]
  %673 = phi ptr [ %405, %666 ], [ %737, %732 ]
  %674 = phi ptr [ %416, %666 ], [ %736, %732 ]
  %675 = phi ptr [ %667, %666 ], [ %733, %732 ]
  %676 = phi i64 [ 0, %666 ], [ %738, %732 ]
  %677 = phi <4 x double> [ <double 6.553500e+04, double 6.553500e+04, double 6.553500e+04, double 6.553500e+04>, %666 ], [ %735, %732 ]
  br i1 %669, label %678, label %732

678:                                              ; preds = %671
  %679 = icmp eq ptr %673, null
  br label %680

680:                                              ; preds = %678, %724
  %681 = phi double [ %672, %678 ], [ %725, %724 ]
  %682 = phi ptr [ %675, %678 ], [ %728, %724 ]
  %683 = phi i64 [ 0, %678 ], [ %727, %724 ]
  %684 = phi <4 x double> [ %677, %678 ], [ %726, %724 ]
  %685 = load double, ptr %682, align 8, !tbaa !33
  %686 = fcmp uno double %685, 0.000000e+00
  %687 = fcmp olt double %685, 5.000000e-01
  %688 = or i1 %686, %687
  br i1 %688, label %724, label %689

689:                                              ; preds = %680
  %690 = getelementptr inbounds %struct._PixelPacket, ptr %674, i64 %683
  %691 = getelementptr inbounds %struct._PixelPacket, ptr %674, i64 %683, i32 2
  %692 = load i16, ptr %691, align 2, !tbaa !113
  %693 = uitofp i16 %692 to double
  %694 = extractelement <4 x double> %684, i64 2
  %695 = tail call fastcc double @MagickMin(double noundef %694, double noundef %693) #25
  %696 = getelementptr inbounds %struct._PixelPacket, ptr %674, i64 %683, i32 1
  %697 = load i16, ptr %696, align 2, !tbaa !114
  %698 = uitofp i16 %697 to double
  %699 = extractelement <4 x double> %684, i64 1
  %700 = tail call fastcc double @MagickMin(double noundef %699, double noundef %698) #25
  %701 = load i16, ptr %690, align 2, !tbaa !115
  %702 = uitofp i16 %701 to double
  %703 = extractelement <4 x double> %684, i64 0
  %704 = tail call fastcc double @MagickMin(double noundef %703, double noundef %702) #25
  %705 = getelementptr inbounds %struct._PixelPacket, ptr %674, i64 %683, i32 3
  %706 = load i16, ptr %705, align 2, !tbaa !116
  %707 = uitofp i16 %706 to double
  %708 = fsub double 6.553500e+04, %707
  %709 = extractelement <4 x double> %684, i64 3
  %710 = tail call fastcc double @MagickMin(double noundef %709, double noundef %708) #25
  %711 = insertelement <4 x double> poison, double %704, i64 0
  %712 = insertelement <4 x double> %711, double %700, i64 1
  %713 = insertelement <4 x double> %712, double %695, i64 2
  %714 = insertelement <4 x double> %713, double %710, i64 3
  br i1 %420, label %715, label %724

715:                                              ; preds = %689
  br i1 %679, label %720, label %716

716:                                              ; preds = %715
  %717 = getelementptr inbounds i16, ptr %673, i64 %683
  %718 = load i16, ptr %717, align 2, !tbaa !10
  %719 = zext i16 %718 to i32
  br label %720

720:                                              ; preds = %715, %716
  %721 = phi i32 [ %719, %716 ], [ 0, %715 ]
  %722 = sitofp i32 %721 to double
  %723 = tail call fastcc double @MagickMin(double noundef %681, double noundef %722) #25
  br label %724

724:                                              ; preds = %689, %720, %680
  %725 = phi double [ %681, %680 ], [ %723, %720 ], [ %681, %689 ]
  %726 = phi <4 x double> [ %684, %680 ], [ %714, %720 ], [ %714, %689 ]
  %727 = add nuw nsw i64 %683, 1
  %728 = getelementptr inbounds double, ptr %682, i64 1
  %729 = icmp eq i64 %727, %668
  br i1 %729, label %730, label %680, !llvm.loop !144

730:                                              ; preds = %724
  %731 = getelementptr i8, ptr %675, i64 %670
  br label %732

732:                                              ; preds = %730, %671
  %733 = phi ptr [ %675, %671 ], [ %731, %730 ]
  %734 = phi double [ %672, %671 ], [ %725, %730 ]
  %735 = phi <4 x double> [ %677, %671 ], [ %726, %730 ]
  %736 = getelementptr inbounds %struct._PixelPacket, ptr %674, i64 %16
  %737 = getelementptr inbounds i16, ptr %673, i64 %16
  %738 = add nuw nsw i64 %676, 1
  %739 = icmp eq i64 %738, %664
  br i1 %739, label %1166, label %671, !llvm.loop !145

740:                                              ; preds = %449
  %741 = load i64, ptr %13, align 8, !tbaa !24
  %742 = load i64, ptr %368, align 8, !tbaa !25
  %743 = icmp sgt i64 %742, 0
  br i1 %743, label %744, label %1183

744:                                              ; preds = %740
  %745 = load ptr, ptr %373, align 8, !tbaa !32
  %746 = mul i64 %742, %741
  %747 = getelementptr double, ptr %745, i64 %746
  %748 = getelementptr double, ptr %747, i64 -1
  %749 = icmp sgt i64 %741, 0
  %750 = mul i64 %741, -8
  br label %751

751:                                              ; preds = %744, %812
  %752 = phi double [ 0.000000e+00, %744 ], [ %814, %812 ]
  %753 = phi ptr [ %405, %744 ], [ %817, %812 ]
  %754 = phi ptr [ %416, %744 ], [ %816, %812 ]
  %755 = phi ptr [ %748, %744 ], [ %813, %812 ]
  %756 = phi i64 [ 0, %744 ], [ %818, %812 ]
  %757 = phi <4 x double> [ zeroinitializer, %744 ], [ %815, %812 ]
  br i1 %749, label %758, label %812

758:                                              ; preds = %751
  %759 = icmp eq ptr %753, null
  br label %760

760:                                              ; preds = %758, %804
  %761 = phi double [ %752, %758 ], [ %805, %804 ]
  %762 = phi ptr [ %755, %758 ], [ %808, %804 ]
  %763 = phi i64 [ 0, %758 ], [ %807, %804 ]
  %764 = phi <4 x double> [ %757, %758 ], [ %806, %804 ]
  %765 = load double, ptr %762, align 8, !tbaa !33
  %766 = fcmp uno double %765, 0.000000e+00
  %767 = fcmp olt double %765, 5.000000e-01
  %768 = or i1 %766, %767
  br i1 %768, label %804, label %769

769:                                              ; preds = %760
  %770 = getelementptr inbounds %struct._PixelPacket, ptr %754, i64 %763
  %771 = getelementptr inbounds %struct._PixelPacket, ptr %754, i64 %763, i32 2
  %772 = load i16, ptr %771, align 2, !tbaa !113
  %773 = uitofp i16 %772 to double
  %774 = extractelement <4 x double> %764, i64 2
  %775 = tail call fastcc double @MagickMax(double noundef %774, double noundef %773) #25
  %776 = getelementptr inbounds %struct._PixelPacket, ptr %754, i64 %763, i32 1
  %777 = load i16, ptr %776, align 2, !tbaa !114
  %778 = uitofp i16 %777 to double
  %779 = extractelement <4 x double> %764, i64 1
  %780 = tail call fastcc double @MagickMax(double noundef %779, double noundef %778) #25
  %781 = load i16, ptr %770, align 2, !tbaa !115
  %782 = uitofp i16 %781 to double
  %783 = extractelement <4 x double> %764, i64 0
  %784 = tail call fastcc double @MagickMax(double noundef %783, double noundef %782) #25
  %785 = getelementptr inbounds %struct._PixelPacket, ptr %754, i64 %763, i32 3
  %786 = load i16, ptr %785, align 2, !tbaa !116
  %787 = uitofp i16 %786 to double
  %788 = fsub double 6.553500e+04, %787
  %789 = extractelement <4 x double> %764, i64 3
  %790 = tail call fastcc double @MagickMax(double noundef %789, double noundef %788) #25
  %791 = insertelement <4 x double> poison, double %784, i64 0
  %792 = insertelement <4 x double> %791, double %780, i64 1
  %793 = insertelement <4 x double> %792, double %775, i64 2
  %794 = insertelement <4 x double> %793, double %790, i64 3
  br i1 %420, label %795, label %804

795:                                              ; preds = %769
  br i1 %759, label %800, label %796

796:                                              ; preds = %795
  %797 = getelementptr inbounds i16, ptr %753, i64 %763
  %798 = load i16, ptr %797, align 2, !tbaa !10
  %799 = zext i16 %798 to i32
  br label %800

800:                                              ; preds = %795, %796
  %801 = phi i32 [ %799, %796 ], [ 0, %795 ]
  %802 = sitofp i32 %801 to double
  %803 = tail call fastcc double @MagickMax(double noundef %761, double noundef %802) #25
  br label %804

804:                                              ; preds = %769, %800, %760
  %805 = phi double [ %761, %760 ], [ %803, %800 ], [ %761, %769 ]
  %806 = phi <4 x double> [ %764, %760 ], [ %794, %800 ], [ %794, %769 ]
  %807 = add nuw nsw i64 %763, 1
  %808 = getelementptr inbounds double, ptr %762, i64 -1
  %809 = icmp eq i64 %807, %741
  br i1 %809, label %810, label %760, !llvm.loop !146

810:                                              ; preds = %804
  %811 = getelementptr i8, ptr %755, i64 %750
  br label %812

812:                                              ; preds = %810, %751
  %813 = phi ptr [ %755, %751 ], [ %811, %810 ]
  %814 = phi double [ %752, %751 ], [ %805, %810 ]
  %815 = phi <4 x double> [ %757, %751 ], [ %806, %810 ]
  %816 = getelementptr inbounds %struct._PixelPacket, ptr %754, i64 %16
  %817 = getelementptr inbounds i16, ptr %753, i64 %16
  %818 = add nuw nsw i64 %756, 1
  %819 = icmp eq i64 %818, %742
  br i1 %819, label %1166, label %751, !llvm.loop !147

820:                                              ; preds = %449, %449, %449
  %821 = load i64, ptr %368, align 8, !tbaa !25
  %822 = icmp sgt i64 %821, 0
  br i1 %822, label %823, label %946

823:                                              ; preds = %820
  %824 = load ptr, ptr %373, align 8, !tbaa !32
  %825 = load i64, ptr %13, align 8, !tbaa !24
  %826 = icmp sgt i64 %825, 0
  %827 = shl i64 %825, 3
  br label %828

828:                                              ; preds = %823, %933
  %829 = phi double [ 0.000000e+00, %823 ], [ %940, %933 ]
  %830 = phi double [ 6.553500e+04, %823 ], [ %939, %933 ]
  %831 = phi double [ 6.553500e+04, %823 ], [ %938, %933 ]
  %832 = phi double [ 6.553500e+04, %823 ], [ %937, %933 ]
  %833 = phi double [ 6.553500e+04, %823 ], [ %936, %933 ]
  %834 = phi double [ 6.553500e+04, %823 ], [ %935, %933 ]
  %835 = phi ptr [ %405, %823 ], [ %943, %933 ]
  %836 = phi ptr [ %416, %823 ], [ %942, %933 ]
  %837 = phi ptr [ %824, %823 ], [ %934, %933 ]
  %838 = phi i64 [ 0, %823 ], [ %944, %933 ]
  %839 = phi <4 x double> [ zeroinitializer, %823 ], [ %941, %933 ]
  br i1 %826, label %840, label %933

840:                                              ; preds = %828
  %841 = icmp eq ptr %835, null
  br label %842

842:                                              ; preds = %840, %920
  %843 = phi double [ %829, %840 ], [ %926, %920 ]
  %844 = phi double [ %830, %840 ], [ %925, %920 ]
  %845 = phi double [ %831, %840 ], [ %924, %920 ]
  %846 = phi double [ %832, %840 ], [ %923, %920 ]
  %847 = phi double [ %833, %840 ], [ %922, %920 ]
  %848 = phi double [ %834, %840 ], [ %921, %920 ]
  %849 = phi ptr [ %837, %840 ], [ %929, %920 ]
  %850 = phi i64 [ 0, %840 ], [ %928, %920 ]
  %851 = phi <4 x double> [ %839, %840 ], [ %927, %920 ]
  %852 = load double, ptr %849, align 8, !tbaa !33
  %853 = fcmp uno double %852, 0.000000e+00
  br i1 %853, label %920, label %854

854:                                              ; preds = %842
  %855 = fcmp ogt double %852, 0x3FE6666666666666
  br i1 %855, label %856, label %883

856:                                              ; preds = %854
  %857 = getelementptr inbounds %struct._PixelPacket, ptr %836, i64 %850
  %858 = getelementptr inbounds %struct._PixelPacket, ptr %836, i64 %850, i32 2
  %859 = load i16, ptr %858, align 2, !tbaa !113
  %860 = uitofp i16 %859 to double
  %861 = tail call fastcc double @MagickMin(double noundef %844, double noundef %860) #25
  %862 = getelementptr inbounds %struct._PixelPacket, ptr %836, i64 %850, i32 1
  %863 = load i16, ptr %862, align 2, !tbaa !114
  %864 = uitofp i16 %863 to double
  %865 = tail call fastcc double @MagickMin(double noundef %845, double noundef %864) #25
  %866 = load i16, ptr %857, align 2, !tbaa !115
  %867 = uitofp i16 %866 to double
  %868 = tail call fastcc double @MagickMin(double noundef %846, double noundef %867) #25
  %869 = getelementptr inbounds %struct._PixelPacket, ptr %836, i64 %850, i32 3
  %870 = load i16, ptr %869, align 2, !tbaa !116
  %871 = uitofp i16 %870 to double
  %872 = fsub double 6.553500e+04, %871
  %873 = tail call fastcc double @MagickMin(double noundef %847, double noundef %872) #25
  br i1 %420, label %874, label %920

874:                                              ; preds = %856
  br i1 %841, label %879, label %875

875:                                              ; preds = %874
  %876 = getelementptr inbounds i16, ptr %835, i64 %850
  %877 = load i16, ptr %876, align 2, !tbaa !10
  %878 = zext i16 %877 to i32
  br label %879

879:                                              ; preds = %874, %875
  %880 = phi i32 [ %878, %875 ], [ 0, %874 ]
  %881 = sitofp i32 %880 to double
  %882 = tail call fastcc double @MagickMin(double noundef %848, double noundef %881) #25
  br label %920

883:                                              ; preds = %854
  %884 = fcmp olt double %852, 3.000000e-01
  br i1 %884, label %885, label %920

885:                                              ; preds = %883
  %886 = getelementptr inbounds %struct._PixelPacket, ptr %836, i64 %850
  %887 = getelementptr inbounds %struct._PixelPacket, ptr %836, i64 %850, i32 2
  %888 = load i16, ptr %887, align 2, !tbaa !113
  %889 = uitofp i16 %888 to double
  %890 = extractelement <4 x double> %851, i64 2
  %891 = tail call fastcc double @MagickMax(double noundef %890, double noundef %889) #25
  %892 = getelementptr inbounds %struct._PixelPacket, ptr %836, i64 %850, i32 1
  %893 = load i16, ptr %892, align 2, !tbaa !114
  %894 = uitofp i16 %893 to double
  %895 = extractelement <4 x double> %851, i64 1
  %896 = tail call fastcc double @MagickMax(double noundef %895, double noundef %894) #25
  %897 = load i16, ptr %886, align 2, !tbaa !115
  %898 = uitofp i16 %897 to double
  %899 = extractelement <4 x double> %851, i64 0
  %900 = tail call fastcc double @MagickMax(double noundef %899, double noundef %898) #25
  %901 = getelementptr inbounds %struct._PixelPacket, ptr %836, i64 %850, i32 3
  %902 = load i16, ptr %901, align 2, !tbaa !116
  %903 = uitofp i16 %902 to double
  %904 = fsub double 6.553500e+04, %903
  %905 = extractelement <4 x double> %851, i64 3
  %906 = tail call fastcc double @MagickMax(double noundef %905, double noundef %904) #25
  %907 = insertelement <4 x double> poison, double %900, i64 0
  %908 = insertelement <4 x double> %907, double %896, i64 1
  %909 = insertelement <4 x double> %908, double %891, i64 2
  %910 = insertelement <4 x double> %909, double %906, i64 3
  br i1 %420, label %911, label %920

911:                                              ; preds = %885
  br i1 %841, label %916, label %912

912:                                              ; preds = %911
  %913 = getelementptr inbounds i16, ptr %835, i64 %850
  %914 = load i16, ptr %913, align 2, !tbaa !10
  %915 = zext i16 %914 to i32
  br label %916

916:                                              ; preds = %911, %912
  %917 = phi i32 [ %915, %912 ], [ 0, %911 ]
  %918 = sitofp i32 %917 to double
  %919 = tail call fastcc double @MagickMax(double noundef %843, double noundef %918) #25
  br label %920

920:                                              ; preds = %879, %856, %885, %916, %883, %842
  %921 = phi double [ %848, %842 ], [ %882, %879 ], [ %848, %856 ], [ %848, %916 ], [ %848, %885 ], [ %848, %883 ]
  %922 = phi double [ %847, %842 ], [ %873, %879 ], [ %873, %856 ], [ %847, %916 ], [ %847, %885 ], [ %847, %883 ]
  %923 = phi double [ %846, %842 ], [ %868, %879 ], [ %868, %856 ], [ %846, %916 ], [ %846, %885 ], [ %846, %883 ]
  %924 = phi double [ %845, %842 ], [ %865, %879 ], [ %865, %856 ], [ %845, %916 ], [ %845, %885 ], [ %845, %883 ]
  %925 = phi double [ %844, %842 ], [ %861, %879 ], [ %861, %856 ], [ %844, %916 ], [ %844, %885 ], [ %844, %883 ]
  %926 = phi double [ %843, %842 ], [ %843, %879 ], [ %843, %856 ], [ %919, %916 ], [ %843, %885 ], [ %843, %883 ]
  %927 = phi <4 x double> [ %851, %842 ], [ %851, %879 ], [ %851, %856 ], [ %910, %916 ], [ %910, %885 ], [ %851, %883 ]
  %928 = add nuw nsw i64 %850, 1
  %929 = getelementptr inbounds double, ptr %849, i64 1
  %930 = icmp eq i64 %928, %825
  br i1 %930, label %931, label %842, !llvm.loop !148

931:                                              ; preds = %920
  %932 = getelementptr i8, ptr %837, i64 %827
  br label %933

933:                                              ; preds = %931, %828
  %934 = phi ptr [ %837, %828 ], [ %932, %931 ]
  %935 = phi double [ %834, %828 ], [ %921, %931 ]
  %936 = phi double [ %833, %828 ], [ %922, %931 ]
  %937 = phi double [ %832, %828 ], [ %923, %931 ]
  %938 = phi double [ %831, %828 ], [ %924, %931 ]
  %939 = phi double [ %830, %828 ], [ %925, %931 ]
  %940 = phi double [ %829, %828 ], [ %926, %931 ]
  %941 = phi <4 x double> [ %839, %828 ], [ %927, %931 ]
  %942 = getelementptr inbounds %struct._PixelPacket, ptr %836, i64 %16
  %943 = getelementptr inbounds i16, ptr %835, i64 %16
  %944 = add nuw nsw i64 %838, 1
  %945 = icmp eq i64 %944, %821
  br i1 %945, label %946, label %828, !llvm.loop !149

946:                                              ; preds = %933, %820
  %947 = phi double [ 6.553500e+04, %820 ], [ %935, %933 ]
  %948 = phi double [ 6.553500e+04, %820 ], [ %936, %933 ]
  %949 = phi double [ 6.553500e+04, %820 ], [ %937, %933 ]
  %950 = phi double [ 6.553500e+04, %820 ], [ %938, %933 ]
  %951 = phi double [ 6.553500e+04, %820 ], [ %939, %933 ]
  %952 = phi double [ 0.000000e+00, %820 ], [ %940, %933 ]
  %953 = phi <4 x double> [ zeroinitializer, %820 ], [ %941, %933 ]
  %954 = extractelement <4 x double> %953, i64 2
  %955 = fsub double %951, %954
  %956 = tail call fastcc double @MagickMax(double noundef %955, double noundef 0.000000e+00) #25
  %957 = extractelement <4 x double> %953, i64 1
  %958 = fsub double %950, %957
  %959 = tail call fastcc double @MagickMax(double noundef %958, double noundef 0.000000e+00) #25
  %960 = extractelement <4 x double> %953, i64 0
  %961 = fsub double %949, %960
  %962 = tail call fastcc double @MagickMax(double noundef %961, double noundef 0.000000e+00) #25
  %963 = extractelement <4 x double> %953, i64 3
  %964 = fsub double %948, %963
  %965 = tail call fastcc double @MagickMax(double noundef %964, double noundef 0.000000e+00) #25
  %966 = fsub double %947, %952
  %967 = tail call fastcc double @MagickMax(double noundef %966, double noundef 0.000000e+00) #25
  %968 = insertelement <4 x double> poison, double %962, i64 0
  %969 = insertelement <4 x double> %968, double %959, i64 1
  %970 = insertelement <4 x double> %969, double %956, i64 2
  %971 = insertelement <4 x double> %970, double %965, i64 3
  br label %1166

972:                                              ; preds = %449
  %973 = load i64, ptr %368, align 8, !tbaa !25
  %974 = icmp sgt i64 %973, 0
  br i1 %974, label %975, label %1221

975:                                              ; preds = %972
  %976 = load ptr, ptr %373, align 8, !tbaa !32
  %977 = load i64, ptr %13, align 8, !tbaa !24
  br label %978

978:                                              ; preds = %975, %1016
  %979 = phi i64 [ %1017, %1016 ], [ %973, %975 ]
  %980 = phi i64 [ %1018, %1016 ], [ %977, %975 ]
  %981 = phi double [ %1020, %1016 ], [ %450, %975 ]
  %982 = phi ptr [ %1021, %1016 ], [ %416, %975 ]
  %983 = phi ptr [ %1019, %1016 ], [ %976, %975 ]
  %984 = phi i64 [ %1022, %1016 ], [ 0, %975 ]
  %985 = icmp sgt i64 %980, 0
  br i1 %985, label %986, label %1016

986:                                              ; preds = %978, %1008
  %987 = phi double [ %1009, %1008 ], [ %981, %978 ]
  %988 = phi ptr [ %1011, %1008 ], [ %983, %978 ]
  %989 = phi i64 [ %1010, %1008 ], [ 0, %978 ]
  %990 = load double, ptr %988, align 8, !tbaa !33
  %991 = fcmp uno double %990, 0.000000e+00
  %992 = fcmp olt double %990, 5.000000e-01
  %993 = or i1 %991, %992
  br i1 %993, label %1008, label %994

994:                                              ; preds = %986
  %995 = fcmp oeq double %987, 0.000000e+00
  br i1 %995, label %1001, label %996

996:                                              ; preds = %994
  %997 = getelementptr inbounds %struct._PixelPacket, ptr %982, i64 %989
  %998 = tail call float @GetPixelIntensity(ptr noundef %0, ptr noundef %997) #32
  %999 = tail call float @GetPixelIntensity(ptr noundef %1, ptr noundef nonnull %415) #32
  %1000 = fcmp olt float %998, %999
  br i1 %1000, label %1001, label %1008

1001:                                             ; preds = %996, %994
  %1002 = getelementptr inbounds %struct._PixelPacket, ptr %982, i64 %989
  %1003 = load i64, ptr %1002, align 2
  store i64 %1003, ptr %415, align 2
  %1004 = fcmp ogt double %987, 0.000000e+00
  br i1 %1004, label %1005, label %1008

1005:                                             ; preds = %1001
  %1006 = load i64, ptr %31, align 8, !tbaa !79
  %1007 = add i64 %1006, 1
  store i64 %1007, ptr %31, align 8, !tbaa !79
  br label %1008

1008:                                             ; preds = %1001, %1005, %996, %986
  %1009 = phi double [ %987, %986 ], [ %987, %996 ], [ 1.000000e+00, %1005 ], [ 1.000000e+00, %1001 ]
  %1010 = add nuw nsw i64 %989, 1
  %1011 = getelementptr inbounds double, ptr %988, i64 1
  %1012 = load i64, ptr %13, align 8, !tbaa !24
  %1013 = icmp slt i64 %1010, %1012
  br i1 %1013, label %986, label %1014, !llvm.loop !150

1014:                                             ; preds = %1008
  %1015 = load i64, ptr %368, align 8, !tbaa !25
  br label %1016

1016:                                             ; preds = %1014, %978
  %1017 = phi i64 [ %979, %978 ], [ %1015, %1014 ]
  %1018 = phi i64 [ %980, %978 ], [ %1012, %1014 ]
  %1019 = phi ptr [ %983, %978 ], [ %1011, %1014 ]
  %1020 = phi double [ %981, %978 ], [ %1009, %1014 ]
  %1021 = getelementptr inbounds %struct._PixelPacket, ptr %982, i64 %16
  %1022 = add nuw nsw i64 %984, 1
  %1023 = icmp slt i64 %1022, %1017
  br i1 %1023, label %978, label %1162, !llvm.loop !151

1024:                                             ; preds = %449
  %1025 = load i64, ptr %368, align 8, !tbaa !25
  %1026 = icmp sgt i64 %1025, 0
  br i1 %1026, label %1027, label %1221

1027:                                             ; preds = %1024
  %1028 = load ptr, ptr %373, align 8, !tbaa !32
  %1029 = load i64, ptr %13, align 8, !tbaa !24
  %1030 = mul i64 %1025, %1029
  %1031 = getelementptr double, ptr %1028, i64 %1030
  %1032 = getelementptr double, ptr %1031, i64 -1
  br label %1033

1033:                                             ; preds = %1027, %1071
  %1034 = phi i64 [ %1072, %1071 ], [ %1025, %1027 ]
  %1035 = phi i64 [ %1073, %1071 ], [ %1029, %1027 ]
  %1036 = phi double [ %1075, %1071 ], [ %450, %1027 ]
  %1037 = phi ptr [ %1076, %1071 ], [ %416, %1027 ]
  %1038 = phi ptr [ %1074, %1071 ], [ %1032, %1027 ]
  %1039 = phi i64 [ %1077, %1071 ], [ 0, %1027 ]
  %1040 = icmp sgt i64 %1035, 0
  br i1 %1040, label %1041, label %1071

1041:                                             ; preds = %1033, %1063
  %1042 = phi double [ %1064, %1063 ], [ %1036, %1033 ]
  %1043 = phi ptr [ %1066, %1063 ], [ %1038, %1033 ]
  %1044 = phi i64 [ %1065, %1063 ], [ 0, %1033 ]
  %1045 = load double, ptr %1043, align 8, !tbaa !33
  %1046 = fcmp uno double %1045, 0.000000e+00
  %1047 = fcmp olt double %1045, 5.000000e-01
  %1048 = or i1 %1046, %1047
  br i1 %1048, label %1063, label %1049

1049:                                             ; preds = %1041
  %1050 = fcmp oeq double %1042, 0.000000e+00
  br i1 %1050, label %1056, label %1051

1051:                                             ; preds = %1049
  %1052 = getelementptr inbounds %struct._PixelPacket, ptr %1037, i64 %1044
  %1053 = tail call float @GetPixelIntensity(ptr noundef %0, ptr noundef %1052) #32
  %1054 = tail call float @GetPixelIntensity(ptr noundef %1, ptr noundef nonnull %415) #32
  %1055 = fcmp ogt float %1053, %1054
  br i1 %1055, label %1056, label %1063

1056:                                             ; preds = %1051, %1049
  %1057 = getelementptr inbounds %struct._PixelPacket, ptr %1037, i64 %1044
  %1058 = load i64, ptr %1057, align 2
  store i64 %1058, ptr %415, align 2
  %1059 = fcmp ogt double %1042, 0.000000e+00
  br i1 %1059, label %1060, label %1063

1060:                                             ; preds = %1056
  %1061 = load i64, ptr %31, align 8, !tbaa !79
  %1062 = add i64 %1061, 1
  store i64 %1062, ptr %31, align 8, !tbaa !79
  br label %1063

1063:                                             ; preds = %1056, %1060, %1051, %1041
  %1064 = phi double [ %1042, %1041 ], [ %1042, %1051 ], [ 1.000000e+00, %1060 ], [ 1.000000e+00, %1056 ]
  %1065 = add nuw nsw i64 %1044, 1
  %1066 = getelementptr inbounds double, ptr %1043, i64 -1
  %1067 = load i64, ptr %13, align 8, !tbaa !24
  %1068 = icmp slt i64 %1065, %1067
  br i1 %1068, label %1041, label %1069, !llvm.loop !152

1069:                                             ; preds = %1063
  %1070 = load i64, ptr %368, align 8, !tbaa !25
  br label %1071

1071:                                             ; preds = %1069, %1033
  %1072 = phi i64 [ %1034, %1033 ], [ %1070, %1069 ]
  %1073 = phi i64 [ %1035, %1033 ], [ %1067, %1069 ]
  %1074 = phi ptr [ %1038, %1033 ], [ %1066, %1069 ]
  %1075 = phi double [ %1036, %1033 ], [ %1064, %1069 ]
  %1076 = getelementptr inbounds %struct._PixelPacket, ptr %1037, i64 %16
  %1077 = add nuw nsw i64 %1039, 1
  %1078 = icmp slt i64 %1077, %1072
  br i1 %1078, label %1033, label %1164, !llvm.loop !153

1079:                                             ; preds = %449
  %1080 = load i64, ptr %13, align 8, !tbaa !24
  %1081 = load i64, ptr %368, align 8, !tbaa !25
  %1082 = icmp sgt i64 %1081, 0
  br i1 %1082, label %1083, label %1183

1083:                                             ; preds = %1079
  %1084 = load ptr, ptr %373, align 8, !tbaa !32
  %1085 = mul i64 %1081, %1080
  %1086 = getelementptr double, ptr %1084, i64 %1085
  %1087 = getelementptr double, ptr %1086, i64 -1
  %1088 = icmp sgt i64 %1080, 0
  %1089 = mul i64 %1080, -8
  br label %1090

1090:                                             ; preds = %1083, %1154
  %1091 = phi double [ %447, %1083 ], [ %1156, %1154 ]
  %1092 = phi ptr [ %405, %1083 ], [ %1159, %1154 ]
  %1093 = phi ptr [ %416, %1083 ], [ %1158, %1154 ]
  %1094 = phi ptr [ %1087, %1083 ], [ %1155, %1154 ]
  %1095 = phi i64 [ 0, %1083 ], [ %1160, %1154 ]
  %1096 = phi <4 x double> [ %453, %1083 ], [ %1157, %1154 ]
  br i1 %1088, label %1097, label %1154

1097:                                             ; preds = %1090
  %1098 = icmp eq ptr %1092, null
  br label %1099

1099:                                             ; preds = %1097, %1146
  %1100 = phi double [ %1091, %1097 ], [ %1147, %1146 ]
  %1101 = phi ptr [ %1094, %1097 ], [ %1150, %1146 ]
  %1102 = phi i64 [ 0, %1097 ], [ %1149, %1146 ]
  %1103 = phi <4 x double> [ %1096, %1097 ], [ %1148, %1146 ]
  %1104 = load double, ptr %1101, align 8, !tbaa !33
  %1105 = fcmp uno double %1104, 0.000000e+00
  br i1 %1105, label %1146, label %1106

1106:                                             ; preds = %1099
  %1107 = getelementptr inbounds %struct._PixelPacket, ptr %1093, i64 %1102
  %1108 = getelementptr inbounds %struct._PixelPacket, ptr %1093, i64 %1102, i32 2
  %1109 = load i16, ptr %1108, align 2, !tbaa !113
  %1110 = uitofp i16 %1109 to double
  %1111 = fadd double %1104, %1110
  %1112 = extractelement <4 x double> %1103, i64 2
  %1113 = tail call fastcc double @MagickMin(double noundef %1112, double noundef %1111) #25
  %1114 = getelementptr inbounds %struct._PixelPacket, ptr %1093, i64 %1102, i32 1
  %1115 = load i16, ptr %1114, align 2, !tbaa !114
  %1116 = uitofp i16 %1115 to double
  %1117 = fadd double %1104, %1116
  %1118 = extractelement <4 x double> %1103, i64 1
  %1119 = tail call fastcc double @MagickMin(double noundef %1118, double noundef %1117) #25
  %1120 = load i16, ptr %1107, align 2, !tbaa !115
  %1121 = uitofp i16 %1120 to double
  %1122 = fadd double %1104, %1121
  %1123 = extractelement <4 x double> %1103, i64 0
  %1124 = tail call fastcc double @MagickMin(double noundef %1123, double noundef %1122) #25
  %1125 = fadd double %1104, 6.553500e+04
  %1126 = getelementptr inbounds %struct._PixelPacket, ptr %1093, i64 %1102, i32 3
  %1127 = load i16, ptr %1126, align 2, !tbaa !116
  %1128 = uitofp i16 %1127 to double
  %1129 = fsub double %1125, %1128
  %1130 = extractelement <4 x double> %1103, i64 3
  %1131 = tail call fastcc double @MagickMin(double noundef %1130, double noundef %1129) #25
  %1132 = insertelement <4 x double> poison, double %1124, i64 0
  %1133 = insertelement <4 x double> %1132, double %1119, i64 1
  %1134 = insertelement <4 x double> %1133, double %1113, i64 2
  %1135 = insertelement <4 x double> %1134, double %1131, i64 3
  br i1 %420, label %1136, label %1146

1136:                                             ; preds = %1106
  br i1 %1098, label %1141, label %1137

1137:                                             ; preds = %1136
  %1138 = getelementptr inbounds i16, ptr %1092, i64 %1102
  %1139 = load i16, ptr %1138, align 2, !tbaa !10
  %1140 = zext i16 %1139 to i32
  br label %1141

1141:                                             ; preds = %1136, %1137
  %1142 = phi i32 [ %1140, %1137 ], [ 0, %1136 ]
  %1143 = sitofp i32 %1142 to double
  %1144 = fadd double %1104, %1143
  %1145 = tail call fastcc double @MagickMin(double noundef %1100, double noundef %1144) #25
  br label %1146

1146:                                             ; preds = %1106, %1141, %1099
  %1147 = phi double [ %1100, %1099 ], [ %1145, %1141 ], [ %1100, %1106 ]
  %1148 = phi <4 x double> [ %1103, %1099 ], [ %1135, %1141 ], [ %1135, %1106 ]
  %1149 = add nuw nsw i64 %1102, 1
  %1150 = getelementptr inbounds double, ptr %1101, i64 -1
  %1151 = icmp eq i64 %1149, %1080
  br i1 %1151, label %1152, label %1099, !llvm.loop !154

1152:                                             ; preds = %1146
  %1153 = getelementptr i8, ptr %1094, i64 %1089
  br label %1154

1154:                                             ; preds = %1152, %1090
  %1155 = phi ptr [ %1094, %1090 ], [ %1153, %1152 ]
  %1156 = phi double [ %1091, %1090 ], [ %1147, %1152 ]
  %1157 = phi <4 x double> [ %1096, %1090 ], [ %1148, %1152 ]
  %1158 = getelementptr inbounds %struct._PixelPacket, ptr %1093, i64 %16
  %1159 = getelementptr inbounds i16, ptr %1092, i64 %16
  %1160 = add nuw nsw i64 %1095, 1
  %1161 = icmp eq i64 %1160, %1081
  br i1 %1161, label %1166, label %1090, !llvm.loop !155

1162:                                             ; preds = %1016
  %1163 = insertelement <4 x double> %453, double %1020, i64 2
  br label %1166

1164:                                             ; preds = %1071
  %1165 = insertelement <4 x double> %453, double %1075, i64 2
  br label %1166

1166:                                             ; preds = %1154, %812, %732, %1164, %1162, %624, %658, %449, %556, %552, %946
  %1167 = phi double [ %447, %449 ], [ %447, %946 ], [ %525, %556 ], [ %525, %552 ], [ %625, %658 ], [ %625, %624 ], [ %447, %1162 ], [ %447, %1164 ], [ %447, %732 ], [ %447, %812 ], [ %1156, %1154 ]
  %1168 = phi double [ 6.553500e+04, %449 ], [ %967, %946 ], [ 6.553500e+04, %556 ], [ 6.553500e+04, %552 ], [ 6.553500e+04, %658 ], [ 6.553500e+04, %624 ], [ 6.553500e+04, %1162 ], [ 6.553500e+04, %1164 ], [ %734, %732 ], [ 6.553500e+04, %812 ], [ 6.553500e+04, %1154 ]
  %1169 = phi double [ 0.000000e+00, %449 ], [ %952, %946 ], [ 0.000000e+00, %556 ], [ 0.000000e+00, %552 ], [ 0.000000e+00, %658 ], [ 0.000000e+00, %624 ], [ 0.000000e+00, %1162 ], [ 0.000000e+00, %1164 ], [ 0.000000e+00, %732 ], [ %814, %812 ], [ 0.000000e+00, %1154 ]
  %1170 = phi <4 x double> [ %453, %449 ], [ %453, %946 ], [ %526, %556 ], [ %526, %552 ], [ %628, %658 ], [ %628, %624 ], [ %1163, %1162 ], [ %1165, %1164 ], [ %453, %732 ], [ %453, %812 ], [ %1157, %1154 ]
  %1171 = phi <4 x double> [ <double 6.553500e+04, double 6.553500e+04, double 6.553500e+04, double 6.553500e+04>, %449 ], [ %971, %946 ], [ <double 6.553500e+04, double 6.553500e+04, double 6.553500e+04, double 6.553500e+04>, %556 ], [ <double 6.553500e+04, double 6.553500e+04, double 6.553500e+04, double 6.553500e+04>, %552 ], [ <double 6.553500e+04, double 6.553500e+04, double 6.553500e+04, double 6.553500e+04>, %658 ], [ <double 6.553500e+04, double 6.553500e+04, double 6.553500e+04, double 6.553500e+04>, %624 ], [ <double 6.553500e+04, double 6.553500e+04, double 6.553500e+04, double 6.553500e+04>, %1162 ], [ <double 6.553500e+04, double 6.553500e+04, double 6.553500e+04, double 6.553500e+04>, %1164 ], [ %735, %732 ], [ <double 6.553500e+04, double 6.553500e+04, double 6.553500e+04, double 6.553500e+04>, %812 ], [ <double 6.553500e+04, double 6.553500e+04, double 6.553500e+04, double 6.553500e+04>, %1154 ]
  %1172 = phi <4 x double> [ zeroinitializer, %449 ], [ %953, %946 ], [ zeroinitializer, %556 ], [ zeroinitializer, %552 ], [ zeroinitializer, %658 ], [ zeroinitializer, %624 ], [ zeroinitializer, %1162 ], [ zeroinitializer, %1164 ], [ zeroinitializer, %732 ], [ %815, %812 ], [ zeroinitializer, %1154 ]
  switch i32 %2, label %1180 [
    i32 18, label %1173
    i32 3, label %1173
    i32 4, label %1183
    i32 19, label %1174
    i32 20, label %1177
  ]

1173:                                             ; preds = %1166, %1166
  br label %1180

1174:                                             ; preds = %1166
  %1175 = fsub <4 x double> %1170, %1171
  %1176 = fsub double %1167, %1168
  br label %1183

1177:                                             ; preds = %1166
  %1178 = fadd <4 x double> %1170, %1171
  %1179 = fadd double %1167, %1168
  br label %1183

1180:                                             ; preds = %1166, %1173
  %1181 = phi double [ %1167, %1166 ], [ %1168, %1173 ]
  %1182 = phi <4 x double> [ %1170, %1166 ], [ %1171, %1173 ]
  switch i32 %2, label %1183 [
    i32 0, label %1221
    i32 1, label %1221
    i32 6, label %1221
    i32 5, label %1221
  ]

1183:                                             ; preds = %1079, %740, %663, %1166, %1174, %1177, %1180
  %1184 = phi double [ %1181, %1180 ], [ %1176, %1174 ], [ %1179, %1177 ], [ %1169, %1166 ], [ 6.553500e+04, %663 ], [ 0.000000e+00, %740 ], [ %447, %1079 ]
  %1185 = phi <4 x double> [ %1182, %1180 ], [ %1175, %1174 ], [ %1178, %1177 ], [ %1172, %1166 ], [ <double 6.553500e+04, double 6.553500e+04, double 6.553500e+04, double 6.553500e+04>, %663 ], [ zeroinitializer, %740 ], [ %453, %1079 ]
  br i1 %378, label %1191, label %1186

1186:                                             ; preds = %1183
  %1187 = extractelement <4 x double> %1185, i64 2
  %1188 = fptrunc double %1187 to float
  %1189 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %1188) #25
  %1190 = getelementptr inbounds %struct._PixelPacket, ptr %415, i64 0, i32 2
  store i16 %1189, ptr %1190, align 2, !tbaa !113
  br label %1191

1191:                                             ; preds = %1186, %1183
  br i1 %380, label %1197, label %1192

1192:                                             ; preds = %1191
  %1193 = extractelement <4 x double> %1185, i64 1
  %1194 = fptrunc double %1193 to float
  %1195 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %1194) #25
  %1196 = getelementptr inbounds %struct._PixelPacket, ptr %415, i64 0, i32 1
  store i16 %1195, ptr %1196, align 2, !tbaa !114
  br label %1197

1197:                                             ; preds = %1192, %1191
  br i1 %382, label %1202, label %1198

1198:                                             ; preds = %1197
  %1199 = extractelement <4 x double> %1185, i64 0
  %1200 = fptrunc double %1199 to float
  %1201 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %1200) #25
  store i16 %1201, ptr %415, align 2, !tbaa !115
  br label %1202

1202:                                             ; preds = %1198, %1197
  br i1 %384, label %1212, label %1203

1203:                                             ; preds = %1202
  %1204 = load i32, ptr %376, align 8, !tbaa !124
  %1205 = icmp eq i32 %1204, 0
  br i1 %1205, label %1212, label %1206

1206:                                             ; preds = %1203
  %1207 = extractelement <4 x double> %1185, i64 3
  %1208 = fptrunc double %1207 to float
  %1209 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %1208) #25
  %1210 = xor i16 %1209, -1
  %1211 = getelementptr inbounds %struct._PixelPacket, ptr %415, i64 0, i32 3
  store i16 %1210, ptr %1211, align 2, !tbaa !116
  br label %1212

1212:                                             ; preds = %1206, %1203, %1202
  br i1 %386, label %1221, label %1213

1213:                                             ; preds = %1212
  %1214 = load i32, ptr %372, align 4, !tbaa !117
  %1215 = icmp ne i32 %1214, 12
  %1216 = select i1 %1215, i1 true, i1 %410
  br i1 %1216, label %1221, label %1217

1217:                                             ; preds = %1213
  %1218 = getelementptr inbounds i16, ptr %406, i64 %414
  %1219 = fptrunc double %1184 to float
  %1220 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %1219) #25
  store i16 %1220, ptr %1218, align 2, !tbaa !10
  br label %1221

1221:                                             ; preds = %1024, %972, %1212, %1213, %1217, %1180, %1180, %1180, %1180
  %1222 = load i16, ptr %429, align 2, !tbaa !113
  %1223 = getelementptr inbounds %struct._PixelPacket, ptr %415, i64 0, i32 2
  %1224 = load i16, ptr %1223, align 2, !tbaa !113
  %1225 = icmp eq i16 %1222, %1224
  br i1 %1225, label %1226, label %1256

1226:                                             ; preds = %1221
  %1227 = load i16, ptr %432, align 2, !tbaa !114
  %1228 = getelementptr inbounds %struct._PixelPacket, ptr %415, i64 0, i32 1
  %1229 = load i16, ptr %1228, align 2, !tbaa !114
  %1230 = icmp eq i16 %1227, %1229
  br i1 %1230, label %1231, label %1256

1231:                                             ; preds = %1226
  %1232 = load i16, ptr %417, align 2, !tbaa !115
  %1233 = load i16, ptr %415, align 2, !tbaa !115
  %1234 = icmp eq i16 %1232, %1233
  br i1 %1234, label %1235, label %1256

1235:                                             ; preds = %1231
  %1236 = load i16, ptr %435, align 2, !tbaa !116
  %1237 = getelementptr inbounds %struct._PixelPacket, ptr %415, i64 0, i32 3
  %1238 = load i16, ptr %1237, align 2, !tbaa !116
  %1239 = icmp eq i16 %1236, %1238
  br i1 %1239, label %1240, label %1256

1240:                                             ; preds = %1235
  %1241 = load i32, ptr %372, align 4, !tbaa !117
  %1242 = icmp eq i32 %1241, 12
  br i1 %1242, label %1243, label %1259

1243:                                             ; preds = %1240
  br i1 %411, label %1247, label %1244

1244:                                             ; preds = %1243
  %1245 = load i16, ptr %412, align 2, !tbaa !10
  %1246 = zext i16 %1245 to i32
  br label %1247

1247:                                             ; preds = %1243, %1244
  %1248 = phi i32 [ %1246, %1244 ], [ 0, %1243 ]
  br i1 %410, label %1253, label %1249

1249:                                             ; preds = %1247
  %1250 = getelementptr inbounds i16, ptr %406, i64 %414
  %1251 = load i16, ptr %1250, align 2, !tbaa !10
  %1252 = zext i16 %1251 to i32
  br label %1253

1253:                                             ; preds = %1247, %1249
  %1254 = phi i32 [ %1252, %1249 ], [ 0, %1247 ]
  %1255 = icmp eq i32 %1248, %1254
  br i1 %1255, label %1259, label %1256

1256:                                             ; preds = %1253, %1235, %1231, %1226, %1221
  %1257 = load i64, ptr %31, align 8, !tbaa !79
  %1258 = add i64 %1257, 1
  store i64 %1258, ptr %31, align 8, !tbaa !79
  br label %1259

1259:                                             ; preds = %1256, %1253, %1240
  %1260 = getelementptr inbounds %struct._PixelPacket, ptr %416, i64 1
  %1261 = getelementptr inbounds %struct._PixelPacket, ptr %415, i64 1
  %1262 = add nuw nsw i64 %414, 1
  %1263 = load i64, ptr %11, align 8, !tbaa !88
  %1264 = icmp slt i64 %1262, %1263
  br i1 %1264, label %413, label %1265, !llvm.loop !156

1265:                                             ; preds = %1259, %404
  %1266 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %10, ptr noundef %6) #32
  %1267 = icmp ne i32 %1266, 0
  %1268 = zext i1 %1267 to i32
  %1269 = load ptr, ptr %387, align 8, !tbaa !126
  %1270 = icmp eq ptr %1269, null
  br i1 %1270, label %1277, label %1271

1271:                                             ; preds = %1265
  %1272 = add nsw i64 %393, 1
  %1273 = load i64, ptr %363, align 8, !tbaa !100
  %1274 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, i64 noundef %393, i64 noundef %1273) #25
  %1275 = icmp eq i32 %1274, 0
  %1276 = select i1 %1275, i32 0, i32 %1268
  br label %1277

1277:                                             ; preds = %1265, %1271, %395, %390
  %1278 = phi i64 [ %393, %390 ], [ %393, %395 ], [ %1272, %1271 ], [ %393, %1265 ]
  %1279 = phi i32 [ 0, %390 ], [ 0, %395 ], [ %1276, %1271 ], [ %1268, %1265 ]
  %1280 = add nuw nsw i64 %391, 1
  %1281 = load i64, ptr %363, align 8, !tbaa !100
  %1282 = icmp slt i64 %1280, %1281
  br i1 %1282, label %390, label %1283, !llvm.loop !157

1283:                                             ; preds = %1277
  %1284 = icmp eq i32 %1279, 0
  br label %1285

1285:                                             ; preds = %362, %1283, %357
  %1286 = phi i1 [ %358, %357 ], [ false, %362 ], [ %1284, %1283 ]
  %1287 = phi i64 [ 0, %357 ], [ -1, %362 ], [ -1, %1283 ]
  %1288 = tail call ptr @DestroyCacheView(ptr noundef %10) #26
  %1289 = tail call ptr @DestroyCacheView(ptr noundef %9) #26
  %1290 = load i64, ptr %31, align 8, !tbaa !79
  %1291 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %31) #26
  %1292 = freeze i1 %1286
  %1293 = select i1 %1292, i64 %1287, i64 %1290
  ret i64 %1293
}

; Function Attrs: optsize
declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @MorphologyImageChannel(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 29
  %8 = load double, ptr %7, align 8, !tbaa !158
  %9 = add i32 %2, -1
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %11, label %24

11:                                               ; preds = %6
  %12 = tail call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.89) #26
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = tail call fastcc double @StringToDoubleInterval(ptr noundef nonnull %12) #25
  br label %16

16:                                               ; preds = %14, %11
  %17 = phi double [ %15, %14 ], [ %8, %11 ]
  %18 = tail call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.90) #26
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = tail call ptr @CloneKernelInfo(ptr noundef %4) #25
  %22 = icmp eq ptr %21, null
  br i1 %22, label %49, label %23

23:                                               ; preds = %20
  tail call void @ScaleGeometryKernelInfo(ptr noundef nonnull %21, ptr noundef nonnull %18) #25
  br label %24

24:                                               ; preds = %16, %23, %6
  %25 = phi double [ %8, %6 ], [ %17, %23 ], [ %17, %16 ]
  %26 = phi ptr [ %4, %6 ], [ %21, %23 ], [ %4, %16 ]
  %27 = tail call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.91) #26
  %28 = tail call i32 @IsMagickTrue(ptr noundef %27) #26
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = tail call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.92) #26
  %32 = tail call i32 @IsMagickTrue(ptr noundef %31) #26
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = tail call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.93) #26
  %36 = tail call i32 @IsMagickTrue(ptr noundef %35) #26
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34, %30, %24
  tail call void @ShowKernelInfo(ptr noundef %26) #25
  br label %39

39:                                               ; preds = %38, %34
  %40 = tail call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.94) #26
  %41 = icmp eq ptr %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = tail call i64 @ParseCommandOption(i32 noundef 11, i32 noundef 0, ptr noundef nonnull %40) #26
  %44 = trunc i64 %43 to i32
  br label %45

45:                                               ; preds = %42, %39
  %46 = phi i32 [ %44, %42 ], [ 0, %39 ]
  %47 = tail call ptr @MorphologyApply(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, ptr noundef %26, i32 noundef %46, double noundef %25, ptr noundef %5) #25
  %48 = icmp eq ptr %26, %4
  br i1 %48, label %53, label %49

49:                                               ; preds = %45, %20
  %50 = phi ptr [ null, %20 ], [ %26, %45 ]
  %51 = phi ptr [ null, %20 ], [ %47, %45 ]
  %52 = tail call ptr @DestroyKernelInfo(ptr noundef %50) #25
  br label %53

53:                                               ; preds = %49, %45
  %54 = phi ptr [ %47, %45 ], [ %51, %49 ]
  ret ptr %54
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc double @StringToDoubleInterval(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #24
  %3 = call double @InterpretLocaleValue(ptr noundef %0, ptr noundef nonnull %2) #26
  %4 = load ptr, ptr %2, align 8, !tbaa !8
  %5 = load i8, ptr %4, align 1, !tbaa !5
  %6 = icmp eq i8 %5, 37
  %7 = fmul double %3, 6.553600e+02
  %8 = select i1 %6, double %7, double %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #24
  ret double %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ScaleGeometryKernelInfo(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._GeometryInfo, align 16
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #24
  call void @SetGeometryInfo(ptr noundef nonnull %3) #26
  %4 = call i32 @ParseGeometry(ptr noundef %1, ptr noundef nonnull %3) #26
  %5 = and i32 %4, 4096
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load <2 x double>, ptr %3, align 16, !tbaa !33
  %9 = fmul <2 x double> %8, <double 1.000000e-02, double 1.000000e-02>
  store <2 x double> %9, ptr %3, align 16, !tbaa !33
  br label %10

10:                                               ; preds = %7, %2
  %11 = and i32 %4, 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store double 1.000000e+00, ptr %3, align 16, !tbaa !23
  br label %14

14:                                               ; preds = %13, %10
  %15 = and i32 %4, 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct._GeometryInfo, ptr %3, i64 0, i32 1
  store double 0.000000e+00, ptr %18, align 8, !tbaa !21
  %19 = load double, ptr %3, align 16, !tbaa !23
  call void @ScaleKernelInfo(ptr noundef %0, double noundef %19, i32 noundef %4) #25
  br label %24

20:                                               ; preds = %14
  %21 = load double, ptr %3, align 16, !tbaa !23
  call void @ScaleKernelInfo(ptr noundef %0, double noundef %21, i32 noundef %4) #25
  %22 = getelementptr inbounds %struct._GeometryInfo, ptr %3, i64 0, i32 1
  %23 = load double, ptr %22, align 8, !tbaa !21
  call void @UnityAddKernelInfo(ptr noundef %0, double noundef %23) #25
  br label %24

24:                                               ; preds = %17, %20
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ShowKernelInfo(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %123, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 11
  br label %5

5:                                                ; preds = %3, %118
  %6 = phi i64 [ 0, %3 ], [ %119, %118 ]
  %7 = phi ptr [ %0, %3 ], [ %121, %118 ]
  %8 = load ptr, ptr @stderr, align 8, !tbaa !8
  %9 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %8, ptr noundef nonnull @.str.95) #26
  %10 = load ptr, ptr %4, align 8, !tbaa !12
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %5
  %13 = load ptr, ptr @stderr, align 8, !tbaa !8
  %14 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %13, ptr noundef nonnull @.str.96, i64 noundef %6) #26
  br label %15

15:                                               ; preds = %12, %5
  %16 = load ptr, ptr @stderr, align 8, !tbaa !8
  %17 = load i32, ptr %7, align 8, !tbaa !19
  %18 = zext i32 %17 to i64
  %19 = tail call ptr @CommandOptionToMnemonic(i32 noundef 34, i64 noundef %18) #26
  %20 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %16, ptr noundef nonnull @.str.97, ptr noundef %19) #26
  %21 = getelementptr inbounds %struct.KernelInfo, ptr %7, i64 0, i32 10
  %22 = load double, ptr %21, align 8, !tbaa !78
  %23 = tail call double @llvm.fabs.f64(double %22)
  %24 = fcmp ult double %23, 1.000000e-15
  br i1 %24, label %28, label %25

25:                                               ; preds = %15
  %26 = load ptr, ptr @stderr, align 8, !tbaa !8
  %27 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %26, ptr noundef nonnull @.str.98, double noundef %22) #26
  br label %28

28:                                               ; preds = %25, %15
  %29 = load ptr, ptr @stderr, align 8, !tbaa !8
  %30 = getelementptr inbounds %struct.KernelInfo, ptr %7, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !24
  %32 = getelementptr inbounds %struct.KernelInfo, ptr %7, i64 0, i32 2
  %33 = load i64, ptr %32, align 8, !tbaa !25
  %34 = getelementptr inbounds %struct.KernelInfo, ptr %7, i64 0, i32 3
  %35 = load i64, ptr %34, align 8, !tbaa !27
  %36 = getelementptr inbounds %struct.KernelInfo, ptr %7, i64 0, i32 4
  %37 = load i64, ptr %36, align 8, !tbaa !28
  %38 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %29, ptr noundef nonnull @.str.99, i64 noundef %31, i64 noundef %33, i64 noundef %35, i64 noundef %37) #26
  %39 = load ptr, ptr @stderr, align 8, !tbaa !8
  %40 = tail call i32 @GetMagickPrecision() #26
  %41 = getelementptr inbounds %struct.KernelInfo, ptr %7, i64 0, i32 6
  %42 = load double, ptr %41, align 8, !tbaa !34
  %43 = tail call i32 @GetMagickPrecision() #26
  %44 = getelementptr inbounds %struct.KernelInfo, ptr %7, i64 0, i32 7
  %45 = load double, ptr %44, align 8, !tbaa !35
  %46 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %39, ptr noundef nonnull @.str.100, i32 noundef %40, double noundef %42, i32 noundef %43, double noundef %45) #26
  %47 = load ptr, ptr @stderr, align 8, !tbaa !8
  %48 = tail call i32 @GetMagickPrecision() #26
  %49 = getelementptr inbounds %struct.KernelInfo, ptr %7, i64 0, i32 8
  %50 = load double, ptr %49, align 8, !tbaa !50
  %51 = tail call i32 @GetMagickPrecision() #26
  %52 = getelementptr inbounds %struct.KernelInfo, ptr %7, i64 0, i32 9
  %53 = load double, ptr %52, align 8, !tbaa !47
  %54 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %47, ptr noundef nonnull @.str.101, i32 noundef %48, double noundef %50, i32 noundef %51, double noundef %53) #26
  %55 = load double, ptr %52, align 8, !tbaa !47
  %56 = load double, ptr %49, align 8, !tbaa !50
  %57 = fadd double %55, %56
  %58 = tail call double @llvm.fabs.f64(double %57)
  %59 = fcmp olt double %58, 1.000000e-15
  br i1 %59, label %60, label %63

60:                                               ; preds = %28
  %61 = load ptr, ptr @stderr, align 8, !tbaa !8
  %62 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %61, ptr noundef nonnull @.str.102) #26
  br label %76

63:                                               ; preds = %28
  %64 = fadd double %57, -1.000000e+00
  %65 = tail call double @llvm.fabs.f64(double %64)
  %66 = fcmp olt double %65, 1.000000e-15
  %67 = load ptr, ptr @stderr, align 8, !tbaa !8
  br i1 %66, label %68, label %70

68:                                               ; preds = %63
  %69 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %67, ptr noundef nonnull @.str.103) #26
  br label %76

70:                                               ; preds = %63
  %71 = tail call i32 @GetMagickPrecision() #26
  %72 = load double, ptr %52, align 8, !tbaa !47
  %73 = load double, ptr %49, align 8, !tbaa !50
  %74 = fadd double %72, %73
  %75 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %67, ptr noundef nonnull @.str.104, i32 noundef %71, double noundef %74) #26
  br label %76

76:                                               ; preds = %68, %70, %60
  %77 = load i64, ptr %32, align 8, !tbaa !25
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %118, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.KernelInfo, ptr %7, i64 0, i32 5
  br label %81

81:                                               ; preds = %79, %111
  %82 = phi i64 [ 0, %79 ], [ %115, %111 ]
  %83 = phi i64 [ 0, %79 ], [ %112, %111 ]
  %84 = load ptr, ptr @stderr, align 8, !tbaa !8
  %85 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %84, ptr noundef nonnull @.str.105, i64 noundef %82) #26
  %86 = load i64, ptr %30, align 8, !tbaa !24
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %111, label %88

88:                                               ; preds = %81, %106
  %89 = phi i64 [ %107, %106 ], [ 0, %81 ]
  %90 = phi i64 [ %108, %106 ], [ %83, %81 ]
  %91 = load ptr, ptr %80, align 8, !tbaa !32
  %92 = getelementptr inbounds double, ptr %91, i64 %90
  %93 = load double, ptr %92, align 8, !tbaa !33
  %94 = fcmp uno double %93, 0.000000e+00
  %95 = load ptr, ptr @stderr, align 8, !tbaa !8
  %96 = tail call i32 @GetMagickPrecision() #26
  %97 = add nsw i32 %96, 3
  br i1 %94, label %98, label %100

98:                                               ; preds = %88
  %99 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %95, ptr noundef nonnull @.str.106, i32 noundef %97, ptr noundef nonnull @.str.107) #26
  br label %106

100:                                              ; preds = %88
  %101 = tail call i32 @GetMagickPrecision() #26
  %102 = load ptr, ptr %80, align 8, !tbaa !32
  %103 = getelementptr inbounds double, ptr %102, i64 %90
  %104 = load double, ptr %103, align 8, !tbaa !33
  %105 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %95, ptr noundef nonnull @.str.108, i32 noundef %97, i32 noundef %101, double noundef %104) #26
  br label %106

106:                                              ; preds = %98, %100
  %107 = add nuw i64 %89, 1
  %108 = add i64 %90, 1
  %109 = load i64, ptr %30, align 8, !tbaa !24
  %110 = icmp ult i64 %107, %109
  br i1 %110, label %88, label %111, !llvm.loop !159

111:                                              ; preds = %106, %81
  %112 = phi i64 [ %83, %81 ], [ %108, %106 ]
  %113 = load ptr, ptr @stderr, align 8, !tbaa !8
  %114 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %113, ptr noundef nonnull @.str.78) #26
  %115 = add nuw i64 %82, 1
  %116 = load i64, ptr %32, align 8, !tbaa !25
  %117 = icmp ult i64 %115, %116
  br i1 %117, label %81, label %118, !llvm.loop !160

118:                                              ; preds = %111, %76
  %119 = add i64 %6, 1
  %120 = getelementptr inbounds %struct.KernelInfo, ptr %7, i64 0, i32 11
  %121 = load ptr, ptr %120, align 8, !tbaa !12
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %5, !llvm.loop !161

123:                                              ; preds = %118, %1
  ret void
}

; Function Attrs: optsize
declare i64 @ParseCommandOption(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @MorphologyImage(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @MorphologyImageChannel(ptr noundef %0, i32 noundef 134217719, i32 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) #25
  ret ptr %6
}

; Function Attrs: optsize
declare void @SetGeometryInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ParseGeometry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @UnityAddKernelInfo(ptr nocapture noundef %0, double noundef %1) local_unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @UnityAddKernelInfo(ptr noundef nonnull %4, double noundef %1) #25
  br label %7

7:                                                ; preds = %6, %2
  %8 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !32
  %10 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 3
  %11 = load i64, ptr %10, align 8, !tbaa !27
  %12 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 4
  %13 = load i64, ptr %12, align 8, !tbaa !28
  %14 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !24
  %16 = mul i64 %15, %13
  %17 = getelementptr double, ptr %9, i64 %11
  %18 = getelementptr double, ptr %17, i64 %16
  %19 = load double, ptr %18, align 8, !tbaa !33
  %20 = fadd double %19, %1
  store double %20, ptr %18, align 8, !tbaa !33
  tail call fastcc void @CalcKernelMetaData(ptr noundef nonnull %0) #25
  ret void
}

; Function Attrs: optsize
declare i32 @GetMagickPrecision() local_unnamed_addr #2

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ZeroKernelNans(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @ZeroKernelNans(ptr noundef nonnull %3) #25
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !24
  %9 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 2
  %10 = load i64, ptr %9, align 8, !tbaa !25
  %11 = mul i64 %10, %8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !32
  br label %16

16:                                               ; preds = %13, %22
  %17 = phi i64 [ 0, %13 ], [ %23, %22 ]
  %18 = getelementptr inbounds double, ptr %15, i64 %17
  %19 = load double, ptr %18, align 8, !tbaa !33
  %20 = fcmp uno double %19, 0.000000e+00
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store double 0.000000e+00, ptr %18, align 8, !tbaa !33
  br label %22

22:                                               ; preds = %21, %16
  %23 = add nuw i64 %17, 1
  %24 = icmp eq i64 %23, %11
  br i1 %24, label %25, label %16, !llvm.loop !162

25:                                               ; preds = %22, %6
  ret void
}

; Function Attrs: optsize
declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc double @StringToDouble(ptr noalias noundef %0) unnamed_addr #0 {
  %2 = tail call double @InterpretLocaleValue(ptr noundef %0, ptr noundef null) #26
  ret double %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @MagickMin(double noundef %0, double noundef %1) unnamed_addr #14 {
  %3 = fcmp olt double %0, %1
  %4 = select i1 %3, double %0, double %1
  ret double %4
}

; Function Attrs: optsize
declare double @InterpretLocaleValue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @SameKernelInfo(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !24
  %5 = getelementptr inbounds %struct.KernelInfo, ptr %1, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !24
  %7 = icmp eq i64 %4, %6
  br i1 %7, label %8, label %51

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 2
  %10 = load i64, ptr %9, align 8, !tbaa !25
  %11 = getelementptr inbounds %struct.KernelInfo, ptr %1, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !25
  %13 = icmp eq i64 %10, %12
  br i1 %13, label %14, label %51

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 3
  %16 = load i64, ptr %15, align 8, !tbaa !27
  %17 = getelementptr inbounds %struct.KernelInfo, ptr %1, i64 0, i32 3
  %18 = load i64, ptr %17, align 8, !tbaa !27
  %19 = icmp eq i64 %16, %18
  br i1 %19, label %20, label %51

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 4
  %22 = load i64, ptr %21, align 8, !tbaa !28
  %23 = getelementptr inbounds %struct.KernelInfo, ptr %1, i64 0, i32 4
  %24 = load i64, ptr %23, align 8, !tbaa !28
  %25 = icmp eq i64 %22, %24
  br i1 %25, label %26, label %51

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.KernelInfo, ptr %1, i64 0, i32 5
  %28 = mul i64 %10, %4
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %51, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 5
  %32 = load ptr, ptr %31, align 8, !tbaa !32
  %33 = load ptr, ptr %27, align 8, !tbaa !32
  br label %37

34:                                               ; preds = %47
  %35 = add nuw i64 %38, 1
  %36 = icmp eq i64 %35, %28
  br i1 %36, label %51, label %37, !llvm.loop !163

37:                                               ; preds = %30, %34
  %38 = phi i64 [ 0, %30 ], [ %35, %34 ]
  %39 = getelementptr inbounds double, ptr %32, i64 %38
  %40 = load double, ptr %39, align 8, !tbaa !33
  %41 = fcmp uno double %40, 0.000000e+00
  %42 = getelementptr inbounds double, ptr %33, i64 %38
  %43 = load double, ptr %42, align 8, !tbaa !33
  %44 = fcmp uno double %43, 0.000000e+00
  br i1 %41, label %45, label %46

45:                                               ; preds = %37
  br i1 %44, label %47, label %51

46:                                               ; preds = %37
  br i1 %44, label %51, label %47

47:                                               ; preds = %45, %46
  %48 = fsub double %40, %43
  %49 = tail call double @llvm.fabs.f64(double %48)
  %50 = fcmp ult double %49, 1.000000e-15
  br i1 %50, label %34, label %51

51:                                               ; preds = %45, %47, %34, %46, %26, %2, %8, %14, %20
  %52 = phi i32 [ 0, %20 ], [ 0, %14 ], [ 0, %8 ], [ 0, %2 ], [ 1, %26 ], [ 0, %45 ], [ 0, %47 ], [ 1, %34 ], [ 0, %46 ]
  ret i32 %52
}

; Function Attrs: optsize
declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: hot optsize
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #16

; Function Attrs: hot optsize
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #16

; Function Attrs: optsize
declare ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @SetMagickPixelPacket(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #17 {
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  %6 = load <4 x i16>, ptr %1, align 2, !tbaa !10
  %7 = uitofp <4 x i16> %6 to <4 x float>
  %8 = shufflevector <4 x float> %7, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  store <4 x float> %8, ptr %5, align 8, !tbaa !164
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !117
  %11 = icmp eq i32 %10, 12
  %12 = icmp ne ptr %2, null
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i16, ptr %2, align 2, !tbaa !10
  %16 = uitofp i16 %15 to float
  %17 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  store float %16, ptr %17, align 8, !tbaa !112
  br label %18

18:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @SetPixelPacket(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr noundef writeonly %3) unnamed_addr #17 {
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %6 = load float, ptr %5, align 8, !tbaa !109
  %7 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %6) #25
  %8 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 2
  store i16 %7, ptr %8, align 2, !tbaa !113
  %9 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %10 = load float, ptr %9, align 4, !tbaa !110
  %11 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %10) #25
  %12 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 1
  store i16 %11, ptr %12, align 2, !tbaa !114
  %13 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %14 = load float, ptr %13, align 8, !tbaa !111
  %15 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %14) #25
  store i16 %15, ptr %2, align 2, !tbaa !115
  %16 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %17 = load float, ptr %16, align 4, !tbaa !106
  %18 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %17) #25
  %19 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 3
  store i16 %18, ptr %19, align 2, !tbaa !116
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !117
  %22 = icmp eq i32 %21, 12
  br i1 %22, label %28, label %23

23:                                               ; preds = %4
  %24 = load i32, ptr %0, align 8, !tbaa !165
  %25 = icmp eq i32 %24, 2
  %26 = icmp ne ptr %3, null
  %27 = and i1 %26, %25
  br i1 %27, label %30, label %34

28:                                               ; preds = %4
  %29 = icmp eq ptr %3, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %23, %28
  %31 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %32 = load float, ptr %31, align 8, !tbaa !112
  %33 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %32) #25
  store i16 %33, ptr %3, align 2, !tbaa !10
  br label %34

34:                                               ; preds = %28, %30, %23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ClampToQuantum(float noundef %0) unnamed_addr #14 {
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

; Function Attrs: hot optsize
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #16

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @SetImageProgress(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #24
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %6 = load ptr, ptr %5, align 8, !tbaa !126
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.110, ptr noundef nonnull %9) #26
  %11 = load ptr, ptr %5, align 8, !tbaa !126
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %13 = load ptr, ptr %12, align 8, !tbaa !166
  %14 = call i32 %11(ptr noundef nonnull %4, i64 noundef %1, i64 noundef %2, ptr noundef %13) #26
  br label %15

15:                                               ; preds = %3, %8
  %16 = phi i32 [ %14, %8 ], [ 1, %3 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #24
  ret i32 %16
}

; Function Attrs: optsize
declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

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
declare void @_exit(i32 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @PerceptibleReciprocal(double noundef %0) unnamed_addr #14 {
  %2 = fcmp olt double %0, 0.000000e+00
  %3 = select i1 %2, double -1.000000e+00, double 1.000000e+00
  %4 = fmul double %3, %0
  %5 = fcmp ult double %4, 1.000000e-15
  %6 = fdiv double 1.000000e+00, %0
  %7 = fdiv double %3, 1.000000e-15
  %8 = select i1 %5, double %7, double %6
  ret double %8
}

; Function Attrs: hot optsize
declare float @GetPixelIntensity(ptr noundef, ptr noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #19

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #21

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #23

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline norecurse nosync nounwind optsize memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind willreturn memory(argmem: read) }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #24 = { nounwind }
attributes #25 = { optsize }
attributes #26 = { nounwind optsize }
attributes #27 = { nounwind optsize willreturn memory(none) }
attributes #28 = { nounwind optsize willreturn memory(read) }
attributes #29 = { nounwind optsize allocsize(0) }
attributes #30 = { nounwind optsize allocsize(0,1) }
attributes #31 = { cold optsize }
attributes #32 = { hot nounwind optsize }
attributes #33 = { noreturn nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"short", !6, i64 0}
!12 = !{!13, !9, i64 88}
!13 = !{!"KernelInfo", !14, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !9, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !16, i64 80, !9, i64 88, !15, i64 96}
!14 = !{!"int", !6, i64 0}
!15 = !{!"long", !6, i64 0}
!16 = !{!"double", !6, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!13, !14, i64 0}
!20 = !{!13, !15, i64 96}
!21 = !{!22, !16, i64 8}
!22 = !{!"_GeometryInfo", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32}
!23 = !{!22, !16, i64 0}
!24 = !{!13, !15, i64 8}
!25 = !{!13, !15, i64 16}
!26 = !{!22, !16, i64 16}
!27 = !{!13, !15, i64 24}
!28 = !{!13, !15, i64 32}
!29 = distinct !{!29, !18}
!30 = distinct !{!30, !18}
!31 = distinct !{!31, !18}
!32 = !{!13, !9, i64 40}
!33 = !{!16, !16, i64 0}
!34 = !{!13, !16, i64 48}
!35 = !{!13, !16, i64 56}
!36 = distinct !{!36, !18}
!37 = distinct !{!37, !18}
!38 = !{!22, !16, i64 24}
!39 = distinct !{!39, !18}
!40 = distinct !{!40, !18}
!41 = distinct !{!41, !18}
!42 = distinct !{!42, !18}
!43 = distinct !{!43, !18}
!44 = distinct !{!44, !18}
!45 = distinct !{!45, !18}
!46 = distinct !{!46, !18}
!47 = !{!13, !16, i64 72}
!48 = distinct !{!48, !18}
!49 = distinct !{!49, !18}
!50 = !{!13, !16, i64 64}
!51 = distinct !{!51, !18}
!52 = distinct !{!52, !18}
!53 = distinct !{!53, !18}
!54 = distinct !{!54, !18}
!55 = distinct !{!55, !18, !56, !57}
!56 = !{!"llvm.loop.isvectorized", i32 1}
!57 = !{!"llvm.loop.unroll.runtime.disable"}
!58 = distinct !{!58, !18}
!59 = distinct !{!59, !18}
!60 = distinct !{!60, !18}
!61 = distinct !{!61, !18}
!62 = distinct !{!62, !18}
!63 = distinct !{!63, !18}
!64 = distinct !{!64, !18}
!65 = distinct !{!65, !18}
!66 = distinct !{!66, !18}
!67 = distinct !{!67, !18}
!68 = distinct !{!68, !18}
!69 = distinct !{!69, !18}
!70 = distinct !{!70, !18}
!71 = distinct !{!71, !18}
!72 = distinct !{!72, !18}
!73 = distinct !{!73, !18}
!74 = distinct !{!74, !18}
!75 = distinct !{!75, !18}
!76 = distinct !{!76, !18}
!77 = distinct !{!77, !18}
!78 = !{!13, !16, i64 80}
!79 = !{!15, !15, i64 0}
!80 = distinct !{!80, !18}
!81 = distinct !{!81, !18}
!82 = distinct !{!82, !18}
!83 = distinct !{!83, !18}
!84 = !{i32 0, i32 2}
!85 = !{i64 0, i64 4, !86, i64 8, i64 8, !79, i64 16, i64 8, !79, i64 24, i64 8, !79, i64 32, i64 8, !79, i64 40, i64 8, !8, i64 48, i64 8, !33, i64 56, i64 8, !33, i64 64, i64 8, !33, i64 72, i64 8, !33, i64 80, i64 8, !33, i64 88, i64 8, !8, i64 96, i64 8, !79}
!86 = !{!14, !14, i64 0}
!87 = distinct !{!87, !18}
!88 = !{!89, !15, i64 40}
!89 = !{!"_Image", !14, i64 0, !14, i64 4, !14, i64 8, !15, i64 16, !14, i64 24, !14, i64 28, !14, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !9, i64 72, !90, i64 80, !90, i64 88, !90, i64 96, !16, i64 104, !91, i64 112, !14, i64 208, !9, i64 216, !14, i64 224, !9, i64 232, !9, i64 240, !9, i64 248, !15, i64 256, !16, i64 264, !16, i64 272, !93, i64 280, !93, i64 312, !93, i64 344, !16, i64 376, !16, i64 384, !16, i64 392, !14, i64 400, !14, i64 404, !14, i64 408, !14, i64 412, !14, i64 416, !14, i64 420, !9, i64 424, !15, i64 432, !15, i64 440, !15, i64 448, !15, i64 456, !15, i64 464, !15, i64 472, !94, i64 480, !95, i64 504, !9, i64 568, !9, i64 576, !9, i64 584, !9, i64 592, !9, i64 600, !9, i64 608, !6, i64 616, !6, i64 4712, !6, i64 8808, !15, i64 12904, !15, i64 12912, !97, i64 12920, !14, i64 12976, !15, i64 12984, !9, i64 12992, !98, i64 13000, !98, i64 13032, !9, i64 13064, !15, i64 13072, !15, i64 13080, !9, i64 13088, !9, i64 13096, !9, i64 13104, !14, i64 13112, !14, i64 13116, !90, i64 13120, !9, i64 13128, !93, i64 13136, !9, i64 13168, !9, i64 13176, !14, i64 13184, !14, i64 13188, !99, i64 13192, !14, i64 13200, !15, i64 13208, !15, i64 13216, !14, i64 13224, !15, i64 13232}
!90 = !{!"_PixelPacket", !11, i64 0, !11, i64 2, !11, i64 4, !11, i64 6}
!91 = !{!"_ChromaticityInfo", !92, i64 0, !92, i64 24, !92, i64 48, !92, i64 72}
!92 = !{!"_PrimaryInfo", !16, i64 0, !16, i64 8, !16, i64 16}
!93 = !{!"_RectangleInfo", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24}
!94 = !{!"_ErrorInfo", !16, i64 0, !16, i64 8, !16, i64 16}
!95 = !{!"_TimerInfo", !96, i64 0, !96, i64 24, !14, i64 48, !15, i64 56}
!96 = !{!"_Timer", !16, i64 0, !16, i64 8, !16, i64 16}
!97 = !{!"_ExceptionInfo", !14, i64 0, !14, i64 4, !9, i64 8, !9, i64 16, !9, i64 24, !14, i64 32, !9, i64 40, !15, i64 48}
!98 = !{!"_ProfileInfo", !9, i64 0, !15, i64 8, !9, i64 16, !15, i64 24}
!99 = !{!"long long", !6, i64 0}
!100 = !{!89, !15, i64 48}
!101 = distinct !{!101, !18}
!102 = distinct !{!102, !18}
!103 = distinct !{!103, !18}
!104 = distinct !{!104, !18}
!105 = distinct !{!105, !18}
!106 = !{!107, !108, i64 44}
!107 = !{!"_MagickPixelPacket", !14, i64 0, !14, i64 4, !14, i64 8, !16, i64 16, !15, i64 24, !108, i64 32, !108, i64 36, !108, i64 40, !108, i64 44, !108, i64 48}
!108 = !{!"float", !6, i64 0}
!109 = !{!107, !108, i64 32}
!110 = !{!107, !108, i64 36}
!111 = !{!107, !108, i64 40}
!112 = !{!107, !108, i64 48}
!113 = !{!90, !11, i64 4}
!114 = !{!90, !11, i64 2}
!115 = !{!90, !11, i64 0}
!116 = !{!90, !11, i64 6}
!117 = !{!89, !14, i64 4}
!118 = distinct !{!118, !18}
!119 = distinct !{!119, !18}
!120 = distinct !{!120, !18}
!121 = distinct !{!121, !18}
!122 = distinct !{!122, !18}
!123 = distinct !{!123, !18}
!124 = !{!89, !14, i64 32}
!125 = distinct !{!125, !18}
!126 = !{!89, !9, i64 568}
!127 = distinct !{!127, !18}
!128 = distinct !{!128, !18}
!129 = distinct !{!129, !18}
!130 = distinct !{!130, !18}
!131 = distinct !{!131, !18}
!132 = distinct !{!132, !18}
!133 = distinct !{!133, !18}
!134 = distinct !{!134, !18}
!135 = distinct !{!135, !18}
!136 = distinct !{!136, !18}
!137 = distinct !{!137, !18}
!138 = distinct !{!138, !18}
!139 = !{!89, !14, i64 13184}
!140 = distinct !{!140, !18}
!141 = distinct !{!141, !18}
!142 = distinct !{!142, !18}
!143 = distinct !{!143, !18}
!144 = distinct !{!144, !18}
!145 = distinct !{!145, !18}
!146 = distinct !{!146, !18}
!147 = distinct !{!147, !18}
!148 = distinct !{!148, !18}
!149 = distinct !{!149, !18}
!150 = distinct !{!150, !18}
!151 = distinct !{!151, !18}
!152 = distinct !{!152, !18}
!153 = distinct !{!153, !18}
!154 = distinct !{!154, !18}
!155 = distinct !{!155, !18}
!156 = distinct !{!156, !18}
!157 = distinct !{!157, !18}
!158 = !{!89, !16, i64 376}
!159 = distinct !{!159, !18}
!160 = distinct !{!160, !18}
!161 = distinct !{!161, !18}
!162 = distinct !{!162, !18}
!163 = distinct !{!163, !18}
!164 = !{!108, !108, i64 0}
!165 = !{!89, !14, i64 0}
!166 = !{!89, !9, i64 576}
