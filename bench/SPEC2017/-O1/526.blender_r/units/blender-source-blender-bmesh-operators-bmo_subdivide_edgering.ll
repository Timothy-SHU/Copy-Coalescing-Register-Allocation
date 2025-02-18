; ModuleID = 'blender/source/blender/bmesh/operators/bmo_subdivide_edgering.c'
source_filename = "blender/source/blender/bmesh/operators/bmo_subdivide_edgering.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMIter = type { %union.anon.0, ptr, ptr, i32, i8 }
%union.anon.0 = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.GHashPair = type { ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMOIter = type { ptr, i32, %struct.GHashIterator, ptr, i8 }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.GSetIterator = type { %struct.GHashIterator }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMFlagLayer = type { i16 }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.LoopPairStore = type { ptr, ptr, ptr, ptr }
%struct.LinkData = type { ptr, ptr, ptr }
%struct._gh_Entry = type { ptr, ptr, ptr }
%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon = type { ptr, [8 x i8] }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }

@.str = private unnamed_addr constant [5 x i8] c"cuts\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"interp_mode\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"smooth\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"profile_shape\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"profile_shape_factor\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"edges\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"No edge rings found\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Edge-ring pair isn't connected\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Edge-rings are not connected\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [10 x i8] c"faces.out\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.bm_edgering_pair_store_create = private unnamed_addr constant [30 x i8] c"bm_edgering_pair_store_create\00", align 1
@__func__.bm_edgering_pair_interpolate = private unnamed_addr constant [29 x i8] c"bm_edgering_pair_interpolate\00", align 1
@__func__.bm_edgering_pair_calc = private unnamed_addr constant [22 x i8] c"bm_edgering_pair_calc\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @bmo_subdivide_edgering_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.GHashPair, align 8
  %5 = alloca %struct.ListBase, align 8
  %6 = alloca %struct.BMOIter, align 8
  %7 = alloca %struct.BMIter, align 8
  %8 = alloca %struct.BMIter, align 8
  %9 = alloca %struct.GSetIterator, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #8
  %10 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str) #8
  %11 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str.1) #8
  %12 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str.2) #8
  %13 = add i32 %10, 2
  %14 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str.3) #8
  %15 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str.4) #8
  %16 = fcmp une float %15, 0.000000e+00
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = sext i32 %13 to i64
  %19 = shl nsw i64 %18, 2
  %20 = alloca i8, i64 %19, align 16
  br label %21

21:                                               ; preds = %2, %17
  %22 = phi ptr [ %20, %17 ], [ null, %2 ]
  tail call void @BMO_slot_buffer_flag_enable(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.5, i8 noundef zeroext 2, i16 noundef signext 1) #8
  tail call void @BM_mesh_elem_hflag_disable_all(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext 16, i8 noundef zeroext 0) #8
  %23 = call ptr @BMO_iter_new(ptr noundef nonnull %6, ptr noundef %1, ptr noundef nonnull @.str.5, i8 noundef zeroext 2) #8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %108, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 4
  %27 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  %28 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  %29 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %30 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 4
  %31 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  %32 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  br label %33

33:                                               ; preds = %25, %105
  %34 = phi ptr [ %23, %25 ], [ %106, %105 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #8
  store i8 8, ptr %26, align 4, !tbaa !34
  store ptr @bmiter__face_of_edge_begin, ptr %27, align 8, !tbaa !40
  store ptr @bmiter__face_of_edge_step, ptr %28, align 8, !tbaa !41
  store ptr %34, ptr %7, align 8, !tbaa !42
  call void @bmiter__face_of_edge_begin(ptr noundef nonnull %7) #8
  %35 = load ptr, ptr %28, align 8, !tbaa !41
  %36 = call ptr %35(ptr noundef nonnull %7) #8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %105, label %38

38:                                               ; preds = %33, %101
  %39 = phi ptr [ %103, %101 ], [ %36, %33 ]
  %40 = getelementptr inbounds %struct.BMFace, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !43
  %42 = load i32, ptr %29, align 8, !tbaa !47
  %43 = sext i32 %42 to i64
  %44 = getelementptr %struct.BMFlagLayer, ptr %41, i64 %43
  %45 = getelementptr %struct.BMFlagLayer, ptr %44, i64 -1
  %46 = load i16, ptr %45, align 2, !tbaa !51
  %47 = and i16 %46, 1
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %49, label %101

49:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #8
  store i8 11, ptr %30, align 4, !tbaa !34
  store ptr @bmiter__loop_of_face_begin, ptr %31, align 8, !tbaa !40
  store ptr @bmiter__loop_of_face_step, ptr %32, align 8, !tbaa !41
  store ptr %39, ptr %8, align 8, !tbaa !42
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %8) #8
  %50 = load ptr, ptr %32, align 8, !tbaa !41
  %51 = call ptr %50(ptr noundef nonnull %8) #8
  %52 = icmp eq ptr %51, null
  br i1 %52, label %100, label %53

53:                                               ; preds = %49, %68
  %54 = phi ptr [ %70, %68 ], [ %51, %49 ]
  %55 = getelementptr inbounds %struct.BMLoop, ptr %54, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !53
  %57 = getelementptr inbounds %struct.BMEdge, ptr %56, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !55
  %59 = load i32, ptr %29, align 8, !tbaa !47
  %60 = sext i32 %59 to i64
  %61 = getelementptr %struct.BMFlagLayer, ptr %58, i64 %60
  %62 = getelementptr %struct.BMFlagLayer, ptr %61, i64 -1
  %63 = load i16, ptr %62, align 2, !tbaa !51
  %64 = and i16 %63, 1
  %65 = icmp eq i16 %64, 0
  %66 = icmp eq ptr %34, %56
  %67 = or i1 %66, %65
  br i1 %67, label %68, label %72

68:                                               ; preds = %53
  %69 = load ptr, ptr %32, align 8, !tbaa !41
  %70 = call ptr %69(ptr noundef nonnull %8) #8
  %71 = icmp eq ptr %70, null
  br i1 %71, label %100, label %53, !llvm.loop !58

72:                                               ; preds = %53
  %73 = load ptr, ptr %40, align 8, !tbaa !43
  %74 = getelementptr %struct.BMFlagLayer, ptr %73, i64 %60
  %75 = getelementptr %struct.BMFlagLayer, ptr %74, i64 -1
  %76 = load i16, ptr %75, align 2, !tbaa !51
  %77 = or i16 %76, 1
  store i16 %77, ptr %75, align 2, !tbaa !51
  store i8 11, ptr %30, align 4, !tbaa !34
  store ptr @bmiter__loop_of_face_begin, ptr %31, align 8, !tbaa !40
  store ptr @bmiter__loop_of_face_step, ptr %32, align 8, !tbaa !41
  store ptr %39, ptr %8, align 8, !tbaa !42
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %8) #8
  %78 = load ptr, ptr %32, align 8, !tbaa !41
  %79 = call ptr %78(ptr noundef nonnull %8) #8
  %80 = icmp eq ptr %79, null
  br i1 %80, label %100, label %81

81:                                               ; preds = %72, %96
  %82 = phi ptr [ %98, %96 ], [ %79, %72 ]
  %83 = getelementptr inbounds %struct.BMLoop, ptr %82, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !53
  %85 = getelementptr inbounds %struct.BMEdge, ptr %84, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !55
  %87 = load i32, ptr %29, align 8, !tbaa !47
  %88 = sext i32 %87 to i64
  %89 = getelementptr %struct.BMFlagLayer, ptr %86, i64 %88
  %90 = getelementptr %struct.BMFlagLayer, ptr %89, i64 -1
  %91 = load i16, ptr %90, align 2, !tbaa !51
  %92 = and i16 %91, 1
  %93 = icmp eq i16 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %81
  %95 = or i16 %91, 2
  store i16 %95, ptr %90, align 2, !tbaa !51
  br label %96

96:                                               ; preds = %81, %94
  %97 = load ptr, ptr %32, align 8, !tbaa !41
  %98 = call ptr %97(ptr noundef nonnull %8) #8
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %81, !llvm.loop !61

100:                                              ; preds = %68, %96, %49, %72
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #8
  br label %101

101:                                              ; preds = %38, %100
  %102 = load ptr, ptr %28, align 8, !tbaa !41
  %103 = call ptr %102(ptr noundef nonnull %7) #8
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %38, !llvm.loop !62

105:                                              ; preds = %101, %33
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #8
  %106 = call ptr @BMO_iter_step(ptr noundef nonnull %6) #8
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %33, !llvm.loop !63

108:                                              ; preds = %105, %21
  %109 = icmp ne ptr %22, null
  %110 = icmp sgt i32 %10, -2
  %111 = select i1 %109, i1 %110, i1 false
  br i1 %111, label %112, label %131

112:                                              ; preds = %108
  %113 = add nsw i32 %10, 1
  %114 = sitofp i32 %113 to float
  %115 = call i32 @llvm.smax.i32(i32 %13, i32 1)
  %116 = zext nneg i32 %115 to i64
  br label %117

117:                                              ; preds = %112, %117
  %118 = phi i64 [ 0, %112 ], [ %129, %117 ]
  %119 = trunc i64 %118 to i32
  %120 = sitofp i32 %119 to float
  %121 = fdiv float %120, %114
  %122 = fsub float 5.000000e-01, %121
  %123 = call float @llvm.fabs.f32(float %122)
  %124 = call float @llvm.fmuladd.f32(float %123, float -2.000000e+00, float 1.000000e+00)
  %125 = call float @llvm.fabs.f32(float %124)
  %126 = call float @bmesh_subd_falloff_calc(i32 noundef %14, float noundef %125) #8
  %127 = call float @llvm.fmuladd.f32(float %126, float %15, float 1.000000e+00)
  %128 = getelementptr inbounds float, ptr %22, i64 %118
  store float %127, ptr %128, align 4, !tbaa !64
  %129 = add nuw nsw i64 %118, 1
  %130 = icmp eq i64 %129, %116
  br i1 %130, label %131, label %117, !llvm.loop !66

131:                                              ; preds = %117, %108
  %132 = call i32 @BM_mesh_edgeloops_find(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull @bm_edge_rim_test_cb, ptr noundef %0) #8
  %133 = icmp slt i32 %132, 2
  br i1 %133, label %312, label %134

134:                                              ; preds = %131
  %135 = icmp eq i32 %132, 2
  br i1 %135, label %136, label %161

136:                                              ; preds = %134
  %137 = load ptr, ptr %5, align 8, !tbaa !67
  %138 = getelementptr inbounds %struct.ListBase, ptr %5, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !68
  %140 = call fastcc zeroext i8 @bm_edgeloop_check_overlap_all(ptr noundef %0, ptr noundef %137, ptr noundef %139), !range !69
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %144, label %142

142:                                              ; preds = %136
  %143 = call fastcc ptr @bm_edgering_pair_store_create(ptr noundef %0, ptr noundef %137, ptr noundef %139, i32 noundef %11)
  br label %144

144:                                              ; preds = %136, %142
  %145 = phi ptr [ %143, %142 ], [ null, %136 ]
  %146 = icmp eq ptr %145, null
  br i1 %146, label %312, label %147

147:                                              ; preds = %144
  call fastcc void @bm_edgering_pair_ringsubd(ptr noundef %0, ptr noundef nonnull %145, ptr noundef %137, ptr noundef %139, i32 noundef %11, i32 noundef %10, float noundef %12, ptr noundef %22)
  %148 = icmp eq i32 %11, 2
  br i1 %148, label %149, label %159

149:                                              ; preds = %147
  %150 = load ptr, ptr @MEM_freeN, align 8, !tbaa !70
  %151 = load ptr, ptr %145, align 8, !tbaa !71
  call void %150(ptr noundef %151) #8
  %152 = load ptr, ptr @MEM_freeN, align 8, !tbaa !70
  %153 = getelementptr inbounds %struct.LoopPairStore, ptr %145, i64 0, i32 1
  %154 = load ptr, ptr %153, align 8, !tbaa !73
  call void %152(ptr noundef %154) #8
  %155 = getelementptr inbounds %struct.LoopPairStore, ptr %145, i64 0, i32 2
  %156 = load ptr, ptr %155, align 8, !tbaa !74
  call void @BLI_ghash_free(ptr noundef %156, ptr noundef null, ptr noundef null) #8
  %157 = getelementptr inbounds %struct.LoopPairStore, ptr %145, i64 0, i32 3
  %158 = load ptr, ptr %157, align 8, !tbaa !75
  call void @BLI_ghash_free(ptr noundef %158, ptr noundef null, ptr noundef null) #8
  br label %159

159:                                              ; preds = %147, %149
  %160 = load ptr, ptr @MEM_freeN, align 8, !tbaa !70
  call void %160(ptr noundef nonnull %145) #8
  call void @BM_mesh_edgeloops_free(ptr noundef nonnull %5) #8
  br label %310

161:                                              ; preds = %134
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #8
  %162 = call ptr @BLI_gset_pair_new(ptr noundef nonnull @__func__.bm_edgering_pair_calc) #8
  %163 = call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @__func__.bm_edgering_pair_calc) #8
  %164 = load ptr, ptr %5, align 8, !tbaa !70
  %165 = icmp eq ptr %164, null
  br i1 %165, label %166, label %175

166:                                              ; preds = %185, %161
  %167 = load ptr, ptr %5, align 8, !tbaa !70
  %168 = icmp eq ptr %167, null
  br i1 %168, label %237, label %169

169:                                              ; preds = %166
  %170 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  %171 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  %172 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  %173 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %174 = getelementptr inbounds %struct.GHashPair, ptr %4, i64 0, i32 1
  br label %188

175:                                              ; preds = %161, %185
  %176 = phi ptr [ %186, %185 ], [ %164, %161 ]
  %177 = call ptr @BM_edgeloop_verts_get(ptr noundef nonnull %176) #8
  %178 = load ptr, ptr %177, align 8, !tbaa !67
  br label %179

179:                                              ; preds = %179, %175
  %180 = phi ptr [ %178, %175 ], [ %183, %179 ]
  %181 = getelementptr inbounds %struct.LinkData, ptr %180, i64 0, i32 2
  %182 = load ptr, ptr %181, align 8, !tbaa !76
  call void @BLI_ghash_insert(ptr noundef %163, ptr noundef %182, ptr noundef nonnull %176) #8
  %183 = load ptr, ptr %180, align 8, !tbaa !78
  %184 = icmp eq ptr %183, null
  br i1 %184, label %185, label %179, !llvm.loop !79

185:                                              ; preds = %179
  %186 = load ptr, ptr %176, align 8, !tbaa !70
  %187 = icmp eq ptr %186, null
  br i1 %187, label %166, label %175, !llvm.loop !80

188:                                              ; preds = %169, %234
  %189 = phi ptr [ %167, %169 ], [ %235, %234 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #8
  %190 = call ptr @BM_edgeloop_verts_get(ptr noundef nonnull %189) #8
  %191 = load ptr, ptr %190, align 8, !tbaa !67
  %192 = getelementptr inbounds %struct.LinkData, ptr %191, i64 0, i32 2
  %193 = load ptr, ptr %192, align 8, !tbaa !76
  store i8 4, ptr %170, align 4, !tbaa !34
  store ptr @bmiter__edge_of_vert_begin, ptr %171, align 8, !tbaa !40
  store ptr @bmiter__edge_of_vert_step, ptr %172, align 8, !tbaa !41
  store ptr %193, ptr %3, align 8, !tbaa !42
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %3) #8
  %194 = load ptr, ptr %172, align 8, !tbaa !41
  %195 = call ptr %194(ptr noundef nonnull %3) #8
  %196 = icmp eq ptr %195, null
  br i1 %196, label %234, label %197

197:                                              ; preds = %188, %230
  %198 = phi ptr [ %232, %230 ], [ %195, %188 ]
  %199 = getelementptr inbounds %struct.BMEdge, ptr %198, i64 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !55
  %201 = load i32, ptr %173, align 8, !tbaa !47
  %202 = sext i32 %201 to i64
  %203 = getelementptr %struct.BMFlagLayer, ptr %200, i64 %202
  %204 = getelementptr %struct.BMFlagLayer, ptr %203, i64 -1
  %205 = load i16, ptr %204, align 2, !tbaa !51
  %206 = and i16 %205, 1
  %207 = icmp eq i16 %206, 0
  br i1 %207, label %230, label %208

208:                                              ; preds = %197
  %209 = getelementptr inbounds %struct.BMEdge, ptr %198, i64 0, i32 2
  %210 = load ptr, ptr %209, align 8, !tbaa !81
  %211 = icmp eq ptr %210, %193
  %212 = getelementptr inbounds %struct.BMEdge, ptr %198, i64 0, i32 3
  %213 = load ptr, ptr %212, align 8, !tbaa !82
  %214 = icmp eq ptr %213, %193
  %215 = select i1 %214, ptr %210, ptr null
  %216 = select i1 %211, ptr %213, ptr %215
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  %217 = call ptr @BLI_ghash_lookup(ptr noundef %163, ptr noundef %216) #8
  %218 = icmp eq ptr %217, null
  br i1 %218, label %229, label %219

219:                                              ; preds = %208
  store ptr %189, ptr %4, align 8, !tbaa !83
  store ptr %217, ptr %174, align 8, !tbaa !85
  %220 = icmp ugt ptr %189, %217
  br i1 %220, label %221, label %222

221:                                              ; preds = %219
  store ptr %217, ptr %4, align 8, !tbaa !83
  store ptr %189, ptr %174, align 8, !tbaa !85
  br label %222

222:                                              ; preds = %221, %219
  %223 = call zeroext i8 @BLI_gset_haskey(ptr noundef %162, ptr noundef nonnull %4) #8
  %224 = icmp eq i8 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %222
  %226 = load ptr, ptr %4, align 8, !tbaa !83
  %227 = load ptr, ptr %174, align 8, !tbaa !85
  %228 = call ptr @BLI_ghashutil_pairalloc(ptr noundef %226, ptr noundef %227) #8
  call void @BLI_gset_insert(ptr noundef %162, ptr noundef %228) #8
  br label %229

229:                                              ; preds = %225, %222, %208
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  br label %230

230:                                              ; preds = %229, %197
  %231 = load ptr, ptr %172, align 8, !tbaa !41
  %232 = call ptr %231(ptr noundef nonnull %3) #8
  %233 = icmp eq ptr %232, null
  br i1 %233, label %234, label %197, !llvm.loop !86

234:                                              ; preds = %230, %188
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #8
  %235 = load ptr, ptr %189, align 8, !tbaa !70
  %236 = icmp eq ptr %235, null
  br i1 %236, label %237, label %188, !llvm.loop !87

237:                                              ; preds = %234, %166
  call void @BLI_ghash_free(ptr noundef %163, ptr noundef null, ptr noundef null) #8
  %238 = call i32 @BLI_gset_size(ptr noundef %162) #8
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %237
  call void @BLI_gset_free(ptr noundef %162, ptr noundef null) #8
  br label %241

241:                                              ; preds = %237, %240
  %242 = phi ptr [ null, %240 ], [ %162, %237 ]
  %243 = icmp eq ptr %242, null
  br i1 %243, label %244, label %245

244:                                              ; preds = %241
  call void @BMO_error_raise(ptr noundef %0, ptr noundef %1, i32 noundef 8, ptr noundef nonnull @.str.8) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #8
  call void @BM_mesh_edgeloops_free(ptr noundef nonnull %5) #8
  br label %316

245:                                              ; preds = %241
  %246 = call i32 @BLI_gset_size(ptr noundef nonnull %242) #8
  %247 = sext i32 %246 to i64
  %248 = shl nsw i64 %247, 3
  %249 = alloca i8, i64 %248, align 16
  call void @BLI_ghashIterator_init(ptr noundef nonnull %9, ptr noundef nonnull %242) #8
  %250 = getelementptr inbounds %struct.GHashIterator, ptr %9, i64 0, i32 1
  %251 = load ptr, ptr %250, align 8, !tbaa !88
  %252 = icmp eq ptr %251, null
  br i1 %252, label %271, label %253

253:                                              ; preds = %245, %265
  %254 = phi i64 [ %268, %265 ], [ 0, %245 ]
  %255 = phi ptr [ %269, %265 ], [ %251, %245 ]
  %256 = getelementptr inbounds %struct._gh_Entry, ptr %255, i64 0, i32 1
  %257 = load ptr, ptr %256, align 8, !tbaa !90
  %258 = load ptr, ptr %257, align 8, !tbaa !83
  %259 = getelementptr inbounds %struct.GHashPair, ptr %257, i64 0, i32 1
  %260 = load ptr, ptr %259, align 8, !tbaa !85
  %261 = call fastcc zeroext i8 @bm_edgeloop_check_overlap_all(ptr noundef %0, ptr noundef %258, ptr noundef %260), !range !69
  %262 = icmp eq i8 %261, 0
  br i1 %262, label %265, label %263

