; ModuleID = 'blender/source/blender/bmesh/tools/bmesh_intersect.c'
source_filename = "blender/source/blender/bmesh/tools/bmesh_intersect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ISectState = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ISectEpsilon }
%struct.ISectEpsilon = type { float, float, float, float, float, float }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.GSetIterator = type { %struct.GHashIterator }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BVHTreeOverlap = type { i32, i32 }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.LinkBase = type { ptr, i32 }
%struct.LinkNode = type { ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct._gh_Entry = type { ptr, ptr, ptr }
%struct.vert_sort_t = type { float, ptr }

@__func__.BM_mesh_intersect = private unnamed_addr constant [18 x i8] c"BM_mesh_intersect\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @BM_mesh_intersect(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4, i8 noundef zeroext %5, i8 noundef zeroext %6, float noundef %7) local_unnamed_addr #0 {
  %9 = alloca %struct.ISectState, align 8
  %10 = alloca i32, align 4
  %11 = alloca [3 x [3 x float]], align 16
  %12 = alloca [3 x [3 x float]], align 16
  %13 = alloca %struct.GHashIterator, align 8
  %14 = alloca %struct.GHashIterator, align 8
  %15 = alloca %struct.BMIter, align 8
  %16 = alloca %struct.GHashIterator, align 8
  %17 = alloca %struct.GSetIterator, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #14
  store ptr %0, ptr %9, align 8, !tbaa !34
  %18 = tail call ptr @BLI_ghash_new(ptr noundef nonnull @BLI_ghashutil_uinthash_v4, ptr noundef nonnull @BLI_ghashutil_uinthash_v4_cmp, ptr noundef nonnull @__func__.BM_mesh_intersect) #15
  %19 = getelementptr inbounds %struct.ISectState, ptr %9, i64 0, i32 1
  store ptr %18, ptr %19, align 8, !tbaa !41
  %20 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @__func__.BM_mesh_intersect) #15
  %21 = getelementptr inbounds %struct.ISectState, ptr %9, i64 0, i32 2
  store ptr %20, ptr %21, align 8, !tbaa !42
  %22 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @__func__.BM_mesh_intersect) #15
  %23 = getelementptr inbounds %struct.ISectState, ptr %9, i64 0, i32 3
  store ptr %22, ptr %23, align 8, !tbaa !43
  %24 = tail call ptr @BLI_gset_ptr_new(ptr noundef nonnull @__func__.BM_mesh_intersect) #15
  %25 = getelementptr inbounds %struct.ISectState, ptr %9, i64 0, i32 4
  store ptr %24, ptr %25, align 8, !tbaa !44
  %26 = getelementptr inbounds %struct.ISectState, ptr %9, i64 0, i32 5
  store ptr null, ptr %26, align 8, !tbaa !45
  %27 = tail call ptr @BLI_memarena_new(i64 noundef 16376, ptr noundef nonnull @__func__.BM_mesh_intersect) #15
  %28 = getelementptr inbounds %struct.ISectState, ptr %9, i64 0, i32 6
  store ptr %27, ptr %28, align 8, !tbaa !46
  %29 = getelementptr inbounds %struct.ISectState, ptr %9, i64 0, i32 7
  store float %7, ptr %29, align 8, !tbaa !47
  %30 = fmul float %7, 2.000000e+00
  %31 = getelementptr inbounds %struct.ISectState, ptr %9, i64 0, i32 7, i32 2
  store float %30, ptr %31, align 8, !tbaa !48
  %32 = fmul float %30, 1.000000e+01
  %33 = getelementptr inbounds %struct.ISectState, ptr %9, i64 0, i32 7, i32 4
  store float %32, ptr %33, align 8, !tbaa !49
  %34 = fmul float %7, %7
  %35 = getelementptr inbounds %struct.ISectState, ptr %9, i64 0, i32 7, i32 1
  store float %34, ptr %35, align 4, !tbaa !50
  %36 = fmul float %30, %30
  %37 = getelementptr inbounds %struct.ISectState, ptr %9, i64 0, i32 7, i32 3
  store float %36, ptr %37, align 4, !tbaa !51
  %38 = fmul float %32, %32
  %39 = getelementptr inbounds %struct.ISectState, ptr %9, i64 0, i32 7, i32 5
  store float %38, ptr %39, align 4, !tbaa !52
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %0, i8 noundef zeroext 11) #15
  tail call void @BM_mesh_elem_table_ensure(ptr noundef %0, i8 noundef zeroext 10) #15
  tail call void @BM_mesh_elem_hflag_disable_all(ptr noundef %0, i8 noundef zeroext 3, i8 noundef zeroext 16, i8 noundef zeroext 0) #15
  %40 = tail call ptr @BLI_bvhtree_new(i32 noundef %2, float noundef %32, i8 noundef zeroext 8, i8 noundef zeroext 8) #15
  %41 = icmp sgt i32 %2, 0
  br i1 %41, label %42, label %87

42:                                               ; preds = %8
  %43 = getelementptr inbounds [3 x float], ptr %11, i64 1, i64 1
  %44 = getelementptr inbounds [3 x float], ptr %11, i64 2, i64 2
  %45 = zext nneg i32 %2 to i64
  br label %46

46:                                               ; preds = %42, %84
  %47 = phi i64 [ 0, %42 ], [ %85, %84 ]
  %48 = getelementptr inbounds [3 x ptr], ptr %1, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !53
  %50 = getelementptr inbounds %struct.BMLoop, ptr %49, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !54
  %52 = call i32 %3(ptr noundef %51, ptr noundef %4) #15
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %84

54:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %11) #14
  %55 = load ptr, ptr %48, align 8, !tbaa !53
  %56 = getelementptr inbounds %struct.BMLoop, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !58
  %58 = getelementptr inbounds %struct.BMVert, ptr %57, i64 0, i32 2
  %59 = load float, ptr %58, align 8, !tbaa !59
  %60 = getelementptr inbounds %struct.BMVert, ptr %57, i64 0, i32 2, i64 1
  %61 = load <2 x float>, ptr %60, align 4, !tbaa !59
  %62 = getelementptr inbounds [3 x ptr], ptr %1, i64 %47, i64 1
  %63 = load ptr, ptr %62, align 8, !tbaa !53
  %64 = getelementptr inbounds %struct.BMLoop, ptr %63, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !58
  %66 = getelementptr inbounds %struct.BMVert, ptr %65, i64 0, i32 2
  %67 = load float, ptr %66, align 8, !tbaa !59
  %68 = insertelement <4 x float> poison, float %59, i64 0
  %69 = shufflevector <2 x float> %61, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %70 = shufflevector <4 x float> %68, <4 x float> %69, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %71 = insertelement <4 x float> %70, float %67, i64 3
  store <4 x float> %71, ptr %11, align 16, !tbaa !59
  %72 = getelementptr inbounds %struct.BMVert, ptr %65, i64 0, i32 2, i64 1
  %73 = load <2 x float>, ptr %72, align 4, !tbaa !59
  %74 = getelementptr inbounds [3 x ptr], ptr %1, i64 %47, i64 2
  %75 = load ptr, ptr %74, align 8, !tbaa !53
  %76 = getelementptr inbounds %struct.BMLoop, ptr %75, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !58
  %78 = getelementptr inbounds %struct.BMVert, ptr %77, i64 0, i32 2
  %79 = load <2 x float>, ptr %78, align 8, !tbaa !59
  %80 = shufflevector <2 x float> %73, <2 x float> %79, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %80, ptr %43, align 16, !tbaa !59
  %81 = getelementptr inbounds %struct.BMVert, ptr %77, i64 0, i32 2, i64 2
  %82 = load float, ptr %81, align 8, !tbaa !59
  store float %82, ptr %44, align 16, !tbaa !59
  %83 = trunc i64 %47 to i32
  call void @BLI_bvhtree_insert(ptr noundef %40, i32 noundef %83, ptr noundef nonnull %11, i32 noundef 3) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %11) #14
  br label %84

84:                                               ; preds = %46, %54
  %85 = add nuw nsw i64 %47, 1
  %86 = icmp eq i64 %85, %45
  br i1 %86, label %87, label %46, !llvm.loop !60

87:                                               ; preds = %84, %8
  call void @BLI_bvhtree_balance(ptr noundef %40) #15
  %88 = icmp eq i8 %5, 0
  br i1 %88, label %89, label %138

89:                                               ; preds = %87
  %90 = load float, ptr %33, align 8, !tbaa !49
  %91 = call ptr @BLI_bvhtree_new(i32 noundef %2, float noundef %90, i8 noundef zeroext 8, i8 noundef zeroext 8) #15
  br i1 %41, label %92, label %137

92:                                               ; preds = %89
  %93 = getelementptr inbounds [3 x float], ptr %12, i64 1, i64 1
  %94 = getelementptr inbounds [3 x float], ptr %12, i64 2, i64 2
  %95 = zext nneg i32 %2 to i64
  br label %96

96:                                               ; preds = %92, %134
  %97 = phi i64 [ 0, %92 ], [ %135, %134 ]
  %98 = getelementptr inbounds [3 x ptr], ptr %1, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !53
  %100 = getelementptr inbounds %struct.BMLoop, ptr %99, i64 0, i32 3
  %101 = load ptr, ptr %100, align 8, !tbaa !54
  %102 = call i32 %3(ptr noundef %101, ptr noundef %4) #15
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %134

104:                                              ; preds = %96
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %12) #14
  %105 = load ptr, ptr %98, align 8, !tbaa !53
  %106 = getelementptr inbounds %struct.BMLoop, ptr %105, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !58
  %108 = getelementptr inbounds %struct.BMVert, ptr %107, i64 0, i32 2
  %109 = load float, ptr %108, align 8, !tbaa !59
  %110 = getelementptr inbounds %struct.BMVert, ptr %107, i64 0, i32 2, i64 1
  %111 = load <2 x float>, ptr %110, align 4, !tbaa !59
  %112 = getelementptr inbounds [3 x ptr], ptr %1, i64 %97, i64 1
  %113 = load ptr, ptr %112, align 8, !tbaa !53
  %114 = getelementptr inbounds %struct.BMLoop, ptr %113, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !58
  %116 = getelementptr inbounds %struct.BMVert, ptr %115, i64 0, i32 2
  %117 = load float, ptr %116, align 8, !tbaa !59
  %118 = insertelement <4 x float> poison, float %109, i64 0
  %119 = shufflevector <2 x float> %111, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %120 = shufflevector <4 x float> %118, <4 x float> %119, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %121 = insertelement <4 x float> %120, float %117, i64 3
  store <4 x float> %121, ptr %12, align 16, !tbaa !59
  %122 = getelementptr inbounds %struct.BMVert, ptr %115, i64 0, i32 2, i64 1
  %123 = load <2 x float>, ptr %122, align 4, !tbaa !59
  %124 = getelementptr inbounds [3 x ptr], ptr %1, i64 %97, i64 2
  %125 = load ptr, ptr %124, align 8, !tbaa !53
  %126 = getelementptr inbounds %struct.BMLoop, ptr %125, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !58
  %128 = getelementptr inbounds %struct.BMVert, ptr %127, i64 0, i32 2
  %129 = load <2 x float>, ptr %128, align 8, !tbaa !59
  %130 = shufflevector <2 x float> %123, <2 x float> %129, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %130, ptr %93, align 16, !tbaa !59
  %131 = getelementptr inbounds %struct.BMVert, ptr %127, i64 0, i32 2, i64 2
  %132 = load float, ptr %131, align 8, !tbaa !59
  store float %132, ptr %94, align 16, !tbaa !59
  %133 = trunc i64 %97 to i32
  call void @BLI_bvhtree_insert(ptr noundef %91, i32 noundef %133, ptr noundef nonnull %12, i32 noundef 3) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %12) #14
  br label %134

134:                                              ; preds = %96, %104
  %135 = add nuw nsw i64 %97, 1
  %136 = icmp eq i64 %135, %95
  br i1 %136, label %137, label %96, !llvm.loop !62

137:                                              ; preds = %134, %89
  call void @BLI_bvhtree_balance(ptr noundef %91) #15
  br label %138

138:                                              ; preds = %87, %137
  %139 = phi ptr [ %91, %137 ], [ %40, %87 ]
  %140 = call ptr @BLI_bvhtree_overlap(ptr noundef %139, ptr noundef %40, ptr noundef nonnull %10) #15
  %141 = icmp eq ptr %140, null
  br i1 %141, label %161, label %142

142:                                              ; preds = %138
  %143 = load i32, ptr %10, align 4, !tbaa !63
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %159, label %145

145:                                              ; preds = %142, %145
  %146 = phi i64 [ %155, %145 ], [ 0, %142 ]
  %147 = getelementptr inbounds %struct.BVHTreeOverlap, ptr %140, i64 %146
  %148 = load i32, ptr %147, align 4, !tbaa !64
  %149 = getelementptr inbounds %struct.BVHTreeOverlap, ptr %140, i64 %146, i32 1
  %150 = load i32, ptr %149, align 4, !tbaa !66
  %151 = sext i32 %148 to i64
  %152 = getelementptr inbounds [3 x ptr], ptr %1, i64 %151
  %153 = sext i32 %150 to i64
  %154 = getelementptr inbounds [3 x ptr], ptr %1, i64 %153
  call fastcc void @bm_isect_tri_tri(ptr noundef nonnull %9, i32 noundef %148, i32 noundef %150, ptr noundef %152, ptr noundef %154) #16
  %155 = add nuw nsw i64 %146, 1
  %156 = load i32, ptr %10, align 4, !tbaa !63
  %157 = zext i32 %156 to i64
  %158 = icmp ult i64 %155, %157
  br i1 %158, label %145, label %159, !llvm.loop !67

