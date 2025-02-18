; ModuleID = 'blender/source/blender/bmesh/tools/bmesh_beautify.c'
source_filename = "blender/source/blender/bmesh/tools/bmesh_beautify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.EdRotState = type { i32, i32, i32, i32 }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMFlagLayer = type { i16 }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@__func__.BM_mesh_beautify_fill = private unnamed_addr constant [22 x i8] c"BM_mesh_beautify_fill\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@__func__.erot_gset_new = private unnamed_addr constant [14 x i8] c"erot_gset_new\00", align 1

; Function Attrs: nounwind uwtable
define dso_local float @BM_verts_calc_rotate_beauty(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i16 noundef signext %4, i16 noundef signext %5) local_unnamed_addr #0 {
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [2 x float], align 4
  %10 = alloca [2 x float], align 4
  %11 = alloca [2 x float], align 4
  %12 = alloca [2 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = getelementptr inbounds float, ptr %13, i64 2
  %15 = getelementptr inbounds float, ptr %13, i64 1
  %16 = alloca [3 x float], align 4
  %17 = getelementptr inbounds float, ptr %16, i64 2
  %18 = getelementptr inbounds float, ptr %16, i64 1
  %19 = alloca [3 x float], align 4
  %20 = alloca [3 x [3 x float]], align 16
  %21 = and i16 %4, 1
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %6
  %24 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %25 = load i8, ptr %24, align 1, !tbaa !34
  %26 = getelementptr inbounds %struct.BMHeader, ptr %2, i64 0, i32 3
  %27 = load i8, ptr %26, align 1, !tbaa !34
  %28 = xor i8 %27, %25
  %29 = and i8 %28, 16
  %30 = icmp eq i8 %29, 0
  %31 = icmp eq ptr %0, %2
  %32 = or i1 %31, %30
  br i1 %32, label %267, label %35

33:                                               ; preds = %6
  %34 = icmp eq ptr %0, %2
  br i1 %34, label %267, label %35

35:                                               ; preds = %23, %33
  %36 = icmp eq i16 %5, 0
  %37 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 2
  %38 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 2
  %39 = getelementptr inbounds %struct.BMVert, ptr %2, i64 0, i32 2
  %40 = getelementptr inbounds %struct.BMVert, ptr %3, i64 0, i32 2
  br i1 %36, label %41, label %253

41:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %20) #5
  %42 = call float @normal_tri_v3(ptr noundef nonnull %13, ptr noundef nonnull %38, ptr noundef nonnull %39, ptr noundef nonnull %40) #5
  %43 = fcmp ugt float %42, 0x3E80000000000000
  %44 = call float @normal_tri_v3(ptr noundef nonnull %16, ptr noundef nonnull %38, ptr noundef nonnull %40, ptr noundef nonnull %37) #5
  %45 = fcmp ugt float %44, 0x3E80000000000000
  %46 = select i1 %43, i1 %45, i1 false
  br i1 %46, label %47, label %78

47:                                               ; preds = %41
  %48 = load float, ptr %13, align 4, !tbaa !40
  %49 = load float, ptr %16, align 4, !tbaa !40
  %50 = fadd float %48, %49
  store float %50, ptr %19, align 4, !tbaa !40
  %51 = getelementptr inbounds float, ptr %13, i64 1
  %52 = load float, ptr %51, align 4, !tbaa !40
  %53 = getelementptr inbounds float, ptr %16, i64 1
  %54 = load float, ptr %53, align 4, !tbaa !40
  %55 = fadd float %52, %54
  %56 = getelementptr inbounds float, ptr %19, i64 1
  store float %55, ptr %56, align 4, !tbaa !40
  %57 = getelementptr inbounds float, ptr %13, i64 2
  %58 = load float, ptr %57, align 4, !tbaa !40
  %59 = getelementptr inbounds float, ptr %16, i64 2
  %60 = load float, ptr %59, align 4, !tbaa !40
  %61 = fadd float %58, %60
  %62 = getelementptr inbounds float, ptr %19, i64 2
  store float %61, ptr %62, align 4, !tbaa !40
  %63 = fmul float %55, %55
  %64 = call float @llvm.fmuladd.f32(float %50, float %50, float %63)
  %65 = call float @llvm.fmuladd.f32(float %61, float %61, float %64)
  %66 = fcmp ogt float %65, 0x38AA95A5C0000000
  br i1 %66, label %67, label %77

67:                                               ; preds = %47
  %68 = call float @sqrtf(float noundef %65) #5
  %69 = fdiv float 1.000000e+00, %68
  %70 = load float, ptr %19, align 4, !tbaa !40
  %71 = fmul float %70, %69
  store float %71, ptr %19, align 4, !tbaa !40
  %72 = load float, ptr %56, align 4, !tbaa !40
  %73 = fmul float %69, %72
  store float %73, ptr %56, align 4, !tbaa !40
  %74 = load float, ptr %62, align 4, !tbaa !40
  %75 = fmul float %69, %74
  %76 = fcmp ugt float %68, 0x3E80000000000000
  store float %75, ptr %62, align 4, !tbaa !40
  br i1 %76, label %89, label %90

77:                                               ; preds = %47
  store float 0.000000e+00, ptr %19, align 4, !tbaa !40
  store float 0.000000e+00, ptr %56, align 4, !tbaa !40
  store float 0.000000e+00, ptr %62, align 4, !tbaa !40
  br label %90

