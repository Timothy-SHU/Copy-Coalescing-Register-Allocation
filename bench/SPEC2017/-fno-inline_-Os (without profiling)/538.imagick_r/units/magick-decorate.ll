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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BorderImage(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct._FrameInfo, align 16
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #11
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 115, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #12
  br label %11

11:                                               ; preds = %8, %3
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %13 = load <2 x i64>, ptr %12, align 8, !tbaa !24
  %14 = load <2 x i64>, ptr %1, align 8, !tbaa !24
  %15 = shl <2 x i64> %14, <i64 1, i64 1>
  %16 = add <2 x i64> %15, %13
  store <2 x i64> %16, ptr %4, align 16, !tbaa !24
  %17 = getelementptr inbounds %struct._FrameInfo, ptr %4, i64 0, i32 2
  store <2 x i64> %14, ptr %17, align 16, !tbaa !24
  %18 = getelementptr inbounds %struct._FrameInfo, ptr %4, i64 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %18, i8 0, i64 16, i1 false)
  %19 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #12
  %20 = icmp eq ptr %19, null
  br i1 %20, label %32, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct._Image, ptr %19, i64 0, i32 14
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 13
  %24 = load i64, ptr %23, align 8
  store i64 %24, ptr %22, align 8
  %25 = call ptr @FrameImage(ptr noundef nonnull %19, ptr noundef nonnull %4, ptr noundef %2) #13
  %26 = tail call ptr @DestroyImage(ptr noundef nonnull %19) #12
  %27 = icmp eq ptr %25, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct._Image, ptr %25, i64 0, i32 14
  %30 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 14
  %31 = load i64, ptr %30, align 8
  store i64 %31, ptr %29, align 8
  br label %32

32:                                               ; preds = %21, %28, %11
  %33 = phi ptr [ null, %11 ], [ %25, %28 ], [ null, %21 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #11
  ret ptr %33
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @FrameImage(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct._MagickPixelPacket, align 8
  %5 = alloca %struct._MagickPixelPacket, align 8
  %6 = alloca %struct._MagickPixelPacket, align 8
  %7 = alloca %struct._MagickPixelPacket, align 8
  %8 = alloca %struct._MagickPixelPacket, align 8
  %9 = alloca %struct._MagickPixelPacket, align 8
  %10 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #11
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %12 = load i32, ptr %11, align 8, !tbaa !5
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %16 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 209, ptr noundef nonnull @.str.2, ptr noundef nonnull %15) #12
  br label %17

17:                                               ; preds = %14, %3
  %18 = getelementptr inbounds %struct._FrameInfo, ptr %1, i64 0, i32 5
  %19 = load i64, ptr %18, align 8, !tbaa !25
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct._FrameInfo, ptr %1, i64 0, i32 4
  %23 = load i64, ptr %22, align 8, !tbaa !27
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21, %17
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %27 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 212, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %26) #12
  br label %884

28:                                               ; preds = %21
  %29 = add nuw nsw i64 %23, %19
  %30 = load i64, ptr %1, align 8, !tbaa !28
  %31 = getelementptr inbounds %struct._FrameInfo, ptr %1, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !29
  %33 = add i64 %29, %32
  %34 = sub i64 %30, %33
  %35 = getelementptr inbounds %struct._FrameInfo, ptr %1, i64 0, i32 1
  %36 = load i64, ptr %35, align 8, !tbaa !30
  %37 = getelementptr inbounds %struct._FrameInfo, ptr %1, i64 0, i32 3
  %38 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %39 = load i64, ptr %38, align 8, !tbaa !31
  %40 = icmp ult i64 %34, %39
  br i1 %40, label %48, label %41

41:                                               ; preds = %28
  %42 = load i64, ptr %37, align 8, !tbaa !32
  %43 = add i64 %29, %42
  %44 = sub i64 %36, %43
  %45 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %46 = load i64, ptr %45, align 8, !tbaa !33
  %47 = icmp ult i64 %44, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %41, %28
  %49 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %50 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 217, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %49) #12
  br label %884

51:                                               ; preds = %41
  %52 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %30, i64 noundef %36, i32 noundef 1, ptr noundef %2) #12
  %53 = icmp eq ptr %52, null
  br i1 %53, label %884, label %54

54:                                               ; preds = %51
  %55 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %52, i32 noundef 1) #12
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct._Image, ptr %52, i64 0, i32 58
  tail call void @InheritException(ptr noundef %2, ptr noundef nonnull %58) #12
  %59 = tail call ptr @DestroyImage(ptr noundef nonnull %52) #12
  br label %884

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct._Image, ptr %52, i64 0, i32 13
  %62 = tail call fastcc i32 @IsPixelGray(ptr noundef nonnull %61) #13, !range !34
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct._Image, ptr %52, i64 0, i32 1
  %66 = load i32, ptr %65, align 4, !tbaa !35
  %67 = tail call fastcc i32 @IsGrayColorspace(i32 noundef %66) #13, !range !34
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %64
  %70 = tail call i32 @SetImageColorspace(ptr noundef nonnull %52, i32 noundef 13) #12
  br label %71

71:                                               ; preds = %69, %64, %60
  %72 = getelementptr inbounds %struct._Image, ptr %52, i64 0, i32 13, i32 3
  %73 = load i16, ptr %72, align 2, !tbaa !36
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct._Image, ptr %52, i64 0, i32 6
  %77 = load i32, ptr %76, align 8, !tbaa !37
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %52, i32 noundef 6) #12
  br label %81

81:                                               ; preds = %79, %75, %71
  %82 = getelementptr inbounds %struct._Image, ptr %52, i64 0, i32 26
  %83 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %82, ptr noundef nonnull align 8 dereferenceable(32) %83, i64 32, i1 false), !tbaa.struct !38
  %84 = load i64, ptr %83, align 8, !tbaa !39
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %97, label %86

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 1
  %88 = load i64, ptr %87, align 8, !tbaa !40
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct._Image, ptr %52, i64 0, i32 7
  %92 = load <2 x i64>, ptr %91, align 8, !tbaa !24
  %93 = load <2 x i64>, ptr %38, align 8, !tbaa !24
  %94 = sub <2 x i64> %92, %93
  %95 = load <2 x i64>, ptr %82, align 8, !tbaa !24
  %96 = add <2 x i64> %94, %95
  store <2 x i64> %96, ptr %82, align 8, !tbaa !24
  br label %97

97:                                               ; preds = %90, %86, %81
  call void @GetMagickPixelPacket(ptr noundef nonnull %52, ptr noundef nonnull %7) #12
  %98 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 13
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %98, ptr noundef nonnull %7) #13
  call void @GetMagickPixelPacket(ptr noundef nonnull %52, ptr noundef nonnull %8) #12
  %99 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 1
  store i32 13, ptr %99, align 4, !tbaa !41
  %100 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 14
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %100, ptr noundef nonnull %8) #13
  call void @GetMagickPixelPacket(ptr noundef nonnull %52, ptr noundef nonnull %5) #12
  %101 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 1
  store i32 13, ptr %101, align 4, !tbaa !41
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %98, ptr noundef nonnull %5) #13
  call void @GetMagickPixelPacket(ptr noundef nonnull %52, ptr noundef nonnull %4) #12
  %102 = call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext 80) #13, !range !44
  %103 = xor i16 %102, -1
  %104 = uitofp i16 %103 to float
  %105 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 5
  %106 = zext i16 %102 to i32
  %107 = mul nuw nsw i32 %106, 65535
  %108 = sitofp i32 %107 to float
  %109 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 5
  %110 = load <2 x float>, ptr %105, align 8, !tbaa !45
  %111 = insertelement <2 x float> poison, float %104, i64 0
  %112 = shufflevector <2 x float> %111, <2 x float> poison, <2 x i32> zeroinitializer
  %113 = insertelement <2 x float> poison, float %108, i64 0
  %114 = shufflevector <2 x float> %113, <2 x float> poison, <2 x i32> zeroinitializer
  %115 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %112, <2 x float> %110, <2 x float> %114)
  %116 = fpext <2 x float> %115 to <2 x double>
  %117 = fmul <2 x double> %116, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %118 = fptrunc <2 x double> %117 to <2 x float>
  store <2 x float> %118, ptr %109, align 8, !tbaa !45
  %119 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 7
  %120 = load float, ptr %119, align 8, !tbaa !46
  %121 = call float @llvm.fmuladd.f32(float %104, float %120, float %108)
  %122 = fpext float %121 to double
  %123 = fmul double %122, 0x3EF0001000100010
  %124 = fptrunc double %123 to float
  %125 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 7
  store float %124, ptr %125, align 8, !tbaa !46
  %126 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 8
  %127 = load float, ptr %126, align 4, !tbaa !47
  %128 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 8
  store float %127, ptr %128, align 4, !tbaa !47
  call void @GetMagickPixelPacket(ptr noundef nonnull %52, ptr noundef nonnull %6) #12
  %129 = call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext 125) #13, !range !44
  %130 = xor i16 %129, -1
  %131 = uitofp i16 %130 to float
  %132 = zext i16 %129 to i32
  %133 = mul nuw nsw i32 %132, 65535
  %134 = sitofp i32 %133 to float
  %135 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 5
  %136 = load <2 x float>, ptr %105, align 8, !tbaa !45
  %137 = insertelement <2 x float> poison, float %131, i64 0
  %138 = shufflevector <2 x float> %137, <2 x float> poison, <2 x i32> zeroinitializer
  %139 = insertelement <2 x float> poison, float %134, i64 0
  %140 = shufflevector <2 x float> %139, <2 x float> poison, <2 x i32> zeroinitializer
  %141 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %138, <2 x float> %136, <2 x float> %140)
  %142 = fpext <2 x float> %141 to <2 x double>
  %143 = fmul <2 x double> %142, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %144 = fptrunc <2 x double> %143 to <2 x float>
  store <2 x float> %144, ptr %135, align 8, !tbaa !45
  %145 = load float, ptr %119, align 8, !tbaa !46
  %146 = call float @llvm.fmuladd.f32(float %131, float %145, float %134)
  %147 = fpext float %146 to double
  %148 = fmul double %147, 0x3EF0001000100010
  %149 = fptrunc double %148 to float
  %150 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 7
  store float %149, ptr %150, align 8, !tbaa !46
  %151 = load float, ptr %126, align 4, !tbaa !47
  %152 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 8
  store float %151, ptr %152, align 4, !tbaa !47
  call void @GetMagickPixelPacket(ptr noundef nonnull %52, ptr noundef nonnull %9) #12
  %153 = call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext -121) #13, !range !44
  %154 = uitofp i16 %153 to double
  %155 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 5
  %156 = load <2 x float>, ptr %105, align 8, !tbaa !45
  %157 = fpext <2 x float> %156 to <2 x double>
  %158 = fmul <2 x double> %157, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %159 = insertelement <2 x double> poison, double %154, i64 0
  %160 = shufflevector <2 x double> %159, <2 x double> poison, <2 x i32> zeroinitializer
  %161 = fmul <2 x double> %158, %160
  %162 = fptrunc <2 x double> %161 to <2 x float>
  store <2 x float> %162, ptr %155, align 8, !tbaa !45
  %163 = load float, ptr %119, align 8, !tbaa !46
  %164 = fpext float %163 to double
  %165 = fmul double %164, 0x3EF0001000100010
  %166 = fmul double %165, %154
  %167 = fptrunc double %166 to float
  %168 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 7
  store float %167, ptr %168, align 8, !tbaa !46
  %169 = load float, ptr %126, align 4, !tbaa !47
  %170 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 8
  store float %169, ptr %170, align 4, !tbaa !47
  call void @GetMagickPixelPacket(ptr noundef nonnull %52, ptr noundef nonnull %10) #12
  %171 = call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext 110) #13, !range !44
  %172 = uitofp i16 %171 to double
  %173 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 5
  %174 = load <2 x float>, ptr %105, align 8, !tbaa !45
  %175 = fpext <2 x float> %174 to <2 x double>
  %176 = fmul <2 x double> %175, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %177 = insertelement <2 x double> poison, double %172, i64 0
  %178 = shufflevector <2 x double> %177, <2 x double> poison, <2 x i32> zeroinitializer
  %179 = fmul <2 x double> %176, %178
  %180 = fptrunc <2 x double> %179 to <2 x float>
  store <2 x float> %180, ptr %173, align 8, !tbaa !45
  %181 = load float, ptr %119, align 8, !tbaa !46
  %182 = fpext float %181 to double
  %183 = fmul double %182, 0x3EF0001000100010
  %184 = fmul double %183, %172
  %185 = fptrunc double %184 to float
  %186 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 7
  store float %185, ptr %186, align 8, !tbaa !46
  %187 = load float, ptr %126, align 4, !tbaa !47
  %188 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 8
  store float %187, ptr %188, align 4, !tbaa !47
  %189 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %190 = load i32, ptr %189, align 4, !tbaa !35
  %191 = icmp eq i32 %190, 12
  br i1 %191, label %192, label %193

