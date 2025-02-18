; ModuleID = 'magick/decorate.c'
source_filename = "magick/decorate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._FrameInfo = type { i64, i64, i64, i64, i64, i64 }
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

@.str = private unnamed_addr constant [18 x i8] c"magick/decorate.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"FrameIsLessThanImageSize\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Frame/Image\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"ImageSizeMustExceedBevelWidth\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"Raise/Image\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @BorderImage(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct._FrameInfo, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #8
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 115, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #8
  br label %11

11:                                               ; preds = %8, %3
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %13 = load i64, ptr %12, align 8, !tbaa !53
  %14 = load i64, ptr %1, align 8, !tbaa !54
  %15 = shl i64 %14, 1
  %16 = add i64 %15, %13
  store i64 %16, ptr %4, align 8, !tbaa !55
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %18 = load i64, ptr %17, align 8, !tbaa !57
  %19 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !58
  %21 = shl i64 %20, 1
  %22 = add i64 %21, %18
  %23 = getelementptr inbounds %struct._FrameInfo, ptr %4, i64 0, i32 1
  store i64 %22, ptr %23, align 8, !tbaa !59
  %24 = getelementptr inbounds %struct._FrameInfo, ptr %4, i64 0, i32 2
  store i64 %14, ptr %24, align 8, !tbaa !60
  %25 = getelementptr inbounds %struct._FrameInfo, ptr %4, i64 0, i32 3
  store i64 %20, ptr %25, align 8, !tbaa !61
  %26 = getelementptr inbounds %struct._FrameInfo, ptr %4, i64 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %26, i8 0, i64 16, i1 false)
  %27 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %40, label %29

29:                                               ; preds = %11
  %30 = getelementptr inbounds %struct._Image, ptr %27, i64 0, i32 14
  %31 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 13
  %32 = load i64, ptr %31, align 8
  store i64 %32, ptr %30, align 8
  %33 = call ptr @FrameImage(ptr noundef nonnull %27, ptr noundef nonnull %4, ptr noundef %2)
  %34 = tail call ptr @DestroyImage(ptr noundef nonnull %27) #8
  %35 = icmp eq ptr %33, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct._Image, ptr %33, i64 0, i32 14
  %38 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 14
  %39 = load i64, ptr %38, align 8
  store i64 %39, ptr %37, align 8
  br label %40

40:                                               ; preds = %29, %36, %11
  %41 = phi ptr [ null, %11 ], [ %33, %36 ], [ %33, %29 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #8
  ret ptr %41
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define dso_local ptr @FrameImage(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  %5 = alloca %struct._MagickPixelPacket, align 8
  %6 = alloca %struct._MagickPixelPacket, align 8
  %7 = alloca %struct._MagickPixelPacket, align 8
  %8 = alloca %struct._MagickPixelPacket, align 8
  %9 = alloca %struct._MagickPixelPacket, align 8
  %10 = alloca %struct._MagickPixelPacket, align 8
  %11 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %11) #8
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %13 = load i32, ptr %12, align 8, !tbaa !34
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %17 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 209, ptr noundef nonnull @.str.2, ptr noundef nonnull %16) #8
  br label %18

18:                                               ; preds = %15, %3
  %19 = getelementptr inbounds %struct._FrameInfo, ptr %1, i64 0, i32 5
  %20 = load i64, ptr %19, align 8, !tbaa !62
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct._FrameInfo, ptr %1, i64 0, i32 4
  %24 = load i64, ptr %23, align 8, !tbaa !63
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22, %18
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %28 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 212, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %27) #8
  br label %3374

29:                                               ; preds = %22
  %30 = add nuw nsw i64 %24, %20
  %31 = load i64, ptr %1, align 8, !tbaa !55
  %32 = getelementptr inbounds %struct._FrameInfo, ptr %1, i64 0, i32 2
  %33 = load i64, ptr %32, align 8, !tbaa !60
  %34 = add i64 %30, %33
  %35 = sub i64 %31, %34
  %36 = getelementptr inbounds %struct._FrameInfo, ptr %1, i64 0, i32 1
  %37 = load i64, ptr %36, align 8, !tbaa !59
  %38 = getelementptr inbounds %struct._FrameInfo, ptr %1, i64 0, i32 3
  %39 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %40 = load i64, ptr %39, align 8, !tbaa !53
  %41 = icmp ult i64 %35, %40
  br i1 %41, label %49, label %42

42:                                               ; preds = %29
  %43 = load i64, ptr %38, align 8, !tbaa !61
  %44 = add i64 %30, %43
  %45 = sub i64 %37, %44
  %46 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %47 = load i64, ptr %46, align 8, !tbaa !57
  %48 = icmp ult i64 %45, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %42, %29
  %50 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %51 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 217, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %50) #8
  br label %3374

52:                                               ; preds = %42
  %53 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef %31, i64 noundef %37, i32 noundef 1, ptr noundef %2) #8
  %54 = icmp eq ptr %53, null
  br i1 %54, label %3374, label %55

55:                                               ; preds = %52
  %56 = tail call i32 @SetImageStorageClass(ptr noundef %53, i32 noundef 1) #8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 58
  tail call void @InheritException(ptr noundef %2, ptr noundef nonnull %59) #8
  %60 = tail call ptr @DestroyImage(ptr noundef %53) #8
  br label %3374

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 13, i32 2
  %63 = load i16, ptr %62, align 2, !tbaa !64
  %64 = uitofp i16 %63 to float
  %65 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 13, i32 1
  %66 = load i16, ptr %65, align 2, !tbaa !65
  %67 = uitofp i16 %66 to float
  %68 = fsub float %64, %67
  %69 = fcmp olt float %68, 0.000000e+00
  %70 = fneg float %68
  %71 = select i1 %69, float %70, float %68
  %72 = fpext float %71 to double
  %73 = fcmp olt double %72, 1.000000e-15
  br i1 %73, label %74, label %84

74:                                               ; preds = %61
  %75 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 13
  %76 = load i16, ptr %75, align 2, !tbaa !66
  %77 = uitofp i16 %76 to float
  %78 = fsub float %67, %77
  %79 = fcmp olt float %78, 0.000000e+00
  %80 = fneg float %78
  %81 = select i1 %79, float %80, float %78
  %82 = fpext float %81 to double
  %83 = fcmp olt double %82, 1.000000e-15
  br i1 %83, label %89, label %84

84:                                               ; preds = %74, %61
  %85 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 1
  %86 = load i32, ptr %85, align 4, !tbaa !67
  switch i32 %86, label %89 [
    i32 19, label %87
    i32 17, label %87
    i32 2, label %87
  ]

87:                                               ; preds = %84, %84, %84
  %88 = tail call i32 @SetImageColorspace(ptr noundef %53, i32 noundef 13) #8
  br label %89

89:                                               ; preds = %84, %74, %87
  %90 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 13, i32 3
  %91 = load i16, ptr %90, align 2, !tbaa !68
  %92 = icmp eq i16 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 6
  %95 = load i32, ptr %94, align 8, !tbaa !69
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = tail call i32 @SetImageAlphaChannel(ptr noundef %53, i32 noundef 6) #8
  br label %99

99:                                               ; preds = %97, %93, %89
  %100 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 26
  %101 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %100, ptr noundef nonnull align 8 dereferenceable(32) %101, i64 32, i1 false), !tbaa.struct !70
  %102 = load i64, ptr %101, align 8, !tbaa !72
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %122, label %104

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 1
  %106 = load i64, ptr %105, align 8, !tbaa !73
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %122, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 7
  %110 = load i64, ptr %109, align 8, !tbaa !53
  %111 = load i64, ptr %39, align 8, !tbaa !53
  %112 = sub i64 %110, %111
  %113 = load i64, ptr %100, align 8, !tbaa !72
  %114 = add i64 %112, %113
  store i64 %114, ptr %100, align 8, !tbaa !72
  %115 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 8
  %116 = load i64, ptr %115, align 8, !tbaa !57
  %117 = load i64, ptr %46, align 8, !tbaa !57
  %118 = sub i64 %116, %117
  %119 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 26, i32 1
  %120 = load i64, ptr %119, align 8, !tbaa !73
  %121 = add i64 %118, %120
  store i64 %121, ptr %119, align 8, !tbaa !73
  br label %122

122:                                              ; preds = %108, %104, %99
  call void @GetMagickPixelPacket(ptr noundef %53, ptr noundef nonnull %8) #8
  %123 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 13
  %124 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 13, i32 2
  %125 = load i16, ptr %124, align 2, !tbaa !64
  %126 = uitofp i16 %125 to float
  %127 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 5
  store float %126, ptr %127, align 8, !tbaa !74
  %128 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 13, i32 1
  %129 = load i16, ptr %128, align 2, !tbaa !65
  %130 = uitofp i16 %129 to float
  %131 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 6
  store float %130, ptr %131, align 4, !tbaa !77
  %132 = load i16, ptr %123, align 2, !tbaa !66
  %133 = uitofp i16 %132 to float
  %134 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 7
  store float %133, ptr %134, align 8, !tbaa !78
  %135 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 13, i32 3
  %136 = load i16, ptr %135, align 2, !tbaa !79
  %137 = uitofp i16 %136 to float
  %138 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 8
  store float %137, ptr %138, align 4, !tbaa !80
  call void @GetMagickPixelPacket(ptr noundef %53, ptr noundef nonnull %9) #8
  %139 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 1
  store i32 13, ptr %139, align 4, !tbaa !81
  %140 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 14
  %141 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 14, i32 2
  %142 = load i16, ptr %141, align 2, !tbaa !64
  %143 = uitofp i16 %142 to float
  %144 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 5
  store float %143, ptr %144, align 8, !tbaa !74
  %145 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 14, i32 1
  %146 = load i16, ptr %145, align 2, !tbaa !65
  %147 = uitofp i16 %146 to float
  %148 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 6
  store float %147, ptr %148, align 4, !tbaa !77
  %149 = load i16, ptr %140, align 2, !tbaa !66
  %150 = uitofp i16 %149 to float
  %151 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 7
  store float %150, ptr %151, align 8, !tbaa !78
  %152 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 14, i32 3
  %153 = load i16, ptr %152, align 2, !tbaa !79
  %154 = uitofp i16 %153 to float
  %155 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 8
  store float %154, ptr %155, align 4, !tbaa !80
  call void @GetMagickPixelPacket(ptr noundef %53, ptr noundef nonnull %6) #8
  %156 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 1
  store i32 13, ptr %156, align 4, !tbaa !81
  %157 = load i16, ptr %124, align 2, !tbaa !64
  %158 = uitofp i16 %157 to float
  %159 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 5
  store float %158, ptr %159, align 8, !tbaa !74
  %160 = load i16, ptr %128, align 2, !tbaa !65
  %161 = uitofp i16 %160 to float
  %162 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 6
  store float %161, ptr %162, align 4, !tbaa !77
  %163 = load i16, ptr %123, align 2, !tbaa !66
  %164 = uitofp i16 %163 to float
  %165 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 7
  store float %164, ptr %165, align 8, !tbaa !78
  %166 = load i16, ptr %135, align 2, !tbaa !79
  %167 = uitofp i16 %166 to float
  %168 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 8
  store float %167, ptr %168, align 4, !tbaa !80
  call void @GetMagickPixelPacket(ptr noundef %53, ptr noundef nonnull %5) #8
  %169 = load float, ptr %144, align 8, !tbaa !74
  %170 = call float @llvm.fmuladd.f32(float %169, float 4.497500e+04, float 0x41D413EBE0000000)
  %171 = fpext float %170 to double
  %172 = fmul double %171, 0x3EF0001000100010
  %173 = fptrunc double %172 to float
  %174 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 5
  store float %173, ptr %174, align 8, !tbaa !74
  %175 = load float, ptr %148, align 4, !tbaa !77
  %176 = call float @llvm.fmuladd.f32(float %175, float 4.497500e+04, float 0x41D413EBE0000000)
  %177 = fpext float %176 to double
  %178 = fmul double %177, 0x3EF0001000100010
  %179 = fptrunc double %178 to float
  %180 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 6
  store float %179, ptr %180, align 4, !tbaa !77
  %181 = load float, ptr %151, align 8, !tbaa !78
  %182 = call float @llvm.fmuladd.f32(float %181, float 4.497500e+04, float 0x41D413EBE0000000)
  %183 = fpext float %182 to double
  %184 = fmul double %183, 0x3EF0001000100010
  %185 = fptrunc double %184 to float
  %186 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 7
  store float %185, ptr %186, align 8, !tbaa !78
  %187 = load float, ptr %155, align 4, !tbaa !80
  %188 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 8
  store float %187, ptr %188, align 4, !tbaa !80
  call void @GetMagickPixelPacket(ptr noundef %53, ptr noundef nonnull %7) #8
  %189 = load float, ptr %144, align 8, !tbaa !74
  %190 = call float @llvm.fmuladd.f32(float %189, float 3.341000e+04, float 0x41DF5F20A0000000)
  %191 = fpext float %190 to double
  %192 = fmul double %191, 0x3EF0001000100010
  %193 = fptrunc double %192 to float
  %194 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 5
  store float %193, ptr %194, align 8, !tbaa !74
  %195 = load float, ptr %148, align 4, !tbaa !77
  %196 = call float @llvm.fmuladd.f32(float %195, float 3.341000e+04, float 0x41DF5F20A0000000)
  %197 = fpext float %196 to double
  %198 = fmul double %197, 0x3EF0001000100010
  %199 = fptrunc double %198 to float
  %200 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 6
  store float %199, ptr %200, align 4, !tbaa !77
  %201 = load float, ptr %151, align 8, !tbaa !78
  %202 = call float @llvm.fmuladd.f32(float %201, float 3.341000e+04, float 0x41DF5F20A0000000)
  %203 = fpext float %202 to double
  %204 = fmul double %203, 0x3EF0001000100010
  %205 = fptrunc double %204 to float
  %206 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 7
  store float %205, ptr %206, align 8, !tbaa !78
  %207 = load float, ptr %155, align 4, !tbaa !80
  %208 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 8
  store float %207, ptr %208, align 4, !tbaa !80
  call void @GetMagickPixelPacket(ptr noundef %53, ptr noundef nonnull %10) #8
  %209 = load float, ptr %144, align 8, !tbaa !74
  %210 = fpext float %209 to double
  %211 = fmul double %210, 0x3EF0001000100010
  %212 = fmul double %211, 3.469500e+04
  %213 = fptrunc double %212 to float
  %214 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 5
  store float %213, ptr %214, align 8, !tbaa !74
  %215 = load float, ptr %148, align 4, !tbaa !77
  %216 = fpext float %215 to double
  %217 = fmul double %216, 0x3EF0001000100010
  %218 = fmul double %217, 3.469500e+04
  %219 = fptrunc double %218 to float
  %220 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 6
  store float %219, ptr %220, align 4, !tbaa !77
  %221 = load float, ptr %151, align 8, !tbaa !78
  %222 = fpext float %221 to double
  %223 = fmul double %222, 0x3EF0001000100010
  %224 = fmul double %223, 3.469500e+04
  %225 = fptrunc double %224 to float
  %226 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 7
  store float %225, ptr %226, align 8, !tbaa !78
  %227 = load float, ptr %155, align 4, !tbaa !80
  %228 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 8
  store float %227, ptr %228, align 4, !tbaa !80
  call void @GetMagickPixelPacket(ptr noundef %53, ptr noundef nonnull %11) #8
  %229 = load float, ptr %144, align 8, !tbaa !74
  %230 = fpext float %229 to double
  %231 = fmul double %230, 0x3EF0001000100010
  %232 = fmul double %231, 2.827000e+04
  %233 = fptrunc double %232 to float
  %234 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 5
  store float %233, ptr %234, align 8, !tbaa !74
  %235 = load float, ptr %148, align 4, !tbaa !77
  %236 = fpext float %235 to double
  %237 = fmul double %236, 0x3EF0001000100010
  %238 = fmul double %237, 2.827000e+04
  %239 = fptrunc double %238 to float
  %240 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 6
  store float %239, ptr %240, align 4, !tbaa !77
  %241 = load float, ptr %151, align 8, !tbaa !78
  %242 = fpext float %241 to double
  %243 = fmul double %242, 0x3EF0001000100010
  %244 = fmul double %243, 2.827000e+04
  %245 = fptrunc double %244 to float
  %246 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 7
  store float %245, ptr %246, align 8, !tbaa !78
  %247 = load float, ptr %155, align 4, !tbaa !80
  %248 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 8
  store float %247, ptr %248, align 4, !tbaa !80
  %249 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %250 = load i32, ptr %249, align 4, !tbaa !67
  %251 = icmp eq i32 %250, 12
  br i1 %251, label %252, label %713

252:                                              ; preds = %122
  %253 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 1
  %254 = load i32, ptr %253, align 4, !tbaa !81
  %255 = icmp eq i32 %254, 13
  %256 = load float, ptr %127, align 8, !tbaa !74
  br i1 %255, label %269, label %257

257:                                              ; preds = %252
  %258 = fpext float %256 to double
  %259 = fmul double %258, 0x3EF0001000100010
  %260 = fptrunc double %259 to float
  %261 = load float, ptr %131, align 4, !tbaa !77
  %262 = fpext float %261 to double
  %263 = fmul double %262, 0x3EF0001000100010
  %264 = fptrunc double %263 to float
  %265 = load float, ptr %134, align 8, !tbaa !78
  %266 = fpext float %265 to double
  %267 = fmul double %266, 0x3EF0001000100010
  %268 = fptrunc double %267 to float
  br label %275

269:                                              ; preds = %252
  %270 = call float @DecodePixelGamma(float noundef %256) #9
  %271 = load float, ptr %131, align 4, !tbaa !77
  %272 = call float @DecodePixelGamma(float noundef %271) #9
  %273 = load float, ptr %134, align 8, !tbaa !78
  %274 = call float @DecodePixelGamma(float noundef %273) #9
  br label %275

275:                                              ; preds = %269, %257
  %276 = phi float [ %268, %257 ], [ %274, %269 ]
  %277 = phi float [ %264, %257 ], [ %272, %269 ]
  %278 = phi float [ %260, %257 ], [ %270, %269 ]
  %279 = call float @llvm.fabs.f32(float %278)
  %280 = fpext float %279 to double
  %281 = fcmp olt double %280, 1.000000e-15
  br i1 %281, label %282, label %290

282:                                              ; preds = %275
  %283 = call float @llvm.fabs.f32(float %277)
  %284 = fpext float %283 to double
  %285 = fcmp olt double %284, 1.000000e-15
  br i1 %285, label %286, label %290

286:                                              ; preds = %282
  %287 = call float @llvm.fabs.f32(float %276)
  %288 = fpext float %287 to double
  %289 = fcmp olt double %288, 1.000000e-15
  br i1 %289, label %316, label %290

290:                                              ; preds = %286, %282, %275
  %291 = fsub float 1.000000e+00, %278
  %292 = fsub float 1.000000e+00, %277
  %293 = fsub float 1.000000e+00, %276
  %294 = fcmp olt float %292, %291
  %295 = select i1 %294, float %292, float %291
  %296 = fcmp olt float %293, %295
  %297 = select i1 %296, float %293, float %295
  %298 = fsub float %291, %297
  %299 = fpext float %298 to double
  %300 = fpext float %297 to double
  %301 = fsub double 1.000000e+00, %300
  %302 = fdiv double %299, %301
  %303 = fptrunc double %302 to float
  %304 = fsub float %292, %297
  %305 = fpext float %304 to double
  %306 = fdiv double %305, %301
  %307 = fptrunc double %306 to float
  %308 = fsub float %293, %297
  %309 = fpext float %308 to double
  %310 = fdiv double %309, %301
  %311 = fptrunc double %310 to float
  store i32 12, ptr %253, align 4, !tbaa !81
  %312 = fmul float %303, 6.553500e+04
  store float %312, ptr %127, align 8, !tbaa !74
  %313 = fmul float %307, 6.553500e+04
  store float %313, ptr %131, align 4, !tbaa !77
  %314 = fmul float %311, 6.553500e+04
  store float %314, ptr %134, align 8, !tbaa !78
  %315 = fmul float %297, 6.553500e+04
  br label %316

316:                                              ; preds = %286, %290
  %317 = phi float [ %315, %290 ], [ 6.553500e+04, %286 ]
  %318 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 9
  store float %317, ptr %318, align 8, !tbaa !82
  %319 = load i32, ptr %139, align 4, !tbaa !81
  %320 = icmp eq i32 %319, 13
  %321 = load float, ptr %144, align 8, !tbaa !74
  br i1 %320, label %334, label %322

322:                                              ; preds = %316
  %323 = fpext float %321 to double
  %324 = fmul double %323, 0x3EF0001000100010
  %325 = fptrunc double %324 to float
  %326 = load float, ptr %148, align 4, !tbaa !77
  %327 = fpext float %326 to double
  %328 = fmul double %327, 0x3EF0001000100010
  %329 = fptrunc double %328 to float
  %330 = load float, ptr %151, align 8, !tbaa !78
  %331 = fpext float %330 to double
  %332 = fmul double %331, 0x3EF0001000100010
  %333 = fptrunc double %332 to float
  br label %340

334:                                              ; preds = %316
  %335 = call float @DecodePixelGamma(float noundef %321) #9
  %336 = load float, ptr %148, align 4, !tbaa !77
  %337 = call float @DecodePixelGamma(float noundef %336) #9
  %338 = load float, ptr %151, align 8, !tbaa !78
  %339 = call float @DecodePixelGamma(float noundef %338) #9
  br label %340

340:                                              ; preds = %334, %322
  %341 = phi float [ %333, %322 ], [ %339, %334 ]
  %342 = phi float [ %329, %322 ], [ %337, %334 ]
  %343 = phi float [ %325, %322 ], [ %335, %334 ]
  %344 = call float @llvm.fabs.f32(float %343)
  %345 = fpext float %344 to double
  %346 = fcmp olt double %345, 1.000000e-15
  br i1 %346, label %347, label %355

347:                                              ; preds = %340
  %348 = call float @llvm.fabs.f32(float %342)
  %349 = fpext float %348 to double
  %350 = fcmp olt double %349, 1.000000e-15
  br i1 %350, label %351, label %355

351:                                              ; preds = %347
  %352 = call float @llvm.fabs.f32(float %341)
  %353 = fpext float %352 to double
  %354 = fcmp olt double %353, 1.000000e-15
  br i1 %354, label %381, label %355

355:                                              ; preds = %351, %347, %340
  %356 = fsub float 1.000000e+00, %343
  %357 = fsub float 1.000000e+00, %342
  %358 = fsub float 1.000000e+00, %341
  %359 = fcmp olt float %357, %356
  %360 = select i1 %359, float %357, float %356
  %361 = fcmp olt float %358, %360
  %362 = select i1 %361, float %358, float %360
  %363 = fsub float %356, %362
  %364 = fpext float %363 to double
  %365 = fpext float %362 to double
  %366 = fsub double 1.000000e+00, %365
  %367 = fdiv double %364, %366
  %368 = fptrunc double %367 to float
  %369 = fsub float %357, %362
  %370 = fpext float %369 to double
  %371 = fdiv double %370, %366
  %372 = fptrunc double %371 to float
  %373 = fsub float %358, %362
  %374 = fpext float %373 to double
  %375 = fdiv double %374, %366
  %376 = fptrunc double %375 to float
  store i32 12, ptr %139, align 4, !tbaa !81
  %377 = fmul float %368, 6.553500e+04
  store float %377, ptr %144, align 8, !tbaa !74
  %378 = fmul float %372, 6.553500e+04
  store float %378, ptr %148, align 4, !tbaa !77
  %379 = fmul float %376, 6.553500e+04
  store float %379, ptr %151, align 8, !tbaa !78
  %380 = fmul float %362, 6.553500e+04
  br label %381

381:                                              ; preds = %351, %355
  %382 = phi float [ %380, %355 ], [ 6.553500e+04, %351 ]
  %383 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 9
  store float %382, ptr %383, align 8, !tbaa !82
  %384 = load i32, ptr %156, align 4, !tbaa !81
  %385 = icmp eq i32 %384, 13
  %386 = load float, ptr %159, align 8, !tbaa !74
  br i1 %385, label %399, label %387

387:                                              ; preds = %381
  %388 = fpext float %386 to double
  %389 = fmul double %388, 0x3EF0001000100010
  %390 = fptrunc double %389 to float
  %391 = load float, ptr %162, align 4, !tbaa !77
  %392 = fpext float %391 to double
  %393 = fmul double %392, 0x3EF0001000100010
  %394 = fptrunc double %393 to float
  %395 = load float, ptr %165, align 8, !tbaa !78
  %396 = fpext float %395 to double
  %397 = fmul double %396, 0x3EF0001000100010
  %398 = fptrunc double %397 to float
  br label %405

399:                                              ; preds = %381
  %400 = call float @DecodePixelGamma(float noundef %386) #9
  %401 = load float, ptr %162, align 4, !tbaa !77
  %402 = call float @DecodePixelGamma(float noundef %401) #9
  %403 = load float, ptr %165, align 8, !tbaa !78
  %404 = call float @DecodePixelGamma(float noundef %403) #9
  br label %405

405:                                              ; preds = %399, %387
  %406 = phi float [ %398, %387 ], [ %404, %399 ]
  %407 = phi float [ %394, %387 ], [ %402, %399 ]
  %408 = phi float [ %390, %387 ], [ %400, %399 ]
  %409 = call float @llvm.fabs.f32(float %408)
  %410 = fpext float %409 to double
  %411 = fcmp olt double %410, 1.000000e-15
  br i1 %411, label %412, label %420

412:                                              ; preds = %405
  %413 = call float @llvm.fabs.f32(float %407)
  %414 = fpext float %413 to double
  %415 = fcmp olt double %414, 1.000000e-15
  br i1 %415, label %416, label %420

416:                                              ; preds = %412
  %417 = call float @llvm.fabs.f32(float %406)
  %418 = fpext float %417 to double
  %419 = fcmp olt double %418, 1.000000e-15
  br i1 %419, label %446, label %420

420:                                              ; preds = %416, %412, %405
  %421 = fsub float 1.000000e+00, %408
  %422 = fsub float 1.000000e+00, %407
  %423 = fsub float 1.000000e+00, %406
  %424 = fcmp olt float %422, %421
  %425 = select i1 %424, float %422, float %421
  %426 = fcmp olt float %423, %425
  %427 = select i1 %426, float %423, float %425
  %428 = fsub float %421, %427
  %429 = fpext float %428 to double
  %430 = fpext float %427 to double
  %431 = fsub double 1.000000e+00, %430
  %432 = fdiv double %429, %431
  %433 = fptrunc double %432 to float
  %434 = fsub float %422, %427
  %435 = fpext float %434 to double
  %436 = fdiv double %435, %431
  %437 = fptrunc double %436 to float
  %438 = fsub float %423, %427
  %439 = fpext float %438 to double
  %440 = fdiv double %439, %431
  %441 = fptrunc double %440 to float
  store i32 12, ptr %156, align 4, !tbaa !81
  %442 = fmul float %433, 6.553500e+04
  store float %442, ptr %159, align 8, !tbaa !74
  %443 = fmul float %437, 6.553500e+04
  store float %443, ptr %162, align 4, !tbaa !77
  %444 = fmul float %441, 6.553500e+04
  store float %444, ptr %165, align 8, !tbaa !78
  %445 = fmul float %427, 6.553500e+04
  br label %446

446:                                              ; preds = %416, %420
  %447 = phi float [ %445, %420 ], [ 6.553500e+04, %416 ]
  %448 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 9
  store float %447, ptr %448, align 8, !tbaa !82
  %449 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 1
  %450 = load i32, ptr %449, align 4, !tbaa !81
  %451 = icmp eq i32 %450, 13
  %452 = load float, ptr %174, align 8, !tbaa !74
  br i1 %451, label %465, label %453

453:                                              ; preds = %446
  %454 = fpext float %452 to double
  %455 = fmul double %454, 0x3EF0001000100010
  %456 = fptrunc double %455 to float
  %457 = load float, ptr %180, align 4, !tbaa !77
  %458 = fpext float %457 to double
  %459 = fmul double %458, 0x3EF0001000100010
  %460 = fptrunc double %459 to float
  %461 = load float, ptr %186, align 8, !tbaa !78
  %462 = fpext float %461 to double
  %463 = fmul double %462, 0x3EF0001000100010
  %464 = fptrunc double %463 to float
  br label %471

465:                                              ; preds = %446
  %466 = call float @DecodePixelGamma(float noundef %452) #9
  %467 = load float, ptr %180, align 4, !tbaa !77
  %468 = call float @DecodePixelGamma(float noundef %467) #9
  %469 = load float, ptr %186, align 8, !tbaa !78
  %470 = call float @DecodePixelGamma(float noundef %469) #9
  br label %471

471:                                              ; preds = %465, %453
  %472 = phi float [ %464, %453 ], [ %470, %465 ]
  %473 = phi float [ %460, %453 ], [ %468, %465 ]
  %474 = phi float [ %456, %453 ], [ %466, %465 ]
  %475 = call float @llvm.fabs.f32(float %474)
  %476 = fpext float %475 to double
  %477 = fcmp olt double %476, 1.000000e-15
  br i1 %477, label %478, label %486

478:                                              ; preds = %471
  %479 = call float @llvm.fabs.f32(float %473)
  %480 = fpext float %479 to double
  %481 = fcmp olt double %480, 1.000000e-15
  br i1 %481, label %482, label %486

482:                                              ; preds = %478
  %483 = call float @llvm.fabs.f32(float %472)
  %484 = fpext float %483 to double
  %485 = fcmp olt double %484, 1.000000e-15
  br i1 %485, label %512, label %486

486:                                              ; preds = %482, %478, %471
  %487 = fsub float 1.000000e+00, %474
  %488 = fsub float 1.000000e+00, %473
  %489 = fsub float 1.000000e+00, %472
  %490 = fcmp olt float %488, %487
  %491 = select i1 %490, float %488, float %487
  %492 = fcmp olt float %489, %491
  %493 = select i1 %492, float %489, float %491
  %494 = fsub float %487, %493
  %495 = fpext float %494 to double
  %496 = fpext float %493 to double
  %497 = fsub double 1.000000e+00, %496
  %498 = fdiv double %495, %497
  %499 = fptrunc double %498 to float
  %500 = fsub float %488, %493
  %501 = fpext float %500 to double
  %502 = fdiv double %501, %497
  %503 = fptrunc double %502 to float
  %504 = fsub float %489, %493
  %505 = fpext float %504 to double
  %506 = fdiv double %505, %497
  %507 = fptrunc double %506 to float
  store i32 12, ptr %449, align 4, !tbaa !81
  %508 = fmul float %499, 6.553500e+04
  store float %508, ptr %174, align 8, !tbaa !74
  %509 = fmul float %503, 6.553500e+04
  store float %509, ptr %180, align 4, !tbaa !77
  %510 = fmul float %507, 6.553500e+04
  store float %510, ptr %186, align 8, !tbaa !78
  %511 = fmul float %493, 6.553500e+04
  br label %512

512:                                              ; preds = %482, %486
  %513 = phi float [ %511, %486 ], [ 6.553500e+04, %482 ]
  %514 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 9
  store float %513, ptr %514, align 8, !tbaa !82
  %515 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 1
  %516 = load i32, ptr %515, align 4, !tbaa !81
  %517 = icmp eq i32 %516, 13
  %518 = load float, ptr %194, align 8, !tbaa !74
  br i1 %517, label %531, label %519

519:                                              ; preds = %512
  %520 = fpext float %518 to double
  %521 = fmul double %520, 0x3EF0001000100010
  %522 = fptrunc double %521 to float
  %523 = load float, ptr %200, align 4, !tbaa !77
  %524 = fpext float %523 to double
  %525 = fmul double %524, 0x3EF0001000100010
  %526 = fptrunc double %525 to float
  %527 = load float, ptr %206, align 8, !tbaa !78
  %528 = fpext float %527 to double
  %529 = fmul double %528, 0x3EF0001000100010
  %530 = fptrunc double %529 to float
  br label %537

531:                                              ; preds = %512
  %532 = call float @DecodePixelGamma(float noundef %518) #9
  %533 = load float, ptr %200, align 4, !tbaa !77
  %534 = call float @DecodePixelGamma(float noundef %533) #9
  %535 = load float, ptr %206, align 8, !tbaa !78
  %536 = call float @DecodePixelGamma(float noundef %535) #9
  br label %537

