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
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMFlagLayer = type { i16 }

@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.BM_mesh_decimate_dissolve_ex = private unnamed_addr constant [29 x i8] c"BM_mesh_decimate_dissolve_ex\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_mesh_decimate_dissolve_ex(ptr noundef %0, float noundef %1, i8 noundef zeroext %2, i32 noundef %3, ptr nocapture noundef %4, i32 noundef %5, ptr nocapture noundef readonly %6, i32 noundef %7, i16 noundef signext %8) local_unnamed_addr #0 {
  %10 = alloca %struct.BMIter, align 8
  %11 = alloca %struct.BMIter, align 8
  %12 = icmp eq i8 %2, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @max_ii(i32 noundef %7, i32 noundef %5) #9
  br label %15

15:                                               ; preds = %9, %13
  %16 = phi i32 [ %14, %13 ], [ %7, %9 ]
  %17 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %18 = sext i32 %16 to i64
  %19 = shl nsw i64 %18, 3
  %20 = tail call ptr %17(i64 noundef %19, ptr noundef nonnull @__func__.BM_mesh_decimate_dissolve_ex) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #11
  %21 = tail call ptr @BLI_heap_new_ex(i32 noundef %7) #10
  %22 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %10, ptr noundef %0, i8 noundef zeroext 2, ptr noundef null) #9
  %23 = icmp eq ptr %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %15, %24
  %25 = phi ptr [ %28, %24 ], [ %22, %15 ]
  %26 = call fastcc zeroext i8 @BM_edge_is_wire(ptr noundef nonnull %25) #9, !range !38
  %27 = zext nneg i8 %26 to i32
  call fastcc void @_bm_elem_flag_set(ptr noundef nonnull %25, i32 noundef %27) #9
  call fastcc void @_bm_elem_index_set(ptr noundef nonnull %25, i32 noundef -1) #9
  %28 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %10) #9
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %24, !llvm.loop !39

30:                                               ; preds = %24, %15
  %31 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %32 = load i8, ptr %31, align 4, !tbaa !41
  %33 = or i8 %32, 2
  store i8 %33, ptr %31, align 4, !tbaa !41
  %34 = icmp sgt i32 %7, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = zext nneg i32 %7 to i64
  br label %42

37:                                               ; preds = %42, %30
  %38 = call zeroext i8 @BLI_heap_is_empty(ptr noundef %21) #10
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %109

40:                                               ; preds = %37
  %41 = icmp eq i16 %8, 0
  br label %52

42:                                               ; preds = %35, %42
  %43 = phi i64 [ 0, %35 ], [ %50, %42 ]
  %44 = getelementptr inbounds ptr, ptr %6, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !34
  %46 = call fastcc float @bm_edge_calc_dissolve_error(ptr noundef %45, i32 noundef %3) #9
  %47 = call ptr @BLI_heap_insert(ptr noundef %21, float noundef %46, ptr noundef %45) #10
  %48 = getelementptr inbounds ptr, ptr %20, i64 %43
  store ptr %47, ptr %48, align 8, !tbaa !34
  %49 = trunc i64 %43 to i32
  call fastcc void @_bm_elem_index_set(ptr noundef %45, i32 noundef %49) #9
  %50 = add nuw nsw i64 %43, 1
  %51 = icmp eq i64 %50, %36
  br i1 %51, label %37, label %42, !llvm.loop !47

52:                                               ; preds = %40, %106
  %53 = call ptr @BLI_heap_top(ptr noundef %21) #10
  %54 = call float @BLI_heap_node_value(ptr noundef %53) #10
  %55 = fcmp olt float %54, %1
  br i1 %55, label %56, label %109

56:                                               ; preds = %52
  %57 = call ptr @BLI_heap_node_ptr(ptr noundef %53) #10
  %58 = call fastcc i32 @_bm_elem_index_get(ptr noundef %57) #9
  %59 = call fastcc zeroext i8 @BM_edge_is_manifold(ptr noundef %57) #9, !range !38
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %102, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.BMEdge, ptr %57, i64 0, i32 4
  %63 = load ptr, ptr %62, align 8, !tbaa !48
  %64 = getelementptr inbounds %struct.BMLoop, ptr %63, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !52
  %66 = getelementptr inbounds %struct.BMLoop, ptr %63, i64 0, i32 4
  %67 = load ptr, ptr %66, align 8, !tbaa !54
  %68 = getelementptr inbounds %struct.BMLoop, ptr %67, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !52
  %70 = call ptr @BM_faces_join_pair(ptr noundef %0, ptr noundef %65, ptr noundef %69, ptr noundef %57, i8 noundef zeroext 0) #10
  %71 = icmp eq ptr %70, null
  br i1 %71, label %101, label %72

