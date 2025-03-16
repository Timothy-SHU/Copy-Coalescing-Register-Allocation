; ModuleID = 'src/tif_aux.c'
source_filename = "src/tif_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tiff = type { ptr, i32, i32, i32, i32, i32, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i32, i16, i32, i32, i32, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @TIFFVGetFieldDefaulted(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6
  %5 = tail call i32 @TIFFVGetField(ptr noundef %0, i32 noundef %1, ptr noundef %2) #6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %561

7:                                                ; preds = %3
  switch i32 %1, label %561 [
    i32 254, label %8
    i32 258, label %26
    i32 263, label %44
    i32 266, label %62
    i32 274, label %80
    i32 277, label %98
    i32 278, label %116
    i32 280, label %134
    i32 281, label %152
    i32 284, label %170
    i32 296, label %188
    i32 336, label %206
    i32 332, label %243
    i32 334, label %261
    i32 338, label %279
    i32 32995, label %314
    i32 32998, label %341
    i32 32996, label %359
    i32 32997, label %378
    i32 529, label %396
    i32 530, label %421
    i32 531, label %456
    i32 301, label %474
    i32 532, label %539
  ]

8:                                                ; preds = %7
  %9 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !5
  %11 = load i32, ptr %2, align 8
  %12 = icmp ult i32 %11, 41
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8
  %16 = zext nneg i32 %11 to i64
  %17 = getelementptr i8, ptr %15, i64 %16
  %18 = add nuw nsw i32 %11, 8
  store i32 %18, ptr %2, align 8
  br label %23

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr i8, ptr %21, i64 8
  store ptr %22, ptr %20, align 8
  br label %23

23:                                               ; preds = %19, %13
  %24 = phi ptr [ %17, %13 ], [ %21, %19 ]
  %25 = load ptr, ptr %24, align 8
  store i32 %10, ptr %25, align 4, !tbaa !14
  br label %561

26:                                               ; preds = %7
  %27 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 8
  %28 = load i16, ptr %27, align 4, !tbaa !15
  %29 = load i32, ptr %2, align 8
  %30 = icmp ult i32 %29, 41
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8
  %34 = zext nneg i32 %29 to i64
  %35 = getelementptr i8, ptr %33, i64 %34
  %36 = add nuw nsw i32 %29, 8
  store i32 %36, ptr %2, align 8
  br label %41

37:                                               ; preds = %26
  %38 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr i8, ptr %39, i64 8
  store ptr %40, ptr %38, align 8
  br label %41

41:                                               ; preds = %37, %31
  %42 = phi ptr [ %35, %31 ], [ %39, %37 ]
  %43 = load ptr, ptr %42, align 8
  store i16 %28, ptr %43, align 2, !tbaa !16
  br label %561

44:                                               ; preds = %7
  %45 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 12
  %46 = load i16, ptr %45, align 4, !tbaa !17
  %47 = load i32, ptr %2, align 8
  %48 = icmp ult i32 %47, 41
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8
  %52 = zext nneg i32 %47 to i64
  %53 = getelementptr i8, ptr %51, i64 %52
  %54 = add nuw nsw i32 %47, 8
  store i32 %54, ptr %2, align 8
  br label %59

55:                                               ; preds = %44
  %56 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr i8, ptr %57, i64 8
  store ptr %58, ptr %56, align 8
  br label %59

59:                                               ; preds = %55, %49
  %60 = phi ptr [ %53, %49 ], [ %57, %55 ]
  %61 = load ptr, ptr %60, align 8
  store i16 %46, ptr %61, align 2, !tbaa !16
  br label %561

62:                                               ; preds = %7
  %63 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 13
  %64 = load i16, ptr %63, align 2, !tbaa !18
  %65 = load i32, ptr %2, align 8
  %66 = icmp ult i32 %65, 41
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8
  %70 = zext nneg i32 %65 to i64
  %71 = getelementptr i8, ptr %69, i64 %70
  %72 = add nuw nsw i32 %65, 8
  store i32 %72, ptr %2, align 8
  br label %77

73:                                               ; preds = %62
  %74 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8
  %76 = getelementptr i8, ptr %75, i64 8
  store ptr %76, ptr %74, align 8
  br label %77

77:                                               ; preds = %73, %67
  %78 = phi ptr [ %71, %67 ], [ %75, %73 ]
  %79 = load ptr, ptr %78, align 8
  store i16 %64, ptr %79, align 2, !tbaa !16
  br label %561

80:                                               ; preds = %7
  %81 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 14
  %82 = load i16, ptr %81, align 8, !tbaa !19
  %83 = load i32, ptr %2, align 8
  %84 = icmp ult i32 %83, 41
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8
  %88 = zext nneg i32 %83 to i64
  %89 = getelementptr i8, ptr %87, i64 %88
  %90 = add nuw nsw i32 %83, 8
  store i32 %90, ptr %2, align 8
  br label %95

91:                                               ; preds = %80
  %92 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8
  %94 = getelementptr i8, ptr %93, i64 8
  store ptr %94, ptr %92, align 8
  br label %95

