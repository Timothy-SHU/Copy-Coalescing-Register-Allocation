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
%struct.LinkBase = type { ptr, i32 }
%struct.LinkNode = type { ptr, ptr }
%struct._gh_Entry = type { ptr, ptr, ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.vert_sort_t = type { float, ptr }

@__func__.BM_mesh_intersect = private unnamed_addr constant [18 x i8] c"BM_mesh_intersect\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @BM_mesh_intersect(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4, i8 noundef zeroext %5, i8 noundef zeroext %6, float noundef %7) local_unnamed_addr #0 {
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x ptr], align 16
  %12 = alloca [3 x ptr], align 16
  %13 = alloca [3 x ptr], align 16
  %14 = alloca [3 x ptr], align 16
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x float], align 4
  %17 = alloca [8 x ptr], align 16
  %18 = alloca [8 x ptr], align 16
  %19 = alloca [3 x float], align 4
  %20 = alloca [3 x float], align 4
  %21 = alloca [3 x [3 x float]], align 16
  %22 = alloca [3 x float], align 4
  %23 = alloca [3 x [3 x float]], align 16
  %24 = alloca [3 x float], align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.ISectState, align 8
  %28 = alloca i32, align 4
  %29 = alloca [3 x [3 x float]], align 16
  %30 = alloca [3 x [3 x float]], align 16
  %31 = alloca %struct.GHashIterator, align 8
  %32 = alloca %struct.GHashIterator, align 8
  %33 = alloca %struct.BMIter, align 8
  %34 = alloca %struct.GHashIterator, align 8
  %35 = alloca %struct.GSetIterator, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %27) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %28) #8
  store ptr %0, ptr %27, align 8, !tbaa !34
  %36 = tail call ptr @BLI_ghash_new(ptr noundef nonnull @BLI_ghashutil_uinthash_v4, ptr noundef nonnull @BLI_ghashutil_uinthash_v4_cmp, ptr noundef nonnull @__func__.BM_mesh_intersect) #8
  %37 = getelementptr inbounds %struct.ISectState, ptr %27, i64 0, i32 1
  store ptr %36, ptr %37, align 8, !tbaa !41
  %38 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @__func__.BM_mesh_intersect) #8
  %39 = getelementptr inbounds %struct.ISectState, ptr %27, i64 0, i32 2
  store ptr %38, ptr %39, align 8, !tbaa !42
  %40 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @__func__.BM_mesh_intersect) #8
  %41 = getelementptr inbounds %struct.ISectState, ptr %27, i64 0, i32 3
  store ptr %40, ptr %41, align 8, !tbaa !43
  %42 = tail call ptr @BLI_gset_ptr_new(ptr noundef nonnull @__func__.BM_mesh_intersect) #8
  %43 = getelementptr inbounds %struct.ISectState, ptr %27, i64 0, i32 4
  store ptr %42, ptr %43, align 8, !tbaa !44
  %44 = getelementptr inbounds %struct.ISectState, ptr %27, i64 0, i32 5
  store ptr null, ptr %44, align 8, !tbaa !45
  %45 = tail call ptr @BLI_memarena_new(i64 noundef 16376, ptr noundef nonnull @__func__.BM_mesh_intersect) #8
  %46 = getelementptr inbounds %struct.ISectState, ptr %27, i64 0, i32 6
  store ptr %45, ptr %46, align 8, !tbaa !46
  %47 = getelementptr inbounds %struct.ISectState, ptr %27, i64 0, i32 7
  store float %7, ptr %47, align 8, !tbaa !47
  %48 = fmul float %7, 2.000000e+00
  %49 = getelementptr inbounds %struct.ISectState, ptr %27, i64 0, i32 7, i32 2
  store float %48, ptr %49, align 8, !tbaa !48
  %50 = fmul float %48, 1.000000e+01
  %51 = getelementptr inbounds %struct.ISectState, ptr %27, i64 0, i32 7, i32 4
  store float %50, ptr %51, align 8, !tbaa !49
  %52 = fmul float %7, %7
  %53 = getelementptr inbounds %struct.ISectState, ptr %27, i64 0, i32 7, i32 1
  store float %52, ptr %53, align 4, !tbaa !50
  %54 = fmul float %48, %48
  %55 = getelementptr inbounds %struct.ISectState, ptr %27, i64 0, i32 7, i32 3
  store float %54, ptr %55, align 4, !tbaa !51
  %56 = fmul float %50, %50
  %57 = getelementptr inbounds %struct.ISectState, ptr %27, i64 0, i32 7, i32 5
  store float %56, ptr %57, align 4, !tbaa !52
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %0, i8 noundef zeroext 11) #8
  tail call void @BM_mesh_elem_table_ensure(ptr noundef %0, i8 noundef zeroext 10) #8
  tail call void @BM_mesh_elem_hflag_disable_all(ptr noundef %0, i8 noundef zeroext 3, i8 noundef zeroext 16, i8 noundef zeroext 0) #8
  %58 = load float, ptr %51, align 8, !tbaa !49
  %59 = tail call ptr @BLI_bvhtree_new(i32 noundef %2, float noundef %58, i8 noundef zeroext 8, i8 noundef zeroext 8) #8
  %60 = icmp sgt i32 %2, 0
  br i1 %60, label %61, label %113

61:                                               ; preds = %8
  %62 = getelementptr inbounds float, ptr %29, i64 1
  %63 = getelementptr inbounds float, ptr %29, i64 2
  %64 = getelementptr inbounds [3 x float], ptr %29, i64 1
  %65 = getelementptr inbounds [3 x float], ptr %29, i64 1, i64 1
  %66 = getelementptr inbounds [3 x float], ptr %29, i64 1, i64 2
  %67 = getelementptr inbounds [3 x float], ptr %29, i64 2
  %68 = getelementptr inbounds [3 x float], ptr %29, i64 2, i64 1
  %69 = getelementptr inbounds [3 x float], ptr %29, i64 2, i64 2
  %70 = zext nneg i32 %2 to i64
  br label %71

71:                                               ; preds = %61, %110
  %72 = phi i64 [ 0, %61 ], [ %111, %110 ]
  %73 = getelementptr inbounds [3 x ptr], ptr %1, i64 %72
  %74 = load ptr, ptr %73, align 8, !tbaa !53
  %75 = getelementptr inbounds %struct.BMLoop, ptr %74, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !54
  %77 = call i32 %3(ptr noundef %76, ptr noundef %4) #8
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %110

79:                                               ; preds = %71
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %29) #8
  %80 = load ptr, ptr %73, align 8, !tbaa !53
  %81 = getelementptr inbounds %struct.BMLoop, ptr %80, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !58
  %83 = getelementptr inbounds %struct.BMVert, ptr %82, i64 0, i32 2
  %84 = load float, ptr %83, align 8, !tbaa !59
  store float %84, ptr %29, align 16, !tbaa !59
  %85 = getelementptr inbounds %struct.BMVert, ptr %82, i64 0, i32 2, i64 1
  %86 = load float, ptr %85, align 4, !tbaa !59
  store float %86, ptr %62, align 4, !tbaa !59
  %87 = getelementptr inbounds %struct.BMVert, ptr %82, i64 0, i32 2, i64 2
  %88 = load float, ptr %87, align 8, !tbaa !59
  store float %88, ptr %63, align 8, !tbaa !59
  %89 = getelementptr inbounds [3 x ptr], ptr %1, i64 %72, i64 1
  %90 = load ptr, ptr %89, align 8, !tbaa !53
  %91 = getelementptr inbounds %struct.BMLoop, ptr %90, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !58
  %93 = getelementptr inbounds %struct.BMVert, ptr %92, i64 0, i32 2
  %94 = load float, ptr %93, align 8, !tbaa !59
  store float %94, ptr %64, align 4, !tbaa !59
  %95 = getelementptr inbounds %struct.BMVert, ptr %92, i64 0, i32 2, i64 1
  %96 = load float, ptr %95, align 4, !tbaa !59
  store float %96, ptr %65, align 16, !tbaa !59
  %97 = getelementptr inbounds %struct.BMVert, ptr %92, i64 0, i32 2, i64 2
  %98 = load float, ptr %97, align 8, !tbaa !59
  store float %98, ptr %66, align 4, !tbaa !59
  %99 = getelementptr inbounds [3 x ptr], ptr %1, i64 %72, i64 2
  %100 = load ptr, ptr %99, align 8, !tbaa !53
  %101 = getelementptr inbounds %struct.BMLoop, ptr %100, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !58
  %103 = getelementptr inbounds %struct.BMVert, ptr %102, i64 0, i32 2
  %104 = load float, ptr %103, align 8, !tbaa !59
  store float %104, ptr %67, align 8, !tbaa !59
  %105 = getelementptr inbounds %struct.BMVert, ptr %102, i64 0, i32 2, i64 1
  %106 = load float, ptr %105, align 4, !tbaa !59
  store float %106, ptr %68, align 4, !tbaa !59
  %107 = getelementptr inbounds %struct.BMVert, ptr %102, i64 0, i32 2, i64 2
  %108 = load float, ptr %107, align 8, !tbaa !59
  store float %108, ptr %69, align 16, !tbaa !59
  %109 = trunc i64 %72 to i32
  call void @BLI_bvhtree_insert(ptr noundef %59, i32 noundef %109, ptr noundef nonnull %29, i32 noundef 3) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %29) #8
  br label %110

110:                                              ; preds = %71, %79
  %111 = add nuw nsw i64 %72, 1
  %112 = icmp eq i64 %111, %70
  br i1 %112, label %113, label %71, !llvm.loop !60

113:                                              ; preds = %110, %8
  call void @BLI_bvhtree_balance(ptr noundef %59) #8
  %114 = icmp eq i8 %5, 0
  br i1 %114, label %115, label %172

115:                                              ; preds = %113
  %116 = load float, ptr %51, align 8, !tbaa !49
  %117 = call ptr @BLI_bvhtree_new(i32 noundef %2, float noundef %116, i8 noundef zeroext 8, i8 noundef zeroext 8) #8
  %118 = icmp sgt i32 %2, 0
  br i1 %118, label %119, label %171

119:                                              ; preds = %115
  %120 = getelementptr inbounds float, ptr %30, i64 1
  %121 = getelementptr inbounds float, ptr %30, i64 2
  %122 = getelementptr inbounds [3 x float], ptr %30, i64 1
  %123 = getelementptr inbounds [3 x float], ptr %30, i64 1, i64 1
  %124 = getelementptr inbounds [3 x float], ptr %30, i64 1, i64 2
  %125 = getelementptr inbounds [3 x float], ptr %30, i64 2
  %126 = getelementptr inbounds [3 x float], ptr %30, i64 2, i64 1
  %127 = getelementptr inbounds [3 x float], ptr %30, i64 2, i64 2
  %128 = zext nneg i32 %2 to i64
  br label %129

129:                                              ; preds = %119, %168
  %130 = phi i64 [ 0, %119 ], [ %169, %168 ]
  %131 = getelementptr inbounds [3 x ptr], ptr %1, i64 %130
  %132 = load ptr, ptr %131, align 8, !tbaa !53
  %133 = getelementptr inbounds %struct.BMLoop, ptr %132, i64 0, i32 3
  %134 = load ptr, ptr %133, align 8, !tbaa !54
  %135 = call i32 %3(ptr noundef %134, ptr noundef %4) #8
  %136 = icmp eq i32 %135, 1
  br i1 %136, label %137, label %168

137:                                              ; preds = %129
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %30) #8
  %138 = load ptr, ptr %131, align 8, !tbaa !53
  %139 = getelementptr inbounds %struct.BMLoop, ptr %138, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !58
  %141 = getelementptr inbounds %struct.BMVert, ptr %140, i64 0, i32 2
  %142 = load float, ptr %141, align 8, !tbaa !59
  store float %142, ptr %30, align 16, !tbaa !59
  %143 = getelementptr inbounds %struct.BMVert, ptr %140, i64 0, i32 2, i64 1
  %144 = load float, ptr %143, align 4, !tbaa !59
  store float %144, ptr %120, align 4, !tbaa !59
  %145 = getelementptr inbounds %struct.BMVert, ptr %140, i64 0, i32 2, i64 2
  %146 = load float, ptr %145, align 8, !tbaa !59
  store float %146, ptr %121, align 8, !tbaa !59
  %147 = getelementptr inbounds [3 x ptr], ptr %1, i64 %130, i64 1
  %148 = load ptr, ptr %147, align 8, !tbaa !53
  %149 = getelementptr inbounds %struct.BMLoop, ptr %148, i64 0, i32 1
  %150 = load ptr, ptr %149, align 8, !tbaa !58
  %151 = getelementptr inbounds %struct.BMVert, ptr %150, i64 0, i32 2
  %152 = load float, ptr %151, align 8, !tbaa !59
  store float %152, ptr %122, align 4, !tbaa !59
  %153 = getelementptr inbounds %struct.BMVert, ptr %150, i64 0, i32 2, i64 1
  %154 = load float, ptr %153, align 4, !tbaa !59
  store float %154, ptr %123, align 16, !tbaa !59
  %155 = getelementptr inbounds %struct.BMVert, ptr %150, i64 0, i32 2, i64 2
  %156 = load float, ptr %155, align 8, !tbaa !59
  store float %156, ptr %124, align 4, !tbaa !59
  %157 = getelementptr inbounds [3 x ptr], ptr %1, i64 %130, i64 2
  %158 = load ptr, ptr %157, align 8, !tbaa !53
  %159 = getelementptr inbounds %struct.BMLoop, ptr %158, i64 0, i32 1
  %160 = load ptr, ptr %159, align 8, !tbaa !58
  %161 = getelementptr inbounds %struct.BMVert, ptr %160, i64 0, i32 2
  %162 = load float, ptr %161, align 8, !tbaa !59
  store float %162, ptr %125, align 8, !tbaa !59
  %163 = getelementptr inbounds %struct.BMVert, ptr %160, i64 0, i32 2, i64 1
  %164 = load float, ptr %163, align 4, !tbaa !59
  store float %164, ptr %126, align 4, !tbaa !59
  %165 = getelementptr inbounds %struct.BMVert, ptr %160, i64 0, i32 2, i64 2
  %166 = load float, ptr %165, align 8, !tbaa !59
  store float %166, ptr %127, align 16, !tbaa !59
  %167 = trunc i64 %130 to i32
  call void @BLI_bvhtree_insert(ptr noundef %117, i32 noundef %167, ptr noundef nonnull %30, i32 noundef 3) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %30) #8
  br label %168

168:                                              ; preds = %129, %137
  %169 = add nuw nsw i64 %130, 1
  %170 = icmp eq i64 %169, %128
  br i1 %170, label %171, label %129, !llvm.loop !63

171:                                              ; preds = %168, %115
  call void @BLI_bvhtree_balance(ptr noundef %117) #8
  br label %172

172:                                              ; preds = %113, %171
  %173 = phi ptr [ %117, %171 ], [ %59, %113 ]
  %174 = call ptr @BLI_bvhtree_overlap(ptr noundef %173, ptr noundef %59, ptr noundef nonnull %28) #8
  %175 = icmp eq ptr %174, null
  br i1 %175, label %829, label %176

176:                                              ; preds = %172
  %177 = load i32, ptr %28, align 4, !tbaa !64
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %827, label %179

179:                                              ; preds = %176
  %180 = getelementptr inbounds ptr, ptr %17, i64 1
  %181 = getelementptr inbounds ptr, ptr %18, i64 1
  %182 = getelementptr inbounds ptr, ptr %11, i64 1
  %183 = getelementptr inbounds ptr, ptr %11, i64 2
  %184 = getelementptr inbounds ptr, ptr %12, i64 1
  %185 = getelementptr inbounds ptr, ptr %12, i64 2
  %186 = getelementptr inbounds ptr, ptr %13, i64 1
  %187 = getelementptr inbounds ptr, ptr %13, i64 2
  %188 = getelementptr inbounds ptr, ptr %14, i64 1
  %189 = getelementptr inbounds ptr, ptr %14, i64 2
  %190 = getelementptr inbounds float, ptr %19, i64 1
  %191 = getelementptr inbounds float, ptr %19, i64 2
  %192 = getelementptr inbounds float, ptr %20, i64 1
  %193 = getelementptr inbounds float, ptr %20, i64 2
  %194 = getelementptr inbounds float, ptr %21, i64 1
  %195 = getelementptr inbounds float, ptr %21, i64 2
  %196 = getelementptr inbounds [3 x [3 x float]], ptr %21, i64 0, i64 1
  %197 = getelementptr inbounds [3 x [3 x float]], ptr %21, i64 0, i64 1, i64 1
  %198 = getelementptr inbounds [3 x [3 x float]], ptr %21, i64 0, i64 1, i64 2
  %199 = getelementptr inbounds [3 x [3 x float]], ptr %21, i64 0, i64 2
  %200 = getelementptr inbounds [3 x [3 x float]], ptr %21, i64 0, i64 2, i64 1
  %201 = getelementptr inbounds [3 x [3 x float]], ptr %21, i64 0, i64 2, i64 2
  %202 = getelementptr inbounds float, ptr %22, i64 1
  %203 = getelementptr inbounds float, ptr %22, i64 2
  %204 = getelementptr inbounds float, ptr %23, i64 1
  %205 = getelementptr inbounds float, ptr %23, i64 2
  %206 = getelementptr inbounds [3 x [3 x float]], ptr %23, i64 0, i64 1
  %207 = getelementptr inbounds [3 x [3 x float]], ptr %23, i64 0, i64 1, i64 1
  %208 = getelementptr inbounds [3 x [3 x float]], ptr %23, i64 0, i64 1, i64 2
  %209 = getelementptr inbounds [3 x [3 x float]], ptr %23, i64 0, i64 2
  %210 = getelementptr inbounds [3 x [3 x float]], ptr %23, i64 0, i64 2, i64 1
  %211 = getelementptr inbounds [3 x [3 x float]], ptr %23, i64 0, i64 2, i64 2
  %212 = getelementptr inbounds float, ptr %24, i64 1
  %213 = getelementptr inbounds float, ptr %24, i64 2
  br label %214

