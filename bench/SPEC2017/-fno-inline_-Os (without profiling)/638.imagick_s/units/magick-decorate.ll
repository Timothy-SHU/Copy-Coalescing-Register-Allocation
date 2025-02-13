; ModuleID = 'magick/decorate.c'
source_filename = "magick/decorate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }
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
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@.gomp_critical_user_MagickCore_FrameImage.var = common global [8 x i32] zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [12 x i8] c"Frame/Image\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"ImageSizeMustExceedBevelWidth\00", align 1
@.gomp_critical_user_MagickCore_RaiseImage.var = common global [8 x i32] zeroinitializer, align 8
@.str.8 = private unnamed_addr constant [12 x i8] c"Raise/Image\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BorderImage(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct._FrameInfo, align 16
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #10
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 115, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #15
  br label %11

11:                                               ; preds = %8, %3
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %13 = load <2 x i64>, ptr %12, align 8, !tbaa !25
  %14 = load <2 x i64>, ptr %1, align 8, !tbaa !25
  %15 = shl <2 x i64> %14, <i64 1, i64 1>
  %16 = add <2 x i64> %15, %13
  store <2 x i64> %16, ptr %4, align 16, !tbaa !25
  %17 = getelementptr inbounds %struct._FrameInfo, ptr %4, i64 0, i32 2
  store <2 x i64> %14, ptr %17, align 16, !tbaa !25
  %18 = getelementptr inbounds %struct._FrameInfo, ptr %4, i64 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %18, i8 0, i64 16, i1 false)
  %19 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #15
  %20 = icmp eq ptr %19, null
  br i1 %20, label %32, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct._Image, ptr %19, i64 0, i32 14
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 13
  %24 = load i64, ptr %23, align 8
  store i64 %24, ptr %22, align 8
  %25 = call ptr @FrameImage(ptr noundef nonnull %19, ptr noundef nonnull %4, ptr noundef %2) #16
  %26 = call ptr @DestroyImage(ptr noundef nonnull %19) #15
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
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #10
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
define dso_local ptr @FrameImage(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct._MagickPixelPacket, align 8
  %13 = alloca %struct._MagickPixelPacket, align 8
  %14 = alloca %struct._MagickPixelPacket, align 8
  %15 = alloca %struct._MagickPixelPacket, align 8
  %16 = alloca %struct._MagickPixelPacket, align 8
  %17 = alloca %struct._MagickPixelPacket, align 8
  %18 = alloca %struct._MagickPixelPacket, align 8
  %19 = alloca i64, align 8
  %20 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %4, align 8, !tbaa !26
  store ptr %1, ptr %5, align 8, !tbaa !26
  store ptr %2, ptr %6, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %12) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %13) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %14) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %15) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %16) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %17) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %18) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #10
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %22 = load i32, ptr %21, align 8, !tbaa !6
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %26 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 209, ptr noundef nonnull @.str.2, ptr noundef nonnull %25) #15
  br label %27

27:                                               ; preds = %24, %3
  %28 = getelementptr inbounds %struct._FrameInfo, ptr %1, i64 0, i32 5
  %29 = load i64, ptr %28, align 8, !tbaa !27
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct._FrameInfo, ptr %1, i64 0, i32 4
  %33 = load i64, ptr %32, align 8, !tbaa !29
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31, %27
  %36 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %37 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 212, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %36) #15
  br label %925

38:                                               ; preds = %31
  %39 = add nuw nsw i64 %33, %29
  store i64 %39, ptr %19, align 8, !tbaa !25
  %40 = load i64, ptr %1, align 8, !tbaa !30
  %41 = getelementptr inbounds %struct._FrameInfo, ptr %1, i64 0, i32 2
  %42 = load i64, ptr %41, align 8, !tbaa !31
  %43 = add i64 %39, %42
  %44 = sub i64 %40, %43
  %45 = getelementptr inbounds %struct._FrameInfo, ptr %1, i64 0, i32 1
  %46 = load i64, ptr %45, align 8, !tbaa !32
  %47 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %48 = load i64, ptr %47, align 8, !tbaa !33
  %49 = icmp ult i64 %44, %48
  br i1 %49, label %58, label %50

50:                                               ; preds = %38
  %51 = getelementptr inbounds %struct._FrameInfo, ptr %1, i64 0, i32 3
  %52 = load i64, ptr %51, align 8, !tbaa !34
  %53 = add i64 %39, %52
  %54 = sub i64 %46, %53
  %55 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %56 = load i64, ptr %55, align 8, !tbaa !35
  %57 = icmp ult i64 %54, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %50, %38
  %59 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %60 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 217, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %59) #15
  br label %925

61:                                               ; preds = %50
  %62 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %40, i64 noundef %46, i32 noundef 1, ptr noundef %2) #15
  store ptr %62, ptr %9, align 8, !tbaa !26
  %63 = icmp eq ptr %62, null
  br i1 %63, label %925, label %64

64:                                               ; preds = %61
  %65 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %62, i32 noundef 1) #15
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct._Image, ptr %62, i64 0, i32 58
  tail call void @InheritException(ptr noundef %2, ptr noundef nonnull %68) #15
  %69 = tail call ptr @DestroyImage(ptr noundef nonnull %62) #15
  br label %925

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct._Image, ptr %62, i64 0, i32 13
  %72 = tail call fastcc i32 @IsPixelGray(ptr noundef nonnull %71) #16, !range !36
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct._Image, ptr %62, i64 0, i32 1
  %76 = load i32, ptr %75, align 4, !tbaa !37
  %77 = tail call fastcc i32 @IsGrayColorspace(i32 noundef %76) #16, !range !36
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %74
  %80 = tail call i32 @SetImageColorspace(ptr noundef nonnull %62, i32 noundef 13) #15
  br label %81

81:                                               ; preds = %79, %74, %70
  %82 = getelementptr inbounds %struct._Image, ptr %62, i64 0, i32 13, i32 3
  %83 = load i16, ptr %82, align 2, !tbaa !38
  %84 = icmp eq i16 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct._Image, ptr %62, i64 0, i32 6
  %87 = load i32, ptr %86, align 8, !tbaa !39
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %62, i32 noundef 6) #15
  br label %91

91:                                               ; preds = %89, %85, %81
  %92 = getelementptr inbounds %struct._Image, ptr %62, i64 0, i32 26
  %93 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %92, ptr noundef nonnull align 8 dereferenceable(32) %93, i64 32, i1 false), !tbaa.struct !40
  %94 = load i64, ptr %93, align 8, !tbaa !41
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %107, label %96

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 1
  %98 = load i64, ptr %97, align 8, !tbaa !42
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct._Image, ptr %62, i64 0, i32 7
  %102 = load <2 x i64>, ptr %101, align 8, !tbaa !25
  %103 = load <2 x i64>, ptr %47, align 8, !tbaa !25
  %104 = sub <2 x i64> %102, %103
  %105 = load <2 x i64>, ptr %92, align 8, !tbaa !25
  %106 = add <2 x i64> %104, %105
  store <2 x i64> %106, ptr %92, align 8, !tbaa !25
  br label %107

107:                                              ; preds = %100, %96, %91
  call void @GetMagickPixelPacket(ptr noundef nonnull %62, ptr noundef nonnull %15) #15
  %108 = load ptr, ptr %9, align 8, !tbaa !26
  %109 = load ptr, ptr %4, align 8, !tbaa !26
  %110 = getelementptr inbounds %struct._Image, ptr %109, i64 0, i32 13
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %110, ptr noundef nonnull %15) #16
  call void @GetMagickPixelPacket(ptr noundef %108, ptr noundef nonnull %16) #15
  %111 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 0, i32 1
  store i32 13, ptr %111, align 4, !tbaa !43
  %112 = load ptr, ptr %9, align 8, !tbaa !26
  %113 = load ptr, ptr %4, align 8, !tbaa !26
  %114 = getelementptr inbounds %struct._Image, ptr %113, i64 0, i32 14
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %114, ptr noundef nonnull %16) #16
  call void @GetMagickPixelPacket(ptr noundef %112, ptr noundef nonnull %13) #15
  %115 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 1
  store i32 13, ptr %115, align 4, !tbaa !43
  %116 = load ptr, ptr %9, align 8, !tbaa !26
  %117 = load ptr, ptr %4, align 8, !tbaa !26
  %118 = getelementptr inbounds %struct._Image, ptr %117, i64 0, i32 13
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %118, ptr noundef nonnull %13) #16
  call void @GetMagickPixelPacket(ptr noundef %116, ptr noundef nonnull %12) #15
  %119 = call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext 80) #16, !range !46
  %120 = xor i16 %119, -1
  %121 = uitofp i16 %120 to float
  %122 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 0, i32 5
  %123 = zext i16 %119 to i32
  %124 = mul nuw nsw i32 %123, 65535
  %125 = sitofp i32 %124 to float
  %126 = getelementptr inbounds %struct._MagickPixelPacket, ptr %12, i64 0, i32 5
  %127 = load <2 x float>, ptr %122, align 8, !tbaa !47
  %128 = insertelement <2 x float> poison, float %121, i64 0
  %129 = shufflevector <2 x float> %128, <2 x float> poison, <2 x i32> zeroinitializer
  %130 = insertelement <2 x float> poison, float %125, i64 0
  %131 = shufflevector <2 x float> %130, <2 x float> poison, <2 x i32> zeroinitializer
  %132 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %129, <2 x float> %127, <2 x float> %131)
  %133 = fpext <2 x float> %132 to <2 x double>
  %134 = fmul <2 x double> %133, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %135 = fptrunc <2 x double> %134 to <2 x float>
  store <2 x float> %135, ptr %126, align 8, !tbaa !47
  %136 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 0, i32 7
  %137 = load float, ptr %136, align 8, !tbaa !48
  %138 = call float @llvm.fmuladd.f32(float %121, float %137, float %125)
  %139 = fpext float %138 to double
  %140 = fmul double %139, 0x3EF0001000100010
  %141 = fptrunc double %140 to float
  %142 = getelementptr inbounds %struct._MagickPixelPacket, ptr %12, i64 0, i32 7
  store float %141, ptr %142, align 8, !tbaa !48
  %143 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 0, i32 8
  %144 = load float, ptr %143, align 4, !tbaa !49
  %145 = getelementptr inbounds %struct._MagickPixelPacket, ptr %12, i64 0, i32 8
  store float %144, ptr %145, align 4, !tbaa !49
  %146 = load ptr, ptr %9, align 8, !tbaa !26
  call void @GetMagickPixelPacket(ptr noundef %146, ptr noundef nonnull %14) #15
  %147 = call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext 125) #16, !range !46
  %148 = xor i16 %147, -1
  %149 = uitofp i16 %148 to float
  %150 = zext i16 %147 to i32
  %151 = mul nuw nsw i32 %150, 65535
  %152 = sitofp i32 %151 to float
  %153 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 5
  %154 = load <2 x float>, ptr %122, align 8, !tbaa !47
  %155 = insertelement <2 x float> poison, float %149, i64 0
  %156 = shufflevector <2 x float> %155, <2 x float> poison, <2 x i32> zeroinitializer
  %157 = insertelement <2 x float> poison, float %152, i64 0
  %158 = shufflevector <2 x float> %157, <2 x float> poison, <2 x i32> zeroinitializer
  %159 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %156, <2 x float> %154, <2 x float> %158)
  %160 = fpext <2 x float> %159 to <2 x double>
  %161 = fmul <2 x double> %160, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %162 = fptrunc <2 x double> %161 to <2 x float>
  store <2 x float> %162, ptr %153, align 8, !tbaa !47
  %163 = load float, ptr %136, align 8, !tbaa !48
  %164 = call float @llvm.fmuladd.f32(float %149, float %163, float %152)
  %165 = fpext float %164 to double
  %166 = fmul double %165, 0x3EF0001000100010
  %167 = fptrunc double %166 to float
  %168 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 7
  store float %167, ptr %168, align 8, !tbaa !48
  %169 = load float, ptr %143, align 4, !tbaa !49
  %170 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 8
  store float %169, ptr %170, align 4, !tbaa !49
  %171 = load ptr, ptr %9, align 8, !tbaa !26
  call void @GetMagickPixelPacket(ptr noundef %171, ptr noundef nonnull %17) #15
  %172 = call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext -121) #16, !range !46
  %173 = uitofp i16 %172 to double
  %174 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 0, i32 5
  %175 = load <2 x float>, ptr %122, align 8, !tbaa !47
  %176 = fpext <2 x float> %175 to <2 x double>
  %177 = fmul <2 x double> %176, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %178 = insertelement <2 x double> poison, double %173, i64 0
  %179 = shufflevector <2 x double> %178, <2 x double> poison, <2 x i32> zeroinitializer
  %180 = fmul <2 x double> %177, %179
  %181 = fptrunc <2 x double> %180 to <2 x float>
  store <2 x float> %181, ptr %174, align 8, !tbaa !47
  %182 = load float, ptr %136, align 8, !tbaa !48
  %183 = fpext float %182 to double
  %184 = fmul double %183, 0x3EF0001000100010
  %185 = fmul double %184, %173
  %186 = fptrunc double %185 to float
  %187 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 0, i32 7
  store float %186, ptr %187, align 8, !tbaa !48
  %188 = load float, ptr %143, align 4, !tbaa !49
  %189 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 0, i32 8
  store float %188, ptr %189, align 4, !tbaa !49
  %190 = load ptr, ptr %9, align 8, !tbaa !26
  call void @GetMagickPixelPacket(ptr noundef %190, ptr noundef nonnull %18) #15
  %191 = call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext 110) #16, !range !46
  %192 = uitofp i16 %191 to double
  %193 = getelementptr inbounds %struct._MagickPixelPacket, ptr %18, i64 0, i32 5
  %194 = load <2 x float>, ptr %122, align 8, !tbaa !47
  %195 = fpext <2 x float> %194 to <2 x double>
  %196 = fmul <2 x double> %195, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %197 = insertelement <2 x double> poison, double %192, i64 0
  %198 = shufflevector <2 x double> %197, <2 x double> poison, <2 x i32> zeroinitializer
  %199 = fmul <2 x double> %196, %198
  %200 = fptrunc <2 x double> %199 to <2 x float>
  store <2 x float> %200, ptr %193, align 8, !tbaa !47
  %201 = load float, ptr %136, align 8, !tbaa !48
  %202 = fpext float %201 to double
  %203 = fmul double %202, 0x3EF0001000100010
  %204 = fmul double %203, %192
  %205 = fptrunc double %204 to float
  %206 = getelementptr inbounds %struct._MagickPixelPacket, ptr %18, i64 0, i32 7
  store float %205, ptr %206, align 8, !tbaa !48
  %207 = load float, ptr %143, align 4, !tbaa !49
  %208 = getelementptr inbounds %struct._MagickPixelPacket, ptr %18, i64 0, i32 8
  store float %207, ptr %208, align 4, !tbaa !49
  %209 = load ptr, ptr %4, align 8, !tbaa !26
  %210 = getelementptr inbounds %struct._Image, ptr %209, i64 0, i32 1
  %211 = load i32, ptr %210, align 4, !tbaa !37
  %212 = icmp eq i32 %211, 12
  br i1 %212, label %213, label %215

213:                                              ; preds = %107
  call fastcc void @ConvertRGBToCMYK(ptr noundef nonnull %15) #16
  call fastcc void @ConvertRGBToCMYK(ptr noundef nonnull %16) #16
  call fastcc void @ConvertRGBToCMYK(ptr noundef nonnull %13) #16
  call fastcc void @ConvertRGBToCMYK(ptr noundef nonnull %12) #16
  call fastcc void @ConvertRGBToCMYK(ptr noundef nonnull %14) #16
  call fastcc void @ConvertRGBToCMYK(ptr noundef nonnull %17) #16
  call fastcc void @ConvertRGBToCMYK(ptr noundef nonnull %18) #16
  %214 = load ptr, ptr %4, align 8, !tbaa !26
  br label %215

215:                                              ; preds = %213, %107
  %216 = phi ptr [ %214, %213 ], [ %209, %107 ]
  store i32 1, ptr %10, align 4, !tbaa !50
  store i64 0, ptr %11, align 8, !tbaa !51
  %217 = load ptr, ptr %6, align 8, !tbaa !26
  %218 = call ptr @AcquireVirtualCacheView(ptr noundef %216, ptr noundef %217) #15
  store ptr %218, ptr %7, align 8, !tbaa !26
  %219 = load ptr, ptr %9, align 8, !tbaa !26
  %220 = load ptr, ptr %6, align 8, !tbaa !26
  %221 = call ptr @AcquireAuthenticCacheView(ptr noundef %219, ptr noundef %220) #15
  store ptr %221, ptr %8, align 8, !tbaa !26
  %222 = load ptr, ptr %5, align 8, !tbaa !26
  %223 = getelementptr inbounds %struct._FrameInfo, ptr %222, i64 0, i32 5
  %224 = load i64, ptr %223, align 8, !tbaa !27
  %225 = getelementptr inbounds %struct._FrameInfo, ptr %222, i64 0, i32 3
  %226 = load i64, ptr %225, align 8, !tbaa !34
  %227 = load i64, ptr %19, align 8, !tbaa !25
  %228 = getelementptr inbounds %struct._FrameInfo, ptr %222, i64 0, i32 4
  %229 = load i64, ptr %228, align 8, !tbaa !29
  %230 = add i64 %226, %224
  %231 = sub i64 %230, %227
  %232 = add i64 %231, %229
  %233 = icmp eq i64 %232, 0
  br i1 %233, label %550, label %234

234:                                              ; preds = %215
  %235 = load ptr, ptr %9, align 8, !tbaa !26
  %236 = getelementptr inbounds %struct._Image, ptr %235, i64 0, i32 7
  %237 = load i64, ptr %236, align 8, !tbaa !33
  %238 = load ptr, ptr %6, align 8, !tbaa !26
  %239 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %221, i64 noundef 0, i64 noundef 0, i64 noundef %237, i64 noundef %232, ptr noundef %238) #17
  %240 = load ptr, ptr %8, align 8, !tbaa !26
  %241 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %240) #15
  %242 = icmp eq ptr %239, null
  br i1 %242, label %550, label %243

243:                                              ; preds = %234
  %244 = load ptr, ptr %5, align 8, !tbaa !26
  %245 = getelementptr inbounds %struct._FrameInfo, ptr %244, i64 0, i32 5
  %246 = load i64, ptr %245, align 8, !tbaa !27
  %247 = icmp sgt i64 %246, 0
  br i1 %247, label %248, label %259

