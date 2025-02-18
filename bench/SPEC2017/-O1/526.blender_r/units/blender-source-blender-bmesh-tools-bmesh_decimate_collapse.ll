; ModuleID = 'blender/source/blender/bmesh/tools/bmesh_decimate_collapse.c'
source_filename = "blender/source/blender/bmesh/tools/bmesh_decimate_collapse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Quadric = type { float, float, float, float, float, float, float, float, float, float }
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
%struct.CustomDataLayer = type { i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8], ptr }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@__func__.BM_mesh_decimate_collapse = private unnamed_addr constant [26 x i8] c"BM_mesh_decimate_collapse\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local void @BM_mesh_decimate_collapse(ptr noundef %0, float noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca %struct.Quadric, align 4
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca [2 x ptr], align 16
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca %struct.BMIter, align 8
  %13 = alloca [2 x i32], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca %struct.BMIter, align 8
  %17 = alloca %struct.BMIter, align 8
  %18 = alloca %struct.BMIter, align 8
  %19 = alloca %struct.Quadric, align 4
  %20 = alloca [3 x float], align 4
  %21 = alloca %struct.Quadric, align 4
  %22 = alloca %struct.BMIter, align 8
  %23 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %22) #5
  %24 = getelementptr inbounds %struct.BMIter, ptr %22, i64 0, i32 4
  store i8 3, ptr %24, align 4, !tbaa !34
  %25 = getelementptr inbounds %struct.BMIter, ptr %22, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %25, align 8, !tbaa !40
  %26 = getelementptr inbounds %struct.BMIter, ptr %22, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %26, align 8, !tbaa !41
  %27 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %28 = load ptr, ptr %27, align 8, !tbaa !42
  store ptr %28, ptr %22, align 8, !tbaa !47
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %22) #5
  %29 = load ptr, ptr %26, align 8, !tbaa !41
  %30 = call ptr %29(ptr noundef nonnull %22) #5
  %31 = icmp eq ptr %30, null
  br i1 %31, label %46, label %32

32:                                               ; preds = %4, %42
  %33 = phi ptr [ %44, %42 ], [ %30, %4 ]
  %34 = getelementptr inbounds %struct.BMFace, ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !48
  br label %36

36:                                               ; preds = %36, %32
  %37 = phi ptr [ %35, %32 ], [ %40, %36 ]
  %38 = getelementptr inbounds %struct.BMHeader, ptr %37, i64 0, i32 1
  store i32 -1, ptr %38, align 8, !tbaa !51
  %39 = getelementptr inbounds %struct.BMLoop, ptr %37, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !52
  %41 = icmp eq ptr %40, %35
  br i1 %41, label %42, label %36, !llvm.loop !54

42:                                               ; preds = %36
  %43 = load ptr, ptr %26, align 8, !tbaa !41
  %44 = call ptr %43(ptr noundef nonnull %22) #5
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %32, !llvm.loop !57

46:                                               ; preds = %42, %4
  %47 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %48 = load i8, ptr %47, align 4, !tbaa !58
  %49 = or i8 %48, 4
  store i8 %49, ptr %47, align 4, !tbaa !58
  store i8 3, ptr %24, align 4, !tbaa !34
  store ptr @bmiter__elem_of_mesh_begin, ptr %25, align 8, !tbaa !40
  store ptr @bmiter__elem_of_mesh_step, ptr %26, align 8, !tbaa !41
  %50 = load ptr, ptr %27, align 8, !tbaa !42
  store ptr %50, ptr %22, align 8, !tbaa !47
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %22) #5
  %51 = load ptr, ptr %26, align 8, !tbaa !41
  %52 = call ptr %51(ptr noundef nonnull %22) #5
  %53 = icmp eq ptr %52, null
  br i1 %53, label %140, label %54

54:                                               ; preds = %46, %135
  %55 = phi ptr [ %138, %135 ], [ %52, %46 ]
  %56 = phi i8 [ %136, %135 ], [ 0, %46 ]
  %57 = getelementptr inbounds %struct.BMFace, ptr %55, i64 0, i32 3
  %58 = load i32, ptr %57, align 8, !tbaa !59
  %59 = icmp eq i32 %58, 4
  br i1 %59, label %60, label %135

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.BMFace, ptr %55, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !48
  %63 = getelementptr inbounds %struct.BMLoop, ptr %62, i64 0, i32 6
  %64 = load ptr, ptr %63, align 8, !tbaa !52
  %65 = getelementptr inbounds %struct.BMLoop, ptr %64, i64 0, i32 6
  %66 = load ptr, ptr %65, align 8, !tbaa !52
  %67 = getelementptr inbounds %struct.BMLoop, ptr %66, i64 0, i32 6
  %68 = load ptr, ptr %67, align 8, !tbaa !52
  %69 = getelementptr inbounds %struct.BMLoop, ptr %62, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !60
  %71 = getelementptr inbounds %struct.BMVert, ptr %70, i64 0, i32 2
  %72 = getelementptr inbounds %struct.BMLoop, ptr %66, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !60
  %74 = getelementptr inbounds %struct.BMVert, ptr %73, i64 0, i32 2
  %75 = load float, ptr %74, align 4, !tbaa !61
  %76 = load float, ptr %71, align 4, !tbaa !61
  %77 = fsub float %75, %76
  %78 = getelementptr inbounds %struct.BMVert, ptr %73, i64 0, i32 2, i64 1
  %79 = load float, ptr %78, align 4, !tbaa !61
  %80 = getelementptr inbounds %struct.BMVert, ptr %70, i64 0, i32 2, i64 1
  %81 = load float, ptr %80, align 4, !tbaa !61
  %82 = fsub float %79, %81
  %83 = getelementptr inbounds %struct.BMVert, ptr %73, i64 0, i32 2, i64 2
  %84 = load float, ptr %83, align 4, !tbaa !61
  %85 = getelementptr inbounds %struct.BMVert, ptr %70, i64 0, i32 2, i64 2
  %86 = load float, ptr %85, align 4, !tbaa !61
  %87 = fsub float %84, %86
  %88 = fmul float %82, %82
  %89 = call float @llvm.fmuladd.f32(float %77, float %77, float %88)
  %90 = call float @llvm.fmuladd.f32(float %87, float %87, float %89)
  %91 = getelementptr inbounds %struct.BMLoop, ptr %64, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !60
  %93 = getelementptr inbounds %struct.BMVert, ptr %92, i64 0, i32 2
  %94 = getelementptr inbounds %struct.BMLoop, ptr %68, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !60
  %96 = getelementptr inbounds %struct.BMVert, ptr %95, i64 0, i32 2
  %97 = load float, ptr %96, align 4, !tbaa !61
  %98 = load float, ptr %93, align 4, !tbaa !61
  %99 = fsub float %97, %98
  %100 = getelementptr inbounds %struct.BMVert, ptr %95, i64 0, i32 2, i64 1
  %101 = load float, ptr %100, align 4, !tbaa !61
  %102 = getelementptr inbounds %struct.BMVert, ptr %92, i64 0, i32 2, i64 1
  %103 = load float, ptr %102, align 4, !tbaa !61
  %104 = fsub float %101, %103
  %105 = getelementptr inbounds %struct.BMVert, ptr %95, i64 0, i32 2, i64 2
  %106 = load float, ptr %105, align 4, !tbaa !61
  %107 = getelementptr inbounds %struct.BMVert, ptr %92, i64 0, i32 2, i64 2
  %108 = load float, ptr %107, align 4, !tbaa !61
  %109 = fsub float %106, %108
  %110 = fmul float %104, %104
  %111 = call float @llvm.fmuladd.f32(float %99, float %99, float %110)
  %112 = call float @llvm.fmuladd.f32(float %109, float %109, float %111)
  %113 = fcmp olt float %90, %112
  %114 = select i1 %113, ptr %62, ptr %64
  %115 = select i1 %113, ptr %66, ptr %68
  %116 = getelementptr inbounds %struct.BMLoop, ptr %114, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !60
  %118 = getelementptr inbounds %struct.BMLoop, ptr %115, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !60
  %120 = call ptr @BM_edge_exists(ptr noundef %117, ptr noundef %119) #5
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %135

122:                                              ; preds = %60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %23) #5
  %123 = call ptr @BM_face_split(ptr noundef %0, ptr noundef nonnull %55, ptr noundef %114, ptr noundef %115, ptr noundef nonnull %23, ptr noundef null, i8 noundef zeroext 0) #5
  %124 = icmp eq ptr %123, null
  br i1 %124, label %133, label %125

125:                                              ; preds = %122
  %126 = getelementptr inbounds %struct.BMHeader, ptr %55, i64 0, i32 1
  %127 = load i32, ptr %126, align 8, !tbaa !51
  %128 = load ptr, ptr %23, align 8, !tbaa !63
  %129 = getelementptr inbounds %struct.BMHeader, ptr %128, i64 0, i32 1
  store i32 %127, ptr %129, align 8, !tbaa !51
  %130 = getelementptr inbounds %struct.BMLoop, ptr %128, i64 0, i32 4
  %131 = load ptr, ptr %130, align 8, !tbaa !64
  %132 = getelementptr inbounds %struct.BMHeader, ptr %131, i64 0, i32 1
  store i32 %127, ptr %132, align 8, !tbaa !51
  call void @BM_face_normal_update(ptr noundef nonnull %55) #5
  call void @BM_face_normal_update(ptr noundef nonnull %123) #5
  br label %133

133:                                              ; preds = %125, %122
  %134 = phi i8 [ 1, %125 ], [ %56, %122 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %23) #5
  br label %135

135:                                              ; preds = %133, %60, %54
  %136 = phi i8 [ %56, %54 ], [ %134, %133 ], [ %56, %60 ]
  %137 = load ptr, ptr %26, align 8, !tbaa !41
  %138 = call ptr %137(ptr noundef nonnull %22) #5
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %54, !llvm.loop !65

140:                                              ; preds = %135, %46
  %141 = phi i8 [ 0, %46 ], [ %136, %135 ]
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %140
  call void @BM_mesh_elem_index_ensure(ptr noundef %0, i8 noundef zeroext 10) #5
  br label %144

144:                                              ; preds = %140, %143
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %22) #5
  %145 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %146 = load i32, ptr %0, align 8, !tbaa !66
  %147 = sext i32 %146 to i64
  %148 = mul nsw i64 %147, 40
  %149 = call ptr %145(i64 noundef %148, ptr noundef nonnull @__func__.BM_mesh_decimate_collapse) #5
  %150 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 1
  %151 = load i32, ptr %150, align 4, !tbaa !67
  %152 = call ptr @BLI_heap_new_ex(i32 noundef %151) #5
  %153 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !63
  %154 = load i32, ptr %150, align 4, !tbaa !67
  %155 = sext i32 %154 to i64
  %156 = shl nsw i64 %155, 3
  %157 = call ptr %153(i64 noundef %156, ptr noundef nonnull @__func__.BM_mesh_decimate_collapse) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %18) #5
  %158 = getelementptr inbounds %struct.BMIter, ptr %18, i64 0, i32 4
  store i8 3, ptr %158, align 4, !tbaa !34
  %159 = getelementptr inbounds %struct.BMIter, ptr %18, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %159, align 8, !tbaa !40
  %160 = getelementptr inbounds %struct.BMIter, ptr %18, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %160, align 8, !tbaa !41
  %161 = load ptr, ptr %27, align 8, !tbaa !42
  store ptr %161, ptr %18, align 8, !tbaa !47
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %18) #5
  %162 = load ptr, ptr %160, align 8, !tbaa !41
  %163 = call ptr %162(ptr noundef nonnull %18) #5
  %164 = icmp eq ptr %163, null
  br i1 %164, label %203, label %165

165:                                              ; preds = %144, %199
  %166 = phi ptr [ %201, %199 ], [ %163, %144 ]
  %167 = getelementptr inbounds %struct.BMFace, ptr %166, i64 0, i32 2
  %168 = load ptr, ptr %167, align 8, !tbaa !48
  %169 = getelementptr inbounds %struct.BMLoop, ptr %168, i64 0, i32 1
  %170 = load ptr, ptr %169, align 8, !tbaa !60
  %171 = getelementptr inbounds %struct.BMVert, ptr %170, i64 0, i32 2
  %172 = getelementptr inbounds %struct.BMFace, ptr %166, i64 0, i32 4
  %173 = load float, ptr %172, align 4, !tbaa !61
  %174 = load float, ptr %171, align 4, !tbaa !61
  %175 = getelementptr inbounds %struct.BMFace, ptr %166, i64 0, i32 4, i64 1
  %176 = load float, ptr %175, align 4, !tbaa !61
  %177 = getelementptr inbounds %struct.BMVert, ptr %170, i64 0, i32 2, i64 1
  %178 = load float, ptr %177, align 4, !tbaa !61
  %179 = fmul float %176, %178
  %180 = call float @llvm.fmuladd.f32(float %173, float %174, float %179)
  %181 = getelementptr inbounds %struct.BMFace, ptr %166, i64 0, i32 4, i64 2
  %182 = load float, ptr %181, align 4, !tbaa !61
  %183 = getelementptr inbounds %struct.BMVert, ptr %170, i64 0, i32 2, i64 2
  %184 = load float, ptr %183, align 4, !tbaa !61
  %185 = call float @llvm.fmuladd.f32(float %182, float %184, float %180)
  %186 = fneg float %185
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %19) #5
  call void @BLI_quadric_from_v3_dist(ptr noundef nonnull %19, ptr noundef nonnull %172, float noundef %186) #5
  %187 = load ptr, ptr %167, align 8, !tbaa !48
  br label %188

