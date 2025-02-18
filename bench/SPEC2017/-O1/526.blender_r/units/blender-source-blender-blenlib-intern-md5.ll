; ModuleID = 'blender/source/blender/blenlib/intern/md5.c'
source_filename = "blender/source/blender/blenlib/intern/md5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.md5_ctx = type { i32, i32, i32, i32 }

@md5_to_hexdigest.hex_map = internal unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 16
@fillbuf = internal unnamed_addr constant <{ i8, [63 x i8] }> <{ i8 -128, [63 x i8] zeroinitializer }>, align 16

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @md5_stream(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.md5_ctx, align 4
  %4 = alloca [4168 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 4168, ptr nonnull %4) #8
  store i32 1732584193, ptr %3, align 4, !tbaa !34
  %5 = getelementptr inbounds %struct.md5_ctx, ptr %3, i64 0, i32 1
  store i32 -271733879, ptr %5, align 4, !tbaa !39
  %6 = getelementptr inbounds %struct.md5_ctx, ptr %3, i64 0, i32 2
  store i32 -1732584194, ptr %6, align 4, !tbaa !40
  %7 = getelementptr inbounds %struct.md5_ctx, ptr %3, i64 0, i32 3
  store i32 271733878, ptr %7, align 4, !tbaa !41
  br label %8

8:                                                ; preds = %32, %2
  %9 = phi i32 [ 0, %2 ], [ %33, %32 ]
  %10 = phi i32 [ 0, %2 ], [ %34, %32 ]
  br label %11

11:                                               ; preds = %11, %8
  %12 = phi i64 [ 0, %8 ], [ %15, %11 ]
  %13 = sub i64 4096, %12
  %14 = call i64 @fread(ptr noundef nonnull %4, i64 noundef 1, i64 noundef %13, ptr noundef %0)
  %15 = add i64 %14, %12
  %16 = icmp ult i64 %15, 4096
  %17 = icmp ne i64 %14, 0
  %18 = and i1 %17, %16
  br i1 %18, label %11, label %19, !llvm.loop !42

19:                                               ; preds = %11
  %20 = icmp eq i64 %14, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  %22 = call i32 @ferror(ptr noundef %0) #8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %21, %19
  %25 = trunc i64 %15 to i32
  %26 = add i32 %9, %25
  %27 = zext i32 %26 to i64
  %28 = icmp ugt i64 %15, %27
  %29 = zext i1 %28 to i32
  %30 = add i32 %10, %29
  br i1 %20, label %32, label %31

31:                                               ; preds = %24
  call fastcc void @md5_process_block(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull %3)
  br label %32

32:                                               ; preds = %24, %21, %31
  %33 = phi i32 [ %26, %31 ], [ %9, %21 ], [ %26, %24 ]
  %34 = phi i32 [ %30, %31 ], [ %10, %21 ], [ %30, %24 ]
  %35 = phi i32 [ 0, %31 ], [ 1, %21 ], [ 3, %24 ]
  switch i32 %35, label %56 [
    i32 0, label %8
    i32 3, label %36
  ], !llvm.loop !45

36:                                               ; preds = %32
  %37 = getelementptr inbounds [4168 x i8], ptr %4, i64 0, i64 %15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %37, ptr noundef nonnull align 16 dereferenceable(64) @fillbuf, i64 64, i1 false)
  %38 = and i64 %15, 63
  %39 = icmp ult i64 %38, 56
  %40 = select i1 %39, i64 56, i64 120
  %41 = sub nsw i64 %40, %38
  %42 = shl i32 %33, 3
  %43 = add i64 %41, %15
  %44 = getelementptr inbounds [4168 x i8], ptr %4, i64 0, i64 %43
  store i32 %42, ptr %44, align 1, !tbaa !46
  %45 = call i32 @llvm.fshl.i32(i32 %34, i32 %33, i32 3)
  %46 = add i64 %43, 4
  %47 = getelementptr inbounds [4168 x i8], ptr %4, i64 0, i64 %46
  store i32 %45, ptr %47, align 1, !tbaa !46
  %48 = add i64 %43, 8
  call fastcc void @md5_process_block(ptr noundef nonnull %4, i64 noundef %48, ptr noundef nonnull %3)
  %49 = load i32, ptr %3, align 4, !tbaa !34
  store i32 %49, ptr %1, align 4, !tbaa !46
  %50 = load i32, ptr %5, align 4, !tbaa !39
  %51 = getelementptr inbounds i32, ptr %1, i64 1
  store i32 %50, ptr %51, align 4, !tbaa !46
  %52 = load i32, ptr %6, align 4, !tbaa !40
  %53 = getelementptr inbounds i32, ptr %1, i64 2
  store i32 %52, ptr %53, align 4, !tbaa !46
  %54 = load i32, ptr %7, align 4, !tbaa !41
  %55 = getelementptr inbounds i32, ptr %1, i64 3
  store i32 %54, ptr %55, align 4, !tbaa !46
  br label %56

