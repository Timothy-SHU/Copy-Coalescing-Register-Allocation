; ModuleID = 'src/lpc.c'
source_filename = "src/lpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str.1 = private unnamed_addr constant [10 x i8] c"src/lpc.c\00", align 1
@__PRETTY_FUNCTION__.Autocorrelation = private unnamed_addr constant [41 x i8] c"void Autocorrelation(word *, longword *)\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"scalauto <= 4\00", align 1
@__PRETTY_FUNCTION__.Reflection_coefficients = private unnamed_addr constant [49 x i8] c"void Reflection_coefficients(longword *, word *)\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"temp >= 0 && temp < 32\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"*r >= 0\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"*r != MIN_WORD\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"temp >= 0\00", align 1
@__PRETTY_FUNCTION__.Transformation_to_Log_Area_Ratios = private unnamed_addr constant [47 x i8] c"void Transformation_to_Log_Area_Ratios(word *)\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @Gsm_LPC_Analysis(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = alloca [9 x i16], align 16
  %5 = alloca [9 x i16], align 16
  %6 = alloca [9 x i64], align 16
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #7
  br label %7

7:                                                ; preds = %7, %3
  %8 = phi i64 [ 0, %3 ], [ %18, %7 ]
  %9 = phi i16 [ 0, %3 ], [ %17, %7 ]
  %10 = getelementptr inbounds i16, ptr %1, i64 %8
  %11 = load i16, ptr %10, align 2, !tbaa !5
  %12 = icmp slt i16 %11, 0
  %13 = icmp eq i16 %11, -32768
  %14 = sub i16 0, %11
  %15 = select i1 %13, i16 32767, i16 %14
  %16 = select i1 %12, i16 %15, i16 %11
  %17 = tail call i16 @llvm.umax.i16(i16 %16, i16 %9)
  %18 = add nuw nsw i64 %8, 1
  %19 = icmp eq i64 %18, 160
  br i1 %19, label %20, label %7, !llvm.loop !9

20:                                               ; preds = %7
  %21 = icmp eq i16 %17, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %20
  %23 = zext nneg i16 %17 to i64
  %24 = shl nuw nsw i64 %23, 16
  %25 = tail call signext i16 @gsm_norm(i64 noundef %24) #7
  %26 = sub i16 4, %25
  %27 = sext i16 %26 to i32
  br label %28

28:                                               ; preds = %22, %20
  %29 = phi i32 [ %27, %22 ], [ 0, %20 ]
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %76

31:                                               ; preds = %28
  switch i32 %29, label %76 [
    i32 1, label %32
    i32 2, label %43
    i32 3, label %54
    i32 4, label %65
  ]

32:                                               ; preds = %31, %32
  %33 = phi i64 [ %41, %32 ], [ 0, %31 ]
  %34 = getelementptr inbounds i16, ptr %1, i64 %33
  %35 = load i16, ptr %34, align 2, !tbaa !5
  %36 = sext i16 %35 to i32
  %37 = shl nsw i32 %36, 14
  %38 = add nsw i32 %37, 16384
  %39 = lshr i32 %38, 15
  %40 = trunc i32 %39 to i16
  store i16 %40, ptr %34, align 2, !tbaa !5
  %41 = add nuw nsw i64 %33, 1
  %42 = icmp eq i64 %41, 160
  br i1 %42, label %76, label %32, !llvm.loop !11

43:                                               ; preds = %31, %43
  %44 = phi i64 [ %52, %43 ], [ 0, %31 ]
  %45 = getelementptr inbounds i16, ptr %1, i64 %44
  %46 = load i16, ptr %45, align 2, !tbaa !5
  %47 = sext i16 %46 to i32
  %48 = shl nsw i32 %47, 13
  %49 = add nsw i32 %48, 16384
  %50 = ashr i32 %49, 15
  %51 = trunc i32 %50 to i16
  store i16 %51, ptr %45, align 2, !tbaa !5
  %52 = add nuw nsw i64 %44, 1
  %53 = icmp eq i64 %52, 160
  br i1 %53, label %76, label %43, !llvm.loop !12

54:                                               ; preds = %31, %54
  %55 = phi i64 [ %63, %54 ], [ 0, %31 ]
  %56 = getelementptr inbounds i16, ptr %1, i64 %55
  %57 = load i16, ptr %56, align 2, !tbaa !5
  %58 = sext i16 %57 to i32
  %59 = shl nsw i32 %58, 12
  %60 = add nsw i32 %59, 16384
  %61 = ashr i32 %60, 15
  %62 = trunc i32 %61 to i16
  store i16 %62, ptr %56, align 2, !tbaa !5
  %63 = add nuw nsw i64 %55, 1
  %64 = icmp eq i64 %63, 160
  br i1 %64, label %76, label %54, !llvm.loop !13

