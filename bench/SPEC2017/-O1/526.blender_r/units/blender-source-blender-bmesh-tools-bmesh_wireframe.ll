; ModuleID = 'blender/source/blender/bmesh/tools/bmesh_wireframe.c'
source_filename = "blender/source/blender/bmesh/tools/bmesh_wireframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }

@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.BM_mesh_wireframe = private unnamed_addr constant [18 x i8] c"BM_mesh_wireframe\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local void @BM_mesh_wireframe(ptr noundef %0, float noundef %1, float noundef %2, float noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6, i8 noundef zeroext %7, i8 noundef zeroext %8, float noundef %9, i32 noundef %10, i8 noundef zeroext %11, i16 noundef signext %12, i16 noundef signext %13, i8 noundef zeroext %14) local_unnamed_addr #0 {
  %16 = alloca %struct.BMIter, align 8
  %17 = alloca [3 x float], align 4
  %18 = alloca [3 x float], align 4
  %19 = alloca %struct.BMIter, align 8
  %20 = alloca %struct.BMIter, align 8
  %21 = alloca [3 x float], align 4
  %22 = alloca [2 x ptr], align 16
  %23 = alloca [3 x float], align 4
  %24 = fsub float 1.000000e+00, %2
  %25 = fmul float %24, -5.000000e-01
  %26 = fmul float %25, %1
  %27 = fadd float %26, %1
  %28 = fadd float %26, %27
  %29 = fmul float %28, 5.000000e-01
  %30 = fmul float %1, 5.000000e-01
  %31 = icmp ne i8 %8, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %15
  %33 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 25
  %34 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %33, i32 noundef 30) #7
  br label %35

35:                                               ; preds = %15, %32
  %36 = phi i32 [ %34, %32 ], [ -1, %15 ]
  %37 = icmp eq i32 %10, -1
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  %40 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %39, i32 noundef 2) #7
  br label %41

41:                                               ; preds = %35, %38
  %42 = phi i32 [ %40, %38 ], [ -1, %35 ]
  %43 = fsub float 1.000000e+00, %3
  %44 = load i32, ptr %0, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %19) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %20) #7
  %45 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !43
  %46 = sext i32 %44 to i64
  %47 = shl nsw i64 %46, 3
  %48 = tail call ptr %45(i64 noundef %47, ptr noundef nonnull @__func__.BM_mesh_wireframe) #7
  %49 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !43
  %50 = tail call ptr %49(i64 noundef %47, ptr noundef nonnull @__func__.BM_mesh_wireframe) #7
  %51 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !43
  %52 = tail call ptr %51(i64 noundef %47, ptr noundef nonnull @__func__.BM_mesh_wireframe) #7
  %53 = icmp eq i8 %5, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %41
  %55 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !43
  %56 = tail call ptr %55(i64 noundef %47, ptr noundef nonnull @__func__.BM_mesh_wireframe) #7
  br label %57

57:                                               ; preds = %41, %54
  %58 = phi ptr [ %56, %54 ], [ null, %41 ]
  %59 = icmp ne i8 %7, 0
  %60 = icmp ne i32 %42, -1
  %61 = select i1 %59, i1 true, i1 %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !43
  %64 = shl nsw i64 %46, 2
  %65 = tail call ptr %63(i64 noundef %64, ptr noundef nonnull @__func__.BM_mesh_wireframe) #7
  br label %66

66:                                               ; preds = %57, %62
  %67 = phi ptr [ %65, %62 ], [ null, %57 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #7
  %68 = icmp eq i32 %36, -1
  %69 = select i1 %31, i1 %68, i1 false
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 25
  tail call void @BM_data_layer_add(ptr noundef nonnull %0, ptr noundef nonnull %71, i32 noundef 30) #7
  %72 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %71, i32 noundef 30) #7
  br label %73

73:                                               ; preds = %70, %66
  %74 = phi i32 [ %72, %70 ], [ %36, %66 ]
  %75 = getelementptr inbounds %struct.BMIter, ptr %19, i64 0, i32 4
  store i8 1, ptr %75, align 4, !tbaa !44
  %76 = getelementptr inbounds %struct.BMIter, ptr %19, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %76, align 8, !tbaa !46
  %77 = getelementptr inbounds %struct.BMIter, ptr %19, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %77, align 8, !tbaa !47
  %78 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %79 = load ptr, ptr %78, align 8, !tbaa !48
  store ptr %79, ptr %19, align 8, !tbaa !49
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %19) #7
  %80 = load ptr, ptr %77, align 8, !tbaa !47
  %81 = call ptr %80(ptr noundef nonnull %19) #7
  %82 = icmp eq ptr %81, null
  br i1 %82, label %96, label %83

83:                                               ; preds = %73, %83
  %84 = phi i64 [ %94, %83 ], [ 0, %73 ]
  %85 = phi ptr [ %93, %83 ], [ %81, %73 ]
  %86 = getelementptr inbounds %struct.BMHeader, ptr %85, i64 0, i32 1
  %87 = trunc i64 %84 to i32
  store i32 %87, ptr %86, align 8, !tbaa !50
  %88 = getelementptr inbounds ptr, ptr %48, i64 %84
  store ptr %85, ptr %88, align 8, !tbaa !43
  %89 = getelementptr inbounds %struct.BMHeader, ptr %85, i64 0, i32 3
  %90 = load i8, ptr %89, align 1, !tbaa !52
  %91 = and i8 %90, -17
  store i8 %91, ptr %89, align 1, !tbaa !52
  %92 = load ptr, ptr %77, align 8, !tbaa !47
  %93 = call ptr %92(ptr noundef nonnull %19) #7
  %94 = add nuw i64 %84, 1
  %95 = icmp eq ptr %93, null
  br i1 %95, label %96, label %83, !llvm.loop !53

96:                                               ; preds = %83, %73
  %97 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %98 = load i8, ptr %97, align 4, !tbaa !56
  %99 = and i8 %98, -2
  store i8 %99, ptr %97, align 4, !tbaa !56
  store i8 3, ptr %75, align 4, !tbaa !44
  store ptr @bmiter__elem_of_mesh_begin, ptr %76, align 8, !tbaa !46
  store ptr @bmiter__elem_of_mesh_step, ptr %77, align 8, !tbaa !47
  %100 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %101 = load ptr, ptr %100, align 8, !tbaa !57
  store ptr %101, ptr %19, align 8, !tbaa !49
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %19) #7
  %102 = load ptr, ptr %77, align 8, !tbaa !47
  %103 = call ptr %102(ptr noundef nonnull %19) #7
  %104 = icmp eq ptr %103, null
  br i1 %104, label %171, label %105

105:                                              ; preds = %96
  %106 = icmp eq i8 %14, 0
  %107 = getelementptr inbounds %struct.BMIter, ptr %20, i64 0, i32 4
  %108 = getelementptr inbounds %struct.BMIter, ptr %20, i64 0, i32 1
  %109 = getelementptr inbounds %struct.BMIter, ptr %20, i64 0, i32 2
  br label %110

110:                                              ; preds = %105, %165
  %111 = phi i32 [ 0, %105 ], [ %166, %165 ]
  %112 = phi ptr [ %103, %105 ], [ %168, %165 ]
  %113 = phi i32 [ 0, %105 ], [ %169, %165 ]
  %114 = getelementptr inbounds %struct.BMHeader, ptr %112, i64 0, i32 1
  store i32 %113, ptr %114, align 8, !tbaa !50
  %115 = getelementptr inbounds %struct.BMHeader, ptr %112, i64 0, i32 3
  %116 = load i8, ptr %115, align 1, !tbaa !52
  br i1 %106, label %120, label %117

117:                                              ; preds = %110
  %118 = and i8 %116, 16
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %165, label %122

120:                                              ; preds = %110
  %121 = or i8 %116, 16
  store i8 %121, ptr %115, align 1, !tbaa !52
  br label %122

122:                                              ; preds = %117, %120
  %123 = getelementptr inbounds %struct.BMFace, ptr %112, i64 0, i32 3
  %124 = load i32, ptr %123, align 8, !tbaa !58
  %125 = add nsw i32 %124, %111
  store i8 11, ptr %107, align 4, !tbaa !44
  store ptr @bmiter__loop_of_face_begin, ptr %108, align 8, !tbaa !46
  store ptr @bmiter__loop_of_face_step, ptr %109, align 8, !tbaa !47
  store ptr %112, ptr %20, align 8, !tbaa !49
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %20) #7
  %126 = load ptr, ptr %109, align 8, !tbaa !47
  %127 = call ptr %126(ptr noundef nonnull %20) #7
  %128 = icmp eq ptr %127, null
  br i1 %128, label %165, label %129

129:                                              ; preds = %122, %161
  %130 = phi ptr [ %163, %161 ], [ %127, %122 ]
  %131 = getelementptr inbounds %struct.BMLoop, ptr %130, i64 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !60
  %133 = getelementptr inbounds %struct.BMHeader, ptr %132, i64 0, i32 3
  %134 = load i8, ptr %133, align 1, !tbaa !52
  %135 = or i8 %134, 16
  store i8 %135, ptr %133, align 1, !tbaa !52
  %136 = getelementptr inbounds %struct.BMLoop, ptr %130, i64 0, i32 2
  %137 = load ptr, ptr %136, align 8, !tbaa !62
  %138 = getelementptr inbounds %struct.BMLoop, ptr %130, i64 0, i32 4
  %139 = load ptr, ptr %138, align 8, !tbaa !63
  %140 = icmp eq ptr %139, %130
  br i1 %140, label %153, label %141

141:                                              ; preds = %129, %149
  %142 = phi ptr [ %151, %149 ], [ %139, %129 ]
  %143 = getelementptr inbounds %struct.BMLoop, ptr %142, i64 0, i32 3
  %144 = load ptr, ptr %143, align 8, !tbaa !64
  %145 = getelementptr inbounds %struct.BMHeader, ptr %144, i64 0, i32 3
  %146 = load i8, ptr %145, align 1, !tbaa !52
  %147 = and i8 %146, 16
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %149, label %157

149:                                              ; preds = %141
  %150 = getelementptr inbounds %struct.BMLoop, ptr %142, i64 0, i32 4
  %151 = load ptr, ptr %150, align 8, !tbaa !63
  %152 = icmp eq ptr %151, %130
  br i1 %152, label %153, label %141, !llvm.loop !65

153:                                              ; preds = %149, %129
  %154 = getelementptr inbounds %struct.BMHeader, ptr %137, i64 0, i32 3
  %155 = load i8, ptr %154, align 1, !tbaa !52
  %156 = or i8 %155, 16
  store i8 %156, ptr %154, align 1, !tbaa !52
  br label %161

157:                                              ; preds = %141
  %158 = getelementptr inbounds %struct.BMHeader, ptr %137, i64 0, i32 3
  %159 = load i8, ptr %158, align 1, !tbaa !52
  %160 = and i8 %159, -17
  store i8 %160, ptr %158, align 1, !tbaa !52
  br label %161

161:                                              ; preds = %153, %157
  %162 = load ptr, ptr %109, align 8, !tbaa !47
  %163 = call ptr %162(ptr noundef nonnull %20) #7
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %129, !llvm.loop !66