95:                                               ; preds = %91, %85
  %96 = phi ptr [ %89, %85 ], [ %93, %91 ]
  %97 = load ptr, ptr %96, align 8
  store i16 %82, ptr %97, align 2, !tbaa !16
  br label %561

98:                                               ; preds = %7
  %99 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 15
  %100 = load i16, ptr %99, align 2, !tbaa !20
  %101 = load i32, ptr %2, align 8
  %102 = icmp ult i32 %101, 41
  br i1 %102, label %103, label %109

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %105 = load ptr, ptr %104, align 8
  %106 = zext nneg i32 %101 to i64
  %107 = getelementptr i8, ptr %105, i64 %106
  %108 = add nuw nsw i32 %101, 8
  store i32 %108, ptr %2, align 8
  br label %113

109:                                              ; preds = %98
  %110 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %111 = load ptr, ptr %110, align 8
  %112 = getelementptr i8, ptr %111, i64 8
  store ptr %112, ptr %110, align 8
  br label %113

113:                                              ; preds = %109, %103
  %114 = phi ptr [ %107, %103 ], [ %111, %109 ]
  %115 = load ptr, ptr %114, align 8
  store i16 %100, ptr %115, align 2, !tbaa !16
  br label %561

116:                                              ; preds = %7
  %117 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 16
  %118 = load i32, ptr %117, align 4, !tbaa !21
  %119 = load i32, ptr %2, align 8
  %120 = icmp ult i32 %119, 41
  br i1 %120, label %121, label %127

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %123 = load ptr, ptr %122, align 8
  %124 = zext nneg i32 %119 to i64
  %125 = getelementptr i8, ptr %123, i64 %124
  %126 = add nuw nsw i32 %119, 8
  store i32 %126, ptr %2, align 8
  br label %131

127:                                              ; preds = %116
  %128 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %129 = load ptr, ptr %128, align 8
  %130 = getelementptr i8, ptr %129, i64 8
  store ptr %130, ptr %128, align 8
  br label %131

131:                                              ; preds = %127, %121
  %132 = phi ptr [ %125, %121 ], [ %129, %127 ]
  %133 = load ptr, ptr %132, align 8
  store i32 %118, ptr %133, align 4, !tbaa !14
  br label %561

134:                                              ; preds = %7
  %135 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 17
  %136 = load i16, ptr %135, align 8, !tbaa !22
  %137 = load i32, ptr %2, align 8
  %138 = icmp ult i32 %137, 41
  br i1 %138, label %139, label %145

139:                                              ; preds = %134
  %140 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %141 = load ptr, ptr %140, align 8
  %142 = zext nneg i32 %137 to i64
  %143 = getelementptr i8, ptr %141, i64 %142
  %144 = add nuw nsw i32 %137, 8
  store i32 %144, ptr %2, align 8
  br label %149

145:                                              ; preds = %134
  %146 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %147 = load ptr, ptr %146, align 8
  %148 = getelementptr i8, ptr %147, i64 8
  store ptr %148, ptr %146, align 8
  br label %149

149:                                              ; preds = %145, %139
  %150 = phi ptr [ %143, %139 ], [ %147, %145 ]
  %151 = load ptr, ptr %150, align 8
  store i16 %136, ptr %151, align 2, !tbaa !16
  br label %561

152:                                              ; preds = %7
  %153 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 18
  %154 = load i16, ptr %153, align 2, !tbaa !23
  %155 = load i32, ptr %2, align 8
  %156 = icmp ult i32 %155, 41
  br i1 %156, label %157, label %163

157:                                              ; preds = %152
  %158 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %159 = load ptr, ptr %158, align 8
  %160 = zext nneg i32 %155 to i64
  %161 = getelementptr i8, ptr %159, i64 %160
  %162 = add nuw nsw i32 %155, 8
  store i32 %162, ptr %2, align 8
  br label %167

163:                                              ; preds = %152
  %164 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %165 = load ptr, ptr %164, align 8
  %166 = getelementptr i8, ptr %165, i64 8
  store ptr %166, ptr %164, align 8
  br label %167

167:                                              ; preds = %163, %157
  %168 = phi ptr [ %161, %157 ], [ %165, %163 ]
  %169 = load ptr, ptr %168, align 8
  store i16 %154, ptr %169, align 2, !tbaa !16
  br label %561

170:                                              ; preds = %7
  %171 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 24
  %172 = load i16, ptr %171, align 2, !tbaa !24
  %173 = load i32, ptr %2, align 8
  %174 = icmp ult i32 %173, 41
  br i1 %174, label %175, label %181

175:                                              ; preds = %170
  %176 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %177 = load ptr, ptr %176, align 8
  %178 = zext nneg i32 %173 to i64
  %179 = getelementptr i8, ptr %177, i64 %178
  %180 = add nuw nsw i32 %173, 8
  store i32 %180, ptr %2, align 8
  br label %185

181:                                              ; preds = %170
  %182 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %183 = load ptr, ptr %182, align 8
  %184 = getelementptr i8, ptr %183, i64 8
  store ptr %184, ptr %182, align 8
  br label %185