188:                                              ; preds = %188, %165
  %189 = phi ptr [ %187, %165 ], [ %197, %188 ]
  %190 = getelementptr inbounds %struct.BMLoop, ptr %189, i64 0, i32 1
  %191 = load ptr, ptr %190, align 8, !tbaa !60
  %192 = getelementptr inbounds %struct.BMHeader, ptr %191, i64 0, i32 1
  %193 = load i32, ptr %192, align 8, !tbaa !51
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.Quadric, ptr %149, i64 %194
  call void @BLI_quadric_add_qu_qu(ptr noundef %195, ptr noundef nonnull %19) #5
  %196 = getelementptr inbounds %struct.BMLoop, ptr %189, i64 0, i32 6
  %197 = load ptr, ptr %196, align 8, !tbaa !52
  %198 = icmp eq ptr %197, %187
  br i1 %198, label %199, label %188, !llvm.loop !68

199:                                              ; preds = %188
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %19) #5
  %200 = load ptr, ptr %160, align 8, !tbaa !41
  %201 = call ptr %200(ptr noundef nonnull %18) #5
  %202 = icmp eq ptr %201, null
  br i1 %202, label %203, label %165, !llvm.loop !69

203:                                              ; preds = %199, %144
  store i8 2, ptr %158, align 4, !tbaa !34
  store ptr @bmiter__elem_of_mesh_begin, ptr %159, align 8, !tbaa !40
  store ptr @bmiter__elem_of_mesh_step, ptr %160, align 8, !tbaa !41
  %204 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %205 = load ptr, ptr %204, align 8, !tbaa !70
  store ptr %205, ptr %18, align 8, !tbaa !47
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %18) #5
  %206 = load ptr, ptr %160, align 8, !tbaa !41
  %207 = call ptr %206(ptr noundef nonnull %18) #5
  %208 = icmp eq ptr %207, null
  br i1 %208, label %309, label %209

209:                                              ; preds = %203
  %210 = getelementptr inbounds float, ptr %20, i64 1
  %211 = getelementptr inbounds float, ptr %20, i64 2
  br label %212

212:                                              ; preds = %209, %305
  %213 = phi ptr [ %207, %209 ], [ %307, %305 ]
  %214 = getelementptr inbounds %struct.BMEdge, ptr %213, i64 0, i32 4
  %215 = load ptr, ptr %214, align 8, !tbaa !71
  %216 = icmp eq ptr %215, null
  br i1 %216, label %222, label %217

217:                                              ; preds = %212
  %218 = getelementptr inbounds %struct.BMLoop, ptr %215, i64 0, i32 4
  %219 = load ptr, ptr %218, align 8, !tbaa !64
  %220 = icmp eq ptr %219, %215
  %221 = zext i1 %220 to i8
  br label %222

222:                                              ; preds = %217, %212
  %223 = phi i8 [ 0, %212 ], [ %221, %217 ]
  %224 = icmp eq i8 %223, 0
  br i1 %224, label %305, label %225

225:                                              ; preds = %222
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #5
  %226 = getelementptr inbounds %struct.BMEdge, ptr %213, i64 0, i32 3
  %227 = load ptr, ptr %226, align 8, !tbaa !74
  %228 = getelementptr inbounds %struct.BMVert, ptr %227, i64 0, i32 2
  %229 = getelementptr inbounds %struct.BMEdge, ptr %213, i64 0, i32 2
  %230 = load ptr, ptr %229, align 8, !tbaa !75
  %231 = getelementptr inbounds %struct.BMVert, ptr %230, i64 0, i32 2
  %232 = load float, ptr %228, align 4, !tbaa !61
  %233 = load float, ptr %231, align 4, !tbaa !61
  %234 = fsub float %232, %233
  %235 = getelementptr inbounds %struct.BMVert, ptr %227, i64 0, i32 2, i64 1
  %236 = load float, ptr %235, align 4, !tbaa !61
  %237 = getelementptr inbounds %struct.BMVert, ptr %230, i64 0, i32 2, i64 1
  %238 = load float, ptr %237, align 4, !tbaa !61
  %239 = fsub float %236, %238
  %240 = getelementptr inbounds %struct.BMVert, ptr %227, i64 0, i32 2, i64 2
  %241 = load float, ptr %240, align 4, !tbaa !61
  %242 = getelementptr inbounds %struct.BMVert, ptr %230, i64 0, i32 2, i64 2
  %243 = load float, ptr %242, align 4, !tbaa !61
  %244 = fsub float %241, %243
  %245 = getelementptr inbounds %struct.BMLoop, ptr %215, i64 0, i32 3
  %246 = load ptr, ptr %245, align 8, !tbaa !76
  %247 = getelementptr inbounds %struct.BMFace, ptr %246, i64 0, i32 4
  %248 = getelementptr inbounds %struct.BMFace, ptr %246, i64 0, i32 4, i64 2
  %249 = load float, ptr %248, align 4, !tbaa !61
  %250 = getelementptr inbounds %struct.BMFace, ptr %246, i64 0, i32 4, i64 1
  %251 = load float, ptr %250, align 4, !tbaa !61
  %252 = fneg float %244
  %253 = fmul float %251, %252
  %254 = call float @llvm.fmuladd.f32(float %239, float %249, float %253)
  store float %254, ptr %20, align 4, !tbaa !61
  %255 = load float, ptr %247, align 4, !tbaa !61
  %256 = fneg float %234
  %257 = fmul float %249, %256
  %258 = call float @llvm.fmuladd.f32(float %244, float %255, float %257)
  store float %258, ptr %210, align 4, !tbaa !61
  %259 = fneg float %239
  %260 = fmul float %255, %259
  %261 = call float @llvm.fmuladd.f32(float %234, float %251, float %260)
  store float %261, ptr %211, align 4, !tbaa !61
  %262 = fmul float %258, %258
  %263 = call float @llvm.fmuladd.f32(float %254, float %254, float %262)
  %264 = call float @llvm.fmuladd.f32(float %261, float %261, float %263)
  %265 = fcmp ogt float %264, 0x38AA95A5C0000000
  br i1 %265, label %266, label %275

266:                                              ; preds = %225
  %267 = call float @sqrtf(float noundef %264) #5
  %268 = fdiv float 1.000000e+00, %267
  %269 = load float, ptr %20, align 4, !tbaa !61
  %270 = fmul float %269, %268
  store float %270, ptr %20, align 4, !tbaa !61
  %271 = load float, ptr %210, align 4, !tbaa !61
  %272 = fmul float %268, %271
  store float %272, ptr %210, align 4, !tbaa !61
  %273 = load float, ptr %211, align 4, !tbaa !61
  %274 = fmul float %268, %273
  br label %276

275:                                              ; preds = %225
  store float 0.000000e+00, ptr %20, align 4, !tbaa !61
  store float 0.000000e+00, ptr %210, align 4, !tbaa !61
  br label %276

276:                                              ; preds = %275, %266
  %277 = phi float [ 0.000000e+00, %275 ], [ %274, %266 ]
  %278 = phi float [ 0.000000e+00, %275 ], [ %267, %266 ]
  store float %277, ptr %211, align 4, !tbaa !61
  %279 = fcmp ogt float %278, 0x3E80000000000000
  br i1 %279, label %280, label %304

280:                                              ; preds = %276
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %21) #5
  %281 = load ptr, ptr %229, align 8, !tbaa !75
  %282 = getelementptr inbounds %struct.BMVert, ptr %281, i64 0, i32 2
  %283 = load float, ptr %20, align 4, !tbaa !61
  %284 = load float, ptr %282, align 4, !tbaa !61
  %285 = load float, ptr %210, align 4, !tbaa !61
  %286 = getelementptr inbounds %struct.BMVert, ptr %281, i64 0, i32 2, i64 1
  %287 = load float, ptr %286, align 4, !tbaa !61
  %288 = fmul float %285, %287
  %289 = call float @llvm.fmuladd.f32(float %283, float %284, float %288)
  %290 = getelementptr inbounds %struct.BMVert, ptr %281, i64 0, i32 2, i64 2
  %291 = load float, ptr %290, align 4, !tbaa !61
  %292 = call float @llvm.fmuladd.f32(float %277, float %291, float %289)
  %293 = fneg float %292
  call void @BLI_quadric_from_v3_dist(ptr noundef nonnull %21, ptr noundef nonnull %20, float noundef %293) #5
  call void @BLI_quadric_mul(ptr noundef nonnull %21, float noundef 1.000000e+02) #5
  %294 = load ptr, ptr %229, align 8, !tbaa !75
  %295 = getelementptr inbounds %struct.BMHeader, ptr %294, i64 0, i32 1
  %296 = load i32, ptr %295, align 8, !tbaa !51
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.Quadric, ptr %149, i64 %297
  call void @BLI_quadric_add_qu_qu(ptr noundef %298, ptr noundef nonnull %21) #5
  %299 = load ptr, ptr %226, align 8, !tbaa !74
  %300 = getelementptr inbounds %struct.BMHeader, ptr %299, i64 0, i32 1
  %301 = load i32, ptr %300, align 8, !tbaa !51
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.Quadric, ptr %149, i64 %302
  call void @BLI_quadric_add_qu_qu(ptr noundef %303, ptr noundef nonnull %21) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %21) #5
  br label %304

304:                                              ; preds = %280, %276
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #5
  br label %305

305:                                              ; preds = %304, %222
  %306 = load ptr, ptr %160, align 8, !tbaa !41
  %307 = call ptr %306(ptr noundef nonnull %18) #5
  %308 = icmp eq ptr %307, null
  br i1 %308, label %309, label %212, !llvm.loop !77

309:                                              ; preds = %305, %203
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %18) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %17) #5
  %310 = getelementptr inbounds %struct.BMIter, ptr %17, i64 0, i32 4
  store i8 2, ptr %310, align 4, !tbaa !34
  %311 = getelementptr inbounds %struct.BMIter, ptr %17, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %311, align 8, !tbaa !40
  %312 = getelementptr inbounds %struct.BMIter, ptr %17, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %312, align 8, !tbaa !41
  %313 = load ptr, ptr %204, align 8, !tbaa !70
  store ptr %313, ptr %17, align 8, !tbaa !47
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %17) #5
  %314 = load ptr, ptr %312, align 8, !tbaa !41
  %315 = call ptr %314(ptr noundef nonnull %17) #5
  %316 = icmp eq ptr %315, null
  br i1 %316, label %326, label %317

317:                                              ; preds = %309, %317
  %318 = phi i32 [ %324, %317 ], [ 0, %309 ]
  %319 = phi ptr [ %323, %317 ], [ %315, %309 ]
  %320 = zext i32 %318 to i64
  %321 = getelementptr inbounds ptr, ptr %157, i64 %320
  store ptr null, ptr %321, align 8, !tbaa !63
  call fastcc void @bm_decim_build_edge_cost_single(ptr noundef nonnull %319, ptr noundef %149, ptr noundef %2, ptr noundef %152, ptr noundef %157)
  %322 = load ptr, ptr %312, align 8, !tbaa !41
  %323 = call ptr %322(ptr noundef nonnull %17) #5
  %324 = add i32 %318, 1
  %325 = icmp eq ptr %323, null
  br i1 %325, label %326, label %317, !llvm.loop !78

326:                                              ; preds = %317, %309
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %17) #5
  %327 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 3
  %328 = load i32, ptr %327, align 4, !tbaa !79
  %329 = sitofp i32 %328 to float
  %330 = fmul float %329, %1
  %331 = fptosi float %330 to i32
  %332 = load i8, ptr %47, align 4, !tbaa !58
  %333 = or i8 %332, 15
  store i8 %333, ptr %47, align 4, !tbaa !58
  %334 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  %335 = call zeroext i8 @CustomData_has_interp(ptr noundef nonnull %334) #5
  %336 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 25
  %337 = call zeroext i8 @CustomData_has_interp(ptr noundef nonnull %336) #5
  %338 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %339 = call zeroext i8 @CustomData_has_math(ptr noundef nonnull %338) #5
  %340 = load i32, ptr %327, align 4, !tbaa !79
  %341 = icmp sgt i32 %340, %331
  br i1 %341, label %342, label %1081

342:                                              ; preds = %326
  %343 = icmp eq i8 %339, 0
  %344 = icmp eq i8 %337, 0
  %345 = icmp ne i8 %335, 0
  %346 = zext i1 %345 to i32
  %347 = or disjoint i32 %346, 2
  %348 = select i1 %344, i32 %346, i32 %347
  %349 = or disjoint i32 %348, 4
  %350 = select i1 %343, i32 %348, i32 %349
  %351 = getelementptr inbounds float, ptr %15, i64 1
  %352 = getelementptr inbounds float, ptr %15, i64 2
  %353 = getelementptr inbounds %struct.BMIter, ptr %12, i64 0, i32 4
  %354 = getelementptr inbounds %struct.BMIter, ptr %12, i64 0, i32 1
  %355 = getelementptr inbounds %struct.BMIter, ptr %12, i64 0, i32 2
  %356 = getelementptr inbounds float, ptr %14, i64 1
  %357 = getelementptr inbounds float, ptr %14, i64 2
  %358 = getelementptr inbounds i32, ptr %13, i64 1
  %359 = and i32 %350, 1
  %360 = icmp eq i32 %359, 0
  %361 = and i32 %350, 2
  %362 = icmp eq i32 %361, 0
  %363 = icmp ult i32 %350, 4
  %364 = getelementptr inbounds i32, ptr %13, i64 1
  %365 = and i32 %350, 1
  %366 = icmp eq i32 %365, 0
  %367 = and i32 %350, 2
  %368 = icmp eq i32 %367, 0
  %369 = icmp ult i32 %350, 4
  %370 = icmp eq ptr %2, null
  %371 = getelementptr inbounds float, ptr %14, i64 1
  %372 = getelementptr inbounds float, ptr %14, i64 2
  %373 = getelementptr inbounds %struct.BMIter, ptr %16, i64 0, i32 4
  %374 = getelementptr inbounds %struct.BMIter, ptr %16, i64 0, i32 1
  %375 = getelementptr inbounds %struct.BMIter, ptr %16, i64 0, i32 2
  br label %376

376:                                              ; preds = %342, %1078
  %377 = call zeroext i8 @BLI_heap_is_empty(ptr noundef %152) #5
  %378 = icmp eq i8 %377, 0
  br i1 %378, label %379, label %1081

