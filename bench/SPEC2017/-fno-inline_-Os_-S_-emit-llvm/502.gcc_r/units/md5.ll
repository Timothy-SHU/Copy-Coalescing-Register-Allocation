; ModuleID = 'md5.c'
source_filename = "md5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.md5_ctx = type { i32, i32, i32, i32, [2 x i32], i32, [128 x i8] }

@fillbuf = internal unnamed_addr constant <{ i8, [63 x i8] }> <{ i8 -128, [63 x i8] zeroinitializer }>, align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @md5_init_ctx(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr %0, align 4, !tbaa !5
  %2 = getelementptr inbounds %struct.md5_ctx, ptr %0, i64 0, i32 4
  %3 = getelementptr inbounds %struct.md5_ctx, ptr %0, i64 0, i32 4, i64 1
  store i32 0, ptr %3, align 4, !tbaa !5
  store i32 0, ptr %2, align 4, !tbaa !5
  %4 = getelementptr inbounds %struct.md5_ctx, ptr %0, i64 0, i32 5
  store i32 0, ptr %4, align 4, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef ptr @md5_read_ctx(ptr nocapture noundef readonly %0, ptr noundef returned writeonly %1) local_unnamed_addr #1 {
  %3 = load i32, ptr %0, align 4, !tbaa !11
  store i32 %3, ptr %1, align 4, !tbaa !5
  %4 = getelementptr inbounds %struct.md5_ctx, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !12
  %6 = getelementptr inbounds i32, ptr %1, i64 1
  store i32 %5, ptr %6, align 4, !tbaa !5
  %7 = getelementptr inbounds %struct.md5_ctx, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !13
  %9 = getelementptr inbounds i32, ptr %1, i64 2
  store i32 %8, ptr %9, align 4, !tbaa !5
  %10 = getelementptr inbounds %struct.md5_ctx, ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !14
  %12 = getelementptr inbounds i32, ptr %1, i64 3
  store i32 %11, ptr %12, align 4, !tbaa !5
  ret ptr %1
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @md5_finish_ctx(ptr noundef %0, ptr noundef returned %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.md5_ctx, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 4, !tbaa !9
  %5 = getelementptr inbounds %struct.md5_ctx, ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 4, !tbaa !5
  %7 = add i32 %6, %4
  store i32 %7, ptr %5, align 4, !tbaa !5
  %8 = icmp ult i32 %7, %4
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.md5_ctx, ptr %0, i64 0, i32 4, i64 1
  %11 = load i32, ptr %10, align 4, !tbaa !5
  %12 = add i32 %11, 1
  store i32 %12, ptr %10, align 4, !tbaa !5
  br label %13

13:                                               ; preds = %9, %2
  %14 = icmp ult i32 %4, 56
  %15 = select i1 %14, i32 56, i32 120
  %16 = sub i32 %15, %4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.md5_ctx, ptr %0, i64 0, i32 6
  %19 = zext i32 %4 to i64
  %20 = getelementptr inbounds %struct.md5_ctx, ptr %0, i64 0, i32 6, i64 %19
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %20, ptr nonnull align 16 @fillbuf, i64 %17, i1 false)
  %21 = load i32, ptr %5, align 4, !tbaa !5
  %22 = shl i32 %21, 3
  %23 = add nuw nsw i64 %17, %19
  %24 = getelementptr inbounds %struct.md5_ctx, ptr %0, i64 0, i32 6, i64 %23
  store i32 %22, ptr %24, align 1, !tbaa !5
  %25 = getelementptr inbounds %struct.md5_ctx, ptr %0, i64 0, i32 4, i64 1
  %26 = load i32, ptr %25, align 4, !tbaa !5
  %27 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %21, i32 3)
  %28 = add nuw nsw i64 %23, 4
  %29 = getelementptr inbounds %struct.md5_ctx, ptr %0, i64 0, i32 6, i64 %28
  store i32 %27, ptr %29, align 1, !tbaa !5
  %30 = add nuw nsw i64 %23, 8
  tail call void @md5_process_block(ptr noundef nonnull %18, i64 noundef %30, ptr noundef nonnull %0) #10
  %31 = tail call ptr @md5_read_ctx(ptr noundef nonnull %0, ptr noundef %1) #10
  ret ptr %1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @md5_process_block(ptr noundef readonly %0, i64 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #2 {
  %4 = lshr i64 %1, 2
  %5 = getelementptr inbounds i32, ptr %0, i64 %4
  %6 = load i32, ptr %2, align 4, !tbaa !11
  %7 = getelementptr inbounds %struct.md5_ctx, ptr %2, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !12
  %9 = getelementptr inbounds %struct.md5_ctx, ptr %2, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !13
  %11 = getelementptr inbounds %struct.md5_ctx, ptr %2, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !14
  %13 = getelementptr inbounds %struct.md5_ctx, ptr %2, i64 0, i32 4
  %14 = load i32, ptr %13, align 4, !tbaa !5
  %15 = trunc i64 %1 to i32
  %16 = add i32 %14, %15
  store i32 %16, ptr %13, align 4, !tbaa !5
  %17 = zext i32 %16 to i64
  %18 = icmp ult i64 %17, %1
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.md5_ctx, ptr %2, i64 0, i32 4, i64 1
  %21 = load i32, ptr %20, align 4, !tbaa !5
  %22 = add i32 %21, 1
  store i32 %22, ptr %20, align 4, !tbaa !5
  br label %23

23:                                               ; preds = %19, %3
  %24 = and i64 %1, -4
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %564

26:                                               ; preds = %23, %26
  %27 = phi ptr [ %189, %26 ], [ %0, %23 ]
  %28 = phi i32 [ %558, %26 ], [ %6, %23 ]
  %29 = phi i32 [ %560, %26 ], [ %8, %23 ]
  %30 = phi i32 [ %561, %26 ], [ %10, %23 ]
  %31 = phi i32 [ %562, %26 ], [ %12, %23 ]
  %32 = xor i32 %30, %31
  %33 = and i32 %29, %32
  %34 = xor i32 %33, %31
  %35 = load i32, ptr %27, align 4, !tbaa !5
  %36 = add i32 %28, -680876936
  %37 = add i32 %36, %34
  %38 = add i32 %37, %35
  %39 = getelementptr inbounds i32, ptr %27, i64 1
  %40 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 7)
  %41 = add i32 %40, %29
  %42 = xor i32 %29, %30
  %43 = and i32 %41, %42
  %44 = xor i32 %43, %30
  %45 = load i32, ptr %39, align 4, !tbaa !5
  %46 = add i32 %31, -389564586
  %47 = add i32 %46, %45
  %48 = add i32 %47, %44
  %49 = getelementptr inbounds i32, ptr %27, i64 2
  %50 = tail call i32 @llvm.fshl.i32(i32 %48, i32 %48, i32 12)
  %51 = add i32 %50, %41
  %52 = xor i32 %41, %29
  %53 = and i32 %51, %52
  %54 = xor i32 %53, %29
  %55 = load i32, ptr %49, align 4, !tbaa !5
  %56 = add i32 %30, 606105819
  %57 = add i32 %56, %55
  %58 = add i32 %57, %54
  %59 = getelementptr inbounds i32, ptr %27, i64 3
  %60 = tail call i32 @llvm.fshl.i32(i32 %58, i32 %58, i32 17)
  %61 = add i32 %60, %51
  %62 = xor i32 %51, %41
  %63 = and i32 %61, %62
  %64 = xor i32 %63, %41
  %65 = load i32, ptr %59, align 4, !tbaa !5
  %66 = add i32 %29, -1044525330
  %67 = add i32 %66, %65
  %68 = add i32 %67, %64
  %69 = getelementptr inbounds i32, ptr %27, i64 4
  %70 = tail call i32 @llvm.fshl.i32(i32 %68, i32 %68, i32 22)
  %71 = add i32 %70, %61
  %72 = xor i32 %61, %51
  %73 = and i32 %71, %72
  %74 = xor i32 %73, %51
  %75 = load i32, ptr %69, align 4, !tbaa !5
  %76 = add i32 %75, -176418897
  %77 = add i32 %76, %41
  %78 = add i32 %77, %74
  %79 = getelementptr inbounds i32, ptr %27, i64 5
  %80 = tail call i32 @llvm.fshl.i32(i32 %78, i32 %78, i32 7)
  %81 = add i32 %80, %71
  %82 = xor i32 %71, %61
  %83 = and i32 %81, %82
  %84 = xor i32 %83, %61
  %85 = load i32, ptr %79, align 4, !tbaa !5
  %86 = add i32 %85, 1200080426
  %87 = add i32 %86, %51
  %88 = add i32 %87, %84
  %89 = getelementptr inbounds i32, ptr %27, i64 6
  %90 = tail call i32 @llvm.fshl.i32(i32 %88, i32 %88, i32 12)
  %91 = add i32 %90, %81
  %92 = xor i32 %81, %71
  %93 = and i32 %91, %92
  %94 = xor i32 %93, %71
  %95 = load i32, ptr %89, align 4, !tbaa !5
  %96 = add i32 %95, -1473231341
  %97 = add i32 %96, %61
  %98 = add i32 %97, %94
  %99 = getelementptr inbounds i32, ptr %27, i64 7
  %100 = tail call i32 @llvm.fshl.i32(i32 %98, i32 %98, i32 17)
  %101 = add i32 %100, %91
  %102 = xor i32 %91, %81
  %103 = and i32 %101, %102
  %104 = xor i32 %103, %81
  %105 = load i32, ptr %99, align 4, !tbaa !5
  %106 = add i32 %105, -45705983
  %107 = add i32 %106, %71
  %108 = add i32 %107, %104
  %109 = getelementptr inbounds i32, ptr %27, i64 8
  %110 = tail call i32 @llvm.fshl.i32(i32 %108, i32 %108, i32 22)
  %111 = add i32 %110, %101
  %112 = xor i32 %101, %91
  %113 = and i32 %111, %112
  %114 = xor i32 %113, %91
  %115 = load i32, ptr %109, align 4, !tbaa !5
  %116 = add i32 %115, 1770035416
  %117 = add i32 %116, %81
  %118 = add i32 %117, %114
  %119 = getelementptr inbounds i32, ptr %27, i64 9
  %120 = tail call i32 @llvm.fshl.i32(i32 %118, i32 %118, i32 7)
  %121 = add i32 %120, %111
  %122 = xor i32 %111, %101
  %123 = and i32 %121, %122
  %124 = xor i32 %123, %101
  %125 = load i32, ptr %119, align 4, !tbaa !5
  %126 = add i32 %125, -1958414417
  %127 = add i32 %126, %91
  %128 = add i32 %127, %124
  %129 = getelementptr inbounds i32, ptr %27, i64 10
  %130 = tail call i32 @llvm.fshl.i32(i32 %128, i32 %128, i32 12)
  %131 = add i32 %130, %121
  %132 = xor i32 %121, %111
  %133 = and i32 %131, %132
  %134 = xor i32 %133, %111
  %135 = load i32, ptr %129, align 4, !tbaa !5
  %136 = add i32 %135, -42063
  %137 = add i32 %136, %101
  %138 = add i32 %137, %134
  %139 = getelementptr inbounds i32, ptr %27, i64 11
  %140 = tail call i32 @llvm.fshl.i32(i32 %138, i32 %138, i32 17)
  %141 = add i32 %140, %131
  %142 = xor i32 %131, %121
  %143 = and i32 %141, %142
  %144 = xor i32 %143, %121
  %145 = load i32, ptr %139, align 4, !tbaa !5
  %146 = add i32 %145, -1990404162
  %147 = add i32 %146, %111
  %148 = add i32 %147, %144
  %149 = getelementptr inbounds i32, ptr %27, i64 12
  %150 = tail call i32 @llvm.fshl.i32(i32 %148, i32 %148, i32 22)
  %151 = add i32 %150, %141
  %152 = xor i32 %141, %131
  %153 = and i32 %151, %152
  %154 = xor i32 %153, %131
  %155 = load i32, ptr %149, align 4, !tbaa !5
  %156 = add i32 %155, 1804603682
  %157 = add i32 %156, %121
  %158 = add i32 %157, %154
  %159 = getelementptr inbounds i32, ptr %27, i64 13
  %160 = tail call i32 @llvm.fshl.i32(i32 %158, i32 %158, i32 7)
  %161 = add i32 %160, %151
  %162 = xor i32 %151, %141
  %163 = and i32 %161, %162
  %164 = xor i32 %163, %141
  %165 = load i32, ptr %159, align 4, !tbaa !5
  %166 = add i32 %165, -40341101
  %167 = add i32 %166, %131
  %168 = add i32 %167, %164
  %169 = getelementptr inbounds i32, ptr %27, i64 14
  %170 = tail call i32 @llvm.fshl.i32(i32 %168, i32 %168, i32 12)
  %171 = add i32 %170, %161
  %172 = xor i32 %161, %151
  %173 = and i32 %171, %172
  %174 = xor i32 %173, %151
  %175 = load i32, ptr %169, align 4, !tbaa !5
  %176 = add i32 %175, -1502002290
  %177 = add i32 %176, %141
  %178 = add i32 %177, %174
  %179 = getelementptr inbounds i32, ptr %27, i64 15
  %180 = tail call i32 @llvm.fshl.i32(i32 %178, i32 %178, i32 17)
  %181 = add i32 %180, %171
  %182 = xor i32 %171, %161
  %183 = and i32 %181, %182
  %184 = xor i32 %183, %161
  %185 = load i32, ptr %179, align 4, !tbaa !5
  %186 = add i32 %185, 1236535329
  %187 = add i32 %186, %151
  %188 = add i32 %187, %184
  %189 = getelementptr inbounds i32, ptr %27, i64 16
  %190 = tail call i32 @llvm.fshl.i32(i32 %188, i32 %188, i32 22)
  %191 = add i32 %190, %181
  %192 = xor i32 %191, %181
  %193 = and i32 %192, %171
  %194 = xor i32 %193, %181
  %195 = add i32 %45, -165796510
  %196 = add i32 %195, %161
  %197 = add i32 %196, %194
  %198 = tail call i32 @llvm.fshl.i32(i32 %197, i32 %197, i32 5)
  %199 = add i32 %198, %191
  %200 = xor i32 %199, %191
  %201 = and i32 %200, %181
  %202 = xor i32 %201, %191
  %203 = add i32 %95, -1069501632
  %204 = add i32 %203, %171
  %205 = add i32 %204, %202
  %206 = tail call i32 @llvm.fshl.i32(i32 %205, i32 %205, i32 9)
  %207 = add i32 %206, %199
  %208 = xor i32 %207, %199
  %209 = and i32 %208, %191
  %210 = xor i32 %209, %199
  %211 = add i32 %145, 643717713
  %212 = add i32 %211, %181
  %213 = add i32 %212, %210
  %214 = tail call i32 @llvm.fshl.i32(i32 %213, i32 %213, i32 14)
  %215 = add i32 %214, %207
  %216 = xor i32 %215, %207
  %217 = and i32 %216, %199
  %218 = xor i32 %217, %207
  %219 = add i32 %35, -373897302
  %220 = add i32 %219, %191
  %221 = add i32 %220, %218
  %222 = tail call i32 @llvm.fshl.i32(i32 %221, i32 %221, i32 20)
  %223 = add i32 %222, %215
  %224 = xor i32 %223, %215
  %225 = and i32 %224, %207
  %226 = xor i32 %225, %215
  %227 = add i32 %85, -701558691
  %228 = add i32 %227, %199
  %229 = add i32 %228, %226
  %230 = tail call i32 @llvm.fshl.i32(i32 %229, i32 %229, i32 5)
  %231 = add i32 %230, %223
  %232 = xor i32 %231, %223
  %233 = and i32 %232, %215
  %234 = xor i32 %233, %223
  %235 = add i32 %135, 38016083
  %236 = add i32 %235, %207
  %237 = add i32 %236, %234
  %238 = tail call i32 @llvm.fshl.i32(i32 %237, i32 %237, i32 9)
  %239 = add i32 %238, %231
  %240 = xor i32 %239, %231
  %241 = and i32 %240, %223
  %242 = xor i32 %241, %231
  %243 = add i32 %185, -660478335
  %244 = add i32 %243, %215
  %245 = add i32 %244, %242
  %246 = tail call i32 @llvm.fshl.i32(i32 %245, i32 %245, i32 14)
  %247 = add i32 %246, %239
  %248 = xor i32 %247, %239
  %249 = and i32 %248, %231
  %250 = xor i32 %249, %239
  %251 = add i32 %75, -405537848
  %252 = add i32 %251, %223
  %253 = add i32 %252, %250
  %254 = tail call i32 @llvm.fshl.i32(i32 %253, i32 %253, i32 20)
  %255 = add i32 %254, %247
  %256 = xor i32 %255, %247
  %257 = and i32 %256, %239
  %258 = xor i32 %257, %247
  %259 = add i32 %125, 568446438
  %260 = add i32 %259, %231
  %261 = add i32 %260, %258
  %262 = tail call i32 @llvm.fshl.i32(i32 %261, i32 %261, i32 5)
  %263 = add i32 %262, %255
  %264 = xor i32 %263, %255
  %265 = and i32 %264, %247
  %266 = xor i32 %265, %255
  %267 = add i32 %175, -1019803690
  %268 = add i32 %267, %239
  %269 = add i32 %268, %266
  %270 = tail call i32 @llvm.fshl.i32(i32 %269, i32 %269, i32 9)
  %271 = add i32 %270, %263
  %272 = xor i32 %271, %263
  %273 = and i32 %272, %255
  %274 = xor i32 %273, %263
  %275 = add i32 %65, -187363961
  %276 = add i32 %275, %247
  %277 = add i32 %276, %274
  %278 = tail call i32 @llvm.fshl.i32(i32 %277, i32 %277, i32 14)
  %279 = add i32 %278, %271
  %280 = xor i32 %279, %271
  %281 = and i32 %280, %263
  %282 = xor i32 %281, %271
  %283 = add i32 %115, 1163531501
  %284 = add i32 %283, %255
  %285 = add i32 %284, %282
  %286 = tail call i32 @llvm.fshl.i32(i32 %285, i32 %285, i32 20)
  %287 = add i32 %286, %279
  %288 = xor i32 %287, %279
  %289 = and i32 %288, %271
  %290 = xor i32 %289, %279
  %291 = add i32 %165, -1444681467
  %292 = add i32 %291, %263
  %293 = add i32 %292, %290
  %294 = tail call i32 @llvm.fshl.i32(i32 %293, i32 %293, i32 5)
  %295 = add i32 %294, %287
  %296 = xor i32 %295, %287
  %297 = and i32 %296, %279
  %298 = xor i32 %297, %287
  %299 = add i32 %55, -51403784
  %300 = add i32 %299, %271
  %301 = add i32 %300, %298
  %302 = tail call i32 @llvm.fshl.i32(i32 %301, i32 %301, i32 9)
  %303 = add i32 %302, %295
  %304 = xor i32 %303, %295
  %305 = and i32 %304, %287
  %306 = xor i32 %305, %295
  %307 = add i32 %105, 1735328473
  %308 = add i32 %307, %279
  %309 = add i32 %308, %306
  %310 = tail call i32 @llvm.fshl.i32(i32 %309, i32 %309, i32 14)
  %311 = add i32 %310, %303
  %312 = xor i32 %311, %303
  %313 = and i32 %312, %295
  %314 = xor i32 %313, %303
  %315 = add i32 %155, -1926607734
  %316 = add i32 %315, %287
  %317 = add i32 %316, %314
  %318 = tail call i32 @llvm.fshl.i32(i32 %317, i32 %317, i32 20)
  %319 = add i32 %318, %311
  %320 = xor i32 %312, %319
  %321 = add i32 %85, -378558
  %322 = add i32 %321, %295
  %323 = add i32 %322, %320
  %324 = tail call i32 @llvm.fshl.i32(i32 %323, i32 %323, i32 4)
  %325 = add i32 %324, %319
  %326 = xor i32 %319, %311
  %327 = xor i32 %326, %325
  %328 = add i32 %115, -2022574463
  %329 = add i32 %328, %303
  %330 = add i32 %329, %327
  %331 = tail call i32 @llvm.fshl.i32(i32 %330, i32 %330, i32 11)
  %332 = add i32 %331, %325
  %333 = xor i32 %325, %319
  %334 = xor i32 %333, %332
  %335 = add i32 %145, 1839030562
  %336 = add i32 %335, %311
  %337 = add i32 %336, %334
  %338 = tail call i32 @llvm.fshl.i32(i32 %337, i32 %337, i32 16)
  %339 = add i32 %338, %332
  %340 = xor i32 %332, %325
  %341 = xor i32 %340, %339
  %342 = add i32 %175, -35309556
  %343 = add i32 %342, %319
  %344 = add i32 %343, %341
  %345 = tail call i32 @llvm.fshl.i32(i32 %344, i32 %344, i32 23)
  %346 = add i32 %345, %339
  %347 = xor i32 %339, %332
  %348 = xor i32 %347, %346
  %349 = add i32 %45, -1530992060
  %350 = add i32 %349, %325
  %351 = add i32 %350, %348
  %352 = tail call i32 @llvm.fshl.i32(i32 %351, i32 %351, i32 4)
  %353 = add i32 %352, %346
  %354 = xor i32 %346, %339
  %355 = xor i32 %354, %353
  %356 = add i32 %75, 1272893353
  %357 = add i32 %356, %332
  %358 = add i32 %357, %355
  %359 = tail call i32 @llvm.fshl.i32(i32 %358, i32 %358, i32 11)
  %360 = add i32 %359, %353
  %361 = xor i32 %353, %346
  %362 = xor i32 %361, %360
  %363 = add i32 %105, -155497632
  %364 = add i32 %363, %339
  %365 = add i32 %364, %362
  %366 = tail call i32 @llvm.fshl.i32(i32 %365, i32 %365, i32 16)
  %367 = add i32 %366, %360
  %368 = xor i32 %360, %353
  %369 = xor i32 %368, %367
  %370 = add i32 %135, -1094730640
  %371 = add i32 %370, %346
  %372 = add i32 %371, %369
  %373 = tail call i32 @llvm.fshl.i32(i32 %372, i32 %372, i32 23)
  %374 = add i32 %373, %367
  %375 = xor i32 %367, %360
  %376 = xor i32 %375, %374
  %377 = add i32 %165, 681279174
  %378 = add i32 %377, %353
  %379 = add i32 %378, %376
  %380 = tail call i32 @llvm.fshl.i32(i32 %379, i32 %379, i32 4)
  %381 = add i32 %380, %374
  %382 = xor i32 %374, %367
  %383 = xor i32 %382, %381
  %384 = add i32 %35, -358537222
  %385 = add i32 %384, %360
  %386 = add i32 %385, %383
  %387 = tail call i32 @llvm.fshl.i32(i32 %386, i32 %386, i32 11)
  %388 = add i32 %387, %381
  %389 = xor i32 %381, %374
  %390 = xor i32 %389, %388
  %391 = add i32 %65, -722521979
  %392 = add i32 %391, %367
  %393 = add i32 %392, %390
  %394 = tail call i32 @llvm.fshl.i32(i32 %393, i32 %393, i32 16)
  %395 = add i32 %394, %388
  %396 = xor i32 %388, %381
  %397 = xor i32 %396, %395
  %398 = add i32 %95, 76029189
  %399 = add i32 %398, %374
  %400 = add i32 %399, %397
  %401 = tail call i32 @llvm.fshl.i32(i32 %400, i32 %400, i32 23)
  %402 = add i32 %401, %395
  %403 = xor i32 %395, %388
  %404 = xor i32 %403, %402
  %405 = add i32 %125, -640364487
  %406 = add i32 %405, %381
  %407 = add i32 %406, %404
  %408 = tail call i32 @llvm.fshl.i32(i32 %407, i32 %407, i32 4)
  %409 = add i32 %408, %402
  %410 = xor i32 %402, %395
  %411 = xor i32 %410, %409
  %412 = add i32 %155, -421815835
  %413 = add i32 %412, %388
  %414 = add i32 %413, %411
  %415 = tail call i32 @llvm.fshl.i32(i32 %414, i32 %414, i32 11)
  %416 = add i32 %415, %409
  %417 = xor i32 %409, %402
  %418 = xor i32 %417, %416
  %419 = add i32 %185, 530742520
  %420 = add i32 %419, %395
  %421 = add i32 %420, %418
  %422 = tail call i32 @llvm.fshl.i32(i32 %421, i32 %421, i32 16)
  %423 = add i32 %422, %416
  %424 = xor i32 %416, %409
  %425 = xor i32 %424, %423
  %426 = add i32 %55, -995338651
  %427 = add i32 %426, %402
  %428 = add i32 %427, %425
  %429 = tail call i32 @llvm.fshl.i32(i32 %428, i32 %428, i32 23)
  %430 = add i32 %429, %423
  %431 = xor i32 %416, -1
  %432 = or i32 %430, %431
  %433 = xor i32 %432, %423
  %434 = add i32 %35, -198630844
  %435 = add i32 %434, %409
  %436 = add i32 %435, %433
  %437 = tail call i32 @llvm.fshl.i32(i32 %436, i32 %436, i32 6)
  %438 = add i32 %437, %430
  %439 = xor i32 %423, -1
  %440 = or i32 %438, %439
  %441 = xor i32 %440, %430
  %442 = add i32 %105, 1126891415
  %443 = add i32 %442, %416
  %444 = add i32 %443, %441
  %445 = tail call i32 @llvm.fshl.i32(i32 %444, i32 %444, i32 10)
  %446 = add i32 %445, %438
  %447 = xor i32 %430, -1
  %448 = or i32 %446, %447
  %449 = xor i32 %448, %438
  %450 = add i32 %175, -1416354905
  %451 = add i32 %450, %423
  %452 = add i32 %451, %449
  %453 = tail call i32 @llvm.fshl.i32(i32 %452, i32 %452, i32 15)
  %454 = add i32 %453, %446
  %455 = xor i32 %438, -1
  %456 = or i32 %454, %455
  %457 = xor i32 %456, %446
  %458 = add i32 %85, -57434055
  %459 = add i32 %458, %430
  %460 = add i32 %459, %457
  %461 = tail call i32 @llvm.fshl.i32(i32 %460, i32 %460, i32 21)
  %462 = add i32 %461, %454
  %463 = xor i32 %446, -1
  %464 = or i32 %462, %463
  %465 = xor i32 %464, %454
  %466 = add i32 %155, 1700485571
  %467 = add i32 %466, %438
  %468 = add i32 %467, %465
  %469 = tail call i32 @llvm.fshl.i32(i32 %468, i32 %468, i32 6)
  %470 = add i32 %469, %462
  %471 = xor i32 %454, -1
  %472 = or i32 %470, %471
  %473 = xor i32 %472, %462
  %474 = add i32 %65, -1894986606
  %475 = add i32 %474, %446
  %476 = add i32 %475, %473
  %477 = tail call i32 @llvm.fshl.i32(i32 %476, i32 %476, i32 10)
  %478 = add i32 %477, %470
  %479 = xor i32 %462, -1
  %480 = or i32 %478, %479
  %481 = xor i32 %480, %470
  %482 = add i32 %135, -1051523
  %483 = add i32 %482, %454
  %484 = add i32 %483, %481
  %485 = tail call i32 @llvm.fshl.i32(i32 %484, i32 %484, i32 15)
  %486 = add i32 %485, %478
  %487 = xor i32 %470, -1
  %488 = or i32 %486, %487
  %489 = xor i32 %488, %478
  %490 = add i32 %45, -2054922799
  %491 = add i32 %490, %462
  %492 = add i32 %491, %489
  %493 = tail call i32 @llvm.fshl.i32(i32 %492, i32 %492, i32 21)
  %494 = add i32 %493, %486
  %495 = xor i32 %478, -1
  %496 = or i32 %494, %495
  %497 = xor i32 %496, %486
  %498 = add i32 %115, 1873313359
  %499 = add i32 %498, %470
  %500 = add i32 %499, %497
  %501 = tail call i32 @llvm.fshl.i32(i32 %500, i32 %500, i32 6)
  %502 = add i32 %501, %494
  %503 = xor i32 %486, -1
  %504 = or i32 %502, %503
  %505 = xor i32 %504, %494
  %506 = add i32 %185, -30611744
  %507 = add i32 %506, %478
  %508 = add i32 %507, %505
  %509 = tail call i32 @llvm.fshl.i32(i32 %508, i32 %508, i32 10)
  %510 = add i32 %509, %502
  %511 = xor i32 %494, -1
  %512 = or i32 %510, %511
  %513 = xor i32 %512, %502
  %514 = add i32 %95, -1560198380
  %515 = add i32 %514, %486
  %516 = add i32 %515, %513
  %517 = tail call i32 @llvm.fshl.i32(i32 %516, i32 %516, i32 15)
  %518 = add i32 %517, %510
  %519 = xor i32 %502, -1
  %520 = or i32 %518, %519
  %521 = xor i32 %520, %510
  %522 = add i32 %165, 1309151649
  %523 = add i32 %522, %494
  %524 = add i32 %523, %521
  %525 = tail call i32 @llvm.fshl.i32(i32 %524, i32 %524, i32 21)
  %526 = add i32 %525, %518
  %527 = xor i32 %510, -1
  %528 = or i32 %526, %527
  %529 = xor i32 %528, %518
  %530 = add i32 %75, -145523070
  %531 = add i32 %530, %502
  %532 = add i32 %531, %529
  %533 = tail call i32 @llvm.fshl.i32(i32 %532, i32 %532, i32 6)
  %534 = add i32 %533, %526
  %535 = xor i32 %518, -1
  %536 = or i32 %534, %535
  %537 = xor i32 %536, %526
  %538 = add i32 %145, -1120210379
  %539 = add i32 %538, %510
  %540 = add i32 %539, %537
  %541 = tail call i32 @llvm.fshl.i32(i32 %540, i32 %540, i32 10)
  %542 = add i32 %541, %534
  %543 = xor i32 %526, -1
  %544 = or i32 %542, %543
  %545 = xor i32 %544, %534
  %546 = add i32 %55, 718787259
  %547 = add i32 %546, %518
  %548 = add i32 %547, %545
  %549 = tail call i32 @llvm.fshl.i32(i32 %548, i32 %548, i32 15)
  %550 = add i32 %549, %542
  %551 = xor i32 %534, -1
  %552 = or i32 %550, %551
  %553 = xor i32 %552, %542
  %554 = add i32 %125, -343485551
  %555 = add i32 %554, %526
  %556 = add i32 %555, %553
  %557 = tail call i32 @llvm.fshl.i32(i32 %556, i32 %556, i32 21)
  %558 = add i32 %534, %28
  %559 = add i32 %550, %29
  %560 = add i32 %559, %557
  %561 = add i32 %550, %30
  %562 = add i32 %542, %31
  %563 = icmp ult ptr %189, %5
  br i1 %563, label %26, label %564, !llvm.loop !15