72:                                               ; preds = %61
  call void @BLI_heap_remove(ptr noundef %21, ptr noundef %53) #10
  %73 = sext i32 %58 to i64
  %74 = getelementptr inbounds ptr, ptr %20, i64 %73
  store ptr null, ptr %74, align 8, !tbaa !34
  call void @BM_face_normal_update(ptr noundef nonnull %70) #10
  br i1 %41, label %78, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.BMFace, ptr %70, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !55
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %77, i16 noundef signext %8) #9
  br label %78

78:                                               ; preds = %75, %72
  %79 = getelementptr inbounds %struct.BMFace, ptr %70, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !57
  br label %81

81:                                               ; preds = %97, %78
  %82 = phi ptr [ %80, %78 ], [ %99, %97 ]
  %83 = getelementptr inbounds %struct.BMLoop, ptr %82, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !58
  %85 = call fastcc i32 @_bm_elem_index_get(ptr noundef %84) #9
  %86 = icmp eq i32 %85, -1
  br i1 %86, label %97, label %87

87:                                               ; preds = %81
  %88 = sext i32 %85 to i64
  %89 = getelementptr inbounds ptr, ptr %20, i64 %88
  %90 = load ptr, ptr %89, align 8, !tbaa !34
  %91 = icmp eq ptr %90, null
  br i1 %91, label %97, label %92

92:                                               ; preds = %87
  %93 = call fastcc float @bm_edge_calc_dissolve_error(ptr noundef %84, i32 noundef %3) #9
  %94 = load ptr, ptr %89, align 8, !tbaa !34
  call void @BLI_heap_remove(ptr noundef %21, ptr noundef %94) #10
  %95 = load ptr, ptr %83, align 8, !tbaa !58
  %96 = call ptr @BLI_heap_insert(ptr noundef %21, float noundef %93, ptr noundef %95) #10
  store ptr %96, ptr %89, align 8, !tbaa !34
  br label %97

97:                                               ; preds = %92, %87, %81
  %98 = getelementptr inbounds %struct.BMLoop, ptr %82, i64 0, i32 6
  %99 = load ptr, ptr %98, align 8, !tbaa !59
  %100 = icmp eq ptr %99, %80
  br i1 %100, label %106, label %81, !llvm.loop !60

101:                                              ; preds = %61
  call void @BMO_error_clear(ptr noundef %0) #10
  br label %102

102:                                              ; preds = %56, %101
  call void @BLI_heap_remove(ptr noundef %21, ptr noundef %53) #10
  %103 = call ptr @BLI_heap_insert(ptr noundef %21, float noundef 0x47EFFFFFE0000000, ptr noundef %57) #10
  %104 = sext i32 %58 to i64
  %105 = getelementptr inbounds ptr, ptr %20, i64 %104
  store ptr %103, ptr %105, align 8, !tbaa !34
  br label %106

106:                                              ; preds = %97, %102
  %107 = call zeroext i8 @BLI_heap_is_empty(ptr noundef %21) #10
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %52, label %109, !llvm.loop !61

109:                                              ; preds = %52, %106, %37
  call void @BM_mesh_elem_index_ensure(ptr noundef %0, i8 noundef zeroext 1) #10
  %110 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %111 = load i32, ptr %0, align 8, !tbaa !62
  %112 = sext i32 %111 to i64
  %113 = shl nsw i64 %112, 2
  %114 = call ptr %110(i64 noundef %113, ptr noundef nonnull @__func__.BM_mesh_decimate_dissolve_ex) #10
  %115 = load i32, ptr %0, align 8, !tbaa !62
  call void @fill_vn_i(ptr noundef %114, i32 noundef %115, i32 noundef -1) #10
  %116 = icmp sgt i32 %5, 0
  br i1 %116, label %117, label %129

117:                                              ; preds = %109
  %118 = zext nneg i32 %5 to i64
  br label %119

119:                                              ; preds = %117, %119
  %120 = phi i64 [ 0, %117 ], [ %127, %119 ]
  %121 = getelementptr inbounds ptr, ptr %4, i64 %120
  %122 = load ptr, ptr %121, align 8, !tbaa !34
  %123 = call fastcc i32 @_bm_elem_index_get(ptr noundef %122) #9
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, ptr %114, i64 %124
  %126 = trunc i64 %120 to i32
  store i32 %126, ptr %125, align 4, !tbaa !63
  %127 = add nuw nsw i64 %120, 1
  %128 = icmp eq i64 %127, %118
  br i1 %128, label %129, label %119, !llvm.loop !64

