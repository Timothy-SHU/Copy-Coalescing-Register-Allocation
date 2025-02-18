; ModuleID = 'blender/source/blender/imbuf/intern/iris.c'
source_filename = "blender/source/blender/imbuf/intern/iris.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.IMAGE = type { i16, i16, i16, i16, i16, i16, i32, i32, i32, [80 x i8], i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, i32, i32, ptr, ptr }

@file_data = internal unnamed_addr global ptr null, align 8
@file_offset = internal unnamed_addr global i32 0, align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [47 x i8] c"longimagedata: bad magic number in image file\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"longimagedata: image must have 1 or 2 byte per pix chan\0A\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"iris starttab\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"iris endtab\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"iris image\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"iris lengthtab\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"iris rlebuf\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"iris lumbuf\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"output_iris: rlebuf is too small - bad poop\0A\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"output_iris: not enough space for image!!\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"no name\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @imb_is_a_iris(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1, !tbaa !34
  %3 = zext i8 %2 to i32
  %4 = shl nuw nsw i32 %3, 8
  %5 = getelementptr inbounds i8, ptr %0, i64 1
  %6 = load i8, ptr %5, align 1, !tbaa !34
  %7 = zext i8 %6 to i32
  %8 = or disjoint i32 %4, %7
  %9 = icmp eq i32 %8, 474
  %10 = shl nuw nsw i32 %7, 8
  %11 = or disjoint i32 %10, %3
  %12 = icmp eq i32 %11, 474
  %13 = select i1 %9, i1 true, i1 %12
  %14 = zext i1 %13 to i32
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define dso_local ptr @imb_loadiris(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #1 {
  %5 = load i8, ptr %0, align 1, !tbaa !34
  %6 = zext i8 %5 to i32
  %7 = shl nuw nsw i32 %6, 8
  %8 = getelementptr inbounds i8, ptr %0, i64 1
  %9 = load i8, ptr %8, align 1, !tbaa !34
  %10 = zext i8 %9 to i32
  %11 = or disjoint i32 %7, %10
  %12 = icmp ne i32 %11, 474
  %13 = shl nuw nsw i32 %10, 8
  %14 = or disjoint i32 %13, %6
  %15 = icmp ne i32 %14, 474
  %16 = select i1 %12, i1 %15, i1 false
  br i1 %16, label %614, label %17

17:                                               ; preds = %4
  tail call void @colorspace_set_default_role(ptr noundef %3, i32 noundef 64, i32 noundef 4) #10
  store ptr %0, ptr @file_data, align 8, !tbaa !37
  store i32 2, ptr @file_offset, align 4, !tbaa !39
  %18 = load i8, ptr %0, align 1, !tbaa !34
  %19 = zext i8 %18 to i16
  %20 = shl nuw i16 %19, 8
  %21 = load i8, ptr %8, align 1, !tbaa !34
  %22 = zext i8 %21 to i16
  %23 = or disjoint i16 %20, %22
  %24 = getelementptr inbounds i8, ptr %0, i64 2
  store i32 4, ptr @file_offset, align 4, !tbaa !39
  %25 = load i8, ptr %24, align 1, !tbaa !34
  %26 = getelementptr inbounds i8, ptr %0, i64 3
  %27 = load i8, ptr %26, align 1, !tbaa !34
  %28 = getelementptr inbounds i8, ptr %0, i64 6
  store i32 8, ptr @file_offset, align 4, !tbaa !39
  %29 = load i8, ptr %28, align 1, !tbaa !34
  %30 = zext i8 %29 to i16
  %31 = shl nuw i16 %30, 8
  %32 = getelementptr inbounds i8, ptr %0, i64 7
  %33 = load i8, ptr %32, align 1, !tbaa !34
  %34 = zext i8 %33 to i16
  %35 = or disjoint i16 %31, %34
  %36 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 10, ptr @file_offset, align 4, !tbaa !39
  %37 = load i8, ptr %36, align 1, !tbaa !34
  %38 = zext i8 %37 to i32
  %39 = shl nuw nsw i32 %38, 8
  %40 = getelementptr inbounds i8, ptr %0, i64 9
  %41 = load i8, ptr %40, align 1, !tbaa !34
  %42 = zext i8 %41 to i32
  %43 = or disjoint i32 %39, %42
  %44 = getelementptr inbounds i8, ptr %0, i64 10
  store i32 12, ptr @file_offset, align 4, !tbaa !39
  %45 = load i8, ptr %44, align 1, !tbaa !34
  %46 = zext i8 %45 to i16
  %47 = shl nuw i16 %46, 8
  %48 = getelementptr inbounds i8, ptr %0, i64 11
  %49 = load i8, ptr %48, align 1, !tbaa !34
  %50 = zext i8 %49 to i16
  %51 = or disjoint i16 %47, %50
  %52 = icmp eq i16 %23, 474
  br i1 %52, label %56, label %53

53:                                               ; preds = %17
  %54 = load ptr, ptr @stderr, align 8, !tbaa !37
  %55 = tail call i64 @fwrite(ptr nonnull @.str, i64 46, i64 1, ptr %54) #11
  br label %614

56:                                               ; preds = %17
  %57 = zext i8 %27 to i32
  %58 = icmp eq i8 %25, 1
  %59 = add nsw i32 %57, -3
  %60 = icmp ult i32 %59, -2
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load ptr, ptr @stderr, align 8, !tbaa !37
  %63 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 56, i64 1, ptr %62) #11
  br label %614

64:                                               ; preds = %56
  %65 = zext i16 %35 to i32
  %66 = zext i16 %51 to i32
  %67 = and i32 %2, 2
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %64
  %70 = shl i8 %49, 3
  %71 = tail call ptr @IMB_allocImBuf(i32 noundef %65, i32 noundef %43, i8 noundef zeroext %70, i32 noundef 0) #10
  %72 = icmp eq ptr %71, null
  br i1 %72, label %614, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.ImBuf, ptr %71, i64 0, i32 26
  store i32 474, ptr %74, align 8, !tbaa !41
  br label %614

75:                                               ; preds = %64
  br i1 %58, label %76, label %351

76:                                               ; preds = %75
  %77 = shl nuw nsw i32 %43, 2
  %78 = mul i32 %77, %66
  %79 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %80 = sext i32 %78 to i64
  %81 = tail call ptr %79(i64 noundef %80, ptr noundef nonnull @.str.2) #10
  %82 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %83 = tail call ptr %82(i64 noundef %80, ptr noundef nonnull @.str.3) #10
  store i32 512, ptr @file_offset, align 4, !tbaa !39
  %84 = icmp eq i32 %78, 0
  br i1 %84, label %122, label %85

85:                                               ; preds = %76
  %86 = load i32, ptr @file_offset, align 4, !tbaa !39
  %87 = load ptr, ptr @file_data, align 8, !tbaa !37
  %88 = sext i32 %86 to i64
  br label %94

89:                                               ; preds = %94
  %90 = trunc i64 %99 to i32
  store i32 %90, ptr @file_offset, align 4, !tbaa !39
  %91 = load ptr, ptr @file_data, align 8, !tbaa !37
  %92 = shl i64 %99, 32
  %93 = ashr exact i64 %92, 32
  br label %132

94:                                               ; preds = %85, %94
  %95 = phi i64 [ %88, %85 ], [ %99, %94 ]
  %96 = phi i32 [ %78, %85 ], [ %118, %94 ]
  %97 = phi ptr [ %81, %85 ], [ %117, %94 ]
  %98 = getelementptr inbounds i8, ptr %87, i64 %95
  %99 = add nsw i64 %95, 4
  %100 = load i8, ptr %98, align 1, !tbaa !34
  %101 = zext i8 %100 to i32
  %102 = shl nuw i32 %101, 24
  %103 = getelementptr inbounds i8, ptr %98, i64 1
  %104 = load i8, ptr %103, align 1, !tbaa !34
  %105 = zext i8 %104 to i32
  %106 = shl nuw nsw i32 %105, 16
  %107 = or disjoint i32 %106, %102
  %108 = getelementptr inbounds i8, ptr %98, i64 2
  %109 = load i8, ptr %108, align 1, !tbaa !34
  %110 = zext i8 %109 to i32
  %111 = shl nuw nsw i32 %110, 8
  %112 = or disjoint i32 %107, %111
  %113 = getelementptr inbounds i8, ptr %98, i64 3
  %114 = load i8, ptr %113, align 1, !tbaa !34
  %115 = zext i8 %114 to i32
  %116 = or disjoint i32 %112, %115
  %117 = getelementptr inbounds i32, ptr %97, i64 1
  store i32 %116, ptr %97, align 4, !tbaa !39
  %118 = add nsw i32 %96, -4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %89, label %94, !llvm.loop !46

120:                                              ; preds = %132
  %121 = trunc i64 %137 to i32
  store i32 %121, ptr @file_offset, align 4, !tbaa !39
  br label %122

122:                                              ; preds = %76, %120
  %123 = icmp ne i32 %43, 0
  br i1 %123, label %124, label %179

124:                                              ; preds = %122
  %125 = icmp eq i16 %51, 0
  %126 = zext nneg i32 %43 to i64
  %127 = or disjoint i16 %47, %50
  %128 = zext nneg i32 %43 to i64
  %129 = or disjoint i32 %39, %42
  %130 = zext nneg i32 %129 to i64
  %131 = zext i16 %127 to i64
  br label %158

132:                                              ; preds = %89, %132
  %133 = phi i64 [ %93, %89 ], [ %137, %132 ]
  %134 = phi i32 [ %78, %89 ], [ %156, %132 ]
  %135 = phi ptr [ %83, %89 ], [ %155, %132 ]
  %136 = getelementptr inbounds i8, ptr %91, i64 %133
  %137 = add nsw i64 %133, 4
  %138 = load i8, ptr %136, align 1, !tbaa !34
  %139 = zext i8 %138 to i32
  %140 = shl nuw i32 %139, 24
  %141 = getelementptr inbounds i8, ptr %136, i64 1
  %142 = load i8, ptr %141, align 1, !tbaa !34
  %143 = zext i8 %142 to i32
  %144 = shl nuw nsw i32 %143, 16
  %145 = or disjoint i32 %144, %140
  %146 = getelementptr inbounds i8, ptr %136, i64 2
  %147 = load i8, ptr %146, align 1, !tbaa !34
  %148 = zext i8 %147 to i32
  %149 = shl nuw nsw i32 %148, 8
  %150 = or disjoint i32 %145, %149
  %151 = getelementptr inbounds i8, ptr %136, i64 3
  %152 = load i8, ptr %151, align 1, !tbaa !34
  %153 = zext i8 %152 to i32
  %154 = or disjoint i32 %150, %153
  %155 = getelementptr inbounds i32, ptr %135, i64 1
  store i32 %154, ptr %135, align 4, !tbaa !39
  %156 = add nsw i32 %134, -4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %120, label %132, !llvm.loop !46

158:                                              ; preds = %124, %174
  %159 = phi i64 [ 0, %124 ], [ %176, %174 ]
  %160 = phi i1 [ %123, %124 ], [ %177, %174 ]
  %161 = phi i32 [ 0, %124 ], [ %175, %174 ]
  br i1 %125, label %174, label %162

162:                                              ; preds = %158
  %163 = getelementptr i32, ptr %81, i64 %159
  br label %167

164:                                              ; preds = %167
  %165 = add nuw nsw i64 %168, 1
  %166 = icmp eq i64 %165, %131
  br i1 %166, label %174, label %167, !llvm.loop !49

167:                                              ; preds = %162, %164
  %168 = phi i64 [ 0, %162 ], [ %165, %164 ]
  %169 = phi i32 [ %161, %162 ], [ %172, %164 ]
  %170 = mul nuw nsw i64 %168, %126
  %171 = getelementptr i32, ptr %163, i64 %170
  %172 = load i32, ptr %171, align 4, !tbaa !39
  %173 = icmp ult i32 %172, %169
  br i1 %173, label %179, label %164

174:                                              ; preds = %164, %158
  %175 = phi i32 [ %161, %158 ], [ %172, %164 ]
  %176 = add nuw nsw i64 %159, 1
  %177 = icmp ult i64 %176, %128
  %178 = icmp eq i64 %176, %130
  br i1 %178, label %179, label %158, !llvm.loop !50

179:                                              ; preds = %174, %167, %122
  %180 = phi i1 [ %123, %122 ], [ %160, %167 ], [ %177, %174 ]
  %181 = icmp eq i8 %27, 1
  br i1 %181, label %182, label %271

