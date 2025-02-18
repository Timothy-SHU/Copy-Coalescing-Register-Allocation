; ModuleID = 'magick/shear.c'
source_filename = "magick/shear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._MagickPixelPacket = type { i32, i32, i32, double, i64, float, float, float, float, float }
%struct._AffineMatrix = type { double, double, double, double, double, double }
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
%struct._PointInfo = type { double, double }

@.str = private unnamed_addr constant [15 x i8] c"magick/shear.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"  Deskew angle: %g\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"deskew:angle\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"deskew:auto-crop\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"  Deskew geometry: %.20gx%.20g%+.20g%+.20g\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Rotate/Image\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"AngleIsDiscontinuous\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"XShear/Image\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"YShear/Image\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"0x0+0+0\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @DeskewImage(ptr noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct._MagickPixelPacket, align 8
  %5 = alloca [256 x i16], align 16
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca %struct._AffineMatrix, align 8
  %9 = alloca %struct._RectangleInfo, align 8
  %10 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #11
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %12 = load i64, ptr %11, align 8, !tbaa !34
  %13 = add i64 %12, 7
  %14 = lshr i64 %13, 3
  br label %15

15:                                               ; preds = %15, %3
  %16 = phi i64 [ 1, %3 ], [ %18, %15 ]
  %17 = icmp ult i64 %16, %14
  %18 = shl nuw nsw i64 %16, 1
  br i1 %17, label %15, label %19, !llvm.loop !53

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %21 = shl nuw i64 %16, 1
  %22 = add i64 %21, -1
  %23 = tail call ptr @AcquireQuantumMemory(i64 noundef %22, i64 noundef 8) #12
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %27 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 607, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %26) #11
  br label %467

28:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %5) #11
  %29 = load i64, ptr %20, align 8, !tbaa !34
  %30 = add i64 %29, 7
  %31 = lshr i64 %30, 3
  br label %32

32:                                               ; preds = %32, %28
  %33 = phi i64 [ 1, %28 ], [ %35, %32 ]
  %34 = icmp ult i64 %33, %31
  %35 = shl nuw nsw i64 %33, 1
  br i1 %34, label %32, label %36, !llvm.loop !56

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %38 = load i64, ptr %37, align 8, !tbaa !57
  %39 = tail call ptr @AcquireMatrixInfo(i64 noundef %33, i64 noundef %38, i64 noundef 2, ptr noundef %2) #11
  %40 = load i64, ptr %37, align 8, !tbaa !57
  %41 = tail call ptr @AcquireMatrixInfo(i64 noundef %33, i64 noundef %40, i64 noundef 2, ptr noundef %2) #11
  %42 = icmp eq ptr %39, null
  %43 = icmp eq ptr %41, null
  %44 = select i1 %42, i1 true, i1 %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %36
  br i1 %43, label %48, label %46

46:                                               ; preds = %45
  %47 = tail call ptr @DestroyMatrixInfo(ptr noundef nonnull %41) #11
  br label %48

48:                                               ; preds = %46, %45
  br i1 %42, label %226, label %49

49:                                               ; preds = %48
  %50 = tail call ptr @DestroyMatrixInfo(ptr noundef nonnull %39) #11
  br label %226

51:                                               ; preds = %36
  %52 = tail call i32 @NullMatrix(ptr noundef %39) #11
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = tail call ptr @DestroyMatrixInfo(ptr noundef %41) #11
  %56 = tail call ptr @DestroyMatrixInfo(ptr noundef %39) #11
  br label %226

57:                                               ; preds = %51, %71
  %58 = phi i64 [ %75, %71 ], [ 0, %51 ]
  %59 = trunc i64 %58 to i32
  %60 = and i32 %59, 255
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %57, %62
  %63 = phi i32 [ %69, %62 ], [ %60, %57 ]
  %64 = phi i32 [ %69, %62 ], [ %59, %57 ]
  %65 = phi i64 [ %68, %62 ], [ 0, %57 ]
  %66 = and i32 %64, 1
  %67 = zext nneg i32 %66 to i64
  %68 = add i64 %65, %67
  %69 = lshr i32 %63, 1
  %70 = icmp ult i32 %63, 2
  br i1 %70, label %71, label %62, !llvm.loop !58

71:                                               ; preds = %62, %57
  %72 = phi i64 [ 0, %57 ], [ %68, %62 ]
  %73 = trunc i64 %72 to i16
  %74 = getelementptr inbounds [256 x i16], ptr %5, i64 0, i64 %58
  store i16 %73, ptr %74, align 2, !tbaa !59
  %75 = add nuw nsw i64 %58, 1
  %76 = icmp eq i64 %75, 256
  br i1 %76, label %77, label %57, !llvm.loop !60

77:                                               ; preds = %71
  %78 = tail call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %2) #11
  %79 = load i64, ptr %37, align 8, !tbaa !57
  %80 = icmp sgt i64 %79, 0
  br i1 %80, label %81, label %150

81:                                               ; preds = %77, %145
  %82 = phi i64 [ %147, %145 ], [ 0, %77 ]
  %83 = phi i32 [ %146, %145 ], [ 1, %77 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #11
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %145, label %85

85:                                               ; preds = %81
  %86 = load i64, ptr %20, align 8, !tbaa !34
  %87 = call ptr @GetCacheViewVirtualPixels(ptr noundef %78, i64 noundef 0, i64 noundef %82, i64 noundef %86, i64 noundef 1, ptr noundef %2) #13
  %88 = icmp eq ptr %87, null
  br i1 %88, label %145, label %89

89:                                               ; preds = %85
  %90 = load i64, ptr %20, align 8, !tbaa !34
  %91 = add i64 %90, 7
  %92 = sdiv i64 %91, 8
  %93 = icmp sgt i64 %90, 0
  br i1 %93, label %94, label %133

94:                                               ; preds = %89, %125
  %95 = phi i64 [ %128, %125 ], [ 0, %89 ]
  %96 = phi i64 [ %127, %125 ], [ 0, %89 ]
  %97 = phi i64 [ %130, %125 ], [ 0, %89 ]
  %98 = phi i64 [ %126, %125 ], [ %92, %89 ]
  %99 = phi ptr [ %129, %125 ], [ %87, %89 ]
  %100 = shl i64 %95, 1
  %101 = getelementptr inbounds %struct._PixelPacket, ptr %99, i64 0, i32 2
  %102 = load i16, ptr %101, align 2, !tbaa !61
  %103 = uitofp i16 %102 to double
  %104 = fcmp olt double %103, %1
  br i1 %104, label %114, label %105

105:                                              ; preds = %94
  %106 = getelementptr inbounds %struct._PixelPacket, ptr %99, i64 0, i32 1
  %107 = load i16, ptr %106, align 2, !tbaa !62
  %108 = uitofp i16 %107 to double
  %109 = fcmp olt double %108, %1
  br i1 %109, label %114, label %110

110:                                              ; preds = %105
  %111 = load i16, ptr %99, align 2, !tbaa !63
  %112 = uitofp i16 %111 to double
  %113 = fcmp olt double %112, %1
  br i1 %113, label %114, label %116

114:                                              ; preds = %110, %105, %94
  %115 = or disjoint i64 %100, 1
  br label %116

116:                                              ; preds = %114, %110
  %117 = phi i64 [ %115, %114 ], [ %100, %110 ]
  %118 = add i64 %96, 1
  %119 = icmp eq i64 %118, 8
  br i1 %119, label %120, label %125

120:                                              ; preds = %116
  %121 = getelementptr inbounds [256 x i16], ptr %5, i64 0, i64 %117
  %122 = load i16, ptr %121, align 2, !tbaa !59
  store i16 %122, ptr %6, align 2, !tbaa !59
  %123 = add nsw i64 %98, -1
  %124 = call i32 @SetMatrixElement(ptr noundef %39, i64 noundef %123, i64 noundef %82, ptr noundef nonnull %6) #11
  br label %125

125:                                              ; preds = %120, %116
  %126 = phi i64 [ %123, %120 ], [ %98, %116 ]
  %127 = phi i64 [ 0, %120 ], [ %118, %116 ]
  %128 = phi i64 [ 0, %120 ], [ %117, %116 ]
  %129 = getelementptr inbounds %struct._PixelPacket, ptr %99, i64 1
  %130 = add nuw nsw i64 %97, 1
  %131 = load i64, ptr %20, align 8, !tbaa !34
  %132 = icmp slt i64 %130, %131
  br i1 %132, label %94, label %133, !llvm.loop !64

133:                                              ; preds = %125, %89
  %134 = phi i64 [ %92, %89 ], [ %126, %125 ]
  %135 = phi i64 [ 0, %89 ], [ %127, %125 ]
  %136 = phi i64 [ 0, %89 ], [ %128, %125 ]
  %137 = icmp eq i64 %135, 0
  br i1 %137, label %145, label %138

138:                                              ; preds = %133
  %139 = sub i64 8, %135
  %140 = shl i64 %136, %139
  %141 = getelementptr inbounds [256 x i16], ptr %5, i64 0, i64 %140
  %142 = load i16, ptr %141, align 2, !tbaa !59
  store i16 %142, ptr %6, align 2, !tbaa !59
  %143 = add nsw i64 %134, -1
  %144 = call i32 @SetMatrixElement(ptr noundef %39, i64 noundef %143, i64 noundef %82, ptr noundef nonnull %6) #11
  br label %145

145:                                              ; preds = %138, %133, %85, %81
  %146 = phi i32 [ 0, %81 ], [ 0, %85 ], [ 1, %138 ], [ 1, %133 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #11
  %147 = add nuw nsw i64 %82, 1
  %148 = load i64, ptr %37, align 8, !tbaa !57
  %149 = icmp slt i64 %147, %148
  br i1 %149, label %81, label %150, !llvm.loop !65

150:                                              ; preds = %145, %77
  %151 = phi i32 [ 1, %77 ], [ %146, %145 ]
  call fastcc void @RadonProjection(ptr noundef %39, ptr noundef %41, i64 noundef -1, ptr noundef nonnull %23)
  %152 = call i32 @NullMatrix(ptr noundef %39) #11
  %153 = load i64, ptr %37, align 8, !tbaa !57
  %154 = icmp sgt i64 %153, 0
  br i1 %154, label %155, label %221

155:                                              ; preds = %150, %216
  %156 = phi i64 [ %218, %216 ], [ 0, %150 ]
  %157 = phi i32 [ %217, %216 ], [ %151, %150 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #11
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %216, label %159

159:                                              ; preds = %155
  %160 = load i64, ptr %20, align 8, !tbaa !34
  %161 = call ptr @GetCacheViewVirtualPixels(ptr noundef %78, i64 noundef 0, i64 noundef %156, i64 noundef %160, i64 noundef 1, ptr noundef %2) #13
  %162 = icmp eq ptr %161, null
  br i1 %162, label %216, label %163

163:                                              ; preds = %159
  %164 = load i64, ptr %20, align 8, !tbaa !34
  %165 = icmp sgt i64 %164, 0
  br i1 %165, label %166, label %205

166:                                              ; preds = %163, %197
  %167 = phi i64 [ %200, %197 ], [ 0, %163 ]
  %168 = phi i64 [ %199, %197 ], [ 0, %163 ]
  %169 = phi i64 [ %202, %197 ], [ 0, %163 ]
  %170 = phi i64 [ %198, %197 ], [ 0, %163 ]
  %171 = phi ptr [ %201, %197 ], [ %161, %163 ]
  %172 = shl i64 %167, 1
  %173 = getelementptr inbounds %struct._PixelPacket, ptr %171, i64 0, i32 2
  %174 = load i16, ptr %173, align 2, !tbaa !61
  %175 = uitofp i16 %174 to double
  %176 = fcmp olt double %175, %1
  br i1 %176, label %186, label %177

177:                                              ; preds = %166
  %178 = getelementptr inbounds %struct._PixelPacket, ptr %171, i64 0, i32 1
  %179 = load i16, ptr %178, align 2, !tbaa !62
  %180 = uitofp i16 %179 to double
  %181 = fcmp olt double %180, %1
  br i1 %181, label %186, label %182

182:                                              ; preds = %177
  %183 = load i16, ptr %171, align 2, !tbaa !63
  %184 = uitofp i16 %183 to double
  %185 = fcmp olt double %184, %1
  br i1 %185, label %186, label %188

186:                                              ; preds = %182, %177, %166
  %187 = or disjoint i64 %172, 1
  br label %188

188:                                              ; preds = %186, %182
  %189 = phi i64 [ %187, %186 ], [ %172, %182 ]
  %190 = add i64 %168, 1
  %191 = icmp eq i64 %190, 8
  br i1 %191, label %192, label %197

192:                                              ; preds = %188
  %193 = getelementptr inbounds [256 x i16], ptr %5, i64 0, i64 %189
  %194 = load i16, ptr %193, align 2, !tbaa !59
  store i16 %194, ptr %7, align 2, !tbaa !59
  %195 = add nsw i64 %170, 1
  %196 = call i32 @SetMatrixElement(ptr noundef %39, i64 noundef %170, i64 noundef %156, ptr noundef nonnull %7) #11
  br label %197

197:                                              ; preds = %192, %188
  %198 = phi i64 [ %195, %192 ], [ %170, %188 ]
  %199 = phi i64 [ 0, %192 ], [ %190, %188 ]
  %200 = phi i64 [ 0, %192 ], [ %189, %188 ]
  %201 = getelementptr inbounds %struct._PixelPacket, ptr %171, i64 1
  %202 = add nuw nsw i64 %169, 1
  %203 = load i64, ptr %20, align 8, !tbaa !34
  %204 = icmp slt i64 %202, %203
  br i1 %204, label %166, label %205, !llvm.loop !66

205:                                              ; preds = %197, %163
  %206 = phi i64 [ 0, %163 ], [ %198, %197 ]
  %207 = phi i64 [ 0, %163 ], [ %199, %197 ]
  %208 = phi i64 [ 0, %163 ], [ %200, %197 ]
  %209 = icmp eq i64 %207, 0
  br i1 %209, label %216, label %210

210:                                              ; preds = %205
  %211 = sub i64 8, %207
  %212 = shl i64 %208, %211
  %213 = getelementptr inbounds [256 x i16], ptr %5, i64 0, i64 %212
  %214 = load i16, ptr %213, align 2, !tbaa !59
  store i16 %214, ptr %7, align 2, !tbaa !59
  %215 = call i32 @SetMatrixElement(ptr noundef %39, i64 noundef %206, i64 noundef %156, ptr noundef nonnull %7) #11
  br label %216

216:                                              ; preds = %210, %205, %159, %155
  %217 = phi i32 [ 0, %155 ], [ 0, %159 ], [ 1, %210 ], [ 1, %205 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #11
  %218 = add nuw nsw i64 %156, 1
  %219 = load i64, ptr %37, align 8, !tbaa !57
  %220 = icmp slt i64 %218, %219
  br i1 %220, label %155, label %221, !llvm.loop !67

221:                                              ; preds = %216, %150
  call fastcc void @RadonProjection(ptr noundef %39, ptr noundef %41, i64 noundef 1, ptr noundef nonnull %23)
  %222 = call ptr @DestroyCacheView(ptr noundef %78) #11
  %223 = call ptr @DestroyMatrixInfo(ptr noundef %41) #11
  %224 = call ptr @DestroyMatrixInfo(ptr noundef %39) #11
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %5) #11
  %225 = icmp sgt i64 %22, 0
  br i1 %225, label %230, label %245

226:                                              ; preds = %48, %49, %54
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %5) #11
  %227 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %23) #11
  %228 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %229 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 612, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %228) #11
  br label %467

230:                                              ; preds = %221, %230
  %231 = phi i64 [ %240, %230 ], [ 0, %221 ]
  %232 = phi i64 [ %239, %230 ], [ 0, %221 ]
  %233 = phi i64 [ %241, %230 ], [ 0, %221 ]
  %234 = getelementptr inbounds i64, ptr %23, i64 %233
  %235 = load i64, ptr %234, align 8, !tbaa !68
  %236 = icmp ugt i64 %235, %232
  %237 = sub nsw i64 %233, %16
  %238 = add nsw i64 %237, 1
  %239 = call i64 @llvm.umax.i64(i64 %235, i64 %232)
  %240 = select i1 %236, i64 %238, i64 %231
  %241 = add nuw nsw i64 %233, 1
  %242 = icmp eq i64 %241, %22
  br i1 %242, label %243, label %230, !llvm.loop !69

243:                                              ; preds = %230
  %244 = sitofp i64 %240 to double
  br label %245

245:                                              ; preds = %243, %221
  %246 = phi double [ 0.000000e+00, %221 ], [ %244, %243 ]
  %247 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %23) #11
  %248 = uitofp i64 %16 to double
  %249 = fdiv double %246, %248
  %250 = fmul double %249, 1.250000e-01
  %251 = call double @atan(double noundef %250) #11
  %252 = fptrunc double %251 to float
  %253 = fneg float %252
  %254 = fpext float %253 to double
  %255 = fmul double %254, 1.800000e+02
  %256 = fdiv double %255, 0x400921FB54442D18
  %257 = fptrunc double %256 to float
  %258 = fpext float %257 to double
  %259 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %260 = load i32, ptr %259, align 8, !tbaa !70
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %264, label %262

262:                                              ; preds = %245
  %263 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 627, ptr noundef nonnull @.str.4, double noundef %258) #11
  br label %264

264:                                              ; preds = %262, %245
  %265 = call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #11
  %266 = icmp eq ptr %265, null
  br i1 %266, label %467, label %267

267:                                              ; preds = %264
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %10) #11
  %268 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %10, i64 noundef 4096, ptr noundef nonnull @.str.5, double noundef %258) #11
  %269 = call i32 @SetImageArtifact(ptr noundef nonnull %265, ptr noundef nonnull @.str.6, ptr noundef nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %10) #11
  %270 = call i32 @SetImageVirtualPixelMethod(ptr noundef nonnull %265, i32 noundef 1) #11
  %271 = call double @fmod(double noundef %258, double noundef 3.600000e+02) #11
  %272 = fmul double %271, 0x400921FB54442D18
  %273 = fdiv double %272, 1.800000e+02
  %274 = call double @cos(double noundef %273) #11
  store double %274, ptr %8, align 8, !tbaa !71
  %275 = call double @fmod(double noundef %258, double noundef 3.600000e+02) #11
  %276 = fmul double %275, 0x400921FB54442D18
  %277 = fdiv double %276, 1.800000e+02
  %278 = call double @sin(double noundef %277) #11
  %279 = getelementptr inbounds %struct._AffineMatrix, ptr %8, i64 0, i32 1
  store double %278, ptr %279, align 8, !tbaa !73
  %280 = call double @fmod(double noundef %258, double noundef 3.600000e+02) #11
  %281 = fmul double %280, 0x400921FB54442D18
  %282 = fdiv double %281, 1.800000e+02
  %283 = call double @sin(double noundef %282) #11
  %284 = fneg double %283
  %285 = getelementptr inbounds %struct._AffineMatrix, ptr %8, i64 0, i32 2
  store double %284, ptr %285, align 8, !tbaa !74
  %286 = call double @fmod(double noundef %258, double noundef 3.600000e+02) #11
  %287 = fmul double %286, 0x400921FB54442D18
  %288 = fdiv double %287, 1.800000e+02
  %289 = call double @cos(double noundef %288) #11
  %290 = getelementptr inbounds %struct._AffineMatrix, ptr %8, i64 0, i32 3
  store double %289, ptr %290, align 8, !tbaa !75
  %291 = getelementptr inbounds %struct._AffineMatrix, ptr %8, i64 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %291, i8 0, i64 16, i1 false)
  %292 = call ptr @GetImageArtifact(ptr noundef %0, ptr noundef nonnull @.str.7) #11
  %293 = icmp eq ptr %292, null
  br i1 %293, label %294, label %297

294:                                              ; preds = %267
  %295 = call ptr @AffineTransformImage(ptr noundef nonnull %265, ptr noundef nonnull %8, ptr noundef %2) #11
  %296 = call ptr @DestroyImage(ptr noundef nonnull %265) #11
  br label %467

297:                                              ; preds = %267
  %298 = call i64 @strtol(ptr nocapture noundef nonnull %292, ptr noundef null, i32 noundef 10) #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #11
  %299 = icmp slt i64 %298, 1
  br i1 %299, label %438, label %300

300:                                              ; preds = %297
  call void @GetMagickPixelPacket(ptr noundef nonnull %265, ptr noundef nonnull %4) #11
  %301 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %265, ptr noundef %2) #11
  %302 = getelementptr inbounds %struct._Image, ptr %265, i64 0, i32 8
  %303 = load i64, ptr %302, align 8, !tbaa !57
  %304 = icmp sgt i64 %303, 0
  br i1 %304, label %305, label %383

305:                                              ; preds = %300
  %306 = getelementptr inbounds %struct._Image, ptr %265, i64 0, i32 7
  %307 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 5
  %308 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 6
  %309 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 7
  %310 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 8
  br label %311

311:                                              ; preds = %305, %378
  %312 = phi i64 [ %303, %305 ], [ %381, %378 ]
  %313 = phi i64 [ 0, %305 ], [ %380, %378 ]
  %314 = phi float [ 0.000000e+00, %305 ], [ %379, %378 ]
  %315 = icmp sge i64 %313, %298
  %316 = sub nsw i64 %312, %298
  %317 = icmp slt i64 %313, %316
  %318 = select i1 %315, i1 %317, i1 false
  br i1 %318, label %378, label %319

319:                                              ; preds = %311
  %320 = load i64, ptr %306, align 8, !tbaa !34
  %321 = call ptr @GetCacheViewVirtualPixels(ptr noundef %301, i64 noundef 0, i64 noundef %313, i64 noundef %320, i64 noundef 1, ptr noundef %2) #13
  %322 = icmp eq ptr %321, null
  br i1 %322, label %378, label %323

323:                                              ; preds = %319
  %324 = load i64, ptr %306, align 8, !tbaa !34
  %325 = icmp sgt i64 %324, 0
  br i1 %325, label %326, label %378

326:                                              ; preds = %323
  %327 = sub nsw i64 %324, %298
  %328 = load float, ptr %307, align 8, !tbaa !76
  %329 = load float, ptr %308, align 4, !tbaa !79
  %330 = load float, ptr %309, align 8, !tbaa !80
  %331 = load float, ptr %310, align 4, !tbaa !81
  br label %332

332:                                              ; preds = %326, %369
  %333 = phi float [ %331, %326 ], [ %370, %369 ]
  %334 = phi float [ %330, %326 ], [ %371, %369 ]
  %335 = phi float [ %329, %326 ], [ %372, %369 ]
  %336 = phi float [ %328, %326 ], [ %373, %369 ]
  %337 = phi i64 [ 0, %326 ], [ %376, %369 ]
  %338 = phi ptr [ %321, %326 ], [ %375, %369 ]
  %339 = phi float [ %314, %326 ], [ %374, %369 ]
  %340 = icmp sge i64 %337, %298
  %341 = icmp slt i64 %337, %327
  %342 = select i1 %340, i1 %341, i1 false
  br i1 %342, label %369, label %343

343:                                              ; preds = %332
  %344 = getelementptr inbounds %struct._PixelPacket, ptr %338, i64 0, i32 2
  %345 = load i16, ptr %344, align 2, !tbaa !61
  %346 = uitofp i16 %345 to double
  %347 = fpext float %336 to double
  %348 = call double @llvm.fmuladd.f64(double %346, double 0x3EF0001000100010, double %347)
  %349 = fptrunc double %348 to float
  store float %349, ptr %307, align 8, !tbaa !76
  %350 = getelementptr inbounds %struct._PixelPacket, ptr %338, i64 0, i32 1
  %351 = load i16, ptr %350, align 2, !tbaa !62
  %352 = uitofp i16 %351 to double
  %353 = fpext float %335 to double
  %354 = call double @llvm.fmuladd.f64(double %352, double 0x3EF0001000100010, double %353)
  %355 = fptrunc double %354 to float
  store float %355, ptr %308, align 4, !tbaa !79
  %356 = load i16, ptr %338, align 2, !tbaa !63
  %357 = uitofp i16 %356 to double
  %358 = fpext float %334 to double
  %359 = call double @llvm.fmuladd.f64(double %357, double 0x3EF0001000100010, double %358)
  %360 = fptrunc double %359 to float
  store float %360, ptr %309, align 8, !tbaa !80
  %361 = getelementptr inbounds %struct._PixelPacket, ptr %338, i64 0, i32 3
  %362 = load i16, ptr %361, align 2, !tbaa !82
  %363 = uitofp i16 %362 to double
  %364 = fpext float %333 to double
  %365 = call double @llvm.fmuladd.f64(double %363, double 0x3EF0001000100010, double %364)
  %366 = fptrunc double %365 to float
  store float %366, ptr %310, align 4, !tbaa !81
  %367 = fadd float %339, 1.000000e+00
  %368 = getelementptr inbounds %struct._PixelPacket, ptr %338, i64 1
  br label %369

369:                                              ; preds = %343, %332
  %370 = phi float [ %366, %343 ], [ %333, %332 ]
  %371 = phi float [ %360, %343 ], [ %334, %332 ]
  %372 = phi float [ %355, %343 ], [ %335, %332 ]
  %373 = phi float [ %349, %343 ], [ %336, %332 ]
  %374 = phi float [ %367, %343 ], [ %339, %332 ]
  %375 = phi ptr [ %368, %343 ], [ %338, %332 ]
  %376 = add nuw nsw i64 %337, 1
  %377 = icmp eq i64 %376, %324
  br i1 %377, label %378, label %332, !llvm.loop !83

378:                                              ; preds = %369, %323, %319, %311
  %379 = phi float [ %314, %311 ], [ %314, %319 ], [ %314, %323 ], [ %374, %369 ]
  %380 = add nuw nsw i64 %313, 1
  %381 = load i64, ptr %302, align 8, !tbaa !57
  %382 = icmp slt i64 %380, %381
  br i1 %382, label %311, label %383, !llvm.loop !84

383:                                              ; preds = %378, %300
  %384 = phi float [ 0.000000e+00, %300 ], [ %379, %378 ]
  %385 = call ptr @DestroyCacheView(ptr noundef %301) #11
  %386 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 5
  %387 = load float, ptr %386, align 8, !tbaa !76
  %388 = fmul float %387, 6.553500e+04
  %389 = fdiv float %388, %384
  %390 = fcmp ugt float %389, 0.000000e+00
  br i1 %390, label %391, label %396

391:                                              ; preds = %383
  %392 = fcmp ult float %389, 6.553500e+04
  br i1 %392, label %393, label %396

393:                                              ; preds = %391
  %394 = fadd float %389, 5.000000e-01
  %395 = fptoui float %394 to i16
  br label %396

396:                                              ; preds = %393, %391, %383
  %397 = phi i16 [ %395, %393 ], [ 0, %383 ], [ -1, %391 ]
  %398 = getelementptr inbounds %struct._Image, ptr %265, i64 0, i32 12
  %399 = getelementptr inbounds %struct._Image, ptr %265, i64 0, i32 12, i32 2
  store i16 %397, ptr %399, align 4, !tbaa !85
  %400 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 6
  %401 = load float, ptr %400, align 4, !tbaa !79
  %402 = fmul float %401, 6.553500e+04
  %403 = fdiv float %402, %384
  %404 = fcmp ugt float %403, 0.000000e+00
  br i1 %404, label %405, label %410

405:                                              ; preds = %396
  %406 = fcmp ult float %403, 6.553500e+04
  br i1 %406, label %407, label %410

