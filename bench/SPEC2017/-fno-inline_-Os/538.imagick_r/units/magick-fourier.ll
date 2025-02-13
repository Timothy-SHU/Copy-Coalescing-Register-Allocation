; ModuleID = 'magick/fourier.c'
source_filename = "magick/fourier.c"
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

@.str = private unnamed_addr constant [17 x i8] c"magick/fourier.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"ImageSequenceRequired\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"complex:snr\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Complex/Image\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"DelegateLibrarySupportNotBuiltIn\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"`%s' (FFTW)\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ComplexImages(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 173, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #7
  br label %11

11:                                               ; preds = %8, %3
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 69
  %13 = load ptr, ptr %12, align 8, !tbaa !53
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 178, i32 noundef 465, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #7
  br label %683

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %20 = load i64, ptr %19, align 8, !tbaa !54
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %22 = load i64, ptr %21, align 8, !tbaa !55
  %23 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %20, i64 noundef %22, i32 noundef 1, ptr noundef %2) #7
  %24 = icmp eq ptr %23, null
  br i1 %24, label %683, label %25

25:                                               ; preds = %18
  store i32 1, ptr %23, align 8, !tbaa !56
  %26 = getelementptr inbounds %struct._Image, ptr %23, i64 0, i32 9
  store i64 32, ptr %26, align 8, !tbaa !57
  %27 = tail call ptr @NewImageList() #7
  store ptr %27, ptr %4, align 8, !tbaa !58
  call void @AppendImageToList(ptr noundef nonnull %4, ptr noundef nonnull %23) #7
  %28 = load i64, ptr %19, align 8, !tbaa !54
  %29 = load i64, ptr %21, align 8, !tbaa !55
  %30 = call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %28, i64 noundef %29, i32 noundef 1, ptr noundef %2) #7
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load ptr, ptr %4, align 8, !tbaa !58
  %34 = call ptr @DestroyImageList(ptr noundef %33) #7
  br label %683

35:                                               ; preds = %25
  store i32 1, ptr %30, align 8, !tbaa !56
  %36 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 9
  store i64 32, ptr %36, align 8, !tbaa !57
  call void @AppendImageToList(ptr noundef nonnull %4, ptr noundef nonnull %30) #7
  %37 = call ptr @GetImageArtifact(ptr noundef nonnull %30, ptr noundef nonnull @.str.5) #7
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = call fastcc double @StringToDouble(ptr noundef nonnull %37) #8
  br label %41

41:                                               ; preds = %39, %35
  %42 = phi double [ %40, %39 ], [ 0.000000e+00, %35 ]
  %43 = load ptr, ptr %12, align 8, !tbaa !53
  %44 = getelementptr inbounds %struct._Image, ptr %43, i64 0, i32 69
  %45 = load ptr, ptr %44, align 8, !tbaa !53
  %46 = icmp eq ptr %45, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct._Image, ptr %45, i64 0, i32 69
  %49 = load ptr, ptr %48, align 8, !tbaa !53
  %50 = icmp eq ptr %49, null
  %51 = select i1 %50, ptr %43, ptr %49
  %52 = select i1 %50, ptr %0, ptr %45
  br label %53

53:                                               ; preds = %47, %41
  %54 = phi ptr [ %43, %41 ], [ %51, %47 ]
  %55 = phi ptr [ %0, %41 ], [ %52, %47 ]
  %56 = load ptr, ptr %4, align 8, !tbaa !58
  %57 = getelementptr inbounds %struct._Image, ptr %56, i64 0, i32 69
  %58 = load ptr, ptr %57, align 8, !tbaa !53
  %59 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %2) #7
  %60 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %43, ptr noundef %2) #7
  %61 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %55, ptr noundef %2) #7
  %62 = call ptr @AcquireVirtualCacheView(ptr noundef %54, ptr noundef %2) #7
  %63 = call ptr @AcquireAuthenticCacheView(ptr noundef %56, ptr noundef %2) #7
  %64 = call ptr @AcquireAuthenticCacheView(ptr noundef %58, ptr noundef %2) #7
  %65 = load i64, ptr %21, align 8, !tbaa !55
  %66 = icmp sgt i64 %65, 0
  br i1 %66, label %67, label %672

67:                                               ; preds = %53
  %68 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %69 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %70

70:                                               ; preds = %67, %664
  %71 = phi i64 [ 0, %67 ], [ %667, %664 ]
  %72 = phi i64 [ 0, %67 ], [ %666, %664 ]
  %73 = phi i32 [ 1, %67 ], [ %665, %664 ]
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %664, label %75

75:                                               ; preds = %70
  %76 = load i64, ptr %19, align 8, !tbaa !54
  %77 = call ptr @GetCacheViewVirtualPixels(ptr noundef %59, i64 noundef 0, i64 noundef %71, i64 noundef %76, i64 noundef 1, ptr noundef %2) #9
  %78 = load i64, ptr %19, align 8, !tbaa !54
  %79 = call ptr @GetCacheViewVirtualPixels(ptr noundef %60, i64 noundef 0, i64 noundef %71, i64 noundef %78, i64 noundef 1, ptr noundef %2) #9
  %80 = load i64, ptr %19, align 8, !tbaa !54
  %81 = call ptr @GetCacheViewVirtualPixels(ptr noundef %61, i64 noundef 0, i64 noundef %71, i64 noundef %80, i64 noundef 1, ptr noundef %2) #9
  %82 = load i64, ptr %19, align 8, !tbaa !54
  %83 = call ptr @GetCacheViewVirtualPixels(ptr noundef %62, i64 noundef 0, i64 noundef %71, i64 noundef %82, i64 noundef 1, ptr noundef %2) #9
  %84 = load i64, ptr %19, align 8, !tbaa !54
  %85 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %63, i64 noundef 0, i64 noundef %71, i64 noundef %84, i64 noundef 1, ptr noundef %2) #9
  %86 = freeze ptr %85
  %87 = load i64, ptr %19, align 8, !tbaa !54
  %88 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %64, i64 noundef 0, i64 noundef %71, i64 noundef %87, i64 noundef 1, ptr noundef %2) #9
  %89 = insertelement <4 x ptr> poison, ptr %79, i64 0
  %90 = insertelement <4 x ptr> %89, ptr %77, i64 1
  %91 = insertelement <4 x ptr> %90, ptr %81, i64 2
  %92 = insertelement <4 x ptr> %91, ptr %83, i64 3
  %93 = freeze <4 x ptr> %92
  %94 = icmp eq <4 x ptr> %93, zeroinitializer
  %95 = icmp eq ptr %86, null
  %96 = icmp eq ptr %88, null
  %97 = bitcast <4 x i1> %94 to i4
  %98 = icmp ne i4 %97, 0
  %99 = or i1 %98, %95
  %100 = select i1 %99, i1 true, i1 %96
  br i1 %100, label %664, label %101