564:                                              ; preds = %26, %23
  %565 = phi i32 [ %12, %23 ], [ %562, %26 ]
  %566 = phi i32 [ %10, %23 ], [ %561, %26 ]
  %567 = phi i32 [ %8, %23 ], [ %560, %26 ]
  %568 = phi i32 [ %6, %23 ], [ %558, %26 ]
  store i32 %568, ptr %2, align 4, !tbaa !11
  store i32 %567, ptr %7, align 4, !tbaa !12
  store i32 %566, ptr %9, align 4, !tbaa !13
  store i32 %565, ptr %11, align 4, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef i32 @md5_stream(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = alloca %struct.md5_ctx, align 4
  %4 = alloca [4168 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 4168, ptr nonnull %4) #11
  call void @md5_init_ctx(ptr noundef nonnull %3) #10
  br label %5

5:                                                ; preds = %14, %2
  %6 = phi i64 [ 0, %2 ], [ %15, %14 ]
  %7 = getelementptr inbounds i8, ptr %4, i64 %6
  %8 = sub nuw nsw i64 4096, %6
  %9 = call i64 @fread(ptr noundef nonnull %7, i64 noundef 1, i64 noundef %8, ptr noundef %0) #10
  %10 = add i64 %9, %6
  %11 = icmp ult i64 %10, 4096
  %12 = icmp ne i64 %9, 0
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %16

14:                                               ; preds = %5, %21
  %15 = phi i64 [ %10, %5 ], [ 0, %21 ]
  br label %5, !llvm.loop !17

16:                                               ; preds = %5
  %17 = icmp eq i64 %9, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  %19 = call i32 @ferror(ptr noundef %0) #10
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %27

21:                                               ; preds = %16
  call void @md5_process_block(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull %3) #10
  br label %14

22:                                               ; preds = %18
  %23 = icmp eq i64 %10, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %22
  call void @md5_process_bytes(ptr noundef nonnull %4, i64 noundef %10, ptr noundef nonnull %3) #10
  br label %25

25:                                               ; preds = %24, %22
  %26 = call ptr @md5_finish_ctx(ptr noundef nonnull %3, ptr noundef %1) #10
  br label %27

27:                                               ; preds = %18, %25
  %28 = phi i32 [ 0, %25 ], [ 1, %18 ]
  call void @llvm.lifetime.end.p0(i64 4168, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %3) #11
  ret i32 %28
}

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize memory(read)
declare noundef i32 @ferror(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @md5_process_bytes(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #8 {
  %4 = getelementptr inbounds %struct.md5_ctx, ptr %2, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !9
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %26, label %7

7:                                                ; preds = %3
  %8 = zext i32 %5 to i64
  %9 = sub nsw i64 128, %8
  %10 = tail call i64 @llvm.umin.i64(i64 %9, i64 %1)
  %11 = getelementptr inbounds %struct.md5_ctx, ptr %2, i64 0, i32 6, i64 %8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %11, ptr align 1 %0, i64 %10, i1 false)
  %12 = load i32, ptr %4, align 4, !tbaa !9
  %13 = trunc i64 %10 to i32
  %14 = add i32 %12, %13
  store i32 %14, ptr %4, align 4, !tbaa !9
  %15 = add i64 %10, %8
  %16 = icmp ugt i64 %15, 64
  br i1 %16, label %17, label %23

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.md5_ctx, ptr %2, i64 0, i32 6
  %19 = and i64 %15, -64
  tail call void @md5_process_block(ptr noundef nonnull %18, i64 noundef %19, ptr noundef nonnull %2) #10
  %20 = getelementptr inbounds %struct.md5_ctx, ptr %2, i64 0, i32 6, i64 %19
  %21 = and i64 %15, 63
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %18, ptr nonnull align 1 %20, i64 %21, i1 false)
  %22 = trunc i64 %21 to i32
  store i32 %22, ptr %4, align 4, !tbaa !9
  br label %23