65:                                               ; preds = %31, %65
  %66 = phi i64 [ %74, %65 ], [ 0, %31 ]
  %67 = getelementptr inbounds i16, ptr %1, i64 %66
  %68 = load i16, ptr %67, align 2, !tbaa !5
  %69 = sext i16 %68 to i32
  %70 = shl nsw i32 %69, 11
  %71 = add nsw i32 %70, 16384
  %72 = ashr i32 %71, 15
  %73 = trunc i32 %72 to i16
  store i16 %73, ptr %67, align 2, !tbaa !5
  %74 = add nuw nsw i64 %66, 1
  %75 = icmp eq i64 %74, 160
  br i1 %75, label %76, label %65, !llvm.loop !14

76:                                               ; preds = %65, %54, %43, %32, %31, %28
  %77 = load i16, ptr %1, align 2, !tbaa !5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %6, i8 0, i64 72, i1 false), !tbaa !15
  %78 = sext i16 %77 to i64
  %79 = mul nsw i64 %78, %78
  store i64 %79, ptr %6, align 16, !tbaa !15
  %80 = getelementptr inbounds i16, ptr %1, i64 1
  %81 = load i16, ptr %80, align 2, !tbaa !5
  %82 = sext i16 %81 to i64
  %83 = mul nsw i64 %82, %82
  %84 = add nuw nsw i64 %83, %79
  store i64 %84, ptr %6, align 16, !tbaa !15
  %85 = mul nsw i64 %82, %78
  %86 = getelementptr inbounds i64, ptr %6, i64 1
  %87 = load i64, ptr %86, align 8, !tbaa !15
  %88 = add nsw i64 %87, %85
  store i64 %88, ptr %86, align 8, !tbaa !15
  %89 = getelementptr inbounds i16, ptr %1, i64 2
  %90 = load i16, ptr %89, align 2, !tbaa !5
  %91 = sext i16 %90 to i64
  %92 = mul nsw i64 %91, %91
  %93 = add nuw nsw i64 %92, %84
  store i64 %93, ptr %6, align 16, !tbaa !15
  %94 = mul nsw i64 %91, %82
  %95 = add nsw i64 %94, %88
  store i64 %95, ptr %86, align 8, !tbaa !15
  %96 = mul nsw i64 %91, %78
  %97 = getelementptr inbounds i64, ptr %6, i64 2
  %98 = load i64, ptr %97, align 16, !tbaa !15
  %99 = add nsw i64 %98, %96
  store i64 %99, ptr %97, align 16, !tbaa !15
  %100 = getelementptr inbounds i16, ptr %1, i64 3
  %101 = load i16, ptr %100, align 2, !tbaa !5
  %102 = sext i16 %101 to i64
  %103 = mul nsw i64 %102, %102
  %104 = add nuw nsw i64 %103, %93
  store i64 %104, ptr %6, align 16, !tbaa !15
  %105 = mul nsw i64 %102, %91
  %106 = add nsw i64 %105, %95
  store i64 %106, ptr %86, align 8, !tbaa !15
  %107 = mul nsw i64 %102, %82
  %108 = add nsw i64 %107, %99
  store i64 %108, ptr %97, align 16, !tbaa !15
  %109 = mul nsw i64 %102, %78
  %110 = getelementptr inbounds i64, ptr %6, i64 3
  %111 = load i64, ptr %110, align 8, !tbaa !15
  %112 = add nsw i64 %111, %109
  store i64 %112, ptr %110, align 8, !tbaa !15
  %113 = getelementptr inbounds i16, ptr %1, i64 4
  %114 = load i16, ptr %113, align 2, !tbaa !5
  %115 = sext i16 %114 to i64
  %116 = mul nsw i64 %115, %115
  %117 = add nuw nsw i64 %116, %104
  store i64 %117, ptr %6, align 16, !tbaa !15
  %118 = mul nsw i64 %115, %102
  %119 = add nsw i64 %118, %106
  store i64 %119, ptr %86, align 8, !tbaa !15
  %120 = mul nsw i64 %115, %91
  %121 = add nsw i64 %120, %108
  store i64 %121, ptr %97, align 16, !tbaa !15
  %122 = mul nsw i64 %115, %82
  %123 = add nsw i64 %122, %112
  store i64 %123, ptr %110, align 8, !tbaa !15
  %124 = mul nsw i64 %115, %78
  %125 = getelementptr inbounds i64, ptr %6, i64 4
  %126 = load i64, ptr %125, align 16, !tbaa !15
  %127 = add nsw i64 %126, %124
  store i64 %127, ptr %125, align 16, !tbaa !15
  %128 = getelementptr inbounds i16, ptr %1, i64 5
  %129 = load i16, ptr %128, align 2, !tbaa !5
  %130 = sext i16 %129 to i64
  %131 = mul nsw i64 %130, %130
  %132 = add nuw nsw i64 %131, %117
  store i64 %132, ptr %6, align 16, !tbaa !15
  %133 = mul nsw i64 %130, %115
  %134 = add nsw i64 %133, %119
  store i64 %134, ptr %86, align 8, !tbaa !15
  %135 = mul nsw i64 %130, %102
  %136 = add nsw i64 %135, %121
  store i64 %136, ptr %97, align 16, !tbaa !15
  %137 = mul nsw i64 %130, %91
  %138 = add nsw i64 %137, %123
  store i64 %138, ptr %110, align 8, !tbaa !15
  %139 = mul nsw i64 %130, %82
  %140 = add nsw i64 %139, %127
  store i64 %140, ptr %125, align 16, !tbaa !15
  %141 = mul nsw i64 %130, %78
  %142 = getelementptr inbounds i64, ptr %6, i64 5
  %143 = load i64, ptr %142, align 8, !tbaa !15
  %144 = add nsw i64 %143, %141
  store i64 %144, ptr %142, align 8, !tbaa !15
  %145 = getelementptr inbounds i16, ptr %1, i64 6
  %146 = load i16, ptr %145, align 2, !tbaa !5
  %147 = sext i16 %146 to i64
  %148 = mul nsw i64 %147, %147
  %149 = add nuw nsw i64 %148, %132
  store i64 %149, ptr %6, align 16, !tbaa !15
  %150 = mul nsw i64 %147, %130
  %151 = add nsw i64 %150, %134
  store i64 %151, ptr %86, align 8, !tbaa !15
  %152 = mul nsw i64 %147, %115
  %153 = add nsw i64 %152, %136
  store i64 %153, ptr %97, align 16, !tbaa !15
  %154 = mul nsw i64 %147, %102
  %155 = add nsw i64 %154, %138
  store i64 %155, ptr %110, align 8, !tbaa !15
  %156 = mul nsw i64 %147, %91
  %157 = add nsw i64 %156, %140
  store i64 %157, ptr %125, align 16, !tbaa !15
  %158 = mul nsw i64 %147, %82
  %159 = add nsw i64 %158, %144
  store i64 %159, ptr %142, align 8, !tbaa !15
  %160 = mul nsw i64 %147, %78
  %161 = getelementptr inbounds i64, ptr %6, i64 6
  %162 = load i64, ptr %161, align 16, !tbaa !15
  %163 = add nsw i64 %162, %160
  store i64 %163, ptr %161, align 16, !tbaa !15
  %164 = getelementptr inbounds i16, ptr %1, i64 7
  %165 = load i16, ptr %164, align 2, !tbaa !5
  %166 = sext i16 %165 to i64
  %167 = mul nsw i64 %166, %166
  %168 = add nsw i64 %167, %149
  store i64 %168, ptr %6, align 16, !tbaa !15
  %169 = mul nsw i64 %166, %147
  %170 = add nsw i64 %169, %151
  store i64 %170, ptr %86, align 8, !tbaa !15
  %171 = mul nsw i64 %166, %130
  %172 = add nsw i64 %171, %153
  store i64 %172, ptr %97, align 16, !tbaa !15
  %173 = mul nsw i64 %166, %115
  %174 = add nsw i64 %173, %155
  store i64 %174, ptr %110, align 8, !tbaa !15
  %175 = mul nsw i64 %166, %102
  %176 = add nsw i64 %175, %157
  store i64 %176, ptr %125, align 16, !tbaa !15
  %177 = mul nsw i64 %166, %91
  %178 = add nsw i64 %177, %159
  store i64 %178, ptr %142, align 8, !tbaa !15
  %179 = mul nsw i64 %166, %82
  %180 = add nsw i64 %179, %163
  store i64 %180, ptr %161, align 16, !tbaa !15
  %181 = mul nsw i64 %166, %78
  %182 = getelementptr inbounds i64, ptr %6, i64 7
  %183 = load i64, ptr %182, align 8, !tbaa !15
  %184 = add nsw i64 %183, %181
  store i64 %184, ptr %182, align 8, !tbaa !15
  %185 = getelementptr inbounds i64, ptr %6, i64 8
  %186 = load i64, ptr %185, align 16, !tbaa !15
  br label %188