248:                                              ; preds = %243
  %249 = load ptr, ptr %9, align 8, !tbaa !26
  br label %250

250:                                              ; preds = %248, %302
  %251 = phi ptr [ %303, %302 ], [ %249, %248 ]
  %252 = phi ptr [ %305, %302 ], [ %239, %248 ]
  %253 = phi ptr [ %304, %302 ], [ %241, %248 ]
  %254 = phi i64 [ %306, %302 ], [ 0, %248 ]
  %255 = getelementptr inbounds %struct._Image, ptr %251, i64 0, i32 7
  %256 = load i64, ptr %255, align 8, !tbaa !33
  %257 = sub i64 %256, %254
  %258 = icmp sgt i64 %257, 0
  br i1 %258, label %275, label %268

259:                                              ; preds = %302, %243
  %260 = phi ptr [ %244, %243 ], [ %307, %302 ]
  %261 = phi ptr [ %241, %243 ], [ %304, %302 ]
  %262 = phi ptr [ %239, %243 ], [ %305, %302 ]
  %263 = getelementptr inbounds %struct._FrameInfo, ptr %260, i64 0, i32 3
  %264 = load i64, ptr %263, align 8, !tbaa !34
  %265 = load i64, ptr %19, align 8, !tbaa !25
  %266 = sub i64 %264, %265
  %267 = icmp sgt i64 %266, 0
  br i1 %267, label %311, label %319

268:                                              ; preds = %275, %250
  %269 = phi i64 [ %256, %250 ], [ %287, %275 ]
  %270 = phi ptr [ %251, %250 ], [ %285, %275 ]
  %271 = phi ptr [ %253, %250 ], [ %283, %275 ]
  %272 = phi i64 [ 0, %250 ], [ %284, %275 ]
  %273 = phi ptr [ %252, %250 ], [ %282, %275 ]
  %274 = icmp slt i64 %272, %269
  br i1 %274, label %290, label %302

275:                                              ; preds = %250, %275
  %276 = phi ptr [ %285, %275 ], [ %251, %250 ]
  %277 = phi ptr [ %282, %275 ], [ %252, %250 ]
  %278 = phi i64 [ %284, %275 ], [ 0, %250 ]
  %279 = phi ptr [ %283, %275 ], [ %253, %250 ]
  %280 = icmp ult i64 %278, %254
  %281 = select i1 %280, ptr %14, ptr %12
  call fastcc void @SetPixelPacket(ptr noundef nonnull %276, ptr noundef nonnull %281, ptr noundef %277, ptr noundef %279) #16
  %282 = getelementptr inbounds %struct._PixelPacket, ptr %277, i64 1
  %283 = getelementptr inbounds i16, ptr %279, i64 1
  %284 = add nuw nsw i64 %278, 1
  %285 = load ptr, ptr %9, align 8, !tbaa !26
  %286 = getelementptr inbounds %struct._Image, ptr %285, i64 0, i32 7
  %287 = load i64, ptr %286, align 8, !tbaa !33
  %288 = sub i64 %287, %254
  %289 = icmp slt i64 %284, %288
  br i1 %289, label %275, label %268, !llvm.loop !52

290:                                              ; preds = %268, %290
  %291 = phi ptr [ %298, %290 ], [ %270, %268 ]
  %292 = phi ptr [ %295, %290 ], [ %273, %268 ]
  %293 = phi i64 [ %297, %290 ], [ %272, %268 ]
  %294 = phi ptr [ %296, %290 ], [ %271, %268 ]
  call fastcc void @SetPixelPacket(ptr noundef nonnull %291, ptr noundef nonnull %17, ptr noundef %292, ptr noundef %294) #16
  %295 = getelementptr inbounds %struct._PixelPacket, ptr %292, i64 1
  %296 = getelementptr inbounds i16, ptr %294, i64 1
  %297 = add nuw nsw i64 %293, 1
  %298 = load ptr, ptr %9, align 8, !tbaa !26
  %299 = getelementptr inbounds %struct._Image, ptr %298, i64 0, i32 7
  %300 = load i64, ptr %299, align 8, !tbaa !33
  %301 = icmp slt i64 %297, %300
  br i1 %301, label %290, label %302, !llvm.loop !54

302:                                              ; preds = %290, %268
  %303 = phi ptr [ %270, %268 ], [ %298, %290 ]
  %304 = phi ptr [ %271, %268 ], [ %296, %290 ]
  %305 = phi ptr [ %273, %268 ], [ %295, %290 ]
  %306 = add nuw nsw i64 %254, 1
  %307 = load ptr, ptr %5, align 8, !tbaa !26
  %308 = getelementptr inbounds %struct._FrameInfo, ptr %307, i64 0, i32 5
  %309 = load i64, ptr %308, align 8, !tbaa !27
  %310 = icmp slt i64 %306, %309
  br i1 %310, label %250, label %259, !llvm.loop !55

311:                                              ; preds = %259, %379
  %312 = phi ptr [ %380, %379 ], [ %260, %259 ]
  %313 = phi ptr [ %382, %379 ], [ %262, %259 ]
  %314 = phi ptr [ %381, %379 ], [ %261, %259 ]
  %315 = phi i64 [ %383, %379 ], [ 0, %259 ]
  %316 = getelementptr inbounds %struct._FrameInfo, ptr %312, i64 0, i32 5
  %317 = load i64, ptr %316, align 8, !tbaa !27
  %318 = icmp sgt i64 %317, 0
  br i1 %318, label %326, label %338

319:                                              ; preds = %379, %259
  %320 = phi ptr [ %260, %259 ], [ %380, %379 ]
  %321 = phi ptr [ %261, %259 ], [ %381, %379 ]
  %322 = phi ptr [ %262, %259 ], [ %382, %379 ]
  %323 = getelementptr inbounds %struct._FrameInfo, ptr %320, i64 0, i32 4
  %324 = load i64, ptr %323, align 8, !tbaa !29
  %325 = icmp sgt i64 %324, 0
  br i1 %325, label %389, label %546

326:                                              ; preds = %311, %326
  %327 = phi ptr [ %331, %326 ], [ %313, %311 ]
  %328 = phi i64 [ %333, %326 ], [ 0, %311 ]
  %329 = phi ptr [ %332, %326 ], [ %314, %311 ]
  %330 = load ptr, ptr %9, align 8, !tbaa !26
  call fastcc void @SetPixelPacket(ptr noundef %330, ptr noundef nonnull %14, ptr noundef %327, ptr noundef %329) #16
  %331 = getelementptr inbounds %struct._PixelPacket, ptr %327, i64 1
  %332 = getelementptr inbounds i16, ptr %329, i64 1
  %333 = add nuw nsw i64 %328, 1
  %334 = load ptr, ptr %5, align 8, !tbaa !26
  %335 = getelementptr inbounds %struct._FrameInfo, ptr %334, i64 0, i32 5
  %336 = load i64, ptr %335, align 8, !tbaa !27
  %337 = icmp slt i64 %333, %336
  br i1 %337, label %326, label %338, !llvm.loop !56

338:                                              ; preds = %326, %311
  %339 = phi ptr [ %312, %311 ], [ %334, %326 ]
  %340 = phi ptr [ %314, %311 ], [ %332, %326 ]
  %341 = phi ptr [ %313, %311 ], [ %331, %326 ]
  %342 = phi i64 [ %317, %311 ], [ %336, %326 ]
  %343 = load ptr, ptr %9, align 8, !tbaa !26
  %344 = getelementptr inbounds %struct._Image, ptr %343, i64 0, i32 7
  %345 = load i64, ptr %344, align 8, !tbaa !33
  %346 = shl nsw i64 %342, 1
  %347 = sub i64 %345, %346
  %348 = icmp sgt i64 %347, 0
  br i1 %348, label %358, label %351

349:                                              ; preds = %358
  %350 = load ptr, ptr %5, align 8, !tbaa !26
  br label %351

351:                                              ; preds = %349, %338
  %352 = phi ptr [ %339, %338 ], [ %350, %349 ]
  %353 = phi ptr [ %340, %338 ], [ %364, %349 ]
  %354 = phi ptr [ %341, %338 ], [ %363, %349 ]
  %355 = getelementptr inbounds %struct._FrameInfo, ptr %352, i64 0, i32 5
  %356 = load i64, ptr %355, align 8, !tbaa !27
  %357 = icmp sgt i64 %356, 0
  br i1 %357, label %367, label %379

358:                                              ; preds = %338, %358
  %359 = phi ptr [ %363, %358 ], [ %341, %338 ]
  %360 = phi i64 [ %365, %358 ], [ 0, %338 ]
  %361 = phi ptr [ %364, %358 ], [ %340, %338 ]
  %362 = load ptr, ptr %9, align 8, !tbaa !26
  call fastcc void @SetPixelPacket(ptr noundef %362, ptr noundef nonnull %16, ptr noundef %359, ptr noundef %361) #16
  %363 = getelementptr inbounds %struct._PixelPacket, ptr %359, i64 1
  %364 = getelementptr inbounds i16, ptr %361, i64 1
  %365 = add nuw nsw i64 %360, 1
  %366 = icmp eq i64 %365, %347
  br i1 %366, label %349, label %358, !llvm.loop !57

367:                                              ; preds = %351, %367
  %368 = phi ptr [ %372, %367 ], [ %354, %351 ]
  %369 = phi i64 [ %374, %367 ], [ 0, %351 ]
  %370 = phi ptr [ %373, %367 ], [ %353, %351 ]
  %371 = load ptr, ptr %9, align 8, !tbaa !26
  call fastcc void @SetPixelPacket(ptr noundef %371, ptr noundef nonnull %17, ptr noundef %368, ptr noundef %370) #16
  %372 = getelementptr inbounds %struct._PixelPacket, ptr %368, i64 1
  %373 = getelementptr inbounds i16, ptr %370, i64 1
  %374 = add nuw nsw i64 %369, 1
  %375 = load ptr, ptr %5, align 8, !tbaa !26
  %376 = getelementptr inbounds %struct._FrameInfo, ptr %375, i64 0, i32 5
  %377 = load i64, ptr %376, align 8, !tbaa !27
  %378 = icmp slt i64 %374, %377
  br i1 %378, label %367, label %379, !llvm.loop !58

379:                                              ; preds = %367, %351
  %380 = phi ptr [ %352, %351 ], [ %375, %367 ]
  %381 = phi ptr [ %353, %351 ], [ %373, %367 ]
  %382 = phi ptr [ %354, %351 ], [ %372, %367 ]
  %383 = add nuw nsw i64 %315, 1
  %384 = getelementptr inbounds %struct._FrameInfo, ptr %380, i64 0, i32 3
  %385 = load i64, ptr %384, align 8, !tbaa !34
  %386 = load i64, ptr %19, align 8, !tbaa !25
  %387 = sub i64 %385, %386
  %388 = icmp slt i64 %383, %387
  br i1 %388, label %311, label %319, !llvm.loop !59

389:                                              ; preds = %319, %537
  %390 = phi ptr [ %538, %537 ], [ %320, %319 ]
  %391 = phi i64 [ %545, %537 ], [ 0, %319 ]
  %392 = phi ptr [ %540, %537 ], [ %322, %319 ]
  %393 = phi ptr [ %539, %537 ], [ %321, %319 ]
  %394 = phi i64 [ %541, %537 ], [ 0, %319 ]
  %395 = getelementptr inbounds %struct._FrameInfo, ptr %390, i64 0, i32 5
  %396 = load i64, ptr %395, align 8, !tbaa !27
  %397 = icmp sgt i64 %396, 0
  br i1 %397, label %407, label %398

398:                                              ; preds = %407, %389
  %399 = phi ptr [ %390, %389 ], [ %415, %407 ]
  %400 = phi ptr [ %393, %389 ], [ %413, %407 ]
  %401 = phi ptr [ %392, %389 ], [ %412, %407 ]
  %402 = getelementptr inbounds %struct._FrameInfo, ptr %399, i64 0, i32 2
  %403 = load i64, ptr %402, align 8, !tbaa !31
  %404 = load i64, ptr %19, align 8, !tbaa !25
  %405 = sub i64 %403, %404
  %406 = icmp sgt i64 %405, 0
  br i1 %406, label %419, label %433

407:                                              ; preds = %389, %407
  %408 = phi ptr [ %412, %407 ], [ %392, %389 ]
  %409 = phi i64 [ %414, %407 ], [ 0, %389 ]
  %410 = phi ptr [ %413, %407 ], [ %393, %389 ]
  %411 = load ptr, ptr %9, align 8, !tbaa !26
  call fastcc void @SetPixelPacket(ptr noundef %411, ptr noundef nonnull %14, ptr noundef %408, ptr noundef %410) #16
  %412 = getelementptr inbounds %struct._PixelPacket, ptr %408, i64 1
  %413 = getelementptr inbounds i16, ptr %410, i64 1
  %414 = add nuw nsw i64 %409, 1
  %415 = load ptr, ptr %5, align 8, !tbaa !26
  %416 = getelementptr inbounds %struct._FrameInfo, ptr %415, i64 0, i32 5
  %417 = load i64, ptr %416, align 8, !tbaa !27
  %418 = icmp slt i64 %414, %417
  br i1 %418, label %407, label %398, !llvm.loop !60

419:                                              ; preds = %398, %419
  %420 = phi ptr [ %424, %419 ], [ %401, %398 ]
  %421 = phi i64 [ %426, %419 ], [ 0, %398 ]
  %422 = phi ptr [ %425, %419 ], [ %400, %398 ]
  %423 = load ptr, ptr %9, align 8, !tbaa !26
  call fastcc void @SetPixelPacket(ptr noundef %423, ptr noundef nonnull %16, ptr noundef %420, ptr noundef %422) #16
  %424 = getelementptr inbounds %struct._PixelPacket, ptr %420, i64 1
  %425 = getelementptr inbounds i16, ptr %422, i64 1
  %426 = add nuw nsw i64 %421, 1
  %427 = load ptr, ptr %5, align 8, !tbaa !26
  %428 = getelementptr inbounds %struct._FrameInfo, ptr %427, i64 0, i32 2
  %429 = load i64, ptr %428, align 8, !tbaa !31
  %430 = load i64, ptr %19, align 8, !tbaa !25
  %431 = sub i64 %429, %430
  %432 = icmp slt i64 %426, %431
  br i1 %432, label %419, label %433, !llvm.loop !61

433:                                              ; preds = %419, %398
  %434 = phi ptr [ %399, %398 ], [ %427, %419 ]
  %435 = phi ptr [ %400, %398 ], [ %425, %419 ]
  %436 = phi ptr [ %401, %398 ], [ %424, %419 ]
  %437 = load ptr, ptr %4, align 8, !tbaa !26
  %438 = getelementptr inbounds %struct._Image, ptr %437, i64 0, i32 7
  %439 = load i64, ptr %438, align 8, !tbaa !33
  %440 = getelementptr inbounds %struct._FrameInfo, ptr %434, i64 0, i32 4
  %441 = load i64, ptr %440, align 8, !tbaa !29
  %442 = shl i64 %441, 1
  %443 = sub i64 %439, %394
  %444 = add i64 %443, %442
  %445 = icmp sgt i64 %444, 0
  br i1 %445, label %446, label %457

446:                                              ; preds = %433
  %447 = add i64 %439, %391
  br label %466

448:                                              ; preds = %466
  %449 = add i64 %447, %442
  %450 = load ptr, ptr %4, align 8, !tbaa !26
  %451 = getelementptr inbounds %struct._Image, ptr %450, i64 0, i32 7
  %452 = load i64, ptr %451, align 8, !tbaa !33
  %453 = load ptr, ptr %5, align 8, !tbaa !26
  %454 = getelementptr inbounds %struct._FrameInfo, ptr %453, i64 0, i32 4
  %455 = load i64, ptr %454, align 8, !tbaa !29
  %456 = shl nsw i64 %455, 1
  br label %457

457:                                              ; preds = %448, %433
  %458 = phi i64 [ %456, %448 ], [ %442, %433 ]
  %459 = phi ptr [ %453, %448 ], [ %434, %433 ]
  %460 = phi i64 [ %452, %448 ], [ %439, %433 ]
  %461 = phi ptr [ %474, %448 ], [ %435, %433 ]
  %462 = phi i64 [ %449, %448 ], [ 0, %433 ]
  %463 = phi ptr [ %473, %448 ], [ %436, %433 ]
  %464 = add i64 %458, %460
  %465 = icmp slt i64 %462, %464
  br i1 %465, label %477, label %494

466:                                              ; preds = %446, %466
  %467 = phi ptr [ %473, %466 ], [ %436, %446 ]
  %468 = phi i64 [ %475, %466 ], [ 0, %446 ]
  %469 = phi ptr [ %474, %466 ], [ %435, %446 ]
  %470 = icmp ult i64 %468, %394
  %471 = load ptr, ptr %9, align 8, !tbaa !26
  %472 = select i1 %470, ptr %17, ptr %18
  call fastcc void @SetPixelPacket(ptr noundef %471, ptr noundef nonnull %472, ptr noundef %467, ptr noundef %469) #16
  %473 = getelementptr inbounds %struct._PixelPacket, ptr %467, i64 1
  %474 = getelementptr inbounds i16, ptr %469, i64 1
  %475 = add nuw nsw i64 %468, 1
  %476 = icmp slt i64 %475, %444
  br i1 %476, label %466, label %448, !llvm.loop !62

477:                                              ; preds = %457, %477
  %478 = phi ptr [ %482, %477 ], [ %463, %457 ]
  %479 = phi i64 [ %484, %477 ], [ %462, %457 ]
  %480 = phi ptr [ %483, %477 ], [ %461, %457 ]
  %481 = load ptr, ptr %9, align 8, !tbaa !26
  call fastcc void @SetPixelPacket(ptr noundef %481, ptr noundef nonnull %14, ptr noundef %478, ptr noundef %480) #16
  %482 = getelementptr inbounds %struct._PixelPacket, ptr %478, i64 1
  %483 = getelementptr inbounds i16, ptr %480, i64 1
  %484 = add nuw nsw i64 %479, 1
  %485 = load ptr, ptr %4, align 8, !tbaa !26
  %486 = getelementptr inbounds %struct._Image, ptr %485, i64 0, i32 7
  %487 = load i64, ptr %486, align 8, !tbaa !33
  %488 = load ptr, ptr %5, align 8, !tbaa !26
  %489 = getelementptr inbounds %struct._FrameInfo, ptr %488, i64 0, i32 4
  %490 = load i64, ptr %489, align 8, !tbaa !29
  %491 = shl nsw i64 %490, 1
  %492 = add i64 %491, %487
  %493 = icmp slt i64 %484, %492
  br i1 %493, label %477, label %494, !llvm.loop !63