407:                                              ; preds = %405
  %408 = fadd float %403, 5.000000e-01
  %409 = fptoui float %408 to i16
  br label %410

410:                                              ; preds = %407, %405, %396
  %411 = phi i16 [ %409, %407 ], [ 0, %396 ], [ -1, %405 ]
  %412 = getelementptr inbounds %struct._Image, ptr %265, i64 0, i32 12, i32 1
  store i16 %411, ptr %412, align 2, !tbaa !86
  %413 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 7
  %414 = load float, ptr %413, align 8, !tbaa !80
  %415 = fmul float %414, 6.553500e+04
  %416 = fdiv float %415, %384
  %417 = fcmp ugt float %416, 0.000000e+00
  br i1 %417, label %418, label %423

418:                                              ; preds = %410
  %419 = fcmp ult float %416, 6.553500e+04
  br i1 %419, label %420, label %423

420:                                              ; preds = %418
  %421 = fadd float %416, 5.000000e-01
  %422 = fptoui float %421 to i16
  br label %423

423:                                              ; preds = %420, %418, %410
  %424 = phi i16 [ %422, %420 ], [ 0, %410 ], [ -1, %418 ]
  store i16 %424, ptr %398, align 8, !tbaa !87
  %425 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 8
  %426 = load float, ptr %425, align 4, !tbaa !81
  %427 = fmul float %426, 6.553500e+04
  %428 = fdiv float %427, %384
  %429 = fcmp ugt float %428, 0.000000e+00
  br i1 %429, label %430, label %435

430:                                              ; preds = %423
  %431 = fcmp ult float %428, 6.553500e+04
  br i1 %431, label %432, label %435

432:                                              ; preds = %430
  %433 = fadd float %428, 5.000000e-01
  %434 = fptoui float %433 to i16
  br label %435

435:                                              ; preds = %432, %430, %423
  %436 = phi i16 [ %434, %432 ], [ 0, %423 ], [ -1, %430 ]
  %437 = getelementptr inbounds %struct._Image, ptr %265, i64 0, i32 12, i32 3
  store i16 %436, ptr %437, align 2, !tbaa !88
  br label %438

438:                                              ; preds = %297, %435
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #11
  %439 = call ptr @AffineTransformImage(ptr noundef nonnull %265, ptr noundef nonnull %8, ptr noundef %2) #11
  %440 = call ptr @DestroyImage(ptr noundef nonnull %265) #11
  %441 = icmp eq ptr %439, null
  br i1 %441, label %467, label %442

442:                                              ; preds = %438
  %443 = call ptr @StatisticImage(ptr noundef nonnull %439, i32 noundef 4, i64 noundef 3, i64 noundef 3, ptr noundef %2) #11
  %444 = icmp eq ptr %443, null
  br i1 %444, label %445, label %447

445:                                              ; preds = %442
  %446 = call ptr @DestroyImage(ptr noundef nonnull %439) #11
  br label %467

447:                                              ; preds = %442
  call void @GetImageBoundingBox(ptr dead_on_unwind nonnull writable sret(%struct._RectangleInfo) align 8 %9, ptr noundef nonnull %443, ptr noundef %2) #11
  %448 = call ptr @DestroyImage(ptr noundef nonnull %443) #11
  %449 = load i32, ptr %259, align 8, !tbaa !70
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %464, label %451

451:                                              ; preds = %447
  %452 = load i64, ptr %9, align 8, !tbaa !89
  %453 = uitofp i64 %452 to double
  %454 = getelementptr inbounds %struct._RectangleInfo, ptr %9, i64 0, i32 1
  %455 = load i64, ptr %454, align 8, !tbaa !90
  %456 = uitofp i64 %455 to double
  %457 = getelementptr inbounds %struct._RectangleInfo, ptr %9, i64 0, i32 2
  %458 = load i64, ptr %457, align 8, !tbaa !91
  %459 = sitofp i64 %458 to double
  %460 = getelementptr inbounds %struct._RectangleInfo, ptr %9, i64 0, i32 3
  %461 = load i64, ptr %460, align 8, !tbaa !92
  %462 = sitofp i64 %461 to double
  %463 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 674, ptr noundef nonnull @.str.8, double noundef %453, double noundef %456, double noundef %459, double noundef %462) #11
  br label %464

464:                                              ; preds = %451, %447
  %465 = call ptr @CropImage(ptr noundef nonnull %439, ptr noundef nonnull %9, ptr noundef %2) #11
  %466 = call ptr @DestroyImage(ptr noundef nonnull %439) #11
  br label %467

467:                                              ; preds = %438, %264, %464, %445, %294, %226, %25
  %468 = phi ptr [ null, %25 ], [ null, %226 ], [ %295, %294 ], [ null, %445 ], [ %465, %464 ], [ null, %264 ], [ null, %438 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #11
  ret ptr %468
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @atan(double noundef) local_unnamed_addr #4

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @SetImageArtifact(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @SetImageVirtualPixelMethod(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #4

declare ptr @GetImageArtifact(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @AffineTransformImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #3

declare ptr @StatisticImage(ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare void @GetImageBoundingBox(ptr dead_on_unwind writable sret(%struct._RectangleInfo) align 8, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare ptr @CropImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @IntegralRotateImage(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  %5 = alloca [4096 x i8], align 16
  %6 = alloca [4096 x i8], align 16
  %7 = alloca [4096 x i8], align 16
  %8 = alloca [4096 x i8], align 16
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26
  %14 = load i64, ptr %13, align 8, !tbaa.struct !93
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa.struct !94
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %18 = load i64, ptr %17, align 8, !tbaa.struct !95
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  %20 = load i64, ptr %19, align 8, !tbaa.struct !96
  %21 = and i64 %1, 3
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #11
  br label %453

25:                                               ; preds = %3
  %26 = and i64 %1, 1
  %27 = icmp eq i64 %26, 0
  %28 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %29 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %30 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %31 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %32 = select i1 %27, ptr %29, ptr %31
  %33 = select i1 %27, ptr %28, ptr %30
  %34 = load i64, ptr %33, align 8, !tbaa !68
  %35 = load i64, ptr %32, align 8, !tbaa !68
  %36 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef %34, i64 noundef %35, i32 noundef 1, ptr noundef %2) #11
  %37 = icmp eq ptr %36, null
  br i1 %37, label %453, label %38

38:                                               ; preds = %25
  %39 = tail call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %2) #11
  %40 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %36, ptr noundef %2) #11
  switch i64 %21, label %434 [
    i64 1, label %50
    i64 2, label %41
    i64 3, label %287
  ]

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %43 = load i64, ptr %42, align 8, !tbaa !57
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %271

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %47 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %48 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %49 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %199

50:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #11
  call void @GetPixelCacheTileSize(ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %9) #11
  %51 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %52 = load i64, ptr %51, align 8, !tbaa !34
  store i64 %52, ptr %10, align 8, !tbaa !68
  %53 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %54 = load i64, ptr %53, align 8, !tbaa !57
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %176

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct._Image, ptr %36, i64 0, i32 7
  %58 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %59 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %60 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %61

61:                                               ; preds = %56, %169
  %62 = phi i32 [ 1, %56 ], [ %171, %169 ]
  %63 = phi i64 [ 0, %56 ], [ %170, %169 ]
  %64 = phi i64 [ 0, %56 ], [ %173, %169 ]
  %65 = icmp eq i32 %62, 0
  br i1 %65, label %169, label %66

66:                                               ; preds = %61
  %67 = load i64, ptr %51, align 8, !tbaa !34
  %68 = icmp sgt i64 %67, 0
  br i1 %68, label %69, label %155

69:                                               ; preds = %66, %150
  %70 = phi i64 [ %153, %150 ], [ %67, %66 ]
  %71 = phi i32 [ %149, %150 ], [ 1, %66 ]
  %72 = phi i64 [ %152, %150 ], [ 0, %66 ]
  %73 = load i64, ptr %10, align 8, !tbaa !68
  %74 = add nsw i64 %73, %72
  %75 = icmp sgt i64 %74, %70
  %76 = sub i64 %70, %74
  %77 = select i1 %75, i64 %76, i64 0
  %78 = add i64 %77, %73
  %79 = load i64, ptr %9, align 8, !tbaa !68
  %80 = add nsw i64 %79, %64
  %81 = load i64, ptr %53, align 8, !tbaa !57
  %82 = icmp sgt i64 %80, %81
  %83 = sub i64 %81, %80
  %84 = select i1 %82, i64 %83, i64 0
  %85 = add i64 %84, %79
  %86 = call ptr @GetCacheViewVirtualPixels(ptr noundef %39, i64 noundef %72, i64 noundef %64, i64 noundef %78, i64 noundef %85, ptr noundef %2) #13
  %87 = icmp eq ptr %86, null
  br i1 %87, label %148, label %88

88:                                               ; preds = %69
  %89 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %39) #11
  %90 = icmp sgt i64 %78, 0
  br i1 %90, label %91, label %148

91:                                               ; preds = %88
  %92 = add i64 %85, %64
  %93 = add i64 %85, -1
  %94 = mul i64 %93, %78
  %95 = getelementptr inbounds %struct._PixelPacket, ptr %86, i64 %94
  %96 = icmp sgt i64 %85, 0
  %97 = sub nsw i64 0, %78
  %98 = icmp eq ptr %89, null
  %99 = getelementptr inbounds i16, ptr %89, i64 %94
  %100 = icmp slt i64 %85, 1
  %101 = sub nsw i64 0, %78
  br label %102

102:                                              ; preds = %91, %144
  %103 = phi i32 [ %71, %91 ], [ %145, %144 ]
  %104 = phi i64 [ 0, %91 ], [ %146, %144 ]
  %105 = icmp eq i32 %103, 0
  br i1 %105, label %144, label %106

106:                                              ; preds = %102
  %107 = load i64, ptr %57, align 8, !tbaa !34
  %108 = sub i64 %107, %92
  %109 = add nsw i64 %104, %72
  %110 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %40, i64 noundef %108, i64 noundef %109, i64 noundef %85, i64 noundef 1, ptr noundef %2) #13
  %111 = icmp eq ptr %110, null
  br i1 %111, label %144, label %112

112:                                              ; preds = %106
  br i1 %96, label %113, label %124

113:                                              ; preds = %112
  %114 = getelementptr inbounds %struct._PixelPacket, ptr %95, i64 %104
  br label %115

115:                                              ; preds = %113, %115
  %116 = phi i64 [ %122, %115 ], [ 0, %113 ]
  %117 = phi ptr [ %121, %115 ], [ %114, %113 ]
  %118 = phi ptr [ %119, %115 ], [ %110, %113 ]
  %119 = getelementptr inbounds %struct._PixelPacket, ptr %118, i64 1
  %120 = load i64, ptr %117, align 2
  store i64 %120, ptr %118, align 2
  %121 = getelementptr inbounds %struct._PixelPacket, ptr %117, i64 %97
  %122 = add nuw nsw i64 %116, 1
  %123 = icmp eq i64 %122, %85
  br i1 %123, label %124, label %115, !llvm.loop !97

124:                                              ; preds = %115, %112
  %125 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %40) #11
  %126 = icmp eq ptr %125, null
  %127 = select i1 %98, i1 true, i1 %126
  %128 = or i1 %127, %100
  br i1 %128, label %140, label %129

129:                                              ; preds = %124
  %130 = getelementptr inbounds i16, ptr %99, i64 %104
  br label %131

131:                                              ; preds = %129, %131
  %132 = phi ptr [ %137, %131 ], [ %130, %129 ]
  %133 = phi i64 [ %138, %131 ], [ 0, %129 ]
  %134 = phi ptr [ %136, %131 ], [ %125, %129 ]
  %135 = load i16, ptr %132, align 2, !tbaa !59
  %136 = getelementptr inbounds i16, ptr %134, i64 1
  store i16 %135, ptr %134, align 2, !tbaa !59
  %137 = getelementptr inbounds i16, ptr %132, i64 %101
  %138 = add nuw nsw i64 %133, 1
  %139 = icmp eq i64 %138, %85
  br i1 %139, label %140, label %131, !llvm.loop !98

140:                                              ; preds = %131, %124
  %141 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %40, ptr noundef %2) #13
  %142 = icmp ne i32 %141, 0
  %143 = zext i1 %142 to i32
  br label %144

144:                                              ; preds = %106, %102, %140
  %145 = phi i32 [ %143, %140 ], [ 0, %102 ], [ 0, %106 ]
  %146 = add nuw nsw i64 %104, 1
  %147 = icmp slt i64 %146, %78
  br i1 %147, label %102, label %148, !llvm.loop !99

148:                                              ; preds = %144, %88, %69
  %149 = phi i32 [ 0, %69 ], [ %71, %88 ], [ %145, %144 ]
  br i1 %87, label %155, label %150

150:                                              ; preds = %148
  %151 = load i64, ptr %10, align 8, !tbaa !68
  %152 = add nsw i64 %151, %72
  %153 = load i64, ptr %51, align 8, !tbaa !34
  %154 = icmp slt i64 %152, %153
  br i1 %154, label %69, label %155, !llvm.loop !100

155:                                              ; preds = %150, %148, %66
  %156 = phi i32 [ 1, %66 ], [ %149, %148 ], [ %149, %150 ]
  %157 = load ptr, ptr %58, align 8, !tbaa !101
  %158 = icmp eq ptr %157, null
  br i1 %158, label %169, label %159

159:                                              ; preds = %155
  %160 = load i64, ptr %9, align 8, !tbaa !68
  %161 = add i64 %160, %63
  %162 = load i64, ptr %53, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %8) #11
  %163 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %8, i64 noundef 4096, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.9, ptr noundef nonnull %59) #11
  %164 = load ptr, ptr %58, align 8, !tbaa !101
  %165 = load ptr, ptr %60, align 8, !tbaa !102
  %166 = call i32 %164(ptr noundef nonnull %8, i64 noundef %161, i64 noundef %162, ptr noundef %165) #11
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %8) #11
  %167 = icmp eq i32 %166, 0
  %168 = select i1 %167, i32 0, i32 %156
  br label %169

169:                                              ; preds = %155, %159, %61
  %170 = phi i64 [ %63, %61 ], [ %161, %159 ], [ %63, %155 ]
  %171 = phi i32 [ 0, %61 ], [ %168, %159 ], [ %156, %155 ]
  %172 = load i64, ptr %9, align 8, !tbaa !68
  %173 = add nsw i64 %172, %64
  %174 = load i64, ptr %53, align 8, !tbaa !57
  %175 = icmp slt i64 %173, %174
  br i1 %175, label %61, label %176, !llvm.loop !103

176:                                              ; preds = %169, %50
  %177 = phi i32 [ 1, %50 ], [ %171, %169 ]
  %178 = phi i64 [ %54, %50 ], [ %174, %169 ]
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %7) #11
  %179 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %180 = load ptr, ptr %179, align 8, !tbaa !101
  %181 = icmp eq ptr %180, null
  br i1 %181, label %190, label %182

182:                                              ; preds = %176
  %183 = add nsw i64 %178, -1
  %184 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %185 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %7, i64 noundef 4096, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.9, ptr noundef nonnull %184) #11
  %186 = load ptr, ptr %179, align 8, !tbaa !101
  %187 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %188 = load ptr, ptr %187, align 8, !tbaa !102
  %189 = call i32 %186(ptr noundef nonnull %7, i64 noundef %183, i64 noundef %178, ptr noundef %188) #11
  br label %190

190:                                              ; preds = %176, %182
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %7) #11
  %191 = icmp eq i64 %16, 0
  br i1 %191, label %197, label %192

192:                                              ; preds = %190
  %193 = getelementptr inbounds %struct._Image, ptr %36, i64 0, i32 7
  %194 = load i64, ptr %193, align 8, !tbaa !34
  %195 = add i64 %20, %194
  %196 = sub i64 %16, %195
  br label %197

197:                                              ; preds = %192, %190
  %198 = phi i64 [ %196, %192 ], [ %20, %190 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  br label %435

199:                                              ; preds = %45, %265
  %200 = phi i32 [ 1, %45 ], [ %267, %265 ]
  %201 = phi i64 [ 0, %45 ], [ %266, %265 ]
  %202 = phi i64 [ 0, %45 ], [ %268, %265 ]
  %203 = icmp eq i32 %200, 0
  br i1 %203, label %265, label %204

204:                                              ; preds = %199
  %205 = load i64, ptr %46, align 8, !tbaa !34
  %206 = call ptr @GetCacheViewVirtualPixels(ptr noundef %39, i64 noundef 0, i64 noundef %202, i64 noundef %205, i64 noundef 1, ptr noundef %2) #13
  %207 = load i64, ptr %42, align 8, !tbaa !57
  %208 = xor i64 %202, -1
  %209 = add i64 %207, %208
  %210 = load i64, ptr %46, align 8, !tbaa !34
  %211 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %40, i64 noundef 0, i64 noundef %209, i64 noundef %210, i64 noundef 1, ptr noundef %2) #13
  %212 = icmp eq ptr %206, null
  %213 = icmp eq ptr %211, null
  %214 = select i1 %212, i1 true, i1 %213
  br i1 %214, label %265, label %215

215:                                              ; preds = %204
  %216 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %39) #11
  %217 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %40) #11
  %218 = load i64, ptr %46, align 8, !tbaa !34
  %219 = icmp sgt i64 %218, 0
  br i1 %219, label %220, label %232

220:                                              ; preds = %215
  %221 = getelementptr inbounds %struct._PixelPacket, ptr %211, i64 %218
  br label %222

222:                                              ; preds = %220, %222
  %223 = phi i64 [ %229, %222 ], [ 0, %220 ]
  %224 = phi ptr [ %226, %222 ], [ %221, %220 ]
  %225 = phi ptr [ %227, %222 ], [ %206, %220 ]
  %226 = getelementptr inbounds %struct._PixelPacket, ptr %224, i64 -1
  %227 = getelementptr inbounds %struct._PixelPacket, ptr %225, i64 1
  %228 = load i64, ptr %225, align 2
  store i64 %228, ptr %226, align 2
  %229 = add nuw nsw i64 %223, 1
  %230 = load i64, ptr %46, align 8, !tbaa !34
  %231 = icmp slt i64 %229, %230
  br i1 %231, label %222, label %232, !llvm.loop !104

232:                                              ; preds = %222, %215
  %233 = phi i64 [ %218, %215 ], [ %230, %222 ]
  %234 = icmp ne ptr %216, null
  %235 = icmp ne ptr %217, null
  %236 = select i1 %234, i1 %235, i1 false
  %237 = icmp sgt i64 %233, 0
  %238 = and i1 %236, %237
  br i1 %238, label %239, label %250

239:                                              ; preds = %232
  %240 = getelementptr inbounds i16, ptr %217, i64 %233
  %241 = getelementptr i16, ptr %240, i64 -1
  br label %242

242:                                              ; preds = %239, %242
  %243 = phi i64 [ 0, %239 ], [ %248, %242 ]
  %244 = sub nsw i64 0, %243
  %245 = getelementptr inbounds i16, ptr %216, i64 %243
  %246 = load i16, ptr %245, align 2, !tbaa !59
  %247 = getelementptr i16, ptr %241, i64 %244
  store i16 %246, ptr %247, align 2, !tbaa !59
  %248 = add nuw nsw i64 %243, 1
  %249 = icmp eq i64 %248, %233
  br i1 %249, label %250, label %242, !llvm.loop !105

250:                                              ; preds = %242, %232
  %251 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %40, ptr noundef %2) #13
  %252 = icmp ne i32 %251, 0
  %253 = zext i1 %252 to i32
  %254 = load ptr, ptr %47, align 8, !tbaa !101
  %255 = icmp eq ptr %254, null
  br i1 %255, label %265, label %256

256:                                              ; preds = %250
  %257 = add nsw i64 %201, 1
  %258 = load i64, ptr %42, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #11
  %259 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.9, ptr noundef nonnull %48) #11
  %260 = load ptr, ptr %47, align 8, !tbaa !101
  %261 = load ptr, ptr %49, align 8, !tbaa !102
  %262 = call i32 %260(ptr noundef nonnull %6, i64 noundef %201, i64 noundef %258, ptr noundef %261) #11
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #11
  %263 = icmp eq i32 %262, 0
  %264 = select i1 %263, i32 0, i32 %253
  br label %265

265:                                              ; preds = %250, %256, %204, %199
  %266 = phi i64 [ %201, %199 ], [ %201, %204 ], [ %257, %256 ], [ %201, %250 ]
  %267 = phi i32 [ 0, %199 ], [ 0, %204 ], [ %264, %256 ], [ %253, %250 ]
  %268 = add nuw nsw i64 %202, 1
  %269 = load i64, ptr %42, align 8, !tbaa !57
  %270 = icmp slt i64 %268, %269
  br i1 %270, label %199, label %271, !llvm.loop !106

271:                                              ; preds = %265, %41
  %272 = phi i32 [ 1, %41 ], [ %267, %265 ]
  %273 = icmp eq i64 %14, 0
  br i1 %273, label %279, label %274

274:                                              ; preds = %271
  %275 = getelementptr inbounds %struct._Image, ptr %36, i64 0, i32 7
  %276 = load i64, ptr %275, align 8, !tbaa !34
  %277 = add i64 %18, %276
  %278 = sub i64 %14, %277
  br label %279

279:                                              ; preds = %274, %271
  %280 = phi i64 [ %278, %274 ], [ %18, %271 ]
  %281 = icmp eq i64 %16, 0
  br i1 %281, label %435, label %282

282:                                              ; preds = %279
  %283 = getelementptr inbounds %struct._Image, ptr %36, i64 0, i32 8
  %284 = load i64, ptr %283, align 8, !tbaa !57
  %285 = add i64 %20, %284
  %286 = sub i64 %16, %285
  br label %435

287:                                              ; preds = %38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #11
  call void @GetPixelCacheTileSize(ptr noundef %0, ptr noundef nonnull %12, ptr noundef nonnull %11) #11
  %288 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %289 = load i64, ptr %288, align 8, !tbaa !34
  store i64 %289, ptr %12, align 8, !tbaa !68
  %290 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %291 = load i64, ptr %290, align 8, !tbaa !57
  %292 = icmp sgt i64 %291, 0
  br i1 %292, label %293, label %411

293:                                              ; preds = %287
  %294 = getelementptr inbounds %struct._Image, ptr %36, i64 0, i32 8
  %295 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %296 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %297 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %298

298:                                              ; preds = %293, %404
  %299 = phi i64 [ 0, %293 ], [ %408, %404 ]
  %300 = phi i32 [ 1, %293 ], [ %406, %404 ]
  %301 = phi i64 [ 0, %293 ], [ %405, %404 ]
  %302 = icmp eq i32 %300, 0
  br i1 %302, label %404, label %303

303:                                              ; preds = %298
  %304 = load i64, ptr %288, align 8, !tbaa !34
  %305 = icmp sgt i64 %304, 0
  br i1 %305, label %306, label %390

306:                                              ; preds = %303, %385
  %307 = phi i64 [ %388, %385 ], [ %304, %303 ]
  %308 = phi i64 [ %387, %385 ], [ 0, %303 ]
  %309 = phi i32 [ %384, %385 ], [ 1, %303 ]
  %310 = load i64, ptr %12, align 8, !tbaa !68
  %311 = add nsw i64 %310, %308
  %312 = icmp sgt i64 %311, %307
  %313 = sub i64 %307, %311
  %314 = select i1 %312, i64 %313, i64 0
  %315 = add i64 %314, %310
  %316 = load i64, ptr %11, align 8, !tbaa !68
  %317 = add nsw i64 %316, %299
  %318 = load i64, ptr %290, align 8, !tbaa !57
  %319 = icmp sgt i64 %317, %318
  %320 = sub i64 %318, %317
  %321 = select i1 %319, i64 %320, i64 0
  %322 = add i64 %321, %316
  %323 = call ptr @GetCacheViewVirtualPixels(ptr noundef %39, i64 noundef %308, i64 noundef %299, i64 noundef %315, i64 noundef %322, ptr noundef %2) #13
  %324 = icmp eq ptr %323, null
  br i1 %324, label %383, label %325

325:                                              ; preds = %306
  %326 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %39) #11
  %327 = icmp sgt i64 %315, 0
  br i1 %327, label %328, label %383

328:                                              ; preds = %325
  %329 = add i64 %315, %308
  %330 = add nsw i64 %315, -1
  %331 = getelementptr inbounds %struct._PixelPacket, ptr %323, i64 %330
  %332 = icmp sgt i64 %322, 0
  %333 = icmp eq ptr %326, null
  %334 = getelementptr inbounds i16, ptr %326, i64 %330
  %335 = icmp slt i64 %322, 1
  br label %336

336:                                              ; preds = %328, %379
  %337 = phi i64 [ 0, %328 ], [ %381, %379 ]
  %338 = phi i32 [ %309, %328 ], [ %380, %379 ]
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %379, label %340

340:                                              ; preds = %336
  %341 = load i64, ptr %294, align 8, !tbaa !57
  %342 = sub i64 %337, %329
  %343 = add i64 %342, %341
  %344 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %40, i64 noundef %299, i64 noundef %343, i64 noundef %322, i64 noundef 1, ptr noundef %2) #13
  %345 = icmp eq ptr %344, null
  br i1 %345, label %379, label %346

346:                                              ; preds = %340
  %347 = sub nsw i64 0, %337
  br i1 %332, label %348, label %359

348:                                              ; preds = %346
  %349 = getelementptr inbounds %struct._PixelPacket, ptr %331, i64 %347
  br label %350

350:                                              ; preds = %348, %350
  %351 = phi i64 [ %357, %350 ], [ 0, %348 ]
  %352 = phi ptr [ %356, %350 ], [ %349, %348 ]
  %353 = phi ptr [ %354, %350 ], [ %344, %348 ]
  %354 = getelementptr inbounds %struct._PixelPacket, ptr %353, i64 1
  %355 = load i64, ptr %352, align 2
  store i64 %355, ptr %353, align 2
  %356 = getelementptr inbounds %struct._PixelPacket, ptr %352, i64 %315
  %357 = add nuw nsw i64 %351, 1
  %358 = icmp slt i64 %357, %322
  br i1 %358, label %350, label %359, !llvm.loop !107

359:                                              ; preds = %350, %346
  %360 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %40) #11
  %361 = icmp eq ptr %360, null
  %362 = select i1 %333, i1 true, i1 %361
  %363 = or i1 %362, %335
  br i1 %363, label %375, label %364

364:                                              ; preds = %359
  %365 = getelementptr inbounds i16, ptr %334, i64 %347
  br label %366

366:                                              ; preds = %364, %366
  %367 = phi ptr [ %372, %366 ], [ %365, %364 ]
  %368 = phi i64 [ %373, %366 ], [ 0, %364 ]
  %369 = phi ptr [ %371, %366 ], [ %360, %364 ]
  %370 = load i16, ptr %367, align 2, !tbaa !59
  %371 = getelementptr inbounds i16, ptr %369, i64 1
  store i16 %370, ptr %369, align 2, !tbaa !59
  %372 = getelementptr inbounds i16, ptr %367, i64 %315
  %373 = add nuw nsw i64 %368, 1
  %374 = icmp slt i64 %373, %322
  br i1 %374, label %366, label %375, !llvm.loop !108

375:                                              ; preds = %366, %359
  %376 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %40, ptr noundef %2) #13
  %377 = icmp ne i32 %376, 0
  %378 = zext i1 %377 to i32
  br label %379

