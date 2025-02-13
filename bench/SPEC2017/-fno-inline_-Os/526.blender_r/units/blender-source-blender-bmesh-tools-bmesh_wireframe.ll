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
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }

@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.BM_mesh_wireframe = private unnamed_addr constant [18 x i8] c"BM_mesh_wireframe\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_mesh_wireframe(ptr noundef %0, float noundef %1, float noundef %2, float noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6, i8 noundef zeroext %7, i8 noundef zeroext %8, float noundef %9, i32 noundef %10, i8 noundef zeroext %11, i16 noundef signext %12, i16 noundef signext %13, i8 noundef zeroext %14) local_unnamed_addr #0 {
  %16 = alloca %struct.BMIter, align 8
  %17 = alloca %struct.BMIter, align 8
  %18 = alloca [3 x float], align 4
  %19 = alloca [2 x ptr], align 16
  %20 = alloca [3 x float], align 4
  %21 = alloca ptr, align 8
  %22 = alloca ptr, align 8
  %23 = fsub float 1.000000e+00, %2
  %24 = fmul float %23, -5.000000e-01
  %25 = fmul float %24, %1
  %26 = fadd float %25, %1
  %27 = fadd float %25, %26
  %28 = fmul float %27, 5.000000e-01
  %29 = fmul float %1, 5.000000e-01
  %30 = icmp ne i8 %8, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %15
  %32 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 25
  %33 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %32, i32 noundef 30) #12
  br label %34

34:                                               ; preds = %15, %31
  %35 = phi i32 [ %33, %31 ], [ -1, %15 ]
  %36 = icmp eq i32 %10, -1
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  %39 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %38, i32 noundef 2) #12
  br label %40

40:                                               ; preds = %34, %37
  %41 = phi i32 [ %39, %37 ], [ -1, %34 ]
  %42 = fsub float 1.000000e+00, %3
  %43 = load i32, ptr %0, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %16) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %17) #13
  %44 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !43
  %45 = sext i32 %43 to i64
  %46 = shl nsw i64 %45, 3
  %47 = tail call ptr %44(i64 noundef %46, ptr noundef nonnull @__func__.BM_mesh_wireframe) #12
  %48 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !43
  %49 = tail call ptr %48(i64 noundef %46, ptr noundef nonnull @__func__.BM_mesh_wireframe) #12
  %50 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !43
  %51 = tail call ptr %50(i64 noundef %46, ptr noundef nonnull @__func__.BM_mesh_wireframe) #12
  %52 = icmp eq i8 %5, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %40
  %54 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !43
  %55 = tail call ptr %54(i64 noundef %46, ptr noundef nonnull @__func__.BM_mesh_wireframe) #12
  br label %56

56:                                               ; preds = %40, %53
  %57 = phi ptr [ %55, %53 ], [ null, %40 ]
  %58 = icmp ne i8 %7, 0
  %59 = icmp ne i32 %41, -1
  %60 = select i1 %58, i1 true, i1 %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !43
  %63 = shl nsw i64 %45, 2
  %64 = tail call ptr %62(i64 noundef %63, ptr noundef nonnull @__func__.BM_mesh_wireframe) #12
  br label %65

65:                                               ; preds = %56, %61
  %66 = phi ptr [ %64, %61 ], [ null, %56 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #13
  %67 = icmp eq i32 %35, -1
  %68 = select i1 %30, i1 %67, i1 false
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 25
  tail call void @BM_data_layer_add(ptr noundef nonnull %0, ptr noundef nonnull %70, i32 noundef 30) #12
  %71 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %70, i32 noundef 30) #12
  br label %72

72:                                               ; preds = %69, %65
  %73 = phi i32 [ %71, %69 ], [ %35, %65 ]
  %74 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %16, ptr noundef nonnull %0, i8 noundef zeroext 1, ptr noundef null) #14
  %75 = icmp eq ptr %74, null
  br i1 %75, label %84, label %76

76:                                               ; preds = %72, %76
  %77 = phi i64 [ %82, %76 ], [ 0, %72 ]
  %78 = phi ptr [ %81, %76 ], [ %74, %72 ]
  %79 = trunc i64 %77 to i32
  call fastcc void @_bm_elem_index_set(ptr noundef nonnull %78, i32 noundef %79) #14
  %80 = getelementptr inbounds ptr, ptr %47, i64 %77
  store ptr %78, ptr %80, align 8, !tbaa !43
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %78) #14
  %81 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %16) #14
  %82 = add nuw i64 %77, 1
  %83 = icmp eq ptr %81, null
  br i1 %83, label %84, label %76, !llvm.loop !44

84:                                               ; preds = %76, %72
  %85 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %86 = load i8, ptr %85, align 4, !tbaa !46
  %87 = and i8 %86, -2
  store i8 %87, ptr %85, align 4, !tbaa !46
  %88 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %16, ptr noundef nonnull %0, i8 noundef zeroext 3, ptr noundef null) #14
  %89 = icmp eq ptr %88, null
  br i1 %89, label %121, label %90

90:                                               ; preds = %84
  %91 = icmp eq i8 %14, 0
  br label %92

92:                                               ; preds = %90, %116
  %93 = phi i32 [ 0, %90 ], [ %117, %116 ]
  %94 = phi ptr [ %88, %90 ], [ %118, %116 ]
  %95 = phi i32 [ 0, %90 ], [ %119, %116 ]
  call fastcc void @_bm_elem_index_set(ptr noundef nonnull %94, i32 noundef %95) #14
  br i1 %91, label %99, label %96

96:                                               ; preds = %92
  %97 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %94) #14
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %116, label %100

99:                                               ; preds = %92
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %94) #14
  br label %100

100:                                              ; preds = %96, %99
  %101 = getelementptr inbounds %struct.BMFace, ptr %94, i64 0, i32 3
  %102 = load i32, ptr %101, align 8, !tbaa !47
  %103 = add nsw i32 %102, %93
  %104 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %17, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %94) #14
  %105 = icmp eq ptr %104, null
  br i1 %105, label %116, label %106

106:                                              ; preds = %100, %106
  %107 = phi ptr [ %114, %106 ], [ %104, %100 ]
  %108 = getelementptr inbounds %struct.BMLoop, ptr %107, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !50
  call fastcc void @_bm_elem_flag_enable(ptr noundef %109) #14
  %110 = getelementptr inbounds %struct.BMLoop, ptr %107, i64 0, i32 2
  %111 = load ptr, ptr %110, align 8, !tbaa !52
  %112 = call fastcc zeroext i8 @bm_loop_is_radial_boundary(ptr noundef nonnull %107) #14, !range !53
  %113 = zext nneg i8 %112 to i32
  call fastcc void @_bm_elem_flag_set(ptr noundef %111, i32 noundef %113) #14
  %114 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %17) #14
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %106, !llvm.loop !54

116:                                              ; preds = %106, %100, %96
  %117 = phi i32 [ %93, %96 ], [ %103, %100 ], [ %103, %106 ]
  %118 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %16) #14
  %119 = add nuw nsw i32 %95, 1
  %120 = icmp eq ptr %118, null
  br i1 %120, label %121, label %92, !llvm.loop !55

121:                                              ; preds = %116, %84
  %122 = phi i32 [ 0, %84 ], [ %117, %116 ]
  %123 = load i8, ptr %85, align 4, !tbaa !46
  %124 = and i8 %123, -9
  store i8 %124, ptr %85, align 4, !tbaa !46
  %125 = icmp sgt i32 %43, 0
  br i1 %125, label %126, label %192

126:                                              ; preds = %121
  %127 = icmp eq ptr %66, null
  %128 = icmp eq i8 %7, 0
  %129 = sext i32 %41 to i64
  %130 = icmp eq i8 %11, 0
  %131 = fcmp ogt float %3, 0.000000e+00
  %132 = fcmp oeq float %1, 0.000000e+00
  %133 = fsub float %25, %28
  %134 = fsub float %26, %28
  %135 = zext nneg i32 %43 to i64
  br label %136