192:                                              ; preds = %97
  call fastcc void @ConvertRGBToCMYK(ptr noundef nonnull %7) #13
  call fastcc void @ConvertRGBToCMYK(ptr noundef nonnull %8) #13
  call fastcc void @ConvertRGBToCMYK(ptr noundef nonnull %5) #13
  call fastcc void @ConvertRGBToCMYK(ptr noundef nonnull %4) #13
  call fastcc void @ConvertRGBToCMYK(ptr noundef nonnull %6) #13
  call fastcc void @ConvertRGBToCMYK(ptr noundef nonnull %9) #13
  call fastcc void @ConvertRGBToCMYK(ptr noundef nonnull %10) #13
  br label %193

193:                                              ; preds = %192, %97
  %194 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %2) #12
  %195 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %52, ptr noundef %2) #12
  %196 = load i64, ptr %18, align 8, !tbaa !25
  %197 = load i64, ptr %37, align 8, !tbaa !32
  %198 = load i64, ptr %22, align 8, !tbaa !27
  %199 = sub i64 %196, %29
  %200 = add i64 %199, %197
  %201 = add i64 %200, %198
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %443, label %203

203:                                              ; preds = %193
  %204 = getelementptr inbounds %struct._Image, ptr %52, i64 0, i32 7
  %205 = load i64, ptr %204, align 8, !tbaa !31
  %206 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %195, i64 noundef 0, i64 noundef 0, i64 noundef %205, i64 noundef %201, ptr noundef %2) #14
  %207 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %195) #12
  %208 = icmp eq ptr %206, null
  br i1 %208, label %443, label %209

209:                                              ; preds = %203
  %210 = load i64, ptr %18, align 8, !tbaa !25
  %211 = icmp sgt i64 %210, 0
  br i1 %211, label %212, label %221

212:                                              ; preds = %209
  %213 = load i64, ptr %204, align 8, !tbaa !31
  br label %214

214:                                              ; preds = %212, %255
  %215 = phi i64 [ %256, %255 ], [ %213, %212 ]
  %216 = phi ptr [ %258, %255 ], [ %206, %212 ]
  %217 = phi ptr [ %257, %255 ], [ %207, %212 ]
  %218 = phi i64 [ %259, %255 ], [ 0, %212 ]
  %219 = sub i64 %215, %218
  %220 = icmp sgt i64 %219, 0
  br i1 %220, label %234, label %228

221:                                              ; preds = %255, %209
  %222 = phi i64 [ %210, %209 ], [ %260, %255 ]
  %223 = phi ptr [ %207, %209 ], [ %257, %255 ]
  %224 = phi ptr [ %206, %209 ], [ %258, %255 ]
  %225 = load i64, ptr %37, align 8, !tbaa !32
  %226 = sub i64 %225, %29
  %227 = icmp sgt i64 %226, 0
  br i1 %227, label %262, label %268

228:                                              ; preds = %234, %214
  %229 = phi i64 [ %215, %214 ], [ %243, %234 ]
  %230 = phi ptr [ %217, %214 ], [ %241, %234 ]
  %231 = phi i64 [ 0, %214 ], [ %242, %234 ]
  %232 = phi ptr [ %216, %214 ], [ %240, %234 ]
  %233 = icmp slt i64 %231, %229
  br i1 %233, label %246, label %255

234:                                              ; preds = %214, %234
  %235 = phi ptr [ %240, %234 ], [ %216, %214 ]
  %236 = phi i64 [ %242, %234 ], [ 0, %214 ]
  %237 = phi ptr [ %241, %234 ], [ %217, %214 ]
  %238 = icmp ult i64 %236, %218
  %239 = select i1 %238, ptr %6, ptr %4
  call fastcc void @SetPixelPacket(ptr noundef nonnull %52, ptr noundef nonnull %239, ptr noundef %235, ptr noundef %237) #13
  %240 = getelementptr inbounds %struct._PixelPacket, ptr %235, i64 1
  %241 = getelementptr inbounds i16, ptr %237, i64 1
  %242 = add nuw nsw i64 %236, 1
  %243 = load i64, ptr %204, align 8, !tbaa !31
  %244 = sub i64 %243, %218
  %245 = icmp slt i64 %242, %244
  br i1 %245, label %234, label %228, !llvm.loop !48

246:                                              ; preds = %228, %246
  %247 = phi ptr [ %250, %246 ], [ %232, %228 ]
  %248 = phi i64 [ %252, %246 ], [ %231, %228 ]
  %249 = phi ptr [ %251, %246 ], [ %230, %228 ]
  call fastcc void @SetPixelPacket(ptr noundef nonnull %52, ptr noundef nonnull %9, ptr noundef %247, ptr noundef %249) #13
  %250 = getelementptr inbounds %struct._PixelPacket, ptr %247, i64 1
  %251 = getelementptr inbounds i16, ptr %249, i64 1
  %252 = add nuw nsw i64 %248, 1
  %253 = load i64, ptr %204, align 8, !tbaa !31
  %254 = icmp slt i64 %252, %253
  br i1 %254, label %246, label %255, !llvm.loop !50

255:                                              ; preds = %246, %228
  %256 = phi i64 [ %229, %228 ], [ %253, %246 ]
  %257 = phi ptr [ %230, %228 ], [ %251, %246 ]
  %258 = phi ptr [ %232, %228 ], [ %250, %246 ]
  %259 = add nuw nsw i64 %218, 1
  %260 = load i64, ptr %18, align 8, !tbaa !25
  %261 = icmp slt i64 %259, %260
  br i1 %261, label %214, label %221, !llvm.loop !51

262:                                              ; preds = %221, %315
  %263 = phi i64 [ %316, %315 ], [ %222, %221 ]
  %264 = phi ptr [ %318, %315 ], [ %224, %221 ]
  %265 = phi ptr [ %317, %315 ], [ %223, %221 ]
  %266 = phi i64 [ %319, %315 ], [ 0, %221 ]
  %267 = icmp sgt i64 %263, 0
  br i1 %267, label %274, label %283

268:                                              ; preds = %315, %221
  %269 = phi i64 [ %222, %221 ], [ %316, %315 ]
  %270 = phi ptr [ %223, %221 ], [ %317, %315 ]
  %271 = phi ptr [ %224, %221 ], [ %318, %315 ]
  %272 = load i64, ptr %22, align 8, !tbaa !27
  %273 = icmp sgt i64 %272, 0
  br i1 %273, label %323, label %441

274:                                              ; preds = %262, %274
  %275 = phi ptr [ %278, %274 ], [ %264, %262 ]
  %276 = phi i64 [ %280, %274 ], [ 0, %262 ]
  %277 = phi ptr [ %279, %274 ], [ %265, %262 ]
  call fastcc void @SetPixelPacket(ptr noundef %52, ptr noundef nonnull %6, ptr noundef %275, ptr noundef %277) #13
  %278 = getelementptr inbounds %struct._PixelPacket, ptr %275, i64 1
  %279 = getelementptr inbounds i16, ptr %277, i64 1
  %280 = add nuw nsw i64 %276, 1
  %281 = load i64, ptr %18, align 8, !tbaa !25
  %282 = icmp slt i64 %280, %281
  br i1 %282, label %274, label %283, !llvm.loop !52

283:                                              ; preds = %274, %262
  %284 = phi i64 [ %263, %262 ], [ %281, %274 ]
  %285 = phi ptr [ %265, %262 ], [ %279, %274 ]
  %286 = phi ptr [ %264, %262 ], [ %278, %274 ]
  %287 = load i64, ptr %204, align 8, !tbaa !31
  %288 = shl nsw i64 %284, 1
  %289 = sub i64 %287, %288
  %290 = icmp sgt i64 %289, 0
  br i1 %290, label %298, label %293

291:                                              ; preds = %298
  %292 = load i64, ptr %18, align 8, !tbaa !25
  br label %293

293:                                              ; preds = %291, %283
  %294 = phi i64 [ %284, %283 ], [ %292, %291 ]
  %295 = phi ptr [ %285, %283 ], [ %303, %291 ]
  %296 = phi ptr [ %286, %283 ], [ %302, %291 ]
  %297 = icmp sgt i64 %294, 0
  br i1 %297, label %306, label %315

298:                                              ; preds = %283, %298
  %299 = phi ptr [ %302, %298 ], [ %286, %283 ]
  %300 = phi i64 [ %304, %298 ], [ 0, %283 ]
  %301 = phi ptr [ %303, %298 ], [ %285, %283 ]
  call fastcc void @SetPixelPacket(ptr noundef %52, ptr noundef nonnull %8, ptr noundef %299, ptr noundef %301) #13
  %302 = getelementptr inbounds %struct._PixelPacket, ptr %299, i64 1
  %303 = getelementptr inbounds i16, ptr %301, i64 1
  %304 = add nuw nsw i64 %300, 1
  %305 = icmp eq i64 %304, %289
  br i1 %305, label %291, label %298, !llvm.loop !53

306:                                              ; preds = %293, %306
  %307 = phi ptr [ %310, %306 ], [ %296, %293 ]
  %308 = phi i64 [ %312, %306 ], [ 0, %293 ]
  %309 = phi ptr [ %311, %306 ], [ %295, %293 ]
  call fastcc void @SetPixelPacket(ptr noundef %52, ptr noundef nonnull %9, ptr noundef %307, ptr noundef %309) #13
  %310 = getelementptr inbounds %struct._PixelPacket, ptr %307, i64 1
  %311 = getelementptr inbounds i16, ptr %309, i64 1
  %312 = add nuw nsw i64 %308, 1
  %313 = load i64, ptr %18, align 8, !tbaa !25
  %314 = icmp slt i64 %312, %313
  br i1 %314, label %306, label %315, !llvm.loop !54

315:                                              ; preds = %306, %293
  %316 = phi i64 [ %294, %293 ], [ %313, %306 ]
  %317 = phi ptr [ %295, %293 ], [ %311, %306 ]
  %318 = phi ptr [ %296, %293 ], [ %310, %306 ]
  %319 = add nuw nsw i64 %266, 1
  %320 = load i64, ptr %37, align 8, !tbaa !32
  %321 = sub i64 %320, %29
  %322 = icmp slt i64 %319, %321
  br i1 %322, label %262, label %268, !llvm.loop !55

323:                                              ; preds = %268, %433
  %324 = phi i64 [ %434, %433 ], [ %269, %268 ]
  %325 = phi i64 [ %440, %433 ], [ 0, %268 ]
  %326 = phi ptr [ %436, %433 ], [ %271, %268 ]
  %327 = phi ptr [ %435, %433 ], [ %270, %268 ]
  %328 = phi i64 [ %437, %433 ], [ 0, %268 ]
  %329 = icmp sgt i64 %324, 0
  br i1 %329, label %336, label %330

330:                                              ; preds = %336, %323
  %331 = phi ptr [ %327, %323 ], [ %341, %336 ]
  %332 = phi ptr [ %326, %323 ], [ %340, %336 ]
  %333 = load i64, ptr %31, align 8, !tbaa !29
  %334 = sub i64 %333, %29
  %335 = icmp sgt i64 %334, 0
  br i1 %335, label %345, label %355

336:                                              ; preds = %323, %336
  %337 = phi ptr [ %340, %336 ], [ %326, %323 ]
  %338 = phi i64 [ %342, %336 ], [ 0, %323 ]
  %339 = phi ptr [ %341, %336 ], [ %327, %323 ]
  call fastcc void @SetPixelPacket(ptr noundef %52, ptr noundef nonnull %6, ptr noundef %337, ptr noundef %339) #13
  %340 = getelementptr inbounds %struct._PixelPacket, ptr %337, i64 1
  %341 = getelementptr inbounds i16, ptr %339, i64 1
  %342 = add nuw nsw i64 %338, 1
  %343 = load i64, ptr %18, align 8, !tbaa !25
  %344 = icmp slt i64 %342, %343
  br i1 %344, label %336, label %330, !llvm.loop !56

345:                                              ; preds = %330, %345
  %346 = phi ptr [ %349, %345 ], [ %332, %330 ]
  %347 = phi i64 [ %351, %345 ], [ 0, %330 ]
  %348 = phi ptr [ %350, %345 ], [ %331, %330 ]
  call fastcc void @SetPixelPacket(ptr noundef %52, ptr noundef nonnull %8, ptr noundef %346, ptr noundef %348) #13
  %349 = getelementptr inbounds %struct._PixelPacket, ptr %346, i64 1
  %350 = getelementptr inbounds i16, ptr %348, i64 1
  %351 = add nuw nsw i64 %347, 1
  %352 = load i64, ptr %31, align 8, !tbaa !29
  %353 = sub i64 %352, %29
  %354 = icmp slt i64 %351, %353
  br i1 %354, label %345, label %355, !llvm.loop !57

355:                                              ; preds = %345, %330
  %356 = phi ptr [ %331, %330 ], [ %350, %345 ]
  %357 = phi ptr [ %332, %330 ], [ %349, %345 ]
  %358 = load i64, ptr %38, align 8, !tbaa !31
  %359 = load i64, ptr %22, align 8, !tbaa !27
  %360 = shl i64 %359, 1
  %361 = sub i64 %358, %328
  %362 = add i64 %361, %360
  %363 = icmp sgt i64 %362, 0
  br i1 %363, label %364, label %371

364:                                              ; preds = %355
  %365 = add i64 %358, %325
  br label %379

366:                                              ; preds = %379
  %367 = add i64 %365, %360
  %368 = load i64, ptr %38, align 8, !tbaa !31
  %369 = load i64, ptr %22, align 8, !tbaa !27
  %370 = shl nsw i64 %369, 1
  br label %371

