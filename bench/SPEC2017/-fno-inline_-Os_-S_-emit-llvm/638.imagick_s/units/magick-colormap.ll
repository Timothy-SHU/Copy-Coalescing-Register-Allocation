; ModuleID = 'magick/colormap.c'
source_filename = "magick/colormap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }
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

@.str = private unnamed_addr constant [18 x i8] c"magick/colormap.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"...\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @AcquireImageColormap(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 135, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #13
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  store i64 %1, ptr %10, align 8, !tbaa !25
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %12 = load ptr, ptr %11, align 8, !tbaa !26
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = tail call ptr @AcquireQuantumMemory(i64 noundef %1, i64 noundef 8) #14
  br label %18

16:                                               ; preds = %9
  %17 = tail call ptr @ResizeQuantumMemory(ptr noundef nonnull %12, i64 noundef %1, i64 noundef 8) #15
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi ptr [ %17, %16 ], [ %15, %14 ]
  store ptr %19, ptr %11, align 8, !tbaa !26
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %18
  %22 = load i64, ptr %10, align 8, !tbaa !25
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %21
  %25 = add i64 %1, -1
  %26 = tail call fastcc i64 @MagickMax(i64 noundef %25) #16
  %27 = udiv i64 65535, %26
  br label %32

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %30 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %31 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %29, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 146, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %30) #13
  br label %43

32:                                               ; preds = %24, %32
  %33 = phi i64 [ 0, %24 ], [ %39, %32 ]
  %34 = mul i64 %27, %33
  %35 = trunc i64 %34 to i16
  %36 = getelementptr inbounds %struct._PixelPacket, ptr %19, i64 %33
  %37 = insertelement <4 x i16> <i16 poison, i16 0, i16 poison, i16 poison>, i16 %35, i64 0
  %38 = shufflevector <4 x i16> %37, <4 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x i16> %38, ptr %36, align 2, !tbaa !27
  %39 = add nuw nsw i64 %33, 1
  %40 = icmp eq i64 %39, %22
  br i1 %40, label %41, label %32, !llvm.loop !28

41:                                               ; preds = %32, %21
  %42 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 2) #13
  br label %43

43:                                               ; preds = %28, %41
  %44 = phi i32 [ %42, %41 ], [ 0, %28 ]
  ret i32 %44
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize allocsize(1,2)
declare ptr @ResizeQuantumMemory(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @MagickMax(i64 noundef %0) unnamed_addr #5 {
  %2 = tail call i64 @llvm.umax.i64(i64 %0, i64 1)
  ret i64 %2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @CycleColormapImage(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %3, align 8, !tbaa !30
  store i64 %1, ptr %4, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %10 = load i32, ptr %9, align 8, !tbaa !6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %14 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 205, ptr noundef nonnull @.str.2, ptr noundef nonnull %13) #13
  br label %15

15:                                               ; preds = %12, %2
  %16 = load i32, ptr %0, align 8, !tbaa !32
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = tail call i32 @SetImageType(ptr noundef nonnull %0, i32 noundef 4) #13
  br label %20

20:                                               ; preds = %18, %15
  store i32 1, ptr %7, align 4, !tbaa !33
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  store ptr %21, ptr %6, align 8, !tbaa !30
  %22 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %21) #13
  store ptr %22, ptr %5, align 8, !tbaa !30
  %23 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #13
  %24 = and i64 %23, 576460752303423487
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %20
  %27 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #13
  %28 = icmp eq i32 %27, 3
  br i1 %28, label %34, label %29

29:                                               ; preds = %26
  %30 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #13
  %31 = icmp eq i32 %30, 3
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #13
  br label %38

34:                                               ; preds = %29, %26, %20
  %35 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #13
  %36 = icmp ult i64 %35, 2
  %37 = select i1 %36, i64 1, i64 2
  br label %38

38:                                               ; preds = %34, %32
  %39 = phi i64 [ %33, %32 ], [ %37, %34 ]
  %40 = trunc i64 %39 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %8, i32 %40)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @CycleColormapImage.omp_outlined, ptr nonnull %3, ptr nonnull %7, ptr nonnull %5, ptr nonnull %6, ptr nonnull %4)
  %41 = load ptr, ptr %5, align 8, !tbaa !30
  %42 = call ptr @DestroyCacheView(ptr noundef %41) #13
  %43 = load i32, ptr %7, align 4, !tbaa !33
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  ret i32 %43
}

