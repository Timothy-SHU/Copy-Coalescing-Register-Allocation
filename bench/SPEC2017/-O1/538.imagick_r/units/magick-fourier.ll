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

; Function Attrs: nounwind uwtable
define dso_local ptr @ComplexImages(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 173, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #5
  br label %12

12:                                               ; preds = %9, %3
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 69
  %14 = load ptr, ptr %13, align 8, !tbaa !53
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 178, i32 noundef 465, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #5
  br label %773

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %21 = load i64, ptr %20, align 8, !tbaa !54
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %23 = load i64, ptr %22, align 8, !tbaa !55
  %24 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef %21, i64 noundef %23, i32 noundef 1, ptr noundef %2) #5
  %25 = icmp eq ptr %24, null
  br i1 %25, label %773, label %26

26:                                               ; preds = %19
  store i32 1, ptr %24, align 8, !tbaa !56
  %27 = getelementptr inbounds %struct._Image, ptr %24, i64 0, i32 9
  store i64 32, ptr %27, align 8, !tbaa !57
  %28 = tail call ptr @NewImageList() #5
  store ptr %28, ptr %5, align 8, !tbaa !58
  call void @AppendImageToList(ptr noundef nonnull %5, ptr noundef nonnull %24) #5
  %29 = load i64, ptr %20, align 8, !tbaa !54
  %30 = load i64, ptr %22, align 8, !tbaa !55
  %31 = call ptr @CloneImage(ptr noundef %0, i64 noundef %29, i64 noundef %30, i32 noundef 1, ptr noundef %2) #5
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load ptr, ptr %5, align 8, !tbaa !58
  %35 = call ptr @DestroyImageList(ptr noundef %34) #5
  store ptr %35, ptr %5, align 8, !tbaa !58
  br label %773

36:                                               ; preds = %26
  store i32 1, ptr %31, align 8, !tbaa !56
  %37 = getelementptr inbounds %struct._Image, ptr %31, i64 0, i32 9
  store i64 32, ptr %37, align 8, !tbaa !57
  call void @AppendImageToList(ptr noundef nonnull %5, ptr noundef nonnull %31) #5
  %38 = call ptr @GetImageArtifact(ptr noundef nonnull %31, ptr noundef nonnull @.str.5) #5
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = call double @InterpretLocaleValue(ptr noundef nonnull %38, ptr noundef null) #5
  br label %42

42:                                               ; preds = %40, %36
  %43 = phi double [ %41, %40 ], [ 0.000000e+00, %36 ]
  %44 = load ptr, ptr %13, align 8, !tbaa !53
  %45 = getelementptr inbounds %struct._Image, ptr %44, i64 0, i32 69
  %46 = load ptr, ptr %45, align 8, !tbaa !53
  %47 = icmp eq ptr %46, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct._Image, ptr %46, i64 0, i32 69
  %50 = load ptr, ptr %49, align 8, !tbaa !53
  %51 = icmp eq ptr %50, null
  %52 = select i1 %51, ptr %44, ptr %50
  %53 = select i1 %51, ptr %0, ptr %46
  br label %54

54:                                               ; preds = %48, %42
  %55 = phi ptr [ %44, %42 ], [ %52, %48 ]
  %56 = phi ptr [ %0, %42 ], [ %53, %48 ]
  %57 = load ptr, ptr %5, align 8, !tbaa !58
  %58 = getelementptr inbounds %struct._Image, ptr %57, i64 0, i32 69
  %59 = load ptr, ptr %58, align 8, !tbaa !53
  %60 = call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %2) #5
  %61 = call ptr @AcquireVirtualCacheView(ptr noundef %44, ptr noundef %2) #5
  %62 = call ptr @AcquireVirtualCacheView(ptr noundef %56, ptr noundef %2) #5
  %63 = call ptr @AcquireVirtualCacheView(ptr noundef %55, ptr noundef %2) #5
  %64 = call ptr @AcquireAuthenticCacheView(ptr noundef %57, ptr noundef %2) #5
  %65 = call ptr @AcquireAuthenticCacheView(ptr noundef %59, ptr noundef %2) #5
  %66 = load i64, ptr %22, align 8, !tbaa !55
  %67 = icmp sgt i64 %66, 0
  br i1 %67, label %68, label %764

68:                                               ; preds = %54
  %69 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %70 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %71 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %72 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %73 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %74 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %75 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %76 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %77 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %78 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %79

79:                                               ; preds = %68, %747
  %80 = phi i64 [ 0, %68 ], [ %750, %747 ]
  %81 = phi i64 [ 0, %68 ], [ %749, %747 ]
  %82 = phi i32 [ 1, %68 ], [ %748, %747 ]
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %747, label %84

84:                                               ; preds = %79
  %85 = load i64, ptr %20, align 8, !tbaa !54
  %86 = call ptr @GetCacheViewVirtualPixels(ptr noundef %60, i64 noundef 0, i64 noundef %80, i64 noundef %85, i64 noundef 1, ptr noundef %2) #6
  %87 = load i64, ptr %20, align 8, !tbaa !54
  %88 = call ptr @GetCacheViewVirtualPixels(ptr noundef %61, i64 noundef 0, i64 noundef %80, i64 noundef %87, i64 noundef 1, ptr noundef %2) #6
  %89 = load i64, ptr %20, align 8, !tbaa !54
  %90 = call ptr @GetCacheViewVirtualPixels(ptr noundef %62, i64 noundef 0, i64 noundef %80, i64 noundef %89, i64 noundef 1, ptr noundef %2) #6
  %91 = load i64, ptr %20, align 8, !tbaa !54
  %92 = call ptr @GetCacheViewVirtualPixels(ptr noundef %63, i64 noundef 0, i64 noundef %80, i64 noundef %91, i64 noundef 1, ptr noundef %2) #6
  %93 = load i64, ptr %20, align 8, !tbaa !54
  %94 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %64, i64 noundef 0, i64 noundef %80, i64 noundef %93, i64 noundef 1, ptr noundef %2) #6
  %95 = load i64, ptr %20, align 8, !tbaa !54
  %96 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %65, i64 noundef 0, i64 noundef %80, i64 noundef %95, i64 noundef 1, ptr noundef %2) #6
  %97 = icmp eq ptr %86, null
  %98 = icmp eq ptr %88, null
  %99 = select i1 %97, i1 true, i1 %98
  %100 = icmp eq ptr %90, null
  %101 = select i1 %99, i1 true, i1 %100
  %102 = icmp eq ptr %92, null
  %103 = select i1 %101, i1 true, i1 %102
  %104 = icmp eq ptr %94, null
  %105 = select i1 %103, i1 true, i1 %104
  %106 = icmp eq ptr %96, null
  %107 = select i1 %105, i1 true, i1 %106
  br i1 %107, label %747, label %108