379:                                              ; preds = %376
  %380 = call ptr @BLI_heap_top(ptr noundef %152) #5
  %381 = call float @BLI_heap_node_value(ptr noundef %380) #5
  %382 = fcmp une float %381, 0x47EFFFFFE0000000
  br i1 %382, label %383, label %1081

383:                                              ; preds = %379
  %384 = call ptr @BLI_heap_popmin(ptr noundef %152) #5
  %385 = getelementptr inbounds %struct.BMHeader, ptr %384, i64 0, i32 1
  %386 = load i32, ptr %385, align 8, !tbaa !51
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds ptr, ptr %157, i64 %387
  store ptr null, ptr %388, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #5
  %389 = getelementptr inbounds %struct.BMEdge, ptr %384, i64 0, i32 2
  %390 = load ptr, ptr %389, align 8, !tbaa !75
  %391 = getelementptr inbounds %struct.BMEdge, ptr %384, i64 0, i32 3
  %392 = load ptr, ptr %391, align 8, !tbaa !74
  %393 = getelementptr inbounds %struct.BMHeader, ptr %392, i64 0, i32 1
  %394 = load i32, ptr %393, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #5
  %395 = getelementptr inbounds %struct.BMVert, ptr %392, i64 0, i32 3
  %396 = load float, ptr %395, align 4, !tbaa !61
  store float %396, ptr %15, align 4, !tbaa !61
  %397 = getelementptr inbounds %struct.BMVert, ptr %392, i64 0, i32 3, i64 1
  %398 = load float, ptr %397, align 4, !tbaa !61
  store float %398, ptr %351, align 4, !tbaa !61
  %399 = getelementptr inbounds %struct.BMVert, ptr %392, i64 0, i32 3, i64 2
  %400 = load float, ptr %399, align 4, !tbaa !61
  store float %400, ptr %352, align 4, !tbaa !61
  br label %401

401:                                              ; preds = %442, %383
  %402 = phi ptr [ %384, %383 ], [ %448, %442 ]
  %403 = getelementptr inbounds %struct.BMEdge, ptr %402, i64 0, i32 4
  %404 = load ptr, ptr %403, align 8, !tbaa !71
  %405 = icmp eq ptr %404, null
  br i1 %405, label %413, label %406

406:                                              ; preds = %401
  %407 = getelementptr inbounds %struct.BMLoop, ptr %404, i64 0, i32 4
  %408 = load ptr, ptr %407, align 8, !tbaa !64
  %409 = getelementptr inbounds %struct.BMLoop, ptr %408, i64 0, i32 4
  %410 = load ptr, ptr %409, align 8, !tbaa !64
  %411 = icmp eq ptr %410, %404
  %412 = zext i1 %411 to i32
  br label %413

413:                                              ; preds = %406, %401
  %414 = phi i32 [ 0, %401 ], [ %412, %406 ]
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %641, label %416

416:                                              ; preds = %413
  %417 = getelementptr inbounds %struct.BMEdge, ptr %402, i64 0, i32 2
  %418 = load ptr, ptr %417, align 8, !tbaa !75
  %419 = getelementptr inbounds %struct.BMHeader, ptr %418, i64 0, i32 3
  %420 = load i8, ptr %419, align 1, !tbaa !80
  %421 = and i8 %420, -17
  store i8 %421, ptr %419, align 1, !tbaa !80
  %422 = getelementptr inbounds %struct.BMEdge, ptr %402, i64 0, i32 3
  %423 = load ptr, ptr %422, align 8, !tbaa !74
  %424 = getelementptr inbounds %struct.BMHeader, ptr %423, i64 0, i32 3
  %425 = load i8, ptr %424, align 1, !tbaa !80
  %426 = and i8 %425, -17
  store i8 %426, ptr %424, align 1, !tbaa !80
  br i1 %405, label %442, label %427

427:                                              ; preds = %416
  %428 = getelementptr inbounds %struct.BMLoop, ptr %404, i64 0, i32 3
  %429 = load ptr, ptr %428, align 8, !tbaa !76
  %430 = getelementptr inbounds %struct.BMHeader, ptr %429, i64 0, i32 3
  %431 = load i8, ptr %430, align 1, !tbaa !80
  %432 = and i8 %431, -17
  store i8 %432, ptr %430, align 1, !tbaa !80
  %433 = getelementptr inbounds %struct.BMLoop, ptr %404, i64 0, i32 4
  %434 = load ptr, ptr %433, align 8, !tbaa !64
  %435 = icmp eq ptr %404, %434
  br i1 %435, label %442, label %436

436:                                              ; preds = %427
  %437 = getelementptr inbounds %struct.BMLoop, ptr %434, i64 0, i32 3
  %438 = load ptr, ptr %437, align 8, !tbaa !76
  %439 = getelementptr inbounds %struct.BMHeader, ptr %438, i64 0, i32 3
  %440 = load i8, ptr %439, align 1, !tbaa !80
  %441 = and i8 %440, -17
  store i8 %441, ptr %439, align 1, !tbaa !80
  br label %442

442:                                              ; preds = %416, %427, %436
  %443 = load ptr, ptr %389, align 8, !tbaa !75
  %444 = getelementptr inbounds %struct.BMEdge, ptr %402, i64 0, i32 5
  %445 = icmp eq ptr %423, %443
  %446 = zext i1 %445 to i64
  %447 = getelementptr inbounds %struct.BMDiskLink, ptr %444, i64 %446
  %448 = load ptr, ptr %447, align 8, !tbaa !81
  %449 = icmp eq ptr %448, %384
  br i1 %449, label %450, label %401, !llvm.loop !82

450:                                              ; preds = %442, %491
  %451 = phi ptr [ %497, %491 ], [ %384, %442 ]
  %452 = getelementptr inbounds %struct.BMEdge, ptr %451, i64 0, i32 4
  %453 = load ptr, ptr %452, align 8, !tbaa !71
  %454 = icmp eq ptr %453, null
  br i1 %454, label %462, label %455

455:                                              ; preds = %450
  %456 = getelementptr inbounds %struct.BMLoop, ptr %453, i64 0, i32 4
  %457 = load ptr, ptr %456, align 8, !tbaa !64
  %458 = getelementptr inbounds %struct.BMLoop, ptr %457, i64 0, i32 4
  %459 = load ptr, ptr %458, align 8, !tbaa !64
  %460 = icmp eq ptr %459, %453
  %461 = zext i1 %460 to i32
  br label %462

462:                                              ; preds = %455, %450
  %463 = phi i32 [ 0, %450 ], [ %461, %455 ]
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %641, label %465

465:                                              ; preds = %462
  %466 = getelementptr inbounds %struct.BMEdge, ptr %451, i64 0, i32 2
  %467 = load ptr, ptr %466, align 8, !tbaa !75
  %468 = getelementptr inbounds %struct.BMHeader, ptr %467, i64 0, i32 3
  %469 = load i8, ptr %468, align 1, !tbaa !80
  %470 = and i8 %469, -17
  store i8 %470, ptr %468, align 1, !tbaa !80
  %471 = getelementptr inbounds %struct.BMEdge, ptr %451, i64 0, i32 3
  %472 = load ptr, ptr %471, align 8, !tbaa !74
  %473 = getelementptr inbounds %struct.BMHeader, ptr %472, i64 0, i32 3
  %474 = load i8, ptr %473, align 1, !tbaa !80
  %475 = and i8 %474, -17
  store i8 %475, ptr %473, align 1, !tbaa !80
  br i1 %454, label %491, label %476

476:                                              ; preds = %465
  %477 = getelementptr inbounds %struct.BMLoop, ptr %453, i64 0, i32 3
  %478 = load ptr, ptr %477, align 8, !tbaa !76
  %479 = getelementptr inbounds %struct.BMHeader, ptr %478, i64 0, i32 3
  %480 = load i8, ptr %479, align 1, !tbaa !80
  %481 = and i8 %480, -17
  store i8 %481, ptr %479, align 1, !tbaa !80
  %482 = getelementptr inbounds %struct.BMLoop, ptr %453, i64 0, i32 4
  %483 = load ptr, ptr %482, align 8, !tbaa !64
  %484 = icmp eq ptr %453, %483
  br i1 %484, label %491, label %485

485:                                              ; preds = %476
  %486 = getelementptr inbounds %struct.BMLoop, ptr %483, i64 0, i32 3
  %487 = load ptr, ptr %486, align 8, !tbaa !76
  %488 = getelementptr inbounds %struct.BMHeader, ptr %487, i64 0, i32 3
  %489 = load i8, ptr %488, align 1, !tbaa !80
  %490 = and i8 %489, -17
  store i8 %490, ptr %488, align 1, !tbaa !80
  br label %491

491:                                              ; preds = %465, %476, %485
  %492 = load ptr, ptr %391, align 8, !tbaa !74
  %493 = getelementptr inbounds %struct.BMEdge, ptr %451, i64 0, i32 5
  %494 = icmp eq ptr %472, %492
  %495 = zext i1 %494 to i64
  %496 = getelementptr inbounds %struct.BMDiskLink, ptr %493, i64 %495
  %497 = load ptr, ptr %496, align 8, !tbaa !81
  %498 = icmp eq ptr %497, %384
  br i1 %498, label %499, label %450, !llvm.loop !83

499:                                              ; preds = %491, %529
  %500 = phi ptr [ %534, %529 ], [ %384, %491 ]
  %501 = getelementptr inbounds %struct.BMEdge, ptr %500, i64 0, i32 2
  %502 = load ptr, ptr %501, align 8, !tbaa !75
  %503 = getelementptr inbounds %struct.BMHeader, ptr %502, i64 0, i32 3
  %504 = load i8, ptr %503, align 1, !tbaa !80
  %505 = or i8 %504, 16
  store i8 %505, ptr %503, align 1, !tbaa !80
  %506 = getelementptr inbounds %struct.BMEdge, ptr %500, i64 0, i32 3
  %507 = load ptr, ptr %506, align 8, !tbaa !74
  %508 = getelementptr inbounds %struct.BMHeader, ptr %507, i64 0, i32 3
  %509 = load i8, ptr %508, align 1, !tbaa !80
  %510 = or i8 %509, 16
  store i8 %510, ptr %508, align 1, !tbaa !80
  %511 = getelementptr inbounds %struct.BMEdge, ptr %500, i64 0, i32 4
  %512 = load ptr, ptr %511, align 8, !tbaa !71
  %513 = icmp eq ptr %512, null
  br i1 %513, label %529, label %514

514:                                              ; preds = %499
  %515 = getelementptr inbounds %struct.BMLoop, ptr %512, i64 0, i32 3
  %516 = load ptr, ptr %515, align 8, !tbaa !76
  %517 = getelementptr inbounds %struct.BMHeader, ptr %516, i64 0, i32 3
  %518 = load i8, ptr %517, align 1, !tbaa !80
  %519 = or i8 %518, 16
  store i8 %519, ptr %517, align 1, !tbaa !80
  %520 = getelementptr inbounds %struct.BMLoop, ptr %512, i64 0, i32 4
  %521 = load ptr, ptr %520, align 8, !tbaa !64
  %522 = icmp eq ptr %512, %521
  br i1 %522, label %529, label %523

523:                                              ; preds = %514
  %524 = getelementptr inbounds %struct.BMLoop, ptr %521, i64 0, i32 3
  %525 = load ptr, ptr %524, align 8, !tbaa !76
  %526 = getelementptr inbounds %struct.BMHeader, ptr %525, i64 0, i32 3
  %527 = load i8, ptr %526, align 1, !tbaa !80
  %528 = or i8 %527, 16
  store i8 %528, ptr %526, align 1, !tbaa !80
  br label %529

529:                                              ; preds = %523, %514, %499
  %530 = getelementptr inbounds %struct.BMEdge, ptr %500, i64 0, i32 5
  %531 = icmp eq ptr %507, %443
  %532 = zext i1 %531 to i64
  %533 = getelementptr inbounds %struct.BMDiskLink, ptr %530, i64 %532
  %534 = load ptr, ptr %533, align 8, !tbaa !81
  %535 = icmp eq ptr %534, %384
  br i1 %535, label %536, label %499, !llvm.loop !84

536:                                              ; preds = %529
  %537 = getelementptr inbounds %struct.BMEdge, ptr %384, i64 0, i32 4
  %538 = load ptr, ptr %537, align 8, !tbaa !71
  %539 = getelementptr inbounds %struct.BMLoop, ptr %538, i64 0, i32 3
  %540 = load ptr, ptr %539, align 8, !tbaa !76
  %541 = getelementptr inbounds %struct.BMHeader, ptr %540, i64 0, i32 3
  %542 = load i8, ptr %541, align 1, !tbaa !80
  %543 = and i8 %542, -17
  store i8 %543, ptr %541, align 1, !tbaa !80
  %544 = getelementptr inbounds %struct.BMLoop, ptr %538, i64 0, i32 1
  %545 = load ptr, ptr %544, align 8, !tbaa !60
  %546 = getelementptr inbounds %struct.BMHeader, ptr %545, i64 0, i32 3
  %547 = load i8, ptr %546, align 1, !tbaa !80
  %548 = and i8 %547, -17
  store i8 %548, ptr %546, align 1, !tbaa !80
  %549 = getelementptr inbounds %struct.BMLoop, ptr %538, i64 0, i32 6
  %550 = load ptr, ptr %549, align 8, !tbaa !52
  %551 = getelementptr inbounds %struct.BMLoop, ptr %550, i64 0, i32 1
  %552 = load ptr, ptr %551, align 8, !tbaa !60
  %553 = getelementptr inbounds %struct.BMHeader, ptr %552, i64 0, i32 3
  %554 = load i8, ptr %553, align 1, !tbaa !80
  %555 = and i8 %554, -17
  store i8 %555, ptr %553, align 1, !tbaa !80
  %556 = getelementptr inbounds %struct.BMLoop, ptr %550, i64 0, i32 6
  %557 = load ptr, ptr %556, align 8, !tbaa !52
  %558 = getelementptr inbounds %struct.BMLoop, ptr %557, i64 0, i32 1
  %559 = load ptr, ptr %558, align 8, !tbaa !60
  %560 = getelementptr inbounds %struct.BMHeader, ptr %559, i64 0, i32 3
  %561 = load i8, ptr %560, align 1, !tbaa !80
  %562 = and i8 %561, -17
  store i8 %562, ptr %560, align 1, !tbaa !80
  %563 = getelementptr inbounds %struct.BMLoop, ptr %538, i64 0, i32 4
  %564 = load ptr, ptr %563, align 8, !tbaa !64
  %565 = icmp eq ptr %538, %564
  br i1 %565, label %591, label %566

