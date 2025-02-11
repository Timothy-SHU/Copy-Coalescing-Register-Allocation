; ModuleID = 'magick/histogram.c'
source_filename = "magick/histogram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._CubeInfo = type { ptr, i64, i64, i64, i64, ptr, ptr }
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
%struct._NodeInfo = type { [16 x ptr], ptr, i64, i64 }
%struct._ColorPacket = type { %struct._PixelPacket, i16, i64 }
%struct._Nodes = type { [1536 x %struct._NodeInfo], ptr }
%struct._QuantizeInfo = type { i64, i64, i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [19 x i8] c"magick/histogram.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"%10.20g\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c": %s %s %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"Histogram/Image\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"  Compute image colors...  \00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"UniqueColors/Image\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetImageHistogram(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  store i64 0, ptr %1, align 8, !tbaa !5
  %5 = tail call fastcc ptr @ClassifyImageColors(ptr noundef %0, ptr noundef %2) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._CubeInfo, ptr %5, i64 0, i32 3
  %9 = load i64, ptr %8, align 8, !tbaa !9
  %10 = tail call ptr @AcquireQuantumMemory(i64 noundef %9, i64 noundef 24) #16
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %14 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 543, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %13) #17
  br label %18

15:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  %16 = load i64, ptr %8, align 8, !tbaa !9
  store i64 %16, ptr %1, align 8, !tbaa !5
  store ptr %10, ptr %4, align 8, !tbaa !13
  %17 = load ptr, ptr %5, align 8, !tbaa !14
  call fastcc void @DefineImageHistogram(ptr noundef %0, ptr noundef %17, ptr noundef nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  br label %18

18:                                               ; preds = %12, %15, %3
  %19 = phi ptr [ null, %12 ], [ %10, %15 ], [ null, %3 ]
  tail call fastcc void @DestroyCubeInfo(ptr noundef %0, ptr noundef %5) #15
  ret ptr %19
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @ClassifyImageColors(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct._MagickPixelPacket, align 8
  %4 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #18
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !15
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 220, ptr noundef nonnull @.str.4, ptr noundef nonnull %9) #17
  br label %11

11:                                               ; preds = %8, %2
  %12 = tail call fastcc ptr @GetCubeInfo() #15
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 224, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %15) #17
  br label %145

17:                                               ; preds = %11
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %3) #17
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %4) #17
  %18 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %1) #17
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %20 = load i64, ptr %19, align 8, !tbaa !29
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %143

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %25 = getelementptr inbounds %struct._CubeInfo, ptr %12, i64 0, i32 3
  br label %30

26:                                               ; preds = %139
  %27 = add nuw nsw i64 %31, 1
  %28 = load i64, ptr %19, align 8, !tbaa !29
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %143, !llvm.loop !30

30:                                               ; preds = %22, %26
  %31 = phi i64 [ 0, %22 ], [ %27, %26 ]
  %32 = load i64, ptr %23, align 8, !tbaa !32
  %33 = call ptr @GetCacheViewVirtualPixels(ptr noundef %18, i64 noundef 0, i64 noundef %31, i64 noundef %32, i64 noundef 1, ptr noundef %1) #19
  %34 = icmp eq ptr %33, null
  br i1 %34, label %143, label %35

35:                                               ; preds = %30
  %36 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %18) #17
  %37 = load i64, ptr %23, align 8, !tbaa !32
  %38 = icmp sgt i64 %37, 0
  br i1 %38, label %39, label %139

39:                                               ; preds = %35
  %40 = icmp eq ptr %36, null
  br label %41

41:                                               ; preds = %39, %131
  %42 = phi i64 [ 0, %39 ], [ %136, %131 ]
  %43 = phi ptr [ %33, %39 ], [ %135, %131 ]
  %44 = getelementptr inbounds i16, ptr %36, i64 %42
  %45 = load ptr, ptr %12, align 8, !tbaa !13
  br label %52

46:                                               ; preds = %66
  %47 = getelementptr inbounds %struct._NodeInfo, ptr %67, i64 0, i32 2
  %48 = load i64, ptr %47, align 8, !tbaa !33
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %84

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct._NodeInfo, ptr %67, i64 0, i32 1
  br label %71

52:                                               ; preds = %41, %66
  %53 = phi ptr [ %45, %41 ], [ %67, %66 ]
  %54 = phi i64 [ 1, %41 ], [ %69, %66 ]
  %55 = phi i64 [ 7, %41 ], [ %68, %66 ]
  call fastcc void @SetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %43, ptr noundef %44, ptr noundef nonnull %3) #15
  %56 = call fastcc i64 @ColorToNodeId(ptr noundef %0, ptr noundef nonnull %3, i64 noundef %55) #15, !range !35
  %57 = getelementptr inbounds [16 x ptr], ptr %53, i64 0, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !13
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %52
  %61 = call fastcc ptr @GetNodeInfo(ptr noundef nonnull %12, i64 noundef %54) #15
  store ptr %61, ptr %57, align 8, !tbaa !13
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %65 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 253, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %64) #17
  br label %145

66:                                               ; preds = %60, %52
  %67 = phi ptr [ %61, %60 ], [ %58, %52 ]
  %68 = add nsw i64 %55, -1
  %69 = add nuw nsw i64 %54, 1
  %70 = icmp eq i64 %69, 8
  br i1 %70, label %46, label %52, !llvm.loop !36

71:                                               ; preds = %50, %78
  %72 = phi i64 [ 0, %50 ], [ %79, %78 ]
  %73 = load ptr, ptr %51, align 8, !tbaa !37
  %74 = getelementptr inbounds %struct._ColorPacket, ptr %73, i64 %72
  %75 = getelementptr inbounds %struct._ColorPacket, ptr %73, i64 %72, i32 1
  call fastcc void @SetMagickPixelPacket(ptr noundef %0, ptr noundef %74, ptr noundef nonnull %75, ptr noundef nonnull %4) #15
  %76 = call fastcc i32 @IsMagickColorEqual(ptr noundef nonnull %3, ptr noundef nonnull %4) #15, !range !38
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %71
  %79 = add nuw nsw i64 %72, 1
  %80 = load i64, ptr %47, align 8, !tbaa !33
  %81 = icmp slt i64 %79, %80
  br i1 %81, label %71, label %84, !llvm.loop !39

82:                                               ; preds = %71
  %83 = load i64, ptr %47, align 8, !tbaa !33
  br label %84

84:                                               ; preds = %78, %46, %82
  %85 = phi i64 [ %72, %82 ], [ 0, %46 ], [ %79, %78 ]
  %86 = phi i64 [ %83, %82 ], [ %48, %46 ], [ %80, %78 ]
  %87 = icmp slt i64 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct._NodeInfo, ptr %67, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !37
  %91 = getelementptr inbounds %struct._ColorPacket, ptr %90, i64 %85, i32 2
  br label %131

92:                                               ; preds = %84
  %93 = icmp eq i64 %86, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %92
  %95 = call dereferenceable_or_null(24) ptr @AcquireMagickMemory(i64 noundef 24) #20
  %96 = getelementptr inbounds %struct._NodeInfo, ptr %67, i64 0, i32 1
  store ptr %95, ptr %96, align 8, !tbaa !37
  br label %102

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct._NodeInfo, ptr %67, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !37
  %100 = add nuw nsw i64 %85, 1
  %101 = call ptr @ResizeQuantumMemory(ptr noundef %99, i64 noundef %100, i64 noundef 24) #21
  store ptr %101, ptr %98, align 8, !tbaa !37
  br label %102

102:                                              ; preds = %97, %94
  %103 = phi ptr [ %101, %97 ], [ %95, %94 ]
  %104 = getelementptr inbounds %struct._NodeInfo, ptr %67, i64 0, i32 1
  %105 = icmp eq ptr %103, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %108 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 281, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %107) #17
  br label %145

109:                                              ; preds = %102
  %110 = getelementptr inbounds %struct._ColorPacket, ptr %103, i64 %85
  %111 = load i64, ptr %43, align 2
  store i64 %111, ptr %110, align 8
  %112 = load i32, ptr %24, align 4, !tbaa !40
  %113 = icmp eq i32 %112, 12
  br i1 %113, label %119, label %114

114:                                              ; preds = %109
  %115 = load i32, ptr %0, align 8, !tbaa !41
  %116 = icmp eq i32 %115, 2
  br i1 %116, label %119, label %117

117:                                              ; preds = %114
  %118 = load ptr, ptr %104, align 8, !tbaa !37
  br label %126

119:                                              ; preds = %114, %109
  br i1 %40, label %122, label %120

120:                                              ; preds = %119
  %121 = load i16, ptr %44, align 2, !tbaa !42
  br label %122

122:                                              ; preds = %119, %120
  %123 = phi i16 [ %121, %120 ], [ 0, %119 ]
  %124 = load ptr, ptr %104, align 8, !tbaa !37
  %125 = getelementptr inbounds %struct._ColorPacket, ptr %124, i64 %85, i32 1
  store i16 %123, ptr %125, align 8, !tbaa !43
  br label %126