371:                                              ; preds = %366, %355
  %372 = phi i64 [ %370, %366 ], [ %360, %355 ]
  %373 = phi i64 [ %368, %366 ], [ %358, %355 ]
  %374 = phi ptr [ %386, %366 ], [ %356, %355 ]
  %375 = phi i64 [ %367, %366 ], [ 0, %355 ]
  %376 = phi ptr [ %385, %366 ], [ %357, %355 ]
  %377 = add i64 %372, %373
  %378 = icmp slt i64 %375, %377
  br i1 %378, label %389, label %401

379:                                              ; preds = %364, %379
  %380 = phi ptr [ %385, %379 ], [ %357, %364 ]
  %381 = phi i64 [ %387, %379 ], [ 0, %364 ]
  %382 = phi ptr [ %386, %379 ], [ %356, %364 ]
  %383 = icmp ult i64 %381, %328
  %384 = select i1 %383, ptr %9, ptr %10
  call fastcc void @SetPixelPacket(ptr noundef %52, ptr noundef nonnull %384, ptr noundef %380, ptr noundef %382) #13
  %385 = getelementptr inbounds %struct._PixelPacket, ptr %380, i64 1
  %386 = getelementptr inbounds i16, ptr %382, i64 1
  %387 = add nuw nsw i64 %381, 1
  %388 = icmp slt i64 %387, %362
  br i1 %388, label %379, label %366, !llvm.loop !58

389:                                              ; preds = %371, %389
  %390 = phi ptr [ %393, %389 ], [ %376, %371 ]
  %391 = phi i64 [ %395, %389 ], [ %375, %371 ]
  %392 = phi ptr [ %394, %389 ], [ %374, %371 ]
  call fastcc void @SetPixelPacket(ptr noundef %52, ptr noundef nonnull %6, ptr noundef %390, ptr noundef %392) #13
  %393 = getelementptr inbounds %struct._PixelPacket, ptr %390, i64 1
  %394 = getelementptr inbounds i16, ptr %392, i64 1
  %395 = add nuw nsw i64 %391, 1
  %396 = load i64, ptr %38, align 8, !tbaa !31
  %397 = load i64, ptr %22, align 8, !tbaa !27
  %398 = shl nsw i64 %397, 1
  %399 = add i64 %398, %396
  %400 = icmp slt i64 %395, %399
  br i1 %400, label %389, label %401, !llvm.loop !59

401:                                              ; preds = %389, %371
  %402 = phi ptr [ %374, %371 ], [ %394, %389 ]
  %403 = phi ptr [ %376, %371 ], [ %393, %389 ]
  %404 = phi i64 [ %373, %371 ], [ %396, %389 ]
  %405 = load i64, ptr %1, align 8, !tbaa !28
  %406 = load i64, ptr %31, align 8, !tbaa !29
  %407 = add i64 %404, %29
  %408 = add i64 %407, %406
  %409 = sub i64 %405, %408
  %410 = icmp sgt i64 %409, 0
  br i1 %410, label %416, label %411

411:                                              ; preds = %416, %401
  %412 = phi ptr [ %402, %401 ], [ %421, %416 ]
  %413 = phi ptr [ %403, %401 ], [ %420, %416 ]
  %414 = load i64, ptr %18, align 8, !tbaa !25
  %415 = icmp sgt i64 %414, 0
  br i1 %415, label %424, label %433

416:                                              ; preds = %401, %416
  %417 = phi ptr [ %420, %416 ], [ %403, %401 ]
  %418 = phi i64 [ %422, %416 ], [ 0, %401 ]
  %419 = phi ptr [ %421, %416 ], [ %402, %401 ]
  call fastcc void @SetPixelPacket(ptr noundef %52, ptr noundef nonnull %8, ptr noundef %417, ptr noundef %419) #13
  %420 = getelementptr inbounds %struct._PixelPacket, ptr %417, i64 1
  %421 = getelementptr inbounds i16, ptr %419, i64 1
  %422 = add nuw nsw i64 %418, 1
  %423 = icmp eq i64 %422, %409
  br i1 %423, label %411, label %416, !llvm.loop !60

424:                                              ; preds = %411, %424
  %425 = phi ptr [ %428, %424 ], [ %413, %411 ]
  %426 = phi i64 [ %430, %424 ], [ 0, %411 ]
  %427 = phi ptr [ %429, %424 ], [ %412, %411 ]
  call fastcc void @SetPixelPacket(ptr noundef %52, ptr noundef nonnull %9, ptr noundef %425, ptr noundef %427) #13
  %428 = getelementptr inbounds %struct._PixelPacket, ptr %425, i64 1
  %429 = getelementptr inbounds i16, ptr %427, i64 1
  %430 = add nuw nsw i64 %426, 1
  %431 = load i64, ptr %18, align 8, !tbaa !25
  %432 = icmp slt i64 %430, %431
  br i1 %432, label %424, label %433, !llvm.loop !61

433:                                              ; preds = %424, %411
  %434 = phi i64 [ %414, %411 ], [ %431, %424 ]
  %435 = phi ptr [ %412, %411 ], [ %429, %424 ]
  %436 = phi ptr [ %413, %411 ], [ %428, %424 ]
  %437 = add nuw nsw i64 %328, 1
  %438 = load i64, ptr %22, align 8, !tbaa !27
  %439 = icmp slt i64 %437, %438
  %440 = add nsw i64 %325, -1
  br i1 %439, label %323, label %441, !llvm.loop !62

441:                                              ; preds = %433, %268
  %442 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %195, ptr noundef %2) #14
  br label %443

443:                                              ; preds = %203, %441, %193
  %444 = load i64, ptr %45, align 8, !tbaa !33
  %445 = icmp sgt i64 %444, 0
  br i1 %445, label %446, label %620

446:                                              ; preds = %443
  %447 = getelementptr inbounds %struct._Image, ptr %52, i64 0, i32 7
  %448 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 36
  %449 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %450 = getelementptr inbounds %struct._Image, ptr %52, i64 0, i32 1
  %451 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %452

452:                                              ; preds = %446, %612
  %453 = phi i64 [ 0, %446 ], [ %615, %612 ]
  %454 = phi i32 [ 1, %446 ], [ %614, %612 ]
  %455 = phi i64 [ 0, %446 ], [ %613, %612 ]
  %456 = icmp eq i32 %454, 0
  br i1 %456, label %612, label %457

457:                                              ; preds = %452
  %458 = load i64, ptr %37, align 8, !tbaa !32
  %459 = add nsw i64 %458, %453
  %460 = load i64, ptr %447, align 8, !tbaa !31
  %461 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %195, i64 noundef 0, i64 noundef %459, i64 noundef %460, i64 noundef 1, ptr noundef %2) #14
  %462 = icmp eq ptr %461, null
  br i1 %462, label %612, label %463

463:                                              ; preds = %457
  %464 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %195) #12
  %465 = load i64, ptr %18, align 8, !tbaa !25
  %466 = icmp sgt i64 %465, 0
  br i1 %466, label %473, label %467

467:                                              ; preds = %473, %463
  %468 = phi ptr [ %464, %463 ], [ %478, %473 ]
  %469 = phi ptr [ %461, %463 ], [ %477, %473 ]
  %470 = load i64, ptr %31, align 8, !tbaa !29
  %471 = sub i64 %470, %29
  %472 = icmp sgt i64 %471, 0
  br i1 %472, label %487, label %482

473:                                              ; preds = %463, %473
  %474 = phi ptr [ %477, %473 ], [ %461, %463 ]
  %475 = phi i64 [ %479, %473 ], [ 0, %463 ]
  %476 = phi ptr [ %478, %473 ], [ %464, %463 ]
  call fastcc void @SetPixelPacket(ptr noundef %52, ptr noundef nonnull %6, ptr noundef nonnull %474, ptr noundef %476) #13
  %477 = getelementptr inbounds %struct._PixelPacket, ptr %474, i64 1
  %478 = getelementptr inbounds i16, ptr %476, i64 1
  %479 = add nuw nsw i64 %475, 1
  %480 = load i64, ptr %18, align 8, !tbaa !25
  %481 = icmp slt i64 %479, %480
  br i1 %481, label %473, label %467, !llvm.loop !63

482:                                              ; preds = %487, %467
  %483 = phi ptr [ %468, %467 ], [ %492, %487 ]
  %484 = phi ptr [ %469, %467 ], [ %491, %487 ]
  %485 = load i64, ptr %22, align 8, !tbaa !27
  %486 = icmp sgt i64 %485, 0
  br i1 %486, label %497, label %506

487:                                              ; preds = %467, %487
  %488 = phi ptr [ %491, %487 ], [ %469, %467 ]
  %489 = phi i64 [ %493, %487 ], [ 0, %467 ]
  %490 = phi ptr [ %492, %487 ], [ %468, %467 ]
  call fastcc void @SetPixelPacket(ptr noundef %52, ptr noundef nonnull %8, ptr noundef nonnull %488, ptr noundef %490) #13
  %491 = getelementptr inbounds %struct._PixelPacket, ptr %488, i64 1
  %492 = getelementptr inbounds i16, ptr %490, i64 1
  %493 = add nuw nsw i64 %489, 1
  %494 = load i64, ptr %31, align 8, !tbaa !29
  %495 = sub i64 %494, %29
  %496 = icmp slt i64 %493, %495
  br i1 %496, label %487, label %482, !llvm.loop !64

497:                                              ; preds = %482, %497
  %498 = phi ptr [ %501, %497 ], [ %484, %482 ]
  %499 = phi i64 [ %503, %497 ], [ 0, %482 ]
  %500 = phi ptr [ %502, %497 ], [ %483, %482 ]
  call fastcc void @SetPixelPacket(ptr noundef %52, ptr noundef nonnull %9, ptr noundef nonnull %498, ptr noundef %500) #13
  %501 = getelementptr inbounds %struct._PixelPacket, ptr %498, i64 1
  %502 = getelementptr inbounds i16, ptr %500, i64 1
  %503 = add nuw nsw i64 %499, 1
  %504 = load i64, ptr %22, align 8, !tbaa !27
  %505 = icmp slt i64 %503, %504
  br i1 %505, label %497, label %506, !llvm.loop !65

506:                                              ; preds = %497, %482
  %507 = phi ptr [ %483, %482 ], [ %502, %497 ]
  %508 = phi ptr [ %484, %482 ], [ %501, %497 ]
  %509 = load i32, ptr %448, align 8, !tbaa !66
  switch i32 %509, label %513 [
    i32 13, label %525
    i32 40, label %510
  ]

510:                                              ; preds = %506
  %511 = load i32, ptr %449, align 8, !tbaa !37
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %525, label %513

513:                                              ; preds = %506, %510
  %514 = load i64, ptr %38, align 8, !tbaa !31
  %515 = icmp sgt i64 %514, 0
  br i1 %515, label %516, label %551

516:                                              ; preds = %513, %516
  %517 = phi ptr [ %520, %516 ], [ %508, %513 ]
  %518 = phi i64 [ %522, %516 ], [ 0, %513 ]
  %519 = phi ptr [ %521, %516 ], [ %507, %513 ]
  call fastcc void @SetPixelPacket(ptr noundef %52, ptr noundef nonnull %7, ptr noundef nonnull %517, ptr noundef %519) #13
  %520 = getelementptr inbounds %struct._PixelPacket, ptr %517, i64 1
  %521 = getelementptr inbounds i16, ptr %519, i64 1
  %522 = add nuw nsw i64 %518, 1
  %523 = load i64, ptr %38, align 8, !tbaa !31
  %524 = icmp slt i64 %522, %523
  br i1 %524, label %516, label %551, !llvm.loop !67

525:                                              ; preds = %506, %510
  %526 = load i64, ptr %38, align 8, !tbaa !31
  %527 = call ptr @GetCacheViewVirtualPixels(ptr noundef %194, i64 noundef 0, i64 noundef %453, i64 noundef %526, i64 noundef 1, ptr noundef %2) #14
  %528 = icmp eq ptr %527, null
  br i1 %528, label %612, label %529

529:                                              ; preds = %525
  %530 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %194) #12
  %531 = load i64, ptr %38, align 8, !tbaa !31
  %532 = shl i64 %531, 3
  %533 = call ptr @CopyMagickMemory(ptr noundef nonnull %508, ptr noundef nonnull %527, i64 noundef %532) #12
  %534 = load i32, ptr %189, align 4, !tbaa !35
  %535 = icmp eq i32 %534, 12
  br i1 %535, label %538, label %536

536:                                              ; preds = %529
  %537 = load i64, ptr %38, align 8, !tbaa !31
  br label %547

538:                                              ; preds = %529
  %539 = load i32, ptr %450, align 4, !tbaa !35
  %540 = icmp eq i32 %539, 12
  %541 = load i64, ptr %38, align 8, !tbaa !31
  br i1 %540, label %542, label %547

542:                                              ; preds = %538
  %543 = shl i64 %541, 1
  %544 = call ptr @CopyMagickMemory(ptr noundef %507, ptr noundef %530, i64 noundef %543) #12
  %545 = load i64, ptr %38, align 8, !tbaa !31
  %546 = getelementptr inbounds i16, ptr %507, i64 %545
  br label %547

547:                                              ; preds = %536, %538, %542
  %548 = phi i64 [ %545, %542 ], [ %541, %538 ], [ %537, %536 ]
  %549 = phi ptr [ %546, %542 ], [ %507, %538 ], [ %507, %536 ]
  %550 = getelementptr inbounds %struct._PixelPacket, ptr %508, i64 %548
  br label %551