566:                                              ; preds = %536
  %567 = getelementptr inbounds %struct.BMLoop, ptr %564, i64 0, i32 3
  %568 = load ptr, ptr %567, align 8, !tbaa !76
  %569 = getelementptr inbounds %struct.BMHeader, ptr %568, i64 0, i32 3
  %570 = load i8, ptr %569, align 1, !tbaa !80
  %571 = and i8 %570, -17
  store i8 %571, ptr %569, align 1, !tbaa !80
  %572 = getelementptr inbounds %struct.BMLoop, ptr %564, i64 0, i32 1
  %573 = load ptr, ptr %572, align 8, !tbaa !60
  %574 = getelementptr inbounds %struct.BMHeader, ptr %573, i64 0, i32 3
  %575 = load i8, ptr %574, align 1, !tbaa !80
  %576 = and i8 %575, -17
  store i8 %576, ptr %574, align 1, !tbaa !80
  %577 = getelementptr inbounds %struct.BMLoop, ptr %564, i64 0, i32 6
  %578 = load ptr, ptr %577, align 8, !tbaa !52
  %579 = getelementptr inbounds %struct.BMLoop, ptr %578, i64 0, i32 1
  %580 = load ptr, ptr %579, align 8, !tbaa !60
  %581 = getelementptr inbounds %struct.BMHeader, ptr %580, i64 0, i32 3
  %582 = load i8, ptr %581, align 1, !tbaa !80
  %583 = and i8 %582, -17
  store i8 %583, ptr %581, align 1, !tbaa !80
  %584 = getelementptr inbounds %struct.BMLoop, ptr %578, i64 0, i32 6
  %585 = load ptr, ptr %584, align 8, !tbaa !52
  %586 = getelementptr inbounds %struct.BMLoop, ptr %585, i64 0, i32 1
  %587 = load ptr, ptr %586, align 8, !tbaa !60
  %588 = getelementptr inbounds %struct.BMHeader, ptr %587, i64 0, i32 3
  %589 = load i8, ptr %588, align 1, !tbaa !80
  %590 = and i8 %589, -17
  store i8 %590, ptr %588, align 1, !tbaa !80
  br label %591

591:                                              ; preds = %566, %536
  br label %592

592:                                              ; preds = %591, %632
  %593 = phi ptr [ %639, %632 ], [ %384, %591 ]
  %594 = getelementptr inbounds %struct.BMEdge, ptr %593, i64 0, i32 2
  %595 = load ptr, ptr %594, align 8, !tbaa !75
  %596 = getelementptr inbounds %struct.BMHeader, ptr %595, i64 0, i32 3
  %597 = load i8, ptr %596, align 1, !tbaa !80
  %598 = and i8 %597, 16
  %599 = icmp eq i8 %598, 0
  br i1 %599, label %600, label %629

600:                                              ; preds = %592
  %601 = getelementptr inbounds %struct.BMEdge, ptr %593, i64 0, i32 3
  %602 = load ptr, ptr %601, align 8, !tbaa !74
  %603 = getelementptr inbounds %struct.BMHeader, ptr %602, i64 0, i32 3
  %604 = load i8, ptr %603, align 1, !tbaa !80
  %605 = and i8 %604, 16
  %606 = icmp eq i8 %605, 0
  br i1 %606, label %607, label %629

607:                                              ; preds = %600
  %608 = getelementptr inbounds %struct.BMEdge, ptr %593, i64 0, i32 4
  %609 = load ptr, ptr %608, align 8, !tbaa !71
  %610 = icmp eq ptr %609, null
  br i1 %610, label %629, label %611

611:                                              ; preds = %607
  %612 = getelementptr inbounds %struct.BMLoop, ptr %609, i64 0, i32 3
  %613 = load ptr, ptr %612, align 8, !tbaa !76
  %614 = getelementptr inbounds %struct.BMHeader, ptr %613, i64 0, i32 3
  %615 = load i8, ptr %614, align 1, !tbaa !80
  %616 = and i8 %615, 16
  %617 = icmp eq i8 %616, 0
  br i1 %617, label %618, label %629

618:                                              ; preds = %611
  %619 = getelementptr inbounds %struct.BMLoop, ptr %609, i64 0, i32 4
  %620 = load ptr, ptr %619, align 8, !tbaa !64
  %621 = icmp eq ptr %609, %620
  br i1 %621, label %629, label %622

622:                                              ; preds = %618
  %623 = getelementptr inbounds %struct.BMLoop, ptr %620, i64 0, i32 3
  %624 = load ptr, ptr %623, align 8, !tbaa !76
  %625 = getelementptr inbounds %struct.BMHeader, ptr %624, i64 0, i32 3
  %626 = load i8, ptr %625, align 1, !tbaa !80
  %627 = lshr i8 %626, 4
  %628 = and i8 %627, 1
  br label %629

629:                                              ; preds = %622, %618, %611, %607, %600, %592
  %630 = phi i8 [ 1, %600 ], [ 1, %592 ], [ 0, %607 ], [ 1, %611 ], [ 0, %618 ], [ %628, %622 ]
  %631 = icmp eq i8 %630, 0
  br i1 %631, label %632, label %641

632:                                              ; preds = %629
  %633 = getelementptr inbounds %struct.BMEdge, ptr %593, i64 0, i32 5
  %634 = getelementptr inbounds %struct.BMEdge, ptr %593, i64 0, i32 3
  %635 = load ptr, ptr %634, align 8, !tbaa !74
  %636 = icmp eq ptr %635, %492
  %637 = zext i1 %636 to i64
  %638 = getelementptr inbounds %struct.BMDiskLink, ptr %633, i64 %637
  %639 = load ptr, ptr %638, align 8, !tbaa !81
  %640 = icmp eq ptr %639, %384
  br i1 %640, label %646, label %592, !llvm.loop !85

641:                                              ; preds = %413, %462, %629
  %642 = call ptr @BLI_heap_insert(ptr noundef %152, float noundef 0x47EFFFFFE0000000, ptr noundef %384) #5
  %643 = load i32, ptr %385, align 8, !tbaa !51
  %644 = sext i32 %643 to i64
  %645 = getelementptr inbounds ptr, ptr %157, i64 %644
  store ptr %642, ptr %645, align 8, !tbaa !63
  br label %1078

646:                                              ; preds = %632
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #5
  %647 = load ptr, ptr %389, align 8, !tbaa !75
  %648 = getelementptr inbounds %struct.BMHeader, ptr %647, i64 0, i32 1
  %649 = load i32, ptr %648, align 8, !tbaa !51
  %650 = sext i32 %649 to i64
  %651 = getelementptr inbounds %struct.Quadric, ptr %149, i64 %650
  %652 = load ptr, ptr %391, align 8, !tbaa !74
  %653 = getelementptr inbounds %struct.BMHeader, ptr %652, i64 0, i32 1
  %654 = load i32, ptr %653, align 8, !tbaa !51
  %655 = sext i32 %654 to i64
  %656 = getelementptr inbounds %struct.Quadric, ptr %149, i64 %655
  call void @BLI_quadric_add_qu_ququ(ptr noundef nonnull %5, ptr noundef %651, ptr noundef %656) #5
  %657 = call zeroext i8 @BLI_quadric_optimize(ptr noundef nonnull %5, ptr noundef nonnull %14, float noundef 0x3F847AE140000000) #5
  %658 = icmp eq i8 %657, 0
  br i1 %658, label %659, label %664

659:                                              ; preds = %646
  %660 = load ptr, ptr %389, align 8, !tbaa !75
  %661 = getelementptr inbounds %struct.BMVert, ptr %660, i64 0, i32 2
  %662 = load ptr, ptr %391, align 8, !tbaa !74
  %663 = getelementptr inbounds %struct.BMVert, ptr %662, i64 0, i32 2
  call void @mid_v3_v3v3(ptr noundef nonnull %14, ptr noundef nonnull %661, ptr noundef nonnull %663) #5
  br label %664

664:                                              ; preds = %646, %659
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #5
  br label %665

665:                                              ; preds = %664, %772
  %666 = phi i64 [ 0, %664 ], [ %773, %772 ]
  %667 = getelementptr inbounds ptr, ptr %389, i64 %666
  %668 = load ptr, ptr %667, align 8, !tbaa !63
  store i8 6, ptr %353, align 4, !tbaa !34
  store ptr @bmiter__loop_of_vert_begin, ptr %354, align 8, !tbaa !40
  store ptr @bmiter__loop_of_vert_step, ptr %355, align 8, !tbaa !41
  store ptr %668, ptr %12, align 8, !tbaa !47
  call void @bmiter__loop_of_vert_begin(ptr noundef nonnull %12) #5
  %669 = load ptr, ptr %355, align 8, !tbaa !41
  %670 = call ptr %669(ptr noundef nonnull %12) #5
  %671 = icmp eq ptr %670, null
  br i1 %671, label %772, label %672

672:                                              ; preds = %665
  %673 = getelementptr inbounds %struct.BMVert, ptr %668, i64 0, i32 2
  %674 = getelementptr inbounds %struct.BMVert, ptr %668, i64 0, i32 2, i64 1
  %675 = getelementptr inbounds %struct.BMVert, ptr %668, i64 0, i32 2, i64 2
  br label %676

676:                                              ; preds = %672, %768
  %677 = phi ptr [ %670, %672 ], [ %770, %768 ]
  %678 = getelementptr inbounds %struct.BMLoop, ptr %677, i64 0, i32 2
  %679 = load ptr, ptr %678, align 8, !tbaa !86
  %680 = icmp eq ptr %679, %384
  br i1 %680, label %768, label %681

681:                                              ; preds = %676
  %682 = getelementptr inbounds %struct.BMLoop, ptr %677, i64 0, i32 7
  %683 = load ptr, ptr %682, align 8, !tbaa !87
  %684 = getelementptr inbounds %struct.BMLoop, ptr %683, i64 0, i32 2
  %685 = load ptr, ptr %684, align 8, !tbaa !86
  %686 = icmp eq ptr %685, %384
  br i1 %686, label %768, label %687

687:                                              ; preds = %681
  %688 = getelementptr inbounds %struct.BMLoop, ptr %683, i64 0, i32 1
  %689 = load ptr, ptr %688, align 8, !tbaa !60
  %690 = getelementptr inbounds %struct.BMVert, ptr %689, i64 0, i32 2
  %691 = getelementptr inbounds %struct.BMLoop, ptr %677, i64 0, i32 6
  %692 = load ptr, ptr %691, align 8, !tbaa !52
  %693 = getelementptr inbounds %struct.BMLoop, ptr %692, i64 0, i32 1
  %694 = load ptr, ptr %693, align 8, !tbaa !60
  %695 = getelementptr inbounds %struct.BMVert, ptr %694, i64 0, i32 2
  %696 = load float, ptr %690, align 4, !tbaa !61
  %697 = load float, ptr %695, align 4, !tbaa !61
  %698 = fsub float %696, %697
  %699 = getelementptr inbounds %struct.BMVert, ptr %689, i64 0, i32 2, i64 1
  %700 = load float, ptr %699, align 4, !tbaa !61
  %701 = getelementptr inbounds %struct.BMVert, ptr %694, i64 0, i32 2, i64 1
  %702 = load float, ptr %701, align 4, !tbaa !61
  %703 = fsub float %700, %702
  %704 = getelementptr inbounds %struct.BMVert, ptr %689, i64 0, i32 2, i64 2
  %705 = load float, ptr %704, align 4, !tbaa !61
  %706 = getelementptr inbounds %struct.BMVert, ptr %694, i64 0, i32 2, i64 2
  %707 = load float, ptr %706, align 4, !tbaa !61
  %708 = fsub float %705, %707
  %709 = load float, ptr %673, align 4, !tbaa !61
  %710 = fsub float %696, %709
  %711 = load float, ptr %674, align 4, !tbaa !61
  %712 = fsub float %700, %711
  %713 = load float, ptr %675, align 4, !tbaa !61
  %714 = fsub float %705, %713
  %715 = load float, ptr %14, align 4, !tbaa !61
  %716 = fsub float %696, %715
  %717 = load float, ptr %356, align 4, !tbaa !61
  %718 = fsub float %700, %717
  %719 = load float, ptr %357, align 4, !tbaa !61
  %720 = fsub float %705, %719
  %721 = fneg float %708
  %722 = fmul float %712, %721
  %723 = call float @llvm.fmuladd.f32(float %703, float %714, float %722)
  %724 = fneg float %698
  %725 = fmul float %714, %724
  %726 = call float @llvm.fmuladd.f32(float %708, float %710, float %725)
  %727 = fneg float %703
  %728 = fmul float %710, %727
  %729 = call float @llvm.fmuladd.f32(float %698, float %712, float %728)
  %730 = fmul float %718, %721
  %731 = call float @llvm.fmuladd.f32(float %703, float %720, float %730)
  %732 = fmul float %720, %724
  %733 = call float @llvm.fmuladd.f32(float %708, float %716, float %732)
  %734 = fmul float %716, %727
  %735 = call float @llvm.fmuladd.f32(float %698, float %718, float %734)
  %736 = fmul float %726, %726
  %737 = call float @llvm.fmuladd.f32(float %723, float %723, float %736)
  %738 = call float @llvm.fmuladd.f32(float %729, float %729, float %737)
  %739 = fcmp ogt float %738, 0x38AA95A5C0000000
  br i1 %739, label %740, label %746

