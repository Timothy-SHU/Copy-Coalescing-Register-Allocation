; ModuleID = 'blender/source/blender/bmesh/tools/bmesh_decimate_dissolve.c'
source_filename = "blender/source/blender/bmesh/tools/bmesh_decimate_dissolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMFlagLayer = type { i16 }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }

@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.BM_mesh_decimate_dissolve_ex = private unnamed_addr constant [29 x i8] c"BM_mesh_decimate_dissolve_ex\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local void @BM_mesh_decimate_dissolve_ex(ptr noundef %0, float noundef %1, i8 noundef zeroext %2, i32 noundef %3, ptr nocapture noundef %4, i32 noundef %5, ptr nocapture noundef readonly %6, i32 noundef %7, i16 noundef signext %8) local_unnamed_addr #0 {
  %10 = alloca %struct.BMIter, align 8
  %11 = alloca %struct.BMIter, align 8
  %12 = icmp eq i8 %2, 0
  %13 = tail call i32 @llvm.smax.i32(i32 %5, i32 %7)
  %14 = select i1 %12, i32 %13, i32 %7
  %15 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %16 = sext i32 %14 to i64
  %17 = shl nsw i64 %16, 3
  %18 = tail call ptr %15(i64 noundef %17, ptr noundef nonnull @__func__.BM_mesh_decimate_dissolve_ex) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #4
  %19 = tail call ptr @BLI_heap_new_ex(i32 noundef %7) #4
  %20 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 4
  store i8 2, ptr %20, align 4, !tbaa !38
  %21 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %21, align 8, !tbaa !41
  %22 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %22, align 8, !tbaa !42
  %23 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %24 = load ptr, ptr %23, align 8, !tbaa !43
  store ptr %24, ptr %10, align 8, !tbaa !48
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %10) #4
  %25 = load ptr, ptr %22, align 8, !tbaa !42
  %26 = call ptr %25(ptr noundef nonnull %10) #4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %42, label %28

28:                                               ; preds = %9, %28
  %29 = phi ptr [ %40, %28 ], [ %26, %9 ]
  %30 = getelementptr inbounds %struct.BMEdge, ptr %29, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !49
  %32 = icmp eq ptr %31, null
  %33 = getelementptr inbounds %struct.BMHeader, ptr %29, i64 0, i32 3
  %34 = load i8, ptr %33, align 1, !tbaa !53
  %35 = and i8 %34, -17
  %36 = select i1 %32, i8 16, i8 0
  %37 = or disjoint i8 %35, %36
  store i8 %37, ptr %33, align 1, !tbaa !53
  %38 = getelementptr inbounds %struct.BMHeader, ptr %29, i64 0, i32 1
  store i32 -1, ptr %38, align 8, !tbaa !54
  %39 = load ptr, ptr %22, align 8, !tbaa !42
  %40 = call ptr %39(ptr noundef nonnull %10) #4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %28, !llvm.loop !55

42:                                               ; preds = %28, %9
  %43 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %44 = load i8, ptr %43, align 4, !tbaa !58
  %45 = or i8 %44, 2
  store i8 %45, ptr %43, align 4, !tbaa !58
  %46 = icmp sgt i32 %7, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = and i32 %3, 4
  %49 = icmp eq i32 %48, 0
  %50 = and i32 %3, 2
  %51 = icmp eq i32 %50, 0
  %52 = and i32 %3, 1
  %53 = icmp ne i32 %52, 0
  %54 = zext nneg i32 %7 to i64
  br label %67

55:                                               ; preds = %123, %42
  %56 = call zeroext i8 @BLI_heap_is_empty(ptr noundef %19) #4
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %260

58:                                               ; preds = %55
  %59 = icmp eq i16 %8, 0
  %60 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %61 = and i32 %3, 4
  %62 = icmp eq i32 %61, 0
  %63 = and i32 %3, 2
  %64 = icmp eq i32 %63, 0
  %65 = and i32 %3, 1
  %66 = icmp ne i32 %65, 0
  br label %131

67:                                               ; preds = %47, %123
  %68 = phi i64 [ 0, %47 ], [ %129, %123 ]
  %69 = getelementptr inbounds ptr, ptr %6, i64 %68
  %70 = load ptr, ptr %69, align 8, !tbaa !34
  %71 = getelementptr inbounds %struct.BMEdge, ptr %70, i64 0, i32 4
  %72 = load ptr, ptr %71, align 8, !tbaa !49
  %73 = icmp eq ptr %72, null
  br i1 %73, label %88, label %74

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.BMLoop, ptr %72, i64 0, i32 4
  %76 = load ptr, ptr %75, align 8, !tbaa !59
  %77 = icmp eq ptr %76, %72
  br i1 %77, label %88, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.BMLoop, ptr %76, i64 0, i32 4
  %80 = load ptr, ptr %79, align 8, !tbaa !59
  %81 = icmp eq ptr %80, %72
  br i1 %81, label %82, label %88

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.BMLoop, ptr %76, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !61
  %85 = getelementptr inbounds %struct.BMLoop, ptr %72, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !61
  %87 = icmp eq ptr %84, %86
  br label %88

88:                                               ; preds = %82, %78, %74, %67
  %89 = phi i1 [ true, %78 ], [ true, %74 ], [ true, %67 ], [ %87, %82 ]
  br i1 %73, label %123, label %90

90:                                               ; preds = %88
  %91 = getelementptr inbounds %struct.BMLoop, ptr %72, i64 0, i32 4
  %92 = load ptr, ptr %91, align 8, !tbaa !59
  %93 = icmp eq ptr %92, %72
  br i1 %93, label %123, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.BMLoop, ptr %92, i64 0, i32 4
  %96 = load ptr, ptr %95, align 8, !tbaa !59
  %97 = icmp eq ptr %96, %72
  br i1 %97, label %98, label %123