185:                                              ; preds = %181, %175
  %186 = phi ptr [ %179, %175 ], [ %183, %181 ]
  %187 = load ptr, ptr %186, align 8
  store i16 %172, ptr %187, align 2, !tbaa !16
  br label %561

188:                                              ; preds = %7
  %189 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 23
  %190 = load i16, ptr %189, align 8, !tbaa !25
  %191 = load i32, ptr %2, align 8
  %192 = icmp ult i32 %191, 41
  br i1 %192, label %193, label %199

193:                                              ; preds = %188
  %194 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %195 = load ptr, ptr %194, align 8
  %196 = zext nneg i32 %191 to i64
  %197 = getelementptr i8, ptr %195, i64 %196
  %198 = add nuw nsw i32 %191, 8
  store i32 %198, ptr %2, align 8
  br label %203

199:                                              ; preds = %188
  %200 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %201 = load ptr, ptr %200, align 8
  %202 = getelementptr i8, ptr %201, i64 8
  store ptr %202, ptr %200, align 8
  br label %203

203:                                              ; preds = %199, %193
  %204 = phi ptr [ %197, %193 ], [ %201, %199 ]
  %205 = load ptr, ptr %204, align 8
  store i16 %190, ptr %205, align 2, !tbaa !16
  br label %561

206:                                              ; preds = %7
  %207 = load i32, ptr %2, align 8
  %208 = icmp ult i32 %207, 41
  br i1 %208, label %209, label %215

209:                                              ; preds = %206
  %210 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %211 = load ptr, ptr %210, align 8
  %212 = zext nneg i32 %207 to i64
  %213 = getelementptr i8, ptr %211, i64 %212
  %214 = add nuw nsw i32 %207, 8
  store i32 %214, ptr %2, align 8
  br label %219

215:                                              ; preds = %206
  %216 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %217 = load ptr, ptr %216, align 8
  %218 = getelementptr i8, ptr %217, i64 8
  store ptr %218, ptr %216, align 8
  br label %219

219:                                              ; preds = %215, %209
  %220 = phi ptr [ %213, %209 ], [ %217, %215 ]
  %221 = load ptr, ptr %220, align 8
  store i16 0, ptr %221, align 2, !tbaa !16
  %222 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 8
  %223 = load i16, ptr %222, align 4, !tbaa !15
  %224 = zext nneg i16 %223 to i32
  %225 = shl nsw i32 -1, %224
  %226 = trunc i32 %225 to i16
  %227 = xor i16 %226, -1
  %228 = load i32, ptr %2, align 8
  %229 = icmp ult i32 %228, 41
  br i1 %229, label %230, label %236

230:                                              ; preds = %219
  %231 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %232 = load ptr, ptr %231, align 8
  %233 = zext nneg i32 %228 to i64
  %234 = getelementptr i8, ptr %232, i64 %233
  %235 = add nuw nsw i32 %228, 8
  store i32 %235, ptr %2, align 8
  br label %240

236:                                              ; preds = %219
  %237 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %238 = load ptr, ptr %237, align 8
  %239 = getelementptr i8, ptr %238, i64 8
  store ptr %239, ptr %237, align 8
  br label %240

240:                                              ; preds = %236, %230
  %241 = phi ptr [ %234, %230 ], [ %238, %236 ]
  %242 = load ptr, ptr %241, align 8
  store i16 %227, ptr %242, align 2, !tbaa !16
  br label %561

243:                                              ; preds = %7
  %244 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 55
  %245 = load i16, ptr %244, align 8, !tbaa !26
  %246 = load i32, ptr %2, align 8
  %247 = icmp ult i32 %246, 41
  br i1 %247, label %248, label %254

248:                                              ; preds = %243
  %249 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %250 = load ptr, ptr %249, align 8
  %251 = zext nneg i32 %246 to i64
  %252 = getelementptr i8, ptr %250, i64 %251
  %253 = add nuw nsw i32 %246, 8
  store i32 %253, ptr %2, align 8
  br label %258

254:                                              ; preds = %243
  %255 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %256 = load ptr, ptr %255, align 8
  %257 = getelementptr i8, ptr %256, i64 8
  store ptr %257, ptr %255, align 8
  br label %258

258:                                              ; preds = %254, %248
  %259 = phi ptr [ %252, %248 ], [ %256, %254 ]
  %260 = load ptr, ptr %259, align 8
  store i16 %245, ptr %260, align 2, !tbaa !16
  br label %561

261:                                              ; preds = %7
  %262 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 56
  %263 = load i16, ptr %262, align 2, !tbaa !27
  %264 = load i32, ptr %2, align 8
  %265 = icmp ult i32 %264, 41
  br i1 %265, label %266, label %272

266:                                              ; preds = %261
  %267 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %268 = load ptr, ptr %267, align 8
  %269 = zext nneg i32 %264 to i64
  %270 = getelementptr i8, ptr %268, i64 %269
  %271 = add nuw nsw i32 %264, 8
  store i32 %271, ptr %2, align 8
  br label %276

272:                                              ; preds = %261
  %273 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %274 = load ptr, ptr %273, align 8
  %275 = getelementptr i8, ptr %274, i64 8
  store ptr %275, ptr %273, align 8
  br label %276