159:                                              ; preds = %145, %142
  %160 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
  call void %160(ptr noundef nonnull %140) #15
  br label %161

161:                                              ; preds = %159, %138
  call void @BLI_bvhtree_free(ptr noundef %40) #15
  %162 = icmp eq ptr %40, %139
  br i1 %162, label %164, label %163

163:                                              ; preds = %161
  call void @BLI_bvhtree_free(ptr noundef %139) #15
  br label %164

164:                                              ; preds = %163, %161
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #14
  %165 = load ptr, ptr %21, align 8, !tbaa !42
  call void @BLI_ghashIterator_init(ptr noundef nonnull %13, ptr noundef %165) #15
  %166 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef nonnull %13) #16, !range !68
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %168, label %227

168:                                              ; preds = %164, %224
  %169 = call fastcc ptr @BLI_ghashIterator_getKey(ptr noundef nonnull %13) #16
  %170 = call fastcc ptr @BLI_ghashIterator_getValue(ptr noundef nonnull %13) #16
  %171 = getelementptr inbounds %struct.BMEdge, ptr %169, i64 0, i32 2
  %172 = load ptr, ptr %171, align 8, !tbaa !69
  %173 = getelementptr inbounds %struct.BMEdge, ptr %169, i64 0, i32 3
  %174 = getelementptr inbounds %struct.LinkBase, ptr %170, i64 0, i32 1
  %175 = load i32, ptr %174, align 8, !tbaa !72
  %176 = icmp ugt i32 %175, 1
  br i1 %176, label %177, label %179

177:                                              ; preds = %168
  %178 = getelementptr inbounds %struct.BMVert, ptr %172, i64 0, i32 2
  call fastcc void @edge_verts_sort(ptr noundef nonnull %178, ptr noundef nonnull %170) #16
  br label %179

179:                                              ; preds = %177, %168
  %180 = load ptr, ptr %25, align 8, !tbaa !44
  %181 = call zeroext i8 @BLI_gset_haskey(ptr noundef %180, ptr noundef nonnull %169) #15
  %182 = load ptr, ptr %170, align 8, !tbaa !53
  %183 = icmp eq ptr %182, null
  br i1 %183, label %224, label %184

184:                                              ; preds = %179
  %185 = icmp eq i8 %181, 0
  br label %186

186:                                              ; preds = %184, %220
  %187 = phi ptr [ %182, %184 ], [ %222, %220 ]
  %188 = phi ptr [ %172, %184 ], [ %221, %220 ]
  %189 = getelementptr inbounds %struct.LinkNode, ptr %187, i64 0, i32 1
  %190 = load ptr, ptr %189, align 8, !tbaa !74
  %191 = getelementptr inbounds %struct.BMVert, ptr %190, i64 0, i32 2
  %192 = load ptr, ptr %171, align 8, !tbaa !69
  %193 = getelementptr inbounds %struct.BMVert, ptr %192, i64 0, i32 2
  %194 = load ptr, ptr %173, align 8, !tbaa !76
  %195 = getelementptr inbounds %struct.BMVert, ptr %194, i64 0, i32 2
  %196 = call float @line_point_factor_v3(ptr noundef nonnull %191, ptr noundef nonnull %193, ptr noundef nonnull %195) #15
  %197 = call fastcc zeroext i8 @BM_vert_in_edge(ptr noundef nonnull %169, ptr noundef %188) #16, !range !68
  %198 = icmp eq i8 %197, 0
  br i1 %198, label %220, label %199

199:                                              ; preds = %186
  %200 = fcmp olt float %196, 0.000000e+00
  %201 = fcmp ogt float %196, 1.000000e+00
  %202 = select i1 %201, float 1.000000e+00, float %196
  %203 = select i1 %200, float 0.000000e+00, float %202
  %204 = call ptr @BM_edge_split(ptr noundef %0, ptr noundef nonnull %169, ptr noundef %188, ptr noundef null, float noundef %203) #15
  %205 = call ptr @BM_edge_exists(ptr noundef %204, ptr noundef %190) #15
  %206 = icmp eq ptr %205, null
  br i1 %206, label %207, label %215

207:                                              ; preds = %199
  %208 = call zeroext i8 @BM_vert_splice_check_double(ptr noundef %204, ptr noundef %190) #15
  %209 = icmp eq i8 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %207
  %211 = call zeroext i8 @BM_vert_pair_share_face_check(ptr noundef %204, ptr noundef %190) #15
  %212 = icmp eq i8 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %210
  %214 = call zeroext i8 @BM_vert_splice(ptr noundef %0, ptr noundef %204, ptr noundef %190) #15
  br label %217

215:                                              ; preds = %210, %207, %199
  %216 = getelementptr inbounds %struct.BMVert, ptr %204, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %216, ptr noundef nonnull %191) #16
  br label %217

217:                                              ; preds = %215, %213
  br i1 %185, label %220, label %218

218:                                              ; preds = %217
  %219 = load ptr, ptr %25, align 8, !tbaa !44
  call void @BLI_gset_insert(ptr noundef %219, ptr noundef nonnull %169) #15
  br label %220

220:                                              ; preds = %217, %218, %186
  %221 = phi ptr [ %190, %218 ], [ %190, %217 ], [ %188, %186 ]
  %222 = load ptr, ptr %187, align 8, !tbaa !53
  %223 = icmp eq ptr %222, null
  br i1 %223, label %224, label %186, !llvm.loop !77

224:                                              ; preds = %220, %179
  call void @BLI_ghashIterator_step(ptr noundef nonnull %13) #15
  %225 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef nonnull %13) #16, !range !68
  %226 = icmp eq i8 %225, 0
  br i1 %226, label %168, label %227, !llvm.loop !78

227:                                              ; preds = %224, %164
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #14
  %228 = load ptr, ptr %26, align 8, !tbaa !45
  %229 = icmp eq ptr %228, null
  br i1 %229, label %243, label %230

230:                                              ; preds = %227, %240
  %231 = phi ptr [ %241, %240 ], [ %228, %227 ]
  %232 = getelementptr inbounds %struct.LinkNode, ptr %231, i64 0, i32 1
  %233 = load ptr, ptr %232, align 8, !tbaa !74
  %234 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %233) #16
  %235 = icmp eq i8 %234, 0
  br i1 %235, label %240, label %236

236:                                              ; preds = %230
  %237 = call zeroext i8 @BM_vert_is_edge_pair(ptr noundef %233) #15
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %236
  call fastcc void @_bm_elem_flag_disable(ptr noundef %233) #16
  br label %240

240:                                              ; preds = %236, %239, %230
  %241 = load ptr, ptr %231, align 8, !tbaa !79
  %242 = icmp eq ptr %241, null
  br i1 %242, label %243, label %230, !llvm.loop !80

243:                                              ; preds = %240, %227
  %244 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !53
  %245 = load ptr, ptr %25, align 8, !tbaa !44
  %246 = call i32 @BLI_gset_size(ptr noundef %245) #15
  %247 = zext i32 %246 to i64
  %248 = shl nuw nsw i64 %247, 4
  %249 = call ptr %244(i64 noundef %248, ptr noundef nonnull @__func__.BM_mesh_intersect) #15
  %250 = load ptr, ptr %26, align 8, !tbaa !45
  %251 = icmp eq ptr %250, null
  br i1 %251, label %306, label %252

252:                                              ; preds = %243, %302
  %253 = phi i32 [ %303, %302 ], [ 0, %243 ]
  %254 = phi ptr [ %304, %302 ], [ %250, %243 ]
  %255 = getelementptr inbounds %struct.LinkNode, ptr %254, i64 0, i32 1
  %256 = load ptr, ptr %255, align 8, !tbaa !74
  %257 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %256) #16
  %258 = icmp eq i8 %257, 0
  br i1 %258, label %302, label %259

259:                                              ; preds = %252
  %260 = getelementptr inbounds %struct.BMVert, ptr %256, i64 0, i32 4
  %261 = load ptr, ptr %260, align 8, !tbaa !81
  %262 = getelementptr inbounds %struct.BMEdge, ptr %261, i64 0, i32 5
  %263 = getelementptr inbounds %struct.BMEdge, ptr %261, i64 0, i32 3
  %264 = load ptr, ptr %263, align 8, !tbaa !76
  %265 = icmp eq ptr %256, %264
  %266 = zext i1 %265 to i64
  %267 = getelementptr inbounds %struct.BMDiskLink, ptr %262, i64 %266
  %268 = load ptr, ptr %267, align 8, !tbaa !83
  %269 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %261) #16
  %270 = icmp eq i8 %269, 0
  br i1 %270, label %271, label %302

271:                                              ; preds = %259
  %272 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %268) #16
  %273 = icmp eq i8 %272, 0
  br i1 %273, label %274, label %302

274:                                              ; preds = %271
  %275 = call fastcc ptr @BM_edge_other_vert(ptr noundef nonnull %261, ptr noundef nonnull %256) #16
  %276 = call fastcc ptr @BM_edge_other_vert(ptr noundef %268, ptr noundef nonnull %256) #16
  %277 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %275) #16
  %278 = icmp eq i8 %277, 0
  %279 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %276) #16
  %280 = icmp eq i8 %279, 0
  br i1 %278, label %282, label %281

281:                                              ; preds = %274
  br i1 %280, label %284, label %302

282:                                              ; preds = %274
  br i1 %280, label %283, label %284

283:                                              ; preds = %282
  call fastcc void @_bm_elem_flag_enable(ptr noundef %268) #16
  br label %296

284:                                              ; preds = %281, %282
  %285 = phi ptr [ %261, %281 ], [ %268, %282 ]
  %286 = call fastcc ptr @BM_edge_other_vert(ptr noundef %285, ptr noundef nonnull %256) #16
  call fastcc void @_bm_elem_flag_enable(ptr noundef %285) #16
  %287 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %286) #16
  %288 = icmp eq i8 %287, 0
  br i1 %288, label %296, label %289

289:                                              ; preds = %284, %289
  %290 = phi ptr [ %293, %289 ], [ %286, %284 ]
  %291 = phi ptr [ %292, %289 ], [ %285, %284 ]
  %292 = call fastcc ptr @bm_vert_other_edge(ptr noundef %290, ptr noundef %291) #16
  call fastcc void @_bm_elem_flag_enable(ptr noundef %292) #16
  %293 = call fastcc ptr @BM_edge_other_vert(ptr noundef %292, ptr noundef %290) #16
  call fastcc void @_bm_elem_flag_enable(ptr noundef %292) #16
  %294 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %293) #16
  %295 = icmp eq i8 %294, 0
  br i1 %295, label %296, label %289

296:                                              ; preds = %289, %284, %283
  %297 = phi ptr [ %276, %283 ], [ %286, %284 ], [ %293, %289 ]
  %298 = add i32 %253, 1
  %299 = zext i32 %253 to i64
  %300 = getelementptr inbounds [2 x ptr], ptr %249, i64 %299
  store ptr %256, ptr %300, align 8, !tbaa !53
  %301 = getelementptr inbounds ptr, ptr %300, i64 1
  store ptr %297, ptr %301, align 8, !tbaa !53
  br label %302

302:                                              ; preds = %296, %281, %259, %271, %252
  %303 = phi i32 [ %253, %252 ], [ %253, %271 ], [ %253, %259 ], [ %253, %281 ], [ %298, %296 ]
  %304 = load ptr, ptr %254, align 8, !tbaa !79
  %305 = icmp eq ptr %304, null
  br i1 %305, label %306, label %252, !llvm.loop !84

306:                                              ; preds = %302, %243
  %307 = phi i32 [ 0, %243 ], [ %303, %302 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #14
  %308 = load ptr, ptr %23, align 8, !tbaa !43
  call void @BLI_ghashIterator_init(ptr noundef nonnull %14, ptr noundef %308) #15
  %309 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef nonnull %14) #16, !range !68
  %310 = icmp eq i8 %309, 0
  br i1 %310, label %311, label %335

311:                                              ; preds = %306, %332
  %312 = call fastcc ptr @BLI_ghashIterator_getValue(ptr noundef nonnull %14) #16
  %313 = load ptr, ptr %312, align 8, !tbaa !53
  %314 = icmp eq ptr %313, null
  br i1 %314, label %332, label %315

315:                                              ; preds = %311
  %316 = getelementptr inbounds %struct.LinkBase, ptr %312, i64 0, i32 1
  br label %317

317:                                              ; preds = %315, %328
  %318 = phi ptr [ %313, %315 ], [ %330, %328 ]
  %319 = phi ptr [ %312, %315 ], [ %329, %328 ]
  %320 = getelementptr inbounds %struct.LinkNode, ptr %318, i64 0, i32 1
  %321 = load ptr, ptr %320, align 8, !tbaa !74
  %322 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %321) #16
  %323 = icmp eq i8 %322, 0
  br i1 %323, label %328, label %324

324:                                              ; preds = %317
  %325 = load ptr, ptr %318, align 8, !tbaa !79
  store ptr %325, ptr %319, align 8, !tbaa !53
  %326 = load i32, ptr %316, align 8, !tbaa !72
  %327 = add i32 %326, -1
  store i32 %327, ptr %316, align 8, !tbaa !72
  br label %328

