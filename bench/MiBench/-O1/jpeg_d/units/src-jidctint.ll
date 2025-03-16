; ModuleID = 'src/jidctint.c'
source_filename = "src/jidctint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @jpeg_idct_islow(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca [64 x i32], align 16
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 61
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #2
  %9 = getelementptr inbounds %struct.jpeg_component_info, ptr %1, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !13
  br label %14

11:                                               ; preds = %169
  %12 = getelementptr inbounds i8, ptr %8, i64 128
  %13 = zext i32 %4 to i64
  br label %178

14:                                               ; preds = %5, %169
  %15 = phi i32 [ 8, %5 ], [ %176, %169 ]
  %16 = phi ptr [ %6, %5 ], [ %173, %169 ]
  %17 = phi ptr [ %10, %5 ], [ %174, %169 ]
  %18 = phi ptr [ %2, %5 ], [ %175, %169 ]
  %19 = getelementptr inbounds i16, ptr %18, i64 8
  %20 = load i16, ptr %19, align 2, !tbaa !15
  %21 = sext i16 %20 to i32
  %22 = getelementptr inbounds i16, ptr %18, i64 16
  %23 = load i16, ptr %22, align 2, !tbaa !15
  %24 = sext i16 %23 to i32
  %25 = or i32 %24, %21
  %26 = getelementptr inbounds i16, ptr %18, i64 24
  %27 = load i16, ptr %26, align 2, !tbaa !15
  %28 = sext i16 %27 to i32
  %29 = or i32 %25, %28
  %30 = getelementptr inbounds i16, ptr %18, i64 32
  %31 = load i16, ptr %30, align 2, !tbaa !15
  %32 = sext i16 %31 to i32
  %33 = or i32 %29, %32
  %34 = getelementptr inbounds i16, ptr %18, i64 40
  %35 = load i16, ptr %34, align 2, !tbaa !15
  %36 = sext i16 %35 to i32
  %37 = or i32 %33, %36
  %38 = getelementptr inbounds i16, ptr %18, i64 48
  %39 = load i16, ptr %38, align 2, !tbaa !15
  %40 = sext i16 %39 to i32
  %41 = or i32 %37, %40
  %42 = getelementptr inbounds i16, ptr %18, i64 56
  %43 = load i16, ptr %42, align 2, !tbaa !15
  %44 = sext i16 %43 to i32
  %45 = or i32 %41, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %14
  %48 = load i16, ptr %18, align 2, !tbaa !15
  %49 = sext i16 %48 to i32
  %50 = load i32, ptr %17, align 4, !tbaa !16
  %51 = shl nsw i32 %49, 2
  %52 = mul i32 %51, %50
  store i32 %52, ptr %16, align 4, !tbaa !16
  %53 = getelementptr inbounds i32, ptr %16, i64 8
  store i32 %52, ptr %53, align 4, !tbaa !16
  %54 = getelementptr inbounds i32, ptr %16, i64 16
  store i32 %52, ptr %54, align 4, !tbaa !16
  %55 = getelementptr inbounds i32, ptr %16, i64 24
  store i32 %52, ptr %55, align 4, !tbaa !16
  %56 = getelementptr inbounds i32, ptr %16, i64 32
  store i32 %52, ptr %56, align 4, !tbaa !16
  %57 = getelementptr inbounds i32, ptr %16, i64 40
  store i32 %52, ptr %57, align 4, !tbaa !16
  %58 = getelementptr inbounds i32, ptr %16, i64 48
  store i32 %52, ptr %58, align 4, !tbaa !16
  br label %169