537:                                              ; preds = %531, %519
  %538 = phi float [ %530, %519 ], [ %536, %531 ]
  %539 = phi float [ %526, %519 ], [ %534, %531 ]
  %540 = phi float [ %522, %519 ], [ %532, %531 ]
  %541 = call float @llvm.fabs.f32(float %540)
  %542 = fpext float %541 to double
  %543 = fcmp olt double %542, 1.000000e-15
  br i1 %543, label %544, label %552

544:                                              ; preds = %537
  %545 = call float @llvm.fabs.f32(float %539)
  %546 = fpext float %545 to double
  %547 = fcmp olt double %546, 1.000000e-15
  br i1 %547, label %548, label %552

548:                                              ; preds = %544
  %549 = call float @llvm.fabs.f32(float %538)
  %550 = fpext float %549 to double
  %551 = fcmp olt double %550, 1.000000e-15
  br i1 %551, label %578, label %552

552:                                              ; preds = %548, %544, %537
  %553 = fsub float 1.000000e+00, %540
  %554 = fsub float 1.000000e+00, %539
  %555 = fsub float 1.000000e+00, %538
  %556 = fcmp olt float %554, %553
  %557 = select i1 %556, float %554, float %553
  %558 = fcmp olt float %555, %557
  %559 = select i1 %558, float %555, float %557
  %560 = fsub float %553, %559
  %561 = fpext float %560 to double
  %562 = fpext float %559 to double
  %563 = fsub double 1.000000e+00, %562
  %564 = fdiv double %561, %563
  %565 = fptrunc double %564 to float
  %566 = fsub float %554, %559
  %567 = fpext float %566 to double
  %568 = fdiv double %567, %563
  %569 = fptrunc double %568 to float
  %570 = fsub float %555, %559
  %571 = fpext float %570 to double
  %572 = fdiv double %571, %563
  %573 = fptrunc double %572 to float
  store i32 12, ptr %515, align 4, !tbaa !81
  %574 = fmul float %565, 6.553500e+04
  store float %574, ptr %194, align 8, !tbaa !74
  %575 = fmul float %569, 6.553500e+04
  store float %575, ptr %200, align 4, !tbaa !77
  %576 = fmul float %573, 6.553500e+04
  store float %576, ptr %206, align 8, !tbaa !78
  %577 = fmul float %559, 6.553500e+04
  br label %578

578:                                              ; preds = %548, %552
  %579 = phi float [ %577, %552 ], [ 6.553500e+04, %548 ]
  %580 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 9
  store float %579, ptr %580, align 8, !tbaa !82
  %581 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 1
  %582 = load i32, ptr %581, align 4, !tbaa !81
  %583 = icmp eq i32 %582, 13
  %584 = load float, ptr %214, align 8, !tbaa !74
  br i1 %583, label %597, label %585

585:                                              ; preds = %578
  %586 = fpext float %584 to double
  %587 = fmul double %586, 0x3EF0001000100010
  %588 = fptrunc double %587 to float
  %589 = load float, ptr %220, align 4, !tbaa !77
  %590 = fpext float %589 to double
  %591 = fmul double %590, 0x3EF0001000100010
  %592 = fptrunc double %591 to float
  %593 = load float, ptr %226, align 8, !tbaa !78
  %594 = fpext float %593 to double
  %595 = fmul double %594, 0x3EF0001000100010
  %596 = fptrunc double %595 to float
  br label %603

597:                                              ; preds = %578
  %598 = call float @DecodePixelGamma(float noundef %584) #9
  %599 = load float, ptr %220, align 4, !tbaa !77
  %600 = call float @DecodePixelGamma(float noundef %599) #9
  %601 = load float, ptr %226, align 8, !tbaa !78
  %602 = call float @DecodePixelGamma(float noundef %601) #9
  br label %603

603:                                              ; preds = %597, %585
  %604 = phi float [ %596, %585 ], [ %602, %597 ]
  %605 = phi float [ %592, %585 ], [ %600, %597 ]
  %606 = phi float [ %588, %585 ], [ %598, %597 ]
  %607 = call float @llvm.fabs.f32(float %606)
  %608 = fpext float %607 to double
  %609 = fcmp olt double %608, 1.000000e-15
  br i1 %609, label %610, label %618

610:                                              ; preds = %603
  %611 = call float @llvm.fabs.f32(float %605)
  %612 = fpext float %611 to double
  %613 = fcmp olt double %612, 1.000000e-15
  br i1 %613, label %614, label %618

614:                                              ; preds = %610
  %615 = call float @llvm.fabs.f32(float %604)
  %616 = fpext float %615 to double
  %617 = fcmp olt double %616, 1.000000e-15
  br i1 %617, label %644, label %618

618:                                              ; preds = %614, %610, %603
  %619 = fsub float 1.000000e+00, %606
  %620 = fsub float 1.000000e+00, %605
  %621 = fsub float 1.000000e+00, %604
  %622 = fcmp olt float %620, %619
  %623 = select i1 %622, float %620, float %619
  %624 = fcmp olt float %621, %623
  %625 = select i1 %624, float %621, float %623
  %626 = fsub float %619, %625
  %627 = fpext float %626 to double
  %628 = fpext float %625 to double
  %629 = fsub double 1.000000e+00, %628
  %630 = fdiv double %627, %629
  %631 = fptrunc double %630 to float
  %632 = fsub float %620, %625
  %633 = fpext float %632 to double
  %634 = fdiv double %633, %629
  %635 = fptrunc double %634 to float
  %636 = fsub float %621, %625
  %637 = fpext float %636 to double
  %638 = fdiv double %637, %629
  %639 = fptrunc double %638 to float
  store i32 12, ptr %581, align 4, !tbaa !81
  %640 = fmul float %631, 6.553500e+04
  store float %640, ptr %214, align 8, !tbaa !74
  %641 = fmul float %635, 6.553500e+04
  store float %641, ptr %220, align 4, !tbaa !77
  %642 = fmul float %639, 6.553500e+04
  store float %642, ptr %226, align 8, !tbaa !78
  %643 = fmul float %625, 6.553500e+04
  br label %644

644:                                              ; preds = %614, %618
  %645 = phi float [ %643, %618 ], [ 6.553500e+04, %614 ]
  %646 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 9
  store float %645, ptr %646, align 8, !tbaa !82
  %647 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 1
  %648 = load i32, ptr %647, align 4, !tbaa !81
  %649 = icmp eq i32 %648, 13
  %650 = load float, ptr %234, align 8, !tbaa !74
  br i1 %649, label %663, label %651

651:                                              ; preds = %644
  %652 = fpext float %650 to double
  %653 = fmul double %652, 0x3EF0001000100010
  %654 = fptrunc double %653 to float
  %655 = load float, ptr %240, align 4, !tbaa !77
  %656 = fpext float %655 to double
  %657 = fmul double %656, 0x3EF0001000100010
  %658 = fptrunc double %657 to float
  %659 = load float, ptr %246, align 8, !tbaa !78
  %660 = fpext float %659 to double
  %661 = fmul double %660, 0x3EF0001000100010
  %662 = fptrunc double %661 to float
  br label %669

663:                                              ; preds = %644
  %664 = call float @DecodePixelGamma(float noundef %650) #9
  %665 = load float, ptr %240, align 4, !tbaa !77
  %666 = call float @DecodePixelGamma(float noundef %665) #9
  %667 = load float, ptr %246, align 8, !tbaa !78
  %668 = call float @DecodePixelGamma(float noundef %667) #9
  br label %669

669:                                              ; preds = %663, %651
  %670 = phi float [ %662, %651 ], [ %668, %663 ]
  %671 = phi float [ %658, %651 ], [ %666, %663 ]
  %672 = phi float [ %654, %651 ], [ %664, %663 ]
  %673 = call float @llvm.fabs.f32(float %672)
  %674 = fpext float %673 to double
  %675 = fcmp olt double %674, 1.000000e-15
  br i1 %675, label %676, label %684

676:                                              ; preds = %669
  %677 = call float @llvm.fabs.f32(float %671)
  %678 = fpext float %677 to double
  %679 = fcmp olt double %678, 1.000000e-15
  br i1 %679, label %680, label %684

680:                                              ; preds = %676
  %681 = call float @llvm.fabs.f32(float %670)
  %682 = fpext float %681 to double
  %683 = fcmp olt double %682, 1.000000e-15
  br i1 %683, label %710, label %684

684:                                              ; preds = %680, %676, %669
  %685 = fsub float 1.000000e+00, %672
  %686 = fsub float 1.000000e+00, %671
  %687 = fsub float 1.000000e+00, %670
  %688 = fcmp olt float %686, %685
  %689 = select i1 %688, float %686, float %685
  %690 = fcmp olt float %687, %689
  %691 = select i1 %690, float %687, float %689
  %692 = fsub float %685, %691
  %693 = fpext float %692 to double
  %694 = fpext float %691 to double
  %695 = fsub double 1.000000e+00, %694
  %696 = fdiv double %693, %695
  %697 = fptrunc double %696 to float
  %698 = fsub float %686, %691
  %699 = fpext float %698 to double
  %700 = fdiv double %699, %695
  %701 = fptrunc double %700 to float
  %702 = fsub float %687, %691
  %703 = fpext float %702 to double
  %704 = fdiv double %703, %695
  %705 = fptrunc double %704 to float
  store i32 12, ptr %647, align 4, !tbaa !81
  %706 = fmul float %697, 6.553500e+04
  store float %706, ptr %234, align 8, !tbaa !74
  %707 = fmul float %701, 6.553500e+04
  store float %707, ptr %240, align 4, !tbaa !77
  %708 = fmul float %705, 6.553500e+04
  store float %708, ptr %246, align 8, !tbaa !78
  %709 = fmul float %691, 6.553500e+04
  br label %710

710:                                              ; preds = %680, %684
  %711 = phi float [ %709, %684 ], [ 6.553500e+04, %680 ]
  %712 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 9
  store float %711, ptr %712, align 8, !tbaa !82
  br label %713

713:                                              ; preds = %710, %122
  %714 = call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %2) #8
  %715 = call ptr @AcquireAuthenticCacheView(ptr noundef %53, ptr noundef %2) #8
  %716 = load i64, ptr %19, align 8, !tbaa !62
  %717 = load i64, ptr %38, align 8, !tbaa !61
  %718 = load i64, ptr %23, align 8, !tbaa !63
  %719 = sub i64 %716, %30
  %720 = add i64 %719, %717
  %721 = add i64 %720, %718
  %722 = icmp eq i64 %721, 0
  br i1 %722, label %1721, label %723

723:                                              ; preds = %713
  %724 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 7
  %725 = load i64, ptr %724, align 8, !tbaa !53
  %726 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %715, i64 noundef 0, i64 noundef 0, i64 noundef %725, i64 noundef %721, ptr noundef %2) #9
  %727 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %715) #8
  %728 = icmp eq ptr %726, null
  br i1 %728, label %1721, label %729

729:                                              ; preds = %723
  %730 = load i64, ptr %19, align 8, !tbaa !62
  %731 = icmp sgt i64 %730, 0
  br i1 %731, label %732, label %874

732:                                              ; preds = %729
  %733 = load i64, ptr %724, align 8, !tbaa !53
  %734 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 1
  %735 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 9
  %736 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 1
  %737 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 9
  %738 = load float, ptr %214, align 8
  %739 = fcmp ole float %738, 0.000000e+00
  %740 = fcmp oge float %738, 6.553500e+04
  %741 = fadd float %738, 5.000000e-01
  %742 = fptoui float %741 to i16
  %743 = load float, ptr %220, align 4
  %744 = fcmp ole float %743, 0.000000e+00
  %745 = fcmp oge float %743, 6.553500e+04
  %746 = fadd float %743, 5.000000e-01
  %747 = fptoui float %746 to i16
  %748 = load float, ptr %226, align 8
  %749 = fcmp ole float %748, 0.000000e+00
  %750 = fcmp oge float %748, 6.553500e+04
  %751 = fadd float %748, 5.000000e-01
  %752 = fptoui float %751 to i16
  %753 = load float, ptr %228, align 4
  %754 = fcmp ole float %753, 0.000000e+00
  %755 = fcmp oge float %753, 6.553500e+04
  %756 = fadd float %753, 5.000000e-01
  %757 = fptoui float %756 to i16
  %758 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 1
  %759 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 9
  %760 = or i1 %739, %740
  %761 = xor i1 %739, true
  %762 = sext i1 %761 to i16
  %763 = select i1 %760, i16 %762, i16 %742
  %764 = or i1 %744, %745
  %765 = xor i1 %744, true
  %766 = sext i1 %765 to i16
  %767 = select i1 %764, i16 %766, i16 %747
  %768 = or i1 %749, %750
  %769 = xor i1 %749, true
  %770 = sext i1 %769 to i16
  %771 = select i1 %768, i16 %770, i16 %752
  %772 = or i1 %754, %755
  %773 = xor i1 %754, true
  %774 = sext i1 %773 to i16
  %775 = select i1 %772, i16 %774, i16 %757
  br label %776

776:                                              ; preds = %732, %1073
  %777 = phi i64 [ %733, %732 ], [ %1077, %1073 ]
  %778 = phi ptr [ %726, %732 ], [ %1075, %1073 ]
  %779 = phi ptr [ %727, %732 ], [ %1074, %1073 ]
  %780 = phi i64 [ 0, %732 ], [ %1076, %1073 ]
  %781 = sub i64 %733, %780
  %782 = icmp sgt i64 %781, 0
  br i1 %782, label %783, label %1001

783:                                              ; preds = %776
  %784 = load float, ptr %174, align 8
  %785 = fcmp ole float %784, 0.000000e+00
  %786 = fcmp oge float %784, 6.553500e+04
  %787 = fadd float %784, 5.000000e-01
  %788 = fptoui float %787 to i16
  %789 = load float, ptr %180, align 4
  %790 = fcmp ole float %789, 0.000000e+00
  %791 = fcmp oge float %789, 6.553500e+04
  %792 = fadd float %789, 5.000000e-01
  %793 = fptoui float %792 to i16
  %794 = load float, ptr %186, align 8
  %795 = fcmp ole float %794, 0.000000e+00
  %796 = fcmp oge float %794, 6.553500e+04
  %797 = fadd float %794, 5.000000e-01
  %798 = fptoui float %797 to i16
  %799 = load float, ptr %188, align 4
  %800 = fcmp ole float %799, 0.000000e+00
  %801 = fcmp oge float %799, 6.553500e+04
  %802 = fadd float %799, 5.000000e-01
  %803 = fptoui float %802 to i16
  %804 = load float, ptr %735, align 8
  %805 = fcmp ole float %804, 0.000000e+00
  %806 = fcmp oge float %804, 6.553500e+04
  %807 = fadd float %804, 5.000000e-01
  %808 = fptoui float %807 to i16
  %809 = load float, ptr %194, align 8
  %810 = fcmp ole float %809, 0.000000e+00
  %811 = fcmp oge float %809, 6.553500e+04
  %812 = fadd float %809, 5.000000e-01
  %813 = fptoui float %812 to i16
  %814 = load float, ptr %200, align 4
  %815 = fcmp ole float %814, 0.000000e+00
  %816 = fcmp oge float %814, 6.553500e+04
  %817 = fadd float %814, 5.000000e-01
  %818 = fptoui float %817 to i16
  %819 = load float, ptr %206, align 8
  %820 = fcmp ole float %819, 0.000000e+00
  %821 = fcmp oge float %819, 6.553500e+04
  %822 = fadd float %819, 5.000000e-01
  %823 = fptoui float %822 to i16
  %824 = load float, ptr %208, align 4
  %825 = fcmp ole float %824, 0.000000e+00
  %826 = fcmp oge float %824, 6.553500e+04
  %827 = fadd float %824, 5.000000e-01
  %828 = fptoui float %827 to i16
  %829 = load float, ptr %737, align 8
  %830 = fcmp ole float %829, 0.000000e+00
  %831 = fcmp oge float %829, 6.553500e+04
  %832 = fadd float %829, 5.000000e-01
  %833 = fptoui float %832 to i16
  %834 = or i1 %785, %786
  %835 = xor i1 %785, true
  %836 = sext i1 %835 to i16
  %837 = select i1 %834, i16 %836, i16 %788
  %838 = or i1 %790, %791
  %839 = xor i1 %790, true
  %840 = sext i1 %839 to i16
  %841 = select i1 %838, i16 %840, i16 %793
  %842 = or i1 %795, %796
  %843 = xor i1 %795, true
  %844 = sext i1 %843 to i16
  %845 = select i1 %842, i16 %844, i16 %798
  %846 = or i1 %800, %801
  %847 = xor i1 %800, true
  %848 = sext i1 %847 to i16
  %849 = select i1 %846, i16 %848, i16 %803
  %850 = or i1 %805, %806
  %851 = xor i1 %805, true
  %852 = sext i1 %851 to i16
  %853 = select i1 %850, i16 %852, i16 %808
  %854 = or i1 %810, %811
  %855 = xor i1 %810, true
  %856 = sext i1 %855 to i16
  %857 = select i1 %854, i16 %856, i16 %813
  %858 = or i1 %815, %816
  %859 = xor i1 %815, true
  %860 = sext i1 %859 to i16
  %861 = select i1 %858, i16 %860, i16 %818
  %862 = or i1 %820, %821
  %863 = xor i1 %820, true
  %864 = sext i1 %863 to i16
  %865 = select i1 %862, i16 %864, i16 %823
  %866 = or i1 %825, %826
  %867 = xor i1 %825, true
  %868 = sext i1 %867 to i16
  %869 = select i1 %866, i16 %868, i16 %828
  %870 = or i1 %830, %831
  %871 = xor i1 %830, true
  %872 = sext i1 %871 to i16
  %873 = select i1 %870, i16 %872, i16 %833
  br label %1018

874:                                              ; preds = %1073, %729
  %875 = phi ptr [ %727, %729 ], [ %1074, %1073 ]
  %876 = phi ptr [ %726, %729 ], [ %1075, %1073 ]
  %877 = load i64, ptr %38, align 8, !tbaa !61
  %878 = sub i64 %877, %30
  %879 = icmp sgt i64 %878, 0
  br i1 %879, label %880, label %1095

880:                                              ; preds = %874
  %881 = icmp sgt i64 %730, 0
  %882 = load float, ptr %194, align 8
  %883 = fcmp ole float %882, 0.000000e+00
  %884 = fcmp oge float %882, 6.553500e+04
  %885 = fadd float %882, 5.000000e-01
  %886 = fptoui float %885 to i16
  %887 = load float, ptr %200, align 4
  %888 = fcmp ole float %887, 0.000000e+00
  %889 = fcmp oge float %887, 6.553500e+04
  %890 = fadd float %887, 5.000000e-01
  %891 = fptoui float %890 to i16
  %892 = load float, ptr %206, align 8
  %893 = fcmp ole float %892, 0.000000e+00
  %894 = fcmp oge float %892, 6.553500e+04
  %895 = fadd float %892, 5.000000e-01
  %896 = fptoui float %895 to i16
  %897 = load float, ptr %208, align 4
  %898 = fcmp ole float %897, 0.000000e+00
  %899 = fcmp oge float %897, 6.553500e+04
  %900 = fadd float %897, 5.000000e-01
  %901 = fptoui float %900 to i16
  %902 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 1
  %903 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 9
  %904 = load i64, ptr %724, align 8, !tbaa !53
  %905 = shl i64 %730, 1
  %906 = sub i64 %904, %905
  %907 = icmp sgt i64 %906, 0
  %908 = load float, ptr %144, align 8
  %909 = fcmp ole float %908, 0.000000e+00
  %910 = fcmp oge float %908, 6.553500e+04
  %911 = fadd float %908, 5.000000e-01
  %912 = fptoui float %911 to i16
  %913 = load float, ptr %148, align 4
  %914 = fcmp ole float %913, 0.000000e+00
  %915 = fcmp oge float %913, 6.553500e+04
  %916 = fadd float %913, 5.000000e-01
  %917 = fptoui float %916 to i16
  %918 = load float, ptr %151, align 8
  %919 = fcmp ole float %918, 0.000000e+00
  %920 = fcmp oge float %918, 6.553500e+04
  %921 = fadd float %918, 5.000000e-01
  %922 = fptoui float %921 to i16
  %923 = load float, ptr %155, align 4
  %924 = fcmp ole float %923, 0.000000e+00
  %925 = fcmp oge float %923, 6.553500e+04
  %926 = fadd float %923, 5.000000e-01
  %927 = fptoui float %926 to i16
  %928 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 1
  %929 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 9
  %930 = icmp sgt i64 %730, 0
  %931 = load float, ptr %214, align 8
  %932 = fcmp ole float %931, 0.000000e+00
  %933 = fcmp oge float %931, 6.553500e+04
  %934 = fadd float %931, 5.000000e-01
  %935 = fptoui float %934 to i16
  %936 = load float, ptr %220, align 4
  %937 = fcmp ole float %936, 0.000000e+00
  %938 = fcmp oge float %936, 6.553500e+04
  %939 = fadd float %936, 5.000000e-01
  %940 = fptoui float %939 to i16
  %941 = load float, ptr %226, align 8
  %942 = fcmp ole float %941, 0.000000e+00
  %943 = fcmp oge float %941, 6.553500e+04
  %944 = fadd float %941, 5.000000e-01
  %945 = fptoui float %944 to i16
  %946 = load float, ptr %228, align 4
  %947 = fcmp ole float %946, 0.000000e+00
  %948 = fcmp oge float %946, 6.553500e+04
  %949 = fadd float %946, 5.000000e-01
  %950 = fptoui float %949 to i16
  %951 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 1
  %952 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 9
  %953 = or i1 %883, %884
  %954 = xor i1 %883, true
  %955 = sext i1 %954 to i16
  %956 = select i1 %953, i16 %955, i16 %886
  %957 = or i1 %888, %889
  %958 = xor i1 %888, true
  %959 = sext i1 %958 to i16
  %960 = select i1 %957, i16 %959, i16 %891
  %961 = or i1 %893, %894
  %962 = xor i1 %893, true
  %963 = sext i1 %962 to i16
  %964 = select i1 %961, i16 %963, i16 %896
  %965 = or i1 %898, %899
  %966 = xor i1 %898, true
  %967 = sext i1 %966 to i16
  %968 = select i1 %965, i16 %967, i16 %901
  %969 = or i1 %909, %910
  %970 = xor i1 %909, true
  %971 = sext i1 %970 to i16
  %972 = select i1 %969, i16 %971, i16 %912
  %973 = or i1 %914, %915
  %974 = xor i1 %914, true
  %975 = sext i1 %974 to i16
  %976 = select i1 %973, i16 %975, i16 %917
  %977 = or i1 %919, %920
  %978 = xor i1 %919, true
  %979 = sext i1 %978 to i16
  %980 = select i1 %977, i16 %979, i16 %922
  %981 = or i1 %924, %925
  %982 = xor i1 %924, true
  %983 = sext i1 %982 to i16
  %984 = select i1 %981, i16 %983, i16 %927
  %985 = or i1 %932, %933
  %986 = xor i1 %932, true
  %987 = sext i1 %986 to i16
  %988 = select i1 %985, i16 %987, i16 %935
  %989 = or i1 %937, %938
  %990 = xor i1 %937, true
  %991 = sext i1 %990 to i16
  %992 = select i1 %989, i16 %991, i16 %940
  %993 = or i1 %942, %943
  %994 = xor i1 %942, true
  %995 = sext i1 %994 to i16
  %996 = select i1 %993, i16 %995, i16 %945
  %997 = or i1 %947, %948
  %998 = xor i1 %947, true
  %999 = sext i1 %998 to i16
  %1000 = select i1 %997, i16 %999, i16 %950
  br label %1079

1001:                                             ; preds = %1048, %776
  %1002 = phi ptr [ %779, %776 ], [ %1050, %1048 ]
  %1003 = phi i64 [ 0, %776 ], [ %777, %1048 ]
  %1004 = phi ptr [ %778, %776 ], [ %1049, %1048 ]
  %1005 = icmp slt i64 %1003, %733
  br i1 %1005, label %1006, label %1073

1006:                                             ; preds = %1001
  %1007 = load i32, ptr %758, align 4, !tbaa !67
  %1008 = icmp eq i32 %1007, 12
  %1009 = load float, ptr %759, align 8
  %1010 = fcmp ole float %1009, 0.000000e+00
  %1011 = fcmp oge float %1009, 6.553500e+04
  %1012 = fadd float %1009, 5.000000e-01
  %1013 = fptoui float %1012 to i16
  %1014 = or i1 %1010, %1011
  %1015 = xor i1 %1010, true
  %1016 = sext i1 %1015 to i16
  %1017 = select i1 %1014, i16 %1016, i16 %1013
  br label %1053

1018:                                             ; preds = %783, %1048
  %1019 = phi ptr [ %778, %783 ], [ %1049, %1048 ]
  %1020 = phi i64 [ 0, %783 ], [ %1051, %1048 ]
  %1021 = phi ptr [ %779, %783 ], [ %1050, %1048 ]
  %1022 = icmp ult i64 %1020, %780
  %1023 = getelementptr inbounds %struct._PixelPacket, ptr %1019, i64 0, i32 2
  %1024 = getelementptr inbounds %struct._PixelPacket, ptr %1019, i64 0, i32 1
  %1025 = getelementptr inbounds %struct._PixelPacket, ptr %1019, i64 0, i32 3
  br i1 %1022, label %1026, label %1036

1026:                                             ; preds = %1018
  store i16 %857, ptr %1023, align 2, !tbaa !64
  store i16 %861, ptr %1024, align 2, !tbaa !65
  store i16 %865, ptr %1019, align 2, !tbaa !66
  store i16 %869, ptr %1025, align 2, !tbaa !79
  %1027 = load i32, ptr %736, align 4, !tbaa !67
  %1028 = icmp eq i32 %1027, 12
  br i1 %1028, label %1034, label %1029

1029:                                             ; preds = %1026
  %1030 = load i32, ptr %53, align 8, !tbaa !83
  %1031 = icmp eq i32 %1030, 2
  %1032 = icmp ne ptr %1021, null
  %1033 = and i1 %1032, %1031
  br i1 %1033, label %1046, label %1048

1034:                                             ; preds = %1026
  %1035 = icmp eq ptr %1021, null
  br i1 %1035, label %1048, label %1046

1036:                                             ; preds = %1018
  store i16 %837, ptr %1023, align 2, !tbaa !64
  store i16 %841, ptr %1024, align 2, !tbaa !65
  store i16 %845, ptr %1019, align 2, !tbaa !66
  store i16 %849, ptr %1025, align 2, !tbaa !79
  %1037 = load i32, ptr %734, align 4, !tbaa !67
  %1038 = icmp eq i32 %1037, 12
  br i1 %1038, label %1044, label %1039

1039:                                             ; preds = %1036
  %1040 = load i32, ptr %53, align 8, !tbaa !83
  %1041 = icmp eq i32 %1040, 2
  %1042 = icmp ne ptr %1021, null
  %1043 = and i1 %1042, %1041
  br i1 %1043, label %1046, label %1048

1044:                                             ; preds = %1036
  %1045 = icmp eq ptr %1021, null
  br i1 %1045, label %1048, label %1046

1046:                                             ; preds = %1039, %1044, %1029, %1034
  %1047 = phi i16 [ %873, %1034 ], [ %873, %1029 ], [ %853, %1044 ], [ %853, %1039 ]
  store i16 %1047, ptr %1021, align 2, !tbaa !84
  br label %1048

1048:                                             ; preds = %1046, %1044, %1039, %1034, %1029
  %1049 = getelementptr inbounds %struct._PixelPacket, ptr %1019, i64 1
  %1050 = getelementptr inbounds i16, ptr %1021, i64 1
  %1051 = add nuw nsw i64 %1020, 1
  %1052 = icmp slt i64 %1051, %781
  br i1 %1052, label %1018, label %1001, !llvm.loop !85

1053:                                             ; preds = %1006, %1068
  %1054 = phi ptr [ %1004, %1006 ], [ %1069, %1068 ]
  %1055 = phi i64 [ %1003, %1006 ], [ %1071, %1068 ]
  %1056 = phi ptr [ %1002, %1006 ], [ %1070, %1068 ]
  %1057 = getelementptr inbounds %struct._PixelPacket, ptr %1054, i64 0, i32 2
  store i16 %763, ptr %1057, align 2, !tbaa !64
  %1058 = getelementptr inbounds %struct._PixelPacket, ptr %1054, i64 0, i32 1
  store i16 %767, ptr %1058, align 2, !tbaa !65
  store i16 %771, ptr %1054, align 2, !tbaa !66
  %1059 = getelementptr inbounds %struct._PixelPacket, ptr %1054, i64 0, i32 3
  store i16 %775, ptr %1059, align 2, !tbaa !79
  br i1 %1008, label %1065, label %1060

1060:                                             ; preds = %1053
  %1061 = load i32, ptr %53, align 8, !tbaa !83
  %1062 = icmp eq i32 %1061, 2
  %1063 = icmp ne ptr %1056, null
  %1064 = and i1 %1063, %1062
  br i1 %1064, label %1067, label %1068

1065:                                             ; preds = %1053
  %1066 = icmp eq ptr %1056, null
  br i1 %1066, label %1068, label %1067

1067:                                             ; preds = %1065, %1060
  store i16 %1017, ptr %1056, align 2, !tbaa !84
  br label %1068

1068:                                             ; preds = %1060, %1065, %1067
  %1069 = getelementptr inbounds %struct._PixelPacket, ptr %1054, i64 1
  %1070 = getelementptr inbounds i16, ptr %1056, i64 1
  %1071 = add nuw nsw i64 %1055, 1
  %1072 = icmp slt i64 %1071, %733
  br i1 %1072, label %1053, label %1073, !llvm.loop !88

1073:                                             ; preds = %1068, %1001
  %1074 = phi ptr [ %1002, %1001 ], [ %1070, %1068 ]
  %1075 = phi ptr [ %1004, %1001 ], [ %1069, %1068 ]
  %1076 = add nuw nsw i64 %780, 1
  %1077 = add i64 %777, -1
  %1078 = icmp eq i64 %1076, %730
  br i1 %1078, label %874, label %776, !llvm.loop !89

1079:                                             ; preds = %880, %1398
  %1080 = phi ptr [ %876, %880 ], [ %1400, %1398 ]
  %1081 = phi ptr [ %875, %880 ], [ %1399, %1398 ]
  %1082 = phi i64 [ 0, %880 ], [ %1401, %1398 ]
  br i1 %881, label %1083, label %1328

1083:                                             ; preds = %1079
  %1084 = load i32, ptr %902, align 4, !tbaa !67
  %1085 = icmp eq i32 %1084, 12
  %1086 = load float, ptr %903, align 8
  %1087 = fcmp ole float %1086, 0.000000e+00
  %1088 = fcmp oge float %1086, 6.553500e+04
  %1089 = fadd float %1086, 5.000000e-01
  %1090 = fptoui float %1089 to i16
  %1091 = or i1 %1087, %1088
  %1092 = xor i1 %1087, true
  %1093 = sext i1 %1092 to i16
  %1094 = select i1 %1091, i16 %1093, i16 %1090
  br label %1308

1095:                                             ; preds = %1398, %874
  %1096 = phi ptr [ %875, %874 ], [ %1399, %1398 ]
  %1097 = phi ptr [ %876, %874 ], [ %1400, %1398 ]
  %1098 = load i64, ptr %23, align 8, !tbaa !63
  %1099 = icmp sgt i64 %1098, 0
  br i1 %1099, label %1100, label %1719