101:                                              ; preds = %75
  %102 = load i64, ptr %19, align 8, !tbaa !54
  %103 = icmp sgt i64 %102, 0
  br i1 %103, label %104, label %649

104:                                              ; preds = %101, %639
  %105 = phi i64 [ %646, %639 ], [ 0, %101 ]
  %106 = phi ptr [ %644, %639 ], [ %86, %101 ]
  %107 = phi ptr [ %645, %639 ], [ %88, %101 ]
  %108 = phi ptr [ %642, %639 ], [ %81, %101 ]
  %109 = phi ptr [ %643, %639 ], [ %83, %101 ]
  %110 = phi ptr [ %640, %639 ], [ %77, %101 ]
  %111 = phi ptr [ %641, %639 ], [ %79, %101 ]
  switch i32 %1, label %145 [
    i32 1, label %112
    i32 7, label %603
    i32 3, label %165
    i32 4, label %330
    i32 5, label %417
    i32 6, label %516
  ]

112:                                              ; preds = %104
  %113 = getelementptr inbounds %struct._PixelPacket, ptr %110, i64 0, i32 2
  %114 = load i16, ptr %113, align 2, !tbaa !59
  %115 = getelementptr inbounds %struct._PixelPacket, ptr %108, i64 0, i32 2
  %116 = load i16, ptr %115, align 2, !tbaa !59
  %117 = add i16 %116, %114
  %118 = getelementptr inbounds %struct._PixelPacket, ptr %106, i64 0, i32 2
  store i16 %117, ptr %118, align 2, !tbaa !59
  %119 = getelementptr inbounds %struct._PixelPacket, ptr %111, i64 0, i32 2
  %120 = load i16, ptr %119, align 2, !tbaa !59
  %121 = getelementptr inbounds %struct._PixelPacket, ptr %109, i64 0, i32 2
  %122 = load i16, ptr %121, align 2, !tbaa !59
  %123 = add i16 %122, %120
  %124 = getelementptr inbounds %struct._PixelPacket, ptr %107, i64 0, i32 2
  store i16 %123, ptr %124, align 2, !tbaa !59
  %125 = load <2 x i16>, ptr %110, align 2, !tbaa !60
  %126 = load <2 x i16>, ptr %108, align 2, !tbaa !60
  %127 = add <2 x i16> %126, %125
  store <2 x i16> %127, ptr %106, align 2, !tbaa !60
  %128 = load <2 x i16>, ptr %111, align 2, !tbaa !60
  %129 = load <2 x i16>, ptr %109, align 2, !tbaa !60
  %130 = add <2 x i16> %129, %128
  store <2 x i16> %130, ptr %107, align 2, !tbaa !60
  %131 = load i32, ptr %68, align 8, !tbaa !61
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %639, label %133

133:                                              ; preds = %112
  %134 = getelementptr inbounds %struct._PixelPacket, ptr %110, i64 0, i32 3
  %135 = load i16, ptr %134, align 2, !tbaa !62
  %136 = getelementptr inbounds %struct._PixelPacket, ptr %108, i64 0, i32 3
  %137 = load i16, ptr %136, align 2, !tbaa !62
  %138 = add i16 %137, %135
  %139 = getelementptr inbounds %struct._PixelPacket, ptr %106, i64 0, i32 3
  store i16 %138, ptr %139, align 2, !tbaa !62
  %140 = getelementptr inbounds %struct._PixelPacket, ptr %111, i64 0, i32 3
  %141 = load i16, ptr %140, align 2, !tbaa !62
  %142 = getelementptr inbounds %struct._PixelPacket, ptr %109, i64 0, i32 3
  %143 = load i16, ptr %142, align 2, !tbaa !62
  %144 = add i16 %143, %141
  br label %636

145:                                              ; preds = %104
  %146 = getelementptr inbounds %struct._PixelPacket, ptr %110, i64 0, i32 2
  %147 = load i16, ptr %146, align 2, !tbaa !59
  %148 = getelementptr inbounds %struct._PixelPacket, ptr %106, i64 0, i32 2
  store i16 %147, ptr %148, align 2, !tbaa !59
  %149 = getelementptr inbounds %struct._PixelPacket, ptr %109, i64 0, i32 2
  %150 = load i16, ptr %149, align 2, !tbaa !59
  %151 = sub i16 0, %150
  %152 = getelementptr inbounds %struct._PixelPacket, ptr %107, i64 0, i32 2
  store i16 %151, ptr %152, align 2, !tbaa !59
  %153 = load <2 x i16>, ptr %110, align 2, !tbaa !60
  store <2 x i16> %153, ptr %106, align 2, !tbaa !60
  %154 = load <2 x i16>, ptr %109, align 2, !tbaa !60
  %155 = sub <2 x i16> zeroinitializer, %154
  store <2 x i16> %155, ptr %107, align 2, !tbaa !60
  %156 = load i32, ptr %68, align 8, !tbaa !61
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %639, label %158

158:                                              ; preds = %145
  %159 = getelementptr inbounds %struct._PixelPacket, ptr %110, i64 0, i32 3
  %160 = load i16, ptr %159, align 2, !tbaa !62
  %161 = getelementptr inbounds %struct._PixelPacket, ptr %106, i64 0, i32 3
  store i16 %160, ptr %161, align 2, !tbaa !62
  %162 = getelementptr inbounds %struct._PixelPacket, ptr %109, i64 0, i32 3
  %163 = load i16, ptr %162, align 2, !tbaa !62
  %164 = sub i16 0, %163
  br label %636