328:                                              ; preds = %317, %324
  %329 = phi ptr [ %319, %324 ], [ %318, %317 ]
  %330 = load ptr, ptr %318, align 8, !tbaa !53
  %331 = icmp eq ptr %330, null
  br i1 %331, label %332, label %317, !llvm.loop !85

332:                                              ; preds = %328, %311
  call void @BLI_ghashIterator_step(ptr noundef nonnull %14) #15
  %333 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef nonnull %14) #16, !range !68
  %334 = icmp eq i8 %333, 0
  br i1 %334, label %311, label %335, !llvm.loop !86

335:                                              ; preds = %332, %306
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %15) #14
  %336 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %15, ptr noundef %0) #16
  %337 = icmp eq ptr %336, null
  br i1 %337, label %372, label %338

338:                                              ; preds = %335
  %339 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 15
  br label %340

340:                                              ; preds = %338, %370
  %341 = phi ptr [ %336, %338 ], [ %342, %370 ]
  %342 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %15) #16
  %343 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %341) #16
  %344 = icmp eq i8 %343, 0
  br i1 %344, label %370, label %345

345:                                              ; preds = %340
  %346 = getelementptr inbounds %struct.BMEdge, ptr %341, i64 0, i32 4
  %347 = load ptr, ptr %346, align 8, !tbaa !87
  %348 = icmp eq ptr %347, null
  br i1 %348, label %367, label %349

349:                                              ; preds = %345
  %350 = load ptr, ptr %339, align 8, !tbaa !88
  br label %351

351:                                              ; preds = %362, %349
  %352 = phi ptr [ %347, %349 ], [ %363, %362 ]
  %353 = phi ptr [ %347, %349 ], [ %365, %362 ]
  %354 = getelementptr inbounds %struct.BMLoop, ptr %353, i64 0, i32 3
  %355 = load ptr, ptr %354, align 8, !tbaa !54
  %356 = call fastcc i32 @_bm_elem_index_get(ptr noundef %355) #16
  %357 = icmp sgt i32 %356, -1
  br i1 %357, label %358, label %362

358:                                              ; preds = %351
  %359 = zext nneg i32 %356 to i64
  %360 = getelementptr inbounds ptr, ptr %350, i64 %359
  store ptr null, ptr %360, align 8, !tbaa !53
  %361 = load ptr, ptr %346, align 8, !tbaa !87
  br label %362

362:                                              ; preds = %358, %351
  %363 = phi ptr [ %361, %358 ], [ %352, %351 ]
  %364 = getelementptr inbounds %struct.BMLoop, ptr %353, i64 0, i32 4
  %365 = load ptr, ptr %364, align 8, !tbaa !93
  %366 = icmp eq ptr %365, %363
  br i1 %366, label %367, label %351, !llvm.loop !94

367:                                              ; preds = %362, %345
  %368 = load ptr, ptr %25, align 8, !tbaa !44
  %369 = call zeroext i8 @BLI_gset_remove(ptr noundef %368, ptr noundef nonnull %341, ptr noundef null) #15
  call void @BM_edge_kill(ptr noundef %0, ptr noundef nonnull %341) #15
  br label %370

370:                                              ; preds = %340, %367
  %371 = icmp eq ptr %342, null
  br i1 %371, label %372, label %340, !llvm.loop !95

372:                                              ; preds = %370, %335
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %15) #14
  %373 = call ptr @BLI_gset_ptr_new(ptr noundef nonnull @__func__.BM_mesh_intersect) #15
  %374 = load ptr, ptr %26, align 8, !tbaa !45
  %375 = icmp eq ptr %374, null
  br i1 %375, label %376, label %380

376:                                              ; preds = %392, %372
  %377 = icmp eq i32 %307, 0
  br i1 %377, label %423, label %378

378:                                              ; preds = %376
  %379 = zext i32 %307 to i64
  br label %395

380:                                              ; preds = %372, %392
  %381 = phi ptr [ %393, %392 ], [ %374, %372 ]
  %382 = getelementptr inbounds %struct.LinkNode, ptr %381, i64 0, i32 1
  %383 = load ptr, ptr %382, align 8, !tbaa !74
  %384 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %383) #16
  %385 = icmp eq i8 %384, 0
  br i1 %385, label %392, label %386

386:                                              ; preds = %380
  %387 = getelementptr inbounds %struct.BMVert, ptr %383, i64 0, i32 4
  %388 = load ptr, ptr %387, align 8, !tbaa !81
  %389 = icmp eq ptr %388, null
  br i1 %389, label %390, label %392

390:                                              ; preds = %386
  %391 = call zeroext i8 @BLI_gset_add(ptr noundef %373, ptr noundef nonnull %383) #15
  call void @BM_vert_kill(ptr noundef %0, ptr noundef nonnull %383) #15
  br label %392

392:                                              ; preds = %386, %390, %380
  %393 = load ptr, ptr %381, align 8, !tbaa !79
  %394 = icmp eq ptr %393, null
  br i1 %394, label %376, label %380, !llvm.loop !96

395:                                              ; preds = %378, %420
  %396 = phi i64 [ 0, %378 ], [ %421, %420 ]
  %397 = getelementptr inbounds [2 x ptr], ptr %249, i64 %396
  %398 = load ptr, ptr %397, align 8, !tbaa !53
  %399 = call zeroext i8 @BLI_gset_haskey(ptr noundef %373, ptr noundef %398) #15
  %400 = icmp eq i8 %399, 0
  br i1 %400, label %401, label %420

401:                                              ; preds = %395
  %402 = getelementptr inbounds [2 x ptr], ptr %249, i64 %396, i64 1
  %403 = load ptr, ptr %402, align 8, !tbaa !53
  %404 = call zeroext i8 @BLI_gset_haskey(ptr noundef %373, ptr noundef %403) #15
  %405 = icmp eq i8 %404, 0
  br i1 %405, label %406, label %420

406:                                              ; preds = %401
  %407 = load ptr, ptr %397, align 8, !tbaa !53
  %408 = load ptr, ptr %402, align 8, !tbaa !53
  %409 = call ptr @BM_edge_exists(ptr noundef %407, ptr noundef %408) #15
  %410 = icmp eq ptr %409, null
  br i1 %410, label %411, label %420

411:                                              ; preds = %406
  %412 = load ptr, ptr %397, align 8, !tbaa !53
  %413 = load ptr, ptr %402, align 8, !tbaa !53
  %414 = call zeroext i8 @BM_vert_splice_check_double(ptr noundef %412, ptr noundef %413) #15
  %415 = icmp eq i8 %414, 0
  br i1 %415, label %416, label %420

416:                                              ; preds = %411
  %417 = load ptr, ptr %397, align 8, !tbaa !53
  %418 = load ptr, ptr %402, align 8, !tbaa !53
  %419 = call zeroext i8 @BM_vert_splice(ptr noundef %0, ptr noundef %417, ptr noundef %418) #15
  br label %420

420:                                              ; preds = %395, %401, %416, %411, %406
  %421 = add nuw nsw i64 %396, 1
  %422 = icmp eq i64 %421, %379
  br i1 %422, label %423, label %395, !llvm.loop !97

423:                                              ; preds = %420, %376
  call void @BLI_gset_free(ptr noundef %373, ptr noundef null) #15
  %424 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
  call void %424(ptr noundef %249) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %16) #14
  %425 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 15
  %426 = load ptr, ptr %425, align 8, !tbaa !88
  %427 = load ptr, ptr %23, align 8, !tbaa !43
  call void @BLI_ghashIterator_init(ptr noundef nonnull %16, ptr noundef %427) #15
  %428 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef nonnull %16) #16, !range !68
  %429 = icmp eq i8 %428, 0
  br i1 %429, label %430, label %443

430:                                              ; preds = %423, %440
  %431 = call fastcc ptr @BLI_ghashIterator_getKey(ptr noundef nonnull %16) #16
  %432 = ptrtoint ptr %431 to i64
  %433 = shl i64 %432, 32
  %434 = ashr exact i64 %433, 32
  %435 = getelementptr inbounds ptr, ptr %426, i64 %434
  %436 = load ptr, ptr %435, align 8, !tbaa !53
  %437 = icmp eq ptr %436, null
  br i1 %437, label %440, label %438

438:                                              ; preds = %430
  %439 = call fastcc ptr @BLI_ghashIterator_getValue(ptr noundef nonnull %16) #16
  call fastcc void @face_edges_split(ptr noundef %0, ptr noundef nonnull %436, ptr noundef %439) #16
  br label %440

440:                                              ; preds = %430, %438
  call void @BLI_ghashIterator_step(ptr noundef nonnull %16) #15
  %441 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef nonnull %16) #16, !range !68
  %442 = icmp eq i8 %441, 0
  br i1 %442, label %430, label %443, !llvm.loop !98

443:                                              ; preds = %440, %423
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #14
  %444 = icmp eq i8 %6, 0
  br i1 %444, label %454, label %445

445:                                              ; preds = %443
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #14
  call void @BM_mesh_elem_hflag_disable_all(ptr noundef %0, i8 noundef zeroext 2, i8 noundef zeroext 16, i8 noundef zeroext 0) #15
  %446 = load ptr, ptr %25, align 8, !tbaa !44
  call fastcc void @BLI_gsetIterator_init(ptr noundef nonnull %17, ptr noundef %446) #16
  %447 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %17) #16, !range !68
  %448 = icmp eq i8 %447, 0
  br i1 %448, label %449, label %453

449:                                              ; preds = %445, %449
  %450 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %17) #16
  call fastcc void @_bm_elem_flag_enable(ptr noundef %450) #16
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %17) #16
  %451 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %17) #16, !range !68
  %452 = icmp eq i8 %451, 0
  br i1 %452, label %449, label %453, !llvm.loop !99

453:                                              ; preds = %449, %445
  call void @BM_mesh_edgesplit(ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 0) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #14
  br label %454

454:                                              ; preds = %453, %443
  %455 = load ptr, ptr %23, align 8, !tbaa !43
  %456 = call i32 @BLI_ghash_size(ptr noundef %455) #15
  %457 = icmp ne i32 %456, 0
  %458 = zext i1 %457 to i8
  %459 = load ptr, ptr %19, align 8, !tbaa !41
  call void @BLI_ghash_free(ptr noundef %459, ptr noundef null, ptr noundef null) #15
  %460 = load ptr, ptr %21, align 8, !tbaa !42
  call void @BLI_ghash_free(ptr noundef %460, ptr noundef null, ptr noundef null) #15
  %461 = load ptr, ptr %23, align 8, !tbaa !43
  call void @BLI_ghash_free(ptr noundef %461, ptr noundef null, ptr noundef null) #15
  %462 = load ptr, ptr %25, align 8, !tbaa !44
  call void @BLI_gset_free(ptr noundef %462, ptr noundef null) #15
  %463 = load ptr, ptr %28, align 8, !tbaa !46
  call void @BLI_memarena_free(ptr noundef %463) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %9) #14
  ret i8 %458
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @BLI_ghash_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_ghashutil_uinthash_v4(ptr noundef) #2

