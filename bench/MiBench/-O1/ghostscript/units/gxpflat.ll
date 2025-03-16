; ModuleID = 'gxpflat.c'
source_filename = "gxpflat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.curve_segment = type { ptr, ptr, i16, i16, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.gx_path_s = type { ptr, %struct.gs_fixed_rect_s, ptr, ptr, ptr, i32, i32, %struct.gs_fixed_point_s, %struct.gs_point_s, %struct.gs_point_s, i8, i8, i8, i8 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_point_s = type { double, double }

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @gx_curve_log2_samples(i64 noundef %0, i64 noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.curve_segment, ptr %2, i64 0, i32 4
  %6 = load i64, ptr %5, align 8, !tbaa !5
  %7 = sub nsw i64 %6, %0
  %8 = getelementptr inbounds %struct.curve_segment, ptr %2, i64 0, i32 4, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !13
  %10 = sub nsw i64 %9, %1
  %11 = tail call i64 @llvm.abs.i64(i64 %7, i1 true)
  %12 = tail call i64 @llvm.abs.i64(i64 %10, i1 true)
  %13 = or i64 %12, %11
  %14 = icmp ult i64 %13, 65536
  %15 = zext i1 %14 to i64
  %16 = ashr i64 %3, %15
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %4
  %19 = tail call i64 @llvm.smax.i64(i64 %11, i64 %12)
  %20 = icmp ugt i64 %19, 4096
  br i1 %20, label %21, label %67

21:                                               ; preds = %18, %21
  %22 = phi i32 [ %24, %21 ], [ 1, %18 ]
  %23 = phi i64 [ %25, %21 ], [ %19, %18 ]
  %24 = add nuw nsw i32 %22, 1
  %25 = lshr i64 %23, 1
  %26 = icmp ugt i64 %23, 8193
  br i1 %26, label %21, label %67, !llvm.loop !14

27:                                               ; preds = %4
  %28 = getelementptr inbounds %struct.curve_segment, ptr %2, i64 0, i32 5
  %29 = load i64, ptr %28, align 8, !tbaa !16
  %30 = getelementptr inbounds %struct.curve_segment, ptr %2, i64 0, i32 6
  %31 = load i64, ptr %30, align 8, !tbaa !17
  %32 = sub nsw i64 %29, %31
  %33 = getelementptr inbounds %struct.curve_segment, ptr %2, i64 0, i32 5, i32 1
  %34 = load i64, ptr %33, align 8, !tbaa !18
  %35 = getelementptr inbounds %struct.curve_segment, ptr %2, i64 0, i32 6, i32 1
  %36 = load i64, ptr %35, align 8, !tbaa !19
  %37 = sub nsw i64 %34, %36
  %38 = add i64 %29, %32
  %39 = sub i64 %0, %38
  %40 = add i64 %34, %37
  %41 = sub i64 %1, %40
  %42 = sub i64 %6, %31
  %43 = add i64 %42, %32
  %44 = sub i64 %9, %36
  %45 = add i64 %44, %37
  %46 = tail call i64 @llvm.abs.i64(i64 %39, i1 true)
  %47 = tail call i64 @llvm.abs.i64(i64 %41, i1 true)
  %48 = tail call i64 @llvm.abs.i64(i64 %43, i1 true)
  %49 = tail call i64 @llvm.abs.i64(i64 %45, i1 true)
  %50 = tail call i64 @llvm.umax.i64(i64 %46, i64 %48)
  %51 = tail call i64 @llvm.umax.i64(i64 %47, i64 %49)
  %52 = add nuw nsw i64 %51, %50
  %53 = lshr i64 %52, 2
  %54 = add i64 %16, -1
  %55 = add i64 %54, %52
  %56 = sub i64 %55, %53
  %57 = sdiv i64 %56, %16
  %58 = trunc i64 %57 to i32
  %59 = icmp ugt i32 %58, 1
  br i1 %59, label %60, label %67

60:                                               ; preds = %27, %60
  %61 = phi i32 [ %65, %60 ], [ %58, %27 ]
  %62 = phi i32 [ %63, %60 ], [ 0, %27 ]
  %63 = add nuw nsw i32 %62, 1
  %64 = add i32 %61, 3
  %65 = lshr i32 %64, 2
  %66 = icmp ugt i32 %64, 7
  br i1 %66, label %60, label %67, !llvm.loop !20

67:                                               ; preds = %60, %21, %27, %18
  %68 = phi i32 [ 1, %18 ], [ 0, %27 ], [ %24, %21 ], [ %63, %60 ]
  ret i32 %68
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_flatten_sample(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = alloca [51 x %struct.gs_fixed_point_s], align 16
  %6 = alloca %struct.curve_segment, align 8
  call void @llvm.lifetime.start.p0(i64 816, ptr nonnull %5) #5
  %7 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 7
  %8 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 7, i32 1
  %9 = getelementptr inbounds %struct.curve_segment, ptr %2, i64 0, i32 5
  %10 = getelementptr inbounds %struct.curve_segment, ptr %2, i64 0, i32 6
  %11 = getelementptr inbounds %struct.curve_segment, ptr %2, i64 0, i32 4
  %12 = getelementptr inbounds %struct.curve_segment, ptr %2, i64 0, i32 5, i32 1
  %13 = getelementptr inbounds %struct.curve_segment, ptr %2, i64 0, i32 6, i32 1
  %14 = getelementptr inbounds %struct.curve_segment, ptr %2, i64 0, i32 4, i32 1
  %15 = getelementptr inbounds %struct.curve_segment, ptr %6, i64 0, i32 5
  %16 = getelementptr inbounds %struct.curve_segment, ptr %6, i64 0, i32 5, i32 1
  %17 = getelementptr inbounds %struct.curve_segment, ptr %6, i64 0, i32 6
  %18 = getelementptr inbounds %struct.curve_segment, ptr %6, i64 0, i32 6, i32 1
  %19 = getelementptr inbounds %struct.curve_segment, ptr %6, i64 0, i32 4
  %20 = getelementptr inbounds %struct.curve_segment, ptr %6, i64 0, i32 4, i32 1
  br label %21

21:                                               ; preds = %195, %4
  %22 = phi i32 [ %3, %4 ], [ %270, %195 ]
  %23 = phi i32 [ %1, %4 ], [ %196, %195 ]
  %24 = phi i32 [ undef, %4 ], [ %271, %195 ]
  %25 = load i64, ptr %7, align 8, !tbaa !21
  %26 = load i64, ptr %8, align 8, !tbaa !27
  %27 = load i64, ptr %9, align 8, !tbaa !16
  %28 = load i64, ptr %10, align 8, !tbaa !17
  %29 = load i64, ptr %11, align 8, !tbaa !5
  %30 = load i64, ptr %12, align 8, !tbaa !18
  %31 = load i64, ptr %13, align 8, !tbaa !19
  %32 = load i64, ptr %14, align 8, !tbaa !13
  %33 = icmp eq i32 %23, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %21
  %35 = tail call i32 @gx_path_add_line_notes(ptr noundef %0, i64 noundef %29, i64 noundef %32, i32 noundef %22) #5
  br label %476

36:                                               ; preds = %21
  %37 = sub nsw i64 %30, %26
  %38 = mul i64 %37, 3
  %39 = add i64 %38, %26
  %40 = add i64 %37, %30
  %41 = sub i64 %31, %40
  %42 = mul i64 %41, 3
  %43 = add i64 %39, %42
  %44 = sub i64 %32, %43
  %45 = sub nsw i64 %27, %25
  %46 = mul i64 %45, 3
  %47 = add i64 %46, %25
  %48 = add i64 %45, %27
  %49 = sub i64 %28, %48
  %50 = mul i64 %49, 3
  %51 = add i64 %47, %50
  %52 = sub i64 %29, %51
  %53 = icmp slt i32 %23, 11
  %54 = icmp slt i64 %52, 1537228672809129301
  %55 = select i1 %53, i1 %54, i1 false
  %56 = icmp sgt i64 %52, -1537228672809129301
  %57 = select i1 %55, i1 %56, i1 false
  %58 = icmp slt i64 %44, 1537228672809129301
  %59 = select i1 %57, i1 %58, i1 false
  %60 = icmp sgt i64 %44, -1537228672809129301
  %61 = select i1 %59, i1 %60, i1 false
  %62 = icmp slt i64 %50, 1537228672809129301
  %63 = select i1 %61, i1 %62, i1 false
  %64 = icmp sgt i64 %50, -1537228672809129301
  %65 = select i1 %63, i1 %64, i1 false
  %66 = icmp slt i64 %42, 1537228672809129301
  %67 = select i1 %65, i1 %66, i1 false
  %68 = icmp sgt i64 %42, -1537228672809129301
  %69 = select i1 %67, i1 %68, i1 false
  %70 = icmp slt i64 %46, 1537228672809129301
  %71 = select i1 %69, i1 %70, i1 false
  %72 = icmp sgt i64 %46, -1537228672809129301
  %73 = select i1 %71, i1 %72, i1 false
  %74 = icmp slt i64 %38, 1537228672809129301
  %75 = select i1 %73, i1 %74, i1 false
  %76 = icmp sgt i64 %38, -1537228672809129301
  %77 = select i1 %75, i1 %76, i1 false
  br i1 %77, label %78, label %195

78:                                               ; preds = %36
  %79 = getelementptr inbounds %struct.curve_segment, ptr %2, i64 0, i32 4
  %80 = getelementptr inbounds %struct.curve_segment, ptr %2, i64 0, i32 4, i32 1
  %81 = icmp eq i32 %23, 1
  br i1 %81, label %82, label %102

82:                                               ; preds = %78
  %83 = ashr i64 %52, 1
  %84 = add nsw i64 %83, %50
  %85 = ashr i64 %84, 1
  %86 = add nsw i64 %85, %46
  %87 = ashr i64 %86, 1
  %88 = add nsw i64 %87, %25
  %89 = ashr i64 %44, 1
  %90 = add nsw i64 %89, %42
  %91 = ashr i64 %90, 1
  %92 = add nsw i64 %91, %38
  %93 = ashr i64 %92, 1
  %94 = add nsw i64 %93, %26
  %95 = xor i64 %88, %25
  %96 = xor i64 %94, %26
  %97 = or i64 %96, %95
  %98 = icmp ult i64 %97, 2048
  br i1 %98, label %435, label %99

99:                                               ; preds = %82
  store i64 %88, ptr %5, align 16, !tbaa !28
  %100 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %5, i64 0, i32 1
  store i64 %94, ptr %100, align 8, !tbaa !29
  %101 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %5, i64 1
  br label %435

102:                                              ; preds = %78
  %103 = mul i64 %49, 6
  %104 = mul i64 %41, 6
  %105 = mul i64 %52, 6
  %106 = mul i64 %44, 6
  %107 = shl i32 %23, 1
  %108 = mul i32 %23, 3
  %109 = shl nsw i32 -1, %108
  %110 = xor i32 %109, -1
  %111 = zext i32 %23 to i64
  %112 = ashr i64 %46, %111
  %113 = ashr i64 %38, %111
  %114 = trunc i64 %46 to i32
  %115 = shl i32 %114, %107
  %116 = and i32 %115, %110
  %117 = trunc i64 %38 to i32
  %118 = shl i32 %117, %107
  %119 = and i32 %118, %110
  %120 = zext i32 %107 to i64
  %121 = ashr i64 %103, %120
  %122 = ashr i64 %104, %120
  %123 = trunc i64 %103 to i32
  %124 = shl i32 %123, %23
  %125 = and i32 %124, %110
  %126 = trunc i64 %104 to i32
  %127 = shl i32 %126, %23
  %128 = and i32 %127, %110
  %129 = ashr i64 %121, 1
  %130 = add nsw i64 %129, %112
  %131 = ashr i64 %122, 1
  %132 = add nsw i64 %131, %113
  %133 = trunc i64 %50 to i32
  %134 = shl i32 %133, %23
  %135 = and i32 %134, %110
  %136 = add nuw i32 %135, %116
  %137 = trunc i64 %42 to i32
  %138 = shl i32 %137, %23
  %139 = and i32 %138, %110
  %140 = add nuw i32 %139, %119
  %141 = icmp ugt i32 %136, %110
  %142 = select i1 %141, i32 %110, i32 -1
  %143 = and i32 %142, %136
  %144 = zext i1 %141 to i64
  %145 = icmp ugt i32 %140, %110
  %146 = select i1 %145, i32 %110, i32 -1
  %147 = and i32 %146, %140
  %148 = zext i1 %145 to i64
  %149 = zext i32 %108 to i64
  %150 = ashr i64 %52, %149
  %151 = ashr i64 %44, %149
  %152 = trunc i64 %52 to i32
  %153 = and i32 %152, %110
  %154 = add i32 %143, %153
  %155 = trunc i64 %44 to i32
  %156 = and i32 %155, %110
  %157 = add i32 %147, %156
  %158 = icmp ugt i32 %154, %110
  %159 = select i1 %158, i32 %110, i32 -1
  %160 = and i32 %159, %154
  %161 = zext i1 %158 to i64
  %162 = add i64 %130, %150
  %163 = add i64 %162, %144
  %164 = add nsw i64 %163, %161
  %165 = icmp ugt i32 %157, %110
  %166 = select i1 %165, i32 %110, i32 -1
  %167 = and i32 %166, %157
  %168 = zext i1 %165 to i64
  %169 = add i64 %132, %151
  %170 = add i64 %169, %148
  %171 = add nsw i64 %170, %168
  %172 = ashr i64 %105, %149
  %173 = add nsw i64 %172, %121
  %174 = ashr i64 %106, %149
  %175 = add nsw i64 %174, %122
  %176 = trunc i64 %105 to i32
  %177 = and i32 %176, %110
  %178 = add nuw i32 %177, %125
  %179 = trunc i64 %106 to i32
  %180 = and i32 %179, %110
  %181 = add nuw i32 %180, %128
  %182 = icmp ugt i32 %178, %110
  %183 = select i1 %182, i32 %110, i32 -2
  %184 = and i32 %183, %178
  %185 = zext i1 %182 to i64
  %186 = add nsw i64 %173, %185
  %187 = icmp ugt i32 %181, %110
  %188 = select i1 %187, i32 %110, i32 -2
  %189 = and i32 %188, %181
  %190 = zext i1 %187 to i64
  %191 = add nsw i64 %175, %190
  %192 = shl nsw i32 -1, %23
  %193 = xor i32 %192, -1
  %194 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %5, i64 0, i32 1
  br label %272

195:                                              ; preds = %36
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #5
  %196 = add nsw i32 %23, -1
  %197 = ashr i64 %27, 1
  %198 = ashr i64 %28, 1
  %199 = and i64 %27, 1
  %200 = and i64 %199, %28
  %201 = add nsw i64 %197, 1
  %202 = add nsw i64 %201, %198
  %203 = add i64 %202, %200
  %204 = ashr i64 %30, 1
  %205 = ashr i64 %31, 1
  %206 = and i64 %30, 1
  %207 = and i64 %206, %31
  %208 = add nsw i64 %204, 1
  %209 = add nsw i64 %208, %205
  %210 = add i64 %209, %207
  %211 = ashr i64 %25, 1
  %212 = and i64 %199, %25
  %213 = add nsw i64 %201, %211
  %214 = add i64 %213, %212
  store i64 %214, ptr %15, align 8, !tbaa !16
  %215 = ashr i64 %26, 1
  %216 = and i64 %206, %26
  %217 = add nsw i64 %208, %215
  %218 = add i64 %217, %216
  store i64 %218, ptr %16, align 8, !tbaa !18
  %219 = ashr i64 %29, 1
  %220 = and i64 %28, 1
  %221 = and i64 %220, %29
  %222 = add nsw i64 %198, 1
  %223 = add nsw i64 %222, %219
  %224 = add i64 %223, %221
  store i64 %224, ptr %10, align 8, !tbaa !17
  %225 = ashr i64 %32, 1
  %226 = and i64 %31, 1
  %227 = and i64 %226, %32
  %228 = add nsw i64 %205, 1
  %229 = add nsw i64 %228, %225
  %230 = add i64 %229, %227
  store i64 %230, ptr %13, align 8, !tbaa !19
  %231 = ashr i64 %214, 1
  %232 = ashr i64 %203, 1
  %233 = and i64 %203, 1
  %234 = and i64 %233, %214
  %235 = add nsw i64 %232, 1
  %236 = add nsw i64 %235, %231
  %237 = add i64 %236, %234
  store i64 %237, ptr %17, align 8, !tbaa !17
  %238 = ashr i64 %218, 1
  %239 = ashr i64 %210, 1
  %240 = and i64 %210, 1
  %241 = and i64 %240, %218
  %242 = add nsw i64 %239, 1
  %243 = add nsw i64 %242, %238
  %244 = add i64 %243, %241
  store i64 %244, ptr %18, align 8, !tbaa !19
  %245 = ashr i64 %224, 1
  %246 = and i64 %233, %224
  %247 = add nsw i64 %235, %245
  %248 = add i64 %247, %246
  store i64 %248, ptr %9, align 8, !tbaa !16
  %249 = ashr i64 %230, 1
  %250 = and i64 %240, %230
  %251 = add nsw i64 %242, %249
  %252 = add i64 %251, %250
  store i64 %252, ptr %12, align 8, !tbaa !18
  %253 = ashr i64 %237, 1
  %254 = ashr i64 %248, 1
  %255 = and i64 %237, 1
  %256 = and i64 %255, %248
  %257 = add nsw i64 %253, 1
  %258 = add nsw i64 %257, %254
  %259 = add i64 %258, %256
  store i64 %259, ptr %19, align 8, !tbaa !5
  %260 = ashr i64 %244, 1
  %261 = ashr i64 %252, 1
  %262 = and i64 %244, 1
  %263 = and i64 %262, %252
  %264 = add nsw i64 %260, 1
  %265 = add nsw i64 %264, %261
  %266 = add i64 %265, %263
  store i64 %266, ptr %20, align 8, !tbaa !13
  %267 = call i32 @gx_flatten_sample(ptr noundef %0, i32 noundef %196, ptr noundef nonnull %6, i32 noundef %22)
  %268 = icmp sgt i32 %267, -1
  %269 = zext i1 %268 to i32
  %270 = or i32 %22, %269
  %271 = select i1 %268, i32 %24, i32 %267
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #5
  br i1 %268, label %21, label %476

272:                                              ; preds = %417, %102
  %273 = phi i32 [ %160, %102 ], [ %418, %417 ]
  %274 = phi i32 [ %167, %102 ], [ %419, %417 ]
  %275 = phi i32 [ %184, %102 ], [ %420, %417 ]
  %276 = phi i32 [ %189, %102 ], [ %421, %417 ]
  %277 = phi i32 [ 0, %102 ], [ %302, %417 ]
  %278 = phi i32 [ 0, %102 ], [ %295, %417 ]
  %279 = phi i64 [ 0, %102 ], [ %422, %417 ]
  %280 = phi i64 [ %191, %102 ], [ %423, %417 ]
  %281 = phi i64 [ %186, %102 ], [ %424, %417 ]
  %282 = phi i64 [ %171, %102 ], [ %425, %417 ]
  %283 = phi i64 [ %164, %102 ], [ %426, %417 ]
  %284 = phi i32 [ %193, %102 ], [ %428, %417 ]
  %285 = phi i64 [ %26, %102 ], [ %305, %417 ]
  %286 = phi i64 [ %25, %102 ], [ %298, %417 ]
  %287 = phi i64 [ %26, %102 ], [ %429, %417 ]
  %288 = phi i64 [ %25, %102 ], [ %430, %417 ]
  %289 = phi i32 [ %22, %102 ], [ %431, %417 ]
  %290 = phi i32 [ %24, %102 ], [ %432, %417 ]
  %291 = getelementptr inbounds i8, ptr %5, i64 %279
  %292 = add i32 %278, %273
  %293 = icmp ugt i32 %292, %110
  %294 = select i1 %293, i32 %110, i32 -1
  %295 = and i32 %294, %292
  %296 = zext i1 %293 to i64
  %297 = add nsw i64 %283, %296
  %298 = add nsw i64 %297, %286
  %299 = add i32 %277, %274
  %300 = icmp ugt i32 %299, %110
  %301 = select i1 %300, i32 %110, i32 -1
  %302 = and i32 %301, %299
  %303 = zext i1 %300 to i64
  %304 = add nsw i64 %282, %303
  %305 = add nsw i64 %304, %285
  %306 = xor i64 %288, %298
  %307 = icmp ult i64 %306, 2048
  %308 = xor i64 %287, %305
  %309 = icmp ult i64 %308, 2048
  br i1 %307, label %310, label %332

310:                                              ; preds = %272
  br i1 %309, label %381, label %311

311:                                              ; preds = %310
  %312 = icmp sgt i64 %279, 16
  br i1 %312, label %313, label %354

313:                                              ; preds = %311
  %314 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %291, i64 -2
  %315 = load i64, ptr %314, align 8, !tbaa !28
  %316 = xor i64 %315, %298
  %317 = icmp ult i64 %316, 2048
  br i1 %317, label %318, label %354

318:                                              ; preds = %313
  %319 = sub nsw i64 %288, %315
  %320 = sub nsw i64 %298, %288
  %321 = xor i64 %319, %320
  %322 = icmp sgt i64 %321, -1
  br i1 %322, label %323, label %354

323:                                              ; preds = %318
  %324 = getelementptr %struct.gs_fixed_point_s, ptr %291, i64 -2, i32 1
  %325 = load i64, ptr %324, align 8, !tbaa !29
  %326 = sub nsw i64 %287, %325
  %327 = sub nsw i64 %305, %287
  %328 = xor i64 %326, %327
  %329 = add nsw i64 %279, -16
  %330 = icmp slt i64 %328, 0
  %331 = select i1 %330, i64 %279, i64 %329
  br label %354

332:                                              ; preds = %272
  %333 = icmp sgt i64 %279, 16
  %334 = select i1 %309, i1 %333, i1 false
  br i1 %334, label %335, label %354

335:                                              ; preds = %332
  %336 = getelementptr %struct.gs_fixed_point_s, ptr %291, i64 -2, i32 1
  %337 = load i64, ptr %336, align 8, !tbaa !29
  %338 = xor i64 %337, %305
  %339 = icmp ult i64 %338, 2048
  br i1 %339, label %340, label %354

340:                                              ; preds = %335
  %341 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %291, i64 -2
  %342 = load i64, ptr %341, align 8, !tbaa !28
  %343 = sub nsw i64 %288, %342
  %344 = sub nsw i64 %298, %288
  %345 = xor i64 %343, %344
  %346 = icmp sgt i64 %345, -1
  br i1 %346, label %347, label %354

347:                                              ; preds = %340
  %348 = sub nsw i64 %287, %337
  %349 = sub nsw i64 %305, %287
  %350 = xor i64 %348, %349
  %351 = add nsw i64 %279, -16
  %352 = icmp slt i64 %350, 0
  %353 = select i1 %352, i64 %279, i64 %351
  br label %354

354:                                              ; preds = %347, %323, %332, %340, %335, %311, %313, %318
  %355 = phi i64 [ %279, %335 ], [ %279, %340 ], [ %279, %332 ], [ %279, %313 ], [ %279, %318 ], [ %279, %311 ], [ %331, %323 ], [ %353, %347 ]
  %356 = icmp eq i64 %355, 800
  br i1 %356, label %357, label %375

357:                                              ; preds = %354
  %358 = and i32 %289, 1
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %362, label %360

360:                                              ; preds = %357
  %361 = call i32 @gx_path_add_lines_notes(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 50, i32 noundef %289) #5
  br label %370

362:                                              ; preds = %357
  %363 = load i64, ptr %5, align 16, !tbaa !28
  %364 = load i64, ptr %194, align 8, !tbaa !29
  %365 = call i32 @gx_path_add_line_notes(ptr noundef %0, i64 noundef %363, i64 noundef %364, i32 noundef %289) #5
  %366 = icmp slt i32 %365, 0
  br i1 %366, label %417, label %367

367:                                              ; preds = %362
  %368 = or disjoint i32 %289, 1
  %369 = call i32 @gx_path_add_lines_notes(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 49, i32 noundef %368) #5
  br label %370

370:                                              ; preds = %367, %360
  %371 = phi i32 [ %361, %360 ], [ %369, %367 ]
  %372 = icmp slt i32 %371, 0
  br i1 %372, label %417, label %373

373:                                              ; preds = %370
  %374 = or i32 %289, 1
  br label %375

375:                                              ; preds = %373, %354
  %376 = phi i64 [ 0, %373 ], [ %355, %354 ]
  %377 = phi i32 [ %374, %373 ], [ %289, %354 ]
  %378 = getelementptr inbounds i8, ptr %5, i64 %376
  store i64 %298, ptr %378, align 8, !tbaa !28
  %379 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %378, i64 0, i32 1
  store i64 %305, ptr %379, align 8, !tbaa !29
  %380 = add nsw i64 %376, 16
  br label %381

381:                                              ; preds = %310, %375
  %382 = phi i64 [ %380, %375 ], [ %279, %310 ]
  %383 = phi i64 [ %305, %375 ], [ %287, %310 ]
  %384 = phi i64 [ %298, %375 ], [ %288, %310 ]
  %385 = phi i32 [ %377, %375 ], [ %289, %310 ]
  %386 = add i32 %284, -1
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %417, label %388

388:                                              ; preds = %381
  %389 = add i32 %275, %273
  %390 = icmp ugt i32 %389, %110
  %391 = select i1 %390, i32 %110, i32 -1
  %392 = and i32 %391, %389
  %393 = zext i1 %390 to i64
  %394 = add nsw i64 %281, %393
  %395 = add nsw i64 %394, %283
  %396 = add i32 %275, %177
  %397 = icmp ugt i32 %396, %110
  %398 = select i1 %397, i32 %110, i32 -1
  %399 = and i32 %398, %396
  %400 = zext i1 %397 to i64
  %401 = add nsw i64 %172, %400
  %402 = add nsw i64 %401, %281
  %403 = add i32 %276, %274
  %404 = icmp ugt i32 %403, %110
  %405 = select i1 %404, i32 %110, i32 -1
  %406 = and i32 %405, %403
  %407 = zext i1 %404 to i64
  %408 = add nsw i64 %280, %407
  %409 = add nsw i64 %408, %282
  %410 = add i32 %276, %180
  %411 = icmp ugt i32 %410, %110
  %412 = select i1 %411, i32 %110, i32 -1
  %413 = and i32 %412, %410
  %414 = zext i1 %411 to i64
  %415 = add nsw i64 %174, %414
  %416 = add nsw i64 %415, %280
  br label %417

417:                                              ; preds = %381, %370, %362, %388
  %418 = phi i32 [ %392, %388 ], [ %273, %362 ], [ %273, %370 ], [ %273, %381 ]
  %419 = phi i32 [ %406, %388 ], [ %274, %362 ], [ %274, %370 ], [ %274, %381 ]
  %420 = phi i32 [ %399, %388 ], [ %275, %362 ], [ %275, %370 ], [ %275, %381 ]
  %421 = phi i32 [ %413, %388 ], [ %276, %362 ], [ %276, %370 ], [ %276, %381 ]
  %422 = phi i64 [ %382, %388 ], [ %355, %362 ], [ %355, %370 ], [ %382, %381 ]
  %423 = phi i64 [ %416, %388 ], [ %280, %362 ], [ %280, %370 ], [ %280, %381 ]
  %424 = phi i64 [ %402, %388 ], [ %281, %362 ], [ %281, %370 ], [ %281, %381 ]
  %425 = phi i64 [ %409, %388 ], [ %282, %362 ], [ %282, %370 ], [ %282, %381 ]
  %426 = phi i64 [ %395, %388 ], [ %283, %362 ], [ %283, %370 ], [ %283, %381 ]
  %427 = phi i32 [ 0, %388 ], [ 1, %362 ], [ 1, %370 ], [ 12, %381 ]
  %428 = phi i32 [ %386, %388 ], [ %284, %362 ], [ %284, %370 ], [ 0, %381 ]
  %429 = phi i64 [ %383, %388 ], [ %287, %362 ], [ %287, %370 ], [ %383, %381 ]
  %430 = phi i64 [ %384, %388 ], [ %288, %362 ], [ %288, %370 ], [ %384, %381 ]
  %431 = phi i32 [ %385, %388 ], [ %289, %362 ], [ %289, %370 ], [ %385, %381 ]
  %432 = phi i32 [ %290, %388 ], [ %365, %362 ], [ %371, %370 ], [ %290, %381 ]
  switch i32 %427, label %476 [
    i32 0, label %272
    i32 12, label %433
  ], !llvm.loop !30

433:                                              ; preds = %417
  %434 = getelementptr inbounds i8, ptr %5, i64 %422
  br label %435

435:                                              ; preds = %433, %99, %82
  %436 = phi ptr [ %101, %99 ], [ %5, %82 ], [ %434, %433 ]
  %437 = phi i32 [ %22, %99 ], [ %22, %82 ], [ %431, %433 ]
  %438 = phi i32 [ %24, %99 ], [ %24, %82 ], [ %432, %433 ]
  %439 = icmp ugt ptr %436, %5
  br i1 %439, label %440, label %472

440:                                              ; preds = %435
  %441 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %436, i64 1
  %442 = ptrtoint ptr %441 to i64
  %443 = ptrtoint ptr %5 to i64
  %444 = sub i64 %442, %443
  %445 = lshr exact i64 %444, 4
  %446 = trunc i64 %445 to i32
  %447 = and i32 %437, 1
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %449, label %464

449:                                              ; preds = %440
  %450 = load i64, ptr %5, align 16, !tbaa !28
  %451 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %5, i64 0, i32 1
  %452 = load i64, ptr %451, align 8, !tbaa !29
  %453 = call i32 @gx_path_add_line_notes(ptr noundef %0, i64 noundef %450, i64 noundef %452, i32 noundef %437) #5
  %454 = icmp sgt i32 %453, -1
  br i1 %454, label %455, label %459

455:                                              ; preds = %449
  %456 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %5, i64 1
  %457 = add nsw i32 %446, -1
  %458 = or disjoint i32 %437, 1
  br label %459

459:                                              ; preds = %449, %455
  %460 = phi i32 [ %458, %455 ], [ %437, %449 ]
  %461 = phi i32 [ %457, %455 ], [ %446, %449 ]
  %462 = phi ptr [ %456, %455 ], [ %5, %449 ]
  %463 = phi i32 [ %438, %455 ], [ %453, %449 ]
  br i1 %454, label %464, label %476

464:                                              ; preds = %459, %440
  %465 = phi i32 [ %437, %440 ], [ %460, %459 ]
  %466 = phi i32 [ %446, %440 ], [ %461, %459 ]
  %467 = phi ptr [ %5, %440 ], [ %462, %459 ]
  %468 = load i64, ptr %79, align 8, !tbaa !5
  store i64 %468, ptr %436, align 8, !tbaa !28
  %469 = load i64, ptr %80, align 8, !tbaa !13
  %470 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %436, i64 0, i32 1
  store i64 %469, ptr %470, align 8, !tbaa !29
  %471 = call i32 @gx_path_add_lines_notes(ptr noundef %0, ptr noundef %467, i32 noundef %466, i32 noundef %465) #5
  br label %476

472:                                              ; preds = %435
  %473 = load i64, ptr %79, align 8, !tbaa !5
  %474 = load i64, ptr %80, align 8, !tbaa !13
  %475 = call i32 @gx_path_add_line_notes(ptr noundef %0, i64 noundef %473, i64 noundef %474, i32 noundef %437) #5
  br label %476

476:                                              ; preds = %195, %417, %464, %459, %472, %34
  %477 = phi i32 [ %35, %34 ], [ %475, %472 ], [ %471, %464 ], [ %463, %459 ], [ %432, %417 ], [ %271, %195 ]
  call void @llvm.lifetime.end.p0(i64 816, ptr nonnull %5) #5
  ret i32 %477
}

declare i32 @gx_path_add_line_notes(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @gx_path_add_lines_notes(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #4

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !12, i64 24}
!6 = !{!"", !7, i64 0, !7, i64 8, !10, i64 16, !10, i64 18, !11, i64 24, !11, i64 40, !11, i64 56}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"short", !8, i64 0}
!11 = !{!"gs_fixed_point_s", !12, i64 0, !12, i64 8}
!12 = !{!"long", !8, i64 0}
!13 = !{!6, !12, i64 32}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = !{!6, !12, i64 40}
!17 = !{!6, !12, i64 56}
!18 = !{!6, !12, i64 48}
!19 = !{!6, !12, i64 64}
!20 = distinct !{!20, !15}
!21 = !{!22, !12, i64 72}
!22 = !{!"gx_path_s", !7, i64 0, !23, i64 8, !7, i64 40, !7, i64 48, !7, i64 56, !24, i64 64, !24, i64 68, !11, i64 72, !25, i64 88, !25, i64 104, !8, i64 120, !8, i64 121, !8, i64 122, !8, i64 123}
!23 = !{!"gs_fixed_rect_s", !11, i64 0, !11, i64 16}
!24 = !{!"int", !8, i64 0}
!25 = !{!"gs_point_s", !26, i64 0, !26, i64 8}
!26 = !{!"double", !8, i64 0}
!27 = !{!22, !12, i64 80}
!28 = !{!11, !12, i64 0}
!29 = !{!11, !12, i64 8}
!30 = distinct !{!30, !15}