23:                                               ; preds = %17, %7
  %24 = getelementptr inbounds i8, ptr %0, i64 %10
  %25 = sub i64 %1, %10
  br label %26

26:                                               ; preds = %23, %3
  %27 = phi i64 [ %25, %23 ], [ %1, %3 ]
  %28 = phi ptr [ %24, %23 ], [ %0, %3 ]
  %29 = icmp ugt i64 %27, 64
  br i1 %29, label %30, label %50

30:                                               ; preds = %26
  %31 = ptrtoint ptr %28 to i64
  %32 = and i64 %31, 3
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.md5_ctx, ptr %2, i64 0, i32 6
  br label %36

36:                                               ; preds = %34, %36
  %37 = phi ptr [ %28, %34 ], [ %39, %36 ]
  %38 = phi i64 [ %27, %34 ], [ %40, %36 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %35, ptr noundef nonnull align 1 dereferenceable(64) %37, i64 64, i1 false)
  tail call void @md5_process_block(ptr noundef nonnull %35, i64 noundef 64, ptr noundef nonnull %2) #10
  %39 = getelementptr inbounds i8, ptr %37, i64 64
  %40 = add i64 %38, -64
  %41 = icmp ugt i64 %40, 64
  br i1 %41, label %36, label %44, !llvm.loop !18

