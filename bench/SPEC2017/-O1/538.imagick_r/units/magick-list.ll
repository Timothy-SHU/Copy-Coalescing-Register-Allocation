; ModuleID = 'magick/list.c'
source_filename = "magick/list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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

@.str = private unnamed_addr constant [14 x i8] c"magick/list.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @AppendImageToList(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 88, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #13
  br label %11

11:                                               ; preds = %8, %4
  %12 = load ptr, ptr %0, align 8, !tbaa !53
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store ptr %1, ptr %0, align 8, !tbaa !53
  br label %28

15:                                               ; preds = %11, %15
  %16 = phi ptr [ %18, %15 ], [ %12, %11 ]
  %17 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 69
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %15, !llvm.loop !55

20:                                               ; preds = %15, %20
  %21 = phi ptr [ %23, %20 ], [ %1, %15 ]
  %22 = getelementptr inbounds %struct._Image, ptr %21, i64 0, i32 67
  %23 = load ptr, ptr %22, align 8, !tbaa !58
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %20, !llvm.loop !59

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 69
  %27 = getelementptr inbounds %struct._Image, ptr %21, i64 0, i32 67
  store ptr %21, ptr %26, align 8, !tbaa !54
  store ptr %16, ptr %27, align 8, !tbaa !58
  br label %28