1100:                                             ; preds = %1095
  %1101 = icmp sgt i64 %730, 0
  %1102 = load float, ptr %194, align 8
  %1103 = fcmp ole float %1102, 0.000000e+00
  %1104 = fcmp oge float %1102, 6.553500e+04
  %1105 = fadd float %1102, 5.000000e-01
  %1106 = fptoui float %1105 to i16
  %1107 = load float, ptr %200, align 4
  %1108 = fcmp ole float %1107, 0.000000e+00
  %1109 = fcmp oge float %1107, 6.553500e+04
  %1110 = fadd float %1107, 5.000000e-01
  %1111 = fptoui float %1110 to i16
  %1112 = load float, ptr %206, align 8
  %1113 = fcmp ole float %1112, 0.000000e+00
  %1114 = fcmp oge float %1112, 6.553500e+04
  %1115 = fadd float %1112, 5.000000e-01
  %1116 = fptoui float %1115 to i16
  %1117 = load float, ptr %208, align 4
  %1118 = fcmp ole float %1117, 0.000000e+00
  %1119 = fcmp oge float %1117, 6.553500e+04
  %1120 = fadd float %1117, 5.000000e-01
  %1121 = fptoui float %1120 to i16
  %1122 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 1
  %1123 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 9
  %1124 = load i64, ptr %32, align 8, !tbaa !60
  %1125 = sub i64 %1124, %30
  %1126 = icmp sgt i64 %1125, 0
  %1127 = load float, ptr %144, align 8
  %1128 = fcmp ole float %1127, 0.000000e+00
  %1129 = fcmp oge float %1127, 6.553500e+04
  %1130 = fadd float %1127, 5.000000e-01
  %1131 = fptoui float %1130 to i16
  %1132 = load float, ptr %148, align 4
  %1133 = fcmp ole float %1132, 0.000000e+00
  %1134 = fcmp oge float %1132, 6.553500e+04
  %1135 = fadd float %1132, 5.000000e-01
  %1136 = fptoui float %1135 to i16
  %1137 = load float, ptr %151, align 8
  %1138 = fcmp ole float %1137, 0.000000e+00
  %1139 = fcmp oge float %1137, 6.553500e+04
  %1140 = fadd float %1137, 5.000000e-01
  %1141 = fptoui float %1140 to i16
  %1142 = load float, ptr %155, align 4
  %1143 = fcmp ole float %1142, 0.000000e+00
  %1144 = fcmp oge float %1142, 6.553500e+04
  %1145 = fadd float %1142, 5.000000e-01
  %1146 = fptoui float %1145 to i16
  %1147 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 1
  %1148 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 9
  %1149 = load i64, ptr %39, align 8, !tbaa !53
  %1150 = shl nuw i64 %1098, 1
  %1151 = add i64 %1149, %1150
  %1152 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 1
  %1153 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 9
  %1154 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 1
  %1155 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 9
  %1156 = load float, ptr %194, align 8
  %1157 = fcmp ole float %1156, 0.000000e+00
  %1158 = fcmp oge float %1156, 6.553500e+04
  %1159 = fadd float %1156, 5.000000e-01
  %1160 = fptoui float %1159 to i16
  %1161 = load float, ptr %200, align 4
  %1162 = fcmp ole float %1161, 0.000000e+00
  %1163 = fcmp oge float %1161, 6.553500e+04
  %1164 = fadd float %1161, 5.000000e-01
  %1165 = fptoui float %1164 to i16
  %1166 = load float, ptr %206, align 8
  %1167 = fcmp ole float %1166, 0.000000e+00
  %1168 = fcmp oge float %1166, 6.553500e+04
  %1169 = fadd float %1166, 5.000000e-01
  %1170 = fptoui float %1169 to i16
  %1171 = load float, ptr %208, align 4
  %1172 = fcmp ole float %1171, 0.000000e+00
  %1173 = fcmp oge float %1171, 6.553500e+04
  %1174 = fadd float %1171, 5.000000e-01
  %1175 = fptoui float %1174 to i16
  %1176 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 1
  %1177 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 9
  %1178 = load i64, ptr %1, align 8, !tbaa !55
  %1179 = add i64 %1124, %30
  %1180 = add i64 %1179, %1149
  %1181 = sub i64 %1178, %1180
  %1182 = icmp sgt i64 %1181, 0
  %1183 = load float, ptr %144, align 8
  %1184 = fcmp ole float %1183, 0.000000e+00
  %1185 = fcmp oge float %1183, 6.553500e+04
  %1186 = fadd float %1183, 5.000000e-01
  %1187 = fptoui float %1186 to i16
  %1188 = load float, ptr %148, align 4
  %1189 = fcmp ole float %1188, 0.000000e+00
  %1190 = fcmp oge float %1188, 6.553500e+04
  %1191 = fadd float %1188, 5.000000e-01
  %1192 = fptoui float %1191 to i16
  %1193 = load float, ptr %151, align 8
  %1194 = fcmp ole float %1193, 0.000000e+00
  %1195 = fcmp oge float %1193, 6.553500e+04
  %1196 = fadd float %1193, 5.000000e-01
  %1197 = fptoui float %1196 to i16
  %1198 = load float, ptr %155, align 4
  %1199 = fcmp ole float %1198, 0.000000e+00
  %1200 = fcmp oge float %1198, 6.553500e+04
  %1201 = fadd float %1198, 5.000000e-01
  %1202 = fptoui float %1201 to i16
  %1203 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 1
  %1204 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 9
  %1205 = icmp sgt i64 %730, 0
  %1206 = load float, ptr %214, align 8
  %1207 = fcmp ole float %1206, 0.000000e+00
  %1208 = fcmp oge float %1206, 6.553500e+04
  %1209 = fadd float %1206, 5.000000e-01
  %1210 = fptoui float %1209 to i16
  %1211 = load float, ptr %220, align 4
  %1212 = fcmp ole float %1211, 0.000000e+00
  %1213 = fcmp oge float %1211, 6.553500e+04
  %1214 = fadd float %1211, 5.000000e-01
  %1215 = fptoui float %1214 to i16
  %1216 = load float, ptr %226, align 8
  %1217 = fcmp ole float %1216, 0.000000e+00
  %1218 = fcmp oge float %1216, 6.553500e+04
  %1219 = fadd float %1216, 5.000000e-01
  %1220 = fptoui float %1219 to i16
  %1221 = load float, ptr %228, align 4
  %1222 = fcmp ole float %1221, 0.000000e+00
  %1223 = fcmp oge float %1221, 6.553500e+04
  %1224 = fadd float %1221, 5.000000e-01
  %1225 = fptoui float %1224 to i16
  %1226 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 1
  %1227 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 9
  %1228 = or i1 %1103, %1104
  %1229 = xor i1 %1103, true
  %1230 = sext i1 %1229 to i16
  %1231 = select i1 %1228, i16 %1230, i16 %1106
  %1232 = or i1 %1108, %1109
  %1233 = xor i1 %1108, true
  %1234 = sext i1 %1233 to i16
  %1235 = select i1 %1232, i16 %1234, i16 %1111
  %1236 = or i1 %1113, %1114
  %1237 = xor i1 %1113, true
  %1238 = sext i1 %1237 to i16
  %1239 = select i1 %1236, i16 %1238, i16 %1116
  %1240 = or i1 %1118, %1119
  %1241 = xor i1 %1118, true
  %1242 = sext i1 %1241 to i16
  %1243 = select i1 %1240, i16 %1242, i16 %1121
  %1244 = or i1 %1128, %1129
  %1245 = xor i1 %1128, true
  %1246 = sext i1 %1245 to i16
  %1247 = select i1 %1244, i16 %1246, i16 %1131
  %1248 = or i1 %1133, %1134
  %1249 = xor i1 %1133, true
  %1250 = sext i1 %1249 to i16
  %1251 = select i1 %1248, i16 %1250, i16 %1136
  %1252 = or i1 %1138, %1139
  %1253 = xor i1 %1138, true
  %1254 = sext i1 %1253 to i16
  %1255 = select i1 %1252, i16 %1254, i16 %1141
  %1256 = or i1 %1143, %1144
  %1257 = xor i1 %1143, true
  %1258 = sext i1 %1257 to i16
  %1259 = select i1 %1256, i16 %1258, i16 %1146
  %1260 = or i1 %1157, %1158
  %1261 = xor i1 %1157, true
  %1262 = sext i1 %1261 to i16
  %1263 = select i1 %1260, i16 %1262, i16 %1160
  %1264 = or i1 %1162, %1163
  %1265 = xor i1 %1162, true
  %1266 = sext i1 %1265 to i16
  %1267 = select i1 %1264, i16 %1266, i16 %1165
  %1268 = or i1 %1167, %1168
  %1269 = xor i1 %1167, true
  %1270 = sext i1 %1269 to i16
  %1271 = select i1 %1268, i16 %1270, i16 %1170
  %1272 = or i1 %1172, %1173
  %1273 = xor i1 %1172, true
  %1274 = sext i1 %1273 to i16
  %1275 = select i1 %1272, i16 %1274, i16 %1175
  %1276 = or i1 %1184, %1185
  %1277 = xor i1 %1184, true
  %1278 = sext i1 %1277 to i16
  %1279 = select i1 %1276, i16 %1278, i16 %1187
  %1280 = or i1 %1189, %1190
  %1281 = xor i1 %1189, true
  %1282 = sext i1 %1281 to i16
  %1283 = select i1 %1280, i16 %1282, i16 %1192
  %1284 = or i1 %1194, %1195
  %1285 = xor i1 %1194, true
  %1286 = sext i1 %1285 to i16
  %1287 = select i1 %1284, i16 %1286, i16 %1197
  %1288 = or i1 %1199, %1200
  %1289 = xor i1 %1199, true
  %1290 = sext i1 %1289 to i16
  %1291 = select i1 %1288, i16 %1290, i16 %1202
  %1292 = or i1 %1207, %1208
  %1293 = xor i1 %1207, true
  %1294 = sext i1 %1293 to i16
  %1295 = select i1 %1292, i16 %1294, i16 %1210
  %1296 = or i1 %1212, %1213
  %1297 = xor i1 %1212, true
  %1298 = sext i1 %1297 to i16
  %1299 = select i1 %1296, i16 %1298, i16 %1215
  %1300 = or i1 %1217, %1218
  %1301 = xor i1 %1217, true
  %1302 = sext i1 %1301 to i16
  %1303 = select i1 %1300, i16 %1302, i16 %1220
  %1304 = or i1 %1222, %1223
  %1305 = xor i1 %1222, true
  %1306 = sext i1 %1305 to i16
  %1307 = select i1 %1304, i16 %1306, i16 %1225
  br label %1403

1308:                                             ; preds = %1083, %1323
  %1309 = phi ptr [ %1080, %1083 ], [ %1324, %1323 ]
  %1310 = phi i64 [ 0, %1083 ], [ %1326, %1323 ]
  %1311 = phi ptr [ %1081, %1083 ], [ %1325, %1323 ]
  %1312 = getelementptr inbounds %struct._PixelPacket, ptr %1309, i64 0, i32 2
  store i16 %956, ptr %1312, align 2, !tbaa !64
  %1313 = getelementptr inbounds %struct._PixelPacket, ptr %1309, i64 0, i32 1
  store i16 %960, ptr %1313, align 2, !tbaa !65
  store i16 %964, ptr %1309, align 2, !tbaa !66
  %1314 = getelementptr inbounds %struct._PixelPacket, ptr %1309, i64 0, i32 3
  store i16 %968, ptr %1314, align 2, !tbaa !79
  br i1 %1085, label %1320, label %1315

1315:                                             ; preds = %1308
  %1316 = load i32, ptr %53, align 8, !tbaa !83
  %1317 = icmp eq i32 %1316, 2
  %1318 = icmp ne ptr %1311, null
  %1319 = and i1 %1318, %1317
  br i1 %1319, label %1322, label %1323

1320:                                             ; preds = %1308
  %1321 = icmp eq ptr %1311, null
  br i1 %1321, label %1323, label %1322

1322:                                             ; preds = %1320, %1315
  store i16 %1094, ptr %1311, align 2, !tbaa !84
  br label %1323

1323:                                             ; preds = %1315, %1320, %1322
  %1324 = getelementptr inbounds %struct._PixelPacket, ptr %1309, i64 1
  %1325 = getelementptr inbounds i16, ptr %1311, i64 1
  %1326 = add nuw nsw i64 %1310, 1
  %1327 = icmp eq i64 %1326, %730
  br i1 %1327, label %1328, label %1308, !llvm.loop !90

1328:                                             ; preds = %1323, %1079
  %1329 = phi ptr [ %1081, %1079 ], [ %1325, %1323 ]
  %1330 = phi ptr [ %1080, %1079 ], [ %1324, %1323 ]
  br i1 %907, label %1331, label %1343

1331:                                             ; preds = %1328
  %1332 = load i32, ptr %928, align 4, !tbaa !67
  %1333 = icmp eq i32 %1332, 12
  %1334 = load float, ptr %929, align 8
  %1335 = fcmp ole float %1334, 0.000000e+00
  %1336 = fcmp oge float %1334, 6.553500e+04
  %1337 = fadd float %1334, 5.000000e-01
  %1338 = fptoui float %1337 to i16
  %1339 = or i1 %1335, %1336
  %1340 = xor i1 %1335, true
  %1341 = sext i1 %1340 to i16
  %1342 = select i1 %1339, i16 %1341, i16 %1338
  br label %1358

1343:                                             ; preds = %1373, %1328
  %1344 = phi ptr [ %1329, %1328 ], [ %1375, %1373 ]
  %1345 = phi ptr [ %1330, %1328 ], [ %1374, %1373 ]
  br i1 %930, label %1346, label %1398

1346:                                             ; preds = %1343
  %1347 = load i32, ptr %951, align 4, !tbaa !67
  %1348 = icmp eq i32 %1347, 12
  %1349 = load float, ptr %952, align 8
  %1350 = fcmp ole float %1349, 0.000000e+00
  %1351 = fcmp oge float %1349, 6.553500e+04
  %1352 = fadd float %1349, 5.000000e-01
  %1353 = fptoui float %1352 to i16
  %1354 = or i1 %1350, %1351
  %1355 = xor i1 %1350, true
  %1356 = sext i1 %1355 to i16
  %1357 = select i1 %1354, i16 %1356, i16 %1353
  br label %1378

1358:                                             ; preds = %1331, %1373
  %1359 = phi ptr [ %1330, %1331 ], [ %1374, %1373 ]
  %1360 = phi i64 [ 0, %1331 ], [ %1376, %1373 ]
  %1361 = phi ptr [ %1329, %1331 ], [ %1375, %1373 ]
  %1362 = getelementptr inbounds %struct._PixelPacket, ptr %1359, i64 0, i32 2
  store i16 %972, ptr %1362, align 2, !tbaa !64
  %1363 = getelementptr inbounds %struct._PixelPacket, ptr %1359, i64 0, i32 1
  store i16 %976, ptr %1363, align 2, !tbaa !65
  store i16 %980, ptr %1359, align 2, !tbaa !66
  %1364 = getelementptr inbounds %struct._PixelPacket, ptr %1359, i64 0, i32 3
  store i16 %984, ptr %1364, align 2, !tbaa !79
  br i1 %1333, label %1370, label %1365

1365:                                             ; preds = %1358
  %1366 = load i32, ptr %53, align 8, !tbaa !83
  %1367 = icmp eq i32 %1366, 2
  %1368 = icmp ne ptr %1361, null
  %1369 = and i1 %1368, %1367
  br i1 %1369, label %1372, label %1373

1370:                                             ; preds = %1358
  %1371 = icmp eq ptr %1361, null
  br i1 %1371, label %1373, label %1372

1372:                                             ; preds = %1370, %1365
  store i16 %1342, ptr %1361, align 2, !tbaa !84
  br label %1373

1373:                                             ; preds = %1365, %1370, %1372
  %1374 = getelementptr inbounds %struct._PixelPacket, ptr %1359, i64 1
  %1375 = getelementptr inbounds i16, ptr %1361, i64 1
  %1376 = add nuw nsw i64 %1360, 1
  %1377 = icmp eq i64 %1376, %906
  br i1 %1377, label %1343, label %1358, !llvm.loop !91

1378:                                             ; preds = %1346, %1393
  %1379 = phi ptr [ %1345, %1346 ], [ %1394, %1393 ]
  %1380 = phi i64 [ 0, %1346 ], [ %1396, %1393 ]
  %1381 = phi ptr [ %1344, %1346 ], [ %1395, %1393 ]
  %1382 = getelementptr inbounds %struct._PixelPacket, ptr %1379, i64 0, i32 2
  store i16 %988, ptr %1382, align 2, !tbaa !64
  %1383 = getelementptr inbounds %struct._PixelPacket, ptr %1379, i64 0, i32 1
  store i16 %992, ptr %1383, align 2, !tbaa !65
  store i16 %996, ptr %1379, align 2, !tbaa !66
  %1384 = getelementptr inbounds %struct._PixelPacket, ptr %1379, i64 0, i32 3
  store i16 %1000, ptr %1384, align 2, !tbaa !79
  br i1 %1348, label %1390, label %1385

1385:                                             ; preds = %1378
  %1386 = load i32, ptr %53, align 8, !tbaa !83
  %1387 = icmp eq i32 %1386, 2
  %1388 = icmp ne ptr %1381, null
  %1389 = and i1 %1388, %1387
  br i1 %1389, label %1392, label %1393

1390:                                             ; preds = %1378
  %1391 = icmp eq ptr %1381, null
  br i1 %1391, label %1393, label %1392

1392:                                             ; preds = %1390, %1385
  store i16 %1357, ptr %1381, align 2, !tbaa !84
  br label %1393

1393:                                             ; preds = %1385, %1390, %1392
  %1394 = getelementptr inbounds %struct._PixelPacket, ptr %1379, i64 1
  %1395 = getelementptr inbounds i16, ptr %1381, i64 1
  %1396 = add nuw nsw i64 %1380, 1
  %1397 = icmp eq i64 %1396, %730
  br i1 %1397, label %1398, label %1378, !llvm.loop !92

1398:                                             ; preds = %1393, %1343
  %1399 = phi ptr [ %1344, %1343 ], [ %1395, %1393 ]
  %1400 = phi ptr [ %1345, %1343 ], [ %1394, %1393 ]
  %1401 = add nuw nsw i64 %1082, 1
  %1402 = icmp eq i64 %1401, %878
  br i1 %1402, label %1095, label %1079, !llvm.loop !93

1403:                                             ; preds = %1100, %1713
  %1404 = phi i64 [ %1151, %1100 ], [ %1717, %1713 ]
  %1405 = phi ptr [ %1097, %1100 ], [ %1715, %1713 ]
  %1406 = phi ptr [ %1096, %1100 ], [ %1714, %1713 ]
  %1407 = phi i64 [ 0, %1100 ], [ %1716, %1713 ]
  br i1 %1101, label %1408, label %1420

1408:                                             ; preds = %1403
  %1409 = load i32, ptr %1122, align 4, !tbaa !67
  %1410 = icmp eq i32 %1409, 12
  %1411 = load float, ptr %1123, align 8
  %1412 = fcmp ole float %1411, 0.000000e+00
  %1413 = fcmp oge float %1411, 6.553500e+04
  %1414 = fadd float %1411, 5.000000e-01
  %1415 = fptoui float %1414 to i16
  %1416 = or i1 %1412, %1413
  %1417 = xor i1 %1412, true
  %1418 = sext i1 %1417 to i16
  %1419 = select i1 %1416, i16 %1418, i16 %1415
  br label %1435

1420:                                             ; preds = %1450, %1403
  %1421 = phi ptr [ %1406, %1403 ], [ %1452, %1450 ]
  %1422 = phi ptr [ %1405, %1403 ], [ %1451, %1450 ]
  br i1 %1126, label %1423, label %1475

1423:                                             ; preds = %1420
  %1424 = load i32, ptr %1147, align 4, !tbaa !67
  %1425 = icmp eq i32 %1424, 12
  %1426 = load float, ptr %1148, align 8
  %1427 = fcmp ole float %1426, 0.000000e+00
  %1428 = fcmp oge float %1426, 6.553500e+04
  %1429 = fadd float %1426, 5.000000e-01
  %1430 = fptoui float %1429 to i16
  %1431 = or i1 %1427, %1428
  %1432 = xor i1 %1427, true
  %1433 = sext i1 %1432 to i16
  %1434 = select i1 %1431, i16 %1433, i16 %1430
  br label %1455

1435:                                             ; preds = %1408, %1450
  %1436 = phi ptr [ %1405, %1408 ], [ %1451, %1450 ]
  %1437 = phi i64 [ 0, %1408 ], [ %1453, %1450 ]
  %1438 = phi ptr [ %1406, %1408 ], [ %1452, %1450 ]
  %1439 = getelementptr inbounds %struct._PixelPacket, ptr %1436, i64 0, i32 2
  store i16 %1231, ptr %1439, align 2, !tbaa !64
  %1440 = getelementptr inbounds %struct._PixelPacket, ptr %1436, i64 0, i32 1
  store i16 %1235, ptr %1440, align 2, !tbaa !65
  store i16 %1239, ptr %1436, align 2, !tbaa !66
  %1441 = getelementptr inbounds %struct._PixelPacket, ptr %1436, i64 0, i32 3
  store i16 %1243, ptr %1441, align 2, !tbaa !79
  br i1 %1410, label %1447, label %1442

1442:                                             ; preds = %1435
  %1443 = load i32, ptr %53, align 8, !tbaa !83
  %1444 = icmp eq i32 %1443, 2
  %1445 = icmp ne ptr %1438, null
  %1446 = and i1 %1445, %1444
  br i1 %1446, label %1449, label %1450

1447:                                             ; preds = %1435
  %1448 = icmp eq ptr %1438, null
  br i1 %1448, label %1450, label %1449

1449:                                             ; preds = %1447, %1442
  store i16 %1419, ptr %1438, align 2, !tbaa !84
  br label %1450

1450:                                             ; preds = %1442, %1447, %1449
  %1451 = getelementptr inbounds %struct._PixelPacket, ptr %1436, i64 1
  %1452 = getelementptr inbounds i16, ptr %1438, i64 1
  %1453 = add nuw nsw i64 %1437, 1
  %1454 = icmp eq i64 %1453, %730
  br i1 %1454, label %1420, label %1435, !llvm.loop !94

1455:                                             ; preds = %1423, %1470
  %1456 = phi ptr [ %1422, %1423 ], [ %1471, %1470 ]
  %1457 = phi i64 [ 0, %1423 ], [ %1473, %1470 ]
  %1458 = phi ptr [ %1421, %1423 ], [ %1472, %1470 ]
  %1459 = getelementptr inbounds %struct._PixelPacket, ptr %1456, i64 0, i32 2
  store i16 %1247, ptr %1459, align 2, !tbaa !64
  %1460 = getelementptr inbounds %struct._PixelPacket, ptr %1456, i64 0, i32 1
  store i16 %1251, ptr %1460, align 2, !tbaa !65
  store i16 %1255, ptr %1456, align 2, !tbaa !66
  %1461 = getelementptr inbounds %struct._PixelPacket, ptr %1456, i64 0, i32 3
  store i16 %1259, ptr %1461, align 2, !tbaa !79
  br i1 %1425, label %1467, label %1462

1462:                                             ; preds = %1455
  %1463 = load i32, ptr %53, align 8, !tbaa !83
  %1464 = icmp eq i32 %1463, 2
  %1465 = icmp ne ptr %1458, null
  %1466 = and i1 %1465, %1464
  br i1 %1466, label %1469, label %1470

1467:                                             ; preds = %1455
  %1468 = icmp eq ptr %1458, null
  br i1 %1468, label %1470, label %1469

1469:                                             ; preds = %1467, %1462
  store i16 %1434, ptr %1458, align 2, !tbaa !84
  br label %1470

1470:                                             ; preds = %1462, %1467, %1469
  %1471 = getelementptr inbounds %struct._PixelPacket, ptr %1456, i64 1
  %1472 = getelementptr inbounds i16, ptr %1458, i64 1
  %1473 = add nuw nsw i64 %1457, 1
  %1474 = icmp eq i64 %1473, %1125
  br i1 %1474, label %1475, label %1455, !llvm.loop !95

1475:                                             ; preds = %1470, %1420
  %1476 = phi ptr [ %1421, %1420 ], [ %1472, %1470 ]
  %1477 = phi ptr [ %1422, %1420 ], [ %1471, %1470 ]
  %1478 = sub i64 %1151, %1407
  %1479 = icmp sgt i64 %1478, 0
  br i1 %1479, label %1480, label %1571

1480:                                             ; preds = %1475
  %1481 = load float, ptr %234, align 8
  %1482 = fcmp ole float %1481, 0.000000e+00
  %1483 = fcmp oge float %1481, 6.553500e+04
  %1484 = fadd float %1481, 5.000000e-01
  %1485 = fptoui float %1484 to i16
  %1486 = load float, ptr %240, align 4
  %1487 = fcmp ole float %1486, 0.000000e+00
  %1488 = fcmp oge float %1486, 6.553500e+04
  %1489 = fadd float %1486, 5.000000e-01
  %1490 = fptoui float %1489 to i16
  %1491 = load float, ptr %246, align 8
  %1492 = fcmp ole float %1491, 0.000000e+00
  %1493 = fcmp oge float %1491, 6.553500e+04
  %1494 = fadd float %1491, 5.000000e-01
  %1495 = fptoui float %1494 to i16
  %1496 = load float, ptr %248, align 4
  %1497 = fcmp ole float %1496, 0.000000e+00
  %1498 = fcmp oge float %1496, 6.553500e+04
  %1499 = fadd float %1496, 5.000000e-01
  %1500 = fptoui float %1499 to i16
  %1501 = load float, ptr %1153, align 8
  %1502 = fcmp ole float %1501, 0.000000e+00
  %1503 = fcmp oge float %1501, 6.553500e+04
  %1504 = fadd float %1501, 5.000000e-01
  %1505 = fptoui float %1504 to i16
  %1506 = load float, ptr %214, align 8
  %1507 = fcmp ole float %1506, 0.000000e+00
  %1508 = fcmp oge float %1506, 6.553500e+04
  %1509 = fadd float %1506, 5.000000e-01
  %1510 = fptoui float %1509 to i16
  %1511 = load float, ptr %220, align 4
  %1512 = fcmp ole float %1511, 0.000000e+00
  %1513 = fcmp oge float %1511, 6.553500e+04
  %1514 = fadd float %1511, 5.000000e-01
  %1515 = fptoui float %1514 to i16
  %1516 = load float, ptr %226, align 8
  %1517 = fcmp ole float %1516, 0.000000e+00
  %1518 = fcmp oge float %1516, 6.553500e+04
  %1519 = fadd float %1516, 5.000000e-01
  %1520 = fptoui float %1519 to i16
  %1521 = load float, ptr %228, align 4
  %1522 = fcmp ole float %1521, 0.000000e+00
  %1523 = fcmp oge float %1521, 6.553500e+04
  %1524 = fadd float %1521, 5.000000e-01
  %1525 = fptoui float %1524 to i16
  %1526 = load float, ptr %1155, align 8
  %1527 = fcmp ole float %1526, 0.000000e+00
  %1528 = fcmp oge float %1526, 6.553500e+04
  %1529 = fadd float %1526, 5.000000e-01
  %1530 = fptoui float %1529 to i16
  %1531 = or i1 %1482, %1483
  %1532 = xor i1 %1482, true
  %1533 = sext i1 %1532 to i16
  %1534 = select i1 %1531, i16 %1533, i16 %1485
  %1535 = or i1 %1487, %1488
  %1536 = xor i1 %1487, true
  %1537 = sext i1 %1536 to i16
  %1538 = select i1 %1535, i16 %1537, i16 %1490
  %1539 = or i1 %1492, %1493
  %1540 = xor i1 %1492, true
  %1541 = sext i1 %1540 to i16
  %1542 = select i1 %1539, i16 %1541, i16 %1495
  %1543 = or i1 %1497, %1498
  %1544 = xor i1 %1497, true
  %1545 = sext i1 %1544 to i16
  %1546 = select i1 %1543, i16 %1545, i16 %1500
  %1547 = or i1 %1502, %1503
  %1548 = xor i1 %1502, true
  %1549 = sext i1 %1548 to i16
  %1550 = select i1 %1547, i16 %1549, i16 %1505
  %1551 = or i1 %1507, %1508
  %1552 = xor i1 %1507, true
  %1553 = sext i1 %1552 to i16
  %1554 = select i1 %1551, i16 %1553, i16 %1510
  %1555 = or i1 %1512, %1513
  %1556 = xor i1 %1512, true
  %1557 = sext i1 %1556 to i16
  %1558 = select i1 %1555, i16 %1557, i16 %1515
  %1559 = or i1 %1517, %1518
  %1560 = xor i1 %1517, true
  %1561 = sext i1 %1560 to i16
  %1562 = select i1 %1559, i16 %1561, i16 %1520
  %1563 = or i1 %1522, %1523
  %1564 = xor i1 %1522, true
  %1565 = sext i1 %1564 to i16
  %1566 = select i1 %1563, i16 %1565, i16 %1525
  %1567 = or i1 %1527, %1528
  %1568 = xor i1 %1527, true
  %1569 = sext i1 %1568 to i16
  %1570 = select i1 %1567, i16 %1569, i16 %1530
  br label %1588

1571:                                             ; preds = %1618, %1475
  %1572 = phi ptr [ %1476, %1475 ], [ %1620, %1618 ]
  %1573 = phi i64 [ 0, %1475 ], [ %1404, %1618 ]
  %1574 = phi ptr [ %1477, %1475 ], [ %1619, %1618 ]
  %1575 = icmp slt i64 %1573, %1151
  br i1 %1575, label %1576, label %1643

1576:                                             ; preds = %1571
  %1577 = load i32, ptr %1176, align 4, !tbaa !67
  %1578 = icmp eq i32 %1577, 12
  %1579 = load float, ptr %1177, align 8
  %1580 = fcmp ole float %1579, 0.000000e+00
  %1581 = fcmp oge float %1579, 6.553500e+04
  %1582 = fadd float %1579, 5.000000e-01
  %1583 = fptoui float %1582 to i16
  %1584 = or i1 %1580, %1581
  %1585 = xor i1 %1580, true
  %1586 = sext i1 %1585 to i16
  %1587 = select i1 %1584, i16 %1586, i16 %1583
  br label %1623

1588:                                             ; preds = %1480, %1618
  %1589 = phi ptr [ %1477, %1480 ], [ %1619, %1618 ]
  %1590 = phi i64 [ 0, %1480 ], [ %1621, %1618 ]
  %1591 = phi ptr [ %1476, %1480 ], [ %1620, %1618 ]
  %1592 = icmp ult i64 %1590, %1407
  %1593 = getelementptr inbounds %struct._PixelPacket, ptr %1589, i64 0, i32 2
  %1594 = getelementptr inbounds %struct._PixelPacket, ptr %1589, i64 0, i32 1
  %1595 = getelementptr inbounds %struct._PixelPacket, ptr %1589, i64 0, i32 3
  br i1 %1592, label %1596, label %1606

1596:                                             ; preds = %1588
  store i16 %1554, ptr %1593, align 2, !tbaa !64
  store i16 %1558, ptr %1594, align 2, !tbaa !65
  store i16 %1562, ptr %1589, align 2, !tbaa !66
  store i16 %1566, ptr %1595, align 2, !tbaa !79
  %1597 = load i32, ptr %1154, align 4, !tbaa !67
  %1598 = icmp eq i32 %1597, 12
  br i1 %1598, label %1604, label %1599

1599:                                             ; preds = %1596
  %1600 = load i32, ptr %53, align 8, !tbaa !83
  %1601 = icmp eq i32 %1600, 2
  %1602 = icmp ne ptr %1591, null
  %1603 = and i1 %1602, %1601
  br i1 %1603, label %1616, label %1618

1604:                                             ; preds = %1596
  %1605 = icmp eq ptr %1591, null
  br i1 %1605, label %1618, label %1616

1606:                                             ; preds = %1588
  store i16 %1534, ptr %1593, align 2, !tbaa !64
  store i16 %1538, ptr %1594, align 2, !tbaa !65
  store i16 %1542, ptr %1589, align 2, !tbaa !66
  store i16 %1546, ptr %1595, align 2, !tbaa !79
  %1607 = load i32, ptr %1152, align 4, !tbaa !67
  %1608 = icmp eq i32 %1607, 12
  br i1 %1608, label %1614, label %1609

1609:                                             ; preds = %1606
  %1610 = load i32, ptr %53, align 8, !tbaa !83
  %1611 = icmp eq i32 %1610, 2
  %1612 = icmp ne ptr %1591, null
  %1613 = and i1 %1612, %1611
  br i1 %1613, label %1616, label %1618

1614:                                             ; preds = %1606
  %1615 = icmp eq ptr %1591, null
  br i1 %1615, label %1618, label %1616