129:                                              ; preds = %119, %109
  %130 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %131 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 1
  %132 = load i32, ptr %131, align 4, !tbaa !65
  %133 = sext i32 %132 to i64
  %134 = shl nsw i64 %133, 3
  %135 = call ptr %130(i64 noundef %134, ptr noundef nonnull @__func__.BM_mesh_decimate_dissolve_ex) #10
  %136 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %10, ptr noundef nonnull %0, i8 noundef zeroext 2, ptr noundef null) #9
  %137 = icmp eq ptr %136, null
  br i1 %137, label %145, label %138

138:                                              ; preds = %129, %138
  %139 = phi i64 [ %143, %138 ], [ 0, %129 ]
  %140 = phi ptr [ %142, %138 ], [ %136, %129 ]
  %141 = getelementptr inbounds ptr, ptr %135, i64 %139
  store ptr %140, ptr %141, align 8, !tbaa !34
  %142 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %10) #9
  %143 = add nuw i64 %139, 1
  %144 = icmp eq ptr %142, null
  br i1 %144, label %145, label %138, !llvm.loop !66

145:                                              ; preds = %138, %129
  %146 = load i32, ptr %131, align 4, !tbaa !65
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %195, label %148

148:                                              ; preds = %145
  %149 = sext i32 %146 to i64
  br label %150

150:                                              ; preds = %148, %192
  %151 = phi i64 [ %149, %148 ], [ %152, %192 ]
  %152 = add nsw i64 %151, -1
  %153 = getelementptr inbounds ptr, ptr %135, i64 %152
  %154 = load ptr, ptr %153, align 8, !tbaa !34
  %155 = call fastcc zeroext i8 @BM_edge_is_wire(ptr noundef %154) #9, !range !38
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %192, label %157

157:                                              ; preds = %150
  %158 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %154, i8 noundef zeroext 16) #9, !range !67
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %160, label %192

160:                                              ; preds = %157
  %161 = getelementptr inbounds %struct.BMEdge, ptr %154, i64 0, i32 2
  %162 = load ptr, ptr %161, align 8, !tbaa !68
  %163 = getelementptr inbounds %struct.BMEdge, ptr %154, i64 0, i32 3
  %164 = load ptr, ptr %163, align 8, !tbaa !69
  call void @BM_edge_kill(ptr noundef nonnull %0, ptr noundef %154) #10
  %165 = getelementptr inbounds %struct.BMVert, ptr %162, i64 0, i32 4
  %166 = load ptr, ptr %165, align 8, !tbaa !70
  %167 = icmp eq ptr %166, null
  br i1 %167, label %168, label %178

168:                                              ; preds = %160
  %169 = call fastcc i32 @_bm_elem_index_get(ptr noundef nonnull %162) #9
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, ptr %114, i64 %170
  %172 = load i32, ptr %171, align 4, !tbaa !63
  %173 = icmp eq i32 %172, -1
  br i1 %173, label %177, label %174

174:                                              ; preds = %168
  %175 = sext i32 %172 to i64
  %176 = getelementptr inbounds ptr, ptr %4, i64 %175
  store ptr null, ptr %176, align 8, !tbaa !34
  br label %177

177:                                              ; preds = %174, %168
  call void @BM_vert_kill(ptr noundef nonnull %0, ptr noundef nonnull %162) #10
  br label %178

178:                                              ; preds = %177, %160
  %179 = getelementptr inbounds %struct.BMVert, ptr %164, i64 0, i32 4
  %180 = load ptr, ptr %179, align 8, !tbaa !70
  %181 = icmp eq ptr %180, null
  br i1 %181, label %182, label %192

182:                                              ; preds = %178
  %183 = call fastcc i32 @_bm_elem_index_get(ptr noundef nonnull %164) #9
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, ptr %114, i64 %184
  %186 = load i32, ptr %185, align 4, !tbaa !63
  %187 = icmp eq i32 %186, -1
  br i1 %187, label %191, label %188

188:                                              ; preds = %182
  %189 = sext i32 %186 to i64
  %190 = getelementptr inbounds ptr, ptr %4, i64 %189
  store ptr null, ptr %190, align 8, !tbaa !34
  br label %191

191:                                              ; preds = %188, %182
  call void @BM_vert_kill(ptr noundef nonnull %0, ptr noundef nonnull %164) #10
  br label %192

192:                                              ; preds = %178, %191, %150, %157
  %193 = and i64 %152, 4294967295
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %195, label %150, !llvm.loop !72