108:                                              ; preds = %84
  %109 = load i64, ptr %20, align 8, !tbaa !54
  %110 = icmp sgt i64 %109, 0
  br i1 %110, label %111, label %729

111:                                              ; preds = %108, %719
  %112 = phi i64 [ %726, %719 ], [ 0, %108 ]
  %113 = phi ptr [ %724, %719 ], [ %94, %108 ]
  %114 = phi ptr [ %725, %719 ], [ %96, %108 ]
  %115 = phi ptr [ %722, %719 ], [ %90, %108 ]
  %116 = phi ptr [ %723, %719 ], [ %92, %108 ]
  %117 = phi ptr [ %720, %719 ], [ %86, %108 ]
  %118 = phi ptr [ %721, %719 ], [ %88, %108 ]
  switch i32 %1, label %164 [
    i32 1, label %119
    i32 7, label %671
    i32 3, label %191
    i32 4, label %364
    i32 5, label %451
    i32 6, label %584
  ]

119:                                              ; preds = %111
  %120 = getelementptr inbounds %struct._PixelPacket, ptr %117, i64 0, i32 2
  %121 = load i16, ptr %120, align 2, !tbaa !59
  %122 = getelementptr inbounds %struct._PixelPacket, ptr %115, i64 0, i32 2
  %123 = load i16, ptr %122, align 2, !tbaa !59
  %124 = add i16 %123, %121
  %125 = getelementptr inbounds %struct._PixelPacket, ptr %113, i64 0, i32 2
  store i16 %124, ptr %125, align 2, !tbaa !59
  %126 = getelementptr inbounds %struct._PixelPacket, ptr %118, i64 0, i32 2
  %127 = load i16, ptr %126, align 2, !tbaa !59
  %128 = getelementptr inbounds %struct._PixelPacket, ptr %116, i64 0, i32 2
  %129 = load i16, ptr %128, align 2, !tbaa !59
  %130 = add i16 %129, %127
  %131 = getelementptr inbounds %struct._PixelPacket, ptr %114, i64 0, i32 2
  store i16 %130, ptr %131, align 2, !tbaa !59
  %132 = getelementptr inbounds %struct._PixelPacket, ptr %117, i64 0, i32 1
  %133 = load i16, ptr %132, align 2, !tbaa !60
  %134 = getelementptr inbounds %struct._PixelPacket, ptr %115, i64 0, i32 1
  %135 = load i16, ptr %134, align 2, !tbaa !60
  %136 = add i16 %135, %133
  %137 = getelementptr inbounds %struct._PixelPacket, ptr %113, i64 0, i32 1
  store i16 %136, ptr %137, align 2, !tbaa !60
  %138 = getelementptr inbounds %struct._PixelPacket, ptr %118, i64 0, i32 1
  %139 = load i16, ptr %138, align 2, !tbaa !60
  %140 = getelementptr inbounds %struct._PixelPacket, ptr %116, i64 0, i32 1
  %141 = load i16, ptr %140, align 2, !tbaa !60
  %142 = add i16 %141, %139
  %143 = getelementptr inbounds %struct._PixelPacket, ptr %114, i64 0, i32 1
  store i16 %142, ptr %143, align 2, !tbaa !60
  %144 = load i16, ptr %117, align 2, !tbaa !61
  %145 = load i16, ptr %115, align 2, !tbaa !61
  %146 = add i16 %145, %144
  store i16 %146, ptr %113, align 2, !tbaa !61
  %147 = load i16, ptr %118, align 2, !tbaa !61
  %148 = load i16, ptr %116, align 2, !tbaa !61
  %149 = add i16 %148, %147
  store i16 %149, ptr %114, align 2, !tbaa !61
  %150 = load i32, ptr %74, align 8, !tbaa !62
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %719, label %152

152:                                              ; preds = %119
  %153 = getelementptr inbounds %struct._PixelPacket, ptr %117, i64 0, i32 3
  %154 = load i16, ptr %153, align 2, !tbaa !63
  %155 = getelementptr inbounds %struct._PixelPacket, ptr %115, i64 0, i32 3
  %156 = load i16, ptr %155, align 2, !tbaa !63
  %157 = add i16 %156, %154
  %158 = getelementptr inbounds %struct._PixelPacket, ptr %113, i64 0, i32 3
  store i16 %157, ptr %158, align 2, !tbaa !63
  %159 = getelementptr inbounds %struct._PixelPacket, ptr %118, i64 0, i32 3
  %160 = load i16, ptr %159, align 2, !tbaa !63
  %161 = getelementptr inbounds %struct._PixelPacket, ptr %116, i64 0, i32 3
  %162 = load i16, ptr %161, align 2, !tbaa !63
  %163 = add i16 %162, %160
  br label %716

164:                                              ; preds = %111
  %165 = getelementptr inbounds %struct._PixelPacket, ptr %117, i64 0, i32 2
  %166 = load i16, ptr %165, align 2, !tbaa !59
  %167 = getelementptr inbounds %struct._PixelPacket, ptr %113, i64 0, i32 2
  store i16 %166, ptr %167, align 2, !tbaa !59
  %168 = getelementptr inbounds %struct._PixelPacket, ptr %116, i64 0, i32 2
  %169 = load i16, ptr %168, align 2, !tbaa !59
  %170 = sub i16 0, %169
  %171 = getelementptr inbounds %struct._PixelPacket, ptr %114, i64 0, i32 2
  store i16 %170, ptr %171, align 2, !tbaa !59
  %172 = getelementptr inbounds %struct._PixelPacket, ptr %117, i64 0, i32 1
  %173 = load i16, ptr %172, align 2, !tbaa !60
  %174 = getelementptr inbounds %struct._PixelPacket, ptr %113, i64 0, i32 1
  store i16 %173, ptr %174, align 2, !tbaa !60
  %175 = getelementptr inbounds %struct._PixelPacket, ptr %116, i64 0, i32 1
  %176 = load i16, ptr %175, align 2, !tbaa !60
  %177 = sub i16 0, %176
  %178 = getelementptr inbounds %struct._PixelPacket, ptr %114, i64 0, i32 1
  store i16 %177, ptr %178, align 2, !tbaa !60
  %179 = load i16, ptr %117, align 2, !tbaa !61
  store i16 %179, ptr %113, align 2, !tbaa !61
  %180 = load i16, ptr %116, align 2, !tbaa !61
  %181 = sub i16 0, %180
  store i16 %181, ptr %114, align 2, !tbaa !61
  %182 = load i32, ptr %75, align 8, !tbaa !62
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %719, label %184