78:                                               ; preds = %41
  %79 = select i1 %43, i1 true, i1 %45
  %80 = select i1 %43, ptr %13, ptr %16
  %81 = select i1 %43, ptr %15, ptr %18
  %82 = select i1 %43, ptr %14, ptr %17
  br i1 %79, label %83, label %90

83:                                               ; preds = %78
  %84 = load float, ptr %80, align 4, !tbaa !40
  store float %84, ptr %19, align 4, !tbaa !40
  %85 = load float, ptr %81, align 4, !tbaa !40
  %86 = getelementptr inbounds float, ptr %19, i64 1
  store float %85, ptr %86, align 4, !tbaa !40
  %87 = load float, ptr %82, align 4, !tbaa !40
  %88 = getelementptr inbounds float, ptr %19, i64 2
  store float %87, ptr %88, align 4, !tbaa !40
  br label %89

89:                                               ; preds = %83, %67
  call void @axis_dominant_v3_to_m3(ptr noundef nonnull %20, ptr noundef nonnull %19) #5
  call void @mul_v2_m3v3(ptr noundef nonnull %9, ptr noundef nonnull %20, ptr noundef nonnull %37) #5
  call void @mul_v2_m3v3(ptr noundef nonnull %10, ptr noundef nonnull %20, ptr noundef nonnull %38) #5
  call void @mul_v2_m3v3(ptr noundef nonnull %11, ptr noundef nonnull %20, ptr noundef nonnull %39) #5
  call void @mul_v2_m3v3(ptr noundef nonnull %12, ptr noundef nonnull %20, ptr noundef nonnull %40) #5
  br label %90

90:                                               ; preds = %78, %77, %89, %67
  %91 = phi i1 [ true, %89 ], [ false, %67 ], [ false, %77 ], [ false, %78 ]
  %92 = phi i32 [ 0, %89 ], [ 2, %67 ], [ 2, %77 ], [ 2, %78 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %20) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #5
  br i1 %91, label %93, label %248

93:                                               ; preds = %90
  br i1 %46, label %94, label %97

94:                                               ; preds = %93
  %95 = call zeroext i8 @is_quad_convex_v2(ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12) #5
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %248, label %137

97:                                               ; preds = %93
  %98 = load float, ptr %9, align 4, !tbaa !40
  %99 = load float, ptr %10, align 4, !tbaa !40
  %100 = fsub float %98, %99
  %101 = getelementptr inbounds float, ptr %10, i64 1
  %102 = load float, ptr %101, align 4, !tbaa !40
  %103 = getelementptr inbounds float, ptr %11, i64 1
  %104 = load float, ptr %103, align 4, !tbaa !40
  %105 = fsub float %102, %104
  %106 = getelementptr inbounds float, ptr %9, i64 1
  %107 = load float, ptr %106, align 4, !tbaa !40
  %108 = fsub float %107, %102
  %109 = load float, ptr %11, align 4, !tbaa !40
  %110 = fsub float %109, %99
  %111 = fmul float %108, %110
  %112 = call float @llvm.fmuladd.f32(float %100, float %105, float %111)
  %113 = fmul float %112, 5.000000e-01
  %114 = fsub float %98, %109
  %115 = getelementptr inbounds float, ptr %12, i64 1
  %116 = load float, ptr %115, align 4, !tbaa !40
  %117 = fsub float %104, %116
  %118 = fsub float %107, %104
  %119 = load float, ptr %12, align 4, !tbaa !40
  %120 = fsub float %119, %109
  %121 = fmul float %118, %120
  %122 = call float @llvm.fmuladd.f32(float %114, float %117, float %121)
  %123 = fmul float %122, 5.000000e-01
  %124 = call float @llvm.fabs.f32(float %113)
  %125 = fcmp ugt float %124, 0x3E80000000000000
  %126 = call float @llvm.fabs.f32(float %123)
  %127 = fcmp ugt float %126, 0x3E80000000000000
  %128 = select i1 %125, i1 %127, i1 false
  br i1 %128, label %129, label %134

129:                                              ; preds = %97
  %130 = fcmp oge float %113, 0.000000e+00
  %131 = fcmp ult float %123, 0.000000e+00
  %132 = xor i1 %130, %131
  %133 = select i1 %132, i32 0, i32 2
  br label %134

134:                                              ; preds = %129, %97
  %135 = phi i1 [ false, %97 ], [ %132, %129 ]
  %136 = phi i32 [ 2, %97 ], [ %133, %129 ]
  br i1 %135, label %137, label %248