494:                                              ; preds = %477, %457
  %495 = phi ptr [ %459, %457 ], [ %488, %477 ]
  %496 = phi ptr [ %461, %457 ], [ %483, %477 ]
  %497 = phi ptr [ %463, %457 ], [ %482, %477 ]
  %498 = phi i64 [ %460, %457 ], [ %487, %477 ]
  %499 = load i64, ptr %495, align 8, !tbaa !30
  %500 = getelementptr inbounds %struct._FrameInfo, ptr %495, i64 0, i32 2
  %501 = load i64, ptr %500, align 8, !tbaa !31
  %502 = load i64, ptr %19, align 8, !tbaa !25
  %503 = add i64 %498, %501
  %504 = add i64 %503, %502
  %505 = sub i64 %499, %504
  %506 = icmp sgt i64 %505, 0
  br i1 %506, label %516, label %509

507:                                              ; preds = %516
  %508 = load ptr, ptr %5, align 8, !tbaa !26
  br label %509

509:                                              ; preds = %507, %494
  %510 = phi ptr [ %495, %494 ], [ %508, %507 ]
  %511 = phi ptr [ %496, %494 ], [ %522, %507 ]
  %512 = phi ptr [ %497, %494 ], [ %521, %507 ]
  %513 = getelementptr inbounds %struct._FrameInfo, ptr %510, i64 0, i32 5
  %514 = load i64, ptr %513, align 8, !tbaa !27
  %515 = icmp sgt i64 %514, 0
  br i1 %515, label %525, label %537

516:                                              ; preds = %494, %516
  %517 = phi ptr [ %521, %516 ], [ %497, %494 ]
  %518 = phi i64 [ %523, %516 ], [ 0, %494 ]
  %519 = phi ptr [ %522, %516 ], [ %496, %494 ]
  %520 = load ptr, ptr %9, align 8, !tbaa !26
  call fastcc void @SetPixelPacket(ptr noundef %520, ptr noundef nonnull %16, ptr noundef %517, ptr noundef %519) #16
  %521 = getelementptr inbounds %struct._PixelPacket, ptr %517, i64 1
  %522 = getelementptr inbounds i16, ptr %519, i64 1
  %523 = add nuw nsw i64 %518, 1
  %524 = icmp eq i64 %523, %505
  br i1 %524, label %507, label %516, !llvm.loop !64

525:                                              ; preds = %509, %525
  %526 = phi ptr [ %530, %525 ], [ %512, %509 ]
  %527 = phi i64 [ %532, %525 ], [ 0, %509 ]
  %528 = phi ptr [ %531, %525 ], [ %511, %509 ]
  %529 = load ptr, ptr %9, align 8, !tbaa !26
  call fastcc void @SetPixelPacket(ptr noundef %529, ptr noundef nonnull %17, ptr noundef %526, ptr noundef %528) #16
  %530 = getelementptr inbounds %struct._PixelPacket, ptr %526, i64 1
  %531 = getelementptr inbounds i16, ptr %528, i64 1
  %532 = add nuw nsw i64 %527, 1
  %533 = load ptr, ptr %5, align 8, !tbaa !26
  %534 = getelementptr inbounds %struct._FrameInfo, ptr %533, i64 0, i32 5
  %535 = load i64, ptr %534, align 8, !tbaa !27
  %536 = icmp slt i64 %532, %535
  br i1 %536, label %525, label %537, !llvm.loop !65

537:                                              ; preds = %525, %509
  %538 = phi ptr [ %510, %509 ], [ %533, %525 ]
  %539 = phi ptr [ %511, %509 ], [ %531, %525 ]
  %540 = phi ptr [ %512, %509 ], [ %530, %525 ]
  %541 = add nuw nsw i64 %394, 1
  %542 = getelementptr inbounds %struct._FrameInfo, ptr %538, i64 0, i32 4
  %543 = load i64, ptr %542, align 8, !tbaa !29
  %544 = icmp slt i64 %541, %543
  %545 = add nsw i64 %391, -1
  br i1 %544, label %389, label %546, !llvm.loop !66

546:                                              ; preds = %537, %319
  %547 = load ptr, ptr %8, align 8, !tbaa !26
  %548 = load ptr, ptr %6, align 8, !tbaa !26
  %549 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %547, ptr noundef %548) #17
  br label %550

550:                                              ; preds = %234, %546, %215
  %551 = call i64 @GetMagickResourceLimit(i32 noundef 6) #15
  %552 = and i64 %551, 576460752303423487
  %553 = icmp eq i64 %552, 0
  br i1 %553, label %554, label %564

554:                                              ; preds = %550
  %555 = load ptr, ptr %4, align 8, !tbaa !26
  %556 = call i32 @GetImagePixelCacheType(ptr noundef %555) #15
  %557 = icmp eq i32 %556, 3
  br i1 %557, label %564, label %558

558:                                              ; preds = %554
  %559 = load ptr, ptr %9, align 8, !tbaa !26
  %560 = call i32 @GetImagePixelCacheType(ptr noundef %559) #15
  %561 = icmp eq i32 %560, 3
  br i1 %561, label %564, label %562

562:                                              ; preds = %558
  %563 = call i64 @GetMagickResourceLimit(i32 noundef 6) #15
  br label %568

564:                                              ; preds = %558, %554, %550
  %565 = call i64 @GetMagickResourceLimit(i32 noundef 6) #15
  %566 = icmp ult i64 %565, 2
  %567 = select i1 %566, i64 1, i64 2
  br label %568

568:                                              ; preds = %564, %562
  %569 = phi i64 [ %563, %562 ], [ %567, %564 ]
  %570 = trunc i64 %569 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %20, i32 %570)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 13, ptr nonnull @FrameImage.omp_outlined, ptr nonnull %4, ptr nonnull %10, ptr nonnull %8, ptr nonnull %5, ptr nonnull %9, ptr nonnull %6, ptr nonnull %14, ptr nonnull %19, ptr nonnull %16, ptr nonnull %17, ptr nonnull %15, ptr nonnull %7, ptr nonnull %11)
  %571 = load ptr, ptr %5, align 8, !tbaa !26
  %572 = getelementptr inbounds %struct._FrameInfo, ptr %571, i64 0, i32 4
  %573 = load i64, ptr %572, align 8, !tbaa !29
  %574 = getelementptr inbounds %struct._FrameInfo, ptr %571, i64 0, i32 1
  %575 = load i64, ptr %574, align 8, !tbaa !32
  %576 = getelementptr inbounds %struct._FrameInfo, ptr %571, i64 0, i32 3
  %577 = load i64, ptr %576, align 8, !tbaa !34
  %578 = load ptr, ptr %4, align 8, !tbaa !26
  %579 = getelementptr inbounds %struct._Image, ptr %578, i64 0, i32 8
  %580 = load i64, ptr %579, align 8, !tbaa !35
  %581 = load i64, ptr %19, align 8, !tbaa !25
  %582 = getelementptr inbounds %struct._FrameInfo, ptr %571, i64 0, i32 5
  %583 = load i64, ptr %582, align 8, !tbaa !27
  %584 = add i64 %575, %573
  %585 = add i64 %577, %580
  %586 = add i64 %585, %581
  %587 = sub i64 %584, %586
  %588 = add i64 %587, %583
  %589 = icmp eq i64 %588, 0
  br i1 %589, label %889, label %590

590:                                              ; preds = %568
  %591 = load ptr, ptr %8, align 8, !tbaa !26
  %592 = load ptr, ptr %9, align 8, !tbaa !26
  %593 = getelementptr inbounds %struct._Image, ptr %592, i64 0, i32 8
  %594 = load i64, ptr %593, align 8, !tbaa !35
  %595 = sub i64 %594, %588
  %596 = getelementptr inbounds %struct._Image, ptr %592, i64 0, i32 7
  %597 = load i64, ptr %596, align 8, !tbaa !33
  %598 = load ptr, ptr %6, align 8, !tbaa !26
  %599 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %591, i64 noundef 0, i64 noundef %595, i64 noundef %597, i64 noundef %588, ptr noundef %598) #17
  %600 = icmp eq ptr %599, null
  br i1 %600, label %889, label %601

601:                                              ; preds = %590
  %602 = load ptr, ptr %8, align 8, !tbaa !26
  %603 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %602) #15
  %604 = load ptr, ptr %5, align 8, !tbaa !26
  %605 = getelementptr inbounds %struct._FrameInfo, ptr %604, i64 0, i32 4
  %606 = load i64, ptr %605, align 8, !tbaa !29
  %607 = icmp sgt i64 %606, 0
  br i1 %607, label %612, label %751

608:                                              ; preds = %739, %723
  %609 = phi ptr [ %724, %723 ], [ %747, %739 ]
  %610 = phi ptr [ %725, %723 ], [ %745, %739 ]
  %611 = phi ptr [ %726, %723 ], [ %744, %739 ]
  br i1 %648, label %612, label %751, !llvm.loop !67

612:                                              ; preds = %601, %608
  %613 = phi ptr [ %609, %608 ], [ %604, %601 ]
  %614 = phi i64 [ %618, %608 ], [ %606, %601 ]
  %615 = phi i64 [ %619, %608 ], [ %606, %601 ]
  %616 = phi ptr [ %611, %608 ], [ %599, %601 ]
  %617 = phi ptr [ %610, %608 ], [ %603, %601 ]
  %618 = add nsw i64 %614, -1
  %619 = add nsw i64 %615, -1
  %620 = getelementptr inbounds %struct._FrameInfo, ptr %613, i64 0, i32 5
  %621 = load i64, ptr %620, align 8, !tbaa !27
  %622 = icmp sgt i64 %621, 0
  br i1 %622, label %632, label %623

623:                                              ; preds = %632, %612
  %624 = phi ptr [ %613, %612 ], [ %640, %632 ]
  %625 = phi ptr [ %617, %612 ], [ %638, %632 ]
  %626 = phi ptr [ %616, %612 ], [ %637, %632 ]
  %627 = getelementptr inbounds %struct._FrameInfo, ptr %624, i64 0, i32 2
  %628 = load i64, ptr %627, align 8, !tbaa !31
  %629 = load i64, ptr %19, align 8, !tbaa !25
  %630 = sub i64 %628, %629
  %631 = icmp sgt i64 %630, 0
  br i1 %631, label %649, label %644

632:                                              ; preds = %612, %632
  %633 = phi ptr [ %637, %632 ], [ %616, %612 ]
  %634 = phi i64 [ %639, %632 ], [ 0, %612 ]
  %635 = phi ptr [ %638, %632 ], [ %617, %612 ]
  %636 = load ptr, ptr %9, align 8, !tbaa !26
  call fastcc void @SetPixelPacket(ptr noundef %636, ptr noundef nonnull %14, ptr noundef %633, ptr noundef %635) #16
  %637 = getelementptr inbounds %struct._PixelPacket, ptr %633, i64 1
  %638 = getelementptr inbounds i16, ptr %635, i64 1
  %639 = add nuw nsw i64 %634, 1
  %640 = load ptr, ptr %5, align 8, !tbaa !26
  %641 = getelementptr inbounds %struct._FrameInfo, ptr %640, i64 0, i32 5
  %642 = load i64, ptr %641, align 8, !tbaa !27
  %643 = icmp slt i64 %639, %642
  br i1 %643, label %632, label %623, !llvm.loop !68

644:                                              ; preds = %649, %623
  %645 = phi ptr [ %624, %623 ], [ %657, %649 ]
  %646 = phi ptr [ %625, %623 ], [ %655, %649 ]
  %647 = phi ptr [ %626, %623 ], [ %654, %649 ]
  %648 = icmp sgt i64 %615, 1
  br i1 %648, label %678, label %665

649:                                              ; preds = %623, %649
  %650 = phi ptr [ %654, %649 ], [ %626, %623 ]
  %651 = phi i64 [ %656, %649 ], [ 0, %623 ]
  %652 = phi ptr [ %655, %649 ], [ %625, %623 ]
  %653 = load ptr, ptr %9, align 8, !tbaa !26
  call fastcc void @SetPixelPacket(ptr noundef %653, ptr noundef nonnull %16, ptr noundef %650, ptr noundef %652) #16
  %654 = getelementptr inbounds %struct._PixelPacket, ptr %650, i64 1
  %655 = getelementptr inbounds i16, ptr %652, i64 1
  %656 = add nuw nsw i64 %651, 1
  %657 = load ptr, ptr %5, align 8, !tbaa !26
  %658 = getelementptr inbounds %struct._FrameInfo, ptr %657, i64 0, i32 2
  %659 = load i64, ptr %658, align 8, !tbaa !31
  %660 = load i64, ptr %19, align 8, !tbaa !25
  %661 = sub i64 %659, %660
  %662 = icmp slt i64 %656, %661
  br i1 %662, label %649, label %644, !llvm.loop !69

663:                                              ; preds = %678
  %664 = load ptr, ptr %5, align 8, !tbaa !26
  br label %665

665:                                              ; preds = %663, %644
  %666 = phi ptr [ %645, %644 ], [ %664, %663 ]
  %667 = phi ptr [ %646, %644 ], [ %684, %663 ]
  %668 = phi i64 [ 0, %644 ], [ %618, %663 ]
  %669 = phi ptr [ %647, %644 ], [ %683, %663 ]
  %670 = load ptr, ptr %4, align 8, !tbaa !26
  %671 = getelementptr inbounds %struct._Image, ptr %670, i64 0, i32 7
  %672 = load i64, ptr %671, align 8, !tbaa !33
  %673 = getelementptr inbounds %struct._FrameInfo, ptr %666, i64 0, i32 4
  %674 = load i64, ptr %673, align 8, !tbaa !29
  %675 = shl nsw i64 %674, 1
  %676 = add i64 %675, %672
  %677 = icmp slt i64 %668, %676
  br i1 %677, label %687, label %708

678:                                              ; preds = %644, %678
  %679 = phi ptr [ %683, %678 ], [ %647, %644 ]
  %680 = phi i64 [ %685, %678 ], [ 0, %644 ]
  %681 = phi ptr [ %684, %678 ], [ %646, %644 ]
  %682 = load ptr, ptr %9, align 8, !tbaa !26
  call fastcc void @SetPixelPacket(ptr noundef %682, ptr noundef nonnull %17, ptr noundef %679, ptr noundef %681) #16
  %683 = getelementptr inbounds %struct._PixelPacket, ptr %679, i64 1
  %684 = getelementptr inbounds i16, ptr %681, i64 1
  %685 = add nuw nsw i64 %680, 1
  %686 = icmp slt i64 %685, %619
  br i1 %686, label %678, label %663, !llvm.loop !70

687:                                              ; preds = %665, %687
  %688 = phi i64 [ %706, %687 ], [ %676, %665 ]
  %689 = phi ptr [ %696, %687 ], [ %669, %665 ]
  %690 = phi i64 [ %698, %687 ], [ %668, %665 ]
  %691 = phi ptr [ %697, %687 ], [ %667, %665 ]
  %692 = sub i64 %688, %619
  %693 = icmp slt i64 %690, %692
  %694 = load ptr, ptr %9, align 8, !tbaa !26
  %695 = select i1 %693, ptr %12, ptr %14
  call fastcc void @SetPixelPacket(ptr noundef %694, ptr noundef nonnull %695, ptr noundef %689, ptr noundef %691) #16
  %696 = getelementptr inbounds %struct._PixelPacket, ptr %689, i64 1
  %697 = getelementptr inbounds i16, ptr %691, i64 1
  %698 = add nuw nsw i64 %690, 1
  %699 = load ptr, ptr %4, align 8, !tbaa !26
  %700 = getelementptr inbounds %struct._Image, ptr %699, i64 0, i32 7
  %701 = load i64, ptr %700, align 8, !tbaa !33
  %702 = load ptr, ptr %5, align 8, !tbaa !26
  %703 = getelementptr inbounds %struct._FrameInfo, ptr %702, i64 0, i32 4
  %704 = load i64, ptr %703, align 8, !tbaa !29
  %705 = shl nsw i64 %704, 1
  %706 = add i64 %705, %701
  %707 = icmp slt i64 %698, %706
  br i1 %707, label %687, label %708, !llvm.loop !71

708:                                              ; preds = %687, %665
  %709 = phi ptr [ %666, %665 ], [ %702, %687 ]
  %710 = phi ptr [ %667, %665 ], [ %697, %687 ]
  %711 = phi ptr [ %669, %665 ], [ %696, %687 ]
  %712 = phi i64 [ %672, %665 ], [ %701, %687 ]
  %713 = load i64, ptr %709, align 8, !tbaa !30
  %714 = getelementptr inbounds %struct._FrameInfo, ptr %709, i64 0, i32 2
  %715 = load i64, ptr %714, align 8, !tbaa !31
  %716 = load i64, ptr %19, align 8, !tbaa !25
  %717 = add i64 %712, %715
  %718 = add i64 %717, %716
  %719 = sub i64 %713, %718
  %720 = icmp sgt i64 %719, 0
  br i1 %720, label %730, label %723

721:                                              ; preds = %730
  %722 = load ptr, ptr %5, align 8, !tbaa !26
  br label %723

723:                                              ; preds = %721, %708
  %724 = phi ptr [ %709, %708 ], [ %722, %721 ]
  %725 = phi ptr [ %710, %708 ], [ %736, %721 ]
  %726 = phi ptr [ %711, %708 ], [ %735, %721 ]
  %727 = getelementptr inbounds %struct._FrameInfo, ptr %724, i64 0, i32 5
  %728 = load i64, ptr %727, align 8, !tbaa !27
  %729 = icmp sgt i64 %728, 0
  br i1 %729, label %739, label %608

730:                                              ; preds = %708, %730
  %731 = phi ptr [ %735, %730 ], [ %711, %708 ]
  %732 = phi i64 [ %737, %730 ], [ 0, %708 ]
  %733 = phi ptr [ %736, %730 ], [ %710, %708 ]
  %734 = load ptr, ptr %9, align 8, !tbaa !26
  call fastcc void @SetPixelPacket(ptr noundef %734, ptr noundef nonnull %16, ptr noundef %731, ptr noundef %733) #16
  %735 = getelementptr inbounds %struct._PixelPacket, ptr %731, i64 1
  %736 = getelementptr inbounds i16, ptr %733, i64 1
  %737 = add nuw nsw i64 %732, 1
  %738 = icmp eq i64 %737, %719
  br i1 %738, label %721, label %730, !llvm.loop !72

