; ModuleID = 'magick/layer.c'
source_filename = "magick/layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._RectangleInfo = type { i64, i64, i64, i64 }
%struct._Image = type { i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, ptr, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, double, %struct._ChromaticityInfo, i32, ptr, i32, ptr, ptr, ptr, i64, double, double, %struct._RectangleInfo, %struct._RectangleInfo, %struct._RectangleInfo, double, double, double, i32, i32, i32, i32, i32, i32, ptr, i64, i64, i64, i64, i64, i64, %struct._ErrorInfo, %struct._TimerInfo, ptr, ptr, ptr, ptr, ptr, ptr, [4096 x i8], [4096 x i8], [4096 x i8], i64, i64, %struct._ExceptionInfo, i32, i64, ptr, %struct._ProfileInfo, %struct._ProfileInfo, ptr, i64, i64, ptr, ptr, ptr, i32, i32, %struct._PixelPacket, ptr, %struct._RectangleInfo, ptr, ptr, i32, i32, i64, i32, i64, i64, i32, i64 }
%struct._ChromaticityInfo = type { %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo }
%struct._PrimaryInfo = type { double, double, double }
%struct._ErrorInfo = type { double, double, double }
%struct._TimerInfo = type { %struct._Timer, %struct._Timer, i32, i64 }
%struct._Timer = type { double, double, double }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._ProfileInfo = type { ptr, i64, ptr, i64 }
%struct._PixelPacket = type { i16, i16, i16, i16 }
%struct._MagickPixelPacket = type { i32, i32, i32, double, i64, float, float, float, float, float }

@.str = private unnamed_addr constant [15 x i8] c"magick/layer.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"ZeroTimeAnimation\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"%s - %s\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Merge/Layers\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"ImagesAreNotTheSameSize\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CoalesceImages(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._RectangleInfo, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #8
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 250, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #9
  br label %10

10:                                               ; preds = %7, %2
  %11 = tail call ptr @GetFirstImageInList(ptr noundef nonnull %0) #9
  %12 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %12, i64 32, i1 false), !tbaa.struct !24
  %13 = load i64, ptr %3, align 8, !tbaa !26
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 7
  %17 = load i64, ptr %16, align 8, !tbaa !27
  store i64 %17, ptr %3, align 8, !tbaa !26
  %18 = getelementptr inbounds %struct._RectangleInfo, ptr %3, i64 0, i32 2
  %19 = load i64, ptr %18, align 8, !tbaa !28
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = add i64 %19, %17
  store i64 %22, ptr %3, align 8, !tbaa !26
  br label %23

23:                                               ; preds = %15, %21, %10
  %24 = phi i64 [ %17, %15 ], [ %22, %21 ], [ %13, %10 ]
  %25 = getelementptr inbounds %struct._RectangleInfo, ptr %3, i64 0, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !29
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 8
  %30 = load i64, ptr %29, align 8, !tbaa !30
  store i64 %30, ptr %25, align 8, !tbaa !29
  %31 = getelementptr inbounds %struct._RectangleInfo, ptr %3, i64 0, i32 3
  %32 = load i64, ptr %31, align 8, !tbaa !31
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = add i64 %32, %30
  store i64 %35, ptr %25, align 8, !tbaa !29
  br label %36

36:                                               ; preds = %28, %34, %23
  %37 = phi i64 [ %30, %28 ], [ %35, %34 ], [ %26, %23 ]
  %38 = getelementptr inbounds %struct._RectangleInfo, ptr %3, i64 0, i32 2
  %39 = getelementptr inbounds %struct._RectangleInfo, ptr %3, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, i8 0, i64 16, i1 false)
  %40 = tail call ptr @CloneImage(ptr noundef nonnull %11, i64 noundef %24, i64 noundef %37, i32 noundef 1, ptr noundef %1) #9
  %41 = icmp eq ptr %40, null
  br i1 %41, label %144, label %42

42:                                               ; preds = %36
  %43 = tail call i32 @SetImageBackgroundColor(ptr noundef nonnull %40) #9
  %44 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 6
  %45 = load i32, ptr %44, align 8, !tbaa !32
  %46 = getelementptr inbounds %struct._Image, ptr %40, i64 0, i32 6
  store i32 %45, ptr %46, align 8, !tbaa !32
  %47 = getelementptr inbounds %struct._Image, ptr %40, i64 0, i32 26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %47, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !24
  %48 = getelementptr inbounds %struct._Image, ptr %40, i64 0, i32 37
  store i32 1, ptr %48, align 4, !tbaa !33
  %49 = tail call ptr @CloneImage(ptr noundef nonnull %40, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %1) #9
  %50 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 26, i32 2
  %51 = load i64, ptr %50, align 8, !tbaa !34
  %52 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 26, i32 3
  %53 = load i64, ptr %52, align 8, !tbaa !35
  %54 = tail call i32 @CompositeImage(ptr noundef nonnull %40, i32 noundef 13, ptr noundef nonnull %11, i64 noundef %51, i64 noundef %53) #9
  %55 = tail call ptr @GetNextImageInList(ptr noundef nonnull %11) #9
  %56 = icmp eq ptr %55, null
  br i1 %56, label %139, label %57

57:                                               ; preds = %42, %113
  %58 = phi ptr [ %137, %113 ], [ %55, %42 ]
  %59 = phi ptr [ %106, %113 ], [ %49, %42 ]
  %60 = phi ptr [ %117, %113 ], [ %40, %42 ]
  %61 = tail call ptr @GetPreviousImageInList(ptr noundef nonnull %58) #9
  %62 = getelementptr inbounds %struct._Image, ptr %61, i64 0, i32 26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %62, i64 32, i1 false), !tbaa.struct !24
  %63 = getelementptr inbounds %struct._Image, ptr %61, i64 0, i32 7
  %64 = load i64, ptr %63, align 8, !tbaa !27
  store i64 %64, ptr %3, align 8, !tbaa !26
  %65 = getelementptr inbounds %struct._Image, ptr %61, i64 0, i32 8
  %66 = load i64, ptr %65, align 8, !tbaa !30
  store i64 %66, ptr %25, align 8, !tbaa !29
  %67 = load i64, ptr %38, align 8, !tbaa !28
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %57
  %70 = add i64 %67, %64
  store i64 %70, ptr %3, align 8, !tbaa !26
  store i64 0, ptr %38, align 8, !tbaa !28
  br label %71

71:                                               ; preds = %69, %57
  %72 = phi i64 [ %70, %69 ], [ %64, %57 ]
  %73 = phi i64 [ 0, %69 ], [ %67, %57 ]
  %74 = add i64 %72, %73
  %75 = getelementptr inbounds %struct._Image, ptr %60, i64 0, i32 7
  %76 = load i64, ptr %75, align 8, !tbaa !27
  %77 = icmp sgt i64 %74, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = sub i64 %76, %73
  store i64 %79, ptr %3, align 8, !tbaa !26
  br label %80

80:                                               ; preds = %78, %71
  %81 = load i64, ptr %39, align 8, !tbaa !31
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = add i64 %81, %66
  store i64 %84, ptr %25, align 8, !tbaa !29
  store i64 0, ptr %39, align 8, !tbaa !31
  br label %85

85:                                               ; preds = %83, %80
  %86 = phi i64 [ %84, %83 ], [ %66, %80 ]
  %87 = phi i64 [ 0, %83 ], [ %81, %80 ]
  %88 = add i64 %86, %87
  %89 = getelementptr inbounds %struct._Image, ptr %60, i64 0, i32 8
  %90 = load i64, ptr %89, align 8, !tbaa !30
  %91 = icmp sgt i64 %88, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = sub i64 %90, %87
  store i64 %93, ptr %25, align 8, !tbaa !29
  br label %94

94:                                               ; preds = %92, %85
  %95 = tail call ptr @GetPreviousImageInList(ptr noundef nonnull %58) #9
  %96 = getelementptr inbounds %struct._Image, ptr %95, i64 0, i32 37
  %97 = load i32, ptr %96, align 4, !tbaa !33
  %98 = icmp eq i32 %97, 3
  br i1 %98, label %105, label %99

99:                                               ; preds = %94
  %100 = tail call ptr @DestroyImage(ptr noundef %59) #9
  %101 = tail call ptr @CloneImage(ptr noundef nonnull %60, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %1) #9
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = tail call ptr @DestroyImageList(ptr noundef nonnull %60) #9
  br label %144

105:                                              ; preds = %99, %94
  %106 = phi ptr [ %101, %99 ], [ %59, %94 ]
  %107 = getelementptr inbounds %struct._Image, ptr %58, i64 0, i32 67
  %108 = load ptr, ptr %107, align 8, !tbaa !36
  %109 = getelementptr inbounds %struct._Image, ptr %108, i64 0, i32 37
  %110 = load i32, ptr %109, align 4, !tbaa !33
  %111 = icmp eq i32 %110, 2
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  call fastcc void @ClearBounds(ptr noundef %106, ptr noundef nonnull %3) #10
  br label %113

113:                                              ; preds = %112, %105
  %114 = tail call ptr @CloneImage(ptr noundef %106, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %1) #9
  %115 = getelementptr inbounds %struct._Image, ptr %60, i64 0, i32 69
  store ptr %114, ptr %115, align 8, !tbaa !37
  %116 = getelementptr inbounds %struct._Image, ptr %114, i64 0, i32 67
  store ptr %60, ptr %116, align 8, !tbaa !36
  %117 = tail call ptr @GetNextImageInList(ptr noundef nonnull %60) #9
  %118 = getelementptr inbounds %struct._Image, ptr %58, i64 0, i32 6
  %119 = load i32, ptr %118, align 8, !tbaa !32
  %120 = icmp eq i32 %119, 0
  %121 = select i1 %120, i32 13, i32 40
  %122 = getelementptr inbounds %struct._Image, ptr %58, i64 0, i32 26, i32 2
  %123 = load i64, ptr %122, align 8, !tbaa !34
  %124 = getelementptr inbounds %struct._Image, ptr %58, i64 0, i32 26, i32 3
  %125 = load i64, ptr %124, align 8, !tbaa !35
  %126 = tail call i32 @CompositeImage(ptr noundef %117, i32 noundef %121, ptr noundef nonnull %58, i64 noundef %123, i64 noundef %125) #9
  %127 = tail call i32 @CloneImageProfiles(ptr noundef %117, ptr noundef nonnull %58) #9
  %128 = tail call i32 @CloneImageProperties(ptr noundef %117, ptr noundef nonnull %58) #9
  %129 = tail call i32 @CloneImageArtifacts(ptr noundef %117, ptr noundef nonnull %58) #9
  %130 = getelementptr inbounds %struct._Image, ptr %117, i64 0, i32 26
  %131 = getelementptr inbounds %struct._Image, ptr %60, i64 0, i32 26
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %130, ptr noundef nonnull align 8 dereferenceable(32) %131, i64 32, i1 false), !tbaa.struct !24
  %132 = call fastcc i32 @IsBoundsCleared(ptr noundef nonnull %60, ptr noundef %117, ptr noundef nonnull %3, ptr noundef %1) #10, !range !38
  %133 = icmp eq i32 %132, 0
  %134 = select i1 %133, i32 1, i32 2
  %135 = getelementptr inbounds %struct._Image, ptr %117, i64 0, i32 37
  store i32 %134, ptr %135, align 4
  %136 = getelementptr inbounds %struct._Image, ptr %60, i64 0, i32 37
  store i32 %134, ptr %136, align 4, !tbaa !33
  %137 = tail call ptr @GetNextImageInList(ptr noundef nonnull %58) #9
  %138 = icmp eq ptr %137, null
  br i1 %138, label %139, label %57, !llvm.loop !39

139:                                              ; preds = %113, %42
  %140 = phi ptr [ %40, %42 ], [ %117, %113 ]
  %141 = phi ptr [ %49, %42 ], [ %106, %113 ]
  %142 = tail call ptr @DestroyImage(ptr noundef %141) #9
  %143 = tail call ptr @GetFirstImageInList(ptr noundef nonnull %140) #9
  br label %144

