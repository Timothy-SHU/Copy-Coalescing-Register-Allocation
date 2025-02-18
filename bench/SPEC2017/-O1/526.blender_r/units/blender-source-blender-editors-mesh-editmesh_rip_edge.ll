; ModuleID = 'blender/source/blender/editors/mesh/editmesh_rip_edge.c'
source_filename = "blender/source/blender/editors/mesh/editmesh_rip_edge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ListBase = type { ptr, ptr }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }

@.str = private unnamed_addr constant [16 x i8] c"Extend Vertices\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"MESH_OT_rip_edge\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"Extend vertices along the edge closest to the cursor\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @MESH_OT_rip_edge(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @edbm_rip_edge_invoke, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @EDBM_view3d_poll, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  tail call void @Transform_Properties(ptr noundef nonnull %0, i32 noundef 515) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_rip_edge_invoke(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca [2 x float], align 4
  %6 = alloca [2 x float], align 4
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [2 x float], align 4
  %9 = alloca %struct.BMIter, align 8
  %10 = alloca [2 x [2 x float]], align 16
  %11 = alloca [2 x float], align 4
  %12 = alloca %struct.BMIter, align 8
  %13 = alloca [2 x float], align 4
  %14 = alloca [2 x float], align 4
  %15 = alloca [2 x float], align 4
  %16 = alloca ptr, align 8
  %17 = tail call ptr @CTX_wm_region(ptr noundef %0) #5
  %18 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #5
  %19 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #5
  %20 = tail call ptr @BKE_editmesh_from_object(ptr noundef %19) #5
  %21 = load ptr, ptr %20, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  %22 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %23 = load i32, ptr %22, align 4, !tbaa !51
  %24 = sitofp i32 %23 to float
  store float %24, ptr %5, align 4, !tbaa !52
  %25 = getelementptr inbounds float, ptr %5, i64 1
  %26 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %27 = load i32, ptr %26, align 4, !tbaa !51
  %28 = sitofp i32 %27 to float
  store float %28, ptr %25, align 4, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #5
  %29 = getelementptr inbounds %struct.BMesh, ptr %21, i64 0, i32 4
  %30 = load i32, ptr %29, align 8, !tbaa !54
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %284, label %32

32:                                               ; preds = %3
  call void @ED_view3d_ob_project_mat_get(ptr noundef %18, ptr noundef %19, ptr noundef nonnull %7) #5
  %33 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 1, ptr %33, align 4, !tbaa !57
  %34 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %34, align 8, !tbaa !59
  %35 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %35, align 8, !tbaa !60
  %36 = getelementptr inbounds %struct.BMesh, ptr %21, i64 0, i32 9
  %37 = load ptr, ptr %36, align 8, !tbaa !61
  store ptr %37, ptr %4, align 8, !tbaa !62
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #5
  %38 = load ptr, ptr %35, align 8, !tbaa !60
  %39 = call ptr %38(ptr noundef nonnull %4) #5
  %40 = icmp eq ptr %39, null
  br i1 %40, label %69, label %41

41:                                               ; preds = %32
  %42 = getelementptr inbounds float, ptr %8, i64 1
  br label %43

43:                                               ; preds = %41, %60
  %44 = phi ptr [ %39, %41 ], [ %65, %60 ]
  %45 = phi i32 [ 0, %41 ], [ %63, %60 ]
  %46 = phi float [ 0.000000e+00, %41 ], [ %62, %60 ]
  %47 = phi float [ 0.000000e+00, %41 ], [ %61, %60 ]
  %48 = getelementptr inbounds %struct.BMHeader, ptr %44, i64 0, i32 3
  %49 = load i8, ptr %48, align 1, !tbaa !63
  %50 = and i8 %49, -17
  store i8 %50, ptr %48, align 1, !tbaa !63
  %51 = and i8 %49, 1
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #5
  %54 = getelementptr inbounds %struct.BMVert, ptr %44, i64 0, i32 2
  call void @ED_view3d_project_float_v2_m4(ptr noundef %17, ptr noundef nonnull %54, ptr noundef nonnull %8, ptr noundef nonnull %7) #5
  %55 = load float, ptr %8, align 4, !tbaa !52
  %56 = fadd float %46, %55
  %57 = load float, ptr %42, align 4, !tbaa !52
  %58 = fadd float %47, %57
  %59 = add nsw i32 %45, 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #5
  br label %60