; Function Attrs: optsize
declare zeroext i8 @BLI_ghashutil_uinthash_v4_cmp(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare ptr @BLI_ghash_ptr_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_gset_ptr_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_memarena_new(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_mesh_elem_index_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_mesh_elem_table_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_mesh_elem_hflag_disable_all(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_bvhtree_new(i32 noundef, float noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_bvhtree_insert(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @BLI_bvhtree_balance(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_bvhtree_overlap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_isect_tri_tri(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) unnamed_addr #0 !PGOFuncName !100 {
  %6 = alloca [3 x ptr], align 16
  %7 = alloca [3 x ptr], align 16
  %8 = alloca [3 x ptr], align 16
  %9 = alloca [3 x ptr], align 16
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [8 x ptr], align 16
  %13 = getelementptr inbounds ptr, ptr %12, i64 1
  %14 = alloca [8 x ptr], align 16
  %15 = getelementptr inbounds ptr, ptr %14, i64 1
  %16 = alloca [3 x float], align 4
  %17 = alloca [3 x float], align 4
  %18 = alloca [3 x [3 x float]], align 16
  %19 = alloca [3 x float], align 4
  %20 = alloca [3 x [3 x float]], align 16
  %21 = alloca [3 x float], align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = load ptr, ptr %3, align 8, !tbaa !53
  %25 = getelementptr inbounds %struct.BMLoop, ptr %24, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !54
  %27 = load ptr, ptr %4, align 8, !tbaa !53
  %28 = getelementptr inbounds %struct.BMLoop, ptr %27, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #14
  %30 = getelementptr inbounds %struct.BMLoop, ptr %24, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !58
  store ptr %31, ptr %6, align 16, !tbaa !53
  %32 = getelementptr inbounds ptr, ptr %6, i64 1
  %33 = getelementptr inbounds ptr, ptr %3, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !53
  %35 = getelementptr inbounds %struct.BMLoop, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !58
  store ptr %36, ptr %32, align 8, !tbaa !53
  %37 = getelementptr inbounds ptr, ptr %6, i64 2
  %38 = getelementptr inbounds ptr, ptr %3, i64 2
  %39 = load ptr, ptr %38, align 8, !tbaa !53
  %40 = getelementptr inbounds %struct.BMLoop, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !58
  store ptr %41, ptr %37, align 16, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #14
  %42 = getelementptr inbounds %struct.BMLoop, ptr %27, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !58
  store ptr %43, ptr %7, align 16, !tbaa !53
  %44 = getelementptr inbounds ptr, ptr %7, i64 1
  %45 = getelementptr inbounds ptr, ptr %4, i64 1
  %46 = load ptr, ptr %45, align 8, !tbaa !53
  %47 = getelementptr inbounds %struct.BMLoop, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !58
  store ptr %48, ptr %44, align 8, !tbaa !53
  %49 = getelementptr inbounds ptr, ptr %7, i64 2
  %50 = getelementptr inbounds ptr, ptr %4, i64 2
  %51 = load ptr, ptr %50, align 8, !tbaa !53
  %52 = getelementptr inbounds %struct.BMLoop, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !58
  store ptr %53, ptr %49, align 16, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #14
  %54 = getelementptr inbounds %struct.BMVert, ptr %31, i64 0, i32 2
  store ptr %54, ptr %8, align 16, !tbaa !53
  %55 = getelementptr inbounds ptr, ptr %8, i64 1
  %56 = getelementptr inbounds %struct.BMVert, ptr %36, i64 0, i32 2
  store ptr %56, ptr %55, align 8, !tbaa !53
  %57 = getelementptr inbounds ptr, ptr %8, i64 2
  %58 = getelementptr inbounds %struct.BMVert, ptr %41, i64 0, i32 2
  store ptr %58, ptr %57, align 16, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #14
  %59 = getelementptr inbounds %struct.BMVert, ptr %43, i64 0, i32 2
  store ptr %59, ptr %9, align 16, !tbaa !53
  %60 = getelementptr inbounds ptr, ptr %9, i64 1
  %61 = getelementptr inbounds %struct.BMVert, ptr %48, i64 0, i32 2
  store ptr %61, ptr %60, align 8, !tbaa !53
  %62 = getelementptr inbounds ptr, ptr %9, i64 2
  %63 = getelementptr inbounds %struct.BMVert, ptr %53, i64 0, i32 2
  store ptr %63, ptr %62, align 16, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %14) #14
  %64 = icmp eq ptr %31, %43
  %65 = icmp eq ptr %31, %48
  %66 = select i1 %64, i1 true, i1 %65
  %67 = icmp eq ptr %31, %53
  %68 = select i1 %66, i1 true, i1 %67
  br i1 %68, label %447, label %69

69:                                               ; preds = %5
  %70 = icmp eq ptr %36, %43
  %71 = icmp eq ptr %36, %48
  %72 = or i1 %70, %71
  %73 = icmp eq ptr %36, %53
  %74 = or i1 %72, %73
  br i1 %74, label %447, label %75

75:                                               ; preds = %69
  %76 = icmp eq ptr %41, %43
  %77 = icmp eq ptr %41, %48
  %78 = or i1 %76, %77
  %79 = icmp eq ptr %41, %53
  %80 = or i1 %78, %79
  br i1 %80, label %447, label %81

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.ISectState, ptr %0, i64 0, i32 7, i32 3
  %83 = load float, ptr %82, align 4, !tbaa !51
  br label %84

84:                                               ; preds = %81, %135
  %85 = phi i64 [ 0, %81 ], [ %136, %135 ]
  %86 = phi i32 [ 0, %81 ], [ %132, %135 ]
  %87 = phi i32 [ 0, %81 ], [ %131, %135 ]
  %88 = phi i32 [ 0, %81 ], [ %130, %135 ]
  %89 = phi i32 [ 0, %81 ], [ %129, %135 ]
  %90 = getelementptr inbounds [3 x ptr], ptr %6, i64 0, i64 %85
  %91 = load ptr, ptr %90, align 8, !tbaa !53
  %92 = getelementptr inbounds %struct.BMVert, ptr %91, i64 0, i32 2
  %93 = trunc i64 %85 to i32
  %94 = shl nuw nsw i32 1, %93
  br label %97

95:                                               ; preds = %135
  %96 = getelementptr inbounds %struct.ISectState, ptr %0, i64 0, i32 7
  br label %138

97:                                               ; preds = %84, %128
  %98 = phi i64 [ 0, %84 ], [ %133, %128 ]
  %99 = phi i32 [ %86, %84 ], [ %132, %128 ]
  %100 = phi i32 [ %87, %84 ], [ %131, %128 ]
  %101 = phi i32 [ %88, %84 ], [ %130, %128 ]
  %102 = phi i32 [ %89, %84 ], [ %129, %128 ]
  %103 = getelementptr inbounds [3 x ptr], ptr %7, i64 0, i64 %98
  %104 = load ptr, ptr %103, align 8, !tbaa !53
  %105 = getelementptr inbounds %struct.BMVert, ptr %104, i64 0, i32 2
  %106 = tail call fastcc float @len_squared_v3v3(ptr noundef nonnull %92, ptr noundef nonnull %105) #16
  %107 = fcmp ugt float %106, %83
  br i1 %107, label %128, label %108

108:                                              ; preds = %97
  %109 = and i32 %99, %94
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %108
  %112 = add i32 %101, 1
  %113 = zext i32 %101 to i64
  %114 = getelementptr inbounds [8 x ptr], ptr %12, i64 0, i64 %113
  store ptr %91, ptr %114, align 8, !tbaa !53
  %115 = or i32 %99, %94
  br label %116

116:                                              ; preds = %111, %108
  %117 = phi i32 [ %101, %108 ], [ %112, %111 ]
  %118 = phi i32 [ %99, %108 ], [ %115, %111 ]
  %119 = trunc i64 %98 to i32
  %120 = shl nuw nsw i32 1, %119
  %121 = and i32 %100, %120
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %116
  %124 = add i32 %102, 1
  %125 = zext i32 %102 to i64
  %126 = getelementptr inbounds [8 x ptr], ptr %14, i64 0, i64 %125
  store ptr %104, ptr %126, align 8, !tbaa !53
  %127 = or i32 %100, %120
  br label %128

128:                                              ; preds = %97, %123, %116
  %129 = phi i32 [ %102, %116 ], [ %124, %123 ], [ %102, %97 ]
  %130 = phi i32 [ %117, %116 ], [ %117, %123 ], [ %101, %97 ]
  %131 = phi i32 [ %100, %116 ], [ %127, %123 ], [ %100, %97 ]
  %132 = phi i32 [ %118, %116 ], [ %118, %123 ], [ %99, %97 ]
  %133 = add nuw nsw i64 %98, 1
  %134 = icmp eq i64 %133, 3
  br i1 %134, label %135, label %97, !llvm.loop !101

135:                                              ; preds = %128
  %136 = add nuw nsw i64 %85, 1
  %137 = icmp eq i64 %136, 3
  br i1 %137, label %95, label %84, !llvm.loop !102

138:                                              ; preds = %95, %195
  %139 = phi i64 [ 0, %95 ], [ %198, %195 ]
  %140 = phi i32 [ %132, %95 ], [ %197, %195 ]
  %141 = phi i32 [ %129, %95 ], [ %196, %195 ]
  %142 = trunc i64 %139 to i32
  %143 = shl nuw nsw i32 1, %142
  %144 = and i32 %140, %143
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %195

146:                                              ; preds = %138
  %147 = getelementptr inbounds [3 x ptr], ptr %6, i64 0, i64 %139
  br label %148

148:                                              ; preds = %146, %193
  %149 = phi i64 [ 0, %146 ], [ %150, %193 ]
  %150 = add nuw nsw i64 %149, 1
  %151 = icmp eq i64 %150, 3
  %152 = trunc i64 %150 to i32
  %153 = select i1 %151, i32 0, i32 %152
  %154 = trunc i64 %149 to i32
  %155 = shl nuw nsw i32 1, %154
  %156 = shl nuw nsw i32 1, %153
  %157 = or i32 %156, %155
  %158 = and i32 %157, %131
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %193

160:                                              ; preds = %148
  %161 = load ptr, ptr %147, align 8, !tbaa !53
  %162 = getelementptr inbounds %struct.BMVert, ptr %161, i64 0, i32 2
  %163 = getelementptr inbounds [3 x ptr], ptr %7, i64 0, i64 %149
  %164 = load ptr, ptr %163, align 8, !tbaa !53
  %165 = getelementptr inbounds %struct.BMVert, ptr %164, i64 0, i32 2
  %166 = zext nneg i32 %153 to i64
  %167 = getelementptr inbounds [3 x ptr], ptr %7, i64 0, i64 %166
  %168 = load ptr, ptr %167, align 8, !tbaa !53
  %169 = getelementptr inbounds %struct.BMVert, ptr %168, i64 0, i32 2
  %170 = call float @line_point_factor_v3(ptr noundef nonnull %162, ptr noundef nonnull %165, ptr noundef nonnull %169) #15
  %171 = load float, ptr %96, align 8, !tbaa !47
  %172 = fsub float 0.000000e+00, %171
  %173 = fcmp ogt float %170, %172
  br i1 %173, label %174, label %193

174:                                              ; preds = %160
  %175 = fpext float %170 to double
  %176 = fpext float %171 to double
  %177 = fadd double %176, 1.000000e+00
  %178 = fcmp ogt double %177, %175
  br i1 %178, label %179, label %193

179:                                              ; preds = %174
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #14
  call void @interp_v3_v3v3(ptr noundef nonnull %16, ptr noundef nonnull %165, ptr noundef nonnull %169, float noundef %170) #15
  %180 = call fastcc float @len_squared_v3v3(ptr noundef nonnull %16, ptr noundef nonnull %162) #16
  %181 = load float, ptr %82, align 4, !tbaa !51
  %182 = fcmp ugt float %180, %181
  br i1 %182, label %192, label %183

183:                                              ; preds = %179
  %184 = add i32 %141, 1
  %185 = zext i32 %141 to i64
  %186 = getelementptr inbounds [8 x ptr], ptr %14, i64 0, i64 %185
  store ptr %161, ptr %186, align 8, !tbaa !53
  %187 = or i32 %140, %143
  %188 = call ptr @BM_edge_exists(ptr noundef %164, ptr noundef %168) #15
  %189 = icmp eq ptr %188, null
  br i1 %189, label %191, label %190

190:                                              ; preds = %183
  call fastcc void @edge_verts_add(ptr noundef nonnull %0, ptr noundef nonnull %188, ptr noundef %161, i8 noundef zeroext 1) #16
  br label %191

191:                                              ; preds = %190, %183
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #14
  br label %195

192:                                              ; preds = %179
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #14
  br label %193

193:                                              ; preds = %160, %174, %148, %192
  %194 = icmp eq i64 %150, 3
  br i1 %194, label %195, label %148

195:                                              ; preds = %193, %191, %138
  %196 = phi i32 [ %141, %138 ], [ %184, %191 ], [ %141, %193 ]
  %197 = phi i32 [ %140, %138 ], [ %187, %191 ], [ %140, %193 ]
  %198 = add nuw nsw i64 %139, 1
  %199 = icmp eq i64 %198, 3
  br i1 %199, label %200, label %138, !llvm.loop !103

200:                                              ; preds = %195, %257
  %201 = phi i64 [ %260, %257 ], [ 0, %195 ]
  %202 = phi i32 [ %259, %257 ], [ %131, %195 ]
  %203 = phi i32 [ %258, %257 ], [ %130, %195 ]
  %204 = trunc i64 %201 to i32
  %205 = shl nuw nsw i32 1, %204
  %206 = and i32 %202, %205
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %257

208:                                              ; preds = %200
  %209 = getelementptr inbounds [3 x ptr], ptr %7, i64 0, i64 %201
  br label %210

210:                                              ; preds = %208, %255
  %211 = phi i64 [ 0, %208 ], [ %212, %255 ]
  %212 = add nuw nsw i64 %211, 1
  %213 = icmp eq i64 %212, 3
  %214 = trunc i64 %212 to i32
  %215 = select i1 %213, i32 0, i32 %214
  %216 = trunc i64 %211 to i32
  %217 = shl nuw nsw i32 1, %216
  %218 = shl nuw nsw i32 1, %215
  %219 = or i32 %218, %217
  %220 = and i32 %219, %197
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %255

222:                                              ; preds = %210
  %223 = load ptr, ptr %209, align 8, !tbaa !53
  %224 = getelementptr inbounds %struct.BMVert, ptr %223, i64 0, i32 2
  %225 = getelementptr inbounds [3 x ptr], ptr %6, i64 0, i64 %211
  %226 = load ptr, ptr %225, align 8, !tbaa !53
  %227 = getelementptr inbounds %struct.BMVert, ptr %226, i64 0, i32 2
  %228 = zext nneg i32 %215 to i64
  %229 = getelementptr inbounds [3 x ptr], ptr %6, i64 0, i64 %228
  %230 = load ptr, ptr %229, align 8, !tbaa !53
  %231 = getelementptr inbounds %struct.BMVert, ptr %230, i64 0, i32 2
  %232 = call float @line_point_factor_v3(ptr noundef nonnull %224, ptr noundef nonnull %227, ptr noundef nonnull %231) #15
  %233 = fpext float %232 to double
  %234 = load float, ptr %96, align 8, !tbaa !47
  %235 = fpext float %234 to double
  %236 = fsub double 0.000000e+00, %235
  %237 = fcmp olt double %236, %233
  %238 = fadd double %235, 1.000000e+00
  %239 = fcmp ogt double %238, %233
  %240 = and i1 %237, %239
  br i1 %240, label %241, label %255

241:                                              ; preds = %222
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #14
  call void @interp_v3_v3v3(ptr noundef nonnull %17, ptr noundef nonnull %227, ptr noundef nonnull %231, float noundef %232) #15
  %242 = call fastcc float @len_squared_v3v3(ptr noundef nonnull %17, ptr noundef nonnull %224) #16
  %243 = load float, ptr %82, align 4, !tbaa !51
  %244 = fcmp ugt float %242, %243
  br i1 %244, label %254, label %245

245:                                              ; preds = %241
  %246 = add i32 %203, 1
  %247 = zext i32 %203 to i64
  %248 = getelementptr inbounds [8 x ptr], ptr %12, i64 0, i64 %247
  store ptr %223, ptr %248, align 8, !tbaa !53
  %249 = or i32 %202, %205
  %250 = call ptr @BM_edge_exists(ptr noundef %226, ptr noundef %230) #15
  %251 = icmp eq ptr %250, null
  br i1 %251, label %253, label %252

252:                                              ; preds = %245
  call fastcc void @edge_verts_add(ptr noundef nonnull %0, ptr noundef nonnull %250, ptr noundef %223, i8 noundef zeroext 1) #16
  br label %253

253:                                              ; preds = %252, %245
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #14
  br label %257

254:                                              ; preds = %241
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #14
  br label %255

255:                                              ; preds = %222, %210, %254
  %256 = icmp eq i64 %212, 3
  br i1 %256, label %257, label %210

257:                                              ; preds = %255, %253, %200
  %258 = phi i32 [ %203, %200 ], [ %246, %253 ], [ %203, %255 ]
  %259 = phi i32 [ %202, %200 ], [ %249, %253 ], [ %202, %255 ]
  %260 = add nuw nsw i64 %201, 1
  %261 = icmp eq i64 %260, 3
  br i1 %261, label %262, label %200, !llvm.loop !104

262:                                              ; preds = %257
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %18) #14
  call fastcc void @copy_v3_v3(ptr noundef nonnull %18, ptr noundef nonnull %59) #16
  %263 = getelementptr inbounds [3 x [3 x float]], ptr %18, i64 0, i64 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %263, ptr noundef nonnull %61) #16
  %264 = getelementptr inbounds [3 x [3 x float]], ptr %18, i64 0, i64 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %264, ptr noundef nonnull %63) #16
  %265 = getelementptr inbounds %struct.ISectState, ptr %0, i64 0, i32 7, i32 2
  %266 = load float, ptr %265, align 8, !tbaa !48
  %267 = fsub float 1.000000e+00, %266
  call fastcc void @tri_v3_scale(ptr noundef nonnull %18, ptr noundef nonnull %263, ptr noundef nonnull %264, float noundef %267) #16
  br label %268

268:                                              ; preds = %262, %295
  %269 = phi i64 [ 0, %262 ], [ %299, %295 ]
  %270 = phi i32 [ %197, %262 ], [ %298, %295 ]
  %271 = phi i32 [ %258, %262 ], [ %297, %295 ]
  %272 = phi i32 [ %196, %262 ], [ %296, %295 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #14
  %273 = trunc i64 %269 to i32
  %274 = shl nuw nsw i32 1, %273
  %275 = and i32 %270, %274
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %295

277:                                              ; preds = %268
  %278 = getelementptr inbounds [3 x ptr], ptr %6, i64 0, i64 %269
  %279 = load ptr, ptr %278, align 8, !tbaa !53
  %280 = getelementptr inbounds %struct.BMVert, ptr %279, i64 0, i32 2
  %281 = call zeroext i8 @isect_point_tri_v3(ptr noundef nonnull %280, ptr noundef nonnull %18, ptr noundef nonnull %263, ptr noundef nonnull %264, ptr noundef nonnull %19) #15
  %282 = icmp eq i8 %281, 0
  br i1 %282, label %295, label %283

283:                                              ; preds = %277
  %284 = call fastcc float @len_squared_v3v3(ptr noundef nonnull %19, ptr noundef nonnull %280) #16
  %285 = load float, ptr %82, align 4, !tbaa !51
  %286 = fcmp ugt float %284, %285
  br i1 %286, label %295, label %287

287:                                              ; preds = %283
  %288 = add i32 %271, 1
  %289 = zext i32 %271 to i64
  %290 = getelementptr inbounds [8 x ptr], ptr %12, i64 0, i64 %289
  store ptr %279, ptr %290, align 8, !tbaa !53
  %291 = add i32 %272, 1
  %292 = zext i32 %272 to i64
  %293 = getelementptr inbounds [8 x ptr], ptr %14, i64 0, i64 %292
  store ptr %279, ptr %293, align 8, !tbaa !53
  %294 = or i32 %270, %274
  br label %295

295:                                              ; preds = %277, %287, %283, %268
  %296 = phi i32 [ %272, %268 ], [ %291, %287 ], [ %272, %283 ], [ %272, %277 ]
  %297 = phi i32 [ %271, %268 ], [ %288, %287 ], [ %271, %283 ], [ %271, %277 ]
  %298 = phi i32 [ %270, %268 ], [ %294, %287 ], [ %270, %283 ], [ %270, %277 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #14
  %299 = add nuw nsw i64 %269, 1
  %300 = icmp eq i64 %299, 3
  br i1 %300, label %301, label %268, !llvm.loop !105

301:                                              ; preds = %295
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %18) #14
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %20) #14
  call fastcc void @copy_v3_v3(ptr noundef nonnull %20, ptr noundef nonnull %54) #16
  %302 = getelementptr inbounds [3 x [3 x float]], ptr %20, i64 0, i64 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %302, ptr noundef nonnull %56) #16
  %303 = getelementptr inbounds [3 x [3 x float]], ptr %20, i64 0, i64 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %303, ptr noundef nonnull %58) #16
  %304 = load float, ptr %265, align 8, !tbaa !48
  %305 = fsub float 1.000000e+00, %304
  call fastcc void @tri_v3_scale(ptr noundef nonnull %20, ptr noundef nonnull %302, ptr noundef nonnull %303, float noundef %305) #16
  br label %306