98:                                               ; preds = %94
  br i1 %49, label %104, label %99

99:                                               ; preds = %98
  %100 = getelementptr inbounds %struct.BMHeader, ptr %70, i64 0, i32 3
  %101 = load i8, ptr %100, align 1, !tbaa !53
  %102 = and i8 %101, 4
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %104, label %123

104:                                              ; preds = %99, %98
  br i1 %51, label %117, label %105

105:                                              ; preds = %104
  %106 = getelementptr inbounds %struct.BMLoop, ptr %72, i64 0, i32 3
  %107 = load ptr, ptr %106, align 8, !tbaa !62
  %108 = getelementptr inbounds %struct.BMFace, ptr %107, i64 0, i32 5
  %109 = load i16, ptr %108, align 8, !tbaa !63
  %110 = getelementptr inbounds %struct.BMLoop, ptr %92, i64 0, i32 3
  %111 = load ptr, ptr %110, align 8, !tbaa !62
  %112 = getelementptr inbounds %struct.BMFace, ptr %111, i64 0, i32 5
  %113 = load i16, ptr %112, align 8, !tbaa !63
  %114 = icmp ne i16 %109, %113
  %115 = select i1 %53, i1 %89, i1 false
  %116 = select i1 %114, i1 true, i1 %115
  br i1 %116, label %123, label %119

117:                                              ; preds = %104
  %118 = select i1 %53, i1 %89, i1 false
  br i1 %118, label %123, label %119

119:                                              ; preds = %105, %117
  %120 = call float @BM_edge_calc_face_angle(ptr noundef %70) #4
  %121 = fsub float 0x400921FB60000000, %120
  %122 = select i1 %89, float %121, float %120
  br label %123

123:                                              ; preds = %88, %90, %94, %99, %105, %117, %119
  %124 = phi float [ %122, %119 ], [ 0x47EFFFFFE0000000, %117 ], [ 0x47EFFFFFE0000000, %105 ], [ 0x47EFFFFFE0000000, %99 ], [ 0x47EFFFFFE0000000, %94 ], [ 0x47EFFFFFE0000000, %88 ], [ 0x47EFFFFFE0000000, %90 ]
  %125 = call ptr @BLI_heap_insert(ptr noundef %19, float noundef %124, ptr noundef %70) #4
  %126 = getelementptr inbounds ptr, ptr %18, i64 %68
  store ptr %125, ptr %126, align 8, !tbaa !34
  %127 = getelementptr inbounds %struct.BMHeader, ptr %70, i64 0, i32 1
  %128 = trunc i64 %68 to i32
  store i32 %128, ptr %127, align 8, !tbaa !54
  %129 = add nuw nsw i64 %68, 1
  %130 = icmp eq i64 %129, %54
  br i1 %130, label %55, label %67, !llvm.loop !65

131:                                              ; preds = %58, %257
  %132 = call ptr @BLI_heap_top(ptr noundef %19) #4
  %133 = call float @BLI_heap_node_value(ptr noundef %132) #4
  %134 = fcmp olt float %133, %1
  br i1 %134, label %135, label %260

135:                                              ; preds = %131
  %136 = call ptr @BLI_heap_node_ptr(ptr noundef %132) #4
  %137 = getelementptr inbounds %struct.BMHeader, ptr %136, i64 0, i32 1
  %138 = load i32, ptr %137, align 8, !tbaa !54
  %139 = getelementptr inbounds %struct.BMEdge, ptr %136, i64 0, i32 4
  %140 = load ptr, ptr %139, align 8, !tbaa !49
  %141 = icmp eq ptr %140, null
  br i1 %141, label %151, label %142

142:                                              ; preds = %135
  %143 = getelementptr inbounds %struct.BMLoop, ptr %140, i64 0, i32 4
  %144 = load ptr, ptr %143, align 8, !tbaa !59
  %145 = icmp eq ptr %144, %140
  br i1 %145, label %151, label %146

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.BMLoop, ptr %144, i64 0, i32 4
  %148 = load ptr, ptr %147, align 8, !tbaa !59
  %149 = icmp eq ptr %148, %140
  %150 = zext i1 %149 to i8
  br label %151

151:                                              ; preds = %135, %142, %146
  %152 = phi i8 [ 0, %142 ], [ 0, %135 ], [ %150, %146 ]
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %253, label %154

154:                                              ; preds = %151
  %155 = getelementptr inbounds %struct.BMLoop, ptr %140, i64 0, i32 3
  %156 = load ptr, ptr %155, align 8, !tbaa !62
  %157 = getelementptr inbounds %struct.BMLoop, ptr %140, i64 0, i32 4
  %158 = load ptr, ptr %157, align 8, !tbaa !59
  %159 = getelementptr inbounds %struct.BMLoop, ptr %158, i64 0, i32 3
  %160 = load ptr, ptr %159, align 8, !tbaa !62
  %161 = call ptr @BM_faces_join_pair(ptr noundef %0, ptr noundef %156, ptr noundef %160, ptr noundef %136, i8 noundef zeroext 0) #4
  %162 = icmp eq ptr %161, null
  br i1 %162, label %252, label %163

163:                                              ; preds = %154
  call void @BLI_heap_remove(ptr noundef %19, ptr noundef %132) #4
  %164 = sext i32 %138 to i64
  %165 = getelementptr inbounds ptr, ptr %18, i64 %164
  store ptr null, ptr %165, align 8, !tbaa !34
  call void @BM_face_normal_update(ptr noundef nonnull %161) #4
  br i1 %59, label %175, label %166