144:                                              ; preds = %36, %139, %103
  %145 = phi ptr [ null, %103 ], [ %143, %139 ], [ null, %36 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #8
  ret ptr %145
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetFirstImageInList(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: optsize
declare ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @SetImageBackgroundColor(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CompositeImage(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetNextImageInList(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetPreviousImageInList(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyImageList(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ClearBounds(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !28
  %5 = icmp slt i64 %4, 0
  br i1 %5, label %44, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 8, !tbaa !32
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %0, i32 noundef 6) #9
  br label %12

12:                                               ; preds = %10, %6
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %14 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !29
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %44

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  br label %23

19:                                               ; preds = %41
  %20 = add nuw nsw i64 %24, 1
  %21 = load i64, ptr %14, align 8, !tbaa !29
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %44, !llvm.loop !41

23:                                               ; preds = %17, %19
  %24 = phi i64 [ 0, %17 ], [ %20, %19 ]
  %25 = load i64, ptr %3, align 8, !tbaa !28
  %26 = load i64, ptr %18, align 8, !tbaa !31
  %27 = add nsw i64 %26, %24
  %28 = load i64, ptr %1, align 8, !tbaa !26
  %29 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %25, i64 noundef %27, i64 noundef %28, i64 noundef 1, ptr noundef nonnull %13) #9
  %30 = icmp eq ptr %29, null
  br i1 %30, label %44, label %31

31:                                               ; preds = %23
  %32 = load i64, ptr %1, align 8, !tbaa !26
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %38, %34 ], [ %29, %31 ]
  %36 = phi i64 [ %39, %34 ], [ 0, %31 ]
  %37 = getelementptr inbounds %struct._PixelPacket, ptr %35, i64 0, i32 3
  store i16 -1, ptr %37, align 2, !tbaa !42
  %38 = getelementptr inbounds %struct._PixelPacket, ptr %35, i64 1
  %39 = add nuw nsw i64 %36, 1
  %40 = icmp eq i64 %39, %32
  br i1 %40, label %41, label %34, !llvm.loop !43

41:                                               ; preds = %34, %31
  %42 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %13) #9
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %19

44:                                               ; preds = %19, %23, %41, %12, %2
  ret void
}

; Function Attrs: optsize
declare i32 @CloneImageProfiles(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CloneImageProperties(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CloneImageArtifacts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @IsBoundsCleared(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._RectangleInfo, ptr %2, i64 0, i32 2
  %6 = load i64, ptr %5, align 8, !tbaa !28
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %58, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._RectangleInfo, ptr %2, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !29
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %53

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._RectangleInfo, ptr %2, i64 0, i32 3
  %14 = load i64, ptr %2, align 8, !tbaa !26
  br label %15

15:                                               ; preds = %12, %49
  %16 = phi i64 [ %14, %12 ], [ %31, %49 ]
  %17 = phi i64 [ 0, %12 ], [ %50, %49 ]
  %18 = load i64, ptr %5, align 8, !tbaa !28
  %19 = load i64, ptr %13, align 8, !tbaa !31
  %20 = add nsw i64 %19, %17
  %21 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %18, i64 noundef %20, i64 noundef %16, i64 noundef 1, ptr noundef %3) #9
  %22 = load i64, ptr %5, align 8, !tbaa !28
  %23 = load i64, ptr %13, align 8, !tbaa !31
  %24 = add nsw i64 %23, %17
  %25 = load i64, ptr %2, align 8, !tbaa !26
  %26 = tail call ptr @GetVirtualPixels(ptr noundef %1, i64 noundef %22, i64 noundef %24, i64 noundef %25, i64 noundef 1, ptr noundef %3) #9
  %27 = icmp eq ptr %21, null
  %28 = icmp eq ptr %26, null
  %29 = select i1 %27, i1 true, i1 %28
  br i1 %29, label %53, label %30

30:                                               ; preds = %15
  %31 = load i64, ptr %2, align 8, !tbaa !26
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %30, %44
  %34 = phi i64 [ %47, %44 ], [ 0, %30 ]
  %35 = phi ptr [ %46, %44 ], [ %26, %30 ]
  %36 = phi ptr [ %45, %44 ], [ %21, %30 ]
  %37 = getelementptr inbounds %struct._PixelPacket, ptr %36, i64 0, i32 3
  %38 = load i16, ptr %37, align 2, !tbaa !42
  %39 = icmp sgt i16 %38, -1
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct._PixelPacket, ptr %35, i64 0, i32 3
  %42 = load i16, ptr %41, align 2, !tbaa !42
  %43 = icmp slt i16 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %40, %33
  %45 = getelementptr inbounds %struct._PixelPacket, ptr %36, i64 1
  %46 = getelementptr inbounds %struct._PixelPacket, ptr %35, i64 1
  %47 = add nuw nsw i64 %34, 1
  %48 = icmp eq i64 %47, %31
  br i1 %48, label %49, label %33, !llvm.loop !44

49:                                               ; preds = %44, %30
  %50 = add nuw nsw i64 %17, 1
  %51 = load i64, ptr %9, align 8, !tbaa !29
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %15, label %53, !llvm.loop !45

53:                                               ; preds = %49, %15, %40, %8
  %54 = phi i64 [ 0, %8 ], [ %17, %40 ], [ %50, %49 ], [ %17, %15 ]
  %55 = load i64, ptr %9, align 8, !tbaa !29
  %56 = icmp slt i64 %54, %55
  %57 = zext i1 %56 to i32
  br label %58

58:                                               ; preds = %4, %53
  %59 = phi i32 [ %57, %53 ], [ 0, %4 ]
  ret i32 %59
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DisposeImages(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct._RectangleInfo, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #8
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 398, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #9
  br label %11

11:                                               ; preds = %8, %2
  %12 = tail call ptr @GetFirstImageInList(ptr noundef nonnull %0) #9
  %13 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 26
  %14 = load i64, ptr %13, align 8, !tbaa !46
  %15 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 26, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !47
  %17 = tail call ptr @CloneImage(ptr noundef %12, i64 noundef %14, i64 noundef %16, i32 noundef 1, ptr noundef %1) #9
  %18 = icmp eq ptr %17, null
  br i1 %18, label %114, label %19

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct._Image, ptr %17, i64 0, i32 26
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %13, i64 16, i1 false), !tbaa.struct !24
  %21 = getelementptr inbounds %struct._Image, ptr %17, i64 0, i32 26, i32 2
  %22 = getelementptr inbounds %struct._Image, ptr %17, i64 0, i32 37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  store i32 1, ptr %22, align 4, !tbaa !33
  %23 = getelementptr inbounds %struct._Image, ptr %17, i64 0, i32 12, i32 3
  store i16 -1, ptr %23, align 2, !tbaa !48
  %24 = tail call i32 @SetImageBackgroundColor(ptr noundef nonnull %17) #9
  %25 = tail call ptr @NewImageList() #9
  store ptr %25, ptr %3, align 8, !tbaa !49
  %26 = getelementptr inbounds %struct._RectangleInfo, ptr %4, i64 0, i32 1
  %27 = getelementptr inbounds %struct._RectangleInfo, ptr %4, i64 0, i32 2
  %28 = getelementptr inbounds %struct._RectangleInfo, ptr %4, i64 0, i32 3
  br label %29

29:                                               ; preds = %19, %101
  %30 = phi ptr [ %12, %19 ], [ %108, %101 ]
  %31 = phi ptr [ %17, %19 ], [ %94, %101 ]
  %32 = call ptr @CloneImage(ptr noundef %31, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %1) #9
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load ptr, ptr %3, align 8, !tbaa !49
  %36 = call ptr @DestroyImageList(ptr noundef %35) #9
  store ptr %36, ptr %3, align 8, !tbaa !49
  %37 = call ptr @DestroyImage(ptr noundef %31) #9
  br label %114

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 6
  %40 = load i32, ptr %39, align 8, !tbaa !32
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, i32 13, i32 40
  %43 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 26, i32 2
  %44 = load i64, ptr %43, align 8, !tbaa !34
  %45 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 26, i32 3
  %46 = load i64, ptr %45, align 8, !tbaa !35
  %47 = call i32 @CompositeImage(ptr noundef nonnull %32, i32 noundef %42, ptr noundef nonnull %30, i64 noundef %44, i64 noundef %46) #9
  %48 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 37
  %49 = load i32, ptr %48, align 4, !tbaa !33
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %51, label %86

51:                                               ; preds = %38
  %52 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %52, i64 32, i1 false), !tbaa.struct !24
  %53 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 7
  %54 = load i64, ptr %53, align 8, !tbaa !27
  store i64 %54, ptr %4, align 8, !tbaa !26
  %55 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 8
  %56 = load i64, ptr %55, align 8, !tbaa !30
  store i64 %56, ptr %26, align 8, !tbaa !29
  %57 = load i64, ptr %27, align 8, !tbaa !28
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = add i64 %57, %54
  store i64 %60, ptr %4, align 8, !tbaa !26
  store i64 0, ptr %27, align 8, !tbaa !28
  br label %61

61:                                               ; preds = %59, %51
  %62 = phi i64 [ %60, %59 ], [ %54, %51 ]
  %63 = phi i64 [ 0, %59 ], [ %57, %51 ]
  %64 = add i64 %62, %63
  %65 = getelementptr inbounds %struct._Image, ptr %32, i64 0, i32 7
  %66 = load i64, ptr %65, align 8, !tbaa !27
  %67 = icmp sgt i64 %64, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = sub i64 %66, %63
  store i64 %69, ptr %4, align 8, !tbaa !26
  br label %70

70:                                               ; preds = %68, %61
  %71 = load i64, ptr %28, align 8, !tbaa !31
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = add i64 %71, %56
  store i64 %74, ptr %26, align 8, !tbaa !29
  store i64 0, ptr %28, align 8, !tbaa !31
  br label %75

75:                                               ; preds = %73, %70
  %76 = phi i64 [ %74, %73 ], [ %56, %70 ]
  %77 = phi i64 [ 0, %73 ], [ %71, %70 ]
  %78 = add i64 %76, %77
  %79 = getelementptr inbounds %struct._Image, ptr %32, i64 0, i32 8
  %80 = load i64, ptr %79, align 8, !tbaa !30
  %81 = icmp sgt i64 %78, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = sub i64 %80, %77
  store i64 %83, ptr %26, align 8, !tbaa !29
  br label %84

84:                                               ; preds = %82, %75
  call fastcc void @ClearBounds(ptr noundef nonnull %32, ptr noundef nonnull %4) #10
  %85 = load i32, ptr %48, align 4, !tbaa !33
  br label %86

86:                                               ; preds = %84, %38
  %87 = phi i32 [ %85, %84 ], [ %49, %38 ]
  %88 = icmp eq i32 %87, 3
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = call ptr @DestroyImage(ptr noundef nonnull %32) #9
  br label %93

91:                                               ; preds = %86
  %92 = call ptr @DestroyImage(ptr noundef %31) #9
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi ptr [ %31, %89 ], [ %32, %91 ]
  %95 = call ptr @CloneImage(ptr noundef %94, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %1) #9
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = load ptr, ptr %3, align 8, !tbaa !49
  %99 = call ptr @DestroyImageList(ptr noundef %98) #9
  store ptr %99, ptr %3, align 8, !tbaa !49
  %100 = call ptr @DestroyImage(ptr noundef %94) #9
  br label %114

101:                                              ; preds = %93
  %102 = call i32 @CloneImageProfiles(ptr noundef nonnull %95, ptr noundef nonnull %30) #9
  %103 = call i32 @CloneImageProperties(ptr noundef nonnull %95, ptr noundef nonnull %30) #9
  %104 = call i32 @CloneImageArtifacts(ptr noundef nonnull %95, ptr noundef nonnull %30) #9
  %105 = getelementptr inbounds %struct._Image, ptr %95, i64 0, i32 26, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %105, i8 0, i64 16, i1 false)
  %106 = load i32, ptr %48, align 4, !tbaa !33
  %107 = getelementptr inbounds %struct._Image, ptr %95, i64 0, i32 37
  store i32 %106, ptr %107, align 4, !tbaa !33
  call void @AppendImageToList(ptr noundef nonnull %3, ptr noundef nonnull %95) #9
  %108 = call ptr @GetNextImageInList(ptr noundef nonnull %30) #9
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %29, !llvm.loop !50

110:                                              ; preds = %101
  %111 = call ptr @DestroyImage(ptr noundef %94) #9
  %112 = load ptr, ptr %3, align 8, !tbaa !49
  %113 = call ptr @GetFirstImageInList(ptr noundef %112) #9
  br label %114

114:                                              ; preds = %97, %34, %11, %110
  %115 = phi ptr [ %113, %110 ], [ null, %11 ], [ null, %34 ], [ null, %97 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  ret ptr %115
}

; Function Attrs: optsize
declare ptr @NewImageList() local_unnamed_addr #2

; Function Attrs: optsize
declare void @AppendImageToList(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CompareImageLayers(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct._RectangleInfo, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 788, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #9
  br label %12

12:                                               ; preds = %9, %3
  %13 = tail call ptr @GetFirstImageInList(ptr noundef nonnull %0) #9
  %14 = tail call i64 @GetImageListLength(ptr noundef %13) #9
  %15 = tail call ptr @AcquireQuantumMemory(i64 noundef %14, i64 noundef 32) #11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %19 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 801, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %18) #9
  br label %92

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 26
  %22 = load i64, ptr %21, align 8, !tbaa !46
  %23 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 26, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !47
  %25 = tail call ptr @CloneImage(ptr noundef %13, i64 noundef %22, i64 noundef %24, i32 noundef 1, ptr noundef %2) #9
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %15) #9
  br label %92

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct._Image, ptr %25, i64 0, i32 12, i32 3
  store i16 -1, ptr %30, align 2, !tbaa !48
  %31 = tail call i32 @SetImageBackgroundColor(ptr noundef nonnull %25) #9
  %32 = getelementptr inbounds %struct._Image, ptr %25, i64 0, i32 26
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(32) %21, i64 16, i1 false), !tbaa.struct !24
  %33 = getelementptr inbounds %struct._Image, ptr %25, i64 0, i32 26, i32 2
  %34 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 26, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %33, i8 0, i64 16, i1 false)
  %35 = load i64, ptr %34, align 8, !tbaa !34
  %36 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 26, i32 3
  %37 = load i64, ptr %36, align 8, !tbaa !35
  %38 = tail call i32 @CompositeImage(ptr noundef nonnull %25, i32 noundef 13, ptr noundef nonnull %13, i64 noundef %35, i64 noundef %37) #9
  %39 = tail call ptr @GetNextImageInList(ptr noundef nonnull %13) #9
  %40 = icmp eq ptr %39, null
  br i1 %40, label %60, label %41

41:                                               ; preds = %29, %49
  %42 = phi i64 [ %57, %49 ], [ 0, %29 ]
  %43 = phi ptr [ %58, %49 ], [ %39, %29 ]
  %44 = tail call ptr @CloneImage(ptr noundef nonnull %25, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #9
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = tail call ptr @DestroyImage(ptr noundef nonnull %25) #9
  %48 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %15) #9
  br label %92

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct._Image, ptr %43, i64 0, i32 26, i32 2
  %51 = load i64, ptr %50, align 8, !tbaa !34
  %52 = getelementptr inbounds %struct._Image, ptr %43, i64 0, i32 26, i32 3
  %53 = load i64, ptr %52, align 8, !tbaa !35
  %54 = tail call i32 @CompositeImage(ptr noundef nonnull %25, i32 noundef 13, ptr noundef nonnull %43, i64 noundef %51, i64 noundef %53) #9
  %55 = getelementptr inbounds %struct._RectangleInfo, ptr %15, i64 %42
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #8
  call fastcc void @CompareImageBounds(ptr dead_on_unwind nonnull writable sret(%struct._RectangleInfo) align 8 %5, ptr noundef nonnull %44, ptr noundef nonnull %25, i32 noundef %1, ptr noundef %2) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %55, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #8
  %56 = tail call ptr @DestroyImage(ptr noundef nonnull %44) #9
  %57 = add nuw nsw i64 %42, 1
  %58 = tail call ptr @GetNextImageInList(ptr noundef nonnull %43) #9
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %41, !llvm.loop !51

60:                                               ; preds = %49, %29
  %61 = tail call ptr @DestroyImage(ptr noundef nonnull %25) #9
  %62 = tail call ptr @GetFirstImageInList(ptr noundef %0) #9
  %63 = tail call ptr @CloneImage(ptr noundef %62, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #9
  store ptr %63, ptr %4, align 8, !tbaa !49
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %15) #9
  br label %92

67:                                               ; preds = %60
  %68 = tail call ptr @GetNextImageInList(ptr noundef %62) #9
  %69 = icmp eq ptr %68, null
  br i1 %69, label %88, label %70

70:                                               ; preds = %67, %80
  %71 = phi i64 [ %81, %80 ], [ 0, %67 ]
  %72 = phi ptr [ %82, %80 ], [ %68, %67 ]
  %73 = call ptr @CloneImage(ptr noundef nonnull %72, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #9
  %74 = icmp eq ptr %73, null
  br i1 %74, label %84, label %75

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct._RectangleInfo, ptr %15, i64 %71
  %77 = call ptr @CropImage(ptr noundef nonnull %73, ptr noundef nonnull %76, ptr noundef %2) #9
  %78 = call ptr @DestroyImage(ptr noundef nonnull %73) #9
  %79 = icmp eq ptr %77, null
  br i1 %79, label %84, label %80

80:                                               ; preds = %75
  call void @AppendImageToList(ptr noundef nonnull %4, ptr noundef nonnull %77) #9
  %81 = add nuw nsw i64 %71, 1
  %82 = call ptr @GetNextImageInList(ptr noundef nonnull %72) #9
  %83 = icmp eq ptr %82, null
  br i1 %83, label %88, label %70, !llvm.loop !52

84:                                               ; preds = %70, %75
  %85 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %15) #9
  %86 = load ptr, ptr %4, align 8, !tbaa !49
  %87 = call ptr @DestroyImageList(ptr noundef %86) #9
  br label %92

88:                                               ; preds = %80, %67
  %89 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %15) #9
  %90 = load ptr, ptr %4, align 8, !tbaa !49
  %91 = call ptr @GetFirstImageInList(ptr noundef %90) #9
  br label %92

92:                                               ; preds = %88, %84, %65, %46, %27, %17
  %93 = phi ptr [ null, %17 ], [ null, %27 ], [ null, %46 ], [ null, %65 ], [ null, %84 ], [ %91, %88 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  ret ptr %93
}

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i64 @GetImageListLength(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @CompareImageBounds(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct._RectangleInfo) align 8 %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca %struct._MagickPixelPacket, align 8
  %7 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #8
  call void @GetMagickPixelPacket(ptr noundef %1, ptr noundef nonnull %6) #9
  call void @GetMagickPixelPacket(ptr noundef %2, ptr noundef nonnull %7) #9
  %8 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %9 = load i64, ptr %8, align 8, !tbaa !27
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %54

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %13 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 8
  %14 = load i64, ptr %12, align 8, !tbaa !30
  br label %15

15:                                               ; preds = %11, %51
  %16 = phi i64 [ %14, %11 ], [ %47, %51 ]
  %17 = phi i64 [ 0, %11 ], [ %52, %51 ]
  %18 = call ptr @GetVirtualPixels(ptr noundef nonnull %1, i64 noundef %17, i64 noundef 0, i64 noundef 1, i64 noundef %16, ptr noundef %4) #9
  %19 = load i64, ptr %13, align 8, !tbaa !30
  %20 = call ptr @GetVirtualPixels(ptr noundef %2, i64 noundef %17, i64 noundef 0, i64 noundef 1, i64 noundef %19, ptr noundef %4) #9
  %21 = icmp eq ptr %18, null
  %22 = icmp eq ptr %20, null
  %23 = select i1 %21, i1 true, i1 %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = load i64, ptr %8, align 8, !tbaa !27
  br label %54

26:                                               ; preds = %15
  %27 = call ptr @GetVirtualIndexQueue(ptr noundef nonnull %1) #9
  %28 = call ptr @GetVirtualIndexQueue(ptr noundef nonnull %2) #9
  %29 = getelementptr inbounds i16, ptr %27, i64 %17
  %30 = load i64, ptr %12, align 8, !tbaa !30
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %26
  %33 = getelementptr inbounds i16, ptr %28, i64 %17
  br label %34

34:                                               ; preds = %32, %41
  %35 = phi i64 [ 0, %32 ], [ %44, %41 ]
  %36 = phi ptr [ %20, %32 ], [ %43, %41 ]
  %37 = phi ptr [ %18, %32 ], [ %42, %41 ]
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %1, ptr noundef nonnull %37, ptr noundef %29, ptr noundef nonnull %6) #10
  call fastcc void @SetMagickPixelPacket(ptr noundef %2, ptr noundef nonnull %36, ptr noundef %33, ptr noundef nonnull %7) #10
  %38 = call fastcc i32 @ComparePixels(i32 noundef %3, ptr noundef nonnull %6, ptr noundef nonnull %7) #10, !range !38
  %39 = icmp eq i32 %38, 0
  %40 = load i64, ptr %12, align 8, !tbaa !30
  br i1 %39, label %41, label %46

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct._PixelPacket, ptr %37, i64 1
  %43 = getelementptr inbounds %struct._PixelPacket, ptr %36, i64 1
  %44 = add nuw nsw i64 %35, 1
  %45 = icmp slt i64 %44, %40
  br i1 %45, label %34, label %46, !llvm.loop !53

46:                                               ; preds = %41, %34, %26
  %47 = phi i64 [ %30, %26 ], [ %40, %34 ], [ %40, %41 ]
  %48 = phi i64 [ 0, %26 ], [ %44, %41 ], [ %35, %34 ]
  %49 = icmp slt i64 %48, %47
  %50 = load i64, ptr %8, align 8, !tbaa !27
  br i1 %49, label %54, label %51

51:                                               ; preds = %46
  %52 = add nuw nsw i64 %17, 1
  %53 = icmp slt i64 %52, %50
  br i1 %53, label %15, label %54, !llvm.loop !54

54:                                               ; preds = %51, %46, %24, %5
  %55 = phi i64 [ %9, %5 ], [ %25, %24 ], [ %50, %46 ], [ %50, %51 ]
  %56 = phi i64 [ 0, %5 ], [ %17, %24 ], [ %52, %51 ], [ %17, %46 ]
  %57 = icmp slt i64 %56, %55
  %58 = getelementptr inbounds %struct._RectangleInfo, ptr %0, i64 0, i32 2
  br i1 %57, label %60, label %59

59:                                               ; preds = %54
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %58, i8 -1, i64 16, i1 false)
  store i64 1, ptr %0, align 8, !tbaa !26
  br label %190

