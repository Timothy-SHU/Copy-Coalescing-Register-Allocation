; ModuleID = 'magick/morphology.c'
source_filename = "magick/morphology.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }
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

@.str = private unnamed_addr constant [4 x i8] c"nan\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Unable to rotate non-3x3 kernel by 45 degrees\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"Unable to rotate a non-square, non-linear kernel 90 degrees\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"3: -1,-1,-1  -1,8,-1  -1,-1,-1\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"3: 0,-1,0  -1,4,-1  0,-1,0\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"3: -2,1,-2  1,4,1  -2,1,-2\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"3: 1,-2,1  -2,4,-2  1,-2,1\00", align 1
@.str.8 = private unnamed_addr constant [69 x i8] c"5: -4,-1,0,-1,-4  -1,2,3,2,-1  0,3,4,3,0  -1,2,3,2,-1  -4,-1,0,-1,-4\00", align 1
@.str.9 = private unnamed_addr constant [128 x i8] c"7:-10,-5,-2,-1,-2,-5,-10 -5,0,3,4,3,0,-5 -2,3,6,7,6,3,-2 -1,4,7,8,7,4,-1 -2,3,6,7,6,3,-2 -5,0,3,4,3,0,-5 -10,-5,-2,-1,-2,-5,-10\00", align 1
@.str.10 = private unnamed_addr constant [70 x i8] c"5: 0,0,-1,0,0  0,-1,-2,-1,0  -1,-2,16,-2,-1  0,-1,-2,-1,0  0,0,-1,0,0\00", align 1
@.str.11 = private unnamed_addr constant [250 x i8] c"9: 0,-1,-1,-2,-2,-2,-1,-1,0  -1,-2,-4,-5,-5,-5,-4,-2,-1  -1,-4,-5,-3,-0,-3,-5,-4,-1  -2,-5,-3,12,24,12,-3,-5,-2  -2,-5,-0,24,40,24,-0,-5,-2  -2,-5,-3,12,24,12,-3,-5,-2  -1,-4,-5,-3,-0,-3,-5,-4,-1  -1,-2,-4,-5,-5,-5,-4,-2,-1  0,-1,-1,-2,-2,-2,-1,-1,0\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"3: 1,0,-1  2,0,-2  1,0,-1\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"3: 0,0,0  1,-1,0  0,0,0\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"3: 1,0,-1  1,0,-1  1,0,-1\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"3: 1,1,-1  1,-2,-1  1,1,-1\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"3: 5,-3,-3  5,0,-3  5,-3,-3\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"3: 1,2,0  2,0,-2  0,-2,-1\00", align 1
@.str.18 = private unnamed_addr constant [108 x i8] c"FreiChen:11;FreiChen:12;FreiChen:13;FreiChen:14;FreiChen:15;FreiChen:16;FreiChen:17;FreiChen:18;FreiChen:19\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"3: 1,2,1  0,0,0  1,2,1\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"3: 2,-1,0  -1,0,1  0,1,-2\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"3: 0,1,-2  -1,0,1  2,-1,0\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"3: 0,-1,0  1,0,1  0,-1,0\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"3: 1,0,-1  0,0,0  -1,0,1\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"3: 1,-2,1  -2,4,-2  -1,-2,1\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"3: 1,1,1  1,1,1  1,1,1\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"ThinSE:482\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"ThinSE:87\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"3: 0,0,0  0,-,1  1,1,-\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"3: 0,0,1  0,-,1  0,1,-\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"LineEnds:1>;LineEnds:2>\00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c"3: 0,0,-  0,1,1  0,0,-\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"3: 0,0,0  0,1,0  0,0,1\00", align 1
@.str.33 = private unnamed_addr constant [23 x i8] c"3: 0,0,0  0,1,1  0,0,0\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"3: 0,0,0  0,1,-  0,0,-\00", align 1
@.str.35 = private unnamed_addr constant [34 x i8] c"LineJunctions:1@;LineJunctions:2>\00", align 1
@.str.36 = private unnamed_addr constant [23 x i8] c"3: 1,-,1  -,1,-  -,1,-\00", align 1
@.str.37 = private unnamed_addr constant [23 x i8] c"3: 1,-,-  -,1,-  1,-,1\00", align 1
@.str.38 = private unnamed_addr constant [23 x i8] c"3: -,-,-  1,1,1  -,1,-\00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"3: 1,-,1  -,1,-  1,-,1\00", align 1
@.str.40 = private unnamed_addr constant [23 x i8] c"3: -,1,-  1,1,1  -,1,-\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"3x1:0,1,0\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"4x1:0,1,1,0\00", align 1
@.str.43 = private unnamed_addr constant [32 x i8] c"4x3+1+1:0,1,1,- -,1,1,- -,1,1,0\00", align 1
@.str.44 = private unnamed_addr constant [32 x i8] c"4x3+2+1:0,1,1,- -,1,1,- -,1,1,0\00", align 1
@.str.45 = private unnamed_addr constant [32 x i8] c"4x3+1+1:-,1,1,0 -,1,1,- 0,1,1,-\00", align 1
@.str.46 = private unnamed_addr constant [32 x i8] c"4x3+2+1:-,1,1,0 -,1,1,- 0,1,1,-\00", align 1
@.str.47 = private unnamed_addr constant [32 x i8] c"3x4+1+1:0,-,- 1,1,1 1,1,1 -,-,0\00", align 1
@.str.48 = private unnamed_addr constant [32 x i8] c"3x4+1+2:0,-,- 1,1,1 1,1,1 -,-,0\00", align 1
@.str.49 = private unnamed_addr constant [32 x i8] c"3x4+1+1:-,-,0 1,1,1 1,1,1 0,-,-\00", align 1
@.str.50 = private unnamed_addr constant [32 x i8] c"3x4+1+2:-,-,0 1,1,1 1,1,1 0,-,-\00", align 1
@.str.51 = private unnamed_addr constant [23 x i8] c"3: 1,1,-  1,0,-  1,-,0\00", align 1
@.str.52 = private unnamed_addr constant [23 x i8] c"3: 1,1,1  1,0,-  -,-,0\00", align 1
@.str.53 = private unnamed_addr constant [26 x i8] c"ThinSE:482; ThinSE:87x90;\00", align 1
@.str.54 = private unnamed_addr constant [32 x i8] c"ThinSE:41; ThinSE:42; ThinSE:43\00", align 1
@.str.55 = private unnamed_addr constant [23 x i8] c"3: -,-,1  0,-,1  -,-,1\00", align 1
@.str.56 = private unnamed_addr constant [23 x i8] c"3: -,-,1  0,-,1  -,0,-\00", align 1
@.str.57 = private unnamed_addr constant [23 x i8] c"3: -,0,-  0,-,1  -,-,1\00", align 1
@.str.58 = private unnamed_addr constant [23 x i8] c"3: -,0,-  0,-,1  -,0,-\00", align 1
@.str.59 = private unnamed_addr constant [23 x i8] c"3: -,0,1  0,-,1  -,0,-\00", align 1
@.str.60 = private unnamed_addr constant [23 x i8] c"3: -,0,-  0,-,1  -,0,1\00", align 1
@.str.61 = private unnamed_addr constant [23 x i8] c"3: -,1,1  0,-,1  -,0,-\00", align 1
@.str.62 = private unnamed_addr constant [23 x i8] c"3: -,-,1  0,-,1  0,-,1\00", align 1
@.str.63 = private unnamed_addr constant [23 x i8] c"3: 0,-,1  0,-,1  -,-,1\00", align 1
@.str.64 = private unnamed_addr constant [23 x i8] c"3: -,1,-  0,-,1  -,1,-\00", align 1
@.str.65 = private unnamed_addr constant [23 x i8] c"3: -,1,-  0,-,1  0,-,-\00", align 1
@.str.66 = private unnamed_addr constant [23 x i8] c"3: 0,-,-  0,-,1  -,1,-\00", align 1
@.str.67 = private unnamed_addr constant [23 x i8] c"3: 0,-,-  0,-,1  0,-,-\00", align 1
@.str.68 = private unnamed_addr constant [23 x i8] c"3: 0,-,1  0,-,1  0,-,-\00", align 1
@.str.69 = private unnamed_addr constant [23 x i8] c"3: 0,-,-  0,-,1  0,-,1\00", align 1
@.str.70 = private unnamed_addr constant [23 x i8] c"3: -,1,-  0,-,1  0,0,-\00", align 1
@.str.71 = private unnamed_addr constant [23 x i8] c"3: -,1,-  0,-,1  0,1,-\00", align 1
@.str.72 = private unnamed_addr constant [23 x i8] c"3: 0,1,-  0,-,1  -,1,-\00", align 1
@.str.73 = private unnamed_addr constant [23 x i8] c"3: -,-,1  0,-,-  -,0,-\00", align 1
@.str.74 = private unnamed_addr constant [23 x i8] c"3: -,1,-  -,-,1  0,-,-\00", align 1
@.str.75 = private unnamed_addr constant [23 x i8] c"3: -,1,1  0,-,1  0,0,-\00", align 1
@.str.76 = private unnamed_addr constant [23 x i8] c"3: 0,-,1  0,-,1  0,-,1\00", align 1
@.str.77 = private unnamed_addr constant [4 x i8] c"1:1\00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.79 = private unnamed_addr constant [40 x i8] c"%s:%.20g.%.20g #%.20g => Changed %.20g\0A\00", align 1
@.str.80 = private unnamed_addr constant [19 x i8] c"%s:%.20g.%.20g -> \00", align 1
@.str.81 = private unnamed_addr constant [13 x i8] c"%s:%.20g -> \00", align 1
@.str.82 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.83 = private unnamed_addr constant [43 x i8] c"%s%s%s:%.20g.%.20g #%.20g => Changed %.20g\00", align 1
@.str.84 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.85 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.86 = private unnamed_addr constant [15 x i8] c"   Total %.20g\00", align 1
@.str.87 = private unnamed_addr constant [36 x i8] c"\0A%s: Difference with original image\00", align 1
@.str.88 = private unnamed_addr constant [36 x i8] c"\0A%s: Difference of Dilate and Erode\00", align 1
@.str.89 = private unnamed_addr constant [14 x i8] c" (re-iterate)\00", align 1
@.str.90 = private unnamed_addr constant [8 x i8] c" (done)\00", align 1
@.str.91 = private unnamed_addr constant [20 x i8] c" (save for compose)\00", align 1
@.str.92 = private unnamed_addr constant [16 x i8] c" (compose \22%s\22)\00", align 1
@.str.93 = private unnamed_addr constant [17 x i8] c"Morphology/Image\00", align 1
@.str.94 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.95 = private unnamed_addr constant [20 x i8] c"magick/morphology.c\00", align 1
@.str.96 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.97 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@.gomp_critical_user_MagickCore_MorphologyPrimitive.var = common global [8 x i32] zeroinitializer, align 8
@.str.99 = private unnamed_addr constant [14 x i8] c"convolve:bias\00", align 1
@.str.100 = private unnamed_addr constant [15 x i8] c"convolve:scale\00", align 1
@.str.101 = private unnamed_addr constant [11 x i8] c"showkernel\00", align 1
@.str.102 = private unnamed_addr constant [20 x i8] c"convolve:showkernel\00", align 1
@.str.103 = private unnamed_addr constant [22 x i8] c"morphology:showkernel\00", align 1
@.str.104 = private unnamed_addr constant [19 x i8] c"morphology:compose\00", align 1
@.str.105 = private unnamed_addr constant [7 x i8] c"Kernel\00", align 1
@.str.106 = private unnamed_addr constant [6 x i8] c" #%lu\00", align 1
@.str.107 = private unnamed_addr constant [5 x i8] c" \22%s\00", align 1
@.str.108 = private unnamed_addr constant [5 x i8] c"@%lg\00", align 1
@.str.109 = private unnamed_addr constant [26 x i8] c"\22 of size %lux%lu%+ld%+ld\00", align 1
@.str.110 = private unnamed_addr constant [34 x i8] c" with values from %.*lg to %.*lg\0A\00", align 1
@.str.111 = private unnamed_addr constant [43 x i8] c"Forming a output range from %.*lg to %.*lg\00", align 1
@.str.112 = private unnamed_addr constant [17 x i8] c" (Zero-Summing)\0A\00", align 1
@.str.113 = private unnamed_addr constant [15 x i8] c" (Normalized)\0A\00", align 1
@.str.114 = private unnamed_addr constant [14 x i8] c" (Sum %.*lg)\0A\00", align 1
@.str.115 = private unnamed_addr constant [6 x i8] c"%2lu:\00", align 1
@.str.116 = private unnamed_addr constant [5 x i8] c" %*s\00", align 1
@.str.117 = private unnamed_addr constant [8 x i8] c" %*.*lg\00", align 1
@reltable.AcquireKernelBuiltIn = private unnamed_addr constant [4 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.31 to i64), i64 ptrtoint (ptr @reltable.AcquireKernelBuiltIn to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.32 to i64), i64 ptrtoint (ptr @reltable.AcquireKernelBuiltIn to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.33 to i64), i64 ptrtoint (ptr @reltable.AcquireKernelBuiltIn to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.34 to i64), i64 ptrtoint (ptr @reltable.AcquireKernelBuiltIn to i64)) to i32)], align 4
@reltable.AcquireKernelBuiltIn.119 = private unnamed_addr constant [5 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.36 to i64), i64 ptrtoint (ptr @reltable.AcquireKernelBuiltIn.119 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.37 to i64), i64 ptrtoint (ptr @reltable.AcquireKernelBuiltIn.119 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.38 to i64), i64 ptrtoint (ptr @reltable.AcquireKernelBuiltIn.119 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.39 to i64), i64 ptrtoint (ptr @reltable.AcquireKernelBuiltIn.119 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.40 to i64), i64 ptrtoint (ptr @reltable.AcquireKernelBuiltIn.119 to i64)) to i32)], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @AcquireKernelInfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %2) #21
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @ParseKernelArray(ptr noundef null) #29
  br label %38

6:                                                ; preds = %1, %33
  %7 = phi ptr [ %34, %33 ], [ null, %1 ]
  %8 = phi ptr [ %37, %33 ], [ %0, %1 ]
  call void @GetMagickToken(ptr noundef nonnull %8, ptr noundef null, ptr noundef nonnull %2) #30
  %9 = load i8, ptr %2, align 16, !tbaa !6
  switch i8 %9, label %10 [
    i8 0, label %38
    i8 59, label %33
  ]

10:                                               ; preds = %6
  %11 = tail call ptr @__ctype_b_loc() #31
  %12 = load ptr, ptr %11, align 8, !tbaa !9
  %13 = zext i8 %9 to i64
  %14 = getelementptr inbounds i16, ptr %12, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !11
  %16 = and i16 %15, 1024
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %10
  %19 = call fastcc ptr @ParseKernelName(ptr noundef nonnull %8) #29
  br label %22

20:                                               ; preds = %10
  %21 = call fastcc ptr @ParseKernelArray(ptr noundef nonnull %8) #29
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi ptr [ %19, %18 ], [ %21, %20 ]
  %24 = icmp eq ptr %23, null
  %25 = icmp eq ptr %7, null
  br i1 %24, label %26, label %29

26:                                               ; preds = %22
  br i1 %25, label %38, label %27

27:                                               ; preds = %26
  %28 = call ptr @DestroyKernelInfo(ptr noundef nonnull %7) #29
  br label %38

29:                                               ; preds = %22
  br i1 %25, label %33, label %30

30:                                               ; preds = %29
  %31 = call fastcc ptr @LastKernelInfo(ptr noundef nonnull %7) #29
  %32 = getelementptr inbounds %struct.KernelInfo, ptr %31, i64 0, i32 11
  store ptr %23, ptr %32, align 8, !tbaa !13
  br label %33

33:                                               ; preds = %29, %6, %30
  %34 = phi ptr [ %7, %30 ], [ %7, %6 ], [ %23, %29 ]
  %35 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %8, i32 noundef 59) #32
  %36 = icmp eq ptr %35, null
  %37 = getelementptr inbounds i8, ptr %35, i64 1
  br i1 %36, label %38, label %6, !llvm.loop !18

38:                                               ; preds = %33, %6, %26, %27, %4
  %39 = phi ptr [ %5, %4 ], [ null, %27 ], [ null, %26 ], [ %7, %6 ], [ %34, %33 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %2) #21
  ret ptr %39
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ParseKernelArray(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [4096 x i8], align 16
  %3 = alloca ptr, align 8
  %4 = alloca %struct._GeometryInfo, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %5 = tail call double @sqrt(double noundef -1.000000e+00) #30
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #21
  %6 = tail call dereferenceable_or_null(104) ptr @AcquireMagickMemory(i64 noundef 104) #33
  %7 = icmp eq ptr %6, null
  br i1 %7, label %237, label %8

8:                                                ; preds = %1
  %9 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %6, i32 noundef 0, i64 noundef 104) #30
  %10 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 7
  %11 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 6
  %12 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 9
  %13 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %11, i8 0, i64 40, i1 false)
  store i32 36, ptr %6, align 8, !tbaa !20
  %14 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 11
  store ptr null, ptr %14, align 8, !tbaa !13
  %15 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 12
  store i64 2880220587, ptr %15, align 8, !tbaa !21
  %16 = icmp eq ptr %0, null
  br i1 %16, label %237, label %17

17:                                               ; preds = %8
  %18 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 59) #32
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0)
  %22 = getelementptr inbounds i8, ptr %0, i64 %21
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi ptr [ %22, %20 ], [ %18, %17 ]
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 58) #32
  store ptr %25, ptr %3, align 8, !tbaa !9
  %26 = icmp ne ptr %25, null
  %27 = icmp ult ptr %25, %24
  %28 = select i1 %26, i1 %27, i1 false
  br i1 %28, label %31, label %29

29:                                               ; preds = %23
  %30 = tail call ptr @__ctype_b_loc() #31
  br label %98

31:                                               ; preds = %23
  %32 = ptrtoint ptr %25 to i64
  %33 = ptrtoint ptr %0 to i64
  %34 = sub i64 %32, %33
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %2, ptr nonnull align 1 %0, i64 %34, i1 false)
  %35 = getelementptr inbounds [4096 x i8], ptr %2, i64 0, i64 %34
  store i8 0, ptr %35, align 1, !tbaa !6
  call void @SetGeometryInfo(ptr noundef nonnull %4) #30
  %36 = call i32 @ParseGeometry(ptr noundef nonnull %2, ptr noundef nonnull %4) #30
  %37 = and i32 %36, 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 1
  %41 = load double, ptr %40, align 8, !tbaa !22
  store double %41, ptr %4, align 8, !tbaa !24
  br label %44

42:                                               ; preds = %31
  %43 = load double, ptr %4, align 8, !tbaa !24
  br label %44

44:                                               ; preds = %42, %39
  %45 = phi double [ %43, %42 ], [ %41, %39 ]
  %46 = fcmp olt double %45, 1.000000e+00
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store double 1.000000e+00, ptr %4, align 8, !tbaa !24
  br label %48

48:                                               ; preds = %47, %44
  %49 = phi double [ 1.000000e+00, %47 ], [ %45, %44 ]
  %50 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 1
  %51 = load double, ptr %50, align 8, !tbaa !22
  %52 = fcmp olt double %51, 1.000000e+00
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store double %49, ptr %50, align 8, !tbaa !22
  br label %54

54:                                               ; preds = %53, %48
  %55 = phi double [ %49, %53 ], [ %51, %48 ]
  %56 = fptoui double %49 to i64
  %57 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 1
  store i64 %56, ptr %57, align 8, !tbaa !25
  %58 = fptoui double %55 to i64
  %59 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 2
  store i64 %58, ptr %59, align 8, !tbaa !26
  %60 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 2
  %61 = load double, ptr %60, align 8, !tbaa !27
  %62 = fcmp olt double %61, 0.000000e+00
  %63 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 3
  %64 = load double, ptr %63, align 8
  %65 = fcmp olt double %64, 0.000000e+00
  %66 = select i1 %62, i1 true, i1 %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %54
  %68 = call ptr @DestroyKernelInfo(ptr noundef nonnull %6) #29
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
  store i64 %78, ptr %79, align 8, !tbaa !28
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
  store i64 %88, ptr %89, align 8, !tbaa !29
  %90 = icmp slt i64 %78, %56
  %91 = icmp slt i64 %88, %58
  %92 = select i1 %90, i1 %91, i1 false
  br i1 %92, label %95, label %93

93:                                               ; preds = %87
  %94 = call ptr @DestroyKernelInfo(ptr noundef nonnull %6) #29
  br label %237

95:                                               ; preds = %87
  %96 = load ptr, ptr %3, align 8, !tbaa !9
  %97 = getelementptr inbounds i8, ptr %96, i64 1
  store ptr %97, ptr %3, align 8, !tbaa !9
  br label %148

98:                                               ; preds = %98, %29
  %99 = phi ptr [ %109, %98 ], [ %0, %29 ]
  store ptr %99, ptr %3, align 8, !tbaa !9
  %100 = load ptr, ptr %30, align 8, !tbaa !9
  %101 = load i8, ptr %99, align 1, !tbaa !6
  %102 = zext i8 %101 to i64
  %103 = getelementptr inbounds i16, ptr %100, i64 %102
  %104 = load i16, ptr %103, align 2, !tbaa !11
  %105 = and i16 %104, 8192
  %106 = icmp ne i16 %105, 0
  %107 = icmp eq i8 %101, 39
  %108 = or i1 %107, %106
  %109 = getelementptr inbounds i8, ptr %99, i64 1
  br i1 %108, label %98, label %110, !llvm.loop !30

110:                                              ; preds = %98
  %111 = icmp ult ptr %99, %24
  br i1 %111, label %112, label %126

112:                                              ; preds = %110, %119
  %113 = phi ptr [ %121, %119 ], [ %99, %110 ]
  %114 = phi i64 [ %120, %119 ], [ 0, %110 ]
  call void @GetMagickToken(ptr noundef %113, ptr noundef nonnull %3, ptr noundef nonnull %2) #30
  %115 = load i8, ptr %2, align 16, !tbaa !6
  %116 = icmp eq i8 %115, 44
  br i1 %116, label %117, label %119

117:                                              ; preds = %112
  %118 = load ptr, ptr %3, align 8, !tbaa !9
  call void @GetMagickToken(ptr noundef %118, ptr noundef nonnull %3, ptr noundef nonnull %2) #30
  br label %119

119:                                              ; preds = %112, %117
  %120 = add nuw nsw i64 %114, 1
  %121 = load ptr, ptr %3, align 8, !tbaa !9
  %122 = icmp ult ptr %121, %24
  br i1 %122, label %112, label %123, !llvm.loop !31

123:                                              ; preds = %119
  %124 = sitofp i64 %120 to double
  %125 = fadd double %124, 1.000000e+00
  br label %126

126:                                              ; preds = %123, %110
  %127 = phi double [ 1.000000e+00, %110 ], [ %125, %123 ]
  %128 = call double @sqrt(double noundef %127) #30
  %129 = fptoui double %128 to i64
  %130 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 2
  store i64 %129, ptr %130, align 8, !tbaa !26
  %131 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 1
  store i64 %129, ptr %131, align 8, !tbaa !25
  %132 = add i64 %129, -1
  %133 = sdiv i64 %132, 2
  %134 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 4
  store i64 %133, ptr %134, align 8, !tbaa !29
  %135 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 3
  store i64 %133, ptr %135, align 8, !tbaa !28
  br label %136

136:                                              ; preds = %136, %126
  %137 = phi ptr [ %0, %126 ], [ %147, %136 ]
  store ptr %137, ptr %3, align 8, !tbaa !9
  %138 = load ptr, ptr %30, align 8, !tbaa !9
  %139 = load i8, ptr %137, align 1, !tbaa !6
  %140 = zext i8 %139 to i64
  %141 = getelementptr inbounds i16, ptr %138, i64 %140
  %142 = load i16, ptr %141, align 2, !tbaa !11
  %143 = and i16 %142, 8192
  %144 = icmp ne i16 %143, 0
  %145 = icmp eq i8 %139, 39
  %146 = or i1 %145, %144
  %147 = getelementptr inbounds i8, ptr %137, i64 1
  br i1 %146, label %136, label %148, !llvm.loop !32

148:                                              ; preds = %136, %95
  %149 = phi i64 [ %58, %95 ], [ %129, %136 ]
  %150 = phi i64 [ %56, %95 ], [ %129, %136 ]
  %151 = phi i32 [ %36, %95 ], [ 0, %136 ]
  %152 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 1
  %153 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 2
  %154 = shl i64 %149, 3
  %155 = call ptr @AcquireAlignedMemory(i64 noundef %150, i64 noundef %154) #34
  %156 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 5
  store ptr %155, ptr %156, align 8, !tbaa !33
  %157 = icmp eq ptr %155, null
  br i1 %157, label %158, label %160

158:                                              ; preds = %148
  %159 = call ptr @DestroyKernelInfo(ptr noundef nonnull %6) #29
  br label %237

160:                                              ; preds = %148
  store <2 x double> <double 0x7FEFFFFFFFFFFFFF, double 0xFFEFFFFFFFFFFFFF>, ptr %11, align 8, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  %161 = load i64, ptr %152, align 8, !tbaa !25
  %162 = load i64, ptr %153, align 8, !tbaa !26
  %163 = mul i64 %162, %161
  %164 = icmp sgt i64 %163, 0
  %165 = load ptr, ptr %3, align 8
  %166 = icmp ult ptr %165, %24
  %167 = select i1 %164, i1 %166, i1 false
  br i1 %167, label %168, label %207

168:                                              ; preds = %160, %198
  %169 = phi ptr [ %204, %198 ], [ %165, %160 ]
  %170 = phi i64 [ %199, %198 ], [ 0, %160 ]
  call void @GetMagickToken(ptr noundef %169, ptr noundef nonnull %3, ptr noundef nonnull %2) #30
  %171 = load i8, ptr %2, align 16, !tbaa !6
  %172 = icmp eq i8 %171, 44
  br i1 %172, label %173, label %175

173:                                              ; preds = %168
  %174 = load ptr, ptr %3, align 8, !tbaa !9
  call void @GetMagickToken(ptr noundef %174, ptr noundef nonnull %3, ptr noundef nonnull %2) #30
  br label %175

175:                                              ; preds = %173, %168
  %176 = call i32 @LocaleCompare(ptr noundef nonnull @.str, ptr noundef nonnull %2) #30
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %181, label %178

178:                                              ; preds = %175
  %179 = call i32 @LocaleCompare(ptr noundef nonnull @.str.1, ptr noundef nonnull %2) #30
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %178, %175
  %182 = load ptr, ptr %156, align 8, !tbaa !33
  %183 = getelementptr inbounds double, ptr %182, i64 %170
  store double %5, ptr %183, align 8, !tbaa !34
  br label %198

184:                                              ; preds = %178
  %185 = call fastcc double @StringToDouble(ptr noundef nonnull %2) #29
  %186 = load ptr, ptr %156, align 8, !tbaa !33
  %187 = getelementptr inbounds double, ptr %186, i64 %170
  store double %185, ptr %187, align 8, !tbaa !34
  %188 = fcmp olt double %185, 0.000000e+00
  %189 = select i1 %188, ptr %13, ptr %12
  %190 = load double, ptr %189, align 8, !tbaa !34
  %191 = fadd double %185, %190
  store double %191, ptr %189, align 8, !tbaa !34
  %192 = load double, ptr %11, align 8, !tbaa !35
  %193 = load double, ptr %187, align 8, !tbaa !34
  %194 = call fastcc double @MagickMin(double noundef %192, double noundef %193) #29
  store double %194, ptr %11, align 8, !tbaa !35
  %195 = load double, ptr %10, align 8, !tbaa !36
  %196 = load double, ptr %187, align 8, !tbaa !34
  %197 = call fastcc double @MagickMax(double noundef %195, double noundef %196) #29
  store double %197, ptr %10, align 8, !tbaa !36
  br label %198

198:                                              ; preds = %181, %184
  %199 = add nuw nsw i64 %170, 1
  %200 = load i64, ptr %152, align 8, !tbaa !25
  %201 = load i64, ptr %153, align 8, !tbaa !26
  %202 = mul i64 %201, %200
  %203 = icmp slt i64 %199, %202
  %204 = load ptr, ptr %3, align 8
  %205 = icmp ult ptr %204, %24
  %206 = select i1 %203, i1 %205, i1 false
  br i1 %206, label %168, label %207, !llvm.loop !37

207:                                              ; preds = %198, %160
  %208 = phi i64 [ 0, %160 ], [ %199, %198 ]
  %209 = phi ptr [ %165, %160 ], [ %204, %198 ]
  call void @GetMagickToken(ptr noundef %209, ptr noundef nonnull %3, ptr noundef nonnull %2) #30
  %210 = load i8, ptr %2, align 16
  switch i8 %210, label %211 [
    i8 59, label %213
    i8 39, label %213
    i8 0, label %213
  ]

211:                                              ; preds = %207
  %212 = call ptr @DestroyKernelInfo(ptr noundef nonnull %6) #29
  br label %237

213:                                              ; preds = %207, %207, %207
  %214 = load i64, ptr %152, align 8, !tbaa !25
  %215 = load i64, ptr %153, align 8, !tbaa !26
  %216 = mul i64 %215, %214
  %217 = icmp slt i64 %208, %216
  br i1 %217, label %218, label %220

218:                                              ; preds = %213
  %219 = call ptr @DestroyKernelInfo(ptr noundef nonnull %6) #29
  br label %237

220:                                              ; preds = %213
  %221 = load double, ptr %11, align 8, !tbaa !35
  %222 = fcmp oeq double %221, 0x7FEFFFFFFFFFFFFF
  br i1 %222, label %223, label %225

223:                                              ; preds = %220
  %224 = call ptr @DestroyKernelInfo(ptr noundef nonnull %6) #29
  br label %237

225:                                              ; preds = %220
  %226 = and i32 %151, 131072
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %229, label %228

228:                                              ; preds = %225
  call fastcc void @ExpandRotateKernelInfo(ptr noundef nonnull %6, double noundef 4.500000e+01) #29
  br label %237

229:                                              ; preds = %225
  %230 = and i32 %151, 32768
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %233, label %232

232:                                              ; preds = %229
  call fastcc void @ExpandRotateKernelInfo(ptr noundef nonnull %6, double noundef 9.000000e+01) #29
  br label %237

233:                                              ; preds = %229
  %234 = and i32 %151, 16384
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %237, label %236

236:                                              ; preds = %233
  call fastcc void @ExpandMirrorKernelInfo(ptr noundef nonnull %6) #29
  br label %237

237:                                              ; preds = %228, %233, %236, %232, %8, %1, %223, %218, %211, %158, %93, %67
  %238 = phi ptr [ %68, %67 ], [ %94, %93 ], [ %159, %158 ], [ %212, %211 ], [ %219, %218 ], [ %224, %223 ], [ null, %1 ], [ %6, %8 ], [ %6, %232 ], [ %6, %236 ], [ %6, %233 ], [ %6, %228 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %2) #21
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
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #21
  call void @GetMagickToken(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %2) #30
  %5 = call i64 @ParseCommandOption(i32 noundef 34, i32 noundef 0, ptr noundef nonnull %2) #30
  %6 = icmp slt i64 %5, 0
  %7 = icmp eq i64 %5, 36
  %8 = or i1 %6, %7
  br i1 %8, label %130, label %9

9:                                                ; preds = %1
  %10 = tail call ptr @__ctype_b_loc() #31
  %11 = load ptr, ptr %3, align 8, !tbaa !9
  br label %12

12:                                               ; preds = %9, %24
  %13 = phi ptr [ %11, %9 ], [ %25, %24 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !9
  %15 = load i8, ptr %13, align 1, !tbaa !6
  %16 = zext i8 %15 to i64
  %17 = getelementptr inbounds i16, ptr %14, i64 %16
  %18 = load i16, ptr %17, align 2, !tbaa !11
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
  store ptr %25, ptr %3, align 8, !tbaa !9
  br label %12, !llvm.loop !38

26:                                               ; preds = %22, %23, %23
  %27 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %13, i32 noundef 59) #32
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
  store i8 0, ptr %37, align 1, !tbaa !6
  call void @SetGeometryInfo(ptr noundef nonnull %4) #30
  %38 = call i32 @ParseGeometry(ptr noundef nonnull %2, ptr noundef nonnull %4) #30
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
  store double 1.000000e+00, ptr %4, align 8, !tbaa !24
  br label %110

43:                                               ; preds = %32, %32, %32, %32, %32, %32
  %44 = and i32 %38, 8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %110

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 1
  store double 1.000000e+00, ptr %47, align 8, !tbaa !22
  br label %110

48:                                               ; preds = %32
  %49 = and i32 %38, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %110

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 2
  store double 1.000000e+00, ptr %52, align 8, !tbaa !27
  br label %110

53:                                               ; preds = %32
  %54 = and i32 %38, 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 1
  %58 = load double, ptr %57, align 8, !tbaa !22
  store double %58, ptr %4, align 8, !tbaa !24
  br label %61

59:                                               ; preds = %53
  %60 = load double, ptr %4, align 8, !tbaa !24
  br label %61

61:                                               ; preds = %59, %56
  %62 = phi double [ %60, %59 ], [ %58, %56 ]
  %63 = fcmp olt double %62, 1.000000e+00
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store double 3.000000e+00, ptr %4, align 8, !tbaa !24
  br label %65

65:                                               ; preds = %64, %61
  %66 = phi double [ 3.000000e+00, %64 ], [ %62, %61 ]
  %67 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 1
  %68 = load double, ptr %67, align 8, !tbaa !22
  %69 = fcmp olt double %68, 1.000000e+00
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  store double %66, ptr %67, align 8, !tbaa !22
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
  store double %79, ptr %80, align 8, !tbaa !27
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
  store double %88, ptr %89, align 8, !tbaa !39
  br label %110

90:                                               ; preds = %32, %32, %32, %32
  %91 = and i32 %38, 8
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 1
  store double 1.000000e+02, ptr %94, align 8, !tbaa !22
  br label %110

95:                                               ; preds = %90
  %96 = and i32 %38, 8192
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 1
  %100 = load double, ptr %99, align 8, !tbaa !22
  %101 = fadd double %100, 1.000000e+00
  %102 = fdiv double 6.553500e+04, %101
  store double %102, ptr %99, align 8, !tbaa !22
  br label %110

103:                                              ; preds = %95
  %104 = and i32 %38, 4096
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 1
  %108 = load double, ptr %107, align 8, !tbaa !22
  %109 = fmul double %108, 6.553500e+02
  store double %109, ptr %107, align 8, !tbaa !22
  br label %110

110:                                              ; preds = %32, %93, %103, %106, %98, %81, %84, %48, %51, %43, %46, %39, %42
  %111 = trunc i64 %5 to i32
  %112 = call ptr @AcquireKernelBuiltIn(i32 noundef %111, ptr noundef nonnull %4) #29
  %113 = icmp eq ptr %112, null
  br i1 %113, label %130, label %114

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.KernelInfo, ptr %112, i64 0, i32 11
  %116 = load ptr, ptr %115, align 8, !tbaa !13
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %130

118:                                              ; preds = %114
  %119 = and i32 %38, 131072
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %118
  call fastcc void @ExpandRotateKernelInfo(ptr noundef nonnull %112, double noundef 4.500000e+01) #29
  br label %130

122:                                              ; preds = %118
  %123 = and i32 %38, 32768
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %122
  call fastcc void @ExpandRotateKernelInfo(ptr noundef nonnull %112, double noundef 9.000000e+01) #29
  br label %130

126:                                              ; preds = %122
  %127 = and i32 %38, 16384
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %126
  call fastcc void @ExpandMirrorKernelInfo(ptr noundef nonnull %112) #29
  br label %130

130:                                              ; preds = %114, %125, %129, %126, %121, %110, %1
  %131 = phi ptr [ null, %1 ], [ null, %110 ], [ %112, %121 ], [ %112, %126 ], [ %112, %129 ], [ %112, %125 ], [ %112, %114 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %2) #21
  ret ptr %131
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DestroyKernelInfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %3) #29
  store ptr %6, ptr %2, align 8, !tbaa !13
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !33
  %10 = tail call ptr @RelinquishAlignedMemory(ptr noundef %9) #30
  store ptr %10, ptr %8, align 8, !tbaa !33
  %11 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #30
  ret ptr %11
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @LastKernelInfo(ptr noundef readonly %0) unnamed_addr #4 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %5, %2 ]
  %4 = getelementptr inbounds %struct.KernelInfo, ptr %3, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %2, !llvm.loop !40

7:                                                ; preds = %2
  ret ptr %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #6

; Function Attrs: optsize allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: optsize
declare void @SetGeometryInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ParseGeometry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireAlignedMemory(i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc double @StringToDouble(ptr noalias noundef %0) unnamed_addr #0 {
  %2 = tail call double @InterpretLocaleValue(ptr noundef %0, ptr noundef null) #30
  ret double %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @MagickMin(double noundef %0, double noundef %1) unnamed_addr #10 {
  %3 = fcmp olt double %0, %1
  %4 = select i1 %3, double %0, double %1
  ret double %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @MagickMax(double noundef %0, double noundef %1) unnamed_addr #10 {
  %3 = fcmp ogt double %0, %1
  %4 = select i1 %3, double %0, double %1
  ret double %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ExpandRotateKernelInfo(ptr noundef %0, double noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @CloneKernelInfo(ptr noundef %0) #29
  tail call fastcc void @RotateKernelInfo(ptr noundef %3, double noundef %1) #29
  %4 = tail call fastcc i32 @SameKernelInfo(ptr noundef %0, ptr noundef %3) #29, !range !41
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %11, %6 ], [ %3, %2 ]
  %8 = phi ptr [ %7, %6 ], [ %0, %2 ]
  %9 = tail call fastcc ptr @LastKernelInfo(ptr noundef %8) #29
  %10 = getelementptr inbounds %struct.KernelInfo, ptr %9, i64 0, i32 11
  store ptr %7, ptr %10, align 8, !tbaa !13
  %11 = tail call ptr @CloneKernelInfo(ptr noundef %7) #29
  tail call fastcc void @RotateKernelInfo(ptr noundef %11, double noundef %1) #29
  %12 = tail call fastcc i32 @SameKernelInfo(ptr noundef %0, ptr noundef %11) #29, !range !41
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %6, label %14

14:                                               ; preds = %6, %2
  %15 = phi ptr [ %3, %2 ], [ %11, %6 ]
  %16 = tail call ptr @DestroyKernelInfo(ptr noundef %15) #29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ExpandMirrorKernelInfo(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @CloneKernelInfo(ptr noundef %0) #29
  tail call fastcc void @RotateKernelInfo(ptr noundef %2, double noundef 1.800000e+02) #29
  %3 = tail call fastcc ptr @LastKernelInfo(ptr noundef %0) #29
  %4 = getelementptr inbounds %struct.KernelInfo, ptr %3, i64 0, i32 11
  store ptr %2, ptr %4, align 8, !tbaa !13
  %5 = tail call ptr @CloneKernelInfo(ptr noundef %2) #29
  tail call fastcc void @RotateKernelInfo(ptr noundef %5, double noundef 9.000000e+01) #29
  %6 = tail call fastcc ptr @LastKernelInfo(ptr noundef %2) #29
  %7 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 11
  store ptr %5, ptr %7, align 8, !tbaa !13
  %8 = tail call ptr @CloneKernelInfo(ptr noundef %5) #29
  tail call fastcc void @RotateKernelInfo(ptr noundef %8, double noundef 1.800000e+02) #29
  %9 = tail call fastcc ptr @LastKernelInfo(ptr noundef %5) #29
  %10 = getelementptr inbounds %struct.KernelInfo, ptr %9, i64 0, i32 11
  store ptr %8, ptr %10, align 8, !tbaa !13
  ret void
}

; Function Attrs: optsize
declare double @InterpretLocaleValue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CloneKernelInfo(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call dereferenceable_or_null(104) ptr @AcquireMagickMemory(i64 noundef 104) #33
  %3 = icmp eq ptr %2, null
  br i1 %3, label %38, label %4

4:                                                ; preds = %1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(104) %0, i64 104, i1 false), !tbaa.struct !42
  %5 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !25
  %7 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 2
  %8 = load i64, ptr %7, align 8, !tbaa !26
  %9 = shl i64 %8, 3
  %10 = tail call ptr @AcquireAlignedMemory(i64 noundef %6, i64 noundef %9) #34
  %11 = getelementptr inbounds %struct.KernelInfo, ptr %2, i64 0, i32 5
  store ptr %10, ptr %11, align 8, !tbaa !33
  %12 = icmp eq ptr %10, null
  br i1 %12, label %36, label %13

13:                                               ; preds = %4
  %14 = load i64, ptr %5, align 8, !tbaa !25
  %15 = load i64, ptr %7, align 8, !tbaa !26
  %16 = mul i64 %15, %14
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !33
  br label %21

21:                                               ; preds = %18, %21
  %22 = phi i64 [ 0, %18 ], [ %26, %21 ]
  %23 = getelementptr inbounds double, ptr %20, i64 %22
  %24 = load double, ptr %23, align 8, !tbaa !34
  %25 = getelementptr inbounds double, ptr %10, i64 %22
  store double %24, ptr %25, align 8, !tbaa !34
  %26 = add nuw nsw i64 %22, 1
  %27 = icmp eq i64 %26, %16
  br i1 %27, label %28, label %21, !llvm.loop !45

28:                                               ; preds = %21, %13
  %29 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 11
  %30 = load ptr, ptr %29, align 8, !tbaa !13
  %31 = icmp eq ptr %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %28
  %33 = tail call ptr @CloneKernelInfo(ptr noundef nonnull %30) #29
  %34 = getelementptr inbounds %struct.KernelInfo, ptr %2, i64 0, i32 11
  store ptr %33, ptr %34, align 8, !tbaa !13
  %35 = icmp eq ptr %33, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %32, %4
  %37 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %2) #29
  br label %38

38:                                               ; preds = %36, %28, %32, %1
  %39 = phi ptr [ null, %1 ], [ %2, %32 ], [ %2, %28 ], [ %37, %36 ]
  ret ptr %39
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @RotateKernelInfo(ptr nocapture noundef %0, double noundef %1) unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call fastcc void @RotateKernelInfo(ptr noundef nonnull %4, double noundef %1) #29
  br label %7

7:                                                ; preds = %6, %2
  %8 = tail call double @fmod(double noundef %1, double noundef 3.600000e+02) #30
  %9 = fcmp olt double %8, 0.000000e+00
  %10 = fadd double %8, 3.600000e+02
  %11 = select i1 %9, double %10, double %8
  %12 = fcmp ogt double %11, 3.375000e+02
  %13 = fcmp ole double %11, 2.250000e+01
  %14 = or i1 %12, %13
  br i1 %14, label %213, label %15

15:                                               ; preds = %7
  %16 = load i32, ptr %0, align 8, !tbaa !20
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
  %29 = tail call double @fmod(double noundef %28, double noundef 9.000000e+01) #30
  %30 = fcmp ogt double %29, 2.250000e+01
  br i1 %30, label %31, label %90

31:                                               ; preds = %27
  %32 = tail call double @fmod(double noundef %28, double noundef 9.000000e+01) #30
  %33 = fcmp ugt double %32, 6.750000e+01
  br i1 %33, label %90, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 1
  %36 = load i64, ptr %35, align 8, !tbaa !25
  %37 = icmp eq i64 %36, 3
  br i1 %37, label %38, label %89

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 2
  %40 = load i64, ptr %39, align 8, !tbaa !26
  %41 = icmp eq i64 %40, 3
  br i1 %41, label %42, label %89

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 5
  %44 = load ptr, ptr %43, align 8, !tbaa !33
  %45 = getelementptr inbounds double, ptr %44, i64 3
  %46 = load double, ptr %45, align 8, !tbaa !34
  %47 = getelementptr inbounds double, ptr %44, i64 6
  %48 = load double, ptr %47, align 8, !tbaa !34
  store double %48, ptr %45, align 8, !tbaa !34
  %49 = getelementptr inbounds double, ptr %44, i64 7
  %50 = getelementptr inbounds double, ptr %44, i64 8
  %51 = load <2 x double>, ptr %49, align 8, !tbaa !34
  store <2 x double> %51, ptr %47, align 8, !tbaa !34
  %52 = getelementptr inbounds double, ptr %44, i64 5
  %53 = load double, ptr %52, align 8, !tbaa !34
  store double %53, ptr %50, align 8, !tbaa !34
  %54 = getelementptr inbounds double, ptr %44, i64 2
  %55 = load double, ptr %54, align 8, !tbaa !34
  store double %55, ptr %52, align 8, !tbaa !34
  %56 = getelementptr inbounds double, ptr %44, i64 1
  %57 = load <2 x double>, ptr %44, align 8, !tbaa !34
  store double %46, ptr %44, align 8, !tbaa !34
  store <2 x double> %57, ptr %56, align 8, !tbaa !34
  %58 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 3
  %59 = load i64, ptr %58, align 8, !tbaa !28
  %60 = icmp eq i64 %59, 1
  %61 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 4
  %62 = load i64, ptr %61, align 8, !tbaa !29
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
  store i64 %81, ptr %58, align 8, !tbaa !28
  store i64 %80, ptr %67, align 8, !tbaa !29
  br label %82

82:                                               ; preds = %42, %79
  %83 = fadd double %28, 3.150000e+02
  %84 = tail call double @fmod(double noundef %83, double noundef 3.600000e+02) #30
  %85 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 10
  %86 = load double, ptr %85, align 8, !tbaa !46
  %87 = fadd double %86, 4.500000e+01
  %88 = tail call double @fmod(double noundef %87, double noundef 3.600000e+02) #30
  store double %88, ptr %85, align 8, !tbaa !46
  br label %90

89:                                               ; preds = %38, %34
  tail call void @perror(ptr noundef nonnull @.str.2) #35
  br label %90

90:                                               ; preds = %82, %89, %31, %27
  %91 = phi double [ %84, %82 ], [ %28, %89 ], [ %28, %31 ], [ %28, %27 ]
  %92 = tail call double @fmod(double noundef %91, double noundef 1.800000e+02) #30
  %93 = fcmp ogt double %92, 4.500000e+01
  br i1 %93, label %94, label %177

94:                                               ; preds = %90
  %95 = tail call double @fmod(double noundef %91, double noundef 1.800000e+02) #30
  %96 = fcmp ugt double %95, 1.350000e+02
  br i1 %96, label %177, label %97

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 1
  %99 = load i64, ptr %98, align 8, !tbaa !25
  %100 = icmp eq i64 %99, 1
  %101 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 2
  %102 = load i64, ptr %101, align 8, !tbaa !26
  br i1 %100, label %105, label %103

103:                                              ; preds = %97
  %104 = icmp eq i64 %102, 1
  br i1 %104, label %105, label %125

105:                                              ; preds = %97, %103
  %106 = phi i64 [ 1, %103 ], [ %102, %97 ]
  %107 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 2
  store i64 %106, ptr %98, align 8, !tbaa !25
  store i64 %99, ptr %107, align 8, !tbaa !26
  %108 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 3
  %109 = load <2 x i64>, ptr %108, align 8, !tbaa !44
  %110 = shufflevector <2 x i64> %109, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %110, ptr %108, align 8, !tbaa !44
  %111 = icmp eq i64 %106, 1
  %112 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 10
  br i1 %111, label %113, label %119

113:                                              ; preds = %105
  %114 = fadd double %91, 2.700000e+02
  %115 = tail call double @fmod(double noundef %114, double noundef 3.600000e+02) #30
  %116 = load double, ptr %112, align 8, !tbaa !46
  %117 = fadd double %116, 9.000000e+01
  %118 = tail call double @fmod(double noundef %117, double noundef 3.600000e+02) #30
  store double %118, ptr %112, align 8, !tbaa !46
  br label %177

119:                                              ; preds = %105
  %120 = fadd double %91, 9.000000e+01
  %121 = tail call double @fmod(double noundef %120, double noundef 3.600000e+02) #30
  %122 = load double, ptr %112, align 8, !tbaa !46
  %123 = fadd double %122, 2.700000e+02
  %124 = tail call double @fmod(double noundef %123, double noundef 3.600000e+02) #30
  store double %124, ptr %112, align 8, !tbaa !46
  br label %177

125:                                              ; preds = %103
  %126 = icmp eq i64 %99, %102
  br i1 %126, label %127, label %176

127:                                              ; preds = %125
  %128 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 5
  %129 = load ptr, ptr %128, align 8, !tbaa !33
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
  %145 = load double, ptr %144, align 8, !tbaa !34
  %146 = getelementptr double, ptr %136, i64 %142
  %147 = load double, ptr %146, align 8, !tbaa !34
  store double %147, ptr %144, align 8, !tbaa !34
  %148 = mul i64 %141, %99
  %149 = getelementptr double, ptr %137, i64 %148
  %150 = load double, ptr %149, align 8, !tbaa !34
  store double %150, ptr %146, align 8, !tbaa !34
  %151 = getelementptr double, ptr %139, i64 %141
  %152 = load double, ptr %151, align 8, !tbaa !34
  store double %152, ptr %149, align 8, !tbaa !34
  store double %145, ptr %151, align 8, !tbaa !34
  %153 = add nuw i64 %142, 1
  %154 = add i64 %141, -1
  %155 = icmp ult i64 %153, %154
  br i1 %155, label %140, label %156, !llvm.loop !47

156:                                              ; preds = %140
  %157 = add i64 %133, 1
  %158 = add i64 %132, -1
  %159 = icmp ugt i64 %157, %158
  br i1 %159, label %160, label %131, !llvm.loop !48

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 3
  %162 = load i64, ptr %161, align 8, !tbaa !28
  %163 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 4
  %164 = load i64, ptr %163, align 8, !tbaa !29
  %165 = shl nsw i64 %164, 1
  %166 = xor i64 %165, -1
  %167 = add i64 %130, %99
  %168 = add i64 %167, %166
  %169 = sdiv i64 %168, 2
  store i64 %169, ptr %161, align 8, !tbaa !28
  store i64 %162, ptr %163, align 8, !tbaa !29
  %170 = fadd double %91, 2.700000e+02
  %171 = tail call double @fmod(double noundef %170, double noundef 3.600000e+02) #30
  %172 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 10
  %173 = load double, ptr %172, align 8, !tbaa !46
  %174 = fadd double %173, 9.000000e+01
  %175 = tail call double @fmod(double noundef %174, double noundef 3.600000e+02) #30
  store double %175, ptr %172, align 8, !tbaa !46
  br label %177

176:                                              ; preds = %125
  tail call void @perror(ptr noundef nonnull @.str.3) #35
  br label %177

177:                                              ; preds = %113, %119, %176, %160, %94, %90
  %178 = phi double [ %171, %160 ], [ %91, %176 ], [ %91, %94 ], [ %91, %90 ], [ %115, %113 ], [ %121, %119 ]
  %179 = fcmp ogt double %178, 1.350000e+02
  %180 = fcmp ole double %178, 2.250000e+02
  %181 = and i1 %179, %180
  br i1 %181, label %182, label %213

182:                                              ; preds = %177
  %183 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 5
  %184 = load ptr, ptr %183, align 8, !tbaa !33
  %185 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 1
  %186 = load <2 x i64>, ptr %185, align 8, !tbaa !44
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
  %196 = load double, ptr %195, align 8, !tbaa !34
  %197 = getelementptr inbounds double, ptr %184, i64 %193
  %198 = load double, ptr %197, align 8, !tbaa !34
  store double %198, ptr %195, align 8, !tbaa !34
  store double %196, ptr %197, align 8, !tbaa !34
  %199 = add nuw i64 %194, 1
  %200 = add i64 %193, -1
  %201 = icmp ult i64 %199, %200
  br i1 %201, label %192, label %202, !llvm.loop !49

202:                                              ; preds = %192, %182
  %203 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 3
  %204 = load <2 x i64>, ptr %203, align 8, !tbaa !44
  %205 = xor <2 x i64> %204, <i64 -1, i64 -1>
  %206 = add <2 x i64> %186, %205
  store <2 x i64> %206, ptr %203, align 8, !tbaa !44
  %207 = fadd double %178, -1.800000e+02
  %208 = tail call double @fmod(double noundef %207, double noundef 3.600000e+02) #30
  %209 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 10
  %210 = load double, ptr %209, align 8, !tbaa !46
  %211 = fadd double %210, 1.800000e+02
  %212 = tail call double @fmod(double noundef %211, double noundef 3.600000e+02) #30
  store double %212, ptr %209, align 8, !tbaa !46
  br label %213

213:                                              ; preds = %177, %202, %17, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %7
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @SameKernelInfo(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !25
  %5 = getelementptr inbounds %struct.KernelInfo, ptr %1, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !25
  %7 = icmp eq i64 %4, %6
  br i1 %7, label %8, label %51

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 2
  %10 = load i64, ptr %9, align 8, !tbaa !26
  %11 = getelementptr inbounds %struct.KernelInfo, ptr %1, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !26
  %13 = icmp eq i64 %10, %12
  br i1 %13, label %14, label %51

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 3
  %16 = load i64, ptr %15, align 8, !tbaa !28
  %17 = getelementptr inbounds %struct.KernelInfo, ptr %1, i64 0, i32 3
  %18 = load i64, ptr %17, align 8, !tbaa !28
  %19 = icmp eq i64 %16, %18
  br i1 %19, label %20, label %51

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 4
  %22 = load i64, ptr %21, align 8, !tbaa !29
  %23 = getelementptr inbounds %struct.KernelInfo, ptr %1, i64 0, i32 4
  %24 = load i64, ptr %23, align 8, !tbaa !29
  %25 = icmp eq i64 %22, %24
  br i1 %25, label %26, label %51

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.KernelInfo, ptr %1, i64 0, i32 5
  %28 = mul i64 %10, %4
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %51, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 5
  %32 = load ptr, ptr %31, align 8, !tbaa !33
  %33 = load ptr, ptr %27, align 8, !tbaa !33
  br label %37

34:                                               ; preds = %47
  %35 = add nuw i64 %38, 1
  %36 = icmp eq i64 %35, %28
  br i1 %36, label %51, label %37, !llvm.loop !50

37:                                               ; preds = %30, %34
  %38 = phi i64 [ 0, %30 ], [ %35, %34 ]
  %39 = getelementptr inbounds double, ptr %32, i64 %38
  %40 = load double, ptr %39, align 8, !tbaa !34
  %41 = fcmp uno double %40, 0.000000e+00
  %42 = getelementptr inbounds double, ptr %33, i64 %38
  %43 = load double, ptr %42, align 8, !tbaa !34
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

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #13

; Function Attrs: optsize
declare i64 @ParseCommandOption(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @AcquireKernelBuiltIn(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call double @sqrt(double noundef -1.000000e+00) #30
  %4 = icmp ult i32 %0, 37
  br i1 %4, label %13, label %5

5:                                                ; preds = %13, %2
  %6 = tail call dereferenceable_or_null(104) ptr @AcquireMagickMemory(i64 noundef 104) #33
  %7 = icmp eq ptr %6, null
  br i1 %7, label %1584, label %8

8:                                                ; preds = %5
  %9 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %6, i32 noundef 0, i64 noundef 104) #30
  %10 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %10, i8 0, i64 40, i1 false)
  store i32 %0, ptr %6, align 8, !tbaa !20
  %11 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 11
  store ptr null, ptr %11, align 8, !tbaa !13
  %12 = getelementptr inbounds %struct.KernelInfo, ptr %6, i64 0, i32 12
  store i64 2880220587, ptr %12, align 8, !tbaa !21
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
  store i64 1, ptr %21, align 8, !tbaa !25
  %22 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 2
  store i64 1, ptr %22, align 8, !tbaa !26
  %23 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  %24 = tail call dereferenceable_or_null(8) ptr @AcquireAlignedMemory(i64 noundef 1, i64 noundef 8) #34
  %25 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 5
  store ptr %24, ptr %25, align 8, !tbaa !33
  %26 = icmp eq ptr %24, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %19) #29
  br label %1584

29:                                               ; preds = %20
  %30 = load double, ptr %1, align 8, !tbaa !24
  store double %30, ptr %24, align 8, !tbaa !34
  %31 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 7
  store double %30, ptr %31, align 8, !tbaa !36
  br label %1584

32:                                               ; preds = %18, %18, %18
  %33 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %34 = load double, ptr %33, align 8, !tbaa !22
  %35 = tail call double @llvm.fabs.f64(double %34)
  %36 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 2
  %37 = load double, ptr %36, align 8, !tbaa !27
  %38 = tail call double @llvm.fabs.f64(double %37)
  %39 = load double, ptr %1, align 8, !tbaa !24
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
  %51 = tail call i64 @GetOptimalKernelWidth2D(double noundef %39, double noundef %35) #30
  br label %54

52:                                               ; preds = %46
  %53 = tail call i64 @GetOptimalKernelWidth2D(double noundef %39, double noundef %38) #30
  br label %54

54:                                               ; preds = %50, %52, %42
  %55 = phi i64 [ %51, %50 ], [ %53, %52 ], [ %45, %42 ]
  store i64 %55, ptr %41, align 8, !tbaa !25
  %56 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 1
  %57 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 2
  store i64 %55, ptr %57, align 8, !tbaa !26
  %58 = add i64 %55, -1
  %59 = sdiv i64 %58, 2
  %60 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 4
  store i64 %59, ptr %60, align 8, !tbaa !29
  %61 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 3
  store i64 %59, ptr %61, align 8, !tbaa !28
  %62 = shl i64 %55, 3
  %63 = tail call ptr @AcquireAlignedMemory(i64 noundef %55, i64 noundef %62) #34
  %64 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 5
  store ptr %63, ptr %64, align 8, !tbaa !33
  %65 = icmp eq ptr %63, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %54
  %67 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %19) #29
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
  %81 = load i64, ptr %60, align 8, !tbaa !29
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %134, label %83

83:                                               ; preds = %74
  %84 = sub nsw i64 0, %81
  %85 = load i64, ptr %61, align 8, !tbaa !28
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
  %104 = tail call double @exp(double noundef %103) #30
  %105 = fmul double %80, %104
  %106 = load ptr, ptr %64, align 8, !tbaa !33
  %107 = getelementptr inbounds double, ptr %106, i64 %97
  store double %105, ptr %107, align 8, !tbaa !34
  %108 = add nsw i64 %98, 1
  %109 = add nsw i64 %97, 1
  %110 = load i64, ptr %61, align 8, !tbaa !28
  %111 = icmp slt i64 %98, %110
  br i1 %111, label %96, label %112, !llvm.loop !51

112:                                              ; preds = %96
  %113 = load i64, ptr %60, align 8, !tbaa !29
  br label %114

114:                                              ; preds = %112, %86
  %115 = phi ptr [ %87, %86 ], [ %106, %112 ]
  %116 = phi i64 [ %88, %86 ], [ %113, %112 ]
  %117 = phi i64 [ %89, %86 ], [ %110, %112 ]
  %118 = phi i64 [ %90, %86 ], [ %109, %112 ]
  %119 = add nsw i64 %91, 1
  %120 = icmp slt i64 %91, %116
  br i1 %120, label %86, label %134, !llvm.loop !52

121:                                              ; preds = %72
  %122 = load i64, ptr %56, align 8, !tbaa !25
  %123 = load i64, ptr %57, align 8, !tbaa !26
  %124 = shl i64 %122, 3
  %125 = mul i64 %124, %123
  %126 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %63, i32 noundef 0, i64 noundef %125) #30
  %127 = load ptr, ptr %64, align 8, !tbaa !33
  %128 = load i64, ptr %61, align 8, !tbaa !28
  %129 = load i64, ptr %60, align 8, !tbaa !29
  %130 = load i64, ptr %56, align 8, !tbaa !25
  %131 = mul i64 %130, %129
  %132 = getelementptr double, ptr %127, i64 %128
  %133 = getelementptr double, ptr %132, i64 %131
  store double 1.000000e+00, ptr %133, align 8, !tbaa !34
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
  %145 = load i64, ptr %60, align 8, !tbaa !29
  %146 = icmp slt i64 %145, 0
  br i1 %146, label %264, label %147

147:                                              ; preds = %138
  %148 = sub nsw i64 0, %145
  %149 = load i64, ptr %61, align 8, !tbaa !28
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
  %168 = tail call double @exp(double noundef %167) #30
  %169 = load ptr, ptr %64, align 8, !tbaa !33
  %170 = getelementptr inbounds double, ptr %169, i64 %161
  %171 = load double, ptr %170, align 8, !tbaa !34
  %172 = fneg double %168
  %173 = tail call double @llvm.fmuladd.f64(double %172, double %144, double %171)
  store double %173, ptr %170, align 8, !tbaa !34
  %174 = add nsw i64 %162, 1
  %175 = add nsw i64 %161, 1
  %176 = load i64, ptr %61, align 8, !tbaa !28
  %177 = icmp slt i64 %162, %176
  br i1 %177, label %160, label %178, !llvm.loop !53

178:                                              ; preds = %160
  %179 = load i64, ptr %60, align 8, !tbaa !29
  br label %180

180:                                              ; preds = %178, %150
  %181 = phi ptr [ %151, %150 ], [ %169, %178 ]
  %182 = phi i64 [ %152, %150 ], [ %179, %178 ]
  %183 = phi i64 [ %153, %150 ], [ %176, %178 ]
  %184 = phi i64 [ %154, %150 ], [ %175, %178 ]
  %185 = add nsw i64 %155, 1
  %186 = icmp slt i64 %155, %182
  br i1 %186, label %150, label %196, !llvm.loop !54

187:                                              ; preds = %136
  %188 = load i64, ptr %61, align 8, !tbaa !28
  %189 = load i64, ptr %60, align 8, !tbaa !29
  %190 = load i64, ptr %56, align 8, !tbaa !25
  %191 = mul i64 %190, %189
  %192 = getelementptr double, ptr %135, i64 %188
  %193 = getelementptr double, ptr %192, i64 %191
  %194 = load double, ptr %193, align 8, !tbaa !34
  %195 = fadd double %194, -1.000000e+00
  store double %195, ptr %193, align 8, !tbaa !34
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
  %211 = load i64, ptr %60, align 8, !tbaa !29
  %212 = icmp slt i64 %211, 0
  br i1 %212, label %264, label %213

213:                                              ; preds = %202
  %214 = sub nsw i64 0, %211
  %215 = load i64, ptr %61, align 8, !tbaa !28
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
  %234 = tail call double @exp(double noundef %233) #30
  %235 = fmul double %232, %234
  %236 = fmul double %210, %235
  %237 = load ptr, ptr %64, align 8, !tbaa !33
  %238 = getelementptr inbounds double, ptr %237, i64 %226
  store double %236, ptr %238, align 8, !tbaa !34
  %239 = add nsw i64 %227, 1
  %240 = add nsw i64 %226, 1
  %241 = load i64, ptr %61, align 8, !tbaa !28
  %242 = icmp slt i64 %227, %241
  br i1 %242, label %225, label %243, !llvm.loop !55

243:                                              ; preds = %225
  %244 = load i64, ptr %60, align 8, !tbaa !29
  br label %245

245:                                              ; preds = %243, %216
  %246 = phi i64 [ %217, %216 ], [ %244, %243 ]
  %247 = phi i64 [ %218, %216 ], [ %241, %243 ]
  %248 = phi i64 [ %219, %216 ], [ %240, %243 ]
  %249 = add nsw i64 %220, 1
  %250 = icmp slt i64 %220, %246
  br i1 %250, label %216, label %264, !llvm.loop !56

251:                                              ; preds = %200
  %252 = load i64, ptr %56, align 8, !tbaa !25
  %253 = load i64, ptr %57, align 8, !tbaa !26
  %254 = shl i64 %252, 3
  %255 = mul i64 %254, %253
  %256 = tail call ptr @ResetMagickMemory(ptr noundef %197, i32 noundef 0, i64 noundef %255) #30
  %257 = load ptr, ptr %64, align 8, !tbaa !33
  %258 = load i64, ptr %61, align 8, !tbaa !28
  %259 = load i64, ptr %60, align 8, !tbaa !29
  %260 = load i64, ptr %56, align 8, !tbaa !25
  %261 = mul i64 %260, %259
  %262 = getelementptr double, ptr %257, i64 %258
  %263 = getelementptr double, ptr %262, i64 %261
  store double 1.000000e+00, ptr %263, align 8, !tbaa !34
  br label %264

264:                                              ; preds = %245, %138, %202, %196, %251, %187
  tail call fastcc void @CalcKernelMetaData(ptr noundef nonnull %19) #29
  tail call void @ScaleKernelInfo(ptr noundef nonnull %19, double noundef 1.000000e+00, i32 noundef 65536) #29
  br label %1584

265:                                              ; preds = %18
  %266 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %267 = load double, ptr %266, align 8, !tbaa !22
  %268 = tail call double @llvm.fabs.f64(double %267)
  %269 = load double, ptr %1, align 8, !tbaa !24
  %270 = fcmp ult double %269, 1.000000e+00
  br i1 %270, label %275, label %271

271:                                              ; preds = %265
  %272 = fptoui double %269 to i64
  %273 = shl i64 %272, 1
  %274 = or disjoint i64 %273, 1
  br label %277

275:                                              ; preds = %265
  %276 = tail call i64 @GetOptimalKernelWidth1D(double noundef %269, double noundef %268) #30
  br label %277

277:                                              ; preds = %275, %271
  %278 = phi i64 [ %276, %275 ], [ %274, %271 ]
  %279 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 1
  store i64 %278, ptr %279, align 8
  %280 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 2
  store i64 1, ptr %280, align 8, !tbaa !26
  %281 = add i64 %278, -1
  %282 = sdiv i64 %281, 2
  %283 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 3
  store i64 %282, ptr %283, align 8, !tbaa !28
  %284 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 4
  store i64 0, ptr %284, align 8, !tbaa !29
  %285 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %285, i8 0, i64 16, i1 false)
  %286 = tail call ptr @AcquireAlignedMemory(i64 noundef %278, i64 noundef 8) #34
  %287 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 5
  store ptr %286, ptr %287, align 8, !tbaa !33
  %288 = icmp eq ptr %286, null
  br i1 %288, label %289, label %291

289:                                              ; preds = %277
  %290 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %19) #29
  br label %1584

291:                                              ; preds = %277
  %292 = load i64, ptr %279, align 8, !tbaa !25
  %293 = mul i64 %292, 3
  %294 = add i64 %293, -1
  %295 = sdiv i64 %294, 2
  %296 = load i64, ptr %280, align 8, !tbaa !26
  %297 = shl i64 %292, 3
  %298 = mul i64 %297, %296
  %299 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %286, i32 noundef 0, i64 noundef %298) #30
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
  %318 = tail call double @exp(double noundef %317) #30
  %319 = load ptr, ptr %287, align 8, !tbaa !33
  %320 = add nsw i64 %313, %295
  %321 = udiv i64 %320, 3
  %322 = getelementptr inbounds double, ptr %319, i64 %321
  %323 = load double, ptr %322, align 8, !tbaa !34
  %324 = tail call double @llvm.fmuladd.f64(double %318, double %307, double %323)
  store double %324, ptr %322, align 8, !tbaa !34
  %325 = add i64 %313, 1
  %326 = icmp eq i64 %313, %311
  br i1 %326, label %335, label %312, !llvm.loop !57

327:                                              ; preds = %291
  %328 = load ptr, ptr %287, align 8, !tbaa !33
  %329 = load i64, ptr %283, align 8, !tbaa !28
  %330 = load i64, ptr %284, align 8, !tbaa !29
  %331 = load i64, ptr %279, align 8, !tbaa !25
  %332 = mul i64 %331, %330
  %333 = getelementptr double, ptr %328, i64 %329
  %334 = getelementptr double, ptr %333, i64 %332
  store double 1.000000e+00, ptr %334, align 8, !tbaa !34
  br label %335

335:                                              ; preds = %312, %301, %327
  tail call fastcc void @CalcKernelMetaData(ptr noundef nonnull %19) #29
  tail call void @ScaleKernelInfo(ptr noundef nonnull %19, double noundef 1.000000e+00, i32 noundef 65536) #29
  %336 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 2
  %337 = load double, ptr %336, align 8, !tbaa !27
  tail call fastcc void @RotateKernelInfo(ptr noundef nonnull %19, double noundef %337) #29
  br label %1584

338:                                              ; preds = %18
  %339 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %340 = load double, ptr %339, align 8, !tbaa !22
  %341 = tail call double @llvm.fabs.f64(double %340)
  %342 = load double, ptr %1, align 8, !tbaa !24
  %343 = fcmp olt double %342, 1.000000e+00
  br i1 %343, label %344, label %349

344:                                              ; preds = %338
  %345 = tail call i64 @GetOptimalKernelWidth1D(double noundef %342, double noundef %341) #30
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
  store i64 1, ptr %356, align 8, !tbaa !26
  %357 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 9
  %358 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %358, i8 0, i64 16, i1 false)
  %359 = tail call ptr @AcquireAlignedMemory(i64 noundef %352, i64 noundef 8) #34
  %360 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 5
  store ptr %359, ptr %360, align 8, !tbaa !33
  %361 = icmp eq ptr %359, null
  br i1 %361, label %362, label %364

362:                                              ; preds = %351
  %363 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %19) #29
  br label %1584

364:                                              ; preds = %351
  %365 = fcmp ogt double %341, 1.000000e-15
  %366 = load i64, ptr %353, align 8, !tbaa !25
  br i1 %365, label %367, label %408

367:                                              ; preds = %364
  %368 = shl i64 %366, 3
  %369 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %359, i32 noundef 0, i64 noundef %368) #30
  %370 = fmul double %341, 3.000000e+00
  %371 = fmul double %370, 2.000000e+00
  %372 = fmul double %370, %371
  %373 = fdiv double 1.000000e+00, %372
  %374 = icmp sgt i64 %366, 0
  br i1 %374, label %377, label %375

375:                                              ; preds = %367
  %376 = load ptr, ptr %360, align 8, !tbaa !33
  br label %380

377:                                              ; preds = %367
  %378 = mul i64 %366, 3
  %379 = tail call i64 @llvm.smax.i64(i64 %378, i64 1)
  br label %386

380:                                              ; preds = %386, %375
  %381 = phi ptr [ %376, %375 ], [ %393, %386 ]
  %382 = load i64, ptr %353, align 8, !tbaa !25
  %383 = icmp sgt i64 %382, 0
  br i1 %383, label %384, label %420

384:                                              ; preds = %380
  %385 = load double, ptr %357, align 8, !tbaa !58
  br label %400

386:                                              ; preds = %377, %386
  %387 = phi i64 [ %398, %386 ], [ 0, %377 ]
  %388 = mul nsw i64 %387, %387
  %389 = sitofp i64 %388 to double
  %390 = fneg double %389
  %391 = fmul double %373, %390
  %392 = tail call double @exp(double noundef %391) #30
  %393 = load ptr, ptr %360, align 8, !tbaa !33
  %394 = udiv i64 %387, 3
  %395 = getelementptr inbounds double, ptr %393, i64 %394
  %396 = load double, ptr %395, align 8, !tbaa !34
  %397 = fadd double %392, %396
  store double %397, ptr %395, align 8, !tbaa !34
  %398 = add nuw nsw i64 %387, 1
  %399 = icmp eq i64 %398, %379
  br i1 %399, label %380, label %386, !llvm.loop !59

400:                                              ; preds = %384, %400
  %401 = phi double [ %385, %384 ], [ %405, %400 ]
  %402 = phi i64 [ 0, %384 ], [ %406, %400 ]
  %403 = getelementptr inbounds double, ptr %381, i64 %402
  %404 = load double, ptr %403, align 8, !tbaa !34
  %405 = fadd double %404, %401
  store double %405, ptr %357, align 8, !tbaa !58
  %406 = add nuw nsw i64 %402, 1
  %407 = icmp eq i64 %406, %382
  br i1 %407, label %420, label %400, !llvm.loop !60

408:                                              ; preds = %364
  %409 = load i64, ptr %356, align 8, !tbaa !26
  %410 = shl i64 %366, 3
  %411 = mul i64 %410, %409
  %412 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %359, i32 noundef 0, i64 noundef %411) #30
  %413 = load ptr, ptr %360, align 8, !tbaa !33
  %414 = load i64, ptr %355, align 8, !tbaa !28
  %415 = load i64, ptr %354, align 8, !tbaa !29
  %416 = load i64, ptr %353, align 8, !tbaa !25
  %417 = mul i64 %416, %415
  %418 = getelementptr double, ptr %413, i64 %414
  %419 = getelementptr double, ptr %418, i64 %417
  store double 1.000000e+00, ptr %419, align 8, !tbaa !34
  store double 1.000000e+00, ptr %357, align 8, !tbaa !58
  br label %420

420:                                              ; preds = %400, %380, %408
  %421 = phi ptr [ %381, %380 ], [ %413, %408 ], [ %381, %400 ]
  %422 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 6
  store double 0.000000e+00, ptr %422, align 8, !tbaa !35
  %423 = load double, ptr %421, align 8, !tbaa !34
  %424 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 7
  store double %423, ptr %424, align 8, !tbaa !36
  store double 0.000000e+00, ptr %358, align 8, !tbaa !61
  tail call void @ScaleKernelInfo(ptr noundef nonnull %19, double noundef 1.000000e+00, i32 noundef 8192) #29
  %425 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 2
  %426 = load double, ptr %425, align 8, !tbaa !27
  tail call fastcc void @RotateKernelInfo(ptr noundef nonnull %19, double noundef %426) #29
  br label %1584

427:                                              ; preds = %18
  %428 = load double, ptr %1, align 8, !tbaa !24
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
  store i64 %437, ptr %438, align 8, !tbaa !29
  %439 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 3
  store i64 %437, ptr %439, align 8, !tbaa !28
  %440 = tail call fastcc i64 @fact(i64 noundef %436) #29
  %441 = shl i64 %433, 3
  %442 = tail call ptr @AcquireAlignedMemory(i64 noundef %433, i64 noundef %441) #34
  %443 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 5
  store ptr %442, ptr %443, align 8, !tbaa !33
  %444 = icmp eq ptr %442, null
  br i1 %444, label %452, label %445

445:                                              ; preds = %427
  %446 = load i64, ptr %434, align 8, !tbaa !26
  %447 = icmp sgt i64 %446, 0
  br i1 %447, label %450, label %448

448:                                              ; preds = %445
  %449 = load i64, ptr %435, align 8, !tbaa !25
  br label %487

450:                                              ; preds = %445
  %451 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 9
  br label %454

452:                                              ; preds = %427
  %453 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %19) #29
  br label %1584

454:                                              ; preds = %450, %483
  %455 = phi i64 [ 0, %450 ], [ %484, %483 ]
  %456 = phi i64 [ 0, %450 ], [ %485, %483 ]
  %457 = tail call fastcc i64 @fact(i64 noundef %456) #29
  %458 = xor i64 %456, -1
  %459 = add nsw i64 %446, %458
  %460 = tail call fastcc i64 @fact(i64 noundef %459) #29
  %461 = load i64, ptr %435, align 8, !tbaa !25
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
  %470 = tail call fastcc i64 @fact(i64 noundef %469) #29
  %471 = xor i64 %469, -1
  %472 = add nsw i64 %446, %471
  %473 = tail call fastcc i64 @fact(i64 noundef %472) #29
  %474 = mul i64 %473, %470
  %475 = udiv i64 %466, %474
  %476 = uitofp i64 %475 to double
  %477 = getelementptr inbounds double, ptr %442, i64 %468
  store double %476, ptr %477, align 8, !tbaa !34
  %478 = load double, ptr %451, align 8, !tbaa !58
  %479 = fadd double %478, %476
  store double %479, ptr %451, align 8, !tbaa !58
  %480 = add nuw nsw i64 %469, 1
  %481 = add nsw i64 %468, 1
  %482 = icmp eq i64 %480, %461
  br i1 %482, label %483, label %467, !llvm.loop !62

483:                                              ; preds = %467, %454
  %484 = phi i64 [ %455, %454 ], [ %481, %467 ]
  %485 = add nuw nsw i64 %456, 1
  %486 = icmp eq i64 %485, %446
  br i1 %486, label %487, label %454, !llvm.loop !63

487:                                              ; preds = %483, %448
  %488 = phi i64 [ %449, %448 ], [ %461, %483 ]
  %489 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 6
  store double 1.000000e+00, ptr %489, align 8, !tbaa !35
  %490 = load i64, ptr %439, align 8, !tbaa !28
  %491 = load i64, ptr %438, align 8, !tbaa !29
  %492 = mul i64 %488, %491
  %493 = getelementptr double, ptr %442, i64 %490
  %494 = getelementptr double, ptr %493, i64 %492
  %495 = load double, ptr %494, align 8, !tbaa !34
  %496 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 7
  store double %495, ptr %496, align 8, !tbaa !36
  %497 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 8
  store double 0.000000e+00, ptr %497, align 8, !tbaa !61
  br label %1584

498:                                              ; preds = %18
  %499 = load double, ptr %1, align 8, !tbaa !24
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
  %509 = phi ptr [ @.str.11, %507 ], [ @.str.10, %506 ], [ @.str.9, %505 ], [ @.str.8, %504 ], [ @.str.7, %503 ], [ @.str.6, %502 ], [ @.str.5, %501 ], [ @.str.4, %498 ]
  %510 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull %509) #29
  %511 = icmp eq ptr %510, null
  br i1 %511, label %1584, label %512

512:                                              ; preds = %508
  store i32 7, ptr %510, align 8, !tbaa !20
  br label %1584

513:                                              ; preds = %18
  %514 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.12) #29
  %515 = icmp eq ptr %514, null
  br i1 %515, label %1584, label %516

516:                                              ; preds = %513
  store i32 8, ptr %514, align 8, !tbaa !20
  %517 = load double, ptr %1, align 8, !tbaa !24
  tail call fastcc void @RotateKernelInfo(ptr noundef nonnull %514, double noundef %517) #29
  br label %1584

518:                                              ; preds = %18
  %519 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.13) #29
  %520 = icmp eq ptr %519, null
  br i1 %520, label %1584, label %521

521:                                              ; preds = %518
  store i32 10, ptr %519, align 8, !tbaa !20
  %522 = load double, ptr %1, align 8, !tbaa !24
  tail call fastcc void @RotateKernelInfo(ptr noundef nonnull %519, double noundef %522) #29
  br label %1584

523:                                              ; preds = %18
  %524 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.14) #29
  %525 = icmp eq ptr %524, null
  br i1 %525, label %1584, label %526

526:                                              ; preds = %523
  store i32 11, ptr %524, align 8, !tbaa !20
  %527 = load double, ptr %1, align 8, !tbaa !24
  tail call fastcc void @RotateKernelInfo(ptr noundef nonnull %524, double noundef %527) #29
  br label %1584

528:                                              ; preds = %18
  %529 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.15) #29
  %530 = icmp eq ptr %529, null
  br i1 %530, label %1584, label %531

531:                                              ; preds = %528
  store i32 12, ptr %529, align 8, !tbaa !20
  %532 = load double, ptr %1, align 8, !tbaa !24
  tail call fastcc void @RotateKernelInfo(ptr noundef nonnull %529, double noundef %532) #29
  br label %1584

533:                                              ; preds = %18
  %534 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.16) #29
  %535 = icmp eq ptr %534, null
  br i1 %535, label %1584, label %536

536:                                              ; preds = %533
  store i32 13, ptr %534, align 8, !tbaa !20
  %537 = load double, ptr %1, align 8, !tbaa !24
  tail call fastcc void @RotateKernelInfo(ptr noundef nonnull %534, double noundef %537) #29
  br label %1584

538:                                              ; preds = %18
  %539 = load double, ptr %1, align 8, !tbaa !24
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
  %542 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.12) #29
  %543 = icmp eq ptr %542, null
  br i1 %543, label %1584, label %544

544:                                              ; preds = %541
  store i32 9, ptr %542, align 8, !tbaa !20
  %545 = getelementptr inbounds %struct.KernelInfo, ptr %542, i64 0, i32 5
  %546 = load ptr, ptr %545, align 8, !tbaa !33
  %547 = getelementptr inbounds double, ptr %546, i64 3
  store double 0x3FF6A09E667F3BCD, ptr %547, align 8, !tbaa !34
  %548 = getelementptr inbounds double, ptr %546, i64 5
  store double 0xBFF6A09E667F3BCD, ptr %548, align 8, !tbaa !34
  tail call fastcc void @CalcKernelMetaData(ptr noundef nonnull %542) #29
  br label %613

549:                                              ; preds = %538
  %550 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.17) #29
  %551 = icmp eq ptr %550, null
  br i1 %551, label %1584, label %552

552:                                              ; preds = %549
  store i32 9, ptr %550, align 8, !tbaa !20
  %553 = getelementptr inbounds %struct.KernelInfo, ptr %550, i64 0, i32 5
  %554 = load ptr, ptr %553, align 8, !tbaa !33
  %555 = getelementptr inbounds double, ptr %554, i64 3
  store double 0x3FF6A09E667F3BCD, ptr %555, align 8, !tbaa !34
  %556 = getelementptr inbounds double, ptr %554, i64 1
  store double 0x3FF6A09E667F3BCD, ptr %556, align 8, !tbaa !34
  %557 = getelementptr inbounds double, ptr %554, i64 7
  store double 0xBFF6A09E667F3BCD, ptr %557, align 8, !tbaa !34
  %558 = getelementptr inbounds double, ptr %554, i64 5
  store double 0xBFF6A09E667F3BCD, ptr %558, align 8, !tbaa !34
  tail call fastcc void @CalcKernelMetaData(ptr noundef nonnull %550) #29
  tail call void @ScaleKernelInfo(ptr noundef nonnull %550, double noundef 0x3FE6A09E667F3BCD, i32 noundef 0) #29
  br label %613

559:                                              ; preds = %538
  %560 = tail call ptr @AcquireKernelInfo(ptr noundef nonnull @.str.18) #29
  %561 = icmp eq ptr %560, null
  br i1 %561, label %1584, label %613

562:                                              ; preds = %538, %538
  %563 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.12) #29
  %564 = icmp eq ptr %563, null
  br i1 %564, label %1584, label %565

565:                                              ; preds = %562
  store i32 9, ptr %563, align 8, !tbaa !20
  %566 = getelementptr inbounds %struct.KernelInfo, ptr %563, i64 0, i32 5
  %567 = load ptr, ptr %566, align 8, !tbaa !33
  %568 = getelementptr inbounds double, ptr %567, i64 3
  store double 0x3FF6A09E667F3BCD, ptr %568, align 8, !tbaa !34
  %569 = getelementptr inbounds double, ptr %567, i64 5
  store double 0xBFF6A09E667F3BCD, ptr %569, align 8, !tbaa !34
  tail call fastcc void @CalcKernelMetaData(ptr noundef nonnull %563) #29
  tail call void @ScaleKernelInfo(ptr noundef nonnull %563, double noundef 0x3FE6A09E667F3BCD, i32 noundef 0) #29
  br label %613

570:                                              ; preds = %538
  %571 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.19) #29
  %572 = icmp eq ptr %571, null
  br i1 %572, label %1584, label %573

573:                                              ; preds = %570
  store i32 9, ptr %571, align 8, !tbaa !20
  %574 = getelementptr inbounds %struct.KernelInfo, ptr %571, i64 0, i32 5
  %575 = load ptr, ptr %574, align 8, !tbaa !33
  %576 = getelementptr inbounds double, ptr %575, i64 1
  store double 0x3FF6A09E667F3BCD, ptr %576, align 8, !tbaa !34
  %577 = getelementptr inbounds double, ptr %575, i64 7
  store double 0x3FF6A09E667F3BCD, ptr %577, align 8, !tbaa !34
  tail call fastcc void @CalcKernelMetaData(ptr noundef nonnull %571) #29
  tail call void @ScaleKernelInfo(ptr noundef nonnull %571, double noundef 0x3FE6A09E667F3BCD, i32 noundef 0) #29
  br label %613

578:                                              ; preds = %538
  %579 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.20) #29
  %580 = icmp eq ptr %579, null
  br i1 %580, label %1584, label %581

581:                                              ; preds = %578
  store i32 9, ptr %579, align 8, !tbaa !20
  %582 = getelementptr inbounds %struct.KernelInfo, ptr %579, i64 0, i32 5
  %583 = load ptr, ptr %582, align 8, !tbaa !33
  store double 0x3FF6A09E667F3BCD, ptr %583, align 8, !tbaa !34
  %584 = getelementptr inbounds double, ptr %583, i64 8
  store double 0xBFF6A09E667F3BCD, ptr %584, align 8, !tbaa !34
  tail call fastcc void @CalcKernelMetaData(ptr noundef nonnull %579) #29
  tail call void @ScaleKernelInfo(ptr noundef nonnull %579, double noundef 0x3FE6A09E667F3BCD, i32 noundef 0) #29
  br label %613

585:                                              ; preds = %538
  %586 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.21) #29
  %587 = icmp eq ptr %586, null
  br i1 %587, label %1584, label %588

588:                                              ; preds = %585
  store i32 9, ptr %586, align 8, !tbaa !20
  %589 = getelementptr inbounds %struct.KernelInfo, ptr %586, i64 0, i32 5
  %590 = load ptr, ptr %589, align 8, !tbaa !33
  %591 = getelementptr inbounds double, ptr %590, i64 2
  store double 0xBFF6A09E667F3BCD, ptr %591, align 8, !tbaa !34
  %592 = getelementptr inbounds double, ptr %590, i64 6
  store double 0x3FF6A09E667F3BCD, ptr %592, align 8, !tbaa !34
  tail call fastcc void @CalcKernelMetaData(ptr noundef nonnull %586) #29
  tail call void @ScaleKernelInfo(ptr noundef nonnull %586, double noundef 0x3FE6A09E667F3BCD, i32 noundef 0) #29
  br label %613

593:                                              ; preds = %538
  %594 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.22) #29
  %595 = icmp eq ptr %594, null
  br i1 %595, label %1584, label %596

596:                                              ; preds = %593
  store i32 9, ptr %594, align 8, !tbaa !20
  tail call void @ScaleKernelInfo(ptr noundef nonnull %594, double noundef 5.000000e-01, i32 noundef 0) #29
  br label %613

597:                                              ; preds = %538
  %598 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.23) #29
  %599 = icmp eq ptr %598, null
  br i1 %599, label %1584, label %600

600:                                              ; preds = %597
  store i32 9, ptr %598, align 8, !tbaa !20
  tail call void @ScaleKernelInfo(ptr noundef nonnull %598, double noundef 5.000000e-01, i32 noundef 0) #29
  br label %613

601:                                              ; preds = %538
  %602 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.24) #29
  %603 = icmp eq ptr %602, null
  br i1 %603, label %1584, label %604

604:                                              ; preds = %601
  store i32 9, ptr %602, align 8, !tbaa !20
  tail call void @ScaleKernelInfo(ptr noundef nonnull %602, double noundef 0x3FC5555555555555, i32 noundef 0) #29
  br label %613

605:                                              ; preds = %538
  %606 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.6) #29
  %607 = icmp eq ptr %606, null
  br i1 %607, label %1584, label %608

608:                                              ; preds = %605
  store i32 9, ptr %606, align 8, !tbaa !20
  tail call void @ScaleKernelInfo(ptr noundef nonnull %606, double noundef 0x3FC5555555555555, i32 noundef 0) #29
  br label %613

609:                                              ; preds = %538
  %610 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.25) #29
  %611 = icmp eq ptr %610, null
  br i1 %611, label %1584, label %612

612:                                              ; preds = %609
  store i32 9, ptr %610, align 8, !tbaa !20
  tail call void @ScaleKernelInfo(ptr noundef nonnull %610, double noundef 0x3FD5555555555555, i32 noundef 0) #29
  br label %613

613:                                              ; preds = %559, %612, %608, %604, %600, %596, %588, %581, %573, %565, %552, %544
  %614 = phi ptr [ %542, %544 ], [ %606, %608 ], [ %602, %604 ], [ %598, %600 ], [ %594, %596 ], [ %586, %588 ], [ %579, %581 ], [ %571, %573 ], [ %563, %565 ], [ %560, %559 ], [ %550, %552 ], [ %610, %612 ]
  %615 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %616 = load double, ptr %615, align 8, !tbaa !22
  %617 = tail call double @llvm.fabs.f64(double %616)
  %618 = fcmp ult double %617, 1.000000e-15
  br i1 %618, label %620, label %619

619:                                              ; preds = %613
  tail call fastcc void @RotateKernelInfo(ptr noundef nonnull %614, double noundef %616) #29
  br label %1584

620:                                              ; preds = %613
  %621 = load double, ptr %1, align 8, !tbaa !24
  %622 = fcmp ogt double %621, 3.000000e+01
  %623 = fcmp olt double %621, -3.000000e+01
  %624 = or i1 %622, %623
  br i1 %624, label %625, label %1584

625:                                              ; preds = %620
  tail call fastcc void @RotateKernelInfo(ptr noundef nonnull %614, double noundef %621) #29
  br label %1584

626:                                              ; preds = %18
  %627 = load double, ptr %1, align 8, !tbaa !24
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
  store i64 %636, ptr %637, align 8, !tbaa !29
  %638 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 3
  store i64 %636, ptr %638, align 8, !tbaa !28
  %639 = shl i64 %632, 3
  %640 = tail call ptr @AcquireAlignedMemory(i64 noundef %632, i64 noundef %639) #34
  %641 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 5
  store ptr %640, ptr %641, align 8, !tbaa !33
  %642 = icmp eq ptr %640, null
  br i1 %642, label %643, label %645

643:                                              ; preds = %626
  %644 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %19) #29
  br label %1584

645:                                              ; preds = %626
  %646 = load i64, ptr %637, align 8, !tbaa !29
  %647 = icmp slt i64 %646, 0
  br i1 %647, label %684, label %648

648:                                              ; preds = %645
  %649 = sub nsw i64 0, %646
  %650 = load i64, ptr %638, align 8, !tbaa !28
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
  %670 = load double, ptr %653, align 8, !tbaa !22
  %671 = getelementptr inbounds double, ptr %640, i64 %664
  store double %670, ptr %671, align 8, !tbaa !34
  %672 = load double, ptr %654, align 8, !tbaa !58
  %673 = fadd double %670, %672
  store double %673, ptr %654, align 8, !tbaa !58
  br label %676

674:                                              ; preds = %663
  %675 = getelementptr inbounds double, ptr %640, i64 %664
  store double %3, ptr %675, align 8, !tbaa !34
  br label %676

676:                                              ; preds = %669, %674
  %677 = add nsw i64 %665, 1
  %678 = add i64 %664, 1
  %679 = icmp eq i64 %678, %662
  br i1 %679, label %680, label %663, !llvm.loop !64

680:                                              ; preds = %676, %657
  %681 = phi i64 [ %658, %657 ], [ %662, %676 ]
  %682 = add i64 %659, 1
  %683 = icmp eq i64 %659, %646
  br i1 %683, label %684, label %657, !llvm.loop !65

684:                                              ; preds = %680, %645
  %685 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %686 = load double, ptr %685, align 8, !tbaa !22
  %687 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 7
  store double %686, ptr %687, align 8, !tbaa !36
  %688 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 6
  store double %686, ptr %688, align 8, !tbaa !35
  br label %1584

689:                                              ; preds = %18, %18
  %690 = icmp eq i32 %0, 15
  %691 = load double, ptr %1, align 8, !tbaa !24
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
  store i64 %700, ptr %701, align 8, !tbaa !29
  %702 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 3
  store i64 %700, ptr %702, align 8, !tbaa !28
  %703 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %704 = load double, ptr %703, align 8, !tbaa !22
  br label %737

705:                                              ; preds = %689
  br i1 %692, label %710, label %706

706:                                              ; preds = %705
  %707 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %708 = load double, ptr %707, align 8, !tbaa !22
  %709 = fcmp olt double %708, 1.000000e+00
  br i1 %709, label %710, label %712

710:                                              ; preds = %706, %705
  %711 = tail call ptr @DestroyKernelInfo(ptr noundef %19) #29
  br label %1584

712:                                              ; preds = %706
  %713 = fptoui double %691 to i64
  %714 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 1
  store i64 %713, ptr %714, align 8, !tbaa !25
  %715 = fptoui double %708 to i64
  %716 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 2
  store i64 %715, ptr %716, align 8, !tbaa !26
  %717 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 2
  %718 = load double, ptr %717, align 8, !tbaa !27
  %719 = fcmp olt double %718, 0.000000e+00
  %720 = uitofp i64 %713 to double
  %721 = fcmp ogt double %718, %720
  %722 = select i1 %719, i1 true, i1 %721
  br i1 %722, label %730, label %723

723:                                              ; preds = %712
  %724 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 3
  %725 = load double, ptr %724, align 8, !tbaa !39
  %726 = fcmp olt double %725, 0.000000e+00
  %727 = uitofp i64 %715 to double
  %728 = fcmp ogt double %725, %727
  %729 = select i1 %726, i1 true, i1 %728
  br i1 %729, label %730, label %732

730:                                              ; preds = %723, %712
  %731 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %19) #29
  br label %1584

732:                                              ; preds = %723
  %733 = fptosi double %718 to i64
  %734 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 3
  store i64 %733, ptr %734, align 8, !tbaa !28
  %735 = fptosi double %725 to i64
  %736 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 4
  store i64 %735, ptr %736, align 8, !tbaa !29
  br label %737

737:                                              ; preds = %732, %693
  %738 = phi i64 [ %696, %693 ], [ %715, %732 ]
  %739 = phi i64 [ %696, %693 ], [ %713, %732 ]
  %740 = phi double [ %704, %693 ], [ 1.000000e+00, %732 ]
  %741 = shl i64 %738, 3
  %742 = tail call ptr @AcquireAlignedMemory(i64 noundef %739, i64 noundef %741) #34
  %743 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 5
  store ptr %742, ptr %743, align 8, !tbaa !33
  %744 = icmp eq ptr %742, null
  br i1 %744, label %745, label %747

745:                                              ; preds = %737
  %746 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %19) #29
  br label %1584

747:                                              ; preds = %737
  %748 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 2
  %749 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 1
  %750 = load i64, ptr %749, align 8, !tbaa !25
  %751 = load i64, ptr %748, align 8, !tbaa !26
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
  store double %740, ptr %766, align 8, !tbaa !34
  br label %767

767:                                              ; preds = %765, %760
  %768 = extractelement <2 x i1> %763, i64 1
  br i1 %768, label %769, label %772

769:                                              ; preds = %767
  %770 = or disjoint i64 %761, 1
  %771 = getelementptr inbounds double, ptr %742, i64 %770
  store double %740, ptr %771, align 8, !tbaa !34
  br label %772

772:                                              ; preds = %769, %767
  %773 = add i64 %761, 2
  %774 = add <2 x i64> %762, <i64 2, i64 2>
  %775 = icmp eq i64 %773, %756
  br i1 %775, label %776, label %760, !llvm.loop !66

776:                                              ; preds = %772, %747
  %777 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 7
  store double %740, ptr %777, align 8, !tbaa !36
  %778 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 6
  store double %740, ptr %778, align 8, !tbaa !35
  %779 = sitofp i64 %752 to double
  %780 = fmul double %740, %779
  %781 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 9
  store double %780, ptr %781, align 8, !tbaa !58
  br label %1584

782:                                              ; preds = %18
  %783 = load double, ptr %1, align 8, !tbaa !24
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
  store i64 %792, ptr %793, align 8, !tbaa !29
  %794 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 3
  store i64 %792, ptr %794, align 8, !tbaa !28
  %795 = shl i64 %788, 3
  %796 = tail call ptr @AcquireAlignedMemory(i64 noundef %788, i64 noundef %795) #34
  %797 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 5
  store ptr %796, ptr %797, align 8, !tbaa !33
  %798 = icmp eq ptr %796, null
  br i1 %798, label %799, label %801

799:                                              ; preds = %782
  %800 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %19) #29
  br label %1584

801:                                              ; preds = %782
  %802 = load i64, ptr %793, align 8, !tbaa !29
  %803 = icmp slt i64 %802, 0
  br i1 %803, label %842, label %804

804:                                              ; preds = %801
  %805 = sub nsw i64 0, %802
  %806 = load i64, ptr %794, align 8, !tbaa !28
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
  %828 = load double, ptr %811, align 8, !tbaa !22
  %829 = getelementptr inbounds double, ptr %796, i64 %822
  store double %828, ptr %829, align 8, !tbaa !34
  %830 = load double, ptr %812, align 8, !tbaa !58
  %831 = fadd double %828, %830
  store double %831, ptr %812, align 8, !tbaa !58
  br label %834

832:                                              ; preds = %821
  %833 = getelementptr inbounds double, ptr %796, i64 %822
  store double %3, ptr %833, align 8, !tbaa !34
  br label %834

834:                                              ; preds = %827, %832
  %835 = add nsw i64 %823, 1
  %836 = add i64 %822, 1
  %837 = icmp eq i64 %836, %820
  br i1 %837, label %838, label %821, !llvm.loop !69

838:                                              ; preds = %834, %815
  %839 = phi i64 [ %816, %815 ], [ %820, %834 ]
  %840 = add i64 %817, 1
  %841 = icmp eq i64 %817, %802
  br i1 %841, label %842, label %815, !llvm.loop !70

842:                                              ; preds = %838, %801
  %843 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %844 = load double, ptr %843, align 8, !tbaa !22
  %845 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 7
  store double %844, ptr %845, align 8, !tbaa !36
  %846 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 6
  store double %844, ptr %846, align 8, !tbaa !35
  br label %1584

847:                                              ; preds = %18
  %848 = load double, ptr %1, align 8, !tbaa !24
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
  store i64 %863, ptr %864, align 8, !tbaa !29
  %865 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 3
  store i64 %863, ptr %865, align 8, !tbaa !28
  %866 = shl i64 %858, 3
  %867 = tail call ptr @AcquireAlignedMemory(i64 noundef %858, i64 noundef %866) #34
  %868 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 5
  store ptr %867, ptr %868, align 8, !tbaa !33
  %869 = icmp eq ptr %867, null
  br i1 %869, label %870, label %872

870:                                              ; preds = %857
  %871 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %19) #29
  br label %1584

872:                                              ; preds = %857
  %873 = load i64, ptr %864, align 8, !tbaa !29
  %874 = icmp slt i64 %873, 0
  br i1 %874, label %911, label %875

875:                                              ; preds = %872
  %876 = sub nsw i64 0, %873
  %877 = load i64, ptr %865, align 8, !tbaa !28
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
  %897 = load double, ptr %880, align 8, !tbaa !22
  %898 = getelementptr inbounds double, ptr %867, i64 %891
  store double %897, ptr %898, align 8, !tbaa !34
  %899 = load double, ptr %881, align 8, !tbaa !58
  %900 = fadd double %897, %899
  store double %900, ptr %881, align 8, !tbaa !58
  br label %903

901:                                              ; preds = %890
  %902 = getelementptr inbounds double, ptr %867, i64 %891
  store double %3, ptr %902, align 8, !tbaa !34
  br label %903

903:                                              ; preds = %896, %901
  %904 = add nsw i64 %892, 1
  %905 = add i64 %891, 1
  %906 = icmp eq i64 %905, %889
  br i1 %906, label %907, label %890, !llvm.loop !71

907:                                              ; preds = %903, %884
  %908 = phi i64 [ %885, %884 ], [ %889, %903 ]
  %909 = add i64 %886, 1
  %910 = icmp eq i64 %886, %873
  br i1 %910, label %911, label %884, !llvm.loop !72

911:                                              ; preds = %907, %872
  %912 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %913 = load double, ptr %912, align 8, !tbaa !22
  %914 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 7
  store double %913, ptr %914, align 8, !tbaa !36
  %915 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 6
  store double %913, ptr %915, align 8, !tbaa !35
  br label %1584

916:                                              ; preds = %18
  %917 = load double, ptr %1, align 8, !tbaa !24
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
  store i64 %926, ptr %927, align 8, !tbaa !29
  %928 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 3
  store i64 %926, ptr %928, align 8, !tbaa !28
  %929 = shl i64 %922, 3
  %930 = tail call ptr @AcquireAlignedMemory(i64 noundef %922, i64 noundef %929) #34
  %931 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 5
  store ptr %930, ptr %931, align 8, !tbaa !33
  %932 = icmp eq ptr %930, null
  br i1 %932, label %933, label %935

933:                                              ; preds = %916
  %934 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %19) #29
  br label %1584

935:                                              ; preds = %916
  %936 = load i64, ptr %927, align 8, !tbaa !29
  %937 = icmp slt i64 %936, 0
  br i1 %937, label %969, label %938

938:                                              ; preds = %935
  %939 = sub nsw i64 0, %936
  %940 = load i64, ptr %928, align 8, !tbaa !28
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
  %958 = load double, ptr %943, align 8, !tbaa !22
  br label %959

959:                                              ; preds = %952, %957
  %960 = phi double [ %958, %957 ], [ %3, %952 ]
  %961 = getelementptr inbounds double, ptr %930, i64 %953
  store double %960, ptr %961, align 8, !tbaa !34
  %962 = add nsw i64 %954, 1
  %963 = add i64 %953, 1
  %964 = icmp eq i64 %963, %951
  br i1 %964, label %965, label %952, !llvm.loop !73

965:                                              ; preds = %959, %946
  %966 = phi i64 [ %947, %946 ], [ %951, %959 ]
  %967 = add i64 %948, 1
  %968 = icmp eq i64 %948, %936
  br i1 %968, label %969, label %946, !llvm.loop !74

969:                                              ; preds = %965, %935
  %970 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %971 = load double, ptr %970, align 8, !tbaa !22
  %972 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 7
  store double %971, ptr %972, align 8, !tbaa !36
  %973 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 6
  store double %971, ptr %973, align 8, !tbaa !35
  %974 = load i64, ptr %924, align 8, !tbaa !25
  %975 = uitofp i64 %974 to double
  %976 = tail call double @llvm.fmuladd.f64(double %975, double 2.000000e+00, double -1.000000e+00)
  %977 = fmul double %971, %976
  %978 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 9
  store double %977, ptr %978, align 8, !tbaa !58
  br label %1584

979:                                              ; preds = %18
  %980 = load double, ptr %1, align 8, !tbaa !24
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
  store i64 %989, ptr %990, align 8, !tbaa !29
  %991 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 3
  store i64 %989, ptr %991, align 8, !tbaa !28
  %992 = shl i64 %985, 3
  %993 = tail call ptr @AcquireAlignedMemory(i64 noundef %985, i64 noundef %992) #34
  %994 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 5
  store ptr %993, ptr %994, align 8, !tbaa !33
  %995 = icmp eq ptr %993, null
  br i1 %995, label %996, label %998

996:                                              ; preds = %979
  %997 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %19) #29
  br label %1584

998:                                              ; preds = %979
  %999 = load i64, ptr %990, align 8, !tbaa !29
  %1000 = icmp slt i64 %999, 0
  br i1 %1000, label %1033, label %1001

1001:                                             ; preds = %998
  %1002 = sub nsw i64 0, %999
  %1003 = load i64, ptr %991, align 8, !tbaa !28
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
  %1022 = load double, ptr %1006, align 8, !tbaa !22
  br label %1023

1023:                                             ; preds = %1015, %1021
  %1024 = phi double [ %1022, %1021 ], [ %3, %1015 ]
  %1025 = getelementptr inbounds double, ptr %993, i64 %1016
  store double %1024, ptr %1025, align 8, !tbaa !34
  %1026 = add nsw i64 %1017, 1
  %1027 = add i64 %1016, 1
  %1028 = icmp eq i64 %1027, %1014
  br i1 %1028, label %1029, label %1015, !llvm.loop !75

1029:                                             ; preds = %1023, %1009
  %1030 = phi i64 [ %1010, %1009 ], [ %1014, %1023 ]
  %1031 = add i64 %1011, 1
  %1032 = icmp eq i64 %1011, %999
  br i1 %1032, label %1033, label %1009, !llvm.loop !76

1033:                                             ; preds = %1029, %998
  %1034 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %1035 = load double, ptr %1034, align 8, !tbaa !22
  %1036 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 7
  store double %1035, ptr %1036, align 8, !tbaa !36
  %1037 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 6
  store double %1035, ptr %1037, align 8, !tbaa !35
  %1038 = load i64, ptr %987, align 8, !tbaa !25
  %1039 = uitofp i64 %1038 to double
  %1040 = tail call double @llvm.fmuladd.f64(double %1039, double 2.000000e+00, double -1.000000e+00)
  %1041 = fmul double %1035, %1040
  %1042 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 9
  store double %1041, ptr %1042, align 8, !tbaa !58
  br label %1584

1043:                                             ; preds = %18, %18
  %1044 = load double, ptr %1, align 8, !tbaa !24
  %1045 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %1046 = load double, ptr %1045, align 8, !tbaa !22
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
  store i64 %1062, ptr %1065, align 8, !tbaa !26
  %1066 = add nsw i64 %1062, -1
  %1067 = ashr exact i64 %1066, 1
  %1068 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 4
  store i64 %1067, ptr %1068, align 8, !tbaa !29
  %1069 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 3
  store i64 %1067, ptr %1069, align 8, !tbaa !28
  %1070 = shl i64 %1062, 3
  %1071 = tail call ptr @AcquireAlignedMemory(i64 noundef %1062, i64 noundef %1070) #34
  %1072 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 5
  store ptr %1071, ptr %1072, align 8, !tbaa !33
  %1073 = icmp eq ptr %1071, null
  br i1 %1073, label %1074, label %1076

1074:                                             ; preds = %1043
  %1075 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %19) #29
  br label %1584

1076:                                             ; preds = %1043
  %1077 = icmp eq i32 %0, 22
  br i1 %1077, label %1083, label %1078

1078:                                             ; preds = %1076
  %1079 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 2
  %1080 = load double, ptr %1079, align 8, !tbaa !27
  %1081 = fptosi double %1080 to i64
  %1082 = sitofp i64 %1081 to double
  br label %1083

1083:                                             ; preds = %1076, %1078
  %1084 = phi double [ %1082, %1078 ], [ 0.000000e+00, %1076 ]
  %1085 = load i64, ptr %1068, align 8, !tbaa !29
  %1086 = icmp slt i64 %1085, 0
  br i1 %1086, label %1122, label %1087

1087:                                             ; preds = %1083
  %1088 = sub nsw i64 0, %1085
  %1089 = load i64, ptr %1069, align 8, !tbaa !28
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
  store double %1084, ptr %1109, align 8, !tbaa !34
  %1111 = load double, ptr %1092, align 8, !tbaa !58
  %1112 = fadd double %1084, %1111
  store double %1112, ptr %1092, align 8, !tbaa !58
  br label %1114

1113:                                             ; preds = %1101
  store double %3, ptr %1109, align 8, !tbaa !34
  br label %1114

1114:                                             ; preds = %1113, %1110
  %1115 = add nsw i64 %1103, 1
  %1116 = add i64 %1102, 1
  %1117 = icmp eq i64 %1116, %1100
  br i1 %1117, label %1118, label %1101, !llvm.loop !77

1118:                                             ; preds = %1114, %1095
  %1119 = phi i64 [ %1096, %1095 ], [ %1100, %1114 ]
  %1120 = add i64 %1097, 1
  %1121 = icmp eq i64 %1097, %1085
  br i1 %1121, label %1122, label %1095, !llvm.loop !78

1122:                                             ; preds = %1118, %1083
  %1123 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 7
  store double %1084, ptr %1123, align 8, !tbaa !36
  %1124 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 6
  store double %1084, ptr %1124, align 8, !tbaa !35
  br i1 %1077, label %1125, label %1584

1125:                                             ; preds = %1122
  %1126 = load i64, ptr %1069, align 8, !tbaa !28
  %1127 = load i64, ptr %1058, align 8, !tbaa !25
  %1128 = mul i64 %1127, %1085
  %1129 = getelementptr double, ptr %1071, i64 %1126
  %1130 = getelementptr double, ptr %1129, i64 %1128
  store double 1.000000e+00, ptr %1130, align 8, !tbaa !34
  %1131 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 9
  store double 1.000000e+00, ptr %1131, align 8, !tbaa !58
  store double 1.000000e+00, ptr %1123, align 8, !tbaa !36
  br label %1584

1132:                                             ; preds = %18
  %1133 = tail call ptr @AcquireKernelInfo(ptr noundef nonnull @.str.26) #29
  %1134 = icmp eq ptr %1133, null
  br i1 %1134, label %1584, label %1135

1135:                                             ; preds = %1132
  store i32 23, ptr %1133, align 8, !tbaa !20
  tail call fastcc void @ExpandMirrorKernelInfo(ptr noundef nonnull %1133) #29
  br label %1584

1136:                                             ; preds = %18
  %1137 = tail call ptr @AcquireKernelInfo(ptr noundef nonnull @.str.27) #29
  %1138 = icmp eq ptr %1137, null
  br i1 %1138, label %1584, label %1139

1139:                                             ; preds = %1136
  store i32 24, ptr %1137, align 8, !tbaa !20
  tail call fastcc void @ExpandRotateKernelInfo(ptr noundef nonnull %1137, double noundef 9.000000e+01) #29
  br label %1584

1140:                                             ; preds = %18
  %1141 = load double, ptr %1, align 8, !tbaa !24
  %1142 = fptosi double %1141 to i32
  switch i32 %1142, label %1143 [
    i32 2, label %1154
    i32 1, label %1155
  ]

1143:                                             ; preds = %1140
  %1144 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.28) #29
  %1145 = icmp eq ptr %1144, null
  br i1 %1145, label %1584, label %1146

1146:                                             ; preds = %1143
  store i32 25, ptr %1144, align 8, !tbaa !20
  %1147 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.29) #29
  %1148 = icmp eq ptr %1147, null
  br i1 %1148, label %1149, label %1151

1149:                                             ; preds = %1146
  %1150 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %1144) #29
  br label %1584

1151:                                             ; preds = %1146
  store i32 25, ptr %1147, align 8, !tbaa !20
  %1152 = tail call fastcc ptr @LastKernelInfo(ptr noundef nonnull %1144) #29
  %1153 = getelementptr inbounds %struct.KernelInfo, ptr %1152, i64 0, i32 11
  store ptr %1147, ptr %1153, align 8, !tbaa !13
  tail call fastcc void @ExpandMirrorKernelInfo(ptr noundef nonnull %1144) #29
  br label %1584

1154:                                             ; preds = %1140
  br label %1155

1155:                                             ; preds = %1140, %1154
  %1156 = phi ptr [ @.str.29, %1154 ], [ @.str.28, %1140 ]
  %1157 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull %1156) #29
  %1158 = icmp eq ptr %1157, null
  br i1 %1158, label %1584, label %1159

1159:                                             ; preds = %1155
  store i32 25, ptr %1157, align 8, !tbaa !20
  %1160 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %1161 = load double, ptr %1160, align 8, !tbaa !22
  tail call fastcc void @RotateKernelInfo(ptr noundef nonnull %1157, double noundef %1161) #29
  br label %1584

1162:                                             ; preds = %18
  %1163 = load double, ptr %1, align 8, !tbaa !24
  %1164 = fptosi double %1163 to i32
  %1165 = add i32 %1164, -1
  %1166 = icmp ult i32 %1165, 4
  br i1 %1166, label %1169, label %1167

1167:                                             ; preds = %1162
  %1168 = tail call ptr @AcquireKernelInfo(ptr noundef nonnull @.str.30) #29
  br label %1584

1169:                                             ; preds = %1162
  %1170 = zext nneg i32 %1165 to i64
  %1171 = shl i64 %1170, 2
  %1172 = call ptr @llvm.load.relative.i64(ptr @reltable.AcquireKernelBuiltIn, i64 %1171)
  %1173 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull %1172) #29
  %1174 = icmp eq ptr %1173, null
  br i1 %1174, label %1584, label %1175

1175:                                             ; preds = %1169
  store i32 26, ptr %1173, align 8, !tbaa !20
  %1176 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %1177 = load double, ptr %1176, align 8, !tbaa !22
  tail call fastcc void @RotateKernelInfo(ptr noundef nonnull %1173, double noundef %1177) #29
  br label %1584

1178:                                             ; preds = %18
  %1179 = load double, ptr %1, align 8, !tbaa !24
  %1180 = fptosi double %1179 to i32
  %1181 = add i32 %1180, -1
  %1182 = icmp ult i32 %1181, 5
  br i1 %1182, label %1185, label %1183

1183:                                             ; preds = %1178
  %1184 = tail call ptr @AcquireKernelInfo(ptr noundef nonnull @.str.35) #29
  br label %1584

1185:                                             ; preds = %1178
  %1186 = zext nneg i32 %1181 to i64
  %1187 = shl i64 %1186, 2
  %1188 = call ptr @llvm.load.relative.i64(ptr @reltable.AcquireKernelBuiltIn.119, i64 %1187)
  %1189 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull %1188) #29
  %1190 = icmp eq ptr %1189, null
  br i1 %1190, label %1584, label %1191

1191:                                             ; preds = %1185
  store i32 27, ptr %1189, align 8, !tbaa !20
  %1192 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %1193 = load double, ptr %1192, align 8, !tbaa !22
  tail call fastcc void @RotateKernelInfo(ptr noundef nonnull %1189, double noundef %1193) #29
  br label %1584

1194:                                             ; preds = %18
  %1195 = load double, ptr %1, align 8, !tbaa !24
  %1196 = fptosi double %1195 to i32
  %1197 = icmp eq i32 %1196, 2
  br i1 %1197, label %1202, label %1198

1198:                                             ; preds = %1194
  %1199 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.41) #29
  %1200 = icmp eq ptr %1199, null
  br i1 %1200, label %1584, label %1201

1201:                                             ; preds = %1198
  store i32 28, ptr %1199, align 8, !tbaa !20
  tail call fastcc void @ExpandRotateKernelInfo(ptr noundef nonnull %1199, double noundef 9.000000e+01) #29
  br label %1584

1202:                                             ; preds = %1194
  %1203 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.42) #29
  %1204 = icmp eq ptr %1203, null
  br i1 %1204, label %1584, label %1205

1205:                                             ; preds = %1202
  store i32 28, ptr %1203, align 8, !tbaa !20
  tail call fastcc void @ExpandRotateKernelInfo(ptr noundef nonnull %1203, double noundef 9.000000e+01) #29
  %1206 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.43) #29
  %1207 = icmp eq ptr %1206, null
  br i1 %1207, label %1208, label %1210

1208:                                             ; preds = %1205
  %1209 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %1203) #29
  br label %1584

1210:                                             ; preds = %1205
  store i32 28, ptr %1206, align 8, !tbaa !20
  %1211 = tail call fastcc ptr @LastKernelInfo(ptr noundef nonnull %1203) #29
  %1212 = getelementptr inbounds %struct.KernelInfo, ptr %1211, i64 0, i32 11
  store ptr %1206, ptr %1212, align 8, !tbaa !13
  %1213 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.44) #29
  %1214 = icmp eq ptr %1213, null
  br i1 %1214, label %1215, label %1217

1215:                                             ; preds = %1210
  %1216 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %1203) #29
  br label %1584

1217:                                             ; preds = %1210
  store i32 28, ptr %1213, align 8, !tbaa !20
  %1218 = tail call fastcc ptr @LastKernelInfo(ptr noundef nonnull %1203) #29
  %1219 = getelementptr inbounds %struct.KernelInfo, ptr %1218, i64 0, i32 11
  store ptr %1213, ptr %1219, align 8, !tbaa !13
  %1220 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.45) #29
  %1221 = icmp eq ptr %1220, null
  br i1 %1221, label %1222, label %1224

1222:                                             ; preds = %1217
  %1223 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %1203) #29
  br label %1584

1224:                                             ; preds = %1217
  store i32 28, ptr %1220, align 8, !tbaa !20
  %1225 = tail call fastcc ptr @LastKernelInfo(ptr noundef nonnull %1203) #29
  %1226 = getelementptr inbounds %struct.KernelInfo, ptr %1225, i64 0, i32 11
  store ptr %1220, ptr %1226, align 8, !tbaa !13
  %1227 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.46) #29
  %1228 = icmp eq ptr %1227, null
  br i1 %1228, label %1229, label %1231

1229:                                             ; preds = %1224
  %1230 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %1203) #29
  br label %1584

1231:                                             ; preds = %1224
  store i32 28, ptr %1227, align 8, !tbaa !20
  %1232 = tail call fastcc ptr @LastKernelInfo(ptr noundef nonnull %1203) #29
  %1233 = getelementptr inbounds %struct.KernelInfo, ptr %1232, i64 0, i32 11
  store ptr %1227, ptr %1233, align 8, !tbaa !13
  %1234 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.47) #29
  %1235 = icmp eq ptr %1234, null
  br i1 %1235, label %1236, label %1238

1236:                                             ; preds = %1231
  %1237 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %1203) #29
  br label %1584

1238:                                             ; preds = %1231
  store i32 28, ptr %1234, align 8, !tbaa !20
  %1239 = tail call fastcc ptr @LastKernelInfo(ptr noundef nonnull %1203) #29
  %1240 = getelementptr inbounds %struct.KernelInfo, ptr %1239, i64 0, i32 11
  store ptr %1234, ptr %1240, align 8, !tbaa !13
  %1241 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.48) #29
  %1242 = icmp eq ptr %1241, null
  br i1 %1242, label %1243, label %1245

1243:                                             ; preds = %1238
  %1244 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %1203) #29
  br label %1584

1245:                                             ; preds = %1238
  store i32 28, ptr %1241, align 8, !tbaa !20
  %1246 = tail call fastcc ptr @LastKernelInfo(ptr noundef nonnull %1203) #29
  %1247 = getelementptr inbounds %struct.KernelInfo, ptr %1246, i64 0, i32 11
  store ptr %1241, ptr %1247, align 8, !tbaa !13
  %1248 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.49) #29
  %1249 = icmp eq ptr %1248, null
  br i1 %1249, label %1250, label %1252

1250:                                             ; preds = %1245
  %1251 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %1203) #29
  br label %1584

1252:                                             ; preds = %1245
  store i32 28, ptr %1248, align 8, !tbaa !20
  %1253 = tail call fastcc ptr @LastKernelInfo(ptr noundef nonnull %1203) #29
  %1254 = getelementptr inbounds %struct.KernelInfo, ptr %1253, i64 0, i32 11
  store ptr %1248, ptr %1254, align 8, !tbaa !13
  %1255 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.50) #29
  %1256 = icmp eq ptr %1255, null
  br i1 %1256, label %1257, label %1259

1257:                                             ; preds = %1252
  %1258 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %1203) #29
  br label %1584

1259:                                             ; preds = %1252
  store i32 28, ptr %1255, align 8, !tbaa !20
  %1260 = tail call fastcc ptr @LastKernelInfo(ptr noundef nonnull %1203) #29
  %1261 = getelementptr inbounds %struct.KernelInfo, ptr %1260, i64 0, i32 11
  store ptr %1255, ptr %1261, align 8, !tbaa !13
  br label %1584

1262:                                             ; preds = %18
  %1263 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.51) #29
  %1264 = icmp eq ptr %1263, null
  br i1 %1264, label %1584, label %1265

1265:                                             ; preds = %1262
  store i32 29, ptr %1263, align 8, !tbaa !20
  tail call fastcc void @ExpandRotateKernelInfo(ptr noundef nonnull %1263, double noundef 9.000000e+01) #29
  %1266 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.52) #29
  %1267 = icmp eq ptr %1266, null
  br i1 %1267, label %1268, label %1270

1268:                                             ; preds = %1265
  %1269 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %1263) #29
  br label %1584

1270:                                             ; preds = %1265
  store i32 29, ptr %1266, align 8, !tbaa !20
  tail call fastcc void @ExpandRotateKernelInfo(ptr noundef nonnull %1266, double noundef 9.000000e+01) #29
  %1271 = tail call fastcc ptr @LastKernelInfo(ptr noundef nonnull %1263) #29
  %1272 = getelementptr inbounds %struct.KernelInfo, ptr %1271, i64 0, i32 11
  store ptr %1266, ptr %1272, align 8, !tbaa !13
  br label %1584

1273:                                             ; preds = %18
  %1274 = load double, ptr %1, align 8, !tbaa !24
  %1275 = fptosi double %1274 to i32
  switch i32 %1275, label %1276 [
    i32 3, label %1290
    i32 2, label %1280
  ]

1276:                                             ; preds = %1273
  %1277 = tail call ptr @AcquireKernelInfo(ptr noundef nonnull @.str.26) #29
  %1278 = icmp eq ptr %1277, null
  br i1 %1278, label %1584, label %1279

1279:                                             ; preds = %1276
  store i32 31, ptr %1277, align 8, !tbaa !20
  tail call fastcc void @ExpandRotateKernelInfo(ptr noundef nonnull %1277, double noundef 4.500000e+01) #29
  br label %1584

1280:                                             ; preds = %1273
  %1281 = tail call ptr @AcquireKernelInfo(ptr noundef nonnull @.str.53) #29
  %1282 = icmp eq ptr %1281, null
  br i1 %1282, label %1584, label %1283

1283:                                             ; preds = %1280
  %1284 = getelementptr inbounds %struct.KernelInfo, ptr %1281, i64 0, i32 11
  %1285 = load ptr, ptr %1284, align 8, !tbaa !13
  %1286 = icmp eq ptr %1285, null
  br i1 %1286, label %1287, label %1289

1287:                                             ; preds = %1283
  %1288 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %1281) #29
  br label %1584

1289:                                             ; preds = %1283
  store i32 31, ptr %1281, align 8, !tbaa !20
  store i32 31, ptr %1285, align 8, !tbaa !20
  tail call fastcc void @ExpandRotateKernelInfo(ptr noundef nonnull %1281, double noundef 9.000000e+01) #29
  br label %1584

1290:                                             ; preds = %1273
  %1291 = tail call ptr @AcquireKernelInfo(ptr noundef nonnull @.str.54) #29
  %1292 = icmp eq ptr %1291, null
  br i1 %1292, label %1584, label %1293

1293:                                             ; preds = %1290
  store i32 31, ptr %1291, align 8, !tbaa !20
  %1294 = getelementptr inbounds %struct.KernelInfo, ptr %1291, i64 0, i32 11
  %1295 = load ptr, ptr %1294, align 8, !tbaa !13
  store i32 31, ptr %1295, align 8, !tbaa !20
  %1296 = getelementptr inbounds %struct.KernelInfo, ptr %1295, i64 0, i32 11
  %1297 = load ptr, ptr %1296, align 8, !tbaa !13
  store i32 31, ptr %1297, align 8, !tbaa !20
  tail call fastcc void @ExpandMirrorKernelInfo(ptr noundef nonnull %1291) #29
  br label %1584

1298:                                             ; preds = %18
  %1299 = load double, ptr %1, align 8, !tbaa !24
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
  %1323 = phi ptr [ @.str.76, %1321 ], [ @.str.75, %1320 ], [ @.str.74, %1319 ], [ @.str.73, %1318 ], [ @.str.72, %1317 ], [ @.str.71, %1316 ], [ @.str.70, %1315 ], [ @.str.69, %1314 ], [ @.str.68, %1313 ], [ @.str.67, %1312 ], [ @.str.66, %1311 ], [ @.str.65, %1310 ], [ @.str.64, %1309 ], [ @.str.63, %1308 ], [ @.str.62, %1307 ], [ @.str.61, %1306 ], [ @.str.60, %1305 ], [ @.str.59, %1304 ], [ @.str.58, %1303 ], [ @.str.57, %1302 ], [ @.str.56, %1301 ], [ @.str.55, %1298 ]
  %1324 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull %1323) #29
  %1325 = icmp eq ptr %1324, null
  br i1 %1325, label %1584, label %1326

1326:                                             ; preds = %1322
  store i32 30, ptr %1324, align 8, !tbaa !20
  %1327 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %1328 = load double, ptr %1327, align 8, !tbaa !22
  tail call fastcc void @RotateKernelInfo(ptr noundef nonnull %1324, double noundef %1328) #29
  br label %1584

1329:                                             ; preds = %18
  %1330 = load double, ptr %1, align 8, !tbaa !24
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
  store i64 %1339, ptr %1340, align 8, !tbaa !29
  %1341 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 3
  store i64 %1339, ptr %1341, align 8, !tbaa !28
  %1342 = shl i64 %1335, 3
  %1343 = tail call ptr @AcquireAlignedMemory(i64 noundef %1335, i64 noundef %1342) #34
  %1344 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 5
  store ptr %1343, ptr %1344, align 8, !tbaa !33
  %1345 = icmp eq ptr %1343, null
  br i1 %1345, label %1346, label %1348

1346:                                             ; preds = %1329
  %1347 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %19) #29
  br label %1584

1348:                                             ; preds = %1329
  %1349 = load i64, ptr %1340, align 8, !tbaa !29
  %1350 = icmp slt i64 %1349, 0
  br i1 %1350, label %1385, label %1351

1351:                                             ; preds = %1348
  %1352 = sub nsw i64 0, %1349
  %1353 = load i64, ptr %1341, align 8, !tbaa !28
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
  %1370 = load double, ptr %1356, align 8, !tbaa !22
  %1371 = sitofp i64 %1369 to double
  %1372 = tail call double @llvm.fabs.f64(double %1371)
  %1373 = tail call fastcc double @MagickMax(double noundef %1372, double noundef %1365) #29
  %1374 = fmul double %1370, %1373
  %1375 = getelementptr inbounds double, ptr %1343, i64 %1368
  store double %1374, ptr %1375, align 8, !tbaa !34
  %1376 = load double, ptr %1357, align 8, !tbaa !58
  %1377 = fadd double %1374, %1376
  store double %1377, ptr %1357, align 8, !tbaa !58
  %1378 = add nsw i64 %1369, 1
  %1379 = add i64 %1368, 1
  %1380 = icmp eq i64 %1379, %1366
  br i1 %1380, label %1381, label %1367, !llvm.loop !79

1381:                                             ; preds = %1367, %1360
  %1382 = phi i64 [ %1361, %1360 ], [ %1366, %1367 ]
  %1383 = add i64 %1362, 1
  %1384 = icmp eq i64 %1362, %1349
  br i1 %1384, label %1385, label %1360, !llvm.loop !80

1385:                                             ; preds = %1381, %1348
  %1386 = load double, ptr %1343, align 8, !tbaa !34
  %1387 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 7
  store double %1386, ptr %1387, align 8, !tbaa !36
  br label %1584

1388:                                             ; preds = %18
  %1389 = load double, ptr %1, align 8, !tbaa !24
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
  store i64 %1398, ptr %1399, align 8, !tbaa !29
  %1400 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 3
  store i64 %1398, ptr %1400, align 8, !tbaa !28
  %1401 = shl i64 %1394, 3
  %1402 = tail call ptr @AcquireAlignedMemory(i64 noundef %1394, i64 noundef %1401) #34
  %1403 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 5
  store ptr %1402, ptr %1403, align 8, !tbaa !33
  %1404 = icmp eq ptr %1402, null
  br i1 %1404, label %1405, label %1407

1405:                                             ; preds = %1388
  %1406 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %19) #29
  br label %1584

1407:                                             ; preds = %1388
  %1408 = load i64, ptr %1399, align 8, !tbaa !29
  %1409 = icmp slt i64 %1408, 0
  br i1 %1409, label %1443, label %1410

1410:                                             ; preds = %1407
  %1411 = sub nsw i64 0, %1408
  %1412 = load i64, ptr %1400, align 8, !tbaa !28
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
  %1428 = load double, ptr %1415, align 8, !tbaa !22
  %1429 = tail call i64 @llvm.abs.i64(i64 %1427, i1 true)
  %1430 = add nuw nsw i64 %1429, %1423
  %1431 = sitofp i64 %1430 to double
  %1432 = fmul double %1428, %1431
  %1433 = getelementptr inbounds double, ptr %1402, i64 %1426
  store double %1432, ptr %1433, align 8, !tbaa !34
  %1434 = load double, ptr %1416, align 8, !tbaa !58
  %1435 = fadd double %1432, %1434
  store double %1435, ptr %1416, align 8, !tbaa !58
  %1436 = add nsw i64 %1427, 1
  %1437 = add i64 %1426, 1
  %1438 = icmp eq i64 %1437, %1424
  br i1 %1438, label %1439, label %1425, !llvm.loop !81

1439:                                             ; preds = %1425, %1419
  %1440 = phi i64 [ %1420, %1419 ], [ %1424, %1425 ]
  %1441 = add i64 %1421, 1
  %1442 = icmp eq i64 %1421, %1408
  br i1 %1442, label %1443, label %1419, !llvm.loop !82

1443:                                             ; preds = %1439, %1407
  %1444 = load double, ptr %1402, align 8, !tbaa !34
  %1445 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 7
  store double %1444, ptr %1445, align 8, !tbaa !36
  br label %1584

1446:                                             ; preds = %18
  %1447 = load double, ptr %1, align 8, !tbaa !24
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
  store i64 %1456, ptr %1457, align 8, !tbaa !29
  %1458 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 3
  store i64 %1456, ptr %1458, align 8, !tbaa !28
  %1459 = shl i64 %1452, 3
  %1460 = tail call ptr @AcquireAlignedMemory(i64 noundef %1452, i64 noundef %1459) #34
  %1461 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 5
  store ptr %1460, ptr %1461, align 8, !tbaa !33
  %1462 = icmp eq ptr %1460, null
  br i1 %1462, label %1463, label %1465

1463:                                             ; preds = %1446
  %1464 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %19) #29
  br label %1584

1465:                                             ; preds = %1446
  %1466 = load i64, ptr %1457, align 8, !tbaa !29
  %1467 = icmp slt i64 %1466, 0
  br i1 %1467, label %1510, label %1468

1468:                                             ; preds = %1465
  %1469 = sub nsw i64 0, %1466
  %1470 = load i64, ptr %1458, align 8, !tbaa !28
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
  %1491 = tail call fastcc double @MagickMax(double noundef %1490, double noundef %1482) #29
  %1492 = tail call i64 @llvm.abs.i64(i64 %1488, i1 true)
  %1493 = add nuw i64 %1484, %1492
  %1494 = sitofp i64 %1493 to double
  %1495 = fdiv double %1494, 1.500000e+00
  %1496 = tail call double @llvm.floor.f64(double %1495)
  %1497 = load double, ptr %1473, align 8, !tbaa !22
  %1498 = tail call fastcc double @MagickMax(double noundef %1491, double noundef %1496) #29
  %1499 = fmul double %1497, %1498
  %1500 = getelementptr inbounds double, ptr %1460, i64 %1487
  store double %1499, ptr %1500, align 8, !tbaa !34
  %1501 = load double, ptr %1474, align 8, !tbaa !58
  %1502 = fadd double %1499, %1501
  store double %1502, ptr %1474, align 8, !tbaa !58
  %1503 = add nsw i64 %1488, 1
  %1504 = add i64 %1487, 1
  %1505 = icmp eq i64 %1504, %1485
  br i1 %1505, label %1506, label %1486, !llvm.loop !83

1506:                                             ; preds = %1486, %1477
  %1507 = phi i64 [ %1478, %1477 ], [ %1485, %1486 ]
  %1508 = add i64 %1479, 1
  %1509 = icmp eq i64 %1479, %1466
  br i1 %1509, label %1510, label %1477, !llvm.loop !84

1510:                                             ; preds = %1506, %1465
  %1511 = load double, ptr %1460, align 8, !tbaa !34
  %1512 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 7
  store double %1511, ptr %1512, align 8, !tbaa !36
  br label %1584

1513:                                             ; preds = %18
  %1514 = load double, ptr %1, align 8, !tbaa !24
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
  store i64 %1523, ptr %1524, align 8, !tbaa !29
  %1525 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 3
  store i64 %1523, ptr %1525, align 8, !tbaa !28
  %1526 = shl i64 %1519, 3
  %1527 = tail call ptr @AcquireAlignedMemory(i64 noundef %1519, i64 noundef %1526) #34
  %1528 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 5
  store ptr %1527, ptr %1528, align 8, !tbaa !33
  %1529 = icmp eq ptr %1527, null
  br i1 %1529, label %1530, label %1532

1530:                                             ; preds = %1513
  %1531 = tail call ptr @DestroyKernelInfo(ptr noundef nonnull %19) #29
  br label %1584

1532:                                             ; preds = %1513
  %1533 = load i64, ptr %1524, align 8, !tbaa !29
  %1534 = icmp slt i64 %1533, 0
  br i1 %1534, label %1576, label %1535

1535:                                             ; preds = %1532
  %1536 = sub nsw i64 0, %1533
  %1537 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %1538 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 9
  %1539 = load i64, ptr %1525, align 8, !tbaa !28
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
  %1553 = load double, ptr %1537, align 8, !tbaa !22
  %1554 = mul nsw i64 %1552, %1552
  %1555 = add nuw nsw i64 %1554, %1549
  %1556 = sitofp i64 %1555 to double
  %1557 = tail call double @sqrt(double noundef %1556) #30
  %1558 = fmul double %1553, %1557
  %1559 = load ptr, ptr %1528, align 8, !tbaa !33
  %1560 = getelementptr inbounds double, ptr %1559, i64 %1551
  store double %1558, ptr %1560, align 8, !tbaa !34
  %1561 = load double, ptr %1538, align 8, !tbaa !58
  %1562 = fadd double %1558, %1561
  store double %1562, ptr %1538, align 8, !tbaa !58
  %1563 = add nsw i64 %1552, 1
  %1564 = add nsw i64 %1551, 1
  %1565 = load i64, ptr %1525, align 8, !tbaa !28
  %1566 = icmp slt i64 %1552, %1565
  br i1 %1566, label %1550, label %1567, !llvm.loop !85

1567:                                             ; preds = %1550
  %1568 = load i64, ptr %1524, align 8, !tbaa !29
  br label %1569

1569:                                             ; preds = %1567, %1540
  %1570 = phi ptr [ %1541, %1540 ], [ %1559, %1567 ]
  %1571 = phi i64 [ %1542, %1540 ], [ %1568, %1567 ]
  %1572 = phi i64 [ %1543, %1540 ], [ %1565, %1567 ]
  %1573 = phi i64 [ %1544, %1540 ], [ %1564, %1567 ]
  %1574 = add nsw i64 %1545, 1
  %1575 = icmp slt i64 %1545, %1571
  br i1 %1575, label %1540, label %1576, !llvm.loop !86

1576:                                             ; preds = %1569, %1532
  %1577 = phi ptr [ %1527, %1532 ], [ %1570, %1569 ]
  %1578 = load double, ptr %1577, align 8, !tbaa !34
  %1579 = getelementptr inbounds %struct.KernelInfo, ptr %19, i64 0, i32 7
  store double %1578, ptr %1579, align 8, !tbaa !36
  br label %1584

1580:                                             ; preds = %18
  %1581 = tail call fastcc ptr @ParseKernelArray(ptr noundef nonnull @.str.77) #29
  %1582 = icmp eq ptr %1581, null
  br i1 %1582, label %1584, label %1583

1583:                                             ; preds = %1580
  store i32 0, ptr %1581, align 8, !tbaa !20
  br label %1584

1584:                                             ; preds = %1122, %911, %487, %420, %335, %264, %29, %512, %516, %521, %526, %531, %536, %684, %842, %969, %1033, %1135, %1139, %1159, %1175, %1191, %1326, %1385, %1443, %1510, %1576, %1583, %625, %619, %1293, %1289, %1279, %620, %776, %1125, %1201, %1259, %1270, %1262, %1268, %1202, %1198, %1257, %1250, %1243, %1236, %1229, %1222, %1215, %1208, %730, %710, %745, %1074, %870, %452, %362, %289, %66, %1580, %1322, %1290, %1280, %1276, %1185, %1169, %1155, %1149, %1151, %1143, %1136, %1132, %609, %605, %601, %597, %593, %585, %578, %570, %562, %559, %549, %541, %533, %528, %523, %518, %513, %508, %5, %1530, %1463, %1405, %1346, %1287, %1183, %1167, %996, %933, %799, %643, %27
  %1585 = phi ptr [ %1531, %1530 ], [ %1464, %1463 ], [ %1406, %1405 ], [ %1347, %1346 ], [ %1288, %1287 ], [ %1184, %1183 ], [ %1168, %1167 ], [ %997, %996 ], [ %934, %933 ], [ %800, %799 ], [ %644, %643 ], [ %28, %27 ], [ null, %5 ], [ null, %508 ], [ null, %513 ], [ null, %518 ], [ null, %523 ], [ null, %528 ], [ null, %533 ], [ null, %541 ], [ null, %549 ], [ null, %559 ], [ null, %562 ], [ null, %570 ], [ null, %578 ], [ null, %585 ], [ null, %593 ], [ null, %597 ], [ null, %601 ], [ null, %605 ], [ null, %609 ], [ null, %1132 ], [ null, %1136 ], [ %1150, %1149 ], [ %1144, %1151 ], [ null, %1143 ], [ null, %1155 ], [ null, %1169 ], [ null, %1185 ], [ null, %1276 ], [ null, %1280 ], [ null, %1290 ], [ null, %1322 ], [ null, %1580 ], [ %67, %66 ], [ %290, %289 ], [ %363, %362 ], [ %453, %452 ], [ %871, %870 ], [ %1075, %1074 ], [ %731, %730 ], [ %711, %710 ], [ %746, %745 ], [ null, %1202 ], [ null, %1198 ], [ %1258, %1257 ], [ %1251, %1250 ], [ %1244, %1243 ], [ %1237, %1236 ], [ %1230, %1229 ], [ %1223, %1222 ], [ %1216, %1215 ], [ %1209, %1208 ], [ null, %1262 ], [ %1269, %1268 ], [ %1581, %1583 ], [ %19, %1576 ], [ %19, %1510 ], [ %19, %1443 ], [ %19, %1385 ], [ %1324, %1326 ], [ %1277, %1279 ], [ %1281, %1289 ], [ %1291, %1293 ], [ %1263, %1270 ], [ %1189, %1191 ], [ %1173, %1175 ], [ %1157, %1159 ], [ %1137, %1139 ], [ %1133, %1135 ], [ %19, %1033 ], [ %19, %969 ], [ %19, %911 ], [ %19, %842 ], [ %19, %776 ], [ %19, %684 ], [ %614, %619 ], [ %614, %625 ], [ %534, %536 ], [ %529, %531 ], [ %524, %526 ], [ %519, %521 ], [ %514, %516 ], [ %510, %512 ], [ %19, %487 ], [ %19, %420 ], [ %19, %335 ], [ %19, %264 ], [ %19, %29 ], [ %614, %620 ], [ %19, %1125 ], [ %1203, %1259 ], [ %1199, %1201 ], [ %19, %1122 ]
  ret ptr %1585
}

; Function Attrs: optsize
declare i64 @GetOptimalKernelWidth2D(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #13

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @CalcKernelMetaData(ptr nocapture noundef %0) unnamed_addr #14 {
  %2 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 7
  %3 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 6
  %4 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 9
  %5 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 8
  %6 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %7 = load i64, ptr %6, align 8, !tbaa !25
  %8 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !26
  %10 = mul i64 %9, %7
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %49, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !33
  br label %15

15:                                               ; preds = %12, %39
  %16 = phi double [ 0.000000e+00, %12 ], [ %46, %39 ]
  %17 = phi double [ 0.000000e+00, %12 ], [ %44, %39 ]
  %18 = phi double [ 0.000000e+00, %12 ], [ %42, %39 ]
  %19 = phi i64 [ 0, %12 ], [ %47, %39 ]
  %20 = getelementptr inbounds double, ptr %14, i64 %19
  %21 = load double, ptr %20, align 8, !tbaa !34
  %22 = tail call double @llvm.fabs.f64(double %21)
  %23 = fcmp olt double %22, 1.000000e-15
  br i1 %23, label %24, label %28

24:                                               ; preds = %15
  store double 0.000000e+00, ptr %20, align 8, !tbaa !34
  %25 = load double, ptr %4, align 8, !tbaa !58
  %26 = load double, ptr %3, align 8, !tbaa !35
  %27 = load double, ptr %2, align 8, !tbaa !36
  br label %33

28:                                               ; preds = %15
  %29 = fcmp olt double %21, 0.000000e+00
  br i1 %29, label %30, label %33

30:                                               ; preds = %28
  %31 = load double, ptr %5, align 8, !tbaa !61
  %32 = fadd double %21, %31
  store double %32, ptr %5, align 8, !tbaa !61
  br label %39

33:                                               ; preds = %24, %28
  %34 = phi double [ %27, %24 ], [ %16, %28 ]
  %35 = phi double [ %26, %24 ], [ %17, %28 ]
  %36 = phi double [ %25, %24 ], [ %18, %28 ]
  %37 = phi double [ 0.000000e+00, %24 ], [ %21, %28 ]
  %38 = fadd double %37, %36
  store double %38, ptr %4, align 8, !tbaa !58
  br label %39

39:                                               ; preds = %33, %30
  %40 = phi double [ %34, %33 ], [ %16, %30 ]
  %41 = phi double [ %35, %33 ], [ %17, %30 ]
  %42 = phi double [ %38, %33 ], [ %18, %30 ]
  %43 = load double, ptr %20, align 8, !tbaa !34
  %44 = tail call fastcc double @MagickMin(double noundef %41, double noundef %43) #29
  store double %44, ptr %3, align 8, !tbaa !35
  %45 = load double, ptr %20, align 8, !tbaa !34
  %46 = tail call fastcc double @MagickMax(double noundef %40, double noundef %45) #29
  store double %46, ptr %2, align 8, !tbaa !36
  %47 = add nuw i64 %19, 1
  %48 = icmp eq i64 %47, %10
  br i1 %48, label %49, label %15, !llvm.loop !87

49:                                               ; preds = %39, %1
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ScaleKernelInfo(ptr nocapture noundef %0, double noundef %1, i32 noundef %2) local_unnamed_addr #15 {
  %4 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @ScaleKernelInfo(ptr noundef nonnull %5, double noundef %1, i32 noundef %2) #29
  br label %8

8:                                                ; preds = %7, %3
  %9 = and i32 %2, 8192
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 9
  %13 = load double, ptr %12, align 8, !tbaa !58
  %14 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 8
  %15 = load double, ptr %14, align 8, !tbaa !61
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
  %28 = load <2 x double>, ptr %27, align 8, !tbaa !34
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
  %40 = load i64, ptr %39, align 8, !tbaa !25
  %41 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 2
  %42 = load i64, ptr %41, align 8, !tbaa !26
  %43 = mul i64 %42, %40
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %34
  %46 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 5
  %47 = load ptr, ptr %46, align 8, !tbaa !33
  %48 = extractelement <2 x double> %38, i64 0
  %49 = extractelement <2 x double> %38, i64 1
  br label %50

50:                                               ; preds = %45, %59
  %51 = phi i64 [ 0, %45 ], [ %60, %59 ]
  %52 = getelementptr inbounds double, ptr %47, i64 %51
  %53 = load double, ptr %52, align 8, !tbaa !34
  %54 = fcmp uno double %53, 0.000000e+00
  br i1 %54, label %59, label %55

55:                                               ; preds = %50
  %56 = fcmp oge double %53, 0.000000e+00
  %57 = select i1 %56, double %49, double %48
  %58 = fmul double %53, %57
  store double %58, ptr %52, align 8, !tbaa !34
  br label %59

59:                                               ; preds = %55, %50
  %60 = add nuw nsw i64 %51, 1
  %61 = icmp eq i64 %60, %43
  br i1 %61, label %62, label %50, !llvm.loop !88

62:                                               ; preds = %59, %34
  %63 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 8
  %64 = load <2 x double>, ptr %63, align 8, !tbaa !34
  %65 = fmul <2 x double> %38, %64
  store <2 x double> %65, ptr %63, align 8, !tbaa !34
  %66 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 6
  %67 = load <2 x double>, ptr %66, align 8, !tbaa !34
  %68 = fcmp oge <2 x double> %67, zeroinitializer
  %69 = shufflevector <2 x double> %38, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %70 = shufflevector <2 x double> %38, <2 x double> poison, <2 x i32> zeroinitializer
  %71 = select <2 x i1> %68, <2 x double> %69, <2 x double> %70
  %72 = fmul <2 x double> %67, %71
  store <2 x double> %72, ptr %66, align 8, !tbaa !34
  %73 = fcmp olt double %1, 1.000000e-15
  br i1 %73, label %74, label %78

74:                                               ; preds = %62
  %75 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 7
  %76 = shufflevector <2 x double> %65, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %76, ptr %63, align 8, !tbaa !34
  %77 = extractelement <2 x double> %72, i64 0
  store double %77, ptr %75, align 8, !tbaa !36
  store double 1.000000e+00, ptr %66, align 8, !tbaa !35
  br label %78

78:                                               ; preds = %74, %62
  ret void
}

; Function Attrs: optsize
declare i64 @GetOptimalKernelWidth1D(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define internal fastcc i64 @fact(i64 noundef %0) unnamed_addr #16 {
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
  br i1 %11, label %12, label %6, !llvm.loop !89

12:                                               ; preds = %6, %1
  %13 = phi i64 [ 1, %1 ], [ %9, %6 ]
  ret i64 %13
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #13

; Function Attrs: optsize
declare ptr @RelinquishAlignedMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @MorphologyApply(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5, double noundef %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %9) #21
  %10 = icmp eq i64 %3, 0
  br i1 %10, label %338, label %11

11:                                               ; preds = %8
  %12 = icmp slt i64 %3, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %15 = load i64, ptr %14, align 8, !tbaa !90
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %17 = load i64, ptr %16, align 8, !tbaa !102
  %18 = tail call i64 @llvm.umax.i64(i64 %15, i64 %17)
  br label %19

19:                                               ; preds = %13, %11
  %20 = phi i64 [ %18, %13 ], [ %3, %11 ]
  %21 = tail call ptr @GetImageArtifact(ptr noundef %0, ptr noundef nonnull @.str.78) #30
  %22 = tail call i32 @IsMagickTrue(ptr noundef %21) #30
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
  %31 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %7) #30
  %32 = icmp eq ptr %31, null
  br i1 %32, label %338, label %33

33:                                               ; preds = %30
  %34 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %31, i32 noundef 1) #30
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct._Image, ptr %31, i64 0, i32 58
  tail call void @InheritException(ptr noundef %7, ptr noundef nonnull %37) #30
  br label %296

38:                                               ; preds = %33
  %39 = tail call fastcc i64 @MorphologyPrimitiveDirect(ptr noundef nonnull %31, i32 noundef %2, i32 noundef %1, ptr noundef %4, ptr noundef %7) #29
  %40 = icmp eq i32 %22, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr @stderr, align 8, !tbaa !9
  %43 = zext nneg i32 %2 to i64
  %44 = tail call ptr @CommandOptionToMnemonic(i32 noundef 48, i64 noundef %43) #30
  %45 = sitofp i64 %39 to double
  %46 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %42, ptr noundef nonnull @.str.79, ptr noundef %44, double noundef 1.000000e+00, double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef %45) #30
  br label %47

47:                                               ; preds = %41, %38
  %48 = icmp slt i64 %39, 0
  br i1 %48, label %296, label %49

49:                                               ; preds = %47
  %50 = icmp eq i32 %2, 21
  br i1 %50, label %51, label %338

51:                                               ; preds = %49
  %52 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %31, i32 noundef 4) #30
  %53 = tail call i32 @CompositeImageChannel(ptr noundef nonnull %31, i32 noundef 134217719, i32 noundef 17, ptr noundef %0, i64 noundef 0, i64 noundef 0) #30
  %54 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %31, i32 noundef 4) #30
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
  %67 = tail call ptr @CloneKernelInfo(ptr noundef %4) #29
  %68 = icmp eq ptr %67, null
  br i1 %68, label %338, label %69

69:                                               ; preds = %61
  tail call fastcc void @RotateKernelInfo(ptr noundef nonnull %67, double noundef 1.800000e+02) #29
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
  br i1 %91, label %92, label %311, !llvm.loop !103

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
  %151 = call ptr @CommandOptionToMnemonic(i32 noundef 48, i64 noundef %82) #30
  %152 = uitofp i64 %120 to double
  %153 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %9, i64 noundef 4096, ptr noundef nonnull @.str.80, ptr noundef %151, double noundef %101, double noundef %152) #30
  br label %160

154:                                              ; preds = %149
  %155 = icmp eq i32 %147, %2
  br i1 %155, label %159, label %156

156:                                              ; preds = %154
  %157 = call ptr @CommandOptionToMnemonic(i32 noundef 48, i64 noundef %82) #30
  %158 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %9, i64 noundef 4096, ptr noundef nonnull @.str.81, ptr noundef %157, double noundef %101) #30
  br label %160

159:                                              ; preds = %154
  store i8 0, ptr %9, align 16, !tbaa !6
  br label %160

160:                                              ; preds = %150, %159, %156, %144
  br i1 %83, label %209, label %161

161:                                              ; preds = %160
  %162 = zext i32 %147 to i64
  %163 = icmp eq ptr %146, %107
  %164 = select i1 %163, ptr @.str.84, ptr @.str.85
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
  %175 = call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %7) #30
  %176 = icmp eq ptr %175, null
  br i1 %176, label %299, label %177

177:                                              ; preds = %174
  %178 = call i32 @SetImageStorageClass(ptr noundef nonnull %175, i32 noundef 1) #30
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %177
  %181 = getelementptr inbounds %struct._Image, ptr %175, i64 0, i32 58
  call void @InheritException(ptr noundef %7, ptr noundef nonnull %181) #30
  br label %299

182:                                              ; preds = %177, %165
  %183 = phi ptr [ %175, %177 ], [ %171, %165 ]
  %184 = add i64 %168, 1
  %185 = call fastcc i64 @MorphologyPrimitive(ptr noundef %170, ptr noundef nonnull %183, i32 noundef %147, i32 noundef %1, ptr noundef %146, double noundef %6, ptr noundef %7) #29
  br i1 %81, label %199, label %186

186:                                              ; preds = %182
  %187 = icmp eq i64 %169, 0
  br i1 %187, label %191, label %188

188:                                              ; preds = %186
  %189 = load ptr, ptr @stderr, align 8, !tbaa !9
  %190 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %189, ptr noundef nonnull @.str.82) #30
  br label %191

191:                                              ; preds = %188, %186
  %192 = load ptr, ptr @stderr, align 8, !tbaa !9
  %193 = call ptr @CommandOptionToMnemonic(i32 noundef 48, i64 noundef %162) #30
  %194 = add i64 %169, %99
  %195 = uitofp i64 %194 to double
  %196 = uitofp i64 %184 to double
  %197 = sitofp i64 %185 to double
  %198 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %192, ptr noundef nonnull @.str.83, ptr noundef nonnull %9, ptr noundef %193, ptr noundef nonnull %164, double noundef %195, double noundef %112, double noundef %196, double noundef %197) #30
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
  br i1 %208, label %165, label %209, !llvm.loop !104

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
  %219 = load ptr, ptr @stderr, align 8, !tbaa !9
  %220 = uitofp i64 %213 to double
  %221 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %219, ptr noundef nonnull @.str.86, double noundef %220) #30
  br label %222

222:                                              ; preds = %218, %209
  %223 = icmp uge i64 %120, %74
  %224 = select i1 %81, i1 true, i1 %223
  br i1 %224, label %228, label %225

225:                                              ; preds = %222
  %226 = load ptr, ptr @stderr, align 8, !tbaa !9
  %227 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %226, ptr noundef nonnull @.str.82) #30
  br label %228

228:                                              ; preds = %225, %222
  %229 = icmp eq i64 %120, %74
  br i1 %229, label %230, label %113, !llvm.loop !105

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
  %233 = load ptr, ptr @stderr, align 8, !tbaa !9
  %234 = call ptr @CommandOptionToMnemonic(i32 noundef 48, i64 noundef %82) #30
  %235 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %233, ptr noundef nonnull @.str.87, ptr noundef %234) #30
  br label %236

236:                                              ; preds = %232, %231
  %237 = call i32 @CompositeImageChannel(ptr noundef %211, i32 noundef %84, i32 noundef 26, ptr noundef %0, i64 noundef 0, i64 noundef 0) #30
  br label %246

238:                                              ; preds = %230
  br i1 %81, label %243, label %239

239:                                              ; preds = %238
  %240 = load ptr, ptr @stderr, align 8, !tbaa !9
  %241 = call ptr @CommandOptionToMnemonic(i32 noundef 48, i64 noundef 15) #30
  %242 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %240, ptr noundef nonnull @.str.88, ptr noundef %241) #30
  br label %243

243:                                              ; preds = %239, %238
  %244 = call i32 @CompositeImageChannel(ptr noundef %211, i32 noundef %84, i32 noundef 26, ptr noundef %145, i64 noundef 0, i64 noundef 0) #30
  %245 = call ptr @DestroyImage(ptr noundef %145) #30
  br label %246

246:                                              ; preds = %230, %243, %236
  %247 = phi ptr [ %145, %230 ], [ %245, %243 ], [ %145, %236 ]
  %248 = load ptr, ptr %85, align 8, !tbaa !13
  %249 = icmp eq ptr %248, null
  br i1 %249, label %275, label %250

250:                                              ; preds = %246
  br i1 %86, label %251, label %261

251:                                              ; preds = %250
  br i1 %81, label %283, label %252

252:                                              ; preds = %251
  %253 = getelementptr inbounds %struct.KernelInfo, ptr %146, i64 0, i32 11
  %254 = load ptr, ptr %253, align 8, !tbaa !13
  %255 = icmp eq ptr %254, null
  %256 = load ptr, ptr @stderr, align 8, !tbaa !9
  br i1 %255, label %259, label %257

257:                                              ; preds = %252
  %258 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %256, ptr noundef nonnull @.str.89) #30
  br label %278

259:                                              ; preds = %252
  %260 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %256, ptr noundef nonnull @.str.90) #30
  br label %278

261:                                              ; preds = %250
  %262 = icmp eq ptr %109, null
  br i1 %262, label %263, label %267

263:                                              ; preds = %261
  br i1 %81, label %283, label %264

264:                                              ; preds = %263
  %265 = load ptr, ptr @stderr, align 8, !tbaa !9
  %266 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %265, ptr noundef nonnull @.str.91) #30
  br label %278

267:                                              ; preds = %261
  br i1 %81, label %272, label %268

268:                                              ; preds = %267
  %269 = load ptr, ptr @stderr, align 8, !tbaa !9
  %270 = call ptr @CommandOptionToMnemonic(i32 noundef 11, i64 noundef %87) #30
  %271 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %269, ptr noundef nonnull @.str.92, ptr noundef %270) #30
  br label %272

272:                                              ; preds = %268, %267
  %273 = call i32 @CompositeImageChannel(ptr noundef nonnull %109, i32 noundef %84, i32 noundef %71, ptr noundef %211, i64 noundef 0, i64 noundef 0) #30
  %274 = call ptr @DestroyImage(ptr noundef %211) #30
  br label %275

275:                                              ; preds = %246, %272
  %276 = phi ptr [ %109, %272 ], [ %211, %246 ]
  %277 = phi ptr [ %0, %272 ], [ %211, %246 ]
  br i1 %81, label %283, label %278

278:                                              ; preds = %257, %259, %264, %275
  %279 = phi ptr [ %277, %275 ], [ %0, %264 ], [ %211, %259 ], [ %211, %257 ]
  %280 = phi ptr [ %276, %275 ], [ %211, %264 ], [ %211, %259 ], [ %211, %257 ]
  %281 = load ptr, ptr @stderr, align 8, !tbaa !9
  %282 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %281, ptr noundef nonnull @.str.82) #30
  br label %283

283:                                              ; preds = %251, %263, %278, %275
  %284 = phi ptr [ %279, %278 ], [ %277, %275 ], [ %0, %263 ], [ %211, %251 ]
  %285 = phi ptr [ %280, %278 ], [ %276, %275 ], [ %211, %263 ], [ %211, %251 ]
  %286 = getelementptr inbounds %struct.KernelInfo, ptr %108, i64 0, i32 11
  %287 = load ptr, ptr %286, align 8, !tbaa !13
  %288 = icmp eq ptr %107, null
  br i1 %288, label %292, label %289

289:                                              ; preds = %283
  %290 = getelementptr inbounds %struct.KernelInfo, ptr %107, i64 0, i32 11
  %291 = load ptr, ptr %290, align 8, !tbaa !13
  br label %292

292:                                              ; preds = %289, %283
  %293 = phi ptr [ %291, %289 ], [ null, %283 ]
  %294 = add i64 %105, 1
  %295 = icmp eq ptr %287, null
  br i1 %295, label %88, label %102, !llvm.loop !106

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
  %310 = call ptr @DestroyImage(ptr noundef nonnull %307) #30
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
  %323 = call ptr @DestroyImage(ptr noundef nonnull %316) #30
  br label %324

324:                                              ; preds = %322, %311
  %325 = icmp eq ptr %312, null
  br i1 %325, label %328, label %326

326:                                              ; preds = %324
  %327 = call ptr @DestroyImage(ptr noundef nonnull %312) #30
  br label %328

328:                                              ; preds = %326, %324
  %329 = icmp eq ptr %313, null
  br i1 %329, label %332, label %330

330:                                              ; preds = %328
  %331 = call ptr @DestroyImage(ptr noundef nonnull %313) #30
  br label %332

332:                                              ; preds = %70, %330, %328
  %333 = phi ptr [ %315, %330 ], [ %315, %328 ], [ %77, %70 ]
  %334 = phi ptr [ %314, %330 ], [ %314, %328 ], [ null, %70 ]
  %335 = icmp eq ptr %333, null
  br i1 %335, label %338, label %336

336:                                              ; preds = %332
  %337 = call ptr @DestroyKernelInfo(ptr noundef nonnull %333) #29
  br label %338

338:                                              ; preds = %51, %49, %30, %61, %332, %336, %8
  %339 = phi ptr [ null, %8 ], [ %334, %336 ], [ %334, %332 ], [ %31, %51 ], [ %31, %49 ], [ null, %30 ], [ null, %61 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %9) #21
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
  %10 = load <2 x i64>, ptr %8, align 8, !tbaa !44
  switch i32 %1, label %16 [
    i32 7, label %11
    i32 21, label %11
  ]

11:                                               ; preds = %5, %5
  %12 = getelementptr inbounds %struct.KernelInfo, ptr %3, i64 0, i32 1
  %13 = xor <2 x i64> %10, <i64 -1, i64 -1>
  %14 = load <2 x i64>, ptr %12, align 8, !tbaa !44
  %15 = add <2 x i64> %14, %13
  br label %16

16:                                               ; preds = %5, %11
  %17 = phi <2 x i64> [ %10, %5 ], [ %15, %11 ]
  %18 = extractelement <2 x i64> %17, i64 0
  %19 = sub i64 0, %18
  %20 = tail call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %4) #30
  %21 = tail call ptr @AcquireAuthenticCacheView(ptr noundef %0, ptr noundef %4) #30
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %23 = load i64, ptr %22, align 8, !tbaa !90
  %24 = getelementptr inbounds %struct.KernelInfo, ptr %3, i64 0, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !25
  %26 = add i64 %23, -1
  %27 = add i64 %26, %25
  %28 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %29 = load i64, ptr %28, align 8, !tbaa !102
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
  br i1 %61, label %461, label %62, !llvm.loop !107

62:                                               ; preds = %31, %60
  %63 = phi i64 [ 0, %31 ], [ %443, %60 ]
  %64 = phi i64 [ 0, %31 ], [ %458, %60 ]
  %65 = phi i64 [ 0, %31 ], [ %456, %60 ]
  %66 = sub nsw i64 %64, %32
  %67 = call ptr @GetCacheViewVirtualPixels(ptr noundef %20, i64 noundef %19, i64 noundef %66, i64 noundef %27, i64 noundef %33, ptr noundef %4) #36
  %68 = load i64, ptr %22, align 8, !tbaa !90
  %69 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %21, i64 noundef 0, i64 noundef %64, i64 noundef %68, i64 noundef 1, ptr noundef %4) #36
  %70 = icmp eq ptr %67, null
  %71 = icmp eq ptr %69, null
  %72 = select i1 %70, i1 true, i1 %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %62
  %74 = load i64, ptr %28, align 8, !tbaa !102
  br label %461

75:                                               ; preds = %62
  %76 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %20) #30
  %77 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %21) #30
  %78 = load i64, ptr %22, align 8, !tbaa !90
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
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #21
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %6) #30
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %87, ptr noundef %77, ptr noundef nonnull %6) #29
  br i1 %36, label %280, label %90

90:                                               ; preds = %85
  %91 = load float, ptr %37, align 4, !tbaa !108
  %92 = fsub float 6.553500e+04, %91
  store float %92, ptr %37, align 4, !tbaa !108
  br i1 %38, label %93, label %362

93:                                               ; preds = %90
  %94 = load ptr, ptr %39, align 8, !tbaa !33
  %95 = load i64, ptr %24, align 8, !tbaa !25
  br i1 %41, label %202, label %96

96:                                               ; preds = %93
  %97 = load i64, ptr %40, align 8, !tbaa !26
  %98 = mul i64 %97, %95
  %99 = getelementptr double, ptr %94, i64 %98
  %100 = getelementptr double, ptr %99, i64 -1
  %101 = icmp sgt i64 %95, 0
  %102 = load float, ptr %42, align 8, !tbaa !111
  %103 = load float, ptr %43, align 4, !tbaa !112
  %104 = load float, ptr %44, align 8, !tbaa !113
  %105 = load float, ptr %46, align 8, !tbaa !114
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
  %131 = load double, ptr %128, align 8, !tbaa !34
  %132 = fcmp uno double %131, 0.000000e+00
  br i1 %132, label %177, label %133

133:                                              ; preds = %118
  %134 = fpext float %127 to double
  %135 = getelementptr inbounds %struct._PixelPacket, ptr %112, i64 %129
  %136 = getelementptr inbounds %struct._PixelPacket, ptr %112, i64 %129, i32 2
  %137 = load i16, ptr %136, align 2, !tbaa !115
  %138 = uitofp i16 %137 to double
  %139 = fadd double %131, %138
  %140 = call fastcc double @MagickMin(double noundef %134, double noundef %139) #29
  %141 = fptrunc double %140 to float
  store float %141, ptr %42, align 8, !tbaa !111
  %142 = fpext float %126 to double
  %143 = getelementptr inbounds %struct._PixelPacket, ptr %112, i64 %129, i32 1
  %144 = load i16, ptr %143, align 2, !tbaa !116
  %145 = uitofp i16 %144 to double
  %146 = fadd double %131, %145
  %147 = call fastcc double @MagickMin(double noundef %142, double noundef %146) #29
  %148 = fptrunc double %147 to float
  store float %148, ptr %43, align 4, !tbaa !112
  %149 = fpext float %125 to double
  %150 = load i16, ptr %135, align 2, !tbaa !117
  %151 = uitofp i16 %150 to double
  %152 = fadd double %131, %151
  %153 = call fastcc double @MagickMin(double noundef %149, double noundef %152) #29
  %154 = fptrunc double %153 to float
  store float %154, ptr %44, align 8, !tbaa !113
  %155 = fpext float %130 to double
  %156 = fadd double %131, 6.553500e+04
  %157 = getelementptr inbounds %struct._PixelPacket, ptr %112, i64 %129, i32 3
  %158 = load i16, ptr %157, align 2, !tbaa !118
  %159 = uitofp i16 %158 to double
  %160 = fsub double %156, %159
  %161 = call fastcc double @MagickMin(double noundef %155, double noundef %160) #29
  %162 = fptrunc double %161 to float
  store float %162, ptr %37, align 4, !tbaa !108
  %163 = load i32, ptr %45, align 4, !tbaa !119
  %164 = icmp eq i32 %163, 12
  br i1 %164, label %165, label %177

165:                                              ; preds = %133
  %166 = fpext float %124 to double
  br i1 %117, label %171, label %167

167:                                              ; preds = %165
  %168 = getelementptr inbounds i16, ptr %111, i64 %129
  %169 = load i16, ptr %168, align 2, !tbaa !11
  %170 = zext i16 %169 to i32
  br label %171

171:                                              ; preds = %165, %167
  %172 = phi i32 [ %170, %167 ], [ 0, %165 ]
  %173 = sitofp i32 %172 to double
  %174 = fadd double %131, %173
  %175 = call fastcc double @MagickMin(double noundef %166, double noundef %174) #29
  %176 = fptrunc double %175 to float
  store float %176, ptr %46, align 8, !tbaa !114
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
  br i1 %190, label %191, label %118, !llvm.loop !120

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
  br i1 %201, label %202, label %106, !llvm.loop !121

202:                                              ; preds = %191, %93
  %203 = phi float [ %92, %93 ], [ %196, %191 ]
  %204 = getelementptr inbounds %struct._PixelPacket, ptr %87, i64 %19
  br i1 %47, label %205, label %360

205:                                              ; preds = %202
  %206 = load i64, ptr %9, align 8, !tbaa !29
  %207 = add nsw i64 %206, 1
  %208 = mul i64 %207, %95
  %209 = getelementptr double, ptr %94, i64 %208
  %210 = load float, ptr %42, align 8, !tbaa !111
  %211 = load float, ptr %43, align 4, !tbaa !112
  %212 = load float, ptr %44, align 8, !tbaa !113
  %213 = load float, ptr %46, align 8, !tbaa !114
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
  %226 = load double, ptr %222, align 8, !tbaa !34
  %227 = fcmp uno double %226, 0.000000e+00
  br i1 %227, label %272, label %228

228:                                              ; preds = %225
  %229 = fpext float %218 to double
  %230 = getelementptr inbounds %struct._PixelPacket, ptr %204, i64 %220
  %231 = getelementptr inbounds %struct._PixelPacket, ptr %204, i64 %220, i32 2
  %232 = load i16, ptr %231, align 2, !tbaa !115
  %233 = uitofp i16 %232 to double
  %234 = fadd double %226, %233
  %235 = call fastcc double @MagickMin(double noundef %229, double noundef %234) #29
  %236 = fptrunc double %235 to float
  store float %236, ptr %42, align 8, !tbaa !111
  %237 = fpext float %217 to double
  %238 = getelementptr inbounds %struct._PixelPacket, ptr %204, i64 %220, i32 1
  %239 = load i16, ptr %238, align 2, !tbaa !116
  %240 = uitofp i16 %239 to double
  %241 = fadd double %226, %240
  %242 = call fastcc double @MagickMin(double noundef %237, double noundef %241) #29
  %243 = fptrunc double %242 to float
  store float %243, ptr %43, align 4, !tbaa !112
  %244 = fpext float %216 to double
  %245 = load i16, ptr %230, align 2, !tbaa !117
  %246 = uitofp i16 %245 to double
  %247 = fadd double %226, %246
  %248 = call fastcc double @MagickMin(double noundef %244, double noundef %247) #29
  %249 = fptrunc double %248 to float
  store float %249, ptr %44, align 8, !tbaa !113
  %250 = fpext float %221 to double
  %251 = fadd double %226, 6.553500e+04
  %252 = getelementptr inbounds %struct._PixelPacket, ptr %204, i64 %220, i32 3
  %253 = load i16, ptr %252, align 2, !tbaa !118
  %254 = uitofp i16 %253 to double
  %255 = fsub double %251, %254
  %256 = call fastcc double @MagickMin(double noundef %250, double noundef %255) #29
  %257 = fptrunc double %256 to float
  store float %257, ptr %37, align 4, !tbaa !108
  %258 = load i32, ptr %45, align 4, !tbaa !119
  %259 = icmp eq i32 %258, 12
  br i1 %259, label %260, label %272

260:                                              ; preds = %228
  %261 = fpext float %215 to double
  br i1 %82, label %266, label %262

262:                                              ; preds = %260
  %263 = getelementptr inbounds i16, ptr %81, i64 %220
  %264 = load i16, ptr %263, align 2, !tbaa !11
  %265 = zext i16 %264 to i32
  br label %266

266:                                              ; preds = %260, %262
  %267 = phi i32 [ %265, %262 ], [ 0, %260 ]
  %268 = sitofp i32 %267 to double
  %269 = fadd double %226, %268
  %270 = call fastcc double @MagickMin(double noundef %261, double noundef %269) #29
  %271 = fptrunc double %270 to float
  store float %271, ptr %46, align 8, !tbaa !114
  br label %272

272:                                              ; preds = %228, %266, %225, %214
  %273 = phi float [ %215, %228 ], [ %271, %266 ], [ %215, %225 ], [ %215, %214 ]
  %274 = phi float [ %249, %228 ], [ %249, %266 ], [ %216, %225 ], [ %216, %214 ]
  %275 = phi float [ %243, %228 ], [ %243, %266 ], [ %217, %225 ], [ %217, %214 ]
  %276 = phi float [ %236, %228 ], [ %236, %266 ], [ %218, %225 ], [ %218, %214 ]
  %277 = phi float [ %257, %228 ], [ %257, %266 ], [ %221, %225 ], [ %221, %214 ]
  %278 = add nuw nsw i64 %220, 1
  %279 = icmp eq i64 %278, %18
  br i1 %279, label %360, label %214, !llvm.loop !122

280:                                              ; preds = %85
  %281 = load ptr, ptr %39, align 8, !tbaa !33
  %282 = load i64, ptr %24, align 8, !tbaa !25
  br i1 %41, label %325, label %283

283:                                              ; preds = %280
  %284 = load i64, ptr %40, align 8, !tbaa !26
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
  %297 = load double, ptr %295, align 8, !tbaa !34
  %298 = fcmp uno double %297, 0.000000e+00
  br i1 %298, label %315, label %299

299:                                              ; preds = %294
  %300 = load float, ptr %37, align 4, !tbaa !108
  %301 = fpext float %300 to double
  %302 = getelementptr inbounds %struct._PixelPacket, ptr %291, i64 %296, i32 3
  %303 = load i16, ptr %302, align 2, !tbaa !118
  %304 = uitofp i16 %303 to double
  %305 = fadd double %297, %304
  %306 = fcmp olt double %305, %301
  br i1 %306, label %307, label %315

307:                                              ; preds = %299
  %308 = getelementptr inbounds %struct._PixelPacket, ptr %291, i64 %296
  %309 = getelementptr inbounds i16, ptr %290, i64 %296
  call fastcc void @SetMagickPixelPacket(ptr noundef %0, ptr noundef %308, ptr noundef %309, ptr noundef nonnull %6) #29
  %310 = load double, ptr %295, align 8, !tbaa !34
  %311 = load float, ptr %37, align 4, !tbaa !108
  %312 = fpext float %311 to double
  %313 = fadd double %310, %312
  %314 = fptrunc double %313 to float
  store float %314, ptr %37, align 4, !tbaa !108
  br label %315

315:                                              ; preds = %299, %307, %294
  %316 = add nuw nsw i64 %296, 1
  %317 = getelementptr inbounds double, ptr %295, i64 -1
  %318 = icmp eq i64 %316, %282
  br i1 %318, label %319, label %294, !llvm.loop !123

319:                                              ; preds = %315, %289
  %320 = phi ptr [ %292, %289 ], [ %317, %315 ]
  %321 = getelementptr inbounds %struct._PixelPacket, ptr %291, i64 %27
  %322 = getelementptr inbounds i16, ptr %290, i64 %27
  %323 = add nuw i64 %293, 1
  %324 = icmp eq i64 %293, %32
  br i1 %324, label %325, label %289, !llvm.loop !124

325:                                              ; preds = %319, %280
  %326 = getelementptr inbounds %struct._PixelPacket, ptr %87, i64 %19
  br i1 %47, label %327, label %360

327:                                              ; preds = %325
  %328 = load i64, ptr %9, align 8, !tbaa !29
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
  %339 = load double, ptr %335, align 8, !tbaa !34
  %340 = fcmp uno double %339, 0.000000e+00
  br i1 %340, label %357, label %341

341:                                              ; preds = %338
  %342 = load float, ptr %37, align 4, !tbaa !108
  %343 = fpext float %342 to double
  %344 = getelementptr inbounds %struct._PixelPacket, ptr %326, i64 %334, i32 3
  %345 = load i16, ptr %344, align 2, !tbaa !118
  %346 = uitofp i16 %345 to double
  %347 = fadd double %339, %346
  %348 = fcmp olt double %347, %343
  br i1 %348, label %349, label %357

349:                                              ; preds = %341
  %350 = getelementptr inbounds %struct._PixelPacket, ptr %326, i64 %334
  %351 = getelementptr inbounds i16, ptr %81, i64 %334
  call fastcc void @SetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %350, ptr noundef nonnull %351, ptr noundef nonnull %6) #29
  %352 = load double, ptr %335, align 8, !tbaa !34
  %353 = load float, ptr %37, align 4, !tbaa !108
  %354 = fpext float %353 to double
  %355 = fadd double %352, %354
  %356 = fptrunc double %355 to float
  store float %356, ptr %37, align 4, !tbaa !108
  br label %357

357:                                              ; preds = %341, %349, %338, %332
  %358 = add nuw nsw i64 %334, 1
  %359 = icmp eq i64 %358, %18
  br i1 %359, label %360, label %332, !llvm.loop !125

360:                                              ; preds = %272, %357, %202, %325
  br i1 %36, label %361, label %362

361:                                              ; preds = %360
  call fastcc void @SetPixelPacket(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %87, ptr noundef %77) #29
  br label %394

362:                                              ; preds = %90, %360
  br i1 %49, label %367, label %363

363:                                              ; preds = %362
  %364 = load float, ptr %42, align 8, !tbaa !111
  %365 = call fastcc zeroext i16 @ClampToQuantum(float noundef %364) #29
  %366 = getelementptr inbounds %struct._PixelPacket, ptr %87, i64 0, i32 2
  store i16 %365, ptr %366, align 2, !tbaa !115
  br label %367

367:                                              ; preds = %363, %362
  br i1 %51, label %372, label %368

368:                                              ; preds = %367
  %369 = load float, ptr %43, align 4, !tbaa !112
  %370 = call fastcc zeroext i16 @ClampToQuantum(float noundef %369) #29
  %371 = getelementptr inbounds %struct._PixelPacket, ptr %87, i64 0, i32 1
  store i16 %370, ptr %371, align 2, !tbaa !116
  br label %372

372:                                              ; preds = %368, %367
  br i1 %53, label %376, label %373

373:                                              ; preds = %372
  %374 = load float, ptr %44, align 8, !tbaa !113
  %375 = call fastcc zeroext i16 @ClampToQuantum(float noundef %374) #29
  store i16 %375, ptr %87, align 2, !tbaa !117
  br label %376

376:                                              ; preds = %373, %372
  br i1 %55, label %385, label %377

377:                                              ; preds = %376
  %378 = load i32, ptr %56, align 8, !tbaa !126
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %385, label %380

380:                                              ; preds = %377
  %381 = load float, ptr %37, align 4, !tbaa !108
  %382 = call fastcc zeroext i16 @ClampToQuantum(float noundef %381) #29
  %383 = xor i16 %382, -1
  %384 = getelementptr inbounds %struct._PixelPacket, ptr %87, i64 0, i32 3
  store i16 %383, ptr %384, align 2, !tbaa !118
  br label %385

385:                                              ; preds = %380, %377, %376
  br i1 %58, label %394, label %386

386:                                              ; preds = %385
  %387 = load i32, ptr %45, align 4, !tbaa !119
  %388 = icmp ne i32 %387, 12
  %389 = select i1 %388, i1 true, i1 %82
  br i1 %389, label %394, label %390

390:                                              ; preds = %386
  %391 = getelementptr inbounds i16, ptr %77, i64 %86
  %392 = load float, ptr %46, align 8, !tbaa !114
  %393 = call fastcc zeroext i16 @ClampToQuantum(float noundef %392) #29
  store i16 %393, ptr %391, align 2, !tbaa !11
  br label %394

394:                                              ; preds = %385, %386, %390, %361
  %395 = getelementptr inbounds %struct._PixelPacket, ptr %88, i64 %35
  %396 = getelementptr inbounds %struct._PixelPacket, ptr %88, i64 %35, i32 2
  %397 = load i16, ptr %396, align 2, !tbaa !115
  %398 = getelementptr inbounds %struct._PixelPacket, ptr %87, i64 0, i32 2
  %399 = load i16, ptr %398, align 2, !tbaa !115
  %400 = icmp eq i16 %397, %399
  br i1 %400, label %401, label %433

401:                                              ; preds = %394
  %402 = getelementptr inbounds %struct._PixelPacket, ptr %88, i64 %35, i32 1
  %403 = load i16, ptr %402, align 2, !tbaa !116
  %404 = getelementptr inbounds %struct._PixelPacket, ptr %87, i64 0, i32 1
  %405 = load i16, ptr %404, align 2, !tbaa !116
  %406 = icmp eq i16 %403, %405
  br i1 %406, label %407, label %433

407:                                              ; preds = %401
  %408 = load i16, ptr %395, align 2, !tbaa !117
  %409 = load i16, ptr %87, align 2, !tbaa !117
  %410 = icmp eq i16 %408, %409
  br i1 %410, label %411, label %433

411:                                              ; preds = %407
  %412 = getelementptr inbounds %struct._PixelPacket, ptr %88, i64 %35, i32 3
  %413 = load i16, ptr %412, align 2, !tbaa !118
  %414 = getelementptr inbounds %struct._PixelPacket, ptr %87, i64 0, i32 3
  %415 = load i16, ptr %414, align 2, !tbaa !118
  %416 = icmp eq i16 %413, %415
  br i1 %416, label %417, label %433

417:                                              ; preds = %411
  %418 = load i32, ptr %45, align 4, !tbaa !119
  %419 = icmp eq i32 %418, 12
  br i1 %419, label %420, label %435

420:                                              ; preds = %417
  br i1 %83, label %424, label %421

421:                                              ; preds = %420
  %422 = load i16, ptr %84, align 2, !tbaa !11
  %423 = zext i16 %422 to i32
  br label %424

424:                                              ; preds = %420, %421
  %425 = phi i32 [ %423, %421 ], [ 0, %420 ]
  br i1 %82, label %430, label %426

426:                                              ; preds = %424
  %427 = getelementptr inbounds i16, ptr %77, i64 %86
  %428 = load i16, ptr %427, align 2, !tbaa !11
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
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #21
  %439 = add nuw nsw i64 %86, 1
  %440 = load i64, ptr %22, align 8, !tbaa !90
  %441 = icmp slt i64 %439, %440
  br i1 %441, label %85, label %442, !llvm.loop !127

442:                                              ; preds = %435, %75
  %443 = phi i64 [ %63, %75 ], [ %436, %435 ]
  %444 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %21, ptr noundef %4) #36
  %445 = icmp ne i32 %444, 0
  %446 = zext i1 %445 to i32
  %447 = load ptr, ptr %59, align 8, !tbaa !128
  %448 = icmp eq ptr %447, null
  br i1 %448, label %455, label %449

449:                                              ; preds = %442
  %450 = add nsw i64 %65, 1
  %451 = load i64, ptr %28, align 8, !tbaa !102
  %452 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, i64 noundef %65, i64 noundef %451) #29
  %453 = icmp eq i32 %452, 0
  %454 = select i1 %453, i32 0, i32 %446
  br label %455

455:                                              ; preds = %449, %442
  %456 = phi i64 [ %450, %449 ], [ %65, %442 ]
  %457 = phi i32 [ %454, %449 ], [ %446, %442 ]
  %458 = add nuw nsw i64 %64, 1
  %459 = load i64, ptr %28, align 8, !tbaa !102
  %460 = icmp slt i64 %458, %459
  br i1 %460, label %60, label %461, !llvm.loop !107

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
  %499 = load i64, ptr %9, align 8, !tbaa !29
  %500 = add i64 %499, 1
  %501 = call ptr @GetCacheViewVirtualPixels(ptr noundef %20, i64 noundef %19, i64 noundef %496, i64 noundef %27, i64 noundef %500, ptr noundef %4) #36
  %502 = load i64, ptr %22, align 8, !tbaa !90
  %503 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %21, i64 noundef 0, i64 noundef %496, i64 noundef %502, i64 noundef 1, ptr noundef %4) #36
  %504 = icmp eq ptr %501, null
  %505 = icmp eq ptr %503, null
  %506 = select i1 %504, i1 true, i1 %505
  br i1 %506, label %905, label %507

507:                                              ; preds = %498
  %508 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %20) #30
  %509 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %21) #30
  %510 = load i64, ptr %22, align 8, !tbaa !90
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
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #21
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %7) #30
  call fastcc void @SetMagickPixelPacket(ptr noundef %0, ptr noundef %522, ptr noundef %509, ptr noundef nonnull %7) #29
  br i1 %468, label %721, label %525

525:                                              ; preds = %520
  %526 = load float, ptr %469, align 4, !tbaa !108
  %527 = fsub float 6.553500e+04, %526
  store float %527, ptr %469, align 4, !tbaa !108
  br i1 %470, label %528, label %809

528:                                              ; preds = %525
  %529 = load ptr, ptr %471, align 8, !tbaa !33
  %530 = load i64, ptr %24, align 8, !tbaa !25
  %531 = load i64, ptr %9, align 8, !tbaa !29
  %532 = load i64, ptr %472, align 8, !tbaa !26
  %533 = icmp slt i64 %32, %532
  br i1 %533, label %534, label %640

534:                                              ; preds = %528
  %535 = add nsw i64 %531, 1
  %536 = mul i64 %535, %530
  %537 = getelementptr double, ptr %529, i64 %536
  %538 = getelementptr double, ptr %537, i64 -1
  %539 = icmp sgt i64 %530, 0
  %540 = load float, ptr %473, align 8, !tbaa !111
  %541 = load float, ptr %474, align 4, !tbaa !112
  %542 = load float, ptr %475, align 8, !tbaa !113
  %543 = load float, ptr %477, align 8, !tbaa !114
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
  %569 = load double, ptr %566, align 8, !tbaa !34
  %570 = fcmp uno double %569, 0.000000e+00
  br i1 %570, label %615, label %571

571:                                              ; preds = %556
  %572 = fpext float %565 to double
  %573 = getelementptr inbounds %struct._PixelPacket, ptr %550, i64 %567
  %574 = getelementptr inbounds %struct._PixelPacket, ptr %550, i64 %567, i32 2
  %575 = load i16, ptr %574, align 2, !tbaa !115
  %576 = uitofp i16 %575 to double
  %577 = fadd double %569, %576
  %578 = call fastcc double @MagickMin(double noundef %572, double noundef %577) #29
  %579 = fptrunc double %578 to float
  store float %579, ptr %473, align 8, !tbaa !111
  %580 = fpext float %564 to double
  %581 = getelementptr inbounds %struct._PixelPacket, ptr %550, i64 %567, i32 1
  %582 = load i16, ptr %581, align 2, !tbaa !116
  %583 = uitofp i16 %582 to double
  %584 = fadd double %569, %583
  %585 = call fastcc double @MagickMin(double noundef %580, double noundef %584) #29
  %586 = fptrunc double %585 to float
  store float %586, ptr %474, align 4, !tbaa !112
  %587 = fpext float %563 to double
  %588 = load i16, ptr %573, align 2, !tbaa !117
  %589 = uitofp i16 %588 to double
  %590 = fadd double %569, %589
  %591 = call fastcc double @MagickMin(double noundef %587, double noundef %590) #29
  %592 = fptrunc double %591 to float
  store float %592, ptr %475, align 8, !tbaa !113
  %593 = fpext float %568 to double
  %594 = fadd double %569, 6.553500e+04
  %595 = getelementptr inbounds %struct._PixelPacket, ptr %550, i64 %567, i32 3
  %596 = load i16, ptr %595, align 2, !tbaa !118
  %597 = uitofp i16 %596 to double
  %598 = fsub double %594, %597
  %599 = call fastcc double @MagickMin(double noundef %593, double noundef %598) #29
  %600 = fptrunc double %599 to float
  store float %600, ptr %469, align 4, !tbaa !108
  %601 = load i32, ptr %476, align 4, !tbaa !119
  %602 = icmp eq i32 %601, 12
  br i1 %602, label %603, label %615

603:                                              ; preds = %571
  %604 = fpext float %562 to double
  br i1 %555, label %609, label %605

605:                                              ; preds = %603
  %606 = getelementptr inbounds i16, ptr %549, i64 %567
  %607 = load i16, ptr %606, align 2, !tbaa !11
  %608 = zext i16 %607 to i32
  br label %609

609:                                              ; preds = %603, %605
  %610 = phi i32 [ %608, %605 ], [ 0, %603 ]
  %611 = sitofp i32 %610 to double
  %612 = fadd double %569, %611
  %613 = call fastcc double @MagickMin(double noundef %604, double noundef %612) #29
  %614 = fptrunc double %613 to float
  store float %614, ptr %477, align 8, !tbaa !114
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
  br i1 %628, label %629, label %556, !llvm.loop !129

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
  br i1 %639, label %640, label %544, !llvm.loop !130

640:                                              ; preds = %629, %528
  %641 = phi float [ %527, %528 ], [ %634, %629 ]
  %642 = getelementptr inbounds %struct._PixelPacket, ptr %522, i64 %19
  %643 = icmp slt i64 %478, %530
  br i1 %643, label %644, label %807

644:                                              ; preds = %640
  %645 = mul i64 %531, %530
  %646 = getelementptr double, ptr %529, i64 %645
  %647 = load i64, ptr %8, align 8, !tbaa !28
  %648 = getelementptr double, ptr %646, i64 %647
  %649 = sub i64 %521, %18
  %650 = load i64, ptr %22, align 8, !tbaa !90
  %651 = load float, ptr %473, align 8, !tbaa !111
  %652 = load float, ptr %474, align 4, !tbaa !112
  %653 = load float, ptr %475, align 8, !tbaa !113
  %654 = load float, ptr %477, align 8, !tbaa !114
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
  %667 = load double, ptr %663, align 8, !tbaa !34
  %668 = fcmp uno double %667, 0.000000e+00
  br i1 %668, label %713, label %669

669:                                              ; preds = %666
  %670 = fpext float %659 to double
  %671 = getelementptr inbounds %struct._PixelPacket, ptr %642, i64 %660
  %672 = getelementptr inbounds %struct._PixelPacket, ptr %642, i64 %660, i32 2
  %673 = load i16, ptr %672, align 2, !tbaa !115
  %674 = uitofp i16 %673 to double
  %675 = fadd double %667, %674
  %676 = call fastcc double @MagickMin(double noundef %670, double noundef %675) #29
  %677 = fptrunc double %676 to float
  store float %677, ptr %473, align 8, !tbaa !111
  %678 = fpext float %658 to double
  %679 = getelementptr inbounds %struct._PixelPacket, ptr %642, i64 %660, i32 1
  %680 = load i16, ptr %679, align 2, !tbaa !116
  %681 = uitofp i16 %680 to double
  %682 = fadd double %667, %681
  %683 = call fastcc double @MagickMin(double noundef %678, double noundef %682) #29
  %684 = fptrunc double %683 to float
  store float %684, ptr %474, align 4, !tbaa !112
  %685 = fpext float %657 to double
  %686 = load i16, ptr %671, align 2, !tbaa !117
  %687 = uitofp i16 %686 to double
  %688 = fadd double %667, %687
  %689 = call fastcc double @MagickMin(double noundef %685, double noundef %688) #29
  %690 = fptrunc double %689 to float
  store float %690, ptr %475, align 8, !tbaa !113
  %691 = fpext float %662 to double
  %692 = fadd double %667, 6.553500e+04
  %693 = getelementptr inbounds %struct._PixelPacket, ptr %642, i64 %660, i32 3
  %694 = load i16, ptr %693, align 2, !tbaa !118
  %695 = uitofp i16 %694 to double
  %696 = fsub double %692, %695
  %697 = call fastcc double @MagickMin(double noundef %691, double noundef %696) #29
  %698 = fptrunc double %697 to float
  store float %698, ptr %469, align 4, !tbaa !108
  %699 = load i32, ptr %476, align 4, !tbaa !119
  %700 = icmp eq i32 %699, 12
  br i1 %700, label %701, label %713

701:                                              ; preds = %669
  %702 = fpext float %656 to double
  br i1 %517, label %707, label %703

703:                                              ; preds = %701
  %704 = getelementptr inbounds i16, ptr %516, i64 %660
  %705 = load i16, ptr %704, align 2, !tbaa !11
  %706 = zext i16 %705 to i32
  br label %707

707:                                              ; preds = %701, %703
  %708 = phi i32 [ %706, %703 ], [ 0, %701 ]
  %709 = sitofp i32 %708 to double
  %710 = fadd double %667, %709
  %711 = call fastcc double @MagickMin(double noundef %702, double noundef %710) #29
  %712 = fptrunc double %711 to float
  store float %712, ptr %477, align 8, !tbaa !114
  br label %713

713:                                              ; preds = %669, %707, %666, %655
  %714 = phi float [ %656, %669 ], [ %712, %707 ], [ %656, %666 ], [ %656, %655 ]
  %715 = phi float [ %690, %669 ], [ %690, %707 ], [ %657, %666 ], [ %657, %655 ]
  %716 = phi float [ %684, %669 ], [ %684, %707 ], [ %658, %666 ], [ %658, %655 ]
  %717 = phi float [ %677, %669 ], [ %677, %707 ], [ %659, %666 ], [ %659, %655 ]
  %718 = phi float [ %698, %669 ], [ %698, %707 ], [ %662, %666 ], [ %662, %655 ]
  %719 = add nsw i64 %660, 1
  %720 = icmp eq i64 %719, %530
  br i1 %720, label %807, label %655, !llvm.loop !131

721:                                              ; preds = %520
  %722 = load ptr, ptr %471, align 8, !tbaa !33
  %723 = load i64, ptr %24, align 8, !tbaa !25
  %724 = load i64, ptr %9, align 8, !tbaa !29
  %725 = load i64, ptr %472, align 8, !tbaa !26
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
  %741 = load double, ptr %739, align 8, !tbaa !34
  %742 = fcmp uno double %741, 0.000000e+00
  br i1 %742, label %759, label %743

743:                                              ; preds = %738
  %744 = load float, ptr %469, align 4, !tbaa !108
  %745 = fpext float %744 to double
  %746 = getelementptr inbounds %struct._PixelPacket, ptr %735, i64 %740, i32 3
  %747 = load i16, ptr %746, align 2, !tbaa !118
  %748 = uitofp i16 %747 to double
  %749 = fadd double %741, %748
  %750 = fcmp olt double %749, %745
  br i1 %750, label %751, label %759

751:                                              ; preds = %743
  %752 = getelementptr inbounds %struct._PixelPacket, ptr %735, i64 %740
  %753 = getelementptr inbounds i16, ptr %734, i64 %740
  call fastcc void @SetMagickPixelPacket(ptr noundef %0, ptr noundef %752, ptr noundef %753, ptr noundef nonnull %7) #29
  %754 = load double, ptr %739, align 8, !tbaa !34
  %755 = load float, ptr %469, align 4, !tbaa !108
  %756 = fpext float %755 to double
  %757 = fadd double %754, %756
  %758 = fptrunc double %757 to float
  store float %758, ptr %469, align 4, !tbaa !108
  br label %759

759:                                              ; preds = %743, %751, %738
  %760 = add nuw nsw i64 %740, 1
  %761 = getelementptr inbounds double, ptr %739, i64 -1
  %762 = icmp eq i64 %760, %723
  br i1 %762, label %763, label %738, !llvm.loop !132

763:                                              ; preds = %759, %733
  %764 = phi ptr [ %736, %733 ], [ %761, %759 ]
  %765 = getelementptr inbounds %struct._PixelPacket, ptr %735, i64 %27
  %766 = getelementptr inbounds i16, ptr %734, i64 %27
  %767 = add nsw i64 %737, 1
  %768 = icmp eq i64 %767, %725
  br i1 %768, label %769, label %733, !llvm.loop !133

769:                                              ; preds = %763, %721
  %770 = getelementptr inbounds %struct._PixelPacket, ptr %522, i64 %19
  %771 = icmp slt i64 %478, %723
  br i1 %771, label %772, label %807

772:                                              ; preds = %769
  %773 = mul i64 %724, %723
  %774 = getelementptr double, ptr %722, i64 %773
  %775 = load i64, ptr %8, align 8, !tbaa !28
  %776 = getelementptr double, ptr %774, i64 %775
  %777 = sub i64 %521, %18
  %778 = load i64, ptr %22, align 8, !tbaa !90
  br label %779

779:                                              ; preds = %772, %804
  %780 = phi i64 [ %478, %772 ], [ %805, %804 ]
  %781 = phi ptr [ %776, %772 ], [ %782, %804 ]
  %782 = getelementptr inbounds double, ptr %781, i64 -1
  %783 = add i64 %777, %780
  %784 = icmp slt i64 %783, %778
  br i1 %784, label %785, label %804

785:                                              ; preds = %779
  %786 = load double, ptr %782, align 8, !tbaa !34
  %787 = fcmp uno double %786, 0.000000e+00
  br i1 %787, label %804, label %788

788:                                              ; preds = %785
  %789 = load float, ptr %469, align 4, !tbaa !108
  %790 = fpext float %789 to double
  %791 = getelementptr inbounds %struct._PixelPacket, ptr %770, i64 %780, i32 3
  %792 = load i16, ptr %791, align 2, !tbaa !118
  %793 = uitofp i16 %792 to double
  %794 = fadd double %786, %793
  %795 = fcmp olt double %794, %790
  br i1 %795, label %796, label %804

796:                                              ; preds = %788
  %797 = getelementptr inbounds %struct._PixelPacket, ptr %770, i64 %780
  %798 = getelementptr inbounds i16, ptr %516, i64 %780
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef %797, ptr noundef %798, ptr noundef nonnull %7) #29
  %799 = load double, ptr %782, align 8, !tbaa !34
  %800 = load float, ptr %469, align 4, !tbaa !108
  %801 = fpext float %800 to double
  %802 = fadd double %799, %801
  %803 = fptrunc double %802 to float
  store float %803, ptr %469, align 4, !tbaa !108
  br label %804

804:                                              ; preds = %788, %796, %785, %779
  %805 = add nsw i64 %780, 1
  %806 = icmp eq i64 %805, %723
  br i1 %806, label %807, label %779, !llvm.loop !134

807:                                              ; preds = %713, %804, %640, %769
  br i1 %468, label %808, label %809

808:                                              ; preds = %807
  call fastcc void @SetPixelPacket(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %522, ptr noundef %509) #29
  br label %841

809:                                              ; preds = %525, %807
  br i1 %480, label %814, label %810

810:                                              ; preds = %809
  %811 = load float, ptr %473, align 8, !tbaa !111
  %812 = call fastcc zeroext i16 @ClampToQuantum(float noundef %811) #29
  %813 = getelementptr inbounds %struct._PixelPacket, ptr %522, i64 0, i32 2
  store i16 %812, ptr %813, align 2, !tbaa !115
  br label %814

814:                                              ; preds = %810, %809
  br i1 %482, label %819, label %815

815:                                              ; preds = %814
  %816 = load float, ptr %474, align 4, !tbaa !112
  %817 = call fastcc zeroext i16 @ClampToQuantum(float noundef %816) #29
  %818 = getelementptr inbounds %struct._PixelPacket, ptr %522, i64 0, i32 1
  store i16 %817, ptr %818, align 2, !tbaa !116
  br label %819

819:                                              ; preds = %815, %814
  br i1 %484, label %823, label %820

820:                                              ; preds = %819
  %821 = load float, ptr %475, align 8, !tbaa !113
  %822 = call fastcc zeroext i16 @ClampToQuantum(float noundef %821) #29
  store i16 %822, ptr %522, align 2, !tbaa !117
  br label %823

823:                                              ; preds = %820, %819
  br i1 %486, label %832, label %824

824:                                              ; preds = %823
  %825 = load i32, ptr %487, align 8, !tbaa !126
  %826 = icmp eq i32 %825, 0
  br i1 %826, label %832, label %827

827:                                              ; preds = %824
  %828 = load float, ptr %469, align 4, !tbaa !108
  %829 = call fastcc zeroext i16 @ClampToQuantum(float noundef %828) #29
  %830 = xor i16 %829, -1
  %831 = getelementptr inbounds %struct._PixelPacket, ptr %522, i64 0, i32 3
  store i16 %830, ptr %831, align 2, !tbaa !118
  br label %832

832:                                              ; preds = %827, %824, %823
  br i1 %489, label %841, label %833

833:                                              ; preds = %832
  %834 = load i32, ptr %476, align 4, !tbaa !119
  %835 = icmp ne i32 %834, 12
  %836 = select i1 %835, i1 true, i1 %517
  br i1 %836, label %841, label %837

837:                                              ; preds = %833
  %838 = getelementptr inbounds i16, ptr %509, i64 %521
  %839 = load float, ptr %477, align 8, !tbaa !114
  %840 = call fastcc zeroext i16 @ClampToQuantum(float noundef %839) #29
  store i16 %840, ptr %838, align 2, !tbaa !11
  br label %841

841:                                              ; preds = %832, %833, %837, %808
  %842 = getelementptr inbounds %struct._PixelPacket, ptr %523, i64 %18
  %843 = getelementptr inbounds %struct._PixelPacket, ptr %523, i64 %18, i32 2
  %844 = load i16, ptr %843, align 2, !tbaa !115
  %845 = getelementptr inbounds %struct._PixelPacket, ptr %522, i64 0, i32 2
  %846 = load i16, ptr %845, align 2, !tbaa !115
  %847 = icmp eq i16 %844, %846
  br i1 %847, label %848, label %880

848:                                              ; preds = %841
  %849 = getelementptr inbounds %struct._PixelPacket, ptr %523, i64 %18, i32 1
  %850 = load i16, ptr %849, align 2, !tbaa !116
  %851 = getelementptr inbounds %struct._PixelPacket, ptr %522, i64 0, i32 1
  %852 = load i16, ptr %851, align 2, !tbaa !116
  %853 = icmp eq i16 %850, %852
  br i1 %853, label %854, label %880

854:                                              ; preds = %848
  %855 = load i16, ptr %842, align 2, !tbaa !117
  %856 = load i16, ptr %522, align 2, !tbaa !117
  %857 = icmp eq i16 %855, %856
  br i1 %857, label %858, label %880

858:                                              ; preds = %854
  %859 = getelementptr inbounds %struct._PixelPacket, ptr %523, i64 %18, i32 3
  %860 = load i16, ptr %859, align 2, !tbaa !118
  %861 = getelementptr inbounds %struct._PixelPacket, ptr %522, i64 0, i32 3
  %862 = load i16, ptr %861, align 2, !tbaa !118
  %863 = icmp eq i16 %860, %862
  br i1 %863, label %864, label %880

864:                                              ; preds = %858
  %865 = load i32, ptr %476, align 4, !tbaa !119
  %866 = icmp eq i32 %865, 12
  br i1 %866, label %867, label %882

867:                                              ; preds = %864
  br i1 %518, label %871, label %868

868:                                              ; preds = %867
  %869 = load i16, ptr %519, align 2, !tbaa !11
  %870 = zext i16 %869 to i32
  br label %871

871:                                              ; preds = %867, %868
  %872 = phi i32 [ %870, %868 ], [ 0, %867 ]
  br i1 %517, label %877, label %873

873:                                              ; preds = %871
  %874 = getelementptr inbounds i16, ptr %509, i64 %521
  %875 = load i16, ptr %874, align 2, !tbaa !11
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
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #21
  %886 = add nsw i64 %521, -1
  %887 = icmp sgt i64 %521, 0
  br i1 %887, label %520, label %888, !llvm.loop !135

888:                                              ; preds = %882, %507
  %889 = phi i64 [ %495, %507 ], [ %883, %882 ]
  %890 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %21, ptr noundef %4) #36
  %891 = icmp ne i32 %890, 0
  %892 = zext i1 %891 to i32
  %893 = load ptr, ptr %490, align 8, !tbaa !128
  %894 = icmp eq ptr %893, null
  br i1 %894, label %901, label %895

895:                                              ; preds = %888
  %896 = add nsw i64 %494, 1
  %897 = load i64, ptr %28, align 8, !tbaa !102
  %898 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, i64 noundef %494, i64 noundef %897) #29
  %899 = icmp eq i32 %898, 0
  %900 = select i1 %899, i32 0, i32 %892
  br label %901

901:                                              ; preds = %895, %888
  %902 = phi i64 [ %494, %888 ], [ %896, %895 ]
  %903 = phi i32 [ %892, %888 ], [ %900, %895 ]
  %904 = icmp sgt i64 %492, 1
  br i1 %904, label %491, label %905, !llvm.loop !136

905:                                              ; preds = %901, %491, %498, %16, %461
  %906 = phi i64 [ %463, %461 ], [ 0, %16 ], [ %495, %498 ], [ %495, %491 ], [ %889, %901 ]
  %907 = phi i32 [ %465, %461 ], [ 1, %16 ], [ 0, %498 ], [ 0, %491 ], [ %903, %901 ]
  %908 = call ptr @DestroyCacheView(ptr noundef %21) #30
  %909 = call ptr @DestroyCacheView(ptr noundef %20) #30
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
define internal fastcc i64 @MorphologyPrimitive(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, double noundef %5, ptr noundef %6) unnamed_addr #0 {
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca double, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca %struct._ExceptionInfo, align 8
  %24 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %8, align 8, !tbaa !9
  store ptr %1, ptr %9, align 8, !tbaa !9
  store i32 %2, ptr %10, align 4, !tbaa !43
  store i32 %3, ptr %11, align 4, !tbaa !43
  store ptr %4, ptr %12, align 8, !tbaa !9
  store double %5, ptr %13, align 8, !tbaa !34
  store ptr %6, ptr %14, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %22) #21
  store i32 1, ptr %21, align 4, !tbaa !43
  store i64 0, ptr %22, align 8, !tbaa !137
  %25 = tail call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %6) #30
  store ptr %25, ptr %15, align 8, !tbaa !9
  %26 = tail call ptr @AcquireAuthenticCacheView(ptr noundef %1, ptr noundef %6) #30
  store ptr %26, ptr %16, align 8, !tbaa !9
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %28 = load i64, ptr %27, align 8, !tbaa !90
  %29 = getelementptr inbounds %struct.KernelInfo, ptr %4, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !25
  %31 = add i64 %28, -1
  %32 = add i64 %31, %30
  store i64 %32, ptr %18, align 8, !tbaa !44
  %33 = getelementptr inbounds %struct.KernelInfo, ptr %4, i64 0, i32 3
  %34 = load i64, ptr %33, align 8, !tbaa !28
  store i64 %34, ptr %19, align 8, !tbaa !44
  %35 = getelementptr inbounds %struct.KernelInfo, ptr %4, i64 0, i32 4
  %36 = load i64, ptr %35, align 8, !tbaa !29
  store i64 %36, ptr %20, align 8, !tbaa !44
  switch i32 %2, label %44 [
    i32 1, label %37
    i32 4, label %37
    i32 6, label %37
    i32 22, label %37
  ]

37:                                               ; preds = %7, %7, %7, %7
  %38 = xor i64 %34, -1
  %39 = add i64 %30, %38
  store i64 %39, ptr %19, align 8, !tbaa !44
  %40 = getelementptr inbounds %struct.KernelInfo, ptr %4, i64 0, i32 2
  %41 = load i64, ptr %40, align 8, !tbaa !26
  %42 = xor i64 %36, -1
  %43 = add i64 %41, %42
  store i64 %43, ptr %20, align 8, !tbaa !44
  br label %44

44:                                               ; preds = %7, %37
  %45 = tail call fastcc i64 @GetOpenMPMaximumThreads() #29, !range !138
  %46 = tail call ptr @AcquireQuantumMemory(i64 noundef %45, i64 noundef 8) #34
  store ptr %46, ptr %17, align 8, !tbaa !9
  %47 = icmp eq ptr %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = tail call fastcc i64 @GetOpenMPMaximumThreads() #29, !range !138
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %58, label %64

51:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %23) #21
  call void @GetExceptionInfo(ptr noundef nonnull %23) #30
  %52 = tail call ptr @__errno_location() #31
  %53 = load i32, ptr %52, align 4, !tbaa !43
  %54 = call ptr @GetExceptionMessage(i32 noundef %53) #30
  %55 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %23, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.85, i64 noundef 2622, i32 noundef 700, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.97, ptr noundef %54) #30
  %56 = call ptr @DestroyString(ptr noundef %54) #30
  call void @CatchException(ptr noundef nonnull %23) #30
  %57 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %23) #30
  call void @MagickCoreTerminus() #30
  call void @_exit(i32 noundef 1) #37
  unreachable

58:                                               ; preds = %48, %58
  %59 = phi i64 [ %61, %58 ], [ 0, %48 ]
  %60 = getelementptr inbounds i64, ptr %46, i64 %59
  store i64 0, ptr %60, align 8, !tbaa !44
  %61 = add nuw nsw i64 %59, 1
  %62 = tail call fastcc i64 @GetOpenMPMaximumThreads() #29, !range !138
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %58, label %64, !llvm.loop !139

64:                                               ; preds = %58, %48
  %65 = icmp eq i32 %2, 1
  br i1 %65, label %66, label %117

66:                                               ; preds = %64
  %67 = load i64, ptr %29, align 8, !tbaa !25
  %68 = icmp eq i64 %67, 1
  br i1 %68, label %69, label %117

69:                                               ; preds = %66
  %70 = load i64, ptr %27, align 8, !tbaa !90
  %71 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #30
  %72 = shl i64 %71, 5
  %73 = icmp ugt i64 %70, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %69
  %75 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #30
  %76 = icmp eq i32 %75, 3
  br i1 %76, label %82, label %77

77:                                               ; preds = %74
  %78 = tail call i32 @GetImagePixelCacheType(ptr noundef %1) #30
  %79 = icmp eq i32 %78, 3
  br i1 %79, label %82, label %80

80:                                               ; preds = %77
  %81 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #30
  br label %86

82:                                               ; preds = %77, %74, %69
  %83 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #30
  %84 = icmp ult i64 %83, 2
  %85 = select i1 %84, i64 1, i64 2
  br label %86

86:                                               ; preds = %82, %80
  %87 = phi i64 [ %81, %80 ], [ %85, %82 ]
  %88 = trunc i64 %87 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %24, i32 %88)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 12, ptr nonnull @MorphologyPrimitive.omp_outlined, ptr nonnull %8, ptr nonnull %21, ptr nonnull %15, ptr nonnull %20, ptr nonnull %12, ptr nonnull %14, ptr nonnull %16, ptr nonnull %9, ptr nonnull %13, ptr nonnull %11, ptr nonnull %17, ptr nonnull %22)
  %89 = load ptr, ptr %8, align 8, !tbaa !9
  %90 = getelementptr inbounds %struct._Image, ptr %89, i64 0, i32 77
  %91 = load i32, ptr %90, align 8, !tbaa !140
  %92 = load ptr, ptr %9, align 8, !tbaa !9
  %93 = getelementptr inbounds %struct._Image, ptr %92, i64 0, i32 77
  store i32 %91, ptr %93, align 8, !tbaa !140
  %94 = load ptr, ptr %16, align 8, !tbaa !9
  %95 = call ptr @DestroyCacheView(ptr noundef %94) #30
  store ptr %95, ptr %16, align 8, !tbaa !9
  %96 = load ptr, ptr %15, align 8, !tbaa !9
  %97 = call ptr @DestroyCacheView(ptr noundef %96) #30
  store ptr %97, ptr %15, align 8, !tbaa !9
  %98 = call fastcc i64 @GetOpenMPMaximumThreads() #29, !range !138
  %99 = icmp sgt i64 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %86, %100
  %101 = phi i64 [ %107, %100 ], [ 0, %86 ]
  %102 = phi i64 [ %106, %100 ], [ 0, %86 ]
  %103 = load ptr, ptr %17, align 8, !tbaa !9
  %104 = getelementptr inbounds i64, ptr %103, i64 %101
  %105 = load i64, ptr %104, align 8, !tbaa !44
  %106 = add i64 %105, %102
  %107 = add nuw nsw i64 %101, 1
  %108 = call fastcc i64 @GetOpenMPMaximumThreads() #29, !range !138
  %109 = icmp slt i64 %107, %108
  br i1 %109, label %100, label %110, !llvm.loop !141

110:                                              ; preds = %100, %86
  %111 = phi i64 [ 0, %86 ], [ %106, %100 ]
  %112 = load ptr, ptr %17, align 8, !tbaa !9
  %113 = call ptr @RelinquishMagickMemory(ptr noundef %112) #30
  %114 = load i32, ptr %21, align 4, !tbaa !43
  %115 = icmp eq i32 %114, 0
  %116 = select i1 %115, i64 0, i64 %111
  br label %161

117:                                              ; preds = %66, %64
  %118 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %119 = load i64, ptr %118, align 8, !tbaa !102
  %120 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #30
  %121 = shl i64 %120, 5
  %122 = icmp ugt i64 %119, %121
  br i1 %122, label %123, label %131

123:                                              ; preds = %117
  %124 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #30
  %125 = icmp eq i32 %124, 3
  br i1 %125, label %131, label %126

126:                                              ; preds = %123
  %127 = tail call i32 @GetImagePixelCacheType(ptr noundef %1) #30
  %128 = icmp eq i32 %127, 3
  br i1 %128, label %131, label %129

129:                                              ; preds = %126
  %130 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #30
  br label %135

131:                                              ; preds = %126, %123, %117
  %132 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #30
  %133 = icmp ult i64 %132, 2
  %134 = select i1 %133, i64 1, i64 2
  br label %135

135:                                              ; preds = %131, %129
  %136 = phi i64 [ %130, %129 ], [ %134, %131 ]
  %137 = trunc i64 %136 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %24, i32 %137)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 15, ptr nonnull @MorphologyPrimitive.omp_outlined.98, ptr nonnull %8, ptr nonnull %21, ptr nonnull %15, ptr nonnull %19, ptr nonnull %20, ptr nonnull %18, ptr nonnull %12, ptr nonnull %14, ptr nonnull %16, ptr nonnull %9, ptr nonnull %10, ptr nonnull %13, ptr nonnull %11, ptr nonnull %17, ptr nonnull %22)
  %138 = load ptr, ptr %16, align 8, !tbaa !9
  %139 = call ptr @DestroyCacheView(ptr noundef %138) #30
  store ptr %139, ptr %16, align 8, !tbaa !9
  %140 = load ptr, ptr %15, align 8, !tbaa !9
  %141 = call ptr @DestroyCacheView(ptr noundef %140) #30
  store ptr %141, ptr %15, align 8, !tbaa !9
  %142 = call fastcc i64 @GetOpenMPMaximumThreads() #29, !range !138
  %143 = icmp sgt i64 %142, 0
  br i1 %143, label %144, label %154

144:                                              ; preds = %135, %144
  %145 = phi i64 [ %151, %144 ], [ 0, %135 ]
  %146 = phi i64 [ %150, %144 ], [ 0, %135 ]
  %147 = load ptr, ptr %17, align 8, !tbaa !9
  %148 = getelementptr inbounds i64, ptr %147, i64 %145
  %149 = load i64, ptr %148, align 8, !tbaa !44
  %150 = add i64 %149, %146
  %151 = add nuw nsw i64 %145, 1
  %152 = call fastcc i64 @GetOpenMPMaximumThreads() #29, !range !138
  %153 = icmp slt i64 %151, %152
  br i1 %153, label %144, label %154, !llvm.loop !142

154:                                              ; preds = %144, %135
  %155 = phi i64 [ 0, %135 ], [ %150, %144 ]
  %156 = load ptr, ptr %17, align 8, !tbaa !9
  %157 = call ptr @RelinquishMagickMemory(ptr noundef %156) #30
  %158 = load i32, ptr %21, align 4, !tbaa !43
  %159 = icmp eq i32 %158, 0
  %160 = select i1 %159, i64 -1, i64 %155
  br label %161

161:                                              ; preds = %154, %110
  %162 = phi i64 [ %116, %110 ], [ %160, %154 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %22) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #21
  ret i64 %162
}

; Function Attrs: optsize
declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: hot optsize
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #17

; Function Attrs: hot optsize
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #17

; Function Attrs: optsize
declare ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @SetMagickPixelPacket(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #18 {
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  %6 = load <4 x i16>, ptr %1, align 2, !tbaa !11
  %7 = uitofp <4 x i16> %6 to <4 x float>
  %8 = shufflevector <4 x float> %7, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  store <4 x float> %8, ptr %5, align 8, !tbaa !143
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !119
  %11 = icmp eq i32 %10, 12
  %12 = icmp ne ptr %2, null
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i16, ptr %2, align 2, !tbaa !11
  %16 = uitofp i16 %15 to float
  %17 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  store float %16, ptr %17, align 8, !tbaa !114
  br label %18

18:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @SetPixelPacket(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr noundef writeonly %3) unnamed_addr #18 {
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %6 = load float, ptr %5, align 8, !tbaa !111
  %7 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %6) #29
  %8 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 2
  store i16 %7, ptr %8, align 2, !tbaa !115
  %9 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %10 = load float, ptr %9, align 4, !tbaa !112
  %11 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %10) #29
  %12 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 1
  store i16 %11, ptr %12, align 2, !tbaa !116
  %13 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %14 = load float, ptr %13, align 8, !tbaa !113
  %15 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %14) #29
  store i16 %15, ptr %2, align 2, !tbaa !117
  %16 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %17 = load float, ptr %16, align 4, !tbaa !108
  %18 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %17) #29
  %19 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 3
  store i16 %18, ptr %19, align 2, !tbaa !118
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !119
  %22 = icmp eq i32 %21, 12
  br i1 %22, label %28, label %23

23:                                               ; preds = %4
  %24 = load i32, ptr %0, align 8, !tbaa !144
  %25 = icmp eq i32 %24, 2
  %26 = icmp ne ptr %3, null
  %27 = and i1 %26, %25
  br i1 %27, label %30, label %34

28:                                               ; preds = %4
  %29 = icmp eq ptr %3, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %23, %28
  %31 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %32 = load float, ptr %31, align 8, !tbaa !114
  %33 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %32) #29
  store i16 %33, ptr %3, align 2, !tbaa !11
  br label %34

34:                                               ; preds = %28, %30, %23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ClampToQuantum(float noundef %0) unnamed_addr #10 {
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
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #17

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @SetImageProgress(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #21
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %6 = load ptr, ptr %5, align 8, !tbaa !128
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.93, ptr noundef nonnull %9) #30
  %11 = load ptr, ptr %5, align 8, !tbaa !128
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %13 = load ptr, ptr %12, align 8, !tbaa !145
  %14 = call i32 %11(ptr noundef nonnull %4, i64 noundef %1, i64 noundef %2, ptr noundef %13) #30
  br label %15

15:                                               ; preds = %3, %8
  %16 = phi i32 [ %14, %8 ], [ 1, %3 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #21
  ret i32 %16
}

; Function Attrs: optsize
declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @GetOpenMPMaximumThreads() unnamed_addr #0 {
  %1 = tail call i32 @omp_get_max_threads() #29
  %2 = sext i32 %1 to i64
  ret i64 %2
}

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
declare void @_exit(i32 noundef) local_unnamed_addr #19

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @MorphologyPrimitive.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %9, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %10, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %11, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %12, ptr nocapture noundef nonnull align 8 dereferenceable(8) %13) #20 {
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = load ptr, ptr %2, align 8, !tbaa !9
  %20 = getelementptr inbounds %struct._Image, ptr %19, i64 0, i32 7
  %21 = load i64, ptr %20, align 8, !tbaa !90
  %22 = add nsw i64 %21, -1
  %23 = icmp sgt i64 %21, 0
  br i1 %23, label %24, label %379

24:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #21
  store i64 0, ptr %15, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #21
  store i64 %22, ptr %16, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #21
  store i64 1, ptr %17, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #21
  store i32 0, ptr %18, align 4, !tbaa !43
  %25 = load i32, ptr %0, align 4, !tbaa !43
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %25, i32 33, ptr nonnull %18, ptr nonnull %15, ptr nonnull %16, ptr nonnull %17, i64 1, i64 4)
  %26 = load i64, ptr %16, align 8
  %27 = call i64 @llvm.smin.i64(i64 %26, i64 %22)
  store i64 %27, ptr %16, align 8, !tbaa !44
  %28 = load i64, ptr %15, align 8, !tbaa !44
  %29 = icmp sgt i64 %28, %27
  br i1 %29, label %378, label %30

30:                                               ; preds = %24, %370
  %31 = phi i64 [ %376, %370 ], [ %27, %24 ]
  %32 = phi i64 [ %374, %370 ], [ %28, %24 ]
  %33 = icmp sgt i64 %32, %31
  br i1 %33, label %370, label %34

34:                                               ; preds = %30, %364
  %35 = phi i64 [ %365, %364 ], [ %32, %30 ]
  %36 = call fastcc i32 @GetOpenMPThreadId() #29
  %37 = load i32, ptr %3, align 4, !tbaa !43
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %364, label %39

39:                                               ; preds = %34
  %40 = load ptr, ptr %4, align 8, !tbaa !9
  %41 = load i64, ptr %5, align 8, !tbaa !44
  %42 = sub nsw i64 0, %41
  %43 = load ptr, ptr %2, align 8, !tbaa !9
  %44 = getelementptr inbounds %struct._Image, ptr %43, i64 0, i32 8
  %45 = load i64, ptr %44, align 8, !tbaa !102
  %46 = load ptr, ptr %6, align 8, !tbaa !9
  %47 = getelementptr inbounds %struct.KernelInfo, ptr %46, i64 0, i32 2
  %48 = load i64, ptr %47, align 8, !tbaa !26
  %49 = add i64 %45, -1
  %50 = add i64 %49, %48
  %51 = load ptr, ptr %7, align 8, !tbaa !9
  %52 = call ptr @GetCacheViewVirtualPixels(ptr noundef %40, i64 noundef %35, i64 noundef %42, i64 noundef 1, i64 noundef %50, ptr noundef %51) #36
  %53 = load ptr, ptr %8, align 8, !tbaa !9
  %54 = load ptr, ptr %9, align 8, !tbaa !9
  %55 = getelementptr inbounds %struct._Image, ptr %54, i64 0, i32 8
  %56 = load i64, ptr %55, align 8, !tbaa !102
  %57 = load ptr, ptr %7, align 8, !tbaa !9
  %58 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %53, i64 noundef %35, i64 noundef 0, i64 noundef 1, i64 noundef %56, ptr noundef %57) #36
  %59 = icmp eq ptr %52, null
  %60 = icmp eq ptr %58, null
  %61 = select i1 %59, i1 true, i1 %60
  br i1 %61, label %363, label %62

62:                                               ; preds = %39
  %63 = load ptr, ptr %4, align 8, !tbaa !9
  %64 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %63) #30
  %65 = load ptr, ptr %8, align 8, !tbaa !9
  %66 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %65) #30
  %67 = load i64, ptr %5, align 8, !tbaa !44
  %68 = load ptr, ptr %2, align 8, !tbaa !9
  %69 = getelementptr inbounds %struct._Image, ptr %68, i64 0, i32 8
  %70 = load i64, ptr %69, align 8, !tbaa !102
  %71 = icmp sgt i64 %70, 0
  br i1 %71, label %72, label %344

72:                                               ; preds = %62
  %73 = icmp eq ptr %66, null
  %74 = icmp eq ptr %64, null
  %75 = getelementptr inbounds i16, ptr %64, i64 %67
  %76 = sext i32 %36 to i64
  br label %77

77:                                               ; preds = %72, %337
  %78 = phi ptr [ %52, %72 ], [ %338, %337 ]
  %79 = phi i64 [ 0, %72 ], [ %340, %337 ]
  %80 = phi ptr [ %58, %72 ], [ %339, %337 ]
  %81 = getelementptr inbounds %struct._PixelPacket, ptr %78, i64 %67
  %82 = load i64, ptr %81, align 2
  store i64 %82, ptr %80, align 2
  %83 = load ptr, ptr %2, align 8, !tbaa !9
  %84 = getelementptr inbounds %struct._Image, ptr %83, i64 0, i32 1
  %85 = load i32, ptr %84, align 4, !tbaa !119
  %86 = icmp eq i32 %85, 12
  br i1 %86, label %87, label %94

87:                                               ; preds = %77
  %88 = getelementptr inbounds i16, ptr %66, i64 %79
  br i1 %73, label %94, label %89

89:                                               ; preds = %87
  br i1 %74, label %92, label %90

90:                                               ; preds = %89
  %91 = load i16, ptr %75, align 2, !tbaa !11
  br label %92

92:                                               ; preds = %89, %90
  %93 = phi i16 [ %91, %90 ], [ 0, %89 ]
  store i16 %93, ptr %88, align 2, !tbaa !11
  br label %94

94:                                               ; preds = %87, %92, %77
  %95 = load double, ptr %10, align 8, !tbaa !34
  %96 = load ptr, ptr %6, align 8, !tbaa !9
  %97 = getelementptr inbounds %struct.KernelInfo, ptr %96, i64 0, i32 5
  %98 = load ptr, ptr %97, align 8, !tbaa !33
  %99 = getelementptr inbounds %struct.KernelInfo, ptr %96, i64 0, i32 2
  %100 = load i64, ptr %99, align 8, !tbaa !26
  %101 = getelementptr double, ptr %98, i64 %100
  %102 = getelementptr double, ptr %101, i64 -1
  %103 = load i32, ptr %11, align 4, !tbaa !43
  %104 = and i32 %103, 256
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %114, label %106

106:                                              ; preds = %94
  %107 = getelementptr inbounds %struct._Image, ptr %83, i64 0, i32 6
  %108 = load i32, ptr %107, align 8, !tbaa !126
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %106
  %111 = icmp sgt i64 %100, 0
  %112 = insertelement <2 x double> poison, double %95, i64 0
  %113 = shufflevector <2 x double> %112, <2 x double> poison, <2 x i32> zeroinitializer
  br i1 %111, label %193, label %257

114:                                              ; preds = %106, %94
  %115 = icmp sgt i64 %100, 0
  %116 = insertelement <4 x double> poison, double %95, i64 0
  %117 = shufflevector <4 x double> %116, <4 x double> poison, <4 x i32> zeroinitializer
  br i1 %115, label %118, label %150

118:                                              ; preds = %114, %142
  %119 = phi ptr [ %146, %142 ], [ %64, %114 ]
  %120 = phi ptr [ %145, %142 ], [ %78, %114 ]
  %121 = phi ptr [ %144, %142 ], [ %102, %114 ]
  %122 = phi i64 [ %148, %142 ], [ 0, %114 ]
  %123 = phi double [ %143, %142 ], [ %95, %114 ]
  %124 = phi <4 x double> [ %147, %142 ], [ %117, %114 ]
  %125 = load double, ptr %121, align 8, !tbaa !34
  %126 = fcmp uno double %125, 0.000000e+00
  br i1 %126, label %142, label %127

127:                                              ; preds = %118
  %128 = load <4 x i16>, ptr %120, align 2, !tbaa !11
  %129 = uitofp <4 x i16> %128 to <4 x double>
  %130 = insertelement <4 x double> poison, double %125, i64 0
  %131 = shufflevector <4 x double> %130, <4 x double> poison, <4 x i32> zeroinitializer
  %132 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %131, <4 x double> %129, <4 x double> %124)
  br i1 %86, label %133, label %137

133:                                              ; preds = %127
  %134 = load i16, ptr %119, align 2, !tbaa !11
  %135 = uitofp i16 %134 to double
  %136 = call double @llvm.fmuladd.f64(double %125, double %135, double %123)
  br label %137

137:                                              ; preds = %133, %127
  %138 = phi double [ %136, %133 ], [ %123, %127 ]
  %139 = getelementptr inbounds double, ptr %121, i64 -1
  %140 = getelementptr inbounds %struct._PixelPacket, ptr %120, i64 1
  %141 = getelementptr inbounds i16, ptr %119, i64 1
  br label %142

142:                                              ; preds = %118, %137
  %143 = phi double [ %123, %118 ], [ %138, %137 ]
  %144 = phi ptr [ %121, %118 ], [ %139, %137 ]
  %145 = phi ptr [ %120, %118 ], [ %140, %137 ]
  %146 = phi ptr [ %119, %118 ], [ %141, %137 ]
  %147 = phi <4 x double> [ %124, %118 ], [ %132, %137 ]
  %148 = add nuw nsw i64 %122, 1
  %149 = icmp eq i64 %148, %100
  br i1 %149, label %150, label %118, !llvm.loop !146

150:                                              ; preds = %142, %114
  %151 = phi double [ %95, %114 ], [ %143, %142 ]
  %152 = phi <4 x double> [ %117, %114 ], [ %147, %142 ]
  %153 = and i32 %103, 1
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %160, label %155

155:                                              ; preds = %150
  %156 = extractelement <4 x double> %152, i64 2
  %157 = fptrunc double %156 to float
  %158 = call fastcc zeroext i16 @ClampToQuantum(float noundef %157) #29
  %159 = getelementptr inbounds %struct._PixelPacket, ptr %80, i64 0, i32 2
  store i16 %158, ptr %159, align 2, !tbaa !115
  br label %160

160:                                              ; preds = %155, %150
  %161 = and i32 %103, 2
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %168, label %163

163:                                              ; preds = %160
  %164 = extractelement <4 x double> %152, i64 1
  %165 = fptrunc double %164 to float
  %166 = call fastcc zeroext i16 @ClampToQuantum(float noundef %165) #29
  %167 = getelementptr inbounds %struct._PixelPacket, ptr %80, i64 0, i32 1
  store i16 %166, ptr %167, align 2, !tbaa !116
  br label %168

168:                                              ; preds = %163, %160
  %169 = and i32 %103, 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %175, label %171

171:                                              ; preds = %168
  %172 = extractelement <4 x double> %152, i64 0
  %173 = fptrunc double %172 to float
  %174 = call fastcc zeroext i16 @ClampToQuantum(float noundef %173) #29
  store i16 %174, ptr %80, align 2, !tbaa !117
  br label %175

175:                                              ; preds = %171, %168
  %176 = and i32 %103, 8
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %187, label %178

178:                                              ; preds = %175
  %179 = getelementptr inbounds %struct._Image, ptr %83, i64 0, i32 6
  %180 = load i32, ptr %179, align 8, !tbaa !126
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %187, label %182

182:                                              ; preds = %178
  %183 = extractelement <4 x double> %152, i64 3
  %184 = fptrunc double %183 to float
  %185 = call fastcc zeroext i16 @ClampToQuantum(float noundef %184) #29
  %186 = getelementptr inbounds %struct._PixelPacket, ptr %80, i64 0, i32 3
  store i16 %185, ptr %186, align 2, !tbaa !118
  br label %187

187:                                              ; preds = %182, %178, %175
  %188 = and i32 %103, 32
  %189 = icmp eq i32 %188, 0
  %190 = icmp ne i32 %85, 12
  %191 = or i1 %189, %190
  %192 = select i1 %191, i1 true, i1 %73
  br i1 %192, label %296, label %291

193:                                              ; preds = %110, %245
  %194 = phi i64 [ %253, %245 ], [ 0, %110 ]
  %195 = phi double [ %252, %245 ], [ 0.000000e+00, %110 ]
  %196 = phi ptr [ %251, %245 ], [ %64, %110 ]
  %197 = phi ptr [ %250, %245 ], [ %78, %110 ]
  %198 = phi ptr [ %249, %245 ], [ %102, %110 ]
  %199 = phi i64 [ %255, %245 ], [ 0, %110 ]
  %200 = phi double [ %248, %245 ], [ %95, %110 ]
  %201 = phi double [ %247, %245 ], [ %95, %110 ]
  %202 = phi double [ %246, %245 ], [ %95, %110 ]
  %203 = phi <2 x double> [ %254, %245 ], [ %113, %110 ]
  %204 = load double, ptr %198, align 8, !tbaa !34
  %205 = fcmp uno double %204, 0.000000e+00
  br i1 %205, label %245, label %206

206:                                              ; preds = %193
  %207 = getelementptr inbounds %struct._PixelPacket, ptr %197, i64 0, i32 3
  %208 = load i16, ptr %207, align 2, !tbaa !118
  %209 = xor i16 %208, -1
  %210 = uitofp i16 %209 to double
  %211 = fmul double %210, 0x3EF0001000100010
  %212 = fptrunc double %211 to float
  %213 = add i64 %194, 1
  %214 = fpext float %212 to double
  %215 = fmul double %204, %214
  %216 = fptrunc double %215 to float
  %217 = fpext float %216 to double
  %218 = fadd double %195, %217
  %219 = getelementptr inbounds %struct._PixelPacket, ptr %197, i64 0, i32 2
  %220 = load i16, ptr %219, align 2, !tbaa !115
  %221 = uitofp i16 %220 to float
  %222 = fmul float %221, %216
  %223 = fpext float %222 to double
  %224 = fadd double %200, %223
  %225 = load <2 x i16>, ptr %197, align 2, !tbaa !11
  %226 = uitofp <2 x i16> %225 to <2 x float>
  %227 = insertelement <2 x float> poison, float %216, i64 0
  %228 = shufflevector <2 x float> %227, <2 x float> poison, <2 x i32> zeroinitializer
  %229 = fmul <2 x float> %228, %226
  %230 = fpext <2 x float> %229 to <2 x double>
  %231 = fadd <2 x double> %203, %230
  %232 = uitofp i16 %208 to double
  %233 = call double @llvm.fmuladd.f64(double %204, double %232, double %201)
  br i1 %86, label %234, label %240

234:                                              ; preds = %206
  %235 = load i16, ptr %196, align 2, !tbaa !11
  %236 = uitofp i16 %235 to float
  %237 = fmul float %216, %236
  %238 = fpext float %237 to double
  %239 = fadd double %202, %238
  br label %240

240:                                              ; preds = %234, %206
  %241 = phi double [ %239, %234 ], [ %202, %206 ]
  %242 = getelementptr inbounds double, ptr %198, i64 -1
  %243 = getelementptr inbounds %struct._PixelPacket, ptr %197, i64 1
  %244 = getelementptr inbounds i16, ptr %196, i64 1
  br label %245

245:                                              ; preds = %193, %240
  %246 = phi double [ %202, %193 ], [ %241, %240 ]
  %247 = phi double [ %201, %193 ], [ %233, %240 ]
  %248 = phi double [ %200, %193 ], [ %224, %240 ]
  %249 = phi ptr [ %198, %193 ], [ %242, %240 ]
  %250 = phi ptr [ %197, %193 ], [ %243, %240 ]
  %251 = phi ptr [ %196, %193 ], [ %244, %240 ]
  %252 = phi double [ %195, %193 ], [ %218, %240 ]
  %253 = phi i64 [ %194, %193 ], [ %213, %240 ]
  %254 = phi <2 x double> [ %203, %193 ], [ %231, %240 ]
  %255 = add nuw nsw i64 %199, 1
  %256 = icmp eq i64 %255, %100
  br i1 %256, label %257, label %193, !llvm.loop !147

257:                                              ; preds = %245, %110
  %258 = phi double [ %95, %110 ], [ %246, %245 ]
  %259 = phi double [ %95, %110 ], [ %247, %245 ]
  %260 = phi double [ %95, %110 ], [ %248, %245 ]
  %261 = phi double [ 0.000000e+00, %110 ], [ %252, %245 ]
  %262 = phi i64 [ 0, %110 ], [ %253, %245 ]
  %263 = phi <2 x double> [ %113, %110 ], [ %254, %245 ]
  %264 = fcmp olt double %261, 0.000000e+00
  %265 = select i1 %264, double 0.000000e+00, double %261
  %266 = call fastcc double @PerceptibleReciprocal(double noundef %265) #29
  %267 = uitofp i64 %100 to double
  %268 = uitofp i64 %262 to double
  %269 = fdiv double %267, %268
  %270 = fmul double %269, %266
  %271 = fmul double %260, %270
  %272 = fptrunc double %271 to float
  %273 = call fastcc zeroext i16 @ClampToQuantum(float noundef %272) #29
  %274 = getelementptr inbounds %struct._PixelPacket, ptr %80, i64 0, i32 2
  store i16 %273, ptr %274, align 2, !tbaa !115
  %275 = extractelement <2 x double> %263, i64 1
  %276 = fmul double %275, %270
  %277 = fptrunc double %276 to float
  %278 = call fastcc zeroext i16 @ClampToQuantum(float noundef %277) #29
  %279 = getelementptr inbounds %struct._PixelPacket, ptr %80, i64 0, i32 1
  store i16 %278, ptr %279, align 2, !tbaa !116
  %280 = extractelement <2 x double> %263, i64 0
  %281 = fmul double %280, %270
  %282 = fptrunc double %281 to float
  %283 = call fastcc zeroext i16 @ClampToQuantum(float noundef %282) #29
  store i16 %283, ptr %80, align 2, !tbaa !117
  %284 = fptrunc double %259 to float
  %285 = call fastcc zeroext i16 @ClampToQuantum(float noundef %284) #29
  %286 = getelementptr inbounds %struct._PixelPacket, ptr %80, i64 0, i32 3
  store i16 %285, ptr %286, align 2, !tbaa !118
  %287 = icmp ne i32 %85, 12
  %288 = select i1 %287, i1 true, i1 %73
  br i1 %288, label %296, label %289

289:                                              ; preds = %257
  %290 = fmul double %258, %270
  br label %291

291:                                              ; preds = %187, %289
  %292 = phi double [ %290, %289 ], [ %151, %187 ]
  %293 = getelementptr inbounds i16, ptr %66, i64 %79
  %294 = fptrunc double %292 to float
  %295 = call fastcc zeroext i16 @ClampToQuantum(float noundef %294) #29
  store i16 %295, ptr %293, align 2, !tbaa !11
  br label %296

296:                                              ; preds = %291, %257, %187
  %297 = getelementptr inbounds %struct._PixelPacket, ptr %78, i64 %67, i32 2
  %298 = load i16, ptr %297, align 2, !tbaa !115
  %299 = getelementptr inbounds %struct._PixelPacket, ptr %80, i64 0, i32 2
  %300 = load i16, ptr %299, align 2, !tbaa !115
  %301 = icmp eq i16 %298, %300
  br i1 %301, label %302, label %332

302:                                              ; preds = %296
  %303 = getelementptr inbounds %struct._PixelPacket, ptr %78, i64 %67, i32 1
  %304 = load i16, ptr %303, align 2, !tbaa !116
  %305 = getelementptr inbounds %struct._PixelPacket, ptr %80, i64 0, i32 1
  %306 = load i16, ptr %305, align 2, !tbaa !116
  %307 = icmp eq i16 %304, %306
  br i1 %307, label %308, label %332

308:                                              ; preds = %302
  %309 = load i16, ptr %81, align 2, !tbaa !117
  %310 = load i16, ptr %80, align 2, !tbaa !117
  %311 = icmp eq i16 %309, %310
  br i1 %311, label %312, label %332

312:                                              ; preds = %308
  %313 = getelementptr inbounds %struct._PixelPacket, ptr %78, i64 %67, i32 3
  %314 = load i16, ptr %313, align 2, !tbaa !118
  %315 = getelementptr inbounds %struct._PixelPacket, ptr %80, i64 0, i32 3
  %316 = load i16, ptr %315, align 2, !tbaa !118
  %317 = icmp eq i16 %314, %316
  br i1 %317, label %318, label %332

318:                                              ; preds = %312
  br i1 %86, label %319, label %337

319:                                              ; preds = %318
  br i1 %74, label %323, label %320

320:                                              ; preds = %319
  %321 = load i16, ptr %75, align 2, !tbaa !11
  %322 = zext i16 %321 to i32
  br label %323

323:                                              ; preds = %319, %320
  %324 = phi i32 [ %322, %320 ], [ 0, %319 ]
  br i1 %73, label %329, label %325

325:                                              ; preds = %323
  %326 = getelementptr inbounds i16, ptr %66, i64 %79
  %327 = load i16, ptr %326, align 2, !tbaa !11
  %328 = zext i16 %327 to i32
  br label %329

329:                                              ; preds = %323, %325
  %330 = phi i32 [ %328, %325 ], [ 0, %323 ]
  %331 = icmp eq i32 %324, %330
  br i1 %331, label %337, label %332

332:                                              ; preds = %329, %312, %308, %302, %296
  %333 = load ptr, ptr %12, align 8, !tbaa !9
  %334 = getelementptr inbounds i64, ptr %333, i64 %76
  %335 = load i64, ptr %334, align 8, !tbaa !44
  %336 = add i64 %335, 1
  store i64 %336, ptr %334, align 8, !tbaa !44
  br label %337

337:                                              ; preds = %332, %329, %318
  %338 = getelementptr inbounds %struct._PixelPacket, ptr %78, i64 1
  %339 = getelementptr inbounds %struct._PixelPacket, ptr %80, i64 1
  %340 = add nuw nsw i64 %79, 1
  %341 = getelementptr inbounds %struct._Image, ptr %83, i64 0, i32 8
  %342 = load i64, ptr %341, align 8, !tbaa !102
  %343 = icmp slt i64 %340, %342
  br i1 %343, label %77, label %344, !llvm.loop !148

344:                                              ; preds = %337, %62
  %345 = load ptr, ptr %8, align 8, !tbaa !9
  %346 = load ptr, ptr %7, align 8, !tbaa !9
  %347 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %345, ptr noundef %346) #36
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %349, label %350

349:                                              ; preds = %344
  store i32 0, ptr %3, align 4, !tbaa !43
  br label %350

350:                                              ; preds = %349, %344
  %351 = load ptr, ptr %2, align 8, !tbaa !9
  %352 = getelementptr inbounds %struct._Image, ptr %351, i64 0, i32 47
  %353 = load ptr, ptr %352, align 8, !tbaa !128
  %354 = icmp eq ptr %353, null
  br i1 %354, label %364, label %355

355:                                              ; preds = %350
  call void @__kmpc_critical(ptr nonnull @2, i32 %25, ptr nonnull @.gomp_critical_user_MagickCore_MorphologyPrimitive.var)
  %356 = load ptr, ptr %2, align 8, !tbaa !9
  %357 = load i64, ptr %13, align 8, !tbaa !137
  %358 = add nsw i64 %357, 1
  store i64 %358, ptr %13, align 8, !tbaa !137
  %359 = getelementptr inbounds %struct._Image, ptr %356, i64 0, i32 8
  %360 = load i64, ptr %359, align 8, !tbaa !102
  %361 = call fastcc i32 @SetImageProgress(ptr noundef %356, i64 noundef %357, i64 noundef %360) #29
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %25, ptr nonnull @.gomp_critical_user_MagickCore_MorphologyPrimitive.var)
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %363, label %364

363:                                              ; preds = %355, %39
  store i32 0, ptr %3, align 4, !tbaa !43
  br label %364

364:                                              ; preds = %363, %350, %355, %34
  %365 = add nsw i64 %35, 1
  %366 = load i64, ptr %16, align 8, !tbaa !44
  %367 = icmp slt i64 %35, %366
  br i1 %367, label %34, label %368

368:                                              ; preds = %364
  %369 = load i64, ptr %15, align 8, !tbaa !44
  br label %370

370:                                              ; preds = %368, %30
  %371 = phi i64 [ %32, %30 ], [ %369, %368 ]
  %372 = phi i64 [ %31, %30 ], [ %366, %368 ]
  %373 = load i64, ptr %17, align 8, !tbaa !44
  %374 = add nsw i64 %373, %371
  store i64 %374, ptr %15, align 8, !tbaa !44
  %375 = add nsw i64 %373, %372
  %376 = call i64 @llvm.smin.i64(i64 %375, i64 %22)
  store i64 %376, ptr %16, align 8, !tbaa !44
  %377 = icmp sgt i64 %374, %376
  br i1 %377, label %378, label %30

378:                                              ; preds = %370, %24
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %25)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #21
  br label %379

379:                                              ; preds = %378, %14
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_8(ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i64) local_unnamed_addr #21

; Function Attrs: noinline norecurse nounwind optsize uwtable
define internal fastcc i32 @GetOpenMPThreadId() unnamed_addr #22 {
  %1 = tail call i32 @omp_get_thread_num() #29
  ret i32 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @PerceptibleReciprocal(double noundef %0) unnamed_addr #10 {
  %2 = fcmp olt double %0, 0.000000e+00
  %3 = select i1 %2, double -1.000000e+00, double 1.000000e+00
  %4 = fmul double %3, %0
  %5 = fcmp ult double %4, 1.000000e-15
  %6 = fdiv double 1.000000e+00, %0
  %7 = fdiv double %3, 1.000000e-15
  %8 = select i1 %5, double %7, double %6
  ret double %8
}

; Function Attrs: convergent nounwind
declare void @__kmpc_critical(ptr, i32, ptr) local_unnamed_addr #23

; Function Attrs: convergent nounwind
declare void @__kmpc_end_critical(ptr, i32, ptr) local_unnamed_addr #23

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #21

; Function Attrs: optsize
declare i64 @GetMagickResourceLimit(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GetImagePixelCacheType(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #21

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #21

; Function Attrs: nounwind
declare !callback !149 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #21

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @MorphologyPrimitive.omp_outlined.98(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %9, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %10, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %11, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %12, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %13, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %14, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %15, ptr nocapture noundef nonnull align 8 dereferenceable(8) %16) #20 {
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = load ptr, ptr %2, align 8, !tbaa !9
  %23 = getelementptr inbounds %struct._Image, ptr %22, i64 0, i32 8
  %24 = load i64, ptr %23, align 8, !tbaa !102
  %25 = add nsw i64 %24, -1
  %26 = icmp sgt i64 %24, 0
  br i1 %26, label %27, label %1060

27:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #21
  store i64 0, ptr %18, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #21
  store i64 %25, ptr %19, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #21
  store i64 1, ptr %20, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #21
  store i32 0, ptr %21, align 4, !tbaa !43
  %28 = load i32, ptr %0, align 4, !tbaa !43
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %28, i32 33, ptr nonnull %21, ptr nonnull %18, ptr nonnull %19, ptr nonnull %20, i64 1, i64 4)
  %29 = load i64, ptr %19, align 8
  %30 = call i64 @llvm.smin.i64(i64 %29, i64 %25)
  store i64 %30, ptr %19, align 8, !tbaa !44
  %31 = load i64, ptr %18, align 8, !tbaa !44
  %32 = icmp sgt i64 %31, %30
  br i1 %32, label %1059, label %33

33:                                               ; preds = %27, %1051
  %34 = phi i64 [ %1057, %1051 ], [ %30, %27 ]
  %35 = phi i64 [ %1055, %1051 ], [ %31, %27 ]
  %36 = icmp sgt i64 %35, %34
  br i1 %36, label %1051, label %37

37:                                               ; preds = %33, %1045
  %38 = phi i64 [ %1046, %1045 ], [ %35, %33 ]
  %39 = call fastcc i32 @GetOpenMPThreadId() #29
  %40 = load i32, ptr %3, align 4, !tbaa !43
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %1045, label %42

42:                                               ; preds = %37
  %43 = load ptr, ptr %4, align 8, !tbaa !9
  %44 = load i64, ptr %5, align 8, !tbaa !44
  %45 = sub nsw i64 0, %44
  %46 = load i64, ptr %6, align 8, !tbaa !44
  %47 = sub nsw i64 %38, %46
  %48 = load i64, ptr %7, align 8, !tbaa !44
  %49 = load ptr, ptr %8, align 8, !tbaa !9
  %50 = getelementptr inbounds %struct.KernelInfo, ptr %49, i64 0, i32 2
  %51 = load i64, ptr %50, align 8, !tbaa !26
  %52 = load ptr, ptr %9, align 8, !tbaa !9
  %53 = call ptr @GetCacheViewVirtualPixels(ptr noundef %43, i64 noundef %45, i64 noundef %47, i64 noundef %48, i64 noundef %51, ptr noundef %52) #36
  %54 = load ptr, ptr %10, align 8, !tbaa !9
  %55 = load ptr, ptr %11, align 8, !tbaa !9
  %56 = getelementptr inbounds %struct._Image, ptr %55, i64 0, i32 7
  %57 = load i64, ptr %56, align 8, !tbaa !90
  %58 = load ptr, ptr %9, align 8, !tbaa !9
  %59 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %54, i64 noundef 0, i64 noundef %38, i64 noundef %57, i64 noundef 1, ptr noundef %58) #36
  %60 = icmp eq ptr %53, null
  %61 = icmp eq ptr %59, null
  %62 = select i1 %60, i1 true, i1 %61
  br i1 %62, label %1044, label %63

63:                                               ; preds = %42
  %64 = load ptr, ptr %4, align 8, !tbaa !9
  %65 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %64) #30
  %66 = load ptr, ptr %10, align 8, !tbaa !9
  %67 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %66) #30
  %68 = load i64, ptr %7, align 8, !tbaa !44
  %69 = load i64, ptr %6, align 8, !tbaa !44
  %70 = mul i64 %69, %68
  %71 = load i64, ptr %5, align 8, !tbaa !44
  %72 = add i64 %70, %71
  %73 = load ptr, ptr %2, align 8, !tbaa !9
  %74 = getelementptr inbounds %struct._Image, ptr %73, i64 0, i32 7
  %75 = load i64, ptr %74, align 8, !tbaa !90
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %77, label %1025

77:                                               ; preds = %63
  %78 = icmp eq ptr %67, null
  %79 = icmp eq ptr %65, null
  %80 = getelementptr inbounds i16, ptr %65, i64 %72
  %81 = sext i32 %39 to i64
  br label %82

82:                                               ; preds = %77, %1017
  %83 = phi ptr [ %53, %77 ], [ %1019, %1017 ]
  %84 = phi i64 [ 0, %77 ], [ %1021, %1017 ]
  %85 = phi ptr [ %59, %77 ], [ %1020, %1017 ]
  %86 = getelementptr inbounds %struct._PixelPacket, ptr %83, i64 %72
  %87 = load i64, ptr %86, align 2
  store i64 %87, ptr %85, align 2
  %88 = load ptr, ptr %2, align 8, !tbaa !9
  %89 = getelementptr inbounds %struct._Image, ptr %88, i64 0, i32 1
  %90 = load i32, ptr %89, align 4, !tbaa !119
  %91 = icmp eq i32 %90, 12
  br i1 %91, label %92, label %99

92:                                               ; preds = %82
  %93 = getelementptr inbounds i16, ptr %67, i64 %84
  br i1 %78, label %99, label %94

94:                                               ; preds = %92
  br i1 %79, label %97, label %95

95:                                               ; preds = %94
  %96 = load i16, ptr %80, align 2, !tbaa !11
  br label %97

97:                                               ; preds = %94, %95
  %98 = phi i16 [ %96, %95 ], [ 0, %94 ]
  store i16 %98, ptr %93, align 2, !tbaa !11
  br label %99

99:                                               ; preds = %92, %97, %82
  %100 = getelementptr inbounds %struct._PixelPacket, ptr %83, i64 %72, i32 2
  %101 = load i16, ptr %100, align 2, !tbaa !115
  %102 = uitofp i16 %101 to double
  %103 = getelementptr inbounds %struct._PixelPacket, ptr %83, i64 %72, i32 1
  %104 = load <2 x i16>, ptr %86, align 2, !tbaa !11
  %105 = uitofp <2 x i16> %104 to <2 x double>
  %106 = getelementptr inbounds %struct._PixelPacket, ptr %83, i64 %72, i32 3
  %107 = load i16, ptr %106, align 2, !tbaa !118
  %108 = uitofp i16 %107 to double
  %109 = fsub double 6.553500e+04, %108
  br i1 %91, label %110, label %117

110:                                              ; preds = %99
  br i1 %79, label %114, label %111

111:                                              ; preds = %110
  %112 = load i16, ptr %80, align 2, !tbaa !11
  %113 = zext i16 %112 to i32
  br label %114

114:                                              ; preds = %110, %111
  %115 = phi i32 [ %113, %111 ], [ 0, %110 ]
  %116 = sitofp i32 %115 to double
  br label %117

117:                                              ; preds = %114, %99
  %118 = phi double [ %116, %114 ], [ 0.000000e+00, %99 ]
  %119 = load i32, ptr %12, align 4, !tbaa !43
  switch i32 %119, label %125 [
    i32 1, label %120
    i32 6, label %124
    i32 5, label %124
  ]

120:                                              ; preds = %117
  %121 = load double, ptr %13, align 8, !tbaa !34
  %122 = insertelement <4 x double> poison, double %121, i64 0
  %123 = shufflevector <4 x double> %122, <4 x double> poison, <4 x i32> zeroinitializer
  br label %130

124:                                              ; preds = %117, %117
  br label %125

125:                                              ; preds = %117, %124
  %126 = phi double [ %102, %117 ], [ 0.000000e+00, %124 ]
  %127 = shufflevector <2 x double> %105, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %128 = insertelement <4 x double> %127, double %126, i64 2
  %129 = insertelement <4 x double> %128, double %109, i64 3
  switch i32 %119, label %903 [
    i32 1, label %130
    i32 3, label %360
    i32 4, label %442
    i32 18, label %527
    i32 19, label %527
    i32 20, label %527
    i32 5, label %684
    i32 6, label %745
    i32 22, label %811
  ]

130:                                              ; preds = %120, %125
  %131 = phi double [ %121, %120 ], [ %118, %125 ]
  %132 = phi <4 x double> [ %123, %120 ], [ %129, %125 ]
  %133 = load ptr, ptr %8, align 8, !tbaa !9
  %134 = getelementptr inbounds %struct.KernelInfo, ptr %133, i64 0, i32 5
  %135 = load ptr, ptr %134, align 8, !tbaa !33
  %136 = getelementptr inbounds %struct.KernelInfo, ptr %133, i64 0, i32 1
  %137 = load i64, ptr %136, align 8, !tbaa !25
  %138 = getelementptr inbounds %struct.KernelInfo, ptr %133, i64 0, i32 2
  %139 = load i64, ptr %138, align 8, !tbaa !26
  %140 = mul i64 %139, %137
  %141 = getelementptr double, ptr %135, i64 %140
  %142 = getelementptr double, ptr %141, i64 -1
  %143 = load i32, ptr %14, align 4, !tbaa !43
  %144 = and i32 %143, 256
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %156, label %146

146:                                              ; preds = %130
  %147 = getelementptr inbounds %struct._Image, ptr %88, i64 0, i32 6
  %148 = load i32, ptr %147, align 8, !tbaa !126
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %156, label %150

150:                                              ; preds = %146
  %151 = icmp sgt i64 %139, 0
  br i1 %151, label %152, label %321

152:                                              ; preds = %150
  %153 = icmp sgt i64 %137, 0
  %154 = load i64, ptr %7, align 8, !tbaa !44
  %155 = mul i64 %137, -8
  br label %257

156:                                              ; preds = %146, %130
  %157 = icmp sgt i64 %139, 0
  br i1 %157, label %158, label %210

158:                                              ; preds = %156
  %159 = icmp sgt i64 %137, 0
  %160 = load i64, ptr %7, align 8, !tbaa !44
  %161 = mul i64 %137, -8
  br label %162

162:                                              ; preds = %158, %202
  %163 = phi double [ %131, %158 ], [ %204, %202 ]
  %164 = phi ptr [ %65, %158 ], [ %207, %202 ]
  %165 = phi ptr [ %83, %158 ], [ %206, %202 ]
  %166 = phi ptr [ %142, %158 ], [ %203, %202 ]
  %167 = phi i64 [ 0, %158 ], [ %208, %202 ]
  %168 = phi <4 x double> [ %132, %158 ], [ %205, %202 ]
  br i1 %159, label %169, label %202

169:                                              ; preds = %162
  %170 = icmp eq ptr %164, null
  br label %171

171:                                              ; preds = %169, %194
  %172 = phi double [ %163, %169 ], [ %195, %194 ]
  %173 = phi ptr [ %166, %169 ], [ %198, %194 ]
  %174 = phi i64 [ 0, %169 ], [ %197, %194 ]
  %175 = phi <4 x double> [ %168, %169 ], [ %196, %194 ]
  %176 = load double, ptr %173, align 8, !tbaa !34
  %177 = fcmp uno double %176, 0.000000e+00
  br i1 %177, label %194, label %178

178:                                              ; preds = %171
  %179 = getelementptr inbounds %struct._PixelPacket, ptr %165, i64 %174
  %180 = load <4 x i16>, ptr %179, align 2, !tbaa !11
  %181 = uitofp <4 x i16> %180 to <4 x double>
  %182 = insertelement <4 x double> poison, double %176, i64 0
  %183 = shufflevector <4 x double> %182, <4 x double> poison, <4 x i32> zeroinitializer
  %184 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %183, <4 x double> %181, <4 x double> %175)
  br i1 %91, label %185, label %194

185:                                              ; preds = %178
  br i1 %170, label %190, label %186

186:                                              ; preds = %185
  %187 = getelementptr inbounds i16, ptr %164, i64 %174
  %188 = load i16, ptr %187, align 2, !tbaa !11
  %189 = zext i16 %188 to i32
  br label %190

190:                                              ; preds = %185, %186
  %191 = phi i32 [ %189, %186 ], [ 0, %185 ]
  %192 = sitofp i32 %191 to double
  %193 = call double @llvm.fmuladd.f64(double %176, double %192, double %172)
  br label %194

194:                                              ; preds = %178, %190, %171
  %195 = phi double [ %172, %171 ], [ %193, %190 ], [ %172, %178 ]
  %196 = phi <4 x double> [ %175, %171 ], [ %184, %190 ], [ %184, %178 ]
  %197 = add nuw nsw i64 %174, 1
  %198 = getelementptr inbounds double, ptr %173, i64 -1
  %199 = icmp eq i64 %197, %137
  br i1 %199, label %200, label %171, !llvm.loop !151

200:                                              ; preds = %194
  %201 = getelementptr i8, ptr %166, i64 %161
  br label %202

202:                                              ; preds = %200, %162
  %203 = phi ptr [ %166, %162 ], [ %201, %200 ]
  %204 = phi double [ %163, %162 ], [ %195, %200 ]
  %205 = phi <4 x double> [ %168, %162 ], [ %196, %200 ]
  %206 = getelementptr inbounds %struct._PixelPacket, ptr %165, i64 %160
  %207 = getelementptr inbounds i16, ptr %164, i64 %160
  %208 = add nuw nsw i64 %167, 1
  %209 = icmp eq i64 %208, %139
  br i1 %209, label %210, label %162, !llvm.loop !152

210:                                              ; preds = %202, %156
  %211 = phi double [ %131, %156 ], [ %204, %202 ]
  %212 = phi <4 x double> [ %132, %156 ], [ %205, %202 ]
  %213 = and i32 %143, 1
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %220, label %215

215:                                              ; preds = %210
  %216 = extractelement <4 x double> %212, i64 2
  %217 = fptrunc double %216 to float
  %218 = call fastcc zeroext i16 @ClampToQuantum(float noundef %217) #29
  %219 = getelementptr inbounds %struct._PixelPacket, ptr %85, i64 0, i32 2
  store i16 %218, ptr %219, align 2, !tbaa !115
  br label %220

220:                                              ; preds = %215, %210
  %221 = and i32 %143, 2
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %228, label %223

223:                                              ; preds = %220
  %224 = extractelement <4 x double> %212, i64 1
  %225 = fptrunc double %224 to float
  %226 = call fastcc zeroext i16 @ClampToQuantum(float noundef %225) #29
  %227 = getelementptr inbounds %struct._PixelPacket, ptr %85, i64 0, i32 1
  store i16 %226, ptr %227, align 2, !tbaa !116
  br label %228

228:                                              ; preds = %223, %220
  %229 = and i32 %143, 4
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %235, label %231

231:                                              ; preds = %228
  %232 = extractelement <4 x double> %212, i64 0
  %233 = fptrunc double %232 to float
  %234 = call fastcc zeroext i16 @ClampToQuantum(float noundef %233) #29
  store i16 %234, ptr %85, align 2, !tbaa !117
  br label %235

235:                                              ; preds = %231, %228
  %236 = and i32 %143, 8
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %247, label %238

238:                                              ; preds = %235
  %239 = getelementptr inbounds %struct._Image, ptr %88, i64 0, i32 6
  %240 = load i32, ptr %239, align 8, !tbaa !126
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %247, label %242

242:                                              ; preds = %238
  %243 = extractelement <4 x double> %212, i64 3
  %244 = fptrunc double %243 to float
  %245 = call fastcc zeroext i16 @ClampToQuantum(float noundef %244) #29
  %246 = getelementptr inbounds %struct._PixelPacket, ptr %85, i64 0, i32 3
  store i16 %245, ptr %246, align 2, !tbaa !118
  br label %247

247:                                              ; preds = %242, %238, %235
  %248 = and i32 %143, 32
  %249 = icmp eq i32 %248, 0
  %250 = icmp ne i32 %90, 12
  %251 = or i1 %249, %250
  %252 = select i1 %251, i1 true, i1 %78
  br i1 %252, label %903, label %253

253:                                              ; preds = %247
  %254 = getelementptr inbounds i16, ptr %67, i64 %84
  %255 = fptrunc double %211 to float
  %256 = call fastcc zeroext i16 @ClampToQuantum(float noundef %255) #29
  store i16 %256, ptr %254, align 2, !tbaa !11
  br label %903

257:                                              ; preds = %152, %311
  %258 = phi i64 [ 0, %152 ], [ %315, %311 ]
  %259 = phi double [ 0.000000e+00, %152 ], [ %314, %311 ]
  %260 = phi double [ %131, %152 ], [ %313, %311 ]
  %261 = phi ptr [ %65, %152 ], [ %318, %311 ]
  %262 = phi ptr [ %83, %152 ], [ %317, %311 ]
  %263 = phi ptr [ %142, %152 ], [ %312, %311 ]
  %264 = phi i64 [ 0, %152 ], [ %319, %311 ]
  %265 = phi <4 x double> [ %132, %152 ], [ %316, %311 ]
  br i1 %153, label %266, label %311

266:                                              ; preds = %257
  %267 = icmp eq ptr %261, null
  br label %268

268:                                              ; preds = %266, %301
  %269 = phi i64 [ %258, %266 ], [ %304, %301 ]
  %270 = phi double [ %259, %266 ], [ %303, %301 ]
  %271 = phi double [ %260, %266 ], [ %302, %301 ]
  %272 = phi ptr [ %263, %266 ], [ %307, %301 ]
  %273 = phi i64 [ 0, %266 ], [ %306, %301 ]
  %274 = phi <4 x double> [ %265, %266 ], [ %305, %301 ]
  %275 = load double, ptr %272, align 8, !tbaa !34
  %276 = fcmp uno double %275, 0.000000e+00
  br i1 %276, label %301, label %277

277:                                              ; preds = %268
  %278 = getelementptr inbounds %struct._PixelPacket, ptr %262, i64 %273
  %279 = add i64 %269, 1
  %280 = load <4 x i16>, ptr %278, align 2, !tbaa !11
  %281 = extractelement <4 x i16> %280, i64 3
  %282 = xor i16 %281, -1
  %283 = uitofp i16 %282 to double
  %284 = fmul double %283, 0x3EF0001000100010
  %285 = fmul double %275, %284
  %286 = fadd double %270, %285
  %287 = uitofp <4 x i16> %280 to <4 x double>
  %288 = insertelement <4 x double> poison, double %285, i64 0
  %289 = insertelement <4 x double> %288, double %275, i64 1
  %290 = shufflevector <4 x double> %289, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %291 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %290, <4 x double> %287, <4 x double> %274)
  br i1 %91, label %292, label %301

292:                                              ; preds = %277
  br i1 %267, label %297, label %293

293:                                              ; preds = %292
  %294 = getelementptr inbounds i16, ptr %261, i64 %273
  %295 = load i16, ptr %294, align 2, !tbaa !11
  %296 = zext i16 %295 to i32
  br label %297

297:                                              ; preds = %292, %293
  %298 = phi i32 [ %296, %293 ], [ 0, %292 ]
  %299 = sitofp i32 %298 to double
  %300 = call double @llvm.fmuladd.f64(double %285, double %299, double %271)
  br label %301

301:                                              ; preds = %277, %297, %268
  %302 = phi double [ %271, %268 ], [ %300, %297 ], [ %271, %277 ]
  %303 = phi double [ %270, %268 ], [ %286, %297 ], [ %286, %277 ]
  %304 = phi i64 [ %269, %268 ], [ %279, %297 ], [ %279, %277 ]
  %305 = phi <4 x double> [ %274, %268 ], [ %291, %297 ], [ %291, %277 ]
  %306 = add nuw nsw i64 %273, 1
  %307 = getelementptr inbounds double, ptr %272, i64 -1
  %308 = icmp eq i64 %306, %137
  br i1 %308, label %309, label %268, !llvm.loop !153

309:                                              ; preds = %301
  %310 = getelementptr i8, ptr %263, i64 %155
  br label %311

311:                                              ; preds = %309, %257
  %312 = phi ptr [ %263, %257 ], [ %310, %309 ]
  %313 = phi double [ %260, %257 ], [ %302, %309 ]
  %314 = phi double [ %259, %257 ], [ %303, %309 ]
  %315 = phi i64 [ %258, %257 ], [ %304, %309 ]
  %316 = phi <4 x double> [ %265, %257 ], [ %305, %309 ]
  %317 = getelementptr inbounds %struct._PixelPacket, ptr %262, i64 %154
  %318 = getelementptr inbounds i16, ptr %261, i64 %154
  %319 = add nuw nsw i64 %264, 1
  %320 = icmp eq i64 %319, %139
  br i1 %320, label %321, label %257, !llvm.loop !154

321:                                              ; preds = %311, %150
  %322 = phi double [ %131, %150 ], [ %313, %311 ]
  %323 = phi double [ 0.000000e+00, %150 ], [ %314, %311 ]
  %324 = phi i64 [ 0, %150 ], [ %315, %311 ]
  %325 = phi <4 x double> [ %132, %150 ], [ %316, %311 ]
  %326 = fcmp olt double %323, 0.000000e+00
  %327 = select i1 %326, double 0.000000e+00, double %323
  %328 = call fastcc double @PerceptibleReciprocal(double noundef %327) #29
  %329 = uitofp i64 %139 to double
  %330 = uitofp i64 %137 to double
  %331 = fmul double %330, %329
  %332 = uitofp i64 %324 to double
  %333 = fdiv double %331, %332
  %334 = fmul double %333, %328
  %335 = extractelement <4 x double> %325, i64 2
  %336 = fmul double %335, %334
  %337 = fptrunc double %336 to float
  %338 = call fastcc zeroext i16 @ClampToQuantum(float noundef %337) #29
  %339 = getelementptr inbounds %struct._PixelPacket, ptr %85, i64 0, i32 2
  store i16 %338, ptr %339, align 2, !tbaa !115
  %340 = extractelement <4 x double> %325, i64 1
  %341 = fmul double %340, %334
  %342 = fptrunc double %341 to float
  %343 = call fastcc zeroext i16 @ClampToQuantum(float noundef %342) #29
  %344 = getelementptr inbounds %struct._PixelPacket, ptr %85, i64 0, i32 1
  store i16 %343, ptr %344, align 2, !tbaa !116
  %345 = extractelement <4 x double> %325, i64 0
  %346 = fmul double %345, %334
  %347 = fptrunc double %346 to float
  %348 = call fastcc zeroext i16 @ClampToQuantum(float noundef %347) #29
  store i16 %348, ptr %85, align 2, !tbaa !117
  %349 = extractelement <4 x double> %325, i64 3
  %350 = fptrunc double %349 to float
  %351 = call fastcc zeroext i16 @ClampToQuantum(float noundef %350) #29
  %352 = getelementptr inbounds %struct._PixelPacket, ptr %85, i64 0, i32 3
  store i16 %351, ptr %352, align 2, !tbaa !118
  %353 = icmp ne i32 %90, 12
  %354 = select i1 %353, i1 true, i1 %78
  br i1 %354, label %903, label %355

355:                                              ; preds = %321
  %356 = getelementptr inbounds i16, ptr %67, i64 %84
  %357 = fmul double %322, %334
  %358 = fptrunc double %357 to float
  %359 = call fastcc zeroext i16 @ClampToQuantum(float noundef %358) #29
  store i16 %359, ptr %356, align 2, !tbaa !11
  br label %903

360:                                              ; preds = %125
  %361 = load ptr, ptr %8, align 8, !tbaa !9
  %362 = getelementptr inbounds %struct.KernelInfo, ptr %361, i64 0, i32 2
  %363 = load i64, ptr %362, align 8, !tbaa !26
  %364 = icmp sgt i64 %363, 0
  br i1 %364, label %365, label %903

365:                                              ; preds = %360
  %366 = getelementptr inbounds %struct.KernelInfo, ptr %361, i64 0, i32 5
  %367 = load ptr, ptr %366, align 8, !tbaa !33
  %368 = getelementptr inbounds %struct.KernelInfo, ptr %361, i64 0, i32 1
  %369 = load i64, ptr %368, align 8, !tbaa !25
  %370 = icmp sgt i64 %369, 0
  %371 = load i64, ptr %7, align 8, !tbaa !44
  %372 = shl i64 %369, 3
  br label %373

373:                                              ; preds = %365, %434
  %374 = phi double [ 6.553500e+04, %365 ], [ %436, %434 ]
  %375 = phi ptr [ %65, %365 ], [ %439, %434 ]
  %376 = phi ptr [ %83, %365 ], [ %438, %434 ]
  %377 = phi ptr [ %367, %365 ], [ %435, %434 ]
  %378 = phi i64 [ 0, %365 ], [ %440, %434 ]
  %379 = phi <4 x double> [ <double 6.553500e+04, double 6.553500e+04, double 6.553500e+04, double 6.553500e+04>, %365 ], [ %437, %434 ]
  br i1 %370, label %380, label %434

380:                                              ; preds = %373
  %381 = icmp eq ptr %375, null
  br label %382

382:                                              ; preds = %380, %426
  %383 = phi double [ %374, %380 ], [ %427, %426 ]
  %384 = phi ptr [ %377, %380 ], [ %430, %426 ]
  %385 = phi i64 [ 0, %380 ], [ %429, %426 ]
  %386 = phi <4 x double> [ %379, %380 ], [ %428, %426 ]
  %387 = load double, ptr %384, align 8, !tbaa !34
  %388 = fcmp uno double %387, 0.000000e+00
  %389 = fcmp olt double %387, 5.000000e-01
  %390 = or i1 %388, %389
  br i1 %390, label %426, label %391

391:                                              ; preds = %382
  %392 = getelementptr inbounds %struct._PixelPacket, ptr %376, i64 %385
  %393 = getelementptr inbounds %struct._PixelPacket, ptr %376, i64 %385, i32 2
  %394 = load i16, ptr %393, align 2, !tbaa !115
  %395 = uitofp i16 %394 to double
  %396 = extractelement <4 x double> %386, i64 2
  %397 = call fastcc double @MagickMin(double noundef %396, double noundef %395) #29
  %398 = getelementptr inbounds %struct._PixelPacket, ptr %376, i64 %385, i32 1
  %399 = load i16, ptr %398, align 2, !tbaa !116
  %400 = uitofp i16 %399 to double
  %401 = extractelement <4 x double> %386, i64 1
  %402 = call fastcc double @MagickMin(double noundef %401, double noundef %400) #29
  %403 = load i16, ptr %392, align 2, !tbaa !117
  %404 = uitofp i16 %403 to double
  %405 = extractelement <4 x double> %386, i64 0
  %406 = call fastcc double @MagickMin(double noundef %405, double noundef %404) #29
  %407 = getelementptr inbounds %struct._PixelPacket, ptr %376, i64 %385, i32 3
  %408 = load i16, ptr %407, align 2, !tbaa !118
  %409 = uitofp i16 %408 to double
  %410 = fsub double 6.553500e+04, %409
  %411 = extractelement <4 x double> %386, i64 3
  %412 = call fastcc double @MagickMin(double noundef %411, double noundef %410) #29
  %413 = insertelement <4 x double> poison, double %406, i64 0
  %414 = insertelement <4 x double> %413, double %402, i64 1
  %415 = insertelement <4 x double> %414, double %397, i64 2
  %416 = insertelement <4 x double> %415, double %412, i64 3
  br i1 %91, label %417, label %426

417:                                              ; preds = %391
  br i1 %381, label %422, label %418

418:                                              ; preds = %417
  %419 = getelementptr inbounds i16, ptr %375, i64 %385
  %420 = load i16, ptr %419, align 2, !tbaa !11
  %421 = zext i16 %420 to i32
  br label %422

422:                                              ; preds = %417, %418
  %423 = phi i32 [ %421, %418 ], [ 0, %417 ]
  %424 = sitofp i32 %423 to double
  %425 = call fastcc double @MagickMin(double noundef %383, double noundef %424) #29
  br label %426

426:                                              ; preds = %391, %422, %382
  %427 = phi double [ %383, %382 ], [ %425, %422 ], [ %383, %391 ]
  %428 = phi <4 x double> [ %386, %382 ], [ %416, %422 ], [ %416, %391 ]
  %429 = add nuw nsw i64 %385, 1
  %430 = getelementptr inbounds double, ptr %384, i64 1
  %431 = icmp eq i64 %429, %369
  br i1 %431, label %432, label %382, !llvm.loop !155

432:                                              ; preds = %426
  %433 = getelementptr i8, ptr %377, i64 %372
  br label %434

434:                                              ; preds = %432, %373
  %435 = phi ptr [ %377, %373 ], [ %433, %432 ]
  %436 = phi double [ %374, %373 ], [ %427, %432 ]
  %437 = phi <4 x double> [ %379, %373 ], [ %428, %432 ]
  %438 = getelementptr inbounds %struct._PixelPacket, ptr %376, i64 %371
  %439 = getelementptr inbounds i16, ptr %375, i64 %371
  %440 = add nuw nsw i64 %378, 1
  %441 = icmp eq i64 %440, %363
  br i1 %441, label %903, label %373, !llvm.loop !156

442:                                              ; preds = %125
  %443 = load ptr, ptr %8, align 8, !tbaa !9
  %444 = getelementptr inbounds %struct.KernelInfo, ptr %443, i64 0, i32 1
  %445 = load i64, ptr %444, align 8, !tbaa !25
  %446 = getelementptr inbounds %struct.KernelInfo, ptr %443, i64 0, i32 2
  %447 = load i64, ptr %446, align 8, !tbaa !26
  %448 = icmp sgt i64 %447, 0
  br i1 %448, label %449, label %903

449:                                              ; preds = %442
  %450 = getelementptr inbounds %struct.KernelInfo, ptr %443, i64 0, i32 5
  %451 = load ptr, ptr %450, align 8, !tbaa !33
  %452 = mul i64 %447, %445
  %453 = getelementptr double, ptr %451, i64 %452
  %454 = getelementptr double, ptr %453, i64 -1
  %455 = icmp sgt i64 %445, 0
  %456 = load i64, ptr %7, align 8, !tbaa !44
  %457 = mul i64 %445, -8
  br label %458

458:                                              ; preds = %449, %519
  %459 = phi double [ 0.000000e+00, %449 ], [ %521, %519 ]
  %460 = phi ptr [ %65, %449 ], [ %524, %519 ]
  %461 = phi ptr [ %83, %449 ], [ %523, %519 ]
  %462 = phi ptr [ %454, %449 ], [ %520, %519 ]
  %463 = phi i64 [ 0, %449 ], [ %525, %519 ]
  %464 = phi <4 x double> [ zeroinitializer, %449 ], [ %522, %519 ]
  br i1 %455, label %465, label %519

465:                                              ; preds = %458
  %466 = icmp eq ptr %460, null
  br label %467

467:                                              ; preds = %465, %511
  %468 = phi double [ %459, %465 ], [ %512, %511 ]
  %469 = phi ptr [ %462, %465 ], [ %515, %511 ]
  %470 = phi i64 [ 0, %465 ], [ %514, %511 ]
  %471 = phi <4 x double> [ %464, %465 ], [ %513, %511 ]
  %472 = load double, ptr %469, align 8, !tbaa !34
  %473 = fcmp uno double %472, 0.000000e+00
  %474 = fcmp olt double %472, 5.000000e-01
  %475 = or i1 %473, %474
  br i1 %475, label %511, label %476

476:                                              ; preds = %467
  %477 = getelementptr inbounds %struct._PixelPacket, ptr %461, i64 %470
  %478 = getelementptr inbounds %struct._PixelPacket, ptr %461, i64 %470, i32 2
  %479 = load i16, ptr %478, align 2, !tbaa !115
  %480 = uitofp i16 %479 to double
  %481 = extractelement <4 x double> %471, i64 2
  %482 = call fastcc double @MagickMax(double noundef %481, double noundef %480) #29
  %483 = getelementptr inbounds %struct._PixelPacket, ptr %461, i64 %470, i32 1
  %484 = load i16, ptr %483, align 2, !tbaa !116
  %485 = uitofp i16 %484 to double
  %486 = extractelement <4 x double> %471, i64 1
  %487 = call fastcc double @MagickMax(double noundef %486, double noundef %485) #29
  %488 = load i16, ptr %477, align 2, !tbaa !117
  %489 = uitofp i16 %488 to double
  %490 = extractelement <4 x double> %471, i64 0
  %491 = call fastcc double @MagickMax(double noundef %490, double noundef %489) #29
  %492 = getelementptr inbounds %struct._PixelPacket, ptr %461, i64 %470, i32 3
  %493 = load i16, ptr %492, align 2, !tbaa !118
  %494 = uitofp i16 %493 to double
  %495 = fsub double 6.553500e+04, %494
  %496 = extractelement <4 x double> %471, i64 3
  %497 = call fastcc double @MagickMax(double noundef %496, double noundef %495) #29
  %498 = insertelement <4 x double> poison, double %491, i64 0
  %499 = insertelement <4 x double> %498, double %487, i64 1
  %500 = insertelement <4 x double> %499, double %482, i64 2
  %501 = insertelement <4 x double> %500, double %497, i64 3
  br i1 %91, label %502, label %511

502:                                              ; preds = %476
  br i1 %466, label %507, label %503

503:                                              ; preds = %502
  %504 = getelementptr inbounds i16, ptr %460, i64 %470
  %505 = load i16, ptr %504, align 2, !tbaa !11
  %506 = zext i16 %505 to i32
  br label %507

507:                                              ; preds = %502, %503
  %508 = phi i32 [ %506, %503 ], [ 0, %502 ]
  %509 = sitofp i32 %508 to double
  %510 = call fastcc double @MagickMax(double noundef %468, double noundef %509) #29
  br label %511

511:                                              ; preds = %476, %507, %467
  %512 = phi double [ %468, %467 ], [ %510, %507 ], [ %468, %476 ]
  %513 = phi <4 x double> [ %471, %467 ], [ %501, %507 ], [ %501, %476 ]
  %514 = add nuw nsw i64 %470, 1
  %515 = getelementptr inbounds double, ptr %469, i64 -1
  %516 = icmp eq i64 %514, %445
  br i1 %516, label %517, label %467, !llvm.loop !157

517:                                              ; preds = %511
  %518 = getelementptr i8, ptr %462, i64 %457
  br label %519

519:                                              ; preds = %517, %458
  %520 = phi ptr [ %462, %458 ], [ %518, %517 ]
  %521 = phi double [ %459, %458 ], [ %512, %517 ]
  %522 = phi <4 x double> [ %464, %458 ], [ %513, %517 ]
  %523 = getelementptr inbounds %struct._PixelPacket, ptr %461, i64 %456
  %524 = getelementptr inbounds i16, ptr %460, i64 %456
  %525 = add nuw nsw i64 %463, 1
  %526 = icmp eq i64 %525, %447
  br i1 %526, label %903, label %458, !llvm.loop !158

527:                                              ; preds = %125, %125, %125
  %528 = load ptr, ptr %8, align 8, !tbaa !9
  %529 = getelementptr inbounds %struct.KernelInfo, ptr %528, i64 0, i32 2
  %530 = load i64, ptr %529, align 8, !tbaa !26
  %531 = icmp sgt i64 %530, 0
  br i1 %531, label %532, label %658

532:                                              ; preds = %527
  %533 = getelementptr inbounds %struct.KernelInfo, ptr %528, i64 0, i32 5
  %534 = load ptr, ptr %533, align 8, !tbaa !33
  %535 = getelementptr inbounds %struct.KernelInfo, ptr %528, i64 0, i32 1
  %536 = load i64, ptr %535, align 8, !tbaa !25
  %537 = icmp sgt i64 %536, 0
  %538 = load i64, ptr %7, align 8, !tbaa !44
  %539 = shl i64 %536, 3
  br label %540

540:                                              ; preds = %532, %645
  %541 = phi double [ 0.000000e+00, %532 ], [ %652, %645 ]
  %542 = phi double [ 6.553500e+04, %532 ], [ %651, %645 ]
  %543 = phi double [ 6.553500e+04, %532 ], [ %650, %645 ]
  %544 = phi double [ 6.553500e+04, %532 ], [ %649, %645 ]
  %545 = phi double [ 6.553500e+04, %532 ], [ %648, %645 ]
  %546 = phi double [ 6.553500e+04, %532 ], [ %647, %645 ]
  %547 = phi ptr [ %65, %532 ], [ %655, %645 ]
  %548 = phi ptr [ %83, %532 ], [ %654, %645 ]
  %549 = phi ptr [ %534, %532 ], [ %646, %645 ]
  %550 = phi i64 [ 0, %532 ], [ %656, %645 ]
  %551 = phi <4 x double> [ zeroinitializer, %532 ], [ %653, %645 ]
  br i1 %537, label %552, label %645

552:                                              ; preds = %540
  %553 = icmp eq ptr %547, null
  br label %554

554:                                              ; preds = %552, %632
  %555 = phi double [ %541, %552 ], [ %638, %632 ]
  %556 = phi double [ %542, %552 ], [ %637, %632 ]
  %557 = phi double [ %543, %552 ], [ %636, %632 ]
  %558 = phi double [ %544, %552 ], [ %635, %632 ]
  %559 = phi double [ %545, %552 ], [ %634, %632 ]
  %560 = phi double [ %546, %552 ], [ %633, %632 ]
  %561 = phi ptr [ %549, %552 ], [ %641, %632 ]
  %562 = phi i64 [ 0, %552 ], [ %640, %632 ]
  %563 = phi <4 x double> [ %551, %552 ], [ %639, %632 ]
  %564 = load double, ptr %561, align 8, !tbaa !34
  %565 = fcmp uno double %564, 0.000000e+00
  br i1 %565, label %632, label %566

566:                                              ; preds = %554
  %567 = fcmp ogt double %564, 0x3FE6666666666666
  br i1 %567, label %568, label %595

568:                                              ; preds = %566
  %569 = getelementptr inbounds %struct._PixelPacket, ptr %548, i64 %562
  %570 = getelementptr inbounds %struct._PixelPacket, ptr %548, i64 %562, i32 2
  %571 = load i16, ptr %570, align 2, !tbaa !115
  %572 = uitofp i16 %571 to double
  %573 = call fastcc double @MagickMin(double noundef %556, double noundef %572) #29
  %574 = getelementptr inbounds %struct._PixelPacket, ptr %548, i64 %562, i32 1
  %575 = load i16, ptr %574, align 2, !tbaa !116
  %576 = uitofp i16 %575 to double
  %577 = call fastcc double @MagickMin(double noundef %557, double noundef %576) #29
  %578 = load i16, ptr %569, align 2, !tbaa !117
  %579 = uitofp i16 %578 to double
  %580 = call fastcc double @MagickMin(double noundef %558, double noundef %579) #29
  %581 = getelementptr inbounds %struct._PixelPacket, ptr %548, i64 %562, i32 3
  %582 = load i16, ptr %581, align 2, !tbaa !118
  %583 = uitofp i16 %582 to double
  %584 = fsub double 6.553500e+04, %583
  %585 = call fastcc double @MagickMin(double noundef %559, double noundef %584) #29
  br i1 %91, label %586, label %632

586:                                              ; preds = %568
  br i1 %553, label %591, label %587

587:                                              ; preds = %586
  %588 = getelementptr inbounds i16, ptr %547, i64 %562
  %589 = load i16, ptr %588, align 2, !tbaa !11
  %590 = zext i16 %589 to i32
  br label %591

591:                                              ; preds = %586, %587
  %592 = phi i32 [ %590, %587 ], [ 0, %586 ]
  %593 = sitofp i32 %592 to double
  %594 = call fastcc double @MagickMin(double noundef %560, double noundef %593) #29
  br label %632

595:                                              ; preds = %566
  %596 = fcmp olt double %564, 3.000000e-01
  br i1 %596, label %597, label %632

597:                                              ; preds = %595
  %598 = getelementptr inbounds %struct._PixelPacket, ptr %548, i64 %562
  %599 = getelementptr inbounds %struct._PixelPacket, ptr %548, i64 %562, i32 2
  %600 = load i16, ptr %599, align 2, !tbaa !115
  %601 = uitofp i16 %600 to double
  %602 = extractelement <4 x double> %563, i64 2
  %603 = call fastcc double @MagickMax(double noundef %602, double noundef %601) #29
  %604 = getelementptr inbounds %struct._PixelPacket, ptr %548, i64 %562, i32 1
  %605 = load i16, ptr %604, align 2, !tbaa !116
  %606 = uitofp i16 %605 to double
  %607 = extractelement <4 x double> %563, i64 1
  %608 = call fastcc double @MagickMax(double noundef %607, double noundef %606) #29
  %609 = load i16, ptr %598, align 2, !tbaa !117
  %610 = uitofp i16 %609 to double
  %611 = extractelement <4 x double> %563, i64 0
  %612 = call fastcc double @MagickMax(double noundef %611, double noundef %610) #29
  %613 = getelementptr inbounds %struct._PixelPacket, ptr %548, i64 %562, i32 3
  %614 = load i16, ptr %613, align 2, !tbaa !118
  %615 = uitofp i16 %614 to double
  %616 = fsub double 6.553500e+04, %615
  %617 = extractelement <4 x double> %563, i64 3
  %618 = call fastcc double @MagickMax(double noundef %617, double noundef %616) #29
  %619 = insertelement <4 x double> poison, double %612, i64 0
  %620 = insertelement <4 x double> %619, double %608, i64 1
  %621 = insertelement <4 x double> %620, double %603, i64 2
  %622 = insertelement <4 x double> %621, double %618, i64 3
  br i1 %91, label %623, label %632

623:                                              ; preds = %597
  br i1 %553, label %628, label %624

624:                                              ; preds = %623
  %625 = getelementptr inbounds i16, ptr %547, i64 %562
  %626 = load i16, ptr %625, align 2, !tbaa !11
  %627 = zext i16 %626 to i32
  br label %628

628:                                              ; preds = %623, %624
  %629 = phi i32 [ %627, %624 ], [ 0, %623 ]
  %630 = sitofp i32 %629 to double
  %631 = call fastcc double @MagickMax(double noundef %555, double noundef %630) #29
  br label %632

632:                                              ; preds = %591, %568, %597, %628, %595, %554
  %633 = phi double [ %560, %554 ], [ %594, %591 ], [ %560, %568 ], [ %560, %628 ], [ %560, %597 ], [ %560, %595 ]
  %634 = phi double [ %559, %554 ], [ %585, %591 ], [ %585, %568 ], [ %559, %628 ], [ %559, %597 ], [ %559, %595 ]
  %635 = phi double [ %558, %554 ], [ %580, %591 ], [ %580, %568 ], [ %558, %628 ], [ %558, %597 ], [ %558, %595 ]
  %636 = phi double [ %557, %554 ], [ %577, %591 ], [ %577, %568 ], [ %557, %628 ], [ %557, %597 ], [ %557, %595 ]
  %637 = phi double [ %556, %554 ], [ %573, %591 ], [ %573, %568 ], [ %556, %628 ], [ %556, %597 ], [ %556, %595 ]
  %638 = phi double [ %555, %554 ], [ %555, %591 ], [ %555, %568 ], [ %631, %628 ], [ %555, %597 ], [ %555, %595 ]
  %639 = phi <4 x double> [ %563, %554 ], [ %563, %591 ], [ %563, %568 ], [ %622, %628 ], [ %622, %597 ], [ %563, %595 ]
  %640 = add nuw nsw i64 %562, 1
  %641 = getelementptr inbounds double, ptr %561, i64 1
  %642 = icmp eq i64 %640, %536
  br i1 %642, label %643, label %554, !llvm.loop !159

643:                                              ; preds = %632
  %644 = getelementptr i8, ptr %549, i64 %539
  br label %645

645:                                              ; preds = %643, %540
  %646 = phi ptr [ %549, %540 ], [ %644, %643 ]
  %647 = phi double [ %546, %540 ], [ %633, %643 ]
  %648 = phi double [ %545, %540 ], [ %634, %643 ]
  %649 = phi double [ %544, %540 ], [ %635, %643 ]
  %650 = phi double [ %543, %540 ], [ %636, %643 ]
  %651 = phi double [ %542, %540 ], [ %637, %643 ]
  %652 = phi double [ %541, %540 ], [ %638, %643 ]
  %653 = phi <4 x double> [ %551, %540 ], [ %639, %643 ]
  %654 = getelementptr inbounds %struct._PixelPacket, ptr %548, i64 %538
  %655 = getelementptr inbounds i16, ptr %547, i64 %538
  %656 = add nuw nsw i64 %550, 1
  %657 = icmp eq i64 %656, %530
  br i1 %657, label %658, label %540, !llvm.loop !160

658:                                              ; preds = %645, %527
  %659 = phi double [ 6.553500e+04, %527 ], [ %647, %645 ]
  %660 = phi double [ 6.553500e+04, %527 ], [ %648, %645 ]
  %661 = phi double [ 6.553500e+04, %527 ], [ %649, %645 ]
  %662 = phi double [ 6.553500e+04, %527 ], [ %650, %645 ]
  %663 = phi double [ 6.553500e+04, %527 ], [ %651, %645 ]
  %664 = phi double [ 0.000000e+00, %527 ], [ %652, %645 ]
  %665 = phi <4 x double> [ zeroinitializer, %527 ], [ %653, %645 ]
  %666 = extractelement <4 x double> %665, i64 2
  %667 = fsub double %663, %666
  %668 = call fastcc double @MagickMax(double noundef %667, double noundef 0.000000e+00) #29
  %669 = extractelement <4 x double> %665, i64 1
  %670 = fsub double %662, %669
  %671 = call fastcc double @MagickMax(double noundef %670, double noundef 0.000000e+00) #29
  %672 = extractelement <4 x double> %665, i64 0
  %673 = fsub double %661, %672
  %674 = call fastcc double @MagickMax(double noundef %673, double noundef 0.000000e+00) #29
  %675 = extractelement <4 x double> %665, i64 3
  %676 = fsub double %660, %675
  %677 = call fastcc double @MagickMax(double noundef %676, double noundef 0.000000e+00) #29
  %678 = fsub double %659, %664
  %679 = call fastcc double @MagickMax(double noundef %678, double noundef 0.000000e+00) #29
  %680 = insertelement <4 x double> poison, double %674, i64 0
  %681 = insertelement <4 x double> %680, double %671, i64 1
  %682 = insertelement <4 x double> %681, double %668, i64 2
  %683 = insertelement <4 x double> %682, double %677, i64 3
  br label %903

684:                                              ; preds = %125
  %685 = load ptr, ptr %8, align 8, !tbaa !9
  %686 = getelementptr inbounds %struct.KernelInfo, ptr %685, i64 0, i32 2
  %687 = load i64, ptr %686, align 8, !tbaa !26
  %688 = icmp sgt i64 %687, 0
  br i1 %688, label %689, label %903

689:                                              ; preds = %684
  %690 = getelementptr inbounds %struct.KernelInfo, ptr %685, i64 0, i32 5
  %691 = load ptr, ptr %690, align 8, !tbaa !33
  br label %692

692:                                              ; preds = %689, %735
  %693 = phi ptr [ %736, %735 ], [ %685, %689 ]
  %694 = phi double [ %738, %735 ], [ %126, %689 ]
  %695 = phi ptr [ %740, %735 ], [ %83, %689 ]
  %696 = phi ptr [ %737, %735 ], [ %691, %689 ]
  %697 = phi i64 [ %741, %735 ], [ 0, %689 ]
  %698 = getelementptr inbounds %struct.KernelInfo, ptr %693, i64 0, i32 1
  %699 = load i64, ptr %698, align 8, !tbaa !25
  %700 = icmp sgt i64 %699, 0
  br i1 %700, label %701, label %735

701:                                              ; preds = %692, %727
  %702 = phi double [ %728, %727 ], [ %694, %692 ]
  %703 = phi ptr [ %730, %727 ], [ %696, %692 ]
  %704 = phi i64 [ %729, %727 ], [ 0, %692 ]
  %705 = load double, ptr %703, align 8, !tbaa !34
  %706 = fcmp uno double %705, 0.000000e+00
  %707 = fcmp olt double %705, 5.000000e-01
  %708 = or i1 %706, %707
  br i1 %708, label %727, label %709

709:                                              ; preds = %701
  %710 = fcmp oeq double %702, 0.000000e+00
  br i1 %710, label %718, label %711

711:                                              ; preds = %709
  %712 = load ptr, ptr %2, align 8, !tbaa !9
  %713 = getelementptr inbounds %struct._PixelPacket, ptr %695, i64 %704
  %714 = call float @GetPixelIntensity(ptr noundef %712, ptr noundef %713) #36
  %715 = load ptr, ptr %11, align 8, !tbaa !9
  %716 = call float @GetPixelIntensity(ptr noundef %715, ptr noundef nonnull %85) #36
  %717 = fcmp olt float %714, %716
  br i1 %717, label %718, label %727

718:                                              ; preds = %711, %709
  %719 = getelementptr inbounds %struct._PixelPacket, ptr %695, i64 %704
  %720 = load i64, ptr %719, align 2
  store i64 %720, ptr %85, align 2
  %721 = fcmp ogt double %702, 0.000000e+00
  br i1 %721, label %722, label %727

722:                                              ; preds = %718
  %723 = load ptr, ptr %15, align 8, !tbaa !9
  %724 = getelementptr inbounds i64, ptr %723, i64 %81
  %725 = load i64, ptr %724, align 8, !tbaa !44
  %726 = add i64 %725, 1
  store i64 %726, ptr %724, align 8, !tbaa !44
  br label %727

727:                                              ; preds = %718, %722, %711, %701
  %728 = phi double [ %702, %701 ], [ %702, %711 ], [ 1.000000e+00, %722 ], [ 1.000000e+00, %718 ]
  %729 = add nuw nsw i64 %704, 1
  %730 = getelementptr inbounds double, ptr %703, i64 1
  %731 = load ptr, ptr %8, align 8, !tbaa !9
  %732 = getelementptr inbounds %struct.KernelInfo, ptr %731, i64 0, i32 1
  %733 = load i64, ptr %732, align 8, !tbaa !25
  %734 = icmp slt i64 %729, %733
  br i1 %734, label %701, label %735, !llvm.loop !161

735:                                              ; preds = %727, %692
  %736 = phi ptr [ %693, %692 ], [ %731, %727 ]
  %737 = phi ptr [ %696, %692 ], [ %730, %727 ]
  %738 = phi double [ %694, %692 ], [ %728, %727 ]
  %739 = load i64, ptr %7, align 8, !tbaa !44
  %740 = getelementptr inbounds %struct._PixelPacket, ptr %695, i64 %739
  %741 = add nuw nsw i64 %697, 1
  %742 = getelementptr inbounds %struct.KernelInfo, ptr %736, i64 0, i32 2
  %743 = load i64, ptr %742, align 8, !tbaa !26
  %744 = icmp slt i64 %741, %743
  br i1 %744, label %692, label %899, !llvm.loop !162

745:                                              ; preds = %125
  %746 = load ptr, ptr %8, align 8, !tbaa !9
  %747 = getelementptr inbounds %struct.KernelInfo, ptr %746, i64 0, i32 2
  %748 = load i64, ptr %747, align 8, !tbaa !26
  %749 = icmp sgt i64 %748, 0
  br i1 %749, label %750, label %903

750:                                              ; preds = %745
  %751 = getelementptr inbounds %struct.KernelInfo, ptr %746, i64 0, i32 5
  %752 = load ptr, ptr %751, align 8, !tbaa !33
  %753 = getelementptr inbounds %struct.KernelInfo, ptr %746, i64 0, i32 1
  %754 = load i64, ptr %753, align 8, !tbaa !25
  %755 = mul i64 %748, %754
  %756 = getelementptr double, ptr %752, i64 %755
  %757 = getelementptr double, ptr %756, i64 -1
  br label %758

758:                                              ; preds = %750, %801
  %759 = phi ptr [ %802, %801 ], [ %746, %750 ]
  %760 = phi double [ %804, %801 ], [ %126, %750 ]
  %761 = phi ptr [ %806, %801 ], [ %83, %750 ]
  %762 = phi ptr [ %803, %801 ], [ %757, %750 ]
  %763 = phi i64 [ %807, %801 ], [ 0, %750 ]
  %764 = getelementptr inbounds %struct.KernelInfo, ptr %759, i64 0, i32 1
  %765 = load i64, ptr %764, align 8, !tbaa !25
  %766 = icmp sgt i64 %765, 0
  br i1 %766, label %767, label %801

767:                                              ; preds = %758, %793
  %768 = phi double [ %794, %793 ], [ %760, %758 ]
  %769 = phi ptr [ %796, %793 ], [ %762, %758 ]
  %770 = phi i64 [ %795, %793 ], [ 0, %758 ]
  %771 = load double, ptr %769, align 8, !tbaa !34
  %772 = fcmp uno double %771, 0.000000e+00
  %773 = fcmp olt double %771, 5.000000e-01
  %774 = or i1 %772, %773
  br i1 %774, label %793, label %775

775:                                              ; preds = %767
  %776 = fcmp oeq double %768, 0.000000e+00
  br i1 %776, label %784, label %777

777:                                              ; preds = %775
  %778 = load ptr, ptr %2, align 8, !tbaa !9
  %779 = getelementptr inbounds %struct._PixelPacket, ptr %761, i64 %770
  %780 = call float @GetPixelIntensity(ptr noundef %778, ptr noundef %779) #36
  %781 = load ptr, ptr %11, align 8, !tbaa !9
  %782 = call float @GetPixelIntensity(ptr noundef %781, ptr noundef nonnull %85) #36
  %783 = fcmp ogt float %780, %782
  br i1 %783, label %784, label %793

784:                                              ; preds = %777, %775
  %785 = getelementptr inbounds %struct._PixelPacket, ptr %761, i64 %770
  %786 = load i64, ptr %785, align 2
  store i64 %786, ptr %85, align 2
  %787 = fcmp ogt double %768, 0.000000e+00
  br i1 %787, label %788, label %793

788:                                              ; preds = %784
  %789 = load ptr, ptr %15, align 8, !tbaa !9
  %790 = getelementptr inbounds i64, ptr %789, i64 %81
  %791 = load i64, ptr %790, align 8, !tbaa !44
  %792 = add i64 %791, 1
  store i64 %792, ptr %790, align 8, !tbaa !44
  br label %793

793:                                              ; preds = %784, %788, %777, %767
  %794 = phi double [ %768, %767 ], [ %768, %777 ], [ 1.000000e+00, %788 ], [ 1.000000e+00, %784 ]
  %795 = add nuw nsw i64 %770, 1
  %796 = getelementptr inbounds double, ptr %769, i64 -1
  %797 = load ptr, ptr %8, align 8, !tbaa !9
  %798 = getelementptr inbounds %struct.KernelInfo, ptr %797, i64 0, i32 1
  %799 = load i64, ptr %798, align 8, !tbaa !25
  %800 = icmp slt i64 %795, %799
  br i1 %800, label %767, label %801, !llvm.loop !163

801:                                              ; preds = %793, %758
  %802 = phi ptr [ %759, %758 ], [ %797, %793 ]
  %803 = phi ptr [ %762, %758 ], [ %796, %793 ]
  %804 = phi double [ %760, %758 ], [ %794, %793 ]
  %805 = load i64, ptr %7, align 8, !tbaa !44
  %806 = getelementptr inbounds %struct._PixelPacket, ptr %761, i64 %805
  %807 = add nuw nsw i64 %763, 1
  %808 = getelementptr inbounds %struct.KernelInfo, ptr %802, i64 0, i32 2
  %809 = load i64, ptr %808, align 8, !tbaa !26
  %810 = icmp slt i64 %807, %809
  br i1 %810, label %758, label %901, !llvm.loop !164

811:                                              ; preds = %125
  %812 = load ptr, ptr %8, align 8, !tbaa !9
  %813 = getelementptr inbounds %struct.KernelInfo, ptr %812, i64 0, i32 1
  %814 = load i64, ptr %813, align 8, !tbaa !25
  %815 = getelementptr inbounds %struct.KernelInfo, ptr %812, i64 0, i32 2
  %816 = load i64, ptr %815, align 8, !tbaa !26
  %817 = icmp sgt i64 %816, 0
  br i1 %817, label %818, label %903

818:                                              ; preds = %811
  %819 = getelementptr inbounds %struct.KernelInfo, ptr %812, i64 0, i32 5
  %820 = load ptr, ptr %819, align 8, !tbaa !33
  %821 = mul i64 %816, %814
  %822 = getelementptr double, ptr %820, i64 %821
  %823 = getelementptr double, ptr %822, i64 -1
  %824 = icmp sgt i64 %814, 0
  %825 = load i64, ptr %7, align 8, !tbaa !44
  %826 = mul i64 %814, -8
  br label %827

827:                                              ; preds = %818, %891
  %828 = phi double [ %118, %818 ], [ %893, %891 ]
  %829 = phi ptr [ %65, %818 ], [ %896, %891 ]
  %830 = phi ptr [ %83, %818 ], [ %895, %891 ]
  %831 = phi ptr [ %823, %818 ], [ %892, %891 ]
  %832 = phi i64 [ 0, %818 ], [ %897, %891 ]
  %833 = phi <4 x double> [ %129, %818 ], [ %894, %891 ]
  br i1 %824, label %834, label %891

834:                                              ; preds = %827
  %835 = icmp eq ptr %829, null
  br label %836

836:                                              ; preds = %834, %883
  %837 = phi double [ %828, %834 ], [ %884, %883 ]
  %838 = phi ptr [ %831, %834 ], [ %887, %883 ]
  %839 = phi i64 [ 0, %834 ], [ %886, %883 ]
  %840 = phi <4 x double> [ %833, %834 ], [ %885, %883 ]
  %841 = load double, ptr %838, align 8, !tbaa !34
  %842 = fcmp uno double %841, 0.000000e+00
  br i1 %842, label %883, label %843

843:                                              ; preds = %836
  %844 = getelementptr inbounds %struct._PixelPacket, ptr %830, i64 %839
  %845 = getelementptr inbounds %struct._PixelPacket, ptr %830, i64 %839, i32 2
  %846 = load i16, ptr %845, align 2, !tbaa !115
  %847 = uitofp i16 %846 to double
  %848 = fadd double %841, %847
  %849 = extractelement <4 x double> %840, i64 2
  %850 = call fastcc double @MagickMin(double noundef %849, double noundef %848) #29
  %851 = getelementptr inbounds %struct._PixelPacket, ptr %830, i64 %839, i32 1
  %852 = load i16, ptr %851, align 2, !tbaa !116
  %853 = uitofp i16 %852 to double
  %854 = fadd double %841, %853
  %855 = extractelement <4 x double> %840, i64 1
  %856 = call fastcc double @MagickMin(double noundef %855, double noundef %854) #29
  %857 = load i16, ptr %844, align 2, !tbaa !117
  %858 = uitofp i16 %857 to double
  %859 = fadd double %841, %858
  %860 = extractelement <4 x double> %840, i64 0
  %861 = call fastcc double @MagickMin(double noundef %860, double noundef %859) #29
  %862 = fadd double %841, 6.553500e+04
  %863 = getelementptr inbounds %struct._PixelPacket, ptr %830, i64 %839, i32 3
  %864 = load i16, ptr %863, align 2, !tbaa !118
  %865 = uitofp i16 %864 to double
  %866 = fsub double %862, %865
  %867 = extractelement <4 x double> %840, i64 3
  %868 = call fastcc double @MagickMin(double noundef %867, double noundef %866) #29
  %869 = insertelement <4 x double> poison, double %861, i64 0
  %870 = insertelement <4 x double> %869, double %856, i64 1
  %871 = insertelement <4 x double> %870, double %850, i64 2
  %872 = insertelement <4 x double> %871, double %868, i64 3
  br i1 %91, label %873, label %883

873:                                              ; preds = %843
  br i1 %835, label %878, label %874

874:                                              ; preds = %873
  %875 = getelementptr inbounds i16, ptr %829, i64 %839
  %876 = load i16, ptr %875, align 2, !tbaa !11
  %877 = zext i16 %876 to i32
  br label %878

878:                                              ; preds = %873, %874
  %879 = phi i32 [ %877, %874 ], [ 0, %873 ]
  %880 = sitofp i32 %879 to double
  %881 = fadd double %841, %880
  %882 = call fastcc double @MagickMin(double noundef %837, double noundef %881) #29
  br label %883

883:                                              ; preds = %843, %878, %836
  %884 = phi double [ %837, %836 ], [ %882, %878 ], [ %837, %843 ]
  %885 = phi <4 x double> [ %840, %836 ], [ %872, %878 ], [ %872, %843 ]
  %886 = add nuw nsw i64 %839, 1
  %887 = getelementptr inbounds double, ptr %838, i64 -1
  %888 = icmp eq i64 %886, %814
  br i1 %888, label %889, label %836, !llvm.loop !165

889:                                              ; preds = %883
  %890 = getelementptr i8, ptr %831, i64 %826
  br label %891

891:                                              ; preds = %889, %827
  %892 = phi ptr [ %831, %827 ], [ %890, %889 ]
  %893 = phi double [ %828, %827 ], [ %884, %889 ]
  %894 = phi <4 x double> [ %833, %827 ], [ %885, %889 ]
  %895 = getelementptr inbounds %struct._PixelPacket, ptr %830, i64 %825
  %896 = getelementptr inbounds i16, ptr %829, i64 %825
  %897 = add nuw nsw i64 %832, 1
  %898 = icmp eq i64 %897, %816
  br i1 %898, label %903, label %827, !llvm.loop !166

899:                                              ; preds = %735
  %900 = insertelement <4 x double> %129, double %738, i64 2
  br label %903

901:                                              ; preds = %801
  %902 = insertelement <4 x double> %129, double %804, i64 2
  br label %903

903:                                              ; preds = %891, %519, %434, %901, %899, %811, %745, %684, %442, %360, %321, %355, %125, %253, %247, %658
  %904 = phi double [ %118, %125 ], [ %118, %658 ], [ %211, %253 ], [ %211, %247 ], [ %322, %355 ], [ %322, %321 ], [ %118, %360 ], [ %118, %442 ], [ %118, %684 ], [ %118, %745 ], [ %118, %811 ], [ %118, %899 ], [ %118, %901 ], [ %118, %434 ], [ %118, %519 ], [ %893, %891 ]
  %905 = phi double [ 6.553500e+04, %125 ], [ %679, %658 ], [ 6.553500e+04, %253 ], [ 6.553500e+04, %247 ], [ 6.553500e+04, %355 ], [ 6.553500e+04, %321 ], [ 6.553500e+04, %360 ], [ 6.553500e+04, %442 ], [ 6.553500e+04, %684 ], [ 6.553500e+04, %745 ], [ 6.553500e+04, %811 ], [ 6.553500e+04, %899 ], [ 6.553500e+04, %901 ], [ %436, %434 ], [ 6.553500e+04, %519 ], [ 6.553500e+04, %891 ]
  %906 = phi double [ 0.000000e+00, %125 ], [ %664, %658 ], [ 0.000000e+00, %253 ], [ 0.000000e+00, %247 ], [ 0.000000e+00, %355 ], [ 0.000000e+00, %321 ], [ 0.000000e+00, %360 ], [ 0.000000e+00, %442 ], [ 0.000000e+00, %684 ], [ 0.000000e+00, %745 ], [ 0.000000e+00, %811 ], [ 0.000000e+00, %899 ], [ 0.000000e+00, %901 ], [ 0.000000e+00, %434 ], [ %521, %519 ], [ 0.000000e+00, %891 ]
  %907 = phi <4 x double> [ %129, %125 ], [ %129, %658 ], [ %212, %253 ], [ %212, %247 ], [ %325, %355 ], [ %325, %321 ], [ %129, %360 ], [ %129, %442 ], [ %129, %684 ], [ %129, %745 ], [ %129, %811 ], [ %900, %899 ], [ %902, %901 ], [ %129, %434 ], [ %129, %519 ], [ %894, %891 ]
  %908 = phi <4 x double> [ <double 6.553500e+04, double 6.553500e+04, double 6.553500e+04, double 6.553500e+04>, %125 ], [ %683, %658 ], [ <double 6.553500e+04, double 6.553500e+04, double 6.553500e+04, double 6.553500e+04>, %253 ], [ <double 6.553500e+04, double 6.553500e+04, double 6.553500e+04, double 6.553500e+04>, %247 ], [ <double 6.553500e+04, double 6.553500e+04, double 6.553500e+04, double 6.553500e+04>, %355 ], [ <double 6.553500e+04, double 6.553500e+04, double 6.553500e+04, double 6.553500e+04>, %321 ], [ <double 6.553500e+04, double 6.553500e+04, double 6.553500e+04, double 6.553500e+04>, %360 ], [ <double 6.553500e+04, double 6.553500e+04, double 6.553500e+04, double 6.553500e+04>, %442 ], [ <double 6.553500e+04, double 6.553500e+04, double 6.553500e+04, double 6.553500e+04>, %684 ], [ <double 6.553500e+04, double 6.553500e+04, double 6.553500e+04, double 6.553500e+04>, %745 ], [ <double 6.553500e+04, double 6.553500e+04, double 6.553500e+04, double 6.553500e+04>, %811 ], [ <double 6.553500e+04, double 6.553500e+04, double 6.553500e+04, double 6.553500e+04>, %899 ], [ <double 6.553500e+04, double 6.553500e+04, double 6.553500e+04, double 6.553500e+04>, %901 ], [ %437, %434 ], [ <double 6.553500e+04, double 6.553500e+04, double 6.553500e+04, double 6.553500e+04>, %519 ], [ <double 6.553500e+04, double 6.553500e+04, double 6.553500e+04, double 6.553500e+04>, %891 ]
  %909 = phi <4 x double> [ zeroinitializer, %125 ], [ %665, %658 ], [ zeroinitializer, %253 ], [ zeroinitializer, %247 ], [ zeroinitializer, %355 ], [ zeroinitializer, %321 ], [ zeroinitializer, %360 ], [ zeroinitializer, %442 ], [ zeroinitializer, %684 ], [ zeroinitializer, %745 ], [ zeroinitializer, %811 ], [ zeroinitializer, %899 ], [ zeroinitializer, %901 ], [ zeroinitializer, %434 ], [ %522, %519 ], [ zeroinitializer, %891 ]
  %910 = load i32, ptr %12, align 4, !tbaa !43
  switch i32 %910, label %918 [
    i32 18, label %911
    i32 3, label %911
    i32 4, label %921
    i32 19, label %912
    i32 20, label %915
  ]

911:                                              ; preds = %903, %903
  br label %918

912:                                              ; preds = %903
  %913 = fsub <4 x double> %907, %908
  %914 = fsub double %904, %905
  br label %921

915:                                              ; preds = %903
  %916 = fadd <4 x double> %907, %908
  %917 = fadd double %904, %905
  br label %921

918:                                              ; preds = %903, %911
  %919 = phi double [ %904, %903 ], [ %905, %911 ]
  %920 = phi <4 x double> [ %907, %903 ], [ %908, %911 ]
  switch i32 %910, label %921 [
    i32 0, label %974
    i32 1, label %974
    i32 6, label %974
    i32 5, label %974
  ]

921:                                              ; preds = %903, %912, %915, %918
  %922 = phi double [ %919, %918 ], [ %914, %912 ], [ %917, %915 ], [ %906, %903 ]
  %923 = phi <4 x double> [ %920, %918 ], [ %913, %912 ], [ %916, %915 ], [ %909, %903 ]
  %924 = load i32, ptr %14, align 4, !tbaa !43
  %925 = and i32 %924, 1
  %926 = icmp eq i32 %925, 0
  br i1 %926, label %932, label %927

927:                                              ; preds = %921
  %928 = extractelement <4 x double> %923, i64 2
  %929 = fptrunc double %928 to float
  %930 = call fastcc zeroext i16 @ClampToQuantum(float noundef %929) #29
  %931 = getelementptr inbounds %struct._PixelPacket, ptr %85, i64 0, i32 2
  store i16 %930, ptr %931, align 2, !tbaa !115
  br label %932

932:                                              ; preds = %927, %921
  %933 = and i32 %924, 2
  %934 = icmp eq i32 %933, 0
  br i1 %934, label %940, label %935

935:                                              ; preds = %932
  %936 = extractelement <4 x double> %923, i64 1
  %937 = fptrunc double %936 to float
  %938 = call fastcc zeroext i16 @ClampToQuantum(float noundef %937) #29
  %939 = getelementptr inbounds %struct._PixelPacket, ptr %85, i64 0, i32 1
  store i16 %938, ptr %939, align 2, !tbaa !116
  br label %940

940:                                              ; preds = %935, %932
  %941 = and i32 %924, 4
  %942 = icmp eq i32 %941, 0
  br i1 %942, label %947, label %943

943:                                              ; preds = %940
  %944 = extractelement <4 x double> %923, i64 0
  %945 = fptrunc double %944 to float
  %946 = call fastcc zeroext i16 @ClampToQuantum(float noundef %945) #29
  store i16 %946, ptr %85, align 2, !tbaa !117
  br label %947

947:                                              ; preds = %943, %940
  %948 = and i32 %924, 8
  %949 = icmp eq i32 %948, 0
  br i1 %949, label %961, label %950

950:                                              ; preds = %947
  %951 = load ptr, ptr %2, align 8, !tbaa !9
  %952 = getelementptr inbounds %struct._Image, ptr %951, i64 0, i32 6
  %953 = load i32, ptr %952, align 8, !tbaa !126
  %954 = icmp eq i32 %953, 0
  br i1 %954, label %961, label %955

955:                                              ; preds = %950
  %956 = extractelement <4 x double> %923, i64 3
  %957 = fptrunc double %956 to float
  %958 = call fastcc zeroext i16 @ClampToQuantum(float noundef %957) #29
  %959 = xor i16 %958, -1
  %960 = getelementptr inbounds %struct._PixelPacket, ptr %85, i64 0, i32 3
  store i16 %959, ptr %960, align 2, !tbaa !118
  br label %961

961:                                              ; preds = %955, %950, %947
  %962 = and i32 %924, 32
  %963 = icmp eq i32 %962, 0
  br i1 %963, label %974, label %964

964:                                              ; preds = %961
  %965 = load ptr, ptr %2, align 8, !tbaa !9
  %966 = getelementptr inbounds %struct._Image, ptr %965, i64 0, i32 1
  %967 = load i32, ptr %966, align 4, !tbaa !119
  %968 = icmp ne i32 %967, 12
  %969 = select i1 %968, i1 true, i1 %78
  br i1 %969, label %974, label %970

970:                                              ; preds = %964
  %971 = getelementptr inbounds i16, ptr %67, i64 %84
  %972 = fptrunc double %922 to float
  %973 = call fastcc zeroext i16 @ClampToQuantum(float noundef %972) #29
  store i16 %973, ptr %971, align 2, !tbaa !11
  br label %974

974:                                              ; preds = %961, %964, %970, %918, %918, %918, %918
  %975 = load i16, ptr %100, align 2, !tbaa !115
  %976 = getelementptr inbounds %struct._PixelPacket, ptr %85, i64 0, i32 2
  %977 = load i16, ptr %976, align 2, !tbaa !115
  %978 = icmp eq i16 %975, %977
  br i1 %978, label %979, label %1011

979:                                              ; preds = %974
  %980 = load i16, ptr %103, align 2, !tbaa !116
  %981 = getelementptr inbounds %struct._PixelPacket, ptr %85, i64 0, i32 1
  %982 = load i16, ptr %981, align 2, !tbaa !116
  %983 = icmp eq i16 %980, %982
  br i1 %983, label %984, label %1011

984:                                              ; preds = %979
  %985 = load i16, ptr %86, align 2, !tbaa !117
  %986 = load i16, ptr %85, align 2, !tbaa !117
  %987 = icmp eq i16 %985, %986
  br i1 %987, label %988, label %1011

988:                                              ; preds = %984
  %989 = load i16, ptr %106, align 2, !tbaa !118
  %990 = getelementptr inbounds %struct._PixelPacket, ptr %85, i64 0, i32 3
  %991 = load i16, ptr %990, align 2, !tbaa !118
  %992 = icmp eq i16 %989, %991
  br i1 %992, label %993, label %1011

993:                                              ; preds = %988
  %994 = load ptr, ptr %2, align 8, !tbaa !9
  %995 = getelementptr inbounds %struct._Image, ptr %994, i64 0, i32 1
  %996 = load i32, ptr %995, align 4, !tbaa !119
  %997 = icmp eq i32 %996, 12
  br i1 %997, label %998, label %1017

998:                                              ; preds = %993
  br i1 %79, label %1002, label %999

999:                                              ; preds = %998
  %1000 = load i16, ptr %80, align 2, !tbaa !11
  %1001 = zext i16 %1000 to i32
  br label %1002

1002:                                             ; preds = %998, %999
  %1003 = phi i32 [ %1001, %999 ], [ 0, %998 ]
  br i1 %78, label %1008, label %1004

1004:                                             ; preds = %1002
  %1005 = getelementptr inbounds i16, ptr %67, i64 %84
  %1006 = load i16, ptr %1005, align 2, !tbaa !11
  %1007 = zext i16 %1006 to i32
  br label %1008

1008:                                             ; preds = %1002, %1004
  %1009 = phi i32 [ %1007, %1004 ], [ 0, %1002 ]
  %1010 = icmp eq i32 %1003, %1009
  br i1 %1010, label %1017, label %1011

1011:                                             ; preds = %1008, %988, %984, %979, %974
  %1012 = load ptr, ptr %15, align 8, !tbaa !9
  %1013 = getelementptr inbounds i64, ptr %1012, i64 %81
  %1014 = load i64, ptr %1013, align 8, !tbaa !44
  %1015 = add i64 %1014, 1
  store i64 %1015, ptr %1013, align 8, !tbaa !44
  %1016 = load ptr, ptr %2, align 8, !tbaa !9
  br label %1017

1017:                                             ; preds = %1011, %1008, %993
  %1018 = phi ptr [ %1016, %1011 ], [ %994, %1008 ], [ %994, %993 ]
  %1019 = getelementptr inbounds %struct._PixelPacket, ptr %83, i64 1
  %1020 = getelementptr inbounds %struct._PixelPacket, ptr %85, i64 1
  %1021 = add nuw nsw i64 %84, 1
  %1022 = getelementptr inbounds %struct._Image, ptr %1018, i64 0, i32 7
  %1023 = load i64, ptr %1022, align 8, !tbaa !90
  %1024 = icmp slt i64 %1021, %1023
  br i1 %1024, label %82, label %1025, !llvm.loop !167

1025:                                             ; preds = %1017, %63
  %1026 = load ptr, ptr %10, align 8, !tbaa !9
  %1027 = load ptr, ptr %9, align 8, !tbaa !9
  %1028 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %1026, ptr noundef %1027) #36
  %1029 = icmp eq i32 %1028, 0
  br i1 %1029, label %1030, label %1031

1030:                                             ; preds = %1025
  store i32 0, ptr %3, align 4, !tbaa !43
  br label %1031

1031:                                             ; preds = %1030, %1025
  %1032 = load ptr, ptr %2, align 8, !tbaa !9
  %1033 = getelementptr inbounds %struct._Image, ptr %1032, i64 0, i32 47
  %1034 = load ptr, ptr %1033, align 8, !tbaa !128
  %1035 = icmp eq ptr %1034, null
  br i1 %1035, label %1045, label %1036

1036:                                             ; preds = %1031
  call void @__kmpc_critical(ptr nonnull @2, i32 %28, ptr nonnull @.gomp_critical_user_MagickCore_MorphologyPrimitive.var)
  %1037 = load ptr, ptr %2, align 8, !tbaa !9
  %1038 = load i64, ptr %16, align 8, !tbaa !137
  %1039 = add nsw i64 %1038, 1
  store i64 %1039, ptr %16, align 8, !tbaa !137
  %1040 = getelementptr inbounds %struct._Image, ptr %1037, i64 0, i32 8
  %1041 = load i64, ptr %1040, align 8, !tbaa !102
  %1042 = call fastcc i32 @SetImageProgress(ptr noundef %1037, i64 noundef %1038, i64 noundef %1041) #29
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %28, ptr nonnull @.gomp_critical_user_MagickCore_MorphologyPrimitive.var)
  %1043 = icmp eq i32 %1042, 0
  br i1 %1043, label %1044, label %1045

1044:                                             ; preds = %1036, %42
  store i32 0, ptr %3, align 4, !tbaa !43
  br label %1045

1045:                                             ; preds = %1044, %1031, %1036, %37
  %1046 = add nsw i64 %38, 1
  %1047 = load i64, ptr %19, align 8, !tbaa !44
  %1048 = icmp slt i64 %38, %1047
  br i1 %1048, label %37, label %1049

1049:                                             ; preds = %1045
  %1050 = load i64, ptr %18, align 8, !tbaa !44
  br label %1051

1051:                                             ; preds = %1049, %33
  %1052 = phi i64 [ %35, %33 ], [ %1050, %1049 ]
  %1053 = phi i64 [ %34, %33 ], [ %1047, %1049 ]
  %1054 = load i64, ptr %20, align 8, !tbaa !44
  %1055 = add nsw i64 %1054, %1052
  store i64 %1055, ptr %18, align 8, !tbaa !44
  %1056 = add nsw i64 %1054, %1053
  %1057 = call i64 @llvm.smin.i64(i64 %1056, i64 %25)
  store i64 %1057, ptr %19, align 8, !tbaa !44
  %1058 = icmp sgt i64 %1055, %1057
  br i1 %1058, label %1059, label %33

1059:                                             ; preds = %1051, %27
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %28)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #21
  br label %1060

1060:                                             ; preds = %1059, %17
  ret void
}

; Function Attrs: hot optsize
declare float @GetPixelIntensity(ptr noundef, ptr noundef) local_unnamed_addr #17

; Function Attrs: nounwind optsize
declare i32 @omp_get_max_threads() local_unnamed_addr #24

; Function Attrs: nounwind optsize
declare i32 @omp_get_thread_num() local_unnamed_addr #24

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @MorphologyImageChannel(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 29
  %8 = load double, ptr %7, align 8, !tbaa !168
  %9 = add i32 %2, -1
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %11, label %24

11:                                               ; preds = %6
  %12 = tail call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.99) #30
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = tail call fastcc double @StringToDoubleInterval(ptr noundef nonnull %12) #29
  br label %16

16:                                               ; preds = %14, %11
  %17 = phi double [ %15, %14 ], [ %8, %11 ]
  %18 = tail call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.100) #30
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = tail call ptr @CloneKernelInfo(ptr noundef %4) #29
  %22 = icmp eq ptr %21, null
  br i1 %22, label %49, label %23

23:                                               ; preds = %20
  tail call void @ScaleGeometryKernelInfo(ptr noundef nonnull %21, ptr noundef nonnull %18) #29
  br label %24

24:                                               ; preds = %16, %23, %6
  %25 = phi double [ %8, %6 ], [ %17, %23 ], [ %17, %16 ]
  %26 = phi ptr [ %4, %6 ], [ %21, %23 ], [ %4, %16 ]
  %27 = tail call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.101) #30
  %28 = tail call i32 @IsMagickTrue(ptr noundef %27) #30
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = tail call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.102) #30
  %32 = tail call i32 @IsMagickTrue(ptr noundef %31) #30
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = tail call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.103) #30
  %36 = tail call i32 @IsMagickTrue(ptr noundef %35) #30
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34, %30, %24
  tail call void @ShowKernelInfo(ptr noundef %26) #29
  br label %39

39:                                               ; preds = %38, %34
  %40 = tail call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.104) #30
  %41 = icmp eq ptr %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = tail call i64 @ParseCommandOption(i32 noundef 11, i32 noundef 0, ptr noundef nonnull %40) #30
  %44 = trunc i64 %43 to i32
  br label %45

45:                                               ; preds = %42, %39
  %46 = phi i32 [ %44, %42 ], [ 0, %39 ]
  %47 = tail call ptr @MorphologyApply(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, ptr noundef %26, i32 noundef %46, double noundef %25, ptr noundef %5) #29
  %48 = icmp eq ptr %26, %4
  br i1 %48, label %53, label %49

49:                                               ; preds = %45, %20
  %50 = phi ptr [ null, %20 ], [ %26, %45 ]
  %51 = phi ptr [ null, %20 ], [ %47, %45 ]
  %52 = tail call ptr @DestroyKernelInfo(ptr noundef %50) #29
  br label %53

53:                                               ; preds = %49, %45
  %54 = phi ptr [ %47, %45 ], [ %51, %49 ]
  ret ptr %54
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc double @StringToDoubleInterval(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  %3 = call double @InterpretLocaleValue(ptr noundef %0, ptr noundef nonnull %2) #30
  %4 = load ptr, ptr %2, align 8, !tbaa !9
  %5 = load i8, ptr %4, align 1, !tbaa !6
  %6 = icmp eq i8 %5, 37
  %7 = fmul double %3, 6.553600e+02
  %8 = select i1 %6, double %7, double %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret double %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ScaleGeometryKernelInfo(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._GeometryInfo, align 16
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #21
  call void @SetGeometryInfo(ptr noundef nonnull %3) #30
  %4 = call i32 @ParseGeometry(ptr noundef %1, ptr noundef nonnull %3) #30
  %5 = and i32 %4, 4096
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load <2 x double>, ptr %3, align 16, !tbaa !34
  %9 = fmul <2 x double> %8, <double 1.000000e-02, double 1.000000e-02>
  store <2 x double> %9, ptr %3, align 16, !tbaa !34
  br label %10

10:                                               ; preds = %7, %2
  %11 = and i32 %4, 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store double 1.000000e+00, ptr %3, align 16, !tbaa !24
  br label %14

14:                                               ; preds = %13, %10
  %15 = and i32 %4, 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct._GeometryInfo, ptr %3, i64 0, i32 1
  store double 0.000000e+00, ptr %18, align 8, !tbaa !22
  %19 = load double, ptr %3, align 16, !tbaa !24
  call void @ScaleKernelInfo(ptr noundef %0, double noundef %19, i32 noundef %4) #29
  br label %24

20:                                               ; preds = %14
  %21 = load double, ptr %3, align 16, !tbaa !24
  call void @ScaleKernelInfo(ptr noundef %0, double noundef %21, i32 noundef %4) #29
  %22 = getelementptr inbounds %struct._GeometryInfo, ptr %3, i64 0, i32 1
  %23 = load double, ptr %22, align 8, !tbaa !22
  call void @UnityAddKernelInfo(ptr noundef %0, double noundef %23) #29
  br label %24

24:                                               ; preds = %17, %20
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #21
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
  %8 = load ptr, ptr @stderr, align 8, !tbaa !9
  %9 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %8, ptr noundef nonnull @.str.105) #30
  %10 = load ptr, ptr %4, align 8, !tbaa !13
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %5
  %13 = load ptr, ptr @stderr, align 8, !tbaa !9
  %14 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %13, ptr noundef nonnull @.str.106, i64 noundef %6) #30
  br label %15

15:                                               ; preds = %12, %5
  %16 = load ptr, ptr @stderr, align 8, !tbaa !9
  %17 = load i32, ptr %7, align 8, !tbaa !20
  %18 = zext i32 %17 to i64
  %19 = tail call ptr @CommandOptionToMnemonic(i32 noundef 34, i64 noundef %18) #30
  %20 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %16, ptr noundef nonnull @.str.107, ptr noundef %19) #30
  %21 = getelementptr inbounds %struct.KernelInfo, ptr %7, i64 0, i32 10
  %22 = load double, ptr %21, align 8, !tbaa !46
  %23 = tail call double @llvm.fabs.f64(double %22)
  %24 = fcmp ult double %23, 1.000000e-15
  br i1 %24, label %28, label %25

25:                                               ; preds = %15
  %26 = load ptr, ptr @stderr, align 8, !tbaa !9
  %27 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %26, ptr noundef nonnull @.str.108, double noundef %22) #30
  br label %28

28:                                               ; preds = %25, %15
  %29 = load ptr, ptr @stderr, align 8, !tbaa !9
  %30 = getelementptr inbounds %struct.KernelInfo, ptr %7, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !25
  %32 = getelementptr inbounds %struct.KernelInfo, ptr %7, i64 0, i32 2
  %33 = load i64, ptr %32, align 8, !tbaa !26
  %34 = getelementptr inbounds %struct.KernelInfo, ptr %7, i64 0, i32 3
  %35 = load i64, ptr %34, align 8, !tbaa !28
  %36 = getelementptr inbounds %struct.KernelInfo, ptr %7, i64 0, i32 4
  %37 = load i64, ptr %36, align 8, !tbaa !29
  %38 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %29, ptr noundef nonnull @.str.109, i64 noundef %31, i64 noundef %33, i64 noundef %35, i64 noundef %37) #30
  %39 = load ptr, ptr @stderr, align 8, !tbaa !9
  %40 = tail call i32 @GetMagickPrecision() #30
  %41 = getelementptr inbounds %struct.KernelInfo, ptr %7, i64 0, i32 6
  %42 = load double, ptr %41, align 8, !tbaa !35
  %43 = tail call i32 @GetMagickPrecision() #30
  %44 = getelementptr inbounds %struct.KernelInfo, ptr %7, i64 0, i32 7
  %45 = load double, ptr %44, align 8, !tbaa !36
  %46 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %39, ptr noundef nonnull @.str.110, i32 noundef %40, double noundef %42, i32 noundef %43, double noundef %45) #30
  %47 = load ptr, ptr @stderr, align 8, !tbaa !9
  %48 = tail call i32 @GetMagickPrecision() #30
  %49 = getelementptr inbounds %struct.KernelInfo, ptr %7, i64 0, i32 8
  %50 = load double, ptr %49, align 8, !tbaa !61
  %51 = tail call i32 @GetMagickPrecision() #30
  %52 = getelementptr inbounds %struct.KernelInfo, ptr %7, i64 0, i32 9
  %53 = load double, ptr %52, align 8, !tbaa !58
  %54 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %47, ptr noundef nonnull @.str.111, i32 noundef %48, double noundef %50, i32 noundef %51, double noundef %53) #30
  %55 = load double, ptr %52, align 8, !tbaa !58
  %56 = load double, ptr %49, align 8, !tbaa !61
  %57 = fadd double %55, %56
  %58 = tail call double @llvm.fabs.f64(double %57)
  %59 = fcmp olt double %58, 1.000000e-15
  br i1 %59, label %60, label %63

60:                                               ; preds = %28
  %61 = load ptr, ptr @stderr, align 8, !tbaa !9
  %62 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %61, ptr noundef nonnull @.str.112) #30
  br label %76

63:                                               ; preds = %28
  %64 = fadd double %57, -1.000000e+00
  %65 = tail call double @llvm.fabs.f64(double %64)
  %66 = fcmp olt double %65, 1.000000e-15
  %67 = load ptr, ptr @stderr, align 8, !tbaa !9
  br i1 %66, label %68, label %70

68:                                               ; preds = %63
  %69 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %67, ptr noundef nonnull @.str.113) #30
  br label %76

70:                                               ; preds = %63
  %71 = tail call i32 @GetMagickPrecision() #30
  %72 = load double, ptr %52, align 8, !tbaa !58
  %73 = load double, ptr %49, align 8, !tbaa !61
  %74 = fadd double %72, %73
  %75 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %67, ptr noundef nonnull @.str.114, i32 noundef %71, double noundef %74) #30
  br label %76

76:                                               ; preds = %68, %70, %60
  %77 = load i64, ptr %32, align 8, !tbaa !26
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %118, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.KernelInfo, ptr %7, i64 0, i32 5
  br label %81

81:                                               ; preds = %79, %111
  %82 = phi i64 [ 0, %79 ], [ %115, %111 ]
  %83 = phi i64 [ 0, %79 ], [ %112, %111 ]
  %84 = load ptr, ptr @stderr, align 8, !tbaa !9
  %85 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %84, ptr noundef nonnull @.str.115, i64 noundef %82) #30
  %86 = load i64, ptr %30, align 8, !tbaa !25
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %111, label %88

88:                                               ; preds = %81, %106
  %89 = phi i64 [ %107, %106 ], [ 0, %81 ]
  %90 = phi i64 [ %108, %106 ], [ %83, %81 ]
  %91 = load ptr, ptr %80, align 8, !tbaa !33
  %92 = getelementptr inbounds double, ptr %91, i64 %90
  %93 = load double, ptr %92, align 8, !tbaa !34
  %94 = fcmp uno double %93, 0.000000e+00
  %95 = load ptr, ptr @stderr, align 8, !tbaa !9
  %96 = tail call i32 @GetMagickPrecision() #30
  %97 = add nsw i32 %96, 3
  br i1 %94, label %98, label %100

98:                                               ; preds = %88
  %99 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %95, ptr noundef nonnull @.str.116, i32 noundef %97, ptr noundef nonnull @.str) #30
  br label %106

100:                                              ; preds = %88
  %101 = tail call i32 @GetMagickPrecision() #30
  %102 = load ptr, ptr %80, align 8, !tbaa !33
  %103 = getelementptr inbounds double, ptr %102, i64 %90
  %104 = load double, ptr %103, align 8, !tbaa !34
  %105 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %95, ptr noundef nonnull @.str.117, i32 noundef %97, i32 noundef %101, double noundef %104) #30
  br label %106

106:                                              ; preds = %98, %100
  %107 = add nuw i64 %89, 1
  %108 = add i64 %90, 1
  %109 = load i64, ptr %30, align 8, !tbaa !25
  %110 = icmp ult i64 %107, %109
  br i1 %110, label %88, label %111, !llvm.loop !169

111:                                              ; preds = %106, %81
  %112 = phi i64 [ %83, %81 ], [ %108, %106 ]
  %113 = load ptr, ptr @stderr, align 8, !tbaa !9
  %114 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %113, ptr noundef nonnull @.str.82) #30
  %115 = add nuw i64 %82, 1
  %116 = load i64, ptr %32, align 8, !tbaa !26
  %117 = icmp ult i64 %115, %116
  br i1 %117, label %81, label %118, !llvm.loop !170

118:                                              ; preds = %111, %76
  %119 = add i64 %6, 1
  %120 = getelementptr inbounds %struct.KernelInfo, ptr %7, i64 0, i32 11
  %121 = load ptr, ptr %120, align 8, !tbaa !13
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %5, !llvm.loop !171

123:                                              ; preds = %118, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @MorphologyImage(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @MorphologyImageChannel(ptr noundef %0, i32 noundef 134217719, i32 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) #29
  ret ptr %6
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @UnityAddKernelInfo(ptr nocapture noundef %0, double noundef %1) local_unnamed_addr #15 {
  %3 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @UnityAddKernelInfo(ptr noundef nonnull %4, double noundef %1) #29
  br label %7

7:                                                ; preds = %6, %2
  %8 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !33
  %10 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 3
  %11 = load i64, ptr %10, align 8, !tbaa !28
  %12 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 4
  %13 = load i64, ptr %12, align 8, !tbaa !29
  %14 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !25
  %16 = mul i64 %15, %13
  %17 = getelementptr double, ptr %9, i64 %11
  %18 = getelementptr double, ptr %17, i64 %16
  %19 = load double, ptr %18, align 8, !tbaa !34
  %20 = fadd double %19, %1
  store double %20, ptr %18, align 8, !tbaa !34
  tail call fastcc void @CalcKernelMetaData(ptr noundef nonnull %0) #29
  ret void
}

; Function Attrs: optsize
declare i32 @GetMagickPrecision() local_unnamed_addr #2

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ZeroKernelNans(ptr nocapture noundef readonly %0) local_unnamed_addr #15 {
  %2 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @ZeroKernelNans(ptr noundef nonnull %3) #29
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !25
  %9 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 2
  %10 = load i64, ptr %9, align 8, !tbaa !26
  %11 = mul i64 %10, %8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.KernelInfo, ptr %0, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !33
  br label %16

16:                                               ; preds = %13, %22
  %17 = phi i64 [ 0, %13 ], [ %23, %22 ]
  %18 = getelementptr inbounds double, ptr %15, i64 %17
  %19 = load double, ptr %18, align 8, !tbaa !34
  %20 = fcmp uno double %19, 0.000000e+00
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store double 0.000000e+00, ptr %18, align 8, !tbaa !34
  br label %22

22:                                               ; preds = %21, %16
  %23 = add nuw i64 %17, 1
  %24 = icmp eq i64 %23, %11
  br i1 %24, label %25, label %16, !llvm.loop !172

25:                                               ; preds = %22, %6
  ret void
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture) local_unnamed_addr #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #26

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #28

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree noinline norecurse nosync nounwind optsize memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { alwaysinline norecurse nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nounwind }
attributes #22 = { noinline norecurse nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { convergent nounwind }
attributes #24 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree nounwind willreturn memory(argmem: read) }
attributes #26 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #29 = { optsize }
attributes #30 = { nounwind optsize }
attributes #31 = { nounwind optsize willreturn memory(none) }
attributes #32 = { nounwind optsize willreturn memory(read) }
attributes #33 = { nounwind optsize allocsize(0) }
attributes #34 = { nounwind optsize allocsize(0,1) }
attributes #35 = { cold optsize }
attributes #36 = { hot nounwind optsize }
attributes #37 = { noreturn nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"short", !7, i64 0}
!13 = !{!14, !10, i64 88}
!14 = !{!"KernelInfo", !15, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !10, i64 40, !17, i64 48, !17, i64 56, !17, i64 64, !17, i64 72, !17, i64 80, !10, i64 88, !16, i64 96}
!15 = !{!"int", !7, i64 0}
!16 = !{!"long", !7, i64 0}
!17 = !{!"double", !7, i64 0}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!14, !15, i64 0}
!21 = !{!14, !16, i64 96}
!22 = !{!23, !17, i64 8}
!23 = !{!"_GeometryInfo", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32}
!24 = !{!23, !17, i64 0}
!25 = !{!14, !16, i64 8}
!26 = !{!14, !16, i64 16}
!27 = !{!23, !17, i64 16}
!28 = !{!14, !16, i64 24}
!29 = !{!14, !16, i64 32}
!30 = distinct !{!30, !19}
!31 = distinct !{!31, !19}
!32 = distinct !{!32, !19}
!33 = !{!14, !10, i64 40}
!34 = !{!17, !17, i64 0}
!35 = !{!14, !17, i64 48}
!36 = !{!14, !17, i64 56}
!37 = distinct !{!37, !19}
!38 = distinct !{!38, !19}
!39 = !{!23, !17, i64 24}
!40 = distinct !{!40, !19}
!41 = !{i32 0, i32 2}
!42 = !{i64 0, i64 4, !43, i64 8, i64 8, !44, i64 16, i64 8, !44, i64 24, i64 8, !44, i64 32, i64 8, !44, i64 40, i64 8, !9, i64 48, i64 8, !34, i64 56, i64 8, !34, i64 64, i64 8, !34, i64 72, i64 8, !34, i64 80, i64 8, !34, i64 88, i64 8, !9, i64 96, i64 8, !44}
!43 = !{!15, !15, i64 0}
!44 = !{!16, !16, i64 0}
!45 = distinct !{!45, !19}
!46 = !{!14, !17, i64 80}
!47 = distinct !{!47, !19}
!48 = distinct !{!48, !19}
!49 = distinct !{!49, !19}
!50 = distinct !{!50, !19}
!51 = distinct !{!51, !19}
!52 = distinct !{!52, !19}
!53 = distinct !{!53, !19}
!54 = distinct !{!54, !19}
!55 = distinct !{!55, !19}
!56 = distinct !{!56, !19}
!57 = distinct !{!57, !19}
!58 = !{!14, !17, i64 72}
!59 = distinct !{!59, !19}
!60 = distinct !{!60, !19}
!61 = !{!14, !17, i64 64}
!62 = distinct !{!62, !19}
!63 = distinct !{!63, !19}
!64 = distinct !{!64, !19}
!65 = distinct !{!65, !19}
!66 = distinct !{!66, !19, !67, !68}
!67 = !{!"llvm.loop.isvectorized", i32 1}
!68 = !{!"llvm.loop.unroll.runtime.disable"}
!69 = distinct !{!69, !19}
!70 = distinct !{!70, !19}
!71 = distinct !{!71, !19}
!72 = distinct !{!72, !19}
!73 = distinct !{!73, !19}
!74 = distinct !{!74, !19}
!75 = distinct !{!75, !19}
!76 = distinct !{!76, !19}
!77 = distinct !{!77, !19}
!78 = distinct !{!78, !19}
!79 = distinct !{!79, !19}
!80 = distinct !{!80, !19}
!81 = distinct !{!81, !19}
!82 = distinct !{!82, !19}
!83 = distinct !{!83, !19}
!84 = distinct !{!84, !19}
!85 = distinct !{!85, !19}
!86 = distinct !{!86, !19}
!87 = distinct !{!87, !19}
!88 = distinct !{!88, !19}
!89 = distinct !{!89, !19}
!90 = !{!91, !16, i64 40}
!91 = !{!"_Image", !15, i64 0, !15, i64 4, !15, i64 8, !16, i64 16, !15, i64 24, !15, i64 28, !15, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !10, i64 72, !92, i64 80, !92, i64 88, !92, i64 96, !17, i64 104, !93, i64 112, !15, i64 208, !10, i64 216, !15, i64 224, !10, i64 232, !10, i64 240, !10, i64 248, !16, i64 256, !17, i64 264, !17, i64 272, !95, i64 280, !95, i64 312, !95, i64 344, !17, i64 376, !17, i64 384, !17, i64 392, !15, i64 400, !15, i64 404, !15, i64 408, !15, i64 412, !15, i64 416, !15, i64 420, !10, i64 424, !16, i64 432, !16, i64 440, !16, i64 448, !16, i64 456, !16, i64 464, !16, i64 472, !96, i64 480, !97, i64 504, !10, i64 568, !10, i64 576, !10, i64 584, !10, i64 592, !10, i64 600, !10, i64 608, !7, i64 616, !7, i64 4712, !7, i64 8808, !16, i64 12904, !16, i64 12912, !99, i64 12920, !15, i64 12976, !16, i64 12984, !10, i64 12992, !100, i64 13000, !100, i64 13032, !10, i64 13064, !16, i64 13072, !16, i64 13080, !10, i64 13088, !10, i64 13096, !10, i64 13104, !15, i64 13112, !15, i64 13116, !92, i64 13120, !10, i64 13128, !95, i64 13136, !10, i64 13168, !10, i64 13176, !15, i64 13184, !15, i64 13188, !101, i64 13192, !15, i64 13200, !16, i64 13208, !16, i64 13216, !15, i64 13224, !16, i64 13232}
!92 = !{!"_PixelPacket", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6}
!93 = !{!"_ChromaticityInfo", !94, i64 0, !94, i64 24, !94, i64 48, !94, i64 72}
!94 = !{!"_PrimaryInfo", !17, i64 0, !17, i64 8, !17, i64 16}
!95 = !{!"_RectangleInfo", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24}
!96 = !{!"_ErrorInfo", !17, i64 0, !17, i64 8, !17, i64 16}
!97 = !{!"_TimerInfo", !98, i64 0, !98, i64 24, !15, i64 48, !16, i64 56}
!98 = !{!"_Timer", !17, i64 0, !17, i64 8, !17, i64 16}
!99 = !{!"_ExceptionInfo", !15, i64 0, !15, i64 4, !10, i64 8, !10, i64 16, !10, i64 24, !15, i64 32, !10, i64 40, !16, i64 48}
!100 = !{!"_ProfileInfo", !10, i64 0, !16, i64 8, !10, i64 16, !16, i64 24}
!101 = !{!"long long", !7, i64 0}
!102 = !{!91, !16, i64 48}
!103 = distinct !{!103, !19}
!104 = distinct !{!104, !19}
!105 = distinct !{!105, !19}
!106 = distinct !{!106, !19}
!107 = distinct !{!107, !19}
!108 = !{!109, !110, i64 44}
!109 = !{!"_MagickPixelPacket", !15, i64 0, !15, i64 4, !15, i64 8, !17, i64 16, !16, i64 24, !110, i64 32, !110, i64 36, !110, i64 40, !110, i64 44, !110, i64 48}
!110 = !{!"float", !7, i64 0}
!111 = !{!109, !110, i64 32}
!112 = !{!109, !110, i64 36}
!113 = !{!109, !110, i64 40}
!114 = !{!109, !110, i64 48}
!115 = !{!92, !12, i64 4}
!116 = !{!92, !12, i64 2}
!117 = !{!92, !12, i64 0}
!118 = !{!92, !12, i64 6}
!119 = !{!91, !15, i64 4}
!120 = distinct !{!120, !19}
!121 = distinct !{!121, !19}
!122 = distinct !{!122, !19}
!123 = distinct !{!123, !19}
!124 = distinct !{!124, !19}
!125 = distinct !{!125, !19}
!126 = !{!91, !15, i64 32}
!127 = distinct !{!127, !19}
!128 = !{!91, !10, i64 568}
!129 = distinct !{!129, !19}
!130 = distinct !{!130, !19}
!131 = distinct !{!131, !19}
!132 = distinct !{!132, !19}
!133 = distinct !{!133, !19}
!134 = distinct !{!134, !19}
!135 = distinct !{!135, !19}
!136 = distinct !{!136, !19}
!137 = !{!101, !101, i64 0}
!138 = !{i64 -2147483648, i64 2147483648}
!139 = distinct !{!139, !19}
!140 = !{!91, !15, i64 13184}
!141 = distinct !{!141, !19}
!142 = distinct !{!142, !19}
!143 = !{!110, !110, i64 0}
!144 = !{!91, !15, i64 0}
!145 = !{!91, !10, i64 576}
!146 = distinct !{!146, !19}
!147 = distinct !{!147, !19}
!148 = distinct !{!148, !19}
!149 = !{!150}
!150 = !{i64 2, i64 -1, i64 -1, i1 true}
!151 = distinct !{!151, !19}
!152 = distinct !{!152, !19}
!153 = distinct !{!153, !19}
!154 = distinct !{!154, !19}
!155 = distinct !{!155, !19}
!156 = distinct !{!156, !19}
!157 = distinct !{!157, !19}
!158 = distinct !{!158, !19}
!159 = distinct !{!159, !19}
!160 = distinct !{!160, !19}
!161 = distinct !{!161, !19}
!162 = distinct !{!162, !19}
!163 = distinct !{!163, !19}
!164 = distinct !{!164, !19}
!165 = distinct !{!165, !19}
!166 = distinct !{!166, !19}
!167 = distinct !{!167, !19}
!168 = !{!91, !17, i64 376}
!169 = distinct !{!169, !19}
!170 = distinct !{!170, !19}
!171 = distinct !{!171, !19}
!172 = distinct !{!172, !19}