137:                                              ; preds = %134, %94
  %138 = load float, ptr %9, align 4, !tbaa !40
  %139 = load float, ptr %10, align 4, !tbaa !40
  %140 = fsub float %138, %139
  %141 = getelementptr inbounds float, ptr %9, i64 1
  %142 = load float, ptr %141, align 4, !tbaa !40
  %143 = getelementptr inbounds float, ptr %10, i64 1
  %144 = load float, ptr %143, align 4, !tbaa !40
  %145 = fsub float %142, %144
  %146 = fmul float %145, %145
  %147 = call float @llvm.fmuladd.f32(float %140, float %140, float %146)
  %148 = call float @sqrtf(float noundef %147) #5
  %149 = load float, ptr %10, align 4, !tbaa !40
  %150 = load float, ptr %11, align 4, !tbaa !40
  %151 = fsub float %149, %150
  %152 = load float, ptr %143, align 4, !tbaa !40
  %153 = getelementptr inbounds float, ptr %11, i64 1
  %154 = load float, ptr %153, align 4, !tbaa !40
  %155 = fsub float %152, %154
  %156 = fmul float %155, %155
  %157 = call float @llvm.fmuladd.f32(float %151, float %151, float %156)
  %158 = call float @sqrtf(float noundef %157) #5
  %159 = load float, ptr %11, align 4, !tbaa !40
  %160 = load float, ptr %12, align 4, !tbaa !40
  %161 = fsub float %159, %160
  %162 = load float, ptr %153, align 4, !tbaa !40
  %163 = getelementptr inbounds float, ptr %12, i64 1
  %164 = load float, ptr %163, align 4, !tbaa !40
  %165 = fsub float %162, %164
  %166 = fmul float %165, %165
  %167 = call float @llvm.fmuladd.f32(float %161, float %161, float %166)
  %168 = call float @sqrtf(float noundef %167) #5
  %169 = load float, ptr %12, align 4, !tbaa !40
  %170 = load float, ptr %9, align 4, !tbaa !40
  %171 = fsub float %169, %170
  %172 = load float, ptr %163, align 4, !tbaa !40
  %173 = load float, ptr %141, align 4, !tbaa !40
  %174 = fsub float %172, %173
  %175 = fmul float %174, %174
  %176 = call float @llvm.fmuladd.f32(float %171, float %171, float %175)
  %177 = call float @sqrtf(float noundef %176) #5
  %178 = load float, ptr %9, align 4, !tbaa !40
  %179 = load float, ptr %11, align 4, !tbaa !40
  %180 = fsub float %178, %179
  %181 = load float, ptr %141, align 4, !tbaa !40
  %182 = load float, ptr %153, align 4, !tbaa !40
  %183 = fsub float %181, %182
  %184 = fmul float %183, %183
  %185 = call float @llvm.fmuladd.f32(float %180, float %180, float %184)
  %186 = call float @sqrtf(float noundef %185) #5
  %187 = load float, ptr %10, align 4, !tbaa !40
  %188 = load float, ptr %12, align 4, !tbaa !40
  %189 = fsub float %187, %188
  %190 = load float, ptr %143, align 4, !tbaa !40
  %191 = load float, ptr %163, align 4, !tbaa !40
  %192 = fsub float %190, %191
  %193 = fmul float %192, %192
  %194 = call float @llvm.fmuladd.f32(float %189, float %189, float %193)
  %195 = call float @sqrtf(float noundef %194) #5
  %196 = load float, ptr %10, align 4, !tbaa !40
  %197 = load float, ptr %11, align 4, !tbaa !40
  %198 = fsub float %196, %197
  %199 = load float, ptr %153, align 4, !tbaa !40
  %200 = load float, ptr %163, align 4, !tbaa !40
  %201 = fsub float %199, %200
  %202 = load float, ptr %143, align 4, !tbaa !40
  %203 = fsub float %202, %199
  %204 = load float, ptr %12, align 4, !tbaa !40
  %205 = fsub float %204, %197
  %206 = fmul float %203, %205
  %207 = call float @llvm.fmuladd.f32(float %198, float %201, float %206)
  %208 = fmul float %207, 5.000000e-01
  %209 = call float @llvm.fabs.f32(float %208)
  %210 = fsub float %196, %204
  %211 = load float, ptr %141, align 4, !tbaa !40
  %212 = fsub float %200, %211
  %213 = fsub float %202, %200
  %214 = load float, ptr %9, align 4, !tbaa !40
  %215 = fsub float %214, %204
  %216 = fmul float %213, %215
  %217 = call float @llvm.fmuladd.f32(float %210, float %212, float %216)
  %218 = fmul float %217, 5.000000e-01
  %219 = call float @llvm.fabs.f32(float %218)
  %220 = fadd float %158, %168
  %221 = fadd float %220, %195
  %222 = fadd float %177, %195
  %223 = fadd float %148, %222
  %224 = fdiv float %209, %221
  %225 = fdiv float %219, %223
  %226 = fadd float %224, %225
  %227 = fsub float %214, %196
  %228 = fsub float %211, %202
  %229 = fsub float %197, %196
  %230 = fmul float %229, %228
  %231 = call float @llvm.fmuladd.f32(float %227, float %203, float %230)
  %232 = fmul float %231, 5.000000e-01
  %233 = call float @llvm.fabs.f32(float %232)
  %234 = fsub float %214, %197
  %235 = fsub float %211, %199
  %236 = fmul float %205, %235
  %237 = call float @llvm.fmuladd.f32(float %234, float %201, float %236)
  %238 = fmul float %237, 5.000000e-01
  %239 = call float @llvm.fabs.f32(float %238)
  %240 = fadd float %148, %158
  %241 = fadd float %240, %186
  %242 = fadd float %168, %177
  %243 = fadd float %242, %186
  %244 = fdiv float %233, %241
  %245 = fdiv float %239, %243
  %246 = fadd float %244, %245
  %247 = fsub float %226, %246
  br label %248