165:                                              ; preds = %161, %122, %117
  %166 = phi i32 [ %111, %117 ], [ %125, %122 ], [ %125, %161 ]
  %167 = load ptr, ptr %77, align 8, !tbaa !47
  %168 = call ptr %167(ptr noundef nonnull %19) #7
  %169 = add nuw nsw i32 %113, 1
  %170 = icmp eq ptr %168, null
  br i1 %170, label %171, label %110, !llvm.loop !67

171:                                              ; preds = %165, %96
  %172 = phi i32 [ 0, %96 ], [ %166, %165 ]
  %173 = load i8, ptr %97, align 4, !tbaa !56
  %174 = and i8 %173, -9
  store i8 %174, ptr %97, align 4, !tbaa !56
  %175 = icmp sgt i32 %44, 0
  br i1 %175, label %176, label %305

176:                                              ; preds = %171
  %177 = icmp eq ptr %67, null
  %178 = icmp eq i8 %7, 0
  %179 = sext i32 %42 to i64
  %180 = icmp eq i8 %11, 0
  %181 = fcmp ogt float %3, 0.000000e+00
  %182 = fcmp oeq float %1, 0.000000e+00
  %183 = getelementptr inbounds float, ptr %21, i64 1
  %184 = getelementptr inbounds float, ptr %21, i64 2
  %185 = fsub float %26, %29
  %186 = fsub float %27, %29
  %187 = icmp eq i8 %7, 0
  %188 = zext nneg i32 %44 to i64
  br label %189

189:                                              ; preds = %176, %302
  %190 = phi i64 [ 0, %176 ], [ %303, %302 ]
  %191 = getelementptr inbounds ptr, ptr %48, i64 %190
  %192 = load ptr, ptr %191, align 8, !tbaa !43
  %193 = getelementptr inbounds %struct.BMHeader, ptr %192, i64 0, i32 3
  %194 = load i8, ptr %193, align 1, !tbaa !52
  %195 = and i8 %194, 16
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %295, label %197

197:                                              ; preds = %189
  br i1 %177, label %218, label %198

198:                                              ; preds = %197
  br i1 %178, label %201, label %199

199:                                              ; preds = %198
  %200 = call float @BM_vert_calc_mean_tagged_edge_length(ptr noundef %192) #7
  br label %201

201:                                              ; preds = %198, %199
  %202 = phi float [ %200, %199 ], [ 1.000000e+00, %198 ]
  %203 = getelementptr inbounds float, ptr %67, i64 %190
  store float %202, ptr %203, align 4, !tbaa !68
  br i1 %60, label %204, label %215

204:                                              ; preds = %201
  %205 = load ptr, ptr %192, align 8, !tbaa !70
  %206 = getelementptr inbounds i8, ptr %205, i64 %179
  %207 = call float @defvert_find_weight(ptr noundef %206, i32 noundef %10) #7
  %208 = fsub float 1.000000e+00, %207
  %209 = select i1 %180, float %207, float %208
  %210 = call float @llvm.fmuladd.f32(float %209, float %43, float %3)
  %211 = select i1 %181, float %210, float %209
  %212 = getelementptr inbounds float, ptr %67, i64 %190
  %213 = load float, ptr %212, align 4, !tbaa !68
  %214 = fmul float %213, %211
  store float %214, ptr %212, align 4, !tbaa !68
  br label %215

215:                                              ; preds = %204, %201
  %216 = getelementptr inbounds float, ptr %67, i64 %190
  %217 = load float, ptr %216, align 4, !tbaa !68
  br label %218

218:                                              ; preds = %215, %197
  %219 = phi float [ %217, %215 ], [ 1.000000e+00, %197 ]
  %220 = call ptr @BM_vert_create(ptr noundef nonnull %0, ptr noundef null, ptr noundef %192, i32 noundef 0) #7
  %221 = getelementptr inbounds ptr, ptr %50, i64 %190
  store ptr %220, ptr %221, align 8, !tbaa !43
  %222 = call ptr @BM_vert_create(ptr noundef nonnull %0, ptr noundef null, ptr noundef %192, i32 noundef 0) #7
  %223 = getelementptr inbounds ptr, ptr %52, i64 %190
  store ptr %222, ptr %223, align 8, !tbaa !43
  br i1 %182, label %224, label %258

224:                                              ; preds = %218
  %225 = load ptr, ptr %221, align 8, !tbaa !43
  %226 = getelementptr inbounds %struct.BMVert, ptr %225, i64 0, i32 2
  %227 = getelementptr inbounds %struct.BMVert, ptr %192, i64 0, i32 2
  %228 = getelementptr inbounds %struct.BMVert, ptr %192, i64 0, i32 3
  %229 = fmul float %26, %219
  %230 = load float, ptr %227, align 4, !tbaa !68
  %231 = load float, ptr %228, align 4, !tbaa !68
  %232 = call float @llvm.fmuladd.f32(float %231, float %229, float %230)
  store float %232, ptr %226, align 4, !tbaa !68
  %233 = getelementptr inbounds %struct.BMVert, ptr %192, i64 0, i32 2, i64 1
  %234 = load float, ptr %233, align 4, !tbaa !68
  %235 = getelementptr inbounds %struct.BMVert, ptr %192, i64 0, i32 3, i64 1
  %236 = load float, ptr %235, align 4, !tbaa !68
  %237 = call float @llvm.fmuladd.f32(float %236, float %229, float %234)
  %238 = getelementptr inbounds %struct.BMVert, ptr %225, i64 0, i32 2, i64 1
  store float %237, ptr %238, align 4, !tbaa !68
  %239 = getelementptr inbounds %struct.BMVert, ptr %192, i64 0, i32 2, i64 2
  %240 = load float, ptr %239, align 4, !tbaa !68
  %241 = getelementptr inbounds %struct.BMVert, ptr %192, i64 0, i32 3, i64 2
  %242 = load float, ptr %241, align 4, !tbaa !68
  %243 = call float @llvm.fmuladd.f32(float %242, float %229, float %240)
  %244 = getelementptr inbounds %struct.BMVert, ptr %225, i64 0, i32 2, i64 2
  store float %243, ptr %244, align 4, !tbaa !68
  %245 = getelementptr inbounds %struct.BMVert, ptr %222, i64 0, i32 2
  %246 = fmul float %27, %219
  %247 = load float, ptr %227, align 4, !tbaa !68
  %248 = load float, ptr %228, align 4, !tbaa !68
  %249 = call float @llvm.fmuladd.f32(float %248, float %246, float %247)
  store float %249, ptr %245, align 4, !tbaa !68
  %250 = load float, ptr %233, align 4, !tbaa !68
  %251 = load float, ptr %235, align 4, !tbaa !68
  %252 = call float @llvm.fmuladd.f32(float %251, float %246, float %250)
  %253 = getelementptr inbounds %struct.BMVert, ptr %222, i64 0, i32 2, i64 1
  store float %252, ptr %253, align 4, !tbaa !68
  %254 = load float, ptr %239, align 4, !tbaa !68
  %255 = load float, ptr %241, align 4, !tbaa !68
  %256 = call float @llvm.fmuladd.f32(float %255, float %246, float %254)
  %257 = getelementptr inbounds %struct.BMVert, ptr %222, i64 0, i32 2, i64 2
  store float %256, ptr %257, align 4, !tbaa !68
  br label %298

258:                                              ; preds = %218
  %259 = getelementptr inbounds %struct.BMVert, ptr %192, i64 0, i32 2
  %260 = getelementptr inbounds %struct.BMVert, ptr %192, i64 0, i32 3
  %261 = fmul float %29, %219
  %262 = load float, ptr %259, align 4, !tbaa !68
  %263 = load float, ptr %260, align 4, !tbaa !68
  %264 = call float @llvm.fmuladd.f32(float %263, float %261, float %262)
  store float %264, ptr %21, align 4, !tbaa !68
  %265 = getelementptr inbounds %struct.BMVert, ptr %192, i64 0, i32 2, i64 1
  %266 = load float, ptr %265, align 4, !tbaa !68
  %267 = getelementptr inbounds %struct.BMVert, ptr %192, i64 0, i32 3, i64 1
  %268 = load float, ptr %267, align 4, !tbaa !68
  %269 = call float @llvm.fmuladd.f32(float %268, float %261, float %266)
  store float %269, ptr %183, align 4, !tbaa !68
  %270 = getelementptr inbounds %struct.BMVert, ptr %192, i64 0, i32 2, i64 2
  %271 = load float, ptr %270, align 4, !tbaa !68
  %272 = getelementptr inbounds %struct.BMVert, ptr %192, i64 0, i32 3, i64 2
  %273 = load float, ptr %272, align 4, !tbaa !68
  %274 = call float @llvm.fmuladd.f32(float %273, float %261, float %271)
  store float %274, ptr %184, align 4, !tbaa !68
  %275 = load ptr, ptr %221, align 8, !tbaa !43
  %276 = getelementptr inbounds %struct.BMVert, ptr %275, i64 0, i32 2
  %277 = fmul float %185, %219
  %278 = call float @llvm.fmuladd.f32(float %263, float %277, float %264)
  store float %278, ptr %276, align 4, !tbaa !68
  %279 = load float, ptr %267, align 4, !tbaa !68
  %280 = call float @llvm.fmuladd.f32(float %279, float %277, float %269)
  %281 = getelementptr inbounds %struct.BMVert, ptr %275, i64 0, i32 2, i64 1
  store float %280, ptr %281, align 4, !tbaa !68
  %282 = load float, ptr %272, align 4, !tbaa !68
  %283 = call float @llvm.fmuladd.f32(float %282, float %277, float %274)
  %284 = getelementptr inbounds %struct.BMVert, ptr %275, i64 0, i32 2, i64 2
  store float %283, ptr %284, align 4, !tbaa !68
  %285 = getelementptr inbounds %struct.BMVert, ptr %222, i64 0, i32 2
  %286 = fmul float %186, %219
  %287 = load float, ptr %260, align 4, !tbaa !68
  %288 = call float @llvm.fmuladd.f32(float %287, float %286, float %264)
  store float %288, ptr %285, align 4, !tbaa !68
  %289 = load float, ptr %267, align 4, !tbaa !68
  %290 = call float @llvm.fmuladd.f32(float %289, float %286, float %269)
  %291 = getelementptr inbounds %struct.BMVert, ptr %222, i64 0, i32 2, i64 1
  store float %290, ptr %291, align 4, !tbaa !68
  %292 = load float, ptr %272, align 4, !tbaa !68
  %293 = call float @llvm.fmuladd.f32(float %292, float %286, float %274)
  %294 = getelementptr inbounds %struct.BMVert, ptr %222, i64 0, i32 2, i64 2
  store float %293, ptr %294, align 4, !tbaa !68
  br label %298

295:                                              ; preds = %189
  %296 = getelementptr inbounds ptr, ptr %50, i64 %190
  store ptr null, ptr %296, align 8, !tbaa !43
  %297 = getelementptr inbounds ptr, ptr %52, i64 %190
  store ptr null, ptr %297, align 8, !tbaa !43
  br label %298

298:                                              ; preds = %224, %258, %295
  br i1 %187, label %299, label %302

299:                                              ; preds = %298
  %300 = load i8, ptr %193, align 1, !tbaa !52
  %301 = and i8 %300, -17
  store i8 %301, ptr %193, align 1, !tbaa !52
  br label %302

