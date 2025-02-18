; ModuleID = 'blender/intern/raskter/raskter.c'
source_filename = "blender/intern/raskter/raskter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.PolyVert = type { i32, i32 }
%struct.e_Status = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr }

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @PLX_raskterize(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7)
  store ptr null, ptr %6, align 8
  store ptr null, ptr %7, align 8
  %8 = sitofp i32 %3 to float
  %9 = sitofp i32 %4 to float
  %10 = sext i32 %1 to i64
  %11 = shl nsw i64 %10, 3
  %12 = tail call noalias ptr @malloc(i64 noundef %11) #6
  %13 = icmp eq ptr %12, null
  br i1 %13, label %311, label %14

14:                                               ; preds = %5
  %15 = icmp sgt i32 %1, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %14
  %17 = zext nneg i32 %1 to i64
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi i64 [ 0, %16 ], [ %30, %18 ]
  %20 = getelementptr inbounds [2 x float], ptr %0, i64 %19
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = tail call float @llvm.fmuladd.f32(float %21, float %8, float 5.000000e-01)
  %23 = fptosi float %22 to i32
  %24 = getelementptr inbounds %struct.PolyVert, ptr %12, i64 %19
  store i32 %23, ptr %24, align 4, !tbaa !38
  %25 = getelementptr inbounds [2 x float], ptr %0, i64 %19, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = tail call float @llvm.fmuladd.f32(float %26, float %9, float 5.000000e-01)
  %28 = fptosi float %27 to i32
  %29 = getelementptr inbounds %struct.PolyVert, ptr %12, i64 %19, i32 1
  store i32 %28, ptr %29, align 4, !tbaa !41
  %30 = add nuw nsw i64 %19, 1
  %31 = icmp eq i64 %30, %17
  br i1 %31, label %32, label %18, !llvm.loop !42

32:                                               ; preds = %18, %14
  %33 = icmp slt i32 %1, 3
  br i1 %33, label %309, label %34

34:                                               ; preds = %32
  %35 = zext nneg i32 %1 to i64
  %36 = mul nuw nsw i64 %35, 40
  %37 = tail call noalias ptr @malloc(i64 noundef %36) #6
  %38 = icmp eq ptr %37, null
  br i1 %38, label %309, label %39

39:                                               ; preds = %34
  store ptr null, ptr %6, align 8, !tbaa !45
  %40 = zext nneg i32 %1 to i64
  br label %41

41:                                               ; preds = %39, %120
  %42 = phi i64 [ 0, %39 ], [ %122, %120 ]
  %43 = phi ptr [ %37, %39 ], [ %121, %120 ]
  %44 = getelementptr inbounds %struct.PolyVert, ptr %12, i64 %42
  %45 = load i32, ptr %44, align 4, !tbaa !38
  %46 = getelementptr inbounds %struct.PolyVert, ptr %12, i64 %42, i32 1
  %47 = load i32, ptr %46, align 4, !tbaa !41
  %48 = icmp eq i64 %42, 0
  %49 = select i1 %48, i64 %35, i64 %42
  %50 = getelementptr %struct.PolyVert, ptr %12, i64 %49
  %51 = getelementptr %struct.PolyVert, ptr %50, i64 -1
  %52 = load i32, ptr %51, align 4, !tbaa !38
  %53 = getelementptr %struct.PolyVert, ptr %50, i64 -1, i32 1
  %54 = load i32, ptr %53, align 4, !tbaa !41
  %55 = icmp sgt i32 %47, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %41
  br label %57

57:                                               ; preds = %56, %41
  %58 = phi i32 [ %47, %56 ], [ %54, %41 ]
  %59 = phi i32 [ %45, %56 ], [ %52, %41 ]
  %60 = phi i32 [ %54, %56 ], [ %47, %41 ]
  %61 = phi i32 [ %52, %56 ], [ %45, %41 ]
  %62 = sub nsw i32 %58, %60
  %63 = icmp eq i32 %58, %60
  br i1 %63, label %120, label %64

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.e_Status, ptr %43, i64 1
  %66 = sub nsw i32 %59, %61
  %67 = icmp sgt i32 %66, 0
  %68 = getelementptr inbounds %struct.e_Status, ptr %43, i64 0, i32 3
  br i1 %67, label %69, label %70