195:                                              ; preds = %192, %145
  %196 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %196(ptr noundef %114) #10
  %197 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %197(ptr noundef %135) #10
  call void @BLI_heap_free(ptr noundef %21, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #11
  br i1 %12, label %216, label %198

198:                                              ; preds = %195
  br i1 %116, label %199, label %299

199:                                              ; preds = %198
  %200 = zext nneg i32 %5 to i64
  br label %201

201:                                              ; preds = %199, %213
  %202 = phi i64 [ 0, %199 ], [ %214, %213 ]
  %203 = getelementptr inbounds ptr, ptr %4, i64 %202
  %204 = load ptr, ptr %203, align 8, !tbaa !34
  %205 = icmp eq ptr %204, null
  br i1 %205, label %213, label %206

206:                                              ; preds = %201
  %207 = call zeroext i8 @BM_vert_is_edge_pair(ptr noundef nonnull %204) #10
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %213, label %209

209:                                              ; preds = %206
  %210 = getelementptr inbounds %struct.BMVert, ptr %204, i64 0, i32 4
  %211 = load ptr, ptr %210, align 8, !tbaa !70
  %212 = call ptr @BM_vert_collapse_edge(ptr noundef nonnull %0, ptr noundef %211, ptr noundef nonnull %204, i8 noundef zeroext 1, i8 noundef zeroext 1) #10
  br label %213

213:                                              ; preds = %209, %206, %201
  %214 = add nuw nsw i64 %202, 1
  %215 = icmp eq i64 %214, %200
  br i1 %215, label %299, label %201, !llvm.loop !73

216:                                              ; preds = %195
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #11
  %217 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %11, ptr noundef nonnull %0, i8 noundef zeroext 1, ptr noundef null) #9
  %218 = icmp eq ptr %217, null
  br i1 %218, label %223, label %219

219:                                              ; preds = %216, %219
  %220 = phi ptr [ %221, %219 ], [ %217, %216 ]
  call fastcc void @_bm_elem_index_set(ptr noundef nonnull %220, i32 noundef -1) #9
  %221 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %11) #9
  %222 = icmp eq ptr %221, null
  br i1 %222, label %223, label %219, !llvm.loop !74

223:                                              ; preds = %219, %216
  %224 = load i8, ptr %31, align 4, !tbaa !41
  %225 = or i8 %224, 1
  store i8 %225, ptr %31, align 4, !tbaa !41
  %226 = call ptr @BLI_heap_new_ex(i32 noundef %5) #10
  br i1 %116, label %227, label %229

227:                                              ; preds = %223
  %228 = zext nneg i32 %5 to i64
  br label %232

229:                                              ; preds = %242, %223
  %230 = call zeroext i8 @BLI_heap_is_empty(ptr noundef %226) #10
  %231 = icmp eq i8 %230, 0
  br i1 %231, label %245, label %298

232:                                              ; preds = %227, %242
  %233 = phi i64 [ 0, %227 ], [ %243, %242 ]
  %234 = getelementptr inbounds ptr, ptr %4, i64 %233
  %235 = load ptr, ptr %234, align 8, !tbaa !34
  %236 = icmp eq ptr %235, null
  br i1 %236, label %242, label %237

237:                                              ; preds = %232
  %238 = call fastcc float @bm_vert_edge_face_angle(ptr noundef nonnull %235) #9
  %239 = call ptr @BLI_heap_insert(ptr noundef %226, float noundef %238, ptr noundef nonnull %235) #10
  %240 = getelementptr inbounds ptr, ptr %20, i64 %233
  store ptr %239, ptr %240, align 8, !tbaa !34
  %241 = trunc i64 %233 to i32
  call fastcc void @_bm_elem_index_set(ptr noundef nonnull %235, i32 noundef %241) #9
  br label %242

242:                                              ; preds = %237, %232
  %243 = add nuw nsw i64 %233, 1
  %244 = icmp eq i64 %243, %228
  br i1 %244, label %229, label %232, !llvm.loop !75

245:                                              ; preds = %229, %295
  %246 = call ptr @BLI_heap_top(ptr noundef %226) #10
  %247 = call float @BLI_heap_node_value(ptr noundef %246) #10
  %248 = fcmp olt float %247, %1
  br i1 %248, label %249, label %298

249:                                              ; preds = %245
  %250 = call ptr @BLI_heap_node_ptr(ptr noundef %246) #10
  %251 = call fastcc i32 @_bm_elem_index_get(ptr noundef %250) #9
  %252 = call zeroext i8 @BM_vert_is_edge_pair(ptr noundef %250) #10
  %253 = icmp eq i8 %252, 0
  br i1 %253, label %291, label %254

254:                                              ; preds = %249
  %255 = getelementptr inbounds %struct.BMVert, ptr %250, i64 0, i32 4
  %256 = load ptr, ptr %255, align 8, !tbaa !70
  %257 = call ptr @BM_vert_collapse_edge(ptr noundef nonnull %0, ptr noundef %256, ptr noundef %250, i8 noundef zeroext 1, i8 noundef zeroext 1) #10
  %258 = icmp eq ptr %257, null
  br i1 %258, label %291, label %259