263:                                              ; preds = %253
  %264 = call fastcc ptr @bm_edgering_pair_store_create(ptr noundef %0, ptr noundef %258, ptr noundef %260, i32 noundef %11)
  br label %265

265:                                              ; preds = %253, %263
  %266 = phi ptr [ %264, %263 ], [ null, %253 ]
  %267 = getelementptr inbounds ptr, ptr %249, i64 %254
  store ptr %266, ptr %267, align 8, !tbaa !70
  call void @BLI_ghashIterator_step(ptr noundef nonnull %9) #8
  %268 = add nuw i64 %254, 1
  %269 = load ptr, ptr %250, align 8, !tbaa !88
  %270 = icmp eq ptr %269, null
  br i1 %270, label %271, label %253, !llvm.loop !92

271:                                              ; preds = %265, %245
  %272 = getelementptr inbounds %struct.GHashIterator, ptr %9, i64 0, i32 1
  call void @BLI_ghashIterator_init(ptr noundef nonnull %9, ptr noundef nonnull %242) #8
  %273 = load ptr, ptr %272, align 8, !tbaa !88
  %274 = icmp eq ptr %273, null
  br i1 %274, label %314, label %275

275:                                              ; preds = %271
  %276 = icmp eq i32 %11, 2
  br label %277

277:                                              ; preds = %275, %302
  %278 = phi i64 [ 0, %275 ], [ %304, %302 ]
  %279 = phi ptr [ %273, %275 ], [ %305, %302 ]
  %280 = phi i8 [ 0, %275 ], [ %303, %302 ]
  %281 = getelementptr inbounds ptr, ptr %249, i64 %278
  %282 = load ptr, ptr %281, align 8, !tbaa !70
  %283 = icmp eq ptr %282, null
  br i1 %283, label %302, label %284

284:                                              ; preds = %277
  %285 = getelementptr inbounds %struct._gh_Entry, ptr %279, i64 0, i32 1
  %286 = load ptr, ptr %285, align 8, !tbaa !90
  %287 = getelementptr inbounds %struct.GHashPair, ptr %286, i64 0, i32 1
  %288 = load ptr, ptr %287, align 8, !tbaa !85
  %289 = load ptr, ptr %286, align 8, !tbaa !83
  call fastcc void @bm_edgering_pair_ringsubd(ptr noundef %0, ptr noundef nonnull %282, ptr noundef %289, ptr noundef %288, i32 noundef %11, i32 noundef %10, float noundef %12, ptr noundef %22)
  br i1 %276, label %290, label %300

290:                                              ; preds = %284
  %291 = load ptr, ptr @MEM_freeN, align 8, !tbaa !70
  %292 = load ptr, ptr %282, align 8, !tbaa !71
  call void %291(ptr noundef %292) #8
  %293 = load ptr, ptr @MEM_freeN, align 8, !tbaa !70
  %294 = getelementptr inbounds %struct.LoopPairStore, ptr %282, i64 0, i32 1
  %295 = load ptr, ptr %294, align 8, !tbaa !73
  call void %293(ptr noundef %295) #8
  %296 = getelementptr inbounds %struct.LoopPairStore, ptr %282, i64 0, i32 2
  %297 = load ptr, ptr %296, align 8, !tbaa !74
  call void @BLI_ghash_free(ptr noundef %297, ptr noundef null, ptr noundef null) #8
  %298 = getelementptr inbounds %struct.LoopPairStore, ptr %282, i64 0, i32 3
  %299 = load ptr, ptr %298, align 8, !tbaa !75
  call void @BLI_ghash_free(ptr noundef %299, ptr noundef null, ptr noundef null) #8
  br label %300

300:                                              ; preds = %284, %290
  %301 = load ptr, ptr @MEM_freeN, align 8, !tbaa !70
  call void %301(ptr noundef nonnull %282) #8
  br label %302

302:                                              ; preds = %300, %277
  %303 = phi i8 [ 1, %300 ], [ %280, %277 ]
  call void @BLI_ghashIterator_step(ptr noundef nonnull %9) #8
  %304 = add nuw i64 %278, 1
  %305 = load ptr, ptr %272, align 8, !tbaa !88
  %306 = icmp eq ptr %305, null
  br i1 %306, label %307, label %277, !llvm.loop !93

307:                                              ; preds = %302
  %308 = icmp eq i8 %303, 0
  %309 = load ptr, ptr @MEM_freeN, align 8, !tbaa !70
  call void @BLI_gset_free(ptr noundef nonnull %242, ptr noundef %309) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #8
  call void @BM_mesh_edgeloops_free(ptr noundef nonnull %5) #8
  br i1 %308, label %316, label %310

310:                                              ; preds = %159, %307
  %311 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %311, ptr noundef nonnull @.str.9, i8 noundef zeroext 8, i16 noundef signext 1) #8
  br label %316

312:                                              ; preds = %144, %131
  %313 = phi ptr [ @.str.6, %131 ], [ @.str.7, %144 ]
  call void @BMO_error_raise(ptr noundef %0, ptr noundef %1, i32 noundef 8, ptr noundef nonnull %313) #8
  call void @BM_mesh_edgeloops_free(ptr noundef nonnull %5) #8
  br label %316

314:                                              ; preds = %271
  %315 = load ptr, ptr @MEM_freeN, align 8, !tbaa !70
  call void @BLI_gset_free(ptr noundef nonnull %242, ptr noundef %315) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #8
  call void @BM_mesh_edgeloops_free(ptr noundef nonnull %5) #8
  br label %316

316:                                              ; preds = %314, %244, %312, %310, %307
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare i32 @BMO_slot_int_get(ptr noundef, ptr noundef) local_unnamed_addr #3