136:                                              ; preds = %126, %189
  %137 = phi i64 [ 0, %126 ], [ %190, %189 ]
  %138 = getelementptr inbounds ptr, ptr %47, i64 %137
  %139 = load ptr, ptr %138, align 8, !tbaa !43
  %140 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %139) #14
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %184, label %142

142:                                              ; preds = %136
  br i1 %127, label %159, label %143

143:                                              ; preds = %142
  br i1 %128, label %146, label %144

144:                                              ; preds = %143
  %145 = call float @BM_vert_calc_mean_tagged_edge_length(ptr noundef %139) #12
  br label %146

146:                                              ; preds = %143, %144
  %147 = phi float [ %145, %144 ], [ 1.000000e+00, %143 ]
  %148 = getelementptr inbounds float, ptr %66, i64 %137
  store float %147, ptr %148, align 4
  br i1 %59, label %149, label %159

149:                                              ; preds = %146
  %150 = load ptr, ptr %139, align 8, !tbaa !56
  %151 = getelementptr inbounds i8, ptr %150, i64 %129
  %152 = call float @defvert_find_weight(ptr noundef %151, i32 noundef %10) #12
  %153 = fsub float 1.000000e+00, %152
  %154 = select i1 %130, float %152, float %153
  %155 = call float @llvm.fmuladd.f32(float %154, float %42, float %3)
  %156 = select i1 %131, float %155, float %154
  %157 = load float, ptr %148, align 4, !tbaa !58
  %158 = fmul float %157, %156
  store float %158, ptr %148, align 4, !tbaa !58
  br label %159

159:                                              ; preds = %146, %149, %142
  %160 = phi float [ 1.000000e+00, %142 ], [ %158, %149 ], [ %147, %146 ]
  %161 = call ptr @BM_vert_create(ptr noundef nonnull %0, ptr noundef null, ptr noundef %139, i32 noundef 0) #12
  %162 = getelementptr inbounds ptr, ptr %49, i64 %137
  store ptr %161, ptr %162, align 8, !tbaa !43
  %163 = call ptr @BM_vert_create(ptr noundef nonnull %0, ptr noundef null, ptr noundef %139, i32 noundef 0) #12
  %164 = getelementptr inbounds ptr, ptr %51, i64 %137
  store ptr %163, ptr %164, align 8, !tbaa !43
  br i1 %132, label %165, label %174

165:                                              ; preds = %159
  %166 = load ptr, ptr %162, align 8, !tbaa !43
  %167 = getelementptr inbounds %struct.BMVert, ptr %166, i64 0, i32 2
  %168 = getelementptr inbounds %struct.BMVert, ptr %139, i64 0, i32 2
  %169 = getelementptr inbounds %struct.BMVert, ptr %139, i64 0, i32 3
  %170 = fmul float %25, %160
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %167, ptr noundef nonnull %168, ptr noundef nonnull %169, float noundef %170) #14
  %171 = load ptr, ptr %164, align 8, !tbaa !43
  %172 = getelementptr inbounds %struct.BMVert, ptr %171, i64 0, i32 2
  %173 = fmul float %26, %160
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %172, ptr noundef nonnull %168, ptr noundef nonnull %169, float noundef %173) #14
  br label %187

174:                                              ; preds = %159
  %175 = getelementptr inbounds %struct.BMVert, ptr %139, i64 0, i32 2
  %176 = getelementptr inbounds %struct.BMVert, ptr %139, i64 0, i32 3
  %177 = fmul float %28, %160
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %18, ptr noundef nonnull %175, ptr noundef nonnull %176, float noundef %177) #14
  %178 = load ptr, ptr %162, align 8, !tbaa !43
  %179 = getelementptr inbounds %struct.BMVert, ptr %178, i64 0, i32 2
  %180 = fmul float %133, %160
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %179, ptr noundef nonnull %18, ptr noundef nonnull %176, float noundef %180) #14
  %181 = load ptr, ptr %164, align 8, !tbaa !43
  %182 = getelementptr inbounds %struct.BMVert, ptr %181, i64 0, i32 2
  %183 = fmul float %134, %160
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %182, ptr noundef nonnull %18, ptr noundef nonnull %176, float noundef %183) #14
  br label %187

184:                                              ; preds = %136
  %185 = getelementptr inbounds ptr, ptr %49, i64 %137
  store ptr null, ptr %185, align 8, !tbaa !43
  %186 = getelementptr inbounds ptr, ptr %51, i64 %137
  store ptr null, ptr %186, align 8, !tbaa !43
  br label %187

187:                                              ; preds = %165, %174, %184
  br i1 %128, label %188, label %189

188:                                              ; preds = %187
  call fastcc void @_bm_elem_flag_disable(ptr noundef %139) #14
  br label %189

189:                                              ; preds = %187, %188
  %190 = add nuw nsw i64 %137, 1
  %191 = icmp eq i64 %190, %135
  br i1 %191, label %192, label %136, !llvm.loop !60

192:                                              ; preds = %189, %121
  %193 = icmp eq i8 %7, 0
  br i1 %193, label %195, label %194

194:                                              ; preds = %192
  call void @BM_mesh_elem_hflag_disable_all(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext 16, i8 noundef zeroext 0) #12
  br label %195

195:                                              ; preds = %194, %192
  %196 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !43
  %197 = sext i32 %122 to i64
  %198 = shl nsw i64 %197, 3
  %199 = call ptr %196(i64 noundef %198, ptr noundef nonnull @__func__.BM_mesh_wireframe) #12
  %200 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %16, ptr noundef nonnull %0, i8 noundef zeroext 3, ptr noundef null) #14
  %201 = icmp eq ptr %200, null
  br i1 %201, label %314, label %202

202:                                              ; preds = %195
  %203 = icmp eq i8 %14, 0
  %204 = icmp eq ptr %66, null
  %205 = icmp ne i8 %6, 0
  %206 = fcmp une float %1, 0.000000e+00
  %207 = getelementptr inbounds ptr, ptr %19, i64 1
  br label %208

208:                                              ; preds = %202, %310
  %209 = phi i32 [ 0, %202 ], [ %311, %310 ]
  %210 = phi ptr [ %200, %202 ], [ %312, %310 ]
  br i1 %203, label %214, label %211

211:                                              ; preds = %208
  %212 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %210) #14
  %213 = icmp eq i8 %212, 0
  br i1 %213, label %310, label %214

214:                                              ; preds = %211, %208
  %215 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %17, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %210) #14
  %216 = icmp eq ptr %215, null
  br i1 %216, label %310, label %217

217:                                              ; preds = %214
  %218 = sext i32 %209 to i64
  br label %219

219:                                              ; preds = %217, %304
  %220 = phi i64 [ %218, %217 ], [ %305, %304 ]
  %221 = phi ptr [ %215, %217 ], [ %306, %304 ]
  %222 = trunc i64 %220 to i32
  call fastcc void @_bm_elem_index_set(ptr noundef nonnull %221, i32 noundef %222) #14
  call void @BM_loop_calc_face_tangent(ptr noundef nonnull %221, ptr noundef nonnull %18) #12
  br i1 %204, label %230, label %223

223:                                              ; preds = %219
  %224 = getelementptr inbounds %struct.BMLoop, ptr %221, i64 0, i32 1
  %225 = load ptr, ptr %224, align 8, !tbaa !50
  %226 = call fastcc i32 @_bm_elem_index_get(ptr noundef %225) #14
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds float, ptr %66, i64 %227
  %229 = load float, ptr %228, align 4, !tbaa !58
  br label %230

230:                                              ; preds = %223, %219
  %231 = phi float [ %229, %223 ], [ 1.000000e+00, %219 ]
  br i1 %205, label %232, label %238

232:                                              ; preds = %230
  %233 = call float @BM_loop_calc_face_angle(ptr noundef nonnull %221) #12
  %234 = fsub float 0x400921FB60000000, %233
  %235 = fmul float %234, 5.000000e-01
  %236 = call fastcc float @shell_angle_to_dist(float noundef %235) #14
  %237 = fmul float %231, %236
  br label %238