259:                                              ; preds = %254
  call void @BLI_heap_remove(ptr noundef %226, ptr noundef %246) #10
  %260 = sext i32 %251 to i64
  %261 = getelementptr inbounds ptr, ptr %20, i64 %260
  store ptr null, ptr %261, align 8, !tbaa !34
  %262 = getelementptr inbounds %struct.BMEdge, ptr %257, i64 0, i32 4
  %263 = load ptr, ptr %262, align 8, !tbaa !48
  %264 = icmp eq ptr %263, null
  br i1 %264, label %272, label %265

265:                                              ; preds = %259, %265
  %266 = phi ptr [ %270, %265 ], [ %263, %259 ]
  %267 = getelementptr inbounds %struct.BMLoop, ptr %266, i64 0, i32 3
  %268 = load ptr, ptr %267, align 8, !tbaa !52
  call void @BM_face_normal_update(ptr noundef %268) #10
  %269 = getelementptr inbounds %struct.BMLoop, ptr %266, i64 0, i32 4
  %270 = load ptr, ptr %269, align 8, !tbaa !54
  %271 = icmp eq ptr %270, %263
  br i1 %271, label %272, label %265, !llvm.loop !76

272:                                              ; preds = %265, %259
  %273 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %11, ptr noundef null, i8 noundef zeroext 7, ptr noundef nonnull %257) #9
  %274 = icmp eq ptr %273, null
  br i1 %274, label %295, label %275

275:                                              ; preds = %272, %288
  %276 = phi ptr [ %289, %288 ], [ %273, %272 ]
  %277 = call fastcc i32 @_bm_elem_index_get(ptr noundef nonnull %276) #9
  %278 = icmp eq i32 %277, -1
  br i1 %278, label %288, label %279

279:                                              ; preds = %275
  %280 = sext i32 %277 to i64
  %281 = getelementptr inbounds ptr, ptr %20, i64 %280
  %282 = load ptr, ptr %281, align 8, !tbaa !34
  %283 = icmp eq ptr %282, null
  br i1 %283, label %288, label %284

284:                                              ; preds = %279
  %285 = call fastcc float @bm_vert_edge_face_angle(ptr noundef nonnull %276) #9
  %286 = load ptr, ptr %281, align 8, !tbaa !34
  call void @BLI_heap_remove(ptr noundef %226, ptr noundef %286) #10
  %287 = call ptr @BLI_heap_insert(ptr noundef %226, float noundef %285, ptr noundef nonnull %276) #10
  store ptr %287, ptr %281, align 8, !tbaa !34
  br label %288

288:                                              ; preds = %284, %279, %275
  %289 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %11) #9
  %290 = icmp eq ptr %289, null
  br i1 %290, label %295, label %275, !llvm.loop !77

291:                                              ; preds = %249, %254
  call void @BLI_heap_remove(ptr noundef %226, ptr noundef %246) #10
  %292 = call ptr @BLI_heap_insert(ptr noundef %226, float noundef 0x47EFFFFFE0000000, ptr noundef %250) #10
  %293 = sext i32 %251 to i64
  %294 = getelementptr inbounds ptr, ptr %20, i64 %293
  store ptr %292, ptr %294, align 8, !tbaa !34
  br label %295

295:                                              ; preds = %288, %272, %291
  %296 = call zeroext i8 @BLI_heap_is_empty(ptr noundef %226) #10
  %297 = icmp eq i8 %296, 0
  br i1 %297, label %245, label %298, !llvm.loop !78