56:                                               ; preds = %32, %36
  %57 = phi i32 [ 0, %36 ], [ 1, %32 ]
  call void @llvm.lifetime.end.p0(i64 4168, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  ret i32 %57
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind memory(read)
declare noundef i32 @ferror(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @md5_process_block(ptr noundef readonly %0, i64 noundef %1, ptr nocapture noundef %2) unnamed_addr #4 {
  %4 = lshr i64 %1, 2
  %5 = getelementptr inbounds i32, ptr %0, i64 %4
  %6 = load i32, ptr %2, align 4, !tbaa !34
  %7 = getelementptr inbounds %struct.md5_ctx, ptr %2, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !39
  %9 = getelementptr inbounds %struct.md5_ctx, ptr %2, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !40
  %11 = getelementptr inbounds %struct.md5_ctx, ptr %2, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !41
  %13 = and i64 %1, -4
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %554

15:                                               ; preds = %3, %15
  %16 = phi ptr [ %178, %15 ], [ %0, %3 ]
  %17 = phi i32 [ %548, %15 ], [ %6, %3 ]
  %18 = phi i32 [ %550, %15 ], [ %8, %3 ]
  %19 = phi i32 [ %551, %15 ], [ %10, %3 ]
  %20 = phi i32 [ %552, %15 ], [ %12, %3 ]
  %21 = xor i32 %19, %20
  %22 = and i32 %18, %21
  %23 = xor i32 %22, %20
  %24 = load i32, ptr %16, align 4, !tbaa !46
  %25 = add i32 %17, -680876936
  %26 = add i32 %25, %23
  %27 = add i32 %26, %24
  %28 = getelementptr inbounds i32, ptr %16, i64 1
  %29 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 7)
  %30 = add i32 %29, %18
  %31 = xor i32 %18, %19
  %32 = and i32 %30, %31
  %33 = xor i32 %32, %19
  %34 = load i32, ptr %28, align 4, !tbaa !46
  %35 = add i32 %20, -389564586
  %36 = add i32 %35, %34
  %37 = add i32 %36, %33
  %38 = getelementptr inbounds i32, ptr %16, i64 2
  %39 = tail call i32 @llvm.fshl.i32(i32 %37, i32 %37, i32 12)
  %40 = add i32 %39, %30
  %41 = xor i32 %30, %18
  %42 = and i32 %40, %41
  %43 = xor i32 %42, %18
  %44 = load i32, ptr %38, align 4, !tbaa !46
  %45 = add i32 %19, 606105819
  %46 = add i32 %45, %44
  %47 = add i32 %46, %43
  %48 = getelementptr inbounds i32, ptr %16, i64 3
  %49 = tail call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 17)
  %50 = add i32 %49, %40
  %51 = xor i32 %40, %30
  %52 = and i32 %50, %51
  %53 = xor i32 %52, %30
  %54 = load i32, ptr %48, align 4, !tbaa !46
  %55 = add i32 %18, -1044525330
  %56 = add i32 %55, %54
  %57 = add i32 %56, %53
  %58 = getelementptr inbounds i32, ptr %16, i64 4
  %59 = tail call i32 @llvm.fshl.i32(i32 %57, i32 %57, i32 22)
  %60 = add i32 %59, %50
  %61 = xor i32 %50, %40
  %62 = and i32 %60, %61
  %63 = xor i32 %62, %40
  %64 = load i32, ptr %58, align 4, !tbaa !46
  %65 = add i32 %64, -176418897
  %66 = add i32 %65, %30
  %67 = add i32 %66, %63
  %68 = getelementptr inbounds i32, ptr %16, i64 5
  %69 = tail call i32 @llvm.fshl.i32(i32 %67, i32 %67, i32 7)
  %70 = add i32 %69, %60
  %71 = xor i32 %60, %50
  %72 = and i32 %70, %71
  %73 = xor i32 %72, %50
  %74 = load i32, ptr %68, align 4, !tbaa !46
  %75 = add i32 %74, 1200080426
  %76 = add i32 %75, %40
  %77 = add i32 %76, %73
  %78 = getelementptr inbounds i32, ptr %16, i64 6
  %79 = tail call i32 @llvm.fshl.i32(i32 %77, i32 %77, i32 12)
  %80 = add i32 %79, %70
  %81 = xor i32 %70, %60
  %82 = and i32 %80, %81
  %83 = xor i32 %82, %60
  %84 = load i32, ptr %78, align 4, !tbaa !46
  %85 = add i32 %84, -1473231341
  %86 = add i32 %85, %50
  %87 = add i32 %86, %83
  %88 = getelementptr inbounds i32, ptr %16, i64 7
  %89 = tail call i32 @llvm.fshl.i32(i32 %87, i32 %87, i32 17)
  %90 = add i32 %89, %80
  %91 = xor i32 %80, %70
  %92 = and i32 %90, %91
  %93 = xor i32 %92, %70
  %94 = load i32, ptr %88, align 4, !tbaa !46
  %95 = add i32 %94, -45705983
  %96 = add i32 %95, %60
  %97 = add i32 %96, %93
  %98 = getelementptr inbounds i32, ptr %16, i64 8
  %99 = tail call i32 @llvm.fshl.i32(i32 %97, i32 %97, i32 22)
  %100 = add i32 %99, %90
  %101 = xor i32 %90, %80
  %102 = and i32 %100, %101
  %103 = xor i32 %102, %80
  %104 = load i32, ptr %98, align 4, !tbaa !46
  %105 = add i32 %104, 1770035416
  %106 = add i32 %105, %70
  %107 = add i32 %106, %103
  %108 = getelementptr inbounds i32, ptr %16, i64 9
  %109 = tail call i32 @llvm.fshl.i32(i32 %107, i32 %107, i32 7)
  %110 = add i32 %109, %100
  %111 = xor i32 %100, %90
  %112 = and i32 %110, %111
  %113 = xor i32 %112, %90
  %114 = load i32, ptr %108, align 4, !tbaa !46
  %115 = add i32 %114, -1958414417
  %116 = add i32 %115, %80
  %117 = add i32 %116, %113
  %118 = getelementptr inbounds i32, ptr %16, i64 10
  %119 = tail call i32 @llvm.fshl.i32(i32 %117, i32 %117, i32 12)
  %120 = add i32 %119, %110
  %121 = xor i32 %110, %100
  %122 = and i32 %120, %121
  %123 = xor i32 %122, %100
  %124 = load i32, ptr %118, align 4, !tbaa !46
  %125 = add i32 %124, -42063
  %126 = add i32 %125, %90
  %127 = add i32 %126, %123
  %128 = getelementptr inbounds i32, ptr %16, i64 11
  %129 = tail call i32 @llvm.fshl.i32(i32 %127, i32 %127, i32 17)
  %130 = add i32 %129, %120
  %131 = xor i32 %120, %110
  %132 = and i32 %130, %131
  %133 = xor i32 %132, %110
  %134 = load i32, ptr %128, align 4, !tbaa !46
  %135 = add i32 %134, -1990404162
  %136 = add i32 %135, %100
  %137 = add i32 %136, %133
  %138 = getelementptr inbounds i32, ptr %16, i64 12
  %139 = tail call i32 @llvm.fshl.i32(i32 %137, i32 %137, i32 22)
  %140 = add i32 %139, %130
  %141 = xor i32 %130, %120
  %142 = and i32 %140, %141
  %143 = xor i32 %142, %120
  %144 = load i32, ptr %138, align 4, !tbaa !46
  %145 = add i32 %144, 1804603682
  %146 = add i32 %145, %110
  %147 = add i32 %146, %143
  %148 = getelementptr inbounds i32, ptr %16, i64 13
  %149 = tail call i32 @llvm.fshl.i32(i32 %147, i32 %147, i32 7)
  %150 = add i32 %149, %140
  %151 = xor i32 %140, %130
  %152 = and i32 %150, %151
  %153 = xor i32 %152, %130
  %154 = load i32, ptr %148, align 4, !tbaa !46
  %155 = add i32 %154, -40341101
  %156 = add i32 %155, %120
  %157 = add i32 %156, %153
  %158 = getelementptr inbounds i32, ptr %16, i64 14
  %159 = tail call i32 @llvm.fshl.i32(i32 %157, i32 %157, i32 12)
  %160 = add i32 %159, %150
  %161 = xor i32 %150, %140
  %162 = and i32 %160, %161
  %163 = xor i32 %162, %140
  %164 = load i32, ptr %158, align 4, !tbaa !46
  %165 = add i32 %164, -1502002290
  %166 = add i32 %165, %130
  %167 = add i32 %166, %163
  %168 = getelementptr inbounds i32, ptr %16, i64 15
  %169 = tail call i32 @llvm.fshl.i32(i32 %167, i32 %167, i32 17)
  %170 = add i32 %169, %160
  %171 = xor i32 %160, %150
  %172 = and i32 %170, %171
  %173 = xor i32 %172, %150
  %174 = load i32, ptr %168, align 4, !tbaa !46
  %175 = add i32 %174, 1236535329
  %176 = add i32 %175, %140
  %177 = add i32 %176, %173
  %178 = getelementptr inbounds i32, ptr %16, i64 16
  %179 = tail call i32 @llvm.fshl.i32(i32 %177, i32 %177, i32 22)
  %180 = add i32 %179, %170
  %181 = xor i32 %180, %170
  %182 = and i32 %181, %160
  %183 = xor i32 %182, %170
  %184 = add i32 %34, -165796510
  %185 = add i32 %184, %150
  %186 = add i32 %185, %183
  %187 = tail call i32 @llvm.fshl.i32(i32 %186, i32 %186, i32 5)
  %188 = add i32 %187, %180
  %189 = xor i32 %188, %180
  %190 = and i32 %189, %170
  %191 = xor i32 %190, %180
  %192 = add i32 %84, -1069501632
  %193 = add i32 %192, %160
  %194 = add i32 %193, %191
  %195 = tail call i32 @llvm.fshl.i32(i32 %194, i32 %194, i32 9)
  %196 = add i32 %195, %188
  %197 = xor i32 %196, %188
  %198 = and i32 %197, %180
  %199 = xor i32 %198, %188
  %200 = add i32 %134, 643717713
  %201 = add i32 %200, %170
  %202 = add i32 %201, %199
  %203 = tail call i32 @llvm.fshl.i32(i32 %202, i32 %202, i32 14)
  %204 = add i32 %203, %196
  %205 = xor i32 %204, %196
  %206 = and i32 %205, %188
  %207 = xor i32 %206, %196
  %208 = add i32 %24, -373897302
  %209 = add i32 %208, %180
  %210 = add i32 %209, %207
  %211 = tail call i32 @llvm.fshl.i32(i32 %210, i32 %210, i32 20)
  %212 = add i32 %211, %204
  %213 = xor i32 %212, %204
  %214 = and i32 %213, %196
  %215 = xor i32 %214, %204
  %216 = add i32 %74, -701558691
  %217 = add i32 %216, %188
  %218 = add i32 %217, %215
  %219 = tail call i32 @llvm.fshl.i32(i32 %218, i32 %218, i32 5)
  %220 = add i32 %219, %212
  %221 = xor i32 %220, %212
  %222 = and i32 %221, %204
  %223 = xor i32 %222, %212
  %224 = add i32 %124, 38016083
  %225 = add i32 %224, %196
  %226 = add i32 %225, %223
  %227 = tail call i32 @llvm.fshl.i32(i32 %226, i32 %226, i32 9)
  %228 = add i32 %227, %220
  %229 = xor i32 %228, %220
  %230 = and i32 %229, %212
  %231 = xor i32 %230, %220
  %232 = add i32 %174, -660478335
  %233 = add i32 %232, %204
  %234 = add i32 %233, %231
  %235 = tail call i32 @llvm.fshl.i32(i32 %234, i32 %234, i32 14)
  %236 = add i32 %235, %228
  %237 = xor i32 %236, %228
  %238 = and i32 %237, %220
  %239 = xor i32 %238, %228
  %240 = add i32 %64, -405537848
  %241 = add i32 %240, %212
  %242 = add i32 %241, %239
  %243 = tail call i32 @llvm.fshl.i32(i32 %242, i32 %242, i32 20)
  %244 = add i32 %243, %236
  %245 = xor i32 %244, %236
  %246 = and i32 %245, %228
  %247 = xor i32 %246, %236
  %248 = add i32 %114, 568446438
  %249 = add i32 %248, %220
  %250 = add i32 %249, %247
  %251 = tail call i32 @llvm.fshl.i32(i32 %250, i32 %250, i32 5)
  %252 = add i32 %251, %244
  %253 = xor i32 %252, %244
  %254 = and i32 %253, %236
  %255 = xor i32 %254, %244
  %256 = add i32 %164, -1019803690
  %257 = add i32 %256, %228
  %258 = add i32 %257, %255
  %259 = tail call i32 @llvm.fshl.i32(i32 %258, i32 %258, i32 9)
  %260 = add i32 %259, %252
  %261 = xor i32 %260, %252
  %262 = and i32 %261, %244
  %263 = xor i32 %262, %252
  %264 = add i32 %54, -187363961
  %265 = add i32 %264, %236
  %266 = add i32 %265, %263
  %267 = tail call i32 @llvm.fshl.i32(i32 %266, i32 %266, i32 14)
  %268 = add i32 %267, %260
  %269 = xor i32 %268, %260
  %270 = and i32 %269, %252
  %271 = xor i32 %270, %260
  %272 = add i32 %104, 1163531501
  %273 = add i32 %272, %244
  %274 = add i32 %273, %271
  %275 = tail call i32 @llvm.fshl.i32(i32 %274, i32 %274, i32 20)
  %276 = add i32 %275, %268
  %277 = xor i32 %276, %268
  %278 = and i32 %277, %260
  %279 = xor i32 %278, %268
  %280 = add i32 %154, -1444681467
  %281 = add i32 %280, %252
  %282 = add i32 %281, %279
  %283 = tail call i32 @llvm.fshl.i32(i32 %282, i32 %282, i32 5)
  %284 = add i32 %283, %276
  %285 = xor i32 %284, %276
  %286 = and i32 %285, %268
  %287 = xor i32 %286, %276
  %288 = add i32 %44, -51403784
  %289 = add i32 %288, %260
  %290 = add i32 %289, %287
  %291 = tail call i32 @llvm.fshl.i32(i32 %290, i32 %290, i32 9)
  %292 = add i32 %291, %284
  %293 = xor i32 %292, %284
  %294 = and i32 %293, %276
  %295 = xor i32 %294, %284
  %296 = add i32 %94, 1735328473
  %297 = add i32 %296, %268
  %298 = add i32 %297, %295
  %299 = tail call i32 @llvm.fshl.i32(i32 %298, i32 %298, i32 14)
  %300 = add i32 %299, %292
  %301 = xor i32 %300, %292
  %302 = and i32 %301, %284
  %303 = xor i32 %302, %292
  %304 = add i32 %144, -1926607734
  %305 = add i32 %304, %276
  %306 = add i32 %305, %303
  %307 = tail call i32 @llvm.fshl.i32(i32 %306, i32 %306, i32 20)
  %308 = add i32 %307, %300
  %309 = xor i32 %300, %292
  %310 = xor i32 %309, %308
  %311 = add i32 %74, -378558
  %312 = add i32 %311, %284
  %313 = add i32 %312, %310
  %314 = tail call i32 @llvm.fshl.i32(i32 %313, i32 %313, i32 4)
  %315 = add i32 %314, %308
  %316 = xor i32 %308, %300
  %317 = xor i32 %316, %315
  %318 = add i32 %104, -2022574463
  %319 = add i32 %318, %292
  %320 = add i32 %319, %317
  %321 = tail call i32 @llvm.fshl.i32(i32 %320, i32 %320, i32 11)
  %322 = add i32 %321, %315
  %323 = xor i32 %315, %308
  %324 = xor i32 %323, %322
  %325 = add i32 %134, 1839030562
  %326 = add i32 %325, %300
  %327 = add i32 %326, %324
  %328 = tail call i32 @llvm.fshl.i32(i32 %327, i32 %327, i32 16)
  %329 = add i32 %328, %322
  %330 = xor i32 %322, %315
  %331 = xor i32 %330, %329
  %332 = add i32 %164, -35309556
  %333 = add i32 %332, %308
  %334 = add i32 %333, %331
  %335 = tail call i32 @llvm.fshl.i32(i32 %334, i32 %334, i32 23)
  %336 = add i32 %335, %329
  %337 = xor i32 %329, %322
  %338 = xor i32 %337, %336
  %339 = add i32 %34, -1530992060
  %340 = add i32 %339, %315
  %341 = add i32 %340, %338
  %342 = tail call i32 @llvm.fshl.i32(i32 %341, i32 %341, i32 4)
  %343 = add i32 %342, %336
  %344 = xor i32 %336, %329
  %345 = xor i32 %344, %343
  %346 = add i32 %64, 1272893353
  %347 = add i32 %346, %322
  %348 = add i32 %347, %345
  %349 = tail call i32 @llvm.fshl.i32(i32 %348, i32 %348, i32 11)
  %350 = add i32 %349, %343
  %351 = xor i32 %343, %336
  %352 = xor i32 %351, %350
  %353 = add i32 %94, -155497632
  %354 = add i32 %353, %329
  %355 = add i32 %354, %352
  %356 = tail call i32 @llvm.fshl.i32(i32 %355, i32 %355, i32 16)
  %357 = add i32 %356, %350
  %358 = xor i32 %350, %343
  %359 = xor i32 %358, %357
  %360 = add i32 %124, -1094730640
  %361 = add i32 %360, %336
  %362 = add i32 %361, %359
  %363 = tail call i32 @llvm.fshl.i32(i32 %362, i32 %362, i32 23)
  %364 = add i32 %363, %357
  %365 = xor i32 %357, %350
  %366 = xor i32 %365, %364
  %367 = add i32 %154, 681279174
  %368 = add i32 %367, %343
  %369 = add i32 %368, %366
  %370 = tail call i32 @llvm.fshl.i32(i32 %369, i32 %369, i32 4)
  %371 = add i32 %370, %364
  %372 = xor i32 %364, %357
  %373 = xor i32 %372, %371
  %374 = add i32 %24, -358537222
  %375 = add i32 %374, %350
  %376 = add i32 %375, %373
  %377 = tail call i32 @llvm.fshl.i32(i32 %376, i32 %376, i32 11)
  %378 = add i32 %377, %371
  %379 = xor i32 %371, %364
  %380 = xor i32 %379, %378
  %381 = add i32 %54, -722521979
  %382 = add i32 %381, %357
  %383 = add i32 %382, %380
  %384 = tail call i32 @llvm.fshl.i32(i32 %383, i32 %383, i32 16)
  %385 = add i32 %384, %378
  %386 = xor i32 %378, %371
  %387 = xor i32 %386, %385
  %388 = add i32 %84, 76029189
  %389 = add i32 %388, %364
  %390 = add i32 %389, %387
  %391 = tail call i32 @llvm.fshl.i32(i32 %390, i32 %390, i32 23)
  %392 = add i32 %391, %385
  %393 = xor i32 %385, %378
  %394 = xor i32 %393, %392
  %395 = add i32 %114, -640364487
  %396 = add i32 %395, %371
  %397 = add i32 %396, %394
  %398 = tail call i32 @llvm.fshl.i32(i32 %397, i32 %397, i32 4)
  %399 = add i32 %398, %392
  %400 = xor i32 %392, %385
  %401 = xor i32 %400, %399
  %402 = add i32 %144, -421815835
  %403 = add i32 %402, %378
  %404 = add i32 %403, %401
  %405 = tail call i32 @llvm.fshl.i32(i32 %404, i32 %404, i32 11)
  %406 = add i32 %405, %399
  %407 = xor i32 %399, %392
  %408 = xor i32 %407, %406
  %409 = add i32 %174, 530742520
  %410 = add i32 %409, %385
  %411 = add i32 %410, %408
  %412 = tail call i32 @llvm.fshl.i32(i32 %411, i32 %411, i32 16)
  %413 = add i32 %412, %406
  %414 = xor i32 %406, %399
  %415 = xor i32 %414, %413
  %416 = add i32 %44, -995338651
  %417 = add i32 %416, %392
  %418 = add i32 %417, %415
  %419 = tail call i32 @llvm.fshl.i32(i32 %418, i32 %418, i32 23)
  %420 = add i32 %419, %413
  %421 = xor i32 %406, -1
  %422 = or i32 %420, %421
  %423 = xor i32 %422, %413
  %424 = add i32 %24, -198630844
  %425 = add i32 %424, %399
  %426 = add i32 %425, %423
  %427 = tail call i32 @llvm.fshl.i32(i32 %426, i32 %426, i32 6)
  %428 = add i32 %427, %420
  %429 = xor i32 %413, -1
  %430 = or i32 %428, %429
  %431 = xor i32 %430, %420
  %432 = add i32 %94, 1126891415
  %433 = add i32 %432, %406
  %434 = add i32 %433, %431
  %435 = tail call i32 @llvm.fshl.i32(i32 %434, i32 %434, i32 10)
  %436 = add i32 %435, %428
  %437 = xor i32 %420, -1
  %438 = or i32 %436, %437
  %439 = xor i32 %438, %428
  %440 = add i32 %164, -1416354905
  %441 = add i32 %440, %413
  %442 = add i32 %441, %439
  %443 = tail call i32 @llvm.fshl.i32(i32 %442, i32 %442, i32 15)
  %444 = add i32 %443, %436
  %445 = xor i32 %428, -1
  %446 = or i32 %444, %445
  %447 = xor i32 %446, %436
  %448 = add i32 %74, -57434055
  %449 = add i32 %448, %420
  %450 = add i32 %449, %447
  %451 = tail call i32 @llvm.fshl.i32(i32 %450, i32 %450, i32 21)
  %452 = add i32 %451, %444
  %453 = xor i32 %436, -1
  %454 = or i32 %452, %453
  %455 = xor i32 %454, %444
  %456 = add i32 %144, 1700485571
  %457 = add i32 %456, %428
  %458 = add i32 %457, %455
  %459 = tail call i32 @llvm.fshl.i32(i32 %458, i32 %458, i32 6)
  %460 = add i32 %459, %452
  %461 = xor i32 %444, -1
  %462 = or i32 %460, %461
  %463 = xor i32 %462, %452
  %464 = add i32 %54, -1894986606
  %465 = add i32 %464, %436
  %466 = add i32 %465, %463
  %467 = tail call i32 @llvm.fshl.i32(i32 %466, i32 %466, i32 10)
  %468 = add i32 %467, %460
  %469 = xor i32 %452, -1
  %470 = or i32 %468, %469
  %471 = xor i32 %470, %460
  %472 = add i32 %124, -1051523
  %473 = add i32 %472, %444
  %474 = add i32 %473, %471
  %475 = tail call i32 @llvm.fshl.i32(i32 %474, i32 %474, i32 15)
  %476 = add i32 %475, %468
  %477 = xor i32 %460, -1
  %478 = or i32 %476, %477
  %479 = xor i32 %478, %468
  %480 = add i32 %34, -2054922799
  %481 = add i32 %480, %452
  %482 = add i32 %481, %479
  %483 = tail call i32 @llvm.fshl.i32(i32 %482, i32 %482, i32 21)
  %484 = add i32 %483, %476
  %485 = xor i32 %468, -1
  %486 = or i32 %484, %485
  %487 = xor i32 %486, %476
  %488 = add i32 %104, 1873313359
  %489 = add i32 %488, %460
  %490 = add i32 %489, %487
  %491 = tail call i32 @llvm.fshl.i32(i32 %490, i32 %490, i32 6)
  %492 = add i32 %491, %484
  %493 = xor i32 %476, -1
  %494 = or i32 %492, %493
  %495 = xor i32 %494, %484
  %496 = add i32 %174, -30611744
  %497 = add i32 %496, %468
  %498 = add i32 %497, %495
  %499 = tail call i32 @llvm.fshl.i32(i32 %498, i32 %498, i32 10)
  %500 = add i32 %499, %492
  %501 = xor i32 %484, -1
  %502 = or i32 %500, %501
  %503 = xor i32 %502, %492
  %504 = add i32 %84, -1560198380
  %505 = add i32 %504, %476
  %506 = add i32 %505, %503
  %507 = tail call i32 @llvm.fshl.i32(i32 %506, i32 %506, i32 15)
  %508 = add i32 %507, %500
  %509 = xor i32 %492, -1
  %510 = or i32 %508, %509
  %511 = xor i32 %510, %500
  %512 = add i32 %154, 1309151649
  %513 = add i32 %512, %484
  %514 = add i32 %513, %511
  %515 = tail call i32 @llvm.fshl.i32(i32 %514, i32 %514, i32 21)
  %516 = add i32 %515, %508
  %517 = xor i32 %500, -1
  %518 = or i32 %516, %517
  %519 = xor i32 %518, %508
  %520 = add i32 %64, -145523070
  %521 = add i32 %520, %492
  %522 = add i32 %521, %519
  %523 = tail call i32 @llvm.fshl.i32(i32 %522, i32 %522, i32 6)
  %524 = add i32 %523, %516
  %525 = xor i32 %508, -1
  %526 = or i32 %524, %525
  %527 = xor i32 %526, %516
  %528 = add i32 %134, -1120210379
  %529 = add i32 %528, %500
  %530 = add i32 %529, %527
  %531 = tail call i32 @llvm.fshl.i32(i32 %530, i32 %530, i32 10)
  %532 = add i32 %531, %524
  %533 = xor i32 %516, -1
  %534 = or i32 %532, %533
  %535 = xor i32 %534, %524
  %536 = add i32 %44, 718787259
  %537 = add i32 %536, %508
  %538 = add i32 %537, %535
  %539 = tail call i32 @llvm.fshl.i32(i32 %538, i32 %538, i32 15)
  %540 = add i32 %539, %532
  %541 = xor i32 %524, -1
  %542 = or i32 %540, %541
  %543 = xor i32 %542, %532
  %544 = add i32 %114, -343485551
  %545 = add i32 %544, %516
  %546 = add i32 %545, %543
  %547 = tail call i32 @llvm.fshl.i32(i32 %546, i32 %546, i32 21)
  %548 = add i32 %524, %17
  %549 = add i32 %540, %18
  %550 = add i32 %549, %547
  %551 = add i32 %540, %19
  %552 = add i32 %532, %20
  %553 = icmp ult ptr %178, %5
  br i1 %553, label %15, label %554, !llvm.loop !47