166:                                              ; preds = %163
  %167 = getelementptr inbounds %struct.BMFace, ptr %161, i64 0, i32 1
  %168 = load ptr, ptr %167, align 8, !tbaa !66
  %169 = load i32, ptr %60, align 8, !tbaa !67
  %170 = sext i32 %169 to i64
  %171 = getelementptr %struct.BMFlagLayer, ptr %168, i64 %170
  %172 = getelementptr %struct.BMFlagLayer, ptr %171, i64 -1
  %173 = load i16, ptr %172, align 2, !tbaa !68
  %174 = or i16 %173, %8
  store i16 %174, ptr %172, align 2, !tbaa !68
  br label %175

175:                                              ; preds = %166, %163
  %176 = getelementptr inbounds %struct.BMFace, ptr %161, i64 0, i32 2
  %177 = load ptr, ptr %176, align 8, !tbaa !70
  br label %178

178:                                              ; preds = %248, %175
  %179 = phi ptr [ %177, %175 ], [ %250, %248 ]
  %180 = getelementptr inbounds %struct.BMLoop, ptr %179, i64 0, i32 2
  %181 = load ptr, ptr %180, align 8, !tbaa !71
  %182 = getelementptr inbounds %struct.BMHeader, ptr %181, i64 0, i32 1
  %183 = load i32, ptr %182, align 8, !tbaa !54
  %184 = icmp eq i32 %183, -1
  br i1 %184, label %248, label %185

185:                                              ; preds = %178
  %186 = sext i32 %183 to i64
  %187 = getelementptr inbounds ptr, ptr %18, i64 %186
  %188 = load ptr, ptr %187, align 8, !tbaa !34
  %189 = icmp eq ptr %188, null
  br i1 %189, label %248, label %190

190:                                              ; preds = %185
  %191 = getelementptr inbounds %struct.BMEdge, ptr %181, i64 0, i32 4
  %192 = load ptr, ptr %191, align 8, !tbaa !49
  %193 = icmp eq ptr %192, null
  br i1 %193, label %208, label %194

194:                                              ; preds = %190
  %195 = getelementptr inbounds %struct.BMLoop, ptr %192, i64 0, i32 4
  %196 = load ptr, ptr %195, align 8, !tbaa !59
  %197 = icmp eq ptr %196, %192
  br i1 %197, label %208, label %198

198:                                              ; preds = %194
  %199 = getelementptr inbounds %struct.BMLoop, ptr %196, i64 0, i32 4
  %200 = load ptr, ptr %199, align 8, !tbaa !59
  %201 = icmp eq ptr %200, %192
  br i1 %201, label %202, label %208

202:                                              ; preds = %198
  %203 = getelementptr inbounds %struct.BMLoop, ptr %196, i64 0, i32 1
  %204 = load ptr, ptr %203, align 8, !tbaa !61
  %205 = getelementptr inbounds %struct.BMLoop, ptr %192, i64 0, i32 1
  %206 = load ptr, ptr %205, align 8, !tbaa !61
  %207 = icmp eq ptr %204, %206
  br label %208

208:                                              ; preds = %202, %198, %194, %190
  %209 = phi i1 [ true, %198 ], [ true, %194 ], [ true, %190 ], [ %207, %202 ]
  br i1 %193, label %243, label %210

210:                                              ; preds = %208
  %211 = getelementptr inbounds %struct.BMLoop, ptr %192, i64 0, i32 4
  %212 = load ptr, ptr %211, align 8, !tbaa !59
  %213 = icmp eq ptr %212, %192
  br i1 %213, label %243, label %214

214:                                              ; preds = %210
  %215 = getelementptr inbounds %struct.BMLoop, ptr %212, i64 0, i32 4
  %216 = load ptr, ptr %215, align 8, !tbaa !59
  %217 = icmp eq ptr %216, %192
  br i1 %217, label %218, label %243

218:                                              ; preds = %214
  br i1 %62, label %224, label %219

219:                                              ; preds = %218
  %220 = getelementptr inbounds %struct.BMHeader, ptr %181, i64 0, i32 3
  %221 = load i8, ptr %220, align 1, !tbaa !53
  %222 = and i8 %221, 4
  %223 = icmp eq i8 %222, 0
  br i1 %223, label %224, label %243

224:                                              ; preds = %219, %218
  br i1 %64, label %237, label %225

225:                                              ; preds = %224
  %226 = getelementptr inbounds %struct.BMLoop, ptr %192, i64 0, i32 3
  %227 = load ptr, ptr %226, align 8, !tbaa !62
  %228 = getelementptr inbounds %struct.BMFace, ptr %227, i64 0, i32 5
  %229 = load i16, ptr %228, align 8, !tbaa !63
  %230 = getelementptr inbounds %struct.BMLoop, ptr %212, i64 0, i32 3
  %231 = load ptr, ptr %230, align 8, !tbaa !62
  %232 = getelementptr inbounds %struct.BMFace, ptr %231, i64 0, i32 5
  %233 = load i16, ptr %232, align 8, !tbaa !63
  %234 = icmp ne i16 %229, %233
  %235 = select i1 %66, i1 %209, i1 false
  %236 = select i1 %234, i1 true, i1 %235
  br i1 %236, label %243, label %239

237:                                              ; preds = %224
  %238 = select i1 %66, i1 %209, i1 false
  br i1 %238, label %243, label %239

239:                                              ; preds = %225, %237
  %240 = call float @BM_edge_calc_face_angle(ptr noundef %181) #4
  %241 = fsub float 0x400921FB60000000, %240
  %242 = select i1 %209, float %241, float %240
  br label %243

