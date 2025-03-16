; ModuleID = 'src/rdcolmap.c'
source_filename = "src/rdcolmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }

; Function Attrs: nounwind uwtable
define dso_local void @read_color_map(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca [13 x i32], align 16
  %4 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !13
  %8 = tail call ptr %7(ptr noundef %0, i32 noundef 1, i32 noundef 256, i32 noundef 3) #3
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 32
  store ptr %8, ptr %9, align 8, !tbaa !16
  %10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 31
  store i32 0, ptr %10, align 4, !tbaa !17
  %11 = tail call i32 @getc(ptr noundef %1)
  switch i32 %11, label %287 [
    i32 71, label %12
    i32 80, label %115
  ]

12:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %3) #3
  br label %13

13:                                               ; preds = %22, %12
  %14 = phi i64 [ 1, %12 ], [ %23, %22 ]
  %15 = tail call i32 @getc(ptr noundef %1)
  %16 = getelementptr inbounds [13 x i32], ptr %3, i64 0, i64 %14
  store i32 %15, ptr %16, align 4, !tbaa !18
  %17 = icmp eq i32 %15, -1
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load ptr, ptr %0, align 8, !tbaa !19
  %20 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %19, i64 0, i32 5
  store i32 1038, ptr %20, align 8, !tbaa !20
  %21 = load ptr, ptr %19, align 8, !tbaa !22
  tail call void %21(ptr noundef nonnull %0) #3
  br label %22

22:                                               ; preds = %18, %13
  %23 = add nuw nsw i64 %14, 1
  %24 = icmp eq i64 %23, 13
  br i1 %24, label %25, label %13, !llvm.loop !23

25:                                               ; preds = %22
  %26 = getelementptr inbounds [13 x i32], ptr %3, i64 0, i64 1
  %27 = load i32, ptr %26, align 4, !tbaa !18
  %28 = icmp ne i32 %27, 73
  %29 = getelementptr inbounds [13 x i32], ptr %3, i64 0, i64 2
  %30 = load i32, ptr %29, align 8
  %31 = icmp ne i32 %30, 70
  %32 = select i1 %28, i1 true, i1 %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load ptr, ptr %0, align 8, !tbaa !19
  %35 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %34, i64 0, i32 5
  store i32 1038, ptr %35, align 8, !tbaa !20
  %36 = load ptr, ptr %34, align 8, !tbaa !22
  tail call void %36(ptr noundef nonnull %0) #3
  br label %37

37:                                               ; preds = %33, %25
  %38 = getelementptr inbounds [13 x i32], ptr %3, i64 0, i64 10
  %39 = load i32, ptr %38, align 8, !tbaa !18
  %40 = and i32 %39, 128
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load ptr, ptr %0, align 8, !tbaa !19
  %44 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %43, i64 0, i32 5
  store i32 1038, ptr %44, align 8, !tbaa !20
  %45 = load ptr, ptr %43, align 8, !tbaa !22
  tail call void %45(ptr noundef nonnull %0) #3
  br label %46

46:                                               ; preds = %42, %37
  %47 = and i32 %39, 7
  %48 = shl nuw nsw i32 2, %47
  br label %49

49:                                               ; preds = %111, %46
  %50 = phi i32 [ 0, %46 ], [ %112, %111 ]
  %51 = tail call i32 @getc(ptr noundef %1)
  %52 = tail call i32 @getc(ptr noundef %1)
  %53 = tail call i32 @getc(ptr noundef %1)
  %54 = icmp eq i32 %51, -1
  %55 = icmp eq i32 %52, -1
  %56 = or i1 %54, %55
  %57 = icmp eq i32 %53, -1
  %58 = or i1 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %49
  %60 = load ptr, ptr %0, align 8, !tbaa !19
  %61 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %60, i64 0, i32 5
  store i32 1038, ptr %61, align 8, !tbaa !20
  %62 = load ptr, ptr %60, align 8, !tbaa !22
  tail call void %62(ptr noundef nonnull %0) #3
  br label %63