1616:                                             ; preds = %1609, %1614, %1599, %1604
  %1617 = phi i16 [ %1570, %1604 ], [ %1570, %1599 ], [ %1550, %1614 ], [ %1550, %1609 ]
  store i16 %1617, ptr %1591, align 2, !tbaa !84
  br label %1618

1618:                                             ; preds = %1616, %1614, %1609, %1604, %1599
  %1619 = getelementptr inbounds %struct._PixelPacket, ptr %1589, i64 1
  %1620 = getelementptr inbounds i16, ptr %1591, i64 1
  %1621 = add nuw nsw i64 %1590, 1
  %1622 = icmp slt i64 %1621, %1478
  br i1 %1622, label %1588, label %1571, !llvm.loop !96

1623:                                             ; preds = %1576, %1638
  %1624 = phi ptr [ %1574, %1576 ], [ %1639, %1638 ]
  %1625 = phi i64 [ %1573, %1576 ], [ %1641, %1638 ]
  %1626 = phi ptr [ %1572, %1576 ], [ %1640, %1638 ]
  %1627 = getelementptr inbounds %struct._PixelPacket, ptr %1624, i64 0, i32 2
  store i16 %1263, ptr %1627, align 2, !tbaa !64
  %1628 = getelementptr inbounds %struct._PixelPacket, ptr %1624, i64 0, i32 1
  store i16 %1267, ptr %1628, align 2, !tbaa !65
  store i16 %1271, ptr %1624, align 2, !tbaa !66
  %1629 = getelementptr inbounds %struct._PixelPacket, ptr %1624, i64 0, i32 3
  store i16 %1275, ptr %1629, align 2, !tbaa !79
  br i1 %1578, label %1635, label %1630

1630:                                             ; preds = %1623
  %1631 = load i32, ptr %53, align 8, !tbaa !83
  %1632 = icmp eq i32 %1631, 2
  %1633 = icmp ne ptr %1626, null
  %1634 = and i1 %1633, %1632
  br i1 %1634, label %1637, label %1638

1635:                                             ; preds = %1623
  %1636 = icmp eq ptr %1626, null
  br i1 %1636, label %1638, label %1637

1637:                                             ; preds = %1635, %1630
  store i16 %1587, ptr %1626, align 2, !tbaa !84
  br label %1638

1638:                                             ; preds = %1630, %1635, %1637
  %1639 = getelementptr inbounds %struct._PixelPacket, ptr %1624, i64 1
  %1640 = getelementptr inbounds i16, ptr %1626, i64 1
  %1641 = add nuw nsw i64 %1625, 1
  %1642 = icmp slt i64 %1641, %1151
  br i1 %1642, label %1623, label %1643, !llvm.loop !97

1643:                                             ; preds = %1638, %1571
  %1644 = phi ptr [ %1572, %1571 ], [ %1640, %1638 ]
  %1645 = phi ptr [ %1574, %1571 ], [ %1639, %1638 ]
  br i1 %1182, label %1646, label %1658

1646:                                             ; preds = %1643
  %1647 = load i32, ptr %1203, align 4, !tbaa !67
  %1648 = icmp eq i32 %1647, 12
  %1649 = load float, ptr %1204, align 8
  %1650 = fcmp ole float %1649, 0.000000e+00
  %1651 = fcmp oge float %1649, 6.553500e+04
  %1652 = fadd float %1649, 5.000000e-01
  %1653 = fptoui float %1652 to i16
  %1654 = or i1 %1650, %1651
  %1655 = xor i1 %1650, true
  %1656 = sext i1 %1655 to i16
  %1657 = select i1 %1654, i16 %1656, i16 %1653
  br label %1673

1658:                                             ; preds = %1688, %1643
  %1659 = phi ptr [ %1644, %1643 ], [ %1690, %1688 ]
  %1660 = phi ptr [ %1645, %1643 ], [ %1689, %1688 ]
  br i1 %1205, label %1661, label %1713

1661:                                             ; preds = %1658
  %1662 = load i32, ptr %1226, align 4, !tbaa !67
  %1663 = icmp eq i32 %1662, 12
  %1664 = load float, ptr %1227, align 8
  %1665 = fcmp ole float %1664, 0.000000e+00
  %1666 = fcmp oge float %1664, 6.553500e+04
  %1667 = fadd float %1664, 5.000000e-01
  %1668 = fptoui float %1667 to i16
  %1669 = or i1 %1665, %1666
  %1670 = xor i1 %1665, true
  %1671 = sext i1 %1670 to i16
  %1672 = select i1 %1669, i16 %1671, i16 %1668
  br label %1693

1673:                                             ; preds = %1646, %1688
  %1674 = phi ptr [ %1645, %1646 ], [ %1689, %1688 ]
  %1675 = phi i64 [ 0, %1646 ], [ %1691, %1688 ]
  %1676 = phi ptr [ %1644, %1646 ], [ %1690, %1688 ]
  %1677 = getelementptr inbounds %struct._PixelPacket, ptr %1674, i64 0, i32 2
  store i16 %1279, ptr %1677, align 2, !tbaa !64
  %1678 = getelementptr inbounds %struct._PixelPacket, ptr %1674, i64 0, i32 1
  store i16 %1283, ptr %1678, align 2, !tbaa !65
  store i16 %1287, ptr %1674, align 2, !tbaa !66
  %1679 = getelementptr inbounds %struct._PixelPacket, ptr %1674, i64 0, i32 3
  store i16 %1291, ptr %1679, align 2, !tbaa !79
  br i1 %1648, label %1685, label %1680

1680:                                             ; preds = %1673
  %1681 = load i32, ptr %53, align 8, !tbaa !83
  %1682 = icmp eq i32 %1681, 2
  %1683 = icmp ne ptr %1676, null
  %1684 = and i1 %1683, %1682
  br i1 %1684, label %1687, label %1688

1685:                                             ; preds = %1673
  %1686 = icmp eq ptr %1676, null
  br i1 %1686, label %1688, label %1687

1687:                                             ; preds = %1685, %1680
  store i16 %1657, ptr %1676, align 2, !tbaa !84
  br label %1688

1688:                                             ; preds = %1680, %1685, %1687
  %1689 = getelementptr inbounds %struct._PixelPacket, ptr %1674, i64 1
  %1690 = getelementptr inbounds i16, ptr %1676, i64 1
  %1691 = add nuw nsw i64 %1675, 1
  %1692 = icmp eq i64 %1691, %1181
  br i1 %1692, label %1658, label %1673, !llvm.loop !98

1693:                                             ; preds = %1661, %1708
  %1694 = phi ptr [ %1660, %1661 ], [ %1709, %1708 ]
  %1695 = phi i64 [ 0, %1661 ], [ %1711, %1708 ]
  %1696 = phi ptr [ %1659, %1661 ], [ %1710, %1708 ]
  %1697 = getelementptr inbounds %struct._PixelPacket, ptr %1694, i64 0, i32 2
  store i16 %1295, ptr %1697, align 2, !tbaa !64
  %1698 = getelementptr inbounds %struct._PixelPacket, ptr %1694, i64 0, i32 1
  store i16 %1299, ptr %1698, align 2, !tbaa !65
  store i16 %1303, ptr %1694, align 2, !tbaa !66
  %1699 = getelementptr inbounds %struct._PixelPacket, ptr %1694, i64 0, i32 3
  store i16 %1307, ptr %1699, align 2, !tbaa !79
  br i1 %1663, label %1705, label %1700

1700:                                             ; preds = %1693
  %1701 = load i32, ptr %53, align 8, !tbaa !83
  %1702 = icmp eq i32 %1701, 2
  %1703 = icmp ne ptr %1696, null
  %1704 = and i1 %1703, %1702
  br i1 %1704, label %1707, label %1708

1705:                                             ; preds = %1693
  %1706 = icmp eq ptr %1696, null
  br i1 %1706, label %1708, label %1707

1707:                                             ; preds = %1705, %1700
  store i16 %1672, ptr %1696, align 2, !tbaa !84
  br label %1708

1708:                                             ; preds = %1700, %1705, %1707
  %1709 = getelementptr inbounds %struct._PixelPacket, ptr %1694, i64 1
  %1710 = getelementptr inbounds i16, ptr %1696, i64 1
  %1711 = add nuw nsw i64 %1695, 1
  %1712 = icmp eq i64 %1711, %730
  br i1 %1712, label %1713, label %1693, !llvm.loop !99

1713:                                             ; preds = %1708, %1658
  %1714 = phi ptr [ %1659, %1658 ], [ %1710, %1708 ]
  %1715 = phi ptr [ %1660, %1658 ], [ %1709, %1708 ]
  %1716 = add nuw nsw i64 %1407, 1
  %1717 = add i64 %1404, -1
  %1718 = icmp eq i64 %1716, %1098
  br i1 %1718, label %1719, label %1403, !llvm.loop !100

1719:                                             ; preds = %1713, %1095
  %1720 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %715, ptr noundef %2) #9
  br label %1721

1721:                                             ; preds = %723, %1719, %713
  %1722 = load i64, ptr %46, align 8, !tbaa !57
  %1723 = icmp sgt i64 %1722, 0
  br i1 %1723, label %1724, label %2330

1724:                                             ; preds = %1721
  %1725 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 7
  %1726 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 1
  %1727 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 9
  %1728 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 1
  %1729 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 9
  %1730 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 1
  %1731 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 9
  %1732 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 36
  %1733 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %1734 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 1
  %1735 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 1
  %1736 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 9
  %1737 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 1
  %1738 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 9
  %1739 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 1
  %1740 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 9
  %1741 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 1
  %1742 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 9
  %1743 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %1744 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %1745 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %1746

1746:                                             ; preds = %1724, %2322
  %1747 = phi i64 [ 0, %1724 ], [ %2325, %2322 ]
  %1748 = phi i32 [ 1, %1724 ], [ %2324, %2322 ]
  %1749 = phi i64 [ 0, %1724 ], [ %2323, %2322 ]
  %1750 = icmp eq i32 %1748, 0
  br i1 %1750, label %2322, label %1751

1751:                                             ; preds = %1746
  %1752 = load i64, ptr %38, align 8, !tbaa !61
  %1753 = add nsw i64 %1752, %1747
  %1754 = load i64, ptr %1725, align 8, !tbaa !53
  %1755 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %715, i64 noundef 0, i64 noundef %1753, i64 noundef %1754, i64 noundef 1, ptr noundef %2) #9
  %1756 = icmp eq ptr %1755, null
  br i1 %1756, label %2322, label %1757

1757:                                             ; preds = %1751
  %1758 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %715) #8
  %1759 = load i64, ptr %19, align 8, !tbaa !62
  %1760 = icmp sgt i64 %1759, 0
  br i1 %1760, label %1761, label %1809

1761:                                             ; preds = %1757
  %1762 = load float, ptr %194, align 8, !tbaa !74
  %1763 = fcmp ole float %1762, 0.000000e+00
  %1764 = fcmp oge float %1762, 6.553500e+04
  %1765 = fadd float %1762, 5.000000e-01
  %1766 = fptoui float %1765 to i16
  %1767 = load float, ptr %200, align 4, !tbaa !77
  %1768 = fcmp ole float %1767, 0.000000e+00
  %1769 = fcmp oge float %1767, 6.553500e+04
  %1770 = fadd float %1767, 5.000000e-01
  %1771 = fptoui float %1770 to i16
  %1772 = load float, ptr %206, align 8, !tbaa !78
  %1773 = fcmp ole float %1772, 0.000000e+00
  %1774 = fcmp oge float %1772, 6.553500e+04
  %1775 = fadd float %1772, 5.000000e-01
  %1776 = fptoui float %1775 to i16
  %1777 = load float, ptr %208, align 4, !tbaa !80
  %1778 = fcmp ole float %1777, 0.000000e+00
  %1779 = fcmp oge float %1777, 6.553500e+04
  %1780 = fadd float %1777, 5.000000e-01
  %1781 = fptoui float %1780 to i16
  %1782 = load i32, ptr %1726, align 4, !tbaa !67
  %1783 = icmp eq i32 %1782, 12
  %1784 = load float, ptr %1727, align 8
  %1785 = fcmp ole float %1784, 0.000000e+00
  %1786 = fcmp oge float %1784, 6.553500e+04
  %1787 = fadd float %1784, 5.000000e-01
  %1788 = fptoui float %1787 to i16
  %1789 = or i1 %1763, %1764
  %1790 = xor i1 %1763, true
  %1791 = sext i1 %1790 to i16
  %1792 = select i1 %1789, i16 %1791, i16 %1766
  %1793 = or i1 %1768, %1769
  %1794 = xor i1 %1768, true
  %1795 = sext i1 %1794 to i16
  %1796 = select i1 %1793, i16 %1795, i16 %1771
  %1797 = or i1 %1773, %1774
  %1798 = xor i1 %1773, true
  %1799 = sext i1 %1798 to i16
  %1800 = select i1 %1797, i16 %1799, i16 %1776
  %1801 = or i1 %1778, %1779
  %1802 = xor i1 %1778, true
  %1803 = sext i1 %1802 to i16
  %1804 = select i1 %1801, i16 %1803, i16 %1781
  %1805 = or i1 %1785, %1786
  %1806 = xor i1 %1785, true
  %1807 = sext i1 %1806 to i16
  %1808 = select i1 %1805, i16 %1807, i16 %1788
  br label %1863

1809:                                             ; preds = %1878, %1757
  %1810 = phi ptr [ %1758, %1757 ], [ %1880, %1878 ]
  %1811 = phi ptr [ %1755, %1757 ], [ %1879, %1878 ]
  %1812 = load i64, ptr %32, align 8, !tbaa !60
  %1813 = sub i64 %1812, %30
  %1814 = icmp sgt i64 %1813, 0
  br i1 %1814, label %1815, label %1883

1815:                                             ; preds = %1809
  %1816 = load float, ptr %144, align 8, !tbaa !74
  %1817 = fcmp ole float %1816, 0.000000e+00
  %1818 = fcmp oge float %1816, 6.553500e+04
  %1819 = fadd float %1816, 5.000000e-01
  %1820 = fptoui float %1819 to i16
  %1821 = load float, ptr %148, align 4, !tbaa !77
  %1822 = fcmp ole float %1821, 0.000000e+00
  %1823 = fcmp oge float %1821, 6.553500e+04
  %1824 = fadd float %1821, 5.000000e-01
  %1825 = fptoui float %1824 to i16
  %1826 = load float, ptr %151, align 8, !tbaa !78
  %1827 = fcmp ole float %1826, 0.000000e+00
  %1828 = fcmp oge float %1826, 6.553500e+04
  %1829 = fadd float %1826, 5.000000e-01
  %1830 = fptoui float %1829 to i16
  %1831 = load float, ptr %155, align 4, !tbaa !80
  %1832 = fcmp ole float %1831, 0.000000e+00
  %1833 = fcmp oge float %1831, 6.553500e+04
  %1834 = fadd float %1831, 5.000000e-01
  %1835 = fptoui float %1834 to i16
  %1836 = load i32, ptr %1728, align 4, !tbaa !67
  %1837 = icmp eq i32 %1836, 12
  %1838 = load float, ptr %1729, align 8
  %1839 = fcmp ole float %1838, 0.000000e+00
  %1840 = fcmp oge float %1838, 6.553500e+04
  %1841 = fadd float %1838, 5.000000e-01
  %1842 = fptoui float %1841 to i16
  %1843 = or i1 %1817, %1818
  %1844 = xor i1 %1817, true
  %1845 = sext i1 %1844 to i16
  %1846 = select i1 %1843, i16 %1845, i16 %1820
  %1847 = or i1 %1822, %1823
  %1848 = xor i1 %1822, true
  %1849 = sext i1 %1848 to i16
  %1850 = select i1 %1847, i16 %1849, i16 %1825
  %1851 = or i1 %1827, %1828
  %1852 = xor i1 %1827, true
  %1853 = sext i1 %1852 to i16
  %1854 = select i1 %1851, i16 %1853, i16 %1830
  %1855 = or i1 %1832, %1833
  %1856 = xor i1 %1832, true
  %1857 = sext i1 %1856 to i16
  %1858 = select i1 %1855, i16 %1857, i16 %1835
  %1859 = or i1 %1839, %1840
  %1860 = xor i1 %1839, true
  %1861 = sext i1 %1860 to i16
  %1862 = select i1 %1859, i16 %1861, i16 %1842
  br label %1936

1863:                                             ; preds = %1761, %1878
  %1864 = phi ptr [ %1755, %1761 ], [ %1879, %1878 ]
  %1865 = phi i64 [ 0, %1761 ], [ %1881, %1878 ]
  %1866 = phi ptr [ %1758, %1761 ], [ %1880, %1878 ]
  %1867 = getelementptr inbounds %struct._PixelPacket, ptr %1864, i64 0, i32 2
  store i16 %1792, ptr %1867, align 2, !tbaa !64
  %1868 = getelementptr inbounds %struct._PixelPacket, ptr %1864, i64 0, i32 1
  store i16 %1796, ptr %1868, align 2, !tbaa !65
  store i16 %1800, ptr %1864, align 2, !tbaa !66
  %1869 = getelementptr inbounds %struct._PixelPacket, ptr %1864, i64 0, i32 3
  store i16 %1804, ptr %1869, align 2, !tbaa !79
  br i1 %1783, label %1875, label %1870

1870:                                             ; preds = %1863
  %1871 = load i32, ptr %53, align 8, !tbaa !83
  %1872 = icmp eq i32 %1871, 2
  %1873 = icmp ne ptr %1866, null
  %1874 = and i1 %1873, %1872
  br i1 %1874, label %1877, label %1878

1875:                                             ; preds = %1863
  %1876 = icmp eq ptr %1866, null
  br i1 %1876, label %1878, label %1877

1877:                                             ; preds = %1875, %1870
  store i16 %1808, ptr %1866, align 2, !tbaa !84
  br label %1878

1878:                                             ; preds = %1870, %1875, %1877
  %1879 = getelementptr inbounds %struct._PixelPacket, ptr %1864, i64 1
  %1880 = getelementptr inbounds i16, ptr %1866, i64 1
  %1881 = add nuw nsw i64 %1865, 1
  %1882 = icmp eq i64 %1881, %1759
  br i1 %1882, label %1809, label %1863, !llvm.loop !101

1883:                                             ; preds = %1951, %1809
  %1884 = phi ptr [ %1810, %1809 ], [ %1953, %1951 ]
  %1885 = phi ptr [ %1811, %1809 ], [ %1952, %1951 ]
  %1886 = load i64, ptr %23, align 8, !tbaa !63
  %1887 = icmp sgt i64 %1886, 0
  br i1 %1887, label %1888, label %1976

1888:                                             ; preds = %1883
  %1889 = load float, ptr %214, align 8, !tbaa !74
  %1890 = fcmp ole float %1889, 0.000000e+00
  %1891 = fcmp oge float %1889, 6.553500e+04
  %1892 = fadd float %1889, 5.000000e-01
  %1893 = fptoui float %1892 to i16
  %1894 = load float, ptr %220, align 4, !tbaa !77
  %1895 = fcmp ole float %1894, 0.000000e+00
  %1896 = fcmp oge float %1894, 6.553500e+04
  %1897 = fadd float %1894, 5.000000e-01
  %1898 = fptoui float %1897 to i16
  %1899 = load float, ptr %226, align 8, !tbaa !78
  %1900 = fcmp ole float %1899, 0.000000e+00
  %1901 = fcmp oge float %1899, 6.553500e+04
  %1902 = fadd float %1899, 5.000000e-01
  %1903 = fptoui float %1902 to i16
  %1904 = load float, ptr %228, align 4, !tbaa !80
  %1905 = fcmp ole float %1904, 0.000000e+00
  %1906 = fcmp oge float %1904, 6.553500e+04
  %1907 = fadd float %1904, 5.000000e-01
  %1908 = fptoui float %1907 to i16
  %1909 = load i32, ptr %1730, align 4, !tbaa !67
  %1910 = icmp eq i32 %1909, 12
  %1911 = load float, ptr %1731, align 8
  %1912 = fcmp ole float %1911, 0.000000e+00
  %1913 = fcmp oge float %1911, 6.553500e+04
  %1914 = fadd float %1911, 5.000000e-01
  %1915 = fptoui float %1914 to i16
  %1916 = or i1 %1890, %1891
  %1917 = xor i1 %1890, true
  %1918 = sext i1 %1917 to i16
  %1919 = select i1 %1916, i16 %1918, i16 %1893
  %1920 = or i1 %1895, %1896
  %1921 = xor i1 %1895, true
  %1922 = sext i1 %1921 to i16
  %1923 = select i1 %1920, i16 %1922, i16 %1898
  %1924 = or i1 %1900, %1901
  %1925 = xor i1 %1900, true
  %1926 = sext i1 %1925 to i16
  %1927 = select i1 %1924, i16 %1926, i16 %1903
  %1928 = or i1 %1905, %1906
  %1929 = xor i1 %1905, true
  %1930 = sext i1 %1929 to i16
  %1931 = select i1 %1928, i16 %1930, i16 %1908
  %1932 = or i1 %1912, %1913
  %1933 = xor i1 %1912, true
  %1934 = sext i1 %1933 to i16
  %1935 = select i1 %1932, i16 %1934, i16 %1915
  br label %1956

1936:                                             ; preds = %1815, %1951
  %1937 = phi ptr [ %1811, %1815 ], [ %1952, %1951 ]
  %1938 = phi i64 [ 0, %1815 ], [ %1954, %1951 ]
  %1939 = phi ptr [ %1810, %1815 ], [ %1953, %1951 ]
  %1940 = getelementptr inbounds %struct._PixelPacket, ptr %1937, i64 0, i32 2
  store i16 %1846, ptr %1940, align 2, !tbaa !64
  %1941 = getelementptr inbounds %struct._PixelPacket, ptr %1937, i64 0, i32 1
  store i16 %1850, ptr %1941, align 2, !tbaa !65
  store i16 %1854, ptr %1937, align 2, !tbaa !66
  %1942 = getelementptr inbounds %struct._PixelPacket, ptr %1937, i64 0, i32 3
  store i16 %1858, ptr %1942, align 2, !tbaa !79
  br i1 %1837, label %1948, label %1943

1943:                                             ; preds = %1936
  %1944 = load i32, ptr %53, align 8, !tbaa !83
  %1945 = icmp eq i32 %1944, 2
  %1946 = icmp ne ptr %1939, null
  %1947 = and i1 %1946, %1945
  br i1 %1947, label %1950, label %1951

1948:                                             ; preds = %1936
  %1949 = icmp eq ptr %1939, null
  br i1 %1949, label %1951, label %1950

1950:                                             ; preds = %1948, %1943
  store i16 %1862, ptr %1939, align 2, !tbaa !84
  br label %1951

1951:                                             ; preds = %1943, %1948, %1950
  %1952 = getelementptr inbounds %struct._PixelPacket, ptr %1937, i64 1
  %1953 = getelementptr inbounds i16, ptr %1939, i64 1
  %1954 = add nuw nsw i64 %1938, 1
  %1955 = icmp eq i64 %1954, %1813
  br i1 %1955, label %1883, label %1936, !llvm.loop !102

1956:                                             ; preds = %1888, %1971
  %1957 = phi ptr [ %1885, %1888 ], [ %1972, %1971 ]
  %1958 = phi i64 [ 0, %1888 ], [ %1974, %1971 ]
  %1959 = phi ptr [ %1884, %1888 ], [ %1973, %1971 ]
  %1960 = getelementptr inbounds %struct._PixelPacket, ptr %1957, i64 0, i32 2
  store i16 %1919, ptr %1960, align 2, !tbaa !64
  %1961 = getelementptr inbounds %struct._PixelPacket, ptr %1957, i64 0, i32 1
  store i16 %1923, ptr %1961, align 2, !tbaa !65
  store i16 %1927, ptr %1957, align 2, !tbaa !66
  %1962 = getelementptr inbounds %struct._PixelPacket, ptr %1957, i64 0, i32 3
  store i16 %1931, ptr %1962, align 2, !tbaa !79
  br i1 %1910, label %1968, label %1963

1963:                                             ; preds = %1956
  %1964 = load i32, ptr %53, align 8, !tbaa !83
  %1965 = icmp eq i32 %1964, 2
  %1966 = icmp ne ptr %1959, null
  %1967 = and i1 %1966, %1965
  br i1 %1967, label %1970, label %1971

1968:                                             ; preds = %1956
  %1969 = icmp eq ptr %1959, null
  br i1 %1969, label %1971, label %1970

1970:                                             ; preds = %1968, %1963
  store i16 %1935, ptr %1959, align 2, !tbaa !84
  br label %1971

1971:                                             ; preds = %1963, %1968, %1970
  %1972 = getelementptr inbounds %struct._PixelPacket, ptr %1957, i64 1
  %1973 = getelementptr inbounds i16, ptr %1959, i64 1
  %1974 = add nuw nsw i64 %1958, 1
  %1975 = icmp eq i64 %1974, %1886
  br i1 %1975, label %1976, label %1956, !llvm.loop !103

1976:                                             ; preds = %1971, %1883
  %1977 = phi ptr [ %1884, %1883 ], [ %1973, %1971 ]
  %1978 = phi ptr [ %1885, %1883 ], [ %1972, %1971 ]
  %1979 = load i32, ptr %1732, align 8, !tbaa !104
  switch i32 %1979, label %1983 [
    i32 13, label %2054
    i32 40, label %1980
  ]

1980:                                             ; preds = %1976
  %1981 = load i32, ptr %1733, align 8, !tbaa !69
  %1982 = icmp eq i32 %1981, 0
  br i1 %1982, label %2054, label %1983

1983:                                             ; preds = %1976, %1980
  %1984 = load i64, ptr %39, align 8, !tbaa !53
  %1985 = icmp sgt i64 %1984, 0
  br i1 %1985, label %1986, label %2082

1986:                                             ; preds = %1983
  %1987 = load float, ptr %127, align 8, !tbaa !74
  %1988 = fcmp ole float %1987, 0.000000e+00
  %1989 = fcmp oge float %1987, 6.553500e+04
  %1990 = fadd float %1987, 5.000000e-01
  %1991 = fptoui float %1990 to i16
  %1992 = load float, ptr %131, align 4, !tbaa !77
  %1993 = fcmp ole float %1992, 0.000000e+00
  %1994 = fcmp oge float %1992, 6.553500e+04
  %1995 = fadd float %1992, 5.000000e-01
  %1996 = fptoui float %1995 to i16
  %1997 = load float, ptr %134, align 8, !tbaa !78
  %1998 = fcmp ole float %1997, 0.000000e+00
  %1999 = fcmp oge float %1997, 6.553500e+04
  %2000 = fadd float %1997, 5.000000e-01
  %2001 = fptoui float %2000 to i16
  %2002 = load float, ptr %138, align 4, !tbaa !80
  %2003 = fcmp ole float %2002, 0.000000e+00
  %2004 = fcmp oge float %2002, 6.553500e+04
  %2005 = fadd float %2002, 5.000000e-01
  %2006 = fptoui float %2005 to i16
  %2007 = load i32, ptr %1735, align 4, !tbaa !67
  %2008 = icmp eq i32 %2007, 12
  %2009 = load float, ptr %1736, align 8
  %2010 = fcmp ole float %2009, 0.000000e+00
  %2011 = fcmp oge float %2009, 6.553500e+04
  %2012 = fadd float %2009, 5.000000e-01
  %2013 = fptoui float %2012 to i16
  %2014 = or i1 %1988, %1989
  %2015 = xor i1 %1988, true
  %2016 = sext i1 %2015 to i16
  %2017 = select i1 %2014, i16 %2016, i16 %1991
  %2018 = or i1 %1993, %1994
  %2019 = xor i1 %1993, true
  %2020 = sext i1 %2019 to i16
  %2021 = select i1 %2018, i16 %2020, i16 %1996
  %2022 = or i1 %1998, %1999
  %2023 = xor i1 %1998, true
  %2024 = sext i1 %2023 to i16
  %2025 = select i1 %2022, i16 %2024, i16 %2001
  %2026 = or i1 %2003, %2004
  %2027 = xor i1 %2003, true
  %2028 = sext i1 %2027 to i16
  %2029 = select i1 %2026, i16 %2028, i16 %2006
  %2030 = or i1 %2010, %2011
  %2031 = xor i1 %2010, true
  %2032 = sext i1 %2031 to i16
  %2033 = select i1 %2030, i16 %2032, i16 %2013
  br label %2034

2034:                                             ; preds = %1986, %2049
  %2035 = phi ptr [ %1978, %1986 ], [ %2050, %2049 ]
  %2036 = phi i64 [ 0, %1986 ], [ %2052, %2049 ]
  %2037 = phi ptr [ %1977, %1986 ], [ %2051, %2049 ]
  %2038 = getelementptr inbounds %struct._PixelPacket, ptr %2035, i64 0, i32 2
  store i16 %2017, ptr %2038, align 2, !tbaa !64
  %2039 = getelementptr inbounds %struct._PixelPacket, ptr %2035, i64 0, i32 1
  store i16 %2021, ptr %2039, align 2, !tbaa !65
  store i16 %2025, ptr %2035, align 2, !tbaa !66
  %2040 = getelementptr inbounds %struct._PixelPacket, ptr %2035, i64 0, i32 3
  store i16 %2029, ptr %2040, align 2, !tbaa !79
  br i1 %2008, label %2046, label %2041

2041:                                             ; preds = %2034
  %2042 = load i32, ptr %53, align 8, !tbaa !83
  %2043 = icmp eq i32 %2042, 2
  %2044 = icmp ne ptr %2037, null
  %2045 = and i1 %2044, %2043
  br i1 %2045, label %2048, label %2049

2046:                                             ; preds = %2034
  %2047 = icmp eq ptr %2037, null
  br i1 %2047, label %2049, label %2048

2048:                                             ; preds = %2046, %2041
  store i16 %2033, ptr %2037, align 2, !tbaa !84
  br label %2049

2049:                                             ; preds = %2041, %2046, %2048
  %2050 = getelementptr inbounds %struct._PixelPacket, ptr %2035, i64 1
  %2051 = getelementptr inbounds i16, ptr %2037, i64 1
  %2052 = add nuw nsw i64 %2036, 1
  %2053 = icmp eq i64 %2052, %1984
  br i1 %2053, label %2082, label %2034, !llvm.loop !105

2054:                                             ; preds = %1976, %1980
  %2055 = load i64, ptr %39, align 8, !tbaa !53
  %2056 = call ptr @GetCacheViewVirtualPixels(ptr noundef %714, i64 noundef 0, i64 noundef %1747, i64 noundef %2055, i64 noundef 1, ptr noundef %2) #9
  %2057 = icmp eq ptr %2056, null
  br i1 %2057, label %2078, label %2058

2058:                                             ; preds = %2054
  %2059 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %714) #8
  %2060 = load i64, ptr %39, align 8, !tbaa !53
  %2061 = shl i64 %2060, 3
  %2062 = call ptr @CopyMagickMemory(ptr noundef %1978, ptr noundef nonnull %2056, i64 noundef %2061) #8
  %2063 = load i32, ptr %249, align 4, !tbaa !67
  %2064 = icmp eq i32 %2063, 12
  br i1 %2064, label %2065, label %2074

2065:                                             ; preds = %2058
  %2066 = load i32, ptr %1734, align 4, !tbaa !67
  %2067 = icmp eq i32 %2066, 12
  br i1 %2067, label %2068, label %2074

2068:                                             ; preds = %2065
  %2069 = load i64, ptr %39, align 8, !tbaa !53
  %2070 = shl i64 %2069, 1
  %2071 = call ptr @CopyMagickMemory(ptr noundef %1977, ptr noundef %2059, i64 noundef %2070) #8
  %2072 = load i64, ptr %39, align 8, !tbaa !53
  %2073 = getelementptr inbounds i16, ptr %1977, i64 %2072
  br label %2074

2074:                                             ; preds = %2068, %2065, %2058
  %2075 = phi ptr [ %2073, %2068 ], [ %1977, %2065 ], [ %1977, %2058 ]
  %2076 = load i64, ptr %39, align 8, !tbaa !53
  %2077 = getelementptr inbounds %struct._PixelPacket, ptr %1978, i64 %2076
  br label %2078

2078:                                             ; preds = %2054, %2074
  %2079 = phi i32 [ 1, %2074 ], [ 0, %2054 ]
  %2080 = phi ptr [ %2075, %2074 ], [ %1977, %2054 ]
  %2081 = phi ptr [ %2077, %2074 ], [ %1978, %2054 ]
  br i1 %2057, label %2322, label %2082