243:                                              ; preds = %208, %210, %214, %219, %225, %237, %239
  %244 = phi float [ %242, %239 ], [ 0x47EFFFFFE0000000, %237 ], [ 0x47EFFFFFE0000000, %225 ], [ 0x47EFFFFFE0000000, %219 ], [ 0x47EFFFFFE0000000, %214 ], [ 0x47EFFFFFE0000000, %208 ], [ 0x47EFFFFFE0000000, %210 ]
  %245 = load ptr, ptr %187, align 8, !tbaa !34
  call void @BLI_heap_remove(ptr noundef %19, ptr noundef %245) #4
  %246 = load ptr, ptr %180, align 8, !tbaa !71
  %247 = call ptr @BLI_heap_insert(ptr noundef %19, float noundef %244, ptr noundef %246) #4
  store ptr %247, ptr %187, align 8, !tbaa !34
  br label %248

248:                                              ; preds = %243, %185, %178
  %249 = getelementptr inbounds %struct.BMLoop, ptr %179, i64 0, i32 6
  %250 = load ptr, ptr %249, align 8, !tbaa !72
  %251 = icmp eq ptr %250, %177
  br i1 %251, label %257, label %178, !llvm.loop !73

252:                                              ; preds = %154
  call void @BMO_error_clear(ptr noundef %0) #4
  br label %253

253:                                              ; preds = %151, %252
  call void @BLI_heap_remove(ptr noundef %19, ptr noundef %132) #4
  %254 = call ptr @BLI_heap_insert(ptr noundef %19, float noundef 0x47EFFFFFE0000000, ptr noundef %136) #4
  %255 = sext i32 %138 to i64
  %256 = getelementptr inbounds ptr, ptr %18, i64 %255
  store ptr %254, ptr %256, align 8, !tbaa !34
  br label %257

257:                                              ; preds = %248, %253
  %258 = call zeroext i8 @BLI_heap_is_empty(ptr noundef %19) #4
  %259 = icmp eq i8 %258, 0
  br i1 %259, label %131, label %260, !llvm.loop !74

260:                                              ; preds = %131, %257, %55
  call void @BM_mesh_elem_index_ensure(ptr noundef %0, i8 noundef zeroext 1) #4
  %261 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %262 = load i32, ptr %0, align 8, !tbaa !75
  %263 = sext i32 %262 to i64
  %264 = shl nsw i64 %263, 2
  %265 = call ptr %261(i64 noundef %264, ptr noundef nonnull @__func__.BM_mesh_decimate_dissolve_ex) #4
  %266 = load i32, ptr %0, align 8, !tbaa !75
  call void @fill_vn_i(ptr noundef %265, i32 noundef %266, i32 noundef -1) #4
  %267 = icmp sgt i32 %5, 0
  br i1 %267, label %268, label %281

268:                                              ; preds = %260
  %269 = zext nneg i32 %5 to i64
  br label %270

270:                                              ; preds = %268, %270
  %271 = phi i64 [ 0, %268 ], [ %279, %270 ]
  %272 = getelementptr inbounds ptr, ptr %4, i64 %271
  %273 = load ptr, ptr %272, align 8, !tbaa !34
  %274 = getelementptr inbounds %struct.BMHeader, ptr %273, i64 0, i32 1
  %275 = load i32, ptr %274, align 8, !tbaa !54
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, ptr %265, i64 %276
  %278 = trunc i64 %271 to i32
  store i32 %278, ptr %277, align 4, !tbaa !76
  %279 = add nuw nsw i64 %271, 1
  %280 = icmp eq i64 %279, %269
  br i1 %280, label %281, label %270, !llvm.loop !77

281:                                              ; preds = %270, %260
  %282 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %283 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 1
  %284 = load i32, ptr %283, align 4, !tbaa !78
  %285 = sext i32 %284 to i64
  %286 = shl nsw i64 %285, 3
  %287 = call ptr %282(i64 noundef %286, ptr noundef nonnull @__func__.BM_mesh_decimate_dissolve_ex) #4
  store i8 2, ptr %20, align 4, !tbaa !38
  store ptr @bmiter__elem_of_mesh_begin, ptr %21, align 8, !tbaa !41
  store ptr @bmiter__elem_of_mesh_step, ptr %22, align 8, !tbaa !42
  %288 = load ptr, ptr %23, align 8, !tbaa !43
  store ptr %288, ptr %10, align 8, !tbaa !48
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %10) #4
  %289 = load ptr, ptr %22, align 8, !tbaa !42
  %290 = call ptr %289(ptr noundef nonnull %10) #4
  %291 = icmp eq ptr %290, null
  br i1 %291, label %300, label %292

292:                                              ; preds = %281, %292
  %293 = phi i64 [ %298, %292 ], [ 0, %281 ]
  %294 = phi ptr [ %297, %292 ], [ %290, %281 ]
  %295 = getelementptr inbounds ptr, ptr %287, i64 %293
  store ptr %294, ptr %295, align 8, !tbaa !34
  %296 = load ptr, ptr %22, align 8, !tbaa !42
  %297 = call ptr %296(ptr noundef nonnull %10) #4
  %298 = add nuw i64 %293, 1
  %299 = icmp eq ptr %297, null
  br i1 %299, label %300, label %292, !llvm.loop !79

300:                                              ; preds = %292, %281
  %301 = load i32, ptr %283, align 4, !tbaa !78
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %355, label %303

303:                                              ; preds = %300
  %304 = sext i32 %301 to i64
  br label %305