379:                                              ; preds = %340, %336, %375
  %380 = phi i32 [ %378, %375 ], [ 0, %336 ], [ 0, %340 ]
  %381 = add nuw nsw i64 %337, 1
  %382 = icmp eq i64 %381, %315
  br i1 %382, label %383, label %336, !llvm.loop !109

383:                                              ; preds = %379, %325, %306
  %384 = phi i32 [ 0, %306 ], [ %309, %325 ], [ %380, %379 ]
  br i1 %324, label %390, label %385

385:                                              ; preds = %383
  %386 = load i64, ptr %12, align 8, !tbaa !68
  %387 = add nsw i64 %386, %308
  %388 = load i64, ptr %288, align 8, !tbaa !34
  %389 = icmp slt i64 %387, %388
  br i1 %389, label %306, label %390, !llvm.loop !110

390:                                              ; preds = %385, %383, %303
  %391 = phi i32 [ 1, %303 ], [ %384, %383 ], [ %384, %385 ]
  %392 = load ptr, ptr %295, align 8, !tbaa !101
  %393 = icmp eq ptr %392, null
  br i1 %393, label %404, label %394

394:                                              ; preds = %390
  %395 = load i64, ptr %11, align 8, !tbaa !68
  %396 = add i64 %395, %301
  %397 = load i64, ptr %290, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #11
  %398 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.9, ptr noundef nonnull %296) #11
  %399 = load ptr, ptr %295, align 8, !tbaa !101
  %400 = load ptr, ptr %297, align 8, !tbaa !102
  %401 = call i32 %399(ptr noundef nonnull %5, i64 noundef %396, i64 noundef %397, ptr noundef %400) #11
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #11
  %402 = icmp eq i32 %401, 0
  %403 = select i1 %402, i32 0, i32 %391
  br label %404

404:                                              ; preds = %390, %394, %298
  %405 = phi i64 [ %301, %298 ], [ %396, %394 ], [ %301, %390 ]
  %406 = phi i32 [ 0, %298 ], [ %403, %394 ], [ %391, %390 ]
  %407 = load i64, ptr %11, align 8, !tbaa !68
  %408 = add nsw i64 %407, %299
  %409 = load i64, ptr %290, align 8, !tbaa !57
  %410 = icmp slt i64 %408, %409
  br i1 %410, label %298, label %411, !llvm.loop !111

411:                                              ; preds = %404, %287
  %412 = phi i32 [ 1, %287 ], [ %406, %404 ]
  %413 = phi i64 [ %291, %287 ], [ %409, %404 ]
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #11
  %414 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %415 = load ptr, ptr %414, align 8, !tbaa !101
  %416 = icmp eq ptr %415, null
  br i1 %416, label %425, label %417

417:                                              ; preds = %411
  %418 = add nsw i64 %413, -1
  %419 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %420 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.9, ptr noundef nonnull %419) #11
  %421 = load ptr, ptr %414, align 8, !tbaa !101
  %422 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %423 = load ptr, ptr %422, align 8, !tbaa !102
  %424 = call i32 %421(ptr noundef nonnull %4, i64 noundef %418, i64 noundef %413, ptr noundef %423) #11
  br label %425

425:                                              ; preds = %411, %417
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #11
  %426 = icmp eq i64 %14, 0
  br i1 %426, label %432, label %427

427:                                              ; preds = %425
  %428 = getelementptr inbounds %struct._Image, ptr %36, i64 0, i32 8
  %429 = load i64, ptr %428, align 8, !tbaa !57
  %430 = add i64 %18, %429
  %431 = sub i64 %14, %430
  br label %432

432:                                              ; preds = %427, %425
  %433 = phi i64 [ %431, %427 ], [ %18, %425 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #11
  br label %435

434:                                              ; preds = %38
  unreachable

435:                                              ; preds = %279, %282, %432, %197
  %436 = phi i64 [ %16, %432 ], [ %14, %282 ], [ %14, %279 ], [ %16, %197 ]
  %437 = phi i64 [ %14, %432 ], [ %16, %282 ], [ 0, %279 ], [ %14, %197 ]
  %438 = phi i64 [ %20, %432 ], [ %280, %282 ], [ %280, %279 ], [ %198, %197 ]
  %439 = phi i64 [ %433, %432 ], [ %286, %282 ], [ %20, %279 ], [ %18, %197 ]
  %440 = phi i32 [ %412, %432 ], [ %272, %282 ], [ %272, %279 ], [ %177, %197 ]
  %441 = call ptr @DestroyCacheView(ptr noundef %40) #11
  %442 = call ptr @DestroyCacheView(ptr noundef %39) #11
  %443 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %444 = load i32, ptr %443, align 8, !tbaa !112
  %445 = getelementptr inbounds %struct._Image, ptr %36, i64 0, i32 77
  store i32 %444, ptr %445, align 8, !tbaa !112
  %446 = getelementptr inbounds %struct._Image, ptr %36, i64 0, i32 26
  store i64 %436, ptr %446, align 8, !tbaa.struct !93
  %447 = getelementptr inbounds %struct._Image, ptr %36, i64 0, i32 26, i32 1
  store i64 %437, ptr %447, align 8, !tbaa.struct !94
  %448 = getelementptr inbounds %struct._Image, ptr %36, i64 0, i32 26, i32 2
  store i64 %438, ptr %448, align 8, !tbaa.struct !95
  %449 = getelementptr inbounds %struct._Image, ptr %36, i64 0, i32 26, i32 3
  store i64 %439, ptr %449, align 8, !tbaa.struct !96
  %450 = icmp eq i32 %440, 0
  br i1 %450, label %451, label %453

451:                                              ; preds = %435
  %452 = call ptr @DestroyImage(ptr noundef nonnull %36) #11
  br label %453

453:                                              ; preds = %435, %451, %25, %23
  %454 = phi ptr [ %24, %23 ], [ null, %25 ], [ %452, %451 ], [ %36, %435 ]
  ret ptr %454
}

declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @GetPixelCacheTileSize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: hot
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

declare ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: hot
declare ptr @QueueCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: hot
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @ShearImage(ptr noundef %0, double noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct._RectangleInfo, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #11
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !70
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1599, ptr noundef nonnull @.str.10, ptr noundef nonnull %11) #11
  br label %13

13:                                               ; preds = %10, %4
  %14 = fcmp une double %1, 0.000000e+00
  br i1 %14, label %15, label %21

15:                                               ; preds = %13
  %16 = tail call double @fmod(double noundef %1, double noundef 9.000000e+01) #11
  %17 = fcmp oeq double %16, 0.000000e+00
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %20 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1603, i32 noundef 465, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, ptr noundef nonnull %19) #11
  br label %144

21:                                               ; preds = %15, %13
  %22 = fcmp une double %2, 0.000000e+00
  br i1 %22, label %23, label %29

23:                                               ; preds = %21
  %24 = tail call double @fmod(double noundef %2, double noundef 9.000000e+01) #11
  %25 = fcmp oeq double %24, 0.000000e+00
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %28 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1605, i32 noundef 465, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, ptr noundef nonnull %27) #11
  br label %144

29:                                               ; preds = %23, %21
  %30 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %3) #11
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %34 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1611, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %33) #11
  br label %144

35:                                               ; preds = %29
  %36 = tail call double @fmod(double noundef %1, double noundef 3.600000e+02) #11
  %37 = fmul double %36, 0x400921FB54442D18
  %38 = fdiv double %37, 1.800000e+02
  %39 = tail call double @tan(double noundef %38) #11
  %40 = fneg double %39
  %41 = tail call double @fmod(double noundef %2, double noundef 3.600000e+02) #11
  %42 = fmul double %41, 0x400921FB54442D18
  %43 = fdiv double %42, 1.800000e+02
  %44 = tail call double @tan(double noundef %43) #11
  %45 = fcmp oeq double %39, 0.000000e+00
  %46 = fcmp oeq double %44, 0.000000e+00
  %47 = select i1 %45, i1 %46, i1 false
  br i1 %47, label %144, label %48

48:                                               ; preds = %35
  %49 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %30, i32 noundef 1) #11
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 58
  tail call void @InheritException(ptr noundef %3, ptr noundef nonnull %52) #11
  %53 = tail call ptr @DestroyImage(ptr noundef nonnull %30) #11
  br label %144

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 6
  %56 = load i32, ptr %55, align 8, !tbaa !113
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %30, i32 noundef 6) #11
  br label %60

60:                                               ; preds = %58, %54
  %61 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %62 = load i64, ptr %61, align 8, !tbaa !34
  %63 = tail call double @llvm.fabs.f64(double %40)
  %64 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %65 = load i64, ptr %64, align 8, !tbaa !57
  %66 = uitofp i64 %65 to double
  %67 = tail call double @llvm.fmuladd.f64(double %63, double %66, double 5.000000e-01)
  %68 = tail call double @llvm.floor.f64(double %67)
  %69 = fptosi double %68 to i64
  %70 = add i64 %62, %69
  %71 = uitofp i64 %62 to double
  %72 = fneg double %71
  %73 = tail call double @llvm.fmuladd.f64(double %63, double %66, double %72)
  %74 = fmul double %73, 5.000000e-01
  %75 = fadd double %74, %71
  %76 = fadd double %75, -5.000000e-01
  %77 = tail call double @llvm.ceil.f64(double %76)
  %78 = fptosi double %77 to i64
  %79 = tail call double @llvm.fabs.f64(double %44)
  %80 = uitofp i64 %70 to double
  %81 = fneg double %66
  %82 = tail call double @llvm.fmuladd.f64(double %79, double %80, double %81)
  %83 = fmul double %82, 5.000000e-01
  %84 = fadd double %83, %66
  %85 = fadd double %84, -5.000000e-01
  %86 = tail call double @llvm.ceil.f64(double %85)
  %87 = fptosi double %86 to i64
  %88 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 13
  %89 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 12
  %90 = load i64, ptr %89, align 8
  store i64 %90, ptr %88, align 8
  %91 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 36
  store i32 13, ptr %91, align 8, !tbaa !114
  store i64 %78, ptr %6, align 8, !tbaa !89
  %92 = getelementptr inbounds %struct._RectangleInfo, ptr %6, i64 0, i32 1
  store i64 %87, ptr %92, align 8, !tbaa !90
  %93 = call ptr @BorderImage(ptr noundef nonnull %30, ptr noundef nonnull %6, ptr noundef %3) #11
  store ptr %93, ptr %5, align 8, !tbaa !115
  %94 = call ptr @DestroyImage(ptr noundef nonnull %30) #11
  %95 = icmp eq ptr %93, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %60
  %97 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %98 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1642, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %97) #11
  br label %144

99:                                               ; preds = %60
  %100 = getelementptr inbounds %struct._Image, ptr %93, i64 0, i32 6
  %101 = load i32, ptr %100, align 8, !tbaa !113
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = call i32 @SetImageAlphaChannel(ptr noundef nonnull %93, i32 noundef 6) #11
  br label %105

105:                                              ; preds = %103, %99
  %106 = fptrunc double %40 to float
  %107 = load i64, ptr %61, align 8, !tbaa !34
  %108 = load i64, ptr %64, align 8, !tbaa !57
  %109 = getelementptr inbounds %struct._Image, ptr %93, i64 0, i32 8
  %110 = load i64, ptr %109, align 8, !tbaa !57
  %111 = sub i64 %110, %108
  %112 = sdiv i64 %111, 2
  %113 = call fastcc i32 @XShearImage(ptr noundef nonnull %93, float noundef %106, i64 noundef %107, i64 noundef %108, i64 noundef %78, i64 noundef %112, ptr noundef %3), !range !116
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %105
  %116 = call ptr @DestroyImage(ptr noundef nonnull %93) #11
  store ptr %116, ptr %5, align 8, !tbaa !115
  br label %144

117:                                              ; preds = %105
  %118 = fptrunc double %44 to float
  %119 = load i64, ptr %64, align 8, !tbaa !57
  %120 = getelementptr inbounds %struct._Image, ptr %93, i64 0, i32 7
  %121 = load i64, ptr %120, align 8, !tbaa !34
  %122 = sub i64 %121, %70
  %123 = sdiv i64 %122, 2
  %124 = call fastcc i32 @YShearImage(ptr noundef nonnull %93, float noundef %118, i64 noundef %70, i64 noundef %119, i64 noundef %123, i64 noundef %87, ptr noundef %3), !range !116
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %117
  %127 = call ptr @DestroyImage(ptr noundef nonnull %93) #11
  store ptr %127, ptr %5, align 8, !tbaa !115
  br label %144

128:                                              ; preds = %117
  %129 = load i64, ptr %61, align 8, !tbaa !34
  %130 = uitofp i64 %129 to float
  %131 = load i64, ptr %64, align 8, !tbaa !57
  %132 = uitofp i64 %131 to float
  %133 = call fastcc i32 @CropToFitImage(ptr noundef nonnull %5, float noundef %106, float noundef %118, float noundef %130, float noundef %132, i32 noundef 0, ptr noundef %3), !range !116
  %134 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 36
  %135 = load i32, ptr %134, align 8, !tbaa !114
  %136 = load ptr, ptr %5, align 8, !tbaa !115
  %137 = getelementptr inbounds %struct._Image, ptr %136, i64 0, i32 36
  store i32 %135, ptr %137, align 8, !tbaa !114
  %138 = getelementptr inbounds %struct._Image, ptr %136, i64 0, i32 26
  %139 = icmp eq i32 %133, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %138, i8 0, i64 16, i1 false)
  br i1 %139, label %140, label %142

140:                                              ; preds = %128
  %141 = call ptr @DestroyImage(ptr noundef %136) #11
  store ptr %141, ptr %5, align 8, !tbaa !115
  br label %142

142:                                              ; preds = %140, %128
  %143 = load ptr, ptr %5, align 8, !tbaa !115
  br label %144

144:                                              ; preds = %35, %142, %126, %115, %96, %51, %32, %26, %18
  %145 = phi ptr [ null, %18 ], [ null, %26 ], [ null, %32 ], [ %53, %51 ], [ null, %96 ], [ null, %115 ], [ null, %126 ], [ %143, %142 ], [ %30, %35 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  ret ptr %145
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @tan(double noundef) local_unnamed_addr #4

declare i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @SetImageAlphaChannel(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #7

declare ptr @BorderImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @XShearImage(ptr noundef %0, float noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %6) unnamed_addr #0 {
  %8 = alloca [4096 x i8], align 16
  %9 = alloca %struct._MagickPixelPacket, align 8
  %10 = alloca %struct._MagickPixelPacket, align 8
  %11 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #11
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %13 = load i32, ptr %12, align 8, !tbaa !70
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %17 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1164, ptr noundef nonnull @.str.10, ptr noundef nonnull %16) #11
  br label %18

18:                                               ; preds = %15, %7
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %9) #11
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12, i32 2
  %21 = load i16, ptr %20, align 2, !tbaa !61
  %22 = uitofp i16 %21 to float
  %23 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 5
  store float %22, ptr %23, align 8, !tbaa !76
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12, i32 1
  %25 = load i16, ptr %24, align 2, !tbaa !62
  %26 = uitofp i16 %25 to float
  %27 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 6
  store float %26, ptr %27, align 4, !tbaa !79
  %28 = load i16, ptr %19, align 2, !tbaa !63
  %29 = uitofp i16 %28 to float
  %30 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 7
  store float %29, ptr %30, align 8, !tbaa !80
  %31 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12, i32 3
  %32 = load i16, ptr %31, align 2, !tbaa !82
  %33 = uitofp i16 %32 to float
  %34 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 8
  store float %33, ptr %34, align 4, !tbaa !81
  %35 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !117
  %37 = icmp eq i32 %36, 12
  br i1 %37, label %38, label %102

38:                                               ; preds = %18
  %39 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 1
  %40 = load i32, ptr %39, align 4, !tbaa !118
  %41 = icmp eq i32 %40, 13
  br i1 %41, label %52, label %42

42:                                               ; preds = %38
  %43 = uitofp i16 %21 to double
  %44 = fmul double %43, 0x3EF0001000100010
  %45 = fptrunc double %44 to float
  %46 = uitofp i16 %25 to double
  %47 = fmul double %46, 0x3EF0001000100010
  %48 = fptrunc double %47 to float
  %49 = uitofp i16 %28 to double
  %50 = fmul double %49, 0x3EF0001000100010
  %51 = fptrunc double %50 to float
  br label %58

52:                                               ; preds = %38
  %53 = call float @DecodePixelGamma(float noundef %22) #13
  %54 = load float, ptr %27, align 4, !tbaa !79
  %55 = call float @DecodePixelGamma(float noundef %54) #13
  %56 = load float, ptr %30, align 8, !tbaa !80
  %57 = call float @DecodePixelGamma(float noundef %56) #13
  br label %58

58:                                               ; preds = %52, %42
  %59 = phi float [ %51, %42 ], [ %57, %52 ]
  %60 = phi float [ %48, %42 ], [ %55, %52 ]
  %61 = phi float [ %45, %42 ], [ %53, %52 ]
  %62 = call float @llvm.fabs.f32(float %61)
  %63 = fpext float %62 to double
  %64 = fcmp olt double %63, 1.000000e-15
  br i1 %64, label %65, label %73

65:                                               ; preds = %58
  %66 = call float @llvm.fabs.f32(float %60)
  %67 = fpext float %66 to double
  %68 = fcmp olt double %67, 1.000000e-15
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = call float @llvm.fabs.f32(float %59)
  %71 = fpext float %70 to double
  %72 = fcmp olt double %71, 1.000000e-15
  br i1 %72, label %99, label %73

73:                                               ; preds = %69, %65, %58
  %74 = fsub float 1.000000e+00, %61
  %75 = fsub float 1.000000e+00, %60
  %76 = fsub float 1.000000e+00, %59
  %77 = fcmp olt float %75, %74
  %78 = select i1 %77, float %75, float %74
  %79 = fcmp olt float %76, %78
  %80 = select i1 %79, float %76, float %78
  %81 = fsub float %74, %80
  %82 = fpext float %81 to double
  %83 = fpext float %80 to double
  %84 = fsub double 1.000000e+00, %83
  %85 = fdiv double %82, %84
  %86 = fptrunc double %85 to float
  %87 = fsub float %75, %80
  %88 = fpext float %87 to double
  %89 = fdiv double %88, %84
  %90 = fptrunc double %89 to float
  %91 = fsub float %76, %80
  %92 = fpext float %91 to double
  %93 = fdiv double %92, %84
  %94 = fptrunc double %93 to float
  store i32 12, ptr %39, align 4, !tbaa !118
  %95 = fmul float %86, 6.553500e+04
  store float %95, ptr %23, align 8, !tbaa !76
  %96 = fmul float %90, 6.553500e+04
  store float %96, ptr %27, align 4, !tbaa !79
  %97 = fmul float %94, 6.553500e+04
  store float %97, ptr %30, align 8, !tbaa !80
  %98 = fmul float %80, 6.553500e+04
  br label %99

99:                                               ; preds = %69, %73
  %100 = phi float [ %98, %73 ], [ 6.553500e+04, %69 ]
  %101 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 9
  store float %100, ptr %101, align 8, !tbaa !119
  br label %102

102:                                              ; preds = %99, %18
  %103 = call ptr @AcquireAuthenticCacheView(ptr noundef %0, ptr noundef %6) #11
  %104 = icmp sgt i64 %3, 0
  br i1 %104, label %105, label %944

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %107 = uitofp i64 %3 to double
  %108 = fmul double %107, 5.000000e-01
  %109 = getelementptr inbounds i8, ptr %9, i64 48
  %110 = icmp sgt i64 %2, 0
  %111 = add i64 %4, %2
  %112 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 5
  %113 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 6
  %114 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 7
  %115 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 8
  %116 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 9
  %117 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 8
  %118 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 5
  %119 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 6
  %120 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 7
  %121 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 1
  %122 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 9
  %123 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 8
  %124 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 5
  %125 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 6
  %126 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 7
  %127 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 1
  %128 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 9
  %129 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 9
  %130 = icmp sgt i64 %2, 0
  %131 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 5
  %132 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 6
  %133 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 7
  %134 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 8
  %135 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 9
  %136 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 8
  %137 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 5
  %138 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 6
  %139 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 7
  %140 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 1
  %141 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 9
  %142 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 8
  %143 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 5
  %144 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 6
  %145 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 7
  %146 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 1
  %147 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 9
  %148 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 9
  %149 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %150 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %151 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %152

152:                                              ; preds = %105, %939
  %153 = phi i32 [ 1, %105 ], [ %941, %939 ]
  %154 = phi i64 [ 0, %105 ], [ %942, %939 ]
  %155 = phi i64 [ 0, %105 ], [ %940, %939 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %11) #11
  %156 = icmp eq i32 %153, 0
  br i1 %156, label %939, label %157

157:                                              ; preds = %152
  %158 = add nsw i64 %154, %5
  %159 = load i64, ptr %106, align 8, !tbaa !34
  %160 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %103, i64 noundef 0, i64 noundef %158, i64 noundef %159, i64 noundef 1, ptr noundef %6) #13
  %161 = icmp eq ptr %160, null
  br i1 %161, label %939, label %162

162:                                              ; preds = %157
  %163 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %103) #11
  %164 = getelementptr inbounds %struct._PixelPacket, ptr %160, i64 %4
  %165 = getelementptr inbounds i16, ptr %163, i64 %4
  %166 = sitofp i64 %154 to double
  %167 = fsub double %166, %108
  %168 = fptrunc double %167 to float
  %169 = fmul float %168, %1
  %170 = fcmp oeq float %169, 0.000000e+00
  br i1 %170, label %939, label %171

171:                                              ; preds = %162
  %172 = fcmp ule float %169, 0.000000e+00
  %173 = fneg float %169
  %174 = select i1 %172, float %173, float %169
  %175 = call float @llvm.floor.f32(float %174)
  %176 = fptosi float %175 to i64
  %177 = sitofp i64 %176 to float
  %178 = fsub float %174, %177
  %179 = add nsw i64 %176, 1
  %180 = load float, ptr %23, align 8, !tbaa.struct !120
  %181 = load float, ptr %27, align 4, !tbaa.struct !122
  %182 = load float, ptr %30, align 8, !tbaa.struct !123
  %183 = load float, ptr %34, align 4, !tbaa.struct !124
  %184 = load float, ptr %109, align 8, !tbaa.struct !125
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %10) #11
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %11) #11
  br i1 %172, label %185, label %570

185:                                              ; preds = %171
  %186 = icmp slt i64 %176, %4
  br i1 %186, label %187, label %925

187:                                              ; preds = %185
  %188 = xor i64 %176, -1
  %189 = getelementptr inbounds %struct._PixelPacket, ptr %164, i64 %188
  %190 = getelementptr inbounds i16, ptr %165, i64 %188
  br i1 %130, label %191, label %387

191:                                              ; preds = %187
  %192 = fpext float %178 to double
  %193 = fsub double 1.000000e+00, %192
  %194 = fneg double %193
  %195 = fneg float %178
  %196 = load i32, ptr %140, align 4
  %197 = icmp eq i32 %196, 12
  %198 = load float, ptr %135, align 8, !tbaa !119
  %199 = load float, ptr %141, align 8, !tbaa !119
  br label %200

200:                                              ; preds = %191, %369
  %201 = phi float [ %199, %191 ], [ %370, %369 ]
  %202 = phi float [ %198, %191 ], [ %371, %369 ]
  %203 = phi i64 [ 0, %191 ], [ %385, %369 ]
  %204 = phi ptr [ %189, %191 ], [ %383, %369 ]
  %205 = phi ptr [ %164, %191 ], [ %378, %369 ]
  %206 = phi ptr [ %190, %191 ], [ %384, %369 ]
  %207 = phi ptr [ %165, %191 ], [ %377, %369 ]
  %208 = phi float [ %180, %191 ], [ %379, %369 ]
  %209 = phi float [ %181, %191 ], [ %380, %369 ]
  %210 = phi float [ %182, %191 ], [ %381, %369 ]
  %211 = phi float [ %183, %191 ], [ %382, %369 ]
  %212 = phi float [ %184, %191 ], [ %372, %369 ]
  %213 = add nsw i64 %203, %4
  %214 = icmp sgt i64 %213, %176
  br i1 %214, label %227, label %215

215:                                              ; preds = %200
  %216 = getelementptr inbounds %struct._PixelPacket, ptr %205, i64 1
  %217 = getelementptr inbounds i16, ptr %207, i64 1
  %218 = getelementptr inbounds %struct._PixelPacket, ptr %205, i64 1, i32 2
  %219 = load i16, ptr %218, align 2, !tbaa !61
  %220 = getelementptr inbounds %struct._PixelPacket, ptr %205, i64 1, i32 1
  %221 = load i16, ptr %220, align 2, !tbaa !62
  %222 = load i16, ptr %216, align 2, !tbaa !63
  %223 = getelementptr inbounds %struct._PixelPacket, ptr %205, i64 1, i32 3
  %224 = load i16, ptr %223, align 2, !tbaa !82
  %225 = load i32, ptr %35, align 4, !tbaa !117
  %226 = icmp eq i32 %225, 12
  br i1 %226, label %357, label %369

227:                                              ; preds = %200
  %228 = getelementptr inbounds %struct._PixelPacket, ptr %205, i64 0, i32 2
  %229 = load i16, ptr %228, align 2, !tbaa !61
  %230 = uitofp i16 %229 to float
  store float %230, ptr %131, align 8, !tbaa !76
  %231 = getelementptr inbounds %struct._PixelPacket, ptr %205, i64 0, i32 1
  %232 = load i16, ptr %231, align 2, !tbaa !62
  %233 = uitofp i16 %232 to float
  store float %233, ptr %132, align 4, !tbaa !79
  %234 = load i16, ptr %205, align 2, !tbaa !63
  %235 = uitofp i16 %234 to float
  store float %235, ptr %133, align 8, !tbaa !80
  %236 = getelementptr inbounds %struct._PixelPacket, ptr %205, i64 0, i32 3
  %237 = load i16, ptr %236, align 2, !tbaa !82
  %238 = uitofp i16 %237 to float
  store float %238, ptr %134, align 4, !tbaa !81
  %239 = load i32, ptr %35, align 4, !tbaa !117
  %240 = icmp eq i32 %239, 12
  %241 = icmp ne ptr %207, null
  %242 = and i1 %241, %240
  br i1 %242, label %243, label %246

243:                                              ; preds = %227
  %244 = load i16, ptr %207, align 2, !tbaa !59
  %245 = uitofp i16 %244 to float
  store float %245, ptr %135, align 8, !tbaa !119
  br label %246