302:                                              ; preds = %298, %299
  %303 = add nuw nsw i64 %190, 1
  %304 = icmp eq i64 %303, %188
  br i1 %304, label %305, label %189, !llvm.loop !72

305:                                              ; preds = %302, %171
  %306 = icmp eq i8 %7, 0
  br i1 %306, label %308, label %307

307:                                              ; preds = %305
  call void @BM_mesh_elem_hflag_disable_all(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext 16, i8 noundef zeroext 0) #7
  br label %308

308:                                              ; preds = %307, %305
  %309 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !43
  %310 = sext i32 %172 to i64
  %311 = shl nsw i64 %310, 3
  %312 = call ptr %309(i64 noundef %311, ptr noundef nonnull @__func__.BM_mesh_wireframe) #7
  store i8 3, ptr %75, align 4, !tbaa !44
  store ptr @bmiter__elem_of_mesh_begin, ptr %76, align 8, !tbaa !46
  store ptr @bmiter__elem_of_mesh_step, ptr %77, align 8, !tbaa !47
  %313 = load ptr, ptr %100, align 8, !tbaa !57
  store ptr %313, ptr %19, align 8, !tbaa !49
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %19) #7
  %314 = load ptr, ptr %77, align 8, !tbaa !47
  %315 = call ptr %314(ptr noundef nonnull %19) #7
  %316 = icmp eq ptr %315, null
  br i1 %316, label %769, label %317

317:                                              ; preds = %308
  %318 = icmp eq i8 %14, 0
  %319 = getelementptr inbounds %struct.BMIter, ptr %20, i64 0, i32 4
  %320 = getelementptr inbounds %struct.BMIter, ptr %20, i64 0, i32 1
  %321 = getelementptr inbounds %struct.BMIter, ptr %20, i64 0, i32 2
  %322 = icmp eq ptr %67, null
  %323 = icmp ne i8 %6, 0
  %324 = getelementptr inbounds float, ptr %21, i64 1
  %325 = getelementptr inbounds float, ptr %21, i64 2
  %326 = fcmp une float %1, 0.000000e+00
  %327 = getelementptr inbounds ptr, ptr %22, i64 1
  %328 = getelementptr inbounds %struct.BMIter, ptr %16, i64 0, i32 4
  %329 = getelementptr inbounds %struct.BMIter, ptr %16, i64 0, i32 1
  %330 = getelementptr inbounds %struct.BMIter, ptr %16, i64 0, i32 2
  %331 = getelementptr inbounds float, ptr %17, i64 1
  %332 = getelementptr inbounds float, ptr %17, i64 2
  %333 = getelementptr inbounds float, ptr %18, i64 1
  %334 = getelementptr inbounds float, ptr %18, i64 2
  %335 = getelementptr inbounds float, ptr %17, i64 1
  %336 = getelementptr inbounds float, ptr %17, i64 2
  %337 = getelementptr inbounds float, ptr %23, i64 1
  %338 = getelementptr inbounds float, ptr %23, i64 2
  br label %339

339:                                              ; preds = %317, %764
  %340 = phi i32 [ 0, %317 ], [ %765, %764 ]
  %341 = phi ptr [ %315, %317 ], [ %767, %764 ]
  br i1 %318, label %347, label %342

342:                                              ; preds = %339
  %343 = getelementptr inbounds %struct.BMHeader, ptr %341, i64 0, i32 3
  %344 = load i8, ptr %343, align 1, !tbaa !52
  %345 = and i8 %344, 16
  %346 = icmp eq i8 %345, 0
  br i1 %346, label %764, label %347

347:                                              ; preds = %342, %339
  store i8 11, ptr %319, align 4, !tbaa !44
  store ptr @bmiter__loop_of_face_begin, ptr %320, align 8, !tbaa !46
  store ptr @bmiter__loop_of_face_step, ptr %321, align 8, !tbaa !47
  store ptr %341, ptr %20, align 8, !tbaa !49
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %20) #7
  %348 = load ptr, ptr %321, align 8, !tbaa !47
  %349 = call ptr %348(ptr noundef nonnull %20) #7
  %350 = icmp eq ptr %349, null
  br i1 %350, label %764, label %351

351:                                              ; preds = %347
  %352 = sext i32 %340 to i64
  br label %353

353:                                              ; preds = %351, %757
  %354 = phi i64 [ %352, %351 ], [ %758, %757 ]
  %355 = phi ptr [ %349, %351 ], [ %760, %757 ]
  %356 = getelementptr inbounds %struct.BMHeader, ptr %355, i64 0, i32 1
  %357 = trunc i64 %354 to i32
  store i32 %357, ptr %356, align 8, !tbaa !50
  call void @BM_loop_calc_face_tangent(ptr noundef nonnull %355, ptr noundef nonnull %21) #7
  br i1 %322, label %366, label %358

358:                                              ; preds = %353
  %359 = getelementptr inbounds %struct.BMLoop, ptr %355, i64 0, i32 1
  %360 = load ptr, ptr %359, align 8, !tbaa !60
  %361 = getelementptr inbounds %struct.BMHeader, ptr %360, i64 0, i32 1
  %362 = load i32, ptr %361, align 8, !tbaa !50
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds float, ptr %67, i64 %363
  %365 = load float, ptr %364, align 4, !tbaa !68
  br label %366

366:                                              ; preds = %358, %353
  %367 = phi float [ %365, %358 ], [ 1.000000e+00, %353 ]
  br i1 %323, label %368, label %380

368:                                              ; preds = %366
  %369 = call float @BM_loop_calc_face_angle(ptr noundef nonnull %355) #7
  %370 = fsub float 0x400921FB60000000, %369
  %371 = fmul float %370, 5.000000e-01
  %372 = fcmp olt float %371, 0x3E45798EE0000000
  br i1 %372, label %377, label %373

373:                                              ; preds = %368
  %374 = call float @cosf(float noundef %371) #7
  %375 = fdiv float 1.000000e+00, %374
  %376 = call float @llvm.fabs.f32(float %375)
  br label %377

377:                                              ; preds = %368, %373
  %378 = phi float [ %376, %373 ], [ 1.000000e+00, %368 ]
  %379 = fmul float %367, %378
  br label %380

380:                                              ; preds = %377, %366
  %381 = phi float [ %379, %377 ], [ %367, %366 ]
  %382 = getelementptr inbounds %struct.BMLoop, ptr %355, i64 0, i32 1
  %383 = load ptr, ptr %382, align 8, !tbaa !60
  %384 = getelementptr inbounds %struct.BMVert, ptr %383, i64 0, i32 2
  %385 = fmul float %30, %381
  %386 = load float, ptr %384, align 4, !tbaa !68
  %387 = load float, ptr %21, align 4, !tbaa !68
  %388 = call float @llvm.fmuladd.f32(float %387, float %385, float %386)
  store float %388, ptr %21, align 4, !tbaa !68
  %389 = getelementptr inbounds %struct.BMVert, ptr %383, i64 0, i32 2, i64 1
  %390 = load float, ptr %389, align 4, !tbaa !68
  %391 = load float, ptr %324, align 4, !tbaa !68
  %392 = call float @llvm.fmuladd.f32(float %391, float %385, float %390)
  store float %392, ptr %324, align 4, !tbaa !68
  %393 = getelementptr inbounds %struct.BMVert, ptr %383, i64 0, i32 2, i64 2
  %394 = load float, ptr %393, align 4, !tbaa !68
  %395 = load float, ptr %325, align 4, !tbaa !68
  %396 = call float @llvm.fmuladd.f32(float %395, float %385, float %394)
  store float %396, ptr %325, align 4, !tbaa !68
  br i1 %326, label %397, label %408

397:                                              ; preds = %380
  %398 = getelementptr inbounds %struct.BMVert, ptr %383, i64 0, i32 3
  %399 = fmul float %29, %367
  %400 = load float, ptr %398, align 4, !tbaa !68
  %401 = call float @llvm.fmuladd.f32(float %400, float %399, float %388)
  store float %401, ptr %21, align 4, !tbaa !68
  %402 = getelementptr inbounds %struct.BMVert, ptr %383, i64 0, i32 3, i64 1
  %403 = load float, ptr %402, align 4, !tbaa !68
  %404 = call float @llvm.fmuladd.f32(float %403, float %399, float %392)
  store float %404, ptr %324, align 4, !tbaa !68
  %405 = getelementptr inbounds %struct.BMVert, ptr %383, i64 0, i32 3, i64 2
  %406 = load float, ptr %405, align 4, !tbaa !68
  %407 = call float @llvm.fmuladd.f32(float %406, float %399, float %396)
  store float %407, ptr %325, align 4, !tbaa !68
  br label %408

408:                                              ; preds = %397, %380
  %409 = call ptr @BM_vert_create(ptr noundef nonnull %0, ptr noundef nonnull %21, ptr noundef %383, i32 noundef 0) #7
  %410 = getelementptr inbounds ptr, ptr %312, i64 %354
  store ptr %409, ptr %410, align 8, !tbaa !43
  br i1 %53, label %757, label %411

411:                                              ; preds = %408
  %412 = getelementptr inbounds %struct.BMLoop, ptr %355, i64 0, i32 2
  %413 = load ptr, ptr %412, align 8, !tbaa !62
  %414 = getelementptr inbounds %struct.BMHeader, ptr %413, i64 0, i32 3
  %415 = load i8, ptr %414, align 1, !tbaa !52
  %416 = and i8 %415, 16
  %417 = icmp eq i8 %416, 0
  br i1 %417, label %757, label %418

418:                                              ; preds = %411
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %22) #7
  %419 = load ptr, ptr %382, align 8, !tbaa !60
  store ptr %419, ptr %22, align 16, !tbaa !43
  %420 = getelementptr inbounds %struct.BMLoop, ptr %355, i64 0, i32 6
  %421 = load ptr, ptr %420, align 8, !tbaa !73
  %422 = getelementptr inbounds %struct.BMLoop, ptr %421, i64 0, i32 1
  %423 = load ptr, ptr %422, align 8, !tbaa !60
  store ptr %423, ptr %327, align 8, !tbaa !43
  br label %424

424:                                              ; preds = %418, %753
  %425 = phi i64 [ 0, %418 ], [ %754, %753 ]
  %426 = getelementptr inbounds [2 x ptr], ptr %22, i64 0, i64 %425
  %427 = load ptr, ptr %426, align 8, !tbaa !43
  %428 = getelementptr inbounds %struct.BMHeader, ptr %427, i64 0, i32 3
  %429 = load i8, ptr %428, align 1, !tbaa !52
  %430 = and i8 %429, 16
  %431 = icmp eq i8 %430, 0
  br i1 %431, label %432, label %753

432:                                              ; preds = %424
  %433 = getelementptr inbounds %struct.BMHeader, ptr %427, i64 0, i32 1
  %434 = load i32, ptr %433, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #7
  %435 = or disjoint i8 %429, 16
  store i8 %435, ptr %428, align 1, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %16) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #7
  store i8 4, ptr %328, align 4, !tbaa !44
  store ptr @bmiter__edge_of_vert_begin, ptr %329, align 8, !tbaa !46
  store ptr @bmiter__edge_of_vert_step, ptr %330, align 8, !tbaa !47
  store ptr %427, ptr %16, align 8, !tbaa !49
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %16) #7
  %436 = load ptr, ptr %330, align 8, !tbaa !47
  %437 = call ptr %436(ptr noundef nonnull %16) #7
  %438 = icmp eq ptr %437, null
  br i1 %438, label %453, label %439