69:                                               ; preds = %64
  store i32 1, ptr %68, align 4, !tbaa !49
  br label %72

70:                                               ; preds = %64
  store i32 -1, ptr %68, align 4, !tbaa !49
  %71 = sub nsw i32 0, %66
  br label %72

72:                                               ; preds = %70, %69
  %73 = phi i32 [ %66, %69 ], [ %71, %70 ]
  store i32 %61, ptr %43, align 8, !tbaa !51
  %74 = getelementptr inbounds %struct.e_Status, ptr %43, i64 0, i32 1
  store i32 %60, ptr %74, align 4, !tbaa !52
  %75 = getelementptr inbounds %struct.e_Status, ptr %43, i64 0, i32 7
  store i32 %62, ptr %75, align 4, !tbaa !53
  %76 = getelementptr inbounds %struct.e_Status, ptr %43, i64 0, i32 6
  store i32 %62, ptr %76, align 8, !tbaa !54
  %77 = sub i32 1, %62
  %78 = icmp slt i32 %66, 0
  %79 = select i1 %78, i32 %77, i32 0
  %80 = getelementptr inbounds %struct.e_Status, ptr %43, i64 0, i32 4
  store i32 %79, ptr %80, align 8, !tbaa !55
  %81 = icmp slt i32 %62, %73
  br i1 %81, label %84, label %82

82:                                               ; preds = %72
  %83 = getelementptr inbounds %struct.e_Status, ptr %43, i64 0, i32 5
  store i32 %73, ptr %83, align 4, !tbaa !56
  br label %91

84:                                               ; preds = %72
  %85 = srem i32 %73, %62
  %86 = getelementptr inbounds %struct.e_Status, ptr %43, i64 0, i32 5
  store i32 %85, ptr %86, align 4, !tbaa !56
  %87 = sdiv i32 %73, %62
  %88 = getelementptr inbounds %struct.e_Status, ptr %43, i64 0, i32 3
  %89 = load i32, ptr %88, align 4, !tbaa !49
  %90 = mul nsw i32 %89, %87
  br label %91

91:                                               ; preds = %84, %82
  %92 = phi i32 [ %90, %84 ], [ 0, %82 ]
  %93 = getelementptr inbounds %struct.e_Status, ptr %43, i64 0, i32 2
  store i32 %92, ptr %93, align 8, !tbaa !57
  %94 = load ptr, ptr %6, align 8, !tbaa !58
  %95 = icmp eq ptr %94, null
  br i1 %95, label %112, label %96

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.e_Status, ptr %94, i64 0, i32 1
  %98 = load i32, ptr %97, align 4, !tbaa !52
  %99 = icmp sgt i32 %98, %60
  br i1 %99, label %112, label %104

100:                                              ; preds = %116
  %101 = getelementptr inbounds %struct.e_Status, ptr %118, i64 0, i32 1
  %102 = load i32, ptr %101, align 4, !tbaa !52
  %103 = icmp sgt i32 %102, %60
  br i1 %103, label %112, label %104, !llvm.loop !59

104:                                              ; preds = %96, %100
  %105 = phi i32 [ %102, %100 ], [ %98, %96 ]
  %106 = phi ptr [ %117, %100 ], [ %6, %96 ]
  %107 = phi ptr [ %118, %100 ], [ %94, %96 ]
  %108 = icmp eq i32 %105, %60
  br i1 %108, label %109, label %116

109:                                              ; preds = %104
  %110 = load i32, ptr %107, align 8, !tbaa !51
  %111 = icmp slt i32 %110, %61
  br i1 %111, label %116, label %112

112:                                              ; preds = %109, %100, %116, %96, %91
  %113 = phi ptr [ %6, %91 ], [ %6, %96 ], [ %117, %116 ], [ %117, %100 ], [ %106, %109 ]
  %114 = phi ptr [ %94, %91 ], [ %94, %96 ], [ %118, %116 ], [ %118, %100 ], [ %107, %109 ]
  %115 = getelementptr inbounds %struct.e_Status, ptr %43, i64 0, i32 8
  store ptr %114, ptr %115, align 8, !tbaa !60
  store ptr %43, ptr %113, align 8, !tbaa !58
  br label %120