59:                                               ; preds = %14
  %60 = getelementptr inbounds i32, ptr %17, i64 16
  %61 = load i32, ptr %60, align 4, !tbaa !16
  %62 = mul nsw i32 %61, %24
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, ptr %17, i64 48
  %65 = load i32, ptr %64, align 4, !tbaa !16
  %66 = mul nsw i32 %65, %40
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %67, %63
  %69 = mul nsw i64 %68, 4433
  %70 = mul nsw i64 %67, -15137
  %71 = add nsw i64 %69, %70
  %72 = mul nsw i64 %63, 6270
  %73 = add nsw i64 %69, %72
  %74 = load i16, ptr %18, align 2, !tbaa !15
  %75 = sext i16 %74 to i32
  %76 = load i32, ptr %17, align 4, !tbaa !16
  %77 = mul nsw i32 %76, %75
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, ptr %17, i64 32
  %80 = load i32, ptr %79, align 4, !tbaa !16
  %81 = mul nsw i32 %80, %32
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %82, %78
  %84 = shl nsw i64 %83, 13
  %85 = sub nsw i64 %78, %82
  %86 = shl nsw i64 %85, 13
  %87 = add nsw i64 %84, %73
  %88 = sub nsw i64 %84, %73
  %89 = add nsw i64 %86, %71
  %90 = sub nsw i64 %86, %71
  %91 = getelementptr inbounds i32, ptr %17, i64 56
  %92 = load i32, ptr %91, align 4, !tbaa !16
  %93 = mul nsw i32 %92, %44
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, ptr %17, i64 40
  %96 = load i32, ptr %95, align 4, !tbaa !16
  %97 = mul nsw i32 %96, %36
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, ptr %17, i64 24
  %100 = load i32, ptr %99, align 4, !tbaa !16
  %101 = mul nsw i32 %100, %28
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, ptr %17, i64 8
  %104 = load i32, ptr %103, align 4, !tbaa !16
  %105 = mul nsw i32 %104, %21
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %106, %94
  %108 = add nsw i64 %102, %98
  %109 = add nsw i64 %102, %94
  %110 = add nsw i64 %106, %98
  %111 = add nsw i64 %110, %109
  %112 = mul nsw i64 %111, 9633
  %113 = mul nsw i64 %94, 2446
  %114 = mul nsw i64 %98, 16819
  %115 = mul nsw i64 %102, 25172
  %116 = mul nsw i64 %106, 12299
  %117 = mul nsw i64 %107, -7373
  %118 = mul nsw i64 %108, -20995
  %119 = mul nsw i64 %109, -16069
  %120 = mul nsw i64 %110, -3196
  %121 = add nsw i64 %112, %119
  %122 = add nsw i64 %112, %120
  %123 = add nsw i64 %117, %113
  %124 = add nsw i64 %123, %121
  %125 = add nsw i64 %118, %114
  %126 = add nsw i64 %125, %122
  %127 = add nsw i64 %118, %115
  %128 = add nsw i64 %127, %121
  %129 = add nsw i64 %117, %116
  %130 = add nsw i64 %129, %122
  %131 = add nsw i64 %87, 1024
  %132 = add nsw i64 %131, %130
  %133 = lshr i64 %132, 11
  %134 = trunc i64 %133 to i32
  store i32 %134, ptr %16, align 4, !tbaa !16
  %135 = add nsw i64 %87, 1024
  %136 = sub nsw i64 %135, %130
  %137 = lshr i64 %136, 11
  %138 = trunc i64 %137 to i32
  %139 = getelementptr inbounds i32, ptr %16, i64 56
  store i32 %138, ptr %139, align 4, !tbaa !16
  %140 = add nsw i64 %89, 1024
  %141 = add nsw i64 %140, %128
  %142 = lshr i64 %141, 11
  %143 = trunc i64 %142 to i32
  %144 = getelementptr inbounds i32, ptr %16, i64 8
  store i32 %143, ptr %144, align 4, !tbaa !16
  %145 = add nsw i64 %89, 1024
  %146 = sub nsw i64 %145, %128
  %147 = lshr i64 %146, 11
  %148 = trunc i64 %147 to i32
  %149 = getelementptr inbounds i32, ptr %16, i64 48
  store i32 %148, ptr %149, align 4, !tbaa !16
  %150 = add nsw i64 %90, 1024
  %151 = add nsw i64 %150, %126
  %152 = lshr i64 %151, 11
  %153 = trunc i64 %152 to i32
  %154 = getelementptr inbounds i32, ptr %16, i64 16
  store i32 %153, ptr %154, align 4, !tbaa !16
  %155 = add nsw i64 %90, 1024
  %156 = sub nsw i64 %155, %126
  %157 = lshr i64 %156, 11
  %158 = trunc i64 %157 to i32
  %159 = getelementptr inbounds i32, ptr %16, i64 40
  store i32 %158, ptr %159, align 4, !tbaa !16
  %160 = add nsw i64 %88, 1024
  %161 = add nsw i64 %160, %124
  %162 = lshr i64 %161, 11
  %163 = trunc i64 %162 to i32
  %164 = getelementptr inbounds i32, ptr %16, i64 24
  store i32 %163, ptr %164, align 4, !tbaa !16
  %165 = add nsw i64 %88, 1024
  %166 = sub nsw i64 %165, %124
  %167 = lshr i64 %166, 11
  %168 = trunc i64 %167 to i32
  br label %169