2082:                                             ; preds = %2049, %1983, %2078
  %2083 = phi i32 [ %2079, %2078 ], [ 1, %1983 ], [ 1, %2049 ]
  %2084 = phi ptr [ %2080, %2078 ], [ %1977, %1983 ], [ %2051, %2049 ]
  %2085 = phi ptr [ %2081, %2078 ], [ %1978, %1983 ], [ %2050, %2049 ]
  %2086 = load i64, ptr %23, align 8, !tbaa !63
  %2087 = icmp sgt i64 %2086, 0
  br i1 %2087, label %2088, label %2156

2088:                                             ; preds = %2082
  %2089 = load float, ptr %194, align 8, !tbaa !74
  %2090 = fcmp ole float %2089, 0.000000e+00
  %2091 = fcmp oge float %2089, 6.553500e+04
  %2092 = fadd float %2089, 5.000000e-01
  %2093 = fptoui float %2092 to i16
  %2094 = load float, ptr %200, align 4, !tbaa !77
  %2095 = fcmp ole float %2094, 0.000000e+00
  %2096 = fcmp oge float %2094, 6.553500e+04
  %2097 = fadd float %2094, 5.000000e-01
  %2098 = fptoui float %2097 to i16
  %2099 = load float, ptr %206, align 8, !tbaa !78
  %2100 = fcmp ole float %2099, 0.000000e+00
  %2101 = fcmp oge float %2099, 6.553500e+04
  %2102 = fadd float %2099, 5.000000e-01
  %2103 = fptoui float %2102 to i16
  %2104 = load float, ptr %208, align 4, !tbaa !80
  %2105 = fcmp ole float %2104, 0.000000e+00
  %2106 = fcmp oge float %2104, 6.553500e+04
  %2107 = fadd float %2104, 5.000000e-01
  %2108 = fptoui float %2107 to i16
  %2109 = load i32, ptr %1737, align 4, !tbaa !67
  %2110 = icmp eq i32 %2109, 12
  %2111 = load float, ptr %1738, align 8
  %2112 = fcmp ole float %2111, 0.000000e+00
  %2113 = fcmp oge float %2111, 6.553500e+04
  %2114 = fadd float %2111, 5.000000e-01
  %2115 = fptoui float %2114 to i16
  %2116 = or i1 %2090, %2091
  %2117 = xor i1 %2090, true
  %2118 = sext i1 %2117 to i16
  %2119 = select i1 %2116, i16 %2118, i16 %2093
  %2120 = or i1 %2095, %2096
  %2121 = xor i1 %2095, true
  %2122 = sext i1 %2121 to i16
  %2123 = select i1 %2120, i16 %2122, i16 %2098
  %2124 = or i1 %2100, %2101
  %2125 = xor i1 %2100, true
  %2126 = sext i1 %2125 to i16
  %2127 = select i1 %2124, i16 %2126, i16 %2103
  %2128 = or i1 %2105, %2106
  %2129 = xor i1 %2105, true
  %2130 = sext i1 %2129 to i16
  %2131 = select i1 %2128, i16 %2130, i16 %2108
  %2132 = or i1 %2112, %2113
  %2133 = xor i1 %2112, true
  %2134 = sext i1 %2133 to i16
  %2135 = select i1 %2132, i16 %2134, i16 %2115
  br label %2136

2136:                                             ; preds = %2088, %2151
  %2137 = phi ptr [ %2085, %2088 ], [ %2152, %2151 ]
  %2138 = phi i64 [ 0, %2088 ], [ %2154, %2151 ]
  %2139 = phi ptr [ %2084, %2088 ], [ %2153, %2151 ]
  %2140 = getelementptr inbounds %struct._PixelPacket, ptr %2137, i64 0, i32 2
  store i16 %2119, ptr %2140, align 2, !tbaa !64
  %2141 = getelementptr inbounds %struct._PixelPacket, ptr %2137, i64 0, i32 1
  store i16 %2123, ptr %2141, align 2, !tbaa !65
  store i16 %2127, ptr %2137, align 2, !tbaa !66
  %2142 = getelementptr inbounds %struct._PixelPacket, ptr %2137, i64 0, i32 3
  store i16 %2131, ptr %2142, align 2, !tbaa !79
  br i1 %2110, label %2148, label %2143

2143:                                             ; preds = %2136
  %2144 = load i32, ptr %53, align 8, !tbaa !83
  %2145 = icmp eq i32 %2144, 2
  %2146 = icmp ne ptr %2139, null
  %2147 = and i1 %2146, %2145
  br i1 %2147, label %2150, label %2151

2148:                                             ; preds = %2136
  %2149 = icmp eq ptr %2139, null
  br i1 %2149, label %2151, label %2150

2150:                                             ; preds = %2148, %2143
  store i16 %2135, ptr %2139, align 2, !tbaa !84
  br label %2151

2151:                                             ; preds = %2143, %2148, %2150
  %2152 = getelementptr inbounds %struct._PixelPacket, ptr %2137, i64 1
  %2153 = getelementptr inbounds i16, ptr %2139, i64 1
  %2154 = add nuw nsw i64 %2138, 1
  %2155 = icmp eq i64 %2154, %2086
  br i1 %2155, label %2156, label %2136, !llvm.loop !106

2156:                                             ; preds = %2151, %2082
  %2157 = phi ptr [ %2084, %2082 ], [ %2153, %2151 ]
  %2158 = phi ptr [ %2085, %2082 ], [ %2152, %2151 ]
  %2159 = load i64, ptr %1, align 8, !tbaa !55
  %2160 = load i64, ptr %32, align 8, !tbaa !60
  %2161 = load i64, ptr %39, align 8, !tbaa !53
  %2162 = add i64 %30, %2160
  %2163 = add i64 %2162, %2161
  %2164 = sub i64 %2159, %2163
  %2165 = icmp sgt i64 %2164, 0
  br i1 %2165, label %2166, label %2214

2166:                                             ; preds = %2156
  %2167 = load float, ptr %144, align 8, !tbaa !74
  %2168 = fcmp ole float %2167, 0.000000e+00
  %2169 = fcmp oge float %2167, 6.553500e+04
  %2170 = fadd float %2167, 5.000000e-01
  %2171 = fptoui float %2170 to i16
  %2172 = load float, ptr %148, align 4, !tbaa !77
  %2173 = fcmp ole float %2172, 0.000000e+00
  %2174 = fcmp oge float %2172, 6.553500e+04
  %2175 = fadd float %2172, 5.000000e-01
  %2176 = fptoui float %2175 to i16
  %2177 = load float, ptr %151, align 8, !tbaa !78
  %2178 = fcmp ole float %2177, 0.000000e+00
  %2179 = fcmp oge float %2177, 6.553500e+04
  %2180 = fadd float %2177, 5.000000e-01
  %2181 = fptoui float %2180 to i16
  %2182 = load float, ptr %155, align 4, !tbaa !80
  %2183 = fcmp ole float %2182, 0.000000e+00
  %2184 = fcmp oge float %2182, 6.553500e+04
  %2185 = fadd float %2182, 5.000000e-01
  %2186 = fptoui float %2185 to i16
  %2187 = load i32, ptr %1739, align 4, !tbaa !67
  %2188 = icmp eq i32 %2187, 12
  %2189 = load float, ptr %1740, align 8
  %2190 = fcmp ole float %2189, 0.000000e+00
  %2191 = fcmp oge float %2189, 6.553500e+04
  %2192 = fadd float %2189, 5.000000e-01
  %2193 = fptoui float %2192 to i16
  %2194 = or i1 %2168, %2169
  %2195 = xor i1 %2168, true
  %2196 = sext i1 %2195 to i16
  %2197 = select i1 %2194, i16 %2196, i16 %2171
  %2198 = or i1 %2173, %2174
  %2199 = xor i1 %2173, true
  %2200 = sext i1 %2199 to i16
  %2201 = select i1 %2198, i16 %2200, i16 %2176
  %2202 = or i1 %2178, %2179
  %2203 = xor i1 %2178, true
  %2204 = sext i1 %2203 to i16
  %2205 = select i1 %2202, i16 %2204, i16 %2181
  %2206 = or i1 %2183, %2184
  %2207 = xor i1 %2183, true
  %2208 = sext i1 %2207 to i16
  %2209 = select i1 %2206, i16 %2208, i16 %2186
  %2210 = or i1 %2190, %2191
  %2211 = xor i1 %2190, true
  %2212 = sext i1 %2211 to i16
  %2213 = select i1 %2210, i16 %2212, i16 %2193
  br label %2267

2214:                                             ; preds = %2282, %2156
  %2215 = phi ptr [ %2157, %2156 ], [ %2284, %2282 ]
  %2216 = phi ptr [ %2158, %2156 ], [ %2283, %2282 ]
  %2217 = load i64, ptr %19, align 8, !tbaa !62
  %2218 = icmp sgt i64 %2217, 0
  br i1 %2218, label %2219, label %2307

2219:                                             ; preds = %2214
  %2220 = load float, ptr %214, align 8, !tbaa !74
  %2221 = fcmp ole float %2220, 0.000000e+00
  %2222 = fcmp oge float %2220, 6.553500e+04
  %2223 = fadd float %2220, 5.000000e-01
  %2224 = fptoui float %2223 to i16
  %2225 = load float, ptr %220, align 4, !tbaa !77
  %2226 = fcmp ole float %2225, 0.000000e+00
  %2227 = fcmp oge float %2225, 6.553500e+04
  %2228 = fadd float %2225, 5.000000e-01
  %2229 = fptoui float %2228 to i16
  %2230 = load float, ptr %226, align 8, !tbaa !78
  %2231 = fcmp ole float %2230, 0.000000e+00
  %2232 = fcmp oge float %2230, 6.553500e+04
  %2233 = fadd float %2230, 5.000000e-01
  %2234 = fptoui float %2233 to i16
  %2235 = load float, ptr %228, align 4, !tbaa !80
  %2236 = fcmp ole float %2235, 0.000000e+00
  %2237 = fcmp oge float %2235, 6.553500e+04
  %2238 = fadd float %2235, 5.000000e-01
  %2239 = fptoui float %2238 to i16
  %2240 = load i32, ptr %1741, align 4, !tbaa !67
  %2241 = icmp eq i32 %2240, 12
  %2242 = load float, ptr %1742, align 8
  %2243 = fcmp ole float %2242, 0.000000e+00
  %2244 = fcmp oge float %2242, 6.553500e+04
  %2245 = fadd float %2242, 5.000000e-01
  %2246 = fptoui float %2245 to i16
  %2247 = or i1 %2221, %2222
  %2248 = xor i1 %2221, true
  %2249 = sext i1 %2248 to i16
  %2250 = select i1 %2247, i16 %2249, i16 %2224
  %2251 = or i1 %2226, %2227
  %2252 = xor i1 %2226, true
  %2253 = sext i1 %2252 to i16
  %2254 = select i1 %2251, i16 %2253, i16 %2229
  %2255 = or i1 %2231, %2232
  %2256 = xor i1 %2231, true
  %2257 = sext i1 %2256 to i16
  %2258 = select i1 %2255, i16 %2257, i16 %2234
  %2259 = or i1 %2236, %2237
  %2260 = xor i1 %2236, true
  %2261 = sext i1 %2260 to i16
  %2262 = select i1 %2259, i16 %2261, i16 %2239
  %2263 = or i1 %2243, %2244
  %2264 = xor i1 %2243, true
  %2265 = sext i1 %2264 to i16
  %2266 = select i1 %2263, i16 %2265, i16 %2246
  br label %2287

2267:                                             ; preds = %2166, %2282
  %2268 = phi ptr [ %2158, %2166 ], [ %2283, %2282 ]
  %2269 = phi i64 [ 0, %2166 ], [ %2285, %2282 ]
  %2270 = phi ptr [ %2157, %2166 ], [ %2284, %2282 ]
  %2271 = getelementptr inbounds %struct._PixelPacket, ptr %2268, i64 0, i32 2
  store i16 %2197, ptr %2271, align 2, !tbaa !64
  %2272 = getelementptr inbounds %struct._PixelPacket, ptr %2268, i64 0, i32 1
  store i16 %2201, ptr %2272, align 2, !tbaa !65
  store i16 %2205, ptr %2268, align 2, !tbaa !66
  %2273 = getelementptr inbounds %struct._PixelPacket, ptr %2268, i64 0, i32 3
  store i16 %2209, ptr %2273, align 2, !tbaa !79
  br i1 %2188, label %2279, label %2274

2274:                                             ; preds = %2267
  %2275 = load i32, ptr %53, align 8, !tbaa !83
  %2276 = icmp eq i32 %2275, 2
  %2277 = icmp ne ptr %2270, null
  %2278 = and i1 %2277, %2276
  br i1 %2278, label %2281, label %2282

2279:                                             ; preds = %2267
  %2280 = icmp eq ptr %2270, null
  br i1 %2280, label %2282, label %2281

2281:                                             ; preds = %2279, %2274
  store i16 %2213, ptr %2270, align 2, !tbaa !84
  br label %2282

2282:                                             ; preds = %2274, %2279, %2281
  %2283 = getelementptr inbounds %struct._PixelPacket, ptr %2268, i64 1
  %2284 = getelementptr inbounds i16, ptr %2270, i64 1
  %2285 = add nuw nsw i64 %2269, 1
  %2286 = icmp eq i64 %2285, %2164
  br i1 %2286, label %2214, label %2267, !llvm.loop !107

2287:                                             ; preds = %2219, %2302
  %2288 = phi ptr [ %2216, %2219 ], [ %2303, %2302 ]
  %2289 = phi i64 [ 0, %2219 ], [ %2305, %2302 ]
  %2290 = phi ptr [ %2215, %2219 ], [ %2304, %2302 ]
  %2291 = getelementptr inbounds %struct._PixelPacket, ptr %2288, i64 0, i32 2
  store i16 %2250, ptr %2291, align 2, !tbaa !64
  %2292 = getelementptr inbounds %struct._PixelPacket, ptr %2288, i64 0, i32 1
  store i16 %2254, ptr %2292, align 2, !tbaa !65
  store i16 %2258, ptr %2288, align 2, !tbaa !66
  %2293 = getelementptr inbounds %struct._PixelPacket, ptr %2288, i64 0, i32 3
  store i16 %2262, ptr %2293, align 2, !tbaa !79
  br i1 %2241, label %2299, label %2294

2294:                                             ; preds = %2287
  %2295 = load i32, ptr %53, align 8, !tbaa !83
  %2296 = icmp eq i32 %2295, 2
  %2297 = icmp ne ptr %2290, null
  %2298 = and i1 %2297, %2296
  br i1 %2298, label %2301, label %2302

2299:                                             ; preds = %2287
  %2300 = icmp eq ptr %2290, null
  br i1 %2300, label %2302, label %2301

2301:                                             ; preds = %2299, %2294
  store i16 %2266, ptr %2290, align 2, !tbaa !84
  br label %2302

2302:                                             ; preds = %2294, %2299, %2301
  %2303 = getelementptr inbounds %struct._PixelPacket, ptr %2288, i64 1
  %2304 = getelementptr inbounds i16, ptr %2290, i64 1
  %2305 = add nuw nsw i64 %2289, 1
  %2306 = icmp eq i64 %2305, %2217
  br i1 %2306, label %2307, label %2287, !llvm.loop !108

2307:                                             ; preds = %2302, %2214
  %2308 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %715, ptr noundef %2) #9
  %2309 = icmp eq i32 %2308, 0
  %2310 = select i1 %2309, i32 0, i32 %2083
  %2311 = load ptr, ptr %1743, align 8, !tbaa !109
  %2312 = icmp eq ptr %2311, null
  br i1 %2312, label %2322, label %2313

2313:                                             ; preds = %2307
  %2314 = add nsw i64 %1749, 1
  %2315 = load i64, ptr %46, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #8
  %2316 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.5, ptr noundef nonnull %1744) #8
  %2317 = load ptr, ptr %1743, align 8, !tbaa !109
  %2318 = load ptr, ptr %1745, align 8, !tbaa !110
  %2319 = call i32 %2317(ptr noundef nonnull %4, i64 noundef %1749, i64 noundef %2315, ptr noundef %2318) #8
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #8
  %2320 = icmp eq i32 %2319, 0
  %2321 = select i1 %2320, i32 0, i32 %2310
  br label %2322

2322:                                             ; preds = %2307, %2313, %1751, %1746, %2078
  %2323 = phi i64 [ %1749, %2078 ], [ %1749, %1746 ], [ %1749, %1751 ], [ %2314, %2313 ], [ %1749, %2307 ]
  %2324 = phi i32 [ %2079, %2078 ], [ 0, %1746 ], [ 0, %1751 ], [ %2321, %2313 ], [ %2310, %2307 ]
  %2325 = add nuw nsw i64 %1747, 1
  %2326 = load i64, ptr %46, align 8, !tbaa !57
  %2327 = icmp slt i64 %2325, %2326
  br i1 %2327, label %1746, label %2328, !llvm.loop !111

2328:                                             ; preds = %2322
  %2329 = icmp eq i32 %2324, 0
  br label %2330

2330:                                             ; preds = %2328, %1721
  %2331 = phi i1 [ false, %1721 ], [ %2329, %2328 ]
  %2332 = phi i64 [ %1722, %1721 ], [ %2326, %2328 ]
  %2333 = load i64, ptr %23, align 8, !tbaa !63
  %2334 = load i64, ptr %36, align 8, !tbaa !59
  %2335 = load i64, ptr %38, align 8, !tbaa !61
  %2336 = load i64, ptr %19, align 8, !tbaa !62
  %2337 = add i64 %2332, %30
  %2338 = add i64 %2333, %2334
  %2339 = add i64 %2337, %2335
  %2340 = sub i64 %2338, %2339
  %2341 = add i64 %2340, %2336
  %2342 = icmp eq i64 %2341, 0
  br i1 %2342, label %3350, label %2343

2343:                                             ; preds = %2330
  %2344 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 8
  %2345 = load i64, ptr %2344, align 8, !tbaa !57
  %2346 = sub i64 %2345, %2341
  %2347 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 7
  %2348 = load i64, ptr %2347, align 8, !tbaa !53
  %2349 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %715, i64 noundef 0, i64 noundef %2346, i64 noundef %2348, i64 noundef %2341, ptr noundef %2) #9
  %2350 = icmp eq ptr %2349, null
  br i1 %2350, label %3350, label %2351

2351:                                             ; preds = %2343
  %2352 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %715) #8
  %2353 = load i64, ptr %23, align 8, !tbaa !63
  %2354 = icmp sgt i64 %2353, 0
  br i1 %2354, label %2355, label %2880

2355:                                             ; preds = %2351
  %2356 = load i64, ptr %19, align 8, !tbaa !62
  %2357 = icmp sgt i64 %2356, 0
  %2358 = load float, ptr %194, align 8
  %2359 = fcmp ole float %2358, 0.000000e+00
  %2360 = fcmp oge float %2358, 6.553500e+04
  %2361 = fadd float %2358, 5.000000e-01
  %2362 = fptoui float %2361 to i16
  %2363 = load float, ptr %200, align 4
  %2364 = fcmp ole float %2363, 0.000000e+00
  %2365 = fcmp oge float %2363, 6.553500e+04
  %2366 = fadd float %2363, 5.000000e-01
  %2367 = fptoui float %2366 to i16
  %2368 = load float, ptr %206, align 8
  %2369 = fcmp ole float %2368, 0.000000e+00
  %2370 = fcmp oge float %2368, 6.553500e+04
  %2371 = fadd float %2368, 5.000000e-01
  %2372 = fptoui float %2371 to i16
  %2373 = load float, ptr %208, align 4
  %2374 = fcmp ole float %2373, 0.000000e+00
  %2375 = fcmp oge float %2373, 6.553500e+04
  %2376 = fadd float %2373, 5.000000e-01
  %2377 = fptoui float %2376 to i16
  %2378 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 1
  %2379 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 9
  %2380 = load i64, ptr %32, align 8, !tbaa !60
  %2381 = sub i64 %2380, %30
  %2382 = icmp sgt i64 %2381, 0
  %2383 = load float, ptr %144, align 8
  %2384 = fcmp ole float %2383, 0.000000e+00
  %2385 = fcmp oge float %2383, 6.553500e+04
  %2386 = fadd float %2383, 5.000000e-01
  %2387 = fptoui float %2386 to i16
  %2388 = load float, ptr %148, align 4
  %2389 = fcmp ole float %2388, 0.000000e+00
  %2390 = fcmp oge float %2388, 6.553500e+04
  %2391 = fadd float %2388, 5.000000e-01
  %2392 = fptoui float %2391 to i16
  %2393 = load float, ptr %151, align 8
  %2394 = fcmp ole float %2393, 0.000000e+00
  %2395 = fcmp oge float %2393, 6.553500e+04
  %2396 = fadd float %2393, 5.000000e-01
  %2397 = fptoui float %2396 to i16
  %2398 = load float, ptr %155, align 4
  %2399 = fcmp ole float %2398, 0.000000e+00
  %2400 = fcmp oge float %2398, 6.553500e+04
  %2401 = fadd float %2398, 5.000000e-01
  %2402 = fptoui float %2401 to i16
  %2403 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 1
  %2404 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 9
  %2405 = load float, ptr %214, align 8
  %2406 = fcmp ole float %2405, 0.000000e+00
  %2407 = fcmp oge float %2405, 6.553500e+04
  %2408 = fadd float %2405, 5.000000e-01
  %2409 = fptoui float %2408 to i16
  %2410 = load float, ptr %220, align 4
  %2411 = fcmp ole float %2410, 0.000000e+00
  %2412 = fcmp oge float %2410, 6.553500e+04
  %2413 = fadd float %2410, 5.000000e-01
  %2414 = fptoui float %2413 to i16
  %2415 = load float, ptr %226, align 8
  %2416 = fcmp ole float %2415, 0.000000e+00
  %2417 = fcmp oge float %2415, 6.553500e+04
  %2418 = fadd float %2415, 5.000000e-01
  %2419 = fptoui float %2418 to i16
  %2420 = load float, ptr %228, align 4
  %2421 = fcmp ole float %2420, 0.000000e+00
  %2422 = fcmp oge float %2420, 6.553500e+04
  %2423 = fadd float %2420, 5.000000e-01
  %2424 = fptoui float %2423 to i16
  %2425 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 1
  %2426 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 9
  %2427 = load i64, ptr %39, align 8, !tbaa !53
  %2428 = shl nuw nsw i64 %2353, 1
  %2429 = add i64 %2427, %2428
  %2430 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 1
  %2431 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 9
  %2432 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 1
  %2433 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 9
  %2434 = load i64, ptr %1, align 8, !tbaa !55
  %2435 = add i64 %2380, %30
  %2436 = add i64 %2435, %2427
  %2437 = sub i64 %2434, %2436
  %2438 = icmp sgt i64 %2437, 0
  %2439 = load float, ptr %144, align 8
  %2440 = fcmp ole float %2439, 0.000000e+00
  %2441 = fcmp oge float %2439, 6.553500e+04
  %2442 = fadd float %2439, 5.000000e-01
  %2443 = fptoui float %2442 to i16
  %2444 = load float, ptr %148, align 4
  %2445 = fcmp ole float %2444, 0.000000e+00
  %2446 = fcmp oge float %2444, 6.553500e+04
  %2447 = fadd float %2444, 5.000000e-01
  %2448 = fptoui float %2447 to i16
  %2449 = load float, ptr %151, align 8
  %2450 = fcmp ole float %2449, 0.000000e+00
  %2451 = fcmp oge float %2449, 6.553500e+04
  %2452 = fadd float %2449, 5.000000e-01
  %2453 = fptoui float %2452 to i16
  %2454 = load float, ptr %155, align 4
  %2455 = fcmp ole float %2454, 0.000000e+00
  %2456 = fcmp oge float %2454, 6.553500e+04
  %2457 = fadd float %2454, 5.000000e-01
  %2458 = fptoui float %2457 to i16
  %2459 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 1
  %2460 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 9
  %2461 = icmp sgt i64 %2356, 0
  %2462 = load float, ptr %214, align 8
  %2463 = fcmp ole float %2462, 0.000000e+00
  %2464 = fcmp oge float %2462, 6.553500e+04
  %2465 = fadd float %2462, 5.000000e-01
  %2466 = fptoui float %2465 to i16
  %2467 = load float, ptr %220, align 4
  %2468 = fcmp ole float %2467, 0.000000e+00
  %2469 = fcmp oge float %2467, 6.553500e+04
  %2470 = fadd float %2467, 5.000000e-01
  %2471 = fptoui float %2470 to i16
  %2472 = load float, ptr %226, align 8
  %2473 = fcmp ole float %2472, 0.000000e+00
  %2474 = fcmp oge float %2472, 6.553500e+04
  %2475 = fadd float %2472, 5.000000e-01
  %2476 = fptoui float %2475 to i16
  %2477 = load float, ptr %228, align 4
  %2478 = fcmp ole float %2477, 0.000000e+00
  %2479 = fcmp oge float %2477, 6.553500e+04
  %2480 = fadd float %2477, 5.000000e-01
  %2481 = fptoui float %2480 to i16
  %2482 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 1
  %2483 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 9
  %2484 = or i1 %2359, %2360
  %2485 = xor i1 %2359, true
  %2486 = sext i1 %2485 to i16
  %2487 = select i1 %2484, i16 %2486, i16 %2362
  %2488 = or i1 %2364, %2365
  %2489 = xor i1 %2364, true
  %2490 = sext i1 %2489 to i16
  %2491 = select i1 %2488, i16 %2490, i16 %2367
  %2492 = or i1 %2369, %2370
  %2493 = xor i1 %2369, true
  %2494 = sext i1 %2493 to i16
  %2495 = select i1 %2492, i16 %2494, i16 %2372
  %2496 = or i1 %2374, %2375
  %2497 = xor i1 %2374, true
  %2498 = sext i1 %2497 to i16
  %2499 = select i1 %2496, i16 %2498, i16 %2377
  %2500 = or i1 %2384, %2385
  %2501 = xor i1 %2384, true
  %2502 = sext i1 %2501 to i16
  %2503 = select i1 %2500, i16 %2502, i16 %2387
  %2504 = or i1 %2389, %2390
  %2505 = xor i1 %2389, true
  %2506 = sext i1 %2505 to i16
  %2507 = select i1 %2504, i16 %2506, i16 %2392
  %2508 = or i1 %2394, %2395
  %2509 = xor i1 %2394, true
  %2510 = sext i1 %2509 to i16
  %2511 = select i1 %2508, i16 %2510, i16 %2397
  %2512 = or i1 %2399, %2400
  %2513 = xor i1 %2399, true
  %2514 = sext i1 %2513 to i16
  %2515 = select i1 %2512, i16 %2514, i16 %2402
  %2516 = or i1 %2406, %2407
  %2517 = xor i1 %2406, true
  %2518 = sext i1 %2517 to i16
  %2519 = select i1 %2516, i16 %2518, i16 %2409
  %2520 = or i1 %2411, %2412
  %2521 = xor i1 %2411, true
  %2522 = sext i1 %2521 to i16
  %2523 = select i1 %2520, i16 %2522, i16 %2414
  %2524 = or i1 %2416, %2417
  %2525 = xor i1 %2416, true
  %2526 = sext i1 %2525 to i16
  %2527 = select i1 %2524, i16 %2526, i16 %2419
  %2528 = or i1 %2421, %2422
  %2529 = xor i1 %2421, true
  %2530 = sext i1 %2529 to i16
  %2531 = select i1 %2528, i16 %2530, i16 %2424
  %2532 = or i1 %2440, %2441
  %2533 = xor i1 %2440, true
  %2534 = sext i1 %2533 to i16
  %2535 = select i1 %2532, i16 %2534, i16 %2443
  %2536 = or i1 %2445, %2446
  %2537 = xor i1 %2445, true
  %2538 = sext i1 %2537 to i16
  %2539 = select i1 %2536, i16 %2538, i16 %2448
  %2540 = or i1 %2450, %2451
  %2541 = xor i1 %2450, true
  %2542 = sext i1 %2541 to i16
  %2543 = select i1 %2540, i16 %2542, i16 %2453
  %2544 = or i1 %2455, %2456
  %2545 = xor i1 %2455, true
  %2546 = sext i1 %2545 to i16
  %2547 = select i1 %2544, i16 %2546, i16 %2458
  %2548 = or i1 %2463, %2464
  %2549 = xor i1 %2463, true
  %2550 = sext i1 %2549 to i16
  %2551 = select i1 %2548, i16 %2550, i16 %2466
  %2552 = or i1 %2468, %2469
  %2553 = xor i1 %2468, true
  %2554 = sext i1 %2553 to i16
  %2555 = select i1 %2552, i16 %2554, i16 %2471
  %2556 = or i1 %2473, %2474
  %2557 = xor i1 %2473, true
  %2558 = sext i1 %2557 to i16
  %2559 = select i1 %2556, i16 %2558, i16 %2476
  %2560 = or i1 %2478, %2479
  %2561 = xor i1 %2478, true
  %2562 = sext i1 %2561 to i16
  %2563 = select i1 %2560, i16 %2562, i16 %2481
  br label %2568

2564:                                             ; preds = %2875, %2825
  %2565 = phi ptr [ %2826, %2825 ], [ %2877, %2875 ]
  %2566 = phi ptr [ %2827, %2825 ], [ %2876, %2875 ]
  %2567 = icmp sgt i64 %2570, 1
  br i1 %2567, label %2568, label %2880, !llvm.loop !112

2568:                                             ; preds = %2355, %2564
  %2569 = phi i64 [ %2353, %2355 ], [ %2573, %2564 ]
  %2570 = phi i64 [ %2353, %2355 ], [ %2574, %2564 ]
  %2571 = phi ptr [ %2349, %2355 ], [ %2566, %2564 ]
  %2572 = phi ptr [ %2352, %2355 ], [ %2565, %2564 ]
  %2573 = add nsw i64 %2569, -1
  %2574 = add nsw i64 %2570, -1
  br i1 %2357, label %2575, label %2587

2575:                                             ; preds = %2568
  %2576 = load i32, ptr %2378, align 4, !tbaa !67
  %2577 = icmp eq i32 %2576, 12
  %2578 = load float, ptr %2379, align 8
  %2579 = fcmp ole float %2578, 0.000000e+00
  %2580 = fcmp oge float %2578, 6.553500e+04
  %2581 = fadd float %2578, 5.000000e-01
  %2582 = fptoui float %2581 to i16
  %2583 = or i1 %2579, %2580
  %2584 = xor i1 %2579, true
  %2585 = sext i1 %2584 to i16
  %2586 = select i1 %2583, i16 %2585, i16 %2582
  br label %2602

2587:                                             ; preds = %2617, %2568
  %2588 = phi ptr [ %2572, %2568 ], [ %2619, %2617 ]
  %2589 = phi ptr [ %2571, %2568 ], [ %2618, %2617 ]
  br i1 %2382, label %2590, label %2622

2590:                                             ; preds = %2587
  %2591 = load i32, ptr %2403, align 4, !tbaa !67
  %2592 = icmp eq i32 %2591, 12
  %2593 = load float, ptr %2404, align 8
  %2594 = fcmp ole float %2593, 0.000000e+00
  %2595 = fcmp oge float %2593, 6.553500e+04
  %2596 = fadd float %2593, 5.000000e-01
  %2597 = fptoui float %2596 to i16
  %2598 = or i1 %2594, %2595
  %2599 = xor i1 %2594, true
  %2600 = sext i1 %2599 to i16
  %2601 = select i1 %2598, i16 %2600, i16 %2597
  br label %2638

2602:                                             ; preds = %2575, %2617
  %2603 = phi ptr [ %2571, %2575 ], [ %2618, %2617 ]
  %2604 = phi i64 [ 0, %2575 ], [ %2620, %2617 ]
  %2605 = phi ptr [ %2572, %2575 ], [ %2619, %2617 ]
  %2606 = getelementptr inbounds %struct._PixelPacket, ptr %2603, i64 0, i32 2
  store i16 %2487, ptr %2606, align 2, !tbaa !64
  %2607 = getelementptr inbounds %struct._PixelPacket, ptr %2603, i64 0, i32 1
  store i16 %2491, ptr %2607, align 2, !tbaa !65
  store i16 %2495, ptr %2603, align 2, !tbaa !66
  %2608 = getelementptr inbounds %struct._PixelPacket, ptr %2603, i64 0, i32 3
  store i16 %2499, ptr %2608, align 2, !tbaa !79
  br i1 %2577, label %2614, label %2609