116:                                              ; preds = %109, %104
  %117 = getelementptr inbounds %struct.e_Status, ptr %107, i64 0, i32 8
  %118 = load ptr, ptr %117, align 8, !tbaa !58
  %119 = icmp eq ptr %118, null
  br i1 %119, label %112, label %100, !llvm.loop !59

120:                                              ; preds = %112, %57
  %121 = phi ptr [ %65, %112 ], [ %43, %57 ]
  %122 = add nuw nsw i64 %42, 1
  %123 = icmp eq i64 %122, %40
  br i1 %123, label %124, label %41, !llvm.loop !61

124:                                              ; preds = %120
  %125 = load ptr, ptr %6, align 8, !tbaa !45
  %126 = icmp eq ptr %125, null
  br i1 %126, label %308, label %127

127:                                              ; preds = %124
  store ptr null, ptr %7, align 8, !tbaa !62
  %128 = load ptr, ptr %6, align 8, !tbaa !45
  %129 = icmp eq ptr %128, null
  br i1 %129, label %308, label %130

130:                                              ; preds = %127
  %131 = getelementptr inbounds %struct.e_Status, ptr %125, i64 0, i32 1
  %132 = load i32, ptr %131, align 4, !tbaa !52
  %133 = sext i32 %132 to i64
  %134 = sext i32 %4 to i64
  %135 = sext i32 %3 to i64
  br label %136

136:                                              ; preds = %130, %301
  %137 = phi i64 [ %133, %130 ], [ %302, %301 ]
  %138 = load ptr, ptr %6, align 8, !tbaa !45
  %139 = icmp eq ptr %138, null
  br i1 %139, label %173, label %140

140:                                              ; preds = %136
  %141 = trunc i64 %137 to i32
  br label %142

142:                                              ; preds = %140, %160
  %143 = phi ptr [ %164, %160 ], [ %138, %140 ]
  %144 = phi ptr [ %166, %160 ], [ %7, %140 ]
  %145 = getelementptr inbounds %struct.e_Status, ptr %143, i64 0, i32 1
  %146 = load i32, ptr %145, align 4, !tbaa !52
  %147 = icmp eq i32 %146, %141
  br i1 %147, label %148, label %173

148:                                              ; preds = %142
  %149 = load i32, ptr %143, align 8, !tbaa !51
  %150 = load ptr, ptr %144, align 8, !tbaa !58
  %151 = icmp eq ptr %150, null
  br i1 %151, label %160, label %152

152:                                              ; preds = %148
  %153 = load i32, ptr %150, align 8, !tbaa !51
  %154 = icmp slt i32 %153, %149
  br i1 %154, label %168, label %160

155:                                              ; preds = %168
  %156 = load i32, ptr %171, align 8, !tbaa !51
  %157 = icmp slt i32 %156, %149
  br i1 %157, label %168, label %158, !llvm.loop !63

158:                                              ; preds = %168, %155
  %159 = getelementptr inbounds %struct.e_Status, ptr %169, i64 0, i32 8
  br label %160

160:                                              ; preds = %158, %152, %148
  %161 = phi ptr [ %144, %148 ], [ %144, %152 ], [ %159, %158 ]
  %162 = phi ptr [ %150, %148 ], [ %150, %152 ], [ %171, %158 ]
  %163 = getelementptr inbounds %struct.e_Status, ptr %143, i64 0, i32 8
  %164 = load ptr, ptr %163, align 8, !tbaa !60
  store ptr %143, ptr %161, align 8, !tbaa !58
  %165 = load ptr, ptr %6, align 8, !tbaa !45
  %166 = getelementptr inbounds %struct.e_Status, ptr %165, i64 0, i32 8
  store ptr %162, ptr %166, align 8, !tbaa !60
  store ptr %164, ptr %6, align 8, !tbaa !45
  %167 = icmp eq ptr %164, null
  br i1 %167, label %173, label %142, !llvm.loop !64

168:                                              ; preds = %152, %155
  %169 = phi ptr [ %171, %155 ], [ %150, %152 ]
  %170 = getelementptr inbounds %struct.e_Status, ptr %169, i64 0, i32 8
  %171 = load ptr, ptr %170, align 8, !tbaa !58
  %172 = icmp eq ptr %171, null
  br i1 %172, label %158, label %155, !llvm.loop !63