declare float @BMO_slot_float_get(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BMO_slot_buffer_flag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #3

declare void @BM_mesh_elem_hflag_disable_all(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @BMO_iter_new(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare ptr @BMO_iter_step(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

declare float @bmesh_subd_falloff_calc(i32 noundef, float noundef) local_unnamed_addr #3

declare i32 @BM_mesh_edgeloops_find(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @bm_edge_rim_test_cb(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 22
  %6 = load i32, ptr %5, align 8, !tbaa !47
  %7 = sext i32 %6 to i64
  %8 = getelementptr %struct.BMFlagLayer, ptr %4, i64 %7
  %9 = getelementptr %struct.BMFlagLayer, ptr %8, i64 -1
  %10 = load i16, ptr %9, align 2, !tbaa !51
  %11 = trunc i16 %10 to i8
  %12 = lshr i8 %11, 1
  %13 = and i8 %12, 1
  ret i8 %13
}

declare void @BMO_error_raise(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @bm_edgeloop_check_overlap_all(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = tail call ptr @BM_edgeloop_verts_get(ptr noundef %1) #8
  %7 = tail call ptr @BM_edgeloop_verts_get(ptr noundef %2) #8
  %8 = tail call ptr @BM_edgeloop_verts_get(ptr noundef %1) #8
  %9 = load ptr, ptr %8, align 8, !tbaa !67
  br label %10

10:                                               ; preds = %10, %3
  %11 = phi ptr [ %9, %3 ], [ %17, %10 ]
  %12 = getelementptr inbounds %struct.LinkData, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !76
  %14 = getelementptr inbounds %struct.BMHeader, ptr %13, i64 0, i32 3
  %15 = load i8, ptr %14, align 1, !tbaa !94
  %16 = and i8 %15, -17
  store i8 %16, ptr %14, align 1, !tbaa !94
  %17 = load ptr, ptr %11, align 8, !tbaa !78
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %10, !llvm.loop !95

19:                                               ; preds = %10
  %20 = tail call ptr @BM_edgeloop_verts_get(ptr noundef %2) #8
  %21 = load ptr, ptr %20, align 8, !tbaa !67
  br label %22

22:                                               ; preds = %22, %19
  %23 = phi ptr [ %21, %19 ], [ %29, %22 ]
  %24 = getelementptr inbounds %struct.LinkData, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !76
  %26 = getelementptr inbounds %struct.BMHeader, ptr %25, i64 0, i32 3
  %27 = load i8, ptr %26, align 1, !tbaa !94
  %28 = or i8 %27, 16
  store i8 %28, ptr %26, align 1, !tbaa !94
  %29 = load ptr, ptr %23, align 8, !tbaa !78
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %22, !llvm.loop !95

31:                                               ; preds = %22
  %32 = load ptr, ptr %6, align 8, !tbaa !70
  %33 = icmp eq ptr %32, null
  br i1 %33, label %77, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  %36 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %37 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  %38 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %39

39:                                               ; preds = %34, %74
  %40 = phi ptr [ %32, %34 ], [ %75, %74 ]
  %41 = getelementptr inbounds %struct.LinkData, ptr %40, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #8
  store i8 4, ptr %35, align 4, !tbaa !34
  store ptr @bmiter__edge_of_vert_begin, ptr %36, align 8, !tbaa !40
  store ptr @bmiter__edge_of_vert_step, ptr %37, align 8, !tbaa !41
  store ptr %42, ptr %5, align 8, !tbaa !42
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %5) #8
  %43 = load ptr, ptr %37, align 8, !tbaa !41
  %44 = call ptr %43(ptr noundef nonnull %5) #8
  %45 = icmp eq ptr %44, null
  br i1 %45, label %147, label %46

46:                                               ; preds = %39, %70
  %47 = phi ptr [ %72, %70 ], [ %44, %39 ]
  %48 = getelementptr inbounds %struct.BMEdge, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !55
  %50 = load i32, ptr %38, align 8, !tbaa !47
  %51 = sext i32 %50 to i64
  %52 = getelementptr %struct.BMFlagLayer, ptr %49, i64 %51
  %53 = getelementptr %struct.BMFlagLayer, ptr %52, i64 -1
  %54 = load i16, ptr %53, align 2, !tbaa !51
  %55 = and i16 %54, 1
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %70, label %57

57:                                               ; preds = %46
  %58 = getelementptr inbounds %struct.BMEdge, ptr %47, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !81
  %60 = icmp eq ptr %59, %42
  %61 = getelementptr inbounds %struct.BMEdge, ptr %47, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !82
  %63 = icmp eq ptr %62, %42
  %64 = select i1 %63, ptr %59, ptr null
  %65 = select i1 %60, ptr %62, ptr %64
  %66 = getelementptr inbounds %struct.BMHeader, ptr %65, i64 0, i32 3
  %67 = load i8, ptr %66, align 1, !tbaa !94
  %68 = and i8 %67, 16
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %57, %46
  %71 = load ptr, ptr %37, align 8, !tbaa !41
  %72 = call ptr %71(ptr noundef nonnull %5) #8
  %73 = icmp eq ptr %72, null
  br i1 %73, label %147, label %46, !llvm.loop !96

74:                                               ; preds = %57
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #8
  %75 = load ptr, ptr %40, align 8, !tbaa !70
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %39, !llvm.loop !97

77:                                               ; preds = %74, %31
  %78 = call ptr @BM_edgeloop_verts_get(ptr noundef %1) #8
  %79 = load ptr, ptr %78, align 8, !tbaa !67
  br label %80

80:                                               ; preds = %80, %77
  %81 = phi ptr [ %79, %77 ], [ %87, %80 ]
  %82 = getelementptr inbounds %struct.LinkData, ptr %81, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !76
  %84 = getelementptr inbounds %struct.BMHeader, ptr %83, i64 0, i32 3
  %85 = load i8, ptr %84, align 1, !tbaa !94
  %86 = or i8 %85, 16
  store i8 %86, ptr %84, align 1, !tbaa !94
  %87 = load ptr, ptr %81, align 8, !tbaa !78
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %80, !llvm.loop !95

89:                                               ; preds = %80
  %90 = call ptr @BM_edgeloop_verts_get(ptr noundef %2) #8
  %91 = load ptr, ptr %90, align 8, !tbaa !67
  br label %92

92:                                               ; preds = %92, %89
  %93 = phi ptr [ %91, %89 ], [ %99, %92 ]
  %94 = getelementptr inbounds %struct.LinkData, ptr %93, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !76
  %96 = getelementptr inbounds %struct.BMHeader, ptr %95, i64 0, i32 3
  %97 = load i8, ptr %96, align 1, !tbaa !94
  %98 = and i8 %97, -17
  store i8 %98, ptr %96, align 1, !tbaa !94
  %99 = load ptr, ptr %93, align 8, !tbaa !78
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %92, !llvm.loop !95

101:                                              ; preds = %92
  %102 = load ptr, ptr %7, align 8, !tbaa !70
  %103 = icmp eq ptr %102, null
  br i1 %103, label %149, label %104

104:                                              ; preds = %101
  %105 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  %106 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %107 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  %108 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %109

109:                                              ; preds = %104, %144
  %110 = phi ptr [ %102, %104 ], [ %145, %144 ]
  %111 = getelementptr inbounds %struct.LinkData, ptr %110, i64 0, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #8
  store i8 4, ptr %105, align 4, !tbaa !34
  store ptr @bmiter__edge_of_vert_begin, ptr %106, align 8, !tbaa !40
  store ptr @bmiter__edge_of_vert_step, ptr %107, align 8, !tbaa !41
  store ptr %112, ptr %4, align 8, !tbaa !42
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %4) #8
  %113 = load ptr, ptr %107, align 8, !tbaa !41
  %114 = call ptr %113(ptr noundef nonnull %4) #8
  %115 = icmp eq ptr %114, null
  br i1 %115, label %148, label %116

116:                                              ; preds = %109, %140
  %117 = phi ptr [ %142, %140 ], [ %114, %109 ]
  %118 = getelementptr inbounds %struct.BMEdge, ptr %117, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !55
  %120 = load i32, ptr %108, align 8, !tbaa !47
  %121 = sext i32 %120 to i64
  %122 = getelementptr %struct.BMFlagLayer, ptr %119, i64 %121
  %123 = getelementptr %struct.BMFlagLayer, ptr %122, i64 -1
  %124 = load i16, ptr %123, align 2, !tbaa !51
  %125 = and i16 %124, 1
  %126 = icmp eq i16 %125, 0
  br i1 %126, label %140, label %127

127:                                              ; preds = %116
  %128 = getelementptr inbounds %struct.BMEdge, ptr %117, i64 0, i32 2
  %129 = load ptr, ptr %128, align 8, !tbaa !81
  %130 = icmp eq ptr %129, %112
  %131 = getelementptr inbounds %struct.BMEdge, ptr %117, i64 0, i32 3
  %132 = load ptr, ptr %131, align 8, !tbaa !82
  %133 = icmp eq ptr %132, %112
  %134 = select i1 %133, ptr %129, ptr null
  %135 = select i1 %130, ptr %132, ptr %134
  %136 = getelementptr inbounds %struct.BMHeader, ptr %135, i64 0, i32 3
  %137 = load i8, ptr %136, align 1, !tbaa !94
  %138 = and i8 %137, 16
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %127, %116
  %141 = load ptr, ptr %107, align 8, !tbaa !41
  %142 = call ptr %141(ptr noundef nonnull %4) #8
  %143 = icmp eq ptr %142, null
  br i1 %143, label %148, label %116, !llvm.loop !96

144:                                              ; preds = %127
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #8
  %145 = load ptr, ptr %110, align 8, !tbaa !70
  %146 = icmp eq ptr %145, null
  br i1 %146, label %149, label %109, !llvm.loop !98

147:                                              ; preds = %39, %70
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #8
  br label %149

148:                                              ; preds = %109, %140
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #8
  br label %149

149:                                              ; preds = %144, %101, %148, %147
  %150 = phi i8 [ 0, %147 ], [ 0, %148 ], [ 1, %101 ], [ 1, %144 ]
  %151 = call ptr @BM_edgeloop_verts_get(ptr noundef %1) #8
  %152 = load ptr, ptr %151, align 8, !tbaa !67
  br label %153

153:                                              ; preds = %153, %149
  %154 = phi ptr [ %152, %149 ], [ %160, %153 ]
  %155 = getelementptr inbounds %struct.LinkData, ptr %154, i64 0, i32 2
  %156 = load ptr, ptr %155, align 8, !tbaa !76
  %157 = getelementptr inbounds %struct.BMHeader, ptr %156, i64 0, i32 3
  %158 = load i8, ptr %157, align 1, !tbaa !94
  %159 = and i8 %158, -17
  store i8 %159, ptr %157, align 1, !tbaa !94
  %160 = load ptr, ptr %154, align 8, !tbaa !78
  %161 = icmp eq ptr %160, null
  br i1 %161, label %162, label %153, !llvm.loop !95

162:                                              ; preds = %153
  %163 = call ptr @BM_edgeloop_verts_get(ptr noundef %2) #8
  %164 = load ptr, ptr %163, align 8, !tbaa !67
  br label %165

165:                                              ; preds = %165, %162
  %166 = phi ptr [ %164, %162 ], [ %172, %165 ]
  %167 = getelementptr inbounds %struct.LinkData, ptr %166, i64 0, i32 2
  %168 = load ptr, ptr %167, align 8, !tbaa !76
  %169 = getelementptr inbounds %struct.BMHeader, ptr %168, i64 0, i32 3
  %170 = load i8, ptr %169, align 1, !tbaa !94
  %171 = and i8 %170, -17
  store i8 %171, ptr %169, align 1, !tbaa !94
  %172 = load ptr, ptr %166, align 8, !tbaa !78
  %173 = icmp eq ptr %172, null
  br i1 %173, label %174, label %165, !llvm.loop !95

174:                                              ; preds = %165
  ret i8 %150
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @bm_edgering_pair_store_create(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca [3 x float], align 4
  %8 = alloca [2 x ptr], align 16
  %9 = alloca [2 x ptr], align 16
  %10 = alloca [2 x ptr], align 16
  %11 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !70
  %12 = tail call ptr %11(i64 noundef 32, ptr noundef nonnull @__func__.bm_edgering_pair_store_create) #8
  %13 = icmp eq i32 %3, 2
  br i1 %13, label %14, label %508

14:                                               ; preds = %4
  %15 = tail call i32 @BM_edgeloop_length_get(ptr noundef %1) #8
  %16 = tail call i32 @BM_edgeloop_length_get(ptr noundef %2) #8
  %17 = tail call zeroext i8 @BM_edgeloop_is_closed(ptr noundef %1) #8
  %18 = icmp eq i8 %17, 0
  %19 = sext i1 %18 to i32
  %20 = add i32 %15, %19
  %21 = tail call zeroext i8 @BM_edgeloop_is_closed(ptr noundef %2) #8
  %22 = icmp eq i8 %21, 0
  %23 = sext i1 %22 to i32
  %24 = add i32 %16, %23
  %25 = zext i32 %20 to i64
  %26 = shl nuw nsw i64 %25, 3
  %27 = alloca i8, i64 %26, align 16
  %28 = zext i32 %24 to i64
  %29 = shl nuw nsw i64 %28, 3
  %30 = alloca i8, i64 %29, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8
  store ptr %1, ptr %8, align 16, !tbaa !70
  %31 = getelementptr inbounds ptr, ptr %8, i64 1
  store ptr %2, ptr %31, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #8
  call void @BM_edgeloop_edges_get(ptr noundef %1, ptr noundef nonnull %27) #8
  call void @BM_edgeloop_edges_get(ptr noundef %2, ptr noundef nonnull %30) #8
  %32 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !70
  %33 = zext i32 %15 to i64
  %34 = mul nuw nsw i64 %33, 12
  %35 = call ptr %32(i64 noundef %34, ptr noundef nonnull @__func__.bm_edgering_pair_store_create) #8
  store ptr %35, ptr %12, align 8, !tbaa !71
  %36 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !70
  %37 = zext i32 %16 to i64
  %38 = mul nuw nsw i64 %37, 12
  %39 = call ptr %36(i64 noundef %38, ptr noundef nonnull @__func__.bm_edgering_pair_store_create) #8
  %40 = getelementptr inbounds %struct.LoopPairStore, ptr %12, i64 0, i32 1
  store ptr %39, ptr %40, align 8, !tbaa !73
  %41 = load ptr, ptr %12, align 8, !tbaa !71
  store ptr %41, ptr %9, align 16, !tbaa !70
  %42 = getelementptr inbounds [2 x ptr], ptr %9, i64 0, i64 1
  store ptr %39, ptr %42, align 8, !tbaa !70
  %43 = call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @__func__.bm_edgering_pair_store_create) #8
  %44 = getelementptr inbounds %struct.LoopPairStore, ptr %12, i64 0, i32 2
  store ptr %43, ptr %44, align 8, !tbaa !74
  %45 = call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @__func__.bm_edgering_pair_store_create) #8
  %46 = getelementptr inbounds %struct.LoopPairStore, ptr %12, i64 0, i32 3
  store ptr %45, ptr %46, align 8, !tbaa !75
  %47 = load ptr, ptr %44, align 8, !tbaa !74
  store ptr %47, ptr %10, align 16, !tbaa !70
  %48 = getelementptr inbounds [2 x ptr], ptr %10, i64 0, i64 1
  store ptr %45, ptr %48, align 8, !tbaa !70
  %49 = call ptr @BM_edgeloop_verts_get(ptr noundef %1) #8
  %50 = load ptr, ptr %49, align 8, !tbaa !67
  %51 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %52 = load i32, ptr %51, align 8, !tbaa !47
  %53 = sext i32 %52 to i64
  br label %54

54:                                               ; preds = %54, %14
  %55 = phi ptr [ %50, %14 ], [ %64, %54 ]
  %56 = getelementptr inbounds %struct.LinkData, ptr %55, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !76
  %58 = getelementptr inbounds %struct.BMVert, ptr %57, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !99
  %60 = getelementptr %struct.BMFlagLayer, ptr %59, i64 %53
  %61 = getelementptr %struct.BMFlagLayer, ptr %60, i64 -1
  %62 = load i16, ptr %61, align 2, !tbaa !51
  %63 = or i16 %62, 1
  store i16 %63, ptr %61, align 2, !tbaa !51
  %64 = load ptr, ptr %55, align 8, !tbaa !78
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %54, !llvm.loop !101

66:                                               ; preds = %54
  %67 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %68 = call ptr @BM_edgeloop_verts_get(ptr noundef %2) #8
  %69 = load ptr, ptr %68, align 8, !tbaa !67
  %70 = load i32, ptr %67, align 8, !tbaa !47
  %71 = sext i32 %70 to i64
  br label %72

72:                                               ; preds = %72, %66
  %73 = phi ptr [ %69, %66 ], [ %82, %72 ]
  %74 = getelementptr inbounds %struct.LinkData, ptr %73, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !76
  %76 = getelementptr inbounds %struct.BMVert, ptr %75, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !99
  %78 = getelementptr %struct.BMFlagLayer, ptr %77, i64 %71
  %79 = getelementptr %struct.BMFlagLayer, ptr %78, i64 -1
  %80 = load i16, ptr %79, align 2, !tbaa !51
  %81 = or i16 %80, 1
  store i16 %81, ptr %79, align 2, !tbaa !51
  %82 = load ptr, ptr %73, align 8, !tbaa !78
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %72, !llvm.loop !101

84:                                               ; preds = %72
  %85 = icmp eq i32 %20, 0
  br i1 %85, label %130, label %86

86:                                               ; preds = %84, %127
  %87 = phi i64 [ %128, %127 ], [ 0, %84 ]
  %88 = getelementptr inbounds ptr, ptr %27, i64 %87
  %89 = load ptr, ptr %88, align 8, !tbaa !70
  %90 = getelementptr inbounds %struct.BMEdge, ptr %89, i64 0, i32 4
  %91 = load ptr, ptr %90, align 8, !tbaa !102
  br label %92

92:                                               ; preds = %123, %86
  %93 = phi ptr [ %91, %86 ], [ %125, %123 ]
  %94 = getelementptr inbounds %struct.BMLoop, ptr %93, i64 0, i32 3
  %95 = load ptr, ptr %94, align 8, !tbaa !103
  %96 = getelementptr inbounds %struct.BMFace, ptr %95, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !43
  %98 = getelementptr %struct.BMFlagLayer, ptr %97, i64 %71
  %99 = getelementptr %struct.BMFlagLayer, ptr %98, i64 -1
  %100 = load i16, ptr %99, align 2, !tbaa !51
  %101 = and i16 %100, 2
  %102 = icmp eq i16 %101, 0
  br i1 %102, label %103, label %123

103:                                              ; preds = %92
  %104 = getelementptr inbounds %struct.BMFace, ptr %95, i64 0, i32 2
  %105 = load ptr, ptr %104, align 8, !tbaa !104
  br label %106

106:                                              ; preds = %117, %103
  %107 = phi ptr [ %105, %103 ], [ %119, %117 ]
  %108 = getelementptr inbounds %struct.BMLoop, ptr %107, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !105
  %110 = getelementptr inbounds %struct.BMVert, ptr %109, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !99
  %112 = getelementptr %struct.BMFlagLayer, ptr %111, i64 %71
  %113 = getelementptr %struct.BMFlagLayer, ptr %112, i64 -1
  %114 = load i16, ptr %113, align 2, !tbaa !51
  %115 = and i16 %114, 1
  %116 = icmp eq i16 %115, 0
  br i1 %116, label %123, label %117

117:                                              ; preds = %106
  %118 = getelementptr inbounds %struct.BMLoop, ptr %107, i64 0, i32 6
  %119 = load ptr, ptr %118, align 8, !tbaa !106
  %120 = icmp eq ptr %119, %105
  br i1 %120, label %121, label %106, !llvm.loop !107

121:                                              ; preds = %117
  %122 = or disjoint i16 %100, 2
  store i16 %122, ptr %99, align 2, !tbaa !51
  br label %123

123:                                              ; preds = %106, %121, %92
  %124 = getelementptr inbounds %struct.BMLoop, ptr %93, i64 0, i32 4
  %125 = load ptr, ptr %124, align 8, !tbaa !108
  %126 = icmp eq ptr %125, %91
  br i1 %126, label %127, label %92, !llvm.loop !109

127:                                              ; preds = %123
  %128 = add nuw nsw i64 %87, 1
  %129 = icmp eq i64 %128, %25
  br i1 %129, label %130, label %86, !llvm.loop !110

130:                                              ; preds = %127, %84
  %131 = icmp eq i32 %24, 0
  br i1 %131, label %176, label %132

132:                                              ; preds = %130, %173
  %133 = phi i64 [ %174, %173 ], [ 0, %130 ]
  %134 = getelementptr inbounds ptr, ptr %30, i64 %133
  %135 = load ptr, ptr %134, align 8, !tbaa !70
  %136 = getelementptr inbounds %struct.BMEdge, ptr %135, i64 0, i32 4
  %137 = load ptr, ptr %136, align 8, !tbaa !102
  br label %138

138:                                              ; preds = %169, %132
  %139 = phi ptr [ %137, %132 ], [ %171, %169 ]
  %140 = getelementptr inbounds %struct.BMLoop, ptr %139, i64 0, i32 3
  %141 = load ptr, ptr %140, align 8, !tbaa !103
  %142 = getelementptr inbounds %struct.BMFace, ptr %141, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !43
  %144 = getelementptr %struct.BMFlagLayer, ptr %143, i64 %71
  %145 = getelementptr %struct.BMFlagLayer, ptr %144, i64 -1
  %146 = load i16, ptr %145, align 2, !tbaa !51
  %147 = and i16 %146, 2
  %148 = icmp eq i16 %147, 0
  br i1 %148, label %149, label %169

149:                                              ; preds = %138
  %150 = getelementptr inbounds %struct.BMFace, ptr %141, i64 0, i32 2
  %151 = load ptr, ptr %150, align 8, !tbaa !104
  br label %152

152:                                              ; preds = %163, %149
  %153 = phi ptr [ %151, %149 ], [ %165, %163 ]
  %154 = getelementptr inbounds %struct.BMLoop, ptr %153, i64 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !105
  %156 = getelementptr inbounds %struct.BMVert, ptr %155, i64 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !99
  %158 = getelementptr %struct.BMFlagLayer, ptr %157, i64 %71
  %159 = getelementptr %struct.BMFlagLayer, ptr %158, i64 -1
  %160 = load i16, ptr %159, align 2, !tbaa !51
  %161 = and i16 %160, 1
  %162 = icmp eq i16 %161, 0
  br i1 %162, label %169, label %163

163:                                              ; preds = %152
  %164 = getelementptr inbounds %struct.BMLoop, ptr %153, i64 0, i32 6
  %165 = load ptr, ptr %164, align 8, !tbaa !106
  %166 = icmp eq ptr %165, %151
  br i1 %166, label %167, label %152, !llvm.loop !107

167:                                              ; preds = %163
  %168 = or disjoint i16 %146, 2
  store i16 %168, ptr %145, align 2, !tbaa !51
  br label %169

169:                                              ; preds = %152, %167, %138
  %170 = getelementptr inbounds %struct.BMLoop, ptr %139, i64 0, i32 4
  %171 = load ptr, ptr %170, align 8, !tbaa !108
  %172 = icmp eq ptr %171, %137
  br i1 %172, label %173, label %138, !llvm.loop !109

173:                                              ; preds = %169
  %174 = add nuw nsw i64 %133, 1
  %175 = icmp eq i64 %174, %28
  br i1 %175, label %176, label %132, !llvm.loop !110

176:                                              ; preds = %173, %130
  %177 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  %178 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %179 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  %180 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  %181 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  %182 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  %183 = getelementptr inbounds float, ptr %7, i64 1
  %184 = getelementptr inbounds float, ptr %7, i64 2
  %185 = getelementptr inbounds float, ptr %7, i64 1
  %186 = getelementptr inbounds float, ptr %7, i64 2
  br label %187

187:                                              ; preds = %176, %418
  %188 = phi i64 [ 0, %176 ], [ %419, %418 ]
  %189 = getelementptr inbounds [2 x ptr], ptr %8, i64 0, i64 %188
  %190 = load ptr, ptr %189, align 8, !tbaa !70
  %191 = call ptr @BM_edgeloop_verts_get(ptr noundef %190) #8
  %192 = getelementptr inbounds [2 x ptr], ptr %10, i64 0, i64 %188
  %193 = load ptr, ptr %192, align 8, !tbaa !70
  %194 = getelementptr inbounds [2 x ptr], ptr %9, i64 0, i64 %188
  %195 = load ptr, ptr %194, align 8, !tbaa !70
  %196 = load ptr, ptr %191, align 8, !tbaa !70
  %197 = icmp eq ptr %196, null
  br i1 %197, label %418, label %198

198:                                              ; preds = %187, %413
  %199 = phi ptr [ %416, %413 ], [ %196, %187 ]
  %200 = phi i32 [ %415, %413 ], [ 0, %187 ]
  %201 = getelementptr inbounds %struct.LinkData, ptr %199, i64 0, i32 2
  %202 = load ptr, ptr %201, align 8, !tbaa !76
  %203 = zext i32 %200 to i64
  %204 = getelementptr inbounds [3 x float], ptr %195, i64 %203
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #8
  store i8 4, ptr %177, align 4, !tbaa !34
  store ptr @bmiter__edge_of_vert_begin, ptr %178, align 8, !tbaa !40
  store ptr @bmiter__edge_of_vert_step, ptr %179, align 8, !tbaa !41
  store ptr %202, ptr %5, align 8, !tbaa !42
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %5) #8
  %205 = load ptr, ptr %179, align 8, !tbaa !41
  %206 = call ptr %205(ptr noundef nonnull %5) #8
  %207 = icmp eq ptr %206, null
  br i1 %207, label %310, label %208

208:                                              ; preds = %198, %297
  %209 = phi i8 [ %306, %297 ], [ 0, %198 ]
  %210 = phi i8 [ %305, %297 ], [ 0, %198 ]
  %211 = phi i8 [ %304, %297 ], [ 0, %198 ]
  %212 = phi ptr [ %308, %297 ], [ %206, %198 ]
  %213 = phi float [ %303, %297 ], [ 0.000000e+00, %198 ]
  %214 = phi float [ %302, %297 ], [ 0.000000e+00, %198 ]
  %215 = phi float [ %301, %297 ], [ 0.000000e+00, %198 ]
  %216 = phi float [ %300, %297 ], [ 0.000000e+00, %198 ]
  %217 = phi float [ %299, %297 ], [ 0.000000e+00, %198 ]
  %218 = phi float [ %298, %297 ], [ 0.000000e+00, %198 ]
  %219 = getelementptr inbounds %struct.BMEdge, ptr %212, i64 0, i32 4
  %220 = load ptr, ptr %219, align 8, !tbaa !102
  %221 = icmp eq ptr %220, null
  br i1 %221, label %297, label %222

222:                                              ; preds = %208
  %223 = getelementptr inbounds %struct.BMEdge, ptr %212, i64 0, i32 1
  %224 = load ptr, ptr %223, align 8, !tbaa !55
  %225 = load i32, ptr %67, align 8, !tbaa !47
  %226 = sext i32 %225 to i64
  %227 = getelementptr %struct.BMFlagLayer, ptr %224, i64 %226
  %228 = getelementptr %struct.BMFlagLayer, ptr %227, i64 -1
  %229 = load i16, ptr %228, align 2, !tbaa !51
  %230 = and i16 %229, 2
  %231 = icmp eq i16 %230, 0
  br i1 %231, label %297, label %232

232:                                              ; preds = %222
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #8
  store i8 14, ptr %180, align 4, !tbaa !34
  store ptr @bmiter__loop_of_edge_begin, ptr %181, align 8, !tbaa !40
  store ptr @bmiter__loop_of_edge_step, ptr %182, align 8, !tbaa !41
  store ptr %212, ptr %6, align 8, !tbaa !42
  call void @bmiter__loop_of_edge_begin(ptr noundef nonnull %6) #8
  %233 = load ptr, ptr %182, align 8, !tbaa !41
  %234 = call ptr %233(ptr noundef nonnull %6) #8
  %235 = icmp eq ptr %234, null
  br i1 %235, label %287, label %236

236:                                              ; preds = %232, %274
  %237 = phi ptr [ %285, %274 ], [ %234, %232 ]
  %238 = phi i8 [ %283, %274 ], [ %209, %232 ]
  %239 = phi i8 [ %282, %274 ], [ %210, %232 ]
  %240 = phi i8 [ %281, %274 ], [ %211, %232 ]
  %241 = phi float [ %280, %274 ], [ %213, %232 ]
  %242 = phi float [ %279, %274 ], [ %214, %232 ]
  %243 = phi float [ %278, %274 ], [ %215, %232 ]
  %244 = phi float [ %277, %274 ], [ %216, %232 ]
  %245 = phi float [ %276, %274 ], [ %217, %232 ]
  %246 = phi float [ %275, %274 ], [ %218, %232 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #8
  call void @BM_edge_calc_face_tangent(ptr noundef nonnull %212, ptr noundef nonnull %237, ptr noundef nonnull %7) #8
  %247 = getelementptr inbounds %struct.BMLoop, ptr %237, i64 0, i32 3
  %248 = load ptr, ptr %247, align 8, !tbaa !103
  %249 = getelementptr inbounds %struct.BMFace, ptr %248, i64 0, i32 1
  %250 = load ptr, ptr %249, align 8, !tbaa !43
  %251 = load i32, ptr %67, align 8, !tbaa !47
  %252 = sext i32 %251 to i64
  %253 = getelementptr %struct.BMFlagLayer, ptr %250, i64 %252
  %254 = getelementptr %struct.BMFlagLayer, ptr %253, i64 -1
  %255 = load i16, ptr %254, align 2, !tbaa !51
  %256 = and i16 %255, 2
  %257 = icmp eq i16 %256, 0
  %258 = load float, ptr %7, align 4, !tbaa !64
  br i1 %257, label %265, label %259

259:                                              ; preds = %236
  %260 = fadd float %243, %258
  %261 = load float, ptr %183, align 4, !tbaa !64
  %262 = fadd float %242, %261
  %263 = load float, ptr %184, align 4, !tbaa !64
  %264 = fadd float %241, %263
  br label %274

265:                                              ; preds = %236
  %266 = fadd float %246, %258
  %267 = load float, ptr %185, align 4, !tbaa !64
  %268 = fadd float %245, %267
  %269 = load float, ptr %186, align 4, !tbaa !64
  %270 = fadd float %244, %269
  %271 = and i16 %255, 1
  %272 = icmp eq i16 %271, 0
  %273 = select i1 %272, i8 %238, i8 1
  br label %274

274:                                              ; preds = %265, %259
  %275 = phi float [ %266, %265 ], [ %246, %259 ]
  %276 = phi float [ %268, %265 ], [ %245, %259 ]
  %277 = phi float [ %270, %265 ], [ %244, %259 ]
  %278 = phi float [ %243, %265 ], [ %260, %259 ]
  %279 = phi float [ %242, %265 ], [ %262, %259 ]
  %280 = phi float [ %241, %265 ], [ %264, %259 ]
  %281 = phi i8 [ 1, %265 ], [ %240, %259 ]
  %282 = phi i8 [ %239, %265 ], [ 1, %259 ]
  %283 = phi i8 [ %273, %265 ], [ %238, %259 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #8
  %284 = load ptr, ptr %182, align 8, !tbaa !41
  %285 = call ptr %284(ptr noundef nonnull %6) #8
  %286 = icmp eq ptr %285, null
  br i1 %286, label %287, label %236, !llvm.loop !111

287:                                              ; preds = %274, %232
  %288 = phi float [ %218, %232 ], [ %275, %274 ]
  %289 = phi float [ %217, %232 ], [ %276, %274 ]
  %290 = phi float [ %216, %232 ], [ %277, %274 ]
  %291 = phi float [ %215, %232 ], [ %278, %274 ]
  %292 = phi float [ %214, %232 ], [ %279, %274 ]
  %293 = phi float [ %213, %232 ], [ %280, %274 ]
  %294 = phi i8 [ %211, %232 ], [ %281, %274 ]
  %295 = phi i8 [ %210, %232 ], [ %282, %274 ]
  %296 = phi i8 [ %209, %232 ], [ %283, %274 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #8
  br label %297

297:                                              ; preds = %287, %222, %208
  %298 = phi float [ %218, %222 ], [ %288, %287 ], [ %218, %208 ]
  %299 = phi float [ %217, %222 ], [ %289, %287 ], [ %217, %208 ]
  %300 = phi float [ %216, %222 ], [ %290, %287 ], [ %216, %208 ]
  %301 = phi float [ %215, %222 ], [ %291, %287 ], [ %215, %208 ]
  %302 = phi float [ %214, %222 ], [ %292, %287 ], [ %214, %208 ]
  %303 = phi float [ %213, %222 ], [ %293, %287 ], [ %213, %208 ]
  %304 = phi i8 [ %211, %222 ], [ %294, %287 ], [ %211, %208 ]
  %305 = phi i8 [ %210, %222 ], [ %295, %287 ], [ %210, %208 ]
  %306 = phi i8 [ %209, %222 ], [ %296, %287 ], [ %209, %208 ]
  %307 = load ptr, ptr %179, align 8, !tbaa !41
  %308 = call ptr %307(ptr noundef nonnull %5) #8
  %309 = icmp eq ptr %308, null
  br i1 %309, label %310, label %208, !llvm.loop !112

310:                                              ; preds = %297, %198
  %311 = phi float [ 0.000000e+00, %198 ], [ %298, %297 ]
  %312 = phi float [ 0.000000e+00, %198 ], [ %299, %297 ]
  %313 = phi float [ 0.000000e+00, %198 ], [ %300, %297 ]
  %314 = phi float [ 0.000000e+00, %198 ], [ %301, %297 ]
  %315 = phi float [ 0.000000e+00, %198 ], [ %302, %297 ]
  %316 = phi float [ 0.000000e+00, %198 ], [ %303, %297 ]
  %317 = phi i8 [ 0, %198 ], [ %304, %297 ]
  %318 = phi i8 [ 0, %198 ], [ %305, %297 ]
  %319 = phi i8 [ 0, %198 ], [ %306, %297 ]
  %320 = icmp ne i8 %318, 0
  %321 = icmp ne i8 %319, 0
  %322 = select i1 %320, i1 %321, i1 false
  br i1 %322, label %323, label %376

323:                                              ; preds = %310
  %324 = fmul float %312, %312
  %325 = call float @llvm.fmuladd.f32(float %311, float %311, float %324)
  %326 = call float @llvm.fmuladd.f32(float %313, float %313, float %325)
  %327 = fcmp ogt float %326, 0x38AA95A5C0000000
  br i1 %327, label %328, label %337

328:                                              ; preds = %323
  %329 = fneg float %313
  %330 = fneg float %311
  %331 = fneg float %312
  %332 = call float @sqrtf(float noundef %326) #8
  %333 = fdiv float 1.000000e+00, %332
  %334 = fmul float %333, %330
  %335 = fmul float %333, %331
  %336 = fmul float %333, %329
  br label %337

337:                                              ; preds = %328, %323
  %338 = phi float [ %334, %328 ], [ 0.000000e+00, %323 ]
  %339 = phi float [ %335, %328 ], [ 0.000000e+00, %323 ]
  %340 = phi float [ %336, %328 ], [ 0.000000e+00, %323 ]
  %341 = fmul float %315, %315
  %342 = call float @llvm.fmuladd.f32(float %314, float %314, float %341)
  %343 = call float @llvm.fmuladd.f32(float %316, float %316, float %342)
  %344 = fcmp ogt float %343, 0x38AA95A5C0000000
  br i1 %344, label %345, label %351

345:                                              ; preds = %337
  %346 = call float @sqrtf(float noundef %343) #8
  %347 = fdiv float 1.000000e+00, %346
  %348 = fmul float %314, %347
  %349 = fmul float %315, %347
  %350 = fmul float %316, %347
  br label %351

351:                                              ; preds = %345, %337
  %352 = phi float [ %348, %345 ], [ 0.000000e+00, %337 ]
  %353 = phi float [ %349, %345 ], [ 0.000000e+00, %337 ]
  %354 = phi float [ %350, %345 ], [ 0.000000e+00, %337 ]
  %355 = fadd float %338, %352
  store float %355, ptr %204, align 4, !tbaa !64
  %356 = fadd float %339, %353
  %357 = getelementptr inbounds float, ptr %204, i64 1
  store float %356, ptr %357, align 4, !tbaa !64
  %358 = fadd float %340, %354
  %359 = getelementptr inbounds float, ptr %204, i64 2
  store float %358, ptr %359, align 4, !tbaa !64
  %360 = fmul float %356, %356
  %361 = call float @llvm.fmuladd.f32(float %355, float %355, float %360)
  %362 = call float @llvm.fmuladd.f32(float %358, float %358, float %361)
  %363 = fcmp ogt float %362, 0x38AA95A5C0000000
  br i1 %363, label %364, label %373

364:                                              ; preds = %351
  %365 = call float @sqrtf(float noundef %362) #8
  %366 = fdiv float 1.000000e+00, %365
  %367 = load float, ptr %204, align 4, !tbaa !64
  %368 = fmul float %367, %366
  store float %368, ptr %204, align 4, !tbaa !64
  %369 = load float, ptr %357, align 4, !tbaa !64
  %370 = fmul float %366, %369
  store float %370, ptr %357, align 4, !tbaa !64
  %371 = load float, ptr %359, align 4, !tbaa !64
  %372 = fmul float %366, %371
  br label %374

373:                                              ; preds = %351
  store float 0.000000e+00, ptr %204, align 4, !tbaa !64
  store float 0.000000e+00, ptr %357, align 4, !tbaa !64
  br label %374

374:                                              ; preds = %373, %364
  %375 = phi float [ 0.000000e+00, %373 ], [ %372, %364 ]
  store float %375, ptr %359, align 4, !tbaa !64
  br label %413

376:                                              ; preds = %310
  %377 = icmp eq i8 %317, 0
  br i1 %377, label %397, label %378

378:                                              ; preds = %376
  %379 = fmul float %312, %312
  %380 = call float @llvm.fmuladd.f32(float %311, float %311, float %379)
  %381 = call float @llvm.fmuladd.f32(float %313, float %313, float %380)
  %382 = fcmp ogt float %381, 0x38AA95A5C0000000
  br i1 %382, label %383, label %394

383:                                              ; preds = %378
  %384 = fneg float %313
  %385 = fneg float %311
  %386 = fneg float %312
  %387 = call float @sqrtf(float noundef %381) #8
  %388 = fdiv float 1.000000e+00, %387
  %389 = fmul float %388, %385
  store float %389, ptr %204, align 4, !tbaa !64
  %390 = fmul float %388, %386
  %391 = getelementptr inbounds float, ptr %204, i64 1
  store float %390, ptr %391, align 4, !tbaa !64
  %392 = fmul float %388, %384
  %393 = getelementptr inbounds float, ptr %204, i64 2
  store float %392, ptr %393, align 4, !tbaa !64
  br label %413

394:                                              ; preds = %378
  store float 0.000000e+00, ptr %204, align 4, !tbaa !64
  %395 = getelementptr inbounds float, ptr %204, i64 1
  store float 0.000000e+00, ptr %395, align 4, !tbaa !64
  %396 = getelementptr inbounds float, ptr %204, i64 2
  store float 0.000000e+00, ptr %396, align 4, !tbaa !64
  br label %413

397:                                              ; preds = %376
  %398 = fmul float %315, %315
  %399 = call float @llvm.fmuladd.f32(float %314, float %314, float %398)
  %400 = call float @llvm.fmuladd.f32(float %316, float %316, float %399)
  %401 = fcmp ogt float %400, 0x38AA95A5C0000000
  br i1 %401, label %402, label %410

402:                                              ; preds = %397
  %403 = call float @sqrtf(float noundef %400) #8
  %404 = fdiv float 1.000000e+00, %403
  %405 = fmul float %314, %404
  store float %405, ptr %204, align 4, !tbaa !64
  %406 = fmul float %315, %404
  %407 = getelementptr inbounds float, ptr %204, i64 1
  store float %406, ptr %407, align 4, !tbaa !64
  %408 = fmul float %316, %404
  %409 = getelementptr inbounds float, ptr %204, i64 2
  store float %408, ptr %409, align 4, !tbaa !64
  br label %413

410:                                              ; preds = %397
  store float 0.000000e+00, ptr %204, align 4, !tbaa !64
  %411 = getelementptr inbounds float, ptr %204, i64 1
  store float 0.000000e+00, ptr %411, align 4, !tbaa !64
  %412 = getelementptr inbounds float, ptr %204, i64 2
  store float 0.000000e+00, ptr %412, align 4, !tbaa !64
  br label %413

413:                                              ; preds = %374, %383, %394, %402, %410
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #8
  %414 = inttoptr i64 %203 to ptr
  call void @BLI_ghash_insert(ptr noundef %193, ptr noundef %202, ptr noundef %414) #8
  %415 = add i32 %200, 1
  %416 = load ptr, ptr %199, align 8, !tbaa !70
  %417 = icmp eq ptr %416, null
  br i1 %417, label %418, label %198, !llvm.loop !113

418:                                              ; preds = %413, %187
  %419 = add nuw nsw i64 %188, 1
  %420 = icmp eq i64 %188, 0
  br i1 %420, label %187, label %421, !llvm.loop !114

421:                                              ; preds = %418
  %422 = call ptr @BM_edgeloop_verts_get(ptr noundef %1) #8
  %423 = load ptr, ptr %422, align 8, !tbaa !67
  %424 = load i32, ptr %67, align 8, !tbaa !47
  %425 = sext i32 %424 to i64
  br label %426

426:                                              ; preds = %426, %421
  %427 = phi ptr [ %423, %421 ], [ %436, %426 ]
  %428 = getelementptr inbounds %struct.LinkData, ptr %427, i64 0, i32 2
  %429 = load ptr, ptr %428, align 8, !tbaa !76
  %430 = getelementptr inbounds %struct.BMVert, ptr %429, i64 0, i32 1
  %431 = load ptr, ptr %430, align 8, !tbaa !99
  %432 = getelementptr %struct.BMFlagLayer, ptr %431, i64 %425
  %433 = getelementptr %struct.BMFlagLayer, ptr %432, i64 -1
  %434 = load i16, ptr %433, align 2, !tbaa !51
  %435 = and i16 %434, -2
  store i16 %435, ptr %433, align 2, !tbaa !51
  %436 = load ptr, ptr %427, align 8, !tbaa !78
  %437 = icmp eq ptr %436, null
  br i1 %437, label %438, label %426, !llvm.loop !101

438:                                              ; preds = %426
  %439 = call ptr @BM_edgeloop_verts_get(ptr noundef %2) #8
  %440 = load ptr, ptr %439, align 8, !tbaa !67
  %441 = load i32, ptr %67, align 8, !tbaa !47
  %442 = sext i32 %441 to i64
  br label %443

443:                                              ; preds = %443, %438
  %444 = phi ptr [ %440, %438 ], [ %453, %443 ]
  %445 = getelementptr inbounds %struct.LinkData, ptr %444, i64 0, i32 2
  %446 = load ptr, ptr %445, align 8, !tbaa !76
  %447 = getelementptr inbounds %struct.BMVert, ptr %446, i64 0, i32 1
  %448 = load ptr, ptr %447, align 8, !tbaa !99
  %449 = getelementptr %struct.BMFlagLayer, ptr %448, i64 %442
  %450 = getelementptr %struct.BMFlagLayer, ptr %449, i64 -1
  %451 = load i16, ptr %450, align 2, !tbaa !51
  %452 = and i16 %451, -2
  store i16 %452, ptr %450, align 2, !tbaa !51
  %453 = load ptr, ptr %444, align 8, !tbaa !78
  %454 = icmp eq ptr %453, null
  br i1 %454, label %455, label %443, !llvm.loop !101

455:                                              ; preds = %443
  %456 = icmp eq i32 %20, 0
  br i1 %456, label %459, label %457

457:                                              ; preds = %455
  %458 = zext i32 %20 to i64
  br label %463

459:                                              ; preds = %482, %455
  %460 = icmp eq i32 %24, 0
  br i1 %460, label %507, label %461

461:                                              ; preds = %459
  %462 = zext i32 %24 to i64
  br label %485

463:                                              ; preds = %457, %482
  %464 = phi i64 [ 0, %457 ], [ %483, %482 ]
  %465 = getelementptr inbounds ptr, ptr %27, i64 %464
  %466 = load ptr, ptr %465, align 8, !tbaa !70
  %467 = getelementptr inbounds %struct.BMEdge, ptr %466, i64 0, i32 4
  %468 = load ptr, ptr %467, align 8, !tbaa !102
  br label %469

469:                                              ; preds = %469, %463
  %470 = phi ptr [ %468, %463 ], [ %480, %469 ]
  %471 = getelementptr inbounds %struct.BMLoop, ptr %470, i64 0, i32 3
  %472 = load ptr, ptr %471, align 8, !tbaa !103
  %473 = getelementptr inbounds %struct.BMFace, ptr %472, i64 0, i32 1
  %474 = load ptr, ptr %473, align 8, !tbaa !43
  %475 = getelementptr %struct.BMFlagLayer, ptr %474, i64 %442
  %476 = getelementptr %struct.BMFlagLayer, ptr %475, i64 -1
  %477 = load i16, ptr %476, align 2, !tbaa !51
  %478 = and i16 %477, -3
  store i16 %478, ptr %476, align 2, !tbaa !51
  %479 = getelementptr inbounds %struct.BMLoop, ptr %470, i64 0, i32 4
  %480 = load ptr, ptr %479, align 8, !tbaa !108
  %481 = icmp eq ptr %480, %468
  br i1 %481, label %482, label %469, !llvm.loop !115

482:                                              ; preds = %469
  %483 = add nuw nsw i64 %464, 1
  %484 = icmp eq i64 %483, %458
  br i1 %484, label %459, label %463, !llvm.loop !116

485:                                              ; preds = %461, %504
  %486 = phi i64 [ 0, %461 ], [ %505, %504 ]
  %487 = getelementptr inbounds ptr, ptr %30, i64 %486
  %488 = load ptr, ptr %487, align 8, !tbaa !70
  %489 = getelementptr inbounds %struct.BMEdge, ptr %488, i64 0, i32 4
  %490 = load ptr, ptr %489, align 8, !tbaa !102
  br label %491

491:                                              ; preds = %491, %485
  %492 = phi ptr [ %490, %485 ], [ %502, %491 ]
  %493 = getelementptr inbounds %struct.BMLoop, ptr %492, i64 0, i32 3
  %494 = load ptr, ptr %493, align 8, !tbaa !103
  %495 = getelementptr inbounds %struct.BMFace, ptr %494, i64 0, i32 1
  %496 = load ptr, ptr %495, align 8, !tbaa !43
  %497 = getelementptr %struct.BMFlagLayer, ptr %496, i64 %442
  %498 = getelementptr %struct.BMFlagLayer, ptr %497, i64 -1
  %499 = load i16, ptr %498, align 2, !tbaa !51
  %500 = and i16 %499, -3
  store i16 %500, ptr %498, align 2, !tbaa !51
  %501 = getelementptr inbounds %struct.BMLoop, ptr %492, i64 0, i32 4
  %502 = load ptr, ptr %501, align 8, !tbaa !108
  %503 = icmp eq ptr %502, %490
  br i1 %503, label %504, label %491, !llvm.loop !115

504:                                              ; preds = %491
  %505 = add nuw nsw i64 %486, 1
  %506 = icmp eq i64 %505, %462
  br i1 %506, label %507, label %485, !llvm.loop !116

507:                                              ; preds = %504, %459
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8
  br label %508

508:                                              ; preds = %507, %4
  ret ptr %12
}

; Function Attrs: nounwind uwtable
define internal fastcc void @bm_edgering_pair_ringsubd(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, float noundef %6, ptr noundef readonly %7) unnamed_addr #0 {
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x float], align 4
  %17 = alloca [4 x float], align 16
  %18 = alloca [3 x float], align 4
  %19 = alloca [3 x float], align 4
  %20 = alloca [3 x float], align 4
  %21 = alloca [3 x float], align 4
  %22 = alloca [3 x float], align 4
  %23 = alloca [3 x float], align 4
  %24 = alloca [3 x float], align 4
  %25 = alloca [3 x float], align 4
  %26 = alloca %struct.BMIter, align 8
  %27 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %27) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %27, i8 0, i64 16, i1 false)
  %28 = tail call ptr @BM_edgeloop_verts_get(ptr noundef %2) #8
  %29 = tail call ptr @BM_edgeloop_verts_get(ptr noundef %3) #8
  %30 = tail call ptr @BM_edgeloop_verts_get(ptr noundef %2) #8
  %31 = load ptr, ptr %30, align 8, !tbaa !67
  br label %32

32:                                               ; preds = %32, %8
  %33 = phi ptr [ %31, %8 ], [ %39, %32 ]
  %34 = getelementptr inbounds %struct.LinkData, ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !76
  %36 = getelementptr inbounds %struct.BMHeader, ptr %35, i64 0, i32 3
  %37 = load i8, ptr %36, align 1, !tbaa !94
  %38 = and i8 %37, -17
  store i8 %38, ptr %36, align 1, !tbaa !94
  %39 = load ptr, ptr %33, align 8, !tbaa !78
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %32, !llvm.loop !95

41:                                               ; preds = %32
  %42 = tail call ptr @BM_edgeloop_verts_get(ptr noundef %3) #8
  %43 = load ptr, ptr %42, align 8, !tbaa !67
  br label %44

44:                                               ; preds = %44, %41
  %45 = phi ptr [ %43, %41 ], [ %51, %44 ]
  %46 = getelementptr inbounds %struct.LinkData, ptr %45, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !76
  %48 = getelementptr inbounds %struct.BMHeader, ptr %47, i64 0, i32 3
  %49 = load i8, ptr %48, align 1, !tbaa !94
  %50 = or i8 %49, 16
  store i8 %50, ptr %48, align 1, !tbaa !94
  %51 = load ptr, ptr %45, align 8, !tbaa !78
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %44, !llvm.loop !95

53:                                               ; preds = %44
  %54 = tail call zeroext i8 @BM_edgeloop_is_closed(ptr noundef %2) #8
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %195, label %56

56:                                               ; preds = %53
  %57 = tail call zeroext i8 @BM_edgeloop_is_closed(ptr noundef %3) #8
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %195, label %59

59:                                               ; preds = %56
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %26) #8
  %60 = load ptr, ptr %28, align 8, !tbaa !67
  %61 = getelementptr inbounds %struct.LinkData, ptr %60, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !76
  %63 = getelementptr inbounds %struct.BMIter, ptr %26, i64 0, i32 4
  store i8 4, ptr %63, align 4, !tbaa !34
  %64 = getelementptr inbounds %struct.BMIter, ptr %26, i64 0, i32 1
  store ptr @bmiter__edge_of_vert_begin, ptr %64, align 8, !tbaa !40
  %65 = getelementptr inbounds %struct.BMIter, ptr %26, i64 0, i32 2
  store ptr @bmiter__edge_of_vert_step, ptr %65, align 8, !tbaa !41
  store ptr %62, ptr %26, align 8, !tbaa !42
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %26) #8
  %66 = load ptr, ptr %65, align 8, !tbaa !41
  %67 = call ptr %66(ptr noundef nonnull %26) #8
  %68 = icmp eq ptr %67, null
  br i1 %68, label %100, label %69