551:                                              ; preds = %516, %513, %547
  %552 = phi i64 [ %548, %547 ], [ %514, %513 ], [ %523, %516 ]
  %553 = phi ptr [ %549, %547 ], [ %507, %513 ], [ %521, %516 ]
  %554 = phi ptr [ %550, %547 ], [ %508, %513 ], [ %520, %516 ]
  %555 = load i64, ptr %22, align 8, !tbaa !27
  %556 = icmp sgt i64 %555, 0
  br i1 %556, label %557, label %568

557:                                              ; preds = %551, %557
  %558 = phi ptr [ %561, %557 ], [ %554, %551 ]
  %559 = phi i64 [ %563, %557 ], [ 0, %551 ]
  %560 = phi ptr [ %562, %557 ], [ %553, %551 ]
  call fastcc void @SetPixelPacket(ptr noundef %52, ptr noundef nonnull %6, ptr noundef %558, ptr noundef %560) #13
  %561 = getelementptr inbounds %struct._PixelPacket, ptr %558, i64 1
  %562 = getelementptr inbounds i16, ptr %560, i64 1
  %563 = add nuw nsw i64 %559, 1
  %564 = load i64, ptr %22, align 8, !tbaa !27
  %565 = icmp slt i64 %563, %564
  br i1 %565, label %557, label %566, !llvm.loop !68

566:                                              ; preds = %557
  %567 = load i64, ptr %38, align 8, !tbaa !31
  br label %568

568:                                              ; preds = %566, %551
  %569 = phi i64 [ %552, %551 ], [ %567, %566 ]
  %570 = phi ptr [ %553, %551 ], [ %562, %566 ]
  %571 = phi ptr [ %554, %551 ], [ %561, %566 ]
  %572 = load i64, ptr %1, align 8, !tbaa !28
  %573 = load i64, ptr %31, align 8, !tbaa !29
  %574 = add i64 %29, %573
  %575 = add i64 %574, %569
  %576 = sub i64 %572, %575
  %577 = icmp sgt i64 %576, 0
  br i1 %577, label %583, label %578

578:                                              ; preds = %583, %568
  %579 = phi ptr [ %570, %568 ], [ %588, %583 ]
  %580 = phi ptr [ %571, %568 ], [ %587, %583 ]
  %581 = load i64, ptr %18, align 8, !tbaa !25
  %582 = icmp sgt i64 %581, 0
  br i1 %582, label %591, label %600

583:                                              ; preds = %568, %583
  %584 = phi ptr [ %587, %583 ], [ %571, %568 ]
  %585 = phi i64 [ %589, %583 ], [ 0, %568 ]
  %586 = phi ptr [ %588, %583 ], [ %570, %568 ]
  call fastcc void @SetPixelPacket(ptr noundef %52, ptr noundef nonnull %8, ptr noundef %584, ptr noundef %586) #13
  %587 = getelementptr inbounds %struct._PixelPacket, ptr %584, i64 1
  %588 = getelementptr inbounds i16, ptr %586, i64 1
  %589 = add nuw nsw i64 %585, 1
  %590 = icmp eq i64 %589, %576
  br i1 %590, label %578, label %583, !llvm.loop !69

591:                                              ; preds = %578, %591
  %592 = phi ptr [ %595, %591 ], [ %580, %578 ]
  %593 = phi i64 [ %597, %591 ], [ 0, %578 ]
  %594 = phi ptr [ %596, %591 ], [ %579, %578 ]
  call fastcc void @SetPixelPacket(ptr noundef %52, ptr noundef nonnull %9, ptr noundef %592, ptr noundef %594) #13
  %595 = getelementptr inbounds %struct._PixelPacket, ptr %592, i64 1
  %596 = getelementptr inbounds i16, ptr %594, i64 1
  %597 = add nuw nsw i64 %593, 1
  %598 = load i64, ptr %18, align 8, !tbaa !25
  %599 = icmp slt i64 %597, %598
  br i1 %599, label %591, label %600, !llvm.loop !70

600:                                              ; preds = %591, %578
  %601 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %195, ptr noundef %2) #14
  %602 = icmp ne i32 %601, 0
  %603 = zext i1 %602 to i32
  %604 = load ptr, ptr %451, align 8, !tbaa !71
  %605 = icmp eq ptr %604, null
  br i1 %605, label %612, label %606

606:                                              ; preds = %600
  %607 = add nsw i64 %455, 1
  %608 = load i64, ptr %45, align 8, !tbaa !33
  %609 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, i64 noundef %455, i64 noundef %608) #13
  %610 = icmp eq i32 %609, 0
  %611 = select i1 %610, i32 0, i32 %603
  br label %612

612:                                              ; preds = %525, %600, %606, %457, %452
  %613 = phi i64 [ %455, %452 ], [ %455, %457 ], [ %607, %606 ], [ %455, %600 ], [ %455, %525 ]
  %614 = phi i32 [ 0, %452 ], [ 0, %457 ], [ %611, %606 ], [ %603, %600 ], [ 0, %525 ]
  %615 = add nuw nsw i64 %453, 1
  %616 = load i64, ptr %45, align 8, !tbaa !33
  %617 = icmp slt i64 %615, %616
  br i1 %617, label %452, label %618, !llvm.loop !72

618:                                              ; preds = %612
  %619 = icmp eq i32 %614, 0
  br label %620

620:                                              ; preds = %618, %443
  %621 = phi i1 [ false, %443 ], [ %619, %618 ]
  %622 = phi i64 [ %444, %443 ], [ %616, %618 ]
  %623 = load i64, ptr %22, align 8, !tbaa !27
  %624 = load i64, ptr %35, align 8, !tbaa !30
  %625 = load i64, ptr %37, align 8, !tbaa !32
  %626 = load i64, ptr %18, align 8, !tbaa !25
  %627 = add i64 %622, %29
  %628 = add i64 %623, %624
  %629 = add i64 %627, %625
  %630 = sub i64 %628, %629
  %631 = add i64 %630, %626
  %632 = icmp eq i64 %631, 0
  br i1 %632, label %862, label %633

633:                                              ; preds = %620
  %634 = getelementptr inbounds %struct._Image, ptr %52, i64 0, i32 8
  %635 = load i64, ptr %634, align 8, !tbaa !33
  %636 = sub i64 %635, %631
  %637 = getelementptr inbounds %struct._Image, ptr %52, i64 0, i32 7
  %638 = load i64, ptr %637, align 8, !tbaa !31
  %639 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %195, i64 noundef 0, i64 noundef %636, i64 noundef %638, i64 noundef %631, ptr noundef %2) #14
  %640 = icmp eq ptr %639, null
  br i1 %640, label %862, label %641

641:                                              ; preds = %633
  %642 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %195) #12
  %643 = load i64, ptr %22, align 8, !tbaa !27
  %644 = icmp sgt i64 %643, 0
  %645 = load i64, ptr %18, align 8, !tbaa !25
  br i1 %644, label %650, label %753

646:                                              ; preds = %744, %731
  %647 = phi i64 [ %734, %731 ], [ %751, %744 ]
  %648 = phi ptr [ %732, %731 ], [ %749, %744 ]
  %649 = phi ptr [ %733, %731 ], [ %748, %744 ]
  br i1 %677, label %650, label %753, !llvm.loop !73

650:                                              ; preds = %641, %646
  %651 = phi i64 [ %647, %646 ], [ %645, %641 ]
  %652 = phi i64 [ %656, %646 ], [ %643, %641 ]
  %653 = phi i64 [ %657, %646 ], [ %643, %641 ]
  %654 = phi ptr [ %649, %646 ], [ %639, %641 ]
  %655 = phi ptr [ %648, %646 ], [ %642, %641 ]
  %656 = add nsw i64 %652, -1
  %657 = add nsw i64 %653, -1
  %658 = icmp sgt i64 %651, 0
  br i1 %658, label %665, label %659

659:                                              ; preds = %665, %650
  %660 = phi ptr [ %655, %650 ], [ %670, %665 ]
  %661 = phi ptr [ %654, %650 ], [ %669, %665 ]
  %662 = load i64, ptr %31, align 8, !tbaa !29
  %663 = sub i64 %662, %29
  %664 = icmp sgt i64 %663, 0
  br i1 %664, label %678, label %674

665:                                              ; preds = %650, %665
  %666 = phi ptr [ %669, %665 ], [ %654, %650 ]
  %667 = phi i64 [ %671, %665 ], [ 0, %650 ]
  %668 = phi ptr [ %670, %665 ], [ %655, %650 ]
  call fastcc void @SetPixelPacket(ptr noundef %52, ptr noundef nonnull %6, ptr noundef %666, ptr noundef %668) #13
  %669 = getelementptr inbounds %struct._PixelPacket, ptr %666, i64 1
  %670 = getelementptr inbounds i16, ptr %668, i64 1
  %671 = add nuw nsw i64 %667, 1
  %672 = load i64, ptr %18, align 8, !tbaa !25
  %673 = icmp slt i64 %671, %672
  br i1 %673, label %665, label %659, !llvm.loop !74

674:                                              ; preds = %678, %659
  %675 = phi ptr [ %660, %659 ], [ %683, %678 ]
  %676 = phi ptr [ %661, %659 ], [ %682, %678 ]
  %677 = icmp sgt i64 %653, 1
  br i1 %677, label %697, label %688

678:                                              ; preds = %659, %678
  %679 = phi ptr [ %682, %678 ], [ %661, %659 ]
  %680 = phi i64 [ %684, %678 ], [ 0, %659 ]
  %681 = phi ptr [ %683, %678 ], [ %660, %659 ]
  call fastcc void @SetPixelPacket(ptr noundef %52, ptr noundef nonnull %8, ptr noundef %679, ptr noundef %681) #13
  %682 = getelementptr inbounds %struct._PixelPacket, ptr %679, i64 1
  %683 = getelementptr inbounds i16, ptr %681, i64 1
  %684 = add nuw nsw i64 %680, 1
  %685 = load i64, ptr %31, align 8, !tbaa !29
  %686 = sub i64 %685, %29
  %687 = icmp slt i64 %684, %686
  br i1 %687, label %678, label %674, !llvm.loop !75

688:                                              ; preds = %697, %674
  %689 = phi ptr [ %675, %674 ], [ %702, %697 ]
  %690 = phi i64 [ 0, %674 ], [ %656, %697 ]
  %691 = phi ptr [ %676, %674 ], [ %701, %697 ]
  %692 = load i64, ptr %38, align 8, !tbaa !31
  %693 = load i64, ptr %22, align 8, !tbaa !27
  %694 = shl nsw i64 %693, 1
  %695 = add i64 %694, %692
  %696 = icmp slt i64 %690, %695
  br i1 %696, label %705, label %721

697:                                              ; preds = %674, %697
  %698 = phi ptr [ %701, %697 ], [ %676, %674 ]
  %699 = phi i64 [ %703, %697 ], [ 0, %674 ]
  %700 = phi ptr [ %702, %697 ], [ %675, %674 ]
  call fastcc void @SetPixelPacket(ptr noundef %52, ptr noundef nonnull %9, ptr noundef %698, ptr noundef %700) #13
  %701 = getelementptr inbounds %struct._PixelPacket, ptr %698, i64 1
  %702 = getelementptr inbounds i16, ptr %700, i64 1
  %703 = add nuw nsw i64 %699, 1
  %704 = icmp slt i64 %703, %657
  br i1 %704, label %697, label %688, !llvm.loop !76

705:                                              ; preds = %688, %705
  %706 = phi i64 [ %719, %705 ], [ %695, %688 ]
  %707 = phi ptr [ %713, %705 ], [ %691, %688 ]
  %708 = phi i64 [ %715, %705 ], [ %690, %688 ]
  %709 = phi ptr [ %714, %705 ], [ %689, %688 ]
  %710 = sub i64 %706, %657
  %711 = icmp slt i64 %708, %710
  %712 = select i1 %711, ptr %4, ptr %6
  call fastcc void @SetPixelPacket(ptr noundef %52, ptr noundef nonnull %712, ptr noundef %707, ptr noundef %709) #13
  %713 = getelementptr inbounds %struct._PixelPacket, ptr %707, i64 1
  %714 = getelementptr inbounds i16, ptr %709, i64 1
  %715 = add nuw nsw i64 %708, 1
  %716 = load i64, ptr %38, align 8, !tbaa !31
  %717 = load i64, ptr %22, align 8, !tbaa !27
  %718 = shl nsw i64 %717, 1
  %719 = add i64 %718, %716
  %720 = icmp slt i64 %715, %719
  br i1 %720, label %705, label %721, !llvm.loop !77

721:                                              ; preds = %705, %688
  %722 = phi ptr [ %689, %688 ], [ %714, %705 ]
  %723 = phi ptr [ %691, %688 ], [ %713, %705 ]
  %724 = phi i64 [ %692, %688 ], [ %716, %705 ]
  %725 = load i64, ptr %1, align 8, !tbaa !28
  %726 = load i64, ptr %31, align 8, !tbaa !29
  %727 = add i64 %724, %29
  %728 = add i64 %727, %726
  %729 = sub i64 %725, %728
  %730 = icmp sgt i64 %729, 0
  br i1 %730, label %736, label %731