182:                                              ; preds = %179
  %183 = shl i8 %49, 3
  %184 = tail call ptr @IMB_allocImBuf(i32 noundef %65, i32 noundef %43, i8 noundef zeroext %183, i32 noundef 1) #10
  %185 = getelementptr inbounds %struct.ImBuf, ptr %184, i64 0, i32 4
  %186 = load i8, ptr %185, align 8, !tbaa !51
  %187 = icmp ugt i8 %186, 32
  br i1 %187, label %188, label %189

188:                                              ; preds = %182
  store i8 32, ptr %185, align 8, !tbaa !51
  br label %189

189:                                              ; preds = %188, %182
  %190 = getelementptr inbounds %struct.ImBuf, ptr %184, i64 0, i32 8
  %191 = load ptr, ptr %190, align 8, !tbaa !52
  br i1 %180, label %192, label %227

192:                                              ; preds = %189
  %193 = icmp eq i16 %51, 0
  br i1 %193, label %347, label %194

194:                                              ; preds = %192
  %195 = icmp eq i32 %43, 0
  %196 = zext i16 %35 to i64
  %197 = or disjoint i32 %39, %42
  %198 = or disjoint i16 %47, %50
  %199 = zext i16 %198 to i64
  %200 = zext nneg i32 %197 to i64
  br label %201

201:                                              ; preds = %194, %224
  %202 = phi i64 [ 0, %194 ], [ %225, %224 ]
  br i1 %195, label %224, label %203

203:                                              ; preds = %201
  %204 = trunc i64 %202 to i32
  %205 = mul i32 %43, %204
  %206 = zext i32 %205 to i64
  %207 = trunc i64 %202 to i32
  %208 = sub i32 3, %207
  br label %209

209:                                              ; preds = %203, %209
  %210 = phi i64 [ 0, %203 ], [ %222, %209 ]
  %211 = phi ptr [ %191, %203 ], [ %221, %209 ]
  %212 = add nuw nsw i64 %210, %206
  %213 = getelementptr inbounds i32, ptr %81, i64 %212
  %214 = load i32, ptr %213, align 4, !tbaa !39
  store i32 %214, ptr @file_offset, align 4, !tbaa !39
  %215 = load ptr, ptr @file_data, align 8, !tbaa !37
  %216 = sext i32 %214 to i64
  %217 = getelementptr inbounds i8, ptr %215, i64 %216
  %218 = getelementptr inbounds i32, ptr %83, i64 %212
  %219 = load i32, ptr %218, align 4, !tbaa !39
  %220 = add i32 %219, %214
  store i32 %220, ptr @file_offset, align 4, !tbaa !39
  tail call fastcc void @expandrow(ptr noundef %211, ptr noundef %217, i32 noundef %208)
  %221 = getelementptr inbounds i32, ptr %211, i64 %196
  %222 = add nuw nsw i64 %210, 1
  %223 = icmp eq i64 %222, %200
  br i1 %223, label %224, label %209, !llvm.loop !53

224:                                              ; preds = %209, %201
  %225 = add nuw nsw i64 %202, 1
  %226 = icmp eq i64 %225, %199
  br i1 %226, label %347, label %201, !llvm.loop !54

227:                                              ; preds = %189
  %228 = icmp eq i32 %43, 0
  br i1 %228, label %347, label %229

229:                                              ; preds = %227
  %230 = getelementptr inbounds %struct.ImBuf, ptr %184, i64 0, i32 16
  %231 = load ptr, ptr %230, align 8, !tbaa !55
  %232 = icmp eq i16 %51, 0
  %233 = zext i16 %35 to i64
  %234 = zext nneg i32 %43 to i64
  %235 = or disjoint i16 %47, %50
  %236 = or disjoint i32 %39, %42
  %237 = zext nneg i32 %236 to i64
  %238 = zext i16 %235 to i64
  br label %239

239:                                              ; preds = %229, %266
  %240 = phi i64 [ 0, %229 ], [ %269, %266 ]
  %241 = phi ptr [ %191, %229 ], [ %267, %266 ]
  %242 = phi ptr [ %231, %229 ], [ %268, %266 ]
  br i1 %232, label %266, label %243

243:                                              ; preds = %239, %263
  %244 = phi i64 [ %264, %263 ], [ 0, %239 ]
  %245 = mul nuw nsw i64 %244, %234
  %246 = add nuw nsw i64 %245, %240
  %247 = getelementptr inbounds i32, ptr %81, i64 %246
  %248 = load i32, ptr %247, align 4, !tbaa !39
  store i32 %248, ptr @file_offset, align 4, !tbaa !39
  %249 = load ptr, ptr @file_data, align 8, !tbaa !37
  %250 = sext i32 %248 to i64
  %251 = getelementptr inbounds i8, ptr %249, i64 %250
  %252 = getelementptr inbounds i32, ptr %83, i64 %246
  %253 = load i32, ptr %252, align 4, !tbaa !39
  %254 = add i32 %253, %248
  store i32 %254, ptr @file_offset, align 4, !tbaa !39
  %255 = icmp ult i64 %244, 4
  br i1 %255, label %258, label %256

256:                                              ; preds = %243
  %257 = icmp ult i64 %244, 8
  br i1 %257, label %258, label %263

258:                                              ; preds = %256, %243
  %259 = phi i32 [ 3, %243 ], [ 7, %256 ]
  %260 = phi ptr [ %241, %243 ], [ %242, %256 ]
  %261 = trunc i64 %244 to i32
  %262 = xor i32 %259, %261
  tail call fastcc void @expandrow(ptr noundef %260, ptr noundef %251, i32 noundef %262)
  br label %263

263:                                              ; preds = %258, %256
  %264 = add nuw nsw i64 %244, 1
  %265 = icmp eq i64 %264, %238
  br i1 %265, label %266, label %243, !llvm.loop !56

266:                                              ; preds = %263, %239
  %267 = getelementptr inbounds i32, ptr %241, i64 %233
  %268 = getelementptr inbounds i32, ptr %242, i64 %233
  %269 = add nuw nsw i64 %240, 1
  %270 = icmp eq i64 %269, %237
  br i1 %270, label %347, label %239, !llvm.loop !57

271:                                              ; preds = %179
  %272 = and i32 %2, 1
  %273 = or disjoint i32 %272, 32
  %274 = tail call ptr @IMB_allocImBuf(i32 noundef %65, i32 noundef %43, i8 noundef zeroext 32, i32 noundef %273) #10
  %275 = getelementptr inbounds %struct.ImBuf, ptr %274, i64 0, i32 9
  %276 = load ptr, ptr %275, align 8, !tbaa !58
  br i1 %180, label %288, label %277

277:                                              ; preds = %271
  %278 = icmp eq i32 %43, 0
  br i1 %278, label %347, label %279

279:                                              ; preds = %277
  %280 = icmp eq i16 %51, 0
  %281 = shl nuw nsw i32 %65, 2
  %282 = zext nneg i32 %281 to i64
  %283 = zext nneg i32 %43 to i64
  %284 = or disjoint i16 %47, %50
  %285 = or disjoint i32 %39, %42
  %286 = zext nneg i32 %285 to i64
  %287 = zext i16 %284 to i64
  br label %324

288:                                              ; preds = %271
  %289 = icmp eq i16 %51, 0
  br i1 %289, label %347, label %290

290:                                              ; preds = %288
  %291 = icmp eq i32 %43, 0
  %292 = shl nuw nsw i32 %65, 2
  %293 = zext nneg i32 %292 to i64
  %294 = or disjoint i32 %39, %42
  %295 = or disjoint i16 %47, %50
  %296 = zext i16 %295 to i64
  %297 = zext nneg i32 %294 to i64
  br label %298

298:                                              ; preds = %290, %321
  %299 = phi i64 [ 0, %290 ], [ %322, %321 ]
  br i1 %291, label %321, label %300

300:                                              ; preds = %298
  %301 = trunc i64 %299 to i32
  %302 = mul i32 %43, %301
  %303 = zext i32 %302 to i64
  %304 = trunc i64 %299 to i32
  %305 = sub i32 3, %304
  br label %306

306:                                              ; preds = %300, %306
  %307 = phi i64 [ 0, %300 ], [ %319, %306 ]
  %308 = phi ptr [ %276, %300 ], [ %318, %306 ]
  %309 = add nuw nsw i64 %307, %303
  %310 = getelementptr inbounds i32, ptr %81, i64 %309
  %311 = load i32, ptr %310, align 4, !tbaa !39
  store i32 %311, ptr @file_offset, align 4, !tbaa !39
  %312 = load ptr, ptr @file_data, align 8, !tbaa !37
  %313 = sext i32 %311 to i64
  %314 = getelementptr inbounds i8, ptr %312, i64 %313
  %315 = getelementptr inbounds i32, ptr %83, i64 %309
  %316 = load i32, ptr %315, align 4, !tbaa !39
  %317 = add i32 %316, %311
  store i32 %317, ptr @file_offset, align 4, !tbaa !39
  tail call fastcc void @expandrow2(ptr noundef %308, ptr noundef %314, i32 noundef %305)
  %318 = getelementptr inbounds float, ptr %308, i64 %293
  %319 = add nuw nsw i64 %307, 1
  %320 = icmp eq i64 %319, %297
  br i1 %320, label %321, label %306, !llvm.loop !59

321:                                              ; preds = %306, %298
  %322 = add nuw nsw i64 %299, 1
  %323 = icmp eq i64 %322, %296
  br i1 %323, label %347, label %298, !llvm.loop !60

324:                                              ; preds = %279, %343
  %325 = phi i64 [ 0, %279 ], [ %345, %343 ]
  %326 = phi ptr [ %276, %279 ], [ %344, %343 ]
  br i1 %280, label %343, label %327

327:                                              ; preds = %324, %327
  %328 = phi i64 [ %341, %327 ], [ 0, %324 ]
  %329 = mul nuw nsw i64 %328, %283
  %330 = add nuw nsw i64 %329, %325
  %331 = getelementptr inbounds i32, ptr %81, i64 %330
  %332 = load i32, ptr %331, align 4, !tbaa !39
  store i32 %332, ptr @file_offset, align 4, !tbaa !39
  %333 = load ptr, ptr @file_data, align 8, !tbaa !37
  %334 = sext i32 %332 to i64
  %335 = getelementptr inbounds i8, ptr %333, i64 %334
  %336 = getelementptr inbounds i32, ptr %83, i64 %330
  %337 = load i32, ptr %336, align 4, !tbaa !39
  %338 = add i32 %337, %332
  store i32 %338, ptr @file_offset, align 4, !tbaa !39
  %339 = trunc i64 %328 to i32
  %340 = sub i32 3, %339
  tail call fastcc void @expandrow2(ptr noundef %326, ptr noundef %335, i32 noundef %340)
  %341 = add nuw nsw i64 %328, 1
  %342 = icmp eq i64 %341, %287
  br i1 %342, label %343, label %327, !llvm.loop !61

343:                                              ; preds = %327, %324
  %344 = getelementptr inbounds float, ptr %326, i64 %282
  %345 = add nuw nsw i64 %325, 1
  %346 = icmp eq i64 %345, %286
  br i1 %346, label %347, label %324, !llvm.loop !62

347:                                              ; preds = %343, %321, %266, %224, %277, %288, %227, %192
  %348 = phi ptr [ %184, %192 ], [ %184, %227 ], [ %274, %288 ], [ %274, %277 ], [ %184, %224 ], [ %184, %266 ], [ %274, %321 ], [ %274, %343 ]
  %349 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %349(ptr noundef %81) #10
  %350 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %350(ptr noundef %83) #10
  br label %466

351:                                              ; preds = %75
  %352 = icmp eq i8 %27, 1
  br i1 %352, label %353, label %410

353:                                              ; preds = %351
  %354 = shl i8 %49, 3
  %355 = tail call ptr @IMB_allocImBuf(i32 noundef %65, i32 noundef %43, i8 noundef zeroext %354, i32 noundef 1) #10
  %356 = getelementptr inbounds %struct.ImBuf, ptr %355, i64 0, i32 4
  %357 = load i8, ptr %356, align 8, !tbaa !51
  %358 = icmp ugt i8 %357, 32
  br i1 %358, label %359, label %360

359:                                              ; preds = %353
  store i8 32, ptr %356, align 8, !tbaa !51
  br label %360