60:                                               ; preds = %43, %53
  %61 = phi float [ %47, %43 ], [ %58, %53 ]
  %62 = phi float [ %46, %43 ], [ %56, %53 ]
  %63 = phi i32 [ %45, %43 ], [ %59, %53 ]
  %64 = load ptr, ptr %35, align 8, !tbaa !60
  %65 = call ptr %64(ptr noundef nonnull %4) #5
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %43, !llvm.loop !65

67:                                               ; preds = %60
  %68 = sitofp i32 %63 to float
  br label %69

69:                                               ; preds = %67, %32
  %70 = phi float [ 0.000000e+00, %32 ], [ %61, %67 ]
  %71 = phi float [ 0.000000e+00, %32 ], [ %62, %67 ]
  %72 = phi float [ 0.000000e+00, %32 ], [ %68, %67 ]
  %73 = fdiv float 1.000000e+00, %72
  %74 = fmul float %71, %73
  %75 = fmul float %70, %73
  %76 = getelementptr inbounds %struct.BMesh, ptr %21, i64 0, i32 5
  %77 = load i32, ptr %76, align 4, !tbaa !68
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %135, label %79

79:                                               ; preds = %69
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #5
  %80 = load float, ptr %5, align 4, !tbaa !52
  %81 = load float, ptr %25, align 4, !tbaa !52
  %82 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 4
  store i8 2, ptr %82, align 4, !tbaa !57
  %83 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %83, align 8, !tbaa !59
  %84 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %84, align 8, !tbaa !60
  %85 = getelementptr inbounds %struct.BMesh, ptr %21, i64 0, i32 10
  %86 = load ptr, ptr %85, align 8, !tbaa !69
  store ptr %86, ptr %9, align 8, !tbaa !62
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %9) #5
  %87 = load ptr, ptr %84, align 8, !tbaa !60
  %88 = call ptr %87(ptr noundef nonnull %9) #5
  %89 = icmp eq ptr %88, null
  br i1 %89, label %132, label %90

90:                                               ; preds = %79
  %91 = fsub float %80, %74
  %92 = fsub float %81, %75
  %93 = fmul float %92, %92
  %94 = call float @llvm.fmuladd.f32(float %91, float %91, float %93)
  %95 = getelementptr inbounds [2 x [2 x float]], ptr %10, i64 0, i64 1
  %96 = getelementptr inbounds float, ptr %11, i64 1
  br label %97

97:                                               ; preds = %90, %125
  %98 = phi float [ %94, %90 ], [ %128, %125 ]
  %99 = phi ptr [ %88, %90 ], [ %130, %125 ]
  %100 = phi float [ %74, %90 ], [ %127, %125 ]
  %101 = phi float [ %75, %90 ], [ %126, %125 ]
  %102 = getelementptr inbounds %struct.BMHeader, ptr %99, i64 0, i32 3
  %103 = load i8, ptr %102, align 1, !tbaa !63
  %104 = and i8 %103, 1
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %125, label %106

106:                                              ; preds = %97
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #5
  %107 = getelementptr inbounds %struct.BMEdge, ptr %99, i64 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !70
  %109 = getelementptr inbounds %struct.BMVert, ptr %108, i64 0, i32 2
  call void @ED_view3d_project_float_v2_m4(ptr noundef %17, ptr noundef nonnull %109, ptr noundef nonnull %10, ptr noundef nonnull %7) #5
  %110 = getelementptr inbounds %struct.BMEdge, ptr %99, i64 0, i32 3
  %111 = load ptr, ptr %110, align 8, !tbaa !73
  %112 = getelementptr inbounds %struct.BMVert, ptr %111, i64 0, i32 2
  call void @ED_view3d_project_float_v2_m4(ptr noundef %17, ptr noundef nonnull %112, ptr noundef nonnull %95, ptr noundef nonnull %7) #5
  call void @closest_to_line_segment_v2(ptr noundef nonnull %11, ptr noundef nonnull %5, ptr noundef nonnull %10, ptr noundef nonnull %95) #5
  %113 = load float, ptr %5, align 4, !tbaa !52
  %114 = load float, ptr %11, align 4, !tbaa !52
  %115 = fsub float %113, %114
  %116 = load float, ptr %25, align 4, !tbaa !52
  %117 = load float, ptr %96, align 4, !tbaa !52
  %118 = fsub float %116, %117
  %119 = fmul float %118, %118
  %120 = call float @llvm.fmuladd.f32(float %115, float %115, float %119)
  %121 = fcmp olt float %120, %98
  %122 = select i1 %121, float %117, float %101
  %123 = select i1 %121, float %114, float %100
  %124 = select i1 %121, float %120, float %98
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #5
  br label %125