731:                                              ; preds = %736, %721
  %732 = phi ptr [ %722, %721 ], [ %741, %736 ]
  %733 = phi ptr [ %723, %721 ], [ %740, %736 ]
  %734 = load i64, ptr %18, align 8, !tbaa !25
  %735 = icmp sgt i64 %734, 0
  br i1 %735, label %744, label %646

736:                                              ; preds = %721, %736
  %737 = phi ptr [ %740, %736 ], [ %723, %721 ]
  %738 = phi i64 [ %742, %736 ], [ 0, %721 ]
  %739 = phi ptr [ %741, %736 ], [ %722, %721 ]
  call fastcc void @SetPixelPacket(ptr noundef %52, ptr noundef nonnull %8, ptr noundef %737, ptr noundef %739) #13
  %740 = getelementptr inbounds %struct._PixelPacket, ptr %737, i64 1
  %741 = getelementptr inbounds i16, ptr %739, i64 1
  %742 = add nuw nsw i64 %738, 1
  %743 = icmp eq i64 %742, %729
  br i1 %743, label %731, label %736, !llvm.loop !78

744:                                              ; preds = %731, %744
  %745 = phi ptr [ %748, %744 ], [ %733, %731 ]
  %746 = phi i64 [ %750, %744 ], [ 0, %731 ]
  %747 = phi ptr [ %749, %744 ], [ %732, %731 ]
  call fastcc void @SetPixelPacket(ptr noundef %52, ptr noundef nonnull %9, ptr noundef %745, ptr noundef %747) #13
  %748 = getelementptr inbounds %struct._PixelPacket, ptr %745, i64 1
  %749 = getelementptr inbounds i16, ptr %747, i64 1
  %750 = add nuw nsw i64 %746, 1
  %751 = load i64, ptr %18, align 8, !tbaa !25
  %752 = icmp slt i64 %750, %751
  br i1 %752, label %744, label %646, !llvm.loop !79

753:                                              ; preds = %646, %641
  %754 = phi i64 [ %645, %641 ], [ %647, %646 ]
  %755 = phi ptr [ %642, %641 ], [ %648, %646 ]
  %756 = phi ptr [ %639, %641 ], [ %649, %646 ]
  %757 = load i64, ptr %35, align 8, !tbaa !30
  %758 = load i64, ptr %37, align 8, !tbaa !32
  %759 = load i64, ptr %45, align 8, !tbaa !33
  %760 = add i64 %29, %758
  %761 = add i64 %760, %759
  %762 = sub i64 %757, %761
  %763 = icmp sgt i64 %762, 0
  br i1 %763, label %764, label %817

764:                                              ; preds = %753, %811
  %765 = phi i64 [ %812, %811 ], [ %754, %753 ]
  %766 = phi ptr [ %814, %811 ], [ %756, %753 ]
  %767 = phi ptr [ %813, %811 ], [ %755, %753 ]
  %768 = phi i64 [ %815, %811 ], [ 0, %753 ]
  %769 = icmp sgt i64 %765, 0
  br i1 %769, label %770, label %779

770:                                              ; preds = %764, %770
  %771 = phi ptr [ %774, %770 ], [ %766, %764 ]
  %772 = phi i64 [ %776, %770 ], [ 0, %764 ]
  %773 = phi ptr [ %775, %770 ], [ %767, %764 ]
  call fastcc void @SetPixelPacket(ptr noundef %52, ptr noundef nonnull %6, ptr noundef %771, ptr noundef %773) #13
  %774 = getelementptr inbounds %struct._PixelPacket, ptr %771, i64 1
  %775 = getelementptr inbounds i16, ptr %773, i64 1
  %776 = add nuw nsw i64 %772, 1
  %777 = load i64, ptr %18, align 8, !tbaa !25
  %778 = icmp slt i64 %776, %777
  br i1 %778, label %770, label %779, !llvm.loop !80

779:                                              ; preds = %770, %764
  %780 = phi i64 [ %765, %764 ], [ %777, %770 ]
  %781 = phi ptr [ %767, %764 ], [ %775, %770 ]
  %782 = phi ptr [ %766, %764 ], [ %774, %770 ]
  %783 = load i64, ptr %637, align 8, !tbaa !31
  %784 = shl nsw i64 %780, 1
  %785 = sub i64 %783, %784
  %786 = icmp sgt i64 %785, 0
  br i1 %786, label %794, label %789

787:                                              ; preds = %794
  %788 = load i64, ptr %18, align 8, !tbaa !25
  br label %789

789:                                              ; preds = %787, %779
  %790 = phi i64 [ %780, %779 ], [ %788, %787 ]
  %791 = phi ptr [ %781, %779 ], [ %799, %787 ]
  %792 = phi ptr [ %782, %779 ], [ %798, %787 ]
  %793 = icmp sgt i64 %790, 0
  br i1 %793, label %802, label %811

794:                                              ; preds = %779, %794
  %795 = phi ptr [ %798, %794 ], [ %782, %779 ]
  %796 = phi i64 [ %800, %794 ], [ 0, %779 ]
  %797 = phi ptr [ %799, %794 ], [ %781, %779 ]
  call fastcc void @SetPixelPacket(ptr noundef %52, ptr noundef nonnull %8, ptr noundef %795, ptr noundef %797) #13
  %798 = getelementptr inbounds %struct._PixelPacket, ptr %795, i64 1
  %799 = getelementptr inbounds i16, ptr %797, i64 1
  %800 = add nuw nsw i64 %796, 1
  %801 = icmp eq i64 %800, %785
  br i1 %801, label %787, label %794, !llvm.loop !81

802:                                              ; preds = %789, %802
  %803 = phi ptr [ %806, %802 ], [ %792, %789 ]
  %804 = phi i64 [ %808, %802 ], [ 0, %789 ]
  %805 = phi ptr [ %807, %802 ], [ %791, %789 ]
  call fastcc void @SetPixelPacket(ptr noundef %52, ptr noundef nonnull %9, ptr noundef %803, ptr noundef %805) #13
  %806 = getelementptr inbounds %struct._PixelPacket, ptr %803, i64 1
  %807 = getelementptr inbounds i16, ptr %805, i64 1
  %808 = add nuw nsw i64 %804, 1
  %809 = load i64, ptr %18, align 8, !tbaa !25
  %810 = icmp slt i64 %808, %809
  br i1 %810, label %802, label %811, !llvm.loop !82

811:                                              ; preds = %802, %789
  %812 = phi i64 [ %790, %789 ], [ %809, %802 ]
  %813 = phi ptr [ %791, %789 ], [ %807, %802 ]
  %814 = phi ptr [ %792, %789 ], [ %806, %802 ]
  %815 = add nuw nsw i64 %768, 1
  %816 = icmp eq i64 %815, %762
  br i1 %816, label %817, label %764, !llvm.loop !83

817:                                              ; preds = %811, %753
  %818 = phi i64 [ %754, %753 ], [ %812, %811 ]
  %819 = phi ptr [ %755, %753 ], [ %813, %811 ]
  %820 = phi ptr [ %756, %753 ], [ %814, %811 ]
  %821 = icmp sgt i64 %818, 0
  br i1 %821, label %825, label %860

822:                                              ; preds = %847, %833
  %823 = phi ptr [ %834, %833 ], [ %856, %847 ]
  %824 = phi ptr [ %836, %833 ], [ %855, %847 ]
  br i1 %832, label %825, label %860, !llvm.loop !84

825:                                              ; preds = %817, %822
  %826 = phi i64 [ %830, %822 ], [ %818, %817 ]
  %827 = phi i64 [ %831, %822 ], [ %818, %817 ]
  %828 = phi ptr [ %824, %822 ], [ %820, %817 ]
  %829 = phi ptr [ %823, %822 ], [ %819, %817 ]
  %830 = add nsw i64 %826, -1
  %831 = add nsw i64 %827, -1
  %832 = icmp ugt i64 %827, 1
  br i1 %832, label %839, label %833

833:                                              ; preds = %839, %825
  %834 = phi ptr [ %829, %825 ], [ %844, %839 ]
  %835 = phi i64 [ 0, %825 ], [ %830, %839 ]
  %836 = phi ptr [ %828, %825 ], [ %843, %839 ]
  %837 = load i64, ptr %637, align 8, !tbaa !31
  %838 = icmp slt i64 %835, %837
  br i1 %838, label %847, label %822

839:                                              ; preds = %825, %839
  %840 = phi ptr [ %843, %839 ], [ %828, %825 ]
  %841 = phi i64 [ %845, %839 ], [ 0, %825 ]
  %842 = phi ptr [ %844, %839 ], [ %829, %825 ]
  call fastcc void @SetPixelPacket(ptr noundef %52, ptr noundef nonnull %6, ptr noundef %840, ptr noundef %842) #13
  %843 = getelementptr inbounds %struct._PixelPacket, ptr %840, i64 1
  %844 = getelementptr inbounds i16, ptr %842, i64 1
  %845 = add nuw nsw i64 %841, 1
  %846 = icmp slt i64 %845, %831
  br i1 %846, label %839, label %833, !llvm.loop !85

847:                                              ; preds = %833, %847
  %848 = phi i64 [ %858, %847 ], [ %837, %833 ]
  %849 = phi ptr [ %855, %847 ], [ %836, %833 ]
  %850 = phi i64 [ %857, %847 ], [ %835, %833 ]
  %851 = phi ptr [ %856, %847 ], [ %834, %833 ]
  %852 = sub i64 %848, %831
  %853 = icmp slt i64 %850, %852
  %854 = select i1 %853, ptr %10, ptr %9
  call fastcc void @SetPixelPacket(ptr noundef nonnull %52, ptr noundef nonnull %854, ptr noundef %849, ptr noundef %851) #13
  %855 = getelementptr inbounds %struct._PixelPacket, ptr %849, i64 1
  %856 = getelementptr inbounds i16, ptr %851, i64 1
  %857 = add nuw nsw i64 %850, 1
  %858 = load i64, ptr %637, align 8, !tbaa !31
  %859 = icmp slt i64 %857, %858
  br i1 %859, label %847, label %822, !llvm.loop !86

860:                                              ; preds = %822, %817
  %861 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %195, ptr noundef %2) #14
  br label %862

862:                                              ; preds = %633, %860, %620
  %863 = call ptr @DestroyCacheView(ptr noundef %195) #12
  %864 = call ptr @DestroyCacheView(ptr noundef %194) #12
  %865 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 36
  %866 = load i32, ptr %865, align 8, !tbaa !66
  switch i32 %866, label %871 [
    i32 13, label %881
    i32 40, label %867
  ]

867:                                              ; preds = %862
  %868 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %869 = load i32, ptr %868, align 8, !tbaa !37
  %870 = icmp eq i32 %869, 0
  br i1 %870, label %881, label %871

871:                                              ; preds = %862, %867
  %872 = load i64, ptr %18, align 8, !tbaa !25
  %873 = load i64, ptr %31, align 8, !tbaa !29
  %874 = load i64, ptr %22, align 8, !tbaa !27
  %875 = add i64 %874, %872
  %876 = sub i64 %875, %29
  %877 = add i64 %876, %873
  %878 = load i64, ptr %37, align 8, !tbaa !32
  %879 = add i64 %876, %878
  %880 = call i32 @CompositeImage(ptr noundef %52, i32 noundef %866, ptr noundef nonnull %0, i64 noundef %877, i64 noundef %879) #12
  br label %881

881:                                              ; preds = %862, %871, %867
  br i1 %621, label %882, label %884

882:                                              ; preds = %881
  %883 = call ptr @DestroyImage(ptr noundef %52) #12
  br label %884

884:                                              ; preds = %881, %882, %51, %57, %48, %25
  %885 = phi ptr [ null, %25 ], [ null, %48 ], [ null, %57 ], [ null, %51 ], [ %883, %882 ], [ %52, %881 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #11
  ret ptr %885
}