187:                                              ; preds = %188
  store i64 %204, ptr %6, align 16, !tbaa !15
  store i64 %208, ptr %86, align 8, !tbaa !15
  store i64 %213, ptr %97, align 16, !tbaa !15
  store i64 %218, ptr %110, align 8, !tbaa !15
  store i64 %223, ptr %125, align 16, !tbaa !15
  store i64 %228, ptr %142, align 8, !tbaa !15
  store i64 %233, ptr %161, align 16, !tbaa !15
  store i64 %238, ptr %182, align 8, !tbaa !15
  store i64 %243, ptr %185, align 16, !tbaa !15
  br label %246

188:                                              ; preds = %188, %76
  %189 = phi ptr [ %164, %76 ], [ %200, %188 ]
  %190 = phi i32 [ 8, %76 ], [ %244, %188 ]
  %191 = phi i64 [ %168, %76 ], [ %204, %188 ]
  %192 = phi i64 [ %170, %76 ], [ %208, %188 ]
  %193 = phi i64 [ %172, %76 ], [ %213, %188 ]
  %194 = phi i64 [ %174, %76 ], [ %218, %188 ]
  %195 = phi i64 [ %176, %76 ], [ %223, %188 ]
  %196 = phi i64 [ %178, %76 ], [ %228, %188 ]
  %197 = phi i64 [ %180, %76 ], [ %233, %188 ]
  %198 = phi i64 [ %184, %76 ], [ %238, %188 ]
  %199 = phi i64 [ %186, %76 ], [ %243, %188 ]
  %200 = getelementptr inbounds i16, ptr %189, i64 1
  %201 = load i16, ptr %200, align 2, !tbaa !5
  %202 = sext i16 %201 to i64
  %203 = mul nsw i64 %202, %202
  %204 = add nsw i64 %203, %191
  %205 = load i16, ptr %189, align 2, !tbaa !5
  %206 = sext i16 %205 to i64
  %207 = mul nsw i64 %206, %202
  %208 = add nsw i64 %207, %192
  %209 = getelementptr inbounds i16, ptr %189, i64 -1
  %210 = load i16, ptr %209, align 2, !tbaa !5
  %211 = sext i16 %210 to i64
  %212 = mul nsw i64 %211, %202
  %213 = add nsw i64 %212, %193
  %214 = getelementptr inbounds i16, ptr %189, i64 -2
  %215 = load i16, ptr %214, align 2, !tbaa !5
  %216 = sext i16 %215 to i64
  %217 = mul nsw i64 %216, %202
  %218 = add nsw i64 %217, %194
  %219 = getelementptr inbounds i16, ptr %189, i64 -3
  %220 = load i16, ptr %219, align 2, !tbaa !5
  %221 = sext i16 %220 to i64
  %222 = mul nsw i64 %221, %202
  %223 = add nsw i64 %222, %195
  %224 = getelementptr inbounds i16, ptr %189, i64 -4
  %225 = load i16, ptr %224, align 2, !tbaa !5
  %226 = sext i16 %225 to i64
  %227 = mul nsw i64 %226, %202
  %228 = add nsw i64 %227, %196
  %229 = getelementptr inbounds i16, ptr %189, i64 -5
  %230 = load i16, ptr %229, align 2, !tbaa !5
  %231 = sext i16 %230 to i64
  %232 = mul nsw i64 %231, %202
  %233 = add nsw i64 %232, %197
  %234 = getelementptr inbounds i16, ptr %189, i64 -6
  %235 = load i16, ptr %234, align 2, !tbaa !5
  %236 = sext i16 %235 to i64
  %237 = mul nsw i64 %236, %202
  %238 = add nsw i64 %237, %198
  %239 = getelementptr inbounds i16, ptr %189, i64 -7
  %240 = load i16, ptr %239, align 2, !tbaa !5
  %241 = sext i16 %240 to i64
  %242 = mul nsw i64 %241, %202
  %243 = add nsw i64 %242, %199
  %244 = add nuw nsw i32 %190, 1
  %245 = icmp eq i32 %244, 160
  br i1 %245, label %187, label %188, !llvm.loop !17