305:                                              ; preds = %303, %352
  %306 = phi i64 [ %304, %303 ], [ %307, %352 ]
  %307 = add nsw i64 %306, -1
  %308 = getelementptr inbounds ptr, ptr %287, i64 %307
  %309 = load ptr, ptr %308, align 8, !tbaa !34
  %310 = getelementptr inbounds %struct.BMEdge, ptr %309, i64 0, i32 4
  %311 = load ptr, ptr %310, align 8, !tbaa !49
  %312 = icmp eq ptr %311, null
  br i1 %312, label %313, label %352

313:                                              ; preds = %305
  %314 = getelementptr inbounds %struct.BMHeader, ptr %309, i64 0, i32 3
  %315 = load i8, ptr %314, align 1, !tbaa !53
  %316 = and i8 %315, 16
  %317 = icmp eq i8 %316, 0
  br i1 %317, label %318, label %352

318:                                              ; preds = %313
  %319 = getelementptr inbounds %struct.BMEdge, ptr %309, i64 0, i32 2
  %320 = load ptr, ptr %319, align 8, !tbaa !80
  %321 = getelementptr inbounds %struct.BMEdge, ptr %309, i64 0, i32 3
  %322 = load ptr, ptr %321, align 8, !tbaa !81
  call void @BM_edge_kill(ptr noundef nonnull %0, ptr noundef %309) #4
  %323 = getelementptr inbounds %struct.BMVert, ptr %320, i64 0, i32 4
  %324 = load ptr, ptr %323, align 8, !tbaa !82
  %325 = icmp eq ptr %324, null
  br i1 %325, label %326, label %337

326:                                              ; preds = %318
  %327 = getelementptr inbounds %struct.BMHeader, ptr %320, i64 0, i32 1
  %328 = load i32, ptr %327, align 8, !tbaa !54
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i32, ptr %265, i64 %329
  %331 = load i32, ptr %330, align 4, !tbaa !76
  %332 = icmp eq i32 %331, -1
  br i1 %332, label %336, label %333

333:                                              ; preds = %326
  %334 = sext i32 %331 to i64
  %335 = getelementptr inbounds ptr, ptr %4, i64 %334
  store ptr null, ptr %335, align 8, !tbaa !34
  br label %336

336:                                              ; preds = %333, %326
  call void @BM_vert_kill(ptr noundef nonnull %0, ptr noundef %320) #4
  br label %337

337:                                              ; preds = %336, %318
  %338 = getelementptr inbounds %struct.BMVert, ptr %322, i64 0, i32 4
  %339 = load ptr, ptr %338, align 8, !tbaa !82
  %340 = icmp eq ptr %339, null
  br i1 %340, label %341, label %352

341:                                              ; preds = %337
  %342 = getelementptr inbounds %struct.BMHeader, ptr %322, i64 0, i32 1
  %343 = load i32, ptr %342, align 8, !tbaa !54
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32, ptr %265, i64 %344
  %346 = load i32, ptr %345, align 4, !tbaa !76
  %347 = icmp eq i32 %346, -1
  br i1 %347, label %351, label %348

348:                                              ; preds = %341
  %349 = sext i32 %346 to i64
  %350 = getelementptr inbounds ptr, ptr %4, i64 %349
  store ptr null, ptr %350, align 8, !tbaa !34
  br label %351

351:                                              ; preds = %348, %341
  call void @BM_vert_kill(ptr noundef nonnull %0, ptr noundef %322) #4
  br label %352

352:                                              ; preds = %337, %351, %305, %313
  %353 = and i64 %307, 4294967295
  %354 = icmp eq i64 %353, 0
  br i1 %354, label %355, label %305, !llvm.loop !84