306:                                              ; preds = %301, %333
  %307 = phi i64 [ 0, %301 ], [ %337, %333 ]
  %308 = phi i32 [ %259, %301 ], [ %336, %333 ]
  %309 = phi i32 [ %297, %301 ], [ %335, %333 ]
  %310 = phi i32 [ %296, %301 ], [ %334, %333 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #14
  %311 = trunc i64 %307 to i32
  %312 = shl nuw nsw i32 1, %311
  %313 = and i32 %308, %312
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %315, label %333

315:                                              ; preds = %306
  %316 = getelementptr inbounds [3 x ptr], ptr %7, i64 0, i64 %307
  %317 = load ptr, ptr %316, align 8, !tbaa !53
  %318 = getelementptr inbounds %struct.BMVert, ptr %317, i64 0, i32 2
  %319 = call zeroext i8 @isect_point_tri_v3(ptr noundef nonnull %318, ptr noundef nonnull %20, ptr noundef nonnull %302, ptr noundef nonnull %303, ptr noundef nonnull %21) #15
  %320 = icmp eq i8 %319, 0
  br i1 %320, label %333, label %321

321:                                              ; preds = %315
  %322 = call fastcc float @len_squared_v3v3(ptr noundef nonnull %21, ptr noundef nonnull %318) #16
  %323 = load float, ptr %82, align 4, !tbaa !51
  %324 = fcmp ugt float %322, %323
  br i1 %324, label %333, label %325

325:                                              ; preds = %321
  %326 = add i32 %309, 1
  %327 = zext i32 %309 to i64
  %328 = getelementptr inbounds [8 x ptr], ptr %12, i64 0, i64 %327
  store ptr %317, ptr %328, align 8, !tbaa !53
  %329 = add i32 %310, 1
  %330 = zext i32 %310 to i64
  %331 = getelementptr inbounds [8 x ptr], ptr %14, i64 0, i64 %330
  store ptr %317, ptr %331, align 8, !tbaa !53
  %332 = or i32 %308, %312
  br label %333

333:                                              ; preds = %315, %325, %321, %306
  %334 = phi i32 [ %310, %306 ], [ %329, %325 ], [ %310, %321 ], [ %310, %315 ]
  %335 = phi i32 [ %309, %306 ], [ %326, %325 ], [ %309, %321 ], [ %309, %315 ]
  %336 = phi i32 [ %308, %306 ], [ %332, %325 ], [ %308, %321 ], [ %308, %315 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #14
  %337 = add nuw nsw i64 %307, 1
  %338 = icmp eq i64 %337, 3
  br i1 %338, label %339, label %306, !llvm.loop !106

339:                                              ; preds = %333
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %20) #14
  %340 = icmp ugt i32 %335, 2
  %341 = icmp ugt i32 %334, 2
  %342 = select i1 %340, i1 %341, i1 false
  br i1 %342, label %447, label %343

343:                                              ; preds = %339
  %344 = call float @normal_tri_v3(ptr noundef nonnull %10, ptr noundef nonnull %54, ptr noundef nonnull %56, ptr noundef nonnull %58) #15
  %345 = call float @normal_tri_v3(ptr noundef nonnull %11, ptr noundef nonnull %59, ptr noundef nonnull %61, ptr noundef nonnull %63) #15
  br label %346

346:                                              ; preds = %343, %375
  %347 = phi i64 [ 0, %343 ], [ %350, %375 ]
  %348 = phi i32 [ %335, %343 ], [ %377, %375 ]
  %349 = phi i32 [ %334, %343 ], [ %376, %375 ]
  %350 = add nuw nsw i64 %347, 1
  %351 = icmp eq i64 %350, 3
  %352 = trunc i64 %350 to i32
  %353 = select i1 %351, i32 0, i32 %352
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %22) #14
  %354 = trunc i64 %347 to i32
  %355 = shl nuw nsw i32 1, %354
  %356 = shl nuw nsw i32 1, %353
  %357 = or i32 %356, %355
  %358 = and i32 %357, %298
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %360, label %375

360:                                              ; preds = %346
  %361 = getelementptr inbounds [3 x ptr], ptr %6, i64 0, i64 %347
  %362 = load ptr, ptr %361, align 8, !tbaa !53
  %363 = zext nneg i32 %353 to i64
  %364 = getelementptr inbounds [3 x ptr], ptr %6, i64 0, i64 %363
  %365 = load ptr, ptr %364, align 8, !tbaa !53
  %366 = call fastcc ptr @bm_isect_edge_tri(ptr noundef %0, ptr noundef %362, ptr noundef %365, ptr noundef nonnull %7, i32 noundef %2, ptr noundef nonnull %9, ptr noundef nonnull %11, ptr noundef nonnull %22) #16
  %367 = icmp eq ptr %366, null
  br i1 %367, label %375, label %368

368:                                              ; preds = %360
  %369 = add i32 %348, 1
  %370 = zext i32 %348 to i64
  %371 = getelementptr inbounds [8 x ptr], ptr %12, i64 0, i64 %370
  store ptr %366, ptr %371, align 8, !tbaa !53
  %372 = add i32 %349, 1
  %373 = zext i32 %349 to i64
  %374 = getelementptr inbounds [8 x ptr], ptr %14, i64 0, i64 %373
  store ptr %366, ptr %374, align 8, !tbaa !53
  br label %375

375:                                              ; preds = %360, %368, %346
  %376 = phi i32 [ %349, %346 ], [ %372, %368 ], [ %349, %360 ]
  %377 = phi i32 [ %348, %346 ], [ %369, %368 ], [ %348, %360 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %22) #14
  %378 = icmp eq i64 %350, 3
  br i1 %378, label %383, label %346, !llvm.loop !107

379:                                              ; preds = %415
  %380 = icmp eq i32 %416, 2
  %381 = icmp eq i32 %417, 2
  %382 = getelementptr inbounds %struct.ISectState, ptr %0, i64 0, i32 4
  br label %419

383:                                              ; preds = %375, %415
  %384 = phi i64 [ %387, %415 ], [ 0, %375 ]
  %385 = phi i32 [ %417, %415 ], [ %377, %375 ]
  %386 = phi i32 [ %416, %415 ], [ %376, %375 ]
  %387 = add nuw nsw i64 %384, 1
  %388 = icmp eq i64 %387, 3
  %389 = trunc i64 %387 to i32
  %390 = select i1 %388, i32 0, i32 %389
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %23) #14
  %391 = trunc i64 %384 to i32
  %392 = shl nuw nsw i32 1, %391
  %393 = shl nuw nsw i32 1, %390
  %394 = or i32 %393, %392
  %395 = and i32 %394, %336
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %397, label %415

397:                                              ; preds = %383
  %398 = getelementptr inbounds [3 x ptr], ptr %7, i64 0, i64 %384
  %399 = load ptr, ptr %398, align 8, !tbaa !53
  %400 = zext nneg i32 %390 to i64
  %401 = getelementptr inbounds [3 x ptr], ptr %7, i64 0, i64 %400
  %402 = load ptr, ptr %401, align 8, !tbaa !53
  %403 = call fastcc ptr @bm_isect_edge_tri(ptr noundef %0, ptr noundef %399, ptr noundef %402, ptr noundef nonnull %6, i32 noundef %1, ptr noundef nonnull %8, ptr noundef nonnull %10, ptr noundef nonnull %23) #16
  %404 = icmp eq ptr %403, null
  %405 = load i32, ptr %23, align 4
  %406 = icmp ult i32 %405, 3
  %407 = select i1 %404, i1 true, i1 %406
  br i1 %407, label %415, label %408