60:                                               ; preds = %54
  store i64 %56, ptr %58, align 8, !tbaa !28
  %61 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %62 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 8
  %63 = load i64, ptr %61, align 8, !tbaa !30
  br label %64

64:                                               ; preds = %98, %60
  %65 = phi i64 [ %63, %60 ], [ %99, %98 ]
  %66 = phi i64 [ %55, %60 ], [ %67, %98 ]
  %67 = add nsw i64 %66, -1
  %68 = icmp sgt i64 %66, 0
  br i1 %68, label %69, label %102

69:                                               ; preds = %64
  %70 = call ptr @GetVirtualPixels(ptr noundef nonnull %1, i64 noundef %67, i64 noundef 0, i64 noundef 1, i64 noundef %65, ptr noundef %4) #9
  %71 = load i64, ptr %62, align 8, !tbaa !30
  %72 = call ptr @GetVirtualPixels(ptr noundef %2, i64 noundef %67, i64 noundef 0, i64 noundef 1, i64 noundef %71, ptr noundef %4) #9
  %73 = icmp eq ptr %70, null
  %74 = icmp eq ptr %72, null
  %75 = select i1 %73, i1 true, i1 %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i64, ptr %61, align 8, !tbaa !30
  br label %102

78:                                               ; preds = %69
  %79 = call ptr @GetVirtualIndexQueue(ptr noundef nonnull %1) #9
  %80 = call ptr @GetVirtualIndexQueue(ptr noundef nonnull %2) #9
  %81 = getelementptr inbounds i16, ptr %79, i64 %67
  %82 = load i64, ptr %61, align 8, !tbaa !30
  %83 = icmp sgt i64 %82, 0
  br i1 %83, label %84, label %98

84:                                               ; preds = %78
  %85 = getelementptr inbounds i16, ptr %80, i64 %67
  br label %86

86:                                               ; preds = %84, %93
  %87 = phi i64 [ 0, %84 ], [ %96, %93 ]
  %88 = phi ptr [ %72, %84 ], [ %95, %93 ]
  %89 = phi ptr [ %70, %84 ], [ %94, %93 ]
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %1, ptr noundef nonnull %89, ptr noundef %81, ptr noundef nonnull %6) #10
  call fastcc void @SetMagickPixelPacket(ptr noundef %2, ptr noundef nonnull %88, ptr noundef %85, ptr noundef nonnull %7) #10
  %90 = call fastcc i32 @ComparePixels(i32 noundef %3, ptr noundef nonnull %6, ptr noundef nonnull %7) #10, !range !38
  %91 = icmp eq i32 %90, 0
  %92 = load i64, ptr %61, align 8, !tbaa !30
  br i1 %91, label %93, label %98

93:                                               ; preds = %86
  %94 = getelementptr inbounds %struct._PixelPacket, ptr %89, i64 1
  %95 = getelementptr inbounds %struct._PixelPacket, ptr %88, i64 1
  %96 = add nuw nsw i64 %87, 1
  %97 = icmp slt i64 %96, %92
  br i1 %97, label %86, label %98, !llvm.loop !55

98:                                               ; preds = %93, %86, %78
  %99 = phi i64 [ %82, %78 ], [ %92, %86 ], [ %92, %93 ]
  %100 = phi i64 [ 0, %78 ], [ %96, %93 ], [ %87, %86 ]
  %101 = icmp slt i64 %100, %99
  br i1 %101, label %102, label %64, !llvm.loop !56

102:                                              ; preds = %98, %64, %76
  %103 = phi i64 [ %77, %76 ], [ %99, %98 ], [ %65, %64 ]
  %104 = phi i64 [ %66, %76 ], [ %66, %98 ], [ 0, %64 ]
  %105 = sub i64 %104, %56
  store i64 %105, ptr %0, align 8, !tbaa !26
  %106 = icmp sgt i64 %103, 0
  br i1 %106, label %107, label %148

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 7
  %109 = load i64, ptr %8, align 8, !tbaa !27
  br label %110

110:                                              ; preds = %107, %145
  %111 = phi i64 [ %109, %107 ], [ %141, %145 ]
  %112 = phi i64 [ 0, %107 ], [ %146, %145 ]
  %113 = call ptr @GetVirtualPixels(ptr noundef nonnull %1, i64 noundef 0, i64 noundef %112, i64 noundef %111, i64 noundef 1, ptr noundef %4) #9
  %114 = load i64, ptr %108, align 8, !tbaa !27
  %115 = call ptr @GetVirtualPixels(ptr noundef %2, i64 noundef 0, i64 noundef %112, i64 noundef %114, i64 noundef 1, ptr noundef %4) #9
  %116 = icmp eq ptr %113, null
  %117 = icmp eq ptr %115, null
  %118 = select i1 %116, i1 true, i1 %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %110
  %120 = load i64, ptr %61, align 8, !tbaa !30
  br label %148

121:                                              ; preds = %110
  %122 = call ptr @GetVirtualIndexQueue(ptr noundef nonnull %1) #9
  %123 = call ptr @GetVirtualIndexQueue(ptr noundef nonnull %2) #9
  %124 = load i64, ptr %8, align 8, !tbaa !27
  %125 = icmp sgt i64 %124, 0
  br i1 %125, label %126, label %140

126:                                              ; preds = %121, %135
  %127 = phi i64 [ %138, %135 ], [ 0, %121 ]
  %128 = phi ptr [ %137, %135 ], [ %115, %121 ]
  %129 = phi ptr [ %136, %135 ], [ %113, %121 ]
  %130 = getelementptr inbounds i16, ptr %122, i64 %127
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %1, ptr noundef nonnull %129, ptr noundef %130, ptr noundef nonnull %6) #10
  %131 = getelementptr inbounds i16, ptr %123, i64 %127
  call fastcc void @SetMagickPixelPacket(ptr noundef %2, ptr noundef nonnull %128, ptr noundef %131, ptr noundef nonnull %7) #10
  %132 = call fastcc i32 @ComparePixels(i32 noundef %3, ptr noundef nonnull %6, ptr noundef nonnull %7) #10, !range !38
  %133 = icmp eq i32 %132, 0
  %134 = load i64, ptr %8, align 8, !tbaa !27
  br i1 %133, label %135, label %140

135:                                              ; preds = %126
  %136 = getelementptr inbounds %struct._PixelPacket, ptr %129, i64 1
  %137 = getelementptr inbounds %struct._PixelPacket, ptr %128, i64 1
  %138 = add nuw nsw i64 %127, 1
  %139 = icmp slt i64 %138, %134
  br i1 %139, label %126, label %140, !llvm.loop !57

140:                                              ; preds = %135, %126, %121
  %141 = phi i64 [ %124, %121 ], [ %134, %126 ], [ %134, %135 ]
  %142 = phi i64 [ 0, %121 ], [ %138, %135 ], [ %127, %126 ]
  %143 = icmp slt i64 %142, %141
  %144 = load i64, ptr %61, align 8, !tbaa !30
  br i1 %143, label %148, label %145

145:                                              ; preds = %140
  %146 = add nuw nsw i64 %112, 1
  %147 = icmp slt i64 %146, %144
  br i1 %147, label %110, label %148, !llvm.loop !58

148:                                              ; preds = %145, %140, %119, %102
  %149 = phi i64 [ %103, %102 ], [ %120, %119 ], [ %144, %140 ], [ %144, %145 ]
  %150 = phi i64 [ 0, %102 ], [ %112, %119 ], [ %146, %145 ], [ %112, %140 ]
  %151 = getelementptr inbounds %struct._RectangleInfo, ptr %0, i64 0, i32 3
  store i64 %150, ptr %151, align 8, !tbaa !31
  %152 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 7
  br label %153

153:                                              ; preds = %184, %148
  %154 = phi i64 [ %149, %148 ], [ %155, %184 ]
  %155 = add nsw i64 %154, -1
  %156 = icmp sgt i64 %154, 0
  br i1 %156, label %157, label %188