214:                                              ; preds = %179, %822
  %215 = phi i64 [ 0, %179 ], [ %823, %822 ]
  %216 = getelementptr inbounds %struct.BVHTreeOverlap, ptr %174, i64 %215
  %217 = load i32, ptr %216, align 4, !tbaa !65
  %218 = getelementptr inbounds %struct.BVHTreeOverlap, ptr %174, i64 %215, i32 1
  %219 = load i32, ptr %218, align 4, !tbaa !67
  %220 = sext i32 %217 to i64
  %221 = getelementptr inbounds [3 x ptr], ptr %1, i64 %220
  %222 = sext i32 %219 to i64
  %223 = getelementptr inbounds [3 x ptr], ptr %1, i64 %222
  %224 = load ptr, ptr %221, align 8, !tbaa !53
  %225 = getelementptr inbounds %struct.BMLoop, ptr %224, i64 0, i32 3
  %226 = load ptr, ptr %225, align 8, !tbaa !54
  %227 = load ptr, ptr %223, align 8, !tbaa !53
  %228 = getelementptr inbounds %struct.BMLoop, ptr %227, i64 0, i32 3
  %229 = load ptr, ptr %228, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #8
  %230 = getelementptr inbounds %struct.BMLoop, ptr %224, i64 0, i32 1
  %231 = load ptr, ptr %230, align 8, !tbaa !58
  store ptr %231, ptr %11, align 16, !tbaa !53
  %232 = getelementptr inbounds ptr, ptr %221, i64 1
  %233 = load ptr, ptr %232, align 8, !tbaa !53
  %234 = getelementptr inbounds %struct.BMLoop, ptr %233, i64 0, i32 1
  %235 = load ptr, ptr %234, align 8, !tbaa !58
  store ptr %235, ptr %182, align 8, !tbaa !53
  %236 = getelementptr inbounds ptr, ptr %221, i64 2
  %237 = load ptr, ptr %236, align 8, !tbaa !53
  %238 = getelementptr inbounds %struct.BMLoop, ptr %237, i64 0, i32 1
  %239 = load ptr, ptr %238, align 8, !tbaa !58
  store ptr %239, ptr %183, align 16, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #8
  %240 = getelementptr inbounds %struct.BMLoop, ptr %227, i64 0, i32 1
  %241 = load ptr, ptr %240, align 8, !tbaa !58
  store ptr %241, ptr %12, align 16, !tbaa !53
  %242 = getelementptr inbounds ptr, ptr %223, i64 1
  %243 = load ptr, ptr %242, align 8, !tbaa !53
  %244 = getelementptr inbounds %struct.BMLoop, ptr %243, i64 0, i32 1
  %245 = load ptr, ptr %244, align 8, !tbaa !58
  store ptr %245, ptr %184, align 8, !tbaa !53
  %246 = getelementptr inbounds ptr, ptr %223, i64 2
  %247 = load ptr, ptr %246, align 8, !tbaa !53
  %248 = getelementptr inbounds %struct.BMLoop, ptr %247, i64 0, i32 1
  %249 = load ptr, ptr %248, align 8, !tbaa !58
  store ptr %249, ptr %185, align 16, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #8
  %250 = getelementptr inbounds %struct.BMVert, ptr %231, i64 0, i32 2
  store ptr %250, ptr %13, align 16, !tbaa !53
  %251 = getelementptr inbounds %struct.BMVert, ptr %235, i64 0, i32 2
  store ptr %251, ptr %186, align 8, !tbaa !53
  %252 = getelementptr inbounds %struct.BMVert, ptr %239, i64 0, i32 2
  store ptr %252, ptr %187, align 16, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #8
  %253 = getelementptr inbounds %struct.BMVert, ptr %241, i64 0, i32 2
  store ptr %253, ptr %14, align 16, !tbaa !53
  %254 = getelementptr inbounds %struct.BMVert, ptr %245, i64 0, i32 2
  store ptr %254, ptr %188, align 8, !tbaa !53
  %255 = getelementptr inbounds %struct.BMVert, ptr %249, i64 0, i32 2
  store ptr %255, ptr %189, align 16, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %17) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %18) #8
  %256 = icmp eq ptr %231, %241
  %257 = icmp eq ptr %231, %245
  %258 = select i1 %256, i1 true, i1 %257
  %259 = icmp eq ptr %231, %249
  %260 = select i1 %258, i1 true, i1 %259
  br i1 %260, label %822, label %261

261:                                              ; preds = %214
  %262 = icmp eq ptr %235, %241
  %263 = icmp eq ptr %235, %245
  %264 = or i1 %262, %263
  %265 = icmp eq ptr %235, %249
  %266 = or i1 %264, %265
  br i1 %266, label %822, label %267

267:                                              ; preds = %261
  %268 = icmp eq ptr %239, %241
  %269 = icmp eq ptr %239, %245
  %270 = or i1 %268, %269
  %271 = icmp eq ptr %239, %249
  %272 = or i1 %270, %271
  br i1 %272, label %822, label %273

273:                                              ; preds = %267
  %274 = load float, ptr %55, align 4, !tbaa !51
  br label %275

275:                                              ; preds = %273, %339
  %276 = phi i64 [ 0, %273 ], [ %340, %339 ]
  %277 = phi i32 [ 0, %273 ], [ %336, %339 ]
  %278 = phi i32 [ 0, %273 ], [ %335, %339 ]
  %279 = phi i32 [ 0, %273 ], [ %334, %339 ]
  %280 = phi i32 [ 0, %273 ], [ %333, %339 ]
  %281 = getelementptr inbounds [3 x ptr], ptr %11, i64 0, i64 %276
  %282 = load ptr, ptr %281, align 8, !tbaa !53
  %283 = getelementptr inbounds %struct.BMVert, ptr %282, i64 0, i32 2
  %284 = load float, ptr %283, align 4, !tbaa !59
  %285 = getelementptr inbounds %struct.BMVert, ptr %282, i64 0, i32 2, i64 1
  %286 = load float, ptr %285, align 4, !tbaa !59
  %287 = getelementptr inbounds %struct.BMVert, ptr %282, i64 0, i32 2, i64 2
  %288 = load float, ptr %287, align 4, !tbaa !59
  %289 = trunc i64 %276 to i32
  %290 = shl nuw nsw i32 1, %289
  br label %291

291:                                              ; preds = %275, %332
  %292 = phi i64 [ 0, %275 ], [ %337, %332 ]
  %293 = phi i32 [ %277, %275 ], [ %336, %332 ]
  %294 = phi i32 [ %278, %275 ], [ %335, %332 ]
  %295 = phi i32 [ %279, %275 ], [ %334, %332 ]
  %296 = phi i32 [ %280, %275 ], [ %333, %332 ]
  %297 = getelementptr inbounds [3 x ptr], ptr %12, i64 0, i64 %292
  %298 = load ptr, ptr %297, align 8, !tbaa !53
  %299 = getelementptr inbounds %struct.BMVert, ptr %298, i64 0, i32 2
  %300 = load float, ptr %299, align 4, !tbaa !59
  %301 = fsub float %300, %284
  %302 = getelementptr inbounds %struct.BMVert, ptr %298, i64 0, i32 2, i64 1
  %303 = load float, ptr %302, align 4, !tbaa !59
  %304 = fsub float %303, %286
  %305 = getelementptr inbounds %struct.BMVert, ptr %298, i64 0, i32 2, i64 2
  %306 = load float, ptr %305, align 4, !tbaa !59
  %307 = fsub float %306, %288
  %308 = fmul float %304, %304
  %309 = call float @llvm.fmuladd.f32(float %301, float %301, float %308)
  %310 = call float @llvm.fmuladd.f32(float %307, float %307, float %309)
  %311 = fcmp ugt float %310, %274
  br i1 %311, label %332, label %312

312:                                              ; preds = %291
  %313 = and i32 %293, %290
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %315, label %320

315:                                              ; preds = %312
  %316 = add i32 %295, 1
  %317 = zext i32 %295 to i64
  %318 = getelementptr inbounds [8 x ptr], ptr %17, i64 0, i64 %317
  store ptr %282, ptr %318, align 8, !tbaa !53
  %319 = or i32 %293, %290
  br label %320

320:                                              ; preds = %315, %312
  %321 = phi i32 [ %295, %312 ], [ %316, %315 ]
  %322 = phi i32 [ %293, %312 ], [ %319, %315 ]
  %323 = trunc i64 %292 to i32
  %324 = shl nuw nsw i32 1, %323
  %325 = and i32 %294, %324
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %327, label %332

327:                                              ; preds = %320
  %328 = add i32 %296, 1
  %329 = zext i32 %296 to i64
  %330 = getelementptr inbounds [8 x ptr], ptr %18, i64 0, i64 %329
  store ptr %298, ptr %330, align 8, !tbaa !53
  %331 = or i32 %294, %324
  br label %332

332:                                              ; preds = %327, %320, %291
  %333 = phi i32 [ %296, %320 ], [ %328, %327 ], [ %296, %291 ]
  %334 = phi i32 [ %321, %320 ], [ %321, %327 ], [ %295, %291 ]
  %335 = phi i32 [ %294, %320 ], [ %331, %327 ], [ %294, %291 ]
  %336 = phi i32 [ %322, %320 ], [ %322, %327 ], [ %293, %291 ]
  %337 = add nuw nsw i64 %292, 1
  %338 = icmp eq i64 %337, 3
  br i1 %338, label %339, label %291, !llvm.loop !68

339:                                              ; preds = %332
  %340 = add nuw nsw i64 %276, 1
  %341 = icmp eq i64 %340, 3
  br i1 %341, label %342, label %275, !llvm.loop !69

342:                                              ; preds = %339, %441
  %343 = phi i64 [ %444, %441 ], [ 0, %339 ]
  %344 = phi i32 [ %443, %441 ], [ %336, %339 ]
  %345 = phi i32 [ %442, %441 ], [ %333, %339 ]
  %346 = trunc i64 %343 to i32
  %347 = shl nuw nsw i32 1, %346
  %348 = and i32 %344, %347
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %350, label %441

350:                                              ; preds = %342
  %351 = getelementptr inbounds [3 x ptr], ptr %11, i64 0, i64 %343
  br label %352

352:                                              ; preds = %350, %436
  %353 = phi i64 [ 0, %350 ], [ %358, %436 ]
  %354 = phi i32 [ %345, %350 ], [ %438, %436 ]
  %355 = phi i32 [ %344, %350 ], [ %439, %436 ]
  %356 = icmp eq i64 %353, 3
  br i1 %356, label %441, label %357

357:                                              ; preds = %352
  %358 = add nuw nsw i64 %353, 1
  %359 = icmp eq i64 %358, 3
  %360 = trunc i64 %358 to i32
  %361 = select i1 %359, i32 0, i32 %360
  %362 = trunc i64 %353 to i32
  %363 = shl nuw nsw i32 1, %362
  %364 = shl nuw nsw i32 1, %361
  %365 = or i32 %364, %363
  %366 = and i32 %365, %335
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %368, label %436

368:                                              ; preds = %357
  %369 = load ptr, ptr %351, align 8, !tbaa !53
  %370 = getelementptr inbounds %struct.BMVert, ptr %369, i64 0, i32 2
  %371 = getelementptr inbounds [3 x ptr], ptr %12, i64 0, i64 %353
  %372 = load ptr, ptr %371, align 8, !tbaa !53
  %373 = getelementptr inbounds %struct.BMVert, ptr %372, i64 0, i32 2
  %374 = zext nneg i32 %361 to i64
  %375 = getelementptr inbounds [3 x ptr], ptr %12, i64 0, i64 %374
  %376 = load ptr, ptr %375, align 8, !tbaa !53
  %377 = getelementptr inbounds %struct.BMVert, ptr %376, i64 0, i32 2
  %378 = call float @line_point_factor_v3(ptr noundef nonnull %370, ptr noundef nonnull %373, ptr noundef nonnull %377) #8
  %379 = load float, ptr %47, align 8, !tbaa !47
  %380 = fsub float 0.000000e+00, %379
  %381 = fcmp ogt float %378, %380
  br i1 %381, label %382, label %436

382:                                              ; preds = %368
  %383 = fpext float %378 to double
  %384 = fpext float %379 to double
  %385 = fadd double %384, 1.000000e+00
  %386 = fcmp ogt double %385, %383
  br i1 %386, label %387, label %436

387:                                              ; preds = %382
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #8
  call void @interp_v3_v3v3(ptr noundef nonnull %19, ptr noundef nonnull %373, ptr noundef nonnull %377, float noundef %378) #8
  %388 = load float, ptr %370, align 4, !tbaa !59
  %389 = load float, ptr %19, align 4, !tbaa !59
  %390 = fsub float %388, %389
  %391 = getelementptr inbounds %struct.BMVert, ptr %369, i64 0, i32 2, i64 1
  %392 = load float, ptr %391, align 4, !tbaa !59
  %393 = load float, ptr %190, align 4, !tbaa !59
  %394 = fsub float %392, %393
  %395 = getelementptr inbounds %struct.BMVert, ptr %369, i64 0, i32 2, i64 2
  %396 = load float, ptr %395, align 4, !tbaa !59
  %397 = load float, ptr %191, align 4, !tbaa !59
  %398 = fsub float %396, %397
  %399 = fmul float %394, %394
  %400 = call float @llvm.fmuladd.f32(float %390, float %390, float %399)
  %401 = call float @llvm.fmuladd.f32(float %398, float %398, float %400)
  %402 = load float, ptr %55, align 4, !tbaa !51
  %403 = fcmp ugt float %401, %402
  br i1 %403, label %431, label %404

404:                                              ; preds = %387
  %405 = add i32 %354, 1
  %406 = zext i32 %354 to i64
  %407 = getelementptr inbounds [8 x ptr], ptr %18, i64 0, i64 %406
  store ptr %369, ptr %407, align 8, !tbaa !53
  %408 = or i32 %355, %347
  %409 = call ptr @BM_edge_exists(ptr noundef %372, ptr noundef %376) #8
  %410 = icmp eq ptr %409, null
  br i1 %410, label %431, label %411

411:                                              ; preds = %404
  %412 = load ptr, ptr %39, align 8, !tbaa !42
  %413 = load ptr, ptr %46, align 8, !tbaa !46
  %414 = call ptr @BLI_ghash_lookup(ptr noundef %412, ptr noundef nonnull %409) #8
  %415 = icmp eq ptr %414, null
  br i1 %415, label %420, label %416

416:                                              ; preds = %411
  %417 = load ptr, ptr %414, align 8, !tbaa !70
  %418 = call i32 @BLI_linklist_index(ptr noundef %417, ptr noundef nonnull %409) #8
  %419 = icmp eq i32 %418, -1
  br i1 %419, label %423, label %431

420:                                              ; preds = %411
  %421 = call ptr @BLI_memarena_alloc(ptr noundef %413, i64 noundef 16) #8
  store ptr null, ptr %421, align 8, !tbaa !70
  %422 = getelementptr inbounds %struct.LinkBase, ptr %421, i64 0, i32 1
  store i32 0, ptr %422, align 8, !tbaa !72
  call void @BLI_ghash_insert(ptr noundef %412, ptr noundef nonnull %409, ptr noundef nonnull %421) #8
  br label %423

423:                                              ; preds = %420, %416
  %424 = phi ptr [ %414, %416 ], [ %421, %420 ]
  %425 = call ptr @BLI_memarena_alloc(ptr noundef %413, i64 noundef 16) #8
  %426 = load ptr, ptr %424, align 8, !tbaa !70
  store ptr %426, ptr %425, align 8, !tbaa !73
  %427 = getelementptr inbounds %struct.LinkNode, ptr %425, i64 0, i32 1
  store ptr %369, ptr %427, align 8, !tbaa !75
  store ptr %425, ptr %424, align 8, !tbaa !70
  %428 = getelementptr inbounds %struct.LinkBase, ptr %424, i64 0, i32 1
  %429 = load i32, ptr %428, align 8, !tbaa !72
  %430 = add i32 %429, 1
  store i32 %430, ptr %428, align 8, !tbaa !72
  br label %431

