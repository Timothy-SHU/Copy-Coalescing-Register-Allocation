; ModuleID = 'iscannum.c'
source_filename = "iscannum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_dual_memory_s = type { ptr, %union.vm_spaces_s, i32, i32, ptr, i32, i32 }
%union.vm_spaces_s = type { [4 x ptr] }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }

@scan_number.powers_10 = internal unnamed_addr constant [7 x float] [float 1.000000e+00, float 1.000000e+01, float 1.000000e+02, float 1.000000e+03, float 1.000000e+04, float 1.000000e+05, float 1.000000e+06], align 16
@scan_number.neg_powers_10 = internal unnamed_addr constant [7 x double] [double 1.000000e+00, double 1.000000e-01, double 1.000000e-02, double 1.000000e-03, double 1.000000e-04, double 1.000000e-05, double 0x3EB0C6F7A0B5ED8D], align 16
@scan_char_array = external local_unnamed_addr constant [260 x i8], align 16
@gs_imemory = external local_unnamed_addr global %struct.gs_dual_memory_s, align 8

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @scan_number(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = ptrtoint ptr %1 to i64
  %7 = icmp ult ptr %0, %1
  br i1 %7, label %8, label %557

8:                                                ; preds = %5
  %9 = getelementptr inbounds i8, ptr %0, i64 1
  %10 = load i8, ptr %0, align 1, !tbaa !5
  %11 = zext i8 %10 to i64
  %12 = getelementptr inbounds i8, ptr getelementptr inbounds ([260 x i8], ptr @scan_char_array, i64 0, i64 4), i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !5
  %14 = zext i8 %13 to i32
  %15 = icmp ult i8 %13, 10
  br i1 %15, label %29, label %16

16:                                               ; preds = %8
  %17 = icmp eq i8 %10, 46
  %18 = icmp ult ptr %9, %1
  %19 = select i1 %17, i1 %18, i1 false
  br i1 %19, label %20, label %557

20:                                               ; preds = %16
  %21 = load i8, ptr %9, align 1, !tbaa !5
  %22 = zext i8 %21 to i64
  %23 = getelementptr inbounds i8, ptr getelementptr inbounds ([260 x i8], ptr @scan_char_array, i64 0, i64 4), i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !5
  %25 = icmp ult i8 %24, 10
  br i1 %25, label %26, label %557

26:                                               ; preds = %20
  %27 = zext i8 %21 to i32
  %28 = getelementptr inbounds i8, ptr %0, i64 2
  br label %296

29:                                               ; preds = %8
  %30 = ptrtoint ptr %1 to i64
  %31 = ptrtoint ptr %9 to i64
  %32 = sub i64 %30, %31
  %33 = icmp sgt i64 %32, 2
  br i1 %33, label %34, label %69

34:                                               ; preds = %29
  %35 = load i8, ptr %9, align 1, !tbaa !5
  %36 = zext i8 %35 to i64
  %37 = getelementptr inbounds i8, ptr getelementptr inbounds ([260 x i8], ptr @scan_char_array, i64 0, i64 4), i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !5
  %39 = icmp ult i8 %38, 10
  br i1 %39, label %42, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds i8, ptr %0, i64 2
  br label %97

42:                                               ; preds = %34
  %43 = zext nneg i8 %38 to i32
  %44 = mul nuw nsw i32 %14, 10
  %45 = add nuw nsw i32 %44, %43
  %46 = getelementptr inbounds i8, ptr %0, i64 2
  %47 = load i8, ptr %46, align 1, !tbaa !5
  %48 = zext i8 %47 to i64
  %49 = getelementptr inbounds i8, ptr getelementptr inbounds ([260 x i8], ptr @scan_char_array, i64 0, i64 4), i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !5
  %51 = icmp ult i8 %50, 10
  br i1 %51, label %54, label %52

52:                                               ; preds = %42
  %53 = getelementptr inbounds i8, ptr %0, i64 3
  br label %97

54:                                               ; preds = %42
  %55 = zext nneg i8 %50 to i32
  %56 = mul nuw nsw i32 %45, 10
  %57 = add nuw nsw i32 %56, %55
  %58 = getelementptr inbounds i8, ptr %0, i64 4
  %59 = getelementptr inbounds i8, ptr %0, i64 3
  %60 = load i8, ptr %59, align 1, !tbaa !5
  %61 = zext i8 %60 to i64
  %62 = getelementptr inbounds i8, ptr getelementptr inbounds ([260 x i8], ptr @scan_char_array, i64 0, i64 4), i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !5
  %64 = icmp ult i8 %63, 10
  br i1 %64, label %65, label %97

65:                                               ; preds = %54
  %66 = zext nneg i8 %63 to i32
  %67 = mul nuw nsw i32 %57, 10
  %68 = add nuw nsw i32 %67, %66
  br label %69

69:                                               ; preds = %65, %29
  %70 = phi i32 [ %68, %65 ], [ %14, %29 ]
  %71 = phi ptr [ %58, %65 ], [ %9, %29 ]
  %72 = icmp ult ptr %71, %1
  br i1 %72, label %73, label %198

73:                                               ; preds = %69
  %74 = ptrtoint ptr %71 to i64
  %75 = sub i64 %30, %74
  %76 = getelementptr i8, ptr %71, i64 %75
  br label %77

77:                                               ; preds = %73, %93
  %78 = phi ptr [ %80, %93 ], [ %71, %73 ]
  %79 = phi i32 [ %95, %93 ], [ %70, %73 ]
  %80 = getelementptr inbounds i8, ptr %78, i64 1
  %81 = load i8, ptr %78, align 1, !tbaa !5
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds i8, ptr getelementptr inbounds ([260 x i8], ptr @scan_char_array, i64 0, i64 4), i64 %82
  %84 = load i8, ptr %83, align 1, !tbaa !5
  %85 = zext i8 %84 to i32
  %86 = icmp ult i8 %84, 10
  br i1 %86, label %87, label %97

87:                                               ; preds = %77
  %88 = icmp sgt i32 %79, 214748363
  br i1 %88, label %89, label %93

89:                                               ; preds = %87
  %90 = icmp ne i32 %79, 214748364
  %91 = icmp ugt i8 %84, 7
  %92 = or i1 %90, %91
  br i1 %92, label %206, label %93

93:                                               ; preds = %87, %89
  %94 = mul nsw i32 %79, 10
  %95 = add nsw i32 %94, %85
  %96 = icmp eq ptr %80, %76
  br i1 %96, label %198, label %77, !llvm.loop !8

97:                                               ; preds = %77, %54, %52, %40
  %98 = phi i32 [ %57, %54 ], [ %45, %52 ], [ %14, %40 ], [ %79, %77 ]
  %99 = phi i8 [ %60, %54 ], [ %47, %52 ], [ %35, %40 ], [ %81, %77 ]
  %100 = phi ptr [ %58, %54 ], [ %53, %52 ], [ %41, %40 ], [ %80, %77 ]
  %101 = ptrtoint ptr %100 to i64
  switch i8 %99, label %108 [
    i8 46, label %102
    i8 101, label %109
    i8 69, label %109
    i8 35, label %115
  ]

102:                                              ; preds = %97
  %103 = icmp ult ptr %100, %1
  br i1 %103, label %104, label %296

104:                                              ; preds = %102
  %105 = getelementptr inbounds i8, ptr %100, i64 1
  %106 = load i8, ptr %100, align 1, !tbaa !5
  %107 = zext i8 %106 to i32
  br label %296

108:                                              ; preds = %97
  store ptr %100, ptr %4, align 8, !tbaa !10
  br label %198

109:                                              ; preds = %97, %97
  %110 = zext i8 %99 to i32
  %111 = icmp slt i32 %2, 0
  %112 = sub nsw i32 0, %98
  %113 = select i1 %111, i32 %112, i32 %98
  %114 = sitofp i32 %113 to double
  br label %441

115:                                              ; preds = %97
  %116 = icmp ne i32 %2, 0
  %117 = icmp ult i32 %98, 2
  %118 = select i1 %116, i1 true, i1 %117
  %119 = icmp ugt i32 %98, 36
  %120 = select i1 %118, i1 true, i1 %119
  br i1 %120, label %557, label %121

121:                                              ; preds = %115
  %122 = tail call i32 @llvm.ctpop.i32(i32 %98), !range !12
  %123 = icmp ult i32 %122, 2
  br i1 %123, label %124, label %159

124:                                              ; preds = %121
  switch i32 %98, label %154 [
    i32 2, label %129
    i32 4, label %125
    i32 8, label %126
    i32 16, label %127
    i32 32, label %128
  ]

125:                                              ; preds = %124
  br label %129

126:                                              ; preds = %124
  br label %129

127:                                              ; preds = %124
  br label %129

128:                                              ; preds = %124
  br label %129

129:                                              ; preds = %124, %128, %127, %126, %125
  %130 = phi i64 [ 576460752303423487, %128 ], [ 1152921504606846975, %127 ], [ 2305843009213693951, %126 ], [ 4611686018427387903, %125 ], [ 9223372036854775807, %124 ]
  %131 = phi i64 [ 5, %128 ], [ 4, %127 ], [ 3, %126 ], [ 2, %125 ], [ 1, %124 ]
  %132 = icmp ult ptr %100, %1
  br i1 %132, label %133, label %154

133:                                              ; preds = %129
  %134 = sub i64 %30, %101
  %135 = getelementptr i8, ptr %100, i64 %134
  br label %136

136:                                              ; preds = %133, %149
  %137 = phi i64 [ %152, %149 ], [ 0, %133 ]
  %138 = phi ptr [ %139, %149 ], [ %100, %133 ]
  %139 = getelementptr inbounds i8, ptr %138, i64 1
  %140 = load i8, ptr %138, align 1, !tbaa !5
  %141 = zext i8 %140 to i64
  %142 = getelementptr inbounds i8, ptr getelementptr inbounds ([260 x i8], ptr @scan_char_array, i64 0, i64 4), i64 %141
  %143 = load i8, ptr %142, align 1, !tbaa !5
  %144 = zext i8 %143 to i32
  %145 = icmp ugt i32 %98, %144
  br i1 %145, label %147, label %146

146:                                              ; preds = %136
  store ptr %139, ptr %4, align 8, !tbaa !10
  br label %154

147:                                              ; preds = %136
  %148 = icmp ule i64 %137, %130
  br i1 %148, label %149, label %154

149:                                              ; preds = %147
  %150 = shl i64 %137, %131
  %151 = zext i8 %143 to i64
  %152 = add i64 %150, %151
  %153 = icmp eq ptr %139, %135
  br i1 %153, label %154, label %136, !llvm.loop !13

154:                                              ; preds = %147, %149, %129, %146, %124
  %155 = phi i32 [ 0, %124 ], [ 1, %146 ], [ 0, %129 ], [ 0, %149 ], [ 0, %147 ]
  %156 = phi i1 [ false, %124 ], [ true, %146 ], [ true, %129 ], [ %148, %149 ], [ %148, %147 ]
  %157 = phi i64 [ 0, %124 ], [ %137, %146 ], [ 0, %129 ], [ %137, %147 ], [ %152, %149 ]
  %158 = phi i32 [ -15, %124 ], [ undef, %146 ], [ undef, %129 ], [ -13, %149 ], [ -13, %147 ]
  br i1 %156, label %194, label %557

159:                                              ; preds = %121
  %160 = zext nneg i32 %98 to i64
  %161 = urem i64 -1, %160
  %162 = trunc i64 %161 to i32
  %163 = udiv i64 -1, %160
  %164 = icmp ult ptr %100, %1
  br i1 %164, label %165, label %190

165:                                              ; preds = %159
  %166 = sub i64 %30, %101
  %167 = getelementptr i8, ptr %100, i64 %166
  br label %168

168:                                              ; preds = %165, %185
  %169 = phi i64 [ %188, %185 ], [ 0, %165 ]
  %170 = phi ptr [ %171, %185 ], [ %100, %165 ]
  %171 = getelementptr inbounds i8, ptr %170, i64 1
  %172 = load i8, ptr %170, align 1, !tbaa !5
  %173 = zext i8 %172 to i64
  %174 = getelementptr inbounds i8, ptr getelementptr inbounds ([260 x i8], ptr @scan_char_array, i64 0, i64 4), i64 %173
  %175 = load i8, ptr %174, align 1, !tbaa !5
  %176 = zext i8 %175 to i32
  %177 = icmp ugt i32 %98, %176
  br i1 %177, label %179, label %178

178:                                              ; preds = %168
  store ptr %171, ptr %4, align 8, !tbaa !10
  br label %190

179:                                              ; preds = %168
  %180 = icmp ult i64 %169, %163
  br i1 %180, label %185, label %181

181:                                              ; preds = %179
  %182 = icmp ugt i64 %169, %163
  %183 = icmp ugt i32 %176, %162
  %184 = or i1 %182, %183
  br i1 %184, label %190, label %185

185:                                              ; preds = %181, %179
  %186 = mul i64 %169, %160
  %187 = zext i8 %175 to i64
  %188 = add i64 %186, %187
  %189 = icmp eq ptr %171, %167
  br i1 %189, label %190, label %168, !llvm.loop !14

190:                                              ; preds = %181, %185, %159, %178
  %191 = phi i64 [ %169, %178 ], [ 0, %159 ], [ %188, %185 ], [ %169, %181 ]
  %192 = phi i32 [ 1, %178 ], [ 0, %159 ], [ 0, %185 ], [ 0, %181 ]
  %193 = phi i1 [ true, %178 ], [ true, %159 ], [ true, %185 ], [ false, %181 ]
  br i1 %193, label %194, label %557

194:                                              ; preds = %190, %154
  %195 = phi i32 [ %192, %190 ], [ %155, %154 ]
  %196 = phi i64 [ %191, %190 ], [ %157, %154 ]
  %197 = getelementptr inbounds %struct.ref_s, ptr %3, i64 0, i32 1
  store i64 %196, ptr %197, align 8, !tbaa !5
  br label %551

198:                                              ; preds = %93, %69, %108
  %199 = phi i32 [ %98, %108 ], [ %70, %69 ], [ %95, %93 ]
  %200 = phi i32 [ 1, %108 ], [ 0, %69 ], [ 0, %93 ]
  %201 = icmp slt i32 %2, 0
  %202 = sub nsw i32 0, %199
  %203 = select i1 %201, i32 %202, i32 %199
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.ref_s, ptr %3, i64 0, i32 1
  store i64 %204, ptr %205, align 8, !tbaa !5
  br label %551

206:                                              ; preds = %89
  %207 = zext nneg i32 %79 to i64
  br label %208

208:                                              ; preds = %249, %206
  %209 = phi i64 [ %207, %206 ], [ %247, %249 ]
  %210 = phi i32 [ %85, %206 ], [ %255, %249 ]
  %211 = phi ptr [ %80, %206 ], [ %250, %249 ]
  %212 = icmp sgt i64 %209, 922337203685477579
  br i1 %212, label %213, label %244

213:                                              ; preds = %208
  %214 = icmp ne i64 %209, 922337203685477580
  %215 = icmp ugt i32 %210, 7
  %216 = or i1 %214, %215
  br i1 %216, label %217, label %244

217:                                              ; preds = %213
  %218 = icmp eq i64 %209, 922337203685477580
  %219 = icmp eq i32 %210, 8
  %220 = and i1 %218, %219
  %221 = icmp slt i32 %2, 0
  %222 = and i1 %221, %220
  br i1 %222, label %223, label %242

223:                                              ; preds = %217
  %224 = icmp ult ptr %211, %1
  br i1 %224, label %225, label %229

225:                                              ; preds = %223
  %226 = getelementptr inbounds i8, ptr %211, i64 1
  %227 = load i8, ptr %211, align 1, !tbaa !5
  %228 = zext i8 %227 to i32
  br label %229

229:                                              ; preds = %223, %225
  %230 = phi i32 [ %228, %225 ], [ -1, %223 ]
  %231 = phi ptr [ %226, %225 ], [ %211, %223 ]
  switch i32 %230, label %232 [
    i32 101, label %433
    i32 69, label %433
    i32 46, label %433
  ]

232:                                              ; preds = %229
  %233 = sext i32 %230 to i64
  %234 = getelementptr inbounds i8, ptr getelementptr inbounds ([260 x i8], ptr @scan_char_array, i64 0, i64 4), i64 %233
  %235 = load i8, ptr %234, align 1, !tbaa !5
  %236 = zext i8 %235 to i32
  %237 = icmp ult i8 %235, 10
  br i1 %237, label %238, label %259

238:                                              ; preds = %242, %232
  %239 = phi double [ %243, %242 ], [ 0x43E0000000000000, %232 ]
  %240 = phi i32 [ %210, %242 ], [ %236, %232 ]
  %241 = phi ptr [ %211, %242 ], [ %231, %232 ]
  br label %277

242:                                              ; preds = %217
  %243 = sitofp i64 %209 to double
  br label %238

244:                                              ; preds = %213, %208
  %245 = mul nsw i64 %209, 10
  %246 = zext nneg i32 %210 to i64
  %247 = add nsw i64 %245, %246
  %248 = icmp ult ptr %211, %1
  br i1 %248, label %249, label %270

249:                                              ; preds = %244
  %250 = getelementptr inbounds i8, ptr %211, i64 1
  %251 = load i8, ptr %211, align 1, !tbaa !5
  %252 = zext i8 %251 to i64
  %253 = getelementptr inbounds i8, ptr getelementptr inbounds ([260 x i8], ptr @scan_char_array, i64 0, i64 4), i64 %252
  %254 = load i8, ptr %253, align 1, !tbaa !5
  %255 = zext i8 %254 to i32
  %256 = icmp ult i8 %254, 10
  br i1 %256, label %208, label %257, !llvm.loop !15

257:                                              ; preds = %249
  %258 = zext i8 %251 to i32
  br label %259

259:                                              ; preds = %257, %232
  %260 = phi i64 [ -9223372036854775808, %232 ], [ %247, %257 ]
  %261 = phi i32 [ %230, %232 ], [ %258, %257 ]
  %262 = phi ptr [ %231, %232 ], [ %250, %257 ]
  switch i32 %261, label %269 [
    i32 46, label %263
    i32 101, label %404
    i32 69, label %404
    i32 35, label %557
  ]

263:                                              ; preds = %259
  %264 = icmp ult ptr %262, %1
  br i1 %264, label %265, label %361

265:                                              ; preds = %263
  %266 = getelementptr inbounds i8, ptr %262, i64 1
  %267 = load i8, ptr %262, align 1, !tbaa !5
  %268 = zext i8 %267 to i32
  br label %361

269:                                              ; preds = %259
  store ptr %262, ptr %4, align 8, !tbaa !10
  br label %270

270:                                              ; preds = %244, %269
  %271 = phi i64 [ %260, %269 ], [ %247, %244 ]
  %272 = phi i32 [ 1, %269 ], [ 0, %244 ]
  %273 = icmp slt i32 %2, 0
  %274 = sub nsw i64 0, %271
  %275 = select i1 %273, i64 %274, i64 %271
  %276 = getelementptr inbounds %struct.ref_s, ptr %3, i64 0, i32 1
  store i64 %275, ptr %276, align 8, !tbaa !5
  br label %551

277:                                              ; preds = %238, %288
  %278 = phi double [ %282, %288 ], [ %239, %238 ]
  %279 = phi i32 [ %294, %288 ], [ %240, %238 ]
  %280 = phi ptr [ %290, %288 ], [ %241, %238 ]
  %281 = sitofp i32 %279 to double
  %282 = tail call double @llvm.fmuladd.f64(double %278, double 1.000000e+01, double %281)
  %283 = icmp ult ptr %280, %1
  br i1 %283, label %284, label %288

284:                                              ; preds = %277
  %285 = getelementptr inbounds i8, ptr %280, i64 1
  %286 = load i8, ptr %280, align 1, !tbaa !5
  %287 = zext i8 %286 to i32
  br label %288

288:                                              ; preds = %277, %284
  %289 = phi i32 [ %287, %284 ], [ -1, %277 ]
  %290 = phi ptr [ %285, %284 ], [ %280, %277 ]
  %291 = sext i32 %289 to i64
  %292 = getelementptr inbounds i8, ptr getelementptr inbounds ([260 x i8], ptr @scan_char_array, i64 0, i64 4), i64 %291
  %293 = load i8, ptr %292, align 1, !tbaa !5
  %294 = zext i8 %293 to i32
  %295 = icmp ult i8 %293, 10
  br i1 %295, label %277, label %433, !llvm.loop !16

296:                                              ; preds = %102, %104, %26
  %297 = phi i32 [ %98, %104 ], [ 0, %26 ], [ %98, %102 ]
  %298 = phi i32 [ %107, %104 ], [ %27, %26 ], [ -1, %102 ]
  %299 = phi ptr [ %105, %104 ], [ %28, %26 ], [ %100, %102 ]
  %300 = sext i32 %298 to i64
  %301 = getelementptr inbounds i8, ptr getelementptr inbounds ([260 x i8], ptr @scan_char_array, i64 0, i64 4), i64 %300
  %302 = load i8, ptr %301, align 1, !tbaa !5
  %303 = icmp ult i8 %302, 10
  br i1 %303, label %304, label %334

304:                                              ; preds = %296, %327
  %305 = phi i8 [ %332, %327 ], [ %302, %296 ]
  %306 = phi ptr [ %329, %327 ], [ %299, %296 ]
  %307 = phi i32 [ %328, %327 ], [ %298, %296 ]
  %308 = phi i32 [ %321, %327 ], [ 0, %296 ]
  %309 = phi i32 [ %320, %327 ], [ %297, %296 ]
  %310 = zext nneg i8 %305 to i32
  %311 = icmp sgt i32 %309, 214748363
  br i1 %311, label %312, label %318

312:                                              ; preds = %304
  %313 = icmp ne i32 %309, 214748364
  %314 = icmp ugt i8 %305, 7
  %315 = or i1 %313, %314
  br i1 %315, label %316, label %318

316:                                              ; preds = %312
  %317 = zext nneg i32 %309 to i64
  br label %361

318:                                              ; preds = %312, %304
  %319 = mul nsw i32 %309, 10
  %320 = add nsw i32 %319, %310
  %321 = add nsw i32 %308, -1
  %322 = icmp ult ptr %306, %1
  br i1 %322, label %323, label %327

323:                                              ; preds = %318
  %324 = getelementptr inbounds i8, ptr %306, i64 1
  %325 = load i8, ptr %306, align 1, !tbaa !5
  %326 = zext i8 %325 to i32
  br label %327

327:                                              ; preds = %318, %323
  %328 = phi i32 [ %326, %323 ], [ -1, %318 ]
  %329 = phi ptr [ %324, %323 ], [ %306, %318 ]
  %330 = sext i32 %328 to i64
  %331 = getelementptr inbounds i8, ptr getelementptr inbounds ([260 x i8], ptr @scan_char_array, i64 0, i64 4), i64 %330
  %332 = load i8, ptr %331, align 1, !tbaa !5
  %333 = icmp ult i8 %332, 10
  br i1 %333, label %304, label %334, !llvm.loop !17

334:                                              ; preds = %327, %296
  %335 = phi i32 [ %297, %296 ], [ %320, %327 ]
  %336 = phi i32 [ 0, %296 ], [ %321, %327 ]
  %337 = phi i32 [ %298, %296 ], [ %328, %327 ]
  %338 = phi ptr [ %299, %296 ], [ %329, %327 ]
  %339 = icmp slt i32 %2, 0
  %340 = sub nsw i32 0, %335
  %341 = select i1 %339, i32 %340, i32 %335
  %342 = and i32 %337, -33
  %343 = icmp eq i32 %342, 69
  %344 = icmp slt i32 %336, -6
  %345 = select i1 %343, i1 true, i1 %344
  br i1 %345, label %359, label %346

346:                                              ; preds = %334
  %347 = icmp eq i32 %337, -1
  br i1 %347, label %349, label %348

348:                                              ; preds = %346
  store ptr %338, ptr %4, align 8, !tbaa !10
  br label %349

349:                                              ; preds = %348, %346
  %350 = phi i32 [ 1, %348 ], [ 0, %346 ]
  %351 = sitofp i32 %341 to double
  %352 = sub nsw i32 0, %336
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds [7 x double], ptr @scan_number.neg_powers_10, i64 0, i64 %353
  %355 = load double, ptr %354, align 8, !tbaa !18
  %356 = fmul double %355, %351
  %357 = fptrunc double %356 to float
  %358 = getelementptr inbounds %struct.ref_s, ptr %3, i64 0, i32 1
  store float %357, ptr %358, align 8, !tbaa !5
  br label %551

359:                                              ; preds = %334
  %360 = sitofp i32 %341 to double
  br label %441

361:                                              ; preds = %265, %263, %316
  %362 = phi i64 [ %317, %316 ], [ %260, %263 ], [ %260, %265 ]
  %363 = phi i32 [ %308, %316 ], [ 0, %263 ], [ 0, %265 ]
  %364 = phi i32 [ %307, %316 ], [ -1, %263 ], [ %268, %265 ]
  %365 = phi ptr [ %306, %316 ], [ %262, %263 ], [ %266, %265 ]
  %366 = sext i32 %364 to i64
  %367 = getelementptr inbounds i8, ptr getelementptr inbounds ([260 x i8], ptr @scan_char_array, i64 0, i64 4), i64 %366
  %368 = load i8, ptr %367, align 1, !tbaa !5
  %369 = icmp ult i8 %368, 10
  br i1 %369, label %370, label %404

370:                                              ; preds = %361, %397
  %371 = phi i8 [ %402, %397 ], [ %368, %361 ]
  %372 = phi ptr [ %399, %397 ], [ %365, %361 ]
  %373 = phi i32 [ %398, %397 ], [ %364, %361 ]
  %374 = phi i32 [ %391, %397 ], [ %363, %361 ]
  %375 = phi i64 [ %390, %397 ], [ %362, %361 ]
  %376 = icmp sgt i64 %375, 922337203685477579
  br i1 %376, label %377, label %387

377:                                              ; preds = %370
  %378 = icmp ne i64 %375, 922337203685477580
  %379 = icmp ugt i8 %371, 7
  %380 = or i1 %378, %379
  br i1 %380, label %381, label %387

381:                                              ; preds = %377
  %382 = sitofp i64 %375 to double
  %383 = sext i32 %373 to i64
  %384 = getelementptr inbounds i8, ptr getelementptr inbounds ([260 x i8], ptr @scan_char_array, i64 0, i64 4), i64 %383
  %385 = load i8, ptr %384, align 1, !tbaa !5
  %386 = icmp ult i8 %385, 10
  br i1 %386, label %413, label %433

387:                                              ; preds = %377, %370
  %388 = mul nsw i64 %375, 10
  %389 = zext nneg i8 %371 to i64
  %390 = add nsw i64 %388, %389
  %391 = add nsw i32 %374, -1
  %392 = icmp ult ptr %372, %1
  br i1 %392, label %393, label %397

393:                                              ; preds = %387
  %394 = getelementptr inbounds i8, ptr %372, i64 1
  %395 = load i8, ptr %372, align 1, !tbaa !5
  %396 = zext i8 %395 to i32
  br label %397

397:                                              ; preds = %387, %393
  %398 = phi i32 [ %396, %393 ], [ -1, %387 ]
  %399 = phi ptr [ %394, %393 ], [ %372, %387 ]
  %400 = sext i32 %398 to i64
  %401 = getelementptr inbounds i8, ptr getelementptr inbounds ([260 x i8], ptr @scan_char_array, i64 0, i64 4), i64 %400
  %402 = load i8, ptr %401, align 1, !tbaa !5
  %403 = icmp ult i8 %402, 10
  br i1 %403, label %370, label %404, !llvm.loop !20

404:                                              ; preds = %397, %361, %259, %259
  %405 = phi i64 [ %260, %259 ], [ %260, %259 ], [ %362, %361 ], [ %390, %397 ]
  %406 = phi i32 [ 0, %259 ], [ 0, %259 ], [ %363, %361 ], [ %391, %397 ]
  %407 = phi i32 [ %261, %259 ], [ %261, %259 ], [ %364, %361 ], [ %398, %397 ]
  %408 = phi ptr [ %262, %259 ], [ %262, %259 ], [ %365, %361 ], [ %399, %397 ]
  %409 = icmp slt i32 %2, 0
  %410 = sub nsw i64 0, %405
  %411 = select i1 %409, i64 %410, i64 %405
  %412 = sitofp i64 %411 to double
  br label %441

413:                                              ; preds = %381, %426
  %414 = phi i8 [ %431, %426 ], [ %385, %381 ]
  %415 = phi ptr [ %428, %426 ], [ %372, %381 ]
  %416 = phi i32 [ %420, %426 ], [ %374, %381 ]
  %417 = phi double [ %419, %426 ], [ %382, %381 ]
  %418 = uitofp i8 %414 to double
  %419 = tail call double @llvm.fmuladd.f64(double %417, double 1.000000e+01, double %418)
  %420 = add nsw i32 %416, -1
  %421 = icmp ult ptr %415, %1
  br i1 %421, label %422, label %426

422:                                              ; preds = %413
  %423 = getelementptr inbounds i8, ptr %415, i64 1
  %424 = load i8, ptr %415, align 1, !tbaa !5
  %425 = zext i8 %424 to i32
  br label %426

426:                                              ; preds = %413, %422
  %427 = phi i32 [ %425, %422 ], [ -1, %413 ]
  %428 = phi ptr [ %423, %422 ], [ %415, %413 ]
  %429 = sext i32 %427 to i64
  %430 = getelementptr inbounds i8, ptr getelementptr inbounds ([260 x i8], ptr @scan_char_array, i64 0, i64 4), i64 %429
  %431 = load i8, ptr %430, align 1, !tbaa !5
  %432 = icmp ult i8 %431, 10
  br i1 %432, label %413, label %433, !llvm.loop !21

433:                                              ; preds = %426, %288, %381, %229, %229, %229
  %434 = phi double [ 0x43E0000000000000, %229 ], [ 0x43E0000000000000, %229 ], [ 0x43E0000000000000, %229 ], [ %382, %381 ], [ %282, %288 ], [ %419, %426 ]
  %435 = phi i32 [ 0, %229 ], [ 0, %229 ], [ 0, %229 ], [ %374, %381 ], [ 0, %288 ], [ %420, %426 ]
  %436 = phi i32 [ %230, %229 ], [ %230, %229 ], [ %230, %229 ], [ %373, %381 ], [ %289, %288 ], [ %427, %426 ]
  %437 = phi ptr [ %231, %229 ], [ %231, %229 ], [ %231, %229 ], [ %372, %381 ], [ %290, %288 ], [ %428, %426 ]
  %438 = icmp slt i32 %2, 0
  br i1 %438, label %439, label %441

439:                                              ; preds = %433
  %440 = fneg double %434
  br label %441

441:                                              ; preds = %433, %439, %404, %359, %109
  %442 = phi double [ %440, %439 ], [ %434, %433 ], [ %412, %404 ], [ %114, %109 ], [ %360, %359 ]
  %443 = phi i32 [ %435, %439 ], [ %435, %433 ], [ %406, %404 ], [ 0, %109 ], [ %336, %359 ]
  %444 = phi i32 [ %436, %439 ], [ %436, %433 ], [ %407, %404 ], [ %110, %109 ], [ %337, %359 ]
  %445 = phi ptr [ %437, %439 ], [ %437, %433 ], [ %408, %404 ], [ %100, %109 ], [ %338, %359 ]
  switch i32 %444, label %501 [
    i32 101, label %446
    i32 69, label %446
    i32 -1, label %502
  ]

446:                                              ; preds = %441, %441
  %447 = icmp ult ptr %445, %1
  br i1 %447, label %448, label %496

448:                                              ; preds = %446
  %449 = getelementptr inbounds i8, ptr %445, i64 1
  %450 = load i8, ptr %445, align 1, !tbaa !5
  switch i8 %450, label %458 [
    i8 45, label %451
    i8 43, label %452
  ]

451:                                              ; preds = %448
  br label %452

452:                                              ; preds = %448, %451
  %453 = phi i1 [ true, %448 ], [ false, %451 ]
  %454 = icmp ult ptr %449, %1
  br i1 %454, label %455, label %496

455:                                              ; preds = %452
  %456 = getelementptr inbounds i8, ptr %445, i64 2
  %457 = load i8, ptr %449, align 1, !tbaa !5
  br label %458

458:                                              ; preds = %455, %448
  %459 = phi i8 [ %450, %448 ], [ %457, %455 ]
  %460 = phi ptr [ %449, %448 ], [ %456, %455 ]
  %461 = phi i1 [ true, %448 ], [ %453, %455 ]
  %462 = ptrtoint ptr %460 to i64
  %463 = zext i8 %459 to i64
  %464 = getelementptr inbounds i8, ptr getelementptr inbounds ([260 x i8], ptr @scan_char_array, i64 0, i64 4), i64 %463
  %465 = load i8, ptr %464, align 1, !tbaa !5
  %466 = icmp ult i8 %465, 10
  br i1 %466, label %467, label %496

467:                                              ; preds = %458
  %468 = zext nneg i8 %465 to i32
  %469 = icmp ult ptr %460, %1
  br i1 %469, label %470, label %490

470:                                              ; preds = %467
  %471 = sub i64 %6, %462
  %472 = getelementptr i8, ptr %460, i64 %471
  br label %473

473:                                              ; preds = %470, %486
  %474 = phi i32 [ %488, %486 ], [ %468, %470 ]
  %475 = phi ptr [ %476, %486 ], [ %460, %470 ]
  %476 = getelementptr inbounds i8, ptr %475, i64 1
  %477 = load i8, ptr %475, align 1, !tbaa !5
  %478 = zext i8 %477 to i64
  %479 = getelementptr inbounds i8, ptr getelementptr inbounds ([260 x i8], ptr @scan_char_array, i64 0, i64 4), i64 %478
  %480 = load i8, ptr %479, align 1, !tbaa !5
  %481 = zext i8 %480 to i32
  %482 = icmp ult i8 %480, 10
  br i1 %482, label %484, label %483

483:                                              ; preds = %473
  store ptr %476, ptr %4, align 8, !tbaa !10
  br label %490

484:                                              ; preds = %473
  %485 = icmp sgt i32 %474, 99
  br i1 %485, label %496, label %486

486:                                              ; preds = %484
  %487 = mul nuw nsw i32 %474, 10
  %488 = add nuw nsw i32 %487, %481
  %489 = icmp eq ptr %476, %472
  br i1 %489, label %490, label %473, !llvm.loop !22

490:                                              ; preds = %486, %467, %483
  %491 = phi i32 [ %474, %483 ], [ %468, %467 ], [ %488, %486 ]
  %492 = phi i32 [ 1, %483 ], [ 0, %467 ], [ 0, %486 ]
  %493 = sub i32 0, %491
  %494 = select i1 %461, i32 %491, i32 %493
  %495 = add i32 %494, %443
  br label %496

496:                                              ; preds = %484, %458, %452, %446, %490
  %497 = phi i32 [ %495, %490 ], [ %443, %446 ], [ %443, %452 ], [ %443, %458 ], [ %443, %484 ]
  %498 = phi i32 [ %492, %490 ], [ 0, %446 ], [ 0, %452 ], [ 0, %458 ], [ 0, %484 ]
  %499 = phi i1 [ true, %490 ], [ false, %446 ], [ false, %452 ], [ false, %458 ], [ false, %484 ]
  %500 = phi i32 [ undef, %490 ], [ -18, %446 ], [ -18, %452 ], [ -18, %458 ], [ -13, %484 ]
  br i1 %499, label %502, label %557

501:                                              ; preds = %441
  store ptr %445, ptr %4, align 8, !tbaa !10
  br label %502

502:                                              ; preds = %501, %441, %496
  %503 = phi i32 [ %443, %501 ], [ %443, %441 ], [ %497, %496 ]
  %504 = phi i32 [ 1, %501 ], [ 0, %441 ], [ %498, %496 ]
  %505 = icmp sgt i32 %503, 0
  br i1 %505, label %506, label %522

506:                                              ; preds = %502
  %507 = icmp sgt i32 %503, 6
  br i1 %507, label %508, label %514

508:                                              ; preds = %506, %508
  %509 = phi i32 [ %512, %508 ], [ %503, %506 ]
  %510 = phi double [ %511, %508 ], [ %442, %506 ]
  %511 = fmul double %510, 1.000000e+06
  %512 = add nsw i32 %509, -6
  %513 = icmp sgt i32 %509, 12
  br i1 %513, label %508, label %514, !llvm.loop !23

514:                                              ; preds = %508, %506
  %515 = phi double [ %442, %506 ], [ %511, %508 ]
  %516 = phi i32 [ %503, %506 ], [ %512, %508 ]
  %517 = zext nneg i32 %516 to i64
  %518 = getelementptr inbounds [7 x float], ptr @scan_number.powers_10, i64 0, i64 %517
  %519 = load float, ptr %518, align 4, !tbaa !24
  %520 = fpext float %519 to double
  %521 = fmul double %515, %520
  br label %541

522:                                              ; preds = %502
  %523 = icmp slt i32 %503, 0
  br i1 %523, label %524, label %541

524:                                              ; preds = %522
  %525 = icmp slt i32 %503, -6
  br i1 %525, label %526, label %532

526:                                              ; preds = %524, %526
  %527 = phi i32 [ %530, %526 ], [ %503, %524 ]
  %528 = phi double [ %529, %526 ], [ %442, %524 ]
  %529 = fdiv double %528, 1.000000e+06
  %530 = add nuw nsw i32 %527, 6
  %531 = icmp slt i32 %527, -12
  br i1 %531, label %526, label %532, !llvm.loop !26

532:                                              ; preds = %526, %524
  %533 = phi double [ %442, %524 ], [ %529, %526 ]
  %534 = phi i32 [ %503, %524 ], [ %530, %526 ]
  %535 = sub nsw i32 0, %534
  %536 = zext nneg i32 %535 to i64
  %537 = getelementptr inbounds [7 x float], ptr @scan_number.powers_10, i64 0, i64 %536
  %538 = load float, ptr %537, align 4, !tbaa !24
  %539 = fpext float %538 to double
  %540 = fdiv double %533, %539
  br label %541

541:                                              ; preds = %522, %532, %514
  %542 = phi double [ %521, %514 ], [ %540, %532 ], [ %442, %522 ]
  %543 = fcmp ult double %542, 0.000000e+00
  br i1 %543, label %546, label %544

544:                                              ; preds = %541
  %545 = fcmp ogt double %542, 0x47EFFFFFE0000000
  br i1 %545, label %557, label %548

546:                                              ; preds = %541
  %547 = fcmp olt double %542, 0xC7EFFFFFE0000000
  br i1 %547, label %557, label %548

548:                                              ; preds = %546, %544
  %549 = fptrunc double %542 to float
  %550 = getelementptr inbounds %struct.ref_s, ptr %3, i64 0, i32 1
  store float %549, ptr %550, align 8, !tbaa !5
  br label %551

551:                                              ; preds = %198, %270, %349, %548, %194
  %552 = phi i16 [ 2816, %194 ], [ 4096, %548 ], [ 4096, %349 ], [ 2816, %270 ], [ 2816, %198 ]
  %553 = phi i32 [ %195, %194 ], [ %504, %548 ], [ %350, %349 ], [ %272, %270 ], [ %200, %198 ]
  %554 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 6), align 4, !tbaa !27
  %555 = trunc i32 %554 to i16
  %556 = add i16 %552, %555
  store i16 %556, ptr %3, align 8, !tbaa !30
  br label %557