439:                                              ; preds = %432, %448
  %440 = phi ptr [ %451, %448 ], [ %437, %432 ]
  %441 = phi ptr [ %449, %448 ], [ null, %432 ]
  %442 = getelementptr inbounds %struct.BMHeader, ptr %440, i64 0, i32 3
  %443 = load i8, ptr %442, align 1, !tbaa !52
  %444 = and i8 %443, 16
  %445 = icmp eq i8 %444, 0
  br i1 %445, label %448, label %446

446:                                              ; preds = %439
  %447 = icmp eq ptr %441, null
  br i1 %447, label %448, label %453

448:                                              ; preds = %446, %439
  %449 = phi ptr [ %441, %439 ], [ %440, %446 ]
  %450 = load ptr, ptr %330, align 8, !tbaa !47
  %451 = call ptr %450(ptr noundef nonnull %16) #7
  %452 = icmp eq ptr %451, null
  br i1 %452, label %453, label %439, !llvm.loop !74

453:                                              ; preds = %448, %446, %432
  %454 = phi ptr [ null, %432 ], [ %449, %448 ], [ %441, %446 ]
  %455 = phi ptr [ null, %432 ], [ null, %448 ], [ %440, %446 ]
  %456 = icmp ne ptr %454, null
  %457 = icmp ne ptr %455, null
  %458 = and i1 %456, %457
  %459 = getelementptr inbounds %struct.BMEdge, ptr %454, i64 0, i32 4
  %460 = load ptr, ptr %459, align 8, !tbaa !75
  br i1 %458, label %461, label %602

461:                                              ; preds = %453, %469
  %462 = phi ptr [ %471, %469 ], [ %460, %453 ]
  %463 = getelementptr inbounds %struct.BMLoop, ptr %462, i64 0, i32 3
  %464 = load ptr, ptr %463, align 8, !tbaa !64
  %465 = getelementptr inbounds %struct.BMHeader, ptr %464, i64 0, i32 3
  %466 = load i8, ptr %465, align 1, !tbaa !52
  %467 = and i8 %466, 16
  %468 = icmp eq i8 %467, 0
  br i1 %468, label %469, label %473

469:                                              ; preds = %461
  %470 = getelementptr inbounds %struct.BMLoop, ptr %462, i64 0, i32 4
  %471 = load ptr, ptr %470, align 8, !tbaa !63
  %472 = icmp eq ptr %471, %460
  br i1 %472, label %473, label %461, !llvm.loop !78

473:                                              ; preds = %469, %461
  %474 = phi ptr [ %462, %461 ], [ null, %469 ]
  %475 = getelementptr inbounds %struct.BMEdge, ptr %455, i64 0, i32 4
  %476 = load ptr, ptr %475, align 8, !tbaa !75
  br label %477

477:                                              ; preds = %485, %473
  %478 = phi ptr [ %476, %473 ], [ %487, %485 ]
  %479 = getelementptr inbounds %struct.BMLoop, ptr %478, i64 0, i32 3
  %480 = load ptr, ptr %479, align 8, !tbaa !64
  %481 = getelementptr inbounds %struct.BMHeader, ptr %480, i64 0, i32 3
  %482 = load i8, ptr %481, align 1, !tbaa !52
  %483 = and i8 %482, 16
  %484 = icmp eq i8 %483, 0
  br i1 %484, label %485, label %489

485:                                              ; preds = %477
  %486 = getelementptr inbounds %struct.BMLoop, ptr %478, i64 0, i32 4
  %487 = load ptr, ptr %486, align 8, !tbaa !63
  %488 = icmp eq ptr %487, %476
  br i1 %488, label %489, label %477, !llvm.loop !78

489:                                              ; preds = %485, %477
  %490 = phi ptr [ %478, %477 ], [ null, %485 ]
  %491 = getelementptr inbounds %struct.BMLoop, ptr %474, i64 0, i32 3
  %492 = load ptr, ptr %491, align 8, !tbaa !64
  %493 = getelementptr inbounds %struct.BMFace, ptr %492, i64 0, i32 4
  %494 = getelementptr inbounds %struct.BMLoop, ptr %490, i64 0, i32 3
  %495 = load ptr, ptr %494, align 8, !tbaa !64
  %496 = getelementptr inbounds %struct.BMFace, ptr %495, i64 0, i32 4
  %497 = load float, ptr %493, align 4, !tbaa !68
  %498 = load float, ptr %496, align 4, !tbaa !68
  %499 = fadd float %497, %498
  %500 = getelementptr inbounds %struct.BMFace, ptr %492, i64 0, i32 4, i64 1
  %501 = load float, ptr %500, align 4, !tbaa !68
  %502 = getelementptr inbounds %struct.BMFace, ptr %495, i64 0, i32 4, i64 1
  %503 = load float, ptr %502, align 4, !tbaa !68
  %504 = fadd float %501, %503
  %505 = getelementptr inbounds %struct.BMFace, ptr %492, i64 0, i32 4, i64 2
  %506 = load float, ptr %505, align 4, !tbaa !68
  %507 = getelementptr inbounds %struct.BMFace, ptr %495, i64 0, i32 4, i64 2
  %508 = load float, ptr %507, align 4, !tbaa !68
  %509 = fadd float %506, %508
  %510 = getelementptr inbounds %struct.BMEdge, ptr %454, i64 0, i32 2
  %511 = load ptr, ptr %510, align 8, !tbaa !79
  %512 = icmp eq ptr %511, %427
  %513 = getelementptr inbounds %struct.BMEdge, ptr %454, i64 0, i32 3
  %514 = load ptr, ptr %513, align 8, !tbaa !80
  %515 = icmp eq ptr %514, %427
  %516 = select i1 %515, ptr %511, ptr null
  %517 = select i1 %512, ptr %514, ptr %516
  %518 = getelementptr inbounds %struct.BMEdge, ptr %455, i64 0, i32 2
  %519 = load ptr, ptr %518, align 8, !tbaa !79
  %520 = icmp eq ptr %519, %427
  %521 = getelementptr inbounds %struct.BMEdge, ptr %455, i64 0, i32 3
  %522 = load ptr, ptr %521, align 8, !tbaa !80
  %523 = icmp eq ptr %522, %427
  %524 = select i1 %523, ptr %519, ptr null
  %525 = select i1 %520, ptr %522, ptr %524
  %526 = getelementptr inbounds %struct.BMVert, ptr %427, i64 0, i32 2
  %527 = getelementptr inbounds %struct.BMVert, ptr %517, i64 0, i32 2
  %528 = load float, ptr %526, align 4, !tbaa !68
  %529 = load float, ptr %527, align 4, !tbaa !68
  %530 = fsub float %528, %529
  store float %530, ptr %17, align 4, !tbaa !68
  %531 = getelementptr inbounds %struct.BMVert, ptr %427, i64 0, i32 2, i64 1
  %532 = load float, ptr %531, align 4, !tbaa !68
  %533 = getelementptr inbounds %struct.BMVert, ptr %517, i64 0, i32 2, i64 1
  %534 = load float, ptr %533, align 4, !tbaa !68
  %535 = fsub float %532, %534
  store float %535, ptr %331, align 4, !tbaa !68
  %536 = getelementptr inbounds %struct.BMVert, ptr %427, i64 0, i32 2, i64 2
  %537 = load float, ptr %536, align 4, !tbaa !68
  %538 = getelementptr inbounds %struct.BMVert, ptr %517, i64 0, i32 2, i64 2
  %539 = load float, ptr %538, align 4, !tbaa !68
  %540 = fsub float %537, %539
  store float %540, ptr %332, align 4, !tbaa !68
  %541 = getelementptr inbounds %struct.BMVert, ptr %525, i64 0, i32 2
  %542 = load float, ptr %541, align 4, !tbaa !68
  %543 = fsub float %542, %528
  store float %543, ptr %18, align 4, !tbaa !68
  %544 = getelementptr inbounds %struct.BMVert, ptr %525, i64 0, i32 2, i64 1
  %545 = load float, ptr %544, align 4, !tbaa !68
  %546 = fsub float %545, %532
  store float %546, ptr %333, align 4, !tbaa !68
  %547 = getelementptr inbounds %struct.BMVert, ptr %525, i64 0, i32 2, i64 2
  %548 = load float, ptr %547, align 4, !tbaa !68
  %549 = fsub float %548, %537
  store float %549, ptr %334, align 4, !tbaa !68
  %550 = fmul float %535, %535
  %551 = call float @llvm.fmuladd.f32(float %530, float %530, float %550)
  %552 = call float @llvm.fmuladd.f32(float %540, float %540, float %551)
  %553 = fcmp ogt float %552, 0x38AA95A5C0000000
  br i1 %553, label %554, label %563

554:                                              ; preds = %489
  %555 = call float @sqrtf(float noundef %552) #7
  %556 = fdiv float 1.000000e+00, %555
  %557 = load float, ptr %17, align 4, !tbaa !68
  %558 = fmul float %557, %556
  store float %558, ptr %17, align 4, !tbaa !68
  %559 = load float, ptr %331, align 4, !tbaa !68
  %560 = fmul float %556, %559
  store float %560, ptr %331, align 4, !tbaa !68
  %561 = load float, ptr %332, align 4, !tbaa !68
  %562 = fmul float %556, %561
  br label %564

563:                                              ; preds = %489
  store float 0.000000e+00, ptr %17, align 4, !tbaa !68
  store float 0.000000e+00, ptr %331, align 4, !tbaa !68
  br label %564

564:                                              ; preds = %563, %554
  %565 = phi float [ 0.000000e+00, %563 ], [ %562, %554 ]
  store float %565, ptr %332, align 4, !tbaa !68
  %566 = load float, ptr %18, align 4, !tbaa !68
  %567 = load float, ptr %333, align 4, !tbaa !68
  %568 = fmul float %567, %567
  %569 = call float @llvm.fmuladd.f32(float %566, float %566, float %568)
  %570 = load float, ptr %334, align 4, !tbaa !68
  %571 = call float @llvm.fmuladd.f32(float %570, float %570, float %569)
  %572 = fcmp ogt float %571, 0x38AA95A5C0000000
  br i1 %572, label %573, label %582

573:                                              ; preds = %564
  %574 = call float @sqrtf(float noundef %571) #7
  %575 = fdiv float 1.000000e+00, %574
  %576 = load float, ptr %18, align 4, !tbaa !68
  %577 = fmul float %576, %575
  store float %577, ptr %18, align 4, !tbaa !68
  %578 = load float, ptr %333, align 4, !tbaa !68
  %579 = fmul float %575, %578
  store float %579, ptr %333, align 4, !tbaa !68
  %580 = load float, ptr %334, align 4, !tbaa !68
  %581 = fmul float %575, %580
  br label %583

582:                                              ; preds = %564
  store float 0.000000e+00, ptr %18, align 4, !tbaa !68
  store float 0.000000e+00, ptr %333, align 4, !tbaa !68
  br label %583