276:                                              ; preds = %272, %266
  %277 = phi ptr [ %270, %266 ], [ %274, %272 ]
  %278 = load ptr, ptr %277, align 8
  store i16 %263, ptr %278, align 2, !tbaa !16
  br label %561

279:                                              ; preds = %7
  %280 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 30
  %281 = load i16, ptr %280, align 4, !tbaa !28
  %282 = load i32, ptr %2, align 8
  %283 = icmp ult i32 %282, 41
  br i1 %283, label %284, label %290

284:                                              ; preds = %279
  %285 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %286 = load ptr, ptr %285, align 8
  %287 = zext nneg i32 %282 to i64
  %288 = getelementptr i8, ptr %286, i64 %287
  %289 = add nuw nsw i32 %282, 8
  store i32 %289, ptr %2, align 8
  br label %294

290:                                              ; preds = %279
  %291 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %292 = load ptr, ptr %291, align 8
  %293 = getelementptr i8, ptr %292, i64 8
  store ptr %293, ptr %291, align 8
  br label %294

294:                                              ; preds = %290, %284
  %295 = phi ptr [ %288, %284 ], [ %292, %290 ]
  %296 = load ptr, ptr %295, align 8
  store i16 %281, ptr %296, align 2, !tbaa !16
  %297 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 31
  %298 = load ptr, ptr %297, align 8, !tbaa !29
  %299 = load i32, ptr %2, align 8
  %300 = icmp ult i32 %299, 41
  br i1 %300, label %301, label %307

301:                                              ; preds = %294
  %302 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %303 = load ptr, ptr %302, align 8
  %304 = zext nneg i32 %299 to i64
  %305 = getelementptr i8, ptr %303, i64 %304
  %306 = add nuw nsw i32 %299, 8
  store i32 %306, ptr %2, align 8
  br label %311

307:                                              ; preds = %294
  %308 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %309 = load ptr, ptr %308, align 8
  %310 = getelementptr i8, ptr %309, i64 8
  store ptr %310, ptr %308, align 8
  br label %311

311:                                              ; preds = %307, %301
  %312 = phi ptr [ %305, %301 ], [ %309, %307 ]
  %313 = load ptr, ptr %312, align 8
  store ptr %298, ptr %313, align 8, !tbaa !30
  br label %561

314:                                              ; preds = %7
  %315 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 30
  %316 = load i16, ptr %315, align 4, !tbaa !28
  %317 = icmp eq i16 %316, 1
  br i1 %317, label %318, label %324

318:                                              ; preds = %314
  %319 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 31
  %320 = load ptr, ptr %319, align 8, !tbaa !29
  %321 = load i16, ptr %320, align 2, !tbaa !16
  %322 = icmp eq i16 %321, 1
  %323 = zext i1 %322 to i16
  br label %324

324:                                              ; preds = %318, %314
  %325 = phi i16 [ 0, %314 ], [ %323, %318 ]
  %326 = load i32, ptr %2, align 8
  %327 = icmp ult i32 %326, 41
  br i1 %327, label %328, label %334

328:                                              ; preds = %324
  %329 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %330 = load ptr, ptr %329, align 8
  %331 = zext nneg i32 %326 to i64
  %332 = getelementptr i8, ptr %330, i64 %331
  %333 = add nuw nsw i32 %326, 8
  store i32 %333, ptr %2, align 8
  br label %338

334:                                              ; preds = %324
  %335 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %336 = load ptr, ptr %335, align 8
  %337 = getelementptr i8, ptr %336, i64 8
  store ptr %337, ptr %335, align 8
  br label %338

338:                                              ; preds = %334, %328
  %339 = phi ptr [ %332, %328 ], [ %336, %334 ]
  %340 = load ptr, ptr %339, align 8
  store i16 %325, ptr %340, align 2, !tbaa !16
  br label %561

341:                                              ; preds = %7
  %342 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 6
  %343 = load i32, ptr %342, align 4, !tbaa !31
  %344 = load i32, ptr %2, align 8
  %345 = icmp ult i32 %344, 41
  br i1 %345, label %346, label %352

346:                                              ; preds = %341
  %347 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %348 = load ptr, ptr %347, align 8
  %349 = zext nneg i32 %344 to i64
  %350 = getelementptr i8, ptr %348, i64 %349
  %351 = add nuw nsw i32 %344, 8
  store i32 %351, ptr %2, align 8
  br label %356

352:                                              ; preds = %341
  %353 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %354 = load ptr, ptr %353, align 8
  %355 = getelementptr i8, ptr %354, i64 8
  store ptr %355, ptr %353, align 8
  br label %356

356:                                              ; preds = %352, %346
  %357 = phi ptr [ %350, %346 ], [ %354, %352 ]
  %358 = load ptr, ptr %357, align 8
  store i32 %343, ptr %358, align 4, !tbaa !14
  br label %561

359:                                              ; preds = %7
  %360 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 9
  %361 = load i16, ptr %360, align 2, !tbaa !32
  %362 = add i16 %361, -1
  %363 = load i32, ptr %2, align 8
  %364 = icmp ult i32 %363, 41
  br i1 %364, label %365, label %371