557:                                              ; preds = %551, %546, %544, %259, %154, %190, %115, %20, %16, %5, %496
  %558 = phi i32 [ %500, %496 ], [ -18, %5 ], [ -18, %16 ], [ -18, %20 ], [ -13, %190 ], [ %158, %154 ], [ -18, %115 ], [ -18, %259 ], [ -13, %544 ], [ -13, %546 ], [ %553, %551 ]
  ret i32 %558
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #2

attributes #0 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{i32 0, i32 33}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !9}
!17 = distinct !{!17, !9}
!18 = !{!19, !19, i64 0}
!19 = !{!"double", !6, i64 0}
!20 = distinct !{!20, !9}
!21 = distinct !{!21, !9}
!22 = distinct !{!22, !9}
!23 = distinct !{!23, !9}
!24 = !{!25, !25, i64 0}
!25 = !{!"float", !6, i64 0}
!26 = distinct !{!26, !9}
!27 = !{!28, !29, i64 60}
!28 = !{!"gs_dual_memory_s", !11, i64 0, !6, i64 8, !29, i64 40, !29, i64 44, !11, i64 48, !29, i64 56, !29, i64 60}
!29 = !{!"int", !6, i64 0}
!30 = !{!31, !33, i64 0}
!31 = !{!"ref_s", !32, i64 0, !6, i64 8}
!32 = !{!"tas_s", !33, i64 0, !33, i64 2}
!33 = !{!"short", !6, i64 0}
