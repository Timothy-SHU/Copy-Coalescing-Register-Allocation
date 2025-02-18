; ModuleID = 'blender/source/blender/editors/space_info/textview.c'
source_filename = "blender/source/blender/editors/space_info/textview.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.TextViewContext = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32 }

@blf_mono_font = external local_unnamed_addr global i32, align 4
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [21 x i8] c"console_wrap_offsets\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @textview_draw(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca [2 x i32], align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca [2 x i32], align 8
  %9 = alloca [3 x i8], align 1
  %10 = alloca [3 x i8], align 1
  %11 = alloca [4 x i8], align 4
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = load i32, ptr %0, align 8, !tbaa !34
  %15 = sdiv i32 %14, 6
  %16 = add nsw i32 %15, 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #4
  store i64 -1, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %9) #4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %10) #4
  %17 = load i32, ptr @blf_mono_font, align 4, !tbaa !40
  %18 = sitofp i32 %14 to double
  %19 = fmul double %18, 8.750000e-01
  %20 = fptosi double %19 to i32
  tail call void @BLF_size(i32 noundef %17, i32 noundef %20, i32 noundef 72) #4
  store i32 4, ptr %7, align 4, !tbaa !40
  %21 = getelementptr inbounds [2 x i32], ptr %7, i64 0, i64 1
  store i32 %16, ptr %21, align 4, !tbaa !40
  %22 = getelementptr inbounds i32, ptr %2, i64 1
  %23 = load i32, ptr %22, align 4, !tbaa !40
  %24 = icmp eq i32 %23, 2147483647
  br i1 %24, label %30, label %25

25:                                               ; preds = %5
  %26 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 6
  %27 = load i32, ptr %26, align 8, !tbaa !41
  %28 = add i32 %23, 4
  %29 = add i32 %28, %27
  store i32 %29, ptr %22, align 4, !tbaa !40
  br label %30

30:                                               ; preds = %25, %5
  %31 = icmp eq ptr %4, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %30
  store i32 0, ptr %4, align 4, !tbaa !40
  br label %33

33:                                               ; preds = %32, %30
  %34 = tail call float @BLF_fixed_width(i32 noundef %17) #4
  %35 = fptosi float %34 to i32
  %36 = load i32, ptr %0, align 8, !tbaa !34
  %37 = tail call float @BLF_descender(i32 noundef %17) #4
  %38 = fneg float %37
  %39 = fptosi float %38 to i32
  %40 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 5
  %41 = load i32, ptr %40, align 4, !tbaa !42
  %42 = add nsw i32 %41, -8
  %43 = sdiv i32 %42, %35
  %44 = tail call i32 @llvm.smax.i32(i32 %43, i32 1)
  %45 = add nsw i32 %41, -4
  %46 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 6
  %47 = load i32, ptr %46, align 8, !tbaa !41
  %48 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 7
  %49 = load i32, ptr %48, align 4, !tbaa !43
  %50 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 3
  store i32 %35, ptr %50, align 4, !tbaa !44
  %51 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 4
  store i32 %44, ptr %51, align 8, !tbaa !45
  %52 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 17
  store i32 0, ptr %52, align 8, !tbaa !46
  %53 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 1
  %54 = load i32, ptr %53, align 4, !tbaa !47
  %55 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 2
  %56 = load i32, ptr %55, align 8, !tbaa !48
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %60, label %58

58:                                               ; preds = %33
  store i32 %54, ptr %8, align 8, !tbaa !40
  %59 = getelementptr inbounds [2 x i32], ptr %8, i64 0, i64 1
  store i32 %56, ptr %59, align 4, !tbaa !40
  br label %60

60:                                               ; preds = %58, %33
  %61 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 8
  %62 = load ptr, ptr %61, align 8, !tbaa !49
  %63 = tail call i32 %62(ptr noundef nonnull %0) #4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %321, label %65

65:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #4
  store i32 0, ptr %11, align 4
  %66 = icmp ne i32 %1, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %65
  %68 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 15
  %69 = load ptr, ptr %68, align 8, !tbaa !50
  %70 = icmp eq ptr %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  call void %69(ptr noundef nonnull %0, ptr noundef nonnull %11) #4
  br label %72