173:                                              ; preds = %160, %142, %136
  %174 = mul nsw i64 %137, %135
  %175 = getelementptr inbounds float, ptr %2, i64 %174
  %176 = getelementptr float, ptr %175, i64 -1
  %177 = load ptr, ptr %7, align 8, !tbaa !58
  %178 = icmp eq ptr %177, null
  br i1 %178, label %182, label %179

179:                                              ; preds = %173
  %180 = icmp sgt i64 %137, -1
  %181 = icmp sge i64 %137, %134
  br label %185

182:                                              ; preds = %206, %173
  %183 = load ptr, ptr %7, align 8, !tbaa !58
  %184 = icmp eq ptr %183, null
  br i1 %184, label %244, label %210

185:                                              ; preds = %179, %206
  %186 = phi ptr [ %177, %179 ], [ %208, %206 ]
  %187 = getelementptr inbounds %struct.e_Status, ptr %186, i64 0, i32 8
  %188 = load ptr, ptr %187, align 8, !tbaa !60
  %189 = load i32, ptr %188, align 8, !tbaa !51
  %190 = tail call i32 @llvm.smin.i32(i32 %189, i32 %3)
  %191 = sext i32 %190 to i64
  %192 = getelementptr float, ptr %176, i64 %191
  br i1 %180, label %193, label %206

193:                                              ; preds = %185
  %194 = load i32, ptr %186, align 8, !tbaa !51
  %195 = tail call i32 @llvm.smax.i32(i32 %194, i32 0)
  %196 = zext nneg i32 %195 to i64
  %197 = getelementptr inbounds float, ptr %175, i64 %196
  %198 = icmp ugt ptr %197, %192
  %199 = select i1 %181, i1 true, i1 %198
  br i1 %199, label %206, label %200

200:                                              ; preds = %193, %200
  %201 = phi ptr [ %202, %200 ], [ %197, %193 ]
  %202 = getelementptr inbounds float, ptr %201, i64 1
  %203 = load float, ptr %201, align 4, !tbaa !34
  %204 = fadd float %203, 1.000000e+00
  store float %204, ptr %201, align 4, !tbaa !34
  %205 = icmp ugt ptr %202, %192
  br i1 %205, label %206, label %200, !llvm.loop !65

206:                                              ; preds = %200, %193, %185
  %207 = getelementptr inbounds %struct.e_Status, ptr %188, i64 0, i32 8
  %208 = load ptr, ptr %207, align 8, !tbaa !58
  %209 = icmp eq ptr %208, null
  br i1 %209, label %182, label %185, !llvm.loop !66

210:                                              ; preds = %182, %240
  %211 = phi ptr [ %242, %240 ], [ %183, %182 ]
  %212 = phi ptr [ %241, %240 ], [ %7, %182 ]
  %213 = getelementptr inbounds %struct.e_Status, ptr %211, i64 0, i32 7
  %214 = load i32, ptr %213, align 4, !tbaa !53
  %215 = add nsw i32 %214, -1
  store i32 %215, ptr %213, align 4, !tbaa !53
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %210
  %218 = getelementptr inbounds %struct.e_Status, ptr %211, i64 0, i32 8
  %219 = load ptr, ptr %218, align 8, !tbaa !60
  store ptr %219, ptr %212, align 8, !tbaa !58
  br label %240

220:                                              ; preds = %210
  %221 = getelementptr inbounds %struct.e_Status, ptr %211, i64 0, i32 2
  %222 = load i32, ptr %221, align 8, !tbaa !57
  %223 = load i32, ptr %211, align 8, !tbaa !51
  %224 = add nsw i32 %223, %222
  store i32 %224, ptr %211, align 8, !tbaa !51
  %225 = getelementptr inbounds %struct.e_Status, ptr %211, i64 0, i32 5
  %226 = load i32, ptr %225, align 4, !tbaa !56
  %227 = getelementptr inbounds %struct.e_Status, ptr %211, i64 0, i32 4
  %228 = load i32, ptr %227, align 8, !tbaa !55
  %229 = add nsw i32 %228, %226
  store i32 %229, ptr %227, align 8, !tbaa !55
  %230 = icmp sgt i32 %229, 0
  br i1 %230, label %231, label %238