431:                                              ; preds = %423, %416, %404, %387
  %432 = phi i32 [ 11, %404 ], [ 0, %387 ], [ 11, %416 ], [ 11, %423 ]
  %433 = phi i32 [ %405, %404 ], [ %354, %387 ], [ %405, %416 ], [ %405, %423 ]
  %434 = phi i32 [ %408, %404 ], [ %355, %387 ], [ %408, %416 ], [ %408, %423 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #8
  br i1 %403, label %435, label %436

435:                                              ; preds = %431
  br label %436

436:                                              ; preds = %435, %431, %382, %368, %357
  %437 = phi i32 [ %432, %431 ], [ 13, %357 ], [ 0, %382 ], [ 0, %368 ], [ 0, %435 ]
  %438 = phi i32 [ %433, %431 ], [ %354, %357 ], [ %354, %382 ], [ %354, %368 ], [ %433, %435 ]
  %439 = phi i32 [ %434, %431 ], [ %355, %357 ], [ %355, %382 ], [ %355, %368 ], [ %434, %435 ]
  %440 = icmp eq i32 %437, 11
  br i1 %440, label %441, label %352, !llvm.loop !76

441:                                              ; preds = %436, %352, %342
  %442 = phi i32 [ %345, %342 ], [ %438, %436 ], [ %354, %352 ]
  %443 = phi i32 [ %344, %342 ], [ %439, %436 ], [ %355, %352 ]
  %444 = add nuw nsw i64 %343, 1
  %445 = icmp eq i64 %444, 3
  br i1 %445, label %446, label %342, !llvm.loop !77

446:                                              ; preds = %441, %545
  %447 = phi i64 [ %548, %545 ], [ 0, %441 ]
  %448 = phi i32 [ %547, %545 ], [ %335, %441 ]
  %449 = phi i32 [ %546, %545 ], [ %334, %441 ]
  %450 = trunc i64 %447 to i32
  %451 = shl nuw nsw i32 1, %450
  %452 = and i32 %448, %451
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %454, label %545

454:                                              ; preds = %446
  %455 = getelementptr inbounds [3 x ptr], ptr %12, i64 0, i64 %447
  br label %456

456:                                              ; preds = %454, %540
  %457 = phi i64 [ 0, %454 ], [ %462, %540 ]
  %458 = phi i32 [ %449, %454 ], [ %542, %540 ]
  %459 = phi i32 [ %448, %454 ], [ %543, %540 ]
  %460 = icmp eq i64 %457, 3
  br i1 %460, label %545, label %461

461:                                              ; preds = %456
  %462 = add nuw nsw i64 %457, 1
  %463 = icmp eq i64 %462, 3
  %464 = trunc i64 %462 to i32
  %465 = select i1 %463, i32 0, i32 %464
  %466 = trunc i64 %457 to i32
  %467 = shl nuw nsw i32 1, %466
  %468 = shl nuw nsw i32 1, %465
  %469 = or i32 %468, %467
  %470 = and i32 %469, %443
  %471 = icmp eq i32 %470, 0
  br i1 %471, label %472, label %540

472:                                              ; preds = %461
  %473 = load ptr, ptr %455, align 8, !tbaa !53
  %474 = getelementptr inbounds %struct.BMVert, ptr %473, i64 0, i32 2
  %475 = getelementptr inbounds [3 x ptr], ptr %11, i64 0, i64 %457
  %476 = load ptr, ptr %475, align 8, !tbaa !53
  %477 = getelementptr inbounds %struct.BMVert, ptr %476, i64 0, i32 2
  %478 = zext nneg i32 %465 to i64
  %479 = getelementptr inbounds [3 x ptr], ptr %11, i64 0, i64 %478
  %480 = load ptr, ptr %479, align 8, !tbaa !53
  %481 = getelementptr inbounds %struct.BMVert, ptr %480, i64 0, i32 2
  %482 = call float @line_point_factor_v3(ptr noundef nonnull %474, ptr noundef nonnull %477, ptr noundef nonnull %481) #8
  %483 = fpext float %482 to double
  %484 = load float, ptr %47, align 8, !tbaa !47
  %485 = fpext float %484 to double
  %486 = fsub double 0.000000e+00, %485
  %487 = fcmp olt double %486, %483
  %488 = fadd double %485, 1.000000e+00
  %489 = fcmp ogt double %488, %483
  %490 = and i1 %487, %489
  br i1 %490, label %491, label %540

491:                                              ; preds = %472
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #8
  call void @interp_v3_v3v3(ptr noundef nonnull %20, ptr noundef nonnull %477, ptr noundef nonnull %481, float noundef %482) #8
  %492 = load float, ptr %474, align 4, !tbaa !59
  %493 = load float, ptr %20, align 4, !tbaa !59
  %494 = fsub float %492, %493
  %495 = getelementptr inbounds %struct.BMVert, ptr %473, i64 0, i32 2, i64 1
  %496 = load float, ptr %495, align 4, !tbaa !59
  %497 = load float, ptr %192, align 4, !tbaa !59
  %498 = fsub float %496, %497
  %499 = getelementptr inbounds %struct.BMVert, ptr %473, i64 0, i32 2, i64 2
  %500 = load float, ptr %499, align 4, !tbaa !59
  %501 = load float, ptr %193, align 4, !tbaa !59
  %502 = fsub float %500, %501
  %503 = fmul float %498, %498
  %504 = call float @llvm.fmuladd.f32(float %494, float %494, float %503)
  %505 = call float @llvm.fmuladd.f32(float %502, float %502, float %504)
  %506 = load float, ptr %55, align 4, !tbaa !51
  %507 = fcmp ugt float %505, %506
  br i1 %507, label %535, label %508

508:                                              ; preds = %491
  %509 = add i32 %458, 1
  %510 = zext i32 %458 to i64
  %511 = getelementptr inbounds [8 x ptr], ptr %17, i64 0, i64 %510
  store ptr %473, ptr %511, align 8, !tbaa !53
  %512 = or i32 %459, %451
  %513 = call ptr @BM_edge_exists(ptr noundef %476, ptr noundef %480) #8
  %514 = icmp eq ptr %513, null
  br i1 %514, label %535, label %515

515:                                              ; preds = %508
  %516 = load ptr, ptr %39, align 8, !tbaa !42
  %517 = load ptr, ptr %46, align 8, !tbaa !46
  %518 = call ptr @BLI_ghash_lookup(ptr noundef %516, ptr noundef nonnull %513) #8
  %519 = icmp eq ptr %518, null
  br i1 %519, label %524, label %520

520:                                              ; preds = %515
  %521 = load ptr, ptr %518, align 8, !tbaa !70
  %522 = call i32 @BLI_linklist_index(ptr noundef %521, ptr noundef nonnull %513) #8
  %523 = icmp eq i32 %522, -1
  br i1 %523, label %527, label %535

524:                                              ; preds = %515
  %525 = call ptr @BLI_memarena_alloc(ptr noundef %517, i64 noundef 16) #8
  store ptr null, ptr %525, align 8, !tbaa !70
  %526 = getelementptr inbounds %struct.LinkBase, ptr %525, i64 0, i32 1
  store i32 0, ptr %526, align 8, !tbaa !72
  call void @BLI_ghash_insert(ptr noundef %516, ptr noundef nonnull %513, ptr noundef nonnull %525) #8
  br label %527

527:                                              ; preds = %524, %520
  %528 = phi ptr [ %518, %520 ], [ %525, %524 ]
  %529 = call ptr @BLI_memarena_alloc(ptr noundef %517, i64 noundef 16) #8
  %530 = load ptr, ptr %528, align 8, !tbaa !70
  store ptr %530, ptr %529, align 8, !tbaa !73
  %531 = getelementptr inbounds %struct.LinkNode, ptr %529, i64 0, i32 1
  store ptr %473, ptr %531, align 8, !tbaa !75
  store ptr %529, ptr %528, align 8, !tbaa !70
  %532 = getelementptr inbounds %struct.LinkBase, ptr %528, i64 0, i32 1
  %533 = load i32, ptr %532, align 8, !tbaa !72
  %534 = add i32 %533, 1
  store i32 %534, ptr %532, align 8, !tbaa !72
  br label %535

535:                                              ; preds = %527, %520, %508, %491
  %536 = phi i32 [ 17, %508 ], [ 0, %491 ], [ 17, %520 ], [ 17, %527 ]
  %537 = phi i32 [ %509, %508 ], [ %458, %491 ], [ %509, %520 ], [ %509, %527 ]
  %538 = phi i32 [ %512, %508 ], [ %459, %491 ], [ %512, %520 ], [ %512, %527 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #8
  br i1 %507, label %539, label %540

539:                                              ; preds = %535
  br label %540

540:                                              ; preds = %539, %535, %472, %461
  %541 = phi i32 [ %536, %535 ], [ 19, %461 ], [ 0, %472 ], [ 0, %539 ]
  %542 = phi i32 [ %537, %535 ], [ %458, %461 ], [ %458, %472 ], [ %537, %539 ]
  %543 = phi i32 [ %538, %535 ], [ %459, %461 ], [ %459, %472 ], [ %538, %539 ]
  %544 = icmp eq i32 %541, 17
  br i1 %544, label %545, label %456, !llvm.loop !78

545:                                              ; preds = %540, %456, %446
  %546 = phi i32 [ %449, %446 ], [ %542, %540 ], [ %458, %456 ]
  %547 = phi i32 [ %448, %446 ], [ %543, %540 ], [ %459, %456 ]
  %548 = add nuw nsw i64 %447, 1
  %549 = icmp eq i64 %548, 3
  br i1 %549, label %550, label %446, !llvm.loop !79

550:                                              ; preds = %545
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %21) #8
  %551 = load float, ptr %253, align 4, !tbaa !59
  store float %551, ptr %21, align 16, !tbaa !59
  %552 = getelementptr inbounds %struct.BMVert, ptr %241, i64 0, i32 2, i64 1
  %553 = load float, ptr %552, align 4, !tbaa !59
  store float %553, ptr %194, align 4, !tbaa !59
  %554 = getelementptr inbounds %struct.BMVert, ptr %241, i64 0, i32 2, i64 2
  %555 = load float, ptr %554, align 4, !tbaa !59
  store float %555, ptr %195, align 8, !tbaa !59
  %556 = load float, ptr %254, align 4, !tbaa !59
  store float %556, ptr %196, align 4, !tbaa !59
  %557 = getelementptr inbounds %struct.BMVert, ptr %245, i64 0, i32 2, i64 1
  %558 = load float, ptr %557, align 4, !tbaa !59
  store float %558, ptr %197, align 16, !tbaa !59
  %559 = getelementptr inbounds %struct.BMVert, ptr %245, i64 0, i32 2, i64 2
  %560 = load float, ptr %559, align 4, !tbaa !59
  store float %560, ptr %198, align 4, !tbaa !59
  %561 = load float, ptr %255, align 4, !tbaa !59
  store float %561, ptr %199, align 8, !tbaa !59
  %562 = getelementptr inbounds %struct.BMVert, ptr %249, i64 0, i32 2, i64 1
  %563 = load float, ptr %562, align 4, !tbaa !59
  store float %563, ptr %200, align 4, !tbaa !59
  %564 = getelementptr inbounds %struct.BMVert, ptr %249, i64 0, i32 2, i64 2
  %565 = load float, ptr %564, align 4, !tbaa !59
  store float %565, ptr %201, align 16, !tbaa !59
  %566 = load float, ptr %49, align 8, !tbaa !48
  %567 = fsub float 1.000000e+00, %566
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #8
  call void @mid_v3_v3v3v3(ptr noundef nonnull %10, ptr noundef nonnull %21, ptr noundef nonnull %196, ptr noundef nonnull %199) #8
  call void @interp_v3_v3v3(ptr noundef nonnull %21, ptr noundef nonnull %10, ptr noundef nonnull %21, float noundef %567) #8
  call void @interp_v3_v3v3(ptr noundef nonnull %196, ptr noundef nonnull %10, ptr noundef nonnull %196, float noundef %567) #8
  call void @interp_v3_v3v3(ptr noundef nonnull %199, ptr noundef nonnull %10, ptr noundef nonnull %199, float noundef %567) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #8
  br label %568

568:                                              ; preds = %550, %608
  %569 = phi i64 [ 0, %550 ], [ %612, %608 ]
  %570 = phi i32 [ %443, %550 ], [ %611, %608 ]
  %571 = phi i32 [ %546, %550 ], [ %610, %608 ]
  %572 = phi i32 [ %442, %550 ], [ %609, %608 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %22) #8
  %573 = trunc i64 %569 to i32
  %574 = shl nuw nsw i32 1, %573
  %575 = and i32 %570, %574
  %576 = icmp eq i32 %575, 0
  br i1 %576, label %577, label %608

577:                                              ; preds = %568
  %578 = getelementptr inbounds [3 x ptr], ptr %11, i64 0, i64 %569
  %579 = load ptr, ptr %578, align 8, !tbaa !53
  %580 = getelementptr inbounds %struct.BMVert, ptr %579, i64 0, i32 2
  %581 = call zeroext i8 @isect_point_tri_v3(ptr noundef nonnull %580, ptr noundef nonnull %21, ptr noundef nonnull %196, ptr noundef nonnull %199, ptr noundef nonnull %22) #8
  %582 = icmp eq i8 %581, 0
  br i1 %582, label %608, label %583

583:                                              ; preds = %577
  %584 = load float, ptr %580, align 4, !tbaa !59
  %585 = load float, ptr %22, align 4, !tbaa !59
  %586 = fsub float %584, %585
  %587 = getelementptr inbounds %struct.BMVert, ptr %579, i64 0, i32 2, i64 1
  %588 = load float, ptr %587, align 4, !tbaa !59
  %589 = load float, ptr %202, align 4, !tbaa !59
  %590 = fsub float %588, %589
  %591 = getelementptr inbounds %struct.BMVert, ptr %579, i64 0, i32 2, i64 2
  %592 = load float, ptr %591, align 4, !tbaa !59
  %593 = load float, ptr %203, align 4, !tbaa !59
  %594 = fsub float %592, %593
  %595 = fmul float %590, %590
  %596 = call float @llvm.fmuladd.f32(float %586, float %586, float %595)
  %597 = call float @llvm.fmuladd.f32(float %594, float %594, float %596)
  %598 = load float, ptr %55, align 4, !tbaa !51
  %599 = fcmp ugt float %597, %598
  br i1 %599, label %608, label %600

600:                                              ; preds = %583
  %601 = add i32 %571, 1
  %602 = zext i32 %571 to i64
  %603 = getelementptr inbounds [8 x ptr], ptr %17, i64 0, i64 %602
  store ptr %579, ptr %603, align 8, !tbaa !53
  %604 = add i32 %572, 1
  %605 = zext i32 %572 to i64
  %606 = getelementptr inbounds [8 x ptr], ptr %18, i64 0, i64 %605
  store ptr %579, ptr %606, align 8, !tbaa !53
  %607 = or i32 %570, %574
  br label %608

608:                                              ; preds = %600, %583, %577, %568
  %609 = phi i32 [ %572, %568 ], [ %604, %600 ], [ %572, %583 ], [ %572, %577 ]
  %610 = phi i32 [ %571, %568 ], [ %601, %600 ], [ %571, %583 ], [ %571, %577 ]
  %611 = phi i32 [ %570, %568 ], [ %607, %600 ], [ %570, %583 ], [ %570, %577 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %22) #8
  %612 = add nuw nsw i64 %569, 1
  %613 = icmp eq i64 %612, 3
  br i1 %613, label %614, label %568, !llvm.loop !80

614:                                              ; preds = %608
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %21) #8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %23) #8
  %615 = load ptr, ptr %11, align 16, !tbaa !53
  %616 = getelementptr inbounds %struct.BMVert, ptr %615, i64 0, i32 2
  %617 = load float, ptr %616, align 4, !tbaa !59
  store float %617, ptr %23, align 16, !tbaa !59
  %618 = getelementptr inbounds %struct.BMVert, ptr %615, i64 0, i32 2, i64 1
  %619 = load float, ptr %618, align 4, !tbaa !59
  store float %619, ptr %204, align 4, !tbaa !59
  %620 = getelementptr inbounds %struct.BMVert, ptr %615, i64 0, i32 2, i64 2
  %621 = load float, ptr %620, align 4, !tbaa !59
  store float %621, ptr %205, align 8, !tbaa !59
  %622 = load ptr, ptr %182, align 8, !tbaa !53
  %623 = getelementptr inbounds %struct.BMVert, ptr %622, i64 0, i32 2
  %624 = load float, ptr %623, align 4, !tbaa !59
  store float %624, ptr %206, align 4, !tbaa !59
  %625 = getelementptr inbounds %struct.BMVert, ptr %622, i64 0, i32 2, i64 1
  %626 = load float, ptr %625, align 4, !tbaa !59
  store float %626, ptr %207, align 16, !tbaa !59
  %627 = getelementptr inbounds %struct.BMVert, ptr %622, i64 0, i32 2, i64 2
  %628 = load float, ptr %627, align 4, !tbaa !59
  store float %628, ptr %208, align 4, !tbaa !59
  %629 = load ptr, ptr %183, align 16, !tbaa !53
  %630 = getelementptr inbounds %struct.BMVert, ptr %629, i64 0, i32 2
  %631 = load float, ptr %630, align 4, !tbaa !59
  store float %631, ptr %209, align 8, !tbaa !59
  %632 = getelementptr inbounds %struct.BMVert, ptr %629, i64 0, i32 2, i64 1
  %633 = load float, ptr %632, align 4, !tbaa !59
  store float %633, ptr %210, align 4, !tbaa !59
  %634 = getelementptr inbounds %struct.BMVert, ptr %629, i64 0, i32 2, i64 2
  %635 = load float, ptr %634, align 4, !tbaa !59
  store float %635, ptr %211, align 16, !tbaa !59
  %636 = load float, ptr %49, align 8, !tbaa !48
  %637 = fsub float 1.000000e+00, %636
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #8
  call void @mid_v3_v3v3v3(ptr noundef nonnull %9, ptr noundef nonnull %23, ptr noundef nonnull %206, ptr noundef nonnull %209) #8
  call void @interp_v3_v3v3(ptr noundef nonnull %23, ptr noundef nonnull %9, ptr noundef nonnull %23, float noundef %637) #8
  call void @interp_v3_v3v3(ptr noundef nonnull %206, ptr noundef nonnull %9, ptr noundef nonnull %206, float noundef %637) #8
  call void @interp_v3_v3v3(ptr noundef nonnull %209, ptr noundef nonnull %9, ptr noundef nonnull %209, float noundef %637) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #8
  br label %638

638:                                              ; preds = %614, %678
  %639 = phi i64 [ 0, %614 ], [ %682, %678 ]
  %640 = phi i32 [ %547, %614 ], [ %681, %678 ]
  %641 = phi i32 [ %610, %614 ], [ %680, %678 ]
  %642 = phi i32 [ %609, %614 ], [ %679, %678 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %24) #8
  %643 = trunc i64 %639 to i32
  %644 = shl nuw nsw i32 1, %643
  %645 = and i32 %640, %644
  %646 = icmp eq i32 %645, 0
  br i1 %646, label %647, label %678