157:                                              ; preds = %153
  %158 = load i64, ptr %8, align 8, !tbaa !27
  %159 = call ptr @GetVirtualPixels(ptr noundef nonnull %1, i64 noundef 0, i64 noundef %155, i64 noundef %158, i64 noundef 1, ptr noundef %4) #9
  %160 = load i64, ptr %152, align 8, !tbaa !27
  %161 = call ptr @GetVirtualPixels(ptr noundef %2, i64 noundef 0, i64 noundef %155, i64 noundef %160, i64 noundef 1, ptr noundef %4) #9
  %162 = icmp eq ptr %159, null
  %163 = icmp eq ptr %161, null
  %164 = select i1 %162, i1 true, i1 %163
  br i1 %164, label %188, label %165

165:                                              ; preds = %157
  %166 = call ptr @GetVirtualIndexQueue(ptr noundef nonnull %1) #9
  %167 = call ptr @GetVirtualIndexQueue(ptr noundef nonnull %2) #9
  %168 = load i64, ptr %8, align 8, !tbaa !27
  %169 = icmp sgt i64 %168, 0
  br i1 %169, label %170, label %184

170:                                              ; preds = %165, %179
  %171 = phi i64 [ %182, %179 ], [ 0, %165 ]
  %172 = phi ptr [ %181, %179 ], [ %161, %165 ]
  %173 = phi ptr [ %180, %179 ], [ %159, %165 ]
  %174 = getelementptr inbounds i16, ptr %166, i64 %171
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %1, ptr noundef nonnull %173, ptr noundef %174, ptr noundef nonnull %6) #10
  %175 = getelementptr inbounds i16, ptr %167, i64 %171
  call fastcc void @SetMagickPixelPacket(ptr noundef %2, ptr noundef nonnull %172, ptr noundef %175, ptr noundef nonnull %7) #10
  %176 = call fastcc i32 @ComparePixels(i32 noundef %3, ptr noundef nonnull %6, ptr noundef nonnull %7) #10, !range !38
  %177 = icmp eq i32 %176, 0
  %178 = load i64, ptr %8, align 8, !tbaa !27
  br i1 %177, label %179, label %184

179:                                              ; preds = %170
  %180 = getelementptr inbounds %struct._PixelPacket, ptr %173, i64 1
  %181 = getelementptr inbounds %struct._PixelPacket, ptr %172, i64 1
  %182 = add nuw nsw i64 %171, 1
  %183 = icmp slt i64 %182, %178
  br i1 %183, label %170, label %184, !llvm.loop !59

184:                                              ; preds = %179, %170, %165
  %185 = phi i64 [ %168, %165 ], [ %178, %170 ], [ %178, %179 ]
  %186 = phi i64 [ 0, %165 ], [ %182, %179 ], [ %171, %170 ]
  %187 = icmp slt i64 %186, %185
  br i1 %187, label %188, label %153, !llvm.loop !60

188:                                              ; preds = %184, %157, %153
  %189 = sub i64 %154, %150
  br label %190

190:                                              ; preds = %188, %59
  %191 = phi i64 [ %189, %188 ], [ 1, %59 ]
  %192 = getelementptr inbounds %struct._RectangleInfo, ptr %0, i64 0, i32 1
  store i64 %191, ptr %192, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #8
  ret void
}

; Function Attrs: optsize
declare ptr @CropImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DeconstructImages(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CompareImageLayers(ptr noundef %0, i32 noundef 2, ptr noundef %1) #10
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @OptimizeImageLayers(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @OptimizeLayerFrames(ptr noundef %0, i32 noundef 7, ptr noundef %1) #10
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @OptimizeLayerFrames(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct._RectangleInfo, align 8
  %6 = alloca %struct._RectangleInfo, align 8
  %7 = alloca %struct._RectangleInfo, align 8
  %8 = alloca %struct._RectangleInfo, align 8
  %9 = alloca %struct._RectangleInfo, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #8
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %11 = load i32, ptr %10, align 8, !tbaa !5
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %15 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 997, ptr noundef nonnull @.str.2, ptr noundef nonnull %14) #9
  br label %16

16:                                               ; preds = %13, %3
  %17 = icmp eq i32 %1, 8
  %18 = tail call ptr @GetFirstImageInList(ptr noundef nonnull %0) #9
  %19 = icmp eq ptr %18, null
  br i1 %19, label %40, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  br label %23

23:                                               ; preds = %20, %37
  %24 = phi ptr [ %18, %20 ], [ %38, %37 ]
  %25 = getelementptr inbounds %struct._Image, ptr %24, i64 0, i32 7
  %26 = load i64, ptr %25, align 8, !tbaa !27
  %27 = load i64, ptr %21, align 8, !tbaa !27
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct._Image, ptr %24, i64 0, i32 8
  %31 = load i64, ptr %30, align 8, !tbaa !30
  %32 = load i64, ptr %22, align 8, !tbaa !30
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %37, label %34

34:                                               ; preds = %29, %23
  %35 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %36 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1015, i32 noundef 410, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.4, ptr noundef nonnull %35) #9
  br label %385

37:                                               ; preds = %29
  %38 = tail call ptr @GetNextImageInList(ptr noundef nonnull %24) #9
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %23, !llvm.loop !61

40:                                               ; preds = %37, %16
  %41 = tail call ptr @GetFirstImageInList(ptr noundef nonnull %0) #9
  %42 = tail call i64 @GetImageListLength(ptr noundef %41) #9
  %43 = select i1 %17, i64 2, i64 1
  %44 = shl nuw nsw i64 %43, 5
  %45 = tail call ptr @AcquireQuantumMemory(i64 noundef %42, i64 noundef %44) #11
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %49 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1029, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %48) #9
  br label %385

50:                                               ; preds = %40
  %51 = tail call i64 @GetImageListLength(ptr noundef nonnull %0) #9
  %52 = shl nuw nsw i64 %43, 2
  %53 = tail call ptr @AcquireQuantumMemory(i64 noundef %51, i64 noundef %52) #11
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %45) #9
  %57 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %58 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1036, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %57) #9
  br label %385

59:                                               ; preds = %50
  %60 = getelementptr inbounds %struct._Image, ptr %41, i64 0, i32 26
  %61 = load i64, ptr %60, align 8, !tbaa !46
  %62 = getelementptr inbounds %struct._Image, ptr %41, i64 0, i32 26, i32 1
  %63 = load i64, ptr %62, align 8, !tbaa !47
  %64 = tail call ptr @CloneImage(ptr noundef %41, i64 noundef %61, i64 noundef %63, i32 noundef 1, ptr noundef %2) #9
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %45) #9
  %68 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %53) #9
  br label %385

69:                                               ; preds = %59
  %70 = getelementptr inbounds %struct._Image, ptr %64, i64 0, i32 26
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %70, ptr noundef nonnull align 8 dereferenceable(32) %60, i64 16, i1 false), !tbaa.struct !24
  %71 = getelementptr inbounds %struct._Image, ptr %64, i64 0, i32 26, i32 2
  %72 = getelementptr inbounds %struct._Image, ptr %64, i64 0, i32 37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %71, i8 0, i64 16, i1 false)
  store i32 1, ptr %72, align 4, !tbaa !33
  %73 = getelementptr inbounds %struct._Image, ptr %64, i64 0, i32 12, i32 3
  store i16 -1, ptr %73, align 2, !tbaa !48
  %74 = tail call i32 @SetImageBackgroundColor(ptr noundef nonnull %64) #9
  store i32 1, ptr %53, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #8
  call fastcc void @CompareImageBounds(ptr dead_on_unwind nonnull writable sret(%struct._RectangleInfo) align 8 %8, ptr noundef nonnull %64, ptr noundef nonnull %41, i32 noundef 2, ptr noundef %2) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %45, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !tbaa.struct !24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #8
  %75 = getelementptr inbounds %struct._RectangleInfo, ptr %7, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  %76 = tail call ptr @GetNextImageInList(ptr noundef nonnull %41) #9
  %77 = icmp eq ptr %76, null
  br i1 %77, label %308, label %78

78:                                               ; preds = %69
  %79 = getelementptr inbounds %struct._RectangleInfo, ptr %5, i64 0, i32 1
  %80 = getelementptr inbounds %struct._RectangleInfo, ptr %6, i64 0, i32 2
  %81 = getelementptr inbounds %struct._RectangleInfo, ptr %5, i64 0, i32 2
  %82 = getelementptr inbounds %struct._RectangleInfo, ptr %5, i64 0, i32 3
  %83 = getelementptr inbounds %struct._RectangleInfo, ptr %6, i64 0, i32 3
  %84 = getelementptr inbounds %struct._RectangleInfo, ptr %6, i64 0, i32 1
  br label %85

85:                                               ; preds = %78, %300
  %86 = phi i64 [ 1, %78 ], [ %305, %300 ]
  %87 = phi ptr [ %76, %78 ], [ %306, %300 ]
  %88 = phi ptr [ null, %78 ], [ %303, %300 ]
  %89 = phi ptr [ null, %78 ], [ %302, %300 ]
  %90 = phi ptr [ %64, %78 ], [ %301, %300 ]
  %91 = getelementptr inbounds %struct._RectangleInfo, ptr %45, i64 %86
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #8
  %92 = getelementptr inbounds %struct._Image, ptr %87, i64 0, i32 67
  %93 = load ptr, ptr %92, align 8, !tbaa !36
  call fastcc void @CompareImageBounds(ptr dead_on_unwind nonnull writable sret(%struct._RectangleInfo) align 8 %9, ptr noundef %93, ptr noundef nonnull %87, i32 noundef 2, ptr noundef %2) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %91, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false), !tbaa.struct !24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #8
  %94 = load ptr, ptr %92, align 8, !tbaa !36
  %95 = tail call fastcc i32 @IsBoundsCleared(ptr noundef %94, ptr noundef nonnull %87, ptr noundef nonnull %91, ptr noundef %2) #10, !range !38
  %96 = add nsw i64 %86, -1
  %97 = getelementptr inbounds i32, ptr %53, i64 %96
  store i32 1, ptr %97, align 4, !tbaa !62
  %98 = getelementptr inbounds %struct._RectangleInfo, ptr %45, i64 %86, i32 2
  %99 = load i64, ptr %98, align 8, !tbaa !28
  %100 = icmp slt i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %85
  %102 = icmp sgt i64 %86, 1
  %103 = select i1 %17, i1 %102, i1 false
  br i1 %103, label %104, label %252

104:                                              ; preds = %101
  store i32 8, ptr %97, align 4, !tbaa !62
  %105 = getelementptr inbounds i32, ptr %53, i64 %86
  store i32 1, ptr %105, align 4, !tbaa !62
  %106 = getelementptr inbounds %struct._RectangleInfo, ptr %45, i64 %96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %91, ptr noundef nonnull align 8 dereferenceable(32) %106, i64 32, i1 false), !tbaa.struct !24
  br label %300

107:                                              ; preds = %85
  call fastcc void @CompareImageBounds(ptr dead_on_unwind nonnull writable sret(%struct._RectangleInfo) align 8 %5, ptr noundef %90, ptr noundef nonnull %87, i32 noundef 2, ptr noundef %2) #10
  %108 = call fastcc i32 @IsBoundsCleared(ptr noundef %90, ptr noundef nonnull %87, ptr noundef nonnull %5, ptr noundef %2) #10, !range !38
  %109 = icmp eq i32 %108, 0
  %110 = icmp ne i32 %95, 0
  %111 = select i1 %109, i1 %110, i1 false
  br i1 %111, label %121, label %112

112:                                              ; preds = %107
  %113 = load i64, ptr %5, align 8, !tbaa !26
  %114 = load i64, ptr %79, align 8, !tbaa !29
  %115 = mul i64 %114, %113
  %116 = load i64, ptr %91, align 8, !tbaa !26
  %117 = getelementptr inbounds %struct._RectangleInfo, ptr %45, i64 %86, i32 1
  %118 = load i64, ptr %117, align 8, !tbaa !29
  %119 = mul i64 %118, %116
  %120 = icmp ult i64 %115, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %107, %112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %91, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !24
  store i32 3, ptr %97, align 4, !tbaa !62
  br label %122

122:                                              ; preds = %121, %112
  %123 = phi i32 [ %108, %121 ], [ %95, %112 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  br i1 %17, label %124, label %153

124:                                              ; preds = %122
  %125 = load ptr, ptr %92, align 8, !tbaa !36
  %126 = getelementptr inbounds %struct._Image, ptr %125, i64 0, i32 26
  %127 = load i64, ptr %126, align 8, !tbaa !46
  %128 = getelementptr inbounds %struct._Image, ptr %125, i64 0, i32 26, i32 1
  %129 = load i64, ptr %128, align 8, !tbaa !47
  %130 = tail call ptr @CloneImage(ptr noundef %125, i64 noundef %127, i64 noundef %129, i32 noundef 1, ptr noundef %2) #9
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %136

132:                                              ; preds = %124
  %133 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %45) #9
  %134 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %53) #9
  %135 = tail call ptr @DestroyImage(ptr noundef %90) #9
  br label %385

136:                                              ; preds = %124
  call fastcc void @CompareImageBounds(ptr dead_on_unwind nonnull writable sret(%struct._RectangleInfo) align 8 %7, ptr noundef nonnull %130, ptr noundef nonnull %87, i32 noundef 3, ptr noundef %2) #10
  call fastcc void @ClearBounds(ptr noundef nonnull %130, ptr noundef nonnull %7) #10
  call fastcc void @CompareImageBounds(ptr dead_on_unwind nonnull writable sret(%struct._RectangleInfo) align 8 %5, ptr noundef nonnull %130, ptr noundef nonnull %87, i32 noundef 2, ptr noundef %2) #10
  %137 = icmp eq i32 %123, 0
  br i1 %137, label %138, label %151

138:                                              ; preds = %136
  %139 = load i64, ptr %7, align 8, !tbaa !26
  %140 = load i64, ptr %75, align 8, !tbaa !29
  %141 = mul i64 %140, %139
  %142 = load i64, ptr %5, align 8, !tbaa !26
  %143 = load i64, ptr %79, align 8, !tbaa !29
  %144 = mul i64 %143, %142
  %145 = add i64 %144, %141
  %146 = load i64, ptr %91, align 8, !tbaa !26
  %147 = getelementptr inbounds %struct._RectangleInfo, ptr %45, i64 %86, i32 1
  %148 = load i64, ptr %147, align 8, !tbaa !29
  %149 = mul i64 %148, %146
  %150 = icmp ult i64 %145, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %138, %136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %91, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !24
  store i32 9, ptr %97, align 4, !tbaa !62
  br label %153