69:                                               ; preds = %59
  %70 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %71

71:                                               ; preds = %69, %96
  %72 = phi ptr [ %67, %69 ], [ %98, %96 ]
  %73 = getelementptr inbounds %struct.BMEdge, ptr %72, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !55
  %75 = load i32, ptr %70, align 8, !tbaa !47
  %76 = sext i32 %75 to i64
  %77 = getelementptr %struct.BMFlagLayer, ptr %74, i64 %76
  %78 = getelementptr %struct.BMFlagLayer, ptr %77, i64 -1
  %79 = load i16, ptr %78, align 2, !tbaa !51
  %80 = and i16 %79, 1
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %96, label %82

82:                                               ; preds = %71
  %83 = load ptr, ptr %61, align 8, !tbaa !76
  %84 = getelementptr inbounds %struct.BMEdge, ptr %72, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !81
  %86 = icmp eq ptr %85, %83
  %87 = getelementptr inbounds %struct.BMEdge, ptr %72, i64 0, i32 3
  %88 = load ptr, ptr %87, align 8, !tbaa !82
  %89 = icmp eq ptr %88, %83
  %90 = select i1 %89, ptr %85, ptr null
  %91 = select i1 %86, ptr %88, ptr %90
  %92 = getelementptr inbounds %struct.BMHeader, ptr %91, i64 0, i32 3
  %93 = load i8, ptr %92, align 1, !tbaa !94
  %94 = and i8 %93, 16
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %82, %71
  %97 = load ptr, ptr %65, align 8, !tbaa !41
  %98 = call ptr %97(ptr noundef nonnull %26) #8
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %71, !llvm.loop !117

100:                                              ; preds = %96, %82, %59
  %101 = phi ptr [ null, %59 ], [ null, %96 ], [ %91, %82 ]
  br label %102

102:                                              ; preds = %106, %100
  %103 = phi ptr [ %29, %100 ], [ %104, %106 ]
  %104 = load ptr, ptr %103, align 8, !tbaa !70
  %105 = icmp eq ptr %104, null
  br i1 %105, label %110, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.LinkData, ptr %104, i64 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !76
  %109 = icmp eq ptr %108, %101
  br i1 %109, label %110, label %102, !llvm.loop !118

110:                                              ; preds = %106, %102
  call void @BLI_listbase_rotate_first(ptr noundef %29, ptr noundef %104) #8
  %111 = call ptr @BM_edgeloop_verts_get(ptr noundef %2) #8
  %112 = call ptr @BM_edgeloop_verts_get(ptr noundef %3) #8
  %113 = load ptr, ptr %111, align 8, !tbaa !67
  %114 = load ptr, ptr %112, align 8, !tbaa !67
  %115 = load ptr, ptr %113, align 8, !tbaa !78
  %116 = icmp eq ptr %115, null
  br i1 %116, label %137, label %117

117:                                              ; preds = %110
  %118 = getelementptr inbounds %struct.LinkData, ptr %114, i64 0, i32 2
  br label %119

119:                                              ; preds = %117, %127
  %120 = phi i1 [ %116, %117 ], [ %129, %127 ]
  %121 = phi ptr [ %115, %117 ], [ %128, %127 ]
  %122 = getelementptr inbounds %struct.LinkData, ptr %121, i64 0, i32 2
  %123 = load ptr, ptr %122, align 8, !tbaa !76
  %124 = load ptr, ptr %118, align 8, !tbaa !76
  %125 = call ptr @BM_edge_exists(ptr noundef %123, ptr noundef %124) #8
  %126 = icmp eq ptr %125, null
  br i1 %126, label %130, label %127

127:                                              ; preds = %119, %130
  %128 = load ptr, ptr %121, align 8, !tbaa !78
  %129 = icmp eq ptr %128, null
  br i1 %129, label %137, label %119, !llvm.loop !119

130:                                              ; preds = %119
  %131 = load ptr, ptr %122, align 8, !tbaa !76
  %132 = load ptr, ptr %114, align 8, !tbaa !78
  %133 = getelementptr inbounds %struct.LinkData, ptr %132, i64 0, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !76
  %135 = call ptr @BM_edge_exists(ptr noundef %131, ptr noundef %134) #8
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %127