63:                                               ; preds = %59, %49
  %64 = load ptr, ptr %9, align 8, !tbaa !16
  %65 = load ptr, ptr %64, align 8, !tbaa !25
  %66 = getelementptr inbounds ptr, ptr %64, i64 1
  %67 = load ptr, ptr %66, align 8, !tbaa !25
  %68 = getelementptr inbounds ptr, ptr %64, i64 2
  %69 = load ptr, ptr %68, align 8, !tbaa !25
  %70 = load i32, ptr %10, align 4, !tbaa !17
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %93

72:                                               ; preds = %63
  %73 = zext nneg i32 %70 to i64
  br label %74

74:                                               ; preds = %90, %72
  %75 = phi i64 [ 0, %72 ], [ %91, %90 ]
  %76 = getelementptr inbounds i8, ptr %65, i64 %75
  %77 = load i8, ptr %76, align 1, !tbaa !26
  %78 = zext i8 %77 to i32
  %79 = icmp eq i32 %51, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %74
  %81 = getelementptr inbounds i8, ptr %67, i64 %75
  %82 = load i8, ptr %81, align 1, !tbaa !26
  %83 = zext i8 %82 to i32
  %84 = icmp eq i32 %52, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = getelementptr inbounds i8, ptr %69, i64 %75
  %87 = load i8, ptr %86, align 1, !tbaa !26
  %88 = zext i8 %87 to i32
  %89 = icmp eq i32 %53, %88
  br i1 %89, label %111, label %90

90:                                               ; preds = %85, %80, %74
  %91 = add nuw nsw i64 %75, 1
  %92 = icmp eq i64 %91, %73
  br i1 %92, label %93, label %74, !llvm.loop !27

93:                                               ; preds = %90, %63
  %94 = icmp sgt i32 %70, 255
  br i1 %94, label %95, label %101

95:                                               ; preds = %93
  %96 = load ptr, ptr %0, align 8, !tbaa !19
  %97 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %96, i64 0, i32 5
  store i32 56, ptr %97, align 8, !tbaa !20
  %98 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %96, i64 0, i32 6
  store i32 256, ptr %98, align 4, !tbaa !26
  %99 = load ptr, ptr %0, align 8, !tbaa !19
  %100 = load ptr, ptr %99, align 8, !tbaa !22
  tail call void %100(ptr noundef nonnull %0) #3
  br label %101

101:                                              ; preds = %95, %93
  %102 = trunc i32 %51 to i8
  %103 = sext i32 %70 to i64
  %104 = getelementptr inbounds i8, ptr %65, i64 %103
  store i8 %102, ptr %104, align 1, !tbaa !26
  %105 = trunc i32 %52 to i8
  %106 = getelementptr inbounds i8, ptr %67, i64 %103
  store i8 %105, ptr %106, align 1, !tbaa !26
  %107 = trunc i32 %53 to i8
  %108 = getelementptr inbounds i8, ptr %69, i64 %103
  store i8 %107, ptr %108, align 1, !tbaa !26
  %109 = load i32, ptr %10, align 4, !tbaa !17
  %110 = add nsw i32 %109, 1
  store i32 %110, ptr %10, align 4, !tbaa !17
  br label %111

111:                                              ; preds = %85, %101
  %112 = add nuw nsw i32 %50, 1
  %113 = icmp eq i32 %112, %48
  br i1 %113, label %114, label %49, !llvm.loop !28

114:                                              ; preds = %111
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %3) #3
  br label %291

115:                                              ; preds = %2
  %116 = tail call i32 @getc(ptr noundef %1)
  %117 = tail call fastcc i32 @read_pbm_integer(ptr noundef %0, ptr noundef %1)
  %118 = tail call fastcc i32 @read_pbm_integer(ptr noundef %0, ptr noundef %1)
  %119 = tail call fastcc i32 @read_pbm_integer(ptr noundef %0, ptr noundef %1)
  %120 = icmp eq i32 %117, 0
  %121 = icmp eq i32 %118, 0
  %122 = select i1 %120, i1 true, i1 %121
  %123 = icmp eq i32 %119, 0
  %124 = select i1 %122, i1 true, i1 %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %115
  %126 = load ptr, ptr %0, align 8, !tbaa !19
  %127 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %126, i64 0, i32 5
  store i32 1038, ptr %127, align 8, !tbaa !20
  %128 = load ptr, ptr %126, align 8, !tbaa !22
  tail call void %128(ptr noundef nonnull %0) #3
  br label %129