169:                                              ; preds = %59, %47
  %170 = phi i64 [ 32, %59 ], [ 56, %47 ]
  %171 = phi i32 [ %168, %59 ], [ %52, %47 ]
  %172 = getelementptr inbounds i32, ptr %16, i64 %170
  store i32 %171, ptr %172, align 4, !tbaa !16
  %173 = getelementptr inbounds i32, ptr %16, i64 1
  %174 = getelementptr inbounds i32, ptr %17, i64 1
  %175 = getelementptr inbounds i16, ptr %18, i64 1
  %176 = add nsw i32 %15, -1
  %177 = icmp ugt i32 %15, 1
  br i1 %177, label %14, label %11, !llvm.loop !17

178:                                              ; preds = %11, %321
  %179 = phi i64 [ 0, %11 ], [ %326, %321 ]
  %180 = phi ptr [ %6, %11 ], [ %325, %321 ]
  %181 = getelementptr inbounds ptr, ptr %3, i64 %179
  %182 = load ptr, ptr %181, align 8, !tbaa !19
  %183 = getelementptr inbounds i8, ptr %182, i64 %13
  %184 = getelementptr inbounds i32, ptr %180, i64 1
  %185 = load i32, ptr %184, align 4, !tbaa !16
  %186 = getelementptr inbounds i32, ptr %180, i64 2
  %187 = load i32, ptr %186, align 4, !tbaa !16
  %188 = or i32 %187, %185
  %189 = getelementptr inbounds i32, ptr %180, i64 3
  %190 = load i32, ptr %189, align 4, !tbaa !16
  %191 = or i32 %188, %190
  %192 = getelementptr inbounds i32, ptr %180, i64 4
  %193 = load i32, ptr %192, align 4, !tbaa !16
  %194 = or i32 %191, %193
  %195 = getelementptr inbounds i32, ptr %180, i64 5
  %196 = load i32, ptr %195, align 4, !tbaa !16
  %197 = or i32 %194, %196
  %198 = getelementptr inbounds i32, ptr %180, i64 6
  %199 = load i32, ptr %198, align 4, !tbaa !16
  %200 = or i32 %197, %199
  %201 = getelementptr inbounds i32, ptr %180, i64 7
  %202 = load i32, ptr %201, align 4, !tbaa !16
  %203 = or i32 %200, %202
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %219

205:                                              ; preds = %178
  %206 = load i32, ptr %180, align 4, !tbaa !16
  %207 = add i32 %206, 16
  %208 = lshr i32 %207, 5
  %209 = and i32 %208, 1023
  %210 = zext nneg i32 %209 to i64
  %211 = getelementptr inbounds i8, ptr %12, i64 %210
  %212 = load i8, ptr %211, align 1, !tbaa !20
  store i8 %212, ptr %183, align 1, !tbaa !20
  %213 = getelementptr inbounds i8, ptr %183, i64 1
  store i8 %212, ptr %213, align 1, !tbaa !20
  %214 = getelementptr inbounds i8, ptr %183, i64 2
  store i8 %212, ptr %214, align 1, !tbaa !20
  %215 = getelementptr inbounds i8, ptr %183, i64 3
  store i8 %212, ptr %215, align 1, !tbaa !20
  %216 = getelementptr inbounds i8, ptr %183, i64 4
  store i8 %212, ptr %216, align 1, !tbaa !20
  %217 = getelementptr inbounds i8, ptr %183, i64 5
  store i8 %212, ptr %217, align 1, !tbaa !20
  %218 = getelementptr inbounds i8, ptr %183, i64 6
  store i8 %212, ptr %218, align 1, !tbaa !20
  br label %321