408:                                              ; preds = %397
  %409 = add i32 %385, 1
  %410 = zext i32 %385 to i64
  %411 = getelementptr inbounds [8 x ptr], ptr %12, i64 0, i64 %410
  store ptr %403, ptr %411, align 8, !tbaa !53
  %412 = add i32 %386, 1
  %413 = zext i32 %386 to i64
  %414 = getelementptr inbounds [8 x ptr], ptr %14, i64 0, i64 %413
  store ptr %403, ptr %414, align 8, !tbaa !53
  br label %415

415:                                              ; preds = %397, %408, %383
  %416 = phi i32 [ %386, %383 ], [ %412, %408 ], [ %386, %397 ]
  %417 = phi i32 [ %385, %383 ], [ %409, %408 ], [ %385, %397 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %23) #14
  %418 = icmp eq i64 %387, 3
  br i1 %418, label %379, label %383, !llvm.loop !108

419:                                              ; preds = %379, %446
  %420 = phi i1 [ true, %379 ], [ false, %446 ]
  br i1 %420, label %421, label %422

421:                                              ; preds = %419
  br i1 %381, label %423, label %446

422:                                              ; preds = %419
  br i1 %380, label %423, label %447

423:                                              ; preds = %422, %421
  %424 = phi ptr [ %12, %421 ], [ %14, %422 ]
  %425 = phi ptr [ %26, %421 ], [ %29, %422 ]
  %426 = phi ptr [ %13, %421 ], [ %15, %422 ]
  %427 = load ptr, ptr %424, align 16, !tbaa !53
  %428 = load ptr, ptr %426, align 8, !tbaa !53
  %429 = call ptr @BM_edge_exists(ptr noundef %427, ptr noundef %428) #15
  %430 = icmp eq ptr %429, null
  br i1 %430, label %431, label %437

431:                                              ; preds = %423
  %432 = load ptr, ptr %0, align 8, !tbaa !34
  %433 = load ptr, ptr %424, align 16, !tbaa !53
  %434 = load ptr, ptr %426, align 8, !tbaa !53
  %435 = call ptr @BM_edge_create(ptr noundef %432, ptr noundef %433, ptr noundef %434, ptr noundef null, i32 noundef 0) #15
  %436 = load ptr, ptr %382, align 8, !tbaa !44
  call void @BLI_gset_insert(ptr noundef %436, ptr noundef %435) #15
  br label %442

437:                                              ; preds = %423
  %438 = load ptr, ptr %382, align 8, !tbaa !44
  %439 = call zeroext i8 @BLI_gset_add(ptr noundef %438, ptr noundef nonnull %429) #15
  %440 = call zeroext i8 @BM_edge_in_face(ptr noundef nonnull %429, ptr noundef %425) #15
  %441 = icmp eq i8 %440, 0
  br i1 %441, label %442, label %446

442:                                              ; preds = %437, %431
  %443 = phi i8 [ 0, %431 ], [ 1, %437 ]
  %444 = phi ptr [ %435, %431 ], [ %429, %437 ]
  %445 = call fastcc i32 @_bm_elem_index_get(ptr noundef %425) #16
  call fastcc void @face_edges_add(ptr noundef nonnull %0, i32 noundef %445, ptr noundef %444, i8 noundef zeroext %443) #16
  br label %446

446:                                              ; preds = %437, %421, %442
  br i1 %420, label %419, label %447, !llvm.loop !109

447:                                              ; preds = %422, %446, %339, %5, %69, %75
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %14) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #14
  ret void
}