739:                                              ; preds = %723, %739
  %740 = phi ptr [ %744, %739 ], [ %726, %723 ]
  %741 = phi i64 [ %746, %739 ], [ 0, %723 ]
  %742 = phi ptr [ %745, %739 ], [ %725, %723 ]
  %743 = load ptr, ptr %9, align 8, !tbaa !26
  call fastcc void @SetPixelPacket(ptr noundef %743, ptr noundef nonnull %17, ptr noundef %740, ptr noundef %742) #16
  %744 = getelementptr inbounds %struct._PixelPacket, ptr %740, i64 1
  %745 = getelementptr inbounds i16, ptr %742, i64 1
  %746 = add nuw nsw i64 %741, 1
  %747 = load ptr, ptr %5, align 8, !tbaa !26
  %748 = getelementptr inbounds %struct._FrameInfo, ptr %747, i64 0, i32 5
  %749 = load i64, ptr %748, align 8, !tbaa !27
  %750 = icmp slt i64 %746, %749
  br i1 %750, label %739, label %608, !llvm.loop !73

751:                                              ; preds = %608, %601
  %752 = phi ptr [ %604, %601 ], [ %609, %608 ]
  %753 = phi ptr [ %603, %601 ], [ %610, %608 ]
  %754 = phi ptr [ %599, %601 ], [ %611, %608 ]
  %755 = getelementptr inbounds %struct._FrameInfo, ptr %752, i64 0, i32 1
  %756 = load i64, ptr %755, align 8, !tbaa !32
  %757 = getelementptr inbounds %struct._FrameInfo, ptr %752, i64 0, i32 3
  %758 = load i64, ptr %757, align 8, !tbaa !34
  %759 = load ptr, ptr %4, align 8, !tbaa !26
  %760 = getelementptr inbounds %struct._Image, ptr %759, i64 0, i32 8
  %761 = load i64, ptr %760, align 8, !tbaa !35
  %762 = load i64, ptr %19, align 8, !tbaa !25
  %763 = add i64 %758, %761
  %764 = add i64 %763, %762
  %765 = sub i64 %756, %764
  %766 = icmp sgt i64 %765, 0
  br i1 %766, label %767, label %834

767:                                              ; preds = %751, %828
  %768 = phi ptr [ %829, %828 ], [ %752, %751 ]
  %769 = phi ptr [ %831, %828 ], [ %754, %751 ]
  %770 = phi ptr [ %830, %828 ], [ %753, %751 ]
  %771 = phi i64 [ %832, %828 ], [ 0, %751 ]
  %772 = getelementptr inbounds %struct._FrameInfo, ptr %768, i64 0, i32 5
  %773 = load i64, ptr %772, align 8, !tbaa !27
  %774 = icmp sgt i64 %773, 0
  br i1 %774, label %775, label %787

775:                                              ; preds = %767, %775
  %776 = phi ptr [ %780, %775 ], [ %769, %767 ]
  %777 = phi i64 [ %782, %775 ], [ 0, %767 ]
  %778 = phi ptr [ %781, %775 ], [ %770, %767 ]
  %779 = load ptr, ptr %9, align 8, !tbaa !26
  call fastcc void @SetPixelPacket(ptr noundef %779, ptr noundef nonnull %14, ptr noundef %776, ptr noundef %778) #16
  %780 = getelementptr inbounds %struct._PixelPacket, ptr %776, i64 1
  %781 = getelementptr inbounds i16, ptr %778, i64 1
  %782 = add nuw nsw i64 %777, 1
  %783 = load ptr, ptr %5, align 8, !tbaa !26
  %784 = getelementptr inbounds %struct._FrameInfo, ptr %783, i64 0, i32 5
  %785 = load i64, ptr %784, align 8, !tbaa !27
  %786 = icmp slt i64 %782, %785
  br i1 %786, label %775, label %787, !llvm.loop !74

787:                                              ; preds = %775, %767
  %788 = phi ptr [ %768, %767 ], [ %783, %775 ]
  %789 = phi ptr [ %770, %767 ], [ %781, %775 ]
  %790 = phi ptr [ %769, %767 ], [ %780, %775 ]
  %791 = phi i64 [ %773, %767 ], [ %785, %775 ]
  %792 = load ptr, ptr %9, align 8, !tbaa !26
  %793 = getelementptr inbounds %struct._Image, ptr %792, i64 0, i32 7
  %794 = load i64, ptr %793, align 8, !tbaa !33
  %795 = shl nsw i64 %791, 1
  %796 = sub i64 %794, %795
  %797 = icmp sgt i64 %796, 0
  br i1 %797, label %807, label %800

798:                                              ; preds = %807
  %799 = load ptr, ptr %5, align 8, !tbaa !26
  br label %800

800:                                              ; preds = %798, %787
  %801 = phi ptr [ %788, %787 ], [ %799, %798 ]
  %802 = phi ptr [ %789, %787 ], [ %813, %798 ]
  %803 = phi ptr [ %790, %787 ], [ %812, %798 ]
  %804 = getelementptr inbounds %struct._FrameInfo, ptr %801, i64 0, i32 5
  %805 = load i64, ptr %804, align 8, !tbaa !27
  %806 = icmp sgt i64 %805, 0
  br i1 %806, label %816, label %828

807:                                              ; preds = %787, %807
  %808 = phi ptr [ %812, %807 ], [ %790, %787 ]
  %809 = phi i64 [ %814, %807 ], [ 0, %787 ]
  %810 = phi ptr [ %813, %807 ], [ %789, %787 ]
  %811 = load ptr, ptr %9, align 8, !tbaa !26
  call fastcc void @SetPixelPacket(ptr noundef %811, ptr noundef nonnull %16, ptr noundef %808, ptr noundef %810) #16
  %812 = getelementptr inbounds %struct._PixelPacket, ptr %808, i64 1
  %813 = getelementptr inbounds i16, ptr %810, i64 1
  %814 = add nuw nsw i64 %809, 1
  %815 = icmp eq i64 %814, %796
  br i1 %815, label %798, label %807, !llvm.loop !75

816:                                              ; preds = %800, %816
  %817 = phi ptr [ %821, %816 ], [ %803, %800 ]
  %818 = phi i64 [ %823, %816 ], [ 0, %800 ]
  %819 = phi ptr [ %822, %816 ], [ %802, %800 ]
  %820 = load ptr, ptr %9, align 8, !tbaa !26
  call fastcc void @SetPixelPacket(ptr noundef %820, ptr noundef nonnull %17, ptr noundef %817, ptr noundef %819) #16
  %821 = getelementptr inbounds %struct._PixelPacket, ptr %817, i64 1
  %822 = getelementptr inbounds i16, ptr %819, i64 1
  %823 = add nuw nsw i64 %818, 1
  %824 = load ptr, ptr %5, align 8, !tbaa !26
  %825 = getelementptr inbounds %struct._FrameInfo, ptr %824, i64 0, i32 5
  %826 = load i64, ptr %825, align 8, !tbaa !27
  %827 = icmp slt i64 %823, %826
  br i1 %827, label %816, label %828, !llvm.loop !76

828:                                              ; preds = %816, %800
  %829 = phi ptr [ %801, %800 ], [ %824, %816 ]
  %830 = phi ptr [ %802, %800 ], [ %822, %816 ]
  %831 = phi ptr [ %803, %800 ], [ %821, %816 ]
  %832 = add nuw nsw i64 %771, 1
  %833 = icmp eq i64 %832, %765
  br i1 %833, label %834, label %767, !llvm.loop !77

834:                                              ; preds = %828, %751
  %835 = phi ptr [ %752, %751 ], [ %829, %828 ]
  %836 = phi ptr [ %753, %751 ], [ %830, %828 ]
  %837 = phi ptr [ %754, %751 ], [ %831, %828 ]
  %838 = getelementptr inbounds %struct._FrameInfo, ptr %835, i64 0, i32 5
  %839 = load i64, ptr %838, align 8, !tbaa !27
  %840 = icmp sgt i64 %839, 0
  br i1 %840, label %844, label %885

841:                                              ; preds = %869, %852
  %842 = phi ptr [ %853, %852 ], [ %879, %869 ]
  %843 = phi ptr [ %855, %852 ], [ %878, %869 ]
  br i1 %851, label %844, label %885, !llvm.loop !78

844:                                              ; preds = %834, %841
  %845 = phi i64 [ %849, %841 ], [ %839, %834 ]
  %846 = phi i64 [ %850, %841 ], [ %839, %834 ]
  %847 = phi ptr [ %843, %841 ], [ %837, %834 ]
  %848 = phi ptr [ %842, %841 ], [ %836, %834 ]
  %849 = add nsw i64 %845, -1
  %850 = add nsw i64 %846, -1
  %851 = icmp ugt i64 %846, 1
  br i1 %851, label %860, label %852

852:                                              ; preds = %860, %844
  %853 = phi ptr [ %848, %844 ], [ %866, %860 ]
  %854 = phi i64 [ 0, %844 ], [ %849, %860 ]
  %855 = phi ptr [ %847, %844 ], [ %865, %860 ]
  %856 = load ptr, ptr %9, align 8, !tbaa !26
  %857 = getelementptr inbounds %struct._Image, ptr %856, i64 0, i32 7
  %858 = load i64, ptr %857, align 8, !tbaa !33
  %859 = icmp slt i64 %854, %858
  br i1 %859, label %869, label %841

860:                                              ; preds = %844, %860
  %861 = phi ptr [ %865, %860 ], [ %847, %844 ]
  %862 = phi i64 [ %867, %860 ], [ 0, %844 ]
  %863 = phi ptr [ %866, %860 ], [ %848, %844 ]
  %864 = load ptr, ptr %9, align 8, !tbaa !26
  call fastcc void @SetPixelPacket(ptr noundef %864, ptr noundef nonnull %14, ptr noundef %861, ptr noundef %863) #16
  %865 = getelementptr inbounds %struct._PixelPacket, ptr %861, i64 1
  %866 = getelementptr inbounds i16, ptr %863, i64 1
  %867 = add nuw nsw i64 %862, 1
  %868 = icmp slt i64 %867, %850
  br i1 %868, label %860, label %852, !llvm.loop !79

869:                                              ; preds = %852, %869
  %870 = phi i64 [ %883, %869 ], [ %858, %852 ]
  %871 = phi ptr [ %881, %869 ], [ %856, %852 ]
  %872 = phi ptr [ %878, %869 ], [ %855, %852 ]
  %873 = phi i64 [ %880, %869 ], [ %854, %852 ]
  %874 = phi ptr [ %879, %869 ], [ %853, %852 ]
  %875 = sub i64 %870, %850
  %876 = icmp slt i64 %873, %875
  %877 = select i1 %876, ptr %18, ptr %17
  call fastcc void @SetPixelPacket(ptr noundef nonnull %871, ptr noundef nonnull %877, ptr noundef %872, ptr noundef %874) #16
  %878 = getelementptr inbounds %struct._PixelPacket, ptr %872, i64 1
  %879 = getelementptr inbounds i16, ptr %874, i64 1
  %880 = add nuw nsw i64 %873, 1
  %881 = load ptr, ptr %9, align 8, !tbaa !26
  %882 = getelementptr inbounds %struct._Image, ptr %881, i64 0, i32 7
  %883 = load i64, ptr %882, align 8, !tbaa !33
  %884 = icmp slt i64 %880, %883
  br i1 %884, label %869, label %841, !llvm.loop !80

885:                                              ; preds = %841, %834
  %886 = load ptr, ptr %8, align 8, !tbaa !26
  %887 = load ptr, ptr %6, align 8, !tbaa !26
  %888 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %886, ptr noundef %887) #17
  br label %889

889:                                              ; preds = %590, %885, %568
  %890 = load ptr, ptr %8, align 8, !tbaa !26
  %891 = call ptr @DestroyCacheView(ptr noundef %890) #15
  store ptr %891, ptr %8, align 8, !tbaa !26
  %892 = load ptr, ptr %7, align 8, !tbaa !26
  %893 = call ptr @DestroyCacheView(ptr noundef %892) #15
  store ptr %893, ptr %7, align 8, !tbaa !26
  %894 = load ptr, ptr %4, align 8, !tbaa !26
  %895 = getelementptr inbounds %struct._Image, ptr %894, i64 0, i32 36
  %896 = load i32, ptr %895, align 8, !tbaa !81
  switch i32 %896, label %901 [
    i32 13, label %919
    i32 40, label %897
  ]

897:                                              ; preds = %889
  %898 = getelementptr inbounds %struct._Image, ptr %894, i64 0, i32 6
  %899 = load i32, ptr %898, align 8, !tbaa !39
  %900 = icmp eq i32 %899, 0
  br i1 %900, label %919, label %901

901:                                              ; preds = %889, %897
  %902 = load ptr, ptr %5, align 8, !tbaa !26
  %903 = getelementptr inbounds %struct._FrameInfo, ptr %902, i64 0, i32 5
  %904 = load i64, ptr %903, align 8, !tbaa !27
  %905 = getelementptr inbounds %struct._FrameInfo, ptr %902, i64 0, i32 2
  %906 = load i64, ptr %905, align 8, !tbaa !31
  %907 = load i64, ptr %19, align 8, !tbaa !25
  %908 = getelementptr inbounds %struct._FrameInfo, ptr %902, i64 0, i32 4
  %909 = load i64, ptr %908, align 8, !tbaa !29
  %910 = add i64 %909, %904
  %911 = add i64 %910, %906
  %912 = sub i64 %911, %907
  %913 = getelementptr inbounds %struct._FrameInfo, ptr %902, i64 0, i32 3
  %914 = load i64, ptr %913, align 8, !tbaa !34
  %915 = sub i64 %910, %907
  %916 = add i64 %915, %914
  %917 = load ptr, ptr %9, align 8, !tbaa !26
  %918 = call i32 @CompositeImage(ptr noundef %917, i32 noundef %896, ptr noundef nonnull %894, i64 noundef %912, i64 noundef %916) #15
  br label %919

919:                                              ; preds = %889, %901, %897
  %920 = load i32, ptr %10, align 4, !tbaa !50
  %921 = icmp eq i32 %920, 0
  %922 = load ptr, ptr %9, align 8, !tbaa !26
  br i1 %921, label %923, label %925

923:                                              ; preds = %919
  %924 = call ptr @DestroyImage(ptr noundef %922) #15
  br label %925

925:                                              ; preds = %919, %923, %61, %67, %58, %35
  %926 = phi ptr [ null, %35 ], [ null, %58 ], [ null, %67 ], [ null, %61 ], [ %924, %923 ], [ %922, %919 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %18) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %16) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  ret ptr %926
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
  %3 = load <2 x i16>, ptr %2, align 2, !tbaa !82
  %4 = uitofp <2 x i16> %3 to <2 x float>
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %6 = fsub <2 x float> %5, %4
  %7 = extractelement <2 x float> %6, i64 0
  %8 = tail call fastcc float @AbsolutePixelValue(float noundef %7) #16
  %9 = fpext float %8 to double
  %10 = fcmp olt double %9, 1.000000e-15
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = extractelement <2 x float> %4, i64 0
  %13 = load i16, ptr %0, align 2, !tbaa !83
  %14 = uitofp i16 %13 to float
  %15 = fsub float %12, %14
  %16 = tail call fastcc float @AbsolutePixelValue(float noundef %15) #16
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
  %4 = load <4 x i16>, ptr %0, align 2, !tbaa !82
  %5 = uitofp <4 x i16> %4 to <4 x float>
  %6 = shufflevector <4 x float> %5, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  store <4 x float> %6, ptr %3, align 8, !tbaa !47
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
  %3 = load i32, ptr %2, align 4, !tbaa !43
  %4 = icmp eq i32 %3, 13
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %6 = load float, ptr %5, align 8, !tbaa !84
  br i1 %4, label %20, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %9 = load float, ptr %8, align 4, !tbaa !85
  %10 = insertelement <2 x float> poison, float %6, i64 0
  %11 = insertelement <2 x float> %10, float %9, i64 1
  %12 = fpext <2 x float> %11 to <2 x double>
  %13 = fmul <2 x double> %12, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %14 = fptrunc <2 x double> %13 to <2 x float>
  %15 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %16 = load float, ptr %15, align 8, !tbaa !48
  %17 = fpext float %16 to double
  %18 = fmul double %17, 0x3EF0001000100010
  %19 = fptrunc double %18 to float
  br label %30

20:                                               ; preds = %1
  %21 = tail call float @DecodePixelGamma(float noundef %6) #17
  %22 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %23 = load float, ptr %22, align 4, !tbaa !85
  %24 = tail call float @DecodePixelGamma(float noundef %23) #17
  %25 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %26 = load float, ptr %25, align 8, !tbaa !48
  %27 = tail call float @DecodePixelGamma(float noundef %26) #17
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
  store i32 12, ptr %2, align 4, !tbaa !43
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
  store <2 x float> %70, ptr %61, align 8, !tbaa !47
  %71 = fmul float %60, 6.553500e+04
  %72 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  store float %71, ptr %72, align 8, !tbaa !48
  %73 = fmul float %54, 6.553500e+04
  br label %74

74:                                               ; preds = %42, %46
  %75 = phi float [ %73, %46 ], [ 6.553500e+04, %42 ]
  %76 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  store float %75, ptr %76, align 8, !tbaa !86
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
  %6 = load float, ptr %5, align 8, !tbaa !84
  %7 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %6) #16
  %8 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 2
  store i16 %7, ptr %8, align 2, !tbaa !87
  %9 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %10 = load float, ptr %9, align 4, !tbaa !85
  %11 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %10) #16
  %12 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 1
  store i16 %11, ptr %12, align 2, !tbaa !88
  %13 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %14 = load float, ptr %13, align 8, !tbaa !48
  %15 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %14) #16
  store i16 %15, ptr %2, align 2, !tbaa !83
  %16 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %17 = load float, ptr %16, align 4, !tbaa !49
  %18 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %17) #16
  %19 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 3
  store i16 %18, ptr %19, align 2, !tbaa !89
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !37
  %22 = icmp eq i32 %21, 12
  br i1 %22, label %28, label %23

23:                                               ; preds = %4
  %24 = load i32, ptr %0, align 8, !tbaa !90
  %25 = icmp eq i32 %24, 2
  %26 = icmp ne ptr %3, null
  %27 = and i1 %26, %25
  br i1 %27, label %30, label %34

28:                                               ; preds = %4
  %29 = icmp eq ptr %3, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %23, %28
  %31 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %32 = load float, ptr %31, align 8, !tbaa !86
  %33 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %32) #16
  store i16 %33, ptr %3, align 2, !tbaa !82
  br label %34