165:                                              ; preds = %104
  %166 = getelementptr inbounds %struct._PixelPacket, ptr %108, i64 0, i32 2
  %167 = load i16, ptr %166, align 2, !tbaa !59
  %168 = zext i16 %167 to i32
  %169 = mul nuw nsw i32 %168, %168
  %170 = getelementptr inbounds %struct._PixelPacket, ptr %109, i64 0, i32 2
  %171 = load i16, ptr %170, align 2, !tbaa !59
  %172 = zext i16 %171 to i32
  %173 = mul nuw nsw i32 %172, %172
  %174 = add nuw nsw i32 %173, %169
  %175 = sitofp i32 %174 to double
  %176 = fadd double %42, %175
  %177 = fcmp olt double %176, 0.000000e+00
  %178 = select i1 %177, double 0.000000e+00, double %176
  %179 = call fastcc double @PerceptibleReciprocal(double noundef %178) #8
  %180 = getelementptr inbounds %struct._PixelPacket, ptr %110, i64 0, i32 2
  %181 = load i16, ptr %180, align 2, !tbaa !59
  %182 = zext i16 %181 to i32
  %183 = mul nuw nsw i32 %182, %168
  %184 = getelementptr inbounds %struct._PixelPacket, ptr %111, i64 0, i32 2
  %185 = load i16, ptr %184, align 2, !tbaa !59
  %186 = zext i16 %185 to i32
  %187 = mul nuw nsw i32 %186, %172
  %188 = add nuw nsw i32 %187, %183
  %189 = sitofp i32 %188 to double
  %190 = fmul double %179, %189
  %191 = fptoui double %190 to i16
  %192 = getelementptr inbounds %struct._PixelPacket, ptr %106, i64 0, i32 2
  store i16 %191, ptr %192, align 2, !tbaa !59
  %193 = load i16, ptr %184, align 2, !tbaa !59
  %194 = zext i16 %193 to i32
  %195 = load i16, ptr %166, align 2, !tbaa !59
  %196 = zext i16 %195 to i32
  %197 = mul nuw nsw i32 %196, %194
  %198 = load i16, ptr %180, align 2, !tbaa !59
  %199 = zext i16 %198 to i32
  %200 = load i16, ptr %170, align 2, !tbaa !59
  %201 = zext i16 %200 to i32
  %202 = mul nuw nsw i32 %201, %199
  %203 = sub nsw i32 %197, %202
  %204 = sitofp i32 %203 to double
  %205 = fmul double %179, %204
  %206 = fptoui double %205 to i16
  %207 = getelementptr inbounds %struct._PixelPacket, ptr %107, i64 0, i32 2
  store i16 %206, ptr %207, align 2, !tbaa !59
  %208 = getelementptr inbounds %struct._PixelPacket, ptr %108, i64 0, i32 1
  %209 = load i16, ptr %208, align 2, !tbaa !63
  %210 = zext i16 %209 to i32
  %211 = mul nuw nsw i32 %210, %210
  %212 = getelementptr inbounds %struct._PixelPacket, ptr %109, i64 0, i32 1
  %213 = load i16, ptr %212, align 2, !tbaa !63
  %214 = zext i16 %213 to i32
  %215 = mul nuw nsw i32 %214, %214
  %216 = add nuw nsw i32 %215, %211
  %217 = sitofp i32 %216 to double
  %218 = fadd double %42, %217
  %219 = fcmp olt double %218, 0.000000e+00
  %220 = select i1 %219, double 0.000000e+00, double %218
  %221 = call fastcc double @PerceptibleReciprocal(double noundef %220) #8
  %222 = getelementptr inbounds %struct._PixelPacket, ptr %110, i64 0, i32 1
  %223 = load i16, ptr %222, align 2, !tbaa !63
  %224 = zext i16 %223 to i32
  %225 = mul nuw nsw i32 %224, %210
  %226 = getelementptr inbounds %struct._PixelPacket, ptr %111, i64 0, i32 1
  %227 = load i16, ptr %226, align 2, !tbaa !63
  %228 = zext i16 %227 to i32
  %229 = mul nuw nsw i32 %228, %214
  %230 = add nuw nsw i32 %229, %225
  %231 = sitofp i32 %230 to double
  %232 = fmul double %221, %231
  %233 = fptoui double %232 to i16
  %234 = getelementptr inbounds %struct._PixelPacket, ptr %106, i64 0, i32 1
  store i16 %233, ptr %234, align 2, !tbaa !63
  %235 = load i16, ptr %226, align 2, !tbaa !63
  %236 = zext i16 %235 to i32
  %237 = load i16, ptr %208, align 2, !tbaa !63
  %238 = zext i16 %237 to i32
  %239 = mul nuw nsw i32 %238, %236
  %240 = load i16, ptr %222, align 2, !tbaa !63
  %241 = zext i16 %240 to i32
  %242 = load i16, ptr %212, align 2, !tbaa !63
  %243 = zext i16 %242 to i32
  %244 = mul nuw nsw i32 %243, %241
  %245 = sub nsw i32 %239, %244
  %246 = sitofp i32 %245 to double
  %247 = fmul double %221, %246
  %248 = fptoui double %247 to i16
  %249 = getelementptr inbounds %struct._PixelPacket, ptr %107, i64 0, i32 1
  store i16 %248, ptr %249, align 2, !tbaa !63
  %250 = load i16, ptr %108, align 2, !tbaa !64
  %251 = zext i16 %250 to i32
  %252 = mul nuw nsw i32 %251, %251
  %253 = load i16, ptr %109, align 2, !tbaa !64
  %254 = zext i16 %253 to i32
  %255 = mul nuw nsw i32 %254, %254
  %256 = add nuw nsw i32 %255, %252
  %257 = sitofp i32 %256 to double
  %258 = fadd double %42, %257
  %259 = fcmp olt double %258, 0.000000e+00
  %260 = select i1 %259, double 0.000000e+00, double %258
  %261 = call fastcc double @PerceptibleReciprocal(double noundef %260) #8
  %262 = load i16, ptr %110, align 2, !tbaa !64
  %263 = zext i16 %262 to i32
  %264 = mul nuw nsw i32 %263, %251
  %265 = load i16, ptr %111, align 2, !tbaa !64
  %266 = zext i16 %265 to i32
  %267 = mul nuw nsw i32 %266, %254
  %268 = add nuw nsw i32 %267, %264
  %269 = sitofp i32 %268 to double
  %270 = fmul double %261, %269
  %271 = fptoui double %270 to i16
  store i16 %271, ptr %106, align 2, !tbaa !64
  %272 = load i16, ptr %111, align 2, !tbaa !64
  %273 = zext i16 %272 to i32
  %274 = load i16, ptr %108, align 2, !tbaa !64
  %275 = zext i16 %274 to i32
  %276 = mul nuw nsw i32 %275, %273
  %277 = load i16, ptr %110, align 2, !tbaa !64
  %278 = zext i16 %277 to i32
  %279 = load i16, ptr %109, align 2, !tbaa !64
  %280 = zext i16 %279 to i32
  %281 = mul nuw nsw i32 %280, %278
  %282 = sub nsw i32 %276, %281
  %283 = sitofp i32 %282 to double
  %284 = fmul double %261, %283
  %285 = fptoui double %284 to i16
  store i16 %285, ptr %107, align 2, !tbaa !64
  %286 = load i32, ptr %68, align 8, !tbaa !61
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %639, label %288

