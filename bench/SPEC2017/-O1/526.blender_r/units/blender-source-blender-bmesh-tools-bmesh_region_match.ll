; ModuleID = 'blender/source/blender/bmesh/tools/bmesh_region_match.c'
source_filename = "blender/source/blender/bmesh/tools/bmesh_region_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.UUIDWalk = type { %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i8, i64, %struct.anon }
%struct.ListBase = type { ptr, ptr }
%struct.anon = type { ptr, ptr, ptr, ptr, i32 }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.LinkNode = type { ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.UUIDFaceStep = type { ptr, ptr, ptr, %struct.ListBase }
%struct.UUIDFaceStepItem = type { ptr, ptr, i64, ptr, i32 }
%struct._gh_Entry = type { ptr, ptr, ptr }

@__func__.bm_face_region_pivot_edge_find = private unnamed_addr constant [31 x i8] c"bm_face_region_pivot_edge_find\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.bm_vert_fasthash_create = private unnamed_addr constant [24 x i8] c"bm_vert_fasthash_create\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@__func__.bm_uuidwalk_init = private unnamed_addr constant [17 x i8] c"bm_uuidwalk_init\00", align 1
@__func__.bm_mesh_region_match_pair = private unnamed_addr constant [26 x i8] c"bm_mesh_region_match_pair\00", align 1
@MEM_reallocN_id = external local_unnamed_addr global ptr, align 8
@__func__.bm_uuidwalk_rehash_reserve = private unnamed_addr constant [27 x i8] c"bm_uuidwalk_rehash_reserve\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @BM_mesh_region_match(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.GHashIterator, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca %struct.BMIter, align 8
  %8 = alloca %struct.BMIter, align 8
  %9 = alloca %struct.BMIter, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca %struct.BMIter, align 8
  %13 = alloca %struct.BMIter, align 8
  %14 = alloca %struct.BMIter, align 8
  %15 = alloca %struct.BMIter, align 8
  %16 = alloca %struct.UUIDWalk, align 8
  %17 = alloca %struct.UUIDWalk, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %15) #9
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %16) #9
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %17) #9
  tail call void @BM_mesh_elem_hflag_disable_all(ptr noundef %0, i8 noundef zeroext 11, i8 noundef zeroext 16, i8 noundef zeroext 0) #9
  %18 = icmp eq i32 %2, 0
  br i1 %18, label %55, label %19

19:                                               ; preds = %4
  %20 = zext i32 %2 to i64
  br label %21

21:                                               ; preds = %49, %19
  %22 = phi i64 [ 0, %19 ], [ %53, %49 ]
  %23 = phi i32 [ 0, %19 ], [ %38, %49 ]
  %24 = getelementptr inbounds ptr, ptr %1, i64 %22
  %25 = load ptr, ptr %24, align 8, !tbaa !34
  %26 = getelementptr inbounds %struct.BMFace, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !38
  br label %28

28:                                               ; preds = %28, %21
  %29 = phi ptr [ %27, %21 ], [ %47, %28 ]
  %30 = phi i32 [ %23, %21 ], [ %38, %28 ]
  %31 = getelementptr inbounds %struct.BMLoop, ptr %29, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !43
  %33 = getelementptr inbounds %struct.BMHeader, ptr %32, i64 0, i32 3
  %34 = load i8, ptr %33, align 1, !tbaa !45
  %35 = and i8 %34, 16
  %36 = icmp eq i8 %35, 0
  %37 = zext i1 %36 to i32
  %38 = add i32 %30, %37
  %39 = getelementptr inbounds %struct.BMLoop, ptr %29, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !46
  %41 = getelementptr inbounds %struct.BMHeader, ptr %40, i64 0, i32 3
  %42 = load i8, ptr %41, align 1, !tbaa !45
  %43 = or i8 %42, 16
  store i8 %43, ptr %41, align 1, !tbaa !45
  %44 = load i8, ptr %33, align 1, !tbaa !45
  %45 = or i8 %44, 16
  store i8 %45, ptr %33, align 1, !tbaa !45
  %46 = getelementptr inbounds %struct.BMLoop, ptr %29, i64 0, i32 6
  %47 = load ptr, ptr %46, align 8, !tbaa !47
  %48 = icmp eq ptr %47, %27
  br i1 %48, label %49, label %28, !llvm.loop !48

49:                                               ; preds = %28
  %50 = getelementptr inbounds %struct.BMHeader, ptr %25, i64 0, i32 3
  %51 = load i8, ptr %50, align 1, !tbaa !45
  %52 = or i8 %51, 16
  store i8 %52, ptr %50, align 1, !tbaa !45
  %53 = add nuw nsw i64 %22, 1
  %54 = icmp eq i64 %53, %20
  br i1 %54, label %55, label %21, !llvm.loop !51

55:                                               ; preds = %49, %4
  %56 = phi i32 [ 0, %4 ], [ %38, %49 ]
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %0, i8 noundef zeroext 9) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #9
  %57 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @__func__.bm_face_region_pivot_edge_find) #9
  store ptr null, ptr %10, align 8, !tbaa !34
  %58 = tail call ptr @BLI_mempool_create(i32 noundef 16, i32 noundef 0, i32 noundef 64, i32 noundef 0) #9
  store ptr null, ptr %11, align 8, !tbaa !34
  %59 = tail call ptr @BLI_mempool_create(i32 noundef 16, i32 noundef 0, i32 noundef 64, i32 noundef 0) #9
  %60 = icmp eq i32 %2, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 4
  %63 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 1
  %64 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 2
  %65 = zext i32 %2 to i64
  br label %75

66:                                               ; preds = %201, %55
  %67 = phi i32 [ 0, %55 ], [ %196, %201 ]
  %68 = phi ptr [ null, %55 ], [ %197, %201 ]
  %69 = getelementptr inbounds %struct.BMIter, ptr %12, i64 0, i32 4
  %70 = getelementptr inbounds %struct.BMIter, ptr %12, i64 0, i32 1
  %71 = getelementptr inbounds %struct.BMIter, ptr %12, i64 0, i32 2
  %72 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 4
  %73 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  %74 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  br label %204

75:                                               ; preds = %61, %201
  %76 = phi i64 [ 0, %61 ], [ %202, %201 ]
  %77 = phi ptr [ null, %61 ], [ %197, %201 ]
  %78 = phi i32 [ 0, %61 ], [ %196, %201 ]
  %79 = getelementptr inbounds ptr, ptr %1, i64 %76
  %80 = load ptr, ptr %79, align 8, !tbaa !34
  %81 = getelementptr inbounds %struct.BMFace, ptr %80, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !38
  br label %83

83:                                               ; preds = %195, %75
  %84 = phi ptr [ %82, %75 ], [ %199, %195 ]
  %85 = phi i32 [ %78, %75 ], [ %196, %195 ]
  %86 = phi ptr [ %77, %75 ], [ %197, %195 ]
  %87 = getelementptr inbounds %struct.BMLoop, ptr %84, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !46
  %89 = getelementptr inbounds %struct.BMEdge, ptr %88, i64 0, i32 4
  %90 = load ptr, ptr %89, align 8, !tbaa !52
  %91 = getelementptr inbounds %struct.BMLoop, ptr %90, i64 0, i32 4
  %92 = load ptr, ptr %91, align 8, !tbaa !55
  %93 = icmp eq ptr %92, %90
  br i1 %93, label %106, label %94

94:                                               ; preds = %83, %102
  %95 = phi ptr [ %104, %102 ], [ %90, %83 ]
  %96 = getelementptr inbounds %struct.BMLoop, ptr %95, i64 0, i32 3
  %97 = load ptr, ptr %96, align 8, !tbaa !56
  %98 = getelementptr inbounds %struct.BMHeader, ptr %97, i64 0, i32 3
  %99 = load i8, ptr %98, align 1, !tbaa !45
  %100 = and i8 %99, 16
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %94
  %103 = getelementptr inbounds %struct.BMLoop, ptr %95, i64 0, i32 4
  %104 = load ptr, ptr %103, align 8, !tbaa !55
  %105 = icmp eq ptr %104, %90
  br i1 %105, label %195, label %94, !llvm.loop !57

106:                                              ; preds = %94, %83
  %107 = getelementptr inbounds %struct.BMEdge, ptr %88, i64 0, i32 2
  br label %108

108:                                              ; preds = %106, %191
  %109 = phi i64 [ 0, %106 ], [ %193, %191 ]
  %110 = phi i32 [ %85, %106 ], [ %192, %191 ]
  %111 = getelementptr inbounds ptr, ptr %107, i64 %109
  %112 = load ptr, ptr %111, align 8, !tbaa !58
  %113 = call zeroext i8 @BLI_ghash_haskey(ptr noundef %57, ptr noundef %112) #9
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %115, label %191

115:                                              ; preds = %108
  %116 = load ptr, ptr %111, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #9
  store i8 6, ptr %62, align 4, !tbaa !59
  store ptr @bmiter__loop_of_vert_begin, ptr %63, align 8, !tbaa !61
  store ptr @bmiter__loop_of_vert_step, ptr %64, align 8, !tbaa !62
  store ptr %116, ptr %9, align 8, !tbaa !63
  call void @bmiter__loop_of_vert_begin(ptr noundef nonnull %9) #9
  %117 = load ptr, ptr %64, align 8, !tbaa !62
  %118 = call ptr %117(ptr noundef nonnull %9) #9
  %119 = icmp eq ptr %118, null
  br i1 %119, label %178, label %120

120:                                              ; preds = %115, %165
  %121 = phi i32 [ %174, %165 ], [ 0, %115 ]
  %122 = phi i64 [ %173, %165 ], [ 103, %115 ]
  %123 = phi ptr [ %176, %165 ], [ %118, %115 ]
  %124 = getelementptr inbounds %struct.BMLoop, ptr %123, i64 0, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !46
  %126 = getelementptr inbounds %struct.BMEdge, ptr %125, i64 0, i32 4
  %127 = load ptr, ptr %126, align 8, !tbaa !52
  %128 = getelementptr inbounds %struct.BMLoop, ptr %127, i64 0, i32 4
  %129 = load ptr, ptr %128, align 8, !tbaa !55
  %130 = icmp eq ptr %129, %127
  br i1 %130, label %165, label %131

131:                                              ; preds = %120, %139
  %132 = phi ptr [ %141, %139 ], [ %127, %120 ]
  %133 = getelementptr inbounds %struct.BMLoop, ptr %132, i64 0, i32 3
  %134 = load ptr, ptr %133, align 8, !tbaa !56
  %135 = getelementptr inbounds %struct.BMHeader, ptr %134, i64 0, i32 3
  %136 = load i8, ptr %135, align 1, !tbaa !45
  %137 = and i8 %136, 16
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %165, label %139

139:                                              ; preds = %131
  %140 = getelementptr inbounds %struct.BMLoop, ptr %132, i64 0, i32 4
  %141 = load ptr, ptr %140, align 8, !tbaa !55
  %142 = icmp eq ptr %141, %127
  br i1 %142, label %143, label %131, !llvm.loop !57

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.BMLoop, ptr %123, i64 0, i32 7
  %145 = load ptr, ptr %144, align 8, !tbaa !64
  %146 = getelementptr inbounds %struct.BMLoop, ptr %145, i64 0, i32 2
  %147 = load ptr, ptr %146, align 8, !tbaa !46
  %148 = getelementptr inbounds %struct.BMEdge, ptr %147, i64 0, i32 4
  %149 = load ptr, ptr %148, align 8, !tbaa !52
  %150 = getelementptr inbounds %struct.BMLoop, ptr %149, i64 0, i32 4
  %151 = load ptr, ptr %150, align 8, !tbaa !55
  %152 = icmp eq ptr %151, %149
  br i1 %152, label %165, label %153

153:                                              ; preds = %143, %161
  %154 = phi ptr [ %163, %161 ], [ %149, %143 ]
  %155 = getelementptr inbounds %struct.BMLoop, ptr %154, i64 0, i32 3
  %156 = load ptr, ptr %155, align 8, !tbaa !56
  %157 = getelementptr inbounds %struct.BMHeader, ptr %156, i64 0, i32 3
  %158 = load i8, ptr %157, align 1, !tbaa !45
  %159 = and i8 %158, 16
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %165, label %161

161:                                              ; preds = %153
  %162 = getelementptr inbounds %struct.BMLoop, ptr %154, i64 0, i32 4
  %163 = load ptr, ptr %162, align 8, !tbaa !55
  %164 = icmp eq ptr %163, %149
  br i1 %164, label %165, label %153, !llvm.loop !57

165:                                              ; preds = %131, %161, %153, %143, %120
  %166 = phi i32 [ 7, %143 ], [ 7, %120 ], [ 7, %153 ], [ 13, %161 ], [ 7, %131 ]
  %167 = getelementptr inbounds %struct.BMLoop, ptr %123, i64 0, i32 3
  %168 = load ptr, ptr %167, align 8, !tbaa !56
  %169 = getelementptr inbounds %struct.BMFace, ptr %168, i64 0, i32 3
  %170 = load i32, ptr %169, align 8, !tbaa !65
  %171 = mul nsw i32 %170, %166
  %172 = sext i32 %171 to i64
  %173 = xor i64 %122, %172
  %174 = add nuw nsw i32 %121, 1
  %175 = load ptr, ptr %64, align 8, !tbaa !62
  %176 = call ptr %175(ptr noundef nonnull %9) #9
  %177 = icmp eq ptr %176, null
  br i1 %177, label %178, label %120, !llvm.loop !66

178:                                              ; preds = %165, %115
  %179 = phi i64 [ 103, %115 ], [ %173, %165 ]
  %180 = phi i32 [ 0, %115 ], [ %174, %165 ]
  %181 = mul nsw i32 %180, 131
  %182 = zext nneg i32 %181 to i64
  %183 = xor i64 %179, %182
  %184 = icmp eq i64 %183, 0
  %185 = call i64 @llvm.abs.i64(i64 %183, i1 true)
  %186 = select i1 %184, i64 1, i64 %185
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #9
  %187 = load ptr, ptr %111, align 8, !tbaa !58
  %188 = inttoptr i64 %186 to ptr
  call void @BLI_ghash_insert(ptr noundef %57, ptr noundef %187, ptr noundef nonnull %188) #9
  %189 = load ptr, ptr %111, align 8, !tbaa !58
  call void @BLI_linklist_prepend_pool(ptr noundef nonnull %10, ptr noundef %189, ptr noundef %58) #9
  %190 = add i32 %110, 1
  br label %191

191:                                              ; preds = %178, %108
  %192 = phi i32 [ %110, %108 ], [ %190, %178 ]
  %193 = add nuw nsw i64 %109, 1
  %194 = icmp eq i64 %109, 0
  br i1 %194, label %108, label %195, !llvm.loop !67

195:                                              ; preds = %102, %191
  %196 = phi i32 [ %192, %191 ], [ %85, %102 ]
  %197 = phi ptr [ %86, %191 ], [ %88, %102 ]
  %198 = getelementptr inbounds %struct.BMLoop, ptr %84, i64 0, i32 6
  %199 = load ptr, ptr %198, align 8, !tbaa !47
  %200 = icmp eq ptr %199, %82
  br i1 %200, label %201, label %83, !llvm.loop !68

201:                                              ; preds = %195
  %202 = add nuw nsw i64 %76, 1
  %203 = icmp eq i64 %202, %65
  br i1 %203, label %66, label %75, !llvm.loop !69

204:                                              ; preds = %66, %343
  %205 = phi i32 [ %212, %343 ], [ %67, %66 ]
  %206 = phi i64 [ %346, %343 ], [ 0, %66 ]
  %207 = phi ptr [ %208, %343 ], [ %59, %66 ]
  %208 = phi ptr [ %207, %343 ], [ %58, %66 ]
  %209 = call i32 @BLI_mempool_count(ptr noundef %208) #9
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %348, label %211

211:                                              ; preds = %204, %332
  %212 = phi i32 [ %333, %332 ], [ %205, %204 ]
  %213 = load ptr, ptr %10, align 8, !tbaa !34
  %214 = icmp eq ptr %213, null
  br i1 %214, label %217, label %215

215:                                              ; preds = %211
  %216 = call ptr @BLI_linklist_pop_pool(ptr noundef nonnull %10, ptr noundef %208) #9
  br label %217

217:                                              ; preds = %215, %211
  %218 = phi ptr [ %216, %215 ], [ null, %211 ]
  %219 = icmp eq ptr %218, null
  br i1 %219, label %220, label %223

220:                                              ; preds = %217
  %221 = load ptr, ptr %11, align 8, !tbaa !34
  %222 = icmp eq ptr %221, null
  br i1 %222, label %343, label %334

223:                                              ; preds = %217
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #9
  store i8 4, ptr %69, align 4, !tbaa !59
  store ptr @bmiter__edge_of_vert_begin, ptr %70, align 8, !tbaa !61
  store ptr @bmiter__edge_of_vert_step, ptr %71, align 8, !tbaa !62
  store ptr %218, ptr %12, align 8, !tbaa !63
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %12) #9
  %224 = load ptr, ptr %71, align 8, !tbaa !62
  %225 = call ptr %224(ptr noundef nonnull %12) #9
  %226 = icmp eq ptr %225, null
  br i1 %226, label %332, label %227

227:                                              ; preds = %223, %327
  %228 = phi i32 [ %328, %327 ], [ %212, %223 ]
  %229 = phi ptr [ %330, %327 ], [ %225, %223 ]
  %230 = getelementptr inbounds %struct.BMHeader, ptr %229, i64 0, i32 3
  %231 = load i8, ptr %230, align 1, !tbaa !45
  %232 = and i8 %231, 16
  %233 = icmp eq i8 %232, 0
  br i1 %233, label %327, label %234

