; ModuleID = 'blender/source/blender/bmesh/tools/bmesh_bisect_plane.c'
source_filename = "blender/source/blender/bmesh/tools/bmesh_bisect_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMFlagLayer = type { i16 }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }

@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.BM_mesh_bisect_plane = private unnamed_addr constant [21 x i8] c"BM_mesh_bisect_plane\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local void @BM_mesh_bisect_plane(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i16 noundef signext %4, float noundef %5) local_unnamed_addr #0 {
  %7 = alloca ptr, align 8
  %8 = alloca %struct.BMIter, align 8
  %9 = alloca [2 x i32], align 4
  %10 = alloca %struct.BMIter, align 8
  %11 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !38
  %14 = sext i32 %13 to i64
  %15 = shl nsw i64 %14, 3
  %16 = tail call ptr %11(i64 noundef %15, ptr noundef nonnull @__func__.BM_mesh_bisect_plane) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #9
  %17 = icmp eq i8 %3, 0
  %18 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 4
  %19 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  %20 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  %21 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  br i1 %17, label %53, label %22

22:                                               ; preds = %6
  tail call void @BM_mesh_elem_hflag_disable_all(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext 16, i8 noundef zeroext 0) #9
  store i8 2, ptr %18, align 4, !tbaa !44
  store ptr @bmiter__elem_of_mesh_begin, ptr %19, align 8, !tbaa !46
  store ptr @bmiter__elem_of_mesh_step, ptr %20, align 8, !tbaa !47
  %23 = load ptr, ptr %21, align 8, !tbaa !48
  store ptr %23, ptr %8, align 8, !tbaa !49
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %8) #9
  %24 = load ptr, ptr %20, align 8, !tbaa !47
  %25 = call ptr %24(ptr noundef nonnull %8) #9
  %26 = icmp eq ptr %25, null
  br i1 %26, label %85, label %27

27:                                               ; preds = %22, %48
  %28 = phi i32 [ %49, %48 ], [ 0, %22 ]
  %29 = phi ptr [ %51, %48 ], [ %25, %22 ]
  %30 = getelementptr inbounds %struct.BMHeader, ptr %29, i64 0, i32 3
  %31 = load i8, ptr %30, align 1, !tbaa !50
  %32 = and i8 %31, 16
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %48, label %34

34:                                               ; preds = %27
  %35 = add i32 %28, 1
  %36 = zext i32 %28 to i64
  %37 = getelementptr inbounds ptr, ptr %16, i64 %36
  store ptr %29, ptr %37, align 8, !tbaa !34
  %38 = getelementptr inbounds %struct.BMEdge, ptr %29, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !52
  %40 = getelementptr inbounds %struct.BMHeader, ptr %39, i64 0, i32 3
  %41 = load i8, ptr %40, align 1, !tbaa !50
  %42 = or i8 %41, 16
  store i8 %42, ptr %40, align 1, !tbaa !50
  %43 = getelementptr inbounds %struct.BMEdge, ptr %29, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !55
  %45 = getelementptr inbounds %struct.BMHeader, ptr %44, i64 0, i32 3
  %46 = load i8, ptr %45, align 1, !tbaa !50
  %47 = or i8 %46, 16
  store i8 %47, ptr %45, align 1, !tbaa !50
  br label %48

48:                                               ; preds = %27, %34
  %49 = phi i32 [ %35, %34 ], [ %28, %27 ]
  %50 = load ptr, ptr %20, align 8, !tbaa !47
  %51 = call ptr %50(ptr noundef nonnull %8) #9
  %52 = icmp eq ptr %51, null
  br i1 %52, label %85, label %27, !llvm.loop !56

53:                                               ; preds = %6
  %54 = load i32, ptr %12, align 4, !tbaa !38
  store i8 2, ptr %18, align 4, !tbaa !44
  store ptr @bmiter__elem_of_mesh_begin, ptr %19, align 8, !tbaa !46
  store ptr @bmiter__elem_of_mesh_step, ptr %20, align 8, !tbaa !47
  %55 = load ptr, ptr %21, align 8, !tbaa !48
  store ptr %55, ptr %8, align 8, !tbaa !49
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %8) #9
  %56 = load ptr, ptr %20, align 8, !tbaa !47
  %57 = call ptr %56(ptr noundef nonnull %8) #9
  %58 = icmp eq ptr %57, null
  br i1 %58, label %71, label %59

59:                                               ; preds = %53, %59
  %60 = phi i32 [ %69, %59 ], [ 0, %53 ]
  %61 = phi ptr [ %68, %59 ], [ %57, %53 ]
  %62 = getelementptr inbounds %struct.BMHeader, ptr %61, i64 0, i32 3
  %63 = load i8, ptr %62, align 1, !tbaa !50
  %64 = or i8 %63, 16
  store i8 %64, ptr %62, align 1, !tbaa !50
  %65 = zext i32 %60 to i64
  %66 = getelementptr inbounds ptr, ptr %16, i64 %65
  store ptr %61, ptr %66, align 8, !tbaa !34
  %67 = load ptr, ptr %20, align 8, !tbaa !47
  %68 = call ptr %67(ptr noundef nonnull %8) #9
  %69 = add i32 %60, 1
  %70 = icmp eq ptr %68, null
  br i1 %70, label %71, label %59, !llvm.loop !59

71:                                               ; preds = %59, %53
  store i8 3, ptr %18, align 4, !tbaa !44
  store ptr @bmiter__elem_of_mesh_begin, ptr %19, align 8, !tbaa !46
  store ptr @bmiter__elem_of_mesh_step, ptr %20, align 8, !tbaa !47
  %72 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %73 = load ptr, ptr %72, align 8, !tbaa !60
  store ptr %73, ptr %8, align 8, !tbaa !49
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %8) #9
  %74 = load ptr, ptr %20, align 8, !tbaa !47
  %75 = call ptr %74(ptr noundef nonnull %8) #9
  %76 = icmp eq ptr %75, null
  br i1 %76, label %85, label %77

77:                                               ; preds = %71, %77
  %78 = phi ptr [ %83, %77 ], [ %75, %71 ]
  %79 = getelementptr inbounds %struct.BMHeader, ptr %78, i64 0, i32 3
  %80 = load i8, ptr %79, align 1, !tbaa !50
  %81 = or i8 %80, 16
  store i8 %81, ptr %79, align 1, !tbaa !50
  %82 = load ptr, ptr %20, align 8, !tbaa !47
  %83 = call ptr %82(ptr noundef nonnull %8) #9
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %77, !llvm.loop !61