248:                                              ; preds = %90, %94, %134, %137
  %249 = phi i32 [ 1, %137 ], [ %136, %134 ], [ %92, %90 ], [ 2, %94 ]
  %250 = phi float [ %247, %137 ], [ undef, %134 ], [ undef, %90 ], [ undef, %94 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #5
  %251 = icmp eq i32 %249, 2
  %252 = select i1 %251, float 0x47EFFFFFE0000000, float %250
  br label %267

253:                                              ; preds = %35
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #5
  %254 = call float @normal_tri_v3(ptr noundef nonnull %7, ptr noundef nonnull %38, ptr noundef nonnull %39, ptr noundef nonnull %40) #5
  %255 = call float @normal_tri_v3(ptr noundef nonnull %8, ptr noundef nonnull %38, ptr noundef nonnull %40, ptr noundef nonnull %37) #5
  %256 = call float @angle_normalized_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %8) #5
  %257 = call float @normal_tri_v3(ptr noundef nonnull %7, ptr noundef nonnull %37, ptr noundef nonnull %38, ptr noundef nonnull %39) #5
  %258 = fcmp oeq float %257, 0.000000e+00
  br i1 %258, label %265, label %259

259:                                              ; preds = %253
  %260 = call float @normal_tri_v3(ptr noundef nonnull %8, ptr noundef nonnull %37, ptr noundef nonnull %39, ptr noundef nonnull %40) #5
  %261 = fcmp oeq float %260, 0.000000e+00
  br i1 %261, label %265, label %262

262:                                              ; preds = %259
  %263 = call float @angle_normalized_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %8) #5
  %264 = fsub float %263, %256
  br label %265