365:                                              ; preds = %359
  %366 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %367 = load ptr, ptr %366, align 8
  %368 = zext nneg i32 %363 to i64
  %369 = getelementptr i8, ptr %367, i64 %368
  %370 = add nuw nsw i32 %363, 8
  store i32 %370, ptr %2, align 8
  br label %375

371:                                              ; preds = %359
  %372 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %373 = load ptr, ptr %372, align 8
  %374 = getelementptr i8, ptr %373, i64 8
  store ptr %374, ptr %372, align 8
  br label %375

375:                                              ; preds = %371, %365
  %376 = phi ptr [ %369, %365 ], [ %373, %371 ]
  %377 = load ptr, ptr %376, align 8
  store i16 %362, ptr %377, align 2, !tbaa !16
  br label %561

378:                                              ; preds = %7
  %379 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 3
  %380 = load i32, ptr %379, align 8, !tbaa !33
  %381 = load i32, ptr %2, align 8
  %382 = icmp ult i32 %381, 41
  br i1 %382, label %383, label %389

383:                                              ; preds = %378
  %384 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %385 = load ptr, ptr %384, align 8
  %386 = zext nneg i32 %381 to i64
  %387 = getelementptr i8, ptr %385, i64 %386
  %388 = add nuw nsw i32 %381, 8
  store i32 %388, ptr %2, align 8
  br label %393

389:                                              ; preds = %378
  %390 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %391 = load ptr, ptr %390, align 8
  %392 = getelementptr i8, ptr %391, i64 8
  store ptr %392, ptr %390, align 8
  br label %393

393:                                              ; preds = %389, %383
  %394 = phi ptr [ %387, %383 ], [ %391, %389 ]
  %395 = load ptr, ptr %394, align 8
  store i32 %380, ptr %395, align 4, !tbaa !14
  br label %561

396:                                              ; preds = %7
  %397 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 48
  %398 = load ptr, ptr %397, align 8, !tbaa !34
  %399 = icmp eq ptr %398, null
  br i1 %399, label %400, label %404

400:                                              ; preds = %396
  %401 = tail call ptr @_TIFFmalloc(i32 noundef 12) #6
  store ptr %401, ptr %397, align 8, !tbaa !34
  store float 0x3FD322D0E0000000, ptr %401, align 4, !tbaa !35
  %402 = getelementptr inbounds float, ptr %401, i64 1
  store float 0x3FE2C8B440000000, ptr %402, align 4, !tbaa !35
  %403 = getelementptr inbounds float, ptr %401, i64 2
  store float 0x3FBD2F1AA0000000, ptr %403, align 4, !tbaa !35
  br label %404

404:                                              ; preds = %400, %396
  %405 = load ptr, ptr %397, align 8, !tbaa !34
  %406 = load i32, ptr %2, align 8
  %407 = icmp ult i32 %406, 41
  br i1 %407, label %408, label %414

408:                                              ; preds = %404
  %409 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %410 = load ptr, ptr %409, align 8
  %411 = zext nneg i32 %406 to i64
  %412 = getelementptr i8, ptr %410, i64 %411
  %413 = add nuw nsw i32 %406, 8
  store i32 %413, ptr %2, align 8
  br label %418

414:                                              ; preds = %404
  %415 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %416 = load ptr, ptr %415, align 8
  %417 = getelementptr i8, ptr %416, i64 8
  store ptr %417, ptr %415, align 8
  br label %418

418:                                              ; preds = %414, %408
  %419 = phi ptr [ %412, %408 ], [ %416, %414 ]
  %420 = load ptr, ptr %419, align 8
  store ptr %405, ptr %420, align 8, !tbaa !30
  br label %561

421:                                              ; preds = %7
  %422 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 49
  %423 = load i16, ptr %422, align 8, !tbaa !16
  %424 = load i32, ptr %2, align 8
  %425 = icmp ult i32 %424, 41
  br i1 %425, label %426, label %432

426:                                              ; preds = %421
  %427 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %428 = load ptr, ptr %427, align 8
  %429 = zext nneg i32 %424 to i64
  %430 = getelementptr i8, ptr %428, i64 %429
  %431 = add nuw nsw i32 %424, 8
  store i32 %431, ptr %2, align 8
  br label %436

432:                                              ; preds = %421
  %433 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %434 = load ptr, ptr %433, align 8
  %435 = getelementptr i8, ptr %434, i64 8
  store ptr %435, ptr %433, align 8
  br label %436

436:                                              ; preds = %432, %426
  %437 = phi ptr [ %430, %426 ], [ %434, %432 ]
  %438 = load ptr, ptr %437, align 8
  store i16 %423, ptr %438, align 2, !tbaa !16
  %439 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 49, i64 1
  %440 = load i16, ptr %439, align 2, !tbaa !16
  %441 = load i32, ptr %2, align 8
  %442 = icmp ult i32 %441, 41
  br i1 %442, label %443, label %449

443:                                              ; preds = %436
  %444 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %445 = load ptr, ptr %444, align 8
  %446 = zext nneg i32 %441 to i64
  %447 = getelementptr i8, ptr %445, i64 %446
  %448 = add nuw nsw i32 %441, 8
  store i32 %448, ptr %2, align 8
  br label %453