85:                                               ; preds = %48, %77, %22, %71
  %86 = phi i32 [ %54, %71 ], [ 0, %22 ], [ %54, %77 ], [ %49, %48 ]
  %87 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 4
  store i8 1, ptr %87, align 4, !tbaa !44
  %88 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %88, align 8, !tbaa !46
  %89 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %89, align 8, !tbaa !47
  %90 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %91 = load ptr, ptr %90, align 8, !tbaa !62
  store ptr %91, ptr %8, align 8, !tbaa !49
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %8) #9
  %92 = load ptr, ptr %89, align 8, !tbaa !47
  %93 = call ptr %92(ptr noundef nonnull %8) #9
  %94 = icmp eq ptr %93, null
  br i1 %94, label %154, label %95

95:                                               ; preds = %85
  %96 = getelementptr inbounds float, ptr %1, i64 1
  %97 = getelementptr inbounds float, ptr %1, i64 2
  %98 = getelementptr inbounds float, ptr %1, i64 3
  %99 = fneg float %5
  %100 = icmp eq i16 %4, 0
  %101 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %102 = icmp eq i8 %2, 0
  br label %103

103:                                              ; preds = %95, %150
  %104 = phi ptr [ %93, %95 ], [ %152, %150 ]
  br i1 %17, label %113, label %105

105:                                              ; preds = %103
  %106 = getelementptr inbounds %struct.BMHeader, ptr %104, i64 0, i32 3
  %107 = load i8, ptr %106, align 1, !tbaa !50
  %108 = and i8 %107, 16
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.BMHeader, ptr %104, i64 0, i32 1
  store i16 0, ptr %111, align 8, !tbaa !63
  %112 = getelementptr inbounds %struct.BMVert, ptr %104, i64 0, i32 3
  store float 0.000000e+00, ptr %112, align 4, !tbaa !64
  br label %150

113:                                              ; preds = %105, %103
  %114 = getelementptr inbounds %struct.BMHeader, ptr %104, i64 0, i32 3
  %115 = load i8, ptr %114, align 1, !tbaa !50
  %116 = and i8 %115, -17
  store i8 %116, ptr %114, align 1, !tbaa !50
  %117 = getelementptr inbounds %struct.BMVert, ptr %104, i64 0, i32 2
  %118 = getelementptr inbounds %struct.BMVert, ptr %104, i64 0, i32 3
  %119 = load float, ptr %117, align 4, !tbaa !64
  %120 = load float, ptr %1, align 4, !tbaa !64
  %121 = getelementptr inbounds %struct.BMVert, ptr %104, i64 0, i32 2, i64 1
  %122 = load float, ptr %121, align 4, !tbaa !64
  %123 = load float, ptr %96, align 4, !tbaa !64
  %124 = fmul float %122, %123
  %125 = call float @llvm.fmuladd.f32(float %119, float %120, float %124)
  %126 = getelementptr inbounds %struct.BMVert, ptr %104, i64 0, i32 2, i64 2
  %127 = load float, ptr %126, align 4, !tbaa !64
  %128 = load float, ptr %97, align 4, !tbaa !64
  %129 = call float @llvm.fmuladd.f32(float %127, float %128, float %125)
  %130 = load float, ptr %98, align 4, !tbaa !64
  %131 = fadd float %129, %130
  store float %131, ptr %118, align 4, !tbaa !64
  %132 = fcmp ugt float %131, %99
  %133 = fcmp oge float %131, %5
  %134 = zext i1 %133 to i16
  %135 = select i1 %132, i16 %134, i16 -1
  %136 = getelementptr inbounds %struct.BMHeader, ptr %104, i64 0, i32 1
  store i16 %135, ptr %136, align 8, !tbaa !63
  %137 = icmp eq i16 %135, 0
  br i1 %137, label %138, label %150

138:                                              ; preds = %113
  br i1 %100, label %148, label %139

139:                                              ; preds = %138
  %140 = getelementptr inbounds %struct.BMVert, ptr %104, i64 0, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !66
  %142 = load i32, ptr %101, align 8, !tbaa !68
  %143 = sext i32 %142 to i64
  %144 = getelementptr %struct.BMFlagLayer, ptr %141, i64 %143
  %145 = getelementptr %struct.BMFlagLayer, ptr %144, i64 -1
  %146 = load i16, ptr %145, align 2, !tbaa !69
  %147 = or i16 %146, %4
  store i16 %147, ptr %145, align 2, !tbaa !69
  br label %148

148:                                              ; preds = %139, %138
  br i1 %102, label %150, label %149

149:                                              ; preds = %148
  call void @closest_to_plane_v3(ptr noundef nonnull %117, ptr noundef nonnull %1, ptr noundef nonnull %117) #9
  br label %150

150:                                              ; preds = %113, %149, %148, %110
  %151 = load ptr, ptr %89, align 8, !tbaa !47
  %152 = call ptr %151(ptr noundef nonnull %8) #9
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %103, !llvm.loop !71

154:                                              ; preds = %150, %85
  store ptr null, ptr %7, align 8, !tbaa !34
  %155 = call ptr @BLI_mempool_create(i32 noundef 16, i32 noundef 0, i32 noundef 64, i32 noundef 0) #9
  %156 = icmp eq i32 %86, 0
  br i1 %156, label %288, label %157

157:                                              ; preds = %154
  %158 = getelementptr inbounds i32, ptr %9, i64 1
  %159 = icmp eq i16 %4, 0
  %160 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %161 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 4
  %162 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 1
  %163 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 2
  %164 = icmp ne i16 %4, 0
  %165 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %166 = zext i32 %86 to i64
  br label %167