238:                                              ; preds = %232, %230
  %239 = phi float [ %237, %232 ], [ %231, %230 ]
  %240 = getelementptr inbounds %struct.BMLoop, ptr %221, i64 0, i32 1
  %241 = load ptr, ptr %240, align 8, !tbaa !50
  %242 = getelementptr inbounds %struct.BMVert, ptr %241, i64 0, i32 2
  %243 = fmul float %29, %239
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %18, ptr noundef nonnull %242, ptr noundef nonnull %18, float noundef %243) #14
  br i1 %206, label %244, label %248

244:                                              ; preds = %238
  %245 = load ptr, ptr %240, align 8, !tbaa !50
  %246 = getelementptr inbounds %struct.BMVert, ptr %245, i64 0, i32 3
  %247 = fmul float %28, %231
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %18, ptr noundef nonnull %246, float noundef %247) #14
  br label %248

248:                                              ; preds = %244, %238
  %249 = load ptr, ptr %240, align 8, !tbaa !50
  %250 = call ptr @BM_vert_create(ptr noundef nonnull %0, ptr noundef nonnull %18, ptr noundef %249, i32 noundef 0) #12
  %251 = getelementptr inbounds ptr, ptr %199, i64 %220
  store ptr %250, ptr %251, align 8, !tbaa !43
  br i1 %52, label %304, label %252

252:                                              ; preds = %248
  %253 = getelementptr inbounds %struct.BMLoop, ptr %221, i64 0, i32 2
  %254 = load ptr, ptr %253, align 8, !tbaa !52
  %255 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %254) #14
  %256 = icmp eq i8 %255, 0
  br i1 %256, label %304, label %257

257:                                              ; preds = %252
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %19) #13
  %258 = load ptr, ptr %240, align 8, !tbaa !50
  store ptr %258, ptr %19, align 16, !tbaa !43
  %259 = getelementptr inbounds %struct.BMLoop, ptr %221, i64 0, i32 6
  %260 = load ptr, ptr %259, align 8, !tbaa !61
  %261 = getelementptr inbounds %struct.BMLoop, ptr %260, i64 0, i32 1
  %262 = load ptr, ptr %261, align 8, !tbaa !50
  store ptr %262, ptr %207, align 8, !tbaa !43
  br label %263

263:                                              ; preds = %257, %302
  %264 = phi i1 [ true, %257 ], [ false, %302 ]
  %265 = phi i64 [ 0, %257 ], [ 1, %302 ]
  %266 = getelementptr inbounds [2 x ptr], ptr %19, i64 0, i64 %265
  %267 = load ptr, ptr %266, align 8, !tbaa !43
  %268 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %267) #14
  %269 = icmp eq i8 %268, 0
  br i1 %269, label %270, label %302

270:                                              ; preds = %263
  %271 = call fastcc i32 @_bm_elem_index_get(ptr noundef %267) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %21) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %22) #13
  call fastcc void @_bm_elem_flag_enable(ptr noundef %267) #14
  call fastcc void @bm_vert_boundary_tangent(ptr noundef %267, ptr noundef nonnull %18, ptr noundef nonnull %20, ptr noundef nonnull %21, ptr noundef nonnull %22) #14
  br i1 %204, label %276, label %272

272:                                              ; preds = %270
  %273 = sext i32 %271 to i64
  %274 = getelementptr inbounds float, ptr %66, i64 %273
  %275 = load float, ptr %274, align 4, !tbaa !58
  br label %276

276:                                              ; preds = %272, %270
  %277 = phi float [ %275, %272 ], [ 1.000000e+00, %270 ]
  %278 = load ptr, ptr %21, align 8
  %279 = icmp ne ptr %278, null
  %280 = select i1 %205, i1 %279, i1 false
  br i1 %280, label %281, label %291

281:                                              ; preds = %276
  %282 = getelementptr inbounds %struct.BMVert, ptr %278, i64 0, i32 2
  %283 = getelementptr inbounds %struct.BMVert, ptr %267, i64 0, i32 2
  %284 = load ptr, ptr %22, align 8, !tbaa !43
  %285 = getelementptr inbounds %struct.BMVert, ptr %284, i64 0, i32 2
  %286 = call float @angle_on_axis_v3v3v3_v3(ptr noundef nonnull %282, ptr noundef nonnull %283, ptr noundef nonnull %285, ptr noundef nonnull %20) #12
  %287 = fsub float 0x400921FB60000000, %286
  %288 = fmul float %287, 5.000000e-01
  %289 = call fastcc float @shell_angle_to_dist(float noundef %288) #14
  %290 = fmul float %277, %289
  br label %291

291:                                              ; preds = %281, %276
  %292 = phi float [ %290, %281 ], [ %277, %276 ]
  %293 = getelementptr inbounds %struct.BMVert, ptr %267, i64 0, i32 2
  %294 = fmul float %29, %292
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %18, ptr noundef nonnull %293, ptr noundef nonnull %18, float noundef %294) #14
  br i1 %206, label %295, label %298

295:                                              ; preds = %291
  %296 = getelementptr inbounds %struct.BMVert, ptr %267, i64 0, i32 3
  %297 = fmul float %28, %277
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %18, ptr noundef nonnull %296, float noundef %297) #14
  br label %298

298:                                              ; preds = %295, %291
  %299 = call ptr @BM_vert_create(ptr noundef nonnull %0, ptr noundef nonnull %18, ptr noundef %267, i32 noundef 0) #12
  %300 = sext i32 %271 to i64
  %301 = getelementptr inbounds ptr, ptr %57, i64 %300
  store ptr %299, ptr %301, align 8, !tbaa !43
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %22) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #13
  br label %302

302:                                              ; preds = %298, %263
  br i1 %264, label %263, label %303, !llvm.loop !62

303:                                              ; preds = %302
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %19) #13
  br label %304

304:                                              ; preds = %252, %303, %248
  %305 = add i64 %220, 1
  %306 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %17) #14
  %307 = icmp eq ptr %306, null
  br i1 %307, label %308, label %219, !llvm.loop !63

308:                                              ; preds = %304
  %309 = trunc i64 %305 to i32
  br label %310

310:                                              ; preds = %308, %214, %211
  %311 = phi i32 [ %209, %211 ], [ %209, %214 ], [ %309, %308 ]
  %312 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %16) #14
  %313 = icmp eq ptr %312, null
  br i1 %313, label %314, label %208, !llvm.loop !64

314:                                              ; preds = %310, %195
  %315 = load i8, ptr %85, align 4, !tbaa !46
  %316 = or i8 %315, 4
  store i8 %316, ptr %85, align 4, !tbaa !46
  %317 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %16, ptr noundef nonnull %0, i8 noundef zeroext 3, ptr noundef null) #14
  %318 = icmp eq ptr %317, null
  br i1 %318, label %488, label %319

319:                                              ; preds = %314
  %320 = icmp eq i8 %14, 0
  %321 = icmp eq i16 %12, 0
  %322 = sext i16 %12 to i32
  %323 = sext i16 %13 to i32
  %324 = icmp eq i8 %8, 0
  %325 = sext i32 %73 to i64
  br label %326

326:                                              ; preds = %319, %485
  %327 = phi ptr [ %317, %319 ], [ %486, %485 ]
  %328 = call fastcc i32 @_bm_elem_index_get(ptr noundef nonnull %327) #14
  %329 = icmp eq i32 %328, -1
  br i1 %329, label %485, label %330

330:                                              ; preds = %326
  br i1 %320, label %334, label %331

331:                                              ; preds = %330
  %332 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %327) #14
  %333 = icmp eq i8 %332, 0
  br i1 %333, label %485, label %334

334:                                              ; preds = %331, %330
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %327) #14
  %335 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %17, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %327) #14
  %336 = icmp eq ptr %335, null
  br i1 %336, label %485, label %337