234:                                              ; preds = %227
  %235 = getelementptr inbounds %struct.BMEdge, ptr %229, i64 0, i32 2
  %236 = load ptr, ptr %235, align 8, !tbaa !58
  %237 = icmp eq ptr %236, %218
  %238 = getelementptr inbounds %struct.BMEdge, ptr %229, i64 0, i32 3
  %239 = load ptr, ptr %238, align 8, !tbaa !70
  %240 = icmp eq ptr %239, %218
  %241 = select i1 %240, ptr %236, ptr null
  %242 = select i1 %237, ptr %239, ptr %241
  %243 = getelementptr inbounds %struct.BMHeader, ptr %242, i64 0, i32 3
  %244 = load i8, ptr %243, align 1, !tbaa !45
  %245 = and i8 %244, 16
  %246 = icmp eq i8 %245, 0
  br i1 %246, label %327, label %247

247:                                              ; preds = %234
  %248 = call zeroext i8 @BLI_ghash_haskey(ptr noundef %57, ptr noundef %242) #9
  %249 = icmp eq i8 %248, 0
  br i1 %249, label %250, label %327

250:                                              ; preds = %247
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #9
  store i8 4, ptr %72, align 4, !tbaa !59
  store ptr @bmiter__edge_of_vert_begin, ptr %73, align 8, !tbaa !61
  store ptr @bmiter__edge_of_vert_step, ptr %74, align 8, !tbaa !62
  store ptr %242, ptr %8, align 8, !tbaa !63
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %8) #9
  %251 = load ptr, ptr %74, align 8, !tbaa !62
  %252 = call ptr %251(ptr noundef nonnull %8) #9
  %253 = icmp eq ptr %252, null
  br i1 %253, label %312, label %254

254:                                              ; preds = %250, %305
  %255 = phi ptr [ %310, %305 ], [ %252, %250 ]
  %256 = phi i64 [ %308, %305 ], [ 0, %250 ]
  %257 = phi i64 [ %307, %305 ], [ 0, %250 ]
  %258 = phi i64 [ %306, %305 ], [ 0, %250 ]
  %259 = getelementptr inbounds %struct.BMHeader, ptr %255, i64 0, i32 3
  %260 = load i8, ptr %259, align 1, !tbaa !45
  %261 = and i8 %260, 16
  %262 = icmp eq i8 %261, 0
  br i1 %262, label %305, label %263

263:                                              ; preds = %254
  %264 = getelementptr inbounds %struct.BMEdge, ptr %255, i64 0, i32 2
  %265 = load ptr, ptr %264, align 8, !tbaa !58
  %266 = icmp eq ptr %265, %242
  %267 = getelementptr inbounds %struct.BMEdge, ptr %255, i64 0, i32 3
  %268 = load ptr, ptr %267, align 8, !tbaa !70
  %269 = icmp eq ptr %268, %242
  %270 = select i1 %269, ptr %265, ptr null
  %271 = select i1 %266, ptr %268, ptr %270
  %272 = getelementptr inbounds %struct.BMHeader, ptr %271, i64 0, i32 3
  %273 = load i8, ptr %272, align 1, !tbaa !45
  %274 = and i8 %273, 16
  %275 = icmp eq i8 %274, 0
  br i1 %275, label %305, label %276

276:                                              ; preds = %263
  %277 = call ptr @BLI_ghash_lookup(ptr noundef %57, ptr noundef %271) #9
  %278 = icmp sgt ptr %277, null
  br i1 %278, label %279, label %305

279:                                              ; preds = %276
  %280 = ptrtoint ptr %277 to i64
  %281 = add nsw i64 %258, %280
  %282 = getelementptr inbounds %struct.BMEdge, ptr %255, i64 0, i32 4
  %283 = load ptr, ptr %282, align 8, !tbaa !52
  br label %284

284:                                              ; preds = %298, %279
  %285 = phi i64 [ %257, %279 ], [ %299, %298 ]
  %286 = phi ptr [ %283, %279 ], [ %301, %298 ]
  %287 = getelementptr inbounds %struct.BMLoop, ptr %286, i64 0, i32 3
  %288 = load ptr, ptr %287, align 8, !tbaa !56
  %289 = getelementptr inbounds %struct.BMHeader, ptr %288, i64 0, i32 3
  %290 = load i8, ptr %289, align 1, !tbaa !45
  %291 = and i8 %290, 16
  %292 = icmp eq i8 %291, 0
  br i1 %292, label %298, label %293

293:                                              ; preds = %284
  %294 = getelementptr inbounds %struct.BMFace, ptr %288, i64 0, i32 3
  %295 = load i32, ptr %294, align 8, !tbaa !65
  %296 = sext i32 %295 to i64
  %297 = add nsw i64 %285, %296
  br label %298

298:                                              ; preds = %293, %284
  %299 = phi i64 [ %297, %293 ], [ %285, %284 ]
  %300 = getelementptr inbounds %struct.BMLoop, ptr %286, i64 0, i32 4
  %301 = load ptr, ptr %300, align 8, !tbaa !55
  %302 = icmp eq ptr %301, %283
  br i1 %302, label %303, label %284, !llvm.loop !71

303:                                              ; preds = %298
  %304 = add nsw i64 %256, 1
  br label %305

305:                                              ; preds = %303, %276, %263, %254
  %306 = phi i64 [ %258, %254 ], [ %258, %263 ], [ %258, %276 ], [ %281, %303 ]
  %307 = phi i64 [ %257, %254 ], [ %257, %263 ], [ %257, %276 ], [ %299, %303 ]
  %308 = phi i64 [ %256, %254 ], [ %256, %263 ], [ %256, %276 ], [ %304, %303 ]
  %309 = load ptr, ptr %74, align 8, !tbaa !62
  %310 = call ptr %309(ptr noundef nonnull %8) #9
  %311 = icmp eq ptr %310, null
  br i1 %311, label %312, label %254, !llvm.loop !72

312:                                              ; preds = %305, %250
  %313 = phi i64 [ 0, %250 ], [ %306, %305 ]
  %314 = phi i64 [ 0, %250 ], [ %307, %305 ]
  %315 = phi i64 [ 0, %250 ], [ %308, %305 ]
  %316 = mul nsw i64 %315, 23
  %317 = mul nsw i64 %314, 31
  %318 = xor i64 %317, %313
  %319 = xor i64 %318, %316
  %320 = icmp eq i64 %319, 0
  %321 = call i64 @llvm.smax.i64(i64 %319, i64 -9223372036854775807)
  %322 = select i1 %320, i64 1, i64 %321
  %323 = call i64 @llvm.abs.i64(i64 %322, i1 true)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #9
  %324 = sub nsw i64 0, %323
  %325 = inttoptr i64 %324 to ptr
  call void @BLI_ghash_insert(ptr noundef %57, ptr noundef %242, ptr noundef nonnull %325) #9
  call void @BLI_linklist_prepend_pool(ptr noundef nonnull %11, ptr noundef %242, ptr noundef %207) #9
  %326 = add i32 %228, 1
  br label %327

327:                                              ; preds = %312, %247, %234, %227
  %328 = phi i32 [ %228, %227 ], [ %228, %247 ], [ %326, %312 ], [ %228, %234 ]
  %329 = load ptr, ptr %71, align 8, !tbaa !62
  %330 = call ptr %329(ptr noundef nonnull %12) #9
  %331 = icmp eq ptr %330, null
  br i1 %331, label %332, label %227, !llvm.loop !73

332:                                              ; preds = %327, %223
  %333 = phi i32 [ %212, %223 ], [ %328, %327 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #9
  br label %211, !llvm.loop !74

334:                                              ; preds = %220, %334
  %335 = phi ptr [ %341, %334 ], [ %221, %220 ]
  %336 = getelementptr inbounds %struct.LinkNode, ptr %335, i64 0, i32 1
  %337 = load ptr, ptr %336, align 8, !tbaa !75
  %338 = call ptr @BLI_ghash_lookup_p(ptr noundef %57, ptr noundef %337) #9
  %339 = load i64, ptr %338, align 8, !tbaa !77
  %340 = sub nsw i64 0, %339
  store i64 %340, ptr %338, align 8, !tbaa !77
  %341 = load ptr, ptr %335, align 8, !tbaa !34
  %342 = icmp eq ptr %341, null
  br i1 %342, label %343, label %334, !llvm.loop !79

343:                                              ; preds = %334, %220
  %344 = load ptr, ptr %10, align 8, !tbaa !34
  %345 = load ptr, ptr %11, align 8, !tbaa !34
  store ptr %345, ptr %10, align 8, !tbaa !34
  store ptr %344, ptr %11, align 8, !tbaa !34
  %346 = add nuw nsw i64 %206, 1
  %347 = icmp eq i32 %212, %56
  br i1 %347, label %348, label %204

348:                                              ; preds = %343, %204
  %349 = phi i64 [ %346, %343 ], [ %206, %204 ]
  %350 = phi ptr [ %208, %343 ], [ %207, %204 ]
  %351 = phi ptr [ %207, %343 ], [ %208, %204 ]
  %352 = call i32 @BLI_mempool_count(ptr noundef %351) #9
  %353 = icmp sgt i32 %352, 1
  br i1 %353, label %354, label %440

354:                                              ; preds = %348
  %355 = load ptr, ptr %10, align 8, !tbaa !34
  %356 = icmp eq ptr %355, null
  br i1 %356, label %357, label %364

357:                                              ; preds = %364, %354
  %358 = load ptr, ptr %10, align 8, !tbaa !34
  %359 = icmp eq ptr %358, null
  br i1 %359, label %440, label %360

360:                                              ; preds = %357
  %361 = getelementptr inbounds %struct.BMIter, ptr %13, i64 0, i32 4
  %362 = getelementptr inbounds %struct.BMIter, ptr %13, i64 0, i32 1
  %363 = getelementptr inbounds %struct.BMIter, ptr %13, i64 0, i32 2
  br label %373

364:                                              ; preds = %354, %364
  %365 = phi ptr [ %371, %364 ], [ %355, %354 ]
  %366 = getelementptr inbounds %struct.LinkNode, ptr %365, i64 0, i32 1
  %367 = load ptr, ptr %366, align 8, !tbaa !75
  %368 = getelementptr inbounds %struct.BMHeader, ptr %367, i64 0, i32 3
  %369 = load i8, ptr %368, align 1, !tbaa !45
  %370 = and i8 %369, -17
  store i8 %370, ptr %368, align 1, !tbaa !45
  %371 = load ptr, ptr %365, align 8, !tbaa !34
  %372 = icmp eq ptr %371, null
  br i1 %372, label %357, label %364, !llvm.loop !80

373:                                              ; preds = %360, %434
  %374 = phi ptr [ %358, %360 ], [ %438, %434 ]
  %375 = phi i64 [ 0, %360 ], [ %437, %434 ]
  %376 = phi i64 [ 0, %360 ], [ %436, %434 ]
  %377 = phi ptr [ null, %360 ], [ %435, %434 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %13) #9
  %378 = getelementptr inbounds %struct.LinkNode, ptr %374, i64 0, i32 1
  %379 = load ptr, ptr %378, align 8, !tbaa !75
  %380 = getelementptr inbounds %struct.BMHeader, ptr %379, i64 0, i32 3
  %381 = load i8, ptr %380, align 1, !tbaa !45
  %382 = or i8 %381, 16
  store i8 %382, ptr %380, align 1, !tbaa !45
  store i8 4, ptr %361, align 4, !tbaa !59
  store ptr @bmiter__edge_of_vert_begin, ptr %362, align 8, !tbaa !61
  store ptr @bmiter__edge_of_vert_step, ptr %363, align 8, !tbaa !62
  store ptr %379, ptr %13, align 8, !tbaa !63
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %13) #9
  %383 = load ptr, ptr %363, align 8, !tbaa !62
  %384 = call ptr %383(ptr noundef nonnull %13) #9
  %385 = icmp eq ptr %384, null
  br i1 %385, label %434, label %386

386:                                              ; preds = %373, %427
  %387 = phi ptr [ %432, %427 ], [ %384, %373 ]
  %388 = phi i64 [ %430, %427 ], [ %375, %373 ]
  %389 = phi i64 [ %429, %427 ], [ %376, %373 ]
  %390 = phi ptr [ %428, %427 ], [ %377, %373 ]
  %391 = getelementptr inbounds %struct.BMHeader, ptr %387, i64 0, i32 3
  %392 = load i8, ptr %391, align 1, !tbaa !45
  %393 = and i8 %392, 16
  %394 = icmp eq i8 %393, 0
  br i1 %394, label %427, label %395

395:                                              ; preds = %386
  %396 = getelementptr inbounds %struct.BMEdge, ptr %387, i64 0, i32 2
  %397 = load ptr, ptr %396, align 8, !tbaa !58
  %398 = icmp eq ptr %397, %379
  %399 = getelementptr inbounds %struct.BMEdge, ptr %387, i64 0, i32 3
  %400 = load ptr, ptr %399, align 8, !tbaa !70
  %401 = icmp eq ptr %400, %379
  %402 = select i1 %401, ptr %397, ptr null
  %403 = select i1 %398, ptr %400, ptr %402
  %404 = getelementptr inbounds %struct.BMHeader, ptr %403, i64 0, i32 3
  %405 = load i8, ptr %404, align 1, !tbaa !45
  %406 = and i8 %405, 16
  %407 = icmp eq i8 %406, 0
  br i1 %407, label %408, label %427

408:                                              ; preds = %395
  %409 = call ptr @BLI_ghash_lookup(ptr noundef %57, ptr noundef %397) #9
  %410 = getelementptr inbounds %struct.BMEdge, ptr %387, i64 0, i32 3
  %411 = load ptr, ptr %410, align 8, !tbaa !70
  %412 = call ptr @BLI_ghash_lookup(ptr noundef %57, ptr noundef %411) #9
  %413 = icmp sgt ptr %409, %412
  %414 = icmp slt ptr %409, %412
  %415 = select i1 %414, ptr %409, ptr %412
  %416 = ptrtoint ptr %415 to i64
  %417 = select i1 %413, ptr %409, ptr %412
  %418 = ptrtoint ptr %417 to i64
  %419 = icmp eq ptr %390, null
  br i1 %419, label %426, label %420

420:                                              ; preds = %408
  %421 = icmp eq i64 %389, %416
  br i1 %421, label %424, label %422

422:                                              ; preds = %420
  %423 = icmp slt i64 %389, %416
  br i1 %423, label %426, label %427

424:                                              ; preds = %420
  %425 = icmp slt i64 %388, %418
  br i1 %425, label %426, label %427

426:                                              ; preds = %424, %422, %408
  br label %427

427:                                              ; preds = %426, %424, %422, %395, %386
  %428 = phi ptr [ %390, %386 ], [ %390, %395 ], [ %387, %426 ], [ %390, %424 ], [ %390, %422 ]
  %429 = phi i64 [ %389, %386 ], [ %389, %395 ], [ %416, %426 ], [ %389, %424 ], [ %389, %422 ]
  %430 = phi i64 [ %388, %386 ], [ %388, %395 ], [ %418, %426 ], [ %388, %424 ], [ %388, %422 ]
  %431 = load ptr, ptr %363, align 8, !tbaa !62
  %432 = call ptr %431(ptr noundef nonnull %13) #9
  %433 = icmp eq ptr %432, null
  br i1 %433, label %434, label %386, !llvm.loop !81

434:                                              ; preds = %427, %373
  %435 = phi ptr [ %377, %373 ], [ %428, %427 ]
  %436 = phi i64 [ %376, %373 ], [ %429, %427 ]
  %437 = phi i64 [ %375, %373 ], [ %430, %427 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #9
  %438 = load ptr, ptr %374, align 8, !tbaa !34
  %439 = icmp eq ptr %438, null
  br i1 %439, label %440, label %373, !llvm.loop !82

440:                                              ; preds = %434, %357, %348
  %441 = phi ptr [ null, %348 ], [ null, %357 ], [ %435, %434 ]
  %442 = icmp eq ptr %441, null
  br i1 %442, label %443, label %518

443:                                              ; preds = %440
  %444 = call i32 @BLI_mempool_count(ptr noundef %351) #9
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %518, label %446

446:                                              ; preds = %443
  %447 = add nsw i64 %349, -1
  %448 = load ptr, ptr %10, align 8, !tbaa !34
  %449 = icmp eq ptr %448, null
  br i1 %449, label %518, label %450

450:                                              ; preds = %446
  %451 = getelementptr inbounds %struct.BMIter, ptr %14, i64 0, i32 4
  %452 = getelementptr inbounds %struct.BMIter, ptr %14, i64 0, i32 1
  %453 = getelementptr inbounds %struct.BMIter, ptr %14, i64 0, i32 2
  br label %454

454:                                              ; preds = %450, %512
  %455 = phi ptr [ %448, %450 ], [ %516, %512 ]
  %456 = phi i64 [ 0, %450 ], [ %515, %512 ]
  %457 = phi i64 [ 0, %450 ], [ %514, %512 ]
  %458 = phi ptr [ null, %450 ], [ %513, %512 ]
  %459 = getelementptr inbounds %struct.LinkNode, ptr %455, i64 0, i32 1
  %460 = load ptr, ptr %459, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %14) #9
  store i8 4, ptr %451, align 4, !tbaa !59
  store ptr @bmiter__edge_of_vert_begin, ptr %452, align 8, !tbaa !61
  store ptr @bmiter__edge_of_vert_step, ptr %453, align 8, !tbaa !62
  store ptr %460, ptr %14, align 8, !tbaa !63
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %14) #9
  %461 = load ptr, ptr %453, align 8, !tbaa !62
  %462 = call ptr %461(ptr noundef nonnull %14) #9
  %463 = icmp eq ptr %462, null
  br i1 %463, label %512, label %464