554:                                              ; preds = %15, %3
  %555 = phi i32 [ %12, %3 ], [ %552, %15 ]
  %556 = phi i32 [ %10, %3 ], [ %551, %15 ]
  %557 = phi i32 [ %8, %3 ], [ %550, %15 ]
  %558 = phi i32 [ %6, %3 ], [ %548, %15 ]
  store i32 %558, ptr %2, align 4, !tbaa !34
  store i32 %557, ptr %7, align 4, !tbaa !39
  store i32 %556, ptr %9, align 4, !tbaa !40
  store i32 %555, ptr %11, align 4, !tbaa !41
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @md5_buffer(ptr noundef %0, i64 noundef %1, ptr noundef returned writeonly %2) local_unnamed_addr #4 {
  %4 = alloca %struct.md5_ctx, align 4
  %5 = alloca [136 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #8
  %6 = and i64 %1, -64
  store i32 1732584193, ptr %4, align 4, !tbaa !34
  %7 = getelementptr inbounds %struct.md5_ctx, ptr %4, i64 0, i32 1
  store i32 -271733879, ptr %7, align 4, !tbaa !39
  %8 = getelementptr inbounds %struct.md5_ctx, ptr %4, i64 0, i32 2
  store i32 -1732584194, ptr %8, align 4, !tbaa !40
  %9 = getelementptr inbounds %struct.md5_ctx, ptr %4, i64 0, i32 3
  store i32 271733878, ptr %9, align 4, !tbaa !41
  call fastcc void @md5_process_block(ptr noundef %0, i64 noundef %6, ptr noundef nonnull %4)
  %10 = and i64 %1, 63
  %11 = getelementptr inbounds i8, ptr %0, i64 %6
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %5, ptr align 1 %11, i64 %10, i1 false)
  %12 = getelementptr inbounds [136 x i8], ptr %5, i64 0, i64 %10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %12, ptr noundef nonnull align 16 dereferenceable(64) @fillbuf, i64 64, i1 false)
  %13 = icmp ult i64 %10, 56
  %14 = select i1 %13, i64 56, i64 120
  %15 = trunc i64 %1 to i32
  %16 = shl i32 %15, 3
  %17 = getelementptr inbounds [136 x i8], ptr %5, i64 0, i64 %14
  store i32 %16, ptr %17, align 8, !tbaa !46
  %18 = lshr i64 %1, 29
  %19 = trunc i64 %18 to i32
  %20 = or disjoint i64 %14, 4
  %21 = getelementptr inbounds [136 x i8], ptr %5, i64 0, i64 %20
  store i32 %19, ptr %21, align 4, !tbaa !46
  %22 = add nuw nsw i64 %14, 8
  call fastcc void @md5_process_block(ptr noundef nonnull %5, i64 noundef %22, ptr noundef nonnull %4)
  %23 = load i32, ptr %4, align 4, !tbaa !34
  store i32 %23, ptr %2, align 4, !tbaa !46
  %24 = load i32, ptr %7, align 4, !tbaa !39
  %25 = getelementptr inbounds i32, ptr %2, i64 1
  store i32 %24, ptr %25, align 4, !tbaa !46
  %26 = load i32, ptr %8, align 4, !tbaa !40
  %27 = getelementptr inbounds i32, ptr %2, i64 2
  store i32 %26, ptr %27, align 4, !tbaa !46
  %28 = load i32, ptr %9, align 4, !tbaa !41
  %29 = getelementptr inbounds i32, ptr %2, i64 3
  store i32 %28, ptr %29, align 4, !tbaa !46
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  ret ptr %2
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @md5_to_hexdigest(ptr nocapture noundef readonly %0, ptr noundef returned writeonly %1) local_unnamed_addr #6 {
  br label %3