337:                                              ; preds = %334, %482
  %338 = phi ptr [ %483, %482 ], [ %335, %334 ]
  %339 = getelementptr inbounds %struct.BMLoop, ptr %338, i64 0, i32 6
  %340 = load ptr, ptr %339, align 8, !tbaa !61
  %341 = call fastcc i32 @_bm_elem_index_get(ptr noundef nonnull %338) #14
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds ptr, ptr %199, i64 %342
  %344 = load ptr, ptr %343, align 8, !tbaa !43
  %345 = call fastcc i32 @_bm_elem_index_get(ptr noundef %340) #14
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds ptr, ptr %199, i64 %346
  %348 = load ptr, ptr %347, align 8, !tbaa !43
  %349 = getelementptr inbounds %struct.BMLoop, ptr %338, i64 0, i32 1
  %350 = load ptr, ptr %349, align 8, !tbaa !50
  %351 = getelementptr inbounds %struct.BMLoop, ptr %340, i64 0, i32 1
  %352 = load ptr, ptr %351, align 8, !tbaa !50
  %353 = call fastcc i32 @_bm_elem_index_get(ptr noundef %350) #14
  %354 = call fastcc i32 @_bm_elem_index_get(ptr noundef %352) #14
  %355 = sext i32 %353 to i64
  %356 = getelementptr inbounds ptr, ptr %49, i64 %355
  %357 = load ptr, ptr %356, align 8, !tbaa !43
  %358 = sext i32 %354 to i64
  %359 = getelementptr inbounds ptr, ptr %49, i64 %358
  %360 = load ptr, ptr %359, align 8, !tbaa !43
  %361 = getelementptr inbounds ptr, ptr %51, i64 %355
  %362 = load ptr, ptr %361, align 8, !tbaa !43
  %363 = getelementptr inbounds ptr, ptr %51, i64 %358
  %364 = load ptr, ptr %363, align 8, !tbaa !43
  %365 = call ptr @BM_face_create_quad_tri(ptr noundef nonnull %0, ptr noundef %344, ptr noundef %348, ptr noundef %360, ptr noundef %357, ptr noundef nonnull %327, i32 noundef 0) #12
  br i1 %321, label %375, label %366

366:                                              ; preds = %337
  %367 = getelementptr inbounds %struct.BMFace, ptr %365, i64 0, i32 5
  %368 = load i16, ptr %367, align 8, !tbaa !65
  %369 = sext i16 %368 to i32
  %370 = add nsw i32 %369, %322
  %371 = icmp slt i32 %370, 0
  %372 = call i32 @llvm.smin.i32(i32 %370, i32 %323)
  %373 = trunc i32 %372 to i16
  %374 = select i1 %371, i16 0, i16 %373
  store i16 %374, ptr %367, align 8, !tbaa !65
  br label %375

375:                                              ; preds = %366, %337
  call fastcc void @_bm_elem_flag_enable(ptr noundef %365) #14
  %376 = getelementptr inbounds %struct.BMFace, ptr %365, i64 0, i32 2
  %377 = load ptr, ptr %376, align 8, !tbaa !66
  call void @BM_elem_attrs_copy(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull %338, ptr noundef %377) #12
  %378 = getelementptr inbounds %struct.BMLoop, ptr %377, i64 0, i32 7
  %379 = load ptr, ptr %378, align 8, !tbaa !67
  call void @BM_elem_attrs_copy(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull %338, ptr noundef %379) #12
  %380 = getelementptr inbounds %struct.BMLoop, ptr %377, i64 0, i32 6
  %381 = load ptr, ptr %380, align 8, !tbaa !61
  call void @BM_elem_attrs_copy(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull %340, ptr noundef %381) #12
  %382 = load ptr, ptr %380, align 8, !tbaa !61
  %383 = getelementptr inbounds %struct.BMLoop, ptr %382, i64 0, i32 6
  %384 = load ptr, ptr %383, align 8, !tbaa !61
  call void @BM_elem_attrs_copy(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull %340, ptr noundef %384) #12
  %385 = call ptr @BM_face_create_quad_tri(ptr noundef nonnull %0, ptr noundef %348, ptr noundef %344, ptr noundef %362, ptr noundef %364, ptr noundef nonnull %327, i32 noundef 0) #12
  br i1 %321, label %395, label %386

386:                                              ; preds = %375
  %387 = getelementptr inbounds %struct.BMFace, ptr %385, i64 0, i32 5
  %388 = load i16, ptr %387, align 8, !tbaa !65
  %389 = sext i16 %388 to i32
  %390 = add nsw i32 %389, %322
  %391 = icmp slt i32 %390, 0
  %392 = call i32 @llvm.smin.i32(i32 %390, i32 %323)
  %393 = trunc i32 %392 to i16
  %394 = select i1 %391, i16 0, i16 %393
  store i16 %394, ptr %387, align 8, !tbaa !65
  br label %395

395:                                              ; preds = %386, %375
  call fastcc void @_bm_elem_flag_enable(ptr noundef %385) #14
  %396 = getelementptr inbounds %struct.BMFace, ptr %385, i64 0, i32 2
  %397 = load ptr, ptr %396, align 8, !tbaa !66
  call void @BM_elem_attrs_copy(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull %340, ptr noundef %397) #12
  %398 = getelementptr inbounds %struct.BMLoop, ptr %397, i64 0, i32 7
  %399 = load ptr, ptr %398, align 8, !tbaa !67
  call void @BM_elem_attrs_copy(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull %340, ptr noundef %399) #12
  %400 = getelementptr inbounds %struct.BMLoop, ptr %397, i64 0, i32 6
  %401 = load ptr, ptr %400, align 8, !tbaa !61
  call void @BM_elem_attrs_copy(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull %338, ptr noundef %401) #12
  %402 = load ptr, ptr %400, align 8, !tbaa !61
  %403 = getelementptr inbounds %struct.BMLoop, ptr %402, i64 0, i32 6
  %404 = load ptr, ptr %403, align 8, !tbaa !61
  call void @BM_elem_attrs_copy(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull %338, ptr noundef %404) #12
  br i1 %52, label %468, label %405

405:                                              ; preds = %395
  %406 = getelementptr inbounds %struct.BMLoop, ptr %338, i64 0, i32 2
  %407 = load ptr, ptr %406, align 8, !tbaa !52
  %408 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %407) #14
  %409 = icmp eq i8 %408, 0
  br i1 %409, label %468, label %410

410:                                              ; preds = %405
  %411 = getelementptr inbounds ptr, ptr %57, i64 %355
  %412 = load ptr, ptr %411, align 8, !tbaa !43
  %413 = getelementptr inbounds ptr, ptr %57, i64 %358
  %414 = load ptr, ptr %413, align 8, !tbaa !43
  %415 = call ptr @BM_face_create_quad_tri(ptr noundef nonnull %0, ptr noundef %414, ptr noundef %412, ptr noundef %357, ptr noundef %360, ptr noundef nonnull %327, i32 noundef 0) #12
  br i1 %321, label %425, label %416

416:                                              ; preds = %410
  %417 = getelementptr inbounds %struct.BMFace, ptr %415, i64 0, i32 5
  %418 = load i16, ptr %417, align 8, !tbaa !65
  %419 = sext i16 %418 to i32
  %420 = add nsw i32 %419, %322
  %421 = icmp slt i32 %420, 0
  %422 = call i32 @llvm.smin.i32(i32 %420, i32 %323)
  %423 = trunc i32 %422 to i16
  %424 = select i1 %421, i16 0, i16 %423
  store i16 %424, ptr %417, align 8, !tbaa !65
  br label %425