184:                                              ; preds = %164
  %185 = getelementptr inbounds %struct._PixelPacket, ptr %117, i64 0, i32 3
  %186 = load i16, ptr %185, align 2, !tbaa !63
  %187 = getelementptr inbounds %struct._PixelPacket, ptr %113, i64 0, i32 3
  store i16 %186, ptr %187, align 2, !tbaa !63
  %188 = getelementptr inbounds %struct._PixelPacket, ptr %116, i64 0, i32 3
  %189 = load i16, ptr %188, align 2, !tbaa !63
  %190 = sub i16 0, %189
  br label %716

191:                                              ; preds = %111
  %192 = getelementptr inbounds %struct._PixelPacket, ptr %115, i64 0, i32 2
  %193 = load i16, ptr %192, align 2, !tbaa !59
  %194 = zext i16 %193 to i32
  %195 = mul nuw nsw i32 %194, %194
  %196 = getelementptr inbounds %struct._PixelPacket, ptr %116, i64 0, i32 2
  %197 = load i16, ptr %196, align 2, !tbaa !59
  %198 = zext i16 %197 to i32
  %199 = mul nuw nsw i32 %198, %198
  %200 = add nuw nsw i32 %199, %195
  %201 = sitofp i32 %200 to double
  %202 = fadd double %43, %201
  %203 = fcmp olt double %202, 0.000000e+00
  %204 = select i1 %203, double 0.000000e+00, double %202
  %205 = fcmp ult double %204, 1.000000e-15
  %206 = fdiv double 1.000000e+00, %204
  %207 = select i1 %205, double 0x430C6BF52633FFFF, double %206
  %208 = getelementptr inbounds %struct._PixelPacket, ptr %117, i64 0, i32 2
  %209 = load i16, ptr %208, align 2, !tbaa !59
  %210 = zext i16 %209 to i32
  %211 = mul nuw nsw i32 %210, %194
  %212 = getelementptr inbounds %struct._PixelPacket, ptr %118, i64 0, i32 2
  %213 = load i16, ptr %212, align 2, !tbaa !59
  %214 = zext i16 %213 to i32
  %215 = mul nuw nsw i32 %214, %198
  %216 = add nuw nsw i32 %215, %211
  %217 = sitofp i32 %216 to double
  %218 = fmul double %207, %217
  %219 = fptoui double %218 to i16
  %220 = getelementptr inbounds %struct._PixelPacket, ptr %113, i64 0, i32 2
  store i16 %219, ptr %220, align 2, !tbaa !59
  %221 = load i16, ptr %212, align 2, !tbaa !59
  %222 = zext i16 %221 to i32
  %223 = load i16, ptr %192, align 2, !tbaa !59
  %224 = zext i16 %223 to i32
  %225 = mul nuw nsw i32 %224, %222
  %226 = load i16, ptr %208, align 2, !tbaa !59
  %227 = zext i16 %226 to i32
  %228 = load i16, ptr %196, align 2, !tbaa !59
  %229 = zext i16 %228 to i32
  %230 = mul nuw nsw i32 %229, %227
  %231 = sub nsw i32 %225, %230
  %232 = sitofp i32 %231 to double
  %233 = fmul double %207, %232
  %234 = fptoui double %233 to i16
  %235 = getelementptr inbounds %struct._PixelPacket, ptr %114, i64 0, i32 2
  store i16 %234, ptr %235, align 2, !tbaa !59
  %236 = getelementptr inbounds %struct._PixelPacket, ptr %115, i64 0, i32 1
  %237 = load i16, ptr %236, align 2, !tbaa !60
  %238 = zext i16 %237 to i32
  %239 = mul nuw nsw i32 %238, %238
  %240 = getelementptr inbounds %struct._PixelPacket, ptr %116, i64 0, i32 1
  %241 = load i16, ptr %240, align 2, !tbaa !60
  %242 = zext i16 %241 to i32
  %243 = mul nuw nsw i32 %242, %242
  %244 = add nuw nsw i32 %243, %239
  %245 = sitofp i32 %244 to double
  %246 = fadd double %43, %245
  %247 = fcmp olt double %246, 0.000000e+00
  %248 = select i1 %247, double 0.000000e+00, double %246
  %249 = fcmp ult double %248, 1.000000e-15
  %250 = fdiv double 1.000000e+00, %248
  %251 = select i1 %249, double 0x430C6BF52633FFFF, double %250
  %252 = getelementptr inbounds %struct._PixelPacket, ptr %117, i64 0, i32 1
  %253 = load i16, ptr %252, align 2, !tbaa !60
  %254 = zext i16 %253 to i32
  %255 = mul nuw nsw i32 %254, %238
  %256 = getelementptr inbounds %struct._PixelPacket, ptr %118, i64 0, i32 1
  %257 = load i16, ptr %256, align 2, !tbaa !60
  %258 = zext i16 %257 to i32
  %259 = mul nuw nsw i32 %258, %242
  %260 = add nuw nsw i32 %259, %255
  %261 = sitofp i32 %260 to double
  %262 = fmul double %251, %261
  %263 = fptoui double %262 to i16
  %264 = getelementptr inbounds %struct._PixelPacket, ptr %113, i64 0, i32 1
  store i16 %263, ptr %264, align 2, !tbaa !60
  %265 = load i16, ptr %256, align 2, !tbaa !60
  %266 = zext i16 %265 to i32
  %267 = load i16, ptr %236, align 2, !tbaa !60
  %268 = zext i16 %267 to i32
  %269 = mul nuw nsw i32 %268, %266
  %270 = load i16, ptr %252, align 2, !tbaa !60
  %271 = zext i16 %270 to i32
  %272 = load i16, ptr %240, align 2, !tbaa !60
  %273 = zext i16 %272 to i32
  %274 = mul nuw nsw i32 %273, %271
  %275 = sub nsw i32 %269, %274
  %276 = sitofp i32 %275 to double
  %277 = fmul double %251, %276
  %278 = fptoui double %277 to i16
  %279 = getelementptr inbounds %struct._PixelPacket, ptr %114, i64 0, i32 1
  store i16 %278, ptr %279, align 2, !tbaa !60
  %280 = load i16, ptr %115, align 2, !tbaa !61
  %281 = zext i16 %280 to i32
  %282 = mul nuw nsw i32 %281, %281
  %283 = load i16, ptr %116, align 2, !tbaa !61
  %284 = zext i16 %283 to i32
  %285 = mul nuw nsw i32 %284, %284
  %286 = add nuw nsw i32 %285, %282
  %287 = sitofp i32 %286 to double
  %288 = fadd double %43, %287
  %289 = fcmp olt double %288, 0.000000e+00
  %290 = select i1 %289, double 0.000000e+00, double %288
  %291 = fcmp ult double %290, 1.000000e-15
  %292 = fdiv double 1.000000e+00, %290
  %293 = select i1 %291, double 0x430C6BF52633FFFF, double %292
  %294 = load i16, ptr %117, align 2, !tbaa !61
  %295 = zext i16 %294 to i32
  %296 = mul nuw nsw i32 %295, %281
  %297 = load i16, ptr %118, align 2, !tbaa !61
  %298 = zext i16 %297 to i32
  %299 = mul nuw nsw i32 %298, %284
  %300 = add nuw nsw i32 %299, %296
  %301 = sitofp i32 %300 to double
  %302 = fmul double %293, %301
  %303 = fptoui double %302 to i16
  store i16 %303, ptr %113, align 2, !tbaa !61
  %304 = load i16, ptr %118, align 2, !tbaa !61
  %305 = zext i16 %304 to i32
  %306 = load i16, ptr %115, align 2, !tbaa !61
  %307 = zext i16 %306 to i32
  %308 = mul nuw nsw i32 %307, %305
  %309 = load i16, ptr %117, align 2, !tbaa !61
  %310 = zext i16 %309 to i32
  %311 = load i16, ptr %116, align 2, !tbaa !61
  %312 = zext i16 %311 to i32
  %313 = mul nuw nsw i32 %312, %310
  %314 = sub nsw i32 %308, %313
  %315 = sitofp i32 %314 to double
  %316 = fmul double %293, %315
  %317 = fptoui double %316 to i16
  store i16 %317, ptr %114, align 2, !tbaa !61
  %318 = load i32, ptr %72, align 8, !tbaa !62
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %719, label %320

