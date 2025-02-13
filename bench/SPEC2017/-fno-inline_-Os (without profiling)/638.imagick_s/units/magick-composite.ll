; ModuleID = 'magick/composite.c'
source_filename = "magick/composite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }
%struct._GeometryInfo = type { double, double, double, double, double }
%struct._MagickPixelPacket = type { i32, i32, i32, double, i64, float, float, float, float, float }
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

@.str = private unnamed_addr constant [19 x i8] c"magick/composite.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@.gomp_critical_user_MagickCore_CompositeImage.var = common global [8 x i32] zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"Composite/Image\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"compose:args\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"InvalidGeometry\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"'%s' '%s'\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"compose:outside-overlay\00", align 1
@.gomp_critical_user_MagickCore_CompositeImageChannel.var = common global [8 x i32] zeroinitializer, align 8
@.str.9 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"Texture/Image\00", align 1
@.gomp_critical_user_MagickCore_TextureImage.var = common global [8 x i32] zeroinitializer, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @CompositeImage(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = tail call i32 @CompositeImageChannel(ptr noundef %0, i32 noundef 134217719, i32 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) #18
  ret i32 %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @CompositeImageChannel(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 {
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca %struct._GeometryInfo, align 16
  %16 = alloca ptr, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca %struct._MagickPixelPacket, align 8
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca %struct._MagickPixelPacket, align 8
  %29 = alloca %struct._MagickPixelPacket, align 8
  %30 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %7, align 8, !tbaa !6
  store i32 %1, ptr %8, align 4, !tbaa !10
  store i32 %2, ptr %9, align 4, !tbaa !10
  store i64 %4, ptr %10, align 8, !tbaa !12
  store i64 %5, ptr %11, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #5
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %15) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #5
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %20) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %22) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %23) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %24) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %25) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %26) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %27) #5
  %31 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %32 = load i32, ptr %31, align 8, !tbaa !14
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %6
  %35 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %36 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1685, ptr noundef nonnull @.str.2, ptr noundef nonnull %35) #19
  br label %37

37:                                               ; preds = %34, %6
  %38 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #19
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %807, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  store ptr %41, ptr %14, align 8, !tbaa !6
  %42 = tail call ptr @CloneImage(ptr noundef %3, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef nonnull %41) #19
  store ptr %42, ptr %16, align 8, !tbaa !6
  %43 = icmp eq ptr %42, null
  br i1 %43, label %807, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %46 = load i32, ptr %45, align 4, !tbaa !28
  %47 = tail call fastcc i32 @IsGrayColorspace(i32 noundef %46) #18, !range !29
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = tail call i32 @SetImageColorspace(ptr noundef nonnull %0, i32 noundef 13) #19
  %51 = load i32, ptr %45, align 4, !tbaa !28
  br label %52

52:                                               ; preds = %49, %44
  %53 = phi i32 [ %51, %49 ], [ %46, %44 ]
  %54 = tail call i32 @SetImageColorspace(ptr noundef nonnull %42, i32 noundef %53) #19
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %20) #19
  store float 5.000000e-01, ptr %21, align 4, !tbaa !30
  store float 1.000000e+00, ptr %22, align 4, !tbaa !30
  store i32 1, ptr %17, align 4, !tbaa !10
  store float 1.000000e+02, ptr %24, align 4, !tbaa !30
  store float 1.000000e+02, ptr %25, align 4, !tbaa !30
  store float 1.000000e+00, ptr %26, align 4, !tbaa !30
  store float 0x3FA99999A0000000, ptr %27, align 4, !tbaa !30
  switch i32 %2, label %743 [
    i32 7, label %55
    i32 48, label %55
    i32 32, label %55
    i32 49, label %55
    i32 39, label %55
    i32 50, label %55
    i32 23, label %55
    i32 21, label %55
    i32 40, label %56
    i32 13, label %66
    i32 17, label %124
    i32 6, label %124
    i32 57, label %132
    i32 27, label %365
    i32 56, label %365
    i32 28, label %642
    i32 4, label %683
    i32 63, label %706
    i32 37, label %712
    i32 53, label %726
  ]

55:                                               ; preds = %52, %52, %52, %52, %52, %52, %52, %52
  store i32 0, ptr %17, align 4, !tbaa !10
  br label %743

56:                                               ; preds = %52
  %57 = load ptr, ptr %7, align 8, !tbaa !6
  %58 = getelementptr inbounds %struct._Image, ptr %57, i64 0, i32 6
  %59 = load i32, ptr %58, align 8, !tbaa !32
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %743

61:                                               ; preds = %56
  %62 = load ptr, ptr %16, align 8, !tbaa !6
  %63 = getelementptr inbounds %struct._Image, ptr %62, i64 0, i32 6
  %64 = load i32, ptr %63, align 8, !tbaa !32
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %743

66:                                               ; preds = %61, %52
  %67 = load i64, ptr %10, align 8, !tbaa !12
  %68 = icmp slt i64 %67, 0
  %69 = load i64, ptr %11, align 8
  %70 = icmp slt i64 %69, 0
  %71 = select i1 %68, i1 true, i1 %70
  br i1 %71, label %743, label %72

72:                                               ; preds = %66
  %73 = load ptr, ptr %16, align 8, !tbaa !6
  %74 = getelementptr inbounds %struct._Image, ptr %73, i64 0, i32 7
  %75 = load i64, ptr %74, align 8, !tbaa !33
  %76 = add nsw i64 %75, %67
  %77 = load ptr, ptr %7, align 8, !tbaa !6
  %78 = getelementptr inbounds %struct._Image, ptr %77, i64 0, i32 7
  %79 = load i64, ptr %78, align 8, !tbaa !33
  %80 = icmp slt i64 %76, %79
  br i1 %80, label %81, label %743

81:                                               ; preds = %72
  %82 = getelementptr inbounds %struct._Image, ptr %73, i64 0, i32 8
  %83 = load i64, ptr %82, align 8, !tbaa !34
  %84 = add nsw i64 %83, %69
  %85 = getelementptr inbounds %struct._Image, ptr %77, i64 0, i32 8
  %86 = load i64, ptr %85, align 8, !tbaa !34
  %87 = icmp slt i64 %84, %86
  br i1 %87, label %88, label %743

88:                                               ; preds = %81
  store i32 1, ptr %18, align 4, !tbaa !10
  %89 = load ptr, ptr %14, align 8, !tbaa !6
  %90 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %73, ptr noundef %89) #19
  store ptr %90, ptr %12, align 8, !tbaa !6
  %91 = load ptr, ptr %7, align 8, !tbaa !6
  %92 = load ptr, ptr %14, align 8, !tbaa !6
  %93 = call ptr @AcquireAuthenticCacheView(ptr noundef %91, ptr noundef %92) #19
  store ptr %93, ptr %13, align 8, !tbaa !6
  %94 = load ptr, ptr %16, align 8, !tbaa !6
  %95 = getelementptr inbounds %struct._Image, ptr %94, i64 0, i32 8
  %96 = load i64, ptr %95, align 8, !tbaa !34
  %97 = call i64 @GetMagickResourceLimit(i32 noundef 6) #19
  %98 = shl i64 %97, 5
  %99 = icmp ugt i64 %96, %98
  br i1 %99, label %100, label %110

100:                                              ; preds = %88
  %101 = load ptr, ptr %16, align 8, !tbaa !6
  %102 = call i32 @GetImagePixelCacheType(ptr noundef %101) #19
  %103 = icmp eq i32 %102, 3
  br i1 %103, label %110, label %104

104:                                              ; preds = %100
  %105 = load ptr, ptr %7, align 8, !tbaa !6
  %106 = call i32 @GetImagePixelCacheType(ptr noundef %105) #19
  %107 = icmp eq i32 %106, 3
  br i1 %107, label %110, label %108

108:                                              ; preds = %104
  %109 = call i64 @GetMagickResourceLimit(i32 noundef 6) #19
  br label %114

110:                                              ; preds = %104, %100, %88
  %111 = call i64 @GetMagickResourceLimit(i32 noundef 6) #19
  %112 = icmp ult i64 %111, 2
  %113 = select i1 %112, i64 1, i64 2
  br label %114

114:                                              ; preds = %110, %108
  %115 = phi i64 [ %109, %108 ], [ %113, %110 ]
  %116 = trunc i64 %115 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %30, i32 %116)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @CompositeImageChannel.omp_outlined, ptr nonnull %16, ptr nonnull %18, ptr nonnull %12, ptr nonnull %14, ptr nonnull %13, ptr nonnull %10, ptr nonnull %11, ptr nonnull %7)
  %117 = load ptr, ptr %12, align 8, !tbaa !6
  %118 = call ptr @DestroyCacheView(ptr noundef %117) #19
  store ptr %118, ptr %12, align 8, !tbaa !6
  %119 = load ptr, ptr %13, align 8, !tbaa !6
  %120 = call ptr @DestroyCacheView(ptr noundef %119) #19
  store ptr %120, ptr %13, align 8, !tbaa !6
  %121 = load ptr, ptr %16, align 8, !tbaa !6
  %122 = call ptr @DestroyImage(ptr noundef %121) #19
  %123 = load i32, ptr %18, align 4, !tbaa !10
  br label %807

124:                                              ; preds = %52, %52
  %125 = load ptr, ptr %7, align 8, !tbaa !6
  %126 = getelementptr inbounds %struct._Image, ptr %125, i64 0, i32 6
  %127 = load i32, ptr %126, align 8, !tbaa !32
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %124
  %130 = call i32 @SetImageAlphaChannel(ptr noundef nonnull %125, i32 noundef 6) #19
  br label %131

131:                                              ; preds = %129, %124
  store i32 0, ptr %17, align 4, !tbaa !10
  br label %743

132:                                              ; preds = %52
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %28) #5
  %133 = load ptr, ptr %7, align 8, !tbaa !6
  %134 = getelementptr inbounds %struct._Image, ptr %133, i64 0, i32 7
  %135 = load i64, ptr %134, align 8, !tbaa !33
  %136 = getelementptr inbounds %struct._Image, ptr %133, i64 0, i32 8
  %137 = load i64, ptr %136, align 8, !tbaa !34
  %138 = load ptr, ptr %14, align 8, !tbaa !6
  %139 = call ptr @CloneImage(ptr noundef %133, i64 noundef %135, i64 noundef %137, i32 noundef 1, ptr noundef %138) #19
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %144

141:                                              ; preds = %132
  %142 = load ptr, ptr %16, align 8, !tbaa !6
  %143 = call ptr @DestroyImage(ptr noundef %142) #19
  br label %358

144:                                              ; preds = %132
  call void @SetGeometryInfo(ptr noundef nonnull %15) #19
  %145 = load ptr, ptr %16, align 8, !tbaa !6
  %146 = call ptr @GetImageArtifact(ptr noundef %145, ptr noundef nonnull @.str.4) #19
  %147 = icmp eq ptr %146, null
  br i1 %147, label %152, label %148

148:                                              ; preds = %144
  %149 = call i32 @ParseGeometry(ptr noundef nonnull %146, ptr noundef nonnull %15) #19
  %150 = and i32 %149, 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %144, %148
  %153 = load ptr, ptr %14, align 8, !tbaa !6
  %154 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %153, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1857, i32 noundef 310, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, ptr noundef %146) #19
  %155 = load ptr, ptr %16, align 8, !tbaa !6
  %156 = call ptr @DestroyImage(ptr noundef %155) #19
  store ptr %156, ptr %16, align 8, !tbaa !6
  %157 = call ptr @DestroyImage(ptr noundef nonnull %139) #19
  br label %358

158:                                              ; preds = %148
  %159 = load double, ptr %15, align 16, !tbaa !35
  %160 = fmul double %159, 2.000000e+00
  %161 = fptrunc double %160 to float
  %162 = and i32 %149, 8
  %163 = icmp eq i32 %162, 0
  %164 = getelementptr inbounds %struct._GeometryInfo, ptr %15, i64 0, i32 1
  %165 = load double, ptr %164, align 8
  %166 = fmul double %165, 2.000000e+00
  %167 = fptrunc double %166 to float
  %168 = select i1 %163, float %161, float %167
  %169 = insertelement <2 x float> poison, float %161, i64 0
  %170 = insertelement <2 x float> %169, float %168, i64 1
  %171 = fpext <2 x float> %170 to <2 x double>
  %172 = and i32 %149, 1
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %192, label %174

174:                                              ; preds = %158
  %175 = getelementptr inbounds %struct._GeometryInfo, ptr %15, i64 0, i32 2
  %176 = load double, ptr %175, align 16, !tbaa !37
  %177 = call fastcc double @DegreesToRadians(double noundef %176) #18
  %178 = fptrunc double %177 to float
  %179 = fpext float %178 to double
  %180 = call double @cos(double noundef %179) #19
  %181 = call double @sin(double noundef %179) #19
  %182 = extractelement <2 x double> %171, i64 0
  %183 = fmul double %181, %182
  %184 = fneg float %168
  %185 = fpext float %184 to double
  %186 = call double @sin(double noundef %179) #19
  %187 = fmul double %186, %185
  %188 = call double @cos(double noundef %179) #19
  %189 = insertelement <2 x double> poison, double %180, i64 0
  %190 = insertelement <2 x double> %189, double %188, i64 1
  %191 = fmul <2 x double> %190, %171
  br label %192

192:                                              ; preds = %174, %158
  %193 = phi double [ %183, %174 ], [ 0.000000e+00, %158 ]
  %194 = phi double [ %187, %174 ], [ 0.000000e+00, %158 ]
  %195 = phi <2 x double> [ %191, %174 ], [ %171, %158 ]
  %196 = and i32 %149, 2
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %210, label %198

198:                                              ; preds = %192
  %199 = getelementptr inbounds %struct._GeometryInfo, ptr %15, i64 0, i32 2
  %200 = load double, ptr %199, align 16, !tbaa !37
  %201 = call fastcc double @DegreesToRadians(double noundef %200) #18
  %202 = fptrunc double %201 to float
  %203 = getelementptr inbounds %struct._GeometryInfo, ptr %15, i64 0, i32 3
  %204 = load double, ptr %203, align 8, !tbaa !38
  %205 = call fastcc double @DegreesToRadians(double noundef %204) #18
  %206 = fpext float %202 to double
  %207 = fsub double %205, %206
  %208 = fptrunc double %207 to float
  %209 = fpext float %208 to double
  br label %210

210:                                              ; preds = %198, %192
  %211 = phi double [ %206, %198 ], [ 0.000000e+00, %192 ]
  %212 = phi double [ %209, %198 ], [ 0.000000e+00, %192 ]
  %213 = load ptr, ptr %7, align 8, !tbaa !6
  %214 = load ptr, ptr %14, align 8, !tbaa !6
  %215 = call ptr @AcquireResampleFilter(ptr noundef %213, ptr noundef %214) #19
  call void @SetResampleFilter(ptr noundef %215, i32 noundef 8, double noundef 1.000000e+00) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %28, ptr noundef nonnull align 8 dereferenceable(56) %20, i64 56, i1 false), !tbaa.struct !39
  %216 = load ptr, ptr %16, align 8, !tbaa !6
  %217 = load ptr, ptr %14, align 8, !tbaa !6
  %218 = call ptr @AcquireVirtualCacheView(ptr noundef %216, ptr noundef %217) #19
  %219 = load ptr, ptr %14, align 8, !tbaa !6
  %220 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %139, ptr noundef %219) #19
  %221 = load ptr, ptr %16, align 8, !tbaa !6
  %222 = getelementptr inbounds %struct._Image, ptr %221, i64 0, i32 8
  %223 = load i64, ptr %222, align 8, !tbaa !34
  %224 = icmp sgt i64 %223, 0
  br i1 %224, label %225, label %359

225:                                              ; preds = %210
  %226 = getelementptr inbounds %struct._Image, ptr %139, i64 0, i32 7
  %227 = call double @llvm.fabs.f64(double %212)
  %228 = fcmp ogt double %227, 1.000000e-15
  %229 = fmul double %212, 0x3EF0001000100010
  %230 = fneg float %168
  %231 = fpext float %230 to double
  %232 = extractelement <2 x double> %171, i64 0
  br label %233

233:                                              ; preds = %225, %349
  %234 = phi ptr [ %221, %225 ], [ %350, %349 ]
  %235 = phi i64 [ 0, %225 ], [ %354, %349 ]
  %236 = phi double [ %194, %225 ], [ %351, %349 ]
  %237 = phi double [ %193, %225 ], [ %352, %349 ]
  %238 = phi <2 x double> [ %195, %225 ], [ %353, %349 ]
  %239 = load i64, ptr %11, align 8, !tbaa !12
  %240 = add nsw i64 %239, %235
  %241 = icmp slt i64 %240, 0
  br i1 %241, label %349, label %242

242:                                              ; preds = %233
  %243 = load ptr, ptr %7, align 8, !tbaa !6
  %244 = getelementptr inbounds %struct._Image, ptr %243, i64 0, i32 8
  %245 = load i64, ptr %244, align 8, !tbaa !34
  %246 = icmp slt i64 %240, %245
  br i1 %246, label %247, label %349

247:                                              ; preds = %242
  %248 = getelementptr inbounds %struct._Image, ptr %234, i64 0, i32 7
  %249 = load i64, ptr %248, align 8, !tbaa !33
  %250 = load ptr, ptr %14, align 8, !tbaa !6
  %251 = call ptr @GetCacheViewVirtualPixels(ptr noundef %218, i64 noundef 0, i64 noundef %235, i64 noundef %249, i64 noundef 1, ptr noundef %250) #20
  %252 = load i64, ptr %226, align 8, !tbaa !33
  %253 = load ptr, ptr %14, align 8, !tbaa !6
  %254 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %220, i64 noundef 0, i64 noundef %235, i64 noundef %252, i64 noundef 1, ptr noundef %253) #20
  %255 = icmp eq ptr %251, null
  %256 = icmp eq ptr %254, null
  %257 = select i1 %255, i1 true, i1 %256
  br i1 %257, label %359, label %258

258:                                              ; preds = %247
  %259 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %220) #19
  %260 = load ptr, ptr %16, align 8, !tbaa !6
  %261 = getelementptr inbounds %struct._Image, ptr %260, i64 0, i32 7
  %262 = load i64, ptr %261, align 8, !tbaa !33
  %263 = icmp sgt i64 %262, 0
  br i1 %263, label %264, label %340

264:                                              ; preds = %258
  %265 = sitofp i64 %235 to double
  br label %266

266:                                              ; preds = %264, %329
  %267 = phi ptr [ %260, %264 ], [ %330, %329 ]
  %268 = phi i64 [ 0, %264 ], [ %336, %329 ]
  %269 = phi ptr [ %254, %264 ], [ %333, %329 ]
  %270 = phi ptr [ %251, %264 ], [ %335, %329 ]
  %271 = phi double [ %236, %264 ], [ %332, %329 ]
  %272 = phi double [ %237, %264 ], [ %331, %329 ]
  %273 = phi <2 x double> [ %238, %264 ], [ %334, %329 ]
  %274 = load i64, ptr %10, align 8, !tbaa !12
  %275 = add nsw i64 %274, %268
  %276 = icmp slt i64 %275, 0
  br i1 %276, label %329, label %277

277:                                              ; preds = %266
  %278 = load ptr, ptr %7, align 8, !tbaa !6
  %279 = getelementptr inbounds %struct._Image, ptr %278, i64 0, i32 7
  %280 = load i64, ptr %279, align 8, !tbaa !33
  %281 = icmp slt i64 %275, %280
  br i1 %281, label %282, label %329

282:                                              ; preds = %277
  br i1 %228, label %283, label %298

283:                                              ; preds = %282
  %284 = load i16, ptr %270, align 2, !tbaa !41
  %285 = uitofp i16 %284 to double
  %286 = call double @llvm.fmuladd.f64(double %229, double %285, double %211)
  %287 = fptrunc double %286 to float
  %288 = fpext float %287 to double
  %289 = call double @cos(double noundef %288) #19
  %290 = call double @sin(double noundef %288) #19
  %291 = fmul double %290, %232
  %292 = call double @sin(double noundef %288) #19
  %293 = fmul double %292, %231
  %294 = call double @cos(double noundef %288) #19
  %295 = insertelement <2 x double> poison, double %289, i64 0
  %296 = insertelement <2 x double> %295, double %294, i64 1
  %297 = fmul <2 x double> %296, %171
  br label %298

298:                                              ; preds = %283, %282
  %299 = phi double [ %291, %283 ], [ %272, %282 ]
  %300 = phi double [ %293, %283 ], [ %271, %282 ]
  %301 = phi <2 x double> [ %297, %283 ], [ %273, %282 ]
  %302 = extractelement <2 x double> %301, i64 0
  %303 = fmul double %302, 0x3EF0001000100010
  %304 = getelementptr inbounds %struct._PixelPacket, ptr %270, i64 0, i32 2
  %305 = load i16, ptr %304, align 2, !tbaa !42
  %306 = uitofp i16 %305 to double
  %307 = fmul double %303, %306
  %308 = fmul double %300, 0x3EF0001000100010
  %309 = getelementptr inbounds %struct._PixelPacket, ptr %270, i64 0, i32 1
  %310 = load i16, ptr %309, align 2, !tbaa !43
  %311 = uitofp i16 %310 to double
  %312 = fmul double %308, %311
  %313 = fmul double %299, 0x3EF0001000100010
  %314 = fmul double %313, %306
  %315 = extractelement <2 x double> %301, i64 1
  %316 = fmul double %315, 0x3EF0001000100010
  %317 = fmul double %316, %311
  call void @ScaleResampleFilter(ptr noundef %215, double noundef %307, double noundef %312, double noundef %314, double noundef %317) #19
  %318 = load i64, ptr %10, align 8, !tbaa !12
  %319 = sitofp i64 %318 to double
  %320 = sitofp i64 %268 to double
  %321 = fadd double %320, %319
  %322 = load i64, ptr %11, align 8, !tbaa !12
  %323 = sitofp i64 %322 to double
  %324 = fadd double %265, %323
  %325 = call i32 @ResamplePixelColor(ptr noundef %215, double noundef %321, double noundef %324, ptr noundef nonnull %28) #19
  %326 = getelementptr inbounds i16, ptr %259, i64 %268
  call fastcc void @SetPixelPacket(ptr noundef nonnull %139, ptr noundef nonnull %28, ptr noundef %269, ptr noundef %326) #18
  %327 = getelementptr inbounds %struct._PixelPacket, ptr %269, i64 1
  %328 = load ptr, ptr %16, align 8, !tbaa !6
  br label %329

329:                                              ; preds = %266, %277, %298
  %330 = phi ptr [ %328, %298 ], [ %267, %277 ], [ %267, %266 ]
  %331 = phi double [ %299, %298 ], [ %272, %277 ], [ %272, %266 ]
  %332 = phi double [ %300, %298 ], [ %271, %277 ], [ %271, %266 ]
  %333 = phi ptr [ %327, %298 ], [ %269, %277 ], [ %269, %266 ]
  %334 = phi <2 x double> [ %301, %298 ], [ %273, %277 ], [ %273, %266 ]
  %335 = getelementptr inbounds %struct._PixelPacket, ptr %270, i64 1
  %336 = add nuw nsw i64 %268, 1
  %337 = getelementptr inbounds %struct._Image, ptr %330, i64 0, i32 7
  %338 = load i64, ptr %337, align 8, !tbaa !33
  %339 = icmp slt i64 %336, %338
  br i1 %339, label %266, label %340, !llvm.loop !44

340:                                              ; preds = %329, %258
  %341 = phi double [ %237, %258 ], [ %331, %329 ]
  %342 = phi double [ %236, %258 ], [ %332, %329 ]
  %343 = phi <2 x double> [ %238, %258 ], [ %334, %329 ]
  %344 = load ptr, ptr %14, align 8, !tbaa !6
  %345 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %220, ptr noundef %344) #20
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %359, label %347

347:                                              ; preds = %340
  %348 = load ptr, ptr %16, align 8, !tbaa !6
  br label %349

349:                                              ; preds = %347, %233, %242
  %350 = phi ptr [ %348, %347 ], [ %234, %242 ], [ %234, %233 ]
  %351 = phi double [ %342, %347 ], [ %236, %242 ], [ %236, %233 ]
  %352 = phi double [ %341, %347 ], [ %237, %242 ], [ %237, %233 ]
  %353 = phi <2 x double> [ %343, %347 ], [ %238, %242 ], [ %238, %233 ]
  %354 = add nuw nsw i64 %235, 1
  %355 = getelementptr inbounds %struct._Image, ptr %350, i64 0, i32 8
  %356 = load i64, ptr %355, align 8, !tbaa !34
  %357 = icmp slt i64 %354, %356
  br i1 %357, label %233, label %359, !llvm.loop !46

358:                                              ; preds = %141, %152
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %28) #5
  br label %807

359:                                              ; preds = %340, %349, %247, %210
  %360 = call ptr @DestroyResampleFilter(ptr noundef %215) #19
  %361 = call ptr @DestroyCacheView(ptr noundef %218) #19
  %362 = call ptr @DestroyCacheView(ptr noundef %220) #19
  %363 = load ptr, ptr %16, align 8, !tbaa !6
  %364 = call ptr @DestroyImage(ptr noundef %363) #19
  store ptr %139, ptr %16, align 8, !tbaa !6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %28) #5
  br label %743

365:                                              ; preds = %52, %52
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %29) #5
  %366 = load ptr, ptr %7, align 8, !tbaa !6
  %367 = getelementptr inbounds %struct._Image, ptr %366, i64 0, i32 7
  %368 = load i64, ptr %367, align 8, !tbaa !33
  %369 = getelementptr inbounds %struct._Image, ptr %366, i64 0, i32 8
  %370 = load i64, ptr %369, align 8, !tbaa !34
  %371 = load ptr, ptr %14, align 8, !tbaa !6
  %372 = call ptr @CloneImage(ptr noundef %366, i64 noundef %368, i64 noundef %370, i32 noundef 1, ptr noundef %371) #19
  %373 = icmp eq ptr %372, null
  br i1 %373, label %374, label %377

374:                                              ; preds = %365
  %375 = load ptr, ptr %16, align 8, !tbaa !6
  %376 = call ptr @DestroyImage(ptr noundef %375) #19
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %29) #5
  br label %807

377:                                              ; preds = %365
  call void @SetGeometryInfo(ptr noundef nonnull %15) #19
  %378 = load ptr, ptr %16, align 8, !tbaa !6
  %379 = call ptr @GetImageArtifact(ptr noundef %378, ptr noundef nonnull @.str.4) #19
  %380 = icmp eq ptr %379, null
  br i1 %380, label %388, label %381

381:                                              ; preds = %377
  %382 = call i32 @ParseGeometry(ptr noundef nonnull %379, ptr noundef nonnull %15) #19
  %383 = and i32 %382, 12
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %385, label %405

385:                                              ; preds = %381
  %386 = and i32 %382, 8192
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %388, label %397

388:                                              ; preds = %377, %385
  %389 = phi i32 [ %382, %385 ], [ 0, %377 ]
  %390 = load ptr, ptr %16, align 8, !tbaa !6
  %391 = getelementptr inbounds %struct._Image, ptr %390, i64 0, i32 7
  %392 = load <2 x i64>, ptr %391, align 8, !tbaa !12
  %393 = uitofp <2 x i64> %392 to <2 x double>
  %394 = fadd <2 x double> %393, <double -1.000000e+00, double -1.000000e+00>
  %395 = fptrunc <2 x double> %394 to <2 x float>
  %396 = fmul <2 x float> %395, <float 5.000000e-01, float 5.000000e-01>
  br label %430

397:                                              ; preds = %385
  %398 = load ptr, ptr %7, align 8, !tbaa !6
  %399 = getelementptr inbounds %struct._Image, ptr %398, i64 0, i32 7
  %400 = load <2 x i64>, ptr %399, align 8, !tbaa !12
  %401 = uitofp <2 x i64> %400 to <2 x double>
  %402 = fadd <2 x double> %401, <double -1.000000e+00, double -1.000000e+00>
  %403 = fptrunc <2 x double> %402 to <2 x float>
  %404 = fmul <2 x float> %403, <float 5.000000e-01, float 5.000000e-01>
  br label %430

405:                                              ; preds = %381
  %406 = load <2 x double>, ptr %15, align 16, !tbaa !40
  %407 = fptrunc <2 x double> %406 to <2 x float>
  %408 = and i32 %382, 4096
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %424, label %410

410:                                              ; preds = %405
  %411 = and i32 %382, 8192
  %412 = icmp eq i32 %411, 0
  %413 = fpext <2 x float> %407 to <2 x double>
  %414 = load ptr, ptr %16, align 8
  %415 = load ptr, ptr %7, align 8
  %416 = select i1 %412, ptr %414, ptr %415
  %417 = getelementptr inbounds %struct._Image, ptr %416, i64 0, i32 7
  %418 = load <2 x i64>, ptr %417, align 8, !tbaa !12
  %419 = uitofp <2 x i64> %418 to <2 x double>
  %420 = fadd <2 x double> %419, <double -1.000000e+00, double -1.000000e+00>
  %421 = fdiv <2 x double> %420, <double 2.000000e+02, double 2.000000e+02>
  %422 = fmul <2 x double> %421, %413
  %423 = fptrunc <2 x double> %422 to <2 x float>
  br label %424

424:                                              ; preds = %410, %405
  %425 = phi <2 x float> [ %407, %405 ], [ %423, %410 ]
  %426 = and i32 %382, 8
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %428, label %430

428:                                              ; preds = %424
  %429 = shufflevector <2 x float> %425, <2 x float> poison, <2 x i32> zeroinitializer
  br label %430

430:                                              ; preds = %424, %428, %388, %397
  %431 = phi i32 [ %389, %388 ], [ %382, %397 ], [ %382, %428 ], [ %382, %424 ]
  %432 = phi <2 x float> [ %396, %388 ], [ %404, %397 ], [ %429, %428 ], [ %425, %424 ]
  %433 = load i64, ptr %10, align 8, !tbaa !12
  %434 = sitofp i64 %433 to float
  %435 = fpext float %434 to double
  %436 = load i64, ptr %11, align 8, !tbaa !12
  %437 = sitofp i64 %436 to float
  %438 = fpext float %437 to double
  %439 = icmp eq i32 %2, 56
  br i1 %439, label %440, label %513

440:                                              ; preds = %430
  %441 = and i32 %431, 1
  %442 = icmp eq i32 %441, 0
  %443 = and i32 %431, 8192
  %444 = icmp eq i32 %443, 0
  br i1 %442, label %445, label %465

445:                                              ; preds = %440
  br i1 %444, label %446, label %457

446:                                              ; preds = %445
  %447 = sitofp i64 %433 to double
  %448 = load ptr, ptr %16, align 8, !tbaa !6
  %449 = getelementptr inbounds %struct._Image, ptr %448, i64 0, i32 7
  %450 = load i64, ptr %449, align 8, !tbaa !33
  %451 = add i64 %450, -1
  %452 = uitofp i64 %451 to double
  %453 = fmul double %452, 5.000000e-01
  %454 = fadd double %453, %447
  %455 = fptrunc double %454 to float
  %456 = fpext float %455 to double
  br label %476

457:                                              ; preds = %445
  %458 = load ptr, ptr %7, align 8, !tbaa !6
  %459 = getelementptr inbounds %struct._Image, ptr %458, i64 0, i32 7
  %460 = load i64, ptr %459, align 8, !tbaa !33
  %461 = uitofp i64 %460 to float
  %462 = fadd float %461, -1.000000e+00
  %463 = fpext float %462 to double
  %464 = fmul double %463, 5.000000e-01
  br label %476

465:                                              ; preds = %440
  br i1 %444, label %466, label %473

466:                                              ; preds = %465
  %467 = sitofp i64 %433 to double
  %468 = getelementptr inbounds %struct._GeometryInfo, ptr %15, i64 0, i32 2
  %469 = load double, ptr %468, align 16, !tbaa !37
  %470 = fadd double %469, %467
  %471 = fptrunc double %470 to float
  %472 = fpext float %471 to double
  br label %476

473:                                              ; preds = %465
  %474 = getelementptr inbounds %struct._GeometryInfo, ptr %15, i64 0, i32 2
  %475 = load double, ptr %474, align 16, !tbaa !37
  br label %476

476:                                              ; preds = %466, %473, %446, %457
  %477 = phi double [ %456, %446 ], [ %464, %457 ], [ %472, %466 ], [ %475, %473 ]
  %478 = and i32 %431, 2
  %479 = icmp eq i32 %478, 0
  %480 = and i32 %431, 8192
  %481 = icmp eq i32 %480, 0
  br i1 %479, label %482, label %502

482:                                              ; preds = %476
  br i1 %481, label %483, label %494

483:                                              ; preds = %482
  %484 = sitofp i64 %436 to double
  %485 = load ptr, ptr %16, align 8, !tbaa !6
  %486 = getelementptr inbounds %struct._Image, ptr %485, i64 0, i32 8
  %487 = load i64, ptr %486, align 8, !tbaa !34
  %488 = add i64 %487, -1
  %489 = uitofp i64 %488 to double
  %490 = fmul double %489, 5.000000e-01
  %491 = fadd double %490, %484
  %492 = fptrunc double %491 to float
  %493 = fpext float %492 to double
  br label %513

494:                                              ; preds = %482
  %495 = load ptr, ptr %7, align 8, !tbaa !6
  %496 = getelementptr inbounds %struct._Image, ptr %495, i64 0, i32 8
  %497 = load i64, ptr %496, align 8, !tbaa !34
  %498 = uitofp i64 %497 to float
  %499 = fadd float %498, -1.000000e+00
  %500 = fpext float %499 to double
  %501 = fmul double %500, 5.000000e-01
  br label %513

502:                                              ; preds = %476
  br i1 %481, label %503, label %510

503:                                              ; preds = %502
  %504 = sitofp i64 %436 to double
  %505 = getelementptr inbounds %struct._GeometryInfo, ptr %15, i64 0, i32 3
  %506 = load double, ptr %505, align 8, !tbaa !38
  %507 = fadd double %506, %504
  %508 = fptrunc double %507 to float
  %509 = fpext float %508 to double
  br label %513

510:                                              ; preds = %502
  %511 = getelementptr inbounds %struct._GeometryInfo, ptr %15, i64 0, i32 3
  %512 = load double, ptr %511, align 8, !tbaa !38
  br label %513

513:                                              ; preds = %494, %483, %510, %503, %430
  %514 = phi double [ %493, %483 ], [ %501, %494 ], [ %509, %503 ], [ %512, %510 ], [ %438, %430 ]
  %515 = phi double [ %477, %483 ], [ %477, %494 ], [ %477, %503 ], [ %477, %510 ], [ %435, %430 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %29, ptr noundef nonnull align 8 dereferenceable(56) %20, i64 56, i1 false), !tbaa.struct !39
  %516 = load ptr, ptr %7, align 8, !tbaa !6
  %517 = load ptr, ptr %14, align 8, !tbaa !6
  %518 = call ptr @AcquireVirtualCacheView(ptr noundef %516, ptr noundef %517) #19
  %519 = load ptr, ptr %16, align 8, !tbaa !6
  %520 = load ptr, ptr %14, align 8, !tbaa !6
  %521 = call ptr @AcquireVirtualCacheView(ptr noundef %519, ptr noundef %520) #19
  %522 = load ptr, ptr %14, align 8, !tbaa !6
  %523 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %372, ptr noundef %522) #19
  %524 = load ptr, ptr %16, align 8, !tbaa !6
  %525 = getelementptr inbounds %struct._Image, ptr %524, i64 0, i32 8
  %526 = load i64, ptr %525, align 8, !tbaa !34
  %527 = icmp sgt i64 %526, 0
  br i1 %527, label %528, label %636

528:                                              ; preds = %513
  %529 = getelementptr inbounds %struct._Image, ptr %372, i64 0, i32 7
  %530 = extractelement <2 x float> %432, i64 0
  %531 = fpext float %530 to double
  %532 = extractelement <2 x float> %432, i64 1
  %533 = fpext float %532 to double
  %534 = getelementptr inbounds %struct._MagickPixelPacket, ptr %29, i64 0, i32 8
  br label %535

535:                                              ; preds = %528, %630
  %536 = phi ptr [ %524, %528 ], [ %631, %630 ]
  %537 = phi i64 [ 0, %528 ], [ %632, %630 ]
  %538 = load i64, ptr %11, align 8, !tbaa !12
  %539 = add nsw i64 %538, %537
  %540 = icmp slt i64 %539, 0
  br i1 %540, label %630, label %541

541:                                              ; preds = %535
  %542 = load ptr, ptr %7, align 8, !tbaa !6
  %543 = getelementptr inbounds %struct._Image, ptr %542, i64 0, i32 8
  %544 = load i64, ptr %543, align 8, !tbaa !34
  %545 = icmp slt i64 %539, %544
  br i1 %545, label %546, label %630

546:                                              ; preds = %541
  %547 = getelementptr inbounds %struct._Image, ptr %536, i64 0, i32 7
  %548 = load i64, ptr %547, align 8, !tbaa !33
  %549 = load ptr, ptr %14, align 8, !tbaa !6
  %550 = call ptr @GetCacheViewVirtualPixels(ptr noundef %521, i64 noundef 0, i64 noundef %537, i64 noundef %548, i64 noundef 1, ptr noundef %549) #20
  %551 = load i64, ptr %529, align 8, !tbaa !33
  %552 = load ptr, ptr %14, align 8, !tbaa !6
  %553 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %523, i64 noundef 0, i64 noundef %537, i64 noundef %551, i64 noundef 1, ptr noundef %552) #20
  %554 = icmp eq ptr %550, null
  %555 = icmp eq ptr %553, null
  %556 = select i1 %554, i1 true, i1 %555
  br i1 %556, label %636, label %557

557:                                              ; preds = %546
  %558 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %523) #19
  %559 = load ptr, ptr %16, align 8, !tbaa !6
  %560 = getelementptr inbounds %struct._Image, ptr %559, i64 0, i32 7
  %561 = load i64, ptr %560, align 8, !tbaa !33
  %562 = icmp sgt i64 %561, 0
  br i1 %562, label %563, label %624

563:                                              ; preds = %557
  %564 = sitofp i64 %537 to double
  br label %565

565:                                              ; preds = %563, %616
  %566 = phi ptr [ %559, %563 ], [ %617, %616 ]
  %567 = phi i64 [ 0, %563 ], [ %620, %616 ]
  %568 = phi ptr [ %550, %563 ], [ %619, %616 ]
  %569 = phi ptr [ %553, %563 ], [ %618, %616 ]
  %570 = load i64, ptr %10, align 8, !tbaa !12
  %571 = add nsw i64 %570, %567
  %572 = icmp slt i64 %571, 0
  br i1 %572, label %616, label %573

573:                                              ; preds = %565
  %574 = load ptr, ptr %7, align 8, !tbaa !6
  %575 = getelementptr inbounds %struct._Image, ptr %574, i64 0, i32 7
  %576 = load i64, ptr %575, align 8, !tbaa !33
  %577 = icmp slt i64 %571, %576
  br i1 %577, label %578, label %616

578:                                              ; preds = %573
  %579 = getelementptr inbounds %struct._PixelPacket, ptr %568, i64 0, i32 2
  %580 = load i16, ptr %579, align 2, !tbaa !42
  %581 = uitofp i16 %580 to double
  %582 = fadd double %581, -3.276800e+04
  %583 = fmul double %582, %531
  %584 = fmul double %583, 0x3F00000000000000
  %585 = fadd double %515, %584
  %586 = load i32, ptr %9, align 4, !tbaa !10
  %587 = icmp eq i32 %586, 27
  %588 = sitofp i64 %567 to double
  %589 = select i1 %587, double %588, double 0.000000e+00
  %590 = fadd double %589, %585
  %591 = getelementptr inbounds %struct._PixelPacket, ptr %568, i64 0, i32 1
  %592 = load i16, ptr %591, align 2, !tbaa !43
  %593 = uitofp i16 %592 to double
  %594 = fadd double %593, -3.276800e+04
  %595 = fmul double %594, %533
  %596 = fmul double %595, 0x3F00000000000000
  %597 = fadd double %514, %596
  %598 = select i1 %587, double %564, double 0.000000e+00
  %599 = fadd double %598, %597
  %600 = load ptr, ptr %14, align 8, !tbaa !6
  %601 = call i32 @InterpolateMagickPixelPacket(ptr noundef nonnull %574, ptr noundef %518, i32 noundef 0, double noundef %590, double noundef %599, ptr noundef nonnull %29, ptr noundef %600) #19
  %602 = load float, ptr %534, align 4, !tbaa !47
  %603 = fpext float %602 to double
  %604 = call double @llvm.fmuladd.f64(double %603, double 0xBEF0001000100010, double 1.000000e+00)
  %605 = getelementptr inbounds %struct._PixelPacket, ptr %568, i64 0, i32 3
  %606 = load i16, ptr %605, align 2, !tbaa !49
  %607 = uitofp i16 %606 to double
  %608 = call double @llvm.fmuladd.f64(double %607, double 0xBEF0001000100010, double 1.000000e+00)
  %609 = fneg double %604
  %610 = call double @llvm.fmuladd.f64(double %609, double %608, double 1.000000e+00)
  %611 = fmul double %610, 6.553500e+04
  %612 = fptrunc double %611 to float
  store float %612, ptr %534, align 4, !tbaa !47
  %613 = getelementptr inbounds i16, ptr %558, i64 %567
  call fastcc void @SetPixelPacket(ptr noundef nonnull %372, ptr noundef nonnull %29, ptr noundef %569, ptr noundef %613) #18
  %614 = getelementptr inbounds %struct._PixelPacket, ptr %569, i64 1
  %615 = load ptr, ptr %16, align 8, !tbaa !6
  br label %616

616:                                              ; preds = %565, %573, %578
  %617 = phi ptr [ %615, %578 ], [ %566, %573 ], [ %566, %565 ]
  %618 = phi ptr [ %614, %578 ], [ %569, %573 ], [ %569, %565 ]
  %619 = getelementptr inbounds %struct._PixelPacket, ptr %568, i64 1
  %620 = add nuw nsw i64 %567, 1
  %621 = getelementptr inbounds %struct._Image, ptr %617, i64 0, i32 7
  %622 = load i64, ptr %621, align 8, !tbaa !33
  %623 = icmp slt i64 %620, %622
  br i1 %623, label %565, label %624, !llvm.loop !50

624:                                              ; preds = %616, %557
  %625 = load ptr, ptr %14, align 8, !tbaa !6
  %626 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %523, ptr noundef %625) #20
  %627 = icmp eq i32 %626, 0
  br i1 %627, label %636, label %628

628:                                              ; preds = %624
  %629 = load ptr, ptr %16, align 8, !tbaa !6
  br label %630

630:                                              ; preds = %628, %535, %541
  %631 = phi ptr [ %629, %628 ], [ %536, %535 ], [ %536, %541 ]
  %632 = add nuw nsw i64 %537, 1
  %633 = getelementptr inbounds %struct._Image, ptr %631, i64 0, i32 8
  %634 = load i64, ptr %633, align 8, !tbaa !34
  %635 = icmp slt i64 %632, %634
  br i1 %635, label %535, label %636, !llvm.loop !51

636:                                              ; preds = %624, %630, %546, %513
  %637 = call ptr @DestroyCacheView(ptr noundef %523) #19
  %638 = call ptr @DestroyCacheView(ptr noundef %521) #19
  %639 = call ptr @DestroyCacheView(ptr noundef %518) #19
  %640 = load ptr, ptr %16, align 8, !tbaa !6
  %641 = call ptr @DestroyImage(ptr noundef %640) #19
  store ptr %372, ptr %16, align 8, !tbaa !6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %29) #5
  br label %743

642:                                              ; preds = %52
  %643 = load ptr, ptr %16, align 8, !tbaa !6
  %644 = call ptr @GetImageArtifact(ptr noundef %643, ptr noundef nonnull @.str.4) #19
  %645 = icmp eq ptr %644, null
  br i1 %645, label %743, label %646

646:                                              ; preds = %642
  %647 = call i32 @ParseGeometry(ptr noundef nonnull %644, ptr noundef nonnull %15) #19
  %648 = load double, ptr %15, align 16, !tbaa !35
  %649 = fdiv double %648, 1.000000e+02
  %650 = fptrunc double %649 to float
  store float %650, ptr %26, align 4, !tbaa !30
  store float 1.000000e+00, ptr %22, align 4, !tbaa !30
  %651 = fpext float %650 to double
  %652 = fadd double %651, -1.000000e-15
  %653 = fcmp olt double %652, 0.000000e+00
  br i1 %653, label %654, label %655

654:                                              ; preds = %646
  store float 0.000000e+00, ptr %26, align 4, !tbaa !30
  br label %655

655:                                              ; preds = %654, %646
  %656 = phi float [ 0.000000e+00, %654 ], [ %650, %646 ]
  %657 = fpext float %656 to double
  %658 = fadd double %657, 1.000000e-15
  %659 = fcmp ogt double %658, 1.000000e+00
  br i1 %659, label %660, label %662

660:                                              ; preds = %655
  %661 = fsub float 2.000000e+00, %656
  store float %661, ptr %22, align 4, !tbaa !30
  store float 1.000000e+00, ptr %26, align 4, !tbaa !30
  br label %662

662:                                              ; preds = %660, %655
  %663 = phi float [ %661, %660 ], [ 1.000000e+00, %655 ]
  %664 = and i32 %647, 8
  %665 = icmp eq i32 %664, 0
  br i1 %665, label %671, label %666

666:                                              ; preds = %662
  %667 = getelementptr inbounds %struct._GeometryInfo, ptr %15, i64 0, i32 1
  %668 = load double, ptr %667, align 8, !tbaa !52
  %669 = fdiv double %668, 1.000000e+02
  %670 = fptrunc double %669 to float
  store float %670, ptr %22, align 4, !tbaa !30
  br label %671

671:                                              ; preds = %666, %662
  %672 = phi float [ %670, %666 ], [ %663, %662 ]
  %673 = fpext float %672 to double
  %674 = fadd double %673, -1.000000e-15
  %675 = fcmp olt double %674, 0.000000e+00
  br i1 %675, label %676, label %677

676:                                              ; preds = %671
  store float 0.000000e+00, ptr %22, align 4, !tbaa !30
  br label %677

677:                                              ; preds = %676, %671
  %678 = phi float [ 0.000000e+00, %676 ], [ %672, %671 ]
  store i32 0, ptr %17, align 4, !tbaa !10
  %679 = fpext float %678 to double
  %680 = fadd double %679, 1.000000e-15
  %681 = fcmp ogt double %680, 1.000000e+00
  br i1 %681, label %682, label %743

682:                                              ; preds = %677
  store float 1.000000e+00, ptr %22, align 4, !tbaa !30
  store i32 1, ptr %17, align 4, !tbaa !10
  br label %743

683:                                              ; preds = %52
  %684 = load ptr, ptr %16, align 8, !tbaa !6
  %685 = call ptr @GetImageArtifact(ptr noundef %684, ptr noundef nonnull @.str.4) #19
  %686 = icmp eq ptr %685, null
  br i1 %686, label %743, label %687

687:                                              ; preds = %683
  %688 = call i32 @ParseGeometry(ptr noundef nonnull %685, ptr noundef nonnull %15) #19
  %689 = load double, ptr %15, align 16, !tbaa !35
  %690 = fdiv double %689, 1.000000e+02
  %691 = fptrunc double %690 to float
  store float %691, ptr %26, align 4, !tbaa !30
  %692 = fsub float 1.000000e+00, %691
  store float %692, ptr %22, align 4, !tbaa !30
  %693 = and i32 %688, 8
  %694 = icmp eq i32 %693, 0
  br i1 %694, label %700, label %695

695:                                              ; preds = %687
  %696 = getelementptr inbounds %struct._GeometryInfo, ptr %15, i64 0, i32 1
  %697 = load double, ptr %696, align 8, !tbaa !52
  %698 = fdiv double %697, 1.000000e+02
  %699 = fptrunc double %698 to float
  store float %699, ptr %22, align 4, !tbaa !30
  br label %700

700:                                              ; preds = %695, %687
  %701 = phi float [ %699, %695 ], [ %692, %687 ]
  store i32 0, ptr %17, align 4, !tbaa !10
  %702 = fpext float %701 to double
  %703 = fadd double %702, 1.000000e-15
  %704 = fcmp ogt double %703, 1.000000e+00
  br i1 %704, label %705, label %743

705:                                              ; preds = %700
  store i32 1, ptr %17, align 4, !tbaa !10
  br label %743

706:                                              ; preds = %52
  call void @SetGeometryInfo(ptr noundef nonnull %15) #19
  %707 = load ptr, ptr %16, align 8, !tbaa !6
  %708 = call ptr @GetImageArtifact(ptr noundef %707, ptr noundef nonnull @.str.4) #19
  %709 = icmp eq ptr %708, null
  br i1 %709, label %743, label %710

710:                                              ; preds = %706
  %711 = call i32 @ParseGeometry(ptr noundef nonnull %708, ptr noundef nonnull %15) #19
  br label %743

712:                                              ; preds = %52
  %713 = load ptr, ptr %16, align 8, !tbaa !6
  %714 = call ptr @GetImageArtifact(ptr noundef %713, ptr noundef nonnull @.str.4) #19
  %715 = icmp eq ptr %714, null
  br i1 %715, label %743, label %716

716:                                              ; preds = %712
  %717 = call i32 @ParseGeometry(ptr noundef nonnull %714, ptr noundef nonnull %15) #19
  %718 = load double, ptr %15, align 16, !tbaa !35
  %719 = fptrunc double %718 to float
  store float %719, ptr %24, align 4, !tbaa !30
  %720 = and i32 %717, 8
  %721 = icmp eq i32 %720, 0
  br i1 %721, label %743, label %722

722:                                              ; preds = %716
  %723 = getelementptr inbounds %struct._GeometryInfo, ptr %15, i64 0, i32 1
  %724 = load double, ptr %723, align 8, !tbaa !52
  %725 = fptrunc double %724 to float
  store float %725, ptr %25, align 4, !tbaa !30
  br label %743

726:                                              ; preds = %52
  %727 = load ptr, ptr %16, align 8, !tbaa !6
  %728 = call ptr @GetImageArtifact(ptr noundef %727, ptr noundef nonnull @.str.4) #19
  %729 = icmp eq ptr %728, null
  br i1 %729, label %741, label %730

730:                                              ; preds = %726
  %731 = call i32 @ParseGeometry(ptr noundef nonnull %728, ptr noundef nonnull %15) #19
  %732 = load double, ptr %15, align 16, !tbaa !35
  %733 = fptrunc double %732 to float
  store float %733, ptr %21, align 4, !tbaa !30
  %734 = getelementptr inbounds %struct._GeometryInfo, ptr %15, i64 0, i32 1
  %735 = load double, ptr %734, align 8, !tbaa !52
  %736 = fptrunc double %735 to float
  %737 = and i32 %731, 8
  %738 = icmp eq i32 %737, 0
  %739 = fmul float %736, 6.553500e+04
  %740 = select i1 %738, float 3.276750e+03, float %739
  br label %741

741:                                              ; preds = %730, %726
  %742 = phi float [ %740, %730 ], [ 3.276750e+03, %726 ]
  store float %742, ptr %27, align 4, !tbaa !30
  br label %743

743:                                              ; preds = %636, %359, %52, %712, %722, %716, %706, %710, %683, %705, %700, %642, %682, %677, %81, %72, %66, %61, %56, %741, %131, %55
  %744 = phi ptr [ null, %52 ], [ null, %741 ], [ null, %722 ], [ null, %716 ], [ null, %712 ], [ null, %710 ], [ null, %706 ], [ null, %705 ], [ null, %700 ], [ null, %683 ], [ null, %682 ], [ null, %677 ], [ null, %642 ], [ %372, %636 ], [ %139, %359 ], [ null, %131 ], [ null, %66 ], [ null, %72 ], [ null, %81 ], [ null, %56 ], [ null, %61 ], [ null, %55 ]
  %745 = load ptr, ptr %16, align 8, !tbaa !6
  %746 = call ptr @GetImageArtifact(ptr noundef %745, ptr noundef nonnull @.str.7) #19
  %747 = icmp eq ptr %746, null
  br i1 %747, label %752, label %748

748:                                              ; preds = %743
  %749 = call i32 @IsMagickTrue(ptr noundef nonnull %746) #19
  %750 = icmp eq i32 %749, 0
  %751 = zext i1 %750 to i32
  store i32 %751, ptr %17, align 4, !tbaa !10
  br label %752

752:                                              ; preds = %748, %743
  %753 = load ptr, ptr %7, align 8, !tbaa !6
  %754 = load i32, ptr %8, align 4, !tbaa !10
  %755 = load i32, ptr %9, align 4, !tbaa !10
  %756 = load ptr, ptr %16, align 8, !tbaa !6
  %757 = load i64, ptr %10, align 8, !tbaa !12
  %758 = load i64, ptr %11, align 8, !tbaa !12
  %759 = load float, ptr %22, align 4, !tbaa !30
  %760 = load float, ptr %26, align 4, !tbaa !30
  %761 = load ptr, ptr %14, align 8, !tbaa !6
  %762 = call i32 @AccelerateCompositeImage(ptr noundef %753, i32 noundef %754, i32 noundef %755, ptr noundef %756, i64 noundef %757, i64 noundef %758, float noundef %759, float noundef %760, ptr noundef %761) #19
  %763 = icmp eq i32 %762, 1
  br i1 %763, label %807, label %764

764:                                              ; preds = %752
  store i32 1, ptr %18, align 4, !tbaa !10
  store i64 0, ptr %19, align 8, !tbaa !53
  store float 3.276800e+04, ptr %23, align 4, !tbaa !30
  %765 = load ptr, ptr %16, align 8, !tbaa !6
  call void @GetMagickPixelPacket(ptr noundef %765, ptr noundef nonnull %20) #19
  %766 = load ptr, ptr %16, align 8, !tbaa !6
  %767 = load ptr, ptr %14, align 8, !tbaa !6
  %768 = call ptr @AcquireVirtualCacheView(ptr noundef %766, ptr noundef %767) #19
  store ptr %768, ptr %12, align 8, !tbaa !6
  %769 = load ptr, ptr %7, align 8, !tbaa !6
  %770 = load ptr, ptr %14, align 8, !tbaa !6
  %771 = call ptr @AcquireAuthenticCacheView(ptr noundef %769, ptr noundef %770) #19
  store ptr %771, ptr %13, align 8, !tbaa !6
  %772 = load ptr, ptr %7, align 8, !tbaa !6
  %773 = getelementptr inbounds %struct._Image, ptr %772, i64 0, i32 8
  %774 = load i64, ptr %773, align 8, !tbaa !34
  %775 = call i64 @GetMagickResourceLimit(i32 noundef 6) #19
  %776 = shl i64 %775, 5
  %777 = icmp ugt i64 %774, %776
  br i1 %777, label %778, label %788

778:                                              ; preds = %764
  %779 = load ptr, ptr %16, align 8, !tbaa !6
  %780 = call i32 @GetImagePixelCacheType(ptr noundef %779) #19
  %781 = icmp eq i32 %780, 3
  br i1 %781, label %788, label %782

782:                                              ; preds = %778
  %783 = load ptr, ptr %7, align 8, !tbaa !6
  %784 = call i32 @GetImagePixelCacheType(ptr noundef %783) #19
  %785 = icmp eq i32 %784, 3
  br i1 %785, label %788, label %786

786:                                              ; preds = %782
  %787 = call i64 @GetMagickResourceLimit(i32 noundef 6) #19
  br label %792

788:                                              ; preds = %782, %778, %764
  %789 = call i64 @GetMagickResourceLimit(i32 noundef 6) #19
  %790 = icmp ult i64 %789, 2
  %791 = select i1 %790, i64 1, i64 2
  br label %792

792:                                              ; preds = %788, %786
  %793 = phi i64 [ %787, %786 ], [ %791, %788 ]
  %794 = trunc i64 %793 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %30, i32 %794)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 20, ptr nonnull @CompositeImageChannel.omp_outlined.8, ptr nonnull %7, ptr nonnull %18, ptr nonnull %17, ptr nonnull %11, ptr nonnull %16, ptr nonnull %12, ptr nonnull %14, ptr nonnull %10, ptr nonnull %13, ptr nonnull %9, ptr nonnull %22, ptr nonnull %8, ptr nonnull %15, ptr nonnull %26, ptr nonnull %27, ptr nonnull %21, ptr nonnull %23, ptr nonnull %24, ptr nonnull %25, ptr nonnull %19)
  %795 = load ptr, ptr %12, align 8, !tbaa !6
  %796 = call ptr @DestroyCacheView(ptr noundef %795) #19
  store ptr %796, ptr %12, align 8, !tbaa !6
  %797 = load ptr, ptr %13, align 8, !tbaa !6
  %798 = call ptr @DestroyCacheView(ptr noundef %797) #19
  store ptr %798, ptr %13, align 8, !tbaa !6
  %799 = icmp eq ptr %744, null
  br i1 %799, label %802, label %800

800:                                              ; preds = %792
  %801 = call ptr @DestroyImage(ptr noundef nonnull %744) #19
  br label %805

802:                                              ; preds = %792
  %803 = load ptr, ptr %16, align 8, !tbaa !6
  %804 = call ptr @DestroyImage(ptr noundef %803) #19
  br label %805

805:                                              ; preds = %802, %800
  %806 = load i32, ptr %18, align 4, !tbaa !10
  br label %807

807:                                              ; preds = %374, %358, %752, %40, %37, %805, %114
  %808 = phi i32 [ %806, %805 ], [ %123, %114 ], [ 0, %37 ], [ 0, %40 ], [ 1, %752 ], [ 0, %358 ], [ 0, %374 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %27) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %26) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %25) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %24) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %23) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %22) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %20) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %15) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #5
  ret i32 %808
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @IsGrayColorspace(i32 noundef %0) unnamed_addr #3 {
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
declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @CompositeImageChannel.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %9) #4 {
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = load ptr, ptr %2, align 8, !tbaa !6
  %16 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 8
  %17 = load i64, ptr %16, align 8, !tbaa !34
  %18 = add nsw i64 %17, -1
  %19 = icmp sgt i64 %17, 0
  br i1 %19, label %20, label %105

20:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #5
  store i64 0, ptr %11, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #5
  store i64 %18, ptr %12, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #5
  store i64 1, ptr %13, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #5
  store i32 0, ptr %14, align 4, !tbaa !10
  %21 = load i32, ptr %0, align 4, !tbaa !10
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %21, i32 33, ptr nonnull %14, ptr nonnull %11, ptr nonnull %12, ptr nonnull %13, i64 1, i64 4)
  %22 = load i64, ptr %12, align 8
  %23 = call i64 @llvm.smin.i64(i64 %22, i64 %18)
  store i64 %23, ptr %12, align 8, !tbaa !12
  %24 = load i64, ptr %11, align 8, !tbaa !12
  %25 = icmp sgt i64 %24, %23
  br i1 %25, label %104, label %26

26:                                               ; preds = %20, %96
  %27 = phi i64 [ %102, %96 ], [ %23, %20 ]
  %28 = phi i64 [ %100, %96 ], [ %24, %20 ]
  %29 = icmp sgt i64 %28, %27
  br i1 %29, label %96, label %30

30:                                               ; preds = %26, %90
  %31 = phi i64 [ %91, %90 ], [ %28, %26 ]
  %32 = load i32, ptr %3, align 4, !tbaa !10
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %90, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %4, align 8, !tbaa !6
  %36 = load ptr, ptr %2, align 8, !tbaa !6
  %37 = getelementptr inbounds %struct._Image, ptr %36, i64 0, i32 7
  %38 = load i64, ptr %37, align 8, !tbaa !33
  %39 = load ptr, ptr %5, align 8, !tbaa !6
  %40 = call ptr @GetCacheViewVirtualPixels(ptr noundef %35, i64 noundef 0, i64 noundef %31, i64 noundef %38, i64 noundef 1, ptr noundef %39) #20
  %41 = load ptr, ptr %6, align 8, !tbaa !6
  %42 = load i64, ptr %7, align 8, !tbaa !12
  %43 = load i64, ptr %8, align 8, !tbaa !12
  %44 = add nsw i64 %43, %31
  %45 = load ptr, ptr %2, align 8, !tbaa !6
  %46 = getelementptr inbounds %struct._Image, ptr %45, i64 0, i32 7
  %47 = load i64, ptr %46, align 8, !tbaa !33
  %48 = load ptr, ptr %5, align 8, !tbaa !6
  %49 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %41, i64 noundef %42, i64 noundef %44, i64 noundef %47, i64 noundef 1, ptr noundef %48) #20
  %50 = icmp eq ptr %40, null
  %51 = icmp eq ptr %49, null
  %52 = select i1 %50, i1 true, i1 %51
  br i1 %52, label %89, label %53

53:                                               ; preds = %34
  %54 = load ptr, ptr %4, align 8, !tbaa !6
  %55 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %54) #19
  %56 = load ptr, ptr %6, align 8, !tbaa !6
  %57 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %56) #19
  %58 = load ptr, ptr %2, align 8, !tbaa !6
  %59 = getelementptr inbounds %struct._Image, ptr %58, i64 0, i32 7
  %60 = load i64, ptr %59, align 8, !tbaa !33
  %61 = shl i64 %60, 3
  %62 = call ptr @CopyMagickMemory(ptr noundef nonnull %49, ptr noundef nonnull %40, i64 noundef %61) #19
  %63 = icmp ne ptr %57, null
  %64 = icmp ne ptr %55, null
  %65 = select i1 %63, i1 %64, i1 false
  br i1 %65, label %66, label %72

66:                                               ; preds = %53
  %67 = load ptr, ptr %2, align 8, !tbaa !6
  %68 = getelementptr inbounds %struct._Image, ptr %67, i64 0, i32 7
  %69 = load i64, ptr %68, align 8, !tbaa !33
  %70 = shl i64 %69, 1
  %71 = call ptr @CopyMagickMemory(ptr noundef nonnull %57, ptr noundef nonnull %55, i64 noundef %70) #19
  br label %72

72:                                               ; preds = %66, %53
  %73 = load ptr, ptr %6, align 8, !tbaa !6
  %74 = load ptr, ptr %5, align 8, !tbaa !6
  %75 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %73, ptr noundef %74) #20
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  store i32 0, ptr %3, align 4, !tbaa !10
  br label %78

78:                                               ; preds = %77, %72
  %79 = load ptr, ptr %9, align 8, !tbaa !6
  %80 = getelementptr inbounds %struct._Image, ptr %79, i64 0, i32 47
  %81 = load ptr, ptr %80, align 8, !tbaa !54
  %82 = icmp eq ptr %81, null
  br i1 %82, label %90, label %83

83:                                               ; preds = %78
  call void @__kmpc_critical(ptr nonnull @2, i32 %21, ptr nonnull @.gomp_critical_user_MagickCore_CompositeImage.var)
  %84 = load ptr, ptr %9, align 8, !tbaa !6
  %85 = getelementptr inbounds %struct._Image, ptr %84, i64 0, i32 8
  %86 = load i64, ptr %85, align 8, !tbaa !34
  %87 = call fastcc i32 @SetImageProgress(ptr noundef %84, ptr noundef nonnull @.str.3, i64 noundef %31, i64 noundef %86) #18
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %21, ptr nonnull @.gomp_critical_user_MagickCore_CompositeImage.var)
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83, %34
  store i32 0, ptr %3, align 4, !tbaa !10
  br label %90

90:                                               ; preds = %89, %78, %83, %30
  %91 = add nsw i64 %31, 1
  %92 = load i64, ptr %12, align 8, !tbaa !12
  %93 = icmp slt i64 %31, %92
  br i1 %93, label %30, label %94

94:                                               ; preds = %90
  %95 = load i64, ptr %11, align 8, !tbaa !12
  br label %96

96:                                               ; preds = %94, %26
  %97 = phi i64 [ %28, %26 ], [ %95, %94 ]
  %98 = phi i64 [ %27, %26 ], [ %92, %94 ]
  %99 = load i64, ptr %13, align 8, !tbaa !12
  %100 = add nsw i64 %99, %97
  store i64 %100, ptr %11, align 8, !tbaa !12
  %101 = add nsw i64 %99, %98
  %102 = call i64 @llvm.smin.i64(i64 %101, i64 %18)
  store i64 %102, ptr %12, align 8, !tbaa !12
  %103 = icmp sgt i64 %100, %102
  br i1 %103, label %104, label %26

104:                                              ; preds = %96, %20
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %21)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #5
  br label %105

105:                                              ; preds = %104, %10
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_8(ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i64) local_unnamed_addr #5

; Function Attrs: hot optsize
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: hot optsize
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CopyMagickMemory(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: hot optsize
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: convergent nounwind
declare void @__kmpc_critical(ptr, i32, ptr) local_unnamed_addr #7

; Function Attrs: convergent nounwind
declare void @__kmpc_end_critical(ptr, i32, ptr) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @SetImageProgress(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #5
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef %1, ptr noundef nonnull %10) #19
  %12 = load ptr, ptr %6, align 8, !tbaa !54
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %14 = load ptr, ptr %13, align 8, !tbaa !55
  %15 = call i32 %12(ptr noundef nonnull %5, i64 noundef %2, i64 noundef %3, ptr noundef %14) #19
  br label %16

16:                                               ; preds = %4, %9
  %17 = phi i32 [ %15, %9 ], [ 1, %4 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #5
  ret i32 %17
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #5

; Function Attrs: optsize
declare i64 @GetMagickResourceLimit(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GetImagePixelCacheType(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare !callback !56 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @SetImageAlphaChannel(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @SetGeometryInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetImageArtifact(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ParseGeometry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @DegreesToRadians(double noundef %0) unnamed_addr #3 {
  %2 = fmul double %0, 0x400921FB54442D18
  %3 = fdiv double %2, 1.800000e+02
  ret double %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @AcquireResampleFilter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @SetResampleFilter(ptr noundef, i32 noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: hot optsize
declare ptr @QueueCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #10

; Function Attrs: optsize
declare void @ScaleResampleFilter(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ResamplePixelColor(ptr noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @SetPixelPacket(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr noundef writeonly %3) unnamed_addr #11 {
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %6 = load float, ptr %5, align 8, !tbaa !58
  %7 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %6) #18
  %8 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 2
  store i16 %7, ptr %8, align 2, !tbaa !42
  %9 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %10 = load float, ptr %9, align 4, !tbaa !59
  %11 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %10) #18
  %12 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 1
  store i16 %11, ptr %12, align 2, !tbaa !43
  %13 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %14 = load float, ptr %13, align 8, !tbaa !60
  %15 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %14) #18
  store i16 %15, ptr %2, align 2, !tbaa !41
  %16 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %17 = load float, ptr %16, align 4, !tbaa !47
  %18 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %17) #18
  %19 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 3
  store i16 %18, ptr %19, align 2, !tbaa !49
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !28
  %22 = icmp eq i32 %21, 12
  br i1 %22, label %28, label %23

23:                                               ; preds = %4
  %24 = load i32, ptr %0, align 8, !tbaa !61
  %25 = icmp eq i32 %24, 2
  %26 = icmp ne ptr %3, null
  %27 = and i1 %26, %25
  br i1 %27, label %30, label %34

28:                                               ; preds = %4
  %29 = icmp eq ptr %3, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %23, %28
  %31 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %32 = load float, ptr %31, align 8, !tbaa !62
  %33 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %32) #18
  store i16 %33, ptr %3, align 2, !tbaa !63
  br label %34

34:                                               ; preds = %28, %30, %23
  ret void
}

; Function Attrs: optsize
declare ptr @DestroyResampleFilter(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @InterpolateMagickPixelPacket(ptr noundef, ptr noundef, i32 noundef, double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @IsMagickTrue(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @AccelerateCompositeImage(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @CompositeImageChannel.omp_outlined.8(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %9, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %10, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %11, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %12, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %13, ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %14, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %15, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %16, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %17, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %18, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %19, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %20, ptr nocapture noundef nonnull align 8 dereferenceable(8) %21) #4 {
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca %struct._MagickPixelPacket, align 8
  %32 = alloca %struct._MagickPixelPacket, align 8
  %33 = alloca %struct._MagickPixelPacket, align 8
  %34 = load ptr, ptr %2, align 8, !tbaa !6
  %35 = getelementptr inbounds %struct._Image, ptr %34, i64 0, i32 8
  %36 = load i64, ptr %35, align 8, !tbaa !34
  %37 = add nsw i64 %36, -1
  %38 = icmp sgt i64 %36, 0
  br i1 %38, label %39, label %572

39:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %23) #5
  store i64 0, ptr %23, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %24) #5
  store i64 %37, ptr %24, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %25) #5
  store i64 1, ptr %25, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %26) #5
  store i32 0, ptr %26, align 4, !tbaa !10
  %40 = load i32, ptr %0, align 4, !tbaa !10
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %40, i32 33, ptr nonnull %26, ptr nonnull %23, ptr nonnull %24, ptr nonnull %25, i64 1, i64 4)
  %41 = load i64, ptr %24, align 8
  %42 = call i64 @llvm.smin.i64(i64 %41, i64 %37)
  store i64 %42, ptr %24, align 8, !tbaa !12
  %43 = load i64, ptr %23, align 8, !tbaa !12
  %44 = icmp sgt i64 %43, %42
  br i1 %44, label %571, label %45

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct._MagickPixelPacket, ptr %32, i64 0, i32 5
  %47 = getelementptr inbounds %struct._MagickPixelPacket, ptr %32, i64 0, i32 7
  %48 = getelementptr inbounds %struct._MagickPixelPacket, ptr %32, i64 0, i32 8
  %49 = getelementptr inbounds %struct._MagickPixelPacket, ptr %32, i64 0, i32 9
  %50 = getelementptr inbounds %struct._MagickPixelPacket, ptr %33, i64 0, i32 5
  %51 = getelementptr inbounds %struct._MagickPixelPacket, ptr %33, i64 0, i32 6
  %52 = getelementptr inbounds %struct._MagickPixelPacket, ptr %33, i64 0, i32 7
  %53 = getelementptr inbounds %struct._MagickPixelPacket, ptr %33, i64 0, i32 8
  %54 = getelementptr inbounds %struct._MagickPixelPacket, ptr %33, i64 0, i32 9
  %55 = getelementptr inbounds %struct._MagickPixelPacket, ptr %33, i64 0, i32 1
  %56 = getelementptr inbounds %struct._MagickPixelPacket, ptr %31, i64 0, i32 9
  %57 = getelementptr inbounds %struct._MagickPixelPacket, ptr %33, i64 0, i32 2
  %58 = getelementptr inbounds %struct._MagickPixelPacket, ptr %31, i64 0, i32 8
  %59 = getelementptr inbounds %struct._MagickPixelPacket, ptr %31, i64 0, i32 7
  %60 = getelementptr inbounds %struct._MagickPixelPacket, ptr %31, i64 0, i32 6
  %61 = getelementptr inbounds %struct._MagickPixelPacket, ptr %31, i64 0, i32 5
  br label %62

62:                                               ; preds = %45, %563
  %63 = phi i64 [ %42, %45 ], [ %569, %563 ]
  %64 = phi i64 [ %43, %45 ], [ %567, %563 ]
  %65 = icmp sgt i64 %64, %63
  br i1 %65, label %563, label %66

66:                                               ; preds = %62, %557
  %67 = phi i64 [ %558, %557 ], [ %64, %62 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %27) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %28) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %29) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %30) #5
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %31) #5
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %32) #5
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %33) #5
  %68 = load i32, ptr %3, align 4, !tbaa !10
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %557, label %70

70:                                               ; preds = %66
  %71 = load i32, ptr %4, align 4, !tbaa !10
  %72 = icmp eq i32 %71, 0
  %73 = load i64, ptr %5, align 8, !tbaa !12
  br i1 %72, label %82, label %74

74:                                               ; preds = %70
  %75 = icmp slt i64 %67, %73
  br i1 %75, label %557, label %76

76:                                               ; preds = %74
  %77 = sub nsw i64 %67, %73
  %78 = load ptr, ptr %6, align 8, !tbaa !6
  %79 = getelementptr inbounds %struct._Image, ptr %78, i64 0, i32 8
  %80 = load i64, ptr %79, align 8, !tbaa !34
  %81 = icmp slt i64 %77, %80
  br i1 %81, label %82, label %557

82:                                               ; preds = %76, %70
  %83 = icmp slt i64 %67, %73
  br i1 %83, label %103, label %84

84:                                               ; preds = %82
  %85 = sub nsw i64 %67, %73
  %86 = load ptr, ptr %6, align 8, !tbaa !6
  %87 = getelementptr inbounds %struct._Image, ptr %86, i64 0, i32 8
  %88 = load i64, ptr %87, align 8, !tbaa !34
  %89 = icmp slt i64 %85, %88
  br i1 %89, label %90, label %103

90:                                               ; preds = %84
  %91 = load ptr, ptr %7, align 8, !tbaa !6
  %92 = getelementptr inbounds %struct._Image, ptr %86, i64 0, i32 7
  %93 = load i64, ptr %92, align 8, !tbaa !33
  %94 = load ptr, ptr %8, align 8, !tbaa !6
  %95 = call ptr @GetCacheViewVirtualPixels(ptr noundef %91, i64 noundef 0, i64 noundef %85, i64 noundef %93, i64 noundef 1, ptr noundef %94) #20
  %96 = icmp eq ptr %95, null
  br i1 %96, label %556, label %97

97:                                               ; preds = %90
  %98 = load i64, ptr %9, align 8, !tbaa !12
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = sub i64 0, %98
  %102 = getelementptr inbounds %struct._PixelPacket, ptr %95, i64 %101
  br label %103

103:                                              ; preds = %97, %100, %84, %82
  %104 = phi ptr [ %102, %100 ], [ %95, %97 ], [ null, %84 ], [ null, %82 ]
  %105 = phi ptr [ %95, %100 ], [ %95, %97 ], [ null, %84 ], [ null, %82 ]
  %106 = load ptr, ptr %10, align 8, !tbaa !6
  %107 = load ptr, ptr %2, align 8, !tbaa !6
  %108 = getelementptr inbounds %struct._Image, ptr %107, i64 0, i32 7
  %109 = load i64, ptr %108, align 8, !tbaa !33
  %110 = load ptr, ptr %8, align 8, !tbaa !6
  %111 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %106, i64 noundef 0, i64 noundef %67, i64 noundef %109, i64 noundef 1, ptr noundef %110) #20
  %112 = icmp eq ptr %111, null
  br i1 %112, label %556, label %113

113:                                              ; preds = %103
  %114 = load ptr, ptr %10, align 8, !tbaa !6
  %115 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %114) #19
  %116 = load ptr, ptr %7, align 8, !tbaa !6
  %117 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %116) #19
  %118 = load ptr, ptr %6, align 8, !tbaa !6
  call void @GetMagickPixelPacket(ptr noundef %118, ptr noundef nonnull %33) #19
  %119 = load ptr, ptr %2, align 8, !tbaa !6
  call void @GetMagickPixelPacket(ptr noundef %119, ptr noundef nonnull %32) #19
  store double 0.000000e+00, ptr %28, align 8, !tbaa !40
  store double 0.000000e+00, ptr %29, align 8, !tbaa !40
  store double 0.000000e+00, ptr %27, align 8, !tbaa !40
  %120 = load ptr, ptr %2, align 8, !tbaa !6
  %121 = getelementptr inbounds %struct._Image, ptr %120, i64 0, i32 7
  %122 = load i64, ptr %121, align 8, !tbaa !33
  %123 = icmp sgt i64 %122, 0
  br i1 %123, label %124, label %537

124:                                              ; preds = %113
  %125 = icmp eq ptr %115, null
  %126 = icmp eq ptr %105, null
  %127 = icmp eq ptr %117, null
  br label %128

128:                                              ; preds = %124, %529
  %129 = phi ptr [ %120, %124 ], [ %530, %529 ]
  %130 = phi ptr [ %111, %124 ], [ %532, %529 ]
  %131 = phi i64 [ 0, %124 ], [ %533, %529 ]
  %132 = phi ptr [ %104, %124 ], [ %531, %529 ]
  %133 = load i32, ptr %4, align 4, !tbaa !10
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %144, label %135

135:                                              ; preds = %128
  %136 = load i64, ptr %9, align 8, !tbaa !12
  %137 = icmp slt i64 %131, %136
  br i1 %137, label %529, label %138

138:                                              ; preds = %135
  %139 = sub nsw i64 %131, %136
  %140 = load ptr, ptr %6, align 8, !tbaa !6
  %141 = getelementptr inbounds %struct._Image, ptr %140, i64 0, i32 7
  %142 = load i64, ptr %141, align 8, !tbaa !33
  %143 = icmp slt i64 %139, %142
  br i1 %143, label %144, label %537

144:                                              ; preds = %138, %128
  %145 = getelementptr inbounds %struct._PixelPacket, ptr %130, i64 0, i32 2
  %146 = getelementptr inbounds %struct._PixelPacket, ptr %130, i64 0, i32 1
  %147 = load <2 x i16>, ptr %146, align 2, !tbaa !63
  %148 = uitofp <2 x i16> %147 to <2 x float>
  %149 = shufflevector <2 x float> %148, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %149, ptr %46, align 8, !tbaa !30
  %150 = load i16, ptr %130, align 2, !tbaa !41
  %151 = uitofp i16 %150 to float
  store float %151, ptr %47, align 8, !tbaa !60
  %152 = getelementptr inbounds %struct._Image, ptr %129, i64 0, i32 6
  %153 = load i32, ptr %152, align 8, !tbaa !32
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %159, label %155

155:                                              ; preds = %144
  %156 = getelementptr inbounds %struct._PixelPacket, ptr %130, i64 0, i32 3
  %157 = load i16, ptr %156, align 2, !tbaa !49
  %158 = uitofp i16 %157 to float
  store float %158, ptr %48, align 4, !tbaa !47
  br label %159

159:                                              ; preds = %155, %144
  %160 = getelementptr inbounds %struct._Image, ptr %129, i64 0, i32 1
  %161 = load i32, ptr %160, align 4, !tbaa !28
  %162 = icmp eq i32 %161, 12
  br i1 %162, label %163, label %174

163:                                              ; preds = %159
  br i1 %125, label %168, label %164

164:                                              ; preds = %163
  %165 = getelementptr inbounds i16, ptr %115, i64 %131
  %166 = load i16, ptr %165, align 2, !tbaa !63
  %167 = zext i16 %166 to i32
  br label %168

168:                                              ; preds = %164, %163
  %169 = phi i32 [ %167, %164 ], [ 0, %163 ]
  %170 = sitofp i32 %169 to float
  %171 = fsub <2 x float> <float 6.553500e+04, float 6.553500e+04>, %149
  store <2 x float> %171, ptr %46, align 8, !tbaa !30
  %172 = fsub float 6.553500e+04, %151
  store float %172, ptr %47, align 8, !tbaa !60
  %173 = fsub float 6.553500e+04, %170
  store float %173, ptr %49, align 8, !tbaa !62
  br label %174

174:                                              ; preds = %159, %168
  %175 = phi float [ %151, %159 ], [ %172, %168 ]
  %176 = phi <2 x float> [ %149, %159 ], [ %171, %168 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %31, ptr noundef nonnull align 8 dereferenceable(56) %32, i64 56, i1 false), !tbaa.struct !39
  br i1 %126, label %186, label %177

177:                                              ; preds = %174
  %178 = load i64, ptr %9, align 8, !tbaa !12
  %179 = icmp slt i64 %131, %178
  br i1 %179, label %186, label %180

180:                                              ; preds = %177
  %181 = sub nsw i64 %131, %178
  %182 = load ptr, ptr %6, align 8, !tbaa !6
  %183 = getelementptr inbounds %struct._Image, ptr %182, i64 0, i32 7
  %184 = load i64, ptr %183, align 8, !tbaa !33
  %185 = icmp slt i64 %181, %184
  br i1 %185, label %239, label %186

186:                                              ; preds = %180, %177, %174
  %187 = load i32, ptr %11, align 4, !tbaa !10
  switch i32 %187, label %196 [
    i32 28, label %188
    i32 4, label %188
    i32 7, label %194
    i32 48, label %194
    i32 32, label %195
    i32 49, label %195
    i32 39, label %195
    i32 50, label %195
    i32 23, label %195
    i32 21, label %195
    i32 17, label %195
    i32 6, label %195
  ]

188:                                              ; preds = %186, %186
  %189 = load float, ptr %12, align 4, !tbaa !30
  %190 = load float, ptr %58, align 4, !tbaa !47
  %191 = fsub float 6.553500e+04, %190
  %192 = fneg float %189
  %193 = call float @llvm.fmuladd.f32(float %192, float %191, float 6.553500e+04)
  store float %193, ptr %58, align 4, !tbaa !47
  br label %205

194:                                              ; preds = %186, %186
  call fastcc void @CompositeClear(ptr noundef nonnull %32, ptr noundef nonnull %31) #18
  br label %205

195:                                              ; preds = %186, %186, %186, %186, %186, %186, %186, %186
  store float 6.553500e+04, ptr %58, align 4, !tbaa !47
  br label %205

196:                                              ; preds = %186
  %197 = load ptr, ptr %6, align 8, !tbaa !6
  %198 = load i64, ptr %9, align 8, !tbaa !12
  %199 = sub nsw i64 %131, %198
  %200 = load i64, ptr %5, align 8, !tbaa !12
  %201 = sub nsw i64 %67, %200
  %202 = load ptr, ptr %8, align 8, !tbaa !6
  %203 = call i32 @GetOneVirtualMagickPixel(ptr noundef %197, i64 noundef %199, i64 noundef %201, ptr noundef nonnull %31, ptr noundef %202) #19
  %204 = load ptr, ptr %2, align 8, !tbaa !6
  br label %205

205:                                              ; preds = %196, %195, %194, %188
  %206 = phi ptr [ %204, %196 ], [ %129, %195 ], [ %129, %194 ], [ %129, %188 ]
  %207 = getelementptr inbounds %struct._Image, ptr %206, i64 0, i32 1
  %208 = load i32, ptr %207, align 4, !tbaa !28
  %209 = icmp eq i32 %208, 12
  %210 = load <2 x float>, ptr %61, align 8, !tbaa !30
  %211 = load float, ptr %59, align 8, !tbaa !60
  br i1 %209, label %212, label %217

212:                                              ; preds = %205
  %213 = fsub <2 x float> <float 6.553500e+04, float 6.553500e+04>, %210
  store <2 x float> %213, ptr %61, align 8, !tbaa !30
  %214 = fsub float 6.553500e+04, %211
  store float %214, ptr %59, align 8, !tbaa !60
  %215 = load float, ptr %56, align 8, !tbaa !62
  %216 = fsub float 6.553500e+04, %215
  store float %216, ptr %56, align 8, !tbaa !62
  br label %217

217:                                              ; preds = %212, %205
  %218 = phi float [ %214, %212 ], [ %211, %205 ]
  %219 = phi <2 x float> [ %213, %212 ], [ %210, %205 ]
  %220 = extractelement <2 x float> %219, i64 0
  %221 = call fastcc zeroext i16 @ClampToQuantum(float noundef %220) #18
  store i16 %221, ptr %145, align 2, !tbaa !42
  %222 = extractelement <2 x float> %219, i64 1
  %223 = call fastcc zeroext i16 @ClampToQuantum(float noundef %222) #18
  store i16 %223, ptr %146, align 2, !tbaa !43
  %224 = call fastcc zeroext i16 @ClampToQuantum(float noundef %218) #18
  store i16 %224, ptr %130, align 2, !tbaa !41
  %225 = getelementptr inbounds %struct._Image, ptr %206, i64 0, i32 6
  %226 = load i32, ptr %225, align 8, !tbaa !32
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %232, label %228

228:                                              ; preds = %217
  %229 = load float, ptr %58, align 4, !tbaa !47
  %230 = call fastcc zeroext i16 @ClampToQuantum(float noundef %229) #18
  %231 = getelementptr inbounds %struct._PixelPacket, ptr %130, i64 0, i32 3
  store i16 %230, ptr %231, align 2, !tbaa !49
  br label %232

232:                                              ; preds = %228, %217
  %233 = icmp ne i32 %208, 12
  %234 = select i1 %233, i1 true, i1 %125
  br i1 %234, label %529, label %235

235:                                              ; preds = %232
  %236 = getelementptr inbounds i16, ptr %115, i64 %131
  %237 = load float, ptr %56, align 8, !tbaa !62
  %238 = call fastcc zeroext i16 @ClampToQuantum(float noundef %237) #18
  store i16 %238, ptr %236, align 2, !tbaa !63
  br label %529

239:                                              ; preds = %180
  %240 = getelementptr inbounds %struct._PixelPacket, ptr %132, i64 0, i32 2
  %241 = load i16, ptr %240, align 2, !tbaa !42
  %242 = uitofp i16 %241 to float
  store float %242, ptr %50, align 8, !tbaa !58
  %243 = load <2 x i16>, ptr %132, align 2, !tbaa !63
  %244 = uitofp <2 x i16> %243 to <2 x float>
  %245 = shufflevector <2 x float> %244, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %245, ptr %51, align 4, !tbaa !30
  %246 = getelementptr inbounds %struct._Image, ptr %182, i64 0, i32 6
  %247 = load i32, ptr %246, align 8, !tbaa !32
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %253, label %249

249:                                              ; preds = %239
  %250 = getelementptr inbounds %struct._PixelPacket, ptr %132, i64 0, i32 3
  %251 = load i16, ptr %250, align 2, !tbaa !49
  %252 = uitofp i16 %251 to float
  store float %252, ptr %53, align 4, !tbaa !47
  br label %253

253:                                              ; preds = %249, %239
  %254 = getelementptr inbounds %struct._Image, ptr %182, i64 0, i32 1
  %255 = load i32, ptr %254, align 4, !tbaa !28
  %256 = icmp eq i32 %255, 12
  br i1 %256, label %257, label %270

257:                                              ; preds = %253
  br i1 %127, label %264, label %258

258:                                              ; preds = %257
  %259 = getelementptr inbounds i16, ptr %117, i64 %131
  %260 = sub i64 0, %178
  %261 = getelementptr inbounds i16, ptr %259, i64 %260
  %262 = load i16, ptr %261, align 2, !tbaa !63
  %263 = zext i16 %262 to i32
  br label %264

264:                                              ; preds = %258, %257
  %265 = phi i32 [ %263, %258 ], [ 0, %257 ]
  %266 = sitofp i32 %265 to float
  %267 = fsub float 6.553500e+04, %242
  store float %267, ptr %50, align 8, !tbaa !58
  %268 = fsub <2 x float> <float 6.553500e+04, float 6.553500e+04>, %245
  store <2 x float> %268, ptr %51, align 4, !tbaa !30
  %269 = fsub float 6.553500e+04, %266
  store float %269, ptr %54, align 8, !tbaa !62
  br label %270

270:                                              ; preds = %253, %264
  %271 = phi float [ %242, %253 ], [ %267, %264 ]
  %272 = phi <2 x float> [ %245, %253 ], [ %268, %264 ]
  %273 = load i32, ptr %11, align 4, !tbaa !10
  switch i32 %273, label %492 [
    i32 7, label %274
    i32 48, label %275
    i32 13, label %275
    i32 43, label %275
    i32 56, label %491
    i32 27, label %491
    i32 40, label %276
    i32 51, label %276
    i32 25, label %279
    i32 49, label %282
    i32 32, label %282
    i32 23, label %283
    i32 39, label %284
    i32 50, label %284
    i32 24, label %285
    i32 3, label %286
    i32 47, label %286
    i32 21, label %287
    i32 54, label %288
    i32 42, label %289
    i32 36, label %291
    i32 65, label %293
    i32 2, label %295
    i32 52, label %297
    i32 26, label %299
    i32 29, label %301
    i32 38, label %303
    i32 45, label %305
    i32 55, label %307
    i32 64, label %309
    i32 20, label %311
    i32 33, label %313
    i32 66, label %315
    i32 67, label %317
    i32 63, label %319
    i32 9, label %321
    i32 8, label %322
    i32 61, label %323
    i32 62, label %324
    i32 30, label %325
    i32 41, label %326
    i32 46, label %327
    i32 34, label %328
    i32 58, label %329
    i32 59, label %330
    i32 60, label %331
    i32 6, label %332
    i32 5, label %340
    i32 28, label %344
    i32 4, label %355
    i32 53, label %358
    i32 37, label %361
    i32 31, label %390
    i32 44, label %410
    i32 35, label %430
    i32 10, label %450
    i32 18, label %470
    i32 14, label %470
    i32 15, label %471
    i32 16, label %471
    i32 12, label %473
    i32 19, label %473
    i32 17, label %475
    i32 11, label %484
    i32 57, label %491
  ]

274:                                              ; preds = %270
  call fastcc void @CompositeClear(ptr noundef nonnull %32, ptr noundef nonnull %31) #18
  br label %492

275:                                              ; preds = %270, %270, %270
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %31, ptr noundef nonnull align 8 dereferenceable(56) %33, i64 56, i1 false), !tbaa.struct !39
  br label %492

276:                                              ; preds = %270, %270
  %277 = load float, ptr %53, align 4, !tbaa !47
  %278 = load float, ptr %48, align 4, !tbaa !47
  call fastcc void @MagickPixelCompositeOver(ptr noundef nonnull %33, float noundef %277, ptr noundef nonnull %32, float noundef %278, ptr noundef nonnull %31) #18
  br label %492

279:                                              ; preds = %270
  %280 = load float, ptr %48, align 4, !tbaa !47
  %281 = load float, ptr %53, align 4, !tbaa !47
  call fastcc void @MagickPixelCompositeOver(ptr noundef nonnull %32, float noundef %280, ptr noundef nonnull %33, float noundef %281, ptr noundef nonnull %31) #18
  br label %492

282:                                              ; preds = %270, %270
  call fastcc void @CompositeIn(ptr noundef nonnull %33, ptr noundef nonnull %32, ptr noundef nonnull %31) #18
  br label %492

283:                                              ; preds = %270
  call fastcc void @CompositeIn(ptr noundef nonnull %32, ptr noundef nonnull %33, ptr noundef nonnull %31) #18
  br label %492

284:                                              ; preds = %270, %270
  call fastcc void @CompositeOut(ptr noundef nonnull %33, ptr noundef nonnull %32, ptr noundef nonnull %31) #18
  br label %492

285:                                              ; preds = %270
  call fastcc void @CompositeOut(ptr noundef nonnull %32, ptr noundef nonnull %33, ptr noundef nonnull %31) #18
  br label %492

286:                                              ; preds = %270, %270
  call fastcc void @CompositeAtop(ptr noundef nonnull %33, ptr noundef nonnull %32, ptr noundef nonnull %31) #18
  br label %492

287:                                              ; preds = %270
  call fastcc void @CompositeAtop(ptr noundef nonnull %32, ptr noundef nonnull %33, ptr noundef nonnull %31) #18
  br label %492

288:                                              ; preds = %270
  call fastcc void @CompositeXor(ptr noundef nonnull %33, ptr noundef nonnull %32, ptr noundef nonnull %31) #18
  br label %492

289:                                              ; preds = %270
  %290 = load i32, ptr %13, align 4, !tbaa !10
  call fastcc void @CompositePlus(ptr noundef nonnull %33, ptr noundef nonnull %32, i32 noundef %290, ptr noundef nonnull %31) #18
  br label %492

291:                                              ; preds = %270
  %292 = load i32, ptr %13, align 4, !tbaa !10
  call fastcc void @CompositeMinus(ptr noundef nonnull %33, ptr noundef nonnull %32, i32 noundef %292, ptr noundef nonnull %31) #18
  br label %492

293:                                              ; preds = %270
  %294 = load i32, ptr %13, align 4, !tbaa !10
  call fastcc void @CompositeMinus(ptr noundef nonnull %32, ptr noundef nonnull %33, i32 noundef %294, ptr noundef nonnull %31) #18
  br label %492

295:                                              ; preds = %270
  %296 = load i32, ptr %13, align 4, !tbaa !10
  call fastcc void @CompositeModulusAdd(ptr noundef nonnull %33, ptr noundef nonnull %32, i32 noundef %296, ptr noundef nonnull %31) #18
  br label %492

297:                                              ; preds = %270
  %298 = load i32, ptr %13, align 4, !tbaa !10
  call fastcc void @CompositeModulusSubtract(ptr noundef nonnull %33, ptr noundef nonnull %32, i32 noundef %298, ptr noundef nonnull %31) #18
  br label %492

299:                                              ; preds = %270
  %300 = load i32, ptr %13, align 4, !tbaa !10
  call fastcc void @CompositeDifference(ptr noundef nonnull %33, ptr noundef nonnull %32, i32 noundef %300, ptr noundef nonnull %31) #18
  br label %492

301:                                              ; preds = %270
  %302 = load i32, ptr %13, align 4, !tbaa !10
  call fastcc void @CompositeExclusion(ptr noundef nonnull %33, ptr noundef nonnull %32, i32 noundef %302, ptr noundef nonnull %31) #18
  br label %492

303:                                              ; preds = %270
  %304 = load i32, ptr %13, align 4, !tbaa !10
  call fastcc void @CompositeMultiply(ptr noundef nonnull %33, ptr noundef nonnull %32, i32 noundef %304, ptr noundef nonnull %31) #18
  br label %492

305:                                              ; preds = %270
  %306 = load i32, ptr %13, align 4, !tbaa !10
  call fastcc void @CompositeScreen(ptr noundef nonnull %33, ptr noundef nonnull %32, i32 noundef %306, ptr noundef nonnull %31) #18
  br label %492

307:                                              ; preds = %270
  %308 = load i32, ptr %13, align 4, !tbaa !10
  call fastcc void @CompositeDivide(ptr noundef nonnull %33, ptr noundef nonnull %32, i32 noundef %308, ptr noundef nonnull %31) #18
  br label %492

309:                                              ; preds = %270
  %310 = load i32, ptr %13, align 4, !tbaa !10
  call fastcc void @CompositeDivide(ptr noundef nonnull %32, ptr noundef nonnull %33, i32 noundef %310, ptr noundef nonnull %31) #18
  br label %492

311:                                              ; preds = %270
  %312 = load i32, ptr %13, align 4, !tbaa !10
  call fastcc void @CompositeDarken(ptr noundef nonnull %33, ptr noundef nonnull %32, i32 noundef %312, ptr noundef nonnull %31) #18
  br label %492

313:                                              ; preds = %270
  %314 = load i32, ptr %13, align 4, !tbaa !10
  call fastcc void @CompositeLighten(ptr noundef nonnull %33, ptr noundef nonnull %32, i32 noundef %314, ptr noundef nonnull %31) #18
  br label %492

315:                                              ; preds = %270
  %316 = load i32, ptr %13, align 4, !tbaa !10
  call fastcc void @CompositeDarkenIntensity(ptr noundef nonnull %33, ptr noundef nonnull %32, i32 noundef %316, ptr noundef nonnull %31) #18
  br label %492

317:                                              ; preds = %270
  %318 = load i32, ptr %13, align 4, !tbaa !10
  call fastcc void @CompositeLightenIntensity(ptr noundef nonnull %33, ptr noundef nonnull %32, i32 noundef %318, ptr noundef nonnull %31) #18
  br label %492

319:                                              ; preds = %270
  %320 = load i32, ptr %13, align 4, !tbaa !10
  call fastcc void @CompositeMathematics(ptr noundef nonnull %33, ptr noundef nonnull %32, i32 noundef %320, ptr noundef nonnull %14, ptr noundef nonnull %31) #18
  br label %492

321:                                              ; preds = %270
  call fastcc void @CompositeColorDodge(ptr noundef nonnull %33, ptr noundef nonnull %32, ptr noundef nonnull %31) #18
  br label %492

322:                                              ; preds = %270
  call fastcc void @CompositeColorBurn(ptr noundef nonnull %33, ptr noundef nonnull %32, ptr noundef nonnull %31) #18
  br label %492

323:                                              ; preds = %270
  call fastcc void @CompositeLinearDodge(ptr noundef nonnull %33, ptr noundef nonnull %32, ptr noundef nonnull %31) #18
  br label %492

324:                                              ; preds = %270
  call fastcc void @CompositeLinearBurn(ptr noundef nonnull %33, ptr noundef nonnull %32, ptr noundef nonnull %31) #18
  br label %492

325:                                              ; preds = %270
  call fastcc void @CompositeHardLight(ptr noundef nonnull %33, ptr noundef nonnull %32, ptr noundef nonnull %31) #18
  br label %492

326:                                              ; preds = %270
  call fastcc void @CompositeHardLight(ptr noundef nonnull %32, ptr noundef nonnull %33, ptr noundef nonnull %31) #18
  br label %492

327:                                              ; preds = %270
  call fastcc void @CompositeSoftLight(ptr noundef nonnull %33, ptr noundef nonnull %32, ptr noundef nonnull %31) #18
  br label %492

328:                                              ; preds = %270
  call fastcc void @CompositeLinearLight(ptr noundef nonnull %33, ptr noundef nonnull %32, ptr noundef nonnull %31) #18
  br label %492

329:                                              ; preds = %270
  call fastcc void @CompositePegtopLight(ptr noundef nonnull %33, ptr noundef nonnull %32, ptr noundef nonnull %31) #18
  br label %492

330:                                              ; preds = %270
  call fastcc void @CompositeVividLight(ptr noundef nonnull %33, ptr noundef nonnull %32, ptr noundef nonnull %31) #18
  br label %492

331:                                              ; preds = %270
  call fastcc void @CompositePinLight(ptr noundef nonnull %33, ptr noundef nonnull %32, ptr noundef nonnull %31) #18
  br label %492

332:                                              ; preds = %270
  %333 = load float, ptr %58, align 4, !tbaa !47
  %334 = fcmp ogt float %333, 3.276750e+04
  br i1 %334, label %338, label %335

335:                                              ; preds = %332
  %336 = call i32 @IsMagickColorSimilar(ptr noundef nonnull %33, ptr noundef nonnull %32) #19
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %339, label %338

338:                                              ; preds = %335, %332
  store float 6.553500e+04, ptr %58, align 4, !tbaa !47
  br label %492

339:                                              ; preds = %335
  store float 0.000000e+00, ptr %58, align 4, !tbaa !47
  br label %492

340:                                              ; preds = %270
  %341 = load float, ptr %53, align 4, !tbaa !47
  %342 = fcmp oeq float %341, 6.553500e+04
  br i1 %342, label %492, label %343

343:                                              ; preds = %340
  call fastcc void @CompositeBumpmap(ptr noundef nonnull %33, ptr noundef nonnull %32, ptr noundef nonnull %31) #18
  br label %492

344:                                              ; preds = %270
  %345 = load float, ptr %15, align 4, !tbaa !30
  %346 = load float, ptr %53, align 4, !tbaa !47
  %347 = fsub float 6.553500e+04, %346
  %348 = fneg float %345
  %349 = call float @llvm.fmuladd.f32(float %348, float %347, float 6.553500e+04)
  %350 = load float, ptr %12, align 4, !tbaa !30
  %351 = load float, ptr %48, align 4, !tbaa !47
  %352 = fsub float 6.553500e+04, %351
  %353 = fneg float %350
  %354 = call float @llvm.fmuladd.f32(float %353, float %352, float 6.553500e+04)
  call fastcc void @MagickPixelCompositeOver(ptr noundef nonnull %33, float noundef %349, ptr noundef nonnull %32, float noundef %354, ptr noundef nonnull %31) #18
  br label %492

355:                                              ; preds = %270
  %356 = load float, ptr %15, align 4, !tbaa !30
  %357 = load float, ptr %12, align 4, !tbaa !30
  call fastcc void @MagickPixelCompositeBlend(ptr noundef nonnull %33, float noundef %356, ptr noundef nonnull %32, float noundef %357, ptr noundef nonnull %31) #18
  br label %492

358:                                              ; preds = %270
  %359 = load float, ptr %16, align 4, !tbaa !30
  %360 = load float, ptr %17, align 4, !tbaa !30
  call fastcc void @CompositeThreshold(ptr noundef nonnull %33, ptr noundef nonnull %32, float noundef %359, float noundef %360, ptr noundef nonnull %31) #18
  br label %492

361:                                              ; preds = %270
  %362 = load float, ptr %53, align 4, !tbaa !47
  %363 = fcmp oeq float %362, 6.553500e+04
  br i1 %363, label %492, label %364

364:                                              ; preds = %361
  %365 = call fastcc zeroext i16 @MagickPixelIntensityToQuantum(ptr noundef nonnull %33) #18
  %366 = uitofp i16 %365 to float
  %367 = load float, ptr %18, align 4, !tbaa !30
  %368 = fsub float %366, %367
  %369 = fptosi float %368 to i64
  %370 = icmp eq i64 %369, 0
  br i1 %370, label %492, label %371

371:                                              ; preds = %364
  %372 = extractelement <2 x float> %176, i64 0
  %373 = extractelement <2 x float> %176, i64 1
  call fastcc void @CompositeHCL(float noundef %372, float noundef %373, float noundef %175, ptr noundef nonnull %28, ptr noundef nonnull %29, ptr noundef nonnull %27) #18
  %374 = load float, ptr %19, align 4, !tbaa !30
  %375 = fpext float %374 to double
  %376 = fmul double %375, 1.000000e-02
  %377 = sitofp i64 %369 to double
  %378 = fmul double %376, %377
  %379 = load float, ptr %18, align 4, !tbaa !30
  %380 = fpext float %379 to double
  %381 = fdiv double %378, %380
  %382 = load double, ptr %27, align 8, !tbaa !40
  %383 = fadd double %382, %381
  store double %383, ptr %27, align 8, !tbaa !40
  %384 = load float, ptr %20, align 4, !tbaa !30
  %385 = fpext float %384 to double
  %386 = fmul double %385, 1.000000e-02
  %387 = load double, ptr %29, align 8, !tbaa !40
  %388 = fmul double %387, %386
  store double %388, ptr %29, align 8, !tbaa !40
  %389 = load double, ptr %28, align 8, !tbaa !40
  call fastcc void @HCLComposite(double noundef %389, double noundef %388, double noundef %383, ptr noundef nonnull %61, ptr noundef nonnull %60, ptr noundef nonnull %59) #18
  br label %492

390:                                              ; preds = %270
  %391 = load float, ptr %53, align 4, !tbaa !47
  %392 = fcmp oeq float %391, 6.553500e+04
  br i1 %392, label %492, label %393

393:                                              ; preds = %390
  %394 = load float, ptr %48, align 4, !tbaa !47
  %395 = fcmp oeq float %394, 6.553500e+04
  br i1 %395, label %396, label %397

396:                                              ; preds = %393
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %31, ptr noundef nonnull align 8 dereferenceable(56) %33, i64 56, i1 false), !tbaa.struct !39
  br label %492

397:                                              ; preds = %393
  %398 = extractelement <2 x float> %176, i64 0
  %399 = extractelement <2 x float> %176, i64 1
  call fastcc void @CompositeHCL(float noundef %398, float noundef %399, float noundef %175, ptr noundef nonnull %28, ptr noundef nonnull %29, ptr noundef nonnull %27) #18
  %400 = load float, ptr %50, align 8, !tbaa !58
  %401 = load float, ptr %51, align 4, !tbaa !59
  %402 = load float, ptr %52, align 8, !tbaa !60
  call fastcc void @CompositeHCL(float noundef %400, float noundef %401, float noundef %402, ptr noundef nonnull %28, ptr noundef nonnull %30, ptr noundef nonnull %30) #18
  %403 = load double, ptr %28, align 8, !tbaa !40
  %404 = load double, ptr %29, align 8, !tbaa !40
  %405 = load double, ptr %27, align 8, !tbaa !40
  call fastcc void @HCLComposite(double noundef %403, double noundef %404, double noundef %405, ptr noundef nonnull %61, ptr noundef nonnull %60, ptr noundef nonnull %59) #18
  %406 = load float, ptr %53, align 4, !tbaa !47
  %407 = load float, ptr %48, align 4, !tbaa !47
  %408 = fcmp olt float %406, %407
  br i1 %408, label %409, label %492

409:                                              ; preds = %397
  store float %406, ptr %58, align 4, !tbaa !47
  br label %492

410:                                              ; preds = %270
  %411 = load float, ptr %53, align 4, !tbaa !47
  %412 = fcmp oeq float %411, 6.553500e+04
  br i1 %412, label %492, label %413

413:                                              ; preds = %410
  %414 = load float, ptr %48, align 4, !tbaa !47
  %415 = fcmp oeq float %414, 6.553500e+04
  br i1 %415, label %416, label %417

416:                                              ; preds = %413
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %31, ptr noundef nonnull align 8 dereferenceable(56) %33, i64 56, i1 false), !tbaa.struct !39
  br label %492

417:                                              ; preds = %413
  %418 = extractelement <2 x float> %176, i64 0
  %419 = extractelement <2 x float> %176, i64 1
  call fastcc void @CompositeHCL(float noundef %418, float noundef %419, float noundef %175, ptr noundef nonnull %28, ptr noundef nonnull %29, ptr noundef nonnull %27) #18
  %420 = load float, ptr %50, align 8, !tbaa !58
  %421 = load float, ptr %51, align 4, !tbaa !59
  %422 = load float, ptr %52, align 8, !tbaa !60
  call fastcc void @CompositeHCL(float noundef %420, float noundef %421, float noundef %422, ptr noundef nonnull %30, ptr noundef nonnull %29, ptr noundef nonnull %30) #18
  %423 = load double, ptr %28, align 8, !tbaa !40
  %424 = load double, ptr %29, align 8, !tbaa !40
  %425 = load double, ptr %27, align 8, !tbaa !40
  call fastcc void @HCLComposite(double noundef %423, double noundef %424, double noundef %425, ptr noundef nonnull %61, ptr noundef nonnull %60, ptr noundef nonnull %59) #18
  %426 = load float, ptr %53, align 4, !tbaa !47
  %427 = load float, ptr %48, align 4, !tbaa !47
  %428 = fcmp olt float %426, %427
  br i1 %428, label %429, label %492

429:                                              ; preds = %417
  store float %426, ptr %58, align 4, !tbaa !47
  br label %492

430:                                              ; preds = %270
  %431 = load float, ptr %53, align 4, !tbaa !47
  %432 = fcmp oeq float %431, 6.553500e+04
  br i1 %432, label %492, label %433

433:                                              ; preds = %430
  %434 = load float, ptr %48, align 4, !tbaa !47
  %435 = fcmp oeq float %434, 6.553500e+04
  br i1 %435, label %436, label %437

436:                                              ; preds = %433
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %31, ptr noundef nonnull align 8 dereferenceable(56) %33, i64 56, i1 false), !tbaa.struct !39
  br label %492

437:                                              ; preds = %433
  %438 = extractelement <2 x float> %176, i64 0
  %439 = extractelement <2 x float> %176, i64 1
  call fastcc void @CompositeHCL(float noundef %438, float noundef %439, float noundef %175, ptr noundef nonnull %28, ptr noundef nonnull %29, ptr noundef nonnull %27) #18
  %440 = load float, ptr %50, align 8, !tbaa !58
  %441 = load float, ptr %51, align 4, !tbaa !59
  %442 = load float, ptr %52, align 8, !tbaa !60
  call fastcc void @CompositeHCL(float noundef %440, float noundef %441, float noundef %442, ptr noundef nonnull %30, ptr noundef nonnull %30, ptr noundef nonnull %27) #18
  %443 = load double, ptr %28, align 8, !tbaa !40
  %444 = load double, ptr %29, align 8, !tbaa !40
  %445 = load double, ptr %27, align 8, !tbaa !40
  call fastcc void @HCLComposite(double noundef %443, double noundef %444, double noundef %445, ptr noundef nonnull %61, ptr noundef nonnull %60, ptr noundef nonnull %59) #18
  %446 = load float, ptr %53, align 4, !tbaa !47
  %447 = load float, ptr %48, align 4, !tbaa !47
  %448 = fcmp olt float %446, %447
  br i1 %448, label %449, label %492

449:                                              ; preds = %437
  store float %446, ptr %58, align 4, !tbaa !47
  br label %492

450:                                              ; preds = %270
  %451 = load float, ptr %53, align 4, !tbaa !47
  %452 = fcmp oeq float %451, 6.553500e+04
  br i1 %452, label %492, label %453

453:                                              ; preds = %450
  %454 = load float, ptr %48, align 4, !tbaa !47
  %455 = fcmp oeq float %454, 6.553500e+04
  br i1 %455, label %456, label %457

456:                                              ; preds = %453
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %31, ptr noundef nonnull align 8 dereferenceable(56) %33, i64 56, i1 false), !tbaa.struct !39
  br label %492

457:                                              ; preds = %453
  %458 = extractelement <2 x float> %176, i64 0
  %459 = extractelement <2 x float> %176, i64 1
  call fastcc void @CompositeHCL(float noundef %458, float noundef %459, float noundef %175, ptr noundef nonnull %30, ptr noundef nonnull %30, ptr noundef nonnull %27) #18
  %460 = load float, ptr %50, align 8, !tbaa !58
  %461 = load float, ptr %51, align 4, !tbaa !59
  %462 = load float, ptr %52, align 8, !tbaa !60
  call fastcc void @CompositeHCL(float noundef %460, float noundef %461, float noundef %462, ptr noundef nonnull %28, ptr noundef nonnull %29, ptr noundef nonnull %30) #18
  %463 = load double, ptr %28, align 8, !tbaa !40
  %464 = load double, ptr %29, align 8, !tbaa !40
  %465 = load double, ptr %27, align 8, !tbaa !40
  call fastcc void @HCLComposite(double noundef %463, double noundef %464, double noundef %465, ptr noundef nonnull %61, ptr noundef nonnull %60, ptr noundef nonnull %59) #18
  %466 = load float, ptr %53, align 4, !tbaa !47
  %467 = load float, ptr %48, align 4, !tbaa !47
  %468 = fcmp olt float %466, %467
  br i1 %468, label %469, label %492

469:                                              ; preds = %457
  store float %466, ptr %58, align 4, !tbaa !47
  br label %492

470:                                              ; preds = %270, %270
  store float %271, ptr %61, align 8, !tbaa !58
  br label %492

471:                                              ; preds = %270, %270
  %472 = extractelement <2 x float> %272, i64 0
  store float %472, ptr %60, align 4, !tbaa !59
  br label %492

473:                                              ; preds = %270, %270
  %474 = extractelement <2 x float> %272, i64 1
  store float %474, ptr %59, align 8, !tbaa !60
  br label %492

475:                                              ; preds = %270
  %476 = load i32, ptr %57, align 8, !tbaa !64
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %478, label %482

478:                                              ; preds = %475
  %479 = call fastcc zeroext i16 @MagickPixelIntensityToQuantum(ptr noundef nonnull %33) #18
  %480 = xor i16 %479, -1
  %481 = uitofp i16 %480 to float
  store float %481, ptr %58, align 4, !tbaa !47
  br label %492

482:                                              ; preds = %475
  %483 = load float, ptr %53, align 4, !tbaa !47
  store float %483, ptr %58, align 4, !tbaa !47
  br label %492

484:                                              ; preds = %270
  %485 = load i32, ptr %55, align 4, !tbaa !65
  %486 = icmp eq i32 %485, 12
  br i1 %486, label %488, label %487

487:                                              ; preds = %484
  call fastcc void @ConvertRGBToCMYK(ptr noundef nonnull %33) #18
  br label %488

488:                                              ; preds = %487, %484
  %489 = load float, ptr %54, align 8, !tbaa !62
  %490 = fsub float 6.553500e+04, %489
  store float %490, ptr %56, align 8, !tbaa !62
  br label %492

491:                                              ; preds = %270, %270, %270
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %31, ptr noundef nonnull align 8 dereferenceable(56) %33, i64 56, i1 false), !tbaa.struct !39
  br label %492

492:                                              ; preds = %371, %361, %364, %270, %457, %469, %450, %437, %449, %430, %417, %429, %410, %397, %409, %390, %340, %338, %339, %491, %488, %482, %478, %473, %471, %470, %456, %436, %416, %396, %358, %355, %344, %343, %331, %330, %329, %328, %327, %326, %325, %324, %323, %322, %321, %319, %317, %315, %313, %311, %309, %307, %305, %303, %301, %299, %297, %295, %293, %291, %289, %288, %287, %286, %285, %284, %283, %282, %279, %276, %275, %274
  %493 = load ptr, ptr %2, align 8, !tbaa !6
  %494 = getelementptr inbounds %struct._Image, ptr %493, i64 0, i32 1
  %495 = load i32, ptr %494, align 4, !tbaa !28
  %496 = icmp eq i32 %495, 12
  %497 = load <2 x float>, ptr %61, align 8, !tbaa !30
  %498 = load float, ptr %59, align 8, !tbaa !60
  br i1 %496, label %499, label %504

499:                                              ; preds = %492
  %500 = fsub <2 x float> <float 6.553500e+04, float 6.553500e+04>, %497
  store <2 x float> %500, ptr %61, align 8, !tbaa !30
  %501 = fsub float 6.553500e+04, %498
  store float %501, ptr %59, align 8, !tbaa !60
  %502 = load float, ptr %56, align 8, !tbaa !62
  %503 = fsub float 6.553500e+04, %502
  store float %503, ptr %56, align 8, !tbaa !62
  br label %504

504:                                              ; preds = %499, %492
  %505 = phi float [ %501, %499 ], [ %498, %492 ]
  %506 = phi <2 x float> [ %500, %499 ], [ %497, %492 ]
  %507 = extractelement <2 x float> %506, i64 0
  %508 = call fastcc zeroext i16 @ClampToQuantum(float noundef %507) #18
  store i16 %508, ptr %145, align 2, !tbaa !42
  %509 = extractelement <2 x float> %506, i64 1
  %510 = call fastcc zeroext i16 @ClampToQuantum(float noundef %509) #18
  store i16 %510, ptr %146, align 2, !tbaa !43
  %511 = call fastcc zeroext i16 @ClampToQuantum(float noundef %505) #18
  store i16 %511, ptr %130, align 2, !tbaa !41
  %512 = load float, ptr %58, align 4, !tbaa !47
  %513 = call fastcc zeroext i16 @ClampToQuantum(float noundef %512) #18
  %514 = getelementptr inbounds %struct._PixelPacket, ptr %130, i64 0, i32 3
  store i16 %513, ptr %514, align 2, !tbaa !49
  %515 = icmp ne i32 %495, 12
  %516 = select i1 %515, i1 true, i1 %125
  br i1 %516, label %521, label %517

517:                                              ; preds = %504
  %518 = getelementptr inbounds i16, ptr %115, i64 %131
  %519 = load float, ptr %56, align 8, !tbaa !62
  %520 = call fastcc zeroext i16 @ClampToQuantum(float noundef %519) #18
  store i16 %520, ptr %518, align 2, !tbaa !63
  br label %521

521:                                              ; preds = %517, %504
  %522 = getelementptr inbounds %struct._PixelPacket, ptr %132, i64 1
  %523 = load ptr, ptr %6, align 8, !tbaa !6
  %524 = getelementptr inbounds %struct._Image, ptr %523, i64 0, i32 7
  %525 = load i64, ptr %524, align 8, !tbaa !33
  %526 = getelementptr inbounds %struct._PixelPacket, ptr %105, i64 %525
  %527 = icmp ult ptr %522, %526
  %528 = select i1 %527, ptr %522, ptr %105
  br label %529

529:                                              ; preds = %232, %235, %135, %521
  %530 = phi ptr [ %493, %521 ], [ %129, %135 ], [ %206, %235 ], [ %206, %232 ]
  %531 = phi ptr [ %528, %521 ], [ %132, %135 ], [ %132, %235 ], [ %132, %232 ]
  %532 = getelementptr inbounds %struct._PixelPacket, ptr %130, i64 1
  %533 = add nuw nsw i64 %131, 1
  %534 = getelementptr inbounds %struct._Image, ptr %530, i64 0, i32 7
  %535 = load i64, ptr %534, align 8, !tbaa !33
  %536 = icmp slt i64 %533, %535
  br i1 %536, label %128, label %537, !llvm.loop !66

537:                                              ; preds = %529, %138, %113
  %538 = load ptr, ptr %10, align 8, !tbaa !6
  %539 = load ptr, ptr %8, align 8, !tbaa !6
  %540 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %538, ptr noundef %539) #20
  %541 = icmp eq i32 %540, 0
  br i1 %541, label %542, label %543

542:                                              ; preds = %537
  store i32 0, ptr %3, align 4, !tbaa !10
  br label %543

543:                                              ; preds = %542, %537
  %544 = load ptr, ptr %2, align 8, !tbaa !6
  %545 = getelementptr inbounds %struct._Image, ptr %544, i64 0, i32 47
  %546 = load ptr, ptr %545, align 8, !tbaa !54
  %547 = icmp eq ptr %546, null
  br i1 %547, label %557, label %548

548:                                              ; preds = %543
  call void @__kmpc_critical(ptr nonnull @2, i32 %40, ptr nonnull @.gomp_critical_user_MagickCore_CompositeImageChannel.var)
  %549 = load ptr, ptr %2, align 8, !tbaa !6
  %550 = load i64, ptr %21, align 8, !tbaa !53
  %551 = add nsw i64 %550, 1
  store i64 %551, ptr %21, align 8, !tbaa !53
  %552 = getelementptr inbounds %struct._Image, ptr %549, i64 0, i32 8
  %553 = load i64, ptr %552, align 8, !tbaa !34
  %554 = call fastcc i32 @SetImageProgress(ptr noundef %549, ptr noundef nonnull @.str.3, i64 noundef %550, i64 noundef %553) #18
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %40, ptr nonnull @.gomp_critical_user_MagickCore_CompositeImageChannel.var)
  %555 = icmp eq i32 %554, 0
  br i1 %555, label %556, label %557

556:                                              ; preds = %548, %103, %90
  store i32 0, ptr %3, align 4, !tbaa !10
  br label %557

557:                                              ; preds = %556, %543, %548, %76, %74, %66
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %33) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %32) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %31) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %30) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %29) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %28) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %27) #5
  %558 = add nsw i64 %67, 1
  %559 = load i64, ptr %24, align 8, !tbaa !12
  %560 = icmp slt i64 %67, %559
  br i1 %560, label %66, label %561

561:                                              ; preds = %557
  %562 = load i64, ptr %23, align 8, !tbaa !12
  br label %563

563:                                              ; preds = %561, %62
  %564 = phi i64 [ %64, %62 ], [ %562, %561 ]
  %565 = phi i64 [ %63, %62 ], [ %559, %561 ]
  %566 = load i64, ptr %25, align 8, !tbaa !12
  %567 = add nsw i64 %566, %564
  store i64 %567, ptr %23, align 8, !tbaa !12
  %568 = add nsw i64 %566, %565
  %569 = call i64 @llvm.smin.i64(i64 %568, i64 %37)
  store i64 %569, ptr %24, align 8, !tbaa !12
  %570 = icmp sgt i64 %567, %569
  br i1 %570, label %571, label %62

571:                                              ; preds = %563, %39
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %40)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %26) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %25) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %24) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %23) #5
  br label %572

572:                                              ; preds = %571, %22
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CompositeClear(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #11 {
  %3 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 6.553500e+04>, ptr %3, align 8, !tbaa !30
  %4 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !65
  %6 = icmp eq i32 %5, 12
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  store float 0.000000e+00, ptr %8, align 8, !tbaa !62
  br label %9

9:                                                ; preds = %7, %2
  ret void
}

; Function Attrs: optsize
declare i32 @GetOneVirtualMagickPixel(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ClampToQuantum(float noundef %0) unnamed_addr #3 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @MagickPixelCompositeOver(ptr nocapture noundef readonly %0, float noundef %1, ptr nocapture noundef readonly %2, float noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #11 {
  %6 = fcmp oeq float %1, 0.000000e+00
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false), !tbaa.struct !39
  br label %58

8:                                                ; preds = %5
  %9 = fpext float %1 to double
  %10 = fpext float %3 to double
  %11 = fmul double %9, 0xBDF0002000300040
  %12 = tail call double @llvm.fmuladd.f64(double %11, double %10, double 1.000000e+00)
  %13 = fcmp olt double %12, 0.000000e+00
  %14 = select i1 %13, double 0.000000e+00, double %12
  %15 = fsub double 1.000000e+00, %14
  %16 = tail call fastcc double @PerceptibleReciprocal(double noundef %14) #18
  %17 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %18 = load float, ptr %17, align 8, !tbaa !58
  %19 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  %20 = load float, ptr %19, align 8, !tbaa !58
  %21 = tail call fastcc float @MagickOver_(float noundef %18, float noundef %1, float noundef %20, float noundef %3) #18
  %22 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 5
  %23 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %24 = load float, ptr %23, align 4, !tbaa !59
  %25 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 6
  %26 = load float, ptr %25, align 4, !tbaa !59
  %27 = tail call fastcc float @MagickOver_(float noundef %24, float noundef %1, float noundef %26, float noundef %3) #18
  %28 = insertelement <2 x float> poison, float %21, i64 0
  %29 = insertelement <2 x float> %28, float %27, i64 1
  %30 = fpext <2 x float> %29 to <2 x double>
  %31 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %32 = load float, ptr %31, align 8, !tbaa !60
  %33 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 7
  %34 = load float, ptr %33, align 8, !tbaa !60
  %35 = tail call fastcc float @MagickOver_(float noundef %32, float noundef %1, float noundef %34, float noundef %3) #18
  %36 = fpext float %35 to double
  %37 = insertelement <4 x double> poison, double %16, i64 0
  %38 = insertelement <4 x double> %37, double %15, i64 1
  %39 = shufflevector <4 x double> %38, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %40 = shufflevector <2 x double> %30, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %41 = insertelement <4 x double> %40, double 6.553500e+04, i64 3
  %42 = insertelement <4 x double> %41, double %36, i64 2
  %43 = fmul <4 x double> %39, %42
  %44 = fptrunc <4 x double> %43 to <4 x float>
  store <4 x float> %44, ptr %22, align 8, !tbaa !30
  %45 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 1
  %46 = load i32, ptr %45, align 4, !tbaa !65
  %47 = icmp eq i32 %46, 12
  br i1 %47, label %48, label %58

48:                                               ; preds = %8
  %49 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %50 = load float, ptr %49, align 8, !tbaa !62
  %51 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 9
  %52 = load float, ptr %51, align 8, !tbaa !62
  %53 = tail call fastcc float @MagickOver_(float noundef %50, float noundef %1, float noundef %52, float noundef %3) #18
  %54 = fpext float %53 to double
  %55 = fmul double %16, %54
  %56 = fptrunc double %55 to float
  %57 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 9
  store float %56, ptr %57, align 8, !tbaa !62
  br label %58

58:                                               ; preds = %8, %48, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CompositeIn(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #11 {
  %4 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %5 = load float, ptr %4, align 4, !tbaa !47
  %6 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %7 = load float, ptr %6, align 4, !tbaa !47
  %8 = insertelement <2 x float> poison, float %5, i64 0
  %9 = insertelement <2 x float> %8, float %7, i64 1
  %10 = fpext <2 x float> %9 to <2 x double>
  %11 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %10, <2 x double> <double 0xBEF0001000100010, double 0xBEF0001000100010>, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %12 = fptrunc <2 x double> %11 to <2 x float>
  %13 = extractelement <2 x float> %12, i64 0
  %14 = extractelement <2 x float> %12, i64 1
  %15 = fmul float %13, %14
  %16 = fcmp ole float %15, 0.000000e+00
  %17 = select i1 %16, float 0.000000e+00, float %15
  %18 = fpext float %17 to double
  %19 = fsub double 1.000000e+00, %18
  %20 = tail call fastcc double @PerceptibleReciprocal(double noundef %18) #18
  %21 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %22 = load float, ptr %21, align 8, !tbaa !58
  %23 = tail call fastcc float @In(float noundef %22, float noundef %13, float noundef %14) #18
  %24 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  %25 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %26 = load float, ptr %25, align 4, !tbaa !59
  %27 = tail call fastcc float @In(float noundef %26, float noundef %13, float noundef %14) #18
  %28 = insertelement <2 x float> poison, float %23, i64 0
  %29 = insertelement <2 x float> %28, float %27, i64 1
  %30 = fpext <2 x float> %29 to <2 x double>
  %31 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %32 = load float, ptr %31, align 8, !tbaa !60
  %33 = tail call fastcc float @In(float noundef %32, float noundef %13, float noundef %14) #18
  %34 = fpext float %33 to double
  %35 = insertelement <4 x double> poison, double %20, i64 0
  %36 = insertelement <4 x double> %35, double %19, i64 1
  %37 = shufflevector <4 x double> %36, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %38 = shufflevector <2 x double> %30, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %39 = insertelement <4 x double> %38, double 6.553500e+04, i64 3
  %40 = insertelement <4 x double> %39, double %34, i64 2
  %41 = fmul <4 x double> %37, %40
  %42 = fptrunc <4 x double> %41 to <4 x float>
  store <4 x float> %42, ptr %24, align 8, !tbaa !30
  %43 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %44 = load i32, ptr %43, align 4, !tbaa !65
  %45 = icmp eq i32 %44, 12
  br i1 %45, label %46, label %54

46:                                               ; preds = %3
  %47 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %48 = load float, ptr %47, align 8, !tbaa !62
  %49 = tail call fastcc float @In(float noundef %48, float noundef %13, float noundef %14) #18
  %50 = fpext float %49 to double
  %51 = fmul double %20, %50
  %52 = fptrunc double %51 to float
  %53 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 9
  store float %52, ptr %53, align 8, !tbaa !62
  br label %54

54:                                               ; preds = %46, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CompositeOut(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #11 {
  %4 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %5 = load float, ptr %4, align 4, !tbaa !47
  %6 = fpext float %5 to double
  %7 = tail call double @llvm.fmuladd.f64(double %6, double 0xBEF0001000100010, double 1.000000e+00)
  %8 = fptrunc double %7 to float
  %9 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %10 = load float, ptr %9, align 4, !tbaa !47
  %11 = fpext float %10 to double
  %12 = tail call double @llvm.fmuladd.f64(double %11, double 0xBEF0001000100010, double 1.000000e+00)
  %13 = fptrunc double %12 to float
  %14 = fpext float %8 to double
  %15 = fpext float %13 to double
  %16 = fsub double 1.000000e+00, %15
  %17 = fmul double %16, %14
  %18 = fcmp olt double %17, 0.000000e+00
  %19 = select i1 %18, double 0.000000e+00, double %17
  %20 = fsub double 1.000000e+00, %19
  %21 = tail call fastcc double @PerceptibleReciprocal(double noundef %19) #18
  %22 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %23 = load float, ptr %22, align 8, !tbaa !58
  %24 = tail call fastcc float @Out(float noundef %23, float noundef %8, float noundef %13) #18
  %25 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  %26 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %27 = load float, ptr %26, align 4, !tbaa !59
  %28 = tail call fastcc float @Out(float noundef %27, float noundef %8, float noundef %13) #18
  %29 = insertelement <2 x float> poison, float %24, i64 0
  %30 = insertelement <2 x float> %29, float %28, i64 1
  %31 = fpext <2 x float> %30 to <2 x double>
  %32 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %33 = load float, ptr %32, align 8, !tbaa !60
  %34 = tail call fastcc float @Out(float noundef %33, float noundef %8, float noundef %13) #18
  %35 = fpext float %34 to double
  %36 = insertelement <4 x double> poison, double %21, i64 0
  %37 = insertelement <4 x double> %36, double %20, i64 1
  %38 = shufflevector <4 x double> %37, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %39 = shufflevector <2 x double> %31, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %40 = insertelement <4 x double> %39, double 6.553500e+04, i64 3
  %41 = insertelement <4 x double> %40, double %35, i64 2
  %42 = fmul <4 x double> %38, %41
  %43 = fptrunc <4 x double> %42 to <4 x float>
  store <4 x float> %43, ptr %25, align 8, !tbaa !30
  %44 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %45 = load i32, ptr %44, align 4, !tbaa !65
  %46 = icmp eq i32 %45, 12
  br i1 %46, label %47, label %55

47:                                               ; preds = %3
  %48 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %49 = load float, ptr %48, align 8, !tbaa !62
  %50 = tail call fastcc float @Out(float noundef %49, float noundef %8, float noundef %13) #18
  %51 = fpext float %50 to double
  %52 = fmul double %21, %51
  %53 = fptrunc double %52 to float
  %54 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 9
  store float %53, ptr %54, align 8, !tbaa !62
  br label %55

55:                                               ; preds = %47, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CompositeAtop(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #11 {
  %4 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %5 = load float, ptr %4, align 4, !tbaa !47
  %6 = fpext float %5 to double
  %7 = tail call double @llvm.fmuladd.f64(double %6, double 0xBEF0001000100010, double 1.000000e+00)
  %8 = fptrunc double %7 to float
  %9 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %10 = load float, ptr %9, align 4, !tbaa !47
  %11 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 8
  store float %10, ptr %11, align 4, !tbaa !47
  %12 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %13 = load float, ptr %12, align 8, !tbaa !58
  %14 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %15 = load float, ptr %14, align 8, !tbaa !58
  %16 = tail call fastcc float @Atop(float noundef %13, float noundef %8, float noundef %15) #18
  %17 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  store float %16, ptr %17, align 8, !tbaa !58
  %18 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %19 = load float, ptr %18, align 4, !tbaa !59
  %20 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %21 = load float, ptr %20, align 4, !tbaa !59
  %22 = tail call fastcc float @Atop(float noundef %19, float noundef %8, float noundef %21) #18
  %23 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 6
  store float %22, ptr %23, align 4, !tbaa !59
  %24 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %25 = load float, ptr %24, align 8, !tbaa !60
  %26 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %27 = load float, ptr %26, align 8, !tbaa !60
  %28 = tail call fastcc float @Atop(float noundef %25, float noundef %8, float noundef %27) #18
  %29 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 7
  store float %28, ptr %29, align 8, !tbaa !60
  %30 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !65
  %32 = icmp eq i32 %31, 12
  br i1 %32, label %33, label %40

33:                                               ; preds = %3
  %34 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %35 = load float, ptr %34, align 8, !tbaa !62
  %36 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %37 = load float, ptr %36, align 8, !tbaa !62
  %38 = tail call fastcc float @Atop(float noundef %35, float noundef %8, float noundef %37) #18
  %39 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 9
  store float %38, ptr %39, align 8, !tbaa !62
  br label %40

40:                                               ; preds = %33, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CompositeXor(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #11 {
  %4 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %5 = load float, ptr %4, align 4, !tbaa !47
  %6 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %7 = load float, ptr %6, align 4, !tbaa !47
  %8 = insertelement <2 x float> poison, float %5, i64 0
  %9 = insertelement <2 x float> %8, float %7, i64 1
  %10 = fpext <2 x float> %9 to <2 x double>
  %11 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %10, <2 x double> <double 0xBEF0001000100010, double 0xBEF0001000100010>, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %12 = fptrunc <2 x double> %11 to <2 x float>
  %13 = extractelement <2 x float> %12, i64 0
  %14 = extractelement <2 x float> %12, i64 1
  %15 = fadd float %13, %14
  %16 = fmul float %13, -2.000000e+00
  %17 = tail call float @llvm.fmuladd.f32(float %16, float %14, float %15)
  %18 = fcmp olt float %17, 0.000000e+00
  %19 = select i1 %18, float 0.000000e+00, float %17
  %20 = fpext float %19 to double
  %21 = fsub double 1.000000e+00, %20
  %22 = fmul double %21, 6.553500e+04
  %23 = fptrunc double %22 to float
  %24 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 8
  store float %23, ptr %24, align 4, !tbaa !47
  %25 = tail call fastcc double @PerceptibleReciprocal(double noundef %20) #18
  %26 = fptrunc double %25 to float
  %27 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %28 = load float, ptr %27, align 8, !tbaa !58
  %29 = fmul float %28, %13
  %30 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %31 = load float, ptr %30, align 8, !tbaa !58
  %32 = fmul float %31, %14
  %33 = tail call fastcc float @Xor(float noundef %29, float noundef %13, float noundef %32, float noundef %14) #18
  %34 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  %35 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %36 = load float, ptr %35, align 4, !tbaa !59
  %37 = fmul float %36, %13
  %38 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %39 = load float, ptr %38, align 4, !tbaa !59
  %40 = fmul float %39, %14
  %41 = tail call fastcc float @Xor(float noundef %37, float noundef %13, float noundef %40, float noundef %14) #18
  %42 = insertelement <2 x float> poison, float %33, i64 0
  %43 = insertelement <2 x float> %42, float %41, i64 1
  %44 = insertelement <2 x float> poison, float %26, i64 0
  %45 = shufflevector <2 x float> %44, <2 x float> poison, <2 x i32> zeroinitializer
  %46 = fmul <2 x float> %43, %45
  store <2 x float> %46, ptr %34, align 8, !tbaa !30
  %47 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %48 = load float, ptr %47, align 8, !tbaa !60
  %49 = fmul float %48, %13
  %50 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %51 = load float, ptr %50, align 8, !tbaa !60
  %52 = fmul float %51, %14
  %53 = tail call fastcc float @Xor(float noundef %49, float noundef %13, float noundef %52, float noundef %14) #18
  %54 = fmul float %53, %26
  %55 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 7
  store float %54, ptr %55, align 8, !tbaa !60
  %56 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %57 = load i32, ptr %56, align 4, !tbaa !65
  %58 = icmp eq i32 %57, 12
  br i1 %58, label %59, label %69

59:                                               ; preds = %3
  %60 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %61 = load float, ptr %60, align 8, !tbaa !62
  %62 = fmul float %61, %13
  %63 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %64 = load float, ptr %63, align 8, !tbaa !62
  %65 = fmul float %64, %14
  %66 = tail call fastcc float @Xor(float noundef %62, float noundef %13, float noundef %65, float noundef %14) #18
  %67 = fmul float %66, %26
  %68 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 9
  store float %67, ptr %68, align 8, !tbaa !62
  br label %69

69:                                               ; preds = %59, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CompositePlus(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #11 {
  %5 = and i32 %2, 256
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %9 = load float, ptr %8, align 4, !tbaa !47
  %10 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %11 = load float, ptr %10, align 4, !tbaa !47
  tail call fastcc void @MagickPixelCompositePlus(ptr noundef %0, float noundef %9, ptr noundef %1, float noundef %11, ptr noundef %3) #18
  br label %67

12:                                               ; preds = %4
  %13 = and i32 %2, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %17 = load float, ptr %16, align 4, !tbaa !47
  %18 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %19 = load float, ptr %18, align 4, !tbaa !47
  %20 = fadd float %17, %19
  %21 = fadd float %20, -6.553500e+04
  %22 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  store float %21, ptr %22, align 4, !tbaa !47
  br label %23

23:                                               ; preds = %15, %12
  %24 = and i32 %2, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %28 = load float, ptr %27, align 8, !tbaa !58
  %29 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %30 = load float, ptr %29, align 8, !tbaa !58
  %31 = fadd float %28, %30
  %32 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  store float %31, ptr %32, align 8, !tbaa !58
  br label %33

33:                                               ; preds = %26, %23
  %34 = and i32 %2, 2
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %38 = load float, ptr %37, align 4, !tbaa !59
  %39 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %40 = load float, ptr %39, align 4, !tbaa !59
  %41 = fadd float %38, %40
  %42 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 6
  store float %41, ptr %42, align 4, !tbaa !59
  br label %43

43:                                               ; preds = %36, %33
  %44 = and i32 %2, 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %48 = load float, ptr %47, align 8, !tbaa !60
  %49 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %50 = load float, ptr %49, align 8, !tbaa !60
  %51 = fadd float %48, %50
  %52 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  store float %51, ptr %52, align 8, !tbaa !60
  br label %53

53:                                               ; preds = %46, %43
  %54 = and i32 %2, 32
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %67, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %58 = load i32, ptr %57, align 4, !tbaa !65
  %59 = icmp eq i32 %58, 12
  br i1 %59, label %60, label %67

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %62 = load float, ptr %61, align 8, !tbaa !62
  %63 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %64 = load float, ptr %63, align 8, !tbaa !62
  %65 = fadd float %62, %64
  %66 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  store float %65, ptr %66, align 8, !tbaa !62
  br label %67

67:                                               ; preds = %53, %56, %60, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CompositeMinus(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #11 {
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %6 = load float, ptr %5, align 4, !tbaa !47
  %7 = fpext float %6 to double
  %8 = tail call double @llvm.fmuladd.f64(double %7, double 0xBEF0001000100010, double 1.000000e+00)
  %9 = fptrunc double %8 to float
  %10 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %11 = load float, ptr %10, align 4, !tbaa !47
  %12 = fpext float %11 to double
  %13 = tail call double @llvm.fmuladd.f64(double %12, double 0xBEF0001000100010, double 1.000000e+00)
  %14 = fptrunc double %13 to float
  %15 = and i32 %2, 256
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %73, label %17

17:                                               ; preds = %4
  %18 = fadd float %9, %14
  %19 = fneg float %9
  %20 = tail call float @llvm.fmuladd.f32(float %19, float %14, float %18)
  %21 = tail call fastcc float @RoundToUnity(float noundef %20) #18
  %22 = fpext float %21 to double
  %23 = fsub double 1.000000e+00, %22
  %24 = tail call fastcc double @PerceptibleReciprocal(double noundef %22) #18
  %25 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %26 = load float, ptr %25, align 8, !tbaa !58
  %27 = fmul float %26, %9
  %28 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %29 = load float, ptr %28, align 8, !tbaa !58
  %30 = fmul float %29, %14
  %31 = tail call fastcc float @Minus(float noundef %27, float noundef %9, float noundef %30) #18
  %32 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  %33 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %34 = load float, ptr %33, align 4, !tbaa !59
  %35 = fmul float %34, %9
  %36 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %37 = load float, ptr %36, align 4, !tbaa !59
  %38 = fmul float %37, %14
  %39 = tail call fastcc float @Minus(float noundef %35, float noundef %9, float noundef %38) #18
  %40 = insertelement <2 x float> poison, float %31, i64 0
  %41 = insertelement <2 x float> %40, float %39, i64 1
  %42 = fpext <2 x float> %41 to <2 x double>
  %43 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %44 = load float, ptr %43, align 8, !tbaa !60
  %45 = fmul float %44, %9
  %46 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %47 = load float, ptr %46, align 8, !tbaa !60
  %48 = fmul float %47, %14
  %49 = tail call fastcc float @Minus(float noundef %45, float noundef %9, float noundef %48) #18
  %50 = fpext float %49 to double
  %51 = insertelement <4 x double> poison, double %24, i64 0
  %52 = insertelement <4 x double> %51, double %23, i64 1
  %53 = shufflevector <4 x double> %52, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %54 = shufflevector <2 x double> %42, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %55 = insertelement <4 x double> %54, double 6.553500e+04, i64 3
  %56 = insertelement <4 x double> %55, double %50, i64 2
  %57 = fmul <4 x double> %53, %56
  %58 = fptrunc <4 x double> %57 to <4 x float>
  store <4 x float> %58, ptr %32, align 8, !tbaa !30
  %59 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %60 = load i32, ptr %59, align 4, !tbaa !65
  %61 = icmp eq i32 %60, 12
  br i1 %61, label %62, label %129

62:                                               ; preds = %17
  %63 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %64 = load float, ptr %63, align 8, !tbaa !62
  %65 = fmul float %64, %9
  %66 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %67 = load float, ptr %66, align 8, !tbaa !62
  %68 = fmul float %67, %14
  %69 = tail call fastcc float @Minus(float noundef %65, float noundef %9, float noundef %68) #18
  %70 = fpext float %69 to double
  %71 = fmul double %24, %70
  %72 = fptrunc double %71 to float
  br label %126

73:                                               ; preds = %4
  %74 = and i32 %2, 8
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %73
  %77 = fsub float %9, %14
  %78 = fpext float %77 to double
  %79 = fsub double 1.000000e+00, %78
  %80 = fmul double %79, 6.553500e+04
  %81 = fptrunc double %80 to float
  %82 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  store float %81, ptr %82, align 4, !tbaa !47
  br label %83

83:                                               ; preds = %76, %73
  %84 = and i32 %2, 1
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %88 = load float, ptr %87, align 8, !tbaa !58
  %89 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %90 = load float, ptr %89, align 8, !tbaa !58
  %91 = fsub float %88, %90
  %92 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  store float %91, ptr %92, align 8, !tbaa !58
  br label %93

93:                                               ; preds = %86, %83
  %94 = and i32 %2, 2
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %103, label %96

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %98 = load float, ptr %97, align 4, !tbaa !59
  %99 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %100 = load float, ptr %99, align 4, !tbaa !59
  %101 = fsub float %98, %100
  %102 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 6
  store float %101, ptr %102, align 4, !tbaa !59
  br label %103

103:                                              ; preds = %96, %93
  %104 = and i32 %2, 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %113, label %106

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %108 = load float, ptr %107, align 8, !tbaa !60
  %109 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %110 = load float, ptr %109, align 8, !tbaa !60
  %111 = fsub float %108, %110
  %112 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  store float %111, ptr %112, align 8, !tbaa !60
  br label %113

113:                                              ; preds = %106, %103
  %114 = and i32 %2, 32
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %129, label %116

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %118 = load i32, ptr %117, align 4, !tbaa !65
  %119 = icmp eq i32 %118, 12
  br i1 %119, label %120, label %129

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %122 = load float, ptr %121, align 8, !tbaa !62
  %123 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %124 = load float, ptr %123, align 8, !tbaa !62
  %125 = fsub float %122, %124
  br label %126

126:                                              ; preds = %62, %120
  %127 = phi float [ %125, %120 ], [ %72, %62 ]
  %128 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  store float %127, ptr %128, align 8, !tbaa !62
  br label %129

129:                                              ; preds = %126, %113, %116, %17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CompositeModulusAdd(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #11 {
  %5 = and i32 %2, 256
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %54, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %9 = load float, ptr %8, align 4, !tbaa !47
  %10 = fpext float %9 to double
  %11 = tail call double @llvm.fmuladd.f64(double %10, double 0xBEF0001000100010, double 1.000000e+00)
  %12 = fptrunc double %11 to float
  %13 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %14 = load float, ptr %13, align 4, !tbaa !47
  %15 = fpext float %14 to double
  %16 = tail call double @llvm.fmuladd.f64(double %15, double 0xBEF0001000100010, double 1.000000e+00)
  %17 = fptrunc double %16 to float
  %18 = fadd float %12, %17
  %19 = fneg float %12
  %20 = tail call float @llvm.fmuladd.f32(float %19, float %17, float %18)
  %21 = tail call fastcc float @RoundToUnity(float noundef %20) #18
  %22 = fpext float %21 to double
  %23 = fsub double 1.000000e+00, %22
  %24 = fmul double %23, 6.553500e+04
  %25 = fptrunc double %24 to float
  %26 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  store float %25, ptr %26, align 4, !tbaa !47
  %27 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %28 = load float, ptr %27, align 8, !tbaa !58
  %29 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %30 = load float, ptr %29, align 8, !tbaa !58
  %31 = tail call fastcc float @ModulusAdd(float noundef %28, float noundef %12, float noundef %30, float noundef %17) #18
  %32 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  store float %31, ptr %32, align 8, !tbaa !58
  %33 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %34 = load float, ptr %33, align 4, !tbaa !59
  %35 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %36 = load float, ptr %35, align 4, !tbaa !59
  %37 = tail call fastcc float @ModulusAdd(float noundef %34, float noundef %12, float noundef %36, float noundef %17) #18
  %38 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 6
  store float %37, ptr %38, align 4, !tbaa !59
  %39 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %40 = load float, ptr %39, align 8, !tbaa !60
  %41 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %42 = load float, ptr %41, align 8, !tbaa !60
  %43 = tail call fastcc float @ModulusAdd(float noundef %40, float noundef %12, float noundef %42, float noundef %17) #18
  %44 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  store float %43, ptr %44, align 8, !tbaa !60
  %45 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %46 = load i32, ptr %45, align 4, !tbaa !65
  %47 = icmp eq i32 %46, 12
  br i1 %47, label %48, label %113

48:                                               ; preds = %7
  %49 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %50 = load float, ptr %49, align 8, !tbaa !62
  %51 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %52 = load float, ptr %51, align 8, !tbaa !62
  %53 = tail call fastcc float @ModulusAdd(float noundef %50, float noundef %12, float noundef %52, float noundef %17) #18
  br label %110

54:                                               ; preds = %4
  %55 = and i32 %2, 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %59 = load float, ptr %58, align 4, !tbaa !47
  %60 = fsub float 6.553500e+04, %59
  %61 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %62 = load float, ptr %61, align 4, !tbaa !47
  %63 = fsub float 6.553500e+04, %62
  %64 = tail call fastcc float @ModulusAdd(float noundef %60, float noundef 1.000000e+00, float noundef %63, float noundef 1.000000e+00) #18
  %65 = fsub float 6.553500e+04, %64
  %66 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  store float %65, ptr %66, align 4, !tbaa !47
  br label %67

67:                                               ; preds = %57, %54
  %68 = and i32 %2, 1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %72 = load float, ptr %71, align 8, !tbaa !58
  %73 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %74 = load float, ptr %73, align 8, !tbaa !58
  %75 = tail call fastcc float @ModulusAdd(float noundef %72, float noundef 1.000000e+00, float noundef %74, float noundef 1.000000e+00) #18
  %76 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  store float %75, ptr %76, align 8, !tbaa !58
  br label %77

77:                                               ; preds = %70, %67
  %78 = and i32 %2, 2
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %82 = load float, ptr %81, align 4, !tbaa !59
  %83 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %84 = load float, ptr %83, align 4, !tbaa !59
  %85 = tail call fastcc float @ModulusAdd(float noundef %82, float noundef 1.000000e+00, float noundef %84, float noundef 1.000000e+00) #18
  %86 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 6
  store float %85, ptr %86, align 4, !tbaa !59
  br label %87

87:                                               ; preds = %80, %77
  %88 = and i32 %2, 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %92 = load float, ptr %91, align 8, !tbaa !60
  %93 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %94 = load float, ptr %93, align 8, !tbaa !60
  %95 = tail call fastcc float @ModulusAdd(float noundef %92, float noundef 1.000000e+00, float noundef %94, float noundef 1.000000e+00) #18
  %96 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  store float %95, ptr %96, align 8, !tbaa !60
  br label %97

97:                                               ; preds = %90, %87
  %98 = and i32 %2, 32
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %113, label %100

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %102 = load i32, ptr %101, align 4, !tbaa !65
  %103 = icmp eq i32 %102, 12
  br i1 %103, label %104, label %113

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %106 = load float, ptr %105, align 8, !tbaa !62
  %107 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %108 = load float, ptr %107, align 8, !tbaa !62
  %109 = tail call fastcc float @ModulusAdd(float noundef %106, float noundef 1.000000e+00, float noundef %108, float noundef 1.000000e+00) #18
  br label %110

110:                                              ; preds = %104, %48
  %111 = phi float [ %53, %48 ], [ %109, %104 ]
  %112 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  store float %111, ptr %112, align 8, !tbaa !62
  br label %113

113:                                              ; preds = %110, %7, %97, %100
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CompositeModulusSubtract(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #11 {
  %5 = and i32 %2, 256
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %54, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %9 = load float, ptr %8, align 4, !tbaa !47
  %10 = fpext float %9 to double
  %11 = tail call double @llvm.fmuladd.f64(double %10, double 0xBEF0001000100010, double 1.000000e+00)
  %12 = fptrunc double %11 to float
  %13 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %14 = load float, ptr %13, align 4, !tbaa !47
  %15 = fpext float %14 to double
  %16 = tail call double @llvm.fmuladd.f64(double %15, double 0xBEF0001000100010, double 1.000000e+00)
  %17 = fptrunc double %16 to float
  %18 = fadd float %12, %17
  %19 = fneg float %12
  %20 = tail call float @llvm.fmuladd.f32(float %19, float %17, float %18)
  %21 = tail call fastcc float @RoundToUnity(float noundef %20) #18
  %22 = fpext float %21 to double
  %23 = fsub double 1.000000e+00, %22
  %24 = fmul double %23, 6.553500e+04
  %25 = fptrunc double %24 to float
  %26 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  store float %25, ptr %26, align 4, !tbaa !47
  %27 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %28 = load float, ptr %27, align 8, !tbaa !58
  %29 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %30 = load float, ptr %29, align 8, !tbaa !58
  %31 = tail call fastcc float @ModulusSubtract(float noundef %28, float noundef %12, float noundef %30, float noundef %17) #18
  %32 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  store float %31, ptr %32, align 8, !tbaa !58
  %33 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %34 = load float, ptr %33, align 4, !tbaa !59
  %35 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %36 = load float, ptr %35, align 4, !tbaa !59
  %37 = tail call fastcc float @ModulusSubtract(float noundef %34, float noundef %12, float noundef %36, float noundef %17) #18
  %38 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 6
  store float %37, ptr %38, align 4, !tbaa !59
  %39 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %40 = load float, ptr %39, align 8, !tbaa !60
  %41 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %42 = load float, ptr %41, align 8, !tbaa !60
  %43 = tail call fastcc float @ModulusSubtract(float noundef %40, float noundef %12, float noundef %42, float noundef %17) #18
  %44 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  store float %43, ptr %44, align 8, !tbaa !60
  %45 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %46 = load i32, ptr %45, align 4, !tbaa !65
  %47 = icmp eq i32 %46, 12
  br i1 %47, label %48, label %113

48:                                               ; preds = %7
  %49 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %50 = load float, ptr %49, align 8, !tbaa !62
  %51 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %52 = load float, ptr %51, align 8, !tbaa !62
  %53 = tail call fastcc float @ModulusSubtract(float noundef %50, float noundef %12, float noundef %52, float noundef %17) #18
  br label %110

54:                                               ; preds = %4
  %55 = and i32 %2, 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %59 = load float, ptr %58, align 4, !tbaa !47
  %60 = fsub float 6.553500e+04, %59
  %61 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %62 = load float, ptr %61, align 4, !tbaa !47
  %63 = fsub float 6.553500e+04, %62
  %64 = tail call fastcc float @ModulusSubtract(float noundef %60, float noundef 1.000000e+00, float noundef %63, float noundef 1.000000e+00) #18
  %65 = fsub float 6.553500e+04, %64
  %66 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  store float %65, ptr %66, align 4, !tbaa !47
  br label %67

67:                                               ; preds = %57, %54
  %68 = and i32 %2, 1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %72 = load float, ptr %71, align 8, !tbaa !58
  %73 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %74 = load float, ptr %73, align 8, !tbaa !58
  %75 = tail call fastcc float @ModulusSubtract(float noundef %72, float noundef 1.000000e+00, float noundef %74, float noundef 1.000000e+00) #18
  %76 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  store float %75, ptr %76, align 8, !tbaa !58
  br label %77

77:                                               ; preds = %70, %67
  %78 = and i32 %2, 2
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %82 = load float, ptr %81, align 4, !tbaa !59
  %83 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %84 = load float, ptr %83, align 4, !tbaa !59
  %85 = tail call fastcc float @ModulusSubtract(float noundef %82, float noundef 1.000000e+00, float noundef %84, float noundef 1.000000e+00) #18
  %86 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 6
  store float %85, ptr %86, align 4, !tbaa !59
  br label %87

87:                                               ; preds = %80, %77
  %88 = and i32 %2, 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %92 = load float, ptr %91, align 8, !tbaa !60
  %93 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %94 = load float, ptr %93, align 8, !tbaa !60
  %95 = tail call fastcc float @ModulusSubtract(float noundef %92, float noundef 1.000000e+00, float noundef %94, float noundef 1.000000e+00) #18
  %96 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  store float %95, ptr %96, align 8, !tbaa !60
  br label %97

97:                                               ; preds = %90, %87
  %98 = and i32 %2, 32
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %113, label %100

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %102 = load i32, ptr %101, align 4, !tbaa !65
  %103 = icmp eq i32 %102, 12
  br i1 %103, label %104, label %113

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %106 = load float, ptr %105, align 8, !tbaa !62
  %107 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %108 = load float, ptr %107, align 8, !tbaa !62
  %109 = tail call fastcc float @ModulusSubtract(float noundef %106, float noundef 1.000000e+00, float noundef %108, float noundef 1.000000e+00) #18
  br label %110

110:                                              ; preds = %104, %48
  %111 = phi float [ %53, %48 ], [ %109, %104 ]
  %112 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  store float %111, ptr %112, align 8, !tbaa !62
  br label %113

113:                                              ; preds = %110, %7, %97, %100
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CompositeDifference(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #11 {
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %6 = load float, ptr %5, align 4, !tbaa !47
  %7 = fpext float %6 to double
  %8 = tail call double @llvm.fmuladd.f64(double %7, double 0xBEF0001000100010, double 1.000000e+00)
  %9 = fptrunc double %8 to float
  %10 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %11 = load float, ptr %10, align 4, !tbaa !47
  %12 = fpext float %11 to double
  %13 = tail call double @llvm.fmuladd.f64(double %12, double 0xBEF0001000100010, double 1.000000e+00)
  %14 = fptrunc double %13 to float
  %15 = and i32 %2, 256
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %65, label %17

17:                                               ; preds = %4
  %18 = fadd float %9, %14
  %19 = fneg float %9
  %20 = tail call float @llvm.fmuladd.f32(float %19, float %14, float %18)
  %21 = tail call fastcc float @RoundToUnity(float noundef %20) #18
  %22 = fpext float %21 to double
  %23 = fsub double 1.000000e+00, %22
  %24 = tail call fastcc double @PerceptibleReciprocal(double noundef %22) #18
  %25 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %26 = load float, ptr %25, align 8, !tbaa !58
  %27 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %28 = load float, ptr %27, align 8, !tbaa !58
  %29 = tail call fastcc float @Difference(float noundef %26, float noundef %9, float noundef %28, float noundef %14) #18
  %30 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  %31 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %32 = load float, ptr %31, align 4, !tbaa !59
  %33 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %34 = load float, ptr %33, align 4, !tbaa !59
  %35 = tail call fastcc float @Difference(float noundef %32, float noundef %9, float noundef %34, float noundef %14) #18
  %36 = insertelement <2 x float> poison, float %29, i64 0
  %37 = insertelement <2 x float> %36, float %35, i64 1
  %38 = fpext <2 x float> %37 to <2 x double>
  %39 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %40 = load float, ptr %39, align 8, !tbaa !60
  %41 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %42 = load float, ptr %41, align 8, !tbaa !60
  %43 = tail call fastcc float @Difference(float noundef %40, float noundef %9, float noundef %42, float noundef %14) #18
  %44 = fpext float %43 to double
  %45 = insertelement <4 x double> poison, double %24, i64 0
  %46 = insertelement <4 x double> %45, double %23, i64 1
  %47 = shufflevector <4 x double> %46, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %48 = shufflevector <2 x double> %38, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %49 = insertelement <4 x double> %48, double 6.553500e+04, i64 3
  %50 = insertelement <4 x double> %49, double %44, i64 2
  %51 = fmul <4 x double> %47, %50
  %52 = fptrunc <4 x double> %51 to <4 x float>
  store <4 x float> %52, ptr %30, align 8, !tbaa !30
  %53 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %54 = load i32, ptr %53, align 4, !tbaa !65
  %55 = icmp eq i32 %54, 12
  br i1 %55, label %56, label %123

56:                                               ; preds = %17
  %57 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %58 = load float, ptr %57, align 8, !tbaa !62
  %59 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %60 = load float, ptr %59, align 8, !tbaa !62
  %61 = tail call fastcc float @Difference(float noundef %58, float noundef %9, float noundef %60, float noundef %14) #18
  %62 = fpext float %61 to double
  %63 = fmul double %24, %62
  %64 = fptrunc double %63 to float
  br label %120

65:                                               ; preds = %4
  %66 = and i32 %2, 8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %65
  %69 = fsub float %6, %11
  %70 = tail call float @llvm.fabs.f32(float %69)
  %71 = fsub float 6.553500e+04, %70
  %72 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  store float %71, ptr %72, align 4, !tbaa !47
  br label %73

73:                                               ; preds = %68, %65
  %74 = and i32 %2, 1
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %78 = load float, ptr %77, align 8, !tbaa !58
  %79 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %80 = load float, ptr %79, align 8, !tbaa !58
  %81 = fsub float %78, %80
  %82 = tail call float @llvm.fabs.f32(float %81)
  %83 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  store float %82, ptr %83, align 8, !tbaa !58
  br label %84

84:                                               ; preds = %76, %73
  %85 = and i32 %2, 2
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %95, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %89 = load float, ptr %88, align 4, !tbaa !59
  %90 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %91 = load float, ptr %90, align 4, !tbaa !59
  %92 = fsub float %89, %91
  %93 = tail call float @llvm.fabs.f32(float %92)
  %94 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 6
  store float %93, ptr %94, align 4, !tbaa !59
  br label %95

95:                                               ; preds = %87, %84
  %96 = and i32 %2, 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %106, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %100 = load float, ptr %99, align 8, !tbaa !60
  %101 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %102 = load float, ptr %101, align 8, !tbaa !60
  %103 = fsub float %100, %102
  %104 = tail call float @llvm.fabs.f32(float %103)
  %105 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  store float %104, ptr %105, align 8, !tbaa !60
  br label %106

106:                                              ; preds = %98, %95
  %107 = and i32 %2, 32
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %123, label %109

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %111 = load i32, ptr %110, align 4, !tbaa !65
  %112 = icmp eq i32 %111, 12
  br i1 %112, label %113, label %123

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %115 = load float, ptr %114, align 8, !tbaa !62
  %116 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %117 = load float, ptr %116, align 8, !tbaa !62
  %118 = fsub float %115, %117
  %119 = tail call float @llvm.fabs.f32(float %118)
  br label %120

120:                                              ; preds = %56, %113
  %121 = phi float [ %119, %113 ], [ %64, %56 ]
  %122 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  store float %121, ptr %122, align 8, !tbaa !62
  br label %123

123:                                              ; preds = %120, %106, %109, %17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CompositeExclusion(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #11 {
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %6 = load float, ptr %5, align 4, !tbaa !47
  %7 = fpext float %6 to double
  %8 = tail call double @llvm.fmuladd.f64(double %7, double 0xBEF0001000100010, double 1.000000e+00)
  %9 = fptrunc double %8 to float
  %10 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %11 = load float, ptr %10, align 4, !tbaa !47
  %12 = fpext float %11 to double
  %13 = tail call double @llvm.fmuladd.f64(double %12, double 0xBEF0001000100010, double 1.000000e+00)
  %14 = fptrunc double %13 to float
  %15 = and i32 %2, 256
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %99, label %17

17:                                               ; preds = %4
  %18 = fadd float %9, %14
  %19 = fneg float %9
  %20 = tail call float @llvm.fmuladd.f32(float %19, float %14, float %18)
  %21 = tail call fastcc float @RoundToUnity(float noundef %20) #18
  %22 = fpext float %21 to double
  %23 = fsub double 1.000000e+00, %22
  %24 = fmul double %23, 6.553500e+04
  %25 = fptrunc double %24 to float
  %26 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  store float %25, ptr %26, align 4, !tbaa !47
  %27 = tail call double @llvm.fabs.f64(double %22)
  %28 = fcmp olt double %27, 1.000000e-15
  %29 = fdiv double 6.553500e+04, %22
  %30 = select i1 %28, double 0x440C6BD8BA3ED9CB, double %29
  %31 = fptrunc double %30 to float
  %32 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %33 = load float, ptr %32, align 8, !tbaa !58
  %34 = fpext float %33 to double
  %35 = fmul double %34, 0x3EF0001000100010
  %36 = fpext float %9 to double
  %37 = fmul double %35, %36
  %38 = fptrunc double %37 to float
  %39 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %40 = load float, ptr %39, align 8, !tbaa !58
  %41 = fpext float %40 to double
  %42 = fmul double %41, 0x3EF0001000100010
  %43 = fpext float %14 to double
  %44 = fmul double %42, %43
  %45 = fptrunc double %44 to float
  %46 = tail call fastcc float @Exclusion(float noundef %38, float noundef %9, float noundef %45, float noundef %14) #18
  %47 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  %48 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %49 = load float, ptr %48, align 4, !tbaa !59
  %50 = fpext float %49 to double
  %51 = fmul double %50, 0x3EF0001000100010
  %52 = fmul double %51, %36
  %53 = fptrunc double %52 to float
  %54 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %55 = load float, ptr %54, align 4, !tbaa !59
  %56 = fpext float %55 to double
  %57 = fmul double %56, 0x3EF0001000100010
  %58 = fmul double %57, %43
  %59 = fptrunc double %58 to float
  %60 = tail call fastcc float @Exclusion(float noundef %53, float noundef %9, float noundef %59, float noundef %14) #18
  %61 = insertelement <2 x float> poison, float %46, i64 0
  %62 = insertelement <2 x float> %61, float %60, i64 1
  %63 = insertelement <2 x float> poison, float %31, i64 0
  %64 = shufflevector <2 x float> %63, <2 x float> poison, <2 x i32> zeroinitializer
  %65 = fmul <2 x float> %62, %64
  store <2 x float> %65, ptr %47, align 8, !tbaa !30
  %66 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %67 = load float, ptr %66, align 8, !tbaa !60
  %68 = fpext float %67 to double
  %69 = fmul double %68, 0x3EF0001000100010
  %70 = fmul double %69, %36
  %71 = fptrunc double %70 to float
  %72 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %73 = load float, ptr %72, align 8, !tbaa !60
  %74 = fpext float %73 to double
  %75 = fmul double %74, 0x3EF0001000100010
  %76 = fmul double %75, %43
  %77 = fptrunc double %76 to float
  %78 = tail call fastcc float @Exclusion(float noundef %71, float noundef %9, float noundef %77, float noundef %14) #18
  %79 = fmul float %78, %31
  %80 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  store float %79, ptr %80, align 8, !tbaa !60
  %81 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %82 = load i32, ptr %81, align 4, !tbaa !65
  %83 = icmp eq i32 %82, 12
  br i1 %83, label %84, label %183

84:                                               ; preds = %17
  %85 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %86 = load float, ptr %85, align 8, !tbaa !62
  %87 = fpext float %86 to double
  %88 = fmul double %87, 0x3EF0001000100010
  %89 = fmul double %88, %36
  %90 = fptrunc double %89 to float
  %91 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %92 = load float, ptr %91, align 8, !tbaa !62
  %93 = fpext float %92 to double
  %94 = fmul double %93, 0x3EF0001000100010
  %95 = fmul double %94, %43
  %96 = fptrunc double %95 to float
  %97 = tail call fastcc float @Exclusion(float noundef %90, float noundef %9, float noundef %96, float noundef %14) #18
  %98 = fmul float %97, %31
  br label %180

99:                                               ; preds = %4
  %100 = and i32 %2, 8
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %109, label %102

102:                                              ; preds = %99
  %103 = tail call fastcc float @Exclusion(float noundef %9, float noundef 1.000000e+00, float noundef %14, float noundef 1.000000e+00) #18
  %104 = fpext float %103 to double
  %105 = fsub double 1.000000e+00, %104
  %106 = fmul double %105, 6.553500e+04
  %107 = fptrunc double %106 to float
  %108 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  store float %107, ptr %108, align 4, !tbaa !47
  br label %109

109:                                              ; preds = %102, %99
  %110 = and i32 %2, 1
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %126, label %112

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %114 = load float, ptr %113, align 8, !tbaa !58
  %115 = fpext float %114 to double
  %116 = fmul double %115, 0x3EF0001000100010
  %117 = fptrunc double %116 to float
  %118 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %119 = load float, ptr %118, align 8, !tbaa !58
  %120 = fpext float %119 to double
  %121 = fmul double %120, 0x3EF0001000100010
  %122 = fptrunc double %121 to float
  %123 = tail call fastcc float @Exclusion(float noundef %117, float noundef 1.000000e+00, float noundef %122, float noundef 1.000000e+00) #18
  %124 = fmul float %123, 6.553500e+04
  %125 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  store float %124, ptr %125, align 8, !tbaa !58
  br label %126

126:                                              ; preds = %112, %109
  %127 = and i32 %2, 2
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %143, label %129

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %131 = load float, ptr %130, align 4, !tbaa !59
  %132 = fpext float %131 to double
  %133 = fmul double %132, 0x3EF0001000100010
  %134 = fptrunc double %133 to float
  %135 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %136 = load float, ptr %135, align 4, !tbaa !59
  %137 = fpext float %136 to double
  %138 = fmul double %137, 0x3EF0001000100010
  %139 = fptrunc double %138 to float
  %140 = tail call fastcc float @Exclusion(float noundef %134, float noundef 1.000000e+00, float noundef %139, float noundef 1.000000e+00) #18
  %141 = fmul float %140, 6.553500e+04
  %142 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 6
  store float %141, ptr %142, align 4, !tbaa !59
  br label %143

143:                                              ; preds = %129, %126
  %144 = and i32 %2, 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %160, label %146

146:                                              ; preds = %143
  %147 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %148 = load float, ptr %147, align 8, !tbaa !60
  %149 = fpext float %148 to double
  %150 = fmul double %149, 0x3EF0001000100010
  %151 = fptrunc double %150 to float
  %152 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %153 = load float, ptr %152, align 8, !tbaa !60
  %154 = fpext float %153 to double
  %155 = fmul double %154, 0x3EF0001000100010
  %156 = fptrunc double %155 to float
  %157 = tail call fastcc float @Exclusion(float noundef %151, float noundef 1.000000e+00, float noundef %156, float noundef 1.000000e+00) #18
  %158 = fmul float %157, 6.553500e+04
  %159 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  store float %158, ptr %159, align 8, !tbaa !60
  br label %160

160:                                              ; preds = %146, %143
  %161 = and i32 %2, 32
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %183, label %163

163:                                              ; preds = %160
  %164 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %165 = load i32, ptr %164, align 4, !tbaa !65
  %166 = icmp eq i32 %165, 12
  br i1 %166, label %167, label %183

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %169 = load float, ptr %168, align 8, !tbaa !62
  %170 = fpext float %169 to double
  %171 = fmul double %170, 0x3EF0001000100010
  %172 = fptrunc double %171 to float
  %173 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %174 = load float, ptr %173, align 8, !tbaa !62
  %175 = fpext float %174 to double
  %176 = fmul double %175, 0x3EF0001000100010
  %177 = fptrunc double %176 to float
  %178 = tail call fastcc float @Exclusion(float noundef %172, float noundef 1.000000e+00, float noundef %177, float noundef 1.000000e+00) #18
  %179 = fmul float %178, 6.553500e+04
  br label %180

180:                                              ; preds = %84, %167
  %181 = phi float [ %179, %167 ], [ %98, %84 ]
  %182 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  store float %181, ptr %182, align 8, !tbaa !62
  br label %183

183:                                              ; preds = %180, %160, %163, %17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CompositeMultiply(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #11 {
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %6 = load float, ptr %5, align 4, !tbaa !47
  %7 = fpext float %6 to double
  %8 = tail call double @llvm.fmuladd.f64(double %7, double 0xBEF0001000100010, double 1.000000e+00)
  %9 = fptrunc double %8 to float
  %10 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %11 = load float, ptr %10, align 4, !tbaa !47
  %12 = fpext float %11 to double
  %13 = tail call double @llvm.fmuladd.f64(double %12, double 0xBEF0001000100010, double 1.000000e+00)
  %14 = fptrunc double %13 to float
  %15 = and i32 %2, 256
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %99, label %17

17:                                               ; preds = %4
  %18 = fadd float %9, %14
  %19 = fneg float %9
  %20 = tail call float @llvm.fmuladd.f32(float %19, float %14, float %18)
  %21 = tail call fastcc float @RoundToUnity(float noundef %20) #18
  %22 = fpext float %21 to double
  %23 = fsub double 1.000000e+00, %22
  %24 = fmul double %23, 6.553500e+04
  %25 = fptrunc double %24 to float
  %26 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  store float %25, ptr %26, align 4, !tbaa !47
  %27 = tail call double @llvm.fabs.f64(double %22)
  %28 = fcmp olt double %27, 1.000000e-15
  %29 = fdiv double 6.553500e+04, %22
  %30 = select i1 %28, double 0x440C6BD8BA3ED9CB, double %29
  %31 = fptrunc double %30 to float
  %32 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %33 = load float, ptr %32, align 8, !tbaa !58
  %34 = fpext float %33 to double
  %35 = fmul double %34, 0x3EF0001000100010
  %36 = fpext float %9 to double
  %37 = fmul double %35, %36
  %38 = fptrunc double %37 to float
  %39 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %40 = load float, ptr %39, align 8, !tbaa !58
  %41 = fpext float %40 to double
  %42 = fmul double %41, 0x3EF0001000100010
  %43 = fpext float %14 to double
  %44 = fmul double %42, %43
  %45 = fptrunc double %44 to float
  %46 = tail call fastcc float @Multiply(float noundef %38, float noundef %9, float noundef %45, float noundef %14) #18
  %47 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  %48 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %49 = load float, ptr %48, align 4, !tbaa !59
  %50 = fpext float %49 to double
  %51 = fmul double %50, 0x3EF0001000100010
  %52 = fmul double %51, %36
  %53 = fptrunc double %52 to float
  %54 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %55 = load float, ptr %54, align 4, !tbaa !59
  %56 = fpext float %55 to double
  %57 = fmul double %56, 0x3EF0001000100010
  %58 = fmul double %57, %43
  %59 = fptrunc double %58 to float
  %60 = tail call fastcc float @Multiply(float noundef %53, float noundef %9, float noundef %59, float noundef %14) #18
  %61 = insertelement <2 x float> poison, float %46, i64 0
  %62 = insertelement <2 x float> %61, float %60, i64 1
  %63 = insertelement <2 x float> poison, float %31, i64 0
  %64 = shufflevector <2 x float> %63, <2 x float> poison, <2 x i32> zeroinitializer
  %65 = fmul <2 x float> %62, %64
  store <2 x float> %65, ptr %47, align 8, !tbaa !30
  %66 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %67 = load float, ptr %66, align 8, !tbaa !60
  %68 = fpext float %67 to double
  %69 = fmul double %68, 0x3EF0001000100010
  %70 = fmul double %69, %36
  %71 = fptrunc double %70 to float
  %72 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %73 = load float, ptr %72, align 8, !tbaa !60
  %74 = fpext float %73 to double
  %75 = fmul double %74, 0x3EF0001000100010
  %76 = fmul double %75, %43
  %77 = fptrunc double %76 to float
  %78 = tail call fastcc float @Multiply(float noundef %71, float noundef %9, float noundef %77, float noundef %14) #18
  %79 = fmul float %78, %31
  %80 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  store float %79, ptr %80, align 8, !tbaa !60
  %81 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %82 = load i32, ptr %81, align 4, !tbaa !65
  %83 = icmp eq i32 %82, 12
  br i1 %83, label %84, label %171

84:                                               ; preds = %17
  %85 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %86 = load float, ptr %85, align 8, !tbaa !62
  %87 = fpext float %86 to double
  %88 = fmul double %87, 0x3EF0001000100010
  %89 = fmul double %88, %36
  %90 = fptrunc double %89 to float
  %91 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %92 = load float, ptr %91, align 8, !tbaa !62
  %93 = fpext float %92 to double
  %94 = fmul double %93, 0x3EF0001000100010
  %95 = fmul double %94, %43
  %96 = fptrunc double %95 to float
  %97 = tail call fastcc float @Multiply(float noundef %90, float noundef %9, float noundef %96, float noundef %14) #18
  %98 = fmul float %97, %31
  br label %168

99:                                               ; preds = %4
  %100 = and i32 %2, 8
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %109, label %102

102:                                              ; preds = %99
  %103 = fmul float %9, %14
  %104 = fpext float %103 to double
  %105 = fsub double 1.000000e+00, %104
  %106 = fmul double %105, 6.553500e+04
  %107 = fptrunc double %106 to float
  %108 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  store float %107, ptr %108, align 4, !tbaa !47
  br label %109

109:                                              ; preds = %102, %99
  %110 = and i32 %2, 1
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %123, label %112

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %114 = load float, ptr %113, align 8, !tbaa !58
  %115 = fpext float %114 to double
  %116 = fmul double %115, 0x3EF0001000100010
  %117 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %118 = load float, ptr %117, align 8, !tbaa !58
  %119 = fpext float %118 to double
  %120 = fmul double %116, %119
  %121 = fptrunc double %120 to float
  %122 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  store float %121, ptr %122, align 8, !tbaa !58
  br label %123

123:                                              ; preds = %112, %109
  %124 = and i32 %2, 2
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %137, label %126

126:                                              ; preds = %123
  %127 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %128 = load float, ptr %127, align 4, !tbaa !59
  %129 = fpext float %128 to double
  %130 = fmul double %129, 0x3EF0001000100010
  %131 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %132 = load float, ptr %131, align 4, !tbaa !59
  %133 = fpext float %132 to double
  %134 = fmul double %130, %133
  %135 = fptrunc double %134 to float
  %136 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 6
  store float %135, ptr %136, align 4, !tbaa !59
  br label %137

137:                                              ; preds = %126, %123
  %138 = and i32 %2, 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %151, label %140

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %142 = load float, ptr %141, align 8, !tbaa !60
  %143 = fpext float %142 to double
  %144 = fmul double %143, 0x3EF0001000100010
  %145 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %146 = load float, ptr %145, align 8, !tbaa !60
  %147 = fpext float %146 to double
  %148 = fmul double %144, %147
  %149 = fptrunc double %148 to float
  %150 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  store float %149, ptr %150, align 8, !tbaa !60
  br label %151

151:                                              ; preds = %140, %137
  %152 = and i32 %2, 32
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %171, label %154

154:                                              ; preds = %151
  %155 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %156 = load i32, ptr %155, align 4, !tbaa !65
  %157 = icmp eq i32 %156, 12
  br i1 %157, label %158, label %171

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %160 = load float, ptr %159, align 8, !tbaa !62
  %161 = fpext float %160 to double
  %162 = fmul double %161, 0x3EF0001000100010
  %163 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %164 = load float, ptr %163, align 8, !tbaa !62
  %165 = fpext float %164 to double
  %166 = fmul double %162, %165
  %167 = fptrunc double %166 to float
  br label %168

168:                                              ; preds = %84, %158
  %169 = phi float [ %167, %158 ], [ %98, %84 ]
  %170 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  store float %169, ptr %170, align 8, !tbaa !62
  br label %171

171:                                              ; preds = %168, %151, %154, %17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CompositeScreen(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #11 {
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %6 = load float, ptr %5, align 4, !tbaa !47
  %7 = fpext float %6 to double
  %8 = tail call double @llvm.fmuladd.f64(double %7, double 0xBEF0001000100010, double 1.000000e+00)
  %9 = fptrunc double %8 to float
  %10 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %11 = load float, ptr %10, align 4, !tbaa !47
  %12 = fpext float %11 to double
  %13 = tail call double @llvm.fmuladd.f64(double %12, double 0xBEF0001000100010, double 1.000000e+00)
  %14 = fptrunc double %13 to float
  %15 = and i32 %2, 256
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %78, label %17

17:                                               ; preds = %4
  %18 = fadd float %9, %14
  %19 = fneg float %9
  %20 = tail call float @llvm.fmuladd.f32(float %19, float %14, float %18)
  %21 = tail call fastcc float @RoundToUnity(float noundef %20) #18
  %22 = fpext float %21 to double
  %23 = fsub double 1.000000e+00, %22
  %24 = fmul float %9, 0x3EF0001000000000
  %25 = fmul float %14, 0x3EF0001000000000
  %26 = tail call double @llvm.fabs.f64(double %22)
  %27 = fcmp olt double %26, 1.000000e-15
  %28 = fdiv double 6.553500e+04, %22
  %29 = select i1 %27, double 0x440C6BD8BA3ED9CB, double %28
  %30 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %31 = load float, ptr %30, align 8, !tbaa !58
  %32 = fmul float %24, %31
  %33 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %34 = load float, ptr %33, align 8, !tbaa !58
  %35 = fmul float %25, %34
  %36 = tail call fastcc float @Screen(float noundef %32, float noundef %35) #18
  %37 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  %38 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %39 = load float, ptr %38, align 4, !tbaa !59
  %40 = fmul float %24, %39
  %41 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %42 = load float, ptr %41, align 4, !tbaa !59
  %43 = fmul float %25, %42
  %44 = tail call fastcc float @Screen(float noundef %40, float noundef %43) #18
  %45 = insertelement <2 x float> poison, float %36, i64 0
  %46 = insertelement <2 x float> %45, float %44, i64 1
  %47 = fpext <2 x float> %46 to <2 x double>
  %48 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %49 = load float, ptr %48, align 8, !tbaa !60
  %50 = fmul float %24, %49
  %51 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %52 = load float, ptr %51, align 8, !tbaa !60
  %53 = fmul float %25, %52
  %54 = tail call fastcc float @Screen(float noundef %50, float noundef %53) #18
  %55 = fpext float %54 to double
  %56 = insertelement <4 x double> poison, double %29, i64 0
  %57 = insertelement <4 x double> %56, double %23, i64 1
  %58 = shufflevector <4 x double> %57, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %59 = shufflevector <2 x double> %47, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %60 = insertelement <4 x double> %59, double 6.553500e+04, i64 3
  %61 = insertelement <4 x double> %60, double %55, i64 2
  %62 = fmul <4 x double> %58, %61
  %63 = fptrunc <4 x double> %62 to <4 x float>
  store <4 x float> %63, ptr %37, align 8, !tbaa !30
  %64 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %65 = load i32, ptr %64, align 4, !tbaa !65
  %66 = icmp eq i32 %65, 12
  br i1 %66, label %67, label %162

67:                                               ; preds = %17
  %68 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %69 = load float, ptr %68, align 8, !tbaa !62
  %70 = fmul float %24, %69
  %71 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %72 = load float, ptr %71, align 8, !tbaa !62
  %73 = fmul float %25, %72
  %74 = tail call fastcc float @Screen(float noundef %70, float noundef %73) #18
  %75 = fpext float %74 to double
  %76 = fmul double %29, %75
  %77 = fptrunc double %76 to float
  br label %159

78:                                               ; preds = %4
  %79 = and i32 %2, 8
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %78
  %82 = tail call fastcc float @Screen(float noundef %9, float noundef %14) #18
  %83 = fpext float %82 to double
  %84 = fsub double 1.000000e+00, %83
  %85 = fmul double %84, 6.553500e+04
  %86 = fptrunc double %85 to float
  %87 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  store float %86, ptr %87, align 4, !tbaa !47
  br label %88

88:                                               ; preds = %81, %78
  %89 = and i32 %2, 1
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %105, label %91

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %93 = load float, ptr %92, align 8, !tbaa !58
  %94 = fpext float %93 to double
  %95 = fmul double %94, 0x3EF0001000100010
  %96 = fptrunc double %95 to float
  %97 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %98 = load float, ptr %97, align 8, !tbaa !58
  %99 = fpext float %98 to double
  %100 = fmul double %99, 0x3EF0001000100010
  %101 = fptrunc double %100 to float
  %102 = tail call fastcc float @Screen(float noundef %96, float noundef %101) #18
  %103 = fmul float %102, 6.553500e+04
  %104 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  store float %103, ptr %104, align 8, !tbaa !58
  br label %105

105:                                              ; preds = %91, %88
  %106 = and i32 %2, 2
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %122, label %108

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %110 = load float, ptr %109, align 4, !tbaa !59
  %111 = fpext float %110 to double
  %112 = fmul double %111, 0x3EF0001000100010
  %113 = fptrunc double %112 to float
  %114 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %115 = load float, ptr %114, align 4, !tbaa !59
  %116 = fpext float %115 to double
  %117 = fmul double %116, 0x3EF0001000100010
  %118 = fptrunc double %117 to float
  %119 = tail call fastcc float @Screen(float noundef %113, float noundef %118) #18
  %120 = fmul float %119, 6.553500e+04
  %121 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 6
  store float %120, ptr %121, align 4, !tbaa !59
  br label %122

122:                                              ; preds = %108, %105
  %123 = and i32 %2, 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %139, label %125

125:                                              ; preds = %122
  %126 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %127 = load float, ptr %126, align 8, !tbaa !60
  %128 = fpext float %127 to double
  %129 = fmul double %128, 0x3EF0001000100010
  %130 = fptrunc double %129 to float
  %131 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %132 = load float, ptr %131, align 8, !tbaa !60
  %133 = fpext float %132 to double
  %134 = fmul double %133, 0x3EF0001000100010
  %135 = fptrunc double %134 to float
  %136 = tail call fastcc float @Screen(float noundef %130, float noundef %135) #18
  %137 = fmul float %136, 6.553500e+04
  %138 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  store float %137, ptr %138, align 8, !tbaa !60
  br label %139

139:                                              ; preds = %125, %122
  %140 = and i32 %2, 32
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %162, label %142

142:                                              ; preds = %139
  %143 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %144 = load i32, ptr %143, align 4, !tbaa !65
  %145 = icmp eq i32 %144, 12
  br i1 %145, label %146, label %162

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %148 = load float, ptr %147, align 8, !tbaa !62
  %149 = fpext float %148 to double
  %150 = fmul double %149, 0x3EF0001000100010
  %151 = fptrunc double %150 to float
  %152 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %153 = load float, ptr %152, align 8, !tbaa !62
  %154 = fpext float %153 to double
  %155 = fmul double %154, 0x3EF0001000100010
  %156 = fptrunc double %155 to float
  %157 = tail call fastcc float @Screen(float noundef %151, float noundef %156) #18
  %158 = fmul float %157, 6.553500e+04
  br label %159

159:                                              ; preds = %67, %146
  %160 = phi float [ %158, %146 ], [ %77, %67 ]
  %161 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  store float %160, ptr %161, align 8, !tbaa !62
  br label %162

162:                                              ; preds = %159, %139, %142, %17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CompositeDivide(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #11 {
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %6 = load float, ptr %5, align 4, !tbaa !47
  %7 = fpext float %6 to double
  %8 = tail call double @llvm.fmuladd.f64(double %7, double 0xBEF0001000100010, double 1.000000e+00)
  %9 = fptrunc double %8 to float
  %10 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %11 = load float, ptr %10, align 4, !tbaa !47
  %12 = fpext float %11 to double
  %13 = tail call double @llvm.fmuladd.f64(double %12, double 0xBEF0001000100010, double 1.000000e+00)
  %14 = fptrunc double %13 to float
  %15 = and i32 %2, 256
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %99, label %17

17:                                               ; preds = %4
  %18 = fadd float %9, %14
  %19 = fneg float %9
  %20 = tail call float @llvm.fmuladd.f32(float %19, float %14, float %18)
  %21 = tail call fastcc float @RoundToUnity(float noundef %20) #18
  %22 = fpext float %21 to double
  %23 = fsub double 1.000000e+00, %22
  %24 = fmul double %23, 6.553500e+04
  %25 = fptrunc double %24 to float
  %26 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  store float %25, ptr %26, align 4, !tbaa !47
  %27 = tail call double @llvm.fabs.f64(double %22)
  %28 = fcmp olt double %27, 1.000000e-15
  %29 = fdiv double 6.553500e+04, %22
  %30 = select i1 %28, double 0x440C6BD8BA3ED9CB, double %29
  %31 = fptrunc double %30 to float
  %32 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %33 = load float, ptr %32, align 8, !tbaa !58
  %34 = fpext float %33 to double
  %35 = fmul double %34, 0x3EF0001000100010
  %36 = fpext float %9 to double
  %37 = fmul double %35, %36
  %38 = fptrunc double %37 to float
  %39 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %40 = load float, ptr %39, align 8, !tbaa !58
  %41 = fpext float %40 to double
  %42 = fmul double %41, 0x3EF0001000100010
  %43 = fpext float %14 to double
  %44 = fmul double %42, %43
  %45 = fptrunc double %44 to float
  %46 = tail call fastcc float @Divide(float noundef %38, float noundef %9, float noundef %45, float noundef %14) #18
  %47 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  %48 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %49 = load float, ptr %48, align 4, !tbaa !59
  %50 = fpext float %49 to double
  %51 = fmul double %50, 0x3EF0001000100010
  %52 = fmul double %51, %36
  %53 = fptrunc double %52 to float
  %54 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %55 = load float, ptr %54, align 4, !tbaa !59
  %56 = fpext float %55 to double
  %57 = fmul double %56, 0x3EF0001000100010
  %58 = fmul double %57, %43
  %59 = fptrunc double %58 to float
  %60 = tail call fastcc float @Divide(float noundef %53, float noundef %9, float noundef %59, float noundef %14) #18
  %61 = insertelement <2 x float> poison, float %46, i64 0
  %62 = insertelement <2 x float> %61, float %60, i64 1
  %63 = insertelement <2 x float> poison, float %31, i64 0
  %64 = shufflevector <2 x float> %63, <2 x float> poison, <2 x i32> zeroinitializer
  %65 = fmul <2 x float> %62, %64
  store <2 x float> %65, ptr %47, align 8, !tbaa !30
  %66 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %67 = load float, ptr %66, align 8, !tbaa !60
  %68 = fpext float %67 to double
  %69 = fmul double %68, 0x3EF0001000100010
  %70 = fmul double %69, %36
  %71 = fptrunc double %70 to float
  %72 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %73 = load float, ptr %72, align 8, !tbaa !60
  %74 = fpext float %73 to double
  %75 = fmul double %74, 0x3EF0001000100010
  %76 = fmul double %75, %43
  %77 = fptrunc double %76 to float
  %78 = tail call fastcc float @Divide(float noundef %71, float noundef %9, float noundef %77, float noundef %14) #18
  %79 = fmul float %78, %31
  %80 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  store float %79, ptr %80, align 8, !tbaa !60
  %81 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %82 = load i32, ptr %81, align 4, !tbaa !65
  %83 = icmp eq i32 %82, 12
  br i1 %83, label %84, label %183

84:                                               ; preds = %17
  %85 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %86 = load float, ptr %85, align 8, !tbaa !62
  %87 = fpext float %86 to double
  %88 = fmul double %87, 0x3EF0001000100010
  %89 = fmul double %88, %36
  %90 = fptrunc double %89 to float
  %91 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %92 = load float, ptr %91, align 8, !tbaa !62
  %93 = fpext float %92 to double
  %94 = fmul double %93, 0x3EF0001000100010
  %95 = fmul double %94, %43
  %96 = fptrunc double %95 to float
  %97 = tail call fastcc float @Divide(float noundef %90, float noundef %9, float noundef %96, float noundef %14) #18
  %98 = fmul float %97, %31
  br label %180

99:                                               ; preds = %4
  %100 = and i32 %2, 8
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %109, label %102

102:                                              ; preds = %99
  %103 = tail call fastcc float @Divide(float noundef %9, float noundef 1.000000e+00, float noundef %14, float noundef 1.000000e+00) #18
  %104 = fpext float %103 to double
  %105 = fsub double 1.000000e+00, %104
  %106 = fmul double %105, 6.553500e+04
  %107 = fptrunc double %106 to float
  %108 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  store float %107, ptr %108, align 4, !tbaa !47
  br label %109

109:                                              ; preds = %102, %99
  %110 = and i32 %2, 1
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %126, label %112

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %114 = load float, ptr %113, align 8, !tbaa !58
  %115 = fpext float %114 to double
  %116 = fmul double %115, 0x3EF0001000100010
  %117 = fptrunc double %116 to float
  %118 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %119 = load float, ptr %118, align 8, !tbaa !58
  %120 = fpext float %119 to double
  %121 = fmul double %120, 0x3EF0001000100010
  %122 = fptrunc double %121 to float
  %123 = tail call fastcc float @Divide(float noundef %117, float noundef 1.000000e+00, float noundef %122, float noundef 1.000000e+00) #18
  %124 = fmul float %123, 6.553500e+04
  %125 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  store float %124, ptr %125, align 8, !tbaa !58
  br label %126

126:                                              ; preds = %112, %109
  %127 = and i32 %2, 2
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %143, label %129

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %131 = load float, ptr %130, align 4, !tbaa !59
  %132 = fpext float %131 to double
  %133 = fmul double %132, 0x3EF0001000100010
  %134 = fptrunc double %133 to float
  %135 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %136 = load float, ptr %135, align 4, !tbaa !59
  %137 = fpext float %136 to double
  %138 = fmul double %137, 0x3EF0001000100010
  %139 = fptrunc double %138 to float
  %140 = tail call fastcc float @Divide(float noundef %134, float noundef 1.000000e+00, float noundef %139, float noundef 1.000000e+00) #18
  %141 = fmul float %140, 6.553500e+04
  %142 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 6
  store float %141, ptr %142, align 4, !tbaa !59
  br label %143

143:                                              ; preds = %129, %126
  %144 = and i32 %2, 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %160, label %146

146:                                              ; preds = %143
  %147 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %148 = load float, ptr %147, align 8, !tbaa !60
  %149 = fpext float %148 to double
  %150 = fmul double %149, 0x3EF0001000100010
  %151 = fptrunc double %150 to float
  %152 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %153 = load float, ptr %152, align 8, !tbaa !60
  %154 = fpext float %153 to double
  %155 = fmul double %154, 0x3EF0001000100010
  %156 = fptrunc double %155 to float
  %157 = tail call fastcc float @Divide(float noundef %151, float noundef 1.000000e+00, float noundef %156, float noundef 1.000000e+00) #18
  %158 = fmul float %157, 6.553500e+04
  %159 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  store float %158, ptr %159, align 8, !tbaa !60
  br label %160

160:                                              ; preds = %146, %143
  %161 = and i32 %2, 32
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %183, label %163

163:                                              ; preds = %160
  %164 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %165 = load i32, ptr %164, align 4, !tbaa !65
  %166 = icmp eq i32 %165, 12
  br i1 %166, label %167, label %183

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %169 = load float, ptr %168, align 8, !tbaa !62
  %170 = fpext float %169 to double
  %171 = fmul double %170, 0x3EF0001000100010
  %172 = fptrunc double %171 to float
  %173 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %174 = load float, ptr %173, align 8, !tbaa !62
  %175 = fpext float %174 to double
  %176 = fmul double %175, 0x3EF0001000100010
  %177 = fptrunc double %176 to float
  %178 = tail call fastcc float @Divide(float noundef %172, float noundef 1.000000e+00, float noundef %177, float noundef 1.000000e+00) #18
  %179 = fmul float %178, 6.553500e+04
  br label %180

180:                                              ; preds = %84, %167
  %181 = phi float [ %179, %167 ], [ %98, %84 ]
  %182 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  store float %181, ptr %182, align 8, !tbaa !62
  br label %183

183:                                              ; preds = %180, %160, %163, %17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CompositeDarken(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #11 {
  %5 = and i32 %2, 256
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %63, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %9 = load float, ptr %8, align 4, !tbaa !47
  %10 = fpext float %9 to double
  %11 = fmul double %10, 0x3EF0001000100010
  %12 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %13 = load float, ptr %12, align 4, !tbaa !47
  %14 = fpext float %13 to double
  %15 = fmul double %11, %14
  %16 = fptrunc double %15 to float
  %17 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  store float %16, ptr %17, align 4, !tbaa !47
  %18 = fpext float %16 to double
  %19 = tail call double @llvm.fmuladd.f64(double %18, double 0xBEF0001000100010, double 1.000000e+00)
  %20 = fcmp olt double %19, 0.000000e+00
  %21 = select i1 %20, double 0.000000e+00, double %19
  %22 = tail call fastcc double @PerceptibleReciprocal(double noundef %21) #18
  %23 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %24 = load float, ptr %23, align 8, !tbaa !58
  %25 = load float, ptr %8, align 4, !tbaa !47
  %26 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %27 = load float, ptr %26, align 8, !tbaa !58
  %28 = load float, ptr %12, align 4, !tbaa !47
  %29 = tail call fastcc float @Darken(float noundef %24, float noundef %25, float noundef %27, float noundef %28) #18
  %30 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  %31 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %32 = load float, ptr %31, align 4, !tbaa !59
  %33 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %34 = load float, ptr %33, align 4, !tbaa !59
  %35 = tail call fastcc float @Darken(float noundef %32, float noundef %25, float noundef %34, float noundef %28) #18
  %36 = insertelement <2 x float> poison, float %29, i64 0
  %37 = insertelement <2 x float> %36, float %35, i64 1
  %38 = fpext <2 x float> %37 to <2 x double>
  %39 = insertelement <2 x double> poison, double %22, i64 0
  %40 = shufflevector <2 x double> %39, <2 x double> poison, <2 x i32> zeroinitializer
  %41 = fmul <2 x double> %40, %38
  %42 = fptrunc <2 x double> %41 to <2 x float>
  store <2 x float> %42, ptr %30, align 8, !tbaa !30
  %43 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %44 = load float, ptr %43, align 8, !tbaa !60
  %45 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %46 = load float, ptr %45, align 8, !tbaa !60
  %47 = tail call fastcc float @Darken(float noundef %44, float noundef %25, float noundef %46, float noundef %28) #18
  %48 = fpext float %47 to double
  %49 = fmul double %22, %48
  %50 = fptrunc double %49 to float
  %51 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  store float %50, ptr %51, align 8, !tbaa !60
  %52 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %53 = load i32, ptr %52, align 4, !tbaa !65
  %54 = icmp eq i32 %53, 12
  br i1 %54, label %55, label %134

55:                                               ; preds = %7
  %56 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %57 = load float, ptr %56, align 8, !tbaa !62
  %58 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %59 = load float, ptr %58, align 8, !tbaa !62
  %60 = tail call fastcc float @Darken(float noundef %57, float noundef %25, float noundef %59, float noundef %28) #18
  %61 = fpext float %60 to double
  %62 = fmul double %22, %61
  br label %130

63:                                               ; preds = %4
  %64 = and i32 %2, 8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %76, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %68 = load float, ptr %67, align 4, !tbaa !47
  %69 = fpext float %68 to double
  %70 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %71 = load float, ptr %70, align 4, !tbaa !47
  %72 = fpext float %71 to double
  %73 = tail call fastcc double @MagickMax(double noundef %69, double noundef %72) #18
  %74 = fptrunc double %73 to float
  %75 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  store float %74, ptr %75, align 4, !tbaa !47
  br label %76

76:                                               ; preds = %66, %63
  %77 = and i32 %2, 1
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %89, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %81 = load float, ptr %80, align 8, !tbaa !58
  %82 = fpext float %81 to double
  %83 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %84 = load float, ptr %83, align 8, !tbaa !58
  %85 = fpext float %84 to double
  %86 = tail call fastcc double @MagickMin(double noundef %82, double noundef %85) #18
  %87 = fptrunc double %86 to float
  %88 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  store float %87, ptr %88, align 8, !tbaa !58
  br label %89

89:                                               ; preds = %79, %76
  %90 = and i32 %2, 2
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %102, label %92

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %94 = load float, ptr %93, align 4, !tbaa !59
  %95 = fpext float %94 to double
  %96 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %97 = load float, ptr %96, align 4, !tbaa !59
  %98 = fpext float %97 to double
  %99 = tail call fastcc double @MagickMin(double noundef %95, double noundef %98) #18
  %100 = fptrunc double %99 to float
  %101 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 6
  store float %100, ptr %101, align 4, !tbaa !59
  br label %102

102:                                              ; preds = %92, %89
  %103 = and i32 %2, 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %115, label %105

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %107 = load float, ptr %106, align 8, !tbaa !60
  %108 = fpext float %107 to double
  %109 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %110 = load float, ptr %109, align 8, !tbaa !60
  %111 = fpext float %110 to double
  %112 = tail call fastcc double @MagickMin(double noundef %108, double noundef %111) #18
  %113 = fptrunc double %112 to float
  %114 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  store float %113, ptr %114, align 8, !tbaa !60
  br label %115

115:                                              ; preds = %105, %102
  %116 = and i32 %2, 32
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %134, label %118

118:                                              ; preds = %115
  %119 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %120 = load i32, ptr %119, align 4, !tbaa !65
  %121 = icmp eq i32 %120, 12
  br i1 %121, label %122, label %134

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %124 = load float, ptr %123, align 8, !tbaa !62
  %125 = fpext float %124 to double
  %126 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %127 = load float, ptr %126, align 8, !tbaa !62
  %128 = fpext float %127 to double
  %129 = tail call fastcc double @MagickMin(double noundef %125, double noundef %128) #18
  br label %130

130:                                              ; preds = %55, %122
  %131 = phi double [ %129, %122 ], [ %62, %55 ]
  %132 = fptrunc double %131 to float
  %133 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  store float %132, ptr %133, align 8, !tbaa !62
  br label %134

134:                                              ; preds = %130, %115, %118, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CompositeLighten(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #11 {
  %5 = and i32 %2, 256
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %61, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %9 = load float, ptr %8, align 4, !tbaa !47
  %10 = fpext float %9 to double
  %11 = fmul double %10, 0x3EF0001000100010
  %12 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %13 = load float, ptr %12, align 4, !tbaa !47
  %14 = fpext float %13 to double
  %15 = fmul double %11, %14
  %16 = fptrunc double %15 to float
  %17 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  store float %16, ptr %17, align 4, !tbaa !47
  %18 = fpext float %16 to double
  %19 = tail call double @llvm.fmuladd.f64(double %18, double 0xBEF0001000100010, double 1.000000e+00)
  %20 = tail call fastcc double @PerceptibleReciprocal(double noundef %19) #18
  %21 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %22 = load float, ptr %21, align 8, !tbaa !58
  %23 = load float, ptr %8, align 4, !tbaa !47
  %24 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %25 = load float, ptr %24, align 8, !tbaa !58
  %26 = load float, ptr %12, align 4, !tbaa !47
  %27 = tail call fastcc float @Lighten(float noundef %22, float noundef %23, float noundef %25, float noundef %26) #18
  %28 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  %29 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %30 = load float, ptr %29, align 4, !tbaa !59
  %31 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %32 = load float, ptr %31, align 4, !tbaa !59
  %33 = tail call fastcc float @Lighten(float noundef %30, float noundef %23, float noundef %32, float noundef %26) #18
  %34 = insertelement <2 x float> poison, float %27, i64 0
  %35 = insertelement <2 x float> %34, float %33, i64 1
  %36 = fpext <2 x float> %35 to <2 x double>
  %37 = insertelement <2 x double> poison, double %20, i64 0
  %38 = shufflevector <2 x double> %37, <2 x double> poison, <2 x i32> zeroinitializer
  %39 = fmul <2 x double> %38, %36
  %40 = fptrunc <2 x double> %39 to <2 x float>
  store <2 x float> %40, ptr %28, align 8, !tbaa !30
  %41 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %42 = load float, ptr %41, align 8, !tbaa !60
  %43 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %44 = load float, ptr %43, align 8, !tbaa !60
  %45 = tail call fastcc float @Lighten(float noundef %42, float noundef %23, float noundef %44, float noundef %26) #18
  %46 = fpext float %45 to double
  %47 = fmul double %20, %46
  %48 = fptrunc double %47 to float
  %49 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  store float %48, ptr %49, align 8, !tbaa !60
  %50 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %51 = load i32, ptr %50, align 4, !tbaa !65
  %52 = icmp eq i32 %51, 12
  br i1 %52, label %53, label %132

53:                                               ; preds = %7
  %54 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %55 = load float, ptr %54, align 8, !tbaa !62
  %56 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %57 = load float, ptr %56, align 8, !tbaa !62
  %58 = tail call fastcc float @Lighten(float noundef %55, float noundef %23, float noundef %57, float noundef %26) #18
  %59 = fpext float %58 to double
  %60 = fmul double %20, %59
  br label %128

61:                                               ; preds = %4
  %62 = and i32 %2, 8
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %74, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %66 = load float, ptr %65, align 4, !tbaa !47
  %67 = fpext float %66 to double
  %68 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %69 = load float, ptr %68, align 4, !tbaa !47
  %70 = fpext float %69 to double
  %71 = tail call fastcc double @MagickMin(double noundef %67, double noundef %70) #18
  %72 = fptrunc double %71 to float
  %73 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  store float %72, ptr %73, align 4, !tbaa !47
  br label %74

74:                                               ; preds = %64, %61
  %75 = and i32 %2, 1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %87, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %79 = load float, ptr %78, align 8, !tbaa !58
  %80 = fpext float %79 to double
  %81 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %82 = load float, ptr %81, align 8, !tbaa !58
  %83 = fpext float %82 to double
  %84 = tail call fastcc double @MagickMax(double noundef %80, double noundef %83) #18
  %85 = fptrunc double %84 to float
  %86 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  store float %85, ptr %86, align 8, !tbaa !58
  br label %87

87:                                               ; preds = %77, %74
  %88 = and i32 %2, 2
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %100, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %92 = load float, ptr %91, align 4, !tbaa !59
  %93 = fpext float %92 to double
  %94 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %95 = load float, ptr %94, align 4, !tbaa !59
  %96 = fpext float %95 to double
  %97 = tail call fastcc double @MagickMax(double noundef %93, double noundef %96) #18
  %98 = fptrunc double %97 to float
  %99 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 6
  store float %98, ptr %99, align 4, !tbaa !59
  br label %100

100:                                              ; preds = %90, %87
  %101 = and i32 %2, 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %113, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %105 = load float, ptr %104, align 8, !tbaa !60
  %106 = fpext float %105 to double
  %107 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %108 = load float, ptr %107, align 8, !tbaa !60
  %109 = fpext float %108 to double
  %110 = tail call fastcc double @MagickMax(double noundef %106, double noundef %109) #18
  %111 = fptrunc double %110 to float
  %112 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  store float %111, ptr %112, align 8, !tbaa !60
  br label %113

113:                                              ; preds = %103, %100
  %114 = and i32 %2, 32
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %132, label %116

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %118 = load i32, ptr %117, align 4, !tbaa !65
  %119 = icmp eq i32 %118, 12
  br i1 %119, label %120, label %132

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %122 = load float, ptr %121, align 8, !tbaa !62
  %123 = fpext float %122 to double
  %124 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %125 = load float, ptr %124, align 8, !tbaa !62
  %126 = fpext float %125 to double
  %127 = tail call fastcc double @MagickMax(double noundef %123, double noundef %126) #18
  br label %128

128:                                              ; preds = %53, %120
  %129 = phi double [ %127, %120 ], [ %60, %53 ]
  %130 = fptrunc double %129 to float
  %131 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  store float %130, ptr %131, align 8, !tbaa !62
  br label %132

132:                                              ; preds = %128, %113, %116, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @CompositeDarkenIntensity(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #12 {
  %5 = and i32 %2, 256
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %27, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %9 = load float, ptr %8, align 4, !tbaa !47
  %10 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %11 = load float, ptr %10, align 4, !tbaa !47
  %12 = tail call fastcc float @MagickPixelIntensity(ptr noundef %0) #18
  %13 = tail call fastcc float @MagickPixelIntensity(ptr noundef %1) #18
  %14 = insertelement <2 x float> poison, float %9, i64 0
  %15 = insertelement <2 x float> %14, float %11, i64 1
  %16 = fpext <2 x float> %15 to <2 x double>
  %17 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %16, <2 x double> <double 0xBEF0001000100010, double 0xBEF0001000100010>, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %18 = fptrunc <2 x double> %17 to <2 x float>
  %19 = insertelement <2 x float> poison, float %12, i64 0
  %20 = insertelement <2 x float> %19, float %13, i64 1
  %21 = fmul <2 x float> %20, %18
  %22 = extractelement <2 x float> %21, i64 0
  %23 = extractelement <2 x float> %21, i64 1
  %24 = fcmp olt float %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false), !tbaa.struct !39
  br label %74

26:                                               ; preds = %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false), !tbaa.struct !39
  br label %74

27:                                               ; preds = %4
  %28 = tail call fastcc float @MagickPixelIntensity(ptr noundef %0) #18
  %29 = tail call fastcc float @MagickPixelIntensity(ptr noundef %1) #18
  %30 = fcmp olt float %28, %29
  %31 = and i32 %2, 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %27
  %34 = select i1 %30, ptr %0, ptr %1
  %35 = getelementptr inbounds %struct._MagickPixelPacket, ptr %34, i64 0, i32 8
  %36 = load float, ptr %35, align 4, !tbaa !47
  %37 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  store float %36, ptr %37, align 4, !tbaa !47
  br label %38

38:                                               ; preds = %33, %27
  %39 = and i32 %2, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %38
  %42 = select i1 %30, ptr %0, ptr %1
  %43 = getelementptr inbounds %struct._MagickPixelPacket, ptr %42, i64 0, i32 5
  %44 = load float, ptr %43, align 8, !tbaa !58
  %45 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  store float %44, ptr %45, align 8, !tbaa !58
  br label %46

46:                                               ; preds = %41, %38
  %47 = and i32 %2, 2
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %46
  %50 = select i1 %30, ptr %0, ptr %1
  %51 = getelementptr inbounds %struct._MagickPixelPacket, ptr %50, i64 0, i32 6
  %52 = load float, ptr %51, align 4, !tbaa !59
  %53 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 6
  store float %52, ptr %53, align 4, !tbaa !59
  br label %54

54:                                               ; preds = %49, %46
  %55 = and i32 %2, 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %54
  %58 = select i1 %30, ptr %0, ptr %1
  %59 = getelementptr inbounds %struct._MagickPixelPacket, ptr %58, i64 0, i32 7
  %60 = load float, ptr %59, align 8, !tbaa !60
  %61 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  store float %60, ptr %61, align 8, !tbaa !60
  br label %62

62:                                               ; preds = %57, %54
  %63 = and i32 %2, 32
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %67 = load i32, ptr %66, align 4, !tbaa !65
  %68 = icmp eq i32 %67, 12
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = select i1 %30, ptr %0, ptr %1
  %71 = getelementptr inbounds %struct._MagickPixelPacket, ptr %70, i64 0, i32 9
  %72 = load float, ptr %71, align 8, !tbaa !62
  %73 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  store float %72, ptr %73, align 8, !tbaa !62
  br label %74

74:                                               ; preds = %62, %65, %69, %25, %26
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @CompositeLightenIntensity(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #12 {
  %5 = and i32 %2, 256
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %27, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %9 = load float, ptr %8, align 4, !tbaa !47
  %10 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %11 = load float, ptr %10, align 4, !tbaa !47
  %12 = tail call fastcc float @MagickPixelIntensity(ptr noundef %0) #18
  %13 = tail call fastcc float @MagickPixelIntensity(ptr noundef %1) #18
  %14 = insertelement <2 x float> poison, float %9, i64 0
  %15 = insertelement <2 x float> %14, float %11, i64 1
  %16 = fpext <2 x float> %15 to <2 x double>
  %17 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %16, <2 x double> <double 0xBEF0001000100010, double 0xBEF0001000100010>, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %18 = fptrunc <2 x double> %17 to <2 x float>
  %19 = insertelement <2 x float> poison, float %12, i64 0
  %20 = insertelement <2 x float> %19, float %13, i64 1
  %21 = fmul <2 x float> %20, %18
  %22 = extractelement <2 x float> %21, i64 0
  %23 = extractelement <2 x float> %21, i64 1
  %24 = fcmp ogt float %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false), !tbaa.struct !39
  br label %74

26:                                               ; preds = %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false), !tbaa.struct !39
  br label %74

27:                                               ; preds = %4
  %28 = tail call fastcc float @MagickPixelIntensity(ptr noundef %0) #18
  %29 = tail call fastcc float @MagickPixelIntensity(ptr noundef %1) #18
  %30 = fcmp ogt float %28, %29
  %31 = and i32 %2, 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %27
  %34 = select i1 %30, ptr %0, ptr %1
  %35 = getelementptr inbounds %struct._MagickPixelPacket, ptr %34, i64 0, i32 8
  %36 = load float, ptr %35, align 4, !tbaa !47
  %37 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  store float %36, ptr %37, align 4, !tbaa !47
  br label %38

38:                                               ; preds = %33, %27
  %39 = and i32 %2, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %38
  %42 = select i1 %30, ptr %0, ptr %1
  %43 = getelementptr inbounds %struct._MagickPixelPacket, ptr %42, i64 0, i32 5
  %44 = load float, ptr %43, align 8, !tbaa !58
  %45 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  store float %44, ptr %45, align 8, !tbaa !58
  br label %46

46:                                               ; preds = %41, %38
  %47 = and i32 %2, 2
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %46
  %50 = select i1 %30, ptr %0, ptr %1
  %51 = getelementptr inbounds %struct._MagickPixelPacket, ptr %50, i64 0, i32 6
  %52 = load float, ptr %51, align 4, !tbaa !59
  %53 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 6
  store float %52, ptr %53, align 4, !tbaa !59
  br label %54

54:                                               ; preds = %49, %46
  %55 = and i32 %2, 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %54
  %58 = select i1 %30, ptr %0, ptr %1
  %59 = getelementptr inbounds %struct._MagickPixelPacket, ptr %58, i64 0, i32 7
  %60 = load float, ptr %59, align 8, !tbaa !60
  %61 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  store float %60, ptr %61, align 8, !tbaa !60
  br label %62

62:                                               ; preds = %57, %54
  %63 = and i32 %2, 32
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %67 = load i32, ptr %66, align 4, !tbaa !65
  %68 = icmp eq i32 %67, 12
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = select i1 %30, ptr %0, ptr %1
  %71 = getelementptr inbounds %struct._MagickPixelPacket, ptr %70, i64 0, i32 9
  %72 = load float, ptr %71, align 8, !tbaa !62
  %73 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  store float %72, ptr %73, align 8, !tbaa !62
  br label %74

74:                                               ; preds = %62, %65, %69, %25, %26
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CompositeMathematics(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #11 {
  %6 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %7 = load float, ptr %6, align 4, !tbaa !47
  %8 = fpext float %7 to double
  %9 = tail call double @llvm.fmuladd.f64(double %8, double 0xBEF0001000100010, double 1.000000e+00)
  %10 = fptrunc double %9 to float
  %11 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %12 = load float, ptr %11, align 4, !tbaa !47
  %13 = fpext float %12 to double
  %14 = tail call double @llvm.fmuladd.f64(double %13, double 0xBEF0001000100010, double 1.000000e+00)
  %15 = fptrunc double %14 to float
  %16 = and i32 %2, 256
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %105, label %18

18:                                               ; preds = %5
  %19 = fadd float %10, %15
  %20 = fneg float %10
  %21 = tail call float @llvm.fmuladd.f32(float %20, float %15, float %19)
  %22 = tail call fastcc float @RoundToUnity(float noundef %21) #18
  %23 = fpext float %22 to double
  %24 = fsub double 1.000000e+00, %23
  %25 = fmul double %24, 6.553500e+04
  %26 = fptrunc double %25 to float
  %27 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 8
  store float %26, ptr %27, align 4, !tbaa !47
  %28 = tail call double @llvm.fabs.f64(double %23)
  %29 = fcmp olt double %28, 1.000000e-15
  %30 = fdiv double 6.553500e+04, %23
  %31 = select i1 %29, double 0x440C6BD8BA3ED9CB, double %30
  %32 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %33 = load float, ptr %32, align 8, !tbaa !58
  %34 = fpext float %33 to double
  %35 = fmul double %34, 0x3EF0001000100010
  %36 = fpext float %10 to double
  %37 = fmul double %35, %36
  %38 = fptrunc double %37 to float
  %39 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %40 = load float, ptr %39, align 8, !tbaa !58
  %41 = fpext float %40 to double
  %42 = fmul double %41, 0x3EF0001000100010
  %43 = fpext float %15 to double
  %44 = fmul double %42, %43
  %45 = fptrunc double %44 to float
  %46 = tail call fastcc float @Mathematics(float noundef %38, float noundef %10, float noundef %45, float noundef %15, ptr noundef %3) #18
  %47 = fpext float %46 to double
  %48 = fmul double %31, %47
  %49 = fptrunc double %48 to float
  %50 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 5
  store float %49, ptr %50, align 8, !tbaa !58
  %51 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %52 = load float, ptr %51, align 4, !tbaa !59
  %53 = fpext float %52 to double
  %54 = fmul double %53, 0x3EF0001000100010
  %55 = fmul double %54, %36
  %56 = fptrunc double %55 to float
  %57 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %58 = load float, ptr %57, align 4, !tbaa !59
  %59 = fpext float %58 to double
  %60 = fmul double %59, 0x3EF0001000100010
  %61 = fmul double %60, %43
  %62 = fptrunc double %61 to float
  %63 = tail call fastcc float @Mathematics(float noundef %56, float noundef %10, float noundef %62, float noundef %15, ptr noundef %3) #18
  %64 = fpext float %63 to double
  %65 = fmul double %31, %64
  %66 = fptrunc double %65 to float
  %67 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 6
  store float %66, ptr %67, align 4, !tbaa !59
  %68 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %69 = load float, ptr %68, align 8, !tbaa !60
  %70 = fpext float %69 to double
  %71 = fmul double %70, 0x3EF0001000100010
  %72 = fmul double %71, %36
  %73 = fptrunc double %72 to float
  %74 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %75 = load float, ptr %74, align 8, !tbaa !60
  %76 = fpext float %75 to double
  %77 = fmul double %76, 0x3EF0001000100010
  %78 = fmul double %77, %43
  %79 = fptrunc double %78 to float
  %80 = tail call fastcc float @Mathematics(float noundef %73, float noundef %10, float noundef %79, float noundef %15, ptr noundef %3) #18
  %81 = fpext float %80 to double
  %82 = fmul double %31, %81
  %83 = fptrunc double %82 to float
  %84 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 7
  store float %83, ptr %84, align 8, !tbaa !60
  %85 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %86 = load i32, ptr %85, align 4, !tbaa !65
  %87 = icmp eq i32 %86, 12
  br i1 %87, label %88, label %189

88:                                               ; preds = %18
  %89 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %90 = load float, ptr %89, align 8, !tbaa !62
  %91 = fpext float %90 to double
  %92 = fmul double %91, 0x3EF0001000100010
  %93 = fmul double %92, %36
  %94 = fptrunc double %93 to float
  %95 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %96 = load float, ptr %95, align 8, !tbaa !62
  %97 = fpext float %96 to double
  %98 = fmul double %97, 0x3EF0001000100010
  %99 = fmul double %98, %43
  %100 = fptrunc double %99 to float
  %101 = tail call fastcc float @Mathematics(float noundef %94, float noundef %10, float noundef %100, float noundef %15, ptr noundef %3) #18
  %102 = fpext float %101 to double
  %103 = fmul double %31, %102
  %104 = fptrunc double %103 to float
  br label %186

105:                                              ; preds = %5
  %106 = and i32 %2, 8
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %115, label %108

108:                                              ; preds = %105
  %109 = tail call fastcc float @Mathematics(float noundef %10, float noundef 1.000000e+00, float noundef %15, float noundef 1.000000e+00, ptr noundef %3) #18
  %110 = fpext float %109 to double
  %111 = fsub double 1.000000e+00, %110
  %112 = fmul double %111, 6.553500e+04
  %113 = fptrunc double %112 to float
  %114 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 8
  store float %113, ptr %114, align 4, !tbaa !47
  br label %115

115:                                              ; preds = %108, %105
  %116 = and i32 %2, 1
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %132, label %118

118:                                              ; preds = %115
  %119 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %120 = load float, ptr %119, align 8, !tbaa !58
  %121 = fpext float %120 to double
  %122 = fmul double %121, 0x3EF0001000100010
  %123 = fptrunc double %122 to float
  %124 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %125 = load float, ptr %124, align 8, !tbaa !58
  %126 = fpext float %125 to double
  %127 = fmul double %126, 0x3EF0001000100010
  %128 = fptrunc double %127 to float
  %129 = tail call fastcc float @Mathematics(float noundef %123, float noundef 1.000000e+00, float noundef %128, float noundef 1.000000e+00, ptr noundef %3) #18
  %130 = fmul float %129, 6.553500e+04
  %131 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 5
  store float %130, ptr %131, align 8, !tbaa !58
  br label %132

132:                                              ; preds = %118, %115
  %133 = and i32 %2, 2
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %149, label %135

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %137 = load float, ptr %136, align 4, !tbaa !59
  %138 = fpext float %137 to double
  %139 = fmul double %138, 0x3EF0001000100010
  %140 = fptrunc double %139 to float
  %141 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %142 = load float, ptr %141, align 4, !tbaa !59
  %143 = fpext float %142 to double
  %144 = fmul double %143, 0x3EF0001000100010
  %145 = fptrunc double %144 to float
  %146 = tail call fastcc float @Mathematics(float noundef %140, float noundef 1.000000e+00, float noundef %145, float noundef 1.000000e+00, ptr noundef %3) #18
  %147 = fmul float %146, 6.553500e+04
  %148 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 6
  store float %147, ptr %148, align 4, !tbaa !59
  br label %149

149:                                              ; preds = %135, %132
  %150 = and i32 %2, 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %166, label %152

152:                                              ; preds = %149
  %153 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %154 = load float, ptr %153, align 8, !tbaa !60
  %155 = fpext float %154 to double
  %156 = fmul double %155, 0x3EF0001000100010
  %157 = fptrunc double %156 to float
  %158 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %159 = load float, ptr %158, align 8, !tbaa !60
  %160 = fpext float %159 to double
  %161 = fmul double %160, 0x3EF0001000100010
  %162 = fptrunc double %161 to float
  %163 = tail call fastcc float @Mathematics(float noundef %157, float noundef 1.000000e+00, float noundef %162, float noundef 1.000000e+00, ptr noundef %3) #18
  %164 = fmul float %163, 6.553500e+04
  %165 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 7
  store float %164, ptr %165, align 8, !tbaa !60
  br label %166

166:                                              ; preds = %152, %149
  %167 = and i32 %2, 32
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %189, label %169

169:                                              ; preds = %166
  %170 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %171 = load i32, ptr %170, align 4, !tbaa !65
  %172 = icmp eq i32 %171, 12
  br i1 %172, label %173, label %189

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %175 = load float, ptr %174, align 8, !tbaa !62
  %176 = fpext float %175 to double
  %177 = fmul double %176, 0x3EF0001000100010
  %178 = fptrunc double %177 to float
  %179 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %180 = load float, ptr %179, align 8, !tbaa !62
  %181 = fpext float %180 to double
  %182 = fmul double %181, 0x3EF0001000100010
  %183 = fptrunc double %182 to float
  %184 = tail call fastcc float @Mathematics(float noundef %178, float noundef 1.000000e+00, float noundef %183, float noundef 1.000000e+00, ptr noundef %3) #18
  %185 = fmul float %184, 6.553500e+04
  br label %186

186:                                              ; preds = %88, %173
  %187 = phi float [ %185, %173 ], [ %104, %88 ]
  %188 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 9
  store float %187, ptr %188, align 8, !tbaa !62
  br label %189

189:                                              ; preds = %186, %166, %169, %18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CompositeColorDodge(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #11 {
  %4 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %5 = load float, ptr %4, align 4, !tbaa !47
  %6 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %7 = load float, ptr %6, align 4, !tbaa !47
  %8 = insertelement <2 x float> poison, float %5, i64 0
  %9 = insertelement <2 x float> %8, float %7, i64 1
  %10 = fpext <2 x float> %9 to <2 x double>
  %11 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %10, <2 x double> <double 0xBEF0001000100010, double 0xBEF0001000100010>, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %12 = fptrunc <2 x double> %11 to <2 x float>
  %13 = extractelement <2 x float> %12, i64 0
  %14 = extractelement <2 x float> %12, i64 1
  %15 = fadd float %13, %14
  %16 = fneg float %13
  %17 = tail call float @llvm.fmuladd.f32(float %16, float %14, float %15)
  %18 = tail call fastcc float @RoundToUnity(float noundef %17) #18
  %19 = fpext float %18 to double
  %20 = fsub double 1.000000e+00, %19
  %21 = fmul double %20, 6.553500e+04
  %22 = fptrunc double %21 to float
  %23 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 8
  store float %22, ptr %23, align 4, !tbaa !47
  %24 = tail call double @llvm.fabs.f64(double %19)
  %25 = fcmp olt double %24, 1.000000e-15
  %26 = fdiv double 6.553500e+04, %19
  %27 = select i1 %25, double 0x440C6BD8BA3ED9CB, double %26
  %28 = fptrunc double %27 to float
  %29 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %30 = load float, ptr %29, align 8, !tbaa !58
  %31 = fpext float %30 to double
  %32 = fmul double %31, 0x3EF0001000100010
  %33 = fpext float %13 to double
  %34 = fmul double %32, %33
  %35 = fptrunc double %34 to float
  %36 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %37 = load float, ptr %36, align 8, !tbaa !58
  %38 = fpext float %37 to double
  %39 = fmul double %38, 0x3EF0001000100010
  %40 = fpext float %14 to double
  %41 = fmul double %39, %40
  %42 = fptrunc double %41 to float
  %43 = tail call fastcc float @ColorDodge(float noundef %35, float noundef %13, float noundef %42, float noundef %14) #18
  %44 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  %45 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %46 = load float, ptr %45, align 4, !tbaa !59
  %47 = fpext float %46 to double
  %48 = fmul double %47, 0x3EF0001000100010
  %49 = fmul double %48, %33
  %50 = fptrunc double %49 to float
  %51 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %52 = load float, ptr %51, align 4, !tbaa !59
  %53 = fpext float %52 to double
  %54 = fmul double %53, 0x3EF0001000100010
  %55 = fmul double %54, %40
  %56 = fptrunc double %55 to float
  %57 = tail call fastcc float @ColorDodge(float noundef %50, float noundef %13, float noundef %56, float noundef %14) #18
  %58 = insertelement <2 x float> poison, float %43, i64 0
  %59 = insertelement <2 x float> %58, float %57, i64 1
  %60 = insertelement <2 x float> poison, float %28, i64 0
  %61 = shufflevector <2 x float> %60, <2 x float> poison, <2 x i32> zeroinitializer
  %62 = fmul <2 x float> %59, %61
  store <2 x float> %62, ptr %44, align 8, !tbaa !30
  %63 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %64 = load float, ptr %63, align 8, !tbaa !60
  %65 = fpext float %64 to double
  %66 = fmul double %65, 0x3EF0001000100010
  %67 = fmul double %66, %33
  %68 = fptrunc double %67 to float
  %69 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %70 = load float, ptr %69, align 8, !tbaa !60
  %71 = fpext float %70 to double
  %72 = fmul double %71, 0x3EF0001000100010
  %73 = fmul double %72, %40
  %74 = fptrunc double %73 to float
  %75 = tail call fastcc float @ColorDodge(float noundef %68, float noundef %13, float noundef %74, float noundef %14) #18
  %76 = fmul float %75, %28
  %77 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 7
  store float %76, ptr %77, align 8, !tbaa !60
  %78 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %79 = load i32, ptr %78, align 4, !tbaa !65
  %80 = icmp eq i32 %79, 12
  br i1 %80, label %81, label %97

81:                                               ; preds = %3
  %82 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %83 = load float, ptr %82, align 8, !tbaa !62
  %84 = fpext float %83 to double
  %85 = fmul double %84, 0x3EF0001000100010
  %86 = fmul double %85, %33
  %87 = fptrunc double %86 to float
  %88 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %89 = load float, ptr %88, align 8, !tbaa !62
  %90 = fpext float %89 to double
  %91 = fmul double %90, 0x3EF0001000100010
  %92 = fmul double %91, %40
  %93 = fptrunc double %92 to float
  %94 = tail call fastcc float @ColorDodge(float noundef %87, float noundef %13, float noundef %93, float noundef %14) #18
  %95 = fmul float %94, %28
  %96 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 9
  store float %95, ptr %96, align 8, !tbaa !62
  br label %97

97:                                               ; preds = %81, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CompositeColorBurn(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #11 {
  %4 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %5 = load float, ptr %4, align 4, !tbaa !47
  %6 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %7 = load float, ptr %6, align 4, !tbaa !47
  %8 = insertelement <2 x float> poison, float %5, i64 0
  %9 = insertelement <2 x float> %8, float %7, i64 1
  %10 = fpext <2 x float> %9 to <2 x double>
  %11 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %10, <2 x double> <double 0xBEF0001000100010, double 0xBEF0001000100010>, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %12 = fptrunc <2 x double> %11 to <2 x float>
  %13 = extractelement <2 x float> %12, i64 0
  %14 = extractelement <2 x float> %12, i64 1
  %15 = fadd float %13, %14
  %16 = fneg float %13
  %17 = tail call float @llvm.fmuladd.f32(float %16, float %14, float %15)
  %18 = tail call fastcc float @RoundToUnity(float noundef %17) #18
  %19 = fpext float %18 to double
  %20 = fsub double 1.000000e+00, %19
  %21 = fmul double %20, 6.553500e+04
  %22 = fptrunc double %21 to float
  %23 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 8
  store float %22, ptr %23, align 4, !tbaa !47
  %24 = tail call double @llvm.fabs.f64(double %19)
  %25 = fcmp olt double %24, 1.000000e-15
  %26 = fdiv double 6.553500e+04, %19
  %27 = select i1 %25, double 0x440C6BD8BA3ED9CB, double %26
  %28 = fptrunc double %27 to float
  %29 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %30 = load float, ptr %29, align 8, !tbaa !58
  %31 = fpext float %30 to double
  %32 = fmul double %31, 0x3EF0001000100010
  %33 = fpext float %13 to double
  %34 = fmul double %32, %33
  %35 = fptrunc double %34 to float
  %36 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %37 = load float, ptr %36, align 8, !tbaa !58
  %38 = fpext float %37 to double
  %39 = fmul double %38, 0x3EF0001000100010
  %40 = fpext float %14 to double
  %41 = fmul double %39, %40
  %42 = fptrunc double %41 to float
  %43 = tail call fastcc float @ColorBurn(float noundef %35, float noundef %13, float noundef %42, float noundef %14) #18
  %44 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  %45 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %46 = load float, ptr %45, align 4, !tbaa !59
  %47 = fpext float %46 to double
  %48 = fmul double %47, 0x3EF0001000100010
  %49 = fmul double %48, %33
  %50 = fptrunc double %49 to float
  %51 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %52 = load float, ptr %51, align 4, !tbaa !59
  %53 = fpext float %52 to double
  %54 = fmul double %53, 0x3EF0001000100010
  %55 = fmul double %54, %40
  %56 = fptrunc double %55 to float
  %57 = tail call fastcc float @ColorBurn(float noundef %50, float noundef %13, float noundef %56, float noundef %14) #18
  %58 = insertelement <2 x float> poison, float %43, i64 0
  %59 = insertelement <2 x float> %58, float %57, i64 1
  %60 = insertelement <2 x float> poison, float %28, i64 0
  %61 = shufflevector <2 x float> %60, <2 x float> poison, <2 x i32> zeroinitializer
  %62 = fmul <2 x float> %59, %61
  store <2 x float> %62, ptr %44, align 8, !tbaa !30
  %63 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %64 = load float, ptr %63, align 8, !tbaa !60
  %65 = fpext float %64 to double
  %66 = fmul double %65, 0x3EF0001000100010
  %67 = fmul double %66, %33
  %68 = fptrunc double %67 to float
  %69 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %70 = load float, ptr %69, align 8, !tbaa !60
  %71 = fpext float %70 to double
  %72 = fmul double %71, 0x3EF0001000100010
  %73 = fmul double %72, %40
  %74 = fptrunc double %73 to float
  %75 = tail call fastcc float @ColorBurn(float noundef %68, float noundef %13, float noundef %74, float noundef %14) #18
  %76 = fmul float %75, %28
  %77 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 7
  store float %76, ptr %77, align 8, !tbaa !60
  %78 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %79 = load i32, ptr %78, align 4, !tbaa !65
  %80 = icmp eq i32 %79, 12
  br i1 %80, label %81, label %97

81:                                               ; preds = %3
  %82 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %83 = load float, ptr %82, align 8, !tbaa !62
  %84 = fpext float %83 to double
  %85 = fmul double %84, 0x3EF0001000100010
  %86 = fmul double %85, %33
  %87 = fptrunc double %86 to float
  %88 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %89 = load float, ptr %88, align 8, !tbaa !62
  %90 = fpext float %89 to double
  %91 = fmul double %90, 0x3EF0001000100010
  %92 = fmul double %91, %40
  %93 = fptrunc double %92 to float
  %94 = tail call fastcc float @ColorBurn(float noundef %87, float noundef %13, float noundef %93, float noundef %14) #18
  %95 = fmul float %94, %28
  %96 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 9
  store float %95, ptr %96, align 8, !tbaa !62
  br label %97

97:                                               ; preds = %81, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CompositeLinearDodge(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #11 {
  %4 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %5 = load float, ptr %4, align 4, !tbaa !47
  %6 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %7 = load float, ptr %6, align 4, !tbaa !47
  %8 = insertelement <2 x float> poison, float %5, i64 0
  %9 = insertelement <2 x float> %8, float %7, i64 1
  %10 = fpext <2 x float> %9 to <2 x double>
  %11 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %10, <2 x double> <double 0xBEF0001000100010, double 0xBEF0001000100010>, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %12 = fptrunc <2 x double> %11 to <2 x float>
  %13 = extractelement <2 x float> %12, i64 0
  %14 = extractelement <2 x float> %12, i64 1
  %15 = fadd float %13, %14
  %16 = fneg float %13
  %17 = tail call float @llvm.fmuladd.f32(float %16, float %14, float %15)
  %18 = tail call fastcc float @RoundToUnity(float noundef %17) #18
  %19 = fpext float %18 to double
  %20 = fsub double 1.000000e+00, %19
  %21 = tail call fastcc double @PerceptibleReciprocal(double noundef %19) #18
  %22 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %23 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %24 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  %25 = load <2 x float>, ptr %22, align 8, !tbaa !30
  %26 = load <2 x float>, ptr %23, align 8, !tbaa !30
  %27 = shufflevector <2 x float> %12, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %28 = fmul <2 x float> %26, %27
  %29 = shufflevector <2 x float> %12, <2 x float> poison, <2 x i32> zeroinitializer
  %30 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %25, <2 x float> %29, <2 x float> %28)
  %31 = fpext <2 x float> %30 to <2 x double>
  %32 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %33 = load float, ptr %32, align 8, !tbaa !60
  %34 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %35 = load float, ptr %34, align 8, !tbaa !60
  %36 = fmul float %35, %14
  %37 = tail call float @llvm.fmuladd.f32(float %33, float %13, float %36)
  %38 = fpext float %37 to double
  %39 = insertelement <4 x double> poison, double %21, i64 0
  %40 = insertelement <4 x double> %39, double %20, i64 1
  %41 = shufflevector <4 x double> %40, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %42 = shufflevector <2 x double> %31, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %43 = insertelement <4 x double> %42, double 6.553500e+04, i64 3
  %44 = insertelement <4 x double> %43, double %38, i64 2
  %45 = fmul <4 x double> %41, %44
  %46 = fptrunc <4 x double> %45 to <4 x float>
  store <4 x float> %46, ptr %24, align 8, !tbaa !30
  %47 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %48 = load i32, ptr %47, align 4, !tbaa !65
  %49 = icmp eq i32 %48, 12
  br i1 %49, label %50, label %61

50:                                               ; preds = %3
  %51 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %52 = load float, ptr %51, align 8, !tbaa !62
  %53 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %54 = load float, ptr %53, align 8, !tbaa !62
  %55 = fmul float %54, %14
  %56 = tail call float @llvm.fmuladd.f32(float %52, float %13, float %55)
  %57 = fpext float %56 to double
  %58 = fmul double %21, %57
  %59 = fptrunc double %58 to float
  %60 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 9
  store float %59, ptr %60, align 8, !tbaa !62
  br label %61

61:                                               ; preds = %50, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CompositeLinearBurn(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #11 {
  %4 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %5 = load float, ptr %4, align 4, !tbaa !47
  %6 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %7 = load float, ptr %6, align 4, !tbaa !47
  %8 = insertelement <2 x float> poison, float %5, i64 0
  %9 = insertelement <2 x float> %8, float %7, i64 1
  %10 = fpext <2 x float> %9 to <2 x double>
  %11 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %10, <2 x double> <double 0xBEF0001000100010, double 0xBEF0001000100010>, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %12 = fptrunc <2 x double> %11 to <2 x float>
  %13 = extractelement <2 x float> %12, i64 0
  %14 = extractelement <2 x float> %12, i64 1
  %15 = fadd float %13, %14
  %16 = fneg float %13
  %17 = tail call float @llvm.fmuladd.f32(float %16, float %14, float %15)
  %18 = tail call fastcc float @RoundToUnity(float noundef %17) #18
  %19 = fpext float %18 to double
  %20 = fsub double 1.000000e+00, %19
  %21 = fmul double %20, 6.553500e+04
  %22 = fptrunc double %21 to float
  %23 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 8
  store float %22, ptr %23, align 4, !tbaa !47
  %24 = tail call double @llvm.fabs.f64(double %19)
  %25 = fcmp olt double %24, 1.000000e-15
  %26 = fdiv double 6.553500e+04, %19
  %27 = select i1 %25, double 0x440C6BD8BA3ED9CB, double %26
  %28 = fptrunc double %27 to float
  %29 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %30 = load float, ptr %29, align 8, !tbaa !58
  %31 = fpext float %30 to double
  %32 = fmul double %31, 0x3EF0001000100010
  %33 = fpext float %13 to double
  %34 = fmul double %32, %33
  %35 = fptrunc double %34 to float
  %36 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %37 = load float, ptr %36, align 8, !tbaa !58
  %38 = fpext float %37 to double
  %39 = fmul double %38, 0x3EF0001000100010
  %40 = fpext float %14 to double
  %41 = fmul double %39, %40
  %42 = fptrunc double %41 to float
  %43 = tail call fastcc float @LinearBurn(float noundef %35, float noundef %13, float noundef %42, float noundef %14) #18
  %44 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  %45 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %46 = load float, ptr %45, align 4, !tbaa !59
  %47 = fpext float %46 to double
  %48 = fmul double %47, 0x3EF0001000100010
  %49 = fmul double %48, %33
  %50 = fptrunc double %49 to float
  %51 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %52 = load float, ptr %51, align 4, !tbaa !59
  %53 = fpext float %52 to double
  %54 = fmul double %53, 0x3EF0001000100010
  %55 = fmul double %54, %40
  %56 = fptrunc double %55 to float
  %57 = tail call fastcc float @LinearBurn(float noundef %50, float noundef %13, float noundef %56, float noundef %14) #18
  %58 = insertelement <2 x float> poison, float %43, i64 0
  %59 = insertelement <2 x float> %58, float %57, i64 1
  %60 = insertelement <2 x float> poison, float %28, i64 0
  %61 = shufflevector <2 x float> %60, <2 x float> poison, <2 x i32> zeroinitializer
  %62 = fmul <2 x float> %59, %61
  store <2 x float> %62, ptr %44, align 8, !tbaa !30
  %63 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %64 = load float, ptr %63, align 8, !tbaa !60
  %65 = fpext float %64 to double
  %66 = fmul double %65, 0x3EF0001000100010
  %67 = fmul double %66, %33
  %68 = fptrunc double %67 to float
  %69 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %70 = load float, ptr %69, align 8, !tbaa !60
  %71 = fpext float %70 to double
  %72 = fmul double %71, 0x3EF0001000100010
  %73 = fmul double %72, %40
  %74 = fptrunc double %73 to float
  %75 = tail call fastcc float @LinearBurn(float noundef %68, float noundef %13, float noundef %74, float noundef %14) #18
  %76 = fmul float %75, %28
  %77 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 7
  store float %76, ptr %77, align 8, !tbaa !60
  %78 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %79 = load i32, ptr %78, align 4, !tbaa !65
  %80 = icmp eq i32 %79, 12
  br i1 %80, label %81, label %97

81:                                               ; preds = %3
  %82 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %83 = load float, ptr %82, align 8, !tbaa !62
  %84 = fpext float %83 to double
  %85 = fmul double %84, 0x3EF0001000100010
  %86 = fmul double %85, %33
  %87 = fptrunc double %86 to float
  %88 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %89 = load float, ptr %88, align 8, !tbaa !62
  %90 = fpext float %89 to double
  %91 = fmul double %90, 0x3EF0001000100010
  %92 = fmul double %91, %40
  %93 = fptrunc double %92 to float
  %94 = tail call fastcc float @LinearBurn(float noundef %87, float noundef %13, float noundef %93, float noundef %14) #18
  %95 = fmul float %94, %28
  %96 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 9
  store float %95, ptr %96, align 8, !tbaa !62
  br label %97

97:                                               ; preds = %81, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CompositeHardLight(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #11 {
  %4 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %5 = load float, ptr %4, align 4, !tbaa !47
  %6 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %7 = load float, ptr %6, align 4, !tbaa !47
  %8 = insertelement <2 x float> poison, float %5, i64 0
  %9 = insertelement <2 x float> %8, float %7, i64 1
  %10 = fpext <2 x float> %9 to <2 x double>
  %11 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %10, <2 x double> <double 0xBEF0001000100010, double 0xBEF0001000100010>, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %12 = fptrunc <2 x double> %11 to <2 x float>
  %13 = extractelement <2 x float> %12, i64 0
  %14 = extractelement <2 x float> %12, i64 1
  %15 = fadd float %13, %14
  %16 = fneg float %13
  %17 = tail call float @llvm.fmuladd.f32(float %16, float %14, float %15)
  %18 = tail call fastcc float @RoundToUnity(float noundef %17) #18
  %19 = fpext float %18 to double
  %20 = fsub double 1.000000e+00, %19
  %21 = fmul double %20, 6.553500e+04
  %22 = fptrunc double %21 to float
  %23 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 8
  store float %22, ptr %23, align 4, !tbaa !47
  %24 = tail call double @llvm.fabs.f64(double %19)
  %25 = fcmp olt double %24, 1.000000e-15
  %26 = fdiv double 6.553500e+04, %19
  %27 = select i1 %25, double 0x440C6BD8BA3ED9CB, double %26
  %28 = fptrunc double %27 to float
  %29 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %30 = load float, ptr %29, align 8, !tbaa !58
  %31 = fpext float %30 to double
  %32 = fmul double %31, 0x3EF0001000100010
  %33 = fpext float %13 to double
  %34 = fmul double %32, %33
  %35 = fptrunc double %34 to float
  %36 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %37 = load float, ptr %36, align 8, !tbaa !58
  %38 = fpext float %37 to double
  %39 = fmul double %38, 0x3EF0001000100010
  %40 = fpext float %14 to double
  %41 = fmul double %39, %40
  %42 = fptrunc double %41 to float
  %43 = tail call fastcc float @HardLight(float noundef %35, float noundef %13, float noundef %42, float noundef %14) #18
  %44 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  %45 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %46 = load float, ptr %45, align 4, !tbaa !59
  %47 = fpext float %46 to double
  %48 = fmul double %47, 0x3EF0001000100010
  %49 = fmul double %48, %33
  %50 = fptrunc double %49 to float
  %51 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %52 = load float, ptr %51, align 4, !tbaa !59
  %53 = fpext float %52 to double
  %54 = fmul double %53, 0x3EF0001000100010
  %55 = fmul double %54, %40
  %56 = fptrunc double %55 to float
  %57 = tail call fastcc float @HardLight(float noundef %50, float noundef %13, float noundef %56, float noundef %14) #18
  %58 = insertelement <2 x float> poison, float %43, i64 0
  %59 = insertelement <2 x float> %58, float %57, i64 1
  %60 = insertelement <2 x float> poison, float %28, i64 0
  %61 = shufflevector <2 x float> %60, <2 x float> poison, <2 x i32> zeroinitializer
  %62 = fmul <2 x float> %59, %61
  store <2 x float> %62, ptr %44, align 8, !tbaa !30
  %63 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %64 = load float, ptr %63, align 8, !tbaa !60
  %65 = fpext float %64 to double
  %66 = fmul double %65, 0x3EF0001000100010
  %67 = fmul double %66, %33
  %68 = fptrunc double %67 to float
  %69 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %70 = load float, ptr %69, align 8, !tbaa !60
  %71 = fpext float %70 to double
  %72 = fmul double %71, 0x3EF0001000100010
  %73 = fmul double %72, %40
  %74 = fptrunc double %73 to float
  %75 = tail call fastcc float @HardLight(float noundef %68, float noundef %13, float noundef %74, float noundef %14) #18
  %76 = fmul float %75, %28
  %77 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 7
  store float %76, ptr %77, align 8, !tbaa !60
  %78 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %79 = load i32, ptr %78, align 4, !tbaa !65
  %80 = icmp eq i32 %79, 12
  br i1 %80, label %81, label %97

81:                                               ; preds = %3
  %82 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %83 = load float, ptr %82, align 8, !tbaa !62
  %84 = fpext float %83 to double
  %85 = fmul double %84, 0x3EF0001000100010
  %86 = fmul double %85, %33
  %87 = fptrunc double %86 to float
  %88 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %89 = load float, ptr %88, align 8, !tbaa !62
  %90 = fpext float %89 to double
  %91 = fmul double %90, 0x3EF0001000100010
  %92 = fmul double %91, %40
  %93 = fptrunc double %92 to float
  %94 = tail call fastcc float @HardLight(float noundef %87, float noundef %13, float noundef %93, float noundef %14) #18
  %95 = fmul float %94, %28
  %96 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 9
  store float %95, ptr %96, align 8, !tbaa !62
  br label %97

97:                                               ; preds = %81, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @CompositeSoftLight(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #13 {
  %4 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %5 = load float, ptr %4, align 4, !tbaa !47
  %6 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %7 = load float, ptr %6, align 4, !tbaa !47
  %8 = insertelement <2 x float> poison, float %5, i64 0
  %9 = insertelement <2 x float> %8, float %7, i64 1
  %10 = fpext <2 x float> %9 to <2 x double>
  %11 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %10, <2 x double> <double 0xBEF0001000100010, double 0xBEF0001000100010>, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %12 = fptrunc <2 x double> %11 to <2 x float>
  %13 = extractelement <2 x float> %12, i64 0
  %14 = extractelement <2 x float> %12, i64 1
  %15 = fadd float %13, %14
  %16 = fneg float %13
  %17 = tail call float @llvm.fmuladd.f32(float %16, float %14, float %15)
  %18 = tail call fastcc float @RoundToUnity(float noundef %17) #18
  %19 = fpext float %18 to double
  %20 = fsub double 1.000000e+00, %19
  %21 = fmul double %20, 6.553500e+04
  %22 = fptrunc double %21 to float
  %23 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 8
  store float %22, ptr %23, align 4, !tbaa !47
  %24 = tail call double @llvm.fabs.f64(double %19)
  %25 = fcmp olt double %24, 1.000000e-15
  %26 = fdiv double 6.553500e+04, %19
  %27 = select i1 %25, double 0x440C6BD8BA3ED9CB, double %26
  %28 = fptrunc double %27 to float
  %29 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %30 = load float, ptr %29, align 8, !tbaa !58
  %31 = fpext float %30 to double
  %32 = fmul double %31, 0x3EF0001000100010
  %33 = fpext float %13 to double
  %34 = fmul double %32, %33
  %35 = fptrunc double %34 to float
  %36 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %37 = load float, ptr %36, align 8, !tbaa !58
  %38 = fpext float %37 to double
  %39 = fmul double %38, 0x3EF0001000100010
  %40 = fpext float %14 to double
  %41 = fmul double %39, %40
  %42 = fptrunc double %41 to float
  %43 = tail call fastcc float @SoftLight(float noundef %35, float noundef %13, float noundef %42, float noundef %14) #18
  %44 = fmul float %43, %28
  %45 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  store float %44, ptr %45, align 8, !tbaa !58
  %46 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %47 = load float, ptr %46, align 4, !tbaa !59
  %48 = fpext float %47 to double
  %49 = fmul double %48, 0x3EF0001000100010
  %50 = fmul double %49, %33
  %51 = fptrunc double %50 to float
  %52 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %53 = load float, ptr %52, align 4, !tbaa !59
  %54 = fpext float %53 to double
  %55 = fmul double %54, 0x3EF0001000100010
  %56 = fmul double %55, %40
  %57 = fptrunc double %56 to float
  %58 = tail call fastcc float @SoftLight(float noundef %51, float noundef %13, float noundef %57, float noundef %14) #18
  %59 = fmul float %58, %28
  %60 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 6
  store float %59, ptr %60, align 4, !tbaa !59
  %61 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %62 = load float, ptr %61, align 8, !tbaa !60
  %63 = fpext float %62 to double
  %64 = fmul double %63, 0x3EF0001000100010
  %65 = fmul double %64, %33
  %66 = fptrunc double %65 to float
  %67 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %68 = load float, ptr %67, align 8, !tbaa !60
  %69 = fpext float %68 to double
  %70 = fmul double %69, 0x3EF0001000100010
  %71 = fmul double %70, %40
  %72 = fptrunc double %71 to float
  %73 = tail call fastcc float @SoftLight(float noundef %66, float noundef %13, float noundef %72, float noundef %14) #18
  %74 = fmul float %73, %28
  %75 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 7
  store float %74, ptr %75, align 8, !tbaa !60
  %76 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %77 = load i32, ptr %76, align 4, !tbaa !65
  %78 = icmp eq i32 %77, 12
  br i1 %78, label %79, label %95

79:                                               ; preds = %3
  %80 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %81 = load float, ptr %80, align 8, !tbaa !62
  %82 = fpext float %81 to double
  %83 = fmul double %82, 0x3EF0001000100010
  %84 = fmul double %83, %33
  %85 = fptrunc double %84 to float
  %86 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %87 = load float, ptr %86, align 8, !tbaa !62
  %88 = fpext float %87 to double
  %89 = fmul double %88, 0x3EF0001000100010
  %90 = fmul double %89, %40
  %91 = fptrunc double %90 to float
  %92 = tail call fastcc float @SoftLight(float noundef %85, float noundef %13, float noundef %91, float noundef %14) #18
  %93 = fmul float %92, %28
  %94 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 9
  store float %93, ptr %94, align 8, !tbaa !62
  br label %95

95:                                               ; preds = %79, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CompositeLinearLight(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #11 {
  %4 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %5 = load float, ptr %4, align 4, !tbaa !47
  %6 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %7 = load float, ptr %6, align 4, !tbaa !47
  %8 = insertelement <2 x float> poison, float %5, i64 0
  %9 = insertelement <2 x float> %8, float %7, i64 1
  %10 = fpext <2 x float> %9 to <2 x double>
  %11 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %10, <2 x double> <double 0xBEF0001000100010, double 0xBEF0001000100010>, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %12 = fptrunc <2 x double> %11 to <2 x float>
  %13 = extractelement <2 x float> %12, i64 0
  %14 = extractelement <2 x float> %12, i64 1
  %15 = fadd float %13, %14
  %16 = fneg float %13
  %17 = tail call float @llvm.fmuladd.f32(float %16, float %14, float %15)
  %18 = tail call fastcc float @RoundToUnity(float noundef %17) #18
  %19 = fpext float %18 to double
  %20 = fsub double 1.000000e+00, %19
  %21 = fmul double %20, 6.553500e+04
  %22 = fptrunc double %21 to float
  %23 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 8
  store float %22, ptr %23, align 4, !tbaa !47
  %24 = tail call double @llvm.fabs.f64(double %19)
  %25 = fcmp olt double %24, 1.000000e-15
  %26 = fdiv double 6.553500e+04, %19
  %27 = select i1 %25, double 0x440C6BD8BA3ED9CB, double %26
  %28 = fptrunc double %27 to float
  %29 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %30 = load float, ptr %29, align 8, !tbaa !58
  %31 = fpext float %30 to double
  %32 = fmul double %31, 0x3EF0001000100010
  %33 = fpext float %13 to double
  %34 = fmul double %32, %33
  %35 = fptrunc double %34 to float
  %36 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %37 = load float, ptr %36, align 8, !tbaa !58
  %38 = fpext float %37 to double
  %39 = fmul double %38, 0x3EF0001000100010
  %40 = fpext float %14 to double
  %41 = fmul double %39, %40
  %42 = fptrunc double %41 to float
  %43 = tail call fastcc float @LinearLight(float noundef %35, float noundef %13, float noundef %42, float noundef %14) #18
  %44 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  %45 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %46 = load float, ptr %45, align 4, !tbaa !59
  %47 = fpext float %46 to double
  %48 = fmul double %47, 0x3EF0001000100010
  %49 = fmul double %48, %33
  %50 = fptrunc double %49 to float
  %51 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %52 = load float, ptr %51, align 4, !tbaa !59
  %53 = fpext float %52 to double
  %54 = fmul double %53, 0x3EF0001000100010
  %55 = fmul double %54, %40
  %56 = fptrunc double %55 to float
  %57 = tail call fastcc float @LinearLight(float noundef %50, float noundef %13, float noundef %56, float noundef %14) #18
  %58 = insertelement <2 x float> poison, float %43, i64 0
  %59 = insertelement <2 x float> %58, float %57, i64 1
  %60 = insertelement <2 x float> poison, float %28, i64 0
  %61 = shufflevector <2 x float> %60, <2 x float> poison, <2 x i32> zeroinitializer
  %62 = fmul <2 x float> %59, %61
  store <2 x float> %62, ptr %44, align 8, !tbaa !30
  %63 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %64 = load float, ptr %63, align 8, !tbaa !60
  %65 = fpext float %64 to double
  %66 = fmul double %65, 0x3EF0001000100010
  %67 = fmul double %66, %33
  %68 = fptrunc double %67 to float
  %69 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %70 = load float, ptr %69, align 8, !tbaa !60
  %71 = fpext float %70 to double
  %72 = fmul double %71, 0x3EF0001000100010
  %73 = fmul double %72, %40
  %74 = fptrunc double %73 to float
  %75 = tail call fastcc float @LinearLight(float noundef %68, float noundef %13, float noundef %74, float noundef %14) #18
  %76 = fmul float %75, %28
  %77 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 7
  store float %76, ptr %77, align 8, !tbaa !60
  %78 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %79 = load i32, ptr %78, align 4, !tbaa !65
  %80 = icmp eq i32 %79, 12
  br i1 %80, label %81, label %97

81:                                               ; preds = %3
  %82 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %83 = load float, ptr %82, align 8, !tbaa !62
  %84 = fpext float %83 to double
  %85 = fmul double %84, 0x3EF0001000100010
  %86 = fmul double %85, %33
  %87 = fptrunc double %86 to float
  %88 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %89 = load float, ptr %88, align 8, !tbaa !62
  %90 = fpext float %89 to double
  %91 = fmul double %90, 0x3EF0001000100010
  %92 = fmul double %91, %40
  %93 = fptrunc double %92 to float
  %94 = tail call fastcc float @LinearLight(float noundef %87, float noundef %13, float noundef %93, float noundef %14) #18
  %95 = fmul float %94, %28
  %96 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 9
  store float %95, ptr %96, align 8, !tbaa !62
  br label %97

97:                                               ; preds = %81, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CompositePegtopLight(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #11 {
  %4 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %5 = load float, ptr %4, align 4, !tbaa !47
  %6 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %7 = load float, ptr %6, align 4, !tbaa !47
  %8 = insertelement <2 x float> poison, float %5, i64 0
  %9 = insertelement <2 x float> %8, float %7, i64 1
  %10 = fpext <2 x float> %9 to <2 x double>
  %11 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %10, <2 x double> <double 0xBEF0001000100010, double 0xBEF0001000100010>, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %12 = fptrunc <2 x double> %11 to <2 x float>
  %13 = extractelement <2 x float> %12, i64 0
  %14 = extractelement <2 x float> %12, i64 1
  %15 = fadd float %13, %14
  %16 = fneg float %13
  %17 = tail call float @llvm.fmuladd.f32(float %16, float %14, float %15)
  %18 = tail call fastcc float @RoundToUnity(float noundef %17) #18
  %19 = fpext float %18 to double
  %20 = fsub double 1.000000e+00, %19
  %21 = fmul double %20, 6.553500e+04
  %22 = fptrunc double %21 to float
  %23 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 8
  store float %22, ptr %23, align 4, !tbaa !47
  %24 = tail call double @llvm.fabs.f64(double %19)
  %25 = fcmp olt double %24, 1.000000e-15
  %26 = fdiv double 6.553500e+04, %19
  %27 = select i1 %25, double 0x440C6BD8BA3ED9CB, double %26
  %28 = fptrunc double %27 to float
  %29 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %30 = load float, ptr %29, align 8, !tbaa !58
  %31 = fpext float %30 to double
  %32 = fmul double %31, 0x3EF0001000100010
  %33 = fpext float %13 to double
  %34 = fmul double %32, %33
  %35 = fptrunc double %34 to float
  %36 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %37 = load float, ptr %36, align 8, !tbaa !58
  %38 = fpext float %37 to double
  %39 = fmul double %38, 0x3EF0001000100010
  %40 = fpext float %14 to double
  %41 = fmul double %39, %40
  %42 = fptrunc double %41 to float
  %43 = tail call fastcc float @PegtopLight(float noundef %35, float noundef %13, float noundef %42, float noundef %14) #18
  %44 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  %45 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %46 = load float, ptr %45, align 4, !tbaa !59
  %47 = fpext float %46 to double
  %48 = fmul double %47, 0x3EF0001000100010
  %49 = fmul double %48, %33
  %50 = fptrunc double %49 to float
  %51 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %52 = load float, ptr %51, align 4, !tbaa !59
  %53 = fpext float %52 to double
  %54 = fmul double %53, 0x3EF0001000100010
  %55 = fmul double %54, %40
  %56 = fptrunc double %55 to float
  %57 = tail call fastcc float @PegtopLight(float noundef %50, float noundef %13, float noundef %56, float noundef %14) #18
  %58 = insertelement <2 x float> poison, float %43, i64 0
  %59 = insertelement <2 x float> %58, float %57, i64 1
  %60 = insertelement <2 x float> poison, float %28, i64 0
  %61 = shufflevector <2 x float> %60, <2 x float> poison, <2 x i32> zeroinitializer
  %62 = fmul <2 x float> %59, %61
  store <2 x float> %62, ptr %44, align 8, !tbaa !30
  %63 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %64 = load float, ptr %63, align 8, !tbaa !60
  %65 = fpext float %64 to double
  %66 = fmul double %65, 0x3EF0001000100010
  %67 = fmul double %66, %33
  %68 = fptrunc double %67 to float
  %69 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %70 = load float, ptr %69, align 8, !tbaa !60
  %71 = fpext float %70 to double
  %72 = fmul double %71, 0x3EF0001000100010
  %73 = fmul double %72, %40
  %74 = fptrunc double %73 to float
  %75 = tail call fastcc float @PegtopLight(float noundef %68, float noundef %13, float noundef %74, float noundef %14) #18
  %76 = fmul float %75, %28
  %77 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 7
  store float %76, ptr %77, align 8, !tbaa !60
  %78 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %79 = load i32, ptr %78, align 4, !tbaa !65
  %80 = icmp eq i32 %79, 12
  br i1 %80, label %81, label %97

81:                                               ; preds = %3
  %82 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %83 = load float, ptr %82, align 8, !tbaa !62
  %84 = fpext float %83 to double
  %85 = fmul double %84, 0x3EF0001000100010
  %86 = fmul double %85, %33
  %87 = fptrunc double %86 to float
  %88 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %89 = load float, ptr %88, align 8, !tbaa !62
  %90 = fpext float %89 to double
  %91 = fmul double %90, 0x3EF0001000100010
  %92 = fmul double %91, %40
  %93 = fptrunc double %92 to float
  %94 = tail call fastcc float @PegtopLight(float noundef %87, float noundef %13, float noundef %93, float noundef %14) #18
  %95 = fmul float %94, %28
  %96 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 9
  store float %95, ptr %96, align 8, !tbaa !62
  br label %97

97:                                               ; preds = %81, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CompositeVividLight(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #11 {
  %4 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %5 = load float, ptr %4, align 4, !tbaa !47
  %6 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %7 = load float, ptr %6, align 4, !tbaa !47
  %8 = insertelement <2 x float> poison, float %5, i64 0
  %9 = insertelement <2 x float> %8, float %7, i64 1
  %10 = fpext <2 x float> %9 to <2 x double>
  %11 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %10, <2 x double> <double 0xBEF0001000100010, double 0xBEF0001000100010>, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %12 = fptrunc <2 x double> %11 to <2 x float>
  %13 = extractelement <2 x float> %12, i64 0
  %14 = extractelement <2 x float> %12, i64 1
  %15 = fadd float %13, %14
  %16 = fneg float %13
  %17 = tail call float @llvm.fmuladd.f32(float %16, float %14, float %15)
  %18 = tail call fastcc float @RoundToUnity(float noundef %17) #18
  %19 = fpext float %18 to double
  %20 = fsub double 1.000000e+00, %19
  %21 = fmul double %20, 6.553500e+04
  %22 = fptrunc double %21 to float
  %23 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 8
  store float %22, ptr %23, align 4, !tbaa !47
  %24 = tail call double @llvm.fabs.f64(double %19)
  %25 = fcmp olt double %24, 1.000000e-15
  %26 = fdiv double 6.553500e+04, %19
  %27 = select i1 %25, double 0x440C6BD8BA3ED9CB, double %26
  %28 = fptrunc double %27 to float
  %29 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %30 = load float, ptr %29, align 8, !tbaa !58
  %31 = fpext float %30 to double
  %32 = fmul double %31, 0x3EF0001000100010
  %33 = fpext float %13 to double
  %34 = fmul double %32, %33
  %35 = fptrunc double %34 to float
  %36 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %37 = load float, ptr %36, align 8, !tbaa !58
  %38 = fpext float %37 to double
  %39 = fmul double %38, 0x3EF0001000100010
  %40 = fpext float %14 to double
  %41 = fmul double %39, %40
  %42 = fptrunc double %41 to float
  %43 = tail call fastcc float @VividLight(float noundef %35, float noundef %13, float noundef %42, float noundef %14) #18
  %44 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  %45 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %46 = load float, ptr %45, align 4, !tbaa !59
  %47 = fpext float %46 to double
  %48 = fmul double %47, 0x3EF0001000100010
  %49 = fmul double %48, %33
  %50 = fptrunc double %49 to float
  %51 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %52 = load float, ptr %51, align 4, !tbaa !59
  %53 = fpext float %52 to double
  %54 = fmul double %53, 0x3EF0001000100010
  %55 = fmul double %54, %40
  %56 = fptrunc double %55 to float
  %57 = tail call fastcc float @VividLight(float noundef %50, float noundef %13, float noundef %56, float noundef %14) #18
  %58 = insertelement <2 x float> poison, float %43, i64 0
  %59 = insertelement <2 x float> %58, float %57, i64 1
  %60 = insertelement <2 x float> poison, float %28, i64 0
  %61 = shufflevector <2 x float> %60, <2 x float> poison, <2 x i32> zeroinitializer
  %62 = fmul <2 x float> %59, %61
  store <2 x float> %62, ptr %44, align 8, !tbaa !30
  %63 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %64 = load float, ptr %63, align 8, !tbaa !60
  %65 = fpext float %64 to double
  %66 = fmul double %65, 0x3EF0001000100010
  %67 = fmul double %66, %33
  %68 = fptrunc double %67 to float
  %69 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %70 = load float, ptr %69, align 8, !tbaa !60
  %71 = fpext float %70 to double
  %72 = fmul double %71, 0x3EF0001000100010
  %73 = fmul double %72, %40
  %74 = fptrunc double %73 to float
  %75 = tail call fastcc float @VividLight(float noundef %68, float noundef %13, float noundef %74, float noundef %14) #18
  %76 = fmul float %75, %28
  %77 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 7
  store float %76, ptr %77, align 8, !tbaa !60
  %78 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %79 = load i32, ptr %78, align 4, !tbaa !65
  %80 = icmp eq i32 %79, 12
  br i1 %80, label %81, label %97

81:                                               ; preds = %3
  %82 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %83 = load float, ptr %82, align 8, !tbaa !62
  %84 = fpext float %83 to double
  %85 = fmul double %84, 0x3EF0001000100010
  %86 = fmul double %85, %33
  %87 = fptrunc double %86 to float
  %88 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %89 = load float, ptr %88, align 8, !tbaa !62
  %90 = fpext float %89 to double
  %91 = fmul double %90, 0x3EF0001000100010
  %92 = fmul double %91, %40
  %93 = fptrunc double %92 to float
  %94 = tail call fastcc float @VividLight(float noundef %87, float noundef %13, float noundef %93, float noundef %14) #18
  %95 = fmul float %94, %28
  %96 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 9
  store float %95, ptr %96, align 8, !tbaa !62
  br label %97

97:                                               ; preds = %81, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CompositePinLight(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #11 {
  %4 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %5 = load float, ptr %4, align 4, !tbaa !47
  %6 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %7 = load float, ptr %6, align 4, !tbaa !47
  %8 = insertelement <2 x float> poison, float %5, i64 0
  %9 = insertelement <2 x float> %8, float %7, i64 1
  %10 = fpext <2 x float> %9 to <2 x double>
  %11 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %10, <2 x double> <double 0xBEF0001000100010, double 0xBEF0001000100010>, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %12 = fptrunc <2 x double> %11 to <2 x float>
  %13 = extractelement <2 x float> %12, i64 0
  %14 = extractelement <2 x float> %12, i64 1
  %15 = fadd float %13, %14
  %16 = fneg float %13
  %17 = tail call float @llvm.fmuladd.f32(float %16, float %14, float %15)
  %18 = tail call fastcc float @RoundToUnity(float noundef %17) #18
  %19 = fpext float %18 to double
  %20 = fsub double 1.000000e+00, %19
  %21 = fmul double %20, 6.553500e+04
  %22 = fptrunc double %21 to float
  %23 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 8
  store float %22, ptr %23, align 4, !tbaa !47
  %24 = tail call double @llvm.fabs.f64(double %19)
  %25 = fcmp olt double %24, 1.000000e-15
  %26 = fdiv double 6.553500e+04, %19
  %27 = select i1 %25, double 0x440C6BD8BA3ED9CB, double %26
  %28 = fptrunc double %27 to float
  %29 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %30 = load float, ptr %29, align 8, !tbaa !58
  %31 = fpext float %30 to double
  %32 = fmul double %31, 0x3EF0001000100010
  %33 = fpext float %13 to double
  %34 = fmul double %32, %33
  %35 = fptrunc double %34 to float
  %36 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %37 = load float, ptr %36, align 8, !tbaa !58
  %38 = fpext float %37 to double
  %39 = fmul double %38, 0x3EF0001000100010
  %40 = fpext float %14 to double
  %41 = fmul double %39, %40
  %42 = fptrunc double %41 to float
  %43 = tail call fastcc float @PinLight(float noundef %35, float noundef %13, float noundef %42, float noundef %14) #18
  %44 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  %45 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %46 = load float, ptr %45, align 4, !tbaa !59
  %47 = fpext float %46 to double
  %48 = fmul double %47, 0x3EF0001000100010
  %49 = fmul double %48, %33
  %50 = fptrunc double %49 to float
  %51 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %52 = load float, ptr %51, align 4, !tbaa !59
  %53 = fpext float %52 to double
  %54 = fmul double %53, 0x3EF0001000100010
  %55 = fmul double %54, %40
  %56 = fptrunc double %55 to float
  %57 = tail call fastcc float @PinLight(float noundef %50, float noundef %13, float noundef %56, float noundef %14) #18
  %58 = insertelement <2 x float> poison, float %43, i64 0
  %59 = insertelement <2 x float> %58, float %57, i64 1
  %60 = insertelement <2 x float> poison, float %28, i64 0
  %61 = shufflevector <2 x float> %60, <2 x float> poison, <2 x i32> zeroinitializer
  %62 = fmul <2 x float> %59, %61
  store <2 x float> %62, ptr %44, align 8, !tbaa !30
  %63 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %64 = load float, ptr %63, align 8, !tbaa !60
  %65 = fpext float %64 to double
  %66 = fmul double %65, 0x3EF0001000100010
  %67 = fmul double %66, %33
  %68 = fptrunc double %67 to float
  %69 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %70 = load float, ptr %69, align 8, !tbaa !60
  %71 = fpext float %70 to double
  %72 = fmul double %71, 0x3EF0001000100010
  %73 = fmul double %72, %40
  %74 = fptrunc double %73 to float
  %75 = tail call fastcc float @PinLight(float noundef %68, float noundef %13, float noundef %74, float noundef %14) #18
  %76 = fmul float %75, %28
  %77 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 7
  store float %76, ptr %77, align 8, !tbaa !60
  %78 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %79 = load i32, ptr %78, align 4, !tbaa !65
  %80 = icmp eq i32 %79, 12
  br i1 %80, label %81, label %97

81:                                               ; preds = %3
  %82 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %83 = load float, ptr %82, align 8, !tbaa !62
  %84 = fpext float %83 to double
  %85 = fmul double %84, 0x3EF0001000100010
  %86 = fmul double %85, %33
  %87 = fptrunc double %86 to float
  %88 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %89 = load float, ptr %88, align 8, !tbaa !62
  %90 = fpext float %89 to double
  %91 = fmul double %90, 0x3EF0001000100010
  %92 = fmul double %91, %40
  %93 = fptrunc double %92 to float
  %94 = tail call fastcc float @PinLight(float noundef %87, float noundef %13, float noundef %93, float noundef %14) #18
  %95 = fmul float %94, %28
  %96 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 9
  store float %95, ptr %96, align 8, !tbaa !62
  br label %97

97:                                               ; preds = %81, %3
  ret void
}

; Function Attrs: optsize
declare i32 @IsMagickColorSimilar(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CompositeBumpmap(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #11 {
  %4 = tail call fastcc float @MagickPixelIntensity(ptr noundef %0) #18
  %5 = fpext float %4 to double
  %6 = fmul double %5, 0x3EF0001000100010
  %7 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %8 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  %9 = load <2 x float>, ptr %7, align 8, !tbaa !30
  %10 = fpext <2 x float> %9 to <2 x double>
  %11 = insertelement <2 x double> poison, double %6, i64 0
  %12 = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> zeroinitializer
  %13 = fmul <2 x double> %12, %10
  %14 = fptrunc <2 x double> %13 to <2 x float>
  store <2 x float> %14, ptr %8, align 8, !tbaa !30
  %15 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %16 = load float, ptr %15, align 8, !tbaa !60
  %17 = fpext float %16 to double
  %18 = fmul double %6, %17
  %19 = fptrunc double %18 to float
  %20 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 7
  store float %19, ptr %20, align 8, !tbaa !60
  %21 = fmul float %4, 0x3EF0001000000000
  %22 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %23 = load float, ptr %22, align 4, !tbaa !47
  %24 = fmul float %21, %23
  %25 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 8
  store float %24, ptr %25, align 4, !tbaa !47
  %26 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !65
  %28 = icmp eq i32 %27, 12
  br i1 %28, label %29, label %36

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %31 = load float, ptr %30, align 8, !tbaa !62
  %32 = fpext float %31 to double
  %33 = fmul double %6, %32
  %34 = fptrunc double %33 to float
  %35 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 9
  store float %34, ptr %35, align 8, !tbaa !62
  br label %36

36:                                               ; preds = %29, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @MagickPixelCompositeBlend(ptr nocapture noundef readonly %0, float noundef %1, ptr nocapture noundef readonly %2, float noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #11 {
  %6 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %7 = load float, ptr %6, align 4, !tbaa !47
  %8 = fsub float 6.553500e+04, %7
  %9 = fneg float %1
  %10 = tail call float @llvm.fmuladd.f32(float %9, float %8, float 6.553500e+04)
  %11 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 8
  %12 = load float, ptr %11, align 4, !tbaa !47
  %13 = fsub float 6.553500e+04, %12
  %14 = fneg float %3
  %15 = tail call float @llvm.fmuladd.f32(float %14, float %13, float 6.553500e+04)
  tail call fastcc void @MagickPixelCompositePlus(ptr noundef %0, float noundef %10, ptr noundef %2, float noundef %15, ptr noundef %4) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CompositeThreshold(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2, float noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #11 {
  %6 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %7 = load float, ptr %6, align 8, !tbaa !58
  %8 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %9 = load float, ptr %8, align 8, !tbaa !58
  %10 = tail call fastcc float @Threshold(float noundef %7, float noundef %9, float noundef %2, float noundef %3) #18
  %11 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 5
  store float %10, ptr %11, align 8, !tbaa !58
  %12 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %13 = load float, ptr %12, align 4, !tbaa !59
  %14 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %15 = load float, ptr %14, align 4, !tbaa !59
  %16 = tail call fastcc float @Threshold(float noundef %13, float noundef %15, float noundef %2, float noundef %3) #18
  %17 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 6
  store float %16, ptr %17, align 4, !tbaa !59
  %18 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %19 = load float, ptr %18, align 8, !tbaa !60
  %20 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %21 = load float, ptr %20, align 8, !tbaa !60
  %22 = tail call fastcc float @Threshold(float noundef %19, float noundef %21, float noundef %2, float noundef %3) #18
  %23 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 7
  store float %22, ptr %23, align 8, !tbaa !60
  %24 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %25 = load float, ptr %24, align 4, !tbaa !47
  %26 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %27 = load float, ptr %26, align 4, !tbaa !47
  %28 = tail call fastcc float @Threshold(float noundef %25, float noundef %27, float noundef %2, float noundef %3) #18
  %29 = fsub float 6.553500e+04, %28
  %30 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 8
  store float %29, ptr %30, align 4, !tbaa !47
  %31 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !65
  %33 = icmp eq i32 %32, 12
  br i1 %33, label %34, label %41

34:                                               ; preds = %5
  %35 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %36 = load float, ptr %35, align 8, !tbaa !62
  %37 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %38 = load float, ptr %37, align 8, !tbaa !62
  %39 = tail call fastcc float @Threshold(float noundef %36, float noundef %38, float noundef %2, float noundef %3) #18
  %40 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 9
  store float %39, ptr %40, align 8, !tbaa !62
  br label %41

41:                                               ; preds = %34, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i16 @MagickPixelIntensityToQuantum(ptr nocapture noundef readonly %0) unnamed_addr #14 {
  %2 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !65
  %4 = icmp eq i32 %3, 2
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %6 = load float, ptr %5, align 8, !tbaa !58
  br i1 %4, label %19, label %7

7:                                                ; preds = %1
  %8 = fpext float %6 to double
  %9 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %10 = load float, ptr %9, align 4, !tbaa !59
  %11 = fpext float %10 to double
  %12 = fmul double %11, 0x3FE6E29307AF20EA
  %13 = tail call double @llvm.fmuladd.f64(double %8, double 2.126560e-01, double %12)
  %14 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %15 = load float, ptr %14, align 8, !tbaa !60
  %16 = fpext float %15 to double
  %17 = tail call double @llvm.fmuladd.f64(double %16, double 7.218600e-02, double %13)
  %18 = fptrunc double %17 to float
  br label %19

19:                                               ; preds = %1, %7
  %20 = phi float [ %18, %7 ], [ %6, %1 ]
  %21 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %20) #18
  ret i16 %21
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn memory(write) uwtable
define internal fastcc void @CompositeHCL(float noundef %0, float noundef %1, float noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) unnamed_addr #15 {
  %7 = fpext float %0 to double
  %8 = fpext float %1 to double
  %9 = fpext float %2 to double
  %10 = tail call fastcc double @MagickMax(double noundef %8, double noundef %9) #18
  %11 = tail call fastcc double @MagickMax(double noundef %7, double noundef %10) #18
  %12 = tail call fastcc double @MagickMin(double noundef %8, double noundef %9) #18
  %13 = tail call fastcc double @MagickMin(double noundef %7, double noundef %12) #18
  %14 = fsub double %11, %13
  %15 = fcmp oeq double %14, 0.000000e+00
  br i1 %15, label %36, label %16

16:                                               ; preds = %6
  %17 = fptrunc double %11 to float
  %18 = fcmp oeq float %17, %0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = fsub double %8, %9
  %21 = fdiv double %20, %14
  %22 = fadd double %21, 6.000000e+00
  %23 = tail call double @fmod(double noundef %22, double noundef 6.000000e+00) #19
  br label %36

24:                                               ; preds = %16
  %25 = fcmp oeq float %17, %1
  br i1 %25, label %26, label %30

26:                                               ; preds = %24
  %27 = fsub double %9, %7
  %28 = fdiv double %27, %14
  %29 = fadd double %28, 2.000000e+00
  br label %36

30:                                               ; preds = %24
  %31 = fcmp oeq float %17, %2
  br i1 %31, label %32, label %36

32:                                               ; preds = %30
  %33 = fsub double %7, %8
  %34 = fdiv double %33, %14
  %35 = fadd double %34, 4.000000e+00
  br label %36

36:                                               ; preds = %6, %19, %30, %32, %26
  %37 = phi double [ %23, %19 ], [ %29, %26 ], [ %35, %32 ], [ 0.000000e+00, %30 ], [ 0.000000e+00, %6 ]
  %38 = fdiv double %37, 6.000000e+00
  store double %38, ptr %3, align 8, !tbaa !40
  %39 = fmul double %14, 0x3EF0001000100010
  store double %39, ptr %4, align 8, !tbaa !40
  %40 = fmul double %8, 5.868110e-01
  %41 = tail call double @llvm.fmuladd.f64(double %7, double 2.988390e-01, double %40)
  %42 = tail call double @llvm.fmuladd.f64(double %9, double 1.143500e-01, double %41)
  %43 = fmul double %42, 0x3EF0001000100010
  store double %43, ptr %5, align 8, !tbaa !40
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn memory(write) uwtable
define internal fastcc void @HCLComposite(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) unnamed_addr #15 {
  %7 = fmul double %0, 6.000000e+00
  %8 = tail call double @fmod(double noundef %7, double noundef 2.000000e+00) #19
  %9 = fadd double %8, -1.000000e+00
  %10 = tail call double @llvm.fabs.f64(double %9)
  %11 = fsub double 1.000000e+00, %10
  %12 = fmul double %11, %1
  %13 = fcmp oge double %7, 0.000000e+00
  %14 = fcmp olt double %7, 1.000000e+00
  %15 = and i1 %13, %14
  br i1 %15, label %37, label %16

16:                                               ; preds = %6
  %17 = fcmp oge double %7, 1.000000e+00
  %18 = fcmp olt double %7, 2.000000e+00
  %19 = and i1 %17, %18
  br i1 %19, label %37, label %20

20:                                               ; preds = %16
  %21 = fcmp oge double %7, 2.000000e+00
  %22 = fcmp olt double %7, 3.000000e+00
  %23 = and i1 %21, %22
  br i1 %23, label %37, label %24

24:                                               ; preds = %20
  %25 = fcmp oge double %7, 3.000000e+00
  %26 = fcmp olt double %7, 4.000000e+00
  %27 = and i1 %25, %26
  br i1 %27, label %37, label %28

28:                                               ; preds = %24
  %29 = fcmp oge double %7, 4.000000e+00
  %30 = fcmp olt double %7, 5.000000e+00
  %31 = and i1 %29, %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = fcmp oge double %7, 5.000000e+00
  %34 = fcmp olt double %7, 6.000000e+00
  %35 = and i1 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %37

37:                                               ; preds = %28, %24, %20, %16, %6, %32, %36
  %38 = phi double [ 0.000000e+00, %36 ], [ 0.000000e+00, %32 ], [ %12, %6 ], [ %1, %16 ], [ %1, %20 ], [ %12, %24 ], [ 0.000000e+00, %28 ]
  %39 = phi double [ %1, %36 ], [ 0.000000e+00, %32 ], [ %1, %6 ], [ %12, %16 ], [ 0.000000e+00, %20 ], [ 0.000000e+00, %24 ], [ %12, %28 ]
  %40 = phi double [ %12, %36 ], [ 0.000000e+00, %32 ], [ 0.000000e+00, %6 ], [ 0.000000e+00, %16 ], [ %12, %20 ], [ %1, %24 ], [ %1, %28 ]
  %41 = fmul double %38, 5.868110e-01
  %42 = tail call double @llvm.fmuladd.f64(double %39, double 2.988390e-01, double %41)
  %43 = tail call double @llvm.fmuladd.f64(double %40, double 1.143500e-01, double %42)
  %44 = fsub double %2, %43
  %45 = fadd double %39, %44
  %46 = fmul double %45, 6.553500e+04
  %47 = fptrunc double %46 to float
  store float %47, ptr %3, align 4, !tbaa !30
  %48 = fadd double %38, %44
  %49 = fmul double %48, 6.553500e+04
  %50 = fptrunc double %49 to float
  store float %50, ptr %4, align 4, !tbaa !30
  %51 = fadd double %40, %44
  %52 = fmul double %51, 6.553500e+04
  %53 = fptrunc double %52 to float
  store float %53, ptr %5, align 4, !tbaa !30
  ret void
}

; Function Attrs: noinline norecurse nounwind optsize uwtable
define internal fastcc void @ConvertRGBToCMYK(ptr nocapture noundef %0) unnamed_addr #16 {
  %2 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !65
  %4 = icmp eq i32 %3, 13
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %6 = load float, ptr %5, align 8, !tbaa !58
  br i1 %4, label %20, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %9 = load float, ptr %8, align 4, !tbaa !59
  %10 = insertelement <2 x float> poison, float %6, i64 0
  %11 = insertelement <2 x float> %10, float %9, i64 1
  %12 = fpext <2 x float> %11 to <2 x double>
  %13 = fmul <2 x double> %12, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %14 = fptrunc <2 x double> %13 to <2 x float>
  %15 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %16 = load float, ptr %15, align 8, !tbaa !60
  %17 = fpext float %16 to double
  %18 = fmul double %17, 0x3EF0001000100010
  %19 = fptrunc double %18 to float
  br label %30

20:                                               ; preds = %1
  %21 = tail call float @DecodePixelGamma(float noundef %6) #20
  %22 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %23 = load float, ptr %22, align 4, !tbaa !59
  %24 = tail call float @DecodePixelGamma(float noundef %23) #20
  %25 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %26 = load float, ptr %25, align 8, !tbaa !60
  %27 = tail call float @DecodePixelGamma(float noundef %26) #20
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
  store i32 12, ptr %2, align 4, !tbaa !65
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
  store <2 x float> %70, ptr %61, align 8, !tbaa !30
  %71 = fmul float %60, 6.553500e+04
  %72 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  store float %71, ptr %72, align 8, !tbaa !60
  %73 = fmul float %54, 6.553500e+04
  br label %74

74:                                               ; preds = %42, %46
  %75 = phi float [ %73, %46 ], [ 6.553500e+04, %42 ]
  %76 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  store float %75, ptr %76, align 8, !tbaa !62
  ret void
}

; Function Attrs: optsize
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @PerceptibleReciprocal(double noundef %0) unnamed_addr #3 {
  %2 = fcmp olt double %0, 0.000000e+00
  %3 = select i1 %2, double -1.000000e+00, double 1.000000e+00
  %4 = fmul double %3, %0
  %5 = fcmp ult double %4, 1.000000e-15
  %6 = fdiv double 1.000000e+00, %0
  %7 = fdiv double %3, 1.000000e-15
  %8 = select i1 %5, double %7, double %6
  ret double %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc float @MagickOver_(float noundef %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #3 {
  %5 = fpext float %1 to double
  %6 = tail call double @llvm.fmuladd.f64(double %5, double 0xBEF0001000100010, double 1.000000e+00)
  %7 = fpext float %0 to double
  %8 = fpext float %3 to double
  %9 = tail call double @llvm.fmuladd.f64(double %8, double 0xBEF0001000100010, double 1.000000e+00)
  %10 = fpext float %2 to double
  %11 = fmul double %9, %10
  %12 = fmul double %11, 0x3EF0001000100010
  %13 = fmul double %12, %5
  %14 = tail call double @llvm.fmuladd.f64(double %6, double %7, double %13)
  %15 = fptrunc double %14 to float
  ret float %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @In(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #3 {
  %4 = fmul float %0, %1
  %5 = fmul float %4, %2
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @Out(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #3 {
  %4 = fmul float %0, %1
  %5 = fpext float %4 to double
  %6 = fpext float %2 to double
  %7 = fsub double 1.000000e+00, %6
  %8 = fmul double %7, %5
  %9 = fptrunc double %8 to float
  ret float %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @Atop(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #3 {
  %4 = fmul float %0, %1
  %5 = fpext float %4 to double
  %6 = fpext float %2 to double
  %7 = fpext float %1 to double
  %8 = fsub double 1.000000e+00, %7
  %9 = tail call double @llvm.fmuladd.f64(double %6, double %8, double %5)
  %10 = fptrunc double %9 to float
  ret float %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @Xor(float noundef %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #3 {
  %5 = fpext float %0 to double
  %6 = fpext float %3 to double
  %7 = fsub double 1.000000e+00, %6
  %8 = fpext float %2 to double
  %9 = fpext float %1 to double
  %10 = fsub double 1.000000e+00, %9
  %11 = fmul double %10, %8
  %12 = tail call double @llvm.fmuladd.f64(double %5, double %7, double %11)
  %13 = fptrunc double %12 to float
  ret float %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @MagickPixelCompositePlus(ptr nocapture noundef readonly %0, float noundef %1, ptr nocapture noundef readonly %2, float noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #11 {
  %6 = insertelement <2 x float> poison, float %1, i64 0
  %7 = insertelement <2 x float> %6, float %3, i64 1
  %8 = fpext <2 x float> %7 to <2 x double>
  %9 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %8, <2 x double> <double 0xBEF0001000100010, double 0xBEF0001000100010>, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %10 = fptrunc <2 x double> %9 to <2 x float>
  %11 = extractelement <2 x float> %10, i64 0
  %12 = extractelement <2 x float> %10, i64 1
  %13 = fadd float %11, %12
  %14 = tail call fastcc float @RoundToUnity(float noundef %13) #18
  %15 = fpext float %14 to double
  %16 = fsub double 1.000000e+00, %15
  %17 = tail call fastcc double @PerceptibleReciprocal(double noundef %15) #18
  %18 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %19 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  %20 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 5
  %21 = load <2 x float>, ptr %18, align 8, !tbaa !30
  %22 = load <2 x float>, ptr %19, align 8, !tbaa !30
  %23 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %24 = fmul <2 x float> %22, %23
  %25 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer
  %26 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %25, <2 x float> %21, <2 x float> %24)
  %27 = fpext <2 x float> %26 to <2 x double>
  %28 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %29 = load float, ptr %28, align 8, !tbaa !60
  %30 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 7
  %31 = load float, ptr %30, align 8, !tbaa !60
  %32 = fmul float %31, %12
  %33 = tail call float @llvm.fmuladd.f32(float %11, float %29, float %32)
  %34 = fpext float %33 to double
  %35 = insertelement <4 x double> poison, double %17, i64 0
  %36 = insertelement <4 x double> %35, double %16, i64 1
  %37 = shufflevector <4 x double> %36, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %38 = shufflevector <2 x double> %27, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %39 = insertelement <4 x double> %38, double 6.553500e+04, i64 3
  %40 = insertelement <4 x double> %39, double %34, i64 2
  %41 = fmul <4 x double> %37, %40
  %42 = fptrunc <4 x double> %41 to <4 x float>
  store <4 x float> %42, ptr %20, align 8, !tbaa !30
  %43 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 1
  %44 = load i32, ptr %43, align 4, !tbaa !65
  %45 = icmp eq i32 %44, 12
  br i1 %45, label %46, label %57

46:                                               ; preds = %5
  %47 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %48 = load float, ptr %47, align 8, !tbaa !62
  %49 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 9
  %50 = load float, ptr %49, align 8, !tbaa !62
  %51 = fmul float %50, %12
  %52 = tail call float @llvm.fmuladd.f32(float %11, float %48, float %51)
  %53 = fpext float %52 to double
  %54 = fmul double %17, %53
  %55 = fptrunc double %54 to float
  %56 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 9
  store float %55, ptr %56, align 8, !tbaa !62
  br label %57

57:                                               ; preds = %46, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @RoundToUnity(float noundef %0) unnamed_addr #3 {
  %2 = fcmp olt float %0, 0.000000e+00
  %3 = fcmp ogt float %0, 1.000000e+00
  %4 = select i1 %3, float 1.000000e+00, float %0
  %5 = select i1 %2, float 0.000000e+00, float %4
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @Minus(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #3 {
  %4 = fadd float %0, %2
  %5 = fmul float %2, -2.000000e+00
  %6 = tail call float @llvm.fmuladd.f32(float %5, float %1, float %4)
  ret float %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc float @ModulusAdd(float noundef %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #3 {
  %5 = fadd float %0, %2
  %6 = fcmp ogt float %5, 6.553500e+04
  %7 = fadd float %5, -6.553500e+04
  %8 = select i1 %6, float %7, float %5
  %9 = fmul float %8, %1
  %10 = fmul float %9, %3
  %11 = fpext float %10 to double
  %12 = fmul float %0, %1
  %13 = fpext float %12 to double
  %14 = fpext float %3 to double
  %15 = fsub double 1.000000e+00, %14
  %16 = tail call double @llvm.fmuladd.f64(double %13, double %15, double %11)
  %17 = fmul float %2, %3
  %18 = fpext float %17 to double
  %19 = fpext float %1 to double
  %20 = fsub double 1.000000e+00, %19
  %21 = tail call double @llvm.fmuladd.f64(double %18, double %20, double %16)
  %22 = fptrunc double %21 to float
  ret float %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc float @ModulusSubtract(float noundef %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #3 {
  %5 = fsub float %0, %2
  %6 = fcmp olt float %5, 0.000000e+00
  %7 = fadd float %5, 6.553500e+04
  %8 = select i1 %6, float %7, float %5
  %9 = fmul float %8, %1
  %10 = fmul float %9, %3
  %11 = fpext float %10 to double
  %12 = fmul float %0, %1
  %13 = fpext float %12 to double
  %14 = fpext float %3 to double
  %15 = fsub double 1.000000e+00, %14
  %16 = tail call double @llvm.fmuladd.f64(double %13, double %15, double %11)
  %17 = fmul float %2, %3
  %18 = fpext float %17 to double
  %19 = fpext float %1 to double
  %20 = fsub double 1.000000e+00, %19
  %21 = tail call double @llvm.fmuladd.f64(double %18, double %20, double %16)
  %22 = fptrunc double %21 to float
  ret float %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @Difference(float noundef %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #3 {
  %5 = fmul float %2, %3
  %6 = tail call float @llvm.fmuladd.f32(float %1, float %0, float %5)
  %7 = fpext float %6 to double
  %8 = fmul float %1, %3
  %9 = fpext float %8 to double
  %10 = fpext float %0 to double
  %11 = fpext float %2 to double
  %12 = tail call fastcc double @MagickMin(double noundef %10, double noundef %11) #18
  %13 = fmul double %9, -2.000000e+00
  %14 = tail call double @llvm.fmuladd.f64(double %13, double %12, double %7)
  %15 = fptrunc double %14 to float
  ret float %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @MagickMin(double noundef %0, double noundef %1) unnamed_addr #3 {
  %3 = fcmp olt double %0, %1
  %4 = select i1 %3, double %0, double %1
  ret double %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc float @Exclusion(float noundef %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #3 {
  %5 = fmul float %1, %2
  %6 = tail call float @llvm.fmuladd.f32(float %0, float %3, float %5)
  %7 = fpext float %6 to double
  %8 = fpext float %0 to double
  %9 = fpext float %2 to double
  %10 = fmul double %8, -2.000000e+00
  %11 = tail call double @llvm.fmuladd.f64(double %10, double %9, double %7)
  %12 = fpext float %3 to double
  %13 = fsub double 1.000000e+00, %12
  %14 = tail call double @llvm.fmuladd.f64(double %8, double %13, double %11)
  %15 = fpext float %1 to double
  %16 = fsub double 1.000000e+00, %15
  %17 = tail call double @llvm.fmuladd.f64(double %9, double %16, double %14)
  %18 = fptrunc double %17 to float
  ret float %18
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @Multiply(float noundef %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #3 {
  %5 = fmul float %0, %2
  %6 = fpext float %5 to double
  %7 = fpext float %0 to double
  %8 = fpext float %3 to double
  %9 = fsub double 1.000000e+00, %8
  %10 = tail call double @llvm.fmuladd.f64(double %7, double %9, double %6)
  %11 = fpext float %2 to double
  %12 = fpext float %1 to double
  %13 = fsub double 1.000000e+00, %12
  %14 = tail call double @llvm.fmuladd.f64(double %11, double %13, double %10)
  %15 = fptrunc double %14 to float
  ret float %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @Screen(float noundef %0, float noundef %1) unnamed_addr #3 {
  %3 = fadd float %0, %1
  %4 = fneg float %0
  %5 = tail call float @llvm.fmuladd.f32(float %4, float %1, float %3)
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc float @Divide(float noundef %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #3 {
  %5 = fpext float %0 to double
  %6 = tail call double @llvm.fabs.f64(double %5)
  %7 = fcmp olt double %6, 1.000000e-15
  %8 = fpext float %2 to double
  %9 = tail call double @llvm.fabs.f64(double %8)
  %10 = fcmp olt double %9, 1.000000e-15
  %11 = and i1 %7, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %4
  %13 = fpext float %3 to double
  %14 = fsub double 1.000000e+00, %13
  %15 = fpext float %1 to double
  %16 = fsub double 1.000000e+00, %15
  %17 = fmul double %16, %8
  %18 = tail call double @llvm.fmuladd.f64(double %5, double %14, double %17)
  br label %41

19:                                               ; preds = %4
  %20 = fcmp olt double %9, 1.000000e-15
  br i1 %20, label %21, label %30

21:                                               ; preds = %19
  %22 = fmul float %1, %3
  %23 = fpext float %22 to double
  %24 = fpext float %3 to double
  %25 = fsub double 1.000000e+00, %24
  %26 = tail call double @llvm.fmuladd.f64(double %5, double %25, double %23)
  %27 = fpext float %1 to double
  %28 = fsub double 1.000000e+00, %27
  %29 = tail call double @llvm.fmuladd.f64(double %8, double %28, double %26)
  br label %41

30:                                               ; preds = %19
  %31 = fmul float %0, %3
  %32 = fmul float %31, %3
  %33 = fdiv float %32, %2
  %34 = fpext float %33 to double
  %35 = fpext float %3 to double
  %36 = fsub double 1.000000e+00, %35
  %37 = tail call double @llvm.fmuladd.f64(double %5, double %36, double %34)
  %38 = fpext float %1 to double
  %39 = fsub double 1.000000e+00, %38
  %40 = tail call double @llvm.fmuladd.f64(double %8, double %39, double %37)
  br label %41

41:                                               ; preds = %30, %21, %12
  %42 = phi double [ %18, %12 ], [ %29, %21 ], [ %40, %30 ]
  %43 = fptrunc double %42 to float
  ret float %43
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc float @Darken(float noundef %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #3 {
  %5 = fcmp olt float %0, %2
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = tail call fastcc float @MagickOver_(float noundef %0, float noundef %1, float noundef %2, float noundef %3) #18
  br label %10

8:                                                ; preds = %4
  %9 = tail call fastcc float @MagickOver_(float noundef %2, float noundef %3, float noundef %0, float noundef %1) #18
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi float [ %7, %6 ], [ %9, %8 ]
  ret float %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @MagickMax(double noundef %0, double noundef %1) unnamed_addr #3 {
  %3 = fcmp ogt double %0, %1
  %4 = select i1 %3, double %0, double %1
  ret double %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc float @Lighten(float noundef %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #3 {
  %5 = fcmp ogt float %0, %2
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = tail call fastcc float @MagickOver_(float noundef %0, float noundef %1, float noundef %2, float noundef %3) #18
  br label %10

8:                                                ; preds = %4
  %9 = tail call fastcc float @MagickOver_(float noundef %2, float noundef %3, float noundef %0, float noundef %1) #18
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi float [ %7, %6 ], [ %9, %8 ]
  ret float %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @MagickPixelIntensity(ptr nocapture noundef readonly %0) unnamed_addr #14 {
  %2 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !65
  %4 = icmp eq i32 %3, 2
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %6 = load float, ptr %5, align 8, !tbaa !58
  br i1 %4, label %19, label %7

7:                                                ; preds = %1
  %8 = fpext float %6 to double
  %9 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %10 = load float, ptr %9, align 4, !tbaa !59
  %11 = fpext float %10 to double
  %12 = fmul double %11, 0x3FE6E29307AF20EA
  %13 = tail call double @llvm.fmuladd.f64(double %8, double 2.126560e-01, double %12)
  %14 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %15 = load float, ptr %14, align 8, !tbaa !60
  %16 = fpext float %15 to double
  %17 = tail call double @llvm.fmuladd.f64(double %16, double 7.218600e-02, double %13)
  %18 = fptrunc double %17 to float
  br label %19

19:                                               ; preds = %1, %7
  %20 = phi float [ %18, %7 ], [ %6, %1 ]
  ret float %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @Mathematics(float noundef %0, float noundef %1, float noundef %2, float noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #14 {
  %6 = load double, ptr %4, align 8, !tbaa !35
  %7 = fpext float %0 to double
  %8 = fmul double %6, %7
  %9 = fpext float %2 to double
  %10 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 1
  %11 = load double, ptr %10, align 8, !tbaa !52
  %12 = fmul double %11, %7
  %13 = fpext float %3 to double
  %14 = fmul double %12, %13
  %15 = tail call double @llvm.fmuladd.f64(double %8, double %9, double %14)
  %16 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 2
  %17 = load double, ptr %16, align 8, !tbaa !37
  %18 = fmul double %17, %9
  %19 = fpext float %1 to double
  %20 = tail call double @llvm.fmuladd.f64(double %18, double %19, double %15)
  %21 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 3
  %22 = load double, ptr %21, align 8, !tbaa !38
  %23 = fmul double %22, %19
  %24 = tail call double @llvm.fmuladd.f64(double %23, double %13, double %20)
  %25 = fsub double 1.000000e+00, %13
  %26 = tail call double @llvm.fmuladd.f64(double %7, double %25, double %24)
  %27 = fsub double 1.000000e+00, %19
  %28 = tail call double @llvm.fmuladd.f64(double %9, double %27, double %26)
  %29 = fptrunc double %28 to float
  ret float %29
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc float @ColorDodge(float noundef %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #3 {
  %5 = fmul float %1, %2
  %6 = tail call float @llvm.fmuladd.f32(float %0, float %3, float %5)
  %7 = fmul float %1, %3
  %8 = fcmp ult float %6, %7
  %9 = fmul float %5, %1
  %10 = fsub float %1, %0
  %11 = fdiv float %9, %10
  %12 = select i1 %8, float %11, float %7
  %13 = fpext float %12 to double
  %14 = fpext float %0 to double
  %15 = fpext float %3 to double
  %16 = fsub double 1.000000e+00, %15
  %17 = tail call double @llvm.fmuladd.f64(double %14, double %16, double %13)
  %18 = fpext float %2 to double
  %19 = fpext float %1 to double
  %20 = fsub double 1.000000e+00, %19
  %21 = tail call double @llvm.fmuladd.f64(double %18, double %20, double %17)
  %22 = fptrunc double %21 to float
  ret float %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc float @ColorBurn(float noundef %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #3 {
  %5 = fpext float %0 to double
  %6 = tail call double @llvm.fabs.f64(double %5)
  %7 = fcmp olt double %6, 1.000000e-15
  br i1 %7, label %8, label %20

8:                                                ; preds = %4
  %9 = fsub float %2, %3
  %10 = tail call float @llvm.fabs.f32(float %9)
  %11 = fpext float %10 to double
  %12 = fcmp olt double %11, 1.000000e-15
  br i1 %12, label %13, label %20

13:                                               ; preds = %8
  %14 = fmul float %1, %3
  %15 = fpext float %14 to double
  %16 = fpext float %2 to double
  %17 = fpext float %1 to double
  %18 = fsub double 1.000000e+00, %17
  %19 = tail call double @llvm.fmuladd.f64(double %16, double %18, double %15)
  br label %44

20:                                               ; preds = %8, %4
  %21 = fcmp olt double %5, 1.000000e-15
  br i1 %21, label %22, label %27

22:                                               ; preds = %20
  %23 = fpext float %2 to double
  %24 = fpext float %1 to double
  %25 = fsub double 1.000000e+00, %24
  %26 = fmul double %25, %23
  br label %44

27:                                               ; preds = %20
  %28 = fmul float %1, %3
  %29 = fpext float %28 to double
  %30 = fpext float %1 to double
  %31 = fpext float %3 to double
  %32 = fsub float %3, %2
  %33 = fmul float %32, %1
  %34 = fdiv float %33, %0
  %35 = fpext float %34 to double
  %36 = tail call fastcc double @MagickMin(double noundef %31, double noundef %35) #18
  %37 = fneg double %30
  %38 = tail call double @llvm.fmuladd.f64(double %37, double %36, double %29)
  %39 = fsub double 1.000000e+00, %31
  %40 = tail call double @llvm.fmuladd.f64(double %5, double %39, double %38)
  %41 = fpext float %2 to double
  %42 = fsub double 1.000000e+00, %30
  %43 = tail call double @llvm.fmuladd.f64(double %41, double %42, double %40)
  br label %44

44:                                               ; preds = %27, %22, %13
  %45 = phi double [ %19, %13 ], [ %26, %22 ], [ %43, %27 ]
  %46 = fptrunc double %45 to float
  ret float %46
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @LinearBurn(float noundef %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #3 {
  %5 = fadd float %0, %2
  %6 = fneg float %1
  %7 = tail call float @llvm.fmuladd.f32(float %6, float %3, float %5)
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc float @HardLight(float noundef %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #3 {
  %5 = fpext float %0 to double
  %6 = fmul double %5, 2.000000e+00
  %7 = fpext float %1 to double
  %8 = fcmp olt double %6, %7
  br i1 %8, label %9, label %17

9:                                                ; preds = %4
  %10 = fpext float %2 to double
  %11 = fpext float %3 to double
  %12 = fsub double 1.000000e+00, %11
  %13 = fmul double %12, %5
  %14 = tail call double @llvm.fmuladd.f64(double %6, double %10, double %13)
  %15 = fsub double 1.000000e+00, %7
  %16 = tail call double @llvm.fmuladd.f64(double %10, double %15, double %14)
  br label %32

17:                                               ; preds = %4
  %18 = fmul float %1, %3
  %19 = fpext float %18 to double
  %20 = fsub float %3, %2
  %21 = fpext float %20 to double
  %22 = fsub float %1, %0
  %23 = fpext float %22 to double
  %24 = fmul double %21, -2.000000e+00
  %25 = tail call double @llvm.fmuladd.f64(double %24, double %23, double %19)
  %26 = fpext float %3 to double
  %27 = fsub double 1.000000e+00, %26
  %28 = tail call double @llvm.fmuladd.f64(double %5, double %27, double %25)
  %29 = fpext float %2 to double
  %30 = fsub double 1.000000e+00, %7
  %31 = tail call double @llvm.fmuladd.f64(double %29, double %30, double %28)
  br label %32

32:                                               ; preds = %17, %9
  %33 = phi double [ %16, %9 ], [ %31, %17 ]
  %34 = fptrunc double %33 to float
  ret float %34
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn memory(write) uwtable
define internal fastcc float @SoftLight(float noundef %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #15 {
  %5 = fdiv float %2, %3
  %6 = fpext float %0 to double
  %7 = fmul double %6, 2.000000e+00
  %8 = fpext float %1 to double
  %9 = fcmp olt double %7, %8
  br i1 %9, label %10, label %23

10:                                               ; preds = %4
  %11 = fpext float %2 to double
  %12 = fneg double %8
  %13 = tail call double @llvm.fmuladd.f64(double %6, double 2.000000e+00, double %12)
  %14 = fpext float %5 to double
  %15 = fsub double 1.000000e+00, %14
  %16 = tail call double @llvm.fmuladd.f64(double %13, double %15, double %8)
  %17 = fpext float %3 to double
  %18 = fsub double 1.000000e+00, %17
  %19 = fmul double %18, %6
  %20 = tail call double @llvm.fmuladd.f64(double %11, double %16, double %19)
  %21 = fsub double 1.000000e+00, %8
  %22 = tail call double @llvm.fmuladd.f64(double %11, double %21, double %20)
  br label %67

23:                                               ; preds = %4
  %24 = fcmp ogt double %7, %8
  br i1 %24, label %28, label %25

25:                                               ; preds = %23
  %26 = fpext float %3 to double
  %27 = fpext float %2 to double
  br label %51

28:                                               ; preds = %23
  %29 = fpext float %2 to double
  %30 = fmul double %29, 4.000000e+00
  %31 = fpext float %3 to double
  %32 = fcmp ugt double %30, %31
  br i1 %32, label %51, label %33

33:                                               ; preds = %28
  %34 = fmul float %1, %2
  %35 = fpext float %34 to double
  %36 = fneg double %8
  %37 = tail call double @llvm.fmuladd.f64(double %6, double 2.000000e+00, double %36)
  %38 = fmul double %37, %31
  %39 = fpext float %5 to double
  %40 = fmul double %39, 4.000000e+00
  %41 = tail call double @llvm.fmuladd.f64(double %39, double 4.000000e+00, double 1.000000e+00)
  %42 = fmul double %40, %41
  %43 = fadd double %39, -1.000000e+00
  %44 = fmul double %39, 7.000000e+00
  %45 = tail call double @llvm.fmuladd.f64(double %42, double %43, double %44)
  %46 = tail call double @llvm.fmuladd.f64(double %38, double %45, double %35)
  %47 = fsub double 1.000000e+00, %31
  %48 = tail call double @llvm.fmuladd.f64(double %6, double %47, double %46)
  %49 = fsub double 1.000000e+00, %8
  %50 = tail call double @llvm.fmuladd.f64(double %29, double %49, double %48)
  br label %67

51:                                               ; preds = %25, %28
  %52 = phi double [ %27, %25 ], [ %29, %28 ]
  %53 = phi double [ %26, %25 ], [ %31, %28 ]
  %54 = fmul float %1, %2
  %55 = fpext float %54 to double
  %56 = fneg double %8
  %57 = tail call double @llvm.fmuladd.f64(double %6, double 2.000000e+00, double %56)
  %58 = fmul double %57, %53
  %59 = fpext float %5 to double
  %60 = tail call double @pow(double noundef %59, double noundef 5.000000e-01) #19
  %61 = fsub double %60, %59
  %62 = tail call double @llvm.fmuladd.f64(double %58, double %61, double %55)
  %63 = fsub double 1.000000e+00, %53
  %64 = tail call double @llvm.fmuladd.f64(double %6, double %63, double %62)
  %65 = fsub double 1.000000e+00, %8
  %66 = tail call double @llvm.fmuladd.f64(double %52, double %65, double %64)
  br label %67

67:                                               ; preds = %51, %33, %10
  %68 = phi double [ %22, %10 ], [ %50, %33 ], [ %66, %51 ]
  %69 = fptrunc double %68 to float
  ret float %69
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @LinearLight(float noundef %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #3 {
  %5 = fsub float %0, %1
  %6 = tail call float @llvm.fmuladd.f32(float %5, float %3, float %0)
  %7 = fadd float %6, %2
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc float @PegtopLight(float noundef %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #3 {
  %5 = fpext float %3 to double
  %6 = tail call double @llvm.fabs.f64(double %5)
  %7 = fcmp olt double %6, 1.000000e-15
  br i1 %7, label %23, label %8

8:                                                ; preds = %4
  %9 = fmul float %2, %2
  %10 = fpext float %9 to double
  %11 = fpext float %1 to double
  %12 = fpext float %0 to double
  %13 = tail call double @llvm.fmuladd.f64(double %12, double -2.000000e+00, double %11)
  %14 = fmul double %13, %10
  %15 = fdiv double %14, %5
  %16 = fpext float %2 to double
  %17 = tail call double @llvm.fmuladd.f64(double %16, double 2.000000e+00, double 1.000000e+00)
  %18 = fsub double %17, %5
  %19 = tail call double @llvm.fmuladd.f64(double %12, double %18, double %15)
  %20 = fsub double 1.000000e+00, %11
  %21 = tail call double @llvm.fmuladd.f64(double %16, double %20, double %19)
  %22 = fptrunc double %21 to float
  br label %23

23:                                               ; preds = %4, %8
  %24 = phi float [ %22, %8 ], [ %0, %4 ]
  ret float %24
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc float @VividLight(float noundef %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #3 {
  %5 = fpext float %1 to double
  %6 = tail call double @llvm.fabs.f64(double %5)
  %7 = fcmp olt double %6, 1.000000e-15
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = fsub float %0, %1
  %10 = tail call float @llvm.fabs.f32(float %9)
  %11 = fpext float %10 to double
  %12 = fcmp olt double %11, 1.000000e-15
  br i1 %12, label %13, label %23

13:                                               ; preds = %8, %4
  %14 = fmul float %1, %3
  %15 = fpext float %14 to double
  %16 = fpext float %0 to double
  %17 = fpext float %3 to double
  %18 = fsub double 1.000000e+00, %17
  %19 = tail call double @llvm.fmuladd.f64(double %16, double %18, double %15)
  %20 = fpext float %2 to double
  %21 = fsub double 1.000000e+00, %5
  %22 = tail call double @llvm.fmuladd.f64(double %20, double %21, double %19)
  br label %54

23:                                               ; preds = %8
  %24 = fmul float %0, 2.000000e+00
  %25 = fcmp ugt float %24, %1
  %26 = fpext float %2 to double
  %27 = fsub double 1.000000e+00, %5
  br i1 %25, label %41, label %28

28:                                               ; preds = %23
  %29 = fpext float %3 to double
  %30 = fsub float %2, %3
  %31 = fmul float %30, %1
  %32 = fpext float %31 to double
  %33 = fpext float %0 to double
  %34 = fmul double %33, 2.000000e+00
  %35 = fdiv double %32, %34
  %36 = fadd double %35, %29
  %37 = fsub double 1.000000e+00, %29
  %38 = fmul double %37, %33
  %39 = tail call double @llvm.fmuladd.f64(double %5, double %36, double %38)
  %40 = tail call double @llvm.fmuladd.f64(double %26, double %27, double %39)
  br label %54

41:                                               ; preds = %23
  %42 = fmul float %1, %2
  %43 = fmul float %42, %1
  %44 = fpext float %43 to double
  %45 = fsub float %1, %0
  %46 = fpext float %45 to double
  %47 = fmul double %46, 2.000000e+00
  %48 = fdiv double %44, %47
  %49 = fpext float %0 to double
  %50 = fpext float %3 to double
  %51 = fsub double 1.000000e+00, %50
  %52 = tail call double @llvm.fmuladd.f64(double %49, double %51, double %48)
  %53 = tail call double @llvm.fmuladd.f64(double %26, double %27, double %52)
  br label %54

54:                                               ; preds = %41, %28, %13
  %55 = phi double [ %22, %13 ], [ %40, %28 ], [ %53, %41 ]
  %56 = fptrunc double %55 to float
  ret float %56
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc float @PinLight(float noundef %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #3 {
  %5 = fmul float %1, %2
  %6 = fneg float %1
  %7 = tail call float @llvm.fmuladd.f32(float %0, float 2.000000e+00, float %6)
  %8 = fmul float %7, %3
  %9 = fcmp olt float %5, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %4
  %11 = fpext float %0 to double
  %12 = fpext float %3 to double
  %13 = fadd double %12, 1.000000e+00
  %14 = fmul float %1, %3
  %15 = fpext float %14 to double
  %16 = fneg double %15
  %17 = tail call double @llvm.fmuladd.f64(double %11, double %13, double %16)
  %18 = fpext float %2 to double
  %19 = fpext float %1 to double
  %20 = fsub double 1.000000e+00, %19
  %21 = tail call double @llvm.fmuladd.f64(double %18, double %20, double %17)
  br label %39

22:                                               ; preds = %4
  %23 = fmul float %0, 2.000000e+00
  %24 = fmul float %23, %3
  %25 = fcmp ogt float %5, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = tail call float @llvm.fmuladd.f32(float %0, float %3, float %0)
  %28 = fpext float %27 to double
  %29 = fpext float %2 to double
  %30 = fpext float %1 to double
  %31 = fsub double 1.000000e+00, %30
  %32 = tail call double @llvm.fmuladd.f64(double %29, double %31, double %28)
  br label %39

33:                                               ; preds = %22
  %34 = fpext float %0 to double
  %35 = fpext float %3 to double
  %36 = fsub double 1.000000e+00, %35
  %37 = fpext float %2 to double
  %38 = tail call double @llvm.fmuladd.f64(double %34, double %36, double %37)
  br label %39

39:                                               ; preds = %33, %26, %10
  %40 = phi double [ %21, %10 ], [ %32, %26 ], [ %38, %33 ]
  %41 = fptrunc double %40 to float
  ret float %41
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @Threshold(float noundef %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #3 {
  %5 = fsub float %0, %1
  %6 = fmul float %5, 2.000000e+00
  %7 = tail call float @llvm.fabs.f32(float %6)
  %8 = fcmp olt float %7, %2
  %9 = tail call float @llvm.fmuladd.f32(float %5, float %3, float %1)
  %10 = select i1 %8, float %1, float %9
  ret float %10
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #8

; Function Attrs: hot optsize
declare float @DecodePixelGamma(float noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @TextureImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %3, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #5
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %11 = load i32, ptr %10, align 8, !tbaa !14
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2939, ptr noundef nonnull @.str.10) #19
  br label %15

15:                                               ; preds = %13, %2
  %16 = icmp eq ptr %1, null
  br i1 %16, label %126, label %17

17:                                               ; preds = %15
  %18 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #19
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %126, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  store ptr %21, ptr %6, align 8, !tbaa !6
  %22 = tail call ptr @CloneImage(ptr noundef nonnull %1, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef nonnull %21) #19
  store ptr %22, ptr %7, align 8, !tbaa !6
  %23 = icmp eq ptr %22, null
  br i1 %23, label %126, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !28
  %27 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %22, i32 noundef %26) #19
  %28 = tail call i32 @SetImageVirtualPixelMethod(ptr noundef nonnull %22, i32 noundef 7) #19
  %29 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 36
  %30 = load i32, ptr %29, align 8, !tbaa !67
  switch i32 %30, label %39 [
    i32 13, label %98
    i32 40, label %31
  ]

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %33 = load i32, ptr %32, align 8, !tbaa !32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct._Image, ptr %22, i64 0, i32 6
  %37 = load i32, ptr %36, align 8, !tbaa !32
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %98, label %39

39:                                               ; preds = %24, %35, %31
  %40 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %41 = load i64, ptr %40, align 8, !tbaa !34
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %93

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %45 = getelementptr inbounds %struct._Image, ptr %22, i64 0, i32 74, i32 2
  %46 = getelementptr inbounds %struct._Image, ptr %22, i64 0, i32 74, i32 3
  %47 = getelementptr inbounds %struct._Image, ptr %22, i64 0, i32 7
  %48 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %49 = getelementptr inbounds %struct._Image, ptr %22, i64 0, i32 8
  br label %50

50:                                               ; preds = %43, %86
  %51 = phi i64 [ %41, %43 ], [ %87, %86 ]
  %52 = phi i64 [ %41, %43 ], [ %88, %86 ]
  %53 = phi i64 [ 0, %43 ], [ %91, %86 ]
  %54 = phi i32 [ 1, %43 ], [ %89, %86 ]
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %86, label %56

56:                                               ; preds = %50
  %57 = load i64, ptr %44, align 8, !tbaa !33
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %76

59:                                               ; preds = %56, %68
  %60 = phi i64 [ %70, %68 ], [ 0, %56 ]
  %61 = load i32, ptr %29, align 8, !tbaa !67
  %62 = load i64, ptr %45, align 8, !tbaa !68
  %63 = add nsw i64 %62, %60
  %64 = load i64, ptr %46, align 8, !tbaa !69
  %65 = add nsw i64 %64, %53
  %66 = tail call i32 @CompositeImage(ptr noundef nonnull %0, i32 noundef %61, ptr noundef nonnull %22, i64 noundef %63, i64 noundef %65) #18
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %59
  %69 = load i64, ptr %47, align 8, !tbaa !33
  %70 = add nsw i64 %69, %60
  %71 = load i64, ptr %44, align 8, !tbaa !33
  %72 = icmp slt i64 %70, %71
  br i1 %72, label %59, label %73, !llvm.loop !70

73:                                               ; preds = %59, %68
  %74 = phi i32 [ %54, %68 ], [ 0, %59 ]
  %75 = load i64, ptr %40, align 8, !tbaa !34
  br label %76

76:                                               ; preds = %73, %56
  %77 = phi i64 [ %51, %56 ], [ %75, %73 ]
  %78 = phi i32 [ %54, %56 ], [ %74, %73 ]
  %79 = load ptr, ptr %48, align 8, !tbaa !54
  %80 = icmp eq ptr %79, null
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.11, i64 noundef %53, i64 noundef %77) #18
  %83 = icmp eq i32 %82, 0
  %84 = select i1 %83, i32 0, i32 %78
  %85 = load i64, ptr %40, align 8, !tbaa !34
  br label %86

86:                                               ; preds = %81, %76, %50
  %87 = phi i64 [ %77, %76 ], [ %51, %50 ], [ %85, %81 ]
  %88 = phi i64 [ %77, %76 ], [ %52, %50 ], [ %85, %81 ]
  %89 = phi i32 [ %78, %76 ], [ 0, %50 ], [ %84, %81 ]
  %90 = load i64, ptr %49, align 8, !tbaa !34
  %91 = add nsw i64 %90, %53
  %92 = icmp slt i64 %91, %88
  br i1 %92, label %50, label %93, !llvm.loop !71

93:                                               ; preds = %86, %39
  %94 = phi i32 [ 1, %39 ], [ %89, %86 ]
  %95 = phi i64 [ %41, %39 ], [ %88, %86 ]
  %96 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.11, i64 noundef %95, i64 noundef %95) #18
  %97 = tail call ptr @DestroyImage(ptr noundef nonnull %22) #19
  br label %126

98:                                               ; preds = %24, %35
  store i32 1, ptr %8, align 4, !tbaa !10
  %99 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %22, ptr noundef nonnull %21) #19
  store ptr %99, ptr %5, align 8, !tbaa !6
  %100 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %21) #19
  store ptr %100, ptr %4, align 8, !tbaa !6
  %101 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #19
  %102 = and i64 %101, 576460752303423487
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %98
  %105 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #19
  %106 = icmp eq i32 %105, 3
  br i1 %106, label %112, label %107

107:                                              ; preds = %104
  %108 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %22) #19
  %109 = icmp eq i32 %108, 3
  br i1 %109, label %112, label %110

110:                                              ; preds = %107
  %111 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #19
  br label %116

112:                                              ; preds = %107, %104, %98
  %113 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #19
  %114 = icmp ult i64 %113, 2
  %115 = select i1 %114, i64 1, i64 2
  br label %116

116:                                              ; preds = %112, %110
  %117 = phi i64 [ %111, %110 ], [ %115, %112 ]
  %118 = trunc i64 %117 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %9, i32 %118)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @TextureImage.omp_outlined, ptr nonnull %3, ptr nonnull %8, ptr nonnull %5, ptr nonnull %7, ptr nonnull %6, ptr nonnull %4)
  %119 = load ptr, ptr %5, align 8, !tbaa !6
  %120 = call ptr @DestroyCacheView(ptr noundef %119) #19
  store ptr %120, ptr %5, align 8, !tbaa !6
  %121 = load ptr, ptr %4, align 8, !tbaa !6
  %122 = call ptr @DestroyCacheView(ptr noundef %121) #19
  store ptr %122, ptr %4, align 8, !tbaa !6
  %123 = load ptr, ptr %7, align 8, !tbaa !6
  %124 = call ptr @DestroyImage(ptr noundef %123) #19
  %125 = load i32, ptr %8, align 4, !tbaa !10
  br label %126

126:                                              ; preds = %20, %17, %15, %116, %93
  %127 = phi i32 [ %94, %93 ], [ %125, %116 ], [ 0, %15 ], [ 0, %17 ], [ 0, %20 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #5
  ret i32 %127
}

; Function Attrs: optsize
declare i32 @TransformImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @SetImageVirtualPixelMethod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @TextureImage.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7) #4 {
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = load ptr, ptr %2, align 8, !tbaa !6
  %14 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 8
  %15 = load i64, ptr %14, align 8, !tbaa !34
  %16 = add nsw i64 %15, -1
  %17 = icmp sgt i64 %15, 0
  br i1 %17, label %18, label %140

18:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #5
  store i64 0, ptr %9, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #5
  store i64 %16, ptr %10, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #5
  store i64 1, ptr %11, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #5
  store i32 0, ptr %12, align 4, !tbaa !10
  %19 = load i32, ptr %0, align 4, !tbaa !10
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %19, i32 33, ptr nonnull %12, ptr nonnull %9, ptr nonnull %10, ptr nonnull %11, i64 1, i64 4)
  %20 = load i64, ptr %10, align 8
  %21 = call i64 @llvm.smin.i64(i64 %20, i64 %16)
  store i64 %21, ptr %10, align 8, !tbaa !12
  %22 = load i64, ptr %9, align 8, !tbaa !12
  %23 = icmp sgt i64 %22, %21
  br i1 %23, label %139, label %24

24:                                               ; preds = %18, %131
  %25 = phi i64 [ %137, %131 ], [ %21, %18 ]
  %26 = phi i64 [ %135, %131 ], [ %22, %18 ]
  %27 = icmp sgt i64 %26, %25
  br i1 %27, label %131, label %28

28:                                               ; preds = %24, %125
  %29 = phi i64 [ %126, %125 ], [ %26, %24 ]
  %30 = load i32, ptr %3, align 4, !tbaa !10
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %125, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %4, align 8, !tbaa !6
  %34 = load ptr, ptr %5, align 8, !tbaa !6
  %35 = getelementptr inbounds %struct._Image, ptr %34, i64 0, i32 74, i32 2
  %36 = load i64, ptr %35, align 8, !tbaa !68
  %37 = getelementptr inbounds %struct._Image, ptr %34, i64 0, i32 74, i32 3
  %38 = load i64, ptr %37, align 8, !tbaa !69
  %39 = add nsw i64 %38, %29
  %40 = getelementptr inbounds %struct._Image, ptr %34, i64 0, i32 8
  %41 = load i64, ptr %40, align 8, !tbaa !34
  %42 = urem i64 %39, %41
  %43 = getelementptr inbounds %struct._Image, ptr %34, i64 0, i32 7
  %44 = load i64, ptr %43, align 8, !tbaa !33
  %45 = load ptr, ptr %6, align 8, !tbaa !6
  %46 = call ptr @GetCacheViewVirtualPixels(ptr noundef %33, i64 noundef %36, i64 noundef %42, i64 noundef %44, i64 noundef 1, ptr noundef %45) #20
  %47 = load ptr, ptr %7, align 8, !tbaa !6
  %48 = load ptr, ptr %2, align 8, !tbaa !6
  %49 = getelementptr inbounds %struct._Image, ptr %48, i64 0, i32 7
  %50 = load i64, ptr %49, align 8, !tbaa !33
  %51 = load ptr, ptr %6, align 8, !tbaa !6
  %52 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %47, i64 noundef 0, i64 noundef %29, i64 noundef %50, i64 noundef 1, ptr noundef %51) #20
  %53 = icmp eq ptr %46, null
  %54 = icmp eq ptr %52, null
  %55 = select i1 %53, i1 true, i1 %54
  br i1 %55, label %124, label %56

56:                                               ; preds = %32
  %57 = load ptr, ptr %4, align 8, !tbaa !6
  %58 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %57) #19
  %59 = load ptr, ptr %7, align 8, !tbaa !6
  %60 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %59) #19
  %61 = load ptr, ptr %2, align 8, !tbaa !6
  %62 = getelementptr inbounds %struct._Image, ptr %61, i64 0, i32 7
  %63 = load i64, ptr %62, align 8, !tbaa !33
  %64 = icmp sgt i64 %63, 0
  br i1 %64, label %65, label %107

65:                                               ; preds = %56
  %66 = load ptr, ptr %5, align 8, !tbaa !6
  %67 = getelementptr inbounds %struct._Image, ptr %66, i64 0, i32 7
  %68 = load i64, ptr %67, align 8, !tbaa !33
  br label %69

69:                                               ; preds = %65, %96
  %70 = phi i64 [ %102, %96 ], [ %68, %65 ]
  %71 = phi i64 [ %105, %96 ], [ %63, %65 ]
  %72 = phi ptr [ %100, %96 ], [ %52, %65 ]
  %73 = phi i64 [ %103, %96 ], [ 0, %65 ]
  %74 = phi ptr [ %99, %96 ], [ %60, %65 ]
  %75 = add nsw i64 %70, %73
  %76 = icmp sgt i64 %75, %71
  %77 = sub i64 %71, %73
  %78 = select i1 %76, i64 %77, i64 %70
  %79 = shl i64 %78, 3
  %80 = call ptr @CopyMagickMemory(ptr noundef %72, ptr noundef %46, i64 noundef %79) #19
  %81 = load ptr, ptr %2, align 8, !tbaa !6
  %82 = getelementptr inbounds %struct._Image, ptr %81, i64 0, i32 1
  %83 = load i32, ptr %82, align 4, !tbaa !28
  %84 = icmp eq i32 %83, 12
  %85 = load ptr, ptr %5, align 8, !tbaa !6
  br i1 %84, label %86, label %96

86:                                               ; preds = %69
  %87 = getelementptr inbounds %struct._Image, ptr %85, i64 0, i32 1
  %88 = load i32, ptr %87, align 4, !tbaa !28
  %89 = icmp eq i32 %88, 12
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = shl i64 %78, 1
  %92 = call ptr @CopyMagickMemory(ptr noundef %74, ptr noundef %58, i64 noundef %91) #19
  %93 = getelementptr inbounds i16, ptr %74, i64 %78
  %94 = load ptr, ptr %5, align 8, !tbaa !6
  %95 = load ptr, ptr %2, align 8, !tbaa !6
  br label %96

96:                                               ; preds = %90, %86, %69
  %97 = phi ptr [ %95, %90 ], [ %81, %86 ], [ %81, %69 ]
  %98 = phi ptr [ %94, %90 ], [ %85, %86 ], [ %85, %69 ]
  %99 = phi ptr [ %93, %90 ], [ %74, %86 ], [ %74, %69 ]
  %100 = getelementptr inbounds %struct._PixelPacket, ptr %72, i64 %78
  %101 = getelementptr inbounds %struct._Image, ptr %98, i64 0, i32 7
  %102 = load i64, ptr %101, align 8, !tbaa !33
  %103 = add nsw i64 %102, %73
  %104 = getelementptr inbounds %struct._Image, ptr %97, i64 0, i32 7
  %105 = load i64, ptr %104, align 8, !tbaa !33
  %106 = icmp slt i64 %103, %105
  br i1 %106, label %69, label %107, !llvm.loop !72

107:                                              ; preds = %96, %56
  %108 = load ptr, ptr %7, align 8, !tbaa !6
  %109 = load ptr, ptr %6, align 8, !tbaa !6
  %110 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %108, ptr noundef %109) #20
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  store i32 0, ptr %3, align 4, !tbaa !10
  br label %113

113:                                              ; preds = %112, %107
  %114 = load ptr, ptr %2, align 8, !tbaa !6
  %115 = getelementptr inbounds %struct._Image, ptr %114, i64 0, i32 47
  %116 = load ptr, ptr %115, align 8, !tbaa !54
  %117 = icmp eq ptr %116, null
  br i1 %117, label %125, label %118

118:                                              ; preds = %113
  call void @__kmpc_critical(ptr nonnull @2, i32 %19, ptr nonnull @.gomp_critical_user_MagickCore_TextureImage.var)
  %119 = load ptr, ptr %2, align 8, !tbaa !6
  %120 = getelementptr inbounds %struct._Image, ptr %119, i64 0, i32 8
  %121 = load i64, ptr %120, align 8, !tbaa !34
  %122 = call fastcc i32 @SetImageProgress(ptr noundef %119, ptr noundef nonnull @.str.11, i64 noundef %29, i64 noundef %121) #18
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %19, ptr nonnull @.gomp_critical_user_MagickCore_TextureImage.var)
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %118, %32
  store i32 0, ptr %3, align 4, !tbaa !10
  br label %125

125:                                              ; preds = %124, %113, %118, %28
  %126 = add nsw i64 %29, 1
  %127 = load i64, ptr %10, align 8, !tbaa !12
  %128 = icmp slt i64 %29, %127
  br i1 %128, label %28, label %129

129:                                              ; preds = %125
  %130 = load i64, ptr %9, align 8, !tbaa !12
  br label %131

131:                                              ; preds = %129, %24
  %132 = phi i64 [ %26, %24 ], [ %130, %129 ]
  %133 = phi i64 [ %25, %24 ], [ %127, %129 ]
  %134 = load i64, ptr %11, align 8, !tbaa !12
  %135 = add nsw i64 %134, %132
  store i64 %135, ptr %9, align 8, !tbaa !12
  %136 = add nsw i64 %134, %133
  %137 = call i64 @llvm.smin.i64(i64 %136, i64 %16)
  store i64 %137, ptr %10, align 8, !tbaa !12
  %138 = icmp sgt i64 %135, %137
  br i1 %138, label %139, label %24

139:                                              ; preds = %131, %18
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %19)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #5
  br label %140

140:                                              ; preds = %139, %8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #17

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { alwaysinline norecurse nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { convergent nounwind }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noinline norecurse nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { optsize }
attributes #19 = { nounwind optsize }
attributes #20 = { hot nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !8, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !8, i64 0}
!14 = !{!15, !11, i64 12976}
!15 = !{!"_Image", !11, i64 0, !11, i64 4, !11, i64 8, !13, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !7, i64 72, !16, i64 80, !16, i64 88, !16, i64 96, !18, i64 104, !19, i64 112, !11, i64 208, !7, i64 216, !11, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !13, i64 256, !18, i64 264, !18, i64 272, !21, i64 280, !21, i64 312, !21, i64 344, !18, i64 376, !18, i64 384, !18, i64 392, !11, i64 400, !11, i64 404, !11, i64 408, !11, i64 412, !11, i64 416, !11, i64 420, !7, i64 424, !13, i64 432, !13, i64 440, !13, i64 448, !13, i64 456, !13, i64 464, !13, i64 472, !22, i64 480, !23, i64 504, !7, i64 568, !7, i64 576, !7, i64 584, !7, i64 592, !7, i64 600, !7, i64 608, !8, i64 616, !8, i64 4712, !8, i64 8808, !13, i64 12904, !13, i64 12912, !25, i64 12920, !11, i64 12976, !13, i64 12984, !7, i64 12992, !26, i64 13000, !26, i64 13032, !7, i64 13064, !13, i64 13072, !13, i64 13080, !7, i64 13088, !7, i64 13096, !7, i64 13104, !11, i64 13112, !11, i64 13116, !16, i64 13120, !7, i64 13128, !21, i64 13136, !7, i64 13168, !7, i64 13176, !11, i64 13184, !11, i64 13188, !27, i64 13192, !11, i64 13200, !13, i64 13208, !13, i64 13216, !11, i64 13224, !13, i64 13232}
!16 = !{!"_PixelPacket", !17, i64 0, !17, i64 2, !17, i64 4, !17, i64 6}
!17 = !{!"short", !8, i64 0}
!18 = !{!"double", !8, i64 0}
!19 = !{!"_ChromaticityInfo", !20, i64 0, !20, i64 24, !20, i64 48, !20, i64 72}
!20 = !{!"_PrimaryInfo", !18, i64 0, !18, i64 8, !18, i64 16}
!21 = !{!"_RectangleInfo", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!22 = !{!"_ErrorInfo", !18, i64 0, !18, i64 8, !18, i64 16}
!23 = !{!"_TimerInfo", !24, i64 0, !24, i64 24, !11, i64 48, !13, i64 56}
!24 = !{!"_Timer", !18, i64 0, !18, i64 8, !18, i64 16}
!25 = !{!"_ExceptionInfo", !11, i64 0, !11, i64 4, !7, i64 8, !7, i64 16, !7, i64 24, !11, i64 32, !7, i64 40, !13, i64 48}
!26 = !{!"_ProfileInfo", !7, i64 0, !13, i64 8, !7, i64 16, !13, i64 24}
!27 = !{!"long long", !8, i64 0}
!28 = !{!15, !11, i64 4}
!29 = !{i32 0, i32 2}
!30 = !{!31, !31, i64 0}
!31 = !{!"float", !8, i64 0}
!32 = !{!15, !11, i64 32}
!33 = !{!15, !13, i64 40}
!34 = !{!15, !13, i64 48}
!35 = !{!36, !18, i64 0}
!36 = !{!"_GeometryInfo", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32}
!37 = !{!36, !18, i64 16}
!38 = !{!36, !18, i64 24}
!39 = !{i64 0, i64 4, !10, i64 4, i64 4, !10, i64 8, i64 4, !10, i64 16, i64 8, !40, i64 24, i64 8, !12, i64 32, i64 4, !30, i64 36, i64 4, !30, i64 40, i64 4, !30, i64 44, i64 4, !30, i64 48, i64 4, !30}
!40 = !{!18, !18, i64 0}
!41 = !{!16, !17, i64 0}
!42 = !{!16, !17, i64 4}
!43 = !{!16, !17, i64 2}
!44 = distinct !{!44, !45}
!45 = !{!"llvm.loop.mustprogress"}
!46 = distinct !{!46, !45}
!47 = !{!48, !31, i64 44}
!48 = !{!"_MagickPixelPacket", !11, i64 0, !11, i64 4, !11, i64 8, !18, i64 16, !13, i64 24, !31, i64 32, !31, i64 36, !31, i64 40, !31, i64 44, !31, i64 48}
!49 = !{!16, !17, i64 6}
!50 = distinct !{!50, !45}
!51 = distinct !{!51, !45}
!52 = !{!36, !18, i64 8}
!53 = !{!27, !27, i64 0}
!54 = !{!15, !7, i64 568}
!55 = !{!15, !7, i64 576}
!56 = !{!57}
!57 = !{i64 2, i64 -1, i64 -1, i1 true}
!58 = !{!48, !31, i64 32}
!59 = !{!48, !31, i64 36}
!60 = !{!48, !31, i64 40}
!61 = !{!15, !11, i64 0}
!62 = !{!48, !31, i64 48}
!63 = !{!17, !17, i64 0}
!64 = !{!48, !11, i64 8}
!65 = !{!48, !11, i64 4}
!66 = distinct !{!66, !45}
!67 = !{!15, !11, i64 416}
!68 = !{!15, !13, i64 13152}
!69 = !{!15, !13, i64 13160}
!70 = distinct !{!70, !45}
!71 = distinct !{!71, !45}
!72 = distinct !{!72, !45}