42:                                               ; preds = %30
  %43 = and i64 %27, -64
  tail call void @md5_process_block(ptr noundef %28, i64 noundef %43, ptr noundef nonnull %2) #10
  br label %44

44:                                               ; preds = %36, %42
  %45 = phi i64 [ %27, %42 ], [ %40, %36 ]
  %46 = phi ptr [ %28, %42 ], [ %39, %36 ]
  %47 = and i64 %45, -64
  %48 = getelementptr inbounds i8, ptr %46, i64 %47
  %49 = and i64 %45, 63
  br label %50

50:                                               ; preds = %44, %26
  %51 = phi i64 [ %49, %44 ], [ %27, %26 ]
  %52 = phi ptr [ %48, %44 ], [ %28, %26 ]
  %53 = icmp eq i64 %51, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.md5_ctx, ptr %2, i64 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %55, ptr align 1 %52, i64 %51, i1 false)
  %56 = trunc i64 %51 to i32
  store i32 %56, ptr %4, align 4, !tbaa !9
  br label %57

57:                                               ; preds = %54, %50
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @md5_buffer(ptr noundef %0, i64 noundef %1, ptr noundef returned %2) local_unnamed_addr #8 {
  %4 = alloca %struct.md5_ctx, align 4
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %4) #11
  call void @md5_init_ctx(ptr noundef nonnull %4) #10
  call void @md5_process_bytes(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4) #10
  %5 = call ptr @md5_finish_ctx(ptr noundef nonnull %4, ptr noundef %2) #10
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %4) #11
  ret ptr %2
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind optsize memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { optsize }
attributes #11 = { nounwind }

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
!9 = !{!10, !6, i64 24}
!10 = !{!"md5_ctx", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !7, i64 16, !6, i64 24, !7, i64 28}
!11 = !{!10, !6, i64 0}
!12 = !{!10, !6, i64 4}
!13 = !{!10, !6, i64 8}
!14 = !{!10, !6, i64 12}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !16}