246:                                              ; preds = %246, %187
  %247 = phi i64 [ 9, %187 ], [ %248, %246 ]
  %248 = add nsw i64 %247, -1
  %249 = getelementptr inbounds i64, ptr %6, i64 %248
  %250 = load i64, ptr %249, align 8, !tbaa !15
  %251 = shl i64 %250, 1
  store i64 %251, ptr %249, align 8, !tbaa !15
  %252 = icmp eq i64 %248, 0
  br i1 %252, label %253, label %246, !llvm.loop !18

253:                                              ; preds = %246
  br i1 %30, label %254, label %267

254:                                              ; preds = %253
  %255 = icmp slt i32 %29, 5
  br i1 %255, label %257, label %256

256:                                              ; preds = %254
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 142, ptr noundef nonnull @__PRETTY_FUNCTION__.Autocorrelation) #8
  unreachable

257:                                              ; preds = %254, %257
  %258 = phi ptr [ %261, %257 ], [ %1, %254 ]
  %259 = phi i32 [ %260, %257 ], [ 160, %254 ]
  %260 = add nsw i32 %259, -1
  %261 = getelementptr inbounds i16, ptr %258, i64 1
  %262 = load i16, ptr %258, align 2, !tbaa !5
  %263 = zext i16 %262 to i32
  %264 = shl i32 %263, %29
  %265 = trunc i32 %264 to i16
  store i16 %265, ptr %258, align 2, !tbaa !5
  %266 = icmp eq i32 %260, 0
  br i1 %266, label %267, label %257, !llvm.loop !19