129:                                              ; preds = %125, %115
  %130 = icmp eq i32 %119, 255
  br i1 %130, label %135, label %131

131:                                              ; preds = %129
  %132 = load ptr, ptr %0, align 8, !tbaa !19
  %133 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %132, i64 0, i32 5
  store i32 1038, ptr %133, align 8, !tbaa !20
  %134 = load ptr, ptr %132, align 8, !tbaa !22
  tail call void %134(ptr noundef nonnull %0) #3
  br label %135

135:                                              ; preds = %131, %129
  switch i32 %116, label %283 [
    i32 51, label %137
    i32 54, label %136
  ]

136:                                              ; preds = %135
  br i1 %121, label %291, label %198

137:                                              ; preds = %135
  br i1 %121, label %291, label %138

138:                                              ; preds = %137, %195
  %139 = phi i32 [ %196, %195 ], [ 0, %137 ]
  br i1 %120, label %195, label %140

140:                                              ; preds = %138, %192
  %141 = phi i32 [ %193, %192 ], [ 0, %138 ]
  %142 = tail call fastcc i32 @read_pbm_integer(ptr noundef %0, ptr noundef %1)
  %143 = tail call fastcc i32 @read_pbm_integer(ptr noundef %0, ptr noundef %1)
  %144 = tail call fastcc i32 @read_pbm_integer(ptr noundef %0, ptr noundef %1)
  %145 = load ptr, ptr %9, align 8, !tbaa !16
  %146 = load ptr, ptr %145, align 8, !tbaa !25
  %147 = getelementptr inbounds ptr, ptr %145, i64 1
  %148 = load ptr, ptr %147, align 8, !tbaa !25
  %149 = getelementptr inbounds ptr, ptr %145, i64 2
  %150 = load ptr, ptr %149, align 8, !tbaa !25
  %151 = load i32, ptr %10, align 4, !tbaa !17
  %152 = icmp sgt i32 %151, 0
  br i1 %152, label %153, label %174

153:                                              ; preds = %140
  %154 = zext nneg i32 %151 to i64
  br label %155

155:                                              ; preds = %171, %153
  %156 = phi i64 [ 0, %153 ], [ %172, %171 ]
  %157 = getelementptr inbounds i8, ptr %146, i64 %156
  %158 = load i8, ptr %157, align 1, !tbaa !26
  %159 = zext i8 %158 to i32
  %160 = icmp eq i32 %142, %159
  br i1 %160, label %161, label %171

161:                                              ; preds = %155
  %162 = getelementptr inbounds i8, ptr %148, i64 %156
  %163 = load i8, ptr %162, align 1, !tbaa !26
  %164 = zext i8 %163 to i32
  %165 = icmp eq i32 %143, %164
  br i1 %165, label %166, label %171

166:                                              ; preds = %161
  %167 = getelementptr inbounds i8, ptr %150, i64 %156
  %168 = load i8, ptr %167, align 1, !tbaa !26
  %169 = zext i8 %168 to i32
  %170 = icmp eq i32 %144, %169
  br i1 %170, label %192, label %171

171:                                              ; preds = %166, %161, %155
  %172 = add nuw nsw i64 %156, 1
  %173 = icmp eq i64 %172, %154
  br i1 %173, label %174, label %155, !llvm.loop !27

174:                                              ; preds = %171, %140
  %175 = icmp sgt i32 %151, 255
  br i1 %175, label %176, label %182

176:                                              ; preds = %174
  %177 = load ptr, ptr %0, align 8, !tbaa !19
  %178 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %177, i64 0, i32 5
  store i32 56, ptr %178, align 8, !tbaa !20
  %179 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %177, i64 0, i32 6
  store i32 256, ptr %179, align 4, !tbaa !26
  %180 = load ptr, ptr %0, align 8, !tbaa !19
  %181 = load ptr, ptr %180, align 8, !tbaa !22
  tail call void %181(ptr noundef nonnull %0) #3
  br label %182