246:                                              ; preds = %227, %243
  %247 = phi float [ %202, %227 ], [ %245, %243 ]
  %248 = fsub float 6.553500e+04, %211
  %249 = fpext float %248 to double
  %250 = call double @llvm.fmuladd.f64(double %194, double %249, double 6.553500e+04)
  %251 = fptrunc double %250 to float
  %252 = fsub float 6.553500e+04, %238
  %253 = call float @llvm.fmuladd.f32(float %195, float %252, float 6.553500e+04)
  %254 = fpext float %251 to double
  %255 = call double @llvm.fmuladd.f64(double %254, double 0xBEF0001000100010, double 1.000000e+00)
  %256 = fptrunc double %255 to float
  %257 = fpext float %253 to double
  %258 = call double @llvm.fmuladd.f64(double %257, double 0xBEF0001000100010, double 1.000000e+00)
  %259 = fptrunc double %258 to float
  %260 = fadd float %256, %259
  %261 = fcmp olt float %260, 0.000000e+00
  %262 = fcmp ogt float %260, 1.000000e+00
  %263 = select i1 %262, float 1.000000e+00, float %260
  %264 = select i1 %261, float 0.000000e+00, float %263
  %265 = fpext float %264 to double
  %266 = fsub double 1.000000e+00, %265
  %267 = fmul double %266, 6.553500e+04
  %268 = fptrunc double %267 to float
  store float %268, ptr %136, align 4, !tbaa !81
  %269 = fcmp olt float %264, 0.000000e+00
  %270 = select i1 %269, double -1.000000e+00, double 1.000000e+00
  %271 = fmul double %270, %265
  %272 = fcmp ult double %271, 1.000000e-15
  %273 = fdiv double 1.000000e+00, %265
  %274 = fdiv double %270, 1.000000e-15
  %275 = select i1 %272, double %274, double %273
  %276 = fmul float %230, %259
  %277 = call float @llvm.fmuladd.f32(float %256, float %208, float %276)
  %278 = fpext float %277 to double
  %279 = fmul double %275, %278
  %280 = fptrunc double %279 to float
  store float %280, ptr %137, align 8, !tbaa !76
  %281 = fmul float %233, %259
  %282 = call float @llvm.fmuladd.f32(float %256, float %209, float %281)
  %283 = fpext float %282 to double
  %284 = fmul double %275, %283
  %285 = fptrunc double %284 to float
  store float %285, ptr %138, align 4, !tbaa !79
  %286 = fmul float %235, %259
  %287 = call float @llvm.fmuladd.f32(float %256, float %210, float %286)
  %288 = fpext float %287 to double
  %289 = fmul double %275, %288
  %290 = fptrunc double %289 to float
  store float %290, ptr %139, align 8, !tbaa !80
  br i1 %197, label %291, label %297

291:                                              ; preds = %246
  %292 = fmul float %247, %259
  %293 = call float @llvm.fmuladd.f32(float %256, float %212, float %292)
  %294 = fpext float %293 to double
  %295 = fmul double %275, %294
  %296 = fptrunc double %295 to float
  store float %296, ptr %141, align 8, !tbaa !119
  br label %297

297:                                              ; preds = %246, %291
  %298 = phi float [ %201, %246 ], [ %296, %291 ]
  %299 = fcmp ugt float %280, 0.000000e+00
  br i1 %299, label %300, label %305

300:                                              ; preds = %297
  %301 = fcmp ult float %280, 6.553500e+04
  br i1 %301, label %302, label %305

302:                                              ; preds = %300
  %303 = fadd float %280, 5.000000e-01
  %304 = fptoui float %303 to i16
  br label %305

305:                                              ; preds = %302, %300, %297
  %306 = phi i16 [ %304, %302 ], [ 0, %297 ], [ -1, %300 ]
  %307 = getelementptr inbounds %struct._PixelPacket, ptr %204, i64 0, i32 2
  store i16 %306, ptr %307, align 2, !tbaa !61
  %308 = fcmp ugt float %285, 0.000000e+00
  br i1 %308, label %309, label %314

309:                                              ; preds = %305
  %310 = fcmp ult float %285, 6.553500e+04
  br i1 %310, label %311, label %314

311:                                              ; preds = %309
  %312 = fadd float %285, 5.000000e-01
  %313 = fptoui float %312 to i16
  br label %314

314:                                              ; preds = %311, %309, %305
  %315 = phi i16 [ %313, %311 ], [ 0, %305 ], [ -1, %309 ]
  %316 = getelementptr inbounds %struct._PixelPacket, ptr %204, i64 0, i32 1
  store i16 %315, ptr %316, align 2, !tbaa !62
  %317 = fcmp ugt float %290, 0.000000e+00
  br i1 %317, label %318, label %323

318:                                              ; preds = %314
  %319 = fcmp ult float %290, 6.553500e+04
  br i1 %319, label %320, label %323

320:                                              ; preds = %318
  %321 = fadd float %290, 5.000000e-01
  %322 = fptoui float %321 to i16
  br label %323

323:                                              ; preds = %320, %318, %314
  %324 = phi i16 [ %322, %320 ], [ 0, %314 ], [ -1, %318 ]
  store i16 %324, ptr %204, align 2, !tbaa !63
  %325 = fcmp ugt float %268, 0.000000e+00
  br i1 %325, label %326, label %331

326:                                              ; preds = %323
  %327 = fcmp ult float %268, 6.553500e+04
  br i1 %327, label %328, label %331

328:                                              ; preds = %326
  %329 = fadd float %268, 5.000000e-01
  %330 = fptoui float %329 to i16
  br label %331

331:                                              ; preds = %328, %326, %323
  %332 = phi i16 [ %330, %328 ], [ 0, %323 ], [ -1, %326 ]
  %333 = getelementptr inbounds %struct._PixelPacket, ptr %204, i64 0, i32 3
  store i16 %332, ptr %333, align 2, !tbaa !82
  br i1 %240, label %339, label %334

334:                                              ; preds = %331
  %335 = load i32, ptr %0, align 8, !tbaa !126
  %336 = icmp eq i32 %335, 2
  %337 = icmp ne ptr %206, null
  %338 = and i1 %337, %336
  br i1 %338, label %341, label %350

339:                                              ; preds = %331
  %340 = icmp eq ptr %206, null
  br i1 %340, label %350, label %341

341:                                              ; preds = %339, %334
  %342 = fcmp ugt float %298, 0.000000e+00
  br i1 %342, label %343, label %348

343:                                              ; preds = %341
  %344 = fcmp ult float %298, 6.553500e+04
  br i1 %344, label %345, label %348

345:                                              ; preds = %343
  %346 = fadd float %298, 5.000000e-01
  %347 = fptoui float %346 to i16
  br label %348

348:                                              ; preds = %345, %343, %341
  %349 = phi i16 [ %347, %345 ], [ 0, %341 ], [ -1, %343 ]
  store i16 %349, ptr %206, align 2, !tbaa !59
  br label %350

350:                                              ; preds = %334, %339, %348
  %351 = getelementptr inbounds %struct._PixelPacket, ptr %205, i64 1
  %352 = getelementptr inbounds i16, ptr %207, i64 1
  %353 = load i16, ptr %228, align 2, !tbaa !61
  %354 = load i16, ptr %231, align 2, !tbaa !62
  %355 = load i16, ptr %205, align 2, !tbaa !63
  %356 = load i16, ptr %236, align 2, !tbaa !82
  br i1 %242, label %357, label %369

357:                                              ; preds = %350, %215
  %358 = phi ptr [ %217, %215 ], [ %207, %350 ]
  %359 = phi float [ %201, %215 ], [ %298, %350 ]
  %360 = phi float [ %202, %215 ], [ %247, %350 ]
  %361 = phi i16 [ %224, %215 ], [ %356, %350 ]
  %362 = phi i16 [ %222, %215 ], [ %355, %350 ]
  %363 = phi i16 [ %221, %215 ], [ %354, %350 ]
  %364 = phi i16 [ %219, %215 ], [ %353, %350 ]
  %365 = phi ptr [ %217, %215 ], [ %352, %350 ]
  %366 = phi ptr [ %216, %215 ], [ %351, %350 ]
  %367 = load i16, ptr %358, align 2, !tbaa !59
  %368 = uitofp i16 %367 to float
  br label %369

369:                                              ; preds = %357, %350, %215
  %370 = phi float [ %201, %215 ], [ %298, %350 ], [ %359, %357 ]
  %371 = phi float [ %202, %215 ], [ %247, %350 ], [ %360, %357 ]
  %372 = phi float [ %212, %215 ], [ %212, %350 ], [ %368, %357 ]
  %373 = phi i16 [ %224, %215 ], [ %356, %350 ], [ %361, %357 ]
  %374 = phi i16 [ %222, %215 ], [ %355, %350 ], [ %362, %357 ]
  %375 = phi i16 [ %221, %215 ], [ %354, %350 ], [ %363, %357 ]
  %376 = phi i16 [ %219, %215 ], [ %353, %350 ], [ %364, %357 ]
  %377 = phi ptr [ %217, %215 ], [ %352, %350 ], [ %365, %357 ]
  %378 = phi ptr [ %216, %215 ], [ %351, %350 ], [ %366, %357 ]
  %379 = uitofp i16 %376 to float
  %380 = uitofp i16 %375 to float
  %381 = uitofp i16 %374 to float
  %382 = uitofp i16 %373 to float
  %383 = getelementptr inbounds %struct._PixelPacket, ptr %204, i64 1
  %384 = getelementptr inbounds i16, ptr %206, i64 1
  %385 = add nuw nsw i64 %203, 1
  %386 = icmp eq i64 %385, %2
  br i1 %386, label %387, label %200, !llvm.loop !127

387:                                              ; preds = %369, %187
  %388 = phi float [ %184, %187 ], [ %372, %369 ]
  %389 = phi float [ %183, %187 ], [ %382, %369 ]
  %390 = phi float [ %182, %187 ], [ %381, %369 ]
  %391 = phi float [ %181, %187 ], [ %380, %369 ]
  %392 = phi float [ %180, %187 ], [ %379, %369 ]
  %393 = phi ptr [ %190, %187 ], [ %384, %369 ]
  %394 = phi ptr [ %189, %187 ], [ %383, %369 ]
  %395 = load float, ptr %34, align 4, !tbaa !81
  %396 = fpext float %178 to double
  %397 = fsub double 1.000000e+00, %396
  %398 = fsub float 6.553500e+04, %389
  %399 = fpext float %398 to double
  %400 = fneg double %397
  %401 = call double @llvm.fmuladd.f64(double %400, double %399, double 6.553500e+04)
  %402 = fptrunc double %401 to float
  %403 = fsub float 6.553500e+04, %395
  %404 = fneg float %178
  %405 = call float @llvm.fmuladd.f32(float %404, float %403, float 6.553500e+04)
  %406 = fpext float %402 to double
  %407 = call double @llvm.fmuladd.f64(double %406, double 0xBEF0001000100010, double 1.000000e+00)
  %408 = fptrunc double %407 to float
  %409 = fpext float %405 to double
  %410 = call double @llvm.fmuladd.f64(double %409, double 0xBEF0001000100010, double 1.000000e+00)
  %411 = fptrunc double %410 to float
  %412 = fadd float %408, %411
  %413 = fcmp olt float %412, 0.000000e+00
  %414 = fcmp ogt float %412, 1.000000e+00
  %415 = select i1 %414, float 1.000000e+00, float %412
  %416 = select i1 %413, float 0.000000e+00, float %415
  %417 = fpext float %416 to double
  %418 = fsub double 1.000000e+00, %417
  %419 = fmul double %418, 6.553500e+04
  %420 = fptrunc double %419 to float
  store float %420, ptr %142, align 4, !tbaa !81
  %421 = fcmp olt float %416, 0.000000e+00
  %422 = select i1 %421, double -1.000000e+00, double 1.000000e+00
  %423 = fmul double %422, %417
  %424 = fcmp ult double %423, 1.000000e-15
  %425 = fdiv double 1.000000e+00, %417
  %426 = fdiv double %422, 1.000000e-15
  %427 = select i1 %424, double %426, double %425
  %428 = load float, ptr %23, align 8, !tbaa !76
  %429 = fmul float %428, %411
  %430 = call float @llvm.fmuladd.f32(float %408, float %392, float %429)
  %431 = fpext float %430 to double
  %432 = fmul double %427, %431
  %433 = fptrunc double %432 to float
  store float %433, ptr %143, align 8, !tbaa !76
  %434 = load float, ptr %27, align 4, !tbaa !79
  %435 = fmul float %434, %411
  %436 = call float @llvm.fmuladd.f32(float %408, float %391, float %435)
  %437 = fpext float %436 to double
  %438 = fmul double %427, %437
  %439 = fptrunc double %438 to float
  store float %439, ptr %144, align 4, !tbaa !79
  %440 = load float, ptr %30, align 8, !tbaa !80
  %441 = fmul float %440, %411
  %442 = call float @llvm.fmuladd.f32(float %408, float %390, float %441)
  %443 = fpext float %442 to double
  %444 = fmul double %427, %443
  %445 = fptrunc double %444 to float
  store float %445, ptr %145, align 8, !tbaa !80
  %446 = load i32, ptr %146, align 4, !tbaa !118
  %447 = icmp eq i32 %446, 12
  br i1 %447, label %448, label %455

448:                                              ; preds = %387
  %449 = load float, ptr %109, align 8, !tbaa !119
  %450 = fmul float %449, %411
  %451 = call float @llvm.fmuladd.f32(float %408, float %388, float %450)
  %452 = fpext float %451 to double
  %453 = fmul double %427, %452
  %454 = fptrunc double %453 to float
  store float %454, ptr %147, align 8, !tbaa !119
  br label %455

455:                                              ; preds = %387, %448
  %456 = fcmp ugt float %433, 0.000000e+00
  br i1 %456, label %457, label %462

457:                                              ; preds = %455
  %458 = fcmp ult float %433, 6.553500e+04
  br i1 %458, label %459, label %462

459:                                              ; preds = %457
  %460 = fadd float %433, 5.000000e-01
  %461 = fptoui float %460 to i16
  br label %462

462:                                              ; preds = %459, %457, %455
  %463 = phi i16 [ %461, %459 ], [ 0, %455 ], [ -1, %457 ]
  %464 = getelementptr inbounds %struct._PixelPacket, ptr %394, i64 0, i32 2
  store i16 %463, ptr %464, align 2, !tbaa !61
  %465 = fcmp ugt float %439, 0.000000e+00
  br i1 %465, label %466, label %471

466:                                              ; preds = %462
  %467 = fcmp ult float %439, 6.553500e+04
  br i1 %467, label %468, label %471

468:                                              ; preds = %466
  %469 = fadd float %439, 5.000000e-01
  %470 = fptoui float %469 to i16
  br label %471

471:                                              ; preds = %468, %466, %462
  %472 = phi i16 [ %470, %468 ], [ 0, %462 ], [ -1, %466 ]
  %473 = getelementptr inbounds %struct._PixelPacket, ptr %394, i64 0, i32 1
  store i16 %472, ptr %473, align 2, !tbaa !62
  %474 = fcmp ugt float %445, 0.000000e+00
  br i1 %474, label %475, label %480

475:                                              ; preds = %471
  %476 = fcmp ult float %445, 6.553500e+04
  br i1 %476, label %477, label %480

477:                                              ; preds = %475
  %478 = fadd float %445, 5.000000e-01
  %479 = fptoui float %478 to i16
  br label %480

480:                                              ; preds = %477, %475, %471
  %481 = phi i16 [ %479, %477 ], [ 0, %471 ], [ -1, %475 ]
  store i16 %481, ptr %394, align 2, !tbaa !63
  %482 = fcmp ugt float %420, 0.000000e+00
  br i1 %482, label %483, label %488

483:                                              ; preds = %480
  %484 = fcmp ult float %420, 6.553500e+04
  br i1 %484, label %485, label %488

485:                                              ; preds = %483
  %486 = fadd float %420, 5.000000e-01
  %487 = fptoui float %486 to i16
  br label %488

488:                                              ; preds = %485, %483, %480
  %489 = phi i16 [ %487, %485 ], [ 0, %480 ], [ -1, %483 ]
  %490 = getelementptr inbounds %struct._PixelPacket, ptr %394, i64 0, i32 3
  store i16 %489, ptr %490, align 2, !tbaa !82
  %491 = load i32, ptr %35, align 4, !tbaa !117
  %492 = icmp eq i32 %491, 12
  br i1 %492, label %498, label %493

493:                                              ; preds = %488
  %494 = load i32, ptr %0, align 8, !tbaa !126
  %495 = icmp eq i32 %494, 2
  %496 = icmp ne ptr %393, null
  %497 = and i1 %496, %495
  br i1 %497, label %500, label %510

498:                                              ; preds = %488
  %499 = icmp eq ptr %393, null
  br i1 %499, label %510, label %500

500:                                              ; preds = %498, %493
  %501 = load float, ptr %148, align 8, !tbaa !119
  %502 = fcmp ugt float %501, 0.000000e+00
  br i1 %502, label %503, label %508

503:                                              ; preds = %500
  %504 = fcmp ult float %501, 6.553500e+04
  br i1 %504, label %505, label %508

505:                                              ; preds = %503
  %506 = fadd float %501, 5.000000e-01
  %507 = fptoui float %506 to i16
  br label %508

508:                                              ; preds = %505, %503, %500
  %509 = phi i16 [ %507, %505 ], [ 0, %500 ], [ -1, %503 ]
  store i16 %509, ptr %393, align 2, !tbaa !59
  br label %510

510:                                              ; preds = %493, %498, %508
  %511 = icmp sgt i64 %176, 0
  br i1 %511, label %512, label %925

512:                                              ; preds = %510
  %513 = fcmp ole float %428, 0.000000e+00
  %514 = fcmp oge float %428, 6.553500e+04
  %515 = fadd float %428, 5.000000e-01
  %516 = fptoui float %515 to i16
  %517 = fcmp ole float %434, 0.000000e+00
  %518 = fcmp oge float %434, 6.553500e+04
  %519 = fadd float %434, 5.000000e-01
  %520 = fptoui float %519 to i16
  %521 = fcmp ole float %440, 0.000000e+00
  %522 = fcmp oge float %440, 6.553500e+04
  %523 = fadd float %440, 5.000000e-01
  %524 = fptoui float %523 to i16
  %525 = fcmp ole float %395, 0.000000e+00
  %526 = fcmp oge float %395, 6.553500e+04
  %527 = fadd float %395, 5.000000e-01
  %528 = fptoui float %527 to i16
  %529 = load float, ptr %109, align 8
  %530 = fcmp ole float %529, 0.000000e+00
  %531 = fcmp oge float %529, 6.553500e+04
  %532 = fadd float %529, 5.000000e-01
  %533 = fptoui float %532 to i16
  %534 = or i1 %513, %514
  %535 = xor i1 %513, true
  %536 = sext i1 %535 to i16
  %537 = select i1 %534, i16 %536, i16 %516
  %538 = or i1 %517, %518
  %539 = xor i1 %517, true
  %540 = sext i1 %539 to i16
  %541 = select i1 %538, i16 %540, i16 %520
  %542 = or i1 %521, %522
  %543 = xor i1 %521, true
  %544 = sext i1 %543 to i16
  %545 = select i1 %542, i16 %544, i16 %524
  %546 = or i1 %525, %526
  %547 = xor i1 %525, true
  %548 = sext i1 %547 to i16
  %549 = select i1 %546, i16 %548, i16 %528
  %550 = or i1 %530, %531
  %551 = xor i1 %530, true
  %552 = sext i1 %551 to i16
  %553 = select i1 %550, i16 %552, i16 %533
  br label %554

554:                                              ; preds = %512, %567
  %555 = phi i64 [ 0, %512 ], [ %568, %567 ]
  %556 = phi ptr [ %394, %512 ], [ %559, %567 ]
  %557 = phi ptr [ %393, %512 ], [ %558, %567 ]
  %558 = getelementptr inbounds i16, ptr %557, i64 1
  %559 = getelementptr inbounds %struct._PixelPacket, ptr %556, i64 1
  %560 = getelementptr inbounds %struct._PixelPacket, ptr %556, i64 1, i32 2
  store i16 %537, ptr %560, align 2, !tbaa !61
  %561 = getelementptr inbounds %struct._PixelPacket, ptr %556, i64 1, i32 1
  store i16 %541, ptr %561, align 2, !tbaa !62
  store i16 %545, ptr %559, align 2, !tbaa !63
  %562 = getelementptr inbounds %struct._PixelPacket, ptr %556, i64 1, i32 3
  store i16 %549, ptr %562, align 2, !tbaa !82
  br i1 %492, label %566, label %563

563:                                              ; preds = %554
  %564 = load i32, ptr %0, align 8, !tbaa !126
  %565 = icmp eq i32 %564, 2
  br i1 %565, label %566, label %567

566:                                              ; preds = %554, %563
  store i16 %553, ptr %558, align 2, !tbaa !59
  br label %567

567:                                              ; preds = %563, %566
  %568 = add nuw nsw i64 %555, 1
  %569 = icmp eq i64 %568, %176
  br i1 %569, label %925, label %554, !llvm.loop !128

570:                                              ; preds = %171
  %571 = getelementptr inbounds %struct._PixelPacket, ptr %164, i64 %2
  %572 = getelementptr inbounds i16, ptr %165, i64 %2
  %573 = getelementptr inbounds %struct._PixelPacket, ptr %571, i64 %179
  %574 = getelementptr inbounds i16, ptr %572, i64 %179
  br i1 %110, label %575, label %744

575:                                              ; preds = %570
  %576 = add i64 %111, %179
  %577 = load i64, ptr %106, align 8, !tbaa !34
  %578 = fpext float %178 to double
  %579 = fsub double 1.000000e+00, %578
  %580 = fneg double %579
  %581 = fneg float %178
  %582 = load i32, ptr %121, align 4
  %583 = icmp eq i32 %582, 12
  %584 = load float, ptr %116, align 8, !tbaa !119
  %585 = load float, ptr %122, align 8, !tbaa !119
  br label %586

586:                                              ; preds = %575, %734
  %587 = phi float [ %585, %575 ], [ %735, %734 ]
  %588 = phi float [ %584, %575 ], [ %736, %734 ]
  %589 = phi i64 [ 0, %575 ], [ %742, %734 ]
  %590 = phi ptr [ %573, %575 ], [ %601, %734 ]
  %591 = phi ptr [ %571, %575 ], [ %599, %734 ]
  %592 = phi ptr [ %574, %575 ], [ %602, %734 ]
  %593 = phi ptr [ %572, %575 ], [ %600, %734 ]
  %594 = phi float [ %180, %575 ], [ %741, %734 ]
  %595 = phi float [ %181, %575 ], [ %740, %734 ]
  %596 = phi float [ %182, %575 ], [ %739, %734 ]
  %597 = phi float [ %183, %575 ], [ %738, %734 ]
  %598 = phi float [ %184, %575 ], [ %737, %734 ]
  %599 = getelementptr inbounds %struct._PixelPacket, ptr %591, i64 -1
  %600 = getelementptr inbounds i16, ptr %593, i64 -1
  %601 = getelementptr inbounds %struct._PixelPacket, ptr %590, i64 -1
  %602 = getelementptr inbounds i16, ptr %592, i64 -1
  %603 = sub i64 %576, %589
  %604 = icmp ugt i64 %603, %577
  br i1 %604, label %734, label %605

605:                                              ; preds = %586
  %606 = getelementptr %struct._PixelPacket, ptr %591, i64 -1, i32 2
  %607 = load i16, ptr %606, align 2, !tbaa !61
  %608 = uitofp i16 %607 to float
  store float %608, ptr %112, align 8, !tbaa !76
  %609 = getelementptr %struct._PixelPacket, ptr %591, i64 -1, i32 1
  %610 = load i16, ptr %609, align 2, !tbaa !62
  %611 = uitofp i16 %610 to float
  store float %611, ptr %113, align 4, !tbaa !79
  %612 = load i16, ptr %599, align 2, !tbaa !63
  %613 = uitofp i16 %612 to float
  store float %613, ptr %114, align 8, !tbaa !80
  %614 = getelementptr %struct._PixelPacket, ptr %591, i64 -1, i32 3
  %615 = load i16, ptr %614, align 2, !tbaa !82
  %616 = uitofp i16 %615 to float
  store float %616, ptr %115, align 4, !tbaa !81
  %617 = load i32, ptr %35, align 4, !tbaa !117
  %618 = icmp eq i32 %617, 12
  br i1 %618, label %619, label %622

619:                                              ; preds = %605
  %620 = load i16, ptr %600, align 2, !tbaa !59
  %621 = uitofp i16 %620 to float
  store float %621, ptr %116, align 8, !tbaa !119
  br label %622

622:                                              ; preds = %605, %619
  %623 = phi float [ %588, %605 ], [ %621, %619 ]
  %624 = fsub float 6.553500e+04, %597
  %625 = fpext float %624 to double
  %626 = call double @llvm.fmuladd.f64(double %580, double %625, double 6.553500e+04)
  %627 = fptrunc double %626 to float
  %628 = fsub float 6.553500e+04, %616
  %629 = call float @llvm.fmuladd.f32(float %581, float %628, float 6.553500e+04)
  %630 = fpext float %627 to double
  %631 = call double @llvm.fmuladd.f64(double %630, double 0xBEF0001000100010, double 1.000000e+00)
  %632 = fptrunc double %631 to float
  %633 = fpext float %629 to double
  %634 = call double @llvm.fmuladd.f64(double %633, double 0xBEF0001000100010, double 1.000000e+00)
  %635 = fptrunc double %634 to float
  %636 = fadd float %632, %635
  %637 = fcmp olt float %636, 0.000000e+00
  %638 = fcmp ogt float %636, 1.000000e+00
  %639 = select i1 %638, float 1.000000e+00, float %636
  %640 = select i1 %637, float 0.000000e+00, float %639
  %641 = fpext float %640 to double
  %642 = fsub double 1.000000e+00, %641
  %643 = fmul double %642, 6.553500e+04
  %644 = fptrunc double %643 to float
  store float %644, ptr %117, align 4, !tbaa !81
  %645 = fcmp olt float %640, 0.000000e+00
  %646 = select i1 %645, double -1.000000e+00, double 1.000000e+00
  %647 = fmul double %646, %641
  %648 = fcmp ult double %647, 1.000000e-15
  %649 = fdiv double 1.000000e+00, %641
  %650 = fdiv double %646, 1.000000e-15
  %651 = select i1 %648, double %650, double %649
  %652 = fmul float %608, %635
  %653 = call float @llvm.fmuladd.f32(float %632, float %594, float %652)
  %654 = fpext float %653 to double
  %655 = fmul double %651, %654
  %656 = fptrunc double %655 to float
  store float %656, ptr %118, align 8, !tbaa !76
  %657 = fmul float %611, %635
  %658 = call float @llvm.fmuladd.f32(float %632, float %595, float %657)
  %659 = fpext float %658 to double
  %660 = fmul double %651, %659
  %661 = fptrunc double %660 to float
  store float %661, ptr %119, align 4, !tbaa !79
  %662 = fmul float %613, %635
  %663 = call float @llvm.fmuladd.f32(float %632, float %596, float %662)
  %664 = fpext float %663 to double
  %665 = fmul double %651, %664
  %666 = fptrunc double %665 to float
  store float %666, ptr %120, align 8, !tbaa !80
  br i1 %583, label %667, label %673

667:                                              ; preds = %622
  %668 = fmul float %623, %635
  %669 = call float @llvm.fmuladd.f32(float %632, float %598, float %668)
  %670 = fpext float %669 to double
  %671 = fmul double %651, %670
  %672 = fptrunc double %671 to float
  store float %672, ptr %122, align 8, !tbaa !119
  br label %673

673:                                              ; preds = %622, %667
  %674 = phi float [ %587, %622 ], [ %672, %667 ]
  %675 = fcmp ugt float %656, 0.000000e+00
  br i1 %675, label %676, label %681

676:                                              ; preds = %673
  %677 = fcmp ult float %656, 6.553500e+04
  br i1 %677, label %678, label %681

678:                                              ; preds = %676
  %679 = fadd float %656, 5.000000e-01
  %680 = fptoui float %679 to i16
  br label %681