267:                                              ; preds = %257, %253
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %4)
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %5) #7
  %268 = load i64, ptr %6, align 16, !tbaa !15
  %269 = icmp eq i64 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %267
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %2, i8 0, i64 16, i1 false), !tbaa !5
  br label %377

271:                                              ; preds = %267
  %272 = tail call signext i16 @gsm_norm(i64 noundef %268) #7
  %273 = icmp ult i16 %272, 32
  br i1 %273, label %274, label %276

274:                                              ; preds = %271
  %275 = zext nneg i16 %272 to i64
  br label %277

276:                                              ; preds = %271
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 200, ptr noundef nonnull @__PRETTY_FUNCTION__.Reflection_coefficients) #8
  unreachable

277:                                              ; preds = %277, %274
  %278 = phi i64 [ 0, %274 ], [ %285, %277 ]
  %279 = getelementptr inbounds i64, ptr %6, i64 %278
  %280 = load i64, ptr %279, align 8, !tbaa !15
  %281 = shl i64 %280, %275
  %282 = lshr i64 %281, 16
  %283 = trunc i64 %282 to i16
  %284 = getelementptr inbounds [9 x i16], ptr %4, i64 0, i64 %278
  store i16 %283, ptr %284, align 2, !tbaa !5
  %285 = add nuw nsw i64 %278, 1
  %286 = icmp eq i64 %285, 9
  br i1 %286, label %287, label %277, !llvm.loop !20

287:                                              ; preds = %277
  %288 = getelementptr inbounds i8, ptr %5, i64 2
  %289 = getelementptr inbounds i8, ptr %4, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %288, ptr noundef nonnull align 2 dereferenceable(14) %289, i64 14, i1 false), !tbaa !5
  %290 = load i16, ptr %4, align 16, !tbaa !5
  %291 = load i16, ptr %289, align 2, !tbaa !5
  %292 = icmp slt i16 %291, 0
  %293 = icmp eq i16 %291, -32768
  %294 = sub i16 0, %291
  %295 = select i1 %293, i16 32767, i16 %294
  %296 = select i1 %292, i16 %295, i16 %291
  %297 = icmp slt i16 %290, %296
  br i1 %297, label %303, label %309

298:                                              ; preds = %364
  %299 = trunc i64 %365 to i32
  %300 = icmp ult i32 %299, 9
  %301 = shl nuw i64 %367, 1
  %302 = sub i64 16, %301
  br label %303

303:                                              ; preds = %298, %287
  %304 = phi i64 [ 16, %287 ], [ %302, %298 ]
  %305 = phi i1 [ true, %287 ], [ %300, %298 ]
  %306 = phi ptr [ %2, %287 ], [ %366, %298 ]
  %307 = phi i16 [ %290, %287 ], [ %339, %298 ]
  store i16 %307, ptr %4, align 16, !tbaa !5
  br i1 %305, label %308, label %377

308:                                              ; preds = %303
  tail call void @llvm.memset.p0.i64(ptr align 2 %306, i8 0, i64 %304, i1 false), !tbaa !5
  br label %377