72:                                               ; preds = %71, %67, %65
  %73 = load i32, ptr %21, align 4
  %74 = load i32, ptr %8, align 8, !tbaa !40
  %75 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 14
  %76 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 13
  %77 = call i32 @llvm.smax.i32(i32 %43, i32 2)
  %78 = add nsw i32 %77, -1
  %79 = icmp eq i32 %1, 0
  %80 = load i32, ptr %7, align 4
  %81 = sitofp i32 %80 to float
  %82 = getelementptr inbounds i32, ptr %8, i64 1
  %83 = getelementptr inbounds [2 x i32], ptr %6, i64 0, i64 1
  %84 = getelementptr inbounds i32, ptr %8, i64 1
  %85 = sitofp i32 %80 to float
  %86 = getelementptr inbounds i32, ptr %8, i64 1
  %87 = sitofp i32 %36 to float
  %88 = sitofp i32 %35 to float
  %89 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 12
  %90 = load i32, ptr %82, align 4, !tbaa !40
  br label %91

91:                                               ; preds = %313, %72
  %92 = phi i32 [ %298, %313 ], [ %90, %72 ]
  %93 = phi i32 [ %299, %313 ], [ %74, %72 ]
  %94 = phi i32 [ %300, %313 ], [ %73, %72 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #4
  br i1 %66, label %95, label %98

95:                                               ; preds = %91
  %96 = load ptr, ptr %75, align 8, !tbaa !51
  %97 = call i32 %96(ptr noundef nonnull %0, ptr noundef nonnull %9, ptr noundef nonnull %10) #4
  br label %98

98:                                               ; preds = %95, %91
  %99 = phi i32 [ %97, %95 ], [ 0, %91 ]
  %100 = load ptr, ptr %76, align 8, !tbaa !52
  %101 = call i32 %100(ptr noundef nonnull %0, ptr noundef nonnull %12, ptr noundef nonnull %13) #4
  %102 = load ptr, ptr %12, align 8, !tbaa !53
  %103 = load i32, ptr %13, align 4, !tbaa !40
  %104 = and i32 %99, 1
  %105 = icmp eq i32 %104, 0
  %106 = select i1 %105, ptr null, ptr %9
  %107 = and i32 %99, 2
  %108 = icmp eq i32 %107, 0
  %109 = select i1 %108, ptr null, ptr %10
  %110 = load i32, ptr @blf_mono_font, align 4, !tbaa !40
  %111 = load ptr, ptr @MEM_callocN, align 8, !tbaa !53
  %112 = shl nsw i32 %103, 1
  %113 = sdiv i32 %112, %78
  %114 = add nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = shl nsw i64 %115, 2
  %117 = call ptr %111(i64 noundef %116, ptr noundef nonnull @.str) #4
  store i32 0, ptr %117, align 4, !tbaa !40
  %118 = icmp sgt i32 %103, 0
  br i1 %118, label %119, label %143

119:                                              ; preds = %98, %137
  %120 = phi i32 [ %130, %137 ], [ 0, %98 ]
  %121 = phi i32 [ %141, %137 ], [ 0, %98 ]
  %122 = phi i32 [ %139, %137 ], [ %44, %98 ]
  %123 = phi i32 [ %138, %137 ], [ 1, %98 ]
  %124 = sext i32 %121 to i64
  %125 = getelementptr inbounds i8, ptr %102, i64 %124
  %126 = load i8, ptr %125, align 1, !tbaa !54
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %143, label %128

128:                                              ; preds = %119
  %129 = call i32 @BLI_str_utf8_char_width_safe(ptr noundef nonnull %125) #4
  %130 = add nsw i32 %129, %120
  %131 = icmp sgt i32 %130, %122
  br i1 %131, label %132, label %137

132:                                              ; preds = %128
  %133 = sext i32 %123 to i64
  %134 = getelementptr inbounds i32, ptr %117, i64 %133
  store i32 %121, ptr %134, align 4, !tbaa !40
  %135 = add nsw i32 %123, 1
  %136 = add nsw i32 %120, %44
  br label %137

137:                                              ; preds = %132, %128
  %138 = phi i32 [ %135, %132 ], [ %123, %128 ]
  %139 = phi i32 [ %136, %132 ], [ %122, %128 ]
  %140 = call i32 @BLI_str_utf8_size_safe(ptr noundef nonnull %125) #4
  %141 = add nsw i32 %140, %121
  %142 = icmp slt i32 %141, %103
  br i1 %142, label %119, label %143, !llvm.loop !55

143:                                              ; preds = %137, %119, %98
  %144 = phi i32 [ 1, %98 ], [ %138, %137 ], [ %123, %119 ]
  %145 = phi i32 [ 0, %98 ], [ %141, %137 ], [ %121, %119 ]
  %146 = mul nsw i32 %144, %36
  %147 = add nsw i32 %146, %94
  br i1 %79, label %148, label %192

148:                                              ; preds = %143
  br i1 %31, label %191, label %149

149:                                              ; preds = %148
  %150 = load i32, ptr %22, align 4, !tbaa !40
  %151 = icmp eq i32 %150, 2147483647
  %152 = icmp sgt i32 %94, %150
  %153 = select i1 %151, i1 true, i1 %152
  br i1 %153, label %191, label %154

154:                                              ; preds = %149
  %155 = icmp slt i32 %147, %150
  br i1 %155, label %185, label %156

156:                                              ; preds = %154
  %157 = icmp sgt i32 %144, 1
  br i1 %157, label %158, label %168

158:                                              ; preds = %156
  %159 = sub nsw i32 %147, %150
  %160 = sitofp i32 %159 to float
  %161 = fdiv float %160, %87
  %162 = fptosi float %161 to i32
  %163 = add nsw i32 %144, -1
  %164 = call i32 @llvm.smin.i32(i32 %163, i32 %162)
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, ptr %117, i64 %165
  %167 = load i32, ptr %166, align 4, !tbaa !40
  br label %168

168:                                              ; preds = %158, %156
  %169 = phi i32 [ %167, %158 ], [ 0, %156 ]
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8, ptr %102, i64 %170
  %172 = load i32, ptr %2, align 4, !tbaa !40
  %173 = sitofp i32 %172 to float
  %174 = fdiv float %173, %88
  %175 = call float @llvm.floor.f32(float %174)
  %176 = fptosi float %175 to i32
  %177 = call i32 @txt_utf8_column_to_offset(ptr noundef %171, i32 noundef %176) #4
  %178 = add nsw i32 %177, %169
  %179 = icmp slt i32 %178, 0
  %180 = call i32 @llvm.smin.i32(i32 %178, i32 %145)
  %181 = select i1 %179, i32 0, i32 %180
  %182 = load i32, ptr %4, align 4, !tbaa !40
  %183 = add i32 %182, %145
  %184 = sub i32 %183, %181
  br label %189

185:                                              ; preds = %154
  %186 = add nsw i32 %145, 1
  %187 = load i32, ptr %4, align 4, !tbaa !40
  %188 = add nsw i32 %186, %187
  br label %189

189:                                              ; preds = %168, %185
  %190 = phi i32 [ %188, %185 ], [ %184, %168 ]
  store i32 %190, ptr %4, align 4, !tbaa !40
  br label %191

191:                                              ; preds = %189, %149, %148
  store i32 %147, ptr %21, align 4, !tbaa !40
  br label %291

192:                                              ; preds = %143
  %193 = sub nsw i32 %147, %36
  %194 = icmp slt i32 %193, %47
  br i1 %194, label %195, label %201

195:                                              ; preds = %192
  store i32 %147, ptr %21, align 4, !tbaa !40
  %196 = icmp eq i32 %93, %92
  br i1 %196, label %291, label %197

197:                                              ; preds = %195
  %198 = xor i32 %145, -1
  %199 = add nsw i32 %93, %198
  store i32 %199, ptr %8, align 8, !tbaa !40
  %200 = add nsw i32 %92, %198
  store i32 %200, ptr %86, align 4, !tbaa !40
  br label %291

201:                                              ; preds = %192
  %202 = icmp sgt i32 %144, 1
  br i1 %202, label %203, label %271

203:                                              ; preds = %201
  %204 = zext nneg i32 %144 to i64
  %205 = getelementptr i32, ptr %117, i64 %204
  %206 = getelementptr i32, ptr %205, i64 -1
  %207 = load i32, ptr %206, align 4, !tbaa !40
  %208 = sub nsw i32 %145, %207
  %209 = sext i32 %208 to i64
  %210 = sext i32 %207 to i64
  %211 = getelementptr inbounds i8, ptr %102, i64 %210
  %212 = sub nsw i32 %145, %92
  store i32 %212, ptr %8, align 8, !tbaa !40
  %213 = sub nsw i32 %145, %93
  store i32 %213, ptr %84, align 4, !tbaa !40
  br i1 %108, label %215, label %214

214:                                              ; preds = %203
  call void @glColor3ubv(ptr noundef nonnull %109) #4
  call void @glRecti(i32 noundef 0, i32 noundef %94, i32 noundef %45, i32 noundef %147) #4
  br label %215

215:                                              ; preds = %214, %203
  call void @glColor3ubv(ptr noundef %106) #4
  %216 = add nsw i32 %94, %39
  %217 = sitofp i32 %216 to float
  call void @BLF_position(i32 noundef %110, float noundef %85, float noundef %217, float noundef 0.000000e+00) #4
  %218 = call i32 @BLF_draw_mono(i32 noundef %110, ptr noundef %211, i64 noundef %209, i32 noundef %35) #4
  %219 = icmp eq i32 %93, %92
  br i1 %219, label %223, label %220

220:                                              ; preds = %215
  %221 = sub i32 %212, %207
  store i32 %221, ptr %8, align 8, !tbaa !40
  %222 = sub i32 %213, %207
  store i32 %222, ptr %84, align 4, !tbaa !40
  call fastcc void @console_draw_sel(ptr noundef %211, ptr noundef nonnull %8, ptr noundef nonnull %7, i32 noundef %208, i32 noundef %35, i32 noundef %36, ptr noundef nonnull %11)
  call void @glColor3ubv(ptr noundef %106) #4
  br label %223

223:                                              ; preds = %220, %215
  %224 = phi i32 [ %222, %220 ], [ %213, %215 ]
  %225 = phi i32 [ %221, %220 ], [ %212, %215 ]
  %226 = add nsw i32 %94, %36
  store i32 %226, ptr %21, align 4, !tbaa !40
  %227 = getelementptr i32, ptr %117, i64 -2
  %228 = zext nneg i32 %144 to i64
  %229 = getelementptr i32, ptr %117, i64 -1
  br label %230

230:                                              ; preds = %255, %223
  %231 = phi i64 [ %236, %255 ], [ %228, %223 ]
  %232 = phi i32 [ %256, %255 ], [ %224, %223 ]
  %233 = phi i32 [ %257, %255 ], [ %224, %223 ]
  %234 = phi i32 [ %258, %255 ], [ %225, %223 ]
  %235 = phi i32 [ %259, %255 ], [ %226, %223 ]
  %236 = add nsw i64 %231, -1
  %237 = trunc i64 %231 to i32
  %238 = icmp slt i32 %237, 2
  br i1 %238, label %263, label %239

239:                                              ; preds = %230
  %240 = getelementptr i32, ptr %229, i64 %231
  %241 = load i32, ptr %240, align 4, !tbaa !40
  %242 = getelementptr i32, ptr %227, i64 %231
  %243 = load i32, ptr %242, align 4, !tbaa !40
  %244 = sub nsw i32 %241, %243
  %245 = sext i32 %244 to i64
  %246 = sext i32 %243 to i64
  %247 = getelementptr inbounds i8, ptr %102, i64 %246
  %248 = add nsw i32 %235, %39
  %249 = sitofp i32 %248 to float
  call void @BLF_position(i32 noundef %110, float noundef %85, float noundef %249, float noundef 0.000000e+00) #4
  %250 = call i32 @BLF_draw_mono(i32 noundef %110, ptr noundef %247, i64 noundef %245, i32 noundef %35) #4
  %251 = icmp eq i32 %234, %233
  br i1 %251, label %255, label %252

252:                                              ; preds = %239
  %253 = add nsw i32 %234, %244
  store i32 %253, ptr %8, align 8, !tbaa !40
  %254 = add nsw i32 %233, %244
  store i32 %254, ptr %84, align 4, !tbaa !40
  call fastcc void @console_draw_sel(ptr noundef %247, ptr noundef nonnull %8, ptr noundef nonnull %7, i32 noundef %244, i32 noundef %35, i32 noundef %36, ptr noundef nonnull %11)
  call void @glColor3ubv(ptr noundef %106) #4
  br label %255

255:                                              ; preds = %252, %239
  %256 = phi i32 [ %254, %252 ], [ %232, %239 ]
  %257 = phi i32 [ %254, %252 ], [ %233, %239 ]
  %258 = phi i32 [ %253, %252 ], [ %234, %239 ]
  %259 = add nsw i32 %235, %36
  store i32 %259, ptr %21, align 4, !tbaa !40
  %260 = icmp sgt i32 %259, %49
  br i1 %260, label %261, label %230, !llvm.loop !58

261:                                              ; preds = %255
  %262 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
  call void %262(ptr noundef nonnull %117) #4
  br label %267

263:                                              ; preds = %230
  store i32 %93, ptr %8, align 8, !tbaa !40
  store i32 %92, ptr %84, align 4, !tbaa !40
  %264 = xor i32 %145, -1
  %265 = add nsw i32 %93, %264
  store i32 %265, ptr %8, align 8, !tbaa !40
  %266 = add nsw i32 %92, %264
  store i32 %266, ptr %84, align 4, !tbaa !40
  br label %267

267:                                              ; preds = %263, %261
  %268 = phi i32 [ %266, %263 ], [ %256, %261 ]
  %269 = phi i32 [ %265, %263 ], [ %258, %261 ]
  %270 = phi i32 [ %235, %263 ], [ %259, %261 ]
  br i1 %238, label %291, label %297

271:                                              ; preds = %201
  br i1 %108, label %274, label %272

272:                                              ; preds = %271
  call void @glColor3ubv(ptr noundef nonnull %109) #4
  %273 = add nsw i32 %94, %36
  call void @glRecti(i32 noundef 0, i32 noundef %94, i32 noundef %45, i32 noundef %273) #4
  br label %274

274:                                              ; preds = %272, %271
  call void @glColor3ubv(ptr noundef %106) #4
  %275 = add nsw i32 %94, %39
  %276 = sitofp i32 %275 to float
  call void @BLF_position(i32 noundef %110, float noundef %81, float noundef %276, float noundef 0.000000e+00) #4
  %277 = sext i32 %145 to i64
  %278 = call i32 @BLF_draw_mono(i32 noundef %110, ptr noundef %102, i64 noundef %277, i32 noundef %35) #4
  %279 = icmp eq i32 %93, %92
  br i1 %279, label %286, label %280

280:                                              ; preds = %274
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #4
  %281 = sub nsw i32 %145, %92
  store i32 %281, ptr %6, align 4, !tbaa !40
  %282 = sub nsw i32 %145, %93
  store i32 %282, ptr %83, align 4, !tbaa !40
  call fastcc void @console_draw_sel(ptr noundef %102, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef %145, i32 noundef %35, i32 noundef %36, ptr noundef nonnull %11)
  %283 = xor i32 %145, -1
  %284 = add nsw i32 %93, %283
  store i32 %284, ptr %8, align 8, !tbaa !40
  %285 = add nsw i32 %92, %283
  store i32 %285, ptr %82, align 4, !tbaa !40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #4
  br label %286

286:                                              ; preds = %280, %274
  %287 = phi i32 [ %285, %280 ], [ %92, %274 ]
  %288 = phi i32 [ %284, %280 ], [ %93, %274 ]
  %289 = add nsw i32 %94, %36
  store i32 %289, ptr %21, align 4, !tbaa !40
  %290 = icmp sgt i32 %289, %49
  br label %291

291:                                              ; preds = %286, %267, %195, %197, %191
  %292 = phi i32 [ %92, %191 ], [ %200, %197 ], [ %92, %195 ], [ %268, %267 ], [ %287, %286 ]
  %293 = phi i32 [ %93, %191 ], [ %199, %197 ], [ %93, %195 ], [ %269, %267 ], [ %288, %286 ]
  %294 = phi i32 [ %147, %191 ], [ %147, %197 ], [ %147, %195 ], [ %270, %267 ], [ %289, %286 ]
  %295 = phi i1 [ false, %191 ], [ false, %197 ], [ false, %195 ], [ false, %267 ], [ %290, %286 ]
  %296 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
  call void %296(ptr noundef nonnull %117) #4
  br label %297

297:                                              ; preds = %291, %267
  %298 = phi i32 [ %268, %267 ], [ %292, %291 ]
  %299 = phi i32 [ %269, %267 ], [ %293, %291 ]
  %300 = phi i32 [ %270, %267 ], [ %294, %291 ]
  %301 = phi i1 [ true, %267 ], [ %295, %291 ]
  %302 = and i1 %66, %301
  br i1 %302, label %319, label %303

303:                                              ; preds = %297
  %304 = load i32, ptr %22, align 4, !tbaa !40
  %305 = icmp eq i32 %304, 2147483647
  %306 = icmp slt i32 %304, %94
  %307 = select i1 %305, i1 true, i1 %306
  %308 = icmp sgt i32 %304, %300
  %309 = select i1 %307, i1 true, i1 %308
  br i1 %309, label %313, label %310

310:                                              ; preds = %303
  %311 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 16
  %312 = load ptr, ptr %311, align 8, !tbaa !59
  store ptr %312, ptr %3, align 8, !tbaa !53
  br label %319

313:                                              ; preds = %303
  %314 = load i32, ptr %52, align 8, !tbaa !46
  %315 = add nsw i32 %314, 1
  store i32 %315, ptr %52, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #4
  %316 = load ptr, ptr %89, align 8, !tbaa !60
  %317 = call i32 %316(ptr noundef nonnull %0) #4
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %320, label %91, !llvm.loop !61

319:                                              ; preds = %297, %310
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #4
  br label %320

320:                                              ; preds = %313, %319
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #4
  br label %321

321:                                              ; preds = %320, %60
  %322 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 9
  %323 = load ptr, ptr %322, align 8, !tbaa !62
  call void %323(ptr noundef nonnull %0) #4
  %324 = load i32, ptr %0, align 8, !tbaa !34
  %325 = shl nsw i32 %324, 1
  %326 = load i32, ptr %21, align 4, !tbaa !40
  %327 = add nsw i32 %326, %325
  store i32 %327, ptr %21, align 4, !tbaa !40
  %328 = sub nsw i32 %327, %16
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %10) #4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #4
  ret i32 %328
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare float @BLF_fixed_width(i32 noundef) local_unnamed_addr #2