288:                                              ; preds = %165
  %289 = getelementptr inbounds %struct._PixelPacket, ptr %108, i64 0, i32 3
  %290 = load i16, ptr %289, align 2, !tbaa !62
  %291 = zext i16 %290 to i32
  %292 = mul nuw nsw i32 %291, %291
  %293 = getelementptr inbounds %struct._PixelPacket, ptr %109, i64 0, i32 3
  %294 = load i16, ptr %293, align 2, !tbaa !62
  %295 = zext i16 %294 to i32
  %296 = mul nuw nsw i32 %295, %295
  %297 = add nuw nsw i32 %296, %292
  %298 = sitofp i32 %297 to double
  %299 = fadd double %42, %298
  %300 = fcmp olt double %299, 0.000000e+00
  %301 = select i1 %300, double 0.000000e+00, double %299
  %302 = call fastcc double @PerceptibleReciprocal(double noundef %301) #8
  %303 = getelementptr inbounds %struct._PixelPacket, ptr %110, i64 0, i32 3
  %304 = load i16, ptr %303, align 2, !tbaa !62
  %305 = zext i16 %304 to i32
  %306 = mul nuw nsw i32 %305, %291
  %307 = getelementptr inbounds %struct._PixelPacket, ptr %111, i64 0, i32 3
  %308 = load i16, ptr %307, align 2, !tbaa !62
  %309 = zext i16 %308 to i32
  %310 = mul nuw nsw i32 %309, %295
  %311 = add nuw nsw i32 %310, %306
  %312 = sitofp i32 %311 to double
  %313 = fmul double %302, %312
  %314 = fptoui double %313 to i16
  %315 = getelementptr inbounds %struct._PixelPacket, ptr %106, i64 0, i32 3
  store i16 %314, ptr %315, align 2, !tbaa !62
  %316 = load i16, ptr %307, align 2, !tbaa !62
  %317 = zext i16 %316 to i32
  %318 = load i16, ptr %289, align 2, !tbaa !62
  %319 = zext i16 %318 to i32
  %320 = mul nuw nsw i32 %319, %317
  %321 = load i16, ptr %303, align 2, !tbaa !62
  %322 = zext i16 %321 to i32
  %323 = load i16, ptr %293, align 2, !tbaa !62
  %324 = zext i16 %323 to i32
  %325 = mul nuw nsw i32 %324, %322
  %326 = sub nsw i32 %320, %325
  %327 = sitofp i32 %326 to double
  %328 = fmul double %302, %327
  %329 = fptoui double %328 to i16
  br label %636

330:                                              ; preds = %104
  %331 = getelementptr inbounds %struct._PixelPacket, ptr %110, i64 0, i32 2
  %332 = load i16, ptr %331, align 2, !tbaa !59
  %333 = zext i16 %332 to i32
  %334 = mul nuw nsw i32 %333, %333
  %335 = getelementptr inbounds %struct._PixelPacket, ptr %111, i64 0, i32 2
  %336 = load i16, ptr %335, align 2, !tbaa !59
  %337 = zext i16 %336 to i32
  %338 = mul nuw nsw i32 %337, %337
  %339 = add nuw nsw i32 %338, %334
  %340 = sitofp i32 %339 to double
  %341 = call double @sqrt(double noundef %340) #7
  %342 = fptoui double %341 to i16
  %343 = getelementptr inbounds %struct._PixelPacket, ptr %106, i64 0, i32 2
  store i16 %342, ptr %343, align 2, !tbaa !59
  %344 = load i16, ptr %335, align 2, !tbaa !59
  %345 = uitofp i16 %344 to double
  %346 = load i16, ptr %331, align 2, !tbaa !59
  %347 = uitofp i16 %346 to double
  %348 = call double @atan2(double noundef %345, double noundef %347) #7
  %349 = fdiv double %348, 0x401921FB54442D18
  %350 = fadd double %349, 5.000000e-01
  %351 = fptoui double %350 to i16
  %352 = getelementptr inbounds %struct._PixelPacket, ptr %107, i64 0, i32 2
  store i16 %351, ptr %352, align 2, !tbaa !59
  %353 = getelementptr inbounds %struct._PixelPacket, ptr %110, i64 0, i32 1
  %354 = load i16, ptr %353, align 2, !tbaa !63
  %355 = zext i16 %354 to i32
  %356 = mul nuw nsw i32 %355, %355
  %357 = getelementptr inbounds %struct._PixelPacket, ptr %111, i64 0, i32 1
  %358 = load i16, ptr %357, align 2, !tbaa !63
  %359 = zext i16 %358 to i32
  %360 = mul nuw nsw i32 %359, %359
  %361 = add nuw nsw i32 %360, %356
  %362 = sitofp i32 %361 to double
  %363 = call double @sqrt(double noundef %362) #7
  %364 = fptoui double %363 to i16
  %365 = getelementptr inbounds %struct._PixelPacket, ptr %106, i64 0, i32 1
  store i16 %364, ptr %365, align 2, !tbaa !63
  %366 = load i16, ptr %357, align 2, !tbaa !63
  %367 = uitofp i16 %366 to double
  %368 = load i16, ptr %353, align 2, !tbaa !63
  %369 = uitofp i16 %368 to double
  %370 = call double @atan2(double noundef %367, double noundef %369) #7
  %371 = fdiv double %370, 0x401921FB54442D18
  %372 = fadd double %371, 5.000000e-01
  %373 = fptoui double %372 to i16
  %374 = getelementptr inbounds %struct._PixelPacket, ptr %107, i64 0, i32 1
  store i16 %373, ptr %374, align 2, !tbaa !63
  %375 = load i16, ptr %110, align 2, !tbaa !64
  %376 = zext i16 %375 to i32
  %377 = mul nuw nsw i32 %376, %376
  %378 = load i16, ptr %111, align 2, !tbaa !64
  %379 = zext i16 %378 to i32
  %380 = mul nuw nsw i32 %379, %379
  %381 = add nuw nsw i32 %380, %377
  %382 = sitofp i32 %381 to double
  %383 = call double @sqrt(double noundef %382) #7
  %384 = fptoui double %383 to i16
  store i16 %384, ptr %106, align 2, !tbaa !64
  %385 = load i16, ptr %111, align 2, !tbaa !64
  %386 = uitofp i16 %385 to double
  %387 = load i16, ptr %110, align 2, !tbaa !64
  %388 = uitofp i16 %387 to double
  %389 = call double @atan2(double noundef %386, double noundef %388) #7
  %390 = fdiv double %389, 0x401921FB54442D18
  %391 = fadd double %390, 5.000000e-01
  %392 = fptoui double %391 to i16
  store i16 %392, ptr %107, align 2, !tbaa !64
  %393 = load i32, ptr %68, align 8, !tbaa !61
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %639, label %395

