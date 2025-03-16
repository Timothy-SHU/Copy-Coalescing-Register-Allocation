; ModuleID = 'decode_i386.c'
source_filename = "decode_i386.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.mpstr = type { ptr, ptr, i32, i32, i32, %struct.frame, [2 x [2304 x i8]], [2 x [2 x [576 x double]]], [2 x i32], i64, i32, [2 x [2 x [272 x double]]], i32 }
%struct.frame = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@gmp = external local_unnamed_addr global ptr, align 8
@decwin = external local_unnamed_addr global [544 x double], align 16

; Function Attrs: nounwind uwtable
define dso_local i32 @synth_1to1_mono(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = alloca [64 x i16], align 16
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #4
  store i32 0, ptr %5, align 4, !tbaa !5
  %6 = call i32 @synth_1to1(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %7 = load i32, ptr %2, align 4, !tbaa !5
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i8, ptr %1, i64 %8
  br label %10

10:                                               ; preds = %3, %10
  %11 = phi ptr [ %9, %3 ], [ %15, %10 ]
  %12 = phi i32 [ 0, %3 ], [ %17, %10 ]
  %13 = phi ptr [ %4, %3 ], [ %16, %10 ]
  %14 = load i16, ptr %13, align 2, !tbaa !9
  store i16 %14, ptr %11, align 2, !tbaa !9
  %15 = getelementptr inbounds i8, ptr %11, i64 2
  %16 = getelementptr inbounds i16, ptr %13, i64 2
  %17 = add nuw nsw i32 %12, 1
  %18 = icmp eq i32 %17, 32
  br i1 %18, label %19, label %10, !llvm.loop !11

19:                                               ; preds = %10
  %20 = add nsw i32 %7, 64
  store i32 %20, ptr %2, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #4
  ret i32 %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @synth_1to1(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = load i32, ptr %3, align 4, !tbaa !5
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i8, ptr %2, i64 %6
  %8 = load ptr, ptr @gmp, align 8, !tbaa !13
  %9 = getelementptr inbounds %struct.mpstr, ptr %8, i64 0, i32 12
  %10 = load i32, ptr %9, align 8, !tbaa !15
  %11 = icmp ne i32 %1, 0
  %12 = getelementptr inbounds %struct.mpstr, ptr %8, i64 0, i32 11, i64 1
  %13 = add i32 %10, 15
  %14 = and i32 %13, 15
  %15 = getelementptr inbounds %struct.mpstr, ptr %8, i64 0, i32 11
  %16 = select i1 %11, i32 %10, i32 %14
  %17 = zext i1 %11 to i64
  %18 = getelementptr inbounds i16, ptr %7, i64 %17
  %19 = select i1 %11, ptr %12, ptr %15
  %20 = and i32 %16, 1
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr inbounds [272 x double], ptr %19, i64 1
  br i1 %21, label %30, label %23

23:                                               ; preds = %4
  %24 = add nsw i32 %16, 1
  %25 = and i32 %24, 14
  %26 = zext nneg i32 %25 to i64
  %27 = getelementptr inbounds double, ptr %22, i64 %26
  %28 = sext i32 %16 to i64
  %29 = getelementptr inbounds double, ptr %19, i64 %28
  tail call void @dct64(ptr noundef nonnull %27, ptr noundef nonnull %29, ptr noundef %0) #4
  br label %36

30:                                               ; preds = %4
  %31 = or disjoint i32 %16, 1
  %32 = sext i32 %16 to i64
  %33 = getelementptr inbounds double, ptr %19, i64 %32
  %34 = getelementptr inbounds double, ptr %22, i64 %32
  %35 = getelementptr inbounds double, ptr %34, i64 1
  tail call void @dct64(ptr noundef nonnull %33, ptr noundef nonnull %35, ptr noundef %0) #4
  br label %36

36:                                               ; preds = %30, %23
  %37 = phi ptr [ %19, %23 ], [ %22, %30 ]
  %38 = phi i32 [ %16, %23 ], [ %31, %30 ]
  %39 = load ptr, ptr @gmp, align 8, !tbaa !13
  %40 = getelementptr inbounds %struct.mpstr, ptr %39, i64 0, i32 12
  store i32 %16, ptr %40, align 8, !tbaa !15
  %41 = sub nsw i32 0, %38
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds double, ptr getelementptr inbounds ([544 x double], ptr @decwin, i64 0, i64 16), i64 %42
  br label %44

44:                                               ; preds = %36, %145
  %45 = phi ptr [ %43, %36 ], [ %149, %145 ]
  %46 = phi i32 [ 16, %36 ], [ %147, %145 ]
  %47 = phi i32 [ 0, %36 ], [ %146, %145 ]
  %48 = phi ptr [ %37, %36 ], [ %148, %145 ]
  %49 = phi ptr [ %18, %36 ], [ %150, %145 ]
  %50 = load double, ptr %45, align 8, !tbaa !19
  %51 = load double, ptr %48, align 8, !tbaa !19
  %52 = fmul double %50, %51
  %53 = getelementptr inbounds double, ptr %45, i64 1
  %54 = load double, ptr %53, align 8, !tbaa !19
  %55 = getelementptr inbounds double, ptr %48, i64 1
  %56 = load double, ptr %55, align 8, !tbaa !19
  %57 = fneg double %54
  %58 = tail call double @llvm.fmuladd.f64(double %57, double %56, double %52)
  %59 = getelementptr inbounds double, ptr %45, i64 2
  %60 = load double, ptr %59, align 8, !tbaa !19
  %61 = getelementptr inbounds double, ptr %48, i64 2
  %62 = load double, ptr %61, align 8, !tbaa !19
  %63 = tail call double @llvm.fmuladd.f64(double %60, double %62, double %58)
  %64 = getelementptr inbounds double, ptr %45, i64 3
  %65 = load double, ptr %64, align 8, !tbaa !19
  %66 = getelementptr inbounds double, ptr %48, i64 3
  %67 = load double, ptr %66, align 8, !tbaa !19
  %68 = fneg double %65
  %69 = tail call double @llvm.fmuladd.f64(double %68, double %67, double %63)
  %70 = getelementptr inbounds double, ptr %45, i64 4
  %71 = load double, ptr %70, align 8, !tbaa !19
  %72 = getelementptr inbounds double, ptr %48, i64 4
  %73 = load double, ptr %72, align 8, !tbaa !19
  %74 = tail call double @llvm.fmuladd.f64(double %71, double %73, double %69)
  %75 = getelementptr inbounds double, ptr %45, i64 5
  %76 = load double, ptr %75, align 8, !tbaa !19
  %77 = getelementptr inbounds double, ptr %48, i64 5
  %78 = load double, ptr %77, align 8, !tbaa !19
  %79 = fneg double %76
  %80 = tail call double @llvm.fmuladd.f64(double %79, double %78, double %74)
  %81 = getelementptr inbounds double, ptr %45, i64 6
  %82 = load double, ptr %81, align 8, !tbaa !19
  %83 = getelementptr inbounds double, ptr %48, i64 6
  %84 = load double, ptr %83, align 8, !tbaa !19
  %85 = tail call double @llvm.fmuladd.f64(double %82, double %84, double %80)
  %86 = getelementptr inbounds double, ptr %45, i64 7
  %87 = load double, ptr %86, align 8, !tbaa !19
  %88 = getelementptr inbounds double, ptr %48, i64 7
  %89 = load double, ptr %88, align 8, !tbaa !19
  %90 = fneg double %87
  %91 = tail call double @llvm.fmuladd.f64(double %90, double %89, double %85)
  %92 = getelementptr inbounds double, ptr %45, i64 8
  %93 = load double, ptr %92, align 8, !tbaa !19
  %94 = getelementptr inbounds double, ptr %48, i64 8
  %95 = load double, ptr %94, align 8, !tbaa !19
  %96 = tail call double @llvm.fmuladd.f64(double %93, double %95, double %91)
  %97 = getelementptr inbounds double, ptr %45, i64 9
  %98 = load double, ptr %97, align 8, !tbaa !19
  %99 = getelementptr inbounds double, ptr %48, i64 9
  %100 = load double, ptr %99, align 8, !tbaa !19
  %101 = fneg double %98
  %102 = tail call double @llvm.fmuladd.f64(double %101, double %100, double %96)
  %103 = getelementptr inbounds double, ptr %45, i64 10
  %104 = load double, ptr %103, align 8, !tbaa !19
  %105 = getelementptr inbounds double, ptr %48, i64 10
  %106 = load double, ptr %105, align 8, !tbaa !19
  %107 = tail call double @llvm.fmuladd.f64(double %104, double %106, double %102)
  %108 = getelementptr inbounds double, ptr %45, i64 11
  %109 = load double, ptr %108, align 8, !tbaa !19
  %110 = getelementptr inbounds double, ptr %48, i64 11
  %111 = load double, ptr %110, align 8, !tbaa !19
  %112 = fneg double %109
  %113 = tail call double @llvm.fmuladd.f64(double %112, double %111, double %107)
  %114 = getelementptr inbounds double, ptr %45, i64 12
  %115 = load double, ptr %114, align 8, !tbaa !19
  %116 = getelementptr inbounds double, ptr %48, i64 12
  %117 = load double, ptr %116, align 8, !tbaa !19
  %118 = tail call double @llvm.fmuladd.f64(double %115, double %117, double %113)
  %119 = getelementptr inbounds double, ptr %45, i64 13
  %120 = load double, ptr %119, align 8, !tbaa !19
  %121 = getelementptr inbounds double, ptr %48, i64 13
  %122 = load double, ptr %121, align 8, !tbaa !19
  %123 = fneg double %120
  %124 = tail call double @llvm.fmuladd.f64(double %123, double %122, double %118)
  %125 = getelementptr inbounds double, ptr %45, i64 14
  %126 = load double, ptr %125, align 8, !tbaa !19
  %127 = getelementptr inbounds double, ptr %48, i64 14
  %128 = load double, ptr %127, align 8, !tbaa !19
  %129 = tail call double @llvm.fmuladd.f64(double %126, double %128, double %124)
  %130 = getelementptr inbounds double, ptr %45, i64 15
  %131 = load double, ptr %130, align 8, !tbaa !19
  %132 = getelementptr inbounds double, ptr %48, i64 15
  %133 = load double, ptr %132, align 8, !tbaa !19
  %134 = fneg double %131
  %135 = tail call double @llvm.fmuladd.f64(double %134, double %133, double %129)
  %136 = fcmp ogt double %135, 3.276700e+04
  br i1 %136, label %137, label %139

137:                                              ; preds = %44
  store i16 32767, ptr %49, align 2, !tbaa !9
  %138 = add nsw i32 %47, 1
  br label %145

139:                                              ; preds = %44
  %140 = fcmp olt double %135, -3.276800e+04
  br i1 %140, label %141, label %143

141:                                              ; preds = %139
  store i16 -32768, ptr %49, align 2, !tbaa !9
  %142 = add nsw i32 %47, 1
  br label %145

143:                                              ; preds = %139
  %144 = fptosi double %135 to i16
  store i16 %144, ptr %49, align 2, !tbaa !9
  br label %145

145:                                              ; preds = %141, %143, %137
  %146 = phi i32 [ %138, %137 ], [ %142, %141 ], [ %47, %143 ]
  %147 = add nsw i32 %46, -1
  %148 = getelementptr inbounds double, ptr %48, i64 16
  %149 = getelementptr inbounds double, ptr %45, i64 32
  %150 = getelementptr inbounds i16, ptr %49, i64 2
  %151 = icmp eq i32 %147, 0
  br i1 %151, label %152, label %44, !llvm.loop !21

152:                                              ; preds = %145
  %153 = load double, ptr %149, align 8, !tbaa !19
  %154 = load double, ptr %148, align 8, !tbaa !19
  %155 = fmul double %153, %154
  %156 = getelementptr inbounds double, ptr %45, i64 34
  %157 = load double, ptr %156, align 8, !tbaa !19
  %158 = getelementptr inbounds double, ptr %48, i64 18
  %159 = load double, ptr %158, align 8, !tbaa !19
  %160 = tail call double @llvm.fmuladd.f64(double %157, double %159, double %155)
  %161 = getelementptr inbounds double, ptr %45, i64 36
  %162 = load double, ptr %161, align 8, !tbaa !19
  %163 = getelementptr inbounds double, ptr %48, i64 20
  %164 = load double, ptr %163, align 8, !tbaa !19
  %165 = tail call double @llvm.fmuladd.f64(double %162, double %164, double %160)
  %166 = getelementptr inbounds double, ptr %45, i64 38
  %167 = load double, ptr %166, align 8, !tbaa !19
  %168 = getelementptr inbounds double, ptr %48, i64 22
  %169 = load double, ptr %168, align 8, !tbaa !19
  %170 = tail call double @llvm.fmuladd.f64(double %167, double %169, double %165)
  %171 = getelementptr inbounds double, ptr %45, i64 40
  %172 = load double, ptr %171, align 8, !tbaa !19
  %173 = getelementptr inbounds double, ptr %48, i64 24
  %174 = load double, ptr %173, align 8, !tbaa !19
  %175 = tail call double @llvm.fmuladd.f64(double %172, double %174, double %170)
  %176 = getelementptr inbounds double, ptr %45, i64 42
  %177 = load double, ptr %176, align 8, !tbaa !19
  %178 = getelementptr inbounds double, ptr %48, i64 26
  %179 = load double, ptr %178, align 8, !tbaa !19
  %180 = tail call double @llvm.fmuladd.f64(double %177, double %179, double %175)
  %181 = getelementptr inbounds double, ptr %45, i64 44
  %182 = load double, ptr %181, align 8, !tbaa !19
  %183 = getelementptr inbounds double, ptr %48, i64 28
  %184 = load double, ptr %183, align 8, !tbaa !19
  %185 = tail call double @llvm.fmuladd.f64(double %182, double %184, double %180)
  %186 = getelementptr inbounds double, ptr %45, i64 46
  %187 = load double, ptr %186, align 8, !tbaa !19
  %188 = getelementptr inbounds double, ptr %48, i64 30
  %189 = load double, ptr %188, align 8, !tbaa !19
  %190 = tail call double @llvm.fmuladd.f64(double %187, double %189, double %185)
  %191 = fcmp ogt double %190, 3.276700e+04
  br i1 %191, label %192, label %194

192:                                              ; preds = %152
  store i16 32767, ptr %150, align 2, !tbaa !9
  %193 = add nsw i32 %146, 1
  br label %200

194:                                              ; preds = %152
  %195 = fcmp olt double %190, -3.276800e+04
  br i1 %195, label %196, label %198

196:                                              ; preds = %194
  store i16 -32768, ptr %150, align 2, !tbaa !9
  %197 = add nsw i32 %146, 1
  br label %200

198:                                              ; preds = %194
  %199 = fptosi double %190 to i16
  store i16 %199, ptr %150, align 2, !tbaa !9
  br label %200

200:                                              ; preds = %196, %198, %192
  %201 = phi i32 [ %193, %192 ], [ %197, %196 ], [ %146, %198 ]
  %202 = shl i32 %38, 1
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds double, ptr %45, i64 %203
  %205 = getelementptr inbounds i16, ptr %49, i64 4
  br label %206

206:                                              ; preds = %200, %316
  %207 = phi ptr [ %205, %200 ], [ %321, %316 ]
  %208 = phi ptr [ %48, %200 ], [ %320, %316 ]
  %209 = phi ptr [ %204, %200 ], [ %319, %316 ]
  %210 = phi i32 [ 15, %200 ], [ %318, %316 ]
  %211 = phi i32 [ %201, %200 ], [ %317, %316 ]
  %212 = phi ptr [ %148, %200 ], [ %208, %316 ]
  %213 = getelementptr inbounds double, ptr %209, i64 -1
  %214 = load double, ptr %213, align 8, !tbaa !19
  %215 = fneg double %214
  %216 = load double, ptr %208, align 8, !tbaa !19
  %217 = fmul double %216, %215
  %218 = getelementptr inbounds double, ptr %209, i64 -2
  %219 = load double, ptr %218, align 8, !tbaa !19
  %220 = getelementptr inbounds double, ptr %212, i64 -15
  %221 = load double, ptr %220, align 8, !tbaa !19
  %222 = fneg double %219
  %223 = tail call double @llvm.fmuladd.f64(double %222, double %221, double %217)
  %224 = getelementptr inbounds double, ptr %209, i64 -3
  %225 = load double, ptr %224, align 8, !tbaa !19
  %226 = getelementptr inbounds double, ptr %212, i64 -14
  %227 = load double, ptr %226, align 8, !tbaa !19
  %228 = fneg double %225
  %229 = tail call double @llvm.fmuladd.f64(double %228, double %227, double %223)
  %230 = getelementptr inbounds double, ptr %209, i64 -4
  %231 = load double, ptr %230, align 8, !tbaa !19
  %232 = getelementptr inbounds double, ptr %212, i64 -13
  %233 = load double, ptr %232, align 8, !tbaa !19
  %234 = fneg double %231
  %235 = tail call double @llvm.fmuladd.f64(double %234, double %233, double %229)
  %236 = getelementptr inbounds double, ptr %209, i64 -5
  %237 = load double, ptr %236, align 8, !tbaa !19
  %238 = getelementptr inbounds double, ptr %212, i64 -12
  %239 = load double, ptr %238, align 8, !tbaa !19
  %240 = fneg double %237
  %241 = tail call double @llvm.fmuladd.f64(double %240, double %239, double %235)
  %242 = getelementptr inbounds double, ptr %209, i64 -6
  %243 = load double, ptr %242, align 8, !tbaa !19
  %244 = getelementptr inbounds double, ptr %212, i64 -11
  %245 = load double, ptr %244, align 8, !tbaa !19
  %246 = fneg double %243
  %247 = tail call double @llvm.fmuladd.f64(double %246, double %245, double %241)
  %248 = getelementptr inbounds double, ptr %209, i64 -7
  %249 = load double, ptr %248, align 8, !tbaa !19
  %250 = getelementptr inbounds double, ptr %212, i64 -10
  %251 = load double, ptr %250, align 8, !tbaa !19
  %252 = fneg double %249
  %253 = tail call double @llvm.fmuladd.f64(double %252, double %251, double %247)
  %254 = getelementptr inbounds double, ptr %209, i64 -8
  %255 = load double, ptr %254, align 8, !tbaa !19
  %256 = getelementptr inbounds double, ptr %212, i64 -9
  %257 = load double, ptr %256, align 8, !tbaa !19
  %258 = fneg double %255
  %259 = tail call double @llvm.fmuladd.f64(double %258, double %257, double %253)
  %260 = getelementptr inbounds double, ptr %209, i64 -9
  %261 = load double, ptr %260, align 8, !tbaa !19
  %262 = getelementptr inbounds double, ptr %212, i64 -8
  %263 = load double, ptr %262, align 8, !tbaa !19
  %264 = fneg double %261
  %265 = tail call double @llvm.fmuladd.f64(double %264, double %263, double %259)
  %266 = getelementptr inbounds double, ptr %209, i64 -10
  %267 = load double, ptr %266, align 8, !tbaa !19
  %268 = getelementptr inbounds double, ptr %212, i64 -7
  %269 = load double, ptr %268, align 8, !tbaa !19
  %270 = fneg double %267
  %271 = tail call double @llvm.fmuladd.f64(double %270, double %269, double %265)
  %272 = getelementptr inbounds double, ptr %209, i64 -11
  %273 = load double, ptr %272, align 8, !tbaa !19
  %274 = getelementptr inbounds double, ptr %212, i64 -6
  %275 = load double, ptr %274, align 8, !tbaa !19
  %276 = fneg double %273
  %277 = tail call double @llvm.fmuladd.f64(double %276, double %275, double %271)
  %278 = getelementptr inbounds double, ptr %209, i64 -12
  %279 = load double, ptr %278, align 8, !tbaa !19
  %280 = getelementptr inbounds double, ptr %212, i64 -5
  %281 = load double, ptr %280, align 8, !tbaa !19
  %282 = fneg double %279
  %283 = tail call double @llvm.fmuladd.f64(double %282, double %281, double %277)
  %284 = getelementptr inbounds double, ptr %209, i64 -13
  %285 = load double, ptr %284, align 8, !tbaa !19
  %286 = getelementptr inbounds double, ptr %212, i64 -4
  %287 = load double, ptr %286, align 8, !tbaa !19
  %288 = fneg double %285
  %289 = tail call double @llvm.fmuladd.f64(double %288, double %287, double %283)
  %290 = getelementptr inbounds double, ptr %209, i64 -14
  %291 = load double, ptr %290, align 8, !tbaa !19
  %292 = getelementptr inbounds double, ptr %212, i64 -3
  %293 = load double, ptr %292, align 8, !tbaa !19
  %294 = fneg double %291
  %295 = tail call double @llvm.fmuladd.f64(double %294, double %293, double %289)
  %296 = getelementptr inbounds double, ptr %209, i64 -15
  %297 = load double, ptr %296, align 8, !tbaa !19
  %298 = getelementptr inbounds double, ptr %212, i64 -2
  %299 = load double, ptr %298, align 8, !tbaa !19
  %300 = fneg double %297
  %301 = tail call double @llvm.fmuladd.f64(double %300, double %299, double %295)
  %302 = load double, ptr %209, align 8, !tbaa !19
  %303 = getelementptr inbounds double, ptr %212, i64 -1
  %304 = load double, ptr %303, align 8, !tbaa !19
  %305 = fneg double %302
  %306 = tail call double @llvm.fmuladd.f64(double %305, double %304, double %301)
  %307 = fcmp ogt double %306, 3.276700e+04
  br i1 %307, label %308, label %310

308:                                              ; preds = %206
  store i16 32767, ptr %207, align 2, !tbaa !9
  %309 = add nsw i32 %211, 1
  br label %316

310:                                              ; preds = %206
  %311 = fcmp olt double %306, -3.276800e+04
  br i1 %311, label %312, label %314

312:                                              ; preds = %310
  store i16 -32768, ptr %207, align 2, !tbaa !9
  %313 = add nsw i32 %211, 1
  br label %316

314:                                              ; preds = %310
  %315 = fptosi double %306 to i16
  store i16 %315, ptr %207, align 2, !tbaa !9
  br label %316

316:                                              ; preds = %312, %314, %308
  %317 = phi i32 [ %309, %308 ], [ %313, %312 ], [ %211, %314 ]
  %318 = add nsw i32 %210, -1
  %319 = getelementptr inbounds double, ptr %209, i64 -32
  %320 = getelementptr inbounds double, ptr %208, i64 -16
  %321 = getelementptr inbounds i16, ptr %207, i64 2
  %322 = icmp eq i32 %318, 0
  br i1 %322, label %323, label %206, !llvm.loop !22

323:                                              ; preds = %316
  %324 = load i32, ptr %3, align 4, !tbaa !5
  %325 = add nsw i32 %324, 128
  store i32 %325, ptr %3, align 4, !tbaa !5
  ret i32 %317
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @dct64(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"short", !7, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = !{!14, !14, i64 0}
!14 = !{!"any pointer", !7, i64 0}
!15 = !{!16, !6, i64 31872}
!16 = !{!"mpstr", !14, i64 0, !14, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !17, i64 28, !7, i64 100, !7, i64 4712, !7, i64 23144, !18, i64 23152, !6, i64 23160, !7, i64 23168, !6, i64 31872}
!17 = !{!"frame", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68}
!18 = !{!"long", !7, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"double", !7, i64 0}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !12}