265:                                              ; preds = %253, %259, %262
  %266 = phi float [ %264, %262 ], [ 0x47EFFFFFE0000000, %259 ], [ 0x47EFFFFFE0000000, %253 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #5
  br label %267

267:                                              ; preds = %23, %33, %265, %248
  %268 = phi float [ %252, %248 ], [ %266, %265 ], [ 0x47EFFFFFE0000000, %33 ], [ 0x47EFFFFFE0000000, %23 ]
  ret float %268
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @BM_mesh_beautify_fill(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, i16 noundef signext %3, i16 noundef signext %4, i16 noundef signext %5, i16 noundef signext %6) local_unnamed_addr #0 {
  %8 = alloca %struct.EdRotState, align 4
  %9 = alloca [4 x ptr], align 16
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %11 = sext i32 %2 to i64
  %12 = shl nsw i64 %11, 3
  %13 = tail call ptr %10(i64 noundef %12, ptr noundef nonnull @__func__.BM_mesh_beautify_fill) #5
  %14 = tail call ptr @BLI_mempool_create(i32 noundef 16, i32 noundef 0, i32 noundef 512, i32 noundef 0) #5
  %15 = tail call ptr @BLI_heap_new_ex(i32 noundef %2) #5
  %16 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %17 = tail call ptr %16(i64 noundef %12, ptr noundef nonnull @__func__.BM_mesh_beautify_fill) #5
  %18 = icmp sgt i32 %2, 0
  br i1 %18, label %19, label %54

19:                                               ; preds = %7
  %20 = zext nneg i32 %2 to i64
  br label %21

21:                                               ; preds = %19, %47
  %22 = phi i64 [ 0, %19 ], [ %52, %47 ]
  %23 = getelementptr inbounds ptr, ptr %1, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !42
  %25 = getelementptr inbounds %struct.BMEdge, ptr %24, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !43
  %27 = getelementptr inbounds %struct.BMLoop, ptr %26, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !46
  %29 = getelementptr inbounds %struct.BMLoop, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !48
  %31 = getelementptr inbounds %struct.BMLoop, ptr %26, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !48
  %33 = getelementptr inbounds %struct.BMLoop, ptr %26, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !49
  %35 = getelementptr inbounds %struct.BMLoop, ptr %34, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !46
  %37 = getelementptr inbounds %struct.BMLoop, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !48
  %39 = getelementptr inbounds %struct.BMLoop, ptr %26, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !50
  %41 = getelementptr inbounds %struct.BMLoop, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !48
  %43 = tail call float @BM_verts_calc_rotate_beauty(ptr noundef %30, ptr noundef %32, ptr noundef %38, ptr noundef %42, i16 noundef signext %3, i16 noundef signext %4)
  %44 = fcmp olt float %43, 0.000000e+00
  br i1 %44, label %45, label %47

45:                                               ; preds = %21
  %46 = tail call ptr @BLI_heap_insert(ptr noundef %15, float noundef %43, ptr noundef %24) #5
  br label %47

47:                                               ; preds = %21, %45
  %48 = phi ptr [ %46, %45 ], [ null, %21 ]
  %49 = getelementptr inbounds ptr, ptr %17, i64 %22
  store ptr %48, ptr %49, align 8, !tbaa !42
  %50 = getelementptr inbounds %struct.BMHeader, ptr %24, i64 0, i32 1
  %51 = trunc i64 %22 to i32
  store i32 %51, ptr %50, align 8, !tbaa !51
  %52 = add nuw nsw i64 %22, 1
  %53 = icmp eq i64 %52, %20
  br i1 %53, label %54, label %21, !llvm.loop !52

54:                                               ; preds = %47, %7
  %55 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %56 = load i8, ptr %55, align 4, !tbaa !55
  %57 = or i8 %56, 2
  store i8 %57, ptr %55, align 4, !tbaa !55
  %58 = tail call zeroext i8 @BLI_heap_is_empty(ptr noundef %15) #5
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %263

60:                                               ; preds = %54
  %61 = getelementptr inbounds ptr, ptr %9, i64 1
  %62 = getelementptr inbounds ptr, ptr %9, i64 2
  %63 = getelementptr inbounds ptr, ptr %9, i64 3
  %64 = getelementptr inbounds %struct.EdRotState, ptr %8, i64 0, i32 2
  %65 = getelementptr inbounds %struct.EdRotState, ptr %8, i64 0, i32 3
  %66 = getelementptr inbounds i32, ptr %8, i64 1
  %67 = icmp eq i16 %5, 0
  %68 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %69 = icmp eq i16 %6, 0
  %70 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %71

71:                                               ; preds = %60, %260
  %72 = call ptr @BLI_heap_popmin(ptr noundef %15) #5
  %73 = getelementptr inbounds %struct.BMHeader, ptr %72, i64 0, i32 1
  %74 = load i32, ptr %73, align 8, !tbaa !51
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds ptr, ptr %17, i64 %75
  store ptr null, ptr %76, align 8, !tbaa !42
  %77 = call ptr @BM_edge_rotate(ptr noundef %0, ptr noundef %72, i8 noundef zeroext 0, i16 noundef signext 1) #5
  %78 = icmp eq ptr %77, null
  br i1 %78, label %260, label %79

79:                                               ; preds = %71
  %80 = getelementptr inbounds ptr, ptr %13, i64 %75
  %81 = load ptr, ptr %80, align 8, !tbaa !42
  %82 = call ptr @BLI_mempool_alloc(ptr noundef %14) #5
  %83 = getelementptr inbounds %struct.EdRotState, ptr %82, i64 0, i32 2
  %84 = getelementptr inbounds %struct.BMEdge, ptr %77, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !60
  %86 = getelementptr inbounds %struct.BMHeader, ptr %85, i64 0, i32 1
  %87 = load i32, ptr %86, align 8, !tbaa !51
  store i32 %87, ptr %82, align 4, !tbaa !61
  %88 = getelementptr inbounds %struct.BMEdge, ptr %77, i64 0, i32 3
  %89 = load ptr, ptr %88, align 8, !tbaa !62
  %90 = getelementptr inbounds %struct.BMHeader, ptr %89, i64 0, i32 1
  %91 = load i32, ptr %90, align 8, !tbaa !51
  %92 = getelementptr inbounds i32, ptr %82, i64 1
  store i32 %91, ptr %92, align 4, !tbaa !61
  %93 = icmp sgt i32 %87, %91
  br i1 %93, label %94, label %95

94:                                               ; preds = %79
  store i32 %91, ptr %82, align 4, !tbaa !61
  store i32 %87, ptr %92, align 4, !tbaa !61
  br label %95

95:                                               ; preds = %94, %79
  %96 = getelementptr inbounds %struct.BMEdge, ptr %77, i64 0, i32 4
  %97 = load ptr, ptr %96, align 8, !tbaa !43
  %98 = getelementptr inbounds %struct.BMLoop, ptr %97, i64 0, i32 7
  %99 = load ptr, ptr %98, align 8, !tbaa !46
  %100 = getelementptr inbounds %struct.BMLoop, ptr %99, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !48
  %102 = getelementptr inbounds %struct.BMHeader, ptr %101, i64 0, i32 1
  %103 = load i32, ptr %102, align 8, !tbaa !51
  store i32 %103, ptr %83, align 4, !tbaa !61
  %104 = getelementptr inbounds %struct.BMLoop, ptr %97, i64 0, i32 4
  %105 = load ptr, ptr %104, align 8, !tbaa !49
  %106 = getelementptr inbounds %struct.BMLoop, ptr %105, i64 0, i32 7
  %107 = load ptr, ptr %106, align 8, !tbaa !46
  %108 = getelementptr inbounds %struct.BMLoop, ptr %107, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !48
  %110 = getelementptr inbounds %struct.BMHeader, ptr %109, i64 0, i32 1
  %111 = load i32, ptr %110, align 8, !tbaa !51
  %112 = getelementptr inbounds %struct.EdRotState, ptr %82, i64 0, i32 3
  store i32 %111, ptr %112, align 4, !tbaa !61
  %113 = icmp sgt i32 %103, %111
  br i1 %113, label %114, label %115

114:                                              ; preds = %95
  store i32 %111, ptr %83, align 4, !tbaa !61
  store i32 %103, ptr %112, align 4, !tbaa !61
  br label %115

115:                                              ; preds = %95, %114
  %116 = icmp eq ptr %81, null
  br i1 %116, label %117, label %119

117:                                              ; preds = %115
  %118 = call ptr @BLI_gset_new(ptr noundef nonnull @BLI_ghashutil_uinthash_v4, ptr noundef nonnull @BLI_ghashutil_uinthash_v4_cmp, ptr noundef nonnull @__func__.erot_gset_new) #5
  store ptr %118, ptr %80, align 8, !tbaa !42
  br label %119

119:                                              ; preds = %117, %115
  %120 = phi ptr [ %118, %117 ], [ %81, %115 ]
  call void @BLI_gset_insert(ptr noundef %120, ptr noundef nonnull %82) #5
  %121 = getelementptr inbounds ptr, ptr %1, i64 %75
  store ptr %77, ptr %121, align 8, !tbaa !42
  %122 = getelementptr inbounds %struct.BMHeader, ptr %77, i64 0, i32 1
  store i32 %74, ptr %122, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #5
  %123 = load ptr, ptr %96, align 8, !tbaa !43
  %124 = getelementptr inbounds %struct.BMLoop, ptr %123, i64 0, i32 6
  %125 = load ptr, ptr %124, align 8, !tbaa !50
  %126 = getelementptr inbounds %struct.BMLoop, ptr %125, i64 0, i32 2
  %127 = load ptr, ptr %126, align 8, !tbaa !63
  store ptr %127, ptr %9, align 16, !tbaa !42
  %128 = getelementptr inbounds %struct.BMLoop, ptr %123, i64 0, i32 7
  %129 = load ptr, ptr %128, align 8, !tbaa !46
  %130 = getelementptr inbounds %struct.BMLoop, ptr %129, i64 0, i32 2
  %131 = load ptr, ptr %130, align 8, !tbaa !63
  store ptr %131, ptr %61, align 8, !tbaa !42
  %132 = getelementptr inbounds %struct.BMLoop, ptr %123, i64 0, i32 4
  %133 = load ptr, ptr %132, align 8, !tbaa !49
  %134 = getelementptr inbounds %struct.BMLoop, ptr %133, i64 0, i32 6
  %135 = load ptr, ptr %134, align 8, !tbaa !50
  %136 = getelementptr inbounds %struct.BMLoop, ptr %135, i64 0, i32 2
  %137 = load ptr, ptr %136, align 8, !tbaa !63
  store ptr %137, ptr %62, align 16, !tbaa !42
  %138 = getelementptr inbounds %struct.BMLoop, ptr %133, i64 0, i32 7
  %139 = load ptr, ptr %138, align 8, !tbaa !46
  %140 = getelementptr inbounds %struct.BMLoop, ptr %139, i64 0, i32 2
  %141 = load ptr, ptr %140, align 8, !tbaa !63
  store ptr %141, ptr %63, align 8, !tbaa !42
  br label %142

142:                                              ; preds = %119, %224
  %143 = phi i64 [ 0, %119 ], [ %225, %224 ]
  %144 = getelementptr inbounds [4 x ptr], ptr %9, i64 0, i64 %143
  %145 = load ptr, ptr %144, align 8, !tbaa !42
  %146 = getelementptr inbounds %struct.BMHeader, ptr %145, i64 0, i32 1
  %147 = load i32, ptr %146, align 8, !tbaa !51
  %148 = icmp sgt i32 %147, -1
  %149 = icmp slt i32 %147, %2
  %150 = and i1 %148, %149
  br i1 %150, label %151, label %224

151:                                              ; preds = %142
  %152 = zext nneg i32 %147 to i64
  %153 = getelementptr inbounds ptr, ptr %1, i64 %152
  %154 = load ptr, ptr %153, align 8, !tbaa !42
  %155 = icmp eq ptr %154, %145
  br i1 %155, label %156, label %224

156:                                              ; preds = %151
  %157 = sext i32 %147 to i64
  %158 = getelementptr inbounds ptr, ptr %13, i64 %157
  %159 = load ptr, ptr %158, align 8, !tbaa !42
  %160 = getelementptr inbounds ptr, ptr %17, i64 %157
  %161 = load ptr, ptr %160, align 8, !tbaa !42
  %162 = icmp eq ptr %161, null
  br i1 %162, label %164, label %163

163:                                              ; preds = %156
  call void @BLI_heap_remove(ptr noundef %15, ptr noundef nonnull %161) #5
  store ptr null, ptr %160, align 8, !tbaa !42
  br label %164

164:                                              ; preds = %163, %156
  %165 = icmp eq ptr %159, null
  br i1 %165, label %199, label %166

166:                                              ; preds = %164
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #5
  %167 = getelementptr inbounds %struct.BMEdge, ptr %145, i64 0, i32 2
  %168 = load ptr, ptr %167, align 8, !tbaa !60
  %169 = getelementptr inbounds %struct.BMHeader, ptr %168, i64 0, i32 1
  %170 = load i32, ptr %169, align 8, !tbaa !51
  store i32 %170, ptr %64, align 4, !tbaa !61
  %171 = getelementptr inbounds %struct.BMEdge, ptr %145, i64 0, i32 3
  %172 = load ptr, ptr %171, align 8, !tbaa !62
  %173 = getelementptr inbounds %struct.BMHeader, ptr %172, i64 0, i32 1
  %174 = load i32, ptr %173, align 8, !tbaa !51
  store i32 %174, ptr %65, align 4, !tbaa !61
  %175 = icmp sgt i32 %170, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %166
  store i32 %174, ptr %64, align 4, !tbaa !61
  store i32 %170, ptr %65, align 4, !tbaa !61
  br label %177

177:                                              ; preds = %176, %166
  %178 = getelementptr inbounds %struct.BMEdge, ptr %145, i64 0, i32 4
  %179 = load ptr, ptr %178, align 8, !tbaa !43
  %180 = getelementptr inbounds %struct.BMLoop, ptr %179, i64 0, i32 7
  %181 = load ptr, ptr %180, align 8, !tbaa !46
  %182 = getelementptr inbounds %struct.BMLoop, ptr %181, i64 0, i32 1
  %183 = load ptr, ptr %182, align 8, !tbaa !48
  %184 = getelementptr inbounds %struct.BMHeader, ptr %183, i64 0, i32 1
  %185 = load i32, ptr %184, align 8, !tbaa !51
  store i32 %185, ptr %8, align 4, !tbaa !61
  %186 = getelementptr inbounds %struct.BMLoop, ptr %179, i64 0, i32 4
  %187 = load ptr, ptr %186, align 8, !tbaa !49
  %188 = getelementptr inbounds %struct.BMLoop, ptr %187, i64 0, i32 7
  %189 = load ptr, ptr %188, align 8, !tbaa !46
  %190 = getelementptr inbounds %struct.BMLoop, ptr %189, i64 0, i32 1
  %191 = load ptr, ptr %190, align 8, !tbaa !48
  %192 = getelementptr inbounds %struct.BMHeader, ptr %191, i64 0, i32 1
  %193 = load i32, ptr %192, align 8, !tbaa !51
  store i32 %193, ptr %66, align 4, !tbaa !61
  %194 = icmp sgt i32 %185, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %177
  store i32 %193, ptr %8, align 4, !tbaa !61
  store i32 %185, ptr %66, align 4, !tbaa !61
  br label %196

196:                                              ; preds = %195, %177
  %197 = call zeroext i8 @BLI_gset_haskey(ptr noundef nonnull %159, ptr noundef nonnull %8) #5
  %198 = icmp eq i8 %197, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #5
  br i1 %198, label %199, label %224

199:                                              ; preds = %196, %164
  %200 = getelementptr inbounds %struct.BMEdge, ptr %145, i64 0, i32 4
  %201 = load ptr, ptr %200, align 8, !tbaa !43
  %202 = getelementptr inbounds %struct.BMLoop, ptr %201, i64 0, i32 7
  %203 = load ptr, ptr %202, align 8, !tbaa !46
  %204 = getelementptr inbounds %struct.BMLoop, ptr %203, i64 0, i32 1
  %205 = load ptr, ptr %204, align 8, !tbaa !48
  %206 = getelementptr inbounds %struct.BMLoop, ptr %201, i64 0, i32 1
  %207 = load ptr, ptr %206, align 8, !tbaa !48
  %208 = getelementptr inbounds %struct.BMLoop, ptr %201, i64 0, i32 4
  %209 = load ptr, ptr %208, align 8, !tbaa !49
  %210 = getelementptr inbounds %struct.BMLoop, ptr %209, i64 0, i32 7
  %211 = load ptr, ptr %210, align 8, !tbaa !46
  %212 = getelementptr inbounds %struct.BMLoop, ptr %211, i64 0, i32 1
  %213 = load ptr, ptr %212, align 8, !tbaa !48
  %214 = getelementptr inbounds %struct.BMLoop, ptr %201, i64 0, i32 6
  %215 = load ptr, ptr %214, align 8, !tbaa !50
  %216 = getelementptr inbounds %struct.BMLoop, ptr %215, i64 0, i32 1
  %217 = load ptr, ptr %216, align 8, !tbaa !48
  %218 = call float @BM_verts_calc_rotate_beauty(ptr noundef %205, ptr noundef %207, ptr noundef %213, ptr noundef %217, i16 noundef signext %3, i16 noundef signext %4)
  %219 = fcmp olt float %218, 0.000000e+00
  br i1 %219, label %220, label %222

220:                                              ; preds = %199
  %221 = call ptr @BLI_heap_insert(ptr noundef %15, float noundef %218, ptr noundef %145) #5
  br label %222

222:                                              ; preds = %220, %199
  %223 = phi ptr [ %221, %220 ], [ null, %199 ]
  store ptr %223, ptr %160, align 8, !tbaa !42
  br label %224

224:                                              ; preds = %222, %196, %151, %142
  %225 = add nuw nsw i64 %143, 1
  %226 = icmp eq i64 %225, 4
  br i1 %226, label %227, label %142, !llvm.loop !64

227:                                              ; preds = %224
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #5
  br i1 %67, label %237, label %228

228:                                              ; preds = %227
  %229 = getelementptr inbounds %struct.BMEdge, ptr %77, i64 0, i32 1
  %230 = load ptr, ptr %229, align 8, !tbaa !65
  %231 = load i32, ptr %68, align 8, !tbaa !66
  %232 = sext i32 %231 to i64
  %233 = getelementptr %struct.BMFlagLayer, ptr %230, i64 %232
  %234 = getelementptr %struct.BMFlagLayer, ptr %233, i64 -1
  %235 = load i16, ptr %234, align 2, !tbaa !67
  %236 = or i16 %235, %5
  store i16 %236, ptr %234, align 2, !tbaa !67
  br label %237

237:                                              ; preds = %228, %227
  br i1 %69, label %260, label %238

238:                                              ; preds = %237
  %239 = load ptr, ptr %96, align 8, !tbaa !43
  %240 = getelementptr inbounds %struct.BMLoop, ptr %239, i64 0, i32 3
  %241 = load ptr, ptr %240, align 8, !tbaa !69
  %242 = getelementptr inbounds %struct.BMFace, ptr %241, i64 0, i32 1
  %243 = load ptr, ptr %242, align 8, !tbaa !70
  %244 = load i32, ptr %70, align 8, !tbaa !66
  %245 = sext i32 %244 to i64
  %246 = getelementptr %struct.BMFlagLayer, ptr %243, i64 %245
  %247 = getelementptr %struct.BMFlagLayer, ptr %246, i64 -1
  %248 = load i16, ptr %247, align 2, !tbaa !67
  %249 = or i16 %248, %6
  store i16 %249, ptr %247, align 2, !tbaa !67
  %250 = getelementptr inbounds %struct.BMLoop, ptr %239, i64 0, i32 4
  %251 = load ptr, ptr %250, align 8, !tbaa !49
  %252 = getelementptr inbounds %struct.BMLoop, ptr %251, i64 0, i32 3
  %253 = load ptr, ptr %252, align 8, !tbaa !69
  %254 = getelementptr inbounds %struct.BMFace, ptr %253, i64 0, i32 1
  %255 = load ptr, ptr %254, align 8, !tbaa !70
  %256 = getelementptr %struct.BMFlagLayer, ptr %255, i64 %245
  %257 = getelementptr %struct.BMFlagLayer, ptr %256, i64 -1
  %258 = load i16, ptr %257, align 2, !tbaa !67
  %259 = or i16 %258, %6
  store i16 %259, ptr %257, align 2, !tbaa !67
  br label %260

260:                                              ; preds = %237, %238, %71
  %261 = call zeroext i8 @BLI_heap_is_empty(ptr noundef %15) #5
  %262 = icmp eq i8 %261, 0
  br i1 %262, label %71, label %263, !llvm.loop !72

263:                                              ; preds = %260, %54
  call void @BLI_heap_free(ptr noundef %15, ptr noundef null) #5
  %264 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %264(ptr noundef %17) #5
  %265 = icmp sgt i32 %2, 0
  br i1 %265, label %266, label %277

266:                                              ; preds = %263
  %267 = zext nneg i32 %2 to i64
  br label %268

268:                                              ; preds = %266, %274
  %269 = phi i64 [ 0, %266 ], [ %275, %274 ]
  %270 = getelementptr inbounds ptr, ptr %13, i64 %269
  %271 = load ptr, ptr %270, align 8, !tbaa !42
  %272 = icmp eq ptr %271, null
  br i1 %272, label %274, label %273

273:                                              ; preds = %268
  call void @BLI_gset_free(ptr noundef nonnull %271, ptr noundef null) #5
  br label %274

274:                                              ; preds = %268, %273
  %275 = add nuw nsw i64 %269, 1
  %276 = icmp eq i64 %275, %267
  br i1 %276, label %277, label %268, !llvm.loop !73

277:                                              ; preds = %274, %263
  %278 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %278(ptr noundef %13) #5
  call void @BLI_mempool_destroy(ptr noundef %14) #5
  ret void
}