583:                                              ; preds = %582, %573
  %584 = phi float [ 0.000000e+00, %582 ], [ %581, %573 ]
  store float %584, ptr %334, align 4, !tbaa !68
  %585 = load float, ptr %17, align 4, !tbaa !68
  %586 = load float, ptr %18, align 4, !tbaa !68
  %587 = fadd float %585, %586
  %588 = load float, ptr %331, align 4, !tbaa !68
  %589 = load float, ptr %333, align 4, !tbaa !68
  %590 = fadd float %588, %589
  %591 = load float, ptr %332, align 4, !tbaa !68
  %592 = fadd float %584, %591
  call void @BM_edge_calc_face_tangent(ptr noundef nonnull %454, ptr noundef %474, ptr noundef nonnull %17) #7
  call void @BM_edge_calc_face_tangent(ptr noundef nonnull %455, ptr noundef %490, ptr noundef nonnull %18) #7
  %593 = load float, ptr %18, align 4, !tbaa !68
  %594 = load float, ptr %17, align 4, !tbaa !68
  %595 = fadd float %593, %594
  store float %595, ptr %17, align 4, !tbaa !68
  %596 = load float, ptr %333, align 4, !tbaa !68
  %597 = load float, ptr %331, align 4, !tbaa !68
  %598 = fadd float %596, %597
  store float %598, ptr %331, align 4, !tbaa !68
  %599 = load float, ptr %334, align 4, !tbaa !68
  %600 = load float, ptr %332, align 4, !tbaa !68
  %601 = fadd float %599, %600
  store float %601, ptr %332, align 4, !tbaa !68
  br label %652

602:                                              ; preds = %453
  %603 = getelementptr inbounds %struct.BMLoop, ptr %460, i64 0, i32 3
  %604 = load ptr, ptr %603, align 8, !tbaa !64
  %605 = getelementptr inbounds %struct.BMHeader, ptr %604, i64 0, i32 3
  %606 = load i8, ptr %605, align 1, !tbaa !52
  %607 = and i8 %606, 16
  %608 = icmp eq i8 %607, 0
  br i1 %608, label %609, label %620

609:                                              ; preds = %602, %609
  %610 = phi ptr [ %612, %609 ], [ %460, %602 ]
  %611 = getelementptr inbounds %struct.BMLoop, ptr %610, i64 0, i32 4
  %612 = load ptr, ptr %611, align 8, !tbaa !63
  %613 = icmp ne ptr %612, %460
  call void @llvm.assume(i1 %613)
  %614 = getelementptr inbounds %struct.BMLoop, ptr %612, i64 0, i32 3
  %615 = load ptr, ptr %614, align 8, !tbaa !64
  %616 = getelementptr inbounds %struct.BMHeader, ptr %615, i64 0, i32 3
  %617 = load i8, ptr %616, align 1, !tbaa !52
  %618 = and i8 %617, 16
  %619 = icmp eq i8 %618, 0
  br i1 %619, label %609, label %620

620:                                              ; preds = %609, %602
  %621 = phi ptr [ %460, %602 ], [ %612, %609 ]
  %622 = phi ptr [ %604, %602 ], [ %615, %609 ]
  %623 = getelementptr inbounds %struct.BMFace, ptr %622, i64 0, i32 4
  %624 = load float, ptr %623, align 4, !tbaa !68
  %625 = getelementptr inbounds %struct.BMFace, ptr %622, i64 0, i32 4, i64 1
  %626 = load float, ptr %625, align 4, !tbaa !68
  %627 = getelementptr inbounds %struct.BMFace, ptr %622, i64 0, i32 4, i64 2
  %628 = load float, ptr %627, align 4, !tbaa !68
  %629 = getelementptr inbounds %struct.BMEdge, ptr %454, i64 0, i32 2
  %630 = load ptr, ptr %629, align 8, !tbaa !79
  %631 = icmp eq ptr %630, %427
  %632 = getelementptr inbounds %struct.BMEdge, ptr %454, i64 0, i32 3
  %633 = load ptr, ptr %632, align 8, !tbaa !80
  %634 = icmp eq ptr %633, %427
  %635 = select i1 %634, ptr %630, ptr null
  %636 = select i1 %631, ptr %633, ptr %635
  %637 = getelementptr inbounds %struct.BMVert, ptr %427, i64 0, i32 2
  %638 = getelementptr inbounds %struct.BMVert, ptr %636, i64 0, i32 2
  %639 = load float, ptr %637, align 4, !tbaa !68
  %640 = load float, ptr %638, align 4, !tbaa !68
  %641 = fsub float %639, %640
  %642 = getelementptr inbounds %struct.BMVert, ptr %427, i64 0, i32 2, i64 1
  %643 = load float, ptr %642, align 4, !tbaa !68
  %644 = getelementptr inbounds %struct.BMVert, ptr %636, i64 0, i32 2, i64 1
  %645 = load float, ptr %644, align 4, !tbaa !68
  %646 = fsub float %643, %645
  %647 = getelementptr inbounds %struct.BMVert, ptr %427, i64 0, i32 2, i64 2
  %648 = load float, ptr %647, align 4, !tbaa !68
  %649 = getelementptr inbounds %struct.BMVert, ptr %636, i64 0, i32 2, i64 2
  %650 = load float, ptr %649, align 4, !tbaa !68
  %651 = fsub float %648, %650
  call void @BM_edge_calc_face_tangent(ptr noundef %454, ptr noundef %621, ptr noundef nonnull %17) #7
  br label %652

652:                                              ; preds = %620, %583
  %653 = phi float [ %509, %583 ], [ %628, %620 ]
  %654 = phi float [ %504, %583 ], [ %626, %620 ]
  %655 = phi float [ %499, %583 ], [ %624, %620 ]
  %656 = phi float [ %592, %583 ], [ %651, %620 ]
  %657 = phi float [ %590, %583 ], [ %646, %620 ]
  %658 = phi float [ %587, %583 ], [ %641, %620 ]
  %659 = phi ptr [ %517, %583 ], [ null, %620 ]
  %660 = phi ptr [ %525, %583 ], [ null, %620 ]
  %661 = fneg float %656
  %662 = fmul float %654, %661
  %663 = call float @llvm.fmuladd.f32(float %657, float %653, float %662)
  store float %663, ptr %21, align 4, !tbaa !68
  %664 = fneg float %658
  %665 = fmul float %653, %664
  %666 = call float @llvm.fmuladd.f32(float %656, float %655, float %665)
  store float %666, ptr %324, align 4, !tbaa !68
  %667 = fneg float %657
  %668 = fmul float %655, %667
  %669 = call float @llvm.fmuladd.f32(float %658, float %654, float %668)
  store float %669, ptr %325, align 4, !tbaa !68
  %670 = fmul float %666, %666
  %671 = call float @llvm.fmuladd.f32(float %663, float %663, float %670)
  %672 = call float @llvm.fmuladd.f32(float %669, float %669, float %671)
  %673 = fcmp ogt float %672, 0x38AA95A5C0000000
  br i1 %673, label %674, label %683

674:                                              ; preds = %652
  %675 = call float @sqrtf(float noundef %672) #7
  %676 = fdiv float 1.000000e+00, %675
  %677 = load float, ptr %21, align 4, !tbaa !68
  %678 = fmul float %677, %676
  store float %678, ptr %21, align 4, !tbaa !68
  %679 = load float, ptr %324, align 4, !tbaa !68
  %680 = fmul float %676, %679
  store float %680, ptr %324, align 4, !tbaa !68
  %681 = load float, ptr %325, align 4, !tbaa !68
  %682 = fmul float %676, %681
  br label %684

683:                                              ; preds = %652
  store float 0.000000e+00, ptr %21, align 4, !tbaa !68
  store float 0.000000e+00, ptr %324, align 4, !tbaa !68
  br label %684

684:                                              ; preds = %683, %674
  %685 = phi float [ 0.000000e+00, %683 ], [ %682, %674 ]
  store float %685, ptr %325, align 4, !tbaa !68
  %686 = load float, ptr %21, align 4, !tbaa !68
  %687 = load float, ptr %17, align 4, !tbaa !68
  %688 = load float, ptr %324, align 4, !tbaa !68
  %689 = load float, ptr %335, align 4, !tbaa !68
  %690 = fmul float %688, %689
  %691 = call float @llvm.fmuladd.f32(float %686, float %687, float %690)
  %692 = load float, ptr %336, align 4, !tbaa !68
  %693 = call float @llvm.fmuladd.f32(float %685, float %692, float %691)
  %694 = fcmp ogt float %693, 0.000000e+00
  br i1 %694, label %695, label %699

695:                                              ; preds = %684
  %696 = fneg float %686
  store float %696, ptr %21, align 4, !tbaa !68
  %697 = fneg float %688
  store float %697, ptr %324, align 4, !tbaa !68
  %698 = fneg float %685
  store float %698, ptr %325, align 4, !tbaa !68
  br label %699

699:                                              ; preds = %684, %695
  store float %655, ptr %23, align 4, !tbaa !68
  store float %654, ptr %337, align 4, !tbaa !68
  store float %653, ptr %338, align 4, !tbaa !68
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %16) #7
  br i1 %322, label %704, label %700

700:                                              ; preds = %699
  %701 = sext i32 %434 to i64
  %702 = getelementptr inbounds float, ptr %67, i64 %701
  %703 = load float, ptr %702, align 4, !tbaa !68
  br label %704

704:                                              ; preds = %700, %699
  %705 = phi float [ %703, %700 ], [ 1.000000e+00, %699 ]
  %706 = icmp ne ptr %659, null
  %707 = and i1 %323, %706
  br i1 %707, label %708, label %723

708:                                              ; preds = %704
  %709 = getelementptr inbounds %struct.BMVert, ptr %659, i64 0, i32 2
  %710 = getelementptr inbounds %struct.BMVert, ptr %427, i64 0, i32 2
  %711 = getelementptr inbounds %struct.BMVert, ptr %660, i64 0, i32 2
  %712 = call float @angle_on_axis_v3v3v3_v3(ptr noundef nonnull %709, ptr noundef nonnull %710, ptr noundef nonnull %711, ptr noundef nonnull %23) #7
  %713 = fsub float 0x400921FB60000000, %712
  %714 = fmul float %713, 5.000000e-01
  %715 = fcmp olt float %714, 0x3E45798EE0000000
  br i1 %715, label %720, label %716

716:                                              ; preds = %708
  %717 = call float @cosf(float noundef %714) #7
  %718 = fdiv float 1.000000e+00, %717
  %719 = call float @llvm.fabs.f32(float %718)
  br label %720

720:                                              ; preds = %708, %716
  %721 = phi float [ %719, %716 ], [ 1.000000e+00, %708 ]
  %722 = fmul float %705, %721
  br label %723