219:                                              ; preds = %178
  %220 = zext i32 %187 to i64
  %221 = zext i32 %199 to i64
  %222 = add nuw nsw i64 %221, %220
  %223 = mul nuw nsw i64 %222, 4433
  %224 = mul nsw i64 %221, -15137
  %225 = add nsw i64 %223, %224
  %226 = mul nuw nsw i64 %220, 6270
  %227 = add nuw nsw i64 %223, %226
  %228 = load i32, ptr %180, align 4, !tbaa !16
  %229 = sext i32 %228 to i64
  %230 = sext i32 %193 to i64
  %231 = add nsw i64 %229, %230
  %232 = shl nsw i64 %231, 13
  %233 = sub nsw i64 %229, %230
  %234 = shl nsw i64 %233, 13
  %235 = add nsw i64 %232, %227
  %236 = sub nsw i64 %232, %227
  %237 = add nsw i64 %234, %225
  %238 = sub nsw i64 %234, %225
  %239 = zext i32 %202 to i64
  %240 = zext i32 %196 to i64
  %241 = zext i32 %190 to i64
  %242 = zext i32 %185 to i64
  %243 = add nuw nsw i64 %239, %242
  %244 = add nuw nsw i64 %240, %241
  %245 = add nuw nsw i64 %239, %241
  %246 = add nuw nsw i64 %240, %242
  %247 = add nuw nsw i64 %245, %246
  %248 = mul nuw nsw i64 %247, 9633
  %249 = mul nuw nsw i64 %239, 2446
  %250 = mul nuw nsw i64 %240, 16819
  %251 = mul nuw nsw i64 %241, 25172
  %252 = mul nuw nsw i64 %242, 12299
  %253 = mul nsw i64 %243, -7373
  %254 = mul nsw i64 %244, -20995
  %255 = mul nsw i64 %245, -16069
  %256 = mul nsw i64 %246, -3196
  %257 = add nsw i64 %248, %255
  %258 = add nsw i64 %248, %256
  %259 = add nsw i64 %253, %249
  %260 = add nsw i64 %259, %257
  %261 = add nsw i64 %254, %250
  %262 = add nsw i64 %261, %258
  %263 = add nsw i64 %254, %251
  %264 = add nsw i64 %263, %257
  %265 = add nsw i64 %253, %252
  %266 = add nsw i64 %265, %258
  %267 = add nsw i64 %266, 131072
  %268 = add i64 %267, %235
  %269 = lshr i64 %268, 18
  %270 = and i64 %269, 1023
  %271 = getelementptr inbounds i8, ptr %12, i64 %270
  %272 = load i8, ptr %271, align 1, !tbaa !20
  store i8 %272, ptr %183, align 1, !tbaa !20
  %273 = sub nsw i64 %235, %266
  %274 = add i64 %273, 131072
  %275 = lshr i64 %274, 18
  %276 = and i64 %275, 1023
  %277 = getelementptr inbounds i8, ptr %12, i64 %276
  %278 = load i8, ptr %277, align 1, !tbaa !20
  %279 = getelementptr inbounds i8, ptr %183, i64 7
  store i8 %278, ptr %279, align 1, !tbaa !20
  %280 = add nsw i64 %264, 131072
  %281 = add i64 %280, %237
  %282 = lshr i64 %281, 18
  %283 = and i64 %282, 1023
  %284 = getelementptr inbounds i8, ptr %12, i64 %283
  %285 = load i8, ptr %284, align 1, !tbaa !20
  %286 = getelementptr inbounds i8, ptr %183, i64 1
  store i8 %285, ptr %286, align 1, !tbaa !20
  %287 = sub nsw i64 %237, %264
  %288 = add i64 %287, 131072
  %289 = lshr i64 %288, 18
  %290 = and i64 %289, 1023
  %291 = getelementptr inbounds i8, ptr %12, i64 %290
  %292 = load i8, ptr %291, align 1, !tbaa !20
  %293 = getelementptr inbounds i8, ptr %183, i64 6
  store i8 %292, ptr %293, align 1, !tbaa !20
  %294 = add nsw i64 %262, 131072
  %295 = add i64 %294, %238
  %296 = lshr i64 %295, 18
  %297 = and i64 %296, 1023
  %298 = getelementptr inbounds i8, ptr %12, i64 %297
  %299 = load i8, ptr %298, align 1, !tbaa !20
  %300 = getelementptr inbounds i8, ptr %183, i64 2
  store i8 %299, ptr %300, align 1, !tbaa !20
  %301 = sub nsw i64 %238, %262
  %302 = add i64 %301, 131072
  %303 = lshr i64 %302, 18
  %304 = and i64 %303, 1023
  %305 = getelementptr inbounds i8, ptr %12, i64 %304
  %306 = load i8, ptr %305, align 1, !tbaa !20
  %307 = getelementptr inbounds i8, ptr %183, i64 5
  store i8 %306, ptr %307, align 1, !tbaa !20
  %308 = add nsw i64 %260, 131072
  %309 = add i64 %308, %236
  %310 = lshr i64 %309, 18
  %311 = and i64 %310, 1023
  %312 = getelementptr inbounds i8, ptr %12, i64 %311
  %313 = load i8, ptr %312, align 1, !tbaa !20
  %314 = getelementptr inbounds i8, ptr %183, i64 3
  store i8 %313, ptr %314, align 1, !tbaa !20
  %315 = sub nsw i64 %236, %260
  %316 = add i64 %315, 131072
  %317 = lshr i64 %316, 18
  %318 = and i64 %317, 1023
  %319 = getelementptr inbounds i8, ptr %12, i64 %318
  %320 = load i8, ptr %319, align 1, !tbaa !20
  br label %321