320:                                              ; preds = %191
  %321 = getelementptr inbounds %struct._PixelPacket, ptr %115, i64 0, i32 3
  %322 = load i16, ptr %321, align 2, !tbaa !63
  %323 = zext i16 %322 to i32
  %324 = mul nuw nsw i32 %323, %323
  %325 = getelementptr inbounds %struct._PixelPacket, ptr %116, i64 0, i32 3
  %326 = load i16, ptr %325, align 2, !tbaa !63
  %327 = zext i16 %326 to i32
  %328 = mul nuw nsw i32 %327, %327
  %329 = add nuw nsw i32 %328, %324
  %330 = sitofp i32 %329 to double
  %331 = fadd double %43, %330
  %332 = fcmp olt double %331, 0.000000e+00
  %333 = select i1 %332, double 0.000000e+00, double %331
  %334 = fcmp ult double %333, 1.000000e-15
  %335 = fdiv double 1.000000e+00, %333
  %336 = select i1 %334, double 0x430C6BF52633FFFF, double %335
  %337 = getelementptr inbounds %struct._PixelPacket, ptr %117, i64 0, i32 3
  %338 = load i16, ptr %337, align 2, !tbaa !63
  %339 = zext i16 %338 to i32
  %340 = mul nuw nsw i32 %339, %323
  %341 = getelementptr inbounds %struct._PixelPacket, ptr %118, i64 0, i32 3
  %342 = load i16, ptr %341, align 2, !tbaa !63
  %343 = zext i16 %342 to i32
  %344 = mul nuw nsw i32 %343, %327
  %345 = add nuw nsw i32 %344, %340
  %346 = sitofp i32 %345 to double
  %347 = fmul double %336, %346
  %348 = fptoui double %347 to i16
  %349 = getelementptr inbounds %struct._PixelPacket, ptr %113, i64 0, i32 3
  store i16 %348, ptr %349, align 2, !tbaa !63
  %350 = load i16, ptr %341, align 2, !tbaa !63
  %351 = zext i16 %350 to i32
  %352 = load i16, ptr %321, align 2, !tbaa !63
  %353 = zext i16 %352 to i32
  %354 = mul nuw nsw i32 %353, %351
  %355 = load i16, ptr %337, align 2, !tbaa !63
  %356 = zext i16 %355 to i32
  %357 = load i16, ptr %325, align 2, !tbaa !63
  %358 = zext i16 %357 to i32
  %359 = mul nuw nsw i32 %358, %356
  %360 = sub nsw i32 %354, %359
  %361 = sitofp i32 %360 to double
  %362 = fmul double %336, %361
  %363 = fptoui double %362 to i16
  br label %716

364:                                              ; preds = %111
  %365 = getelementptr inbounds %struct._PixelPacket, ptr %117, i64 0, i32 2
  %366 = load i16, ptr %365, align 2, !tbaa !59
  %367 = zext i16 %366 to i32
  %368 = mul nuw nsw i32 %367, %367
  %369 = getelementptr inbounds %struct._PixelPacket, ptr %118, i64 0, i32 2
  %370 = load i16, ptr %369, align 2, !tbaa !59
  %371 = zext i16 %370 to i32
  %372 = mul nuw nsw i32 %371, %371
  %373 = add nuw nsw i32 %372, %368
  %374 = sitofp i32 %373 to double
  %375 = call double @sqrt(double noundef %374) #5
  %376 = fptoui double %375 to i16
  %377 = getelementptr inbounds %struct._PixelPacket, ptr %113, i64 0, i32 2
  store i16 %376, ptr %377, align 2, !tbaa !59
  %378 = load i16, ptr %369, align 2, !tbaa !59
  %379 = uitofp i16 %378 to double
  %380 = load i16, ptr %365, align 2, !tbaa !59
  %381 = uitofp i16 %380 to double
  %382 = call double @atan2(double noundef %379, double noundef %381) #5
  %383 = fdiv double %382, 0x401921FB54442D18
  %384 = fadd double %383, 5.000000e-01
  %385 = fptoui double %384 to i16
  %386 = getelementptr inbounds %struct._PixelPacket, ptr %114, i64 0, i32 2
  store i16 %385, ptr %386, align 2, !tbaa !59
  %387 = getelementptr inbounds %struct._PixelPacket, ptr %117, i64 0, i32 1
  %388 = load i16, ptr %387, align 2, !tbaa !60
  %389 = zext i16 %388 to i32
  %390 = mul nuw nsw i32 %389, %389
  %391 = getelementptr inbounds %struct._PixelPacket, ptr %118, i64 0, i32 1
  %392 = load i16, ptr %391, align 2, !tbaa !60
  %393 = zext i16 %392 to i32
  %394 = mul nuw nsw i32 %393, %393
  %395 = add nuw nsw i32 %394, %390
  %396 = sitofp i32 %395 to double
  %397 = call double @sqrt(double noundef %396) #5
  %398 = fptoui double %397 to i16
  %399 = getelementptr inbounds %struct._PixelPacket, ptr %113, i64 0, i32 1
  store i16 %398, ptr %399, align 2, !tbaa !60
  %400 = load i16, ptr %391, align 2, !tbaa !60
  %401 = uitofp i16 %400 to double
  %402 = load i16, ptr %387, align 2, !tbaa !60
  %403 = uitofp i16 %402 to double
  %404 = call double @atan2(double noundef %401, double noundef %403) #5
  %405 = fdiv double %404, 0x401921FB54442D18
  %406 = fadd double %405, 5.000000e-01
  %407 = fptoui double %406 to i16
  %408 = getelementptr inbounds %struct._PixelPacket, ptr %114, i64 0, i32 1
  store i16 %407, ptr %408, align 2, !tbaa !60
  %409 = load i16, ptr %117, align 2, !tbaa !61
  %410 = zext i16 %409 to i32
  %411 = mul nuw nsw i32 %410, %410
  %412 = load i16, ptr %118, align 2, !tbaa !61
  %413 = zext i16 %412 to i32
  %414 = mul nuw nsw i32 %413, %413
  %415 = add nuw nsw i32 %414, %411
  %416 = sitofp i32 %415 to double
  %417 = call double @sqrt(double noundef %416) #5
  %418 = fptoui double %417 to i16
  store i16 %418, ptr %113, align 2, !tbaa !61
  %419 = load i16, ptr %118, align 2, !tbaa !61
  %420 = uitofp i16 %419 to double
  %421 = load i16, ptr %117, align 2, !tbaa !61
  %422 = uitofp i16 %421 to double
  %423 = call double @atan2(double noundef %420, double noundef %422) #5
  %424 = fdiv double %423, 0x401921FB54442D18
  %425 = fadd double %424, 5.000000e-01
  %426 = fptoui double %425 to i16
  store i16 %426, ptr %114, align 2, !tbaa !61
  %427 = load i32, ptr %71, align 8, !tbaa !62
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %719, label %429