360:                                              ; preds = %359, %353
  %361 = getelementptr inbounds %struct.ImBuf, ptr %355, i64 0, i32 8
  %362 = load ptr, ptr %361, align 8, !tbaa !52
  %363 = getelementptr inbounds %struct.ImBuf, ptr %355, i64 0, i32 16
  %364 = load ptr, ptr %363, align 8, !tbaa !55
  store i32 512, ptr @file_offset, align 4, !tbaa !39
  %365 = icmp eq i16 %51, 0
  br i1 %365, label %466, label %366

366:                                              ; preds = %360
  %367 = load ptr, ptr @file_data, align 8, !tbaa !37
  %368 = getelementptr inbounds i8, ptr %367, i64 512
  %369 = icmp eq i32 %43, 0
  %370 = icmp eq i16 %35, 0
  %371 = zext i16 %35 to i64
  %372 = or disjoint i32 %39, %42
  %373 = or disjoint i16 %47, %50
  %374 = zext i16 %373 to i64
  br label %375

375:                                              ; preds = %366, %405
  %376 = phi i64 [ 0, %366 ], [ %408, %405 ]
  %377 = phi ptr [ null, %366 ], [ %407, %405 ]
  %378 = phi ptr [ %368, %366 ], [ %406, %405 ]
  %379 = icmp ult i64 %376, 4
  %380 = icmp ult i64 %376, 8
  %381 = select i1 %380, ptr %364, ptr %377
  %382 = select i1 %379, ptr %362, ptr %381
  br i1 %369, label %405, label %383

383:                                              ; preds = %375
  %384 = sub nsw i64 3, %376
  br label %385

385:                                              ; preds = %383, %400
  %386 = phi ptr [ %382, %383 ], [ %402, %400 ]
  %387 = phi i32 [ 0, %383 ], [ %403, %400 ]
  %388 = phi ptr [ %378, %383 ], [ %401, %400 ]
  br i1 %370, label %400, label %389

389:                                              ; preds = %385
  %390 = getelementptr inbounds i8, ptr %386, i64 %384
  br label %391

391:                                              ; preds = %389, %391
  %392 = phi i32 [ %395, %391 ], [ %65, %389 ]
  %393 = phi ptr [ %398, %391 ], [ %390, %389 ]
  %394 = phi ptr [ %396, %391 ], [ %388, %389 ]
  %395 = add nsw i32 %392, -1
  %396 = getelementptr inbounds i8, ptr %394, i64 1
  %397 = load i8, ptr %394, align 1, !tbaa !34
  store i8 %397, ptr %393, align 1, !tbaa !34
  %398 = getelementptr inbounds i8, ptr %393, i64 4
  %399 = icmp eq i32 %395, 0
  br i1 %399, label %400, label %391, !llvm.loop !63

400:                                              ; preds = %391, %385
  %401 = getelementptr inbounds i8, ptr %388, i64 %371
  %402 = getelementptr inbounds i32, ptr %386, i64 %371
  %403 = add nuw nsw i32 %387, 1
  %404 = icmp eq i32 %403, %372
  br i1 %404, label %405, label %385, !llvm.loop !64

405:                                              ; preds = %400, %375
  %406 = phi ptr [ %378, %375 ], [ %401, %400 ]
  %407 = phi ptr [ %382, %375 ], [ %402, %400 ]
  %408 = add nuw nsw i64 %376, 1
  %409 = icmp eq i64 %408, %374
  br i1 %409, label %466, label %375, !llvm.loop !65

410:                                              ; preds = %351
  %411 = and i32 %2, 1
  %412 = or disjoint i32 %411, 32
  %413 = tail call ptr @IMB_allocImBuf(i32 noundef %65, i32 noundef %43, i8 noundef zeroext 32, i32 noundef %412) #10
  %414 = getelementptr inbounds %struct.ImBuf, ptr %413, i64 0, i32 9
  %415 = load ptr, ptr %414, align 8, !tbaa !58
  store i32 512, ptr @file_offset, align 4, !tbaa !39
  %416 = icmp eq i16 %51, 0
  br i1 %416, label %466, label %417

417:                                              ; preds = %410
  %418 = load ptr, ptr @file_data, align 8, !tbaa !37
  %419 = getelementptr inbounds i8, ptr %418, i64 512
  %420 = icmp eq i32 %43, 0
  %421 = icmp eq i16 %35, 0
  %422 = shl nuw nsw i32 %65, 1
  %423 = zext nneg i32 %422 to i64
  %424 = shl nuw nsw i32 %65, 2
  %425 = zext nneg i32 %424 to i64
  %426 = or disjoint i32 %39, %42
  %427 = or disjoint i16 %47, %50
  %428 = zext i16 %427 to i64
  br label %429

429:                                              ; preds = %417, %462
  %430 = phi i64 [ 0, %417 ], [ %464, %462 ]
  %431 = phi ptr [ %419, %417 ], [ %463, %462 ]
  br i1 %420, label %462, label %432

432:                                              ; preds = %429
  %433 = sub nsw i64 3, %430
  br label %434

434:                                              ; preds = %432, %457
  %435 = phi ptr [ %415, %432 ], [ %459, %457 ]
  %436 = phi i32 [ 0, %432 ], [ %460, %457 ]
  %437 = phi ptr [ %431, %432 ], [ %458, %457 ]
  br i1 %421, label %457, label %438

438:                                              ; preds = %434
  %439 = getelementptr inbounds float, ptr %435, i64 %433
  br label %440

440:                                              ; preds = %438, %440
  %441 = phi i32 [ %444, %440 ], [ %65, %438 ]
  %442 = phi ptr [ %455, %440 ], [ %439, %438 ]
  %443 = phi ptr [ %454, %440 ], [ %437, %438 ]
  %444 = add nsw i32 %441, -1
  %445 = load i8, ptr %443, align 1, !tbaa !34
  %446 = zext i8 %445 to i32
  %447 = shl nuw nsw i32 %446, 8
  %448 = getelementptr inbounds i8, ptr %443, i64 1
  %449 = load i8, ptr %448, align 1, !tbaa !34
  %450 = zext i8 %449 to i32
  %451 = or disjoint i32 %447, %450
  %452 = sitofp i32 %451 to float
  %453 = fdiv float %452, 6.553500e+04
  store float %453, ptr %442, align 4, !tbaa !66
  %454 = getelementptr inbounds i8, ptr %443, i64 2
  %455 = getelementptr inbounds float, ptr %442, i64 4
  %456 = icmp eq i32 %444, 0
  br i1 %456, label %457, label %440, !llvm.loop !67

457:                                              ; preds = %440, %434
  %458 = getelementptr inbounds i8, ptr %437, i64 %423
  %459 = getelementptr inbounds float, ptr %435, i64 %425
  %460 = add nuw nsw i32 %436, 1
  %461 = icmp eq i32 %460, %426
  br i1 %461, label %462, label %434, !llvm.loop !68

462:                                              ; preds = %457, %429
  %463 = phi ptr [ %431, %429 ], [ %458, %457 ]
  %464 = add nuw nsw i64 %430, 1
  %465 = icmp eq i64 %464, %428
  br i1 %465, label %466, label %429, !llvm.loop !69

466:                                              ; preds = %462, %405, %410, %360, %347
  %467 = phi ptr [ %348, %347 ], [ %355, %360 ], [ %413, %410 ], [ %355, %405 ], [ %413, %462 ]
  %468 = icmp eq i8 %27, 1
  br i1 %468, label %469, label %527

469:                                              ; preds = %466
  switch i16 %51, label %589 [
    i16 1, label %470
    i16 2, label %490
    i16 3, label %511
  ]

470:                                              ; preds = %469
  %471 = getelementptr inbounds %struct.ImBuf, ptr %467, i64 0, i32 2
  %472 = load i32, ptr %471, align 8, !tbaa !70
  %473 = getelementptr inbounds %struct.ImBuf, ptr %467, i64 0, i32 3
  %474 = load i32, ptr %473, align 4, !tbaa !71
  %475 = mul nsw i32 %474, %472
  %476 = icmp sgt i32 %475, 0
  br i1 %476, label %477, label %589

477:                                              ; preds = %470
  %478 = getelementptr inbounds %struct.ImBuf, ptr %467, i64 0, i32 8
  %479 = load ptr, ptr %478, align 8, !tbaa !52
  br label %480

480:                                              ; preds = %477, %480
  %481 = phi ptr [ %487, %480 ], [ %479, %477 ]
  %482 = phi i32 [ %488, %480 ], [ %475, %477 ]
  store i8 -1, ptr %481, align 1, !tbaa !34
  %483 = getelementptr inbounds i8, ptr %481, i64 3
  %484 = load i8, ptr %483, align 1, !tbaa !34
  %485 = getelementptr inbounds i8, ptr %481, i64 2
  store i8 %484, ptr %485, align 1, !tbaa !34
  %486 = getelementptr inbounds i8, ptr %481, i64 1
  store i8 %484, ptr %486, align 1, !tbaa !34
  %487 = getelementptr inbounds i8, ptr %481, i64 4
  %488 = add nsw i32 %482, -1
  %489 = icmp sgt i32 %482, 1
  br i1 %489, label %480, label %589, !llvm.loop !72

490:                                              ; preds = %469
  %491 = getelementptr inbounds %struct.ImBuf, ptr %467, i64 0, i32 2
  %492 = load i32, ptr %491, align 8, !tbaa !70
  %493 = getelementptr inbounds %struct.ImBuf, ptr %467, i64 0, i32 3
  %494 = load i32, ptr %493, align 4, !tbaa !71
  %495 = mul nsw i32 %494, %492
  %496 = icmp sgt i32 %495, 0
  br i1 %496, label %497, label %589

497:                                              ; preds = %490
  %498 = getelementptr inbounds %struct.ImBuf, ptr %467, i64 0, i32 8
  %499 = load ptr, ptr %498, align 8, !tbaa !52
  br label %500

500:                                              ; preds = %497, %500
  %501 = phi ptr [ %508, %500 ], [ %499, %497 ]
  %502 = phi i32 [ %509, %500 ], [ %495, %497 ]
  %503 = getelementptr inbounds i8, ptr %501, i64 2
  %504 = load i8, ptr %503, align 1, !tbaa !34
  store i8 %504, ptr %501, align 1, !tbaa !34
  %505 = getelementptr inbounds i8, ptr %501, i64 3
  %506 = load i8, ptr %505, align 1, !tbaa !34
  store i8 %506, ptr %503, align 1, !tbaa !34
  %507 = getelementptr inbounds i8, ptr %501, i64 1
  store i8 %506, ptr %507, align 1, !tbaa !34
  %508 = getelementptr inbounds i8, ptr %501, i64 4
  %509 = add nsw i32 %502, -1
  %510 = icmp sgt i32 %502, 1
  br i1 %510, label %500, label %589, !llvm.loop !73

511:                                              ; preds = %469
  %512 = getelementptr inbounds %struct.ImBuf, ptr %467, i64 0, i32 2
  %513 = load i32, ptr %512, align 8, !tbaa !70
  %514 = getelementptr inbounds %struct.ImBuf, ptr %467, i64 0, i32 3
  %515 = load i32, ptr %514, align 4, !tbaa !71
  %516 = mul nsw i32 %515, %513
  %517 = icmp sgt i32 %516, 0
  br i1 %517, label %518, label %589

518:                                              ; preds = %511
  %519 = getelementptr inbounds %struct.ImBuf, ptr %467, i64 0, i32 8
  %520 = load ptr, ptr %519, align 8, !tbaa !52
  br label %521

521:                                              ; preds = %518, %521
  %522 = phi ptr [ %524, %521 ], [ %520, %518 ]
  %523 = phi i32 [ %525, %521 ], [ %516, %518 ]
  store i8 -1, ptr %522, align 1, !tbaa !34
  %524 = getelementptr inbounds i8, ptr %522, i64 4
  %525 = add nsw i32 %523, -1
  %526 = icmp sgt i32 %523, 1
  br i1 %526, label %521, label %589, !llvm.loop !74

527:                                              ; preds = %466
  switch i16 %51, label %585 [
    i16 1, label %528
    i16 2, label %548
    i16 3, label %569
  ]

528:                                              ; preds = %527
  %529 = getelementptr inbounds %struct.ImBuf, ptr %467, i64 0, i32 2
  %530 = load i32, ptr %529, align 8, !tbaa !70
  %531 = getelementptr inbounds %struct.ImBuf, ptr %467, i64 0, i32 3
  %532 = load i32, ptr %531, align 4, !tbaa !71
  %533 = mul nsw i32 %532, %530
  %534 = icmp sgt i32 %533, 0
  br i1 %534, label %535, label %585