28:                                               ; preds = %2, %25, %14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @GetLastImageInList(ptr noundef readonly %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1, %3
  %4 = phi ptr [ %6, %3 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct._Image, ptr %4, i64 0, i32 69
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %3, !llvm.loop !55

8:                                                ; preds = %3, %1
  %9 = phi ptr [ null, %1 ], [ %4, %3 ]
  ret ptr %9
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @GetFirstImageInList(ptr noundef readonly %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1, %3
  %4 = phi ptr [ %6, %3 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct._Image, ptr %4, i64 0, i32 67
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %3, !llvm.loop !59

8:                                                ; preds = %3, %1
  %9 = phi ptr [ null, %1 ], [ %4, %3 ]
  ret ptr %9
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @CloneImageList(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %7, %4 ], [ %0, %2 ]
  %6 = getelementptr inbounds %struct._Image, ptr %5, i64 0, i32 67
  %7 = load ptr, ptr %6, align 8, !tbaa !58
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4, !llvm.loop !60

9:                                                ; preds = %4, %23
  %10 = phi ptr [ %13, %23 ], [ null, %4 ]
  %11 = phi ptr [ %24, %23 ], [ null, %4 ]
  %12 = phi ptr [ %26, %23 ], [ %5, %4 ]
  %13 = tail call ptr @CloneImage(ptr noundef nonnull %12, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %1) #13
  %14 = icmp eq ptr %13, null
  %15 = icmp eq ptr %11, null
  br i1 %14, label %16, label %19

16:                                               ; preds = %9
  br i1 %15, label %28, label %17

17:                                               ; preds = %16
  %18 = tail call ptr @DestroyImageList(ptr noundef nonnull %11)
  br label %28

19:                                               ; preds = %9
  br i1 %15, label %23, label %20

20:                                               ; preds = %19
  %21 = getelementptr inbounds %struct._Image, ptr %10, i64 0, i32 69
  store ptr %13, ptr %21, align 8, !tbaa !54
  %22 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 67
  store ptr %10, ptr %22, align 8, !tbaa !58
  br label %23

23:                                               ; preds = %19, %20
  %24 = phi ptr [ %11, %20 ], [ %13, %19 ]
  %25 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 69
  %26 = load ptr, ptr %25, align 8, !tbaa !54
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %9, !llvm.loop !61

28:                                               ; preds = %23, %16, %17, %2
  %29 = phi ptr [ null, %2 ], [ null, %17 ], [ null, %16 ], [ %24, %23 ]
  ret ptr %29
}

declare ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @DestroyImageList(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %42, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 449, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #13
  br label %10

10:                                               ; preds = %7, %3
  br label %11

11:                                               ; preds = %10, %38
  %12 = phi ptr [ %39, %38 ], [ %0, %10 ]
  %13 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 59
  %14 = load i32, ptr %13, align 8, !tbaa !34
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 53
  %18 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 988, ptr noundef nonnull @.str.2, ptr noundef nonnull %17) #13
  br label %19

19:                                               ; preds = %16, %11
  %20 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 67
  %21 = load ptr, ptr %20, align 8, !tbaa !58
  %22 = icmp eq ptr %21, null
  %23 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 69
  %24 = load ptr, ptr %23, align 8, !tbaa !54
  br i1 %22, label %25, label %27

25:                                               ; preds = %19
  %26 = icmp eq ptr %24, null
  br i1 %26, label %38, label %29

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct._Image, ptr %21, i64 0, i32 69
  store ptr %24, ptr %28, align 8, !tbaa !54
  br label %29

29:                                               ; preds = %25, %27
  %30 = phi ptr [ %21, %27 ], [ %12, %25 ]
  %31 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 69
  %32 = load ptr, ptr %31, align 8, !tbaa !54
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct._Image, ptr %32, i64 0, i32 67
  store ptr %21, ptr %35, align 8, !tbaa !58
  br label %36

36:                                               ; preds = %34, %29
  %37 = phi ptr [ %30, %29 ], [ %32, %34 ]
  store ptr null, ptr %20, align 8, !tbaa !58
  store ptr null, ptr %31, align 8, !tbaa !54
  br label %38

38:                                               ; preds = %36, %25
  %39 = phi ptr [ %37, %36 ], [ null, %25 ]
  %40 = tail call ptr @DestroyImage(ptr noundef nonnull %12) #13
  %41 = icmp eq ptr %39, null
  br i1 %41, label %42, label %11, !llvm.loop !62

42:                                               ; preds = %38, %1
  ret ptr null
}

; Function Attrs: nounwind uwtable
define dso_local ptr @CloneImages(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 227, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #13
  br label %11

11:                                               ; preds = %8, %3
  %12 = icmp eq ptr %0, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %11, %13
  %14 = phi ptr [ %16, %13 ], [ %0, %11 ]
  %15 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 67
  %16 = load ptr, ptr %15, align 8, !tbaa !58
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %13, !llvm.loop !59

18:                                               ; preds = %13, %11
  %19 = phi ptr [ null, %11 ], [ %14, %13 ]
  %20 = icmp eq ptr %19, null
  br i1 %20, label %41, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct._Image, ptr %19, i64 0, i32 59
  %23 = load i32, ptr %22, align 8, !tbaa !34
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct._Image, ptr %19, i64 0, i32 53
  %27 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 691, ptr noundef nonnull @.str.2, ptr noundef nonnull %26) #13
  br label %28

28:                                               ; preds = %25, %21
  br label %29

29:                                               ; preds = %28, %29
  %30 = phi ptr [ %32, %29 ], [ %19, %28 ]
  %31 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 69
  %32 = load ptr, ptr %31, align 8, !tbaa !54
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %29, !llvm.loop !55

34:                                               ; preds = %29, %34
  %35 = phi i64 [ %37, %34 ], [ 0, %29 ]
  %36 = phi ptr [ %39, %34 ], [ %30, %29 ]
  %37 = add nuw nsw i64 %35, 1
  %38 = getelementptr inbounds %struct._Image, ptr %36, i64 0, i32 67
  %39 = load ptr, ptr %38, align 8, !tbaa !58
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %34, !llvm.loop !63

41:                                               ; preds = %34, %18
  %42 = phi i64 [ 0, %18 ], [ %37, %34 ]
  store ptr %1, ptr %4, align 8, !tbaa !53
  %43 = load i8, ptr %1, align 1, !tbaa !64
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %148, label %45

45:                                               ; preds = %41
  %46 = tail call ptr @__ctype_b_loc() #14
  %47 = icmp eq ptr %19, null
  br label %53

48:                                               ; preds = %144, %92
  %49 = phi ptr [ %54, %92 ], [ %145, %144 ]
  %50 = load ptr, ptr %4, align 8, !tbaa !53
  %51 = load i8, ptr %50, align 1, !tbaa !64
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %148, label %53, !llvm.loop !65

53:                                               ; preds = %45, %48
  %54 = phi ptr [ null, %45 ], [ %49, %48 ]
  %55 = load ptr, ptr %46, align 8, !tbaa !53
  %56 = load ptr, ptr %4, align 8, !tbaa !53
  br label %57

57:                                               ; preds = %57, %53
  %58 = phi ptr [ %56, %53 ], [ %67, %57 ]
  %59 = load i8, ptr %58, align 1, !tbaa !64
  %60 = zext i8 %59 to i64
  %61 = getelementptr inbounds i16, ptr %55, i64 %60
  %62 = load i16, ptr %61, align 2, !tbaa !66
  %63 = and i16 %62, 8192
  %64 = icmp ne i16 %63, 0
  %65 = icmp eq i8 %59, 44
  %66 = or i1 %65, %64
  %67 = getelementptr inbounds i8, ptr %58, i64 1
  br i1 %66, label %57, label %68, !llvm.loop !67

68:                                               ; preds = %57
  store ptr %58, ptr %4, align 8, !tbaa !53
  %69 = call i64 @strtol(ptr noundef nonnull %58, ptr noundef nonnull %4, i32 noundef 10) #13
  %70 = icmp slt i64 %69, 0
  %71 = select i1 %70, i64 %42, i64 0
  %72 = load ptr, ptr %46, align 8, !tbaa !53
  %73 = load ptr, ptr %4, align 8, !tbaa !53
  br label %74

74:                                               ; preds = %74, %68
  %75 = phi ptr [ %82, %74 ], [ %73, %68 ]
  %76 = load i8, ptr %75, align 1, !tbaa !64
  %77 = zext i8 %76 to i64
  %78 = getelementptr inbounds i16, ptr %72, i64 %77
  %79 = load i16, ptr %78, align 2, !tbaa !66
  %80 = and i16 %79, 8192
  %81 = icmp eq i16 %80, 0
  %82 = getelementptr inbounds i8, ptr %75, i64 1
  br i1 %81, label %83, label %74, !llvm.loop !68

83:                                               ; preds = %74
  %84 = add nsw i64 %71, %69
  store ptr %75, ptr %4, align 8, !tbaa !53
  %85 = icmp eq i8 %76, 45
  br i1 %85, label %86, label %92

86:                                               ; preds = %83
  %87 = getelementptr inbounds i8, ptr %75, i64 1
  %88 = call i64 @strtol(ptr noundef nonnull %87, ptr noundef nonnull %4, i32 noundef 10) #13
  %89 = icmp slt i64 %88, 0
  %90 = select i1 %89, i64 %42, i64 0
  %91 = add nsw i64 %90, %88
  br label %92

92:                                               ; preds = %86, %83
  %93 = phi i64 [ %84, %83 ], [ %91, %86 ]
  %94 = icmp sgt i64 %84, %93
  %95 = select i1 %94, i64 -1, i64 1
  %96 = add nsw i64 %95, %93
  %97 = icmp eq i64 %84, %96
  br i1 %97, label %48, label %98

98:                                               ; preds = %92, %144
  %99 = phi i64 [ %146, %144 ], [ %84, %92 ]
  %100 = phi ptr [ %145, %144 ], [ %54, %92 ]
  br i1 %47, label %144, label %101

101:                                              ; preds = %98, %140
  %102 = phi i64 [ %133, %140 ], [ 0, %98 ]
  %103 = phi ptr [ %142, %140 ], [ %19, %98 ]
  %104 = phi ptr [ %132, %140 ], [ %100, %98 ]
  %105 = icmp eq i64 %102, %99
  br i1 %105, label %106, label %131

106:                                              ; preds = %101
  %107 = tail call ptr @CloneImage(ptr noundef nonnull %103, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #13
  %108 = icmp eq ptr %107, null
  br i1 %108, label %144, label %109

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct._Image, ptr %107, i64 0, i32 59
  %111 = load i32, ptr %110, align 8, !tbaa !34
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct._Image, ptr %107, i64 0, i32 53
  %115 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 88, ptr noundef nonnull @.str.2, ptr noundef nonnull %114) #13
  br label %116

116:                                              ; preds = %113, %109
  %117 = icmp eq ptr %104, null
  br i1 %117, label %131, label %118

118:                                              ; preds = %116, %118
  %119 = phi ptr [ %121, %118 ], [ %104, %116 ]
  %120 = getelementptr inbounds %struct._Image, ptr %119, i64 0, i32 69
  %121 = load ptr, ptr %120, align 8, !tbaa !54
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %118, !llvm.loop !55

123:                                              ; preds = %118, %123
  %124 = phi ptr [ %126, %123 ], [ %107, %118 ]
  %125 = getelementptr inbounds %struct._Image, ptr %124, i64 0, i32 67
  %126 = load ptr, ptr %125, align 8, !tbaa !58
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %123, !llvm.loop !59

128:                                              ; preds = %123
  %129 = getelementptr inbounds %struct._Image, ptr %119, i64 0, i32 69
  %130 = getelementptr inbounds %struct._Image, ptr %124, i64 0, i32 67
  store ptr %124, ptr %129, align 8, !tbaa !54
  store ptr %119, ptr %130, align 8, !tbaa !58
  br label %131

131:                                              ; preds = %128, %116, %101
  %132 = phi ptr [ %104, %101 ], [ %104, %128 ], [ %107, %116 ]
  %133 = add nuw nsw i64 %102, 1
  %134 = getelementptr inbounds %struct._Image, ptr %103, i64 0, i32 59
  %135 = load i32, ptr %134, align 8, !tbaa !34
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %131
  %138 = getelementptr inbounds %struct._Image, ptr %103, i64 0, i32 53
  %139 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 760, ptr noundef nonnull @.str.2, ptr noundef nonnull %138) #13
  br label %140

140:                                              ; preds = %137, %131
  %141 = getelementptr inbounds %struct._Image, ptr %103, i64 0, i32 69
  %142 = load ptr, ptr %141, align 8, !tbaa !54
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %101, !llvm.loop !69

144:                                              ; preds = %106, %140, %98
  %145 = phi ptr [ %100, %98 ], [ %104, %106 ], [ %132, %140 ]
  %146 = add nsw i64 %99, %95
  %147 = icmp eq i64 %99, %93
  br i1 %147, label %48, label %98, !llvm.loop !70

148:                                              ; preds = %48, %41
  %149 = phi ptr [ null, %41 ], [ %49, %48 ]
  %150 = icmp eq ptr %149, null
  br i1 %150, label %156, label %151

151:                                              ; preds = %148, %151
  %152 = phi ptr [ %154, %151 ], [ %149, %148 ]
  %153 = getelementptr inbounds %struct._Image, ptr %152, i64 0, i32 67
  %154 = load ptr, ptr %153, align 8, !tbaa !58
  %155 = icmp eq ptr %154, null
  br i1 %155, label %156, label %151, !llvm.loop !59

156:                                              ; preds = %151, %148
  %157 = phi ptr [ null, %148 ], [ %152, %151 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  ret ptr %157
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @NewImageList() local_unnamed_addr #4 {
  ret ptr null
}

; Function Attrs: nounwind uwtable
define dso_local i64 @GetImageListLength(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %23, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 691, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #13
  br label %10

10:                                               ; preds = %7, %3
  br label %11

11:                                               ; preds = %10, %11
  %12 = phi ptr [ %14, %11 ], [ %0, %10 ]
  %13 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 69
  %14 = load ptr, ptr %13, align 8, !tbaa !54
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %11, !llvm.loop !55

16:                                               ; preds = %11, %16
  %17 = phi i64 [ %19, %16 ], [ 0, %11 ]
  %18 = phi ptr [ %21, %16 ], [ %12, %11 ]
  %19 = add nuw nsw i64 %17, 1
  %20 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 67
  %21 = load ptr, ptr %20, align 8, !tbaa !58
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %16, !llvm.loop !63

23:                                               ; preds = %16, %1
  %24 = phi i64 [ 0, %1 ], [ %19, %16 ]
  ret i64 %24
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local ptr @GetNextImageInList(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 760, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #13
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 69
  %12 = load ptr, ptr %11, align 8, !tbaa !54
  br label %13

13:                                               ; preds = %1, %10
  %14 = phi ptr [ %12, %10 ], [ null, %1 ]
  ret ptr %14
}

; Function Attrs: nounwind uwtable
define dso_local void @DeleteImageFromList(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !53
  %3 = icmp eq ptr %2, null
  br i1 %3, label %32, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 988, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #13
  br label %11

11:                                               ; preds = %8, %4
  %12 = load ptr, ptr %0, align 8, !tbaa !53
  %13 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 67
  %14 = load ptr, ptr %13, align 8, !tbaa !58
  %15 = icmp eq ptr %14, null
  %16 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 69
  %17 = load ptr, ptr %16, align 8, !tbaa !54
  br i1 %15, label %18, label %20

18:                                               ; preds = %11
  %19 = icmp eq ptr %17, null
  br i1 %19, label %30, label %22

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 69
  store ptr %17, ptr %21, align 8, !tbaa !54
  store ptr %14, ptr %0, align 8, !tbaa !53
  br label %22

22:                                               ; preds = %18, %20
  %23 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 69
  %24 = load ptr, ptr %23, align 8, !tbaa !54
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %13, align 8, !tbaa !58
  %28 = getelementptr inbounds %struct._Image, ptr %24, i64 0, i32 67
  store ptr %27, ptr %28, align 8, !tbaa !58
  store ptr %24, ptr %0, align 8, !tbaa !53
  br label %29

29:                                               ; preds = %26, %22
  store ptr null, ptr %13, align 8, !tbaa !58
  br label %30

30:                                               ; preds = %18, %29
  %31 = phi ptr [ %23, %29 ], [ %0, %18 ]
  store ptr null, ptr %31, align 8, !tbaa !53
  br label %32

32:                                               ; preds = %30, %1
  %33 = phi ptr [ null, %1 ], [ %12, %30 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = tail call ptr @DestroyImage(ptr noundef nonnull %33) #13
  br label %37

37:                                               ; preds = %35, %32
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RemoveImageFromList(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !53
  %3 = icmp eq ptr %2, null
  br i1 %3, label %35, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 988, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #13
  br label %11

11:                                               ; preds = %8, %4
  %12 = load ptr, ptr %0, align 8, !tbaa !53
  %13 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 67
  %14 = load ptr, ptr %13, align 8, !tbaa !58
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 69
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  %19 = icmp eq ptr %18, null
  br i1 %19, label %33, label %20

20:                                               ; preds = %16
  br i1 %15, label %25, label %21

21:                                               ; preds = %11, %20
  %22 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 69
  %23 = load ptr, ptr %22, align 8, !tbaa !54
  %24 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 69
  store ptr %23, ptr %24, align 8, !tbaa !54
  store ptr %14, ptr %0, align 8, !tbaa !53
  br label %25

25:                                               ; preds = %21, %20
  %26 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 69
  %27 = load ptr, ptr %26, align 8, !tbaa !54
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %13, align 8, !tbaa !58
  %31 = getelementptr inbounds %struct._Image, ptr %27, i64 0, i32 67
  store ptr %30, ptr %31, align 8, !tbaa !58
  store ptr %27, ptr %0, align 8, !tbaa !53
  br label %32

32:                                               ; preds = %29, %25
  store ptr null, ptr %13, align 8, !tbaa !58
  br label %33

33:                                               ; preds = %16, %32
  %34 = phi ptr [ %26, %32 ], [ %0, %16 ]
  store ptr null, ptr %34, align 8, !tbaa !53
  br label %35

35:                                               ; preds = %33, %1
  %36 = phi ptr [ null, %1 ], [ %12, %33 ]
  ret ptr %36
}

declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @DeleteImages(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  %5 = load ptr, ptr %0, align 8, !tbaa !53
  %6 = getelementptr inbounds %struct._Image, ptr %5, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._Image, ptr %5, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 363, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #13
  br label %12

12:                                               ; preds = %9, %3
  %13 = load ptr, ptr %0, align 8, !tbaa !53
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %12, %15
  %16 = phi ptr [ %18, %15 ], [ %13, %12 ]
  %17 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 67
  %18 = load ptr, ptr %17, align 8, !tbaa !58
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %15, !llvm.loop !59

20:                                               ; preds = %15, %12
  %21 = phi ptr [ null, %12 ], [ %16, %15 ]
  store ptr %21, ptr %0, align 8, !tbaa !53
  %22 = icmp eq ptr %21, null
  br i1 %22, label %43, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct._Image, ptr %21, i64 0, i32 59
  %25 = load i32, ptr %24, align 8, !tbaa !34
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct._Image, ptr %21, i64 0, i32 53
  %29 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 691, ptr noundef nonnull @.str.2, ptr noundef nonnull %28) #13
  br label %30

30:                                               ; preds = %27, %23
  br label %31

31:                                               ; preds = %30, %31
  %32 = phi ptr [ %34, %31 ], [ %21, %30 ]
  %33 = getelementptr inbounds %struct._Image, ptr %32, i64 0, i32 69
  %34 = load ptr, ptr %33, align 8, !tbaa !54
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %31, !llvm.loop !55

36:                                               ; preds = %31, %36
  %37 = phi i64 [ %39, %36 ], [ 0, %31 ]
  %38 = phi ptr [ %41, %36 ], [ %32, %31 ]
  %39 = add nuw nsw i64 %37, 1
  %40 = getelementptr inbounds %struct._Image, ptr %38, i64 0, i32 67
  %41 = load ptr, ptr %40, align 8, !tbaa !58
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %36, !llvm.loop !63

43:                                               ; preds = %36, %20
  %44 = phi i64 [ 0, %20 ], [ %39, %36 ]
  %45 = tail call ptr @AcquireQuantumMemory(i64 noundef %44, i64 noundef 4) #15
  %46 = icmp eq ptr %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = icmp sgt i64 %44, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %47
  %50 = shl nuw i64 %44, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %45, i8 0, i64 %50, i1 false), !tbaa !71
  br label %55

51:                                               ; preds = %43
  %52 = load ptr, ptr %0, align 8, !tbaa !53
  %53 = getelementptr inbounds %struct._Image, ptr %52, i64 0, i32 53
  %54 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 373, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %53) #13
  br label %188

55:                                               ; preds = %49, %47
  store ptr %1, ptr %4, align 8, !tbaa !53
  %56 = load i8, ptr %1, align 1, !tbaa !64
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %115, label %58

58:                                               ; preds = %55
  %59 = tail call ptr @__ctype_b_loc() #14
  br label %60

60:                                               ; preds = %58, %101
  %61 = load ptr, ptr %59, align 8, !tbaa !53
  %62 = load ptr, ptr %4, align 8, !tbaa !53
  br label %63

63:                                               ; preds = %63, %60
  %64 = phi ptr [ %62, %60 ], [ %73, %63 ]
  %65 = load i8, ptr %64, align 1, !tbaa !64
  %66 = zext i8 %65 to i64
  %67 = getelementptr inbounds i16, ptr %61, i64 %66
  %68 = load i16, ptr %67, align 2, !tbaa !66
  %69 = and i16 %68, 8192
  %70 = icmp ne i16 %69, 0
  %71 = icmp eq i8 %65, 44
  %72 = or i1 %71, %70
  %73 = getelementptr inbounds i8, ptr %64, i64 1
  br i1 %72, label %63, label %74, !llvm.loop !72

74:                                               ; preds = %63
  store ptr %64, ptr %4, align 8, !tbaa !53
  %75 = call i64 @strtol(ptr noundef nonnull %64, ptr noundef nonnull %4, i32 noundef 10) #13
  %76 = icmp slt i64 %75, 0
  %77 = select i1 %76, i64 %44, i64 0
  %78 = load ptr, ptr %59, align 8, !tbaa !53
  %79 = load ptr, ptr %4, align 8, !tbaa !53
  br label %80

80:                                               ; preds = %80, %74
  %81 = phi ptr [ %88, %80 ], [ %79, %74 ]
  %82 = load i8, ptr %81, align 1, !tbaa !64
  %83 = zext i8 %82 to i64
  %84 = getelementptr inbounds i16, ptr %78, i64 %83
  %85 = load i16, ptr %84, align 2, !tbaa !66
  %86 = and i16 %85, 8192
  %87 = icmp eq i16 %86, 0
  %88 = getelementptr inbounds i8, ptr %81, i64 1
  br i1 %87, label %89, label %80, !llvm.loop !73

89:                                               ; preds = %80
  %90 = add nsw i64 %77, %75
  store ptr %81, ptr %4, align 8, !tbaa !53
  %91 = icmp eq i8 %82, 45
  br i1 %91, label %92, label %98

92:                                               ; preds = %89
  %93 = getelementptr inbounds i8, ptr %81, i64 1
  %94 = call i64 @strtol(ptr noundef nonnull %93, ptr noundef nonnull %4, i32 noundef 10) #13
  %95 = icmp slt i64 %94, 0
  %96 = select i1 %95, i64 %44, i64 0
  %97 = add nsw i64 %96, %94
  br label %98

98:                                               ; preds = %92, %89
  %99 = phi i64 [ %90, %89 ], [ %97, %92 ]
  %100 = icmp sgt i64 %90, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %112, %98
  %102 = load ptr, ptr %4, align 8, !tbaa !53
  %103 = load i8, ptr %102, align 1, !tbaa !64
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %115, label %60, !llvm.loop !74

105:                                              ; preds = %98, %112
  %106 = phi i64 [ %113, %112 ], [ %90, %98 ]
  %107 = icmp sgt i64 %106, -1
  %108 = icmp slt i64 %106, %44
  %109 = and i1 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %105
  %111 = getelementptr inbounds i32, ptr %45, i64 %106
  store i32 1, ptr %111, align 4, !tbaa !71
  br label %112

112:                                              ; preds = %105, %110
  %113 = add i64 %106, 1
  %114 = icmp eq i64 %106, %99
  br i1 %114, label %101, label %105, !llvm.loop !75

115:                                              ; preds = %101, %55
  %116 = icmp sgt i64 %44, 0
  br i1 %116, label %117, label %177

117:                                              ; preds = %115
  %118 = load ptr, ptr %0, align 8, !tbaa !53
  br label %119

119:                                              ; preds = %117, %174
  %120 = phi ptr [ %134, %174 ], [ %118, %117 ]
  %121 = phi i64 [ %175, %174 ], [ 0, %117 ]
  store ptr %120, ptr %0, align 8, !tbaa !53
  %122 = icmp eq ptr %120, null
  br i1 %122, label %133, label %123

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct._Image, ptr %120, i64 0, i32 59
  %125 = load i32, ptr %124, align 8, !tbaa !34
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct._Image, ptr %120, i64 0, i32 53
  %129 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 760, ptr noundef nonnull @.str.2, ptr noundef nonnull %128) #13
  br label %130

130:                                              ; preds = %127, %123
  %131 = getelementptr inbounds %struct._Image, ptr %120, i64 0, i32 69
  %132 = load ptr, ptr %131, align 8, !tbaa !54
  br label %133

133:                                              ; preds = %119, %130
  %134 = phi ptr [ %132, %130 ], [ null, %119 ]
  %135 = getelementptr inbounds i32, ptr %45, i64 %121
  %136 = load i32, ptr %135, align 4, !tbaa !71
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %174, label %138

138:                                              ; preds = %133
  %139 = load ptr, ptr %0, align 8, !tbaa !53
  %140 = icmp eq ptr %139, null
  br i1 %140, label %169, label %141

141:                                              ; preds = %138
  %142 = getelementptr inbounds %struct._Image, ptr %139, i64 0, i32 59
  %143 = load i32, ptr %142, align 8, !tbaa !34
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct._Image, ptr %139, i64 0, i32 53
  %147 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 988, ptr noundef nonnull @.str.2, ptr noundef nonnull %146) #13
  br label %148