429:                                              ; preds = %364
  %430 = getelementptr inbounds %struct._PixelPacket, ptr %117, i64 0, i32 3
  %431 = load i16, ptr %430, align 2, !tbaa !63
  %432 = zext i16 %431 to i32
  %433 = mul nuw nsw i32 %432, %432
  %434 = getelementptr inbounds %struct._PixelPacket, ptr %118, i64 0, i32 3
  %435 = load i16, ptr %434, align 2, !tbaa !63
  %436 = zext i16 %435 to i32
  %437 = mul nuw nsw i32 %436, %436
  %438 = add nuw nsw i32 %437, %433
  %439 = sitofp i32 %438 to double
  %440 = call double @sqrt(double noundef %439) #5
  %441 = fptoui double %440 to i16
  %442 = getelementptr inbounds %struct._PixelPacket, ptr %113, i64 0, i32 3
  store i16 %441, ptr %442, align 2, !tbaa !63
  %443 = load i16, ptr %434, align 2, !tbaa !63
  %444 = uitofp i16 %443 to double
  %445 = load i16, ptr %430, align 2, !tbaa !63
  %446 = uitofp i16 %445 to double
  %447 = call double @atan2(double noundef %444, double noundef %446) #5
  %448 = fdiv double %447, 0x401921FB54442D18
  %449 = fadd double %448, 5.000000e-01
  %450 = fptoui double %449 to i16
  br label %716

451:                                              ; preds = %111
  %452 = getelementptr inbounds %struct._PixelPacket, ptr %117, i64 0, i32 2
  %453 = load i16, ptr %452, align 2, !tbaa !59
  %454 = zext i16 %453 to i32
  %455 = getelementptr inbounds %struct._PixelPacket, ptr %115, i64 0, i32 2
  %456 = load i16, ptr %455, align 2, !tbaa !59
  %457 = zext i16 %456 to i32
  %458 = mul nuw nsw i32 %457, %454
  %459 = getelementptr inbounds %struct._PixelPacket, ptr %118, i64 0, i32 2
  %460 = load i16, ptr %459, align 2, !tbaa !59
  %461 = zext i16 %460 to i32
  %462 = getelementptr inbounds %struct._PixelPacket, ptr %116, i64 0, i32 2
  %463 = load i16, ptr %462, align 2, !tbaa !59
  %464 = zext i16 %463 to i32
  %465 = mul nuw nsw i32 %464, %461
  %466 = sub nsw i32 %458, %465
  %467 = sitofp i32 %466 to double
  %468 = fmul double %467, 0x3EF0001000100010
  %469 = fptoui double %468 to i16
  %470 = getelementptr inbounds %struct._PixelPacket, ptr %113, i64 0, i32 2
  store i16 %469, ptr %470, align 2, !tbaa !59
  %471 = load i16, ptr %459, align 2, !tbaa !59
  %472 = zext i16 %471 to i32
  %473 = load i16, ptr %455, align 2, !tbaa !59
  %474 = zext i16 %473 to i32
  %475 = mul nuw nsw i32 %474, %472
  %476 = load i16, ptr %452, align 2, !tbaa !59
  %477 = zext i16 %476 to i32
  %478 = load i16, ptr %462, align 2, !tbaa !59
  %479 = zext i16 %478 to i32
  %480 = mul nuw nsw i32 %479, %477
  %481 = add nuw nsw i32 %480, %475
  %482 = sitofp i32 %481 to double
  %483 = fmul double %482, 0x3EF0001000100010
  %484 = fptoui double %483 to i16
  %485 = getelementptr inbounds %struct._PixelPacket, ptr %114, i64 0, i32 2
  store i16 %484, ptr %485, align 2, !tbaa !59
  %486 = getelementptr inbounds %struct._PixelPacket, ptr %117, i64 0, i32 1
  %487 = load i16, ptr %486, align 2, !tbaa !60
  %488 = zext i16 %487 to i32
  %489 = getelementptr inbounds %struct._PixelPacket, ptr %115, i64 0, i32 1
  %490 = load i16, ptr %489, align 2, !tbaa !60
  %491 = zext i16 %490 to i32
  %492 = mul nuw nsw i32 %491, %488
  %493 = getelementptr inbounds %struct._PixelPacket, ptr %118, i64 0, i32 1
  %494 = load i16, ptr %493, align 2, !tbaa !60
  %495 = zext i16 %494 to i32
  %496 = getelementptr inbounds %struct._PixelPacket, ptr %116, i64 0, i32 1
  %497 = load i16, ptr %496, align 2, !tbaa !60
  %498 = zext i16 %497 to i32
  %499 = mul nuw nsw i32 %498, %495
  %500 = sub nsw i32 %492, %499
  %501 = sitofp i32 %500 to double
  %502 = fmul double %501, 0x3EF0001000100010
  %503 = fptoui double %502 to i16
  %504 = getelementptr inbounds %struct._PixelPacket, ptr %113, i64 0, i32 1
  store i16 %503, ptr %504, align 2, !tbaa !60
  %505 = load i16, ptr %493, align 2, !tbaa !60
  %506 = zext i16 %505 to i32
  %507 = load i16, ptr %489, align 2, !tbaa !60
  %508 = zext i16 %507 to i32
  %509 = mul nuw nsw i32 %508, %506
  %510 = load i16, ptr %486, align 2, !tbaa !60
  %511 = zext i16 %510 to i32
  %512 = load i16, ptr %496, align 2, !tbaa !60
  %513 = zext i16 %512 to i32
  %514 = mul nuw nsw i32 %513, %511
  %515 = add nuw nsw i32 %514, %509
  %516 = sitofp i32 %515 to double
  %517 = fmul double %516, 0x3EF0001000100010
  %518 = fptoui double %517 to i16
  %519 = getelementptr inbounds %struct._PixelPacket, ptr %114, i64 0, i32 1
  store i16 %518, ptr %519, align 2, !tbaa !60
  %520 = load i16, ptr %117, align 2, !tbaa !61
  %521 = zext i16 %520 to i32
  %522 = load i16, ptr %115, align 2, !tbaa !61
  %523 = zext i16 %522 to i32
  %524 = mul nuw nsw i32 %523, %521
  %525 = load i16, ptr %118, align 2, !tbaa !61
  %526 = zext i16 %525 to i32
  %527 = load i16, ptr %116, align 2, !tbaa !61
  %528 = zext i16 %527 to i32
  %529 = mul nuw nsw i32 %528, %526
  %530 = sub nsw i32 %524, %529
  %531 = sitofp i32 %530 to double
  %532 = fmul double %531, 0x3EF0001000100010
  %533 = fptoui double %532 to i16
  store i16 %533, ptr %113, align 2, !tbaa !61
  %534 = load i16, ptr %118, align 2, !tbaa !61
  %535 = zext i16 %534 to i32
  %536 = load i16, ptr %115, align 2, !tbaa !61
  %537 = zext i16 %536 to i32
  %538 = mul nuw nsw i32 %537, %535
  %539 = load i16, ptr %117, align 2, !tbaa !61
  %540 = zext i16 %539 to i32
  %541 = load i16, ptr %116, align 2, !tbaa !61
  %542 = zext i16 %541 to i32
  %543 = mul nuw nsw i32 %542, %540
  %544 = add nuw nsw i32 %543, %538
  %545 = sitofp i32 %544 to double
  %546 = fmul double %545, 0x3EF0001000100010
  %547 = fptoui double %546 to i16
  store i16 %547, ptr %114, align 2, !tbaa !61
  %548 = load i32, ptr %70, align 8, !tbaa !62
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %719, label %550