535:                                              ; preds = %528
  %536 = getelementptr inbounds %struct.ImBuf, ptr %467, i64 0, i32 9
  %537 = load ptr, ptr %536, align 8, !tbaa !58
  br label %538

538:                                              ; preds = %535, %538
  %539 = phi ptr [ %545, %538 ], [ %537, %535 ]
  %540 = phi i32 [ %546, %538 ], [ %533, %535 ]
  store float 1.000000e+00, ptr %539, align 4, !tbaa !66
  %541 = getelementptr inbounds float, ptr %539, i64 3
  %542 = load float, ptr %541, align 4, !tbaa !66
  %543 = getelementptr inbounds float, ptr %539, i64 2
  store float %542, ptr %543, align 4, !tbaa !66
  %544 = getelementptr inbounds float, ptr %539, i64 1
  store float %542, ptr %544, align 4, !tbaa !66
  %545 = getelementptr inbounds float, ptr %539, i64 4
  %546 = add nsw i32 %540, -1
  %547 = icmp sgt i32 %540, 1
  br i1 %547, label %538, label %585, !llvm.loop !75

548:                                              ; preds = %527
  %549 = getelementptr inbounds %struct.ImBuf, ptr %467, i64 0, i32 2
  %550 = load i32, ptr %549, align 8, !tbaa !70
  %551 = getelementptr inbounds %struct.ImBuf, ptr %467, i64 0, i32 3
  %552 = load i32, ptr %551, align 4, !tbaa !71
  %553 = mul nsw i32 %552, %550
  %554 = icmp sgt i32 %553, 0
  br i1 %554, label %555, label %585

555:                                              ; preds = %548
  %556 = getelementptr inbounds %struct.ImBuf, ptr %467, i64 0, i32 9
  %557 = load ptr, ptr %556, align 8, !tbaa !58
  br label %558

558:                                              ; preds = %555, %558
  %559 = phi ptr [ %566, %558 ], [ %557, %555 ]
  %560 = phi i32 [ %567, %558 ], [ %553, %555 ]
  %561 = getelementptr inbounds float, ptr %559, i64 2
  %562 = load float, ptr %561, align 4, !tbaa !66
  store float %562, ptr %559, align 4, !tbaa !66
  %563 = getelementptr inbounds float, ptr %559, i64 3
  %564 = load float, ptr %563, align 4, !tbaa !66
  store float %564, ptr %561, align 4, !tbaa !66
  %565 = getelementptr inbounds float, ptr %559, i64 1
  store float %564, ptr %565, align 4, !tbaa !66
  %566 = getelementptr inbounds float, ptr %559, i64 4
  %567 = add nsw i32 %560, -1
  %568 = icmp sgt i32 %560, 1
  br i1 %568, label %558, label %585, !llvm.loop !76

569:                                              ; preds = %527
  %570 = getelementptr inbounds %struct.ImBuf, ptr %467, i64 0, i32 2
  %571 = load i32, ptr %570, align 8, !tbaa !70
  %572 = getelementptr inbounds %struct.ImBuf, ptr %467, i64 0, i32 3
  %573 = load i32, ptr %572, align 4, !tbaa !71
  %574 = mul nsw i32 %573, %571
  %575 = icmp sgt i32 %574, 0
  br i1 %575, label %576, label %585

576:                                              ; preds = %569
  %577 = getelementptr inbounds %struct.ImBuf, ptr %467, i64 0, i32 9
  %578 = load ptr, ptr %577, align 8, !tbaa !58
  br label %579

579:                                              ; preds = %576, %579
  %580 = phi ptr [ %582, %579 ], [ %578, %576 ]
  %581 = phi i32 [ %583, %579 ], [ %574, %576 ]
  store float 1.000000e+00, ptr %580, align 4, !tbaa !66
  %582 = getelementptr inbounds float, ptr %580, i64 4
  %583 = add nsw i32 %581, -1
  %584 = icmp sgt i32 %581, 1
  br i1 %584, label %579, label %585, !llvm.loop !77

585:                                              ; preds = %579, %558, %538, %569, %548, %528, %527
  %586 = and i32 %2, 1
  %587 = icmp eq i32 %586, 0
  br i1 %587, label %589, label %588

588:                                              ; preds = %585
  tail call void @IMB_rect_from_float(ptr noundef %467) #10
  br label %589

589:                                              ; preds = %521, %500, %480, %511, %490, %470, %469, %585, %588
  %590 = getelementptr inbounds %struct.ImBuf, ptr %467, i64 0, i32 26
  store i32 474, ptr %590, align 8, !tbaa !41
  %591 = getelementptr inbounds %struct.ImBuf, ptr %467, i64 0, i32 16
  %592 = load ptr, ptr %591, align 8, !tbaa !55
  %593 = icmp eq ptr %592, null
  br i1 %593, label %609, label %594

594:                                              ; preds = %589
  %595 = getelementptr inbounds %struct.ImBuf, ptr %467, i64 0, i32 2
  %596 = load i32, ptr %595, align 8, !tbaa !70
  %597 = getelementptr inbounds %struct.ImBuf, ptr %467, i64 0, i32 3
  %598 = load i32, ptr %597, align 4, !tbaa !71
  %599 = mul nsw i32 %598, %596
  %600 = icmp eq i32 %599, 0
  br i1 %600, label %609, label %601

601:                                              ; preds = %594, %601
  %602 = phi ptr [ %607, %601 ], [ %592, %594 ]
  %603 = phi i32 [ %604, %601 ], [ %599, %594 ]
  %604 = add nsw i32 %603, -1
  %605 = load i32, ptr %602, align 4, !tbaa !39
  %606 = tail call i32 @llvm.bswap.i32(i32 %605)
  store i32 %606, ptr %602, align 4, !tbaa !39
  %607 = getelementptr inbounds i32, ptr %602, i64 1
  %608 = icmp eq i32 %604, 0
  br i1 %608, label %609, label %601, !llvm.loop !78

609:                                              ; preds = %601, %594, %589
  %610 = getelementptr inbounds %struct.ImBuf, ptr %467, i64 0, i32 8
  %611 = load ptr, ptr %610, align 8, !tbaa !52
  %612 = icmp eq ptr %611, null
  br i1 %612, label %614, label %613

613:                                              ; preds = %609
  tail call void @IMB_convert_rgba_to_abgr(ptr noundef %467) #10
  br label %614

