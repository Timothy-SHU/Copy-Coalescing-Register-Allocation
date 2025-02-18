; ModuleID = 'blender/source/blender/bmesh/operators/bmo_normals.c'
source_filename = "blender/source/blender/bmesh/operators/bmo_normals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMFlagLayer = type { i16 }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }

@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.bmo_recalc_face_normals_exec = private unnamed_addr constant [29 x i8] c"bmo_recalc_face_normals_exec\00", align 1
@.str = private unnamed_addr constant [6 x i8] c"faces\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@__func__.bmo_recalc_face_normals_array = private unnamed_addr constant [30 x i8] c"bmo_recalc_face_normals_array\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @bmo_recalc_face_normals_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !38
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 2
  %10 = tail call ptr %5(i64 noundef %9, ptr noundef nonnull @__func__.bmo_recalc_face_normals_exec) #5
  %11 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %12 = load i32, ptr %6, align 4, !tbaa !38
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 3
  %15 = tail call ptr %11(i64 noundef %14, ptr noundef nonnull @__func__.bmo_recalc_face_normals_exec) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #5
  %16 = call i32 @BM_mesh_calc_face_groups(ptr noundef %0, ptr noundef %10, ptr noundef nonnull %4, ptr noundef nonnull @bmo_recalc_normal_edge_filter_cb, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 2) #5
  call void @BMO_slot_buffer_flag_enable(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str, i8 noundef zeroext 8, i16 noundef signext 1) #5
  call void @BM_mesh_elem_table_ensure(ptr noundef %0, i8 noundef zeroext 8) #5
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %268

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %20 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %21 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %22 = zext nneg i32 %16 to i64
  br label %23

23:                                               ; preds = %18, %265
  %24 = phi i64 [ 0, %18 ], [ %266, %265 ]
  %25 = load ptr, ptr %4, align 8, !tbaa !34
  %26 = getelementptr inbounds [2 x i32], ptr %25, i64 %24, i64 1
  %27 = load i32, ptr %26, align 4, !tbaa !44
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %57

29:                                               ; preds = %23
  %30 = getelementptr inbounds [2 x i32], ptr %25, i64 %24
  %31 = load i32, ptr %30, align 4, !tbaa !44
  %32 = sext i32 %31 to i64
  %33 = zext nneg i32 %27 to i64
  %34 = getelementptr i32, ptr %10, i64 %32
  br label %35

35:                                               ; preds = %29, %53
  %36 = phi i64 [ 0, %29 ], [ %55, %53 ]
  %37 = phi i8 [ 0, %29 ], [ %54, %53 ]
  %38 = getelementptr i32, ptr %34, i64 %36
  %39 = load i32, ptr %38, align 4, !tbaa !44
  %40 = call ptr @BM_face_at_index(ptr noundef %0, i32 noundef %39) #5
  %41 = getelementptr inbounds ptr, ptr %15, i64 %36
  store ptr %40, ptr %41, align 8, !tbaa !34
  %42 = icmp eq i8 %37, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.BMFace, ptr %40, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !45
  %46 = load i32, ptr %19, align 8, !tbaa !48
  %47 = sext i32 %46 to i64
  %48 = getelementptr %struct.BMFlagLayer, ptr %45, i64 %47
  %49 = getelementptr %struct.BMFlagLayer, ptr %48, i64 -1
  %50 = load i16, ptr %49, align 2, !tbaa !49
  %51 = trunc i16 %50 to i8
  %52 = and i8 %51, 1
  br label %53

53:                                               ; preds = %35, %43
  %54 = phi i8 [ %52, %43 ], [ %37, %35 ]
  %55 = add nuw nsw i64 %36, 1
  %56 = icmp eq i64 %55, %33
  br i1 %56, label %57, label %35, !llvm.loop !51

57:                                               ; preds = %53, %23
  %58 = phi i8 [ 0, %23 ], [ %54, %53 ]
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %265, label %60

60:                                               ; preds = %57
  %61 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %62 = sext i32 %27 to i64
  %63 = mul nsw i64 %62, 12
  %64 = call ptr %61(i64 noundef %63, ptr noundef nonnull @__func__.bmo_recalc_face_normals_array) #5
  %65 = sitofp i32 %27 to float
  %66 = fdiv float 1.000000e+00, %65
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #5
  %67 = icmp sgt i32 %27, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = zext nneg i32 %27 to i64
  br label %77