449:                                              ; preds = %436
  %450 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %451 = load ptr, ptr %450, align 8
  %452 = getelementptr i8, ptr %451, i64 8
  store ptr %452, ptr %450, align 8
  br label %453

453:                                              ; preds = %449, %443
  %454 = phi ptr [ %447, %443 ], [ %451, %449 ]
  %455 = load ptr, ptr %454, align 8
  store i16 %440, ptr %455, align 2, !tbaa !16
  br label %561

456:                                              ; preds = %7
  %457 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 50
  %458 = load i16, ptr %457, align 4, !tbaa !36
  %459 = load i32, ptr %2, align 8
  %460 = icmp ult i32 %459, 41
  br i1 %460, label %461, label %467

461:                                              ; preds = %456
  %462 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %463 = load ptr, ptr %462, align 8
  %464 = zext nneg i32 %459 to i64
  %465 = getelementptr i8, ptr %463, i64 %464
  %466 = add nuw nsw i32 %459, 8
  store i32 %466, ptr %2, align 8
  br label %471

467:                                              ; preds = %456
  %468 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %469 = load ptr, ptr %468, align 8
  %470 = getelementptr i8, ptr %469, i64 8
  store ptr %470, ptr %468, align 8
  br label %471

471:                                              ; preds = %467, %461
  %472 = phi ptr [ %465, %461 ], [ %469, %467 ]
  %473 = load ptr, ptr %472, align 8
  store i16 %458, ptr %473, align 2, !tbaa !16
  br label %561

474:                                              ; preds = %7
  %475 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 54
  %476 = load ptr, ptr %475, align 8, !tbaa !30
  %477 = icmp eq ptr %476, null
  br i1 %477, label %478, label %479

478:                                              ; preds = %474
  tail call fastcc void @TIFFDefaultTransferFunction(ptr noundef nonnull %4)
  br label %479

479:                                              ; preds = %478, %474
  %480 = load ptr, ptr %475, align 8, !tbaa !30
  %481 = load i32, ptr %2, align 8
  %482 = icmp ult i32 %481, 41
  br i1 %482, label %483, label %489

483:                                              ; preds = %479
  %484 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %485 = load ptr, ptr %484, align 8
  %486 = zext nneg i32 %481 to i64
  %487 = getelementptr i8, ptr %485, i64 %486
  %488 = add nuw nsw i32 %481, 8
  store i32 %488, ptr %2, align 8
  br label %493

489:                                              ; preds = %479
  %490 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %491 = load ptr, ptr %490, align 8
  %492 = getelementptr i8, ptr %491, i64 8
  store ptr %492, ptr %490, align 8
  br label %493

493:                                              ; preds = %489, %483
  %494 = phi ptr [ %487, %483 ], [ %491, %489 ]
  %495 = load ptr, ptr %494, align 8
  store ptr %480, ptr %495, align 8, !tbaa !30
  %496 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 15
  %497 = load i16, ptr %496, align 2, !tbaa !20
  %498 = zext i16 %497 to i32
  %499 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 30
  %500 = load i16, ptr %499, align 4, !tbaa !28
  %501 = zext i16 %500 to i32
  %502 = sub nsw i32 %498, %501
  %503 = icmp sgt i32 %502, 1
  br i1 %503, label %504, label %561

504:                                              ; preds = %493
  %505 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 54, i64 1
  %506 = load ptr, ptr %505, align 8, !tbaa !30
  %507 = load i32, ptr %2, align 8
  %508 = icmp ult i32 %507, 41
  br i1 %508, label %509, label %515

509:                                              ; preds = %504
  %510 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %511 = load ptr, ptr %510, align 8
  %512 = zext nneg i32 %507 to i64
  %513 = getelementptr i8, ptr %511, i64 %512
  %514 = add nuw nsw i32 %507, 8
  store i32 %514, ptr %2, align 8
  br label %519

515:                                              ; preds = %504
  %516 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %517 = load ptr, ptr %516, align 8
  %518 = getelementptr i8, ptr %517, i64 8
  store ptr %518, ptr %516, align 8
  br label %519

519:                                              ; preds = %515, %509
  %520 = phi ptr [ %513, %509 ], [ %517, %515 ]
  %521 = load ptr, ptr %520, align 8
  store ptr %506, ptr %521, align 8, !tbaa !30
  %522 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 54, i64 2
  %523 = load ptr, ptr %522, align 8, !tbaa !30
  %524 = load i32, ptr %2, align 8
  %525 = icmp ult i32 %524, 41
  br i1 %525, label %526, label %532

526:                                              ; preds = %519
  %527 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %528 = load ptr, ptr %527, align 8
  %529 = zext nneg i32 %524 to i64
  %530 = getelementptr i8, ptr %528, i64 %529
  %531 = add nuw nsw i32 %524, 8
  store i32 %531, ptr %2, align 8
  br label %536

532:                                              ; preds = %519
  %533 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %534 = load ptr, ptr %533, align 8
  %535 = getelementptr i8, ptr %534, i64 8
  store ptr %535, ptr %533, align 8
  br label %536