395:                                              ; preds = %330
  %396 = getelementptr inbounds %struct._PixelPacket, ptr %110, i64 0, i32 3
  %397 = load i16, ptr %396, align 2, !tbaa !62
  %398 = zext i16 %397 to i32
  %399 = mul nuw nsw i32 %398, %398
  %400 = getelementptr inbounds %struct._PixelPacket, ptr %111, i64 0, i32 3
  %401 = load i16, ptr %400, align 2, !tbaa !62
  %402 = zext i16 %401 to i32
  %403 = mul nuw nsw i32 %402, %402
  %404 = add nuw nsw i32 %403, %399
  %405 = sitofp i32 %404 to double
  %406 = call double @sqrt(double noundef %405) #7
  %407 = fptoui double %406 to i16
  %408 = getelementptr inbounds %struct._PixelPacket, ptr %106, i64 0, i32 3
  store i16 %407, ptr %408, align 2, !tbaa !62
  %409 = load i16, ptr %400, align 2, !tbaa !62
  %410 = uitofp i16 %409 to double
  %411 = load i16, ptr %396, align 2, !tbaa !62
  %412 = uitofp i16 %411 to double
  %413 = call double @atan2(double noundef %410, double noundef %412) #7
  %414 = fdiv double %413, 0x401921FB54442D18
  %415 = fadd double %414, 5.000000e-01
  %416 = fptoui double %415 to i16
  br label %636

417:                                              ; preds = %104
  %418 = getelementptr inbounds %struct._PixelPacket, ptr %110, i64 0, i32 2
  %419 = load i16, ptr %418, align 2, !tbaa !59
  %420 = zext i16 %419 to i32
  %421 = getelementptr inbounds %struct._PixelPacket, ptr %108, i64 0, i32 2
  %422 = load i16, ptr %421, align 2, !tbaa !59
  %423 = zext i16 %422 to i32
  %424 = mul nuw nsw i32 %423, %420
  %425 = getelementptr inbounds %struct._PixelPacket, ptr %111, i64 0, i32 2
  %426 = load i16, ptr %425, align 2, !tbaa !59
  %427 = zext i16 %426 to i32
  %428 = getelementptr inbounds %struct._PixelPacket, ptr %109, i64 0, i32 2
  %429 = load i16, ptr %428, align 2, !tbaa !59
  %430 = zext i16 %429 to i32
  %431 = mul nuw nsw i32 %430, %427
  %432 = sub nsw i32 %424, %431
  %433 = sitofp i32 %432 to double
  %434 = fmul double %433, 0x3EF0001000100010
  %435 = fptoui double %434 to i16
  %436 = getelementptr inbounds %struct._PixelPacket, ptr %106, i64 0, i32 2
  store i16 %435, ptr %436, align 2, !tbaa !59
  %437 = load i16, ptr %425, align 2, !tbaa !59
  %438 = zext i16 %437 to i32
  %439 = load i16, ptr %421, align 2, !tbaa !59
  %440 = zext i16 %439 to i32
  %441 = mul nuw nsw i32 %440, %438
  %442 = load i16, ptr %418, align 2, !tbaa !59
  %443 = zext i16 %442 to i32
  %444 = load i16, ptr %428, align 2, !tbaa !59
  %445 = zext i16 %444 to i32
  %446 = mul nuw nsw i32 %445, %443
  %447 = add nuw nsw i32 %446, %441
  %448 = sitofp i32 %447 to double
  %449 = fmul double %448, 0x3EF0001000100010
  %450 = fptoui double %449 to i16
  %451 = getelementptr inbounds %struct._PixelPacket, ptr %107, i64 0, i32 2
  store i16 %450, ptr %451, align 2, !tbaa !59
  %452 = load <2 x i16>, ptr %110, align 2, !tbaa !60
  %453 = zext <2 x i16> %452 to <2 x i32>
  %454 = load <2 x i16>, ptr %108, align 2, !tbaa !60
  %455 = zext <2 x i16> %454 to <2 x i32>
  %456 = mul nuw nsw <2 x i32> %455, %453
  %457 = load <2 x i16>, ptr %111, align 2, !tbaa !60
  %458 = zext <2 x i16> %457 to <2 x i32>
  %459 = load <2 x i16>, ptr %109, align 2, !tbaa !60
  %460 = zext <2 x i16> %459 to <2 x i32>
  %461 = mul nuw nsw <2 x i32> %460, %458
  %462 = sub nsw <2 x i32> %456, %461
  %463 = sitofp <2 x i32> %462 to <2 x double>
  %464 = fmul <2 x double> %463, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %465 = fptoui <2 x double> %464 to <2 x i16>
  store <2 x i16> %465, ptr %106, align 2, !tbaa !60
  %466 = load <2 x i16>, ptr %111, align 2, !tbaa !60
  %467 = zext <2 x i16> %466 to <2 x i32>
  %468 = load <2 x i16>, ptr %108, align 2, !tbaa !60
  %469 = zext <2 x i16> %468 to <2 x i32>
  %470 = mul nuw nsw <2 x i32> %469, %467
  %471 = load <2 x i16>, ptr %110, align 2, !tbaa !60
  %472 = zext <2 x i16> %471 to <2 x i32>
  %473 = load <2 x i16>, ptr %109, align 2, !tbaa !60
  %474 = zext <2 x i16> %473 to <2 x i32>
  %475 = mul nuw nsw <2 x i32> %474, %472
  %476 = add nuw nsw <2 x i32> %475, %470
  %477 = sitofp <2 x i32> %476 to <2 x double>
  %478 = fmul <2 x double> %477, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %479 = fptoui <2 x double> %478 to <2 x i16>
  store <2 x i16> %479, ptr %107, align 2, !tbaa !60
  %480 = load i32, ptr %68, align 8, !tbaa !61
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %639, label %482