70:                                               ; preds = %77, %60
  %71 = phi float [ 0.000000e+00, %60 ], [ %86, %77 ]
  %72 = phi float [ 0.000000e+00, %60 ], [ %89, %77 ]
  %73 = phi float [ 0.000000e+00, %60 ], [ %92, %77 ]
  %74 = icmp sgt i32 %27, 0
  br i1 %74, label %75, label %117

75:                                               ; preds = %70
  %76 = zext nneg i32 %27 to i64
  br label %95

77:                                               ; preds = %68, %77
  %78 = phi i64 [ 0, %68 ], [ %93, %77 ]
  %79 = phi float [ 0.000000e+00, %68 ], [ %92, %77 ]
  %80 = phi float [ 0.000000e+00, %68 ], [ %89, %77 ]
  %81 = phi float [ 0.000000e+00, %68 ], [ %86, %77 ]
  %82 = getelementptr inbounds [3 x float], ptr %64, i64 %78
  %83 = getelementptr inbounds ptr, ptr %15, i64 %78
  %84 = load ptr, ptr %83, align 8, !tbaa !34
  call void @BM_face_calc_center_mean_weighted(ptr noundef %84, ptr noundef %82) #5
  %85 = load float, ptr %82, align 4, !tbaa !54
  %86 = call float @llvm.fmuladd.f32(float %85, float %66, float %81)
  %87 = getelementptr inbounds float, ptr %82, i64 1
  %88 = load float, ptr %87, align 4, !tbaa !54
  %89 = call float @llvm.fmuladd.f32(float %88, float %66, float %80)
  %90 = getelementptr inbounds float, ptr %82, i64 2
  %91 = load float, ptr %90, align 4, !tbaa !54
  %92 = call float @llvm.fmuladd.f32(float %91, float %66, float %79)
  %93 = add nuw nsw i64 %78, 1
  %94 = icmp eq i64 %93, %69
  br i1 %94, label %70, label %77, !llvm.loop !56

95:                                               ; preds = %75, %95
  %96 = phi i64 [ 0, %75 ], [ %115, %95 ]
  %97 = phi i32 [ 0, %75 ], [ %114, %95 ]
  %98 = phi float [ 0xC7EFFFFFE0000000, %75 ], [ %112, %95 ]
  %99 = getelementptr inbounds [3 x float], ptr %64, i64 %96
  %100 = load float, ptr %99, align 4, !tbaa !54
  %101 = fsub float %71, %100
  %102 = getelementptr inbounds float, ptr %99, i64 1
  %103 = load float, ptr %102, align 4, !tbaa !54
  %104 = fsub float %72, %103
  %105 = getelementptr inbounds float, ptr %99, i64 2
  %106 = load float, ptr %105, align 4, !tbaa !54
  %107 = fsub float %73, %106
  %108 = fmul float %104, %104
  %109 = call float @llvm.fmuladd.f32(float %101, float %101, float %108)
  %110 = call float @llvm.fmuladd.f32(float %107, float %107, float %109)
  %111 = fcmp ogt float %110, %98
  %112 = select i1 %111, float %110, float %98
  %113 = trunc i64 %96 to i32
  %114 = select i1 %111, i32 %113, i32 %97
  %115 = add nuw nsw i64 %96, 1
  %116 = icmp eq i64 %115, %76
  br i1 %116, label %117, label %95, !llvm.loop !57

117:                                              ; preds = %95, %70
  %118 = phi i32 [ 0, %70 ], [ %114, %95 ]
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [3 x float], ptr %64, i64 %119
  %121 = load float, ptr %120, align 4, !tbaa !54
  %122 = fsub float %121, %71
  %123 = getelementptr inbounds float, ptr %120, i64 1
  %124 = load float, ptr %123, align 4, !tbaa !54
  %125 = fsub float %124, %72
  %126 = getelementptr inbounds float, ptr %120, i64 2
  %127 = load float, ptr %126, align 4, !tbaa !54
  %128 = fsub float %127, %73
  %129 = getelementptr inbounds ptr, ptr %15, i64 %119
  %130 = load ptr, ptr %129, align 8, !tbaa !34
  %131 = getelementptr inbounds %struct.BMFace, ptr %130, i64 0, i32 4
  %132 = load float, ptr %131, align 4, !tbaa !54
  %133 = getelementptr inbounds %struct.BMFace, ptr %130, i64 0, i32 4, i64 1
  %134 = load float, ptr %133, align 4, !tbaa !54
  %135 = fmul float %125, %134
  %136 = call float @llvm.fmuladd.f32(float %122, float %132, float %135)
  %137 = getelementptr inbounds %struct.BMFace, ptr %130, i64 0, i32 4, i64 2
  %138 = load float, ptr %137, align 4, !tbaa !54
  %139 = call float @llvm.fmuladd.f32(float %128, float %138, float %136)
  %140 = fcmp olt float %139, 0.000000e+00
  br i1 %140, label %141, label %150