2609:                                             ; preds = %2602
  %2610 = load i32, ptr %53, align 8, !tbaa !83
  %2611 = icmp eq i32 %2610, 2
  %2612 = icmp ne ptr %2605, null
  %2613 = and i1 %2612, %2611
  br i1 %2613, label %2616, label %2617

2614:                                             ; preds = %2602
  %2615 = icmp eq ptr %2605, null
  br i1 %2615, label %2617, label %2616

2616:                                             ; preds = %2614, %2609
  store i16 %2586, ptr %2605, align 2, !tbaa !84
  br label %2617

2617:                                             ; preds = %2609, %2614, %2616
  %2618 = getelementptr inbounds %struct._PixelPacket, ptr %2603, i64 1
  %2619 = getelementptr inbounds i16, ptr %2605, i64 1
  %2620 = add nuw nsw i64 %2604, 1
  %2621 = icmp eq i64 %2620, %2356
  br i1 %2621, label %2587, label %2602, !llvm.loop !113

2622:                                             ; preds = %2653, %2587
  %2623 = phi ptr [ %2588, %2587 ], [ %2655, %2653 ]
  %2624 = phi ptr [ %2589, %2587 ], [ %2654, %2653 ]
  %2625 = icmp sgt i64 %2570, 1
  br i1 %2625, label %2626, label %2658

2626:                                             ; preds = %2622
  %2627 = load i32, ptr %2425, align 4, !tbaa !67
  %2628 = icmp eq i32 %2627, 12
  %2629 = load float, ptr %2426, align 8
  %2630 = fcmp ole float %2629, 0.000000e+00
  %2631 = fcmp oge float %2629, 6.553500e+04
  %2632 = fadd float %2629, 5.000000e-01
  %2633 = fptoui float %2632 to i16
  %2634 = or i1 %2630, %2631
  %2635 = xor i1 %2630, true
  %2636 = sext i1 %2635 to i16
  %2637 = select i1 %2634, i16 %2636, i16 %2633
  br label %2755

2638:                                             ; preds = %2590, %2653
  %2639 = phi ptr [ %2589, %2590 ], [ %2654, %2653 ]
  %2640 = phi i64 [ 0, %2590 ], [ %2656, %2653 ]
  %2641 = phi ptr [ %2588, %2590 ], [ %2655, %2653 ]
  %2642 = getelementptr inbounds %struct._PixelPacket, ptr %2639, i64 0, i32 2
  store i16 %2503, ptr %2642, align 2, !tbaa !64
  %2643 = getelementptr inbounds %struct._PixelPacket, ptr %2639, i64 0, i32 1
  store i16 %2507, ptr %2643, align 2, !tbaa !65
  store i16 %2511, ptr %2639, align 2, !tbaa !66
  %2644 = getelementptr inbounds %struct._PixelPacket, ptr %2639, i64 0, i32 3
  store i16 %2515, ptr %2644, align 2, !tbaa !79
  br i1 %2592, label %2650, label %2645

2645:                                             ; preds = %2638
  %2646 = load i32, ptr %53, align 8, !tbaa !83
  %2647 = icmp eq i32 %2646, 2
  %2648 = icmp ne ptr %2641, null
  %2649 = and i1 %2648, %2647
  br i1 %2649, label %2652, label %2653

2650:                                             ; preds = %2638
  %2651 = icmp eq ptr %2641, null
  br i1 %2651, label %2653, label %2652

2652:                                             ; preds = %2650, %2645
  store i16 %2601, ptr %2641, align 2, !tbaa !84
  br label %2653

2653:                                             ; preds = %2645, %2650, %2652
  %2654 = getelementptr inbounds %struct._PixelPacket, ptr %2639, i64 1
  %2655 = getelementptr inbounds i16, ptr %2641, i64 1
  %2656 = add nuw nsw i64 %2640, 1
  %2657 = icmp eq i64 %2656, %2381
  br i1 %2657, label %2622, label %2638, !llvm.loop !114

2658:                                             ; preds = %2770, %2622
  %2659 = phi ptr [ %2623, %2622 ], [ %2772, %2770 ]
  %2660 = phi i64 [ 0, %2622 ], [ %2573, %2770 ]
  %2661 = phi ptr [ %2624, %2622 ], [ %2771, %2770 ]
  %2662 = icmp slt i64 %2660, %2429
  br i1 %2662, label %2663, label %2810

2663:                                             ; preds = %2658
  %2664 = sub i64 %2429, %2574
  %2665 = load float, ptr %194, align 8
  %2666 = fcmp ole float %2665, 0.000000e+00
  %2667 = fcmp oge float %2665, 6.553500e+04
  %2668 = fadd float %2665, 5.000000e-01
  %2669 = fptoui float %2668 to i16
  %2670 = load float, ptr %200, align 4
  %2671 = fcmp ole float %2670, 0.000000e+00
  %2672 = fcmp oge float %2670, 6.553500e+04
  %2673 = fadd float %2670, 5.000000e-01
  %2674 = fptoui float %2673 to i16
  %2675 = load float, ptr %206, align 8
  %2676 = fcmp ole float %2675, 0.000000e+00
  %2677 = fcmp oge float %2675, 6.553500e+04
  %2678 = fadd float %2675, 5.000000e-01
  %2679 = fptoui float %2678 to i16
  %2680 = load float, ptr %208, align 4
  %2681 = fcmp ole float %2680, 0.000000e+00
  %2682 = fcmp oge float %2680, 6.553500e+04
  %2683 = fadd float %2680, 5.000000e-01
  %2684 = fptoui float %2683 to i16
  %2685 = load float, ptr %2431, align 8
  %2686 = fcmp ole float %2685, 0.000000e+00
  %2687 = fcmp oge float %2685, 6.553500e+04
  %2688 = fadd float %2685, 5.000000e-01
  %2689 = fptoui float %2688 to i16
  %2690 = load float, ptr %174, align 8
  %2691 = fcmp ole float %2690, 0.000000e+00
  %2692 = fcmp oge float %2690, 6.553500e+04
  %2693 = fadd float %2690, 5.000000e-01
  %2694 = fptoui float %2693 to i16
  %2695 = load float, ptr %180, align 4
  %2696 = fcmp ole float %2695, 0.000000e+00
  %2697 = fcmp oge float %2695, 6.553500e+04
  %2698 = fadd float %2695, 5.000000e-01
  %2699 = fptoui float %2698 to i16
  %2700 = load float, ptr %186, align 8
  %2701 = fcmp ole float %2700, 0.000000e+00
  %2702 = fcmp oge float %2700, 6.553500e+04
  %2703 = fadd float %2700, 5.000000e-01
  %2704 = fptoui float %2703 to i16
  %2705 = load float, ptr %188, align 4
  %2706 = fcmp ole float %2705, 0.000000e+00
  %2707 = fcmp oge float %2705, 6.553500e+04
  %2708 = fadd float %2705, 5.000000e-01
  %2709 = fptoui float %2708 to i16
  %2710 = load float, ptr %2433, align 8
  %2711 = fcmp ole float %2710, 0.000000e+00
  %2712 = fcmp oge float %2710, 6.553500e+04
  %2713 = fadd float %2710, 5.000000e-01
  %2714 = fptoui float %2713 to i16
  %2715 = or i1 %2666, %2667
  %2716 = xor i1 %2666, true
  %2717 = sext i1 %2716 to i16
  %2718 = select i1 %2715, i16 %2717, i16 %2669
  %2719 = or i1 %2671, %2672
  %2720 = xor i1 %2671, true
  %2721 = sext i1 %2720 to i16
  %2722 = select i1 %2719, i16 %2721, i16 %2674
  %2723 = or i1 %2676, %2677
  %2724 = xor i1 %2676, true
  %2725 = sext i1 %2724 to i16
  %2726 = select i1 %2723, i16 %2725, i16 %2679
  %2727 = or i1 %2681, %2682
  %2728 = xor i1 %2681, true
  %2729 = sext i1 %2728 to i16
  %2730 = select i1 %2727, i16 %2729, i16 %2684
  %2731 = or i1 %2686, %2687
  %2732 = xor i1 %2686, true
  %2733 = sext i1 %2732 to i16
  %2734 = select i1 %2731, i16 %2733, i16 %2689
  %2735 = or i1 %2691, %2692
  %2736 = xor i1 %2691, true
  %2737 = sext i1 %2736 to i16
  %2738 = select i1 %2735, i16 %2737, i16 %2694
  %2739 = or i1 %2696, %2697
  %2740 = xor i1 %2696, true
  %2741 = sext i1 %2740 to i16
  %2742 = select i1 %2739, i16 %2741, i16 %2699
  %2743 = or i1 %2701, %2702
  %2744 = xor i1 %2701, true
  %2745 = sext i1 %2744 to i16
  %2746 = select i1 %2743, i16 %2745, i16 %2704
  %2747 = or i1 %2706, %2707
  %2748 = xor i1 %2706, true
  %2749 = sext i1 %2748 to i16
  %2750 = select i1 %2747, i16 %2749, i16 %2709
  %2751 = or i1 %2711, %2712
  %2752 = xor i1 %2711, true
  %2753 = sext i1 %2752 to i16
  %2754 = select i1 %2751, i16 %2753, i16 %2714
  br label %2775

2755:                                             ; preds = %2626, %2770
  %2756 = phi ptr [ %2624, %2626 ], [ %2771, %2770 ]
  %2757 = phi i64 [ 0, %2626 ], [ %2773, %2770 ]
  %2758 = phi ptr [ %2623, %2626 ], [ %2772, %2770 ]
  %2759 = getelementptr inbounds %struct._PixelPacket, ptr %2756, i64 0, i32 2
  store i16 %2519, ptr %2759, align 2, !tbaa !64
  %2760 = getelementptr inbounds %struct._PixelPacket, ptr %2756, i64 0, i32 1
  store i16 %2523, ptr %2760, align 2, !tbaa !65
  store i16 %2527, ptr %2756, align 2, !tbaa !66
  %2761 = getelementptr inbounds %struct._PixelPacket, ptr %2756, i64 0, i32 3
  store i16 %2531, ptr %2761, align 2, !tbaa !79
  br i1 %2628, label %2767, label %2762

2762:                                             ; preds = %2755
  %2763 = load i32, ptr %53, align 8, !tbaa !83
  %2764 = icmp eq i32 %2763, 2
  %2765 = icmp ne ptr %2758, null
  %2766 = and i1 %2765, %2764
  br i1 %2766, label %2769, label %2770

2767:                                             ; preds = %2755
  %2768 = icmp eq ptr %2758, null
  br i1 %2768, label %2770, label %2769

2769:                                             ; preds = %2767, %2762
  store i16 %2637, ptr %2758, align 2, !tbaa !84
  br label %2770

2770:                                             ; preds = %2762, %2767, %2769
  %2771 = getelementptr inbounds %struct._PixelPacket, ptr %2756, i64 1
  %2772 = getelementptr inbounds i16, ptr %2758, i64 1
  %2773 = add nuw nsw i64 %2757, 1
  %2774 = icmp slt i64 %2773, %2574
  br i1 %2774, label %2755, label %2658, !llvm.loop !115

2775:                                             ; preds = %2663, %2805
  %2776 = phi ptr [ %2661, %2663 ], [ %2806, %2805 ]
  %2777 = phi i64 [ %2660, %2663 ], [ %2808, %2805 ]
  %2778 = phi ptr [ %2659, %2663 ], [ %2807, %2805 ]
  %2779 = icmp slt i64 %2777, %2664
  %2780 = getelementptr inbounds %struct._PixelPacket, ptr %2776, i64 0, i32 2
  %2781 = getelementptr inbounds %struct._PixelPacket, ptr %2776, i64 0, i32 1
  %2782 = getelementptr inbounds %struct._PixelPacket, ptr %2776, i64 0, i32 3
  br i1 %2779, label %2793, label %2783

2783:                                             ; preds = %2775
  store i16 %2718, ptr %2780, align 2, !tbaa !64
  store i16 %2722, ptr %2781, align 2, !tbaa !65
  store i16 %2726, ptr %2776, align 2, !tbaa !66
  store i16 %2730, ptr %2782, align 2, !tbaa !79
  %2784 = load i32, ptr %2430, align 4, !tbaa !67
  %2785 = icmp eq i32 %2784, 12
  br i1 %2785, label %2791, label %2786

2786:                                             ; preds = %2783
  %2787 = load i32, ptr %53, align 8, !tbaa !83
  %2788 = icmp eq i32 %2787, 2
  %2789 = icmp ne ptr %2778, null
  %2790 = and i1 %2789, %2788
  br i1 %2790, label %2803, label %2805

2791:                                             ; preds = %2783
  %2792 = icmp eq ptr %2778, null
  br i1 %2792, label %2805, label %2803

2793:                                             ; preds = %2775
  store i16 %2738, ptr %2780, align 2, !tbaa !64
  store i16 %2742, ptr %2781, align 2, !tbaa !65
  store i16 %2746, ptr %2776, align 2, !tbaa !66
  store i16 %2750, ptr %2782, align 2, !tbaa !79
  %2794 = load i32, ptr %2432, align 4, !tbaa !67
  %2795 = icmp eq i32 %2794, 12
  br i1 %2795, label %2801, label %2796

2796:                                             ; preds = %2793
  %2797 = load i32, ptr %53, align 8, !tbaa !83
  %2798 = icmp eq i32 %2797, 2
  %2799 = icmp ne ptr %2778, null
  %2800 = and i1 %2799, %2798
  br i1 %2800, label %2803, label %2805

2801:                                             ; preds = %2793
  %2802 = icmp eq ptr %2778, null
  br i1 %2802, label %2805, label %2803

2803:                                             ; preds = %2796, %2801, %2786, %2791
  %2804 = phi i16 [ %2734, %2791 ], [ %2734, %2786 ], [ %2754, %2801 ], [ %2754, %2796 ]
  store i16 %2804, ptr %2778, align 2, !tbaa !84
  br label %2805

2805:                                             ; preds = %2803, %2801, %2796, %2791, %2786
  %2806 = getelementptr inbounds %struct._PixelPacket, ptr %2776, i64 1
  %2807 = getelementptr inbounds i16, ptr %2778, i64 1
  %2808 = add nuw nsw i64 %2777, 1
  %2809 = icmp slt i64 %2808, %2429
  br i1 %2809, label %2775, label %2810, !llvm.loop !116

2810:                                             ; preds = %2805, %2658
  %2811 = phi ptr [ %2659, %2658 ], [ %2807, %2805 ]
  %2812 = phi ptr [ %2661, %2658 ], [ %2806, %2805 ]
  br i1 %2438, label %2813, label %2825

2813:                                             ; preds = %2810
  %2814 = load i32, ptr %2459, align 4, !tbaa !67
  %2815 = icmp eq i32 %2814, 12
  %2816 = load float, ptr %2460, align 8
  %2817 = fcmp ole float %2816, 0.000000e+00
  %2818 = fcmp oge float %2816, 6.553500e+04
  %2819 = fadd float %2816, 5.000000e-01
  %2820 = fptoui float %2819 to i16
  %2821 = or i1 %2817, %2818
  %2822 = xor i1 %2817, true
  %2823 = sext i1 %2822 to i16
  %2824 = select i1 %2821, i16 %2823, i16 %2820
  br label %2840

2825:                                             ; preds = %2855, %2810
  %2826 = phi ptr [ %2811, %2810 ], [ %2857, %2855 ]
  %2827 = phi ptr [ %2812, %2810 ], [ %2856, %2855 ]
  br i1 %2461, label %2828, label %2564

2828:                                             ; preds = %2825
  %2829 = load i32, ptr %2482, align 4, !tbaa !67
  %2830 = icmp eq i32 %2829, 12
  %2831 = load float, ptr %2483, align 8
  %2832 = fcmp ole float %2831, 0.000000e+00
  %2833 = fcmp oge float %2831, 6.553500e+04
  %2834 = fadd float %2831, 5.000000e-01
  %2835 = fptoui float %2834 to i16
  %2836 = or i1 %2832, %2833
  %2837 = xor i1 %2832, true
  %2838 = sext i1 %2837 to i16
  %2839 = select i1 %2836, i16 %2838, i16 %2835
  br label %2860

2840:                                             ; preds = %2813, %2855
  %2841 = phi ptr [ %2812, %2813 ], [ %2856, %2855 ]
  %2842 = phi i64 [ 0, %2813 ], [ %2858, %2855 ]
  %2843 = phi ptr [ %2811, %2813 ], [ %2857, %2855 ]
  %2844 = getelementptr inbounds %struct._PixelPacket, ptr %2841, i64 0, i32 2
  store i16 %2535, ptr %2844, align 2, !tbaa !64
  %2845 = getelementptr inbounds %struct._PixelPacket, ptr %2841, i64 0, i32 1
  store i16 %2539, ptr %2845, align 2, !tbaa !65
  store i16 %2543, ptr %2841, align 2, !tbaa !66
  %2846 = getelementptr inbounds %struct._PixelPacket, ptr %2841, i64 0, i32 3
  store i16 %2547, ptr %2846, align 2, !tbaa !79
  br i1 %2815, label %2852, label %2847

2847:                                             ; preds = %2840
  %2848 = load i32, ptr %53, align 8, !tbaa !83
  %2849 = icmp eq i32 %2848, 2
  %2850 = icmp ne ptr %2843, null
  %2851 = and i1 %2850, %2849
  br i1 %2851, label %2854, label %2855

2852:                                             ; preds = %2840
  %2853 = icmp eq ptr %2843, null
  br i1 %2853, label %2855, label %2854

2854:                                             ; preds = %2852, %2847
  store i16 %2824, ptr %2843, align 2, !tbaa !84
  br label %2855

2855:                                             ; preds = %2847, %2852, %2854
  %2856 = getelementptr inbounds %struct._PixelPacket, ptr %2841, i64 1
  %2857 = getelementptr inbounds i16, ptr %2843, i64 1
  %2858 = add nuw nsw i64 %2842, 1
  %2859 = icmp eq i64 %2858, %2437
  br i1 %2859, label %2825, label %2840, !llvm.loop !117

2860:                                             ; preds = %2828, %2875
  %2861 = phi ptr [ %2827, %2828 ], [ %2876, %2875 ]
  %2862 = phi i64 [ 0, %2828 ], [ %2878, %2875 ]
  %2863 = phi ptr [ %2826, %2828 ], [ %2877, %2875 ]
  %2864 = getelementptr inbounds %struct._PixelPacket, ptr %2861, i64 0, i32 2
  store i16 %2551, ptr %2864, align 2, !tbaa !64
  %2865 = getelementptr inbounds %struct._PixelPacket, ptr %2861, i64 0, i32 1
  store i16 %2555, ptr %2865, align 2, !tbaa !65
  store i16 %2559, ptr %2861, align 2, !tbaa !66
  %2866 = getelementptr inbounds %struct._PixelPacket, ptr %2861, i64 0, i32 3
  store i16 %2563, ptr %2866, align 2, !tbaa !79
  br i1 %2830, label %2872, label %2867

2867:                                             ; preds = %2860
  %2868 = load i32, ptr %53, align 8, !tbaa !83
  %2869 = icmp eq i32 %2868, 2
  %2870 = icmp ne ptr %2863, null
  %2871 = and i1 %2870, %2869
  br i1 %2871, label %2874, label %2875

2872:                                             ; preds = %2860
  %2873 = icmp eq ptr %2863, null
  br i1 %2873, label %2875, label %2874

2874:                                             ; preds = %2872, %2867
  store i16 %2839, ptr %2863, align 2, !tbaa !84
  br label %2875

2875:                                             ; preds = %2867, %2872, %2874
  %2876 = getelementptr inbounds %struct._PixelPacket, ptr %2861, i64 1
  %2877 = getelementptr inbounds i16, ptr %2863, i64 1
  %2878 = add nuw nsw i64 %2862, 1
  %2879 = icmp eq i64 %2878, %2356
  br i1 %2879, label %2564, label %2860, !llvm.loop !118

2880:                                             ; preds = %2564, %2351
  %2881 = phi ptr [ %2352, %2351 ], [ %2565, %2564 ]
  %2882 = phi ptr [ %2349, %2351 ], [ %2566, %2564 ]
  %2883 = load i64, ptr %36, align 8, !tbaa !59
  %2884 = load i64, ptr %38, align 8, !tbaa !61
  %2885 = load i64, ptr %46, align 8, !tbaa !57
  %2886 = add i64 %30, %2884
  %2887 = add i64 %2886, %2885
  %2888 = sub i64 %2883, %2887
  %2889 = icmp sgt i64 %2888, 0
  br i1 %2889, label %2890, label %3123

2890:                                             ; preds = %2880
  %2891 = load i64, ptr %19, align 8, !tbaa !62
  %2892 = icmp sgt i64 %2891, 0
  %2893 = load float, ptr %194, align 8
  %2894 = fcmp ole float %2893, 0.000000e+00
  %2895 = fcmp oge float %2893, 6.553500e+04
  %2896 = fadd float %2893, 5.000000e-01
  %2897 = fptoui float %2896 to i16
  %2898 = load float, ptr %200, align 4
  %2899 = fcmp ole float %2898, 0.000000e+00
  %2900 = fcmp oge float %2898, 6.553500e+04
  %2901 = fadd float %2898, 5.000000e-01
  %2902 = fptoui float %2901 to i16
  %2903 = load float, ptr %206, align 8
  %2904 = fcmp ole float %2903, 0.000000e+00
  %2905 = fcmp oge float %2903, 6.553500e+04
  %2906 = fadd float %2903, 5.000000e-01
  %2907 = fptoui float %2906 to i16
  %2908 = load float, ptr %208, align 4
  %2909 = fcmp ole float %2908, 0.000000e+00
  %2910 = fcmp oge float %2908, 6.553500e+04
  %2911 = fadd float %2908, 5.000000e-01
  %2912 = fptoui float %2911 to i16
  %2913 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 1
  %2914 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 9
  %2915 = load i64, ptr %2347, align 8, !tbaa !53
  %2916 = shl i64 %2891, 1
  %2917 = sub i64 %2915, %2916
  %2918 = icmp sgt i64 %2917, 0
  %2919 = load float, ptr %144, align 8
  %2920 = fcmp ole float %2919, 0.000000e+00
  %2921 = fcmp oge float %2919, 6.553500e+04
  %2922 = fadd float %2919, 5.000000e-01
  %2923 = fptoui float %2922 to i16
  %2924 = load float, ptr %148, align 4
  %2925 = fcmp ole float %2924, 0.000000e+00
  %2926 = fcmp oge float %2924, 6.553500e+04
  %2927 = fadd float %2924, 5.000000e-01
  %2928 = fptoui float %2927 to i16
  %2929 = load float, ptr %151, align 8
  %2930 = fcmp ole float %2929, 0.000000e+00
  %2931 = fcmp oge float %2929, 6.553500e+04
  %2932 = fadd float %2929, 5.000000e-01
  %2933 = fptoui float %2932 to i16
  %2934 = load float, ptr %155, align 4
  %2935 = fcmp ole float %2934, 0.000000e+00
  %2936 = fcmp oge float %2934, 6.553500e+04
  %2937 = fadd float %2934, 5.000000e-01
  %2938 = fptoui float %2937 to i16
  %2939 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 1
  %2940 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 9
  %2941 = icmp sgt i64 %2891, 0
  %2942 = load float, ptr %214, align 8
  %2943 = fcmp ole float %2942, 0.000000e+00
  %2944 = fcmp oge float %2942, 6.553500e+04
  %2945 = fadd float %2942, 5.000000e-01
  %2946 = fptoui float %2945 to i16
  %2947 = load float, ptr %220, align 4
  %2948 = fcmp ole float %2947, 0.000000e+00
  %2949 = fcmp oge float %2947, 6.553500e+04
  %2950 = fadd float %2947, 5.000000e-01
  %2951 = fptoui float %2950 to i16
  %2952 = load float, ptr %226, align 8
  %2953 = fcmp ole float %2952, 0.000000e+00
  %2954 = fcmp oge float %2952, 6.553500e+04
  %2955 = fadd float %2952, 5.000000e-01
  %2956 = fptoui float %2955 to i16
  %2957 = load float, ptr %228, align 4
  %2958 = fcmp ole float %2957, 0.000000e+00
  %2959 = fcmp oge float %2957, 6.553500e+04
  %2960 = fadd float %2957, 5.000000e-01
  %2961 = fptoui float %2960 to i16
  %2962 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 1
  %2963 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 9
  %2964 = or i1 %2894, %2895
  %2965 = xor i1 %2894, true
  %2966 = sext i1 %2965 to i16
  %2967 = select i1 %2964, i16 %2966, i16 %2897
  %2968 = or i1 %2899, %2900
  %2969 = xor i1 %2899, true
  %2970 = sext i1 %2969 to i16
  %2971 = select i1 %2968, i16 %2970, i16 %2902
  %2972 = or i1 %2904, %2905
  %2973 = xor i1 %2904, true
  %2974 = sext i1 %2973 to i16
  %2975 = select i1 %2972, i16 %2974, i16 %2907
  %2976 = or i1 %2909, %2910
  %2977 = xor i1 %2909, true
  %2978 = sext i1 %2977 to i16
  %2979 = select i1 %2976, i16 %2978, i16 %2912
  %2980 = or i1 %2920, %2921
  %2981 = xor i1 %2920, true
  %2982 = sext i1 %2981 to i16
  %2983 = select i1 %2980, i16 %2982, i16 %2923
  %2984 = or i1 %2925, %2926
  %2985 = xor i1 %2925, true
  %2986 = sext i1 %2985 to i16
  %2987 = select i1 %2984, i16 %2986, i16 %2928
  %2988 = or i1 %2930, %2931
  %2989 = xor i1 %2930, true
  %2990 = sext i1 %2989 to i16
  %2991 = select i1 %2988, i16 %2990, i16 %2933
  %2992 = or i1 %2935, %2936
  %2993 = xor i1 %2935, true
  %2994 = sext i1 %2993 to i16
  %2995 = select i1 %2992, i16 %2994, i16 %2938
  %2996 = or i1 %2943, %2944
  %2997 = xor i1 %2943, true
  %2998 = sext i1 %2997 to i16
  %2999 = select i1 %2996, i16 %2998, i16 %2946
  %3000 = or i1 %2948, %2949
  %3001 = xor i1 %2948, true
  %3002 = sext i1 %3001 to i16
  %3003 = select i1 %3000, i16 %3002, i16 %2951
  %3004 = or i1 %2953, %2954
  %3005 = xor i1 %2953, true
  %3006 = sext i1 %3005 to i16
  %3007 = select i1 %3004, i16 %3006, i16 %2956
  %3008 = or i1 %2958, %2959
  %3009 = xor i1 %2958, true
  %3010 = sext i1 %3009 to i16
  %3011 = select i1 %3008, i16 %3010, i16 %2961
  br label %3012

3012:                                             ; preds = %2890, %3118
  %3013 = phi ptr [ %2882, %2890 ], [ %3120, %3118 ]
  %3014 = phi ptr [ %2881, %2890 ], [ %3119, %3118 ]
  %3015 = phi i64 [ 0, %2890 ], [ %3121, %3118 ]
  br i1 %2892, label %3016, label %3048

3016:                                             ; preds = %3012
  %3017 = load i32, ptr %2913, align 4, !tbaa !67
  %3018 = icmp eq i32 %3017, 12
  %3019 = load float, ptr %2914, align 8
  %3020 = fcmp ole float %3019, 0.000000e+00
  %3021 = fcmp oge float %3019, 6.553500e+04
  %3022 = fadd float %3019, 5.000000e-01
  %3023 = fptoui float %3022 to i16
  %3024 = or i1 %3020, %3021
  %3025 = xor i1 %3020, true
  %3026 = sext i1 %3025 to i16
  %3027 = select i1 %3024, i16 %3026, i16 %3023
  br label %3028

3028:                                             ; preds = %3016, %3043
  %3029 = phi ptr [ %3013, %3016 ], [ %3044, %3043 ]
  %3030 = phi i64 [ 0, %3016 ], [ %3046, %3043 ]
  %3031 = phi ptr [ %3014, %3016 ], [ %3045, %3043 ]
  %3032 = getelementptr inbounds %struct._PixelPacket, ptr %3029, i64 0, i32 2
  store i16 %2967, ptr %3032, align 2, !tbaa !64
  %3033 = getelementptr inbounds %struct._PixelPacket, ptr %3029, i64 0, i32 1
  store i16 %2971, ptr %3033, align 2, !tbaa !65
  store i16 %2975, ptr %3029, align 2, !tbaa !66
  %3034 = getelementptr inbounds %struct._PixelPacket, ptr %3029, i64 0, i32 3
  store i16 %2979, ptr %3034, align 2, !tbaa !79
  br i1 %3018, label %3040, label %3035

3035:                                             ; preds = %3028
  %3036 = load i32, ptr %53, align 8, !tbaa !83
  %3037 = icmp eq i32 %3036, 2
  %3038 = icmp ne ptr %3031, null
  %3039 = and i1 %3038, %3037
  br i1 %3039, label %3042, label %3043

3040:                                             ; preds = %3028
  %3041 = icmp eq ptr %3031, null
  br i1 %3041, label %3043, label %3042

3042:                                             ; preds = %3040, %3035
  store i16 %3027, ptr %3031, align 2, !tbaa !84
  br label %3043

3043:                                             ; preds = %3035, %3040, %3042
  %3044 = getelementptr inbounds %struct._PixelPacket, ptr %3029, i64 1
  %3045 = getelementptr inbounds i16, ptr %3031, i64 1
  %3046 = add nuw nsw i64 %3030, 1
  %3047 = icmp eq i64 %3046, %2891
  br i1 %3047, label %3048, label %3028, !llvm.loop !119

3048:                                             ; preds = %3043, %3012
  %3049 = phi ptr [ %3014, %3012 ], [ %3045, %3043 ]
  %3050 = phi ptr [ %3013, %3012 ], [ %3044, %3043 ]
  br i1 %2918, label %3051, label %3063

3051:                                             ; preds = %3048
  %3052 = load i32, ptr %2939, align 4, !tbaa !67
  %3053 = icmp eq i32 %3052, 12
  %3054 = load float, ptr %2940, align 8
  %3055 = fcmp ole float %3054, 0.000000e+00
  %3056 = fcmp oge float %3054, 6.553500e+04
  %3057 = fadd float %3054, 5.000000e-01
  %3058 = fptoui float %3057 to i16
  %3059 = or i1 %3055, %3056
  %3060 = xor i1 %3055, true
  %3061 = sext i1 %3060 to i16
  %3062 = select i1 %3059, i16 %3061, i16 %3058
  br label %3078

3063:                                             ; preds = %3093, %3048
  %3064 = phi ptr [ %3049, %3048 ], [ %3095, %3093 ]
  %3065 = phi ptr [ %3050, %3048 ], [ %3094, %3093 ]
  br i1 %2941, label %3066, label %3118

3066:                                             ; preds = %3063
  %3067 = load i32, ptr %2962, align 4, !tbaa !67
  %3068 = icmp eq i32 %3067, 12
  %3069 = load float, ptr %2963, align 8
  %3070 = fcmp ole float %3069, 0.000000e+00
  %3071 = fcmp oge float %3069, 6.553500e+04
  %3072 = fadd float %3069, 5.000000e-01
  %3073 = fptoui float %3072 to i16
  %3074 = or i1 %3070, %3071
  %3075 = xor i1 %3070, true
  %3076 = sext i1 %3075 to i16
  %3077 = select i1 %3074, i16 %3076, i16 %3073
  br label %3098

3078:                                             ; preds = %3051, %3093
  %3079 = phi ptr [ %3050, %3051 ], [ %3094, %3093 ]
  %3080 = phi i64 [ 0, %3051 ], [ %3096, %3093 ]
  %3081 = phi ptr [ %3049, %3051 ], [ %3095, %3093 ]
  %3082 = getelementptr inbounds %struct._PixelPacket, ptr %3079, i64 0, i32 2
  store i16 %2983, ptr %3082, align 2, !tbaa !64
  %3083 = getelementptr inbounds %struct._PixelPacket, ptr %3079, i64 0, i32 1
  store i16 %2987, ptr %3083, align 2, !tbaa !65
  store i16 %2991, ptr %3079, align 2, !tbaa !66
  %3084 = getelementptr inbounds %struct._PixelPacket, ptr %3079, i64 0, i32 3
  store i16 %2995, ptr %3084, align 2, !tbaa !79
  br i1 %3053, label %3090, label %3085