681:                                              ; preds = %678, %676, %673
  %682 = phi i16 [ %680, %678 ], [ 0, %673 ], [ -1, %676 ]
  %683 = getelementptr %struct._PixelPacket, ptr %590, i64 -1, i32 2
  store i16 %682, ptr %683, align 2, !tbaa !61
  %684 = fcmp ugt float %661, 0.000000e+00
  br i1 %684, label %685, label %690

685:                                              ; preds = %681
  %686 = fcmp ult float %661, 6.553500e+04
  br i1 %686, label %687, label %690

687:                                              ; preds = %685
  %688 = fadd float %661, 5.000000e-01
  %689 = fptoui float %688 to i16
  br label %690

690:                                              ; preds = %687, %685, %681
  %691 = phi i16 [ %689, %687 ], [ 0, %681 ], [ -1, %685 ]
  %692 = getelementptr %struct._PixelPacket, ptr %590, i64 -1, i32 1
  store i16 %691, ptr %692, align 2, !tbaa !62
  %693 = fcmp ugt float %666, 0.000000e+00
  br i1 %693, label %694, label %699

694:                                              ; preds = %690
  %695 = fcmp ult float %666, 6.553500e+04
  br i1 %695, label %696, label %699

696:                                              ; preds = %694
  %697 = fadd float %666, 5.000000e-01
  %698 = fptoui float %697 to i16
  br label %699

699:                                              ; preds = %696, %694, %690
  %700 = phi i16 [ %698, %696 ], [ 0, %690 ], [ -1, %694 ]
  store i16 %700, ptr %601, align 2, !tbaa !63
  %701 = fcmp ugt float %644, 0.000000e+00
  br i1 %701, label %702, label %707

702:                                              ; preds = %699
  %703 = fcmp ult float %644, 6.553500e+04
  br i1 %703, label %704, label %707

704:                                              ; preds = %702
  %705 = fadd float %644, 5.000000e-01
  %706 = fptoui float %705 to i16
  br label %707

707:                                              ; preds = %704, %702, %699
  %708 = phi i16 [ %706, %704 ], [ 0, %699 ], [ -1, %702 ]
  %709 = getelementptr %struct._PixelPacket, ptr %590, i64 -1, i32 3
  store i16 %708, ptr %709, align 2, !tbaa !82
  br i1 %618, label %713, label %710

710:                                              ; preds = %707
  %711 = load i32, ptr %0, align 8, !tbaa !126
  %712 = icmp eq i32 %711, 2
  br i1 %712, label %713, label %722

713:                                              ; preds = %707, %710
  %714 = fcmp ugt float %674, 0.000000e+00
  br i1 %714, label %715, label %720

715:                                              ; preds = %713
  %716 = fcmp ult float %674, 6.553500e+04
  br i1 %716, label %717, label %720

717:                                              ; preds = %715
  %718 = fadd float %674, 5.000000e-01
  %719 = fptoui float %718 to i16
  br label %720

720:                                              ; preds = %717, %715, %713
  %721 = phi i16 [ %719, %717 ], [ 0, %713 ], [ -1, %715 ]
  store i16 %721, ptr %602, align 2, !tbaa !59
  br label %722

722:                                              ; preds = %710, %720
  %723 = load i16, ptr %606, align 2, !tbaa !61
  %724 = uitofp i16 %723 to float
  %725 = load i16, ptr %609, align 2, !tbaa !62
  %726 = uitofp i16 %725 to float
  %727 = load i16, ptr %599, align 2, !tbaa !63
  %728 = uitofp i16 %727 to float
  %729 = load i16, ptr %614, align 2, !tbaa !82
  %730 = uitofp i16 %729 to float
  br i1 %618, label %731, label %734

731:                                              ; preds = %722
  %732 = load i16, ptr %600, align 2, !tbaa !59
  %733 = uitofp i16 %732 to float
  br label %734

734:                                              ; preds = %731, %722, %586
  %735 = phi float [ %587, %586 ], [ %674, %731 ], [ %674, %722 ]
  %736 = phi float [ %588, %586 ], [ %623, %731 ], [ %623, %722 ]
  %737 = phi float [ %598, %586 ], [ %733, %731 ], [ %598, %722 ]
  %738 = phi float [ %597, %586 ], [ %730, %731 ], [ %730, %722 ]
  %739 = phi float [ %596, %586 ], [ %728, %731 ], [ %728, %722 ]
  %740 = phi float [ %595, %586 ], [ %726, %731 ], [ %726, %722 ]
  %741 = phi float [ %594, %586 ], [ %724, %731 ], [ %724, %722 ]
  %742 = add nuw nsw i64 %589, 1
  %743 = icmp eq i64 %742, %2
  br i1 %743, label %744, label %586, !llvm.loop !129

744:                                              ; preds = %734, %570
  %745 = phi float [ %184, %570 ], [ %737, %734 ]
  %746 = phi float [ %183, %570 ], [ %738, %734 ]
  %747 = phi float [ %182, %570 ], [ %739, %734 ]
  %748 = phi float [ %181, %570 ], [ %740, %734 ]
  %749 = phi float [ %180, %570 ], [ %741, %734 ]
  %750 = phi ptr [ %574, %570 ], [ %602, %734 ]
  %751 = phi ptr [ %573, %570 ], [ %601, %734 ]
  %752 = load float, ptr %34, align 4, !tbaa !81
  %753 = fpext float %178 to double
  %754 = fsub double 1.000000e+00, %753
  %755 = fsub float 6.553500e+04, %746
  %756 = fpext float %755 to double
  %757 = fneg double %754
  %758 = call double @llvm.fmuladd.f64(double %757, double %756, double 6.553500e+04)
  %759 = fptrunc double %758 to float
  %760 = fsub float 6.553500e+04, %752
  %761 = fneg float %178
  %762 = call float @llvm.fmuladd.f32(float %761, float %760, float 6.553500e+04)
  %763 = fpext float %759 to double
  %764 = call double @llvm.fmuladd.f64(double %763, double 0xBEF0001000100010, double 1.000000e+00)
  %765 = fptrunc double %764 to float
  %766 = fpext float %762 to double
  %767 = call double @llvm.fmuladd.f64(double %766, double 0xBEF0001000100010, double 1.000000e+00)
  %768 = fptrunc double %767 to float
  %769 = fadd float %765, %768
  %770 = fcmp olt float %769, 0.000000e+00
  %771 = fcmp ogt float %769, 1.000000e+00
  %772 = select i1 %771, float 1.000000e+00, float %769
  %773 = select i1 %770, float 0.000000e+00, float %772
  %774 = fpext float %773 to double
  %775 = fsub double 1.000000e+00, %774
  %776 = fmul double %775, 6.553500e+04
  %777 = fptrunc double %776 to float
  store float %777, ptr %123, align 4, !tbaa !81
  %778 = fcmp olt float %773, 0.000000e+00
  %779 = select i1 %778, double -1.000000e+00, double 1.000000e+00
  %780 = fmul double %779, %774
  %781 = fcmp ult double %780, 1.000000e-15
  %782 = fdiv double 1.000000e+00, %774
  %783 = fdiv double %779, 1.000000e-15
  %784 = select i1 %781, double %783, double %782
  %785 = load float, ptr %23, align 8, !tbaa !76
  %786 = fmul float %785, %768
  %787 = call float @llvm.fmuladd.f32(float %765, float %749, float %786)
  %788 = fpext float %787 to double
  %789 = fmul double %784, %788
  %790 = fptrunc double %789 to float
  store float %790, ptr %124, align 8, !tbaa !76
  %791 = load float, ptr %27, align 4, !tbaa !79
  %792 = fmul float %791, %768
  %793 = call float @llvm.fmuladd.f32(float %765, float %748, float %792)
  %794 = fpext float %793 to double
  %795 = fmul double %784, %794
  %796 = fptrunc double %795 to float
  store float %796, ptr %125, align 4, !tbaa !79
  %797 = load float, ptr %30, align 8, !tbaa !80
  %798 = fmul float %797, %768
  %799 = call float @llvm.fmuladd.f32(float %765, float %747, float %798)
  %800 = fpext float %799 to double
  %801 = fmul double %784, %800
  %802 = fptrunc double %801 to float
  store float %802, ptr %126, align 8, !tbaa !80
  %803 = load i32, ptr %127, align 4, !tbaa !118
  %804 = icmp eq i32 %803, 12
  br i1 %804, label %805, label %812

805:                                              ; preds = %744
  %806 = load float, ptr %109, align 8, !tbaa !119
  %807 = fmul float %806, %768
  %808 = call float @llvm.fmuladd.f32(float %765, float %745, float %807)
  %809 = fpext float %808 to double
  %810 = fmul double %784, %809
  %811 = fptrunc double %810 to float
  store float %811, ptr %128, align 8, !tbaa !119
  br label %812

812:                                              ; preds = %744, %805
  %813 = getelementptr inbounds %struct._PixelPacket, ptr %751, i64 -1
  %814 = getelementptr inbounds i16, ptr %750, i64 -1
  %815 = fcmp ugt float %790, 0.000000e+00
  br i1 %815, label %816, label %821

816:                                              ; preds = %812
  %817 = fcmp ult float %790, 6.553500e+04
  br i1 %817, label %818, label %821

818:                                              ; preds = %816
  %819 = fadd float %790, 5.000000e-01
  %820 = fptoui float %819 to i16
  br label %821

821:                                              ; preds = %818, %816, %812
  %822 = phi i16 [ %820, %818 ], [ 0, %812 ], [ -1, %816 ]
  %823 = getelementptr %struct._PixelPacket, ptr %751, i64 -1, i32 2
  store i16 %822, ptr %823, align 2, !tbaa !61
  %824 = fcmp ugt float %796, 0.000000e+00
  br i1 %824, label %825, label %830

825:                                              ; preds = %821
  %826 = fcmp ult float %796, 6.553500e+04
  br i1 %826, label %827, label %830

827:                                              ; preds = %825
  %828 = fadd float %796, 5.000000e-01
  %829 = fptoui float %828 to i16
  br label %830

830:                                              ; preds = %827, %825, %821
  %831 = phi i16 [ %829, %827 ], [ 0, %821 ], [ -1, %825 ]
  %832 = getelementptr %struct._PixelPacket, ptr %751, i64 -1, i32 1
  store i16 %831, ptr %832, align 2, !tbaa !62
  %833 = fcmp ugt float %802, 0.000000e+00
  br i1 %833, label %834, label %839

834:                                              ; preds = %830
  %835 = fcmp ult float %802, 6.553500e+04
  br i1 %835, label %836, label %839

836:                                              ; preds = %834
  %837 = fadd float %802, 5.000000e-01
  %838 = fptoui float %837 to i16
  br label %839

839:                                              ; preds = %836, %834, %830
  %840 = phi i16 [ %838, %836 ], [ 0, %830 ], [ -1, %834 ]
  store i16 %840, ptr %813, align 2, !tbaa !63
  %841 = fcmp ugt float %777, 0.000000e+00
  br i1 %841, label %842, label %847

842:                                              ; preds = %839
  %843 = fcmp ult float %777, 6.553500e+04
  br i1 %843, label %844, label %847

844:                                              ; preds = %842
  %845 = fadd float %777, 5.000000e-01
  %846 = fptoui float %845 to i16
  br label %847

847:                                              ; preds = %844, %842, %839
  %848 = phi i16 [ %846, %844 ], [ 0, %839 ], [ -1, %842 ]
  %849 = getelementptr %struct._PixelPacket, ptr %751, i64 -1, i32 3
  store i16 %848, ptr %849, align 2, !tbaa !82
  %850 = load i32, ptr %35, align 4, !tbaa !117
  %851 = icmp eq i32 %850, 12
  br i1 %851, label %855, label %852

852:                                              ; preds = %847
  %853 = load i32, ptr %0, align 8, !tbaa !126
  %854 = icmp eq i32 %853, 2
  br i1 %854, label %855, label %865

855:                                              ; preds = %847, %852
  %856 = load float, ptr %129, align 8, !tbaa !119
  %857 = fcmp ugt float %856, 0.000000e+00
  br i1 %857, label %858, label %863

858:                                              ; preds = %855
  %859 = fcmp ult float %856, 6.553500e+04
  br i1 %859, label %860, label %863

860:                                              ; preds = %858
  %861 = fadd float %856, 5.000000e-01
  %862 = fptoui float %861 to i16
  br label %863

863:                                              ; preds = %860, %858, %855
  %864 = phi i16 [ %862, %860 ], [ 0, %855 ], [ -1, %858 ]
  store i16 %864, ptr %814, align 2, !tbaa !59
  br label %865

865:                                              ; preds = %852, %863
  %866 = icmp sgt i64 %176, 0
  br i1 %866, label %867, label %925

867:                                              ; preds = %865
  %868 = fcmp ole float %785, 0.000000e+00
  %869 = fcmp oge float %785, 6.553500e+04
  %870 = fadd float %785, 5.000000e-01
  %871 = fptoui float %870 to i16
  %872 = fcmp ole float %791, 0.000000e+00
  %873 = fcmp oge float %791, 6.553500e+04
  %874 = fadd float %791, 5.000000e-01
  %875 = fptoui float %874 to i16
  %876 = fcmp ole float %797, 0.000000e+00
  %877 = fcmp oge float %797, 6.553500e+04
  %878 = fadd float %797, 5.000000e-01
  %879 = fptoui float %878 to i16
  %880 = fcmp ole float %752, 0.000000e+00
  %881 = fcmp oge float %752, 6.553500e+04
  %882 = fadd float %752, 5.000000e-01
  %883 = fptoui float %882 to i16
  %884 = load float, ptr %109, align 8
  %885 = fcmp ole float %884, 0.000000e+00
  %886 = fcmp oge float %884, 6.553500e+04
  %887 = fadd float %884, 5.000000e-01
  %888 = fptoui float %887 to i16
  %889 = or i1 %868, %869
  %890 = xor i1 %868, true
  %891 = sext i1 %890 to i16
  %892 = select i1 %889, i16 %891, i16 %871
  %893 = or i1 %872, %873
  %894 = xor i1 %872, true
  %895 = sext i1 %894 to i16
  %896 = select i1 %893, i16 %895, i16 %875
  %897 = or i1 %876, %877
  %898 = xor i1 %876, true
  %899 = sext i1 %898 to i16
  %900 = select i1 %897, i16 %899, i16 %879
  %901 = or i1 %880, %881
  %902 = xor i1 %880, true
  %903 = sext i1 %902 to i16
  %904 = select i1 %901, i16 %903, i16 %883
  %905 = or i1 %885, %886
  %906 = xor i1 %885, true
  %907 = sext i1 %906 to i16
  %908 = select i1 %905, i16 %907, i16 %888
  br label %909

909:                                              ; preds = %867, %922
  %910 = phi i64 [ 0, %867 ], [ %923, %922 ]
  %911 = phi ptr [ %813, %867 ], [ %913, %922 ]
  %912 = phi ptr [ %814, %867 ], [ %914, %922 ]
  %913 = getelementptr inbounds %struct._PixelPacket, ptr %911, i64 -1
  %914 = getelementptr inbounds i16, ptr %912, i64 -1
  %915 = getelementptr %struct._PixelPacket, ptr %911, i64 -1, i32 2
  store i16 %892, ptr %915, align 2, !tbaa !61
  %916 = getelementptr %struct._PixelPacket, ptr %911, i64 -1, i32 1
  store i16 %896, ptr %916, align 2, !tbaa !62
  store i16 %900, ptr %913, align 2, !tbaa !63
  %917 = getelementptr %struct._PixelPacket, ptr %911, i64 -1, i32 3
  store i16 %904, ptr %917, align 2, !tbaa !82
  br i1 %851, label %921, label %918

918:                                              ; preds = %909
  %919 = load i32, ptr %0, align 8, !tbaa !126
  %920 = icmp eq i32 %919, 2
  br i1 %920, label %921, label %922

921:                                              ; preds = %909, %918
  store i16 %908, ptr %914, align 2, !tbaa !59
  br label %922

922:                                              ; preds = %918, %921
  %923 = add nuw nsw i64 %910, 1
  %924 = icmp eq i64 %923, %176
  br i1 %924, label %925, label %909, !llvm.loop !130

925:                                              ; preds = %922, %567, %865, %510, %185
  %926 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %103, ptr noundef %6) #13
  %927 = icmp ne i32 %926, 0
  %928 = zext i1 %927 to i32
  %929 = load ptr, ptr %149, align 8, !tbaa !101
  %930 = icmp eq ptr %929, null
  br i1 %930, label %939, label %931

931:                                              ; preds = %925
  %932 = add nsw i64 %155, 1
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %8) #11
  %933 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %8, i64 noundef 4096, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef nonnull %150) #11
  %934 = load ptr, ptr %149, align 8, !tbaa !101
  %935 = load ptr, ptr %151, align 8, !tbaa !102
  %936 = call i32 %934(ptr noundef nonnull %8, i64 noundef %155, i64 noundef %3, ptr noundef %935) #11
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %8) #11
  %937 = icmp eq i32 %936, 0
  %938 = select i1 %937, i32 0, i32 %928
  br label %939

939:                                              ; preds = %925, %931, %162, %157, %152
  %940 = phi i64 [ %155, %152 ], [ %155, %157 ], [ %155, %162 ], [ %932, %931 ], [ %155, %925 ]
  %941 = phi i32 [ 0, %152 ], [ 0, %157 ], [ 1, %162 ], [ %938, %931 ], [ %928, %925 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #11
  %942 = add nuw nsw i64 %154, 1
  %943 = icmp eq i64 %942, %3
  br i1 %943, label %944, label %152, !llvm.loop !131

944:                                              ; preds = %939, %102
  %945 = phi i32 [ 1, %102 ], [ %941, %939 ]
  %946 = call ptr @DestroyCacheView(ptr noundef %103) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %9) #11
  ret i32 %945
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @YShearImage(ptr noundef %0, float noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %6) unnamed_addr #0 {
  %8 = alloca [4096 x i8], align 16
  %9 = alloca %struct._MagickPixelPacket, align 8
  %10 = alloca %struct._MagickPixelPacket, align 8
  %11 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #11
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %13 = load i32, ptr %12, align 8, !tbaa !70
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %17 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1385, ptr noundef nonnull @.str.10, ptr noundef nonnull %16) #11
  br label %18

18:                                               ; preds = %15, %7
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %9) #11
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12, i32 2
  %21 = load i16, ptr %20, align 2, !tbaa !61
  %22 = uitofp i16 %21 to float
  %23 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 5
  store float %22, ptr %23, align 8, !tbaa !76
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12, i32 1
  %25 = load i16, ptr %24, align 2, !tbaa !62
  %26 = uitofp i16 %25 to float
  %27 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 6
  store float %26, ptr %27, align 4, !tbaa !79
  %28 = load i16, ptr %19, align 2, !tbaa !63
  %29 = uitofp i16 %28 to float
  %30 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 7
  store float %29, ptr %30, align 8, !tbaa !80
  %31 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12, i32 3
  %32 = load i16, ptr %31, align 2, !tbaa !82
  %33 = uitofp i16 %32 to float
  %34 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 8
  store float %33, ptr %34, align 4, !tbaa !81
  %35 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !117
  %37 = icmp eq i32 %36, 12
  br i1 %37, label %38, label %102

38:                                               ; preds = %18
  %39 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 1
  %40 = load i32, ptr %39, align 4, !tbaa !118
  %41 = icmp eq i32 %40, 13
  br i1 %41, label %52, label %42

42:                                               ; preds = %38
  %43 = uitofp i16 %21 to double
  %44 = fmul double %43, 0x3EF0001000100010
  %45 = fptrunc double %44 to float
  %46 = uitofp i16 %25 to double
  %47 = fmul double %46, 0x3EF0001000100010
  %48 = fptrunc double %47 to float
  %49 = uitofp i16 %28 to double
  %50 = fmul double %49, 0x3EF0001000100010
  %51 = fptrunc double %50 to float
  br label %58

52:                                               ; preds = %38
  %53 = call float @DecodePixelGamma(float noundef %22) #13
  %54 = load float, ptr %27, align 4, !tbaa !79
  %55 = call float @DecodePixelGamma(float noundef %54) #13
  %56 = load float, ptr %30, align 8, !tbaa !80
  %57 = call float @DecodePixelGamma(float noundef %56) #13
  br label %58

58:                                               ; preds = %52, %42
  %59 = phi float [ %51, %42 ], [ %57, %52 ]
  %60 = phi float [ %48, %42 ], [ %55, %52 ]
  %61 = phi float [ %45, %42 ], [ %53, %52 ]
  %62 = call float @llvm.fabs.f32(float %61)
  %63 = fpext float %62 to double
  %64 = fcmp olt double %63, 1.000000e-15
  br i1 %64, label %65, label %73

65:                                               ; preds = %58
  %66 = call float @llvm.fabs.f32(float %60)
  %67 = fpext float %66 to double
  %68 = fcmp olt double %67, 1.000000e-15
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = call float @llvm.fabs.f32(float %59)
  %71 = fpext float %70 to double
  %72 = fcmp olt double %71, 1.000000e-15
  br i1 %72, label %99, label %73

73:                                               ; preds = %69, %65, %58
  %74 = fsub float 1.000000e+00, %61
  %75 = fsub float 1.000000e+00, %60
  %76 = fsub float 1.000000e+00, %59
  %77 = fcmp olt float %75, %74
  %78 = select i1 %77, float %75, float %74
  %79 = fcmp olt float %76, %78
  %80 = select i1 %79, float %76, float %78
  %81 = fsub float %74, %80
  %82 = fpext float %81 to double
  %83 = fpext float %80 to double
  %84 = fsub double 1.000000e+00, %83
  %85 = fdiv double %82, %84
  %86 = fptrunc double %85 to float
  %87 = fsub float %75, %80
  %88 = fpext float %87 to double
  %89 = fdiv double %88, %84
  %90 = fptrunc double %89 to float
  %91 = fsub float %76, %80
  %92 = fpext float %91 to double
  %93 = fdiv double %92, %84
  %94 = fptrunc double %93 to float
  store i32 12, ptr %39, align 4, !tbaa !118
  %95 = fmul float %86, 6.553500e+04
  store float %95, ptr %23, align 8, !tbaa !76
  %96 = fmul float %90, 6.553500e+04
  store float %96, ptr %27, align 4, !tbaa !79
  %97 = fmul float %94, 6.553500e+04
  store float %97, ptr %30, align 8, !tbaa !80
  %98 = fmul float %80, 6.553500e+04
  br label %99

99:                                               ; preds = %69, %73
  %100 = phi float [ %98, %73 ], [ 6.553500e+04, %69 ]
  %101 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 9
  store float %100, ptr %101, align 8, !tbaa !119
  br label %102

102:                                              ; preds = %99, %18
  %103 = call ptr @AcquireAuthenticCacheView(ptr noundef %0, ptr noundef %6) #11
  %104 = icmp sgt i64 %2, 0
  br i1 %104, label %105, label %945

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %107 = uitofp i64 %2 to double
  %108 = fmul double %107, 5.000000e-01
  %109 = getelementptr inbounds i8, ptr %9, i64 48
  %110 = icmp sgt i64 %3, 0
  %111 = add i64 %5, %3
  %112 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 5
  %113 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 6
  %114 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 7
  %115 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 8
  %116 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 9
  %117 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 8
  %118 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 5
  %119 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 6
  %120 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 7
  %121 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 1
  %122 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 9
  %123 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 8
  %124 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 5
  %125 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 6
  %126 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 7
  %127 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 1
  %128 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 9
  %129 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 9
  %130 = icmp sgt i64 %3, 0
  %131 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 5
  %132 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 6
  %133 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 7
  %134 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 8
  %135 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 9
  %136 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 8
  %137 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 5
  %138 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 6
  %139 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 7
  %140 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 1
  %141 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 9
  %142 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 8
  %143 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 5
  %144 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 6
  %145 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 7
  %146 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 1
  %147 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 9
  %148 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 9
  %149 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %150 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %151 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %152

152:                                              ; preds = %105, %940
  %153 = phi i32 [ 1, %105 ], [ %942, %940 ]
  %154 = phi i64 [ 0, %105 ], [ %943, %940 ]
  %155 = phi i64 [ 0, %105 ], [ %941, %940 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %11) #11
  %156 = icmp eq i32 %153, 0
  br i1 %156, label %940, label %157

157:                                              ; preds = %152
  %158 = add nsw i64 %154, %4
  %159 = load i64, ptr %106, align 8, !tbaa !57
  %160 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %103, i64 noundef %158, i64 noundef 0, i64 noundef 1, i64 noundef %159, ptr noundef %6) #13
  %161 = icmp eq ptr %160, null
  br i1 %161, label %940, label %162

162:                                              ; preds = %157
  %163 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %103) #11
  %164 = getelementptr inbounds %struct._PixelPacket, ptr %160, i64 %5
  %165 = getelementptr inbounds i16, ptr %163, i64 %5
  %166 = sitofp i64 %154 to double
  %167 = fsub double %166, %108
  %168 = fptrunc double %167 to float
  %169 = fmul float %168, %1
  %170 = fcmp oeq float %169, 0.000000e+00
  br i1 %170, label %940, label %171

171:                                              ; preds = %162
  %172 = fcmp ule float %169, 0.000000e+00
  %173 = fneg float %169
  %174 = select i1 %172, float %173, float %169
  %175 = call float @llvm.floor.f32(float %174)
  %176 = fptosi float %175 to i64
  %177 = sitofp i64 %176 to float
  %178 = fsub float %174, %177
  %179 = add nsw i64 %176, 1
  %180 = load float, ptr %23, align 8, !tbaa.struct !120
  %181 = load float, ptr %27, align 4, !tbaa.struct !122
  %182 = load float, ptr %30, align 8, !tbaa.struct !123
  %183 = load float, ptr %34, align 4, !tbaa.struct !124
  %184 = load float, ptr %109, align 8, !tbaa.struct !125
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %10) #11
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %11) #11
  br i1 %172, label %185, label %570

185:                                              ; preds = %171
  %186 = icmp slt i64 %176, %5
  br i1 %186, label %187, label %925

187:                                              ; preds = %185
  %188 = xor i64 %176, -1
  %189 = getelementptr inbounds %struct._PixelPacket, ptr %164, i64 %188
  %190 = getelementptr inbounds i16, ptr %165, i64 %188
  br i1 %130, label %191, label %387

191:                                              ; preds = %187
  %192 = fpext float %178 to double
  %193 = fsub double 1.000000e+00, %192
  %194 = fneg double %193
  %195 = fneg float %178
  %196 = load i32, ptr %140, align 4
  %197 = icmp eq i32 %196, 12
  %198 = load float, ptr %135, align 8, !tbaa !119
  %199 = load float, ptr %141, align 8, !tbaa !119
  br label %200

200:                                              ; preds = %191, %369
  %201 = phi float [ %199, %191 ], [ %370, %369 ]
  %202 = phi float [ %198, %191 ], [ %371, %369 ]
  %203 = phi ptr [ %189, %191 ], [ %383, %369 ]
  %204 = phi ptr [ %164, %191 ], [ %378, %369 ]
  %205 = phi i64 [ 0, %191 ], [ %385, %369 ]
  %206 = phi ptr [ %190, %191 ], [ %384, %369 ]
  %207 = phi ptr [ %165, %191 ], [ %377, %369 ]
  %208 = phi float [ %180, %191 ], [ %379, %369 ]
  %209 = phi float [ %181, %191 ], [ %380, %369 ]
  %210 = phi float [ %182, %191 ], [ %381, %369 ]
  %211 = phi float [ %183, %191 ], [ %382, %369 ]
  %212 = phi float [ %184, %191 ], [ %372, %369 ]
  %213 = add nsw i64 %205, %5
  %214 = icmp sgt i64 %213, %176
  br i1 %214, label %227, label %215