647:                                              ; preds = %638
  %648 = getelementptr inbounds [3 x ptr], ptr %12, i64 0, i64 %639
  %649 = load ptr, ptr %648, align 8, !tbaa !53
  %650 = getelementptr inbounds %struct.BMVert, ptr %649, i64 0, i32 2
  %651 = call zeroext i8 @isect_point_tri_v3(ptr noundef nonnull %650, ptr noundef nonnull %23, ptr noundef nonnull %206, ptr noundef nonnull %209, ptr noundef nonnull %24) #8
  %652 = icmp eq i8 %651, 0
  br i1 %652, label %678, label %653

653:                                              ; preds = %647
  %654 = load float, ptr %650, align 4, !tbaa !59
  %655 = load float, ptr %24, align 4, !tbaa !59
  %656 = fsub float %654, %655
  %657 = getelementptr inbounds %struct.BMVert, ptr %649, i64 0, i32 2, i64 1
  %658 = load float, ptr %657, align 4, !tbaa !59
  %659 = load float, ptr %212, align 4, !tbaa !59
  %660 = fsub float %658, %659
  %661 = getelementptr inbounds %struct.BMVert, ptr %649, i64 0, i32 2, i64 2
  %662 = load float, ptr %661, align 4, !tbaa !59
  %663 = load float, ptr %213, align 4, !tbaa !59
  %664 = fsub float %662, %663
  %665 = fmul float %660, %660
  %666 = call float @llvm.fmuladd.f32(float %656, float %656, float %665)
  %667 = call float @llvm.fmuladd.f32(float %664, float %664, float %666)
  %668 = load float, ptr %55, align 4, !tbaa !51
  %669 = fcmp ugt float %667, %668
  br i1 %669, label %678, label %670

670:                                              ; preds = %653
  %671 = add i32 %641, 1
  %672 = zext i32 %641 to i64
  %673 = getelementptr inbounds [8 x ptr], ptr %17, i64 0, i64 %672
  store ptr %649, ptr %673, align 8, !tbaa !53
  %674 = add i32 %642, 1
  %675 = zext i32 %642 to i64
  %676 = getelementptr inbounds [8 x ptr], ptr %18, i64 0, i64 %675
  store ptr %649, ptr %676, align 8, !tbaa !53
  %677 = or i32 %640, %644
  br label %678

678:                                              ; preds = %670, %653, %647, %638
  %679 = phi i32 [ %642, %638 ], [ %674, %670 ], [ %642, %653 ], [ %642, %647 ]
  %680 = phi i32 [ %641, %638 ], [ %671, %670 ], [ %641, %653 ], [ %641, %647 ]
  %681 = phi i32 [ %640, %638 ], [ %677, %670 ], [ %640, %653 ], [ %640, %647 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %24) #8
  %682 = add nuw nsw i64 %639, 1
  %683 = icmp eq i64 %682, 3
  br i1 %683, label %684, label %638, !llvm.loop !81

684:                                              ; preds = %678
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %23) #8
  %685 = icmp ugt i32 %680, 2
  %686 = icmp ugt i32 %679, 2
  %687 = select i1 %685, i1 %686, i1 false
  br i1 %687, label %822, label %688

688:                                              ; preds = %684
  %689 = load ptr, ptr %13, align 16, !tbaa !53
  %690 = load ptr, ptr %186, align 8, !tbaa !53
  %691 = load ptr, ptr %187, align 16, !tbaa !53
  %692 = call float @normal_tri_v3(ptr noundef nonnull %15, ptr noundef %689, ptr noundef %690, ptr noundef %691) #8
  %693 = load ptr, ptr %14, align 16, !tbaa !53
  %694 = load ptr, ptr %188, align 8, !tbaa !53
  %695 = load ptr, ptr %189, align 16, !tbaa !53
  %696 = call float @normal_tri_v3(ptr noundef nonnull %16, ptr noundef %693, ptr noundef %694, ptr noundef %695) #8
  br label %697

697:                                              ; preds = %688, %726
  %698 = phi i64 [ 0, %688 ], [ %701, %726 ]
  %699 = phi i32 [ %680, %688 ], [ %728, %726 ]
  %700 = phi i32 [ %679, %688 ], [ %727, %726 ]
  %701 = add nuw nsw i64 %698, 1
  %702 = icmp eq i64 %701, 3
  %703 = trunc i64 %701 to i32
  %704 = select i1 %702, i32 0, i32 %703
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %25) #8
  %705 = trunc i64 %698 to i32
  %706 = shl nuw nsw i32 1, %705
  %707 = shl nuw nsw i32 1, %704
  %708 = or i32 %707, %706
  %709 = and i32 %708, %611
  %710 = icmp eq i32 %709, 0
  br i1 %710, label %711, label %726

711:                                              ; preds = %697
  %712 = getelementptr inbounds [3 x ptr], ptr %11, i64 0, i64 %698
  %713 = load ptr, ptr %712, align 8, !tbaa !53
  %714 = zext nneg i32 %704 to i64
  %715 = getelementptr inbounds [3 x ptr], ptr %11, i64 0, i64 %714
  %716 = load ptr, ptr %715, align 8, !tbaa !53
  %717 = call fastcc ptr @bm_isect_edge_tri(ptr noundef nonnull %27, ptr noundef %713, ptr noundef %716, ptr noundef nonnull %12, i32 noundef %219, ptr noundef nonnull %14, ptr noundef nonnull %16, ptr noundef nonnull %25)
  %718 = icmp eq ptr %717, null
  br i1 %718, label %726, label %719

719:                                              ; preds = %711
  %720 = add i32 %699, 1
  %721 = zext i32 %699 to i64
  %722 = getelementptr inbounds [8 x ptr], ptr %17, i64 0, i64 %721
  store ptr %717, ptr %722, align 8, !tbaa !53
  %723 = add i32 %700, 1
  %724 = zext i32 %700 to i64
  %725 = getelementptr inbounds [8 x ptr], ptr %18, i64 0, i64 %724
  store ptr %717, ptr %725, align 8, !tbaa !53
  br label %726

726:                                              ; preds = %719, %711, %697
  %727 = phi i32 [ %700, %697 ], [ %723, %719 ], [ %700, %711 ]
  %728 = phi i32 [ %699, %697 ], [ %720, %719 ], [ %699, %711 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %25) #8
  %729 = icmp eq i64 %701, 3
  br i1 %729, label %733, label %697, !llvm.loop !82

730:                                              ; preds = %765
  %731 = icmp eq i32 %766, 2
  %732 = icmp eq i32 %767, 2
  br label %769

733:                                              ; preds = %726, %765
  %734 = phi i64 [ %737, %765 ], [ 0, %726 ]
  %735 = phi i32 [ %767, %765 ], [ %728, %726 ]
  %736 = phi i32 [ %766, %765 ], [ %727, %726 ]
  %737 = add nuw nsw i64 %734, 1
  %738 = icmp eq i64 %737, 3
  %739 = trunc i64 %737 to i32
  %740 = select i1 %738, i32 0, i32 %739
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %26) #8
  %741 = trunc i64 %734 to i32
  %742 = shl nuw nsw i32 1, %741
  %743 = shl nuw nsw i32 1, %740
  %744 = or i32 %743, %742
  %745 = and i32 %744, %681
  %746 = icmp eq i32 %745, 0
  br i1 %746, label %747, label %765

747:                                              ; preds = %733
  %748 = getelementptr inbounds [3 x ptr], ptr %12, i64 0, i64 %734
  %749 = load ptr, ptr %748, align 8, !tbaa !53
  %750 = zext nneg i32 %740 to i64
  %751 = getelementptr inbounds [3 x ptr], ptr %12, i64 0, i64 %750
  %752 = load ptr, ptr %751, align 8, !tbaa !53
  %753 = call fastcc ptr @bm_isect_edge_tri(ptr noundef nonnull %27, ptr noundef %749, ptr noundef %752, ptr noundef nonnull %11, i32 noundef %217, ptr noundef nonnull %13, ptr noundef nonnull %15, ptr noundef nonnull %26)
  %754 = icmp eq ptr %753, null
  %755 = load i32, ptr %26, align 4
  %756 = icmp ult i32 %755, 3
  %757 = select i1 %754, i1 true, i1 %756
  br i1 %757, label %765, label %758

758:                                              ; preds = %747
  %759 = add i32 %735, 1
  %760 = zext i32 %735 to i64
  %761 = getelementptr inbounds [8 x ptr], ptr %17, i64 0, i64 %760
  store ptr %753, ptr %761, align 8, !tbaa !53
  %762 = add i32 %736, 1
  %763 = zext i32 %736 to i64
  %764 = getelementptr inbounds [8 x ptr], ptr %18, i64 0, i64 %763
  store ptr %753, ptr %764, align 8, !tbaa !53
  br label %765

765:                                              ; preds = %758, %747, %733
  %766 = phi i32 [ %736, %733 ], [ %762, %758 ], [ %736, %747 ]
  %767 = phi i32 [ %735, %733 ], [ %759, %758 ], [ %735, %747 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %26) #8
  %768 = icmp eq i64 %737, 3
  br i1 %768, label %730, label %733, !llvm.loop !83

769:                                              ; preds = %730, %819
  %770 = phi i32 [ 0, %730 ], [ %820, %819 ]
  %771 = icmp eq i32 %770, 0
  br i1 %771, label %772, label %773

772:                                              ; preds = %769
  br i1 %732, label %774, label %819

773:                                              ; preds = %769
  br i1 %731, label %774, label %819

774:                                              ; preds = %773, %772
  %775 = phi ptr [ %17, %772 ], [ %18, %773 ]
  %776 = phi ptr [ %226, %772 ], [ %229, %773 ]
  %777 = phi ptr [ %180, %772 ], [ %181, %773 ]
  %778 = load ptr, ptr %775, align 16, !tbaa !53
  %779 = load ptr, ptr %777, align 8, !tbaa !53
  %780 = call ptr @BM_edge_exists(ptr noundef %778, ptr noundef %779) #8
  %781 = icmp eq ptr %780, null
  br i1 %781, label %782, label %788

782:                                              ; preds = %774
  %783 = load ptr, ptr %27, align 8, !tbaa !34
  %784 = load ptr, ptr %775, align 16, !tbaa !53
  %785 = load ptr, ptr %777, align 8, !tbaa !53
  %786 = call ptr @BM_edge_create(ptr noundef %783, ptr noundef %784, ptr noundef %785, ptr noundef null, i32 noundef 0) #8
  %787 = load ptr, ptr %43, align 8, !tbaa !44
  call void @BLI_gset_insert(ptr noundef %787, ptr noundef %786) #8
  br label %793

788:                                              ; preds = %774
  %789 = load ptr, ptr %43, align 8, !tbaa !44
  %790 = call zeroext i8 @BLI_gset_add(ptr noundef %789, ptr noundef nonnull %780) #8
  %791 = call zeroext i8 @BM_edge_in_face(ptr noundef nonnull %780, ptr noundef %776) #8
  %792 = icmp eq i8 %791, 0
  br i1 %792, label %793, label %819

793:                                              ; preds = %788, %782
  %794 = phi ptr [ %786, %782 ], [ %780, %788 ]
  %795 = getelementptr inbounds %struct.BMHeader, ptr %776, i64 0, i32 1
  %796 = load i32, ptr %795, align 8, !tbaa !84
  %797 = sext i32 %796 to i64
  %798 = inttoptr i64 %797 to ptr
  %799 = load ptr, ptr %41, align 8, !tbaa !43
  %800 = load ptr, ptr %46, align 8, !tbaa !46
  %801 = call ptr @BLI_ghash_lookup(ptr noundef %799, ptr noundef %798) #8
  %802 = icmp eq ptr %801, null
  br i1 %802, label %808, label %803

803:                                              ; preds = %793
  br i1 %781, label %811, label %804

804:                                              ; preds = %803
  %805 = load ptr, ptr %801, align 8, !tbaa !70
  %806 = call i32 @BLI_linklist_index(ptr noundef %805, ptr noundef %798) #8
  %807 = icmp eq i32 %806, -1
  br i1 %807, label %811, label %819

808:                                              ; preds = %793
  %809 = call ptr @BLI_memarena_alloc(ptr noundef %800, i64 noundef 16) #8
  store ptr null, ptr %809, align 8, !tbaa !70
  %810 = getelementptr inbounds %struct.LinkBase, ptr %809, i64 0, i32 1
  store i32 0, ptr %810, align 8, !tbaa !72
  call void @BLI_ghash_insert(ptr noundef %799, ptr noundef %798, ptr noundef nonnull %809) #8
  br label %811

811:                                              ; preds = %808, %804, %803
  %812 = phi ptr [ %801, %804 ], [ %801, %803 ], [ %809, %808 ]
  %813 = call ptr @BLI_memarena_alloc(ptr noundef %800, i64 noundef 16) #8
  %814 = load ptr, ptr %812, align 8, !tbaa !70
  store ptr %814, ptr %813, align 8, !tbaa !73
  %815 = getelementptr inbounds %struct.LinkNode, ptr %813, i64 0, i32 1
  store ptr %794, ptr %815, align 8, !tbaa !75
  store ptr %813, ptr %812, align 8, !tbaa !70
  %816 = getelementptr inbounds %struct.LinkBase, ptr %812, i64 0, i32 1
  %817 = load i32, ptr %816, align 8, !tbaa !72
  %818 = add i32 %817, 1
  store i32 %818, ptr %816, align 8, !tbaa !72
  br label %819

819:                                              ; preds = %811, %804, %788, %773, %772
  %820 = add nuw nsw i32 %770, 1
  %821 = icmp eq i32 %770, 0
  br i1 %821, label %769, label %822, !llvm.loop !85

822:                                              ; preds = %819, %214, %261, %267, %684
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %18) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %17) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #8
  %823 = add nuw nsw i64 %215, 1
  %824 = load i32, ptr %28, align 4, !tbaa !64
  %825 = zext i32 %824 to i64
  %826 = icmp ult i64 %823, %825
  br i1 %826, label %214, label %827, !llvm.loop !86

827:                                              ; preds = %822, %176
  %828 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
  call void %828(ptr noundef nonnull %174) #8
  br label %829

829:                                              ; preds = %827, %172
  call void @BLI_bvhtree_free(ptr noundef %59) #8
  %830 = icmp eq ptr %59, %173
  br i1 %830, label %832, label %831

831:                                              ; preds = %829
  call void @BLI_bvhtree_free(ptr noundef %173) #8
  br label %832

832:                                              ; preds = %831, %829
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %31) #8
  %833 = load ptr, ptr %39, align 8, !tbaa !42
  call void @BLI_ghashIterator_init(ptr noundef nonnull %31, ptr noundef %833) #8
  %834 = getelementptr inbounds %struct.GHashIterator, ptr %31, i64 0, i32 1
  %835 = load ptr, ptr %834, align 8, !tbaa !87
  %836 = icmp eq ptr %835, null
  br i1 %836, label %913, label %837

837:                                              ; preds = %832, %910
  %838 = phi ptr [ %911, %910 ], [ %835, %832 ]
  %839 = getelementptr inbounds %struct._gh_Entry, ptr %838, i64 0, i32 1
  %840 = load ptr, ptr %839, align 8, !tbaa !89
  %841 = getelementptr inbounds %struct._gh_Entry, ptr %838, i64 0, i32 2
  %842 = load ptr, ptr %841, align 8, !tbaa !91
  %843 = getelementptr inbounds %struct.BMEdge, ptr %840, i64 0, i32 2
  %844 = load ptr, ptr %843, align 8, !tbaa !92
  %845 = getelementptr inbounds %struct.BMEdge, ptr %840, i64 0, i32 3
  %846 = getelementptr inbounds %struct.LinkBase, ptr %842, i64 0, i32 1
  %847 = load i32, ptr %846, align 8, !tbaa !72
  %848 = icmp ugt i32 %847, 1
  br i1 %848, label %849, label %851

849:                                              ; preds = %837
  %850 = getelementptr inbounds %struct.BMVert, ptr %844, i64 0, i32 2
  call fastcc void @edge_verts_sort(ptr noundef nonnull %850, ptr noundef %842)
  br label %851

851:                                              ; preds = %849, %837
  %852 = load ptr, ptr %43, align 8, !tbaa !44
  %853 = call zeroext i8 @BLI_gset_haskey(ptr noundef %852, ptr noundef %840) #8
  %854 = load ptr, ptr %842, align 8, !tbaa !53
  %855 = icmp eq ptr %854, null
  br i1 %855, label %910, label %856

856:                                              ; preds = %851
  %857 = icmp eq i8 %853, 0
  br label %858

858:                                              ; preds = %856, %906
  %859 = phi ptr [ %854, %856 ], [ %908, %906 ]
  %860 = phi ptr [ %844, %856 ], [ %907, %906 ]
  %861 = getelementptr inbounds %struct.LinkNode, ptr %859, i64 0, i32 1
  %862 = load ptr, ptr %861, align 8, !tbaa !75
  %863 = getelementptr inbounds %struct.BMVert, ptr %862, i64 0, i32 2
  %864 = load ptr, ptr %843, align 8, !tbaa !92
  %865 = getelementptr inbounds %struct.BMVert, ptr %864, i64 0, i32 2
  %866 = load ptr, ptr %845, align 8, !tbaa !95
  %867 = getelementptr inbounds %struct.BMVert, ptr %866, i64 0, i32 2
  %868 = call float @line_point_factor_v3(ptr noundef nonnull %863, ptr noundef nonnull %865, ptr noundef nonnull %867) #8
  %869 = load ptr, ptr %843, align 8, !tbaa !92
  %870 = icmp eq ptr %869, %860
  br i1 %870, label %875, label %871

871:                                              ; preds = %858
  %872 = load ptr, ptr %845, align 8, !tbaa !95
  %873 = icmp eq ptr %872, %860
  %874 = zext i1 %873 to i8
  br label %875