; Function Attrs: optsize
declare i32 @SetImageType(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @CycleColormapImage.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6) #6 {
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = load ptr, ptr %2, align 8, !tbaa !30
  %13 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 8
  %14 = load i64, ptr %13, align 8, !tbaa !34
  %15 = add nsw i64 %14, -1
  %16 = icmp sgt i64 %14, 0
  br i1 %16, label %17, label %99

17:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #7
  store i64 0, ptr %8, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #7
  store i64 %15, ptr %9, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #7
  store i64 1, ptr %10, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #7
  store i32 0, ptr %11, align 4, !tbaa !33
  %18 = load i32, ptr %0, align 4, !tbaa !33
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %18, i32 33, ptr nonnull %11, ptr nonnull %8, ptr nonnull %9, ptr nonnull %10, i64 1, i64 4)
  %19 = load i64, ptr %9, align 8
  %20 = call i64 @llvm.smin.i64(i64 %19, i64 %15)
  store i64 %20, ptr %9, align 8, !tbaa !31
  %21 = load i64, ptr %8, align 8, !tbaa !31
  %22 = icmp sgt i64 %21, %20
  br i1 %22, label %98, label %23

23:                                               ; preds = %17, %90
  %24 = phi i64 [ %96, %90 ], [ %20, %17 ]
  %25 = phi i64 [ %94, %90 ], [ %21, %17 ]
  %26 = icmp sgt i64 %25, %24
  br i1 %26, label %90, label %27

27:                                               ; preds = %23, %84
  %28 = phi i64 [ %85, %84 ], [ %25, %23 ]
  %29 = load i32, ptr %3, align 4, !tbaa !33
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %84, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %4, align 8, !tbaa !30
  %33 = load ptr, ptr %2, align 8, !tbaa !30
  %34 = getelementptr inbounds %struct._Image, ptr %33, i64 0, i32 7
  %35 = load i64, ptr %34, align 8, !tbaa !35
  %36 = load ptr, ptr %5, align 8, !tbaa !30
  %37 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %32, i64 noundef 0, i64 noundef %28, i64 noundef %35, i64 noundef 1, ptr noundef %36) #17
  %38 = icmp eq ptr %37, null
  br i1 %38, label %83, label %39

39:                                               ; preds = %31
  %40 = load ptr, ptr %4, align 8, !tbaa !30
  %41 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %40) #13
  %42 = load ptr, ptr %2, align 8, !tbaa !30
  %43 = getelementptr inbounds %struct._Image, ptr %42, i64 0, i32 7
  %44 = load i64, ptr %43, align 8, !tbaa !35
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %78

46:                                               ; preds = %39
  %47 = icmp eq ptr %41, null
  %48 = load i64, ptr %6, align 8, !tbaa !31
  %49 = getelementptr inbounds %struct._Image, ptr %42, i64 0, i32 10
  %50 = load i64, ptr %49, align 8, !tbaa !25
  %51 = getelementptr inbounds %struct._Image, ptr %42, i64 0, i32 11
  %52 = load ptr, ptr %51, align 8, !tbaa !26
  br label %53

53:                                               ; preds = %46, %71
  %54 = phi ptr [ %37, %46 ], [ %75, %71 ]
  %55 = phi i64 [ 0, %46 ], [ %76, %71 ]
  br i1 %47, label %56, label %61

56:                                               ; preds = %53
  %57 = urem i64 %48, %50
  %58 = icmp slt i64 %57, 0
  %59 = select i1 %58, i64 %50, i64 0
  %60 = add nsw i64 %59, %57
  br label %71

61:                                               ; preds = %53
  %62 = getelementptr inbounds i16, ptr %41, i64 %55
  %63 = load i16, ptr %62, align 2, !tbaa !27
  %64 = zext i16 %63 to i64
  %65 = add nsw i64 %48, %64
  %66 = urem i64 %65, %50
  %67 = icmp slt i64 %66, 0
  %68 = select i1 %67, i64 %50, i64 0
  %69 = add nsw i64 %68, %66
  %70 = trunc i64 %69 to i16
  store i16 %70, ptr %62, align 2, !tbaa !27
  br label %71