425:                                              ; preds = %416, %410
  call fastcc void @_bm_elem_flag_enable(ptr noundef %415) #14
  %426 = getelementptr inbounds %struct.BMFace, ptr %415, i64 0, i32 2
  %427 = load ptr, ptr %426, align 8, !tbaa !66
  call void @BM_elem_attrs_copy(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull %340, ptr noundef %427) #12
  %428 = getelementptr inbounds %struct.BMLoop, ptr %427, i64 0, i32 7
  %429 = load ptr, ptr %428, align 8, !tbaa !67
  call void @BM_elem_attrs_copy(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull %340, ptr noundef %429) #12
  %430 = getelementptr inbounds %struct.BMLoop, ptr %427, i64 0, i32 6
  %431 = load ptr, ptr %430, align 8, !tbaa !61
  call void @BM_elem_attrs_copy(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull %338, ptr noundef %431) #12
  %432 = load ptr, ptr %430, align 8, !tbaa !61
  %433 = getelementptr inbounds %struct.BMLoop, ptr %432, i64 0, i32 6
  %434 = load ptr, ptr %433, align 8, !tbaa !61
  call void @BM_elem_attrs_copy(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull %338, ptr noundef %434) #12
  %435 = call ptr @BM_face_create_quad_tri(ptr noundef nonnull %0, ptr noundef %412, ptr noundef %414, ptr noundef %364, ptr noundef %362, ptr noundef nonnull %327, i32 noundef 0) #12
  br i1 %321, label %445, label %436

436:                                              ; preds = %425
  %437 = getelementptr inbounds %struct.BMFace, ptr %435, i64 0, i32 5
  %438 = load i16, ptr %437, align 8, !tbaa !65
  %439 = sext i16 %438 to i32
  %440 = add nsw i32 %439, %322
  %441 = icmp slt i32 %440, 0
  %442 = call i32 @llvm.smin.i32(i32 %440, i32 %323)
  %443 = trunc i32 %442 to i16
  %444 = select i1 %441, i16 0, i16 %443
  store i16 %444, ptr %437, align 8, !tbaa !65
  br label %445

445:                                              ; preds = %436, %425
  call fastcc void @_bm_elem_flag_enable(ptr noundef %435) #14
  %446 = getelementptr inbounds %struct.BMFace, ptr %435, i64 0, i32 2
  %447 = load ptr, ptr %446, align 8, !tbaa !66
  call void @BM_elem_attrs_copy(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull %338, ptr noundef %447) #12
  %448 = getelementptr inbounds %struct.BMLoop, ptr %447, i64 0, i32 7
  %449 = load ptr, ptr %448, align 8, !tbaa !67
  call void @BM_elem_attrs_copy(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull %338, ptr noundef %449) #12
  %450 = getelementptr inbounds %struct.BMLoop, ptr %447, i64 0, i32 6
  %451 = load ptr, ptr %450, align 8, !tbaa !61
  call void @BM_elem_attrs_copy(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull %340, ptr noundef %451) #12
  %452 = load ptr, ptr %450, align 8, !tbaa !61
  %453 = getelementptr inbounds %struct.BMLoop, ptr %452, i64 0, i32 6
  %454 = load ptr, ptr %453, align 8, !tbaa !61
  call void @BM_elem_attrs_copy(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull %340, ptr noundef %454) #12
  br i1 %324, label %482, label %455

455:                                              ; preds = %445
  %456 = call ptr @BM_edge_exists(ptr noundef %362, ptr noundef %412) #12
  %457 = load ptr, ptr %456, align 8, !tbaa !68
  %458 = getelementptr inbounds i8, ptr %457, i64 %325
  store float %9, ptr %458, align 4, !tbaa !58
  %459 = call ptr @BM_edge_exists(ptr noundef %364, ptr noundef %414) #12
  %460 = load ptr, ptr %459, align 8, !tbaa !68
  %461 = getelementptr inbounds i8, ptr %460, i64 %325
  store float %9, ptr %461, align 4, !tbaa !58
  %462 = call ptr @BM_edge_exists(ptr noundef %357, ptr noundef %412) #12
  %463 = load ptr, ptr %462, align 8, !tbaa !68
  %464 = getelementptr inbounds i8, ptr %463, i64 %325
  store float %9, ptr %464, align 4, !tbaa !58
  %465 = call ptr @BM_edge_exists(ptr noundef %360, ptr noundef %414) #12
  %466 = load ptr, ptr %465, align 8, !tbaa !68
  %467 = getelementptr inbounds i8, ptr %466, i64 %325
  store float %9, ptr %467, align 4, !tbaa !58
  br label %469

468:                                              ; preds = %405, %395
  br i1 %324, label %482, label %469

469:                                              ; preds = %455, %468
  %470 = call ptr @BM_edge_exists(ptr noundef %362, ptr noundef %344) #12
  %471 = load ptr, ptr %470, align 8, !tbaa !68
  %472 = getelementptr inbounds i8, ptr %471, i64 %325
  store float %9, ptr %472, align 4, !tbaa !58
  %473 = call ptr @BM_edge_exists(ptr noundef %364, ptr noundef %348) #12
  %474 = load ptr, ptr %473, align 8, !tbaa !68
  %475 = getelementptr inbounds i8, ptr %474, i64 %325
  store float %9, ptr %475, align 4, !tbaa !58
  %476 = call ptr @BM_edge_exists(ptr noundef %357, ptr noundef %344) #12
  %477 = load ptr, ptr %476, align 8, !tbaa !68
  %478 = getelementptr inbounds i8, ptr %477, i64 %325
  store float %9, ptr %478, align 4, !tbaa !58
  %479 = call ptr @BM_edge_exists(ptr noundef %360, ptr noundef %348) #12
  %480 = load ptr, ptr %479, align 8, !tbaa !68
  %481 = getelementptr inbounds i8, ptr %480, i64 %325
  store float %9, ptr %481, align 4, !tbaa !58
  br label %482

482:                                              ; preds = %445, %469, %468
  %483 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %17) #14
  %484 = icmp eq ptr %483, null
  br i1 %484, label %485, label %337, !llvm.loop !71

485:                                              ; preds = %482, %334, %331, %326
  %486 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %16) #14
  %487 = icmp eq ptr %486, null
  br i1 %487, label %488, label %326, !llvm.loop !72

488:                                              ; preds = %485, %314
  br i1 %52, label %491, label %489

489:                                              ; preds = %488
  %490 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  call void %490(ptr noundef %57) #12
  br label %491

491:                                              ; preds = %489, %488
  %492 = icmp eq ptr %66, null
  br i1 %492, label %495, label %493

493:                                              ; preds = %491
  %494 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  call void %494(ptr noundef nonnull %66) #12
  br label %495

495:                                              ; preds = %493, %491
  %496 = icmp eq i8 %4, 0
  br i1 %496, label %564, label %497

497:                                              ; preds = %495
  %498 = icmp eq i8 %14, 0
  br i1 %498, label %499, label %502

499:                                              ; preds = %497
  br i1 %125, label %500, label %564

500:                                              ; preds = %499
  %501 = zext nneg i32 %43 to i64
  br label %558

502:                                              ; preds = %497
  %503 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %16, ptr noundef nonnull %0, i8 noundef zeroext 3, ptr noundef null) #14
  %504 = icmp eq ptr %503, null
  br i1 %504, label %505, label %508

505:                                              ; preds = %542, %502
  br i1 %125, label %506, label %564

506:                                              ; preds = %505
  %507 = zext nneg i32 %43 to i64
  br label %545

508:                                              ; preds = %502, %542
  %509 = phi ptr [ %543, %542 ], [ %503, %502 ]
  %510 = call fastcc i32 @_bm_elem_index_get(ptr noundef nonnull %509) #14
  %511 = icmp eq i32 %510, -1
  br i1 %511, label %542, label %512

512:                                              ; preds = %508
  %513 = getelementptr inbounds %struct.BMFace, ptr %509, i64 0, i32 2
  %514 = load ptr, ptr %513, align 8, !tbaa !66
  br label %515