355:                                              ; preds = %352, %300
  %356 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %356(ptr noundef %265) #4
  %357 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %357(ptr noundef %287) #4
  call void @BLI_heap_free(ptr noundef %19, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #4
  br i1 %12, label %377, label %358

358:                                              ; preds = %355
  %359 = icmp sgt i32 %5, 0
  br i1 %359, label %360, label %520

360:                                              ; preds = %358
  %361 = zext nneg i32 %5 to i64
  br label %362

362:                                              ; preds = %360, %374
  %363 = phi i64 [ 0, %360 ], [ %375, %374 ]
  %364 = getelementptr inbounds ptr, ptr %4, i64 %363
  %365 = load ptr, ptr %364, align 8, !tbaa !34
  %366 = icmp eq ptr %365, null
  br i1 %366, label %374, label %367

367:                                              ; preds = %362
  %368 = call zeroext i8 @BM_vert_is_edge_pair(ptr noundef nonnull %365) #4
  %369 = icmp eq i8 %368, 0
  br i1 %369, label %374, label %370

370:                                              ; preds = %367
  %371 = getelementptr inbounds %struct.BMVert, ptr %365, i64 0, i32 4
  %372 = load ptr, ptr %371, align 8, !tbaa !82
  %373 = call ptr @BM_vert_collapse_edge(ptr noundef nonnull %0, ptr noundef %372, ptr noundef nonnull %365, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  br label %374

374:                                              ; preds = %370, %367, %362
  %375 = add nuw nsw i64 %363, 1
  %376 = icmp eq i64 %375, %361
  br i1 %376, label %520, label %362, !llvm.loop !85

377:                                              ; preds = %355
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #4
  %378 = getelementptr inbounds %struct.BMIter, ptr %11, i64 0, i32 4
  store i8 1, ptr %378, align 4, !tbaa !38
  %379 = getelementptr inbounds %struct.BMIter, ptr %11, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %379, align 8, !tbaa !41
  %380 = getelementptr inbounds %struct.BMIter, ptr %11, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %380, align 8, !tbaa !42
  %381 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %382 = load ptr, ptr %381, align 8, !tbaa !86
  store ptr %382, ptr %11, align 8, !tbaa !48
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %11) #4
  %383 = load ptr, ptr %380, align 8, !tbaa !42
  %384 = call ptr %383(ptr noundef nonnull %11) #4
  %385 = icmp eq ptr %384, null
  br i1 %385, label %392, label %386

386:                                              ; preds = %377, %386
  %387 = phi ptr [ %390, %386 ], [ %384, %377 ]
  %388 = getelementptr inbounds %struct.BMHeader, ptr %387, i64 0, i32 1
  store i32 -1, ptr %388, align 8, !tbaa !54
  %389 = load ptr, ptr %380, align 8, !tbaa !42
  %390 = call ptr %389(ptr noundef nonnull %11) #4
  %391 = icmp eq ptr %390, null
  br i1 %391, label %392, label %386, !llvm.loop !87

392:                                              ; preds = %386, %377
  %393 = load i8, ptr %43, align 4, !tbaa !58
  %394 = or i8 %393, 1
  store i8 %394, ptr %43, align 4, !tbaa !58
  %395 = call ptr @BLI_heap_new_ex(i32 noundef %5) #4
  %396 = icmp sgt i32 %5, 0
  br i1 %396, label %397, label %399

397:                                              ; preds = %392
  %398 = zext nneg i32 %5 to i64
  br label %402

399:                                              ; preds = %436, %392
  %400 = call zeroext i8 @BLI_heap_is_empty(ptr noundef %395) #4
  %401 = icmp eq i8 %400, 0
  br i1 %401, label %439, label %519

402:                                              ; preds = %397, %436
  %403 = phi i64 [ 0, %397 ], [ %437, %436 ]
  %404 = getelementptr inbounds ptr, ptr %4, i64 %403
  %405 = load ptr, ptr %404, align 8, !tbaa !34
  %406 = icmp eq ptr %405, null
  br i1 %406, label %436, label %407

407:                                              ; preds = %402
  %408 = call float @BM_vert_calc_edge_angle(ptr noundef nonnull %405) #4
  %409 = getelementptr inbounds %struct.BMVert, ptr %405, i64 0, i32 4
  %410 = load ptr, ptr %409, align 8, !tbaa !82
  %411 = icmp eq ptr %410, null
  br i1 %411, label %430, label %412

412:                                              ; preds = %407
  %413 = getelementptr inbounds %struct.BMEdge, ptr %410, i64 0, i32 4
  %414 = load ptr, ptr %413, align 8, !tbaa !49
  %415 = icmp eq ptr %414, null
  br i1 %415, label %430, label %416

416:                                              ; preds = %412
  %417 = getelementptr inbounds %struct.BMLoop, ptr %414, i64 0, i32 4
  %418 = load ptr, ptr %417, align 8, !tbaa !59
  %419 = icmp eq ptr %418, %414
  br i1 %419, label %430, label %420

420:                                              ; preds = %416
  %421 = getelementptr inbounds %struct.BMLoop, ptr %418, i64 0, i32 4
  %422 = load ptr, ptr %421, align 8, !tbaa !59
  %423 = icmp eq ptr %422, %414
  br i1 %423, label %424, label %430

424:                                              ; preds = %420
  %425 = fmul float %408, 0x3FE45F3060000000
  %426 = call float @BM_edge_calc_face_angle(ptr noundef nonnull %410) #4
  %427 = fmul float %426, 0x3FE45F3060000000
  %428 = fmul float %425, %427
  %429 = fmul float %428, 0x3FF921FB60000000
  br label %430

430:                                              ; preds = %407, %412, %416, %420, %424
  %431 = phi float [ %429, %424 ], [ %408, %420 ], [ %408, %407 ], [ %408, %412 ], [ %408, %416 ]
  %432 = call ptr @BLI_heap_insert(ptr noundef %395, float noundef %431, ptr noundef nonnull %405) #4
  %433 = getelementptr inbounds ptr, ptr %18, i64 %403
  store ptr %432, ptr %433, align 8, !tbaa !34
  %434 = getelementptr inbounds %struct.BMHeader, ptr %405, i64 0, i32 1
  %435 = trunc i64 %403 to i32
  store i32 %435, ptr %434, align 8, !tbaa !54
  br label %436

436:                                              ; preds = %430, %402
  %437 = add nuw nsw i64 %403, 1
  %438 = icmp eq i64 %437, %398
  br i1 %438, label %399, label %402, !llvm.loop !88

439:                                              ; preds = %399, %516
  %440 = call ptr @BLI_heap_top(ptr noundef %395) #4
  %441 = call float @BLI_heap_node_value(ptr noundef %440) #4
  %442 = fcmp olt float %441, %1
  br i1 %442, label %443, label %519

443:                                              ; preds = %439
  %444 = call ptr @BLI_heap_node_ptr(ptr noundef %440) #4
  %445 = getelementptr inbounds %struct.BMHeader, ptr %444, i64 0, i32 1
  %446 = load i32, ptr %445, align 8, !tbaa !54
  %447 = call zeroext i8 @BM_vert_is_edge_pair(ptr noundef %444) #4
  %448 = icmp eq i8 %447, 0
  br i1 %448, label %512, label %449

449:                                              ; preds = %443
  %450 = getelementptr inbounds %struct.BMVert, ptr %444, i64 0, i32 4
  %451 = load ptr, ptr %450, align 8, !tbaa !82
  %452 = call ptr @BM_vert_collapse_edge(ptr noundef nonnull %0, ptr noundef %451, ptr noundef %444, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %453 = icmp eq ptr %452, null
  br i1 %453, label %512, label %454

454:                                              ; preds = %449
  call void @BLI_heap_remove(ptr noundef %395, ptr noundef %440) #4
  %455 = sext i32 %446 to i64
  %456 = getelementptr inbounds ptr, ptr %18, i64 %455
  store ptr null, ptr %456, align 8, !tbaa !34
  %457 = getelementptr inbounds %struct.BMEdge, ptr %452, i64 0, i32 4
  %458 = load ptr, ptr %457, align 8, !tbaa !49
  %459 = icmp eq ptr %458, null
  br i1 %459, label %467, label %460

460:                                              ; preds = %454, %460
  %461 = phi ptr [ %465, %460 ], [ %458, %454 ]
  %462 = getelementptr inbounds %struct.BMLoop, ptr %461, i64 0, i32 3
  %463 = load ptr, ptr %462, align 8, !tbaa !62
  call void @BM_face_normal_update(ptr noundef %463) #4
  %464 = getelementptr inbounds %struct.BMLoop, ptr %461, i64 0, i32 4
  %465 = load ptr, ptr %464, align 8, !tbaa !59
  %466 = icmp eq ptr %465, %458
  br i1 %466, label %467, label %460, !llvm.loop !89

467:                                              ; preds = %460, %454
  store i8 7, ptr %378, align 4, !tbaa !38
  store ptr @bmiter__vert_of_edge_begin, ptr %379, align 8, !tbaa !41
  store ptr @bmiter__vert_of_edge_step, ptr %380, align 8, !tbaa !42
  store ptr %452, ptr %11, align 8, !tbaa !48
  call void @bmiter__vert_of_edge_begin(ptr noundef nonnull %11) #4
  %468 = load ptr, ptr %380, align 8, !tbaa !42
  %469 = call ptr %468(ptr noundef nonnull %11) #4
  %470 = icmp eq ptr %469, null
  br i1 %470, label %516, label %471

471:                                              ; preds = %467, %508
  %472 = phi ptr [ %510, %508 ], [ %469, %467 ]
  %473 = getelementptr inbounds %struct.BMHeader, ptr %472, i64 0, i32 1
  %474 = load i32, ptr %473, align 8, !tbaa !54
  %475 = icmp eq i32 %474, -1
  br i1 %475, label %508, label %476

476:                                              ; preds = %471
  %477 = sext i32 %474 to i64
  %478 = getelementptr inbounds ptr, ptr %18, i64 %477
  %479 = load ptr, ptr %478, align 8, !tbaa !34
  %480 = icmp eq ptr %479, null
  br i1 %480, label %508, label %481

481:                                              ; preds = %476
  %482 = call float @BM_vert_calc_edge_angle(ptr noundef nonnull %472) #4
  %483 = getelementptr inbounds %struct.BMVert, ptr %472, i64 0, i32 4
  %484 = load ptr, ptr %483, align 8, !tbaa !82
  %485 = icmp eq ptr %484, null
  br i1 %485, label %504, label %486

486:                                              ; preds = %481
  %487 = getelementptr inbounds %struct.BMEdge, ptr %484, i64 0, i32 4
  %488 = load ptr, ptr %487, align 8, !tbaa !49
  %489 = icmp eq ptr %488, null
  br i1 %489, label %504, label %490

490:                                              ; preds = %486
  %491 = getelementptr inbounds %struct.BMLoop, ptr %488, i64 0, i32 4
  %492 = load ptr, ptr %491, align 8, !tbaa !59
  %493 = icmp eq ptr %492, %488
  br i1 %493, label %504, label %494

494:                                              ; preds = %490
  %495 = getelementptr inbounds %struct.BMLoop, ptr %492, i64 0, i32 4
  %496 = load ptr, ptr %495, align 8, !tbaa !59
  %497 = icmp eq ptr %496, %488
  br i1 %497, label %498, label %504

498:                                              ; preds = %494
  %499 = fmul float %482, 0x3FE45F3060000000
  %500 = call float @BM_edge_calc_face_angle(ptr noundef nonnull %484) #4
  %501 = fmul float %500, 0x3FE45F3060000000
  %502 = fmul float %499, %501
  %503 = fmul float %502, 0x3FF921FB60000000
  br label %504

504:                                              ; preds = %481, %486, %490, %494, %498
  %505 = phi float [ %503, %498 ], [ %482, %494 ], [ %482, %481 ], [ %482, %486 ], [ %482, %490 ]
  %506 = load ptr, ptr %478, align 8, !tbaa !34
  call void @BLI_heap_remove(ptr noundef %395, ptr noundef %506) #4
  %507 = call ptr @BLI_heap_insert(ptr noundef %395, float noundef %505, ptr noundef nonnull %472) #4
  store ptr %507, ptr %478, align 8, !tbaa !34
  br label %508

508:                                              ; preds = %504, %476, %471
  %509 = load ptr, ptr %380, align 8, !tbaa !42
  %510 = call ptr %509(ptr noundef nonnull %11) #4
  %511 = icmp eq ptr %510, null
  br i1 %511, label %516, label %471, !llvm.loop !90

512:                                              ; preds = %443, %449
  call void @BLI_heap_remove(ptr noundef %395, ptr noundef %440) #4
  %513 = call ptr @BLI_heap_insert(ptr noundef %395, float noundef 0x47EFFFFFE0000000, ptr noundef %444) #4
  %514 = sext i32 %446 to i64
  %515 = getelementptr inbounds ptr, ptr %18, i64 %514
  store ptr %513, ptr %515, align 8, !tbaa !34
  br label %516

516:                                              ; preds = %508, %467, %512
  %517 = call zeroext i8 @BLI_heap_is_empty(ptr noundef %395) #4
  %518 = icmp eq i8 %517, 0
  br i1 %518, label %439, label %519, !llvm.loop !91

519:                                              ; preds = %439, %516, %399
  call void @BLI_heap_free(ptr noundef %395, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #4
  br label %520

520:                                              ; preds = %374, %358, %519
  %521 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %521(ptr noundef %18) #4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @BLI_heap_new_ex(i32 noundef) local_unnamed_addr #2

declare ptr @BLI_heap_insert(ptr noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare zeroext i8 @BLI_heap_is_empty(ptr noundef) local_unnamed_addr #2

declare float @BLI_heap_node_value(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_heap_top(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_heap_node_ptr(ptr noundef) local_unnamed_addr #2

declare ptr @BM_faces_join_pair(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BLI_heap_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_face_normal_update(ptr noundef) local_unnamed_addr #2

declare void @BMO_error_clear(ptr noundef) local_unnamed_addr #2

declare void @BM_mesh_elem_index_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @fill_vn_i(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @BM_edge_kill(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_vert_kill(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_heap_free(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BM_vert_is_edge_pair(ptr noundef) local_unnamed_addr #2

declare ptr @BM_vert_collapse_edge(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BM_mesh_decimate_dissolve(ptr noundef %0, float noundef %1, i8 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #4
  %7 = call ptr @BM_iter_as_arrayN(ptr noundef %0, i8 noundef zeroext 1, ptr noundef null, ptr noundef nonnull %5, ptr noundef null, i32 noundef 0) #4
  %8 = call ptr @BM_iter_as_arrayN(ptr noundef %0, i8 noundef zeroext 2, ptr noundef null, ptr noundef nonnull %6, ptr noundef null, i32 noundef 0) #4
  %9 = load i32, ptr %5, align 4, !tbaa !76
  %10 = load i32, ptr %6, align 4, !tbaa !76
  call void @BM_mesh_decimate_dissolve_ex(ptr noundef %0, float noundef %1, i8 noundef zeroext %2, i32 noundef %3, ptr noundef %7, i32 noundef %9, ptr noundef %8, i32 noundef %10, i16 noundef signext 0)
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %11(ptr noundef %7) #4
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %12(ptr noundef %8) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #4
  ret void
}

declare ptr @BM_iter_as_arrayN(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

declare void @bmiter__vert_of_edge_begin(ptr noundef) #2

declare ptr @bmiter__vert_of_edge_step(ptr noundef) #2

declare float @BM_edge_calc_face_angle(ptr noundef) local_unnamed_addr #2

declare float @BM_vert_calc_edge_angle(ptr noundef) local_unnamed_addr #2

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !36, i64 60}
!39 = !{!"BMIter", !36, i64 0, !35, i64 40, !35, i64 48, !40, i64 56, !36, i64 60}
!40 = !{!"int", !36, i64 0}
!41 = !{!39, !35, i64 40}
!42 = !{!39, !35, i64 48}
!43 = !{!44, !35, i64 40}
!44 = !{!"BMesh", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !36, i64 28, !36, i64 29, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !40, i64 88, !40, i64 92, !40, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !40, i64 128, !35, i64 136, !45, i64 144, !45, i64 344, !45, i64 544, !45, i64 744, !46, i64 944, !40, i64 948, !40, i64 952, !40, i64 956, !47, i64 960, !35, i64 976, !47, i64 984, !35, i64 1000}
!45 = !{!"CustomData", !35, i64 0, !36, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !35, i64 184, !35, i64 192}
!46 = !{!"short", !36, i64 0}
!47 = !{!"ListBase", !35, i64 0, !35, i64 8}
!48 = !{!36, !36, i64 0}
!49 = !{!50, !35, i64 40}
!50 = !{!"BMEdge", !51, i64 0, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !52, i64 48, !52, i64 64}
!51 = !{!"BMHeader", !35, i64 0, !40, i64 8, !36, i64 12, !36, i64 13, !36, i64 14}
!52 = !{!"BMDiskLink", !35, i64 0, !35, i64 8}
!53 = !{!51, !36, i64 13}
!54 = !{!51, !40, i64 8}
!55 = distinct !{!55, !56, !57}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = !{!44, !36, i64 28}
!59 = !{!60, !35, i64 40}
!60 = !{!"BMLoop", !51, i64 0, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64}
!61 = !{!60, !35, i64 16}
!62 = !{!60, !35, i64 32}
!63 = !{!64, !46, i64 48}
!64 = !{!"BMFace", !51, i64 0, !35, i64 16, !35, i64 24, !40, i64 32, !36, i64 36, !46, i64 48}
!65 = distinct !{!65, !56, !57}
!66 = !{!64, !35, i64 16}
!67 = !{!44, !40, i64 128}
!68 = !{!69, !46, i64 0}
!69 = !{!"BMFlagLayer", !46, i64 0}
!70 = !{!64, !35, i64 24}
!71 = !{!60, !35, i64 24}
!72 = !{!60, !35, i64 56}
!73 = distinct !{!73, !56, !57}
!74 = distinct !{!74, !56, !57}
!75 = !{!44, !40, i64 0}
!76 = !{!40, !40, i64 0}
!77 = distinct !{!77, !56, !57}
!78 = !{!44, !40, i64 4}
!79 = distinct !{!79, !56, !57}
!80 = !{!50, !35, i64 24}
!81 = !{!50, !35, i64 32}
!82 = !{!83, !35, i64 48}
!83 = !{!"BMVert", !51, i64 0, !35, i64 16, !36, i64 24, !36, i64 36, !35, i64 48}
!84 = distinct !{!84, !56, !57}
!85 = distinct !{!85, !56, !57}
!86 = !{!44, !35, i64 32}
!87 = distinct !{!87, !56, !57}
!88 = distinct !{!88, !56, !57}
!89 = distinct !{!89, !56, !57}
!90 = distinct !{!90, !56, !57}
!91 = distinct !{!91, !56, !57}
