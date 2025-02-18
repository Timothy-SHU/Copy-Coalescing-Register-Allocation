; ModuleID = 'liblzma/lz/lz_encoder_mf.c'
source_filename = "liblzma/lz/lz_encoder_mf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_mf_s = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lzma_match = type { i32, i32 }

@lzma_crc32_table = external local_unnamed_addr constant [8 x [256 x i32]], align 16

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lzma_mf_find(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 !prof !34 {
  %4 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = icmp eq ptr %5, @lzma_mf_bt4_find
  br i1 %6, label %7, label %385, !prof !41

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 8
  %9 = load i32, ptr %8, align 4, !tbaa !42
  %10 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !43
  %12 = sub i32 %9, %11
  %13 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 18
  %14 = load i32, ptr %13, align 8, !tbaa !44
  %15 = icmp ugt i32 %14, %12
  br i1 %15, label %16, label %27, !prof !45

16:                                               ; preds = %7
  %17 = icmp ult i32 %12, 4
  br i1 %17, label %22, label %18, !prof !46

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 20
  %20 = load i32, ptr %19, align 8, !tbaa !47
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %27, !prof !48

22:                                               ; preds = %18, %16
  %23 = add i32 %11, 1
  store i32 %23, ptr %10, align 8, !tbaa !43
  %24 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 9
  %25 = load i32, ptr %24, align 8, !tbaa !49
  %26 = add i32 %25, 1
  store i32 %26, ptr %24, align 8, !tbaa !49
  br label %387

27:                                               ; preds = %18, %7
  %28 = phi i32 [ %12, %18 ], [ %14, %7 ]
  %29 = load ptr, ptr %0, align 8, !tbaa !50
  %30 = zext i32 %11 to i64
  %31 = getelementptr inbounds i8, ptr %29, i64 %30
  %32 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 4
  %33 = load i32, ptr %32, align 4, !tbaa !51
  %34 = add i32 %33, %11
  %35 = load i8, ptr %31, align 1, !tbaa !52
  %36 = zext i8 %35 to i64
  %37 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !53
  %39 = getelementptr inbounds i8, ptr %31, i64 1
  %40 = load i8, ptr %39, align 1, !tbaa !52
  %41 = zext i8 %40 to i32
  %42 = xor i32 %38, %41
  %43 = and i32 %42, 1023
  %44 = getelementptr inbounds i8, ptr %31, i64 2
  %45 = load i8, ptr %44, align 1, !tbaa !52
  %46 = zext i8 %45 to i32
  %47 = shl nuw nsw i32 %46, 8
  %48 = xor i32 %47, %42
  %49 = and i32 %48, 65535
  %50 = getelementptr inbounds i8, ptr %31, i64 3
  %51 = load i8, ptr %50, align 1, !tbaa !52
  %52 = zext i8 %51 to i64
  %53 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %52
  %54 = load i32, ptr %53, align 4, !tbaa !53
  %55 = shl i32 %54, 5
  %56 = xor i32 %48, %55
  %57 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 16
  %58 = load i32, ptr %57, align 8, !tbaa !54
  %59 = and i32 %56, %58
  %60 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 12
  %61 = load ptr, ptr %60, align 8, !tbaa !55
  %62 = zext nneg i32 %43 to i64
  %63 = getelementptr inbounds i32, ptr %61, i64 %62
  %64 = load i32, ptr %63, align 4, !tbaa !53
  %65 = sub i32 %34, %64
  %66 = zext nneg i32 %49 to i64
  %67 = getelementptr i32, ptr %61, i64 %66
  %68 = getelementptr i32, ptr %67, i64 1024
  %69 = load i32, ptr %68, align 4, !tbaa !53
  %70 = sub i32 %34, %69
  %71 = add i32 %59, 66560
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, ptr %61, i64 %72
  %74 = load i32, ptr %73, align 4, !tbaa !53
  store i32 %34, ptr %63, align 4, !tbaa !53
  store i32 %34, ptr %68, align 4, !tbaa !53
  store i32 %34, ptr %73, align 4, !tbaa !53
  %75 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 15
  %76 = load i32, ptr %75, align 4, !tbaa !56
  %77 = icmp ult i32 %65, %76
  br i1 %77, label %78, label %88, !prof !57

78:                                               ; preds = %27
  %79 = zext i32 %65 to i64
  %80 = sub nsw i64 0, %79
  %81 = getelementptr inbounds i8, ptr %31, i64 %80
  %82 = load i8, ptr %81, align 1, !tbaa !52
  %83 = load i8, ptr %31, align 1, !tbaa !52
  %84 = icmp eq i8 %82, %83
  br i1 %84, label %85, label %88, !prof !58

85:                                               ; preds = %78
  store i32 2, ptr %2, align 4, !tbaa !59
  %86 = add i32 %65, -1
  %87 = getelementptr inbounds %struct.lzma_match, ptr %2, i64 0, i32 1
  store i32 %86, ptr %87, align 4, !tbaa !61
  br label %88

88:                                               ; preds = %85, %78, %27
  %89 = phi i32 [ 1, %85 ], [ 0, %78 ], [ 0, %27 ]
  %90 = phi i32 [ 2, %85 ], [ 1, %78 ], [ 1, %27 ]
  %91 = icmp ne i32 %69, %64
  %92 = icmp ult i32 %70, %76
  %93 = select i1 %91, i1 %92, i1 false
  br i1 %93, label %94, label %106, !prof !62

94:                                               ; preds = %88
  %95 = zext i32 %70 to i64
  %96 = sub nsw i64 0, %95
  %97 = getelementptr inbounds i8, ptr %31, i64 %96
  %98 = load i8, ptr %97, align 1, !tbaa !52
  %99 = load i8, ptr %31, align 1, !tbaa !52
  %100 = icmp eq i8 %98, %99
  br i1 %100, label %101, label %106, !prof !63

101:                                              ; preds = %94
  %102 = add i32 %70, -1
  %103 = add nuw nsw i32 %89, 1
  %104 = zext nneg i32 %89 to i64
  %105 = getelementptr inbounds %struct.lzma_match, ptr %2, i64 %104, i32 1
  store i32 %102, ptr %105, align 4, !tbaa !61
  br label %106

106:                                              ; preds = %101, %94, %88
  %107 = phi i32 [ %103, %101 ], [ %89, %94 ], [ %89, %88 ]
  %108 = phi i32 [ %70, %101 ], [ %65, %94 ], [ %65, %88 ]
  %109 = phi i32 [ 3, %101 ], [ %90, %94 ], [ %90, %88 ]
  %110 = icmp eq i32 %107, 0
  br i1 %110, label %248, label %111, !prof !64

111:                                              ; preds = %106
  %112 = icmp eq i32 %109, %28
  br i1 %112, label %131, label %113, !prof !65

113:                                              ; preds = %111
  %114 = zext i32 %108 to i64
  %115 = sub nsw i64 0, %114
  br label %116

116:                                              ; preds = %124, %113
  %117 = phi i32 [ %109, %113 ], [ %125, %124 ]
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i8, ptr %31, i64 %118
  %120 = getelementptr inbounds i8, ptr %119, i64 %115
  %121 = load i8, ptr %120, align 1, !tbaa !52
  %122 = load i8, ptr %119, align 1, !tbaa !52
  %123 = icmp eq i8 %121, %122
  br i1 %123, label %124, label %127, !prof !66

124:                                              ; preds = %116
  %125 = add i32 %117, 1
  %126 = icmp eq i32 %125, %28
  br i1 %126, label %131, label %116, !prof !67, !llvm.loop !68

127:                                              ; preds = %116
  %128 = add nsw i32 %107, -1
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %struct.lzma_match, ptr %2, i64 %129
  store i32 %117, ptr %130, align 4, !tbaa !59
  br label %248

131:                                              ; preds = %124, %111
  %132 = phi i32 [ %109, %111 ], [ %28, %124 ]
  %133 = add nsw i32 %107, -1
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds %struct.lzma_match, ptr %2, i64 %134
  store i32 %132, ptr %135, align 4, !tbaa !59
  %136 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 17
  %137 = load i32, ptr %136, align 4, !tbaa !71
  %138 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 13
  %139 = load ptr, ptr %138, align 8, !tbaa !72
  %140 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 14
  %141 = load i32, ptr %140, align 8, !tbaa !73
  %142 = shl i32 %141, 1
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds i32, ptr %139, i64 %143
  %145 = getelementptr inbounds i32, ptr %144, i64 1
  br label %146

146:                                              ; preds = %210, %131
  %147 = phi ptr [ %144, %131 ], [ %211, %210 ]
  %148 = phi i32 [ 0, %131 ], [ %212, %210 ]
  %149 = phi i32 [ 0, %131 ], [ %213, %210 ]
  %150 = phi ptr [ %145, %131 ], [ %214, %210 ]
  %151 = phi i32 [ %137, %131 ], [ %154, %210 ]
  %152 = phi i32 [ %74, %131 ], [ %216, %210 ]
  %153 = sub i32 %34, %152
  %154 = add i32 %151, -1
  %155 = icmp ne i32 %151, 0
  %156 = icmp ult i32 %153, %76
  %157 = select i1 %155, i1 %156, i1 false, !prof !74
  br i1 %157, label %159, label %158, !prof !75

158:                                              ; preds = %146
  store i32 0, ptr %150, align 4, !tbaa !53
  store i32 0, ptr %147, align 4, !tbaa !53
  br label %210

159:                                              ; preds = %146
  %160 = sub i32 %141, %153
  %161 = icmp ugt i32 %153, %141
  %162 = select i1 %161, i32 %76, i32 0, !prof !76
  %163 = add i32 %160, %162
  %164 = shl i32 %163, 1
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds i32, ptr %139, i64 %165
  %167 = zext i32 %153 to i64
  %168 = sub nsw i64 0, %167
  %169 = getelementptr inbounds i8, ptr %31, i64 %168
  %170 = tail call i32 @llvm.umin.i32(i32 %148, i32 %149)
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds i8, ptr %169, i64 %171
  %173 = load i8, ptr %172, align 1, !tbaa !52
  %174 = getelementptr inbounds i8, ptr %31, i64 %171
  %175 = load i8, ptr %174, align 1, !tbaa !52
  %176 = icmp eq i8 %173, %175
  br i1 %176, label %177, label %192, !prof !77

177:                                              ; preds = %159, %181
  %178 = phi i32 [ %179, %181 ], [ %170, %159 ]
  %179 = add i32 %178, 1
  %180 = icmp eq i32 %179, %28
  br i1 %180, label %188, label %181, !prof !78

181:                                              ; preds = %177
  %182 = zext i32 %179 to i64
  %183 = getelementptr inbounds i8, ptr %169, i64 %182
  %184 = load i8, ptr %183, align 1, !tbaa !52
  %185 = getelementptr inbounds i8, ptr %31, i64 %182
  %186 = load i8, ptr %185, align 1, !tbaa !52
  %187 = icmp eq i8 %184, %186
  br i1 %187, label %177, label %192, !prof !79, !llvm.loop !80

188:                                              ; preds = %177
  %189 = load i32, ptr %166, align 4, !tbaa !53
  store i32 %189, ptr %147, align 4, !tbaa !53
  %190 = getelementptr inbounds i32, ptr %166, i64 1
  %191 = load i32, ptr %190, align 4, !tbaa !53
  store i32 %191, ptr %150, align 4, !tbaa !53
  br label %210

192:                                              ; preds = %181, %159
  %193 = phi i32 [ %170, %159 ], [ %179, %181 ]
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds i8, ptr %169, i64 %194
  %196 = load i8, ptr %195, align 1, !tbaa !52
  %197 = getelementptr inbounds i8, ptr %31, i64 %194
  %198 = load i8, ptr %197, align 1, !tbaa !52
  %199 = icmp ult i8 %196, %198
  br i1 %199, label %200, label %202, !prof !81

200:                                              ; preds = %192
  store i32 %152, ptr %147, align 4, !tbaa !53
  %201 = getelementptr inbounds i32, ptr %166, i64 1
  br label %203

202:                                              ; preds = %192
  store i32 %152, ptr %150, align 4, !tbaa !53
  br label %203

203:                                              ; preds = %202, %200
  %204 = phi ptr [ %201, %200 ], [ %147, %202 ]
  %205 = phi i32 [ %148, %200 ], [ %193, %202 ]
  %206 = phi i32 [ %193, %200 ], [ %149, %202 ]
  %207 = phi ptr [ %150, %200 ], [ %166, %202 ]
  %208 = phi ptr [ %201, %200 ], [ %166, %202 ]
  %209 = load i32, ptr %208, align 4, !tbaa !53
  br label %210

210:                                              ; preds = %203, %188, %158
  %211 = phi ptr [ %147, %158 ], [ %147, %188 ], [ %204, %203 ]
  %212 = phi i32 [ %148, %158 ], [ %148, %188 ], [ %205, %203 ]
  %213 = phi i32 [ %149, %158 ], [ %149, %188 ], [ %206, %203 ]
  %214 = phi ptr [ %150, %158 ], [ %150, %188 ], [ %207, %203 ]
  %215 = phi i1 [ false, %158 ], [ false, %188 ], [ true, %203 ]
  %216 = phi i32 [ %152, %158 ], [ %152, %188 ], [ %209, %203 ]
  br i1 %215, label %146, label %217, !prof !82, !llvm.loop !83

217:                                              ; preds = %210
  %218 = load i32, ptr %140, align 8, !tbaa !73
  %219 = add i32 %218, 1
  store i32 %219, ptr %140, align 8, !tbaa !73
  %220 = load i32, ptr %75, align 4, !tbaa !56
  %221 = icmp eq i32 %219, %220
  %222 = select i1 %221, i32 0, i32 %219, !prof !84
  store i32 %222, ptr %140, align 8
  %223 = load i32, ptr %10, align 8, !tbaa !43
  %224 = add i32 %223, 1
  store i32 %224, ptr %10, align 8, !tbaa !43
  %225 = load i32, ptr %32, align 4, !tbaa !51
  %226 = add i32 %225, %224
  %227 = icmp eq i32 %226, -1
  br i1 %227, label %228, label %387, !prof !85

228:                                              ; preds = %217
  %229 = xor i32 %220, -1
  %230 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 21
  %231 = load i32, ptr %230, align 4, !tbaa !86
  %232 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 22
  %233 = load i32, ptr %232, align 8, !tbaa !87
  %234 = add i32 %233, %231
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %245, label %236

236:                                              ; preds = %228
  %237 = zext i32 %234 to i64
  br label %238

238:                                              ; preds = %238, %236
  %239 = phi i64 [ 0, %236 ], [ %243, %238 ]
  %240 = getelementptr inbounds i32, ptr %61, i64 %239
  %241 = load i32, ptr %240, align 4, !tbaa !53
  %242 = tail call i32 @llvm.usub.sat.i32(i32 %241, i32 %229)
  store i32 %242, ptr %240, align 4, !tbaa !53
  %243 = add nuw nsw i64 %239, 1
  %244 = icmp eq i64 %243, %237
  br i1 %244, label %245, label %238, !llvm.loop !88

245:                                              ; preds = %238, %228
  %246 = load i32, ptr %32, align 4, !tbaa !51
  %247 = sub i32 %246, %229
  store i32 %247, ptr %32, align 4, !tbaa !51
  br label %387

248:                                              ; preds = %127, %106
  %249 = phi i32 [ %117, %127 ], [ %109, %106 ]
  %250 = tail call i32 @llvm.umax.i32(i32 %249, i32 3)
  %251 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 17
  %252 = load i32, ptr %251, align 4, !tbaa !71
  %253 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 13
  %254 = load ptr, ptr %253, align 8, !tbaa !72
  %255 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 14
  %256 = load i32, ptr %255, align 8, !tbaa !73
  %257 = zext nneg i32 %107 to i64
  %258 = getelementptr inbounds %struct.lzma_match, ptr %2, i64 %257
  %259 = shl i32 %256, 1
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds i32, ptr %254, i64 %260
  %262 = getelementptr inbounds i32, ptr %261, i64 1
  br label %263

263:                                              ; preds = %339, %248
  %264 = phi ptr [ %258, %248 ], [ %340, %339 ]
  %265 = phi i32 [ %250, %248 ], [ %341, %339 ]
  %266 = phi ptr [ %262, %248 ], [ %342, %339 ]
  %267 = phi ptr [ %261, %248 ], [ %343, %339 ]
  %268 = phi i32 [ 0, %248 ], [ %344, %339 ]
  %269 = phi i32 [ 0, %248 ], [ %345, %339 ]
  %270 = phi i32 [ %252, %248 ], [ %274, %339 ]
  %271 = phi i32 [ %74, %248 ], [ %347, %339 ]
  %272 = phi ptr [ undef, %248 ], [ %348, %339 ]
  %273 = sub i32 %34, %271
  %274 = add i32 %270, -1
  %275 = icmp ne i32 %270, 0
  %276 = icmp ult i32 %273, %76
  %277 = select i1 %275, i1 %276, i1 false, !prof !89
  br i1 %277, label %279, label %278, !prof !90

278:                                              ; preds = %263
  store i32 0, ptr %266, align 4, !tbaa !53
  store i32 0, ptr %267, align 4, !tbaa !53
  br label %339

279:                                              ; preds = %263
  %280 = sub i32 %256, %273
  %281 = icmp ugt i32 %273, %256
  %282 = select i1 %281, i32 %76, i32 0, !prof !91
  %283 = add i32 %280, %282
  %284 = shl i32 %283, 1
  %285 = zext i32 %284 to i64
  %286 = getelementptr inbounds i32, ptr %254, i64 %285
  %287 = zext i32 %273 to i64
  %288 = sub nsw i64 0, %287
  %289 = getelementptr inbounds i8, ptr %31, i64 %288
  %290 = tail call i32 @llvm.umin.i32(i32 %268, i32 %269)
  %291 = zext i32 %290 to i64
  %292 = getelementptr inbounds i8, ptr %289, i64 %291
  %293 = load i8, ptr %292, align 1, !tbaa !52
  %294 = getelementptr inbounds i8, ptr %31, i64 %291
  %295 = load i8, ptr %294, align 1, !tbaa !52
  %296 = icmp eq i8 %293, %295
  br i1 %296, label %297, label %319, !prof !92

297:                                              ; preds = %279, %301
  %298 = phi i32 [ %299, %301 ], [ %290, %279 ]
  %299 = add i32 %298, 1
  %300 = icmp eq i32 %299, %28
  br i1 %300, label %308, label %301, !prof !93

301:                                              ; preds = %297
  %302 = zext i32 %299 to i64
  %303 = getelementptr inbounds i8, ptr %289, i64 %302
  %304 = load i8, ptr %303, align 1, !tbaa !52
  %305 = getelementptr inbounds i8, ptr %31, i64 %302
  %306 = load i8, ptr %305, align 1, !tbaa !52
  %307 = icmp eq i8 %304, %306
  br i1 %307, label %297, label %308, !prof !94, !llvm.loop !95

308:                                              ; preds = %301, %297
  %309 = phi i32 [ %299, %301 ], [ %28, %297 ]
  %310 = icmp ult i32 %265, %309
  br i1 %310, label %311, label %319, !prof !96

311:                                              ; preds = %308
  store i32 %309, ptr %264, align 4, !tbaa !59
  %312 = add i32 %273, -1
  %313 = getelementptr inbounds %struct.lzma_match, ptr %264, i64 0, i32 1
  store i32 %312, ptr %313, align 4, !tbaa !61
  %314 = getelementptr inbounds %struct.lzma_match, ptr %264, i64 1
  br i1 %300, label %315, label %319, !prof !97

315:                                              ; preds = %311
  %316 = load i32, ptr %286, align 4, !tbaa !53
  store i32 %316, ptr %267, align 4, !tbaa !53
  %317 = getelementptr inbounds i32, ptr %286, i64 1
  %318 = load i32, ptr %317, align 4, !tbaa !53
  store i32 %318, ptr %266, align 4, !tbaa !53
  br label %339

319:                                              ; preds = %311, %308, %279
  %320 = phi ptr [ %314, %311 ], [ %264, %279 ], [ %264, %308 ]
  %321 = phi i32 [ %309, %311 ], [ %265, %279 ], [ %265, %308 ]
  %322 = phi i32 [ %309, %311 ], [ %290, %279 ], [ %309, %308 ]
  %323 = zext i32 %322 to i64
  %324 = getelementptr inbounds i8, ptr %289, i64 %323
  %325 = load i8, ptr %324, align 1, !tbaa !52
  %326 = getelementptr inbounds i8, ptr %31, i64 %323
  %327 = load i8, ptr %326, align 1, !tbaa !52
  %328 = icmp ult i8 %325, %327
  br i1 %328, label %329, label %331, !prof !98

329:                                              ; preds = %319
  store i32 %271, ptr %267, align 4, !tbaa !53
  %330 = getelementptr inbounds i32, ptr %286, i64 1
  br label %332

331:                                              ; preds = %319
  store i32 %271, ptr %266, align 4, !tbaa !53
  br label %332

332:                                              ; preds = %331, %329
  %333 = phi ptr [ %266, %329 ], [ %286, %331 ]
  %334 = phi ptr [ %330, %329 ], [ %267, %331 ]
  %335 = phi i32 [ %268, %329 ], [ %322, %331 ]
  %336 = phi i32 [ %322, %329 ], [ %269, %331 ]
  %337 = phi ptr [ %330, %329 ], [ %286, %331 ]
  %338 = load i32, ptr %337, align 4, !tbaa !53
  br label %339

339:                                              ; preds = %332, %315, %278
  %340 = phi ptr [ %264, %278 ], [ %314, %315 ], [ %320, %332 ]
  %341 = phi i32 [ %265, %278 ], [ %309, %315 ], [ %321, %332 ]
  %342 = phi ptr [ %266, %278 ], [ %266, %315 ], [ %333, %332 ]
  %343 = phi ptr [ %267, %278 ], [ %267, %315 ], [ %334, %332 ]
  %344 = phi i32 [ %268, %278 ], [ %268, %315 ], [ %335, %332 ]
  %345 = phi i32 [ %269, %278 ], [ %269, %315 ], [ %336, %332 ]
  %346 = phi i1 [ false, %278 ], [ false, %315 ], [ true, %332 ]
  %347 = phi i32 [ %271, %278 ], [ %271, %315 ], [ %338, %332 ]
  %348 = phi ptr [ %264, %278 ], [ %314, %315 ], [ %272, %332 ]
  br i1 %346, label %263, label %349, !prof !99, !llvm.loop !100

349:                                              ; preds = %339
  %350 = ptrtoint ptr %348 to i64
  %351 = ptrtoint ptr %2 to i64
  %352 = sub i64 %350, %351
  %353 = lshr exact i64 %352, 3
  %354 = trunc i64 %353 to i32
  %355 = load i32, ptr %255, align 8, !tbaa !73
  %356 = add i32 %355, 1
  store i32 %356, ptr %255, align 8, !tbaa !73
  %357 = load i32, ptr %75, align 4, !tbaa !56
  %358 = icmp eq i32 %356, %357
  %359 = select i1 %358, i32 0, i32 %356, !prof !84
  store i32 %359, ptr %255, align 8
  %360 = load i32, ptr %10, align 8, !tbaa !43
  %361 = add i32 %360, 1
  store i32 %361, ptr %10, align 8, !tbaa !43
  %362 = load i32, ptr %32, align 4, !tbaa !51
  %363 = add i32 %362, %361
  %364 = icmp eq i32 %363, -1
  br i1 %364, label %365, label %387, !prof !85

365:                                              ; preds = %349
  %366 = xor i32 %357, -1
  %367 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 21
  %368 = load i32, ptr %367, align 4, !tbaa !86
  %369 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 22
  %370 = load i32, ptr %369, align 8, !tbaa !87
  %371 = add i32 %370, %368
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %382, label %373

373:                                              ; preds = %365
  %374 = zext i32 %371 to i64
  br label %375

375:                                              ; preds = %375, %373
  %376 = phi i64 [ 0, %373 ], [ %380, %375 ]
  %377 = getelementptr inbounds i32, ptr %61, i64 %376
  %378 = load i32, ptr %377, align 4, !tbaa !53
  %379 = tail call i32 @llvm.usub.sat.i32(i32 %378, i32 %366)
  store i32 %379, ptr %377, align 4, !tbaa !53
  %380 = add nuw nsw i64 %376, 1
  %381 = icmp eq i64 %380, %374
  br i1 %381, label %382, label %375, !llvm.loop !88

382:                                              ; preds = %375, %365
  %383 = load i32, ptr %32, align 4, !tbaa !51
  %384 = sub i32 %383, %366
  store i32 %384, ptr %32, align 4, !tbaa !51
  br label %387

385:                                              ; preds = %3
  %386 = tail call i32 %5(ptr noundef %0, ptr noundef %2) #6
  br label %387

387:                                              ; preds = %382, %349, %245, %217, %22, %385
  %388 = phi i32 [ %386, %385 ], [ 0, %22 ], [ %107, %217 ], [ %107, %245 ], [ %354, %349 ], [ %354, %382 ]
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %430, label %390, !prof !101

390:                                              ; preds = %387
  %391 = add i32 %388, -1
  %392 = zext i32 %391 to i64
  %393 = getelementptr inbounds %struct.lzma_match, ptr %2, i64 %392
  %394 = load i32, ptr %393, align 4, !tbaa !59
  %395 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 18
  %396 = load i32, ptr %395, align 8, !tbaa !44
  %397 = icmp eq i32 %394, %396
  br i1 %397, label %398, label %430, !prof !102

398:                                              ; preds = %390
  %399 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 8
  %400 = load i32, ptr %399, align 4, !tbaa !42
  %401 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 5
  %402 = load i32, ptr %401, align 8, !tbaa !43
  %403 = add i32 %400, 1
  %404 = sub i32 %403, %402
  %405 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 19
  %406 = load i32, ptr %405, align 4, !tbaa !103
  %407 = tail call i32 @llvm.umin.i32(i32 %404, i32 %406)
  %408 = load ptr, ptr %0, align 8, !tbaa !50
  %409 = zext i32 %402 to i64
  %410 = getelementptr inbounds i8, ptr %408, i64 %409
  %411 = getelementptr inbounds i8, ptr %410, i64 -1
  %412 = getelementptr inbounds %struct.lzma_match, ptr %2, i64 %392, i32 1
  %413 = load i32, ptr %412, align 4, !tbaa !61
  %414 = zext i32 %413 to i64
  %415 = sub nsw i64 0, %414
  %416 = getelementptr inbounds i8, ptr %411, i64 %415
  %417 = getelementptr inbounds i8, ptr %416, i64 -1
  %418 = icmp ult i32 %394, %407
  br i1 %418, label %419, label %430, !prof !104

419:                                              ; preds = %398, %427
  %420 = phi i32 [ %428, %427 ], [ %394, %398 ]
  %421 = zext i32 %420 to i64
  %422 = getelementptr inbounds i8, ptr %411, i64 %421
  %423 = load i8, ptr %422, align 1, !tbaa !52
  %424 = getelementptr inbounds i8, ptr %417, i64 %421
  %425 = load i8, ptr %424, align 1, !tbaa !52
  %426 = icmp eq i8 %423, %425
  br i1 %426, label %427, label %430, !prof !105

427:                                              ; preds = %419
  %428 = add nuw i32 %420, 1
  %429 = icmp eq i32 %428, %407
  br i1 %429, label %430, label %419, !prof !106, !llvm.loop !107

430:                                              ; preds = %427, %419, %398, %390, %387
  %431 = phi i32 [ %394, %390 ], [ 0, %387 ], [ %394, %398 ], [ %420, %419 ], [ %407, %427 ]
  store i32 %388, ptr %1, align 4, !tbaa !53
  %432 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 6
  %433 = load i32, ptr %432, align 4, !tbaa !108
  %434 = add i32 %433, 1
  store i32 %434, ptr %432, align 4, !tbaa !108
  ret i32 %431
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @lzma_mf_hc3_find(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #1 !prof !109 {
  %3 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 4, !tbaa !42
  %5 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !43
  %7 = sub i32 %4, %6
  %8 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 18
  %9 = load i32, ptr %8, align 8, !tbaa !44
  %10 = icmp ugt i32 %9, %7
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = icmp ult i32 %7, 3
  br i1 %12, label %13, label %18

13:                                               ; preds = %11
  %14 = add i32 %6, 1
  store i32 %14, ptr %5, align 8, !tbaa !43
  %15 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 9
  %16 = load i32, ptr %15, align 8, !tbaa !49
  %17 = add i32 %16, 1
  store i32 %17, ptr %15, align 8, !tbaa !49
  br label %105

18:                                               ; preds = %2, %11
  %19 = phi i32 [ %7, %11 ], [ %9, %2 ]
  %20 = load ptr, ptr %0, align 8, !tbaa !50
  %21 = zext i32 %6 to i64
  %22 = getelementptr inbounds i8, ptr %20, i64 %21
  %23 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 4
  %24 = load i32, ptr %23, align 4, !tbaa !51
  %25 = add i32 %24, %6
  %26 = load i8, ptr %22, align 1, !tbaa !52
  %27 = zext i8 %26 to i64
  %28 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !53
  %30 = getelementptr inbounds i8, ptr %22, i64 1
  %31 = load i8, ptr %30, align 1, !tbaa !52
  %32 = zext i8 %31 to i32
  %33 = xor i32 %29, %32
  %34 = and i32 %33, 1023
  %35 = getelementptr inbounds i8, ptr %22, i64 2
  %36 = load i8, ptr %35, align 1, !tbaa !52
  %37 = zext i8 %36 to i32
  %38 = shl nuw nsw i32 %37, 8
  %39 = xor i32 %38, %33
  %40 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 16
  %41 = load i32, ptr %40, align 8, !tbaa !54
  %42 = and i32 %39, %41
  %43 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 12
  %44 = load ptr, ptr %43, align 8, !tbaa !55
  %45 = zext nneg i32 %34 to i64
  %46 = getelementptr inbounds i32, ptr %44, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !53
  %48 = sub i32 %25, %47
  %49 = add i32 %42, 1024
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, ptr %44, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !53
  store i32 %25, ptr %46, align 4, !tbaa !53
  store i32 %25, ptr %51, align 4, !tbaa !53
  %53 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 15
  %54 = load i32, ptr %53, align 4, !tbaa !56
  %55 = icmp ult i32 %48, %54
  br i1 %55, label %56, label %89

56:                                               ; preds = %18
  %57 = zext i32 %48 to i64
  %58 = sub nsw i64 0, %57
  %59 = getelementptr inbounds i8, ptr %22, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !52
  %61 = load i8, ptr %22, align 1, !tbaa !52
  %62 = icmp eq i8 %60, %61
  br i1 %62, label %63, label %89

63:                                               ; preds = %56
  %64 = icmp eq i32 %19, 2
  br i1 %64, label %79, label %65

65:                                               ; preds = %63, %73
  %66 = phi i32 [ %74, %73 ], [ 2, %63 ]
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i8, ptr %22, i64 %67
  %69 = getelementptr inbounds i8, ptr %68, i64 %58
  %70 = load i8, ptr %69, align 1, !tbaa !52
  %71 = load i8, ptr %68, align 1, !tbaa !52
  %72 = icmp eq i8 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %65
  %74 = add i32 %66, 1
  %75 = icmp eq i32 %74, %19
  br i1 %75, label %79, label %65, !llvm.loop !110

76:                                               ; preds = %65
  store i32 %66, ptr %1, align 4, !tbaa !59
  %77 = add i32 %48, -1
  %78 = getelementptr inbounds %struct.lzma_match, ptr %1, i64 0, i32 1
  store i32 %77, ptr %78, align 4, !tbaa !61
  br label %89

79:                                               ; preds = %73, %63
  %80 = phi i32 [ 2, %63 ], [ %19, %73 ]
  store i32 %80, ptr %1, align 4, !tbaa !59
  %81 = add i32 %48, -1
  %82 = getelementptr inbounds %struct.lzma_match, ptr %1, i64 0, i32 1
  store i32 %81, ptr %82, align 4, !tbaa !61
  %83 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 13
  %84 = load ptr, ptr %83, align 8, !tbaa !72
  %85 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 14
  %86 = load i32, ptr %85, align 8, !tbaa !73
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i32, ptr %84, i64 %87
  store i32 %52, ptr %88, align 4, !tbaa !53
  tail call fastcc void @move_pos(ptr noundef nonnull %0)
  br label %105

89:                                               ; preds = %76, %18, %56
  %90 = phi i64 [ 1, %76 ], [ 0, %56 ], [ 0, %18 ]
  %91 = phi i32 [ %66, %76 ], [ 2, %56 ], [ 2, %18 ]
  %92 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 17
  %93 = load i32, ptr %92, align 4, !tbaa !71
  %94 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 13
  %95 = load ptr, ptr %94, align 8, !tbaa !72
  %96 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 14
  %97 = load i32, ptr %96, align 8, !tbaa !73
  %98 = getelementptr inbounds %struct.lzma_match, ptr %1, i64 %90
  %99 = tail call fastcc ptr @hc_find_func(i32 noundef %19, i32 noundef %25, ptr noundef nonnull %22, i32 noundef %52, i32 noundef %93, ptr noundef %95, i32 noundef %97, i32 noundef %54, ptr noundef %98, i32 noundef %91)
  %100 = ptrtoint ptr %99 to i64
  %101 = ptrtoint ptr %1 to i64
  %102 = sub i64 %100, %101
  %103 = lshr exact i64 %102, 3
  %104 = trunc i64 %103 to i32
  tail call fastcc void @move_pos(ptr noundef nonnull %0)
  br label %105

105:                                              ; preds = %79, %89, %13
  %106 = phi i32 [ 0, %13 ], [ 1, %79 ], [ %104, %89 ]
  ret i32 %106
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @move_pos(ptr nocapture noundef %0) unnamed_addr #2 !prof !111 !PGOFuncName !112 {
  %2 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 14
  %3 = load i32, ptr %2, align 8, !tbaa !73
  %4 = add i32 %3, 1
  store i32 %4, ptr %2, align 8, !tbaa !73
  %5 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 15
  %6 = load i32, ptr %5, align 4, !tbaa !56
  %7 = icmp eq i32 %4, %6
  %8 = select i1 %7, i32 0, i32 %4, !prof !84
  store i32 %8, ptr %2, align 8
  %9 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !43
  %11 = add i32 %10, 1
  store i32 %11, ptr %9, align 8, !tbaa !43
  %12 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 4
  %13 = load i32, ptr %12, align 4, !tbaa !51
  %14 = add i32 %13, %11
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %38, !prof !85

16:                                               ; preds = %1
  %17 = xor i32 %6, -1
  %18 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 21
  %19 = load i32, ptr %18, align 4, !tbaa !86
  %20 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 22
  %21 = load i32, ptr %20, align 8, !tbaa !87
  %22 = add i32 %21, %19
  %23 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 12
  %24 = load ptr, ptr %23, align 8, !tbaa !55
  %25 = icmp eq i32 %22, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %16
  %27 = zext i32 %22 to i64
  br label %28

28:                                               ; preds = %26, %28
  %29 = phi i64 [ 0, %26 ], [ %33, %28 ]
  %30 = getelementptr inbounds i32, ptr %24, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !53
  %32 = tail call i32 @llvm.usub.sat.i32(i32 %31, i32 %17)
  store i32 %32, ptr %30, align 4, !tbaa !53
  %33 = add nuw nsw i64 %29, 1
  %34 = icmp eq i64 %33, %27
  br i1 %34, label %35, label %28, !llvm.loop !88

35:                                               ; preds = %28, %16
  %36 = load i32, ptr %12, align 4, !tbaa !51
  %37 = sub i32 %36, %17
  store i32 %37, ptr %12, align 4, !tbaa !51
  br label %38

38:                                               ; preds = %35, %1
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @hc_find_func(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef writeonly %8, i32 noundef %9) unnamed_addr #3 !prof !109 {
  %11 = zext i32 %6 to i64
  %12 = getelementptr inbounds i32, ptr %5, i64 %11
  store i32 %3, ptr %12, align 4, !tbaa !53
  %13 = add i32 %0, -1
  %14 = zext i32 %13 to i64
  br label %15

15:                                               ; preds = %72, %10
  %16 = phi i32 [ %4, %10 ], [ %22, %72 ]
  %17 = phi ptr [ %8, %10 ], [ %73, %72 ]
  %18 = phi i32 [ %9, %10 ], [ %74, %72 ]
  %19 = phi i32 [ %3, %10 ], [ %75, %72 ]
  %20 = phi ptr [ undef, %10 ], [ %77, %72 ]
  %21 = sub i32 %1, %19
  %22 = add i32 %16, -1
  %23 = icmp ne i32 %16, 0
  %24 = icmp ult i32 %21, %7
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %26, label %72

26:                                               ; preds = %15
  %27 = zext i32 %21 to i64
  %28 = sub nsw i64 0, %27
  %29 = getelementptr inbounds i8, ptr %2, i64 %28
  %30 = sub i32 %6, %21
  %31 = icmp ugt i32 %21, %6
  %32 = select i1 %31, i32 %7, i32 0
  %33 = add i32 %30, %32
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, ptr %5, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !53
  %37 = zext i32 %18 to i64
  %38 = getelementptr inbounds i8, ptr %29, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !52
  %40 = getelementptr inbounds i8, ptr %2, i64 %37
  %41 = load i8, ptr %40, align 1, !tbaa !52
  %42 = icmp eq i8 %39, %41
  br i1 %42, label %43, label %72

43:                                               ; preds = %26
  %44 = load i8, ptr %29, align 1, !tbaa !52
  %45 = load i8, ptr %2, align 1, !tbaa !52
  %46 = icmp eq i8 %44, %45
  br i1 %46, label %47, label %72

47:                                               ; preds = %43, %51
  %48 = phi i64 [ %49, %51 ], [ 0, %43 ]
  %49 = add nuw nsw i64 %48, 1
  %50 = icmp eq i64 %48, %14
  br i1 %50, label %60, label %51

51:                                               ; preds = %47
  %52 = and i64 %49, 4294967295
  %53 = getelementptr inbounds i8, ptr %29, i64 %52
  %54 = load i8, ptr %53, align 1, !tbaa !52
  %55 = getelementptr inbounds i8, ptr %2, i64 %52
  %56 = load i8, ptr %55, align 1, !tbaa !52
  %57 = icmp eq i8 %54, %56
  br i1 %57, label %47, label %58, !llvm.loop !113

58:                                               ; preds = %51
  %59 = trunc i64 %49 to i32
  br label %62

60:                                               ; preds = %47
  %61 = trunc i64 %49 to i32
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ]
  %64 = phi i32 [ %59, %58 ], [ %0, %60 ]
  %65 = icmp ne i32 %63, %0
  %66 = icmp ult i32 %18, %64
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  store i32 %64, ptr %17, align 4, !tbaa !59
  %68 = add i32 %21, -1
  %69 = getelementptr inbounds %struct.lzma_match, ptr %17, i64 0, i32 1
  store i32 %68, ptr %69, align 4, !tbaa !61
  %70 = getelementptr inbounds %struct.lzma_match, ptr %17, i64 1
  %71 = select i1 %65, ptr %20, ptr %70
  br label %72

72:                                               ; preds = %62, %67, %15, %43, %26
  %73 = phi ptr [ %17, %43 ], [ %17, %26 ], [ %17, %15 ], [ %17, %62 ], [ %70, %67 ]
  %74 = phi i32 [ %18, %43 ], [ %18, %26 ], [ %18, %15 ], [ %18, %62 ], [ %64, %67 ]
  %75 = phi i32 [ %36, %43 ], [ %36, %26 ], [ %19, %15 ], [ %36, %62 ], [ %36, %67 ]
  %76 = phi i1 [ true, %43 ], [ true, %26 ], [ false, %15 ], [ true, %62 ], [ %65, %67 ]
  %77 = phi ptr [ %20, %43 ], [ %20, %26 ], [ %17, %15 ], [ %20, %62 ], [ %71, %67 ]
  br i1 %76, label %15, label %78

78:                                               ; preds = %72
  ret ptr %77
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @lzma_mf_hc3_skip(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !109 {
  %3 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 8
  %4 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 5
  %5 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 4
  %6 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 16
  %7 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 12
  %8 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 13
  %9 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 14
  %10 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 9
  br label %11

11:                                               ; preds = %54, %2
  %12 = phi i32 [ %1, %2 ], [ %55, %54 ]
  %13 = load i32, ptr %3, align 4, !tbaa !42
  %14 = load i32, ptr %4, align 8, !tbaa !43
  %15 = sub i32 %13, %14
  %16 = icmp ult i32 %15, 3
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = add i32 %14, 1
  store i32 %18, ptr %4, align 8, !tbaa !43
  %19 = load i32, ptr %10, align 8, !tbaa !49
  %20 = add i32 %19, 1
  store i32 %20, ptr %10, align 8, !tbaa !49
  br label %54

21:                                               ; preds = %11
  %22 = load ptr, ptr %0, align 8, !tbaa !50
  %23 = zext i32 %14 to i64
  %24 = getelementptr inbounds i8, ptr %22, i64 %23
  %25 = load i32, ptr %5, align 4, !tbaa !51
  %26 = add i32 %25, %14
  %27 = load i8, ptr %24, align 1, !tbaa !52
  %28 = zext i8 %27 to i64
  %29 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !53
  %31 = getelementptr inbounds i8, ptr %24, i64 1
  %32 = load i8, ptr %31, align 1, !tbaa !52
  %33 = zext i8 %32 to i32
  %34 = xor i32 %30, %33
  %35 = and i32 %34, 1023
  %36 = getelementptr inbounds i8, ptr %24, i64 2
  %37 = load i8, ptr %36, align 1, !tbaa !52
  %38 = zext i8 %37 to i32
  %39 = shl nuw nsw i32 %38, 8
  %40 = xor i32 %39, %34
  %41 = load i32, ptr %6, align 8, !tbaa !54
  %42 = and i32 %40, %41
  %43 = load ptr, ptr %7, align 8, !tbaa !55
  %44 = add i32 %42, 1024
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, ptr %43, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !53
  %48 = zext nneg i32 %35 to i64
  %49 = getelementptr inbounds i32, ptr %43, i64 %48
  store i32 %26, ptr %49, align 4, !tbaa !53
  store i32 %26, ptr %46, align 4, !tbaa !53
  %50 = load ptr, ptr %8, align 8, !tbaa !72
  %51 = load i32, ptr %9, align 8, !tbaa !73
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, ptr %50, i64 %52
  store i32 %47, ptr %53, align 4, !tbaa !53
  tail call fastcc void @move_pos(ptr noundef nonnull %0)
  br label %54

54:                                               ; preds = %21, %17
  %55 = add i32 %12, -1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %11, !llvm.loop !114

57:                                               ; preds = %54
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @lzma_mf_hc4_find(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #1 !prof !109 {
  %3 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 4, !tbaa !42
  %5 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !43
  %7 = sub i32 %4, %6
  %8 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 18
  %9 = load i32, ptr %8, align 8, !tbaa !44
  %10 = icmp ugt i32 %9, %7
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = icmp ult i32 %7, 4
  br i1 %12, label %13, label %18

13:                                               ; preds = %11
  %14 = add i32 %6, 1
  store i32 %14, ptr %5, align 8, !tbaa !43
  %15 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 9
  %16 = load i32, ptr %15, align 8, !tbaa !49
  %17 = add i32 %16, 1
  store i32 %17, ptr %15, align 8, !tbaa !49
  br label %150

18:                                               ; preds = %2, %11
  %19 = phi i32 [ %7, %11 ], [ %9, %2 ]
  %20 = load ptr, ptr %0, align 8, !tbaa !50
  %21 = zext i32 %6 to i64
  %22 = getelementptr inbounds i8, ptr %20, i64 %21
  %23 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 4
  %24 = load i32, ptr %23, align 4, !tbaa !51
  %25 = add i32 %24, %6
  %26 = load i8, ptr %22, align 1, !tbaa !52
  %27 = zext i8 %26 to i64
  %28 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !53
  %30 = getelementptr inbounds i8, ptr %22, i64 1
  %31 = load i8, ptr %30, align 1, !tbaa !52
  %32 = zext i8 %31 to i32
  %33 = xor i32 %29, %32
  %34 = and i32 %33, 1023
  %35 = getelementptr inbounds i8, ptr %22, i64 2
  %36 = load i8, ptr %35, align 1, !tbaa !52
  %37 = zext i8 %36 to i32
  %38 = shl nuw nsw i32 %37, 8
  %39 = xor i32 %38, %33
  %40 = and i32 %39, 65535
  %41 = getelementptr inbounds i8, ptr %22, i64 3
  %42 = load i8, ptr %41, align 1, !tbaa !52
  %43 = zext i8 %42 to i64
  %44 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !53
  %46 = shl i32 %45, 5
  %47 = xor i32 %39, %46
  %48 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 16
  %49 = load i32, ptr %48, align 8, !tbaa !54
  %50 = and i32 %47, %49
  %51 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 12
  %52 = load ptr, ptr %51, align 8, !tbaa !55
  %53 = zext nneg i32 %34 to i64
  %54 = getelementptr inbounds i32, ptr %52, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !53
  %56 = sub i32 %25, %55
  %57 = zext nneg i32 %40 to i64
  %58 = getelementptr i32, ptr %52, i64 %57
  %59 = getelementptr i32, ptr %58, i64 1024
  %60 = load i32, ptr %59, align 4, !tbaa !53
  %61 = sub i32 %25, %60
  %62 = add i32 %50, 66560
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, ptr %52, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !53
  store i32 %25, ptr %54, align 4, !tbaa !53
  store i32 %25, ptr %59, align 4, !tbaa !53
  store i32 %25, ptr %64, align 4, !tbaa !53
  %66 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 15
  %67 = load i32, ptr %66, align 4, !tbaa !56
  %68 = icmp ult i32 %56, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %18
  %70 = zext i32 %56 to i64
  %71 = sub nsw i64 0, %70
  %72 = getelementptr inbounds i8, ptr %22, i64 %71
  %73 = load i8, ptr %72, align 1, !tbaa !52
  %74 = load i8, ptr %22, align 1, !tbaa !52
  %75 = icmp eq i8 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  store i32 2, ptr %1, align 4, !tbaa !59
  %77 = add i32 %56, -1
  %78 = getelementptr inbounds %struct.lzma_match, ptr %1, i64 0, i32 1
  store i32 %77, ptr %78, align 4, !tbaa !61
  br label %79

79:                                               ; preds = %76, %69, %18
  %80 = phi i32 [ 1, %76 ], [ 0, %69 ], [ 0, %18 ]
  %81 = phi i32 [ 2, %76 ], [ 1, %69 ], [ 1, %18 ]
  %82 = icmp ne i32 %60, %55
  %83 = icmp ult i32 %61, %67
  %84 = select i1 %82, i1 %83, i1 false
  br i1 %84, label %85, label %97

85:                                               ; preds = %79
  %86 = zext i32 %61 to i64
  %87 = sub nsw i64 0, %86
  %88 = getelementptr inbounds i8, ptr %22, i64 %87
  %89 = load i8, ptr %88, align 1, !tbaa !52
  %90 = load i8, ptr %22, align 1, !tbaa !52
  %91 = icmp eq i8 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %85
  %93 = add i32 %61, -1
  %94 = add nuw nsw i32 %80, 1
  %95 = zext nneg i32 %80 to i64
  %96 = getelementptr inbounds %struct.lzma_match, ptr %1, i64 %95, i32 1
  store i32 %93, ptr %96, align 4, !tbaa !61
  br label %97

97:                                               ; preds = %92, %85, %79
  %98 = phi i32 [ %94, %92 ], [ %80, %85 ], [ %80, %79 ]
  %99 = phi i32 [ %61, %92 ], [ %56, %85 ], [ %56, %79 ]
  %100 = phi i32 [ 3, %92 ], [ %81, %85 ], [ %81, %79 ]
  %101 = icmp eq i32 %98, 0
  br i1 %101, label %133, label %102

102:                                              ; preds = %97
  %103 = icmp eq i32 %100, %19
  br i1 %103, label %122, label %104

104:                                              ; preds = %102
  %105 = zext i32 %99 to i64
  %106 = sub nsw i64 0, %105
  br label %107

107:                                              ; preds = %104, %115
  %108 = phi i32 [ %100, %104 ], [ %116, %115 ]
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i8, ptr %22, i64 %109
  %111 = getelementptr inbounds i8, ptr %110, i64 %106
  %112 = load i8, ptr %111, align 1, !tbaa !52
  %113 = load i8, ptr %110, align 1, !tbaa !52
  %114 = icmp eq i8 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %107
  %116 = add i32 %108, 1
  %117 = icmp eq i32 %116, %19
  br i1 %117, label %122, label %107, !llvm.loop !115

118:                                              ; preds = %107
  %119 = add nsw i32 %98, -1
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.lzma_match, ptr %1, i64 %120
  store i32 %108, ptr %121, align 4, !tbaa !59
  br label %133

122:                                              ; preds = %115, %102
  %123 = phi i32 [ %100, %102 ], [ %19, %115 ]
  %124 = add nsw i32 %98, -1
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %struct.lzma_match, ptr %1, i64 %125
  store i32 %123, ptr %126, align 4, !tbaa !59
  %127 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 13
  %128 = load ptr, ptr %127, align 8, !tbaa !72
  %129 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 14
  %130 = load i32, ptr %129, align 8, !tbaa !73
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds i32, ptr %128, i64 %131
  store i32 %65, ptr %132, align 4, !tbaa !53
  tail call fastcc void @move_pos(ptr noundef nonnull %0)
  br label %150

133:                                              ; preds = %118, %97
  %134 = phi i32 [ %108, %118 ], [ %100, %97 ]
  %135 = tail call i32 @llvm.umax.i32(i32 %134, i32 3)
  %136 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 17
  %137 = load i32, ptr %136, align 4, !tbaa !71
  %138 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 13
  %139 = load ptr, ptr %138, align 8, !tbaa !72
  %140 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 14
  %141 = load i32, ptr %140, align 8, !tbaa !73
  %142 = zext nneg i32 %98 to i64
  %143 = getelementptr inbounds %struct.lzma_match, ptr %1, i64 %142
  %144 = tail call fastcc ptr @hc_find_func(i32 noundef %19, i32 noundef %25, ptr noundef nonnull %22, i32 noundef %65, i32 noundef %137, ptr noundef %139, i32 noundef %141, i32 noundef %67, ptr noundef %143, i32 noundef %135)
  %145 = ptrtoint ptr %144 to i64
  %146 = ptrtoint ptr %1 to i64
  %147 = sub i64 %145, %146
  %148 = lshr exact i64 %147, 3
  %149 = trunc i64 %148 to i32
  tail call fastcc void @move_pos(ptr noundef nonnull %0)
  br label %150

150:                                              ; preds = %122, %133, %13
  %151 = phi i32 [ 0, %13 ], [ %98, %122 ], [ %149, %133 ]
  ret i32 %151
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @lzma_mf_hc4_skip(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !109 {
  %3 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 8
  %4 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 5
  %5 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 4
  %6 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 16
  %7 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 12
  %8 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 13
  %9 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 14
  %10 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 9
  br label %11

11:                                               ; preds = %65, %2
  %12 = phi i32 [ %1, %2 ], [ %66, %65 ]
  %13 = load i32, ptr %3, align 4, !tbaa !42
  %14 = load i32, ptr %4, align 8, !tbaa !43
  %15 = sub i32 %13, %14
  %16 = icmp ult i32 %15, 4
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = add i32 %14, 1
  store i32 %18, ptr %4, align 8, !tbaa !43
  %19 = load i32, ptr %10, align 8, !tbaa !49
  %20 = add i32 %19, 1
  store i32 %20, ptr %10, align 8, !tbaa !49
  br label %65

21:                                               ; preds = %11
  %22 = load ptr, ptr %0, align 8, !tbaa !50
  %23 = zext i32 %14 to i64
  %24 = getelementptr inbounds i8, ptr %22, i64 %23
  %25 = load i32, ptr %5, align 4, !tbaa !51
  %26 = add i32 %25, %14
  %27 = load i8, ptr %24, align 1, !tbaa !52
  %28 = zext i8 %27 to i64
  %29 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !53
  %31 = getelementptr inbounds i8, ptr %24, i64 1
  %32 = load i8, ptr %31, align 1, !tbaa !52
  %33 = zext i8 %32 to i32
  %34 = xor i32 %30, %33
  %35 = and i32 %34, 1023
  %36 = getelementptr inbounds i8, ptr %24, i64 2
  %37 = load i8, ptr %36, align 1, !tbaa !52
  %38 = zext i8 %37 to i32
  %39 = shl nuw nsw i32 %38, 8
  %40 = xor i32 %39, %34
  %41 = and i32 %40, 65535
  %42 = getelementptr inbounds i8, ptr %24, i64 3
  %43 = load i8, ptr %42, align 1, !tbaa !52
  %44 = zext i8 %43 to i64
  %45 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !53
  %47 = shl i32 %46, 5
  %48 = xor i32 %40, %47
  %49 = load i32, ptr %6, align 8, !tbaa !54
  %50 = and i32 %48, %49
  %51 = load ptr, ptr %7, align 8, !tbaa !55
  %52 = add i32 %50, 66560
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32, ptr %51, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !53
  %56 = zext nneg i32 %35 to i64
  %57 = getelementptr inbounds i32, ptr %51, i64 %56
  store i32 %26, ptr %57, align 4, !tbaa !53
  %58 = zext nneg i32 %41 to i64
  %59 = getelementptr i32, ptr %51, i64 %58
  %60 = getelementptr i32, ptr %59, i64 1024
  store i32 %26, ptr %60, align 4, !tbaa !53
  store i32 %26, ptr %54, align 4, !tbaa !53
  %61 = load ptr, ptr %8, align 8, !tbaa !72
  %62 = load i32, ptr %9, align 8, !tbaa !73
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, ptr %61, i64 %63
  store i32 %55, ptr %64, align 4, !tbaa !53
  tail call fastcc void @move_pos(ptr noundef nonnull %0)
  br label %65

65:                                               ; preds = %21, %17
  %66 = add i32 %12, -1
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %11, !llvm.loop !116

68:                                               ; preds = %65
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @lzma_mf_bt2_find(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #1 !prof !109 {
  %3 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 4, !tbaa !42
  %5 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !43
  %7 = sub i32 %4, %6
  %8 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 18
  %9 = load i32, ptr %8, align 8, !tbaa !44
  %10 = icmp ugt i32 %9, %7
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = icmp ult i32 %7, 2
  br i1 %12, label %17, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 20
  %15 = load i32, ptr %14, align 8, !tbaa !47
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %22

17:                                               ; preds = %13, %11
  %18 = add i32 %6, 1
  store i32 %18, ptr %5, align 8, !tbaa !43
  %19 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 9
  %20 = load i32, ptr %19, align 8, !tbaa !49
  %21 = add i32 %20, 1
  store i32 %21, ptr %19, align 8, !tbaa !49
  br label %55

22:                                               ; preds = %2, %13
  %23 = phi i32 [ %7, %13 ], [ %9, %2 ]
  %24 = load ptr, ptr %0, align 8, !tbaa !50
  %25 = zext i32 %6 to i64
  %26 = getelementptr inbounds i8, ptr %24, i64 %25
  %27 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 4
  %28 = load i32, ptr %27, align 4, !tbaa !51
  %29 = add i32 %28, %6
  %30 = load i8, ptr %26, align 1, !tbaa !52
  %31 = zext i8 %30 to i64
  %32 = getelementptr inbounds i8, ptr %26, i64 1
  %33 = load i8, ptr %32, align 1, !tbaa !52
  %34 = zext i8 %33 to i64
  %35 = shl nuw nsw i64 %34, 8
  %36 = or disjoint i64 %35, %31
  %37 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 12
  %38 = load ptr, ptr %37, align 8, !tbaa !55
  %39 = getelementptr inbounds i32, ptr %38, i64 %36
  %40 = load i32, ptr %39, align 4, !tbaa !53
  store i32 %29, ptr %39, align 4, !tbaa !53
  %41 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 17
  %42 = load i32, ptr %41, align 4, !tbaa !71
  %43 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 13
  %44 = load ptr, ptr %43, align 8, !tbaa !72
  %45 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 14
  %46 = load i32, ptr %45, align 8, !tbaa !73
  %47 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 15
  %48 = load i32, ptr %47, align 4, !tbaa !56
  %49 = tail call fastcc ptr @bt_find_func(i32 noundef %23, i32 noundef %29, ptr noundef nonnull %26, i32 noundef %40, i32 noundef %42, ptr noundef %44, i32 noundef %46, i32 noundef %48, ptr noundef %1, i32 noundef 1)
  %50 = ptrtoint ptr %49 to i64
  %51 = ptrtoint ptr %1 to i64
  %52 = sub i64 %50, %51
  %53 = lshr exact i64 %52, 3
  %54 = trunc i64 %53 to i32
  tail call fastcc void @move_pos(ptr noundef nonnull %0)
  br label %55

55:                                               ; preds = %22, %17
  %56 = phi i32 [ %54, %22 ], [ 0, %17 ]
  ret i32 %56
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @bt_find_func(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef writeonly %8, i32 noundef %9) unnamed_addr #2 !prof !109 !PGOFuncName !117 {
  %11 = shl i32 %6, 1
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i32, ptr %5, i64 %12
  %14 = getelementptr inbounds i32, ptr %13, i64 1
  br label %15

15:                                               ; preds = %91, %10
  %16 = phi ptr [ %8, %10 ], [ %92, %91 ]
  %17 = phi i32 [ %9, %10 ], [ %93, %91 ]
  %18 = phi ptr [ %14, %10 ], [ %94, %91 ]
  %19 = phi ptr [ %13, %10 ], [ %95, %91 ]
  %20 = phi i32 [ 0, %10 ], [ %96, %91 ]
  %21 = phi i32 [ 0, %10 ], [ %97, %91 ]
  %22 = phi i32 [ %4, %10 ], [ %26, %91 ]
  %23 = phi i32 [ %3, %10 ], [ %99, %91 ]
  %24 = phi ptr [ undef, %10 ], [ %100, %91 ]
  %25 = sub i32 %1, %23
  %26 = add i32 %22, -1
  %27 = icmp ne i32 %22, 0
  %28 = icmp ult i32 %25, %7
  %29 = select i1 %27, i1 %28, i1 false, !prof !89
  br i1 %29, label %31, label %30, !prof !90

30:                                               ; preds = %15
  store i32 0, ptr %18, align 4, !tbaa !53
  store i32 0, ptr %19, align 4, !tbaa !53
  br label %91

31:                                               ; preds = %15
  %32 = sub i32 %6, %25
  %33 = icmp ugt i32 %25, %6
  %34 = select i1 %33, i32 %7, i32 0, !prof !91
  %35 = add i32 %32, %34
  %36 = shl i32 %35, 1
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, ptr %5, i64 %37
  %39 = zext i32 %25 to i64
  %40 = sub nsw i64 0, %39
  %41 = getelementptr inbounds i8, ptr %2, i64 %40
  %42 = tail call i32 @llvm.umin.i32(i32 %20, i32 %21)
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i8, ptr %41, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !52
  %46 = getelementptr inbounds i8, ptr %2, i64 %43
  %47 = load i8, ptr %46, align 1, !tbaa !52
  %48 = icmp eq i8 %45, %47
  br i1 %48, label %49, label %71, !prof !92

49:                                               ; preds = %31, %53
  %50 = phi i32 [ %51, %53 ], [ %42, %31 ]
  %51 = add i32 %50, 1
  %52 = icmp eq i32 %51, %0
  br i1 %52, label %60, label %53, !prof !93

53:                                               ; preds = %49
  %54 = zext i32 %51 to i64
  %55 = getelementptr inbounds i8, ptr %41, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !52
  %57 = getelementptr inbounds i8, ptr %2, i64 %54
  %58 = load i8, ptr %57, align 1, !tbaa !52
  %59 = icmp eq i8 %56, %58
  br i1 %59, label %49, label %60, !prof !94, !llvm.loop !95

60:                                               ; preds = %53, %49
  %61 = phi i32 [ %51, %53 ], [ %0, %49 ]
  %62 = icmp ult i32 %17, %61
  br i1 %62, label %63, label %71, !prof !96

63:                                               ; preds = %60
  store i32 %61, ptr %16, align 4, !tbaa !59
  %64 = add i32 %25, -1
  %65 = getelementptr inbounds %struct.lzma_match, ptr %16, i64 0, i32 1
  store i32 %64, ptr %65, align 4, !tbaa !61
  %66 = getelementptr inbounds %struct.lzma_match, ptr %16, i64 1
  br i1 %52, label %67, label %71, !prof !97

67:                                               ; preds = %63
  %68 = load i32, ptr %38, align 4, !tbaa !53
  store i32 %68, ptr %19, align 4, !tbaa !53
  %69 = getelementptr inbounds i32, ptr %38, i64 1
  %70 = load i32, ptr %69, align 4, !tbaa !53
  store i32 %70, ptr %18, align 4, !tbaa !53
  br label %91

71:                                               ; preds = %60, %63, %31
  %72 = phi ptr [ %66, %63 ], [ %16, %31 ], [ %16, %60 ]
  %73 = phi i32 [ %61, %63 ], [ %17, %31 ], [ %17, %60 ]
  %74 = phi i32 [ %61, %63 ], [ %42, %31 ], [ %61, %60 ]
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i8, ptr %41, i64 %75
  %77 = load i8, ptr %76, align 1, !tbaa !52
  %78 = getelementptr inbounds i8, ptr %2, i64 %75
  %79 = load i8, ptr %78, align 1, !tbaa !52
  %80 = icmp ult i8 %77, %79
  br i1 %80, label %81, label %83, !prof !98

81:                                               ; preds = %71
  store i32 %23, ptr %19, align 4, !tbaa !53
  %82 = getelementptr inbounds i32, ptr %38, i64 1
  br label %84

83:                                               ; preds = %71
  store i32 %23, ptr %18, align 4, !tbaa !53
  br label %84

84:                                               ; preds = %83, %81
  %85 = phi ptr [ %18, %81 ], [ %38, %83 ]
  %86 = phi ptr [ %82, %81 ], [ %19, %83 ]
  %87 = phi i32 [ %20, %81 ], [ %74, %83 ]
  %88 = phi i32 [ %74, %81 ], [ %21, %83 ]
  %89 = phi ptr [ %82, %81 ], [ %38, %83 ]
  %90 = load i32, ptr %89, align 4, !tbaa !53
  br label %91

91:                                               ; preds = %67, %84, %30
  %92 = phi ptr [ %16, %30 ], [ %66, %67 ], [ %72, %84 ]
  %93 = phi i32 [ %17, %30 ], [ %61, %67 ], [ %73, %84 ]
  %94 = phi ptr [ %18, %30 ], [ %18, %67 ], [ %85, %84 ]
  %95 = phi ptr [ %19, %30 ], [ %19, %67 ], [ %86, %84 ]
  %96 = phi i32 [ %20, %30 ], [ %20, %67 ], [ %87, %84 ]
  %97 = phi i32 [ %21, %30 ], [ %21, %67 ], [ %88, %84 ]
  %98 = phi i1 [ false, %30 ], [ false, %67 ], [ true, %84 ]
  %99 = phi i32 [ %23, %30 ], [ %23, %67 ], [ %90, %84 ]
  %100 = phi ptr [ %16, %30 ], [ %66, %67 ], [ %24, %84 ]
  br i1 %98, label %15, label %101, !prof !99, !llvm.loop !100

101:                                              ; preds = %91
  ret ptr %100
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @lzma_mf_bt2_skip(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !109 {
  %3 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 8
  %4 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 5
  %5 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 18
  %6 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 20
  %7 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 12
  %9 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 17
  %10 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 13
  %11 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 14
  %12 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 15
  %13 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 9
  br label %14

14:                                               ; preds = %51, %2
  %15 = phi i32 [ %1, %2 ], [ %52, %51 ]
  %16 = load i32, ptr %3, align 4, !tbaa !42
  %17 = load i32, ptr %4, align 8, !tbaa !43
  %18 = sub i32 %16, %17
  %19 = load i32, ptr %5, align 8, !tbaa !44
  %20 = icmp ugt i32 %19, %18
  br i1 %20, label %21, label %30

21:                                               ; preds = %14
  %22 = icmp ult i32 %18, 2
  br i1 %22, label %26, label %23

23:                                               ; preds = %21
  %24 = load i32, ptr %6, align 8, !tbaa !47
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %30

26:                                               ; preds = %23, %21
  %27 = add i32 %17, 1
  store i32 %27, ptr %4, align 8, !tbaa !43
  %28 = load i32, ptr %13, align 8, !tbaa !49
  %29 = add i32 %28, 1
  store i32 %29, ptr %13, align 8, !tbaa !49
  br label %51

30:                                               ; preds = %14, %23
  %31 = phi i32 [ %18, %23 ], [ %19, %14 ]
  %32 = load ptr, ptr %0, align 8, !tbaa !50
  %33 = zext i32 %17 to i64
  %34 = getelementptr inbounds i8, ptr %32, i64 %33
  %35 = load i32, ptr %7, align 4, !tbaa !51
  %36 = add i32 %35, %17
  %37 = load i8, ptr %34, align 1, !tbaa !52
  %38 = zext i8 %37 to i64
  %39 = getelementptr inbounds i8, ptr %34, i64 1
  %40 = load i8, ptr %39, align 1, !tbaa !52
  %41 = zext i8 %40 to i64
  %42 = shl nuw nsw i64 %41, 8
  %43 = or disjoint i64 %42, %38
  %44 = load ptr, ptr %8, align 8, !tbaa !55
  %45 = getelementptr inbounds i32, ptr %44, i64 %43
  %46 = load i32, ptr %45, align 4, !tbaa !53
  store i32 %36, ptr %45, align 4, !tbaa !53
  %47 = load i32, ptr %9, align 4, !tbaa !71
  %48 = load ptr, ptr %10, align 8, !tbaa !72
  %49 = load i32, ptr %11, align 8, !tbaa !73
  %50 = load i32, ptr %12, align 4, !tbaa !56
  tail call fastcc void @bt_skip_func(i32 noundef %31, i32 noundef %36, ptr noundef nonnull %34, i32 noundef %46, i32 noundef %47, ptr noundef %48, i32 noundef %49, i32 noundef %50)
  tail call fastcc void @move_pos(ptr noundef nonnull %0)
  br label %51

51:                                               ; preds = %30, %26
  %52 = add i32 %15, -1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %14, !llvm.loop !118

54:                                               ; preds = %51
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bt_skip_func(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #2 !prof !111 !PGOFuncName !119 {
  %9 = shl i32 %6, 1
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds i32, ptr %5, i64 %10
  %12 = getelementptr inbounds i32, ptr %11, i64 1
  br label %13

13:                                               ; preds = %77, %8
  %14 = phi ptr [ %11, %8 ], [ %78, %77 ]
  %15 = phi i32 [ 0, %8 ], [ %79, %77 ]
  %16 = phi i32 [ 0, %8 ], [ %80, %77 ]
  %17 = phi ptr [ %12, %8 ], [ %81, %77 ]
  %18 = phi i32 [ %4, %8 ], [ %21, %77 ]
  %19 = phi i32 [ %3, %8 ], [ %83, %77 ]
  %20 = sub i32 %1, %19
  %21 = add i32 %18, -1
  %22 = icmp ne i32 %18, 0
  %23 = icmp ult i32 %20, %7
  %24 = select i1 %22, i1 %23, i1 false, !prof !74
  br i1 %24, label %26, label %25, !prof !75

25:                                               ; preds = %13
  store i32 0, ptr %17, align 4, !tbaa !53
  store i32 0, ptr %14, align 4, !tbaa !53
  br label %77

26:                                               ; preds = %13
  %27 = sub i32 %6, %20
  %28 = icmp ugt i32 %20, %6
  %29 = select i1 %28, i32 %7, i32 0, !prof !76
  %30 = add i32 %27, %29
  %31 = shl i32 %30, 1
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, ptr %5, i64 %32
  %34 = zext i32 %20 to i64
  %35 = sub nsw i64 0, %34
  %36 = getelementptr inbounds i8, ptr %2, i64 %35
  %37 = tail call i32 @llvm.umin.i32(i32 %15, i32 %16)
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i8, ptr %36, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !52
  %41 = getelementptr inbounds i8, ptr %2, i64 %38
  %42 = load i8, ptr %41, align 1, !tbaa !52
  %43 = icmp eq i8 %40, %42
  br i1 %43, label %44, label %59, !prof !77

44:                                               ; preds = %26, %48
  %45 = phi i32 [ %46, %48 ], [ %37, %26 ]
  %46 = add i32 %45, 1
  %47 = icmp eq i32 %46, %0
  br i1 %47, label %55, label %48, !prof !78

48:                                               ; preds = %44
  %49 = zext i32 %46 to i64
  %50 = getelementptr inbounds i8, ptr %36, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !52
  %52 = getelementptr inbounds i8, ptr %2, i64 %49
  %53 = load i8, ptr %52, align 1, !tbaa !52
  %54 = icmp eq i8 %51, %53
  br i1 %54, label %44, label %59, !prof !79, !llvm.loop !80

55:                                               ; preds = %44
  %56 = load i32, ptr %33, align 4, !tbaa !53
  store i32 %56, ptr %14, align 4, !tbaa !53
  %57 = getelementptr inbounds i32, ptr %33, i64 1
  %58 = load i32, ptr %57, align 4, !tbaa !53
  store i32 %58, ptr %17, align 4, !tbaa !53
  br label %77

59:                                               ; preds = %48, %26
  %60 = phi i32 [ %37, %26 ], [ %46, %48 ]
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i8, ptr %36, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !52
  %64 = getelementptr inbounds i8, ptr %2, i64 %61
  %65 = load i8, ptr %64, align 1, !tbaa !52
  %66 = icmp ult i8 %63, %65
  br i1 %66, label %67, label %69, !prof !81

67:                                               ; preds = %59
  store i32 %19, ptr %14, align 4, !tbaa !53
  %68 = getelementptr inbounds i32, ptr %33, i64 1
  br label %70

69:                                               ; preds = %59
  store i32 %19, ptr %17, align 4, !tbaa !53
  br label %70

70:                                               ; preds = %69, %67
  %71 = phi ptr [ %68, %67 ], [ %14, %69 ]
  %72 = phi i32 [ %15, %67 ], [ %60, %69 ]
  %73 = phi i32 [ %60, %67 ], [ %16, %69 ]
  %74 = phi ptr [ %17, %67 ], [ %33, %69 ]
  %75 = phi ptr [ %68, %67 ], [ %33, %69 ]
  %76 = load i32, ptr %75, align 4, !tbaa !53
  br label %77

77:                                               ; preds = %55, %70, %25
  %78 = phi ptr [ %14, %25 ], [ %14, %55 ], [ %71, %70 ]
  %79 = phi i32 [ %15, %25 ], [ %15, %55 ], [ %72, %70 ]
  %80 = phi i32 [ %16, %25 ], [ %16, %55 ], [ %73, %70 ]
  %81 = phi ptr [ %17, %25 ], [ %17, %55 ], [ %74, %70 ]
  %82 = phi i1 [ false, %25 ], [ false, %55 ], [ true, %70 ]
  %83 = phi i32 [ %19, %25 ], [ %19, %55 ], [ %76, %70 ]
  br i1 %82, label %13, label %84, !prof !82, !llvm.loop !83

84:                                               ; preds = %77
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @lzma_mf_bt3_find(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #1 !prof !109 {
  %3 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 4, !tbaa !42
  %5 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !43
  %7 = sub i32 %4, %6
  %8 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 18
  %9 = load i32, ptr %8, align 8, !tbaa !44
  %10 = icmp ugt i32 %9, %7
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = icmp ult i32 %7, 3
  br i1 %12, label %17, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 20
  %15 = load i32, ptr %14, align 8, !tbaa !47
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %22

17:                                               ; preds = %13, %11
  %18 = add i32 %6, 1
  store i32 %18, ptr %5, align 8, !tbaa !43
  %19 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 9
  %20 = load i32, ptr %19, align 8, !tbaa !49
  %21 = add i32 %20, 1
  store i32 %21, ptr %19, align 8, !tbaa !49
  br label %109

22:                                               ; preds = %2, %13
  %23 = phi i32 [ %7, %13 ], [ %9, %2 ]
  %24 = load ptr, ptr %0, align 8, !tbaa !50
  %25 = zext i32 %6 to i64
  %26 = getelementptr inbounds i8, ptr %24, i64 %25
  %27 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 4
  %28 = load i32, ptr %27, align 4, !tbaa !51
  %29 = add i32 %28, %6
  %30 = load i8, ptr %26, align 1, !tbaa !52
  %31 = zext i8 %30 to i64
  %32 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !53
  %34 = getelementptr inbounds i8, ptr %26, i64 1
  %35 = load i8, ptr %34, align 1, !tbaa !52
  %36 = zext i8 %35 to i32
  %37 = xor i32 %33, %36
  %38 = and i32 %37, 1023
  %39 = getelementptr inbounds i8, ptr %26, i64 2
  %40 = load i8, ptr %39, align 1, !tbaa !52
  %41 = zext i8 %40 to i32
  %42 = shl nuw nsw i32 %41, 8
  %43 = xor i32 %42, %37
  %44 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 16
  %45 = load i32, ptr %44, align 8, !tbaa !54
  %46 = and i32 %43, %45
  %47 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 12
  %48 = load ptr, ptr %47, align 8, !tbaa !55
  %49 = zext nneg i32 %38 to i64
  %50 = getelementptr inbounds i32, ptr %48, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !53
  %52 = sub i32 %29, %51
  %53 = add i32 %46, 1024
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, ptr %48, i64 %54
  %56 = load i32, ptr %55, align 4, !tbaa !53
  store i32 %29, ptr %50, align 4, !tbaa !53
  store i32 %29, ptr %55, align 4, !tbaa !53
  %57 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 15
  %58 = load i32, ptr %57, align 4, !tbaa !56
  %59 = icmp ult i32 %52, %58
  br i1 %59, label %60, label %93

60:                                               ; preds = %22
  %61 = zext i32 %52 to i64
  %62 = sub nsw i64 0, %61
  %63 = getelementptr inbounds i8, ptr %26, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !52
  %65 = load i8, ptr %26, align 1, !tbaa !52
  %66 = icmp eq i8 %64, %65
  br i1 %66, label %67, label %93

67:                                               ; preds = %60
  %68 = icmp eq i32 %23, 2
  br i1 %68, label %83, label %69

69:                                               ; preds = %67, %77
  %70 = phi i32 [ %78, %77 ], [ 2, %67 ]
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i8, ptr %26, i64 %71
  %73 = getelementptr inbounds i8, ptr %72, i64 %62
  %74 = load i8, ptr %73, align 1, !tbaa !52
  %75 = load i8, ptr %72, align 1, !tbaa !52
  %76 = icmp eq i8 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %69
  %78 = add i32 %70, 1
  %79 = icmp eq i32 %78, %23
  br i1 %79, label %83, label %69, !llvm.loop !120

80:                                               ; preds = %69
  store i32 %70, ptr %1, align 4, !tbaa !59
  %81 = add i32 %52, -1
  %82 = getelementptr inbounds %struct.lzma_match, ptr %1, i64 0, i32 1
  store i32 %81, ptr %82, align 4, !tbaa !61
  br label %93

83:                                               ; preds = %77, %67
  %84 = phi i32 [ 2, %67 ], [ %23, %77 ]
  store i32 %84, ptr %1, align 4, !tbaa !59
  %85 = add i32 %52, -1
  %86 = getelementptr inbounds %struct.lzma_match, ptr %1, i64 0, i32 1
  store i32 %85, ptr %86, align 4, !tbaa !61
  %87 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 17
  %88 = load i32, ptr %87, align 4, !tbaa !71
  %89 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 13
  %90 = load ptr, ptr %89, align 8, !tbaa !72
  %91 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 14
  %92 = load i32, ptr %91, align 8, !tbaa !73
  tail call fastcc void @bt_skip_func(i32 noundef %23, i32 noundef %29, ptr noundef nonnull %26, i32 noundef %56, i32 noundef %88, ptr noundef %90, i32 noundef %92, i32 noundef %58)
  tail call fastcc void @move_pos(ptr noundef nonnull %0)
  br label %109

93:                                               ; preds = %80, %22, %60
  %94 = phi i64 [ 1, %80 ], [ 0, %60 ], [ 0, %22 ]
  %95 = phi i32 [ %70, %80 ], [ 2, %60 ], [ 2, %22 ]
  %96 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 17
  %97 = load i32, ptr %96, align 4, !tbaa !71
  %98 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 13
  %99 = load ptr, ptr %98, align 8, !tbaa !72
  %100 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 14
  %101 = load i32, ptr %100, align 8, !tbaa !73
  %102 = getelementptr inbounds %struct.lzma_match, ptr %1, i64 %94
  %103 = tail call fastcc ptr @bt_find_func(i32 noundef %23, i32 noundef %29, ptr noundef nonnull %26, i32 noundef %56, i32 noundef %97, ptr noundef %99, i32 noundef %101, i32 noundef %58, ptr noundef %102, i32 noundef %95)
  %104 = ptrtoint ptr %103 to i64
  %105 = ptrtoint ptr %1 to i64
  %106 = sub i64 %104, %105
  %107 = lshr exact i64 %106, 3
  %108 = trunc i64 %107 to i32
  tail call fastcc void @move_pos(ptr noundef nonnull %0)
  br label %109

109:                                              ; preds = %83, %93, %17
  %110 = phi i32 [ 0, %17 ], [ 1, %83 ], [ %108, %93 ]
  ret i32 %110
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @lzma_mf_bt3_skip(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !109 {
  %3 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 8
  %4 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 5
  %5 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 18
  %6 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 20
  %7 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 16
  %9 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 12
  %10 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 17
  %11 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 13
  %12 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 14
  %13 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 15
  %14 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 9
  br label %15

15:                                               ; preds = %65, %2
  %16 = phi i32 [ %1, %2 ], [ %66, %65 ]
  %17 = load i32, ptr %3, align 4, !tbaa !42
  %18 = load i32, ptr %4, align 8, !tbaa !43
  %19 = sub i32 %17, %18
  %20 = load i32, ptr %5, align 8, !tbaa !44
  %21 = icmp ugt i32 %20, %19
  br i1 %21, label %22, label %31

22:                                               ; preds = %15
  %23 = icmp ult i32 %19, 3
  br i1 %23, label %27, label %24

24:                                               ; preds = %22
  %25 = load i32, ptr %6, align 8, !tbaa !47
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %31

27:                                               ; preds = %24, %22
  %28 = add i32 %18, 1
  store i32 %28, ptr %4, align 8, !tbaa !43
  %29 = load i32, ptr %14, align 8, !tbaa !49
  %30 = add i32 %29, 1
  store i32 %30, ptr %14, align 8, !tbaa !49
  br label %65

31:                                               ; preds = %15, %24
  %32 = phi i32 [ %19, %24 ], [ %20, %15 ]
  %33 = load ptr, ptr %0, align 8, !tbaa !50
  %34 = zext i32 %18 to i64
  %35 = getelementptr inbounds i8, ptr %33, i64 %34
  %36 = load i32, ptr %7, align 4, !tbaa !51
  %37 = add i32 %36, %18
  %38 = load i8, ptr %35, align 1, !tbaa !52
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !53
  %42 = getelementptr inbounds i8, ptr %35, i64 1
  %43 = load i8, ptr %42, align 1, !tbaa !52
  %44 = zext i8 %43 to i32
  %45 = xor i32 %41, %44
  %46 = and i32 %45, 1023
  %47 = getelementptr inbounds i8, ptr %35, i64 2
  %48 = load i8, ptr %47, align 1, !tbaa !52
  %49 = zext i8 %48 to i32
  %50 = shl nuw nsw i32 %49, 8
  %51 = xor i32 %50, %45
  %52 = load i32, ptr %8, align 8, !tbaa !54
  %53 = and i32 %51, %52
  %54 = load ptr, ptr %9, align 8, !tbaa !55
  %55 = add i32 %53, 1024
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32, ptr %54, i64 %56
  %58 = load i32, ptr %57, align 4, !tbaa !53
  %59 = zext nneg i32 %46 to i64
  %60 = getelementptr inbounds i32, ptr %54, i64 %59
  store i32 %37, ptr %60, align 4, !tbaa !53
  store i32 %37, ptr %57, align 4, !tbaa !53
  %61 = load i32, ptr %10, align 4, !tbaa !71
  %62 = load ptr, ptr %11, align 8, !tbaa !72
  %63 = load i32, ptr %12, align 8, !tbaa !73
  %64 = load i32, ptr %13, align 4, !tbaa !56
  tail call fastcc void @bt_skip_func(i32 noundef %32, i32 noundef %37, ptr noundef nonnull %35, i32 noundef %58, i32 noundef %61, ptr noundef %62, i32 noundef %63, i32 noundef %64)
  tail call fastcc void @move_pos(ptr noundef nonnull %0)
  br label %65

65:                                               ; preds = %31, %27
  %66 = add i32 %16, -1
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %15, !llvm.loop !121

68:                                               ; preds = %65
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @lzma_mf_bt4_find(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !109 {
  %3 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 4, !tbaa !42
  %5 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !43
  %7 = sub i32 %4, %6
  %8 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 18
  %9 = load i32, ptr %8, align 8, !tbaa !44
  %10 = icmp ugt i32 %9, %7
  br i1 %10, label %11, label %22, !prof !45

11:                                               ; preds = %2
  %12 = icmp ult i32 %7, 4
  br i1 %12, label %17, label %13, !prof !46

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 20
  %15 = load i32, ptr %14, align 8, !tbaa !47
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %22, !prof !48

17:                                               ; preds = %13, %11
  %18 = add i32 %6, 1
  store i32 %18, ptr %5, align 8, !tbaa !43
  %19 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 9
  %20 = load i32, ptr %19, align 8, !tbaa !49
  %21 = add i32 %20, 1
  store i32 %21, ptr %19, align 8, !tbaa !49
  br label %380

22:                                               ; preds = %2, %13
  %23 = phi i32 [ %7, %13 ], [ %9, %2 ]
  %24 = load ptr, ptr %0, align 8, !tbaa !50
  %25 = zext i32 %6 to i64
  %26 = getelementptr inbounds i8, ptr %24, i64 %25
  %27 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 4
  %28 = load i32, ptr %27, align 4, !tbaa !51
  %29 = add i32 %28, %6
  %30 = load i8, ptr %26, align 1, !tbaa !52
  %31 = zext i8 %30 to i64
  %32 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !53
  %34 = getelementptr inbounds i8, ptr %26, i64 1
  %35 = load i8, ptr %34, align 1, !tbaa !52
  %36 = zext i8 %35 to i32
  %37 = xor i32 %33, %36
  %38 = and i32 %37, 1023
  %39 = getelementptr inbounds i8, ptr %26, i64 2
  %40 = load i8, ptr %39, align 1, !tbaa !52
  %41 = zext i8 %40 to i32
  %42 = shl nuw nsw i32 %41, 8
  %43 = xor i32 %42, %37
  %44 = and i32 %43, 65535
  %45 = getelementptr inbounds i8, ptr %26, i64 3
  %46 = load i8, ptr %45, align 1, !tbaa !52
  %47 = zext i8 %46 to i64
  %48 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !53
  %50 = shl i32 %49, 5
  %51 = xor i32 %43, %50
  %52 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 16
  %53 = load i32, ptr %52, align 8, !tbaa !54
  %54 = and i32 %51, %53
  %55 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 12
  %56 = load ptr, ptr %55, align 8, !tbaa !55
  %57 = zext nneg i32 %38 to i64
  %58 = getelementptr inbounds i32, ptr %56, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !53
  %60 = sub i32 %29, %59
  %61 = zext nneg i32 %44 to i64
  %62 = getelementptr i32, ptr %56, i64 %61
  %63 = getelementptr i32, ptr %62, i64 1024
  %64 = load i32, ptr %63, align 4, !tbaa !53
  %65 = sub i32 %29, %64
  %66 = add i32 %54, 66560
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, ptr %56, i64 %67
  %69 = load i32, ptr %68, align 4, !tbaa !53
  store i32 %29, ptr %58, align 4, !tbaa !53
  store i32 %29, ptr %63, align 4, !tbaa !53
  store i32 %29, ptr %68, align 4, !tbaa !53
  %70 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 15
  %71 = load i32, ptr %70, align 4, !tbaa !56
  %72 = icmp ult i32 %60, %71
  br i1 %72, label %73, label %83, !prof !57

73:                                               ; preds = %22
  %74 = zext i32 %60 to i64
  %75 = sub nsw i64 0, %74
  %76 = getelementptr inbounds i8, ptr %26, i64 %75
  %77 = load i8, ptr %76, align 1, !tbaa !52
  %78 = load i8, ptr %26, align 1, !tbaa !52
  %79 = icmp eq i8 %77, %78
  br i1 %79, label %80, label %83, !prof !58

80:                                               ; preds = %73
  store i32 2, ptr %1, align 4, !tbaa !59
  %81 = add i32 %60, -1
  %82 = getelementptr inbounds %struct.lzma_match, ptr %1, i64 0, i32 1
  store i32 %81, ptr %82, align 4, !tbaa !61
  br label %83

83:                                               ; preds = %80, %73, %22
  %84 = phi i32 [ 1, %80 ], [ 0, %73 ], [ 0, %22 ]
  %85 = phi i32 [ 2, %80 ], [ 1, %73 ], [ 1, %22 ]
  %86 = icmp ne i32 %64, %59
  %87 = icmp ult i32 %65, %71
  %88 = select i1 %86, i1 %87, i1 false
  br i1 %88, label %89, label %101, !prof !62

89:                                               ; preds = %83
  %90 = zext i32 %65 to i64
  %91 = sub nsw i64 0, %90
  %92 = getelementptr inbounds i8, ptr %26, i64 %91
  %93 = load i8, ptr %92, align 1, !tbaa !52
  %94 = load i8, ptr %26, align 1, !tbaa !52
  %95 = icmp eq i8 %93, %94
  br i1 %95, label %96, label %101, !prof !63

96:                                               ; preds = %89
  %97 = add i32 %65, -1
  %98 = add nuw nsw i32 %84, 1
  %99 = zext nneg i32 %84 to i64
  %100 = getelementptr inbounds %struct.lzma_match, ptr %1, i64 %99, i32 1
  store i32 %97, ptr %100, align 4, !tbaa !61
  br label %101

101:                                              ; preds = %96, %89, %83
  %102 = phi i32 [ %98, %96 ], [ %84, %89 ], [ %84, %83 ]
  %103 = phi i32 [ %65, %96 ], [ %60, %89 ], [ %60, %83 ]
  %104 = phi i32 [ 3, %96 ], [ %85, %89 ], [ %85, %83 ]
  %105 = icmp eq i32 %102, 0
  br i1 %105, label %243, label %106, !prof !64

106:                                              ; preds = %101
  %107 = icmp eq i32 %104, %23
  br i1 %107, label %126, label %108, !prof !65

108:                                              ; preds = %106
  %109 = zext i32 %103 to i64
  %110 = sub nsw i64 0, %109
  br label %111

111:                                              ; preds = %108, %119
  %112 = phi i32 [ %104, %108 ], [ %120, %119 ]
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i8, ptr %26, i64 %113
  %115 = getelementptr inbounds i8, ptr %114, i64 %110
  %116 = load i8, ptr %115, align 1, !tbaa !52
  %117 = load i8, ptr %114, align 1, !tbaa !52
  %118 = icmp eq i8 %116, %117
  br i1 %118, label %119, label %122, !prof !66

119:                                              ; preds = %111
  %120 = add i32 %112, 1
  %121 = icmp eq i32 %120, %23
  br i1 %121, label %126, label %111, !prof !67, !llvm.loop !68

122:                                              ; preds = %111
  %123 = add nsw i32 %102, -1
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds %struct.lzma_match, ptr %1, i64 %124
  store i32 %112, ptr %125, align 4, !tbaa !59
  br label %243

126:                                              ; preds = %119, %106
  %127 = phi i32 [ %104, %106 ], [ %23, %119 ]
  %128 = add nsw i32 %102, -1
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %struct.lzma_match, ptr %1, i64 %129
  store i32 %127, ptr %130, align 4, !tbaa !59
  %131 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 17
  %132 = load i32, ptr %131, align 4, !tbaa !71
  %133 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 13
  %134 = load ptr, ptr %133, align 8, !tbaa !72
  %135 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 14
  %136 = load i32, ptr %135, align 8, !tbaa !73
  %137 = shl i32 %136, 1
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds i32, ptr %134, i64 %138
  %140 = getelementptr inbounds i32, ptr %139, i64 1
  br label %141

141:                                              ; preds = %205, %126
  %142 = phi ptr [ %139, %126 ], [ %206, %205 ]
  %143 = phi i32 [ 0, %126 ], [ %207, %205 ]
  %144 = phi i32 [ 0, %126 ], [ %208, %205 ]
  %145 = phi ptr [ %140, %126 ], [ %209, %205 ]
  %146 = phi i32 [ %132, %126 ], [ %149, %205 ]
  %147 = phi i32 [ %69, %126 ], [ %211, %205 ]
  %148 = sub i32 %29, %147
  %149 = add i32 %146, -1
  %150 = icmp ne i32 %146, 0
  %151 = icmp ult i32 %148, %71
  %152 = select i1 %150, i1 %151, i1 false, !prof !74
  br i1 %152, label %154, label %153, !prof !75

153:                                              ; preds = %141
  store i32 0, ptr %145, align 4, !tbaa !53
  store i32 0, ptr %142, align 4, !tbaa !53
  br label %205

154:                                              ; preds = %141
  %155 = sub i32 %136, %148
  %156 = icmp ugt i32 %148, %136
  %157 = select i1 %156, i32 %71, i32 0, !prof !76
  %158 = add i32 %155, %157
  %159 = shl i32 %158, 1
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds i32, ptr %134, i64 %160
  %162 = zext i32 %148 to i64
  %163 = sub nsw i64 0, %162
  %164 = getelementptr inbounds i8, ptr %26, i64 %163
  %165 = tail call i32 @llvm.umin.i32(i32 %143, i32 %144)
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds i8, ptr %164, i64 %166
  %168 = load i8, ptr %167, align 1, !tbaa !52
  %169 = getelementptr inbounds i8, ptr %26, i64 %166
  %170 = load i8, ptr %169, align 1, !tbaa !52
  %171 = icmp eq i8 %168, %170
  br i1 %171, label %172, label %187, !prof !77

172:                                              ; preds = %154, %176
  %173 = phi i32 [ %174, %176 ], [ %165, %154 ]
  %174 = add i32 %173, 1
  %175 = icmp eq i32 %174, %23
  br i1 %175, label %183, label %176, !prof !78

176:                                              ; preds = %172
  %177 = zext i32 %174 to i64
  %178 = getelementptr inbounds i8, ptr %164, i64 %177
  %179 = load i8, ptr %178, align 1, !tbaa !52
  %180 = getelementptr inbounds i8, ptr %26, i64 %177
  %181 = load i8, ptr %180, align 1, !tbaa !52
  %182 = icmp eq i8 %179, %181
  br i1 %182, label %172, label %187, !prof !79, !llvm.loop !80

183:                                              ; preds = %172
  %184 = load i32, ptr %161, align 4, !tbaa !53
  store i32 %184, ptr %142, align 4, !tbaa !53
  %185 = getelementptr inbounds i32, ptr %161, i64 1
  %186 = load i32, ptr %185, align 4, !tbaa !53
  store i32 %186, ptr %145, align 4, !tbaa !53
  br label %205

187:                                              ; preds = %176, %154
  %188 = phi i32 [ %165, %154 ], [ %174, %176 ]
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds i8, ptr %164, i64 %189
  %191 = load i8, ptr %190, align 1, !tbaa !52
  %192 = getelementptr inbounds i8, ptr %26, i64 %189
  %193 = load i8, ptr %192, align 1, !tbaa !52
  %194 = icmp ult i8 %191, %193
  br i1 %194, label %195, label %197, !prof !81

195:                                              ; preds = %187
  store i32 %147, ptr %142, align 4, !tbaa !53
  %196 = getelementptr inbounds i32, ptr %161, i64 1
  br label %198

197:                                              ; preds = %187
  store i32 %147, ptr %145, align 4, !tbaa !53
  br label %198

198:                                              ; preds = %197, %195
  %199 = phi ptr [ %196, %195 ], [ %142, %197 ]
  %200 = phi i32 [ %143, %195 ], [ %188, %197 ]
  %201 = phi i32 [ %188, %195 ], [ %144, %197 ]
  %202 = phi ptr [ %145, %195 ], [ %161, %197 ]
  %203 = phi ptr [ %196, %195 ], [ %161, %197 ]
  %204 = load i32, ptr %203, align 4, !tbaa !53
  br label %205

205:                                              ; preds = %198, %183, %153
  %206 = phi ptr [ %142, %153 ], [ %142, %183 ], [ %199, %198 ]
  %207 = phi i32 [ %143, %153 ], [ %143, %183 ], [ %200, %198 ]
  %208 = phi i32 [ %144, %153 ], [ %144, %183 ], [ %201, %198 ]
  %209 = phi ptr [ %145, %153 ], [ %145, %183 ], [ %202, %198 ]
  %210 = phi i1 [ false, %153 ], [ false, %183 ], [ true, %198 ]
  %211 = phi i32 [ %147, %153 ], [ %147, %183 ], [ %204, %198 ]
  br i1 %210, label %141, label %212, !prof !82, !llvm.loop !83

212:                                              ; preds = %205
  %213 = load i32, ptr %135, align 8, !tbaa !73
  %214 = add i32 %213, 1
  store i32 %214, ptr %135, align 8, !tbaa !73
  %215 = load i32, ptr %70, align 4, !tbaa !56
  %216 = icmp eq i32 %214, %215
  %217 = select i1 %216, i32 0, i32 %214, !prof !84
  store i32 %217, ptr %135, align 8
  %218 = load i32, ptr %5, align 8, !tbaa !43
  %219 = add i32 %218, 1
  store i32 %219, ptr %5, align 8, !tbaa !43
  %220 = load i32, ptr %27, align 4, !tbaa !51
  %221 = add i32 %220, %219
  %222 = icmp eq i32 %221, -1
  br i1 %222, label %223, label %380, !prof !85

223:                                              ; preds = %212
  %224 = xor i32 %215, -1
  %225 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 21
  %226 = load i32, ptr %225, align 4, !tbaa !86
  %227 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 22
  %228 = load i32, ptr %227, align 8, !tbaa !87
  %229 = add i32 %228, %226
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %240, label %231

231:                                              ; preds = %223
  %232 = zext i32 %229 to i64
  br label %233

233:                                              ; preds = %233, %231
  %234 = phi i64 [ 0, %231 ], [ %238, %233 ]
  %235 = getelementptr inbounds i32, ptr %56, i64 %234
  %236 = load i32, ptr %235, align 4, !tbaa !53
  %237 = tail call i32 @llvm.usub.sat.i32(i32 %236, i32 %224)
  store i32 %237, ptr %235, align 4, !tbaa !53
  %238 = add nuw nsw i64 %234, 1
  %239 = icmp eq i64 %238, %232
  br i1 %239, label %240, label %233, !llvm.loop !88

240:                                              ; preds = %233, %223
  %241 = load i32, ptr %27, align 4, !tbaa !51
  %242 = sub i32 %241, %224
  store i32 %242, ptr %27, align 4, !tbaa !51
  br label %380

243:                                              ; preds = %122, %101
  %244 = phi i32 [ %112, %122 ], [ %104, %101 ]
  %245 = tail call i32 @llvm.umax.i32(i32 %244, i32 3)
  %246 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 17
  %247 = load i32, ptr %246, align 4, !tbaa !71
  %248 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 13
  %249 = load ptr, ptr %248, align 8, !tbaa !72
  %250 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 14
  %251 = load i32, ptr %250, align 8, !tbaa !73
  %252 = zext nneg i32 %102 to i64
  %253 = getelementptr inbounds %struct.lzma_match, ptr %1, i64 %252
  %254 = shl i32 %251, 1
  %255 = zext i32 %254 to i64
  %256 = getelementptr inbounds i32, ptr %249, i64 %255
  %257 = getelementptr inbounds i32, ptr %256, i64 1
  br label %258

258:                                              ; preds = %334, %243
  %259 = phi ptr [ %253, %243 ], [ %335, %334 ]
  %260 = phi i32 [ %245, %243 ], [ %336, %334 ]
  %261 = phi ptr [ %257, %243 ], [ %337, %334 ]
  %262 = phi ptr [ %256, %243 ], [ %338, %334 ]
  %263 = phi i32 [ 0, %243 ], [ %339, %334 ]
  %264 = phi i32 [ 0, %243 ], [ %340, %334 ]
  %265 = phi i32 [ %247, %243 ], [ %269, %334 ]
  %266 = phi i32 [ %69, %243 ], [ %342, %334 ]
  %267 = phi ptr [ undef, %243 ], [ %343, %334 ]
  %268 = sub i32 %29, %266
  %269 = add i32 %265, -1
  %270 = icmp ne i32 %265, 0
  %271 = icmp ult i32 %268, %71
  %272 = select i1 %270, i1 %271, i1 false, !prof !89
  br i1 %272, label %274, label %273, !prof !90

273:                                              ; preds = %258
  store i32 0, ptr %261, align 4, !tbaa !53
  store i32 0, ptr %262, align 4, !tbaa !53
  br label %334

274:                                              ; preds = %258
  %275 = sub i32 %251, %268
  %276 = icmp ugt i32 %268, %251
  %277 = select i1 %276, i32 %71, i32 0, !prof !91
  %278 = add i32 %275, %277
  %279 = shl i32 %278, 1
  %280 = zext i32 %279 to i64
  %281 = getelementptr inbounds i32, ptr %249, i64 %280
  %282 = zext i32 %268 to i64
  %283 = sub nsw i64 0, %282
  %284 = getelementptr inbounds i8, ptr %26, i64 %283
  %285 = tail call i32 @llvm.umin.i32(i32 %263, i32 %264)
  %286 = zext i32 %285 to i64
  %287 = getelementptr inbounds i8, ptr %284, i64 %286
  %288 = load i8, ptr %287, align 1, !tbaa !52
  %289 = getelementptr inbounds i8, ptr %26, i64 %286
  %290 = load i8, ptr %289, align 1, !tbaa !52
  %291 = icmp eq i8 %288, %290
  br i1 %291, label %292, label %314, !prof !92

292:                                              ; preds = %274, %296
  %293 = phi i32 [ %294, %296 ], [ %285, %274 ]
  %294 = add i32 %293, 1
  %295 = icmp eq i32 %294, %23
  br i1 %295, label %303, label %296, !prof !93

296:                                              ; preds = %292
  %297 = zext i32 %294 to i64
  %298 = getelementptr inbounds i8, ptr %284, i64 %297
  %299 = load i8, ptr %298, align 1, !tbaa !52
  %300 = getelementptr inbounds i8, ptr %26, i64 %297
  %301 = load i8, ptr %300, align 1, !tbaa !52
  %302 = icmp eq i8 %299, %301
  br i1 %302, label %292, label %303, !prof !94, !llvm.loop !95

303:                                              ; preds = %296, %292
  %304 = phi i32 [ %294, %296 ], [ %23, %292 ]
  %305 = icmp ult i32 %260, %304
  br i1 %305, label %306, label %314, !prof !96

306:                                              ; preds = %303
  store i32 %304, ptr %259, align 4, !tbaa !59
  %307 = add i32 %268, -1
  %308 = getelementptr inbounds %struct.lzma_match, ptr %259, i64 0, i32 1
  store i32 %307, ptr %308, align 4, !tbaa !61
  %309 = getelementptr inbounds %struct.lzma_match, ptr %259, i64 1
  br i1 %295, label %310, label %314, !prof !97

310:                                              ; preds = %306
  %311 = load i32, ptr %281, align 4, !tbaa !53
  store i32 %311, ptr %262, align 4, !tbaa !53
  %312 = getelementptr inbounds i32, ptr %281, i64 1
  %313 = load i32, ptr %312, align 4, !tbaa !53
  store i32 %313, ptr %261, align 4, !tbaa !53
  br label %334

314:                                              ; preds = %306, %303, %274
  %315 = phi ptr [ %309, %306 ], [ %259, %274 ], [ %259, %303 ]
  %316 = phi i32 [ %304, %306 ], [ %260, %274 ], [ %260, %303 ]
  %317 = phi i32 [ %304, %306 ], [ %285, %274 ], [ %304, %303 ]
  %318 = zext i32 %317 to i64
  %319 = getelementptr inbounds i8, ptr %284, i64 %318
  %320 = load i8, ptr %319, align 1, !tbaa !52
  %321 = getelementptr inbounds i8, ptr %26, i64 %318
  %322 = load i8, ptr %321, align 1, !tbaa !52
  %323 = icmp ult i8 %320, %322
  br i1 %323, label %324, label %326, !prof !98

324:                                              ; preds = %314
  store i32 %266, ptr %262, align 4, !tbaa !53
  %325 = getelementptr inbounds i32, ptr %281, i64 1
  br label %327

326:                                              ; preds = %314
  store i32 %266, ptr %261, align 4, !tbaa !53
  br label %327

327:                                              ; preds = %326, %324
  %328 = phi ptr [ %261, %324 ], [ %281, %326 ]
  %329 = phi ptr [ %325, %324 ], [ %262, %326 ]
  %330 = phi i32 [ %263, %324 ], [ %317, %326 ]
  %331 = phi i32 [ %317, %324 ], [ %264, %326 ]
  %332 = phi ptr [ %325, %324 ], [ %281, %326 ]
  %333 = load i32, ptr %332, align 4, !tbaa !53
  br label %334

334:                                              ; preds = %327, %310, %273
  %335 = phi ptr [ %259, %273 ], [ %309, %310 ], [ %315, %327 ]
  %336 = phi i32 [ %260, %273 ], [ %304, %310 ], [ %316, %327 ]
  %337 = phi ptr [ %261, %273 ], [ %261, %310 ], [ %328, %327 ]
  %338 = phi ptr [ %262, %273 ], [ %262, %310 ], [ %329, %327 ]
  %339 = phi i32 [ %263, %273 ], [ %263, %310 ], [ %330, %327 ]
  %340 = phi i32 [ %264, %273 ], [ %264, %310 ], [ %331, %327 ]
  %341 = phi i1 [ false, %273 ], [ false, %310 ], [ true, %327 ]
  %342 = phi i32 [ %266, %273 ], [ %266, %310 ], [ %333, %327 ]
  %343 = phi ptr [ %259, %273 ], [ %309, %310 ], [ %267, %327 ]
  br i1 %341, label %258, label %344, !prof !99, !llvm.loop !100

344:                                              ; preds = %334
  %345 = ptrtoint ptr %343 to i64
  %346 = ptrtoint ptr %1 to i64
  %347 = sub i64 %345, %346
  %348 = lshr exact i64 %347, 3
  %349 = trunc i64 %348 to i32
  %350 = load i32, ptr %250, align 8, !tbaa !73
  %351 = add i32 %350, 1
  store i32 %351, ptr %250, align 8, !tbaa !73
  %352 = load i32, ptr %70, align 4, !tbaa !56
  %353 = icmp eq i32 %351, %352
  %354 = select i1 %353, i32 0, i32 %351, !prof !84
  store i32 %354, ptr %250, align 8
  %355 = load i32, ptr %5, align 8, !tbaa !43
  %356 = add i32 %355, 1
  store i32 %356, ptr %5, align 8, !tbaa !43
  %357 = load i32, ptr %27, align 4, !tbaa !51
  %358 = add i32 %357, %356
  %359 = icmp eq i32 %358, -1
  br i1 %359, label %360, label %380, !prof !85

360:                                              ; preds = %344
  %361 = xor i32 %352, -1
  %362 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 21
  %363 = load i32, ptr %362, align 4, !tbaa !86
  %364 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 22
  %365 = load i32, ptr %364, align 8, !tbaa !87
  %366 = add i32 %365, %363
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %377, label %368

368:                                              ; preds = %360
  %369 = zext i32 %366 to i64
  br label %370

370:                                              ; preds = %370, %368
  %371 = phi i64 [ 0, %368 ], [ %375, %370 ]
  %372 = getelementptr inbounds i32, ptr %56, i64 %371
  %373 = load i32, ptr %372, align 4, !tbaa !53
  %374 = tail call i32 @llvm.usub.sat.i32(i32 %373, i32 %361)
  store i32 %374, ptr %372, align 4, !tbaa !53
  %375 = add nuw nsw i64 %371, 1
  %376 = icmp eq i64 %375, %369
  br i1 %376, label %377, label %370, !llvm.loop !88

377:                                              ; preds = %370, %360
  %378 = load i32, ptr %27, align 4, !tbaa !51
  %379 = sub i32 %378, %361
  store i32 %379, ptr %27, align 4, !tbaa !51
  br label %380

380:                                              ; preds = %377, %344, %240, %212, %17
  %381 = phi i32 [ 0, %17 ], [ %102, %212 ], [ %102, %240 ], [ %349, %344 ], [ %349, %377 ]
  ret i32 %381
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @lzma_mf_bt4_skip(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #4 !prof !122 {
  %3 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 8
  %4 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 5
  %5 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 18
  %6 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 4
  %7 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 16
  %8 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 12
  %9 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 17
  %10 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 13
  %11 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 14
  %12 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 15
  br label %13

13:                                               ; preds = %182, %2
  %14 = phi i32 [ %1, %2 ], [ %183, %182 ]
  %15 = load i32, ptr %3, align 4, !tbaa !42
  %16 = load i32, ptr %4, align 8, !tbaa !43
  %17 = sub i32 %15, %16
  %18 = load i32, ptr %5, align 8, !tbaa !44
  %19 = icmp ugt i32 %18, %17
  br i1 %19, label %20, label %31, !prof !123

20:                                               ; preds = %13
  %21 = icmp ult i32 %17, 4
  br i1 %21, label %26, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 20
  %24 = load i32, ptr %23, align 8, !tbaa !47
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %31

26:                                               ; preds = %22, %20
  %27 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 9
  %28 = add i32 %16, 1
  store i32 %28, ptr %4, align 8, !tbaa !43
  %29 = load i32, ptr %27, align 8, !tbaa !49
  %30 = add i32 %29, 1
  store i32 %30, ptr %27, align 8, !tbaa !49
  br label %182

31:                                               ; preds = %13, %22
  %32 = phi i32 [ %17, %22 ], [ %18, %13 ]
  %33 = load ptr, ptr %0, align 8, !tbaa !50
  %34 = zext i32 %16 to i64
  %35 = getelementptr inbounds i8, ptr %33, i64 %34
  %36 = load i32, ptr %6, align 4, !tbaa !51
  %37 = add i32 %36, %16
  %38 = load i8, ptr %35, align 1, !tbaa !52
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !53
  %42 = getelementptr inbounds i8, ptr %35, i64 1
  %43 = load i8, ptr %42, align 1, !tbaa !52
  %44 = zext i8 %43 to i32
  %45 = xor i32 %41, %44
  %46 = and i32 %45, 1023
  %47 = getelementptr inbounds i8, ptr %35, i64 2
  %48 = load i8, ptr %47, align 1, !tbaa !52
  %49 = zext i8 %48 to i32
  %50 = shl nuw nsw i32 %49, 8
  %51 = xor i32 %50, %45
  %52 = and i32 %51, 65535
  %53 = getelementptr inbounds i8, ptr %35, i64 3
  %54 = load i8, ptr %53, align 1, !tbaa !52
  %55 = zext i8 %54 to i64
  %56 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %55
  %57 = load i32, ptr %56, align 4, !tbaa !53
  %58 = shl i32 %57, 5
  %59 = xor i32 %51, %58
  %60 = load i32, ptr %7, align 8, !tbaa !54
  %61 = and i32 %59, %60
  %62 = load ptr, ptr %8, align 8, !tbaa !55
  %63 = add i32 %61, 66560
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32, ptr %62, i64 %64
  %66 = load i32, ptr %65, align 4, !tbaa !53
  %67 = zext nneg i32 %46 to i64
  %68 = getelementptr inbounds i32, ptr %62, i64 %67
  store i32 %37, ptr %68, align 4, !tbaa !53
  %69 = zext nneg i32 %52 to i64
  %70 = getelementptr i32, ptr %62, i64 %69
  %71 = getelementptr i32, ptr %70, i64 1024
  store i32 %37, ptr %71, align 4, !tbaa !53
  store i32 %37, ptr %65, align 4, !tbaa !53
  %72 = load i32, ptr %9, align 4, !tbaa !71
  %73 = load ptr, ptr %10, align 8, !tbaa !72
  %74 = load i32, ptr %11, align 8, !tbaa !73
  %75 = load i32, ptr %12, align 4, !tbaa !56
  %76 = shl i32 %74, 1
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i32, ptr %73, i64 %77
  %79 = getelementptr inbounds i32, ptr %78, i64 1
  br label %80

80:                                               ; preds = %144, %31
  %81 = phi ptr [ %78, %31 ], [ %145, %144 ]
  %82 = phi i32 [ 0, %31 ], [ %146, %144 ]
  %83 = phi i32 [ 0, %31 ], [ %147, %144 ]
  %84 = phi ptr [ %79, %31 ], [ %148, %144 ]
  %85 = phi i32 [ %72, %31 ], [ %88, %144 ]
  %86 = phi i32 [ %66, %31 ], [ %150, %144 ]
  %87 = sub i32 %37, %86
  %88 = add i32 %85, -1
  %89 = icmp ne i32 %85, 0
  %90 = icmp ult i32 %87, %75
  %91 = select i1 %89, i1 %90, i1 false, !prof !74
  br i1 %91, label %93, label %92, !prof !75

92:                                               ; preds = %80
  store i32 0, ptr %84, align 4, !tbaa !53
  store i32 0, ptr %81, align 4, !tbaa !53
  br label %144

93:                                               ; preds = %80
  %94 = sub i32 %74, %87
  %95 = icmp ugt i32 %87, %74
  %96 = select i1 %95, i32 %75, i32 0, !prof !76
  %97 = add i32 %94, %96
  %98 = shl i32 %97, 1
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i32, ptr %73, i64 %99
  %101 = zext i32 %87 to i64
  %102 = sub nsw i64 0, %101
  %103 = getelementptr inbounds i8, ptr %35, i64 %102
  %104 = tail call i32 @llvm.umin.i32(i32 %82, i32 %83)
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i8, ptr %103, i64 %105
  %107 = load i8, ptr %106, align 1, !tbaa !52
  %108 = getelementptr inbounds i8, ptr %35, i64 %105
  %109 = load i8, ptr %108, align 1, !tbaa !52
  %110 = icmp eq i8 %107, %109
  br i1 %110, label %111, label %126, !prof !77

111:                                              ; preds = %93, %115
  %112 = phi i32 [ %113, %115 ], [ %104, %93 ]
  %113 = add i32 %112, 1
  %114 = icmp eq i32 %113, %32
  br i1 %114, label %122, label %115, !prof !78

115:                                              ; preds = %111
  %116 = zext i32 %113 to i64
  %117 = getelementptr inbounds i8, ptr %103, i64 %116
  %118 = load i8, ptr %117, align 1, !tbaa !52
  %119 = getelementptr inbounds i8, ptr %35, i64 %116
  %120 = load i8, ptr %119, align 1, !tbaa !52
  %121 = icmp eq i8 %118, %120
  br i1 %121, label %111, label %126, !prof !79, !llvm.loop !80

122:                                              ; preds = %111
  %123 = load i32, ptr %100, align 4, !tbaa !53
  store i32 %123, ptr %81, align 4, !tbaa !53
  %124 = getelementptr inbounds i32, ptr %100, i64 1
  %125 = load i32, ptr %124, align 4, !tbaa !53
  store i32 %125, ptr %84, align 4, !tbaa !53
  br label %144

126:                                              ; preds = %115, %93
  %127 = phi i32 [ %104, %93 ], [ %113, %115 ]
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds i8, ptr %103, i64 %128
  %130 = load i8, ptr %129, align 1, !tbaa !52
  %131 = getelementptr inbounds i8, ptr %35, i64 %128
  %132 = load i8, ptr %131, align 1, !tbaa !52
  %133 = icmp ult i8 %130, %132
  br i1 %133, label %134, label %136, !prof !81

134:                                              ; preds = %126
  store i32 %86, ptr %81, align 4, !tbaa !53
  %135 = getelementptr inbounds i32, ptr %100, i64 1
  br label %137

136:                                              ; preds = %126
  store i32 %86, ptr %84, align 4, !tbaa !53
  br label %137

137:                                              ; preds = %136, %134
  %138 = phi ptr [ %135, %134 ], [ %81, %136 ]
  %139 = phi i32 [ %82, %134 ], [ %127, %136 ]
  %140 = phi i32 [ %127, %134 ], [ %83, %136 ]
  %141 = phi ptr [ %84, %134 ], [ %100, %136 ]
  %142 = phi ptr [ %135, %134 ], [ %100, %136 ]
  %143 = load i32, ptr %142, align 4, !tbaa !53
  br label %144

144:                                              ; preds = %137, %122, %92
  %145 = phi ptr [ %81, %92 ], [ %81, %122 ], [ %138, %137 ]
  %146 = phi i32 [ %82, %92 ], [ %82, %122 ], [ %139, %137 ]
  %147 = phi i32 [ %83, %92 ], [ %83, %122 ], [ %140, %137 ]
  %148 = phi ptr [ %84, %92 ], [ %84, %122 ], [ %141, %137 ]
  %149 = phi i1 [ false, %92 ], [ false, %122 ], [ true, %137 ]
  %150 = phi i32 [ %86, %92 ], [ %86, %122 ], [ %143, %137 ]
  br i1 %149, label %80, label %151, !prof !82, !llvm.loop !83

151:                                              ; preds = %144
  %152 = load i32, ptr %11, align 8, !tbaa !73
  %153 = add i32 %152, 1
  store i32 %153, ptr %11, align 8, !tbaa !73
  %154 = load i32, ptr %12, align 4, !tbaa !56
  %155 = icmp eq i32 %153, %154
  %156 = select i1 %155, i32 0, i32 %153, !prof !84
  store i32 %156, ptr %11, align 8
  %157 = load i32, ptr %4, align 8, !tbaa !43
  %158 = add i32 %157, 1
  store i32 %158, ptr %4, align 8, !tbaa !43
  %159 = load i32, ptr %6, align 4, !tbaa !51
  %160 = add i32 %159, %158
  %161 = icmp eq i32 %160, -1
  br i1 %161, label %162, label %182, !prof !85

162:                                              ; preds = %151
  %163 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 21
  %164 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 22
  %165 = xor i32 %154, -1
  %166 = load i32, ptr %163, align 4, !tbaa !86
  %167 = load i32, ptr %164, align 8, !tbaa !87
  %168 = add i32 %167, %166
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %179, label %170

170:                                              ; preds = %162
  %171 = zext i32 %168 to i64
  br label %172

172:                                              ; preds = %172, %170
  %173 = phi i64 [ 0, %170 ], [ %177, %172 ]
  %174 = getelementptr inbounds i32, ptr %62, i64 %173
  %175 = load i32, ptr %174, align 4, !tbaa !53
  %176 = tail call i32 @llvm.usub.sat.i32(i32 %175, i32 %165)
  store i32 %176, ptr %174, align 4, !tbaa !53
  %177 = add nuw nsw i64 %173, 1
  %178 = icmp eq i64 %177, %171
  br i1 %178, label %179, label %172, !llvm.loop !88

179:                                              ; preds = %172, %162
  %180 = load i32, ptr %6, align 4, !tbaa !51
  %181 = sub i32 %180, %165
  store i32 %181, ptr %6, align 4, !tbaa !51
  br label %182

182:                                              ; preds = %179, %151, %26
  %183 = add i32 %14, -1
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %13, !prof !124, !llvm.loop !125

185:                                              ; preds = %182
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #5

attributes #0 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 47149273342}
!8 = !{!"MaxCount", i64 6329676010}
!9 = !{!"MaxInternalCount", i64 6329676010}
!10 = !{!"MaxFunctionCount", i64 1717654358}
!11 = !{!"NumCounts", i64 2810}
!12 = !{!"NumFunctions", i64 379}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 6329676010, i32 1}
!18 = !{i32 100000, i64 6329676010, i32 1}
!19 = !{i32 200000, i64 5133904873, i32 2}
!20 = !{i32 300000, i64 1880543368, i32 4}
!21 = !{i32 400000, i64 1717654358, i32 6}
!22 = !{i32 500000, i64 1179118894, i32 9}
!23 = !{i32 600000, i64 845267354, i32 14}
!24 = !{i32 700000, i64 611059789, i32 20}
!25 = !{i32 800000, i64 289033984, i32 32}
!26 = !{i32 900000, i64 144512423, i32 55}
!27 = !{i32 950000, i64 47630439, i32 82}
!28 = !{i32 990000, i64 5873050, i32 171}
!29 = !{i32 999000, i64 869247, i32 334}
!30 = !{i32 999900, i64 80863, i32 461}
!31 = !{i32 999990, i64 32025, i32 533}
!32 = !{i32 999999, i64 3325, i32 567}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 195785210}
!35 = !{!36, !37, i64 48}
!36 = !{!"lzma_mf_s", !37, i64 0, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !40, i64 80, !40, i64 84, !40, i64 88, !40, i64 92, !40, i64 96, !40, i64 100, !40, i64 104, !40, i64 108, !40, i64 112}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"branch_weights", i32 195785210, i32 0}
!42 = !{!36, !40, i64 36}
!43 = !{!36, !40, i64 24}
!44 = !{!36, !40, i64 96}
!45 = !{!"branch_weights", i32 63, i32 195785147}
!46 = !{!"branch_weights", i32 3, i32 60}
!47 = !{!36, !40, i64 104}
!48 = !{!"branch_weights", i32 0, i32 60}
!49 = !{!36, !40, i64 40}
!50 = !{!36, !37, i64 0}
!51 = !{!36, !40, i64 20}
!52 = !{!38, !38, i64 0}
!53 = !{!40, !40, i64 0}
!54 = !{!36, !40, i64 88}
!55 = !{!36, !37, i64 64}
!56 = !{!36, !40, i64 84}
!57 = !{!"branch_weights", i32 195781635, i32 3572}
!58 = !{!"branch_weights", i32 154264530, i32 41517105}
!59 = !{!60, !40, i64 0}
!60 = !{!"", !40, i64 0, !40, i64 4}
!61 = !{!60, !40, i64 4}
!62 = !{!"branch_weights", i32 -1951210469, i32 -2007081455}
!63 = !{!"branch_weights", i32 87866084, i32 11207387}
!64 = !{!"branch_weights", i32 8753099, i32 187032108}
!65 = !{!"branch_weights", i32 1, i32 77067}
!66 = !{!"branch_weights", i32 1162304953, i32 186955040}
!67 = !{!"branch_weights", i32 77067, i32 1349182926}
!68 = distinct !{!68, !69, !70}
!69 = !{!"llvm.loop.mustprogress"}
!70 = !{!"llvm.loop.unroll.disable"}
!71 = !{!36, !40, i64 92}
!72 = !{!36, !37, i64 72}
!73 = !{!36, !40, i64 80}
!74 = !{!"branch_weights", i32 859462137, i32 7944416}
!75 = !{!"branch_weights", i32 842292257, i32 25114296}
!76 = !{!"branch_weights", i32 19608282, i32 822683975}
!77 = !{!"branch_weights", i32 536499723, i32 305792534}
!78 = !{!"branch_weights", i32 20660781, i32 -1728014860}
!79 = !{!"branch_weights", i32 -1975603940, i32 247589080}
!80 = distinct !{!80, !69, !70}
!81 = !{!"branch_weights", i32 431689102, i32 369281593}
!82 = !{!"branch_weights", i32 800970695, i32 66435858}
!83 = distinct !{!83, !70}
!84 = !{!"branch_weights", i32 15, i32 262143982}
!85 = !{!"branch_weights", i32 0, i32 262143997}
!86 = !{!36, !40, i64 108}
!87 = !{!36, !40, i64 112}
!88 = distinct !{!88, !69, !70}
!89 = !{!"branch_weights", i32 -1660901221, i32 10778748}
!90 = !{!"branch_weights", i32 -1845453276, i32 195330803}
!91 = !{!"branch_weights", i32 195375525, i32 -2040828801}
!92 = !{!"branch_weights", i32 989366631, i32 1460147389}
!93 = !{!"branch_weights", i32 188668, i32 -1130129291}
!94 = !{!"branch_weights", i32 -1624623939, i32 494494647}
!95 = distinct !{!95, !69, !70}
!96 = !{!"branch_weights", i32 273134644, i32 716231987}
!97 = !{!"branch_weights", i32 377336, i32 272757308}
!98 = !{!"branch_weights", i32 845267354, i32 1603869330}
!99 = !{!"branch_weights", i32 -1845830612, i32 195708139}
!100 = distinct !{!100, !70}
!101 = !{!"branch_weights", i32 6198524, i32 189586686}
!102 = !{!"branch_weights", i32 454398, i32 189132288}
!103 = !{!36, !40, i64 100}
!104 = !{!"branch_weights", i32 94327, i32 1}
!105 = !{!"branch_weights", i32 34573494, i32 360070}
!106 = !{!"branch_weights", i32 94327, i32 34839237}
!107 = distinct !{!107, !69, !70}
!108 = !{!36, !40, i64 28}
!109 = !{!"function_entry_count", i64 0}
!110 = distinct !{!110, !69, !70}
!111 = !{!"function_entry_count", i64 1}
!112 = !{!"liblzma/lz/lz_encoder_mf.c;move_pos"}
!113 = distinct !{!113, !69, !70}
!114 = distinct !{!114, !69, !70}
!115 = distinct !{!115, !69, !70}
!116 = distinct !{!116, !69, !70}
!117 = !{!"liblzma/lz/lz_encoder_mf.c;bt_find_func"}
!118 = distinct !{!118, !69, !70}
!119 = !{!"liblzma/lz/lz_encoder_mf.c;bt_skip_func"}
!120 = distinct !{!120, !69, !70}
!121 = distinct !{!121, !69, !70}
!122 = !{!"function_entry_count", i64 463536}
!123 = !{!"branch_weights", i32 0, i32 66358790}
!124 = !{!"branch_weights", i32 463536, i32 65895254}
!125 = distinct !{!125, !69, !70}