515:                                              ; preds = %528, %512
  %516 = phi i32 [ 0, %512 ], [ %526, %528 ]
  %517 = phi ptr [ %514, %512 ], [ %530, %528 ]
  %518 = getelementptr inbounds %struct.BMLoop, ptr %517, i64 0, i32 1
  %519 = load ptr, ptr %518, align 8, !tbaa !50
  %520 = call fastcc i32 @_bm_elem_index_get(ptr noundef %519) #14
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds ptr, ptr %49, i64 %521
  %523 = load ptr, ptr %522, align 8, !tbaa !43
  %524 = icmp eq ptr %523, null
  %525 = select i1 %524, i32 2, i32 1
  %526 = or i32 %525, %516
  %527 = icmp eq i32 %526, 3
  br i1 %527, label %532, label %528

528:                                              ; preds = %515
  %529 = getelementptr inbounds %struct.BMLoop, ptr %517, i64 0, i32 6
  %530 = load ptr, ptr %529, align 8, !tbaa !61
  %531 = icmp eq ptr %530, %514
  br i1 %531, label %542, label %515, !llvm.loop !73

532:                                              ; preds = %515, %532
  %533 = phi ptr [ %540, %532 ], [ %514, %515 ]
  %534 = getelementptr inbounds %struct.BMLoop, ptr %533, i64 0, i32 1
  %535 = load ptr, ptr %534, align 8, !tbaa !50
  %536 = call fastcc i32 @_bm_elem_index_get(ptr noundef %535) #14
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds ptr, ptr %51, i64 %537
  store ptr null, ptr %538, align 8, !tbaa !43
  %539 = getelementptr inbounds %struct.BMLoop, ptr %533, i64 0, i32 6
  %540 = load ptr, ptr %539, align 8, !tbaa !61
  %541 = icmp eq ptr %540, %514
  br i1 %541, label %542, label %532, !llvm.loop !74

542:                                              ; preds = %528, %532, %508
  %543 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %16) #14
  %544 = icmp eq ptr %543, null
  br i1 %544, label %505, label %508, !llvm.loop !75

545:                                              ; preds = %506, %555
  %546 = phi i64 [ 0, %506 ], [ %556, %555 ]
  %547 = getelementptr inbounds ptr, ptr %47, i64 %546
  %548 = load ptr, ptr %547, align 8, !tbaa !43
  %549 = call fastcc i32 @_bm_elem_index_get(ptr noundef %548) #14
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds ptr, ptr %51, i64 %550
  %552 = load ptr, ptr %551, align 8, !tbaa !43
  %553 = icmp eq ptr %552, null
  br i1 %553, label %555, label %554

554:                                              ; preds = %545
  call void @BM_vert_kill(ptr noundef nonnull %0, ptr noundef %548) #12
  br label %555

555:                                              ; preds = %545, %554
  %556 = add nuw nsw i64 %546, 1
  %557 = icmp eq i64 %556, %507
  br i1 %557, label %564, label %545, !llvm.loop !76

558:                                              ; preds = %500, %558
  %559 = phi i64 [ 0, %500 ], [ %562, %558 ]
  %560 = getelementptr inbounds ptr, ptr %47, i64 %559
  %561 = load ptr, ptr %560, align 8, !tbaa !43
  call void @BM_vert_kill(ptr noundef nonnull %0, ptr noundef %561) #12
  %562 = add nuw nsw i64 %559, 1
  %563 = icmp eq i64 %562, %501
  br i1 %563, label %564, label %558, !llvm.loop !77

564:                                              ; preds = %555, %558, %505, %499, %495
  %565 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  call void %565(ptr noundef %47) #12
  %566 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  call void %566(ptr noundef %49) #12
  %567 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  call void %567(ptr noundef %51) #12
  %568 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  call void %568(ptr noundef %199) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %17) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %16) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @CustomData_get_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_data_layer_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !78 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) #14
  %5 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #14
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @_bm_elem_index_set(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #3 !PGOFuncName !79 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 8, !tbaa !80
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_disable(ptr nocapture noundef %0) unnamed_addr #4 !PGOFuncName !81 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !82
  %4 = and i8 %3, -17
  store i8 %4, ptr %2, align 1, !tbaa !82
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !83 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !84
  %4 = tail call ptr %3(ptr noundef %0) #12
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !86 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !82
  %4 = and i8 %3, 16
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_enable(ptr nocapture noundef %0) unnamed_addr #4 !PGOFuncName !87 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !82
  %4 = or i8 %3, 16
  store i8 %4, ptr %2, align 1, !tbaa !82
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_set(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #4 !PGOFuncName !88 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  tail call fastcc void @_bm_elem_flag_enable(ptr noundef %0) #14
  br label %6

5:                                                ; preds = %2
  tail call fastcc void @_bm_elem_flag_disable(ptr noundef %0) #14
  br label %6

6:                                                ; preds = %5, %4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bm_loop_is_radial_boundary(ptr noundef readonly %0) unnamed_addr #6 !PGOFuncName !89 {
  %2 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !90
  %4 = icmp eq ptr %3, %0
  br i1 %4, label %15, label %5

5:                                                ; preds = %1, %11
  %6 = phi ptr [ %13, %11 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !91
  %9 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %8) #14
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !90
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %15, label %5, !llvm.loop !92

15:                                               ; preds = %11, %5, %1
  %16 = phi i8 [ 1, %1 ], [ 1, %11 ], [ 0, %5 ]
  ret i8 %16
}

; Function Attrs: optsize
declare float @BM_vert_calc_mean_tagged_edge_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @defvert_find_weight(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @BM_vert_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #4 !PGOFuncName !93 {
  %5 = load float, ptr %1, align 4, !tbaa !58
  %6 = load float, ptr %2, align 4, !tbaa !58
  %7 = tail call float @llvm.fmuladd.f32(float %6, float %3, float %5)
  store float %7, ptr %0, align 4, !tbaa !58
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !58
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !58
  %12 = tail call float @llvm.fmuladd.f32(float %11, float %3, float %9)
  %13 = getelementptr inbounds float, ptr %0, i64 1
  store float %12, ptr %13, align 4, !tbaa !58
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !58
  %16 = getelementptr inbounds float, ptr %2, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !58
  %18 = tail call float @llvm.fmuladd.f32(float %17, float %3, float %15)
  %19 = getelementptr inbounds float, ptr %0, i64 2
  store float %18, ptr %19, align 4, !tbaa !58
  ret void
}

; Function Attrs: optsize
declare void @BM_mesh_elem_hflag_disable_all(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_loop_calc_face_tangent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @_bm_elem_index_get(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !94 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !80
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc float @shell_angle_to_dist(float noundef %0) unnamed_addr #8 !PGOFuncName !95 {
  %2 = fcmp olt float %0, 0x3E45798EE0000000
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = tail call float @cosf(float noundef %0) #12
  %5 = fdiv float 1.000000e+00, %4
  %6 = tail call float @llvm.fabs.f32(float %5)
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi float [ %6, %3 ], [ 1.000000e+00, %1 ]
  ret float %8
}

; Function Attrs: optsize
declare float @BM_loop_calc_face_angle(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3fl(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #4 !PGOFuncName !96 {
  %4 = load float, ptr %1, align 4, !tbaa !58
  %5 = load float, ptr %0, align 4, !tbaa !58
  %6 = tail call float @llvm.fmuladd.f32(float %4, float %2, float %5)
  store float %6, ptr %0, align 4, !tbaa !58
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !58
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !58
  %11 = tail call float @llvm.fmuladd.f32(float %8, float %2, float %10)
  store float %11, ptr %9, align 4, !tbaa !58
  %12 = getelementptr inbounds float, ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !58
  %14 = getelementptr inbounds float, ptr %0, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !58
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %2, float %15)
  store float %16, ptr %14, align 4, !tbaa !58
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_vert_boundary_tangent(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 !PGOFuncName !97 {
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #13
  %11 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 4, ptr noundef %0) #14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %38, label %13

13:                                               ; preds = %5, %20
  %14 = phi ptr [ %22, %20 ], [ %11, %5 ]
  %15 = phi ptr [ %21, %20 ], [ null, %5 ]
  %16 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %14) #14
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = icmp eq ptr %15, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %18, %13
  %21 = phi ptr [ %15, %13 ], [ %14, %18 ]
  %22 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #14
  %23 = icmp eq ptr %22, null
  br i1 %23, label %38, label %13, !llvm.loop !98

24:                                               ; preds = %18
  %25 = call fastcc ptr @bm_edge_tag_faceloop(ptr noundef nonnull %15) #14
  %26 = call fastcc ptr @bm_edge_tag_faceloop(ptr noundef nonnull %14) #14
  %27 = getelementptr inbounds %struct.BMLoop, ptr %25, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !91
  %29 = getelementptr inbounds %struct.BMFace, ptr %28, i64 0, i32 4
  %30 = getelementptr inbounds %struct.BMLoop, ptr %26, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !91
  %32 = getelementptr inbounds %struct.BMFace, ptr %31, i64 0, i32 4
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %29, ptr noundef nonnull %32) #14
  %33 = call fastcc ptr @BM_edge_other_vert(ptr noundef nonnull %15, ptr noundef %0) #14
  %34 = call fastcc ptr @BM_edge_other_vert(ptr noundef nonnull %14, ptr noundef %0) #14
  %35 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 2
  %36 = getelementptr inbounds %struct.BMVert, ptr %33, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %35, ptr noundef nonnull %36) #14
  %37 = getelementptr inbounds %struct.BMVert, ptr %34, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %37, ptr noundef nonnull %35) #14
  call fastcc void @normalize_v3(ptr noundef nonnull %9) #14
  call fastcc void @normalize_v3(ptr noundef nonnull %10) #14
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10) #14
  call void @BM_edge_calc_face_tangent(ptr noundef nonnull %15, ptr noundef %25, ptr noundef nonnull %9) #12
  call void @BM_edge_calc_face_tangent(ptr noundef nonnull %14, ptr noundef %26, ptr noundef nonnull %10) #12
  call fastcc void @add_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %10) #14
  br label %47