167:                                              ; preds = %157, %285
  %168 = phi i64 [ 0, %157 ], [ %286, %285 ]
  %169 = getelementptr inbounds ptr, ptr %16, i64 %168
  %170 = load ptr, ptr %169, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #9
  %171 = getelementptr inbounds %struct.BMEdge, ptr %170, i64 0, i32 2
  %172 = load ptr, ptr %171, align 8, !tbaa !52
  %173 = getelementptr inbounds %struct.BMHeader, ptr %172, i64 0, i32 1
  %174 = load i16, ptr %173, align 8, !tbaa !63
  %175 = sext i16 %174 to i32
  store i32 %175, ptr %9, align 4, !tbaa !72
  %176 = getelementptr inbounds %struct.BMEdge, ptr %170, i64 0, i32 3
  %177 = load ptr, ptr %176, align 8, !tbaa !55
  %178 = getelementptr inbounds %struct.BMHeader, ptr %177, i64 0, i32 1
  %179 = load i16, ptr %178, align 8, !tbaa !63
  %180 = sext i16 %179 to i32
  store i32 %180, ptr %158, align 4, !tbaa !72
  %181 = icmp eq i16 %174, 0
  %182 = icmp eq i16 %179, 0
  %183 = select i1 %181, i1 true, i1 %182
  %184 = icmp eq i16 %174, %179
  %185 = select i1 %183, i1 true, i1 %184
  br i1 %185, label %229, label %186

186:                                              ; preds = %167
  %187 = getelementptr inbounds %struct.BMVert, ptr %177, i64 0, i32 3
  %188 = load float, ptr %187, align 4, !tbaa !64
  %189 = getelementptr inbounds %struct.BMVert, ptr %172, i64 0, i32 3
  %190 = load float, ptr %189, align 4, !tbaa !64
  %191 = fsub float %190, %188
  %192 = fdiv float %190, %191
  %193 = call float @llvm.fabs.f32(float %192)
  %194 = getelementptr inbounds %struct.BMEdge, ptr %170, i64 0, i32 4
  %195 = load ptr, ptr %194, align 8, !tbaa !73
  %196 = icmp eq ptr %195, null
  br i1 %196, label %211, label %197

197:                                              ; preds = %186, %207
  %198 = phi ptr [ %209, %207 ], [ %195, %186 ]
  %199 = getelementptr inbounds %struct.BMLoop, ptr %198, i64 0, i32 3
  %200 = load ptr, ptr %199, align 8, !tbaa !74
  %201 = getelementptr inbounds %struct.BMHeader, ptr %200, i64 0, i32 3
  %202 = load i8, ptr %201, align 1, !tbaa !50
  %203 = and i8 %202, 16
  %204 = icmp eq i8 %203, 0
  br i1 %204, label %207, label %205

205:                                              ; preds = %197
  %206 = and i8 %202, -17
  store i8 %206, ptr %201, align 1, !tbaa !50
  call void @BLI_linklist_prepend_pool(ptr noundef nonnull %7, ptr noundef %200, ptr noundef %155) #9
  br label %207

207:                                              ; preds = %197, %205
  %208 = getelementptr inbounds %struct.BMLoop, ptr %198, i64 0, i32 4
  %209 = load ptr, ptr %208, align 8, !tbaa !76
  %210 = icmp eq ptr %209, %195
  br i1 %210, label %211, label %197, !llvm.loop !77

211:                                              ; preds = %207, %186
  %212 = load ptr, ptr %171, align 8, !tbaa !52
  %213 = call ptr @BM_edge_split(ptr noundef %0, ptr noundef %170, ptr noundef %212, ptr noundef null, float noundef %193) #9
  %214 = getelementptr inbounds %struct.BMHeader, ptr %213, i64 0, i32 3
  %215 = load i8, ptr %214, align 1, !tbaa !50
  %216 = or i8 %215, 16
  store i8 %216, ptr %214, align 1, !tbaa !50
  br i1 %159, label %226, label %217

217:                                              ; preds = %211
  %218 = getelementptr inbounds %struct.BMVert, ptr %213, i64 0, i32 1
  %219 = load ptr, ptr %218, align 8, !tbaa !66
  %220 = load i32, ptr %160, align 8, !tbaa !68
  %221 = sext i32 %220 to i64
  %222 = getelementptr %struct.BMFlagLayer, ptr %219, i64 %221
  %223 = getelementptr %struct.BMFlagLayer, ptr %222, i64 -1
  %224 = load i16, ptr %223, align 2, !tbaa !69
  %225 = or i16 %224, %4
  store i16 %225, ptr %223, align 2, !tbaa !69
  br label %226

226:                                              ; preds = %217, %211
  %227 = getelementptr inbounds %struct.BMHeader, ptr %213, i64 0, i32 1
  store i16 0, ptr %227, align 8, !tbaa !63
  %228 = getelementptr inbounds %struct.BMVert, ptr %213, i64 0, i32 3
  store float 0.000000e+00, ptr %228, align 4, !tbaa !64
  br label %285

229:                                              ; preds = %167
  br i1 %183, label %230, label %285

230:                                              ; preds = %229
  store i8 7, ptr %87, align 4, !tbaa !44
  store ptr @bmiter__vert_of_edge_begin, ptr %88, align 8, !tbaa !46
  store ptr @bmiter__vert_of_edge_step, ptr %89, align 8, !tbaa !47
  store ptr %170, ptr %8, align 8, !tbaa !49
  call void @bmiter__vert_of_edge_begin(ptr noundef nonnull %8) #9
  %231 = load ptr, ptr %89, align 8, !tbaa !47
  %232 = call ptr %231(ptr noundef nonnull %8) #9
  %233 = icmp eq ptr %232, null
  br i1 %233, label %272, label %234

234:                                              ; preds = %230, %267
  %235 = phi i32 [ %270, %267 ], [ 0, %230 ]
  %236 = phi ptr [ %269, %267 ], [ %232, %230 ]
  %237 = zext i32 %235 to i64
  %238 = getelementptr inbounds [2 x i32], ptr %9, i64 0, i64 %237
  %239 = load i32, ptr %238, align 4, !tbaa !72
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %267

241:                                              ; preds = %234
  %242 = getelementptr inbounds %struct.BMHeader, ptr %236, i64 0, i32 3
  %243 = load i8, ptr %242, align 1, !tbaa !50
  %244 = and i8 %243, 16
  %245 = icmp eq i8 %244, 0
  br i1 %245, label %246, label %267