152:                                              ; preds = %138
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  br label %153

153:                                              ; preds = %151, %152, %122
  %154 = phi ptr [ %130, %151 ], [ %130, %152 ], [ %89, %122 ]
  %155 = phi i32 [ 0, %151 ], [ 0, %152 ], [ %123, %122 ]
  %156 = load ptr, ptr %92, align 8, !tbaa !36
  %157 = getelementptr inbounds %struct._Image, ptr %156, i64 0, i32 26
  %158 = load i64, ptr %157, align 8, !tbaa !46
  %159 = getelementptr inbounds %struct._Image, ptr %156, i64 0, i32 26, i32 1
  %160 = load i64, ptr %159, align 8, !tbaa !47
  %161 = tail call ptr @CloneImage(ptr noundef %156, i64 noundef %158, i64 noundef %160, i32 noundef 1, ptr noundef %2) #9
  %162 = icmp eq ptr %161, null
  br i1 %162, label %163, label %170

163:                                              ; preds = %153
  %164 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %45) #9
  %165 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %53) #9
  %166 = tail call ptr @DestroyImage(ptr noundef %90) #9
  %167 = icmp eq ptr %154, null
  br i1 %167, label %385, label %168

168:                                              ; preds = %163
  %169 = tail call ptr @DestroyImage(ptr noundef nonnull %154) #9
  br label %385

170:                                              ; preds = %153
  %171 = getelementptr inbounds %struct._RectangleInfo, ptr %45, i64 %96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %171, i64 32, i1 false), !tbaa.struct !24
  call fastcc void @ClearBounds(ptr noundef nonnull %161, ptr noundef nonnull %6) #10
  call fastcc void @CompareImageBounds(ptr dead_on_unwind nonnull writable sret(%struct._RectangleInfo) align 8 %5, ptr noundef nonnull %161, ptr noundef nonnull %87, i32 noundef 2, ptr noundef %2) #10
  %172 = call fastcc i32 @IsBoundsCleared(ptr noundef nonnull %161, ptr noundef nonnull %87, ptr noundef nonnull %5, ptr noundef %2) #10, !range !38
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %212, label %174

174:                                              ; preds = %170
  %175 = load ptr, ptr %92, align 8, !tbaa !36
  call fastcc void @CompareImageBounds(ptr dead_on_unwind nonnull writable sret(%struct._RectangleInfo) align 8 %5, ptr noundef %175, ptr noundef nonnull %87, i32 noundef 3, ptr noundef %2) #10
  %176 = load i64, ptr %80, align 8, !tbaa !28
  %177 = icmp slt i64 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %174
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !24
  br label %211

179:                                              ; preds = %174
  %180 = load i64, ptr %81, align 8, !tbaa !28
  %181 = icmp slt i64 %180, %176
  br i1 %181, label %182, label %188

182:                                              ; preds = %179
  %183 = sub nsw i64 %176, %180
  %184 = load i64, ptr %6, align 8, !tbaa !26
  %185 = add i64 %184, %183
  %186 = load i64, ptr %5, align 8, !tbaa !26
  %187 = tail call i64 @llvm.umax.i64(i64 %185, i64 %186)
  store i64 %180, ptr %80, align 8, !tbaa !28
  br label %194

188:                                              ; preds = %179
  %189 = sub nsw i64 %180, %176
  %190 = load i64, ptr %5, align 8, !tbaa !26
  %191 = add i64 %190, %189
  store i64 %191, ptr %5, align 8, !tbaa !26
  %192 = load i64, ptr %6, align 8, !tbaa !26
  %193 = tail call i64 @llvm.umax.i64(i64 %192, i64 %191)
  br label %194

194:                                              ; preds = %188, %182
  %195 = phi i64 [ %187, %182 ], [ %193, %188 ]
  store i64 %195, ptr %6, align 8
  %196 = load i64, ptr %82, align 8, !tbaa !31
  %197 = load i64, ptr %83, align 8, !tbaa !31
  %198 = icmp slt i64 %196, %197
  br i1 %198, label %199, label %205

199:                                              ; preds = %194
  %200 = sub nsw i64 %197, %196
  %201 = load i64, ptr %84, align 8, !tbaa !29
  %202 = add i64 %201, %200
  %203 = load i64, ptr %79, align 8, !tbaa !29
  %204 = tail call i64 @llvm.umax.i64(i64 %202, i64 %203)
  store i64 %204, ptr %84, align 8
  store i64 %196, ptr %83, align 8, !tbaa !31
  br label %211

205:                                              ; preds = %194
  %206 = sub nsw i64 %196, %197
  %207 = load i64, ptr %79, align 8, !tbaa !29
  %208 = add i64 %207, %206
  store i64 %208, ptr %79, align 8, !tbaa !29
  %209 = load i64, ptr %84, align 8, !tbaa !29
  %210 = tail call i64 @llvm.umax.i64(i64 %209, i64 %208)
  store i64 %210, ptr %84, align 8
  br label %211

211:                                              ; preds = %205, %199, %178
  call fastcc void @ClearBounds(ptr noundef nonnull %161, ptr noundef nonnull %6) #10
  call fastcc void @CompareImageBounds(ptr dead_on_unwind nonnull writable sret(%struct._RectangleInfo) align 8 %5, ptr noundef nonnull %161, ptr noundef nonnull %87, i32 noundef 4, ptr noundef %2) #10
  br label %212

212:                                              ; preds = %211, %170
  %213 = icmp eq i32 %155, 0
  br i1 %213, label %214, label %236

214:                                              ; preds = %212
  %215 = load i64, ptr %6, align 8, !tbaa !26
  %216 = load i64, ptr %84, align 8, !tbaa !29
  %217 = mul i64 %216, %215
  %218 = load i64, ptr %5, align 8, !tbaa !26
  %219 = load i64, ptr %79, align 8, !tbaa !29
  %220 = mul i64 %219, %218
  %221 = add i64 %220, %217
  %222 = load i64, ptr %171, align 8, !tbaa !26
  %223 = getelementptr inbounds %struct._RectangleInfo, ptr %45, i64 %96, i32 1
  %224 = load i64, ptr %223, align 8, !tbaa !29
  %225 = mul i64 %224, %222
  %226 = load i64, ptr %7, align 8, !tbaa !26
  %227 = load i64, ptr %75, align 8, !tbaa !29
  %228 = mul i64 %227, %226
  %229 = add i64 %228, %225
  %230 = load i64, ptr %91, align 8, !tbaa !26
  %231 = getelementptr inbounds %struct._RectangleInfo, ptr %45, i64 %86, i32 1
  %232 = load i64, ptr %231, align 8, !tbaa !29
  %233 = mul i64 %232, %230
  %234 = add i64 %229, %233
  %235 = icmp ult i64 %221, %234
  br i1 %235, label %236, label %243

236:                                              ; preds = %214, %212
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %171, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %91, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !24
  %237 = load i32, ptr %97, align 4, !tbaa !62
  %238 = icmp eq i32 %237, 9
  br i1 %238, label %239, label %241

239:                                              ; preds = %236
  %240 = tail call ptr @DestroyImage(ptr noundef %154) #9
  br label %241

241:                                              ; preds = %236, %239
  %242 = phi ptr [ %240, %239 ], [ %154, %236 ]
  store i32 2, ptr %97, align 4, !tbaa !62
  br label %252

243:                                              ; preds = %214
  %244 = load i32, ptr %97, align 4, !tbaa !62
  %245 = icmp eq i32 %244, 9
  br i1 %245, label %246, label %252

246:                                              ; preds = %243
  %247 = tail call ptr @DestroyImage(ptr noundef nonnull %161) #9
  %248 = tail call ptr @DestroyImage(ptr noundef %90) #9
  %249 = add nsw i64 %86, 1
  %250 = getelementptr inbounds %struct._RectangleInfo, ptr %45, i64 %249
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %250, ptr noundef nonnull align 8 dereferenceable(32) %91, i64 32, i1 false), !tbaa.struct !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %91, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !24
  store i32 9, ptr %97, align 4, !tbaa !62
  %251 = getelementptr inbounds i32, ptr %53, i64 %86
  store i32 2, ptr %251, align 4, !tbaa !62
  br label %292

252:                                              ; preds = %101, %241, %243
  %253 = phi i32 [ 2, %241 ], [ %244, %243 ], [ 1, %101 ]
  %254 = phi ptr [ %161, %241 ], [ %161, %243 ], [ %88, %101 ]
  %255 = phi ptr [ %242, %241 ], [ %154, %243 ], [ %89, %101 ]
  %256 = icmp eq ptr %255, null
  br i1 %256, label %260, label %257

257:                                              ; preds = %252
  %258 = tail call ptr @DestroyImage(ptr noundef nonnull %255) #9
  %259 = load i32, ptr %97, align 4, !tbaa !62
  br label %260

260:                                              ; preds = %257, %252
  %261 = phi i32 [ %259, %257 ], [ %253, %252 ]
  %262 = phi ptr [ %258, %257 ], [ null, %252 ]
  %263 = icmp eq i32 %261, 3
  br i1 %263, label %267, label %264

264:                                              ; preds = %260
  %265 = tail call ptr @DestroyImage(ptr noundef %90) #9
  %266 = load i32, ptr %97, align 4, !tbaa !62
  br label %267

267:                                              ; preds = %264, %260
  %268 = phi i32 [ %266, %264 ], [ 3, %260 ]
  %269 = phi ptr [ %265, %264 ], [ %90, %260 ]
  %270 = icmp eq i32 %268, 2
  %271 = select i1 %270, ptr %254, ptr %269
  %272 = icmp eq ptr %254, null
  %273 = select i1 %270, i1 true, i1 %272
  br i1 %273, label %277, label %274

274:                                              ; preds = %267
  %275 = tail call ptr @DestroyImage(ptr noundef nonnull %254) #9
  %276 = load i32, ptr %97, align 4, !tbaa !62
  br label %277

277:                                              ; preds = %274, %267
  %278 = phi i32 [ %276, %274 ], [ %268, %267 ]
  %279 = phi ptr [ %275, %274 ], [ null, %267 ]
  %280 = icmp eq i32 %278, 1
  br i1 %280, label %281, label %292

281:                                              ; preds = %277
  %282 = load ptr, ptr %92, align 8, !tbaa !36
  %283 = getelementptr inbounds %struct._Image, ptr %282, i64 0, i32 26
  %284 = load i64, ptr %283, align 8, !tbaa !46
  %285 = getelementptr inbounds %struct._Image, ptr %282, i64 0, i32 26, i32 1
  %286 = load i64, ptr %285, align 8, !tbaa !47
  %287 = tail call ptr @CloneImage(ptr noundef %282, i64 noundef %284, i64 noundef %286, i32 noundef 1, ptr noundef %2) #9
  %288 = icmp eq ptr %287, null
  br i1 %288, label %289, label %292

289:                                              ; preds = %281
  %290 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %45) #9
  %291 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %53) #9
  br label %385

292:                                              ; preds = %277, %281, %246
  %293 = phi ptr [ %154, %246 ], [ %287, %281 ], [ %271, %277 ]
  %294 = phi ptr [ null, %246 ], [ %262, %281 ], [ %262, %277 ]
  %295 = phi ptr [ %247, %246 ], [ %279, %281 ], [ %279, %277 ]
  %296 = phi i64 [ %249, %246 ], [ %86, %281 ], [ %86, %277 ]
  %297 = getelementptr i32, ptr %53, i64 %296
  %298 = getelementptr i32, ptr %297, i64 -1
  %299 = load i32, ptr %298, align 4, !tbaa !62
  store i32 %299, ptr %297, align 4, !tbaa !62
  br label %300

300:                                              ; preds = %292, %104
  %301 = phi ptr [ %90, %104 ], [ %293, %292 ]
  %302 = phi ptr [ %89, %104 ], [ %294, %292 ]
  %303 = phi ptr [ %88, %104 ], [ %295, %292 ]
  %304 = phi i64 [ %86, %104 ], [ %296, %292 ]
  %305 = add nsw i64 %304, 1
  %306 = tail call ptr @GetNextImageInList(ptr noundef nonnull %87) #9
  %307 = icmp eq ptr %306, null
  br i1 %307, label %308, label %85, !llvm.loop !63

308:                                              ; preds = %300, %69
  %309 = phi ptr [ %64, %69 ], [ %301, %300 ]
  %310 = tail call ptr @DestroyImage(ptr noundef %309) #9
  %311 = tail call ptr @AcquireExceptionInfo() #9
  %312 = tail call ptr @GetFirstImageInList(ptr noundef %0) #9
  %313 = tail call ptr @NewImageList() #9
  store ptr %313, ptr %4, align 8, !tbaa !49
  %314 = icmp eq ptr %312, null
  br i1 %314, label %375, label %315