215:                                              ; preds = %200
  %216 = getelementptr inbounds %struct._PixelPacket, ptr %204, i64 1
  %217 = getelementptr inbounds i16, ptr %207, i64 1
  %218 = getelementptr inbounds %struct._PixelPacket, ptr %204, i64 1, i32 2
  %219 = load i16, ptr %218, align 2, !tbaa !61
  %220 = getelementptr inbounds %struct._PixelPacket, ptr %204, i64 1, i32 1
  %221 = load i16, ptr %220, align 2, !tbaa !62
  %222 = load i16, ptr %216, align 2, !tbaa !63
  %223 = getelementptr inbounds %struct._PixelPacket, ptr %204, i64 1, i32 3
  %224 = load i16, ptr %223, align 2, !tbaa !82
  %225 = load i32, ptr %35, align 4, !tbaa !117
  %226 = icmp eq i32 %225, 12
  br i1 %226, label %357, label %369

227:                                              ; preds = %200
  %228 = getelementptr inbounds %struct._PixelPacket, ptr %204, i64 0, i32 2
  %229 = load i16, ptr %228, align 2, !tbaa !61
  %230 = uitofp i16 %229 to float
  store float %230, ptr %131, align 8, !tbaa !76
  %231 = getelementptr inbounds %struct._PixelPacket, ptr %204, i64 0, i32 1
  %232 = load i16, ptr %231, align 2, !tbaa !62
  %233 = uitofp i16 %232 to float
  store float %233, ptr %132, align 4, !tbaa !79
  %234 = load i16, ptr %204, align 2, !tbaa !63
  %235 = uitofp i16 %234 to float
  store float %235, ptr %133, align 8, !tbaa !80
  %236 = getelementptr inbounds %struct._PixelPacket, ptr %204, i64 0, i32 3
  %237 = load i16, ptr %236, align 2, !tbaa !82
  %238 = uitofp i16 %237 to float
  store float %238, ptr %134, align 4, !tbaa !81
  %239 = load i32, ptr %35, align 4, !tbaa !117
  %240 = icmp eq i32 %239, 12
  %241 = icmp ne ptr %207, null
  %242 = and i1 %241, %240
  br i1 %242, label %243, label %246

243:                                              ; preds = %227
  %244 = load i16, ptr %207, align 2, !tbaa !59
  %245 = uitofp i16 %244 to float
  store float %245, ptr %135, align 8, !tbaa !119
  br label %246

246:                                              ; preds = %227, %243
  %247 = phi float [ %202, %227 ], [ %245, %243 ]
  %248 = fsub float 6.553500e+04, %211
  %249 = fpext float %248 to double
  %250 = call double @llvm.fmuladd.f64(double %194, double %249, double 6.553500e+04)
  %251 = fptrunc double %250 to float
  %252 = fsub float 6.553500e+04, %238
  %253 = call float @llvm.fmuladd.f32(float %195, float %252, float 6.553500e+04)
  %254 = fpext float %251 to double
  %255 = call double @llvm.fmuladd.f64(double %254, double 0xBEF0001000100010, double 1.000000e+00)
  %256 = fptrunc double %255 to float
  %257 = fpext float %253 to double
  %258 = call double @llvm.fmuladd.f64(double %257, double 0xBEF0001000100010, double 1.000000e+00)
  %259 = fptrunc double %258 to float
  %260 = fadd float %256, %259
  %261 = fcmp olt float %260, 0.000000e+00
  %262 = fcmp ogt float %260, 1.000000e+00
  %263 = select i1 %262, float 1.000000e+00, float %260
  %264 = select i1 %261, float 0.000000e+00, float %263
  %265 = fpext float %264 to double
  %266 = fsub double 1.000000e+00, %265
  %267 = fmul double %266, 6.553500e+04
  %268 = fptrunc double %267 to float
  store float %268, ptr %136, align 4, !tbaa !81
  %269 = fcmp olt float %264, 0.000000e+00
  %270 = select i1 %269, double -1.000000e+00, double 1.000000e+00
  %271 = fmul double %270, %265
  %272 = fcmp ult double %271, 1.000000e-15
  %273 = fdiv double 1.000000e+00, %265
  %274 = fdiv double %270, 1.000000e-15
  %275 = select i1 %272, double %274, double %273
  %276 = fmul float %230, %259
  %277 = call float @llvm.fmuladd.f32(float %256, float %208, float %276)
  %278 = fpext float %277 to double
  %279 = fmul double %275, %278
  %280 = fptrunc double %279 to float
  store float %280, ptr %137, align 8, !tbaa !76
  %281 = fmul float %233, %259
  %282 = call float @llvm.fmuladd.f32(float %256, float %209, float %281)
  %283 = fpext float %282 to double
  %284 = fmul double %275, %283
  %285 = fptrunc double %284 to float
  store float %285, ptr %138, align 4, !tbaa !79
  %286 = fmul float %235, %259
  %287 = call float @llvm.fmuladd.f32(float %256, float %210, float %286)
  %288 = fpext float %287 to double
  %289 = fmul double %275, %288
  %290 = fptrunc double %289 to float
  store float %290, ptr %139, align 8, !tbaa !80
  br i1 %197, label %291, label %297

291:                                              ; preds = %246
  %292 = fmul float %247, %259
  %293 = call float @llvm.fmuladd.f32(float %256, float %212, float %292)
  %294 = fpext float %293 to double
  %295 = fmul double %275, %294
  %296 = fptrunc double %295 to float
  store float %296, ptr %141, align 8, !tbaa !119
  br label %297

297:                                              ; preds = %246, %291
  %298 = phi float [ %201, %246 ], [ %296, %291 ]
  %299 = fcmp ugt float %280, 0.000000e+00
  br i1 %299, label %300, label %305

300:                                              ; preds = %297
  %301 = fcmp ult float %280, 6.553500e+04
  br i1 %301, label %302, label %305

302:                                              ; preds = %300
  %303 = fadd float %280, 5.000000e-01
  %304 = fptoui float %303 to i16
  br label %305

305:                                              ; preds = %302, %300, %297
  %306 = phi i16 [ %304, %302 ], [ 0, %297 ], [ -1, %300 ]
  %307 = getelementptr inbounds %struct._PixelPacket, ptr %203, i64 0, i32 2
  store i16 %306, ptr %307, align 2, !tbaa !61
  %308 = fcmp ugt float %285, 0.000000e+00
  br i1 %308, label %309, label %314

309:                                              ; preds = %305
  %310 = fcmp ult float %285, 6.553500e+04
  br i1 %310, label %311, label %314

311:                                              ; preds = %309
  %312 = fadd float %285, 5.000000e-01
  %313 = fptoui float %312 to i16
  br label %314

314:                                              ; preds = %311, %309, %305
  %315 = phi i16 [ %313, %311 ], [ 0, %305 ], [ -1, %309 ]
  %316 = getelementptr inbounds %struct._PixelPacket, ptr %203, i64 0, i32 1
  store i16 %315, ptr %316, align 2, !tbaa !62
  %317 = fcmp ugt float %290, 0.000000e+00
  br i1 %317, label %318, label %323

318:                                              ; preds = %314
  %319 = fcmp ult float %290, 6.553500e+04
  br i1 %319, label %320, label %323

320:                                              ; preds = %318
  %321 = fadd float %290, 5.000000e-01
  %322 = fptoui float %321 to i16
  br label %323

323:                                              ; preds = %320, %318, %314
  %324 = phi i16 [ %322, %320 ], [ 0, %314 ], [ -1, %318 ]
  store i16 %324, ptr %203, align 2, !tbaa !63
  %325 = fcmp ugt float %268, 0.000000e+00
  br i1 %325, label %326, label %331

326:                                              ; preds = %323
  %327 = fcmp ult float %268, 6.553500e+04
  br i1 %327, label %328, label %331

328:                                              ; preds = %326
  %329 = fadd float %268, 5.000000e-01
  %330 = fptoui float %329 to i16
  br label %331

331:                                              ; preds = %328, %326, %323
  %332 = phi i16 [ %330, %328 ], [ 0, %323 ], [ -1, %326 ]
  %333 = getelementptr inbounds %struct._PixelPacket, ptr %203, i64 0, i32 3
  store i16 %332, ptr %333, align 2, !tbaa !82
  br i1 %240, label %339, label %334

334:                                              ; preds = %331
  %335 = load i32, ptr %0, align 8, !tbaa !126
  %336 = icmp eq i32 %335, 2
  %337 = icmp ne ptr %206, null
  %338 = and i1 %337, %336
  br i1 %338, label %341, label %350

339:                                              ; preds = %331
  %340 = icmp eq ptr %206, null
  br i1 %340, label %350, label %341

341:                                              ; preds = %339, %334
  %342 = fcmp ugt float %298, 0.000000e+00
  br i1 %342, label %343, label %348

343:                                              ; preds = %341
  %344 = fcmp ult float %298, 6.553500e+04
  br i1 %344, label %345, label %348

345:                                              ; preds = %343
  %346 = fadd float %298, 5.000000e-01
  %347 = fptoui float %346 to i16
  br label %348

348:                                              ; preds = %345, %343, %341
  %349 = phi i16 [ %347, %345 ], [ 0, %341 ], [ -1, %343 ]
  store i16 %349, ptr %206, align 2, !tbaa !59
  br label %350

350:                                              ; preds = %334, %339, %348
  %351 = getelementptr inbounds %struct._PixelPacket, ptr %204, i64 1
  %352 = getelementptr inbounds i16, ptr %207, i64 1
  %353 = load i16, ptr %228, align 2, !tbaa !61
  %354 = load i16, ptr %231, align 2, !tbaa !62
  %355 = load i16, ptr %204, align 2, !tbaa !63
  %356 = load i16, ptr %236, align 2, !tbaa !82
  br i1 %242, label %357, label %369

357:                                              ; preds = %350, %215
  %358 = phi ptr [ %217, %215 ], [ %207, %350 ]
  %359 = phi float [ %201, %215 ], [ %298, %350 ]
  %360 = phi float [ %202, %215 ], [ %247, %350 ]
  %361 = phi i16 [ %224, %215 ], [ %356, %350 ]
  %362 = phi i16 [ %222, %215 ], [ %355, %350 ]
  %363 = phi i16 [ %221, %215 ], [ %354, %350 ]
  %364 = phi i16 [ %219, %215 ], [ %353, %350 ]
  %365 = phi ptr [ %217, %215 ], [ %352, %350 ]
  %366 = phi ptr [ %216, %215 ], [ %351, %350 ]
  %367 = load i16, ptr %358, align 2, !tbaa !59
  %368 = uitofp i16 %367 to float
  br label %369

369:                                              ; preds = %357, %350, %215
  %370 = phi float [ %201, %215 ], [ %298, %350 ], [ %359, %357 ]
  %371 = phi float [ %202, %215 ], [ %247, %350 ], [ %360, %357 ]
  %372 = phi float [ %212, %215 ], [ %212, %350 ], [ %368, %357 ]
  %373 = phi i16 [ %224, %215 ], [ %356, %350 ], [ %361, %357 ]
  %374 = phi i16 [ %222, %215 ], [ %355, %350 ], [ %362, %357 ]
  %375 = phi i16 [ %221, %215 ], [ %354, %350 ], [ %363, %357 ]
  %376 = phi i16 [ %219, %215 ], [ %353, %350 ], [ %364, %357 ]
  %377 = phi ptr [ %217, %215 ], [ %352, %350 ], [ %365, %357 ]
  %378 = phi ptr [ %216, %215 ], [ %351, %350 ], [ %366, %357 ]
  %379 = uitofp i16 %376 to float
  %380 = uitofp i16 %375 to float
  %381 = uitofp i16 %374 to float
  %382 = uitofp i16 %373 to float
  %383 = getelementptr inbounds %struct._PixelPacket, ptr %203, i64 1
  %384 = getelementptr inbounds i16, ptr %206, i64 1
  %385 = add nuw nsw i64 %205, 1
  %386 = icmp eq i64 %385, %3
  br i1 %386, label %387, label %200, !llvm.loop !132

387:                                              ; preds = %369, %187
  %388 = phi float [ %184, %187 ], [ %372, %369 ]
  %389 = phi float [ %183, %187 ], [ %382, %369 ]
  %390 = phi float [ %182, %187 ], [ %381, %369 ]
  %391 = phi float [ %181, %187 ], [ %380, %369 ]
  %392 = phi float [ %180, %187 ], [ %379, %369 ]
  %393 = phi ptr [ %190, %187 ], [ %384, %369 ]
  %394 = phi ptr [ %189, %187 ], [ %383, %369 ]
  %395 = load float, ptr %34, align 4, !tbaa !81
  %396 = fpext float %178 to double
  %397 = fsub double 1.000000e+00, %396
  %398 = fsub float 6.553500e+04, %389
  %399 = fpext float %398 to double
  %400 = fneg double %397
  %401 = call double @llvm.fmuladd.f64(double %400, double %399, double 6.553500e+04)
  %402 = fptrunc double %401 to float
  %403 = fsub float 6.553500e+04, %395
  %404 = fneg float %178
  %405 = call float @llvm.fmuladd.f32(float %404, float %403, float 6.553500e+04)
  %406 = fpext float %402 to double
  %407 = call double @llvm.fmuladd.f64(double %406, double 0xBEF0001000100010, double 1.000000e+00)
  %408 = fptrunc double %407 to float
  %409 = fpext float %405 to double
  %410 = call double @llvm.fmuladd.f64(double %409, double 0xBEF0001000100010, double 1.000000e+00)
  %411 = fptrunc double %410 to float
  %412 = fadd float %408, %411
  %413 = fcmp olt float %412, 0.000000e+00
  %414 = fcmp ogt float %412, 1.000000e+00
  %415 = select i1 %414, float 1.000000e+00, float %412
  %416 = select i1 %413, float 0.000000e+00, float %415
  %417 = fpext float %416 to double
  %418 = fsub double 1.000000e+00, %417
  %419 = fmul double %418, 6.553500e+04
  %420 = fptrunc double %419 to float
  store float %420, ptr %142, align 4, !tbaa !81
  %421 = fcmp olt float %416, 0.000000e+00
  %422 = select i1 %421, double -1.000000e+00, double 1.000000e+00
  %423 = fmul double %422, %417
  %424 = fcmp ult double %423, 1.000000e-15
  %425 = fdiv double 1.000000e+00, %417
  %426 = fdiv double %422, 1.000000e-15
  %427 = select i1 %424, double %426, double %425
  %428 = load float, ptr %23, align 8, !tbaa !76
  %429 = fmul float %428, %411
  %430 = call float @llvm.fmuladd.f32(float %408, float %392, float %429)
  %431 = fpext float %430 to double
  %432 = fmul double %427, %431
  %433 = fptrunc double %432 to float
  store float %433, ptr %143, align 8, !tbaa !76
  %434 = load float, ptr %27, align 4, !tbaa !79
  %435 = fmul float %434, %411
  %436 = call float @llvm.fmuladd.f32(float %408, float %391, float %435)
  %437 = fpext float %436 to double
  %438 = fmul double %427, %437
  %439 = fptrunc double %438 to float
  store float %439, ptr %144, align 4, !tbaa !79
  %440 = load float, ptr %30, align 8, !tbaa !80
  %441 = fmul float %440, %411
  %442 = call float @llvm.fmuladd.f32(float %408, float %390, float %441)
  %443 = fpext float %442 to double
  %444 = fmul double %427, %443
  %445 = fptrunc double %444 to float
  store float %445, ptr %145, align 8, !tbaa !80
  %446 = load i32, ptr %146, align 4, !tbaa !118
  %447 = icmp eq i32 %446, 12
  br i1 %447, label %448, label %455

448:                                              ; preds = %387
  %449 = load float, ptr %109, align 8, !tbaa !119
  %450 = fmul float %449, %411
  %451 = call float @llvm.fmuladd.f32(float %408, float %388, float %450)
  %452 = fpext float %451 to double
  %453 = fmul double %427, %452
  %454 = fptrunc double %453 to float
  store float %454, ptr %147, align 8, !tbaa !119
  br label %455

455:                                              ; preds = %387, %448
  %456 = fcmp ugt float %433, 0.000000e+00
  br i1 %456, label %457, label %462

457:                                              ; preds = %455
  %458 = fcmp ult float %433, 6.553500e+04
  br i1 %458, label %459, label %462

459:                                              ; preds = %457
  %460 = fadd float %433, 5.000000e-01
  %461 = fptoui float %460 to i16
  br label %462

462:                                              ; preds = %459, %457, %455
  %463 = phi i16 [ %461, %459 ], [ 0, %455 ], [ -1, %457 ]
  %464 = getelementptr inbounds %struct._PixelPacket, ptr %394, i64 0, i32 2
  store i16 %463, ptr %464, align 2, !tbaa !61
  %465 = fcmp ugt float %439, 0.000000e+00
  br i1 %465, label %466, label %471

466:                                              ; preds = %462
  %467 = fcmp ult float %439, 6.553500e+04
  br i1 %467, label %468, label %471

468:                                              ; preds = %466
  %469 = fadd float %439, 5.000000e-01
  %470 = fptoui float %469 to i16
  br label %471

471:                                              ; preds = %468, %466, %462
  %472 = phi i16 [ %470, %468 ], [ 0, %462 ], [ -1, %466 ]
  %473 = getelementptr inbounds %struct._PixelPacket, ptr %394, i64 0, i32 1
  store i16 %472, ptr %473, align 2, !tbaa !62
  %474 = fcmp ugt float %445, 0.000000e+00
  br i1 %474, label %475, label %480

475:                                              ; preds = %471
  %476 = fcmp ult float %445, 6.553500e+04
  br i1 %476, label %477, label %480

477:                                              ; preds = %475
  %478 = fadd float %445, 5.000000e-01
  %479 = fptoui float %478 to i16
  br label %480

480:                                              ; preds = %477, %475, %471
  %481 = phi i16 [ %479, %477 ], [ 0, %471 ], [ -1, %475 ]
  store i16 %481, ptr %394, align 2, !tbaa !63
  %482 = fcmp ugt float %420, 0.000000e+00
  br i1 %482, label %483, label %488

483:                                              ; preds = %480
  %484 = fcmp ult float %420, 6.553500e+04
  br i1 %484, label %485, label %488

485:                                              ; preds = %483
  %486 = fadd float %420, 5.000000e-01
  %487 = fptoui float %486 to i16
  br label %488

488:                                              ; preds = %485, %483, %480
  %489 = phi i16 [ %487, %485 ], [ 0, %480 ], [ -1, %483 ]
  %490 = getelementptr inbounds %struct._PixelPacket, ptr %394, i64 0, i32 3
  store i16 %489, ptr %490, align 2, !tbaa !82
  %491 = load i32, ptr %35, align 4, !tbaa !117
  %492 = icmp eq i32 %491, 12
  br i1 %492, label %498, label %493

493:                                              ; preds = %488
  %494 = load i32, ptr %0, align 8, !tbaa !126
  %495 = icmp eq i32 %494, 2
  %496 = icmp ne ptr %393, null
  %497 = and i1 %496, %495
  br i1 %497, label %500, label %510

498:                                              ; preds = %488
  %499 = icmp eq ptr %393, null
  br i1 %499, label %510, label %500

500:                                              ; preds = %498, %493
  %501 = load float, ptr %148, align 8, !tbaa !119
  %502 = fcmp ugt float %501, 0.000000e+00
  br i1 %502, label %503, label %508

503:                                              ; preds = %500
  %504 = fcmp ult float %501, 6.553500e+04
  br i1 %504, label %505, label %508

505:                                              ; preds = %503
  %506 = fadd float %501, 5.000000e-01
  %507 = fptoui float %506 to i16
  br label %508

508:                                              ; preds = %505, %503, %500
  %509 = phi i16 [ %507, %505 ], [ 0, %500 ], [ -1, %503 ]
  store i16 %509, ptr %393, align 2, !tbaa !59
  br label %510

510:                                              ; preds = %493, %498, %508
  %511 = icmp sgt i64 %176, 0
  br i1 %511, label %512, label %925

512:                                              ; preds = %510
  %513 = fcmp ole float %428, 0.000000e+00
  %514 = fcmp oge float %428, 6.553500e+04
  %515 = fadd float %428, 5.000000e-01
  %516 = fptoui float %515 to i16
  %517 = fcmp ole float %434, 0.000000e+00
  %518 = fcmp oge float %434, 6.553500e+04
  %519 = fadd float %434, 5.000000e-01
  %520 = fptoui float %519 to i16
  %521 = fcmp ole float %440, 0.000000e+00
  %522 = fcmp oge float %440, 6.553500e+04
  %523 = fadd float %440, 5.000000e-01
  %524 = fptoui float %523 to i16
  %525 = fcmp ole float %395, 0.000000e+00
  %526 = fcmp oge float %395, 6.553500e+04
  %527 = fadd float %395, 5.000000e-01
  %528 = fptoui float %527 to i16
  %529 = load float, ptr %109, align 8
  %530 = fcmp ole float %529, 0.000000e+00
  %531 = fcmp oge float %529, 6.553500e+04
  %532 = fadd float %529, 5.000000e-01
  %533 = fptoui float %532 to i16
  %534 = or i1 %513, %514
  %535 = xor i1 %513, true
  %536 = sext i1 %535 to i16
  %537 = select i1 %534, i16 %536, i16 %516
  %538 = or i1 %517, %518
  %539 = xor i1 %517, true
  %540 = sext i1 %539 to i16
  %541 = select i1 %538, i16 %540, i16 %520
  %542 = or i1 %521, %522
  %543 = xor i1 %521, true
  %544 = sext i1 %543 to i16
  %545 = select i1 %542, i16 %544, i16 %524
  %546 = or i1 %525, %526
  %547 = xor i1 %525, true
  %548 = sext i1 %547 to i16
  %549 = select i1 %546, i16 %548, i16 %528
  %550 = or i1 %530, %531
  %551 = xor i1 %530, true
  %552 = sext i1 %551 to i16
  %553 = select i1 %550, i16 %552, i16 %533
  br label %554

554:                                              ; preds = %512, %567
  %555 = phi ptr [ %394, %512 ], [ %559, %567 ]
  %556 = phi i64 [ 0, %512 ], [ %568, %567 ]
  %557 = phi ptr [ %393, %512 ], [ %558, %567 ]
  %558 = getelementptr inbounds i16, ptr %557, i64 1
  %559 = getelementptr inbounds %struct._PixelPacket, ptr %555, i64 1
  %560 = getelementptr inbounds %struct._PixelPacket, ptr %555, i64 1, i32 2
  store i16 %537, ptr %560, align 2, !tbaa !61
  %561 = getelementptr inbounds %struct._PixelPacket, ptr %555, i64 1, i32 1
  store i16 %541, ptr %561, align 2, !tbaa !62
  store i16 %545, ptr %559, align 2, !tbaa !63
  %562 = getelementptr inbounds %struct._PixelPacket, ptr %555, i64 1, i32 3
  store i16 %549, ptr %562, align 2, !tbaa !82
  br i1 %492, label %566, label %563

563:                                              ; preds = %554
  %564 = load i32, ptr %0, align 8, !tbaa !126
  %565 = icmp eq i32 %564, 2
  br i1 %565, label %566, label %567

566:                                              ; preds = %554, %563
  store i16 %553, ptr %558, align 2, !tbaa !59
  br label %567

567:                                              ; preds = %563, %566
  %568 = add nuw nsw i64 %556, 1
  %569 = icmp eq i64 %568, %176
  br i1 %569, label %925, label %554, !llvm.loop !133

570:                                              ; preds = %171
  %571 = getelementptr inbounds %struct._PixelPacket, ptr %164, i64 %3
  %572 = getelementptr inbounds i16, ptr %165, i64 %3
  %573 = getelementptr inbounds %struct._PixelPacket, ptr %571, i64 %179
  %574 = getelementptr inbounds i16, ptr %572, i64 %179
  br i1 %110, label %575, label %744

575:                                              ; preds = %570
  %576 = add i64 %111, %179
  %577 = load i64, ptr %106, align 8, !tbaa !57
  %578 = fpext float %178 to double
  %579 = fsub double 1.000000e+00, %578
  %580 = fneg double %579
  %581 = fneg float %178
  %582 = load i32, ptr %121, align 4
  %583 = icmp eq i32 %582, 12
  %584 = load float, ptr %116, align 8, !tbaa !119
  %585 = load float, ptr %122, align 8, !tbaa !119
  br label %586

586:                                              ; preds = %575, %734
  %587 = phi float [ %585, %575 ], [ %735, %734 ]
  %588 = phi float [ %584, %575 ], [ %736, %734 ]
  %589 = phi ptr [ %573, %575 ], [ %601, %734 ]
  %590 = phi ptr [ %571, %575 ], [ %599, %734 ]
  %591 = phi i64 [ 0, %575 ], [ %742, %734 ]
  %592 = phi ptr [ %574, %575 ], [ %602, %734 ]
  %593 = phi ptr [ %572, %575 ], [ %600, %734 ]
  %594 = phi float [ %180, %575 ], [ %741, %734 ]
  %595 = phi float [ %181, %575 ], [ %740, %734 ]
  %596 = phi float [ %182, %575 ], [ %739, %734 ]
  %597 = phi float [ %183, %575 ], [ %738, %734 ]
  %598 = phi float [ %184, %575 ], [ %737, %734 ]
  %599 = getelementptr inbounds %struct._PixelPacket, ptr %590, i64 -1
  %600 = getelementptr inbounds i16, ptr %593, i64 -1
  %601 = getelementptr inbounds %struct._PixelPacket, ptr %589, i64 -1
  %602 = getelementptr inbounds i16, ptr %592, i64 -1
  %603 = sub i64 %576, %591
  %604 = icmp ugt i64 %603, %577
  br i1 %604, label %734, label %605

605:                                              ; preds = %586
  %606 = getelementptr %struct._PixelPacket, ptr %590, i64 -1, i32 2
  %607 = load i16, ptr %606, align 2, !tbaa !61
  %608 = uitofp i16 %607 to float
  store float %608, ptr %112, align 8, !tbaa !76
  %609 = getelementptr %struct._PixelPacket, ptr %590, i64 -1, i32 1
  %610 = load i16, ptr %609, align 2, !tbaa !62
  %611 = uitofp i16 %610 to float
  store float %611, ptr %113, align 4, !tbaa !79
  %612 = load i16, ptr %599, align 2, !tbaa !63
  %613 = uitofp i16 %612 to float
  store float %613, ptr %114, align 8, !tbaa !80
  %614 = getelementptr %struct._PixelPacket, ptr %590, i64 -1, i32 3
  %615 = load i16, ptr %614, align 2, !tbaa !82
  %616 = uitofp i16 %615 to float
  store float %616, ptr %115, align 4, !tbaa !81
  %617 = load i32, ptr %35, align 4, !tbaa !117
  %618 = icmp eq i32 %617, 12
  br i1 %618, label %619, label %622

619:                                              ; preds = %605
  %620 = load i16, ptr %600, align 2, !tbaa !59
  %621 = uitofp i16 %620 to float
  store float %621, ptr %116, align 8, !tbaa !119
  br label %622