536:                                              ; preds = %532, %526
  %537 = phi ptr [ %530, %526 ], [ %534, %532 ]
  %538 = load ptr, ptr %537, align 8
  store ptr %523, ptr %538, align 8, !tbaa !30
  br label %561

539:                                              ; preds = %7
  %540 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 53
  %541 = load ptr, ptr %540, align 8, !tbaa !37
  %542 = icmp eq ptr %541, null
  br i1 %542, label %543, label %544

543:                                              ; preds = %539
  tail call fastcc void @TIFFDefaultRefBlackWhite(ptr noundef nonnull %4)
  br label %544

544:                                              ; preds = %543, %539
  %545 = load ptr, ptr %540, align 8, !tbaa !37
  %546 = load i32, ptr %2, align 8
  %547 = icmp ult i32 %546, 41
  br i1 %547, label %548, label %554

548:                                              ; preds = %544
  %549 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %550 = load ptr, ptr %549, align 8
  %551 = zext nneg i32 %546 to i64
  %552 = getelementptr i8, ptr %550, i64 %551
  %553 = add nuw nsw i32 %546, 8
  store i32 %553, ptr %2, align 8
  br label %558

554:                                              ; preds = %544
  %555 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %556 = load ptr, ptr %555, align 8
  %557 = getelementptr i8, ptr %556, i64 8
  store ptr %557, ptr %555, align 8
  br label %558

558:                                              ; preds = %554, %548
  %559 = phi ptr [ %552, %548 ], [ %556, %554 ]
  %560 = load ptr, ptr %559, align 8
  store ptr %545, ptr %560, align 8, !tbaa !30
  br label %561