740:                                              ; preds = %687
  %741 = call float @sqrtf(float noundef %738) #5
  %742 = fdiv float 1.000000e+00, %741
  %743 = fmul float %723, %742
  %744 = fmul float %726, %742
  %745 = fmul float %729, %742
  br label %746

746:                                              ; preds = %740, %687
  %747 = phi float [ %743, %740 ], [ 0.000000e+00, %687 ]
  %748 = phi float [ %744, %740 ], [ 0.000000e+00, %687 ]
  %749 = phi float [ %745, %740 ], [ 0.000000e+00, %687 ]
  %750 = fmul float %733, %733
  %751 = call float @llvm.fmuladd.f32(float %731, float %731, float %750)
  %752 = call float @llvm.fmuladd.f32(float %735, float %735, float %751)
  %753 = fcmp ogt float %752, 0x38AA95A5C0000000
  br i1 %753, label %754, label %760

754:                                              ; preds = %746
  %755 = call float @sqrtf(float noundef %752) #5
  %756 = fdiv float 1.000000e+00, %755
  %757 = fmul float %731, %756
  %758 = fmul float %733, %756
  %759 = fmul float %735, %756
  br label %760

760:                                              ; preds = %754, %746
  %761 = phi float [ %757, %754 ], [ 0.000000e+00, %746 ]
  %762 = phi float [ %758, %754 ], [ 0.000000e+00, %746 ]
  %763 = phi float [ %759, %754 ], [ 0.000000e+00, %746 ]
  %764 = fmul float %748, %762
  %765 = call float @llvm.fmuladd.f32(float %747, float %761, float %764)
  %766 = call float @llvm.fmuladd.f32(float %749, float %763, float %765)
  %767 = fcmp ugt float %766, 0x3E80000000000000
  br i1 %767, label %768, label %775

768:                                              ; preds = %760, %681, %676
  %769 = load ptr, ptr %355, align 8, !tbaa !41
  %770 = call ptr %769(ptr noundef nonnull %12) #5
  %771 = icmp eq ptr %770, null
  br i1 %771, label %772, label %676, !llvm.loop !88

772:                                              ; preds = %768, %665
  %773 = add nuw nsw i64 %666, 1
  %774 = icmp eq i64 %666, 0
  br i1 %774, label %665, label %780, !llvm.loop !89

775:                                              ; preds = %760
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #5
  %776 = call ptr @BLI_heap_insert(ptr noundef %152, float noundef 0x47EFFFFFE0000000, ptr noundef %384) #5
  %777 = load i32, ptr %385, align 8, !tbaa !51
  %778 = sext i32 %777 to i64
  %779 = getelementptr inbounds ptr, ptr %157, i64 %778
  store ptr %776, ptr %779, align 8, !tbaa !63
  br label %1078

780:                                              ; preds = %772
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #5
  %781 = load ptr, ptr %389, align 8, !tbaa !75
  %782 = getelementptr inbounds %struct.BMVert, ptr %781, i64 0, i32 2
  %783 = load ptr, ptr %391, align 8, !tbaa !74
  %784 = getelementptr inbounds %struct.BMVert, ptr %783, i64 0, i32 2
  %785 = load float, ptr %782, align 4, !tbaa !61
  %786 = load float, ptr %784, align 4, !tbaa !61
  %787 = fsub float %785, %786
  %788 = call float @llvm.fabs.f32(float %787)
  %789 = fcmp ugt float %788, 0x3E80000000000000
  br i1 %789, label %806, label %790

790:                                              ; preds = %780
  %791 = getelementptr inbounds %struct.BMVert, ptr %781, i64 0, i32 2, i64 1
  %792 = load float, ptr %791, align 4, !tbaa !61
  %793 = getelementptr inbounds %struct.BMVert, ptr %783, i64 0, i32 2, i64 1
  %794 = load float, ptr %793, align 4, !tbaa !61
  %795 = fsub float %792, %794
  %796 = call float @llvm.fabs.f32(float %795)
  %797 = fcmp ugt float %796, 0x3E80000000000000
  br i1 %797, label %806, label %798

798:                                              ; preds = %790
  %799 = getelementptr inbounds %struct.BMVert, ptr %781, i64 0, i32 2, i64 2
  %800 = load float, ptr %799, align 4, !tbaa !61
  %801 = getelementptr inbounds %struct.BMVert, ptr %783, i64 0, i32 2, i64 2
  %802 = load float, ptr %801, align 4, !tbaa !61
  %803 = fsub float %800, %802
  %804 = call float @llvm.fabs.f32(float %803)
  %805 = fcmp ugt float %804, 0x3E80000000000000
  br i1 %805, label %806, label %808

806:                                              ; preds = %798, %790, %780
  %807 = call float @line_point_factor_v3(ptr noundef nonnull %14, ptr noundef nonnull %782, ptr noundef nonnull %784) #5
  br label %808

808:                                              ; preds = %798, %806
  %809 = phi float [ %807, %806 ], [ 5.000000e-01, %798 ]
  %810 = load ptr, ptr %391, align 8, !tbaa !74
  %811 = load ptr, ptr %389, align 8, !tbaa !75
  %812 = load ptr, ptr %537, align 8, !tbaa !71
  %813 = icmp eq ptr %812, null
  br i1 %813, label %1073, label %814

814:                                              ; preds = %808
  %815 = getelementptr inbounds %struct.BMLoop, ptr %812, i64 0, i32 4
  %816 = load ptr, ptr %815, align 8, !tbaa !64
  %817 = icmp eq ptr %816, %812
  br i1 %817, label %910, label %818

818:                                              ; preds = %814
  %819 = getelementptr inbounds %struct.BMLoop, ptr %816, i64 0, i32 4
  %820 = load ptr, ptr %819, align 8, !tbaa !64
  %821 = icmp eq ptr %820, %812
  br i1 %821, label %822, label %910

822:                                              ; preds = %818
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #5
  %823 = call zeroext i8 @BM_edge_loop_pair(ptr noundef %384, ptr noundef nonnull %10, ptr noundef nonnull %11) #5
  %824 = load ptr, ptr %10, align 8
  %825 = getelementptr inbounds %struct.BMLoop, ptr %824, i64 0, i32 7
  %826 = load ptr, ptr %825, align 8, !tbaa !87
  %827 = getelementptr inbounds %struct.BMLoop, ptr %826, i64 0, i32 2
  %828 = load ptr, ptr %827, align 8, !tbaa !86
  %829 = getelementptr inbounds %struct.BMEdge, ptr %828, i64 0, i32 2
  %830 = load ptr, ptr %829, align 8, !tbaa !75
  %831 = icmp eq ptr %830, %810
  br i1 %831, label %836, label %832

832:                                              ; preds = %822
  %833 = getelementptr inbounds %struct.BMEdge, ptr %828, i64 0, i32 3
  %834 = load ptr, ptr %833, align 8, !tbaa !74
  %835 = icmp ne ptr %834, %810
  br label %836

836:                                              ; preds = %832, %822
  %837 = phi i1 [ false, %822 ], [ %835, %832 ]
  %838 = getelementptr inbounds %struct.BMLoop, ptr %824, i64 0, i32 6
  %839 = select i1 %837, ptr %838, ptr %825
  %840 = select i1 %837, ptr %825, ptr %838
  %841 = load ptr, ptr %840, align 8, !tbaa !63
  %842 = getelementptr inbounds %struct.BMLoop, ptr %841, i64 0, i32 2
  %843 = load ptr, ptr %842, align 8, !tbaa !86
  %844 = load ptr, ptr %839, align 8, !tbaa !63
  %845 = getelementptr inbounds %struct.BMLoop, ptr %844, i64 0, i32 2
  %846 = load ptr, ptr %845, align 8, !tbaa !86
  %847 = load ptr, ptr %11, align 8
  %848 = getelementptr inbounds %struct.BMLoop, ptr %847, i64 0, i32 7
  %849 = load ptr, ptr %848, align 8, !tbaa !87
  %850 = getelementptr inbounds %struct.BMLoop, ptr %849, i64 0, i32 2
  %851 = load ptr, ptr %850, align 8, !tbaa !86
  %852 = getelementptr inbounds %struct.BMEdge, ptr %851, i64 0, i32 2
  %853 = load ptr, ptr %852, align 8, !tbaa !75
  %854 = icmp eq ptr %853, %810
  br i1 %854, label %859, label %855

855:                                              ; preds = %836
  %856 = getelementptr inbounds %struct.BMEdge, ptr %851, i64 0, i32 3
  %857 = load ptr, ptr %856, align 8, !tbaa !74
  %858 = icmp ne ptr %857, %810
  br label %859

859:                                              ; preds = %855, %836
  %860 = phi i1 [ false, %836 ], [ %858, %855 ]
  %861 = getelementptr inbounds %struct.BMLoop, ptr %847, i64 0, i32 6
  %862 = select i1 %860, ptr %848, ptr %861
  %863 = select i1 %860, ptr %861, ptr %848
  %864 = load ptr, ptr %863, align 8, !tbaa !63
  %865 = getelementptr inbounds %struct.BMLoop, ptr %864, i64 0, i32 2
  %866 = load ptr, ptr %865, align 8, !tbaa !86
  %867 = load ptr, ptr %862, align 8, !tbaa !63
  %868 = getelementptr inbounds %struct.BMLoop, ptr %867, i64 0, i32 2
  %869 = load ptr, ptr %868, align 8, !tbaa !86
  %870 = icmp eq ptr %846, %866
  %871 = icmp eq ptr %846, %869
  %872 = select i1 %870, i1 true, i1 %871
  %873 = icmp eq ptr %843, %866
  %874 = select i1 %872, i1 true, i1 %873
  %875 = icmp eq ptr %843, %869
  %876 = select i1 %874, i1 true, i1 %875
  br i1 %876, label %1072, label %877

877:                                              ; preds = %859
  %878 = getelementptr inbounds %struct.BMHeader, ptr %846, i64 0, i32 1
  %879 = load i32, ptr %878, align 8, !tbaa !51
  store i32 %879, ptr %13, align 4, !tbaa !90
  %880 = getelementptr inbounds %struct.BMHeader, ptr %866, i64 0, i32 1
  %881 = load i32, ptr %880, align 8, !tbaa !51
  store i32 %881, ptr %358, align 4, !tbaa !90
  br i1 %360, label %883, label %882

882:                                              ; preds = %877
  call void @BM_data_interp_from_verts(ptr noundef %0, ptr noundef %811, ptr noundef %810, ptr noundef %811, float noundef %809) #5
  br label %883

883:                                              ; preds = %882, %877
  br i1 %362, label %885, label %884

884:                                              ; preds = %883
  call void @BM_data_interp_from_edges(ptr noundef %0, ptr noundef %843, ptr noundef %846, ptr noundef %843, float noundef %809) #5
  call void @BM_data_interp_from_edges(ptr noundef %0, ptr noundef %869, ptr noundef %866, ptr noundef %869, float noundef %809) #5
  br label %885

885:                                              ; preds = %884, %883
  br i1 %363, label %891, label %886

886:                                              ; preds = %885
  %887 = load ptr, ptr %537, align 8, !tbaa !71
  call fastcc void @bm_edge_collapse_loop_customdata(ptr noundef %0, ptr noundef %887, ptr noundef %810, float noundef %809)
  %888 = load ptr, ptr %537, align 8, !tbaa !71
  %889 = getelementptr inbounds %struct.BMLoop, ptr %888, i64 0, i32 4
  %890 = load ptr, ptr %889, align 8, !tbaa !64
  call fastcc void @bm_edge_collapse_loop_customdata(ptr noundef %0, ptr noundef %890, ptr noundef %810, float noundef %809)
  br label %891

891:                                              ; preds = %886, %885
  call void @BM_edge_kill(ptr noundef %0, ptr noundef %384) #5
  %892 = getelementptr inbounds %struct.BMHeader, ptr %810, i64 0, i32 3
  %893 = load i8, ptr %892, align 1, !tbaa !91
  %894 = getelementptr inbounds %struct.BMHeader, ptr %811, i64 0, i32 3
  %895 = load i8, ptr %894, align 1, !tbaa !91
  %896 = or i8 %895, %893
  store i8 %896, ptr %894, align 1, !tbaa !91
  %897 = call zeroext i8 @BM_vert_splice(ptr noundef %0, ptr noundef %810, ptr noundef %811) #5
  %898 = getelementptr inbounds %struct.BMHeader, ptr %846, i64 0, i32 3
  %899 = load i8, ptr %898, align 1, !tbaa !93
  %900 = getelementptr inbounds %struct.BMHeader, ptr %843, i64 0, i32 3
  %901 = load i8, ptr %900, align 1, !tbaa !93
  %902 = or i8 %901, %899
  store i8 %902, ptr %900, align 1, !tbaa !93
  %903 = getelementptr inbounds %struct.BMHeader, ptr %866, i64 0, i32 3
  %904 = load i8, ptr %903, align 1, !tbaa !93
  %905 = getelementptr inbounds %struct.BMHeader, ptr %869, i64 0, i32 3
  %906 = load i8, ptr %905, align 1, !tbaa !93
  %907 = or i8 %906, %904
  store i8 %907, ptr %905, align 1, !tbaa !93
  %908 = call zeroext i8 @BM_edge_splice(ptr noundef %0, ptr noundef %846, ptr noundef %843) #5
  %909 = call zeroext i8 @BM_edge_splice(ptr noundef %0, ptr noundef %866, ptr noundef %869) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #5
  br label %959

910:                                              ; preds = %818, %814
  br i1 %813, label %1073, label %911

911:                                              ; preds = %910
  %912 = getelementptr inbounds %struct.BMLoop, ptr %812, i64 0, i32 4
  %913 = load ptr, ptr %912, align 8, !tbaa !64
  %914 = icmp eq ptr %913, %812
  br i1 %914, label %915, label %1073

915:                                              ; preds = %911
  %916 = getelementptr inbounds %struct.BMLoop, ptr %812, i64 0, i32 7
  %917 = load ptr, ptr %916, align 8, !tbaa !87
  %918 = getelementptr inbounds %struct.BMLoop, ptr %917, i64 0, i32 2
  %919 = load ptr, ptr %918, align 8, !tbaa !86
  %920 = getelementptr inbounds %struct.BMEdge, ptr %919, i64 0, i32 2
  %921 = load ptr, ptr %920, align 8, !tbaa !75
  %922 = icmp eq ptr %921, %810
  br i1 %922, label %927, label %923