723:                                              ; preds = %720, %704
  %724 = phi float [ %722, %720 ], [ %705, %704 ]
  %725 = getelementptr inbounds %struct.BMVert, ptr %427, i64 0, i32 2
  %726 = fmul float %30, %724
  %727 = load float, ptr %725, align 4, !tbaa !68
  %728 = load float, ptr %21, align 4, !tbaa !68
  %729 = call float @llvm.fmuladd.f32(float %728, float %726, float %727)
  store float %729, ptr %21, align 4, !tbaa !68
  %730 = getelementptr inbounds %struct.BMVert, ptr %427, i64 0, i32 2, i64 1
  %731 = load float, ptr %730, align 4, !tbaa !68
  %732 = load float, ptr %324, align 4, !tbaa !68
  %733 = call float @llvm.fmuladd.f32(float %732, float %726, float %731)
  store float %733, ptr %324, align 4, !tbaa !68
  %734 = getelementptr inbounds %struct.BMVert, ptr %427, i64 0, i32 2, i64 2
  %735 = load float, ptr %734, align 4, !tbaa !68
  %736 = load float, ptr %325, align 4, !tbaa !68
  %737 = call float @llvm.fmuladd.f32(float %736, float %726, float %735)
  store float %737, ptr %325, align 4, !tbaa !68
  br i1 %326, label %738, label %749

738:                                              ; preds = %723
  %739 = getelementptr inbounds %struct.BMVert, ptr %427, i64 0, i32 3
  %740 = fmul float %29, %705
  %741 = load float, ptr %739, align 4, !tbaa !68
  %742 = call float @llvm.fmuladd.f32(float %741, float %740, float %729)
  store float %742, ptr %21, align 4, !tbaa !68
  %743 = getelementptr inbounds %struct.BMVert, ptr %427, i64 0, i32 3, i64 1
  %744 = load float, ptr %743, align 4, !tbaa !68
  %745 = call float @llvm.fmuladd.f32(float %744, float %740, float %733)
  store float %745, ptr %324, align 4, !tbaa !68
  %746 = getelementptr inbounds %struct.BMVert, ptr %427, i64 0, i32 3, i64 2
  %747 = load float, ptr %746, align 4, !tbaa !68
  %748 = call float @llvm.fmuladd.f32(float %747, float %740, float %737)
  store float %748, ptr %325, align 4, !tbaa !68
  br label %749

749:                                              ; preds = %738, %723
  %750 = call ptr @BM_vert_create(ptr noundef nonnull %0, ptr noundef nonnull %21, ptr noundef %427, i32 noundef 0) #7
  %751 = sext i32 %434 to i64
  %752 = getelementptr inbounds ptr, ptr %58, i64 %751
  store ptr %750, ptr %752, align 8, !tbaa !43
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #7
  br label %753

753:                                              ; preds = %749, %424
  %754 = add nuw nsw i64 %425, 1
  %755 = icmp eq i64 %425, 0
  br i1 %755, label %424, label %756, !llvm.loop !81

756:                                              ; preds = %753
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %22) #7
  br label %757

757:                                              ; preds = %411, %756, %408
  %758 = add i64 %354, 1
  %759 = load ptr, ptr %321, align 8, !tbaa !47
  %760 = call ptr %759(ptr noundef nonnull %20) #7
  %761 = icmp eq ptr %760, null
  br i1 %761, label %762, label %353, !llvm.loop !82

762:                                              ; preds = %757
  %763 = trunc i64 %758 to i32
  br label %764

764:                                              ; preds = %762, %347, %342
  %765 = phi i32 [ %340, %342 ], [ %340, %347 ], [ %763, %762 ]
  %766 = load ptr, ptr %77, align 8, !tbaa !47
  %767 = call ptr %766(ptr noundef nonnull %19) #7
  %768 = icmp eq ptr %767, null
  br i1 %768, label %769, label %339, !llvm.loop !83

769:                                              ; preds = %764, %308
  %770 = load i8, ptr %97, align 4, !tbaa !56
  %771 = or i8 %770, 4
  store i8 %771, ptr %97, align 4, !tbaa !56
  store i8 3, ptr %75, align 4, !tbaa !44
  store ptr @bmiter__elem_of_mesh_begin, ptr %76, align 8, !tbaa !46
  store ptr @bmiter__elem_of_mesh_step, ptr %77, align 8, !tbaa !47
  %772 = load ptr, ptr %100, align 8, !tbaa !57
  store ptr %772, ptr %19, align 8, !tbaa !49
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %19) #7
  %773 = load ptr, ptr %77, align 8, !tbaa !47
  %774 = call ptr %773(ptr noundef nonnull %19) #7
  %775 = icmp eq ptr %774, null
  br i1 %775, label %983, label %776

776:                                              ; preds = %769
  %777 = icmp eq i8 %14, 0
  %778 = getelementptr inbounds %struct.BMIter, ptr %20, i64 0, i32 4
  %779 = getelementptr inbounds %struct.BMIter, ptr %20, i64 0, i32 1
  %780 = getelementptr inbounds %struct.BMIter, ptr %20, i64 0, i32 2
  %781 = icmp eq i16 %12, 0
  %782 = sext i16 %12 to i32
  %783 = sext i16 %13 to i32
  %784 = sext i16 %12 to i32
  %785 = sext i16 %13 to i32
  %786 = sext i16 %12 to i32
  %787 = sext i16 %13 to i32
  %788 = sext i16 %12 to i32
  %789 = sext i16 %13 to i32
  %790 = icmp eq i8 %8, 0
  %791 = sext i32 %74 to i64
  %792 = icmp eq i8 %8, 0
  %793 = sext i32 %74 to i64
  br label %794

794:                                              ; preds = %776, %979
  %795 = phi ptr [ %774, %776 ], [ %981, %979 ]
  %796 = getelementptr inbounds %struct.BMHeader, ptr %795, i64 0, i32 1
  %797 = load i32, ptr %796, align 8, !tbaa !50
  %798 = icmp eq i32 %797, -1
  br i1 %798, label %979, label %799

799:                                              ; preds = %794
  br i1 %777, label %805, label %800

800:                                              ; preds = %799
  %801 = getelementptr inbounds %struct.BMHeader, ptr %795, i64 0, i32 3
  %802 = load i8, ptr %801, align 1, !tbaa !52
  %803 = and i8 %802, 16
  %804 = icmp eq i8 %803, 0
  br i1 %804, label %979, label %805

805:                                              ; preds = %800, %799
  %806 = getelementptr inbounds %struct.BMHeader, ptr %795, i64 0, i32 3
  %807 = load i8, ptr %806, align 1, !tbaa !52
  %808 = and i8 %807, -17
  store i8 %808, ptr %806, align 1, !tbaa !52
  store i8 11, ptr %778, align 4, !tbaa !44
  store ptr @bmiter__loop_of_face_begin, ptr %779, align 8, !tbaa !46
  store ptr @bmiter__loop_of_face_step, ptr %780, align 8, !tbaa !47
  store ptr %795, ptr %20, align 8, !tbaa !49
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %20) #7
  %809 = load ptr, ptr %780, align 8, !tbaa !47
  %810 = call ptr %809(ptr noundef nonnull %20) #7
  %811 = icmp eq ptr %810, null
  br i1 %811, label %979, label %812

812:                                              ; preds = %805, %975
  %813 = phi ptr [ %977, %975 ], [ %810, %805 ]
  %814 = getelementptr inbounds %struct.BMLoop, ptr %813, i64 0, i32 6
  %815 = load ptr, ptr %814, align 8, !tbaa !73
  %816 = getelementptr inbounds %struct.BMHeader, ptr %813, i64 0, i32 1
  %817 = load i32, ptr %816, align 8, !tbaa !50
  %818 = sext i32 %817 to i64
  %819 = getelementptr inbounds ptr, ptr %312, i64 %818
  %820 = load ptr, ptr %819, align 8, !tbaa !43
  %821 = getelementptr inbounds %struct.BMHeader, ptr %815, i64 0, i32 1
  %822 = load i32, ptr %821, align 8, !tbaa !50
  %823 = sext i32 %822 to i64
  %824 = getelementptr inbounds ptr, ptr %312, i64 %823
  %825 = load ptr, ptr %824, align 8, !tbaa !43
  %826 = getelementptr inbounds %struct.BMLoop, ptr %813, i64 0, i32 1
  %827 = load ptr, ptr %826, align 8, !tbaa !60
  %828 = getelementptr inbounds %struct.BMLoop, ptr %815, i64 0, i32 1
  %829 = load ptr, ptr %828, align 8, !tbaa !60
  %830 = getelementptr inbounds %struct.BMHeader, ptr %827, i64 0, i32 1
  %831 = load i32, ptr %830, align 8, !tbaa !50
  %832 = getelementptr inbounds %struct.BMHeader, ptr %829, i64 0, i32 1
  %833 = load i32, ptr %832, align 8, !tbaa !50
  %834 = sext i32 %831 to i64
  %835 = getelementptr inbounds ptr, ptr %50, i64 %834
  %836 = load ptr, ptr %835, align 8, !tbaa !43
  %837 = sext i32 %833 to i64
  %838 = getelementptr inbounds ptr, ptr %50, i64 %837
  %839 = load ptr, ptr %838, align 8, !tbaa !43
  %840 = getelementptr inbounds ptr, ptr %52, i64 %834
  %841 = load ptr, ptr %840, align 8, !tbaa !43
  %842 = getelementptr inbounds ptr, ptr %52, i64 %837
  %843 = load ptr, ptr %842, align 8, !tbaa !43
  %844 = call ptr @BM_face_create_quad_tri(ptr noundef nonnull %0, ptr noundef %820, ptr noundef %825, ptr noundef %839, ptr noundef %836, ptr noundef nonnull %795, i32 noundef 0) #7
  br i1 %781, label %854, label %845

845:                                              ; preds = %812
  %846 = getelementptr inbounds %struct.BMFace, ptr %844, i64 0, i32 5
  %847 = load i16, ptr %846, align 8, !tbaa !84
  %848 = sext i16 %847 to i32
  %849 = add nsw i32 %848, %782
  %850 = icmp slt i32 %849, 0
  %851 = call i32 @llvm.smin.i32(i32 %849, i32 %783)
  %852 = trunc i32 %851 to i16
  %853 = select i1 %850, i16 0, i16 %852
  store i16 %853, ptr %846, align 8, !tbaa !84
  br label %854

854:                                              ; preds = %845, %812
  %855 = getelementptr inbounds %struct.BMHeader, ptr %844, i64 0, i32 3
  %856 = load i8, ptr %855, align 1, !tbaa !52
  %857 = or i8 %856, 16
  store i8 %857, ptr %855, align 1, !tbaa !52
  %858 = getelementptr inbounds %struct.BMFace, ptr %844, i64 0, i32 2
  %859 = load ptr, ptr %858, align 8, !tbaa !85
  call void @BM_elem_attrs_copy(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull %813, ptr noundef %859) #7
  %860 = getelementptr inbounds %struct.BMLoop, ptr %859, i64 0, i32 7
  %861 = load ptr, ptr %860, align 8, !tbaa !86
  call void @BM_elem_attrs_copy(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull %813, ptr noundef %861) #7
  %862 = getelementptr inbounds %struct.BMLoop, ptr %859, i64 0, i32 6
  %863 = load ptr, ptr %862, align 8, !tbaa !73
  call void @BM_elem_attrs_copy(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef %815, ptr noundef %863) #7
  %864 = load ptr, ptr %862, align 8, !tbaa !73
  %865 = getelementptr inbounds %struct.BMLoop, ptr %864, i64 0, i32 6
  %866 = load ptr, ptr %865, align 8, !tbaa !73
  call void @BM_elem_attrs_copy(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef %815, ptr noundef %866) #7
  %867 = call ptr @BM_face_create_quad_tri(ptr noundef nonnull %0, ptr noundef %825, ptr noundef %820, ptr noundef %841, ptr noundef %843, ptr noundef nonnull %795, i32 noundef 0) #7
  br i1 %781, label %877, label %868