; Function Attrs: optsize
declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef i32 @IsPixelGray(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct._PixelPacket, ptr %0, i64 0, i32 1
  %3 = load <2 x i16>, ptr %2, align 2, !tbaa !87
  %4 = uitofp <2 x i16> %3 to <2 x float>
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %6 = fsub <2 x float> %5, %4
  %7 = extractelement <2 x float> %6, i64 0
  %8 = tail call fastcc float @AbsolutePixelValue(float noundef %7) #13
  %9 = fpext float %8 to double
  %10 = fcmp olt double %9, 1.000000e-15
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = extractelement <2 x float> %4, i64 0
  %13 = load i16, ptr %0, align 2, !tbaa !88
  %14 = uitofp i16 %13 to float
  %15 = fsub float %12, %14
  %16 = tail call fastcc float @AbsolutePixelValue(float noundef %15) #13
  %17 = fpext float %16 to double
  %18 = fcmp olt double %17, 1.000000e-15
  br i1 %18, label %20, label %19

19:                                               ; preds = %11, %1
  br label %20

20:                                               ; preds = %11, %19
  %21 = phi i32 [ 0, %19 ], [ 1, %11 ]
  ret i32 %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @IsGrayColorspace(i32 noundef %0) unnamed_addr #5 {
  switch i32 %0, label %2 [
    i32 19, label %3
    i32 17, label %3
    i32 2, label %3
  ]

2:                                                ; preds = %1
  br label %3

3:                                                ; preds = %1, %1, %1, %2
  %4 = phi i32 [ 0, %2 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i32 %4
}

; Function Attrs: optsize
declare i32 @SetImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @SetImageAlphaChannel(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @SetMagickPixelPacket(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %4 = load <4 x i16>, ptr %0, align 2, !tbaa !87
  %5 = uitofp <4 x i16> %4 to <4 x float>
  %6 = shufflevector <4 x float> %5, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  store <4 x float> %6, ptr %3, align 8, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %0) unnamed_addr #5 {
  %2 = zext i8 %0 to i16
  %3 = mul nuw i16 %2, 257
  ret i16 %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ConvertRGBToCMYK(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !41
  %4 = icmp eq i32 %3, 13
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %6 = load float, ptr %5, align 8, !tbaa !89
  br i1 %4, label %20, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %9 = load float, ptr %8, align 4, !tbaa !90
  %10 = insertelement <2 x float> poison, float %6, i64 0
  %11 = insertelement <2 x float> %10, float %9, i64 1
  %12 = fpext <2 x float> %11 to <2 x double>
  %13 = fmul <2 x double> %12, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %14 = fptrunc <2 x double> %13 to <2 x float>
  %15 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %16 = load float, ptr %15, align 8, !tbaa !46
  %17 = fpext float %16 to double
  %18 = fmul double %17, 0x3EF0001000100010
  %19 = fptrunc double %18 to float
  br label %30

20:                                               ; preds = %1
  %21 = tail call float @DecodePixelGamma(float noundef %6) #14
  %22 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %23 = load float, ptr %22, align 4, !tbaa !90
  %24 = tail call float @DecodePixelGamma(float noundef %23) #14
  %25 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %26 = load float, ptr %25, align 8, !tbaa !46
  %27 = tail call float @DecodePixelGamma(float noundef %26) #14
  %28 = insertelement <2 x float> poison, float %21, i64 0
  %29 = insertelement <2 x float> %28, float %24, i64 1
  br label %30

30:                                               ; preds = %20, %7
  %31 = phi float [ %19, %7 ], [ %27, %20 ]
  %32 = phi <2 x float> [ %14, %7 ], [ %29, %20 ]
  %33 = extractelement <2 x float> %32, i64 0
  %34 = tail call float @llvm.fabs.f32(float %33)
  %35 = fpext float %34 to double
  %36 = fcmp olt double %35, 1.000000e-15
  br i1 %36, label %37, label %46

37:                                               ; preds = %30
  %38 = extractelement <2 x float> %32, i64 1
  %39 = tail call float @llvm.fabs.f32(float %38)
  %40 = fpext float %39 to double
  %41 = fcmp olt double %40, 1.000000e-15
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = tail call float @llvm.fabs.f32(float %31)
  %44 = fpext float %43 to double
  %45 = fcmp olt double %44, 1.000000e-15
  br i1 %45, label %74, label %46

46:                                               ; preds = %42, %37, %30
  %47 = fsub <2 x float> <float 1.000000e+00, float 1.000000e+00>, %32
  %48 = fsub float 1.000000e+00, %31
  %49 = extractelement <2 x float> %47, i64 0
  %50 = extractelement <2 x float> %47, i64 1
  %51 = fcmp olt float %50, %49
  %52 = select i1 %51, float %50, float %49
  %53 = fcmp olt float %48, %52
  %54 = select i1 %53, float %48, float %52
  %55 = fpext float %54 to double
  %56 = fsub double 1.000000e+00, %55
  %57 = fsub float %48, %54
  %58 = fpext float %57 to double
  %59 = fdiv double %58, %56
  %60 = fptrunc double %59 to float
  store i32 12, ptr %2, align 4, !tbaa !41
  %61 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %62 = insertelement <2 x float> poison, float %54, i64 0
  %63 = shufflevector <2 x float> %62, <2 x float> poison, <2 x i32> zeroinitializer
  %64 = fsub <2 x float> %47, %63
  %65 = fpext <2 x float> %64 to <2 x double>
  %66 = insertelement <2 x double> poison, double %56, i64 0
  %67 = shufflevector <2 x double> %66, <2 x double> poison, <2 x i32> zeroinitializer
  %68 = fdiv <2 x double> %65, %67
  %69 = fptrunc <2 x double> %68 to <2 x float>
  %70 = fmul <2 x float> %69, <float 6.553500e+04, float 6.553500e+04>
  store <2 x float> %70, ptr %61, align 8, !tbaa !45
  %71 = fmul float %60, 6.553500e+04
  %72 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  store float %71, ptr %72, align 8, !tbaa !46
  %73 = fmul float %54, 6.553500e+04
  br label %74

74:                                               ; preds = %42, %46
  %75 = phi float [ %73, %46 ], [ 6.553500e+04, %42 ]
  %76 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  store float %75, ptr %76, align 8, !tbaa !91
  ret void
}

; Function Attrs: optsize
declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: hot optsize
declare ptr @QueueCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @SetPixelPacket(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr noundef writeonly %3) unnamed_addr #6 {
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %6 = load float, ptr %5, align 8, !tbaa !89
  %7 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %6) #13
  %8 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 2
  store i16 %7, ptr %8, align 2, !tbaa !92
  %9 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %10 = load float, ptr %9, align 4, !tbaa !90
  %11 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %10) #13
  %12 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 1
  store i16 %11, ptr %12, align 2, !tbaa !93
  %13 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %14 = load float, ptr %13, align 8, !tbaa !46
  %15 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %14) #13
  store i16 %15, ptr %2, align 2, !tbaa !88
  %16 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %17 = load float, ptr %16, align 4, !tbaa !47
  %18 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %17) #13
  %19 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 3
  store i16 %18, ptr %19, align 2, !tbaa !94
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !35
  %22 = icmp eq i32 %21, 12
  br i1 %22, label %28, label %23

23:                                               ; preds = %4
  %24 = load i32, ptr %0, align 8, !tbaa !95
  %25 = icmp eq i32 %24, 2
  %26 = icmp ne ptr %3, null
  %27 = and i1 %26, %25
  br i1 %27, label %30, label %34

28:                                               ; preds = %4
  %29 = icmp eq ptr %3, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %23, %28
  %31 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %32 = load float, ptr %31, align 8, !tbaa !91
  %33 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %32) #13
  store i16 %33, ptr %3, align 2, !tbaa !87
  br label %34

34:                                               ; preds = %28, %30, %23
  ret void
}

; Function Attrs: hot optsize
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: hot optsize
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CopyMagickMemory(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @SetImageProgress(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #11
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %7 = load ptr, ptr %6, align 8, !tbaa !71
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.8, ptr noundef %1, ptr noundef nonnull %10) #12
  %12 = load ptr, ptr %6, align 8, !tbaa !71
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %14 = load ptr, ptr %13, align 8, !tbaa !96
  %15 = call i32 %12(ptr noundef nonnull %5, i64 noundef %2, i64 noundef %3, ptr noundef %14) #12
  br label %16

16:                                               ; preds = %4, %9
  %17 = phi i32 [ %15, %9 ], [ 1, %4 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #11
  ret i32 %17
}

; Function Attrs: optsize
declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CompositeImage(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @RaiseImage(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 717, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #12
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %12 = load i64, ptr %11, align 8, !tbaa !31
  %13 = load i64, ptr %1, align 8, !tbaa !97
  %14 = shl i64 %13, 1
  %15 = icmp ugt i64 %12, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %18 = load i64, ptr %17, align 8, !tbaa !33
  %19 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !98
  %21 = shl i64 %20, 1
  %22 = icmp ugt i64 %18, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %10, %16
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %26 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %24, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 722, i32 noundef 410, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, ptr noundef nonnull %25) #12
  br label %479

27:                                               ; preds = %16
  %28 = icmp eq i32 %2, 0
  %29 = select i1 %28, float 0.000000e+00, float 6.553500e+04
  %30 = select i1 %28, float 6.553500e+04, float 0.000000e+00
  %31 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #12
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %479, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %35 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %34) #12
  %36 = load i64, ptr %19, align 8, !tbaa !98
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %49

40:                                               ; preds = %189, %33
  %41 = phi i64 [ 0, %33 ], [ %190, %189 ]
  %42 = phi i32 [ 1, %33 ], [ %191, %189 ]
  %43 = phi i64 [ %36, %33 ], [ %193, %189 ]
  %44 = load i64, ptr %17, align 8, !tbaa !33
  %45 = sub i64 %44, %43
  %46 = icmp slt i64 %43, %45
  br i1 %46, label %47, label %196

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %205

49:                                               ; preds = %38, %189
  %50 = phi i64 [ 0, %38 ], [ %195, %189 ]
  %51 = phi i32 [ 1, %38 ], [ %191, %189 ]
  %52 = phi i64 [ 0, %38 ], [ %192, %189 ]
  %53 = phi i64 [ 0, %38 ], [ %190, %189 ]
  %54 = icmp eq i32 %51, 0
  br i1 %54, label %189, label %55

55:                                               ; preds = %49
  %56 = load i64, ptr %11, align 8, !tbaa !31
  %57 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %35, i64 noundef 0, i64 noundef %52, i64 noundef %56, i64 noundef 1, ptr noundef nonnull %34) #14
  %58 = icmp eq ptr %57, null
  br i1 %58, label %189, label %59

59:                                               ; preds = %55
  %60 = icmp eq i64 %52, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %59
  %62 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext -66) #13, !range !44
  %63 = uitofp i16 %62 to float
  %64 = xor i16 %62, -1
  %65 = uitofp i16 %64 to float
  %66 = fmul float %29, %65
  br label %78

67:                                               ; preds = %78, %59
  %68 = phi ptr [ %57, %59 ], [ %104, %78 ]
  %69 = load i64, ptr %11, align 8, !tbaa !31
  %70 = sub i64 %69, %52
  %71 = icmp slt i64 %52, %70
  br i1 %71, label %72, label %109

72:                                               ; preds = %67
  %73 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext -121) #13, !range !44
  %74 = uitofp i16 %73 to float
  %75 = xor i16 %73, -1
  %76 = uitofp i16 %75 to float
  %77 = fmul float %29, %76
  br label %119

78:                                               ; preds = %61, %78
  %79 = phi ptr [ %57, %61 ], [ %104, %78 ]
  %80 = phi i64 [ 0, %61 ], [ %105, %78 ]
  %81 = getelementptr inbounds %struct._PixelPacket, ptr %79, i64 0, i32 2
  %82 = load i16, ptr %81, align 2, !tbaa !92
  %83 = uitofp i16 %82 to float
  %84 = tail call float @llvm.fmuladd.f32(float %83, float %63, float %66)
  %85 = fpext float %84 to double
  %86 = fmul double %85, 0x3EF0001000100010
  %87 = fptrunc double %86 to float
  %88 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %87) #13
  store i16 %88, ptr %81, align 2, !tbaa !92
  %89 = getelementptr inbounds %struct._PixelPacket, ptr %79, i64 0, i32 1
  %90 = load i16, ptr %89, align 2, !tbaa !93
  %91 = uitofp i16 %90 to float
  %92 = tail call float @llvm.fmuladd.f32(float %91, float %63, float %66)
  %93 = fpext float %92 to double
  %94 = fmul double %93, 0x3EF0001000100010
  %95 = fptrunc double %94 to float
  %96 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %95) #13
  store i16 %96, ptr %89, align 2, !tbaa !93
  %97 = load i16, ptr %79, align 2, !tbaa !88
  %98 = uitofp i16 %97 to float
  %99 = tail call float @llvm.fmuladd.f32(float %98, float %63, float %66)
  %100 = fpext float %99 to double
  %101 = fmul double %100, 0x3EF0001000100010
  %102 = fptrunc double %101 to float
  %103 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %102) #13
  store i16 %103, ptr %79, align 2, !tbaa !88
  %104 = getelementptr inbounds %struct._PixelPacket, ptr %79, i64 1
  %105 = add nuw nsw i64 %80, 1
  %106 = icmp eq i64 %105, %52
  br i1 %106, label %67, label %78, !llvm.loop !99

107:                                              ; preds = %119
  %108 = add i64 %69, %50
  br label %109

109:                                              ; preds = %107, %67
  %110 = phi i64 [ %52, %67 ], [ %108, %107 ]
  %111 = phi ptr [ %68, %67 ], [ %145, %107 ]
  %112 = icmp slt i64 %110, %69
  br i1 %112, label %113, label %177

113:                                              ; preds = %109
  %114 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext -66) #13, !range !44
  %115 = uitofp i16 %114 to float
  %116 = xor i16 %114, -1
  %117 = uitofp i16 %116 to float
  %118 = fmul float %30, %117
  br label %148