309:                                              ; preds = %287, %364
  %310 = phi i64 [ %375, %364 ], [ 7, %287 ]
  %311 = phi i16 [ %373, %364 ], [ %296, %287 ]
  %312 = phi i16 [ %368, %364 ], [ %291, %287 ]
  %313 = phi i16 [ %339, %364 ], [ %290, %287 ]
  %314 = phi ptr [ %366, %364 ], [ %2, %287 ]
  %315 = phi i64 [ %365, %364 ], [ 1, %287 ]
  %316 = phi i64 [ %367, %364 ], [ 0, %287 ]
  %317 = tail call i64 @llvm.umax.i64(i64 %310, i64 1)
  %318 = tail call signext i16 @gsm_div(i16 noundef signext %311, i16 noundef signext %313) #7
  store i16 %318, ptr %314, align 2, !tbaa !5
  %319 = icmp sgt i16 %318, -1
  br i1 %319, label %321, label %320

320:                                              ; preds = %309
  store i16 %313, ptr %4, align 16, !tbaa !5
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 224, ptr noundef nonnull @__PRETTY_FUNCTION__.Reflection_coefficients) #8
  unreachable

321:                                              ; preds = %309
  %322 = icmp sgt i16 %312, 0
  br i1 %322, label %323, label %325

323:                                              ; preds = %321
  %324 = sub nsw i16 0, %318
  store i16 %324, ptr %314, align 2, !tbaa !5
  br label %325

325:                                              ; preds = %323, %321
  %326 = load i16, ptr %314, align 2, !tbaa !5
  %327 = icmp eq i16 %326, -32768
  br i1 %327, label %328, label %329

328:                                              ; preds = %325
  store i16 %313, ptr %4, align 16, !tbaa !5
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 226, ptr noundef nonnull @__PRETTY_FUNCTION__.Reflection_coefficients) #8
  unreachable

329:                                              ; preds = %325
  %330 = icmp eq i64 %315, 8
  br i1 %330, label %376, label %331

331:                                              ; preds = %329
  %332 = sext i16 %312 to i64
  %333 = sext i16 %326 to i64
  %334 = shl nsw i64 %332, 33
  %335 = mul i64 %334, %333
  %336 = add i64 %335, 140737488355328
  %337 = lshr i64 %336, 48
  %338 = trunc i64 %337 to i16
  %339 = tail call i16 @llvm.sadd.sat.i16(i16 %338, i16 %313)
  %340 = icmp ugt i64 %315, 7
  br i1 %340, label %364, label %341

341:                                              ; preds = %331
  %342 = shl nsw i64 %333, 33
  br label %343

343:                                              ; preds = %343, %341
  %344 = phi i64 [ 1, %341 ], [ %348, %343 ]
  %345 = getelementptr inbounds [9 x i16], ptr %5, i64 0, i64 %344
  %346 = load i16, ptr %345, align 2, !tbaa !5
  %347 = sext i16 %346 to i64
  %348 = add nuw nsw i64 %344, 1
  %349 = getelementptr inbounds [9 x i16], ptr %4, i64 0, i64 %348
  %350 = load i16, ptr %349, align 2, !tbaa !5
  %351 = sext i16 %350 to i64
  %352 = mul i64 %342, %347
  %353 = add i64 %352, 140737488355328
  %354 = lshr i64 %353, 48
  %355 = trunc i64 %354 to i16
  %356 = tail call i16 @llvm.sadd.sat.i16(i16 %355, i16 %350)
  %357 = getelementptr inbounds [9 x i16], ptr %4, i64 0, i64 %344
  store i16 %356, ptr %357, align 2, !tbaa !5
  %358 = mul i64 %342, %351
  %359 = add i64 %358, 140737488355328
  %360 = lshr i64 %359, 48
  %361 = trunc i64 %360 to i16
  %362 = tail call i16 @llvm.sadd.sat.i16(i16 %361, i16 %346)
  store i16 %362, ptr %345, align 2, !tbaa !5
  %363 = icmp eq i64 %344, %317
  br i1 %363, label %364, label %343, !llvm.loop !21

364:                                              ; preds = %343, %331
  %365 = add nuw nsw i64 %315, 1
  %366 = getelementptr i16, ptr %314, i64 1
  %367 = add nuw nsw i64 %316, 1
  %368 = load i16, ptr %289, align 2, !tbaa !5
  %369 = icmp slt i16 %368, 0
  %370 = icmp eq i16 %368, -32768
  %371 = sub i16 0, %368
  %372 = select i1 %370, i16 32767, i16 %371
  %373 = select i1 %369, i16 %372, i16 %368
  %374 = icmp slt i16 %339, %373
  %375 = add nsw i64 %310, -1
  br i1 %374, label %298, label %309