875:                                              ; preds = %858, %871
  %876 = phi i8 [ 1, %858 ], [ %874, %871 ]
  %877 = icmp eq i8 %876, 0
  br i1 %877, label %906, label %878

878:                                              ; preds = %875
  %879 = fcmp olt float %868, 0.000000e+00
  %880 = fcmp ogt float %868, 1.000000e+00
  %881 = select i1 %880, float 1.000000e+00, float %868
  %882 = select i1 %879, float 0.000000e+00, float %881
  %883 = call ptr @BM_edge_split(ptr noundef %0, ptr noundef %840, ptr noundef %860, ptr noundef null, float noundef %882) #8
  %884 = call ptr @BM_edge_exists(ptr noundef %883, ptr noundef %862) #8
  %885 = icmp eq ptr %884, null
  br i1 %885, label %886, label %894

886:                                              ; preds = %878
  %887 = call zeroext i8 @BM_vert_splice_check_double(ptr noundef %883, ptr noundef %862) #8
  %888 = icmp eq i8 %887, 0
  br i1 %888, label %889, label %894

889:                                              ; preds = %886
  %890 = call zeroext i8 @BM_vert_pair_share_face_check(ptr noundef %883, ptr noundef %862) #8
  %891 = icmp eq i8 %890, 0
  br i1 %891, label %892, label %894

892:                                              ; preds = %889
  %893 = call zeroext i8 @BM_vert_splice(ptr noundef %0, ptr noundef %883, ptr noundef %862) #8
  br label %903

894:                                              ; preds = %889, %886, %878
  %895 = getelementptr inbounds %struct.BMVert, ptr %883, i64 0, i32 2
  %896 = load float, ptr %863, align 4, !tbaa !59
  store float %896, ptr %895, align 4, !tbaa !59
  %897 = getelementptr inbounds %struct.BMVert, ptr %862, i64 0, i32 2, i64 1
  %898 = load float, ptr %897, align 4, !tbaa !59
  %899 = getelementptr inbounds %struct.BMVert, ptr %883, i64 0, i32 2, i64 1
  store float %898, ptr %899, align 4, !tbaa !59
  %900 = getelementptr inbounds %struct.BMVert, ptr %862, i64 0, i32 2, i64 2
  %901 = load float, ptr %900, align 4, !tbaa !59
  %902 = getelementptr inbounds %struct.BMVert, ptr %883, i64 0, i32 2, i64 2
  store float %901, ptr %902, align 4, !tbaa !59
  br label %903

903:                                              ; preds = %894, %892
  br i1 %857, label %906, label %904

904:                                              ; preds = %903
  %905 = load ptr, ptr %43, align 8, !tbaa !44
  call void @BLI_gset_insert(ptr noundef %905, ptr noundef %840) #8
  br label %906

906:                                              ; preds = %903, %904, %875
  %907 = phi ptr [ %862, %904 ], [ %862, %903 ], [ %860, %875 ]
  %908 = load ptr, ptr %859, align 8, !tbaa !53
  %909 = icmp eq ptr %908, null
  br i1 %909, label %910, label %858, !llvm.loop !96

910:                                              ; preds = %906, %851
  call void @BLI_ghashIterator_step(ptr noundef nonnull %31) #8
  %911 = load ptr, ptr %834, align 8, !tbaa !87
  %912 = icmp eq ptr %911, null
  br i1 %912, label %913, label %837, !llvm.loop !97

913:                                              ; preds = %910, %832
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %31) #8
  %914 = load ptr, ptr %44, align 8, !tbaa !45
  %915 = icmp eq ptr %914, null
  br i1 %915, label %933, label %916

916:                                              ; preds = %913, %930
  %917 = phi ptr [ %931, %930 ], [ %914, %913 ]
  %918 = getelementptr inbounds %struct.LinkNode, ptr %917, i64 0, i32 1
  %919 = load ptr, ptr %918, align 8, !tbaa !75
  %920 = getelementptr inbounds %struct.BMHeader, ptr %919, i64 0, i32 3
  %921 = load i8, ptr %920, align 1, !tbaa !98
  %922 = and i8 %921, 16
  %923 = icmp eq i8 %922, 0
  br i1 %923, label %930, label %924

924:                                              ; preds = %916
  %925 = call zeroext i8 @BM_vert_is_edge_pair(ptr noundef %919) #8
  %926 = icmp eq i8 %925, 0
  br i1 %926, label %927, label %930

927:                                              ; preds = %924
  %928 = load i8, ptr %920, align 1, !tbaa !98
  %929 = and i8 %928, -17
  store i8 %929, ptr %920, align 1, !tbaa !98
  br label %930

930:                                              ; preds = %924, %927, %916
  %931 = load ptr, ptr %917, align 8, !tbaa !73
  %932 = icmp eq ptr %931, null
  br i1 %932, label %933, label %916, !llvm.loop !99

933:                                              ; preds = %930, %913
  %934 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !53
  %935 = load ptr, ptr %43, align 8, !tbaa !44
  %936 = call i32 @BLI_gset_size(ptr noundef %935) #8
  %937 = zext i32 %936 to i64
  %938 = shl nuw nsw i64 %937, 4
  %939 = call ptr %934(i64 noundef %938, ptr noundef nonnull @__func__.BM_mesh_intersect) #8
  %940 = load ptr, ptr %44, align 8, !tbaa !45
  %941 = icmp eq ptr %940, null
  br i1 %941, label %1056, label %942

942:                                              ; preds = %933, %1052
  %943 = phi i32 [ %1053, %1052 ], [ 0, %933 ]
  %944 = phi ptr [ %1054, %1052 ], [ %940, %933 ]
  %945 = getelementptr inbounds %struct.LinkNode, ptr %944, i64 0, i32 1
  %946 = load ptr, ptr %945, align 8, !tbaa !75
  %947 = getelementptr inbounds %struct.BMHeader, ptr %946, i64 0, i32 3
  %948 = load i8, ptr %947, align 1, !tbaa !98
  %949 = and i8 %948, 16
  %950 = icmp eq i8 %949, 0
  br i1 %950, label %1052, label %951

951:                                              ; preds = %942
  %952 = getelementptr inbounds %struct.BMVert, ptr %946, i64 0, i32 4
  %953 = load ptr, ptr %952, align 8, !tbaa !100
  %954 = getelementptr inbounds %struct.BMEdge, ptr %953, i64 0, i32 5
  %955 = getelementptr inbounds %struct.BMEdge, ptr %953, i64 0, i32 3
  %956 = load ptr, ptr %955, align 8, !tbaa !95
  %957 = icmp eq ptr %946, %956
  %958 = zext i1 %957 to i64
  %959 = getelementptr inbounds %struct.BMDiskLink, ptr %954, i64 %958
  %960 = load ptr, ptr %959, align 8, !tbaa !102
  %961 = getelementptr inbounds %struct.BMHeader, ptr %953, i64 0, i32 3
  %962 = load i8, ptr %961, align 1, !tbaa !98
  %963 = and i8 %962, 16
  %964 = icmp eq i8 %963, 0
  br i1 %964, label %965, label %1052

965:                                              ; preds = %951
  %966 = getelementptr inbounds %struct.BMHeader, ptr %960, i64 0, i32 3
  %967 = load i8, ptr %966, align 1, !tbaa !98
  %968 = and i8 %967, 16
  %969 = icmp eq i8 %968, 0
  br i1 %969, label %970, label %1052

970:                                              ; preds = %965
  %971 = getelementptr inbounds %struct.BMEdge, ptr %953, i64 0, i32 2
  %972 = load ptr, ptr %971, align 8, !tbaa !92
  %973 = icmp eq ptr %972, %946
  %974 = select i1 %957, ptr %972, ptr null
  %975 = select i1 %973, ptr %956, ptr %974
  %976 = getelementptr inbounds %struct.BMEdge, ptr %960, i64 0, i32 2
  %977 = load ptr, ptr %976, align 8, !tbaa !92
  %978 = icmp eq ptr %977, %946
  %979 = getelementptr inbounds %struct.BMEdge, ptr %960, i64 0, i32 3
  %980 = load ptr, ptr %979, align 8, !tbaa !95
  %981 = icmp eq ptr %980, %946
  %982 = select i1 %981, ptr %977, ptr null
  %983 = select i1 %978, ptr %980, ptr %982
  %984 = getelementptr inbounds %struct.BMHeader, ptr %975, i64 0, i32 3
  %985 = load i8, ptr %984, align 1, !tbaa !98
  %986 = and i8 %985, 16
  %987 = icmp eq i8 %986, 0
  br i1 %987, label %994, label %988

988:                                              ; preds = %970
  %989 = getelementptr inbounds %struct.BMHeader, ptr %983, i64 0, i32 3
  %990 = load i8, ptr %989, align 1, !tbaa !98
  %991 = and i8 %990, 16
  %992 = icmp eq i8 %991, 0
  br i1 %992, label %993, label %1052

993:                                              ; preds = %988
  br i1 %987, label %994, label %1005

994:                                              ; preds = %970, %993
  %995 = getelementptr inbounds %struct.BMHeader, ptr %983, i64 0, i32 3
  %996 = load i8, ptr %995, align 1, !tbaa !98
  %997 = and i8 %996, 16
  %998 = icmp eq i8 %997, 0
  br i1 %998, label %999, label %1005

999:                                              ; preds = %994
  %1000 = or disjoint i8 %967, 16
  store i8 %1000, ptr %966, align 1, !tbaa !98
  %1001 = add i32 %943, 1
  %1002 = zext i32 %943 to i64
  %1003 = getelementptr inbounds [2 x ptr], ptr %939, i64 %1002
  store ptr %946, ptr %1003, align 8, !tbaa !53
  %1004 = getelementptr inbounds ptr, ptr %1003, i64 1
  store ptr %983, ptr %1004, align 8, !tbaa !53
  br label %1052

1005:                                             ; preds = %994, %993
  %1006 = select i1 %987, ptr %960, ptr %953
  br label %1007

1007:                                             ; preds = %1048, %1005
  %1008 = phi ptr [ %946, %1005 ], [ %1049, %1048 ]
  %1009 = phi ptr [ %1006, %1005 ], [ %1050, %1048 ]
  %1010 = phi i32 [ %943, %1005 ], [ %1051, %1048 ]
  %1011 = getelementptr inbounds %struct.BMEdge, ptr %1009, i64 0, i32 2
  %1012 = load ptr, ptr %1011, align 8, !tbaa !92
  %1013 = icmp eq ptr %1012, %1008
  %1014 = getelementptr inbounds %struct.BMEdge, ptr %1009, i64 0, i32 3
  %1015 = load ptr, ptr %1014, align 8, !tbaa !95
  %1016 = icmp eq ptr %1015, %1008
  %1017 = select i1 %1016, ptr %1012, ptr null
  %1018 = select i1 %1013, ptr %1015, ptr %1017
  %1019 = getelementptr inbounds %struct.BMHeader, ptr %1009, i64 0, i32 3
  %1020 = load i8, ptr %1019, align 1, !tbaa !98
  %1021 = or i8 %1020, 16
  store i8 %1021, ptr %1019, align 1, !tbaa !98
  %1022 = getelementptr inbounds %struct.BMHeader, ptr %1018, i64 0, i32 3
  %1023 = load i8, ptr %1022, align 1, !tbaa !98
  %1024 = and i8 %1023, 16
  %1025 = icmp eq i8 %1024, 0
  br i1 %1025, label %1026, label %1031

1026:                                             ; preds = %1007
  %1027 = add i32 %1010, 1
  %1028 = zext i32 %1010 to i64
  %1029 = getelementptr inbounds [2 x ptr], ptr %939, i64 %1028
  store ptr %946, ptr %1029, align 8, !tbaa !53
  %1030 = getelementptr inbounds ptr, ptr %1029, i64 1
  store ptr %1018, ptr %1030, align 8, !tbaa !53
  br label %1048

1031:                                             ; preds = %1007
  %1032 = getelementptr inbounds %struct.BMVert, ptr %1018, i64 0, i32 4
  %1033 = load ptr, ptr %1032, align 8, !tbaa !100
  %1034 = icmp eq ptr %1033, %1009
  br i1 %1034, label %1035, label %1043

1035:                                             ; preds = %1031
  %1036 = getelementptr inbounds %struct.BMEdge, ptr %1033, i64 0, i32 5
  %1037 = getelementptr inbounds %struct.BMEdge, ptr %1033, i64 0, i32 3
  %1038 = load ptr, ptr %1037, align 8, !tbaa !95
  %1039 = icmp eq ptr %1038, %1018
  %1040 = zext i1 %1039 to i64
  %1041 = getelementptr inbounds %struct.BMDiskLink, ptr %1036, i64 %1040
  %1042 = load ptr, ptr %1041, align 8, !tbaa !102
  br label %1043

1043:                                             ; preds = %1031, %1035
  %1044 = phi ptr [ %1042, %1035 ], [ %1033, %1031 ]
  %1045 = getelementptr inbounds %struct.BMHeader, ptr %1044, i64 0, i32 3
  %1046 = load i8, ptr %1045, align 1, !tbaa !98
  %1047 = or i8 %1046, 16
  store i8 %1047, ptr %1045, align 1, !tbaa !98
  br label %1048

1048:                                             ; preds = %1043, %1026
  %1049 = phi ptr [ %1018, %1043 ], [ %1008, %1026 ]
  %1050 = phi ptr [ %1044, %1043 ], [ %1009, %1026 ]
  %1051 = phi i32 [ %1010, %1043 ], [ %1027, %1026 ]
  br i1 %1025, label %1052, label %1007

1052:                                             ; preds = %1048, %988, %999, %951, %965, %942
  %1053 = phi i32 [ %943, %942 ], [ %943, %965 ], [ %943, %951 ], [ %943, %988 ], [ %1001, %999 ], [ %1051, %1048 ]
  %1054 = load ptr, ptr %944, align 8, !tbaa !73
  %1055 = icmp eq ptr %1054, null
  br i1 %1055, label %1056, label %942, !llvm.loop !103

1056:                                             ; preds = %1052, %933
  %1057 = phi i32 [ 0, %933 ], [ %1053, %1052 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %32) #8
  %1058 = load ptr, ptr %41, align 8, !tbaa !43
  call void @BLI_ghashIterator_init(ptr noundef nonnull %32, ptr noundef %1058) #8
  %1059 = getelementptr inbounds %struct.GHashIterator, ptr %32, i64 0, i32 1
  %1060 = load ptr, ptr %1059, align 8, !tbaa !87
  %1061 = icmp eq ptr %1060, null
  br i1 %1061, label %1090, label %1062

1062:                                             ; preds = %1056, %1087
  %1063 = phi ptr [ %1088, %1087 ], [ %1060, %1056 ]
  %1064 = getelementptr inbounds %struct._gh_Entry, ptr %1063, i64 0, i32 2
  %1065 = load ptr, ptr %1064, align 8, !tbaa !91
  %1066 = load ptr, ptr %1065, align 8, !tbaa !53
  %1067 = icmp eq ptr %1066, null
  br i1 %1067, label %1087, label %1068

1068:                                             ; preds = %1062
  %1069 = getelementptr inbounds %struct.LinkBase, ptr %1065, i64 0, i32 1
  br label %1070

1070:                                             ; preds = %1068, %1083
  %1071 = phi ptr [ %1066, %1068 ], [ %1085, %1083 ]
  %1072 = phi ptr [ %1065, %1068 ], [ %1084, %1083 ]
  %1073 = getelementptr inbounds %struct.LinkNode, ptr %1071, i64 0, i32 1
  %1074 = load ptr, ptr %1073, align 8, !tbaa !75
  %1075 = getelementptr inbounds %struct.BMHeader, ptr %1074, i64 0, i32 3
  %1076 = load i8, ptr %1075, align 1, !tbaa !98
  %1077 = and i8 %1076, 16
  %1078 = icmp eq i8 %1077, 0
  br i1 %1078, label %1083, label %1079

1079:                                             ; preds = %1070
  %1080 = load ptr, ptr %1071, align 8, !tbaa !73
  store ptr %1080, ptr %1072, align 8, !tbaa !53
  %1081 = load i32, ptr %1069, align 8, !tbaa !72
  %1082 = add i32 %1081, -1
  store i32 %1082, ptr %1069, align 8, !tbaa !72
  br label %1083

1083:                                             ; preds = %1070, %1079
  %1084 = phi ptr [ %1072, %1079 ], [ %1071, %1070 ]
  %1085 = load ptr, ptr %1071, align 8, !tbaa !53
  %1086 = icmp eq ptr %1085, null
  br i1 %1086, label %1087, label %1070, !llvm.loop !104

1087:                                             ; preds = %1083, %1062
  call void @BLI_ghashIterator_step(ptr noundef nonnull %32) #8
  %1088 = load ptr, ptr %1059, align 8, !tbaa !87
  %1089 = icmp eq ptr %1088, null
  br i1 %1089, label %1090, label %1062, !llvm.loop !105

1090:                                             ; preds = %1087, %1056
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %32) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %33) #8
  %1091 = getelementptr inbounds %struct.BMIter, ptr %33, i64 0, i32 4
  store i8 2, ptr %1091, align 4, !tbaa !106
  %1092 = getelementptr inbounds %struct.BMIter, ptr %33, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %1092, align 8, !tbaa !108
  %1093 = getelementptr inbounds %struct.BMIter, ptr %33, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %1093, align 8, !tbaa !109
  %1094 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %1095 = load ptr, ptr %1094, align 8, !tbaa !110
  store ptr %1095, ptr %33, align 8, !tbaa !115
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %33) #8
  %1096 = load ptr, ptr %1093, align 8, !tbaa !109
  %1097 = call ptr %1096(ptr noundef nonnull %33) #8
  %1098 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 15
  br label %1099