126:                                              ; preds = %117, %122
  %127 = phi ptr [ %118, %117 ], [ %124, %122 ]
  %128 = getelementptr inbounds %struct._ColorPacket, ptr %127, i64 %85, i32 2
  store i64 1, ptr %128, align 8, !tbaa !45
  %129 = load i64, ptr %47, align 8, !tbaa !33
  %130 = add i64 %129, 1
  store i64 %130, ptr %47, align 8, !tbaa !33
  br label %131

131:                                              ; preds = %126, %88
  %132 = phi ptr [ %25, %126 ], [ %91, %88 ]
  %133 = load i64, ptr %132, align 8, !tbaa !46
  %134 = add i64 %133, 1
  store i64 %134, ptr %132, align 8, !tbaa !46
  %135 = getelementptr inbounds %struct._PixelPacket, ptr %43, i64 1
  %136 = add nuw nsw i64 %42, 1
  %137 = load i64, ptr %23, align 8, !tbaa !32
  %138 = icmp slt i64 %136, %137
  br i1 %138, label %41, label %139, !llvm.loop !47

139:                                              ; preds = %131, %35
  %140 = load i64, ptr %19, align 8, !tbaa !29
  %141 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.11, i64 noundef %31, i64 noundef %140) #15
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %26

143:                                              ; preds = %26, %30, %139, %17
  %144 = call ptr @DestroyCacheView(ptr noundef %18) #17
  br label %145

145:                                              ; preds = %143, %106, %63, %14
  %146 = phi ptr [ null, %14 ], [ %12, %143 ], [ null, %63 ], [ null, %106 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #18
  ret ptr %146
}

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @DefineImageHistogram(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #4 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %5 = load i32, ptr %4, align 8, !tbaa !48
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i64 8, i64 16
  br label %8

8:                                                ; preds = %3, %14
  %9 = phi i64 [ 0, %3 ], [ %15, %14 ]
  %10 = getelementptr inbounds [16 x ptr], ptr %1, i64 0, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call fastcc void @DefineImageHistogram(ptr noundef %0, ptr noundef nonnull %11, ptr noundef %2) #15
  br label %14

14:                                               ; preds = %8, %13
  %15 = add nuw nsw i64 %9, 1
  %16 = icmp eq i64 %15, %7
  br i1 %16, label %17, label %8, !llvm.loop !49

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct._NodeInfo, ptr %1, i64 0, i32 3
  %19 = load i64, ptr %18, align 8, !tbaa !50
  %20 = icmp eq i64 %19, 7
  br i1 %20, label %21, label %46

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct._NodeInfo, ptr %1, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !33
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %46

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct._NodeInfo, ptr %1, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !37
  %28 = load ptr, ptr %2, align 8, !tbaa !13
  br label %29

29:                                               ; preds = %25, %29
  %30 = phi ptr [ %41, %29 ], [ %28, %25 ]
  %31 = phi ptr [ %42, %29 ], [ %27, %25 ]
  %32 = phi i64 [ %43, %29 ], [ 0, %25 ]
  %33 = load i64, ptr %31, align 8
  store i64 %33, ptr %30, align 8
  %34 = getelementptr inbounds %struct._ColorPacket, ptr %31, i64 0, i32 1
  %35 = load i16, ptr %34, align 8, !tbaa !43
  %36 = load ptr, ptr %2, align 8, !tbaa !13
  %37 = getelementptr inbounds %struct._ColorPacket, ptr %36, i64 0, i32 1
  store i16 %35, ptr %37, align 8, !tbaa !43
  %38 = getelementptr inbounds %struct._ColorPacket, ptr %31, i64 0, i32 2
  %39 = load i64, ptr %38, align 8, !tbaa !45
  %40 = getelementptr inbounds %struct._ColorPacket, ptr %36, i64 0, i32 2
  store i64 %39, ptr %40, align 8, !tbaa !45
  %41 = getelementptr inbounds %struct._ColorPacket, ptr %36, i64 1
  store ptr %41, ptr %2, align 8, !tbaa !13
  %42 = getelementptr inbounds %struct._ColorPacket, ptr %31, i64 1
  %43 = add nuw nsw i64 %32, 1
  %44 = load i64, ptr %22, align 8, !tbaa !33
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %29, label %46, !llvm.loop !51

46:                                               ; preds = %29, %21, %17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @DestroyCubeInfo(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !14
  tail call fastcc void @DestroyColorCube(ptr noundef %0, ptr noundef %3) #15
  %4 = getelementptr inbounds %struct._CubeInfo, ptr %1, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  br label %6

6:                                                ; preds = %6, %2
  %7 = phi ptr [ %9, %6 ], [ %5, %2 ]
  %8 = getelementptr inbounds %struct._Nodes, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !53
  %10 = tail call ptr @RelinquishMagickMemory(ptr noundef %7) #17
  store ptr %9, ptr %4, align 8, !tbaa !52
  %11 = icmp eq ptr %9, null
  br i1 %11, label %12, label %6, !llvm.loop !55

12:                                               ; preds = %6
  %13 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %1) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @IsHistogramImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._MagickPixelPacket, align 8
  %4 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #18
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !15
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 679, ptr noundef nonnull @.str.4, ptr noundef nonnull %9) #17
  br label %11

11:                                               ; preds = %8, %2
  %12 = load i32, ptr %0, align 8, !tbaa !41
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %16 = load i64, ptr %15, align 8, !tbaa !56
  %17 = icmp ult i64 %16, 257
  br label %156

18:                                               ; preds = %11
  %19 = tail call fastcc ptr @GetCubeInfo() #15
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %23 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 690, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %22) #17
  br label %156

24:                                               ; preds = %18
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %3) #17
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %4) #17
  %25 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %1) #17
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %28 = load i64, ptr %27, align 8, !tbaa !29
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %151

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %32 = getelementptr inbounds %struct._CubeInfo, ptr %19, i64 0, i32 3
  %33 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %34 = load i64, ptr %26, align 8, !tbaa !32
  br label %35

35:                                               ; preds = %30, %147
  %36 = phi i64 [ %34, %30 ], [ %145, %147 ]
  %37 = phi i64 [ 0, %30 ], [ %148, %147 ]
  %38 = call ptr @GetCacheViewVirtualPixels(ptr noundef %25, i64 noundef 0, i64 noundef %37, i64 noundef %36, i64 noundef 1, ptr noundef %1) #19
  %39 = icmp eq ptr %38, null
  br i1 %39, label %151, label %40

40:                                               ; preds = %35
  %41 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %25) #17
  %42 = load i64, ptr %26, align 8, !tbaa !32
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %143

44:                                               ; preds = %40
  %45 = icmp eq ptr %41, null
  br label %46

46:                                               ; preds = %44, %135
  %47 = phi i64 [ 0, %44 ], [ %137, %135 ]
  %48 = phi ptr [ %38, %44 ], [ %136, %135 ]
  %49 = getelementptr inbounds i16, ptr %41, i64 %47
  %50 = load ptr, ptr %19, align 8, !tbaa !13
  br label %57

51:                                               ; preds = %68
  %52 = getelementptr inbounds %struct._NodeInfo, ptr %69, i64 0, i32 2
  %53 = load i64, ptr %52, align 8, !tbaa !33
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %86

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct._NodeInfo, ptr %69, i64 0, i32 1
  br label %73

57:                                               ; preds = %46, %68
  %58 = phi ptr [ %50, %46 ], [ %69, %68 ]
  %59 = phi i64 [ 1, %46 ], [ %71, %68 ]
  %60 = phi i64 [ 7, %46 ], [ %70, %68 ]
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %48, ptr noundef %49, ptr noundef nonnull %3) #15
  %61 = call fastcc i64 @ColorToNodeId(ptr noundef nonnull %0, ptr noundef nonnull %3, i64 noundef %60) #15, !range !35
  %62 = getelementptr inbounds [16 x ptr], ptr %58, i64 0, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !13
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %57
  %66 = call fastcc ptr @GetNodeInfo(ptr noundef nonnull %19, i64 noundef %59) #15
  store ptr %66, ptr %62, align 8, !tbaa !13
  %67 = icmp eq ptr %66, null
  br i1 %67, label %140, label %68

68:                                               ; preds = %65, %57
  %69 = phi ptr [ %66, %65 ], [ %63, %57 ]
  %70 = add nsw i64 %60, -1
  %71 = add nuw nsw i64 %59, 1
  %72 = icmp eq i64 %71, 8
  br i1 %72, label %51, label %57, !llvm.loop !57