34:                                               ; preds = %28, %30, %23
  ret void
}

; Function Attrs: hot optsize
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @FrameImage.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %8, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %9, ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %10, ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %11, ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %12, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %13, ptr nocapture noundef nonnull align 8 dereferenceable(8) %14) #9 {
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = load ptr, ptr %2, align 8, !tbaa !26
  %21 = getelementptr inbounds %struct._Image, ptr %20, i64 0, i32 8
  %22 = load i64, ptr %21, align 8, !tbaa !35
  %23 = add nsw i64 %22, -1
  %24 = icmp sgt i64 %22, 0
  br i1 %24, label %25, label %279

25:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #10
  store i64 0, ptr %16, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #10
  store i64 %23, ptr %17, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #10
  store i64 1, ptr %18, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #10
  store i32 0, ptr %19, align 4, !tbaa !50
  %26 = load i32, ptr %0, align 4, !tbaa !50
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %26, i32 33, ptr nonnull %19, ptr nonnull %16, ptr nonnull %17, ptr nonnull %18, i64 1, i64 4)
  %27 = load i64, ptr %17, align 8
  %28 = call i64 @llvm.smin.i64(i64 %27, i64 %23)
  store i64 %28, ptr %17, align 8, !tbaa !25
  %29 = load i64, ptr %16, align 8, !tbaa !25
  %30 = icmp sgt i64 %29, %28
  br i1 %30, label %278, label %31

31:                                               ; preds = %25, %270
  %32 = phi i64 [ %276, %270 ], [ %28, %25 ]
  %33 = phi i64 [ %274, %270 ], [ %29, %25 ]
  %34 = icmp sgt i64 %33, %32
  br i1 %34, label %270, label %35

35:                                               ; preds = %31, %264
  %36 = phi i64 [ %265, %264 ], [ %33, %31 ]
  %37 = load i32, ptr %3, align 4, !tbaa !50
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %264, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %4, align 8, !tbaa !26
  %41 = load ptr, ptr %5, align 8, !tbaa !26
  %42 = getelementptr inbounds %struct._FrameInfo, ptr %41, i64 0, i32 3
  %43 = load i64, ptr %42, align 8, !tbaa !34
  %44 = add nsw i64 %43, %36
  %45 = load ptr, ptr %6, align 8, !tbaa !26
  %46 = getelementptr inbounds %struct._Image, ptr %45, i64 0, i32 7
  %47 = load i64, ptr %46, align 8, !tbaa !33
  %48 = load ptr, ptr %7, align 8, !tbaa !26
  %49 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %40, i64 noundef 0, i64 noundef %44, i64 noundef %47, i64 noundef 1, ptr noundef %48) #17
  %50 = icmp eq ptr %49, null
  br i1 %50, label %263, label %51

51:                                               ; preds = %39
  %52 = load ptr, ptr %4, align 8, !tbaa !26
  %53 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %52) #15
  %54 = load ptr, ptr %5, align 8, !tbaa !26
  %55 = getelementptr inbounds %struct._FrameInfo, ptr %54, i64 0, i32 5
  %56 = load i64, ptr %55, align 8, !tbaa !27
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %67, %51
  %59 = phi ptr [ %54, %51 ], [ %75, %67 ]
  %60 = phi ptr [ %49, %51 ], [ %72, %67 ]
  %61 = phi ptr [ %53, %51 ], [ %73, %67 ]
  %62 = getelementptr inbounds %struct._FrameInfo, ptr %59, i64 0, i32 2
  %63 = load i64, ptr %62, align 8, !tbaa !31
  %64 = load i64, ptr %9, align 8, !tbaa !25
  %65 = sub i64 %63, %64
  %66 = icmp sgt i64 %65, 0
  br i1 %66, label %86, label %79

67:                                               ; preds = %51, %67
  %68 = phi ptr [ %73, %67 ], [ %53, %51 ]
  %69 = phi i64 [ %74, %67 ], [ 0, %51 ]
  %70 = phi ptr [ %72, %67 ], [ %49, %51 ]
  %71 = load ptr, ptr %6, align 8, !tbaa !26
  call fastcc void @SetPixelPacket(ptr noundef %71, ptr noundef nonnull %8, ptr noundef nonnull %70, ptr noundef %68) #16
  %72 = getelementptr inbounds %struct._PixelPacket, ptr %70, i64 1
  %73 = getelementptr inbounds i16, ptr %68, i64 1
  %74 = add nuw nsw i64 %69, 1
  %75 = load ptr, ptr %5, align 8, !tbaa !26
  %76 = getelementptr inbounds %struct._FrameInfo, ptr %75, i64 0, i32 5
  %77 = load i64, ptr %76, align 8, !tbaa !27
  %78 = icmp slt i64 %74, %77
  br i1 %78, label %67, label %58, !llvm.loop !91

79:                                               ; preds = %86, %58
  %80 = phi ptr [ %59, %58 ], [ %94, %86 ]
  %81 = phi ptr [ %60, %58 ], [ %91, %86 ]
  %82 = phi ptr [ %61, %58 ], [ %92, %86 ]
  %83 = getelementptr inbounds %struct._FrameInfo, ptr %80, i64 0, i32 4
  %84 = load i64, ptr %83, align 8, !tbaa !29
  %85 = icmp sgt i64 %84, 0
  br i1 %85, label %100, label %112

86:                                               ; preds = %58, %86
  %87 = phi ptr [ %92, %86 ], [ %61, %58 ]
  %88 = phi i64 [ %93, %86 ], [ 0, %58 ]
  %89 = phi ptr [ %91, %86 ], [ %60, %58 ]
  %90 = load ptr, ptr %6, align 8, !tbaa !26
  call fastcc void @SetPixelPacket(ptr noundef %90, ptr noundef nonnull %10, ptr noundef nonnull %89, ptr noundef %87) #16
  %91 = getelementptr inbounds %struct._PixelPacket, ptr %89, i64 1
  %92 = getelementptr inbounds i16, ptr %87, i64 1
  %93 = add nuw nsw i64 %88, 1
  %94 = load ptr, ptr %5, align 8, !tbaa !26
  %95 = getelementptr inbounds %struct._FrameInfo, ptr %94, i64 0, i32 2
  %96 = load i64, ptr %95, align 8, !tbaa !31
  %97 = load i64, ptr %9, align 8, !tbaa !25
  %98 = sub i64 %96, %97
  %99 = icmp slt i64 %93, %98
  br i1 %99, label %86, label %79, !llvm.loop !92

100:                                              ; preds = %79, %100
  %101 = phi ptr [ %106, %100 ], [ %82, %79 ]
  %102 = phi i64 [ %107, %100 ], [ 0, %79 ]
  %103 = phi ptr [ %105, %100 ], [ %81, %79 ]
  %104 = load ptr, ptr %6, align 8, !tbaa !26
  call fastcc void @SetPixelPacket(ptr noundef %104, ptr noundef nonnull %11, ptr noundef nonnull %103, ptr noundef %101) #16
  %105 = getelementptr inbounds %struct._PixelPacket, ptr %103, i64 1
  %106 = getelementptr inbounds i16, ptr %101, i64 1
  %107 = add nuw nsw i64 %102, 1
  %108 = load ptr, ptr %5, align 8, !tbaa !26
  %109 = getelementptr inbounds %struct._FrameInfo, ptr %108, i64 0, i32 4
  %110 = load i64, ptr %109, align 8, !tbaa !29
  %111 = icmp slt i64 %107, %110
  br i1 %111, label %100, label %112, !llvm.loop !93

112:                                              ; preds = %100, %79
  %113 = phi ptr [ %81, %79 ], [ %105, %100 ]
  %114 = phi ptr [ %82, %79 ], [ %106, %100 ]
  %115 = load ptr, ptr %2, align 8, !tbaa !26
  %116 = getelementptr inbounds %struct._Image, ptr %115, i64 0, i32 36
  %117 = load i32, ptr %116, align 8, !tbaa !81
  switch i32 %117, label %122 [
    i32 13, label %138
    i32 40, label %118
  ]

118:                                              ; preds = %112
  %119 = getelementptr inbounds %struct._Image, ptr %115, i64 0, i32 6
  %120 = load i32, ptr %119, align 8, !tbaa !39
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %138, label %122

122:                                              ; preds = %112, %118
  %123 = getelementptr inbounds %struct._Image, ptr %115, i64 0, i32 7
  %124 = load i64, ptr %123, align 8, !tbaa !33
  %125 = icmp sgt i64 %124, 0
  br i1 %125, label %126, label %177

126:                                              ; preds = %122, %126
  %127 = phi ptr [ %132, %126 ], [ %114, %122 ]
  %128 = phi i64 [ %133, %126 ], [ 0, %122 ]
  %129 = phi ptr [ %131, %126 ], [ %113, %122 ]
  %130 = load ptr, ptr %6, align 8, !tbaa !26
  call fastcc void @SetPixelPacket(ptr noundef %130, ptr noundef nonnull %12, ptr noundef nonnull %129, ptr noundef %127) #16
  %131 = getelementptr inbounds %struct._PixelPacket, ptr %129, i64 1
  %132 = getelementptr inbounds i16, ptr %127, i64 1
  %133 = add nuw nsw i64 %128, 1
  %134 = load ptr, ptr %2, align 8, !tbaa !26
  %135 = getelementptr inbounds %struct._Image, ptr %134, i64 0, i32 7
  %136 = load i64, ptr %135, align 8, !tbaa !33
  %137 = icmp slt i64 %133, %136
  br i1 %137, label %126, label %177, !llvm.loop !94

138:                                              ; preds = %112, %118
  %139 = load ptr, ptr %13, align 8, !tbaa !26
  %140 = getelementptr inbounds %struct._Image, ptr %115, i64 0, i32 7
  %141 = load i64, ptr %140, align 8, !tbaa !33
  %142 = load ptr, ptr %7, align 8, !tbaa !26
  %143 = call ptr @GetCacheViewVirtualPixels(ptr noundef %139, i64 noundef 0, i64 noundef %36, i64 noundef %141, i64 noundef 1, ptr noundef %142) #17
  %144 = icmp eq ptr %143, null
  br i1 %144, label %263, label %145

145:                                              ; preds = %138
  %146 = load ptr, ptr %13, align 8, !tbaa !26
  %147 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %146) #15
  %148 = load ptr, ptr %2, align 8, !tbaa !26
  %149 = getelementptr inbounds %struct._Image, ptr %148, i64 0, i32 7
  %150 = load i64, ptr %149, align 8, !tbaa !33
  %151 = shl i64 %150, 3
  %152 = call ptr @CopyMagickMemory(ptr noundef nonnull %113, ptr noundef nonnull %143, i64 noundef %151) #15
  %153 = load ptr, ptr %2, align 8, !tbaa !26
  %154 = getelementptr inbounds %struct._Image, ptr %153, i64 0, i32 1
  %155 = load i32, ptr %154, align 4, !tbaa !37
  %156 = icmp eq i32 %155, 12
  br i1 %156, label %157, label %171

157:                                              ; preds = %145
  %158 = load ptr, ptr %6, align 8, !tbaa !26
  %159 = getelementptr inbounds %struct._Image, ptr %158, i64 0, i32 1
  %160 = load i32, ptr %159, align 4, !tbaa !37
  %161 = icmp eq i32 %160, 12
  br i1 %161, label %162, label %171

162:                                              ; preds = %157
  %163 = getelementptr inbounds %struct._Image, ptr %153, i64 0, i32 7
  %164 = load i64, ptr %163, align 8, !tbaa !33
  %165 = shl i64 %164, 1
  %166 = call ptr @CopyMagickMemory(ptr noundef %114, ptr noundef %147, i64 noundef %165) #15
  %167 = load ptr, ptr %2, align 8, !tbaa !26
  %168 = getelementptr inbounds %struct._Image, ptr %167, i64 0, i32 7
  %169 = load i64, ptr %168, align 8, !tbaa !33
  %170 = getelementptr inbounds i16, ptr %114, i64 %169
  br label %171

171:                                              ; preds = %145, %157, %162
  %172 = phi ptr [ %167, %162 ], [ %153, %157 ], [ %153, %145 ]
  %173 = phi ptr [ %170, %162 ], [ %114, %157 ], [ %114, %145 ]
  %174 = getelementptr inbounds %struct._Image, ptr %172, i64 0, i32 7
  %175 = load i64, ptr %174, align 8, !tbaa !33
  %176 = getelementptr inbounds %struct._PixelPacket, ptr %113, i64 %175
  br label %177

177:                                              ; preds = %126, %122, %171
  %178 = phi ptr [ %172, %171 ], [ %115, %122 ], [ %134, %126 ]
  %179 = phi ptr [ %176, %171 ], [ %113, %122 ], [ %131, %126 ]
  %180 = phi ptr [ %173, %171 ], [ %114, %122 ], [ %132, %126 ]
  %181 = load ptr, ptr %5, align 8, !tbaa !26
  %182 = getelementptr inbounds %struct._FrameInfo, ptr %181, i64 0, i32 4
  %183 = load i64, ptr %182, align 8, !tbaa !29
  %184 = icmp sgt i64 %183, 0
  br i1 %184, label %185, label %199

185:                                              ; preds = %177, %185
  %186 = phi ptr [ %191, %185 ], [ %180, %177 ]
  %187 = phi i64 [ %192, %185 ], [ 0, %177 ]
  %188 = phi ptr [ %190, %185 ], [ %179, %177 ]
  %189 = load ptr, ptr %6, align 8, !tbaa !26
  call fastcc void @SetPixelPacket(ptr noundef %189, ptr noundef nonnull %8, ptr noundef %188, ptr noundef %186) #16
  %190 = getelementptr inbounds %struct._PixelPacket, ptr %188, i64 1
  %191 = getelementptr inbounds i16, ptr %186, i64 1
  %192 = add nuw nsw i64 %187, 1
  %193 = load ptr, ptr %5, align 8, !tbaa !26
  %194 = getelementptr inbounds %struct._FrameInfo, ptr %193, i64 0, i32 4
  %195 = load i64, ptr %194, align 8, !tbaa !29
  %196 = icmp slt i64 %192, %195
  br i1 %196, label %185, label %197, !llvm.loop !95

197:                                              ; preds = %185
  %198 = load ptr, ptr %2, align 8, !tbaa !26
  br label %199

199:                                              ; preds = %197, %177
  %200 = phi ptr [ %178, %177 ], [ %198, %197 ]
  %201 = phi ptr [ %179, %177 ], [ %190, %197 ]
  %202 = phi ptr [ %180, %177 ], [ %191, %197 ]
  %203 = phi ptr [ %181, %177 ], [ %193, %197 ]
  %204 = load i64, ptr %203, align 8, !tbaa !30
  %205 = getelementptr inbounds %struct._FrameInfo, ptr %203, i64 0, i32 2
  %206 = load i64, ptr %205, align 8, !tbaa !31
  %207 = getelementptr inbounds %struct._Image, ptr %200, i64 0, i32 7
  %208 = load i64, ptr %207, align 8, !tbaa !33
  %209 = load i64, ptr %9, align 8, !tbaa !25
  %210 = add i64 %206, %208
  %211 = add i64 %210, %209
  %212 = sub i64 %204, %211
  %213 = icmp sgt i64 %212, 0
  br i1 %213, label %223, label %216

214:                                              ; preds = %223
  %215 = load ptr, ptr %5, align 8, !tbaa !26
  br label %216

216:                                              ; preds = %214, %199
  %217 = phi ptr [ %203, %199 ], [ %215, %214 ]
  %218 = phi ptr [ %201, %199 ], [ %228, %214 ]
  %219 = phi ptr [ %202, %199 ], [ %229, %214 ]
  %220 = getelementptr inbounds %struct._FrameInfo, ptr %217, i64 0, i32 5
  %221 = load i64, ptr %220, align 8, !tbaa !27
  %222 = icmp sgt i64 %221, 0
  br i1 %222, label %232, label %244

223:                                              ; preds = %199, %223
  %224 = phi ptr [ %229, %223 ], [ %202, %199 ]
  %225 = phi i64 [ %230, %223 ], [ 0, %199 ]
  %226 = phi ptr [ %228, %223 ], [ %201, %199 ]
  %227 = load ptr, ptr %6, align 8, !tbaa !26
  call fastcc void @SetPixelPacket(ptr noundef %227, ptr noundef nonnull %10, ptr noundef %226, ptr noundef %224) #16
  %228 = getelementptr inbounds %struct._PixelPacket, ptr %226, i64 1
  %229 = getelementptr inbounds i16, ptr %224, i64 1
  %230 = add nuw nsw i64 %225, 1
  %231 = icmp eq i64 %230, %212
  br i1 %231, label %214, label %223, !llvm.loop !96

232:                                              ; preds = %216, %232
  %233 = phi ptr [ %238, %232 ], [ %219, %216 ]
  %234 = phi i64 [ %239, %232 ], [ 0, %216 ]
  %235 = phi ptr [ %237, %232 ], [ %218, %216 ]
  %236 = load ptr, ptr %6, align 8, !tbaa !26
  call fastcc void @SetPixelPacket(ptr noundef %236, ptr noundef nonnull %11, ptr noundef %235, ptr noundef %233) #16
  %237 = getelementptr inbounds %struct._PixelPacket, ptr %235, i64 1
  %238 = getelementptr inbounds i16, ptr %233, i64 1
  %239 = add nuw nsw i64 %234, 1
  %240 = load ptr, ptr %5, align 8, !tbaa !26
  %241 = getelementptr inbounds %struct._FrameInfo, ptr %240, i64 0, i32 5
  %242 = load i64, ptr %241, align 8, !tbaa !27
  %243 = icmp slt i64 %239, %242
  br i1 %243, label %232, label %244, !llvm.loop !97

244:                                              ; preds = %232, %216
  %245 = load ptr, ptr %4, align 8, !tbaa !26
  %246 = load ptr, ptr %7, align 8, !tbaa !26
  %247 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %245, ptr noundef %246) #17
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %244
  store i32 0, ptr %3, align 4, !tbaa !50
  br label %250

250:                                              ; preds = %249, %244
  %251 = load ptr, ptr %2, align 8, !tbaa !26
  %252 = getelementptr inbounds %struct._Image, ptr %251, i64 0, i32 47
  %253 = load ptr, ptr %252, align 8, !tbaa !98
  %254 = icmp eq ptr %253, null
  br i1 %254, label %264, label %255

