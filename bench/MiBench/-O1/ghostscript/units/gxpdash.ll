; ModuleID = 'gxpdash.c'
source_filename = "gxpdash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_point_s = type { double, double }
%struct.gx_line_params_s = type { float, i32, i32, float, float, float, float, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { ptr, i32, float, i32, float, i32, i32, float }
%struct.gx_path_s = type { ptr, %struct.gs_fixed_rect_s, ptr, ptr, ptr, i32, i32, %struct.gs_fixed_point_s, %struct.gs_point_s, %struct.gs_point_s, i8, i8, i8, i8 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.subpath_s = type { ptr, ptr, i16, i16, %struct.gs_fixed_point_s, ptr, i32, %struct.line_close_segment, i8 }
%struct.line_close_segment = type { ptr, ptr, i16, i16, %struct.gs_fixed_point_s, ptr }
%struct.segment_s = type { ptr, ptr, i16, i16, %struct.gs_fixed_point_s }

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_path_expand_dashes(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.gs_point_s, align 8
  %5 = tail call ptr @gs_currentlineparams(ptr noundef %2) #5
  %6 = getelementptr inbounds %struct.gx_line_params_s, ptr %5, i64 0, i32 7
  %7 = getelementptr inbounds %struct.gx_line_params_s, ptr %5, i64 0, i32 7, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = tail call i32 @gx_path_copy_reducing(ptr noundef %0, ptr noundef %1, i64 noundef 9223372036854775807, i32 noundef 1) #5
  br label %269

12:                                               ; preds = %3
  %13 = load ptr, ptr %0, align 8, !tbaa !12
  tail call void @gx_path_init(ptr noundef %1, ptr noundef %13) #5
  %14 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %265, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.gx_line_params_s, ptr %5, i64 0, i32 7, i32 5
  %19 = getelementptr inbounds %struct.gx_line_params_s, ptr %5, i64 0, i32 7, i32 1
  %20 = getelementptr inbounds %struct.gx_line_params_s, ptr %5, i64 0, i32 7, i32 6
  %21 = getelementptr inbounds %struct.gx_line_params_s, ptr %5, i64 0, i32 7, i32 7
  %22 = getelementptr inbounds %struct.gs_point_s, ptr %4, i64 0, i32 1
  %23 = getelementptr inbounds %struct.gx_line_params_s, ptr %5, i64 0, i32 7, i32 4
  br label %24

24:                                               ; preds = %17, %256
  %25 = phi ptr [ %15, %17 ], [ %261, %256 ]
  %26 = load ptr, ptr %6, align 8, !tbaa !20
  %27 = getelementptr inbounds %struct.subpath_s, ptr %25, i64 0, i32 4
  %28 = load i64, ptr %27, align 8, !tbaa !21
  %29 = getelementptr inbounds %struct.subpath_s, ptr %25, i64 0, i32 4, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !25
  %31 = load i32, ptr %18, align 8, !tbaa !26
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.subpath_s, ptr %25, i64 0, i32 8
  %35 = load i8, ptr %34, align 8, !tbaa !27
  %36 = icmp ne i8 %35, 0
  br label %37

37:                                               ; preds = %33, %24
  %38 = phi i1 [ false, %24 ], [ %36, %33 ]
  %39 = call i32 @gx_path_add_point(ptr noundef %1, i64 noundef %28, i64 noundef %30) #5
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %256, label %41

41:                                               ; preds = %37
  %42 = sext i1 %38 to i32
  br label %43

43:                                               ; preds = %253, %41
  %44 = phi i32 [ 1, %253 ], [ %42, %41 ]
  %45 = phi i32 [ %54, %253 ], [ -2, %41 ]
  %46 = phi i32 [ %55, %253 ], [ %39, %41 ]
  %47 = phi i32 [ %63, %253 ], [ undef, %41 ]
  %48 = load i32, ptr %19, align 8, !tbaa !5
  %49 = load i32, ptr %18, align 8, !tbaa !26
  %50 = load i32, ptr %20, align 4, !tbaa !28
  %51 = load float, ptr %21, align 8, !tbaa !29
  br label %52

52:                                               ; preds = %242, %43
  %53 = phi i32 [ %44, %43 ], [ %243, %242 ]
  %54 = phi i32 [ %45, %43 ], [ %244, %242 ]
  %55 = phi i32 [ %46, %43 ], [ %245, %242 ]
  %56 = phi ptr [ %25, %43 ], [ %65, %242 ]
  %57 = phi i64 [ %30, %43 ], [ %247, %242 ]
  %58 = phi i64 [ %28, %43 ], [ %248, %242 ]
  %59 = phi float [ %51, %43 ], [ %249, %242 ]
  %60 = phi i32 [ %49, %43 ], [ %250, %242 ]
  %61 = phi i32 [ %50, %43 ], [ %251, %242 ]
  %62 = phi i32 [ %48, %43 ], [ %119, %242 ]
  %63 = phi i32 [ %47, %43 ], [ %252, %242 ]
  %64 = getelementptr inbounds %struct.segment_s, ptr %56, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !30
  %66 = icmp eq ptr %65, null
  br i1 %66, label %253, label %67

67:                                               ; preds = %52
  %68 = getelementptr inbounds %struct.segment_s, ptr %65, i64 0, i32 2
  %69 = load i16, ptr %68, align 8, !tbaa !32
  %70 = icmp eq i16 %69, 0
  br i1 %70, label %253, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.segment_s, ptr %65, i64 0, i32 4
  %73 = load i64, ptr %72, align 8, !tbaa !33
  %74 = getelementptr inbounds %struct.segment_s, ptr %65, i64 0, i32 4, i32 1
  %75 = load i64, ptr %74, align 8, !tbaa !34
  %76 = sub nsw i64 %73, %58
  %77 = sub nsw i64 %75, %57
  %78 = or i64 %77, %76
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %111, label %80

80:                                               ; preds = %71
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #5
  %81 = sitofp i64 %76 to double
  %82 = sitofp i64 %77 to double
  %83 = call i32 @gs_imager_idtransform(ptr noundef %2, double noundef %81, double noundef %82, ptr noundef nonnull %4) #5
  %84 = load double, ptr %4, align 8, !tbaa !35
  %85 = load double, ptr %22, align 8, !tbaa !36
  %86 = fmul double %85, %85
  %87 = call double @llvm.fmuladd.f64(double %84, double %84, double %86)
  %88 = call double @sqrt(double noundef %87) #5
  %89 = fmul double %88, 0x3F30000000000000
  %90 = call i32 @gs_imager_currentdashadapt(ptr noundef %2) #5
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %105, label %92

92:                                               ; preds = %80
  %93 = load float, ptr %23, align 4, !tbaa !37
  %94 = fpext float %93 to double
  %95 = fdiv double %89, %94
  %96 = call double @llvm.ceil.f64(double %95)
  %97 = fdiv double %95, %96
  %98 = load i32, ptr %19, align 8, !tbaa !5
  %99 = load i32, ptr %18, align 8, !tbaa !26
  %100 = load i32, ptr %20, align 4, !tbaa !28
  %101 = load float, ptr %21, align 8, !tbaa !29
  %102 = fpext float %101 to double
  %103 = fmul double %97, %102
  %104 = fptrunc double %103 to float
  br label %105

105:                                              ; preds = %92, %80
  %106 = phi float [ %104, %92 ], [ %59, %80 ]
  %107 = phi double [ %97, %92 ], [ 1.000000e+00, %80 ]
  %108 = phi i32 [ %99, %92 ], [ %60, %80 ]
  %109 = phi i32 [ %100, %92 ], [ %61, %80 ]
  %110 = phi i32 [ %98, %92 ], [ %62, %80 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #5
  br label %111

111:                                              ; preds = %105, %71
  %112 = phi float [ %106, %105 ], [ %59, %71 ]
  %113 = phi double [ %89, %105 ], [ 0.000000e+00, %71 ]
  %114 = phi double [ %81, %105 ], [ 0.000000e+00, %71 ]
  %115 = phi double [ %82, %105 ], [ 0.000000e+00, %71 ]
  %116 = phi double [ %107, %105 ], [ 1.000000e+00, %71 ]
  %117 = phi i32 [ %108, %105 ], [ %60, %71 ]
  %118 = phi i32 [ %109, %105 ], [ %61, %71 ]
  %119 = phi i32 [ %110, %105 ], [ %62, %71 ]
  %120 = getelementptr inbounds %struct.segment_s, ptr %65, i64 0, i32 3
  br label %121

121:                                              ; preds = %171, %111
  %122 = phi i32 [ %53, %111 ], [ %172, %171 ]
  %123 = phi i32 [ %54, %111 ], [ %173, %171 ]
  %124 = phi i32 [ %55, %111 ], [ %174, %171 ]
  %125 = phi i64 [ %57, %111 ], [ %176, %171 ]
  %126 = phi i64 [ %58, %111 ], [ %177, %171 ]
  %127 = phi float [ %112, %111 ], [ %178, %171 ]
  %128 = phi double [ %113, %111 ], [ %179, %171 ]
  %129 = phi i32 [ %117, %111 ], [ %180, %171 ]
  %130 = phi i32 [ %118, %111 ], [ %181, %171 ]
  %131 = phi i32 [ %63, %111 ], [ %182, %171 ]
  %132 = fpext float %127 to double
  %133 = fcmp ogt double %128, %132
  br i1 %133, label %134, label %183

134:                                              ; preds = %121
  %135 = fdiv double %132, %113
  %136 = fmul double %114, %135
  %137 = fptosi double %136 to i64
  %138 = add nsw i64 %126, %137
  %139 = fmul double %115, %135
  %140 = fptosi double %139 to i64
  %141 = add nsw i64 %125, %140
  %142 = icmp eq i32 %129, 0
  br i1 %142, label %150, label %143

143:                                              ; preds = %134
  %144 = icmp sgt i32 %122, -1
  br i1 %144, label %145, label %154

145:                                              ; preds = %143
  %146 = load i16, ptr %120, align 2, !tbaa !38
  %147 = zext i16 %146 to i32
  %148 = and i32 %123, %147
  %149 = call i32 @gx_path_add_line_notes(ptr noundef %1, i64 noundef %138, i64 noundef %141, i32 noundef %148) #5
  br label %154

150:                                              ; preds = %134
  %151 = icmp sgt i32 %122, 0
  br i1 %151, label %171, label %152

152:                                              ; preds = %150
  %153 = call i32 @gx_path_add_point(ptr noundef %1, i64 noundef %138, i64 noundef %141) #5
  br label %154

154:                                              ; preds = %152, %145, %143
  %155 = phi i32 [ 0, %152 ], [ %122, %145 ], [ %122, %143 ]
  %156 = phi i32 [ -2, %152 ], [ -1, %145 ], [ -1, %143 ]
  %157 = phi i32 [ %153, %152 ], [ %149, %145 ], [ %124, %143 ]
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %171, label %159

159:                                              ; preds = %154
  %160 = fsub double %128, %132
  %161 = zext i1 %142 to i32
  %162 = add nsw i32 %130, 1
  %163 = icmp eq i32 %162, %119
  %164 = select i1 %163, i32 0, i32 %162
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds float, ptr %26, i64 %165
  %167 = load float, ptr %166, align 4, !tbaa !39
  %168 = fpext float %167 to double
  %169 = fmul double %116, %168
  %170 = fptrunc double %169 to float
  br label %171

171:                                              ; preds = %159, %154, %150
  %172 = phi i32 [ %155, %159 ], [ %122, %150 ], [ %155, %154 ]
  %173 = phi i32 [ %156, %159 ], [ %123, %150 ], [ %156, %154 ]
  %174 = phi i32 [ %157, %159 ], [ %124, %150 ], [ %157, %154 ]
  %175 = phi i1 [ true, %159 ], [ false, %150 ], [ false, %154 ]
  %176 = phi i64 [ %141, %159 ], [ %125, %150 ], [ %125, %154 ]
  %177 = phi i64 [ %138, %159 ], [ %126, %150 ], [ %126, %154 ]
  %178 = phi float [ %170, %159 ], [ %127, %150 ], [ %127, %154 ]
  %179 = phi double [ %160, %159 ], [ %128, %150 ], [ %128, %154 ]
  %180 = phi i32 [ %161, %159 ], [ 0, %150 ], [ %129, %154 ]
  %181 = phi i32 [ %164, %159 ], [ %130, %150 ], [ %130, %154 ]
  %182 = phi i32 [ %131, %159 ], [ 0, %150 ], [ %157, %154 ]
  br i1 %175, label %121, label %242, !llvm.loop !40

183:                                              ; preds = %121
  %184 = fsub double %132, %128
  %185 = fptrunc double %184 to float
  %186 = icmp eq i32 %129, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %183
  %188 = call i32 @gx_path_add_point(ptr noundef %1, i64 noundef %73, i64 noundef %75) #5
  %189 = fcmp olt float %185, 0x3F30000000000000
  br i1 %189, label %209, label %229

190:                                              ; preds = %219, %183
  %191 = phi i32 [ -2, %219 ], [ %123, %183 ]
  %192 = phi i32 [ %188, %219 ], [ %124, %183 ]
  %193 = phi i32 [ 1, %219 ], [ %129, %183 ]
  %194 = phi i32 [ %222, %219 ], [ %130, %183 ]
  %195 = phi float [ %228, %219 ], [ %185, %183 ]
  %196 = icmp sgt i32 %122, -1
  br i1 %196, label %197, label %231

197:                                              ; preds = %190
  %198 = load i16, ptr %68, align 8, !tbaa !32
  %199 = icmp eq i16 %198, 2
  %200 = icmp ne i32 %122, 0
  %201 = select i1 %199, i1 %200, i1 false
  %202 = load i16, ptr %120, align 2, !tbaa !38
  %203 = zext i16 %202 to i32
  %204 = and i32 %191, %203
  br i1 %201, label %205, label %207

205:                                              ; preds = %197
  %206 = call i32 @gx_path_close_subpath_notes(ptr noundef %1, i32 noundef %204) #5
  br label %231

207:                                              ; preds = %197
  %208 = call i32 @gx_path_add_line_notes(ptr noundef %1, i64 noundef %73, i64 noundef %75, i32 noundef %204) #5
  br label %231

209:                                              ; preds = %187
  %210 = getelementptr inbounds %struct.segment_s, ptr %65, i64 0, i32 1
  %211 = load ptr, ptr %210, align 8, !tbaa !30
  %212 = icmp eq ptr %211, null
  br i1 %212, label %217, label %213

213:                                              ; preds = %209
  %214 = getelementptr inbounds %struct.segment_s, ptr %211, i64 0, i32 2
  %215 = load i16, ptr %214, align 8, !tbaa !32
  %216 = icmp eq i16 %215, 0
  br i1 %216, label %217, label %229

217:                                              ; preds = %213, %209
  %218 = icmp slt i32 %188, 0
  br i1 %218, label %242, label %219

219:                                              ; preds = %217
  %220 = add nsw i32 %130, 1
  %221 = icmp eq i32 %220, %119
  %222 = select i1 %221, i32 0, i32 %220
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds float, ptr %26, i64 %223
  %225 = load float, ptr %224, align 4, !tbaa !39
  %226 = fpext float %225 to double
  %227 = fmul double %116, %226
  %228 = fptrunc double %227 to float
  br label %190

229:                                              ; preds = %213, %187
  %230 = icmp sgt i32 %122, 0
  br i1 %230, label %242, label %231

231:                                              ; preds = %229, %207, %205, %190
  %232 = phi i32 [ %193, %190 ], [ %193, %207 ], [ %193, %205 ], [ %129, %229 ]
  %233 = phi i32 [ %194, %190 ], [ %194, %207 ], [ %194, %205 ], [ %130, %229 ]
  %234 = phi float [ %195, %190 ], [ %195, %207 ], [ %195, %205 ], [ %185, %229 ]
  %235 = phi i32 [ %122, %190 ], [ %122, %207 ], [ %122, %205 ], [ 0, %229 ]
  %236 = phi i32 [ %191, %190 ], [ -1, %207 ], [ -1, %205 ], [ -2, %229 ]
  %237 = phi i32 [ %192, %190 ], [ %208, %207 ], [ %206, %205 ], [ %188, %229 ]
  %238 = icmp sgt i32 %237, -1
  %239 = select i1 %238, i64 %75, i64 %125
  %240 = select i1 %238, i64 %73, i64 %126
  %241 = select i1 %238, i32 %131, i32 %237
  br label %242

242:                                              ; preds = %171, %231, %229, %217
  %243 = phi i32 [ %122, %229 ], [ %235, %231 ], [ %122, %217 ], [ %172, %171 ]
  %244 = phi i32 [ -2, %229 ], [ %236, %231 ], [ -2, %217 ], [ %173, %171 ]
  %245 = phi i32 [ %188, %229 ], [ %237, %231 ], [ %188, %217 ], [ %174, %171 ]
  %246 = phi i1 [ false, %229 ], [ %238, %231 ], [ false, %217 ], [ false, %171 ]
  %247 = phi i64 [ %125, %229 ], [ %239, %231 ], [ %125, %217 ], [ %176, %171 ]
  %248 = phi i64 [ %126, %229 ], [ %240, %231 ], [ %126, %217 ], [ %177, %171 ]
  %249 = phi float [ %185, %229 ], [ %234, %231 ], [ %185, %217 ], [ %178, %171 ]
  %250 = phi i32 [ 0, %229 ], [ %232, %231 ], [ 0, %217 ], [ %180, %171 ]
  %251 = phi i32 [ %130, %229 ], [ %233, %231 ], [ %130, %217 ], [ %181, %171 ]
  %252 = phi i32 [ %188, %229 ], [ %241, %231 ], [ %188, %217 ], [ %182, %171 ]
  br i1 %246, label %52, label %256, !llvm.loop !42

253:                                              ; preds = %67, %52
  %254 = icmp slt i32 %53, 1
  %255 = select i1 %38, i1 %254, i1 false
  br i1 %255, label %43, label %256

256:                                              ; preds = %253, %242, %37
  %257 = phi i32 [ %39, %37 ], [ %252, %242 ], [ 0, %253 ]
  %258 = getelementptr inbounds %struct.subpath_s, ptr %25, i64 0, i32 5
  %259 = load ptr, ptr %258, align 8, !tbaa !43
  %260 = getelementptr inbounds %struct.segment_s, ptr %259, i64 0, i32 1
  %261 = load ptr, ptr %260, align 8, !tbaa !19
  %262 = icmp ne ptr %261, null
  %263 = icmp sgt i32 %257, -1
  %264 = select i1 %262, i1 %263, i1 false
  br i1 %264, label %24, label %265, !llvm.loop !44

265:                                              ; preds = %256, %12
  %266 = phi i32 [ 0, %12 ], [ %257, %256 ]
  %267 = icmp slt i32 %266, 0
  br i1 %267, label %268, label %269

268:                                              ; preds = %265
  call void @gx_path_release(ptr noundef %1) #5
  br label %269

269:                                              ; preds = %265, %268, %10
  %270 = phi i32 [ %11, %10 ], [ %266, %268 ], [ %266, %265 ]
  ret i32 %270
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @gs_currentlineparams(ptr noundef) local_unnamed_addr #2

declare i32 @gx_path_copy_reducing(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @gx_path_init(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @gx_path_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @gx_path_add_point(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @gs_imager_idtransform(ptr noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

declare i32 @gs_imager_currentdashadapt(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #4

declare i32 @gx_path_add_line_notes(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @gx_path_close_subpath_notes(ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 8}
!6 = !{!"gx_dash_params_s", !7, i64 0, !10, i64 8, !11, i64 12, !10, i64 16, !11, i64 20, !10, i64 24, !10, i64 28, !11, i64 32}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"float", !8, i64 0}
!12 = !{!13, !7, i64 0}
!13 = !{!"gx_path_s", !7, i64 0, !14, i64 8, !7, i64 40, !7, i64 48, !7, i64 56, !10, i64 64, !10, i64 68, !15, i64 72, !17, i64 88, !17, i64 104, !8, i64 120, !8, i64 121, !8, i64 122, !8, i64 123}
!14 = !{!"gs_fixed_rect_s", !15, i64 0, !15, i64 16}
!15 = !{!"gs_fixed_point_s", !16, i64 0, !16, i64 8}
!16 = !{!"long", !8, i64 0}
!17 = !{!"gs_point_s", !18, i64 0, !18, i64 8}
!18 = !{!"double", !8, i64 0}
!19 = !{!7, !7, i64 0}
!20 = !{!6, !7, i64 0}
!21 = !{!22, !16, i64 24}
!22 = !{!"subpath_s", !7, i64 0, !7, i64 8, !23, i64 16, !23, i64 18, !15, i64 24, !7, i64 40, !10, i64 48, !24, i64 56, !8, i64 104}
!23 = !{!"short", !8, i64 0}
!24 = !{!"", !7, i64 0, !7, i64 8, !23, i64 16, !23, i64 18, !15, i64 24, !7, i64 40}
!25 = !{!22, !16, i64 32}
!26 = !{!6, !10, i64 24}
!27 = !{!22, !8, i64 104}
!28 = !{!6, !10, i64 28}
!29 = !{!6, !11, i64 32}
!30 = !{!31, !7, i64 8}
!31 = !{!"segment_s", !7, i64 0, !7, i64 8, !23, i64 16, !23, i64 18, !15, i64 24}
!32 = !{!31, !23, i64 16}
!33 = !{!31, !16, i64 24}
!34 = !{!31, !16, i64 32}
!35 = !{!17, !18, i64 0}
!36 = !{!17, !18, i64 8}
!37 = !{!6, !11, i64 20}
!38 = !{!31, !23, i64 18}
!39 = !{!11, !11, i64 0}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.unroll.disable"}
!42 = distinct !{!42, !41}
!43 = !{!22, !7, i64 40}
!44 = distinct !{!44, !41}