464:                                              ; preds = %454, %505
  %465 = phi ptr [ %510, %505 ], [ %462, %454 ]
  %466 = phi i64 [ %508, %505 ], [ %456, %454 ]
  %467 = phi i64 [ %507, %505 ], [ %457, %454 ]
  %468 = phi ptr [ %506, %505 ], [ %458, %454 ]
  %469 = getelementptr inbounds %struct.BMHeader, ptr %465, i64 0, i32 3
  %470 = load i8, ptr %469, align 1, !tbaa !45
  %471 = and i8 %470, 16
  %472 = icmp eq i8 %471, 0
  br i1 %472, label %505, label %473

473:                                              ; preds = %464
  %474 = getelementptr inbounds %struct.BMEdge, ptr %465, i64 0, i32 2
  %475 = load ptr, ptr %474, align 8, !tbaa !58
  %476 = icmp eq ptr %475, %460
  %477 = getelementptr inbounds %struct.BMEdge, ptr %465, i64 0, i32 3
  %478 = load ptr, ptr %477, align 8, !tbaa !70
  %479 = icmp eq ptr %478, %460
  %480 = select i1 %479, ptr %475, ptr null
  %481 = select i1 %476, ptr %478, ptr %480
  %482 = getelementptr inbounds %struct.BMHeader, ptr %481, i64 0, i32 3
  %483 = load i8, ptr %482, align 1, !tbaa !45
  %484 = and i8 %483, 16
  %485 = icmp eq i8 %484, 0
  br i1 %485, label %505, label %486

486:                                              ; preds = %473
  %487 = call ptr @BLI_ghash_lookup(ptr noundef %57, ptr noundef %475) #9
  %488 = getelementptr inbounds %struct.BMEdge, ptr %465, i64 0, i32 3
  %489 = load ptr, ptr %488, align 8, !tbaa !70
  %490 = call ptr @BLI_ghash_lookup(ptr noundef %57, ptr noundef %489) #9
  %491 = icmp sgt ptr %487, %490
  %492 = icmp slt ptr %487, %490
  %493 = select i1 %492, ptr %487, ptr %490
  %494 = ptrtoint ptr %493 to i64
  %495 = select i1 %491, ptr %487, ptr %490
  %496 = ptrtoint ptr %495 to i64
  %497 = icmp eq ptr %468, null
  br i1 %497, label %504, label %498

498:                                              ; preds = %486
  %499 = icmp eq i64 %467, %494
  br i1 %499, label %502, label %500

500:                                              ; preds = %498
  %501 = icmp slt i64 %467, %494
  br i1 %501, label %504, label %505

502:                                              ; preds = %498
  %503 = icmp slt i64 %466, %496
  br i1 %503, label %504, label %505

504:                                              ; preds = %502, %500, %486
  br label %505

505:                                              ; preds = %504, %502, %500, %473, %464
  %506 = phi ptr [ %468, %464 ], [ %468, %473 ], [ %465, %504 ], [ %468, %502 ], [ %468, %500 ]
  %507 = phi i64 [ %467, %464 ], [ %467, %473 ], [ %494, %504 ], [ %467, %502 ], [ %467, %500 ]
  %508 = phi i64 [ %466, %464 ], [ %466, %473 ], [ %496, %504 ], [ %466, %502 ], [ %466, %500 ]
  %509 = load ptr, ptr %453, align 8, !tbaa !62
  %510 = call ptr %509(ptr noundef nonnull %14) #9
  %511 = icmp eq ptr %510, null
  br i1 %511, label %512, label %464, !llvm.loop !83

512:                                              ; preds = %505, %454
  %513 = phi ptr [ %458, %454 ], [ %506, %505 ]
  %514 = phi i64 [ %457, %454 ], [ %507, %505 ]
  %515 = phi i64 [ %456, %454 ], [ %508, %505 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %14) #9
  %516 = load ptr, ptr %455, align 8, !tbaa !34
  %517 = icmp eq ptr %516, null
  br i1 %517, label %518, label %454, !llvm.loop !84

518:                                              ; preds = %512, %446, %440, %443
  %519 = phi i64 [ %349, %443 ], [ %349, %440 ], [ %447, %446 ], [ %447, %512 ]
  %520 = phi ptr [ null, %443 ], [ %441, %440 ], [ null, %446 ], [ %513, %512 ]
  call void @BLI_mempool_destroy(ptr noundef %351) #9
  store ptr null, ptr %10, align 8, !tbaa !34
  call void @BLI_mempool_destroy(ptr noundef %350) #9
  store ptr null, ptr %11, align 8, !tbaa !34
  call void @BLI_ghash_free(ptr noundef %57, ptr noundef null, ptr noundef null) #9
  %521 = icmp eq ptr %520, null
  %522 = trunc i64 %519 to i32
  %523 = select i1 %521, ptr %68, ptr %520
  %524 = select i1 %521, i32 0, i32 %522
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  %525 = icmp eq ptr %523, null
  br i1 %525, label %972, label %526

526:                                              ; preds = %518
  %527 = icmp eq i32 %524, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  br i1 %527, label %649, label %528

528:                                              ; preds = %526
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #9
  %529 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %530 = load i32, ptr %0, align 8, !tbaa !85
  %531 = zext i32 %530 to i64
  %532 = shl nuw nsw i64 %531, 3
  %533 = call ptr %529(i64 noundef %532, ptr noundef nonnull @__func__.bm_vert_fasthash_create) #9
  %534 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %535 = load i32, ptr %0, align 8, !tbaa !85
  %536 = zext i32 %535 to i64
  %537 = shl nuw nsw i64 %536, 3
  %538 = call ptr %534(i64 noundef %537, ptr noundef nonnull @__func__.bm_vert_fasthash_create) #9
  %539 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 4
  store i8 1, ptr %539, align 4, !tbaa !59
  %540 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %540, align 8, !tbaa !61
  %541 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %541, align 8, !tbaa !62
  %542 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %543 = load ptr, ptr %542, align 8, !tbaa !89
  store ptr %543, ptr %7, align 8, !tbaa !63
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %7) #9
  %544 = load ptr, ptr %541, align 8, !tbaa !62
  %545 = call ptr %544(ptr noundef nonnull %7) #9
  %546 = icmp eq ptr %545, null
  br i1 %546, label %551, label %547

547:                                              ; preds = %528
  %548 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  %549 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  %550 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  br label %554

551:                                              ; preds = %591, %528
  %552 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %553 = call i32 @llvm.umax.i32(i32 %524, i32 1)
  br label %605

554:                                              ; preds = %547, %591
  %555 = phi i32 [ 0, %547 ], [ %603, %591 ]
  %556 = phi ptr [ %545, %547 ], [ %602, %591 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #9
  store i8 4, ptr %548, align 4, !tbaa !59
  store ptr @bmiter__edge_of_vert_begin, ptr %549, align 8, !tbaa !61
  store ptr @bmiter__edge_of_vert_step, ptr %550, align 8, !tbaa !62
  store ptr %556, ptr %6, align 8, !tbaa !63
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %6) #9
  %557 = load ptr, ptr %550, align 8, !tbaa !62
  %558 = call ptr %557(ptr noundef nonnull %6) #9
  %559 = icmp eq ptr %558, null
  br i1 %559, label %591, label %560

560:                                              ; preds = %554, %584
  %561 = phi i64 [ %587, %584 ], [ 0, %554 ]
  %562 = phi i64 [ %586, %584 ], [ 0, %554 ]
  %563 = phi i64 [ %585, %584 ], [ 0, %554 ]
  %564 = phi ptr [ %589, %584 ], [ %558, %554 ]
  %565 = getelementptr inbounds %struct.BMEdge, ptr %564, i64 0, i32 4
  %566 = load ptr, ptr %565, align 8, !tbaa !52
  %567 = icmp eq ptr %566, null
  br i1 %567, label %584, label %568

568:                                              ; preds = %560, %568
  %569 = phi i64 [ %572, %568 ], [ %562, %560 ]
  %570 = phi i64 [ %578, %568 ], [ %561, %560 ]
  %571 = phi ptr [ %580, %568 ], [ %566, %560 ]
  %572 = add i64 %569, 1
  %573 = getelementptr inbounds %struct.BMLoop, ptr %571, i64 0, i32 3
  %574 = load ptr, ptr %573, align 8, !tbaa !56
  %575 = getelementptr inbounds %struct.BMFace, ptr %574, i64 0, i32 3
  %576 = load i32, ptr %575, align 8, !tbaa !65
  %577 = zext i32 %576 to i64
  %578 = add i64 %570, %577
  %579 = getelementptr inbounds %struct.BMLoop, ptr %571, i64 0, i32 4
  %580 = load ptr, ptr %579, align 8, !tbaa !55
  %581 = icmp eq ptr %580, %566
  br i1 %581, label %582, label %568, !llvm.loop !90

582:                                              ; preds = %568
  %583 = add i64 %563, 1
  br label %584

584:                                              ; preds = %582, %560
  %585 = phi i64 [ %563, %560 ], [ %583, %582 ]
  %586 = phi i64 [ %562, %560 ], [ %572, %582 ]
  %587 = phi i64 [ %561, %560 ], [ %578, %582 ]
  %588 = load ptr, ptr %550, align 8, !tbaa !62
  %589 = call ptr %588(ptr noundef nonnull %6) #9
  %590 = icmp eq ptr %589, null
  br i1 %590, label %591, label %560, !llvm.loop !91

591:                                              ; preds = %584, %554
  %592 = phi i64 [ 0, %554 ], [ %585, %584 ]
  %593 = phi i64 [ 0, %554 ], [ %586, %584 ]
  %594 = phi i64 [ 0, %554 ], [ %587, %584 ]
  %595 = mul i64 %592, 7
  %596 = mul i64 %593, 1891
  %597 = mul i64 %596, %594
  %598 = xor i64 %597, %595
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #9
  %599 = zext i32 %555 to i64
  %600 = getelementptr inbounds i64, ptr %533, i64 %599
  store i64 %598, ptr %600, align 8, !tbaa !77
  %601 = load ptr, ptr %541, align 8, !tbaa !62
  %602 = call ptr %601(ptr noundef nonnull %7) #9
  %603 = add i32 %555, 1
  %604 = icmp eq ptr %602, null
  br i1 %604, label %551, label %554, !llvm.loop !92

605:                                              ; preds = %551, %644
  %606 = phi i32 [ 0, %551 ], [ %645, %644 ]
  %607 = load i32, ptr %0, align 8, !tbaa !85
  %608 = zext i32 %607 to i64
  %609 = shl nuw nsw i64 %608, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %538, ptr align 8 %533, i64 %609, i1 false)
  store i8 2, ptr %539, align 4, !tbaa !59
  store ptr @bmiter__elem_of_mesh_begin, ptr %540, align 8, !tbaa !61
  store ptr @bmiter__elem_of_mesh_step, ptr %541, align 8, !tbaa !62
  %610 = load ptr, ptr %552, align 8, !tbaa !93
  store ptr %610, ptr %7, align 8, !tbaa !63
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %7) #9
  %611 = load ptr, ptr %541, align 8, !tbaa !62
  %612 = call ptr %611(ptr noundef nonnull %7) #9
  %613 = icmp eq ptr %612, null
  br i1 %613, label %644, label %614

614:                                              ; preds = %605, %640
  %615 = phi ptr [ %642, %640 ], [ %612, %605 ]
  %616 = getelementptr inbounds %struct.BMEdge, ptr %615, i64 0, i32 4
  %617 = load ptr, ptr %616, align 8, !tbaa !52
  %618 = icmp eq ptr %617, null
  br i1 %618, label %640, label %619

619:                                              ; preds = %614
  %620 = getelementptr inbounds %struct.BMEdge, ptr %615, i64 0, i32 2
  %621 = load ptr, ptr %620, align 8, !tbaa !58
  %622 = getelementptr inbounds %struct.BMHeader, ptr %621, i64 0, i32 1
  %623 = load i32, ptr %622, align 8, !tbaa !94
  %624 = getelementptr inbounds %struct.BMEdge, ptr %615, i64 0, i32 3
  %625 = load ptr, ptr %624, align 8, !tbaa !70
  %626 = getelementptr inbounds %struct.BMHeader, ptr %625, i64 0, i32 1
  %627 = load i32, ptr %626, align 8, !tbaa !94
  %628 = sext i32 %627 to i64
  %629 = getelementptr inbounds i64, ptr %533, i64 %628
  %630 = load i64, ptr %629, align 8, !tbaa !77
  %631 = sext i32 %623 to i64
  %632 = getelementptr inbounds i64, ptr %538, i64 %631
  %633 = load i64, ptr %632, align 8, !tbaa !77
  %634 = add i64 %633, %630
  store i64 %634, ptr %632, align 8, !tbaa !77
  %635 = getelementptr inbounds i64, ptr %533, i64 %631
  %636 = load i64, ptr %635, align 8, !tbaa !77
  %637 = getelementptr inbounds i64, ptr %538, i64 %628
  %638 = load i64, ptr %637, align 8, !tbaa !77
  %639 = add i64 %638, %636
  store i64 %639, ptr %637, align 8, !tbaa !77
  br label %640

640:                                              ; preds = %619, %614
  %641 = load ptr, ptr %541, align 8, !tbaa !62
  %642 = call ptr %641(ptr noundef nonnull %7) #9
  %643 = icmp eq ptr %642, null
  br i1 %643, label %644, label %614, !llvm.loop !95

644:                                              ; preds = %640, %605
  %645 = add nuw i32 %606, 1
  %646 = icmp eq i32 %645, %553
  br i1 %646, label %647, label %605, !llvm.loop !96

647:                                              ; preds = %644
  %648 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %648(ptr noundef %533) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #9
  br label %649

649:                                              ; preds = %526, %647
  %650 = phi ptr [ %538, %647 ], [ null, %526 ]
  call fastcc void @bm_uuidwalk_init(ptr noundef nonnull %16, i32 noundef %2, i32 noundef %56)
  call fastcc void @bm_uuidwalk_init(ptr noundef nonnull %17, i32 noundef %2, i32 noundef %56)
  %651 = getelementptr inbounds %struct.BMIter, ptr %15, i64 0, i32 4
  store i8 2, ptr %651, align 4, !tbaa !59
  %652 = getelementptr inbounds %struct.BMIter, ptr %15, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %652, align 8, !tbaa !61
  %653 = getelementptr inbounds %struct.BMIter, ptr %15, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %653, align 8, !tbaa !62
  %654 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %655 = load ptr, ptr %654, align 8, !tbaa !93
  store ptr %655, ptr %15, align 8, !tbaa !63
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %15) #9
  %656 = load ptr, ptr %653, align 8, !tbaa !62
  %657 = call ptr %656(ptr noundef nonnull %15) #9
  %658 = icmp eq ptr %657, null
  br i1 %658, label %967, label %659

659:                                              ; preds = %649
  %660 = icmp eq ptr %650, null
  %661 = getelementptr inbounds %struct.BMEdge, ptr %523, i64 0, i32 2
  %662 = getelementptr inbounds %struct.BMEdge, ptr %523, i64 0, i32 3
  %663 = getelementptr inbounds %struct.UUIDWalk, ptr %16, i64 0, i32 7
  %664 = call i32 @llvm.umax.i32(i32 %2, i32 %56)
  %665 = getelementptr inbounds %struct.UUIDWalk, ptr %16, i64 0, i32 9, i32 4
  %666 = shl i32 %664, 1
  %667 = getelementptr inbounds %struct.UUIDWalk, ptr %16, i64 0, i32 9, i32 3
  %668 = zext i32 %666 to i64
  %669 = shl nuw nsw i64 %668, 3
  %670 = getelementptr inbounds %struct.UUIDWalk, ptr %17, i64 0, i32 9, i32 4
  %671 = shl i32 %664, 1
  %672 = getelementptr inbounds %struct.UUIDWalk, ptr %17, i64 0, i32 9, i32 3
  %673 = zext i32 %671 to i64
  %674 = shl nuw nsw i64 %673, 3
  %675 = getelementptr inbounds %struct.UUIDWalk, ptr %16, i64 0, i32 5
  %676 = getelementptr inbounds %struct.UUIDWalk, ptr %17, i64 0, i32 3
  %677 = getelementptr inbounds %struct.UUIDWalk, ptr %17, i64 0, i32 5
  %678 = getelementptr inbounds %struct.UUIDWalk, ptr %16, i64 0, i32 3
  %679 = getelementptr inbounds %struct.UUIDWalk, ptr %17, i64 0, i32 3
  %680 = getelementptr inbounds %struct.UUIDWalk, ptr %16, i64 0, i32 6
  %681 = getelementptr inbounds %struct.UUIDWalk, ptr %17, i64 0, i32 6
  %682 = getelementptr inbounds %struct.UUIDWalk, ptr %17, i64 0, i32 2
  %683 = getelementptr inbounds %struct.UUIDWalk, ptr %17, i64 0, i32 2
  %684 = getelementptr inbounds %struct.GHashIterator, ptr %5, i64 0, i32 1
  %685 = getelementptr inbounds %struct.UUIDWalk, ptr %16, i64 0, i32 1
  %686 = getelementptr inbounds %struct.UUIDWalk, ptr %16, i64 0, i32 2
  %687 = getelementptr inbounds %struct.UUIDWalk, ptr %16, i64 0, i32 9
  %688 = getelementptr inbounds %struct.UUIDWalk, ptr %16, i64 0, i32 9, i32 1
  %689 = getelementptr inbounds %struct.UUIDWalk, ptr %16, i64 0, i32 9, i32 2
  %690 = getelementptr inbounds %struct.UUIDWalk, ptr %16, i64 0, i32 3
  %691 = getelementptr inbounds %struct.UUIDWalk, ptr %16, i64 0, i32 5
  %692 = getelementptr inbounds %struct.UUIDWalk, ptr %16, i64 0, i32 6
  %693 = getelementptr inbounds %struct.UUIDWalk, ptr %16, i64 0, i32 8
  %694 = getelementptr inbounds %struct.UUIDWalk, ptr %17, i64 0, i32 1
  %695 = getelementptr inbounds %struct.UUIDWalk, ptr %17, i64 0, i32 2
  %696 = getelementptr inbounds %struct.UUIDWalk, ptr %17, i64 0, i32 9
  %697 = getelementptr inbounds %struct.UUIDWalk, ptr %17, i64 0, i32 9, i32 1
  %698 = getelementptr inbounds %struct.UUIDWalk, ptr %17, i64 0, i32 9, i32 2
  %699 = getelementptr inbounds %struct.UUIDWalk, ptr %17, i64 0, i32 7
  %700 = getelementptr inbounds %struct.UUIDWalk, ptr %17, i64 0, i32 3
  %701 = getelementptr inbounds %struct.UUIDWalk, ptr %17, i64 0, i32 5
  %702 = getelementptr inbounds %struct.UUIDWalk, ptr %17, i64 0, i32 6
  %703 = getelementptr inbounds %struct.UUIDWalk, ptr %17, i64 0, i32 8
  br label %704