298:                                              ; preds = %245, %295, %229
  call void @BLI_heap_free(ptr noundef %226, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #11
  br label %299

299:                                              ; preds = %213, %198, %298
  %300 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %300(ptr noundef %20) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #2 !PGOFuncName !79 {
  %3 = tail call i32 @llvm.smax.i32(i32 %1, i32 %0)
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @BLI_heap_new_ex(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !80 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) #9
  %5 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #9
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_set(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #4 !PGOFuncName !81 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  tail call fastcc void @_bm_elem_flag_enable(ptr noundef %0) #9
  br label %6

5:                                                ; preds = %2
  tail call fastcc void @_bm_elem_flag_disable(ptr noundef %0) #9
  br label %6

6:                                                ; preds = %5, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BM_edge_is_wire(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !82 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @_bm_elem_index_set(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #6 !PGOFuncName !83 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 8, !tbaa !84
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !85 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !86
  %4 = tail call ptr %3(ptr noundef %0) #10
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @bm_edge_calc_dissolve_error(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !88 {
  %3 = tail call fastcc zeroext i8 @BM_edge_is_contiguous(ptr noundef %0) #9, !range !38
  %4 = tail call fastcc zeroext i8 @BM_edge_is_manifold(ptr noundef %0) #9, !range !38
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %38, label %6

6:                                                ; preds = %2
  %7 = and i32 %1, 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %0, i8 noundef zeroext 4) #9, !range !67
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %38

12:                                               ; preds = %9, %6
  %13 = and i32 %1, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %29, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !48
  %18 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !52
  %20 = getelementptr inbounds %struct.BMFace, ptr %19, i64 0, i32 5
  %21 = load i16, ptr %20, align 8, !tbaa !89
  %22 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !54
  %24 = getelementptr inbounds %struct.BMLoop, ptr %23, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !52
  %26 = getelementptr inbounds %struct.BMFace, ptr %25, i64 0, i32 5
  %27 = load i16, ptr %26, align 8, !tbaa !89
  %28 = icmp eq i16 %21, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %15, %12
  %30 = and i32 %1, 1
  %31 = icmp ne i32 %30, 0
  %32 = icmp eq i8 %3, 0
  %33 = select i1 %31, i1 %32, i1 false
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  %35 = tail call float @BM_edge_calc_face_angle(ptr noundef %0) #10
  %36 = fsub float 0x400921FB60000000, %35
  %37 = select i1 %32, float %36, float %35
  br label %38

38:                                               ; preds = %2, %9, %15, %29, %34
  %39 = phi float [ %37, %34 ], [ 0x47EFFFFFE0000000, %29 ], [ 0x47EFFFFFE0000000, %15 ], [ 0x47EFFFFFE0000000, %9 ], [ 0x47EFFFFFE0000000, %2 ]
  ret float %39
}

; Function Attrs: optsize
declare ptr @BLI_heap_insert(ptr noundef, float noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare zeroext i8 @BLI_heap_is_empty(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare float @BLI_heap_node_value(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_heap_top(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_heap_node_ptr(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @_bm_elem_index_get(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !90 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !84
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @BM_edge_is_manifold(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !91 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = icmp eq ptr %7, %3
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !54
  %12 = icmp eq ptr %11, %3
  %13 = zext i1 %12 to i8
  br label %14

14:                                               ; preds = %9, %5, %1
  %15 = phi i8 [ 0, %5 ], [ 0, %1 ], [ %13, %9 ]
  ret i8 %15
}

; Function Attrs: optsize
declare ptr @BM_faces_join_pair(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_heap_remove(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BM_face_normal_update(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bmo_elem_flag_enable(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i16 noundef signext %2) unnamed_addr #4 !PGOFuncName !92 {
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %5 = load i32, ptr %4, align 8, !tbaa !93
  %6 = sext i32 %5 to i64
  %7 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %6
  %8 = getelementptr %struct.BMFlagLayer, ptr %7, i64 -1
  %9 = load i16, ptr %8, align 2, !tbaa !94
  %10 = or i16 %9, %2
  store i16 %10, ptr %8, align 2, !tbaa !94
  ret void
}

; Function Attrs: optsize
declare void @BMO_error_clear(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BM_mesh_elem_index_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @fill_vn_i(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #5 !PGOFuncName !96 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !97
  %5 = and i8 %4, %1
  ret i8 %5
}

; Function Attrs: optsize
declare void @BM_edge_kill(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BM_vert_kill(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_heap_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BM_vert_is_edge_pair(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BM_vert_collapse_edge(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @bm_vert_edge_face_angle(ptr noundef %0) unnamed_addr #0 !PGOFuncName !98 {
  %2 = tail call float @BM_vert_calc_edge_angle(ptr noundef %0) #10
  %3 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !70
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %1
  %7 = tail call fastcc zeroext i8 @BM_edge_is_manifold(ptr noundef nonnull %4) #9, !range !38
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %6
  %10 = fmul float %2, 0x3FE45F3060000000
  %11 = tail call float @BM_edge_calc_face_angle(ptr noundef nonnull %4) #10
  %12 = fmul float %11, 0x3FE45F3060000000
  %13 = fmul float %10, %12
  %14 = fmul float %13, 0x3FF921FB60000000
  br label %15

15:                                               ; preds = %1, %6, %9
  %16 = phi float [ %14, %9 ], [ %2, %6 ], [ %2, %1 ]
  ret float %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_mesh_decimate_dissolve(ptr noundef %0, float noundef %1, i8 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  %7 = call ptr @BM_iter_as_arrayN(ptr noundef %0, i8 noundef zeroext 1, ptr noundef null, ptr noundef nonnull %5, ptr noundef null, i32 noundef 0) #10
  %8 = call ptr @BM_iter_as_arrayN(ptr noundef %0, i8 noundef zeroext 2, ptr noundef null, ptr noundef nonnull %6, ptr noundef null, i32 noundef 0) #10
  %9 = load i32, ptr %5, align 4, !tbaa !63
  %10 = load i32, ptr %6, align 4, !tbaa !63
  call void @BM_mesh_decimate_dissolve_ex(ptr noundef %0, float noundef %1, i8 noundef zeroext %2, i32 noundef %3, ptr noundef %7, i32 noundef %9, ptr noundef %8, i32 noundef %10, i16 noundef signext 0) #9
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %11(ptr noundef %7) #10
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %12(ptr noundef %8) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  ret void
}

; Function Attrs: optsize
declare ptr @BM_iter_as_arrayN(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !99 {
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %5, align 4, !tbaa !100
  %6 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  switch i8 %2, label %21 [
    i8 1, label %8
    i8 2, label %11
    i8 3, label %14
    i8 4, label %17
    i8 5, label %18
    i8 6, label %19
    i8 7, label %20
  ]

8:                                                ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !101
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !86
  %9 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !102
  br label %22

11:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !101
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !86
  %12 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !103
  br label %22

14:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !101
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !86
  %15 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !104
  br label %22

17:                                               ; preds = %4
  store ptr @bmiter__edge_of_vert_begin, ptr %6, align 8, !tbaa !101
  store ptr @bmiter__edge_of_vert_step, ptr %7, align 8, !tbaa !86
  br label %22

18:                                               ; preds = %4
  store ptr @bmiter__face_of_vert_begin, ptr %6, align 8, !tbaa !101
  store ptr @bmiter__face_of_vert_step, ptr %7, align 8, !tbaa !86
  br label %22

19:                                               ; preds = %4
  store ptr @bmiter__loop_of_vert_begin, ptr %6, align 8, !tbaa !101
  store ptr @bmiter__loop_of_vert_step, ptr %7, align 8, !tbaa !86
  br label %22

20:                                               ; preds = %4
  store ptr @bmiter__vert_of_edge_begin, ptr %6, align 8, !tbaa !101
  store ptr @bmiter__vert_of_edge_step, ptr %7, align 8, !tbaa !86
  br label %22

21:                                               ; preds = %4
  unreachable

22:                                               ; preds = %20, %19, %18, %17, %14, %11, %8
  %23 = phi ptr [ %3, %20 ], [ %3, %19 ], [ %3, %18 ], [ %3, %17 ], [ %16, %14 ], [ %13, %11 ], [ %10, %8 ]
  %24 = phi ptr [ @bmiter__vert_of_edge_begin, %20 ], [ @bmiter__loop_of_vert_begin, %19 ], [ @bmiter__face_of_vert_begin, %18 ], [ @bmiter__edge_of_vert_begin, %17 ], [ @bmiter__elem_of_mesh_begin, %14 ], [ @bmiter__elem_of_mesh_begin, %11 ], [ @bmiter__elem_of_mesh_begin, %8 ]
  store ptr %23, ptr %0, align 8, !tbaa !105
  tail call void %24(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #3

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #3

; Function Attrs: optsize
declare void @bmiter__edge_of_vert_begin(ptr noundef) #3

; Function Attrs: optsize
declare ptr @bmiter__edge_of_vert_step(ptr noundef) #3

; Function Attrs: optsize
declare void @bmiter__face_of_vert_begin(ptr noundef) #3

; Function Attrs: optsize
declare ptr @bmiter__face_of_vert_step(ptr noundef) #3

; Function Attrs: optsize
declare void @bmiter__loop_of_vert_begin(ptr noundef) #3

; Function Attrs: optsize
declare ptr @bmiter__loop_of_vert_step(ptr noundef) #3

; Function Attrs: optsize
declare void @bmiter__vert_of_edge_begin(ptr noundef) #3

; Function Attrs: optsize
declare ptr @bmiter__vert_of_edge_step(ptr noundef) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_enable(ptr nocapture noundef %0) unnamed_addr #4 !PGOFuncName !106 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !97
  %4 = or i8 %3, 16
  store i8 %4, ptr %2, align 1, !tbaa !97
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_disable(ptr nocapture noundef %0) unnamed_addr #4 !PGOFuncName !107 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !97
  %4 = and i8 %3, -17
  store i8 %4, ptr %2, align 1, !tbaa !97
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @BM_edge_is_contiguous(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !108 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = icmp eq ptr %7, %3
  br i1 %8, label %20, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !54
  %12 = icmp eq ptr %11, %3
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !109
  %16 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !109
  %18 = icmp ne ptr %15, %17
  %19 = zext i1 %18 to i8
  br label %20

20:                                               ; preds = %13, %9, %5, %1
  %21 = phi i8 [ 0, %9 ], [ 0, %5 ], [ 0, %1 ], [ %19, %13 ]
  ret i8 %21
}

; Function Attrs: optsize
declare float @BM_edge_calc_face_angle(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare float @BM_vert_calc_edge_angle(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize }
attributes #11 = { nounwind }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{i8 0, i8 2}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!42, !36, i64 28}
!42 = !{!"BMesh", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !36, i64 28, !36, i64 29, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !43, i64 88, !43, i64 92, !43, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !43, i64 128, !35, i64 136, !44, i64 144, !44, i64 344, !44, i64 544, !44, i64 744, !45, i64 944, !43, i64 948, !43, i64 952, !43, i64 956, !46, i64 960, !35, i64 976, !46, i64 984, !35, i64 1000}
!43 = !{!"int", !36, i64 0}
!44 = !{!"CustomData", !35, i64 0, !36, i64 8, !43, i64 172, !43, i64 176, !43, i64 180, !35, i64 184, !35, i64 192}
!45 = !{!"short", !36, i64 0}
!46 = !{!"ListBase", !35, i64 0, !35, i64 8}
!47 = distinct !{!47, !40}
!48 = !{!49, !35, i64 40}
!49 = !{!"BMEdge", !50, i64 0, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !51, i64 48, !51, i64 64}
!50 = !{!"BMHeader", !35, i64 0, !43, i64 8, !36, i64 12, !36, i64 13, !36, i64 14}
!51 = !{!"BMDiskLink", !35, i64 0, !35, i64 8}
!52 = !{!53, !35, i64 32}
!53 = !{!"BMLoop", !50, i64 0, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64}
!54 = !{!53, !35, i64 40}
!55 = !{!56, !35, i64 16}
!56 = !{!"BMFace", !50, i64 0, !35, i64 16, !35, i64 24, !43, i64 32, !36, i64 36, !45, i64 48}
!57 = !{!56, !35, i64 24}
!58 = !{!53, !35, i64 24}
!59 = !{!53, !35, i64 56}
!60 = distinct !{!60, !40}
!61 = distinct !{!61, !40}
!62 = !{!42, !43, i64 0}
!63 = !{!43, !43, i64 0}
!64 = distinct !{!64, !40}
!65 = !{!42, !43, i64 4}
!66 = distinct !{!66, !40}
!67 = !{i8 0, i8 17}
!68 = !{!49, !35, i64 24}
!69 = !{!49, !35, i64 32}
!70 = !{!71, !35, i64 48}
!71 = !{!"BMVert", !50, i64 0, !35, i64 16, !36, i64 24, !36, i64 36, !35, i64 48}
!72 = distinct !{!72, !40}
!73 = distinct !{!73, !40}
!74 = distinct !{!74, !40}
!75 = distinct !{!75, !40}
!76 = distinct !{!76, !40}
!77 = distinct !{!77, !40}
!78 = distinct !{!78, !40}
!79 = !{!"bmesh_decimate_dissolve.c:max_ii"}
!80 = !{!"bmesh_decimate_dissolve.c:BM_iter_new"}
!81 = !{!"bmesh_decimate_dissolve.c:_bm_elem_flag_set"}
!82 = !{!"bmesh_decimate_dissolve.c:BM_edge_is_wire"}
!83 = !{!"bmesh_decimate_dissolve.c:_bm_elem_index_set"}
!84 = !{!50, !43, i64 8}
!85 = !{!"bmesh_decimate_dissolve.c:BM_iter_step"}
!86 = !{!87, !35, i64 48}
!87 = !{!"BMIter", !36, i64 0, !35, i64 40, !35, i64 48, !43, i64 56, !36, i64 60}
!88 = !{!"bmesh_decimate_dissolve.c:bm_edge_calc_dissolve_error"}
!89 = !{!56, !45, i64 48}
!90 = !{!"bmesh_decimate_dissolve.c:_bm_elem_index_get"}
!91 = !{!"bmesh_decimate_dissolve.c:BM_edge_is_manifold"}
!92 = !{!"bmesh_decimate_dissolve.c:_bmo_elem_flag_enable"}
!93 = !{!42, !43, i64 128}
!94 = !{!95, !45, i64 0}
!95 = !{!"BMFlagLayer", !45, i64 0}
!96 = !{!"bmesh_decimate_dissolve.c:_bm_elem_flag_test"}
!97 = !{!50, !36, i64 13}
!98 = !{!"bmesh_decimate_dissolve.c:bm_vert_edge_face_angle"}
!99 = !{!"bmesh_decimate_dissolve.c:BM_iter_init"}
!100 = !{!87, !36, i64 60}
!101 = !{!87, !35, i64 40}
!102 = !{!42, !35, i64 32}
!103 = !{!42, !35, i64 40}
!104 = !{!42, !35, i64 56}
!105 = !{!36, !36, i64 0}
!106 = !{!"bmesh_decimate_dissolve.c:_bm_elem_flag_enable"}
!107 = !{!"bmesh_decimate_dissolve.c:_bm_elem_flag_disable"}
!108 = !{!"bmesh_decimate_dissolve.c:BM_edge_is_contiguous"}
!109 = !{!53, !35, i64 16}