923:                                              ; preds = %915
  %924 = getelementptr inbounds %struct.BMEdge, ptr %919, i64 0, i32 3
  %925 = load ptr, ptr %924, align 8, !tbaa !74
  %926 = icmp ne ptr %925, %810
  br label %927

927:                                              ; preds = %923, %915
  %928 = phi i1 [ false, %915 ], [ %926, %923 ]
  %929 = getelementptr inbounds %struct.BMLoop, ptr %812, i64 0, i32 6
  %930 = select i1 %928, ptr %916, ptr %929
  %931 = select i1 %928, ptr %929, ptr %916
  %932 = load ptr, ptr %931, align 8, !tbaa !63
  %933 = getelementptr inbounds %struct.BMLoop, ptr %932, i64 0, i32 2
  %934 = load ptr, ptr %933, align 8, !tbaa !86
  %935 = load ptr, ptr %930, align 8, !tbaa !63
  %936 = getelementptr inbounds %struct.BMLoop, ptr %935, i64 0, i32 2
  %937 = load ptr, ptr %936, align 8, !tbaa !86
  %938 = getelementptr inbounds %struct.BMHeader, ptr %934, i64 0, i32 1
  %939 = load i32, ptr %938, align 8, !tbaa !51
  store i32 %939, ptr %13, align 4, !tbaa !90
  store i32 -1, ptr %364, align 4, !tbaa !90
  br i1 %366, label %941, label %940

940:                                              ; preds = %927
  call void @BM_data_interp_from_verts(ptr noundef %0, ptr noundef %811, ptr noundef %810, ptr noundef %811, float noundef %809) #5
  br label %941

941:                                              ; preds = %940, %927
  br i1 %368, label %943, label %942

942:                                              ; preds = %941
  call void @BM_data_interp_from_edges(ptr noundef %0, ptr noundef %937, ptr noundef %934, ptr noundef %937, float noundef %809) #5
  br label %943

943:                                              ; preds = %942, %941
  br i1 %369, label %946, label %944

944:                                              ; preds = %943
  %945 = load ptr, ptr %537, align 8, !tbaa !71
  call fastcc void @bm_edge_collapse_loop_customdata(ptr noundef %0, ptr noundef %945, ptr noundef %810, float noundef %809)
  br label %946

946:                                              ; preds = %944, %943
  call void @BM_edge_kill(ptr noundef %0, ptr noundef %384) #5
  %947 = getelementptr inbounds %struct.BMHeader, ptr %810, i64 0, i32 3
  %948 = load i8, ptr %947, align 1, !tbaa !91
  %949 = getelementptr inbounds %struct.BMHeader, ptr %811, i64 0, i32 3
  %950 = load i8, ptr %949, align 1, !tbaa !91
  %951 = or i8 %950, %948
  store i8 %951, ptr %949, align 1, !tbaa !91
  %952 = call zeroext i8 @BM_vert_splice(ptr noundef %0, ptr noundef %810, ptr noundef %811) #5
  %953 = getelementptr inbounds %struct.BMHeader, ptr %934, i64 0, i32 3
  %954 = load i8, ptr %953, align 1, !tbaa !93
  %955 = getelementptr inbounds %struct.BMHeader, ptr %937, i64 0, i32 3
  %956 = load i8, ptr %955, align 1, !tbaa !93
  %957 = or i8 %956, %954
  store i8 %957, ptr %955, align 1, !tbaa !93
  %958 = call zeroext i8 @BM_edge_splice(ptr noundef %0, ptr noundef %934, ptr noundef %937) #5
  br label %959

959:                                              ; preds = %891, %946
  br i1 %370, label %970, label %960

960:                                              ; preds = %959
  %961 = sext i32 %394 to i64
  %962 = getelementptr inbounds float, ptr %2, i64 %961
  %963 = load float, ptr %962, align 4, !tbaa !61
  %964 = getelementptr inbounds %struct.BMHeader, ptr %390, i64 0, i32 1
  %965 = load i32, ptr %964, align 8, !tbaa !51
  %966 = sext i32 %965 to i64
  %967 = getelementptr inbounds float, ptr %2, i64 %966
  %968 = load float, ptr %967, align 4, !tbaa !61
  %969 = fadd float %963, %968
  store float %969, ptr %967, align 4, !tbaa !61
  br label %970

970:                                              ; preds = %960, %959
  %971 = getelementptr inbounds %struct.BMVert, ptr %390, i64 0, i32 2
  %972 = load float, ptr %14, align 4, !tbaa !61
  store float %972, ptr %971, align 4, !tbaa !61
  %973 = load float, ptr %371, align 4, !tbaa !61
  %974 = getelementptr inbounds %struct.BMVert, ptr %390, i64 0, i32 2, i64 1
  store float %973, ptr %974, align 4, !tbaa !61
  %975 = load float, ptr %372, align 4, !tbaa !61
  %976 = getelementptr inbounds %struct.BMVert, ptr %390, i64 0, i32 2, i64 2
  store float %975, ptr %976, align 4, !tbaa !61
  br label %977

977:                                              ; preds = %970, %988
  %978 = phi i64 [ 0, %970 ], [ %989, %988 ]
  %979 = getelementptr inbounds [2 x i32], ptr %13, i64 0, i64 %978
  %980 = load i32, ptr %979, align 4, !tbaa !90
  %981 = icmp eq i32 %980, -1
  br i1 %981, label %988, label %982

982:                                              ; preds = %977
  %983 = sext i32 %980 to i64
  %984 = getelementptr inbounds ptr, ptr %157, i64 %983
  %985 = load ptr, ptr %984, align 8, !tbaa !63
  %986 = icmp eq ptr %985, null
  br i1 %986, label %988, label %987

987:                                              ; preds = %982
  call void @BLI_heap_remove(ptr noundef %152, ptr noundef nonnull %985) #5
  store ptr null, ptr %984, align 8, !tbaa !63
  br label %988

988:                                              ; preds = %987, %982, %977
  %989 = add nuw nsw i64 %978, 1
  %990 = icmp eq i64 %978, 0
  br i1 %990, label %977, label %991, !llvm.loop !94

991:                                              ; preds = %988
  %992 = getelementptr inbounds %struct.BMHeader, ptr %390, i64 0, i32 1
  %993 = load i32, ptr %992, align 8, !tbaa !51
  %994 = sext i32 %993 to i64
  %995 = getelementptr inbounds %struct.Quadric, ptr %149, i64 %994
  %996 = sext i32 %394 to i64
  %997 = getelementptr inbounds %struct.Quadric, ptr %149, i64 %996
  call void @BLI_quadric_add_qu_qu(ptr noundef %995, ptr noundef %997) #5
  %998 = getelementptr inbounds %struct.BMVert, ptr %390, i64 0, i32 3
  call void @interp_v3_v3v3(ptr noundef nonnull %998, ptr noundef nonnull %998, ptr noundef nonnull %15, float noundef %809) #5
  %999 = load float, ptr %998, align 4, !tbaa !61
  %1000 = getelementptr inbounds %struct.BMVert, ptr %390, i64 0, i32 3, i64 1
  %1001 = load float, ptr %1000, align 4, !tbaa !61
  %1002 = fmul float %1001, %1001
  %1003 = call float @llvm.fmuladd.f32(float %999, float %999, float %1002)
  %1004 = getelementptr inbounds %struct.BMVert, ptr %390, i64 0, i32 3, i64 2
  %1005 = load float, ptr %1004, align 4, !tbaa !61
  %1006 = call float @llvm.fmuladd.f32(float %1005, float %1005, float %1003)
  %1007 = fcmp ogt float %1006, 0x38AA95A5C0000000
  br i1 %1007, label %1008, label %1017

1008:                                             ; preds = %991
  %1009 = call float @sqrtf(float noundef %1006) #5
  %1010 = fdiv float 1.000000e+00, %1009
  %1011 = load float, ptr %998, align 4, !tbaa !61
  %1012 = fmul float %1011, %1010
  store float %1012, ptr %998, align 4, !tbaa !61
  %1013 = load float, ptr %1000, align 4, !tbaa !61
  %1014 = fmul float %1010, %1013
  store float %1014, ptr %1000, align 4, !tbaa !61
  %1015 = load float, ptr %1004, align 4, !tbaa !61
  %1016 = fmul float %1010, %1015
  br label %1018

1017:                                             ; preds = %991
  store float 0.000000e+00, ptr %998, align 4, !tbaa !61
  store float 0.000000e+00, ptr %1000, align 4, !tbaa !61
  br label %1018

1018:                                             ; preds = %1017, %1008
  %1019 = phi float [ 0.000000e+00, %1017 ], [ %1016, %1008 ]
  store float %1019, ptr %1004, align 4, !tbaa !61
  %1020 = getelementptr inbounds %struct.BMVert, ptr %390, i64 0, i32 4
  %1021 = load ptr, ptr %1020, align 8, !tbaa !95
  %1022 = icmp eq ptr %1021, null
  br i1 %1022, label %1033, label %1023

1023:                                             ; preds = %1018, %1023
  %1024 = phi ptr [ %1031, %1023 ], [ %1021, %1018 ]
  call fastcc void @bm_decim_build_edge_cost_single(ptr noundef %1024, ptr noundef %149, ptr noundef %2, ptr noundef %152, ptr noundef %157)
  %1025 = getelementptr inbounds %struct.BMEdge, ptr %1024, i64 0, i32 5
  %1026 = getelementptr inbounds %struct.BMEdge, ptr %1024, i64 0, i32 3
  %1027 = load ptr, ptr %1026, align 8, !tbaa !74
  %1028 = icmp eq ptr %1027, %390
  %1029 = zext i1 %1028 to i64
  %1030 = getelementptr inbounds %struct.BMDiskLink, ptr %1025, i64 %1029
  %1031 = load ptr, ptr %1030, align 8, !tbaa !81
  %1032 = icmp eq ptr %1031, %1021
  br i1 %1032, label %1033, label %1023, !llvm.loop !96

1033:                                             ; preds = %1023, %1018
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %16) #5
  store i8 6, ptr %373, align 4, !tbaa !34
  store ptr @bmiter__loop_of_vert_begin, ptr %374, align 8, !tbaa !40
  store ptr @bmiter__loop_of_vert_step, ptr %375, align 8, !tbaa !41
  store ptr %390, ptr %16, align 8, !tbaa !47
  call void @bmiter__loop_of_vert_begin(ptr noundef nonnull %16) #5
  %1034 = load ptr, ptr %375, align 8, !tbaa !41
  %1035 = call ptr %1034(ptr noundef nonnull %16) #5
  %1036 = icmp eq ptr %1035, null
  br i1 %1036, label %1071, label %1037

1037:                                             ; preds = %1033, %1067
  %1038 = phi ptr [ %1069, %1067 ], [ %1035, %1033 ]
  %1039 = getelementptr inbounds %struct.BMLoop, ptr %1038, i64 0, i32 3
  %1040 = load ptr, ptr %1039, align 8, !tbaa !76
  %1041 = getelementptr inbounds %struct.BMFace, ptr %1040, i64 0, i32 3
  %1042 = load i32, ptr %1041, align 8, !tbaa !59
  %1043 = icmp eq i32 %1042, 3
  br i1 %1043, label %1044, label %1067

1044:                                             ; preds = %1037
  %1045 = getelementptr inbounds %struct.BMLoop, ptr %1038, i64 0, i32 7
  %1046 = load ptr, ptr %1045, align 8, !tbaa !87
  %1047 = getelementptr inbounds %struct.BMLoop, ptr %1046, i64 0, i32 2
  %1048 = load ptr, ptr %1047, align 8, !tbaa !86
  %1049 = getelementptr inbounds %struct.BMLoop, ptr %1038, i64 0, i32 1
  %1050 = load ptr, ptr %1049, align 8, !tbaa !60
  %1051 = getelementptr inbounds %struct.BMEdge, ptr %1048, i64 0, i32 2
  %1052 = load ptr, ptr %1051, align 8, !tbaa !75
  %1053 = icmp eq ptr %1052, %1050
  br i1 %1053, label %1059, label %1054

1054:                                             ; preds = %1044
  %1055 = getelementptr inbounds %struct.BMEdge, ptr %1048, i64 0, i32 3
  %1056 = load ptr, ptr %1055, align 8, !tbaa !74
  %1057 = icmp eq ptr %1056, %1050
  %1058 = zext i1 %1057 to i8
  br label %1059

1059:                                             ; preds = %1054, %1044
  %1060 = phi i8 [ 1, %1044 ], [ %1058, %1054 ]
  %1061 = icmp eq i8 %1060, 0
  %1062 = getelementptr inbounds %struct.BMLoop, ptr %1038, i64 0, i32 6
  %1063 = select i1 %1061, ptr %1045, ptr %1062
  %1064 = load ptr, ptr %1063, align 8, !tbaa !63
  %1065 = getelementptr inbounds %struct.BMLoop, ptr %1064, i64 0, i32 2
  %1066 = load ptr, ptr %1065, align 8, !tbaa !86
  call fastcc void @bm_decim_build_edge_cost_single(ptr noundef %1066, ptr noundef %149, ptr noundef %2, ptr noundef %152, ptr noundef %157)
  br label %1067

1067:                                             ; preds = %1059, %1037
  %1068 = load ptr, ptr %375, align 8, !tbaa !41
  %1069 = call ptr %1068(ptr noundef nonnull %16) #5
  %1070 = icmp eq ptr %1069, null
  br i1 %1070, label %1071, label %1037, !llvm.loop !97

1071:                                             ; preds = %1067, %1033
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %16) #5
  br label %1078

1072:                                             ; preds = %859
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #5
  br label %1073