231:                                              ; preds = %220
  %232 = getelementptr inbounds %struct.e_Status, ptr %211, i64 0, i32 3
  %233 = load i32, ptr %232, align 4, !tbaa !49
  %234 = add nsw i32 %233, %224
  store i32 %234, ptr %211, align 8, !tbaa !51
  %235 = getelementptr inbounds %struct.e_Status, ptr %211, i64 0, i32 6
  %236 = load i32, ptr %235, align 8, !tbaa !54
  %237 = sub nsw i32 %229, %236
  store i32 %237, ptr %227, align 8, !tbaa !55
  br label %238

238:                                              ; preds = %231, %220
  %239 = getelementptr inbounds %struct.e_Status, ptr %211, i64 0, i32 8
  br label %240

240:                                              ; preds = %238, %217
  %241 = phi ptr [ %239, %238 ], [ %212, %217 ]
  %242 = load ptr, ptr %241, align 8, !tbaa !58
  %243 = icmp eq ptr %242, null
  br i1 %243, label %244, label %210, !llvm.loop !67

244:                                              ; preds = %240, %182
  %245 = load ptr, ptr %7, align 8, !tbaa !62
  %246 = icmp eq ptr %245, null
  br i1 %246, label %301, label %247

247:                                              ; preds = %244
  %248 = load ptr, ptr %7, align 8, !tbaa !58
  %249 = getelementptr inbounds %struct.e_Status, ptr %248, i64 0, i32 8
  %250 = load ptr, ptr %249, align 8, !tbaa !60
  %251 = icmp eq ptr %250, null
  br i1 %251, label %271, label %252

252:                                              ; preds = %247, %264
  %253 = phi ptr [ %269, %264 ], [ %250, %247 ]
  %254 = phi ptr [ %268, %264 ], [ %249, %247 ]
  %255 = phi ptr [ %267, %264 ], [ %248, %247 ]
  %256 = phi ptr [ %266, %264 ], [ %7, %247 ]
  %257 = load i32, ptr %255, align 8, !tbaa !51
  %258 = load i32, ptr %253, align 8, !tbaa !51
  %259 = icmp sgt i32 %257, %258
  br i1 %259, label %260, label %264

260:                                              ; preds = %252
  store ptr %253, ptr %256, align 8, !tbaa !58
  %261 = load ptr, ptr %254, align 8, !tbaa !60
  %262 = getelementptr inbounds %struct.e_Status, ptr %261, i64 0, i32 8
  %263 = load ptr, ptr %262, align 8, !tbaa !60
  store ptr %255, ptr %262, align 8, !tbaa !60
  store ptr %263, ptr %254, align 8, !tbaa !60
  br label %264

264:                                              ; preds = %260, %252
  %265 = load ptr, ptr %256, align 8, !tbaa !58
  %266 = getelementptr inbounds %struct.e_Status, ptr %265, i64 0, i32 8
  %267 = load ptr, ptr %266, align 8, !tbaa !58
  %268 = getelementptr inbounds %struct.e_Status, ptr %267, i64 0, i32 8
  %269 = load ptr, ptr %268, align 8, !tbaa !60
  %270 = icmp eq ptr %269, null
  br i1 %270, label %271, label %252, !llvm.loop !68

271:                                              ; preds = %264, %247
  br label %272

272:                                              ; preds = %271, %298
  %273 = load ptr, ptr %7, align 8, !tbaa !58
  %274 = getelementptr inbounds %struct.e_Status, ptr %273, i64 0, i32 8
  %275 = load ptr, ptr %274, align 8, !tbaa !60
  %276 = icmp eq ptr %275, null
  br i1 %276, label %298, label %277

277:                                              ; preds = %272, %290
  %278 = phi ptr [ %296, %290 ], [ %275, %272 ]
  %279 = phi ptr [ %295, %290 ], [ %274, %272 ]
  %280 = phi ptr [ %294, %290 ], [ %273, %272 ]
  %281 = phi ptr [ %293, %290 ], [ %7, %272 ]
  %282 = phi i32 [ %291, %290 ], [ 0, %272 ]
  %283 = load i32, ptr %280, align 8, !tbaa !51
  %284 = load i32, ptr %278, align 8, !tbaa !51
  %285 = icmp sgt i32 %283, %284
  br i1 %285, label %286, label %290