148:                                              ; preds = %145, %141
  %149 = load ptr, ptr %0, align 8, !tbaa !53
  %150 = getelementptr inbounds %struct._Image, ptr %149, i64 0, i32 67
  %151 = load ptr, ptr %150, align 8, !tbaa !58
  %152 = icmp eq ptr %151, null
  %153 = getelementptr inbounds %struct._Image, ptr %149, i64 0, i32 69
  %154 = load ptr, ptr %153, align 8, !tbaa !54
  br i1 %152, label %155, label %157

155:                                              ; preds = %148
  %156 = icmp eq ptr %154, null
  br i1 %156, label %167, label %159

157:                                              ; preds = %148
  %158 = getelementptr inbounds %struct._Image, ptr %151, i64 0, i32 69
  store ptr %154, ptr %158, align 8, !tbaa !54
  store ptr %151, ptr %0, align 8, !tbaa !53
  br label %159

159:                                              ; preds = %155, %157
  %160 = getelementptr inbounds %struct._Image, ptr %149, i64 0, i32 69
  %161 = load ptr, ptr %160, align 8, !tbaa !54
  %162 = icmp eq ptr %161, null
  br i1 %162, label %166, label %163

163:                                              ; preds = %159
  %164 = load ptr, ptr %150, align 8, !tbaa !58
  %165 = getelementptr inbounds %struct._Image, ptr %161, i64 0, i32 67
  store ptr %164, ptr %165, align 8, !tbaa !58
  store ptr %161, ptr %0, align 8, !tbaa !53
  br label %166