321:                                              ; preds = %219, %205
  %322 = phi i64 [ 4, %219 ], [ 7, %205 ]
  %323 = phi i8 [ %320, %219 ], [ %212, %205 ]
  %324 = getelementptr inbounds i8, ptr %183, i64 %322
  store i8 %323, ptr %324, align 1, !tbaa !20
  %325 = getelementptr inbounds i32, ptr %180, i64 8
  %326 = add nuw nsw i64 %179, 1
  %327 = icmp eq i64 %326, 8
  br i1 %327, label %328, label %178, !llvm.loop !21

328:                                              ; preds = %321
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 408}
!6 = !{!"jpeg_decompress_struct", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !7, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !11, i64 72, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !10, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !10, i64 144, !10, i64 148, !7, i64 152, !10, i64 160, !10, i64 164, !10, i64 168, !10, i64 172, !10, i64 176, !7, i64 184, !8, i64 192, !8, i64 224, !8, i64 256, !10, i64 288, !7, i64 296, !10, i64 304, !10, i64 308, !8, i64 312, !8, i64 328, !8, i64 344, !10, i64 360, !10, i64 364, !8, i64 368, !12, i64 370, !12, i64 372, !10, i64 376, !8, i64 380, !10, i64 384, !10, i64 388, !10, i64 392, !10, i64 396, !10, i64 400, !7, i64 408, !10, i64 416, !8, i64 424, !10, i64 456, !10, i64 460, !10, i64 464, !8, i64 468, !10, i64 508, !10, i64 512, !10, i64 516, !10, i64 520, !10, i64 524, !7, i64 528, !7, i64 536, !7, i64 544, !7, i64 552, !7, i64 560, !7, i64 568, !7, i64 576, !7, i64 584, !7, i64 592, !7, i64 600, !7, i64 608}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"double", !8, i64 0}
!12 = !{!"short", !8, i64 0}
!13 = !{!14, !7, i64 88}
!14 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !7, i64 80, !7, i64 88}
!15 = !{!12, !12, i64 0}
!16 = !{!10, !10, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = !{!7, !7, i64 0}
!20 = !{!8, !8, i64 0}
!21 = distinct !{!21, !18}