137:                                              ; preds = %127, %130, %110
  %138 = phi ptr [ %115, %110 ], [ %128, %127 ], [ %121, %130 ]
  %139 = phi i1 [ %116, %110 ], [ %129, %127 ], [ %120, %130 ]
  %140 = load ptr, ptr %114, align 8, !tbaa !78
  %141 = icmp eq ptr %140, null
  br i1 %141, label %162, label %142

142:                                              ; preds = %137
  %143 = getelementptr inbounds %struct.LinkData, ptr %113, i64 0, i32 2
  br label %144

144:                                              ; preds = %142, %152
  %145 = phi i1 [ %141, %142 ], [ %154, %152 ]
  %146 = phi ptr [ %140, %142 ], [ %153, %152 ]
  %147 = getelementptr inbounds %struct.LinkData, ptr %146, i64 0, i32 2
  %148 = load ptr, ptr %147, align 8, !tbaa !76
  %149 = load ptr, ptr %143, align 8, !tbaa !76
  %150 = call ptr @BM_edge_exists(ptr noundef %148, ptr noundef %149) #8
  %151 = icmp eq ptr %150, null
  br i1 %151, label %155, label %152

152:                                              ; preds = %144, %155
  %153 = load ptr, ptr %146, align 8, !tbaa !78
  %154 = icmp eq ptr %153, null
  br i1 %154, label %162, label %144, !llvm.loop !120

155:                                              ; preds = %144
  %156 = load ptr, ptr %147, align 8, !tbaa !76
  %157 = load ptr, ptr %113, align 8, !tbaa !78
  %158 = getelementptr inbounds %struct.LinkData, ptr %157, i64 0, i32 2
  %159 = load ptr, ptr %158, align 8, !tbaa !76
  %160 = call ptr @BM_edge_exists(ptr noundef %156, ptr noundef %159) #8
  %161 = icmp eq ptr %160, null
  br i1 %161, label %162, label %152

162:                                              ; preds = %152, %155, %137
  %163 = phi ptr [ %140, %137 ], [ %153, %152 ], [ %146, %155 ]
  %164 = phi i1 [ %141, %137 ], [ %154, %152 ], [ %145, %155 ]
  %165 = getelementptr inbounds %struct.LinkData, ptr %138, i64 0, i32 1
  %166 = getelementptr inbounds %struct.ListBase, ptr %111, i64 0, i32 1
  %167 = select i1 %139, ptr %166, ptr %165
  %168 = load ptr, ptr %167, align 8, !tbaa !70
  %169 = getelementptr inbounds %struct.LinkData, ptr %163, i64 0, i32 1
  %170 = getelementptr inbounds %struct.ListBase, ptr %112, i64 0, i32 1
  %171 = select i1 %164, ptr %170, ptr %169
  %172 = load ptr, ptr %171, align 8, !tbaa !70
  %173 = getelementptr inbounds %struct.LinkData, ptr %168, i64 0, i32 2
  %174 = load ptr, ptr %173, align 8, !tbaa !76
  %175 = getelementptr inbounds %struct.LinkData, ptr %172, i64 0, i32 2
  %176 = load ptr, ptr %175, align 8, !tbaa !76
  %177 = call ptr @BM_edge_exists(ptr noundef %174, ptr noundef %176) #8
  %178 = icmp eq ptr %177, null
  br i1 %178, label %179, label %194

179:                                              ; preds = %162
  %180 = load ptr, ptr %113, align 8, !tbaa !78
  %181 = getelementptr inbounds %struct.LinkData, ptr %180, i64 0, i32 2
  %182 = load ptr, ptr %181, align 8, !tbaa !76
  %183 = load ptr, ptr %175, align 8, !tbaa !76
  %184 = call ptr @BM_edge_exists(ptr noundef %182, ptr noundef %183) #8
  %185 = icmp eq ptr %184, null
  br i1 %185, label %186, label %194

186:                                              ; preds = %179
  %187 = load ptr, ptr %114, align 8, !tbaa !78
  %188 = getelementptr inbounds %struct.LinkData, ptr %187, i64 0, i32 2
  %189 = load ptr, ptr %188, align 8, !tbaa !76
  %190 = load ptr, ptr %173, align 8, !tbaa !76
  %191 = call ptr @BM_edge_exists(ptr noundef %189, ptr noundef %190) #8
  %192 = icmp eq ptr %191, null
  br i1 %192, label %193, label %194

193:                                              ; preds = %186
  call void @BM_edgeloop_flip(ptr noundef %0, ptr noundef %3) #8
  call void @BLI_listbase_rotate_first(ptr noundef %29, ptr noundef %104) #8
  br label %194

194:                                              ; preds = %179, %162, %193, %186
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %26) #8
  br label %216

195:                                              ; preds = %56, %53
  %196 = load ptr, ptr %28, align 8, !tbaa !67
  %197 = getelementptr inbounds %struct.LinkData, ptr %196, i64 0, i32 2
  %198 = load ptr, ptr %197, align 8, !tbaa !76
  %199 = load ptr, ptr %29, align 8, !tbaa !67
  %200 = getelementptr inbounds %struct.LinkData, ptr %199, i64 0, i32 2
  %201 = load ptr, ptr %200, align 8, !tbaa !76
  %202 = tail call ptr @BM_edge_exists(ptr noundef %198, ptr noundef %201) #8
  %203 = icmp eq ptr %202, null
  br i1 %203, label %215, label %204

204:                                              ; preds = %195
  %205 = getelementptr inbounds %struct.BMEdge, ptr %202, i64 0, i32 1
  %206 = load ptr, ptr %205, align 8, !tbaa !55
  %207 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %208 = load i32, ptr %207, align 8, !tbaa !47
  %209 = sext i32 %208 to i64
  %210 = getelementptr %struct.BMFlagLayer, ptr %206, i64 %209
  %211 = getelementptr %struct.BMFlagLayer, ptr %210, i64 -1
  %212 = load i16, ptr %211, align 2, !tbaa !51
  %213 = and i16 %212, 1
  %214 = icmp eq i16 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %204, %195
  tail call void @BM_edgeloop_flip(ptr noundef %0, ptr noundef %3) #8
  br label %216

216:                                              ; preds = %215, %204, %194
  %217 = call ptr @BM_edgeloop_verts_get(ptr noundef %3) #8
  %218 = load ptr, ptr %217, align 8, !tbaa !67
  br label %219

219:                                              ; preds = %219, %216
  %220 = phi ptr [ %218, %216 ], [ %226, %219 ]
  %221 = getelementptr inbounds %struct.LinkData, ptr %220, i64 0, i32 2
  %222 = load ptr, ptr %221, align 8, !tbaa !76
  %223 = getelementptr inbounds %struct.BMHeader, ptr %222, i64 0, i32 3
  %224 = load i8, ptr %223, align 1, !tbaa !94
  %225 = and i8 %224, -17
  store i8 %225, ptr %223, align 1, !tbaa !94
  %226 = load ptr, ptr %220, align 8, !tbaa !78
  %227 = icmp eq ptr %226, null
  br i1 %227, label %228, label %219, !llvm.loop !95

228:                                              ; preds = %219
  call fastcc void @bm_edgering_pair_subdiv(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %27, i32 noundef %5)
  %229 = add i32 %5, 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #8
  call void @BM_edgeloop_calc_center(ptr noundef %0, ptr noundef %2) #8
  call void @BM_edgeloop_calc_center(ptr noundef %0, ptr noundef %3) #8
  %230 = call zeroext i8 @BM_edgeloop_calc_normal(ptr noundef %0, ptr noundef %2) #8
  %231 = call zeroext i8 @BM_edgeloop_calc_normal(ptr noundef %0, ptr noundef %3) #8
  %232 = call ptr @BM_edgeloop_center_get(ptr noundef %2) #8
  %233 = load float, ptr %232, align 4, !tbaa !64
  store float %233, ptr %9, align 4, !tbaa !64
  %234 = getelementptr inbounds float, ptr %232, i64 1
  %235 = load float, ptr %234, align 4, !tbaa !64
  %236 = getelementptr inbounds float, ptr %9, i64 1
  store float %235, ptr %236, align 4, !tbaa !64
  %237 = getelementptr inbounds float, ptr %232, i64 2
  %238 = load float, ptr %237, align 4, !tbaa !64
  %239 = getelementptr inbounds float, ptr %9, i64 2
  store float %238, ptr %239, align 4, !tbaa !64
  %240 = call ptr @BM_edgeloop_center_get(ptr noundef %3) #8
  %241 = load float, ptr %240, align 4, !tbaa !64
  store float %241, ptr %10, align 4, !tbaa !64
  %242 = getelementptr inbounds float, ptr %240, i64 1
  %243 = load float, ptr %242, align 4, !tbaa !64
  %244 = getelementptr inbounds float, ptr %10, i64 1
  store float %243, ptr %244, align 4, !tbaa !64
  %245 = getelementptr inbounds float, ptr %240, i64 2
  %246 = load float, ptr %245, align 4, !tbaa !64
  %247 = getelementptr inbounds float, ptr %10, i64 2
  store float %246, ptr %247, align 4, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #8
  %248 = load float, ptr %9, align 4, !tbaa !64
  %249 = fsub float %248, %241
  %250 = load float, ptr %236, align 4, !tbaa !64
  %251 = fsub float %250, %243
  %252 = load float, ptr %239, align 4, !tbaa !64
  %253 = fsub float %252, %246
  %254 = fmul float %251, %251
  %255 = call float @llvm.fmuladd.f32(float %249, float %249, float %254)
  %256 = call float @llvm.fmuladd.f32(float %253, float %253, float %255)
  %257 = fcmp ogt float %256, 0x38AA95A5C0000000
  br i1 %257, label %258, label %265

258:                                              ; preds = %228
  %259 = call float @sqrtf(float noundef %256) #8
  %260 = fdiv float 1.000000e+00, %259
  %261 = fmul float %249, %260
  store float %261, ptr %13, align 4, !tbaa !64
  %262 = fmul float %251, %260
  %263 = getelementptr inbounds float, ptr %13, i64 1
  store float %262, ptr %263, align 4, !tbaa !64
  %264 = fmul float %253, %260
  br label %267

265:                                              ; preds = %228
  store float 0.000000e+00, ptr %13, align 4, !tbaa !64
  %266 = getelementptr inbounds float, ptr %13, i64 1
  store float 0.000000e+00, ptr %266, align 4, !tbaa !64
  br label %267

267:                                              ; preds = %265, %258
  %268 = phi float [ 0.000000e+00, %265 ], [ %264, %258 ]
  %269 = getelementptr inbounds float, ptr %13, i64 2
  store float %268, ptr %269, align 4, !tbaa !64
  %270 = icmp eq i8 %230, 0
  br i1 %270, label %271, label %273

271:                                              ; preds = %267
  %272 = call zeroext i8 @BM_edgeloop_calc_normal_aligned(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %13) #8
  br label %273

273:                                              ; preds = %271, %267
  %274 = icmp eq i8 %231, 0
  br i1 %274, label %275, label %277

275:                                              ; preds = %273
  %276 = call zeroext i8 @BM_edgeloop_calc_normal_aligned(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %13) #8
  br label %277

277:                                              ; preds = %275, %273
  %278 = call ptr @BM_edgeloop_normal_get(ptr noundef %2) #8
  %279 = load float, ptr %278, align 4, !tbaa !64
  store float %279, ptr %11, align 4, !tbaa !64
  %280 = getelementptr inbounds float, ptr %278, i64 1
  %281 = load float, ptr %280, align 4, !tbaa !64
  %282 = getelementptr inbounds float, ptr %11, i64 1
  store float %281, ptr %282, align 4, !tbaa !64
  %283 = getelementptr inbounds float, ptr %278, i64 2
  %284 = load float, ptr %283, align 4, !tbaa !64
  %285 = getelementptr inbounds float, ptr %11, i64 2
  store float %284, ptr %285, align 4, !tbaa !64
  %286 = call ptr @BM_edgeloop_normal_get(ptr noundef %3) #8
  %287 = load float, ptr %286, align 4, !tbaa !64
  store float %287, ptr %12, align 4, !tbaa !64
  %288 = getelementptr inbounds float, ptr %286, i64 1
  %289 = load float, ptr %288, align 4, !tbaa !64
  %290 = getelementptr inbounds float, ptr %12, i64 1
  store float %289, ptr %290, align 4, !tbaa !64
  %291 = getelementptr inbounds float, ptr %286, i64 2
  %292 = load float, ptr %291, align 4, !tbaa !64
  %293 = getelementptr inbounds float, ptr %12, i64 2
  store float %292, ptr %293, align 4, !tbaa !64
  %294 = fmul float %251, %281
  %295 = call float @llvm.fmuladd.f32(float %279, float %249, float %294)
  %296 = call float @llvm.fmuladd.f32(float %284, float %253, float %295)
  %297 = fcmp ogt float %296, 0.000000e+00
  br i1 %297, label %298, label %302

298:                                              ; preds = %277
  %299 = fneg float %279
  store float %299, ptr %11, align 4, !tbaa !64
  %300 = fneg float %281
  store float %300, ptr %282, align 4, !tbaa !64
  %301 = fneg float %284
  store float %301, ptr %285, align 4, !tbaa !64
  br label %302

302:                                              ; preds = %298, %277
  %303 = fmul float %251, %289
  %304 = call float @llvm.fmuladd.f32(float %287, float %249, float %303)
  %305 = call float @llvm.fmuladd.f32(float %292, float %253, float %304)
  %306 = fcmp olt float %305, 0.000000e+00
  br i1 %306, label %307, label %311

307:                                              ; preds = %302
  %308 = fneg float %287
  store float %308, ptr %12, align 4, !tbaa !64
  %309 = fneg float %289
  store float %309, ptr %290, align 4, !tbaa !64
  %310 = fneg float %292
  store float %310, ptr %293, align 4, !tbaa !64
  br label %311

311:                                              ; preds = %307, %302
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #8
  %312 = icmp eq i32 %4, 1
  %313 = icmp ne ptr %7, null
  %314 = or i1 %312, %313
  br i1 %314, label %315, label %366

315:                                              ; preds = %311
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #8
  %316 = call fastcc float @bezier_handle_calc_length_v3(ptr noundef nonnull %9, ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef nonnull %12)
  %317 = fmul float %316, %6
  %318 = load float, ptr %11, align 4, !tbaa !64
  %319 = fmul float %318, %317
  store float %319, ptr %14, align 4, !tbaa !64
  %320 = load float, ptr %282, align 4, !tbaa !64
  %321 = fmul float %317, %320
  %322 = getelementptr inbounds float, ptr %14, i64 1
  store float %321, ptr %322, align 4, !tbaa !64
  %323 = load float, ptr %285, align 4, !tbaa !64
  %324 = fmul float %317, %323
  %325 = getelementptr inbounds float, ptr %14, i64 2
  store float %324, ptr %325, align 4, !tbaa !64
  %326 = load float, ptr %12, align 4, !tbaa !64
  %327 = fmul float %317, %326
  store float %327, ptr %15, align 4, !tbaa !64
  %328 = load float, ptr %290, align 4, !tbaa !64
  %329 = fmul float %317, %328
  %330 = getelementptr inbounds float, ptr %15, i64 1
  store float %329, ptr %330, align 4, !tbaa !64
  %331 = load float, ptr %293, align 4, !tbaa !64
  %332 = fmul float %317, %331
  %333 = getelementptr inbounds float, ptr %15, i64 2
  store float %332, ptr %333, align 4, !tbaa !64
  %334 = load float, ptr %9, align 4, !tbaa !64
  %335 = fadd float %319, %334
  store float %335, ptr %14, align 4, !tbaa !64
  %336 = load float, ptr %236, align 4, !tbaa !64
  %337 = fadd float %321, %336
  store float %337, ptr %322, align 4, !tbaa !64
  %338 = load float, ptr %239, align 4, !tbaa !64
  %339 = fadd float %324, %338
  store float %339, ptr %325, align 4, !tbaa !64
  %340 = load float, ptr %10, align 4, !tbaa !64
  %341 = fadd float %327, %340
  store float %341, ptr %15, align 4, !tbaa !64
  %342 = load float, ptr %244, align 4, !tbaa !64
  %343 = fadd float %329, %342
  store float %343, ptr %330, align 4, !tbaa !64
  %344 = load float, ptr %247, align 4, !tbaa !64
  %345 = fadd float %332, %344
  store float %345, ptr %333, align 4, !tbaa !64
  %346 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !70
  %347 = mul nsw i32 %229, 3
  %348 = sext i32 %347 to i64
  %349 = shl nsw i64 %348, 2
  %350 = call ptr %346(i64 noundef %349, ptr noundef nonnull @__func__.bm_edgering_pair_interpolate) #8
  %351 = add nsw i32 %5, 1
  br label %352

352:                                              ; preds = %315, %352
  %353 = phi i64 [ 0, %315 ], [ %363, %352 ]
  %354 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 %353
  %355 = load float, ptr %354, align 4, !tbaa !64
  %356 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 %353
  %357 = load float, ptr %356, align 4, !tbaa !64
  %358 = getelementptr inbounds [3 x float], ptr %15, i64 0, i64 %353
  %359 = load float, ptr %358, align 4, !tbaa !64
  %360 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 %353
  %361 = load float, ptr %360, align 4, !tbaa !64
  %362 = getelementptr inbounds float, ptr %350, i64 %353
  call void @BKE_curve_forward_diff_bezier(float noundef %355, float noundef %357, float noundef %359, float noundef %361, ptr noundef %362, i32 noundef %351, i32 noundef 12) #8
  %363 = add nuw nsw i64 %353, 1
  %364 = icmp eq i64 %363, 3
  br i1 %364, label %365, label %352, !llvm.loop !121

365:                                              ; preds = %352
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #8
  br label %366

366:                                              ; preds = %365, %311
  %367 = phi ptr [ %350, %365 ], [ null, %311 ]
  switch i32 %4, label %740 [
    i32 0, label %368
    i32 1, label %419
    i32 2, label %601
  ]

368:                                              ; preds = %366
  br i1 %313, label %369, label %740

369:                                              ; preds = %368
  %370 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !70
  %371 = mul nsw i32 %229, 3
  %372 = sext i32 %371 to i64
  %373 = shl nsw i64 %372, 2
  %374 = call ptr %370(i64 noundef %373, ptr noundef nonnull @__func__.bm_edgering_pair_interpolate) #8
  %375 = icmp sgt i32 %5, -2
  br i1 %375, label %376, label %381

376:                                              ; preds = %369
  %377 = add nsw i32 %5, 1
  %378 = sitofp i32 %377 to float
  %379 = call i32 @llvm.smax.i32(i32 %229, i32 1)
  %380 = zext nneg i32 %379 to i64
  br label %386

381:                                              ; preds = %386, %369
  %382 = load ptr, ptr %27, align 8, !tbaa !70
  %383 = icmp eq ptr %382, null
  br i1 %383, label %737, label %384

384:                                              ; preds = %381
  %385 = sext i32 %5 to i64
  br label %397

386:                                              ; preds = %376, %386
  %387 = phi i64 [ 0, %376 ], [ %392, %386 ]
  %388 = getelementptr inbounds [3 x float], ptr %374, i64 %387
  %389 = trunc i64 %387 to i32
  %390 = sitofp i32 %389 to float
  %391 = fdiv float %390, %378
  call void @interp_v3_v3v3(ptr noundef %388, ptr noundef nonnull %9, ptr noundef nonnull %10, float noundef %391) #8
  %392 = add nuw nsw i64 %387, 1
  %393 = icmp eq i64 %392, %380
  br i1 %393, label %381, label %386, !llvm.loop !122

394:                                              ; preds = %415, %397
  %395 = load ptr, ptr %398, align 8, !tbaa !70
  %396 = icmp eq ptr %395, null
  br i1 %396, label %737, label %397, !llvm.loop !123

397:                                              ; preds = %384, %394
  %398 = phi ptr [ %395, %394 ], [ %382, %384 ]
  %399 = call ptr @BM_edgeloop_verts_get(ptr noundef nonnull %398) #8
  %400 = load ptr, ptr %399, align 8, !tbaa !70
  %401 = icmp eq ptr %400, null
  br i1 %401, label %394, label %402

402:                                              ; preds = %397, %415
  %403 = phi i64 [ %416, %415 ], [ 0, %397 ]
  %404 = phi ptr [ %417, %415 ], [ %400, %397 ]
  %405 = icmp eq i64 %403, 0
  %406 = icmp sgt i64 %403, %385
  %407 = or i1 %405, %406
  br i1 %407, label %415, label %408