73:                                               ; preds = %55, %80
  %74 = phi i64 [ 0, %55 ], [ %81, %80 ]
  %75 = load ptr, ptr %56, align 8, !tbaa !37
  %76 = getelementptr inbounds %struct._ColorPacket, ptr %75, i64 %74
  %77 = getelementptr inbounds %struct._ColorPacket, ptr %75, i64 %74, i32 1
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef %76, ptr noundef nonnull %77, ptr noundef nonnull %4) #15
  %78 = call fastcc i32 @IsMagickColorEqual(ptr noundef nonnull %3, ptr noundef nonnull %4) #15, !range !38
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %73
  %81 = add nuw nsw i64 %74, 1
  %82 = load i64, ptr %52, align 8, !tbaa !33
  %83 = icmp slt i64 %81, %82
  br i1 %83, label %73, label %86, !llvm.loop !58

84:                                               ; preds = %73
  %85 = load i64, ptr %52, align 8, !tbaa !33
  br label %86

86:                                               ; preds = %80, %51, %84
  %87 = phi i64 [ %74, %84 ], [ 0, %51 ], [ %81, %80 ]
  %88 = phi i64 [ %85, %84 ], [ %53, %51 ], [ %82, %80 ]
  %89 = icmp slt i64 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct._NodeInfo, ptr %69, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !37
  %93 = getelementptr inbounds %struct._ColorPacket, ptr %92, i64 %87, i32 2
  %94 = load i64, ptr %93, align 8, !tbaa !45
  %95 = add i64 %94, 1
  store i64 %95, ptr %93, align 8, !tbaa !45
  br label %135

96:                                               ; preds = %86
  %97 = icmp eq i64 %88, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %96
  %99 = call dereferenceable_or_null(24) ptr @AcquireMagickMemory(i64 noundef 24) #20
  %100 = getelementptr inbounds %struct._NodeInfo, ptr %69, i64 0, i32 1
  store ptr %99, ptr %100, align 8, !tbaa !37
  br label %106

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct._NodeInfo, ptr %69, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !37
  %104 = add nuw nsw i64 %87, 1
  %105 = call ptr @ResizeQuantumMemory(ptr noundef %103, i64 noundef %104, i64 noundef 24) #21
  store ptr %105, ptr %102, align 8, !tbaa !37
  br label %106

106:                                              ; preds = %101, %98
  %107 = phi ptr [ %105, %101 ], [ %99, %98 ]
  %108 = getelementptr inbounds %struct._NodeInfo, ptr %69, i64 0, i32 1
  %109 = icmp eq ptr %107, null
  br i1 %109, label %140, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct._ColorPacket, ptr %107, i64 %87
  %112 = load i64, ptr %48, align 2
  store i64 %112, ptr %111, align 8
  %113 = load i32, ptr %31, align 4, !tbaa !40
  %114 = icmp eq i32 %113, 12
  br i1 %114, label %120, label %115

115:                                              ; preds = %110
  %116 = load i32, ptr %0, align 8, !tbaa !41
  %117 = icmp eq i32 %116, 2
  br i1 %117, label %120, label %118

118:                                              ; preds = %115
  %119 = load ptr, ptr %108, align 8, !tbaa !37
  br label %127

120:                                              ; preds = %115, %110
  br i1 %45, label %123, label %121

121:                                              ; preds = %120
  %122 = load i16, ptr %49, align 2, !tbaa !42
  br label %123

123:                                              ; preds = %120, %121
  %124 = phi i16 [ %122, %121 ], [ 0, %120 ]
  %125 = load ptr, ptr %108, align 8, !tbaa !37
  %126 = getelementptr inbounds %struct._ColorPacket, ptr %125, i64 %87, i32 1
  store i16 %124, ptr %126, align 8, !tbaa !43
  br label %127

127:                                              ; preds = %118, %123
  %128 = phi ptr [ %119, %118 ], [ %125, %123 ]
  %129 = getelementptr inbounds %struct._ColorPacket, ptr %128, i64 %87, i32 2
  store i64 1, ptr %129, align 8, !tbaa !45
  %130 = load i64, ptr %52, align 8, !tbaa !33
  %131 = add i64 %130, 1
  store i64 %131, ptr %52, align 8, !tbaa !33
  %132 = load i64, ptr %32, align 8, !tbaa !9
  %133 = add i64 %132, 1
  store i64 %133, ptr %32, align 8, !tbaa !9
  %134 = icmp ugt i64 %133, 1024
  br i1 %134, label %143, label %135

135:                                              ; preds = %127, %90
  %136 = getelementptr inbounds %struct._PixelPacket, ptr %48, i64 1
  %137 = add nuw nsw i64 %47, 1
  %138 = load i64, ptr %26, align 8, !tbaa !32
  %139 = icmp slt i64 %137, %138
  br i1 %139, label %46, label %143, !llvm.loop !59

140:                                              ; preds = %106, %65
  %141 = phi i64 [ 719, %65 ], [ 752, %106 ]
  %142 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef %141, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %33) #17
  br label %143

143:                                              ; preds = %135, %127, %140, %40
  %144 = phi i64 [ 0, %40 ], [ %47, %140 ], [ %137, %135 ], [ %47, %127 ]
  %145 = load i64, ptr %26, align 8, !tbaa !32
  %146 = icmp slt i64 %144, %145
  br i1 %146, label %151, label %147

147:                                              ; preds = %143
  %148 = add nuw nsw i64 %37, 1
  %149 = load i64, ptr %27, align 8, !tbaa !29
  %150 = icmp slt i64 %148, %149
  br i1 %150, label %35, label %151, !llvm.loop !60

151:                                              ; preds = %147, %35, %143, %24
  %152 = phi i64 [ 0, %24 ], [ %37, %143 ], [ %37, %35 ], [ %148, %147 ]
  %153 = call ptr @DestroyCacheView(ptr noundef %25) #17
  call fastcc void @DestroyCubeInfo(ptr noundef nonnull %0, ptr noundef nonnull %19) #15
  %154 = load i64, ptr %27, align 8, !tbaa !29
  %155 = icmp sge i64 %152, %154
  br label %156

156:                                              ; preds = %14, %151, %21
  %157 = phi i1 [ false, %21 ], [ %155, %151 ], [ %17, %14 ]
  %158 = zext i1 %157 to i32
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #18
  ret i32 %158
}

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @GetCubeInfo() unnamed_addr #0 {
  %1 = tail call dereferenceable_or_null(56) ptr @AcquireMagickMemory(i64 noundef 56) #20
  %2 = icmp eq ptr %1, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %0
  %4 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %1, i32 noundef 0, i64 noundef 56) #17
  %5 = tail call fastcc ptr @GetNodeInfo(ptr noundef nonnull %1, i64 noundef 0) #15
  store ptr %5, ptr %1, align 8, !tbaa !14
  %6 = icmp eq ptr %5, null
  %7 = select i1 %6, ptr null, ptr %1
  br label %8

8:                                                ; preds = %3, %0
  %9 = phi ptr [ null, %0 ], [ %7, %3 ]
  ret ptr %9
}

; Function Attrs: optsize
declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: hot optsize
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @SetMagickPixelPacket(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #6 {
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  %6 = load <4 x i16>, ptr %1, align 2, !tbaa !42
  %7 = uitofp <4 x i16> %6 to <4 x float>
  %8 = shufflevector <4 x float> %7, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  store <4 x float> %8, ptr %5, align 8, !tbaa !61
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !40
  %11 = icmp eq i32 %10, 12
  %12 = icmp ne ptr %2, null
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i16, ptr %2, align 2, !tbaa !42
  %16 = uitofp i16 %15 to float
  %17 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  store float %16, ptr %17, align 8, !tbaa !63
  br label %18

18:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i64 @ColorToNodeId(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i64 noundef %2) unnamed_addr #7 {
  %4 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %5 = load float, ptr %4, align 8, !tbaa !65
  %6 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %5) #15
  %7 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %6) #15
  %8 = zext i8 %7 to i32
  %9 = trunc i64 %2 to i32
  %10 = lshr i32 %8, %9
  %11 = and i32 %10, 1
  %12 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %13 = load float, ptr %12, align 4, !tbaa !66
  %14 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %13) #15
  %15 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %14) #15
  %16 = zext i8 %15 to i32
  %17 = lshr i32 %16, %9
  %18 = shl nuw nsw i32 %17, 1
  %19 = and i32 %18, 2
  %20 = or disjoint i32 %19, %11
  %21 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %22 = load float, ptr %21, align 8, !tbaa !67
  %23 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %22) #15
  %24 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %23) #15
  %25 = zext i8 %24 to i32
  %26 = lshr i32 %25, %9
  %27 = shl nuw nsw i32 %26, 2
  %28 = and i32 %27, 4
  %29 = or disjoint i32 %20, %28
  %30 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %31 = load i32, ptr %30, align 8, !tbaa !48
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %3
  %34 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %35 = load float, ptr %34, align 4, !tbaa !68
  %36 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %35) #15
  %37 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %36) #15
  %38 = zext i8 %37 to i32
  %39 = lshr i32 %38, %9
  %40 = shl nuw nsw i32 %39, 3
  %41 = and i32 %40, 8
  %42 = or disjoint i32 %41, %29
  br label %43