482:                                              ; preds = %417
  %483 = getelementptr inbounds %struct._PixelPacket, ptr %110, i64 0, i32 3
  %484 = load i16, ptr %483, align 2, !tbaa !62
  %485 = zext i16 %484 to i32
  %486 = getelementptr inbounds %struct._PixelPacket, ptr %108, i64 0, i32 3
  %487 = load i16, ptr %486, align 2, !tbaa !62
  %488 = zext i16 %487 to i32
  %489 = mul nuw nsw i32 %488, %485
  %490 = getelementptr inbounds %struct._PixelPacket, ptr %111, i64 0, i32 3
  %491 = load i16, ptr %490, align 2, !tbaa !62
  %492 = zext i16 %491 to i32
  %493 = getelementptr inbounds %struct._PixelPacket, ptr %109, i64 0, i32 3
  %494 = load i16, ptr %493, align 2, !tbaa !62
  %495 = zext i16 %494 to i32
  %496 = mul nuw nsw i32 %495, %492
  %497 = sub nsw i32 %489, %496
  %498 = sitofp i32 %497 to double
  %499 = fmul double %498, 0x3EF0001000100010
  %500 = fptoui double %499 to i16
  %501 = getelementptr inbounds %struct._PixelPacket, ptr %106, i64 0, i32 3
  store i16 %500, ptr %501, align 2, !tbaa !62
  %502 = load i16, ptr %490, align 2, !tbaa !62
  %503 = zext i16 %502 to i32
  %504 = load i16, ptr %486, align 2, !tbaa !62
  %505 = zext i16 %504 to i32
  %506 = mul nuw nsw i32 %505, %503
  %507 = load i16, ptr %483, align 2, !tbaa !62
  %508 = zext i16 %507 to i32
  %509 = load i16, ptr %493, align 2, !tbaa !62
  %510 = zext i16 %509 to i32
  %511 = mul nuw nsw i32 %510, %508
  %512 = add nuw nsw i32 %511, %506
  %513 = sitofp i32 %512 to double
  %514 = fmul double %513, 0x3EF0001000100010
  %515 = fptoui double %514 to i16
  br label %636

516:                                              ; preds = %104
  %517 = getelementptr inbounds %struct._PixelPacket, ptr %110, i64 0, i32 2
  %518 = load i16, ptr %517, align 2, !tbaa !59
  %519 = uitofp i16 %518 to double
  %520 = getelementptr inbounds %struct._PixelPacket, ptr %111, i64 0, i32 2
  %521 = load i16, ptr %520, align 2, !tbaa !59
  %522 = uitofp i16 %521 to double
  %523 = fadd double %522, -5.000000e-01
  %524 = fmul double %523, 0x401921FB54442D18
  %525 = call double @cos(double noundef %524) #7
  %526 = fmul double %525, %519
  %527 = fptoui double %526 to i16
  %528 = getelementptr inbounds %struct._PixelPacket, ptr %106, i64 0, i32 2
  store i16 %527, ptr %528, align 2, !tbaa !59
  %529 = load i16, ptr %517, align 2, !tbaa !59
  %530 = uitofp i16 %529 to double
  %531 = load i16, ptr %520, align 2, !tbaa !59
  %532 = uitofp i16 %531 to double
  %533 = fadd double %532, -5.000000e-01
  %534 = fmul double %533, 0x401921FB54442D18
  %535 = call double @sin(double noundef %534) #7
  %536 = fmul double %535, %530
  %537 = fptoui double %536 to i16
  %538 = getelementptr inbounds %struct._PixelPacket, ptr %107, i64 0, i32 2
  store i16 %537, ptr %538, align 2, !tbaa !59
  %539 = getelementptr inbounds %struct._PixelPacket, ptr %110, i64 0, i32 1
  %540 = load i16, ptr %539, align 2, !tbaa !63
  %541 = uitofp i16 %540 to double
  %542 = getelementptr inbounds %struct._PixelPacket, ptr %111, i64 0, i32 1
  %543 = load i16, ptr %542, align 2, !tbaa !63
  %544 = uitofp i16 %543 to double
  %545 = fadd double %544, -5.000000e-01
  %546 = fmul double %545, 0x401921FB54442D18
  %547 = call double @cos(double noundef %546) #7
  %548 = fmul double %547, %541
  %549 = fptoui double %548 to i16
  %550 = getelementptr inbounds %struct._PixelPacket, ptr %106, i64 0, i32 1
  store i16 %549, ptr %550, align 2, !tbaa !63
  %551 = load i16, ptr %539, align 2, !tbaa !63
  %552 = uitofp i16 %551 to double
  %553 = load i16, ptr %542, align 2, !tbaa !63
  %554 = uitofp i16 %553 to double
  %555 = fadd double %554, -5.000000e-01
  %556 = fmul double %555, 0x401921FB54442D18
  %557 = call double @sin(double noundef %556) #7
  %558 = fmul double %557, %552
  %559 = fptoui double %558 to i16
  %560 = getelementptr inbounds %struct._PixelPacket, ptr %107, i64 0, i32 1
  store i16 %559, ptr %560, align 2, !tbaa !63
  %561 = load i16, ptr %110, align 2, !tbaa !64
  %562 = uitofp i16 %561 to double
  %563 = load i16, ptr %111, align 2, !tbaa !64
  %564 = uitofp i16 %563 to double
  %565 = fadd double %564, -5.000000e-01
  %566 = fmul double %565, 0x401921FB54442D18
  %567 = call double @cos(double noundef %566) #7
  %568 = fmul double %567, %562
  %569 = fptoui double %568 to i16
  store i16 %569, ptr %106, align 2, !tbaa !64
  %570 = load i16, ptr %110, align 2, !tbaa !64
  %571 = uitofp i16 %570 to double
  %572 = load i16, ptr %111, align 2, !tbaa !64
  %573 = uitofp i16 %572 to double
  %574 = fadd double %573, -5.000000e-01
  %575 = fmul double %574, 0x401921FB54442D18
  %576 = call double @sin(double noundef %575) #7
  %577 = fmul double %576, %571
  %578 = fptoui double %577 to i16
  store i16 %578, ptr %107, align 2, !tbaa !64
  %579 = load i32, ptr %68, align 8, !tbaa !61
  %580 = icmp eq i32 %579, 0
  br i1 %580, label %639, label %581