1073:                                             ; preds = %808, %1072, %911, %910
  %1074 = call ptr @BLI_heap_insert(ptr noundef %152, float noundef 0x47EFFFFFE0000000, ptr noundef %384) #5
  %1075 = load i32, ptr %385, align 8, !tbaa !51
  %1076 = sext i32 %1075 to i64
  %1077 = getelementptr inbounds ptr, ptr %157, i64 %1076
  store ptr %1074, ptr %1077, align 8, !tbaa !63
  br label %1078

1078:                                             ; preds = %641, %775, %1071, %1073
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #5
  %1079 = load i32, ptr %327, align 4, !tbaa !79
  %1080 = icmp sgt i32 %1079, %331
  br i1 %1080, label %376, label %1081, !llvm.loop !98

1081:                                             ; preds = %379, %1078, %376, %326
  %1082 = icmp eq i8 %3, 0
  %1083 = icmp ne i8 %141, 0
  %1084 = and i1 %1082, %1083
  br i1 %1084, label %1085, label %1184

1085:                                             ; preds = %1081
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #5
  %1086 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  store i8 2, ptr %1086, align 4, !tbaa !34
  %1087 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %1087, align 8, !tbaa !40
  %1088 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %1088, align 8, !tbaa !41
  %1089 = load ptr, ptr %204, align 8, !tbaa !70
  store ptr %1089, ptr %6, align 8, !tbaa !47
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %6) #5
  %1090 = load ptr, ptr %1088, align 8, !tbaa !41
  %1091 = call ptr %1090(ptr noundef nonnull %6) #5
  %1092 = getelementptr inbounds ptr, ptr %9, i64 1
  br label %1093

1093:                                             ; preds = %1182, %1085
  %1094 = phi ptr [ undef, %1085 ], [ %1101, %1182 ]
  %1095 = phi ptr [ %1091, %1085 ], [ %1101, %1182 ]
  %1096 = icmp eq ptr %1095, null
  br i1 %1096, label %1100, label %1097

1097:                                             ; preds = %1093
  %1098 = load ptr, ptr %1088, align 8, !tbaa !41
  %1099 = call ptr %1098(ptr noundef nonnull %6) #5
  br label %1100

1100:                                             ; preds = %1097, %1093
  %1101 = phi ptr [ %1099, %1097 ], [ %1094, %1093 ]
  br i1 %1096, label %1183, label %1102

1102:                                             ; preds = %1100
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #5
  %1103 = call zeroext i8 @BM_edge_loop_pair(ptr noundef nonnull %1095, ptr noundef nonnull %7, ptr noundef nonnull %8) #5
  %1104 = icmp eq i8 %1103, 0
  br i1 %1104, label %1182, label %1105

1105:                                             ; preds = %1102
  %1106 = load ptr, ptr %7, align 8
  %1107 = getelementptr inbounds %struct.BMHeader, ptr %1106, i64 0, i32 1
  %1108 = load i32, ptr %1107, align 8, !tbaa !51
  %1109 = icmp eq i32 %1108, -1
  br i1 %1109, label %1182, label %1110

1110:                                             ; preds = %1105
  %1111 = load ptr, ptr %8, align 8
  %1112 = getelementptr inbounds %struct.BMHeader, ptr %1111, i64 0, i32 1
  %1113 = load i32, ptr %1112, align 8, !tbaa !51
  %1114 = icmp eq i32 %1108, %1113
  br i1 %1114, label %1115, label %1182

1115:                                             ; preds = %1110
  %1116 = getelementptr inbounds %struct.BMLoop, ptr %1106, i64 0, i32 3
  %1117 = load ptr, ptr %1116, align 8, !tbaa !76
  %1118 = getelementptr inbounds %struct.BMFace, ptr %1117, i64 0, i32 3
  %1119 = load i32, ptr %1118, align 8, !tbaa !59
  %1120 = icmp eq i32 %1119, 3
  br i1 %1120, label %1121, label %1182

1121:                                             ; preds = %1115
  %1122 = getelementptr inbounds %struct.BMLoop, ptr %1111, i64 0, i32 3
  %1123 = load ptr, ptr %1122, align 8, !tbaa !76
  %1124 = getelementptr inbounds %struct.BMFace, ptr %1123, i64 0, i32 3
  %1125 = load i32, ptr %1124, align 8, !tbaa !59
  %1126 = icmp eq i32 %1125, 3
  br i1 %1126, label %1127, label %1182

1127:                                             ; preds = %1121
  %1128 = getelementptr inbounds %struct.BMLoop, ptr %1106, i64 0, i32 1
  %1129 = load ptr, ptr %1128, align 8, !tbaa !60
  %1130 = getelementptr inbounds %struct.BMLoop, ptr %1111, i64 0, i32 1
  %1131 = load ptr, ptr %1130, align 8, !tbaa !60
  %1132 = icmp eq ptr %1129, %1131
  br i1 %1132, label %1182, label %1133

1133:                                             ; preds = %1127
  %1134 = getelementptr inbounds %struct.BMEdge, ptr %1095, i64 0, i32 2
  %1135 = load ptr, ptr %1134, align 8, !tbaa !75
  %1136 = getelementptr inbounds %struct.BMLoop, ptr %1106, i64 0, i32 6
  %1137 = load ptr, ptr %1136, align 8, !tbaa !52
  %1138 = getelementptr inbounds %struct.BMLoop, ptr %1137, i64 0, i32 1
  %1139 = load ptr, ptr %1138, align 8, !tbaa !60
  %1140 = icmp eq ptr %1135, %1139
  br i1 %1140, label %1146, label %1141

1141:                                             ; preds = %1133
  %1142 = getelementptr inbounds %struct.BMEdge, ptr %1095, i64 0, i32 3
  %1143 = load ptr, ptr %1142, align 8, !tbaa !74
  %1144 = icmp eq ptr %1143, %1139
  %1145 = zext i1 %1144 to i8
  br label %1146

1146:                                             ; preds = %1141, %1133
  %1147 = phi i8 [ 1, %1133 ], [ %1145, %1141 ]
  %1148 = icmp eq i8 %1147, 0
  %1149 = getelementptr inbounds %struct.BMLoop, ptr %1106, i64 0, i32 7
  %1150 = select i1 %1148, ptr %1136, ptr %1149
  %1151 = load ptr, ptr %1150, align 8, !tbaa !63
  %1152 = getelementptr inbounds %struct.BMLoop, ptr %1151, i64 0, i32 1
  %1153 = load ptr, ptr %1152, align 8, !tbaa !60
  %1154 = getelementptr inbounds %struct.BMEdge, ptr %1095, i64 0, i32 3
  %1155 = load ptr, ptr %1154, align 8, !tbaa !74
  %1156 = getelementptr inbounds %struct.BMLoop, ptr %1111, i64 0, i32 6
  %1157 = load ptr, ptr %1156, align 8, !tbaa !52
  %1158 = getelementptr inbounds %struct.BMLoop, ptr %1157, i64 0, i32 1
  %1159 = load ptr, ptr %1158, align 8, !tbaa !60
  %1160 = icmp ne ptr %1135, %1159
  %1161 = icmp ne ptr %1155, %1159
  %1162 = and i1 %1160, %1161
  %1163 = getelementptr inbounds %struct.BMLoop, ptr %1111, i64 0, i32 7
  %1164 = select i1 %1162, ptr %1156, ptr %1163
  %1165 = load ptr, ptr %1164, align 8, !tbaa !63
  %1166 = getelementptr inbounds %struct.BMLoop, ptr %1165, i64 0, i32 1
  %1167 = load ptr, ptr %1166, align 8, !tbaa !60
  %1168 = getelementptr inbounds %struct.BMVert, ptr %1135, i64 0, i32 2
  %1169 = getelementptr inbounds %struct.BMVert, ptr %1153, i64 0, i32 2
  %1170 = getelementptr inbounds %struct.BMVert, ptr %1155, i64 0, i32 2
  %1171 = getelementptr inbounds %struct.BMVert, ptr %1167, i64 0, i32 2
  %1172 = call zeroext i8 @is_quad_convex_v3(ptr noundef nonnull %1168, ptr noundef nonnull %1169, ptr noundef nonnull %1170, ptr noundef nonnull %1171) #5
  %1173 = icmp eq i8 %1172, 0
  br i1 %1173, label %1182, label %1174

1174:                                             ; preds = %1146
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #5
  %1175 = load ptr, ptr %7, align 8, !tbaa !63
  %1176 = getelementptr inbounds %struct.BMLoop, ptr %1175, i64 0, i32 3
  %1177 = load ptr, ptr %1176, align 8, !tbaa !76
  store ptr %1177, ptr %9, align 16, !tbaa !63
  %1178 = load ptr, ptr %8, align 8, !tbaa !63
  %1179 = getelementptr inbounds %struct.BMLoop, ptr %1178, i64 0, i32 3
  %1180 = load ptr, ptr %1179, align 8, !tbaa !76
  store ptr %1180, ptr %1092, align 8, !tbaa !63
  %1181 = call ptr @BM_faces_join(ptr noundef %0, ptr noundef nonnull %9, i32 noundef 2, i8 noundef zeroext 1) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #5
  br label %1182

1182:                                             ; preds = %1174, %1146, %1127, %1121, %1115, %1110, %1105, %1102
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #5
  br label %1093, !llvm.loop !99

1183:                                             ; preds = %1100
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #5
  br label %1184

1184:                                             ; preds = %1183, %1081
  %1185 = load ptr, ptr @MEM_freeN, align 8, !tbaa !63
  call void %1185(ptr noundef %149) #5
  %1186 = load ptr, ptr @MEM_freeN, align 8, !tbaa !63
  call void %1186(ptr noundef %157) #5
  call void @BLI_heap_free(ptr noundef %152, ptr noundef null) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @BLI_heap_new_ex(i32 noundef) local_unnamed_addr #2