182:                                              ; preds = %176, %174
  %183 = trunc i32 %142 to i8
  %184 = sext i32 %151 to i64
  %185 = getelementptr inbounds i8, ptr %146, i64 %184
  store i8 %183, ptr %185, align 1, !tbaa !26
  %186 = trunc i32 %143 to i8
  %187 = getelementptr inbounds i8, ptr %148, i64 %184
  store i8 %186, ptr %187, align 1, !tbaa !26
  %188 = trunc i32 %144 to i8
  %189 = getelementptr inbounds i8, ptr %150, i64 %184
  store i8 %188, ptr %189, align 1, !tbaa !26
  %190 = load i32, ptr %10, align 4, !tbaa !17
  %191 = add nsw i32 %190, 1
  store i32 %191, ptr %10, align 4, !tbaa !17
  br label %192

192:                                              ; preds = %166, %182
  %193 = add nuw i32 %141, 1
  %194 = icmp eq i32 %193, %117
  br i1 %194, label %195, label %140, !llvm.loop !29

195:                                              ; preds = %192, %138
  %196 = add nuw i32 %139, 1
  %197 = icmp eq i32 %196, %118
  br i1 %197, label %291, label %138, !llvm.loop !30

198:                                              ; preds = %136, %280
  %199 = phi i32 [ %281, %280 ], [ 0, %136 ]
  br i1 %120, label %280, label %200

200:                                              ; preds = %198, %277
  %201 = phi i32 [ %278, %277 ], [ 0, %198 ]
  %202 = tail call i32 @getc(ptr noundef %1)
  %203 = icmp eq i32 %202, 35
  br i1 %203, label %204, label %206

204:                                              ; preds = %200, %204
  %205 = tail call i32 @getc(ptr noundef %1)
  switch i32 %205, label %204 [
    i32 -1, label %206
    i32 10, label %206
  ]

206:                                              ; preds = %204, %204, %200
  %207 = phi i32 [ %202, %200 ], [ %205, %204 ], [ %205, %204 ]
  %208 = tail call i32 @getc(ptr noundef %1)
  %209 = icmp eq i32 %208, 35
  br i1 %209, label %210, label %212

210:                                              ; preds = %206, %210
  %211 = tail call i32 @getc(ptr noundef %1)
  switch i32 %211, label %210 [
    i32 -1, label %212
    i32 10, label %212
  ]

212:                                              ; preds = %210, %210, %206
  %213 = phi i32 [ %208, %206 ], [ %211, %210 ], [ %211, %210 ]
  %214 = tail call i32 @getc(ptr noundef %1)
  %215 = icmp eq i32 %214, 35
  br i1 %215, label %216, label %218

216:                                              ; preds = %212, %216
  %217 = tail call i32 @getc(ptr noundef %1)
  switch i32 %217, label %216 [
    i32 -1, label %218
    i32 10, label %218
  ]

218:                                              ; preds = %216, %216, %212
  %219 = phi i32 [ %214, %212 ], [ %217, %216 ], [ %217, %216 ]
  %220 = icmp eq i32 %207, -1
  %221 = icmp eq i32 %213, -1
  %222 = or i1 %220, %221
  %223 = icmp eq i32 %219, -1
  %224 = or i1 %222, %223
  br i1 %224, label %225, label %229

225:                                              ; preds = %218
  %226 = load ptr, ptr %0, align 8, !tbaa !19
  %227 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %226, i64 0, i32 5
  store i32 1038, ptr %227, align 8, !tbaa !20
  %228 = load ptr, ptr %226, align 8, !tbaa !22
  tail call void %228(ptr noundef nonnull %0) #3
  br label %229

229:                                              ; preds = %225, %218
  %230 = load ptr, ptr %9, align 8, !tbaa !16
  %231 = load ptr, ptr %230, align 8, !tbaa !25
  %232 = getelementptr inbounds ptr, ptr %230, i64 1
  %233 = load ptr, ptr %232, align 8, !tbaa !25
  %234 = getelementptr inbounds ptr, ptr %230, i64 2
  %235 = load ptr, ptr %234, align 8, !tbaa !25
  %236 = load i32, ptr %10, align 4, !tbaa !17
  %237 = icmp sgt i32 %236, 0
  br i1 %237, label %238, label %259

238:                                              ; preds = %229
  %239 = zext nneg i32 %236 to i64
  br label %240

240:                                              ; preds = %256, %238
  %241 = phi i64 [ 0, %238 ], [ %257, %256 ]
  %242 = getelementptr inbounds i8, ptr %231, i64 %241
  %243 = load i8, ptr %242, align 1, !tbaa !26
  %244 = zext i8 %243 to i32
  %245 = icmp eq i32 %207, %244
  br i1 %245, label %246, label %256