119:                                              ; preds = %72, %119
  %120 = phi ptr [ %68, %72 ], [ %145, %119 ]
  %121 = phi i64 [ %52, %72 ], [ %146, %119 ]
  %122 = getelementptr inbounds %struct._PixelPacket, ptr %120, i64 0, i32 2
  %123 = load i16, ptr %122, align 2, !tbaa !92
  %124 = uitofp i16 %123 to float
  %125 = tail call float @llvm.fmuladd.f32(float %124, float %74, float %77)
  %126 = fpext float %125 to double
  %127 = fmul double %126, 0x3EF0001000100010
  %128 = fptrunc double %127 to float
  %129 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %128) #13
  store i16 %129, ptr %122, align 2, !tbaa !92
  %130 = getelementptr inbounds %struct._PixelPacket, ptr %120, i64 0, i32 1
  %131 = load i16, ptr %130, align 2, !tbaa !93
  %132 = uitofp i16 %131 to float
  %133 = tail call float @llvm.fmuladd.f32(float %132, float %74, float %77)
  %134 = fpext float %133 to double
  %135 = fmul double %134, 0x3EF0001000100010
  %136 = fptrunc double %135 to float
  %137 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %136) #13
  store i16 %137, ptr %130, align 2, !tbaa !93
  %138 = load i16, ptr %120, align 2, !tbaa !88
  %139 = uitofp i16 %138 to float
  %140 = tail call float @llvm.fmuladd.f32(float %139, float %74, float %77)
  %141 = fpext float %140 to double
  %142 = fmul double %141, 0x3EF0001000100010
  %143 = fptrunc double %142 to float
  %144 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %143) #13
  store i16 %144, ptr %120, align 2, !tbaa !88
  %145 = getelementptr inbounds %struct._PixelPacket, ptr %120, i64 1
  %146 = add nuw nsw i64 %121, 1
  %147 = icmp slt i64 %146, %70
  br i1 %147, label %119, label %107, !llvm.loop !100

148:                                              ; preds = %113, %148
  %149 = phi ptr [ %111, %113 ], [ %174, %148 ]
  %150 = phi i64 [ %110, %113 ], [ %175, %148 ]
  %151 = getelementptr inbounds %struct._PixelPacket, ptr %149, i64 0, i32 2
  %152 = load i16, ptr %151, align 2, !tbaa !92
  %153 = uitofp i16 %152 to float
  %154 = tail call float @llvm.fmuladd.f32(float %153, float %115, float %118)
  %155 = fpext float %154 to double
  %156 = fmul double %155, 0x3EF0001000100010
  %157 = fptrunc double %156 to float
  %158 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %157) #13
  store i16 %158, ptr %151, align 2, !tbaa !92
  %159 = getelementptr inbounds %struct._PixelPacket, ptr %149, i64 0, i32 1
  %160 = load i16, ptr %159, align 2, !tbaa !93
  %161 = uitofp i16 %160 to float
  %162 = tail call float @llvm.fmuladd.f32(float %161, float %115, float %118)
  %163 = fpext float %162 to double
  %164 = fmul double %163, 0x3EF0001000100010
  %165 = fptrunc double %164 to float
  %166 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %165) #13
  store i16 %166, ptr %159, align 2, !tbaa !93
  %167 = load i16, ptr %149, align 2, !tbaa !88
  %168 = uitofp i16 %167 to float
  %169 = tail call float @llvm.fmuladd.f32(float %168, float %115, float %118)
  %170 = fpext float %169 to double
  %171 = fmul double %170, 0x3EF0001000100010
  %172 = fptrunc double %171 to float
  %173 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %172) #13
  store i16 %173, ptr %149, align 2, !tbaa !88
  %174 = getelementptr inbounds %struct._PixelPacket, ptr %149, i64 1
  %175 = add nuw nsw i64 %150, 1
  %176 = icmp slt i64 %175, %69
  br i1 %176, label %148, label %177, !llvm.loop !101

177:                                              ; preds = %148, %109
  %178 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %35, ptr noundef nonnull %34) #14
  %179 = icmp ne i32 %178, 0
  %180 = zext i1 %179 to i32
  %181 = load ptr, ptr %39, align 8, !tbaa !71
  %182 = icmp eq ptr %181, null
  br i1 %182, label %189, label %183

183:                                              ; preds = %177
  %184 = add nsw i64 %53, 1
  %185 = load i64, ptr %17, align 8, !tbaa !33
  %186 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.7, i64 noundef %53, i64 noundef %185) #13
  %187 = icmp eq i32 %186, 0
  %188 = select i1 %187, i32 0, i32 %180
  br label %189

189:                                              ; preds = %177, %183, %55, %49
  %190 = phi i64 [ %53, %49 ], [ %53, %55 ], [ %184, %183 ], [ %53, %177 ]
  %191 = phi i32 [ 0, %49 ], [ 0, %55 ], [ %188, %183 ], [ %180, %177 ]
  %192 = add nuw nsw i64 %52, 1
  %193 = load i64, ptr %19, align 8, !tbaa !98
  %194 = icmp slt i64 %192, %193
  %195 = add nsw i64 %50, -1
  br i1 %194, label %49, label %40, !llvm.loop !102

196:                                              ; preds = %312, %40
  %197 = phi i64 [ %44, %40 ], [ %316, %312 ]
  %198 = phi i64 [ %41, %40 ], [ %313, %312 ]
  %199 = phi i32 [ %42, %40 ], [ %314, %312 ]
  %200 = phi i64 [ %45, %40 ], [ %318, %312 ]
  %201 = icmp slt i64 %200, %197
  br i1 %201, label %202, label %476

202:                                              ; preds = %196
  %203 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %204 = sub i64 0, %200
  br label %320

205:                                              ; preds = %47, %312
  %206 = phi i32 [ %42, %47 ], [ %314, %312 ]
  %207 = phi i64 [ %43, %47 ], [ %315, %312 ]
  %208 = phi i64 [ %41, %47 ], [ %313, %312 ]
  %209 = icmp eq i32 %206, 0
  br i1 %209, label %312, label %210

210:                                              ; preds = %205
  %211 = load i64, ptr %11, align 8, !tbaa !31
  %212 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %35, i64 noundef 0, i64 noundef %207, i64 noundef %211, i64 noundef 1, ptr noundef nonnull %34) #14
  %213 = icmp eq ptr %212, null
  br i1 %213, label %312, label %214

214:                                              ; preds = %210
  %215 = load i64, ptr %1, align 8, !tbaa !97
  %216 = icmp sgt i64 %215, 0
  br i1 %216, label %217, label %223

217:                                              ; preds = %214
  %218 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext -66) #13, !range !44
  %219 = uitofp i16 %218 to float
  %220 = xor i16 %218, -1
  %221 = uitofp i16 %220 to float
  %222 = fmul float %29, %221
  br label %230

223:                                              ; preds = %230, %214
  %224 = phi i64 [ 0, %214 ], [ %215, %230 ]
  %225 = phi ptr [ %212, %214 ], [ %256, %230 ]
  %226 = load i64, ptr %11, align 8, !tbaa !31
  %227 = sub i64 %226, %215
  %228 = tail call i64 @llvm.smax.i64(i64 %224, i64 %227)
  %229 = icmp slt i64 %228, %226
  br i1 %229, label %259, label %300

230:                                              ; preds = %217, %230
  %231 = phi ptr [ %212, %217 ], [ %256, %230 ]
  %232 = phi i64 [ 0, %217 ], [ %257, %230 ]
  %233 = getelementptr inbounds %struct._PixelPacket, ptr %231, i64 0, i32 2
  %234 = load i16, ptr %233, align 2, !tbaa !92
  %235 = uitofp i16 %234 to float
  %236 = tail call float @llvm.fmuladd.f32(float %235, float %219, float %222)
  %237 = fpext float %236 to double
  %238 = fmul double %237, 0x3EF0001000100010
  %239 = fptrunc double %238 to float
  %240 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %239) #13
  store i16 %240, ptr %233, align 2, !tbaa !92
  %241 = getelementptr inbounds %struct._PixelPacket, ptr %231, i64 0, i32 1
  %242 = load i16, ptr %241, align 2, !tbaa !93
  %243 = uitofp i16 %242 to float
  %244 = tail call float @llvm.fmuladd.f32(float %243, float %219, float %222)
  %245 = fpext float %244 to double
  %246 = fmul double %245, 0x3EF0001000100010
  %247 = fptrunc double %246 to float
  %248 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %247) #13
  store i16 %248, ptr %241, align 2, !tbaa !93
  %249 = load i16, ptr %231, align 2, !tbaa !88
  %250 = uitofp i16 %249 to float
  %251 = tail call float @llvm.fmuladd.f32(float %250, float %219, float %222)
  %252 = fpext float %251 to double
  %253 = fmul double %252, 0x3EF0001000100010
  %254 = fptrunc double %253 to float
  %255 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %254) #13
  store i16 %255, ptr %231, align 2, !tbaa !88
  %256 = getelementptr inbounds %struct._PixelPacket, ptr %231, i64 1
  %257 = add nuw nsw i64 %232, 1
  %258 = icmp eq i64 %257, %215
  br i1 %258, label %223, label %230, !llvm.loop !103

259:                                              ; preds = %223
  %260 = icmp slt i64 %224, %227
  %261 = add i64 %215, %224
  %262 = sub i64 %226, %261
  %263 = shl i64 %262, 3
  %264 = select i1 %260, i64 %263, i64 0
  %265 = getelementptr i8, ptr %225, i64 %264
  %266 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext -66) #13, !range !44
  %267 = uitofp i16 %266 to float
  %268 = xor i16 %266, -1
  %269 = uitofp i16 %268 to float
  %270 = fmul float %30, %269
  br label %271

271:                                              ; preds = %259, %271
  %272 = phi ptr [ %265, %259 ], [ %297, %271 ]
  %273 = phi i64 [ %228, %259 ], [ %298, %271 ]
  %274 = getelementptr inbounds %struct._PixelPacket, ptr %272, i64 0, i32 2
  %275 = load i16, ptr %274, align 2, !tbaa !92
  %276 = uitofp i16 %275 to float
  %277 = tail call float @llvm.fmuladd.f32(float %276, float %267, float %270)
  %278 = fpext float %277 to double
  %279 = fmul double %278, 0x3EF0001000100010
  %280 = fptrunc double %279 to float
  %281 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %280) #13
  store i16 %281, ptr %274, align 2, !tbaa !92
  %282 = getelementptr inbounds %struct._PixelPacket, ptr %272, i64 0, i32 1
  %283 = load i16, ptr %282, align 2, !tbaa !93
  %284 = uitofp i16 %283 to float
  %285 = tail call float @llvm.fmuladd.f32(float %284, float %267, float %270)
  %286 = fpext float %285 to double
  %287 = fmul double %286, 0x3EF0001000100010
  %288 = fptrunc double %287 to float
  %289 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %288) #13
  store i16 %289, ptr %282, align 2, !tbaa !93
  %290 = load i16, ptr %272, align 2, !tbaa !88
  %291 = uitofp i16 %290 to float
  %292 = tail call float @llvm.fmuladd.f32(float %291, float %267, float %270)
  %293 = fpext float %292 to double
  %294 = fmul double %293, 0x3EF0001000100010
  %295 = fptrunc double %294 to float
  %296 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %295) #13
  store i16 %296, ptr %272, align 2, !tbaa !88
  %297 = getelementptr inbounds %struct._PixelPacket, ptr %272, i64 1
  %298 = add nuw nsw i64 %273, 1
  %299 = icmp eq i64 %298, %226
  br i1 %299, label %300, label %271, !llvm.loop !104

300:                                              ; preds = %271, %223
  %301 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %35, ptr noundef nonnull %34) #14
  %302 = icmp ne i32 %301, 0
  %303 = zext i1 %302 to i32
  %304 = load ptr, ptr %48, align 8, !tbaa !71
  %305 = icmp eq ptr %304, null
  br i1 %305, label %312, label %306

306:                                              ; preds = %300
  %307 = add nsw i64 %208, 1
  %308 = load i64, ptr %17, align 8, !tbaa !33
  %309 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.7, i64 noundef %208, i64 noundef %308) #13
  %310 = icmp eq i32 %309, 0
  %311 = select i1 %310, i32 0, i32 %303
  br label %312

312:                                              ; preds = %300, %306, %210, %205
  %313 = phi i64 [ %208, %205 ], [ %208, %210 ], [ %307, %306 ], [ %208, %300 ]
  %314 = phi i32 [ 0, %205 ], [ 0, %210 ], [ %311, %306 ], [ %303, %300 ]
  %315 = add nsw i64 %207, 1
  %316 = load i64, ptr %17, align 8, !tbaa !33
  %317 = load i64, ptr %19, align 8, !tbaa !98
  %318 = sub i64 %316, %317
  %319 = icmp slt i64 %315, %318
  br i1 %319, label %205, label %196, !llvm.loop !105

320:                                              ; preds = %202, %469
  %321 = phi i64 [ %197, %202 ], [ %470, %469 ]
  %322 = phi i64 [ %204, %202 ], [ %475, %469 ]
  %323 = phi i32 [ %199, %202 ], [ %472, %469 ]
  %324 = phi i64 [ %200, %202 ], [ %473, %469 ]
  %325 = phi i64 [ %198, %202 ], [ %471, %469 ]
  %326 = icmp eq i32 %323, 0
  br i1 %326, label %469, label %327

327:                                              ; preds = %320
  %328 = load i64, ptr %11, align 8, !tbaa !31
  %329 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %35, i64 noundef 0, i64 noundef %324, i64 noundef %328, i64 noundef 1, ptr noundef nonnull %34) #14
  %330 = icmp eq ptr %329, null
  %331 = load i64, ptr %17, align 8, !tbaa !33
  br i1 %330, label %469, label %332

332:                                              ; preds = %327
  %333 = sub i64 %331, %324
  %334 = icmp sgt i64 %333, 0
  br i1 %334, label %335, label %343