550:                                              ; preds = %451
  %551 = getelementptr inbounds %struct._PixelPacket, ptr %117, i64 0, i32 3
  %552 = load i16, ptr %551, align 2, !tbaa !63
  %553 = zext i16 %552 to i32
  %554 = getelementptr inbounds %struct._PixelPacket, ptr %115, i64 0, i32 3
  %555 = load i16, ptr %554, align 2, !tbaa !63
  %556 = zext i16 %555 to i32
  %557 = mul nuw nsw i32 %556, %553
  %558 = getelementptr inbounds %struct._PixelPacket, ptr %118, i64 0, i32 3
  %559 = load i16, ptr %558, align 2, !tbaa !63
  %560 = zext i16 %559 to i32
  %561 = getelementptr inbounds %struct._PixelPacket, ptr %116, i64 0, i32 3
  %562 = load i16, ptr %561, align 2, !tbaa !63
  %563 = zext i16 %562 to i32
  %564 = mul nuw nsw i32 %563, %560
  %565 = sub nsw i32 %557, %564
  %566 = sitofp i32 %565 to double
  %567 = fmul double %566, 0x3EF0001000100010
  %568 = fptoui double %567 to i16
  %569 = getelementptr inbounds %struct._PixelPacket, ptr %113, i64 0, i32 3
  store i16 %568, ptr %569, align 2, !tbaa !63
  %570 = load i16, ptr %558, align 2, !tbaa !63
  %571 = zext i16 %570 to i32
  %572 = load i16, ptr %554, align 2, !tbaa !63
  %573 = zext i16 %572 to i32
  %574 = mul nuw nsw i32 %573, %571
  %575 = load i16, ptr %551, align 2, !tbaa !63
  %576 = zext i16 %575 to i32
  %577 = load i16, ptr %561, align 2, !tbaa !63
  %578 = zext i16 %577 to i32
  %579 = mul nuw nsw i32 %578, %576
  %580 = add nuw nsw i32 %579, %574
  %581 = sitofp i32 %580 to double
  %582 = fmul double %581, 0x3EF0001000100010
  %583 = fptoui double %582 to i16
  br label %716

584:                                              ; preds = %111
  %585 = getelementptr inbounds %struct._PixelPacket, ptr %117, i64 0, i32 2
  %586 = load i16, ptr %585, align 2, !tbaa !59
  %587 = uitofp i16 %586 to double
  %588 = getelementptr inbounds %struct._PixelPacket, ptr %118, i64 0, i32 2
  %589 = load i16, ptr %588, align 2, !tbaa !59
  %590 = uitofp i16 %589 to double
  %591 = fadd double %590, -5.000000e-01
  %592 = fmul double %591, 0x401921FB54442D18
  %593 = call double @cos(double noundef %592) #5
  %594 = fmul double %593, %587
  %595 = fptoui double %594 to i16
  %596 = getelementptr inbounds %struct._PixelPacket, ptr %113, i64 0, i32 2
  store i16 %595, ptr %596, align 2, !tbaa !59
  %597 = load i16, ptr %585, align 2, !tbaa !59
  %598 = uitofp i16 %597 to double
  %599 = load i16, ptr %588, align 2, !tbaa !59
  %600 = uitofp i16 %599 to double
  %601 = fadd double %600, -5.000000e-01
  %602 = fmul double %601, 0x401921FB54442D18
  %603 = call double @sin(double noundef %602) #5
  %604 = fmul double %603, %598
  %605 = fptoui double %604 to i16
  %606 = getelementptr inbounds %struct._PixelPacket, ptr %114, i64 0, i32 2
  store i16 %605, ptr %606, align 2, !tbaa !59
  %607 = getelementptr inbounds %struct._PixelPacket, ptr %117, i64 0, i32 1
  %608 = load i16, ptr %607, align 2, !tbaa !60
  %609 = uitofp i16 %608 to double
  %610 = getelementptr inbounds %struct._PixelPacket, ptr %118, i64 0, i32 1
  %611 = load i16, ptr %610, align 2, !tbaa !60
  %612 = uitofp i16 %611 to double
  %613 = fadd double %612, -5.000000e-01
  %614 = fmul double %613, 0x401921FB54442D18
  %615 = call double @cos(double noundef %614) #5
  %616 = fmul double %615, %609
  %617 = fptoui double %616 to i16
  %618 = getelementptr inbounds %struct._PixelPacket, ptr %113, i64 0, i32 1
  store i16 %617, ptr %618, align 2, !tbaa !60
  %619 = load i16, ptr %607, align 2, !tbaa !60
  %620 = uitofp i16 %619 to double
  %621 = load i16, ptr %610, align 2, !tbaa !60
  %622 = uitofp i16 %621 to double
  %623 = fadd double %622, -5.000000e-01
  %624 = fmul double %623, 0x401921FB54442D18
  %625 = call double @sin(double noundef %624) #5
  %626 = fmul double %625, %620
  %627 = fptoui double %626 to i16
  %628 = getelementptr inbounds %struct._PixelPacket, ptr %114, i64 0, i32 1
  store i16 %627, ptr %628, align 2, !tbaa !60
  %629 = load i16, ptr %117, align 2, !tbaa !61
  %630 = uitofp i16 %629 to double
  %631 = load i16, ptr %118, align 2, !tbaa !61
  %632 = uitofp i16 %631 to double
  %633 = fadd double %632, -5.000000e-01
  %634 = fmul double %633, 0x401921FB54442D18
  %635 = call double @cos(double noundef %634) #5
  %636 = fmul double %635, %630
  %637 = fptoui double %636 to i16
  store i16 %637, ptr %113, align 2, !tbaa !61
  %638 = load i16, ptr %117, align 2, !tbaa !61
  %639 = uitofp i16 %638 to double
  %640 = load i16, ptr %118, align 2, !tbaa !61
  %641 = uitofp i16 %640 to double
  %642 = fadd double %641, -5.000000e-01
  %643 = fmul double %642, 0x401921FB54442D18
  %644 = call double @sin(double noundef %643) #5
  %645 = fmul double %644, %639
  %646 = fptoui double %645 to i16
  store i16 %646, ptr %114, align 2, !tbaa !61
  %647 = load i32, ptr %69, align 8, !tbaa !62
  %648 = icmp eq i32 %647, 0
  br i1 %648, label %719, label %649