38:                                               ; preds = %20, %5
  %39 = phi ptr [ null, %5 ], [ %21, %20 ]
  %40 = call fastcc ptr @bm_edge_tag_faceloop(ptr noundef %39) #14
  %41 = getelementptr inbounds %struct.BMLoop, ptr %40, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !91
  %43 = getelementptr inbounds %struct.BMFace, ptr %42, i64 0, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %43) #14
  %44 = call fastcc ptr @BM_edge_other_vert(ptr noundef %39, ptr noundef %0) #14
  %45 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 2
  %46 = getelementptr inbounds %struct.BMVert, ptr %44, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %45, ptr noundef nonnull %46) #14
  call void @BM_edge_calc_face_tangent(ptr noundef %39, ptr noundef %40, ptr noundef nonnull %9) #12
  br label %47

47:                                               ; preds = %38, %24
  %48 = phi ptr [ null, %38 ], [ %33, %24 ]
  %49 = phi ptr [ null, %38 ], [ %34, %24 ]
  store ptr %48, ptr %3, align 8, !tbaa !43
  store ptr %49, ptr %4, align 8, !tbaa !43
  call fastcc void @cross_v3_v3v3(ptr noundef %1, ptr noundef nonnull %8, ptr noundef nonnull %7) #14
  call fastcc void @normalize_v3(ptr noundef %1) #14
  %50 = call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef nonnull %9) #14
  %51 = fcmp ogt float %50, 0.000000e+00
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  call fastcc void @negate_v3(ptr noundef %1) #14
  br label %53

53:                                               ; preds = %52, %47
  call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #13
  ret void
}