166:                                              ; preds = %163, %159
  store ptr null, ptr %150, align 8, !tbaa !58
  br label %167

167:                                              ; preds = %155, %166
  %168 = phi ptr [ %160, %166 ], [ %0, %155 ]
  store ptr null, ptr %168, align 8, !tbaa !53
  br label %169

169:                                              ; preds = %167, %138
  %170 = phi ptr [ null, %138 ], [ %149, %167 ]
  %171 = icmp eq ptr %170, null
  br i1 %171, label %174, label %172

172:                                              ; preds = %169
  %173 = tail call ptr @DestroyImage(ptr noundef nonnull %170) #13
  br label %174

174:                                              ; preds = %172, %169, %133
  %175 = add nuw nsw i64 %121, 1
  %176 = icmp eq i64 %175, %44
  br i1 %176, label %177, label %119, !llvm.loop !76

177:                                              ; preds = %174, %115
  %178 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %45) #13
  %179 = load ptr, ptr %0, align 8, !tbaa !53
  %180 = icmp eq ptr %179, null
  br i1 %180, label %186, label %181

181:                                              ; preds = %177, %181
  %182 = phi ptr [ %184, %181 ], [ %179, %177 ]
  %183 = getelementptr inbounds %struct._Image, ptr %182, i64 0, i32 67
  %184 = load ptr, ptr %183, align 8, !tbaa !58
  %185 = icmp eq ptr %184, null
  br i1 %185, label %186, label %181, !llvm.loop !59

186:                                              ; preds = %181, %177
  %187 = phi ptr [ null, %177 ], [ %182, %181 ]
  store ptr %187, ptr %0, align 8, !tbaa !53
  br label %188

188:                                              ; preds = %186, %51
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  ret void
}

; Function Attrs: allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #7

declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @DuplicateImages(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 508, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #13
  br label %11

11:                                               ; preds = %8, %4
  %12 = icmp sgt i64 %1, 0
  br i1 %12, label %13, label %44

13:                                               ; preds = %11, %40
  %14 = phi i64 [ %42, %40 ], [ 0, %11 ]
  %15 = phi ptr [ %41, %40 ], [ null, %11 ]
  %16 = tail call ptr @CloneImages(ptr noundef %0, ptr noundef %2, ptr noundef %3)
  %17 = icmp eq ptr %16, null
  br i1 %17, label %40, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 59
  %20 = load i32, ptr %19, align 8, !tbaa !34
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 53
  %24 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 88, ptr noundef nonnull @.str.2, ptr noundef nonnull %23) #13
  br label %25

25:                                               ; preds = %22, %18
  %26 = icmp eq ptr %15, null
  br i1 %26, label %40, label %27

27:                                               ; preds = %25, %27
  %28 = phi ptr [ %30, %27 ], [ %15, %25 ]
  %29 = getelementptr inbounds %struct._Image, ptr %28, i64 0, i32 69
  %30 = load ptr, ptr %29, align 8, !tbaa !54
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %27, !llvm.loop !55

32:                                               ; preds = %27, %32
  %33 = phi ptr [ %35, %32 ], [ %16, %27 ]
  %34 = getelementptr inbounds %struct._Image, ptr %33, i64 0, i32 67
  %35 = load ptr, ptr %34, align 8, !tbaa !58
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %32, !llvm.loop !59

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct._Image, ptr %28, i64 0, i32 69
  %39 = getelementptr inbounds %struct._Image, ptr %33, i64 0, i32 67
  store ptr %33, ptr %38, align 8, !tbaa !54
  store ptr %28, ptr %39, align 8, !tbaa !58
  br label %40

40:                                               ; preds = %25, %13, %37
  %41 = phi ptr [ %15, %13 ], [ %15, %37 ], [ %16, %25 ]
  %42 = add nuw nsw i64 %14, 1
  %43 = icmp eq i64 %42, %1
  br i1 %43, label %44, label %13, !llvm.loop !77