246:                                              ; preds = %240
  %247 = getelementptr inbounds i8, ptr %233, i64 %241
  %248 = load i8, ptr %247, align 1, !tbaa !26
  %249 = zext i8 %248 to i32
  %250 = icmp eq i32 %213, %249
  br i1 %250, label %251, label %256

251:                                              ; preds = %246
  %252 = getelementptr inbounds i8, ptr %235, i64 %241
  %253 = load i8, ptr %252, align 1, !tbaa !26
  %254 = zext i8 %253 to i32
  %255 = icmp eq i32 %219, %254
  br i1 %255, label %277, label %256

256:                                              ; preds = %251, %246, %240
  %257 = add nuw nsw i64 %241, 1
  %258 = icmp eq i64 %257, %239
  br i1 %258, label %259, label %240, !llvm.loop !27

259:                                              ; preds = %256, %229
  %260 = icmp sgt i32 %236, 255
  br i1 %260, label %261, label %267

261:                                              ; preds = %259
  %262 = load ptr, ptr %0, align 8, !tbaa !19
  %263 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %262, i64 0, i32 5
  store i32 56, ptr %263, align 8, !tbaa !20
  %264 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %262, i64 0, i32 6
  store i32 256, ptr %264, align 4, !tbaa !26
  %265 = load ptr, ptr %0, align 8, !tbaa !19
  %266 = load ptr, ptr %265, align 8, !tbaa !22
  tail call void %266(ptr noundef nonnull %0) #3
  br label %267

267:                                              ; preds = %261, %259
  %268 = trunc i32 %207 to i8
  %269 = sext i32 %236 to i64
  %270 = getelementptr inbounds i8, ptr %231, i64 %269
  store i8 %268, ptr %270, align 1, !tbaa !26
  %271 = trunc i32 %213 to i8
  %272 = getelementptr inbounds i8, ptr %233, i64 %269
  store i8 %271, ptr %272, align 1, !tbaa !26
  %273 = trunc i32 %219 to i8
  %274 = getelementptr inbounds i8, ptr %235, i64 %269
  store i8 %273, ptr %274, align 1, !tbaa !26
  %275 = load i32, ptr %10, align 4, !tbaa !17
  %276 = add nsw i32 %275, 1
  store i32 %276, ptr %10, align 4, !tbaa !17
  br label %277

277:                                              ; preds = %251, %267
  %278 = add nuw i32 %201, 1
  %279 = icmp eq i32 %278, %117
  br i1 %279, label %280, label %200, !llvm.loop !31

280:                                              ; preds = %277, %198
  %281 = add nuw i32 %199, 1
  %282 = icmp eq i32 %281, %118
  br i1 %282, label %291, label %198, !llvm.loop !32

283:                                              ; preds = %135
  %284 = load ptr, ptr %0, align 8, !tbaa !19
  %285 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %284, i64 0, i32 5
  store i32 1038, ptr %285, align 8, !tbaa !20
  %286 = load ptr, ptr %284, align 8, !tbaa !22
  tail call void %286(ptr noundef nonnull %0) #3
  br label %291

287:                                              ; preds = %2
  %288 = load ptr, ptr %0, align 8, !tbaa !19
  %289 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %288, i64 0, i32 5
  store i32 1038, ptr %289, align 8, !tbaa !20
  %290 = load ptr, ptr %288, align 8, !tbaa !22
  tail call void %290(ptr noundef nonnull %0) #3
  br label %291