581:                                              ; preds = %516
  %582 = getelementptr inbounds %struct._PixelPacket, ptr %110, i64 0, i32 3
  %583 = load i16, ptr %582, align 2, !tbaa !62
  %584 = uitofp i16 %583 to double
  %585 = getelementptr inbounds %struct._PixelPacket, ptr %111, i64 0, i32 3
  %586 = load i16, ptr %585, align 2, !tbaa !62
  %587 = uitofp i16 %586 to double
  %588 = fadd double %587, -5.000000e-01
  %589 = fmul double %588, 0x401921FB54442D18
  %590 = call double @cos(double noundef %589) #7
  %591 = fmul double %590, %584
  %592 = fptoui double %591 to i16
  %593 = getelementptr inbounds %struct._PixelPacket, ptr %106, i64 0, i32 3
  store i16 %592, ptr %593, align 2, !tbaa !62
  %594 = load i16, ptr %582, align 2, !tbaa !62
  %595 = uitofp i16 %594 to double
  %596 = load i16, ptr %585, align 2, !tbaa !62
  %597 = uitofp i16 %596 to double
  %598 = fadd double %597, -5.000000e-01
  %599 = fmul double %598, 0x401921FB54442D18
  %600 = call double @sin(double noundef %599) #7
  %601 = fmul double %600, %595
  %602 = fptoui double %601 to i16
  br label %636

603:                                              ; preds = %104
  %604 = getelementptr inbounds %struct._PixelPacket, ptr %110, i64 0, i32 2
  %605 = load i16, ptr %604, align 2, !tbaa !59
  %606 = getelementptr inbounds %struct._PixelPacket, ptr %108, i64 0, i32 2
  %607 = load i16, ptr %606, align 2, !tbaa !59
  %608 = sub i16 %605, %607
  %609 = getelementptr inbounds %struct._PixelPacket, ptr %106, i64 0, i32 2
  store i16 %608, ptr %609, align 2, !tbaa !59
  %610 = getelementptr inbounds %struct._PixelPacket, ptr %111, i64 0, i32 2
  %611 = load i16, ptr %610, align 2, !tbaa !59
  %612 = getelementptr inbounds %struct._PixelPacket, ptr %109, i64 0, i32 2
  %613 = load i16, ptr %612, align 2, !tbaa !59
  %614 = sub i16 %611, %613
  %615 = getelementptr inbounds %struct._PixelPacket, ptr %107, i64 0, i32 2
  store i16 %614, ptr %615, align 2, !tbaa !59
  %616 = load <2 x i16>, ptr %110, align 2, !tbaa !60
  %617 = load <2 x i16>, ptr %108, align 2, !tbaa !60
  %618 = sub <2 x i16> %616, %617
  store <2 x i16> %618, ptr %106, align 2, !tbaa !60
  %619 = load <2 x i16>, ptr %111, align 2, !tbaa !60
  %620 = load <2 x i16>, ptr %109, align 2, !tbaa !60
  %621 = sub <2 x i16> %619, %620
  store <2 x i16> %621, ptr %107, align 2, !tbaa !60
  %622 = load i32, ptr %68, align 8, !tbaa !61
  %623 = icmp eq i32 %622, 0
  br i1 %623, label %639, label %624

624:                                              ; preds = %603
  %625 = getelementptr inbounds %struct._PixelPacket, ptr %110, i64 0, i32 3
  %626 = load i16, ptr %625, align 2, !tbaa !62
  %627 = getelementptr inbounds %struct._PixelPacket, ptr %108, i64 0, i32 3
  %628 = load i16, ptr %627, align 2, !tbaa !62
  %629 = sub i16 %626, %628
  %630 = getelementptr inbounds %struct._PixelPacket, ptr %106, i64 0, i32 3
  store i16 %629, ptr %630, align 2, !tbaa !62
  %631 = getelementptr inbounds %struct._PixelPacket, ptr %111, i64 0, i32 3
  %632 = load i16, ptr %631, align 2, !tbaa !62
  %633 = getelementptr inbounds %struct._PixelPacket, ptr %109, i64 0, i32 3
  %634 = load i16, ptr %633, align 2, !tbaa !62
  %635 = sub i16 %632, %634
  br label %636

636:                                              ; preds = %133, %158, %395, %482, %581, %624, %288
  %637 = phi i16 [ %329, %288 ], [ %635, %624 ], [ %602, %581 ], [ %515, %482 ], [ %416, %395 ], [ %164, %158 ], [ %144, %133 ]
  %638 = getelementptr inbounds %struct._PixelPacket, ptr %107, i64 0, i32 3
  store i16 %637, ptr %638, align 2, !tbaa !62
  br label %639

639:                                              ; preds = %636, %165, %603, %516, %417, %330, %145, %112
  %640 = getelementptr inbounds %struct._PixelPacket, ptr %110, i64 1
  %641 = getelementptr inbounds %struct._PixelPacket, ptr %111, i64 1
  %642 = getelementptr inbounds %struct._PixelPacket, ptr %108, i64 1
  %643 = getelementptr inbounds %struct._PixelPacket, ptr %109, i64 1
  %644 = getelementptr inbounds %struct._PixelPacket, ptr %106, i64 1
  %645 = getelementptr inbounds %struct._PixelPacket, ptr %107, i64 1
  %646 = add nuw nsw i64 %105, 1
  %647 = load i64, ptr %19, align 8, !tbaa !54
  %648 = icmp slt i64 %646, %647
  br i1 %648, label %104, label %649, !llvm.loop !65

649:                                              ; preds = %639, %101
  %650 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %64, ptr noundef %2) #9
  %651 = icmp ne i32 %650, 0
  %652 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %63, ptr noundef %2) #9
  %653 = icmp ne i32 %652, 0
  %654 = select i1 %653, i1 %651, i1 false
  %655 = zext i1 %654 to i32
  %656 = load ptr, ptr %69, align 8, !tbaa !67
  %657 = icmp eq ptr %656, null
  br i1 %657, label %664, label %658