44:                                               ; preds = %40, %11
  %45 = phi ptr [ null, %11 ], [ %41, %40 ]
  ret ptr %45
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetImageFromList(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %41, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 598, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #13
  br label %11

11:                                               ; preds = %8, %4
  %12 = icmp slt i64 %1, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %11, %13
  %14 = phi ptr [ %16, %13 ], [ %0, %11 ]
  %15 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 69
  %16 = load ptr, ptr %15, align 8, !tbaa !54
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %13, !llvm.loop !55

18:                                               ; preds = %13, %22
  %19 = phi i64 [ %23, %22 ], [ -1, %13 ]
  %20 = phi ptr [ %25, %22 ], [ %14, %13 ]
  %21 = icmp eq i64 %19, %1
  br i1 %21, label %41, label %22

22:                                               ; preds = %18
  %23 = add nsw i64 %19, -1
  %24 = getelementptr inbounds %struct._Image, ptr %20, i64 0, i32 67
  %25 = load ptr, ptr %24, align 8, !tbaa !58
  %26 = icmp eq ptr %25, null
  br i1 %26, label %41, label %18, !llvm.loop !78

27:                                               ; preds = %11, %27
  %28 = phi ptr [ %30, %27 ], [ %0, %11 ]
  %29 = getelementptr inbounds %struct._Image, ptr %28, i64 0, i32 67
  %30 = load ptr, ptr %29, align 8, !tbaa !58
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %27, !llvm.loop !59

32:                                               ; preds = %27, %36
  %33 = phi i64 [ %37, %36 ], [ 0, %27 ]
  %34 = phi ptr [ %39, %36 ], [ %28, %27 ]
  %35 = icmp eq i64 %33, %1
  br i1 %35, label %41, label %36

36:                                               ; preds = %32
  %37 = add nuw nsw i64 %33, 1
  %38 = getelementptr inbounds %struct._Image, ptr %34, i64 0, i32 69
  %39 = load ptr, ptr %38, align 8, !tbaa !54
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %32, !llvm.loop !79

41:                                               ; preds = %32, %36, %18, %22, %2
  %42 = phi ptr [ null, %2 ], [ %20, %18 ], [ null, %22 ], [ %34, %32 ], [ null, %36 ]
  ret ptr %42
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @GetImageIndexInList(ptr noundef readonly %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1, %3
  %4 = phi ptr [ %7, %3 ], [ %0, %1 ]
  %5 = phi i64 [ %9, %3 ], [ 0, %1 ]
  %6 = getelementptr inbounds %struct._Image, ptr %4, i64 0, i32 67
  %7 = load ptr, ptr %6, align 8, !tbaa !58
  %8 = icmp eq ptr %7, null
  %9 = add nuw nsw i64 %5, 1
  br i1 %8, label %10, label %3, !llvm.loop !80

10:                                               ; preds = %3, %1
  %11 = phi i64 [ -1, %1 ], [ %5, %3 ]
  ret i64 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @GetPreviousImageInList(ptr noundef readonly %0) local_unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 67
  %5 = load ptr, ptr %4, align 8, !tbaa !58
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ImageListToArray(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %52, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 840, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #13
  br label %11

11:                                               ; preds = %4, %8
  %12 = load i32, ptr %5, align 8, !tbaa !34
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %16 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 691, ptr noundef nonnull @.str.2, ptr noundef nonnull %15) #13
  br label %17

17:                                               ; preds = %14, %11
  br label %18

18:                                               ; preds = %17, %18
  %19 = phi ptr [ %21, %18 ], [ %0, %17 ]
  %20 = getelementptr inbounds %struct._Image, ptr %19, i64 0, i32 69
  %21 = load ptr, ptr %20, align 8, !tbaa !54
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %18, !llvm.loop !55

23:                                               ; preds = %18, %23
  %24 = phi i64 [ %26, %23 ], [ 0, %18 ]
  %25 = phi ptr [ %28, %23 ], [ %19, %18 ]
  %26 = add nuw nsw i64 %24, 1
  %27 = getelementptr inbounds %struct._Image, ptr %25, i64 0, i32 67
  %28 = load ptr, ptr %27, align 8, !tbaa !58
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %23, !llvm.loop !63

30:                                               ; preds = %23
  %31 = add nuw i64 %24, 2
  %32 = tail call ptr @AcquireQuantumMemory(i64 noundef %31, i64 noundef 8) #15
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %36 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 845, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %35) #13
  br label %52

37:                                               ; preds = %30, %37
  %38 = phi ptr [ %40, %37 ], [ %0, %30 ]
  %39 = getelementptr inbounds %struct._Image, ptr %38, i64 0, i32 67
  %40 = load ptr, ptr %39, align 8, !tbaa !58
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %37, !llvm.loop !59

42:                                               ; preds = %37, %42
  %43 = phi i64 [ %45, %42 ], [ 0, %37 ]
  %44 = phi ptr [ %48, %42 ], [ %38, %37 ]
  %45 = add nuw nsw i64 %43, 1
  %46 = getelementptr inbounds ptr, ptr %32, i64 %43
  store ptr %44, ptr %46, align 8, !tbaa !53
  %47 = getelementptr inbounds %struct._Image, ptr %44, i64 0, i32 69
  %48 = load ptr, ptr %47, align 8, !tbaa !54
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %42, !llvm.loop !81

50:                                               ; preds = %42
  %51 = getelementptr inbounds ptr, ptr %32, i64 %45
  store ptr null, ptr %51, align 8, !tbaa !53
  br label %52

52:                                               ; preds = %2, %50, %34
  %53 = phi ptr [ null, %34 ], [ %32, %50 ], [ null, %2 ]
  ret ptr %53
}

; Function Attrs: nounwind uwtable
define dso_local void @InsertImageInList(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 891, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #13
  br label %9

9:                                                ; preds = %6, %2
  %10 = load ptr, ptr %0, align 8, !tbaa !53
  %11 = icmp eq ptr %10, null
  br i1 %11, label %72, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct._Image, ptr %10, i64 0, i32 69
  %14 = load ptr, ptr %13, align 8, !tbaa !54
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 67
  %18 = load ptr, ptr %17, align 8, !tbaa !58
  %19 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 69
  store ptr null, ptr %19, align 8, !tbaa !54
  store ptr null, ptr %17, align 8, !tbaa !58
  br label %20

20:                                               ; preds = %12, %16
  %21 = phi ptr [ %14, %16 ], [ null, %12 ]
  %22 = icmp eq ptr %1, null
  br i1 %22, label %46, label %23

23:                                               ; preds = %20
  %24 = load i32, ptr %3, align 8, !tbaa !34
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %28 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 88, ptr noundef nonnull @.str.2, ptr noundef nonnull %27) #13
  br label %29

29:                                               ; preds = %26, %23
  %30 = load ptr, ptr %0, align 8, !tbaa !53
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store ptr %1, ptr %0, align 8, !tbaa !53
  br label %46

33:                                               ; preds = %29, %33
  %34 = phi ptr [ %36, %33 ], [ %30, %29 ]
  %35 = getelementptr inbounds %struct._Image, ptr %34, i64 0, i32 69
  %36 = load ptr, ptr %35, align 8, !tbaa !54
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %33, !llvm.loop !55

38:                                               ; preds = %33, %38
  %39 = phi ptr [ %41, %38 ], [ %1, %33 ]
  %40 = getelementptr inbounds %struct._Image, ptr %39, i64 0, i32 67
  %41 = load ptr, ptr %40, align 8, !tbaa !58
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %38, !llvm.loop !59

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct._Image, ptr %34, i64 0, i32 69
  %45 = getelementptr inbounds %struct._Image, ptr %39, i64 0, i32 67
  store ptr %39, ptr %44, align 8, !tbaa !54
  store ptr %34, ptr %45, align 8, !tbaa !58
  br label %46

46:                                               ; preds = %20, %32, %43
  %47 = icmp eq ptr %21, null
  br i1 %47, label %72, label %48

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct._Image, ptr %21, i64 0, i32 59
  %50 = load i32, ptr %49, align 8, !tbaa !34
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct._Image, ptr %21, i64 0, i32 53
  %54 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 88, ptr noundef nonnull @.str.2, ptr noundef nonnull %53) #13
  br label %55

55:                                               ; preds = %52, %48
  %56 = load ptr, ptr %0, align 8, !tbaa !53
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store ptr %21, ptr %0, align 8, !tbaa !53
  br label %72