622:                                              ; preds = %605, %619
  %623 = phi float [ %588, %605 ], [ %621, %619 ]
  %624 = fsub float 6.553500e+04, %597
  %625 = fpext float %624 to double
  %626 = call double @llvm.fmuladd.f64(double %580, double %625, double 6.553500e+04)
  %627 = fptrunc double %626 to float
  %628 = fsub float 6.553500e+04, %616
  %629 = call float @llvm.fmuladd.f32(float %581, float %628, float 6.553500e+04)
  %630 = fpext float %627 to double
  %631 = call double @llvm.fmuladd.f64(double %630, double 0xBEF0001000100010, double 1.000000e+00)
  %632 = fptrunc double %631 to float
  %633 = fpext float %629 to double
  %634 = call double @llvm.fmuladd.f64(double %633, double 0xBEF0001000100010, double 1.000000e+00)
  %635 = fptrunc double %634 to float
  %636 = fadd float %632, %635
  %637 = fcmp olt float %636, 0.000000e+00
  %638 = fcmp ogt float %636, 1.000000e+00
  %639 = select i1 %638, float 1.000000e+00, float %636
  %640 = select i1 %637, float 0.000000e+00, float %639
  %641 = fpext float %640 to double
  %642 = fsub double 1.000000e+00, %641
  %643 = fmul double %642, 6.553500e+04
  %644 = fptrunc double %643 to float
  store float %644, ptr %117, align 4, !tbaa !81
  %645 = fcmp olt float %640, 0.000000e+00
  %646 = select i1 %645, double -1.000000e+00, double 1.000000e+00
  %647 = fmul double %646, %641
  %648 = fcmp ult double %647, 1.000000e-15
  %649 = fdiv double 1.000000e+00, %641
  %650 = fdiv double %646, 1.000000e-15
  %651 = select i1 %648, double %650, double %649
  %652 = fmul float %608, %635
  %653 = call float @llvm.fmuladd.f32(float %632, float %594, float %652)
  %654 = fpext float %653 to double
  %655 = fmul double %651, %654
  %656 = fptrunc double %655 to float
  store float %656, ptr %118, align 8, !tbaa !76
  %657 = fmul float %611, %635
  %658 = call float @llvm.fmuladd.f32(float %632, float %595, float %657)
  %659 = fpext float %658 to double
  %660 = fmul double %651, %659
  %661 = fptrunc double %660 to float
  store float %661, ptr %119, align 4, !tbaa !79
  %662 = fmul float %613, %635
  %663 = call float @llvm.fmuladd.f32(float %632, float %596, float %662)
  %664 = fpext float %663 to double
  %665 = fmul double %651, %664
  %666 = fptrunc double %665 to float
  store float %666, ptr %120, align 8, !tbaa !80
  br i1 %583, label %667, label %673

667:                                              ; preds = %622
  %668 = fmul float %623, %635
  %669 = call float @llvm.fmuladd.f32(float %632, float %598, float %668)
  %670 = fpext float %669 to double
  %671 = fmul double %651, %670
  %672 = fptrunc double %671 to float
  store float %672, ptr %122, align 8, !tbaa !119
  br label %673

673:                                              ; preds = %622, %667
  %674 = phi float [ %587, %622 ], [ %672, %667 ]
  %675 = fcmp ugt float %656, 0.000000e+00
  br i1 %675, label %676, label %681

676:                                              ; preds = %673
  %677 = fcmp ult float %656, 6.553500e+04
  br i1 %677, label %678, label %681

678:                                              ; preds = %676
  %679 = fadd float %656, 5.000000e-01
  %680 = fptoui float %679 to i16
  br label %681

681:                                              ; preds = %678, %676, %673
  %682 = phi i16 [ %680, %678 ], [ 0, %673 ], [ -1, %676 ]
  %683 = getelementptr %struct._PixelPacket, ptr %589, i64 -1, i32 2
  store i16 %682, ptr %683, align 2, !tbaa !61
  %684 = fcmp ugt float %661, 0.000000e+00
  br i1 %684, label %685, label %690

685:                                              ; preds = %681
  %686 = fcmp ult float %661, 6.553500e+04
  br i1 %686, label %687, label %690

687:                                              ; preds = %685
  %688 = fadd float %661, 5.000000e-01
  %689 = fptoui float %688 to i16
  br label %690

690:                                              ; preds = %687, %685, %681
  %691 = phi i16 [ %689, %687 ], [ 0, %681 ], [ -1, %685 ]
  %692 = getelementptr %struct._PixelPacket, ptr %589, i64 -1, i32 1
  store i16 %691, ptr %692, align 2, !tbaa !62
  %693 = fcmp ugt float %666, 0.000000e+00
  br i1 %693, label %694, label %699

694:                                              ; preds = %690
  %695 = fcmp ult float %666, 6.553500e+04
  br i1 %695, label %696, label %699

696:                                              ; preds = %694
  %697 = fadd float %666, 5.000000e-01
  %698 = fptoui float %697 to i16
  br label %699

699:                                              ; preds = %696, %694, %690
  %700 = phi i16 [ %698, %696 ], [ 0, %690 ], [ -1, %694 ]
  store i16 %700, ptr %601, align 2, !tbaa !63
  %701 = fcmp ugt float %644, 0.000000e+00
  br i1 %701, label %702, label %707

702:                                              ; preds = %699
  %703 = fcmp ult float %644, 6.553500e+04
  br i1 %703, label %704, label %707

704:                                              ; preds = %702
  %705 = fadd float %644, 5.000000e-01
  %706 = fptoui float %705 to i16
  br label %707

707:                                              ; preds = %704, %702, %699
  %708 = phi i16 [ %706, %704 ], [ 0, %699 ], [ -1, %702 ]
  %709 = getelementptr %struct._PixelPacket, ptr %589, i64 -1, i32 3
  store i16 %708, ptr %709, align 2, !tbaa !82
  br i1 %618, label %713, label %710

710:                                              ; preds = %707
  %711 = load i32, ptr %0, align 8, !tbaa !126
  %712 = icmp eq i32 %711, 2
  br i1 %712, label %713, label %722

713:                                              ; preds = %707, %710
  %714 = fcmp ugt float %674, 0.000000e+00
  br i1 %714, label %715, label %720

715:                                              ; preds = %713
  %716 = fcmp ult float %674, 6.553500e+04
  br i1 %716, label %717, label %720

717:                                              ; preds = %715
  %718 = fadd float %674, 5.000000e-01
  %719 = fptoui float %718 to i16
  br label %720

720:                                              ; preds = %717, %715, %713
  %721 = phi i16 [ %719, %717 ], [ 0, %713 ], [ -1, %715 ]
  store i16 %721, ptr %602, align 2, !tbaa !59
  br label %722

722:                                              ; preds = %710, %720
  %723 = load i16, ptr %606, align 2, !tbaa !61
  %724 = uitofp i16 %723 to float
  %725 = load i16, ptr %609, align 2, !tbaa !62
  %726 = uitofp i16 %725 to float
  %727 = load i16, ptr %599, align 2, !tbaa !63
  %728 = uitofp i16 %727 to float
  %729 = load i16, ptr %614, align 2, !tbaa !82
  %730 = uitofp i16 %729 to float
  br i1 %618, label %731, label %734

731:                                              ; preds = %722
  %732 = load i16, ptr %600, align 2, !tbaa !59
  %733 = uitofp i16 %732 to float
  br label %734

734:                                              ; preds = %731, %722, %586
  %735 = phi float [ %587, %586 ], [ %674, %731 ], [ %674, %722 ]
  %736 = phi float [ %588, %586 ], [ %623, %731 ], [ %623, %722 ]
  %737 = phi float [ %598, %586 ], [ %733, %731 ], [ %598, %722 ]
  %738 = phi float [ %597, %586 ], [ %730, %731 ], [ %730, %722 ]
  %739 = phi float [ %596, %586 ], [ %728, %731 ], [ %728, %722 ]
  %740 = phi float [ %595, %586 ], [ %726, %731 ], [ %726, %722 ]
  %741 = phi float [ %594, %586 ], [ %724, %731 ], [ %724, %722 ]
  %742 = add nuw nsw i64 %591, 1
  %743 = icmp eq i64 %742, %3
  br i1 %743, label %744, label %586, !llvm.loop !134

744:                                              ; preds = %734, %570
  %745 = phi float [ %184, %570 ], [ %737, %734 ]
  %746 = phi float [ %183, %570 ], [ %738, %734 ]
  %747 = phi float [ %182, %570 ], [ %739, %734 ]
  %748 = phi float [ %181, %570 ], [ %740, %734 ]
  %749 = phi float [ %180, %570 ], [ %741, %734 ]
  %750 = phi ptr [ %574, %570 ], [ %602, %734 ]
  %751 = phi ptr [ %573, %570 ], [ %601, %734 ]
  %752 = load float, ptr %34, align 4, !tbaa !81
  %753 = fpext float %178 to double
  %754 = fsub double 1.000000e+00, %753
  %755 = fsub float 6.553500e+04, %746
  %756 = fpext float %755 to double
  %757 = fneg double %754
  %758 = call double @llvm.fmuladd.f64(double %757, double %756, double 6.553500e+04)
  %759 = fptrunc double %758 to float
  %760 = fsub float 6.553500e+04, %752
  %761 = fneg float %178
  %762 = call float @llvm.fmuladd.f32(float %761, float %760, float 6.553500e+04)
  %763 = fpext float %759 to double
  %764 = call double @llvm.fmuladd.f64(double %763, double 0xBEF0001000100010, double 1.000000e+00)
  %765 = fptrunc double %764 to float
  %766 = fpext float %762 to double
  %767 = call double @llvm.fmuladd.f64(double %766, double 0xBEF0001000100010, double 1.000000e+00)
  %768 = fptrunc double %767 to float
  %769 = fadd float %765, %768
  %770 = fcmp olt float %769, 0.000000e+00
  %771 = fcmp ogt float %769, 1.000000e+00
  %772 = select i1 %771, float 1.000000e+00, float %769
  %773 = select i1 %770, float 0.000000e+00, float %772
  %774 = fpext float %773 to double
  %775 = fsub double 1.000000e+00, %774
  %776 = fmul double %775, 6.553500e+04
  %777 = fptrunc double %776 to float
  store float %777, ptr %123, align 4, !tbaa !81
  %778 = fcmp olt float %773, 0.000000e+00
  %779 = select i1 %778, double -1.000000e+00, double 1.000000e+00
  %780 = fmul double %779, %774
  %781 = fcmp ult double %780, 1.000000e-15
  %782 = fdiv double 1.000000e+00, %774
  %783 = fdiv double %779, 1.000000e-15
  %784 = select i1 %781, double %783, double %782
  %785 = load float, ptr %23, align 8, !tbaa !76
  %786 = fmul float %785, %768
  %787 = call float @llvm.fmuladd.f32(float %765, float %749, float %786)
  %788 = fpext float %787 to double
  %789 = fmul double %784, %788
  %790 = fptrunc double %789 to float
  store float %790, ptr %124, align 8, !tbaa !76
  %791 = load float, ptr %27, align 4, !tbaa !79
  %792 = fmul float %791, %768
  %793 = call float @llvm.fmuladd.f32(float %765, float %748, float %792)
  %794 = fpext float %793 to double
  %795 = fmul double %784, %794
  %796 = fptrunc double %795 to float
  store float %796, ptr %125, align 4, !tbaa !79
  %797 = load float, ptr %30, align 8, !tbaa !80
  %798 = fmul float %797, %768
  %799 = call float @llvm.fmuladd.f32(float %765, float %747, float %798)
  %800 = fpext float %799 to double
  %801 = fmul double %784, %800
  %802 = fptrunc double %801 to float
  store float %802, ptr %126, align 8, !tbaa !80
  %803 = load i32, ptr %127, align 4, !tbaa !118
  %804 = icmp eq i32 %803, 12
  br i1 %804, label %805, label %812

805:                                              ; preds = %744
  %806 = load float, ptr %109, align 8, !tbaa !119
  %807 = fmul float %806, %768
  %808 = call float @llvm.fmuladd.f32(float %765, float %745, float %807)
  %809 = fpext float %808 to double
  %810 = fmul double %784, %809
  %811 = fptrunc double %810 to float
  store float %811, ptr %128, align 8, !tbaa !119
  br label %812

812:                                              ; preds = %744, %805
  %813 = getelementptr inbounds %struct._PixelPacket, ptr %751, i64 -1
  %814 = getelementptr inbounds i16, ptr %750, i64 -1
  %815 = fcmp ugt float %790, 0.000000e+00
  br i1 %815, label %816, label %821

816:                                              ; preds = %812
  %817 = fcmp ult float %790, 6.553500e+04
  br i1 %817, label %818, label %821

818:                                              ; preds = %816
  %819 = fadd float %790, 5.000000e-01
  %820 = fptoui float %819 to i16
  br label %821

821:                                              ; preds = %818, %816, %812
  %822 = phi i16 [ %820, %818 ], [ 0, %812 ], [ -1, %816 ]
  %823 = getelementptr %struct._PixelPacket, ptr %751, i64 -1, i32 2
  store i16 %822, ptr %823, align 2, !tbaa !61
  %824 = fcmp ugt float %796, 0.000000e+00
  br i1 %824, label %825, label %830

825:                                              ; preds = %821
  %826 = fcmp ult float %796, 6.553500e+04
  br i1 %826, label %827, label %830

827:                                              ; preds = %825
  %828 = fadd float %796, 5.000000e-01
  %829 = fptoui float %828 to i16
  br label %830

830:                                              ; preds = %827, %825, %821
  %831 = phi i16 [ %829, %827 ], [ 0, %821 ], [ -1, %825 ]
  %832 = getelementptr %struct._PixelPacket, ptr %751, i64 -1, i32 1
  store i16 %831, ptr %832, align 2, !tbaa !62
  %833 = fcmp ugt float %802, 0.000000e+00
  br i1 %833, label %834, label %839

834:                                              ; preds = %830
  %835 = fcmp ult float %802, 6.553500e+04
  br i1 %835, label %836, label %839

836:                                              ; preds = %834
  %837 = fadd float %802, 5.000000e-01
  %838 = fptoui float %837 to i16
  br label %839

839:                                              ; preds = %836, %834, %830
  %840 = phi i16 [ %838, %836 ], [ 0, %830 ], [ -1, %834 ]
  store i16 %840, ptr %813, align 2, !tbaa !63
  %841 = fcmp ugt float %777, 0.000000e+00
  br i1 %841, label %842, label %847

842:                                              ; preds = %839
  %843 = fcmp ult float %777, 6.553500e+04
  br i1 %843, label %844, label %847

844:                                              ; preds = %842
  %845 = fadd float %777, 5.000000e-01
  %846 = fptoui float %845 to i16
  br label %847

847:                                              ; preds = %844, %842, %839
  %848 = phi i16 [ %846, %844 ], [ 0, %839 ], [ -1, %842 ]
  %849 = getelementptr %struct._PixelPacket, ptr %751, i64 -1, i32 3
  store i16 %848, ptr %849, align 2, !tbaa !82
  %850 = load i32, ptr %35, align 4, !tbaa !117
  %851 = icmp eq i32 %850, 12
  br i1 %851, label %855, label %852

852:                                              ; preds = %847
  %853 = load i32, ptr %0, align 8, !tbaa !126
  %854 = icmp eq i32 %853, 2
  br i1 %854, label %855, label %865

855:                                              ; preds = %847, %852
  %856 = load float, ptr %129, align 8, !tbaa !119
  %857 = fcmp ugt float %856, 0.000000e+00
  br i1 %857, label %858, label %863

858:                                              ; preds = %855
  %859 = fcmp ult float %856, 6.553500e+04
  br i1 %859, label %860, label %863

860:                                              ; preds = %858
  %861 = fadd float %856, 5.000000e-01
  %862 = fptoui float %861 to i16
  br label %863

863:                                              ; preds = %860, %858, %855
  %864 = phi i16 [ %862, %860 ], [ 0, %855 ], [ -1, %858 ]
  store i16 %864, ptr %814, align 2, !tbaa !59
  br label %865

865:                                              ; preds = %852, %863
  %866 = icmp sgt i64 %176, 0
  br i1 %866, label %867, label %925

867:                                              ; preds = %865
  %868 = fcmp ole float %785, 0.000000e+00
  %869 = fcmp oge float %785, 6.553500e+04
  %870 = fadd float %785, 5.000000e-01
  %871 = fptoui float %870 to i16
  %872 = fcmp ole float %791, 0.000000e+00
  %873 = fcmp oge float %791, 6.553500e+04
  %874 = fadd float %791, 5.000000e-01
  %875 = fptoui float %874 to i16
  %876 = fcmp ole float %797, 0.000000e+00
  %877 = fcmp oge float %797, 6.553500e+04
  %878 = fadd float %797, 5.000000e-01
  %879 = fptoui float %878 to i16
  %880 = fcmp ole float %752, 0.000000e+00
  %881 = fcmp oge float %752, 6.553500e+04
  %882 = fadd float %752, 5.000000e-01
  %883 = fptoui float %882 to i16
  %884 = load float, ptr %109, align 8
  %885 = fcmp ole float %884, 0.000000e+00
  %886 = fcmp oge float %884, 6.553500e+04
  %887 = fadd float %884, 5.000000e-01
  %888 = fptoui float %887 to i16
  %889 = or i1 %868, %869
  %890 = xor i1 %868, true
  %891 = sext i1 %890 to i16
  %892 = select i1 %889, i16 %891, i16 %871
  %893 = or i1 %872, %873
  %894 = xor i1 %872, true
  %895 = sext i1 %894 to i16
  %896 = select i1 %893, i16 %895, i16 %875
  %897 = or i1 %876, %877
  %898 = xor i1 %876, true
  %899 = sext i1 %898 to i16
  %900 = select i1 %897, i16 %899, i16 %879
  %901 = or i1 %880, %881
  %902 = xor i1 %880, true
  %903 = sext i1 %902 to i16
  %904 = select i1 %901, i16 %903, i16 %883
  %905 = or i1 %885, %886
  %906 = xor i1 %885, true
  %907 = sext i1 %906 to i16
  %908 = select i1 %905, i16 %907, i16 %888
  br label %909

909:                                              ; preds = %867, %922
  %910 = phi ptr [ %813, %867 ], [ %913, %922 ]
  %911 = phi i64 [ 0, %867 ], [ %923, %922 ]
  %912 = phi ptr [ %814, %867 ], [ %914, %922 ]
  %913 = getelementptr inbounds %struct._PixelPacket, ptr %910, i64 -1
  %914 = getelementptr inbounds i16, ptr %912, i64 -1
  %915 = getelementptr %struct._PixelPacket, ptr %910, i64 -1, i32 2
  store i16 %892, ptr %915, align 2, !tbaa !61
  %916 = getelementptr %struct._PixelPacket, ptr %910, i64 -1, i32 1
  store i16 %896, ptr %916, align 2, !tbaa !62
  store i16 %900, ptr %913, align 2, !tbaa !63
  %917 = getelementptr %struct._PixelPacket, ptr %910, i64 -1, i32 3
  store i16 %904, ptr %917, align 2, !tbaa !82
  br i1 %851, label %921, label %918

918:                                              ; preds = %909
  %919 = load i32, ptr %0, align 8, !tbaa !126
  %920 = icmp eq i32 %919, 2
  br i1 %920, label %921, label %922

921:                                              ; preds = %909, %918
  store i16 %908, ptr %914, align 2, !tbaa !59
  br label %922

922:                                              ; preds = %918, %921
  %923 = add nuw nsw i64 %911, 1
  %924 = icmp eq i64 %923, %176
  br i1 %924, label %925, label %909, !llvm.loop !135

925:                                              ; preds = %922, %567, %865, %510, %185
  %926 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %103, ptr noundef %6) #13
  %927 = icmp ne i32 %926, 0
  %928 = zext i1 %927 to i32
  %929 = load ptr, ptr %149, align 8, !tbaa !101
  %930 = icmp eq ptr %929, null
  br i1 %930, label %940, label %931

931:                                              ; preds = %925
  %932 = add nsw i64 %155, 1
  %933 = load i64, ptr %106, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %8) #11
  %934 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %8, i64 noundef 4096, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.14, ptr noundef nonnull %150) #11
  %935 = load ptr, ptr %149, align 8, !tbaa !101
  %936 = load ptr, ptr %151, align 8, !tbaa !102
  %937 = call i32 %935(ptr noundef nonnull %8, i64 noundef %155, i64 noundef %933, ptr noundef %936) #11
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %8) #11
  %938 = icmp eq i32 %937, 0
  %939 = select i1 %938, i32 0, i32 %928
  br label %940

940:                                              ; preds = %925, %931, %162, %157, %152
  %941 = phi i64 [ %155, %152 ], [ %155, %157 ], [ %155, %162 ], [ %932, %931 ], [ %155, %925 ]
  %942 = phi i32 [ 0, %152 ], [ 0, %157 ], [ 1, %162 ], [ %939, %931 ], [ %928, %925 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #11
  %943 = add nuw nsw i64 %154, 1
  %944 = icmp eq i64 %943, %2
  br i1 %944, label %945, label %152, !llvm.loop !136

945:                                              ; preds = %940, %102
  %946 = phi i32 [ 1, %102 ], [ %942, %940 ]
  %947 = call ptr @DestroyCacheView(ptr noundef %103) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %9) #11
  ret i32 %946
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @CropToFitImage(ptr nocapture noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, i32 noundef %5, ptr noundef %6) unnamed_addr #0 {
  %8 = alloca [4 x %struct._PointInfo], align 16
  %9 = alloca %struct._RectangleInfo, align 8
  %10 = alloca %struct._RectangleInfo, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10)
  %11 = fneg float %3
  %12 = fpext float %11 to double
  %13 = fmul double %12, 5.000000e-01
  store double %13, ptr %8, align 16, !tbaa !137
  %14 = fneg float %4
  %15 = fpext float %14 to double
  %16 = fmul double %15, 5.000000e-01
  %17 = getelementptr inbounds %struct._PointInfo, ptr %8, i64 0, i32 1
  store double %16, ptr %17, align 8, !tbaa !139
  %18 = fpext float %3 to double
  %19 = fmul double %18, 5.000000e-01
  %20 = getelementptr inbounds [4 x %struct._PointInfo], ptr %8, i64 0, i64 1
  store double %19, ptr %20, align 16, !tbaa !137
  %21 = getelementptr inbounds [4 x %struct._PointInfo], ptr %8, i64 0, i64 1, i32 1
  store double %16, ptr %21, align 8, !tbaa !139
  %22 = getelementptr inbounds [4 x %struct._PointInfo], ptr %8, i64 0, i64 2
  store double %13, ptr %22, align 16, !tbaa !137
  %23 = fpext float %4 to double
  %24 = fmul double %23, 5.000000e-01
  %25 = getelementptr inbounds [4 x %struct._PointInfo], ptr %8, i64 0, i64 2, i32 1
  store double %24, ptr %25, align 8, !tbaa !139
  %26 = getelementptr inbounds [4 x %struct._PointInfo], ptr %8, i64 0, i64 3
  store double %19, ptr %26, align 16, !tbaa !137
  %27 = getelementptr inbounds [4 x %struct._PointInfo], ptr %8, i64 0, i64 3, i32 1
  store double %24, ptr %27, align 8, !tbaa !139
  %28 = fpext float %1 to double
  %29 = fpext float %2 to double
  %30 = icmp eq i32 %5, 0
  %31 = load ptr, ptr %0, align 8, !tbaa !115
  %32 = getelementptr inbounds %struct._Image, ptr %31, i64 0, i32 7
  %33 = load i64, ptr %32, align 8, !tbaa !34
  %34 = uitofp i64 %33 to double
  %35 = fmul double %34, 5.000000e-01
  %36 = getelementptr inbounds %struct._Image, ptr %31, i64 0, i32 8
  %37 = load i64, ptr %36, align 8, !tbaa !57
  %38 = uitofp i64 %37 to double
  %39 = fmul double %38, 5.000000e-01
  br label %40

40:                                               ; preds = %7, %50
  %41 = phi i64 [ 0, %7 ], [ %54, %50 ]
  %42 = getelementptr inbounds [4 x %struct._PointInfo], ptr %8, i64 0, i64 %41
  %43 = getelementptr inbounds [4 x %struct._PointInfo], ptr %8, i64 0, i64 %41, i32 1
  %44 = load double, ptr %43, align 8, !tbaa !139
  %45 = load double, ptr %42, align 16, !tbaa !137
  %46 = tail call double @llvm.fmuladd.f64(double %28, double %44, double %45)
  store double %46, ptr %42, align 16, !tbaa !137
  %47 = tail call double @llvm.fmuladd.f64(double %29, double %46, double %44)
  store double %47, ptr %43, align 8, !tbaa !139
  br i1 %30, label %50, label %48

48:                                               ; preds = %40
  %49 = tail call double @llvm.fmuladd.f64(double %28, double %47, double %46)
  store double %49, ptr %42, align 16, !tbaa !137
  br label %50

50:                                               ; preds = %48, %40
  %51 = load double, ptr %42, align 16, !tbaa !137
  %52 = fadd double %51, %35
  store double %52, ptr %42, align 16, !tbaa !137
  %53 = fadd double %47, %39
  store double %53, ptr %43, align 8, !tbaa !139
  %54 = add nuw nsw i64 %41, 1
  %55 = icmp eq i64 %54, 4
  br i1 %55, label %56, label %40, !llvm.loop !140

56:                                               ; preds = %50
  %57 = load double, ptr %8, align 16
  %58 = load double, ptr %17, align 8
  br label %59

59:                                               ; preds = %56, %59
  %60 = phi i64 [ 1, %56 ], [ %77, %59 ]
  %61 = phi double [ %57, %56 ], [ %74, %59 ]
  %62 = phi double [ %58, %56 ], [ %76, %59 ]
  %63 = phi double [ %57, %56 ], [ %68, %59 ]
  %64 = phi double [ %58, %56 ], [ %72, %59 ]
  %65 = getelementptr inbounds [4 x %struct._PointInfo], ptr %8, i64 0, i64 %60
  %66 = load double, ptr %65, align 16, !tbaa !137
  %67 = fcmp ogt double %63, %66
  %68 = select i1 %67, double %66, double %63
  %69 = getelementptr inbounds [4 x %struct._PointInfo], ptr %8, i64 0, i64 %60, i32 1
  %70 = load double, ptr %69, align 8, !tbaa !139
  %71 = fcmp ogt double %64, %70
  %72 = select i1 %71, double %70, double %64
  %73 = fcmp olt double %61, %66
  %74 = select i1 %73, double %66, double %61
  %75 = fcmp olt double %62, %70
  %76 = select i1 %75, double %70, double %62
  %77 = add nuw nsw i64 %60, 1
  %78 = icmp eq i64 %77, 4
  br i1 %78, label %79, label %59, !llvm.loop !141