3085:                                             ; preds = %3078
  %3086 = load i32, ptr %53, align 8, !tbaa !83
  %3087 = icmp eq i32 %3086, 2
  %3088 = icmp ne ptr %3081, null
  %3089 = and i1 %3088, %3087
  br i1 %3089, label %3092, label %3093

3090:                                             ; preds = %3078
  %3091 = icmp eq ptr %3081, null
  br i1 %3091, label %3093, label %3092

3092:                                             ; preds = %3090, %3085
  store i16 %3062, ptr %3081, align 2, !tbaa !84
  br label %3093

3093:                                             ; preds = %3085, %3090, %3092
  %3094 = getelementptr inbounds %struct._PixelPacket, ptr %3079, i64 1
  %3095 = getelementptr inbounds i16, ptr %3081, i64 1
  %3096 = add nuw nsw i64 %3080, 1
  %3097 = icmp eq i64 %3096, %2917
  br i1 %3097, label %3063, label %3078, !llvm.loop !120

3098:                                             ; preds = %3066, %3113
  %3099 = phi ptr [ %3065, %3066 ], [ %3114, %3113 ]
  %3100 = phi i64 [ 0, %3066 ], [ %3116, %3113 ]
  %3101 = phi ptr [ %3064, %3066 ], [ %3115, %3113 ]
  %3102 = getelementptr inbounds %struct._PixelPacket, ptr %3099, i64 0, i32 2
  store i16 %2999, ptr %3102, align 2, !tbaa !64
  %3103 = getelementptr inbounds %struct._PixelPacket, ptr %3099, i64 0, i32 1
  store i16 %3003, ptr %3103, align 2, !tbaa !65
  store i16 %3007, ptr %3099, align 2, !tbaa !66
  %3104 = getelementptr inbounds %struct._PixelPacket, ptr %3099, i64 0, i32 3
  store i16 %3011, ptr %3104, align 2, !tbaa !79
  br i1 %3068, label %3110, label %3105

3105:                                             ; preds = %3098
  %3106 = load i32, ptr %53, align 8, !tbaa !83
  %3107 = icmp eq i32 %3106, 2
  %3108 = icmp ne ptr %3101, null
  %3109 = and i1 %3108, %3107
  br i1 %3109, label %3112, label %3113

3110:                                             ; preds = %3098
  %3111 = icmp eq ptr %3101, null
  br i1 %3111, label %3113, label %3112

3112:                                             ; preds = %3110, %3105
  store i16 %3077, ptr %3101, align 2, !tbaa !84
  br label %3113

3113:                                             ; preds = %3105, %3110, %3112
  %3114 = getelementptr inbounds %struct._PixelPacket, ptr %3099, i64 1
  %3115 = getelementptr inbounds i16, ptr %3101, i64 1
  %3116 = add nuw nsw i64 %3100, 1
  %3117 = icmp eq i64 %3116, %2891
  br i1 %3117, label %3118, label %3098, !llvm.loop !121

3118:                                             ; preds = %3113, %3063
  %3119 = phi ptr [ %3064, %3063 ], [ %3115, %3113 ]
  %3120 = phi ptr [ %3065, %3063 ], [ %3114, %3113 ]
  %3121 = add nuw nsw i64 %3015, 1
  %3122 = icmp eq i64 %3121, %2888
  br i1 %3122, label %3123, label %3012, !llvm.loop !122

3123:                                             ; preds = %3118, %2880
  %3124 = phi ptr [ %2881, %2880 ], [ %3119, %3118 ]
  %3125 = phi ptr [ %2882, %2880 ], [ %3120, %3118 ]
  %3126 = load i64, ptr %19, align 8, !tbaa !62
  %3127 = icmp sgt i64 %3126, 0
  br i1 %3127, label %3128, label %3348

3128:                                             ; preds = %3123
  %3129 = load float, ptr %194, align 8
  %3130 = fcmp ole float %3129, 0.000000e+00
  %3131 = fcmp oge float %3129, 6.553500e+04
  %3132 = fadd float %3129, 5.000000e-01
  %3133 = fptoui float %3132 to i16
  %3134 = load float, ptr %200, align 4
  %3135 = fcmp ole float %3134, 0.000000e+00
  %3136 = fcmp oge float %3134, 6.553500e+04
  %3137 = fadd float %3134, 5.000000e-01
  %3138 = fptoui float %3137 to i16
  %3139 = load float, ptr %206, align 8
  %3140 = fcmp ole float %3139, 0.000000e+00
  %3141 = fcmp oge float %3139, 6.553500e+04
  %3142 = fadd float %3139, 5.000000e-01
  %3143 = fptoui float %3142 to i16
  %3144 = load float, ptr %208, align 4
  %3145 = fcmp ole float %3144, 0.000000e+00
  %3146 = fcmp oge float %3144, 6.553500e+04
  %3147 = fadd float %3144, 5.000000e-01
  %3148 = fptoui float %3147 to i16
  %3149 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 1
  %3150 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 9
  %3151 = load i64, ptr %2347, align 8, !tbaa !53
  %3152 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 1
  %3153 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 9
  %3154 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 1
  %3155 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 9
  %3156 = or i1 %3130, %3131
  %3157 = xor i1 %3130, true
  %3158 = sext i1 %3157 to i16
  %3159 = select i1 %3156, i16 %3158, i16 %3133
  %3160 = or i1 %3135, %3136
  %3161 = xor i1 %3135, true
  %3162 = sext i1 %3161 to i16
  %3163 = select i1 %3160, i16 %3162, i16 %3138
  %3164 = or i1 %3140, %3141
  %3165 = xor i1 %3140, true
  %3166 = sext i1 %3165 to i16
  %3167 = select i1 %3164, i16 %3166, i16 %3143
  %3168 = or i1 %3145, %3146
  %3169 = xor i1 %3145, true
  %3170 = sext i1 %3169 to i16
  %3171 = select i1 %3168, i16 %3170, i16 %3148
  br label %3176

3172:                                             ; preds = %3343, %3196
  %3173 = phi ptr [ %3197, %3196 ], [ %3345, %3343 ]
  %3174 = phi ptr [ %3199, %3196 ], [ %3344, %3343 ]
  %3175 = icmp sgt i64 %3178, 1
  br i1 %3175, label %3176, label %3348, !llvm.loop !123

3176:                                             ; preds = %3128, %3172
  %3177 = phi i64 [ %3126, %3128 ], [ %3181, %3172 ]
  %3178 = phi i64 [ %3126, %3128 ], [ %3182, %3172 ]
  %3179 = phi ptr [ %3125, %3128 ], [ %3174, %3172 ]
  %3180 = phi ptr [ %3124, %3128 ], [ %3173, %3172 ]
  %3181 = add nsw i64 %3177, -1
  %3182 = add nsw i64 %3178, -1
  %3183 = icmp sgt i64 %3178, 1
  br i1 %3183, label %3184, label %3196

3184:                                             ; preds = %3176
  %3185 = load i32, ptr %3149, align 4, !tbaa !67
  %3186 = icmp eq i32 %3185, 12
  %3187 = load float, ptr %3150, align 8
  %3188 = fcmp ole float %3187, 0.000000e+00
  %3189 = fcmp oge float %3187, 6.553500e+04
  %3190 = fadd float %3187, 5.000000e-01
  %3191 = fptoui float %3190 to i16
  %3192 = or i1 %3188, %3189
  %3193 = xor i1 %3188, true
  %3194 = sext i1 %3193 to i16
  %3195 = select i1 %3192, i16 %3194, i16 %3191
  br label %3293

3196:                                             ; preds = %3308, %3176
  %3197 = phi ptr [ %3180, %3176 ], [ %3310, %3308 ]
  %3198 = phi i64 [ 0, %3176 ], [ %3181, %3308 ]
  %3199 = phi ptr [ %3179, %3176 ], [ %3309, %3308 ]
  %3200 = icmp slt i64 %3198, %3151
  br i1 %3200, label %3201, label %3172

3201:                                             ; preds = %3196
  %3202 = sub i64 %3151, %3182
  %3203 = load float, ptr %214, align 8
  %3204 = fcmp ole float %3203, 0.000000e+00
  %3205 = fcmp oge float %3203, 6.553500e+04
  %3206 = fadd float %3203, 5.000000e-01
  %3207 = fptoui float %3206 to i16
  %3208 = load float, ptr %220, align 4
  %3209 = fcmp ole float %3208, 0.000000e+00
  %3210 = fcmp oge float %3208, 6.553500e+04
  %3211 = fadd float %3208, 5.000000e-01
  %3212 = fptoui float %3211 to i16
  %3213 = load float, ptr %226, align 8
  %3214 = fcmp ole float %3213, 0.000000e+00
  %3215 = fcmp oge float %3213, 6.553500e+04
  %3216 = fadd float %3213, 5.000000e-01
  %3217 = fptoui float %3216 to i16
  %3218 = load float, ptr %228, align 4
  %3219 = fcmp ole float %3218, 0.000000e+00
  %3220 = fcmp oge float %3218, 6.553500e+04
  %3221 = fadd float %3218, 5.000000e-01
  %3222 = fptoui float %3221 to i16
  %3223 = load float, ptr %3153, align 8
  %3224 = fcmp ole float %3223, 0.000000e+00
  %3225 = fcmp oge float %3223, 6.553500e+04
  %3226 = fadd float %3223, 5.000000e-01
  %3227 = fptoui float %3226 to i16
  %3228 = load float, ptr %234, align 8
  %3229 = fcmp ole float %3228, 0.000000e+00
  %3230 = fcmp oge float %3228, 6.553500e+04
  %3231 = fadd float %3228, 5.000000e-01
  %3232 = fptoui float %3231 to i16
  %3233 = load float, ptr %240, align 4
  %3234 = fcmp ole float %3233, 0.000000e+00
  %3235 = fcmp oge float %3233, 6.553500e+04
  %3236 = fadd float %3233, 5.000000e-01
  %3237 = fptoui float %3236 to i16
  %3238 = load float, ptr %246, align 8
  %3239 = fcmp ole float %3238, 0.000000e+00
  %3240 = fcmp oge float %3238, 6.553500e+04
  %3241 = fadd float %3238, 5.000000e-01
  %3242 = fptoui float %3241 to i16
  %3243 = load float, ptr %248, align 4
  %3244 = fcmp ole float %3243, 0.000000e+00
  %3245 = fcmp oge float %3243, 6.553500e+04
  %3246 = fadd float %3243, 5.000000e-01
  %3247 = fptoui float %3246 to i16
  %3248 = load float, ptr %3155, align 8
  %3249 = fcmp ole float %3248, 0.000000e+00
  %3250 = fcmp oge float %3248, 6.553500e+04
  %3251 = fadd float %3248, 5.000000e-01
  %3252 = fptoui float %3251 to i16
  %3253 = or i1 %3204, %3205
  %3254 = xor i1 %3204, true
  %3255 = sext i1 %3254 to i16
  %3256 = select i1 %3253, i16 %3255, i16 %3207
  %3257 = or i1 %3209, %3210
  %3258 = xor i1 %3209, true
  %3259 = sext i1 %3258 to i16
  %3260 = select i1 %3257, i16 %3259, i16 %3212
  %3261 = or i1 %3214, %3215
  %3262 = xor i1 %3214, true
  %3263 = sext i1 %3262 to i16
  %3264 = select i1 %3261, i16 %3263, i16 %3217
  %3265 = or i1 %3219, %3220
  %3266 = xor i1 %3219, true
  %3267 = sext i1 %3266 to i16
  %3268 = select i1 %3265, i16 %3267, i16 %3222
  %3269 = or i1 %3224, %3225
  %3270 = xor i1 %3224, true
  %3271 = sext i1 %3270 to i16
  %3272 = select i1 %3269, i16 %3271, i16 %3227
  %3273 = or i1 %3229, %3230
  %3274 = xor i1 %3229, true
  %3275 = sext i1 %3274 to i16
  %3276 = select i1 %3273, i16 %3275, i16 %3232
  %3277 = or i1 %3234, %3235
  %3278 = xor i1 %3234, true
  %3279 = sext i1 %3278 to i16
  %3280 = select i1 %3277, i16 %3279, i16 %3237
  %3281 = or i1 %3239, %3240
  %3282 = xor i1 %3239, true
  %3283 = sext i1 %3282 to i16
  %3284 = select i1 %3281, i16 %3283, i16 %3242
  %3285 = or i1 %3244, %3245
  %3286 = xor i1 %3244, true
  %3287 = sext i1 %3286 to i16
  %3288 = select i1 %3285, i16 %3287, i16 %3247
  %3289 = or i1 %3249, %3250
  %3290 = xor i1 %3249, true
  %3291 = sext i1 %3290 to i16
  %3292 = select i1 %3289, i16 %3291, i16 %3252
  br label %3313

3293:                                             ; preds = %3184, %3308
  %3294 = phi ptr [ %3179, %3184 ], [ %3309, %3308 ]
  %3295 = phi i64 [ 0, %3184 ], [ %3311, %3308 ]
  %3296 = phi ptr [ %3180, %3184 ], [ %3310, %3308 ]
  %3297 = getelementptr inbounds %struct._PixelPacket, ptr %3294, i64 0, i32 2
  store i16 %3159, ptr %3297, align 2, !tbaa !64
  %3298 = getelementptr inbounds %struct._PixelPacket, ptr %3294, i64 0, i32 1
  store i16 %3163, ptr %3298, align 2, !tbaa !65
  store i16 %3167, ptr %3294, align 2, !tbaa !66
  %3299 = getelementptr inbounds %struct._PixelPacket, ptr %3294, i64 0, i32 3
  store i16 %3171, ptr %3299, align 2, !tbaa !79
  br i1 %3186, label %3305, label %3300

3300:                                             ; preds = %3293
  %3301 = load i32, ptr %53, align 8, !tbaa !83
  %3302 = icmp eq i32 %3301, 2
  %3303 = icmp ne ptr %3296, null
  %3304 = and i1 %3303, %3302
  br i1 %3304, label %3307, label %3308

3305:                                             ; preds = %3293
  %3306 = icmp eq ptr %3296, null
  br i1 %3306, label %3308, label %3307

3307:                                             ; preds = %3305, %3300
  store i16 %3195, ptr %3296, align 2, !tbaa !84
  br label %3308

3308:                                             ; preds = %3300, %3305, %3307
  %3309 = getelementptr inbounds %struct._PixelPacket, ptr %3294, i64 1
  %3310 = getelementptr inbounds i16, ptr %3296, i64 1
  %3311 = add nuw nsw i64 %3295, 1
  %3312 = icmp slt i64 %3311, %3182
  br i1 %3312, label %3293, label %3196, !llvm.loop !124

3313:                                             ; preds = %3201, %3343
  %3314 = phi ptr [ %3199, %3201 ], [ %3344, %3343 ]
  %3315 = phi i64 [ %3198, %3201 ], [ %3346, %3343 ]
  %3316 = phi ptr [ %3197, %3201 ], [ %3345, %3343 ]
  %3317 = icmp slt i64 %3315, %3202
  %3318 = getelementptr inbounds %struct._PixelPacket, ptr %3314, i64 0, i32 2
  %3319 = getelementptr inbounds %struct._PixelPacket, ptr %3314, i64 0, i32 1
  %3320 = getelementptr inbounds %struct._PixelPacket, ptr %3314, i64 0, i32 3
  br i1 %3317, label %3331, label %3321

3321:                                             ; preds = %3313
  store i16 %3256, ptr %3318, align 2, !tbaa !64
  store i16 %3260, ptr %3319, align 2, !tbaa !65
  store i16 %3264, ptr %3314, align 2, !tbaa !66
  store i16 %3268, ptr %3320, align 2, !tbaa !79
  %3322 = load i32, ptr %3152, align 4, !tbaa !67
  %3323 = icmp eq i32 %3322, 12
  br i1 %3323, label %3329, label %3324

3324:                                             ; preds = %3321
  %3325 = load i32, ptr %53, align 8, !tbaa !83
  %3326 = icmp eq i32 %3325, 2
  %3327 = icmp ne ptr %3316, null
  %3328 = and i1 %3327, %3326
  br i1 %3328, label %3341, label %3343

3329:                                             ; preds = %3321
  %3330 = icmp eq ptr %3316, null
  br i1 %3330, label %3343, label %3341

3331:                                             ; preds = %3313
  store i16 %3276, ptr %3318, align 2, !tbaa !64
  store i16 %3280, ptr %3319, align 2, !tbaa !65
  store i16 %3284, ptr %3314, align 2, !tbaa !66
  store i16 %3288, ptr %3320, align 2, !tbaa !79
  %3332 = load i32, ptr %3154, align 4, !tbaa !67
  %3333 = icmp eq i32 %3332, 12
  br i1 %3333, label %3339, label %3334

3334:                                             ; preds = %3331
  %3335 = load i32, ptr %53, align 8, !tbaa !83
  %3336 = icmp eq i32 %3335, 2
  %3337 = icmp ne ptr %3316, null
  %3338 = and i1 %3337, %3336
  br i1 %3338, label %3341, label %3343

3339:                                             ; preds = %3331
  %3340 = icmp eq ptr %3316, null
  br i1 %3340, label %3343, label %3341

3341:                                             ; preds = %3334, %3339, %3324, %3329
  %3342 = phi i16 [ %3272, %3329 ], [ %3272, %3324 ], [ %3292, %3339 ], [ %3292, %3334 ]
  store i16 %3342, ptr %3316, align 2, !tbaa !84
  br label %3343

3343:                                             ; preds = %3341, %3339, %3334, %3329, %3324
  %3344 = getelementptr inbounds %struct._PixelPacket, ptr %3314, i64 1
  %3345 = getelementptr inbounds i16, ptr %3316, i64 1
  %3346 = add nuw nsw i64 %3315, 1
  %3347 = icmp slt i64 %3346, %3151
  br i1 %3347, label %3313, label %3172, !llvm.loop !125

3348:                                             ; preds = %3172, %3123
  %3349 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %715, ptr noundef %2) #9
  br label %3350

3350:                                             ; preds = %2343, %3348, %2330
  %3351 = call ptr @DestroyCacheView(ptr noundef %715) #8
  %3352 = call ptr @DestroyCacheView(ptr noundef %714) #8
  %3353 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 36
  %3354 = load i32, ptr %3353, align 8, !tbaa !104
  switch i32 %3354, label %3359 [
    i32 13, label %3371
    i32 40, label %3355
  ]

3355:                                             ; preds = %3350
  %3356 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %3357 = load i32, ptr %3356, align 8, !tbaa !69
  %3358 = icmp eq i32 %3357, 0
  br i1 %3358, label %3371, label %3359

3359:                                             ; preds = %3350, %3355
  %3360 = load i64, ptr %19, align 8, !tbaa !62
  %3361 = load i64, ptr %32, align 8, !tbaa !60
  %3362 = load i64, ptr %23, align 8, !tbaa !63
  %3363 = add i64 %3362, %3360
  %3364 = sub i64 %3363, %30
  %3365 = add i64 %3364, %3361
  %3366 = load i64, ptr %38, align 8, !tbaa !61
  %3367 = add i64 %3362, %3360
  %3368 = sub i64 %3367, %30
  %3369 = add i64 %3368, %3366
  %3370 = call i32 @CompositeImage(ptr noundef %53, i32 noundef %3354, ptr noundef %0, i64 noundef %3365, i64 noundef %3369) #8
  br label %3371

3371:                                             ; preds = %3350, %3359, %3355
  br i1 %2331, label %3372, label %3374

3372:                                             ; preds = %3371
  %3373 = call ptr @DestroyImage(ptr noundef %53) #8
  br label %3374

3374:                                             ; preds = %3371, %3372, %52, %58, %49, %26
  %3375 = phi ptr [ null, %26 ], [ null, %49 ], [ null, %58 ], [ null, %52 ], [ %3373, %3372 ], [ %53, %3371 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #8
  ret ptr %3375
}

declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SetImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @SetImageAlphaChannel(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: hot
declare ptr @QueueCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: hot
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: hot
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

declare ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #2

declare ptr @CopyMagickMemory(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #2

declare i32 @CompositeImage(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @RaiseImage(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  %5 = alloca [4096 x i8], align 16
  %6 = alloca [4096 x i8], align 16
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 717, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #8
  br label %13

13:                                               ; preds = %10, %3
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %15 = load i64, ptr %14, align 8, !tbaa !53
  %16 = load i64, ptr %1, align 8, !tbaa !54
  %17 = shl i64 %16, 1
  %18 = icmp ugt i64 %15, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %21 = load i64, ptr %20, align 8, !tbaa !57
  %22 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !58
  %24 = shl i64 %23, 1
  %25 = icmp ugt i64 %21, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %19, %13
  %27 = icmp eq ptr %0, null
  br i1 %27, label %628, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %30 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %31 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %29, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 722, i32 noundef 410, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, ptr noundef nonnull %30) #8
  br label %628

32:                                               ; preds = %19
  %33 = icmp eq i32 %2, 0
  %34 = select i1 %33, float 0.000000e+00, float 6.553500e+04
  %35 = select i1 %33, float 6.553500e+04, float 0.000000e+00
  %36 = tail call i32 @SetImageStorageClass(ptr noundef %0, i32 noundef 1) #8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %628, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %40 = tail call ptr @AcquireAuthenticCacheView(ptr noundef %0, ptr noundef nonnull %39) #8
  %41 = load i64, ptr %22, align 8, !tbaa !58
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = fmul float %34, 1.670500e+04
  %45 = fmul float %34, 3.084000e+04
  %46 = fmul float %35, 1.670500e+04
  %47 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %48 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %49 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %64

50:                                               ; preds = %252, %38
  %51 = phi i64 [ 0, %38 ], [ %253, %252 ]
  %52 = phi i32 [ 1, %38 ], [ %254, %252 ]
  %53 = phi i64 [ %41, %38 ], [ %256, %252 ]
  %54 = load i64, ptr %20, align 8, !tbaa !57
  %55 = load i64, ptr %22, align 8, !tbaa !58
  %56 = sub i64 %54, %55
  %57 = icmp slt i64 %53, %56
  br i1 %57, label %58, label %259

58:                                               ; preds = %50
  %59 = fmul float %34, 1.670500e+04
  %60 = fmul float %35, 1.670500e+04
  %61 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %62 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %63 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %273

64:                                               ; preds = %43, %252
  %65 = phi i64 [ 0, %43 ], [ %258, %252 ]
  %66 = phi i32 [ 1, %43 ], [ %254, %252 ]
  %67 = phi i64 [ 0, %43 ], [ %255, %252 ]
  %68 = phi i64 [ 0, %43 ], [ %253, %252 ]
  %69 = icmp eq i32 %66, 0
  br i1 %69, label %252, label %70

70:                                               ; preds = %64
  %71 = load i64, ptr %14, align 8, !tbaa !53
  %72 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %40, i64 noundef 0, i64 noundef %67, i64 noundef %71, i64 noundef 1, ptr noundef nonnull %39) #9
  %73 = icmp eq ptr %72, null
  br i1 %73, label %252, label %74

74:                                               ; preds = %70
  %75 = icmp eq i64 %67, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %126, %74
  %77 = phi ptr [ %72, %74 ], [ %128, %126 ]
  %78 = load i64, ptr %14, align 8, !tbaa !53
  %79 = sub i64 %78, %67
  %80 = icmp slt i64 %67, %79
  br i1 %80, label %137, label %133

81:                                               ; preds = %74, %126
  %82 = phi ptr [ %128, %126 ], [ %72, %74 ]
  %83 = phi i64 [ %129, %126 ], [ 0, %74 ]
  %84 = getelementptr inbounds %struct._PixelPacket, ptr %82, i64 0, i32 2
  %85 = load i16, ptr %84, align 2, !tbaa !64
  %86 = uitofp i16 %85 to float
  %87 = call float @llvm.fmuladd.f32(float %86, float 4.883000e+04, float %44)
  %88 = fpext float %87 to double
  %89 = fmul double %88, 0x3EF0001000100010
  %90 = fptrunc double %89 to float
  %91 = fcmp ugt float %90, 0.000000e+00
  br i1 %91, label %92, label %97

92:                                               ; preds = %81
  %93 = fcmp ult float %90, 6.553500e+04
  br i1 %93, label %94, label %97

94:                                               ; preds = %92
  %95 = fadd float %90, 5.000000e-01
  %96 = fptoui float %95 to i16
  br label %97

97:                                               ; preds = %81, %92, %94
  %98 = phi i16 [ %96, %94 ], [ 0, %81 ], [ -1, %92 ]
  store i16 %98, ptr %84, align 2, !tbaa !64
  %99 = getelementptr inbounds %struct._PixelPacket, ptr %82, i64 0, i32 1
  %100 = load i16, ptr %99, align 2, !tbaa !65
  %101 = uitofp i16 %100 to float
  %102 = call float @llvm.fmuladd.f32(float %101, float 4.883000e+04, float %44)
  %103 = fpext float %102 to double
  %104 = fmul double %103, 0x3EF0001000100010
  %105 = fptrunc double %104 to float
  %106 = fcmp ugt float %105, 0.000000e+00
  br i1 %106, label %107, label %112

107:                                              ; preds = %97
  %108 = fcmp ult float %105, 6.553500e+04
  br i1 %108, label %109, label %112

109:                                              ; preds = %107
  %110 = fadd float %105, 5.000000e-01
  %111 = fptoui float %110 to i16
  br label %112

112:                                              ; preds = %97, %107, %109
  %113 = phi i16 [ %111, %109 ], [ 0, %97 ], [ -1, %107 ]
  store i16 %113, ptr %99, align 2, !tbaa !65
  %114 = load i16, ptr %82, align 2, !tbaa !66
  %115 = uitofp i16 %114 to float
  %116 = call float @llvm.fmuladd.f32(float %115, float 4.883000e+04, float %44)
  %117 = fpext float %116 to double
  %118 = fmul double %117, 0x3EF0001000100010
  %119 = fptrunc double %118 to float
  %120 = fcmp ugt float %119, 0.000000e+00
  br i1 %120, label %121, label %126

121:                                              ; preds = %112
  %122 = fcmp ult float %119, 6.553500e+04
  br i1 %122, label %123, label %126

123:                                              ; preds = %121
  %124 = fadd float %119, 5.000000e-01
  %125 = fptoui float %124 to i16
  br label %126

126:                                              ; preds = %112, %121, %123
  %127 = phi i16 [ %125, %123 ], [ 0, %112 ], [ -1, %121 ]
  store i16 %127, ptr %82, align 2, !tbaa !66
  %128 = getelementptr inbounds %struct._PixelPacket, ptr %82, i64 1
  %129 = add nuw nsw i64 %83, 1
  %130 = icmp eq i64 %129, %67
  br i1 %130, label %76, label %81, !llvm.loop !126

131:                                              ; preds = %182
  %132 = add i64 %78, %65
  br label %133

133:                                              ; preds = %131, %76
  %134 = phi i64 [ %67, %76 ], [ %132, %131 ]
  %135 = phi ptr [ %77, %76 ], [ %184, %131 ]
  %136 = icmp slt i64 %134, %78
  br i1 %136, label %187, label %237

137:                                              ; preds = %76, %182
  %138 = phi ptr [ %184, %182 ], [ %77, %76 ]
  %139 = phi i64 [ %185, %182 ], [ %67, %76 ]
  %140 = getelementptr inbounds %struct._PixelPacket, ptr %138, i64 0, i32 2
  %141 = load i16, ptr %140, align 2, !tbaa !64
  %142 = uitofp i16 %141 to float
  %143 = call float @llvm.fmuladd.f32(float %142, float 3.469500e+04, float %45)
  %144 = fpext float %143 to double
  %145 = fmul double %144, 0x3EF0001000100010
  %146 = fptrunc double %145 to float
  %147 = fcmp ugt float %146, 0.000000e+00
  br i1 %147, label %148, label %153

148:                                              ; preds = %137
  %149 = fcmp ult float %146, 6.553500e+04
  br i1 %149, label %150, label %153

150:                                              ; preds = %148
  %151 = fadd float %146, 5.000000e-01
  %152 = fptoui float %151 to i16
  br label %153

153:                                              ; preds = %137, %148, %150
  %154 = phi i16 [ %152, %150 ], [ 0, %137 ], [ -1, %148 ]
  store i16 %154, ptr %140, align 2, !tbaa !64
  %155 = getelementptr inbounds %struct._PixelPacket, ptr %138, i64 0, i32 1
  %156 = load i16, ptr %155, align 2, !tbaa !65
  %157 = uitofp i16 %156 to float
  %158 = call float @llvm.fmuladd.f32(float %157, float 3.469500e+04, float %45)
  %159 = fpext float %158 to double
  %160 = fmul double %159, 0x3EF0001000100010
  %161 = fptrunc double %160 to float
  %162 = fcmp ugt float %161, 0.000000e+00
  br i1 %162, label %163, label %168

163:                                              ; preds = %153
  %164 = fcmp ult float %161, 6.553500e+04
  br i1 %164, label %165, label %168

165:                                              ; preds = %163
  %166 = fadd float %161, 5.000000e-01
  %167 = fptoui float %166 to i16
  br label %168

168:                                              ; preds = %153, %163, %165
  %169 = phi i16 [ %167, %165 ], [ 0, %153 ], [ -1, %163 ]
  store i16 %169, ptr %155, align 2, !tbaa !65
  %170 = load i16, ptr %138, align 2, !tbaa !66
  %171 = uitofp i16 %170 to float
  %172 = call float @llvm.fmuladd.f32(float %171, float 3.469500e+04, float %45)
  %173 = fpext float %172 to double
  %174 = fmul double %173, 0x3EF0001000100010
  %175 = fptrunc double %174 to float
  %176 = fcmp ugt float %175, 0.000000e+00
  br i1 %176, label %177, label %182

177:                                              ; preds = %168
  %178 = fcmp ult float %175, 6.553500e+04
  br i1 %178, label %179, label %182

179:                                              ; preds = %177
  %180 = fadd float %175, 5.000000e-01
  %181 = fptoui float %180 to i16
  br label %182

182:                                              ; preds = %168, %177, %179
  %183 = phi i16 [ %181, %179 ], [ 0, %168 ], [ -1, %177 ]
  store i16 %183, ptr %138, align 2, !tbaa !66
  %184 = getelementptr inbounds %struct._PixelPacket, ptr %138, i64 1
  %185 = add nuw nsw i64 %139, 1
  %186 = icmp slt i64 %185, %79
  br i1 %186, label %137, label %131, !llvm.loop !127

187:                                              ; preds = %133, %232
  %188 = phi ptr [ %234, %232 ], [ %135, %133 ]
  %189 = phi i64 [ %235, %232 ], [ %134, %133 ]
  %190 = getelementptr inbounds %struct._PixelPacket, ptr %188, i64 0, i32 2
  %191 = load i16, ptr %190, align 2, !tbaa !64
  %192 = uitofp i16 %191 to float
  %193 = call float @llvm.fmuladd.f32(float %192, float 4.883000e+04, float %46)
  %194 = fpext float %193 to double
  %195 = fmul double %194, 0x3EF0001000100010
  %196 = fptrunc double %195 to float
  %197 = fcmp ugt float %196, 0.000000e+00
  br i1 %197, label %198, label %203

198:                                              ; preds = %187
  %199 = fcmp ult float %196, 6.553500e+04
  br i1 %199, label %200, label %203

200:                                              ; preds = %198
  %201 = fadd float %196, 5.000000e-01
  %202 = fptoui float %201 to i16
  br label %203

203:                                              ; preds = %187, %198, %200
  %204 = phi i16 [ %202, %200 ], [ 0, %187 ], [ -1, %198 ]
  store i16 %204, ptr %190, align 2, !tbaa !64
  %205 = getelementptr inbounds %struct._PixelPacket, ptr %188, i64 0, i32 1
  %206 = load i16, ptr %205, align 2, !tbaa !65
  %207 = uitofp i16 %206 to float
  %208 = call float @llvm.fmuladd.f32(float %207, float 4.883000e+04, float %46)
  %209 = fpext float %208 to double
  %210 = fmul double %209, 0x3EF0001000100010
  %211 = fptrunc double %210 to float
  %212 = fcmp ugt float %211, 0.000000e+00
  br i1 %212, label %213, label %218

213:                                              ; preds = %203
  %214 = fcmp ult float %211, 6.553500e+04
  br i1 %214, label %215, label %218

215:                                              ; preds = %213
  %216 = fadd float %211, 5.000000e-01
  %217 = fptoui float %216 to i16
  br label %218

218:                                              ; preds = %203, %213, %215
  %219 = phi i16 [ %217, %215 ], [ 0, %203 ], [ -1, %213 ]
  store i16 %219, ptr %205, align 2, !tbaa !65
  %220 = load i16, ptr %188, align 2, !tbaa !66
  %221 = uitofp i16 %220 to float
  %222 = call float @llvm.fmuladd.f32(float %221, float 4.883000e+04, float %46)
  %223 = fpext float %222 to double
  %224 = fmul double %223, 0x3EF0001000100010
  %225 = fptrunc double %224 to float
  %226 = fcmp ugt float %225, 0.000000e+00
  br i1 %226, label %227, label %232

227:                                              ; preds = %218
  %228 = fcmp ult float %225, 6.553500e+04
  br i1 %228, label %229, label %232

229:                                              ; preds = %227
  %230 = fadd float %225, 5.000000e-01
  %231 = fptoui float %230 to i16
  br label %232

232:                                              ; preds = %218, %227, %229
  %233 = phi i16 [ %231, %229 ], [ 0, %218 ], [ -1, %227 ]
  store i16 %233, ptr %188, align 2, !tbaa !66
  %234 = getelementptr inbounds %struct._PixelPacket, ptr %188, i64 1
  %235 = add nuw nsw i64 %189, 1
  %236 = icmp slt i64 %235, %78
  br i1 %236, label %187, label %237, !llvm.loop !128

237:                                              ; preds = %232, %133
  %238 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %40, ptr noundef nonnull %39) #9
  %239 = icmp ne i32 %238, 0
  %240 = zext i1 %239 to i32
  %241 = load ptr, ptr %47, align 8, !tbaa !109
  %242 = icmp eq ptr %241, null
  br i1 %242, label %252, label %243

243:                                              ; preds = %237
  %244 = add nsw i64 %68, 1
  %245 = load i64, ptr %20, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #8
  %246 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, ptr noundef nonnull %48) #8
  %247 = load ptr, ptr %47, align 8, !tbaa !109
  %248 = load ptr, ptr %49, align 8, !tbaa !110
  %249 = call i32 %247(ptr noundef nonnull %6, i64 noundef %68, i64 noundef %245, ptr noundef %248) #8
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #8
  %250 = icmp eq i32 %249, 0
  %251 = select i1 %250, i32 0, i32 %240
  br label %252