649:                                              ; preds = %584
  %650 = getelementptr inbounds %struct._PixelPacket, ptr %117, i64 0, i32 3
  %651 = load i16, ptr %650, align 2, !tbaa !63
  %652 = uitofp i16 %651 to double
  %653 = getelementptr inbounds %struct._PixelPacket, ptr %118, i64 0, i32 3
  %654 = load i16, ptr %653, align 2, !tbaa !63
  %655 = uitofp i16 %654 to double
  %656 = fadd double %655, -5.000000e-01
  %657 = fmul double %656, 0x401921FB54442D18
  %658 = call double @cos(double noundef %657) #5
  %659 = fmul double %658, %652
  %660 = fptoui double %659 to i16
  %661 = getelementptr inbounds %struct._PixelPacket, ptr %113, i64 0, i32 3
  store i16 %660, ptr %661, align 2, !tbaa !63
  %662 = load i16, ptr %650, align 2, !tbaa !63
  %663 = uitofp i16 %662 to double
  %664 = load i16, ptr %653, align 2, !tbaa !63
  %665 = uitofp i16 %664 to double
  %666 = fadd double %665, -5.000000e-01
  %667 = fmul double %666, 0x401921FB54442D18
  %668 = call double @sin(double noundef %667) #5
  %669 = fmul double %668, %663
  %670 = fptoui double %669 to i16
  br label %716

671:                                              ; preds = %111
  %672 = getelementptr inbounds %struct._PixelPacket, ptr %117, i64 0, i32 2
  %673 = load i16, ptr %672, align 2, !tbaa !59
  %674 = getelementptr inbounds %struct._PixelPacket, ptr %115, i64 0, i32 2
  %675 = load i16, ptr %674, align 2, !tbaa !59
  %676 = sub i16 %673, %675
  %677 = getelementptr inbounds %struct._PixelPacket, ptr %113, i64 0, i32 2
  store i16 %676, ptr %677, align 2, !tbaa !59
  %678 = getelementptr inbounds %struct._PixelPacket, ptr %118, i64 0, i32 2
  %679 = load i16, ptr %678, align 2, !tbaa !59
  %680 = getelementptr inbounds %struct._PixelPacket, ptr %116, i64 0, i32 2
  %681 = load i16, ptr %680, align 2, !tbaa !59
  %682 = sub i16 %679, %681
  %683 = getelementptr inbounds %struct._PixelPacket, ptr %114, i64 0, i32 2
  store i16 %682, ptr %683, align 2, !tbaa !59
  %684 = getelementptr inbounds %struct._PixelPacket, ptr %117, i64 0, i32 1
  %685 = load i16, ptr %684, align 2, !tbaa !60
  %686 = getelementptr inbounds %struct._PixelPacket, ptr %115, i64 0, i32 1
  %687 = load i16, ptr %686, align 2, !tbaa !60
  %688 = sub i16 %685, %687
  %689 = getelementptr inbounds %struct._PixelPacket, ptr %113, i64 0, i32 1
  store i16 %688, ptr %689, align 2, !tbaa !60
  %690 = getelementptr inbounds %struct._PixelPacket, ptr %118, i64 0, i32 1
  %691 = load i16, ptr %690, align 2, !tbaa !60
  %692 = getelementptr inbounds %struct._PixelPacket, ptr %116, i64 0, i32 1
  %693 = load i16, ptr %692, align 2, !tbaa !60
  %694 = sub i16 %691, %693
  %695 = getelementptr inbounds %struct._PixelPacket, ptr %114, i64 0, i32 1
  store i16 %694, ptr %695, align 2, !tbaa !60
  %696 = load i16, ptr %117, align 2, !tbaa !61
  %697 = load i16, ptr %115, align 2, !tbaa !61
  %698 = sub i16 %696, %697
  store i16 %698, ptr %113, align 2, !tbaa !61
  %699 = load i16, ptr %118, align 2, !tbaa !61
  %700 = load i16, ptr %116, align 2, !tbaa !61
  %701 = sub i16 %699, %700
  store i16 %701, ptr %114, align 2, !tbaa !61
  %702 = load i32, ptr %73, align 8, !tbaa !62
  %703 = icmp eq i32 %702, 0
  br i1 %703, label %719, label %704

704:                                              ; preds = %671
  %705 = getelementptr inbounds %struct._PixelPacket, ptr %117, i64 0, i32 3
  %706 = load i16, ptr %705, align 2, !tbaa !63
  %707 = getelementptr inbounds %struct._PixelPacket, ptr %115, i64 0, i32 3
  %708 = load i16, ptr %707, align 2, !tbaa !63
  %709 = sub i16 %706, %708
  %710 = getelementptr inbounds %struct._PixelPacket, ptr %113, i64 0, i32 3
  store i16 %709, ptr %710, align 2, !tbaa !63
  %711 = getelementptr inbounds %struct._PixelPacket, ptr %118, i64 0, i32 3
  %712 = load i16, ptr %711, align 2, !tbaa !63
  %713 = getelementptr inbounds %struct._PixelPacket, ptr %116, i64 0, i32 3
  %714 = load i16, ptr %713, align 2, !tbaa !63
  %715 = sub i16 %712, %714
  br label %716

