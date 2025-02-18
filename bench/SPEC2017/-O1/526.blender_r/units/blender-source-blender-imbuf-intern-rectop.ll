; ModuleID = 'blender/source/blender/imbuf/intern/rectop.c'
source_filename = "blender/source/blender/imbuf/intern/rectop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.DDSData = type { i32, i32, ptr, i32 }

; Function Attrs: nounwind uwtable
define dso_local void @IMB_blend_color_byte(ptr noundef writeonly %0, ptr noundef readonly %1, ptr noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  switch i32 %3, label %1018 [
    i32 0, label %5
    i32 1, label %73
    i32 2, label %135
    i32 3, label %197
    i32 4, label %260
    i32 5, label %323
    i32 6, label %386
    i32 7, label %423
    i32 8, label %460
    i32 9, label %511
    i32 10, label %565
    i32 11, label %611
    i32 12, label %648
    i32 13, label %693
    i32 14, label %734
    i32 15, label %784
    i32 17, label %833
    i32 16, label %882
    i32 18, label %938
    i32 19, label %974
    i32 23, label %1014
    i32 20, label %1015
    i32 21, label %1016
    i32 22, label %1017
  ]

5:                                                ; preds = %4
  %6 = getelementptr inbounds i8, ptr %2, i64 3
  %7 = load i8, ptr %6, align 1, !tbaa !34
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %62, label %9

9:                                                ; preds = %5
  %10 = zext i8 %7 to i32
  %11 = xor i32 %10, 255
  %12 = getelementptr inbounds i8, ptr %1, i64 3
  %13 = load i8, ptr %12, align 1, !tbaa !34
  %14 = zext i8 %13 to i32
  %15 = mul nuw nsw i32 %11, %14
  %16 = load i8, ptr %1, align 1, !tbaa !34
  %17 = zext i8 %16 to i32
  %18 = mul nuw nsw i32 %15, %17
  %19 = mul nuw nsw i32 %10, 255
  %20 = load i8, ptr %2, align 1, !tbaa !34
  %21 = zext i8 %20 to i32
  %22 = mul nuw nsw i32 %19, %21
  %23 = add nuw nsw i32 %22, %18
  %24 = getelementptr inbounds i8, ptr %1, i64 1
  %25 = load i8, ptr %24, align 1, !tbaa !34
  %26 = zext i8 %25 to i32
  %27 = mul nuw nsw i32 %15, %26
  %28 = getelementptr inbounds i8, ptr %2, i64 1
  %29 = load i8, ptr %28, align 1, !tbaa !34
  %30 = zext i8 %29 to i32
  %31 = mul nuw nsw i32 %19, %30
  %32 = add nuw nsw i32 %31, %27
  %33 = getelementptr inbounds i8, ptr %1, i64 2
  %34 = load i8, ptr %33, align 1, !tbaa !34
  %35 = zext i8 %34 to i32
  %36 = mul nuw nsw i32 %15, %35
  %37 = getelementptr inbounds i8, ptr %2, i64 2
  %38 = load i8, ptr %37, align 1, !tbaa !34
  %39 = zext i8 %38 to i32
  %40 = mul nuw nsw i32 %19, %39
  %41 = add nuw nsw i32 %40, %36
  %42 = add nuw nsw i32 %15, %19
  %43 = shl nuw nsw i32 %23, 1
  %44 = add nuw nsw i32 %43, %42
  %45 = shl nuw nsw i32 %42, 1
  %46 = udiv i32 %44, %45
  %47 = trunc i32 %46 to i8
  store i8 %47, ptr %0, align 1, !tbaa !34
  %48 = shl nuw nsw i32 %32, 1
  %49 = add nuw nsw i32 %48, %42
  %50 = udiv i32 %49, %45
  %51 = trunc i32 %50 to i8
  %52 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %51, ptr %52, align 1, !tbaa !34
  %53 = shl nuw nsw i32 %41, 1
  %54 = add nuw nsw i32 %53, %42
  %55 = udiv i32 %54, %45
  %56 = trunc i32 %55 to i8
  %57 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %56, ptr %57, align 1, !tbaa !34
  %58 = add nuw nsw i32 %45, 255
  %59 = udiv i32 %58, 510
  %60 = trunc i32 %59 to i8
  %61 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %60, ptr %61, align 1, !tbaa !34
  br label %1029

62:                                               ; preds = %5
  %63 = load i8, ptr %1, align 1, !tbaa !34
  store i8 %63, ptr %0, align 1, !tbaa !34
  %64 = getelementptr inbounds i8, ptr %1, i64 1
  %65 = load i8, ptr %64, align 1, !tbaa !34
  %66 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %65, ptr %66, align 1, !tbaa !34
  %67 = getelementptr inbounds i8, ptr %1, i64 2
  %68 = load i8, ptr %67, align 1, !tbaa !34
  %69 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %68, ptr %69, align 1, !tbaa !34
  %70 = getelementptr inbounds i8, ptr %1, i64 3
  %71 = load i8, ptr %70, align 1, !tbaa !34
  %72 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %71, ptr %72, align 1, !tbaa !34
  br label %1029

73:                                               ; preds = %4
  %74 = getelementptr inbounds i8, ptr %2, i64 3
  %75 = load i8, ptr %74, align 1, !tbaa !34
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %124, label %77

77:                                               ; preds = %73
  %78 = zext i8 %75 to i32
  %79 = load i8, ptr %1, align 1, !tbaa !34
  %80 = zext i8 %79 to i32
  %81 = mul nuw nsw i32 %80, 255
  %82 = load i8, ptr %2, align 1, !tbaa !34
  %83 = zext i8 %82 to i32
  %84 = mul nuw nsw i32 %83, %78
  %85 = add nuw nsw i32 %84, %81
  %86 = getelementptr inbounds i8, ptr %1, i64 1
  %87 = load i8, ptr %86, align 1, !tbaa !34
  %88 = zext i8 %87 to i32
  %89 = mul nuw nsw i32 %88, 255
  %90 = getelementptr inbounds i8, ptr %2, i64 1
  %91 = load i8, ptr %90, align 1, !tbaa !34
  %92 = zext i8 %91 to i32
  %93 = mul nuw nsw i32 %92, %78
  %94 = add nuw nsw i32 %93, %89
  %95 = getelementptr inbounds i8, ptr %1, i64 2
  %96 = load i8, ptr %95, align 1, !tbaa !34
  %97 = zext i8 %96 to i32
  %98 = mul nuw nsw i32 %97, 255
  %99 = getelementptr inbounds i8, ptr %2, i64 2
  %100 = load i8, ptr %99, align 1, !tbaa !34
  %101 = zext i8 %100 to i32
  %102 = mul nuw nsw i32 %101, %78
  %103 = add nuw nsw i32 %102, %98
  %104 = shl nuw nsw i32 %85, 1
  %105 = add nuw nsw i32 %104, 255
  %106 = udiv i32 %105, 510
  %107 = tail call i32 @llvm.smin.i32(i32 %106, i32 255)
  %108 = trunc i32 %107 to i8
  store i8 %108, ptr %0, align 1, !tbaa !34
  %109 = shl nuw nsw i32 %94, 1
  %110 = add nuw nsw i32 %109, 255
  %111 = udiv i32 %110, 510
  %112 = tail call i32 @llvm.smin.i32(i32 %111, i32 255)
  %113 = trunc i32 %112 to i8
  %114 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %113, ptr %114, align 1, !tbaa !34
  %115 = shl nuw nsw i32 %103, 1
  %116 = add nuw nsw i32 %115, 255
  %117 = udiv i32 %116, 510
  %118 = tail call i32 @llvm.smin.i32(i32 %117, i32 255)
  %119 = trunc i32 %118 to i8
  %120 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %119, ptr %120, align 1, !tbaa !34
  %121 = getelementptr inbounds i8, ptr %1, i64 3
  %122 = load i8, ptr %121, align 1, !tbaa !34
  %123 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %122, ptr %123, align 1, !tbaa !34
  br label %1029

124:                                              ; preds = %73
  %125 = load i8, ptr %1, align 1, !tbaa !34
  store i8 %125, ptr %0, align 1, !tbaa !34
  %126 = getelementptr inbounds i8, ptr %1, i64 1
  %127 = load i8, ptr %126, align 1, !tbaa !34
  %128 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %127, ptr %128, align 1, !tbaa !34
  %129 = getelementptr inbounds i8, ptr %1, i64 2
  %130 = load i8, ptr %129, align 1, !tbaa !34
  %131 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %130, ptr %131, align 1, !tbaa !34
  %132 = getelementptr inbounds i8, ptr %1, i64 3
  %133 = load i8, ptr %132, align 1, !tbaa !34
  %134 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %133, ptr %134, align 1, !tbaa !34
  br label %1029

135:                                              ; preds = %4
  %136 = getelementptr inbounds i8, ptr %2, i64 3
  %137 = load i8, ptr %136, align 1, !tbaa !34
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %186, label %139

139:                                              ; preds = %135
  %140 = zext i8 %137 to i32
  %141 = load i8, ptr %1, align 1, !tbaa !34
  %142 = zext i8 %141 to i32
  %143 = mul nuw nsw i32 %142, 255
  %144 = load i8, ptr %2, align 1, !tbaa !34
  %145 = zext i8 %144 to i32
  %146 = mul nuw nsw i32 %145, %140
  %147 = sub nsw i32 %143, %146
  %148 = getelementptr inbounds i8, ptr %1, i64 1
  %149 = load i8, ptr %148, align 1, !tbaa !34
  %150 = zext i8 %149 to i32
  %151 = mul nuw nsw i32 %150, 255
  %152 = getelementptr inbounds i8, ptr %2, i64 1
  %153 = load i8, ptr %152, align 1, !tbaa !34
  %154 = zext i8 %153 to i32
  %155 = mul nuw nsw i32 %154, %140
  %156 = sub nsw i32 %151, %155
  %157 = getelementptr inbounds i8, ptr %1, i64 2
  %158 = load i8, ptr %157, align 1, !tbaa !34
  %159 = zext i8 %158 to i32
  %160 = mul nuw nsw i32 %159, 255
  %161 = getelementptr inbounds i8, ptr %2, i64 2
  %162 = load i8, ptr %161, align 1, !tbaa !34
  %163 = zext i8 %162 to i32
  %164 = mul nuw nsw i32 %163, %140
  %165 = sub nsw i32 %160, %164
  %166 = shl nsw i32 %147, 1
  %167 = add nsw i32 %166, 255
  %168 = sdiv i32 %167, 510
  %169 = tail call i32 @llvm.smax.i32(i32 %168, i32 0)
  %170 = trunc i32 %169 to i8
  store i8 %170, ptr %0, align 1, !tbaa !34
  %171 = shl nsw i32 %156, 1
  %172 = add nsw i32 %171, 255
  %173 = sdiv i32 %172, 510
  %174 = tail call i32 @llvm.smax.i32(i32 %173, i32 0)
  %175 = trunc i32 %174 to i8
  %176 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %175, ptr %176, align 1, !tbaa !34
  %177 = shl nsw i32 %165, 1
  %178 = add nsw i32 %177, 255
  %179 = sdiv i32 %178, 510
  %180 = tail call i32 @llvm.smax.i32(i32 %179, i32 0)
  %181 = trunc i32 %180 to i8
  %182 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %181, ptr %182, align 1, !tbaa !34
  %183 = getelementptr inbounds i8, ptr %1, i64 3
  %184 = load i8, ptr %183, align 1, !tbaa !34
  %185 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %184, ptr %185, align 1, !tbaa !34
  br label %1029

186:                                              ; preds = %135
  %187 = load i8, ptr %1, align 1, !tbaa !34
  store i8 %187, ptr %0, align 1, !tbaa !34
  %188 = getelementptr inbounds i8, ptr %1, i64 1
  %189 = load i8, ptr %188, align 1, !tbaa !34
  %190 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %189, ptr %190, align 1, !tbaa !34
  %191 = getelementptr inbounds i8, ptr %1, i64 2
  %192 = load i8, ptr %191, align 1, !tbaa !34
  %193 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %192, ptr %193, align 1, !tbaa !34
  %194 = getelementptr inbounds i8, ptr %1, i64 3
  %195 = load i8, ptr %194, align 1, !tbaa !34
  %196 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %195, ptr %196, align 1, !tbaa !34
  br label %1029

197:                                              ; preds = %4
  %198 = getelementptr inbounds i8, ptr %2, i64 3
  %199 = load i8, ptr %198, align 1, !tbaa !34
  %200 = icmp eq i8 %199, 0
  br i1 %200, label %249, label %201

201:                                              ; preds = %197
  %202 = zext i8 %199 to i32
  %203 = xor i32 %202, 255
  %204 = load i8, ptr %1, align 1, !tbaa !34
  %205 = zext i8 %204 to i32
  %206 = mul nuw nsw i32 %203, 255
  %207 = load i8, ptr %2, align 1, !tbaa !34
  %208 = zext i8 %207 to i32
  %209 = mul nuw nsw i32 %208, %202
  %210 = add nuw nsw i32 %209, %206
  %211 = getelementptr inbounds i8, ptr %1, i64 1
  %212 = load i8, ptr %211, align 1, !tbaa !34
  %213 = zext i8 %212 to i32
  %214 = mul nuw nsw i32 %203, 255
  %215 = getelementptr inbounds i8, ptr %2, i64 1
  %216 = load i8, ptr %215, align 1, !tbaa !34
  %217 = zext i8 %216 to i32
  %218 = mul nuw nsw i32 %217, %202
  %219 = add nuw nsw i32 %218, %214
  %220 = getelementptr inbounds i8, ptr %1, i64 2
  %221 = load i8, ptr %220, align 1, !tbaa !34
  %222 = zext i8 %221 to i32
  %223 = mul nuw nsw i32 %203, 255
  %224 = getelementptr inbounds i8, ptr %2, i64 2
  %225 = load i8, ptr %224, align 1, !tbaa !34
  %226 = zext i8 %225 to i32
  %227 = mul nuw nsw i32 %226, %202
  %228 = add nuw nsw i32 %227, %223
  %229 = shl nuw nsw i32 %205, 1
  %230 = mul nuw nsw i32 %229, %210
  %231 = add nuw nsw i32 %230, 65025
  %232 = udiv i32 %231, 130050
  %233 = trunc i32 %232 to i8
  store i8 %233, ptr %0, align 1, !tbaa !34
  %234 = shl nuw nsw i32 %213, 1
  %235 = mul nuw nsw i32 %234, %219
  %236 = add nuw nsw i32 %235, 65025
  %237 = udiv i32 %236, 130050
  %238 = trunc i32 %237 to i8
  %239 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %238, ptr %239, align 1, !tbaa !34
  %240 = shl nuw nsw i32 %222, 1
  %241 = mul nuw nsw i32 %240, %228
  %242 = add nuw nsw i32 %241, 65025
  %243 = udiv i32 %242, 130050
  %244 = trunc i32 %243 to i8
  %245 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %244, ptr %245, align 1, !tbaa !34
  %246 = getelementptr inbounds i8, ptr %1, i64 3
  %247 = load i8, ptr %246, align 1, !tbaa !34
  %248 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %247, ptr %248, align 1, !tbaa !34
  br label %1029

249:                                              ; preds = %197
  %250 = load i8, ptr %1, align 1, !tbaa !34
  store i8 %250, ptr %0, align 1, !tbaa !34
  %251 = getelementptr inbounds i8, ptr %1, i64 1
  %252 = load i8, ptr %251, align 1, !tbaa !34
  %253 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %252, ptr %253, align 1, !tbaa !34
  %254 = getelementptr inbounds i8, ptr %1, i64 2
  %255 = load i8, ptr %254, align 1, !tbaa !34
  %256 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %255, ptr %256, align 1, !tbaa !34
  %257 = getelementptr inbounds i8, ptr %1, i64 3
  %258 = load i8, ptr %257, align 1, !tbaa !34
  %259 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %258, ptr %259, align 1, !tbaa !34
  br label %1029

260:                                              ; preds = %4
  %261 = getelementptr inbounds i8, ptr %2, i64 3
  %262 = load i8, ptr %261, align 1, !tbaa !34
  %263 = icmp eq i8 %262, 0
  br i1 %263, label %312, label %264

264:                                              ; preds = %260
  %265 = zext i8 %262 to i32
  %266 = xor i32 %265, 255
  %267 = load i8, ptr %1, align 1, !tbaa !34
  %268 = zext i8 %267 to i32
  %269 = mul nuw nsw i32 %266, %268
  %270 = load i8, ptr %2, align 1, !tbaa !34
  %271 = zext i8 %270 to i32
  %272 = tail call i32 @llvm.smax.i32(i32 %271, i32 %268)
  %273 = mul nuw nsw i32 %272, %265
  %274 = add nuw nsw i32 %273, %269
  %275 = getelementptr inbounds i8, ptr %1, i64 1
  %276 = load i8, ptr %275, align 1, !tbaa !34
  %277 = zext i8 %276 to i32
  %278 = mul nuw nsw i32 %266, %277
  %279 = getelementptr inbounds i8, ptr %2, i64 1
  %280 = load i8, ptr %279, align 1, !tbaa !34
  %281 = zext i8 %280 to i32
  %282 = tail call i32 @llvm.smax.i32(i32 %281, i32 %277)
  %283 = mul nuw nsw i32 %282, %265
  %284 = add nuw nsw i32 %283, %278
  %285 = getelementptr inbounds i8, ptr %1, i64 2
  %286 = load i8, ptr %285, align 1, !tbaa !34
  %287 = zext i8 %286 to i32
  %288 = mul nuw nsw i32 %266, %287
  %289 = getelementptr inbounds i8, ptr %2, i64 2
  %290 = load i8, ptr %289, align 1, !tbaa !34
  %291 = zext i8 %290 to i32
  %292 = tail call i32 @llvm.smax.i32(i32 %291, i32 %287)
  %293 = mul nuw nsw i32 %292, %265
  %294 = add nuw nsw i32 %293, %288
  %295 = shl nuw nsw i32 %274, 1
  %296 = add nuw nsw i32 %295, 255
  %297 = udiv i32 %296, 510
  %298 = trunc i32 %297 to i8
  store i8 %298, ptr %0, align 1, !tbaa !34
  %299 = shl nuw nsw i32 %284, 1
  %300 = add nuw nsw i32 %299, 255
  %301 = udiv i32 %300, 510
  %302 = trunc i32 %301 to i8
  %303 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %302, ptr %303, align 1, !tbaa !34
  %304 = shl nuw nsw i32 %294, 1
  %305 = add nuw nsw i32 %304, 255
  %306 = udiv i32 %305, 510
  %307 = trunc i32 %306 to i8
  %308 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %307, ptr %308, align 1, !tbaa !34
  %309 = getelementptr inbounds i8, ptr %1, i64 3
  %310 = load i8, ptr %309, align 1, !tbaa !34
  %311 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %310, ptr %311, align 1, !tbaa !34
  br label %1029

312:                                              ; preds = %260
  %313 = load i8, ptr %1, align 1, !tbaa !34
  store i8 %313, ptr %0, align 1, !tbaa !34
  %314 = getelementptr inbounds i8, ptr %1, i64 1
  %315 = load i8, ptr %314, align 1, !tbaa !34
  %316 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %315, ptr %316, align 1, !tbaa !34
  %317 = getelementptr inbounds i8, ptr %1, i64 2
  %318 = load i8, ptr %317, align 1, !tbaa !34
  %319 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %318, ptr %319, align 1, !tbaa !34
  %320 = getelementptr inbounds i8, ptr %1, i64 3
  %321 = load i8, ptr %320, align 1, !tbaa !34
  %322 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %321, ptr %322, align 1, !tbaa !34
  br label %1029

323:                                              ; preds = %4
  %324 = getelementptr inbounds i8, ptr %2, i64 3
  %325 = load i8, ptr %324, align 1, !tbaa !34
  %326 = icmp eq i8 %325, 0
  br i1 %326, label %375, label %327

327:                                              ; preds = %323
  %328 = zext i8 %325 to i32
  %329 = xor i32 %328, 255
  %330 = load i8, ptr %1, align 1, !tbaa !34
  %331 = zext i8 %330 to i32
  %332 = mul nuw nsw i32 %329, %331
  %333 = load i8, ptr %2, align 1, !tbaa !34
  %334 = zext i8 %333 to i32
  %335 = tail call i32 @llvm.smin.i32(i32 %331, i32 %334)
  %336 = mul nuw nsw i32 %335, %328
  %337 = add nuw nsw i32 %336, %332
  %338 = getelementptr inbounds i8, ptr %1, i64 1
  %339 = load i8, ptr %338, align 1, !tbaa !34
  %340 = zext i8 %339 to i32
  %341 = mul nuw nsw i32 %329, %340
  %342 = getelementptr inbounds i8, ptr %2, i64 1
  %343 = load i8, ptr %342, align 1, !tbaa !34
  %344 = zext i8 %343 to i32
  %345 = tail call i32 @llvm.smin.i32(i32 %340, i32 %344)
  %346 = mul nuw nsw i32 %345, %328
  %347 = add nuw nsw i32 %346, %341
  %348 = getelementptr inbounds i8, ptr %1, i64 2
  %349 = load i8, ptr %348, align 1, !tbaa !34
  %350 = zext i8 %349 to i32
  %351 = mul nuw nsw i32 %329, %350
  %352 = getelementptr inbounds i8, ptr %2, i64 2
  %353 = load i8, ptr %352, align 1, !tbaa !34
  %354 = zext i8 %353 to i32
  %355 = tail call i32 @llvm.smin.i32(i32 %350, i32 %354)
  %356 = mul nuw nsw i32 %355, %328
  %357 = add nuw nsw i32 %356, %351
  %358 = shl nuw nsw i32 %337, 1
  %359 = add nuw nsw i32 %358, 255
  %360 = udiv i32 %359, 510
  %361 = trunc i32 %360 to i8
  store i8 %361, ptr %0, align 1, !tbaa !34
  %362 = shl nuw nsw i32 %347, 1
  %363 = add nuw nsw i32 %362, 255
  %364 = udiv i32 %363, 510
  %365 = trunc i32 %364 to i8
  %366 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %365, ptr %366, align 1, !tbaa !34
  %367 = shl nuw nsw i32 %357, 1
  %368 = add nuw nsw i32 %367, 255
  %369 = udiv i32 %368, 510
  %370 = trunc i32 %369 to i8
  %371 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %370, ptr %371, align 1, !tbaa !34
  %372 = getelementptr inbounds i8, ptr %1, i64 3
  %373 = load i8, ptr %372, align 1, !tbaa !34
  %374 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %373, ptr %374, align 1, !tbaa !34
  br label %1029

375:                                              ; preds = %323
  %376 = load i8, ptr %1, align 1, !tbaa !34
  store i8 %376, ptr %0, align 1, !tbaa !34
  %377 = getelementptr inbounds i8, ptr %1, i64 1
  %378 = load i8, ptr %377, align 1, !tbaa !34
  %379 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %378, ptr %379, align 1, !tbaa !34
  %380 = getelementptr inbounds i8, ptr %1, i64 2
  %381 = load i8, ptr %380, align 1, !tbaa !34
  %382 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %381, ptr %382, align 1, !tbaa !34
  %383 = getelementptr inbounds i8, ptr %1, i64 3
  %384 = load i8, ptr %383, align 1, !tbaa !34
  %385 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %384, ptr %385, align 1, !tbaa !34
  br label %1029

386:                                              ; preds = %4
  %387 = getelementptr inbounds i8, ptr %2, i64 3
  %388 = load i8, ptr %387, align 1, !tbaa !34
  %389 = icmp eq i8 %388, 0
  br i1 %389, label %412, label %390

390:                                              ; preds = %386
  %391 = zext i8 %388 to i32
  %392 = load i8, ptr %1, align 1, !tbaa !34
  store i8 %392, ptr %0, align 1, !tbaa !34
  %393 = getelementptr inbounds i8, ptr %1, i64 1
  %394 = load i8, ptr %393, align 1, !tbaa !34
  %395 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %394, ptr %395, align 1, !tbaa !34
  %396 = getelementptr inbounds i8, ptr %1, i64 2
  %397 = load i8, ptr %396, align 1, !tbaa !34
  %398 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %397, ptr %398, align 1, !tbaa !34
  %399 = getelementptr inbounds i8, ptr %1, i64 3
  %400 = load i8, ptr %399, align 1, !tbaa !34
  %401 = zext i8 %400 to i32
  %402 = load i8, ptr %387, align 1, !tbaa !34
  %403 = zext i8 %402 to i32
  %404 = shl nuw nsw i32 %391, 1
  %405 = mul nuw nsw i32 %404, %403
  %406 = add nuw nsw i32 %405, 255
  %407 = udiv i32 %406, 510
  %408 = sub nsw i32 %401, %407
  %409 = tail call i32 @llvm.smax.i32(i32 %408, i32 0)
  %410 = trunc i32 %409 to i8
  %411 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %410, ptr %411, align 1, !tbaa !34
  br label %1029

412:                                              ; preds = %386
  %413 = load i8, ptr %1, align 1, !tbaa !34
  store i8 %413, ptr %0, align 1, !tbaa !34
  %414 = getelementptr inbounds i8, ptr %1, i64 1
  %415 = load i8, ptr %414, align 1, !tbaa !34
  %416 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %415, ptr %416, align 1, !tbaa !34
  %417 = getelementptr inbounds i8, ptr %1, i64 2
  %418 = load i8, ptr %417, align 1, !tbaa !34
  %419 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %418, ptr %419, align 1, !tbaa !34
  %420 = getelementptr inbounds i8, ptr %1, i64 3
  %421 = load i8, ptr %420, align 1, !tbaa !34
  %422 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %421, ptr %422, align 1, !tbaa !34
  br label %1029

423:                                              ; preds = %4
  %424 = getelementptr inbounds i8, ptr %2, i64 3
  %425 = load i8, ptr %424, align 1, !tbaa !34
  %426 = icmp eq i8 %425, 0
  br i1 %426, label %449, label %427

427:                                              ; preds = %423
  %428 = zext i8 %425 to i32
  %429 = load i8, ptr %1, align 1, !tbaa !34
  store i8 %429, ptr %0, align 1, !tbaa !34
  %430 = getelementptr inbounds i8, ptr %1, i64 1
  %431 = load i8, ptr %430, align 1, !tbaa !34
  %432 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %431, ptr %432, align 1, !tbaa !34
  %433 = getelementptr inbounds i8, ptr %1, i64 2
  %434 = load i8, ptr %433, align 1, !tbaa !34
  %435 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %434, ptr %435, align 1, !tbaa !34
  %436 = getelementptr inbounds i8, ptr %1, i64 3
  %437 = load i8, ptr %436, align 1, !tbaa !34
  %438 = zext i8 %437 to i32
  %439 = load i8, ptr %424, align 1, !tbaa !34
  %440 = zext i8 %439 to i32
  %441 = shl nuw nsw i32 %428, 1
  %442 = mul nuw nsw i32 %441, %440
  %443 = add nuw nsw i32 %442, 255
  %444 = udiv i32 %443, 510
  %445 = add nuw nsw i32 %444, %438
  %446 = tail call i32 @llvm.smin.i32(i32 %445, i32 255)
  %447 = trunc i32 %446 to i8
  %448 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %447, ptr %448, align 1, !tbaa !34
  br label %1029

449:                                              ; preds = %423
  %450 = load i8, ptr %1, align 1, !tbaa !34
  store i8 %450, ptr %0, align 1, !tbaa !34
  %451 = getelementptr inbounds i8, ptr %1, i64 1
  %452 = load i8, ptr %451, align 1, !tbaa !34
  %453 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %452, ptr %453, align 1, !tbaa !34
  %454 = getelementptr inbounds i8, ptr %1, i64 2
  %455 = load i8, ptr %454, align 1, !tbaa !34
  %456 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %455, ptr %456, align 1, !tbaa !34
  %457 = getelementptr inbounds i8, ptr %1, i64 3
  %458 = load i8, ptr %457, align 1, !tbaa !34
  %459 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %458, ptr %459, align 1, !tbaa !34
  br label %1029

460:                                              ; preds = %4
  %461 = getelementptr inbounds i8, ptr %2, i64 3
  %462 = load i8, ptr %461, align 1, !tbaa !34
  %463 = zext i8 %462 to i32
  %464 = icmp eq i8 %462, 0
  br i1 %464, label %500, label %465

465:                                              ; preds = %460
  %466 = xor i32 %463, 255
  br label %467

467:                                              ; preds = %465, %489
  %468 = phi i64 [ 2, %465 ], [ %498, %489 ]
  %469 = getelementptr inbounds i8, ptr %1, i64 %468
  %470 = load i8, ptr %469, align 1, !tbaa !34
  %471 = zext i8 %470 to i32
  %472 = icmp slt i8 %470, 0
  %473 = shl nuw nsw i32 %471, 1
  br i1 %472, label %474, label %483

474:                                              ; preds = %467
  %475 = sub nsw i32 509, %473
  %476 = getelementptr inbounds i8, ptr %2, i64 %468
  %477 = load i8, ptr %476, align 1, !tbaa !34
  %478 = xor i8 %477, -1
  %479 = zext i8 %478 to i32
  %480 = mul nsw i32 %475, %479
  %481 = sdiv i32 %480, -255
  %482 = add nsw i32 %481, 255
  br label %489

483:                                              ; preds = %467
  %484 = getelementptr inbounds i8, ptr %2, i64 %468
  %485 = load i8, ptr %484, align 1, !tbaa !34
  %486 = zext i8 %485 to i32
  %487 = mul nuw nsw i32 %473, %486
  %488 = lshr i32 %487, 8
  br label %489

489:                                              ; preds = %483, %474
  %490 = phi i32 [ %482, %474 ], [ %488, %483 ]
  %491 = mul nuw nsw i32 %490, %463
  %492 = mul nuw nsw i32 %466, %471
  %493 = add nuw nsw i32 %491, %492
  %494 = udiv i32 %493, 255
  %495 = tail call i32 @llvm.smin.i32(i32 %494, i32 255)
  %496 = trunc i32 %495 to i8
  %497 = getelementptr inbounds i8, ptr %0, i64 %468
  store i8 %496, ptr %497, align 1, !tbaa !34
  %498 = add nsw i64 %468, -1
  %499 = icmp eq i64 %468, 0
  br i1 %499, label %1029, label %467, !llvm.loop !37

500:                                              ; preds = %460
  %501 = load i8, ptr %1, align 1, !tbaa !34
  store i8 %501, ptr %0, align 1, !tbaa !34
  %502 = getelementptr inbounds i8, ptr %1, i64 1
  %503 = load i8, ptr %502, align 1, !tbaa !34
  %504 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %503, ptr %504, align 1, !tbaa !34
  %505 = getelementptr inbounds i8, ptr %1, i64 2
  %506 = load i8, ptr %505, align 1, !tbaa !34
  %507 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %506, ptr %507, align 1, !tbaa !34
  %508 = getelementptr inbounds i8, ptr %1, i64 3
  %509 = load i8, ptr %508, align 1, !tbaa !34
  %510 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %509, ptr %510, align 1, !tbaa !34
  br label %1029

511:                                              ; preds = %4
  %512 = getelementptr inbounds i8, ptr %2, i64 3
  %513 = load i8, ptr %512, align 1, !tbaa !34
  %514 = zext i8 %513 to i32
  %515 = icmp eq i8 %513, 0
  br i1 %515, label %554, label %516

516:                                              ; preds = %511
  %517 = xor i32 %514, 255
  br label %518

518:                                              ; preds = %516, %540
  %519 = phi i64 [ 2, %516 ], [ %552, %540 ]
  %520 = getelementptr inbounds i8, ptr %2, i64 %519
  %521 = load i8, ptr %520, align 1, !tbaa !34
  %522 = zext i8 %521 to i32
  %523 = icmp slt i8 %521, 0
  %524 = shl nuw nsw i32 %522, 1
  br i1 %523, label %525, label %534

525:                                              ; preds = %518
  %526 = sub nsw i32 509, %524
  %527 = getelementptr inbounds i8, ptr %1, i64 %519
  %528 = load i8, ptr %527, align 1, !tbaa !34
  %529 = xor i8 %528, -1
  %530 = zext i8 %529 to i32
  %531 = mul nsw i32 %526, %530
  %532 = sdiv i32 %531, -255
  %533 = add nsw i32 %532, 255
  br label %540

534:                                              ; preds = %518
  %535 = getelementptr inbounds i8, ptr %1, i64 %519
  %536 = load i8, ptr %535, align 1, !tbaa !34
  %537 = zext i8 %536 to i32
  %538 = mul nuw nsw i32 %524, %537
  %539 = lshr i32 %538, 8
  br label %540

540:                                              ; preds = %534, %525
  %541 = phi i32 [ %533, %525 ], [ %539, %534 ]
  %542 = mul nuw nsw i32 %541, %514
  %543 = getelementptr inbounds i8, ptr %1, i64 %519
  %544 = load i8, ptr %543, align 1, !tbaa !34
  %545 = zext i8 %544 to i32
  %546 = mul nuw nsw i32 %517, %545
  %547 = add nuw nsw i32 %546, %542
  %548 = udiv i32 %547, 255
  %549 = tail call i32 @llvm.smin.i32(i32 %548, i32 255)
  %550 = trunc i32 %549 to i8
  %551 = getelementptr inbounds i8, ptr %0, i64 %519
  store i8 %550, ptr %551, align 1, !tbaa !34
  %552 = add nsw i64 %519, -1
  %553 = icmp eq i64 %519, 0
  br i1 %553, label %1029, label %518, !llvm.loop !40

554:                                              ; preds = %511
  %555 = load i8, ptr %1, align 1, !tbaa !34
  store i8 %555, ptr %0, align 1, !tbaa !34
  %556 = getelementptr inbounds i8, ptr %1, i64 1
  %557 = load i8, ptr %556, align 1, !tbaa !34
  %558 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %557, ptr %558, align 1, !tbaa !34
  %559 = getelementptr inbounds i8, ptr %1, i64 2
  %560 = load i8, ptr %559, align 1, !tbaa !34
  %561 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %560, ptr %561, align 1, !tbaa !34
  %562 = getelementptr inbounds i8, ptr %1, i64 3
  %563 = load i8, ptr %562, align 1, !tbaa !34
  %564 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %563, ptr %564, align 1, !tbaa !34
  br label %1029

565:                                              ; preds = %4
  %566 = getelementptr inbounds i8, ptr %2, i64 3
  %567 = load i8, ptr %566, align 1, !tbaa !34
  %568 = zext i8 %567 to i32
  %569 = icmp eq i8 %567, 0
  br i1 %569, label %600, label %570

570:                                              ; preds = %565
  %571 = xor i32 %568, 255
  br label %572

572:                                              ; preds = %570, %587
  %573 = phi i64 [ 2, %570 ], [ %598, %587 ]
  %574 = getelementptr inbounds i8, ptr %2, i64 %573
  %575 = load i8, ptr %574, align 1, !tbaa !34
  %576 = icmp eq i8 %575, 0
  br i1 %576, label %587, label %577

577:                                              ; preds = %572
  %578 = zext i8 %575 to i32
  %579 = getelementptr inbounds i8, ptr %1, i64 %573
  %580 = load i8, ptr %579, align 1, !tbaa !34
  %581 = xor i8 %580, -1
  %582 = zext i8 %581 to i32
  %583 = mul nuw nsw i32 %582, 255
  %584 = udiv i32 %583, %578
  %585 = sub nsw i32 255, %584
  %586 = tail call i32 @llvm.smax.i32(i32 %585, i32 0)
  br label %587

587:                                              ; preds = %577, %572
  %588 = phi i32 [ %586, %577 ], [ 0, %572 ]
  %589 = mul nuw nsw i32 %588, %568
  %590 = getelementptr inbounds i8, ptr %1, i64 %573
  %591 = load i8, ptr %590, align 1, !tbaa !34
  %592 = zext i8 %591 to i32
  %593 = mul nuw nsw i32 %571, %592
  %594 = add nuw nsw i32 %593, %589
  %595 = udiv i32 %594, 255
  %596 = trunc i32 %595 to i8
  %597 = getelementptr inbounds i8, ptr %0, i64 %573
  store i8 %596, ptr %597, align 1, !tbaa !34
  %598 = add nsw i64 %573, -1
  %599 = icmp eq i64 %573, 0
  br i1 %599, label %1029, label %572, !llvm.loop !41

600:                                              ; preds = %565
  %601 = load i8, ptr %1, align 1, !tbaa !34
  store i8 %601, ptr %0, align 1, !tbaa !34
  %602 = getelementptr inbounds i8, ptr %1, i64 1
  %603 = load i8, ptr %602, align 1, !tbaa !34
  %604 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %603, ptr %604, align 1, !tbaa !34
  %605 = getelementptr inbounds i8, ptr %1, i64 2
  %606 = load i8, ptr %605, align 1, !tbaa !34
  %607 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %606, ptr %607, align 1, !tbaa !34
  %608 = getelementptr inbounds i8, ptr %1, i64 3
  %609 = load i8, ptr %608, align 1, !tbaa !34
  %610 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %609, ptr %610, align 1, !tbaa !34
  br label %1029

611:                                              ; preds = %4
  %612 = getelementptr inbounds i8, ptr %2, i64 3
  %613 = load i8, ptr %612, align 1, !tbaa !34
  %614 = zext i8 %613 to i32
  %615 = icmp eq i8 %613, 0
  br i1 %615, label %637, label %616

616:                                              ; preds = %611
  %617 = xor i32 %614, 255
  br label %618

618:                                              ; preds = %616, %618
  %619 = phi i64 [ 3, %616 ], [ %620, %618 ]
  %620 = add nsw i64 %619, -1
  %621 = getelementptr inbounds i8, ptr %1, i64 %620
  %622 = load i8, ptr %621, align 1, !tbaa !34
  %623 = zext i8 %622 to i32
  %624 = getelementptr inbounds i8, ptr %2, i64 %620
  %625 = load i8, ptr %624, align 1, !tbaa !34
  %626 = zext i8 %625 to i32
  %627 = add nuw nsw i32 %626, %623
  %628 = tail call i32 @llvm.smax.i32(i32 %627, i32 255)
  %629 = add nsw i32 %628, -255
  %630 = mul nuw nsw i32 %629, %614
  %631 = mul nuw nsw i32 %617, %623
  %632 = add nuw nsw i32 %630, %631
  %633 = udiv i32 %632, 255
  %634 = trunc i32 %633 to i8
  %635 = getelementptr inbounds i8, ptr %0, i64 %620
  store i8 %634, ptr %635, align 1, !tbaa !34
  %636 = icmp eq i64 %620, 0
  br i1 %636, label %1029, label %618, !llvm.loop !42

637:                                              ; preds = %611
  %638 = load i8, ptr %1, align 1, !tbaa !34
  store i8 %638, ptr %0, align 1, !tbaa !34
  %639 = getelementptr inbounds i8, ptr %1, i64 1
  %640 = load i8, ptr %639, align 1, !tbaa !34
  %641 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %640, ptr %641, align 1, !tbaa !34
  %642 = getelementptr inbounds i8, ptr %1, i64 2
  %643 = load i8, ptr %642, align 1, !tbaa !34
  %644 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %643, ptr %644, align 1, !tbaa !34
  %645 = getelementptr inbounds i8, ptr %1, i64 3
  %646 = load i8, ptr %645, align 1, !tbaa !34
  %647 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %646, ptr %647, align 1, !tbaa !34
  br label %1029

648:                                              ; preds = %4
  %649 = getelementptr inbounds i8, ptr %2, i64 3
  %650 = load i8, ptr %649, align 1, !tbaa !34
  %651 = zext i8 %650 to i32
  %652 = icmp eq i8 %650, 0
  br i1 %652, label %682, label %653

653:                                              ; preds = %648
  %654 = xor i32 %651, 255
  br label %655

655:                                              ; preds = %653, %669
  %656 = phi i64 [ 2, %653 ], [ %680, %669 ]
  %657 = getelementptr inbounds i8, ptr %2, i64 %656
  %658 = load i8, ptr %657, align 1, !tbaa !34
  %659 = icmp eq i8 %658, -1
  br i1 %659, label %669, label %660

660:                                              ; preds = %655
  %661 = getelementptr inbounds i8, ptr %1, i64 %656
  %662 = load i8, ptr %661, align 1, !tbaa !34
  %663 = zext i8 %662 to i32
  %664 = mul nuw nsw i32 %663, 255
  %665 = xor i8 %658, -1
  %666 = zext i8 %665 to i32
  %667 = udiv i32 %664, %666
  %668 = tail call i32 @llvm.smin.i32(i32 %667, i32 255)
  br label %669

669:                                              ; preds = %660, %655
  %670 = phi i32 [ %668, %660 ], [ 255, %655 ]
  %671 = mul nuw nsw i32 %670, %651
  %672 = getelementptr inbounds i8, ptr %1, i64 %656
  %673 = load i8, ptr %672, align 1, !tbaa !34
  %674 = zext i8 %673 to i32
  %675 = mul nuw nsw i32 %654, %674
  %676 = add nuw nsw i32 %675, %671
  %677 = udiv i32 %676, 255
  %678 = trunc i32 %677 to i8
  %679 = getelementptr inbounds i8, ptr %0, i64 %656
  store i8 %678, ptr %679, align 1, !tbaa !34
  %680 = add nsw i64 %656, -1
  %681 = icmp eq i64 %656, 0
  br i1 %681, label %1029, label %655, !llvm.loop !43

682:                                              ; preds = %648
  %683 = load i8, ptr %1, align 1, !tbaa !34
  store i8 %683, ptr %0, align 1, !tbaa !34
  %684 = getelementptr inbounds i8, ptr %1, i64 1
  %685 = load i8, ptr %684, align 1, !tbaa !34
  %686 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %685, ptr %686, align 1, !tbaa !34
  %687 = getelementptr inbounds i8, ptr %1, i64 2
  %688 = load i8, ptr %687, align 1, !tbaa !34
  %689 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %688, ptr %689, align 1, !tbaa !34
  %690 = getelementptr inbounds i8, ptr %1, i64 3
  %691 = load i8, ptr %690, align 1, !tbaa !34
  %692 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %691, ptr %692, align 1, !tbaa !34
  br label %1029

693:                                              ; preds = %4
  %694 = getelementptr inbounds i8, ptr %2, i64 3
  %695 = load i8, ptr %694, align 1, !tbaa !34
  %696 = zext i8 %695 to i32
  %697 = icmp eq i8 %695, 0
  br i1 %697, label %723, label %698

698:                                              ; preds = %693
  %699 = xor i32 %696, 255
  br label %700

700:                                              ; preds = %698, %700
  %701 = phi i64 [ 3, %698 ], [ %702, %700 ]
  %702 = add nsw i64 %701, -1
  %703 = getelementptr inbounds i8, ptr %1, i64 %702
  %704 = load i8, ptr %703, align 1, !tbaa !34
  %705 = xor i8 %704, -1
  %706 = zext i8 %705 to i32
  %707 = getelementptr inbounds i8, ptr %2, i64 %702
  %708 = load i8, ptr %707, align 1, !tbaa !34
  %709 = xor i8 %708, -1
  %710 = zext i8 %709 to i32
  %711 = mul nuw nsw i32 %710, %706
  %712 = udiv i32 %711, 255
  %713 = sub nuw nsw i32 255, %712
  %714 = tail call i32 @llvm.smax.i32(i32 %713, i32 0)
  %715 = mul nuw nsw i32 %714, %696
  %716 = zext i8 %704 to i32
  %717 = mul nuw nsw i32 %699, %716
  %718 = add nuw nsw i32 %715, %717
  %719 = udiv i32 %718, 255
  %720 = trunc i32 %719 to i8
  %721 = getelementptr inbounds i8, ptr %0, i64 %702
  store i8 %720, ptr %721, align 1, !tbaa !34
  %722 = icmp eq i64 %702, 0
  br i1 %722, label %1029, label %700, !llvm.loop !44

723:                                              ; preds = %693
  %724 = load i8, ptr %1, align 1, !tbaa !34
  store i8 %724, ptr %0, align 1, !tbaa !34
  %725 = getelementptr inbounds i8, ptr %1, i64 1
  %726 = load i8, ptr %725, align 1, !tbaa !34
  %727 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %726, ptr %727, align 1, !tbaa !34
  %728 = getelementptr inbounds i8, ptr %1, i64 2
  %729 = load i8, ptr %728, align 1, !tbaa !34
  %730 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %729, ptr %730, align 1, !tbaa !34
  %731 = getelementptr inbounds i8, ptr %1, i64 3
  %732 = load i8, ptr %731, align 1, !tbaa !34
  %733 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %732, ptr %733, align 1, !tbaa !34
  br label %1029

734:                                              ; preds = %4
  %735 = getelementptr inbounds i8, ptr %2, i64 3
  %736 = load i8, ptr %735, align 1, !tbaa !34
  %737 = zext i8 %736 to i32
  %738 = icmp eq i8 %736, 0
  br i1 %738, label %773, label %739

739:                                              ; preds = %734
  %740 = xor i32 %737, 255
  br label %741

741:                                              ; preds = %739, %763
  %742 = phi i64 [ 2, %739 ], [ %771, %763 ]
  %743 = getelementptr inbounds i8, ptr %1, i64 %742
  %744 = load i8, ptr %743, align 1, !tbaa !34
  %745 = zext i8 %744 to i32
  %746 = icmp ult i8 %744, 127
  %747 = getelementptr inbounds i8, ptr %2, i64 %742
  %748 = load i8, ptr %747, align 1, !tbaa !34
  %749 = lshr i8 %748, 1
  %750 = shl nuw nsw i32 %745, 1
  br i1 %746, label %751, label %756

751:                                              ; preds = %741
  %752 = add nuw i8 %749, 64
  %753 = zext i8 %752 to i32
  %754 = mul nuw nsw i32 %750, %753
  %755 = udiv i32 %754, 255
  br label %763

756:                                              ; preds = %741
  %757 = sub nuw i8 -65, %749
  %758 = zext i8 %757 to i32
  %759 = xor i32 %750, 510
  %760 = mul nuw nsw i32 %759, %758
  %761 = udiv i32 %760, 255
  %762 = sub nsw i32 255, %761
  br label %763

763:                                              ; preds = %756, %751
  %764 = phi i32 [ %755, %751 ], [ %762, %756 ]
  %765 = mul nuw nsw i32 %764, %737
  %766 = mul nuw nsw i32 %740, %745
  %767 = add nuw nsw i32 %765, %766
  %768 = udiv i32 %767, 255
  %769 = trunc i32 %768 to i8
  %770 = getelementptr inbounds i8, ptr %0, i64 %742
  store i8 %769, ptr %770, align 1, !tbaa !34
  %771 = add nsw i64 %742, -1
  %772 = icmp eq i64 %742, 0
  br i1 %772, label %1029, label %741, !llvm.loop !45

773:                                              ; preds = %734
  %774 = load i8, ptr %1, align 1, !tbaa !34
  store i8 %774, ptr %0, align 1, !tbaa !34
  %775 = getelementptr inbounds i8, ptr %1, i64 1
  %776 = load i8, ptr %775, align 1, !tbaa !34
  %777 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %776, ptr %777, align 1, !tbaa !34
  %778 = getelementptr inbounds i8, ptr %1, i64 2
  %779 = load i8, ptr %778, align 1, !tbaa !34
  %780 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %779, ptr %780, align 1, !tbaa !34
  %781 = getelementptr inbounds i8, ptr %1, i64 3
  %782 = load i8, ptr %781, align 1, !tbaa !34
  %783 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %782, ptr %783, align 1, !tbaa !34
  br label %1029

784:                                              ; preds = %4
  %785 = getelementptr inbounds i8, ptr %2, i64 3
  %786 = load i8, ptr %785, align 1, !tbaa !34
  %787 = zext i8 %786 to i32
  %788 = icmp eq i8 %786, 0
  br i1 %788, label %822, label %789

789:                                              ; preds = %784
  %790 = xor i32 %787, 255
  br label %791

791:                                              ; preds = %789, %809
  %792 = phi i64 [ 2, %789 ], [ %820, %809 ]
  %793 = getelementptr inbounds i8, ptr %2, i64 %792
  %794 = load i8, ptr %793, align 1, !tbaa !34
  %795 = zext i8 %794 to i32
  %796 = icmp slt i8 %794, 0
  %797 = shl nuw nsw i32 %795, 1
  br i1 %796, label %798, label %804

798:                                              ; preds = %791
  %799 = add nsw i32 %797, -254
  %800 = getelementptr inbounds i8, ptr %1, i64 %792
  %801 = load i8, ptr %800, align 1, !tbaa !34
  %802 = zext i8 %801 to i32
  %803 = tail call i32 @llvm.smax.i32(i32 %802, i32 %799)
  br label %809

804:                                              ; preds = %791
  %805 = getelementptr inbounds i8, ptr %1, i64 %792
  %806 = load i8, ptr %805, align 1, !tbaa !34
  %807 = zext i8 %806 to i32
  %808 = tail call i32 @llvm.smin.i32(i32 %797, i32 %807)
  br label %809

809:                                              ; preds = %804, %798
  %810 = phi i32 [ %803, %798 ], [ %808, %804 ]
  %811 = mul nuw nsw i32 %810, %787
  %812 = getelementptr inbounds i8, ptr %1, i64 %792
  %813 = load i8, ptr %812, align 1, !tbaa !34
  %814 = zext i8 %813 to i32
  %815 = mul nuw nsw i32 %790, %814
  %816 = add nuw nsw i32 %815, %811
  %817 = udiv i32 %816, 255
  %818 = trunc i32 %817 to i8
  %819 = getelementptr inbounds i8, ptr %0, i64 %792
  store i8 %818, ptr %819, align 1, !tbaa !34
  %820 = add nsw i64 %792, -1
  %821 = icmp eq i64 %792, 0
  br i1 %821, label %1029, label %791, !llvm.loop !46

822:                                              ; preds = %784
  %823 = load i8, ptr %1, align 1, !tbaa !34
  store i8 %823, ptr %0, align 1, !tbaa !34
  %824 = getelementptr inbounds i8, ptr %1, i64 1
  %825 = load i8, ptr %824, align 1, !tbaa !34
  %826 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %825, ptr %826, align 1, !tbaa !34
  %827 = getelementptr inbounds i8, ptr %1, i64 2
  %828 = load i8, ptr %827, align 1, !tbaa !34
  %829 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %828, ptr %829, align 1, !tbaa !34
  %830 = getelementptr inbounds i8, ptr %1, i64 3
  %831 = load i8, ptr %830, align 1, !tbaa !34
  %832 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %831, ptr %832, align 1, !tbaa !34
  br label %1029

833:                                              ; preds = %4
  %834 = getelementptr inbounds i8, ptr %2, i64 3
  %835 = load i8, ptr %834, align 1, !tbaa !34
  %836 = zext i8 %835 to i32
  %837 = icmp eq i8 %835, 0
  br i1 %837, label %871, label %838

838:                                              ; preds = %833
  %839 = xor i32 %836, 255
  br label %840

840:                                              ; preds = %838, %858
  %841 = phi i64 [ 2, %838 ], [ %869, %858 ]
  %842 = getelementptr inbounds i8, ptr %2, i64 %841
  %843 = load i8, ptr %842, align 1, !tbaa !34
  %844 = zext i8 %843 to i32
  %845 = icmp slt i8 %843, 0
  %846 = getelementptr inbounds i8, ptr %1, i64 %841
  %847 = load i8, ptr %846, align 1, !tbaa !34
  %848 = zext i8 %847 to i32
  %849 = shl nuw nsw i32 %844, 1
  br i1 %845, label %850, label %854

850:                                              ; preds = %840
  %851 = add nsw i32 %849, -254
  %852 = add nuw nsw i32 %851, %848
  %853 = tail call i32 @llvm.smin.i32(i32 %852, i32 255)
  br label %858

854:                                              ; preds = %840
  %855 = add nuw nsw i32 %849, %848
  %856 = tail call i32 @llvm.smax.i32(i32 %855, i32 255)
  %857 = add nsw i32 %856, -255
  br label %858

858:                                              ; preds = %854, %850
  %859 = phi i32 [ %853, %850 ], [ %857, %854 ]
  %860 = mul nsw i32 %859, %836
  %861 = getelementptr inbounds i8, ptr %1, i64 %841
  %862 = load i8, ptr %861, align 1, !tbaa !34
  %863 = zext i8 %862 to i32
  %864 = mul nuw nsw i32 %839, %863
  %865 = add nsw i32 %864, %860
  %866 = sdiv i32 %865, 255
  %867 = trunc i32 %866 to i8
  %868 = getelementptr inbounds i8, ptr %0, i64 %841
  store i8 %867, ptr %868, align 1, !tbaa !34
  %869 = add nsw i64 %841, -1
  %870 = icmp eq i64 %841, 0
  br i1 %870, label %1029, label %840, !llvm.loop !47

871:                                              ; preds = %833
  %872 = load i8, ptr %1, align 1, !tbaa !34
  store i8 %872, ptr %0, align 1, !tbaa !34
  %873 = getelementptr inbounds i8, ptr %1, i64 1
  %874 = load i8, ptr %873, align 1, !tbaa !34
  %875 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %874, ptr %875, align 1, !tbaa !34
  %876 = getelementptr inbounds i8, ptr %1, i64 2
  %877 = load i8, ptr %876, align 1, !tbaa !34
  %878 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %877, ptr %878, align 1, !tbaa !34
  %879 = getelementptr inbounds i8, ptr %1, i64 3
  %880 = load i8, ptr %879, align 1, !tbaa !34
  %881 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %880, ptr %881, align 1, !tbaa !34
  br label %1029

882:                                              ; preds = %4
  %883 = getelementptr inbounds i8, ptr %2, i64 3
  %884 = load i8, ptr %883, align 1, !tbaa !34
  %885 = zext i8 %884 to i32
  %886 = icmp eq i8 %884, 0
  br i1 %886, label %927, label %887

887:                                              ; preds = %882
  %888 = xor i32 %885, 255
  br label %889

889:                                              ; preds = %887, %914
  %890 = phi i64 [ 2, %887 ], [ %925, %914 ]
  %891 = getelementptr inbounds i8, ptr %2, i64 %890
  %892 = load i8, ptr %891, align 1, !tbaa !34
  %893 = zext i8 %892 to i32
  switch i8 %892, label %895 [
    i8 -1, label %914
    i8 0, label %894
  ]

894:                                              ; preds = %889
  br label %914

895:                                              ; preds = %889
  %896 = icmp slt i8 %892, 0
  %897 = getelementptr inbounds i8, ptr %1, i64 %890
  %898 = load i8, ptr %897, align 1, !tbaa !34
  br i1 %896, label %899, label %906

899:                                              ; preds = %895
  %900 = zext i8 %898 to i32
  %901 = mul nuw nsw i32 %900, 255
  %902 = shl nuw nsw i32 %893, 1
  %903 = xor i32 %902, 510
  %904 = udiv i32 %901, %903
  %905 = tail call i32 @llvm.smin.i32(i32 %904, i32 255)
  br label %914

906:                                              ; preds = %895
  %907 = xor i8 %898, -1
  %908 = zext i8 %907 to i32
  %909 = mul nuw nsw i32 %908, 255
  %910 = shl nuw nsw i32 %893, 1
  %911 = udiv i32 %909, %910
  %912 = sub nsw i32 255, %911
  %913 = tail call i32 @llvm.smax.i32(i32 %912, i32 0)
  br label %914

914:                                              ; preds = %906, %899, %894, %889
  %915 = phi i32 [ 0, %894 ], [ %905, %899 ], [ %913, %906 ], [ 255, %889 ]
  %916 = mul nuw nsw i32 %915, %885
  %917 = getelementptr inbounds i8, ptr %1, i64 %890
  %918 = load i8, ptr %917, align 1, !tbaa !34
  %919 = zext i8 %918 to i32
  %920 = mul nuw nsw i32 %888, %919
  %921 = add nuw nsw i32 %920, %916
  %922 = udiv i32 %921, 255
  %923 = trunc i32 %922 to i8
  %924 = getelementptr inbounds i8, ptr %0, i64 %890
  store i8 %923, ptr %924, align 1, !tbaa !34
  %925 = add nsw i64 %890, -1
  %926 = icmp eq i64 %890, 0
  br i1 %926, label %1029, label %889, !llvm.loop !48

927:                                              ; preds = %882
  %928 = load i8, ptr %1, align 1, !tbaa !34
  store i8 %928, ptr %0, align 1, !tbaa !34
  %929 = getelementptr inbounds i8, ptr %1, i64 1
  %930 = load i8, ptr %929, align 1, !tbaa !34
  %931 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %930, ptr %931, align 1, !tbaa !34
  %932 = getelementptr inbounds i8, ptr %1, i64 2
  %933 = load i8, ptr %932, align 1, !tbaa !34
  %934 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %933, ptr %934, align 1, !tbaa !34
  %935 = getelementptr inbounds i8, ptr %1, i64 3
  %936 = load i8, ptr %935, align 1, !tbaa !34
  %937 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %936, ptr %937, align 1, !tbaa !34
  br label %1029

938:                                              ; preds = %4
  %939 = getelementptr inbounds i8, ptr %2, i64 3
  %940 = load i8, ptr %939, align 1, !tbaa !34
  %941 = zext i8 %940 to i32
  %942 = icmp eq i8 %940, 0
  br i1 %942, label %963, label %943

943:                                              ; preds = %938
  %944 = xor i32 %941, 255
  br label %945

945:                                              ; preds = %943, %945
  %946 = phi i64 [ 3, %943 ], [ %947, %945 ]
  %947 = add nsw i64 %946, -1
  %948 = getelementptr inbounds i8, ptr %1, i64 %947
  %949 = load i8, ptr %948, align 1, !tbaa !34
  %950 = zext i8 %949 to i32
  %951 = getelementptr inbounds i8, ptr %2, i64 %947
  %952 = load i8, ptr %951, align 1, !tbaa !34
  %953 = zext i8 %952 to i32
  %954 = sub nsw i32 %950, %953
  %955 = tail call i32 @llvm.abs.i32(i32 %954, i1 true)
  %956 = mul nuw nsw i32 %955, %941
  %957 = mul nuw nsw i32 %944, %950
  %958 = add nuw nsw i32 %956, %957
  %959 = udiv i32 %958, 255
  %960 = trunc i32 %959 to i8
  %961 = getelementptr inbounds i8, ptr %0, i64 %947
  store i8 %960, ptr %961, align 1, !tbaa !34
  %962 = icmp eq i64 %947, 0
  br i1 %962, label %1029, label %945, !llvm.loop !49

963:                                              ; preds = %938
  %964 = load i8, ptr %1, align 1, !tbaa !34
  store i8 %964, ptr %0, align 1, !tbaa !34
  %965 = getelementptr inbounds i8, ptr %1, i64 1
  %966 = load i8, ptr %965, align 1, !tbaa !34
  %967 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %966, ptr %967, align 1, !tbaa !34
  %968 = getelementptr inbounds i8, ptr %1, i64 2
  %969 = load i8, ptr %968, align 1, !tbaa !34
  %970 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %969, ptr %970, align 1, !tbaa !34
  %971 = getelementptr inbounds i8, ptr %1, i64 3
  %972 = load i8, ptr %971, align 1, !tbaa !34
  %973 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %972, ptr %973, align 1, !tbaa !34
  br label %1029

974:                                              ; preds = %4
  %975 = getelementptr inbounds i8, ptr %2, i64 3
  %976 = load i8, ptr %975, align 1, !tbaa !34
  %977 = zext i8 %976 to i32
  %978 = icmp eq i8 %976, 0
  br i1 %978, label %1003, label %979

979:                                              ; preds = %974
  %980 = xor i32 %977, 255
  br label %981

981:                                              ; preds = %979, %981
  %982 = phi i64 [ 3, %979 ], [ %983, %981 ]
  %983 = add nsw i64 %982, -1
  %984 = getelementptr inbounds i8, ptr %1, i64 %983
  %985 = load i8, ptr %984, align 1, !tbaa !34
  %986 = zext i8 %985 to i32
  %987 = shl nuw nsw i32 %986, 1
  %988 = add nsw i32 %987, -254
  %989 = getelementptr inbounds i8, ptr %2, i64 %983
  %990 = load i8, ptr %989, align 1, !tbaa !34
  %991 = zext i8 %990 to i32
  %992 = add nsw i32 %991, -127
  %993 = mul nsw i32 %988, %992
  %994 = sdiv i32 %993, -255
  %995 = add nsw i32 %994, 127
  %996 = mul nsw i32 %995, %977
  %997 = mul nuw nsw i32 %980, %986
  %998 = add nsw i32 %996, %997
  %999 = sdiv i32 %998, 255
  %1000 = trunc i32 %999 to i8
  %1001 = getelementptr inbounds i8, ptr %0, i64 %983
  store i8 %1000, ptr %1001, align 1, !tbaa !34
  %1002 = icmp eq i64 %983, 0
  br i1 %1002, label %1029, label %981, !llvm.loop !50

1003:                                             ; preds = %974
  %1004 = load i8, ptr %1, align 1, !tbaa !34
  store i8 %1004, ptr %0, align 1, !tbaa !34
  %1005 = getelementptr inbounds i8, ptr %1, i64 1
  %1006 = load i8, ptr %1005, align 1, !tbaa !34
  %1007 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %1006, ptr %1007, align 1, !tbaa !34
  %1008 = getelementptr inbounds i8, ptr %1, i64 2
  %1009 = load i8, ptr %1008, align 1, !tbaa !34
  %1010 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %1009, ptr %1010, align 1, !tbaa !34
  %1011 = getelementptr inbounds i8, ptr %1, i64 3
  %1012 = load i8, ptr %1011, align 1, !tbaa !34
  %1013 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %1012, ptr %1013, align 1, !tbaa !34
  br label %1029

1014:                                             ; preds = %4
  tail call void @blend_color_color_byte(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %1029

1015:                                             ; preds = %4
  tail call void @blend_color_hue_byte(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %1029

1016:                                             ; preds = %4
  tail call void @blend_color_saturation_byte(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %1029

1017:                                             ; preds = %4
  tail call void @blend_color_luminosity_byte(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %1029

1018:                                             ; preds = %4
  %1019 = load i8, ptr %1, align 1, !tbaa !34
  store i8 %1019, ptr %0, align 1, !tbaa !34
  %1020 = getelementptr inbounds i8, ptr %1, i64 1
  %1021 = load i8, ptr %1020, align 1, !tbaa !34
  %1022 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %1021, ptr %1022, align 1, !tbaa !34
  %1023 = getelementptr inbounds i8, ptr %1, i64 2
  %1024 = load i8, ptr %1023, align 1, !tbaa !34
  %1025 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %1024, ptr %1025, align 1, !tbaa !34
  %1026 = getelementptr inbounds i8, ptr %1, i64 3
  %1027 = load i8, ptr %1026, align 1, !tbaa !34
  %1028 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %1027, ptr %1028, align 1, !tbaa !34
  br label %1029

1029:                                             ; preds = %981, %945, %914, %858, %809, %763, %700, %669, %618, %587, %540, %489, %1003, %963, %927, %871, %822, %773, %723, %682, %637, %600, %554, %500, %449, %427, %412, %390, %375, %327, %312, %264, %249, %201, %186, %139, %124, %77, %62, %9, %1018, %1017, %1016, %1015, %1014
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @blend_color_mix_byte(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 {
  %4 = getelementptr inbounds i8, ptr %2, i64 3
  %5 = load i8, ptr %4, align 1, !tbaa !34
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %59, label %7

7:                                                ; preds = %3
  %8 = zext i8 %5 to i32
  %9 = xor i32 %8, 255
  %10 = getelementptr inbounds i8, ptr %1, i64 3
  %11 = load i8, ptr %10, align 1, !tbaa !34
  %12 = zext i8 %11 to i32
  %13 = mul nuw nsw i32 %9, %12
  %14 = load i8, ptr %1, align 1, !tbaa !34
  %15 = zext i8 %14 to i32
  %16 = mul nuw nsw i32 %13, %15
  %17 = mul nuw nsw i32 %8, 255
  %18 = load i8, ptr %2, align 1, !tbaa !34
  %19 = zext i8 %18 to i32
  %20 = mul nuw nsw i32 %17, %19
  %21 = add nuw nsw i32 %20, %16
  %22 = getelementptr inbounds i8, ptr %1, i64 1
  %23 = load i8, ptr %22, align 1, !tbaa !34
  %24 = zext i8 %23 to i32
  %25 = mul nuw nsw i32 %13, %24
  %26 = getelementptr inbounds i8, ptr %2, i64 1
  %27 = load i8, ptr %26, align 1, !tbaa !34
  %28 = zext i8 %27 to i32
  %29 = mul nuw nsw i32 %17, %28
  %30 = add nuw nsw i32 %29, %25
  %31 = getelementptr inbounds i8, ptr %1, i64 2
  %32 = load i8, ptr %31, align 1, !tbaa !34
  %33 = zext i8 %32 to i32
  %34 = mul nuw nsw i32 %13, %33
  %35 = getelementptr inbounds i8, ptr %2, i64 2
  %36 = load i8, ptr %35, align 1, !tbaa !34
  %37 = zext i8 %36 to i32
  %38 = mul nuw nsw i32 %17, %37
  %39 = add nuw nsw i32 %38, %34
  %40 = add nuw nsw i32 %13, %17
  %41 = shl nuw nsw i32 %21, 1
  %42 = add nuw nsw i32 %41, %40
  %43 = shl nuw nsw i32 %40, 1
  %44 = udiv i32 %42, %43
  %45 = trunc i32 %44 to i8
  store i8 %45, ptr %0, align 1, !tbaa !34
  %46 = shl nuw nsw i32 %30, 1
  %47 = add nuw nsw i32 %46, %40
  %48 = udiv i32 %47, %43
  %49 = trunc i32 %48 to i8
  %50 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %49, ptr %50, align 1, !tbaa !34
  %51 = shl nuw nsw i32 %39, 1
  %52 = add nuw nsw i32 %51, %40
  %53 = udiv i32 %52, %43
  %54 = trunc i32 %53 to i8
  %55 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %54, ptr %55, align 1, !tbaa !34
  %56 = add nuw nsw i32 %43, 255
  %57 = udiv i32 %56, 510
  %58 = trunc i32 %57 to i8
  br label %69

59:                                               ; preds = %3
  %60 = load i8, ptr %1, align 1, !tbaa !34
  store i8 %60, ptr %0, align 1, !tbaa !34
  %61 = getelementptr inbounds i8, ptr %1, i64 1
  %62 = load i8, ptr %61, align 1, !tbaa !34
  %63 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %62, ptr %63, align 1, !tbaa !34
  %64 = getelementptr inbounds i8, ptr %1, i64 2
  %65 = load i8, ptr %64, align 1, !tbaa !34
  %66 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %65, ptr %66, align 1, !tbaa !34
  %67 = getelementptr inbounds i8, ptr %1, i64 3
  %68 = load i8, ptr %67, align 1, !tbaa !34
  br label %69

69:                                               ; preds = %59, %7
  %70 = phi i8 [ %68, %59 ], [ %58, %7 ]
  %71 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %70, ptr %71, align 1, !tbaa !34
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @blend_color_add_byte(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 {
  %4 = getelementptr inbounds i8, ptr %2, i64 3
  %5 = load i8, ptr %4, align 1, !tbaa !34
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %50, label %7

7:                                                ; preds = %3
  %8 = zext i8 %5 to i32
  %9 = load i8, ptr %1, align 1, !tbaa !34
  %10 = zext i8 %9 to i32
  %11 = mul nuw nsw i32 %10, 255
  %12 = load i8, ptr %2, align 1, !tbaa !34
  %13 = zext i8 %12 to i32
  %14 = mul nuw nsw i32 %13, %8
  %15 = add nuw nsw i32 %14, %11
  %16 = getelementptr inbounds i8, ptr %1, i64 1
  %17 = load i8, ptr %16, align 1, !tbaa !34
  %18 = zext i8 %17 to i32
  %19 = mul nuw nsw i32 %18, 255
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = load i8, ptr %20, align 1, !tbaa !34
  %22 = zext i8 %21 to i32
  %23 = mul nuw nsw i32 %22, %8
  %24 = add nuw nsw i32 %23, %19
  %25 = getelementptr inbounds i8, ptr %1, i64 2
  %26 = load i8, ptr %25, align 1, !tbaa !34
  %27 = zext i8 %26 to i32
  %28 = mul nuw nsw i32 %27, 255
  %29 = getelementptr inbounds i8, ptr %2, i64 2
  %30 = load i8, ptr %29, align 1, !tbaa !34
  %31 = zext i8 %30 to i32
  %32 = mul nuw nsw i32 %31, %8
  %33 = add nuw nsw i32 %32, %28
  %34 = shl nuw nsw i32 %15, 1
  %35 = add nuw nsw i32 %34, 255
  %36 = udiv i32 %35, 510
  %37 = tail call i32 @llvm.smin.i32(i32 %36, i32 255)
  %38 = trunc i32 %37 to i8
  store i8 %38, ptr %0, align 1, !tbaa !34
  %39 = shl nuw nsw i32 %24, 1
  %40 = add nuw nsw i32 %39, 255
  %41 = udiv i32 %40, 510
  %42 = tail call i32 @llvm.smin.i32(i32 %41, i32 255)
  %43 = trunc i32 %42 to i8
  %44 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %43, ptr %44, align 1, !tbaa !34
  %45 = shl nuw nsw i32 %33, 1
  %46 = add nuw nsw i32 %45, 255
  %47 = udiv i32 %46, 510
  %48 = tail call i32 @llvm.smin.i32(i32 %47, i32 255)
  %49 = trunc i32 %48 to i8
  br label %57

50:                                               ; preds = %3
  %51 = load i8, ptr %1, align 1, !tbaa !34
  store i8 %51, ptr %0, align 1, !tbaa !34
  %52 = getelementptr inbounds i8, ptr %1, i64 1
  %53 = load i8, ptr %52, align 1, !tbaa !34
  %54 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %53, ptr %54, align 1, !tbaa !34
  %55 = getelementptr inbounds i8, ptr %1, i64 2
  %56 = load i8, ptr %55, align 1, !tbaa !34
  br label %57

57:                                               ; preds = %50, %7
  %58 = phi i8 [ %56, %50 ], [ %49, %7 ]
  %59 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %58, ptr %59, align 1, !tbaa !34
  %60 = getelementptr inbounds i8, ptr %1, i64 3
  %61 = load i8, ptr %60, align 1, !tbaa !34
  %62 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %61, ptr %62, align 1, !tbaa !34
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @blend_color_sub_byte(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 {
  %4 = getelementptr inbounds i8, ptr %2, i64 3
  %5 = load i8, ptr %4, align 1, !tbaa !34
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %50, label %7

7:                                                ; preds = %3
  %8 = zext i8 %5 to i32
  %9 = load i8, ptr %1, align 1, !tbaa !34
  %10 = zext i8 %9 to i32
  %11 = mul nuw nsw i32 %10, 255
  %12 = load i8, ptr %2, align 1, !tbaa !34
  %13 = zext i8 %12 to i32
  %14 = mul nuw nsw i32 %13, %8
  %15 = sub nsw i32 %11, %14
  %16 = getelementptr inbounds i8, ptr %1, i64 1
  %17 = load i8, ptr %16, align 1, !tbaa !34
  %18 = zext i8 %17 to i32
  %19 = mul nuw nsw i32 %18, 255
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = load i8, ptr %20, align 1, !tbaa !34
  %22 = zext i8 %21 to i32
  %23 = mul nuw nsw i32 %22, %8
  %24 = sub nsw i32 %19, %23
  %25 = getelementptr inbounds i8, ptr %1, i64 2
  %26 = load i8, ptr %25, align 1, !tbaa !34
  %27 = zext i8 %26 to i32
  %28 = mul nuw nsw i32 %27, 255
  %29 = getelementptr inbounds i8, ptr %2, i64 2
  %30 = load i8, ptr %29, align 1, !tbaa !34
  %31 = zext i8 %30 to i32
  %32 = mul nuw nsw i32 %31, %8
  %33 = sub nsw i32 %28, %32
  %34 = shl nsw i32 %15, 1
  %35 = add nsw i32 %34, 255
  %36 = sdiv i32 %35, 510
  %37 = tail call i32 @llvm.smax.i32(i32 %36, i32 0)
  %38 = trunc i32 %37 to i8
  store i8 %38, ptr %0, align 1, !tbaa !34
  %39 = shl nsw i32 %24, 1
  %40 = add nsw i32 %39, 255
  %41 = sdiv i32 %40, 510
  %42 = tail call i32 @llvm.smax.i32(i32 %41, i32 0)
  %43 = trunc i32 %42 to i8
  %44 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %43, ptr %44, align 1, !tbaa !34
  %45 = shl nsw i32 %33, 1
  %46 = add nsw i32 %45, 255
  %47 = sdiv i32 %46, 510
  %48 = tail call i32 @llvm.smax.i32(i32 %47, i32 0)
  %49 = trunc i32 %48 to i8
  br label %57

50:                                               ; preds = %3
  %51 = load i8, ptr %1, align 1, !tbaa !34
  store i8 %51, ptr %0, align 1, !tbaa !34
  %52 = getelementptr inbounds i8, ptr %1, i64 1
  %53 = load i8, ptr %52, align 1, !tbaa !34
  %54 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %53, ptr %54, align 1, !tbaa !34
  %55 = getelementptr inbounds i8, ptr %1, i64 2
  %56 = load i8, ptr %55, align 1, !tbaa !34
  br label %57

57:                                               ; preds = %50, %7
  %58 = phi i8 [ %56, %50 ], [ %49, %7 ]
  %59 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %58, ptr %59, align 1, !tbaa !34
  %60 = getelementptr inbounds i8, ptr %1, i64 3
  %61 = load i8, ptr %60, align 1, !tbaa !34
  %62 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %61, ptr %62, align 1, !tbaa !34
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @blend_color_mul_byte(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 {
  %4 = getelementptr inbounds i8, ptr %2, i64 3
  %5 = load i8, ptr %4, align 1, !tbaa !34
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %51, label %7

7:                                                ; preds = %3
  %8 = zext i8 %5 to i32
  %9 = xor i32 %8, 255
  %10 = load i8, ptr %1, align 1, !tbaa !34
  %11 = zext i8 %10 to i32
  %12 = mul nuw nsw i32 %9, 255
  %13 = load i8, ptr %2, align 1, !tbaa !34
  %14 = zext i8 %13 to i32
  %15 = mul nuw nsw i32 %14, %8
  %16 = add nuw nsw i32 %15, %12
  %17 = getelementptr inbounds i8, ptr %1, i64 1
  %18 = load i8, ptr %17, align 1, !tbaa !34
  %19 = zext i8 %18 to i32
  %20 = mul nuw nsw i32 %9, 255
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = load i8, ptr %21, align 1, !tbaa !34
  %23 = zext i8 %22 to i32
  %24 = mul nuw nsw i32 %23, %8
  %25 = add nuw nsw i32 %24, %20
  %26 = getelementptr inbounds i8, ptr %1, i64 2
  %27 = load i8, ptr %26, align 1, !tbaa !34
  %28 = zext i8 %27 to i32
  %29 = mul nuw nsw i32 %9, 255
  %30 = getelementptr inbounds i8, ptr %2, i64 2
  %31 = load i8, ptr %30, align 1, !tbaa !34
  %32 = zext i8 %31 to i32
  %33 = mul nuw nsw i32 %32, %8
  %34 = add nuw nsw i32 %33, %29
  %35 = shl nuw nsw i32 %11, 1
  %36 = mul nuw nsw i32 %35, %16
  %37 = add nuw nsw i32 %36, 65025
  %38 = udiv i32 %37, 130050
  %39 = trunc i32 %38 to i8
  store i8 %39, ptr %0, align 1, !tbaa !34
  %40 = shl nuw nsw i32 %19, 1
  %41 = mul nuw nsw i32 %40, %25
  %42 = add nuw nsw i32 %41, 65025
  %43 = udiv i32 %42, 130050
  %44 = trunc i32 %43 to i8
  %45 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %44, ptr %45, align 1, !tbaa !34
  %46 = shl nuw nsw i32 %28, 1
  %47 = mul nuw nsw i32 %46, %34
  %48 = add nuw nsw i32 %47, 65025
  %49 = udiv i32 %48, 130050
  %50 = trunc i32 %49 to i8
  br label %58

51:                                               ; preds = %3
  %52 = load i8, ptr %1, align 1, !tbaa !34
  store i8 %52, ptr %0, align 1, !tbaa !34
  %53 = getelementptr inbounds i8, ptr %1, i64 1
  %54 = load i8, ptr %53, align 1, !tbaa !34
  %55 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %54, ptr %55, align 1, !tbaa !34
  %56 = getelementptr inbounds i8, ptr %1, i64 2
  %57 = load i8, ptr %56, align 1, !tbaa !34
  br label %58

58:                                               ; preds = %51, %7
  %59 = phi i8 [ %57, %51 ], [ %50, %7 ]
  %60 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %59, ptr %60, align 1, !tbaa !34
  %61 = getelementptr inbounds i8, ptr %1, i64 3
  %62 = load i8, ptr %61, align 1, !tbaa !34
  %63 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %62, ptr %63, align 1, !tbaa !34
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @blend_color_lighten_byte(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 {
  %4 = getelementptr inbounds i8, ptr %2, i64 3
  %5 = load i8, ptr %4, align 1, !tbaa !34
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %51, label %7

7:                                                ; preds = %3
  %8 = zext i8 %5 to i32
  %9 = xor i32 %8, 255
  %10 = load i8, ptr %1, align 1, !tbaa !34
  %11 = zext i8 %10 to i32
  %12 = mul nuw nsw i32 %9, %11
  %13 = load i8, ptr %2, align 1, !tbaa !34
  %14 = zext i8 %13 to i32
  %15 = tail call i32 @llvm.smax.i32(i32 %14, i32 %11)
  %16 = mul nuw nsw i32 %15, %8
  %17 = add nuw nsw i32 %16, %12
  %18 = getelementptr inbounds i8, ptr %1, i64 1
  %19 = load i8, ptr %18, align 1, !tbaa !34
  %20 = zext i8 %19 to i32
  %21 = mul nuw nsw i32 %9, %20
  %22 = getelementptr inbounds i8, ptr %2, i64 1
  %23 = load i8, ptr %22, align 1, !tbaa !34
  %24 = zext i8 %23 to i32
  %25 = tail call i32 @llvm.smax.i32(i32 %24, i32 %20)
  %26 = mul nuw nsw i32 %25, %8
  %27 = add nuw nsw i32 %26, %21
  %28 = getelementptr inbounds i8, ptr %1, i64 2
  %29 = load i8, ptr %28, align 1, !tbaa !34
  %30 = zext i8 %29 to i32
  %31 = mul nuw nsw i32 %9, %30
  %32 = getelementptr inbounds i8, ptr %2, i64 2
  %33 = load i8, ptr %32, align 1, !tbaa !34
  %34 = zext i8 %33 to i32
  %35 = tail call i32 @llvm.smax.i32(i32 %34, i32 %30)
  %36 = mul nuw nsw i32 %35, %8
  %37 = add nuw nsw i32 %36, %31
  %38 = shl nuw nsw i32 %17, 1
  %39 = add nuw nsw i32 %38, 255
  %40 = udiv i32 %39, 510
  %41 = trunc i32 %40 to i8
  store i8 %41, ptr %0, align 1, !tbaa !34
  %42 = shl nuw nsw i32 %27, 1
  %43 = add nuw nsw i32 %42, 255
  %44 = udiv i32 %43, 510
  %45 = trunc i32 %44 to i8
  %46 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %45, ptr %46, align 1, !tbaa !34
  %47 = shl nuw nsw i32 %37, 1
  %48 = add nuw nsw i32 %47, 255
  %49 = udiv i32 %48, 510
  %50 = trunc i32 %49 to i8
  br label %58

51:                                               ; preds = %3
  %52 = load i8, ptr %1, align 1, !tbaa !34
  store i8 %52, ptr %0, align 1, !tbaa !34
  %53 = getelementptr inbounds i8, ptr %1, i64 1
  %54 = load i8, ptr %53, align 1, !tbaa !34
  %55 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %54, ptr %55, align 1, !tbaa !34
  %56 = getelementptr inbounds i8, ptr %1, i64 2
  %57 = load i8, ptr %56, align 1, !tbaa !34
  br label %58

58:                                               ; preds = %51, %7
  %59 = phi i8 [ %57, %51 ], [ %50, %7 ]
  %60 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %59, ptr %60, align 1, !tbaa !34
  %61 = getelementptr inbounds i8, ptr %1, i64 3
  %62 = load i8, ptr %61, align 1, !tbaa !34
  %63 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %62, ptr %63, align 1, !tbaa !34
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @blend_color_darken_byte(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 {
  %4 = getelementptr inbounds i8, ptr %2, i64 3
  %5 = load i8, ptr %4, align 1, !tbaa !34
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %51, label %7

7:                                                ; preds = %3
  %8 = zext i8 %5 to i32
  %9 = xor i32 %8, 255
  %10 = load i8, ptr %1, align 1, !tbaa !34
  %11 = zext i8 %10 to i32
  %12 = mul nuw nsw i32 %9, %11
  %13 = load i8, ptr %2, align 1, !tbaa !34
  %14 = zext i8 %13 to i32
  %15 = tail call i32 @llvm.smin.i32(i32 %11, i32 %14)
  %16 = mul nuw nsw i32 %15, %8
  %17 = add nuw nsw i32 %16, %12
  %18 = getelementptr inbounds i8, ptr %1, i64 1
  %19 = load i8, ptr %18, align 1, !tbaa !34
  %20 = zext i8 %19 to i32
  %21 = mul nuw nsw i32 %9, %20
  %22 = getelementptr inbounds i8, ptr %2, i64 1
  %23 = load i8, ptr %22, align 1, !tbaa !34
  %24 = zext i8 %23 to i32
  %25 = tail call i32 @llvm.smin.i32(i32 %20, i32 %24)
  %26 = mul nuw nsw i32 %25, %8
  %27 = add nuw nsw i32 %26, %21
  %28 = getelementptr inbounds i8, ptr %1, i64 2
  %29 = load i8, ptr %28, align 1, !tbaa !34
  %30 = zext i8 %29 to i32
  %31 = mul nuw nsw i32 %9, %30
  %32 = getelementptr inbounds i8, ptr %2, i64 2
  %33 = load i8, ptr %32, align 1, !tbaa !34
  %34 = zext i8 %33 to i32
  %35 = tail call i32 @llvm.smin.i32(i32 %30, i32 %34)
  %36 = mul nuw nsw i32 %35, %8
  %37 = add nuw nsw i32 %36, %31
  %38 = shl nuw nsw i32 %17, 1
  %39 = add nuw nsw i32 %38, 255
  %40 = udiv i32 %39, 510
  %41 = trunc i32 %40 to i8
  store i8 %41, ptr %0, align 1, !tbaa !34
  %42 = shl nuw nsw i32 %27, 1
  %43 = add nuw nsw i32 %42, 255
  %44 = udiv i32 %43, 510
  %45 = trunc i32 %44 to i8
  %46 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %45, ptr %46, align 1, !tbaa !34
  %47 = shl nuw nsw i32 %37, 1
  %48 = add nuw nsw i32 %47, 255
  %49 = udiv i32 %48, 510
  %50 = trunc i32 %49 to i8
  br label %58

51:                                               ; preds = %3
  %52 = load i8, ptr %1, align 1, !tbaa !34
  store i8 %52, ptr %0, align 1, !tbaa !34
  %53 = getelementptr inbounds i8, ptr %1, i64 1
  %54 = load i8, ptr %53, align 1, !tbaa !34
  %55 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %54, ptr %55, align 1, !tbaa !34
  %56 = getelementptr inbounds i8, ptr %1, i64 2
  %57 = load i8, ptr %56, align 1, !tbaa !34
  br label %58

58:                                               ; preds = %51, %7
  %59 = phi i8 [ %57, %51 ], [ %50, %7 ]
  %60 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %59, ptr %60, align 1, !tbaa !34
  %61 = getelementptr inbounds i8, ptr %1, i64 3
  %62 = load i8, ptr %61, align 1, !tbaa !34
  %63 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %62, ptr %63, align 1, !tbaa !34
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @blend_color_erase_alpha_byte(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 {
  %4 = getelementptr inbounds i8, ptr %2, i64 3
  %5 = load i8, ptr %4, align 1, !tbaa !34
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %28, label %7

7:                                                ; preds = %3
  %8 = zext i8 %5 to i32
  %9 = load i8, ptr %1, align 1, !tbaa !34
  store i8 %9, ptr %0, align 1, !tbaa !34
  %10 = getelementptr inbounds i8, ptr %1, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !34
  %12 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %11, ptr %12, align 1, !tbaa !34
  %13 = getelementptr inbounds i8, ptr %1, i64 2
  %14 = load i8, ptr %13, align 1, !tbaa !34
  %15 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %14, ptr %15, align 1, !tbaa !34
  %16 = getelementptr inbounds i8, ptr %1, i64 3
  %17 = load i8, ptr %16, align 1, !tbaa !34
  %18 = zext i8 %17 to i32
  %19 = load i8, ptr %4, align 1, !tbaa !34
  %20 = zext i8 %19 to i32
  %21 = shl nuw nsw i32 %8, 1
  %22 = mul nuw nsw i32 %21, %20
  %23 = add nuw nsw i32 %22, 255
  %24 = udiv i32 %23, 510
  %25 = sub nsw i32 %18, %24
  %26 = tail call i32 @llvm.smax.i32(i32 %25, i32 0)
  %27 = trunc i32 %26 to i8
  br label %38

28:                                               ; preds = %3
  %29 = load i8, ptr %1, align 1, !tbaa !34
  store i8 %29, ptr %0, align 1, !tbaa !34
  %30 = getelementptr inbounds i8, ptr %1, i64 1
  %31 = load i8, ptr %30, align 1, !tbaa !34
  %32 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %31, ptr %32, align 1, !tbaa !34
  %33 = getelementptr inbounds i8, ptr %1, i64 2
  %34 = load i8, ptr %33, align 1, !tbaa !34
  %35 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %34, ptr %35, align 1, !tbaa !34
  %36 = getelementptr inbounds i8, ptr %1, i64 3
  %37 = load i8, ptr %36, align 1, !tbaa !34
  br label %38

38:                                               ; preds = %28, %7
  %39 = phi i8 [ %37, %28 ], [ %27, %7 ]
  %40 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %39, ptr %40, align 1, !tbaa !34
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @blend_color_add_alpha_byte(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 {
  %4 = getelementptr inbounds i8, ptr %2, i64 3
  %5 = load i8, ptr %4, align 1, !tbaa !34
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %28, label %7

7:                                                ; preds = %3
  %8 = zext i8 %5 to i32
  %9 = load i8, ptr %1, align 1, !tbaa !34
  store i8 %9, ptr %0, align 1, !tbaa !34
  %10 = getelementptr inbounds i8, ptr %1, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !34
  %12 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %11, ptr %12, align 1, !tbaa !34
  %13 = getelementptr inbounds i8, ptr %1, i64 2
  %14 = load i8, ptr %13, align 1, !tbaa !34
  %15 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %14, ptr %15, align 1, !tbaa !34
  %16 = getelementptr inbounds i8, ptr %1, i64 3
  %17 = load i8, ptr %16, align 1, !tbaa !34
  %18 = zext i8 %17 to i32
  %19 = load i8, ptr %4, align 1, !tbaa !34
  %20 = zext i8 %19 to i32
  %21 = shl nuw nsw i32 %8, 1
  %22 = mul nuw nsw i32 %21, %20
  %23 = add nuw nsw i32 %22, 255
  %24 = udiv i32 %23, 510
  %25 = add nuw nsw i32 %24, %18
  %26 = tail call i32 @llvm.smin.i32(i32 %25, i32 255)
  %27 = trunc i32 %26 to i8
  br label %38

28:                                               ; preds = %3
  %29 = load i8, ptr %1, align 1, !tbaa !34
  store i8 %29, ptr %0, align 1, !tbaa !34
  %30 = getelementptr inbounds i8, ptr %1, i64 1
  %31 = load i8, ptr %30, align 1, !tbaa !34
  %32 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %31, ptr %32, align 1, !tbaa !34
  %33 = getelementptr inbounds i8, ptr %1, i64 2
  %34 = load i8, ptr %33, align 1, !tbaa !34
  %35 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %34, ptr %35, align 1, !tbaa !34
  %36 = getelementptr inbounds i8, ptr %1, i64 3
  %37 = load i8, ptr %36, align 1, !tbaa !34
  br label %38

38:                                               ; preds = %28, %7
  %39 = phi i8 [ %37, %28 ], [ %27, %7 ]
  %40 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %39, ptr %40, align 1, !tbaa !34
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_color_overlay_byte(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 {
  %4 = getelementptr inbounds i8, ptr %2, i64 3
  %5 = load i8, ptr %4, align 1, !tbaa !34
  %6 = zext i8 %5 to i32
  %7 = icmp eq i8 %5, 0
  br i1 %7, label %43, label %8

8:                                                ; preds = %3
  %9 = xor i32 %6, 255
  br label %10

10:                                               ; preds = %8, %32
  %11 = phi i64 [ 2, %8 ], [ %41, %32 ]
  %12 = getelementptr inbounds i8, ptr %1, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !34
  %14 = zext i8 %13 to i32
  %15 = icmp slt i8 %13, 0
  %16 = shl nuw nsw i32 %14, 1
  br i1 %15, label %17, label %26

17:                                               ; preds = %10
  %18 = sub nsw i32 509, %16
  %19 = getelementptr inbounds i8, ptr %2, i64 %11
  %20 = load i8, ptr %19, align 1, !tbaa !34
  %21 = xor i8 %20, -1
  %22 = zext i8 %21 to i32
  %23 = mul nsw i32 %18, %22
  %24 = sdiv i32 %23, -255
  %25 = add nsw i32 %24, 255
  br label %32

26:                                               ; preds = %10
  %27 = getelementptr inbounds i8, ptr %2, i64 %11
  %28 = load i8, ptr %27, align 1, !tbaa !34
  %29 = zext i8 %28 to i32
  %30 = mul nuw nsw i32 %16, %29
  %31 = lshr i32 %30, 8
  br label %32

32:                                               ; preds = %26, %17
  %33 = phi i32 [ %25, %17 ], [ %31, %26 ]
  %34 = mul nuw nsw i32 %33, %6
  %35 = mul nuw nsw i32 %9, %14
  %36 = add nuw nsw i32 %34, %35
  %37 = udiv i32 %36, 255
  %38 = tail call i32 @llvm.smin.i32(i32 %37, i32 255)
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds i8, ptr %0, i64 %11
  store i8 %39, ptr %40, align 1, !tbaa !34
  %41 = add nsw i64 %11, -1
  %42 = icmp eq i64 %11, 0
  br i1 %42, label %54, label %10, !llvm.loop !37

43:                                               ; preds = %3
  %44 = load i8, ptr %1, align 1, !tbaa !34
  store i8 %44, ptr %0, align 1, !tbaa !34
  %45 = getelementptr inbounds i8, ptr %1, i64 1
  %46 = load i8, ptr %45, align 1, !tbaa !34
  %47 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %46, ptr %47, align 1, !tbaa !34
  %48 = getelementptr inbounds i8, ptr %1, i64 2
  %49 = load i8, ptr %48, align 1, !tbaa !34
  %50 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %49, ptr %50, align 1, !tbaa !34
  %51 = getelementptr inbounds i8, ptr %1, i64 3
  %52 = load i8, ptr %51, align 1, !tbaa !34
  %53 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %52, ptr %53, align 1, !tbaa !34
  br label %54

54:                                               ; preds = %32, %43
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_color_hardlight_byte(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 {
  %4 = getelementptr inbounds i8, ptr %2, i64 3
  %5 = load i8, ptr %4, align 1, !tbaa !34
  %6 = zext i8 %5 to i32
  %7 = icmp eq i8 %5, 0
  br i1 %7, label %46, label %8

8:                                                ; preds = %3
  %9 = xor i32 %6, 255
  br label %10

10:                                               ; preds = %8, %32
  %11 = phi i64 [ 2, %8 ], [ %44, %32 ]
  %12 = getelementptr inbounds i8, ptr %2, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !34
  %14 = zext i8 %13 to i32
  %15 = icmp slt i8 %13, 0
  %16 = shl nuw nsw i32 %14, 1
  br i1 %15, label %17, label %26

17:                                               ; preds = %10
  %18 = sub nsw i32 509, %16
  %19 = getelementptr inbounds i8, ptr %1, i64 %11
  %20 = load i8, ptr %19, align 1, !tbaa !34
  %21 = xor i8 %20, -1
  %22 = zext i8 %21 to i32
  %23 = mul nsw i32 %18, %22
  %24 = sdiv i32 %23, -255
  %25 = add nsw i32 %24, 255
  br label %32

26:                                               ; preds = %10
  %27 = getelementptr inbounds i8, ptr %1, i64 %11
  %28 = load i8, ptr %27, align 1, !tbaa !34
  %29 = zext i8 %28 to i32
  %30 = mul nuw nsw i32 %16, %29
  %31 = lshr i32 %30, 8
  br label %32

32:                                               ; preds = %26, %17
  %33 = phi i32 [ %25, %17 ], [ %31, %26 ]
  %34 = mul nuw nsw i32 %33, %6
  %35 = getelementptr inbounds i8, ptr %1, i64 %11
  %36 = load i8, ptr %35, align 1, !tbaa !34
  %37 = zext i8 %36 to i32
  %38 = mul nuw nsw i32 %9, %37
  %39 = add nuw nsw i32 %38, %34
  %40 = udiv i32 %39, 255
  %41 = tail call i32 @llvm.smin.i32(i32 %40, i32 255)
  %42 = trunc i32 %41 to i8
  %43 = getelementptr inbounds i8, ptr %0, i64 %11
  store i8 %42, ptr %43, align 1, !tbaa !34
  %44 = add nsw i64 %11, -1
  %45 = icmp eq i64 %11, 0
  br i1 %45, label %57, label %10, !llvm.loop !40

46:                                               ; preds = %3
  %47 = load i8, ptr %1, align 1, !tbaa !34
  store i8 %47, ptr %0, align 1, !tbaa !34
  %48 = getelementptr inbounds i8, ptr %1, i64 1
  %49 = load i8, ptr %48, align 1, !tbaa !34
  %50 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %49, ptr %50, align 1, !tbaa !34
  %51 = getelementptr inbounds i8, ptr %1, i64 2
  %52 = load i8, ptr %51, align 1, !tbaa !34
  %53 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %52, ptr %53, align 1, !tbaa !34
  %54 = getelementptr inbounds i8, ptr %1, i64 3
  %55 = load i8, ptr %54, align 1, !tbaa !34
  %56 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %55, ptr %56, align 1, !tbaa !34
  br label %57

57:                                               ; preds = %32, %46
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_color_burn_byte(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 {
  %4 = getelementptr inbounds i8, ptr %2, i64 3
  %5 = load i8, ptr %4, align 1, !tbaa !34
  %6 = zext i8 %5 to i32
  %7 = icmp eq i8 %5, 0
  br i1 %7, label %38, label %8

8:                                                ; preds = %3
  %9 = xor i32 %6, 255
  br label %10

10:                                               ; preds = %8, %25
  %11 = phi i64 [ 2, %8 ], [ %36, %25 ]
  %12 = getelementptr inbounds i8, ptr %2, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !34
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %10
  %16 = zext i8 %13 to i32
  %17 = getelementptr inbounds i8, ptr %1, i64 %11
  %18 = load i8, ptr %17, align 1, !tbaa !34
  %19 = xor i8 %18, -1
  %20 = zext i8 %19 to i32
  %21 = mul nuw nsw i32 %20, 255
  %22 = udiv i32 %21, %16
  %23 = sub nsw i32 255, %22
  %24 = tail call i32 @llvm.smax.i32(i32 %23, i32 0)
  br label %25

25:                                               ; preds = %10, %15
  %26 = phi i32 [ %24, %15 ], [ 0, %10 ]
  %27 = mul nuw nsw i32 %26, %6
  %28 = getelementptr inbounds i8, ptr %1, i64 %11
  %29 = load i8, ptr %28, align 1, !tbaa !34
  %30 = zext i8 %29 to i32
  %31 = mul nuw nsw i32 %9, %30
  %32 = add nuw nsw i32 %31, %27
  %33 = udiv i32 %32, 255
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds i8, ptr %0, i64 %11
  store i8 %34, ptr %35, align 1, !tbaa !34
  %36 = add nsw i64 %11, -1
  %37 = icmp eq i64 %11, 0
  br i1 %37, label %49, label %10, !llvm.loop !41

38:                                               ; preds = %3
  %39 = load i8, ptr %1, align 1, !tbaa !34
  store i8 %39, ptr %0, align 1, !tbaa !34
  %40 = getelementptr inbounds i8, ptr %1, i64 1
  %41 = load i8, ptr %40, align 1, !tbaa !34
  %42 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %41, ptr %42, align 1, !tbaa !34
  %43 = getelementptr inbounds i8, ptr %1, i64 2
  %44 = load i8, ptr %43, align 1, !tbaa !34
  %45 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %44, ptr %45, align 1, !tbaa !34
  %46 = getelementptr inbounds i8, ptr %1, i64 3
  %47 = load i8, ptr %46, align 1, !tbaa !34
  %48 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %47, ptr %48, align 1, !tbaa !34
  br label %49

49:                                               ; preds = %25, %38
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_color_linearburn_byte(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 {
  %4 = getelementptr inbounds i8, ptr %2, i64 3
  %5 = load i8, ptr %4, align 1, !tbaa !34
  %6 = zext i8 %5 to i32
  %7 = icmp eq i8 %5, 0
  br i1 %7, label %29, label %8

8:                                                ; preds = %3
  %9 = xor i32 %6, 255
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi i64 [ 3, %8 ], [ %12, %10 ]
  %12 = add nsw i64 %11, -1
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !34
  %15 = zext i8 %14 to i32
  %16 = getelementptr inbounds i8, ptr %2, i64 %12
  %17 = load i8, ptr %16, align 1, !tbaa !34
  %18 = zext i8 %17 to i32
  %19 = add nuw nsw i32 %18, %15
  %20 = tail call i32 @llvm.smax.i32(i32 %19, i32 255)
  %21 = add nsw i32 %20, -255
  %22 = mul nuw nsw i32 %21, %6
  %23 = mul nuw nsw i32 %9, %15
  %24 = add nuw nsw i32 %22, %23
  %25 = udiv i32 %24, 255
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds i8, ptr %0, i64 %12
  store i8 %26, ptr %27, align 1, !tbaa !34
  %28 = icmp eq i64 %12, 0
  br i1 %28, label %40, label %10, !llvm.loop !42

29:                                               ; preds = %3
  %30 = load i8, ptr %1, align 1, !tbaa !34
  store i8 %30, ptr %0, align 1, !tbaa !34
  %31 = getelementptr inbounds i8, ptr %1, i64 1
  %32 = load i8, ptr %31, align 1, !tbaa !34
  %33 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %32, ptr %33, align 1, !tbaa !34
  %34 = getelementptr inbounds i8, ptr %1, i64 2
  %35 = load i8, ptr %34, align 1, !tbaa !34
  %36 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %35, ptr %36, align 1, !tbaa !34
  %37 = getelementptr inbounds i8, ptr %1, i64 3
  %38 = load i8, ptr %37, align 1, !tbaa !34
  %39 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %38, ptr %39, align 1, !tbaa !34
  br label %40

40:                                               ; preds = %10, %29
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_color_dodge_byte(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 {
  %4 = getelementptr inbounds i8, ptr %2, i64 3
  %5 = load i8, ptr %4, align 1, !tbaa !34
  %6 = zext i8 %5 to i32
  %7 = icmp eq i8 %5, 0
  br i1 %7, label %37, label %8

8:                                                ; preds = %3
  %9 = xor i32 %6, 255
  br label %10

10:                                               ; preds = %8, %24
  %11 = phi i64 [ 2, %8 ], [ %35, %24 ]
  %12 = getelementptr inbounds i8, ptr %2, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !34
  %14 = icmp eq i8 %13, -1
  br i1 %14, label %24, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds i8, ptr %1, i64 %11
  %17 = load i8, ptr %16, align 1, !tbaa !34
  %18 = zext i8 %17 to i32
  %19 = mul nuw nsw i32 %18, 255
  %20 = xor i8 %13, -1
  %21 = zext i8 %20 to i32
  %22 = udiv i32 %19, %21
  %23 = tail call i32 @llvm.smin.i32(i32 %22, i32 255)
  br label %24

24:                                               ; preds = %10, %15
  %25 = phi i32 [ %23, %15 ], [ 255, %10 ]
  %26 = mul nuw nsw i32 %25, %6
  %27 = getelementptr inbounds i8, ptr %1, i64 %11
  %28 = load i8, ptr %27, align 1, !tbaa !34
  %29 = zext i8 %28 to i32
  %30 = mul nuw nsw i32 %9, %29
  %31 = add nuw nsw i32 %30, %26
  %32 = udiv i32 %31, 255
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds i8, ptr %0, i64 %11
  store i8 %33, ptr %34, align 1, !tbaa !34
  %35 = add nsw i64 %11, -1
  %36 = icmp eq i64 %11, 0
  br i1 %36, label %48, label %10, !llvm.loop !43

37:                                               ; preds = %3
  %38 = load i8, ptr %1, align 1, !tbaa !34
  store i8 %38, ptr %0, align 1, !tbaa !34
  %39 = getelementptr inbounds i8, ptr %1, i64 1
  %40 = load i8, ptr %39, align 1, !tbaa !34
  %41 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %40, ptr %41, align 1, !tbaa !34
  %42 = getelementptr inbounds i8, ptr %1, i64 2
  %43 = load i8, ptr %42, align 1, !tbaa !34
  %44 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %43, ptr %44, align 1, !tbaa !34
  %45 = getelementptr inbounds i8, ptr %1, i64 3
  %46 = load i8, ptr %45, align 1, !tbaa !34
  %47 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %46, ptr %47, align 1, !tbaa !34
  br label %48

48:                                               ; preds = %24, %37
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_color_screen_byte(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 {
  %4 = getelementptr inbounds i8, ptr %2, i64 3
  %5 = load i8, ptr %4, align 1, !tbaa !34
  %6 = zext i8 %5 to i32
  %7 = icmp eq i8 %5, 0
  br i1 %7, label %33, label %8

8:                                                ; preds = %3
  %9 = xor i32 %6, 255
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi i64 [ 3, %8 ], [ %12, %10 ]
  %12 = add nsw i64 %11, -1
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !34
  %15 = xor i8 %14, -1
  %16 = zext i8 %15 to i32
  %17 = getelementptr inbounds i8, ptr %2, i64 %12
  %18 = load i8, ptr %17, align 1, !tbaa !34
  %19 = xor i8 %18, -1
  %20 = zext i8 %19 to i32
  %21 = mul nuw nsw i32 %20, %16
  %22 = udiv i32 %21, 255
  %23 = sub nuw nsw i32 255, %22
  %24 = tail call i32 @llvm.smax.i32(i32 %23, i32 0)
  %25 = mul nuw nsw i32 %24, %6
  %26 = zext i8 %14 to i32
  %27 = mul nuw nsw i32 %9, %26
  %28 = add nuw nsw i32 %25, %27
  %29 = udiv i32 %28, 255
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds i8, ptr %0, i64 %12
  store i8 %30, ptr %31, align 1, !tbaa !34
  %32 = icmp eq i64 %12, 0
  br i1 %32, label %44, label %10, !llvm.loop !44

33:                                               ; preds = %3
  %34 = load i8, ptr %1, align 1, !tbaa !34
  store i8 %34, ptr %0, align 1, !tbaa !34
  %35 = getelementptr inbounds i8, ptr %1, i64 1
  %36 = load i8, ptr %35, align 1, !tbaa !34
  %37 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %36, ptr %37, align 1, !tbaa !34
  %38 = getelementptr inbounds i8, ptr %1, i64 2
  %39 = load i8, ptr %38, align 1, !tbaa !34
  %40 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %39, ptr %40, align 1, !tbaa !34
  %41 = getelementptr inbounds i8, ptr %1, i64 3
  %42 = load i8, ptr %41, align 1, !tbaa !34
  %43 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %42, ptr %43, align 1, !tbaa !34
  br label %44

44:                                               ; preds = %10, %33
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_color_softlight_byte(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 {
  %4 = getelementptr inbounds i8, ptr %2, i64 3
  %5 = load i8, ptr %4, align 1, !tbaa !34
  %6 = zext i8 %5 to i32
  %7 = icmp eq i8 %5, 0
  br i1 %7, label %42, label %8

8:                                                ; preds = %3
  %9 = xor i32 %6, 255
  br label %10

10:                                               ; preds = %8, %32
  %11 = phi i64 [ 2, %8 ], [ %40, %32 ]
  %12 = getelementptr inbounds i8, ptr %1, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !34
  %14 = zext i8 %13 to i32
  %15 = icmp ult i8 %13, 127
  %16 = getelementptr inbounds i8, ptr %2, i64 %11
  %17 = load i8, ptr %16, align 1, !tbaa !34
  %18 = lshr i8 %17, 1
  %19 = shl nuw nsw i32 %14, 1
  br i1 %15, label %20, label %25

20:                                               ; preds = %10
  %21 = add nuw i8 %18, 64
  %22 = zext i8 %21 to i32
  %23 = mul nuw nsw i32 %19, %22
  %24 = udiv i32 %23, 255
  br label %32

25:                                               ; preds = %10
  %26 = sub nuw i8 -65, %18
  %27 = zext i8 %26 to i32
  %28 = xor i32 %19, 510
  %29 = mul nuw nsw i32 %28, %27
  %30 = udiv i32 %29, 255
  %31 = sub nsw i32 255, %30
  br label %32

32:                                               ; preds = %25, %20
  %33 = phi i32 [ %24, %20 ], [ %31, %25 ]
  %34 = mul nuw nsw i32 %33, %6
  %35 = mul nuw nsw i32 %9, %14
  %36 = add nuw nsw i32 %34, %35
  %37 = udiv i32 %36, 255
  %38 = trunc i32 %37 to i8
  %39 = getelementptr inbounds i8, ptr %0, i64 %11
  store i8 %38, ptr %39, align 1, !tbaa !34
  %40 = add nsw i64 %11, -1
  %41 = icmp eq i64 %11, 0
  br i1 %41, label %53, label %10, !llvm.loop !45

42:                                               ; preds = %3
  %43 = load i8, ptr %1, align 1, !tbaa !34
  store i8 %43, ptr %0, align 1, !tbaa !34
  %44 = getelementptr inbounds i8, ptr %1, i64 1
  %45 = load i8, ptr %44, align 1, !tbaa !34
  %46 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %45, ptr %46, align 1, !tbaa !34
  %47 = getelementptr inbounds i8, ptr %1, i64 2
  %48 = load i8, ptr %47, align 1, !tbaa !34
  %49 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %48, ptr %49, align 1, !tbaa !34
  %50 = getelementptr inbounds i8, ptr %1, i64 3
  %51 = load i8, ptr %50, align 1, !tbaa !34
  %52 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %51, ptr %52, align 1, !tbaa !34
  br label %53

53:                                               ; preds = %32, %42
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_color_pinlight_byte(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 {
  %4 = getelementptr inbounds i8, ptr %2, i64 3
  %5 = load i8, ptr %4, align 1, !tbaa !34
  %6 = zext i8 %5 to i32
  %7 = icmp eq i8 %5, 0
  br i1 %7, label %41, label %8

8:                                                ; preds = %3
  %9 = xor i32 %6, 255
  br label %10

10:                                               ; preds = %8, %28
  %11 = phi i64 [ 2, %8 ], [ %39, %28 ]
  %12 = getelementptr inbounds i8, ptr %2, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !34
  %14 = zext i8 %13 to i32
  %15 = icmp slt i8 %13, 0
  %16 = shl nuw nsw i32 %14, 1
  br i1 %15, label %17, label %23

17:                                               ; preds = %10
  %18 = add nsw i32 %16, -254
  %19 = getelementptr inbounds i8, ptr %1, i64 %11
  %20 = load i8, ptr %19, align 1, !tbaa !34
  %21 = zext i8 %20 to i32
  %22 = tail call i32 @llvm.smax.i32(i32 %21, i32 %18)
  br label %28

23:                                               ; preds = %10
  %24 = getelementptr inbounds i8, ptr %1, i64 %11
  %25 = load i8, ptr %24, align 1, !tbaa !34
  %26 = zext i8 %25 to i32
  %27 = tail call i32 @llvm.smin.i32(i32 %16, i32 %26)
  br label %28

28:                                               ; preds = %23, %17
  %29 = phi i32 [ %22, %17 ], [ %27, %23 ]
  %30 = mul nuw nsw i32 %29, %6
  %31 = getelementptr inbounds i8, ptr %1, i64 %11
  %32 = load i8, ptr %31, align 1, !tbaa !34
  %33 = zext i8 %32 to i32
  %34 = mul nuw nsw i32 %9, %33
  %35 = add nuw nsw i32 %34, %30
  %36 = udiv i32 %35, 255
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds i8, ptr %0, i64 %11
  store i8 %37, ptr %38, align 1, !tbaa !34
  %39 = add nsw i64 %11, -1
  %40 = icmp eq i64 %11, 0
  br i1 %40, label %52, label %10, !llvm.loop !46

41:                                               ; preds = %3
  %42 = load i8, ptr %1, align 1, !tbaa !34
  store i8 %42, ptr %0, align 1, !tbaa !34
  %43 = getelementptr inbounds i8, ptr %1, i64 1
  %44 = load i8, ptr %43, align 1, !tbaa !34
  %45 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %44, ptr %45, align 1, !tbaa !34
  %46 = getelementptr inbounds i8, ptr %1, i64 2
  %47 = load i8, ptr %46, align 1, !tbaa !34
  %48 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %47, ptr %48, align 1, !tbaa !34
  %49 = getelementptr inbounds i8, ptr %1, i64 3
  %50 = load i8, ptr %49, align 1, !tbaa !34
  %51 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %50, ptr %51, align 1, !tbaa !34
  br label %52

52:                                               ; preds = %28, %41
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_color_linearlight_byte(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 {
  %4 = getelementptr inbounds i8, ptr %2, i64 3
  %5 = load i8, ptr %4, align 1, !tbaa !34
  %6 = zext i8 %5 to i32
  %7 = icmp eq i8 %5, 0
  br i1 %7, label %41, label %8

8:                                                ; preds = %3
  %9 = xor i32 %6, 255
  br label %10

10:                                               ; preds = %8, %28
  %11 = phi i64 [ 2, %8 ], [ %39, %28 ]
  %12 = getelementptr inbounds i8, ptr %2, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !34
  %14 = zext i8 %13 to i32
  %15 = icmp slt i8 %13, 0
  %16 = getelementptr inbounds i8, ptr %1, i64 %11
  %17 = load i8, ptr %16, align 1, !tbaa !34
  %18 = zext i8 %17 to i32
  %19 = shl nuw nsw i32 %14, 1
  br i1 %15, label %20, label %24

20:                                               ; preds = %10
  %21 = add nsw i32 %19, -254
  %22 = add nuw nsw i32 %21, %18
  %23 = tail call i32 @llvm.smin.i32(i32 %22, i32 255)
  br label %28

24:                                               ; preds = %10
  %25 = add nuw nsw i32 %19, %18
  %26 = tail call i32 @llvm.smax.i32(i32 %25, i32 255)
  %27 = add nsw i32 %26, -255
  br label %28

28:                                               ; preds = %24, %20
  %29 = phi i32 [ %23, %20 ], [ %27, %24 ]
  %30 = mul nsw i32 %29, %6
  %31 = getelementptr inbounds i8, ptr %1, i64 %11
  %32 = load i8, ptr %31, align 1, !tbaa !34
  %33 = zext i8 %32 to i32
  %34 = mul nuw nsw i32 %9, %33
  %35 = add nsw i32 %34, %30
  %36 = sdiv i32 %35, 255
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds i8, ptr %0, i64 %11
  store i8 %37, ptr %38, align 1, !tbaa !34
  %39 = add nsw i64 %11, -1
  %40 = icmp eq i64 %11, 0
  br i1 %40, label %52, label %10, !llvm.loop !47

41:                                               ; preds = %3
  %42 = load i8, ptr %1, align 1, !tbaa !34
  store i8 %42, ptr %0, align 1, !tbaa !34
  %43 = getelementptr inbounds i8, ptr %1, i64 1
  %44 = load i8, ptr %43, align 1, !tbaa !34
  %45 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %44, ptr %45, align 1, !tbaa !34
  %46 = getelementptr inbounds i8, ptr %1, i64 2
  %47 = load i8, ptr %46, align 1, !tbaa !34
  %48 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %47, ptr %48, align 1, !tbaa !34
  %49 = getelementptr inbounds i8, ptr %1, i64 3
  %50 = load i8, ptr %49, align 1, !tbaa !34
  %51 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %50, ptr %51, align 1, !tbaa !34
  br label %52

52:                                               ; preds = %28, %41
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_color_vividlight_byte(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 {
  %4 = getelementptr inbounds i8, ptr %2, i64 3
  %5 = load i8, ptr %4, align 1, !tbaa !34
  %6 = zext i8 %5 to i32
  %7 = icmp eq i8 %5, 0
  br i1 %7, label %48, label %8

8:                                                ; preds = %3
  %9 = xor i32 %6, 255
  br label %10

10:                                               ; preds = %8, %35
  %11 = phi i64 [ 2, %8 ], [ %46, %35 ]
  %12 = getelementptr inbounds i8, ptr %2, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !34
  %14 = zext i8 %13 to i32
  switch i8 %13, label %16 [
    i8 -1, label %35
    i8 0, label %15
  ]

15:                                               ; preds = %10
  br label %35

16:                                               ; preds = %10
  %17 = icmp slt i8 %13, 0
  %18 = getelementptr inbounds i8, ptr %1, i64 %11
  %19 = load i8, ptr %18, align 1, !tbaa !34
  br i1 %17, label %20, label %27

20:                                               ; preds = %16
  %21 = zext i8 %19 to i32
  %22 = mul nuw nsw i32 %21, 255
  %23 = shl nuw nsw i32 %14, 1
  %24 = xor i32 %23, 510
  %25 = udiv i32 %22, %24
  %26 = tail call i32 @llvm.smin.i32(i32 %25, i32 255)
  br label %35

27:                                               ; preds = %16
  %28 = xor i8 %19, -1
  %29 = zext i8 %28 to i32
  %30 = mul nuw nsw i32 %29, 255
  %31 = shl nuw nsw i32 %14, 1
  %32 = udiv i32 %30, %31
  %33 = sub nsw i32 255, %32
  %34 = tail call i32 @llvm.smax.i32(i32 %33, i32 0)
  br label %35

35:                                               ; preds = %10, %15, %27, %20
  %36 = phi i32 [ 0, %15 ], [ %26, %20 ], [ %34, %27 ], [ 255, %10 ]
  %37 = mul nuw nsw i32 %36, %6
  %38 = getelementptr inbounds i8, ptr %1, i64 %11
  %39 = load i8, ptr %38, align 1, !tbaa !34
  %40 = zext i8 %39 to i32
  %41 = mul nuw nsw i32 %9, %40
  %42 = add nuw nsw i32 %41, %37
  %43 = udiv i32 %42, 255
  %44 = trunc i32 %43 to i8
  %45 = getelementptr inbounds i8, ptr %0, i64 %11
  store i8 %44, ptr %45, align 1, !tbaa !34
  %46 = add nsw i64 %11, -1
  %47 = icmp eq i64 %11, 0
  br i1 %47, label %59, label %10, !llvm.loop !48

48:                                               ; preds = %3
  %49 = load i8, ptr %1, align 1, !tbaa !34
  store i8 %49, ptr %0, align 1, !tbaa !34
  %50 = getelementptr inbounds i8, ptr %1, i64 1
  %51 = load i8, ptr %50, align 1, !tbaa !34
  %52 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %51, ptr %52, align 1, !tbaa !34
  %53 = getelementptr inbounds i8, ptr %1, i64 2
  %54 = load i8, ptr %53, align 1, !tbaa !34
  %55 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %54, ptr %55, align 1, !tbaa !34
  %56 = getelementptr inbounds i8, ptr %1, i64 3
  %57 = load i8, ptr %56, align 1, !tbaa !34
  %58 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %57, ptr %58, align 1, !tbaa !34
  br label %59

59:                                               ; preds = %35, %48
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_color_difference_byte(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 {
  %4 = getelementptr inbounds i8, ptr %2, i64 3
  %5 = load i8, ptr %4, align 1, !tbaa !34
  %6 = zext i8 %5 to i32
  %7 = icmp eq i8 %5, 0
  br i1 %7, label %28, label %8

8:                                                ; preds = %3
  %9 = xor i32 %6, 255
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi i64 [ 3, %8 ], [ %12, %10 ]
  %12 = add nsw i64 %11, -1
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !34
  %15 = zext i8 %14 to i32
  %16 = getelementptr inbounds i8, ptr %2, i64 %12
  %17 = load i8, ptr %16, align 1, !tbaa !34
  %18 = zext i8 %17 to i32
  %19 = sub nsw i32 %15, %18
  %20 = tail call i32 @llvm.abs.i32(i32 %19, i1 true)
  %21 = mul nuw nsw i32 %20, %6
  %22 = mul nuw nsw i32 %9, %15
  %23 = add nuw nsw i32 %21, %22
  %24 = udiv i32 %23, 255
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds i8, ptr %0, i64 %12
  store i8 %25, ptr %26, align 1, !tbaa !34
  %27 = icmp eq i64 %12, 0
  br i1 %27, label %39, label %10, !llvm.loop !49

28:                                               ; preds = %3
  %29 = load i8, ptr %1, align 1, !tbaa !34
  store i8 %29, ptr %0, align 1, !tbaa !34
  %30 = getelementptr inbounds i8, ptr %1, i64 1
  %31 = load i8, ptr %30, align 1, !tbaa !34
  %32 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %31, ptr %32, align 1, !tbaa !34
  %33 = getelementptr inbounds i8, ptr %1, i64 2
  %34 = load i8, ptr %33, align 1, !tbaa !34
  %35 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %34, ptr %35, align 1, !tbaa !34
  %36 = getelementptr inbounds i8, ptr %1, i64 3
  %37 = load i8, ptr %36, align 1, !tbaa !34
  %38 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %37, ptr %38, align 1, !tbaa !34
  br label %39

39:                                               ; preds = %10, %28
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_color_exclusion_byte(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 {
  %4 = getelementptr inbounds i8, ptr %2, i64 3
  %5 = load i8, ptr %4, align 1, !tbaa !34
  %6 = zext i8 %5 to i32
  %7 = icmp eq i8 %5, 0
  br i1 %7, label %32, label %8

8:                                                ; preds = %3
  %9 = xor i32 %6, 255
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi i64 [ 3, %8 ], [ %12, %10 ]
  %12 = add nsw i64 %11, -1
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !34
  %15 = zext i8 %14 to i32
  %16 = shl nuw nsw i32 %15, 1
  %17 = add nsw i32 %16, -254
  %18 = getelementptr inbounds i8, ptr %2, i64 %12
  %19 = load i8, ptr %18, align 1, !tbaa !34
  %20 = zext i8 %19 to i32
  %21 = add nsw i32 %20, -127
  %22 = mul nsw i32 %17, %21
  %23 = sdiv i32 %22, -255
  %24 = add nsw i32 %23, 127
  %25 = mul nsw i32 %24, %6
  %26 = mul nuw nsw i32 %9, %15
  %27 = add nsw i32 %25, %26
  %28 = sdiv i32 %27, 255
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds i8, ptr %0, i64 %12
  store i8 %29, ptr %30, align 1, !tbaa !34
  %31 = icmp eq i64 %12, 0
  br i1 %31, label %43, label %10, !llvm.loop !50

32:                                               ; preds = %3
  %33 = load i8, ptr %1, align 1, !tbaa !34
  store i8 %33, ptr %0, align 1, !tbaa !34
  %34 = getelementptr inbounds i8, ptr %1, i64 1
  %35 = load i8, ptr %34, align 1, !tbaa !34
  %36 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %35, ptr %36, align 1, !tbaa !34
  %37 = getelementptr inbounds i8, ptr %1, i64 2
  %38 = load i8, ptr %37, align 1, !tbaa !34
  %39 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %38, ptr %39, align 1, !tbaa !34
  %40 = getelementptr inbounds i8, ptr %1, i64 3
  %41 = load i8, ptr %40, align 1, !tbaa !34
  %42 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %41, ptr %42, align 1, !tbaa !34
  br label %43

43:                                               ; preds = %10, %32
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @blend_color_color_byte(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = getelementptr inbounds i8, ptr %2, i64 3
  %14 = load i8, ptr %13, align 1, !tbaa !34
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %76, label %16

16:                                               ; preds = %3
  %17 = zext i8 %14 to i32
  %18 = xor i32 %17, 255
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #11
  %19 = load i8, ptr %1, align 1, !tbaa !34
  %20 = uitofp i8 %19 to float
  %21 = fdiv float %20, 2.550000e+02
  %22 = getelementptr inbounds i8, ptr %1, i64 1
  %23 = load i8, ptr %22, align 1, !tbaa !34
  %24 = uitofp i8 %23 to float
  %25 = fdiv float %24, 2.550000e+02
  %26 = getelementptr inbounds i8, ptr %1, i64 2
  %27 = load i8, ptr %26, align 1, !tbaa !34
  %28 = uitofp i8 %27 to float
  %29 = fdiv float %28, 2.550000e+02
  call void @rgb_to_hsv(float noundef %21, float noundef %25, float noundef %29, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  %30 = load i8, ptr %2, align 1, !tbaa !34
  %31 = uitofp i8 %30 to float
  %32 = fdiv float %31, 2.550000e+02
  %33 = getelementptr inbounds i8, ptr %2, i64 1
  %34 = load i8, ptr %33, align 1, !tbaa !34
  %35 = uitofp i8 %34 to float
  %36 = fdiv float %35, 2.550000e+02
  %37 = getelementptr inbounds i8, ptr %2, i64 2
  %38 = load i8, ptr %37, align 1, !tbaa !34
  %39 = uitofp i8 %38 to float
  %40 = fdiv float %39, 2.550000e+02
  call void @rgb_to_hsv(float noundef %32, float noundef %36, float noundef %40, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #11
  %41 = load float, ptr %7, align 4, !tbaa !51
  store float %41, ptr %4, align 4, !tbaa !51
  %42 = load float, ptr %8, align 4, !tbaa !51
  store float %42, ptr %5, align 4, !tbaa !51
  %43 = load float, ptr %6, align 4, !tbaa !51
  call void @hsv_to_rgb(float noundef %41, float noundef %42, float noundef %43, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12) #11
  %44 = load float, ptr %10, align 4, !tbaa !51
  %45 = fmul float %44, 2.550000e+02
  %46 = fptosi float %45 to i32
  %47 = mul nsw i32 %46, %17
  %48 = load i8, ptr %1, align 1, !tbaa !34
  %49 = zext i8 %48 to i32
  %50 = mul nuw nsw i32 %18, %49
  %51 = add nsw i32 %47, %50
  %52 = sdiv i32 %51, 255
  %53 = trunc i32 %52 to i8
  store i8 %53, ptr %0, align 1, !tbaa !34
  %54 = load float, ptr %11, align 4, !tbaa !51
  %55 = fmul float %54, 2.550000e+02
  %56 = fptosi float %55 to i32
  %57 = mul nsw i32 %56, %17
  %58 = load i8, ptr %22, align 1, !tbaa !34
  %59 = zext i8 %58 to i32
  %60 = mul nuw nsw i32 %18, %59
  %61 = add nsw i32 %57, %60
  %62 = sdiv i32 %61, 255
  %63 = trunc i32 %62 to i8
  %64 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %63, ptr %64, align 1, !tbaa !34
  %65 = load float, ptr %12, align 4, !tbaa !51
  %66 = fmul float %65, 2.550000e+02
  %67 = fptosi float %66 to i32
  %68 = mul nsw i32 %67, %17
  %69 = load i8, ptr %26, align 1, !tbaa !34
  %70 = zext i8 %69 to i32
  %71 = mul nuw nsw i32 %18, %70
  %72 = add nsw i32 %68, %71
  %73 = sdiv i32 %72, 255
  %74 = trunc i32 %73 to i8
  %75 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %74, ptr %75, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  br label %87

76:                                               ; preds = %3
  %77 = load i8, ptr %1, align 1, !tbaa !34
  store i8 %77, ptr %0, align 1, !tbaa !34
  %78 = getelementptr inbounds i8, ptr %1, i64 1
  %79 = load i8, ptr %78, align 1, !tbaa !34
  %80 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %79, ptr %80, align 1, !tbaa !34
  %81 = getelementptr inbounds i8, ptr %1, i64 2
  %82 = load i8, ptr %81, align 1, !tbaa !34
  %83 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %82, ptr %83, align 1, !tbaa !34
  %84 = getelementptr inbounds i8, ptr %1, i64 3
  %85 = load i8, ptr %84, align 1, !tbaa !34
  %86 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %85, ptr %86, align 1, !tbaa !34
  br label %87

87:                                               ; preds = %76, %16
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @blend_color_hue_byte(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = getelementptr inbounds i8, ptr %2, i64 3
  %14 = load i8, ptr %13, align 1, !tbaa !34
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %76, label %16

16:                                               ; preds = %3
  %17 = zext i8 %14 to i32
  %18 = xor i32 %17, 255
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #11
  %19 = load i8, ptr %1, align 1, !tbaa !34
  %20 = uitofp i8 %19 to float
  %21 = fdiv float %20, 2.550000e+02
  %22 = getelementptr inbounds i8, ptr %1, i64 1
  %23 = load i8, ptr %22, align 1, !tbaa !34
  %24 = uitofp i8 %23 to float
  %25 = fdiv float %24, 2.550000e+02
  %26 = getelementptr inbounds i8, ptr %1, i64 2
  %27 = load i8, ptr %26, align 1, !tbaa !34
  %28 = uitofp i8 %27 to float
  %29 = fdiv float %28, 2.550000e+02
  call void @rgb_to_hsv(float noundef %21, float noundef %25, float noundef %29, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  %30 = load i8, ptr %2, align 1, !tbaa !34
  %31 = uitofp i8 %30 to float
  %32 = fdiv float %31, 2.550000e+02
  %33 = getelementptr inbounds i8, ptr %2, i64 1
  %34 = load i8, ptr %33, align 1, !tbaa !34
  %35 = uitofp i8 %34 to float
  %36 = fdiv float %35, 2.550000e+02
  %37 = getelementptr inbounds i8, ptr %2, i64 2
  %38 = load i8, ptr %37, align 1, !tbaa !34
  %39 = uitofp i8 %38 to float
  %40 = fdiv float %39, 2.550000e+02
  call void @rgb_to_hsv(float noundef %32, float noundef %36, float noundef %40, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #11
  %41 = load float, ptr %7, align 4, !tbaa !51
  store float %41, ptr %4, align 4, !tbaa !51
  %42 = load float, ptr %5, align 4, !tbaa !51
  %43 = load float, ptr %6, align 4, !tbaa !51
  call void @hsv_to_rgb(float noundef %41, float noundef %42, float noundef %43, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12) #11
  %44 = load float, ptr %10, align 4, !tbaa !51
  %45 = fmul float %44, 2.550000e+02
  %46 = fptosi float %45 to i32
  %47 = mul nsw i32 %46, %17
  %48 = load i8, ptr %1, align 1, !tbaa !34
  %49 = zext i8 %48 to i32
  %50 = mul nuw nsw i32 %18, %49
  %51 = add nsw i32 %47, %50
  %52 = sdiv i32 %51, 255
  %53 = trunc i32 %52 to i8
  store i8 %53, ptr %0, align 1, !tbaa !34
  %54 = load float, ptr %11, align 4, !tbaa !51
  %55 = fmul float %54, 2.550000e+02
  %56 = fptosi float %55 to i32
  %57 = mul nsw i32 %56, %17
  %58 = load i8, ptr %22, align 1, !tbaa !34
  %59 = zext i8 %58 to i32
  %60 = mul nuw nsw i32 %18, %59
  %61 = add nsw i32 %57, %60
  %62 = sdiv i32 %61, 255
  %63 = trunc i32 %62 to i8
  %64 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %63, ptr %64, align 1, !tbaa !34
  %65 = load float, ptr %12, align 4, !tbaa !51
  %66 = fmul float %65, 2.550000e+02
  %67 = fptosi float %66 to i32
  %68 = mul nsw i32 %67, %17
  %69 = load i8, ptr %26, align 1, !tbaa !34
  %70 = zext i8 %69 to i32
  %71 = mul nuw nsw i32 %18, %70
  %72 = add nsw i32 %68, %71
  %73 = sdiv i32 %72, 255
  %74 = trunc i32 %73 to i8
  %75 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %74, ptr %75, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  br label %87

76:                                               ; preds = %3
  %77 = load i8, ptr %1, align 1, !tbaa !34
  store i8 %77, ptr %0, align 1, !tbaa !34
  %78 = getelementptr inbounds i8, ptr %1, i64 1
  %79 = load i8, ptr %78, align 1, !tbaa !34
  %80 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %79, ptr %80, align 1, !tbaa !34
  %81 = getelementptr inbounds i8, ptr %1, i64 2
  %82 = load i8, ptr %81, align 1, !tbaa !34
  %83 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %82, ptr %83, align 1, !tbaa !34
  %84 = getelementptr inbounds i8, ptr %1, i64 3
  %85 = load i8, ptr %84, align 1, !tbaa !34
  %86 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %85, ptr %86, align 1, !tbaa !34
  br label %87

87:                                               ; preds = %76, %16
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @blend_color_saturation_byte(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = getelementptr inbounds i8, ptr %2, i64 3
  %14 = load i8, ptr %13, align 1, !tbaa !34
  %15 = zext i8 %14 to i32
  %16 = icmp eq i8 %14, 0
  br i1 %16, label %81, label %17

17:                                               ; preds = %3
  %18 = xor i32 %15, 255
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #11
  %19 = load i8, ptr %1, align 1, !tbaa !34
  %20 = uitofp i8 %19 to float
  %21 = fdiv float %20, 2.550000e+02
  %22 = getelementptr inbounds i8, ptr %1, i64 1
  %23 = load i8, ptr %22, align 1, !tbaa !34
  %24 = uitofp i8 %23 to float
  %25 = fdiv float %24, 2.550000e+02
  %26 = getelementptr inbounds i8, ptr %1, i64 2
  %27 = load i8, ptr %26, align 1, !tbaa !34
  %28 = uitofp i8 %27 to float
  %29 = fdiv float %28, 2.550000e+02
  call void @rgb_to_hsv(float noundef %21, float noundef %25, float noundef %29, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  %30 = load i8, ptr %2, align 1, !tbaa !34
  %31 = uitofp i8 %30 to float
  %32 = fdiv float %31, 2.550000e+02
  %33 = getelementptr inbounds i8, ptr %2, i64 1
  %34 = load i8, ptr %33, align 1, !tbaa !34
  %35 = uitofp i8 %34 to float
  %36 = fdiv float %35, 2.550000e+02
  %37 = getelementptr inbounds i8, ptr %2, i64 2
  %38 = load i8, ptr %37, align 1, !tbaa !34
  %39 = uitofp i8 %38 to float
  %40 = fdiv float %39, 2.550000e+02
  call void @rgb_to_hsv(float noundef %32, float noundef %36, float noundef %40, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #11
  %41 = load float, ptr %5, align 4, !tbaa !51
  %42 = fcmp ogt float %41, 0x3F40624DE0000000
  br i1 %42, label %43, label %45

43:                                               ; preds = %17
  %44 = load float, ptr %8, align 4, !tbaa !51
  store float %44, ptr %5, align 4, !tbaa !51
  br label %45

45:                                               ; preds = %43, %17
  %46 = load float, ptr %4, align 4, !tbaa !51
  %47 = load float, ptr %5, align 4, !tbaa !51
  %48 = load float, ptr %6, align 4, !tbaa !51
  call void @hsv_to_rgb(float noundef %46, float noundef %47, float noundef %48, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12) #11
  %49 = load float, ptr %10, align 4, !tbaa !51
  %50 = fmul float %49, 2.550000e+02
  %51 = fptosi float %50 to i32
  %52 = mul nsw i32 %51, %15
  %53 = load i8, ptr %1, align 1, !tbaa !34
  %54 = zext i8 %53 to i32
  %55 = mul nuw nsw i32 %18, %54
  %56 = add nsw i32 %52, %55
  %57 = sdiv i32 %56, 255
  %58 = trunc i32 %57 to i8
  store i8 %58, ptr %0, align 1, !tbaa !34
  %59 = load float, ptr %11, align 4, !tbaa !51
  %60 = fmul float %59, 2.550000e+02
  %61 = fptosi float %60 to i32
  %62 = mul nsw i32 %61, %15
  %63 = load i8, ptr %22, align 1, !tbaa !34
  %64 = zext i8 %63 to i32
  %65 = mul nuw nsw i32 %18, %64
  %66 = add nsw i32 %62, %65
  %67 = sdiv i32 %66, 255
  %68 = trunc i32 %67 to i8
  %69 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %68, ptr %69, align 1, !tbaa !34
  %70 = load float, ptr %12, align 4, !tbaa !51
  %71 = fmul float %70, 2.550000e+02
  %72 = fptosi float %71 to i32
  %73 = mul nsw i32 %72, %15
  %74 = load i8, ptr %26, align 1, !tbaa !34
  %75 = zext i8 %74 to i32
  %76 = mul nuw nsw i32 %18, %75
  %77 = add nsw i32 %73, %76
  %78 = sdiv i32 %77, 255
  %79 = trunc i32 %78 to i8
  %80 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %79, ptr %80, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  br label %92

81:                                               ; preds = %3
  %82 = load i8, ptr %1, align 1, !tbaa !34
  store i8 %82, ptr %0, align 1, !tbaa !34
  %83 = getelementptr inbounds i8, ptr %1, i64 1
  %84 = load i8, ptr %83, align 1, !tbaa !34
  %85 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %84, ptr %85, align 1, !tbaa !34
  %86 = getelementptr inbounds i8, ptr %1, i64 2
  %87 = load i8, ptr %86, align 1, !tbaa !34
  %88 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %87, ptr %88, align 1, !tbaa !34
  %89 = getelementptr inbounds i8, ptr %1, i64 3
  %90 = load i8, ptr %89, align 1, !tbaa !34
  %91 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %90, ptr %91, align 1, !tbaa !34
  br label %92

92:                                               ; preds = %81, %45
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @blend_color_luminosity_byte(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = getelementptr inbounds i8, ptr %2, i64 3
  %14 = load i8, ptr %13, align 1, !tbaa !34
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %76, label %16

16:                                               ; preds = %3
  %17 = zext i8 %14 to i32
  %18 = xor i32 %17, 255
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #11
  %19 = load i8, ptr %1, align 1, !tbaa !34
  %20 = uitofp i8 %19 to float
  %21 = fdiv float %20, 2.550000e+02
  %22 = getelementptr inbounds i8, ptr %1, i64 1
  %23 = load i8, ptr %22, align 1, !tbaa !34
  %24 = uitofp i8 %23 to float
  %25 = fdiv float %24, 2.550000e+02
  %26 = getelementptr inbounds i8, ptr %1, i64 2
  %27 = load i8, ptr %26, align 1, !tbaa !34
  %28 = uitofp i8 %27 to float
  %29 = fdiv float %28, 2.550000e+02
  call void @rgb_to_hsv(float noundef %21, float noundef %25, float noundef %29, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  %30 = load i8, ptr %2, align 1, !tbaa !34
  %31 = uitofp i8 %30 to float
  %32 = fdiv float %31, 2.550000e+02
  %33 = getelementptr inbounds i8, ptr %2, i64 1
  %34 = load i8, ptr %33, align 1, !tbaa !34
  %35 = uitofp i8 %34 to float
  %36 = fdiv float %35, 2.550000e+02
  %37 = getelementptr inbounds i8, ptr %2, i64 2
  %38 = load i8, ptr %37, align 1, !tbaa !34
  %39 = uitofp i8 %38 to float
  %40 = fdiv float %39, 2.550000e+02
  call void @rgb_to_hsv(float noundef %32, float noundef %36, float noundef %40, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #11
  %41 = load float, ptr %9, align 4, !tbaa !51
  store float %41, ptr %6, align 4, !tbaa !51
  %42 = load float, ptr %4, align 4, !tbaa !51
  %43 = load float, ptr %5, align 4, !tbaa !51
  call void @hsv_to_rgb(float noundef %42, float noundef %43, float noundef %41, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12) #11
  %44 = load float, ptr %10, align 4, !tbaa !51
  %45 = fmul float %44, 2.550000e+02
  %46 = fptosi float %45 to i32
  %47 = mul nsw i32 %46, %17
  %48 = load i8, ptr %1, align 1, !tbaa !34
  %49 = zext i8 %48 to i32
  %50 = mul nuw nsw i32 %18, %49
  %51 = add nsw i32 %47, %50
  %52 = sdiv i32 %51, 255
  %53 = trunc i32 %52 to i8
  store i8 %53, ptr %0, align 1, !tbaa !34
  %54 = load float, ptr %11, align 4, !tbaa !51
  %55 = fmul float %54, 2.550000e+02
  %56 = fptosi float %55 to i32
  %57 = mul nsw i32 %56, %17
  %58 = load i8, ptr %22, align 1, !tbaa !34
  %59 = zext i8 %58 to i32
  %60 = mul nuw nsw i32 %18, %59
  %61 = add nsw i32 %57, %60
  %62 = sdiv i32 %61, 255
  %63 = trunc i32 %62 to i8
  %64 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %63, ptr %64, align 1, !tbaa !34
  %65 = load float, ptr %12, align 4, !tbaa !51
  %66 = fmul float %65, 2.550000e+02
  %67 = fptosi float %66 to i32
  %68 = mul nsw i32 %67, %17
  %69 = load i8, ptr %26, align 1, !tbaa !34
  %70 = zext i8 %69 to i32
  %71 = mul nuw nsw i32 %18, %70
  %72 = add nsw i32 %68, %71
  %73 = sdiv i32 %72, 255
  %74 = trunc i32 %73 to i8
  %75 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %74, ptr %75, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  br label %87

76:                                               ; preds = %3
  %77 = load i8, ptr %1, align 1, !tbaa !34
  store i8 %77, ptr %0, align 1, !tbaa !34
  %78 = getelementptr inbounds i8, ptr %1, i64 1
  %79 = load i8, ptr %78, align 1, !tbaa !34
  %80 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %79, ptr %80, align 1, !tbaa !34
  %81 = getelementptr inbounds i8, ptr %1, i64 2
  %82 = load i8, ptr %81, align 1, !tbaa !34
  %83 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %82, ptr %83, align 1, !tbaa !34
  %84 = getelementptr inbounds i8, ptr %1, i64 3
  %85 = load i8, ptr %84, align 1, !tbaa !34
  %86 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %85, ptr %86, align 1, !tbaa !34
  br label %87

87:                                               ; preds = %76, %16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @IMB_blend_color_float(ptr noundef writeonly %0, ptr noundef readonly %1, ptr noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  switch i32 %3, label %839 [
    i32 0, label %5
    i32 1, label %41
    i32 2, label %77
    i32 3, label %122
    i32 4, label %166
    i32 5, label %215
    i32 6, label %264
    i32 7, label %301
    i32 8, label %340
    i32 9, label %386
    i32 10, label %434
    i32 11, label %475
    i32 12, label %509
    i32 13, label %549
    i32 14, label %585
    i32 15, label %626
    i32 17, label %672
    i32 16, label %717
    i32 18, label %769
    i32 19, label %801
    i32 23, label %835
    i32 20, label %836
    i32 21, label %837
    i32 22, label %838
  ]

5:                                                ; preds = %4
  %6 = getelementptr inbounds float, ptr %2, i64 3
  %7 = load float, ptr %6, align 4, !tbaa !51
  %8 = fcmp une float %7, 0.000000e+00
  br i1 %8, label %9, label %30

9:                                                ; preds = %5
  %10 = fsub float 1.000000e+00, %7
  %11 = load float, ptr %1, align 4, !tbaa !51
  %12 = load float, ptr %2, align 4, !tbaa !51
  %13 = tail call float @llvm.fmuladd.f32(float %10, float %11, float %12)
  store float %13, ptr %0, align 4, !tbaa !51
  %14 = getelementptr inbounds float, ptr %1, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !51
  %16 = getelementptr inbounds float, ptr %2, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !51
  %18 = tail call float @llvm.fmuladd.f32(float %10, float %15, float %17)
  %19 = getelementptr inbounds float, ptr %0, i64 1
  store float %18, ptr %19, align 4, !tbaa !51
  %20 = getelementptr inbounds float, ptr %1, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !51
  %22 = getelementptr inbounds float, ptr %2, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !51
  %24 = tail call float @llvm.fmuladd.f32(float %10, float %21, float %23)
  %25 = getelementptr inbounds float, ptr %0, i64 2
  store float %24, ptr %25, align 4, !tbaa !51
  %26 = getelementptr inbounds float, ptr %1, i64 3
  %27 = load float, ptr %26, align 4, !tbaa !51
  %28 = tail call float @llvm.fmuladd.f32(float %10, float %27, float %7)
  %29 = getelementptr inbounds float, ptr %0, i64 3
  store float %28, ptr %29, align 4, !tbaa !51
  br label %850

30:                                               ; preds = %5
  %31 = load float, ptr %1, align 4, !tbaa !51
  store float %31, ptr %0, align 4, !tbaa !51
  %32 = getelementptr inbounds float, ptr %1, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !51
  %34 = getelementptr inbounds float, ptr %0, i64 1
  store float %33, ptr %34, align 4, !tbaa !51
  %35 = getelementptr inbounds float, ptr %1, i64 2
  %36 = load float, ptr %35, align 4, !tbaa !51
  %37 = getelementptr inbounds float, ptr %0, i64 2
  store float %36, ptr %37, align 4, !tbaa !51
  %38 = getelementptr inbounds float, ptr %1, i64 3
  %39 = load float, ptr %38, align 4, !tbaa !51
  %40 = getelementptr inbounds float, ptr %0, i64 3
  store float %39, ptr %40, align 4, !tbaa !51
  br label %850

41:                                               ; preds = %4
  %42 = getelementptr inbounds float, ptr %2, i64 3
  %43 = load float, ptr %42, align 4, !tbaa !51
  %44 = fcmp une float %43, 0.000000e+00
  %45 = load float, ptr %1, align 4, !tbaa !51
  br i1 %44, label %46, label %67

46:                                               ; preds = %41
  %47 = load float, ptr %2, align 4, !tbaa !51
  %48 = getelementptr inbounds float, ptr %1, i64 3
  %49 = load float, ptr %48, align 4, !tbaa !51
  %50 = tail call float @llvm.fmuladd.f32(float %47, float %49, float %45)
  store float %50, ptr %0, align 4, !tbaa !51
  %51 = getelementptr inbounds float, ptr %1, i64 1
  %52 = load float, ptr %51, align 4, !tbaa !51
  %53 = getelementptr inbounds float, ptr %2, i64 1
  %54 = load float, ptr %53, align 4, !tbaa !51
  %55 = load float, ptr %48, align 4, !tbaa !51
  %56 = tail call float @llvm.fmuladd.f32(float %54, float %55, float %52)
  %57 = getelementptr inbounds float, ptr %0, i64 1
  store float %56, ptr %57, align 4, !tbaa !51
  %58 = getelementptr inbounds float, ptr %1, i64 2
  %59 = load float, ptr %58, align 4, !tbaa !51
  %60 = getelementptr inbounds float, ptr %2, i64 2
  %61 = load float, ptr %60, align 4, !tbaa !51
  %62 = load float, ptr %48, align 4, !tbaa !51
  %63 = tail call float @llvm.fmuladd.f32(float %61, float %62, float %59)
  %64 = getelementptr inbounds float, ptr %0, i64 2
  store float %63, ptr %64, align 4, !tbaa !51
  %65 = load float, ptr %48, align 4, !tbaa !51
  %66 = getelementptr inbounds float, ptr %0, i64 3
  store float %65, ptr %66, align 4, !tbaa !51
  br label %850

67:                                               ; preds = %41
  store float %45, ptr %0, align 4, !tbaa !51
  %68 = getelementptr inbounds float, ptr %1, i64 1
  %69 = load float, ptr %68, align 4, !tbaa !51
  %70 = getelementptr inbounds float, ptr %0, i64 1
  store float %69, ptr %70, align 4, !tbaa !51
  %71 = getelementptr inbounds float, ptr %1, i64 2
  %72 = load float, ptr %71, align 4, !tbaa !51
  %73 = getelementptr inbounds float, ptr %0, i64 2
  store float %72, ptr %73, align 4, !tbaa !51
  %74 = getelementptr inbounds float, ptr %1, i64 3
  %75 = load float, ptr %74, align 4, !tbaa !51
  %76 = getelementptr inbounds float, ptr %0, i64 3
  store float %75, ptr %76, align 4, !tbaa !51
  br label %850

77:                                               ; preds = %4
  %78 = getelementptr inbounds float, ptr %2, i64 3
  %79 = load float, ptr %78, align 4, !tbaa !51
  %80 = fcmp une float %79, 0.000000e+00
  %81 = load float, ptr %1, align 4, !tbaa !51
  br i1 %80, label %82, label %112

82:                                               ; preds = %77
  %83 = load float, ptr %2, align 4, !tbaa !51
  %84 = getelementptr inbounds float, ptr %1, i64 3
  %85 = load float, ptr %84, align 4, !tbaa !51
  %86 = fneg float %83
  %87 = tail call float @llvm.fmuladd.f32(float %86, float %85, float %81)
  %88 = fcmp ogt float %87, 0.000000e+00
  %89 = select i1 %88, float %87, float 0.000000e+00
  store float %89, ptr %0, align 4, !tbaa !51
  %90 = getelementptr inbounds float, ptr %1, i64 1
  %91 = load float, ptr %90, align 4, !tbaa !51
  %92 = getelementptr inbounds float, ptr %2, i64 1
  %93 = load float, ptr %92, align 4, !tbaa !51
  %94 = load float, ptr %84, align 4, !tbaa !51
  %95 = fneg float %93
  %96 = tail call float @llvm.fmuladd.f32(float %95, float %94, float %91)
  %97 = fcmp ogt float %96, 0.000000e+00
  %98 = select i1 %97, float %96, float 0.000000e+00
  %99 = getelementptr inbounds float, ptr %0, i64 1
  store float %98, ptr %99, align 4, !tbaa !51
  %100 = getelementptr inbounds float, ptr %1, i64 2
  %101 = load float, ptr %100, align 4, !tbaa !51
  %102 = getelementptr inbounds float, ptr %2, i64 2
  %103 = load float, ptr %102, align 4, !tbaa !51
  %104 = load float, ptr %84, align 4, !tbaa !51
  %105 = fneg float %103
  %106 = tail call float @llvm.fmuladd.f32(float %105, float %104, float %101)
  %107 = fcmp ogt float %106, 0.000000e+00
  %108 = select i1 %107, float %106, float 0.000000e+00
  %109 = getelementptr inbounds float, ptr %0, i64 2
  store float %108, ptr %109, align 4, !tbaa !51
  %110 = load float, ptr %84, align 4, !tbaa !51
  %111 = getelementptr inbounds float, ptr %0, i64 3
  store float %110, ptr %111, align 4, !tbaa !51
  br label %850

112:                                              ; preds = %77
  store float %81, ptr %0, align 4, !tbaa !51
  %113 = getelementptr inbounds float, ptr %1, i64 1
  %114 = load float, ptr %113, align 4, !tbaa !51
  %115 = getelementptr inbounds float, ptr %0, i64 1
  store float %114, ptr %115, align 4, !tbaa !51
  %116 = getelementptr inbounds float, ptr %1, i64 2
  %117 = load float, ptr %116, align 4, !tbaa !51
  %118 = getelementptr inbounds float, ptr %0, i64 2
  store float %117, ptr %118, align 4, !tbaa !51
  %119 = getelementptr inbounds float, ptr %1, i64 3
  %120 = load float, ptr %119, align 4, !tbaa !51
  %121 = getelementptr inbounds float, ptr %0, i64 3
  store float %120, ptr %121, align 4, !tbaa !51
  br label %850

122:                                              ; preds = %4
  %123 = getelementptr inbounds float, ptr %2, i64 3
  %124 = load float, ptr %123, align 4, !tbaa !51
  %125 = fcmp une float %124, 0.000000e+00
  br i1 %125, label %126, label %155

126:                                              ; preds = %122
  %127 = fsub float 1.000000e+00, %124
  %128 = load float, ptr %1, align 4, !tbaa !51
  %129 = load float, ptr %2, align 4, !tbaa !51
  %130 = fmul float %128, %129
  %131 = getelementptr inbounds float, ptr %1, i64 3
  %132 = load float, ptr %131, align 4, !tbaa !51
  %133 = fmul float %130, %132
  %134 = tail call float @llvm.fmuladd.f32(float %127, float %128, float %133)
  store float %134, ptr %0, align 4, !tbaa !51
  %135 = getelementptr inbounds float, ptr %1, i64 1
  %136 = load float, ptr %135, align 4, !tbaa !51
  %137 = getelementptr inbounds float, ptr %2, i64 1
  %138 = load float, ptr %137, align 4, !tbaa !51
  %139 = fmul float %136, %138
  %140 = load float, ptr %131, align 4, !tbaa !51
  %141 = fmul float %139, %140
  %142 = tail call float @llvm.fmuladd.f32(float %127, float %136, float %141)
  %143 = getelementptr inbounds float, ptr %0, i64 1
  store float %142, ptr %143, align 4, !tbaa !51
  %144 = getelementptr inbounds float, ptr %1, i64 2
  %145 = load float, ptr %144, align 4, !tbaa !51
  %146 = getelementptr inbounds float, ptr %2, i64 2
  %147 = load float, ptr %146, align 4, !tbaa !51
  %148 = fmul float %145, %147
  %149 = load float, ptr %131, align 4, !tbaa !51
  %150 = fmul float %148, %149
  %151 = tail call float @llvm.fmuladd.f32(float %127, float %145, float %150)
  %152 = getelementptr inbounds float, ptr %0, i64 2
  store float %151, ptr %152, align 4, !tbaa !51
  %153 = load float, ptr %131, align 4, !tbaa !51
  %154 = getelementptr inbounds float, ptr %0, i64 3
  store float %153, ptr %154, align 4, !tbaa !51
  br label %850

155:                                              ; preds = %122
  %156 = load float, ptr %1, align 4, !tbaa !51
  store float %156, ptr %0, align 4, !tbaa !51
  %157 = getelementptr inbounds float, ptr %1, i64 1
  %158 = load float, ptr %157, align 4, !tbaa !51
  %159 = getelementptr inbounds float, ptr %0, i64 1
  store float %158, ptr %159, align 4, !tbaa !51
  %160 = getelementptr inbounds float, ptr %1, i64 2
  %161 = load float, ptr %160, align 4, !tbaa !51
  %162 = getelementptr inbounds float, ptr %0, i64 2
  store float %161, ptr %162, align 4, !tbaa !51
  %163 = getelementptr inbounds float, ptr %1, i64 3
  %164 = load float, ptr %163, align 4, !tbaa !51
  %165 = getelementptr inbounds float, ptr %0, i64 3
  store float %164, ptr %165, align 4, !tbaa !51
  br label %850

166:                                              ; preds = %4
  %167 = getelementptr inbounds float, ptr %2, i64 3
  %168 = load float, ptr %167, align 4, !tbaa !51
  %169 = fcmp une float %168, 0.000000e+00
  br i1 %169, label %170, label %204

170:                                              ; preds = %166
  %171 = fsub float 1.000000e+00, %168
  %172 = getelementptr inbounds float, ptr %1, i64 3
  %173 = load float, ptr %172, align 4, !tbaa !51
  %174 = fdiv float %173, %168
  %175 = load float, ptr %1, align 4, !tbaa !51
  %176 = load float, ptr %2, align 4, !tbaa !51
  %177 = fmul float %174, %176
  %178 = fcmp ogt float %175, %177
  %179 = select i1 %178, float %175, float %177
  %180 = fmul float %168, %179
  %181 = tail call float @llvm.fmuladd.f32(float %171, float %175, float %180)
  store float %181, ptr %0, align 4, !tbaa !51
  %182 = getelementptr inbounds float, ptr %1, i64 1
  %183 = load float, ptr %182, align 4, !tbaa !51
  %184 = getelementptr inbounds float, ptr %2, i64 1
  %185 = load float, ptr %184, align 4, !tbaa !51
  %186 = fmul float %174, %185
  %187 = fcmp ogt float %183, %186
  %188 = select i1 %187, float %183, float %186
  %189 = fmul float %168, %188
  %190 = tail call float @llvm.fmuladd.f32(float %171, float %183, float %189)
  %191 = getelementptr inbounds float, ptr %0, i64 1
  store float %190, ptr %191, align 4, !tbaa !51
  %192 = getelementptr inbounds float, ptr %1, i64 2
  %193 = load float, ptr %192, align 4, !tbaa !51
  %194 = getelementptr inbounds float, ptr %2, i64 2
  %195 = load float, ptr %194, align 4, !tbaa !51
  %196 = fmul float %174, %195
  %197 = fcmp ogt float %193, %196
  %198 = select i1 %197, float %193, float %196
  %199 = fmul float %168, %198
  %200 = tail call float @llvm.fmuladd.f32(float %171, float %193, float %199)
  %201 = getelementptr inbounds float, ptr %0, i64 2
  store float %200, ptr %201, align 4, !tbaa !51
  %202 = load float, ptr %172, align 4, !tbaa !51
  %203 = getelementptr inbounds float, ptr %0, i64 3
  store float %202, ptr %203, align 4, !tbaa !51
  br label %850

204:                                              ; preds = %166
  %205 = load float, ptr %1, align 4, !tbaa !51
  store float %205, ptr %0, align 4, !tbaa !51
  %206 = getelementptr inbounds float, ptr %1, i64 1
  %207 = load float, ptr %206, align 4, !tbaa !51
  %208 = getelementptr inbounds float, ptr %0, i64 1
  store float %207, ptr %208, align 4, !tbaa !51
  %209 = getelementptr inbounds float, ptr %1, i64 2
  %210 = load float, ptr %209, align 4, !tbaa !51
  %211 = getelementptr inbounds float, ptr %0, i64 2
  store float %210, ptr %211, align 4, !tbaa !51
  %212 = getelementptr inbounds float, ptr %1, i64 3
  %213 = load float, ptr %212, align 4, !tbaa !51
  %214 = getelementptr inbounds float, ptr %0, i64 3
  store float %213, ptr %214, align 4, !tbaa !51
  br label %850

215:                                              ; preds = %4
  %216 = getelementptr inbounds float, ptr %2, i64 3
  %217 = load float, ptr %216, align 4, !tbaa !51
  %218 = fcmp une float %217, 0.000000e+00
  br i1 %218, label %219, label %253

219:                                              ; preds = %215
  %220 = fsub float 1.000000e+00, %217
  %221 = getelementptr inbounds float, ptr %1, i64 3
  %222 = load float, ptr %221, align 4, !tbaa !51
  %223 = fdiv float %222, %217
  %224 = load float, ptr %1, align 4, !tbaa !51
  %225 = load float, ptr %2, align 4, !tbaa !51
  %226 = fmul float %223, %225
  %227 = fcmp olt float %224, %226
  %228 = select i1 %227, float %224, float %226
  %229 = fmul float %217, %228
  %230 = tail call float @llvm.fmuladd.f32(float %220, float %224, float %229)
  store float %230, ptr %0, align 4, !tbaa !51
  %231 = getelementptr inbounds float, ptr %1, i64 1
  %232 = load float, ptr %231, align 4, !tbaa !51
  %233 = getelementptr inbounds float, ptr %2, i64 1
  %234 = load float, ptr %233, align 4, !tbaa !51
  %235 = fmul float %223, %234
  %236 = fcmp olt float %232, %235
  %237 = select i1 %236, float %232, float %235
  %238 = fmul float %217, %237
  %239 = tail call float @llvm.fmuladd.f32(float %220, float %232, float %238)
  %240 = getelementptr inbounds float, ptr %0, i64 1
  store float %239, ptr %240, align 4, !tbaa !51
  %241 = getelementptr inbounds float, ptr %1, i64 2
  %242 = load float, ptr %241, align 4, !tbaa !51
  %243 = getelementptr inbounds float, ptr %2, i64 2
  %244 = load float, ptr %243, align 4, !tbaa !51
  %245 = fmul float %223, %244
  %246 = fcmp olt float %242, %245
  %247 = select i1 %246, float %242, float %245
  %248 = fmul float %217, %247
  %249 = tail call float @llvm.fmuladd.f32(float %220, float %242, float %248)
  %250 = getelementptr inbounds float, ptr %0, i64 2
  store float %249, ptr %250, align 4, !tbaa !51
  %251 = load float, ptr %221, align 4, !tbaa !51
  %252 = getelementptr inbounds float, ptr %0, i64 3
  store float %251, ptr %252, align 4, !tbaa !51
  br label %850

253:                                              ; preds = %215
  %254 = load float, ptr %1, align 4, !tbaa !51
  store float %254, ptr %0, align 4, !tbaa !51
  %255 = getelementptr inbounds float, ptr %1, i64 1
  %256 = load float, ptr %255, align 4, !tbaa !51
  %257 = getelementptr inbounds float, ptr %0, i64 1
  store float %256, ptr %257, align 4, !tbaa !51
  %258 = getelementptr inbounds float, ptr %1, i64 2
  %259 = load float, ptr %258, align 4, !tbaa !51
  %260 = getelementptr inbounds float, ptr %0, i64 2
  store float %259, ptr %260, align 4, !tbaa !51
  %261 = getelementptr inbounds float, ptr %1, i64 3
  %262 = load float, ptr %261, align 4, !tbaa !51
  %263 = getelementptr inbounds float, ptr %0, i64 3
  store float %262, ptr %263, align 4, !tbaa !51
  br label %850

264:                                              ; preds = %4
  %265 = getelementptr inbounds float, ptr %2, i64 3
  %266 = load float, ptr %265, align 4, !tbaa !51
  %267 = fcmp une float %266, 0.000000e+00
  br i1 %267, label %268, label %290

268:                                              ; preds = %264
  %269 = getelementptr inbounds float, ptr %1, i64 3
  %270 = load float, ptr %269, align 4, !tbaa !51
  %271 = fcmp ogt float %270, 0.000000e+00
  br i1 %271, label %272, label %290

272:                                              ; preds = %268
  %273 = fsub float %270, %266
  %274 = fcmp ogt float %273, 0.000000e+00
  %275 = select i1 %274, float %273, float 0.000000e+00
  %276 = fcmp ugt float %275, 0x3F40624DE0000000
  %277 = select i1 %276, float %275, float 0.000000e+00
  %278 = fdiv float %277, %270
  %279 = load float, ptr %1, align 4, !tbaa !51
  %280 = fmul float %278, %279
  store float %280, ptr %0, align 4, !tbaa !51
  %281 = getelementptr inbounds float, ptr %1, i64 1
  %282 = load float, ptr %281, align 4, !tbaa !51
  %283 = fmul float %278, %282
  %284 = getelementptr inbounds float, ptr %0, i64 1
  store float %283, ptr %284, align 4, !tbaa !51
  %285 = getelementptr inbounds float, ptr %1, i64 2
  %286 = load float, ptr %285, align 4, !tbaa !51
  %287 = fmul float %278, %286
  %288 = getelementptr inbounds float, ptr %0, i64 2
  store float %287, ptr %288, align 4, !tbaa !51
  %289 = getelementptr inbounds float, ptr %0, i64 3
  store float %277, ptr %289, align 4, !tbaa !51
  br label %850

290:                                              ; preds = %268, %264
  %291 = load float, ptr %1, align 4, !tbaa !51
  store float %291, ptr %0, align 4, !tbaa !51
  %292 = getelementptr inbounds float, ptr %1, i64 1
  %293 = load float, ptr %292, align 4, !tbaa !51
  %294 = getelementptr inbounds float, ptr %0, i64 1
  store float %293, ptr %294, align 4, !tbaa !51
  %295 = getelementptr inbounds float, ptr %1, i64 2
  %296 = load float, ptr %295, align 4, !tbaa !51
  %297 = getelementptr inbounds float, ptr %0, i64 2
  store float %296, ptr %297, align 4, !tbaa !51
  %298 = getelementptr inbounds float, ptr %1, i64 3
  %299 = load float, ptr %298, align 4, !tbaa !51
  %300 = getelementptr inbounds float, ptr %0, i64 3
  store float %299, ptr %300, align 4, !tbaa !51
  br label %850

301:                                              ; preds = %4
  %302 = getelementptr inbounds float, ptr %2, i64 3
  %303 = load float, ptr %302, align 4, !tbaa !51
  %304 = fcmp une float %303, 0.000000e+00
  br i1 %304, label %305, label %329

305:                                              ; preds = %301
  %306 = getelementptr inbounds float, ptr %1, i64 3
  %307 = load float, ptr %306, align 4, !tbaa !51
  %308 = fcmp olt float %307, 1.000000e+00
  br i1 %308, label %309, label %329

309:                                              ; preds = %305
  %310 = fadd float %303, %307
  %311 = fcmp olt float %310, 1.000000e+00
  %312 = select i1 %311, float %310, float 1.000000e+00
  %313 = fcmp ult float %312, 0x3FEFFBE760000000
  %314 = select i1 %313, float %312, float 1.000000e+00
  %315 = fcmp ogt float %307, 0.000000e+00
  %316 = fdiv float %314, %307
  %317 = select i1 %315, float %316, float 1.000000e+00
  %318 = load float, ptr %1, align 4, !tbaa !51
  %319 = fmul float %317, %318
  store float %319, ptr %0, align 4, !tbaa !51
  %320 = getelementptr inbounds float, ptr %1, i64 1
  %321 = load float, ptr %320, align 4, !tbaa !51
  %322 = fmul float %317, %321
  %323 = getelementptr inbounds float, ptr %0, i64 1
  store float %322, ptr %323, align 4, !tbaa !51
  %324 = getelementptr inbounds float, ptr %1, i64 2
  %325 = load float, ptr %324, align 4, !tbaa !51
  %326 = fmul float %317, %325
  %327 = getelementptr inbounds float, ptr %0, i64 2
  store float %326, ptr %327, align 4, !tbaa !51
  %328 = getelementptr inbounds float, ptr %0, i64 3
  store float %314, ptr %328, align 4, !tbaa !51
  br label %850

329:                                              ; preds = %305, %301
  %330 = load float, ptr %1, align 4, !tbaa !51
  store float %330, ptr %0, align 4, !tbaa !51
  %331 = getelementptr inbounds float, ptr %1, i64 1
  %332 = load float, ptr %331, align 4, !tbaa !51
  %333 = getelementptr inbounds float, ptr %0, i64 1
  store float %332, ptr %333, align 4, !tbaa !51
  %334 = getelementptr inbounds float, ptr %1, i64 2
  %335 = load float, ptr %334, align 4, !tbaa !51
  %336 = getelementptr inbounds float, ptr %0, i64 2
  store float %335, ptr %336, align 4, !tbaa !51
  %337 = getelementptr inbounds float, ptr %1, i64 3
  %338 = load float, ptr %337, align 4, !tbaa !51
  %339 = getelementptr inbounds float, ptr %0, i64 3
  store float %338, ptr %339, align 4, !tbaa !51
  br label %850

340:                                              ; preds = %4
  %341 = getelementptr inbounds float, ptr %2, i64 3
  %342 = load float, ptr %341, align 4, !tbaa !51
  %343 = fcmp une float %342, 0.000000e+00
  %344 = fcmp olt float %342, 1.000000e+00
  %345 = and i1 %343, %344
  br i1 %345, label %346, label %375

346:                                              ; preds = %340
  %347 = fsub float 1.000000e+00, %342
  br label %348

348:                                              ; preds = %346, %366
  %349 = phi i64 [ 2, %346 ], [ %373, %366 ]
  %350 = getelementptr inbounds float, ptr %1, i64 %349
  %351 = load float, ptr %350, align 4, !tbaa !51
  %352 = fcmp ogt float %351, 5.000000e-01
  br i1 %352, label %353, label %361

353:                                              ; preds = %348
  %354 = fadd float %351, -5.000000e-01
  %355 = tail call float @llvm.fmuladd.f32(float %354, float -2.000000e+00, float 1.000000e+00)
  %356 = getelementptr inbounds float, ptr %2, i64 %349
  %357 = load float, ptr %356, align 4, !tbaa !51
  %358 = fsub float 1.000000e+00, %357
  %359 = fneg float %355
  %360 = tail call float @llvm.fmuladd.f32(float %359, float %358, float 1.000000e+00)
  br label %366

361:                                              ; preds = %348
  %362 = fmul float %351, 2.000000e+00
  %363 = getelementptr inbounds float, ptr %2, i64 %349
  %364 = load float, ptr %363, align 4, !tbaa !51
  %365 = fmul float %362, %364
  br label %366

366:                                              ; preds = %361, %353
  %367 = phi float [ %360, %353 ], [ %365, %361 ]
  %368 = fmul float %347, %351
  %369 = tail call float @llvm.fmuladd.f32(float %367, float %342, float %368)
  %370 = fcmp olt float %369, 1.000000e+00
  %371 = select i1 %370, float %369, float 1.000000e+00
  %372 = getelementptr inbounds float, ptr %0, i64 %349
  store float %371, ptr %372, align 4, !tbaa !51
  %373 = add nsw i64 %349, -1
  %374 = icmp eq i64 %349, 0
  br i1 %374, label %850, label %348, !llvm.loop !53

375:                                              ; preds = %340
  %376 = load float, ptr %1, align 4, !tbaa !51
  store float %376, ptr %0, align 4, !tbaa !51
  %377 = getelementptr inbounds float, ptr %1, i64 1
  %378 = load float, ptr %377, align 4, !tbaa !51
  %379 = getelementptr inbounds float, ptr %0, i64 1
  store float %378, ptr %379, align 4, !tbaa !51
  %380 = getelementptr inbounds float, ptr %1, i64 2
  %381 = load float, ptr %380, align 4, !tbaa !51
  %382 = getelementptr inbounds float, ptr %0, i64 2
  store float %381, ptr %382, align 4, !tbaa !51
  %383 = getelementptr inbounds float, ptr %1, i64 3
  %384 = load float, ptr %383, align 4, !tbaa !51
  %385 = getelementptr inbounds float, ptr %0, i64 3
  store float %384, ptr %385, align 4, !tbaa !51
  br label %850

386:                                              ; preds = %4
  %387 = getelementptr inbounds float, ptr %2, i64 3
  %388 = load float, ptr %387, align 4, !tbaa !51
  %389 = fcmp une float %388, 0.000000e+00
  %390 = fcmp olt float %388, 1.000000e+00
  %391 = and i1 %389, %390
  br i1 %391, label %392, label %423

392:                                              ; preds = %386
  %393 = fsub float 1.000000e+00, %388
  br label %394

394:                                              ; preds = %392, %412
  %395 = phi i64 [ 2, %392 ], [ %421, %412 ]
  %396 = getelementptr inbounds float, ptr %2, i64 %395
  %397 = load float, ptr %396, align 4, !tbaa !51
  %398 = fcmp ogt float %397, 5.000000e-01
  br i1 %398, label %399, label %407

399:                                              ; preds = %394
  %400 = fadd float %397, -5.000000e-01
  %401 = tail call float @llvm.fmuladd.f32(float %400, float -2.000000e+00, float 1.000000e+00)
  %402 = getelementptr inbounds float, ptr %1, i64 %395
  %403 = load float, ptr %402, align 4, !tbaa !51
  %404 = fsub float 1.000000e+00, %403
  %405 = fneg float %401
  %406 = tail call float @llvm.fmuladd.f32(float %405, float %404, float 1.000000e+00)
  br label %412

407:                                              ; preds = %394
  %408 = fmul float %397, 2.000000e+00
  %409 = getelementptr inbounds float, ptr %1, i64 %395
  %410 = load float, ptr %409, align 4, !tbaa !51
  %411 = fmul float %408, %410
  br label %412

412:                                              ; preds = %407, %399
  %413 = phi float [ %406, %399 ], [ %411, %407 ]
  %414 = getelementptr inbounds float, ptr %1, i64 %395
  %415 = load float, ptr %414, align 4, !tbaa !51
  %416 = fmul float %393, %415
  %417 = tail call float @llvm.fmuladd.f32(float %413, float %388, float %416)
  %418 = fcmp olt float %417, 1.000000e+00
  %419 = select i1 %418, float %417, float 1.000000e+00
  %420 = getelementptr inbounds float, ptr %0, i64 %395
  store float %419, ptr %420, align 4, !tbaa !51
  %421 = add nsw i64 %395, -1
  %422 = icmp eq i64 %395, 0
  br i1 %422, label %850, label %394, !llvm.loop !54

423:                                              ; preds = %386
  %424 = load float, ptr %1, align 4, !tbaa !51
  store float %424, ptr %0, align 4, !tbaa !51
  %425 = getelementptr inbounds float, ptr %1, i64 1
  %426 = load float, ptr %425, align 4, !tbaa !51
  %427 = getelementptr inbounds float, ptr %0, i64 1
  store float %426, ptr %427, align 4, !tbaa !51
  %428 = getelementptr inbounds float, ptr %1, i64 2
  %429 = load float, ptr %428, align 4, !tbaa !51
  %430 = getelementptr inbounds float, ptr %0, i64 2
  store float %429, ptr %430, align 4, !tbaa !51
  %431 = getelementptr inbounds float, ptr %1, i64 3
  %432 = load float, ptr %431, align 4, !tbaa !51
  %433 = getelementptr inbounds float, ptr %0, i64 3
  store float %432, ptr %433, align 4, !tbaa !51
  br label %850

434:                                              ; preds = %4
  %435 = getelementptr inbounds float, ptr %2, i64 3
  %436 = load float, ptr %435, align 4, !tbaa !51
  %437 = fcmp une float %436, 0.000000e+00
  %438 = fcmp olt float %436, 1.000000e+00
  %439 = and i1 %437, %438
  br i1 %439, label %440, label %464

440:                                              ; preds = %434
  %441 = fsub float 1.000000e+00, %436
  br label %442

442:                                              ; preds = %440, %455
  %443 = phi i64 [ 2, %440 ], [ %462, %455 ]
  %444 = getelementptr inbounds float, ptr %2, i64 %443
  %445 = load float, ptr %444, align 4, !tbaa !51
  %446 = fcmp oeq float %445, 0.000000e+00
  br i1 %446, label %455, label %447

447:                                              ; preds = %442
  %448 = getelementptr inbounds float, ptr %1, i64 %443
  %449 = load float, ptr %448, align 4, !tbaa !51
  %450 = fsub float 1.000000e+00, %449
  %451 = fdiv float %450, %445
  %452 = fsub float 1.000000e+00, %451
  %453 = fcmp ogt float %452, 0.000000e+00
  %454 = select i1 %453, float %452, float 0.000000e+00
  br label %455

455:                                              ; preds = %447, %442
  %456 = phi float [ %454, %447 ], [ 0.000000e+00, %442 ]
  %457 = getelementptr inbounds float, ptr %1, i64 %443
  %458 = load float, ptr %457, align 4, !tbaa !51
  %459 = fmul float %441, %458
  %460 = tail call float @llvm.fmuladd.f32(float %456, float %436, float %459)
  %461 = getelementptr inbounds float, ptr %0, i64 %443
  store float %460, ptr %461, align 4, !tbaa !51
  %462 = add nsw i64 %443, -1
  %463 = icmp eq i64 %443, 0
  br i1 %463, label %850, label %442, !llvm.loop !55

464:                                              ; preds = %434
  %465 = load float, ptr %1, align 4, !tbaa !51
  store float %465, ptr %0, align 4, !tbaa !51
  %466 = getelementptr inbounds float, ptr %1, i64 1
  %467 = load float, ptr %466, align 4, !tbaa !51
  %468 = getelementptr inbounds float, ptr %0, i64 1
  store float %467, ptr %468, align 4, !tbaa !51
  %469 = getelementptr inbounds float, ptr %1, i64 2
  %470 = load float, ptr %469, align 4, !tbaa !51
  %471 = getelementptr inbounds float, ptr %0, i64 2
  store float %470, ptr %471, align 4, !tbaa !51
  %472 = getelementptr inbounds float, ptr %1, i64 3
  %473 = load float, ptr %472, align 4, !tbaa !51
  %474 = getelementptr inbounds float, ptr %0, i64 3
  store float %473, ptr %474, align 4, !tbaa !51
  br label %850

475:                                              ; preds = %4
  %476 = getelementptr inbounds float, ptr %2, i64 3
  %477 = load float, ptr %476, align 4, !tbaa !51
  %478 = fcmp une float %477, 0.000000e+00
  %479 = fcmp olt float %477, 1.000000e+00
  %480 = and i1 %478, %479
  br i1 %480, label %481, label %498

481:                                              ; preds = %475
  %482 = fsub float 1.000000e+00, %477
  br label %483

483:                                              ; preds = %481, %483
  %484 = phi i64 [ 3, %481 ], [ %485, %483 ]
  %485 = add nsw i64 %484, -1
  %486 = getelementptr inbounds float, ptr %1, i64 %485
  %487 = load float, ptr %486, align 4, !tbaa !51
  %488 = getelementptr inbounds float, ptr %2, i64 %485
  %489 = load float, ptr %488, align 4, !tbaa !51
  %490 = fadd float %487, %489
  %491 = fadd float %490, -1.000000e+00
  %492 = fcmp ogt float %491, 0.000000e+00
  %493 = select i1 %492, float %491, float 0.000000e+00
  %494 = fmul float %482, %487
  %495 = tail call float @llvm.fmuladd.f32(float %493, float %477, float %494)
  %496 = getelementptr inbounds float, ptr %0, i64 %485
  store float %495, ptr %496, align 4, !tbaa !51
  %497 = icmp eq i64 %485, 0
  br i1 %497, label %850, label %483, !llvm.loop !56

498:                                              ; preds = %475
  %499 = load float, ptr %1, align 4, !tbaa !51
  store float %499, ptr %0, align 4, !tbaa !51
  %500 = getelementptr inbounds float, ptr %1, i64 1
  %501 = load float, ptr %500, align 4, !tbaa !51
  %502 = getelementptr inbounds float, ptr %0, i64 1
  store float %501, ptr %502, align 4, !tbaa !51
  %503 = getelementptr inbounds float, ptr %1, i64 2
  %504 = load float, ptr %503, align 4, !tbaa !51
  %505 = getelementptr inbounds float, ptr %0, i64 2
  store float %504, ptr %505, align 4, !tbaa !51
  %506 = getelementptr inbounds float, ptr %1, i64 3
  %507 = load float, ptr %506, align 4, !tbaa !51
  %508 = getelementptr inbounds float, ptr %0, i64 3
  store float %507, ptr %508, align 4, !tbaa !51
  br label %850

509:                                              ; preds = %4
  %510 = getelementptr inbounds float, ptr %2, i64 3
  %511 = load float, ptr %510, align 4, !tbaa !51
  %512 = fcmp une float %511, 0.000000e+00
  %513 = fcmp olt float %511, 1.000000e+00
  %514 = and i1 %512, %513
  br i1 %514, label %515, label %538

515:                                              ; preds = %509
  %516 = fsub float 1.000000e+00, %511
  br label %517

517:                                              ; preds = %515, %529
  %518 = phi i64 [ 2, %515 ], [ %536, %529 ]
  %519 = getelementptr inbounds float, ptr %2, i64 %518
  %520 = load float, ptr %519, align 4, !tbaa !51
  %521 = fcmp ult float %520, 1.000000e+00
  br i1 %521, label %522, label %529

522:                                              ; preds = %517
  %523 = getelementptr inbounds float, ptr %1, i64 %518
  %524 = load float, ptr %523, align 4, !tbaa !51
  %525 = fsub float 1.000000e+00, %520
  %526 = fdiv float %524, %525
  %527 = fcmp olt float %526, 1.000000e+00
  %528 = select i1 %527, float %526, float 1.000000e+00
  br label %529

529:                                              ; preds = %522, %517
  %530 = phi float [ %528, %522 ], [ 1.000000e+00, %517 ]
  %531 = getelementptr inbounds float, ptr %1, i64 %518
  %532 = load float, ptr %531, align 4, !tbaa !51
  %533 = fmul float %516, %532
  %534 = tail call float @llvm.fmuladd.f32(float %530, float %511, float %533)
  %535 = getelementptr inbounds float, ptr %0, i64 %518
  store float %534, ptr %535, align 4, !tbaa !51
  %536 = add nsw i64 %518, -1
  %537 = icmp eq i64 %518, 0
  br i1 %537, label %850, label %517, !llvm.loop !57

538:                                              ; preds = %509
  %539 = load float, ptr %1, align 4, !tbaa !51
  store float %539, ptr %0, align 4, !tbaa !51
  %540 = getelementptr inbounds float, ptr %1, i64 1
  %541 = load float, ptr %540, align 4, !tbaa !51
  %542 = getelementptr inbounds float, ptr %0, i64 1
  store float %541, ptr %542, align 4, !tbaa !51
  %543 = getelementptr inbounds float, ptr %1, i64 2
  %544 = load float, ptr %543, align 4, !tbaa !51
  %545 = getelementptr inbounds float, ptr %0, i64 2
  store float %544, ptr %545, align 4, !tbaa !51
  %546 = getelementptr inbounds float, ptr %1, i64 3
  %547 = load float, ptr %546, align 4, !tbaa !51
  %548 = getelementptr inbounds float, ptr %0, i64 3
  store float %547, ptr %548, align 4, !tbaa !51
  br label %850

549:                                              ; preds = %4
  %550 = getelementptr inbounds float, ptr %2, i64 3
  %551 = load float, ptr %550, align 4, !tbaa !51
  %552 = fcmp une float %551, 0.000000e+00
  %553 = fcmp olt float %551, 1.000000e+00
  %554 = and i1 %552, %553
  br i1 %554, label %555, label %574

555:                                              ; preds = %549
  %556 = fsub float 1.000000e+00, %551
  br label %557

557:                                              ; preds = %555, %557
  %558 = phi i64 [ 3, %555 ], [ %559, %557 ]
  %559 = add nsw i64 %558, -1
  %560 = getelementptr inbounds float, ptr %1, i64 %559
  %561 = load float, ptr %560, align 4, !tbaa !51
  %562 = fsub float 1.000000e+00, %561
  %563 = getelementptr inbounds float, ptr %2, i64 %559
  %564 = load float, ptr %563, align 4, !tbaa !51
  %565 = fsub float 1.000000e+00, %564
  %566 = fneg float %562
  %567 = tail call float @llvm.fmuladd.f32(float %566, float %565, float 1.000000e+00)
  %568 = fcmp ogt float %567, 0.000000e+00
  %569 = select i1 %568, float %567, float 0.000000e+00
  %570 = fmul float %556, %561
  %571 = tail call float @llvm.fmuladd.f32(float %569, float %551, float %570)
  %572 = getelementptr inbounds float, ptr %0, i64 %559
  store float %571, ptr %572, align 4, !tbaa !51
  %573 = icmp eq i64 %559, 0
  br i1 %573, label %850, label %557, !llvm.loop !58

574:                                              ; preds = %549
  %575 = load float, ptr %1, align 4, !tbaa !51
  store float %575, ptr %0, align 4, !tbaa !51
  %576 = getelementptr inbounds float, ptr %1, i64 1
  %577 = load float, ptr %576, align 4, !tbaa !51
  %578 = getelementptr inbounds float, ptr %0, i64 1
  store float %577, ptr %578, align 4, !tbaa !51
  %579 = getelementptr inbounds float, ptr %1, i64 2
  %580 = load float, ptr %579, align 4, !tbaa !51
  %581 = getelementptr inbounds float, ptr %0, i64 2
  store float %580, ptr %581, align 4, !tbaa !51
  %582 = getelementptr inbounds float, ptr %1, i64 3
  %583 = load float, ptr %582, align 4, !tbaa !51
  %584 = getelementptr inbounds float, ptr %0, i64 3
  store float %583, ptr %584, align 4, !tbaa !51
  br label %850

585:                                              ; preds = %4
  %586 = getelementptr inbounds float, ptr %2, i64 3
  %587 = load float, ptr %586, align 4, !tbaa !51
  %588 = fcmp une float %587, 0.000000e+00
  %589 = fcmp olt float %587, 1.000000e+00
  %590 = and i1 %588, %589
  br i1 %590, label %591, label %615

591:                                              ; preds = %585
  %592 = fsub float 1.000000e+00, %587
  br label %593

593:                                              ; preds = %591, %608
  %594 = phi i64 [ 2, %591 ], [ %613, %608 ]
  %595 = getelementptr inbounds float, ptr %1, i64 %594
  %596 = load float, ptr %595, align 4, !tbaa !51
  %597 = fcmp olt float %596, 5.000000e-01
  %598 = getelementptr inbounds float, ptr %2, i64 %594
  %599 = load float, ptr %598, align 4, !tbaa !51
  %600 = fadd float %599, 5.000000e-01
  br i1 %597, label %601, label %603

601:                                              ; preds = %593
  %602 = fmul float %596, %600
  br label %608

603:                                              ; preds = %593
  %604 = fsub float 1.000000e+00, %600
  %605 = fsub float 1.000000e+00, %596
  %606 = fneg float %604
  %607 = tail call float @llvm.fmuladd.f32(float %606, float %605, float 1.000000e+00)
  br label %608

608:                                              ; preds = %603, %601
  %609 = phi float [ %602, %601 ], [ %607, %603 ]
  %610 = fmul float %592, %596
  %611 = tail call float @llvm.fmuladd.f32(float %609, float %587, float %610)
  %612 = getelementptr inbounds float, ptr %0, i64 %594
  store float %611, ptr %612, align 4, !tbaa !51
  %613 = add nsw i64 %594, -1
  %614 = icmp eq i64 %594, 0
  br i1 %614, label %850, label %593, !llvm.loop !59

615:                                              ; preds = %585
  %616 = load float, ptr %1, align 4, !tbaa !51
  store float %616, ptr %0, align 4, !tbaa !51
  %617 = getelementptr inbounds float, ptr %1, i64 1
  %618 = load float, ptr %617, align 4, !tbaa !51
  %619 = getelementptr inbounds float, ptr %0, i64 1
  store float %618, ptr %619, align 4, !tbaa !51
  %620 = getelementptr inbounds float, ptr %1, i64 2
  %621 = load float, ptr %620, align 4, !tbaa !51
  %622 = getelementptr inbounds float, ptr %0, i64 2
  store float %621, ptr %622, align 4, !tbaa !51
  %623 = getelementptr inbounds float, ptr %1, i64 3
  %624 = load float, ptr %623, align 4, !tbaa !51
  %625 = getelementptr inbounds float, ptr %0, i64 3
  store float %624, ptr %625, align 4, !tbaa !51
  br label %850

626:                                              ; preds = %4
  %627 = getelementptr inbounds float, ptr %2, i64 3
  %628 = load float, ptr %627, align 4, !tbaa !51
  %629 = fcmp une float %628, 0.000000e+00
  %630 = fcmp olt float %628, 1.000000e+00
  %631 = and i1 %629, %630
  br i1 %631, label %632, label %661

632:                                              ; preds = %626
  %633 = fsub float 1.000000e+00, %628
  br label %634

634:                                              ; preds = %632, %652
  %635 = phi i64 [ 2, %632 ], [ %659, %652 ]
  %636 = getelementptr inbounds float, ptr %2, i64 %635
  %637 = load float, ptr %636, align 4, !tbaa !51
  %638 = fcmp ogt float %637, 5.000000e-01
  br i1 %638, label %639, label %646

639:                                              ; preds = %634
  %640 = fadd float %637, -5.000000e-01
  %641 = fmul float %640, 2.000000e+00
  %642 = getelementptr inbounds float, ptr %1, i64 %635
  %643 = load float, ptr %642, align 4, !tbaa !51
  %644 = fcmp ogt float %641, %643
  %645 = select i1 %644, float %641, float %643
  br label %652

646:                                              ; preds = %634
  %647 = fmul float %637, 2.000000e+00
  %648 = getelementptr inbounds float, ptr %1, i64 %635
  %649 = load float, ptr %648, align 4, !tbaa !51
  %650 = fcmp olt float %647, %649
  %651 = select i1 %650, float %647, float %649
  br label %652

652:                                              ; preds = %646, %639
  %653 = phi float [ %645, %639 ], [ %651, %646 ]
  %654 = getelementptr inbounds float, ptr %1, i64 %635
  %655 = load float, ptr %654, align 4, !tbaa !51
  %656 = fmul float %633, %655
  %657 = tail call float @llvm.fmuladd.f32(float %653, float %628, float %656)
  %658 = getelementptr inbounds float, ptr %0, i64 %635
  store float %657, ptr %658, align 4, !tbaa !51
  %659 = add nsw i64 %635, -1
  %660 = icmp eq i64 %635, 0
  br i1 %660, label %850, label %634, !llvm.loop !60

661:                                              ; preds = %626
  %662 = load float, ptr %1, align 4, !tbaa !51
  store float %662, ptr %0, align 4, !tbaa !51
  %663 = getelementptr inbounds float, ptr %1, i64 1
  %664 = load float, ptr %663, align 4, !tbaa !51
  %665 = getelementptr inbounds float, ptr %0, i64 1
  store float %664, ptr %665, align 4, !tbaa !51
  %666 = getelementptr inbounds float, ptr %1, i64 2
  %667 = load float, ptr %666, align 4, !tbaa !51
  %668 = getelementptr inbounds float, ptr %0, i64 2
  store float %667, ptr %668, align 4, !tbaa !51
  %669 = getelementptr inbounds float, ptr %1, i64 3
  %670 = load float, ptr %669, align 4, !tbaa !51
  %671 = getelementptr inbounds float, ptr %0, i64 3
  store float %670, ptr %671, align 4, !tbaa !51
  br label %850

672:                                              ; preds = %4
  %673 = getelementptr inbounds float, ptr %2, i64 3
  %674 = load float, ptr %673, align 4, !tbaa !51
  %675 = fcmp une float %674, 0.000000e+00
  %676 = fcmp olt float %674, 1.000000e+00
  %677 = and i1 %675, %676
  br i1 %677, label %678, label %706

678:                                              ; preds = %672
  %679 = fsub float 1.000000e+00, %674
  br label %680

680:                                              ; preds = %678, %697
  %681 = phi i64 [ 2, %678 ], [ %704, %697 ]
  %682 = getelementptr inbounds float, ptr %2, i64 %681
  %683 = load float, ptr %682, align 4, !tbaa !51
  %684 = fcmp ogt float %683, 5.000000e-01
  %685 = getelementptr inbounds float, ptr %1, i64 %681
  %686 = load float, ptr %685, align 4, !tbaa !51
  br i1 %684, label %687, label %692

687:                                              ; preds = %680
  %688 = fadd float %683, -5.000000e-01
  %689 = tail call float @llvm.fmuladd.f32(float %688, float 2.000000e+00, float %686)
  %690 = fcmp olt float %689, 1.000000e+00
  %691 = select i1 %690, float %689, float 1.000000e+00
  br label %697

692:                                              ; preds = %680
  %693 = tail call float @llvm.fmuladd.f32(float %683, float 2.000000e+00, float %686)
  %694 = fadd float %693, -1.000000e+00
  %695 = fcmp ogt float %694, 0.000000e+00
  %696 = select i1 %695, float %694, float 0.000000e+00
  br label %697

697:                                              ; preds = %692, %687
  %698 = phi float [ %691, %687 ], [ %696, %692 ]
  %699 = getelementptr inbounds float, ptr %1, i64 %681
  %700 = load float, ptr %699, align 4, !tbaa !51
  %701 = fmul float %679, %700
  %702 = tail call float @llvm.fmuladd.f32(float %698, float %674, float %701)
  %703 = getelementptr inbounds float, ptr %0, i64 %681
  store float %702, ptr %703, align 4, !tbaa !51
  %704 = add nsw i64 %681, -1
  %705 = icmp eq i64 %681, 0
  br i1 %705, label %850, label %680, !llvm.loop !61

706:                                              ; preds = %672
  %707 = load float, ptr %1, align 4, !tbaa !51
  store float %707, ptr %0, align 4, !tbaa !51
  %708 = getelementptr inbounds float, ptr %1, i64 1
  %709 = load float, ptr %708, align 4, !tbaa !51
  %710 = getelementptr inbounds float, ptr %0, i64 1
  store float %709, ptr %710, align 4, !tbaa !51
  %711 = getelementptr inbounds float, ptr %1, i64 2
  %712 = load float, ptr %711, align 4, !tbaa !51
  %713 = getelementptr inbounds float, ptr %0, i64 2
  store float %712, ptr %713, align 4, !tbaa !51
  %714 = getelementptr inbounds float, ptr %1, i64 3
  %715 = load float, ptr %714, align 4, !tbaa !51
  %716 = getelementptr inbounds float, ptr %0, i64 3
  store float %715, ptr %716, align 4, !tbaa !51
  br label %850

717:                                              ; preds = %4
  %718 = getelementptr inbounds float, ptr %2, i64 3
  %719 = load float, ptr %718, align 4, !tbaa !51
  %720 = fcmp une float %719, 0.000000e+00
  %721 = fcmp olt float %719, 1.000000e+00
  %722 = and i1 %720, %721
  br i1 %722, label %723, label %758

723:                                              ; preds = %717
  %724 = fsub float 1.000000e+00, %719
  br label %725

725:                                              ; preds = %723, %749
  %726 = phi i64 [ 2, %723 ], [ %756, %749 ]
  %727 = getelementptr inbounds float, ptr %2, i64 %726
  %728 = load float, ptr %727, align 4, !tbaa !51
  %729 = fcmp oeq float %728, 1.000000e+00
  br i1 %729, label %749, label %730

730:                                              ; preds = %725
  %731 = fcmp oeq float %728, 0.000000e+00
  br i1 %731, label %749, label %732

732:                                              ; preds = %730
  %733 = fcmp ogt float %728, 5.000000e-01
  %734 = getelementptr inbounds float, ptr %1, i64 %726
  %735 = load float, ptr %734, align 4, !tbaa !51
  br i1 %733, label %736, label %742

736:                                              ; preds = %732
  %737 = fsub float 1.000000e+00, %728
  %738 = fmul float %737, 2.000000e+00
  %739 = fdiv float %735, %738
  %740 = fcmp olt float %739, 1.000000e+00
  %741 = select i1 %740, float %739, float 1.000000e+00
  br label %749

742:                                              ; preds = %732
  %743 = fsub float 1.000000e+00, %735
  %744 = fmul float %728, 2.000000e+00
  %745 = fdiv float %743, %744
  %746 = fsub float 1.000000e+00, %745
  %747 = fcmp ogt float %746, 0.000000e+00
  %748 = select i1 %747, float %746, float 0.000000e+00
  br label %749

749:                                              ; preds = %742, %736, %730, %725
  %750 = phi float [ %741, %736 ], [ %748, %742 ], [ 1.000000e+00, %725 ], [ 0.000000e+00, %730 ]
  %751 = getelementptr inbounds float, ptr %1, i64 %726
  %752 = load float, ptr %751, align 4, !tbaa !51
  %753 = fmul float %724, %752
  %754 = tail call float @llvm.fmuladd.f32(float %750, float %719, float %753)
  %755 = getelementptr inbounds float, ptr %0, i64 %726
  store float %754, ptr %755, align 4, !tbaa !51
  %756 = add nsw i64 %726, -1
  %757 = icmp eq i64 %726, 0
  br i1 %757, label %850, label %725, !llvm.loop !62

758:                                              ; preds = %717
  %759 = load float, ptr %1, align 4, !tbaa !51
  store float %759, ptr %0, align 4, !tbaa !51
  %760 = getelementptr inbounds float, ptr %1, i64 1
  %761 = load float, ptr %760, align 4, !tbaa !51
  %762 = getelementptr inbounds float, ptr %0, i64 1
  store float %761, ptr %762, align 4, !tbaa !51
  %763 = getelementptr inbounds float, ptr %1, i64 2
  %764 = load float, ptr %763, align 4, !tbaa !51
  %765 = getelementptr inbounds float, ptr %0, i64 2
  store float %764, ptr %765, align 4, !tbaa !51
  %766 = getelementptr inbounds float, ptr %1, i64 3
  %767 = load float, ptr %766, align 4, !tbaa !51
  %768 = getelementptr inbounds float, ptr %0, i64 3
  store float %767, ptr %768, align 4, !tbaa !51
  br label %850

769:                                              ; preds = %4
  %770 = getelementptr inbounds float, ptr %2, i64 3
  %771 = load float, ptr %770, align 4, !tbaa !51
  %772 = fcmp une float %771, 0.000000e+00
  %773 = fcmp olt float %771, 1.000000e+00
  %774 = and i1 %772, %773
  br i1 %774, label %775, label %790

775:                                              ; preds = %769
  %776 = fsub float 1.000000e+00, %771
  br label %777

777:                                              ; preds = %775, %777
  %778 = phi i64 [ 3, %775 ], [ %779, %777 ]
  %779 = add nsw i64 %778, -1
  %780 = getelementptr inbounds float, ptr %1, i64 %779
  %781 = load float, ptr %780, align 4, !tbaa !51
  %782 = getelementptr inbounds float, ptr %2, i64 %779
  %783 = load float, ptr %782, align 4, !tbaa !51
  %784 = fsub float %781, %783
  %785 = tail call float @llvm.fabs.f32(float %784)
  %786 = fmul float %776, %781
  %787 = tail call float @llvm.fmuladd.f32(float %785, float %771, float %786)
  %788 = getelementptr inbounds float, ptr %0, i64 %779
  store float %787, ptr %788, align 4, !tbaa !51
  %789 = icmp eq i64 %779, 0
  br i1 %789, label %850, label %777, !llvm.loop !63

790:                                              ; preds = %769
  %791 = load float, ptr %1, align 4, !tbaa !51
  store float %791, ptr %0, align 4, !tbaa !51
  %792 = getelementptr inbounds float, ptr %1, i64 1
  %793 = load float, ptr %792, align 4, !tbaa !51
  %794 = getelementptr inbounds float, ptr %0, i64 1
  store float %793, ptr %794, align 4, !tbaa !51
  %795 = getelementptr inbounds float, ptr %1, i64 2
  %796 = load float, ptr %795, align 4, !tbaa !51
  %797 = getelementptr inbounds float, ptr %0, i64 2
  store float %796, ptr %797, align 4, !tbaa !51
  %798 = getelementptr inbounds float, ptr %1, i64 3
  %799 = load float, ptr %798, align 4, !tbaa !51
  %800 = getelementptr inbounds float, ptr %0, i64 3
  store float %799, ptr %800, align 4, !tbaa !51
  br label %850

801:                                              ; preds = %4
  %802 = getelementptr inbounds float, ptr %2, i64 3
  %803 = load float, ptr %802, align 4, !tbaa !51
  %804 = fcmp une float %803, 0.000000e+00
  %805 = fcmp olt float %803, 1.000000e+00
  %806 = and i1 %804, %805
  br i1 %806, label %807, label %824

807:                                              ; preds = %801
  %808 = fsub float 1.000000e+00, %803
  br label %809

809:                                              ; preds = %807, %809
  %810 = phi i64 [ 3, %807 ], [ %811, %809 ]
  %811 = add nsw i64 %810, -1
  %812 = getelementptr inbounds float, ptr %1, i64 %811
  %813 = load float, ptr %812, align 4, !tbaa !51
  %814 = fadd float %813, -5.000000e-01
  %815 = getelementptr inbounds float, ptr %2, i64 %811
  %816 = load float, ptr %815, align 4, !tbaa !51
  %817 = fadd float %816, -5.000000e-01
  %818 = fmul float %814, -2.000000e+00
  %819 = tail call float @llvm.fmuladd.f32(float %818, float %817, float 5.000000e-01)
  %820 = fmul float %808, %813
  %821 = tail call float @llvm.fmuladd.f32(float %819, float %803, float %820)
  %822 = getelementptr inbounds float, ptr %0, i64 %811
  store float %821, ptr %822, align 4, !tbaa !51
  %823 = icmp eq i64 %811, 0
  br i1 %823, label %850, label %809, !llvm.loop !64

824:                                              ; preds = %801
  %825 = load float, ptr %1, align 4, !tbaa !51
  store float %825, ptr %0, align 4, !tbaa !51
  %826 = getelementptr inbounds float, ptr %1, i64 1
  %827 = load float, ptr %826, align 4, !tbaa !51
  %828 = getelementptr inbounds float, ptr %0, i64 1
  store float %827, ptr %828, align 4, !tbaa !51
  %829 = getelementptr inbounds float, ptr %1, i64 2
  %830 = load float, ptr %829, align 4, !tbaa !51
  %831 = getelementptr inbounds float, ptr %0, i64 2
  store float %830, ptr %831, align 4, !tbaa !51
  %832 = getelementptr inbounds float, ptr %1, i64 3
  %833 = load float, ptr %832, align 4, !tbaa !51
  %834 = getelementptr inbounds float, ptr %0, i64 3
  store float %833, ptr %834, align 4, !tbaa !51
  br label %850

835:                                              ; preds = %4
  tail call void @blend_color_color_float(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %850

836:                                              ; preds = %4
  tail call void @blend_color_hue_float(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %850

837:                                              ; preds = %4
  tail call void @blend_color_saturation_float(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %850

838:                                              ; preds = %4
  tail call void @blend_color_luminosity_float(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %850

839:                                              ; preds = %4
  %840 = load float, ptr %1, align 4, !tbaa !51
  store float %840, ptr %0, align 4, !tbaa !51
  %841 = getelementptr inbounds float, ptr %1, i64 1
  %842 = load float, ptr %841, align 4, !tbaa !51
  %843 = getelementptr inbounds float, ptr %0, i64 1
  store float %842, ptr %843, align 4, !tbaa !51
  %844 = getelementptr inbounds float, ptr %1, i64 2
  %845 = load float, ptr %844, align 4, !tbaa !51
  %846 = getelementptr inbounds float, ptr %0, i64 2
  store float %845, ptr %846, align 4, !tbaa !51
  %847 = getelementptr inbounds float, ptr %1, i64 3
  %848 = load float, ptr %847, align 4, !tbaa !51
  %849 = getelementptr inbounds float, ptr %0, i64 3
  store float %848, ptr %849, align 4, !tbaa !51
  br label %850

850:                                              ; preds = %809, %777, %749, %697, %652, %608, %557, %529, %483, %455, %412, %366, %824, %790, %758, %706, %661, %615, %574, %538, %498, %464, %423, %375, %329, %309, %290, %272, %253, %219, %204, %170, %155, %126, %112, %82, %67, %46, %30, %9, %839, %838, %837, %836, %835
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @blend_color_mix_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 {
  %4 = getelementptr inbounds float, ptr %2, i64 3
  %5 = load float, ptr %4, align 4, !tbaa !51
  %6 = fcmp une float %5, 0.000000e+00
  br i1 %6, label %7, label %27

7:                                                ; preds = %3
  %8 = fsub float 1.000000e+00, %5
  %9 = load float, ptr %1, align 4, !tbaa !51
  %10 = load float, ptr %2, align 4, !tbaa !51
  %11 = tail call float @llvm.fmuladd.f32(float %8, float %9, float %10)
  store float %11, ptr %0, align 4, !tbaa !51
  %12 = getelementptr inbounds float, ptr %1, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !51
  %14 = getelementptr inbounds float, ptr %2, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !51
  %16 = tail call float @llvm.fmuladd.f32(float %8, float %13, float %15)
  %17 = getelementptr inbounds float, ptr %0, i64 1
  store float %16, ptr %17, align 4, !tbaa !51
  %18 = getelementptr inbounds float, ptr %1, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !51
  %20 = getelementptr inbounds float, ptr %2, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !51
  %22 = tail call float @llvm.fmuladd.f32(float %8, float %19, float %21)
  %23 = getelementptr inbounds float, ptr %0, i64 2
  store float %22, ptr %23, align 4, !tbaa !51
  %24 = getelementptr inbounds float, ptr %1, i64 3
  %25 = load float, ptr %24, align 4, !tbaa !51
  %26 = tail call float @llvm.fmuladd.f32(float %8, float %25, float %5)
  br label %37

27:                                               ; preds = %3
  %28 = load float, ptr %1, align 4, !tbaa !51
  store float %28, ptr %0, align 4, !tbaa !51
  %29 = getelementptr inbounds float, ptr %1, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !51
  %31 = getelementptr inbounds float, ptr %0, i64 1
  store float %30, ptr %31, align 4, !tbaa !51
  %32 = getelementptr inbounds float, ptr %1, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !51
  %34 = getelementptr inbounds float, ptr %0, i64 2
  store float %33, ptr %34, align 4, !tbaa !51
  %35 = getelementptr inbounds float, ptr %1, i64 3
  %36 = load float, ptr %35, align 4, !tbaa !51
  br label %37

37:                                               ; preds = %27, %7
  %38 = phi float [ %36, %27 ], [ %26, %7 ]
  %39 = getelementptr inbounds float, ptr %0, i64 3
  store float %38, ptr %39, align 4, !tbaa !51
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @blend_color_add_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 {
  %4 = getelementptr inbounds float, ptr %2, i64 3
  %5 = load float, ptr %4, align 4, !tbaa !51
  %6 = fcmp une float %5, 0.000000e+00
  %7 = load float, ptr %1, align 4, !tbaa !51
  br i1 %6, label %8, label %27

8:                                                ; preds = %3
  %9 = load float, ptr %2, align 4, !tbaa !51
  %10 = getelementptr inbounds float, ptr %1, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !51
  %12 = tail call float @llvm.fmuladd.f32(float %9, float %11, float %7)
  store float %12, ptr %0, align 4, !tbaa !51
  %13 = getelementptr inbounds float, ptr %1, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !51
  %15 = getelementptr inbounds float, ptr %2, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !51
  %17 = load float, ptr %10, align 4, !tbaa !51
  %18 = tail call float @llvm.fmuladd.f32(float %16, float %17, float %14)
  %19 = getelementptr inbounds float, ptr %0, i64 1
  store float %18, ptr %19, align 4, !tbaa !51
  %20 = getelementptr inbounds float, ptr %1, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !51
  %22 = getelementptr inbounds float, ptr %2, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !51
  %24 = load float, ptr %10, align 4, !tbaa !51
  %25 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %21)
  %26 = getelementptr inbounds float, ptr %0, i64 2
  store float %25, ptr %26, align 4, !tbaa !51
  br label %35

27:                                               ; preds = %3
  store float %7, ptr %0, align 4, !tbaa !51
  %28 = getelementptr inbounds float, ptr %1, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !51
  %30 = getelementptr inbounds float, ptr %0, i64 1
  store float %29, ptr %30, align 4, !tbaa !51
  %31 = getelementptr inbounds float, ptr %1, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !51
  %33 = getelementptr inbounds float, ptr %0, i64 2
  store float %32, ptr %33, align 4, !tbaa !51
  %34 = getelementptr inbounds float, ptr %1, i64 3
  br label %35

35:                                               ; preds = %27, %8
  %36 = phi ptr [ %34, %27 ], [ %10, %8 ]
  %37 = load float, ptr %36, align 4, !tbaa !51
  %38 = getelementptr inbounds float, ptr %0, i64 3
  store float %37, ptr %38, align 4, !tbaa !51
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @blend_color_sub_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 {
  %4 = getelementptr inbounds float, ptr %2, i64 3
  %5 = load float, ptr %4, align 4, !tbaa !51
  %6 = fcmp une float %5, 0.000000e+00
  %7 = load float, ptr %1, align 4, !tbaa !51
  br i1 %6, label %8, label %36

8:                                                ; preds = %3
  %9 = load float, ptr %2, align 4, !tbaa !51
  %10 = getelementptr inbounds float, ptr %1, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !51
  %12 = fneg float %9
  %13 = tail call float @llvm.fmuladd.f32(float %12, float %11, float %7)
  %14 = fcmp ogt float %13, 0.000000e+00
  %15 = select i1 %14, float %13, float 0.000000e+00
  store float %15, ptr %0, align 4, !tbaa !51
  %16 = getelementptr inbounds float, ptr %1, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !51
  %18 = getelementptr inbounds float, ptr %2, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !51
  %20 = load float, ptr %10, align 4, !tbaa !51
  %21 = fneg float %19
  %22 = tail call float @llvm.fmuladd.f32(float %21, float %20, float %17)
  %23 = fcmp ogt float %22, 0.000000e+00
  %24 = select i1 %23, float %22, float 0.000000e+00
  %25 = getelementptr inbounds float, ptr %0, i64 1
  store float %24, ptr %25, align 4, !tbaa !51
  %26 = getelementptr inbounds float, ptr %1, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !51
  %28 = getelementptr inbounds float, ptr %2, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !51
  %30 = load float, ptr %10, align 4, !tbaa !51
  %31 = fneg float %29
  %32 = tail call float @llvm.fmuladd.f32(float %31, float %30, float %27)
  %33 = fcmp ogt float %32, 0.000000e+00
  %34 = select i1 %33, float %32, float 0.000000e+00
  %35 = getelementptr inbounds float, ptr %0, i64 2
  store float %34, ptr %35, align 4, !tbaa !51
  br label %44

36:                                               ; preds = %3
  store float %7, ptr %0, align 4, !tbaa !51
  %37 = getelementptr inbounds float, ptr %1, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !51
  %39 = getelementptr inbounds float, ptr %0, i64 1
  store float %38, ptr %39, align 4, !tbaa !51
  %40 = getelementptr inbounds float, ptr %1, i64 2
  %41 = load float, ptr %40, align 4, !tbaa !51
  %42 = getelementptr inbounds float, ptr %0, i64 2
  store float %41, ptr %42, align 4, !tbaa !51
  %43 = getelementptr inbounds float, ptr %1, i64 3
  br label %44

44:                                               ; preds = %36, %8
  %45 = phi ptr [ %43, %36 ], [ %10, %8 ]
  %46 = load float, ptr %45, align 4, !tbaa !51
  %47 = getelementptr inbounds float, ptr %0, i64 3
  store float %46, ptr %47, align 4, !tbaa !51
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @blend_color_mul_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 {
  %4 = getelementptr inbounds float, ptr %2, i64 3
  %5 = load float, ptr %4, align 4, !tbaa !51
  %6 = fcmp une float %5, 0.000000e+00
  br i1 %6, label %7, label %34

7:                                                ; preds = %3
  %8 = fsub float 1.000000e+00, %5
  %9 = load float, ptr %1, align 4, !tbaa !51
  %10 = load float, ptr %2, align 4, !tbaa !51
  %11 = fmul float %9, %10
  %12 = getelementptr inbounds float, ptr %1, i64 3
  %13 = load float, ptr %12, align 4, !tbaa !51
  %14 = fmul float %11, %13
  %15 = tail call float @llvm.fmuladd.f32(float %8, float %9, float %14)
  store float %15, ptr %0, align 4, !tbaa !51
  %16 = getelementptr inbounds float, ptr %1, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !51
  %18 = getelementptr inbounds float, ptr %2, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !51
  %20 = fmul float %17, %19
  %21 = load float, ptr %12, align 4, !tbaa !51
  %22 = fmul float %20, %21
  %23 = tail call float @llvm.fmuladd.f32(float %8, float %17, float %22)
  %24 = getelementptr inbounds float, ptr %0, i64 1
  store float %23, ptr %24, align 4, !tbaa !51
  %25 = getelementptr inbounds float, ptr %1, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !51
  %27 = getelementptr inbounds float, ptr %2, i64 2
  %28 = load float, ptr %27, align 4, !tbaa !51
  %29 = fmul float %26, %28
  %30 = load float, ptr %12, align 4, !tbaa !51
  %31 = fmul float %29, %30
  %32 = tail call float @llvm.fmuladd.f32(float %8, float %26, float %31)
  %33 = getelementptr inbounds float, ptr %0, i64 2
  store float %32, ptr %33, align 4, !tbaa !51
  br label %43

34:                                               ; preds = %3
  %35 = load float, ptr %1, align 4, !tbaa !51
  store float %35, ptr %0, align 4, !tbaa !51
  %36 = getelementptr inbounds float, ptr %1, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !51
  %38 = getelementptr inbounds float, ptr %0, i64 1
  store float %37, ptr %38, align 4, !tbaa !51
  %39 = getelementptr inbounds float, ptr %1, i64 2
  %40 = load float, ptr %39, align 4, !tbaa !51
  %41 = getelementptr inbounds float, ptr %0, i64 2
  store float %40, ptr %41, align 4, !tbaa !51
  %42 = getelementptr inbounds float, ptr %1, i64 3
  br label %43

43:                                               ; preds = %34, %7
  %44 = phi ptr [ %42, %34 ], [ %12, %7 ]
  %45 = load float, ptr %44, align 4, !tbaa !51
  %46 = getelementptr inbounds float, ptr %0, i64 3
  store float %45, ptr %46, align 4, !tbaa !51
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @blend_color_lighten_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 {
  %4 = getelementptr inbounds float, ptr %2, i64 3
  %5 = load float, ptr %4, align 4, !tbaa !51
  %6 = fcmp une float %5, 0.000000e+00
  br i1 %6, label %7, label %39

7:                                                ; preds = %3
  %8 = fsub float 1.000000e+00, %5
  %9 = getelementptr inbounds float, ptr %1, i64 3
  %10 = load float, ptr %9, align 4, !tbaa !51
  %11 = fdiv float %10, %5
  %12 = load float, ptr %1, align 4, !tbaa !51
  %13 = load float, ptr %2, align 4, !tbaa !51
  %14 = fmul float %11, %13
  %15 = fcmp ogt float %12, %14
  %16 = select i1 %15, float %12, float %14
  %17 = fmul float %5, %16
  %18 = tail call float @llvm.fmuladd.f32(float %8, float %12, float %17)
  store float %18, ptr %0, align 4, !tbaa !51
  %19 = getelementptr inbounds float, ptr %1, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !51
  %21 = getelementptr inbounds float, ptr %2, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !51
  %23 = fmul float %11, %22
  %24 = fcmp ogt float %20, %23
  %25 = select i1 %24, float %20, float %23
  %26 = fmul float %5, %25
  %27 = tail call float @llvm.fmuladd.f32(float %8, float %20, float %26)
  %28 = getelementptr inbounds float, ptr %0, i64 1
  store float %27, ptr %28, align 4, !tbaa !51
  %29 = getelementptr inbounds float, ptr %1, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !51
  %31 = getelementptr inbounds float, ptr %2, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !51
  %33 = fmul float %11, %32
  %34 = fcmp ogt float %30, %33
  %35 = select i1 %34, float %30, float %33
  %36 = fmul float %5, %35
  %37 = tail call float @llvm.fmuladd.f32(float %8, float %30, float %36)
  %38 = getelementptr inbounds float, ptr %0, i64 2
  store float %37, ptr %38, align 4, !tbaa !51
  br label %48

39:                                               ; preds = %3
  %40 = load float, ptr %1, align 4, !tbaa !51
  store float %40, ptr %0, align 4, !tbaa !51
  %41 = getelementptr inbounds float, ptr %1, i64 1
  %42 = load float, ptr %41, align 4, !tbaa !51
  %43 = getelementptr inbounds float, ptr %0, i64 1
  store float %42, ptr %43, align 4, !tbaa !51
  %44 = getelementptr inbounds float, ptr %1, i64 2
  %45 = load float, ptr %44, align 4, !tbaa !51
  %46 = getelementptr inbounds float, ptr %0, i64 2
  store float %45, ptr %46, align 4, !tbaa !51
  %47 = getelementptr inbounds float, ptr %1, i64 3
  br label %48

48:                                               ; preds = %39, %7
  %49 = phi ptr [ %47, %39 ], [ %9, %7 ]
  %50 = load float, ptr %49, align 4, !tbaa !51
  %51 = getelementptr inbounds float, ptr %0, i64 3
  store float %50, ptr %51, align 4, !tbaa !51
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @blend_color_darken_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 {
  %4 = getelementptr inbounds float, ptr %2, i64 3
  %5 = load float, ptr %4, align 4, !tbaa !51
  %6 = fcmp une float %5, 0.000000e+00
  br i1 %6, label %7, label %39

7:                                                ; preds = %3
  %8 = fsub float 1.000000e+00, %5
  %9 = getelementptr inbounds float, ptr %1, i64 3
  %10 = load float, ptr %9, align 4, !tbaa !51
  %11 = fdiv float %10, %5
  %12 = load float, ptr %1, align 4, !tbaa !51
  %13 = load float, ptr %2, align 4, !tbaa !51
  %14 = fmul float %11, %13
  %15 = fcmp olt float %12, %14
  %16 = select i1 %15, float %12, float %14
  %17 = fmul float %5, %16
  %18 = tail call float @llvm.fmuladd.f32(float %8, float %12, float %17)
  store float %18, ptr %0, align 4, !tbaa !51
  %19 = getelementptr inbounds float, ptr %1, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !51
  %21 = getelementptr inbounds float, ptr %2, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !51
  %23 = fmul float %11, %22
  %24 = fcmp olt float %20, %23
  %25 = select i1 %24, float %20, float %23
  %26 = fmul float %5, %25
  %27 = tail call float @llvm.fmuladd.f32(float %8, float %20, float %26)
  %28 = getelementptr inbounds float, ptr %0, i64 1
  store float %27, ptr %28, align 4, !tbaa !51
  %29 = getelementptr inbounds float, ptr %1, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !51
  %31 = getelementptr inbounds float, ptr %2, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !51
  %33 = fmul float %11, %32
  %34 = fcmp olt float %30, %33
  %35 = select i1 %34, float %30, float %33
  %36 = fmul float %5, %35
  %37 = tail call float @llvm.fmuladd.f32(float %8, float %30, float %36)
  %38 = getelementptr inbounds float, ptr %0, i64 2
  store float %37, ptr %38, align 4, !tbaa !51
  br label %48

39:                                               ; preds = %3
  %40 = load float, ptr %1, align 4, !tbaa !51
  store float %40, ptr %0, align 4, !tbaa !51
  %41 = getelementptr inbounds float, ptr %1, i64 1
  %42 = load float, ptr %41, align 4, !tbaa !51
  %43 = getelementptr inbounds float, ptr %0, i64 1
  store float %42, ptr %43, align 4, !tbaa !51
  %44 = getelementptr inbounds float, ptr %1, i64 2
  %45 = load float, ptr %44, align 4, !tbaa !51
  %46 = getelementptr inbounds float, ptr %0, i64 2
  store float %45, ptr %46, align 4, !tbaa !51
  %47 = getelementptr inbounds float, ptr %1, i64 3
  br label %48

48:                                               ; preds = %39, %7
  %49 = phi ptr [ %47, %39 ], [ %9, %7 ]
  %50 = load float, ptr %49, align 4, !tbaa !51
  %51 = getelementptr inbounds float, ptr %0, i64 3
  store float %50, ptr %51, align 4, !tbaa !51
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @blend_color_erase_alpha_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 {
  %4 = getelementptr inbounds float, ptr %2, i64 3
  %5 = load float, ptr %4, align 4, !tbaa !51
  %6 = fcmp une float %5, 0.000000e+00
  br i1 %6, label %7, label %28

7:                                                ; preds = %3
  %8 = getelementptr inbounds float, ptr %1, i64 3
  %9 = load float, ptr %8, align 4, !tbaa !51
  %10 = fcmp ogt float %9, 0.000000e+00
  br i1 %10, label %11, label %28

11:                                               ; preds = %7
  %12 = fsub float %9, %5
  %13 = fcmp ogt float %12, 0.000000e+00
  %14 = select i1 %13, float %12, float 0.000000e+00
  %15 = fcmp ugt float %14, 0x3F40624DE0000000
  %16 = select i1 %15, float %14, float 0.000000e+00
  %17 = fdiv float %16, %9
  %18 = load float, ptr %1, align 4, !tbaa !51
  %19 = fmul float %17, %18
  store float %19, ptr %0, align 4, !tbaa !51
  %20 = getelementptr inbounds float, ptr %1, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !51
  %22 = fmul float %17, %21
  %23 = getelementptr inbounds float, ptr %0, i64 1
  store float %22, ptr %23, align 4, !tbaa !51
  %24 = getelementptr inbounds float, ptr %1, i64 2
  %25 = load float, ptr %24, align 4, !tbaa !51
  %26 = fmul float %17, %25
  %27 = getelementptr inbounds float, ptr %0, i64 2
  store float %26, ptr %27, align 4, !tbaa !51
  br label %38

28:                                               ; preds = %7, %3
  %29 = load float, ptr %1, align 4, !tbaa !51
  store float %29, ptr %0, align 4, !tbaa !51
  %30 = getelementptr inbounds float, ptr %1, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !51
  %32 = getelementptr inbounds float, ptr %0, i64 1
  store float %31, ptr %32, align 4, !tbaa !51
  %33 = getelementptr inbounds float, ptr %1, i64 2
  %34 = load float, ptr %33, align 4, !tbaa !51
  %35 = getelementptr inbounds float, ptr %0, i64 2
  store float %34, ptr %35, align 4, !tbaa !51
  %36 = getelementptr inbounds float, ptr %1, i64 3
  %37 = load float, ptr %36, align 4, !tbaa !51
  br label %38

38:                                               ; preds = %28, %11
  %39 = phi float [ %37, %28 ], [ %16, %11 ]
  %40 = getelementptr inbounds float, ptr %0, i64 3
  store float %39, ptr %40, align 4, !tbaa !51
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @blend_color_add_alpha_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 {
  %4 = getelementptr inbounds float, ptr %2, i64 3
  %5 = load float, ptr %4, align 4, !tbaa !51
  %6 = fcmp une float %5, 0.000000e+00
  br i1 %6, label %7, label %30

7:                                                ; preds = %3
  %8 = getelementptr inbounds float, ptr %1, i64 3
  %9 = load float, ptr %8, align 4, !tbaa !51
  %10 = fcmp olt float %9, 1.000000e+00
  br i1 %10, label %11, label %30

11:                                               ; preds = %7
  %12 = fadd float %5, %9
  %13 = fcmp olt float %12, 1.000000e+00
  %14 = select i1 %13, float %12, float 1.000000e+00
  %15 = fcmp ult float %14, 0x3FEFFBE760000000
  %16 = select i1 %15, float %14, float 1.000000e+00
  %17 = fcmp ogt float %9, 0.000000e+00
  %18 = fdiv float %16, %9
  %19 = select i1 %17, float %18, float 1.000000e+00
  %20 = load float, ptr %1, align 4, !tbaa !51
  %21 = fmul float %19, %20
  store float %21, ptr %0, align 4, !tbaa !51
  %22 = getelementptr inbounds float, ptr %1, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !51
  %24 = fmul float %19, %23
  %25 = getelementptr inbounds float, ptr %0, i64 1
  store float %24, ptr %25, align 4, !tbaa !51
  %26 = getelementptr inbounds float, ptr %1, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !51
  %28 = fmul float %19, %27
  %29 = getelementptr inbounds float, ptr %0, i64 2
  store float %28, ptr %29, align 4, !tbaa !51
  br label %40

30:                                               ; preds = %7, %3
  %31 = load float, ptr %1, align 4, !tbaa !51
  store float %31, ptr %0, align 4, !tbaa !51
  %32 = getelementptr inbounds float, ptr %1, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !51
  %34 = getelementptr inbounds float, ptr %0, i64 1
  store float %33, ptr %34, align 4, !tbaa !51
  %35 = getelementptr inbounds float, ptr %1, i64 2
  %36 = load float, ptr %35, align 4, !tbaa !51
  %37 = getelementptr inbounds float, ptr %0, i64 2
  store float %36, ptr %37, align 4, !tbaa !51
  %38 = getelementptr inbounds float, ptr %1, i64 3
  %39 = load float, ptr %38, align 4, !tbaa !51
  br label %40

40:                                               ; preds = %30, %11
  %41 = phi float [ %39, %30 ], [ %16, %11 ]
  %42 = getelementptr inbounds float, ptr %0, i64 3
  store float %41, ptr %42, align 4, !tbaa !51
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_color_overlay_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 {
  %4 = getelementptr inbounds float, ptr %2, i64 3
  %5 = load float, ptr %4, align 4, !tbaa !51
  %6 = fcmp une float %5, 0.000000e+00
  %7 = fcmp olt float %5, 1.000000e+00
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %38

9:                                                ; preds = %3
  %10 = fsub float 1.000000e+00, %5
  br label %11

11:                                               ; preds = %9, %29
  %12 = phi i64 [ 2, %9 ], [ %36, %29 ]
  %13 = getelementptr inbounds float, ptr %1, i64 %12
  %14 = load float, ptr %13, align 4, !tbaa !51
  %15 = fcmp ogt float %14, 5.000000e-01
  br i1 %15, label %16, label %24

16:                                               ; preds = %11
  %17 = fadd float %14, -5.000000e-01
  %18 = tail call float @llvm.fmuladd.f32(float %17, float -2.000000e+00, float 1.000000e+00)
  %19 = getelementptr inbounds float, ptr %2, i64 %12
  %20 = load float, ptr %19, align 4, !tbaa !51
  %21 = fsub float 1.000000e+00, %20
  %22 = fneg float %18
  %23 = tail call float @llvm.fmuladd.f32(float %22, float %21, float 1.000000e+00)
  br label %29

24:                                               ; preds = %11
  %25 = fmul float %14, 2.000000e+00
  %26 = getelementptr inbounds float, ptr %2, i64 %12
  %27 = load float, ptr %26, align 4, !tbaa !51
  %28 = fmul float %25, %27
  br label %29

29:                                               ; preds = %24, %16
  %30 = phi float [ %23, %16 ], [ %28, %24 ]
  %31 = fmul float %10, %14
  %32 = tail call float @llvm.fmuladd.f32(float %30, float %5, float %31)
  %33 = fcmp olt float %32, 1.000000e+00
  %34 = select i1 %33, float %32, float 1.000000e+00
  %35 = getelementptr inbounds float, ptr %0, i64 %12
  store float %34, ptr %35, align 4, !tbaa !51
  %36 = add nsw i64 %12, -1
  %37 = icmp eq i64 %12, 0
  br i1 %37, label %49, label %11, !llvm.loop !53

38:                                               ; preds = %3
  %39 = load float, ptr %1, align 4, !tbaa !51
  store float %39, ptr %0, align 4, !tbaa !51
  %40 = getelementptr inbounds float, ptr %1, i64 1
  %41 = load float, ptr %40, align 4, !tbaa !51
  %42 = getelementptr inbounds float, ptr %0, i64 1
  store float %41, ptr %42, align 4, !tbaa !51
  %43 = getelementptr inbounds float, ptr %1, i64 2
  %44 = load float, ptr %43, align 4, !tbaa !51
  %45 = getelementptr inbounds float, ptr %0, i64 2
  store float %44, ptr %45, align 4, !tbaa !51
  %46 = getelementptr inbounds float, ptr %1, i64 3
  %47 = load float, ptr %46, align 4, !tbaa !51
  %48 = getelementptr inbounds float, ptr %0, i64 3
  store float %47, ptr %48, align 4, !tbaa !51
  br label %49

49:                                               ; preds = %29, %38
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_color_hardlight_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 {
  %4 = getelementptr inbounds float, ptr %2, i64 3
  %5 = load float, ptr %4, align 4, !tbaa !51
  %6 = fcmp une float %5, 0.000000e+00
  %7 = fcmp olt float %5, 1.000000e+00
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %40

9:                                                ; preds = %3
  %10 = fsub float 1.000000e+00, %5
  br label %11

11:                                               ; preds = %9, %29
  %12 = phi i64 [ 2, %9 ], [ %38, %29 ]
  %13 = getelementptr inbounds float, ptr %2, i64 %12
  %14 = load float, ptr %13, align 4, !tbaa !51
  %15 = fcmp ogt float %14, 5.000000e-01
  br i1 %15, label %16, label %24

16:                                               ; preds = %11
  %17 = fadd float %14, -5.000000e-01
  %18 = tail call float @llvm.fmuladd.f32(float %17, float -2.000000e+00, float 1.000000e+00)
  %19 = getelementptr inbounds float, ptr %1, i64 %12
  %20 = load float, ptr %19, align 4, !tbaa !51
  %21 = fsub float 1.000000e+00, %20
  %22 = fneg float %18
  %23 = tail call float @llvm.fmuladd.f32(float %22, float %21, float 1.000000e+00)
  br label %29

24:                                               ; preds = %11
  %25 = fmul float %14, 2.000000e+00
  %26 = getelementptr inbounds float, ptr %1, i64 %12
  %27 = load float, ptr %26, align 4, !tbaa !51
  %28 = fmul float %25, %27
  br label %29

29:                                               ; preds = %24, %16
  %30 = phi float [ %23, %16 ], [ %28, %24 ]
  %31 = getelementptr inbounds float, ptr %1, i64 %12
  %32 = load float, ptr %31, align 4, !tbaa !51
  %33 = fmul float %10, %32
  %34 = tail call float @llvm.fmuladd.f32(float %30, float %5, float %33)
  %35 = fcmp olt float %34, 1.000000e+00
  %36 = select i1 %35, float %34, float 1.000000e+00
  %37 = getelementptr inbounds float, ptr %0, i64 %12
  store float %36, ptr %37, align 4, !tbaa !51
  %38 = add nsw i64 %12, -1
  %39 = icmp eq i64 %12, 0
  br i1 %39, label %51, label %11, !llvm.loop !54

40:                                               ; preds = %3
  %41 = load float, ptr %1, align 4, !tbaa !51
  store float %41, ptr %0, align 4, !tbaa !51
  %42 = getelementptr inbounds float, ptr %1, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !51
  %44 = getelementptr inbounds float, ptr %0, i64 1
  store float %43, ptr %44, align 4, !tbaa !51
  %45 = getelementptr inbounds float, ptr %1, i64 2
  %46 = load float, ptr %45, align 4, !tbaa !51
  %47 = getelementptr inbounds float, ptr %0, i64 2
  store float %46, ptr %47, align 4, !tbaa !51
  %48 = getelementptr inbounds float, ptr %1, i64 3
  %49 = load float, ptr %48, align 4, !tbaa !51
  %50 = getelementptr inbounds float, ptr %0, i64 3
  store float %49, ptr %50, align 4, !tbaa !51
  br label %51

51:                                               ; preds = %29, %40
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_color_burn_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 {
  %4 = getelementptr inbounds float, ptr %2, i64 3
  %5 = load float, ptr %4, align 4, !tbaa !51
  %6 = fcmp une float %5, 0.000000e+00
  %7 = fcmp olt float %5, 1.000000e+00
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %33

9:                                                ; preds = %3
  %10 = fsub float 1.000000e+00, %5
  br label %11

11:                                               ; preds = %9, %24
  %12 = phi i64 [ 2, %9 ], [ %31, %24 ]
  %13 = getelementptr inbounds float, ptr %2, i64 %12
  %14 = load float, ptr %13, align 4, !tbaa !51
  %15 = fcmp oeq float %14, 0.000000e+00
  br i1 %15, label %24, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds float, ptr %1, i64 %12
  %18 = load float, ptr %17, align 4, !tbaa !51
  %19 = fsub float 1.000000e+00, %18
  %20 = fdiv float %19, %14
  %21 = fsub float 1.000000e+00, %20
  %22 = fcmp ogt float %21, 0.000000e+00
  %23 = select i1 %22, float %21, float 0.000000e+00
  br label %24

24:                                               ; preds = %11, %16
  %25 = phi float [ %23, %16 ], [ 0.000000e+00, %11 ]
  %26 = getelementptr inbounds float, ptr %1, i64 %12
  %27 = load float, ptr %26, align 4, !tbaa !51
  %28 = fmul float %10, %27
  %29 = tail call float @llvm.fmuladd.f32(float %25, float %5, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 %12
  store float %29, ptr %30, align 4, !tbaa !51
  %31 = add nsw i64 %12, -1
  %32 = icmp eq i64 %12, 0
  br i1 %32, label %44, label %11, !llvm.loop !55

33:                                               ; preds = %3
  %34 = load float, ptr %1, align 4, !tbaa !51
  store float %34, ptr %0, align 4, !tbaa !51
  %35 = getelementptr inbounds float, ptr %1, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !51
  %37 = getelementptr inbounds float, ptr %0, i64 1
  store float %36, ptr %37, align 4, !tbaa !51
  %38 = getelementptr inbounds float, ptr %1, i64 2
  %39 = load float, ptr %38, align 4, !tbaa !51
  %40 = getelementptr inbounds float, ptr %0, i64 2
  store float %39, ptr %40, align 4, !tbaa !51
  %41 = getelementptr inbounds float, ptr %1, i64 3
  %42 = load float, ptr %41, align 4, !tbaa !51
  %43 = getelementptr inbounds float, ptr %0, i64 3
  store float %42, ptr %43, align 4, !tbaa !51
  br label %44

44:                                               ; preds = %24, %33
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_color_linearburn_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 {
  %4 = getelementptr inbounds float, ptr %2, i64 3
  %5 = load float, ptr %4, align 4, !tbaa !51
  %6 = fcmp une float %5, 0.000000e+00
  %7 = fcmp olt float %5, 1.000000e+00
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %26

9:                                                ; preds = %3
  %10 = fsub float 1.000000e+00, %5
  br label %11

11:                                               ; preds = %9, %11
  %12 = phi i64 [ 3, %9 ], [ %13, %11 ]
  %13 = add nsw i64 %12, -1
  %14 = getelementptr inbounds float, ptr %1, i64 %13
  %15 = load float, ptr %14, align 4, !tbaa !51
  %16 = getelementptr inbounds float, ptr %2, i64 %13
  %17 = load float, ptr %16, align 4, !tbaa !51
  %18 = fadd float %15, %17
  %19 = fadd float %18, -1.000000e+00
  %20 = fcmp ogt float %19, 0.000000e+00
  %21 = select i1 %20, float %19, float 0.000000e+00
  %22 = fmul float %10, %15
  %23 = tail call float @llvm.fmuladd.f32(float %21, float %5, float %22)
  %24 = getelementptr inbounds float, ptr %0, i64 %13
  store float %23, ptr %24, align 4, !tbaa !51
  %25 = icmp eq i64 %13, 0
  br i1 %25, label %37, label %11, !llvm.loop !56

26:                                               ; preds = %3
  %27 = load float, ptr %1, align 4, !tbaa !51
  store float %27, ptr %0, align 4, !tbaa !51
  %28 = getelementptr inbounds float, ptr %1, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !51
  %30 = getelementptr inbounds float, ptr %0, i64 1
  store float %29, ptr %30, align 4, !tbaa !51
  %31 = getelementptr inbounds float, ptr %1, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !51
  %33 = getelementptr inbounds float, ptr %0, i64 2
  store float %32, ptr %33, align 4, !tbaa !51
  %34 = getelementptr inbounds float, ptr %1, i64 3
  %35 = load float, ptr %34, align 4, !tbaa !51
  %36 = getelementptr inbounds float, ptr %0, i64 3
  store float %35, ptr %36, align 4, !tbaa !51
  br label %37

37:                                               ; preds = %11, %26
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_color_dodge_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 {
  %4 = getelementptr inbounds float, ptr %2, i64 3
  %5 = load float, ptr %4, align 4, !tbaa !51
  %6 = fcmp une float %5, 0.000000e+00
  %7 = fcmp olt float %5, 1.000000e+00
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %32

9:                                                ; preds = %3
  %10 = fsub float 1.000000e+00, %5
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i64 [ 2, %9 ], [ %30, %23 ]
  %13 = getelementptr inbounds float, ptr %2, i64 %12
  %14 = load float, ptr %13, align 4, !tbaa !51
  %15 = fcmp ult float %14, 1.000000e+00
  br i1 %15, label %16, label %23

16:                                               ; preds = %11
  %17 = getelementptr inbounds float, ptr %1, i64 %12
  %18 = load float, ptr %17, align 4, !tbaa !51
  %19 = fsub float 1.000000e+00, %14
  %20 = fdiv float %18, %19
  %21 = fcmp olt float %20, 1.000000e+00
  %22 = select i1 %21, float %20, float 1.000000e+00
  br label %23

23:                                               ; preds = %11, %16
  %24 = phi float [ %22, %16 ], [ 1.000000e+00, %11 ]
  %25 = getelementptr inbounds float, ptr %1, i64 %12
  %26 = load float, ptr %25, align 4, !tbaa !51
  %27 = fmul float %10, %26
  %28 = tail call float @llvm.fmuladd.f32(float %24, float %5, float %27)
  %29 = getelementptr inbounds float, ptr %0, i64 %12
  store float %28, ptr %29, align 4, !tbaa !51
  %30 = add nsw i64 %12, -1
  %31 = icmp eq i64 %12, 0
  br i1 %31, label %43, label %11, !llvm.loop !57

32:                                               ; preds = %3
  %33 = load float, ptr %1, align 4, !tbaa !51
  store float %33, ptr %0, align 4, !tbaa !51
  %34 = getelementptr inbounds float, ptr %1, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !51
  %36 = getelementptr inbounds float, ptr %0, i64 1
  store float %35, ptr %36, align 4, !tbaa !51
  %37 = getelementptr inbounds float, ptr %1, i64 2
  %38 = load float, ptr %37, align 4, !tbaa !51
  %39 = getelementptr inbounds float, ptr %0, i64 2
  store float %38, ptr %39, align 4, !tbaa !51
  %40 = getelementptr inbounds float, ptr %1, i64 3
  %41 = load float, ptr %40, align 4, !tbaa !51
  %42 = getelementptr inbounds float, ptr %0, i64 3
  store float %41, ptr %42, align 4, !tbaa !51
  br label %43

43:                                               ; preds = %23, %32
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_color_screen_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 {
  %4 = getelementptr inbounds float, ptr %2, i64 3
  %5 = load float, ptr %4, align 4, !tbaa !51
  %6 = fcmp une float %5, 0.000000e+00
  %7 = fcmp olt float %5, 1.000000e+00
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %28

9:                                                ; preds = %3
  %10 = fsub float 1.000000e+00, %5
  br label %11

11:                                               ; preds = %9, %11
  %12 = phi i64 [ 3, %9 ], [ %13, %11 ]
  %13 = add nsw i64 %12, -1
  %14 = getelementptr inbounds float, ptr %1, i64 %13
  %15 = load float, ptr %14, align 4, !tbaa !51
  %16 = fsub float 1.000000e+00, %15
  %17 = getelementptr inbounds float, ptr %2, i64 %13
  %18 = load float, ptr %17, align 4, !tbaa !51
  %19 = fsub float 1.000000e+00, %18
  %20 = fneg float %16
  %21 = tail call float @llvm.fmuladd.f32(float %20, float %19, float 1.000000e+00)
  %22 = fcmp ogt float %21, 0.000000e+00
  %23 = select i1 %22, float %21, float 0.000000e+00
  %24 = fmul float %10, %15
  %25 = tail call float @llvm.fmuladd.f32(float %23, float %5, float %24)
  %26 = getelementptr inbounds float, ptr %0, i64 %13
  store float %25, ptr %26, align 4, !tbaa !51
  %27 = icmp eq i64 %13, 0
  br i1 %27, label %39, label %11, !llvm.loop !58

28:                                               ; preds = %3
  %29 = load float, ptr %1, align 4, !tbaa !51
  store float %29, ptr %0, align 4, !tbaa !51
  %30 = getelementptr inbounds float, ptr %1, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !51
  %32 = getelementptr inbounds float, ptr %0, i64 1
  store float %31, ptr %32, align 4, !tbaa !51
  %33 = getelementptr inbounds float, ptr %1, i64 2
  %34 = load float, ptr %33, align 4, !tbaa !51
  %35 = getelementptr inbounds float, ptr %0, i64 2
  store float %34, ptr %35, align 4, !tbaa !51
  %36 = getelementptr inbounds float, ptr %1, i64 3
  %37 = load float, ptr %36, align 4, !tbaa !51
  %38 = getelementptr inbounds float, ptr %0, i64 3
  store float %37, ptr %38, align 4, !tbaa !51
  br label %39

39:                                               ; preds = %11, %28
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_color_softlight_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 {
  %4 = getelementptr inbounds float, ptr %2, i64 3
  %5 = load float, ptr %4, align 4, !tbaa !51
  %6 = fcmp une float %5, 0.000000e+00
  %7 = fcmp olt float %5, 1.000000e+00
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %33

9:                                                ; preds = %3
  %10 = fsub float 1.000000e+00, %5
  br label %11

11:                                               ; preds = %9, %26
  %12 = phi i64 [ 2, %9 ], [ %31, %26 ]
  %13 = getelementptr inbounds float, ptr %1, i64 %12
  %14 = load float, ptr %13, align 4, !tbaa !51
  %15 = fcmp olt float %14, 5.000000e-01
  %16 = getelementptr inbounds float, ptr %2, i64 %12
  %17 = load float, ptr %16, align 4, !tbaa !51
  %18 = fadd float %17, 5.000000e-01
  br i1 %15, label %19, label %21

19:                                               ; preds = %11
  %20 = fmul float %14, %18
  br label %26

21:                                               ; preds = %11
  %22 = fsub float 1.000000e+00, %18
  %23 = fsub float 1.000000e+00, %14
  %24 = fneg float %22
  %25 = tail call float @llvm.fmuladd.f32(float %24, float %23, float 1.000000e+00)
  br label %26

26:                                               ; preds = %21, %19
  %27 = phi float [ %20, %19 ], [ %25, %21 ]
  %28 = fmul float %10, %14
  %29 = tail call float @llvm.fmuladd.f32(float %27, float %5, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 %12
  store float %29, ptr %30, align 4, !tbaa !51
  %31 = add nsw i64 %12, -1
  %32 = icmp eq i64 %12, 0
  br i1 %32, label %44, label %11, !llvm.loop !59

33:                                               ; preds = %3
  %34 = load float, ptr %1, align 4, !tbaa !51
  store float %34, ptr %0, align 4, !tbaa !51
  %35 = getelementptr inbounds float, ptr %1, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !51
  %37 = getelementptr inbounds float, ptr %0, i64 1
  store float %36, ptr %37, align 4, !tbaa !51
  %38 = getelementptr inbounds float, ptr %1, i64 2
  %39 = load float, ptr %38, align 4, !tbaa !51
  %40 = getelementptr inbounds float, ptr %0, i64 2
  store float %39, ptr %40, align 4, !tbaa !51
  %41 = getelementptr inbounds float, ptr %1, i64 3
  %42 = load float, ptr %41, align 4, !tbaa !51
  %43 = getelementptr inbounds float, ptr %0, i64 3
  store float %42, ptr %43, align 4, !tbaa !51
  br label %44

44:                                               ; preds = %26, %33
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_color_pinlight_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 {
  %4 = getelementptr inbounds float, ptr %2, i64 3
  %5 = load float, ptr %4, align 4, !tbaa !51
  %6 = fcmp une float %5, 0.000000e+00
  %7 = fcmp olt float %5, 1.000000e+00
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %38

9:                                                ; preds = %3
  %10 = fsub float 1.000000e+00, %5
  br label %11

11:                                               ; preds = %9, %29
  %12 = phi i64 [ 2, %9 ], [ %36, %29 ]
  %13 = getelementptr inbounds float, ptr %2, i64 %12
  %14 = load float, ptr %13, align 4, !tbaa !51
  %15 = fcmp ogt float %14, 5.000000e-01
  br i1 %15, label %16, label %23

16:                                               ; preds = %11
  %17 = fadd float %14, -5.000000e-01
  %18 = fmul float %17, 2.000000e+00
  %19 = getelementptr inbounds float, ptr %1, i64 %12
  %20 = load float, ptr %19, align 4, !tbaa !51
  %21 = fcmp ogt float %18, %20
  %22 = select i1 %21, float %18, float %20
  br label %29

23:                                               ; preds = %11
  %24 = fmul float %14, 2.000000e+00
  %25 = getelementptr inbounds float, ptr %1, i64 %12
  %26 = load float, ptr %25, align 4, !tbaa !51
  %27 = fcmp olt float %24, %26
  %28 = select i1 %27, float %24, float %26
  br label %29

29:                                               ; preds = %23, %16
  %30 = phi float [ %22, %16 ], [ %28, %23 ]
  %31 = getelementptr inbounds float, ptr %1, i64 %12
  %32 = load float, ptr %31, align 4, !tbaa !51
  %33 = fmul float %10, %32
  %34 = tail call float @llvm.fmuladd.f32(float %30, float %5, float %33)
  %35 = getelementptr inbounds float, ptr %0, i64 %12
  store float %34, ptr %35, align 4, !tbaa !51
  %36 = add nsw i64 %12, -1
  %37 = icmp eq i64 %12, 0
  br i1 %37, label %49, label %11, !llvm.loop !60

38:                                               ; preds = %3
  %39 = load float, ptr %1, align 4, !tbaa !51
  store float %39, ptr %0, align 4, !tbaa !51
  %40 = getelementptr inbounds float, ptr %1, i64 1
  %41 = load float, ptr %40, align 4, !tbaa !51
  %42 = getelementptr inbounds float, ptr %0, i64 1
  store float %41, ptr %42, align 4, !tbaa !51
  %43 = getelementptr inbounds float, ptr %1, i64 2
  %44 = load float, ptr %43, align 4, !tbaa !51
  %45 = getelementptr inbounds float, ptr %0, i64 2
  store float %44, ptr %45, align 4, !tbaa !51
  %46 = getelementptr inbounds float, ptr %1, i64 3
  %47 = load float, ptr %46, align 4, !tbaa !51
  %48 = getelementptr inbounds float, ptr %0, i64 3
  store float %47, ptr %48, align 4, !tbaa !51
  br label %49

49:                                               ; preds = %29, %38
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_color_linearlight_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 {
  %4 = getelementptr inbounds float, ptr %2, i64 3
  %5 = load float, ptr %4, align 4, !tbaa !51
  %6 = fcmp une float %5, 0.000000e+00
  %7 = fcmp olt float %5, 1.000000e+00
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %37

9:                                                ; preds = %3
  %10 = fsub float 1.000000e+00, %5
  br label %11

11:                                               ; preds = %9, %28
  %12 = phi i64 [ 2, %9 ], [ %35, %28 ]
  %13 = getelementptr inbounds float, ptr %2, i64 %12
  %14 = load float, ptr %13, align 4, !tbaa !51
  %15 = fcmp ogt float %14, 5.000000e-01
  %16 = getelementptr inbounds float, ptr %1, i64 %12
  %17 = load float, ptr %16, align 4, !tbaa !51
  br i1 %15, label %18, label %23

18:                                               ; preds = %11
  %19 = fadd float %14, -5.000000e-01
  %20 = tail call float @llvm.fmuladd.f32(float %19, float 2.000000e+00, float %17)
  %21 = fcmp olt float %20, 1.000000e+00
  %22 = select i1 %21, float %20, float 1.000000e+00
  br label %28

23:                                               ; preds = %11
  %24 = tail call float @llvm.fmuladd.f32(float %14, float 2.000000e+00, float %17)
  %25 = fadd float %24, -1.000000e+00
  %26 = fcmp ogt float %25, 0.000000e+00
  %27 = select i1 %26, float %25, float 0.000000e+00
  br label %28

28:                                               ; preds = %23, %18
  %29 = phi float [ %22, %18 ], [ %27, %23 ]
  %30 = getelementptr inbounds float, ptr %1, i64 %12
  %31 = load float, ptr %30, align 4, !tbaa !51
  %32 = fmul float %10, %31
  %33 = tail call float @llvm.fmuladd.f32(float %29, float %5, float %32)
  %34 = getelementptr inbounds float, ptr %0, i64 %12
  store float %33, ptr %34, align 4, !tbaa !51
  %35 = add nsw i64 %12, -1
  %36 = icmp eq i64 %12, 0
  br i1 %36, label %48, label %11, !llvm.loop !61

37:                                               ; preds = %3
  %38 = load float, ptr %1, align 4, !tbaa !51
  store float %38, ptr %0, align 4, !tbaa !51
  %39 = getelementptr inbounds float, ptr %1, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !51
  %41 = getelementptr inbounds float, ptr %0, i64 1
  store float %40, ptr %41, align 4, !tbaa !51
  %42 = getelementptr inbounds float, ptr %1, i64 2
  %43 = load float, ptr %42, align 4, !tbaa !51
  %44 = getelementptr inbounds float, ptr %0, i64 2
  store float %43, ptr %44, align 4, !tbaa !51
  %45 = getelementptr inbounds float, ptr %1, i64 3
  %46 = load float, ptr %45, align 4, !tbaa !51
  %47 = getelementptr inbounds float, ptr %0, i64 3
  store float %46, ptr %47, align 4, !tbaa !51
  br label %48

48:                                               ; preds = %28, %37
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_color_vividlight_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 {
  %4 = getelementptr inbounds float, ptr %2, i64 3
  %5 = load float, ptr %4, align 4, !tbaa !51
  %6 = fcmp une float %5, 0.000000e+00
  %7 = fcmp olt float %5, 1.000000e+00
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %44

9:                                                ; preds = %3
  %10 = fsub float 1.000000e+00, %5
  br label %11

11:                                               ; preds = %9, %35
  %12 = phi i64 [ 2, %9 ], [ %42, %35 ]
  %13 = getelementptr inbounds float, ptr %2, i64 %12
  %14 = load float, ptr %13, align 4, !tbaa !51
  %15 = fcmp oeq float %14, 1.000000e+00
  br i1 %15, label %35, label %16

16:                                               ; preds = %11
  %17 = fcmp oeq float %14, 0.000000e+00
  br i1 %17, label %35, label %18

18:                                               ; preds = %16
  %19 = fcmp ogt float %14, 5.000000e-01
  %20 = getelementptr inbounds float, ptr %1, i64 %12
  %21 = load float, ptr %20, align 4, !tbaa !51
  br i1 %19, label %22, label %28

22:                                               ; preds = %18
  %23 = fsub float 1.000000e+00, %14
  %24 = fmul float %23, 2.000000e+00
  %25 = fdiv float %21, %24
  %26 = fcmp olt float %25, 1.000000e+00
  %27 = select i1 %26, float %25, float 1.000000e+00
  br label %35

28:                                               ; preds = %18
  %29 = fsub float 1.000000e+00, %21
  %30 = fmul float %14, 2.000000e+00
  %31 = fdiv float %29, %30
  %32 = fsub float 1.000000e+00, %31
  %33 = fcmp ogt float %32, 0.000000e+00
  %34 = select i1 %33, float %32, float 0.000000e+00
  br label %35

35:                                               ; preds = %16, %11, %28, %22
  %36 = phi float [ %27, %22 ], [ %34, %28 ], [ 1.000000e+00, %11 ], [ 0.000000e+00, %16 ]
  %37 = getelementptr inbounds float, ptr %1, i64 %12
  %38 = load float, ptr %37, align 4, !tbaa !51
  %39 = fmul float %10, %38
  %40 = tail call float @llvm.fmuladd.f32(float %36, float %5, float %39)
  %41 = getelementptr inbounds float, ptr %0, i64 %12
  store float %40, ptr %41, align 4, !tbaa !51
  %42 = add nsw i64 %12, -1
  %43 = icmp eq i64 %12, 0
  br i1 %43, label %55, label %11, !llvm.loop !62

44:                                               ; preds = %3
  %45 = load float, ptr %1, align 4, !tbaa !51
  store float %45, ptr %0, align 4, !tbaa !51
  %46 = getelementptr inbounds float, ptr %1, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !51
  %48 = getelementptr inbounds float, ptr %0, i64 1
  store float %47, ptr %48, align 4, !tbaa !51
  %49 = getelementptr inbounds float, ptr %1, i64 2
  %50 = load float, ptr %49, align 4, !tbaa !51
  %51 = getelementptr inbounds float, ptr %0, i64 2
  store float %50, ptr %51, align 4, !tbaa !51
  %52 = getelementptr inbounds float, ptr %1, i64 3
  %53 = load float, ptr %52, align 4, !tbaa !51
  %54 = getelementptr inbounds float, ptr %0, i64 3
  store float %53, ptr %54, align 4, !tbaa !51
  br label %55

55:                                               ; preds = %35, %44
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_color_difference_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 {
  %4 = getelementptr inbounds float, ptr %2, i64 3
  %5 = load float, ptr %4, align 4, !tbaa !51
  %6 = fcmp une float %5, 0.000000e+00
  %7 = fcmp olt float %5, 1.000000e+00
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %24

9:                                                ; preds = %3
  %10 = fsub float 1.000000e+00, %5
  br label %11

11:                                               ; preds = %9, %11
  %12 = phi i64 [ 3, %9 ], [ %13, %11 ]
  %13 = add nsw i64 %12, -1
  %14 = getelementptr inbounds float, ptr %1, i64 %13
  %15 = load float, ptr %14, align 4, !tbaa !51
  %16 = getelementptr inbounds float, ptr %2, i64 %13
  %17 = load float, ptr %16, align 4, !tbaa !51
  %18 = fsub float %15, %17
  %19 = tail call float @llvm.fabs.f32(float %18)
  %20 = fmul float %10, %15
  %21 = tail call float @llvm.fmuladd.f32(float %19, float %5, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 %13
  store float %21, ptr %22, align 4, !tbaa !51
  %23 = icmp eq i64 %13, 0
  br i1 %23, label %35, label %11, !llvm.loop !63

24:                                               ; preds = %3
  %25 = load float, ptr %1, align 4, !tbaa !51
  store float %25, ptr %0, align 4, !tbaa !51
  %26 = getelementptr inbounds float, ptr %1, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !51
  %28 = getelementptr inbounds float, ptr %0, i64 1
  store float %27, ptr %28, align 4, !tbaa !51
  %29 = getelementptr inbounds float, ptr %1, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !51
  %31 = getelementptr inbounds float, ptr %0, i64 2
  store float %30, ptr %31, align 4, !tbaa !51
  %32 = getelementptr inbounds float, ptr %1, i64 3
  %33 = load float, ptr %32, align 4, !tbaa !51
  %34 = getelementptr inbounds float, ptr %0, i64 3
  store float %33, ptr %34, align 4, !tbaa !51
  br label %35

35:                                               ; preds = %11, %24
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_color_exclusion_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 {
  %4 = getelementptr inbounds float, ptr %2, i64 3
  %5 = load float, ptr %4, align 4, !tbaa !51
  %6 = fcmp une float %5, 0.000000e+00
  %7 = fcmp olt float %5, 1.000000e+00
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %26

9:                                                ; preds = %3
  %10 = fsub float 1.000000e+00, %5
  br label %11

11:                                               ; preds = %9, %11
  %12 = phi i64 [ 3, %9 ], [ %13, %11 ]
  %13 = add nsw i64 %12, -1
  %14 = getelementptr inbounds float, ptr %1, i64 %13
  %15 = load float, ptr %14, align 4, !tbaa !51
  %16 = fadd float %15, -5.000000e-01
  %17 = getelementptr inbounds float, ptr %2, i64 %13
  %18 = load float, ptr %17, align 4, !tbaa !51
  %19 = fadd float %18, -5.000000e-01
  %20 = fmul float %16, -2.000000e+00
  %21 = tail call float @llvm.fmuladd.f32(float %20, float %19, float 5.000000e-01)
  %22 = fmul float %10, %15
  %23 = tail call float @llvm.fmuladd.f32(float %21, float %5, float %22)
  %24 = getelementptr inbounds float, ptr %0, i64 %13
  store float %23, ptr %24, align 4, !tbaa !51
  %25 = icmp eq i64 %13, 0
  br i1 %25, label %37, label %11, !llvm.loop !64

26:                                               ; preds = %3
  %27 = load float, ptr %1, align 4, !tbaa !51
  store float %27, ptr %0, align 4, !tbaa !51
  %28 = getelementptr inbounds float, ptr %1, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !51
  %30 = getelementptr inbounds float, ptr %0, i64 1
  store float %29, ptr %30, align 4, !tbaa !51
  %31 = getelementptr inbounds float, ptr %1, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !51
  %33 = getelementptr inbounds float, ptr %0, i64 2
  store float %32, ptr %33, align 4, !tbaa !51
  %34 = getelementptr inbounds float, ptr %1, i64 3
  %35 = load float, ptr %34, align 4, !tbaa !51
  %36 = getelementptr inbounds float, ptr %0, i64 3
  store float %35, ptr %36, align 4, !tbaa !51
  br label %37

37:                                               ; preds = %11, %26
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @blend_color_color_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = getelementptr inbounds float, ptr %2, i64 3
  %14 = load float, ptr %13, align 4, !tbaa !51
  %15 = fcmp une float %14, 0.000000e+00
  %16 = fcmp olt float %14, 1.000000e+00
  %17 = and i1 %15, %16
  br i1 %17, label %18, label %47

18:                                               ; preds = %3
  %19 = fsub float 1.000000e+00, %14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #11
  %20 = load float, ptr %1, align 4, !tbaa !51
  %21 = getelementptr inbounds float, ptr %1, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !51
  %23 = getelementptr inbounds float, ptr %1, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !51
  call void @rgb_to_hsv(float noundef %20, float noundef %22, float noundef %24, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  %25 = load float, ptr %2, align 4, !tbaa !51
  %26 = getelementptr inbounds float, ptr %2, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !51
  %28 = getelementptr inbounds float, ptr %2, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !51
  call void @rgb_to_hsv(float noundef %25, float noundef %27, float noundef %29, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #11
  %30 = load float, ptr %7, align 4, !tbaa !51
  store float %30, ptr %4, align 4, !tbaa !51
  %31 = load float, ptr %8, align 4, !tbaa !51
  store float %31, ptr %5, align 4, !tbaa !51
  %32 = load float, ptr %6, align 4, !tbaa !51
  call void @hsv_to_rgb(float noundef %30, float noundef %31, float noundef %32, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12) #11
  %33 = load float, ptr %10, align 4, !tbaa !51
  %34 = load float, ptr %1, align 4, !tbaa !51
  %35 = fmul float %19, %34
  %36 = call float @llvm.fmuladd.f32(float %33, float %14, float %35)
  store float %36, ptr %0, align 4, !tbaa !51
  %37 = load float, ptr %11, align 4, !tbaa !51
  %38 = load float, ptr %21, align 4, !tbaa !51
  %39 = fmul float %19, %38
  %40 = call float @llvm.fmuladd.f32(float %37, float %14, float %39)
  %41 = getelementptr inbounds float, ptr %0, i64 1
  store float %40, ptr %41, align 4, !tbaa !51
  %42 = load float, ptr %12, align 4, !tbaa !51
  %43 = load float, ptr %23, align 4, !tbaa !51
  %44 = fmul float %19, %43
  %45 = call float @llvm.fmuladd.f32(float %42, float %14, float %44)
  %46 = getelementptr inbounds float, ptr %0, i64 2
  store float %45, ptr %46, align 4, !tbaa !51
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  br label %58

47:                                               ; preds = %3
  %48 = load float, ptr %1, align 4, !tbaa !51
  store float %48, ptr %0, align 4, !tbaa !51
  %49 = getelementptr inbounds float, ptr %1, i64 1
  %50 = load float, ptr %49, align 4, !tbaa !51
  %51 = getelementptr inbounds float, ptr %0, i64 1
  store float %50, ptr %51, align 4, !tbaa !51
  %52 = getelementptr inbounds float, ptr %1, i64 2
  %53 = load float, ptr %52, align 4, !tbaa !51
  %54 = getelementptr inbounds float, ptr %0, i64 2
  store float %53, ptr %54, align 4, !tbaa !51
  %55 = getelementptr inbounds float, ptr %1, i64 3
  %56 = load float, ptr %55, align 4, !tbaa !51
  %57 = getelementptr inbounds float, ptr %0, i64 3
  store float %56, ptr %57, align 4, !tbaa !51
  br label %58

58:                                               ; preds = %47, %18
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @blend_color_hue_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = getelementptr inbounds float, ptr %2, i64 3
  %14 = load float, ptr %13, align 4, !tbaa !51
  %15 = fcmp une float %14, 0.000000e+00
  %16 = fcmp olt float %14, 1.000000e+00
  %17 = and i1 %15, %16
  br i1 %17, label %18, label %47

18:                                               ; preds = %3
  %19 = fsub float 1.000000e+00, %14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #11
  %20 = load float, ptr %1, align 4, !tbaa !51
  %21 = getelementptr inbounds float, ptr %1, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !51
  %23 = getelementptr inbounds float, ptr %1, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !51
  call void @rgb_to_hsv(float noundef %20, float noundef %22, float noundef %24, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  %25 = load float, ptr %2, align 4, !tbaa !51
  %26 = getelementptr inbounds float, ptr %2, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !51
  %28 = getelementptr inbounds float, ptr %2, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !51
  call void @rgb_to_hsv(float noundef %25, float noundef %27, float noundef %29, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #11
  %30 = load float, ptr %7, align 4, !tbaa !51
  store float %30, ptr %4, align 4, !tbaa !51
  %31 = load float, ptr %5, align 4, !tbaa !51
  %32 = load float, ptr %6, align 4, !tbaa !51
  call void @hsv_to_rgb(float noundef %30, float noundef %31, float noundef %32, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12) #11
  %33 = load float, ptr %10, align 4, !tbaa !51
  %34 = load float, ptr %1, align 4, !tbaa !51
  %35 = fmul float %19, %34
  %36 = call float @llvm.fmuladd.f32(float %33, float %14, float %35)
  store float %36, ptr %0, align 4, !tbaa !51
  %37 = load float, ptr %11, align 4, !tbaa !51
  %38 = load float, ptr %21, align 4, !tbaa !51
  %39 = fmul float %19, %38
  %40 = call float @llvm.fmuladd.f32(float %37, float %14, float %39)
  %41 = getelementptr inbounds float, ptr %0, i64 1
  store float %40, ptr %41, align 4, !tbaa !51
  %42 = load float, ptr %12, align 4, !tbaa !51
  %43 = load float, ptr %23, align 4, !tbaa !51
  %44 = fmul float %19, %43
  %45 = call float @llvm.fmuladd.f32(float %42, float %14, float %44)
  %46 = getelementptr inbounds float, ptr %0, i64 2
  store float %45, ptr %46, align 4, !tbaa !51
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  br label %58

47:                                               ; preds = %3
  %48 = load float, ptr %1, align 4, !tbaa !51
  store float %48, ptr %0, align 4, !tbaa !51
  %49 = getelementptr inbounds float, ptr %1, i64 1
  %50 = load float, ptr %49, align 4, !tbaa !51
  %51 = getelementptr inbounds float, ptr %0, i64 1
  store float %50, ptr %51, align 4, !tbaa !51
  %52 = getelementptr inbounds float, ptr %1, i64 2
  %53 = load float, ptr %52, align 4, !tbaa !51
  %54 = getelementptr inbounds float, ptr %0, i64 2
  store float %53, ptr %54, align 4, !tbaa !51
  %55 = getelementptr inbounds float, ptr %1, i64 3
  %56 = load float, ptr %55, align 4, !tbaa !51
  %57 = getelementptr inbounds float, ptr %0, i64 3
  store float %56, ptr %57, align 4, !tbaa !51
  br label %58

58:                                               ; preds = %47, %18
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @blend_color_saturation_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = getelementptr inbounds float, ptr %2, i64 3
  %14 = load float, ptr %13, align 4, !tbaa !51
  %15 = fcmp une float %14, 0.000000e+00
  %16 = fcmp olt float %14, 1.000000e+00
  %17 = and i1 %15, %16
  br i1 %17, label %18, label %52

18:                                               ; preds = %3
  %19 = fsub float 1.000000e+00, %14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #11
  %20 = load float, ptr %1, align 4, !tbaa !51
  %21 = getelementptr inbounds float, ptr %1, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !51
  %23 = getelementptr inbounds float, ptr %1, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !51
  call void @rgb_to_hsv(float noundef %20, float noundef %22, float noundef %24, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  %25 = load float, ptr %2, align 4, !tbaa !51
  %26 = getelementptr inbounds float, ptr %2, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !51
  %28 = getelementptr inbounds float, ptr %2, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !51
  call void @rgb_to_hsv(float noundef %25, float noundef %27, float noundef %29, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #11
  %30 = load float, ptr %5, align 4, !tbaa !51
  %31 = fcmp ogt float %30, 0x3F40624DE0000000
  br i1 %31, label %32, label %34

32:                                               ; preds = %18
  %33 = load float, ptr %8, align 4, !tbaa !51
  store float %33, ptr %5, align 4, !tbaa !51
  br label %34

34:                                               ; preds = %32, %18
  %35 = load float, ptr %4, align 4, !tbaa !51
  %36 = load float, ptr %5, align 4, !tbaa !51
  %37 = load float, ptr %6, align 4, !tbaa !51
  call void @hsv_to_rgb(float noundef %35, float noundef %36, float noundef %37, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12) #11
  %38 = load float, ptr %10, align 4, !tbaa !51
  %39 = load float, ptr %1, align 4, !tbaa !51
  %40 = fmul float %19, %39
  %41 = call float @llvm.fmuladd.f32(float %38, float %14, float %40)
  store float %41, ptr %0, align 4, !tbaa !51
  %42 = load float, ptr %11, align 4, !tbaa !51
  %43 = load float, ptr %21, align 4, !tbaa !51
  %44 = fmul float %19, %43
  %45 = call float @llvm.fmuladd.f32(float %42, float %14, float %44)
  %46 = getelementptr inbounds float, ptr %0, i64 1
  store float %45, ptr %46, align 4, !tbaa !51
  %47 = load float, ptr %12, align 4, !tbaa !51
  %48 = load float, ptr %23, align 4, !tbaa !51
  %49 = fmul float %19, %48
  %50 = call float @llvm.fmuladd.f32(float %47, float %14, float %49)
  %51 = getelementptr inbounds float, ptr %0, i64 2
  store float %50, ptr %51, align 4, !tbaa !51
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  br label %63

52:                                               ; preds = %3
  %53 = load float, ptr %1, align 4, !tbaa !51
  store float %53, ptr %0, align 4, !tbaa !51
  %54 = getelementptr inbounds float, ptr %1, i64 1
  %55 = load float, ptr %54, align 4, !tbaa !51
  %56 = getelementptr inbounds float, ptr %0, i64 1
  store float %55, ptr %56, align 4, !tbaa !51
  %57 = getelementptr inbounds float, ptr %1, i64 2
  %58 = load float, ptr %57, align 4, !tbaa !51
  %59 = getelementptr inbounds float, ptr %0, i64 2
  store float %58, ptr %59, align 4, !tbaa !51
  %60 = getelementptr inbounds float, ptr %1, i64 3
  %61 = load float, ptr %60, align 4, !tbaa !51
  %62 = getelementptr inbounds float, ptr %0, i64 3
  store float %61, ptr %62, align 4, !tbaa !51
  br label %63

63:                                               ; preds = %52, %34
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @blend_color_luminosity_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = getelementptr inbounds float, ptr %2, i64 3
  %14 = load float, ptr %13, align 4, !tbaa !51
  %15 = fcmp une float %14, 0.000000e+00
  %16 = fcmp olt float %14, 1.000000e+00
  %17 = and i1 %15, %16
  br i1 %17, label %18, label %47

18:                                               ; preds = %3
  %19 = fsub float 1.000000e+00, %14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #11
  %20 = load float, ptr %1, align 4, !tbaa !51
  %21 = getelementptr inbounds float, ptr %1, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !51
  %23 = getelementptr inbounds float, ptr %1, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !51
  call void @rgb_to_hsv(float noundef %20, float noundef %22, float noundef %24, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  %25 = load float, ptr %2, align 4, !tbaa !51
  %26 = getelementptr inbounds float, ptr %2, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !51
  %28 = getelementptr inbounds float, ptr %2, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !51
  call void @rgb_to_hsv(float noundef %25, float noundef %27, float noundef %29, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #11
  %30 = load float, ptr %9, align 4, !tbaa !51
  store float %30, ptr %6, align 4, !tbaa !51
  %31 = load float, ptr %4, align 4, !tbaa !51
  %32 = load float, ptr %5, align 4, !tbaa !51
  call void @hsv_to_rgb(float noundef %31, float noundef %32, float noundef %30, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12) #11
  %33 = load float, ptr %10, align 4, !tbaa !51
  %34 = load float, ptr %1, align 4, !tbaa !51
  %35 = fmul float %19, %34
  %36 = call float @llvm.fmuladd.f32(float %33, float %14, float %35)
  store float %36, ptr %0, align 4, !tbaa !51
  %37 = load float, ptr %11, align 4, !tbaa !51
  %38 = load float, ptr %21, align 4, !tbaa !51
  %39 = fmul float %19, %38
  %40 = call float @llvm.fmuladd.f32(float %37, float %14, float %39)
  %41 = getelementptr inbounds float, ptr %0, i64 1
  store float %40, ptr %41, align 4, !tbaa !51
  %42 = load float, ptr %12, align 4, !tbaa !51
  %43 = load float, ptr %23, align 4, !tbaa !51
  %44 = fmul float %19, %43
  %45 = call float @llvm.fmuladd.f32(float %42, float %14, float %44)
  %46 = getelementptr inbounds float, ptr %0, i64 2
  store float %45, ptr %46, align 4, !tbaa !51
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  br label %58

47:                                               ; preds = %3
  %48 = load float, ptr %1, align 4, !tbaa !51
  store float %48, ptr %0, align 4, !tbaa !51
  %49 = getelementptr inbounds float, ptr %1, i64 1
  %50 = load float, ptr %49, align 4, !tbaa !51
  %51 = getelementptr inbounds float, ptr %0, i64 1
  store float %50, ptr %51, align 4, !tbaa !51
  %52 = getelementptr inbounds float, ptr %1, i64 2
  %53 = load float, ptr %52, align 4, !tbaa !51
  %54 = getelementptr inbounds float, ptr %0, i64 2
  store float %53, ptr %54, align 4, !tbaa !51
  %55 = getelementptr inbounds float, ptr %1, i64 3
  %56 = load float, ptr %55, align 4, !tbaa !51
  %57 = getelementptr inbounds float, ptr %0, i64 3
  store float %56, ptr %57, align 4, !tbaa !51
  br label %58

58:                                               ; preds = %47, %18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @IMB_rectclip(ptr noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5, ptr nocapture noundef %6, ptr nocapture noundef %7) local_unnamed_addr #4 {
  %9 = icmp eq ptr %0, null
  br i1 %9, label %87, label %10

10:                                               ; preds = %8
  %11 = load i32, ptr %2, align 4, !tbaa !65
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = load i32, ptr %4, align 4, !tbaa !65
  %15 = sub nsw i32 %14, %11
  store i32 %15, ptr %4, align 4, !tbaa !65
  %16 = load i32, ptr %2, align 4, !tbaa !65
  %17 = load i32, ptr %6, align 4, !tbaa !65
  %18 = add nsw i32 %17, %16
  store i32 %18, ptr %6, align 4, !tbaa !65
  store i32 0, ptr %2, align 4, !tbaa !65
  br label %19

19:                                               ; preds = %13, %10
  %20 = load i32, ptr %4, align 4, !tbaa !65
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load i32, ptr %2, align 4, !tbaa !65
  %24 = sub nsw i32 %23, %20
  store i32 %24, ptr %2, align 4, !tbaa !65
  %25 = load i32, ptr %4, align 4, !tbaa !65
  %26 = load i32, ptr %6, align 4, !tbaa !65
  %27 = add nsw i32 %26, %25
  store i32 %27, ptr %6, align 4, !tbaa !65
  store i32 0, ptr %4, align 4, !tbaa !65
  br label %28

28:                                               ; preds = %22, %19
  %29 = load i32, ptr %3, align 4, !tbaa !65
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load i32, ptr %5, align 4, !tbaa !65
  %33 = sub nsw i32 %32, %29
  store i32 %33, ptr %5, align 4, !tbaa !65
  %34 = load i32, ptr %3, align 4, !tbaa !65
  %35 = load i32, ptr %7, align 4, !tbaa !65
  %36 = add nsw i32 %35, %34
  store i32 %36, ptr %7, align 4, !tbaa !65
  store i32 0, ptr %3, align 4, !tbaa !65
  br label %37

37:                                               ; preds = %31, %28
  %38 = load i32, ptr %5, align 4, !tbaa !65
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load i32, ptr %3, align 4, !tbaa !65
  %42 = sub nsw i32 %41, %38
  store i32 %42, ptr %3, align 4, !tbaa !65
  %43 = load i32, ptr %5, align 4, !tbaa !65
  %44 = load i32, ptr %7, align 4, !tbaa !65
  %45 = add nsw i32 %44, %43
  store i32 %45, ptr %7, align 4, !tbaa !65
  store i32 0, ptr %5, align 4, !tbaa !65
  br label %46

46:                                               ; preds = %40, %37
  %47 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !67
  %49 = load i32, ptr %2, align 4, !tbaa !65
  %50 = sub nsw i32 %48, %49
  %51 = load i32, ptr %6, align 4, !tbaa !65
  %52 = icmp sgt i32 %51, %50
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  store i32 %50, ptr %6, align 4, !tbaa !65
  br label %54

54:                                               ; preds = %53, %46
  %55 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %56 = load i32, ptr %55, align 4, !tbaa !72
  %57 = load i32, ptr %3, align 4, !tbaa !65
  %58 = sub nsw i32 %56, %57
  %59 = load i32, ptr %7, align 4, !tbaa !65
  %60 = icmp sgt i32 %59, %58
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  store i32 %58, ptr %7, align 4, !tbaa !65
  br label %62

62:                                               ; preds = %61, %54
  %63 = icmp eq ptr %1, null
  br i1 %63, label %80, label %64

64:                                               ; preds = %62
  %65 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %66 = load i32, ptr %65, align 8, !tbaa !67
  %67 = load i32, ptr %4, align 4, !tbaa !65
  %68 = sub nsw i32 %66, %67
  %69 = load i32, ptr %6, align 4, !tbaa !65
  %70 = icmp sgt i32 %69, %68
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  store i32 %68, ptr %6, align 4, !tbaa !65
  br label %72

72:                                               ; preds = %71, %64
  %73 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 3
  %74 = load i32, ptr %73, align 4, !tbaa !72
  %75 = load i32, ptr %5, align 4, !tbaa !65
  %76 = sub nsw i32 %74, %75
  %77 = load i32, ptr %7, align 4, !tbaa !65
  %78 = icmp sgt i32 %77, %76
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  store i32 %76, ptr %7, align 4, !tbaa !65
  br label %80

80:                                               ; preds = %72, %79, %62
  %81 = load i32, ptr %7, align 4, !tbaa !65
  %82 = icmp slt i32 %81, 1
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  %84 = load i32, ptr %6, align 4, !tbaa !65
  %85 = icmp slt i32 %84, 1
  br i1 %85, label %86, label %87

86:                                               ; preds = %83, %80
  store i32 0, ptr %6, align 4, !tbaa !65
  store i32 0, ptr %7, align 4, !tbaa !65
  br label %87

87:                                               ; preds = %83, %86, %8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind uwtable
define dso_local void @IMB_rectcpy(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  tail call void @IMB_rectblend(ptr noundef %0, ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null, float noundef 0.000000e+00, i32 noundef %2, i32 noundef %3, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef 1000, i8 noundef zeroext 0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @IMB_rectblend(ptr noundef readonly %0, ptr noundef readonly %1, ptr noundef readonly %2, ptr noundef %3, ptr noundef readonly %4, ptr noundef readonly %5, float noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %15, i8 noundef zeroext %16) local_unnamed_addr #0 {
  %18 = alloca [4 x i8], align 1
  %19 = alloca [4 x i8], align 1
  %20 = alloca [4 x float], align 16
  %21 = alloca [4 x float], align 16
  %22 = icmp eq ptr %0, null
  %23 = icmp eq ptr %1, null
  %24 = or i1 %22, %23
  br i1 %24, label %777, label %25

25:                                               ; preds = %17
  %26 = icmp slt i32 %7, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %25
  %28 = sub nsw i32 %11, %7
  %29 = sub nsw i32 %9, %7
  %30 = add nsw i32 %13, %7
  br label %31

31:                                               ; preds = %27, %25
  %32 = phi i32 [ 0, %27 ], [ %7, %25 ]
  %33 = phi i32 [ %29, %27 ], [ %9, %25 ]
  %34 = phi i32 [ %28, %27 ], [ %11, %25 ]
  %35 = phi i32 [ %30, %27 ], [ %13, %25 ]
  %36 = icmp slt i32 %33, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = sub nsw i32 %32, %33
  %39 = sub nsw i32 %34, %33
  %40 = add nsw i32 %35, %33
  br label %41

41:                                               ; preds = %37, %31
  %42 = phi i32 [ %38, %37 ], [ %32, %31 ]
  %43 = phi i32 [ 0, %37 ], [ %33, %31 ]
  %44 = phi i32 [ %39, %37 ], [ %34, %31 ]
  %45 = phi i32 [ %40, %37 ], [ %35, %31 ]
  %46 = icmp slt i32 %44, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = sub nsw i32 %42, %44
  %49 = sub nsw i32 %43, %44
  %50 = add nsw i32 %45, %44
  br label %51

51:                                               ; preds = %47, %41
  %52 = phi i32 [ %48, %47 ], [ %42, %41 ]
  %53 = phi i32 [ %49, %47 ], [ %43, %41 ]
  %54 = phi i32 [ 0, %47 ], [ %44, %41 ]
  %55 = phi i32 [ %50, %47 ], [ %45, %41 ]
  %56 = icmp slt i32 %8, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = sub nsw i32 %12, %8
  %59 = sub nsw i32 %10, %8
  %60 = add nsw i32 %14, %8
  br label %61

61:                                               ; preds = %57, %51
  %62 = phi i32 [ 0, %57 ], [ %8, %51 ]
  %63 = phi i32 [ %59, %57 ], [ %10, %51 ]
  %64 = phi i32 [ %58, %57 ], [ %12, %51 ]
  %65 = phi i32 [ %60, %57 ], [ %14, %51 ]
  %66 = icmp slt i32 %63, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = sub nsw i32 %62, %63
  %69 = sub nsw i32 %64, %63
  %70 = add nsw i32 %65, %63
  br label %71

71:                                               ; preds = %67, %61
  %72 = phi i32 [ %68, %67 ], [ %62, %61 ]
  %73 = phi i32 [ 0, %67 ], [ %63, %61 ]
  %74 = phi i32 [ %69, %67 ], [ %64, %61 ]
  %75 = phi i32 [ %70, %67 ], [ %65, %61 ]
  %76 = icmp slt i32 %74, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = sub nsw i32 %72, %74
  %79 = sub nsw i32 %73, %74
  %80 = add nsw i32 %75, %74
  br label %81

81:                                               ; preds = %77, %71
  %82 = phi i32 [ %78, %77 ], [ %72, %71 ]
  %83 = phi i32 [ %79, %77 ], [ %73, %71 ]
  %84 = phi i32 [ 0, %77 ], [ %74, %71 ]
  %85 = phi i32 [ %80, %77 ], [ %75, %71 ]
  %86 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %87 = load i32, ptr %86, align 8, !tbaa !67
  %88 = sub nsw i32 %87, %52
  %89 = tail call i32 @llvm.smin.i32(i32 %55, i32 %88)
  %90 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %91 = load i32, ptr %90, align 4, !tbaa !72
  %92 = sub nsw i32 %91, %82
  %93 = tail call i32 @llvm.smin.i32(i32 %85, i32 %92)
  %94 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %95 = load i32, ptr %94, align 8, !tbaa !67
  %96 = sub nsw i32 %95, %53
  %97 = tail call i32 @llvm.smin.i32(i32 %89, i32 %96)
  %98 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 3
  %99 = load i32, ptr %98, align 4, !tbaa !72
  %100 = sub nsw i32 %99, %83
  %101 = tail call i32 @llvm.smin.i32(i32 %93, i32 %100)
  %102 = icmp eq ptr %2, null
  br i1 %102, label %112, label %103

103:                                              ; preds = %81
  %104 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 2
  %105 = load i32, ptr %104, align 8, !tbaa !67
  %106 = sub nsw i32 %105, %54
  %107 = tail call i32 @llvm.smin.i32(i32 %97, i32 %106)
  %108 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 3
  %109 = load i32, ptr %108, align 4, !tbaa !72
  %110 = sub nsw i32 %109, %84
  %111 = tail call i32 @llvm.smin.i32(i32 %101, i32 %110)
  br label %112

112:                                              ; preds = %103, %81
  %113 = phi i32 [ %97, %81 ], [ %107, %103 ]
  %114 = phi i32 [ %101, %81 ], [ %111, %103 ]
  %115 = icmp sgt i32 %114, 0
  %116 = icmp sgt i32 %113, 0
  %117 = select i1 %115, i1 %116, i1 false
  %118 = select i1 %117, i32 %113, i32 0
  %119 = select i1 %117, i32 %114, i32 0
  br i1 %117, label %120, label %777

120:                                              ; preds = %112
  br i1 %102, label %125, label %121

121:                                              ; preds = %120
  %122 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 5
  %123 = load i32, ptr %122, align 4, !tbaa !73
  %124 = icmp eq i32 %123, 4
  br i1 %124, label %125, label %777

125:                                              ; preds = %121, %120
  %126 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 5
  %127 = load i32, ptr %126, align 4, !tbaa !73
  %128 = icmp eq i32 %127, 4
  br i1 %128, label %129, label %777

129:                                              ; preds = %125
  br i1 %102, label %142, label %130

130:                                              ; preds = %129
  %131 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 8
  %132 = load ptr, ptr %131, align 8, !tbaa !74
  %133 = icmp eq ptr %132, null
  br i1 %133, label %142, label %134

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %136 = load ptr, ptr %135, align 8, !tbaa !74
  %137 = icmp eq ptr %136, null
  br i1 %137, label %142, label %138

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 8
  %140 = load ptr, ptr %139, align 8, !tbaa !74
  %141 = icmp ne ptr %140, null
  br label %142

142:                                              ; preds = %138, %134, %130, %129
  %143 = phi i1 [ false, %134 ], [ false, %130 ], [ false, %129 ], [ %141, %138 ]
  br i1 %102, label %156, label %144

144:                                              ; preds = %142
  %145 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 9
  %146 = load ptr, ptr %145, align 8, !tbaa !75
  %147 = icmp eq ptr %146, null
  br i1 %147, label %156, label %148

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %150 = load ptr, ptr %149, align 8, !tbaa !75
  %151 = icmp eq ptr %150, null
  br i1 %151, label %156, label %152

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 9
  %154 = load ptr, ptr %153, align 8, !tbaa !75
  %155 = icmp ne ptr %154, null
  br label %156

156:                                              ; preds = %152, %148, %144, %142
  %157 = phi i1 [ false, %148 ], [ false, %144 ], [ false, %142 ], [ %155, %152 ]
  br i1 %143, label %158, label %173

158:                                              ; preds = %156
  %159 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %160 = load ptr, ptr %159, align 8, !tbaa !74
  %161 = mul nsw i32 %87, %82
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, ptr %160, i64 %162
  %164 = sext i32 %52 to i64
  %165 = getelementptr inbounds i32, ptr %163, i64 %164
  %166 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 8
  %167 = load ptr, ptr %166, align 8, !tbaa !74
  %168 = mul nsw i32 %95, %83
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, ptr %167, i64 %169
  %171 = sext i32 %53 to i64
  %172 = getelementptr inbounds i32, ptr %170, i64 %171
  br label %173

173:                                              ; preds = %158, %156
  %174 = phi ptr [ %172, %158 ], [ undef, %156 ]
  %175 = phi ptr [ %165, %158 ], [ null, %156 ]
  br i1 %157, label %176, label %191

176:                                              ; preds = %173
  %177 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %178 = load ptr, ptr %177, align 8, !tbaa !75
  %179 = mul nsw i32 %87, %82
  %180 = add nsw i32 %179, %52
  %181 = shl nsw i32 %180, 2
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds float, ptr %178, i64 %182
  %184 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 9
  %185 = load ptr, ptr %184, align 8, !tbaa !75
  %186 = mul nsw i32 %95, %83
  %187 = add nsw i32 %186, %53
  %188 = shl nsw i32 %187, 2
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds float, ptr %185, i64 %189
  br label %191

191:                                              ; preds = %176, %173
  %192 = phi ptr [ %190, %176 ], [ undef, %173 ]
  %193 = phi ptr [ %183, %176 ], [ null, %173 ]
  %194 = icmp eq ptr %3, null
  %195 = mul nsw i32 %95, %83
  %196 = add nsw i32 %195, %53
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i16, ptr %3, i64 %197
  %199 = select i1 %194, ptr null, ptr %198
  br i1 %102, label %236, label %200

200:                                              ; preds = %191
  br i1 %143, label %201, label %211

201:                                              ; preds = %200
  %202 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 8
  %203 = load ptr, ptr %202, align 8, !tbaa !74
  %204 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 2
  %205 = load i32, ptr %204, align 8, !tbaa !67
  %206 = mul nsw i32 %205, %84
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, ptr %203, i64 %207
  %209 = zext nneg i32 %54 to i64
  %210 = getelementptr inbounds i32, ptr %208, i64 %209
  br label %211

211:                                              ; preds = %201, %200
  %212 = phi ptr [ %210, %201 ], [ null, %200 ]
  br i1 %157, label %213, label %223

213:                                              ; preds = %211
  %214 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 9
  %215 = load ptr, ptr %214, align 8, !tbaa !75
  %216 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 2
  %217 = load i32, ptr %216, align 8, !tbaa !67
  %218 = mul nsw i32 %217, %84
  %219 = add nsw i32 %218, %54
  %220 = shl nsw i32 %219, 2
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds float, ptr %215, i64 %221
  br label %223

223:                                              ; preds = %213, %211
  %224 = phi ptr [ %222, %213 ], [ null, %211 ]
  %225 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 2
  %226 = load i32, ptr %225, align 8, !tbaa !67
  %227 = icmp eq ptr %4, null
  %228 = mul nsw i32 %226, %84
  %229 = add nsw i32 %228, %54
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i16, ptr %4, i64 %230
  %232 = select i1 %227, ptr null, ptr %231
  %233 = icmp eq ptr %5, null
  %234 = getelementptr inbounds i16, ptr %5, i64 %230
  %235 = select i1 %233, ptr null, ptr %234
  br label %236

236:                                              ; preds = %223, %191
  %237 = phi ptr [ %193, %191 ], [ %224, %223 ]
  %238 = phi ptr [ %4, %191 ], [ %232, %223 ]
  %239 = phi ptr [ %5, %191 ], [ %235, %223 ]
  %240 = phi i32 [ %87, %191 ], [ %226, %223 ]
  %241 = phi ptr [ %175, %191 ], [ %212, %223 ]
  switch i32 %15, label %420 [
    i32 1000, label %258
    i32 1001, label %250
    i32 1002, label %242
    i32 0, label %396
    i32 1, label %397
    i32 2, label %398
    i32 3, label %399
    i32 4, label %400
    i32 5, label %401
    i32 6, label %402
    i32 7, label %403
    i32 8, label %404
    i32 9, label %405
    i32 10, label %406
    i32 11, label %407
    i32 12, label %408
    i32 13, label %409
    i32 14, label %410
    i32 15, label %411
    i32 17, label %412
    i32 16, label %413
    i32 18, label %414
    i32 19, label %415
    i32 23, label %416
    i32 20, label %417
    i32 21, label %418
    i32 22, label %419
  ]

242:                                              ; preds = %236
  br i1 %117, label %243, label %777

243:                                              ; preds = %242
  %244 = sext i32 %87 to i64
  %245 = sext i32 %240 to i64
  %246 = shl nsw i32 %87, 2
  %247 = sext i32 %246 to i64
  %248 = shl nsw i32 %240, 2
  %249 = sext i32 %248 to i64
  br label %352

250:                                              ; preds = %236
  br i1 %117, label %251, label %777

251:                                              ; preds = %250
  %252 = sext i32 %87 to i64
  %253 = sext i32 %240 to i64
  %254 = shl nsw i32 %87, 2
  %255 = sext i32 %254 to i64
  %256 = shl nsw i32 %240, 2
  %257 = sext i32 %256 to i64
  br label %290

258:                                              ; preds = %236
  br i1 %117, label %259, label %777

259:                                              ; preds = %258
  %260 = sext i32 %118 to i64
  %261 = shl nsw i64 %260, 2
  %262 = sext i32 %87 to i64
  %263 = sext i32 %240 to i64
  %264 = sext i32 %118 to i64
  %265 = shl nsw i64 %264, 4
  %266 = shl nsw i32 %87, 2
  %267 = sext i32 %266 to i64
  %268 = shl nsw i32 %240, 2
  %269 = sext i32 %268 to i64
  br label %270

270:                                              ; preds = %259, %285
  %271 = phi ptr [ %175, %259 ], [ %281, %285 ]
  %272 = phi ptr [ %241, %259 ], [ %280, %285 ]
  %273 = phi ptr [ %193, %259 ], [ %287, %285 ]
  %274 = phi ptr [ %237, %259 ], [ %286, %285 ]
  %275 = phi i32 [ %119, %259 ], [ %288, %285 ]
  br i1 %143, label %276, label %279

276:                                              ; preds = %270
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %271, ptr align 4 %272, i64 %261, i1 false)
  %277 = getelementptr inbounds i32, ptr %271, i64 %262
  %278 = getelementptr inbounds i32, ptr %272, i64 %263
  br label %279

279:                                              ; preds = %276, %270
  %280 = phi ptr [ %278, %276 ], [ %272, %270 ]
  %281 = phi ptr [ %277, %276 ], [ %271, %270 ]
  br i1 %157, label %282, label %285

282:                                              ; preds = %279
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %273, ptr align 4 %274, i64 %265, i1 false)
  %283 = getelementptr inbounds float, ptr %273, i64 %267
  %284 = getelementptr inbounds float, ptr %274, i64 %269
  br label %285

285:                                              ; preds = %279, %282
  %286 = phi ptr [ %284, %282 ], [ %274, %279 ]
  %287 = phi ptr [ %283, %282 ], [ %273, %279 ]
  %288 = add nsw i32 %275, -1
  %289 = icmp sgt i32 %275, 1
  br i1 %289, label %270, label %777, !llvm.loop !76

290:                                              ; preds = %251, %347
  %291 = phi ptr [ %175, %251 ], [ %317, %347 ]
  %292 = phi ptr [ %241, %251 ], [ %316, %347 ]
  %293 = phi ptr [ %193, %251 ], [ %349, %347 ]
  %294 = phi ptr [ %237, %251 ], [ %348, %347 ]
  %295 = phi i32 [ %119, %251 ], [ %350, %347 ]
  br i1 %143, label %296, label %315

296:                                              ; preds = %290
  br i1 %117, label %297, label %312

297:                                              ; preds = %296, %297
  %298 = phi i32 [ %308, %297 ], [ %118, %296 ]
  %299 = phi ptr [ %309, %297 ], [ %291, %296 ]
  %300 = phi ptr [ %310, %297 ], [ %292, %296 ]
  %301 = load i8, ptr %300, align 1, !tbaa !34
  store i8 %301, ptr %299, align 1, !tbaa !34
  %302 = getelementptr inbounds i8, ptr %300, i64 1
  %303 = load i8, ptr %302, align 1, !tbaa !34
  %304 = getelementptr inbounds i8, ptr %299, i64 1
  store i8 %303, ptr %304, align 1, !tbaa !34
  %305 = getelementptr inbounds i8, ptr %300, i64 2
  %306 = load i8, ptr %305, align 1, !tbaa !34
  %307 = getelementptr inbounds i8, ptr %299, i64 2
  store i8 %306, ptr %307, align 1, !tbaa !34
  %308 = add nsw i32 %298, -1
  %309 = getelementptr inbounds i32, ptr %299, i64 1
  %310 = getelementptr inbounds i32, ptr %300, i64 1
  %311 = icmp sgt i32 %298, 1
  br i1 %311, label %297, label %312, !llvm.loop !77

312:                                              ; preds = %297, %296
  %313 = getelementptr inbounds i32, ptr %291, i64 %252
  %314 = getelementptr inbounds i32, ptr %292, i64 %253
  br label %315

315:                                              ; preds = %312, %290
  %316 = phi ptr [ %314, %312 ], [ %292, %290 ]
  %317 = phi ptr [ %313, %312 ], [ %291, %290 ]
  br i1 %157, label %318, label %347

318:                                              ; preds = %315
  br i1 %117, label %319, label %344

319:                                              ; preds = %318, %319
  %320 = phi i32 [ %340, %319 ], [ %118, %318 ]
  %321 = phi ptr [ %342, %319 ], [ %294, %318 ]
  %322 = phi ptr [ %341, %319 ], [ %293, %318 ]
  %323 = getelementptr inbounds float, ptr %321, i64 3
  %324 = load float, ptr %323, align 4, !tbaa !51
  %325 = fcmp oeq float %324, 0.000000e+00
  %326 = getelementptr inbounds float, ptr %322, i64 3
  %327 = load float, ptr %326, align 4, !tbaa !51
  %328 = select i1 %325, float 1.000000e+00, float %324
  %329 = fdiv float %327, %328
  %330 = load float, ptr %321, align 4, !tbaa !51
  %331 = fmul float %329, %330
  store float %331, ptr %322, align 4, !tbaa !51
  %332 = getelementptr inbounds float, ptr %321, i64 1
  %333 = load float, ptr %332, align 4, !tbaa !51
  %334 = fmul float %329, %333
  %335 = getelementptr inbounds float, ptr %322, i64 1
  store float %334, ptr %335, align 4, !tbaa !51
  %336 = getelementptr inbounds float, ptr %321, i64 2
  %337 = load float, ptr %336, align 4, !tbaa !51
  %338 = fmul float %329, %337
  %339 = getelementptr inbounds float, ptr %322, i64 2
  store float %338, ptr %339, align 4, !tbaa !51
  %340 = add nsw i32 %320, -1
  %341 = getelementptr inbounds float, ptr %322, i64 4
  %342 = getelementptr inbounds float, ptr %321, i64 4
  %343 = icmp sgt i32 %320, 1
  br i1 %343, label %319, label %344, !llvm.loop !78

344:                                              ; preds = %319, %318
  %345 = getelementptr inbounds float, ptr %293, i64 %255
  %346 = getelementptr inbounds float, ptr %294, i64 %257
  br label %347

347:                                              ; preds = %315, %344
  %348 = phi ptr [ %346, %344 ], [ %294, %315 ]
  %349 = phi ptr [ %345, %344 ], [ %293, %315 ]
  %350 = add nsw i32 %295, -1
  %351 = icmp sgt i32 %295, 1
  br i1 %351, label %290, label %777, !llvm.loop !79

352:                                              ; preds = %243, %391
  %353 = phi ptr [ %175, %243 ], [ %375, %391 ]
  %354 = phi ptr [ %241, %243 ], [ %374, %391 ]
  %355 = phi ptr [ %193, %243 ], [ %393, %391 ]
  %356 = phi ptr [ %237, %243 ], [ %392, %391 ]
  %357 = phi i32 [ %119, %243 ], [ %394, %391 ]
  br i1 %143, label %358, label %373

358:                                              ; preds = %352
  br i1 %117, label %359, label %370

359:                                              ; preds = %358, %359
  %360 = phi i32 [ %366, %359 ], [ %118, %358 ]
  %361 = phi ptr [ %367, %359 ], [ %353, %358 ]
  %362 = phi ptr [ %368, %359 ], [ %354, %358 ]
  %363 = getelementptr inbounds i8, ptr %362, i64 3
  %364 = load i8, ptr %363, align 1, !tbaa !34
  %365 = getelementptr inbounds i8, ptr %361, i64 3
  store i8 %364, ptr %365, align 1, !tbaa !34
  %366 = add nsw i32 %360, -1
  %367 = getelementptr inbounds i32, ptr %361, i64 1
  %368 = getelementptr inbounds i32, ptr %362, i64 1
  %369 = icmp sgt i32 %360, 1
  br i1 %369, label %359, label %370, !llvm.loop !80

370:                                              ; preds = %359, %358
  %371 = getelementptr inbounds i32, ptr %353, i64 %244
  %372 = getelementptr inbounds i32, ptr %354, i64 %245
  br label %373

373:                                              ; preds = %370, %352
  %374 = phi ptr [ %372, %370 ], [ %354, %352 ]
  %375 = phi ptr [ %371, %370 ], [ %353, %352 ]
  br i1 %157, label %376, label %391

376:                                              ; preds = %373
  br i1 %117, label %377, label %388

377:                                              ; preds = %376, %377
  %378 = phi i32 [ %384, %377 ], [ %118, %376 ]
  %379 = phi ptr [ %386, %377 ], [ %356, %376 ]
  %380 = phi ptr [ %385, %377 ], [ %355, %376 ]
  %381 = getelementptr inbounds float, ptr %379, i64 3
  %382 = load float, ptr %381, align 4, !tbaa !51
  %383 = getelementptr inbounds float, ptr %380, i64 3
  store float %382, ptr %383, align 4, !tbaa !51
  %384 = add nsw i32 %378, -1
  %385 = getelementptr inbounds float, ptr %380, i64 4
  %386 = getelementptr inbounds float, ptr %379, i64 4
  %387 = icmp sgt i32 %378, 1
  br i1 %387, label %377, label %388, !llvm.loop !81

388:                                              ; preds = %377, %376
  %389 = getelementptr inbounds float, ptr %355, i64 %247
  %390 = getelementptr inbounds float, ptr %356, i64 %249
  br label %391

391:                                              ; preds = %373, %388
  %392 = phi ptr [ %390, %388 ], [ %356, %373 ]
  %393 = phi ptr [ %389, %388 ], [ %355, %373 ]
  %394 = add nsw i32 %357, -1
  %395 = icmp sgt i32 %357, 1
  br i1 %395, label %352, label %777, !llvm.loop !82

396:                                              ; preds = %236
  br label %420

397:                                              ; preds = %236
  br label %420

398:                                              ; preds = %236
  br label %420

399:                                              ; preds = %236
  br label %420

400:                                              ; preds = %236
  br label %420

401:                                              ; preds = %236
  br label %420

402:                                              ; preds = %236
  br label %420

403:                                              ; preds = %236
  br label %420

404:                                              ; preds = %236
  br label %420

405:                                              ; preds = %236
  br label %420

406:                                              ; preds = %236
  br label %420

407:                                              ; preds = %236
  br label %420

408:                                              ; preds = %236
  br label %420

409:                                              ; preds = %236
  br label %420

410:                                              ; preds = %236
  br label %420

411:                                              ; preds = %236
  br label %420

412:                                              ; preds = %236
  br label %420

413:                                              ; preds = %236
  br label %420

414:                                              ; preds = %236
  br label %420

415:                                              ; preds = %236
  br label %420

416:                                              ; preds = %236
  br label %420

417:                                              ; preds = %236
  br label %420

418:                                              ; preds = %236
  br label %420

419:                                              ; preds = %236
  br label %420

420:                                              ; preds = %236, %419, %418, %417, %416, %415, %414, %413, %412, %411, %410, %409, %408, %407, %406, %405, %404, %403, %402, %401, %400, %399, %398, %397, %396
  %421 = phi ptr [ @blend_color_luminosity_byte, %419 ], [ @blend_color_saturation_byte, %418 ], [ @blend_color_hue_byte, %417 ], [ @blend_color_color_byte, %416 ], [ @blend_color_exclusion_byte, %415 ], [ @blend_color_difference_byte, %414 ], [ @blend_color_vividlight_byte, %413 ], [ @blend_color_linearlight_byte, %412 ], [ @blend_color_pinlight_byte, %411 ], [ @blend_color_softlight_byte, %410 ], [ @blend_color_screen_byte, %409 ], [ @blend_color_dodge_byte, %408 ], [ @blend_color_linearburn_byte, %407 ], [ @blend_color_burn_byte, %406 ], [ @blend_color_hardlight_byte, %405 ], [ @blend_color_overlay_byte, %404 ], [ @blend_color_add_alpha_byte, %403 ], [ @blend_color_erase_alpha_byte, %402 ], [ @blend_color_darken_byte, %401 ], [ @blend_color_lighten_byte, %400 ], [ @blend_color_mul_byte, %399 ], [ @blend_color_sub_byte, %398 ], [ @blend_color_add_byte, %397 ], [ @blend_color_mix_byte, %396 ], [ null, %236 ]
  %422 = phi ptr [ @blend_color_luminosity_float, %419 ], [ @blend_color_saturation_float, %418 ], [ @blend_color_hue_float, %417 ], [ @blend_color_color_float, %416 ], [ @blend_color_exclusion_float, %415 ], [ @blend_color_difference_float, %414 ], [ @blend_color_vividlight_float, %413 ], [ @blend_color_linearlight_float, %412 ], [ @blend_color_pinlight_float, %411 ], [ @blend_color_softlight_float, %410 ], [ @blend_color_screen_float, %409 ], [ @blend_color_dodge_float, %408 ], [ @blend_color_linearburn_float, %407 ], [ @blend_color_burn_float, %406 ], [ @blend_color_hardlight_float, %405 ], [ @blend_color_overlay_float, %404 ], [ @blend_color_add_alpha_float, %403 ], [ @blend_color_erase_alpha_float, %402 ], [ @blend_color_darken_float, %401 ], [ @blend_color_lighten_float, %400 ], [ @blend_color_mul_float, %399 ], [ @blend_color_sub_float, %398 ], [ @blend_color_add_float, %397 ], [ @blend_color_mix_float, %396 ], [ null, %236 ]
  br i1 %117, label %423, label %777

423:                                              ; preds = %420
  %424 = icmp eq i8 %16, 0
  %425 = getelementptr inbounds [4 x i8], ptr %18, i64 0, i64 1
  %426 = getelementptr inbounds [4 x i8], ptr %18, i64 0, i64 2
  %427 = getelementptr inbounds [4 x i8], ptr %18, i64 0, i64 3
  %428 = sext i32 %95 to i64
  %429 = getelementptr inbounds [4 x i8], ptr %19, i64 0, i64 1
  %430 = getelementptr inbounds [4 x i8], ptr %19, i64 0, i64 2
  %431 = getelementptr inbounds [4 x i8], ptr %19, i64 0, i64 3
  %432 = sext i32 %240 to i64
  %433 = sext i32 %87 to i64
  %434 = sext i32 %95 to i64
  %435 = sext i32 %240 to i64
  %436 = icmp eq i8 %16, 0
  %437 = getelementptr inbounds float, ptr %20, i64 1
  %438 = getelementptr inbounds float, ptr %20, i64 2
  %439 = getelementptr inbounds float, ptr %20, i64 3
  %440 = sext i32 %95 to i64
  %441 = getelementptr inbounds float, ptr %21, i64 1
  %442 = getelementptr inbounds float, ptr %21, i64 2
  %443 = getelementptr inbounds float, ptr %21, i64 3
  %444 = sext i32 %240 to i64
  %445 = shl nsw i32 %87, 2
  %446 = sext i32 %445 to i64
  %447 = shl nsw i32 %95, 2
  %448 = sext i32 %447 to i64
  %449 = shl nsw i32 %240, 2
  %450 = sext i32 %449 to i64
  br label %451

451:                                              ; preds = %423, %768
  %452 = phi ptr [ %175, %423 ], [ %617, %768 ]
  %453 = phi ptr [ %174, %423 ], [ %616, %768 ]
  %454 = phi ptr [ %241, %423 ], [ %615, %768 ]
  %455 = phi ptr [ %193, %423 ], [ %774, %768 ]
  %456 = phi ptr [ %239, %423 ], [ %773, %768 ]
  %457 = phi ptr [ %199, %423 ], [ %772, %768 ]
  %458 = phi ptr [ %238, %423 ], [ %771, %768 ]
  %459 = phi ptr [ %237, %423 ], [ %770, %768 ]
  %460 = phi ptr [ %192, %423 ], [ %769, %768 ]
  %461 = phi i32 [ %119, %423 ], [ %775, %768 ]
  br i1 %143, label %462, label %611

462:                                              ; preds = %451
  %463 = icmp eq ptr %458, null
  br i1 %463, label %464, label %465

464:                                              ; preds = %462
  br i1 %117, label %589, label %604

465:                                              ; preds = %462
  %466 = icmp eq ptr %457, null
  br i1 %466, label %470, label %467

467:                                              ; preds = %465
  br i1 %117, label %468, label %534

468:                                              ; preds = %467
  %469 = icmp eq ptr %456, null
  br label %473

470:                                              ; preds = %465
  br i1 %117, label %471, label %583

471:                                              ; preds = %470
  %472 = icmp eq ptr %456, null
  br label %536

473:                                              ; preds = %468, %526
  %474 = phi i32 [ %118, %468 ], [ %527, %526 ]
  %475 = phi ptr [ %452, %468 ], [ %528, %526 ]
  %476 = phi ptr [ %453, %468 ], [ %529, %526 ]
  %477 = phi ptr [ %454, %468 ], [ %530, %526 ]
  %478 = phi ptr [ %456, %468 ], [ %491, %526 ]
  %479 = phi ptr [ %457, %468 ], [ %531, %526 ]
  %480 = phi ptr [ %458, %468 ], [ %532, %526 ]
  %481 = load i16, ptr %480, align 2, !tbaa !83
  %482 = uitofp i16 %481 to float
  %483 = fmul float %482, %6
  br i1 %469, label %490, label %484

484:                                              ; preds = %473
  %485 = getelementptr inbounds i16, ptr %478, i64 1
  %486 = load i16, ptr %478, align 2, !tbaa !83
  %487 = uitofp i16 %486 to float
  %488 = fdiv float %487, 6.553500e+04
  %489 = fmul float %483, %488
  br label %490

490:                                              ; preds = %484, %473
  %491 = phi ptr [ %485, %484 ], [ %478, %473 ]
  %492 = phi float [ %489, %484 ], [ %483, %473 ]
  %493 = getelementptr inbounds i8, ptr %477, i64 3
  %494 = load i8, ptr %493, align 1, !tbaa !34
  %495 = icmp ne i8 %494, 0
  %496 = fcmp une float %492, 0.000000e+00
  %497 = select i1 %495, i1 %496, i1 false
  br i1 %497, label %498, label %526

498:                                              ; preds = %490
  %499 = load i16, ptr %479, align 2, !tbaa !83
  %500 = uitofp i16 %499 to float
  %501 = fadd float %492, %500
  %502 = fdiv float %482, 6.553500e+04
  %503 = fneg float %500
  %504 = call float @llvm.fmuladd.f32(float %503, float %502, float %501)
  %505 = select i1 %424, float %504, float %501
  %506 = fcmp olt float %505, 6.553500e+04
  %507 = select i1 %506, float %505, float 6.553500e+04
  %508 = load i16, ptr %479, align 2, !tbaa !83
  %509 = uitofp i16 %508 to float
  %510 = fcmp ogt float %507, %509
  br i1 %510, label %511, label %526

511:                                              ; preds = %498
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #11
  %512 = fptoui float %507 to i16
  store i16 %512, ptr %479, align 2, !tbaa !83
  %513 = load i8, ptr %477, align 1, !tbaa !34
  store i8 %513, ptr %18, align 1, !tbaa !34
  %514 = getelementptr inbounds i8, ptr %477, i64 1
  %515 = load i8, ptr %514, align 1, !tbaa !34
  store i8 %515, ptr %425, align 1, !tbaa !34
  %516 = getelementptr inbounds i8, ptr %477, i64 2
  %517 = load i8, ptr %516, align 1, !tbaa !34
  store i8 %517, ptr %426, align 1, !tbaa !34
  %518 = load i8, ptr %493, align 1, !tbaa !34
  %519 = uitofp i8 %518 to float
  %520 = fmul float %507, %519
  %521 = fptosi float %520 to i32
  %522 = shl nsw i32 %521, 1
  %523 = add nsw i32 %522, 65535
  %524 = sdiv i32 %523, 131070
  %525 = trunc i32 %524 to i8
  store i8 %525, ptr %427, align 1, !tbaa !34
  call void %421(ptr noundef %475, ptr noundef %476, ptr noundef nonnull %18) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #11
  br label %526

526:                                              ; preds = %498, %511, %490
  %527 = add nsw i32 %474, -1
  %528 = getelementptr inbounds i32, ptr %475, i64 1
  %529 = getelementptr inbounds i32, ptr %476, i64 1
  %530 = getelementptr inbounds i32, ptr %477, i64 1
  %531 = getelementptr inbounds i16, ptr %479, i64 1
  %532 = getelementptr inbounds i16, ptr %480, i64 1
  %533 = icmp sgt i32 %474, 1
  br i1 %533, label %473, label %534, !llvm.loop !85

534:                                              ; preds = %526, %467
  %535 = getelementptr inbounds i16, ptr %457, i64 %428
  br label %583

536:                                              ; preds = %471, %576
  %537 = phi i32 [ %118, %471 ], [ %577, %576 ]
  %538 = phi ptr [ %452, %471 ], [ %578, %576 ]
  %539 = phi ptr [ %453, %471 ], [ %579, %576 ]
  %540 = phi ptr [ %454, %471 ], [ %580, %576 ]
  %541 = phi ptr [ %456, %471 ], [ %553, %576 ]
  %542 = phi ptr [ %458, %471 ], [ %581, %576 ]
  %543 = load i16, ptr %542, align 2, !tbaa !83
  %544 = uitofp i16 %543 to float
  %545 = fmul float %544, %6
  br i1 %472, label %552, label %546

546:                                              ; preds = %536
  %547 = getelementptr inbounds i16, ptr %541, i64 1
  %548 = load i16, ptr %541, align 2, !tbaa !83
  %549 = uitofp i16 %548 to float
  %550 = fdiv float %549, 6.553500e+04
  %551 = fmul float %545, %550
  br label %552

552:                                              ; preds = %546, %536
  %553 = phi ptr [ %547, %546 ], [ %541, %536 ]
  %554 = phi float [ %551, %546 ], [ %545, %536 ]
  %555 = fcmp olt float %554, 6.553500e+04
  %556 = select i1 %555, float %554, float 6.553500e+04
  %557 = getelementptr inbounds i8, ptr %540, i64 3
  %558 = load i8, ptr %557, align 1, !tbaa !34
  %559 = icmp ne i8 %558, 0
  %560 = fcmp ogt float %556, 0.000000e+00
  %561 = select i1 %559, i1 %560, i1 false
  br i1 %561, label %562, label %576

562:                                              ; preds = %552
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #11
  %563 = load i8, ptr %540, align 1, !tbaa !34
  store i8 %563, ptr %19, align 1, !tbaa !34
  %564 = getelementptr inbounds i8, ptr %540, i64 1
  %565 = load i8, ptr %564, align 1, !tbaa !34
  store i8 %565, ptr %429, align 1, !tbaa !34
  %566 = getelementptr inbounds i8, ptr %540, i64 2
  %567 = load i8, ptr %566, align 1, !tbaa !34
  store i8 %567, ptr %430, align 1, !tbaa !34
  %568 = load i8, ptr %557, align 1, !tbaa !34
  %569 = uitofp i8 %568 to float
  %570 = fmul float %556, %569
  %571 = fptosi float %570 to i32
  %572 = shl nsw i32 %571, 1
  %573 = add nsw i32 %572, 65535
  %574 = sdiv i32 %573, 131070
  %575 = trunc i32 %574 to i8
  store i8 %575, ptr %431, align 1, !tbaa !34
  call void %421(ptr noundef %538, ptr noundef %539, ptr noundef nonnull %19) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #11
  br label %576

576:                                              ; preds = %562, %552
  %577 = add nsw i32 %537, -1
  %578 = getelementptr inbounds i32, ptr %538, i64 1
  %579 = getelementptr inbounds i32, ptr %539, i64 1
  %580 = getelementptr inbounds i32, ptr %540, i64 1
  %581 = getelementptr inbounds i16, ptr %542, i64 1
  %582 = icmp sgt i32 %537, 1
  br i1 %582, label %536, label %583, !llvm.loop !86

583:                                              ; preds = %576, %470, %534
  %584 = phi ptr [ %535, %534 ], [ null, %470 ], [ null, %576 ]
  %585 = getelementptr inbounds i16, ptr %458, i64 %432
  %586 = icmp eq ptr %456, null
  %587 = getelementptr inbounds i16, ptr %456, i64 %432
  %588 = select i1 %586, ptr null, ptr %587
  br label %604

589:                                              ; preds = %464, %598
  %590 = phi i32 [ %599, %598 ], [ %118, %464 ]
  %591 = phi ptr [ %600, %598 ], [ %452, %464 ]
  %592 = phi ptr [ %601, %598 ], [ %453, %464 ]
  %593 = phi ptr [ %602, %598 ], [ %454, %464 ]
  %594 = getelementptr inbounds i8, ptr %593, i64 3
  %595 = load i8, ptr %594, align 1, !tbaa !34
  %596 = icmp eq i8 %595, 0
  br i1 %596, label %598, label %597

597:                                              ; preds = %589
  call void %421(ptr noundef %591, ptr noundef %592, ptr noundef %593) #11
  br label %598

598:                                              ; preds = %589, %597
  %599 = add nsw i32 %590, -1
  %600 = getelementptr inbounds i32, ptr %591, i64 1
  %601 = getelementptr inbounds i32, ptr %592, i64 1
  %602 = getelementptr inbounds i32, ptr %593, i64 1
  %603 = icmp sgt i32 %590, 1
  br i1 %603, label %589, label %604, !llvm.loop !87

604:                                              ; preds = %598, %464, %583
  %605 = phi ptr [ %585, %583 ], [ null, %464 ], [ null, %598 ]
  %606 = phi ptr [ %584, %583 ], [ %457, %464 ], [ %457, %598 ]
  %607 = phi ptr [ %588, %583 ], [ %456, %464 ], [ %456, %598 ]
  %608 = getelementptr inbounds i32, ptr %452, i64 %433
  %609 = getelementptr inbounds i32, ptr %453, i64 %434
  %610 = getelementptr inbounds i32, ptr %454, i64 %435
  br label %611

611:                                              ; preds = %604, %451
  %612 = phi ptr [ %605, %604 ], [ %458, %451 ]
  %613 = phi ptr [ %606, %604 ], [ %457, %451 ]
  %614 = phi ptr [ %607, %604 ], [ %456, %451 ]
  %615 = phi ptr [ %610, %604 ], [ %454, %451 ]
  %616 = phi ptr [ %609, %604 ], [ %453, %451 ]
  %617 = phi ptr [ %608, %604 ], [ %452, %451 ]
  br i1 %157, label %618, label %768

618:                                              ; preds = %611
  %619 = icmp eq ptr %612, null
  br i1 %619, label %620, label %621

620:                                              ; preds = %618
  br i1 %117, label %746, label %761

621:                                              ; preds = %618
  %622 = icmp eq ptr %613, null
  br i1 %622, label %626, label %623

623:                                              ; preds = %621
  br i1 %117, label %624, label %693

624:                                              ; preds = %623
  %625 = icmp eq ptr %614, null
  br label %629

626:                                              ; preds = %621
  br i1 %117, label %627, label %740

627:                                              ; preds = %626
  %628 = icmp eq ptr %614, null
  br label %695

629:                                              ; preds = %624, %685
  %630 = phi i32 [ %118, %624 ], [ %686, %685 ]
  %631 = phi ptr [ %614, %624 ], [ %647, %685 ]
  %632 = phi ptr [ %613, %624 ], [ %690, %685 ]
  %633 = phi ptr [ %612, %624 ], [ %691, %685 ]
  %634 = phi ptr [ %459, %624 ], [ %689, %685 ]
  %635 = phi ptr [ %460, %624 ], [ %688, %685 ]
  %636 = phi ptr [ %455, %624 ], [ %687, %685 ]
  %637 = load i16, ptr %633, align 2, !tbaa !83
  %638 = uitofp i16 %637 to float
  %639 = fmul float %638, %6
  br i1 %625, label %646, label %640

640:                                              ; preds = %629
  %641 = getelementptr inbounds i16, ptr %631, i64 1
  %642 = load i16, ptr %631, align 2, !tbaa !83
  %643 = uitofp i16 %642 to float
  %644 = fdiv float %643, 6.553500e+04
  %645 = fmul float %639, %644
  br label %646

646:                                              ; preds = %640, %629
  %647 = phi ptr [ %641, %640 ], [ %631, %629 ]
  %648 = phi float [ %645, %640 ], [ %639, %629 ]
  %649 = getelementptr inbounds float, ptr %634, i64 3
  %650 = load float, ptr %649, align 4, !tbaa !51
  %651 = fcmp une float %650, 0.000000e+00
  %652 = fcmp une float %648, 0.000000e+00
  %653 = select i1 %651, i1 %652, i1 false
  br i1 %653, label %654, label %685

654:                                              ; preds = %646
  %655 = load i16, ptr %632, align 2, !tbaa !83
  %656 = uitofp i16 %655 to float
  %657 = fadd float %648, %656
  br i1 %436, label %661, label %658

658:                                              ; preds = %654
  %659 = fcmp olt float %657, 6.553500e+04
  %660 = select i1 %659, float %657, float 6.553500e+04
  br label %665

661:                                              ; preds = %654
  %662 = fdiv float %638, 6.553500e+04
  %663 = fneg float %656
  %664 = call float @llvm.fmuladd.f32(float %663, float %662, float %657)
  br label %665

665:                                              ; preds = %661, %658
  %666 = phi float [ %660, %658 ], [ %664, %661 ]
  %667 = fcmp olt float %666, 6.553500e+04
  %668 = select i1 %667, float %666, float 6.553500e+04
  %669 = load i16, ptr %632, align 2, !tbaa !83
  %670 = uitofp i16 %669 to float
  %671 = fcmp ogt float %668, %670
  br i1 %671, label %672, label %685

672:                                              ; preds = %665
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %20) #11
  %673 = fptoui float %668 to i16
  store i16 %673, ptr %632, align 2, !tbaa !83
  %674 = fdiv float %668, 6.553500e+04
  %675 = load float, ptr %634, align 4, !tbaa !51
  %676 = fmul float %674, %675
  store float %676, ptr %20, align 16, !tbaa !51
  %677 = getelementptr inbounds float, ptr %634, i64 1
  %678 = load float, ptr %677, align 4, !tbaa !51
  %679 = fmul float %674, %678
  store float %679, ptr %437, align 4, !tbaa !51
  %680 = getelementptr inbounds float, ptr %634, i64 2
  %681 = load float, ptr %680, align 4, !tbaa !51
  %682 = fmul float %674, %681
  store float %682, ptr %438, align 8, !tbaa !51
  %683 = load float, ptr %649, align 4, !tbaa !51
  %684 = fmul float %674, %683
  store float %684, ptr %439, align 4, !tbaa !51
  call void %422(ptr noundef %636, ptr noundef %635, ptr noundef nonnull %20) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %20) #11
  br label %685

685:                                              ; preds = %665, %672, %646
  %686 = add nsw i32 %630, -1
  %687 = getelementptr inbounds float, ptr %636, i64 4
  %688 = getelementptr inbounds float, ptr %635, i64 4
  %689 = getelementptr inbounds float, ptr %634, i64 4
  %690 = getelementptr inbounds i16, ptr %632, i64 1
  %691 = getelementptr inbounds i16, ptr %633, i64 1
  %692 = icmp sgt i32 %630, 1
  br i1 %692, label %629, label %693, !llvm.loop !88

693:                                              ; preds = %685, %623
  %694 = getelementptr inbounds i16, ptr %613, i64 %440
  br label %740

695:                                              ; preds = %627, %733
  %696 = phi i32 [ %118, %627 ], [ %734, %733 ]
  %697 = phi ptr [ %614, %627 ], [ %712, %733 ]
  %698 = phi ptr [ %612, %627 ], [ %738, %733 ]
  %699 = phi ptr [ %459, %627 ], [ %737, %733 ]
  %700 = phi ptr [ %460, %627 ], [ %736, %733 ]
  %701 = phi ptr [ %455, %627 ], [ %735, %733 ]
  %702 = load i16, ptr %698, align 2, !tbaa !83
  %703 = uitofp i16 %702 to float
  %704 = fmul float %703, %6
  br i1 %628, label %711, label %705

705:                                              ; preds = %695
  %706 = getelementptr inbounds i16, ptr %697, i64 1
  %707 = load i16, ptr %697, align 2, !tbaa !83
  %708 = uitofp i16 %707 to float
  %709 = fdiv float %708, 6.553500e+04
  %710 = fmul float %704, %709
  br label %711

711:                                              ; preds = %705, %695
  %712 = phi ptr [ %706, %705 ], [ %697, %695 ]
  %713 = phi float [ %710, %705 ], [ %704, %695 ]
  %714 = fcmp olt float %713, 6.553500e+04
  %715 = select i1 %714, float %713, float 6.553500e+04
  %716 = getelementptr inbounds float, ptr %699, i64 3
  %717 = load float, ptr %716, align 4, !tbaa !51
  %718 = fcmp une float %717, 0.000000e+00
  %719 = fcmp ogt float %715, 0.000000e+00
  %720 = select i1 %718, i1 %719, i1 false
  br i1 %720, label %721, label %733

721:                                              ; preds = %711
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %21) #11
  %722 = fdiv float %715, 6.553500e+04
  %723 = load float, ptr %699, align 4, !tbaa !51
  %724 = fmul float %722, %723
  store float %724, ptr %21, align 16, !tbaa !51
  %725 = getelementptr inbounds float, ptr %699, i64 1
  %726 = load float, ptr %725, align 4, !tbaa !51
  %727 = fmul float %722, %726
  store float %727, ptr %441, align 4, !tbaa !51
  %728 = getelementptr inbounds float, ptr %699, i64 2
  %729 = load float, ptr %728, align 4, !tbaa !51
  %730 = fmul float %722, %729
  store float %730, ptr %442, align 8, !tbaa !51
  %731 = load float, ptr %716, align 4, !tbaa !51
  %732 = fmul float %722, %731
  store float %732, ptr %443, align 4, !tbaa !51
  call void %422(ptr noundef %701, ptr noundef %700, ptr noundef nonnull %21) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %21) #11
  br label %733

733:                                              ; preds = %721, %711
  %734 = add nsw i32 %696, -1
  %735 = getelementptr inbounds float, ptr %701, i64 4
  %736 = getelementptr inbounds float, ptr %700, i64 4
  %737 = getelementptr inbounds float, ptr %699, i64 4
  %738 = getelementptr inbounds i16, ptr %698, i64 1
  %739 = icmp sgt i32 %696, 1
  br i1 %739, label %695, label %740, !llvm.loop !89

740:                                              ; preds = %733, %626, %693
  %741 = phi ptr [ %694, %693 ], [ null, %626 ], [ null, %733 ]
  %742 = getelementptr inbounds i16, ptr %612, i64 %444
  %743 = icmp eq ptr %614, null
  %744 = getelementptr inbounds i16, ptr %614, i64 %444
  %745 = select i1 %743, ptr null, ptr %744
  br label %761

746:                                              ; preds = %620, %755
  %747 = phi i32 [ %756, %755 ], [ %118, %620 ]
  %748 = phi ptr [ %759, %755 ], [ %459, %620 ]
  %749 = phi ptr [ %758, %755 ], [ %460, %620 ]
  %750 = phi ptr [ %757, %755 ], [ %455, %620 ]
  %751 = getelementptr inbounds float, ptr %748, i64 3
  %752 = load float, ptr %751, align 4, !tbaa !51
  %753 = fcmp une float %752, 0.000000e+00
  br i1 %753, label %754, label %755

754:                                              ; preds = %746
  call void %422(ptr noundef %750, ptr noundef %749, ptr noundef %748) #11
  br label %755

755:                                              ; preds = %746, %754
  %756 = add nsw i32 %747, -1
  %757 = getelementptr inbounds float, ptr %750, i64 4
  %758 = getelementptr inbounds float, ptr %749, i64 4
  %759 = getelementptr inbounds float, ptr %748, i64 4
  %760 = icmp sgt i32 %747, 1
  br i1 %760, label %746, label %761, !llvm.loop !90

761:                                              ; preds = %755, %620, %740
  %762 = phi ptr [ %742, %740 ], [ null, %620 ], [ null, %755 ]
  %763 = phi ptr [ %741, %740 ], [ %613, %620 ], [ %613, %755 ]
  %764 = phi ptr [ %745, %740 ], [ %614, %620 ], [ %614, %755 ]
  %765 = getelementptr inbounds float, ptr %455, i64 %446
  %766 = getelementptr inbounds float, ptr %460, i64 %448
  %767 = getelementptr inbounds float, ptr %459, i64 %450
  br label %768

768:                                              ; preds = %611, %761
  %769 = phi ptr [ %766, %761 ], [ %460, %611 ]
  %770 = phi ptr [ %767, %761 ], [ %459, %611 ]
  %771 = phi ptr [ %762, %761 ], [ %612, %611 ]
  %772 = phi ptr [ %763, %761 ], [ %613, %611 ]
  %773 = phi ptr [ %764, %761 ], [ %614, %611 ]
  %774 = phi ptr [ %765, %761 ], [ %455, %611 ]
  %775 = add nsw i32 %461, -1
  %776 = icmp sgt i32 %461, 1
  br i1 %776, label %451, label %777, !llvm.loop !91

777:                                              ; preds = %391, %347, %285, %768, %242, %250, %258, %420, %125, %121, %112, %17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @IMB_rectfill(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !74
  %5 = icmp eq ptr %4, null
  br i1 %5, label %44, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !67
  %9 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !72
  %11 = mul nsw i32 %10, %8
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %44

13:                                               ; preds = %6
  %14 = getelementptr inbounds float, ptr %1, i64 3
  %15 = load float, ptr %14, align 4, !tbaa !51
  %16 = fmul float %15, 2.550000e+02
  %17 = fptosi float %16 to i32
  %18 = getelementptr inbounds float, ptr %1, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !51
  %20 = fmul float %19, 2.550000e+02
  %21 = fptosi float %20 to i32
  %22 = getelementptr inbounds float, ptr %1, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !51
  %24 = fmul float %23, 2.550000e+02
  %25 = fptosi float %24 to i32
  %26 = load float, ptr %1, align 4, !tbaa !51
  %27 = fmul float %26, 2.550000e+02
  %28 = fptosi float %27 to i32
  %29 = shl i32 %17, 24
  %30 = shl i32 %21, 16
  %31 = and i32 %30, 16711680
  %32 = or disjoint i32 %29, %31
  %33 = shl i32 %25, 8
  %34 = and i32 %33, 65280
  %35 = or disjoint i32 %32, %34
  %36 = and i32 %28, 255
  %37 = or disjoint i32 %35, %36
  br label %38

38:                                               ; preds = %13, %38
  %39 = phi i32 [ %11, %13 ], [ %42, %38 ]
  %40 = phi ptr [ %4, %13 ], [ %41, %38 ]
  %41 = getelementptr inbounds i32, ptr %40, i64 1
  store i32 %37, ptr %40, align 4, !tbaa !65
  %42 = add nsw i32 %39, -1
  %43 = icmp sgt i32 %39, 1
  br i1 %43, label %38, label %44, !llvm.loop !92

44:                                               ; preds = %38, %6, %2
  %45 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %46 = load ptr, ptr %45, align 8, !tbaa !75
  %47 = icmp eq ptr %46, null
  br i1 %47, label %72, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %50 = load i32, ptr %49, align 8, !tbaa !67
  %51 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %52 = load i32, ptr %51, align 4, !tbaa !72
  %53 = mul nsw i32 %52, %50
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %72

55:                                               ; preds = %48
  %56 = getelementptr inbounds float, ptr %1, i64 1
  %57 = getelementptr inbounds float, ptr %1, i64 2
  %58 = getelementptr inbounds float, ptr %1, i64 3
  br label %59

59:                                               ; preds = %55, %59
  %60 = phi ptr [ %46, %55 ], [ %69, %59 ]
  %61 = phi i32 [ %53, %55 ], [ %70, %59 ]
  %62 = load float, ptr %1, align 4, !tbaa !51
  %63 = getelementptr inbounds float, ptr %60, i64 1
  store float %62, ptr %60, align 4, !tbaa !51
  %64 = load float, ptr %56, align 4, !tbaa !51
  %65 = getelementptr inbounds float, ptr %60, i64 2
  store float %64, ptr %63, align 4, !tbaa !51
  %66 = load float, ptr %57, align 4, !tbaa !51
  %67 = getelementptr inbounds float, ptr %60, i64 3
  store float %66, ptr %65, align 4, !tbaa !51
  %68 = load float, ptr %58, align 4, !tbaa !51
  %69 = getelementptr inbounds float, ptr %60, i64 4
  store float %68, ptr %67, align 4, !tbaa !51
  %70 = add nsw i32 %61, -1
  %71 = icmp sgt i32 %61, 1
  br i1 %71, label %59, label %72, !llvm.loop !93

72:                                               ; preds = %59, %48, %44
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @buf_rectfill_area(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef readonly %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
  %11 = alloca [4 x float], align 16
  %12 = icmp ne ptr %0, null
  %13 = icmp ne ptr %1, null
  %14 = or i1 %12, %13
  %15 = icmp ne ptr %4, null
  %16 = and i1 %14, %15
  br i1 %16, label %17, label %235

17:                                               ; preds = %10
  %18 = getelementptr inbounds float, ptr %4, i64 3
  %19 = load float, ptr %18, align 4, !tbaa !51
  %20 = fcmp oeq float %19, 0.000000e+00
  br i1 %20, label %235, label %21

21:                                               ; preds = %17
  %22 = icmp slt i32 %6, 0
  %23 = tail call i32 @llvm.smin.i32(i32 %6, i32 %2)
  %24 = select i1 %22, i32 0, i32 %23
  %25 = icmp slt i32 %8, 0
  %26 = tail call i32 @llvm.smin.i32(i32 %8, i32 %2)
  %27 = select i1 %25, i32 0, i32 %26
  %28 = icmp slt i32 %7, 0
  %29 = tail call i32 @llvm.smin.i32(i32 %7, i32 %3)
  %30 = select i1 %28, i32 0, i32 %29
  %31 = icmp slt i32 %9, 0
  %32 = tail call i32 @llvm.smin.i32(i32 %9, i32 %3)
  %33 = select i1 %31, i32 0, i32 %32
  %34 = tail call i32 @llvm.smax.i32(i32 %24, i32 %27)
  %35 = tail call i32 @llvm.smin.i32(i32 %24, i32 %27)
  %36 = tail call i32 @llvm.smax.i32(i32 %30, i32 %33)
  %37 = tail call i32 @llvm.smin.i32(i32 %30, i32 %33)
  %38 = icmp eq i32 %35, %34
  %39 = icmp eq i32 %37, %36
  %40 = or i1 %38, %39
  br i1 %40, label %235, label %41

41:                                               ; preds = %21
  %42 = fsub float 1.000000e+00, %19
  %43 = fdiv float %42, 2.550000e+02
  br i1 %12, label %44, label %156

44:                                               ; preds = %41
  %45 = fcmp ugt float %19, 0.000000e+00
  br i1 %45, label %46, label %52

46:                                               ; preds = %44
  %47 = fcmp ogt float %19, 0x3FEFEFEFE0000000
  %48 = tail call float @llvm.fmuladd.f32(float %19, float 2.550000e+02, float 5.000000e-01)
  %49 = select i1 %47, float 2.550000e+02, float %48
  %50 = fptoui float %49 to i8
  %51 = zext i8 %50 to i32
  br label %52

52:                                               ; preds = %44, %46
  %53 = phi i32 [ %51, %46 ], [ 0, %44 ]
  %54 = fcmp oeq float %19, 1.000000e+00
  %55 = load float, ptr %4, align 4, !tbaa !51
  br i1 %54, label %56, label %83

56:                                               ; preds = %52
  %57 = fcmp ugt float %55, 0.000000e+00
  br i1 %57, label %58, label %63

58:                                               ; preds = %56
  %59 = fcmp ogt float %55, 0x3FEFEFEFE0000000
  br i1 %59, label %63, label %60

60:                                               ; preds = %58
  %61 = tail call float @llvm.fmuladd.f32(float %55, float 2.550000e+02, float 5.000000e-01)
  %62 = fptoui float %61 to i8
  br label %63

63:                                               ; preds = %60, %58, %56
  %64 = phi i8 [ 0, %56 ], [ %62, %60 ], [ -1, %58 ]
  %65 = getelementptr inbounds float, ptr %4, i64 1
  %66 = load float, ptr %65, align 4, !tbaa !51
  %67 = fcmp ugt float %66, 0.000000e+00
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = fcmp ogt float %66, 0x3FEFEFEFE0000000
  br i1 %69, label %73, label %70

70:                                               ; preds = %68
  %71 = tail call float @llvm.fmuladd.f32(float %66, float 2.550000e+02, float 5.000000e-01)
  %72 = fptoui float %71 to i8
  br label %73

73:                                               ; preds = %70, %68, %63
  %74 = phi i8 [ 0, %63 ], [ %72, %70 ], [ -1, %68 ]
  %75 = getelementptr inbounds float, ptr %4, i64 2
  %76 = load float, ptr %75, align 4, !tbaa !51
  %77 = fcmp ugt float %76, 0.000000e+00
  br i1 %77, label %78, label %91

78:                                               ; preds = %73
  %79 = fcmp ogt float %76, 0x3FEFEFEFE0000000
  br i1 %79, label %91, label %80

80:                                               ; preds = %78
  %81 = tail call float @llvm.fmuladd.f32(float %76, float 2.550000e+02, float 5.000000e-01)
  %82 = fptoui float %81 to i8
  br label %91

83:                                               ; preds = %52
  %84 = fmul float %19, %55
  %85 = getelementptr inbounds float, ptr %4, i64 1
  %86 = load float, ptr %85, align 4, !tbaa !51
  %87 = fmul float %19, %86
  %88 = getelementptr inbounds float, ptr %4, i64 2
  %89 = load float, ptr %88, align 4, !tbaa !51
  %90 = fmul float %19, %89
  br label %91

91:                                               ; preds = %73, %78, %80, %83
  %92 = phi i8 [ 0, %83 ], [ %64, %80 ], [ %64, %78 ], [ %64, %73 ]
  %93 = phi i8 [ 0, %83 ], [ %74, %80 ], [ %74, %78 ], [ %74, %73 ]
  %94 = phi i8 [ 0, %83 ], [ %82, %80 ], [ -1, %78 ], [ 0, %73 ]
  %95 = phi float [ %84, %83 ], [ 0.000000e+00, %80 ], [ 0.000000e+00, %78 ], [ 0.000000e+00, %73 ]
  %96 = phi float [ %87, %83 ], [ 0.000000e+00, %80 ], [ 0.000000e+00, %78 ], [ 0.000000e+00, %73 ]
  %97 = phi float [ %90, %83 ], [ 0.000000e+00, %80 ], [ 0.000000e+00, %78 ], [ 0.000000e+00, %73 ]
  %98 = sub nsw i32 %36, %37
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %156

100:                                              ; preds = %91
  %101 = sub nsw i32 %34, %35
  %102 = icmp sgt i32 %101, 0
  %103 = mul nsw i32 %3, %2
  %104 = zext nneg i32 %101 to i64
  br label %105

105:                                              ; preds = %100, %153
  %106 = phi i32 [ 0, %100 ], [ %154, %153 ]
  br i1 %102, label %107, label %153

107:                                              ; preds = %105
  %108 = add nsw i32 %106, %37
  %109 = mul nsw i32 %108, %2
  %110 = add i32 %109, %35
  br label %111

111:                                              ; preds = %107, %150
  %112 = phi i64 [ 0, %107 ], [ %151, %150 ]
  %113 = trunc i64 %112 to i32
  %114 = add i32 %110, %113
  %115 = shl nsw i32 %114, 2
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, ptr %0, i64 %116
  %118 = icmp sgt i32 %114, -1
  %119 = icmp slt i32 %114, %103
  %120 = select i1 %118, i1 %119, i1 false
  br i1 %120, label %121, label %150

121:                                              ; preds = %111
  br i1 %54, label %122, label %126

122:                                              ; preds = %121
  store i8 %92, ptr %117, align 1, !tbaa !34
  %123 = getelementptr inbounds i8, ptr %117, i64 1
  store i8 %93, ptr %123, align 1, !tbaa !34
  %124 = getelementptr inbounds i8, ptr %117, i64 2
  store i8 %94, ptr %124, align 1, !tbaa !34
  %125 = getelementptr inbounds i8, ptr %117, i64 3
  store i8 -1, ptr %125, align 1, !tbaa !34
  br label %150

126:                                              ; preds = %121
  %127 = load i8, ptr %117, align 1, !tbaa !34
  %128 = uitofp i8 %127 to float
  %129 = tail call float @llvm.fmuladd.f32(float %128, float %43, float %95)
  %130 = fmul float %129, 2.550000e+02
  %131 = fptoui float %130 to i8
  store i8 %131, ptr %117, align 1, !tbaa !34
  %132 = getelementptr inbounds i8, ptr %117, i64 1
  %133 = load i8, ptr %132, align 1, !tbaa !34
  %134 = uitofp i8 %133 to float
  %135 = tail call float @llvm.fmuladd.f32(float %134, float %43, float %96)
  %136 = fmul float %135, 2.550000e+02
  %137 = fptoui float %136 to i8
  store i8 %137, ptr %132, align 1, !tbaa !34
  %138 = getelementptr inbounds i8, ptr %117, i64 2
  %139 = load i8, ptr %138, align 1, !tbaa !34
  %140 = uitofp i8 %139 to float
  %141 = tail call float @llvm.fmuladd.f32(float %140, float %43, float %97)
  %142 = fmul float %141, 2.550000e+02
  %143 = fptoui float %142 to i8
  store i8 %143, ptr %138, align 1, !tbaa !34
  %144 = getelementptr inbounds i8, ptr %117, i64 3
  %145 = load i8, ptr %144, align 1, !tbaa !34
  %146 = zext i8 %145 to i32
  %147 = add nuw nsw i32 %53, %146
  %148 = tail call i32 @llvm.umin.i32(i32 %147, i32 255)
  %149 = trunc i32 %148 to i8
  store i8 %149, ptr %144, align 1, !tbaa !34
  br label %150

150:                                              ; preds = %111, %126, %122
  %151 = add nuw nsw i64 %112, 1
  %152 = icmp eq i64 %151, %104
  br i1 %152, label %153, label %111, !llvm.loop !94

153:                                              ; preds = %150, %105
  %154 = add nuw nsw i32 %106, 1
  %155 = icmp eq i32 %154, %98
  br i1 %155, label %156, label %105, !llvm.loop !95

156:                                              ; preds = %153, %91, %41
  br i1 %13, label %157, label %235

157:                                              ; preds = %156
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #11
  %158 = icmp eq ptr %5, null
  %159 = load float, ptr %4, align 4, !tbaa !51
  br i1 %158, label %169, label %160

160:                                              ; preds = %157
  store float %159, ptr %11, align 16, !tbaa !51
  %161 = getelementptr inbounds float, ptr %4, i64 1
  %162 = load float, ptr %161, align 4, !tbaa !51
  %163 = getelementptr inbounds float, ptr %11, i64 1
  store float %162, ptr %163, align 4, !tbaa !51
  %164 = getelementptr inbounds float, ptr %4, i64 2
  %165 = load float, ptr %164, align 4, !tbaa !51
  %166 = getelementptr inbounds float, ptr %11, i64 2
  store float %165, ptr %166, align 8, !tbaa !51
  %167 = load float, ptr %18, align 4, !tbaa !51
  %168 = getelementptr inbounds float, ptr %11, i64 3
  store float %167, ptr %168, align 4, !tbaa !51
  call void @IMB_colormanagement_display_to_scene_linear_v3(ptr noundef nonnull %11, ptr noundef nonnull %5) #11
  br label %181

169:                                              ; preds = %157
  %170 = tail call float @srgb_to_linearrgb(float noundef %159) #11
  store float %170, ptr %11, align 16, !tbaa !51
  %171 = getelementptr inbounds float, ptr %4, i64 1
  %172 = load float, ptr %171, align 4, !tbaa !51
  %173 = tail call float @srgb_to_linearrgb(float noundef %172) #11
  %174 = getelementptr inbounds float, ptr %11, i64 1
  store float %173, ptr %174, align 4, !tbaa !51
  %175 = getelementptr inbounds float, ptr %4, i64 2
  %176 = load float, ptr %175, align 4, !tbaa !51
  %177 = tail call float @srgb_to_linearrgb(float noundef %176) #11
  %178 = getelementptr inbounds float, ptr %11, i64 2
  store float %177, ptr %178, align 8, !tbaa !51
  %179 = load float, ptr %18, align 4, !tbaa !51
  %180 = getelementptr inbounds float, ptr %11, i64 3
  store float %179, ptr %180, align 4, !tbaa !51
  br label %181

181:                                              ; preds = %169, %160
  %182 = sub nsw i32 %36, %37
  %183 = icmp sgt i32 %182, 0
  br i1 %183, label %184, label %234

184:                                              ; preds = %181
  %185 = sub nsw i32 %34, %35
  %186 = icmp sgt i32 %185, 0
  %187 = fcmp oeq float %19, 1.000000e+00
  %188 = load float, ptr %11, align 16
  %189 = getelementptr inbounds [4 x float], ptr %11, i64 0, i64 1
  %190 = load float, ptr %189, align 4
  %191 = getelementptr inbounds [4 x float], ptr %11, i64 0, i64 2
  %192 = load float, ptr %191, align 8
  %193 = zext nneg i32 %185 to i64
  br label %194

194:                                              ; preds = %184, %231
  %195 = phi i32 [ 0, %184 ], [ %232, %231 ]
  br i1 %186, label %196, label %231

196:                                              ; preds = %194
  %197 = add nsw i32 %195, %37
  %198 = mul nsw i32 %197, %2
  %199 = add i32 %198, %35
  br label %200

200:                                              ; preds = %196, %228
  %201 = phi i64 [ 0, %196 ], [ %229, %228 ]
  %202 = trunc i64 %201 to i32
  %203 = add i32 %199, %202
  %204 = shl nsw i32 %203, 2
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds float, ptr %1, i64 %205
  br i1 %187, label %207, label %211

207:                                              ; preds = %200
  store float %188, ptr %206, align 4, !tbaa !51
  %208 = getelementptr inbounds float, ptr %206, i64 1
  store float %190, ptr %208, align 4, !tbaa !51
  %209 = getelementptr inbounds float, ptr %206, i64 2
  store float %192, ptr %209, align 4, !tbaa !51
  %210 = getelementptr inbounds float, ptr %206, i64 3
  store float 1.000000e+00, ptr %210, align 4, !tbaa !51
  br label %228

211:                                              ; preds = %200
  %212 = load float, ptr %206, align 4, !tbaa !51
  %213 = fmul float %42, %212
  %214 = call float @llvm.fmuladd.f32(float %188, float %19, float %213)
  store float %214, ptr %206, align 4, !tbaa !51
  %215 = getelementptr inbounds float, ptr %206, i64 1
  %216 = load float, ptr %215, align 4, !tbaa !51
  %217 = fmul float %42, %216
  %218 = call float @llvm.fmuladd.f32(float %190, float %19, float %217)
  store float %218, ptr %215, align 4, !tbaa !51
  %219 = getelementptr inbounds float, ptr %206, i64 2
  %220 = load float, ptr %219, align 4, !tbaa !51
  %221 = fmul float %42, %220
  %222 = call float @llvm.fmuladd.f32(float %192, float %19, float %221)
  store float %222, ptr %219, align 4, !tbaa !51
  %223 = getelementptr inbounds float, ptr %206, i64 3
  %224 = load float, ptr %223, align 4, !tbaa !51
  %225 = fadd float %19, %224
  %226 = fcmp olt float %225, 1.000000e+00
  %227 = select i1 %226, float %225, float 1.000000e+00
  store float %227, ptr %223, align 4, !tbaa !51
  br label %228

228:                                              ; preds = %207, %211
  %229 = add nuw nsw i64 %201, 1
  %230 = icmp eq i64 %229, %193
  br i1 %230, label %231, label %200, !llvm.loop !96

231:                                              ; preds = %228, %194
  %232 = add nuw nsw i32 %195, 1
  %233 = icmp eq i32 %232, %182
  br i1 %233, label %234, label %194, !llvm.loop !97

234:                                              ; preds = %231, %181
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #11
  br label %235

235:                                              ; preds = %156, %234, %21, %17, %10
  ret void
}

declare void @IMB_colormanagement_display_to_scene_linear_v3(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local void @IMB_rectfill_area(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = icmp eq ptr %0, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !74
  %12 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !75
  %14 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !67
  %16 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !72
  tail call void @buf_rectfill_area(ptr noundef %11, ptr noundef %13, i32 noundef %15, i32 noundef %17, ptr noundef %1, ptr noundef %6, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  br label %18

18:                                               ; preds = %7, %9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @IMB_rectfill_alpha(ptr nocapture noundef readonly %0, float noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !75
  %5 = icmp eq ptr %4, null
  br i1 %5, label %25, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 5
  %8 = load i32, ptr %7, align 4, !tbaa !73
  %9 = icmp eq i32 %8, 4
  br i1 %9, label %10, label %25

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !67
  %13 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !72
  %15 = mul nsw i32 %14, %12
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %10
  %18 = getelementptr inbounds float, ptr %4, i64 3
  br label %19

19:                                               ; preds = %17, %19
  %20 = phi i32 [ %22, %19 ], [ %15, %17 ]
  %21 = phi ptr [ %23, %19 ], [ %18, %17 ]
  store float %1, ptr %21, align 4, !tbaa !51
  %22 = add nsw i32 %20, -1
  %23 = getelementptr inbounds float, ptr %21, i64 4
  %24 = icmp sgt i32 %20, 1
  br i1 %24, label %19, label %25, !llvm.loop !98

25:                                               ; preds = %19, %10, %6, %2
  %26 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %27 = load ptr, ptr %26, align 8, !tbaa !74
  %28 = icmp eq ptr %27, null
  br i1 %28, label %46, label %29

29:                                               ; preds = %25
  %30 = fmul float %1, 2.550000e+02
  %31 = fptoui float %30 to i8
  %32 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !67
  %34 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %35 = load i32, ptr %34, align 4, !tbaa !72
  %36 = mul nsw i32 %35, %33
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %29
  %39 = getelementptr inbounds i8, ptr %27, i64 3
  br label %40

40:                                               ; preds = %38, %40
  %41 = phi ptr [ %44, %40 ], [ %39, %38 ]
  %42 = phi i32 [ %43, %40 ], [ %36, %38 ]
  store i8 %31, ptr %41, align 1, !tbaa !34
  %43 = add nsw i32 %42, -1
  %44 = getelementptr inbounds i8, ptr %41, i64 4
  %45 = icmp sgt i32 %42, 1
  br i1 %45, label %40, label %46, !llvm.loop !99

46:                                               ; preds = %40, %29, %25
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

declare void @rgb_to_hsv(float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

declare void @hsv_to_rgb(float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

declare float @srgb_to_linearrgb(float noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = distinct !{!37, !38, !39}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!"llvm.loop.unroll.disable"}
!40 = distinct !{!40, !38, !39}
!41 = distinct !{!41, !38, !39}
!42 = distinct !{!42, !38, !39}
!43 = distinct !{!43, !38, !39}
!44 = distinct !{!44, !38, !39}
!45 = distinct !{!45, !38, !39}
!46 = distinct !{!46, !38, !39}
!47 = distinct !{!47, !38, !39}
!48 = distinct !{!48, !38, !39}
!49 = distinct !{!49, !38, !39}
!50 = distinct !{!50, !38, !39}
!51 = !{!52, !52, i64 0}
!52 = !{!"float", !35, i64 0}
!53 = distinct !{!53, !38, !39}
!54 = distinct !{!54, !38, !39}
!55 = distinct !{!55, !38, !39}
!56 = distinct !{!56, !38, !39}
!57 = distinct !{!57, !38, !39}
!58 = distinct !{!58, !38, !39}
!59 = distinct !{!59, !38, !39}
!60 = distinct !{!60, !38, !39}
!61 = distinct !{!61, !38, !39}
!62 = distinct !{!62, !38, !39}
!63 = distinct !{!63, !38, !39}
!64 = distinct !{!64, !38, !39}
!65 = !{!66, !66, i64 0}
!66 = !{!"int", !35, i64 0}
!67 = !{!68, !66, i64 16}
!68 = !{!"ImBuf", !69, i64 0, !69, i64 8, !66, i64 16, !66, i64 20, !35, i64 24, !66, i64 28, !66, i64 32, !66, i64 36, !69, i64 40, !69, i64 48, !35, i64 56, !66, i64 72, !66, i64 76, !66, i64 80, !66, i64 84, !69, i64 88, !69, i64 96, !69, i64 104, !52, i64 112, !35, i64 120, !66, i64 280, !66, i64 284, !66, i64 288, !66, i64 292, !69, i64 296, !69, i64 304, !66, i64 312, !35, i64 316, !35, i64 1340, !69, i64 2368, !66, i64 2376, !69, i64 2384, !66, i64 2392, !66, i64 2396, !69, i64 2400, !69, i64 2408, !69, i64 2416, !69, i64 2424, !66, i64 2432, !70, i64 2436, !71, i64 2456}
!69 = !{!"any pointer", !35, i64 0}
!70 = !{!"rcti", !66, i64 0, !66, i64 4, !66, i64 8, !66, i64 12}
!71 = !{!"DDSData", !66, i64 0, !66, i64 4, !69, i64 8, !66, i64 16}
!72 = !{!68, !66, i64 20}
!73 = !{!68, !66, i64 28}
!74 = !{!68, !69, i64 40}
!75 = !{!68, !69, i64 48}
!76 = distinct !{!76, !38, !39}
!77 = distinct !{!77, !38, !39}
!78 = distinct !{!78, !38, !39}
!79 = distinct !{!79, !38, !39}
!80 = distinct !{!80, !38, !39}
!81 = distinct !{!81, !38, !39}
!82 = distinct !{!82, !38, !39}
!83 = !{!84, !84, i64 0}
!84 = !{!"short", !35, i64 0}
!85 = distinct !{!85, !38, !39}
!86 = distinct !{!86, !38, !39}
!87 = distinct !{!87, !38, !39}
!88 = distinct !{!88, !38, !39}
!89 = distinct !{!89, !38, !39}
!90 = distinct !{!90, !38, !39}
!91 = distinct !{!91, !38, !39}
!92 = distinct !{!92, !38, !39}
!93 = distinct !{!93, !38, !39}
!94 = distinct !{!94, !38, !39}
!95 = distinct !{!95, !38, !39}
!96 = distinct !{!96, !38, !39}
!97 = distinct !{!97, !38, !39}
!98 = distinct !{!98, !38, !39}
!99 = distinct !{!99, !38, !39}