252:                                              ; preds = %237, %243, %70, %64
  %253 = phi i64 [ %68, %64 ], [ %68, %70 ], [ %244, %243 ], [ %68, %237 ]
  %254 = phi i32 [ 0, %64 ], [ 0, %70 ], [ %251, %243 ], [ %240, %237 ]
  %255 = add nuw nsw i64 %67, 1
  %256 = load i64, ptr %22, align 8, !tbaa !58
  %257 = icmp slt i64 %255, %256
  %258 = add nsw i64 %65, -1
  br i1 %257, label %64, label %50, !llvm.loop !129

259:                                              ; preds = %414, %50
  %260 = phi i64 [ %51, %50 ], [ %415, %414 ]
  %261 = phi i32 [ %52, %50 ], [ %416, %414 ]
  %262 = phi i64 [ %56, %50 ], [ %420, %414 ]
  %263 = load i64, ptr %20, align 8, !tbaa !57
  %264 = icmp slt i64 %262, %263
  br i1 %264, label %265, label %625

265:                                              ; preds = %259
  %266 = fmul float %34, 1.670500e+04
  %267 = fmul float %35, 3.084000e+04
  %268 = fmul float %35, 1.670500e+04
  %269 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %270 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %271 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %272 = sub i64 0, %262
  br label %422

273:                                              ; preds = %58, %414
  %274 = phi i32 [ %52, %58 ], [ %416, %414 ]
  %275 = phi i64 [ %53, %58 ], [ %417, %414 ]
  %276 = phi i64 [ %51, %58 ], [ %415, %414 ]
  %277 = icmp eq i32 %274, 0
  br i1 %277, label %414, label %278

278:                                              ; preds = %273
  %279 = load i64, ptr %14, align 8, !tbaa !53
  %280 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %40, i64 noundef 0, i64 noundef %275, i64 noundef %279, i64 noundef 1, ptr noundef nonnull %39) #9
  %281 = icmp eq ptr %280, null
  br i1 %281, label %414, label %282

282:                                              ; preds = %278
  %283 = load i64, ptr %1, align 8, !tbaa !54
  %284 = icmp sgt i64 %283, 0
  br i1 %284, label %299, label %285

285:                                              ; preds = %344, %282
  %286 = phi i64 [ 0, %282 ], [ %283, %344 ]
  %287 = phi ptr [ %280, %282 ], [ %346, %344 ]
  %288 = load i64, ptr %14, align 8, !tbaa !53
  %289 = sub i64 %288, %283
  %290 = call i64 @llvm.smax.i64(i64 %286, i64 %289)
  %291 = icmp slt i64 %290, %288
  br i1 %291, label %292, label %399

292:                                              ; preds = %285
  %293 = icmp slt i64 %286, %289
  %294 = add i64 %283, %286
  %295 = sub i64 %288, %294
  %296 = shl i64 %295, 3
  %297 = select i1 %293, i64 %296, i64 0
  %298 = getelementptr i8, ptr %287, i64 %297
  br label %349

299:                                              ; preds = %282, %344
  %300 = phi ptr [ %346, %344 ], [ %280, %282 ]
  %301 = phi i64 [ %347, %344 ], [ 0, %282 ]
  %302 = getelementptr inbounds %struct._PixelPacket, ptr %300, i64 0, i32 2
  %303 = load i16, ptr %302, align 2, !tbaa !64
  %304 = uitofp i16 %303 to float
  %305 = call float @llvm.fmuladd.f32(float %304, float 4.883000e+04, float %59)
  %306 = fpext float %305 to double
  %307 = fmul double %306, 0x3EF0001000100010
  %308 = fptrunc double %307 to float
  %309 = fcmp ugt float %308, 0.000000e+00
  br i1 %309, label %310, label %315

310:                                              ; preds = %299
  %311 = fcmp ult float %308, 6.553500e+04
  br i1 %311, label %312, label %315

312:                                              ; preds = %310
  %313 = fadd float %308, 5.000000e-01
  %314 = fptoui float %313 to i16
  br label %315

315:                                              ; preds = %299, %310, %312
  %316 = phi i16 [ %314, %312 ], [ 0, %299 ], [ -1, %310 ]
  store i16 %316, ptr %302, align 2, !tbaa !64
  %317 = getelementptr inbounds %struct._PixelPacket, ptr %300, i64 0, i32 1
  %318 = load i16, ptr %317, align 2, !tbaa !65
  %319 = uitofp i16 %318 to float
  %320 = call float @llvm.fmuladd.f32(float %319, float 4.883000e+04, float %59)
  %321 = fpext float %320 to double
  %322 = fmul double %321, 0x3EF0001000100010
  %323 = fptrunc double %322 to float
  %324 = fcmp ugt float %323, 0.000000e+00
  br i1 %324, label %325, label %330

325:                                              ; preds = %315
  %326 = fcmp ult float %323, 6.553500e+04
  br i1 %326, label %327, label %330

327:                                              ; preds = %325
  %328 = fadd float %323, 5.000000e-01
  %329 = fptoui float %328 to i16
  br label %330

330:                                              ; preds = %315, %325, %327
  %331 = phi i16 [ %329, %327 ], [ 0, %315 ], [ -1, %325 ]
  store i16 %331, ptr %317, align 2, !tbaa !65
  %332 = load i16, ptr %300, align 2, !tbaa !66
  %333 = uitofp i16 %332 to float
  %334 = call float @llvm.fmuladd.f32(float %333, float 4.883000e+04, float %59)
  %335 = fpext float %334 to double
  %336 = fmul double %335, 0x3EF0001000100010
  %337 = fptrunc double %336 to float
  %338 = fcmp ugt float %337, 0.000000e+00
  br i1 %338, label %339, label %344

339:                                              ; preds = %330
  %340 = fcmp ult float %337, 6.553500e+04
  br i1 %340, label %341, label %344

341:                                              ; preds = %339
  %342 = fadd float %337, 5.000000e-01
  %343 = fptoui float %342 to i16
  br label %344

344:                                              ; preds = %330, %339, %341
  %345 = phi i16 [ %343, %341 ], [ 0, %330 ], [ -1, %339 ]
  store i16 %345, ptr %300, align 2, !tbaa !66
  %346 = getelementptr inbounds %struct._PixelPacket, ptr %300, i64 1
  %347 = add nuw nsw i64 %301, 1
  %348 = icmp eq i64 %347, %283
  br i1 %348, label %285, label %299, !llvm.loop !130

349:                                              ; preds = %292, %394
  %350 = phi ptr [ %396, %394 ], [ %298, %292 ]
  %351 = phi i64 [ %397, %394 ], [ %290, %292 ]
  %352 = getelementptr inbounds %struct._PixelPacket, ptr %350, i64 0, i32 2
  %353 = load i16, ptr %352, align 2, !tbaa !64
  %354 = uitofp i16 %353 to float
  %355 = call float @llvm.fmuladd.f32(float %354, float 4.883000e+04, float %60)
  %356 = fpext float %355 to double
  %357 = fmul double %356, 0x3EF0001000100010
  %358 = fptrunc double %357 to float
  %359 = fcmp ugt float %358, 0.000000e+00
  br i1 %359, label %360, label %365

360:                                              ; preds = %349
  %361 = fcmp ult float %358, 6.553500e+04
  br i1 %361, label %362, label %365

362:                                              ; preds = %360
  %363 = fadd float %358, 5.000000e-01
  %364 = fptoui float %363 to i16
  br label %365

365:                                              ; preds = %349, %360, %362
  %366 = phi i16 [ %364, %362 ], [ 0, %349 ], [ -1, %360 ]
  store i16 %366, ptr %352, align 2, !tbaa !64
  %367 = getelementptr inbounds %struct._PixelPacket, ptr %350, i64 0, i32 1
  %368 = load i16, ptr %367, align 2, !tbaa !65
  %369 = uitofp i16 %368 to float
  %370 = call float @llvm.fmuladd.f32(float %369, float 4.883000e+04, float %60)
  %371 = fpext float %370 to double
  %372 = fmul double %371, 0x3EF0001000100010
  %373 = fptrunc double %372 to float
  %374 = fcmp ugt float %373, 0.000000e+00
  br i1 %374, label %375, label %380

375:                                              ; preds = %365
  %376 = fcmp ult float %373, 6.553500e+04
  br i1 %376, label %377, label %380

377:                                              ; preds = %375
  %378 = fadd float %373, 5.000000e-01
  %379 = fptoui float %378 to i16
  br label %380

380:                                              ; preds = %365, %375, %377
  %381 = phi i16 [ %379, %377 ], [ 0, %365 ], [ -1, %375 ]
  store i16 %381, ptr %367, align 2, !tbaa !65
  %382 = load i16, ptr %350, align 2, !tbaa !66
  %383 = uitofp i16 %382 to float
  %384 = call float @llvm.fmuladd.f32(float %383, float 4.883000e+04, float %60)
  %385 = fpext float %384 to double
  %386 = fmul double %385, 0x3EF0001000100010
  %387 = fptrunc double %386 to float
  %388 = fcmp ugt float %387, 0.000000e+00
  br i1 %388, label %389, label %394

389:                                              ; preds = %380
  %390 = fcmp ult float %387, 6.553500e+04
  br i1 %390, label %391, label %394

391:                                              ; preds = %389
  %392 = fadd float %387, 5.000000e-01
  %393 = fptoui float %392 to i16
  br label %394

394:                                              ; preds = %380, %389, %391
  %395 = phi i16 [ %393, %391 ], [ 0, %380 ], [ -1, %389 ]
  store i16 %395, ptr %350, align 2, !tbaa !66
  %396 = getelementptr inbounds %struct._PixelPacket, ptr %350, i64 1
  %397 = add nuw nsw i64 %351, 1
  %398 = icmp eq i64 %397, %288
  br i1 %398, label %399, label %349, !llvm.loop !131

399:                                              ; preds = %394, %285
  %400 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %40, ptr noundef nonnull %39) #9
  %401 = icmp ne i32 %400, 0
  %402 = zext i1 %401 to i32
  %403 = load ptr, ptr %61, align 8, !tbaa !109
  %404 = icmp eq ptr %403, null
  br i1 %404, label %414, label %405

405:                                              ; preds = %399
  %406 = add nsw i64 %276, 1
  %407 = load i64, ptr %20, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #8
  %408 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, ptr noundef nonnull %62) #8
  %409 = load ptr, ptr %61, align 8, !tbaa !109
  %410 = load ptr, ptr %63, align 8, !tbaa !110
  %411 = call i32 %409(ptr noundef nonnull %5, i64 noundef %276, i64 noundef %407, ptr noundef %410) #8
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #8
  %412 = icmp eq i32 %411, 0
  %413 = select i1 %412, i32 0, i32 %402
  br label %414

414:                                              ; preds = %399, %405, %278, %273
  %415 = phi i64 [ %276, %273 ], [ %276, %278 ], [ %406, %405 ], [ %276, %399 ]
  %416 = phi i32 [ 0, %273 ], [ 0, %278 ], [ %413, %405 ], [ %402, %399 ]
  %417 = add nsw i64 %275, 1
  %418 = load i64, ptr %20, align 8, !tbaa !57
  %419 = load i64, ptr %22, align 8, !tbaa !58
  %420 = sub i64 %418, %419
  %421 = icmp slt i64 %417, %420
  br i1 %421, label %273, label %259, !llvm.loop !132

422:                                              ; preds = %265, %618
  %423 = phi i64 [ %272, %265 ], [ %624, %618 ]
  %424 = phi i32 [ %261, %265 ], [ %620, %618 ]
  %425 = phi i64 [ %262, %265 ], [ %621, %618 ]
  %426 = phi i64 [ %260, %265 ], [ %619, %618 ]
  %427 = icmp eq i32 %424, 0
  br i1 %427, label %618, label %428

428:                                              ; preds = %422
  %429 = load i64, ptr %14, align 8, !tbaa !53
  %430 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %40, i64 noundef 0, i64 noundef %425, i64 noundef %429, i64 noundef 1, ptr noundef nonnull %39) #9
  %431 = icmp eq ptr %430, null
  br i1 %431, label %618, label %432

432:                                              ; preds = %428
  %433 = load i64, ptr %20, align 8, !tbaa !57
  %434 = sub i64 %433, %425
  %435 = icmp sgt i64 %434, 0
  br i1 %435, label %447, label %438

436:                                              ; preds = %492
  %437 = add i64 %433, %423
  br label %438

438:                                              ; preds = %436, %432
  %439 = phi i64 [ 0, %432 ], [ %437, %436 ]
  %440 = phi ptr [ %430, %432 ], [ %494, %436 ]
  %441 = load i64, ptr %14, align 8, !tbaa !53
  %442 = sub i64 %425, %433
  %443 = add i64 %442, %441
  %444 = icmp slt i64 %439, %443
  br i1 %444, label %445, label %499

445:                                              ; preds = %438
  %446 = add i64 %441, %425
  br label %503

447:                                              ; preds = %432, %492
  %448 = phi ptr [ %494, %492 ], [ %430, %432 ]
  %449 = phi i64 [ %495, %492 ], [ 0, %432 ]
  %450 = getelementptr inbounds %struct._PixelPacket, ptr %448, i64 0, i32 2
  %451 = load i16, ptr %450, align 2, !tbaa !64
  %452 = uitofp i16 %451 to float
  %453 = call float @llvm.fmuladd.f32(float %452, float 4.883000e+04, float %266)
  %454 = fpext float %453 to double
  %455 = fmul double %454, 0x3EF0001000100010
  %456 = fptrunc double %455 to float
  %457 = fcmp ugt float %456, 0.000000e+00
  br i1 %457, label %458, label %463

458:                                              ; preds = %447
  %459 = fcmp ult float %456, 6.553500e+04
  br i1 %459, label %460, label %463

460:                                              ; preds = %458
  %461 = fadd float %456, 5.000000e-01
  %462 = fptoui float %461 to i16
  br label %463

463:                                              ; preds = %447, %458, %460
  %464 = phi i16 [ %462, %460 ], [ 0, %447 ], [ -1, %458 ]
  store i16 %464, ptr %450, align 2, !tbaa !64
  %465 = getelementptr inbounds %struct._PixelPacket, ptr %448, i64 0, i32 1
  %466 = load i16, ptr %465, align 2, !tbaa !65
  %467 = uitofp i16 %466 to float
  %468 = call float @llvm.fmuladd.f32(float %467, float 4.883000e+04, float %266)
  %469 = fpext float %468 to double
  %470 = fmul double %469, 0x3EF0001000100010
  %471 = fptrunc double %470 to float
  %472 = fcmp ugt float %471, 0.000000e+00
  br i1 %472, label %473, label %478

473:                                              ; preds = %463
  %474 = fcmp ult float %471, 6.553500e+04
  br i1 %474, label %475, label %478

475:                                              ; preds = %473
  %476 = fadd float %471, 5.000000e-01
  %477 = fptoui float %476 to i16
  br label %478

478:                                              ; preds = %463, %473, %475
  %479 = phi i16 [ %477, %475 ], [ 0, %463 ], [ -1, %473 ]
  store i16 %479, ptr %465, align 2, !tbaa !65
  %480 = load i16, ptr %448, align 2, !tbaa !66
  %481 = uitofp i16 %480 to float
  %482 = call float @llvm.fmuladd.f32(float %481, float 4.883000e+04, float %266)
  %483 = fpext float %482 to double
  %484 = fmul double %483, 0x3EF0001000100010
  %485 = fptrunc double %484 to float
  %486 = fcmp ugt float %485, 0.000000e+00
  br i1 %486, label %487, label %492

487:                                              ; preds = %478
  %488 = fcmp ult float %485, 6.553500e+04
  br i1 %488, label %489, label %492

489:                                              ; preds = %487
  %490 = fadd float %485, 5.000000e-01
  %491 = fptoui float %490 to i16
  br label %492

492:                                              ; preds = %478, %487, %489
  %493 = phi i16 [ %491, %489 ], [ 0, %478 ], [ -1, %487 ]
  store i16 %493, ptr %448, align 2, !tbaa !66
  %494 = getelementptr inbounds %struct._PixelPacket, ptr %448, i64 1
  %495 = add nuw nsw i64 %449, 1
  %496 = icmp slt i64 %495, %434
  br i1 %496, label %447, label %436, !llvm.loop !133

497:                                              ; preds = %548
  %498 = sub i64 %446, %433
  br label %499

499:                                              ; preds = %497, %438
  %500 = phi i64 [ %439, %438 ], [ %498, %497 ]
  %501 = phi ptr [ %440, %438 ], [ %550, %497 ]
  %502 = icmp slt i64 %500, %441
  br i1 %502, label %553, label %603

503:                                              ; preds = %445, %548
  %504 = phi ptr [ %550, %548 ], [ %440, %445 ]
  %505 = phi i64 [ %551, %548 ], [ %439, %445 ]
  %506 = getelementptr inbounds %struct._PixelPacket, ptr %504, i64 0, i32 2
  %507 = load i16, ptr %506, align 2, !tbaa !64
  %508 = uitofp i16 %507 to float
  %509 = call float @llvm.fmuladd.f32(float %508, float 3.469500e+04, float %267)
  %510 = fpext float %509 to double
  %511 = fmul double %510, 0x3EF0001000100010
  %512 = fptrunc double %511 to float
  %513 = fcmp ugt float %512, 0.000000e+00
  br i1 %513, label %514, label %519

514:                                              ; preds = %503
  %515 = fcmp ult float %512, 6.553500e+04
  br i1 %515, label %516, label %519

516:                                              ; preds = %514
  %517 = fadd float %512, 5.000000e-01
  %518 = fptoui float %517 to i16
  br label %519

519:                                              ; preds = %503, %514, %516
  %520 = phi i16 [ %518, %516 ], [ 0, %503 ], [ -1, %514 ]
  store i16 %520, ptr %506, align 2, !tbaa !64
  %521 = getelementptr inbounds %struct._PixelPacket, ptr %504, i64 0, i32 1
  %522 = load i16, ptr %521, align 2, !tbaa !65
  %523 = uitofp i16 %522 to float
  %524 = call float @llvm.fmuladd.f32(float %523, float 3.469500e+04, float %267)
  %525 = fpext float %524 to double
  %526 = fmul double %525, 0x3EF0001000100010
  %527 = fptrunc double %526 to float
  %528 = fcmp ugt float %527, 0.000000e+00
  br i1 %528, label %529, label %534

529:                                              ; preds = %519
  %530 = fcmp ult float %527, 6.553500e+04
  br i1 %530, label %531, label %534

531:                                              ; preds = %529
  %532 = fadd float %527, 5.000000e-01
  %533 = fptoui float %532 to i16
  br label %534

534:                                              ; preds = %519, %529, %531
  %535 = phi i16 [ %533, %531 ], [ 0, %519 ], [ -1, %529 ]
  store i16 %535, ptr %521, align 2, !tbaa !65
  %536 = load i16, ptr %504, align 2, !tbaa !66
  %537 = uitofp i16 %536 to float
  %538 = call float @llvm.fmuladd.f32(float %537, float 3.469500e+04, float %267)
  %539 = fpext float %538 to double
  %540 = fmul double %539, 0x3EF0001000100010
  %541 = fptrunc double %540 to float
  %542 = fcmp ugt float %541, 0.000000e+00
  br i1 %542, label %543, label %548

543:                                              ; preds = %534
  %544 = fcmp ult float %541, 6.553500e+04
  br i1 %544, label %545, label %548

545:                                              ; preds = %543
  %546 = fadd float %541, 5.000000e-01
  %547 = fptoui float %546 to i16
  br label %548

548:                                              ; preds = %534, %543, %545
  %549 = phi i16 [ %547, %545 ], [ 0, %534 ], [ -1, %543 ]
  store i16 %549, ptr %504, align 2, !tbaa !66
  %550 = getelementptr inbounds %struct._PixelPacket, ptr %504, i64 1
  %551 = add nuw nsw i64 %505, 1
  %552 = icmp slt i64 %551, %443
  br i1 %552, label %503, label %497, !llvm.loop !134

553:                                              ; preds = %499, %598
  %554 = phi ptr [ %600, %598 ], [ %501, %499 ]
  %555 = phi i64 [ %601, %598 ], [ %500, %499 ]
  %556 = getelementptr inbounds %struct._PixelPacket, ptr %554, i64 0, i32 2
  %557 = load i16, ptr %556, align 2, !tbaa !64
  %558 = uitofp i16 %557 to float
  %559 = call float @llvm.fmuladd.f32(float %558, float 4.883000e+04, float %268)
  %560 = fpext float %559 to double
  %561 = fmul double %560, 0x3EF0001000100010
  %562 = fptrunc double %561 to float
  %563 = fcmp ugt float %562, 0.000000e+00
  br i1 %563, label %564, label %569

564:                                              ; preds = %553
  %565 = fcmp ult float %562, 6.553500e+04
  br i1 %565, label %566, label %569

566:                                              ; preds = %564
  %567 = fadd float %562, 5.000000e-01
  %568 = fptoui float %567 to i16
  br label %569

569:                                              ; preds = %553, %564, %566
  %570 = phi i16 [ %568, %566 ], [ 0, %553 ], [ -1, %564 ]
  store i16 %570, ptr %556, align 2, !tbaa !64
  %571 = getelementptr inbounds %struct._PixelPacket, ptr %554, i64 0, i32 1
  %572 = load i16, ptr %571, align 2, !tbaa !65
  %573 = uitofp i16 %572 to float
  %574 = call float @llvm.fmuladd.f32(float %573, float 4.883000e+04, float %268)
  %575 = fpext float %574 to double
  %576 = fmul double %575, 0x3EF0001000100010
  %577 = fptrunc double %576 to float
  %578 = fcmp ugt float %577, 0.000000e+00
  br i1 %578, label %579, label %584

579:                                              ; preds = %569
  %580 = fcmp ult float %577, 6.553500e+04
  br i1 %580, label %581, label %584

581:                                              ; preds = %579
  %582 = fadd float %577, 5.000000e-01
  %583 = fptoui float %582 to i16
  br label %584

584:                                              ; preds = %569, %579, %581
  %585 = phi i16 [ %583, %581 ], [ 0, %569 ], [ -1, %579 ]
  store i16 %585, ptr %571, align 2, !tbaa !65
  %586 = load i16, ptr %554, align 2, !tbaa !66
  %587 = uitofp i16 %586 to float
  %588 = call float @llvm.fmuladd.f32(float %587, float 4.883000e+04, float %268)
  %589 = fpext float %588 to double
  %590 = fmul double %589, 0x3EF0001000100010
  %591 = fptrunc double %590 to float
  %592 = fcmp ugt float %591, 0.000000e+00
  br i1 %592, label %593, label %598

593:                                              ; preds = %584
  %594 = fcmp ult float %591, 6.553500e+04
  br i1 %594, label %595, label %598

595:                                              ; preds = %593
  %596 = fadd float %591, 5.000000e-01
  %597 = fptoui float %596 to i16
  br label %598

598:                                              ; preds = %584, %593, %595
  %599 = phi i16 [ %597, %595 ], [ 0, %584 ], [ -1, %593 ]
  store i16 %599, ptr %554, align 2, !tbaa !66
  %600 = getelementptr inbounds %struct._PixelPacket, ptr %554, i64 1
  %601 = add nuw nsw i64 %555, 1
  %602 = icmp slt i64 %601, %441
  br i1 %602, label %553, label %603, !llvm.loop !135

603:                                              ; preds = %598, %499
  %604 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %40, ptr noundef nonnull %39) #9
  %605 = icmp ne i32 %604, 0
  %606 = zext i1 %605 to i32
  %607 = load ptr, ptr %269, align 8, !tbaa !109
  %608 = icmp eq ptr %607, null
  br i1 %608, label %618, label %609

609:                                              ; preds = %603
  %610 = add nsw i64 %426, 1
  %611 = load i64, ptr %20, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #8
  %612 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, ptr noundef nonnull %270) #8
  %613 = load ptr, ptr %269, align 8, !tbaa !109
  %614 = load ptr, ptr %271, align 8, !tbaa !110
  %615 = call i32 %613(ptr noundef nonnull %4, i64 noundef %426, i64 noundef %611, ptr noundef %614) #8
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #8
  %616 = icmp eq i32 %615, 0
  %617 = select i1 %616, i32 0, i32 %606
  br label %618

618:                                              ; preds = %603, %609, %428, %422
  %619 = phi i64 [ %426, %422 ], [ %426, %428 ], [ %610, %609 ], [ %426, %603 ]
  %620 = phi i32 [ 0, %422 ], [ 0, %428 ], [ %617, %609 ], [ %606, %603 ]
  %621 = add nsw i64 %425, 1
  %622 = load i64, ptr %20, align 8, !tbaa !57
  %623 = icmp slt i64 %621, %622
  %624 = add i64 %423, -1
  br i1 %623, label %422, label %625, !llvm.loop !136

625:                                              ; preds = %618, %259
  %626 = phi i32 [ %261, %259 ], [ %620, %618 ]
  %627 = call ptr @DestroyCacheView(ptr noundef %40) #8
  br label %628

628:                                              ; preds = %32, %26, %28, %625
  %629 = phi i32 [ %626, %625 ], [ 0, %28 ], [ 0, %26 ], [ 0, %32 ]
  ret i32 %629
}

; Function Attrs: hot
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: hot
declare float @DecodePixelGamma(float noundef) local_unnamed_addr #5

declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { hot "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }
attributes #9 = { hot nounwind }

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
!53 = !{!35, !39, i64 40}
!54 = !{!46, !39, i64 0}
!55 = !{!56, !39, i64 0}
!56 = !{!"_FrameInfo", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40}
!57 = !{!35, !39, i64 48}
!58 = !{!46, !39, i64 8}
!59 = !{!56, !39, i64 8}
!60 = !{!56, !39, i64 16}
!61 = !{!56, !39, i64 24}
!62 = !{!56, !39, i64 40}
!63 = !{!56, !39, i64 32}
!64 = !{!41, !42, i64 4}
!65 = !{!41, !42, i64 2}
!66 = !{!41, !42, i64 0}
!67 = !{!35, !36, i64 4}
!68 = !{!35, !42, i64 94}
!69 = !{!35, !36, i64 32}
!70 = !{i64 0, i64 8, !71, i64 8, i64 8, !71, i64 16, i64 8, !71, i64 24, i64 8, !71}
!71 = !{!39, !39, i64 0}
!72 = !{!35, !39, i64 280}
!73 = !{!35, !39, i64 288}
!74 = !{!75, !76, i64 32}
!75 = !{!"_MagickPixelPacket", !36, i64 0, !36, i64 4, !36, i64 8, !43, i64 16, !39, i64 24, !76, i64 32, !76, i64 36, !76, i64 40, !76, i64 44, !76, i64 48}
!76 = !{!"float", !37, i64 0}
!77 = !{!75, !76, i64 36}
!78 = !{!75, !76, i64 40}
!79 = !{!41, !42, i64 6}
!80 = !{!75, !76, i64 44}
!81 = !{!75, !36, i64 4}
!82 = !{!75, !76, i64 48}
!83 = !{!35, !36, i64 0}
!84 = !{!42, !42, i64 0}
!85 = distinct !{!85, !86, !87}
!86 = !{!"llvm.loop.mustprogress"}
!87 = !{!"llvm.loop.unroll.disable"}
!88 = distinct !{!88, !86, !87}
!89 = distinct !{!89, !86, !87}
!90 = distinct !{!90, !86, !87}
!91 = distinct !{!91, !86, !87}
!92 = distinct !{!92, !86, !87}
!93 = distinct !{!93, !86, !87}
!94 = distinct !{!94, !86, !87}
!95 = distinct !{!95, !86, !87}
!96 = distinct !{!96, !86, !87}
!97 = distinct !{!97, !86, !87}
!98 = distinct !{!98, !86, !87}
!99 = distinct !{!99, !86, !87}
!100 = distinct !{!100, !86, !87}
!101 = distinct !{!101, !86, !87}
!102 = distinct !{!102, !86, !87}
!103 = distinct !{!103, !86, !87}
!104 = !{!35, !36, i64 416}
!105 = distinct !{!105, !86, !87}
!106 = distinct !{!106, !86, !87}
!107 = distinct !{!107, !86, !87}
!108 = distinct !{!108, !86, !87}
!109 = !{!35, !40, i64 568}
!110 = !{!35, !40, i64 576}
!111 = distinct !{!111, !86, !87}
!112 = distinct !{!112, !86, !87}
!113 = distinct !{!113, !86, !87}
!114 = distinct !{!114, !86, !87}
!115 = distinct !{!115, !86, !87}
!116 = distinct !{!116, !86, !87}
!117 = distinct !{!117, !86, !87}
!118 = distinct !{!118, !86, !87}
!119 = distinct !{!119, !86, !87}
!120 = distinct !{!120, !86, !87}
!121 = distinct !{!121, !86, !87}
!122 = distinct !{!122, !86, !87}
!123 = distinct !{!123, !86, !87}
!124 = distinct !{!124, !86, !87}
!125 = distinct !{!125, !86, !87}
!126 = distinct !{!126, !86, !87}
!127 = distinct !{!127, !86, !87}
!128 = distinct !{!128, !86, !87}
!129 = distinct !{!129, !86, !87}
!130 = distinct !{!130, !86, !87}
!131 = distinct !{!131, !86, !87}
!132 = distinct !{!132, !86, !87}
!133 = distinct !{!133, !86, !87}
!134 = distinct !{!134, !86, !87}
!135 = distinct !{!135, !86, !87}
!136 = distinct !{!136, !86, !87}