291:                                              ; preds = %280, %195, %283, %137, %136, %287, %114
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @read_pbm_integer(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  br label %3

3:                                                ; preds = %10, %2
  %4 = tail call i32 @getc(ptr noundef %1)
  %5 = icmp eq i32 %4, 35
  br i1 %5, label %6, label %8

6:                                                ; preds = %3, %6
  %7 = tail call i32 @getc(ptr noundef %1)
  switch i32 %7, label %6 [
    i32 -1, label %8
    i32 10, label %8
  ]

8:                                                ; preds = %6, %6, %3
  %9 = phi i32 [ %4, %3 ], [ %7, %6 ], [ %7, %6 ]
  switch i32 %9, label %15 [
    i32 -1, label %11
    i32 32, label %10
    i32 13, label %10
    i32 10, label %10
    i32 9, label %10
  ]

10:                                               ; preds = %8, %8, %8, %8
  br label %3

11:                                               ; preds = %8
  %12 = load ptr, ptr %0, align 8, !tbaa !19
  %13 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %12, i64 0, i32 5
  store i32 1038, ptr %13, align 8, !tbaa !20
  %14 = load ptr, ptr %12, align 8, !tbaa !22
  tail call void %14(ptr noundef nonnull %0) #3
  br label %15

15:                                               ; preds = %8, %11
  %16 = add i32 %9, -58
  %17 = icmp ult i32 %16, -10
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load ptr, ptr %0, align 8, !tbaa !19
  %20 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %19, i64 0, i32 5
  store i32 1038, ptr %20, align 8, !tbaa !20
  %21 = load ptr, ptr %19, align 8, !tbaa !22
  tail call void %21(ptr noundef nonnull %0) #3
  br label %22

22:                                               ; preds = %15, %18
  %23 = add nsw i32 %9, -48
  br label %24

24:                                               ; preds = %34, %22
  %25 = phi i32 [ %23, %22 ], [ %36, %34 ]
  %26 = tail call i32 @getc(ptr noundef %1)
  %27 = icmp eq i32 %26, 35
  br i1 %27, label %28, label %30

28:                                               ; preds = %24, %28
  %29 = tail call i32 @getc(ptr noundef %1)
  switch i32 %29, label %28 [
    i32 -1, label %30
    i32 10, label %30
  ]

30:                                               ; preds = %28, %28, %24
  %31 = phi i32 [ %26, %24 ], [ %29, %28 ], [ %29, %28 ]
  %32 = add i32 %31, -48
  %33 = icmp ult i32 %32, 10
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = mul i32 %25, 10
  %36 = add i32 %32, %35
  br label %24, !llvm.loop !33

37:                                               ; preds = %30
  ret i32 %25
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 8}
!6 = !{!"jpeg_decompress_struct", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !7, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !11, i64 72, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !10, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !10, i64 144, !10, i64 148, !7, i64 152, !10, i64 160, !10, i64 164, !10, i64 168, !10, i64 172, !10, i64 176, !7, i64 184, !8, i64 192, !8, i64 224, !8, i64 256, !10, i64 288, !7, i64 296, !10, i64 304, !10, i64 308, !8, i64 312, !8, i64 328, !8, i64 344, !10, i64 360, !10, i64 364, !8, i64 368, !12, i64 370, !12, i64 372, !10, i64 376, !8, i64 380, !10, i64 384, !10, i64 388, !10, i64 392, !10, i64 396, !10, i64 400, !7, i64 408, !10, i64 416, !8, i64 424, !10, i64 456, !10, i64 460, !10, i64 464, !8, i64 468, !10, i64 508, !10, i64 512, !10, i64 516, !10, i64 520, !10, i64 524, !7, i64 528, !7, i64 536, !7, i64 544, !7, i64 552, !7, i64 560, !7, i64 568, !7, i64 576, !7, i64 584, !7, i64 592, !7, i64 600, !7, i64 608}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"double", !8, i64 0}
!12 = !{!"short", !8, i64 0}
!13 = !{!14, !7, i64 16}
!14 = !{!"jpeg_memory_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !15, i64 88}
!15 = !{!"long", !8, i64 0}
!16 = !{!6, !7, i64 152}
!17 = !{!6, !10, i64 148}
!18 = !{!10, !10, i64 0}
!19 = !{!6, !7, i64 0}
!20 = !{!21, !10, i64 40}
!21 = !{!"jpeg_error_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !8, i64 44, !10, i64 124, !15, i64 128, !7, i64 136, !10, i64 144, !7, i64 152, !10, i64 160, !10, i64 164}
!22 = !{!21, !7, i64 0}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.unroll.disable"}
!25 = !{!7, !7, i64 0}
!26 = !{!8, !8, i64 0}
!27 = distinct !{!27, !24}
!28 = distinct !{!28, !24}
!29 = distinct !{!29, !24}
!30 = distinct !{!30, !24}
!31 = distinct !{!31, !24}
!32 = distinct !{!32, !24}
!33 = distinct !{!33, !24}