255:                                              ; preds = %250
  call void @__kmpc_critical(ptr nonnull @2, i32 %26, ptr nonnull @.gomp_critical_user_MagickCore_FrameImage.var)
  %256 = load ptr, ptr %2, align 8, !tbaa !26
  %257 = load i64, ptr %14, align 8, !tbaa !51
  %258 = add nsw i64 %257, 1
  store i64 %258, ptr %14, align 8, !tbaa !51
  %259 = getelementptr inbounds %struct._Image, ptr %256, i64 0, i32 8
  %260 = load i64, ptr %259, align 8, !tbaa !35
  %261 = call fastcc i32 @SetImageProgress(ptr noundef %256, ptr noundef nonnull @.str.5, i64 noundef %257, i64 noundef %260) #16
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %26, ptr nonnull @.gomp_critical_user_MagickCore_FrameImage.var)
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %264

263:                                              ; preds = %255, %138, %39
  store i32 0, ptr %3, align 4, !tbaa !50
  br label %264

264:                                              ; preds = %263, %250, %255, %35
  %265 = add nsw i64 %36, 1
  %266 = load i64, ptr %17, align 8, !tbaa !25
  %267 = icmp slt i64 %36, %266
  br i1 %267, label %35, label %268

268:                                              ; preds = %264
  %269 = load i64, ptr %16, align 8, !tbaa !25
  br label %270

270:                                              ; preds = %268, %31
  %271 = phi i64 [ %33, %31 ], [ %269, %268 ]
  %272 = phi i64 [ %32, %31 ], [ %266, %268 ]
  %273 = load i64, ptr %18, align 8, !tbaa !25
  %274 = add nsw i64 %273, %271
  store i64 %274, ptr %16, align 8, !tbaa !25
  %275 = add nsw i64 %273, %272
  %276 = call i64 @llvm.smin.i64(i64 %275, i64 %23)
  store i64 %276, ptr %17, align 8, !tbaa !25
  %277 = icmp sgt i64 %274, %276
  br i1 %277, label %278, label %31

278:                                              ; preds = %270, %25
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %26)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #10
  br label %279

279:                                              ; preds = %278, %15
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_8(ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i64) local_unnamed_addr #10

; Function Attrs: hot optsize
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CopyMagickMemory(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: convergent nounwind
declare void @__kmpc_critical(ptr, i32, ptr) local_unnamed_addr #11

; Function Attrs: convergent nounwind
declare void @__kmpc_end_critical(ptr, i32, ptr) local_unnamed_addr #11

; Function Attrs: noinline norecurse nounwind optsize uwtable
define internal fastcc i32 @SetImageProgress(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #12 {
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #10
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %7 = load ptr, ptr %6, align 8, !tbaa !98
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.6, ptr noundef %1, ptr noundef nonnull %10) #15
  %12 = load ptr, ptr %6, align 8, !tbaa !98
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %14 = load ptr, ptr %13, align 8, !tbaa !99
  %15 = call i32 %12(ptr noundef nonnull %5, i64 noundef %2, i64 noundef %3, ptr noundef %14) #15
  br label %16

16:                                               ; preds = %4, %9
  %17 = phi i32 [ %15, %9 ], [ 1, %4 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #10
  ret i32 %17
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #10

; Function Attrs: optsize
declare i64 @GetMagickResourceLimit(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GetImagePixelCacheType(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #10

; Function Attrs: nounwind
declare !callback !100 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #10

; Function Attrs: optsize
declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CompositeImage(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @AbsolutePixelValue(float noundef %0) unnamed_addr #5 {
  %2 = fcmp olt float %0, 0.000000e+00
  %3 = fneg float %0
  %4 = select i1 %2, float %3, float %0
  ret float %4
}

; Function Attrs: hot optsize
declare float @DecodePixelGamma(float noundef) local_unnamed_addr #8

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

; Function Attrs: optsize
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @RaiseImage(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %4, align 8, !tbaa !26
  store ptr %1, ptr %5, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #10
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %14 = load i32, ptr %13, align 8, !tbaa !6
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %18 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 717, ptr noundef nonnull @.str.2, ptr noundef nonnull %17) #15
  br label %19

19:                                               ; preds = %16, %3
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %21 = load i64, ptr %20, align 8, !tbaa !33
  %22 = load i64, ptr %1, align 8, !tbaa !102
  %23 = shl i64 %22, 1
  %24 = icmp ugt i64 %21, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %27 = load i64, ptr %26, align 8, !tbaa !35
  %28 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %29 = load i64, ptr %28, align 8, !tbaa !103
  %30 = shl i64 %29, 1
  %31 = icmp ugt i64 %27, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %19, %25
  %33 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %34 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %35 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %33, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 722, i32 noundef 410, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.4, ptr noundef nonnull %34) #15
  br label %106

36:                                               ; preds = %25
  store i16 -1, ptr %10, align 2, !tbaa !82
  store i16 0, ptr %11, align 2, !tbaa !82
  %37 = icmp eq i32 %2, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %36
  store i16 0, ptr %10, align 2, !tbaa !82
  store i16 -1, ptr %11, align 2, !tbaa !82
  br label %39

39:                                               ; preds = %38, %36
  %40 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #15
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %106, label %42

42:                                               ; preds = %39
  store i32 1, ptr %8, align 4, !tbaa !50
  store i64 0, ptr %9, align 8, !tbaa !51
  %43 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  store ptr %43, ptr %7, align 8, !tbaa !26
  %44 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %43) #15
  store ptr %44, ptr %6, align 8, !tbaa !26
  %45 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #15
  %46 = and i64 %45, 576460752303423487
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %42
  %49 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #15
  %50 = icmp eq i32 %49, 3
  br i1 %50, label %56, label %51

51:                                               ; preds = %48
  %52 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #15
  %53 = icmp eq i32 %52, 3
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #15
  br label %60

56:                                               ; preds = %51, %48, %42
  %57 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #15
  %58 = icmp ult i64 %57, 2
  %59 = select i1 %58, i64 1, i64 2
  br label %60

60:                                               ; preds = %56, %54
  %61 = phi i64 [ %55, %54 ], [ %59, %56 ]
  %62 = trunc i64 %61 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %12, i32 %62)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @RaiseImage.omp_outlined, ptr nonnull %5, ptr nonnull %8, ptr nonnull %6, ptr nonnull %4, ptr nonnull %7, ptr nonnull %10, ptr nonnull %11, ptr nonnull %9)
  %63 = call i64 @GetMagickResourceLimit(i32 noundef 6) #15
  %64 = and i64 %63, 576460752303423487
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %60
  %67 = load ptr, ptr %4, align 8, !tbaa !26
  %68 = call i32 @GetImagePixelCacheType(ptr noundef %67) #15
  %69 = icmp eq i32 %68, 3
  br i1 %69, label %76, label %70

70:                                               ; preds = %66
  %71 = load ptr, ptr %4, align 8, !tbaa !26
  %72 = call i32 @GetImagePixelCacheType(ptr noundef %71) #15
  %73 = icmp eq i32 %72, 3
  br i1 %73, label %76, label %74

74:                                               ; preds = %70
  %75 = call i64 @GetMagickResourceLimit(i32 noundef 6) #15
  br label %80

76:                                               ; preds = %70, %66, %60
  %77 = call i64 @GetMagickResourceLimit(i32 noundef 6) #15
  %78 = icmp ult i64 %77, 2
  %79 = select i1 %78, i64 1, i64 2
  br label %80

80:                                               ; preds = %76, %74
  %81 = phi i64 [ %75, %74 ], [ %79, %76 ]
  %82 = trunc i64 %81 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %12, i32 %82)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @RaiseImage.omp_outlined.9, ptr nonnull %5, ptr nonnull %4, ptr nonnull %8, ptr nonnull %6, ptr nonnull %7, ptr nonnull %10, ptr nonnull %11, ptr nonnull %9)
  %83 = call i64 @GetMagickResourceLimit(i32 noundef 6) #15
  %84 = and i64 %83, 576460752303423487
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %80
  %87 = load ptr, ptr %4, align 8, !tbaa !26
  %88 = call i32 @GetImagePixelCacheType(ptr noundef %87) #15
  %89 = icmp eq i32 %88, 3
  br i1 %89, label %96, label %90

90:                                               ; preds = %86
  %91 = load ptr, ptr %4, align 8, !tbaa !26
  %92 = call i32 @GetImagePixelCacheType(ptr noundef %91) #15
  %93 = icmp eq i32 %92, 3
  br i1 %93, label %96, label %94

94:                                               ; preds = %90
  %95 = call i64 @GetMagickResourceLimit(i32 noundef 6) #15
  br label %100

96:                                               ; preds = %90, %86, %80
  %97 = call i64 @GetMagickResourceLimit(i32 noundef 6) #15
  %98 = icmp ult i64 %97, 2
  %99 = select i1 %98, i64 1, i64 2
  br label %100

100:                                              ; preds = %96, %94
  %101 = phi i64 [ %95, %94 ], [ %99, %96 ]
  %102 = trunc i64 %101 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %12, i32 %102)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @RaiseImage.omp_outlined.10, ptr nonnull %4, ptr nonnull %5, ptr nonnull %8, ptr nonnull %6, ptr nonnull %7, ptr nonnull %10, ptr nonnull %11, ptr nonnull %9)
  %103 = load ptr, ptr %6, align 8, !tbaa !26
  %104 = call ptr @DestroyCacheView(ptr noundef %103) #15
  %105 = load i32, ptr %8, align 4, !tbaa !50
  br label %106

106:                                              ; preds = %39, %32, %100
  %107 = phi i32 [ %105, %100 ], [ 0, %32 ], [ 0, %39 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  ret i32 %107
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @RaiseImage.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 2 dereferenceable(2) %7, ptr nocapture noundef nonnull readonly align 2 dereferenceable(2) %8, ptr nocapture noundef nonnull align 8 dereferenceable(8) %9) #9 {
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = load ptr, ptr %2, align 8, !tbaa !26
  %16 = getelementptr inbounds %struct._RectangleInfo, ptr %15, i64 0, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !103
  %18 = add nsw i64 %17, -1
  %19 = icmp sgt i64 %17, 0
  br i1 %19, label %20, label %226

20:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #10
  store i64 0, ptr %11, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #10
  store i64 %18, ptr %12, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #10
  store i64 1, ptr %13, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #10
  store i32 0, ptr %14, align 4, !tbaa !50
  %21 = load i32, ptr %0, align 4, !tbaa !50
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %21, i32 33, ptr nonnull %14, ptr nonnull %11, ptr nonnull %12, ptr nonnull %13, i64 1, i64 4)
  %22 = load i64, ptr %12, align 8
  %23 = call i64 @llvm.smin.i64(i64 %22, i64 %18)
  store i64 %23, ptr %12, align 8, !tbaa !25
  %24 = load i64, ptr %11, align 8, !tbaa !25
  %25 = icmp sgt i64 %24, %23
  br i1 %25, label %225, label %26

26:                                               ; preds = %20, %217
  %27 = phi i64 [ %223, %217 ], [ %23, %20 ]
  %28 = phi i64 [ %221, %217 ], [ %24, %20 ]
  %29 = icmp sgt i64 %28, %27
  br i1 %29, label %217, label %30

30:                                               ; preds = %26
  %31 = sub i64 0, %28
  br label %32

32:                                               ; preds = %30, %210
  %33 = phi i64 [ %31, %30 ], [ %214, %210 ]
  %34 = phi i64 [ %28, %30 ], [ %211, %210 ]
  %35 = load i32, ptr %3, align 4, !tbaa !50
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %210, label %37

37:                                               ; preds = %32
  %38 = load ptr, ptr %4, align 8, !tbaa !26
  %39 = load ptr, ptr %5, align 8, !tbaa !26
  %40 = getelementptr inbounds %struct._Image, ptr %39, i64 0, i32 7
  %41 = load i64, ptr %40, align 8, !tbaa !33
  %42 = load ptr, ptr %6, align 8, !tbaa !26
  %43 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %38, i64 noundef 0, i64 noundef %34, i64 noundef %41, i64 noundef 1, ptr noundef %42) #17
  %44 = icmp eq ptr %43, null
  br i1 %44, label %209, label %45

45:                                               ; preds = %37
  %46 = icmp sgt i64 %34, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %45
  %48 = call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext -66) #16, !range !46
  %49 = uitofp i16 %48 to float
  %50 = xor i16 %48, -1
  %51 = uitofp i16 %50 to float
  br label %65

52:                                               ; preds = %65, %45
  %53 = phi i64 [ 0, %45 ], [ %34, %65 ]
  %54 = phi ptr [ %43, %45 ], [ %100, %65 ]
  %55 = load ptr, ptr %5, align 8, !tbaa !26
  %56 = getelementptr inbounds %struct._Image, ptr %55, i64 0, i32 7
  %57 = load i64, ptr %56, align 8, !tbaa !33
  %58 = sub i64 %57, %34
  %59 = icmp slt i64 %53, %58
  br i1 %59, label %60, label %105

60:                                               ; preds = %52
  %61 = call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext -121) #16, !range !46
  %62 = uitofp i16 %61 to float
  %63 = xor i16 %61, -1
  %64 = uitofp i16 %63 to float
  br label %114

65:                                               ; preds = %47, %65
  %66 = phi ptr [ %43, %47 ], [ %100, %65 ]
  %67 = phi i64 [ 0, %47 ], [ %101, %65 ]
  %68 = getelementptr inbounds %struct._PixelPacket, ptr %66, i64 0, i32 2
  %69 = load i16, ptr %68, align 2, !tbaa !87
  %70 = uitofp i16 %69 to float
  %71 = load i16, ptr %7, align 2, !tbaa !82
  %72 = uitofp i16 %71 to float
  %73 = fmul float %51, %72
  %74 = call float @llvm.fmuladd.f32(float %70, float %49, float %73)
  %75 = fpext float %74 to double
  %76 = fmul double %75, 0x3EF0001000100010
  %77 = fptrunc double %76 to float
  %78 = call fastcc zeroext i16 @ClampToQuantum(float noundef %77) #16
  store i16 %78, ptr %68, align 2, !tbaa !87
  %79 = getelementptr inbounds %struct._PixelPacket, ptr %66, i64 0, i32 1
  %80 = load i16, ptr %79, align 2, !tbaa !88
  %81 = uitofp i16 %80 to float
  %82 = load i16, ptr %7, align 2, !tbaa !82
  %83 = uitofp i16 %82 to float
  %84 = fmul float %51, %83
  %85 = call float @llvm.fmuladd.f32(float %81, float %49, float %84)
  %86 = fpext float %85 to double
  %87 = fmul double %86, 0x3EF0001000100010
  %88 = fptrunc double %87 to float
  %89 = call fastcc zeroext i16 @ClampToQuantum(float noundef %88) #16
  store i16 %89, ptr %79, align 2, !tbaa !88
  %90 = load i16, ptr %66, align 2, !tbaa !83
  %91 = uitofp i16 %90 to float
  %92 = load i16, ptr %7, align 2, !tbaa !82
  %93 = uitofp i16 %92 to float
  %94 = fmul float %51, %93
  %95 = call float @llvm.fmuladd.f32(float %91, float %49, float %94)
  %96 = fpext float %95 to double
  %97 = fmul double %96, 0x3EF0001000100010
  %98 = fptrunc double %97 to float
  %99 = call fastcc zeroext i16 @ClampToQuantum(float noundef %98) #16
  store i16 %99, ptr %66, align 2, !tbaa !83
  %100 = getelementptr inbounds %struct._PixelPacket, ptr %66, i64 1
  %101 = add nuw nsw i64 %67, 1
  %102 = icmp eq i64 %101, %34
  br i1 %102, label %52, label %65, !llvm.loop !104

103:                                              ; preds = %114
  %104 = add i64 %57, %33
  br label %105

105:                                              ; preds = %103, %52
  %106 = phi i64 [ %53, %52 ], [ %104, %103 ]
  %107 = phi ptr [ %54, %52 ], [ %149, %103 ]
  %108 = icmp slt i64 %106, %57
  br i1 %108, label %109, label %190

109:                                              ; preds = %105
  %110 = call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext -66) #16, !range !46
  %111 = uitofp i16 %110 to float
  %112 = xor i16 %110, -1
  %113 = uitofp i16 %112 to float
  br label %152

114:                                              ; preds = %60, %114
  %115 = phi ptr [ %54, %60 ], [ %149, %114 ]
  %116 = phi i64 [ %53, %60 ], [ %150, %114 ]
  %117 = getelementptr inbounds %struct._PixelPacket, ptr %115, i64 0, i32 2
  %118 = load i16, ptr %117, align 2, !tbaa !87
  %119 = uitofp i16 %118 to float
  %120 = load i16, ptr %7, align 2, !tbaa !82
  %121 = uitofp i16 %120 to float
  %122 = fmul float %64, %121
  %123 = call float @llvm.fmuladd.f32(float %119, float %62, float %122)
  %124 = fpext float %123 to double
  %125 = fmul double %124, 0x3EF0001000100010
  %126 = fptrunc double %125 to float
  %127 = call fastcc zeroext i16 @ClampToQuantum(float noundef %126) #16
  store i16 %127, ptr %117, align 2, !tbaa !87
  %128 = getelementptr inbounds %struct._PixelPacket, ptr %115, i64 0, i32 1
  %129 = load i16, ptr %128, align 2, !tbaa !88
  %130 = uitofp i16 %129 to float
  %131 = load i16, ptr %7, align 2, !tbaa !82
  %132 = uitofp i16 %131 to float
  %133 = fmul float %64, %132
  %134 = call float @llvm.fmuladd.f32(float %130, float %62, float %133)
  %135 = fpext float %134 to double
  %136 = fmul double %135, 0x3EF0001000100010
  %137 = fptrunc double %136 to float
  %138 = call fastcc zeroext i16 @ClampToQuantum(float noundef %137) #16
  store i16 %138, ptr %128, align 2, !tbaa !88
  %139 = load i16, ptr %115, align 2, !tbaa !83
  %140 = uitofp i16 %139 to float
  %141 = load i16, ptr %7, align 2, !tbaa !82
  %142 = uitofp i16 %141 to float
  %143 = fmul float %64, %142
  %144 = call float @llvm.fmuladd.f32(float %140, float %62, float %143)
  %145 = fpext float %144 to double
  %146 = fmul double %145, 0x3EF0001000100010
  %147 = fptrunc double %146 to float
  %148 = call fastcc zeroext i16 @ClampToQuantum(float noundef %147) #16
  store i16 %148, ptr %115, align 2, !tbaa !83
  %149 = getelementptr inbounds %struct._PixelPacket, ptr %115, i64 1
  %150 = add nuw nsw i64 %116, 1
  %151 = icmp slt i64 %150, %58
  br i1 %151, label %114, label %103, !llvm.loop !105