43:                                               ; preds = %33, %3
  %44 = phi i32 [ %42, %33 ], [ %29, %3 ]
  %45 = zext nneg i32 %44 to i64
  ret i64 %45
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @GetNodeInfo(ptr nocapture noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 4
  %4 = load i64, ptr %3, align 8, !tbaa !69
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !70
  %9 = add i64 %4, -1
  br label %17

10:                                               ; preds = %2
  %11 = tail call dereferenceable_or_null(233480) ptr @AcquireMagickMemory(i64 noundef 233480) #20
  %12 = icmp eq ptr %11, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !52
  %16 = getelementptr inbounds %struct._Nodes, ptr %11, i64 0, i32 1
  store ptr %15, ptr %16, align 8, !tbaa !53
  store ptr %11, ptr %14, align 8, !tbaa !52
  br label %17

17:                                               ; preds = %6, %13
  %18 = phi ptr [ %11, %13 ], [ %8, %6 ]
  %19 = phi i64 [ 1535, %13 ], [ %9, %6 ]
  store i64 %19, ptr %3, align 8, !tbaa !69
  %20 = getelementptr inbounds %struct._CubeInfo, ptr %0, i64 0, i32 5
  %21 = getelementptr inbounds %struct._NodeInfo, ptr %18, i64 1
  store ptr %21, ptr %20, align 8, !tbaa !70
  %22 = tail call ptr @ResetMagickMemory(ptr noundef %18, i32 noundef 0, i64 noundef 152) #17
  %23 = getelementptr inbounds %struct._NodeInfo, ptr %18, i64 0, i32 3
  store i64 %1, ptr %23, align 8, !tbaa !50
  br label %24

24:                                               ; preds = %10, %17
  %25 = phi ptr [ %18, %17 ], [ null, %10 ]
  ret ptr %25
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef i32 @IsMagickColorEqual(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !71
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !71
  %8 = icmp eq i32 %7, 0
  br i1 %5, label %16, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %11 = load float, ptr %10, align 4, !tbaa !68
  br i1 %8, label %12, label %23

12:                                               ; preds = %9
  %13 = tail call float @llvm.fabs.f32(float %11)
  %14 = fpext float %13 to double
  %15 = fcmp ult double %14, 1.000000e-15
  br i1 %15, label %35, label %76

16:                                               ; preds = %2
  br i1 %8, label %35, label %17

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %19 = load float, ptr %18, align 4, !tbaa !68
  %20 = tail call float @llvm.fabs.f32(float %19)
  %21 = fpext float %20 to double
  %22 = fcmp ult double %21, 1.000000e-15
  br i1 %22, label %35, label %76

23:                                               ; preds = %9
  %24 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %25 = load float, ptr %24, align 4, !tbaa !68
  %26 = fsub float %11, %25
  %27 = tail call float @llvm.fabs.f32(float %26)
  %28 = fpext float %27 to double
  %29 = fcmp ult double %28, 1.000000e-15
  br i1 %29, label %30, label %76

30:                                               ; preds = %23
  %31 = fadd float %11, -6.553500e+04
  %32 = tail call float @llvm.fabs.f32(float %31)
  %33 = fpext float %32 to double
  %34 = fcmp olt double %33, 1.000000e-15
  br i1 %34, label %76, label %35

35:                                               ; preds = %12, %17, %16, %30
  %36 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %37 = load float, ptr %36, align 8, !tbaa !65
  %38 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %39 = load float, ptr %38, align 8, !tbaa !65
  %40 = fsub float %37, %39
  %41 = tail call float @llvm.fabs.f32(float %40)
  %42 = fpext float %41 to double
  %43 = fcmp ult double %42, 1.000000e-15
  br i1 %43, label %44, label %76

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %46 = load float, ptr %45, align 4, !tbaa !66
  %47 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %48 = load float, ptr %47, align 4, !tbaa !66
  %49 = fsub float %46, %48
  %50 = tail call float @llvm.fabs.f32(float %49)
  %51 = fpext float %50 to double
  %52 = fcmp ult double %51, 1.000000e-15
  br i1 %52, label %53, label %76

53:                                               ; preds = %44
  %54 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %55 = load float, ptr %54, align 8, !tbaa !67
  %56 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %57 = load float, ptr %56, align 8, !tbaa !67
  %58 = fsub float %55, %57
  %59 = tail call float @llvm.fabs.f32(float %58)
  %60 = fpext float %59 to double
  %61 = fcmp ult double %60, 1.000000e-15
  br i1 %61, label %62, label %76

62:                                               ; preds = %53
  %63 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 1
  %64 = load i32, ptr %63, align 4, !tbaa !72
  %65 = icmp eq i32 %64, 12
  br i1 %65, label %66, label %75

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %68 = load float, ptr %67, align 8, !tbaa !63
  %69 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %70 = load float, ptr %69, align 8, !tbaa !63
  %71 = fsub float %68, %70
  %72 = tail call float @llvm.fabs.f32(float %71)
  %73 = fpext float %72 to double
  %74 = fcmp ult double %73, 1.000000e-15
  br i1 %74, label %75, label %76

75:                                               ; preds = %66, %62
  br label %76

76:                                               ; preds = %66, %53, %44, %35, %30, %23, %17, %12, %75
  %77 = phi i32 [ 1, %75 ], [ 0, %12 ], [ 0, %17 ], [ 0, %23 ], [ 1, %30 ], [ 0, %35 ], [ 0, %44 ], [ 0, %53 ], [ 0, %66 ]
  ret i32 %77
}

; Function Attrs: optsize allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #8

; Function Attrs: optsize allocsize(1,2)
declare ptr @ResizeQuantumMemory(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @IsPaletteImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._MagickPixelPacket, align 8
  %4 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #18
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !15
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 842, ptr noundef nonnull @.str.4, ptr noundef nonnull %9) #17
  br label %11

11:                                               ; preds = %8, %2
  %12 = load i32, ptr %0, align 8, !tbaa !41
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %16 = load i64, ptr %15, align 8, !tbaa !56
  %17 = icmp ult i64 %16, 257
  br label %156

18:                                               ; preds = %11
  %19 = tail call fastcc ptr @GetCubeInfo() #15
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %23 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 853, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %22) #17
  br label %156

24:                                               ; preds = %18
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %3) #17
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %4) #17
  %25 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %1) #17
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %28 = load i64, ptr %27, align 8, !tbaa !29
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %151

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %32 = getelementptr inbounds %struct._CubeInfo, ptr %19, i64 0, i32 3
  %33 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %34 = load i64, ptr %26, align 8, !tbaa !32
  br label %35

35:                                               ; preds = %30, %147
  %36 = phi i64 [ %34, %30 ], [ %145, %147 ]
  %37 = phi i64 [ 0, %30 ], [ %148, %147 ]
  %38 = call ptr @GetCacheViewVirtualPixels(ptr noundef %25, i64 noundef 0, i64 noundef %37, i64 noundef %36, i64 noundef 1, ptr noundef %1) #19
  %39 = icmp eq ptr %38, null
  br i1 %39, label %151, label %40

40:                                               ; preds = %35
  %41 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %25) #17
  %42 = load i64, ptr %26, align 8, !tbaa !32
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %143

44:                                               ; preds = %40
  %45 = icmp eq ptr %41, null
  br label %46

46:                                               ; preds = %44, %135
  %47 = phi i64 [ 0, %44 ], [ %137, %135 ]
  %48 = phi ptr [ %38, %44 ], [ %136, %135 ]
  %49 = getelementptr inbounds i16, ptr %41, i64 %47
  %50 = load ptr, ptr %19, align 8, !tbaa !13
  br label %57

51:                                               ; preds = %68
  %52 = getelementptr inbounds %struct._NodeInfo, ptr %69, i64 0, i32 2
  %53 = load i64, ptr %52, align 8, !tbaa !33
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %86

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct._NodeInfo, ptr %69, i64 0, i32 1
  br label %73

57:                                               ; preds = %46, %68
  %58 = phi ptr [ %50, %46 ], [ %69, %68 ]
  %59 = phi i64 [ 1, %46 ], [ %71, %68 ]
  %60 = phi i64 [ 7, %46 ], [ %70, %68 ]
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %48, ptr noundef %49, ptr noundef nonnull %3) #15
  %61 = call fastcc i64 @ColorToNodeId(ptr noundef nonnull %0, ptr noundef nonnull %3, i64 noundef %60) #15, !range !35
  %62 = getelementptr inbounds [16 x ptr], ptr %58, i64 0, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !13
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %57
  %66 = call fastcc ptr @GetNodeInfo(ptr noundef nonnull %19, i64 noundef %59) #15
  store ptr %66, ptr %62, align 8, !tbaa !13
  %67 = icmp eq ptr %66, null
  br i1 %67, label %140, label %68

68:                                               ; preds = %65, %57
  %69 = phi ptr [ %66, %65 ], [ %63, %57 ]
  %70 = add nsw i64 %60, -1
  %71 = add nuw nsw i64 %59, 1
  %72 = icmp eq i64 %71, 8
  br i1 %72, label %51, label %57, !llvm.loop !73