71:                                               ; preds = %56, %61
  %72 = phi i64 [ %60, %56 ], [ %69, %61 ]
  %73 = getelementptr inbounds %struct._PixelPacket, ptr %52, i64 %72
  %74 = load <4 x i16>, ptr %73, align 2, !tbaa !27
  store <4 x i16> %74, ptr %54, align 2, !tbaa !27
  %75 = getelementptr inbounds %struct._PixelPacket, ptr %54, i64 1
  %76 = add nuw nsw i64 %55, 1
  %77 = icmp eq i64 %76, %44
  br i1 %77, label %78, label %53, !llvm.loop !36

78:                                               ; preds = %71, %39
  %79 = load ptr, ptr %4, align 8, !tbaa !30
  %80 = load ptr, ptr %5, align 8, !tbaa !30
  %81 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %79, ptr noundef %80) #17
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78, %31
  store i32 0, ptr %3, align 4, !tbaa !33
  br label %84

84:                                               ; preds = %83, %78, %27
  %85 = add nsw i64 %28, 1
  %86 = load i64, ptr %9, align 8, !tbaa !31
  %87 = icmp slt i64 %28, %86
  br i1 %87, label %27, label %88

88:                                               ; preds = %84
  %89 = load i64, ptr %8, align 8, !tbaa !31
  br label %90

90:                                               ; preds = %88, %23
  %91 = phi i64 [ %25, %23 ], [ %89, %88 ]
  %92 = phi i64 [ %24, %23 ], [ %86, %88 ]
  %93 = load i64, ptr %10, align 8, !tbaa !31
  %94 = add nsw i64 %93, %91
  store i64 %94, ptr %8, align 8, !tbaa !31
  %95 = add nsw i64 %93, %92
  %96 = call i64 @llvm.smin.i64(i64 %95, i64 %15)
  store i64 %96, ptr %9, align 8, !tbaa !31
  %97 = icmp sgt i64 %94, %96
  br i1 %97, label %98, label %23

98:                                               ; preds = %90, %17
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %18)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #7
  br label %99

99:                                               ; preds = %98, %7
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_8(ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i64) local_unnamed_addr #7

; Function Attrs: hot optsize
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: hot optsize
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #7

; Function Attrs: optsize
declare i64 @GetMagickResourceLimit(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GetImagePixelCacheType(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare !callback !37 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @SortColormapByIntensity(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %2, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 324, ptr noundef nonnull @.str.5) #13
  br label %10

10:                                               ; preds = %8, %1
  %11 = load i32, ptr %0, align 8, !tbaa !32
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %108

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %15 = load i64, ptr %14, align 8, !tbaa !25
  %16 = tail call ptr @AcquireQuantumMemory(i64 noundef %15, i64 noundef 2) #14
  store ptr %16, ptr %3, align 8, !tbaa !30
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %21 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %19, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 335, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %20) #13
  br label %108

22:                                               ; preds = %13
  %23 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #13
  %24 = and i64 %23, 576460752303423487
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #13
  %28 = icmp eq i32 %27, 3
  br i1 %28, label %34, label %29

29:                                               ; preds = %26
  %30 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #13
  %31 = icmp eq i32 %30, 3
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #13
  br label %38

34:                                               ; preds = %29, %26, %22
  %35 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #13
  %36 = icmp ult i64 %35, 2
  %37 = select i1 %36, i64 1, i64 2
  br label %38

38:                                               ; preds = %34, %32
  %39 = phi i64 [ %33, %32 ], [ %37, %34 ]
  %40 = trunc i64 %39 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %4, i32 %40)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 1, ptr nonnull @SortColormapByIntensity.omp_outlined, ptr nonnull %2)
  %41 = load ptr, ptr %2, align 8, !tbaa !30
  %42 = getelementptr inbounds %struct._Image, ptr %41, i64 0, i32 11
  %43 = load ptr, ptr %42, align 8, !tbaa !26
  %44 = getelementptr inbounds %struct._Image, ptr %41, i64 0, i32 10
  %45 = load i64, ptr %44, align 8, !tbaa !25
  call void @qsort(ptr noundef %43, i64 noundef %45, i64 noundef 8, ptr noundef nonnull @IntensityCompare) #13
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 2, ptr nonnull @SortColormapByIntensity.omp_outlined.6, ptr nonnull %2, ptr nonnull %3)
  %46 = load ptr, ptr %2, align 8, !tbaa !30
  %47 = getelementptr inbounds %struct._Image, ptr %46, i64 0, i32 58
  %48 = call ptr @AcquireAuthenticCacheView(ptr noundef %46, ptr noundef nonnull %47) #13
  %49 = load ptr, ptr %2, align 8, !tbaa !30
  %50 = getelementptr inbounds %struct._Image, ptr %49, i64 0, i32 8
  %51 = load i64, ptr %50, align 8, !tbaa !34
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %103