1099:                                             ; preds = %1113, %1090
  %1100 = phi ptr [ %1097, %1090 ], [ %1107, %1113 ]
  %1101 = phi ptr [ undef, %1090 ], [ %1107, %1113 ]
  %1102 = icmp eq ptr %1100, null
  br i1 %1102, label %1106, label %1103

1103:                                             ; preds = %1099
  %1104 = load ptr, ptr %1093, align 8, !tbaa !109
  %1105 = call ptr %1104(ptr noundef nonnull %33) #8
  br label %1106

1106:                                             ; preds = %1099, %1103
  %1107 = phi ptr [ %1105, %1103 ], [ %1101, %1099 ]
  br i1 %1102, label %1138, label %1108

1108:                                             ; preds = %1106
  %1109 = getelementptr inbounds %struct.BMHeader, ptr %1100, i64 0, i32 3
  %1110 = load i8, ptr %1109, align 1, !tbaa !98
  %1111 = and i8 %1110, 16
  %1112 = icmp eq i8 %1111, 0
  br i1 %1112, label %1113, label %1114

1113:                                             ; preds = %1108, %1135
  br label %1099, !llvm.loop !116

1114:                                             ; preds = %1108
  %1115 = getelementptr inbounds %struct.BMEdge, ptr %1100, i64 0, i32 4
  %1116 = load ptr, ptr %1115, align 8, !tbaa !117
  %1117 = icmp eq ptr %1116, null
  br i1 %1117, label %1135, label %1118

1118:                                             ; preds = %1114
  %1119 = load ptr, ptr %1098, align 8, !tbaa !118
  br label %1120

1120:                                             ; preds = %1130, %1118
  %1121 = phi ptr [ %1116, %1118 ], [ %1132, %1130 ]
  %1122 = getelementptr inbounds %struct.BMLoop, ptr %1121, i64 0, i32 3
  %1123 = load ptr, ptr %1122, align 8, !tbaa !54
  %1124 = getelementptr inbounds %struct.BMHeader, ptr %1123, i64 0, i32 1
  %1125 = load i32, ptr %1124, align 8, !tbaa !84
  %1126 = icmp sgt i32 %1125, -1
  br i1 %1126, label %1127, label %1130

1127:                                             ; preds = %1120
  %1128 = zext nneg i32 %1125 to i64
  %1129 = getelementptr inbounds ptr, ptr %1119, i64 %1128
  store ptr null, ptr %1129, align 8, !tbaa !53
  br label %1130

1130:                                             ; preds = %1127, %1120
  %1131 = getelementptr inbounds %struct.BMLoop, ptr %1121, i64 0, i32 4
  %1132 = load ptr, ptr %1131, align 8, !tbaa !119
  %1133 = load ptr, ptr %1115, align 8, !tbaa !117
  %1134 = icmp eq ptr %1132, %1133
  br i1 %1134, label %1135, label %1120, !llvm.loop !120

1135:                                             ; preds = %1130, %1114
  %1136 = load ptr, ptr %43, align 8, !tbaa !44
  %1137 = call zeroext i8 @BLI_gset_remove(ptr noundef %1136, ptr noundef nonnull %1100, ptr noundef null) #8
  call void @BM_edge_kill(ptr noundef %0, ptr noundef nonnull %1100) #8
  br label %1113

1138:                                             ; preds = %1106
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %33) #8
  %1139 = call ptr @BLI_gset_ptr_new(ptr noundef nonnull @__func__.BM_mesh_intersect) #8
  %1140 = load ptr, ptr %44, align 8, !tbaa !45
  %1141 = icmp eq ptr %1140, null
  br i1 %1141, label %1142, label %1146

1142:                                             ; preds = %1160, %1138
  %1143 = icmp eq i32 %1057, 0
  br i1 %1143, label %1191, label %1144

1144:                                             ; preds = %1142
  %1145 = zext i32 %1057 to i64
  br label %1163

1146:                                             ; preds = %1138, %1160
  %1147 = phi ptr [ %1161, %1160 ], [ %1140, %1138 ]
  %1148 = getelementptr inbounds %struct.LinkNode, ptr %1147, i64 0, i32 1
  %1149 = load ptr, ptr %1148, align 8, !tbaa !75
  %1150 = getelementptr inbounds %struct.BMHeader, ptr %1149, i64 0, i32 3
  %1151 = load i8, ptr %1150, align 1, !tbaa !98
  %1152 = and i8 %1151, 16
  %1153 = icmp eq i8 %1152, 0
  br i1 %1153, label %1160, label %1154

1154:                                             ; preds = %1146
  %1155 = getelementptr inbounds %struct.BMVert, ptr %1149, i64 0, i32 4
  %1156 = load ptr, ptr %1155, align 8, !tbaa !100
  %1157 = icmp eq ptr %1156, null
  br i1 %1157, label %1158, label %1160

1158:                                             ; preds = %1154
  %1159 = call zeroext i8 @BLI_gset_add(ptr noundef %1139, ptr noundef %1149) #8
  call void @BM_vert_kill(ptr noundef %0, ptr noundef %1149) #8
  br label %1160

1160:                                             ; preds = %1154, %1158, %1146
  %1161 = load ptr, ptr %1147, align 8, !tbaa !73
  %1162 = icmp eq ptr %1161, null
  br i1 %1162, label %1142, label %1146, !llvm.loop !121

1163:                                             ; preds = %1144, %1188
  %1164 = phi i64 [ 0, %1144 ], [ %1189, %1188 ]
  %1165 = getelementptr inbounds [2 x ptr], ptr %939, i64 %1164
  %1166 = load ptr, ptr %1165, align 8, !tbaa !53
  %1167 = call zeroext i8 @BLI_gset_haskey(ptr noundef %1139, ptr noundef %1166) #8
  %1168 = icmp eq i8 %1167, 0
  br i1 %1168, label %1169, label %1188

1169:                                             ; preds = %1163
  %1170 = getelementptr inbounds [2 x ptr], ptr %939, i64 %1164, i64 1
  %1171 = load ptr, ptr %1170, align 8, !tbaa !53
  %1172 = call zeroext i8 @BLI_gset_haskey(ptr noundef %1139, ptr noundef %1171) #8
  %1173 = icmp eq i8 %1172, 0
  br i1 %1173, label %1174, label %1188

1174:                                             ; preds = %1169
  %1175 = load ptr, ptr %1165, align 8, !tbaa !53
  %1176 = load ptr, ptr %1170, align 8, !tbaa !53
  %1177 = call ptr @BM_edge_exists(ptr noundef %1175, ptr noundef %1176) #8
  %1178 = icmp eq ptr %1177, null
  br i1 %1178, label %1179, label %1188

1179:                                             ; preds = %1174
  %1180 = load ptr, ptr %1165, align 8, !tbaa !53
  %1181 = load ptr, ptr %1170, align 8, !tbaa !53
  %1182 = call zeroext i8 @BM_vert_splice_check_double(ptr noundef %1180, ptr noundef %1181) #8
  %1183 = icmp eq i8 %1182, 0
  br i1 %1183, label %1184, label %1188

1184:                                             ; preds = %1179
  %1185 = load ptr, ptr %1165, align 8, !tbaa !53
  %1186 = load ptr, ptr %1170, align 8, !tbaa !53
  %1187 = call zeroext i8 @BM_vert_splice(ptr noundef %0, ptr noundef %1185, ptr noundef %1186) #8
  br label %1188

1188:                                             ; preds = %1163, %1169, %1184, %1179, %1174
  %1189 = add nuw nsw i64 %1164, 1
  %1190 = icmp eq i64 %1189, %1145
  br i1 %1190, label %1191, label %1163, !llvm.loop !122

1191:                                             ; preds = %1188, %1142
  call void @BLI_gset_free(ptr noundef %1139, ptr noundef null) #8
  %1192 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
  call void %1192(ptr noundef %939) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %34) #8
  %1193 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 15
  %1194 = load ptr, ptr %1193, align 8, !tbaa !118
  %1195 = load ptr, ptr %41, align 8, !tbaa !43
  call void @BLI_ghashIterator_init(ptr noundef nonnull %34, ptr noundef %1195) #8
  %1196 = getelementptr inbounds %struct.GHashIterator, ptr %34, i64 0, i32 1
  %1197 = load ptr, ptr %1196, align 8, !tbaa !87
  %1198 = icmp eq ptr %1197, null
  br i1 %1198, label %1215, label %1199

1199:                                             ; preds = %1191, %1212
  %1200 = phi ptr [ %1213, %1212 ], [ %1197, %1191 ]
  %1201 = getelementptr inbounds %struct._gh_Entry, ptr %1200, i64 0, i32 1
  %1202 = load ptr, ptr %1201, align 8, !tbaa !89
  %1203 = ptrtoint ptr %1202 to i64
  %1204 = shl i64 %1203, 32
  %1205 = ashr exact i64 %1204, 32
  %1206 = getelementptr inbounds ptr, ptr %1194, i64 %1205
  %1207 = load ptr, ptr %1206, align 8, !tbaa !53
  %1208 = icmp eq ptr %1207, null
  br i1 %1208, label %1212, label %1209

1209:                                             ; preds = %1199
  %1210 = getelementptr inbounds %struct._gh_Entry, ptr %1200, i64 0, i32 2
  %1211 = load ptr, ptr %1210, align 8, !tbaa !91
  call fastcc void @face_edges_split(ptr noundef %0, ptr noundef nonnull %1207, ptr noundef %1211)
  br label %1212

1212:                                             ; preds = %1199, %1209
  call void @BLI_ghashIterator_step(ptr noundef nonnull %34) #8
  %1213 = load ptr, ptr %1196, align 8, !tbaa !87
  %1214 = icmp eq ptr %1213, null
  br i1 %1214, label %1215, label %1199, !llvm.loop !123

1215:                                             ; preds = %1212, %1191
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %34) #8
  %1216 = icmp eq i8 %6, 0
  br i1 %1216, label %1232, label %1217

1217:                                             ; preds = %1215
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %35) #8
  call void @BM_mesh_elem_hflag_disable_all(ptr noundef %0, i8 noundef zeroext 2, i8 noundef zeroext 16, i8 noundef zeroext 0) #8
  %1218 = load ptr, ptr %43, align 8, !tbaa !44
  call void @BLI_ghashIterator_init(ptr noundef nonnull %35, ptr noundef %1218) #8
  %1219 = getelementptr inbounds %struct.GHashIterator, ptr %35, i64 0, i32 1
  %1220 = load ptr, ptr %1219, align 8, !tbaa !87
  %1221 = icmp eq ptr %1220, null
  br i1 %1221, label %1231, label %1222

1222:                                             ; preds = %1217, %1222
  %1223 = phi ptr [ %1229, %1222 ], [ %1220, %1217 ]
  %1224 = getelementptr inbounds %struct._gh_Entry, ptr %1223, i64 0, i32 1
  %1225 = load ptr, ptr %1224, align 8, !tbaa !89
  %1226 = getelementptr inbounds %struct.BMHeader, ptr %1225, i64 0, i32 3
  %1227 = load i8, ptr %1226, align 1, !tbaa !98
  %1228 = or i8 %1227, 16
  store i8 %1228, ptr %1226, align 1, !tbaa !98
  call void @BLI_ghashIterator_step(ptr noundef nonnull %35) #8
  %1229 = load ptr, ptr %1219, align 8, !tbaa !87
  %1230 = icmp eq ptr %1229, null
  br i1 %1230, label %1231, label %1222, !llvm.loop !124

1231:                                             ; preds = %1222, %1217
  call void @BM_mesh_edgesplit(ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 0) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %35) #8
  br label %1232

1232:                                             ; preds = %1231, %1215
  %1233 = load ptr, ptr %41, align 8, !tbaa !43
  %1234 = call i32 @BLI_ghash_size(ptr noundef %1233) #8
  %1235 = icmp ne i32 %1234, 0
  %1236 = zext i1 %1235 to i8
  %1237 = load ptr, ptr %37, align 8, !tbaa !41
  call void @BLI_ghash_free(ptr noundef %1237, ptr noundef null, ptr noundef null) #8
  %1238 = load ptr, ptr %39, align 8, !tbaa !42
  call void @BLI_ghash_free(ptr noundef %1238, ptr noundef null, ptr noundef null) #8
  %1239 = load ptr, ptr %41, align 8, !tbaa !43
  call void @BLI_ghash_free(ptr noundef %1239, ptr noundef null, ptr noundef null) #8
  %1240 = load ptr, ptr %43, align 8, !tbaa !44
  call void @BLI_gset_free(ptr noundef %1240, ptr noundef null) #8
  %1241 = load ptr, ptr %46, align 8, !tbaa !46
  call void @BLI_memarena_free(ptr noundef %1241) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %28) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %27) #8
  ret i8 %1236
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @BLI_ghash_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BLI_ghashutil_uinthash_v4(ptr noundef) #2

declare zeroext i8 @BLI_ghashutil_uinthash_v4_cmp(ptr noundef, ptr noundef) #2