; Function Attrs: optsize
declare float @angle_on_axis_v3v3v3_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_face_create_quad_tri(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_elem_attrs_copy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_edge_exists(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_vert_kill(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !99 {
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %5, align 4, !tbaa !100
  %6 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  switch i8 %2, label %25 [
    i8 1, label %8
    i8 2, label %11
    i8 3, label %14
    i8 4, label %17
    i8 5, label %18
    i8 6, label %19
    i8 7, label %20
    i8 8, label %21
    i8 9, label %22
    i8 10, label %23
    i8 11, label %24
  ]

8:                                                ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !101
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !84
  %9 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !102
  br label %26

11:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !101
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !84
  %12 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !103
  br label %26

14:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !101
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !84
  %15 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !104
  br label %26

17:                                               ; preds = %4
  store ptr @bmiter__edge_of_vert_begin, ptr %6, align 8, !tbaa !101
  store ptr @bmiter__edge_of_vert_step, ptr %7, align 8, !tbaa !84
  br label %26

18:                                               ; preds = %4
  store ptr @bmiter__face_of_vert_begin, ptr %6, align 8, !tbaa !101
  store ptr @bmiter__face_of_vert_step, ptr %7, align 8, !tbaa !84
  br label %26

19:                                               ; preds = %4
  store ptr @bmiter__loop_of_vert_begin, ptr %6, align 8, !tbaa !101
  store ptr @bmiter__loop_of_vert_step, ptr %7, align 8, !tbaa !84
  br label %26

20:                                               ; preds = %4
  store ptr @bmiter__vert_of_edge_begin, ptr %6, align 8, !tbaa !101
  store ptr @bmiter__vert_of_edge_step, ptr %7, align 8, !tbaa !84
  br label %26

21:                                               ; preds = %4
  store ptr @bmiter__face_of_edge_begin, ptr %6, align 8, !tbaa !101
  store ptr @bmiter__face_of_edge_step, ptr %7, align 8, !tbaa !84
  br label %26

22:                                               ; preds = %4
  store ptr @bmiter__vert_of_face_begin, ptr %6, align 8, !tbaa !101
  store ptr @bmiter__vert_of_face_step, ptr %7, align 8, !tbaa !84
  br label %26

23:                                               ; preds = %4
  store ptr @bmiter__edge_of_face_begin, ptr %6, align 8, !tbaa !101
  store ptr @bmiter__edge_of_face_step, ptr %7, align 8, !tbaa !84
  br label %26

24:                                               ; preds = %4
  store ptr @bmiter__loop_of_face_begin, ptr %6, align 8, !tbaa !101
  store ptr @bmiter__loop_of_face_step, ptr %7, align 8, !tbaa !84
  br label %26

25:                                               ; preds = %4
  unreachable

26:                                               ; preds = %24, %23, %22, %21, %20, %19, %18, %17, %14, %11, %8
  %27 = phi ptr [ %3, %24 ], [ %3, %23 ], [ %3, %22 ], [ %3, %21 ], [ %3, %20 ], [ %3, %19 ], [ %3, %18 ], [ %3, %17 ], [ %16, %14 ], [ %13, %11 ], [ %10, %8 ]
  %28 = phi ptr [ @bmiter__loop_of_face_begin, %24 ], [ @bmiter__edge_of_face_begin, %23 ], [ @bmiter__vert_of_face_begin, %22 ], [ @bmiter__face_of_edge_begin, %21 ], [ @bmiter__vert_of_edge_begin, %20 ], [ @bmiter__loop_of_vert_begin, %19 ], [ @bmiter__face_of_vert_begin, %18 ], [ @bmiter__edge_of_vert_begin, %17 ], [ @bmiter__elem_of_mesh_begin, %14 ], [ @bmiter__elem_of_mesh_begin, %11 ], [ @bmiter__elem_of_mesh_begin, %8 ]
  store ptr %27, ptr %0, align 8, !tbaa !105
  tail call void %28(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__edge_of_vert_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__edge_of_vert_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__face_of_vert_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__face_of_vert_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__loop_of_vert_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__loop_of_vert_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__vert_of_edge_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__vert_of_edge_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__face_of_edge_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__face_of_edge_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__vert_of_face_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__vert_of_face_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__edge_of_face_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__edge_of_face_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__loop_of_face_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__loop_of_face_step(ptr noundef) #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bm_edge_tag_faceloop(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !106 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !107
  br label %4

4:                                                ; preds = %10, %1
  %5 = phi ptr [ %3, %1 ], [ %12, %10 ]
  %6 = getelementptr inbounds %struct.BMLoop, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !91
  %8 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %7) #14
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.BMLoop, ptr %5, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !90
  %13 = icmp eq ptr %12, %3
  br i1 %13, label %14, label %4, !llvm.loop !108

14:                                               ; preds = %10, %4
  %15 = phi ptr [ %5, %4 ], [ null, %10 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 !PGOFuncName !109 {
  %4 = load float, ptr %1, align 4, !tbaa !58
  %5 = load float, ptr %2, align 4, !tbaa !58
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !58
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !58
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !58
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !58
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !58
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !58
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !58
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @BM_edge_other_vert(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #5 !PGOFuncName !110 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !111
  %5 = icmp eq ptr %4, %1
  %6 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !112
  %8 = icmp eq ptr %7, %1
  %9 = select i1 %8, ptr %4, ptr null
  %10 = select i1 %5, ptr %7, ptr %9
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 !PGOFuncName !113 {
  %4 = load float, ptr %1, align 4, !tbaa !58
  %5 = load float, ptr %2, align 4, !tbaa !58
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !58
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !58
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !58
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !58
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !58
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !58
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !58
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #10 !PGOFuncName !114 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #14
  ret void
}

; Function Attrs: optsize
declare void @BM_edge_calc_face_tangent(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !115 {
  %3 = load float, ptr %1, align 4, !tbaa !58
  %4 = load float, ptr %0, align 4, !tbaa !58
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !58
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !58
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !58
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !58
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !58
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !58
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !58
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !116 {
  %3 = load float, ptr %1, align 4, !tbaa !58
  store float %3, ptr %0, align 4, !tbaa !58
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !58
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !58
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !58
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !58
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 !PGOFuncName !117 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !58
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !58
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !58
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !58
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !58
  %15 = load float, ptr %8, align 4, !tbaa !58
  %16 = load float, ptr %2, align 4, !tbaa !58
  %17 = load float, ptr %1, align 4, !tbaa !58
  %18 = load float, ptr %6, align 4, !tbaa !58
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !58
  %23 = load float, ptr %1, align 4, !tbaa !58
  %24 = load float, ptr %10, align 4, !tbaa !58
  %25 = load float, ptr %4, align 4, !tbaa !58
  %26 = load float, ptr %2, align 4, !tbaa !58
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !58
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !118 {
  %3 = load float, ptr %0, align 4, !tbaa !58
  %4 = load float, ptr %1, align 4, !tbaa !58
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !58
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !58
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !58
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !58
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3(ptr nocapture noundef %0) unnamed_addr #4 !PGOFuncName !119 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !58
  %3 = fneg <2 x float> %2
  store <2 x float> %3, ptr %0, align 4, !tbaa !58
  %4 = getelementptr inbounds float, ptr %0, i64 2
  %5 = load float, ptr %4, align 4, !tbaa !58
  %6 = fneg float %5
  store float %6, ptr %4, align 4, !tbaa !58
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !PGOFuncName !120 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #14
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #12
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #14
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #14
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #4 !PGOFuncName !121 {
  %4 = load float, ptr %1, align 4, !tbaa !58
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !58
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !58
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !58
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !58
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !58
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #3 !PGOFuncName !122 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !58
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !58
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind optsize }
attributes #13 = { nounwind }
attributes #14 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
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
!44 = distinct !{!44, !45}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!35, !37, i64 28}
!47 = !{!48, !36, i64 32}
!48 = !{!"BMFace", !49, i64 0, !39, i64 16, !39, i64 24, !36, i64 32, !37, i64 36, !41, i64 48}
!49 = !{!"BMHeader", !39, i64 0, !36, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!50 = !{!51, !39, i64 16}
!51 = !{!"BMLoop", !49, i64 0, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64}
!52 = !{!51, !39, i64 24}
!53 = !{i8 0, i8 2}
!54 = distinct !{!54, !45}
!55 = distinct !{!55, !45}
!56 = !{!57, !39, i64 0}
!57 = !{!"BMVert", !49, i64 0, !39, i64 16, !37, i64 24, !37, i64 36, !39, i64 48}
!58 = !{!59, !59, i64 0}
!59 = !{!"float", !37, i64 0}
!60 = distinct !{!60, !45}
!61 = !{!51, !39, i64 56}
!62 = distinct !{!62, !45}
!63 = distinct !{!63, !45}
!64 = distinct !{!64, !45}
!65 = !{!48, !41, i64 48}
!66 = !{!48, !39, i64 24}
!67 = !{!51, !39, i64 64}
!68 = !{!69, !39, i64 0}
!69 = !{!"BMEdge", !49, i64 0, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !70, i64 48, !70, i64 64}
!70 = !{!"BMDiskLink", !39, i64 0, !39, i64 8}
!71 = distinct !{!71, !45}
!72 = distinct !{!72, !45}
!73 = distinct !{!73, !45}
!74 = distinct !{!74, !45}
!75 = distinct !{!75, !45}
!76 = distinct !{!76, !45}
!77 = distinct !{!77, !45}
!78 = !{!"bmesh_wireframe.c:BM_iter_new"}
!79 = !{!"bmesh_wireframe.c:_bm_elem_index_set"}
!80 = !{!49, !36, i64 8}
!81 = !{!"bmesh_wireframe.c:_bm_elem_flag_disable"}
!82 = !{!49, !37, i64 13}
!83 = !{!"bmesh_wireframe.c:BM_iter_step"}
!84 = !{!85, !39, i64 48}
!85 = !{!"BMIter", !37, i64 0, !39, i64 40, !39, i64 48, !36, i64 56, !37, i64 60}
!86 = !{!"bmesh_wireframe.c:_bm_elem_flag_test"}
!87 = !{!"bmesh_wireframe.c:_bm_elem_flag_enable"}
!88 = !{!"bmesh_wireframe.c:_bm_elem_flag_set"}
!89 = !{!"bmesh_wireframe.c:bm_loop_is_radial_boundary"}
!90 = !{!51, !39, i64 40}
!91 = !{!51, !39, i64 32}
!92 = distinct !{!92, !45}
!93 = !{!"bmesh_wireframe.c:madd_v3_v3v3fl"}
!94 = !{!"bmesh_wireframe.c:_bm_elem_index_get"}
!95 = !{!"bmesh_wireframe.c:shell_angle_to_dist"}
!96 = !{!"bmesh_wireframe.c:madd_v3_v3fl"}
!97 = !{!"bmesh_wireframe.c:bm_vert_boundary_tangent"}
!98 = distinct !{!98, !45}
!99 = !{!"bmesh_wireframe.c:BM_iter_init"}
!100 = !{!85, !37, i64 60}
!101 = !{!85, !39, i64 40}
!102 = !{!35, !39, i64 32}
!103 = !{!35, !39, i64 40}
!104 = !{!35, !39, i64 56}
!105 = !{!37, !37, i64 0}
!106 = !{!"bmesh_wireframe.c:bm_edge_tag_faceloop"}
!107 = !{!69, !39, i64 40}
!108 = distinct !{!108, !45}
!109 = !{!"bmesh_wireframe.c:add_v3_v3v3"}
!110 = !{!"bmesh_wireframe.c:BM_edge_other_vert"}
!111 = !{!69, !39, i64 24}
!112 = !{!69, !39, i64 32}
!113 = !{!"bmesh_wireframe.c:sub_v3_v3v3"}
!114 = !{!"bmesh_wireframe.c:normalize_v3"}
!115 = !{!"bmesh_wireframe.c:add_v3_v3"}
!116 = !{!"bmesh_wireframe.c:copy_v3_v3"}
!117 = !{!"bmesh_wireframe.c:cross_v3_v3v3"}
!118 = !{!"bmesh_wireframe.c:dot_v3v3"}
!119 = !{!"bmesh_wireframe.c:negate_v3"}
!120 = !{!"bmesh_wireframe.c:normalize_v3_v3"}
!121 = !{!"bmesh_wireframe.c:mul_v3_v3fl"}
!122 = !{!"bmesh_wireframe.c:zero_v3"}