408:                                              ; preds = %402
  %409 = getelementptr inbounds %struct.LinkData, ptr %404, i64 0, i32 2
  %410 = load ptr, ptr %409, align 8, !tbaa !76
  %411 = getelementptr inbounds %struct.BMVert, ptr %410, i64 0, i32 2
  %412 = getelementptr inbounds [3 x float], ptr %374, i64 %403
  %413 = getelementptr inbounds float, ptr %7, i64 %403
  %414 = load float, ptr %413, align 4, !tbaa !64
  call void @interp_v3_v3v3(ptr noundef nonnull %411, ptr noundef nonnull %412, ptr noundef nonnull %411, float noundef %414) #8
  br label %415

415:                                              ; preds = %408, %402
  %416 = add nuw i64 %403, 1
  %417 = load ptr, ptr %404, align 8, !tbaa !70
  %418 = icmp eq ptr %417, null
  br i1 %418, label %394, label %402, !llvm.loop !124

419:                                              ; preds = %366
  %420 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !70
  %421 = mul nsw i32 %229, 3
  %422 = sext i32 %421 to i64
  %423 = shl nsw i64 %422, 2
  %424 = call ptr %420(i64 noundef %423, ptr noundef nonnull @__func__.bm_edgering_pair_interpolate) #8
  %425 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !70
  %426 = sext i32 %229 to i64
  %427 = shl nsw i64 %426, 4
  %428 = call ptr %425(i64 noundef %427, ptr noundef nonnull @__func__.bm_edgering_pair_interpolate) #8
  %429 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !70
  %430 = mul nsw i64 %426, 36
  %431 = call ptr %429(i64 noundef %430, ptr noundef nonnull @__func__.bm_edgering_pair_interpolate) #8
  %432 = load float, ptr %11, align 4, !tbaa !64
  store float %432, ptr %424, align 4, !tbaa !64
  %433 = load float, ptr %282, align 4, !tbaa !64
  %434 = getelementptr inbounds float, ptr %424, i64 1
  store float %433, ptr %434, align 4, !tbaa !64
  %435 = load float, ptr %285, align 4, !tbaa !64
  %436 = getelementptr inbounds float, ptr %424, i64 2
  store float %435, ptr %436, align 4, !tbaa !64
  %437 = add nsw i32 %5, 1
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds [3 x float], ptr %424, i64 %438
  %440 = load float, ptr %12, align 4, !tbaa !64
  %441 = fneg float %440
  store float %441, ptr %439, align 4, !tbaa !64
  %442 = load float, ptr %290, align 4, !tbaa !64
  %443 = fneg float %442
  %444 = getelementptr inbounds float, ptr %439, i64 1
  store float %443, ptr %444, align 4, !tbaa !64
  %445 = load float, ptr %293, align 4, !tbaa !64
  %446 = fneg float %445
  %447 = getelementptr inbounds float, ptr %439, i64 2
  store float %446, ptr %447, align 4, !tbaa !64
  %448 = icmp slt i32 %5, 1
  br i1 %448, label %461, label %449

449:                                              ; preds = %419
  %450 = add nuw i32 %5, 1
  %451 = zext i32 %450 to i64
  br label %452

452:                                              ; preds = %449, %452
  %453 = phi i64 [ 1, %449 ], [ %458, %452 ]
  %454 = getelementptr inbounds [3 x float], ptr %424, i64 %453
  %455 = add nsw i64 %453, -1
  %456 = getelementptr inbounds [3 x float], ptr %367, i64 %455
  %457 = getelementptr inbounds [3 x float], ptr %367, i64 %453
  %458 = add nuw nsw i64 %453, 1
  %459 = getelementptr inbounds [3 x float], ptr %367, i64 %458
  call void @bisect_v3_v3v3v3(ptr noundef nonnull %454, ptr noundef %456, ptr noundef nonnull %457, ptr noundef nonnull %459) #8
  %460 = icmp eq i64 %458, %451
  br i1 %460, label %461, label %452, !llvm.loop !125

461:                                              ; preds = %452, %419
  call void @vec_to_quat(ptr noundef %428, ptr noundef nonnull %424, i16 noundef signext 5, i16 noundef signext 1) #8
  %462 = call float @normalize_qt(ptr noundef %428) #8
  %463 = icmp sgt i32 %5, -1
  br i1 %463, label %464, label %469

464:                                              ; preds = %461
  %465 = getelementptr inbounds float, ptr %16, i64 1
  %466 = getelementptr inbounds float, ptr %16, i64 2
  %467 = call i32 @llvm.smax.i32(i32 %229, i32 2)
  %468 = zext nneg i32 %467 to i64
  br label %474

469:                                              ; preds = %513, %461
  %470 = icmp sgt i32 %5, -2
  br i1 %470, label %471, label %553

471:                                              ; preds = %469
  %472 = call i32 @llvm.smax.i32(i32 %229, i32 1)
  %473 = zext nneg i32 %472 to i64
  br label %516

474:                                              ; preds = %464, %513
  %475 = phi i64 [ 1, %464 ], [ %514, %513 ]
  %476 = add nsw i64 %475, -1
  %477 = getelementptr inbounds [3 x float], ptr %424, i64 %476
  %478 = getelementptr inbounds [3 x float], ptr %424, i64 %475
  %479 = call float @angle_normalized_v3v3(ptr noundef nonnull %477, ptr noundef nonnull %478) #8
  %480 = fcmp ogt float %479, 0.000000e+00
  br i1 %480, label %481, label %510

481:                                              ; preds = %474
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #8
  %482 = getelementptr inbounds float, ptr %477, i64 1
  %483 = load float, ptr %482, align 4, !tbaa !64
  %484 = getelementptr inbounds float, ptr %478, i64 2
  %485 = load float, ptr %484, align 4, !tbaa !64
  %486 = getelementptr inbounds float, ptr %477, i64 2
  %487 = load float, ptr %486, align 4, !tbaa !64
  %488 = getelementptr inbounds float, ptr %478, i64 1
  %489 = load float, ptr %488, align 4, !tbaa !64
  %490 = fneg float %487
  %491 = fmul float %489, %490
  %492 = call float @llvm.fmuladd.f32(float %483, float %485, float %491)
  store float %492, ptr %16, align 4, !tbaa !64
  %493 = load float, ptr %486, align 4, !tbaa !64
  %494 = load float, ptr %478, align 4, !tbaa !64
  %495 = load float, ptr %477, align 4, !tbaa !64
  %496 = load float, ptr %484, align 4, !tbaa !64
  %497 = fneg float %495
  %498 = fmul float %496, %497
  %499 = call float @llvm.fmuladd.f32(float %493, float %494, float %498)
  store float %499, ptr %465, align 4, !tbaa !64
  %500 = load float, ptr %477, align 4, !tbaa !64
  %501 = load float, ptr %488, align 4, !tbaa !64
  %502 = load float, ptr %482, align 4, !tbaa !64
  %503 = load float, ptr %478, align 4, !tbaa !64
  %504 = fneg float %502
  %505 = fmul float %503, %504
  %506 = call float @llvm.fmuladd.f32(float %500, float %501, float %505)
  store float %506, ptr %466, align 4, !tbaa !64
  call void @axis_angle_to_quat(ptr noundef nonnull %17, ptr noundef nonnull %16, float noundef %479) #8
  %507 = getelementptr inbounds [4 x float], ptr %428, i64 %475
  %508 = getelementptr inbounds [4 x float], ptr %428, i64 %476
  call void @mul_qt_qtqt(ptr noundef nonnull %507, ptr noundef nonnull %17, ptr noundef %508) #8
  %509 = call float @normalize_qt(ptr noundef nonnull %507) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #8
  br label %513

510:                                              ; preds = %474
  %511 = getelementptr inbounds [4 x float], ptr %428, i64 %475
  %512 = getelementptr inbounds [4 x float], ptr %428, i64 %476
  call void @copy_qt_qt(ptr noundef nonnull %511, ptr noundef %512) #8
  br label %513

513:                                              ; preds = %510, %481
  %514 = add nuw nsw i64 %475, 1
  %515 = icmp eq i64 %514, %468
  br i1 %515, label %469, label %474, !llvm.loop !126

516:                                              ; preds = %471, %550
  %517 = phi i64 [ 0, %471 ], [ %551, %550 ]
  br i1 %313, label %518, label %521

518:                                              ; preds = %516
  %519 = getelementptr inbounds float, ptr %7, i64 %517
  %520 = load float, ptr %519, align 4, !tbaa !64
  br label %521

521:                                              ; preds = %518, %516
  %522 = phi float [ %520, %518 ], [ 1.000000e+00, %516 ]
  %523 = getelementptr inbounds [3 x [3 x float]], ptr %431, i64 %517
  %524 = getelementptr inbounds [4 x float], ptr %428, i64 %517
  %525 = getelementptr inbounds [3 x float], ptr %367, i64 %517
  %526 = getelementptr inbounds float, ptr %525, i64 1
  %527 = getelementptr inbounds float, ptr %525, i64 2
  br label %528

528:                                              ; preds = %521, %538
  %529 = phi i64 [ 0, %521 ], [ %548, %538 ]
  %530 = getelementptr inbounds [3 x float], ptr %523, i64 %529
  store float 0.000000e+00, ptr %530, align 4, !tbaa !64
  %531 = getelementptr inbounds float, ptr %530, i64 1
  store float 0.000000e+00, ptr %531, align 4, !tbaa !64
  %532 = getelementptr inbounds float, ptr %530, i64 2
  store float 0.000000e+00, ptr %532, align 4, !tbaa !64
  %533 = trunc i64 %529 to i32
  switch i32 %533, label %538 [
    i32 1, label %536
    i32 2, label %534
  ]

534:                                              ; preds = %528
  %535 = getelementptr inbounds [3 x float], ptr %523, i64 %529, i64 1
  br label %536

536:                                              ; preds = %528, %534
  %537 = phi ptr [ %535, %534 ], [ %530, %528 ]
  store float %522, ptr %537, align 4, !tbaa !64
  br label %538

538:                                              ; preds = %536, %528
  call void @mul_qt_v3(ptr noundef %524, ptr noundef nonnull %530) #8
  %539 = load float, ptr %525, align 4, !tbaa !64
  %540 = load float, ptr %530, align 4, !tbaa !64
  %541 = fadd float %539, %540
  store float %541, ptr %530, align 4, !tbaa !64
  %542 = load float, ptr %526, align 4, !tbaa !64
  %543 = load float, ptr %531, align 4, !tbaa !64
  %544 = fadd float %542, %543
  store float %544, ptr %531, align 4, !tbaa !64
  %545 = load float, ptr %527, align 4, !tbaa !64
  %546 = load float, ptr %532, align 4, !tbaa !64
  %547 = fadd float %545, %546
  store float %547, ptr %532, align 4, !tbaa !64
  %548 = add nuw nsw i64 %529, 1
  %549 = icmp eq i64 %548, 3
  br i1 %549, label %550, label %528, !llvm.loop !127

550:                                              ; preds = %538
  %551 = add nuw nsw i64 %517, 1
  %552 = icmp eq i64 %551, %473
  br i1 %552, label %553, label %516, !llvm.loop !128

553:                                              ; preds = %550, %469
  %554 = getelementptr inbounds [3 x [3 x float]], ptr %431, i64 %438
  %555 = load ptr, ptr %27, align 8, !tbaa !70
  %556 = icmp eq ptr %555, null
  br i1 %556, label %598, label %557

557:                                              ; preds = %553
  %558 = getelementptr inbounds [3 x float], ptr %431, i64 1
  %559 = getelementptr inbounds [3 x float], ptr %431, i64 2
  %560 = getelementptr inbounds [3 x float], ptr %554, i64 1
  %561 = getelementptr inbounds [3 x float], ptr %554, i64 2
  %562 = sitofp i32 %437 to float
  br label %566

563:                                              ; preds = %582, %566
  %564 = load ptr, ptr %567, align 8, !tbaa !70
  %565 = icmp eq ptr %564, null
  br i1 %565, label %598, label %566, !llvm.loop !129

566:                                              ; preds = %557, %563
  %567 = phi ptr [ %555, %557 ], [ %564, %563 ]
  %568 = call ptr @BM_edgeloop_verts_get(ptr noundef nonnull %567) #8
  %569 = load ptr, ptr %568, align 8, !tbaa !67
  %570 = getelementptr inbounds %struct.ListBase, ptr %568, i64 0, i32 1
  %571 = load ptr, ptr %569, align 8, !tbaa !78
  %572 = load ptr, ptr %570, align 8, !tbaa !68
  %573 = icmp eq ptr %571, %572
  br i1 %573, label %563, label %574

574:                                              ; preds = %566
  %575 = load ptr, ptr %570, align 8, !tbaa !68
  %576 = getelementptr inbounds %struct.LinkData, ptr %575, i64 0, i32 2
  %577 = load ptr, ptr %576, align 8, !tbaa !76
  %578 = getelementptr inbounds %struct.LinkData, ptr %569, i64 0, i32 2
  %579 = load ptr, ptr %578, align 8, !tbaa !76
  %580 = getelementptr inbounds %struct.BMVert, ptr %579, i64 0, i32 2
  %581 = getelementptr inbounds %struct.BMVert, ptr %577, i64 0, i32 2
  br label %582

582:                                              ; preds = %574, %582
  %583 = phi i64 [ 1, %574 ], [ %594, %582 ]
  %584 = phi ptr [ %571, %574 ], [ %595, %582 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #8
  %585 = getelementptr inbounds [3 x [3 x float]], ptr %431, i64 %583
  %586 = getelementptr inbounds [3 x float], ptr %585, i64 1
  %587 = getelementptr inbounds [3 x float], ptr %585, i64 2
  call void @transform_point_by_tri_v3(ptr noundef nonnull %18, ptr noundef nonnull %580, ptr noundef nonnull %585, ptr noundef nonnull %586, ptr noundef nonnull %587, ptr noundef %431, ptr noundef nonnull %558, ptr noundef nonnull %559) #8
  call void @transform_point_by_tri_v3(ptr noundef nonnull %19, ptr noundef nonnull %581, ptr noundef nonnull %585, ptr noundef nonnull %586, ptr noundef nonnull %587, ptr noundef %554, ptr noundef nonnull %560, ptr noundef nonnull %561) #8
  %588 = getelementptr inbounds %struct.LinkData, ptr %584, i64 0, i32 2
  %589 = load ptr, ptr %588, align 8, !tbaa !76
  %590 = getelementptr inbounds %struct.BMVert, ptr %589, i64 0, i32 2
  %591 = trunc i64 %583 to i32
  %592 = sitofp i32 %591 to float
  %593 = fdiv float %592, %562
  call void @interp_v3_v3v3(ptr noundef nonnull %590, ptr noundef nonnull %18, ptr noundef nonnull %19, float noundef %593) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #8
  %594 = add nuw i64 %583, 1
  %595 = load ptr, ptr %584, align 8, !tbaa !78
  %596 = load ptr, ptr %570, align 8, !tbaa !68
  %597 = icmp eq ptr %595, %596
  br i1 %597, label %563, label %582, !llvm.loop !130

598:                                              ; preds = %563, %553
  %599 = load ptr, ptr @MEM_freeN, align 8, !tbaa !70
  call void %599(ptr noundef nonnull %424) #8
  %600 = load ptr, ptr @MEM_freeN, align 8, !tbaa !70
  call void %600(ptr noundef %428) #8
  br label %737

601:                                              ; preds = %366
  %602 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !70
  %603 = mul nsw i32 %229, 3
  %604 = sext i32 %603 to i64
  %605 = shl nsw i64 %604, 2
  %606 = call ptr %602(i64 noundef %605, ptr noundef nonnull @__func__.bm_edgering_pair_interpolate) #8
  %607 = load ptr, ptr %27, align 8, !tbaa !70
  %608 = icmp eq ptr %607, null
  br i1 %608, label %737, label %609

609:                                              ; preds = %601
  %610 = getelementptr inbounds float, ptr %20, i64 1
  %611 = getelementptr inbounds float, ptr %20, i64 2
  %612 = getelementptr inbounds float, ptr %23, i64 1
  %613 = getelementptr inbounds float, ptr %23, i64 2
  %614 = getelementptr inbounds %struct.LoopPairStore, ptr %1, i64 0, i32 2
  %615 = getelementptr inbounds %struct.LoopPairStore, ptr %1, i64 0, i32 3
  %616 = getelementptr inbounds float, ptr %21, i64 1
  %617 = getelementptr inbounds float, ptr %21, i64 2
  %618 = getelementptr inbounds %struct.LoopPairStore, ptr %1, i64 0, i32 1
  %619 = getelementptr inbounds float, ptr %24, i64 1
  %620 = getelementptr inbounds float, ptr %24, i64 2
  %621 = getelementptr inbounds float, ptr %22, i64 1
  %622 = getelementptr inbounds float, ptr %22, i64 2
  %623 = getelementptr inbounds float, ptr %25, i64 1
  %624 = getelementptr inbounds float, ptr %25, i64 2
  %625 = add nsw i32 %5, 1
  %626 = sext i32 %5 to i64
  br label %627

627:                                              ; preds = %609, %734
  %628 = phi ptr [ %607, %609 ], [ %735, %734 ]
  %629 = call ptr @BM_edgeloop_verts_get(ptr noundef nonnull %628) #8
  %630 = load ptr, ptr %629, align 8, !tbaa !67
  %631 = getelementptr inbounds %struct.LinkData, ptr %630, i64 0, i32 2
  %632 = load ptr, ptr %631, align 8, !tbaa !76
  %633 = getelementptr inbounds %struct.ListBase, ptr %629, i64 0, i32 1
  %634 = load ptr, ptr %633, align 8, !tbaa !68
  %635 = getelementptr inbounds %struct.LinkData, ptr %634, i64 0, i32 2
  %636 = load ptr, ptr %635, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %22) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %24) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %25) #8
  %637 = getelementptr inbounds %struct.BMVert, ptr %632, i64 0, i32 2
  %638 = load float, ptr %637, align 4, !tbaa !64
  store float %638, ptr %20, align 4, !tbaa !64
  %639 = getelementptr inbounds %struct.BMVert, ptr %632, i64 0, i32 2, i64 1
  %640 = load float, ptr %639, align 4, !tbaa !64
  store float %640, ptr %610, align 4, !tbaa !64
  %641 = getelementptr inbounds %struct.BMVert, ptr %632, i64 0, i32 2, i64 2
  %642 = load float, ptr %641, align 4, !tbaa !64
  store float %642, ptr %611, align 4, !tbaa !64
  %643 = getelementptr inbounds %struct.BMVert, ptr %636, i64 0, i32 2
  %644 = load float, ptr %643, align 4, !tbaa !64
  store float %644, ptr %23, align 4, !tbaa !64
  %645 = getelementptr inbounds %struct.BMVert, ptr %636, i64 0, i32 2, i64 1
  %646 = load float, ptr %645, align 4, !tbaa !64
  store float %646, ptr %612, align 4, !tbaa !64
  %647 = getelementptr inbounds %struct.BMVert, ptr %636, i64 0, i32 2, i64 2
  %648 = load float, ptr %647, align 4, !tbaa !64
  store float %648, ptr %613, align 4, !tbaa !64
  %649 = load ptr, ptr %614, align 8, !tbaa !74
  %650 = call ptr @BLI_ghash_lookup(ptr noundef %649, ptr noundef %632) #8
  %651 = ptrtoint ptr %650 to i64
  %652 = load ptr, ptr %615, align 8, !tbaa !75
  %653 = call ptr @BLI_ghash_lookup(ptr noundef %652, ptr noundef %636) #8
  %654 = ptrtoint ptr %653 to i64
  %655 = load ptr, ptr %1, align 8, !tbaa !71
  %656 = and i64 %651, 4294967295
  %657 = getelementptr inbounds [3 x float], ptr %655, i64 %656
  %658 = load float, ptr %657, align 4, !tbaa !64
  store float %658, ptr %21, align 4, !tbaa !64
  %659 = getelementptr inbounds float, ptr %657, i64 1
  %660 = load float, ptr %659, align 4, !tbaa !64
  store float %660, ptr %616, align 4, !tbaa !64
  %661 = getelementptr inbounds float, ptr %657, i64 2
  %662 = load float, ptr %661, align 4, !tbaa !64
  store float %662, ptr %617, align 4, !tbaa !64
  %663 = load ptr, ptr %618, align 8, !tbaa !73
  %664 = and i64 %654, 4294967295
  %665 = getelementptr inbounds [3 x float], ptr %663, i64 %664
  %666 = load float, ptr %665, align 4, !tbaa !64
  store float %666, ptr %24, align 4, !tbaa !64
  %667 = getelementptr inbounds float, ptr %665, i64 1
  %668 = load float, ptr %667, align 4, !tbaa !64
  store float %668, ptr %619, align 4, !tbaa !64
  %669 = getelementptr inbounds float, ptr %665, i64 2
  %670 = load float, ptr %669, align 4, !tbaa !64
  store float %670, ptr %620, align 4, !tbaa !64
  %671 = call fastcc float @bezier_handle_calc_length_v3(ptr noundef nonnull %20, ptr noundef nonnull %21, ptr noundef nonnull %23, ptr noundef nonnull %24)
  %672 = fmul float %671, %6
  %673 = fmul float %658, %672
  store float %673, ptr %22, align 4, !tbaa !64
  %674 = fmul float %660, %672
  store float %674, ptr %621, align 4, !tbaa !64
  %675 = fmul float %662, %672
  store float %675, ptr %622, align 4, !tbaa !64
  %676 = fmul float %666, %672
  store float %676, ptr %25, align 4, !tbaa !64
  %677 = fmul float %668, %672
  store float %677, ptr %623, align 4, !tbaa !64
  %678 = fmul float %670, %672
  store float %678, ptr %624, align 4, !tbaa !64
  %679 = load float, ptr %20, align 4, !tbaa !64
  %680 = fadd float %673, %679
  store float %680, ptr %22, align 4, !tbaa !64
  %681 = load float, ptr %610, align 4, !tbaa !64
  %682 = fadd float %674, %681
  store float %682, ptr %621, align 4, !tbaa !64
  %683 = load float, ptr %611, align 4, !tbaa !64
  %684 = fadd float %675, %683
  store float %684, ptr %622, align 4, !tbaa !64
  %685 = load float, ptr %23, align 4, !tbaa !64
  %686 = fadd float %676, %685
  store float %686, ptr %25, align 4, !tbaa !64
  %687 = load float, ptr %612, align 4, !tbaa !64
  %688 = fadd float %677, %687
  store float %688, ptr %623, align 4, !tbaa !64
  %689 = load float, ptr %613, align 4, !tbaa !64
  %690 = fadd float %678, %689
  store float %690, ptr %624, align 4, !tbaa !64
  br label %691