declare float @BLF_descender(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @BLF_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @txt_utf8_column_to_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @glColor3ubv(ptr noundef) local_unnamed_addr #2

declare void @glRecti(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @BLF_position(i32 noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare i32 @BLF_draw_mono(i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @console_draw_sel(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) unnamed_addr #0 {
  %8 = load i32, ptr %1, align 4, !tbaa !40
  %9 = icmp sgt i32 %8, %3
  br i1 %9, label %29, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds i32, ptr %1, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !40
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %14, label %29

14:                                               ; preds = %10
  %15 = tail call i32 @llvm.smax.i32(i32 %8, i32 0)
  %16 = tail call i32 @txt_utf8_offset_to_column(ptr noundef %0, i32 noundef %15) #4
  %17 = load i32, ptr %11, align 4, !tbaa !40
  %18 = tail call i32 @llvm.smin.i32(i32 %17, i32 %3)
  %19 = tail call i32 @txt_utf8_offset_to_column(ptr noundef %0, i32 noundef %18) #4
  tail call void @glEnable(i32 noundef 3042) #4
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #4
  tail call void @glColor4ubv(ptr noundef %6) #4
  %20 = load i32, ptr %2, align 4, !tbaa !40
  %21 = mul nsw i32 %16, %4
  %22 = add nsw i32 %20, %21
  %23 = getelementptr inbounds i32, ptr %2, i64 1
  %24 = load i32, ptr %23, align 4, !tbaa !40
  %25 = add nsw i32 %24, -2
  %26 = add nsw i32 %25, %5
  %27 = mul nsw i32 %19, %4
  %28 = add nsw i32 %20, %27
  tail call void @glRecti(i32 noundef %22, i32 noundef %26, i32 noundef %28, i32 noundef %25) #4
  tail call void @glDisable(i32 noundef 3042) #4
  br label %29

29:                                               ; preds = %14, %10, %7
  ret void
}

declare i32 @BLI_str_utf8_char_width_safe(ptr noundef) local_unnamed_addr #2

declare i32 @BLI_str_utf8_size_safe(ptr noundef) local_unnamed_addr #2

declare i32 @txt_utf8_offset_to_column(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @glEnable(i32 noundef) local_unnamed_addr #2

declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glColor4ubv(ptr noundef) local_unnamed_addr #2

declare void @glDisable(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

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
!35 = !{!"TextViewContext", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !39, i64 88, !39, i64 96, !36, i64 104, !36, i64 108, !36, i64 112, !36, i64 116}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"any pointer", !37, i64 0}
!40 = !{!36, !36, i64 0}
!41 = !{!35, !36, i64 24}
!42 = !{!35, !36, i64 20}
!43 = !{!35, !36, i64 28}
!44 = !{!35, !36, i64 12}
!45 = !{!35, !36, i64 16}
!46 = !{!35, !36, i64 104}
!47 = !{!35, !36, i64 4}
!48 = !{!35, !36, i64 8}
!49 = !{!35, !39, i64 32}
!50 = !{!35, !39, i64 88}
!51 = !{!35, !39, i64 80}
!52 = !{!35, !39, i64 72}
!53 = !{!39, !39, i64 0}
!54 = !{!37, !37, i64 0}
!55 = distinct !{!55, !56, !57}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = distinct !{!58, !56, !57}
!59 = !{!35, !39, i64 96}
!60 = !{!35, !39, i64 64}
!61 = distinct !{!61, !56, !57}
!62 = !{!35, !39, i64 40}