125:                                              ; preds = %97, %106
  %126 = phi float [ %101, %97 ], [ %122, %106 ]
  %127 = phi float [ %100, %97 ], [ %123, %106 ]
  %128 = phi float [ %98, %97 ], [ %124, %106 ]
  %129 = load ptr, ptr %84, align 8, !tbaa !60
  %130 = call ptr %129(ptr noundef nonnull %9) #5
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %97, !llvm.loop !74

132:                                              ; preds = %125, %79
  %133 = phi float [ %75, %79 ], [ %126, %125 ]
  %134 = phi float [ %74, %79 ], [ %127, %125 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #5
  br label %135

135:                                              ; preds = %132, %69
  %136 = phi float [ %75, %69 ], [ %133, %132 ]
  %137 = phi float [ %74, %69 ], [ %134, %132 ]
  %138 = load float, ptr %5, align 4, !tbaa !52
  %139 = fsub float %138, %137
  store float %139, ptr %6, align 4, !tbaa !52
  %140 = load float, ptr %25, align 4, !tbaa !52
  %141 = fsub float %140, %136
  %142 = getelementptr inbounds float, ptr %6, i64 1
  store float %141, ptr %142, align 4, !tbaa !52
  %143 = fmul float %141, %141
  %144 = call float @llvm.fmuladd.f32(float %139, float %139, float %143)
  %145 = fcmp ogt float %144, 0x38AA95A5C0000000
  br i1 %145, label %146, label %153

146:                                              ; preds = %135
  %147 = call float @sqrtf(float noundef %144) #5
  %148 = fdiv float 1.000000e+00, %147
  %149 = load float, ptr %6, align 4, !tbaa !52
  %150 = fmul float %149, %148
  store float %150, ptr %6, align 4, !tbaa !52
  %151 = load float, ptr %142, align 4, !tbaa !52
  %152 = fmul float %148, %151
  br label %154

153:                                              ; preds = %135
  store float 0.000000e+00, ptr %6, align 4, !tbaa !52
  br label %154

154:                                              ; preds = %146, %153
  %155 = phi float [ 0.000000e+00, %153 ], [ %152, %146 ]
  store float %155, ptr %142, align 4, !tbaa !52
  store i8 1, ptr %33, align 4, !tbaa !57
  store ptr @bmiter__elem_of_mesh_begin, ptr %34, align 8, !tbaa !59
  store ptr @bmiter__elem_of_mesh_step, ptr %35, align 8, !tbaa !60
  %156 = load ptr, ptr %36, align 8, !tbaa !61
  store ptr %156, ptr %4, align 8, !tbaa !62
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #5
  %157 = load ptr, ptr %35, align 8, !tbaa !60
  %158 = call ptr %157(ptr noundef nonnull %4) #5
  %159 = icmp eq ptr %158, null
  br i1 %159, label %284, label %160

160:                                              ; preds = %154
  %161 = getelementptr inbounds %struct.BMIter, ptr %12, i64 0, i32 4
  %162 = getelementptr inbounds %struct.BMIter, ptr %12, i64 0, i32 1
  %163 = getelementptr inbounds %struct.BMIter, ptr %12, i64 0, i32 2
  %164 = getelementptr inbounds float, ptr %14, i64 1
  %165 = getelementptr inbounds float, ptr %13, i64 1
  %166 = getelementptr inbounds float, ptr %15, i64 1
  br label %167

167:                                              ; preds = %160, %276
  %168 = phi ptr [ %158, %160 ], [ %279, %276 ]
  %169 = phi i8 [ 0, %160 ], [ %277, %276 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #5
  %170 = getelementptr inbounds %struct.BMHeader, ptr %168, i64 0, i32 3
  %171 = load i8, ptr %170, align 1, !tbaa !63
  %172 = and i8 %171, 17
  %173 = icmp eq i8 %172, 1
  br i1 %173, label %174, label %276

174:                                              ; preds = %167
  store i8 4, ptr %161, align 4, !tbaa !57
  store ptr @bmiter__edge_of_vert_begin, ptr %162, align 8, !tbaa !59
  store ptr @bmiter__edge_of_vert_step, ptr %163, align 8, !tbaa !60
  store ptr %168, ptr %12, align 8, !tbaa !62
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %12) #5
  %175 = load ptr, ptr %163, align 8, !tbaa !60
  %176 = call ptr %175(ptr noundef nonnull %12) #5
  %177 = icmp eq ptr %176, null
  br i1 %177, label %198, label %178

178:                                              ; preds = %174, %192
  %179 = phi i32 [ %194, %192 ], [ 0, %174 ]
  %180 = phi ptr [ %193, %192 ], [ null, %174 ]
  %181 = phi ptr [ %196, %192 ], [ %176, %174 ]
  %182 = getelementptr inbounds %struct.BMHeader, ptr %181, i64 0, i32 3
  %183 = load i8, ptr %182, align 1, !tbaa !63
  %184 = and i8 %183, 2
  %185 = icmp eq i8 %184, 0
  br i1 %185, label %186, label %192

186:                                              ; preds = %178
  %187 = and i8 %183, 1
  %188 = icmp eq i8 %187, 0
  %189 = select i1 %188, ptr %180, ptr %181
  %190 = zext nneg i8 %187 to i32
  %191 = add i32 %179, %190
  br label %192

192:                                              ; preds = %178, %186
  %193 = phi ptr [ %180, %178 ], [ %189, %186 ]
  %194 = phi i32 [ %179, %178 ], [ %191, %186 ]
  %195 = load ptr, ptr %163, align 8, !tbaa !60
  %196 = call ptr %195(ptr noundef nonnull %12) #5
  %197 = icmp eq ptr %196, null
  br i1 %197, label %198, label %178, !llvm.loop !75

198:                                              ; preds = %192, %174
  %199 = phi ptr [ null, %174 ], [ %193, %192 ]
  %200 = phi i32 [ 0, %174 ], [ %194, %192 ]
  %201 = icmp eq i32 %200, 1
  %202 = select i1 %201, ptr %199, ptr null
  %203 = icmp eq i32 %200, 0
  br i1 %203, label %204, label %261

204:                                              ; preds = %198
  %205 = getelementptr inbounds %struct.BMVert, ptr %168, i64 0, i32 2
  call void @ED_view3d_project_float_v2_m4(ptr noundef %17, ptr noundef nonnull %205, ptr noundef nonnull %13, ptr noundef nonnull %7) #5
  store i8 4, ptr %161, align 4, !tbaa !57
  store ptr @bmiter__edge_of_vert_begin, ptr %162, align 8, !tbaa !59
  store ptr @bmiter__edge_of_vert_step, ptr %163, align 8, !tbaa !60
  store ptr %168, ptr %12, align 8, !tbaa !62
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %12) #5
  %206 = load ptr, ptr %163, align 8, !tbaa !60
  %207 = call ptr %206(ptr noundef nonnull %12) #5
  %208 = icmp eq ptr %207, null
  br i1 %208, label %261, label %209