315:                                              ; preds = %308, %368
  %316 = phi i64 [ %370, %368 ], [ 0, %308 ]
  %317 = phi ptr [ %369, %368 ], [ %312, %308 ]
  %318 = call ptr @CloneImage(ptr noundef nonnull %317, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #9
  %319 = icmp eq ptr %318, null
  br i1 %319, label %372, label %320

320:                                              ; preds = %315
  %321 = getelementptr inbounds i32, ptr %53, i64 %316
  %322 = load i32, ptr %321, align 4, !tbaa !62
  %323 = icmp eq i32 %322, 8
  br i1 %323, label %324, label %352

324:                                              ; preds = %320, %324
  %325 = phi i64 [ %334, %324 ], [ 0, %320 ]
  %326 = phi i64 [ %336, %324 ], [ %316, %320 ]
  %327 = phi ptr [ %335, %324 ], [ %317, %320 ]
  %328 = getelementptr inbounds %struct._Image, ptr %327, i64 0, i32 40
  %329 = load i64, ptr %328, align 8, !tbaa !64
  %330 = mul i64 %329, 1000
  %331 = getelementptr inbounds %struct._Image, ptr %327, i64 0, i32 41
  %332 = load i64, ptr %331, align 8, !tbaa !65
  %333 = udiv i64 %330, %332
  %334 = add i64 %333, %325
  %335 = call ptr @GetNextImageInList(ptr noundef %327) #9
  %336 = add nsw i64 %326, 1
  %337 = getelementptr inbounds i32, ptr %53, i64 %336
  %338 = load i32, ptr %337, align 4, !tbaa !62
  %339 = icmp eq i32 %338, 8
  br i1 %339, label %324, label %340, !llvm.loop !66

340:                                              ; preds = %324
  %341 = getelementptr inbounds %struct._Image, ptr %335, i64 0, i32 40
  %342 = load i64, ptr %341, align 8, !tbaa !64
  %343 = mul i64 %342, 1000
  %344 = getelementptr inbounds %struct._Image, ptr %335, i64 0, i32 41
  %345 = load i64, ptr %344, align 8, !tbaa !65
  %346 = udiv i64 %343, %345
  %347 = add i64 %346, %334
  %348 = getelementptr inbounds %struct._Image, ptr %318, i64 0, i32 41
  store i64 100, ptr %348, align 8, !tbaa !65
  %349 = mul i64 %347, 100
  %350 = udiv i64 %349, 1000
  %351 = getelementptr inbounds %struct._Image, ptr %318, i64 0, i32 40
  store i64 %350, ptr %351, align 8, !tbaa !64
  br label %352

352:                                              ; preds = %340, %320
  %353 = phi ptr [ %335, %340 ], [ %317, %320 ]
  %354 = phi i64 [ %336, %340 ], [ %316, %320 ]
  %355 = getelementptr inbounds %struct._RectangleInfo, ptr %45, i64 %354
  %356 = call ptr @CropImage(ptr noundef nonnull %318, ptr noundef nonnull %355, ptr noundef %311) #9
  %357 = call ptr @DestroyImage(ptr noundef nonnull %318) #9
  %358 = icmp eq ptr %356, null
  br i1 %358, label %372, label %359

359:                                              ; preds = %352
  %360 = getelementptr inbounds i32, ptr %53, i64 %354
  %361 = load i32, ptr %360, align 4, !tbaa !62
  %362 = getelementptr inbounds %struct._Image, ptr %356, i64 0, i32 37
  store i32 %361, ptr %362, align 4, !tbaa !33
  %363 = icmp eq i32 %361, 9
  br i1 %363, label %364, label %366

364:                                              ; preds = %359
  %365 = getelementptr inbounds %struct._Image, ptr %356, i64 0, i32 40
  store i64 0, ptr %365, align 8, !tbaa !64
  store i32 1, ptr %362, align 4, !tbaa !33
  br label %368

366:                                              ; preds = %359
  %367 = call ptr @GetNextImageInList(ptr noundef nonnull %353) #9
  br label %368

368:                                              ; preds = %366, %364
  %369 = phi ptr [ %353, %364 ], [ %367, %366 ]
  call void @AppendImageToList(ptr noundef nonnull %4, ptr noundef nonnull %356) #9
  %370 = add nsw i64 %354, 1
  %371 = icmp eq ptr %369, null
  br i1 %371, label %372, label %315, !llvm.loop !67

372:                                              ; preds = %352, %315, %368
  %373 = phi ptr [ null, %368 ], [ %317, %315 ], [ %353, %352 ]
  %374 = icmp eq ptr %373, null
  br label %375

375:                                              ; preds = %372, %308
  %376 = phi i1 [ true, %308 ], [ %374, %372 ]
  %377 = call ptr @DestroyExceptionInfo(ptr noundef %311) #9
  %378 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %45) #9
  %379 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %53) #9
  %380 = load ptr, ptr %4, align 8, !tbaa !49
  br i1 %376, label %383, label %381

381:                                              ; preds = %375
  %382 = call ptr @DestroyImageList(ptr noundef %380) #9
  br label %385

383:                                              ; preds = %375
  %384 = call ptr @GetFirstImageInList(ptr noundef %380) #9
  br label %385

385:                                              ; preds = %163, %168, %383, %381, %289, %132, %66, %55, %47, %34
  %386 = phi ptr [ null, %34 ], [ null, %47 ], [ null, %55 ], [ null, %66 ], [ null, %289 ], [ null, %132 ], [ null, %381 ], [ %384, %383 ], [ null, %168 ], [ null, %163 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  ret ptr %386
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @OptimizePlusImageLayers(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @OptimizeLayerFrames(ptr noundef %0, i32 noundef 8, ptr noundef %1) #10
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OptimizeImageTransparency(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._RectangleInfo, align 8
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1526, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #9
  br label %10

10:                                               ; preds = %7, %2
  %11 = tail call ptr @GetFirstImageInList(ptr noundef nonnull %0) #9
  %12 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 26
  %13 = load i64, ptr %12, align 8, !tbaa !46
  %14 = getelementptr inbounds %struct._Image, ptr %11, i64 0, i32 26, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !47
  %16 = tail call ptr @CloneImage(ptr noundef %11, i64 noundef %13, i64 noundef %15, i32 noundef 1, ptr noundef %1) #9
  %17 = icmp eq ptr %16, null
  br i1 %17, label %104, label %18

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 26
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(32) %12, i64 16, i1 false), !tbaa.struct !24
  %20 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 26, i32 2
  %21 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, i8 0, i64 16, i1 false)
  store i32 1, ptr %21, align 4, !tbaa !33
  %22 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 12, i32 3
  store i16 -1, ptr %22, align 2, !tbaa !48
  %23 = tail call i32 @SetImageBackgroundColor(ptr noundef nonnull %16) #9
  %24 = getelementptr inbounds %struct._RectangleInfo, ptr %3, i64 0, i32 1
  %25 = getelementptr inbounds %struct._RectangleInfo, ptr %3, i64 0, i32 2
  %26 = getelementptr inbounds %struct._RectangleInfo, ptr %3, i64 0, i32 3
  %27 = tail call ptr @CloneImage(ptr noundef nonnull %16, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %1) #9
  %28 = icmp eq ptr %27, null
  br i1 %28, label %101, label %29

29:                                               ; preds = %18, %91
  %30 = phi ptr [ %99, %91 ], [ %27, %18 ]
  %31 = phi ptr [ %88, %91 ], [ %16, %18 ]
  %32 = phi ptr [ %89, %91 ], [ %11, %18 ]
  %33 = getelementptr inbounds %struct._Image, ptr %32, i64 0, i32 6
  %34 = load i32, ptr %33, align 8, !tbaa !32
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %35, i32 13, i32 40
  %37 = getelementptr inbounds %struct._Image, ptr %32, i64 0, i32 26, i32 2
  %38 = load i64, ptr %37, align 8, !tbaa !34
  %39 = getelementptr inbounds %struct._Image, ptr %32, i64 0, i32 26, i32 3
  %40 = load i64, ptr %39, align 8, !tbaa !35
  %41 = tail call i32 @CompositeImage(ptr noundef nonnull %30, i32 noundef %36, ptr noundef nonnull %32, i64 noundef %38, i64 noundef %40) #9
  %42 = getelementptr inbounds %struct._Image, ptr %32, i64 0, i32 37
  %43 = load i32, ptr %42, align 4, !tbaa !33
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %80

45:                                               ; preds = %29
  %46 = getelementptr inbounds %struct._Image, ptr %32, i64 0, i32 26
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %46, i64 32, i1 false), !tbaa.struct !24
  %47 = getelementptr inbounds %struct._Image, ptr %32, i64 0, i32 7
  %48 = load i64, ptr %47, align 8, !tbaa !27
  store i64 %48, ptr %3, align 8, !tbaa !26
  %49 = getelementptr inbounds %struct._Image, ptr %32, i64 0, i32 8
  %50 = load i64, ptr %49, align 8, !tbaa !30
  store i64 %50, ptr %24, align 8, !tbaa !29
  %51 = load i64, ptr %25, align 8, !tbaa !28
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = add i64 %51, %48
  store i64 %54, ptr %3, align 8, !tbaa !26
  store i64 0, ptr %25, align 8, !tbaa !28
  br label %55

55:                                               ; preds = %53, %45
  %56 = phi i64 [ %54, %53 ], [ %48, %45 ]
  %57 = phi i64 [ 0, %53 ], [ %51, %45 ]
  %58 = add i64 %56, %57
  %59 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 7
  %60 = load i64, ptr %59, align 8, !tbaa !27
  %61 = icmp sgt i64 %58, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = sub i64 %60, %57
  store i64 %63, ptr %3, align 8, !tbaa !26
  br label %64

64:                                               ; preds = %62, %55
  %65 = load i64, ptr %26, align 8, !tbaa !31
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = add i64 %65, %50
  store i64 %68, ptr %24, align 8, !tbaa !29
  store i64 0, ptr %26, align 8, !tbaa !31
  br label %69

69:                                               ; preds = %67, %64
  %70 = phi i64 [ %68, %67 ], [ %50, %64 ]
  %71 = phi i64 [ 0, %67 ], [ %65, %64 ]
  %72 = add i64 %70, %71
  %73 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 8
  %74 = load i64, ptr %73, align 8, !tbaa !30
  %75 = icmp sgt i64 %72, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = sub i64 %74, %71
  store i64 %77, ptr %24, align 8, !tbaa !29
  br label %78