73:                                               ; preds = %55, %80
  %74 = phi i64 [ 0, %55 ], [ %81, %80 ]
  %75 = load ptr, ptr %56, align 8, !tbaa !37
  %76 = getelementptr inbounds %struct._ColorPacket, ptr %75, i64 %74
  %77 = getelementptr inbounds %struct._ColorPacket, ptr %75, i64 %74, i32 1
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef %76, ptr noundef nonnull %77, ptr noundef nonnull %4) #15
  %78 = call fastcc i32 @IsMagickColorEqual(ptr noundef nonnull %3, ptr noundef nonnull %4) #15, !range !38
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %73
  %81 = add nuw nsw i64 %74, 1
  %82 = load i64, ptr %52, align 8, !tbaa !33
  %83 = icmp slt i64 %81, %82
  br i1 %83, label %73, label %86, !llvm.loop !74

84:                                               ; preds = %73
  %85 = load i64, ptr %52, align 8, !tbaa !33
  br label %86

86:                                               ; preds = %80, %51, %84
  %87 = phi i64 [ %74, %84 ], [ 0, %51 ], [ %81, %80 ]
  %88 = phi i64 [ %85, %84 ], [ %53, %51 ], [ %82, %80 ]
  %89 = icmp slt i64 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct._NodeInfo, ptr %69, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !37
  %93 = getelementptr inbounds %struct._ColorPacket, ptr %92, i64 %87, i32 2
  %94 = load i64, ptr %93, align 8, !tbaa !45
  %95 = add i64 %94, 1
  store i64 %95, ptr %93, align 8, !tbaa !45
  br label %135

96:                                               ; preds = %86
  %97 = icmp eq i64 %88, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %96
  %99 = call dereferenceable_or_null(24) ptr @AcquireMagickMemory(i64 noundef 24) #20
  %100 = getelementptr inbounds %struct._NodeInfo, ptr %69, i64 0, i32 1
  store ptr %99, ptr %100, align 8, !tbaa !37
  br label %106

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct._NodeInfo, ptr %69, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !37
  %104 = add nuw nsw i64 %87, 1
  %105 = call ptr @ResizeQuantumMemory(ptr noundef %103, i64 noundef %104, i64 noundef 24) #21
  store ptr %105, ptr %102, align 8, !tbaa !37
  br label %106

106:                                              ; preds = %101, %98
  %107 = phi ptr [ %105, %101 ], [ %99, %98 ]
  %108 = getelementptr inbounds %struct._NodeInfo, ptr %69, i64 0, i32 1
  %109 = icmp eq ptr %107, null
  br i1 %109, label %140, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct._ColorPacket, ptr %107, i64 %87
  %112 = load i64, ptr %48, align 2
  store i64 %112, ptr %111, align 8
  %113 = load i32, ptr %31, align 4, !tbaa !40
  %114 = icmp eq i32 %113, 12
  br i1 %114, label %120, label %115

115:                                              ; preds = %110
  %116 = load i32, ptr %0, align 8, !tbaa !41
  %117 = icmp eq i32 %116, 2
  br i1 %117, label %120, label %118

118:                                              ; preds = %115
  %119 = load ptr, ptr %108, align 8, !tbaa !37
  br label %127

120:                                              ; preds = %115, %110
  br i1 %45, label %123, label %121

121:                                              ; preds = %120
  %122 = load i16, ptr %49, align 2, !tbaa !42
  br label %123

123:                                              ; preds = %120, %121
  %124 = phi i16 [ %122, %121 ], [ 0, %120 ]
  %125 = load ptr, ptr %108, align 8, !tbaa !37
  %126 = getelementptr inbounds %struct._ColorPacket, ptr %125, i64 %87, i32 1
  store i16 %124, ptr %126, align 8, !tbaa !43
  br label %127

127:                                              ; preds = %118, %123
  %128 = phi ptr [ %119, %118 ], [ %125, %123 ]
  %129 = getelementptr inbounds %struct._ColorPacket, ptr %128, i64 %87, i32 2
  store i64 1, ptr %129, align 8, !tbaa !45
  %130 = load i64, ptr %52, align 8, !tbaa !33
  %131 = add i64 %130, 1
  store i64 %131, ptr %52, align 8, !tbaa !33
  %132 = load i64, ptr %32, align 8, !tbaa !9
  %133 = add i64 %132, 1
  store i64 %133, ptr %32, align 8, !tbaa !9
  %134 = icmp ugt i64 %133, 256
  br i1 %134, label %143, label %135

135:                                              ; preds = %127, %90
  %136 = getelementptr inbounds %struct._PixelPacket, ptr %48, i64 1
  %137 = add nuw nsw i64 %47, 1
  %138 = load i64, ptr %26, align 8, !tbaa !32
  %139 = icmp slt i64 %137, %138
  br i1 %139, label %46, label %143, !llvm.loop !75

140:                                              ; preds = %106, %65
  %141 = phi i64 [ 882, %65 ], [ 915, %106 ]
  %142 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef %141, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %33) #17
  br label %143

143:                                              ; preds = %135, %127, %140, %40
  %144 = phi i64 [ 0, %40 ], [ %47, %140 ], [ %137, %135 ], [ %47, %127 ]
  %145 = load i64, ptr %26, align 8, !tbaa !32
  %146 = icmp slt i64 %144, %145
  br i1 %146, label %151, label %147

147:                                              ; preds = %143
  %148 = add nuw nsw i64 %37, 1
  %149 = load i64, ptr %27, align 8, !tbaa !29
  %150 = icmp slt i64 %148, %149
  br i1 %150, label %35, label %151, !llvm.loop !76

151:                                              ; preds = %147, %35, %143, %24
  %152 = phi i64 [ 0, %24 ], [ %37, %143 ], [ %37, %35 ], [ %148, %147 ]
  %153 = call ptr @DestroyCacheView(ptr noundef %25) #17
  call fastcc void @DestroyCubeInfo(ptr noundef nonnull %0, ptr noundef nonnull %19) #15
  %154 = load i64, ptr %27, align 8, !tbaa !29
  %155 = icmp sge i64 %152, %154
  br label %156