152:                                              ; preds = %109, %152
  %153 = phi ptr [ %107, %109 ], [ %187, %152 ]
  %154 = phi i64 [ %106, %109 ], [ %188, %152 ]
  %155 = getelementptr inbounds %struct._PixelPacket, ptr %153, i64 0, i32 2
  %156 = load i16, ptr %155, align 2, !tbaa !87
  %157 = uitofp i16 %156 to float
  %158 = load i16, ptr %8, align 2, !tbaa !82
  %159 = uitofp i16 %158 to float
  %160 = fmul float %113, %159
  %161 = call float @llvm.fmuladd.f32(float %157, float %111, float %160)
  %162 = fpext float %161 to double
  %163 = fmul double %162, 0x3EF0001000100010
  %164 = fptrunc double %163 to float
  %165 = call fastcc zeroext i16 @ClampToQuantum(float noundef %164) #16
  store i16 %165, ptr %155, align 2, !tbaa !87
  %166 = getelementptr inbounds %struct._PixelPacket, ptr %153, i64 0, i32 1
  %167 = load i16, ptr %166, align 2, !tbaa !88
  %168 = uitofp i16 %167 to float
  %169 = load i16, ptr %8, align 2, !tbaa !82
  %170 = uitofp i16 %169 to float
  %171 = fmul float %113, %170
  %172 = call float @llvm.fmuladd.f32(float %168, float %111, float %171)
  %173 = fpext float %172 to double
  %174 = fmul double %173, 0x3EF0001000100010
  %175 = fptrunc double %174 to float
  %176 = call fastcc zeroext i16 @ClampToQuantum(float noundef %175) #16
  store i16 %176, ptr %166, align 2, !tbaa !88
  %177 = load i16, ptr %153, align 2, !tbaa !83
  %178 = uitofp i16 %177 to float
  %179 = load i16, ptr %8, align 2, !tbaa !82
  %180 = uitofp i16 %179 to float
  %181 = fmul float %113, %180
  %182 = call float @llvm.fmuladd.f32(float %178, float %111, float %181)
  %183 = fpext float %182 to double
  %184 = fmul double %183, 0x3EF0001000100010
  %185 = fptrunc double %184 to float
  %186 = call fastcc zeroext i16 @ClampToQuantum(float noundef %185) #16
  store i16 %186, ptr %153, align 2, !tbaa !83
  %187 = getelementptr inbounds %struct._PixelPacket, ptr %153, i64 1
  %188 = add nuw nsw i64 %154, 1
  %189 = icmp slt i64 %188, %57
  br i1 %189, label %152, label %190, !llvm.loop !106

190:                                              ; preds = %152, %105
  %191 = load ptr, ptr %4, align 8, !tbaa !26
  %192 = load ptr, ptr %6, align 8, !tbaa !26
  %193 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %191, ptr noundef %192) #17
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %190
  store i32 0, ptr %3, align 4, !tbaa !50
  br label %196

196:                                              ; preds = %195, %190
  %197 = load ptr, ptr %5, align 8, !tbaa !26
  %198 = getelementptr inbounds %struct._Image, ptr %197, i64 0, i32 47
  %199 = load ptr, ptr %198, align 8, !tbaa !98
  %200 = icmp eq ptr %199, null
  br i1 %200, label %210, label %201

201:                                              ; preds = %196
  call void @__kmpc_critical(ptr nonnull @2, i32 %21, ptr nonnull @.gomp_critical_user_MagickCore_RaiseImage.var)
  %202 = load ptr, ptr %5, align 8, !tbaa !26
  %203 = load i64, ptr %9, align 8, !tbaa !51
  %204 = add nsw i64 %203, 1
  store i64 %204, ptr %9, align 8, !tbaa !51
  %205 = getelementptr inbounds %struct._Image, ptr %202, i64 0, i32 8
  %206 = load i64, ptr %205, align 8, !tbaa !35
  %207 = call fastcc i32 @SetImageProgress(ptr noundef %202, ptr noundef nonnull @.str.8, i64 noundef %203, i64 noundef %206) #16
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %21, ptr nonnull @.gomp_critical_user_MagickCore_RaiseImage.var)
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %201, %37
  store i32 0, ptr %3, align 4, !tbaa !50
  br label %210

210:                                              ; preds = %209, %196, %201, %32
  %211 = add nsw i64 %34, 1
  %212 = load i64, ptr %12, align 8, !tbaa !25
  %213 = icmp slt i64 %34, %212
  %214 = add i64 %33, -1
  br i1 %213, label %32, label %215

215:                                              ; preds = %210
  %216 = load i64, ptr %11, align 8, !tbaa !25
  br label %217

217:                                              ; preds = %215, %26
  %218 = phi i64 [ %28, %26 ], [ %216, %215 ]
  %219 = phi i64 [ %27, %26 ], [ %212, %215 ]
  %220 = load i64, ptr %13, align 8, !tbaa !25
  %221 = add nsw i64 %220, %218
  store i64 %221, ptr %11, align 8, !tbaa !25
  %222 = add nsw i64 %220, %219
  %223 = call i64 @llvm.smin.i64(i64 %222, i64 %18)
  store i64 %223, ptr %12, align 8, !tbaa !25
  %224 = icmp sgt i64 %221, %223
  br i1 %224, label %225, label %26

225:                                              ; preds = %217, %20
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %21)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #10
  br label %226

226:                                              ; preds = %225, %10
  ret void
}

; Function Attrs: hot optsize
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @RaiseImage.omp_outlined.9(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %3, ptr nocapture noundef nonnull align 4 dereferenceable(4) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 2 dereferenceable(2) %7, ptr nocapture noundef nonnull readonly align 2 dereferenceable(2) %8, ptr nocapture noundef nonnull align 8 dereferenceable(8) %9) #9 {
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = load ptr, ptr %2, align 8, !tbaa !26
  %16 = getelementptr inbounds %struct._RectangleInfo, ptr %15, i64 0, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !103
  %18 = load ptr, ptr %3, align 8, !tbaa !26
  %19 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 8
  %20 = load i64, ptr %19, align 8, !tbaa !35
  %21 = sub i64 %20, %17
  %22 = xor i64 %17, -1
  %23 = add i64 %21, %22
  %24 = icmp slt i64 %17, %21
  br i1 %24, label %25, label %191

25:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #10
  store i64 0, ptr %11, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #10
  store i64 %23, ptr %12, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #10
  store i64 1, ptr %13, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #10
  store i32 0, ptr %14, align 4, !tbaa !50
  %26 = load i32, ptr %0, align 4, !tbaa !50
  call void @__kmpc_for_static_init_8u(ptr nonnull @1, i32 %26, i32 33, ptr nonnull %14, ptr nonnull %11, ptr nonnull %12, ptr nonnull %13, i64 1, i64 4)
  %27 = load i64, ptr %12, align 8
  %28 = call i64 @llvm.umin.i64(i64 %27, i64 %23)
  store i64 %28, ptr %12, align 8, !tbaa !25
  %29 = load i64, ptr %11, align 8, !tbaa !25
  %30 = add i64 %28, 1
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %190

32:                                               ; preds = %25, %181
  %33 = phi i64 [ %187, %181 ], [ %28, %25 ]
  %34 = phi i64 [ %185, %181 ], [ %29, %25 ]
  %35 = icmp ugt i64 %34, %33
  br i1 %35, label %181, label %36

36:                                               ; preds = %32, %174
  %37 = phi i64 [ %175, %174 ], [ %34, %32 ]
  %38 = load i32, ptr %4, align 4, !tbaa !50
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %174, label %40

40:                                               ; preds = %36
  %41 = add i64 %37, %17
  %42 = load ptr, ptr %5, align 8, !tbaa !26
  %43 = load ptr, ptr %3, align 8, !tbaa !26
  %44 = getelementptr inbounds %struct._Image, ptr %43, i64 0, i32 7
  %45 = load i64, ptr %44, align 8, !tbaa !33
  %46 = load ptr, ptr %6, align 8, !tbaa !26
  %47 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %42, i64 noundef 0, i64 noundef %41, i64 noundef %45, i64 noundef 1, ptr noundef %46) #17
  %48 = icmp eq ptr %47, null
  br i1 %48, label %173, label %49

49:                                               ; preds = %40
  %50 = load ptr, ptr %2, align 8, !tbaa !26
  %51 = load i64, ptr %50, align 8, !tbaa !102
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext -66) #16, !range !46
  %55 = uitofp i16 %54 to float
  %56 = xor i16 %54, -1
  %57 = uitofp i16 %56 to float
  br label %67

58:                                               ; preds = %67, %49
  %59 = phi i64 [ 0, %49 ], [ %51, %67 ]
  %60 = phi ptr [ %47, %49 ], [ %102, %67 ]
  %61 = load ptr, ptr %3, align 8, !tbaa !26
  %62 = getelementptr inbounds %struct._Image, ptr %61, i64 0, i32 7
  %63 = load i64, ptr %62, align 8, !tbaa !33
  %64 = sub i64 %63, %51
  %65 = call i64 @llvm.smax.i64(i64 %59, i64 %64)
  %66 = icmp slt i64 %65, %63
  br i1 %66, label %105, label %154

67:                                               ; preds = %53, %67
  %68 = phi ptr [ %47, %53 ], [ %102, %67 ]
  %69 = phi i64 [ 0, %53 ], [ %103, %67 ]
  %70 = getelementptr inbounds %struct._PixelPacket, ptr %68, i64 0, i32 2
  %71 = load i16, ptr %70, align 2, !tbaa !87
  %72 = uitofp i16 %71 to float
  %73 = load i16, ptr %7, align 2, !tbaa !82
  %74 = uitofp i16 %73 to float
  %75 = fmul float %57, %74
  %76 = call float @llvm.fmuladd.f32(float %72, float %55, float %75)
  %77 = fpext float %76 to double
  %78 = fmul double %77, 0x3EF0001000100010
  %79 = fptrunc double %78 to float
  %80 = call fastcc zeroext i16 @ClampToQuantum(float noundef %79) #16
  store i16 %80, ptr %70, align 2, !tbaa !87
  %81 = getelementptr inbounds %struct._PixelPacket, ptr %68, i64 0, i32 1
  %82 = load i16, ptr %81, align 2, !tbaa !88
  %83 = uitofp i16 %82 to float
  %84 = load i16, ptr %7, align 2, !tbaa !82
  %85 = uitofp i16 %84 to float
  %86 = fmul float %57, %85
  %87 = call float @llvm.fmuladd.f32(float %83, float %55, float %86)
  %88 = fpext float %87 to double
  %89 = fmul double %88, 0x3EF0001000100010
  %90 = fptrunc double %89 to float
  %91 = call fastcc zeroext i16 @ClampToQuantum(float noundef %90) #16
  store i16 %91, ptr %81, align 2, !tbaa !88
  %92 = load i16, ptr %68, align 2, !tbaa !83
  %93 = uitofp i16 %92 to float
  %94 = load i16, ptr %7, align 2, !tbaa !82
  %95 = uitofp i16 %94 to float
  %96 = fmul float %57, %95
  %97 = call float @llvm.fmuladd.f32(float %93, float %55, float %96)
  %98 = fpext float %97 to double
  %99 = fmul double %98, 0x3EF0001000100010
  %100 = fptrunc double %99 to float
  %101 = call fastcc zeroext i16 @ClampToQuantum(float noundef %100) #16
  store i16 %101, ptr %68, align 2, !tbaa !83
  %102 = getelementptr inbounds %struct._PixelPacket, ptr %68, i64 1
  %103 = add nuw nsw i64 %69, 1
  %104 = icmp eq i64 %103, %51
  br i1 %104, label %58, label %67, !llvm.loop !107

105:                                              ; preds = %58
  %106 = icmp slt i64 %59, %64
  %107 = add i64 %51, %59
  %108 = sub i64 %63, %107
  %109 = shl i64 %108, 3
  %110 = select i1 %106, i64 %109, i64 0
  %111 = getelementptr i8, ptr %60, i64 %110
  %112 = call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext -66) #16, !range !46
  %113 = uitofp i16 %112 to float
  %114 = xor i16 %112, -1
  %115 = uitofp i16 %114 to float
  br label %116

116:                                              ; preds = %105, %116
  %117 = phi ptr [ %111, %105 ], [ %151, %116 ]
  %118 = phi i64 [ %65, %105 ], [ %152, %116 ]
  %119 = getelementptr inbounds %struct._PixelPacket, ptr %117, i64 0, i32 2
  %120 = load i16, ptr %119, align 2, !tbaa !87
  %121 = uitofp i16 %120 to float
  %122 = load i16, ptr %8, align 2, !tbaa !82
  %123 = uitofp i16 %122 to float
  %124 = fmul float %115, %123
  %125 = call float @llvm.fmuladd.f32(float %121, float %113, float %124)
  %126 = fpext float %125 to double
  %127 = fmul double %126, 0x3EF0001000100010
  %128 = fptrunc double %127 to float
  %129 = call fastcc zeroext i16 @ClampToQuantum(float noundef %128) #16
  store i16 %129, ptr %119, align 2, !tbaa !87
  %130 = getelementptr inbounds %struct._PixelPacket, ptr %117, i64 0, i32 1
  %131 = load i16, ptr %130, align 2, !tbaa !88
  %132 = uitofp i16 %131 to float
  %133 = load i16, ptr %8, align 2, !tbaa !82
  %134 = uitofp i16 %133 to float
  %135 = fmul float %115, %134
  %136 = call float @llvm.fmuladd.f32(float %132, float %113, float %135)
  %137 = fpext float %136 to double
  %138 = fmul double %137, 0x3EF0001000100010
  %139 = fptrunc double %138 to float
  %140 = call fastcc zeroext i16 @ClampToQuantum(float noundef %139) #16
  store i16 %140, ptr %130, align 2, !tbaa !88
  %141 = load i16, ptr %117, align 2, !tbaa !83
  %142 = uitofp i16 %141 to float
  %143 = load i16, ptr %8, align 2, !tbaa !82
  %144 = uitofp i16 %143 to float
  %145 = fmul float %115, %144
  %146 = call float @llvm.fmuladd.f32(float %142, float %113, float %145)
  %147 = fpext float %146 to double
  %148 = fmul double %147, 0x3EF0001000100010
  %149 = fptrunc double %148 to float
  %150 = call fastcc zeroext i16 @ClampToQuantum(float noundef %149) #16
  store i16 %150, ptr %117, align 2, !tbaa !83
  %151 = getelementptr inbounds %struct._PixelPacket, ptr %117, i64 1
  %152 = add nuw nsw i64 %118, 1
  %153 = icmp eq i64 %152, %63
  br i1 %153, label %154, label %116, !llvm.loop !108

154:                                              ; preds = %116, %58
  %155 = load ptr, ptr %5, align 8, !tbaa !26
  %156 = load ptr, ptr %6, align 8, !tbaa !26
  %157 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %155, ptr noundef %156) #17
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %154
  store i32 0, ptr %4, align 4, !tbaa !50
  br label %160

160:                                              ; preds = %159, %154
  %161 = load ptr, ptr %3, align 8, !tbaa !26
  %162 = getelementptr inbounds %struct._Image, ptr %161, i64 0, i32 47
  %163 = load ptr, ptr %162, align 8, !tbaa !98
  %164 = icmp eq ptr %163, null
  br i1 %164, label %174, label %165

165:                                              ; preds = %160
  call void @__kmpc_critical(ptr nonnull @2, i32 %26, ptr nonnull @.gomp_critical_user_MagickCore_RaiseImage.var)
  %166 = load ptr, ptr %3, align 8, !tbaa !26
  %167 = load i64, ptr %9, align 8, !tbaa !51
  %168 = add nsw i64 %167, 1
  store i64 %168, ptr %9, align 8, !tbaa !51
  %169 = getelementptr inbounds %struct._Image, ptr %166, i64 0, i32 8
  %170 = load i64, ptr %169, align 8, !tbaa !35
  %171 = call fastcc i32 @SetImageProgress(ptr noundef %166, ptr noundef nonnull @.str.8, i64 noundef %167, i64 noundef %170) #16
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %26, ptr nonnull @.gomp_critical_user_MagickCore_RaiseImage.var)
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %165, %40
  store i32 0, ptr %4, align 4, !tbaa !50
  br label %174

174:                                              ; preds = %173, %160, %165, %36
  %175 = add nuw i64 %37, 1
  %176 = load i64, ptr %12, align 8, !tbaa !25
  %177 = add i64 %176, 1
  %178 = icmp ult i64 %175, %177
  br i1 %178, label %36, label %179

179:                                              ; preds = %174
  %180 = load i64, ptr %11, align 8, !tbaa !25
  br label %181

181:                                              ; preds = %179, %32
  %182 = phi i64 [ %34, %32 ], [ %180, %179 ]
  %183 = phi i64 [ %33, %32 ], [ %176, %179 ]
  %184 = load i64, ptr %13, align 8, !tbaa !25
  %185 = add i64 %184, %182
  store i64 %185, ptr %11, align 8, !tbaa !25
  %186 = add i64 %184, %183
  %187 = call i64 @llvm.umin.i64(i64 %186, i64 %23)
  store i64 %187, ptr %12, align 8, !tbaa !25
  %188 = add i64 %187, 1
  %189 = icmp ult i64 %185, %188
  br i1 %189, label %32, label %190

190:                                              ; preds = %181, %25
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %26)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #10
  br label %191

191:                                              ; preds = %190, %10
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_8u(ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i64) local_unnamed_addr #10

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @RaiseImage.omp_outlined.10(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %3, ptr nocapture noundef nonnull align 4 dereferenceable(4) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 2 dereferenceable(2) %7, ptr nocapture noundef nonnull readonly align 2 dereferenceable(2) %8, ptr nocapture noundef nonnull align 8 dereferenceable(8) %9) #9 {
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = load ptr, ptr %2, align 8, !tbaa !26
  %16 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 8
  %17 = load i64, ptr %16, align 8, !tbaa !35
  %18 = load ptr, ptr %3, align 8, !tbaa !26
  %19 = getelementptr inbounds %struct._RectangleInfo, ptr %18, i64 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !103
  %21 = sub i64 %17, %20
  %22 = add i64 %20, -1
  %23 = icmp slt i64 %21, %17
  br i1 %23, label %24, label %245

24:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #10
  store i64 0, ptr %11, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #10
  store i64 %22, ptr %12, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #10
  store i64 1, ptr %13, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #10
  store i32 0, ptr %14, align 4, !tbaa !50
  %25 = load i32, ptr %0, align 4, !tbaa !50
  call void @__kmpc_for_static_init_8u(ptr nonnull @1, i32 %25, i32 33, ptr nonnull %14, ptr nonnull %11, ptr nonnull %12, ptr nonnull %13, i64 1, i64 4)
  %26 = load i64, ptr %12, align 8
  %27 = call i64 @llvm.umin.i64(i64 %26, i64 %22)
  store i64 %27, ptr %12, align 8, !tbaa !25
  %28 = load i64, ptr %11, align 8, !tbaa !25
  %29 = add i64 %27, 1
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %244

31:                                               ; preds = %24, %235
  %32 = phi i64 [ %241, %235 ], [ %27, %24 ]
  %33 = phi i64 [ %239, %235 ], [ %28, %24 ]
  %34 = icmp ugt i64 %33, %32
  br i1 %34, label %235, label %35

35:                                               ; preds = %31
  %36 = add i64 %17, %33
  %37 = sub i64 %20, %36
  %38 = add i64 %21, %33
  br label %39

39:                                               ; preds = %35, %226
  %40 = phi i64 [ %38, %35 ], [ %232, %226 ]
  %41 = phi i64 [ %37, %35 ], [ %231, %226 ]
  %42 = phi i64 [ %33, %35 ], [ %227, %226 ]
  %43 = add i64 %42, %21
  %44 = load i32, ptr %4, align 4, !tbaa !50
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %226, label %46

46:                                               ; preds = %39
  %47 = load ptr, ptr %5, align 8, !tbaa !26
  %48 = load ptr, ptr %2, align 8, !tbaa !26
  %49 = getelementptr inbounds %struct._Image, ptr %48, i64 0, i32 7
  %50 = load i64, ptr %49, align 8, !tbaa !33
  %51 = load ptr, ptr %6, align 8, !tbaa !26
  %52 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %47, i64 noundef 0, i64 noundef %43, i64 noundef %50, i64 noundef 1, ptr noundef %51) #17
  %53 = icmp eq ptr %52, null
  br i1 %53, label %225, label %54

54:                                               ; preds = %46
  %55 = load ptr, ptr %2, align 8, !tbaa !26
  %56 = getelementptr inbounds %struct._Image, ptr %55, i64 0, i32 8
  %57 = load i64, ptr %56, align 8, !tbaa !35
  %58 = sub i64 %57, %43
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %54
  %61 = call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext -66) #16, !range !46
  %62 = uitofp i16 %61 to float
  %63 = xor i16 %61, -1
  %64 = uitofp i16 %63 to float
  br label %81

65:                                               ; preds = %81
  %66 = add i64 %57, %41
  br label %67

67:                                               ; preds = %65, %54
  %68 = phi i64 [ 0, %54 ], [ %66, %65 ]
  %69 = phi ptr [ %52, %54 ], [ %116, %65 ]
  %70 = getelementptr inbounds %struct._Image, ptr %55, i64 0, i32 7
  %71 = load i64, ptr %70, align 8, !tbaa !33
  %72 = sub i64 %43, %57
  %73 = add i64 %72, %71
  %74 = icmp slt i64 %68, %73
  br i1 %74, label %75, label %121

75:                                               ; preds = %67
  %76 = call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext -121) #16, !range !46
  %77 = uitofp i16 %76 to float
  %78 = xor i16 %76, -1
  %79 = uitofp i16 %78 to float
  %80 = add i64 %71, %40
  br label %130

81:                                               ; preds = %60, %81
  %82 = phi ptr [ %52, %60 ], [ %116, %81 ]
  %83 = phi i64 [ 0, %60 ], [ %117, %81 ]
  %84 = getelementptr inbounds %struct._PixelPacket, ptr %82, i64 0, i32 2
  %85 = load i16, ptr %84, align 2, !tbaa !87
  %86 = uitofp i16 %85 to float
  %87 = load i16, ptr %7, align 2, !tbaa !82
  %88 = uitofp i16 %87 to float
  %89 = fmul float %64, %88
  %90 = call float @llvm.fmuladd.f32(float %86, float %62, float %89)
  %91 = fpext float %90 to double
  %92 = fmul double %91, 0x3EF0001000100010
  %93 = fptrunc double %92 to float
  %94 = call fastcc zeroext i16 @ClampToQuantum(float noundef %93) #16
  store i16 %94, ptr %84, align 2, !tbaa !87
  %95 = getelementptr inbounds %struct._PixelPacket, ptr %82, i64 0, i32 1
  %96 = load i16, ptr %95, align 2, !tbaa !88
  %97 = uitofp i16 %96 to float
  %98 = load i16, ptr %7, align 2, !tbaa !82
  %99 = uitofp i16 %98 to float
  %100 = fmul float %64, %99
  %101 = call float @llvm.fmuladd.f32(float %97, float %62, float %100)
  %102 = fpext float %101 to double
  %103 = fmul double %102, 0x3EF0001000100010
  %104 = fptrunc double %103 to float
  %105 = call fastcc zeroext i16 @ClampToQuantum(float noundef %104) #16
  store i16 %105, ptr %95, align 2, !tbaa !88
  %106 = load i16, ptr %82, align 2, !tbaa !83
  %107 = uitofp i16 %106 to float
  %108 = load i16, ptr %7, align 2, !tbaa !82
  %109 = uitofp i16 %108 to float
  %110 = fmul float %64, %109
  %111 = call float @llvm.fmuladd.f32(float %107, float %62, float %110)
  %112 = fpext float %111 to double
  %113 = fmul double %112, 0x3EF0001000100010
  %114 = fptrunc double %113 to float
  %115 = call fastcc zeroext i16 @ClampToQuantum(float noundef %114) #16
  store i16 %115, ptr %82, align 2, !tbaa !83
  %116 = getelementptr inbounds %struct._PixelPacket, ptr %82, i64 1
  %117 = add nuw nsw i64 %83, 1
  %118 = icmp slt i64 %117, %58
  br i1 %118, label %81, label %65, !llvm.loop !109

119:                                              ; preds = %130
  %120 = sub i64 %80, %57
  br label %121

121:                                              ; preds = %119, %67
  %122 = phi i64 [ %68, %67 ], [ %120, %119 ]
  %123 = phi ptr [ %69, %67 ], [ %165, %119 ]
  %124 = icmp slt i64 %122, %71
  br i1 %124, label %125, label %206

125:                                              ; preds = %121
  %126 = call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext -66) #16, !range !46
  %127 = uitofp i16 %126 to float
  %128 = xor i16 %126, -1
  %129 = uitofp i16 %128 to float
  br label %168

130:                                              ; preds = %75, %130
  %131 = phi ptr [ %69, %75 ], [ %165, %130 ]
  %132 = phi i64 [ %68, %75 ], [ %166, %130 ]
  %133 = getelementptr inbounds %struct._PixelPacket, ptr %131, i64 0, i32 2
  %134 = load i16, ptr %133, align 2, !tbaa !87
  %135 = uitofp i16 %134 to float
  %136 = load i16, ptr %8, align 2, !tbaa !82
  %137 = uitofp i16 %136 to float
  %138 = fmul float %79, %137
  %139 = call float @llvm.fmuladd.f32(float %135, float %77, float %138)
  %140 = fpext float %139 to double
  %141 = fmul double %140, 0x3EF0001000100010
  %142 = fptrunc double %141 to float
  %143 = call fastcc zeroext i16 @ClampToQuantum(float noundef %142) #16
  store i16 %143, ptr %133, align 2, !tbaa !87
  %144 = getelementptr inbounds %struct._PixelPacket, ptr %131, i64 0, i32 1
  %145 = load i16, ptr %144, align 2, !tbaa !88
  %146 = uitofp i16 %145 to float
  %147 = load i16, ptr %8, align 2, !tbaa !82
  %148 = uitofp i16 %147 to float
  %149 = fmul float %79, %148
  %150 = call float @llvm.fmuladd.f32(float %146, float %77, float %149)
  %151 = fpext float %150 to double
  %152 = fmul double %151, 0x3EF0001000100010
  %153 = fptrunc double %152 to float
  %154 = call fastcc zeroext i16 @ClampToQuantum(float noundef %153) #16
  store i16 %154, ptr %144, align 2, !tbaa !88
  %155 = load i16, ptr %131, align 2, !tbaa !83
  %156 = uitofp i16 %155 to float
  %157 = load i16, ptr %8, align 2, !tbaa !82
  %158 = uitofp i16 %157 to float
  %159 = fmul float %79, %158
  %160 = call float @llvm.fmuladd.f32(float %156, float %77, float %159)
  %161 = fpext float %160 to double
  %162 = fmul double %161, 0x3EF0001000100010
  %163 = fptrunc double %162 to float
  %164 = call fastcc zeroext i16 @ClampToQuantum(float noundef %163) #16
  store i16 %164, ptr %131, align 2, !tbaa !83
  %165 = getelementptr inbounds %struct._PixelPacket, ptr %131, i64 1
  %166 = add nuw nsw i64 %132, 1
  %167 = icmp slt i64 %166, %73
  br i1 %167, label %130, label %119, !llvm.loop !110

168:                                              ; preds = %125, %168
  %169 = phi ptr [ %123, %125 ], [ %203, %168 ]
  %170 = phi i64 [ %122, %125 ], [ %204, %168 ]
  %171 = getelementptr inbounds %struct._PixelPacket, ptr %169, i64 0, i32 2
  %172 = load i16, ptr %171, align 2, !tbaa !87
  %173 = uitofp i16 %172 to float
  %174 = load i16, ptr %8, align 2, !tbaa !82
  %175 = uitofp i16 %174 to float
  %176 = fmul float %129, %175
  %177 = call float @llvm.fmuladd.f32(float %173, float %127, float %176)
  %178 = fpext float %177 to double
  %179 = fmul double %178, 0x3EF0001000100010
  %180 = fptrunc double %179 to float
  %181 = call fastcc zeroext i16 @ClampToQuantum(float noundef %180) #16
  store i16 %181, ptr %171, align 2, !tbaa !87
  %182 = getelementptr inbounds %struct._PixelPacket, ptr %169, i64 0, i32 1
  %183 = load i16, ptr %182, align 2, !tbaa !88
  %184 = uitofp i16 %183 to float
  %185 = load i16, ptr %8, align 2, !tbaa !82
  %186 = uitofp i16 %185 to float
  %187 = fmul float %129, %186
  %188 = call float @llvm.fmuladd.f32(float %184, float %127, float %187)
  %189 = fpext float %188 to double
  %190 = fmul double %189, 0x3EF0001000100010
  %191 = fptrunc double %190 to float
  %192 = call fastcc zeroext i16 @ClampToQuantum(float noundef %191) #16
  store i16 %192, ptr %182, align 2, !tbaa !88
  %193 = load i16, ptr %169, align 2, !tbaa !83
  %194 = uitofp i16 %193 to float
  %195 = load i16, ptr %8, align 2, !tbaa !82
  %196 = uitofp i16 %195 to float
  %197 = fmul float %129, %196
  %198 = call float @llvm.fmuladd.f32(float %194, float %127, float %197)
  %199 = fpext float %198 to double
  %200 = fmul double %199, 0x3EF0001000100010
  %201 = fptrunc double %200 to float
  %202 = call fastcc zeroext i16 @ClampToQuantum(float noundef %201) #16
  store i16 %202, ptr %169, align 2, !tbaa !83
  %203 = getelementptr inbounds %struct._PixelPacket, ptr %169, i64 1
  %204 = add nuw nsw i64 %170, 1
  %205 = icmp slt i64 %204, %71
  br i1 %205, label %168, label %206, !llvm.loop !111

206:                                              ; preds = %168, %121
  %207 = load ptr, ptr %5, align 8, !tbaa !26
  %208 = load ptr, ptr %6, align 8, !tbaa !26
  %209 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %207, ptr noundef %208) #17
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %206
  store i32 0, ptr %4, align 4, !tbaa !50
  br label %212

212:                                              ; preds = %211, %206
  %213 = load ptr, ptr %2, align 8, !tbaa !26
  %214 = getelementptr inbounds %struct._Image, ptr %213, i64 0, i32 47
  %215 = load ptr, ptr %214, align 8, !tbaa !98
  %216 = icmp eq ptr %215, null
  br i1 %216, label %226, label %217

217:                                              ; preds = %212
  call void @__kmpc_critical(ptr nonnull @2, i32 %25, ptr nonnull @.gomp_critical_user_MagickCore_RaiseImage.var)
  %218 = load ptr, ptr %2, align 8, !tbaa !26
  %219 = load i64, ptr %9, align 8, !tbaa !51
  %220 = add nsw i64 %219, 1
  store i64 %220, ptr %9, align 8, !tbaa !51
  %221 = getelementptr inbounds %struct._Image, ptr %218, i64 0, i32 8
  %222 = load i64, ptr %221, align 8, !tbaa !35
  %223 = call fastcc i32 @SetImageProgress(ptr noundef %218, ptr noundef nonnull @.str.8, i64 noundef %219, i64 noundef %222) #16
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %25, ptr nonnull @.gomp_critical_user_MagickCore_RaiseImage.var)
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %217, %46
  store i32 0, ptr %4, align 4, !tbaa !50
  br label %226

226:                                              ; preds = %225, %212, %217, %39
  %227 = add nuw i64 %42, 1
  %228 = load i64, ptr %12, align 8, !tbaa !25
  %229 = add i64 %228, 1
  %230 = icmp ult i64 %227, %229
  %231 = add i64 %41, -1
  %232 = add i64 %40, 1
  br i1 %230, label %39, label %233

233:                                              ; preds = %226
  %234 = load i64, ptr %11, align 8, !tbaa !25
  br label %235

235:                                              ; preds = %233, %31
  %236 = phi i64 [ %33, %31 ], [ %234, %233 ]
  %237 = phi i64 [ %32, %31 ], [ %228, %233 ]
  %238 = load i64, ptr %13, align 8, !tbaa !25
  %239 = add i64 %238, %236
  store i64 %239, ptr %11, align 8, !tbaa !25
  %240 = add i64 %238, %237
  %241 = call i64 @llvm.umin.i64(i64 %240, i64 %22)
  store i64 %241, ptr %12, align 8, !tbaa !25
  %242 = add i64 %241, 1
  %243 = icmp ult i64 %239, %242
  br i1 %243, label %31, label %244

244:                                              ; preds = %235, %24
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %25)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #10
  br label %245

245:                                              ; preds = %244, %10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #13

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { alwaysinline norecurse nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { convergent nounwind }
attributes #12 = { noinline norecurse nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nounwind optsize }
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
!25 = !{!11, !11, i64 0}
!26 = !{!12, !12, i64 0}
!27 = !{!28, !11, i64 40}
!28 = !{!"_FrameInfo", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40}
!29 = !{!28, !11, i64 32}
!30 = !{!28, !11, i64 0}
!31 = !{!28, !11, i64 16}
!32 = !{!28, !11, i64 8}
!33 = !{!7, !11, i64 40}
!34 = !{!28, !11, i64 24}
!35 = !{!7, !11, i64 48}
!36 = !{i32 0, i32 2}
!37 = !{!7, !8, i64 4}
!38 = !{!7, !14, i64 94}
!39 = !{!7, !8, i64 32}
!40 = !{i64 0, i64 8, !25, i64 8, i64 8, !25, i64 16, i64 8, !25, i64 24, i64 8, !25}
!41 = !{!7, !11, i64 280}
!42 = !{!7, !11, i64 288}
!43 = !{!44, !8, i64 4}
!44 = !{!"_MagickPixelPacket", !8, i64 0, !8, i64 4, !8, i64 8, !15, i64 16, !11, i64 24, !45, i64 32, !45, i64 36, !45, i64 40, !45, i64 44, !45, i64 48}
!45 = !{!"float", !9, i64 0}
!46 = !{i16 20560, i16 -16705}
!47 = !{!45, !45, i64 0}
!48 = !{!44, !45, i64 40}
!49 = !{!44, !45, i64 44}
!50 = !{!8, !8, i64 0}
!51 = !{!24, !24, i64 0}
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.mustprogress"}
!54 = distinct !{!54, !53}
!55 = distinct !{!55, !53}
!56 = distinct !{!56, !53}
!57 = distinct !{!57, !53}
!58 = distinct !{!58, !53}
!59 = distinct !{!59, !53}
!60 = distinct !{!60, !53}
!61 = distinct !{!61, !53}
!62 = distinct !{!62, !53}
!63 = distinct !{!63, !53}
!64 = distinct !{!64, !53}
!65 = distinct !{!65, !53}
!66 = distinct !{!66, !53}
!67 = distinct !{!67, !53}
!68 = distinct !{!68, !53}
!69 = distinct !{!69, !53}
!70 = distinct !{!70, !53}
!71 = distinct !{!71, !53}
!72 = distinct !{!72, !53}
!73 = distinct !{!73, !53}
!74 = distinct !{!74, !53}
!75 = distinct !{!75, !53}
!76 = distinct !{!76, !53}
!77 = distinct !{!77, !53}
!78 = distinct !{!78, !53}
!79 = distinct !{!79, !53}
!80 = distinct !{!80, !53}
!81 = !{!7, !8, i64 416}
!82 = !{!14, !14, i64 0}
!83 = !{!13, !14, i64 0}
!84 = !{!44, !45, i64 32}
!85 = !{!44, !45, i64 36}
!86 = !{!44, !45, i64 48}
!87 = !{!13, !14, i64 4}
!88 = !{!13, !14, i64 2}
!89 = !{!13, !14, i64 6}
!90 = !{!7, !8, i64 0}
!91 = distinct !{!91, !53}
!92 = distinct !{!92, !53}
!93 = distinct !{!93, !53}
!94 = distinct !{!94, !53}
!95 = distinct !{!95, !53}
!96 = distinct !{!96, !53}
!97 = distinct !{!97, !53}
!98 = !{!7, !12, i64 568}
!99 = !{!7, !12, i64 576}
!100 = !{!101}
!101 = !{i64 2, i64 -1, i64 -1, i1 true}
!102 = !{!18, !11, i64 0}
!103 = !{!18, !11, i64 8}
!104 = distinct !{!104, !53}
!105 = distinct !{!105, !53}
!106 = distinct !{!106, !53}
!107 = distinct !{!107, !53}
!108 = distinct !{!108, !53}
!109 = distinct !{!109, !53}
!110 = distinct !{!110, !53}
!111 = distinct !{!111, !53}