868:                                              ; preds = %854
  %869 = getelementptr inbounds %struct.BMFace, ptr %867, i64 0, i32 5
  %870 = load i16, ptr %869, align 8, !tbaa !84
  %871 = sext i16 %870 to i32
  %872 = add nsw i32 %871, %784
  %873 = icmp slt i32 %872, 0
  %874 = call i32 @llvm.smin.i32(i32 %872, i32 %785)
  %875 = trunc i32 %874 to i16
  %876 = select i1 %873, i16 0, i16 %875
  store i16 %876, ptr %869, align 8, !tbaa !84
  br label %877

877:                                              ; preds = %868, %854
  %878 = getelementptr inbounds %struct.BMHeader, ptr %867, i64 0, i32 3
  %879 = load i8, ptr %878, align 1, !tbaa !52
  %880 = or i8 %879, 16
  store i8 %880, ptr %878, align 1, !tbaa !52
  %881 = getelementptr inbounds %struct.BMFace, ptr %867, i64 0, i32 2
  %882 = load ptr, ptr %881, align 8, !tbaa !85
  call void @BM_elem_attrs_copy(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef %815, ptr noundef %882) #7
  %883 = getelementptr inbounds %struct.BMLoop, ptr %882, i64 0, i32 7
  %884 = load ptr, ptr %883, align 8, !tbaa !86
  call void @BM_elem_attrs_copy(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef %815, ptr noundef %884) #7
  %885 = getelementptr inbounds %struct.BMLoop, ptr %882, i64 0, i32 6
  %886 = load ptr, ptr %885, align 8, !tbaa !73
  call void @BM_elem_attrs_copy(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull %813, ptr noundef %886) #7
  %887 = load ptr, ptr %885, align 8, !tbaa !73
  %888 = getelementptr inbounds %struct.BMLoop, ptr %887, i64 0, i32 6
  %889 = load ptr, ptr %888, align 8, !tbaa !73
  call void @BM_elem_attrs_copy(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull %813, ptr noundef %889) #7
  br i1 %53, label %961, label %890

890:                                              ; preds = %877
  %891 = getelementptr inbounds %struct.BMLoop, ptr %813, i64 0, i32 2
  %892 = load ptr, ptr %891, align 8, !tbaa !62
  %893 = getelementptr inbounds %struct.BMHeader, ptr %892, i64 0, i32 3
  %894 = load i8, ptr %893, align 1, !tbaa !52
  %895 = and i8 %894, 16
  %896 = icmp eq i8 %895, 0
  br i1 %896, label %961, label %897

897:                                              ; preds = %890
  %898 = getelementptr inbounds ptr, ptr %58, i64 %834
  %899 = load ptr, ptr %898, align 8, !tbaa !43
  %900 = getelementptr inbounds ptr, ptr %58, i64 %837
  %901 = load ptr, ptr %900, align 8, !tbaa !43
  %902 = call ptr @BM_face_create_quad_tri(ptr noundef nonnull %0, ptr noundef %901, ptr noundef %899, ptr noundef %836, ptr noundef %839, ptr noundef nonnull %795, i32 noundef 0) #7
  br i1 %781, label %912, label %903

903:                                              ; preds = %897
  %904 = getelementptr inbounds %struct.BMFace, ptr %902, i64 0, i32 5
  %905 = load i16, ptr %904, align 8, !tbaa !84
  %906 = sext i16 %905 to i32
  %907 = add nsw i32 %906, %786
  %908 = icmp slt i32 %907, 0
  %909 = call i32 @llvm.smin.i32(i32 %907, i32 %787)
  %910 = trunc i32 %909 to i16
  %911 = select i1 %908, i16 0, i16 %910
  store i16 %911, ptr %904, align 8, !tbaa !84
  br label %912

912:                                              ; preds = %903, %897
  %913 = getelementptr inbounds %struct.BMHeader, ptr %902, i64 0, i32 3
  %914 = load i8, ptr %913, align 1, !tbaa !52
  %915 = or i8 %914, 16
  store i8 %915, ptr %913, align 1, !tbaa !52
  %916 = getelementptr inbounds %struct.BMFace, ptr %902, i64 0, i32 2
  %917 = load ptr, ptr %916, align 8, !tbaa !85
  call void @BM_elem_attrs_copy(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef %815, ptr noundef %917) #7
  %918 = getelementptr inbounds %struct.BMLoop, ptr %917, i64 0, i32 7
  %919 = load ptr, ptr %918, align 8, !tbaa !86
  call void @BM_elem_attrs_copy(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef %815, ptr noundef %919) #7
  %920 = getelementptr inbounds %struct.BMLoop, ptr %917, i64 0, i32 6
  %921 = load ptr, ptr %920, align 8, !tbaa !73
  call void @BM_elem_attrs_copy(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull %813, ptr noundef %921) #7
  %922 = load ptr, ptr %920, align 8, !tbaa !73
  %923 = getelementptr inbounds %struct.BMLoop, ptr %922, i64 0, i32 6
  %924 = load ptr, ptr %923, align 8, !tbaa !73
  call void @BM_elem_attrs_copy(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull %813, ptr noundef %924) #7
  %925 = call ptr @BM_face_create_quad_tri(ptr noundef nonnull %0, ptr noundef %899, ptr noundef %901, ptr noundef %843, ptr noundef %841, ptr noundef nonnull %795, i32 noundef 0) #7
  br i1 %781, label %935, label %926

926:                                              ; preds = %912
  %927 = getelementptr inbounds %struct.BMFace, ptr %925, i64 0, i32 5
  %928 = load i16, ptr %927, align 8, !tbaa !84
  %929 = sext i16 %928 to i32
  %930 = add nsw i32 %929, %788
  %931 = icmp slt i32 %930, 0
  %932 = call i32 @llvm.smin.i32(i32 %930, i32 %789)
  %933 = trunc i32 %932 to i16
  %934 = select i1 %931, i16 0, i16 %933
  store i16 %934, ptr %927, align 8, !tbaa !84
  br label %935

935:                                              ; preds = %926, %912
  %936 = getelementptr inbounds %struct.BMHeader, ptr %925, i64 0, i32 3
  %937 = load i8, ptr %936, align 1, !tbaa !52
  %938 = or i8 %937, 16
  store i8 %938, ptr %936, align 1, !tbaa !52
  %939 = getelementptr inbounds %struct.BMFace, ptr %925, i64 0, i32 2
  %940 = load ptr, ptr %939, align 8, !tbaa !85
  call void @BM_elem_attrs_copy(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull %813, ptr noundef %940) #7
  %941 = getelementptr inbounds %struct.BMLoop, ptr %940, i64 0, i32 7
  %942 = load ptr, ptr %941, align 8, !tbaa !86
  call void @BM_elem_attrs_copy(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull %813, ptr noundef %942) #7
  %943 = getelementptr inbounds %struct.BMLoop, ptr %940, i64 0, i32 6
  %944 = load ptr, ptr %943, align 8, !tbaa !73
  call void @BM_elem_attrs_copy(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef %815, ptr noundef %944) #7
  %945 = load ptr, ptr %943, align 8, !tbaa !73
  %946 = getelementptr inbounds %struct.BMLoop, ptr %945, i64 0, i32 6
  %947 = load ptr, ptr %946, align 8, !tbaa !73
  call void @BM_elem_attrs_copy(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef %815, ptr noundef %947) #7
  br i1 %790, label %975, label %948

948:                                              ; preds = %935
  %949 = call ptr @BM_edge_exists(ptr noundef %841, ptr noundef %899) #7
  %950 = load ptr, ptr %949, align 8, !tbaa !87
  %951 = getelementptr inbounds i8, ptr %950, i64 %791
  store float %9, ptr %951, align 4, !tbaa !68
  %952 = call ptr @BM_edge_exists(ptr noundef %843, ptr noundef %901) #7
  %953 = load ptr, ptr %952, align 8, !tbaa !87
  %954 = getelementptr inbounds i8, ptr %953, i64 %791
  store float %9, ptr %954, align 4, !tbaa !68
  %955 = call ptr @BM_edge_exists(ptr noundef %836, ptr noundef %899) #7
  %956 = load ptr, ptr %955, align 8, !tbaa !87
  %957 = getelementptr inbounds i8, ptr %956, i64 %791
  store float %9, ptr %957, align 4, !tbaa !68
  %958 = call ptr @BM_edge_exists(ptr noundef %839, ptr noundef %901) #7
  %959 = load ptr, ptr %958, align 8, !tbaa !87
  %960 = getelementptr inbounds i8, ptr %959, i64 %791
  store float %9, ptr %960, align 4, !tbaa !68
  br label %961

961:                                              ; preds = %948, %890, %877
  br i1 %792, label %975, label %962

962:                                              ; preds = %961
  %963 = call ptr @BM_edge_exists(ptr noundef %841, ptr noundef %820) #7
  %964 = load ptr, ptr %963, align 8, !tbaa !87
  %965 = getelementptr inbounds i8, ptr %964, i64 %793
  store float %9, ptr %965, align 4, !tbaa !68
  %966 = call ptr @BM_edge_exists(ptr noundef %843, ptr noundef %825) #7
  %967 = load ptr, ptr %966, align 8, !tbaa !87
  %968 = getelementptr inbounds i8, ptr %967, i64 %793
  store float %9, ptr %968, align 4, !tbaa !68
  %969 = call ptr @BM_edge_exists(ptr noundef %836, ptr noundef %820) #7
  %970 = load ptr, ptr %969, align 8, !tbaa !87
  %971 = getelementptr inbounds i8, ptr %970, i64 %793
  store float %9, ptr %971, align 4, !tbaa !68
  %972 = call ptr @BM_edge_exists(ptr noundef %839, ptr noundef %825) #7
  %973 = load ptr, ptr %972, align 8, !tbaa !87
  %974 = getelementptr inbounds i8, ptr %973, i64 %793
  store float %9, ptr %974, align 4, !tbaa !68
  br label %975

975:                                              ; preds = %935, %962, %961
  %976 = load ptr, ptr %780, align 8, !tbaa !47
  %977 = call ptr %976(ptr noundef nonnull %20) #7
  %978 = icmp eq ptr %977, null
  br i1 %978, label %979, label %812, !llvm.loop !88

979:                                              ; preds = %975, %805, %800, %794
  %980 = load ptr, ptr %77, align 8, !tbaa !47
  %981 = call ptr %980(ptr noundef nonnull %19) #7
  %982 = icmp eq ptr %981, null
  br i1 %982, label %983, label %794, !llvm.loop !89

983:                                              ; preds = %979, %769
  br i1 %53, label %986, label %984

984:                                              ; preds = %983
  %985 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  call void %985(ptr noundef %58) #7
  br label %986

986:                                              ; preds = %984, %983
  %987 = icmp eq ptr %67, null
  br i1 %987, label %990, label %988

988:                                              ; preds = %986
  %989 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  call void %989(ptr noundef nonnull %67) #7
  br label %990