691:                                              ; preds = %627, %691
  %692 = phi i64 [ 0, %627 ], [ %702, %691 ]
  %693 = getelementptr inbounds [3 x float], ptr %20, i64 0, i64 %692
  %694 = load float, ptr %693, align 4, !tbaa !64
  %695 = getelementptr inbounds [3 x float], ptr %22, i64 0, i64 %692
  %696 = load float, ptr %695, align 4, !tbaa !64
  %697 = getelementptr inbounds [3 x float], ptr %25, i64 0, i64 %692
  %698 = load float, ptr %697, align 4, !tbaa !64
  %699 = getelementptr inbounds [3 x float], ptr %23, i64 0, i64 %692
  %700 = load float, ptr %699, align 4, !tbaa !64
  %701 = getelementptr inbounds float, ptr %606, i64 %692
  call void @BKE_curve_forward_diff_bezier(float noundef %694, float noundef %696, float noundef %698, float noundef %700, ptr noundef %701, i32 noundef %625, i32 noundef 12) #8
  %702 = add nuw nsw i64 %692, 1
  %703 = icmp eq i64 %702, 3
  br i1 %703, label %704, label %691, !llvm.loop !131

704:                                              ; preds = %691
  %705 = load ptr, ptr %629, align 8, !tbaa !67
  %706 = load ptr, ptr %705, align 8, !tbaa !78
  %707 = load ptr, ptr %633, align 8, !tbaa !68
  %708 = icmp eq ptr %706, %707
  br i1 %708, label %734, label %709

709:                                              ; preds = %704, %729
  %710 = phi i64 [ %730, %729 ], [ 1, %704 ]
  %711 = phi ptr [ %731, %729 ], [ %706, %704 ]
  %712 = icmp sgt i64 %710, %626
  br i1 %712, label %729, label %713

713:                                              ; preds = %709
  %714 = getelementptr inbounds %struct.LinkData, ptr %711, i64 0, i32 2
  %715 = load ptr, ptr %714, align 8, !tbaa !76
  %716 = getelementptr inbounds %struct.BMVert, ptr %715, i64 0, i32 2
  %717 = getelementptr inbounds [3 x float], ptr %606, i64 %710
  %718 = load float, ptr %717, align 4, !tbaa !64
  store float %718, ptr %716, align 4, !tbaa !64
  %719 = getelementptr inbounds float, ptr %717, i64 1
  %720 = load float, ptr %719, align 4, !tbaa !64
  %721 = getelementptr inbounds %struct.BMVert, ptr %715, i64 0, i32 2, i64 1
  store float %720, ptr %721, align 4, !tbaa !64
  %722 = getelementptr inbounds float, ptr %717, i64 2
  %723 = load float, ptr %722, align 4, !tbaa !64
  %724 = getelementptr inbounds %struct.BMVert, ptr %715, i64 0, i32 2, i64 2
  store float %723, ptr %724, align 4, !tbaa !64
  br i1 %313, label %725, label %729

725:                                              ; preds = %713
  %726 = getelementptr inbounds [3 x float], ptr %367, i64 %710
  %727 = getelementptr inbounds float, ptr %7, i64 %710
  %728 = load float, ptr %727, align 4, !tbaa !64
  call void @interp_v3_v3v3(ptr noundef nonnull %716, ptr noundef nonnull %726, ptr noundef nonnull %716, float noundef %728) #8
  br label %729

729:                                              ; preds = %725, %713, %709
  %730 = add nuw i64 %710, 1
  %731 = load ptr, ptr %711, align 8, !tbaa !78
  %732 = load ptr, ptr %633, align 8, !tbaa !68
  %733 = icmp eq ptr %731, %732
  br i1 %733, label %734, label %709, !llvm.loop !132

734:                                              ; preds = %729, %704
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %25) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %24) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %22) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #8
  %735 = load ptr, ptr %628, align 8, !tbaa !70
  %736 = icmp eq ptr %735, null
  br i1 %736, label %737, label %627, !llvm.loop !133

737:                                              ; preds = %734, %394, %601, %381, %598
  %738 = phi ptr [ %431, %598 ], [ %374, %381 ], [ %606, %601 ], [ %374, %394 ], [ %606, %734 ]
  %739 = load ptr, ptr @MEM_freeN, align 8, !tbaa !70
  call void %739(ptr noundef %738) #8
  br label %740

740:                                              ; preds = %737, %368, %366
  %741 = icmp eq ptr %367, null
  br i1 %741, label %744, label %742

742:                                              ; preds = %740
  %743 = load ptr, ptr @MEM_freeN, align 8, !tbaa !70
  call void %743(ptr noundef nonnull %367) #8
  br label %744

744:                                              ; preds = %740, %742
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #8
  call void @BM_mesh_edgeloops_free(ptr noundef nonnull %27) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %27) #8
  ret void
}

declare i32 @BLI_gset_size(ptr noundef) local_unnamed_addr #3