335:                                              ; preds = %332
  %336 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext -66) #13, !range !44
  %337 = uitofp i16 %336 to float
  %338 = xor i16 %336, -1
  %339 = uitofp i16 %338 to float
  %340 = fmul float %29, %339
  br label %357

341:                                              ; preds = %357
  %342 = add i64 %331, %322
  br label %343

343:                                              ; preds = %341, %332
  %344 = phi i64 [ 0, %332 ], [ %342, %341 ]
  %345 = phi ptr [ %329, %332 ], [ %383, %341 ]
  %346 = load i64, ptr %11, align 8, !tbaa !31
  %347 = sub i64 %324, %331
  %348 = add i64 %347, %346
  %349 = icmp slt i64 %344, %348
  br i1 %349, label %350, label %388

350:                                              ; preds = %343
  %351 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext -121) #13, !range !44
  %352 = uitofp i16 %351 to float
  %353 = xor i16 %351, -1
  %354 = uitofp i16 %353 to float
  %355 = fmul float %30, %354
  %356 = add i64 %346, %324
  br label %398

357:                                              ; preds = %335, %357
  %358 = phi ptr [ %329, %335 ], [ %383, %357 ]
  %359 = phi i64 [ 0, %335 ], [ %384, %357 ]
  %360 = getelementptr inbounds %struct._PixelPacket, ptr %358, i64 0, i32 2
  %361 = load i16, ptr %360, align 2, !tbaa !92
  %362 = uitofp i16 %361 to float
  %363 = tail call float @llvm.fmuladd.f32(float %362, float %337, float %340)
  %364 = fpext float %363 to double
  %365 = fmul double %364, 0x3EF0001000100010
  %366 = fptrunc double %365 to float
  %367 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %366) #13
  store i16 %367, ptr %360, align 2, !tbaa !92
  %368 = getelementptr inbounds %struct._PixelPacket, ptr %358, i64 0, i32 1
  %369 = load i16, ptr %368, align 2, !tbaa !93
  %370 = uitofp i16 %369 to float
  %371 = tail call float @llvm.fmuladd.f32(float %370, float %337, float %340)
  %372 = fpext float %371 to double
  %373 = fmul double %372, 0x3EF0001000100010
  %374 = fptrunc double %373 to float
  %375 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %374) #13
  store i16 %375, ptr %368, align 2, !tbaa !93
  %376 = load i16, ptr %358, align 2, !tbaa !88
  %377 = uitofp i16 %376 to float
  %378 = tail call float @llvm.fmuladd.f32(float %377, float %337, float %340)
  %379 = fpext float %378 to double
  %380 = fmul double %379, 0x3EF0001000100010
  %381 = fptrunc double %380 to float
  %382 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %381) #13
  store i16 %382, ptr %358, align 2, !tbaa !88
  %383 = getelementptr inbounds %struct._PixelPacket, ptr %358, i64 1
  %384 = add nuw nsw i64 %359, 1
  %385 = icmp slt i64 %384, %333
  br i1 %385, label %357, label %341, !llvm.loop !106

386:                                              ; preds = %398
  %387 = sub i64 %356, %331
  br label %388

388:                                              ; preds = %386, %343
  %389 = phi i64 [ %344, %343 ], [ %387, %386 ]
  %390 = phi ptr [ %345, %343 ], [ %424, %386 ]
  %391 = icmp slt i64 %389, %346
  br i1 %391, label %392, label %456

392:                                              ; preds = %388
  %393 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext -66) #13, !range !44
  %394 = uitofp i16 %393 to float
  %395 = xor i16 %393, -1
  %396 = uitofp i16 %395 to float
  %397 = fmul float %30, %396
  br label %427

398:                                              ; preds = %350, %398
  %399 = phi ptr [ %345, %350 ], [ %424, %398 ]
  %400 = phi i64 [ %344, %350 ], [ %425, %398 ]
  %401 = getelementptr inbounds %struct._PixelPacket, ptr %399, i64 0, i32 2
  %402 = load i16, ptr %401, align 2, !tbaa !92
  %403 = uitofp i16 %402 to float
  %404 = tail call float @llvm.fmuladd.f32(float %403, float %352, float %355)
  %405 = fpext float %404 to double
  %406 = fmul double %405, 0x3EF0001000100010
  %407 = fptrunc double %406 to float
  %408 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %407) #13
  store i16 %408, ptr %401, align 2, !tbaa !92
  %409 = getelementptr inbounds %struct._PixelPacket, ptr %399, i64 0, i32 1
  %410 = load i16, ptr %409, align 2, !tbaa !93
  %411 = uitofp i16 %410 to float
  %412 = tail call float @llvm.fmuladd.f32(float %411, float %352, float %355)
  %413 = fpext float %412 to double
  %414 = fmul double %413, 0x3EF0001000100010
  %415 = fptrunc double %414 to float
  %416 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %415) #13
  store i16 %416, ptr %409, align 2, !tbaa !93
  %417 = load i16, ptr %399, align 2, !tbaa !88
  %418 = uitofp i16 %417 to float
  %419 = tail call float @llvm.fmuladd.f32(float %418, float %352, float %355)
  %420 = fpext float %419 to double
  %421 = fmul double %420, 0x3EF0001000100010
  %422 = fptrunc double %421 to float
  %423 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %422) #13
  store i16 %423, ptr %399, align 2, !tbaa !88
  %424 = getelementptr inbounds %struct._PixelPacket, ptr %399, i64 1
  %425 = add nuw nsw i64 %400, 1
  %426 = icmp slt i64 %425, %348
  br i1 %426, label %398, label %386, !llvm.loop !107

427:                                              ; preds = %392, %427
  %428 = phi ptr [ %390, %392 ], [ %453, %427 ]
  %429 = phi i64 [ %389, %392 ], [ %454, %427 ]
  %430 = getelementptr inbounds %struct._PixelPacket, ptr %428, i64 0, i32 2
  %431 = load i16, ptr %430, align 2, !tbaa !92
  %432 = uitofp i16 %431 to float
  %433 = tail call float @llvm.fmuladd.f32(float %432, float %394, float %397)
  %434 = fpext float %433 to double
  %435 = fmul double %434, 0x3EF0001000100010
  %436 = fptrunc double %435 to float
  %437 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %436) #13
  store i16 %437, ptr %430, align 2, !tbaa !92
  %438 = getelementptr inbounds %struct._PixelPacket, ptr %428, i64 0, i32 1
  %439 = load i16, ptr %438, align 2, !tbaa !93
  %440 = uitofp i16 %439 to float
  %441 = tail call float @llvm.fmuladd.f32(float %440, float %394, float %397)
  %442 = fpext float %441 to double
  %443 = fmul double %442, 0x3EF0001000100010
  %444 = fptrunc double %443 to float
  %445 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %444) #13
  store i16 %445, ptr %438, align 2, !tbaa !93
  %446 = load i16, ptr %428, align 2, !tbaa !88
  %447 = uitofp i16 %446 to float
  %448 = tail call float @llvm.fmuladd.f32(float %447, float %394, float %397)
  %449 = fpext float %448 to double
  %450 = fmul double %449, 0x3EF0001000100010
  %451 = fptrunc double %450 to float
  %452 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %451) #13
  store i16 %452, ptr %428, align 2, !tbaa !88
  %453 = getelementptr inbounds %struct._PixelPacket, ptr %428, i64 1
  %454 = add nuw nsw i64 %429, 1
  %455 = icmp slt i64 %454, %346
  br i1 %455, label %427, label %456, !llvm.loop !108

456:                                              ; preds = %427, %388
  %457 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %35, ptr noundef nonnull %34) #14
  %458 = icmp ne i32 %457, 0
  %459 = zext i1 %458 to i32
  %460 = load ptr, ptr %203, align 8, !tbaa !71
  %461 = icmp eq ptr %460, null
  %462 = load i64, ptr %17, align 8, !tbaa !33
  br i1 %461, label %469, label %463

463:                                              ; preds = %456
  %464 = add nsw i64 %325, 1
  %465 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.7, i64 noundef %325, i64 noundef %462) #13
  %466 = icmp eq i32 %465, 0
  %467 = select i1 %466, i32 0, i32 %459
  %468 = load i64, ptr %17, align 8, !tbaa !33
  br label %469

469:                                              ; preds = %456, %463, %327, %320
  %470 = phi i64 [ %321, %320 ], [ %331, %327 ], [ %468, %463 ], [ %462, %456 ]
  %471 = phi i64 [ %325, %320 ], [ %325, %327 ], [ %464, %463 ], [ %325, %456 ]
  %472 = phi i32 [ 0, %320 ], [ 0, %327 ], [ %467, %463 ], [ %459, %456 ]
  %473 = add nsw i64 %324, 1
  %474 = icmp slt i64 %473, %470
  %475 = add i64 %322, -1
  br i1 %474, label %320, label %476, !llvm.loop !109

476:                                              ; preds = %469, %196
  %477 = phi i32 [ %199, %196 ], [ %472, %469 ]
  %478 = tail call ptr @DestroyCacheView(ptr noundef %35) #12
  br label %479

479:                                              ; preds = %27, %23, %476
  %480 = phi i32 [ %477, %476 ], [ 0, %23 ], [ 0, %27 ]
  ret i32 %480
}

; Function Attrs: hot optsize
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #8

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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @AbsolutePixelValue(float noundef %0) unnamed_addr #5 {
  %2 = fcmp olt float %0, 0.000000e+00
  %3 = fneg float %0
  %4 = select i1 %2, float %3, float %0
  ret float %4
}

; Function Attrs: hot optsize
declare float @DecodePixelGamma(float noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #9

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }
attributes #12 = { nounwind optsize }
attributes #13 = { optsize }
attributes #14 = { hot nounwind optsize }

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
!24 = !{!10, !10, i64 0}
!25 = !{!26, !10, i64 40}
!26 = !{!"_FrameInfo", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40}
!27 = !{!26, !10, i64 32}
!28 = !{!26, !10, i64 0}
!29 = !{!26, !10, i64 16}
!30 = !{!26, !10, i64 8}
!31 = !{!6, !10, i64 40}
!32 = !{!26, !10, i64 24}
!33 = !{!6, !10, i64 48}
!34 = !{i32 0, i32 2}
!35 = !{!6, !7, i64 4}
!36 = !{!6, !13, i64 94}
!37 = !{!6, !7, i64 32}
!38 = !{i64 0, i64 8, !24, i64 8, i64 8, !24, i64 16, i64 8, !24, i64 24, i64 8, !24}
!39 = !{!6, !10, i64 280}
!40 = !{!6, !10, i64 288}
!41 = !{!42, !7, i64 4}
!42 = !{!"_MagickPixelPacket", !7, i64 0, !7, i64 4, !7, i64 8, !14, i64 16, !10, i64 24, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !43, i64 48}
!43 = !{!"float", !8, i64 0}
!44 = !{i16 20560, i16 -16705}
!45 = !{!43, !43, i64 0}
!46 = !{!42, !43, i64 40}
!47 = !{!42, !43, i64 44}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.mustprogress"}
!50 = distinct !{!50, !49}
!51 = distinct !{!51, !49}
!52 = distinct !{!52, !49}
!53 = distinct !{!53, !49}
!54 = distinct !{!54, !49}
!55 = distinct !{!55, !49}
!56 = distinct !{!56, !49}
!57 = distinct !{!57, !49}
!58 = distinct !{!58, !49}
!59 = distinct !{!59, !49}
!60 = distinct !{!60, !49}
!61 = distinct !{!61, !49}
!62 = distinct !{!62, !49}
!63 = distinct !{!63, !49}
!64 = distinct !{!64, !49}
!65 = distinct !{!65, !49}
!66 = !{!6, !7, i64 416}
!67 = distinct !{!67, !49}
!68 = distinct !{!68, !49}
!69 = distinct !{!69, !49}
!70 = distinct !{!70, !49}
!71 = !{!6, !11, i64 568}
!72 = distinct !{!72, !49}
!73 = distinct !{!73, !49}
!74 = distinct !{!74, !49}
!75 = distinct !{!75, !49}
!76 = distinct !{!76, !49}
!77 = distinct !{!77, !49}
!78 = distinct !{!78, !49}
!79 = distinct !{!79, !49}
!80 = distinct !{!80, !49}
!81 = distinct !{!81, !49}
!82 = distinct !{!82, !49}
!83 = distinct !{!83, !49}
!84 = distinct !{!84, !49}
!85 = distinct !{!85, !49}
!86 = distinct !{!86, !49}
!87 = !{!13, !13, i64 0}
!88 = !{!12, !13, i64 0}
!89 = !{!42, !43, i64 32}
!90 = !{!42, !43, i64 36}
!91 = !{!42, !43, i64 48}
!92 = !{!12, !13, i64 4}
!93 = !{!12, !13, i64 2}
!94 = !{!12, !13, i64 6}
!95 = !{!6, !7, i64 0}
!96 = !{!6, !11, i64 576}
!97 = !{!17, !10, i64 0}
!98 = !{!17, !10, i64 8}
!99 = distinct !{!99, !49}
!100 = distinct !{!100, !49}
!101 = distinct !{!101, !49}
!102 = distinct !{!102, !49}
!103 = distinct !{!103, !49}
!104 = distinct !{!104, !49}
!105 = distinct !{!105, !49}
!106 = distinct !{!106, !49}
!107 = distinct !{!107, !49}
!108 = distinct !{!108, !49}
!109 = distinct !{!109, !49}