990:                                              ; preds = %988, %986
  %991 = icmp eq i8 %4, 0
  br i1 %991, label %1068, label %992

992:                                              ; preds = %990
  %993 = icmp eq i8 %14, 0
  br i1 %993, label %994, label %998

994:                                              ; preds = %992
  %995 = icmp sgt i32 %44, 0
  br i1 %995, label %996, label %1068

996:                                              ; preds = %994
  %997 = zext nneg i32 %44 to i64
  br label %1062

998:                                              ; preds = %992
  store i8 3, ptr %75, align 4, !tbaa !44
  store ptr @bmiter__elem_of_mesh_begin, ptr %76, align 8, !tbaa !46
  store ptr @bmiter__elem_of_mesh_step, ptr %77, align 8, !tbaa !47
  %999 = load ptr, ptr %100, align 8, !tbaa !57
  store ptr %999, ptr %19, align 8, !tbaa !49
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %19) #7
  %1000 = load ptr, ptr %77, align 8, !tbaa !47
  %1001 = call ptr %1000(ptr noundef nonnull %19) #7
  %1002 = icmp eq ptr %1001, null
  br i1 %1002, label %1003, label %1007

1003:                                             ; preds = %1044, %998
  %1004 = icmp sgt i32 %44, 0
  br i1 %1004, label %1005, label %1068

1005:                                             ; preds = %1003
  %1006 = zext nneg i32 %44 to i64
  br label %1048

1007:                                             ; preds = %998, %1044
  %1008 = phi ptr [ %1046, %1044 ], [ %1001, %998 ]
  %1009 = getelementptr inbounds %struct.BMHeader, ptr %1008, i64 0, i32 1
  %1010 = load i32, ptr %1009, align 8, !tbaa !50
  %1011 = icmp eq i32 %1010, -1
  br i1 %1011, label %1044, label %1012

1012:                                             ; preds = %1007
  %1013 = getelementptr inbounds %struct.BMFace, ptr %1008, i64 0, i32 2
  %1014 = load ptr, ptr %1013, align 8, !tbaa !85
  br label %1015

1015:                                             ; preds = %1029, %1012
  %1016 = phi i32 [ 0, %1012 ], [ %1027, %1029 ]
  %1017 = phi ptr [ %1014, %1012 ], [ %1031, %1029 ]
  %1018 = getelementptr inbounds %struct.BMLoop, ptr %1017, i64 0, i32 1
  %1019 = load ptr, ptr %1018, align 8, !tbaa !60
  %1020 = getelementptr inbounds %struct.BMHeader, ptr %1019, i64 0, i32 1
  %1021 = load i32, ptr %1020, align 8, !tbaa !50
  %1022 = sext i32 %1021 to i64
  %1023 = getelementptr inbounds ptr, ptr %50, i64 %1022
  %1024 = load ptr, ptr %1023, align 8, !tbaa !43
  %1025 = icmp eq ptr %1024, null
  %1026 = select i1 %1025, i32 2, i32 1
  %1027 = or i32 %1026, %1016
  %1028 = icmp eq i32 %1027, 3
  br i1 %1028, label %1033, label %1029

1029:                                             ; preds = %1015
  %1030 = getelementptr inbounds %struct.BMLoop, ptr %1017, i64 0, i32 6
  %1031 = load ptr, ptr %1030, align 8, !tbaa !73
  %1032 = icmp eq ptr %1031, %1014
  br i1 %1032, label %1044, label %1015, !llvm.loop !90

1033:                                             ; preds = %1015, %1033
  %1034 = phi ptr [ %1042, %1033 ], [ %1014, %1015 ]
  %1035 = getelementptr inbounds %struct.BMLoop, ptr %1034, i64 0, i32 1
  %1036 = load ptr, ptr %1035, align 8, !tbaa !60
  %1037 = getelementptr inbounds %struct.BMHeader, ptr %1036, i64 0, i32 1
  %1038 = load i32, ptr %1037, align 8, !tbaa !50
  %1039 = sext i32 %1038 to i64
  %1040 = getelementptr inbounds ptr, ptr %52, i64 %1039
  store ptr null, ptr %1040, align 8, !tbaa !43
  %1041 = getelementptr inbounds %struct.BMLoop, ptr %1034, i64 0, i32 6
  %1042 = load ptr, ptr %1041, align 8, !tbaa !73
  %1043 = icmp eq ptr %1042, %1014
  br i1 %1043, label %1044, label %1033, !llvm.loop !91

1044:                                             ; preds = %1029, %1033, %1007
  %1045 = load ptr, ptr %77, align 8, !tbaa !47
  %1046 = call ptr %1045(ptr noundef nonnull %19) #7
  %1047 = icmp eq ptr %1046, null
  br i1 %1047, label %1003, label %1007, !llvm.loop !92

1048:                                             ; preds = %1005, %1059
  %1049 = phi i64 [ 0, %1005 ], [ %1060, %1059 ]
  %1050 = getelementptr inbounds ptr, ptr %48, i64 %1049
  %1051 = load ptr, ptr %1050, align 8, !tbaa !43
  %1052 = getelementptr inbounds %struct.BMHeader, ptr %1051, i64 0, i32 1
  %1053 = load i32, ptr %1052, align 8, !tbaa !50
  %1054 = sext i32 %1053 to i64
  %1055 = getelementptr inbounds ptr, ptr %52, i64 %1054
  %1056 = load ptr, ptr %1055, align 8, !tbaa !43
  %1057 = icmp eq ptr %1056, null
  br i1 %1057, label %1059, label %1058

1058:                                             ; preds = %1048
  call void @BM_vert_kill(ptr noundef nonnull %0, ptr noundef %1051) #7
  br label %1059

1059:                                             ; preds = %1048, %1058
  %1060 = add nuw nsw i64 %1049, 1
  %1061 = icmp eq i64 %1060, %1006
  br i1 %1061, label %1068, label %1048, !llvm.loop !93

1062:                                             ; preds = %996, %1062
  %1063 = phi i64 [ 0, %996 ], [ %1066, %1062 ]
  %1064 = getelementptr inbounds ptr, ptr %48, i64 %1063
  %1065 = load ptr, ptr %1064, align 8, !tbaa !43
  call void @BM_vert_kill(ptr noundef nonnull %0, ptr noundef %1065) #7
  %1066 = add nuw nsw i64 %1063, 1
  %1067 = icmp eq i64 %1066, %997
  br i1 %1067, label %1068, label %1062, !llvm.loop !94

1068:                                             ; preds = %1059, %1062, %1003, %994, %990
  %1069 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  call void %1069(ptr noundef %48) #7
  %1070 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  call void %1070(ptr noundef %50) #7
  %1071 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  call void %1071(ptr noundef %52) #7
  %1072 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  call void %1072(ptr noundef %312) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %20) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %19) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @CustomData_get_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BM_data_layer_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare float @BM_vert_calc_mean_tagged_edge_length(ptr noundef) local_unnamed_addr #2

declare float @defvert_find_weight(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare ptr @BM_vert_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BM_mesh_elem_hflag_disable_all(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @BM_loop_calc_face_tangent(ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @BM_loop_calc_face_angle(ptr noundef) local_unnamed_addr #2

declare float @angle_on_axis_v3v3v3_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BM_face_create_quad_tri(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BM_elem_attrs_copy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BM_edge_exists(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_vert_kill(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

declare void @bmiter__edge_of_vert_begin(ptr noundef) #2

declare ptr @bmiter__edge_of_vert_step(ptr noundef) #2

declare void @bmiter__loop_of_face_begin(ptr noundef) #2

declare ptr @bmiter__loop_of_face_step(ptr noundef) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

declare void @BM_edge_calc_face_tangent(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!34 = !{!35, !36, i64 0}
!35 = !{!"BMesh", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !37, i64 28, !37, i64 29, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !36, i64 88, !36, i64 92, !36, i64 96, !39, i64 104, !39, i64 112, !39, i64 120, !36, i64 128, !39, i64 136, !40, i64 144, !40, i64 344, !40, i64 544, !40, i64 744, !41, i64 944, !36, i64 948, !36, i64 952, !36, i64 956, !42, i64 960, !39, i64 976, !42, i64 984, !39, i64 1000}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"any pointer", !37, i64 0}
!40 = !{!"CustomData", !39, i64 0, !37, i64 8, !36, i64 172, !36, i64 176, !36, i64 180, !39, i64 184, !39, i64 192}
!41 = !{!"short", !37, i64 0}
!42 = !{!"ListBase", !39, i64 0, !39, i64 8}
!43 = !{!39, !39, i64 0}
!44 = !{!45, !37, i64 60}
!45 = !{!"BMIter", !37, i64 0, !39, i64 40, !39, i64 48, !36, i64 56, !37, i64 60}
!46 = !{!45, !39, i64 40}
!47 = !{!45, !39, i64 48}
!48 = !{!35, !39, i64 32}
!49 = !{!37, !37, i64 0}
!50 = !{!51, !36, i64 8}
!51 = !{!"BMHeader", !39, i64 0, !36, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!52 = !{!51, !37, i64 13}
!53 = distinct !{!53, !54, !55}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!"llvm.loop.unroll.disable"}
!56 = !{!35, !37, i64 28}
!57 = !{!35, !39, i64 56}
!58 = !{!59, !36, i64 32}
!59 = !{!"BMFace", !51, i64 0, !39, i64 16, !39, i64 24, !36, i64 32, !37, i64 36, !41, i64 48}
!60 = !{!61, !39, i64 16}
!61 = !{!"BMLoop", !51, i64 0, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64}
!62 = !{!61, !39, i64 24}
!63 = !{!61, !39, i64 40}
!64 = !{!61, !39, i64 32}
!65 = distinct !{!65, !54, !55}
!66 = distinct !{!66, !54, !55}
!67 = distinct !{!67, !54, !55}
!68 = !{!69, !69, i64 0}
!69 = !{!"float", !37, i64 0}
!70 = !{!71, !39, i64 0}
!71 = !{!"BMVert", !51, i64 0, !39, i64 16, !37, i64 24, !37, i64 36, !39, i64 48}
!72 = distinct !{!72, !54, !55}
!73 = !{!61, !39, i64 56}
!74 = distinct !{!74, !54, !55}
!75 = !{!76, !39, i64 40}
!76 = !{!"BMEdge", !51, i64 0, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !77, i64 48, !77, i64 64}
!77 = !{!"BMDiskLink", !39, i64 0, !39, i64 8}
!78 = distinct !{!78, !54, !55}
!79 = !{!76, !39, i64 24}
!80 = !{!76, !39, i64 32}
!81 = distinct !{!81, !54, !55}
!82 = distinct !{!82, !54, !55}
!83 = distinct !{!83, !54, !55}
!84 = !{!59, !41, i64 48}
!85 = !{!59, !39, i64 24}
!86 = !{!61, !39, i64 64}
!87 = !{!76, !39, i64 0}
!88 = distinct !{!88, !54, !55}
!89 = distinct !{!89, !54, !55}
!90 = distinct !{!90, !54, !55}
!91 = distinct !{!91, !54, !55}
!92 = distinct !{!92, !54, !55}
!93 = distinct !{!93, !54, !55}
!94 = distinct !{!94, !54, !55}