658:                                              ; preds = %649
  %659 = add nsw i64 %72, 1
  %660 = load i64, ptr %21, align 8, !tbaa !55
  %661 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, i64 noundef %72, i64 noundef %660) #8
  %662 = icmp eq i32 %661, 0
  %663 = select i1 %662, i32 0, i32 %655
  br label %664

664:                                              ; preds = %649, %658, %75, %70
  %665 = phi i32 [ 0, %70 ], [ 0, %75 ], [ %663, %658 ], [ %655, %649 ]
  %666 = phi i64 [ %72, %70 ], [ %72, %75 ], [ %659, %658 ], [ %72, %649 ]
  %667 = add nuw nsw i64 %71, 1
  %668 = load i64, ptr %21, align 8, !tbaa !55
  %669 = icmp slt i64 %667, %668
  br i1 %669, label %70, label %670, !llvm.loop !68

670:                                              ; preds = %664
  %671 = icmp eq i32 %665, 0
  br label %672

672:                                              ; preds = %670, %53
  %673 = phi i1 [ false, %53 ], [ %671, %670 ]
  %674 = call ptr @DestroyCacheView(ptr noundef %63) #7
  %675 = call ptr @DestroyCacheView(ptr noundef %64) #7
  %676 = call ptr @DestroyCacheView(ptr noundef %61) #7
  %677 = call ptr @DestroyCacheView(ptr noundef %62) #7
  %678 = call ptr @DestroyCacheView(ptr noundef %59) #7
  %679 = call ptr @DestroyCacheView(ptr noundef %60) #7
  %680 = load ptr, ptr %4, align 8, !tbaa !58
  br i1 %673, label %681, label %683

681:                                              ; preds = %672
  %682 = call ptr @DestroyImageList(ptr noundef %680) #7
  br label %683

683:                                              ; preds = %672, %681, %18, %32, %15
  %684 = phi ptr [ null, %15 ], [ %34, %32 ], [ null, %18 ], [ %682, %681 ], [ %680, %672 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  ret ptr %684
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @NewImageList() local_unnamed_addr #2

; Function Attrs: optsize
declare void @AppendImageToList(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyImageList(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetImageArtifact(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc double @StringToDouble(ptr noalias noundef %0) unnamed_addr #0 !PGOFuncName !69 {
  %2 = tail call double @InterpretLocaleValue(ptr noundef %0, ptr noundef null) #7
  ret double %2
}

; Function Attrs: optsize
declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: hot optsize
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: hot optsize
declare ptr @QueueCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @PerceptibleReciprocal(double noundef %0) unnamed_addr #4 !PGOFuncName !70 {
  %2 = fcmp olt double %0, 0.000000e+00
  %3 = select i1 %2, double -1.000000e+00, double 1.000000e+00
  %4 = fmul double %3, %0
  %5 = fcmp ult double %4, 1.000000e-15
  %6 = fdiv double 1.000000e+00, %0
  %7 = fdiv double %3, 1.000000e-15
  %8 = select i1 %5, double %7, double %6
  ret double %8
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #5

; Function Attrs: hot optsize
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @SetImageProgress(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 !PGOFuncName !71 {
  %4 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #6
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %6 = load ptr, ptr %5, align 8, !tbaa !67
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.6, ptr noundef nonnull %9) #7
  %11 = load ptr, ptr %5, align 8, !tbaa !67
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %13 = load ptr, ptr %12, align 8, !tbaa !72
  %14 = call i32 %11(ptr noundef nonnull %4, i64 noundef %1, i64 noundef %2, ptr noundef %13) #7
  br label %15

15:                                               ; preds = %3, %8
  %16 = phi i32 [ %14, %8 ], [ 1, %3 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #6
  ret i32 %16
}

; Function Attrs: optsize
declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ForwardFourierTransformImage(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @NewImageList() #7
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %6 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1014, i32 noundef 320, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull %5) #7
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @InverseFourierTransformImage(ptr noundef %0, ptr noundef readnone %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1626, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #7
  br label %11

11:                                               ; preds = %8, %4
  %12 = icmp eq ptr %1, null
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  br i1 %12, label %14, label %16

14:                                               ; preds = %11
  %15 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1630, i32 noundef 465, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %13) #7
  br label %18

16:                                               ; preds = %11
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1637, i32 noundef 320, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull %13) #7
  br label %18

18:                                               ; preds = %16, %14
  ret ptr null
}

; Function Attrs: optsize
declare double @InterpretLocaleValue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { hot nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 11498625}
!4 = !{!"MaxCount", i64 3247920}
!5 = !{!"MaxInternalCount", i64 3247920}
!6 = !{!"MaxFunctionCount", i64 51090}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 3247920, i32 3}
!14 = !{i32 100000, i64 3247920, i32 3}
!15 = !{i32 200000, i64 3247920, i32 3}
!16 = !{i32 300000, i64 3247920, i32 3}
!17 = !{i32 400000, i64 3247920, i32 3}
!18 = !{i32 500000, i64 3247920, i32 3}
!19 = !{i32 600000, i64 3247920, i32 3}
!20 = !{i32 700000, i64 3247920, i32 3}
!21 = !{i32 800000, i64 3247920, i32 3}
!22 = !{i32 900000, i64 1623960, i32 4}
!23 = !{i32 950000, i64 1623960, i32 4}
!24 = !{i32 990000, i64 51090, i32 6}
!25 = !{i32 999000, i64 25545, i32 7}
!26 = !{i32 999900, i64 3120, i32 8}
!27 = !{i32 999990, i64 3120, i32 8}
!28 = !{i32 999999, i64 1, i32 36}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
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
!53 = !{!35, !40, i64 13104}
!54 = !{!35, !39, i64 40}
!55 = !{!35, !39, i64 48}
!56 = !{!35, !36, i64 0}
!57 = !{!35, !39, i64 56}
!58 = !{!40, !40, i64 0}
!59 = !{!41, !42, i64 4}
!60 = !{!42, !42, i64 0}
!61 = !{!35, !36, i64 32}
!62 = !{!41, !42, i64 6}
!63 = !{!41, !42, i64 2}
!64 = !{!41, !42, i64 0}
!65 = distinct !{!65, !66}
!66 = !{!"llvm.loop.mustprogress"}
!67 = !{!35, !40, i64 568}
!68 = distinct !{!68, !66}
!69 = !{!"fourier.c:StringToDouble"}
!70 = !{!"fourier.c:PerceptibleReciprocal"}
!71 = !{!"fourier.c:SetImageProgress"}
!72 = !{!35, !40, i64 576}