141:                                              ; preds = %117
  %142 = getelementptr inbounds %struct.BMFace, ptr %130, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !45
  %144 = load i32, ptr %20, align 8, !tbaa !48
  %145 = sext i32 %144 to i64
  %146 = getelementptr %struct.BMFlagLayer, ptr %143, i64 %145
  %147 = getelementptr %struct.BMFlagLayer, ptr %146, i64 -1
  %148 = load i16, ptr %147, align 2, !tbaa !49
  %149 = or i16 %148, 2
  store i16 %149, ptr %147, align 2, !tbaa !49
  br label %150

150:                                              ; preds = %141, %117
  %151 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %151(ptr noundef %64) #5
  store ptr null, ptr %3, align 8, !tbaa !34
  %152 = call ptr @BLI_mempool_create(i32 noundef 16, i32 noundef 0, i32 noundef 64, i32 noundef 0) #5
  %153 = load ptr, ptr %129, align 8, !tbaa !34
  call void @BLI_linklist_prepend_pool(ptr noundef nonnull %3, ptr noundef %153, ptr noundef %152) #5
  %154 = load ptr, ptr %129, align 8, !tbaa !34
  %155 = getelementptr inbounds %struct.BMFace, ptr %154, i64 0, i32 1
  %156 = load ptr, ptr %155, align 8, !tbaa !45
  %157 = load i32, ptr %21, align 8, !tbaa !48
  %158 = sext i32 %157 to i64
  %159 = getelementptr %struct.BMFlagLayer, ptr %156, i64 %158
  %160 = getelementptr %struct.BMFlagLayer, ptr %159, i64 -1
  %161 = load i16, ptr %160, align 2, !tbaa !49
  %162 = or i16 %161, 4
  store i16 %162, ptr %160, align 2, !tbaa !49
  br label %163

163:                                              ; preds = %233, %150
  %164 = load ptr, ptr %3, align 8, !tbaa !34
  %165 = icmp eq ptr %164, null
  br i1 %165, label %168, label %166

166:                                              ; preds = %163
  %167 = call ptr @BLI_linklist_pop_pool(ptr noundef nonnull %3, ptr noundef %152) #5
  br label %168

168:                                              ; preds = %166, %163
  %169 = phi ptr [ %167, %166 ], [ null, %163 ]
  %170 = icmp eq ptr %169, null
  br i1 %170, label %234, label %171

171:                                              ; preds = %168
  %172 = getelementptr inbounds %struct.BMFace, ptr %169, i64 0, i32 1
  %173 = load ptr, ptr %172, align 8, !tbaa !45
  %174 = load i32, ptr %21, align 8, !tbaa !48
  %175 = sext i32 %174 to i64
  %176 = getelementptr %struct.BMFlagLayer, ptr %173, i64 %175
  %177 = getelementptr %struct.BMFlagLayer, ptr %176, i64 -1
  %178 = load i16, ptr %177, align 2, !tbaa !49
  %179 = getelementptr inbounds %struct.BMFace, ptr %169, i64 0, i32 2
  %180 = load ptr, ptr %179, align 8, !tbaa !58
  %181 = and i16 %178, 2
  %182 = icmp eq i16 %181, 0
  br label %183

183:                                              ; preds = %229, %171
  %184 = phi ptr [ %180, %171 ], [ %231, %229 ]
  %185 = getelementptr inbounds %struct.BMLoop, ptr %184, i64 0, i32 4
  %186 = load ptr, ptr %185, align 8, !tbaa !59
  %187 = icmp eq ptr %186, %184
  br i1 %187, label %229, label %188

188:                                              ; preds = %183
  %189 = getelementptr inbounds %struct.BMLoop, ptr %184, i64 0, i32 2
  %190 = load ptr, ptr %189, align 8, !tbaa !61
  %191 = getelementptr inbounds %struct.BMEdge, ptr %190, i64 0, i32 4
  %192 = load ptr, ptr %191, align 8, !tbaa !62
  %193 = icmp eq ptr %192, null
  br i1 %193, label %203, label %194