209:                                              ; preds = %204, %255
  %210 = phi ptr [ %257, %255 ], [ null, %204 ]
  %211 = phi float [ %256, %255 ], [ 0x47EFFFFFE0000000, %204 ]
  %212 = phi ptr [ %259, %255 ], [ %207, %204 ]
  %213 = getelementptr inbounds %struct.BMHeader, ptr %212, i64 0, i32 3
  %214 = load i8, ptr %213, align 1, !tbaa !63
  %215 = and i8 %214, 2
  %216 = icmp eq i8 %215, 0
  br i1 %216, label %217, label %255

217:                                              ; preds = %209
  %218 = getelementptr inbounds %struct.BMEdge, ptr %212, i64 0, i32 2
  %219 = load ptr, ptr %218, align 8, !tbaa !70
  %220 = icmp eq ptr %219, %168
  %221 = getelementptr inbounds %struct.BMEdge, ptr %212, i64 0, i32 3
  %222 = load ptr, ptr %221, align 8, !tbaa !73
  %223 = icmp eq ptr %222, %168
  %224 = select i1 %223, ptr %219, ptr null
  %225 = select i1 %220, ptr %222, ptr %224
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #5
  %226 = getelementptr inbounds %struct.BMVert, ptr %225, i64 0, i32 2
  call void @ED_view3d_project_float_v2_m4(ptr noundef %17, ptr noundef nonnull %226, ptr noundef nonnull %14, ptr noundef nonnull %7) #5
  %227 = load float, ptr %14, align 4, !tbaa !52
  %228 = load float, ptr %13, align 4, !tbaa !52
  %229 = fsub float %227, %228
  %230 = load float, ptr %164, align 4, !tbaa !52
  %231 = load float, ptr %165, align 4, !tbaa !52
  %232 = fsub float %230, %231
  %233 = fmul float %232, %232
  %234 = call float @llvm.fmuladd.f32(float %229, float %229, float %233)
  %235 = fcmp ogt float %234, 1.000000e+00
  br i1 %235, label %236, label %252