53:                                               ; preds = %38, %96
  %54 = phi ptr [ %99, %96 ], [ %49, %38 ]
  %55 = phi i64 [ %98, %96 ], [ 0, %38 ]
  %56 = phi i32 [ %97, %96 ], [ 1, %38 ]
  %57 = getelementptr inbounds %struct._Image, ptr %54, i64 0, i32 7
  %58 = load i64, ptr %57, align 8, !tbaa !35
  %59 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %48, i64 noundef 0, i64 noundef %55, i64 noundef %58, i64 noundef 1, ptr noundef nonnull %47) #17
  %60 = icmp eq ptr %59, null
  br i1 %60, label %96, label %61

61:                                               ; preds = %53
  %62 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %48) #13
  %63 = load ptr, ptr %2, align 8, !tbaa !30
  %64 = getelementptr inbounds %struct._Image, ptr %63, i64 0, i32 7
  %65 = load i64, ptr %64, align 8, !tbaa !35
  %66 = icmp sgt i64 %65, 0
  br i1 %66, label %67, label %91

67:                                               ; preds = %61
  %68 = load ptr, ptr %3, align 8, !tbaa !30
  %69 = icmp eq ptr %62, null
  %70 = getelementptr inbounds %struct._Image, ptr %63, i64 0, i32 11
  %71 = load ptr, ptr %70, align 8, !tbaa !26
  br label %72

72:                                               ; preds = %67, %83
  %73 = phi ptr [ %59, %67 ], [ %88, %83 ]
  %74 = phi i64 [ 0, %67 ], [ %89, %83 ]
  br i1 %69, label %75, label %77

75:                                               ; preds = %72
  %76 = load i16, ptr %68, align 2, !tbaa !27
  br label %83

77:                                               ; preds = %72
  %78 = getelementptr inbounds i16, ptr %62, i64 %74
  %79 = load i16, ptr %78, align 2, !tbaa !27
  %80 = zext i16 %79 to i64
  %81 = getelementptr inbounds i16, ptr %68, i64 %80
  %82 = load i16, ptr %81, align 2, !tbaa !27
  store i16 %82, ptr %78, align 2, !tbaa !27
  br label %83

83:                                               ; preds = %75, %77
  %84 = phi i16 [ %76, %75 ], [ %82, %77 ]
  %85 = zext i16 %84 to i64
  %86 = getelementptr inbounds %struct._PixelPacket, ptr %71, i64 %85
  %87 = load <4 x i16>, ptr %86, align 2, !tbaa !27
  store <4 x i16> %87, ptr %73, align 2, !tbaa !27
  %88 = getelementptr inbounds %struct._PixelPacket, ptr %73, i64 1
  %89 = add nuw nsw i64 %74, 1
  %90 = icmp eq i64 %89, %65
  br i1 %90, label %91, label %72, !llvm.loop !39

91:                                               ; preds = %83, %61
  %92 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %48, ptr noundef nonnull %47) #17
  %93 = icmp ne i32 %92, 0
  %94 = icmp ne i32 %56, 0
  %95 = and i1 %94, %93
  br i1 %95, label %96, label %103

96:                                               ; preds = %53, %91
  %97 = phi i32 [ 1, %91 ], [ 0, %53 ]
  %98 = add nuw nsw i64 %55, 1
  %99 = load ptr, ptr %2, align 8, !tbaa !30
  %100 = getelementptr inbounds %struct._Image, ptr %99, i64 0, i32 8
  %101 = load i64, ptr %100, align 8, !tbaa !34
  %102 = icmp slt i64 %98, %101
  br i1 %102, label %53, label %103, !llvm.loop !40

103:                                              ; preds = %96, %91, %38
  %104 = phi i32 [ 1, %38 ], [ 0, %91 ], [ %97, %96 ]
  %105 = call ptr @DestroyCacheView(ptr noundef %48) #13
  %106 = load ptr, ptr %3, align 8, !tbaa !30
  %107 = call ptr @RelinquishMagickMemory(ptr noundef %106) #13
  br label %108