614:                                              ; preds = %609, %613, %69, %73, %4, %61, %53
  %615 = phi ptr [ null, %53 ], [ null, %61 ], [ null, %4 ], [ %71, %73 ], [ %71, %69 ], [ %467, %613 ], [ %467, %609 ]
  ret ptr %615
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare void @colorspace_set_default_role(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @IMB_allocImBuf(i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @expandrow(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #4 {
  %4 = load i8, ptr %1, align 1, !tbaa !34
  %5 = and i8 %4, 127
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = sext i32 %2 to i64
  %9 = getelementptr inbounds i8, ptr %0, i64 %8
  br label %11

10:                                               ; preds = %91, %3
  ret void

11:                                               ; preds = %7, %91
  %12 = phi i8 [ %95, %91 ], [ %5, %7 ]
  %13 = phi i8 [ %94, %91 ], [ %4, %7 ]
  %14 = phi ptr [ %93, %91 ], [ %9, %7 ]
  %15 = phi ptr [ %92, %91 ], [ %1, %7 ]
  %16 = getelementptr inbounds i8, ptr %15, i64 1
  %17 = icmp sgt i8 %13, -1
  br i1 %17, label %64, label %18

18:                                               ; preds = %11
  %19 = icmp ugt i8 %12, 7
  br i1 %19, label %25, label %20

20:                                               ; preds = %25, %18
  %21 = phi ptr [ %16, %18 ], [ %52, %25 ]
  %22 = phi ptr [ %14, %18 ], [ %51, %25 ]
  %23 = phi i8 [ %12, %18 ], [ %53, %25 ]
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %91, label %55

25:                                               ; preds = %18, %25
  %26 = phi i8 [ %53, %25 ], [ %12, %18 ]
  %27 = phi ptr [ %51, %25 ], [ %14, %18 ]
  %28 = phi ptr [ %52, %25 ], [ %16, %18 ]
  %29 = load i8, ptr %28, align 1, !tbaa !34
  store i8 %29, ptr %27, align 1, !tbaa !34
  %30 = getelementptr inbounds i8, ptr %28, i64 1
  %31 = load i8, ptr %30, align 1, !tbaa !34
  %32 = getelementptr inbounds i8, ptr %27, i64 4
  store i8 %31, ptr %32, align 1, !tbaa !34
  %33 = getelementptr inbounds i8, ptr %28, i64 2
  %34 = load i8, ptr %33, align 1, !tbaa !34
  %35 = getelementptr inbounds i8, ptr %27, i64 8
  store i8 %34, ptr %35, align 1, !tbaa !34
  %36 = getelementptr inbounds i8, ptr %28, i64 3
  %37 = load i8, ptr %36, align 1, !tbaa !34
  %38 = getelementptr inbounds i8, ptr %27, i64 12
  store i8 %37, ptr %38, align 1, !tbaa !34
  %39 = getelementptr inbounds i8, ptr %28, i64 4
  %40 = load i8, ptr %39, align 1, !tbaa !34
  %41 = getelementptr inbounds i8, ptr %27, i64 16
  store i8 %40, ptr %41, align 1, !tbaa !34
  %42 = getelementptr inbounds i8, ptr %28, i64 5
  %43 = load i8, ptr %42, align 1, !tbaa !34
  %44 = getelementptr inbounds i8, ptr %27, i64 20
  store i8 %43, ptr %44, align 1, !tbaa !34
  %45 = getelementptr inbounds i8, ptr %28, i64 6
  %46 = load i8, ptr %45, align 1, !tbaa !34
  %47 = getelementptr inbounds i8, ptr %27, i64 24
  store i8 %46, ptr %47, align 1, !tbaa !34
  %48 = getelementptr inbounds i8, ptr %28, i64 7
  %49 = load i8, ptr %48, align 1, !tbaa !34
  %50 = getelementptr inbounds i8, ptr %27, i64 28
  store i8 %49, ptr %50, align 1, !tbaa !34
  %51 = getelementptr inbounds i8, ptr %27, i64 32
  %52 = getelementptr inbounds i8, ptr %28, i64 8
  %53 = add i8 %26, -8
  %54 = icmp ugt i8 %53, 7
  br i1 %54, label %25, label %20, !llvm.loop !79

55:                                               ; preds = %20, %55
  %56 = phi i8 [ %59, %55 ], [ %23, %20 ]
  %57 = phi ptr [ %62, %55 ], [ %22, %20 ]
  %58 = phi ptr [ %60, %55 ], [ %21, %20 ]
  %59 = add i8 %56, -1
  %60 = getelementptr inbounds i8, ptr %58, i64 1
  %61 = load i8, ptr %58, align 1, !tbaa !34
  store i8 %61, ptr %57, align 1, !tbaa !34
  %62 = getelementptr inbounds i8, ptr %57, i64 4
  %63 = icmp eq i8 %59, 0
  br i1 %63, label %91, label %55, !llvm.loop !80

64:                                               ; preds = %11
  %65 = getelementptr inbounds i8, ptr %15, i64 2
  %66 = load i8, ptr %16, align 1, !tbaa !34
  %67 = icmp ugt i8 %12, 7
  br i1 %67, label %72, label %68

68:                                               ; preds = %72, %64
  %69 = phi ptr [ %14, %64 ], [ %82, %72 ]
  %70 = phi i8 [ %12, %64 ], [ %83, %72 ]
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %91, label %85

72:                                               ; preds = %64, %72
  %73 = phi i8 [ %83, %72 ], [ %12, %64 ]
  %74 = phi ptr [ %82, %72 ], [ %14, %64 ]
  store i8 %66, ptr %74, align 1, !tbaa !34
  %75 = getelementptr inbounds i8, ptr %74, i64 4
  store i8 %66, ptr %75, align 1, !tbaa !34
  %76 = getelementptr inbounds i8, ptr %74, i64 8
  store i8 %66, ptr %76, align 1, !tbaa !34
  %77 = getelementptr inbounds i8, ptr %74, i64 12
  store i8 %66, ptr %77, align 1, !tbaa !34
  %78 = getelementptr inbounds i8, ptr %74, i64 16
  store i8 %66, ptr %78, align 1, !tbaa !34
  %79 = getelementptr inbounds i8, ptr %74, i64 20
  store i8 %66, ptr %79, align 1, !tbaa !34
  %80 = getelementptr inbounds i8, ptr %74, i64 24
  store i8 %66, ptr %80, align 1, !tbaa !34
  %81 = getelementptr inbounds i8, ptr %74, i64 28
  store i8 %66, ptr %81, align 1, !tbaa !34
  %82 = getelementptr inbounds i8, ptr %74, i64 32
  %83 = add i8 %73, -8
  %84 = icmp ugt i8 %83, 7
  br i1 %84, label %72, label %68, !llvm.loop !81

85:                                               ; preds = %68, %85
  %86 = phi i8 [ %88, %85 ], [ %70, %68 ]
  %87 = phi ptr [ %89, %85 ], [ %69, %68 ]
  %88 = add i8 %86, -1
  store i8 %66, ptr %87, align 1, !tbaa !34
  %89 = getelementptr inbounds i8, ptr %87, i64 4
  %90 = icmp eq i8 %88, 0
  br i1 %90, label %91, label %85, !llvm.loop !82

91:                                               ; preds = %55, %85, %20, %68
  %92 = phi ptr [ %65, %68 ], [ %21, %20 ], [ %65, %85 ], [ %60, %55 ]
  %93 = phi ptr [ %69, %68 ], [ %22, %20 ], [ %89, %85 ], [ %62, %55 ]
  %94 = load i8, ptr %92, align 1, !tbaa !34
  %95 = and i8 %94, 127
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %10, label %11, !llvm.loop !83
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @expandrow2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #4 {
  %4 = getelementptr inbounds i8, ptr %1, i64 1
  %5 = load i8, ptr %4, align 1, !tbaa !34
  %6 = and i8 %5, 127
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = sext i32 %2 to i64
  %10 = getelementptr inbounds float, ptr %0, i64 %9
  br label %12

11:                                               ; preds = %173, %3
  ret void

12:                                               ; preds = %8, %173
  %13 = phi i8 [ %178, %173 ], [ %6, %8 ]
  %14 = phi i8 [ %177, %173 ], [ %5, %8 ]
  %15 = phi ptr [ %175, %173 ], [ %10, %8 ]
  %16 = phi ptr [ %174, %173 ], [ %1, %8 ]
  %17 = getelementptr inbounds i8, ptr %16, i64 2
  %18 = zext nneg i8 %13 to i16
  %19 = icmp sgt i8 %14, -1
  br i1 %19, label %138, label %20

20:                                               ; preds = %12
  %21 = icmp ugt i8 %13, 7
  br i1 %21, label %27, label %22

22:                                               ; preds = %27, %20
  %23 = phi ptr [ %17, %20 ], [ %118, %27 ]
  %24 = phi i16 [ %18, %20 ], [ %119, %27 ]
  %25 = phi ptr [ %15, %20 ], [ %117, %27 ]
  %26 = icmp eq i16 %24, 0
  br i1 %26, label %173, label %121

27:                                               ; preds = %20, %27
  %28 = phi ptr [ %117, %27 ], [ %15, %20 ]
  %29 = phi i16 [ %119, %27 ], [ %18, %20 ]
  %30 = phi ptr [ %118, %27 ], [ %17, %20 ]
  %31 = load i8, ptr %30, align 1, !tbaa !34
  %32 = zext i8 %31 to i32
  %33 = shl nuw nsw i32 %32, 8
  %34 = getelementptr inbounds i8, ptr %30, i64 1
  %35 = load i8, ptr %34, align 1, !tbaa !34
  %36 = zext i8 %35 to i32
  %37 = or disjoint i32 %33, %36
  %38 = sitofp i32 %37 to float
  %39 = fdiv float %38, 6.553500e+04
  store float %39, ptr %28, align 4, !tbaa !66
  %40 = getelementptr inbounds i8, ptr %30, i64 2
  %41 = load i8, ptr %40, align 1, !tbaa !34
  %42 = zext i8 %41 to i32
  %43 = shl nuw nsw i32 %42, 8
  %44 = getelementptr inbounds i8, ptr %30, i64 3
  %45 = load i8, ptr %44, align 1, !tbaa !34
  %46 = zext i8 %45 to i32
  %47 = or disjoint i32 %43, %46
  %48 = sitofp i32 %47 to float
  %49 = fdiv float %48, 6.553500e+04
  %50 = getelementptr inbounds float, ptr %28, i64 4
  store float %49, ptr %50, align 4, !tbaa !66
  %51 = getelementptr inbounds i8, ptr %30, i64 4
  %52 = load i8, ptr %51, align 1, !tbaa !34
  %53 = zext i8 %52 to i32
  %54 = shl nuw nsw i32 %53, 8
  %55 = getelementptr inbounds i8, ptr %30, i64 5
  %56 = load i8, ptr %55, align 1, !tbaa !34
  %57 = zext i8 %56 to i32
  %58 = or disjoint i32 %54, %57
  %59 = sitofp i32 %58 to float
  %60 = fdiv float %59, 6.553500e+04
  %61 = getelementptr inbounds float, ptr %28, i64 8
  store float %60, ptr %61, align 4, !tbaa !66
  %62 = getelementptr inbounds i8, ptr %30, i64 6
  %63 = load i8, ptr %62, align 1, !tbaa !34
  %64 = zext i8 %63 to i32
  %65 = shl nuw nsw i32 %64, 8
  %66 = getelementptr inbounds i8, ptr %30, i64 7
  %67 = load i8, ptr %66, align 1, !tbaa !34
  %68 = zext i8 %67 to i32
  %69 = or disjoint i32 %65, %68
  %70 = sitofp i32 %69 to float
  %71 = fdiv float %70, 6.553500e+04
  %72 = getelementptr inbounds float, ptr %28, i64 12
  store float %71, ptr %72, align 4, !tbaa !66
  %73 = getelementptr inbounds i8, ptr %30, i64 8
  %74 = load i8, ptr %73, align 1, !tbaa !34
  %75 = zext i8 %74 to i32
  %76 = shl nuw nsw i32 %75, 8
  %77 = getelementptr inbounds i8, ptr %30, i64 9
  %78 = load i8, ptr %77, align 1, !tbaa !34
  %79 = zext i8 %78 to i32
  %80 = or disjoint i32 %76, %79
  %81 = sitofp i32 %80 to float
  %82 = fdiv float %81, 6.553500e+04
  %83 = getelementptr inbounds float, ptr %28, i64 16
  store float %82, ptr %83, align 4, !tbaa !66
  %84 = getelementptr inbounds i8, ptr %30, i64 10
  %85 = load i8, ptr %84, align 1, !tbaa !34
  %86 = zext i8 %85 to i32
  %87 = shl nuw nsw i32 %86, 8
  %88 = getelementptr inbounds i8, ptr %30, i64 11
  %89 = load i8, ptr %88, align 1, !tbaa !34
  %90 = zext i8 %89 to i32
  %91 = or disjoint i32 %87, %90
  %92 = sitofp i32 %91 to float
  %93 = fdiv float %92, 6.553500e+04
  %94 = getelementptr inbounds float, ptr %28, i64 20
  store float %93, ptr %94, align 4, !tbaa !66
  %95 = getelementptr inbounds i8, ptr %30, i64 12
  %96 = load i8, ptr %95, align 1, !tbaa !34
  %97 = zext i8 %96 to i32
  %98 = shl nuw nsw i32 %97, 8
  %99 = getelementptr inbounds i8, ptr %30, i64 13
  %100 = load i8, ptr %99, align 1, !tbaa !34
  %101 = zext i8 %100 to i32
  %102 = or disjoint i32 %98, %101
  %103 = sitofp i32 %102 to float
  %104 = fdiv float %103, 6.553500e+04
  %105 = getelementptr inbounds float, ptr %28, i64 24
  store float %104, ptr %105, align 4, !tbaa !66
  %106 = getelementptr inbounds i8, ptr %30, i64 14
  %107 = load i8, ptr %106, align 1, !tbaa !34
  %108 = zext i8 %107 to i32
  %109 = shl nuw nsw i32 %108, 8
  %110 = getelementptr inbounds i8, ptr %30, i64 15
  %111 = load i8, ptr %110, align 1, !tbaa !34
  %112 = zext i8 %111 to i32
  %113 = or disjoint i32 %109, %112
  %114 = sitofp i32 %113 to float
  %115 = fdiv float %114, 6.553500e+04
  %116 = getelementptr inbounds float, ptr %28, i64 28
  store float %115, ptr %116, align 4, !tbaa !66
  %117 = getelementptr inbounds float, ptr %28, i64 32
  %118 = getelementptr inbounds i8, ptr %30, i64 16
  %119 = add i16 %29, -8
  %120 = icmp ugt i16 %119, 7
  br i1 %120, label %27, label %22, !llvm.loop !84

121:                                              ; preds = %22, %121
  %122 = phi ptr [ %136, %121 ], [ %25, %22 ]
  %123 = phi i16 [ %125, %121 ], [ %24, %22 ]
  %124 = phi ptr [ %135, %121 ], [ %23, %22 ]
  %125 = add i16 %123, -1
  %126 = load i8, ptr %124, align 1, !tbaa !34
  %127 = zext i8 %126 to i32
  %128 = shl nuw nsw i32 %127, 8
  %129 = getelementptr inbounds i8, ptr %124, i64 1
  %130 = load i8, ptr %129, align 1, !tbaa !34
  %131 = zext i8 %130 to i32
  %132 = or disjoint i32 %128, %131
  %133 = sitofp i32 %132 to float
  %134 = fdiv float %133, 6.553500e+04
  store float %134, ptr %122, align 4, !tbaa !66
  %135 = getelementptr inbounds i8, ptr %124, i64 2
  %136 = getelementptr inbounds float, ptr %122, i64 4
  %137 = icmp eq i16 %125, 0
  br i1 %137, label %173, label %121, !llvm.loop !85

138:                                              ; preds = %12
  %139 = load i8, ptr %17, align 1, !tbaa !34
  %140 = zext i8 %139 to i32
  %141 = shl nuw nsw i32 %140, 8
  %142 = getelementptr inbounds i8, ptr %16, i64 3
  %143 = load i8, ptr %142, align 1, !tbaa !34
  %144 = zext i8 %143 to i32
  %145 = or disjoint i32 %141, %144
  %146 = sitofp i32 %145 to float
  %147 = fdiv float %146, 6.553500e+04
  %148 = getelementptr inbounds i8, ptr %16, i64 4
  %149 = icmp ugt i8 %13, 7
  br i1 %149, label %154, label %150

150:                                              ; preds = %154, %138
  %151 = phi i16 [ %18, %138 ], [ %165, %154 ]
  %152 = phi ptr [ %15, %138 ], [ %164, %154 ]
  %153 = icmp eq i16 %151, 0
  br i1 %153, label %173, label %167

154:                                              ; preds = %138, %154
  %155 = phi ptr [ %164, %154 ], [ %15, %138 ]
  %156 = phi i16 [ %165, %154 ], [ %18, %138 ]
  store float %147, ptr %155, align 4, !tbaa !66
  %157 = getelementptr inbounds float, ptr %155, i64 4
  store float %147, ptr %157, align 4, !tbaa !66
  %158 = getelementptr inbounds float, ptr %155, i64 8
  store float %147, ptr %158, align 4, !tbaa !66
  %159 = getelementptr inbounds float, ptr %155, i64 12
  store float %147, ptr %159, align 4, !tbaa !66
  %160 = getelementptr inbounds float, ptr %155, i64 16
  store float %147, ptr %160, align 4, !tbaa !66
  %161 = getelementptr inbounds float, ptr %155, i64 20
  store float %147, ptr %161, align 4, !tbaa !66
  %162 = getelementptr inbounds float, ptr %155, i64 24
  store float %147, ptr %162, align 4, !tbaa !66
  %163 = getelementptr inbounds float, ptr %155, i64 28
  store float %147, ptr %163, align 4, !tbaa !66
  %164 = getelementptr inbounds float, ptr %155, i64 32
  %165 = add i16 %156, -8
  %166 = icmp ugt i16 %165, 7
  br i1 %166, label %154, label %150, !llvm.loop !86

167:                                              ; preds = %150, %167
  %168 = phi ptr [ %171, %167 ], [ %152, %150 ]
  %169 = phi i16 [ %170, %167 ], [ %151, %150 ]
  %170 = add i16 %169, -1
  store float %147, ptr %168, align 4, !tbaa !66
  %171 = getelementptr inbounds float, ptr %168, i64 4
  %172 = icmp eq i16 %170, 0
  br i1 %172, label %173, label %167, !llvm.loop !87

173:                                              ; preds = %121, %167, %22, %150
  %174 = phi ptr [ %148, %150 ], [ %23, %22 ], [ %148, %167 ], [ %135, %121 ]
  %175 = phi ptr [ %152, %150 ], [ %25, %22 ], [ %171, %167 ], [ %136, %121 ]
  %176 = getelementptr inbounds i8, ptr %174, i64 1
  %177 = load i8, ptr %176, align 1, !tbaa !34
  %178 = and i8 %177, 127
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %11, label %12, !llvm.loop !88
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare void @IMB_rect_from_float(ptr noundef) local_unnamed_addr #3

declare void @IMB_convert_rgba_to_abgr(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @imb_saveiris(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = alloca [4 x i8], align 1
  %5 = alloca [4 x i8], align 1
  %6 = alloca [4 x i8], align 4
  %7 = alloca [4 x i8], align 1
  %8 = alloca [4 x i8], align 1
  %9 = alloca [2 x i8], align 1
  %10 = alloca [2 x i8], align 1
  %11 = alloca [2 x i8], align 1
  %12 = alloca [2 x i8], align 1
  %13 = alloca [2 x i8], align 1
  %14 = alloca [2 x i8], align 1
  %15 = alloca %struct.IMAGE, align 8
  %16 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 4
  %17 = load i8, ptr %16, align 8, !tbaa !51
  %18 = zext i8 %17 to i16
  %19 = add nuw nsw i16 %18, 7
  %20 = lshr i16 %19, 3
  %21 = and i32 %2, 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 16
  %25 = load ptr, ptr %24, align 8, !tbaa !55
  %26 = icmp eq ptr %25, null
  %27 = select i1 %26, i16 %20, i16 8
  br label %28

28:                                               ; preds = %23, %3
  %29 = phi i16 [ %20, %3 ], [ %27, %23 ]
  tail call void @IMB_convert_rgba_to_abgr(ptr noundef %0) #10
  %30 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 16
  %31 = load ptr, ptr %30, align 8, !tbaa !55
  %32 = icmp eq ptr %31, null
  br i1 %32, label %48, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %35 = load i32, ptr %34, align 8, !tbaa !70
  %36 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %37 = load i32, ptr %36, align 4, !tbaa !71
  %38 = mul nsw i32 %37, %35
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %33, %40
  %41 = phi ptr [ %46, %40 ], [ %31, %33 ]
  %42 = phi i32 [ %43, %40 ], [ %38, %33 ]
  %43 = add nsw i32 %42, -1
  %44 = load i32, ptr %41, align 4, !tbaa !39
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  store i32 %45, ptr %41, align 4, !tbaa !39
  %46 = getelementptr inbounds i32, ptr %41, i64 1
  %47 = icmp eq i32 %43, 0
  br i1 %47, label %48, label %40, !llvm.loop !78

48:                                               ; preds = %40, %33, %28
  %49 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %50 = load ptr, ptr %49, align 8, !tbaa !52
  %51 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %52 = load i32, ptr %51, align 8, !tbaa !70
  %53 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %54 = load i32, ptr %53, align 4, !tbaa !71
  %55 = tail call ptr @BLI_fopen(ptr noundef %1, ptr noundef nonnull @.str.4) #10
  %56 = icmp eq ptr %55, null
  br i1 %56, label %314, label %57

57:                                               ; preds = %48
  %58 = zext nneg i16 %29 to i32
  %59 = mul nsw i32 %54, %58
  %60 = shl i32 %59, 2
  %61 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %62 = tail call ptr %61(i64 noundef 176, ptr noundef nonnull @.str.5) #10
  %63 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %64 = sext i32 %60 to i64
  %65 = tail call ptr %63(i64 noundef %64, ptr noundef nonnull @.str.2) #10
  %66 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %67 = tail call ptr %66(i64 noundef %64, ptr noundef nonnull @.str.6) #10
  %68 = sitofp i32 %52 to double
  %69 = tail call double @llvm.fmuladd.f64(double %68, double 1.050000e+00, double 1.000000e+01)
  %70 = fptosi double %69 to i32
  %71 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %72 = sext i32 %70 to i64
  %73 = tail call ptr %71(i64 noundef %72, ptr noundef nonnull @.str.7) #10
  %74 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %75 = sext i32 %52 to i64
  %76 = shl nsw i64 %75, 2
  %77 = tail call ptr %74(i64 noundef %76, ptr noundef nonnull @.str.8) #10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %62, i8 0, i64 176, i1 false)
  store i16 474, ptr %62, align 8, !tbaa !89
  %78 = getelementptr inbounds %struct.IMAGE, ptr %62, i64 0, i32 1
  store i16 257, ptr %78, align 2, !tbaa !92
  %79 = getelementptr inbounds %struct.IMAGE, ptr %62, i64 0, i32 2
  %80 = icmp ult i16 %29, 2
  %81 = select i1 %80, i16 2, i16 3
  store i16 %81, ptr %79, align 4, !tbaa !93
  %82 = trunc i32 %52 to i16
  %83 = getelementptr inbounds %struct.IMAGE, ptr %62, i64 0, i32 3
  store i16 %82, ptr %83, align 2, !tbaa !94
  %84 = trunc i32 %54 to i16
  %85 = getelementptr inbounds %struct.IMAGE, ptr %62, i64 0, i32 4
  store i16 %84, ptr %85, align 8, !tbaa !95
  %86 = getelementptr inbounds %struct.IMAGE, ptr %62, i64 0, i32 5
  store i16 %29, ptr %86, align 2, !tbaa !96
  %87 = getelementptr inbounds %struct.IMAGE, ptr %62, i64 0, i32 6
  store i32 0, ptr %87, align 4, !tbaa !97
  %88 = getelementptr inbounds %struct.IMAGE, ptr %62, i64 0, i32 7
  store i32 255, ptr %88, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %15) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %15, i8 0, i64 176, i1 false)
  %89 = call i64 @fwrite(ptr noundef nonnull %15, i64 noundef 176, i64 noundef 1, ptr noundef nonnull %55)
  %90 = tail call i32 @fseek(ptr noundef nonnull %55, i64 noundef 0, i32 noundef 0)
  %91 = load i16, ptr %62, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #10
  %92 = lshr i16 %91, 8
  %93 = trunc i16 %92 to i8
  store i8 %93, ptr %14, align 1, !tbaa !34
  %94 = trunc i16 %91 to i8
  %95 = getelementptr inbounds [2 x i8], ptr %14, i64 0, i64 1
  store i8 %94, ptr %95, align 1, !tbaa !34
  %96 = call i64 @fwrite(ptr noundef nonnull %14, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %55)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #10
  %97 = load i16, ptr %78, align 2, !tbaa !92
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #10
  %98 = lshr i16 %97, 8
  %99 = trunc i16 %98 to i8
  store i8 %99, ptr %13, align 1, !tbaa !34
  %100 = trunc i16 %97 to i8
  %101 = getelementptr inbounds [2 x i8], ptr %13, i64 0, i64 1
  store i8 %100, ptr %101, align 1, !tbaa !34
  %102 = call i64 @fwrite(ptr noundef nonnull %13, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %55)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #10
  %103 = getelementptr inbounds %struct.IMAGE, ptr %62, i64 0, i32 2
  %104 = load i16, ptr %103, align 4, !tbaa !93
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #10
  %105 = lshr i16 %104, 8
  %106 = trunc i16 %105 to i8
  store i8 %106, ptr %12, align 1, !tbaa !34
  %107 = trunc i16 %104 to i8
  %108 = getelementptr inbounds [2 x i8], ptr %12, i64 0, i64 1
  store i8 %107, ptr %108, align 1, !tbaa !34
  %109 = call i64 @fwrite(ptr noundef nonnull %12, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %55)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #10
  %110 = load i16, ptr %83, align 2, !tbaa !94
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #10
  %111 = lshr i16 %110, 8
  %112 = trunc i16 %111 to i8
  store i8 %112, ptr %11, align 1, !tbaa !34
  %113 = trunc i16 %110 to i8
  %114 = getelementptr inbounds [2 x i8], ptr %11, i64 0, i64 1
  store i8 %113, ptr %114, align 1, !tbaa !34
  %115 = call i64 @fwrite(ptr noundef nonnull %11, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %55)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #10
  %116 = load i16, ptr %85, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #10
  %117 = lshr i16 %116, 8
  %118 = trunc i16 %117 to i8
  store i8 %118, ptr %10, align 1, !tbaa !34
  %119 = trunc i16 %116 to i8
  %120 = getelementptr inbounds [2 x i8], ptr %10, i64 0, i64 1
  store i8 %119, ptr %120, align 1, !tbaa !34
  %121 = call i64 @fwrite(ptr noundef nonnull %10, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %55)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #10
  %122 = load i16, ptr %86, align 2, !tbaa !96
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #10
  %123 = lshr i16 %122, 8
  %124 = trunc i16 %123 to i8
  store i8 %124, ptr %9, align 1, !tbaa !34
  %125 = trunc i16 %122 to i8
  %126 = getelementptr inbounds [2 x i8], ptr %9, i64 0, i64 1
  store i8 %125, ptr %126, align 1, !tbaa !34
  %127 = call i64 @fwrite(ptr noundef nonnull %9, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %55)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #10
  %128 = load i32, ptr %87, align 4, !tbaa !97
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #10
  %129 = lshr i32 %128, 24
  %130 = trunc i32 %129 to i8
  store i8 %130, ptr %8, align 1, !tbaa !34
  %131 = lshr i32 %128, 16
  %132 = trunc i32 %131 to i8
  %133 = getelementptr inbounds [4 x i8], ptr %8, i64 0, i64 1
  store i8 %132, ptr %133, align 1, !tbaa !34
  %134 = lshr i32 %128, 8
  %135 = trunc i32 %134 to i8
  %136 = getelementptr inbounds [4 x i8], ptr %8, i64 0, i64 2
  store i8 %135, ptr %136, align 1, !tbaa !34
  %137 = trunc i32 %128 to i8
  %138 = getelementptr inbounds [4 x i8], ptr %8, i64 0, i64 3
  store i8 %137, ptr %138, align 1, !tbaa !34
  %139 = call i64 @fwrite(ptr noundef nonnull %8, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %55)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #10
  %140 = load i32, ptr %88, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  %141 = lshr i32 %140, 24
  %142 = trunc i32 %141 to i8
  store i8 %142, ptr %7, align 1, !tbaa !34
  %143 = lshr i32 %140, 16
  %144 = trunc i32 %143 to i8
  %145 = getelementptr inbounds [4 x i8], ptr %7, i64 0, i64 1
  store i8 %144, ptr %145, align 1, !tbaa !34
  %146 = lshr i32 %140, 8
  %147 = trunc i32 %146 to i8
  %148 = getelementptr inbounds [4 x i8], ptr %7, i64 0, i64 2
  store i8 %147, ptr %148, align 1, !tbaa !34
  %149 = trunc i32 %140 to i8
  %150 = getelementptr inbounds [4 x i8], ptr %7, i64 0, i64 3
  store i8 %149, ptr %150, align 1, !tbaa !34
  %151 = call i64 @fwrite(ptr noundef nonnull %7, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %55)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 0, ptr %6, align 4
  %152 = call i64 @fwrite(ptr noundef nonnull %6, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %55)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  %153 = tail call i64 @fwrite(ptr noundef nonnull @.str.11, i64 noundef 8, i64 noundef 1, ptr noundef nonnull %55)
  %154 = trunc i64 %153 to i32
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %15) #10
  %155 = shl i32 %59, 3
  %156 = add nsw i32 %155, 512
  %157 = sext i32 %156 to i64
  %158 = tail call i32 @fseek(ptr noundef nonnull %55, i64 noundef %157, i32 noundef 0)
  %159 = icmp sgt i32 %54, 0
  br i1 %159, label %160, label %251

160:                                              ; preds = %57
  %161 = icmp eq i16 %29, 0
  %162 = icmp eq i16 %29, 1
  %163 = getelementptr inbounds i8, ptr %77, i64 3
  %164 = icmp eq i32 %52, 0
  %165 = zext nneg i32 %54 to i64
  %166 = zext nneg i32 %54 to i64
  %167 = zext i16 %29 to i64
  br label %168

168:                                              ; preds = %160, %241
  %169 = phi i64 [ 0, %160 ], [ %249, %241 ]
  %170 = phi i32 [ %154, %160 ], [ %244, %241 ]
  %171 = phi ptr [ %50, %160 ], [ %245, %241 ]
  %172 = phi ptr [ %31, %160 ], [ %248, %241 ]
  %173 = phi i32 [ 0, %160 ], [ %243, %241 ]
  %174 = phi i32 [ %156, %160 ], [ %242, %241 ]
  br i1 %161, label %241, label %175

175:                                              ; preds = %168
  %176 = icmp ne ptr %172, null
  br label %177

177:                                              ; preds = %175, %229
  %178 = phi i64 [ 0, %175 ], [ %239, %229 ]
  %179 = phi i32 [ %170, %175 ], [ %233, %229 ]
  %180 = phi i32 [ %173, %175 ], [ %224, %229 ]
  %181 = phi i32 [ %174, %175 ], [ %238, %229 ]
  br i1 %162, label %182, label %210

182:                                              ; preds = %177
  br i1 %164, label %206, label %183

183:                                              ; preds = %182, %183
  %184 = phi i32 [ %187, %183 ], [ %52, %182 ]
  %185 = phi ptr [ %203, %183 ], [ %163, %182 ]
  %186 = phi ptr [ %204, %183 ], [ %171, %182 ]
  %187 = add nsw i32 %184, -1
  %188 = load i8, ptr %186, align 1, !tbaa !34
  %189 = zext i8 %188 to i32
  %190 = mul nuw nsw i32 %189, 79
  %191 = getelementptr inbounds i8, ptr %186, i64 1
  %192 = load i8, ptr %191, align 1, !tbaa !34
  %193 = zext i8 %192 to i32
  %194 = mul nuw nsw i32 %193, 156
  %195 = add nuw nsw i32 %194, %190
  %196 = getelementptr inbounds i8, ptr %186, i64 2
  %197 = load i8, ptr %196, align 1, !tbaa !34
  %198 = zext i8 %197 to i32
  %199 = mul nuw nsw i32 %198, 21
  %200 = add nuw nsw i32 %195, %199
  %201 = lshr i32 %200, 8
  %202 = trunc i32 %201 to i8
  store i8 %202, ptr %185, align 1, !tbaa !34
  %203 = getelementptr inbounds i8, ptr %185, i64 4
  %204 = getelementptr inbounds i8, ptr %186, i64 4
  %205 = icmp eq i32 %187, 0
  br i1 %205, label %206, label %183, !llvm.loop !99

206:                                              ; preds = %183, %182
  %207 = trunc i64 %178 to i32
  %208 = sub i32 3, %207
  %209 = tail call fastcc i32 @compressrow(ptr noundef %77, ptr noundef %73, i32 noundef %208, i32 noundef %52)
  br label %223

210:                                              ; preds = %177
  %211 = icmp ult i64 %178, 4
  br i1 %211, label %212, label %216

212:                                              ; preds = %210
  %213 = trunc i64 %178 to i32
  %214 = xor i32 %213, 3
  %215 = tail call fastcc i32 @compressrow(ptr noundef %171, ptr noundef %73, i32 noundef %214, i32 noundef %52)
  br label %223

216:                                              ; preds = %210
  %217 = icmp ult i64 %178, 8
  %218 = select i1 %217, i1 %176, i1 false
  br i1 %218, label %219, label %223

219:                                              ; preds = %216
  %220 = trunc i64 %178 to i32
  %221 = sub i32 7, %220
  %222 = tail call fastcc i32 @compressrow(ptr noundef nonnull %172, ptr noundef %73, i32 noundef %221, i32 noundef %52)
  br label %223

223:                                              ; preds = %219, %216, %212, %206
  %224 = phi i32 [ %209, %206 ], [ %215, %212 ], [ %222, %219 ], [ %180, %216 ]
  %225 = icmp sgt i32 %224, %70
  br i1 %225, label %226, label %229

226:                                              ; preds = %223
  %227 = load ptr, ptr @stderr, align 8, !tbaa !37
  %228 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 44, i64 1, ptr %227) #11
  tail call void @exit(i32 noundef 1) #12
  unreachable

229:                                              ; preds = %223
  %230 = sext i32 %224 to i64
  %231 = tail call i64 @fwrite(ptr noundef %73, i64 noundef %230, i64 noundef 1, ptr noundef nonnull %55)
  %232 = trunc i64 %231 to i32
  %233 = mul i32 %179, %232
  %234 = mul nsw i64 %178, %165
  %235 = add nuw nsw i64 %234, %169
  %236 = getelementptr inbounds i32, ptr %65, i64 %235
  store i32 %181, ptr %236, align 4, !tbaa !39
  %237 = getelementptr inbounds i32, ptr %67, i64 %235
  store i32 %224, ptr %237, align 4, !tbaa !39
  %238 = add nsw i32 %224, %181
  %239 = add nuw nsw i64 %178, 1
  %240 = icmp eq i64 %239, %167
  br i1 %240, label %241, label %177, !llvm.loop !100

241:                                              ; preds = %229, %168
  %242 = phi i32 [ %174, %168 ], [ %238, %229 ]
  %243 = phi i32 [ %173, %168 ], [ %224, %229 ]
  %244 = phi i32 [ %170, %168 ], [ %233, %229 ]
  %245 = getelementptr inbounds i32, ptr %171, i64 %75
  %246 = icmp eq ptr %172, null
  %247 = getelementptr inbounds i32, ptr %172, i64 %75
  %248 = select i1 %246, ptr null, ptr %247
  %249 = add nuw nsw i64 %169, 1
  %250 = icmp eq i64 %249, %166
  br i1 %250, label %251, label %168, !llvm.loop !101

251:                                              ; preds = %241, %57
  %252 = phi i32 [ %154, %57 ], [ %244, %241 ]
  %253 = tail call i32 @fseek(ptr noundef nonnull %55, i64 noundef 512, i32 noundef 0)
  %254 = icmp eq i32 %60, 0
  br i1 %254, label %276, label %255

255:                                              ; preds = %251
  %256 = getelementptr inbounds [4 x i8], ptr %5, i64 0, i64 1
  %257 = getelementptr inbounds [4 x i8], ptr %5, i64 0, i64 2
  %258 = getelementptr inbounds [4 x i8], ptr %5, i64 0, i64 3
  br label %259

259:                                              ; preds = %255, %259
  %260 = phi i32 [ %60, %255 ], [ %272, %259 ]
  %261 = phi ptr [ %65, %255 ], [ %262, %259 ]
  %262 = getelementptr inbounds i32, ptr %261, i64 1
  %263 = load i32, ptr %261, align 4, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  %264 = lshr i32 %263, 24
  %265 = trunc i32 %264 to i8
  store i8 %265, ptr %5, align 1, !tbaa !34
  %266 = lshr i32 %263, 16
  %267 = trunc i32 %266 to i8
  store i8 %267, ptr %256, align 1, !tbaa !34
  %268 = lshr i32 %263, 8
  %269 = trunc i32 %268 to i8
  store i8 %269, ptr %257, align 1, !tbaa !34
  %270 = trunc i32 %263 to i8
  store i8 %270, ptr %258, align 1, !tbaa !34
  %271 = call i64 @fwrite(ptr noundef nonnull %5, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %55)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  %272 = add nsw i32 %260, -4
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %259, !llvm.loop !102

274:                                              ; preds = %259
  %275 = trunc i64 %271 to i32
  br label %276

276:                                              ; preds = %274, %251
  %277 = phi i32 [ %275, %274 ], [ 0, %251 ]
  %278 = mul nsw i32 %277, %252
  %279 = icmp eq i32 %60, 0
  br i1 %279, label %301, label %280

280:                                              ; preds = %276
  %281 = getelementptr inbounds [4 x i8], ptr %4, i64 0, i64 1
  %282 = getelementptr inbounds [4 x i8], ptr %4, i64 0, i64 2
  %283 = getelementptr inbounds [4 x i8], ptr %4, i64 0, i64 3
  br label %284

284:                                              ; preds = %280, %284
  %285 = phi i32 [ %60, %280 ], [ %297, %284 ]
  %286 = phi ptr [ %67, %280 ], [ %287, %284 ]
  %287 = getelementptr inbounds i32, ptr %286, i64 1
  %288 = load i32, ptr %286, align 4, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  %289 = lshr i32 %288, 24
  %290 = trunc i32 %289 to i8
  store i8 %290, ptr %4, align 1, !tbaa !34
  %291 = lshr i32 %288, 16
  %292 = trunc i32 %291 to i8
  store i8 %292, ptr %281, align 1, !tbaa !34
  %293 = lshr i32 %288, 8
  %294 = trunc i32 %293 to i8
  store i8 %294, ptr %282, align 1, !tbaa !34
  %295 = trunc i32 %288 to i8
  store i8 %295, ptr %283, align 1, !tbaa !34
  %296 = call i64 @fwrite(ptr noundef nonnull %4, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %55)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  %297 = add nsw i32 %285, -4
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %284, !llvm.loop !102

299:                                              ; preds = %284
  %300 = trunc i64 %296 to i32
  br label %301

301:                                              ; preds = %299, %276
  %302 = phi i32 [ %300, %299 ], [ 0, %276 ]
  %303 = mul nsw i32 %278, %302
  %304 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %304(ptr noundef nonnull %62) #10
  %305 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %305(ptr noundef %65) #10
  %306 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %306(ptr noundef %67) #10
  %307 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %307(ptr noundef %73) #10
  %308 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %308(ptr noundef %77) #10
  %309 = tail call i32 @fclose(ptr noundef nonnull %55)
  %310 = icmp eq i32 %303, 0
  br i1 %310, label %311, label %314

311:                                              ; preds = %301
  %312 = load ptr, ptr @stderr, align 8, !tbaa !37
  %313 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 42, i64 1, ptr %312) #11
  br label %314