236:                                              ; preds = %217
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #5
  store float %229, ptr %15, align 4, !tbaa !52
  store float %232, ptr %166, align 4, !tbaa !52
  %237 = fcmp ogt float %234, 0x38AA95A5C0000000
  br i1 %237, label %238, label %245

238:                                              ; preds = %236
  %239 = call float @sqrtf(float noundef %234) #5
  %240 = fdiv float 1.000000e+00, %239
  %241 = load float, ptr %15, align 4, !tbaa !52
  %242 = fmul float %241, %240
  store float %242, ptr %15, align 4, !tbaa !52
  %243 = load float, ptr %166, align 4, !tbaa !52
  %244 = fmul float %240, %243
  br label %246

245:                                              ; preds = %236
  store float 0.000000e+00, ptr %15, align 4, !tbaa !52
  br label %246

246:                                              ; preds = %238, %245
  %247 = phi float [ 0.000000e+00, %245 ], [ %244, %238 ]
  store float %247, ptr %166, align 4, !tbaa !52
  %248 = call float @angle_normalized_v2v2(ptr noundef nonnull %6, ptr noundef nonnull %15) #5
  %249 = fcmp olt float %248, %211
  %250 = select i1 %249, float %248, float %211
  %251 = select i1 %249, ptr %212, ptr %210
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #5
  br label %252