108:                                              ; preds = %18, %10, %103
  %109 = phi i32 [ %104, %103 ], [ 1, %10 ], [ 0, %18 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret i32 %109
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @SortColormapByIntensity.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2) #6 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = load ptr, ptr %2, align 8, !tbaa !30
  %9 = getelementptr inbounds %struct._Image, ptr %8, i64 0, i32 10
  %10 = load i64, ptr %9, align 8, !tbaa !25
  %11 = add nsw i64 %10, -1
  %12 = icmp sgt i64 %10, 0
  br i1 %12, label %13, label %100

13:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  store i64 0, ptr %4, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  store i64 %11, ptr %5, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  store i64 1, ptr %6, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  store i32 0, ptr %7, align 4, !tbaa !33
  %14 = load i32, ptr %0, align 4, !tbaa !33
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %14, i32 33, ptr nonnull %7, ptr nonnull %4, ptr nonnull %5, ptr nonnull %6, i64 1, i64 4)
  %15 = load i64, ptr %4, align 8, !tbaa !31
  %16 = load i64, ptr %5, align 8
  %17 = call i64 @llvm.smin.i64(i64 %16, i64 %11)
  store i64 %17, ptr %5, align 8, !tbaa !31
  %18 = icmp sgt i64 %15, %17
  br i1 %18, label %99, label %19

19:                                               ; preds = %13
  %20 = load ptr, ptr %2, align 8, !tbaa !30
  %21 = getelementptr inbounds %struct._Image, ptr %20, i64 0, i32 11
  %22 = load ptr, ptr %21, align 8, !tbaa !26
  %23 = load i64, ptr %6, align 8, !tbaa !31
  br label %24

24:                                               ; preds = %92, %19
  %25 = phi i64 [ 0, %19 ], [ %97, %92 ]
  %26 = phi i64 [ %17, %19 ], [ %95, %92 ]
  %27 = phi i64 [ %15, %19 ], [ %93, %92 ]
  %28 = call i64 @llvm.smax.i64(i64 %26, i64 %27)
  %29 = mul i64 %23, %25
  %30 = add i64 %15, %29
  %31 = sub i64 %28, %30
  %32 = and i64 %31, -8
  %33 = insertelement <8 x i64> poison, i64 %31, i64 0
  %34 = shufflevector <8 x i64> %33, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %35

35:                                               ; preds = %89, %24
  %36 = phi i64 [ 0, %24 ], [ %90, %89 ]
  %37 = add i64 %27, %36
  %38 = trunc i64 %37 to i16
  %39 = add i64 %27, %36
  %40 = insertelement <8 x i64> poison, i64 %36, i64 0
  %41 = shufflevector <8 x i64> %40, <8 x i64> poison, <8 x i32> zeroinitializer
  %42 = or disjoint <8 x i64> %41, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %43 = icmp ule <8 x i64> %42, %34
  %44 = extractelement <8 x i1> %43, i64 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %35
  %46 = getelementptr inbounds %struct._PixelPacket, ptr %22, i64 %39, i32 3
  store i16 %38, ptr %46, align 2, !tbaa !41
  br label %47

47:                                               ; preds = %45, %35
  %48 = extractelement <8 x i1> %43, i64 1
  br i1 %48, label %49, label %53

49:                                               ; preds = %47
  %50 = add i64 %39, 1
  %51 = getelementptr inbounds %struct._PixelPacket, ptr %22, i64 %50, i32 3
  %52 = add i16 %38, 1
  store i16 %52, ptr %51, align 2, !tbaa !41
  br label %53

53:                                               ; preds = %49, %47
  %54 = extractelement <8 x i1> %43, i64 2
  br i1 %54, label %55, label %59

55:                                               ; preds = %53
  %56 = add i64 %39, 2
  %57 = getelementptr inbounds %struct._PixelPacket, ptr %22, i64 %56, i32 3
  %58 = add i16 %38, 2
  store i16 %58, ptr %57, align 2, !tbaa !41
  br label %59

59:                                               ; preds = %55, %53
  %60 = extractelement <8 x i1> %43, i64 3
  br i1 %60, label %61, label %65