376:                                              ; preds = %329
  store i16 %313, ptr %4, align 16, !tbaa !5
  br label %377

377:                                              ; preds = %270, %303, %308, %376
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %4)
  br label %378

378:                                              ; preds = %400, %377
  %379 = phi i32 [ 1, %377 ], [ %404, %400 ]
  %380 = phi ptr [ %2, %377 ], [ %405, %400 ]
  %381 = load i16, ptr %380, align 2, !tbaa !5
  %382 = icmp slt i16 %381, 0
  %383 = icmp eq i16 %381, -32768
  %384 = sub i16 0, %381
  %385 = select i1 %383, i16 32767, i16 %384
  %386 = select i1 %382, i16 %385, i16 %381
  %387 = icmp sgt i16 %386, -1
  br i1 %387, label %389, label %388

388:                                              ; preds = %378
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 267, ptr noundef nonnull @__PRETTY_FUNCTION__.Transformation_to_Log_Area_Ratios) #8
  unreachable

389:                                              ; preds = %378
  %390 = icmp slt i16 %386, 22118
  br i1 %390, label %391, label %393

391:                                              ; preds = %389
  %392 = lshr i16 %386, 1
  br label %400

393:                                              ; preds = %389
  %394 = icmp slt i16 %386, 31130
  br i1 %394, label %395, label %397

395:                                              ; preds = %393
  %396 = add nsw i16 %386, -11059
  br label %400

397:                                              ; preds = %393
  %398 = shl i16 %386, 2
  %399 = add nsw i16 %398, 26624
  br label %400

400:                                              ; preds = %397, %395, %391
  %401 = phi i16 [ %392, %391 ], [ %396, %395 ], [ %399, %397 ]
  %402 = sub i16 0, %401
  %403 = select i1 %382, i16 %402, i16 %401
  store i16 %403, ptr %380, align 2, !tbaa !5
  %404 = add nuw nsw i32 %379, 1
  %405 = getelementptr inbounds i16, ptr %380, i64 1
  %406 = icmp eq i32 %404, 9
  br i1 %406, label %407, label %378, !llvm.loop !22