252:                                              ; preds = %246, %217
  %253 = phi float [ %250, %246 ], [ %211, %217 ]
  %254 = phi ptr [ %251, %246 ], [ %210, %217 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #5
  br label %255

255:                                              ; preds = %209, %252
  %256 = phi float [ %211, %209 ], [ %253, %252 ]
  %257 = phi ptr [ %210, %209 ], [ %254, %252 ]
  %258 = load ptr, ptr %163, align 8, !tbaa !60
  %259 = call ptr %258(ptr noundef nonnull %12) #5
  %260 = icmp eq ptr %259, null
  br i1 %260, label %261, label %209, !llvm.loop !76

261:                                              ; preds = %255, %204, %198
  %262 = phi ptr [ %202, %198 ], [ null, %204 ], [ %257, %255 ]
  %263 = icmp eq ptr %262, null
  br i1 %263, label %276, label %264

264:                                              ; preds = %261
  %265 = getelementptr inbounds %struct.BMHeader, ptr %262, i64 0, i32 3
  %266 = load i8, ptr %265, align 1, !tbaa !63
  %267 = and i8 %266, 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #5
  %268 = call ptr @BM_edge_split(ptr noundef %21, ptr noundef nonnull %262, ptr noundef nonnull %168, ptr noundef nonnull %16, float noundef 0.000000e+00) #5
  call void @BM_vert_select_set(ptr noundef %21, ptr noundef nonnull %168, i8 noundef zeroext 0) #5
  %269 = load ptr, ptr %16, align 8, !tbaa !77
  call void @BM_edge_select_set(ptr noundef %21, ptr noundef %269, i8 noundef zeroext 0) #5
  call void @BM_vert_select_set(ptr noundef %21, ptr noundef %268, i8 noundef zeroext 1) #5
  %270 = icmp eq i8 %267, 0
  br i1 %270, label %272, label %271

271:                                              ; preds = %264
  call void @BM_edge_select_set(ptr noundef %21, ptr noundef nonnull %262, i8 noundef zeroext 1) #5
  br label %272

272:                                              ; preds = %271, %264
  %273 = getelementptr inbounds %struct.BMHeader, ptr %268, i64 0, i32 3
  %274 = load i8, ptr %273, align 1, !tbaa !63
  %275 = or i8 %274, 16
  store i8 %275, ptr %273, align 1, !tbaa !63
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #5
  br label %276

276:                                              ; preds = %261, %272, %167
  %277 = phi i8 [ %169, %167 ], [ 1, %272 ], [ %169, %261 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #5
  %278 = load ptr, ptr %35, align 8, !tbaa !60
  %279 = call ptr %278(ptr noundef nonnull %4) #5
  %280 = icmp eq ptr %279, null
  br i1 %280, label %281, label %167, !llvm.loop !78

281:                                              ; preds = %276
  %282 = icmp eq i8 %277, 0
  br i1 %282, label %284, label %283

283:                                              ; preds = %281
  call void @BM_select_history_clear(ptr noundef %21) #5
  call void @BM_mesh_select_mode_flush(ptr noundef %21) #5
  call void @EDBM_update_generic(ptr noundef nonnull %20, i8 noundef zeroext 1, i8 noundef zeroext 1) #5
  br label %284

284:                                              ; preds = %154, %281, %3, %283
  %285 = phi i32 [ 4, %283 ], [ 2, %3 ], [ 2, %281 ], [ 2, %154 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #5
  ret i32 %285
}

declare i32 @EDBM_view3d_poll(ptr noundef) #1

declare void @Transform_Properties(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_wm_region_view3d(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #1

declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #1

declare void @ED_view3d_ob_project_mat_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ED_view3d_project_float_v2_m4(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare void @closest_to_line_segment_v2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare float @angle_normalized_v2v2(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BM_edge_split(ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

declare void @BM_vert_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @BM_edge_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @BM_select_history_clear(ptr noundef) local_unnamed_addr #1

declare void @BM_mesh_select_mode_flush(ptr noundef) local_unnamed_addr #1

declare void @EDBM_update_generic(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #1

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #1

declare void @bmiter__edge_of_vert_begin(ptr noundef) #1

declare ptr @bmiter__edge_of_vert_step(ptr noundef) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
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
!34 = !{!35, !36, i64 0}
!35 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !39, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !40, i64 152, !41, i64 184}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !36, i64 0, !36, i64 8}
!40 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!41 = !{!"short", !37, i64 0}
!42 = !{!35, !36, i64 8}
!43 = !{!35, !36, i64 24}
!44 = !{!35, !36, i64 48}
!45 = !{!35, !36, i64 72}
!46 = !{!35, !41, i64 184}
!47 = !{!48, !36, i64 0}
!48 = !{!"BMEditMesh", !36, i64 0, !36, i64 8, !49, i64 16, !36, i64 24, !49, i64 32, !36, i64 40, !36, i64 48, !50, i64 56, !36, i64 64, !49, i64 72, !36, i64 80, !49, i64 88, !41, i64 92, !41, i64 94, !36, i64 96, !49, i64 104}
!49 = !{!"int", !37, i64 0}
!50 = !{!"long", !37, i64 0}
!51 = !{!49, !49, i64 0}
!52 = !{!53, !53, i64 0}
!53 = !{!"float", !37, i64 0}
!54 = !{!55, !49, i64 16}
!55 = !{!"BMesh", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !49, i64 16, !49, i64 20, !49, i64 24, !37, i64 28, !37, i64 29, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !49, i64 88, !49, i64 92, !49, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !49, i64 128, !36, i64 136, !56, i64 144, !56, i64 344, !56, i64 544, !56, i64 744, !41, i64 944, !49, i64 948, !49, i64 952, !49, i64 956, !39, i64 960, !36, i64 976, !39, i64 984, !36, i64 1000}
!56 = !{!"CustomData", !36, i64 0, !37, i64 8, !49, i64 172, !49, i64 176, !49, i64 180, !36, i64 184, !36, i64 192}
!57 = !{!58, !37, i64 60}
!58 = !{!"BMIter", !37, i64 0, !36, i64 40, !36, i64 48, !49, i64 56, !37, i64 60}
!59 = !{!58, !36, i64 40}
!60 = !{!58, !36, i64 48}
!61 = !{!55, !36, i64 32}
!62 = !{!37, !37, i64 0}
!63 = !{!64, !37, i64 13}
!64 = !{!"BMHeader", !36, i64 0, !49, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!65 = distinct !{!65, !66, !67}
!66 = !{!"llvm.loop.mustprogress"}
!67 = !{!"llvm.loop.unroll.disable"}
!68 = !{!55, !49, i64 20}
!69 = !{!55, !36, i64 40}
!70 = !{!71, !36, i64 24}
!71 = !{!"BMEdge", !64, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !72, i64 48, !72, i64 64}
!72 = !{!"BMDiskLink", !36, i64 0, !36, i64 8}
!73 = !{!71, !36, i64 32}
!74 = distinct !{!74, !66, !67}
!75 = distinct !{!75, !66, !67}
!76 = distinct !{!76, !66, !67}
!77 = !{!36, !36, i64 0}
!78 = distinct !{!78, !66, !67}