716:                                              ; preds = %152, %184, %429, %550, %649, %704, %320
  %717 = phi i16 [ %363, %320 ], [ %715, %704 ], [ %670, %649 ], [ %583, %550 ], [ %450, %429 ], [ %190, %184 ], [ %163, %152 ]
  %718 = getelementptr inbounds %struct._PixelPacket, ptr %114, i64 0, i32 3
  store i16 %717, ptr %718, align 2, !tbaa !63
  br label %719

719:                                              ; preds = %716, %191, %671, %584, %451, %364, %164, %119
  %720 = getelementptr inbounds %struct._PixelPacket, ptr %117, i64 1
  %721 = getelementptr inbounds %struct._PixelPacket, ptr %118, i64 1
  %722 = getelementptr inbounds %struct._PixelPacket, ptr %115, i64 1
  %723 = getelementptr inbounds %struct._PixelPacket, ptr %116, i64 1
  %724 = getelementptr inbounds %struct._PixelPacket, ptr %113, i64 1
  %725 = getelementptr inbounds %struct._PixelPacket, ptr %114, i64 1
  %726 = add nuw nsw i64 %112, 1
  %727 = load i64, ptr %20, align 8, !tbaa !54
  %728 = icmp slt i64 %726, %727
  br i1 %728, label %111, label %729, !llvm.loop !64

729:                                              ; preds = %719, %108
  %730 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %65, ptr noundef %2) #6
  %731 = icmp ne i32 %730, 0
  %732 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %64, ptr noundef %2) #6
  %733 = icmp ne i32 %732, 0
  %734 = select i1 %733, i1 %731, i1 false
  %735 = zext i1 %734 to i32
  %736 = load ptr, ptr %76, align 8, !tbaa !67
  %737 = icmp eq ptr %736, null
  br i1 %737, label %747, label %738

738:                                              ; preds = %729
  %739 = add nsw i64 %81, 1
  %740 = load i64, ptr %22, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #5
  %741 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.6, ptr noundef nonnull %77) #5
  %742 = load ptr, ptr %76, align 8, !tbaa !67
  %743 = load ptr, ptr %78, align 8, !tbaa !68
  %744 = call i32 %742(ptr noundef nonnull %4, i64 noundef %81, i64 noundef %740, ptr noundef %743) #5
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #5
  %745 = icmp eq i32 %744, 0
  %746 = select i1 %745, i32 0, i32 %735
  br label %747

747:                                              ; preds = %729, %738, %84, %79
  %748 = phi i32 [ 0, %79 ], [ 0, %84 ], [ %746, %738 ], [ %735, %729 ]
  %749 = phi i64 [ %81, %79 ], [ %81, %84 ], [ %739, %738 ], [ %81, %729 ]
  %750 = add nuw nsw i64 %80, 1
  %751 = load i64, ptr %22, align 8, !tbaa !55
  %752 = icmp slt i64 %750, %751
  br i1 %752, label %79, label %753, !llvm.loop !69

753:                                              ; preds = %747
  %754 = icmp eq i32 %748, 0
  %755 = call ptr @DestroyCacheView(ptr noundef %64) #5
  %756 = call ptr @DestroyCacheView(ptr noundef %65) #5
  %757 = call ptr @DestroyCacheView(ptr noundef %62) #5
  %758 = call ptr @DestroyCacheView(ptr noundef %63) #5
  %759 = call ptr @DestroyCacheView(ptr noundef %60) #5
  %760 = call ptr @DestroyCacheView(ptr noundef %61) #5
  br i1 %754, label %761, label %771

761:                                              ; preds = %753
  %762 = load ptr, ptr %5, align 8, !tbaa !58
  %763 = call ptr @DestroyImageList(ptr noundef %762) #5
  store ptr %763, ptr %5, align 8, !tbaa !58
  br label %771

764:                                              ; preds = %54
  %765 = call ptr @DestroyCacheView(ptr noundef %64) #5
  %766 = call ptr @DestroyCacheView(ptr noundef %65) #5
  %767 = call ptr @DestroyCacheView(ptr noundef %62) #5
  %768 = call ptr @DestroyCacheView(ptr noundef %63) #5
  %769 = call ptr @DestroyCacheView(ptr noundef %60) #5
  %770 = call ptr @DestroyCacheView(ptr noundef %61) #5
  br label %771

771:                                              ; preds = %764, %761, %753
  %772 = load ptr, ptr %5, align 8, !tbaa !58
  br label %773

773:                                              ; preds = %19, %771, %33, %16
  %774 = phi ptr [ null, %16 ], [ %35, %33 ], [ %772, %771 ], [ null, %19 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  ret ptr %774
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @NewImageList() local_unnamed_addr #2

declare void @AppendImageToList(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @DestroyImageList(ptr noundef) local_unnamed_addr #2

declare ptr @GetImageArtifact(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: hot
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: hot
declare ptr @QueueCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #4

; Function Attrs: hot
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @ForwardFourierTransformImage(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @NewImageList() #5
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %6 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1014, i32 noundef 320, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull %5) #5
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @InverseFourierTransformImage(ptr noundef %0, ptr noundef readnone %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1626, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #5
  br label %11

11:                                               ; preds = %8, %4
  %12 = icmp eq ptr %1, null
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  br i1 %12, label %14, label %16

14:                                               ; preds = %11
  %15 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1630, i32 noundef 465, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %13) #5
  br label %18

16:                                               ; preds = %11
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1637, i32 noundef 320, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull %13) #5
  br label %18

18:                                               ; preds = %16, %14
  ret ptr null
}

declare double @InterpretLocaleValue(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { hot "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { hot nounwind }

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
!53 = !{!35, !40, i64 13104}
!54 = !{!35, !39, i64 40}
!55 = !{!35, !39, i64 48}
!56 = !{!35, !36, i64 0}
!57 = !{!35, !39, i64 56}
!58 = !{!40, !40, i64 0}
!59 = !{!41, !42, i64 4}
!60 = !{!41, !42, i64 2}
!61 = !{!41, !42, i64 0}
!62 = !{!35, !36, i64 32}
!63 = !{!41, !42, i64 6}
!64 = distinct !{!64, !65, !66}
!65 = !{!"llvm.loop.mustprogress"}
!66 = !{!"llvm.loop.unroll.disable"}
!67 = !{!35, !40, i64 568}
!68 = !{!35, !40, i64 576}
!69 = distinct !{!69, !65, !66}