704:                                              ; preds = %659, %961
  %705 = phi ptr [ %657, %659 ], [ %965, %961 ]
  %706 = phi i32 [ 0, %659 ], [ %963, %961 ]
  %707 = phi i32 [ undef, %659 ], [ %962, %961 ]
  %708 = getelementptr inbounds %struct.BMHeader, ptr %705, i64 0, i32 3
  %709 = load i8, ptr %708, align 1, !tbaa !45
  %710 = and i8 %709, 16
  %711 = icmp eq i8 %710, 0
  br i1 %711, label %712, label %961

712:                                              ; preds = %704
  br i1 %660, label %747, label %713

713:                                              ; preds = %712
  %714 = load ptr, ptr %661, align 8, !tbaa !58
  %715 = getelementptr inbounds %struct.BMHeader, ptr %714, i64 0, i32 1
  %716 = load i32, ptr %715, align 8, !tbaa !94
  %717 = sext i32 %716 to i64
  %718 = getelementptr inbounds i64, ptr %650, i64 %717
  %719 = load i64, ptr %718, align 8, !tbaa !77
  %720 = load ptr, ptr %662, align 8, !tbaa !70
  %721 = getelementptr inbounds %struct.BMHeader, ptr %720, i64 0, i32 1
  %722 = load i32, ptr %721, align 8, !tbaa !94
  %723 = sext i32 %722 to i64
  %724 = getelementptr inbounds i64, ptr %650, i64 %723
  %725 = load i64, ptr %724, align 8, !tbaa !77
  %726 = call i64 @llvm.umax.i64(i64 %719, i64 %725)
  %727 = call i64 @llvm.umin.i64(i64 %719, i64 %725)
  %728 = getelementptr inbounds %struct.BMEdge, ptr %705, i64 0, i32 2
  %729 = load ptr, ptr %728, align 8, !tbaa !58
  %730 = getelementptr inbounds %struct.BMHeader, ptr %729, i64 0, i32 1
  %731 = load i32, ptr %730, align 8, !tbaa !94
  %732 = sext i32 %731 to i64
  %733 = getelementptr inbounds i64, ptr %650, i64 %732
  %734 = load i64, ptr %733, align 8, !tbaa !77
  %735 = getelementptr inbounds %struct.BMEdge, ptr %705, i64 0, i32 3
  %736 = load ptr, ptr %735, align 8, !tbaa !70
  %737 = getelementptr inbounds %struct.BMHeader, ptr %736, i64 0, i32 1
  %738 = load i32, ptr %737, align 8, !tbaa !94
  %739 = sext i32 %738 to i64
  %740 = getelementptr inbounds i64, ptr %650, i64 %739
  %741 = load i64, ptr %740, align 8, !tbaa !77
  %742 = call i64 @llvm.umax.i64(i64 %734, i64 %741)
  %743 = call i64 @llvm.umin.i64(i64 %734, i64 %741)
  %744 = icmp ne i64 %727, %743
  %745 = icmp ne i64 %726, %742
  %746 = select i1 %744, i1 true, i1 %745
  br i1 %746, label %961, label %747

747:                                              ; preds = %713, %712
  store i8 1, ptr %663, align 8, !tbaa !97
  %748 = call fastcc i32 @bm_uuidwalk_init_from_edge(ptr noundef nonnull %16, ptr noundef nonnull %523)
  %749 = call fastcc i32 @bm_uuidwalk_init_from_edge(ptr noundef nonnull %17, ptr noundef nonnull %705)
  %750 = icmp eq i32 %748, %749
  br i1 %750, label %751, label %910

751:                                              ; preds = %747
  %752 = load i32, ptr %665, align 8, !tbaa !100
  %753 = icmp ult i32 %752, %664
  br i1 %753, label %754, label %758

754:                                              ; preds = %751
  %755 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !34
  %756 = load ptr, ptr %667, align 8, !tbaa !101
  %757 = call ptr %755(ptr noundef %756, i64 noundef %669, ptr noundef nonnull @__func__.bm_uuidwalk_rehash_reserve) #9
  store ptr %757, ptr %667, align 8, !tbaa !101
  store i32 %666, ptr %665, align 8, !tbaa !100
  br label %758

758:                                              ; preds = %754, %751
  %759 = load i32, ptr %670, align 8, !tbaa !100
  %760 = icmp ult i32 %759, %664
  br i1 %760, label %761, label %765

761:                                              ; preds = %758
  %762 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !34
  %763 = load ptr, ptr %672, align 8, !tbaa !101
  %764 = call ptr %762(ptr noundef %763, i64 noundef %674, ptr noundef nonnull @__func__.bm_uuidwalk_rehash_reserve) #9
  store ptr %764, ptr %672, align 8, !tbaa !101
  store i32 %671, ptr %670, align 8, !tbaa !100
  br label %765

765:                                              ; preds = %761, %758
  br label %766

766:                                              ; preds = %765, %881
  %767 = phi i8 [ %883, %881 ], [ 0, %765 ]
  %768 = load ptr, ptr %16, align 8, !tbaa !102
  %769 = icmp eq ptr %768, null
  br i1 %769, label %873, label %770

770:                                              ; preds = %766, %870
  %771 = phi i8 [ %852, %870 ], [ 0, %766 ]
  %772 = phi ptr [ %871, %870 ], [ %768, %766 ]
  %773 = phi ptr [ %777, %870 ], [ %17, %766 ]
  %774 = load ptr, ptr %773, align 8, !tbaa !34
  br label %775

775:                                              ; preds = %770, %793
  %776 = phi ptr [ %772, %770 ], [ %782, %793 ]
  %777 = phi ptr [ %774, %770 ], [ %783, %793 ]
  %778 = getelementptr inbounds %struct.UUIDFaceStep, ptr %776, i64 0, i32 2
  %779 = load ptr, ptr %778, align 8, !tbaa !103
  %780 = icmp eq ptr %779, null
  br i1 %780, label %781, label %796

781:                                              ; preds = %775
  %782 = load ptr, ptr %776, align 8, !tbaa !105
  %783 = load ptr, ptr %777, align 8, !tbaa !105
  call void @BLI_remlink(ptr noundef nonnull %16, ptr noundef nonnull %776) #9
  %784 = load ptr, ptr %675, align 8, !tbaa !106
  call void @BLI_mempool_free(ptr noundef %784, ptr noundef nonnull %776) #9
  %785 = getelementptr inbounds %struct.UUIDFaceStep, ptr %777, i64 0, i32 2
  %786 = load ptr, ptr %785, align 8, !tbaa !103
  %787 = icmp eq ptr %786, null
  br i1 %787, label %793, label %788

788:                                              ; preds = %781, %788
  %789 = phi ptr [ %790, %788 ], [ %786, %781 ]
  %790 = load ptr, ptr %789, align 8, !tbaa !107
  %791 = load ptr, ptr %676, align 8, !tbaa !108
  call void @BLI_mempool_free(ptr noundef %791, ptr noundef nonnull %789) #9
  %792 = icmp eq ptr %790, null
  br i1 %792, label %793, label %788, !llvm.loop !109

793:                                              ; preds = %788, %781
  call void @BLI_remlink(ptr noundef nonnull %17, ptr noundef nonnull %777) #9
  %794 = load ptr, ptr %677, align 8, !tbaa !106
  call void @BLI_mempool_free(ptr noundef %794, ptr noundef nonnull %777) #9
  %795 = icmp eq ptr %782, null
  br i1 %795, label %873, label %775

796:                                              ; preds = %775
  %797 = call fastcc zeroext i8 @bm_uuidwalk_facestep_begin(ptr noundef nonnull %16, ptr noundef nonnull %776), !range !110
  %798 = icmp eq i8 %797, 0
  br i1 %798, label %851, label %799

799:                                              ; preds = %796
  %800 = call fastcc zeroext i8 @bm_uuidwalk_facestep_begin(ptr noundef nonnull %17, ptr noundef %777), !range !110
  %801 = icmp eq i8 %800, 0
  br i1 %801, label %851, label %802

802:                                              ; preds = %799
  %803 = getelementptr inbounds %struct.UUIDFaceStep, ptr %776, i64 0, i32 3
  %804 = getelementptr inbounds %struct.UUIDFaceStep, ptr %777, i64 0, i32 3
  %805 = load ptr, ptr %804, align 8, !tbaa !34
  %806 = load ptr, ptr %803, align 8, !tbaa !34
  %807 = icmp ne ptr %806, null
  %808 = icmp ne ptr %805, null
  %809 = select i1 %807, i1 %808, i1 false
  br i1 %809, label %810, label %851

810:                                              ; preds = %802, %844
  %811 = phi ptr [ %847, %844 ], [ %806, %802 ]
  %812 = phi ptr [ %846, %844 ], [ %805, %802 ]
  %813 = phi i8 [ %845, %844 ], [ %771, %802 ]
  %814 = getelementptr inbounds %struct.UUIDFaceStepItem, ptr %811, i64 0, i32 2
  %815 = load i64, ptr %814, align 8, !tbaa !111
  br label %816

816:                                              ; preds = %810, %821
  %817 = phi ptr [ %812, %810 ], [ %822, %821 ]
  %818 = getelementptr inbounds %struct.UUIDFaceStepItem, ptr %817, i64 0, i32 2
  %819 = load i64, ptr %818, align 8, !tbaa !111
  %820 = icmp ult i64 %819, %815
  br i1 %820, label %821, label %824

821:                                              ; preds = %816
  %822 = load ptr, ptr %817, align 8, !tbaa !113
  %823 = icmp eq ptr %822, null
  br i1 %823, label %851, label %816, !llvm.loop !114

824:                                              ; preds = %816
  %825 = icmp eq i64 %815, %819
  br i1 %825, label %826, label %851

826:                                              ; preds = %824
  %827 = getelementptr inbounds %struct.UUIDFaceStepItem, ptr %811, i64 0, i32 4
  %828 = load i32, ptr %827, align 8, !tbaa !115
  %829 = getelementptr inbounds %struct.UUIDFaceStepItem, ptr %817, i64 0, i32 4
  %830 = load i32, ptr %829, align 8, !tbaa !115
  %831 = icmp ugt i32 %828, %830
  br i1 %831, label %851, label %832

832:                                              ; preds = %826
  %833 = icmp eq i32 %828, %830
  br i1 %833, label %834, label %844

834:                                              ; preds = %832
  %835 = getelementptr inbounds %struct.UUIDFaceStepItem, ptr %811, i64 0, i32 3
  %836 = load ptr, ptr %835, align 8, !tbaa !116
  call fastcc void @bm_uuidwalk_pass_add(ptr noundef nonnull %16, ptr noundef %836, i32 noundef %828)
  %837 = getelementptr inbounds %struct.UUIDFaceStepItem, ptr %817, i64 0, i32 3
  %838 = load ptr, ptr %837, align 8, !tbaa !116
  %839 = load i32, ptr %829, align 8, !tbaa !115
  call fastcc void @bm_uuidwalk_pass_add(ptr noundef nonnull %17, ptr noundef %838, i32 noundef %839)
  %840 = load ptr, ptr %835, align 8, !tbaa !116
  %841 = load ptr, ptr %678, align 8, !tbaa !108
  call void @BLI_linklist_free_pool(ptr noundef %840, ptr noundef null, ptr noundef %841) #9
  %842 = load ptr, ptr %837, align 8, !tbaa !116
  %843 = load ptr, ptr %679, align 8, !tbaa !108
  call void @BLI_linklist_free_pool(ptr noundef %842, ptr noundef null, ptr noundef %843) #9
  store ptr null, ptr %835, align 8, !tbaa !116
  store i32 0, ptr %827, align 8, !tbaa !115
  store ptr null, ptr %837, align 8, !tbaa !116
  store i32 0, ptr %829, align 8, !tbaa !115
  br label %844

844:                                              ; preds = %834, %832
  %845 = phi i8 [ 1, %834 ], [ %813, %832 ]
  %846 = load ptr, ptr %817, align 8, !tbaa !34
  %847 = load ptr, ptr %811, align 8, !tbaa !34
  %848 = icmp ne ptr %847, null
  %849 = icmp ne ptr %846, null
  %850 = select i1 %848, i1 %849, i1 false
  br i1 %850, label %810, label %851, !llvm.loop !117

851:                                              ; preds = %844, %824, %826, %821, %802, %799, %796
  %852 = phi i8 [ %771, %799 ], [ %771, %796 ], [ %771, %802 ], [ 0, %821 ], [ 0, %826 ], [ 0, %824 ], [ %845, %844 ]
  %853 = getelementptr inbounds %struct.UUIDFaceStep, ptr %776, i64 0, i32 3
  %854 = call ptr @BLI_pophead(ptr noundef nonnull %853) #9
  %855 = icmp eq ptr %854, null
  br i1 %855, label %856, label %860

856:                                              ; preds = %860, %851
  %857 = getelementptr inbounds %struct.UUIDFaceStep, ptr %777, i64 0, i32 3
  %858 = call ptr @BLI_pophead(ptr noundef nonnull %857) #9
  %859 = icmp eq ptr %858, null
  br i1 %859, label %870, label %865

860:                                              ; preds = %851, %860
  %861 = phi ptr [ %863, %860 ], [ %854, %851 ]
  %862 = load ptr, ptr %680, align 8, !tbaa !118
  call void @BLI_mempool_free(ptr noundef %862, ptr noundef nonnull %861) #9
  %863 = call ptr @BLI_pophead(ptr noundef nonnull %853) #9
  %864 = icmp eq ptr %863, null
  br i1 %864, label %856, label %860, !llvm.loop !119

865:                                              ; preds = %856, %865
  %866 = phi ptr [ %868, %865 ], [ %858, %856 ]
  %867 = load ptr, ptr %681, align 8, !tbaa !118
  call void @BLI_mempool_free(ptr noundef %867, ptr noundef nonnull %866) #9
  %868 = call ptr @BLI_pophead(ptr noundef nonnull %857) #9
  %869 = icmp eq ptr %868, null
  br i1 %869, label %870, label %865, !llvm.loop !119

870:                                              ; preds = %865, %856
  %871 = load ptr, ptr %776, align 8, !tbaa !105
  %872 = icmp eq ptr %871, null
  br i1 %872, label %873, label %770, !llvm.loop !120

873:                                              ; preds = %870, %793, %766
  %874 = phi i8 [ 0, %766 ], [ %771, %793 ], [ %852, %870 ]
  %875 = icmp eq i8 %874, 0
  br i1 %875, label %881, label %876

876:                                              ; preds = %873
  %877 = load ptr, ptr %682, align 8, !tbaa !121
  %878 = call i32 @BLI_ghash_size(ptr noundef %877) #9
  %879 = icmp eq i32 %878, %2
  br i1 %879, label %881, label %880

880:                                              ; preds = %876
  call fastcc void @bm_uuidwalk_rehash(ptr noundef nonnull %16)
  call fastcc void @bm_uuidwalk_rehash(ptr noundef nonnull %17)
  br label %881

881:                                              ; preds = %880, %876, %873
  %882 = phi i1 [ true, %880 ], [ false, %873 ], [ false, %876 ]
  %883 = phi i8 [ 0, %880 ], [ %767, %873 ], [ 1, %876 ]
  br i1 %882, label %766, label %884

884:                                              ; preds = %881
  %885 = icmp eq i8 %883, 0
  br i1 %885, label %910, label %886

886:                                              ; preds = %884
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  %887 = load ptr, ptr %683, align 8, !tbaa !121
  %888 = call i32 @BLI_ghash_size(ptr noundef %887) #9
  %889 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %890 = add i32 %888, 1
  %891 = zext i32 %890 to i64
  %892 = shl nuw nsw i64 %891, 3
  %893 = call ptr %889(i64 noundef %892, ptr noundef nonnull @__func__.bm_mesh_region_match_pair) #9
  %894 = load ptr, ptr %683, align 8, !tbaa !121
  call void @BLI_ghashIterator_init(ptr noundef nonnull %5, ptr noundef %894) #9
  %895 = load ptr, ptr %684, align 8, !tbaa !122
  %896 = icmp eq ptr %895, null
  br i1 %896, label %907, label %897