194:                                              ; preds = %188
  %195 = getelementptr inbounds %struct.BMLoop, ptr %192, i64 0, i32 4
  %196 = load ptr, ptr %195, align 8, !tbaa !59
  %197 = icmp eq ptr %196, %192
  br i1 %197, label %203, label %198

198:                                              ; preds = %194
  %199 = getelementptr inbounds %struct.BMLoop, ptr %196, i64 0, i32 4
  %200 = load ptr, ptr %199, align 8, !tbaa !59
  %201 = icmp eq ptr %200, %192
  %202 = zext i1 %201 to i8
  br label %203

203:                                              ; preds = %198, %194, %188
  %204 = phi i8 [ 0, %194 ], [ 0, %188 ], [ %202, %198 ]
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %229, label %206

206:                                              ; preds = %203
  %207 = getelementptr inbounds %struct.BMLoop, ptr %186, i64 0, i32 3
  %208 = load ptr, ptr %207, align 8, !tbaa !65
  %209 = getelementptr inbounds %struct.BMFace, ptr %208, i64 0, i32 1
  %210 = load ptr, ptr %209, align 8, !tbaa !45
  %211 = load i32, ptr %21, align 8, !tbaa !48
  %212 = sext i32 %211 to i64
  %213 = getelementptr %struct.BMFlagLayer, ptr %210, i64 %212
  %214 = getelementptr %struct.BMFlagLayer, ptr %213, i64 -1
  %215 = load i16, ptr %214, align 2, !tbaa !49
  %216 = and i16 %215, 4
  %217 = icmp eq i16 %216, 0
  br i1 %217, label %218, label %229

218:                                              ; preds = %206
  %219 = or disjoint i16 %215, 4
  store i16 %219, ptr %214, align 2, !tbaa !49
  %220 = getelementptr inbounds %struct.BMLoop, ptr %186, i64 0, i32 1
  %221 = load ptr, ptr %220, align 8, !tbaa !66
  %222 = getelementptr inbounds %struct.BMLoop, ptr %184, i64 0, i32 1
  %223 = load ptr, ptr %222, align 8, !tbaa !66
  %224 = icmp eq ptr %221, %223
  %225 = xor i1 %182, %224
  %226 = or i16 %215, 6
  %227 = and i16 %219, -3
  %228 = select i1 %225, i16 %227, i16 %226
  store i16 %228, ptr %214, align 2, !tbaa !49
  call void @BLI_linklist_prepend_pool(ptr noundef nonnull %3, ptr noundef %208, ptr noundef %152) #5
  br label %229

229:                                              ; preds = %218, %206, %203, %183
  %230 = getelementptr inbounds %struct.BMLoop, ptr %184, i64 0, i32 6
  %231 = load ptr, ptr %230, align 8, !tbaa !67
  %232 = icmp eq ptr %231, %180
  br i1 %232, label %233, label %183, !llvm.loop !68

233:                                              ; preds = %229
  br label %163, !llvm.loop !69

234:                                              ; preds = %168
  call void @BLI_mempool_destroy(ptr noundef %152) #5
  store ptr null, ptr %3, align 8, !tbaa !34
  %235 = icmp sgt i32 %27, 0
  br i1 %235, label %236, label %264

236:                                              ; preds = %234
  %237 = zext nneg i32 %27 to i64
  br label %238

238:                                              ; preds = %236, %252
  %239 = phi i64 [ 0, %236 ], [ %262, %252 ]
  %240 = getelementptr inbounds ptr, ptr %15, i64 %239
  %241 = load ptr, ptr %240, align 8, !tbaa !34
  %242 = getelementptr inbounds %struct.BMFace, ptr %241, i64 0, i32 1
  %243 = load ptr, ptr %242, align 8, !tbaa !45
  %244 = load i32, ptr %21, align 8, !tbaa !48
  %245 = sext i32 %244 to i64
  %246 = getelementptr %struct.BMFlagLayer, ptr %243, i64 %245
  %247 = getelementptr %struct.BMFlagLayer, ptr %246, i64 -1
  %248 = load i16, ptr %247, align 2, !tbaa !49
  %249 = and i16 %248, 3
  %250 = icmp eq i16 %249, 3
  br i1 %250, label %251, label %252

251:                                              ; preds = %238
  call void @BM_face_normal_flip(ptr noundef %0, ptr noundef %241) #5
  br label %252