59:                                               ; preds = %55, %59
  %60 = phi ptr [ %62, %59 ], [ %56, %55 ]
  %61 = getelementptr inbounds %struct._Image, ptr %60, i64 0, i32 69
  %62 = load ptr, ptr %61, align 8, !tbaa !54
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %59, !llvm.loop !55

64:                                               ; preds = %59, %64
  %65 = phi ptr [ %67, %64 ], [ %21, %59 ]
  %66 = getelementptr inbounds %struct._Image, ptr %65, i64 0, i32 67
  %67 = load ptr, ptr %66, align 8, !tbaa !58
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %64, !llvm.loop !59

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct._Image, ptr %60, i64 0, i32 69
  %71 = getelementptr inbounds %struct._Image, ptr %65, i64 0, i32 67
  store ptr %65, ptr %70, align 8, !tbaa !54
  store ptr %60, ptr %71, align 8, !tbaa !58
  br label %72

72:                                               ; preds = %69, %58, %46, %9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @SplitImageList(ptr noundef readonly %0) local_unnamed_addr #9 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 69
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %5, i64 0, i32 67
  %9 = load ptr, ptr %8, align 8, !tbaa !58
  %10 = getelementptr inbounds %struct._Image, ptr %9, i64 0, i32 69
  store ptr null, ptr %10, align 8, !tbaa !54
  store ptr null, ptr %8, align 8, !tbaa !58
  br label %11

11:                                               ; preds = %1, %3, %7
  %12 = phi ptr [ %5, %7 ], [ null, %3 ], [ null, %1 ]
  ret ptr %12
}