declare ptr @BLI_mempool_create(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BLI_heap_new_ex(i32 noundef) local_unnamed_addr #2

declare ptr @BLI_heap_insert(ptr noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_heap_is_empty(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_heap_popmin(ptr noundef) local_unnamed_addr #2

declare ptr @BM_edge_rotate(ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

declare ptr @BLI_mempool_alloc(ptr noundef) local_unnamed_addr #2

declare void @BLI_gset_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_heap_free(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_gset_free(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_mempool_destroy(ptr noundef) local_unnamed_addr #2

declare float @normal_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @axis_dominant_v3_to_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_v2_m3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @is_quad_convex_v2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

declare float @angle_normalized_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_gset_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BLI_ghashutil_uinthash_v4(ptr noundef) #2

declare zeroext i8 @BLI_ghashutil_uinthash_v4_cmp(ptr noundef, ptr noundef) #2

declare void @BLI_heap_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_gset_haskey(ptr noundef, ptr noundef) local_unnamed_addr #2

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
!34 = !{!35, !37, i64 13}
!35 = !{!"BMHeader", !36, i64 0, !39, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!41, !41, i64 0}
!41 = !{!"float", !37, i64 0}
!42 = !{!36, !36, i64 0}
!43 = !{!44, !36, i64 40}
!44 = !{!"BMEdge", !35, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !45, i64 48, !45, i64 64}
!45 = !{!"BMDiskLink", !36, i64 0, !36, i64 8}
!46 = !{!47, !36, i64 64}
!47 = !{!"BMLoop", !35, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64}
!48 = !{!47, !36, i64 16}
!49 = !{!47, !36, i64 40}
!50 = !{!47, !36, i64 56}
!51 = !{!35, !39, i64 8}
!52 = distinct !{!52, !53, !54}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!"llvm.loop.unroll.disable"}
!55 = !{!56, !37, i64 28}
!56 = !{!"BMesh", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !37, i64 28, !37, i64 29, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !39, i64 88, !39, i64 92, !39, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 136, !57, i64 144, !57, i64 344, !57, i64 544, !57, i64 744, !58, i64 944, !39, i64 948, !39, i64 952, !39, i64 956, !59, i64 960, !36, i64 976, !59, i64 984, !36, i64 1000}
!57 = !{!"CustomData", !36, i64 0, !37, i64 8, !39, i64 172, !39, i64 176, !39, i64 180, !36, i64 184, !36, i64 192}
!58 = !{!"short", !37, i64 0}
!59 = !{!"ListBase", !36, i64 0, !36, i64 8}
!60 = !{!44, !36, i64 24}
!61 = !{!39, !39, i64 0}
!62 = !{!44, !36, i64 32}
!63 = !{!47, !36, i64 24}
!64 = distinct !{!64, !53, !54}
!65 = !{!44, !36, i64 16}
!66 = !{!56, !39, i64 128}
!67 = !{!68, !58, i64 0}
!68 = !{!"BMFlagLayer", !58, i64 0}
!69 = !{!47, !36, i64 32}
!70 = !{!71, !36, i64 16}
!71 = !{!"BMFace", !35, i64 0, !36, i64 16, !36, i64 24, !39, i64 32, !37, i64 36, !58, i64 48}
!72 = distinct !{!72, !53, !54}
!73 = distinct !{!73, !53, !54}