156:                                              ; preds = %14, %151, %21
  %157 = phi i1 [ false, %21 ], [ %155, %151 ], [ %17, %14 ]
  %158 = zext i1 %157 to i32
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #18
  ret i32 %158
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MinMaxStretchImage(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #0 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  %7 = and i32 %1, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %11 = call i32 @GetImageChannelRange(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %10) #17
  %12 = load double, ptr %5, align 8, !tbaa !77
  %13 = fadd double %12, %2
  store double %13, ptr %5, align 8, !tbaa !77
  %14 = load double, ptr %6, align 8, !tbaa !77
  %15 = fsub double %14, %3
  store double %15, ptr %6, align 8, !tbaa !77
  %16 = fsub double %13, %15
  %17 = call double @llvm.fabs.f64(double %16)
  %18 = fcmp ult double %17, 1.000000e-15
  br i1 %18, label %118, label %19

19:                                               ; preds = %9
  %20 = call i32 @LevelImageChannel(ptr noundef %0, i32 noundef %1, double noundef %13, double noundef %15, double noundef 1.000000e+00) #17
  %21 = and i32 %20, 1
  br label %118

22:                                               ; preds = %4
  %23 = and i32 %1, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %27 = call i32 @GetImageChannelRange(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %26) #17
  %28 = load double, ptr %5, align 8, !tbaa !77
  %29 = fadd double %28, %2
  store double %29, ptr %5, align 8, !tbaa !77
  %30 = load double, ptr %6, align 8, !tbaa !77
  %31 = fsub double %30, %3
  store double %31, ptr %6, align 8, !tbaa !77
  %32 = fsub double %29, %31
  %33 = call double @llvm.fabs.f64(double %32)
  %34 = fcmp ult double %33, 1.000000e-15
  br i1 %34, label %38, label %35

35:                                               ; preds = %25
  %36 = call i32 @LevelImageChannel(ptr noundef %0, i32 noundef 1, double noundef %29, double noundef %31, double noundef 1.000000e+00) #17
  %37 = and i32 %36, 1
  br label %38

38:                                               ; preds = %25, %35, %22
  %39 = phi i32 [ %37, %35 ], [ 1, %25 ], [ 1, %22 ]
  %40 = and i32 %1, 2
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %55, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %44 = call i32 @GetImageChannelRange(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %43) #17
  %45 = load double, ptr %5, align 8, !tbaa !77
  %46 = fadd double %45, %2
  store double %46, ptr %5, align 8, !tbaa !77
  %47 = load double, ptr %6, align 8, !tbaa !77
  %48 = fsub double %47, %3
  store double %48, ptr %6, align 8, !tbaa !77
  %49 = fsub double %46, %48
  %50 = call double @llvm.fabs.f64(double %49)
  %51 = fcmp ult double %50, 1.000000e-15
  br i1 %51, label %55, label %52

52:                                               ; preds = %42
  %53 = call i32 @LevelImageChannel(ptr noundef %0, i32 noundef 2, double noundef %46, double noundef %48, double noundef 1.000000e+00) #17
  %54 = and i32 %53, %39
  br label %55

55:                                               ; preds = %42, %52, %38
  %56 = phi i32 [ %54, %52 ], [ %39, %42 ], [ %39, %38 ]
  %57 = and i32 %1, 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %72, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %61 = call i32 @GetImageChannelRange(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %60) #17
  %62 = load double, ptr %5, align 8, !tbaa !77
  %63 = fadd double %62, %2
  store double %63, ptr %5, align 8, !tbaa !77
  %64 = load double, ptr %6, align 8, !tbaa !77
  %65 = fsub double %64, %3
  store double %65, ptr %6, align 8, !tbaa !77
  %66 = fsub double %63, %65
  %67 = call double @llvm.fabs.f64(double %66)
  %68 = fcmp ult double %67, 1.000000e-15
  br i1 %68, label %72, label %69

69:                                               ; preds = %59
  %70 = call i32 @LevelImageChannel(ptr noundef %0, i32 noundef 4, double noundef %63, double noundef %65, double noundef 1.000000e+00) #17
  %71 = and i32 %70, %56
  br label %72

72:                                               ; preds = %59, %69, %55
  %73 = phi i32 [ %71, %69 ], [ %56, %59 ], [ %56, %55 ]
  %74 = and i32 %1, 8
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %93, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %78 = load i32, ptr %77, align 8, !tbaa !48
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %93, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %82 = call i32 @GetImageChannelRange(ptr noundef nonnull %0, i32 noundef 8, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %81) #17
  %83 = load double, ptr %5, align 8, !tbaa !77
  %84 = fadd double %83, %2
  store double %84, ptr %5, align 8, !tbaa !77
  %85 = load double, ptr %6, align 8, !tbaa !77
  %86 = fsub double %85, %3
  store double %86, ptr %6, align 8, !tbaa !77
  %87 = fsub double %84, %86
  %88 = call double @llvm.fabs.f64(double %87)
  %89 = fcmp ult double %88, 1.000000e-15
  br i1 %89, label %93, label %90

90:                                               ; preds = %80
  %91 = call i32 @LevelImageChannel(ptr noundef nonnull %0, i32 noundef 8, double noundef %84, double noundef %86, double noundef 1.000000e+00) #17
  %92 = and i32 %91, %73
  br label %93

93:                                               ; preds = %80, %90, %76, %72
  %94 = phi i32 [ %92, %90 ], [ %73, %80 ], [ %73, %76 ], [ %73, %72 ]
  %95 = and i32 %1, 32
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %114, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %99 = load i32, ptr %98, align 4, !tbaa !40
  %100 = icmp eq i32 %99, 12
  br i1 %100, label %101, label %114

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %103 = call i32 @GetImageChannelRange(ptr noundef nonnull %0, i32 noundef 32, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %102) #17
  %104 = load double, ptr %5, align 8, !tbaa !77
  %105 = fadd double %104, %2
  store double %105, ptr %5, align 8, !tbaa !77
  %106 = load double, ptr %6, align 8, !tbaa !77
  %107 = fsub double %106, %3
  store double %107, ptr %6, align 8, !tbaa !77
  %108 = fsub double %105, %107
  %109 = call double @llvm.fabs.f64(double %108)
  %110 = fcmp ult double %109, 1.000000e-15
  br i1 %110, label %114, label %111

111:                                              ; preds = %101
  %112 = call i32 @LevelImageChannel(ptr noundef nonnull %0, i32 noundef 32, double noundef %105, double noundef %107, double noundef 1.000000e+00) #17
  %113 = and i32 %112, %94
  br label %114

114:                                              ; preds = %101, %111, %97, %93
  %115 = phi i32 [ %113, %111 ], [ %94, %101 ], [ %94, %97 ], [ %94, %93 ]
  %116 = icmp ne i32 %115, 0
  %117 = zext i1 %116 to i32
  br label %118

118:                                              ; preds = %9, %19, %114
  %119 = phi i32 [ %117, %114 ], [ %21, %19 ], [ 1, %9 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  ret i32 %119
}

; Function Attrs: optsize
declare i32 @GetImageChannelRange(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #10

; Function Attrs: optsize
declare i32 @LevelImageChannel(ptr noundef, i32 noundef, double noundef, double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @GetNumberColors(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  %5 = alloca [4096 x i8], align 16
  %6 = alloca [4096 x i8], align 16
  %7 = alloca %struct._MagickPixelPacket, align 8
  %8 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #18
  store i64 0, ptr %8, align 8, !tbaa !5
  %9 = icmp eq ptr %1, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %3
  %11 = tail call fastcc ptr @ClassifyImageColors(ptr noundef %0, ptr noundef %2) #15
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct._CubeInfo, ptr %11, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !9
  br label %16

16:                                               ; preds = %13, %10
  %17 = phi i64 [ %15, %13 ], [ 0, %10 ]
  tail call fastcc void @DestroyCubeInfo(ptr noundef %0, ptr noundef %11) #15
  br label %71

18:                                               ; preds = %3
  %19 = call ptr @GetImageHistogram(ptr noundef %0, ptr noundef nonnull %8, ptr noundef %2) #15
  %20 = icmp eq ptr %19, null
  %21 = load i64, ptr %8, align 8
  br i1 %20, label %71, label %22

22:                                               ; preds = %18
  tail call void @qsort(ptr noundef nonnull %19, i64 noundef %21, i64 noundef 24, ptr noundef nonnull @HistogramCompare) #17
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %7) #17
  %23 = icmp sgt i64 %21, 0
  br i1 %23, label %24, label %67

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 1
  %26 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 2
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %28

28:                                               ; preds = %24, %59
  %29 = phi i64 [ 0, %24 ], [ %62, %59 ]
  %30 = phi ptr [ %19, %24 ], [ %61, %59 ]
  %31 = phi i32 [ 1, %24 ], [ %60, %59 ]
  %32 = getelementptr inbounds %struct._ColorPacket, ptr %30, i64 0, i32 1
  call fastcc void @SetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %30, ptr noundef nonnull %32, ptr noundef nonnull %7) #15
  %33 = call i64 @CopyMagickString(ptr noundef nonnull %6, ptr noundef nonnull @.str.5, i64 noundef 4096) #17
  call void @ConcatenateColorComponent(ptr noundef nonnull %7, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %6) #17
  %34 = call i64 @ConcatenateMagickString(ptr noundef nonnull %6, ptr noundef nonnull @.str.6, i64 noundef 4096) #17
  call void @ConcatenateColorComponent(ptr noundef nonnull %7, i32 noundef 2, i32 noundef 2, ptr noundef nonnull %6) #17
  %35 = call i64 @ConcatenateMagickString(ptr noundef nonnull %6, ptr noundef nonnull @.str.6, i64 noundef 4096) #17
  call void @ConcatenateColorComponent(ptr noundef nonnull %7, i32 noundef 4, i32 noundef 2, ptr noundef nonnull %6) #17
  %36 = load i32, ptr %25, align 4, !tbaa !72
  %37 = icmp eq i32 %36, 12
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = call i64 @ConcatenateMagickString(ptr noundef nonnull %6, ptr noundef nonnull @.str.6, i64 noundef 4096) #17
  call void @ConcatenateColorComponent(ptr noundef nonnull %7, i32 noundef 32, i32 noundef 2, ptr noundef nonnull %6) #17
  br label %40

40:                                               ; preds = %38, %28
  %41 = load i32, ptr %26, align 8, !tbaa !71
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = call i64 @ConcatenateMagickString(ptr noundef nonnull %6, ptr noundef nonnull @.str.6, i64 noundef 4096) #17
  call void @ConcatenateColorComponent(ptr noundef nonnull %7, i32 noundef 8, i32 noundef 2, ptr noundef nonnull %6) #17
  br label %45

45:                                               ; preds = %43, %40
  %46 = call i64 @ConcatenateMagickString(ptr noundef nonnull %6, ptr noundef nonnull @.str.7, i64 noundef 4096) #17
  %47 = call i32 @QueryMagickColorname(ptr noundef %0, ptr noundef nonnull %7, i32 noundef 1, ptr noundef nonnull %4, ptr noundef %2) #17
  call void @GetColorTuple(ptr noundef nonnull %7, i32 noundef 1, ptr noundef nonnull %5) #17
  %48 = getelementptr inbounds %struct._ColorPacket, ptr %30, i64 0, i32 2
  %49 = load i64, ptr %48, align 8, !tbaa !45
  %50 = sitofp i64 %49 to double
  %51 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef nonnull %1, ptr noundef nonnull @.str.8, double noundef %50) #17
  %52 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef nonnull %1, ptr noundef nonnull @.str.9, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %4) #17
  %53 = load ptr, ptr %27, align 8, !tbaa !78
  %54 = icmp eq ptr %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %45
  %56 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.10, i64 noundef %29, i64 noundef %21) #15
  %57 = icmp eq i32 %56, 0
  %58 = select i1 %57, i32 0, i32 %31
  br label %59