; Function Attrs: nounwind uwtable
define dso_local void @PrependImageToList(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !53
  %4 = icmp eq ptr %3, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct._Image, ptr %3, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._Image, ptr %3, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 88, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #13
  br label %12

12:                                               ; preds = %9, %5
  %13 = icmp eq ptr %1, null
  br i1 %13, label %27, label %14

14:                                               ; preds = %12, %14
  %15 = phi ptr [ %17, %14 ], [ %1, %12 ]
  %16 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 69
  %17 = load ptr, ptr %16, align 8, !tbaa !54
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %14, !llvm.loop !55

19:                                               ; preds = %14, %19
  %20 = phi ptr [ %22, %19 ], [ %3, %14 ]
  %21 = getelementptr inbounds %struct._Image, ptr %20, i64 0, i32 67
  %22 = load ptr, ptr %21, align 8, !tbaa !58
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %19, !llvm.loop !59

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 69
  %26 = getelementptr inbounds %struct._Image, ptr %20, i64 0, i32 67
  store ptr %20, ptr %25, align 8, !tbaa !54
  store ptr %15, ptr %26, align 8, !tbaa !58
  br label %27

27:                                               ; preds = %12, %2, %24
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RemoveFirstImageFromList(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !53
  %3 = icmp eq ptr %2, null
  br i1 %3, label %29, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1047, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #13
  br label %11

11:                                               ; preds = %8, %4
  %12 = load ptr, ptr %0, align 8, !tbaa !53
  br label %13

13:                                               ; preds = %13, %11
  %14 = phi ptr [ %12, %11 ], [ %16, %13 ]
  %15 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 67
  %16 = load ptr, ptr %15, align 8, !tbaa !58
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %13, !llvm.loop !82

18:                                               ; preds = %13
  %19 = icmp eq ptr %14, %12
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 69
  %22 = load ptr, ptr %21, align 8, !tbaa !54
  store ptr %22, ptr %0, align 8, !tbaa !53
  br label %23

23:                                               ; preds = %20, %18
  %24 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 69
  %25 = load ptr, ptr %24, align 8, !tbaa !54
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct._Image, ptr %25, i64 0, i32 67
  store ptr null, ptr %28, align 8, !tbaa !58
  store ptr null, ptr %24, align 8, !tbaa !54
  br label %29

29:                                               ; preds = %23, %27, %1
  %30 = phi ptr [ null, %1 ], [ %14, %27 ], [ %14, %23 ]
  ret ptr %30
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RemoveLastImageFromList(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !53
  %3 = icmp eq ptr %2, null
  br i1 %3, label %29, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1098, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #13
  br label %11

11:                                               ; preds = %8, %4
  %12 = load ptr, ptr %0, align 8, !tbaa !53
  br label %13

13:                                               ; preds = %13, %11
  %14 = phi ptr [ %12, %11 ], [ %16, %13 ]
  %15 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 69
  %16 = load ptr, ptr %15, align 8, !tbaa !54
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %13, !llvm.loop !83

18:                                               ; preds = %13
  %19 = icmp eq ptr %14, %12
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 67
  %22 = load ptr, ptr %21, align 8, !tbaa !58
  store ptr %22, ptr %0, align 8, !tbaa !53
  br label %23

23:                                               ; preds = %20, %18
  %24 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 67
  %25 = load ptr, ptr %24, align 8, !tbaa !58
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct._Image, ptr %25, i64 0, i32 69
  store ptr null, ptr %28, align 8, !tbaa !54
  store ptr null, ptr %24, align 8, !tbaa !58
  br label %29

29:                                               ; preds = %23, %27, %1
  %30 = phi ptr [ null, %1 ], [ %14, %27 ], [ %14, %23 ]
  ret ptr %30
}

; Function Attrs: nounwind uwtable
define dso_local void @ReplaceImageInList(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1147, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #13
  br label %9

9:                                                ; preds = %6, %2
  %10 = load ptr, ptr %0, align 8, !tbaa !53
  %11 = icmp eq ptr %10, null
  br i1 %11, label %45, label %12

12:                                               ; preds = %9
  %13 = icmp eq ptr %1, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %12, %14
  %15 = phi ptr [ %17, %14 ], [ %1, %12 ]
  %16 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 69
  %17 = load ptr, ptr %16, align 8, !tbaa !54
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %14, !llvm.loop !55

19:                                               ; preds = %14, %12
  %20 = phi ptr [ null, %12 ], [ %15, %14 ]
  %21 = getelementptr inbounds %struct._Image, ptr %10, i64 0, i32 69
  %22 = load ptr, ptr %21, align 8, !tbaa !54
  %23 = getelementptr inbounds %struct._Image, ptr %20, i64 0, i32 69
  store ptr %22, ptr %23, align 8, !tbaa !54
  %24 = icmp eq ptr %22, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct._Image, ptr %22, i64 0, i32 67
  store ptr %20, ptr %26, align 8, !tbaa !58
  br label %27

27:                                               ; preds = %25, %19
  %28 = icmp ne ptr %20, null
  tail call void @llvm.assume(i1 %28)
  br label %29

29:                                               ; preds = %27, %29
  %30 = phi ptr [ %20, %27 ], [ %32, %29 ]
  %31 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 67
  %32 = load ptr, ptr %31, align 8, !tbaa !58
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %29, !llvm.loop !59

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 67
  %36 = load ptr, ptr %0, align 8, !tbaa !53
  %37 = getelementptr inbounds %struct._Image, ptr %36, i64 0, i32 67
  %38 = load ptr, ptr %37, align 8, !tbaa !58
  store ptr %38, ptr %35, align 8, !tbaa !58
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct._Image, ptr %38, i64 0, i32 69
  store ptr %30, ptr %41, align 8, !tbaa !54
  br label %42

42:                                               ; preds = %40, %34
  %43 = load ptr, ptr %0, align 8, !tbaa !53
  %44 = tail call ptr @DestroyImage(ptr noundef %43) #13
  store ptr %30, ptr %0, align 8, !tbaa !53
  br label %45

45:                                               ; preds = %9, %42
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ReplaceImageInListReturnLast(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1205, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #13
  br label %9

9:                                                ; preds = %6, %2
  %10 = load ptr, ptr %0, align 8, !tbaa !53
  %11 = icmp eq ptr %10, null
  br i1 %11, label %45, label %12

12:                                               ; preds = %9
  %13 = icmp eq ptr %1, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %12, %14
  %15 = phi ptr [ %17, %14 ], [ %1, %12 ]
  %16 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 67
  %17 = load ptr, ptr %16, align 8, !tbaa !58
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %14, !llvm.loop !59

19:                                               ; preds = %14, %12
  %20 = phi ptr [ null, %12 ], [ %15, %14 ]
  %21 = getelementptr inbounds %struct._Image, ptr %10, i64 0, i32 67
  %22 = load ptr, ptr %21, align 8, !tbaa !58
  %23 = getelementptr inbounds %struct._Image, ptr %20, i64 0, i32 67
  store ptr %22, ptr %23, align 8, !tbaa !58
  %24 = icmp eq ptr %22, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct._Image, ptr %22, i64 0, i32 69
  store ptr %20, ptr %26, align 8, !tbaa !54
  br label %27

27:                                               ; preds = %25, %19
  %28 = icmp ne ptr %20, null
  tail call void @llvm.assume(i1 %28)
  br label %29

29:                                               ; preds = %27, %29
  %30 = phi ptr [ %20, %27 ], [ %32, %29 ]
  %31 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 69
  %32 = load ptr, ptr %31, align 8, !tbaa !54
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %29, !llvm.loop !55

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 69
  %36 = load ptr, ptr %0, align 8, !tbaa !53
  %37 = getelementptr inbounds %struct._Image, ptr %36, i64 0, i32 69
  %38 = load ptr, ptr %37, align 8, !tbaa !54
  store ptr %38, ptr %35, align 8, !tbaa !54
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct._Image, ptr %38, i64 0, i32 67
  store ptr %30, ptr %41, align 8, !tbaa !58
  br label %42

42:                                               ; preds = %40, %34
  %43 = load ptr, ptr %0, align 8, !tbaa !53
  %44 = tail call ptr @DestroyImage(ptr noundef %43) #13
  store ptr %30, ptr %0, align 8, !tbaa !53
  br label %45

45:                                               ; preds = %9, %42
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ReverseImageList(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !53
  %3 = icmp eq ptr %2, null
  br i1 %3, label %27, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1263, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #13
  br label %11

11:                                               ; preds = %8, %4
  %12 = load ptr, ptr %0, align 8, !tbaa !53
  br label %13

13:                                               ; preds = %13, %11
  %14 = phi ptr [ %12, %11 ], [ %16, %13 ]
  %15 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 69
  %16 = load ptr, ptr %15, align 8, !tbaa !54
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %13, !llvm.loop !84

18:                                               ; preds = %13
  store ptr %14, ptr %0, align 8, !tbaa !53
  %19 = icmp eq ptr %14, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %18, %20
  %21 = phi ptr [ %25, %20 ], [ %14, %18 ]
  %22 = getelementptr inbounds %struct._Image, ptr %21, i64 0, i32 69
  %23 = load ptr, ptr %22, align 8, !tbaa !54
  %24 = getelementptr inbounds %struct._Image, ptr %21, i64 0, i32 67
  %25 = load ptr, ptr %24, align 8, !tbaa !58
  store ptr %25, ptr %22, align 8, !tbaa !54
  store ptr %23, ptr %24, align 8, !tbaa !58
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %20, !llvm.loop !85

27:                                               ; preds = %20, %18, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @SpliceImageIntoList(ptr nocapture noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !53
  %5 = icmp eq ptr %4, null
  br i1 %5, label %141, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._Image, ptr %4, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._Image, ptr %4, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1320, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #13
  br label %13

13:                                               ; preds = %10, %6
  %14 = load ptr, ptr %0, align 8, !tbaa !53
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 69
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 67
  %22 = load ptr, ptr %21, align 8, !tbaa !58
  %23 = getelementptr inbounds %struct._Image, ptr %22, i64 0, i32 69
  store ptr null, ptr %23, align 8, !tbaa !54
  store ptr null, ptr %21, align 8, !tbaa !58
  br label %24

24:                                               ; preds = %13, %16, %20
  %25 = phi ptr [ %18, %20 ], [ null, %16 ], [ null, %13 ]
  %26 = icmp eq ptr %2, null
  br i1 %26, label %51, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 59
  %29 = load i32, ptr %28, align 8, !tbaa !34
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 53
  %33 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 88, ptr noundef nonnull @.str.2, ptr noundef nonnull %32) #13
  br label %34

34:                                               ; preds = %31, %27
  %35 = load ptr, ptr %0, align 8, !tbaa !53
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store ptr %2, ptr %0, align 8, !tbaa !53
  br label %51

38:                                               ; preds = %34, %38
  %39 = phi ptr [ %41, %38 ], [ %35, %34 ]
  %40 = getelementptr inbounds %struct._Image, ptr %39, i64 0, i32 69
  %41 = load ptr, ptr %40, align 8, !tbaa !54
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %38, !llvm.loop !55

43:                                               ; preds = %38, %43
  %44 = phi ptr [ %46, %43 ], [ %2, %38 ]
  %45 = getelementptr inbounds %struct._Image, ptr %44, i64 0, i32 67
  %46 = load ptr, ptr %45, align 8, !tbaa !58
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %43, !llvm.loop !59

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct._Image, ptr %39, i64 0, i32 69
  %50 = getelementptr inbounds %struct._Image, ptr %44, i64 0, i32 67
  store ptr %44, ptr %49, align 8, !tbaa !54
  store ptr %39, ptr %50, align 8, !tbaa !58
  br label %51

51:                                               ; preds = %24, %37, %48
  %52 = icmp ne i64 %1, 0
  %53 = icmp ne ptr %25, null
  %54 = and i1 %52, %53
  br i1 %54, label %55, label %113

55:                                               ; preds = %51, %107
  %56 = phi i64 [ %109, %107 ], [ 0, %51 ]
  %57 = phi ptr [ %85, %107 ], [ %25, %51 ]
  %58 = phi ptr [ %108, %107 ], [ null, %51 ]
  %59 = getelementptr inbounds %struct._Image, ptr %57, i64 0, i32 59
  %60 = load i32, ptr %59, align 8, !tbaa !34
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct._Image, ptr %57, i64 0, i32 53
  %64 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 988, ptr noundef nonnull @.str.2, ptr noundef nonnull %63) #13
  br label %65

65:                                               ; preds = %62, %55
  %66 = getelementptr inbounds %struct._Image, ptr %57, i64 0, i32 67
  %67 = load ptr, ptr %66, align 8, !tbaa !58
  %68 = icmp eq ptr %67, null
  %69 = getelementptr inbounds %struct._Image, ptr %57, i64 0, i32 69
  %70 = load ptr, ptr %69, align 8, !tbaa !54
  br i1 %68, label %71, label %73

71:                                               ; preds = %65
  %72 = icmp eq ptr %70, null
  br i1 %72, label %84, label %75

73:                                               ; preds = %65
  %74 = getelementptr inbounds %struct._Image, ptr %67, i64 0, i32 69
  store ptr %70, ptr %74, align 8, !tbaa !54
  br label %75

75:                                               ; preds = %71, %73
  %76 = phi ptr [ %67, %73 ], [ %57, %71 ]
  %77 = getelementptr inbounds %struct._Image, ptr %57, i64 0, i32 69
  %78 = load ptr, ptr %77, align 8, !tbaa !54
  %79 = icmp eq ptr %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct._Image, ptr %78, i64 0, i32 67
  store ptr %67, ptr %81, align 8, !tbaa !58
  br label %82

82:                                               ; preds = %80, %75
  %83 = phi ptr [ %76, %75 ], [ %78, %80 ]
  store ptr null, ptr %66, align 8, !tbaa !58
  store ptr null, ptr %77, align 8, !tbaa !54
  br label %84

84:                                               ; preds = %82, %71
  %85 = phi ptr [ %83, %82 ], [ null, %71 ]
  %86 = getelementptr inbounds %struct._Image, ptr %57, i64 0, i32 59
  %87 = load i32, ptr %86, align 8, !tbaa !34
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct._Image, ptr %57, i64 0, i32 53
  %91 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 88, ptr noundef nonnull @.str.2, ptr noundef nonnull %90) #13
  br label %92

92:                                               ; preds = %89, %84
  %93 = icmp eq ptr %58, null
  br i1 %93, label %107, label %94

94:                                               ; preds = %92, %94
  %95 = phi ptr [ %97, %94 ], [ %58, %92 ]
  %96 = getelementptr inbounds %struct._Image, ptr %95, i64 0, i32 69
  %97 = load ptr, ptr %96, align 8, !tbaa !54
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %94, !llvm.loop !55

99:                                               ; preds = %94, %99
  %100 = phi ptr [ %102, %99 ], [ %57, %94 ]
  %101 = getelementptr inbounds %struct._Image, ptr %100, i64 0, i32 67
  %102 = load ptr, ptr %101, align 8, !tbaa !58
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %99, !llvm.loop !59

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct._Image, ptr %95, i64 0, i32 69
  %106 = getelementptr inbounds %struct._Image, ptr %100, i64 0, i32 67
  store ptr %100, ptr %105, align 8, !tbaa !54
  store ptr %95, ptr %106, align 8, !tbaa !58
  br label %107

107:                                              ; preds = %92, %104
  %108 = phi ptr [ %58, %104 ], [ %57, %92 ]
  %109 = add nuw i64 %56, 1
  %110 = icmp ult i64 %109, %1
  %111 = icmp ne ptr %85, null
  %112 = and i1 %110, %111
  br i1 %112, label %55, label %113, !llvm.loop !86

113:                                              ; preds = %107, %51
  %114 = phi ptr [ null, %51 ], [ %108, %107 ]
  %115 = phi ptr [ %25, %51 ], [ %85, %107 ]
  %116 = icmp eq ptr %115, null
  br i1 %116, label %141, label %117

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct._Image, ptr %115, i64 0, i32 59
  %119 = load i32, ptr %118, align 8, !tbaa !34
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct._Image, ptr %115, i64 0, i32 53
  %123 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 88, ptr noundef nonnull @.str.2, ptr noundef nonnull %122) #13
  br label %124

124:                                              ; preds = %121, %117
  %125 = load ptr, ptr %0, align 8, !tbaa !53
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  store ptr %115, ptr %0, align 8, !tbaa !53
  br label %141

128:                                              ; preds = %124, %128
  %129 = phi ptr [ %131, %128 ], [ %125, %124 ]
  %130 = getelementptr inbounds %struct._Image, ptr %129, i64 0, i32 69
  %131 = load ptr, ptr %130, align 8, !tbaa !54
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %128, !llvm.loop !55

133:                                              ; preds = %128, %133
  %134 = phi ptr [ %136, %133 ], [ %115, %128 ]
  %135 = getelementptr inbounds %struct._Image, ptr %134, i64 0, i32 67
  %136 = load ptr, ptr %135, align 8, !tbaa !58
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %133, !llvm.loop !59

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct._Image, ptr %129, i64 0, i32 69
  %140 = getelementptr inbounds %struct._Image, ptr %134, i64 0, i32 67
  store ptr %134, ptr %139, align 8, !tbaa !54
  store ptr %129, ptr %140, align 8, !tbaa !58
  br label %141

141:                                              ; preds = %138, %127, %113, %3
  %142 = phi ptr [ null, %3 ], [ %114, %113 ], [ %114, %127 ], [ %114, %138 ]
  ret ptr %142
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SyncImageList(ptr noundef readonly %0) local_unnamed_addr #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %38, label %3

3:                                                ; preds = %1, %24
  %4 = phi ptr [ %25, %24 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct._Image, ptr %4, i64 0, i32 69
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = icmp eq ptr %6, null
  br i1 %7, label %24, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %4, i64 0, i32 39
  %10 = load i64, ptr %9, align 8, !tbaa !87
  br label %15

11:                                               ; preds = %15
  %12 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 69
  %13 = load ptr, ptr %12, align 8, !tbaa !54
  %14 = icmp eq ptr %13, null
  br i1 %14, label %24, label %15, !llvm.loop !88

15:                                               ; preds = %8, %11
  %16 = phi ptr [ %6, %8 ], [ %13, %11 ]
  %17 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 39
  %18 = load i64, ptr %17, align 8, !tbaa !87
  %19 = icmp eq i64 %10, %18
  br i1 %19, label %20, label %11

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 69
  %22 = load ptr, ptr %21, align 8, !tbaa !54
  %23 = icmp eq ptr %22, null
  br i1 %23, label %38, label %27

24:                                               ; preds = %11, %3
  %25 = load ptr, ptr %5, align 8, !tbaa !54
  %26 = icmp eq ptr %25, null
  br i1 %26, label %38, label %3, !llvm.loop !89

27:                                               ; preds = %20, %27
  %28 = phi ptr [ %36, %27 ], [ %22, %20 ]
  %29 = getelementptr inbounds %struct._Image, ptr %28, i64 0, i32 67
  %30 = load ptr, ptr %29, align 8, !tbaa !58
  %31 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 39
  %32 = load i64, ptr %31, align 8, !tbaa !87
  %33 = add i64 %32, 1
  %34 = getelementptr inbounds %struct._Image, ptr %28, i64 0, i32 39
  store i64 %33, ptr %34, align 8, !tbaa !87
  %35 = getelementptr inbounds %struct._Image, ptr %28, i64 0, i32 69
  %36 = load ptr, ptr %35, align 8, !tbaa !54
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %27, !llvm.loop !90

38:                                               ; preds = %24, %27, %20, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @SyncNextImageInList(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %26, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 69
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = icmp eq ptr %5, null
  br i1 %6, label %26, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52
  %9 = load ptr, ptr %8, align 8, !tbaa !91
  %10 = getelementptr inbounds %struct._Image, ptr %5, i64 0, i32 52
  %11 = load ptr, ptr %10, align 8, !tbaa !91
  %12 = icmp eq ptr %9, %11
  br i1 %12, label %18, label %13

13:                                               ; preds = %7
  tail call void @DestroyBlob(ptr noundef nonnull %5) #13
  %14 = load ptr, ptr %8, align 8, !tbaa !91
  %15 = tail call ptr @ReferenceBlob(ptr noundef %14) #13
  %16 = load ptr, ptr %4, align 8, !tbaa !54
  %17 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 52
  store ptr %15, ptr %17, align 8, !tbaa !91
  br label %18

18:                                               ; preds = %13, %7
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !92
  %21 = load ptr, ptr %4, align 8, !tbaa !54
  %22 = getelementptr inbounds %struct._Image, ptr %21, i64 0, i32 2
  store i32 %20, ptr %22, align 8, !tbaa !92
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 34
  %24 = load i32, ptr %23, align 8, !tbaa !93
  %25 = getelementptr inbounds %struct._Image, ptr %21, i64 0, i32 34
  store i32 %24, ptr %25, align 8, !tbaa !93
  br label %26

26:                                               ; preds = %3, %1, %18
  %27 = phi ptr [ %21, %18 ], [ null, %1 ], [ null, %3 ]
  ret ptr %27
}

declare void @DestroyBlob(ptr noundef) local_unnamed_addr #2

declare ptr @ReferenceBlob(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(none) }
attributes #15 = { nounwind allocsize(0,1) }

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
!34 = !{!35, !36, i64 12976}
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
!53 = !{!40, !40, i64 0}
!54 = !{!35, !40, i64 13104}
!55 = distinct !{!55, !56, !57}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = !{!35, !40, i64 13088}
!59 = distinct !{!59, !56, !57}
!60 = distinct !{!60, !56, !57}
!61 = distinct !{!61, !56, !57}
!62 = distinct !{!62, !56, !57}
!63 = distinct !{!63, !56, !57}
!64 = !{!37, !37, i64 0}
!65 = distinct !{!65, !56, !57}
!66 = !{!42, !42, i64 0}
!67 = distinct !{!67, !56, !57}
!68 = distinct !{!68, !56, !57}
!69 = distinct !{!69, !56, !57}
!70 = distinct !{!70, !56, !57}
!71 = !{!36, !36, i64 0}
!72 = distinct !{!72, !56, !57}
!73 = distinct !{!73, !56, !57}
!74 = distinct !{!74, !56, !57}
!75 = distinct !{!75, !56, !57}
!76 = distinct !{!76, !56, !57}
!77 = distinct !{!77, !56, !57}
!78 = distinct !{!78, !56, !57}
!79 = distinct !{!79, !56, !57}
!80 = distinct !{!80, !56, !57}
!81 = distinct !{!81, !56, !57}
!82 = distinct !{!82, !56, !57}
!83 = distinct !{!83, !56, !57}
!84 = distinct !{!84, !56, !57}
!85 = distinct !{!85, !56, !57}
!86 = distinct !{!86, !56, !57}
!87 = !{!35, !39, i64 432}
!88 = distinct !{!88, !56, !57}
!89 = distinct !{!89, !56, !57}
!90 = distinct !{!90, !56, !57}
!91 = !{!35, !40, i64 608}
!92 = !{!35, !36, i64 8}
!93 = !{!35, !36, i64 408}