246:                                              ; preds = %241
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #9
  %247 = load i8, ptr %242, align 1, !tbaa !50
  %248 = or i8 %247, 16
  store i8 %248, ptr %242, align 1, !tbaa !50
  store i8 6, ptr %161, align 4, !tbaa !44
  store ptr @bmiter__loop_of_vert_begin, ptr %162, align 8, !tbaa !46
  store ptr @bmiter__loop_of_vert_step, ptr %163, align 8, !tbaa !47
  store ptr %236, ptr %10, align 8, !tbaa !49
  call void @bmiter__loop_of_vert_begin(ptr noundef nonnull %10) #9
  %249 = load ptr, ptr %163, align 8, !tbaa !47
  %250 = call ptr %249(ptr noundef nonnull %10) #9
  %251 = icmp eq ptr %250, null
  br i1 %251, label %266, label %252

252:                                              ; preds = %246, %262
  %253 = phi ptr [ %264, %262 ], [ %250, %246 ]
  %254 = getelementptr inbounds %struct.BMLoop, ptr %253, i64 0, i32 3
  %255 = load ptr, ptr %254, align 8, !tbaa !74
  %256 = getelementptr inbounds %struct.BMHeader, ptr %255, i64 0, i32 3
  %257 = load i8, ptr %256, align 1, !tbaa !50
  %258 = and i8 %257, 16
  %259 = icmp eq i8 %258, 0
  br i1 %259, label %262, label %260

260:                                              ; preds = %252
  %261 = and i8 %257, -17
  store i8 %261, ptr %256, align 1, !tbaa !50
  call void @BLI_linklist_prepend_pool(ptr noundef nonnull %7, ptr noundef %255, ptr noundef %155) #9
  br label %262

262:                                              ; preds = %252, %260
  %263 = load ptr, ptr %163, align 8, !tbaa !47
  %264 = call ptr %263(ptr noundef nonnull %10) #9
  %265 = icmp eq ptr %264, null
  br i1 %265, label %266, label %252, !llvm.loop !78

266:                                              ; preds = %262, %246
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #9
  br label %267

267:                                              ; preds = %234, %266, %241
  %268 = load ptr, ptr %89, align 8, !tbaa !47
  %269 = call ptr %268(ptr noundef nonnull %8) #9
  %270 = add i32 %235, 1
  %271 = icmp eq ptr %269, null
  br i1 %271, label %272, label %234, !llvm.loop !79

272:                                              ; preds = %267, %230
  %273 = icmp eq i16 %179, 0
  %274 = and i1 %164, %181
  %275 = select i1 %274, i1 %273, i1 false
  br i1 %275, label %276, label %285

276:                                              ; preds = %272
  %277 = getelementptr inbounds %struct.BMEdge, ptr %170, i64 0, i32 1
  %278 = load ptr, ptr %277, align 8, !tbaa !80
  %279 = load i32, ptr %165, align 8, !tbaa !68
  %280 = sext i32 %279 to i64
  %281 = getelementptr %struct.BMFlagLayer, ptr %278, i64 %280
  %282 = getelementptr %struct.BMFlagLayer, ptr %281, i64 -1
  %283 = load i16, ptr %282, align 2, !tbaa !69
  %284 = or i16 %283, %4
  store i16 %284, ptr %282, align 2, !tbaa !69
  br label %285

285:                                              ; preds = %272, %276, %229, %226
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  %286 = add nuw nsw i64 %168, 1
  %287 = icmp eq i64 %286, %166
  br i1 %287, label %288, label %167, !llvm.loop !81

288:                                              ; preds = %285, %154
  %289 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %289(ptr noundef %16) #9
  br label %290

290:                                              ; preds = %298, %288
  %291 = load ptr, ptr %7, align 8, !tbaa !34
  %292 = icmp eq ptr %291, null
  br i1 %292, label %295, label %293

293:                                              ; preds = %290
  %294 = call ptr @BLI_linklist_pop_pool(ptr noundef nonnull %7, ptr noundef %155) #9
  br label %295

295:                                              ; preds = %290, %293
  %296 = phi ptr [ %294, %293 ], [ null, %290 ]
  %297 = icmp eq ptr %296, null
  br i1 %297, label %299, label %298

298:                                              ; preds = %295
  call fastcc void @bm_face_bisect_verts(ptr noundef %0, ptr noundef nonnull %296, ptr noundef %1, i16 noundef signext %4)
  br label %290, !llvm.loop !82