897:                                              ; preds = %886, %897
  %898 = phi ptr [ %905, %897 ], [ %895, %886 ]
  %899 = phi i32 [ %904, %897 ], [ 0, %886 ]
  %900 = getelementptr inbounds %struct._gh_Entry, ptr %898, i64 0, i32 1
  %901 = load ptr, ptr %900, align 8, !tbaa !124
  %902 = zext i32 %899 to i64
  %903 = getelementptr inbounds ptr, ptr %893, i64 %902
  store ptr %901, ptr %903, align 8, !tbaa !34
  call void @BLI_ghashIterator_step(ptr noundef nonnull %5) #9
  %904 = add i32 %899, 1
  %905 = load ptr, ptr %684, align 8, !tbaa !122
  %906 = icmp eq ptr %905, null
  br i1 %906, label %907, label %897, !llvm.loop !126

907:                                              ; preds = %897, %886
  %908 = zext i32 %888 to i64
  %909 = getelementptr inbounds ptr, ptr %893, i64 %908
  store ptr null, ptr %909, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  br label %910

910:                                              ; preds = %884, %747, %907
  %911 = phi i32 [ %888, %907 ], [ %707, %747 ], [ 0, %884 ]
  %912 = phi ptr [ %893, %907 ], [ null, %747 ], [ null, %884 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  %913 = load ptr, ptr %685, align 8, !tbaa !127
  call void @BLI_ghash_clear(ptr noundef %913, ptr noundef null, ptr noundef null) #9
  %914 = load ptr, ptr %686, align 8, !tbaa !121
  call void @BLI_ghash_clear(ptr noundef %914, ptr noundef null, ptr noundef null) #9
  %915 = load ptr, ptr %687, align 8, !tbaa !128
  call void @BLI_ghash_clear(ptr noundef %915, ptr noundef null, ptr noundef null) #9
  %916 = load ptr, ptr %688, align 8, !tbaa !129
  call void @BLI_gset_clear(ptr noundef %916, ptr noundef null) #9
  %917 = load ptr, ptr %689, align 8, !tbaa !130
  call void @BLI_ghash_clear(ptr noundef %917, ptr noundef null, ptr noundef null) #9
  store i8 0, ptr %663, align 8, !tbaa !97
  %918 = load ptr, ptr %690, align 8, !tbaa !108
  call void @BLI_mempool_clear(ptr noundef %918) #9
  %919 = load ptr, ptr %691, align 8, !tbaa !106
  call void @BLI_mempool_clear(ptr noundef %919) #9
  %920 = load ptr, ptr %692, align 8, !tbaa !118
  call void @BLI_mempool_clear(ptr noundef %920) #9
  store i64 1, ptr %693, align 8, !tbaa !131
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  %921 = load ptr, ptr %694, align 8, !tbaa !127
  call void @BLI_ghash_clear(ptr noundef %921, ptr noundef null, ptr noundef null) #9
  %922 = load ptr, ptr %695, align 8, !tbaa !121
  call void @BLI_ghash_clear(ptr noundef %922, ptr noundef null, ptr noundef null) #9
  %923 = load ptr, ptr %696, align 8, !tbaa !128
  call void @BLI_ghash_clear(ptr noundef %923, ptr noundef null, ptr noundef null) #9
  %924 = load ptr, ptr %697, align 8, !tbaa !129
  call void @BLI_gset_clear(ptr noundef %924, ptr noundef null) #9
  %925 = load ptr, ptr %698, align 8, !tbaa !130
  call void @BLI_ghash_clear(ptr noundef %925, ptr noundef null, ptr noundef null) #9
  store i8 0, ptr %699, align 8, !tbaa !97
  %926 = load ptr, ptr %700, align 8, !tbaa !108
  call void @BLI_mempool_clear(ptr noundef %926) #9
  %927 = load ptr, ptr %701, align 8, !tbaa !106
  call void @BLI_mempool_clear(ptr noundef %927) #9
  %928 = load ptr, ptr %702, align 8, !tbaa !118
  call void @BLI_mempool_clear(ptr noundef %928) #9
  store i64 1, ptr %703, align 8, !tbaa !131
  %929 = icmp eq ptr %912, null
  br i1 %929, label %961, label %930

930:                                              ; preds = %910
  %931 = icmp eq i32 %911, 0
  br i1 %931, label %958, label %932

932:                                              ; preds = %930
  %933 = zext i32 %911 to i64
  br label %934

934:                                              ; preds = %932, %955
  %935 = phi i64 [ 0, %932 ], [ %956, %955 ]
  %936 = getelementptr inbounds ptr, ptr %912, i64 %935
  %937 = load ptr, ptr %936, align 8, !tbaa !34
  %938 = getelementptr inbounds %struct.BMFace, ptr %937, i64 0, i32 2
  %939 = load ptr, ptr %938, align 8, !tbaa !38
  br label %940

940:                                              ; preds = %940, %934
  %941 = phi ptr [ %939, %934 ], [ %953, %940 ]
  %942 = getelementptr inbounds %struct.BMLoop, ptr %941, i64 0, i32 2
  %943 = load ptr, ptr %942, align 8, !tbaa !46
  %944 = getelementptr inbounds %struct.BMHeader, ptr %943, i64 0, i32 3
  %945 = load i8, ptr %944, align 1, !tbaa !45
  %946 = or i8 %945, 16
  store i8 %946, ptr %944, align 1, !tbaa !45
  %947 = getelementptr inbounds %struct.BMLoop, ptr %941, i64 0, i32 1
  %948 = load ptr, ptr %947, align 8, !tbaa !43
  %949 = getelementptr inbounds %struct.BMHeader, ptr %948, i64 0, i32 3
  %950 = load i8, ptr %949, align 1, !tbaa !45
  %951 = or i8 %950, 16
  store i8 %951, ptr %949, align 1, !tbaa !45
  %952 = getelementptr inbounds %struct.BMLoop, ptr %941, i64 0, i32 6
  %953 = load ptr, ptr %952, align 8, !tbaa !47
  %954 = icmp eq ptr %953, %939
  br i1 %954, label %955, label %940, !llvm.loop !48

955:                                              ; preds = %940
  %956 = add nuw nsw i64 %935, 1
  %957 = icmp eq i64 %956, %933
  br i1 %957, label %958, label %934, !llvm.loop !51

958:                                              ; preds = %955, %930
  %959 = call ptr @BLI_genericNodeN(ptr noundef nonnull %912) #9
  call void @BLI_addtail(ptr noundef nonnull %3, ptr noundef %959) #9
  %960 = add i32 %706, 1
  br label %961

961:                                              ; preds = %910, %958, %713, %704
  %962 = phi i32 [ %911, %910 ], [ %911, %958 ], [ %707, %713 ], [ %707, %704 ]
  %963 = phi i32 [ %706, %910 ], [ %960, %958 ], [ %706, %713 ], [ %706, %704 ]
  %964 = load ptr, ptr %653, align 8, !tbaa !62
  %965 = call ptr %964(ptr noundef nonnull %15) #9
  %966 = icmp eq ptr %965, null
  br i1 %966, label %967, label %704, !llvm.loop !132

967:                                              ; preds = %961, %649
  %968 = phi i32 [ 0, %649 ], [ %963, %961 ]
  call fastcc void @bm_uuidwalk_free(ptr noundef nonnull %16)
  call fastcc void @bm_uuidwalk_free(ptr noundef nonnull %17)
  %969 = icmp eq ptr %650, null
  br i1 %969, label %972, label %970

970:                                              ; preds = %967
  %971 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %971(ptr noundef nonnull %650) #9
  br label %972

972:                                              ; preds = %967, %970, %518
  %973 = phi i32 [ 0, %518 ], [ %968, %970 ], [ %968, %967 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %17) #9
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %16) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %15) #9
  ret i32 %973
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @BM_mesh_elem_hflag_disable_all(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @BM_mesh_elem_index_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @bm_uuidwalk_init(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %4 = tail call ptr @BLI_ghash_new_ex(ptr noundef nonnull @ghashutil_bmelem_indexhash, ptr noundef nonnull @ghashutil_bmelem_indexcmp, ptr noundef nonnull @__func__.bm_uuidwalk_init, i32 noundef %2) #9
  %5 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !127
  %6 = tail call ptr @BLI_ghash_new_ex(ptr noundef nonnull @ghashutil_bmelem_indexhash, ptr noundef nonnull @ghashutil_bmelem_indexcmp, ptr noundef nonnull @__func__.bm_uuidwalk_init, i32 noundef %1) #9
  %7 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 2
  store ptr %6, ptr %7, align 8, !tbaa !121
  %8 = tail call ptr @BLI_ghash_new_ex(ptr noundef nonnull @ghashutil_bmelem_indexhash, ptr noundef nonnull @ghashutil_bmelem_indexcmp, ptr noundef nonnull @__func__.bm_uuidwalk_init, i32 noundef 0) #9
  %9 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 9
  store ptr %8, ptr %9, align 8, !tbaa !128
  %10 = tail call ptr @BLI_gset_new_ex(ptr noundef nonnull @ghashutil_bmelem_indexhash, ptr noundef nonnull @ghashutil_bmelem_indexcmp, ptr noundef nonnull @__func__.bm_uuidwalk_init, i32 noundef 0) #9
  %11 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 9, i32 1
  store ptr %10, ptr %11, align 8, !tbaa !129
  %12 = tail call ptr @BLI_ghash_int_new(ptr noundef nonnull @__func__.bm_uuidwalk_init) #9
  %13 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 9, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !130
  %14 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 9, i32 3
  store ptr null, ptr %14, align 8, !tbaa !101
  %15 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 9, i32 4
  store i32 0, ptr %15, align 8, !tbaa !100
  %16 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 7
  store i8 0, ptr %16, align 8, !tbaa !97
  %17 = tail call ptr @BLI_mempool_create(i32 noundef 16, i32 noundef 64, i32 noundef 64, i32 noundef 0) #9
  %18 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 3
  store ptr %17, ptr %18, align 8, !tbaa !108
  %19 = tail call ptr @BLI_mempool_create(i32 noundef 40, i32 noundef 64, i32 noundef 64, i32 noundef 0) #9
  %20 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 5
  store ptr %19, ptr %20, align 8, !tbaa !106
  %21 = tail call ptr @BLI_mempool_create(i32 noundef 40, i32 noundef 64, i32 noundef 64, i32 noundef 0) #9
  %22 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 6
  store ptr %21, ptr %22, align 8, !tbaa !118
  %23 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 8
  store i64 1, ptr %23, align 8, !tbaa !131
  ret void
}

declare ptr @BLI_genericNodeN(ptr noundef) local_unnamed_addr #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @bm_uuidwalk_free(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !127
  tail call void @BLI_ghash_free(ptr noundef %3, ptr noundef null, ptr noundef null) #9
  %4 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !121
  tail call void @BLI_ghash_free(ptr noundef %5, ptr noundef null, ptr noundef null) #9
  %6 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !128
  tail call void @BLI_ghash_free(ptr noundef %7, ptr noundef null, ptr noundef null) #9
  %8 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 9, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !129
  tail call void @BLI_gset_free(ptr noundef %9, ptr noundef null) #9
  %10 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 9, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !130
  tail call void @BLI_ghash_free(ptr noundef %11, ptr noundef null, ptr noundef null) #9
  %12 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 9, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !101
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %16(ptr noundef nonnull %13) #9
  store ptr null, ptr %12, align 8, !tbaa !101
  br label %17

17:                                               ; preds = %15, %1
  %18 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !108
  tail call void @BLI_mempool_destroy(ptr noundef %19) #9
  %20 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !106
  tail call void @BLI_mempool_destroy(ptr noundef %21) #9
  %22 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !118
  tail call void @BLI_mempool_destroy(ptr noundef %23) #9
  ret void
}