61:                                               ; preds = %59
  %62 = add i64 %39, 3
  %63 = getelementptr inbounds %struct._PixelPacket, ptr %22, i64 %62, i32 3
  %64 = add i16 %38, 3
  store i16 %64, ptr %63, align 2, !tbaa !41
  br label %65

65:                                               ; preds = %61, %59
  %66 = extractelement <8 x i1> %43, i64 4
  br i1 %66, label %67, label %71

67:                                               ; preds = %65
  %68 = add i64 %39, 4
  %69 = getelementptr inbounds %struct._PixelPacket, ptr %22, i64 %68, i32 3
  %70 = add i16 %38, 4
  store i16 %70, ptr %69, align 2, !tbaa !41
  br label %71

71:                                               ; preds = %67, %65
  %72 = extractelement <8 x i1> %43, i64 5
  br i1 %72, label %73, label %77

73:                                               ; preds = %71
  %74 = add i64 %39, 5
  %75 = getelementptr inbounds %struct._PixelPacket, ptr %22, i64 %74, i32 3
  %76 = add i16 %38, 5
  store i16 %76, ptr %75, align 2, !tbaa !41
  br label %77

77:                                               ; preds = %73, %71
  %78 = extractelement <8 x i1> %43, i64 6
  br i1 %78, label %79, label %83

79:                                               ; preds = %77
  %80 = add i64 %39, 6
  %81 = getelementptr inbounds %struct._PixelPacket, ptr %22, i64 %80, i32 3
  %82 = add i16 %38, 6
  store i16 %82, ptr %81, align 2, !tbaa !41
  br label %83

83:                                               ; preds = %79, %77
  %84 = extractelement <8 x i1> %43, i64 7
  br i1 %84, label %85, label %89

85:                                               ; preds = %83
  %86 = add i64 %39, 7
  %87 = getelementptr inbounds %struct._PixelPacket, ptr %22, i64 %86, i32 3
  %88 = add i16 %38, 7
  store i16 %88, ptr %87, align 2, !tbaa !41
  br label %89

89:                                               ; preds = %85, %83
  %90 = add i64 %36, 8
  %91 = icmp eq i64 %36, %32
  br i1 %91, label %92, label %35, !llvm.loop !42

92:                                               ; preds = %89
  %93 = add nsw i64 %23, %27
  %94 = add nsw i64 %23, %26
  %95 = call i64 @llvm.smin.i64(i64 %94, i64 %11)
  %96 = icmp sgt i64 %93, %95
  %97 = add i64 %25, 1
  br i1 %96, label %98, label %24

98:                                               ; preds = %92
  store i64 %95, ptr %5, align 8, !tbaa !31
  store i64 %93, ptr %4, align 8, !tbaa !31
  br label %99

99:                                               ; preds = %98, %13
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %14)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  br label %100

100:                                              ; preds = %99, %3
  ret void
}

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @IntensityCompare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 {
  %3 = tail call fastcc zeroext i16 @PixelPacketIntensity(ptr noundef %1) #16
  %4 = zext i16 %3 to i32
  %5 = tail call fastcc zeroext i16 @PixelPacketIntensity(ptr noundef %0) #16
  %6 = zext i16 %5 to i32
  %7 = sub nsw i32 %4, %6
  ret i32 %7
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @SortColormapByIntensity.omp_outlined.6(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %3) #6 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = load ptr, ptr %2, align 8, !tbaa !30
  %10 = getelementptr inbounds %struct._Image, ptr %9, i64 0, i32 10
  %11 = load i64, ptr %10, align 8, !tbaa !25
  %12 = add nsw i64 %11, -1
  %13 = icmp sgt i64 %11, 0
  br i1 %13, label %14, label %45

14:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  store i64 0, ptr %5, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  store i64 %12, ptr %6, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #7
  store i64 1, ptr %7, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #7
  store i32 0, ptr %8, align 4, !tbaa !33
  %15 = load i32, ptr %0, align 4, !tbaa !33
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %15, i32 33, ptr nonnull %8, ptr nonnull %5, ptr nonnull %6, ptr nonnull %7, i64 1, i64 4)
  %16 = load i64, ptr %5, align 8, !tbaa !31
  %17 = load i64, ptr %6, align 8
  %18 = call i64 @llvm.smin.i64(i64 %17, i64 %12)
  store i64 %18, ptr %6, align 8, !tbaa !31
  %19 = icmp sgt i64 %16, %18
  br i1 %19, label %44, label %20