59:                                               ; preds = %55, %45
  %60 = phi i32 [ %58, %55 ], [ %31, %45 ]
  %61 = getelementptr inbounds %struct._ColorPacket, ptr %30, i64 1
  %62 = add nuw nsw i64 %29, 1
  %63 = icmp eq i64 %62, %21
  br i1 %63, label %64, label %28, !llvm.loop !79

64:                                               ; preds = %59
  %65 = icmp eq i32 %60, 0
  %66 = select i1 %65, i64 0, i64 %21
  br label %67

67:                                               ; preds = %64, %22
  %68 = phi i64 [ %21, %22 ], [ %66, %64 ]
  %69 = call i32 @fflush(ptr noundef nonnull %1) #15
  %70 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %19) #17
  br label %71

71:                                               ; preds = %18, %67, %16
  %72 = phi i64 [ %17, %16 ], [ %68, %67 ], [ %21, %18 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #18
  ret i64 %72
}

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @HistogramCompare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 {
  %3 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 2
  %4 = load i16, ptr %3, align 4, !tbaa !80
  %5 = getelementptr inbounds %struct._PixelPacket, ptr %0, i64 0, i32 2
  %6 = load i16, ptr %5, align 4, !tbaa !80
  %7 = icmp eq i16 %4, %6
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = zext i16 %6 to i32
  %10 = zext i16 %4 to i32
  %11 = sub nsw i32 %9, %10
  br label %38

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 1
  %14 = load i16, ptr %13, align 2, !tbaa !81
  %15 = getelementptr inbounds %struct._PixelPacket, ptr %0, i64 0, i32 1
  %16 = load i16, ptr %15, align 2, !tbaa !81
  %17 = icmp eq i16 %14, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %12
  %19 = zext i16 %16 to i32
  %20 = zext i16 %14 to i32
  %21 = sub nsw i32 %19, %20
  br label %38

22:                                               ; preds = %12
  %23 = load i16, ptr %1, align 8, !tbaa !82
  %24 = load i16, ptr %0, align 8, !tbaa !82
  %25 = icmp eq i16 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = zext i16 %24 to i32
  %28 = zext i16 %23 to i32
  %29 = sub nsw i32 %27, %28
  br label %38

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct._ColorPacket, ptr %1, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !45
  %33 = trunc i64 %32 to i32
  %34 = getelementptr inbounds %struct._ColorPacket, ptr %0, i64 0, i32 2
  %35 = load i64, ptr %34, align 8, !tbaa !45
  %36 = trunc i64 %35 to i32
  %37 = sub nsw i32 %33, %36
  br label %38

38:                                               ; preds = %30, %26, %18, %8
  %39 = phi i32 [ %11, %8 ], [ %21, %18 ], [ %29, %26 ], [ %37, %30 ]
  ret i32 %39
}

; Function Attrs: optsize
declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ConcatenateColorComponent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @QueryMagickColorname(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @GetColorTuple(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @SetImageProgress(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #18
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %7 = load ptr, ptr %6, align 8, !tbaa !78
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.12, ptr noundef %1, ptr noundef nonnull %10) #17
  %12 = load ptr, ptr %6, align 8, !tbaa !78
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %14 = load ptr, ptr %13, align 8, !tbaa !83
  %15 = call i32 %12(ptr noundef nonnull %5, i64 noundef %2, i64 noundef %3, ptr noundef %14) #17
  br label %16

16:                                               ; preds = %4, %9
  %17 = phi i32 [ %15, %9 ], [ 1, %4 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #18
  ret i32 %17
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @UniqueImageColors(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @ClassifyImageColors(ptr noundef %0, ptr noundef %1) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %29, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct._CubeInfo, ptr %3, i64 0, i32 3
  %7 = load i64, ptr %6, align 8, !tbaa !9
  %8 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef %7, i64 noundef 1, i32 noundef 1, ptr noundef %1) #17
  %9 = icmp eq ptr %8, null
  br i1 %9, label %29, label %10

10:                                               ; preds = %5
  %11 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %8, i32 noundef 1) #17
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct._Image, ptr %8, i64 0, i32 58
  tail call void @InheritException(ptr noundef %1, ptr noundef nonnull %14) #17
  %15 = tail call ptr @DestroyImage(ptr noundef nonnull %8) #17
  br label %29

16:                                               ; preds = %10
  %17 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %8, ptr noundef %1) #17
  %18 = load ptr, ptr %3, align 8, !tbaa !14
  tail call fastcc void @UniqueColorsToImage(ptr noundef nonnull %8, ptr noundef %17, ptr noundef nonnull %3, ptr noundef %18, ptr noundef %1) #15
  %19 = tail call ptr @DestroyCacheView(ptr noundef %17) #17
  %20 = load i64, ptr %6, align 8, !tbaa !9
  %21 = icmp ult i64 %20, 65536
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = tail call ptr @AcquireQuantizeInfo(ptr noundef null) #17
  store i64 65536, ptr %23, align 8, !tbaa !84
  %24 = getelementptr inbounds %struct._QuantizeInfo, ptr %23, i64 0, i32 2
  store i32 0, ptr %24, align 8, !tbaa !86
  %25 = getelementptr inbounds %struct._QuantizeInfo, ptr %23, i64 0, i32 1
  store i64 8, ptr %25, align 8, !tbaa !87
  %26 = tail call i32 @QuantizeImage(ptr noundef nonnull %23, ptr noundef nonnull %8) #17
  %27 = tail call ptr @DestroyQuantizeInfo(ptr noundef nonnull %23) #17
  br label %28

28:                                               ; preds = %22, %16
  tail call fastcc void @DestroyCubeInfo(ptr noundef %0, ptr noundef nonnull %3) #15
  br label %29

29:                                               ; preds = %5, %2, %28, %13
  %30 = phi ptr [ null, %13 ], [ %8, %28 ], [ null, %2 ], [ null, %5 ]
  ret ptr %30
}

; Function Attrs: optsize
declare ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @UniqueColorsToImage(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !48
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, i64 8, i64 16
  br label %10

10:                                               ; preds = %5, %16
  %11 = phi i64 [ 0, %5 ], [ %17, %16 ]
  %12 = getelementptr inbounds [16 x ptr], ptr %3, i64 0, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call fastcc void @UniqueColorsToImage(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %13, ptr noundef %4) #15
  br label %16

16:                                               ; preds = %10, %15
  %17 = add nuw nsw i64 %11, 1
  %18 = icmp eq i64 %17, %9
  br i1 %18, label %19, label %10, !llvm.loop !88

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct._NodeInfo, ptr %3, i64 0, i32 3
  %21 = load i64, ptr %20, align 8, !tbaa !50
  %22 = icmp eq i64 %21, 7
  br i1 %22, label %23, label %72

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._NodeInfo, ptr %3, i64 0, i32 2
  %25 = load i64, ptr %24, align 8, !tbaa !33
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %58

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct._NodeInfo, ptr %3, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !37
  %30 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 1
  %31 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  br label %32

32:                                               ; preds = %27, %53
  %33 = phi i64 [ 0, %27 ], [ %55, %53 ]
  %34 = phi ptr [ %29, %27 ], [ %54, %53 ]
  %35 = load i64, ptr %30, align 8, !tbaa !89
  %36 = tail call ptr @QueueCacheViewAuthenticPixels(ptr noundef %1, i64 noundef %35, i64 noundef 0, i64 noundef 1, i64 noundef 1, ptr noundef %4) #19
  %37 = icmp eq ptr %36, null
  br i1 %37, label %53, label %38

38:                                               ; preds = %32
  %39 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %1) #17
  %40 = load i64, ptr %34, align 8
  store i64 %40, ptr %36, align 2
  %41 = load i32, ptr %31, align 4, !tbaa !40
  %42 = icmp eq i32 %41, 12
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct._ColorPacket, ptr %34, i64 0, i32 1
  %45 = load i16, ptr %44, align 8, !tbaa !43
  store i16 %45, ptr %39, align 2, !tbaa !42
  br label %46

46:                                               ; preds = %43, %38
  %47 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %1, ptr noundef %4) #19
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %46
  %50 = load i64, ptr %30, align 8, !tbaa !89
  %51 = add nsw i64 %50, 1
  store i64 %51, ptr %30, align 8, !tbaa !89
  %52 = getelementptr inbounds %struct._ColorPacket, ptr %34, i64 1
  br label %53

53:                                               ; preds = %32, %49
  %54 = phi ptr [ %34, %32 ], [ %52, %49 ]
  %55 = add nuw nsw i64 %33, 1
  %56 = load i64, ptr %24, align 8, !tbaa !33
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %32, label %58, !llvm.loop !90