declare void @BLI_gset_free(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BM_mesh_edgeloops_free(ptr noundef) local_unnamed_addr #3

declare void @BMO_slot_buffer_from_enabled_flag(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #3

declare void @bmiter__edge_of_vert_begin(ptr noundef) #3

declare ptr @bmiter__edge_of_vert_step(ptr noundef) #3

declare void @bmiter__face_of_edge_begin(ptr noundef) #3

declare ptr @bmiter__face_of_edge_step(ptr noundef) #3

declare void @bmiter__loop_of_face_begin(ptr noundef) #3

declare ptr @bmiter__loop_of_face_step(ptr noundef) #3

declare void @bmiter__loop_of_edge_begin(ptr noundef) #3

declare ptr @bmiter__loop_of_edge_step(ptr noundef) #3

declare ptr @BM_edgeloop_verts_get(ptr noundef) local_unnamed_addr #3

declare i32 @BM_edgeloop_length_get(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BM_edgeloop_is_closed(ptr noundef) local_unnamed_addr #3

declare void @BM_edgeloop_edges_get(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BLI_ghash_ptr_new(ptr noundef) local_unnamed_addr #3

declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BM_edge_calc_face_tangent(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @bm_edgering_pair_subdiv(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca %struct.BMIter, align 8
  %8 = alloca %struct.BMIter, align 8
  %9 = tail call ptr @BM_edgeloop_verts_get(ptr noundef %1) #8
  %10 = tail call i32 @BM_edgeloop_length_get(ptr noundef %1) #8
  %11 = tail call i32 @BM_edgeloop_length_get(ptr noundef %2) #8
  %12 = tail call i32 @llvm.smax.i32(i32 %11, i32 %10)
  %13 = shl nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = shl nsw i64 %14, 3
  %16 = alloca i8, i64 %15, align 16
  %17 = alloca i8, i64 %15, align 16
  %18 = tail call ptr @BM_edgeloop_verts_get(ptr noundef %1) #8
  %19 = load ptr, ptr %18, align 8, !tbaa !67
  br label %20

20:                                               ; preds = %20, %5
  %21 = phi ptr [ %19, %5 ], [ %27, %20 ]
  %22 = getelementptr inbounds %struct.LinkData, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !76
  %24 = getelementptr inbounds %struct.BMHeader, ptr %23, i64 0, i32 3
  %25 = load i8, ptr %24, align 1, !tbaa !94
  %26 = and i8 %25, -17
  store i8 %26, ptr %24, align 1, !tbaa !94
  %27 = load ptr, ptr %21, align 8, !tbaa !78
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %20, !llvm.loop !95

29:                                               ; preds = %20
  %30 = tail call ptr @BM_edgeloop_verts_get(ptr noundef %2) #8
  %31 = load ptr, ptr %30, align 8, !tbaa !67
  br label %32

32:                                               ; preds = %32, %29
  %33 = phi ptr [ %31, %29 ], [ %39, %32 ]
  %34 = getelementptr inbounds %struct.LinkData, ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !76
  %36 = getelementptr inbounds %struct.BMHeader, ptr %35, i64 0, i32 3
  %37 = load i8, ptr %36, align 1, !tbaa !94
  %38 = or i8 %37, 16
  store i8 %38, ptr %36, align 1, !tbaa !94
  %39 = load ptr, ptr %33, align 8, !tbaa !78
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %32, !llvm.loop !95

41:                                               ; preds = %32
  %42 = load ptr, ptr %9, align 8, !tbaa !70
  %43 = icmp eq ptr %42, null
  br i1 %43, label %52, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 4
  %46 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  %47 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  %48 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %49 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 4
  %50 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  %51 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  br label %56

52:                                               ; preds = %134, %41
  %53 = phi i32 [ 0, %41 ], [ %135, %134 ]
  %54 = phi i32 [ 0, %41 ], [ %136, %134 ]
  %55 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %139

56:                                               ; preds = %44, %134
  %57 = phi ptr [ %42, %44 ], [ %137, %134 ]
  %58 = phi i32 [ 0, %44 ], [ %136, %134 ]
  %59 = phi i32 [ 0, %44 ], [ %135, %134 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #8
  %60 = getelementptr inbounds %struct.LinkData, ptr %57, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !76
  store i8 4, ptr %45, align 4, !tbaa !34
  store ptr @bmiter__edge_of_vert_begin, ptr %46, align 8, !tbaa !40
  store ptr @bmiter__edge_of_vert_step, ptr %47, align 8, !tbaa !41
  store ptr %61, ptr %7, align 8, !tbaa !42
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %7) #8
  %62 = load ptr, ptr %47, align 8, !tbaa !41
  %63 = call ptr %62(ptr noundef nonnull %7) #8
  %64 = icmp eq ptr %63, null
  br i1 %64, label %134, label %65

65:                                               ; preds = %56, %128
  %66 = phi i32 [ %130, %128 ], [ %58, %56 ]
  %67 = phi i32 [ %129, %128 ], [ %59, %56 ]
  %68 = phi ptr [ %132, %128 ], [ %63, %56 ]
  %69 = getelementptr inbounds %struct.BMEdge, ptr %68, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !55
  %71 = load i32, ptr %48, align 8, !tbaa !47
  %72 = sext i32 %71 to i64
  %73 = getelementptr %struct.BMFlagLayer, ptr %70, i64 %72
  %74 = getelementptr %struct.BMFlagLayer, ptr %73, i64 -1
  %75 = load i16, ptr %74, align 2, !tbaa !51
  %76 = and i16 %75, 4
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %78, label %128

78:                                               ; preds = %65
  %79 = load ptr, ptr %60, align 8, !tbaa !76
  %80 = getelementptr inbounds %struct.BMEdge, ptr %68, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !81
  %82 = icmp eq ptr %81, %79
  %83 = getelementptr inbounds %struct.BMEdge, ptr %68, i64 0, i32 3
  %84 = load ptr, ptr %83, align 8, !tbaa !82
  %85 = icmp eq ptr %84, %79
  %86 = select i1 %85, ptr %81, ptr null
  %87 = select i1 %82, ptr %84, ptr %86
  %88 = getelementptr inbounds %struct.BMHeader, ptr %87, i64 0, i32 3
  %89 = load i8, ptr %88, align 1, !tbaa !94
  %90 = and i8 %89, 16
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %128, label %92

92:                                               ; preds = %78
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #8
  %93 = load ptr, ptr %69, align 8, !tbaa !55
  %94 = getelementptr %struct.BMFlagLayer, ptr %93, i64 %72
  %95 = getelementptr %struct.BMFlagLayer, ptr %94, i64 -1
  %96 = load i16, ptr %95, align 2, !tbaa !51
  %97 = or i16 %96, 4
  store i16 %97, ptr %95, align 2, !tbaa !51
  %98 = add i32 %66, 1
  %99 = zext i32 %66 to i64
  %100 = getelementptr inbounds ptr, ptr %16, i64 %99
  store ptr %68, ptr %100, align 8, !tbaa !70
  store i8 8, ptr %49, align 4, !tbaa !34
  store ptr @bmiter__face_of_edge_begin, ptr %50, align 8, !tbaa !40
  store ptr @bmiter__face_of_edge_step, ptr %51, align 8, !tbaa !41
  store ptr %68, ptr %8, align 8, !tbaa !42
  call void @bmiter__face_of_edge_begin(ptr noundef nonnull %8) #8
  %101 = load ptr, ptr %51, align 8, !tbaa !41
  %102 = call ptr %101(ptr noundef nonnull %8) #8
  %103 = icmp eq ptr %102, null
  br i1 %103, label %126, label %104

104:                                              ; preds = %92, %121
  %105 = phi i32 [ %122, %121 ], [ %67, %92 ]
  %106 = phi ptr [ %124, %121 ], [ %102, %92 ]
  %107 = getelementptr inbounds %struct.BMFace, ptr %106, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !43
  %109 = load i32, ptr %48, align 8, !tbaa !47
  %110 = sext i32 %109 to i64
  %111 = getelementptr %struct.BMFlagLayer, ptr %108, i64 %110
  %112 = getelementptr %struct.BMFlagLayer, ptr %111, i64 -1
  %113 = load i16, ptr %112, align 2, !tbaa !51
  %114 = and i16 %113, 5
  %115 = icmp eq i16 %114, 1
  br i1 %115, label %116, label %121

116:                                              ; preds = %104
  %117 = or disjoint i16 %113, 4
  store i16 %117, ptr %112, align 2, !tbaa !51
  %118 = add i32 %105, 1
  %119 = zext i32 %105 to i64
  %120 = getelementptr inbounds ptr, ptr %17, i64 %119
  store ptr %106, ptr %120, align 8, !tbaa !70
  br label %121

121:                                              ; preds = %104, %116
  %122 = phi i32 [ %118, %116 ], [ %105, %104 ]
  %123 = load ptr, ptr %51, align 8, !tbaa !41
  %124 = call ptr %123(ptr noundef nonnull %8) #8
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %104, !llvm.loop !134

126:                                              ; preds = %121, %92
  %127 = phi i32 [ %67, %92 ], [ %122, %121 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #8
  br label %128

128:                                              ; preds = %78, %126, %65
  %129 = phi i32 [ %67, %65 ], [ %127, %126 ], [ %67, %78 ]
  %130 = phi i32 [ %66, %65 ], [ %98, %126 ], [ %66, %78 ]
  %131 = load ptr, ptr %47, align 8, !tbaa !41
  %132 = call ptr %131(ptr noundef nonnull %7) #8
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %65, !llvm.loop !135

134:                                              ; preds = %128, %56
  %135 = phi i32 [ %59, %56 ], [ %129, %128 ]
  %136 = phi i32 [ %58, %56 ], [ %130, %128 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #8
  %137 = load ptr, ptr %57, align 8, !tbaa !70
  %138 = icmp eq ptr %137, null
  br i1 %138, label %52, label %56, !llvm.loop !136

139:                                              ; preds = %52, %154
  %140 = phi i32 [ %148, %154 ], [ %54, %52 ]
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %147, label %142

142:                                              ; preds = %139
  %143 = add i32 %140, -1
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds ptr, ptr %16, i64 %144
  %146 = load ptr, ptr %145, align 8, !tbaa !70
  br label %147

147:                                              ; preds = %139, %142
  %148 = phi i32 [ %143, %142 ], [ 0, %139 ]
  %149 = phi ptr [ %146, %142 ], [ null, %139 ]
  %150 = icmp eq ptr %149, null
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %153 = icmp sgt i32 %4, 0
  br label %172

154:                                              ; preds = %147
  %155 = getelementptr inbounds %struct.BMEdge, ptr %149, i64 0, i32 1
  %156 = load ptr, ptr %155, align 8, !tbaa !55
  %157 = load i32, ptr %55, align 8, !tbaa !47
  %158 = sext i32 %157 to i64
  %159 = getelementptr %struct.BMFlagLayer, ptr %156, i64 %158
  %160 = getelementptr %struct.BMFlagLayer, ptr %159, i64 -1
  %161 = load i16, ptr %160, align 2, !tbaa !51
  %162 = and i16 %161, -6
  store i16 %162, ptr %160, align 2, !tbaa !51
  %163 = getelementptr inbounds %struct.BMEdge, ptr %149, i64 0, i32 2
  %164 = load ptr, ptr %163, align 8, !tbaa !81
  %165 = getelementptr inbounds %struct.BMHeader, ptr %164, i64 0, i32 3
  %166 = load i8, ptr %165, align 1, !tbaa !94
  %167 = and i8 %166, 16
  %168 = icmp eq i8 %167, 0
  %169 = getelementptr inbounds %struct.BMEdge, ptr %149, i64 0, i32 3
  %170 = select i1 %168, ptr %169, ptr %163
  %171 = load ptr, ptr %170, align 8, !tbaa !70
  call fastcc void @bm_edge_subdiv_as_loop(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %149, ptr noundef %171, i32 noundef %4)
  br label %139, !llvm.loop !137

172:                                              ; preds = %151, %264
  %173 = phi i32 [ %181, %264 ], [ %53, %151 ]
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %180, label %175

175:                                              ; preds = %172
  %176 = add i32 %173, -1
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds ptr, ptr %17, i64 %177
  %179 = load ptr, ptr %178, align 8, !tbaa !70
  br label %180

180:                                              ; preds = %172, %175
  %181 = phi i32 [ %176, %175 ], [ 0, %172 ]
  %182 = phi ptr [ %179, %175 ], [ null, %172 ]
  %183 = icmp eq ptr %182, null
  br i1 %183, label %184, label %187

184:                                              ; preds = %180
  %185 = load ptr, ptr %3, align 8, !tbaa !70
  %186 = icmp eq ptr %185, null
  br i1 %186, label %281, label %265

187:                                              ; preds = %180
  %188 = getelementptr inbounds %struct.BMFace, ptr %182, i64 0, i32 1
  %189 = load ptr, ptr %188, align 8, !tbaa !43
  %190 = load i32, ptr %152, align 8, !tbaa !47
  %191 = sext i32 %190 to i64
  %192 = getelementptr %struct.BMFlagLayer, ptr %189, i64 %191
  %193 = getelementptr %struct.BMFlagLayer, ptr %192, i64 -1
  %194 = load i16, ptr %193, align 2, !tbaa !51
  %195 = and i16 %194, -5
  store i16 %195, ptr %193, align 2, !tbaa !51
  %196 = getelementptr inbounds %struct.BMFace, ptr %182, i64 0, i32 2
  %197 = load ptr, ptr %196, align 8, !tbaa !104
  br label %198

198:                                              ; preds = %260, %187
  %199 = phi ptr [ %197, %187 ], [ %262, %260 ]
  %200 = getelementptr inbounds %struct.BMLoop, ptr %199, i64 0, i32 2
  %201 = load ptr, ptr %200, align 8, !tbaa !53
  %202 = getelementptr inbounds %struct.BMEdge, ptr %201, i64 0, i32 1
  %203 = load ptr, ptr %202, align 8, !tbaa !55
  %204 = getelementptr %struct.BMFlagLayer, ptr %203, i64 %191
  %205 = getelementptr %struct.BMFlagLayer, ptr %204, i64 -1
  %206 = load i16, ptr %205, align 2, !tbaa !51
  %207 = and i16 %206, 2
  %208 = icmp eq i16 %207, 0
  br i1 %208, label %260, label %209

209:                                              ; preds = %198
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  store ptr %199, ptr %6, align 8, !tbaa !70
  br i1 %153, label %210, label %259

210:                                              ; preds = %209, %235
  %211 = phi i32 [ %257, %235 ], [ 0, %209 ]
  %212 = load ptr, ptr %6, align 8, !tbaa !70
  %213 = getelementptr inbounds %struct.BMLoop, ptr %212, i64 0, i32 3
  %214 = load ptr, ptr %213, align 8, !tbaa !103
  %215 = getelementptr inbounds %struct.BMLoop, ptr %212, i64 0, i32 7
  %216 = load ptr, ptr %215, align 8, !tbaa !138
  %217 = getelementptr inbounds %struct.BMLoop, ptr %212, i64 0, i32 6
  %218 = load ptr, ptr %217, align 8, !tbaa !106
  %219 = getelementptr inbounds %struct.BMLoop, ptr %218, i64 0, i32 6
  %220 = load ptr, ptr %219, align 8, !tbaa !106
  %221 = call ptr @BM_face_split(ptr noundef %0, ptr noundef %214, ptr noundef %216, ptr noundef %220, ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 0) #8
  %222 = load ptr, ptr %6, align 8, !tbaa !70
  %223 = getelementptr inbounds %struct.BMLoop, ptr %222, i64 0, i32 3
  %224 = load ptr, ptr %223, align 8, !tbaa !103
  %225 = getelementptr inbounds %struct.BMFace, ptr %224, i64 0, i32 3
  %226 = load i32, ptr %225, align 8, !tbaa !139
  %227 = getelementptr inbounds %struct.BMLoop, ptr %222, i64 0, i32 4
  %228 = load ptr, ptr %227, align 8, !tbaa !108
  %229 = getelementptr inbounds %struct.BMLoop, ptr %228, i64 0, i32 3
  %230 = load ptr, ptr %229, align 8, !tbaa !103
  %231 = getelementptr inbounds %struct.BMFace, ptr %230, i64 0, i32 3
  %232 = load i32, ptr %231, align 8, !tbaa !139
  %233 = icmp slt i32 %226, %232
  br i1 %233, label %234, label %235

234:                                              ; preds = %210
  store ptr %228, ptr %6, align 8, !tbaa !70
  br label %235

235:                                              ; preds = %234, %210
  %236 = load ptr, ptr %6, align 8, !tbaa !70
  %237 = getelementptr inbounds %struct.BMLoop, ptr %236, i64 0, i32 3
  %238 = load ptr, ptr %237, align 8, !tbaa !103
  %239 = getelementptr inbounds %struct.BMFace, ptr %238, i64 0, i32 1
  %240 = load ptr, ptr %239, align 8, !tbaa !43
  %241 = load i32, ptr %152, align 8, !tbaa !47
  %242 = sext i32 %241 to i64
  %243 = getelementptr %struct.BMFlagLayer, ptr %240, i64 %242
  %244 = getelementptr %struct.BMFlagLayer, ptr %243, i64 -1
  %245 = load i16, ptr %244, align 2, !tbaa !51
  %246 = or i16 %245, 1
  store i16 %246, ptr %244, align 2, !tbaa !51
  %247 = getelementptr inbounds %struct.BMLoop, ptr %236, i64 0, i32 4
  %248 = load ptr, ptr %247, align 8, !tbaa !108
  %249 = getelementptr inbounds %struct.BMLoop, ptr %248, i64 0, i32 3
  %250 = load ptr, ptr %249, align 8, !tbaa !103
  %251 = getelementptr inbounds %struct.BMFace, ptr %250, i64 0, i32 1
  %252 = load ptr, ptr %251, align 8, !tbaa !43
  %253 = getelementptr %struct.BMFlagLayer, ptr %252, i64 %242
  %254 = getelementptr %struct.BMFlagLayer, ptr %253, i64 -1
  %255 = load i16, ptr %254, align 2, !tbaa !51
  %256 = or i16 %255, 1
  store i16 %256, ptr %254, align 2, !tbaa !51
  %257 = add nuw nsw i32 %211, 1
  %258 = icmp eq i32 %257, %4
  br i1 %258, label %259, label %210, !llvm.loop !140

259:                                              ; preds = %235, %209
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  br label %264

260:                                              ; preds = %198
  %261 = getelementptr inbounds %struct.BMLoop, ptr %199, i64 0, i32 6
  %262 = load ptr, ptr %261, align 8, !tbaa !106
  %263 = icmp eq ptr %262, %197
  br i1 %263, label %264, label %198, !llvm.loop !141

264:                                              ; preds = %260, %259
  br label %172, !llvm.loop !142

265:                                              ; preds = %184, %278
  %266 = phi ptr [ %279, %278 ], [ %185, %184 ]
  %267 = call ptr @BM_edgeloop_verts_get(ptr noundef nonnull %266) #8
  %268 = load ptr, ptr %267, align 8, !tbaa !67
  br label %269

269:                                              ; preds = %269, %265
  %270 = phi ptr [ %268, %265 ], [ %276, %269 ]
  %271 = getelementptr inbounds %struct.LinkData, ptr %270, i64 0, i32 2
  %272 = load ptr, ptr %271, align 8, !tbaa !76
  %273 = getelementptr inbounds %struct.BMHeader, ptr %272, i64 0, i32 3
  %274 = load i8, ptr %273, align 1, !tbaa !94
  %275 = and i8 %274, -17
  store i8 %275, ptr %273, align 1, !tbaa !94
  %276 = load ptr, ptr %270, align 8, !tbaa !78
  %277 = icmp eq ptr %276, null
  br i1 %277, label %278, label %269, !llvm.loop !95

278:                                              ; preds = %269
  %279 = load ptr, ptr %266, align 8, !tbaa !70
  %280 = icmp eq ptr %279, null
  br i1 %280, label %281, label %265, !llvm.loop !143

281:                                              ; preds = %278, %184
  %282 = call ptr @BM_edgeloop_verts_get(ptr noundef %2) #8
  %283 = load ptr, ptr %282, align 8, !tbaa !67
  br label %284

284:                                              ; preds = %284, %281
  %285 = phi ptr [ %283, %281 ], [ %291, %284 ]
  %286 = getelementptr inbounds %struct.LinkData, ptr %285, i64 0, i32 2
  %287 = load ptr, ptr %286, align 8, !tbaa !76
  %288 = getelementptr inbounds %struct.BMHeader, ptr %287, i64 0, i32 3
  %289 = load i8, ptr %288, align 1, !tbaa !94
  %290 = and i8 %289, -17
  store i8 %290, ptr %288, align 1, !tbaa !94
  %291 = load ptr, ptr %285, align 8, !tbaa !78
  %292 = icmp eq ptr %291, null
  br i1 %292, label %293, label %284, !llvm.loop !95

293:                                              ; preds = %284
  ret void
}

declare void @BLI_listbase_rotate_first(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BM_edgeloop_flip(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BM_edge_exists(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @bm_edge_subdiv_as_loop(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = add nsw i32 %4, 2
  %7 = sext i32 %6 to i64
  %8 = shl nsw i64 %7, 3
  %9 = alloca i8, i64 %8, align 16
  %10 = getelementptr inbounds %struct.BMEdge, ptr %2, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !81
  %12 = icmp eq ptr %11, %3
  %13 = getelementptr inbounds %struct.BMEdge, ptr %2, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !82
  %15 = icmp eq ptr %14, %3
  %16 = select i1 %15, ptr %11, ptr null
  %17 = select i1 %12, ptr %14, ptr %16
  %18 = getelementptr inbounds ptr, ptr %9, i64 1
  %19 = call ptr @BM_edge_split_n(ptr noundef %0, ptr noundef %2, i32 noundef %4, ptr noundef nonnull %18) #8
  %20 = load ptr, ptr %10, align 8, !tbaa !81
  %21 = icmp eq ptr %20, %3
  %22 = select i1 %21, ptr %3, ptr %17
  %23 = select i1 %21, ptr %17, ptr %3
  store ptr %22, ptr %9, align 16, !tbaa !70
  %24 = sext i32 %4 to i64
  %25 = getelementptr ptr, ptr %9, i64 %24
  %26 = getelementptr ptr, ptr %25, i64 1
  store ptr %23, ptr %26, align 8, !tbaa !70
  %27 = call ptr @BM_edgeloop_from_verts(ptr noundef nonnull %9, i32 noundef %6, i8 noundef zeroext 0) #8
  %28 = load ptr, ptr %10, align 8, !tbaa !81
  %29 = icmp eq ptr %28, %3
  br i1 %29, label %30, label %31

30:                                               ; preds = %5
  call void @BM_edgeloop_flip(ptr noundef %0, ptr noundef %27) #8
  br label %31

31:                                               ; preds = %30, %5
  call void @BLI_addtail(ptr noundef %1, ptr noundef %27) #8
  ret void
}

declare ptr @BM_edge_split_n(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BM_edgeloop_from_verts(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BM_face_split(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @BM_edgeloop_calc_center(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BM_edgeloop_calc_normal(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BM_edgeloop_center_get(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BM_edgeloop_calc_normal_aligned(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BM_edgeloop_normal_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc float @bezier_handle_calc_length_v3(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = alloca [3 x float], align 4
  %6 = load float, ptr %1, align 4, !tbaa !64
  %7 = load float, ptr %3, align 4, !tbaa !64
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !64
  %10 = getelementptr inbounds float, ptr %3, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !64
  %12 = fmul float %9, %11
  %13 = tail call float @llvm.fmuladd.f32(float %6, float %7, float %12)
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !64
  %16 = getelementptr inbounds float, ptr %3, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !64
  %18 = tail call float @llvm.fmuladd.f32(float %15, float %17, float %13)
  %19 = fcmp olt float %18, 0.000000e+00
  br i1 %19, label %20, label %25

20:                                               ; preds = %4
  %21 = fadd float %18, 1.000000e+00
  %22 = fsub float 1.000000e+00, %21
  %23 = fmul float %22, 7.500000e-01
  %24 = tail call float @llvm.fmuladd.f32(float %21, float 0x3FF5555500000000, float %23)
  br label %25

25:                                               ; preds = %20, %4
  %26 = phi float [ %24, %20 ], [ 0x3FF5555500000000, %4 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #8
  %27 = fneg float %15
  %28 = fmul float %11, %27
  %29 = tail call float @llvm.fmuladd.f32(float %9, float %17, float %28)
  store float %29, ptr %5, align 4, !tbaa !64
  %30 = fneg float %6
  %31 = fmul float %17, %30
  %32 = tail call float @llvm.fmuladd.f32(float %15, float %7, float %31)
  %33 = getelementptr inbounds float, ptr %5, i64 1
  store float %32, ptr %33, align 4, !tbaa !64
  %34 = fneg float %9
  %35 = fmul float %7, %34
  %36 = tail call float @llvm.fmuladd.f32(float %6, float %11, float %35)
  %37 = getelementptr inbounds float, ptr %5, i64 2
  store float %36, ptr %37, align 4, !tbaa !64
  %38 = fmul float %32, %32
  %39 = tail call float @llvm.fmuladd.f32(float %29, float %29, float %38)
  %40 = tail call float @llvm.fmuladd.f32(float %36, float %36, float %39)
  %41 = fcmp ogt float %40, 0x3E80000000000000
  %42 = load float, ptr %0, align 4, !tbaa !64
  br i1 %41, label %43, label %52

43:                                               ; preds = %25
  %44 = fadd float %29, %42
  store float %44, ptr %5, align 4, !tbaa !64
  %45 = getelementptr inbounds float, ptr %0, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !64
  %47 = fadd float %32, %46
  store float %47, ptr %33, align 4, !tbaa !64
  %48 = getelementptr inbounds float, ptr %0, i64 2
  %49 = load float, ptr %48, align 4, !tbaa !64
  %50 = fadd float %36, %49
  store float %50, ptr %37, align 4, !tbaa !64
  %51 = call float @closest_to_line_v3(ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %0, ptr noundef nonnull %5) #8
  br label %57

52:                                               ; preds = %25
  store float %42, ptr %5, align 4, !tbaa !64
  %53 = getelementptr inbounds float, ptr %0, i64 1
  %54 = load float, ptr %53, align 4, !tbaa !64
  store float %54, ptr %33, align 4, !tbaa !64
  %55 = getelementptr inbounds float, ptr %0, i64 2
  %56 = load float, ptr %55, align 4, !tbaa !64
  store float %56, ptr %37, align 4, !tbaa !64
  br label %57

57:                                               ; preds = %52, %43
  %58 = load float, ptr %2, align 4, !tbaa !64
  %59 = load float, ptr %5, align 4, !tbaa !64
  %60 = fsub float %58, %59
  %61 = getelementptr inbounds float, ptr %2, i64 1
  %62 = load float, ptr %61, align 4, !tbaa !64
  %63 = load float, ptr %33, align 4, !tbaa !64
  %64 = fsub float %62, %63
  %65 = getelementptr inbounds float, ptr %2, i64 2
  %66 = load float, ptr %65, align 4, !tbaa !64
  %67 = load float, ptr %37, align 4, !tbaa !64
  %68 = fsub float %66, %67
  %69 = fmul float %64, %64
  %70 = call float @llvm.fmuladd.f32(float %60, float %60, float %69)
  %71 = call float @llvm.fmuladd.f32(float %68, float %68, float %70)
  %72 = call float @sqrtf(float noundef %71) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #8
  %73 = fmul float %72, 5.000000e-01
  %74 = fmul float %26, %73
  ret float %74
}

declare void @BKE_curve_forward_diff_bezier(float noundef, float noundef, float noundef, float noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

declare void @bisect_v3_v3v3v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @vec_to_quat(ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #3

declare float @normalize_qt(ptr noundef) local_unnamed_addr #3

declare float @angle_normalized_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @axis_angle_to_quat(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

declare void @mul_qt_qtqt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @copy_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @mul_qt_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @transform_point_by_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #3

declare float @closest_to_line_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BLI_gset_pair_new(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BLI_gset_haskey(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BLI_ghashutil_pairalloc(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_gset_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_ghashIterator_init(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_ghashIterator_step(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!34 = !{!35, !36, i64 60}
!35 = !{!"BMIter", !36, i64 0, !38, i64 40, !38, i64 48, !39, i64 56, !36, i64 60}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!"any pointer", !36, i64 0}
!39 = !{!"int", !36, i64 0}
!40 = !{!35, !38, i64 40}
!41 = !{!35, !38, i64 48}
!42 = !{!36, !36, i64 0}
!43 = !{!44, !38, i64 16}
!44 = !{!"BMFace", !45, i64 0, !38, i64 16, !38, i64 24, !39, i64 32, !36, i64 36, !46, i64 48}
!45 = !{!"BMHeader", !38, i64 0, !39, i64 8, !36, i64 12, !36, i64 13, !36, i64 14}
!46 = !{!"short", !36, i64 0}
!47 = !{!48, !39, i64 128}
!48 = !{!"BMesh", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !36, i64 28, !36, i64 29, !38, i64 32, !38, i64 40, !38, i64 48, !38, i64 56, !38, i64 64, !38, i64 72, !38, i64 80, !39, i64 88, !39, i64 92, !39, i64 96, !38, i64 104, !38, i64 112, !38, i64 120, !39, i64 128, !38, i64 136, !49, i64 144, !49, i64 344, !49, i64 544, !49, i64 744, !46, i64 944, !39, i64 948, !39, i64 952, !39, i64 956, !50, i64 960, !38, i64 976, !50, i64 984, !38, i64 1000}
!49 = !{!"CustomData", !38, i64 0, !36, i64 8, !39, i64 172, !39, i64 176, !39, i64 180, !38, i64 184, !38, i64 192}
!50 = !{!"ListBase", !38, i64 0, !38, i64 8}
!51 = !{!52, !46, i64 0}
!52 = !{!"BMFlagLayer", !46, i64 0}
!53 = !{!54, !38, i64 24}
!54 = !{!"BMLoop", !45, i64 0, !38, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !38, i64 48, !38, i64 56, !38, i64 64}
!55 = !{!56, !38, i64 16}
!56 = !{!"BMEdge", !45, i64 0, !38, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !57, i64 48, !57, i64 64}
!57 = !{!"BMDiskLink", !38, i64 0, !38, i64 8}
!58 = distinct !{!58, !59, !60}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!"llvm.loop.unroll.disable"}
!61 = distinct !{!61, !59, !60}
!62 = distinct !{!62, !59, !60}
!63 = distinct !{!63, !59, !60}
!64 = !{!65, !65, i64 0}
!65 = !{!"float", !36, i64 0}
!66 = distinct !{!66, !59, !60}
!67 = !{!50, !38, i64 0}
!68 = !{!50, !38, i64 8}
!69 = !{i8 0, i8 2}
!70 = !{!38, !38, i64 0}
!71 = !{!72, !38, i64 0}
!72 = !{!"LoopPairStore", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24}
!73 = !{!72, !38, i64 8}
!74 = !{!72, !38, i64 16}
!75 = !{!72, !38, i64 24}
!76 = !{!77, !38, i64 16}
!77 = !{!"LinkData", !38, i64 0, !38, i64 8, !38, i64 16}
!78 = !{!77, !38, i64 0}
!79 = distinct !{!79, !59, !60}
!80 = distinct !{!80, !59, !60}
!81 = !{!56, !38, i64 24}
!82 = !{!56, !38, i64 32}
!83 = !{!84, !38, i64 0}
!84 = !{!"GHashPair", !38, i64 0, !38, i64 8}
!85 = !{!84, !38, i64 8}
!86 = distinct !{!86, !59, !60}
!87 = distinct !{!87, !59, !60}
!88 = !{!89, !38, i64 8}
!89 = !{!"GHashIterator", !38, i64 0, !38, i64 8, !39, i64 16}
!90 = !{!91, !38, i64 8}
!91 = !{!"_gh_Entry", !38, i64 0, !38, i64 8, !38, i64 16}
!92 = distinct !{!92, !59, !60}
!93 = distinct !{!93, !59, !60}
!94 = !{!45, !36, i64 13}
!95 = distinct !{!95, !59, !60}
!96 = distinct !{!96, !59, !60}
!97 = distinct !{!97, !59, !60}
!98 = distinct !{!98, !59, !60}
!99 = !{!100, !38, i64 16}
!100 = !{!"BMVert", !45, i64 0, !38, i64 16, !36, i64 24, !36, i64 36, !38, i64 48}
!101 = distinct !{!101, !59, !60}
!102 = !{!56, !38, i64 40}
!103 = !{!54, !38, i64 32}
!104 = !{!44, !38, i64 24}
!105 = !{!54, !38, i64 16}
!106 = !{!54, !38, i64 56}
!107 = distinct !{!107, !59, !60}
!108 = !{!54, !38, i64 40}
!109 = distinct !{!109, !59, !60}
!110 = distinct !{!110, !59, !60}
!111 = distinct !{!111, !59, !60}
!112 = distinct !{!112, !59, !60}
!113 = distinct !{!113, !59, !60}
!114 = distinct !{!114, !59, !60}
!115 = distinct !{!115, !59, !60}
!116 = distinct !{!116, !59, !60}
!117 = distinct !{!117, !59, !60}
!118 = distinct !{!118, !59, !60}
!119 = distinct !{!119, !59, !60}
!120 = distinct !{!120, !59, !60}
!121 = distinct !{!121, !59, !60}
!122 = distinct !{!122, !59, !60}
!123 = distinct !{!123, !59, !60}
!124 = distinct !{!124, !59, !60}
!125 = distinct !{!125, !59, !60}
!126 = distinct !{!126, !59, !60}
!127 = distinct !{!127, !59, !60}
!128 = distinct !{!128, !59, !60}
!129 = distinct !{!129, !59, !60}
!130 = distinct !{!130, !59, !60}
!131 = distinct !{!131, !59, !60}
!132 = distinct !{!132, !59, !60}
!133 = distinct !{!133, !59, !60}
!134 = distinct !{!134, !59, !60}
!135 = distinct !{!135, !59, !60}
!136 = distinct !{!136, !59, !60}
!137 = distinct !{!137, !59, !60}
!138 = !{!54, !38, i64 64}
!139 = !{!44, !39, i64 32}
!140 = distinct !{!140, !59, !60}
!141 = distinct !{!141, !59, !60}
!142 = distinct !{!142, !59, !60}
!143 = distinct !{!143, !59, !60}