407:                                              ; preds = %400
  %408 = load i16, ptr %2, align 2, !tbaa !5
  %409 = sext i16 %408 to i64
  %410 = mul nsw i64 %409, 175921860444160
  %411 = lshr exact i64 %410, 32
  %412 = trunc i64 %411 to i32
  %413 = add i32 %412, 16777216
  %414 = ashr i32 %413, 25
  %415 = icmp sgt i32 %414, 31
  %416 = icmp slt i32 %414, -32
  %417 = trunc i32 %414 to i16
  %418 = add nsw i16 %417, 32
  %419 = select i1 %416, i16 0, i16 %418
  %420 = select i1 %415, i16 63, i16 %419
  store i16 %420, ptr %2, align 2, !tbaa !5
  %421 = getelementptr inbounds i16, ptr %2, i64 1
  %422 = load i16, ptr %421, align 2, !tbaa !5
  %423 = sext i16 %422 to i64
  %424 = mul nsw i64 %423, 175921860444160
  %425 = lshr exact i64 %424, 32
  %426 = trunc i64 %425 to i32
  %427 = add i32 %426, 16777216
  %428 = ashr i32 %427, 25
  %429 = icmp sgt i32 %428, 31
  %430 = icmp slt i32 %428, -32
  %431 = trunc i32 %428 to i16
  %432 = add nsw i16 %431, 32
  %433 = select i1 %430, i16 0, i16 %432
  %434 = select i1 %429, i16 63, i16 %433
  store i16 %434, ptr %421, align 2, !tbaa !5
  %435 = getelementptr inbounds i16, ptr %2, i64 2
  %436 = load i16, ptr %435, align 2, !tbaa !5
  %437 = sext i16 %436 to i64
  %438 = mul nsw i64 %437, 175921860444160
  %439 = add nsw i64 %438, 576460752303423488
  %440 = lshr exact i64 %439, 32
  %441 = trunc i64 %440 to i32
  %442 = add i32 %441, 16777216
  %443 = ashr i32 %442, 25
  %444 = icmp sgt i32 %443, 15
  %445 = icmp slt i32 %443, -16
  %446 = trunc i32 %443 to i16
  %447 = add nsw i16 %446, 16
  %448 = select i1 %445, i16 0, i16 %447
  %449 = select i1 %444, i16 31, i16 %448
  store i16 %449, ptr %435, align 2, !tbaa !5
  %450 = getelementptr inbounds i16, ptr %2, i64 3
  %451 = load i16, ptr %450, align 2, !tbaa !5
  %452 = sext i16 %451 to i64
  %453 = mul nsw i64 %452, 175921860444160
  %454 = add nsw i64 %453, -720575940379279360
  %455 = lshr exact i64 %454, 32
  %456 = trunc i64 %455 to i32
  %457 = add i32 %456, 16777216
  %458 = ashr i32 %457, 25
  %459 = icmp sgt i32 %458, 15
  %460 = icmp slt i32 %458, -16
  %461 = trunc i32 %458 to i16
  %462 = add nsw i16 %461, 16
  %463 = select i1 %460, i16 0, i16 %462
  %464 = select i1 %459, i16 31, i16 %463
  store i16 %464, ptr %450, align 2, !tbaa !5
  %465 = getelementptr inbounds i16, ptr %2, i64 4
  %466 = load i16, ptr %465, align 2, !tbaa !5
  %467 = sext i16 %466 to i64
  %468 = mul nsw i64 %467, 119949846642688
  %469 = add nsw i64 %468, 26458647810801664
  %470 = lshr exact i64 %469, 32
  %471 = trunc i64 %470 to i32
  %472 = add i32 %471, 16777216
  %473 = ashr i32 %472, 25
  %474 = icmp sgt i32 %473, 7
  %475 = icmp slt i32 %473, -8
  %476 = trunc i32 %473 to i16
  %477 = add nsw i16 %476, 8
  %478 = select i1 %475, i16 0, i16 %477
  %479 = select i1 %474, i16 15, i16 %478
  store i16 %479, ptr %465, align 2, !tbaa !5
  %480 = getelementptr inbounds i16, ptr %2, i64 5
  %481 = load i16, ptr %480, align 2, !tbaa !5
  %482 = sext i16 %481 to i64
  %483 = mul nsw i64 %482, 131941395333120
  %484 = add nsw i64 %483, -504403158265495552
  %485 = lshr exact i64 %484, 32
  %486 = trunc i64 %485 to i32
  %487 = add i32 %486, 16777216
  %488 = ashr i32 %487, 25
  %489 = icmp sgt i32 %488, 7
  %490 = icmp slt i32 %488, -8
  %491 = trunc i32 %488 to i16
  %492 = add nsw i16 %491, 8
  %493 = select i1 %490, i16 0, i16 %492
  %494 = select i1 %489, i16 15, i16 %493
  store i16 %494, ptr %480, align 2, !tbaa !5
  %495 = getelementptr inbounds i16, ptr %2, i64 6
  %496 = load i16, ptr %495, align 2, !tbaa !5
  %497 = sext i16 %496 to i64
  %498 = mul nsw i64 %497, 73306501808128
  %499 = add nsw i64 %498, -95982967058333696
  %500 = lshr exact i64 %499, 32
  %501 = trunc i64 %500 to i32
  %502 = add i32 %501, 16777216
  %503 = ashr i32 %502, 25
  %504 = icmp sgt i32 %503, 3
  %505 = icmp slt i32 %503, -4
  %506 = trunc i32 %503 to i16
  %507 = add nsw i16 %506, 4
  %508 = select i1 %505, i16 0, i16 %507
  %509 = select i1 %504, i16 7, i16 %508
  store i16 %509, ptr %495, align 2, !tbaa !5
  %510 = getelementptr inbounds i16, ptr %2, i64 7
  %511 = load i16, ptr %510, align 2, !tbaa !5
  %512 = sext i16 %511 to i64
  %513 = mul nsw i64 %512, 77618648973312
  %514 = add nsw i64 %513, -322007373356990464
  %515 = lshr exact i64 %514, 32
  %516 = trunc i64 %515 to i32
  %517 = add i32 %516, 16777216
  %518 = ashr i32 %517, 25
  %519 = icmp sgt i32 %518, 3
  %520 = icmp slt i32 %518, -4
  %521 = trunc i32 %518 to i16
  %522 = add nsw i16 %521, 4
  %523 = select i1 %520, i16 0, i16 %522
  %524 = select i1 %519, i16 7, i16 %523
  store i16 %524, ptr %510, align 2, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare signext i16 @gsm_norm(i64 noundef) local_unnamed_addr #3

declare signext i16 @gsm_div(i16 noundef signext, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.sadd.sat.i16(i16, i16) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"short", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = !{!16, !16, i64 0}
!16 = !{!"long", !7, i64 0}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10}
!22 = distinct !{!22, !10}