252:                                              ; preds = %251, %238
  %253 = load ptr, ptr %240, align 8, !tbaa !34
  %254 = getelementptr inbounds %struct.BMFace, ptr %253, i64 0, i32 1
  %255 = load ptr, ptr %254, align 8, !tbaa !45
  %256 = load i32, ptr %21, align 8, !tbaa !48
  %257 = sext i32 %256 to i64
  %258 = getelementptr %struct.BMFlagLayer, ptr %255, i64 %257
  %259 = getelementptr %struct.BMFlagLayer, ptr %258, i64 -1
  %260 = load i16, ptr %259, align 2, !tbaa !49
  %261 = and i16 %260, -5
  store i16 %261, ptr %259, align 2, !tbaa !49
  %262 = add nuw nsw i64 %239, 1
  %263 = icmp eq i64 %262, %237
  br i1 %263, label %264, label %238, !llvm.loop !70

264:                                              ; preds = %252, %234
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #5
  br label %265

265:                                              ; preds = %264, %57
  %266 = add nuw nsw i64 %24, 1
  %267 = icmp eq i64 %266, %22
  br i1 %267, label %268, label %23, !llvm.loop !71

268:                                              ; preds = %265, %2
  %269 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %269(ptr noundef %15) #5
  %270 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %270(ptr noundef %10) #5
  %271 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %272 = load ptr, ptr %4, align 8, !tbaa !34
  call void %271(ptr noundef %272) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @BM_mesh_calc_face_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @bmo_recalc_normal_edge_filter_cb(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #3 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !62
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = icmp eq ptr %8, %4
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.BMLoop, ptr %8, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !59
  %13 = icmp eq ptr %12, %4
  %14 = zext i1 %13 to i8
  br label %15

15:                                               ; preds = %2, %6, %10
  %16 = phi i8 [ 0, %6 ], [ 0, %2 ], [ %14, %10 ]
  ret i8 %16
}

declare void @BMO_slot_buffer_flag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

declare void @BM_mesh_elem_table_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @BM_face_at_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @BM_face_calc_center_mean_weighted(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_mempool_create(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @BLI_linklist_prepend_pool(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_linklist_pop_pool(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_mempool_destroy(ptr noundef) local_unnamed_addr #2

declare void @BM_face_normal_flip(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!38 = !{!39, !40, i64 12}
!39 = !{!"BMesh", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !36, i64 28, !36, i64 29, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !40, i64 88, !40, i64 92, !40, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !40, i64 128, !35, i64 136, !41, i64 144, !41, i64 344, !41, i64 544, !41, i64 744, !42, i64 944, !40, i64 948, !40, i64 952, !40, i64 956, !43, i64 960, !35, i64 976, !43, i64 984, !35, i64 1000}
!40 = !{!"int", !36, i64 0}
!41 = !{!"CustomData", !35, i64 0, !36, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !35, i64 184, !35, i64 192}
!42 = !{!"short", !36, i64 0}
!43 = !{!"ListBase", !35, i64 0, !35, i64 8}
!44 = !{!40, !40, i64 0}
!45 = !{!46, !35, i64 16}
!46 = !{!"BMFace", !47, i64 0, !35, i64 16, !35, i64 24, !40, i64 32, !36, i64 36, !42, i64 48}
!47 = !{!"BMHeader", !35, i64 0, !40, i64 8, !36, i64 12, !36, i64 13, !36, i64 14}
!48 = !{!39, !40, i64 128}
!49 = !{!50, !42, i64 0}
!50 = !{!"BMFlagLayer", !42, i64 0}
!51 = distinct !{!51, !52, !53}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = !{!55, !55, i64 0}
!55 = !{!"float", !36, i64 0}
!56 = distinct !{!56, !52, !53}
!57 = distinct !{!57, !52, !53}
!58 = !{!46, !35, i64 24}
!59 = !{!60, !35, i64 40}
!60 = !{!"BMLoop", !47, i64 0, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64}
!61 = !{!60, !35, i64 24}
!62 = !{!63, !35, i64 40}
!63 = !{!"BMEdge", !47, i64 0, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !64, i64 48, !64, i64 64}
!64 = !{!"BMDiskLink", !35, i64 0, !35, i64 8}
!65 = !{!60, !35, i64 32}
!66 = !{!60, !35, i64 16}
!67 = !{!60, !35, i64 56}
!68 = distinct !{!68, !52, !53}
!69 = distinct !{!69, !52, !53}
!70 = distinct !{!70, !52, !53}
!71 = distinct !{!71, !52, !53}