declare zeroext i8 @CustomData_has_interp(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @CustomData_has_math(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_heap_is_empty(ptr noundef) local_unnamed_addr #2

declare float @BLI_heap_node_value(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_heap_top(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_heap_popmin(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @BLI_heap_free(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BM_edge_exists(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BM_face_split(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BM_face_normal_update(ptr noundef) local_unnamed_addr #2

declare void @BM_mesh_elem_index_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

declare void @bmiter__loop_of_vert_begin(ptr noundef) #2

declare ptr @bmiter__loop_of_vert_step(ptr noundef) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

declare void @BLI_quadric_from_v3_dist(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare void @BLI_quadric_add_qu_qu(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_quadric_mul(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @bm_decim_build_edge_cost_single(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef %3, ptr nocapture noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.Quadric, align 4
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #5
  %8 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !51
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds ptr, ptr %4, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !63
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %5
  tail call void @BLI_heap_remove(ptr noundef %3, ptr noundef nonnull %12) #5
  br label %15

15:                                               ; preds = %14, %5
  %16 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !71
  %18 = icmp eq ptr %17, null
  br i1 %18, label %129, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !64
  %22 = icmp eq ptr %21, %17
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !76
  %26 = getelementptr inbounds %struct.BMFace, ptr %25, i64 0, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !59
  %28 = icmp eq i32 %27, 3
  br i1 %28, label %52, label %129

29:                                               ; preds = %19
  br i1 %18, label %129, label %30

30:                                               ; preds = %29
  %31 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !64
  %33 = icmp eq ptr %32, %17
  br i1 %33, label %129, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.BMLoop, ptr %32, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !64
  %37 = icmp eq ptr %36, %17
  br i1 %37, label %38, label %129

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !76
  %41 = getelementptr inbounds %struct.BMFace, ptr %40, i64 0, i32 3
  %42 = load i32, ptr %41, align 8, !tbaa !59
  %43 = icmp eq i32 %42, 3
  br i1 %43, label %44, label %129

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !64
  %47 = getelementptr inbounds %struct.BMLoop, ptr %46, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !76
  %49 = getelementptr inbounds %struct.BMFace, ptr %48, i64 0, i32 3
  %50 = load i32, ptr %49, align 8, !tbaa !59
  %51 = icmp eq i32 %50, 3
  br i1 %51, label %52, label %129

52:                                               ; preds = %44, %23
  %53 = icmp eq ptr %2, null
  br i1 %53, label %72, label %54

54:                                               ; preds = %52
  %55 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !75
  %57 = getelementptr inbounds %struct.BMHeader, ptr %56, i64 0, i32 1
  %58 = load i32, ptr %57, align 8, !tbaa !51
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds float, ptr %2, i64 %59
  %61 = load float, ptr %60, align 4, !tbaa !61
  %62 = fcmp ult float %61, 1.000000e+05
  br i1 %62, label %72, label %63

63:                                               ; preds = %54
  %64 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !74
  %66 = getelementptr inbounds %struct.BMHeader, ptr %65, i64 0, i32 1
  %67 = load i32, ptr %66, align 8, !tbaa !51
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds float, ptr %2, i64 %68
  %70 = load float, ptr %69, align 4, !tbaa !61
  %71 = fcmp ult float %70, 1.000000e+05
  br i1 %71, label %72, label %129

72:                                               ; preds = %54, %63, %52
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #5
  %73 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !75
  %75 = getelementptr inbounds %struct.BMHeader, ptr %74, i64 0, i32 1
  %76 = load i32, ptr %75, align 8, !tbaa !51
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.Quadric, ptr %1, i64 %77
  %79 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !74
  %81 = getelementptr inbounds %struct.BMHeader, ptr %80, i64 0, i32 1
  %82 = load i32, ptr %81, align 8, !tbaa !51
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.Quadric, ptr %1, i64 %83
  call void @BLI_quadric_add_qu_ququ(ptr noundef nonnull %6, ptr noundef %78, ptr noundef %84) #5
  %85 = call zeroext i8 @BLI_quadric_optimize(ptr noundef nonnull %6, ptr noundef nonnull %7, float noundef 0x3F847AE140000000) #5
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %72
  %88 = load ptr, ptr %73, align 8, !tbaa !75
  %89 = getelementptr inbounds %struct.BMVert, ptr %88, i64 0, i32 2
  %90 = load ptr, ptr %79, align 8, !tbaa !74
  %91 = getelementptr inbounds %struct.BMVert, ptr %90, i64 0, i32 2
  call void @mid_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %89, ptr noundef nonnull %91) #5
  br label %92

92:                                               ; preds = %72, %87
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #5
  %93 = load ptr, ptr %73, align 8, !tbaa !75
  %94 = getelementptr inbounds %struct.BMHeader, ptr %93, i64 0, i32 1
  %95 = load i32, ptr %94, align 8, !tbaa !51
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.Quadric, ptr %1, i64 %96
  %98 = load ptr, ptr %79, align 8, !tbaa !74
  %99 = getelementptr inbounds %struct.BMHeader, ptr %98, i64 0, i32 1
  %100 = load i32, ptr %99, align 8, !tbaa !51
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.Quadric, ptr %1, i64 %101
  %103 = call float @BLI_quadric_evaluate(ptr noundef %97, ptr noundef nonnull %7) #5
  br i1 %53, label %104, label %107

104:                                              ; preds = %92
  %105 = call float @BLI_quadric_evaluate(ptr noundef %102, ptr noundef nonnull %7) #5
  %106 = fadd float %103, %105
  br label %125

107:                                              ; preds = %92
  %108 = fadd float %103, 1.000000e+00
  %109 = load ptr, ptr %73, align 8, !tbaa !75
  %110 = getelementptr inbounds %struct.BMHeader, ptr %109, i64 0, i32 1
  %111 = load i32, ptr %110, align 8, !tbaa !51
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds float, ptr %2, i64 %112
  %114 = load float, ptr %113, align 4, !tbaa !61
  %115 = call float @BLI_quadric_evaluate(ptr noundef %102, ptr noundef nonnull %7) #5
  %116 = fadd float %115, 1.000000e+00
  %117 = load ptr, ptr %79, align 8, !tbaa !74
  %118 = getelementptr inbounds %struct.BMHeader, ptr %117, i64 0, i32 1
  %119 = load i32, ptr %118, align 8, !tbaa !51
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds float, ptr %2, i64 %120
  %122 = load float, ptr %121, align 4, !tbaa !61
  %123 = fmul float %116, %122
  %124 = call float @llvm.fmuladd.f32(float %108, float %114, float %123)
  br label %125

125:                                              ; preds = %107, %104
  %126 = phi float [ %106, %104 ], [ %124, %107 ]
  %127 = call float @llvm.fabs.f32(float %126)
  %128 = call ptr @BLI_heap_insert(ptr noundef %3, float noundef %127, ptr noundef %0) #5
  br label %129

129:                                              ; preds = %63, %34, %15, %29, %30, %38, %44, %23, %125
  %130 = phi ptr [ %128, %125 ], [ null, %23 ], [ null, %44 ], [ null, %38 ], [ null, %30 ], [ null, %29 ], [ null, %15 ], [ null, %34 ], [ null, %63 ]
  %131 = load i32, ptr %8, align 8, !tbaa !51
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds ptr, ptr %4, i64 %132
  store ptr %130, ptr %133, align 8, !tbaa !63
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #5
  ret void
}

declare void @BLI_heap_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @BLI_quadric_evaluate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

declare ptr @BLI_heap_insert(ptr noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_quadric_add_qu_ququ(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_quadric_optimize(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @line_point_factor_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare zeroext i8 @BM_edge_loop_pair(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_data_interp_from_verts(ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare void @BM_data_interp_from_edges(ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @bm_edge_collapse_loop_customdata(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2, float noundef %3) unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca [2 x float], align 4
  %7 = alloca [2 x ptr], align 16
  %8 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !86
  %10 = getelementptr inbounds %struct.BMEdge, ptr %9, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !71
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.BMLoop, ptr %11, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !64
  %16 = icmp eq ptr %15, %11
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.BMLoop, ptr %15, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !64
  %20 = icmp ne ptr %19, %11
  br label %21

21:                                               ; preds = %4, %13, %17
  %22 = phi i1 [ true, %13 ], [ true, %4 ], [ %20, %17 ]
  %23 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !60
  %25 = icmp eq ptr %24, %2
  %26 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !52
  %28 = select i1 %25, ptr %27, ptr %1
  %29 = select i1 %25, ptr %1, ptr %27
  %30 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 4
  %31 = fsub float 1.000000e+00, %3
  %32 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  %33 = fsub float 1.000000e+00, %3
  %34 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  %35 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %36 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26, i32 2
  %37 = getelementptr inbounds ptr, ptr %7, i64 1
  br label %38

38:                                               ; preds = %21, %105
  %39 = phi i32 [ 0, %21 ], [ %106, %105 ]
  br i1 %22, label %44, label %40

40:                                               ; preds = %38
  %41 = load ptr, ptr %30, align 8, !tbaa !64
  %42 = getelementptr inbounds %struct.BMLoop, ptr %41, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !76
  br label %44

44:                                               ; preds = %38, %40
  %45 = phi ptr [ %43, %40 ], [ null, %38 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  %46 = load ptr, ptr %8, align 8, !tbaa !86
  store ptr %46, ptr %5, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #5
  %47 = icmp eq i32 %39, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load ptr, ptr %29, align 8, !tbaa !100
  %50 = load ptr, ptr %28, align 8, !tbaa !100
  store float %3, ptr %6, align 4, !tbaa !61
  store float %33, ptr %34, align 4, !tbaa !61
  br label %54

51:                                               ; preds = %44
  %52 = load ptr, ptr %28, align 8, !tbaa !100
  %53 = load ptr, ptr %29, align 8, !tbaa !100
  store float %31, ptr %6, align 4, !tbaa !61
  store float %3, ptr %32, align 4, !tbaa !61
  br label %54

54:                                               ; preds = %51, %48
  %55 = phi ptr [ %49, %48 ], [ %52, %51 ]
  %56 = phi ptr [ %50, %48 ], [ %53, %51 ]
  %57 = phi ptr [ %29, %48 ], [ %28, %51 ]
  %58 = call ptr @BM_vert_step_fan_loop(ptr noundef nonnull %57, ptr noundef nonnull %5) #5
  %59 = icmp ne ptr %58, %57
  %60 = icmp ne ptr %58, null
  %61 = and i1 %59, %60
  br i1 %61, label %62, label %105

62:                                               ; preds = %54
  %63 = icmp eq ptr %45, null
  br label %69

64:                                               ; preds = %100, %75
  %65 = call ptr @BM_vert_step_fan_loop(ptr noundef %70, ptr noundef nonnull %5) #5
  %66 = icmp ne ptr %65, %57
  %67 = icmp ne ptr %65, null
  %68 = and i1 %66, %67
  br i1 %68, label %69, label %105

69:                                               ; preds = %62, %64
  %70 = phi ptr [ %58, %62 ], [ %65, %64 ]
  br i1 %63, label %75, label %71

71:                                               ; preds = %69
  %72 = getelementptr inbounds %struct.BMLoop, ptr %70, i64 0, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !76
  %74 = icmp eq ptr %45, %73
  br i1 %74, label %105, label %75

75:                                               ; preds = %71, %69
  %76 = load i32, ptr %36, align 4, !tbaa !101
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %64

78:                                               ; preds = %75, %100
  %79 = phi i64 [ %101, %100 ], [ 0, %75 ]
  %80 = trunc i64 %79 to i32
  %81 = call zeroext i8 @CustomData_layer_has_math(ptr noundef nonnull %35, i32 noundef %80) #5
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %100, label %83

83:                                               ; preds = %78
  %84 = load ptr, ptr %35, align 8, !tbaa !102
  %85 = getelementptr inbounds %struct.CustomDataLayer, ptr %84, i64 %79
  %86 = getelementptr inbounds %struct.CustomDataLayer, ptr %84, i64 %79, i32 1
  %87 = load i32, ptr %86, align 4, !tbaa !103
  %88 = load i32, ptr %85, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #5
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i8, ptr %55, i64 %89
  store ptr %90, ptr %7, align 16, !tbaa !63
  %91 = getelementptr inbounds i8, ptr %56, i64 %89
  store ptr %91, ptr %37, align 8, !tbaa !63
  %92 = load ptr, ptr %70, align 8, !tbaa !100
  %93 = getelementptr inbounds i8, ptr %92, i64 %89
  %94 = call zeroext i8 @CustomData_data_equals(i32 noundef %88, ptr noundef %90, ptr noundef %93) #5
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %83
  %97 = load ptr, ptr %70, align 8, !tbaa !100
  %98 = trunc i64 %79 to i32
  call void @CustomData_bmesh_interp_n(ptr noundef nonnull %35, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef null, i32 noundef 2, ptr noundef %97, i32 noundef %98) #5
  br label %99

99:                                               ; preds = %96, %83
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #5
  br label %100

100:                                              ; preds = %78, %99
  %101 = add nuw nsw i64 %79, 1
  %102 = load i32, ptr %36, align 4, !tbaa !101
  %103 = sext i32 %102 to i64
  %104 = icmp slt i64 %101, %103
  br i1 %104, label %78, label %64, !llvm.loop !106

105:                                              ; preds = %64, %71, %54
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  %106 = add nuw nsw i32 %39, 1
  %107 = icmp eq i32 %39, 0
  br i1 %107, label %38, label %108, !llvm.loop !107

108:                                              ; preds = %105
  ret void
}

declare void @BM_edge_kill(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BM_vert_splice(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BM_edge_splice(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BM_vert_step_fan_loop(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @CustomData_layer_has_math(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @CustomData_data_equals(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @CustomData_bmesh_interp_n(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @is_quad_convex_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BM_faces_join(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!34 = !{!35, !36, i64 60}
!35 = !{!"BMIter", !36, i64 0, !38, i64 40, !38, i64 48, !39, i64 56, !36, i64 60}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!"any pointer", !36, i64 0}
!39 = !{!"int", !36, i64 0}
!40 = !{!35, !38, i64 40}
!41 = !{!35, !38, i64 48}
!42 = !{!43, !38, i64 56}
!43 = !{!"BMesh", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !36, i64 28, !36, i64 29, !38, i64 32, !38, i64 40, !38, i64 48, !38, i64 56, !38, i64 64, !38, i64 72, !38, i64 80, !39, i64 88, !39, i64 92, !39, i64 96, !38, i64 104, !38, i64 112, !38, i64 120, !39, i64 128, !38, i64 136, !44, i64 144, !44, i64 344, !44, i64 544, !44, i64 744, !45, i64 944, !39, i64 948, !39, i64 952, !39, i64 956, !46, i64 960, !38, i64 976, !46, i64 984, !38, i64 1000}
!44 = !{!"CustomData", !38, i64 0, !36, i64 8, !39, i64 172, !39, i64 176, !39, i64 180, !38, i64 184, !38, i64 192}
!45 = !{!"short", !36, i64 0}
!46 = !{!"ListBase", !38, i64 0, !38, i64 8}
!47 = !{!36, !36, i64 0}
!48 = !{!49, !38, i64 24}
!49 = !{!"BMFace", !50, i64 0, !38, i64 16, !38, i64 24, !39, i64 32, !36, i64 36, !45, i64 48}
!50 = !{!"BMHeader", !38, i64 0, !39, i64 8, !36, i64 12, !36, i64 13, !36, i64 14}
!51 = !{!50, !39, i64 8}
!52 = !{!53, !38, i64 56}
!53 = !{!"BMLoop", !50, i64 0, !38, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !38, i64 48, !38, i64 56, !38, i64 64}
!54 = distinct !{!54, !55, !56}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!"llvm.loop.unroll.disable"}
!57 = distinct !{!57, !55, !56}
!58 = !{!43, !36, i64 28}
!59 = !{!49, !39, i64 32}
!60 = !{!53, !38, i64 16}
!61 = !{!62, !62, i64 0}
!62 = !{!"float", !36, i64 0}
!63 = !{!38, !38, i64 0}
!64 = !{!53, !38, i64 40}
!65 = distinct !{!65, !55, !56}
!66 = !{!43, !39, i64 0}
!67 = !{!43, !39, i64 4}
!68 = distinct !{!68, !55, !56}
!69 = distinct !{!69, !55, !56}
!70 = !{!43, !38, i64 40}
!71 = !{!72, !38, i64 40}
!72 = !{!"BMEdge", !50, i64 0, !38, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !73, i64 48, !73, i64 64}
!73 = !{!"BMDiskLink", !38, i64 0, !38, i64 8}
!74 = !{!72, !38, i64 32}
!75 = !{!72, !38, i64 24}
!76 = !{!53, !38, i64 32}
!77 = distinct !{!77, !55, !56}
!78 = distinct !{!78, !55, !56}
!79 = !{!43, !39, i64 12}
!80 = !{!50, !36, i64 13}
!81 = !{!72, !38, i64 48}
!82 = distinct !{!82, !55, !56}
!83 = distinct !{!83, !55, !56}
!84 = distinct !{!84, !55, !56}
!85 = distinct !{!85, !55, !56}
!86 = !{!53, !38, i64 24}
!87 = !{!53, !38, i64 64}
!88 = distinct !{!88, !55, !56}
!89 = distinct !{!89, !55, !56}
!90 = !{!39, !39, i64 0}
!91 = !{!92, !36, i64 13}
!92 = !{!"BMVert", !50, i64 0, !38, i64 16, !36, i64 24, !36, i64 36, !38, i64 48}
!93 = !{!72, !36, i64 13}
!94 = distinct !{!94, !55, !56}
!95 = !{!92, !38, i64 48}
!96 = distinct !{!96, !55, !56}
!97 = distinct !{!97, !55, !56}
!98 = distinct !{!98, !55, !56}
!99 = distinct !{!99, !55, !56}
!100 = !{!53, !38, i64 0}
!101 = !{!43, !39, i64 716}
!102 = !{!43, !38, i64 544}
!103 = !{!104, !39, i64 4}
!104 = !{!"CustomDataLayer", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !36, i64 32, !38, i64 96}
!105 = !{!104, !39, i64 0}
!106 = distinct !{!106, !55, !56}
!107 = distinct !{!107, !55, !56}