declare ptr @BLI_ghash_ptr_new(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_mempool_create(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_ghash_haskey(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_linklist_prepend_pool(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BLI_mempool_count(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_linklist_pop_pool(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_ghash_lookup_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare void @BLI_mempool_destroy(ptr noundef) local_unnamed_addr #2

declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare ptr @BLI_ghash_int_new(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_ghash_new_ex(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @ghashutil_bmelem_indexhash(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !94
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i8 @ghashutil_bmelem_indexcmp(ptr noundef readnone %0, ptr noundef readnone %1) #6 {
  %3 = icmp ne ptr %0, %1
  %4 = zext i1 %3 to i8
  ret i8 %4
}

declare ptr @BLI_gset_new_ex(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

declare void @bmiter__edge_of_vert_begin(ptr noundef) #2

declare ptr @bmiter__edge_of_vert_step(ptr noundef) #2

declare void @bmiter__face_of_vert_begin(ptr noundef) #2

declare ptr @bmiter__face_of_vert_step(ptr noundef) #2

declare void @bmiter__loop_of_vert_begin(ptr noundef) #2

declare ptr @bmiter__loop_of_vert_step(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @bm_uuidwalk_init_from_edge(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  %6 = tail call i32 @BM_edge_face_count(ptr noundef %1) #9
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 3
  %9 = alloca i8, i64 %8, align 16
  %10 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 7
  %11 = load i8, ptr %10, align 8, !tbaa !97
  %12 = icmp eq i8 %11, 0
  %13 = load ptr, ptr %4, align 8, !tbaa !52
  br label %14

14:                                               ; preds = %31, %2
  %15 = phi i32 [ 0, %2 ], [ %32, %31 ]
  %16 = phi ptr [ %5, %2 ], [ %34, %31 ]
  %17 = getelementptr inbounds %struct.BMLoop, ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !56
  br i1 %12, label %24, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.BMHeader, ptr %18, i64 0, i32 3
  %21 = load i8, ptr %20, align 1, !tbaa !45
  %22 = lshr i8 %21, 4
  %23 = and i8 %22, 1
  br label %24

24:                                               ; preds = %14, %19
  %25 = phi i8 [ %23, %19 ], [ 1, %14 ]
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = add i32 %15, 1
  %29 = zext i32 %15 to i64
  %30 = getelementptr inbounds ptr, ptr %9, i64 %29
  store ptr %18, ptr %30, align 8, !tbaa !34
  br label %31

31:                                               ; preds = %27, %24
  %32 = phi i32 [ %28, %27 ], [ %15, %24 ]
  %33 = getelementptr inbounds %struct.BMLoop, ptr %16, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !55
  %35 = icmp eq ptr %34, %13
  br i1 %35, label %36, label %14, !llvm.loop !133

36:                                               ; preds = %31
  %37 = zext i32 %32 to i64
  call void @qsort(ptr noundef nonnull %9, i64 noundef %37, i64 noundef 8, ptr noundef nonnull @bm_face_len_cmp) #9
  %38 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !127
  %40 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !58
  call void @BLI_ghash_insert(ptr noundef %39, ptr noundef %41, ptr noundef nonnull inttoptr (i64 100003 to ptr)) #9
  %42 = load ptr, ptr %38, align 8, !tbaa !127
  %43 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !70
  call void @BLI_ghash_insert(ptr noundef %42, ptr noundef %44, ptr noundef nonnull inttoptr (i64 100003 to ptr)) #9
  %45 = icmp eq i32 %32, 0
  br i1 %45, label %79, label %46

46:                                               ; preds = %36
  %47 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 3
  %48 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 3
  br label %49

49:                                               ; preds = %46, %72
  %50 = phi i32 [ 0, %46 ], [ %76, %72 ]
  %51 = phi i32 [ 0, %46 ], [ %77, %72 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  store ptr null, ptr %3, align 8, !tbaa !34
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds ptr, ptr %9, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !34
  %55 = getelementptr inbounds %struct.BMFace, ptr %54, i64 0, i32 3
  %56 = load i32, ptr %55, align 8, !tbaa !65
  br label %57

57:                                               ; preds = %65, %49
  %58 = phi i32 [ %51, %49 ], [ %59, %65 ]
  %59 = add i32 %58, 1
  %60 = zext i32 %58 to i64
  %61 = getelementptr inbounds ptr, ptr %9, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !34
  %63 = load ptr, ptr %47, align 8, !tbaa !108
  call void @BLI_linklist_prepend_pool(ptr noundef nonnull %3, ptr noundef %62, ptr noundef %63) #9
  %64 = icmp ult i32 %59, %32
  br i1 %64, label %65, label %72

65:                                               ; preds = %57
  %66 = zext i32 %59 to i64
  %67 = getelementptr inbounds ptr, ptr %9, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !34
  %69 = getelementptr inbounds %struct.BMFace, ptr %68, i64 0, i32 3
  %70 = load i32, ptr %69, align 8, !tbaa !65
  %71 = icmp eq i32 %56, %70
  br i1 %71, label %57, label %72, !llvm.loop !134

72:                                               ; preds = %57, %65
  %73 = load ptr, ptr %3, align 8, !tbaa !34
  call fastcc void @bm_uuidwalk_pass_add(ptr noundef %0, ptr noundef %73, i32 noundef %59)
  %74 = load ptr, ptr %3, align 8, !tbaa !34
  %75 = load ptr, ptr %48, align 8, !tbaa !108
  call void @BLI_linklist_free_pool(ptr noundef %74, ptr noundef null, ptr noundef %75) #9
  %76 = add i32 %50, 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  %77 = add i32 %58, 2
  %78 = icmp ult i32 %77, %32
  br i1 %78, label %49, label %79, !llvm.loop !135

79:                                               ; preds = %72, %36
  %80 = phi i32 [ 0, %36 ], [ %76, %72 ]
  ret i32 %80
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @bm_uuidwalk_facestep_begin(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.UUIDFaceStep, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !103
  %5 = icmp eq ptr %4, null
  br i1 %5, label %115, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 8
  %10 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 1
  %11 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 9, i32 2
  %12 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 6
  %13 = getelementptr inbounds %struct.UUIDFaceStep, ptr %1, i64 0, i32 3
  %14 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 3
  br label %15

15:                                               ; preds = %6, %111
  %16 = phi ptr [ %4, %6 ], [ %21, %111 ]
  %17 = phi ptr [ %3, %6 ], [ %113, %111 ]
  %18 = phi i8 [ 0, %6 ], [ %112, %111 ]
  %19 = getelementptr inbounds %struct.LinkNode, ptr %16, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !75
  %21 = load ptr, ptr %16, align 8, !tbaa !107
  %22 = load ptr, ptr %7, align 8, !tbaa !121
  %23 = tail call zeroext i8 @BLI_ghash_haskey(ptr noundef %22, ptr noundef %20) #9
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %108

25:                                               ; preds = %15
  %26 = load i64, ptr %9, align 8, !tbaa !131
  %27 = getelementptr inbounds %struct.BMFace, ptr %20, i64 0, i32 3
  %28 = load i32, ptr %27, align 8, !tbaa !65
  %29 = zext i32 %28 to i64
  %30 = mul i64 %26, 1013
  %31 = mul i64 %30, %29
  %32 = getelementptr inbounds %struct.BMFace, ptr %20, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !38
  br label %34

34:                                               ; preds = %46, %25
  %35 = phi i64 [ undef, %25 ], [ %47, %46 ]
  %36 = phi ptr [ %33, %25 ], [ %52, %46 ]
  %37 = phi i64 [ %31, %25 ], [ %50, %46 ]
  %38 = getelementptr inbounds %struct.BMLoop, ptr %36, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !43
  %40 = load ptr, ptr %10, align 8, !tbaa !127
  %41 = tail call ptr @BLI_ghash_lookup_p(ptr noundef %40, ptr noundef %39) #9
  %42 = icmp eq ptr %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %34
  %44 = load ptr, ptr %41, align 8, !tbaa !34
  %45 = ptrtoint ptr %44 to i64
  br label %46

46:                                               ; preds = %43, %34
  %47 = phi i64 [ %35, %34 ], [ %45, %43 ]
  %48 = mul i64 %47, 11
  %49 = select i1 %42, i64 0, i64 %48
  %50 = xor i64 %49, %37
  %51 = getelementptr inbounds %struct.BMLoop, ptr %36, i64 0, i32 6
  %52 = load ptr, ptr %51, align 8, !tbaa !47
  %53 = icmp eq ptr %52, %33
  br i1 %53, label %54, label %34, !llvm.loop !136

54:                                               ; preds = %46
  %55 = load ptr, ptr %32, align 8, !tbaa !38
  br label %56

56:                                               ; preds = %83, %54
  %57 = phi i64 [ undef, %54 ], [ %84, %83 ]
  %58 = phi ptr [ %55, %54 ], [ %87, %83 ]
  %59 = phi i64 [ %50, %54 ], [ %85, %83 ]
  %60 = getelementptr inbounds %struct.BMLoop, ptr %58, i64 0, i32 4
  %61 = load ptr, ptr %60, align 8, !tbaa !55
  %62 = icmp eq ptr %61, %58
  br i1 %62, label %83, label %63

63:                                               ; preds = %56, %75
  %64 = phi i64 [ %76, %75 ], [ %57, %56 ]
  %65 = phi i64 [ %79, %75 ], [ %59, %56 ]
  %66 = phi ptr [ %81, %75 ], [ %61, %56 ]
  %67 = getelementptr inbounds %struct.BMLoop, ptr %66, i64 0, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !56
  %69 = load ptr, ptr %7, align 8, !tbaa !121
  %70 = tail call ptr @BLI_ghash_lookup_p(ptr noundef %69, ptr noundef %68) #9
  %71 = icmp eq ptr %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %63
  %73 = load ptr, ptr %70, align 8, !tbaa !34
  %74 = ptrtoint ptr %73 to i64
  br label %75

75:                                               ; preds = %72, %63
  %76 = phi i64 [ %64, %63 ], [ %74, %72 ]
  %77 = mul i64 %76, 17
  %78 = select i1 %71, i64 0, i64 %77
  %79 = xor i64 %78, %65
  %80 = getelementptr inbounds %struct.BMLoop, ptr %66, i64 0, i32 4
  %81 = load ptr, ptr %80, align 8, !tbaa !55
  %82 = icmp eq ptr %81, %58
  br i1 %82, label %83, label %63, !llvm.loop !137

83:                                               ; preds = %75, %56
  %84 = phi i64 [ %57, %56 ], [ %76, %75 ]
  %85 = phi i64 [ %59, %56 ], [ %79, %75 ]
  %86 = getelementptr inbounds %struct.BMLoop, ptr %58, i64 0, i32 6
  %87 = load ptr, ptr %86, align 8, !tbaa !47
  %88 = icmp eq ptr %87, %55
  br i1 %88, label %89, label %56, !llvm.loop !138

89:                                               ; preds = %83
  %90 = load ptr, ptr %11, align 8, !tbaa !130
  %91 = inttoptr i64 %85 to ptr
  %92 = tail call ptr @BLI_ghash_lookup(ptr noundef %90, ptr noundef %91) #9
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %101

94:                                               ; preds = %89
  %95 = load ptr, ptr %12, align 8, !tbaa !118
  %96 = tail call ptr @BLI_mempool_alloc(ptr noundef %95) #9
  %97 = load ptr, ptr %11, align 8, !tbaa !130
  tail call void @BLI_ghash_insert(ptr noundef %97, ptr noundef %91, ptr noundef %96) #9
  tail call void @BLI_addhead(ptr noundef nonnull %13, ptr noundef %96) #9
  %98 = getelementptr inbounds %struct.UUIDFaceStepItem, ptr %96, i64 0, i32 2
  store i64 %85, ptr %98, align 8, !tbaa !111
  %99 = getelementptr inbounds %struct.UUIDFaceStepItem, ptr %96, i64 0, i32 3
  store ptr null, ptr %99, align 8, !tbaa !116
  %100 = getelementptr inbounds %struct.UUIDFaceStepItem, ptr %96, i64 0, i32 4
  store i32 0, ptr %100, align 8, !tbaa !115
  br label %101

101:                                              ; preds = %94, %89
  %102 = phi ptr [ %96, %94 ], [ %92, %89 ]
  %103 = getelementptr inbounds %struct.UUIDFaceStepItem, ptr %102, i64 0, i32 3
  %104 = load ptr, ptr %14, align 8, !tbaa !108
  tail call void @BLI_linklist_prepend_pool(ptr noundef nonnull %103, ptr noundef %20, ptr noundef %104) #9
  %105 = getelementptr inbounds %struct.UUIDFaceStepItem, ptr %102, i64 0, i32 4
  %106 = load i32, ptr %105, align 8, !tbaa !115
  %107 = add i32 %106, 1
  store i32 %107, ptr %105, align 8, !tbaa !115
  br label %111

108:                                              ; preds = %15
  %109 = load ptr, ptr %16, align 8, !tbaa !107
  store ptr %109, ptr %17, align 8, !tbaa !34
  %110 = load ptr, ptr %8, align 8, !tbaa !108
  tail call void @BLI_mempool_free(ptr noundef %110, ptr noundef nonnull %16) #9
  br label %111

111:                                              ; preds = %108, %101
  %112 = phi i8 [ %18, %108 ], [ 1, %101 ]
  %113 = phi ptr [ %17, %108 ], [ %16, %101 ]
  %114 = icmp eq ptr %21, null
  br i1 %114, label %115, label %15, !llvm.loop !139

115:                                              ; preds = %111, %2
  %116 = phi i8 [ 0, %2 ], [ %112, %111 ]
  %117 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 9, i32 2
  %118 = load ptr, ptr %117, align 8, !tbaa !130
  tail call void @BLI_ghash_clear(ptr noundef %118, ptr noundef null, ptr noundef null) #9
  %119 = getelementptr inbounds %struct.UUIDFaceStep, ptr %1, i64 0, i32 3
  tail call void @BLI_sortlist(ptr noundef nonnull %119, ptr noundef nonnull @facestep_sort) #9
  ret i8 %116
}

; Function Attrs: nounwind uwtable
define internal fastcc void @bm_uuidwalk_pass_add(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.GHashIterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  %6 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 9, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !100
  %8 = icmp ult i32 %7, %2
  br i1 %8, label %9, label %17

9:                                                ; preds = %3
  %10 = shl i32 %2, 1
  %11 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 9, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !101
  %14 = zext i32 %10 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = tail call ptr %11(ptr noundef %13, i64 noundef %15, ptr noundef nonnull @__func__.bm_uuidwalk_rehash_reserve) #9
  store ptr %16, ptr %12, align 8, !tbaa !101
  store i32 %10, ptr %6, align 8, !tbaa !100
  br label %17

17:                                               ; preds = %9, %3
  %18 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 9, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !101
  %20 = icmp eq ptr %1, null
  br i1 %20, label %115, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 8
  %23 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 1
  %24 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 2
  br label %25

25:                                               ; preds = %21, %93
  %26 = phi ptr [ %97, %93 ], [ %1, %21 ]
  %27 = phi i32 [ %94, %93 ], [ 0, %21 ]
  %28 = getelementptr inbounds %struct.LinkNode, ptr %26, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !75
  %30 = load i64, ptr %22, align 8, !tbaa !131
  %31 = getelementptr inbounds %struct.BMFace, ptr %29, i64 0, i32 3
  %32 = load i32, ptr %31, align 8, !tbaa !65
  %33 = zext i32 %32 to i64
  %34 = mul i64 %30, 1013
  %35 = mul i64 %34, %33
  %36 = getelementptr inbounds %struct.BMFace, ptr %29, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !38
  br label %38

38:                                               ; preds = %50, %25
  %39 = phi i64 [ undef, %25 ], [ %51, %50 ]
  %40 = phi ptr [ %37, %25 ], [ %56, %50 ]
  %41 = phi i64 [ %35, %25 ], [ %54, %50 ]
  %42 = getelementptr inbounds %struct.BMLoop, ptr %40, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !43
  %44 = load ptr, ptr %23, align 8, !tbaa !127
  %45 = tail call ptr @BLI_ghash_lookup_p(ptr noundef %44, ptr noundef %43) #9
  %46 = icmp eq ptr %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %38
  %48 = load ptr, ptr %45, align 8, !tbaa !34
  %49 = ptrtoint ptr %48 to i64
  br label %50

50:                                               ; preds = %47, %38
  %51 = phi i64 [ %39, %38 ], [ %49, %47 ]
  %52 = mul i64 %51, 11
  %53 = select i1 %46, i64 0, i64 %52
  %54 = xor i64 %53, %41
  %55 = getelementptr inbounds %struct.BMLoop, ptr %40, i64 0, i32 6
  %56 = load ptr, ptr %55, align 8, !tbaa !47
  %57 = icmp eq ptr %56, %37
  br i1 %57, label %58, label %38, !llvm.loop !136

58:                                               ; preds = %50
  %59 = load ptr, ptr %36, align 8, !tbaa !38
  br label %60

60:                                               ; preds = %87, %58
  %61 = phi i64 [ undef, %58 ], [ %88, %87 ]
  %62 = phi ptr [ %59, %58 ], [ %91, %87 ]
  %63 = phi i64 [ %54, %58 ], [ %89, %87 ]
  %64 = getelementptr inbounds %struct.BMLoop, ptr %62, i64 0, i32 4
  %65 = load ptr, ptr %64, align 8, !tbaa !55
  %66 = icmp eq ptr %65, %62
  br i1 %66, label %87, label %67

67:                                               ; preds = %60, %79
  %68 = phi i64 [ %80, %79 ], [ %61, %60 ]
  %69 = phi i64 [ %83, %79 ], [ %63, %60 ]
  %70 = phi ptr [ %85, %79 ], [ %65, %60 ]
  %71 = getelementptr inbounds %struct.BMLoop, ptr %70, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !56
  %73 = load ptr, ptr %24, align 8, !tbaa !121
  %74 = tail call ptr @BLI_ghash_lookup_p(ptr noundef %73, ptr noundef %72) #9
  %75 = icmp eq ptr %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %67
  %77 = load ptr, ptr %74, align 8, !tbaa !34
  %78 = ptrtoint ptr %77 to i64
  br label %79

79:                                               ; preds = %76, %67
  %80 = phi i64 [ %68, %67 ], [ %78, %76 ]
  %81 = mul i64 %80, 17
  %82 = select i1 %75, i64 0, i64 %81
  %83 = xor i64 %82, %69
  %84 = getelementptr inbounds %struct.BMLoop, ptr %70, i64 0, i32 4
  %85 = load ptr, ptr %84, align 8, !tbaa !55
  %86 = icmp eq ptr %85, %62
  br i1 %86, label %87, label %67, !llvm.loop !137

87:                                               ; preds = %79, %60
  %88 = phi i64 [ %61, %60 ], [ %80, %79 ]
  %89 = phi i64 [ %63, %60 ], [ %83, %79 ]
  %90 = getelementptr inbounds %struct.BMLoop, ptr %62, i64 0, i32 6
  %91 = load ptr, ptr %90, align 8, !tbaa !47
  %92 = icmp eq ptr %91, %59
  br i1 %92, label %93, label %60, !llvm.loop !138

93:                                               ; preds = %87
  %94 = add i32 %27, 1
  %95 = zext i32 %27 to i64
  %96 = getelementptr inbounds i64, ptr %19, i64 %95
  store i64 %89, ptr %96, align 8, !tbaa !77
  %97 = load ptr, ptr %26, align 8, !tbaa !107
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %25, !llvm.loop !140

99:                                               ; preds = %93
  br i1 %20, label %115, label %100

100:                                              ; preds = %99
  %101 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 2
  br label %102

102:                                              ; preds = %102, %100
  %103 = phi ptr [ %1, %100 ], [ %113, %102 ]
  %104 = phi i32 [ 0, %100 ], [ %108, %102 ]
  %105 = getelementptr inbounds %struct.LinkNode, ptr %103, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !75
  %107 = load ptr, ptr %101, align 8, !tbaa !121
  %108 = add i32 %104, 1
  %109 = zext i32 %104 to i64
  %110 = getelementptr inbounds i64, ptr %19, i64 %109
  %111 = load i64, ptr %110, align 8, !tbaa !77
  %112 = inttoptr i64 %111 to ptr
  tail call void @BLI_ghash_insert(ptr noundef %107, ptr noundef %106, ptr noundef %112) #9
  %113 = load ptr, ptr %103, align 8, !tbaa !107
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %102, !llvm.loop !141

115:                                              ; preds = %102, %17, %99
  %116 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 9
  %117 = load ptr, ptr %116, align 8, !tbaa !128
  %118 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 9, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !129
  %120 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 5
  %121 = load ptr, ptr %120, align 8, !tbaa !106
  %122 = tail call ptr @BLI_mempool_alloc(ptr noundef %121) #9
  tail call void @BLI_addhead(ptr noundef %0, ptr noundef %122) #9
  %123 = getelementptr inbounds %struct.UUIDFaceStep, ptr %122, i64 0, i32 2
  %124 = icmp eq ptr %1, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %123, i8 0, i64 24, i1 false)
  br i1 %124, label %222, label %125

125:                                              ; preds = %115
  %126 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 1
  %127 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  %128 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %129 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  %130 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 2
  %131 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 7
  %132 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 3
  br label %133

133:                                              ; preds = %125, %219
  %134 = phi ptr [ %1, %125 ], [ %220, %219 ]
  %135 = getelementptr inbounds %struct.LinkNode, ptr %134, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !75
  %137 = getelementptr inbounds %struct.BMFace, ptr %136, i64 0, i32 2
  %138 = load ptr, ptr %137, align 8, !tbaa !38
  br label %139

139:                                              ; preds = %215, %133
  %140 = phi ptr [ %138, %133 ], [ %217, %215 ]
  %141 = load ptr, ptr %126, align 8, !tbaa !127
  %142 = getelementptr inbounds %struct.BMLoop, ptr %140, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !43
  %144 = call zeroext i8 @BLI_ghash_haskey(ptr noundef %141, ptr noundef %143) #9
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %146, label %180

146:                                              ; preds = %139
  %147 = load ptr, ptr %142, align 8, !tbaa !43
  %148 = call zeroext i8 @BLI_ghash_haskey(ptr noundef %117, ptr noundef %147) #9
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %150, label %180

150:                                              ; preds = %146
  %151 = load ptr, ptr %142, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  store i8 4, ptr %127, align 4, !tbaa !59
  store ptr @bmiter__edge_of_vert_begin, ptr %128, align 8, !tbaa !61
  store ptr @bmiter__edge_of_vert_step, ptr %129, align 8, !tbaa !62
  store ptr %151, ptr %4, align 8, !tbaa !63
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %4) #9
  %152 = load ptr, ptr %129, align 8, !tbaa !62
  %153 = call ptr %152(ptr noundef nonnull %4) #9
  %154 = icmp eq ptr %153, null
  br i1 %154, label %179, label %155

155:                                              ; preds = %150, %169
  %156 = phi i1 [ %172, %169 ], [ %154, %150 ]
  %157 = phi ptr [ %171, %169 ], [ %153, %150 ]
  %158 = getelementptr inbounds %struct.BMEdge, ptr %157, i64 0, i32 2
  %159 = load ptr, ptr %158, align 8, !tbaa !58
  %160 = icmp eq ptr %159, %151
  %161 = getelementptr inbounds %struct.BMEdge, ptr %157, i64 0, i32 3
  %162 = load ptr, ptr %161, align 8, !tbaa !70
  %163 = icmp eq ptr %162, %151
  %164 = select i1 %163, ptr %159, ptr null
  %165 = select i1 %160, ptr %162, ptr %164
  %166 = load ptr, ptr %126, align 8, !tbaa !127
  %167 = call zeroext i8 @BLI_ghash_haskey(ptr noundef %166, ptr noundef %165) #9
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %155
  %170 = load ptr, ptr %129, align 8, !tbaa !62
  %171 = call ptr %170(ptr noundef nonnull %4) #9
  %172 = icmp eq ptr %171, null
  br i1 %172, label %179, label %155, !llvm.loop !142

173:                                              ; preds = %155
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #9
  br i1 %156, label %180, label %174

174:                                              ; preds = %173
  %175 = load ptr, ptr %142, align 8, !tbaa !43
  %176 = call fastcc i64 @bm_uuidwalk_calc_vert_uuid(ptr noundef %0, ptr noundef %175)
  %177 = load ptr, ptr %142, align 8, !tbaa !43
  %178 = inttoptr i64 %176 to ptr
  call void @BLI_ghash_insert(ptr noundef %117, ptr noundef %177, ptr noundef %178) #9
  br label %180

179:                                              ; preds = %169, %150
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #9
  br label %180

180:                                              ; preds = %179, %174, %173, %146, %139
  %181 = getelementptr inbounds %struct.BMLoop, ptr %140, i64 0, i32 4
  %182 = load ptr, ptr %181, align 8, !tbaa !55
  %183 = icmp eq ptr %182, %140
  br i1 %183, label %215, label %184

184:                                              ; preds = %180, %211
  %185 = phi ptr [ %213, %211 ], [ %182, %180 ]
  %186 = load ptr, ptr %130, align 8, !tbaa !121
  %187 = getelementptr inbounds %struct.BMLoop, ptr %185, i64 0, i32 3
  %188 = load ptr, ptr %187, align 8, !tbaa !56
  %189 = call zeroext i8 @BLI_ghash_haskey(ptr noundef %186, ptr noundef %188) #9
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %191, label %211

191:                                              ; preds = %184
  %192 = load ptr, ptr %187, align 8, !tbaa !56
  %193 = call zeroext i8 @BLI_gset_haskey(ptr noundef %119, ptr noundef %192) #9
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %195, label %211

195:                                              ; preds = %191
  %196 = load i8, ptr %131, align 8, !tbaa !97
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %204, label %198

198:                                              ; preds = %195
  %199 = load ptr, ptr %187, align 8, !tbaa !56
  %200 = getelementptr inbounds %struct.BMHeader, ptr %199, i64 0, i32 3
  %201 = load i8, ptr %200, align 1, !tbaa !45
  %202 = lshr i8 %201, 4
  %203 = and i8 %202, 1
  br label %204

204:                                              ; preds = %195, %198
  %205 = phi i8 [ %203, %198 ], [ 1, %195 ]
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %211, label %207

207:                                              ; preds = %204
  %208 = load ptr, ptr %187, align 8, !tbaa !56
  call void @BLI_gset_insert(ptr noundef %119, ptr noundef %208) #9
  %209 = load ptr, ptr %187, align 8, !tbaa !56
  %210 = load ptr, ptr %132, align 8, !tbaa !108
  call void @BLI_linklist_prepend_pool(ptr noundef nonnull %123, ptr noundef %209, ptr noundef %210) #9
  br label %211

211:                                              ; preds = %184, %191, %204, %207
  %212 = getelementptr inbounds %struct.BMLoop, ptr %185, i64 0, i32 4
  %213 = load ptr, ptr %212, align 8, !tbaa !55
  %214 = icmp eq ptr %213, %140
  br i1 %214, label %215, label %184, !llvm.loop !143

215:                                              ; preds = %211, %180
  %216 = getelementptr inbounds %struct.BMLoop, ptr %140, i64 0, i32 6
  %217 = load ptr, ptr %216, align 8, !tbaa !47
  %218 = icmp eq ptr %217, %138
  br i1 %218, label %219, label %139, !llvm.loop !144

219:                                              ; preds = %215
  %220 = load ptr, ptr %134, align 8, !tbaa !107
  %221 = icmp eq ptr %220, null
  br i1 %221, label %222, label %133, !llvm.loop !145

222:                                              ; preds = %219, %115
  call void @BLI_ghashIterator_init(ptr noundef nonnull %5, ptr noundef %117) #9
  %223 = getelementptr inbounds %struct.GHashIterator, ptr %5, i64 0, i32 1
  %224 = load ptr, ptr %223, align 8, !tbaa !122
  %225 = icmp eq ptr %224, null
  br i1 %225, label %237, label %226

226:                                              ; preds = %222
  %227 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 1
  br label %228

228:                                              ; preds = %226, %228
  %229 = phi ptr [ %224, %226 ], [ %235, %228 ]
  %230 = getelementptr inbounds %struct._gh_Entry, ptr %229, i64 0, i32 1
  %231 = load ptr, ptr %230, align 8, !tbaa !124
  %232 = getelementptr inbounds %struct._gh_Entry, ptr %229, i64 0, i32 2
  %233 = load ptr, ptr %232, align 8, !tbaa !146
  %234 = load ptr, ptr %227, align 8, !tbaa !127
  call void @BLI_ghash_insert(ptr noundef %234, ptr noundef %231, ptr noundef %233) #9
  call void @BLI_ghashIterator_step(ptr noundef nonnull %5) #9
  %235 = load ptr, ptr %223, align 8, !tbaa !122
  %236 = icmp eq ptr %235, null
  br i1 %236, label %237, label %228, !llvm.loop !147

237:                                              ; preds = %228, %222
  %238 = load i32, ptr %6, align 8, !tbaa !100
  %239 = icmp ult i32 %238, %2
  br i1 %239, label %240, label %247

240:                                              ; preds = %237
  %241 = shl i32 %2, 1
  %242 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !34
  %243 = load ptr, ptr %18, align 8, !tbaa !101
  %244 = zext i32 %241 to i64
  %245 = shl nuw nsw i64 %244, 3
  %246 = call ptr %242(ptr noundef %243, i64 noundef %245, ptr noundef nonnull @__func__.bm_uuidwalk_rehash_reserve) #9
  store ptr %246, ptr %18, align 8, !tbaa !101
  store i32 %241, ptr %6, align 8, !tbaa !100
  br label %247

247:                                              ; preds = %240, %237
  %248 = load ptr, ptr %18, align 8, !tbaa !101
  br i1 %20, label %343, label %249

249:                                              ; preds = %247
  %250 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 8
  %251 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 1
  %252 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 2
  br label %253

253:                                              ; preds = %249, %321
  %254 = phi ptr [ %325, %321 ], [ %1, %249 ]
  %255 = phi i32 [ %322, %321 ], [ 0, %249 ]
  %256 = getelementptr inbounds %struct.LinkNode, ptr %254, i64 0, i32 1
  %257 = load ptr, ptr %256, align 8, !tbaa !75
  %258 = load i64, ptr %250, align 8, !tbaa !131
  %259 = getelementptr inbounds %struct.BMFace, ptr %257, i64 0, i32 3
  %260 = load i32, ptr %259, align 8, !tbaa !65
  %261 = zext i32 %260 to i64
  %262 = mul i64 %258, 1013
  %263 = mul i64 %262, %261
  %264 = getelementptr inbounds %struct.BMFace, ptr %257, i64 0, i32 2
  %265 = load ptr, ptr %264, align 8, !tbaa !38
  br label %266

266:                                              ; preds = %278, %253
  %267 = phi i64 [ undef, %253 ], [ %279, %278 ]
  %268 = phi ptr [ %265, %253 ], [ %284, %278 ]
  %269 = phi i64 [ %263, %253 ], [ %282, %278 ]
  %270 = getelementptr inbounds %struct.BMLoop, ptr %268, i64 0, i32 1
  %271 = load ptr, ptr %270, align 8, !tbaa !43
  %272 = load ptr, ptr %251, align 8, !tbaa !127
  %273 = call ptr @BLI_ghash_lookup_p(ptr noundef %272, ptr noundef %271) #9
  %274 = icmp eq ptr %273, null
  br i1 %274, label %278, label %275

275:                                              ; preds = %266
  %276 = load ptr, ptr %273, align 8, !tbaa !34
  %277 = ptrtoint ptr %276 to i64
  br label %278

278:                                              ; preds = %275, %266
  %279 = phi i64 [ %267, %266 ], [ %277, %275 ]
  %280 = mul i64 %279, 11
  %281 = select i1 %274, i64 0, i64 %280
  %282 = xor i64 %281, %269
  %283 = getelementptr inbounds %struct.BMLoop, ptr %268, i64 0, i32 6
  %284 = load ptr, ptr %283, align 8, !tbaa !47
  %285 = icmp eq ptr %284, %265
  br i1 %285, label %286, label %266, !llvm.loop !136

286:                                              ; preds = %278
  %287 = load ptr, ptr %264, align 8, !tbaa !38
  br label %288

288:                                              ; preds = %315, %286
  %289 = phi i64 [ undef, %286 ], [ %316, %315 ]
  %290 = phi ptr [ %287, %286 ], [ %319, %315 ]
  %291 = phi i64 [ %282, %286 ], [ %317, %315 ]
  %292 = getelementptr inbounds %struct.BMLoop, ptr %290, i64 0, i32 4
  %293 = load ptr, ptr %292, align 8, !tbaa !55
  %294 = icmp eq ptr %293, %290
  br i1 %294, label %315, label %295

295:                                              ; preds = %288, %307
  %296 = phi i64 [ %308, %307 ], [ %289, %288 ]
  %297 = phi i64 [ %311, %307 ], [ %291, %288 ]
  %298 = phi ptr [ %313, %307 ], [ %293, %288 ]
  %299 = getelementptr inbounds %struct.BMLoop, ptr %298, i64 0, i32 3
  %300 = load ptr, ptr %299, align 8, !tbaa !56
  %301 = load ptr, ptr %252, align 8, !tbaa !121
  %302 = call ptr @BLI_ghash_lookup_p(ptr noundef %301, ptr noundef %300) #9
  %303 = icmp eq ptr %302, null
  br i1 %303, label %307, label %304

304:                                              ; preds = %295
  %305 = load ptr, ptr %302, align 8, !tbaa !34
  %306 = ptrtoint ptr %305 to i64
  br label %307

307:                                              ; preds = %304, %295
  %308 = phi i64 [ %296, %295 ], [ %306, %304 ]
  %309 = mul i64 %308, 17
  %310 = select i1 %303, i64 0, i64 %309
  %311 = xor i64 %310, %297
  %312 = getelementptr inbounds %struct.BMLoop, ptr %298, i64 0, i32 4
  %313 = load ptr, ptr %312, align 8, !tbaa !55
  %314 = icmp eq ptr %313, %290
  br i1 %314, label %315, label %295, !llvm.loop !137

315:                                              ; preds = %307, %288
  %316 = phi i64 [ %289, %288 ], [ %308, %307 ]
  %317 = phi i64 [ %291, %288 ], [ %311, %307 ]
  %318 = getelementptr inbounds %struct.BMLoop, ptr %290, i64 0, i32 6
  %319 = load ptr, ptr %318, align 8, !tbaa !47
  %320 = icmp eq ptr %319, %287
  br i1 %320, label %321, label %288, !llvm.loop !138

321:                                              ; preds = %315
  %322 = add i32 %255, 1
  %323 = zext i32 %255 to i64
  %324 = getelementptr inbounds i64, ptr %248, i64 %323
  store i64 %317, ptr %324, align 8, !tbaa !77
  %325 = load ptr, ptr %254, align 8, !tbaa !107
  %326 = icmp eq ptr %325, null
  br i1 %326, label %327, label %253, !llvm.loop !140

327:                                              ; preds = %321
  br i1 %20, label %343, label %328

328:                                              ; preds = %327
  %329 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 2
  br label %330

330:                                              ; preds = %330, %328
  %331 = phi ptr [ %1, %328 ], [ %341, %330 ]
  %332 = phi i32 [ 0, %328 ], [ %337, %330 ]
  %333 = getelementptr inbounds %struct.LinkNode, ptr %331, i64 0, i32 1
  %334 = load ptr, ptr %333, align 8, !tbaa !75
  %335 = load ptr, ptr %329, align 8, !tbaa !121
  %336 = call ptr @BLI_ghash_lookup_p(ptr noundef %335, ptr noundef %334) #9
  %337 = add i32 %332, 1
  %338 = zext i32 %332 to i64
  %339 = getelementptr inbounds i64, ptr %248, i64 %338
  %340 = load i64, ptr %339, align 8, !tbaa !77
  store i64 %340, ptr %336, align 8, !tbaa !77
  %341 = load ptr, ptr %331, align 8, !tbaa !107
  %342 = icmp eq ptr %341, null
  br i1 %342, label %343, label %330, !llvm.loop !148

343:                                              ; preds = %330, %247, %327
  %344 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 8
  %345 = load i64, ptr %344, align 8, !tbaa !131
  %346 = add i64 %345, 1
  store i64 %346, ptr %344, align 8, !tbaa !131
  %347 = load ptr, ptr %116, align 8, !tbaa !128
  call void @BLI_ghash_clear(ptr noundef %347, ptr noundef null, ptr noundef null) #9
  %348 = load ptr, ptr %118, align 8, !tbaa !129
  call void @BLI_gset_clear(ptr noundef %348, ptr noundef null) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  ret void
}

declare void @BLI_linklist_free_pool(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BLI_ghash_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @bm_uuidwalk_rehash(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.GHashIterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #9
  %3 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !127
  %5 = tail call i32 @BLI_ghash_size(ptr noundef %4) #9
  %6 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !121
  %8 = tail call i32 @BLI_ghash_size(ptr noundef %7) #9
  %9 = icmp sgt i32 %5, %8
  %10 = select i1 %9, ptr %3, ptr %6
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = tail call i32 @BLI_ghash_size(ptr noundef %11) #9
  %13 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 9, i32 4
  %14 = load i32, ptr %13, align 8, !tbaa !100
  %15 = icmp ult i32 %14, %12
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = shl i32 %12, 1
  %18 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !34
  %19 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 9, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !101
  %21 = zext i32 %17 to i64
  %22 = shl nuw nsw i64 %21, 3
  %23 = tail call ptr %18(ptr noundef %20, i64 noundef %22, ptr noundef nonnull @__func__.bm_uuidwalk_rehash_reserve) #9
  store ptr %23, ptr %19, align 8, !tbaa !101
  store i32 %17, ptr %13, align 8, !tbaa !100
  br label %24

24:                                               ; preds = %1, %16
  %25 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 9, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !101
  %27 = load ptr, ptr %3, align 8, !tbaa !127
  call void @BLI_ghashIterator_init(ptr noundef nonnull %2, ptr noundef %27) #9
  %28 = getelementptr inbounds %struct.GHashIterator, ptr %2, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !122
  %30 = icmp eq ptr %29, null
  br i1 %30, label %42, label %31

31:                                               ; preds = %24, %31
  %32 = phi ptr [ %40, %31 ], [ %29, %24 ]
  %33 = phi i32 [ %37, %31 ], [ 0, %24 ]
  %34 = getelementptr inbounds %struct._gh_Entry, ptr %32, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !124
  %36 = call fastcc i64 @bm_uuidwalk_calc_vert_uuid(ptr noundef %0, ptr noundef %35)
  %37 = add i32 %33, 1
  %38 = zext i32 %33 to i64
  %39 = getelementptr inbounds i64, ptr %26, i64 %38
  store i64 %36, ptr %39, align 8, !tbaa !77
  call void @BLI_ghashIterator_step(ptr noundef nonnull %2) #9
  %40 = load ptr, ptr %28, align 8, !tbaa !122
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %31, !llvm.loop !149

42:                                               ; preds = %31, %24
  %43 = getelementptr inbounds %struct.GHashIterator, ptr %2, i64 0, i32 1
  %44 = load ptr, ptr %3, align 8, !tbaa !127
  call void @BLI_ghashIterator_init(ptr noundef nonnull %2, ptr noundef %44) #9
  %45 = load ptr, ptr %43, align 8, !tbaa !122
  %46 = icmp eq ptr %45, null
  br i1 %46, label %57, label %47

47:                                               ; preds = %42, %47
  %48 = phi ptr [ %55, %47 ], [ %45, %42 ]
  %49 = phi i32 [ %51, %47 ], [ 0, %42 ]
  %50 = getelementptr inbounds %struct._gh_Entry, ptr %48, i64 0, i32 2
  %51 = add i32 %49, 1
  %52 = zext i32 %49 to i64
  %53 = getelementptr inbounds i64, ptr %26, i64 %52
  %54 = load i64, ptr %53, align 8, !tbaa !77
  store i64 %54, ptr %50, align 8, !tbaa !77
  call void @BLI_ghashIterator_step(ptr noundef nonnull %2) #9
  %55 = load ptr, ptr %43, align 8, !tbaa !122
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %47, !llvm.loop !150

57:                                               ; preds = %47, %42
  %58 = load ptr, ptr %6, align 8, !tbaa !121
  call void @BLI_ghashIterator_init(ptr noundef nonnull %2, ptr noundef %58) #9
  %59 = load ptr, ptr %43, align 8, !tbaa !122
  %60 = icmp eq ptr %59, null
  br i1 %60, label %137, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 8
  br label %63

63:                                               ; preds = %61, %131
  %64 = phi ptr [ %59, %61 ], [ %135, %131 ]
  %65 = phi i32 [ 0, %61 ], [ %132, %131 ]
  %66 = getelementptr inbounds %struct._gh_Entry, ptr %64, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !124
  %68 = load i64, ptr %62, align 8, !tbaa !131
  %69 = getelementptr inbounds %struct.BMFace, ptr %67, i64 0, i32 3
  %70 = load i32, ptr %69, align 8, !tbaa !65
  %71 = zext i32 %70 to i64
  %72 = mul i64 %68, 1013
  %73 = mul i64 %72, %71
  %74 = getelementptr inbounds %struct.BMFace, ptr %67, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !38
  br label %76

76:                                               ; preds = %88, %63
  %77 = phi i64 [ undef, %63 ], [ %89, %88 ]
  %78 = phi ptr [ %75, %63 ], [ %94, %88 ]
  %79 = phi i64 [ %73, %63 ], [ %92, %88 ]
  %80 = getelementptr inbounds %struct.BMLoop, ptr %78, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !43
  %82 = load ptr, ptr %3, align 8, !tbaa !127
  %83 = call ptr @BLI_ghash_lookup_p(ptr noundef %82, ptr noundef %81) #9
  %84 = icmp eq ptr %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %76
  %86 = load ptr, ptr %83, align 8, !tbaa !34
  %87 = ptrtoint ptr %86 to i64
  br label %88

88:                                               ; preds = %85, %76
  %89 = phi i64 [ %77, %76 ], [ %87, %85 ]
  %90 = mul i64 %89, 11
  %91 = select i1 %84, i64 0, i64 %90
  %92 = xor i64 %91, %79
  %93 = getelementptr inbounds %struct.BMLoop, ptr %78, i64 0, i32 6
  %94 = load ptr, ptr %93, align 8, !tbaa !47
  %95 = icmp eq ptr %94, %75
  br i1 %95, label %96, label %76, !llvm.loop !136

96:                                               ; preds = %88
  %97 = load ptr, ptr %74, align 8, !tbaa !38
  br label %98

98:                                               ; preds = %125, %96
  %99 = phi i64 [ undef, %96 ], [ %126, %125 ]
  %100 = phi ptr [ %97, %96 ], [ %129, %125 ]
  %101 = phi i64 [ %92, %96 ], [ %127, %125 ]
  %102 = getelementptr inbounds %struct.BMLoop, ptr %100, i64 0, i32 4
  %103 = load ptr, ptr %102, align 8, !tbaa !55
  %104 = icmp eq ptr %103, %100
  br i1 %104, label %125, label %105

105:                                              ; preds = %98, %117
  %106 = phi i64 [ %118, %117 ], [ %99, %98 ]
  %107 = phi i64 [ %121, %117 ], [ %101, %98 ]
  %108 = phi ptr [ %123, %117 ], [ %103, %98 ]
  %109 = getelementptr inbounds %struct.BMLoop, ptr %108, i64 0, i32 3
  %110 = load ptr, ptr %109, align 8, !tbaa !56
  %111 = load ptr, ptr %6, align 8, !tbaa !121
  %112 = call ptr @BLI_ghash_lookup_p(ptr noundef %111, ptr noundef %110) #9
  %113 = icmp eq ptr %112, null
  br i1 %113, label %117, label %114

114:                                              ; preds = %105
  %115 = load ptr, ptr %112, align 8, !tbaa !34
  %116 = ptrtoint ptr %115 to i64
  br label %117

117:                                              ; preds = %114, %105
  %118 = phi i64 [ %106, %105 ], [ %116, %114 ]
  %119 = mul i64 %118, 17
  %120 = select i1 %113, i64 0, i64 %119
  %121 = xor i64 %120, %107
  %122 = getelementptr inbounds %struct.BMLoop, ptr %108, i64 0, i32 4
  %123 = load ptr, ptr %122, align 8, !tbaa !55
  %124 = icmp eq ptr %123, %100
  br i1 %124, label %125, label %105, !llvm.loop !137

125:                                              ; preds = %117, %98
  %126 = phi i64 [ %99, %98 ], [ %118, %117 ]
  %127 = phi i64 [ %101, %98 ], [ %121, %117 ]
  %128 = getelementptr inbounds %struct.BMLoop, ptr %100, i64 0, i32 6
  %129 = load ptr, ptr %128, align 8, !tbaa !47
  %130 = icmp eq ptr %129, %97
  br i1 %130, label %131, label %98, !llvm.loop !138

131:                                              ; preds = %125
  %132 = add i32 %65, 1
  %133 = zext i32 %65 to i64
  %134 = getelementptr inbounds i64, ptr %26, i64 %133
  store i64 %127, ptr %134, align 8, !tbaa !77
  call void @BLI_ghashIterator_step(ptr noundef nonnull %2) #9
  %135 = load ptr, ptr %43, align 8, !tbaa !122
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %63, !llvm.loop !151

137:                                              ; preds = %131, %57
  %138 = load ptr, ptr %6, align 8, !tbaa !121
  call void @BLI_ghashIterator_init(ptr noundef nonnull %2, ptr noundef %138) #9
  %139 = load ptr, ptr %43, align 8, !tbaa !122
  %140 = icmp eq ptr %139, null
  br i1 %140, label %151, label %141

141:                                              ; preds = %137, %141
  %142 = phi ptr [ %149, %141 ], [ %139, %137 ]
  %143 = phi i32 [ %145, %141 ], [ 0, %137 ]
  %144 = getelementptr inbounds %struct._gh_Entry, ptr %142, i64 0, i32 2
  %145 = add i32 %143, 1
  %146 = zext i32 %143 to i64
  %147 = getelementptr inbounds i64, ptr %26, i64 %146
  %148 = load i64, ptr %147, align 8, !tbaa !77
  store i64 %148, ptr %144, align 8, !tbaa !77
  call void @BLI_ghashIterator_step(ptr noundef nonnull %2) #9
  %149 = load ptr, ptr %43, align 8, !tbaa !122
  %150 = icmp eq ptr %149, null
  br i1 %150, label %151, label %141, !llvm.loop !152

151:                                              ; preds = %141, %137
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #9
  ret void
}

declare void @BLI_ghashIterator_init(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_ghashIterator_step(ptr noundef) local_unnamed_addr #2

declare i32 @BM_edge_face_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @bm_face_len_cmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !65
  %5 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !65
  %7 = icmp sgt i32 %4, %6
  %8 = icmp slt i32 %4, %6
  %9 = sext i1 %8 to i32
  %10 = select i1 %7, i32 1, i32 %9
  ret i32 %10
}

declare void @BLI_mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_mempool_alloc(ptr noundef) local_unnamed_addr #2

declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_ghash_clear(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_sortlist(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @facestep_sort(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds %struct.UUIDFaceStepItem, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !111
  %5 = getelementptr inbounds %struct.UUIDFaceStepItem, ptr %1, i64 0, i32 2
  %6 = load i64, ptr %5, align 8, !tbaa !111
  %7 = icmp ugt i64 %4, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @bm_uuidwalk_calc_vert_uuid(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 8
  %6 = load i64, ptr %5, align 8, !tbaa !131
  %7 = mul i64 %6, 1031
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #9
  %8 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 4, ptr %8, align 4, !tbaa !59
  %9 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__edge_of_vert_begin, ptr %9, align 8, !tbaa !61
  %10 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__edge_of_vert_step, ptr %10, align 8, !tbaa !62
  store ptr %1, ptr %3, align 8, !tbaa !63
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %3) #9
  %11 = load ptr, ptr %10, align 8, !tbaa !62
  %12 = call ptr %11(ptr noundef nonnull %3) #9
  %13 = icmp eq ptr %12, null
  br i1 %13, label %48, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 1
  br label %16

16:                                               ; preds = %14, %35
  %17 = phi i64 [ %7, %14 ], [ %41, %35 ]
  %18 = phi ptr [ %12, %14 ], [ %43, %35 ]
  %19 = phi i32 [ 0, %14 ], [ %39, %35 ]
  %20 = phi i64 [ undef, %14 ], [ %36, %35 ]
  %21 = getelementptr inbounds %struct.BMEdge, ptr %18, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !58
  %23 = icmp eq ptr %22, %1
  %24 = getelementptr inbounds %struct.BMEdge, ptr %18, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !70
  %26 = icmp eq ptr %25, %1
  %27 = select i1 %26, ptr %22, ptr null
  %28 = select i1 %23, ptr %25, ptr %27
  %29 = load ptr, ptr %15, align 8, !tbaa !127
  %30 = call ptr @BLI_ghash_lookup_p(ptr noundef %29, ptr noundef %28) #9
  %31 = icmp ne ptr %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %16
  %33 = load ptr, ptr %30, align 8, !tbaa !34
  %34 = ptrtoint ptr %33 to i64
  br label %35

35:                                               ; preds = %16, %32
  %36 = phi i64 [ %20, %16 ], [ %34, %32 ]
  %37 = mul i64 %36, 7
  %38 = zext i1 %31 to i32
  %39 = add i32 %19, %38
  %40 = select i1 %31, i64 %37, i64 0
  %41 = xor i64 %40, %17
  %42 = load ptr, ptr %10, align 8, !tbaa !62
  %43 = call ptr %42(ptr noundef nonnull %3) #9
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %16, !llvm.loop !153

45:                                               ; preds = %35
  %46 = mul i32 %39, 43
  %47 = zext i32 %46 to i64
  br label %48

48:                                               ; preds = %45, %2
  %49 = phi i64 [ 0, %2 ], [ %47, %45 ]
  %50 = phi i64 [ %7, %2 ], [ %41, %45 ]
  %51 = xor i64 %50, %49
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  %52 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 5, ptr %52, align 4, !tbaa !59
  %53 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__face_of_vert_begin, ptr %53, align 8, !tbaa !61
  %54 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__face_of_vert_step, ptr %54, align 8, !tbaa !62
  store ptr %1, ptr %4, align 8, !tbaa !63
  call void @bmiter__face_of_vert_begin(ptr noundef nonnull %4) #9
  %55 = load ptr, ptr %54, align 8, !tbaa !62
  %56 = call ptr %55(ptr noundef nonnull %4) #9
  %57 = icmp eq ptr %56, null
  br i1 %57, label %84, label %58

58:                                               ; preds = %48
  %59 = getelementptr inbounds %struct.UUIDWalk, ptr %0, i64 0, i32 2
  br label %60

60:                                               ; preds = %58, %71
  %61 = phi ptr [ %56, %58 ], [ %79, %71 ]
  %62 = phi i32 [ 0, %58 ], [ %77, %71 ]
  %63 = phi i64 [ %51, %58 ], [ %75, %71 ]
  %64 = phi i64 [ undef, %58 ], [ %72, %71 ]
  %65 = load ptr, ptr %59, align 8, !tbaa !121
  %66 = call ptr @BLI_ghash_lookup_p(ptr noundef %65, ptr noundef nonnull %61) #9
  %67 = icmp ne ptr %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = load ptr, ptr %66, align 8, !tbaa !34
  %70 = ptrtoint ptr %69 to i64
  br label %71

71:                                               ; preds = %60, %68
  %72 = phi i64 [ %64, %60 ], [ %70, %68 ]
  %73 = mul i64 %72, 13
  %74 = select i1 %67, i64 %73, i64 0
  %75 = xor i64 %74, %63
  %76 = zext i1 %67 to i32
  %77 = add i32 %62, %76
  %78 = load ptr, ptr %54, align 8, !tbaa !62
  %79 = call ptr %78(ptr noundef nonnull %4) #9
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %60, !llvm.loop !154

81:                                               ; preds = %71
  %82 = mul i32 %77, 53
  %83 = zext i32 %82 to i64
  br label %84

84:                                               ; preds = %81, %48
  %85 = phi i64 [ %51, %48 ], [ %75, %81 ]
  %86 = phi i64 [ 0, %48 ], [ %83, %81 ]
  %87 = xor i64 %85, %86
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #9
  ret i64 %87
}

declare zeroext i8 @BLI_gset_haskey(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_gset_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_gset_clear(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_pophead(ptr noundef) local_unnamed_addr #2

declare void @BLI_mempool_clear(ptr noundef) local_unnamed_addr #2

declare void @BLI_gset_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }

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
!38 = !{!39, !35, i64 24}
!39 = !{!"BMFace", !40, i64 0, !35, i64 16, !35, i64 24, !41, i64 32, !36, i64 36, !42, i64 48}
!40 = !{!"BMHeader", !35, i64 0, !41, i64 8, !36, i64 12, !36, i64 13, !36, i64 14}
!41 = !{!"int", !36, i64 0}
!42 = !{!"short", !36, i64 0}
!43 = !{!44, !35, i64 16}
!44 = !{!"BMLoop", !40, i64 0, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64}
!45 = !{!40, !36, i64 13}
!46 = !{!44, !35, i64 24}
!47 = !{!44, !35, i64 56}
!48 = distinct !{!48, !49, !50}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!"llvm.loop.unroll.disable"}
!51 = distinct !{!51, !49, !50}
!52 = !{!53, !35, i64 40}
!53 = !{!"BMEdge", !40, i64 0, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !54, i64 48, !54, i64 64}
!54 = !{!"BMDiskLink", !35, i64 0, !35, i64 8}
!55 = !{!44, !35, i64 40}
!56 = !{!44, !35, i64 32}
!57 = distinct !{!57, !49, !50}
!58 = !{!53, !35, i64 24}
!59 = !{!60, !36, i64 60}
!60 = !{!"BMIter", !36, i64 0, !35, i64 40, !35, i64 48, !41, i64 56, !36, i64 60}
!61 = !{!60, !35, i64 40}
!62 = !{!60, !35, i64 48}
!63 = !{!36, !36, i64 0}
!64 = !{!44, !35, i64 64}
!65 = !{!39, !41, i64 32}
!66 = distinct !{!66, !49, !50}
!67 = distinct !{!67, !49, !50}
!68 = distinct !{!68, !49, !50}
!69 = distinct !{!69, !49, !50}
!70 = !{!53, !35, i64 32}
!71 = distinct !{!71, !49, !50}
!72 = distinct !{!72, !49, !50}
!73 = distinct !{!73, !49, !50}
!74 = distinct !{!74, !49, !50}
!75 = !{!76, !35, i64 8}
!76 = !{!"LinkNode", !35, i64 0, !35, i64 8}
!77 = !{!78, !78, i64 0}
!78 = !{!"long", !36, i64 0}
!79 = distinct !{!79, !49, !50}
!80 = distinct !{!80, !49, !50}
!81 = distinct !{!81, !49, !50}
!82 = distinct !{!82, !49, !50}
!83 = distinct !{!83, !49, !50}
!84 = distinct !{!84, !49, !50}
!85 = !{!86, !41, i64 0}
!86 = !{!"BMesh", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !36, i64 28, !36, i64 29, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !41, i64 88, !41, i64 92, !41, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !41, i64 128, !35, i64 136, !87, i64 144, !87, i64 344, !87, i64 544, !87, i64 744, !42, i64 944, !41, i64 948, !41, i64 952, !41, i64 956, !88, i64 960, !35, i64 976, !88, i64 984, !35, i64 1000}
!87 = !{!"CustomData", !35, i64 0, !36, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !35, i64 184, !35, i64 192}
!88 = !{!"ListBase", !35, i64 0, !35, i64 8}
!89 = !{!86, !35, i64 32}
!90 = distinct !{!90, !49, !50}
!91 = distinct !{!91, !49, !50}
!92 = distinct !{!92, !49, !50}
!93 = !{!86, !35, i64 40}
!94 = !{!40, !41, i64 8}
!95 = distinct !{!95, !49, !50}
!96 = distinct !{!96, !49, !50}
!97 = !{!98, !36, i64 64}
!98 = !{!"UUIDWalk", !88, i64 0, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !36, i64 64, !78, i64 72, !99, i64 80}
!99 = !{!"", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !41, i64 32}
!100 = !{!98, !41, i64 112}
!101 = !{!98, !35, i64 104}
!102 = !{!98, !35, i64 0}
!103 = !{!104, !35, i64 16}
!104 = !{!"UUIDFaceStep", !35, i64 0, !35, i64 8, !35, i64 16, !88, i64 24}
!105 = !{!104, !35, i64 0}
!106 = !{!98, !35, i64 48}
!107 = !{!76, !35, i64 0}
!108 = !{!98, !35, i64 32}
!109 = distinct !{!109, !49, !50}
!110 = !{i8 0, i8 2}
!111 = !{!112, !78, i64 16}
!112 = !{!"UUIDFaceStepItem", !35, i64 0, !35, i64 8, !78, i64 16, !35, i64 24, !41, i64 32}
!113 = !{!112, !35, i64 0}
!114 = distinct !{!114, !49, !50}
!115 = !{!112, !41, i64 32}
!116 = !{!112, !35, i64 24}
!117 = distinct !{!117, !49, !50}
!118 = !{!98, !35, i64 56}
!119 = distinct !{!119, !49, !50}
!120 = distinct !{!120, !49, !50}
!121 = !{!98, !35, i64 24}
!122 = !{!123, !35, i64 8}
!123 = !{!"GHashIterator", !35, i64 0, !35, i64 8, !41, i64 16}
!124 = !{!125, !35, i64 8}
!125 = !{!"_gh_Entry", !35, i64 0, !35, i64 8, !35, i64 16}
!126 = distinct !{!126, !49, !50}
!127 = !{!98, !35, i64 16}
!128 = !{!98, !35, i64 80}
!129 = !{!98, !35, i64 88}
!130 = !{!98, !35, i64 96}
!131 = !{!98, !78, i64 72}
!132 = distinct !{!132, !49, !50}
!133 = distinct !{!133, !49, !50}
!134 = distinct !{!134, !49, !50}
!135 = distinct !{!135, !49, !50}
!136 = distinct !{!136, !49, !50}
!137 = distinct !{!137, !49, !50}
!138 = distinct !{!138, !49, !50}
!139 = distinct !{!139, !49, !50}
!140 = distinct !{!140, !49, !50}
!141 = distinct !{!141, !49, !50}
!142 = distinct !{!142, !49, !50}
!143 = distinct !{!143, !49, !50}
!144 = distinct !{!144, !49, !50}
!145 = distinct !{!145, !49, !50}
!146 = !{!125, !35, i64 16}
!147 = distinct !{!147, !49, !50}
!148 = distinct !{!148, !49, !50}
!149 = distinct !{!149, !49, !50}
!150 = distinct !{!150, !49, !50}
!151 = distinct !{!151, !49, !50}
!152 = distinct !{!152, !49, !50}
!153 = distinct !{!153, !49, !50}
!154 = distinct !{!154, !49, !50}