314:                                              ; preds = %48, %301, %311
  %315 = phi i32 [ 0, %311 ], [ 0, %48 ], [ 1, %301 ]
  tail call void @IMB_convert_rgba_to_abgr(ptr noundef %0) #10
  %316 = load ptr, ptr %30, align 8, !tbaa !55
  %317 = icmp eq ptr %316, null
  br i1 %317, label %331, label %318

318:                                              ; preds = %314
  %319 = load i32, ptr %51, align 8, !tbaa !70
  %320 = load i32, ptr %53, align 4, !tbaa !71
  %321 = mul nsw i32 %320, %319
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %331, label %323

323:                                              ; preds = %318, %323
  %324 = phi ptr [ %329, %323 ], [ %316, %318 ]
  %325 = phi i32 [ %326, %323 ], [ %321, %318 ]
  %326 = add nsw i32 %325, -1
  %327 = load i32, ptr %324, align 4, !tbaa !39
  %328 = tail call i32 @llvm.bswap.i32(i32 %327)
  store i32 %328, ptr %324, align 4, !tbaa !39
  %329 = getelementptr inbounds i32, ptr %324, i64 1
  %330 = icmp eq i32 %326, 0
  br i1 %330, label %331, label %323, !llvm.loop !78

331:                                              ; preds = %323, %318, %314
  ret i32 %315
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare ptr @BLI_fopen(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @compressrow(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #4 {
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds i8, ptr %0, i64 %5
  %7 = shl nsw i32 %3, 2
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i8, ptr %6, i64 %8
  %10 = icmp sgt i32 %3, 0
  br i1 %10, label %14, label %136

11:                                               ; preds = %125, %118
  %12 = phi ptr [ %107, %118 ], [ %134, %125 ]
  %13 = icmp ult ptr %119, %9
  br i1 %13, label %14, label %136, !llvm.loop !103

14:                                               ; preds = %4, %11
  %15 = phi ptr [ %119, %11 ], [ %6, %4 ]
  %16 = phi ptr [ %12, %11 ], [ %1, %4 ]
  %17 = getelementptr inbounds i8, ptr %15, i64 8
  %18 = icmp ult ptr %17, %9
  br i1 %18, label %19, label %32

19:                                               ; preds = %14, %29
  %20 = phi ptr [ %30, %29 ], [ %17, %14 ]
  %21 = getelementptr inbounds i8, ptr %20, i64 -8
  %22 = load i8, ptr %21, align 1, !tbaa !34
  %23 = getelementptr inbounds i8, ptr %20, i64 -4
  %24 = load i8, ptr %23, align 1, !tbaa !34
  %25 = icmp eq i8 %22, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i8, ptr %20, align 1, !tbaa !34
  %28 = icmp eq i8 %24, %27
  br i1 %28, label %32, label %29

29:                                               ; preds = %19, %26
  %30 = getelementptr inbounds i8, ptr %20, i64 4
  %31 = icmp ult ptr %30, %9
  br i1 %31, label %19, label %32, !llvm.loop !104

32:                                               ; preds = %26, %29, %14
  %33 = phi ptr [ %17, %14 ], [ %20, %26 ], [ %30, %29 ]
  %34 = getelementptr inbounds i8, ptr %33, i64 -8
  %35 = ptrtoint ptr %34 to i64
  %36 = ptrtoint ptr %15 to i64
  %37 = sub i64 %35, %36
  %38 = sdiv i64 %37, 4
  %39 = trunc i64 %38 to i32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %106, label %45

41:                                               ; preds = %97, %59
  %42 = phi ptr [ %61, %59 ], [ %104, %97 ]
  %43 = phi ptr [ %62, %59 ], [ %103, %97 ]
  %44 = icmp eq i32 %52, 0
  br i1 %44, label %106, label %45, !llvm.loop !105

45:                                               ; preds = %32, %41
  %46 = phi i32 [ %52, %41 ], [ %39, %32 ]
  %47 = phi ptr [ %43, %41 ], [ %16, %32 ]
  %48 = phi ptr [ %42, %41 ], [ %15, %32 ]
  %49 = tail call i32 @llvm.smin.i32(i32 %46, i32 126)
  %50 = shl i32 %49, 16
  %51 = ashr exact i32 %50, 16
  %52 = sub nsw i32 %46, %51
  %53 = trunc i32 %49 to i8
  %54 = or i8 %53, -128
  %55 = getelementptr inbounds i8, ptr %47, i64 1
  store i8 %54, ptr %47, align 1, !tbaa !34
  %56 = shl i32 %49, 16
  %57 = ashr exact i32 %56, 16
  %58 = icmp sgt i32 %57, 8
  br i1 %58, label %65, label %59

59:                                               ; preds = %65, %45
  %60 = phi i32 [ %49, %45 ], [ %93, %65 ]
  %61 = phi ptr [ %48, %45 ], [ %92, %65 ]
  %62 = phi ptr [ %55, %45 ], [ %91, %65 ]
  %63 = trunc i32 %60 to i16
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %41, label %97

65:                                               ; preds = %45, %65
  %66 = phi i32 [ %95, %65 ], [ %57, %45 ]
  %67 = phi ptr [ %91, %65 ], [ %55, %45 ]
  %68 = phi ptr [ %92, %65 ], [ %48, %45 ]
  %69 = load i8, ptr %68, align 1, !tbaa !34
  store i8 %69, ptr %67, align 1, !tbaa !34
  %70 = getelementptr inbounds i8, ptr %68, i64 4
  %71 = load i8, ptr %70, align 1, !tbaa !34
  %72 = getelementptr inbounds i8, ptr %67, i64 1
  store i8 %71, ptr %72, align 1, !tbaa !34
  %73 = getelementptr inbounds i8, ptr %68, i64 8
  %74 = load i8, ptr %73, align 1, !tbaa !34
  %75 = getelementptr inbounds i8, ptr %67, i64 2
  store i8 %74, ptr %75, align 1, !tbaa !34
  %76 = getelementptr inbounds i8, ptr %68, i64 12
  %77 = load i8, ptr %76, align 1, !tbaa !34
  %78 = getelementptr inbounds i8, ptr %67, i64 3
  store i8 %77, ptr %78, align 1, !tbaa !34
  %79 = getelementptr inbounds i8, ptr %68, i64 16
  %80 = load i8, ptr %79, align 1, !tbaa !34
  %81 = getelementptr inbounds i8, ptr %67, i64 4
  store i8 %80, ptr %81, align 1, !tbaa !34
  %82 = getelementptr inbounds i8, ptr %68, i64 20
  %83 = load i8, ptr %82, align 1, !tbaa !34
  %84 = getelementptr inbounds i8, ptr %67, i64 5
  store i8 %83, ptr %84, align 1, !tbaa !34
  %85 = getelementptr inbounds i8, ptr %68, i64 24
  %86 = load i8, ptr %85, align 1, !tbaa !34
  %87 = getelementptr inbounds i8, ptr %67, i64 6
  store i8 %86, ptr %87, align 1, !tbaa !34
  %88 = getelementptr inbounds i8, ptr %68, i64 28
  %89 = load i8, ptr %88, align 1, !tbaa !34
  %90 = getelementptr inbounds i8, ptr %67, i64 7
  store i8 %89, ptr %90, align 1, !tbaa !34
  %91 = getelementptr inbounds i8, ptr %67, i64 8
  %92 = getelementptr inbounds i8, ptr %68, i64 32
  %93 = add nsw i32 %66, -8
  %94 = shl i32 %93, 16
  %95 = ashr exact i32 %94, 16
  %96 = icmp sgt i32 %95, 8
  br i1 %96, label %65, label %59, !llvm.loop !106

97:                                               ; preds = %59, %97
  %98 = phi i16 [ %101, %97 ], [ %63, %59 ]
  %99 = phi ptr [ %103, %97 ], [ %62, %59 ]
  %100 = phi ptr [ %104, %97 ], [ %61, %59 ]
  %101 = add i16 %98, -1
  %102 = load i8, ptr %100, align 1, !tbaa !34
  %103 = getelementptr inbounds i8, ptr %99, i64 1
  store i8 %102, ptr %99, align 1, !tbaa !34
  %104 = getelementptr inbounds i8, ptr %100, i64 4
  %105 = icmp eq i16 %101, 0
  br i1 %105, label %41, label %97, !llvm.loop !107

106:                                              ; preds = %41, %32
  %107 = phi ptr [ %16, %32 ], [ %43, %41 ]
  %108 = load i8, ptr %34, align 1, !tbaa !34
  %109 = getelementptr inbounds i8, ptr %33, i64 -4
  %110 = icmp ult ptr %109, %9
  br i1 %110, label %111, label %118

111:                                              ; preds = %106, %115
  %112 = phi ptr [ %116, %115 ], [ %109, %106 ]
  %113 = load i8, ptr %112, align 1, !tbaa !34
  %114 = icmp eq i8 %113, %108
  br i1 %114, label %115, label %118

115:                                              ; preds = %111
  %116 = getelementptr inbounds i8, ptr %112, i64 4
  %117 = icmp ult ptr %116, %9
  br i1 %117, label %111, label %118, !llvm.loop !108

118:                                              ; preds = %111, %115, %106
  %119 = phi ptr [ %109, %106 ], [ %112, %111 ], [ %116, %115 ]
  %120 = ptrtoint ptr %119 to i64
  %121 = sub i64 %120, %35
  %122 = sdiv i64 %121, 4
  %123 = trunc i64 %122 to i32
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %11, label %125

125:                                              ; preds = %118, %125
  %126 = phi i32 [ %131, %125 ], [ %123, %118 ]
  %127 = phi ptr [ %134, %125 ], [ %107, %118 ]
  %128 = tail call i32 @llvm.smin.i32(i32 %126, i32 126)
  %129 = shl i32 %128, 16
  %130 = ashr exact i32 %129, 16
  %131 = sub nsw i32 %126, %130
  %132 = trunc i32 %128 to i8
  %133 = getelementptr inbounds i8, ptr %127, i64 1
  store i8 %132, ptr %127, align 1, !tbaa !34
  %134 = getelementptr inbounds i8, ptr %127, i64 2
  store i8 %108, ptr %133, align 1, !tbaa !34
  %135 = icmp eq i32 %131, 0
  br i1 %135, label %11, label %125, !llvm.loop !109

136:                                              ; preds = %11, %4
  %137 = phi ptr [ %1, %4 ], [ %12, %11 ]
  %138 = getelementptr inbounds i8, ptr %137, i64 1
  store i8 0, ptr %137, align 1, !tbaa !34
  %139 = ptrtoint ptr %138 to i64
  %140 = ptrtoint ptr %1 to i64
  %141 = sub i64 %139, %140
  %142 = trunc i64 %141 to i32
  ret i32 %142
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { cold }
attributes #12 = { noreturn nounwind }

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
!37 = !{!38, !38, i64 0}
!38 = !{!"any pointer", !35, i64 0}
!39 = !{!40, !40, i64 0}
!40 = !{!"int", !35, i64 0}
!41 = !{!42, !40, i64 312}
!42 = !{!"ImBuf", !38, i64 0, !38, i64 8, !40, i64 16, !40, i64 20, !35, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !38, i64 40, !38, i64 48, !35, i64 56, !40, i64 72, !40, i64 76, !40, i64 80, !40, i64 84, !38, i64 88, !38, i64 96, !38, i64 104, !43, i64 112, !35, i64 120, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !38, i64 296, !38, i64 304, !40, i64 312, !35, i64 316, !35, i64 1340, !38, i64 2368, !40, i64 2376, !38, i64 2384, !40, i64 2392, !40, i64 2396, !38, i64 2400, !38, i64 2408, !38, i64 2416, !38, i64 2424, !40, i64 2432, !44, i64 2436, !45, i64 2456}
!43 = !{!"float", !35, i64 0}
!44 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!45 = !{!"DDSData", !40, i64 0, !40, i64 4, !38, i64 8, !40, i64 16}
!46 = distinct !{!46, !47, !48}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!"llvm.loop.unroll.disable"}
!49 = distinct !{!49, !47, !48}
!50 = distinct !{!50, !47, !48}
!51 = !{!42, !35, i64 24}
!52 = !{!42, !38, i64 40}
!53 = distinct !{!53, !47, !48}
!54 = distinct !{!54, !47, !48}
!55 = !{!42, !38, i64 96}
!56 = distinct !{!56, !47, !48}
!57 = distinct !{!57, !47, !48}
!58 = !{!42, !38, i64 48}
!59 = distinct !{!59, !47, !48}
!60 = distinct !{!60, !47, !48}
!61 = distinct !{!61, !47, !48}
!62 = distinct !{!62, !47, !48}
!63 = distinct !{!63, !47, !48}
!64 = distinct !{!64, !47, !48}
!65 = distinct !{!65, !47, !48}
!66 = !{!43, !43, i64 0}
!67 = distinct !{!67, !47, !48}
!68 = distinct !{!68, !47, !48}
!69 = distinct !{!69, !47, !48}
!70 = !{!42, !40, i64 16}
!71 = !{!42, !40, i64 20}
!72 = distinct !{!72, !47, !48}
!73 = distinct !{!73, !47, !48}
!74 = distinct !{!74, !47, !48}
!75 = distinct !{!75, !47, !48}
!76 = distinct !{!76, !47, !48}
!77 = distinct !{!77, !47, !48}
!78 = distinct !{!78, !47, !48}
!79 = distinct !{!79, !47, !48}
!80 = distinct !{!80, !47, !48}
!81 = distinct !{!81, !47, !48}
!82 = distinct !{!82, !47, !48}
!83 = distinct !{!83, !48}
!84 = distinct !{!84, !47, !48}
!85 = distinct !{!85, !47, !48}
!86 = distinct !{!86, !47, !48}
!87 = distinct !{!87, !47, !48}
!88 = distinct !{!88, !48}
!89 = !{!90, !91, i64 0}
!90 = !{!"", !91, i64 0, !91, i64 2, !91, i64 4, !91, i64 6, !91, i64 8, !91, i64 10, !40, i64 12, !40, i64 16, !40, i64 20, !35, i64 24, !40, i64 104, !40, i64 108, !91, i64 112, !91, i64 114, !91, i64 116, !91, i64 118, !91, i64 120, !91, i64 122, !38, i64 128, !38, i64 136, !38, i64 144, !40, i64 152, !40, i64 156, !38, i64 160, !38, i64 168}
!91 = !{!"short", !35, i64 0}
!92 = !{!90, !91, i64 2}
!93 = !{!90, !91, i64 4}
!94 = !{!90, !91, i64 6}
!95 = !{!90, !91, i64 8}
!96 = !{!90, !91, i64 10}
!97 = !{!90, !40, i64 12}
!98 = !{!90, !40, i64 16}
!99 = distinct !{!99, !47, !48}
!100 = distinct !{!100, !47, !48}
!101 = distinct !{!101, !47, !48}
!102 = distinct !{!102, !47, !48}
!103 = distinct !{!103, !47, !48}
!104 = distinct !{!104, !47, !48}
!105 = distinct !{!105, !47, !48}
!106 = distinct !{!106, !47, !48}
!107 = distinct !{!107, !47, !48}
!108 = distinct !{!108, !47, !48}
!109 = distinct !{!109, !47, !48}