78:                                               ; preds = %76, %69
  call fastcc void @ClearBounds(ptr noundef nonnull %30, ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #8
  %79 = load i32, ptr %42, align 4, !tbaa !33
  br label %80

80:                                               ; preds = %78, %29
  %81 = phi i32 [ %79, %78 ], [ %43, %29 ]
  %82 = icmp eq i32 %81, 3
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = tail call ptr @DestroyImage(ptr noundef %31) #9
  br label %87

85:                                               ; preds = %80
  %86 = tail call ptr @DestroyImage(ptr noundef nonnull %30) #9
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi ptr [ %30, %83 ], [ %31, %85 ]
  %89 = tail call ptr @GetNextImageInList(ptr noundef nonnull %32) #9
  %90 = icmp eq ptr %89, null
  br i1 %90, label %101, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct._Image, ptr %89, i64 0, i32 26, i32 2
  %93 = load i64, ptr %92, align 8, !tbaa !34
  %94 = sub nsw i64 0, %93
  %95 = getelementptr inbounds %struct._Image, ptr %89, i64 0, i32 26, i32 3
  %96 = load i64, ptr %95, align 8, !tbaa !35
  %97 = sub nsw i64 0, %96
  %98 = tail call i32 @CompositeImage(ptr noundef nonnull %89, i32 noundef 6, ptr noundef %88, i64 noundef %94, i64 noundef %97) #9
  %99 = tail call ptr @CloneImage(ptr noundef %88, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %1) #9
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %29, !llvm.loop !68

101:                                              ; preds = %91, %87, %18
  %102 = phi ptr [ %16, %18 ], [ %88, %87 ], [ %88, %91 ]
  %103 = tail call ptr @DestroyImage(ptr noundef %102) #9
  br label %104

104:                                              ; preds = %101, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RemoveDuplicateLayers(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._RectangleInfo, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !49
  %5 = getelementptr inbounds %struct._Image, ptr %4, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct._Image, ptr %4, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1650, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #9
  %11 = load ptr, ptr %0, align 8, !tbaa !49
  br label %12

12:                                               ; preds = %8, %2
  %13 = phi ptr [ %11, %8 ], [ %4, %2 ]
  %14 = tail call ptr @GetFirstImageInList(ptr noundef %13) #9
  %15 = tail call ptr @GetNextImageInList(ptr noundef %14) #9
  %16 = icmp eq ptr %15, null
  br i1 %16, label %71, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds i8, ptr %3, i64 16
  br label %19

19:                                               ; preds = %17, %68
  %20 = phi ptr [ %15, %17 ], [ %69, %68 ]
  %21 = phi ptr [ %14, %17 ], [ %20, %68 ]
  %22 = getelementptr inbounds %struct._Image, ptr %21, i64 0, i32 7
  %23 = load i64, ptr %22, align 8, !tbaa !27
  %24 = getelementptr inbounds %struct._Image, ptr %20, i64 0, i32 7
  %25 = load i64, ptr %24, align 8, !tbaa !27
  %26 = icmp eq i64 %23, %25
  br i1 %26, label %27, label %68

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct._Image, ptr %21, i64 0, i32 8
  %29 = load i64, ptr %28, align 8, !tbaa !30
  %30 = getelementptr inbounds %struct._Image, ptr %20, i64 0, i32 8
  %31 = load i64, ptr %30, align 8, !tbaa !30
  %32 = icmp eq i64 %29, %31
  br i1 %32, label %33, label %68

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct._Image, ptr %21, i64 0, i32 26, i32 2
  %35 = load i64, ptr %34, align 8, !tbaa !34
  %36 = getelementptr inbounds %struct._Image, ptr %20, i64 0, i32 26, i32 2
  %37 = load i64, ptr %36, align 8, !tbaa !34
  %38 = icmp eq i64 %35, %37
  br i1 %38, label %39, label %68

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct._Image, ptr %21, i64 0, i32 26, i32 3
  %41 = load i64, ptr %40, align 8, !tbaa !35
  %42 = getelementptr inbounds %struct._Image, ptr %20, i64 0, i32 26, i32 3
  %43 = load i64, ptr %42, align 8, !tbaa !35
  %44 = icmp eq i64 %41, %43
  br i1 %44, label %45, label %68

45:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #8
  call fastcc void @CompareImageBounds(ptr dead_on_unwind nonnull writable sret(%struct._RectangleInfo) align 8 %3, ptr noundef nonnull %21, ptr noundef nonnull %20, i32 noundef 2, ptr noundef %1) #10
  %46 = load i64, ptr %18, align 8, !tbaa.struct !69
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #8
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %68

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct._Image, ptr %21, i64 0, i32 40
  %50 = load i64, ptr %49, align 8, !tbaa !64
  %51 = mul i64 %50, 1000
  %52 = getelementptr inbounds %struct._Image, ptr %21, i64 0, i32 41
  %53 = load i64, ptr %52, align 8, !tbaa !65
  %54 = udiv i64 %51, %53
  %55 = getelementptr inbounds %struct._Image, ptr %20, i64 0, i32 40
  %56 = load i64, ptr %55, align 8, !tbaa !64
  %57 = mul i64 %56, 1000
  %58 = getelementptr inbounds %struct._Image, ptr %20, i64 0, i32 41
  %59 = load i64, ptr %58, align 8, !tbaa !65
  %60 = udiv i64 %57, %59
  %61 = add i64 %60, %54
  store i64 100, ptr %58, align 8, !tbaa !65
  %62 = load i64, ptr %52, align 8, !tbaa !65
  %63 = mul i64 %62, %61
  %64 = udiv i64 %63, 1000
  store i64 %64, ptr %55, align 8, !tbaa !64
  %65 = getelementptr inbounds %struct._Image, ptr %21, i64 0, i32 42
  %66 = load i64, ptr %65, align 8, !tbaa !70
  %67 = getelementptr inbounds %struct._Image, ptr %20, i64 0, i32 42
  store i64 %66, ptr %67, align 8, !tbaa !70
  store ptr %21, ptr %0, align 8, !tbaa !49
  tail call void @DeleteImageFromList(ptr noundef nonnull %0) #9
  br label %68

68:                                               ; preds = %45, %48, %19, %27, %33, %39
  %69 = tail call ptr @GetNextImageInList(ptr noundef nonnull %20) #9
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %19, !llvm.loop !71

71:                                               ; preds = %68, %12
  %72 = load ptr, ptr %0, align 8, !tbaa !49
  %73 = tail call ptr @GetFirstImageInList(ptr noundef %72) #9
  store ptr %73, ptr %0, align 8, !tbaa !49
  ret void
}

; Function Attrs: optsize
declare void @DeleteImageFromList(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RemoveZeroDelayLayers(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  %4 = load ptr, ptr %0, align 8, !tbaa !49
  %5 = getelementptr inbounds %struct._Image, ptr %4, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct._Image, ptr %4, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1727, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #9
  %11 = load ptr, ptr %0, align 8, !tbaa !49
  br label %12

12:                                               ; preds = %8, %2
  %13 = phi ptr [ %11, %8 ], [ %4, %2 ]
  %14 = tail call ptr @GetFirstImageInList(ptr noundef %13) #9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %12, %21
  %17 = phi ptr [ %22, %21 ], [ %14, %12 ]
  %18 = getelementptr inbounds %struct._Image, ptr %17, i64 0, i32 40
  %19 = load i64, ptr %18, align 8, !tbaa !64
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = tail call ptr @GetNextImageInList(ptr noundef nonnull %17) #9
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %16, !llvm.loop !72

24:                                               ; preds = %21, %12
  %25 = load ptr, ptr %0, align 8, !tbaa !49
  %26 = tail call ptr @GetFirstImageInList(ptr noundef %25) #9
  %27 = getelementptr inbounds %struct._Image, ptr %26, i64 0, i32 53
  %28 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1735, i32 noundef 310, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, ptr noundef nonnull %27) #9
  br label %48

29:                                               ; preds = %16
  %30 = load ptr, ptr %0, align 8, !tbaa !49
  %31 = tail call ptr @GetFirstImageInList(ptr noundef %30) #9
  store ptr %31, ptr %3, align 8, !tbaa !49
  %32 = icmp eq ptr %31, null
  br i1 %32, label %45, label %33

33:                                               ; preds = %29, %42
  %34 = phi ptr [ %43, %42 ], [ %31, %29 ]
  %35 = getelementptr inbounds %struct._Image, ptr %34, i64 0, i32 40
  %36 = load i64, ptr %35, align 8, !tbaa !64
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  call void @DeleteImageFromList(ptr noundef nonnull %3) #9
  %39 = load ptr, ptr %3, align 8, !tbaa !49
  store ptr %39, ptr %0, align 8, !tbaa !49
  br label %42

40:                                               ; preds = %33
  %41 = call ptr @GetNextImageInList(ptr noundef nonnull %34) #9
  store ptr %41, ptr %3, align 8, !tbaa !49
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi ptr [ %41, %40 ], [ %39, %38 ]
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %33, !llvm.loop !73

45:                                               ; preds = %42, %29
  %46 = load ptr, ptr %0, align 8, !tbaa !49
  %47 = call ptr @GetFirstImageInList(ptr noundef %46) #9
  store ptr %47, ptr %0, align 8, !tbaa !49
  br label %48

48:                                               ; preds = %45, %24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CompositeLayers(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca ptr, align 8
  store ptr %0, ptr %7, align 8, !tbaa !49
  %8 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 59
  %9 = load i32, ptr %8, align 8, !tbaa !5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %13 = load i32, ptr %12, align 8, !tbaa !5
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %11, %6
  %16 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 53
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %18 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1828, ptr noundef nonnull @.str.6, ptr noundef nonnull %16, ptr noundef nonnull %17) #9
  br label %19

19:                                               ; preds = %15, %11
  %20 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 69
  %21 = load ptr, ptr %20, align 8, !tbaa !37
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = icmp eq ptr %0, null
  br i1 %24, label %71, label %25

25:                                               ; preds = %23, %25
  %26 = phi ptr [ %27, %25 ], [ %0, %23 ]
  tail call fastcc void @CompositeCanvas(ptr noundef nonnull %26, i32 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) #10
  %27 = tail call ptr @GetNextImageInList(ptr noundef nonnull %26) #9
  %28 = icmp eq ptr %27, null
  br i1 %28, label %71, label %25, !llvm.loop !74

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 69
  %31 = load ptr, ptr %30, align 8, !tbaa !37
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %63

33:                                               ; preds = %29
  %34 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %5) #9
  tail call fastcc void @CompositeCanvas(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4) #10
  %35 = load ptr, ptr %20, align 8, !tbaa !37
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 40
  %39 = load i64, ptr %38, align 8, !tbaa !64
  %40 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 40
  store i64 %39, ptr %40, align 8, !tbaa !64
  %41 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 42
  %42 = load i64, ptr %41, align 8, !tbaa !70
  %43 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 42
  store i64 %42, ptr %43, align 8, !tbaa !70
  br label %44

44:                                               ; preds = %37, %33
  %45 = tail call ptr @GetNextImageInList(ptr noundef nonnull %2) #9
  %46 = icmp eq ptr %45, null
  br i1 %46, label %61, label %47

47:                                               ; preds = %44, %47
  %48 = phi ptr [ %59, %47 ], [ %45, %44 ]
  %49 = call ptr @CloneImage(ptr noundef %34, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %5) #9
  call void @AppendImageToList(ptr noundef nonnull %7, ptr noundef %49) #9
  %50 = load ptr, ptr %7, align 8, !tbaa !49
  %51 = call ptr @GetLastImageInList(ptr noundef %50) #9
  store ptr %51, ptr %7, align 8, !tbaa !49
  call fastcc void @CompositeCanvas(ptr noundef %51, i32 noundef %1, ptr noundef nonnull %48, i64 noundef %3, i64 noundef %4) #10
  %52 = getelementptr inbounds %struct._Image, ptr %48, i64 0, i32 40
  %53 = load i64, ptr %52, align 8, !tbaa !64
  %54 = load ptr, ptr %7, align 8, !tbaa !49
  %55 = getelementptr inbounds %struct._Image, ptr %54, i64 0, i32 40
  store i64 %53, ptr %55, align 8, !tbaa !64
  %56 = getelementptr inbounds %struct._Image, ptr %48, i64 0, i32 42
  %57 = load i64, ptr %56, align 8, !tbaa !70
  %58 = getelementptr inbounds %struct._Image, ptr %54, i64 0, i32 42
  store i64 %57, ptr %58, align 8, !tbaa !70
  %59 = call ptr @GetNextImageInList(ptr noundef nonnull %48) #9
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %47, !llvm.loop !75

61:                                               ; preds = %47, %44
  %62 = call ptr @DestroyImage(ptr noundef %34) #9
  br label %71

63:                                               ; preds = %29, %63
  %64 = phi ptr [ %66, %63 ], [ %2, %29 ]
  %65 = phi ptr [ %67, %63 ], [ %0, %29 ]
  tail call fastcc void @CompositeCanvas(ptr noundef nonnull %65, i32 noundef %1, ptr noundef nonnull %64, i64 noundef %3, i64 noundef %4) #10
  %66 = tail call ptr @GetNextImageInList(ptr noundef nonnull %64) #9
  %67 = tail call ptr @GetNextImageInList(ptr noundef nonnull %65) #9
  %68 = icmp ne ptr %66, null
  %69 = icmp ne ptr %67, null
  %70 = select i1 %68, i1 %69, i1 false
  br i1 %70, label %63, label %71, !llvm.loop !76

71:                                               ; preds = %63, %25, %23, %61
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @CompositeCanvas(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 26, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !34
  %10 = add i64 %7, %3
  %11 = sub i64 %10, %9
  %12 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 26, i32 3
  %13 = load i64, ptr %12, align 8, !tbaa !35
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !35
  %16 = add i64 %13, %4
  %17 = sub i64 %16, %15
  %18 = tail call i32 @CompositeImage(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %11, i64 noundef %17) #9
  ret void
}

; Function Attrs: optsize
declare ptr @GetLastImageInList(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @MergeImageLayers(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1969, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #9
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26
  %12 = load i64, ptr %11, align 8, !tbaa.struct !24
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa.struct !77
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %16 = load i64, ptr %15, align 8, !tbaa !27
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %18 = load i64, ptr %17, align 8, !tbaa !30
  switch i32 %1, label %19 [
    i32 15, label %63
    i32 14, label %58
  ]

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  %21 = load i64, ptr %20, align 8, !tbaa.struct !78
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa.struct !69
  %24 = tail call ptr @GetNextImageInList(ptr noundef nonnull %0) #9
  %25 = icmp eq ptr %24, null
  br i1 %25, label %86, label %26

26:                                               ; preds = %19, %26
  %27 = phi i64 [ %50, %26 ], [ %16, %19 ]
  %28 = phi i64 [ %55, %26 ], [ %18, %19 ]
  %29 = phi ptr [ %56, %26 ], [ %24, %19 ]
  %30 = phi i64 [ %36, %26 ], [ %23, %19 ]
  %31 = phi i64 [ %43, %26 ], [ %21, %19 ]
  %32 = getelementptr inbounds %struct._Image, ptr %29, i64 0, i32 26, i32 2
  %33 = load i64, ptr %32, align 8, !tbaa !34
  %34 = icmp sgt i64 %30, %33
  %35 = sub nsw i64 %30, %33
  %36 = tail call i64 @llvm.smin.i64(i64 %30, i64 %33)
  %37 = select i1 %34, i64 %35, i64 0
  %38 = add i64 %37, %27
  %39 = getelementptr inbounds %struct._Image, ptr %29, i64 0, i32 26, i32 3
  %40 = load i64, ptr %39, align 8, !tbaa !35
  %41 = icmp sgt i64 %31, %40
  %42 = sub nsw i64 %31, %40
  %43 = tail call i64 @llvm.smin.i64(i64 %31, i64 %40)
  %44 = select i1 %41, i64 %42, i64 0
  %45 = add i64 %44, %28
  %46 = getelementptr inbounds %struct._Image, ptr %29, i64 0, i32 7
  %47 = load i64, ptr %46, align 8, !tbaa !27
  %48 = sub i64 %33, %36
  %49 = add i64 %48, %47
  %50 = tail call i64 @llvm.smax.i64(i64 %38, i64 %49)
  %51 = getelementptr inbounds %struct._Image, ptr %29, i64 0, i32 8
  %52 = load i64, ptr %51, align 8, !tbaa !30
  %53 = sub i64 %40, %43
  %54 = add i64 %53, %52
  %55 = tail call i64 @llvm.smax.i64(i64 %45, i64 %54)
  %56 = tail call ptr @GetNextImageInList(ptr noundef nonnull %29) #9
  %57 = icmp eq ptr %56, null
  br i1 %57, label %86, label %26, !llvm.loop !79

58:                                               ; preds = %10
  %59 = icmp eq i64 %12, 0
  %60 = select i1 %59, i64 %16, i64 %12
  %61 = icmp eq i64 %14, 0
  %62 = select i1 %61, i64 %18, i64 %14
  br label %86

63:                                               ; preds = %10
  %64 = icmp eq i64 %12, 0
  %65 = select i1 %64, i64 %16, i64 %12
  %66 = icmp eq i64 %14, 0
  %67 = select i1 %66, i64 %18, i64 %14
  br label %68

68:                                               ; preds = %63, %68
  %69 = phi i64 [ %78, %68 ], [ %65, %63 ]
  %70 = phi i64 [ %83, %68 ], [ %67, %63 ]
  %71 = phi ptr [ %84, %68 ], [ %0, %63 ]
  %72 = getelementptr inbounds %struct._Image, ptr %71, i64 0, i32 26, i32 2
  %73 = getelementptr inbounds %struct._Image, ptr %71, i64 0, i32 26, i32 3
  %74 = load i64, ptr %72, align 8, !tbaa !34
  %75 = getelementptr inbounds %struct._Image, ptr %71, i64 0, i32 7
  %76 = load i64, ptr %75, align 8, !tbaa !27
  %77 = add nsw i64 %76, %74
  %78 = tail call i64 @llvm.smax.i64(i64 %69, i64 %77)
  %79 = load i64, ptr %73, align 8, !tbaa !35
  %80 = getelementptr inbounds %struct._Image, ptr %71, i64 0, i32 8
  %81 = load i64, ptr %80, align 8, !tbaa !30
  %82 = add nsw i64 %81, %79
  %83 = tail call i64 @llvm.smax.i64(i64 %70, i64 %82)
  %84 = tail call ptr @GetNextImageInList(ptr noundef nonnull %71) #9
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %68, !llvm.loop !80

86:                                               ; preds = %68, %26, %19, %58
  %87 = phi i64 [ 0, %58 ], [ %21, %19 ], [ %43, %26 ], [ 0, %68 ]
  %88 = phi i64 [ 0, %58 ], [ %23, %19 ], [ %36, %26 ], [ 0, %68 ]
  %89 = phi i64 [ %14, %58 ], [ %14, %19 ], [ %14, %26 ], [ %83, %68 ]
  %90 = phi i64 [ %12, %58 ], [ %12, %19 ], [ %12, %26 ], [ %78, %68 ]
  %91 = phi i64 [ %62, %58 ], [ %18, %19 ], [ %55, %26 ], [ %83, %68 ]
  %92 = phi i64 [ %60, %58 ], [ %16, %19 ], [ %50, %26 ], [ %78, %68 ]
  %93 = icmp eq i64 %90, 0
  %94 = tail call i64 @llvm.smax.i64(i64 %88, i64 0)
  %95 = add i64 %92, %94
  %96 = select i1 %93, i64 %95, i64 %90
  %97 = icmp eq i64 %89, 0
  %98 = tail call i64 @llvm.smax.i64(i64 %87, i64 0)
  %99 = add i64 %91, %98
  %100 = select i1 %97, i64 %99, i64 %89
  %101 = icmp eq i32 %1, 16
  br i1 %101, label %102, label %124

102:                                              ; preds = %86
  %103 = tail call i64 @GetImageListLength(ptr noundef %0) #9
  %104 = icmp sgt i64 %103, 0
  br i1 %104, label %105, label %158

105:                                              ; preds = %102, %118
  %106 = phi i64 [ %121, %118 ], [ 0, %102 ]
  %107 = phi ptr [ %119, %118 ], [ %0, %102 ]
  %108 = getelementptr inbounds %struct._Image, ptr %107, i64 0, i32 26
  %109 = getelementptr inbounds %struct._Image, ptr %107, i64 0, i32 26, i32 2
  %110 = load i64, ptr %109, align 8, !tbaa !34
  %111 = sub nsw i64 %110, %88
  store i64 %111, ptr %109, align 8, !tbaa !34
  %112 = getelementptr inbounds %struct._Image, ptr %107, i64 0, i32 26, i32 3
  %113 = load i64, ptr %112, align 8, !tbaa !35
  %114 = sub nsw i64 %113, %87
  store i64 %114, ptr %112, align 8, !tbaa !35
  store i64 %92, ptr %108, align 8, !tbaa !46
  %115 = getelementptr inbounds %struct._Image, ptr %107, i64 0, i32 26, i32 1
  store i64 %91, ptr %115, align 8, !tbaa !47
  %116 = tail call fastcc i32 @SetImageProgress(ptr noundef %107, i64 noundef %106, i64 noundef %103) #10
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %158, label %118

118:                                              ; preds = %105
  %119 = tail call ptr @GetNextImageInList(ptr noundef nonnull %107) #9
  %120 = icmp eq ptr %119, null
  %121 = add nuw nsw i64 %106, 1
  %122 = icmp eq i64 %121, %103
  %123 = select i1 %120, i1 true, i1 %122
  br i1 %123, label %158, label %105, !llvm.loop !81

124:                                              ; preds = %86
  %125 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef %92, i64 noundef %91, i32 noundef 1, ptr noundef %2) #9
  %126 = icmp eq ptr %125, null
  br i1 %126, label %158, label %127

127:                                              ; preds = %124
  %128 = tail call i32 @SetImageBackgroundColor(ptr noundef nonnull %125) #9
  %129 = getelementptr inbounds %struct._Image, ptr %125, i64 0, i32 26
  store i64 %96, ptr %129, align 8, !tbaa.struct !24
  %130 = getelementptr inbounds %struct._Image, ptr %125, i64 0, i32 26, i32 1
  store i64 %100, ptr %130, align 8, !tbaa.struct !77
  %131 = getelementptr inbounds %struct._Image, ptr %125, i64 0, i32 26, i32 2
  store i64 %88, ptr %131, align 8, !tbaa.struct !69
  %132 = getelementptr inbounds %struct._Image, ptr %125, i64 0, i32 26, i32 3
  store i64 %87, ptr %132, align 8, !tbaa.struct !78
  %133 = getelementptr inbounds %struct._Image, ptr %125, i64 0, i32 37
  store i32 0, ptr %133, align 4, !tbaa !33
  %134 = tail call i64 @GetImageListLength(ptr noundef %0) #9
  %135 = icmp sgt i64 %134, 0
  br i1 %135, label %136, label %158

136:                                              ; preds = %127, %152
  %137 = phi i64 [ %155, %152 ], [ 0, %127 ]
  %138 = phi ptr [ %153, %152 ], [ %0, %127 ]
  %139 = getelementptr inbounds %struct._Image, ptr %138, i64 0, i32 36
  %140 = load i32, ptr %139, align 8, !tbaa !82
  %141 = getelementptr inbounds %struct._Image, ptr %138, i64 0, i32 26, i32 2
  %142 = load i64, ptr %141, align 8, !tbaa !34
  %143 = load i64, ptr %131, align 8, !tbaa !34
  %144 = sub nsw i64 %142, %143
  %145 = getelementptr inbounds %struct._Image, ptr %138, i64 0, i32 26, i32 3
  %146 = load i64, ptr %145, align 8, !tbaa !35
  %147 = load i64, ptr %132, align 8, !tbaa !35
  %148 = sub nsw i64 %146, %147
  %149 = tail call i32 @CompositeImage(ptr noundef nonnull %125, i32 noundef %140, ptr noundef %138, i64 noundef %144, i64 noundef %148) #9
  %150 = tail call fastcc i32 @SetImageProgress(ptr noundef %138, i64 noundef %137, i64 noundef %134) #10
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %158, label %152

152:                                              ; preds = %136
  %153 = tail call ptr @GetNextImageInList(ptr noundef nonnull %138) #9
  %154 = icmp eq ptr %153, null
  %155 = add nuw nsw i64 %137, 1
  %156 = icmp eq i64 %155, %134
  %157 = select i1 %154, i1 true, i1 %156
  br i1 %157, label %158, label %136, !llvm.loop !83

158:                                              ; preds = %152, %136, %118, %105, %127, %102, %124
  %159 = phi ptr [ null, %124 ], [ null, %102 ], [ %125, %127 ], [ null, %105 ], [ null, %118 ], [ %125, %136 ], [ %125, %152 ]
  ret ptr %159
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @SetImageProgress(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #8
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %6 = load ptr, ptr %5, align 8, !tbaa !84
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, ptr noundef nonnull %9) #9
  %11 = load ptr, ptr %5, align 8, !tbaa !84
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %13 = load ptr, ptr %12, align 8, !tbaa !85
  %14 = call i32 %11(ptr noundef nonnull %4, i64 noundef %1, i64 noundef %2, ptr noundef %13) #9
  br label %15

15:                                               ; preds = %3, %8
  %16 = phi i32 [ %14, %8 ], [ 1, %3 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #8
  ret i32 %16
}

; Function Attrs: optsize
declare i32 @SetImageAlphaChannel(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @SyncAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetVirtualIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @SetMagickPixelPacket(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #5 {
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  %6 = load <4 x i16>, ptr %1, align 2, !tbaa !86
  %7 = uitofp <4 x i16> %6 to <4 x float>
  %8 = shufflevector <4 x float> %7, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  store <4 x float> %8, ptr %5, align 8, !tbaa !87
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !89
  %11 = icmp eq i32 %10, 12
  %12 = icmp ne ptr %2, null
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i16, ptr %2, align 2, !tbaa !86
  %16 = uitofp i16 %15 to float
  %17 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  store float %16, ptr %17, align 8, !tbaa !90
  br label %18

18:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @ComparePixels(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = icmp eq i32 %0, 2
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = tail call i32 @IsMagickColorSimilar(ptr noundef %1, ptr noundef %2) #9
  %7 = icmp eq i32 %6, 0
  br label %33

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !92
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %14 = load float, ptr %13, align 4, !tbaa !93
  %15 = fcmp ole float %14, 3.276750e+04
  br label %16

16:                                               ; preds = %8, %12
  %17 = phi i1 [ %15, %12 ], [ true, %8 ]
  %18 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !92
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 8
  %23 = load float, ptr %22, align 4, !tbaa !93
  %24 = fcmp ogt float %23, 3.276750e+04
  br label %25

25:                                               ; preds = %16, %21
  %26 = phi i1 [ %24, %21 ], [ false, %16 ]
  switch i32 %0, label %33 [
    i32 3, label %27
    i32 4, label %29
  ]

27:                                               ; preds = %25
  %28 = select i1 %17, i1 %26, i1 false
  br label %33

29:                                               ; preds = %25
  br i1 %26, label %33, label %30

30:                                               ; preds = %29
  %31 = tail call i32 @IsMagickColorSimilar(ptr noundef nonnull %1, ptr noundef nonnull %2) #9
  %32 = icmp eq i32 %31, 0
  br label %33

33:                                               ; preds = %25, %29, %30, %27, %5
  %34 = phi i1 [ %7, %5 ], [ %28, %27 ], [ %32, %30 ], [ false, %29 ], [ false, %25 ]
  %35 = zext i1 %34 to i32
  ret i32 %35
}

; Function Attrs: optsize
declare i32 @IsMagickColorSimilar(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @AcquireExceptionInfo() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #6

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }
attributes #11 = { nounwind optsize allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 12976}
!6 = !{!"_Image", !7, i64 0, !7, i64 4, !7, i64 8, !10, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !11, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !14, i64 104, !15, i64 112, !7, i64 208, !11, i64 216, !7, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !10, i64 256, !14, i64 264, !14, i64 272, !17, i64 280, !17, i64 312, !17, i64 344, !14, i64 376, !14, i64 384, !14, i64 392, !7, i64 400, !7, i64 404, !7, i64 408, !7, i64 412, !7, i64 416, !7, i64 420, !11, i64 424, !10, i64 432, !10, i64 440, !10, i64 448, !10, i64 456, !10, i64 464, !10, i64 472, !18, i64 480, !19, i64 504, !11, i64 568, !11, i64 576, !11, i64 584, !11, i64 592, !11, i64 600, !11, i64 608, !8, i64 616, !8, i64 4712, !8, i64 8808, !10, i64 12904, !10, i64 12912, !21, i64 12920, !7, i64 12976, !10, i64 12984, !11, i64 12992, !22, i64 13000, !22, i64 13032, !11, i64 13064, !10, i64 13072, !10, i64 13080, !11, i64 13088, !11, i64 13096, !11, i64 13104, !7, i64 13112, !7, i64 13116, !12, i64 13120, !11, i64 13128, !17, i64 13136, !11, i64 13168, !11, i64 13176, !7, i64 13184, !7, i64 13188, !23, i64 13192, !7, i64 13200, !10, i64 13208, !10, i64 13216, !7, i64 13224, !10, i64 13232}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!"_PixelPacket", !13, i64 0, !13, i64 2, !13, i64 4, !13, i64 6}
!13 = !{!"short", !8, i64 0}
!14 = !{!"double", !8, i64 0}
!15 = !{!"_ChromaticityInfo", !16, i64 0, !16, i64 24, !16, i64 48, !16, i64 72}
!16 = !{!"_PrimaryInfo", !14, i64 0, !14, i64 8, !14, i64 16}
!17 = !{!"_RectangleInfo", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!18 = !{!"_ErrorInfo", !14, i64 0, !14, i64 8, !14, i64 16}
!19 = !{!"_TimerInfo", !20, i64 0, !20, i64 24, !7, i64 48, !10, i64 56}
!20 = !{!"_Timer", !14, i64 0, !14, i64 8, !14, i64 16}
!21 = !{!"_ExceptionInfo", !7, i64 0, !7, i64 4, !11, i64 8, !11, i64 16, !11, i64 24, !7, i64 32, !11, i64 40, !10, i64 48}
!22 = !{!"_ProfileInfo", !11, i64 0, !10, i64 8, !11, i64 16, !10, i64 24}
!23 = !{!"long long", !8, i64 0}
!24 = !{i64 0, i64 8, !25, i64 8, i64 8, !25, i64 16, i64 8, !25, i64 24, i64 8, !25}
!25 = !{!10, !10, i64 0}
!26 = !{!17, !10, i64 0}
!27 = !{!6, !10, i64 40}
!28 = !{!17, !10, i64 16}
!29 = !{!17, !10, i64 8}
!30 = !{!6, !10, i64 48}
!31 = !{!17, !10, i64 24}
!32 = !{!6, !7, i64 32}
!33 = !{!6, !7, i64 420}
!34 = !{!6, !10, i64 296}
!35 = !{!6, !10, i64 304}
!36 = !{!6, !11, i64 13088}
!37 = !{!6, !11, i64 13104}
!38 = !{i32 0, i32 2}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.mustprogress"}
!41 = distinct !{!41, !40}
!42 = !{!12, !13, i64 6}
!43 = distinct !{!43, !40}
!44 = distinct !{!44, !40}
!45 = distinct !{!45, !40}
!46 = !{!6, !10, i64 280}
!47 = !{!6, !10, i64 288}
!48 = !{!6, !13, i64 86}
!49 = !{!11, !11, i64 0}
!50 = distinct !{!50, !40}
!51 = distinct !{!51, !40}
!52 = distinct !{!52, !40}
!53 = distinct !{!53, !40}
!54 = distinct !{!54, !40}
!55 = distinct !{!55, !40}
!56 = distinct !{!56, !40}
!57 = distinct !{!57, !40}
!58 = distinct !{!58, !40}
!59 = distinct !{!59, !40}
!60 = distinct !{!60, !40}
!61 = distinct !{!61, !40}
!62 = !{!7, !7, i64 0}
!63 = distinct !{!63, !40}
!64 = !{!6, !10, i64 440}
!65 = !{!6, !10, i64 448}
!66 = distinct !{!66, !40}
!67 = distinct !{!67, !40}
!68 = distinct !{!68, !40}
!69 = !{i64 0, i64 8, !25, i64 8, i64 8, !25}
!70 = !{!6, !10, i64 456}
!71 = distinct !{!71, !40}
!72 = distinct !{!72, !40}
!73 = distinct !{!73, !40}
!74 = distinct !{!74, !40}
!75 = distinct !{!75, !40}
!76 = distinct !{!76, !40}
!77 = !{i64 0, i64 8, !25, i64 8, i64 8, !25, i64 16, i64 8, !25}
!78 = !{i64 0, i64 8, !25}
!79 = distinct !{!79, !40}
!80 = distinct !{!80, !40}
!81 = distinct !{!81, !40}
!82 = !{!6, !7, i64 416}
!83 = distinct !{!83, !40}
!84 = !{!6, !11, i64 568}
!85 = !{!6, !11, i64 576}
!86 = !{!13, !13, i64 0}
!87 = !{!88, !88, i64 0}
!88 = !{!"float", !8, i64 0}
!89 = !{!6, !7, i64 4}
!90 = !{!91, !88, i64 48}
!91 = !{!"_MagickPixelPacket", !7, i64 0, !7, i64 4, !7, i64 8, !14, i64 16, !10, i64 24, !88, i64 32, !88, i64 36, !88, i64 40, !88, i64 44, !88, i64 48}
!92 = !{!91, !7, i64 8}
!93 = !{!91, !88, i64 44}