58:                                               ; preds = %53, %46, %23
  %59 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %60 = load ptr, ptr %59, align 8, !tbaa !78
  %61 = icmp eq ptr %60, null
  br i1 %61, label %68, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 2
  %64 = load i64, ptr %63, align 8, !tbaa !91
  %65 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 3
  %66 = load i64, ptr %65, align 8, !tbaa !9
  %67 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.13, i64 noundef %64, i64 noundef %66) #15
  br label %68

68:                                               ; preds = %62, %58
  %69 = getelementptr inbounds %struct._CubeInfo, ptr %2, i64 0, i32 2
  %70 = load i64, ptr %69, align 8, !tbaa !91
  %71 = add nsw i64 %70, 1
  store i64 %71, ptr %69, align 8, !tbaa !91
  br label %72

72:                                               ; preds = %68, %19
  ret void
}

; Function Attrs: optsize
declare ptr @AcquireQuantizeInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @QuantizeImage(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @DestroyQuantizeInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @DestroyColorCube(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 8, !tbaa !48
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i64 8, i64 16
  br label %7

7:                                                ; preds = %2, %13
  %8 = phi i64 [ 0, %2 ], [ %14, %13 ]
  %9 = getelementptr inbounds [16 x ptr], ptr %1, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !13
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  tail call fastcc void @DestroyColorCube(ptr noundef %0, ptr noundef nonnull %10) #15
  br label %13

13:                                               ; preds = %7, %12
  %14 = add nuw nsw i64 %8, 1
  %15 = icmp eq i64 %14, %6
  br i1 %15, label %16, label %7, !llvm.loop !92

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct._NodeInfo, ptr %1, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !37
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %18) #17
  store ptr %21, ptr %17, align 8, !tbaa !37
  br label %22

22:                                               ; preds = %20, %16
  ret void
}

; Function Attrs: optsize
declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %0) unnamed_addr #13 {
  %2 = zext i16 %0 to i64
  %3 = add nuw nsw i64 %2, 128
  %4 = lshr i64 %3, 8
  %5 = sub nsw i64 %3, %4
  %6 = lshr i64 %5, 8
  %7 = trunc i64 %6 to i8
  ret i8 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ClampToQuantum(float noundef %0) unnamed_addr #13 {
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

; Function Attrs: optsize
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: hot optsize
declare ptr @QueueCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: hot optsize
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #14

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { optsize allocsize(1,2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { optsize }
attributes #16 = { nounwind optsize allocsize(0,1) }
attributes #17 = { nounwind optsize }
attributes #18 = { nounwind }
attributes #19 = { hot nounwind optsize }
attributes #20 = { nounwind optsize allocsize(0) }
attributes #21 = { nounwind optsize allocsize(1,2) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 24}
!10 = !{!"_CubeInfo", !11, i64 0, !6, i64 8, !12, i64 16, !6, i64 24, !6, i64 32, !11, i64 40, !11, i64 48}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"long long", !7, i64 0}
!13 = !{!11, !11, i64 0}
!14 = !{!10, !11, i64 0}
!15 = !{!16, !17, i64 12976}
!16 = !{!"_Image", !17, i64 0, !17, i64 4, !17, i64 8, !6, i64 16, !17, i64 24, !17, i64 28, !17, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !11, i64 72, !18, i64 80, !18, i64 88, !18, i64 96, !20, i64 104, !21, i64 112, !17, i64 208, !11, i64 216, !17, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !6, i64 256, !20, i64 264, !20, i64 272, !23, i64 280, !23, i64 312, !23, i64 344, !20, i64 376, !20, i64 384, !20, i64 392, !17, i64 400, !17, i64 404, !17, i64 408, !17, i64 412, !17, i64 416, !17, i64 420, !11, i64 424, !6, i64 432, !6, i64 440, !6, i64 448, !6, i64 456, !6, i64 464, !6, i64 472, !24, i64 480, !25, i64 504, !11, i64 568, !11, i64 576, !11, i64 584, !11, i64 592, !11, i64 600, !11, i64 608, !7, i64 616, !7, i64 4712, !7, i64 8808, !6, i64 12904, !6, i64 12912, !27, i64 12920, !17, i64 12976, !6, i64 12984, !11, i64 12992, !28, i64 13000, !28, i64 13032, !11, i64 13064, !6, i64 13072, !6, i64 13080, !11, i64 13088, !11, i64 13096, !11, i64 13104, !17, i64 13112, !17, i64 13116, !18, i64 13120, !11, i64 13128, !23, i64 13136, !11, i64 13168, !11, i64 13176, !17, i64 13184, !17, i64 13188, !12, i64 13192, !17, i64 13200, !6, i64 13208, !6, i64 13216, !17, i64 13224, !6, i64 13232}
!17 = !{!"int", !7, i64 0}
!18 = !{!"_PixelPacket", !19, i64 0, !19, i64 2, !19, i64 4, !19, i64 6}
!19 = !{!"short", !7, i64 0}
!20 = !{!"double", !7, i64 0}
!21 = !{!"_ChromaticityInfo", !22, i64 0, !22, i64 24, !22, i64 48, !22, i64 72}
!22 = !{!"_PrimaryInfo", !20, i64 0, !20, i64 8, !20, i64 16}
!23 = !{!"_RectangleInfo", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!24 = !{!"_ErrorInfo", !20, i64 0, !20, i64 8, !20, i64 16}
!25 = !{!"_TimerInfo", !26, i64 0, !26, i64 24, !17, i64 48, !6, i64 56}
!26 = !{!"_Timer", !20, i64 0, !20, i64 8, !20, i64 16}
!27 = !{!"_ExceptionInfo", !17, i64 0, !17, i64 4, !11, i64 8, !11, i64 16, !11, i64 24, !17, i64 32, !11, i64 40, !6, i64 48}
!28 = !{!"_ProfileInfo", !11, i64 0, !6, i64 8, !11, i64 16, !6, i64 24}
!29 = !{!16, !6, i64 48}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!16, !6, i64 40}
!33 = !{!34, !12, i64 136}
!34 = !{!"_NodeInfo", !7, i64 0, !11, i64 128, !12, i64 136, !6, i64 144}
!35 = !{i64 0, i64 16}
!36 = distinct !{!36, !31}
!37 = !{!34, !11, i64 128}
!38 = !{i32 0, i32 2}
!39 = distinct !{!39, !31}
!40 = !{!16, !17, i64 4}
!41 = !{!16, !17, i64 0}
!42 = !{!19, !19, i64 0}
!43 = !{!44, !19, i64 8}
!44 = !{!"_ColorPacket", !18, i64 0, !19, i64 8, !12, i64 16}
!45 = !{!44, !12, i64 16}
!46 = !{!7, !7, i64 0}
!47 = distinct !{!47, !31}
!48 = !{!16, !17, i64 32}
!49 = distinct !{!49, !31}
!50 = !{!34, !6, i64 144}
!51 = distinct !{!51, !31}
!52 = !{!10, !11, i64 48}
!53 = !{!54, !11, i64 233472}
!54 = !{!"_Nodes", !7, i64 0, !11, i64 233472}
!55 = distinct !{!55, !31}
!56 = !{!16, !6, i64 64}
!57 = distinct !{!57, !31}
!58 = distinct !{!58, !31}
!59 = distinct !{!59, !31}
!60 = distinct !{!60, !31}
!61 = !{!62, !62, i64 0}
!62 = !{!"float", !7, i64 0}
!63 = !{!64, !62, i64 48}
!64 = !{!"_MagickPixelPacket", !17, i64 0, !17, i64 4, !17, i64 8, !20, i64 16, !6, i64 24, !62, i64 32, !62, i64 36, !62, i64 40, !62, i64 44, !62, i64 48}
!65 = !{!64, !62, i64 32}
!66 = !{!64, !62, i64 36}
!67 = !{!64, !62, i64 40}
!68 = !{!64, !62, i64 44}
!69 = !{!10, !6, i64 32}
!70 = !{!10, !11, i64 40}
!71 = !{!64, !17, i64 8}
!72 = !{!64, !17, i64 4}
!73 = distinct !{!73, !31}
!74 = distinct !{!74, !31}
!75 = distinct !{!75, !31}
!76 = distinct !{!76, !31}
!77 = !{!20, !20, i64 0}
!78 = !{!16, !11, i64 568}
!79 = distinct !{!79, !31}
!80 = !{!44, !19, i64 4}
!81 = !{!44, !19, i64 2}
!82 = !{!44, !19, i64 0}
!83 = !{!16, !11, i64 576}
!84 = !{!85, !6, i64 0}
!85 = !{!"_QuantizeInfo", !6, i64 0, !6, i64 8, !17, i64 16, !17, i64 20, !17, i64 24, !6, i64 32, !17, i64 40}
!86 = !{!85, !17, i64 16}
!87 = !{!85, !6, i64 8}
!88 = distinct !{!88, !31}
!89 = !{!10, !6, i64 8}
!90 = distinct !{!90, !31}
!91 = !{!10, !12, i64 16}
!92 = distinct !{!92, !31}