79:                                               ; preds = %59
  %80 = fadd double %68, -5.000000e-01
  %81 = tail call double @llvm.ceil.f64(double %80)
  %82 = fptosi double %81 to i64
  %83 = getelementptr inbounds %struct._RectangleInfo, ptr %9, i64 0, i32 2
  store i64 %82, ptr %83, align 8, !tbaa !91
  %84 = fadd double %72, -5.000000e-01
  %85 = tail call double @llvm.ceil.f64(double %84)
  %86 = fptosi double %85 to i64
  %87 = getelementptr inbounds %struct._RectangleInfo, ptr %9, i64 0, i32 3
  store i64 %86, ptr %87, align 8, !tbaa !92
  %88 = fsub double %74, %68
  %89 = fadd double %88, 5.000000e-01
  %90 = tail call double @llvm.floor.f64(double %89)
  %91 = fptoui double %90 to i64
  store i64 %91, ptr %9, align 8, !tbaa !89
  %92 = fsub double %76, %72
  %93 = fadd double %92, 5.000000e-01
  %94 = tail call double @llvm.floor.f64(double %93)
  %95 = fptoui double %94 to i64
  %96 = getelementptr inbounds %struct._RectangleInfo, ptr %9, i64 0, i32 1
  store i64 %95, ptr %96, align 8, !tbaa !90
  %97 = load ptr, ptr %0, align 8, !tbaa !115
  %98 = getelementptr inbounds %struct._Image, ptr %97, i64 0, i32 26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %98, i64 32, i1 false), !tbaa.struct !93
  %99 = tail call i32 @ParseAbsoluteGeometry(ptr noundef nonnull @.str.15, ptr noundef nonnull %98) #11
  %100 = load ptr, ptr %0, align 8, !tbaa !115
  %101 = call ptr @CropImage(ptr noundef %100, ptr noundef nonnull %9, ptr noundef %6) #11
  %102 = icmp eq ptr %101, null
  br i1 %102, label %107, label %103

103:                                              ; preds = %79
  %104 = getelementptr inbounds %struct._Image, ptr %101, i64 0, i32 26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %104, ptr noundef nonnull align 8 dereferenceable(32) %10, i64 32, i1 false), !tbaa.struct !93
  %105 = load ptr, ptr %0, align 8, !tbaa !115
  %106 = call ptr @DestroyImage(ptr noundef %105) #11
  store ptr %101, ptr %0, align 8, !tbaa !115
  br label %107

107:                                              ; preds = %79, %103
  %108 = phi i32 [ 1, %103 ], [ 0, %79 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #11
  ret i32 %108
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ShearRotateImage(ptr noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct._RectangleInfo, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #11
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !70
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1743, ptr noundef nonnull @.str.10, ptr noundef nonnull %10) #11
  br label %12

12:                                               ; preds = %9, %3
  %13 = fptrunc double %1 to float
  %14 = fcmp olt float %13, -4.500000e+01
  br i1 %14, label %18, label %15

15:                                               ; preds = %18, %12
  %16 = phi float [ %13, %12 ], [ %20, %18 ]
  %17 = fcmp ogt float %16, 4.500000e+01
  br i1 %17, label %22, label %30

18:                                               ; preds = %12, %18
  %19 = phi float [ %20, %18 ], [ %13, %12 ]
  %20 = fadd float %19, 3.600000e+02
  %21 = fcmp olt float %20, -4.500000e+01
  br i1 %21, label %18, label %15, !llvm.loop !142

22:                                               ; preds = %15, %22
  %23 = phi i64 [ %26, %22 ], [ 0, %15 ]
  %24 = phi float [ %25, %22 ], [ %16, %15 ]
  %25 = fadd float %24, -9.000000e+01
  %26 = add i64 %23, 1
  %27 = fcmp ogt float %25, 4.500000e+01
  br i1 %27, label %22, label %28, !llvm.loop !143

28:                                               ; preds = %22
  %29 = and i64 %26, 3
  br label %30

30:                                               ; preds = %28, %15
  %31 = phi float [ %16, %15 ], [ %25, %28 ]
  %32 = phi i64 [ 0, %15 ], [ %29, %28 ]
  %33 = tail call ptr @IntegralRotateImage(ptr noundef %0, i64 noundef %32, ptr noundef %2)
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %37 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1757, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %36) #11
  br label %159

38:                                               ; preds = %30
  %39 = fpext float %31 to double
  %40 = fmul double %39, 0x400921FB54442D18
  %41 = fdiv double %40, 1.800000e+02
  %42 = fmul double %41, 5.000000e-01
  %43 = tail call double @tan(double noundef %42) #11
  %44 = fneg double %43
  %45 = tail call double @sin(double noundef %41) #11
  %46 = fcmp oeq double %43, 0.000000e+00
  %47 = fcmp oeq double %45, 0.000000e+00
  %48 = select i1 %46, i1 %47, i1 false
  br i1 %48, label %159, label %49

49:                                               ; preds = %38
  %50 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %33, i32 noundef 1) #11
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct._Image, ptr %33, i64 0, i32 58
  tail call void @InheritException(ptr noundef %2, ptr noundef nonnull %53) #11
  %54 = tail call ptr @DestroyImage(ptr noundef nonnull %33) #11
  br label %159

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct._Image, ptr %33, i64 0, i32 6
  %57 = load i32, ptr %56, align 8, !tbaa !113
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %33, i32 noundef 6) #11
  br label %61

61:                                               ; preds = %59, %55
  %62 = getelementptr inbounds %struct._Image, ptr %33, i64 0, i32 7
  %63 = load i64, ptr %62, align 8, !tbaa !34
  %64 = getelementptr inbounds %struct._Image, ptr %33, i64 0, i32 8
  %65 = load i64, ptr %64, align 8, !tbaa !57
  %66 = uitofp i64 %65 to double
  %67 = fmul double %44, %66
  %68 = tail call double @llvm.fabs.f64(double %67)
  %69 = uitofp i64 %63 to double
  %70 = fadd double %68, %69
  %71 = fadd double %70, 5.000000e-01
  %72 = tail call double @llvm.floor.f64(double %71)
  %73 = fptoui double %72 to i64
  %74 = uitofp i64 %73 to double
  %75 = fmul double %45, %74
  %76 = tail call double @llvm.fabs.f64(double %75)
  %77 = fadd double %76, %66
  %78 = fadd double %77, 5.000000e-01
  %79 = tail call double @llvm.floor.f64(double %78)
  %80 = fptoui double %79 to i64
  %81 = uitofp i64 %80 to double
  %82 = fmul double %44, %81
  %83 = tail call double @llvm.fabs.f64(double %82)
  %84 = fadd double %83, %74
  %85 = fadd double %84, 5.000000e-01
  %86 = tail call double @llvm.floor.f64(double %85)
  %87 = fptoui double %86 to i64
  %88 = icmp ugt i64 %87, %73
  %89 = add i64 %73, 2
  %90 = sub i64 %89, %87
  %91 = select i1 %88, i64 %63, i64 %90
  %92 = uitofp i64 %91 to double
  %93 = fmul double %92, 5.000000e-01
  %94 = fadd double %93, 5.000000e-01
  %95 = tail call double @llvm.floor.f64(double %94)
  %96 = fptosi double %95 to i64
  %97 = fsub double %81, %66
  %98 = fadd double %97, 2.000000e+00
  %99 = fmul double %98, 5.000000e-01
  %100 = fadd double %99, 5.000000e-01
  %101 = tail call double @llvm.floor.f64(double %100)
  %102 = fptosi double %101 to i64
  %103 = getelementptr inbounds %struct._Image, ptr %33, i64 0, i32 13
  %104 = getelementptr inbounds %struct._Image, ptr %33, i64 0, i32 12
  %105 = load i64, ptr %104, align 8
  store i64 %105, ptr %103, align 8
  %106 = getelementptr inbounds %struct._Image, ptr %33, i64 0, i32 36
  store i32 13, ptr %106, align 8, !tbaa !114
  store i64 %96, ptr %5, align 8, !tbaa !89
  %107 = getelementptr inbounds %struct._RectangleInfo, ptr %5, i64 0, i32 1
  store i64 %102, ptr %107, align 8, !tbaa !90
  %108 = call ptr @BorderImage(ptr noundef nonnull %33, ptr noundef nonnull %5, ptr noundef %2) #11
  store ptr %108, ptr %4, align 8, !tbaa !115
  %109 = call ptr @DestroyImage(ptr noundef nonnull %33) #11
  %110 = icmp eq ptr %108, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %61
  %112 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %113 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1792, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %112) #11
  br label %159

114:                                              ; preds = %61
  %115 = fptrunc double %44 to float
  %116 = getelementptr inbounds %struct._Image, ptr %108, i64 0, i32 8
  %117 = load i64, ptr %116, align 8, !tbaa !57
  %118 = sub i64 %117, %65
  %119 = sdiv i64 %118, 2
  %120 = call fastcc i32 @XShearImage(ptr noundef nonnull %108, float noundef %115, i64 noundef %63, i64 noundef %65, i64 noundef %96, i64 noundef %119, ptr noundef %2), !range !116
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %114
  %123 = call ptr @DestroyImage(ptr noundef nonnull %108) #11
  store ptr %123, ptr %4, align 8, !tbaa !115
  br label %159

124:                                              ; preds = %114
  %125 = fptrunc double %45 to float
  %126 = getelementptr inbounds %struct._Image, ptr %108, i64 0, i32 7
  %127 = load i64, ptr %126, align 8, !tbaa !34
  %128 = sub i64 %127, %73
  %129 = sdiv i64 %128, 2
  %130 = call fastcc i32 @YShearImage(ptr noundef nonnull %108, float noundef %125, i64 noundef %73, i64 noundef %65, i64 noundef %129, i64 noundef %102, ptr noundef %2), !range !116
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %124
  %133 = call ptr @DestroyImage(ptr noundef nonnull %108) #11
  store ptr %133, ptr %4, align 8, !tbaa !115
  br label %159

134:                                              ; preds = %124
  %135 = load i64, ptr %126, align 8, !tbaa !34
  %136 = sub i64 %135, %73
  %137 = sdiv i64 %136, 2
  %138 = load i64, ptr %116, align 8, !tbaa !57
  %139 = sub i64 %138, %80
  %140 = sdiv i64 %139, 2
  %141 = call fastcc i32 @XShearImage(ptr noundef nonnull %108, float noundef %115, i64 noundef %73, i64 noundef %80, i64 noundef %137, i64 noundef %140, ptr noundef %2), !range !116
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %134
  %144 = call ptr @DestroyImage(ptr noundef nonnull %108) #11
  store ptr %144, ptr %4, align 8, !tbaa !115
  br label %159

145:                                              ; preds = %134
  %146 = uitofp i64 %63 to float
  %147 = uitofp i64 %65 to float
  %148 = call fastcc i32 @CropToFitImage(ptr noundef nonnull %4, float noundef %115, float noundef %125, float noundef %146, float noundef %147, i32 noundef 1, ptr noundef %2), !range !116
  %149 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 36
  %150 = load i32, ptr %149, align 8, !tbaa !114
  %151 = load ptr, ptr %4, align 8, !tbaa !115
  %152 = getelementptr inbounds %struct._Image, ptr %151, i64 0, i32 36
  store i32 %150, ptr %152, align 8, !tbaa !114
  %153 = getelementptr inbounds %struct._Image, ptr %151, i64 0, i32 26
  %154 = icmp eq i32 %148, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %153, i8 0, i64 16, i1 false)
  br i1 %154, label %155, label %157

155:                                              ; preds = %145
  %156 = call ptr @DestroyImage(ptr noundef %151) #11
  store ptr %156, ptr %4, align 8, !tbaa !115
  br label %157

157:                                              ; preds = %155, %145
  %158 = load ptr, ptr %4, align 8, !tbaa !115
  br label %159

159:                                              ; preds = %38, %157, %143, %132, %122, %111, %52, %35
  %160 = phi ptr [ null, %35 ], [ %54, %52 ], [ null, %111 ], [ null, %122 ], [ null, %132 ], [ null, %143 ], [ %158, %157 ], [ %33, %38 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  ret ptr %160
}

declare ptr @AcquireMatrixInfo(i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @DestroyMatrixInfo(ptr noundef) local_unnamed_addr #3

declare i32 @NullMatrix(ptr noundef) local_unnamed_addr #3

declare i32 @SetMatrixElement(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @RadonProjection(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = tail call i64 @GetMatrixColumns(ptr noundef %0) #11
  %10 = icmp ugt i64 %9, 1
  br i1 %10, label %11, label %20

11:                                               ; preds = %4, %127
  %12 = phi ptr [ %14, %127 ], [ %0, %4 ]
  %13 = phi i64 [ %128, %127 ], [ 1, %4 ]
  %14 = phi ptr [ %12, %127 ], [ %1, %4 ]
  %15 = call i64 @GetMatrixColumns(ptr noundef %12) #11
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %127

17:                                               ; preds = %11
  %18 = icmp sgt i64 %13, 0
  %19 = shl nsw i64 %13, 1
  br label %24

20:                                               ; preds = %127, %4
  %21 = phi ptr [ %0, %4 ], [ %14, %127 ]
  %22 = call i64 @GetMatrixColumns(ptr noundef %21) #11
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %131, label %169

24:                                               ; preds = %17, %123
  %25 = phi i64 [ 0, %17 ], [ %124, %123 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #11
  br i1 %18, label %26, label %123

26:                                               ; preds = %24, %120
  %27 = phi i64 [ %121, %120 ], [ 0, %24 ]
  %28 = call i64 @GetMatrixRows(ptr noundef %12) #11
  %29 = xor i64 %27, -1
  %30 = sub i64 %27, %28
  %31 = icmp slt i64 %30, -1
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = add nsw i64 %27, %25
  %34 = add i64 %33, %13
  %35 = shl nuw nsw i64 %27, 1
  %36 = add nsw i64 %35, %25
  %37 = or disjoint i64 %36, 1
  br label %49

38:                                               ; preds = %72, %26
  %39 = phi i64 [ 0, %26 ], [ %73, %72 ]
  %40 = call i64 @GetMatrixRows(ptr noundef %12) #11
  %41 = sub i64 %40, %27
  %42 = icmp slt i64 %39, %41
  br i1 %42, label %43, label %77

43:                                               ; preds = %38
  %44 = add nsw i64 %27, %25
  %45 = add i64 %44, %13
  %46 = shl nuw nsw i64 %27, 1
  %47 = add nsw i64 %46, %25
  %48 = or disjoint i64 %47, 1
  br label %86

49:                                               ; preds = %32, %72
  %50 = phi i64 [ 0, %32 ], [ %73, %72 ]
  %51 = call i32 @GetMatrixElement(ptr noundef %12, i64 noundef %33, i64 noundef %50, ptr noundef nonnull %5) #11
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %72, label %53

53:                                               ; preds = %49
  %54 = add nuw nsw i64 %50, %27
  %55 = call i32 @GetMatrixElement(ptr noundef %12, i64 noundef %34, i64 noundef %54, ptr noundef nonnull %6) #11
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %72, label %57

57:                                               ; preds = %53
  %58 = load i16, ptr %5, align 2, !tbaa !59
  %59 = load i16, ptr %6, align 2, !tbaa !59
  %60 = add i16 %59, %58
  store i16 %60, ptr %6, align 2, !tbaa !59
  %61 = call i32 @SetMatrixElement(ptr noundef %14, i64 noundef %36, i64 noundef %50, ptr noundef nonnull %6) #11
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %57
  %64 = add nuw nsw i64 %54, 1
  %65 = call i32 @GetMatrixElement(ptr noundef %12, i64 noundef %34, i64 noundef %64, ptr noundef nonnull %6) #11
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %63
  %68 = load i16, ptr %5, align 2, !tbaa !59
  %69 = load i16, ptr %6, align 2, !tbaa !59
  %70 = add i16 %69, %68
  store i16 %70, ptr %6, align 2, !tbaa !59
  %71 = call i32 @SetMatrixElement(ptr noundef %14, i64 noundef %37, i64 noundef %50, ptr noundef nonnull %6) #11
  br label %72

72:                                               ; preds = %67, %63, %57, %53, %49
  %73 = add nuw nsw i64 %50, 1
  %74 = call i64 @GetMatrixRows(ptr noundef %12) #11
  %75 = add i64 %74, %29
  %76 = icmp slt i64 %73, %75
  br i1 %76, label %49, label %38, !llvm.loop !144

77:                                               ; preds = %102, %38
  %78 = phi i64 [ %39, %38 ], [ %103, %102 ]
  %79 = call i64 @GetMatrixRows(ptr noundef %12) #11
  %80 = icmp slt i64 %78, %79
  br i1 %80, label %81, label %120

81:                                               ; preds = %77
  %82 = add nsw i64 %27, %25
  %83 = shl nuw nsw i64 %27, 1
  %84 = add nsw i64 %83, %25
  %85 = or disjoint i64 %84, 1
  br label %107

86:                                               ; preds = %43, %102
  %87 = phi i64 [ %39, %43 ], [ %103, %102 ]
  %88 = call i32 @GetMatrixElement(ptr noundef %12, i64 noundef %44, i64 noundef %87, ptr noundef nonnull %5) #11
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %102, label %90

90:                                               ; preds = %86
  %91 = add nuw nsw i64 %87, %27
  %92 = call i32 @GetMatrixElement(ptr noundef %12, i64 noundef %45, i64 noundef %91, ptr noundef nonnull %6) #11
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %102, label %94

94:                                               ; preds = %90
  %95 = load i16, ptr %5, align 2, !tbaa !59
  %96 = load i16, ptr %6, align 2, !tbaa !59
  %97 = add i16 %96, %95
  store i16 %97, ptr %6, align 2, !tbaa !59
  %98 = call i32 @SetMatrixElement(ptr noundef %14, i64 noundef %47, i64 noundef %87, ptr noundef nonnull %6) #11
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %94
  %101 = call i32 @SetMatrixElement(ptr noundef %14, i64 noundef %48, i64 noundef %87, ptr noundef nonnull %5) #11
  br label %102

102:                                              ; preds = %100, %94, %90, %86
  %103 = add nuw nsw i64 %87, 1
  %104 = call i64 @GetMatrixRows(ptr noundef %12) #11
  %105 = sub i64 %104, %27
  %106 = icmp slt i64 %103, %105
  br i1 %106, label %86, label %77, !llvm.loop !145

107:                                              ; preds = %81, %116
  %108 = phi i64 [ %78, %81 ], [ %117, %116 ]
  %109 = call i32 @GetMatrixElement(ptr noundef %12, i64 noundef %82, i64 noundef %108, ptr noundef nonnull %5) #11
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %107
  %112 = call i32 @SetMatrixElement(ptr noundef %14, i64 noundef %84, i64 noundef %108, ptr noundef nonnull %5) #11
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %111
  %115 = call i32 @SetMatrixElement(ptr noundef %14, i64 noundef %85, i64 noundef %108, ptr noundef nonnull %5) #11
  br label %116

116:                                              ; preds = %114, %111, %107
  %117 = add nuw nsw i64 %108, 1
  %118 = call i64 @GetMatrixRows(ptr noundef %12) #11
  %119 = icmp slt i64 %117, %118
  br i1 %119, label %107, label %120, !llvm.loop !146

120:                                              ; preds = %116, %77
  %121 = add nuw nsw i64 %27, 1
  %122 = icmp eq i64 %121, %13
  br i1 %122, label %123, label %26, !llvm.loop !147

123:                                              ; preds = %120, %24
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #11
  %124 = add nsw i64 %25, %19
  %125 = call i64 @GetMatrixColumns(ptr noundef %12) #11
  %126 = icmp slt i64 %124, %125
  br i1 %126, label %24, label %127, !llvm.loop !148

127:                                              ; preds = %123, %11
  %128 = shl i64 %13, 1
  %129 = call i64 @GetMatrixColumns(ptr noundef %14) #11
  %130 = icmp ult i64 %128, %129
  br i1 %130, label %11, label %20, !llvm.loop !149

131:                                              ; preds = %20, %159
  %132 = phi i64 [ %166, %159 ], [ 0, %20 ]
  %133 = call i64 @GetMatrixRows(ptr noundef %21) #11
  %134 = add i64 %133, -1
  %135 = icmp sgt i64 %134, 0
  br i1 %135, label %136, label %159

136:                                              ; preds = %131, %153
  %137 = phi i64 [ %154, %153 ], [ 0, %131 ]
  %138 = phi i64 [ %155, %153 ], [ 0, %131 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #11
  %139 = call i32 @GetMatrixElement(ptr noundef %21, i64 noundef %132, i64 noundef %138, ptr noundef nonnull %7) #11
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %153, label %141

141:                                              ; preds = %136
  %142 = add nuw nsw i64 %138, 1
  %143 = call i32 @GetMatrixElement(ptr noundef %21, i64 noundef %132, i64 noundef %142, ptr noundef nonnull %8) #11
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %153, label %145

145:                                              ; preds = %141
  %146 = load i16, ptr %7, align 2, !tbaa !59
  %147 = zext i16 %146 to i64
  %148 = load i16, ptr %8, align 2, !tbaa !59
  %149 = zext i16 %148 to i64
  %150 = sub nsw i64 %147, %149
  %151 = mul nsw i64 %150, %150
  %152 = add i64 %151, %137
  br label %153

153:                                              ; preds = %141, %136, %145
  %154 = phi i64 [ %152, %145 ], [ %137, %136 ], [ %137, %141 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #11
  %155 = add nuw nsw i64 %138, 1
  %156 = call i64 @GetMatrixRows(ptr noundef %21) #11
  %157 = add i64 %156, -1
  %158 = icmp slt i64 %155, %157
  br i1 %158, label %136, label %159, !llvm.loop !150

159:                                              ; preds = %153, %131
  %160 = phi i64 [ 0, %131 ], [ %154, %153 ]
  %161 = call i64 @GetMatrixColumns(ptr noundef %21) #11
  %162 = mul nsw i64 %132, %2
  %163 = getelementptr i64, ptr %3, i64 %161
  %164 = getelementptr i64, ptr %163, i64 %162
  %165 = getelementptr i64, ptr %164, i64 -1
  store i64 %160, ptr %165, align 8, !tbaa !68
  %166 = add nuw nsw i64 %132, 1
  %167 = call i64 @GetMatrixColumns(ptr noundef %21) #11
  %168 = icmp slt i64 %166, %167
  br i1 %168, label %131, label %169, !llvm.loop !151

169:                                              ; preds = %159, %20
  ret void
}

declare i64 @GetMatrixColumns(ptr noundef) local_unnamed_addr #3

declare i64 @GetMatrixRows(ptr noundef) local_unnamed_addr #3

declare i32 @GetMatrixElement(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: hot
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: hot
declare float @DecodePixelGamma(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

declare i32 @ParseAbsoluteGeometry(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { hot "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0,1) }
attributes #13 = { hot nounwind }

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
!34 = !{!35, !39, i64 40}
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
!53 = distinct !{!53, !54, !55}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!"llvm.loop.unroll.disable"}
!56 = distinct !{!56, !54, !55}
!57 = !{!35, !39, i64 48}
!58 = distinct !{!58, !54, !55}
!59 = !{!42, !42, i64 0}
!60 = distinct !{!60, !54, !55}
!61 = !{!41, !42, i64 4}
!62 = !{!41, !42, i64 2}
!63 = !{!41, !42, i64 0}
!64 = distinct !{!64, !54, !55}
!65 = distinct !{!65, !54, !55}
!66 = distinct !{!66, !54, !55}
!67 = distinct !{!67, !54, !55}
!68 = !{!39, !39, i64 0}
!69 = distinct !{!69, !54, !55}
!70 = !{!35, !36, i64 12976}
!71 = !{!72, !43, i64 0}
!72 = !{!"_AffineMatrix", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40}
!73 = !{!72, !43, i64 8}
!74 = !{!72, !43, i64 16}
!75 = !{!72, !43, i64 24}
!76 = !{!77, !78, i64 32}
!77 = !{!"_MagickPixelPacket", !36, i64 0, !36, i64 4, !36, i64 8, !43, i64 16, !39, i64 24, !78, i64 32, !78, i64 36, !78, i64 40, !78, i64 44, !78, i64 48}
!78 = !{!"float", !37, i64 0}
!79 = !{!77, !78, i64 36}
!80 = !{!77, !78, i64 40}
!81 = !{!77, !78, i64 44}
!82 = !{!41, !42, i64 6}
!83 = distinct !{!83, !54, !55}
!84 = distinct !{!84, !54, !55}
!85 = !{!35, !42, i64 84}
!86 = !{!35, !42, i64 82}
!87 = !{!35, !42, i64 80}
!88 = !{!35, !42, i64 86}
!89 = !{!46, !39, i64 0}
!90 = !{!46, !39, i64 8}
!91 = !{!46, !39, i64 16}
!92 = !{!46, !39, i64 24}
!93 = !{i64 0, i64 8, !68, i64 8, i64 8, !68, i64 16, i64 8, !68, i64 24, i64 8, !68}
!94 = !{i64 0, i64 8, !68, i64 8, i64 8, !68, i64 16, i64 8, !68}
!95 = !{i64 0, i64 8, !68, i64 8, i64 8, !68}
!96 = !{i64 0, i64 8, !68}
!97 = distinct !{!97, !54, !55}
!98 = distinct !{!98, !54, !55}
!99 = distinct !{!99, !54, !55}
!100 = distinct !{!100, !54, !55}
!101 = !{!35, !40, i64 568}
!102 = !{!35, !40, i64 576}
!103 = distinct !{!103, !54, !55}
!104 = distinct !{!104, !54, !55}
!105 = distinct !{!105, !54, !55}
!106 = distinct !{!106, !54, !55}
!107 = distinct !{!107, !54, !55}
!108 = distinct !{!108, !54, !55}
!109 = distinct !{!109, !54, !55}
!110 = distinct !{!110, !54, !55}
!111 = distinct !{!111, !54, !55}
!112 = !{!35, !36, i64 13184}
!113 = !{!35, !36, i64 32}
!114 = !{!35, !36, i64 416}
!115 = !{!40, !40, i64 0}
!116 = !{i32 0, i32 2}
!117 = !{!35, !36, i64 4}
!118 = !{!77, !36, i64 4}
!119 = !{!77, !78, i64 48}
!120 = !{i64 0, i64 4, !121, i64 4, i64 4, !121, i64 8, i64 4, !121, i64 12, i64 4, !121, i64 16, i64 4, !121}
!121 = !{!78, !78, i64 0}
!122 = !{i64 0, i64 4, !121, i64 4, i64 4, !121, i64 8, i64 4, !121, i64 12, i64 4, !121}
!123 = !{i64 0, i64 4, !121, i64 4, i64 4, !121, i64 8, i64 4, !121}
!124 = !{i64 0, i64 4, !121, i64 4, i64 4, !121}
!125 = !{i64 0, i64 4, !121}
!126 = !{!35, !36, i64 0}
!127 = distinct !{!127, !54, !55}
!128 = distinct !{!128, !54, !55}
!129 = distinct !{!129, !54, !55}
!130 = distinct !{!130, !54, !55}
!131 = distinct !{!131, !54, !55}
!132 = distinct !{!132, !54, !55}
!133 = distinct !{!133, !54, !55}
!134 = distinct !{!134, !54, !55}
!135 = distinct !{!135, !54, !55}
!136 = distinct !{!136, !54, !55}
!137 = !{!138, !43, i64 0}
!138 = !{!"_PointInfo", !43, i64 0, !43, i64 8}
!139 = !{!138, !43, i64 8}
!140 = distinct !{!140, !54, !55}
!141 = distinct !{!141, !54, !55}
!142 = distinct !{!142, !54, !55}
!143 = distinct !{!143, !54, !55}
!144 = distinct !{!144, !54, !55}
!145 = distinct !{!145, !54, !55}
!146 = distinct !{!146, !54, !55}
!147 = distinct !{!147, !54, !55}
!148 = distinct !{!148, !54, !55}
!149 = distinct !{!149, !54, !55}
!150 = distinct !{!150, !54, !55}
!151 = distinct !{!151, !54, !55}