299:                                              ; preds = %295
  call void @BLI_mempool_destroy(ptr noundef %155) #9
  store ptr null, ptr %7, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @BM_mesh_elem_hflag_disable_all(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @closest_to_plane_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_mempool_create(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

declare void @BLI_linklist_prepend_pool(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BM_edge_split(ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare ptr @BLI_linklist_pop_pool(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @bm_face_bisect_verts(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i16 noundef signext %3) unnamed_addr #0 {
  %5 = alloca [3 x i8], align 1
  %6 = alloca ptr, align 8
  %7 = alloca [3 x [3 x float]], align 16
  %8 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !83
  %10 = zext i32 %9 to i64
  %11 = shl nuw nsw i64 %10, 3
  %12 = alloca i8, i64 %11, align 16
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %5, i8 0, i64 3, i1 false)
  %13 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !85
  br label %15

15:                                               ; preds = %43, %4
  %16 = phi ptr [ %14, %4 ], [ %52, %43 ]
  %17 = phi i32 [ 0, %4 ], [ %44, %43 ]
  %18 = getelementptr inbounds %struct.BMLoop, ptr %16, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !86
  %20 = getelementptr inbounds %struct.BMHeader, ptr %19, i64 0, i32 3
  %21 = load i8, ptr %20, align 1, !tbaa !50
  %22 = and i8 %21, 16
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %43, label %24

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.BMLoop, ptr %16, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !87
  %27 = getelementptr inbounds %struct.BMLoop, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !86
  %29 = getelementptr inbounds %struct.BMHeader, ptr %28, i64 0, i32 1
  %30 = load i16, ptr %29, align 8, !tbaa !63
  %31 = getelementptr inbounds %struct.BMLoop, ptr %16, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !88
  %33 = getelementptr inbounds %struct.BMLoop, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !86
  %35 = getelementptr inbounds %struct.BMHeader, ptr %34, i64 0, i32 1
  %36 = load i16, ptr %35, align 8, !tbaa !63
  %37 = icmp eq i16 %30, %36
  %38 = zext i1 %37 to i16
  %39 = getelementptr inbounds i8, ptr %19, i64 10
  store i16 %38, ptr %39, align 2, !tbaa !63
  %40 = add i32 %17, 1
  %41 = zext i32 %17 to i64
  %42 = getelementptr inbounds ptr, ptr %12, i64 %41
  store ptr %19, ptr %42, align 8, !tbaa !34
  br label %43

43:                                               ; preds = %24, %15
  %44 = phi i32 [ %40, %24 ], [ %17, %15 ]
  %45 = load ptr, ptr %18, align 8, !tbaa !86
  %46 = getelementptr inbounds %struct.BMHeader, ptr %45, i64 0, i32 1
  %47 = load i16, ptr %46, align 8, !tbaa !63
  %48 = sext i16 %47 to i64
  %49 = add nsw i64 %48, 1
  %50 = getelementptr inbounds [3 x i8], ptr %5, i64 0, i64 %49
  store i8 1, ptr %50, align 1, !tbaa !49
  %51 = getelementptr inbounds %struct.BMLoop, ptr %16, i64 0, i32 6
  %52 = load ptr, ptr %51, align 8, !tbaa !88
  %53 = icmp eq ptr %52, %14
  br i1 %53, label %54, label %15, !llvm.loop !89

54:                                               ; preds = %43
  %55 = icmp ugt i32 %44, 1
  %56 = load i8, ptr %5, align 1
  %57 = icmp ne i8 %56, 0
  %58 = select i1 %55, i1 %57, i1 false
  %59 = getelementptr inbounds [3 x i8], ptr %5, i64 0, i64 2
  %60 = load i8, ptr %59, align 1
  %61 = icmp ne i8 %60, 0
  %62 = select i1 %58, i1 %61, i1 false
  br i1 %62, label %63, label %325

63:                                               ; preds = %54
  %64 = icmp eq i32 %44, 2
  br i1 %64, label %65, label %103

65:                                               ; preds = %63
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  %66 = load ptr, ptr %12, align 16, !tbaa !34
  %67 = tail call ptr @BM_face_vert_share_loop(ptr noundef %1, ptr noundef %66) #9
  %68 = getelementptr inbounds ptr, ptr %12, i64 1
  %69 = load ptr, ptr %68, align 8, !tbaa !34
  %70 = tail call ptr @BM_face_vert_share_loop(ptr noundef %1, ptr noundef %69) #9
  %71 = call ptr @BM_face_split(ptr noundef %0, ptr noundef %1, ptr noundef %67, ptr noundef %70, ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 1) #9
  %72 = load ptr, ptr %6, align 8, !tbaa !34
  %73 = icmp ne ptr %72, null
  %74 = icmp ne i16 %3, 0
  %75 = and i1 %74, %73
  br i1 %75, label %76, label %102

76:                                               ; preds = %65
  %77 = getelementptr inbounds %struct.BMLoop, ptr %72, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !90
  %79 = getelementptr inbounds %struct.BMEdge, ptr %78, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !80
  %81 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %82 = load i32, ptr %81, align 8, !tbaa !68
  %83 = sext i32 %82 to i64
  %84 = getelementptr %struct.BMFlagLayer, ptr %80, i64 %83
  %85 = getelementptr %struct.BMFlagLayer, ptr %84, i64 -1
  %86 = load i16, ptr %85, align 2, !tbaa !69
  %87 = or i16 %86, %3
  store i16 %87, ptr %85, align 2, !tbaa !69
  %88 = getelementptr inbounds %struct.BMLoop, ptr %72, i64 0, i32 3
  %89 = load ptr, ptr %88, align 8, !tbaa !74
  %90 = getelementptr inbounds %struct.BMFace, ptr %89, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !91
  %92 = getelementptr %struct.BMFlagLayer, ptr %91, i64 %83
  %93 = getelementptr %struct.BMFlagLayer, ptr %92, i64 -1
  %94 = load i16, ptr %93, align 2, !tbaa !69
  %95 = or i16 %94, %3
  store i16 %95, ptr %93, align 2, !tbaa !69
  %96 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !91
  %98 = getelementptr %struct.BMFlagLayer, ptr %97, i64 %83
  %99 = getelementptr %struct.BMFlagLayer, ptr %98, i64 -1
  %100 = load i16, ptr %99, align 2, !tbaa !69
  %101 = or i16 %100, %3
  store i16 %101, ptr %99, align 2, !tbaa !69
  br label %102

102:                                              ; preds = %76, %65
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  br label %325

103:                                              ; preds = %63
  %104 = alloca i8, i64 %11, align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #9
  %105 = zext i32 %44 to i64
  %106 = shl nuw nsw i64 %105, 3
  %107 = alloca i8, i64 %106, align 16
  %108 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 4
  %109 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 4, i64 1
  %110 = load float, ptr %109, align 4, !tbaa !64
  %111 = getelementptr inbounds float, ptr %2, i64 2
  %112 = load float, ptr %111, align 4, !tbaa !64
  %113 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 4, i64 2
  %114 = load float, ptr %113, align 4, !tbaa !64
  %115 = getelementptr inbounds float, ptr %2, i64 1
  %116 = load float, ptr %115, align 4, !tbaa !64
  %117 = fneg float %114
  %118 = fmul float %116, %117
  %119 = tail call float @llvm.fmuladd.f32(float %110, float %112, float %118)
  %120 = load float, ptr %2, align 4, !tbaa !64
  %121 = load float, ptr %108, align 4, !tbaa !64
  %122 = fneg float %121
  %123 = fmul float %112, %122
  %124 = tail call float @llvm.fmuladd.f32(float %114, float %120, float %123)
  %125 = fneg float %110
  %126 = fmul float %120, %125
  %127 = tail call float @llvm.fmuladd.f32(float %121, float %116, float %126)
  %128 = fmul float %124, %124
  %129 = tail call float @llvm.fmuladd.f32(float %119, float %119, float %128)
  %130 = tail call float @llvm.fmuladd.f32(float %127, float %127, float %129)
  %131 = fcmp ogt float %130, 0x38AA95A5C0000000
  br i1 %131, label %132, label %139

132:                                              ; preds = %103
  %133 = tail call float @sqrtf(float noundef %130) #9
  %134 = fdiv float 1.000000e+00, %133
  %135 = fmul float %119, %134
  %136 = fmul float %124, %134
  %137 = fmul float %127, %134
  %138 = fcmp oeq float %133, 0.000000e+00
  br label %139

139:                                              ; preds = %103, %132
  %140 = phi float [ %136, %132 ], [ 0.000000e+00, %103 ]
  %141 = phi float [ %135, %132 ], [ 0.000000e+00, %103 ]
  %142 = phi float [ %137, %132 ], [ 0.000000e+00, %103 ]
  %143 = phi i1 [ %138, %132 ], [ true, %103 ]
  br i1 %143, label %144, label %207

144:                                              ; preds = %139
  %145 = tail call i32 @llvm.umax.i32(i32 %44, i32 1)
  %146 = zext i32 %145 to i64
  br label %147

147:                                              ; preds = %144, %198
  %148 = phi i64 [ 0, %144 ], [ %202, %198 ]
  %149 = phi float [ %141, %144 ], [ %201, %198 ]
  %150 = phi float [ %140, %144 ], [ %200, %198 ]
  %151 = phi float [ %142, %144 ], [ %199, %198 ]
  %152 = load ptr, ptr %12, align 16, !tbaa !34
  %153 = getelementptr inbounds %struct.BMVert, ptr %152, i64 0, i32 2
  %154 = getelementptr inbounds ptr, ptr %12, i64 %148
  %155 = load ptr, ptr %154, align 8, !tbaa !34
  %156 = getelementptr inbounds %struct.BMVert, ptr %155, i64 0, i32 2
  %157 = load float, ptr %153, align 4, !tbaa !64
  %158 = load float, ptr %156, align 4, !tbaa !64
  %159 = fcmp oeq float %157, %158
  br i1 %159, label %160, label %173

160:                                              ; preds = %147
  %161 = getelementptr inbounds %struct.BMVert, ptr %152, i64 0, i32 2, i64 1
  %162 = load float, ptr %161, align 4, !tbaa !64
  %163 = getelementptr inbounds %struct.BMVert, ptr %155, i64 0, i32 2, i64 1
  %164 = load float, ptr %163, align 4, !tbaa !64
  %165 = fcmp oeq float %162, %164
  br i1 %165, label %166, label %173

166:                                              ; preds = %160
  %167 = getelementptr inbounds %struct.BMVert, ptr %152, i64 0, i32 2, i64 2
  %168 = load float, ptr %167, align 4, !tbaa !64
  %169 = getelementptr inbounds %struct.BMVert, ptr %155, i64 0, i32 2, i64 2
  %170 = load float, ptr %169, align 4, !tbaa !64
  %171 = fcmp oeq float %168, %170
  %172 = zext i1 %171 to i8
  br label %173

173:                                              ; preds = %147, %160, %166
  %174 = phi i8 [ 0, %160 ], [ 0, %147 ], [ %172, %166 ]
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %176, label %198

176:                                              ; preds = %173
  %177 = fsub float %157, %158
  %178 = getelementptr inbounds %struct.BMVert, ptr %152, i64 0, i32 2, i64 1
  %179 = load float, ptr %178, align 4, !tbaa !64
  %180 = getelementptr inbounds %struct.BMVert, ptr %155, i64 0, i32 2, i64 1
  %181 = load float, ptr %180, align 4, !tbaa !64
  %182 = fsub float %179, %181
  %183 = getelementptr inbounds %struct.BMVert, ptr %152, i64 0, i32 2, i64 2
  %184 = load float, ptr %183, align 4, !tbaa !64
  %185 = getelementptr inbounds %struct.BMVert, ptr %155, i64 0, i32 2, i64 2
  %186 = load float, ptr %185, align 4, !tbaa !64
  %187 = fsub float %184, %186
  %188 = fmul float %182, %182
  %189 = tail call float @llvm.fmuladd.f32(float %177, float %177, float %188)
  %190 = tail call float @llvm.fmuladd.f32(float %187, float %187, float %189)
  %191 = fcmp ogt float %190, 0x38AA95A5C0000000
  br i1 %191, label %192, label %198

192:                                              ; preds = %176
  %193 = tail call float @sqrtf(float noundef %190) #9
  %194 = fdiv float 1.000000e+00, %193
  %195 = fmul float %177, %194
  %196 = fmul float %182, %194
  %197 = fmul float %187, %194
  br label %198

198:                                              ; preds = %192, %176, %173
  %199 = phi float [ %151, %173 ], [ %197, %192 ], [ 0.000000e+00, %176 ]
  %200 = phi float [ %150, %173 ], [ %196, %192 ], [ 0.000000e+00, %176 ]
  %201 = phi float [ %149, %173 ], [ %195, %192 ], [ 0.000000e+00, %176 ]
  %202 = add nuw nsw i64 %148, 1
  %203 = icmp eq i64 %202, %146
  br i1 %203, label %204, label %147, !llvm.loop !92

204:                                              ; preds = %198
  %205 = trunc i64 %202 to i32
  %206 = icmp eq i32 %44, %205
  br i1 %206, label %324, label %207

207:                                              ; preds = %204, %139
  %208 = phi float [ %199, %204 ], [ %142, %139 ]
  %209 = phi float [ %200, %204 ], [ %140, %139 ]
  %210 = phi float [ %201, %204 ], [ %141, %139 ]
  call void @axis_dominant_v3_to_m3(ptr noundef nonnull %7, ptr noundef nonnull %108) #9
  br label %211

211:                                              ; preds = %211, %207
  %212 = phi i32 [ 0, %207 ], [ %220, %211 ]
  %213 = phi ptr [ %14, %207 ], [ %222, %211 ]
  %214 = getelementptr inbounds %struct.BMLoop, ptr %213, i64 0, i32 1
  %215 = load ptr, ptr %214, align 8, !tbaa !86
  %216 = getelementptr inbounds %struct.BMVert, ptr %215, i64 0, i32 3, i64 2
  store i32 %212, ptr %216, align 4, !tbaa !72
  %217 = zext i32 %212 to i64
  %218 = getelementptr inbounds [2 x float], ptr %104, i64 %217
  %219 = getelementptr inbounds %struct.BMVert, ptr %215, i64 0, i32 2
  call void @mul_v2_m3v3(ptr noundef nonnull %218, ptr noundef nonnull %7, ptr noundef nonnull %219) #9
  %220 = add i32 %212, 1
  %221 = getelementptr inbounds %struct.BMLoop, ptr %213, i64 0, i32 6
  %222 = load ptr, ptr %221, align 8, !tbaa !88
  %223 = icmp eq ptr %222, %14
  br i1 %223, label %224, label %211, !llvm.loop !93

224:                                              ; preds = %211
  %225 = call i32 @llvm.umax.i32(i32 %44, i32 1)
  %226 = zext i32 %225 to i64
  br label %227

227:                                              ; preds = %224, %227
  %228 = phi i64 [ 0, %224 ], [ %241, %227 ]
  %229 = getelementptr inbounds ptr, ptr %12, i64 %228
  %230 = load ptr, ptr %229, align 8, !tbaa !34
  %231 = getelementptr inbounds %struct.BMVert, ptr %230, i64 0, i32 2
  %232 = load float, ptr %231, align 4, !tbaa !64
  %233 = getelementptr inbounds %struct.BMVert, ptr %230, i64 0, i32 2, i64 1
  %234 = load float, ptr %233, align 4, !tbaa !64
  %235 = fmul float %209, %234
  %236 = call float @llvm.fmuladd.f32(float %210, float %232, float %235)
  %237 = getelementptr inbounds %struct.BMVert, ptr %230, i64 0, i32 2, i64 2
  %238 = load float, ptr %237, align 4, !tbaa !64
  %239 = call float @llvm.fmuladd.f32(float %208, float %238, float %236)
  %240 = getelementptr inbounds %struct.BMVert, ptr %230, i64 0, i32 3, i64 1
  store float %239, ptr %240, align 4, !tbaa !64
  %241 = add nuw nsw i64 %228, 1
  %242 = icmp eq i64 %241, %226
  br i1 %242, label %243, label %227, !llvm.loop !94

243:                                              ; preds = %227
  call void @qsort(ptr noundef nonnull %12, i64 noundef %105, i64 noundef 8, ptr noundef nonnull @bm_vert_sortval_cb) #9
  store ptr %1, ptr %107, align 16, !tbaa !34
  %244 = add i32 %44, -1
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %324, label %246

246:                                              ; preds = %243
  %247 = zext i32 %244 to i64
  br label %248

248:                                              ; preds = %246, %319
  %249 = phi i64 [ 0, %246 ], [ %256, %319 ]
  %250 = phi ptr [ undef, %246 ], [ %322, %319 ]
  %251 = phi ptr [ undef, %246 ], [ %321, %319 ]
  %252 = phi i8 [ 0, %246 ], [ %264, %319 ]
  %253 = phi i32 [ 1, %246 ], [ %320, %319 ]
  %254 = getelementptr inbounds ptr, ptr %12, i64 %249
  %255 = load ptr, ptr %254, align 8, !tbaa !34
  %256 = add nuw nsw i64 %249, 1
  %257 = getelementptr inbounds ptr, ptr %12, i64 %256
  %258 = load ptr, ptr %257, align 8, !tbaa !34
  %259 = getelementptr inbounds i8, ptr %255, i64 10
  %260 = load i16, ptr %259, align 2, !tbaa !63
  %261 = icmp eq i16 %260, 0
  %262 = icmp eq i8 %252, 0
  %263 = zext i1 %262 to i8
  %264 = select i1 %261, i8 %263, i8 %252
  %265 = icmp eq i8 %264, 0
  br i1 %265, label %319, label %266

266:                                              ; preds = %248
  %267 = icmp ne i32 %253, 0
  br i1 %267, label %268, label %289

268:                                              ; preds = %266
  %269 = zext i32 %253 to i64
  %270 = zext i32 %253 to i64
  br label %271

271:                                              ; preds = %268, %282
  %272 = phi i64 [ 0, %268 ], [ %284, %282 ]
  %273 = phi i1 [ %267, %268 ], [ %285, %282 ]
  %274 = phi ptr [ %250, %268 ], [ %283, %282 ]
  %275 = getelementptr inbounds ptr, ptr %107, i64 %272
  %276 = load ptr, ptr %275, align 8, !tbaa !34
  %277 = call ptr @BM_face_vert_share_loop(ptr noundef %276, ptr noundef %255) #9
  %278 = icmp eq ptr %277, null
  br i1 %278, label %282, label %279

279:                                              ; preds = %271
  %280 = call ptr @BM_face_vert_share_loop(ptr noundef %276, ptr noundef %258) #9
  %281 = icmp eq ptr %280, null
  br i1 %281, label %282, label %287

282:                                              ; preds = %271, %279
  %283 = phi ptr [ null, %279 ], [ %274, %271 ]
  %284 = add nuw nsw i64 %272, 1
  %285 = icmp ult i64 %284, %269
  %286 = icmp eq i64 %284, %270
  br i1 %286, label %289, label %271, !llvm.loop !95

287:                                              ; preds = %279
  %288 = trunc i64 %272 to i32
  br label %289

289:                                              ; preds = %287, %282, %266
  %290 = phi i32 [ 0, %266 ], [ %288, %287 ], [ %253, %282 ]
  %291 = phi i1 [ %267, %266 ], [ %273, %287 ], [ %285, %282 ]
  %292 = phi ptr [ %251, %266 ], [ %277, %282 ], [ %277, %287 ]
  %293 = phi ptr [ %250, %266 ], [ %280, %287 ], [ %283, %282 ]
  br i1 %291, label %294, label %319

294:                                              ; preds = %289
  %295 = getelementptr inbounds %struct.BMLoop, ptr %292, i64 0, i32 6
  %296 = load ptr, ptr %295, align 8, !tbaa !88
  %297 = icmp eq ptr %296, %293
  br i1 %297, label %303, label %298

298:                                              ; preds = %294
  %299 = getelementptr inbounds %struct.BMLoop, ptr %292, i64 0, i32 7
  %300 = load ptr, ptr %299, align 8, !tbaa !87
  %301 = icmp eq ptr %300, %293
  %302 = zext i1 %301 to i8
  br label %303

303:                                              ; preds = %294, %298
  %304 = phi i8 [ 1, %294 ], [ %302, %298 ]
  %305 = icmp eq i8 %304, 0
  br i1 %305, label %306, label %319

306:                                              ; preds = %303
  %307 = zext i32 %290 to i64
  %308 = getelementptr inbounds ptr, ptr %107, i64 %307
  %309 = load ptr, ptr %308, align 8, !tbaa !34
  %310 = call ptr @BM_face_split(ptr noundef %0, ptr noundef %309, ptr noundef %292, ptr noundef %293, ptr noundef null, ptr noundef null, i8 noundef zeroext 1) #9
  %311 = icmp eq ptr %310, null
  br i1 %311, label %319, label %312

312:                                              ; preds = %306
  %313 = load ptr, ptr %308, align 8, !tbaa !34
  %314 = icmp eq ptr %310, %313
  br i1 %314, label %319, label %315

315:                                              ; preds = %312
  %316 = add i32 %253, 1
  %317 = zext i32 %253 to i64
  %318 = getelementptr inbounds ptr, ptr %107, i64 %317
  store ptr %310, ptr %318, align 8, !tbaa !34
  br label %319

319:                                              ; preds = %289, %303, %312, %315, %306, %248
  %320 = phi i32 [ %253, %248 ], [ %253, %303 ], [ %253, %289 ], [ %316, %315 ], [ %253, %312 ], [ %253, %306 ]
  %321 = phi ptr [ %251, %248 ], [ %292, %303 ], [ %292, %289 ], [ %292, %315 ], [ %292, %312 ], [ %292, %306 ]
  %322 = phi ptr [ %250, %248 ], [ %293, %303 ], [ %293, %289 ], [ %293, %315 ], [ %293, %312 ], [ %293, %306 ]
  %323 = icmp eq i64 %256, %247
  br i1 %323, label %324, label %248, !llvm.loop !96

324:                                              ; preds = %319, %243, %204
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #9
  br label %325

325:                                              ; preds = %324, %54, %102
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #9
  ret void
}

declare void @BLI_mempool_destroy(ptr noundef) local_unnamed_addr #2

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

declare void @bmiter__loop_of_vert_begin(ptr noundef) #2

declare ptr @bmiter__loop_of_vert_step(ptr noundef) #2

declare void @bmiter__vert_of_edge_begin(ptr noundef) #2

declare ptr @bmiter__vert_of_edge_step(ptr noundef) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare ptr @BM_face_vert_share_loop(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BM_face_split(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @axis_dominant_v3_to_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_v2_m3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @bm_vert_sortval_cb(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.BMVert, ptr %3, i64 0, i32 3, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !64
  %6 = load ptr, ptr %1, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.BMVert, ptr %6, i64 0, i32 3, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !64
  %9 = fcmp ogt float %5, %8
  %10 = fcmp olt float %5, %8
  %11 = sext i1 %10 to i32
  %12 = select i1 %9, i32 1, i32 %11
  ret i32 %12
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!38 = !{!39, !40, i64 4}
!39 = !{!"BMesh", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !36, i64 28, !36, i64 29, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !40, i64 88, !40, i64 92, !40, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !40, i64 128, !35, i64 136, !41, i64 144, !41, i64 344, !41, i64 544, !41, i64 744, !42, i64 944, !40, i64 948, !40, i64 952, !40, i64 956, !43, i64 960, !35, i64 976, !43, i64 984, !35, i64 1000}
!40 = !{!"int", !36, i64 0}
!41 = !{!"CustomData", !35, i64 0, !36, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !35, i64 184, !35, i64 192}
!42 = !{!"short", !36, i64 0}
!43 = !{!"ListBase", !35, i64 0, !35, i64 8}
!44 = !{!45, !36, i64 60}
!45 = !{!"BMIter", !36, i64 0, !35, i64 40, !35, i64 48, !40, i64 56, !36, i64 60}
!46 = !{!45, !35, i64 40}
!47 = !{!45, !35, i64 48}
!48 = !{!39, !35, i64 40}
!49 = !{!36, !36, i64 0}
!50 = !{!51, !36, i64 13}
!51 = !{!"BMHeader", !35, i64 0, !40, i64 8, !36, i64 12, !36, i64 13, !36, i64 14}
!52 = !{!53, !35, i64 24}
!53 = !{!"BMEdge", !51, i64 0, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !54, i64 48, !54, i64 64}
!54 = !{!"BMDiskLink", !35, i64 0, !35, i64 8}
!55 = !{!53, !35, i64 32}
!56 = distinct !{!56, !57, !58}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!"llvm.loop.unroll.disable"}
!59 = distinct !{!59, !57, !58}
!60 = !{!39, !35, i64 56}
!61 = distinct !{!61, !57, !58}
!62 = !{!39, !35, i64 32}
!63 = !{!42, !42, i64 0}
!64 = !{!65, !65, i64 0}
!65 = !{!"float", !36, i64 0}
!66 = !{!67, !35, i64 16}
!67 = !{!"BMVert", !51, i64 0, !35, i64 16, !36, i64 24, !36, i64 36, !35, i64 48}
!68 = !{!39, !40, i64 128}
!69 = !{!70, !42, i64 0}
!70 = !{!"BMFlagLayer", !42, i64 0}
!71 = distinct !{!71, !57, !58}
!72 = !{!40, !40, i64 0}
!73 = !{!53, !35, i64 40}
!74 = !{!75, !35, i64 32}
!75 = !{!"BMLoop", !51, i64 0, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64}
!76 = !{!75, !35, i64 40}
!77 = distinct !{!77, !57, !58}
!78 = distinct !{!78, !57, !58}
!79 = distinct !{!79, !57, !58}
!80 = !{!53, !35, i64 16}
!81 = distinct !{!81, !57, !58}
!82 = distinct !{!82, !57, !58}
!83 = !{!84, !40, i64 32}
!84 = !{!"BMFace", !51, i64 0, !35, i64 16, !35, i64 24, !40, i64 32, !36, i64 36, !42, i64 48}
!85 = !{!84, !35, i64 24}
!86 = !{!75, !35, i64 16}
!87 = !{!75, !35, i64 64}
!88 = !{!75, !35, i64 56}
!89 = distinct !{!89, !57, !58}
!90 = !{!75, !35, i64 24}
!91 = !{!84, !35, i64 16}
!92 = distinct !{!92, !57, !58}
!93 = distinct !{!93, !57, !58}
!94 = distinct !{!94, !57, !58}
!95 = distinct !{!95, !57, !58}
!96 = distinct !{!96, !57, !58}