286:                                              ; preds = %277
  store ptr %278, ptr %281, align 8, !tbaa !58
  %287 = load ptr, ptr %279, align 8, !tbaa !60
  %288 = getelementptr inbounds %struct.e_Status, ptr %287, i64 0, i32 8
  %289 = load ptr, ptr %288, align 8, !tbaa !60
  store ptr %280, ptr %288, align 8, !tbaa !60
  store ptr %289, ptr %279, align 8, !tbaa !60
  br label %290

290:                                              ; preds = %286, %277
  %291 = phi i32 [ 1, %286 ], [ %282, %277 ]
  %292 = load ptr, ptr %281, align 8, !tbaa !58
  %293 = getelementptr inbounds %struct.e_Status, ptr %292, i64 0, i32 8
  %294 = load ptr, ptr %293, align 8, !tbaa !58
  %295 = getelementptr inbounds %struct.e_Status, ptr %294, i64 0, i32 8
  %296 = load ptr, ptr %295, align 8, !tbaa !60
  %297 = icmp eq ptr %296, null
  br i1 %297, label %298, label %277, !llvm.loop !69

298:                                              ; preds = %290, %272
  %299 = phi i32 [ 0, %272 ], [ %291, %290 ]
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %272, !llvm.loop !70

301:                                              ; preds = %298, %244
  %302 = add i64 %137, 1
  %303 = load ptr, ptr %6, align 8, !tbaa !45
  %304 = icmp eq ptr %303, null
  %305 = load ptr, ptr %7, align 8
  %306 = icmp eq ptr %305, null
  %307 = select i1 %304, i1 %306, i1 false
  br i1 %307, label %308, label %136, !llvm.loop !71

308:                                              ; preds = %301, %127, %124
  tail call void @free(ptr noundef %37) #7
  br label %309

309:                                              ; preds = %308, %32, %34
  %310 = phi i32 [ 1, %32 ], [ 0, %34 ], [ 1, %308 ]
  tail call void @free(ptr noundef %12) #7
  br label %311

311:                                              ; preds = %5, %309
  %312 = phi i32 [ %310, %309 ], [ 0, %5 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7)
  ret i32 %312
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind allocsize(0) }
attributes #7 = { nounwind }

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
!35 = !{!"float", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !40, i64 0}
!39 = !{!"PolyVert", !40, i64 0, !40, i64 4}
!40 = !{!"int", !36, i64 0}
!41 = !{!39, !40, i64 4}
!42 = distinct !{!42, !43, !44}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!"llvm.loop.unroll.disable"}
!45 = !{!46, !47, i64 0}
!46 = !{!"r_FillContext", !47, i64 0, !47, i64 8, !48, i64 16}
!47 = !{!"any pointer", !36, i64 0}
!48 = !{!"r_BufferStats", !47, i64 0, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28}
!49 = !{!50, !40, i64 12}
!50 = !{!"e_Status", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !47, i64 32}
!51 = !{!50, !40, i64 0}
!52 = !{!50, !40, i64 4}
!53 = !{!50, !40, i64 28}
!54 = !{!50, !40, i64 24}
!55 = !{!50, !40, i64 16}
!56 = !{!50, !40, i64 20}
!57 = !{!50, !40, i64 8}
!58 = !{!47, !47, i64 0}
!59 = distinct !{!59, !44}
!60 = !{!50, !47, i64 32}
!61 = distinct !{!61, !43, !44}
!62 = !{!46, !47, i64 8}
!63 = distinct !{!63, !44}
!64 = distinct !{!64, !43, !44}
!65 = distinct !{!65, !43, !44}
!66 = distinct !{!66, !43, !44}
!67 = distinct !{!67, !43, !44}
!68 = distinct !{!68, !43, !44}
!69 = distinct !{!69, !43, !44}
!70 = distinct !{!70, !44}
!71 = distinct !{!71, !43, !44}