declare ptr @BLI_ghash_ptr_new(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_gset_ptr_new(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_memarena_new(i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_mesh_elem_index_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BM_mesh_elem_table_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BM_mesh_elem_hflag_disable_all(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @BLI_bvhtree_new(i32 noundef, float noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @BLI_bvhtree_insert(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @BLI_bvhtree_balance(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_bvhtree_overlap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_bvhtree_free(ptr noundef) local_unnamed_addr #2

declare void @BLI_ghashIterator_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @edge_verts_sort(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.LinkBase, ptr %1, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !72
  %5 = zext i32 %4 to i64
  %6 = shl nuw nsw i64 %5, 4
  %7 = alloca i8, i64 %6, align 16
  %8 = icmp eq i32 %4, 0
  br i1 %8, label %38, label %9

9:                                                ; preds = %2
  %10 = load float, ptr %0, align 4, !tbaa !59
  %11 = getelementptr inbounds float, ptr %0, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !59
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !59
  %15 = zext i32 %4 to i64
  br label %16

16:                                               ; preds = %9, %16
  %17 = phi i64 [ 0, %9 ], [ %36, %16 ]
  %18 = phi ptr [ %1, %9 ], [ %19, %16 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !53
  %20 = getelementptr inbounds %struct.LinkNode, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !75
  %22 = getelementptr inbounds %struct.BMVert, ptr %21, i64 0, i32 2
  %23 = load float, ptr %22, align 4, !tbaa !59
  %24 = fsub float %23, %10
  %25 = getelementptr inbounds %struct.BMVert, ptr %21, i64 0, i32 2, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !59
  %27 = fsub float %26, %12
  %28 = getelementptr inbounds %struct.BMVert, ptr %21, i64 0, i32 2, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !59
  %30 = fsub float %29, %14
  %31 = fmul float %27, %27
  %32 = tail call float @llvm.fmuladd.f32(float %24, float %24, float %31)
  %33 = tail call float @llvm.fmuladd.f32(float %30, float %30, float %32)
  %34 = getelementptr inbounds %struct.vert_sort_t, ptr %7, i64 %17
  store float %33, ptr %34, align 16, !tbaa !125
  %35 = getelementptr inbounds %struct.vert_sort_t, ptr %7, i64 %17, i32 1
  store ptr %21, ptr %35, align 8, !tbaa !127
  %36 = add nuw nsw i64 %17, 1
  %37 = icmp eq i64 %36, %15
  br i1 %37, label %38, label %16, !llvm.loop !128

38:                                               ; preds = %16, %2
  call void @qsort(ptr noundef nonnull %7, i64 noundef %5, i64 noundef 16, ptr noundef nonnull @BLI_sortutil_cmp_float) #8
  %39 = load i32, ptr %3, align 8, !tbaa !72
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %52, label %41

41:                                               ; preds = %38
  %42 = zext i32 %39 to i64
  br label %43

43:                                               ; preds = %41, %43
  %44 = phi i64 [ 0, %41 ], [ %50, %43 ]
  %45 = phi ptr [ %1, %41 ], [ %46, %43 ]
  %46 = load ptr, ptr %45, align 8, !tbaa !53
  %47 = getelementptr inbounds %struct.vert_sort_t, ptr %7, i64 %44, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !127
  %49 = getelementptr inbounds %struct.LinkNode, ptr %46, i64 0, i32 1
  store ptr %48, ptr %49, align 8, !tbaa !75
  %50 = add nuw nsw i64 %44, 1
  %51 = icmp eq i64 %50, %42
  br i1 %51, label %52, label %43, !llvm.loop !129

52:                                               ; preds = %43, %38
  ret void
}

declare zeroext i8 @BLI_gset_haskey(ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @line_point_factor_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BM_edge_split(ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare ptr @BM_edge_exists(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BM_vert_splice_check_double(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BM_vert_pair_share_face_check(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BM_vert_splice(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_gset_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_ghashIterator_step(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BM_vert_is_edge_pair(ptr noundef) local_unnamed_addr #2

declare i32 @BLI_gset_size(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_gset_remove(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_edge_kill(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_gset_add(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_vert_kill(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_gset_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @face_edges_split(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.LinkBase, ptr %2, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !72
  %6 = zext i32 %5 to i64
  %7 = shl nuw nsw i64 %6, 3
  %8 = alloca i8, i64 %7, align 16
  %9 = icmp eq i32 %5, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %3
  %11 = zext i32 %5 to i64
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i64 [ 0, %10 ], [ %19, %12 ]
  %14 = phi ptr [ %2, %10 ], [ %15, %12 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !53
  %16 = getelementptr inbounds %struct.LinkNode, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !75
  %18 = getelementptr inbounds ptr, ptr %8, i64 %13
  store ptr %17, ptr %18, align 8, !tbaa !53
  %19 = add nuw nsw i64 %13, 1
  %20 = icmp eq i64 %19, %11
  br i1 %20, label %21, label %12, !llvm.loop !130

21:                                               ; preds = %12, %3
  %22 = call zeroext i8 @BM_face_split_edgenet(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8, i32 noundef %5, ptr noundef null, ptr noundef null) #8
  ret void
}

declare void @BM_mesh_edgesplit(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare i32 @BLI_ghash_size(ptr noundef) local_unnamed_addr #2

declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_memarena_free(ptr noundef) local_unnamed_addr #2

declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare zeroext i8 @isect_point_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @normal_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @bm_isect_edge_tri(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6, ptr nocapture noundef %7) unnamed_addr #0 {
  %9 = alloca float, align 4
  %10 = alloca [2 x [3 x float]], align 16
  %11 = alloca [4 x [4 x i32]], align 16
  %12 = alloca [3 x float], align 4
  %13 = load ptr, ptr %0, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #8
  %14 = load ptr, ptr %3, align 8, !tbaa !53
  %15 = getelementptr inbounds %struct.BMHeader, ptr %14, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !84
  %17 = getelementptr inbounds ptr, ptr %3, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !53
  %19 = getelementptr inbounds %struct.BMHeader, ptr %18, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !84
  %21 = getelementptr inbounds ptr, ptr %3, i64 2
  %22 = load ptr, ptr %21, align 8, !tbaa !53
  %23 = getelementptr inbounds %struct.BMHeader, ptr %22, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #8
  %25 = getelementptr inbounds %struct.BMHeader, ptr %1, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !84
  %27 = getelementptr inbounds %struct.BMHeader, ptr %2, i64 0, i32 1
  %28 = load i32, ptr %27, align 8, !tbaa !84
  %29 = icmp sgt i32 %26, %28
  %30 = select i1 %29, ptr %1, ptr %2
  %31 = select i1 %29, ptr %2, ptr %1
  %32 = getelementptr inbounds %struct.BMHeader, ptr %31, i64 0, i32 1
  %33 = load i32, ptr %32, align 8, !tbaa !84
  %34 = getelementptr inbounds [4 x [4 x i32]], ptr %11, i64 0, i64 3
  store i32 %33, ptr %34, align 16, !tbaa !64
  %35 = getelementptr inbounds %struct.BMHeader, ptr %30, i64 0, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !84
  %37 = getelementptr inbounds [4 x [4 x i32]], ptr %11, i64 0, i64 3, i64 1
  store i32 %36, ptr %37, align 4, !tbaa !64
  %38 = getelementptr inbounds [4 x [4 x i32]], ptr %11, i64 0, i64 3, i64 2
  store i32 %4, ptr %38, align 8, !tbaa !64
  %39 = getelementptr inbounds [4 x [4 x i32]], ptr %11, i64 0, i64 3, i64 3
  store i32 -1, ptr %39, align 4, !tbaa !64
  store i32 %33, ptr %11, align 16, !tbaa !64
  %40 = getelementptr inbounds [4 x i32], ptr %11, i64 0, i64 1
  store i32 %36, ptr %40, align 4, !tbaa !64
  %41 = getelementptr inbounds [4 x i32], ptr %11, i64 0, i64 2
  store i32 %16, ptr %41, align 8, !tbaa !64
  %42 = getelementptr inbounds [4 x i32], ptr %11, i64 0, i64 3
  store i32 %20, ptr %42, align 4, !tbaa !64
  %43 = getelementptr inbounds [4 x [4 x i32]], ptr %11, i64 0, i64 1
  store i32 %33, ptr %43, align 16, !tbaa !64
  %44 = getelementptr inbounds [4 x [4 x i32]], ptr %11, i64 0, i64 1, i64 1
  store i32 %36, ptr %44, align 4, !tbaa !64
  %45 = getelementptr inbounds [4 x [4 x i32]], ptr %11, i64 0, i64 1, i64 2
  store i32 %20, ptr %45, align 8, !tbaa !64
  %46 = getelementptr inbounds [4 x [4 x i32]], ptr %11, i64 0, i64 1, i64 3
  store i32 %24, ptr %46, align 4, !tbaa !64
  %47 = getelementptr inbounds [4 x [4 x i32]], ptr %11, i64 0, i64 2
  store i32 %33, ptr %47, align 16, !tbaa !64
  %48 = getelementptr inbounds [4 x [4 x i32]], ptr %11, i64 0, i64 2, i64 1
  store i32 %36, ptr %48, align 4, !tbaa !64
  %49 = getelementptr inbounds [4 x [4 x i32]], ptr %11, i64 0, i64 2, i64 2
  store i32 %24, ptr %49, align 8, !tbaa !64
  %50 = getelementptr inbounds [4 x [4 x i32]], ptr %11, i64 0, i64 2, i64 3
  store i32 %16, ptr %50, align 4, !tbaa !64
  %51 = icmp sgt i32 %16, %20
  br i1 %51, label %52, label %53

52:                                               ; preds = %8
  store i32 %20, ptr %41, align 8, !tbaa !64
  store i32 %16, ptr %42, align 4, !tbaa !64
  br label %53

53:                                               ; preds = %52, %8
  %54 = load i32, ptr %41, align 8, !tbaa !64
  %55 = icmp sgt i32 %33, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  store i32 %54, ptr %11, align 16, !tbaa !64
  store i32 %33, ptr %41, align 8, !tbaa !64
  %57 = load i32, ptr %42, align 4, !tbaa !64
  store i32 %57, ptr %40, align 4, !tbaa !64
  store i32 %36, ptr %42, align 4, !tbaa !64
  br label %58

58:                                               ; preds = %56, %53
  %59 = icmp sgt i32 %20, %24
  br i1 %59, label %60, label %61

60:                                               ; preds = %58
  store i32 %24, ptr %45, align 8, !tbaa !64
  store i32 %20, ptr %46, align 4, !tbaa !64
  br label %61

61:                                               ; preds = %60, %58
  %62 = load i32, ptr %45, align 8, !tbaa !64
  %63 = icmp sgt i32 %33, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  store i32 %62, ptr %43, align 16, !tbaa !64
  store i32 %33, ptr %45, align 8, !tbaa !64
  %65 = load i32, ptr %46, align 4, !tbaa !64
  store i32 %65, ptr %44, align 4, !tbaa !64
  store i32 %36, ptr %46, align 4, !tbaa !64
  br label %66

66:                                               ; preds = %64, %61
  %67 = icmp sgt i32 %24, %16
  br i1 %67, label %68, label %69

68:                                               ; preds = %66
  store i32 %16, ptr %49, align 8, !tbaa !64
  store i32 %24, ptr %50, align 4, !tbaa !64
  br label %69

69:                                               ; preds = %68, %66
  %70 = load i32, ptr %49, align 8, !tbaa !64
  %71 = icmp sgt i32 %33, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  store i32 %70, ptr %47, align 16, !tbaa !64
  store i32 %33, ptr %49, align 8, !tbaa !64
  %73 = load i32, ptr %50, align 4, !tbaa !64
  store i32 %73, ptr %48, align 4, !tbaa !64
  store i32 %36, ptr %50, align 4, !tbaa !64
  br label %74

74:                                               ; preds = %72, %69
  %75 = getelementptr inbounds %struct.ISectState, ptr %0, i64 0, i32 1
  br label %79

76:                                               ; preds = %88
  %77 = add nuw nsw i64 %80, 1
  %78 = icmp eq i64 %77, 4
  br i1 %78, label %90, label %79, !llvm.loop !131

79:                                               ; preds = %74, %76
  %80 = phi i64 [ 0, %74 ], [ %77, %76 ]
  %81 = phi ptr [ undef, %74 ], [ %89, %76 ]
  %82 = load ptr, ptr %75, align 8, !tbaa !41
  %83 = getelementptr inbounds [4 x [4 x i32]], ptr %11, i64 0, i64 %80
  %84 = call ptr @BLI_ghash_lookup(ptr noundef %82, ptr noundef nonnull %83) #8
  %85 = icmp eq ptr %84, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %79
  %87 = trunc i64 %80 to i32
  store i32 %87, ptr %7, align 4, !tbaa !64
  br label %88

88:                                               ; preds = %79, %86
  %89 = phi ptr [ %84, %86 ], [ %81, %79 ]
  br i1 %85, label %76, label %387

90:                                               ; preds = %76
  %91 = getelementptr inbounds %struct.BMVert, ptr %31, i64 0, i32 2
  %92 = getelementptr inbounds %struct.BMVert, ptr %30, i64 0, i32 2
  %93 = getelementptr inbounds %struct.ISectState, ptr %0, i64 0, i32 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #8
  %94 = load float, ptr %91, align 4, !tbaa !59
  %95 = load float, ptr %92, align 4, !tbaa !59
  %96 = fsub float %94, %95
  %97 = getelementptr inbounds %struct.BMVert, ptr %31, i64 0, i32 2, i64 1
  %98 = load float, ptr %97, align 4, !tbaa !59
  %99 = getelementptr inbounds %struct.BMVert, ptr %30, i64 0, i32 2, i64 1
  %100 = load float, ptr %99, align 4, !tbaa !59
  %101 = fsub float %98, %100
  %102 = getelementptr inbounds %struct.BMVert, ptr %31, i64 0, i32 2, i64 2
  %103 = load float, ptr %102, align 4, !tbaa !59
  %104 = getelementptr inbounds %struct.BMVert, ptr %30, i64 0, i32 2, i64 2
  %105 = load float, ptr %104, align 4, !tbaa !59
  %106 = fsub float %103, %105
  %107 = fmul float %101, %101
  %108 = call float @llvm.fmuladd.f32(float %96, float %96, float %107)
  %109 = call float @llvm.fmuladd.f32(float %106, float %106, float %108)
  %110 = fcmp ogt float %109, 0x38AA95A5C0000000
  br i1 %110, label %111, label %117

111:                                              ; preds = %90
  %112 = call float @sqrtf(float noundef %109) #8
  %113 = fdiv float 1.000000e+00, %112
  %114 = fmul float %96, %113
  %115 = fmul float %101, %113
  %116 = fmul float %106, %113
  br label %117

117:                                              ; preds = %111, %90
  %118 = phi float [ %115, %111 ], [ 0.000000e+00, %90 ]
  %119 = phi float [ %114, %111 ], [ 0.000000e+00, %90 ]
  %120 = phi float [ %116, %111 ], [ 0.000000e+00, %90 ]
  %121 = getelementptr inbounds [2 x [3 x float]], ptr %10, i64 0, i64 1
  %122 = getelementptr inbounds float, ptr %10, i64 1
  %123 = getelementptr inbounds [2 x [3 x float]], ptr %10, i64 0, i64 1, i64 1
  %124 = getelementptr inbounds float, ptr %10, i64 2
  %125 = getelementptr inbounds [2 x [3 x float]], ptr %10, i64 0, i64 1, i64 2
  %126 = getelementptr inbounds [2 x [3 x float]], ptr %10, i64 0, i64 1, i64 1
  %127 = getelementptr inbounds float, ptr %10, i64 1
  %128 = getelementptr inbounds [2 x [3 x float]], ptr %10, i64 0, i64 1, i64 2
  %129 = getelementptr inbounds float, ptr %10, i64 2
  %130 = getelementptr inbounds %struct.ISectState, ptr %0, i64 0, i32 7, i32 5
  %131 = getelementptr inbounds %struct.ISectState, ptr %0, i64 0, i32 7, i32 4
  %132 = getelementptr inbounds float, ptr %10, i64 1
  %133 = getelementptr inbounds float, ptr %12, i64 1
  %134 = getelementptr inbounds float, ptr %10, i64 2
  %135 = getelementptr inbounds float, ptr %12, i64 2
  br label %136

136:                                              ; preds = %230, %117
  %137 = phi i64 [ %141, %230 ], [ 0, %117 ]
  %138 = phi i32 [ %231, %230 ], [ undef, %117 ]
  %139 = icmp eq i64 %137, 3
  br i1 %139, label %233, label %140

140:                                              ; preds = %136
  %141 = add nuw nsw i64 %137, 1
  %142 = icmp eq i64 %141, 3
  %143 = and i64 %141, 4294967295
  %144 = getelementptr inbounds ptr, ptr %5, i64 %137
  %145 = load ptr, ptr %144, align 8, !tbaa !53
  %146 = select i1 %142, i64 0, i64 %143
  %147 = getelementptr inbounds ptr, ptr %5, i64 %146
  %148 = load ptr, ptr %147, align 8, !tbaa !53
  %149 = load float, ptr %145, align 4, !tbaa !59
  %150 = load float, ptr %148, align 4, !tbaa !59
  %151 = fsub float %149, %150
  %152 = getelementptr inbounds float, ptr %145, i64 1
  %153 = load float, ptr %152, align 4, !tbaa !59
  %154 = getelementptr inbounds float, ptr %148, i64 1
  %155 = load float, ptr %154, align 4, !tbaa !59
  %156 = fsub float %153, %155
  %157 = getelementptr inbounds float, ptr %145, i64 2
  %158 = load float, ptr %157, align 4, !tbaa !59
  %159 = getelementptr inbounds float, ptr %148, i64 2
  %160 = load float, ptr %159, align 4, !tbaa !59
  %161 = fsub float %158, %160
  %162 = fmul float %156, %156
  %163 = call float @llvm.fmuladd.f32(float %151, float %151, float %162)
  %164 = call float @llvm.fmuladd.f32(float %161, float %161, float %163)
  %165 = fcmp ogt float %164, 0x38AA95A5C0000000
  br i1 %165, label %166, label %172

166:                                              ; preds = %140
  %167 = call float @sqrtf(float noundef %164) #8
  %168 = fdiv float 1.000000e+00, %167
  %169 = fmul float %151, %168
  %170 = fmul float %156, %168
  %171 = fmul float %161, %168
  br label %172

172:                                              ; preds = %166, %140
  %173 = phi float [ %170, %166 ], [ 0.000000e+00, %140 ]
  %174 = phi float [ %169, %166 ], [ 0.000000e+00, %140 ]
  %175 = phi float [ %171, %166 ], [ 0.000000e+00, %140 ]
  %176 = fmul float %118, %173
  %177 = call float @llvm.fmuladd.f32(float %119, float %174, float %176)
  %178 = call float @llvm.fmuladd.f32(float %120, float %175, float %177)
  %179 = call float @llvm.fabs.f32(float %178)
  %180 = load float, ptr %93, align 4, !tbaa !132
  %181 = fsub float 1.000000e+00, %180
  %182 = fcmp ult float %179, %181
  br i1 %182, label %183, label %230

183:                                              ; preds = %172
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #8
  %184 = load ptr, ptr %144, align 8, !tbaa !53
  %185 = load ptr, ptr %147, align 8, !tbaa !53
  %186 = call i32 @isect_line_line_epsilon_v3(ptr noundef nonnull %91, ptr noundef nonnull %92, ptr noundef %184, ptr noundef %185, ptr noundef nonnull %10, ptr noundef nonnull %121, float noundef 0.000000e+00) #8
  switch i32 %186, label %191 [
    i32 0, label %227
    i32 1, label %187
  ]

187:                                              ; preds = %183
  %188 = load float, ptr %10, align 16, !tbaa !59
  store float %188, ptr %121, align 4, !tbaa !59
  %189 = load float, ptr %122, align 4, !tbaa !59
  store float %189, ptr %123, align 16, !tbaa !59
  %190 = load float, ptr %124, align 8, !tbaa !59
  store float %190, ptr %125, align 4, !tbaa !59
  br label %206

191:                                              ; preds = %183
  %192 = load float, ptr %121, align 4, !tbaa !59
  %193 = load float, ptr %10, align 16, !tbaa !59
  %194 = fsub float %192, %193
  %195 = load float, ptr %126, align 16, !tbaa !59
  %196 = load float, ptr %127, align 4, !tbaa !59
  %197 = fsub float %195, %196
  %198 = load float, ptr %128, align 4, !tbaa !59
  %199 = load float, ptr %129, align 8, !tbaa !59
  %200 = fsub float %198, %199
  %201 = fmul float %197, %197
  %202 = call float @llvm.fmuladd.f32(float %194, float %194, float %201)
  %203 = call float @llvm.fmuladd.f32(float %200, float %200, float %202)
  %204 = load float, ptr %130, align 4, !tbaa !133
  %205 = fcmp ugt float %203, %204
  br i1 %205, label %227, label %206

206:                                              ; preds = %191, %187
  %207 = load ptr, ptr %144, align 8, !tbaa !53
  %208 = load ptr, ptr %147, align 8, !tbaa !53
  %209 = call float @line_point_factor_v3(ptr noundef nonnull %121, ptr noundef %207, ptr noundef %208) #8
  store float %209, ptr %9, align 4, !tbaa !59
  %210 = load float, ptr %131, align 4, !tbaa !134
  %211 = fcmp ult float %209, %210
  %212 = fsub float 1.000000e+00, %210
  %213 = fcmp ugt float %209, %212
  %214 = or i1 %211, %213
  br i1 %214, label %227, label %215

215:                                              ; preds = %206
  %216 = call float @line_point_factor_v3(ptr noundef nonnull %10, ptr noundef nonnull %91, ptr noundef nonnull %92) #8
  store float %216, ptr %9, align 4, !tbaa !59
  %217 = load float, ptr %131, align 4, !tbaa !134
  %218 = fcmp ult float %216, %217
  %219 = fsub float 1.000000e+00, %217
  %220 = fcmp ugt float %216, %219
  %221 = or i1 %218, %220
  br i1 %221, label %227, label %222

222:                                              ; preds = %215
  %223 = load float, ptr %10, align 16, !tbaa !59
  store float %223, ptr %12, align 4, !tbaa !59
  %224 = load float, ptr %132, align 4, !tbaa !59
  store float %224, ptr %133, align 4, !tbaa !59
  %225 = load float, ptr %134, align 8, !tbaa !59
  store float %225, ptr %135, align 4, !tbaa !59
  %226 = trunc i64 %137 to i32
  br label %227

227:                                              ; preds = %222, %215, %206, %191, %183
  %228 = phi i32 [ %226, %222 ], [ %138, %191 ], [ %138, %215 ], [ %138, %206 ], [ %138, %183 ]
  %229 = phi i1 [ false, %222 ], [ true, %191 ], [ true, %215 ], [ true, %206 ], [ true, %183 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #8
  br label %230

230:                                              ; preds = %227, %172
  %231 = phi i32 [ %138, %172 ], [ %228, %227 ]
  %232 = phi i1 [ true, %172 ], [ %229, %227 ]
  br i1 %232, label %136, label %311, !llvm.loop !135

233:                                              ; preds = %136
  %234 = load float, ptr %6, align 4, !tbaa !59
  %235 = getelementptr inbounds float, ptr %6, i64 1
  %236 = load float, ptr %235, align 4, !tbaa !59
  %237 = fmul float %118, %236
  %238 = call float @llvm.fmuladd.f32(float %119, float %234, float %237)
  %239 = getelementptr inbounds float, ptr %6, i64 2
  %240 = load float, ptr %239, align 4, !tbaa !59
  %241 = call float @llvm.fmuladd.f32(float %120, float %240, float %238)
  %242 = call float @llvm.fabs.f32(float %241)
  %243 = load float, ptr %93, align 4, !tbaa !132
  %244 = fcmp ult float %242, %243
  br i1 %244, label %310, label %245

245:                                              ; preds = %233
  %246 = load ptr, ptr %5, align 8, !tbaa !53
  %247 = getelementptr inbounds ptr, ptr %5, i64 1
  %248 = load ptr, ptr %247, align 8, !tbaa !53
  %249 = getelementptr inbounds ptr, ptr %5, i64 2
  %250 = load ptr, ptr %249, align 8, !tbaa !53
  %251 = call zeroext i8 @isect_line_tri_epsilon_v3(ptr noundef nonnull %91, ptr noundef nonnull %92, ptr noundef %246, ptr noundef %248, ptr noundef %250, ptr noundef nonnull %9, ptr noundef null, float noundef 0.000000e+00) #8
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %310, label %253

253:                                              ; preds = %245
  %254 = load float, ptr %9, align 4, !tbaa !59
  %255 = getelementptr inbounds %struct.ISectState, ptr %0, i64 0, i32 7, i32 4
  %256 = load float, ptr %255, align 4, !tbaa !134
  %257 = fcmp ult float %254, %256
  %258 = fsub float 1.000000e+00, %256
  %259 = fcmp ugt float %254, %258
  %260 = or i1 %257, %259
  br i1 %260, label %310, label %261

261:                                              ; preds = %253
  call void @interp_v3_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %91, ptr noundef nonnull %92, float noundef %254) #8
  %262 = load ptr, ptr %5, align 8, !tbaa !53
  %263 = load float, ptr %12, align 4, !tbaa !59
  %264 = load float, ptr %262, align 4, !tbaa !59
  %265 = fsub float %263, %264
  %266 = getelementptr inbounds float, ptr %12, i64 1
  %267 = load float, ptr %266, align 4, !tbaa !59
  %268 = getelementptr inbounds float, ptr %262, i64 1
  %269 = load float, ptr %268, align 4, !tbaa !59
  %270 = fsub float %267, %269
  %271 = getelementptr inbounds float, ptr %12, i64 2
  %272 = load float, ptr %271, align 4, !tbaa !59
  %273 = getelementptr inbounds float, ptr %262, i64 2
  %274 = load float, ptr %273, align 4, !tbaa !59
  %275 = fsub float %272, %274
  %276 = fmul float %270, %270
  %277 = call float @llvm.fmuladd.f32(float %265, float %265, float %276)
  %278 = call float @llvm.fmuladd.f32(float %275, float %275, float %277)
  %279 = load ptr, ptr %247, align 8, !tbaa !53
  %280 = load float, ptr %279, align 4, !tbaa !59
  %281 = fsub float %263, %280
  %282 = getelementptr inbounds float, ptr %279, i64 1
  %283 = load float, ptr %282, align 4, !tbaa !59
  %284 = fsub float %267, %283
  %285 = getelementptr inbounds float, ptr %279, i64 2
  %286 = load float, ptr %285, align 4, !tbaa !59
  %287 = fsub float %272, %286
  %288 = fmul float %284, %284
  %289 = call float @llvm.fmuladd.f32(float %281, float %281, float %288)
  %290 = call float @llvm.fmuladd.f32(float %287, float %287, float %289)
  %291 = load ptr, ptr %249, align 8, !tbaa !53
  %292 = load float, ptr %291, align 4, !tbaa !59
  %293 = fsub float %263, %292
  %294 = getelementptr inbounds float, ptr %291, i64 1
  %295 = load float, ptr %294, align 4, !tbaa !59
  %296 = fsub float %267, %295
  %297 = getelementptr inbounds float, ptr %291, i64 2
  %298 = load float, ptr %297, align 4, !tbaa !59
  %299 = fsub float %272, %298
  %300 = fmul float %296, %296
  %301 = call float @llvm.fmuladd.f32(float %293, float %293, float %300)
  %302 = call float @llvm.fmuladd.f32(float %299, float %299, float %301)
  %303 = fcmp olt float %278, %290
  %304 = select i1 %303, float %278, float %290
  %305 = fcmp olt float %304, %302
  %306 = select i1 %305, float %304, float %302
  %307 = getelementptr inbounds %struct.ISectState, ptr %0, i64 0, i32 7, i32 5
  %308 = load float, ptr %307, align 4, !tbaa !133
  %309 = fcmp ult float %306, %308
  br i1 %309, label %310, label %311

310:                                              ; preds = %261, %253, %245, %233
  br label %311

311:                                              ; preds = %230, %261, %310
  %312 = phi i32 [ -1, %310 ], [ 3, %261 ], [ %231, %230 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #8
  store i32 %312, ptr %7, align 4, !tbaa !64
  %313 = icmp eq i32 %312, -1
  br i1 %313, label %386, label %314

314:                                              ; preds = %311
  %315 = call ptr @BM_vert_create(ptr noundef %13, ptr noundef nonnull %12, ptr noundef null, i32 noundef 0) #8
  %316 = call ptr @BM_edge_exists(ptr noundef %31, ptr noundef %30) #8
  %317 = icmp eq ptr %316, null
  br i1 %317, label %336, label %318

318:                                              ; preds = %314
  %319 = getelementptr inbounds %struct.ISectState, ptr %0, i64 0, i32 2
  %320 = load ptr, ptr %319, align 8, !tbaa !42
  %321 = getelementptr inbounds %struct.ISectState, ptr %0, i64 0, i32 6
  %322 = load ptr, ptr %321, align 8, !tbaa !46
  %323 = call ptr @BLI_ghash_lookup(ptr noundef %320, ptr noundef nonnull %316) #8
  %324 = icmp eq ptr %323, null
  br i1 %324, label %325, label %328

325:                                              ; preds = %318
  %326 = call ptr @BLI_memarena_alloc(ptr noundef %322, i64 noundef 16) #8
  store ptr null, ptr %326, align 8, !tbaa !70
  %327 = getelementptr inbounds %struct.LinkBase, ptr %326, i64 0, i32 1
  store i32 0, ptr %327, align 8, !tbaa !72
  call void @BLI_ghash_insert(ptr noundef %320, ptr noundef nonnull %316, ptr noundef nonnull %326) #8
  br label %328

328:                                              ; preds = %318, %325
  %329 = phi ptr [ %326, %325 ], [ %323, %318 ]
  %330 = call ptr @BLI_memarena_alloc(ptr noundef %322, i64 noundef 16) #8
  %331 = load ptr, ptr %329, align 8, !tbaa !70
  store ptr %331, ptr %330, align 8, !tbaa !73
  %332 = getelementptr inbounds %struct.LinkNode, ptr %330, i64 0, i32 1
  store ptr %315, ptr %332, align 8, !tbaa !75
  store ptr %330, ptr %329, align 8, !tbaa !70
  %333 = getelementptr inbounds %struct.LinkBase, ptr %329, i64 0, i32 1
  %334 = load i32, ptr %333, align 8, !tbaa !72
  %335 = add i32 %334, 1
  store i32 %335, ptr %333, align 8, !tbaa !72
  br label %343

336:                                              ; preds = %314
  %337 = getelementptr inbounds %struct.BMHeader, ptr %315, i64 0, i32 3
  %338 = load i8, ptr %337, align 1, !tbaa !98
  %339 = or i8 %338, 16
  store i8 %339, ptr %337, align 1, !tbaa !98
  %340 = getelementptr inbounds %struct.ISectState, ptr %0, i64 0, i32 5
  %341 = getelementptr inbounds %struct.ISectState, ptr %0, i64 0, i32 6
  %342 = load ptr, ptr %341, align 8, !tbaa !46
  call void @BLI_linklist_prepend_arena(ptr noundef nonnull %340, ptr noundef %315, ptr noundef %342) #8
  br label %343

343:                                              ; preds = %336, %328
  %344 = load i32, ptr %7, align 4, !tbaa !64
  %345 = freeze i32 %344
  %346 = icmp ult i32 %345, 3
  br i1 %346, label %347, label %377

347:                                              ; preds = %343
  %348 = zext nneg i32 %345 to i64
  %349 = getelementptr inbounds ptr, ptr %3, i64 %348
  %350 = load ptr, ptr %349, align 8, !tbaa !53
  %351 = add nuw nsw i32 %345, 1
  %352 = icmp eq i32 %351, 3
  %353 = select i1 %352, i32 0, i32 %351
  %354 = zext nneg i32 %353 to i64
  %355 = getelementptr inbounds ptr, ptr %3, i64 %354
  %356 = load ptr, ptr %355, align 8, !tbaa !53
  %357 = call ptr @BM_edge_exists(ptr noundef %350, ptr noundef %356) #8
  %358 = icmp eq ptr %357, null
  br i1 %358, label %377, label %359

359:                                              ; preds = %347
  %360 = getelementptr inbounds %struct.ISectState, ptr %0, i64 0, i32 2
  %361 = load ptr, ptr %360, align 8, !tbaa !42
  %362 = getelementptr inbounds %struct.ISectState, ptr %0, i64 0, i32 6
  %363 = load ptr, ptr %362, align 8, !tbaa !46
  %364 = call ptr @BLI_ghash_lookup(ptr noundef %361, ptr noundef nonnull %357) #8
  %365 = icmp eq ptr %364, null
  br i1 %365, label %366, label %369

366:                                              ; preds = %359
  %367 = call ptr @BLI_memarena_alloc(ptr noundef %363, i64 noundef 16) #8
  store ptr null, ptr %367, align 8, !tbaa !70
  %368 = getelementptr inbounds %struct.LinkBase, ptr %367, i64 0, i32 1
  store i32 0, ptr %368, align 8, !tbaa !72
  call void @BLI_ghash_insert(ptr noundef %361, ptr noundef nonnull %357, ptr noundef nonnull %367) #8
  br label %369

369:                                              ; preds = %359, %366
  %370 = phi ptr [ %367, %366 ], [ %364, %359 ]
  %371 = call ptr @BLI_memarena_alloc(ptr noundef %363, i64 noundef 16) #8
  %372 = load ptr, ptr %370, align 8, !tbaa !70
  store ptr %372, ptr %371, align 8, !tbaa !73
  %373 = getelementptr inbounds %struct.LinkNode, ptr %371, i64 0, i32 1
  store ptr %315, ptr %373, align 8, !tbaa !75
  store ptr %371, ptr %370, align 8, !tbaa !70
  %374 = getelementptr inbounds %struct.LinkBase, ptr %370, i64 0, i32 1
  %375 = load i32, ptr %374, align 8, !tbaa !72
  %376 = add i32 %375, 1
  store i32 %376, ptr %374, align 8, !tbaa !72
  br label %377

377:                                              ; preds = %347, %369, %343
  %378 = getelementptr inbounds %struct.ISectState, ptr %0, i64 0, i32 6
  %379 = load ptr, ptr %378, align 8, !tbaa !46
  %380 = call ptr @BLI_memarena_alloc(ptr noundef %379, i64 noundef 16) #8
  %381 = load i32, ptr %7, align 4, !tbaa !64
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds [4 x [4 x i32]], ptr %11, i64 0, i64 %382
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %380, ptr noundef nonnull align 16 dereferenceable(16) %383, i64 16, i1 false)
  %384 = getelementptr inbounds %struct.ISectState, ptr %0, i64 0, i32 1
  %385 = load ptr, ptr %384, align 8, !tbaa !41
  call void @BLI_ghash_insert(ptr noundef %385, ptr noundef %380, ptr noundef %315) #8
  br label %387

386:                                              ; preds = %311
  store i32 -1, ptr %7, align 4, !tbaa !64
  br label %387

387:                                              ; preds = %88, %386, %377
  %388 = phi ptr [ %315, %377 ], [ null, %386 ], [ %89, %88 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #8
  ret ptr %388
}

declare ptr @BM_edge_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @BM_edge_in_face(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BLI_linklist_index(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_memarena_alloc(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mid_v3_v3v3v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BM_vert_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

declare i32 @isect_line_line_epsilon_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare zeroext i8 @isect_line_tri_epsilon_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #6

declare void @BLI_linklist_prepend_arena(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

declare i32 @BLI_sortutil_cmp_float(ptr noundef, ptr noundef) #2

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

declare zeroext i8 @BM_face_split_edgenet(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

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
!60 = distinct !{!60, !61, !62}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!"llvm.loop.unroll.disable"}
!63 = distinct !{!63, !61, !62}
!64 = !{!57, !57, i64 0}
!65 = !{!66, !57, i64 0}
!66 = !{!"BVHTreeOverlap", !57, i64 0, !57, i64 4}
!67 = !{!66, !57, i64 4}
!68 = distinct !{!68, !61, !62}
!69 = distinct !{!69, !61, !62}
!70 = !{!71, !36, i64 0}
!71 = !{!"LinkBase", !36, i64 0, !57, i64 8}
!72 = !{!71, !57, i64 8}
!73 = !{!74, !36, i64 0}
!74 = !{!"LinkNode", !36, i64 0, !36, i64 8}
!75 = !{!74, !36, i64 8}
!76 = distinct !{!76, !61, !62}
!77 = distinct !{!77, !61, !62}
!78 = distinct !{!78, !61, !62}
!79 = distinct !{!79, !61, !62}
!80 = distinct !{!80, !61, !62}
!81 = distinct !{!81, !61, !62}
!82 = distinct !{!82, !61, !62}
!83 = distinct !{!83, !61, !62}
!84 = !{!56, !57, i64 8}
!85 = distinct !{!85, !61, !62}
!86 = distinct !{!86, !61, !62}
!87 = !{!88, !36, i64 8}
!88 = !{!"GHashIterator", !36, i64 0, !36, i64 8, !57, i64 16}
!89 = !{!90, !36, i64 8}
!90 = !{!"_gh_Entry", !36, i64 0, !36, i64 8, !36, i64 16}
!91 = !{!90, !36, i64 16}
!92 = !{!93, !36, i64 24}
!93 = !{!"BMEdge", !56, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !94, i64 48, !94, i64 64}
!94 = !{!"BMDiskLink", !36, i64 0, !36, i64 8}
!95 = !{!93, !36, i64 32}
!96 = distinct !{!96, !61, !62}
!97 = distinct !{!97, !61, !62}
!98 = !{!56, !37, i64 13}
!99 = distinct !{!99, !61, !62}
!100 = !{!101, !36, i64 48}
!101 = !{!"BMVert", !56, i64 0, !36, i64 16, !37, i64 24, !37, i64 36, !36, i64 48}
!102 = !{!93, !36, i64 48}
!103 = distinct !{!103, !61, !62}
!104 = distinct !{!104, !61, !62}
!105 = distinct !{!105, !61, !62}
!106 = !{!107, !37, i64 60}
!107 = !{!"BMIter", !37, i64 0, !36, i64 40, !36, i64 48, !57, i64 56, !37, i64 60}
!108 = !{!107, !36, i64 40}
!109 = !{!107, !36, i64 48}
!110 = !{!111, !36, i64 40}
!111 = !{!"BMesh", !57, i64 0, !57, i64 4, !57, i64 8, !57, i64 12, !57, i64 16, !57, i64 20, !57, i64 24, !37, i64 28, !37, i64 29, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !57, i64 88, !57, i64 92, !57, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !57, i64 128, !36, i64 136, !112, i64 144, !112, i64 344, !112, i64 544, !112, i64 744, !113, i64 944, !57, i64 948, !57, i64 952, !57, i64 956, !114, i64 960, !36, i64 976, !114, i64 984, !36, i64 1000}
!112 = !{!"CustomData", !36, i64 0, !37, i64 8, !57, i64 172, !57, i64 176, !57, i64 180, !36, i64 184, !36, i64 192}
!113 = !{!"short", !37, i64 0}
!114 = !{!"ListBase", !36, i64 0, !36, i64 8}
!115 = !{!37, !37, i64 0}
!116 = distinct !{!116, !61, !62}
!117 = !{!93, !36, i64 40}
!118 = !{!111, !36, i64 80}
!119 = !{!55, !36, i64 40}
!120 = distinct !{!120, !61, !62}
!121 = distinct !{!121, !61, !62}
!122 = distinct !{!122, !61, !62}
!123 = distinct !{!123, !61, !62}
!124 = distinct !{!124, !61, !62}
!125 = !{!126, !40, i64 0}
!126 = !{!"vert_sort_t", !40, i64 0, !36, i64 8}
!127 = !{!126, !36, i64 8}
!128 = distinct !{!128, !61, !62}
!129 = distinct !{!129, !61, !62}
!130 = distinct !{!130, !61, !62}
!131 = distinct !{!131, !61, !62}
!132 = !{!39, !40, i64 0}
!133 = !{!39, !40, i64 20}
!134 = !{!39, !40, i64 16}
!135 = distinct !{!135, !61, !62}