561:                                              ; preds = %7, %493, %536, %3, %558, %471, %453, %418, %393, %375, %356, %338, %311, %276, %258, %240, %203, %185, %167, %149, %131, %113, %95, %77, %59, %41, %23
  %562 = phi i32 [ 1, %558 ], [ 1, %471 ], [ 1, %453 ], [ 1, %418 ], [ 1, %393 ], [ 1, %375 ], [ 1, %356 ], [ 1, %338 ], [ 1, %311 ], [ 1, %276 ], [ 1, %258 ], [ 1, %240 ], [ 1, %203 ], [ 1, %185 ], [ 1, %167 ], [ 1, %149 ], [ 1, %131 ], [ 1, %113 ], [ 1, %95 ], [ 1, %77 ], [ 1, %59 ], [ 1, %41 ], [ 1, %23 ], [ 1, %3 ], [ 1, %536 ], [ 1, %493 ], [ 0, %7 ]
  ret i32 %562
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @TIFFVGetField(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @_TIFFmalloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @TIFFDefaultTransferFunction(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.TIFFDirectory, ptr %0, i64 0, i32 54
  %3 = getelementptr inbounds %struct.TIFFDirectory, ptr %0, i64 0, i32 8
  %4 = load i16, ptr %3, align 4, !tbaa !15
  %5 = zext nneg i16 %4 to i32
  %6 = shl nuw i32 1, %5
  %7 = sext i32 %6 to i64
  %8 = shl i32 2, %5
  %9 = tail call ptr @_TIFFmalloc(i32 noundef %8) #6
  store ptr %9, ptr %2, align 8, !tbaa !30
  store i16 0, ptr %9, align 2, !tbaa !16
  %10 = icmp sgt i32 %6, 1
  br i1 %10, label %11, label %26

11:                                               ; preds = %1
  %12 = add nsw i32 %6, -1
  %13 = sitofp i32 %12 to double
  br label %14

14:                                               ; preds = %11, %14
  %15 = phi i64 [ 1, %11 ], [ %24, %14 ]
  %16 = sitofp i64 %15 to double
  %17 = fdiv double %16, %13
  %18 = tail call double @pow(double noundef %17, double noundef 2.200000e+00) #6
  %19 = tail call double @llvm.fmuladd.f64(double %18, double 6.553500e+04, double 5.000000e-01)
  %20 = tail call double @llvm.floor.f64(double %19)
  %21 = fptoui double %20 to i16
  %22 = load ptr, ptr %2, align 8, !tbaa !30
  %23 = getelementptr inbounds i16, ptr %22, i64 %15
  store i16 %21, ptr %23, align 2, !tbaa !16
  %24 = add nuw nsw i64 %15, 1
  %25 = icmp eq i64 %24, %7
  br i1 %25, label %26, label %14, !llvm.loop !38

26:                                               ; preds = %14, %1
  %27 = getelementptr inbounds %struct.TIFFDirectory, ptr %0, i64 0, i32 15
  %28 = load i16, ptr %27, align 2, !tbaa !20
  %29 = zext i16 %28 to i32
  %30 = getelementptr inbounds %struct.TIFFDirectory, ptr %0, i64 0, i32 30
  %31 = load i16, ptr %30, align 4, !tbaa !28
  %32 = zext i16 %31 to i32
  %33 = sub nsw i32 %29, %32
  %34 = icmp sgt i32 %33, 1
  br i1 %34, label %35, label %42

35:                                               ; preds = %26
  %36 = tail call ptr @_TIFFmalloc(i32 noundef %8) #6
  %37 = getelementptr inbounds %struct.TIFFDirectory, ptr %0, i64 0, i32 54, i64 1
  store ptr %36, ptr %37, align 8, !tbaa !30
  %38 = load ptr, ptr %2, align 8, !tbaa !30
  tail call void @_TIFFmemcpy(ptr noundef %36, ptr noundef %38, i32 noundef %8) #6
  %39 = tail call ptr @_TIFFmalloc(i32 noundef %8) #6
  %40 = getelementptr inbounds %struct.TIFFDirectory, ptr %0, i64 0, i32 54, i64 2
  store ptr %39, ptr %40, align 8, !tbaa !30
  %41 = load ptr, ptr %2, align 8, !tbaa !30
  tail call void @_TIFFmemcpy(ptr noundef %39, ptr noundef %41, i32 noundef %8) #6
  br label %42

42:                                               ; preds = %35, %26
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @TIFFDefaultRefBlackWhite(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @_TIFFmalloc(i32 noundef 24) #6
  %3 = getelementptr inbounds %struct.TIFFDirectory, ptr %0, i64 0, i32 53
  store ptr %2, ptr %3, align 8, !tbaa !37
  %4 = getelementptr inbounds %struct.TIFFDirectory, ptr %0, i64 0, i32 8
  %5 = load i16, ptr %4, align 4, !tbaa !15
  %6 = zext nneg i16 %5 to i64
  %7 = shl nsw i64 -1, %6
  %8 = xor i64 %7, -1
  %9 = sitofp i64 %8 to float
  br label %10

10:                                               ; preds = %1, %10
  %11 = phi i64 [ 0, %1 ], [ %16, %10 ]
  %12 = shl nuw nsw i64 %11, 1
  %13 = getelementptr inbounds float, ptr %2, i64 %12
  store float 0.000000e+00, ptr %13, align 4, !tbaa !35
  %14 = or disjoint i64 %12, 1
  %15 = getelementptr inbounds float, ptr %2, i64 %14
  store float %9, ptr %15, align 4, !tbaa !35
  %16 = add nuw nsw i64 %11, 1
  %17 = icmp eq i64 %16, 3
  br i1 %17, label %18, label %10, !llvm.loop !40

18:                                               ; preds = %10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @TIFFGetFieldDefaulted(ptr noundef %0, i32 noundef %1, ...) local_unnamed_addr #0 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  call void @llvm.va_start(ptr nonnull %3)
  %4 = call i32 @TIFFVGetFieldDefaulted(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %3), !range !41
  call void @llvm.va_end(ptr %3)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  ret i32 %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #5

declare void @_TIFFmemcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !9, i64 48}
!6 = !{!"", !7, i64 0, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !10, i64 52, !10, i64 54, !10, i64 56, !10, i64 58, !10, i64 60, !10, i64 62, !10, i64 64, !10, i64 66, !9, i64 68, !10, i64 72, !10, i64 74, !11, i64 80, !11, i64 88, !12, i64 96, !12, i64 100, !10, i64 104, !10, i64 106, !12, i64 108, !12, i64 112, !7, i64 116, !7, i64 120, !7, i64 144, !10, i64 148, !13, i64 152, !11, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !9, i64 240, !9, i64 244, !13, i64 248, !13, i64 256, !10, i64 264, !13, i64 272, !13, i64 280, !7, i64 288, !10, i64 292, !13, i64 296, !13, i64 304, !13, i64 312, !7, i64 320, !10, i64 344, !10, i64 346, !7, i64 348, !9, i64 352, !13, i64 360, !13, i64 368, !9, i64 376, !13, i64 384, !9, i64 392, !13, i64 400, !9, i64 408, !13, i64 416, !9, i64 424, !9, i64 428, !13, i64 432, !13, i64 440, !12, i64 448, !13, i64 456, !13, i64 464}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!"short", !7, i64 0}
!11 = !{!"double", !7, i64 0}
!12 = !{!"float", !7, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!9, !9, i64 0}
!15 = !{!6, !10, i64 52}
!16 = !{!10, !10, i64 0}
!17 = !{!6, !10, i64 60}
!18 = !{!6, !10, i64 62}
!19 = !{!6, !10, i64 64}
!20 = !{!6, !10, i64 66}
!21 = !{!6, !9, i64 68}
!22 = !{!6, !10, i64 72}
!23 = !{!6, !10, i64 74}
!24 = !{!6, !10, i64 106}
!25 = !{!6, !10, i64 104}
!26 = !{!6, !10, i64 344}
!27 = !{!6, !10, i64 346}
!28 = !{!6, !10, i64 148}
!29 = !{!6, !13, i64 152}
!30 = !{!13, !13, i64 0}
!31 = !{!6, !9, i64 44}
!32 = !{!6, !10, i64 54}
!33 = !{!6, !9, i64 32}
!34 = !{!6, !13, i64 280}
!35 = !{!12, !12, i64 0}
!36 = !{!6, !10, i64 292}
!37 = !{!6, !13, i64 312}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.unroll.disable"}
!40 = distinct !{!40, !39}
!41 = !{i32 0, i32 2}