3:                                                ; preds = %2, %3
  %4 = phi ptr [ %0, %2 ], [ %19, %3 ]
  %5 = phi i16 [ 0, %2 ], [ %20, %3 ]
  %6 = phi ptr [ %1, %2 ], [ %18, %3 ]
  %7 = load i8, ptr %4, align 1, !tbaa !48
  %8 = zext i8 %7 to i32
  %9 = lshr i32 %8, 4
  %10 = zext nneg i32 %9 to i64
  %11 = getelementptr inbounds [17 x i8], ptr @md5_to_hexdigest.hex_map, i64 0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !48
  %13 = getelementptr inbounds i8, ptr %6, i64 1
  store i8 %12, ptr %6, align 1, !tbaa !48
  %14 = and i32 %8, 15
  %15 = zext nneg i32 %14 to i64
  %16 = getelementptr inbounds [17 x i8], ptr @md5_to_hexdigest.hex_map, i64 0, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !48
  %18 = getelementptr inbounds i8, ptr %6, i64 2
  store i8 %17, ptr %13, align 1, !tbaa !48
  %19 = getelementptr inbounds i8, ptr %4, i64 1
  %20 = add nuw nsw i16 %5, 1
  %21 = icmp eq i16 %20, 16
  br i1 %21, label %22, label %3, !llvm.loop !49

22:                                               ; preds = %3
  store i8 0, ptr %18, align 1, !tbaa !48
  ret ptr %1
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

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
!34 = !{!35, !36, i64 0}
!35 = !{!"md5_ctx", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!35, !36, i64 4}
!40 = !{!35, !36, i64 8}
!41 = !{!35, !36, i64 12}
!42 = distinct !{!42, !43, !44}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!"llvm.loop.unroll.disable"}
!45 = distinct !{!45, !44}
!46 = !{!36, !36, i64 0}
!47 = distinct !{!47, !43, !44}
!48 = !{!37, !37, i64 0}
!49 = distinct !{!49, !43, !44}