; Function Attrs: optsize
declare void @BLI_bvhtree_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_ghashIterator_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_ghashIterator_done(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !110 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !111
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @BLI_ghashIterator_getKey(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !113 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !111
  %4 = getelementptr inbounds %struct._gh_Entry, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !114
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @BLI_ghashIterator_getValue(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !116 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !111
  %4 = getelementptr inbounds %struct._gh_Entry, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !117
  ret ptr %5
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @edge_verts_sort(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !118 {
  %3 = getelementptr inbounds %struct.LinkBase, ptr %1, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !72
  %5 = zext i32 %4 to i64
  %6 = shl nuw nsw i64 %5, 4
  %7 = alloca i8, i64 %6, align 16
  %8 = icmp eq i32 %4, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %2, %9
  %10 = phi i64 [ %19, %9 ], [ 0, %2 ]
  %11 = phi ptr [ %12, %9 ], [ %1, %2 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !53
  %13 = getelementptr inbounds %struct.LinkNode, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !74
  %15 = getelementptr inbounds %struct.BMVert, ptr %14, i64 0, i32 2
  %16 = tail call fastcc float @len_squared_v3v3(ptr noundef %0, ptr noundef nonnull %15) #16
  %17 = getelementptr inbounds %struct.vert_sort_t, ptr %7, i64 %10
  store float %16, ptr %17, align 16, !tbaa !119
  %18 = getelementptr inbounds %struct.vert_sort_t, ptr %7, i64 %10, i32 1
  store ptr %14, ptr %18, align 8, !tbaa !121
  %19 = add nuw nsw i64 %10, 1
  %20 = icmp eq i64 %19, %5
  br i1 %20, label %21, label %9, !llvm.loop !122

21:                                               ; preds = %9, %2
  call void @qsort(ptr noundef nonnull %7, i64 noundef %5, i64 noundef 16, ptr noundef nonnull @BLI_sortutil_cmp_float) #15
  %22 = load i32, ptr %3, align 8, !tbaa !72
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %21
  %25 = zext i32 %22 to i64
  br label %26

26:                                               ; preds = %24, %26
  %27 = phi i64 [ 0, %24 ], [ %33, %26 ]
  %28 = phi ptr [ %1, %24 ], [ %29, %26 ]
  %29 = load ptr, ptr %28, align 8, !tbaa !53
  %30 = getelementptr inbounds %struct.vert_sort_t, ptr %7, i64 %27, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !121
  %32 = getelementptr inbounds %struct.LinkNode, ptr %29, i64 0, i32 1
  store ptr %31, ptr %32, align 8, !tbaa !74
  %33 = add nuw nsw i64 %27, 1
  %34 = icmp eq i64 %33, %25
  br i1 %34, label %35, label %26, !llvm.loop !123

35:                                               ; preds = %26, %21
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BLI_gset_haskey(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @line_point_factor_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BM_vert_in_edge(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #3 !PGOFuncName !124 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !69
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !76
  %9 = icmp eq ptr %8, %1
  %10 = zext i1 %9 to i8
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i8 [ 1, %2 ], [ %10, %6 ]
  ret i8 %12
}

; Function Attrs: optsize
declare ptr @BM_edge_split(ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_edge_exists(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BM_vert_splice_check_double(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BM_vert_pair_share_face_check(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BM_vert_splice(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !125 {
  %3 = load float, ptr %1, align 4, !tbaa !59
  store float %3, ptr %0, align 4, !tbaa !59
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !59
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !59
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !59
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !59
  ret void
}

; Function Attrs: optsize
declare void @BLI_gset_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_ghashIterator_step(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !126 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !127
  %4 = and i8 %3, 16
  ret i8 %4
}

; Function Attrs: optsize
declare zeroext i8 @BM_vert_is_edge_pair(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_disable(ptr nocapture noundef %0) unnamed_addr #6 !PGOFuncName !128 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !127
  %4 = and i8 %3, -17
  store i8 %4, ptr %2, align 1, !tbaa !127
  ret void
}

; Function Attrs: optsize
declare i32 @BLI_gset_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @BM_edge_other_vert(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #3 !PGOFuncName !129 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !69
  %5 = icmp eq ptr %4, %1
  %6 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !76
  %8 = icmp eq ptr %7, %1
  %9 = select i1 %8, ptr %4, ptr null
  %10 = select i1 %5, ptr %7, ptr %9
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_enable(ptr nocapture noundef %0) unnamed_addr #6 !PGOFuncName !130 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !127
  %4 = or i8 %3, 16
  store i8 %4, ptr %2, align 1, !tbaa !127
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @bm_vert_other_edge(ptr noundef readonly %0, ptr noundef readnone %1) unnamed_addr #3 !PGOFuncName !131 {
  %3 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !81
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 5
  %8 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !76
  %10 = icmp eq ptr %9, %0
  %11 = zext i1 %10 to i64
  %12 = getelementptr inbounds %struct.BMDiskLink, ptr %7, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !83
  br label %14

14:                                               ; preds = %2, %6
  %15 = phi ptr [ %13, %6 ], [ %4, %2 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !132 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1) #16
  %3 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #16
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !133 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !134
  %4 = tail call ptr %3(ptr noundef %0) #15
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @_bm_elem_index_get(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !136 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !137
  ret i32 %3
}

; Function Attrs: optsize
declare zeroext i8 @BLI_gset_remove(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_edge_kill(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BLI_gset_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_vert_kill(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_gset_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @face_edges_split(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !138 {
  %4 = getelementptr inbounds %struct.LinkBase, ptr %2, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !72
  %6 = zext i32 %5 to i64
  %7 = shl nuw nsw i64 %6, 3
  %8 = alloca i8, i64 %7, align 16
  %9 = icmp eq i32 %5, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %3, %10
  %11 = phi i64 [ %17, %10 ], [ 0, %3 ]
  %12 = phi ptr [ %13, %10 ], [ %2, %3 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !53
  %14 = getelementptr inbounds %struct.LinkNode, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !74
  %16 = getelementptr inbounds ptr, ptr %8, i64 %11
  store ptr %15, ptr %16, align 8, !tbaa !53
  %17 = add nuw nsw i64 %11, 1
  %18 = icmp eq i64 %17, %6
  br i1 %18, label %19, label %10, !llvm.loop !139

19:                                               ; preds = %10, %3
  %20 = call zeroext i8 @BM_face_split_edgenet(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8, i32 noundef %5, ptr noundef null, ptr noundef null) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BLI_gsetIterator_init(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !140 {
  tail call void @BLI_ghashIterator_init(ptr noundef %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_gsetIterator_done(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !141 {
  %2 = tail call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %0) #16, !range !68
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @BLI_gsetIterator_getKey(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !142 {
  %2 = tail call fastcc ptr @BLI_ghashIterator_getKey(ptr noundef %0) #16
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BLI_gsetIterator_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !143 {
  tail call void @BLI_ghashIterator_step(ptr noundef %0) #15
  ret void
}

; Function Attrs: optsize
declare void @BM_mesh_edgesplit(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_ghash_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_memarena_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_squared_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !144 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #14
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #16
  %4 = call fastcc float @dot_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #14
  ret float %4
}

; Function Attrs: optsize
declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @edge_verts_add(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #0 !PGOFuncName !145 {
  %5 = getelementptr inbounds %struct.ISectState, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = getelementptr inbounds %struct.ISectState, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  tail call fastcc void @ghash_insert_link(ptr noundef %6, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, ptr noundef %8) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tri_v3_scale(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3) unnamed_addr #0 !PGOFuncName !146 {
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #14
  call void @mid_v3_v3v3v3(ptr noundef nonnull %5, ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  call void @interp_v3_v3v3(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %0, float noundef %3) #15
  call void @interp_v3_v3v3(ptr noundef %1, ptr noundef nonnull %5, ptr noundef %1, float noundef %3) #15
  call void @interp_v3_v3v3(ptr noundef %2, ptr noundef nonnull %5, ptr noundef %2, float noundef %3) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #14
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @isect_point_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @normal_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @bm_isect_edge_tri(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6, ptr nocapture noundef %7) unnamed_addr #0 !PGOFuncName !147 {
  %9 = alloca [4 x [4 x i32]], align 16
  %10 = alloca [3 x float], align 4
  %11 = load ptr, ptr %0, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #14
  %12 = load ptr, ptr %3, align 8, !tbaa !53
  %13 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %12) #16
  %14 = getelementptr inbounds ptr, ptr %3, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !53
  %16 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %15) #16
  %17 = getelementptr inbounds ptr, ptr %3, i64 2
  %18 = load ptr, ptr %17, align 8, !tbaa !53
  %19 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %18) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #14
  %20 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %1) #16
  %21 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %2) #16
  %22 = icmp sgt i32 %20, %21
  %23 = select i1 %22, ptr %1, ptr %2
  %24 = select i1 %22, ptr %2, ptr %1
  %25 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %24) #16
  %26 = getelementptr inbounds [4 x [4 x i32]], ptr %9, i64 0, i64 3
  store i32 %25, ptr %26, align 16, !tbaa !63
  %27 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %23) #16
  %28 = getelementptr inbounds [4 x [4 x i32]], ptr %9, i64 0, i64 3, i64 1
  store i32 %27, ptr %28, align 4, !tbaa !63
  %29 = getelementptr inbounds [4 x [4 x i32]], ptr %9, i64 0, i64 3, i64 2
  store i32 %4, ptr %29, align 8, !tbaa !63
  %30 = getelementptr inbounds [4 x [4 x i32]], ptr %9, i64 0, i64 3, i64 3
  store i32 -1, ptr %30, align 4, !tbaa !63
  store i32 %25, ptr %9, align 16, !tbaa !63
  %31 = getelementptr inbounds [4 x i32], ptr %9, i64 0, i64 1
  store i32 %27, ptr %31, align 4, !tbaa !63
  %32 = getelementptr inbounds [4 x i32], ptr %9, i64 0, i64 2
  store i32 %13, ptr %32, align 8, !tbaa !63
  %33 = getelementptr inbounds [4 x i32], ptr %9, i64 0, i64 3
  store i32 %16, ptr %33, align 4, !tbaa !63
  %34 = getelementptr inbounds [4 x [4 x i32]], ptr %9, i64 0, i64 1
  store i32 %25, ptr %34, align 16, !tbaa !63
  %35 = getelementptr inbounds [4 x [4 x i32]], ptr %9, i64 0, i64 1, i64 1
  store i32 %27, ptr %35, align 4, !tbaa !63
  %36 = getelementptr inbounds [4 x [4 x i32]], ptr %9, i64 0, i64 1, i64 2
  store i32 %16, ptr %36, align 8, !tbaa !63
  %37 = getelementptr inbounds [4 x [4 x i32]], ptr %9, i64 0, i64 1, i64 3
  store i32 %19, ptr %37, align 4, !tbaa !63
  %38 = getelementptr inbounds [4 x [4 x i32]], ptr %9, i64 0, i64 2
  store i32 %25, ptr %38, align 16, !tbaa !63
  %39 = getelementptr inbounds [4 x [4 x i32]], ptr %9, i64 0, i64 2, i64 1
  store i32 %27, ptr %39, align 4, !tbaa !63
  %40 = getelementptr inbounds [4 x [4 x i32]], ptr %9, i64 0, i64 2, i64 2
  store i32 %19, ptr %40, align 8, !tbaa !63
  %41 = getelementptr inbounds [4 x [4 x i32]], ptr %9, i64 0, i64 2, i64 3
  store i32 %13, ptr %41, align 4, !tbaa !63
  %42 = icmp sgt i32 %13, %16
  br i1 %42, label %43, label %44

43:                                               ; preds = %8
  store i32 %16, ptr %32, align 8, !tbaa !63
  store i32 %13, ptr %33, align 4, !tbaa !63
  br label %44

44:                                               ; preds = %43, %8
  %45 = phi i32 [ %13, %43 ], [ %16, %8 ]
  %46 = phi i32 [ %16, %43 ], [ %13, %8 ]
  %47 = icmp sgt i32 %25, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 %46, ptr %9, align 16, !tbaa !63
  store i32 %25, ptr %32, align 8, !tbaa !63
  store i32 %45, ptr %31, align 4, !tbaa !63
  store i32 %27, ptr %33, align 4, !tbaa !63
  br label %49

49:                                               ; preds = %48, %44
  %50 = icmp sgt i32 %16, %19
  br i1 %50, label %51, label %52

51:                                               ; preds = %49
  store i32 %19, ptr %36, align 8, !tbaa !63
  store i32 %16, ptr %37, align 4, !tbaa !63
  br label %52

52:                                               ; preds = %51, %49
  %53 = phi i32 [ %16, %51 ], [ %19, %49 ]
  %54 = phi i32 [ %19, %51 ], [ %16, %49 ]
  %55 = icmp sgt i32 %25, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i32 %54, ptr %34, align 16, !tbaa !63
  store i32 %25, ptr %36, align 8, !tbaa !63
  store i32 %53, ptr %35, align 4, !tbaa !63
  store i32 %27, ptr %37, align 4, !tbaa !63
  br label %57

57:                                               ; preds = %56, %52
  %58 = icmp sgt i32 %19, %13
  br i1 %58, label %59, label %60

59:                                               ; preds = %57
  store i32 %13, ptr %40, align 8, !tbaa !63
  store i32 %19, ptr %41, align 4, !tbaa !63
  br label %60

60:                                               ; preds = %59, %57
  %61 = phi i32 [ %19, %59 ], [ %13, %57 ]
  %62 = phi i32 [ %13, %59 ], [ %19, %57 ]
  %63 = icmp sgt i32 %25, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store i32 %62, ptr %38, align 16, !tbaa !63
  store i32 %25, ptr %40, align 8, !tbaa !63
  store i32 %61, ptr %39, align 4, !tbaa !63
  store i32 %27, ptr %41, align 4, !tbaa !63
  br label %65

65:                                               ; preds = %64, %60
  %66 = getelementptr inbounds %struct.ISectState, ptr %0, i64 0, i32 1
  br label %67

67:                                               ; preds = %65, %75
  %68 = phi i64 [ 0, %65 ], [ %76, %75 ]
  %69 = load ptr, ptr %66, align 8, !tbaa !41
  %70 = getelementptr inbounds [4 x [4 x i32]], ptr %9, i64 0, i64 %68
  %71 = call ptr @BLI_ghash_lookup(ptr noundef %69, ptr noundef nonnull %70) #15
  %72 = icmp eq ptr %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %67
  %74 = trunc i64 %68 to i32
  store i32 %74, ptr %7, align 4, !tbaa !63
  br label %116

75:                                               ; preds = %67
  %76 = add nuw nsw i64 %68, 1
  %77 = icmp eq i64 %76, 4
  br i1 %77, label %78, label %67, !llvm.loop !148

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.BMVert, ptr %24, i64 0, i32 2
  %80 = getelementptr inbounds %struct.BMVert, ptr %23, i64 0, i32 2
  %81 = getelementptr inbounds %struct.ISectState, ptr %0, i64 0, i32 7
  %82 = call fastcc i32 @intersect_line_tri(ptr noundef nonnull %79, ptr noundef nonnull %80, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %10, ptr noundef nonnull %81) #16
  store i32 %82, ptr %7, align 4, !tbaa !63
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %115, label %84

84:                                               ; preds = %78
  %85 = call ptr @BM_vert_create(ptr noundef %11, ptr noundef nonnull %10, ptr noundef null, i32 noundef 0) #15
  %86 = call ptr @BM_edge_exists(ptr noundef %24, ptr noundef %23) #15
  %87 = icmp eq ptr %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %84
  call fastcc void @edge_verts_add(ptr noundef nonnull %0, ptr noundef nonnull %86, ptr noundef %85, i8 noundef zeroext 0) #16
  br label %90

89:                                               ; preds = %84
  call fastcc void @vert_dissolve_add(ptr noundef nonnull %0, ptr noundef %85) #16
  br label %90

90:                                               ; preds = %89, %88
  %91 = load i32, ptr %7, align 4, !tbaa !63
  %92 = freeze i32 %91
  %93 = icmp ult i32 %92, 3
  br i1 %93, label %94, label %107

94:                                               ; preds = %90
  %95 = zext nneg i32 %92 to i64
  %96 = getelementptr inbounds ptr, ptr %3, i64 %95
  %97 = load ptr, ptr %96, align 8, !tbaa !53
  %98 = add nuw nsw i32 %92, 1
  %99 = icmp eq i32 %92, 2
  %100 = select i1 %99, i32 0, i32 %98
  %101 = zext nneg i32 %100 to i64
  %102 = getelementptr inbounds ptr, ptr %3, i64 %101
  %103 = load ptr, ptr %102, align 8, !tbaa !53
  %104 = call ptr @BM_edge_exists(ptr noundef %97, ptr noundef %103) #15
  %105 = icmp eq ptr %104, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %94
  call fastcc void @edge_verts_add(ptr noundef nonnull %0, ptr noundef nonnull %104, ptr noundef %85, i8 noundef zeroext 0) #16
  br label %107

107:                                              ; preds = %94, %106, %90
  %108 = getelementptr inbounds %struct.ISectState, ptr %0, i64 0, i32 6
  %109 = load ptr, ptr %108, align 8, !tbaa !46
  %110 = call ptr @BLI_memarena_alloc(ptr noundef %109, i64 noundef 16) #15
  %111 = load i32, ptr %7, align 4, !tbaa !63
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [4 x [4 x i32]], ptr %9, i64 0, i64 %112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %110, ptr noundef nonnull align 16 dereferenceable(16) %113, i64 16, i1 false)
  %114 = load ptr, ptr %66, align 8, !tbaa !41
  call void @BLI_ghash_insert(ptr noundef %114, ptr noundef %110, ptr noundef %85) #15
  br label %116

115:                                              ; preds = %78
  store i32 -1, ptr %7, align 4, !tbaa !63
  br label %116

116:                                              ; preds = %73, %115, %107
  %117 = phi ptr [ %71, %73 ], [ %85, %107 ], [ null, %115 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #14
  ret ptr %117
}

; Function Attrs: optsize
declare ptr @BM_edge_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BM_edge_in_face(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @face_edges_add(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #0 !PGOFuncName !149 {
  %5 = sext i32 %1 to i64
  %6 = inttoptr i64 %5 to ptr
  %7 = getelementptr inbounds %struct.ISectState, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  %9 = getelementptr inbounds %struct.ISectState, ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  tail call fastcc void @ghash_insert_link(ptr noundef %8, ptr noundef %6, ptr noundef %2, i8 noundef zeroext %3, ptr noundef %10) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 !PGOFuncName !150 {
  %4 = load float, ptr %1, align 4, !tbaa !59
  %5 = load float, ptr %2, align 4, !tbaa !59
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !59
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !59
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !59
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !59
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !59
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !59
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !151 {
  %3 = load float, ptr %0, align 4, !tbaa !59
  %4 = load float, ptr %1, align 4, !tbaa !59
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !59
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !59
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !59
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !59
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ghash_insert_link(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !152 {
  %6 = tail call ptr @BLI_ghash_lookup(ptr noundef %0, ptr noundef %1) #15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %5
  %9 = icmp eq i8 %3, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %8
  %11 = load ptr, ptr %6, align 8, !tbaa !153
  %12 = tail call i32 @BLI_linklist_index(ptr noundef %11, ptr noundef %1) #15
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %17, label %25

14:                                               ; preds = %5
  %15 = tail call ptr @BLI_memarena_alloc(ptr noundef %4, i64 noundef 16) #15
  store ptr null, ptr %15, align 8, !tbaa !153
  %16 = getelementptr inbounds %struct.LinkBase, ptr %15, i64 0, i32 1
  store i32 0, ptr %16, align 8, !tbaa !72
  tail call void @BLI_ghash_insert(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %15) #15
  br label %17

17:                                               ; preds = %8, %10, %14
  %18 = phi ptr [ %6, %10 ], [ %6, %8 ], [ %15, %14 ]
  %19 = tail call ptr @BLI_memarena_alloc(ptr noundef %4, i64 noundef 16) #15
  %20 = load ptr, ptr %18, align 8, !tbaa !153
  store ptr %20, ptr %19, align 8, !tbaa !79
  %21 = getelementptr inbounds %struct.LinkNode, ptr %19, i64 0, i32 1
  store ptr %2, ptr %21, align 8, !tbaa !74
  store ptr %19, ptr %18, align 8, !tbaa !153
  %22 = getelementptr inbounds %struct.LinkBase, ptr %18, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !72
  %24 = add i32 %23, 1
  store i32 %24, ptr %22, align 8, !tbaa !72
  br label %25

25:                                               ; preds = %10, %17
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_linklist_index(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_memarena_alloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mid_v3_v3v3v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @intersect_line_tri(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr noundef %4, ptr nocapture noundef readonly %5) unnamed_addr #0 !PGOFuncName !154 {
  %7 = alloca [3 x float], align 4
  %8 = alloca float, align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [2 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #14
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef %0, ptr noundef %1) #16
  call fastcc void @normalize_v3(ptr noundef nonnull %7) #16
  %11 = getelementptr inbounds [2 x [3 x float]], ptr %10, i64 0, i64 1
  %12 = getelementptr inbounds %struct.ISectEpsilon, ptr %5, i64 0, i32 5
  %13 = getelementptr inbounds %struct.ISectEpsilon, ptr %5, i64 0, i32 4
  br label %14

14:                                               ; preds = %6, %58
  %15 = phi i64 [ 0, %6 ], [ %16, %58 ]
  %16 = add nuw nsw i64 %15, 1
  %17 = icmp eq i64 %16, 3
  %18 = and i64 %16, 4294967295
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #14
  %19 = getelementptr inbounds ptr, ptr %2, i64 %15
  %20 = load ptr, ptr %19, align 8, !tbaa !53
  %21 = select i1 %17, i64 0, i64 %18
  %22 = getelementptr inbounds ptr, ptr %2, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !53
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %9, ptr noundef %20, ptr noundef %23) #16
  call fastcc void @normalize_v3(ptr noundef nonnull %9) #16
  %24 = call fastcc float @dot_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %9) #16
  %25 = call float @llvm.fabs.f32(float %24)
  %26 = load float, ptr %5, align 4, !tbaa !155
  %27 = fsub float 1.000000e+00, %26
  %28 = fcmp ult float %25, %27
  br i1 %28, label %29, label %57

29:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #14
  %30 = load ptr, ptr %19, align 8, !tbaa !53
  %31 = load ptr, ptr %22, align 8, !tbaa !53
  %32 = call i32 @isect_line_line_epsilon_v3(ptr noundef %0, ptr noundef %1, ptr noundef %30, ptr noundef %31, ptr noundef nonnull %10, ptr noundef nonnull %11, float noundef 0.000000e+00) #15
  switch i32 %32, label %34 [
    i32 0, label %56
    i32 1, label %33
  ]

33:                                               ; preds = %29
  call fastcc void @copy_v3_v3(ptr noundef nonnull %11, ptr noundef nonnull %10) #16
  br label %38

34:                                               ; preds = %29
  %35 = call fastcc float @len_squared_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %11) #16
  %36 = load float, ptr %12, align 4, !tbaa !156
  %37 = fcmp ugt float %35, %36
  br i1 %37, label %56, label %38

38:                                               ; preds = %33, %34
  %39 = load ptr, ptr %19, align 8, !tbaa !53
  %40 = load ptr, ptr %22, align 8, !tbaa !53
  %41 = call float @line_point_factor_v3(ptr noundef nonnull %11, ptr noundef %39, ptr noundef %40) #15
  store float %41, ptr %8, align 4, !tbaa !59
  %42 = load float, ptr %13, align 4, !tbaa !157
  %43 = fcmp ult float %41, %42
  %44 = fsub float 1.000000e+00, %42
  %45 = fcmp ugt float %41, %44
  %46 = or i1 %43, %45
  br i1 %46, label %56, label %47

47:                                               ; preds = %38
  %48 = call float @line_point_factor_v3(ptr noundef nonnull %10, ptr noundef %0, ptr noundef %1) #15
  store float %48, ptr %8, align 4, !tbaa !59
  %49 = load float, ptr %13, align 4, !tbaa !157
  %50 = fcmp ult float %48, %49
  %51 = fsub float 1.000000e+00, %49
  %52 = fcmp ugt float %48, %51
  %53 = or i1 %50, %52
  br i1 %53, label %56, label %54

54:                                               ; preds = %47
  %55 = trunc i64 %15 to i32
  call fastcc void @copy_v3_v3(ptr noundef %4, ptr noundef nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #14
  br label %91

56:                                               ; preds = %29, %38, %47, %34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #14
  br label %58

57:                                               ; preds = %14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #14
  br label %58

58:                                               ; preds = %57, %56
  %59 = icmp eq i64 %16, 3
  br i1 %59, label %60, label %14, !llvm.loop !158

60:                                               ; preds = %58
  %61 = call fastcc float @dot_v3v3(ptr noundef nonnull %7, ptr noundef %3) #16
  %62 = call float @llvm.fabs.f32(float %61)
  %63 = load float, ptr %5, align 4, !tbaa !155
  %64 = fcmp ult float %62, %63
  br i1 %64, label %90, label %65

65:                                               ; preds = %60
  %66 = load ptr, ptr %2, align 8, !tbaa !53
  %67 = getelementptr inbounds ptr, ptr %2, i64 1
  %68 = load ptr, ptr %67, align 8, !tbaa !53
  %69 = getelementptr inbounds ptr, ptr %2, i64 2
  %70 = load ptr, ptr %69, align 8, !tbaa !53
  %71 = call zeroext i8 @isect_line_tri_epsilon_v3(ptr noundef %0, ptr noundef %1, ptr noundef %66, ptr noundef %68, ptr noundef %70, ptr noundef nonnull %8, ptr noundef null, float noundef 0.000000e+00) #15
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %90, label %73

73:                                               ; preds = %65
  %74 = load float, ptr %8, align 4, !tbaa !59
  %75 = load float, ptr %13, align 4, !tbaa !157
  %76 = fcmp ult float %74, %75
  %77 = fsub float 1.000000e+00, %75
  %78 = fcmp ugt float %74, %77
  %79 = or i1 %76, %78
  br i1 %79, label %90, label %80

80:                                               ; preds = %73
  call void @interp_v3_v3v3(ptr noundef %4, ptr noundef %0, ptr noundef %1, float noundef %74) #15
  %81 = load ptr, ptr %2, align 8, !tbaa !53
  %82 = call fastcc float @len_squared_v3v3(ptr noundef %81, ptr noundef %4) #16
  %83 = load ptr, ptr %67, align 8, !tbaa !53
  %84 = call fastcc float @len_squared_v3v3(ptr noundef %83, ptr noundef %4) #16
  %85 = load ptr, ptr %69, align 8, !tbaa !53
  %86 = call fastcc float @len_squared_v3v3(ptr noundef %85, ptr noundef %4) #16
  %87 = call fastcc float @min_fff(float noundef %82, float noundef %84, float noundef %86) #16
  %88 = load float, ptr %12, align 4, !tbaa !156
  %89 = fcmp ult float %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %65, %80, %73, %60
  br label %91

91:                                               ; preds = %54, %80, %90
  %92 = phi i32 [ -1, %90 ], [ 3, %80 ], [ %55, %54 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #14
  ret i32 %92
}

; Function Attrs: optsize
declare ptr @BM_vert_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vert_dissolve_add(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !159 {
  tail call fastcc void @_bm_elem_flag_enable(ptr noundef %1) #16
  %3 = getelementptr inbounds %struct.ISectState, ptr %0, i64 0, i32 5
  %4 = getelementptr inbounds %struct.ISectState, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @BLI_linklist_prepend_arena(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %5) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #9 !PGOFuncName !160 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: optsize
declare i32 @isect_line_line_epsilon_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @isect_line_tri_epsilon_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_fff(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #10 !PGOFuncName !161 {
  %4 = tail call fastcc float @min_ff(float noundef %0, float noundef %1) #16
  %5 = tail call fastcc float @min_ff(float noundef %4, float noundef %2) #16
  ret float %5
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !162 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #16
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #15
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #16
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #16
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #6 !PGOFuncName !163 {
  %4 = load float, ptr %1, align 4, !tbaa !59
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !59
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !59
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !59
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !59
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #12 !PGOFuncName !164 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !59
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #10 !PGOFuncName !165 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: optsize
declare void @BLI_linklist_prepend_arena(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: optsize
declare i32 @BLI_sortutil_cmp_float(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !166 {
  %3 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 2, ptr %3, align 4, !tbaa !167
  %4 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %4, align 8, !tbaa !168
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %5, align 8, !tbaa !134
  %6 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !169
  store ptr %7, ptr %0, align 8, !tbaa !170
  tail call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

; Function Attrs: optsize
declare zeroext i8 @BM_face_split_edgenet(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { nounwind optsize }
attributes #16 = { optsize }

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
!35 = !{!"ISectState", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !39, i64 56}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ISectEpsilon", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20}
!40 = !{!"float", !37, i64 0}
!41 = !{!35, !36, i64 8}
!42 = !{!35, !36, i64 16}
!43 = !{!35, !36, i64 24}
!44 = !{!35, !36, i64 32}
!45 = !{!35, !36, i64 40}
!46 = !{!35, !36, i64 48}
!47 = !{!35, !40, i64 56}
!48 = !{!35, !40, i64 64}
!49 = !{!35, !40, i64 72}
!50 = !{!35, !40, i64 60}
!51 = !{!35, !40, i64 68}
!52 = !{!35, !40, i64 76}
!53 = !{!36, !36, i64 0}
!54 = !{!55, !36, i64 32}
!55 = !{!"BMLoop", !56, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64}
!56 = !{!"BMHeader", !36, i64 0, !57, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!57 = !{!"int", !37, i64 0}
!58 = !{!55, !36, i64 16}
!59 = !{!40, !40, i64 0}
!60 = distinct !{!60, !61}
!61 = !{!"llvm.loop.mustprogress"}
!62 = distinct !{!62, !61}
!63 = !{!57, !57, i64 0}
!64 = !{!65, !57, i64 0}
!65 = !{!"BVHTreeOverlap", !57, i64 0, !57, i64 4}
!66 = !{!65, !57, i64 4}
!67 = distinct !{!67, !61}
!68 = !{i8 0, i8 2}
!69 = !{!70, !36, i64 24}
!70 = !{!"BMEdge", !56, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !71, i64 48, !71, i64 64}
!71 = !{!"BMDiskLink", !36, i64 0, !36, i64 8}
!72 = !{!73, !57, i64 8}
!73 = !{!"LinkBase", !36, i64 0, !57, i64 8}
!74 = !{!75, !36, i64 8}
!75 = !{!"LinkNode", !36, i64 0, !36, i64 8}
!76 = !{!70, !36, i64 32}
!77 = distinct !{!77, !61}
!78 = distinct !{!78, !61}
!79 = !{!75, !36, i64 0}
!80 = distinct !{!80, !61}
!81 = !{!82, !36, i64 48}
!82 = !{!"BMVert", !56, i64 0, !36, i64 16, !37, i64 24, !37, i64 36, !36, i64 48}
!83 = !{!70, !36, i64 48}
!84 = distinct !{!84, !61}
!85 = distinct !{!85, !61}
!86 = distinct !{!86, !61}
!87 = !{!70, !36, i64 40}
!88 = !{!89, !36, i64 80}
!89 = !{!"BMesh", !57, i64 0, !57, i64 4, !57, i64 8, !57, i64 12, !57, i64 16, !57, i64 20, !57, i64 24, !37, i64 28, !37, i64 29, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !57, i64 88, !57, i64 92, !57, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !57, i64 128, !36, i64 136, !90, i64 144, !90, i64 344, !90, i64 544, !90, i64 744, !91, i64 944, !57, i64 948, !57, i64 952, !57, i64 956, !92, i64 960, !36, i64 976, !92, i64 984, !36, i64 1000}
!90 = !{!"CustomData", !36, i64 0, !37, i64 8, !57, i64 172, !57, i64 176, !57, i64 180, !36, i64 184, !36, i64 192}
!91 = !{!"short", !37, i64 0}
!92 = !{!"ListBase", !36, i64 0, !36, i64 8}
!93 = !{!55, !36, i64 40}
!94 = distinct !{!94, !61}
!95 = distinct !{!95, !61}
!96 = distinct !{!96, !61}
!97 = distinct !{!97, !61}
!98 = distinct !{!98, !61}
!99 = distinct !{!99, !61}
!100 = !{!"bmesh_intersect.c:bm_isect_tri_tri"}
!101 = distinct !{!101, !61}
!102 = distinct !{!102, !61}
!103 = distinct !{!103, !61}
!104 = distinct !{!104, !61}
!105 = distinct !{!105, !61}
!106 = distinct !{!106, !61}
!107 = distinct !{!107, !61}
!108 = distinct !{!108, !61}
!109 = distinct !{!109, !61}
!110 = !{!"bmesh_intersect.c:BLI_ghashIterator_done"}
!111 = !{!112, !36, i64 8}
!112 = !{!"GHashIterator", !36, i64 0, !36, i64 8, !57, i64 16}
!113 = !{!"bmesh_intersect.c:BLI_ghashIterator_getKey"}
!114 = !{!115, !36, i64 8}
!115 = !{!"_gh_Entry", !36, i64 0, !36, i64 8, !36, i64 16}
!116 = !{!"bmesh_intersect.c:BLI_ghashIterator_getValue"}
!117 = !{!115, !36, i64 16}
!118 = !{!"bmesh_intersect.c:edge_verts_sort"}
!119 = !{!120, !40, i64 0}
!120 = !{!"vert_sort_t", !40, i64 0, !36, i64 8}
!121 = !{!120, !36, i64 8}
!122 = distinct !{!122, !61}
!123 = distinct !{!123, !61}
!124 = !{!"bmesh_intersect.c:BM_vert_in_edge"}
!125 = !{!"bmesh_intersect.c:copy_v3_v3"}
!126 = !{!"bmesh_intersect.c:_bm_elem_flag_test"}
!127 = !{!56, !37, i64 13}
!128 = !{!"bmesh_intersect.c:_bm_elem_flag_disable"}
!129 = !{!"bmesh_intersect.c:BM_edge_other_vert"}
!130 = !{!"bmesh_intersect.c:_bm_elem_flag_enable"}
!131 = !{!"bmesh_intersect.c:bm_vert_other_edge"}
!132 = !{!"bmesh_intersect.c:BM_iter_new"}
!133 = !{!"bmesh_intersect.c:BM_iter_step"}
!134 = !{!135, !36, i64 48}
!135 = !{!"BMIter", !37, i64 0, !36, i64 40, !36, i64 48, !57, i64 56, !37, i64 60}
!136 = !{!"bmesh_intersect.c:_bm_elem_index_get"}
!137 = !{!56, !57, i64 8}
!138 = !{!"bmesh_intersect.c:face_edges_split"}
!139 = distinct !{!139, !61}
!140 = !{!"bmesh_intersect.c:BLI_gsetIterator_init"}
!141 = !{!"bmesh_intersect.c:BLI_gsetIterator_done"}
!142 = !{!"bmesh_intersect.c:BLI_gsetIterator_getKey"}
!143 = !{!"bmesh_intersect.c:BLI_gsetIterator_step"}
!144 = !{!"bmesh_intersect.c:len_squared_v3v3"}
!145 = !{!"bmesh_intersect.c:edge_verts_add"}
!146 = !{!"bmesh_intersect.c:tri_v3_scale"}
!147 = !{!"bmesh_intersect.c:bm_isect_edge_tri"}
!148 = distinct !{!148, !61}
!149 = !{!"bmesh_intersect.c:face_edges_add"}
!150 = !{!"bmesh_intersect.c:sub_v3_v3v3"}
!151 = !{!"bmesh_intersect.c:dot_v3v3"}
!152 = !{!"bmesh_intersect.c:ghash_insert_link"}
!153 = !{!73, !36, i64 0}
!154 = !{!"bmesh_intersect.c:intersect_line_tri"}
!155 = !{!39, !40, i64 0}
!156 = !{!39, !40, i64 20}
!157 = !{!39, !40, i64 16}
!158 = distinct !{!158, !61}
!159 = !{!"bmesh_intersect.c:vert_dissolve_add"}
!160 = !{!"bmesh_intersect.c:normalize_v3"}
!161 = !{!"bmesh_intersect.c:min_fff"}
!162 = !{!"bmesh_intersect.c:normalize_v3_v3"}
!163 = !{!"bmesh_intersect.c:mul_v3_v3fl"}
!164 = !{!"bmesh_intersect.c:zero_v3"}
!165 = !{!"bmesh_intersect.c:min_ff"}
!166 = !{!"bmesh_intersect.c:BM_iter_init"}
!167 = !{!135, !37, i64 60}
!168 = !{!135, !36, i64 40}
!169 = !{!89, !36, i64 40}
!170 = !{!37, !37, i64 0}