20:                                               ; preds = %14
  %21 = load ptr, ptr %3, align 8, !tbaa !30
  %22 = load ptr, ptr %2, align 8, !tbaa !30
  %23 = getelementptr inbounds %struct._Image, ptr %22, i64 0, i32 11
  %24 = load ptr, ptr %23, align 8, !tbaa !26
  %25 = load i64, ptr %7, align 8, !tbaa !31
  br label %26

26:                                               ; preds = %20, %38
  %27 = phi i64 [ %18, %20 ], [ %41, %38 ]
  %28 = phi i64 [ %16, %20 ], [ %39, %38 ]
  br label %29

29:                                               ; preds = %26, %29
  %30 = phi i64 [ %28, %26 ], [ %36, %29 ]
  %31 = trunc i64 %30 to i16
  %32 = getelementptr inbounds %struct._PixelPacket, ptr %24, i64 %30, i32 3
  %33 = load i16, ptr %32, align 2, !tbaa !41
  %34 = zext i16 %33 to i64
  %35 = getelementptr inbounds i16, ptr %21, i64 %34
  store i16 %31, ptr %35, align 2, !tbaa !27
  %36 = add nsw i64 %30, 1
  %37 = icmp slt i64 %30, %27
  br i1 %37, label %29, label %38

38:                                               ; preds = %29
  %39 = add nsw i64 %25, %28
  %40 = add nsw i64 %25, %27
  %41 = call i64 @llvm.smin.i64(i64 %40, i64 %12)
  %42 = icmp sgt i64 %39, %41
  br i1 %42, label %43, label %26

43:                                               ; preds = %38
  store i64 %41, ptr %6, align 8, !tbaa !31
  store i64 %39, ptr %5, align 8, !tbaa !31
  br label %44

44:                                               ; preds = %43, %14
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %15)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  br label %45

45:                                               ; preds = %44, %4
  ret void
}

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i16 @PixelPacketIntensity(ptr nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct._PixelPacket, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 2, !tbaa !45
  %4 = getelementptr inbounds %struct._PixelPacket, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !46
  %6 = icmp eq i16 %3, %5
  %7 = load i16, ptr %0, align 2, !tbaa !47
  %8 = icmp eq i16 %3, %7
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %19, label %10

10:                                               ; preds = %1
  %11 = uitofp i16 %3 to double
  %12 = uitofp i16 %5 to double
  %13 = fmul double %12, 0x3FE6E29307AF20EA
  %14 = tail call double @llvm.fmuladd.f64(double %11, double 2.126560e-01, double %13)
  %15 = uitofp i16 %7 to double
  %16 = tail call double @llvm.fmuladd.f64(double %15, double 7.218600e-02, double %14)
  %17 = fptrunc double %16 to float
  %18 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %17) #16
  br label %19

19:                                               ; preds = %1, %10
  %20 = phi i16 [ %18, %10 ], [ %3, %1 ]
  ret i16 %20
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ClampToQuantum(float noundef %0) unnamed_addr #5 {
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #12

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize allocsize(1,2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { alwaysinline norecurse nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind optsize }
attributes #14 = { nounwind optsize allocsize(0,1) }
attributes #15 = { nounwind optsize allocsize(1,2) }
attributes #16 = { optsize }
attributes #17 = { hot nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !8, i64 12976}
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
!25 = !{!7, !11, i64 64}
!26 = !{!7, !12, i64 72}
!27 = !{!14, !14, i64 0}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!12, !12, i64 0}
!31 = !{!11, !11, i64 0}
!32 = !{!7, !8, i64 0}
!33 = !{!8, !8, i64 0}
!34 = !{!7, !11, i64 48}
!35 = !{!7, !11, i64 40}
!36 = distinct !{!36, !29}
!37 = !{!38}
!38 = !{i64 2, i64 -1, i64 -1, i1 true}
!39 = distinct !{!39, !29}
!40 = distinct !{!40, !29}
!41 = !{!13, !14, i64 6}
!42 = distinct !{!42, !43, !44}
!43 = !{!"llvm.loop.isvectorized", i32 1}
!44 = !{!"llvm.loop.unroll.runtime.disable"}
!45 = !{!13, !14, i64 4}
!46 = !{!13, !14, i64 2}
!47 = !{!13, !14, i64 0}
