; ModuleID = 'blender/source/blender/blenlib/intern/voronoi.c'
source_filename = "blender/source/blender/blenlib/intern/voronoi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.VoronoiProcess = type { %struct.ListBase, %struct.ListBase, ptr, i32, i32, float }
%struct.ListBase = type { ptr, ptr }
%struct.VoronoiEvent = type { ptr, ptr, i32, [2 x float], ptr }
%struct.VoronoiSite = type { [2 x float], [3 x float] }
%struct.VoronoiParabola = type { ptr, ptr, ptr, ptr, ptr, [2 x float], i8 }
%struct.VoronoiEdge = type { ptr, ptr, [2 x float], [2 x float], [2 x float], [2 x float], [2 x float], float, float, ptr }
%struct.VoronoiTriangulationPoint = type { [2 x float], [3 x float], i32 }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [19 x i8] c"voronoi site event\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"voronoi parabola site\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"voronoi edge\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"voronoi parabola\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"voronoi circle event\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"clamped edge\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"boundary edge\00", align 1
@MEM_reallocN_id = external local_unnamed_addr global ptr, align 8
@__func__.voronoi_addTriangulationPoint = private unnamed_addr constant [30 x i8] c"voronoi_addTriangulationPoint\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"triangulation points\00", align 1
@__func__.voronoi_addTriangle = private unnamed_addr constant [20 x i8] c"voronoi_addTriangle\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"trianglulation triangles\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @BLI_voronoi_compute(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.VoronoiProcess, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false)
  %7 = getelementptr inbounds %struct.VoronoiProcess, ptr %6, i64 0, i32 3
  store i32 %2, ptr %7, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.VoronoiProcess, ptr %6, i64 0, i32 4
  store i32 %3, ptr %8, align 4, !tbaa !42
  %9 = icmp sgt i32 %1, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = zext nneg i32 %1 to i64
  br label %22

12:                                               ; preds = %51, %5
  %13 = load ptr, ptr %6, align 8, !tbaa !43
  %14 = icmp eq ptr %13, null
  br i1 %14, label %556, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.VoronoiProcess, ptr %6, i64 0, i32 5
  %17 = getelementptr inbounds %struct.VoronoiProcess, ptr %6, i64 0, i32 2
  %18 = getelementptr inbounds %struct.VoronoiProcess, ptr %6, i64 0, i32 1
  %19 = getelementptr inbounds %struct.VoronoiProcess, ptr %6, i64 0, i32 2
  %20 = getelementptr inbounds %struct.VoronoiProcess, ptr %6, i64 0, i32 1
  %21 = getelementptr inbounds %struct.VoronoiProcess, ptr %6, i64 0, i32 1
  br label %55

22:                                               ; preds = %10, %51
  %23 = phi i64 [ 0, %10 ], [ %53, %51 ]
  %24 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %25 = call ptr %24(i64 noundef 40, ptr noundef nonnull @.str) #8
  %26 = getelementptr inbounds %struct.VoronoiEvent, ptr %25, i64 0, i32 2
  store i32 0, ptr %26, align 8, !tbaa !45
  %27 = getelementptr inbounds %struct.VoronoiEvent, ptr %25, i64 0, i32 3
  %28 = getelementptr inbounds %struct.VoronoiSite, ptr %0, i64 %23
  %29 = load float, ptr %28, align 4, !tbaa !47
  store float %29, ptr %27, align 4, !tbaa !47
  %30 = getelementptr inbounds float, ptr %28, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !47
  %32 = getelementptr inbounds %struct.VoronoiEvent, ptr %25, i64 0, i32 3, i64 1
  store float %31, ptr %32, align 4, !tbaa !47
  %33 = load ptr, ptr %6, align 8, !tbaa !44
  %34 = icmp eq ptr %33, null
  br i1 %34, label %51, label %35

35:                                               ; preds = %22
  %36 = load float, ptr %32, align 4, !tbaa !47
  br label %37

37:                                               ; preds = %35, %47
  %38 = phi float [ %36, %35 ], [ %48, %47 ]
  %39 = phi ptr [ %33, %35 ], [ %49, %47 ]
  %40 = getelementptr inbounds %struct.VoronoiEvent, ptr %39, i64 0, i32 3, i64 1
  %41 = load float, ptr %40, align 4, !tbaa !47
  %42 = fcmp olt float %41, %38
  br i1 %42, label %51, label %43

43:                                               ; preds = %37
  %44 = fcmp oeq float %41, %38
  br i1 %44, label %45, label %47

45:                                               ; preds = %43
  %46 = fadd float %38, 0xBF847AE140000000
  store float %46, ptr %32, align 4, !tbaa !47
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi float [ %46, %45 ], [ %38, %43 ]
  %49 = load ptr, ptr %39, align 8, !tbaa !44
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %37, !llvm.loop !48

51:                                               ; preds = %37, %47, %22
  %52 = phi ptr [ %33, %22 ], [ %39, %37 ], [ %49, %47 ]
  call void @BLI_insertlinkbefore(ptr noundef nonnull %6, ptr noundef %52, ptr noundef %25) #8
  %53 = add nuw nsw i64 %23, 1
  %54 = icmp eq i64 %53, %11
  br i1 %54, label %12, label %22, !llvm.loop !51

55:                                               ; preds = %15, %553
  %56 = phi ptr [ %13, %15 ], [ %554, %553 ]
  %57 = getelementptr inbounds %struct.VoronoiEvent, ptr %56, i64 0, i32 3, i64 1
  %58 = load float, ptr %57, align 4, !tbaa !47
  store float %58, ptr %16, align 8, !tbaa !52
  %59 = getelementptr inbounds %struct.VoronoiEvent, ptr %56, i64 0, i32 2
  %60 = load i32, ptr %59, align 8, !tbaa !45
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %374

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.VoronoiEvent, ptr %56, i64 0, i32 3
  %64 = load ptr, ptr %19, align 8, !tbaa !53
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %75

66:                                               ; preds = %62
  %67 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %68 = call ptr %67(i64 noundef 56, ptr noundef nonnull @.str.1) #8
  %69 = getelementptr inbounds %struct.VoronoiParabola, ptr %68, i64 0, i32 5
  %70 = load float, ptr %63, align 4, !tbaa !47
  store float %70, ptr %69, align 4, !tbaa !47
  %71 = load float, ptr %57, align 4, !tbaa !47
  %72 = getelementptr inbounds %struct.VoronoiParabola, ptr %68, i64 0, i32 5, i64 1
  store float %71, ptr %72, align 4, !tbaa !47
  %73 = getelementptr inbounds %struct.VoronoiParabola, ptr %68, i64 0, i32 6
  store i8 1, ptr %73, align 8, !tbaa !54
  %74 = getelementptr inbounds %struct.VoronoiParabola, ptr %68, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %74, i8 0, i64 24, i1 false)
  store ptr %68, ptr %19, align 8, !tbaa !53
  br label %553

75:                                               ; preds = %62
  %76 = getelementptr inbounds %struct.VoronoiParabola, ptr %64, i64 0, i32 6
  %77 = load i8, ptr %76, align 8, !tbaa !54
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %161, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.VoronoiParabola, ptr %64, i64 0, i32 5
  %81 = getelementptr inbounds %struct.VoronoiParabola, ptr %64, i64 0, i32 5, i64 1
  %82 = load float, ptr %81, align 4, !tbaa !47
  %83 = load float, ptr %57, align 4, !tbaa !47
  %84 = fsub float %82, %83
  %85 = fcmp olt float %84, 0.000000e+00
  br i1 %85, label %86, label %161

86:                                               ; preds = %79
  store i8 0, ptr %76, align 8, !tbaa !54
  %87 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %88 = call ptr %87(i64 noundef 56, ptr noundef nonnull @.str.1) #8
  %89 = getelementptr inbounds %struct.VoronoiParabola, ptr %88, i64 0, i32 5
  %90 = load float, ptr %80, align 4, !tbaa !47
  store float %90, ptr %89, align 4, !tbaa !47
  %91 = load float, ptr %81, align 4, !tbaa !47
  %92 = getelementptr inbounds %struct.VoronoiParabola, ptr %88, i64 0, i32 5, i64 1
  store float %91, ptr %92, align 4, !tbaa !47
  %93 = getelementptr inbounds %struct.VoronoiParabola, ptr %88, i64 0, i32 6
  store i8 1, ptr %93, align 8, !tbaa !54
  %94 = getelementptr inbounds %struct.VoronoiParabola, ptr %88, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %94, i8 0, i64 24, i1 false)
  store ptr %88, ptr %64, align 8, !tbaa !56
  store ptr %64, ptr %94, align 8, !tbaa !57
  %95 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %96 = call ptr %95(i64 noundef 56, ptr noundef nonnull @.str.1) #8
  %97 = getelementptr inbounds %struct.VoronoiParabola, ptr %96, i64 0, i32 5
  %98 = load float, ptr %63, align 4, !tbaa !47
  store float %98, ptr %97, align 4, !tbaa !47
  %99 = load float, ptr %57, align 4, !tbaa !47
  %100 = getelementptr inbounds %struct.VoronoiParabola, ptr %96, i64 0, i32 5, i64 1
  store float %99, ptr %100, align 4, !tbaa !47
  %101 = getelementptr inbounds %struct.VoronoiParabola, ptr %96, i64 0, i32 6
  store i8 1, ptr %101, align 8, !tbaa !54
  %102 = getelementptr inbounds %struct.VoronoiParabola, ptr %96, i64 0, i32 2
  %103 = getelementptr inbounds %struct.VoronoiParabola, ptr %64, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %102, i8 0, i64 24, i1 false)
  store ptr %96, ptr %103, align 8, !tbaa !58
  store ptr %64, ptr %102, align 8, !tbaa !57
  %104 = load float, ptr %63, align 4, !tbaa !47
  %105 = load float, ptr %80, align 4, !tbaa !47
  %106 = fadd float %104, %105
  %107 = fmul float %106, 5.000000e-01
  %108 = load i32, ptr %8, align 4, !tbaa !42
  %109 = sitofp i32 %108 to float
  %110 = fcmp ogt float %104, %105
  %111 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %112 = call ptr %111(i64 noundef 72, ptr noundef nonnull @.str.2) #8
  %113 = getelementptr inbounds %struct.VoronoiEdge, ptr %112, i64 0, i32 2
  store float %107, ptr %113, align 4, !tbaa !47
  %114 = getelementptr inbounds %struct.VoronoiEdge, ptr %112, i64 0, i32 2, i64 1
  store float %109, ptr %114, align 4, !tbaa !47
  %115 = getelementptr inbounds %struct.VoronoiEdge, ptr %112, i64 0, i32 5
  %116 = getelementptr inbounds %struct.VoronoiEdge, ptr %112, i64 0, i32 5, i64 1
  %117 = getelementptr inbounds %struct.VoronoiEdge, ptr %112, i64 0, i32 6
  %118 = getelementptr inbounds %struct.VoronoiEdge, ptr %112, i64 0, i32 6, i64 1
  %119 = getelementptr inbounds %struct.VoronoiEdge, ptr %112, i64 0, i32 9
  %120 = getelementptr inbounds %struct.VoronoiEdge, ptr %112, i64 0, i32 3
  %121 = getelementptr inbounds %struct.VoronoiEdge, ptr %112, i64 0, i32 3, i64 1
  %122 = getelementptr inbounds %struct.VoronoiEdge, ptr %112, i64 0, i32 7
  br i1 %110, label %123, label %129

123:                                              ; preds = %86
  %124 = load float, ptr %80, align 4, !tbaa !47
  store float %124, ptr %115, align 4, !tbaa !47
  %125 = getelementptr inbounds %struct.VoronoiParabola, ptr %64, i64 0, i32 5, i64 1
  %126 = load float, ptr %125, align 4, !tbaa !47
  store float %126, ptr %116, align 4, !tbaa !47
  %127 = load float, ptr %63, align 4, !tbaa !47
  store float %127, ptr %117, align 4, !tbaa !47
  %128 = getelementptr inbounds %struct.VoronoiEvent, ptr %56, i64 0, i32 3, i64 1
  br label %135

129:                                              ; preds = %86
  %130 = load float, ptr %63, align 4, !tbaa !47
  store float %130, ptr %115, align 4, !tbaa !47
  %131 = getelementptr inbounds %struct.VoronoiEvent, ptr %56, i64 0, i32 3, i64 1
  %132 = load float, ptr %131, align 4, !tbaa !47
  store float %132, ptr %116, align 4, !tbaa !47
  %133 = load float, ptr %80, align 4, !tbaa !47
  store float %133, ptr %117, align 4, !tbaa !47
  %134 = getelementptr inbounds %struct.VoronoiParabola, ptr %64, i64 0, i32 5, i64 1
  br label %135

135:                                              ; preds = %129, %123
  %136 = phi ptr [ %134, %129 ], [ %128, %123 ]
  %137 = phi ptr [ %80, %129 ], [ %63, %123 ]
  %138 = phi ptr [ %63, %129 ], [ %80, %123 ]
  %139 = phi ptr [ %131, %129 ], [ %125, %123 ]
  %140 = load float, ptr %136, align 4, !tbaa !47
  store float %140, ptr %118, align 4, !tbaa !47
  store ptr null, ptr %119, align 8, !tbaa !59
  store float 0.000000e+00, ptr %120, align 8, !tbaa !47
  store float 0.000000e+00, ptr %121, align 4, !tbaa !47
  %141 = load float, ptr %137, align 4, !tbaa !47
  %142 = load float, ptr %138, align 4, !tbaa !47
  %143 = fsub float %141, %142
  %144 = load float, ptr %139, align 4, !tbaa !47
  %145 = load float, ptr %136, align 4, !tbaa !47
  %146 = fsub float %144, %145
  %147 = fdiv float %143, %146
  store float %147, ptr %122, align 8, !tbaa !61
  %148 = fneg float %147
  %149 = call float @llvm.fmuladd.f32(float %148, float %107, float %109)
  %150 = getelementptr inbounds %struct.VoronoiEdge, ptr %112, i64 0, i32 8
  store float %149, ptr %150, align 4, !tbaa !62
  %151 = load float, ptr %136, align 4, !tbaa !47
  %152 = load float, ptr %139, align 4, !tbaa !47
  %153 = fsub float %151, %152
  %154 = getelementptr inbounds %struct.VoronoiEdge, ptr %112, i64 0, i32 4
  store float %153, ptr %154, align 8, !tbaa !47
  %155 = load float, ptr %137, align 4, !tbaa !47
  %156 = load float, ptr %138, align 4, !tbaa !47
  %157 = fsub float %155, %156
  %158 = fneg float %157
  %159 = getelementptr inbounds %struct.VoronoiEdge, ptr %112, i64 0, i32 4, i64 1
  store float %158, ptr %159, align 4, !tbaa !47
  %160 = getelementptr inbounds %struct.VoronoiParabola, ptr %64, i64 0, i32 4
  store ptr %112, ptr %160, align 8, !tbaa !63
  call void @BLI_addtail(ptr noundef nonnull %20, ptr noundef %112) #8
  br label %553

161:                                              ; preds = %79, %75
  %162 = load float, ptr %63, align 4, !tbaa !47
  %163 = load ptr, ptr %19, align 8, !tbaa !44
  %164 = getelementptr inbounds %struct.VoronoiParabola, ptr %163, i64 0, i32 6
  %165 = load i8, ptr %164, align 8, !tbaa !54
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %167, label %241

167:                                              ; preds = %161, %186
  %168 = phi ptr [ %237, %186 ], [ %163, %161 ]
  %169 = icmp ne ptr %168, null
  br i1 %169, label %170, label %177

170:                                              ; preds = %167, %170
  %171 = phi ptr [ %176, %170 ], [ %168, %167 ]
  %172 = load ptr, ptr %171, align 8, !tbaa !44
  %173 = getelementptr inbounds %struct.VoronoiParabola, ptr %172, i64 0, i32 6
  %174 = load i8, ptr %173, align 8, !tbaa !54
  %175 = icmp eq i8 %174, 0
  %176 = getelementptr inbounds %struct.VoronoiParabola, ptr %172, i64 0, i32 1
  br i1 %175, label %170, label %177, !llvm.loop !64

177:                                              ; preds = %170, %167
  %178 = phi ptr [ null, %167 ], [ %172, %170 ]
  call void @llvm.assume(i1 %169)
  %179 = getelementptr inbounds %struct.VoronoiParabola, ptr %168, i64 0, i32 1
  br label %180

180:                                              ; preds = %180, %177
  %181 = phi ptr [ %179, %177 ], [ %182, %180 ]
  %182 = load ptr, ptr %181, align 8, !tbaa !44
  %183 = getelementptr inbounds %struct.VoronoiParabola, ptr %182, i64 0, i32 6
  %184 = load i8, ptr %183, align 8, !tbaa !54
  %185 = icmp eq i8 %184, 0
  br i1 %185, label %180, label %186, !llvm.loop !65

186:                                              ; preds = %180
  %187 = load float, ptr %16, align 8, !tbaa !52
  %188 = getelementptr inbounds %struct.VoronoiParabola, ptr %178, i64 0, i32 5
  %189 = load float, ptr %188, align 4, !tbaa !47
  %190 = getelementptr inbounds %struct.VoronoiParabola, ptr %178, i64 0, i32 5, i64 1
  %191 = load float, ptr %190, align 4, !tbaa !47
  %192 = getelementptr inbounds %struct.VoronoiParabola, ptr %182, i64 0, i32 5
  %193 = load float, ptr %192, align 4, !tbaa !47
  %194 = getelementptr inbounds %struct.VoronoiParabola, ptr %182, i64 0, i32 5, i64 1
  %195 = load float, ptr %194, align 4, !tbaa !47
  %196 = fsub float %191, %58
  %197 = fmul float %196, 2.000000e+00
  %198 = fdiv float 1.000000e+00, %197
  %199 = fmul float %189, -2.000000e+00
  %200 = fdiv float %199, %197
  %201 = fmul float %197, 2.500000e-01
  %202 = fadd float %58, %201
  %203 = fmul float %189, %189
  %204 = fdiv float %203, %197
  %205 = fadd float %204, %202
  %206 = fsub float %195, %58
  %207 = fmul float %206, 2.000000e+00
  %208 = fdiv float 1.000000e+00, %207
  %209 = fmul float %193, 2.000000e+00
  %210 = fdiv float %209, %207
  %211 = fmul float %207, 2.500000e-01
  %212 = fadd float %187, %211
  %213 = fmul float %193, %193
  %214 = fdiv float %213, %207
  %215 = fadd float %214, %212
  %216 = fsub float %198, %208
  %217 = fadd float %200, %210
  %218 = fsub float %205, %215
  %219 = fmul float %216, -4.000000e+00
  %220 = fmul float %219, %218
  %221 = call float @llvm.fmuladd.f32(float %217, float %217, float %220)
  %222 = fneg float %217
  %223 = call float @sqrtf(float noundef %221) #8
  %224 = fsub float %223, %217
  %225 = fmul float %216, 2.000000e+00
  %226 = fdiv float %224, %225
  %227 = call float @sqrtf(float noundef %221) #8
  %228 = fsub float %222, %227
  %229 = fdiv float %228, %225
  %230 = fcmp olt float %191, %195
  %231 = fcmp olt float %226, %229
  %232 = fcmp ogt float %226, %229
  %233 = select i1 %230, i1 %232, i1 %231
  %234 = select i1 %233, float %226, float %229
  %235 = fcmp ogt float %234, %162
  %236 = select i1 %235, ptr %168, ptr %179
  %237 = load ptr, ptr %236, align 8, !tbaa !44
  %238 = getelementptr inbounds %struct.VoronoiParabola, ptr %237, i64 0, i32 6
  %239 = load i8, ptr %238, align 8, !tbaa !54
  %240 = icmp eq i8 %239, 0
  br i1 %240, label %167, label %241, !llvm.loop !66

241:                                              ; preds = %186, %161
  %242 = phi ptr [ %163, %161 ], [ %237, %186 ]
  %243 = getelementptr inbounds %struct.VoronoiParabola, ptr %242, i64 0, i32 6
  %244 = getelementptr inbounds %struct.VoronoiParabola, ptr %242, i64 0, i32 3
  %245 = load ptr, ptr %244, align 8, !tbaa !67
  %246 = icmp eq ptr %245, null
  br i1 %246, label %248, label %247

247:                                              ; preds = %241
  call void @BLI_freelinkN(ptr noundef nonnull %6, ptr noundef nonnull %245) #8
  store ptr null, ptr %244, align 8, !tbaa !67
  br label %248

248:                                              ; preds = %247, %241
  %249 = load float, ptr %63, align 4, !tbaa !47
  %250 = getelementptr inbounds %struct.VoronoiParabola, ptr %242, i64 0, i32 5
  %251 = load float, ptr %16, align 8, !tbaa !52
  %252 = getelementptr inbounds %struct.VoronoiParabola, ptr %242, i64 0, i32 5, i64 1
  %253 = load float, ptr %252, align 4, !tbaa !47
  %254 = fsub float %253, %251
  %255 = fmul float %254, 2.000000e+00
  %256 = fdiv float 1.000000e+00, %255
  %257 = load float, ptr %250, align 4, !tbaa !47
  %258 = fmul float %257, -2.000000e+00
  %259 = fdiv float %258, %255
  %260 = fmul float %255, 2.500000e-01
  %261 = fadd float %251, %260
  %262 = fmul float %257, %257
  %263 = fdiv float %262, %255
  %264 = fadd float %263, %261
  %265 = fmul float %249, %256
  %266 = fmul float %249, %259
  %267 = call float @llvm.fmuladd.f32(float %265, float %249, float %266)
  %268 = fadd float %267, %264
  %269 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %270 = call ptr %269(i64 noundef 72, ptr noundef nonnull @.str.2) #8
  %271 = getelementptr inbounds %struct.VoronoiEdge, ptr %270, i64 0, i32 2
  store float %249, ptr %271, align 4, !tbaa !47
  %272 = getelementptr inbounds %struct.VoronoiEdge, ptr %270, i64 0, i32 2, i64 1
  store float %268, ptr %272, align 4, !tbaa !47
  %273 = getelementptr inbounds %struct.VoronoiEdge, ptr %270, i64 0, i32 5
  %274 = load float, ptr %250, align 4, !tbaa !47
  store float %274, ptr %273, align 4, !tbaa !47
  %275 = getelementptr inbounds %struct.VoronoiParabola, ptr %242, i64 0, i32 5, i64 1
  %276 = load float, ptr %275, align 4, !tbaa !47
  %277 = getelementptr inbounds %struct.VoronoiEdge, ptr %270, i64 0, i32 5, i64 1
  store float %276, ptr %277, align 4, !tbaa !47
  %278 = getelementptr inbounds %struct.VoronoiEdge, ptr %270, i64 0, i32 6
  %279 = load float, ptr %63, align 4, !tbaa !47
  store float %279, ptr %278, align 4, !tbaa !47
  %280 = getelementptr inbounds %struct.VoronoiEvent, ptr %56, i64 0, i32 3, i64 1
  %281 = load float, ptr %280, align 4, !tbaa !47
  %282 = getelementptr inbounds %struct.VoronoiEdge, ptr %270, i64 0, i32 6, i64 1
  store float %281, ptr %282, align 4, !tbaa !47
  %283 = getelementptr inbounds %struct.VoronoiEdge, ptr %270, i64 0, i32 9
  store ptr null, ptr %283, align 8, !tbaa !59
  %284 = getelementptr inbounds %struct.VoronoiEdge, ptr %270, i64 0, i32 3
  store float 0.000000e+00, ptr %284, align 8, !tbaa !47
  %285 = getelementptr inbounds %struct.VoronoiEdge, ptr %270, i64 0, i32 3, i64 1
  store float 0.000000e+00, ptr %285, align 4, !tbaa !47
  %286 = load float, ptr %63, align 4, !tbaa !47
  %287 = load float, ptr %250, align 4, !tbaa !47
  %288 = fsub float %286, %287
  %289 = load float, ptr %275, align 4, !tbaa !47
  %290 = load float, ptr %280, align 4, !tbaa !47
  %291 = fsub float %289, %290
  %292 = fdiv float %288, %291
  %293 = getelementptr inbounds %struct.VoronoiEdge, ptr %270, i64 0, i32 7
  store float %292, ptr %293, align 8, !tbaa !61
  %294 = fneg float %292
  %295 = call float @llvm.fmuladd.f32(float %294, float %249, float %268)
  %296 = getelementptr inbounds %struct.VoronoiEdge, ptr %270, i64 0, i32 8
  store float %295, ptr %296, align 4, !tbaa !62
  %297 = load float, ptr %280, align 4, !tbaa !47
  %298 = load float, ptr %275, align 4, !tbaa !47
  %299 = fsub float %297, %298
  %300 = getelementptr inbounds %struct.VoronoiEdge, ptr %270, i64 0, i32 4
  store float %299, ptr %300, align 8, !tbaa !47
  %301 = load float, ptr %63, align 4, !tbaa !47
  %302 = load float, ptr %250, align 4, !tbaa !47
  %303 = fsub float %301, %302
  %304 = fneg float %303
  %305 = getelementptr inbounds %struct.VoronoiEdge, ptr %270, i64 0, i32 4, i64 1
  store float %304, ptr %305, align 4, !tbaa !47
  %306 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %307 = call ptr %306(i64 noundef 72, ptr noundef nonnull @.str.2) #8
  %308 = getelementptr inbounds %struct.VoronoiEdge, ptr %307, i64 0, i32 2
  store float %249, ptr %308, align 4, !tbaa !47
  %309 = getelementptr inbounds %struct.VoronoiEdge, ptr %307, i64 0, i32 2, i64 1
  store float %268, ptr %309, align 4, !tbaa !47
  %310 = getelementptr inbounds %struct.VoronoiEdge, ptr %307, i64 0, i32 5
  %311 = load float, ptr %63, align 4, !tbaa !47
  store float %311, ptr %310, align 4, !tbaa !47
  %312 = load float, ptr %280, align 4, !tbaa !47
  %313 = getelementptr inbounds %struct.VoronoiEdge, ptr %307, i64 0, i32 5, i64 1
  store float %312, ptr %313, align 4, !tbaa !47
  %314 = getelementptr inbounds %struct.VoronoiEdge, ptr %307, i64 0, i32 6
  %315 = load float, ptr %250, align 4, !tbaa !47
  store float %315, ptr %314, align 4, !tbaa !47
  %316 = load float, ptr %275, align 4, !tbaa !47
  %317 = getelementptr inbounds %struct.VoronoiEdge, ptr %307, i64 0, i32 6, i64 1
  store float %316, ptr %317, align 4, !tbaa !47
  %318 = getelementptr inbounds %struct.VoronoiEdge, ptr %307, i64 0, i32 9
  store ptr null, ptr %318, align 8, !tbaa !59
  %319 = getelementptr inbounds %struct.VoronoiEdge, ptr %307, i64 0, i32 3
  store float 0.000000e+00, ptr %319, align 8, !tbaa !47
  %320 = getelementptr inbounds %struct.VoronoiEdge, ptr %307, i64 0, i32 3, i64 1
  store float 0.000000e+00, ptr %320, align 4, !tbaa !47
  %321 = load float, ptr %250, align 4, !tbaa !47
  %322 = load float, ptr %63, align 4, !tbaa !47
  %323 = fsub float %321, %322
  %324 = load float, ptr %280, align 4, !tbaa !47
  %325 = load float, ptr %275, align 4, !tbaa !47
  %326 = fsub float %324, %325
  %327 = fdiv float %323, %326
  %328 = getelementptr inbounds %struct.VoronoiEdge, ptr %307, i64 0, i32 7
  store float %327, ptr %328, align 8, !tbaa !61
  %329 = fneg float %327
  %330 = call float @llvm.fmuladd.f32(float %329, float %249, float %268)
  %331 = getelementptr inbounds %struct.VoronoiEdge, ptr %307, i64 0, i32 8
  store float %330, ptr %331, align 4, !tbaa !62
  %332 = load float, ptr %275, align 4, !tbaa !47
  %333 = load float, ptr %280, align 4, !tbaa !47
  %334 = fsub float %332, %333
  %335 = getelementptr inbounds %struct.VoronoiEdge, ptr %307, i64 0, i32 4
  store float %334, ptr %335, align 8, !tbaa !47
  %336 = load float, ptr %250, align 4, !tbaa !47
  %337 = load float, ptr %63, align 4, !tbaa !47
  %338 = fsub float %336, %337
  %339 = fneg float %338
  %340 = getelementptr inbounds %struct.VoronoiEdge, ptr %307, i64 0, i32 4, i64 1
  store float %339, ptr %340, align 4, !tbaa !47
  store ptr %307, ptr %283, align 8, !tbaa !59
  call void @BLI_addtail(ptr noundef nonnull %21, ptr noundef %270) #8
  %341 = getelementptr inbounds %struct.VoronoiParabola, ptr %242, i64 0, i32 4
  store ptr %307, ptr %341, align 8, !tbaa !63
  store i8 0, ptr %243, align 8, !tbaa !54
  %342 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %343 = call ptr %342(i64 noundef 56, ptr noundef nonnull @.str.1) #8
  %344 = getelementptr inbounds %struct.VoronoiParabola, ptr %343, i64 0, i32 5
  %345 = load float, ptr %250, align 4, !tbaa !47
  store float %345, ptr %344, align 4, !tbaa !47
  %346 = load float, ptr %252, align 4, !tbaa !47
  %347 = getelementptr inbounds %struct.VoronoiParabola, ptr %343, i64 0, i32 5, i64 1
  store float %346, ptr %347, align 4, !tbaa !47
  %348 = getelementptr inbounds %struct.VoronoiParabola, ptr %343, i64 0, i32 6
  store i8 1, ptr %348, align 8, !tbaa !54
  %349 = getelementptr inbounds %struct.VoronoiParabola, ptr %343, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %349, i8 0, i64 24, i1 false)
  %350 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %351 = call ptr %350(i64 noundef 56, ptr noundef nonnull @.str.1) #8
  %352 = getelementptr inbounds %struct.VoronoiParabola, ptr %351, i64 0, i32 5
  %353 = load float, ptr %63, align 4, !tbaa !47
  store float %353, ptr %352, align 4, !tbaa !47
  %354 = load float, ptr %57, align 4, !tbaa !47
  %355 = getelementptr inbounds %struct.VoronoiParabola, ptr %351, i64 0, i32 5, i64 1
  store float %354, ptr %355, align 4, !tbaa !47
  %356 = getelementptr inbounds %struct.VoronoiParabola, ptr %351, i64 0, i32 6
  store i8 1, ptr %356, align 8, !tbaa !54
  %357 = getelementptr inbounds %struct.VoronoiParabola, ptr %351, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %357, i8 0, i64 24, i1 false)
  %358 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %359 = call ptr %358(i64 noundef 56, ptr noundef nonnull @.str.1) #8
  %360 = getelementptr inbounds %struct.VoronoiParabola, ptr %359, i64 0, i32 5
  %361 = load float, ptr %250, align 4, !tbaa !47
  store float %361, ptr %360, align 4, !tbaa !47
  %362 = load float, ptr %252, align 4, !tbaa !47
  %363 = getelementptr inbounds %struct.VoronoiParabola, ptr %359, i64 0, i32 5, i64 1
  store float %362, ptr %363, align 4, !tbaa !47
  %364 = getelementptr inbounds %struct.VoronoiParabola, ptr %359, i64 0, i32 6
  store i8 1, ptr %364, align 8, !tbaa !54
  %365 = getelementptr inbounds %struct.VoronoiParabola, ptr %359, i64 0, i32 2
  %366 = getelementptr inbounds %struct.VoronoiParabola, ptr %242, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %365, i8 0, i64 24, i1 false)
  store ptr %359, ptr %366, align 8, !tbaa !58
  store ptr %242, ptr %365, align 8, !tbaa !57
  %367 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %368 = call ptr %367(i64 noundef 56, ptr noundef nonnull @.str.3) #8
  %369 = getelementptr inbounds %struct.VoronoiParabola, ptr %368, i64 0, i32 6
  store i8 0, ptr %369, align 8, !tbaa !54
  %370 = getelementptr inbounds %struct.VoronoiParabola, ptr %368, i64 0, i32 4
  %371 = getelementptr inbounds %struct.VoronoiParabola, ptr %368, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %371, i8 0, i64 24, i1 false)
  store ptr %368, ptr %242, align 8, !tbaa !56
  store ptr %242, ptr %371, align 8, !tbaa !57
  store ptr %270, ptr %370, align 8, !tbaa !63
  store ptr %343, ptr %368, align 8, !tbaa !56
  store ptr %368, ptr %349, align 8, !tbaa !57
  %372 = load ptr, ptr %242, align 8, !tbaa !56
  %373 = getelementptr inbounds %struct.VoronoiParabola, ptr %372, i64 0, i32 1
  store ptr %351, ptr %373, align 8, !tbaa !58
  store ptr %372, ptr %357, align 8, !tbaa !57
  call fastcc void @voronoi_checkCircle(ptr noundef nonnull %6, ptr noundef %343)
  call fastcc void @voronoi_checkCircle(ptr noundef nonnull %6, ptr noundef %359)
  br label %553

374:                                              ; preds = %55
  %375 = getelementptr inbounds %struct.VoronoiEvent, ptr %56, i64 0, i32 4
  %376 = load ptr, ptr %375, align 8, !tbaa !68
  %377 = getelementptr inbounds %struct.VoronoiParabola, ptr %376, i64 0, i32 2
  %378 = load ptr, ptr %377, align 8, !tbaa !57
  br label %379

379:                                              ; preds = %384, %374
  %380 = phi ptr [ %378, %374 ], [ %386, %384 ]
  %381 = phi ptr [ %376, %374 ], [ %380, %384 ]
  %382 = load ptr, ptr %380, align 8, !tbaa !56
  %383 = icmp eq ptr %382, %381
  br i1 %383, label %384, label %388

384:                                              ; preds = %379
  %385 = getelementptr inbounds %struct.VoronoiParabola, ptr %380, i64 0, i32 2
  %386 = load ptr, ptr %385, align 8, !tbaa !57
  %387 = icmp eq ptr %386, null
  br i1 %387, label %388, label %379, !llvm.loop !69

388:                                              ; preds = %384, %379
  %389 = phi ptr [ null, %384 ], [ %380, %379 ]
  br label %390

390:                                              ; preds = %396, %388
  %391 = phi ptr [ %378, %388 ], [ %398, %396 ]
  %392 = phi ptr [ %376, %388 ], [ %391, %396 ]
  %393 = getelementptr inbounds %struct.VoronoiParabola, ptr %391, i64 0, i32 1
  %394 = load ptr, ptr %393, align 8, !tbaa !58
  %395 = icmp eq ptr %394, %392
  br i1 %395, label %396, label %400

396:                                              ; preds = %390
  %397 = getelementptr inbounds %struct.VoronoiParabola, ptr %391, i64 0, i32 2
  %398 = load ptr, ptr %397, align 8, !tbaa !57
  %399 = icmp eq ptr %398, null
  br i1 %399, label %400, label %390, !llvm.loop !70

400:                                              ; preds = %396, %390
  %401 = phi ptr [ null, %396 ], [ %391, %390 ]
  %402 = icmp eq ptr %389, null
  br i1 %402, label %410, label %403

403:                                              ; preds = %400, %403
  %404 = phi ptr [ %409, %403 ], [ %389, %400 ]
  %405 = load ptr, ptr %404, align 8, !tbaa !44
  %406 = getelementptr inbounds %struct.VoronoiParabola, ptr %405, i64 0, i32 6
  %407 = load i8, ptr %406, align 8, !tbaa !54
  %408 = icmp eq i8 %407, 0
  %409 = getelementptr inbounds %struct.VoronoiParabola, ptr %405, i64 0, i32 1
  br i1 %408, label %403, label %410, !llvm.loop !64

410:                                              ; preds = %403, %400
  %411 = phi ptr [ null, %400 ], [ %405, %403 ]
  %412 = icmp eq ptr %401, null
  br i1 %412, label %421, label %413

413:                                              ; preds = %410
  %414 = getelementptr inbounds %struct.VoronoiParabola, ptr %401, i64 0, i32 1
  br label %415

415:                                              ; preds = %415, %413
  %416 = phi ptr [ %414, %413 ], [ %417, %415 ]
  %417 = load ptr, ptr %416, align 8, !tbaa !44
  %418 = getelementptr inbounds %struct.VoronoiParabola, ptr %417, i64 0, i32 6
  %419 = load i8, ptr %418, align 8, !tbaa !54
  %420 = icmp eq i8 %419, 0
  br i1 %420, label %415, label %421, !llvm.loop !65

421:                                              ; preds = %415, %410
  %422 = phi ptr [ null, %410 ], [ %417, %415 ]
  %423 = getelementptr inbounds %struct.VoronoiParabola, ptr %411, i64 0, i32 3
  %424 = load ptr, ptr %423, align 8, !tbaa !67
  %425 = icmp eq ptr %424, null
  br i1 %425, label %427, label %426

426:                                              ; preds = %421
  call void @BLI_freelinkN(ptr noundef nonnull %6, ptr noundef nonnull %424) #8
  store ptr null, ptr %423, align 8, !tbaa !67
  br label %427

427:                                              ; preds = %426, %421
  %428 = getelementptr inbounds %struct.VoronoiParabola, ptr %422, i64 0, i32 3
  %429 = load ptr, ptr %428, align 8, !tbaa !67
  %430 = icmp eq ptr %429, null
  br i1 %430, label %432, label %431

431:                                              ; preds = %427
  call void @BLI_freelinkN(ptr noundef nonnull %6, ptr noundef nonnull %429) #8
  store ptr null, ptr %428, align 8, !tbaa !67
  br label %432

432:                                              ; preds = %431, %427
  %433 = getelementptr inbounds %struct.VoronoiEvent, ptr %56, i64 0, i32 3
  %434 = load float, ptr %433, align 4, !tbaa !47
  %435 = getelementptr inbounds %struct.VoronoiParabola, ptr %376, i64 0, i32 5
  %436 = load float, ptr %16, align 8, !tbaa !52
  %437 = getelementptr inbounds %struct.VoronoiParabola, ptr %376, i64 0, i32 5, i64 1
  %438 = load float, ptr %437, align 4, !tbaa !47
  %439 = fsub float %438, %436
  %440 = fmul float %439, 2.000000e+00
  %441 = fdiv float 1.000000e+00, %440
  %442 = load float, ptr %435, align 4, !tbaa !47
  %443 = fmul float %442, -2.000000e+00
  %444 = fdiv float %443, %440
  %445 = fmul float %440, 2.500000e-01
  %446 = fadd float %436, %445
  %447 = fmul float %442, %442
  %448 = fdiv float %447, %440
  %449 = fadd float %448, %446
  %450 = fmul float %434, %441
  %451 = fmul float %434, %444
  %452 = call float @llvm.fmuladd.f32(float %450, float %434, float %451)
  %453 = fadd float %452, %449
  %454 = getelementptr inbounds %struct.VoronoiParabola, ptr %389, i64 0, i32 4
  %455 = load ptr, ptr %454, align 8, !tbaa !63
  %456 = getelementptr inbounds %struct.VoronoiEdge, ptr %455, i64 0, i32 3
  store float %434, ptr %456, align 4, !tbaa !47
  %457 = getelementptr inbounds %struct.VoronoiEdge, ptr %455, i64 0, i32 3, i64 1
  store float %453, ptr %457, align 4, !tbaa !47
  %458 = getelementptr inbounds %struct.VoronoiParabola, ptr %401, i64 0, i32 4
  %459 = load ptr, ptr %458, align 8, !tbaa !63
  %460 = getelementptr inbounds %struct.VoronoiEdge, ptr %459, i64 0, i32 3
  store float %434, ptr %460, align 4, !tbaa !47
  %461 = getelementptr inbounds %struct.VoronoiEdge, ptr %459, i64 0, i32 3, i64 1
  store float %453, ptr %461, align 4, !tbaa !47
  %462 = load ptr, ptr %17, align 8, !tbaa !53
  %463 = icmp eq ptr %376, %462
  br i1 %463, label %474, label %464

464:                                              ; preds = %432, %464
  %465 = phi ptr [ %472, %464 ], [ null, %432 ]
  %466 = phi ptr [ %468, %464 ], [ %376, %432 ]
  %467 = getelementptr inbounds %struct.VoronoiParabola, ptr %466, i64 0, i32 2
  %468 = load ptr, ptr %467, align 8, !tbaa !57
  %469 = icmp eq ptr %468, %389
  %470 = select i1 %469, ptr %389, ptr %465
  %471 = icmp eq ptr %468, %401
  %472 = select i1 %471, ptr %401, ptr %470
  %473 = icmp eq ptr %468, %462
  br i1 %473, label %474, label %464, !llvm.loop !71

474:                                              ; preds = %464, %432
  %475 = phi ptr [ null, %432 ], [ %472, %464 ]
  %476 = getelementptr inbounds %struct.VoronoiParabola, ptr %411, i64 0, i32 5
  %477 = getelementptr inbounds %struct.VoronoiParabola, ptr %422, i64 0, i32 5
  %478 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %479 = call ptr %478(i64 noundef 72, ptr noundef nonnull @.str.2) #8
  %480 = getelementptr inbounds %struct.VoronoiEdge, ptr %479, i64 0, i32 2
  store float %434, ptr %480, align 4, !tbaa !47
  %481 = getelementptr inbounds %struct.VoronoiEdge, ptr %479, i64 0, i32 2, i64 1
  store float %453, ptr %481, align 4, !tbaa !47
  %482 = getelementptr inbounds %struct.VoronoiEdge, ptr %479, i64 0, i32 5
  %483 = load float, ptr %476, align 4, !tbaa !47
  store float %483, ptr %482, align 4, !tbaa !47
  %484 = getelementptr inbounds %struct.VoronoiParabola, ptr %411, i64 0, i32 5, i64 1
  %485 = load float, ptr %484, align 4, !tbaa !47
  %486 = getelementptr inbounds %struct.VoronoiEdge, ptr %479, i64 0, i32 5, i64 1
  store float %485, ptr %486, align 4, !tbaa !47
  %487 = getelementptr inbounds %struct.VoronoiEdge, ptr %479, i64 0, i32 6
  %488 = load float, ptr %477, align 4, !tbaa !47
  store float %488, ptr %487, align 4, !tbaa !47
  %489 = getelementptr inbounds %struct.VoronoiParabola, ptr %422, i64 0, i32 5, i64 1
  %490 = load float, ptr %489, align 4, !tbaa !47
  %491 = getelementptr inbounds %struct.VoronoiEdge, ptr %479, i64 0, i32 6, i64 1
  store float %490, ptr %491, align 4, !tbaa !47
  %492 = getelementptr inbounds %struct.VoronoiEdge, ptr %479, i64 0, i32 9
  store ptr null, ptr %492, align 8, !tbaa !59
  %493 = getelementptr inbounds %struct.VoronoiEdge, ptr %479, i64 0, i32 3
  store float 0.000000e+00, ptr %493, align 8, !tbaa !47
  %494 = getelementptr inbounds %struct.VoronoiEdge, ptr %479, i64 0, i32 3, i64 1
  store float 0.000000e+00, ptr %494, align 4, !tbaa !47
  %495 = load float, ptr %477, align 4, !tbaa !47
  %496 = load float, ptr %476, align 4, !tbaa !47
  %497 = fsub float %495, %496
  %498 = load float, ptr %484, align 4, !tbaa !47
  %499 = load float, ptr %489, align 4, !tbaa !47
  %500 = fsub float %498, %499
  %501 = fdiv float %497, %500
  %502 = getelementptr inbounds %struct.VoronoiEdge, ptr %479, i64 0, i32 7
  store float %501, ptr %502, align 8, !tbaa !61
  %503 = fneg float %501
  %504 = call float @llvm.fmuladd.f32(float %503, float %434, float %453)
  %505 = getelementptr inbounds %struct.VoronoiEdge, ptr %479, i64 0, i32 8
  store float %504, ptr %505, align 4, !tbaa !62
  %506 = load float, ptr %489, align 4, !tbaa !47
  %507 = load float, ptr %484, align 4, !tbaa !47
  %508 = fsub float %506, %507
  %509 = getelementptr inbounds %struct.VoronoiEdge, ptr %479, i64 0, i32 4
  store float %508, ptr %509, align 8, !tbaa !47
  %510 = load float, ptr %477, align 4, !tbaa !47
  %511 = load float, ptr %476, align 4, !tbaa !47
  %512 = fsub float %510, %511
  %513 = fneg float %512
  %514 = getelementptr inbounds %struct.VoronoiEdge, ptr %479, i64 0, i32 4, i64 1
  store float %513, ptr %514, align 4, !tbaa !47
  %515 = getelementptr inbounds %struct.VoronoiParabola, ptr %475, i64 0, i32 4
  store ptr %479, ptr %515, align 8, !tbaa !63
  call void @BLI_addtail(ptr noundef nonnull %18, ptr noundef %479) #8
  %516 = load ptr, ptr %377, align 8, !tbaa !57
  %517 = getelementptr inbounds %struct.VoronoiParabola, ptr %516, i64 0, i32 2
  %518 = load ptr, ptr %517, align 8, !tbaa !57
  %519 = load ptr, ptr %516, align 8, !tbaa !56
  %520 = icmp eq ptr %519, %376
  %521 = load ptr, ptr %518, align 8, !tbaa !56
  %522 = icmp eq ptr %521, %516
  br i1 %520, label %523, label %536

523:                                              ; preds = %474
  br i1 %522, label %524, label %528

524:                                              ; preds = %523
  %525 = getelementptr inbounds %struct.VoronoiParabola, ptr %516, i64 0, i32 1
  %526 = load ptr, ptr %525, align 8, !tbaa !58
  store ptr %526, ptr %518, align 8, !tbaa !56
  %527 = getelementptr inbounds %struct.VoronoiParabola, ptr %526, i64 0, i32 2
  store ptr %518, ptr %527, align 8, !tbaa !57
  br label %528

528:                                              ; preds = %524, %523
  %529 = getelementptr inbounds %struct.VoronoiParabola, ptr %518, i64 0, i32 1
  %530 = load ptr, ptr %529, align 8, !tbaa !58
  %531 = load ptr, ptr %377, align 8, !tbaa !57
  %532 = icmp eq ptr %530, %531
  br i1 %532, label %533, label %549

533:                                              ; preds = %528
  %534 = getelementptr inbounds %struct.VoronoiParabola, ptr %531, i64 0, i32 1
  %535 = load ptr, ptr %534, align 8, !tbaa !58
  store ptr %535, ptr %529, align 8, !tbaa !58
  br label %546

536:                                              ; preds = %474
  br i1 %522, label %537, label %539

537:                                              ; preds = %536
  store ptr %519, ptr %518, align 8, !tbaa !56
  %538 = getelementptr inbounds %struct.VoronoiParabola, ptr %519, i64 0, i32 2
  store ptr %518, ptr %538, align 8, !tbaa !57
  br label %539

539:                                              ; preds = %537, %536
  %540 = getelementptr inbounds %struct.VoronoiParabola, ptr %518, i64 0, i32 1
  %541 = load ptr, ptr %540, align 8, !tbaa !58
  %542 = load ptr, ptr %377, align 8, !tbaa !57
  %543 = icmp eq ptr %541, %542
  br i1 %543, label %544, label %549

544:                                              ; preds = %539
  %545 = load ptr, ptr %542, align 8, !tbaa !56
  store ptr %545, ptr %540, align 8, !tbaa !58
  br label %546

546:                                              ; preds = %544, %533
  %547 = phi ptr [ %535, %533 ], [ %545, %544 ]
  %548 = getelementptr inbounds %struct.VoronoiParabola, ptr %547, i64 0, i32 2
  store ptr %518, ptr %548, align 8, !tbaa !57
  br label %549

549:                                              ; preds = %546, %528, %539
  %550 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  %551 = load ptr, ptr %377, align 8, !tbaa !57
  call void %550(ptr noundef %551) #8
  %552 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %552(ptr noundef %376) #8
  call fastcc void @voronoi_checkCircle(ptr noundef nonnull %6, ptr noundef %411)
  call fastcc void @voronoi_checkCircle(ptr noundef nonnull %6, ptr noundef %422)
  br label %553

553:                                              ; preds = %248, %135, %66, %549
  call void @BLI_freelinkN(ptr noundef nonnull %6, ptr noundef nonnull %56) #8
  %554 = load ptr, ptr %6, align 8, !tbaa !43
  %555 = icmp eq ptr %554, null
  br i1 %555, label %556, label %55, !llvm.loop !72

556:                                              ; preds = %553, %12
  %557 = getelementptr inbounds %struct.VoronoiProcess, ptr %6, i64 0, i32 2
  %558 = load ptr, ptr %557, align 8, !tbaa !53
  call fastcc void @voronoi_finishEdge(ptr noundef nonnull %6, ptr noundef %558)
  %559 = getelementptr inbounds %struct.VoronoiProcess, ptr %6, i64 0, i32 1
  %560 = load ptr, ptr %559, align 8, !tbaa !73
  %561 = icmp eq ptr %560, null
  br i1 %561, label %578, label %562

562:                                              ; preds = %556, %575
  %563 = phi ptr [ %576, %575 ], [ %560, %556 ]
  %564 = getelementptr inbounds %struct.VoronoiEdge, ptr %563, i64 0, i32 9
  %565 = load ptr, ptr %564, align 8, !tbaa !59
  %566 = icmp eq ptr %565, null
  br i1 %566, label %575, label %567

567:                                              ; preds = %562
  %568 = getelementptr inbounds %struct.VoronoiEdge, ptr %563, i64 0, i32 2
  %569 = getelementptr inbounds %struct.VoronoiEdge, ptr %565, i64 0, i32 3
  %570 = load float, ptr %569, align 4, !tbaa !47
  store float %570, ptr %568, align 4, !tbaa !47
  %571 = getelementptr inbounds %struct.VoronoiEdge, ptr %565, i64 0, i32 3, i64 1
  %572 = load float, ptr %571, align 4, !tbaa !47
  %573 = getelementptr inbounds %struct.VoronoiEdge, ptr %563, i64 0, i32 2, i64 1
  store float %572, ptr %573, align 4, !tbaa !47
  %574 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %574(ptr noundef nonnull %565) #8
  br label %575

575:                                              ; preds = %567, %562
  %576 = load ptr, ptr %563, align 8, !tbaa !74
  %577 = icmp eq ptr %576, null
  br i1 %577, label %578, label %562, !llvm.loop !75

578:                                              ; preds = %575, %556
  call void @BLI_movelisttolist(ptr noundef %4, ptr noundef nonnull %559) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @voronoi_finishEdge(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.VoronoiParabola, ptr %1, i64 0, i32 6
  %4 = load i8, ptr %3, align 8, !tbaa !54
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %7(ptr noundef %1) #8
  br label %29

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.VoronoiParabola, ptr %1, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !63
  %11 = getelementptr inbounds %struct.VoronoiEdge, ptr %10, i64 0, i32 4
  %12 = load float, ptr %11, align 8, !tbaa !47
  %13 = fcmp ogt float %12, 0.000000e+00
  br i1 %13, label %14, label %23

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.VoronoiProcess, ptr %0, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !34
  %17 = sitofp i32 %16 to float
  %18 = getelementptr inbounds %struct.VoronoiEdge, ptr %10, i64 0, i32 2
  %19 = load float, ptr %18, align 8, !tbaa !47
  %20 = fadd float %19, 1.000000e+01
  %21 = fcmp olt float %20, %17
  %22 = select i1 %21, float %17, float %20
  br label %30

23:                                               ; preds = %8
  %24 = getelementptr inbounds %struct.VoronoiEdge, ptr %10, i64 0, i32 2
  %25 = load float, ptr %24, align 8, !tbaa !47
  %26 = fadd float %25, -1.000000e+01
  %27 = fcmp ogt float %26, 0.000000e+00
  %28 = select i1 %27, float 0.000000e+00, float %26
  br label %30

29:                                               ; preds = %6, %30
  ret void

30:                                               ; preds = %23, %14
  %31 = phi float [ %22, %14 ], [ %28, %23 ]
  %32 = getelementptr inbounds %struct.VoronoiEdge, ptr %10, i64 0, i32 3
  store float %31, ptr %32, align 8, !tbaa !47
  %33 = getelementptr inbounds %struct.VoronoiEdge, ptr %10, i64 0, i32 7
  %34 = load float, ptr %33, align 8, !tbaa !61
  %35 = getelementptr inbounds %struct.VoronoiEdge, ptr %10, i64 0, i32 8
  %36 = load float, ptr %35, align 4, !tbaa !62
  %37 = tail call float @llvm.fmuladd.f32(float %31, float %34, float %36)
  %38 = getelementptr inbounds %struct.VoronoiEdge, ptr %10, i64 0, i32 3, i64 1
  store float %37, ptr %38, align 4, !tbaa !47
  %39 = load ptr, ptr %1, align 8, !tbaa !56
  tail call fastcc void @voronoi_finishEdge(ptr noundef %0, ptr noundef %39)
  %40 = getelementptr inbounds %struct.VoronoiParabola, ptr %1, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !58
  tail call fastcc void @voronoi_finishEdge(ptr noundef %0, ptr noundef %41)
  %42 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %42(ptr noundef nonnull %1) #8
  br label %29
}

declare void @BLI_movelisttolist(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @BLI_voronoi_triangulate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6, ptr nocapture noundef writeonly %7, ptr nocapture noundef writeonly %8) local_unnamed_addr #0 {
  %10 = alloca [2 x float], align 4
  %11 = alloca [2 x float], align 4
  %12 = alloca [2 x float], align 4
  %13 = alloca [4 x [2 x float]], align 16
  %14 = alloca [2 x float], align 8
  %15 = alloca ptr, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #8
  store ptr null, ptr %15, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #8
  store i32 0, ptr %16, align 4, !tbaa !76
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  %18 = load ptr, ptr %2, align 8, !tbaa !44
  %19 = icmp eq ptr %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %9, %20
  %21 = phi ptr [ %26, %20 ], [ %18, %9 ]
  %22 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %23 = call ptr %22(i64 noundef 72, ptr noundef nonnull @.str.5) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %23, ptr noundef nonnull align 8 dereferenceable(72) %21, i64 72, i1 false), !tbaa.struct !77
  call void @BLI_addtail(ptr noundef nonnull %17, ptr noundef %23) #8
  %24 = getelementptr inbounds %struct.VoronoiEdge, ptr %23, i64 0, i32 2
  %25 = getelementptr inbounds %struct.VoronoiEdge, ptr %23, i64 0, i32 3
  call fastcc void @voronoi_clampEdgeVertex(i32 noundef %3, i32 noundef %4, ptr noundef nonnull %24, ptr noundef nonnull %25)
  call fastcc void @voronoi_clampEdgeVertex(i32 noundef %3, i32 noundef %4, ptr noundef nonnull %25, ptr noundef nonnull %24)
  %26 = load ptr, ptr %21, align 8, !tbaa !44
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %20, !llvm.loop !79

28:                                               ; preds = %20, %9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13) #8
  %29 = add nsw i32 %3, -1
  %30 = sitofp i32 %29 to float
  store float %30, ptr %13, align 16, !tbaa !47
  %31 = getelementptr inbounds float, ptr %13, i64 1
  store float 0.000000e+00, ptr %31, align 4, !tbaa !47
  %32 = getelementptr inbounds [2 x float], ptr %13, i64 1
  store float %30, ptr %32, align 8, !tbaa !47
  %33 = getelementptr inbounds [2 x float], ptr %13, i64 1, i64 1
  %34 = add nsw i32 %4, -1
  %35 = sitofp i32 %34 to float
  store float %35, ptr %33, align 4, !tbaa !47
  %36 = getelementptr inbounds [2 x float], ptr %13, i64 2
  store float 0.000000e+00, ptr %36, align 16, !tbaa !47
  %37 = getelementptr inbounds [2 x float], ptr %13, i64 2, i64 1
  store float %35, ptr %37, align 4, !tbaa !47
  %38 = getelementptr inbounds [2 x float], ptr %13, i64 3
  store float 0.000000e+00, ptr %38, align 8, !tbaa !47
  %39 = getelementptr inbounds [2 x float], ptr %13, i64 3, i64 1
  store float 0.000000e+00, ptr %39, align 4, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #8
  store i64 0, ptr %14, align 8
  %40 = getelementptr inbounds float, ptr %12, i64 1
  %41 = getelementptr inbounds float, ptr %12, i64 1
  %42 = getelementptr inbounds float, ptr %12, i64 1
  %43 = getelementptr inbounds float, ptr %14, i64 1
  %44 = getelementptr inbounds float, ptr %14, i64 1
  %45 = load float, ptr %43, align 4
  br label %46

46:                                               ; preds = %28, %170
  %47 = phi i64 [ 0, %28 ], [ %176, %170 ]
  %48 = phi float [ %45, %28 ], [ %171, %170 ]
  %49 = phi i32 [ 0, %28 ], [ %173, %170 ]
  %50 = phi i32 [ 1, %28 ], [ %175, %170 ]
  %51 = phi float [ 0.000000e+00, %28 ], [ %143, %170 ]
  %52 = phi float [ 0.000000e+00, %28 ], [ %142, %170 ]
  %53 = phi float [ 0.000000e+00, %28 ], [ %172, %170 ]
  %54 = icmp eq i32 %49, 0
  %55 = zext i1 %54 to i64
  %56 = getelementptr inbounds float, ptr %14, i64 %55
  %57 = icmp sgt i32 %50, 0
  %58 = zext nneg i32 %49 to i64
  %59 = getelementptr inbounds float, ptr %14, i64 %58
  %60 = getelementptr inbounds [2 x float], ptr %12, i64 0, i64 %58
  %61 = icmp slt i32 %50, 0
  %62 = zext nneg i32 %49 to i64
  %63 = getelementptr inbounds float, ptr %14, i64 %62
  %64 = getelementptr inbounds [2 x float], ptr %12, i64 0, i64 %62
  br label %65

65:                                               ; preds = %46, %146
  %66 = phi float [ %142, %146 ], [ %48, %46 ]
  %67 = phi float [ %143, %146 ], [ %53, %46 ]
  %68 = phi float [ %142, %146 ], [ %52, %46 ]
  %69 = phi float [ %143, %146 ], [ %51, %46 ]
  %70 = load ptr, ptr %17, align 8, !tbaa !80
  %71 = icmp eq ptr %70, null
  br i1 %71, label %141, label %72

72:                                               ; preds = %65
  %73 = load float, ptr %56, align 4, !tbaa !47
  br label %74

74:                                               ; preds = %72, %135
  %75 = phi ptr [ %70, %72 ], [ %139, %135 ]
  %76 = phi float [ 0x47EFFFFFE0000000, %72 ], [ %138, %135 ]
  %77 = phi float [ %69, %72 ], [ %137, %135 ]
  %78 = phi float [ %68, %72 ], [ %136, %135 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8
  %79 = getelementptr inbounds %struct.VoronoiEdge, ptr %75, i64 0, i32 2, i64 %55
  %80 = load float, ptr %79, align 4, !tbaa !47
  %81 = fsub float %80, %73
  %82 = call float @llvm.fabs.f32(float %81)
  %83 = fcmp olt float %82, 0x3F847AE140000000
  br i1 %83, label %84, label %95

84:                                               ; preds = %74
  %85 = getelementptr inbounds %struct.VoronoiEdge, ptr %75, i64 0, i32 2
  %86 = load float, ptr %85, align 4, !tbaa !47
  %87 = fsub float %86, %67
  %88 = getelementptr inbounds %struct.VoronoiEdge, ptr %75, i64 0, i32 2, i64 1
  %89 = load float, ptr %88, align 4, !tbaa !47
  %90 = fsub float %89, %66
  %91 = fmul float %90, %90
  %92 = call float @llvm.fmuladd.f32(float %87, float %87, float %91)
  %93 = fcmp ogt float %92, 0x3F847AE140000000
  br i1 %93, label %94, label %95

94:                                               ; preds = %84
  store float %86, ptr %12, align 4, !tbaa !47
  store float %89, ptr %40, align 4, !tbaa !47
  br label %95

95:                                               ; preds = %94, %84, %74
  %96 = phi i8 [ 1, %94 ], [ 0, %84 ], [ 0, %74 ]
  %97 = getelementptr inbounds %struct.VoronoiEdge, ptr %75, i64 0, i32 3, i64 %55
  %98 = load float, ptr %97, align 4, !tbaa !47
  %99 = fsub float %98, %73
  %100 = call float @llvm.fabs.f32(float %99)
  %101 = fcmp olt float %100, 0x3F847AE140000000
  br i1 %101, label %102, label %113

102:                                              ; preds = %95
  %103 = getelementptr inbounds %struct.VoronoiEdge, ptr %75, i64 0, i32 3
  %104 = load float, ptr %103, align 4, !tbaa !47
  %105 = fsub float %104, %67
  %106 = getelementptr inbounds %struct.VoronoiEdge, ptr %75, i64 0, i32 3, i64 1
  %107 = load float, ptr %106, align 4, !tbaa !47
  %108 = fsub float %107, %66
  %109 = fmul float %108, %108
  %110 = call float @llvm.fmuladd.f32(float %105, float %105, float %109)
  %111 = fcmp ogt float %110, 0x3F847AE140000000
  br i1 %111, label %112, label %113

112:                                              ; preds = %102
  store float %104, ptr %12, align 4, !tbaa !47
  store float %107, ptr %41, align 4, !tbaa !47
  br label %113

113:                                              ; preds = %112, %102, %95
  %114 = phi i8 [ 1, %112 ], [ %96, %102 ], [ %96, %95 ]
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %135, label %116

116:                                              ; preds = %113
  br i1 %57, label %117, label %121

117:                                              ; preds = %116
  %118 = load float, ptr %59, align 4, !tbaa !47
  %119 = load float, ptr %60, align 4, !tbaa !47
  %120 = fcmp ogt float %118, %119
  br i1 %120, label %135, label %121

121:                                              ; preds = %117, %116
  br i1 %61, label %122, label %126

122:                                              ; preds = %121
  %123 = load float, ptr %63, align 4, !tbaa !47
  %124 = load float, ptr %64, align 4, !tbaa !47
  %125 = fcmp olt float %123, %124
  br i1 %125, label %135, label %126

126:                                              ; preds = %122, %121
  %127 = load float, ptr %12, align 4, !tbaa !47
  %128 = fsub float %127, %67
  %129 = load float, ptr %42, align 4, !tbaa !47
  %130 = fsub float %129, %66
  %131 = fmul float %130, %130
  %132 = call float @llvm.fmuladd.f32(float %128, float %128, float %131)
  %133 = fcmp olt float %132, %76
  br i1 %133, label %134, label %135

134:                                              ; preds = %126
  br label %135

135:                                              ; preds = %134, %126, %122, %117, %113
  %136 = phi float [ %78, %113 ], [ %78, %117 ], [ %78, %122 ], [ %129, %134 ], [ %78, %126 ]
  %137 = phi float [ %77, %113 ], [ %77, %117 ], [ %77, %122 ], [ %127, %134 ], [ %77, %126 ]
  %138 = phi float [ %76, %113 ], [ %76, %117 ], [ %76, %122 ], [ %132, %134 ], [ %76, %126 ]
  %139 = load ptr, ptr %75, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %74, !llvm.loop !81

141:                                              ; preds = %135, %65
  %142 = phi float [ %68, %65 ], [ %136, %135 ]
  %143 = phi float [ %69, %65 ], [ %137, %135 ]
  %144 = phi float [ 0x47EFFFFFE0000000, %65 ], [ %138, %135 ]
  %145 = fcmp uge float %144, 0x47EFFFFFE0000000
  br i1 %145, label %153, label %146

146:                                              ; preds = %141
  %147 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %148 = call ptr %147(i64 noundef 72, ptr noundef nonnull @.str.6) #8
  %149 = getelementptr inbounds %struct.VoronoiEdge, ptr %148, i64 0, i32 2
  store float %67, ptr %149, align 4, !tbaa !47
  %150 = getelementptr inbounds %struct.VoronoiEdge, ptr %148, i64 0, i32 2, i64 1
  store float %66, ptr %150, align 4, !tbaa !47
  %151 = getelementptr inbounds %struct.VoronoiEdge, ptr %148, i64 0, i32 3
  store float %143, ptr %151, align 4, !tbaa !47
  %152 = getelementptr inbounds %struct.VoronoiEdge, ptr %148, i64 0, i32 3, i64 1
  store float %142, ptr %152, align 4, !tbaa !47
  call void @BLI_addtail(ptr noundef nonnull %17, ptr noundef %148) #8
  store float %143, ptr %14, align 8, !tbaa !47
  store float %142, ptr %43, align 4, !tbaa !47
  br label %65, !llvm.loop !82

153:                                              ; preds = %141
  %154 = getelementptr inbounds [4 x [2 x float]], ptr %13, i64 0, i64 %47
  %155 = load float, ptr %154, align 8, !tbaa !47
  %156 = fsub float %155, %67
  %157 = getelementptr inbounds float, ptr %154, i64 1
  %158 = load float, ptr %157, align 4, !tbaa !47
  %159 = fsub float %158, %66
  %160 = fmul float %159, %159
  %161 = call float @llvm.fmuladd.f32(float %156, float %156, float %160)
  %162 = fcmp ogt float %161, 0x3F847AE140000000
  br i1 %162, label %163, label %170

163:                                              ; preds = %153
  %164 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %165 = call ptr %164(i64 noundef 72, ptr noundef nonnull @.str.6) #8
  %166 = getelementptr inbounds %struct.VoronoiEdge, ptr %165, i64 0, i32 2
  store float %67, ptr %166, align 4, !tbaa !47
  %167 = getelementptr inbounds %struct.VoronoiEdge, ptr %165, i64 0, i32 2, i64 1
  store float %66, ptr %167, align 4, !tbaa !47
  %168 = getelementptr inbounds %struct.VoronoiEdge, ptr %165, i64 0, i32 3
  store float %155, ptr %168, align 4, !tbaa !47
  %169 = getelementptr inbounds %struct.VoronoiEdge, ptr %165, i64 0, i32 3, i64 1
  store float %158, ptr %169, align 4, !tbaa !47
  call void @BLI_addtail(ptr noundef nonnull %17, ptr noundef %165) #8
  store float %155, ptr %14, align 8, !tbaa !47
  store float %158, ptr %44, align 4, !tbaa !47
  br label %170

170:                                              ; preds = %163, %153
  %171 = phi float [ %158, %163 ], [ %66, %153 ]
  %172 = phi float [ %155, %163 ], [ %67, %153 ]
  %173 = xor i32 %49, 1
  %174 = icmp eq i64 %47, 1
  %175 = select i1 %174, i32 -1, i32 %50
  %176 = add nuw nsw i64 %47, 1
  %177 = icmp eq i64 %176, 4
  br i1 %177, label %178, label %46, !llvm.loop !83

178:                                              ; preds = %170
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #8
  %179 = icmp sgt i32 %1, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %178
  %181 = getelementptr inbounds float, ptr %11, i64 1
  %182 = getelementptr inbounds float, ptr %10, i64 1
  %183 = zext nneg i32 %1 to i64
  br label %192

184:                                              ; preds = %291, %178
  %185 = phi ptr [ null, %178 ], [ %292, %291 ]
  %186 = phi i32 [ 0, %178 ], [ %293, %291 ]
  %187 = load i32, ptr %16, align 4, !tbaa !76
  %188 = icmp sgt i32 %187, 0
  br i1 %188, label %189, label %313

189:                                              ; preds = %184
  %190 = load ptr, ptr %15, align 8, !tbaa !44
  %191 = zext nneg i32 %187 to i64
  br label %296

192:                                              ; preds = %180, %291
  %193 = phi i64 [ 0, %180 ], [ %294, %291 ]
  %194 = phi i32 [ 0, %180 ], [ %293, %291 ]
  %195 = phi ptr [ null, %180 ], [ %292, %291 ]
  %196 = getelementptr inbounds %struct.VoronoiSite, ptr %0, i64 %193
  %197 = getelementptr inbounds %struct.VoronoiSite, ptr %0, i64 %193, i32 1
  %198 = call fastcc i32 @voronoi_addTriangulationPoint(ptr noundef %196, ptr noundef nonnull %197, ptr noundef nonnull %15, ptr noundef nonnull %16)
  %199 = load ptr, ptr %17, align 8, !tbaa !44
  %200 = icmp eq ptr %199, null
  br i1 %200, label %291, label %201

201:                                              ; preds = %192, %286
  %202 = phi ptr [ %289, %286 ], [ %199, %192 ]
  %203 = phi i32 [ %288, %286 ], [ %194, %192 ]
  %204 = phi ptr [ %287, %286 ], [ %195, %192 ]
  %205 = load ptr, ptr %17, align 8, !tbaa !44
  %206 = icmp eq ptr %205, null
  br i1 %206, label %264, label %207

207:                                              ; preds = %201
  %208 = getelementptr inbounds %struct.VoronoiEdge, ptr %202, i64 0, i32 2
  %209 = getelementptr inbounds %struct.VoronoiEdge, ptr %202, i64 0, i32 3
  br label %210

210:                                              ; preds = %207, %260
  %211 = phi ptr [ %205, %207 ], [ %261, %260 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #8
  %212 = getelementptr inbounds %struct.VoronoiEdge, ptr %211, i64 0, i32 2
  %213 = getelementptr inbounds %struct.VoronoiEdge, ptr %211, i64 0, i32 3
  %214 = call i32 @isect_seg_seg_v2_point(ptr noundef %196, ptr noundef nonnull %208, ptr noundef nonnull %212, ptr noundef nonnull %213, ptr noundef nonnull %11) #8
  %215 = icmp eq i32 %214, 1
  br i1 %215, label %216, label %236

216:                                              ; preds = %210
  %217 = load float, ptr %212, align 4, !tbaa !47
  %218 = load float, ptr %11, align 4, !tbaa !47
  %219 = fsub float %217, %218
  %220 = getelementptr inbounds %struct.VoronoiEdge, ptr %211, i64 0, i32 2, i64 1
  %221 = load float, ptr %220, align 4, !tbaa !47
  %222 = load float, ptr %181, align 4, !tbaa !47
  %223 = fsub float %221, %222
  %224 = fmul float %223, %223
  %225 = call float @llvm.fmuladd.f32(float %219, float %219, float %224)
  %226 = fcmp ogt float %225, 0x3F847AE140000000
  br i1 %226, label %227, label %236

227:                                              ; preds = %216
  %228 = load float, ptr %213, align 4, !tbaa !47
  %229 = fsub float %228, %218
  %230 = getelementptr inbounds %struct.VoronoiEdge, ptr %211, i64 0, i32 3, i64 1
  %231 = load float, ptr %230, align 4, !tbaa !47
  %232 = fsub float %231, %222
  %233 = fmul float %232, %232
  %234 = call float @llvm.fmuladd.f32(float %229, float %229, float %233)
  %235 = fcmp ogt float %234, 0x3F847AE140000000
  br i1 %235, label %239, label %236

236:                                              ; preds = %227, %216, %210
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8
  %237 = call i32 @isect_seg_seg_v2_point(ptr noundef %196, ptr noundef nonnull %209, ptr noundef nonnull %212, ptr noundef nonnull %213, ptr noundef nonnull %10) #8
  %238 = icmp eq i32 %237, 1
  br i1 %238, label %240, label %260

239:                                              ; preds = %227
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8
  br label %286

240:                                              ; preds = %236
  %241 = load float, ptr %212, align 4, !tbaa !47
  %242 = load float, ptr %10, align 4, !tbaa !47
  %243 = fsub float %241, %242
  %244 = getelementptr inbounds %struct.VoronoiEdge, ptr %211, i64 0, i32 2, i64 1
  %245 = load float, ptr %244, align 4, !tbaa !47
  %246 = load float, ptr %182, align 4, !tbaa !47
  %247 = fsub float %245, %246
  %248 = fmul float %247, %247
  %249 = call float @llvm.fmuladd.f32(float %243, float %243, float %248)
  %250 = fcmp ogt float %249, 0x3F847AE140000000
  br i1 %250, label %251, label %260

251:                                              ; preds = %240
  %252 = load float, ptr %213, align 4, !tbaa !47
  %253 = fsub float %252, %242
  %254 = getelementptr inbounds %struct.VoronoiEdge, ptr %211, i64 0, i32 3, i64 1
  %255 = load float, ptr %254, align 4, !tbaa !47
  %256 = fsub float %255, %246
  %257 = fmul float %256, %256
  %258 = call float @llvm.fmuladd.f32(float %253, float %253, float %257)
  %259 = fcmp ogt float %258, 0x3F847AE140000000
  br i1 %259, label %263, label %260

260:                                              ; preds = %251, %240, %236
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  %261 = load ptr, ptr %211, align 8, !tbaa !44
  %262 = icmp eq ptr %261, null
  br i1 %262, label %264, label %210

263:                                              ; preds = %251
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  br label %286, !llvm.loop !84

264:                                              ; preds = %260, %201
  %265 = getelementptr inbounds %struct.VoronoiEdge, ptr %202, i64 0, i32 2
  %266 = call fastcc i32 @voronoi_addTriangulationPoint(ptr noundef nonnull %265, ptr noundef nonnull %197, ptr noundef nonnull %15, ptr noundef nonnull %16)
  %267 = getelementptr inbounds %struct.VoronoiEdge, ptr %202, i64 0, i32 3
  %268 = call fastcc i32 @voronoi_addTriangulationPoint(ptr noundef nonnull %267, ptr noundef nonnull %197, ptr noundef nonnull %15, ptr noundef nonnull %16)
  %269 = icmp eq ptr %204, null
  br i1 %269, label %276, label %270

270:                                              ; preds = %264
  %271 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !44
  %272 = add nsw i32 %203, 1
  %273 = sext i32 %272 to i64
  %274 = mul nsw i64 %273, 12
  %275 = call ptr %271(ptr noundef nonnull %204, i64 noundef %274, ptr noundef nonnull @__func__.voronoi_addTriangle) #8
  br label %279

276:                                              ; preds = %264
  %277 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %278 = call ptr %277(i64 noundef 12, ptr noundef nonnull @.str.8) #8
  br label %279

279:                                              ; preds = %270, %276
  %280 = phi ptr [ %278, %276 ], [ %275, %270 ]
  %281 = sext i32 %203 to i64
  %282 = getelementptr inbounds [3 x i32], ptr %280, i64 %281
  store i32 %198, ptr %282, align 4, !tbaa !76
  %283 = getelementptr inbounds i32, ptr %282, i64 1
  store i32 %266, ptr %283, align 4, !tbaa !76
  %284 = getelementptr inbounds i32, ptr %282, i64 2
  store i32 %268, ptr %284, align 4, !tbaa !76
  %285 = add nsw i32 %203, 1
  br label %286

286:                                              ; preds = %263, %239, %279
  %287 = phi ptr [ %280, %279 ], [ %204, %263 ], [ %204, %239 ]
  %288 = phi i32 [ %285, %279 ], [ %203, %263 ], [ %203, %239 ]
  %289 = load ptr, ptr %202, align 8, !tbaa !44
  %290 = icmp eq ptr %289, null
  br i1 %290, label %291, label %201, !llvm.loop !85

291:                                              ; preds = %286, %192
  %292 = phi ptr [ %195, %192 ], [ %287, %286 ]
  %293 = phi i32 [ %194, %192 ], [ %288, %286 ]
  %294 = add nuw nsw i64 %193, 1
  %295 = icmp eq i64 %294, %183
  br i1 %295, label %184, label %192, !llvm.loop !86

296:                                              ; preds = %189, %296
  %297 = phi i64 [ 0, %189 ], [ %311, %296 ]
  %298 = getelementptr inbounds %struct.VoronoiTriangulationPoint, ptr %190, i64 %297, i32 1
  %299 = getelementptr inbounds %struct.VoronoiTriangulationPoint, ptr %190, i64 %297, i32 2
  %300 = load i32, ptr %299, align 4, !tbaa !87
  %301 = sitofp i32 %300 to float
  %302 = fdiv float 1.000000e+00, %301
  %303 = load float, ptr %298, align 4, !tbaa !47
  %304 = fmul float %303, %302
  store float %304, ptr %298, align 4, !tbaa !47
  %305 = getelementptr inbounds float, ptr %298, i64 1
  %306 = load float, ptr %305, align 4, !tbaa !47
  %307 = fmul float %302, %306
  store float %307, ptr %305, align 4, !tbaa !47
  %308 = getelementptr inbounds float, ptr %298, i64 2
  %309 = load float, ptr %308, align 4, !tbaa !47
  %310 = fmul float %302, %309
  store float %310, ptr %308, align 4, !tbaa !47
  %311 = add nuw nsw i64 %297, 1
  %312 = icmp eq i64 %311, %191
  br i1 %312, label %313, label %296, !llvm.loop !89

313:                                              ; preds = %296, %184
  %314 = load ptr, ptr %15, align 8, !tbaa !44
  store ptr %314, ptr %5, align 8, !tbaa !44
  store i32 %187, ptr %6, align 4, !tbaa !76
  store ptr %185, ptr %7, align 8, !tbaa !44
  store i32 %186, ptr %8, align 4, !tbaa !76
  call void @BLI_freelistN(ptr noundef nonnull %17) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @voronoi_addTriangulationPoint(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = load i32, ptr %3, align 4, !tbaa !76
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %47

7:                                                ; preds = %4
  %8 = load ptr, ptr %2, align 8, !tbaa !44
  %9 = load float, ptr %0, align 4, !tbaa !47
  %10 = getelementptr inbounds float, ptr %0, i64 1
  %11 = zext nneg i32 %5 to i64
  br label %12

12:                                               ; preds = %7, %44
  %13 = phi i64 [ 0, %7 ], [ %45, %44 ]
  %14 = getelementptr inbounds %struct.VoronoiTriangulationPoint, ptr %8, i64 %13
  %15 = load float, ptr %14, align 4, !tbaa !47
  %16 = fcmp oeq float %9, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load float, ptr %10, align 4, !tbaa !47
  %19 = getelementptr inbounds float, ptr %14, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !47
  %21 = fcmp oeq float %18, %20
  %22 = zext i1 %21 to i8
  br label %23

23:                                               ; preds = %12, %17
  %24 = phi i8 [ 0, %12 ], [ %22, %17 ]
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %44, label %26

26:                                               ; preds = %23
  %27 = trunc i64 %13 to i32
  %28 = getelementptr inbounds %struct.VoronoiTriangulationPoint, ptr %8, i64 %13, i32 1
  %29 = load float, ptr %1, align 4, !tbaa !47
  %30 = load float, ptr %28, align 4, !tbaa !47
  %31 = fadd float %29, %30
  store float %31, ptr %28, align 4, !tbaa !47
  %32 = getelementptr inbounds float, ptr %1, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !47
  %34 = getelementptr inbounds float, ptr %28, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !47
  %36 = fadd float %33, %35
  store float %36, ptr %34, align 4, !tbaa !47
  %37 = getelementptr inbounds float, ptr %1, i64 2
  %38 = load float, ptr %37, align 4, !tbaa !47
  %39 = getelementptr inbounds float, ptr %28, i64 2
  %40 = load float, ptr %39, align 4, !tbaa !47
  %41 = fadd float %38, %40
  store float %41, ptr %39, align 4, !tbaa !47
  %42 = getelementptr inbounds %struct.VoronoiTriangulationPoint, ptr %8, i64 %13, i32 2
  %43 = load i32, ptr %42, align 4, !tbaa !87
  br label %78

44:                                               ; preds = %23
  %45 = add nuw nsw i64 %13, 1
  %46 = icmp eq i64 %45, %11
  br i1 %46, label %47, label %12, !llvm.loop !90

47:                                               ; preds = %44, %4
  %48 = load ptr, ptr %2, align 8, !tbaa !44
  %49 = icmp eq ptr %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %47
  %51 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !44
  %52 = add nsw i32 %5, 1
  %53 = sext i32 %52 to i64
  %54 = mul nsw i64 %53, 24
  %55 = tail call ptr %51(ptr noundef nonnull %48, i64 noundef %54, ptr noundef nonnull @__func__.voronoi_addTriangulationPoint) #8
  br label %59

56:                                               ; preds = %47
  %57 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %58 = tail call ptr %57(i64 noundef 24, ptr noundef nonnull @.str.7) #8
  br label %59

59:                                               ; preds = %56, %50
  %60 = phi ptr [ %58, %56 ], [ %55, %50 ]
  store ptr %60, ptr %2, align 8, !tbaa !44
  %61 = load i32, ptr %3, align 4, !tbaa !76
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.VoronoiTriangulationPoint, ptr %60, i64 %62
  %64 = load float, ptr %0, align 4, !tbaa !47
  store float %64, ptr %63, align 4, !tbaa !47
  %65 = getelementptr inbounds float, ptr %0, i64 1
  %66 = load float, ptr %65, align 4, !tbaa !47
  %67 = getelementptr inbounds float, ptr %63, i64 1
  store float %66, ptr %67, align 4, !tbaa !47
  %68 = getelementptr inbounds %struct.VoronoiTriangulationPoint, ptr %60, i64 %62, i32 1
  %69 = load float, ptr %1, align 4, !tbaa !47
  store float %69, ptr %68, align 4, !tbaa !47
  %70 = getelementptr inbounds float, ptr %1, i64 1
  %71 = load float, ptr %70, align 4, !tbaa !47
  %72 = getelementptr inbounds float, ptr %68, i64 1
  store float %71, ptr %72, align 4, !tbaa !47
  %73 = getelementptr inbounds float, ptr %1, i64 2
  %74 = load float, ptr %73, align 4, !tbaa !47
  %75 = getelementptr inbounds float, ptr %68, i64 2
  store float %74, ptr %75, align 4, !tbaa !47
  %76 = getelementptr inbounds %struct.VoronoiTriangulationPoint, ptr %60, i64 %62, i32 2
  store i32 1, ptr %76, align 4, !tbaa !87
  %77 = load i32, ptr %3, align 4, !tbaa !76
  br label %78

78:                                               ; preds = %59, %26
  %79 = phi i32 [ %77, %59 ], [ %43, %26 ]
  %80 = phi ptr [ %3, %59 ], [ %42, %26 ]
  %81 = phi i32 [ %77, %59 ], [ %27, %26 ]
  %82 = add nsw i32 %79, 1
  store i32 %82, ptr %80, align 4, !tbaa !76
  ret i32 %81
}

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #3

declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @voronoi_checkCircle(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.VoronoiParabola, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  br label %5

5:                                                ; preds = %10, %2
  %6 = phi ptr [ %4, %2 ], [ %12, %10 ]
  %7 = phi ptr [ %1, %2 ], [ %6, %10 ]
  %8 = load ptr, ptr %6, align 8, !tbaa !56
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.VoronoiParabola, ptr %6, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !57
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %5, !llvm.loop !69

14:                                               ; preds = %5, %10
  %15 = phi ptr [ null, %10 ], [ %6, %5 ]
  br label %16

16:                                               ; preds = %22, %14
  %17 = phi ptr [ %4, %14 ], [ %24, %22 ]
  %18 = phi ptr [ %1, %14 ], [ %17, %22 ]
  %19 = getelementptr inbounds %struct.VoronoiParabola, ptr %17, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !58
  %21 = icmp eq ptr %20, %18
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.VoronoiParabola, ptr %17, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !57
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %16, !llvm.loop !70

26:                                               ; preds = %16, %22
  %27 = phi ptr [ null, %22 ], [ %17, %16 ]
  %28 = icmp eq ptr %15, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %26, %29
  %30 = phi ptr [ %35, %29 ], [ %15, %26 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !44
  %32 = getelementptr inbounds %struct.VoronoiParabola, ptr %31, i64 0, i32 6
  %33 = load i8, ptr %32, align 8, !tbaa !54
  %34 = icmp eq i8 %33, 0
  %35 = getelementptr inbounds %struct.VoronoiParabola, ptr %31, i64 0, i32 1
  br i1 %34, label %29, label %36, !llvm.loop !64

36:                                               ; preds = %29, %26
  %37 = phi ptr [ null, %26 ], [ %31, %29 ]
  %38 = icmp eq ptr %27, null
  br i1 %38, label %47, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.VoronoiParabola, ptr %27, i64 0, i32 1
  br label %41

41:                                               ; preds = %41, %39
  %42 = phi ptr [ %40, %39 ], [ %43, %41 ]
  %43 = load ptr, ptr %42, align 8, !tbaa !44
  %44 = getelementptr inbounds %struct.VoronoiParabola, ptr %43, i64 0, i32 6
  %45 = load i8, ptr %44, align 8, !tbaa !54
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %41, label %47, !llvm.loop !65

47:                                               ; preds = %41, %36
  %48 = phi ptr [ null, %36 ], [ %43, %41 ]
  %49 = getelementptr inbounds %struct.VoronoiProcess, ptr %0, i64 0, i32 5
  %50 = load float, ptr %49, align 8, !tbaa !52
  %51 = icmp ne ptr %37, null
  %52 = icmp ne ptr %48, null
  %53 = and i1 %51, %52
  br i1 %53, label %54, label %152

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.VoronoiParabola, ptr %37, i64 0, i32 5
  %56 = getelementptr inbounds %struct.VoronoiParabola, ptr %48, i64 0, i32 5
  %57 = load float, ptr %56, align 4, !tbaa !47
  %58 = load float, ptr %55, align 4, !tbaa !47
  %59 = fsub float %57, %58
  %60 = getelementptr inbounds %struct.VoronoiParabola, ptr %48, i64 0, i32 5, i64 1
  %61 = load float, ptr %60, align 4, !tbaa !47
  %62 = getelementptr inbounds %struct.VoronoiParabola, ptr %37, i64 0, i32 5, i64 1
  %63 = load float, ptr %62, align 4, !tbaa !47
  %64 = fsub float %61, %63
  %65 = fmul float %64, %64
  %66 = tail call float @llvm.fmuladd.f32(float %59, float %59, float %65)
  %67 = fcmp olt float %66, 0x3F847AE140000000
  br i1 %67, label %152, label %68

68:                                               ; preds = %54
  %69 = getelementptr inbounds %struct.VoronoiParabola, ptr %15, i64 0, i32 4
  %70 = load ptr, ptr %69, align 8, !tbaa !63
  %71 = getelementptr inbounds %struct.VoronoiParabola, ptr %27, i64 0, i32 4
  %72 = load ptr, ptr %71, align 8, !tbaa !63
  %73 = getelementptr inbounds %struct.VoronoiEdge, ptr %72, i64 0, i32 8
  %74 = load float, ptr %73, align 4, !tbaa !62
  %75 = getelementptr inbounds %struct.VoronoiEdge, ptr %70, i64 0, i32 8
  %76 = load float, ptr %75, align 4, !tbaa !62
  %77 = fsub float %74, %76
  %78 = getelementptr inbounds %struct.VoronoiEdge, ptr %70, i64 0, i32 7
  %79 = load float, ptr %78, align 8, !tbaa !61
  %80 = getelementptr inbounds %struct.VoronoiEdge, ptr %72, i64 0, i32 7
  %81 = load float, ptr %80, align 8, !tbaa !61
  %82 = fsub float %79, %81
  %83 = fdiv float %77, %82
  %84 = tail call float @llvm.fmuladd.f32(float %79, float %83, float %76)
  %85 = getelementptr inbounds %struct.VoronoiEdge, ptr %70, i64 0, i32 2
  %86 = load float, ptr %85, align 8, !tbaa !47
  %87 = fsub float %83, %86
  %88 = getelementptr inbounds %struct.VoronoiEdge, ptr %70, i64 0, i32 4
  %89 = load float, ptr %88, align 8, !tbaa !47
  %90 = fdiv float %87, %89
  %91 = fcmp olt float %90, 0.000000e+00
  br i1 %91, label %152, label %92

92:                                               ; preds = %68
  %93 = getelementptr inbounds %struct.VoronoiEdge, ptr %70, i64 0, i32 2, i64 1
  %94 = load float, ptr %93, align 4, !tbaa !47
  %95 = fsub float %84, %94
  %96 = getelementptr inbounds %struct.VoronoiEdge, ptr %70, i64 0, i32 4, i64 1
  %97 = load float, ptr %96, align 4, !tbaa !47
  %98 = fdiv float %95, %97
  %99 = fcmp olt float %98, 0.000000e+00
  br i1 %99, label %152, label %100

100:                                              ; preds = %92
  %101 = getelementptr inbounds %struct.VoronoiEdge, ptr %72, i64 0, i32 2
  %102 = load float, ptr %101, align 8, !tbaa !47
  %103 = fsub float %83, %102
  %104 = getelementptr inbounds %struct.VoronoiEdge, ptr %72, i64 0, i32 4
  %105 = load float, ptr %104, align 8, !tbaa !47
  %106 = fdiv float %103, %105
  %107 = fcmp olt float %106, 0.000000e+00
  br i1 %107, label %152, label %108

108:                                              ; preds = %100
  %109 = getelementptr inbounds %struct.VoronoiEdge, ptr %72, i64 0, i32 2, i64 1
  %110 = load float, ptr %109, align 4, !tbaa !47
  %111 = fsub float %84, %110
  %112 = getelementptr inbounds %struct.VoronoiEdge, ptr %72, i64 0, i32 4, i64 1
  %113 = load float, ptr %112, align 4, !tbaa !47
  %114 = fdiv float %111, %113
  %115 = fcmp olt float %114, 0.000000e+00
  br i1 %115, label %152, label %116

116:                                              ; preds = %108
  %117 = fsub float %58, %83
  %118 = fsub float %63, %84
  %119 = fmul float %118, %118
  %120 = tail call float @llvm.fmuladd.f32(float %117, float %117, float %119)
  %121 = tail call float @sqrtf(float noundef %120) #8
  %122 = fsub float %84, %121
  %123 = fcmp ult float %122, %50
  br i1 %123, label %124, label %152

124:                                              ; preds = %116
  %125 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %126 = tail call ptr %125(i64 noundef 40, ptr noundef nonnull @.str.4) #8
  %127 = getelementptr inbounds %struct.VoronoiEvent, ptr %126, i64 0, i32 2
  store i32 1, ptr %127, align 8, !tbaa !45
  %128 = getelementptr inbounds %struct.VoronoiEvent, ptr %126, i64 0, i32 3
  store float %83, ptr %128, align 4, !tbaa !47
  %129 = getelementptr inbounds %struct.VoronoiEvent, ptr %126, i64 0, i32 3, i64 1
  store float %122, ptr %129, align 4, !tbaa !47
  %130 = getelementptr inbounds %struct.VoronoiParabola, ptr %1, i64 0, i32 3
  store ptr %126, ptr %130, align 8, !tbaa !67
  %131 = getelementptr inbounds %struct.VoronoiEvent, ptr %126, i64 0, i32 4
  store ptr %1, ptr %131, align 8, !tbaa !68
  %132 = load ptr, ptr %0, align 8, !tbaa !44
  %133 = icmp eq ptr %132, null
  br i1 %133, label %150, label %134

134:                                              ; preds = %124
  %135 = load float, ptr %129, align 4, !tbaa !47
  br label %136

136:                                              ; preds = %134, %146
  %137 = phi float [ %135, %134 ], [ %147, %146 ]
  %138 = phi ptr [ %132, %134 ], [ %148, %146 ]
  %139 = getelementptr inbounds %struct.VoronoiEvent, ptr %138, i64 0, i32 3, i64 1
  %140 = load float, ptr %139, align 4, !tbaa !47
  %141 = fcmp olt float %140, %137
  br i1 %141, label %150, label %142

142:                                              ; preds = %136
  %143 = fcmp oeq float %140, %137
  br i1 %143, label %144, label %146

144:                                              ; preds = %142
  %145 = fadd float %137, 0xBF847AE140000000
  store float %145, ptr %129, align 4, !tbaa !47
  br label %146

146:                                              ; preds = %144, %142
  %147 = phi float [ %145, %144 ], [ %137, %142 ]
  %148 = load ptr, ptr %138, align 8, !tbaa !44
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %136, !llvm.loop !48

150:                                              ; preds = %136, %146, %124
  %151 = phi ptr [ %132, %124 ], [ %138, %136 ], [ %148, %146 ]
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %0, ptr noundef %151, ptr noundef %126) #8
  br label %152

152:                                              ; preds = %108, %100, %92, %68, %116, %47, %54, %150
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define internal fastcc void @voronoi_clampEdgeVertex(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca [4 x [2 x float]], align 16
  %6 = alloca [2 x float], align 4
  %7 = alloca [2 x float], align 4
  %8 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #8
  store float 0.000000e+00, ptr %5, align 16, !tbaa !47
  %9 = getelementptr inbounds float, ptr %5, i64 1
  store float 0.000000e+00, ptr %9, align 4, !tbaa !47
  %10 = getelementptr inbounds [2 x float], ptr %5, i64 1
  %11 = add nsw i32 %0, -1
  %12 = sitofp i32 %11 to float
  store float %12, ptr %10, align 8, !tbaa !47
  %13 = getelementptr inbounds [2 x float], ptr %5, i64 1, i64 1
  store float 0.000000e+00, ptr %13, align 4, !tbaa !47
  %14 = getelementptr inbounds [2 x float], ptr %5, i64 2
  store float %12, ptr %14, align 16, !tbaa !47
  %15 = getelementptr inbounds [2 x float], ptr %5, i64 2, i64 1
  %16 = add nsw i32 %1, -1
  %17 = sitofp i32 %16 to float
  store float %17, ptr %15, align 4, !tbaa !47
  %18 = getelementptr inbounds [2 x float], ptr %5, i64 3
  store float 0.000000e+00, ptr %18, align 8, !tbaa !47
  %19 = getelementptr inbounds [2 x float], ptr %5, i64 3, i64 1
  store float %17, ptr %19, align 4, !tbaa !47
  %20 = icmp sgt i32 %0, 1
  %21 = load float, ptr %2, align 4, !tbaa !47
  br i1 %20, label %22, label %26

22:                                               ; preds = %4
  %23 = fcmp ult float %21, 0.000000e+00
  %24 = fcmp ugt float %21, %12
  %25 = select i1 %23, i1 true, i1 %24
  br i1 %25, label %42, label %30

26:                                               ; preds = %4
  %27 = fcmp ult float %21, %12
  %28 = fcmp ugt float %21, 0.000000e+00
  %29 = or i1 %27, %28
  br i1 %29, label %42, label %30

30:                                               ; preds = %26, %22
  %31 = icmp sgt i32 %1, 1
  %32 = getelementptr inbounds float, ptr %2, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !47
  br i1 %31, label %34, label %38

34:                                               ; preds = %30
  %35 = fcmp ult float %33, 0.000000e+00
  %36 = fcmp ugt float %33, %17
  %37 = select i1 %35, i1 true, i1 %36
  br i1 %37, label %42, label %98

38:                                               ; preds = %30
  %39 = fcmp ult float %33, %17
  %40 = fcmp ugt float %33, 0.000000e+00
  %41 = or i1 %39, %40
  br i1 %41, label %42, label %98

42:                                               ; preds = %38, %34, %26, %22
  %43 = getelementptr inbounds float, ptr %6, i64 1
  %44 = getelementptr inbounds float, ptr %7, i64 1
  %45 = getelementptr inbounds float, ptr %7, i64 1
  %46 = getelementptr inbounds float, ptr %2, i64 1
  %47 = getelementptr inbounds [2 x float], ptr %8, i64 0, i64 1
  %48 = getelementptr inbounds float, ptr %2, i64 1
  %49 = getelementptr inbounds [2 x float], ptr %8, i64 0, i64 1
  %50 = getelementptr inbounds float, ptr %8, i64 1
  %51 = getelementptr inbounds float, ptr %2, i64 1
  br label %52

52:                                               ; preds = %42, %95
  %53 = phi i64 [ 0, %42 ], [ %96, %95 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  %54 = getelementptr inbounds [4 x [2 x float]], ptr %5, i64 0, i64 %53
  %55 = load float, ptr %54, align 8, !tbaa !47
  store float %55, ptr %6, align 4, !tbaa !47
  %56 = getelementptr inbounds float, ptr %54, i64 1
  %57 = load float, ptr %56, align 4, !tbaa !47
  store float %57, ptr %43, align 4, !tbaa !47
  %58 = icmp eq i64 %53, 3
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  store float 0.000000e+00, ptr %7, align 4, !tbaa !47
  store float 0.000000e+00, ptr %45, align 4, !tbaa !47
  br label %66

60:                                               ; preds = %52
  %61 = add nuw nsw i64 %53, 1
  %62 = getelementptr inbounds [4 x [2 x float]], ptr %5, i64 0, i64 %61
  %63 = load float, ptr %62, align 8, !tbaa !47
  store float %63, ptr %7, align 4, !tbaa !47
  %64 = getelementptr inbounds float, ptr %62, i64 1
  %65 = load float, ptr %64, align 4, !tbaa !47
  store float %65, ptr %44, align 4, !tbaa !47
  br label %66

66:                                               ; preds = %60, %59
  %67 = call i32 @isect_seg_seg_v2_point(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %8) #8
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %95

69:                                               ; preds = %66
  %70 = trunc i64 %53 to i32
  switch i32 %70, label %87 [
    i32 0, label %71
    i32 1, label %77
    i32 2, label %83
  ]

71:                                               ; preds = %69
  %72 = load float, ptr %46, align 4, !tbaa !47
  %73 = load float, ptr %47, align 4, !tbaa !47
  %74 = fcmp ogt float %72, %73
  br i1 %74, label %95, label %75

75:                                               ; preds = %71
  %76 = trunc i64 %53 to i32
  switch i32 %76, label %87 [
    i32 1, label %77
    i32 2, label %83
  ]

77:                                               ; preds = %69, %75
  %78 = load float, ptr %2, align 4, !tbaa !47
  %79 = load float, ptr %8, align 4, !tbaa !47
  %80 = fcmp olt float %78, %79
  br i1 %80, label %95, label %81

81:                                               ; preds = %77
  %82 = icmp eq i64 %53, 2
  br i1 %82, label %83, label %87

83:                                               ; preds = %69, %75, %81
  %84 = load float, ptr %48, align 4, !tbaa !47
  %85 = load float, ptr %49, align 4, !tbaa !47
  %86 = fcmp olt float %84, %85
  br i1 %86, label %95, label %87

87:                                               ; preds = %69, %75, %83, %81
  br i1 %58, label %88, label %92

88:                                               ; preds = %87
  %89 = load float, ptr %2, align 4, !tbaa !47
  %90 = load float, ptr %8, align 4, !tbaa !47
  %91 = fcmp ogt float %89, %90
  br i1 %91, label %95, label %92

92:                                               ; preds = %88, %87
  %93 = load float, ptr %8, align 4, !tbaa !47
  store float %93, ptr %2, align 4, !tbaa !47
  %94 = load float, ptr %50, align 4, !tbaa !47
  store float %94, ptr %51, align 4, !tbaa !47
  br label %95

95:                                               ; preds = %66, %92, %88, %83, %77, %71
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  %96 = add nuw nsw i64 %53, 1
  %97 = icmp eq i64 %96, 4
  br i1 %97, label %98, label %52, !llvm.loop !91

98:                                               ; preds = %95, %34, %38
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #8
  ret void
}

declare i32 @isect_seg_seg_v2_point(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
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
!34 = !{!35, !40, i64 40}
!35 = !{!"VoronoiProcess", !36, i64 0, !36, i64 16, !37, i64 32, !40, i64 40, !40, i64 44, !41, i64 48}
!36 = !{!"ListBase", !37, i64 0, !37, i64 8}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"float", !38, i64 0}
!42 = !{!35, !40, i64 44}
!43 = !{!35, !37, i64 0}
!44 = !{!37, !37, i64 0}
!45 = !{!46, !40, i64 16}
!46 = !{!"VoronoiEvent", !37, i64 0, !37, i64 8, !40, i64 16, !38, i64 20, !37, i64 32}
!47 = !{!41, !41, i64 0}
!48 = distinct !{!48, !49, !50}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!"llvm.loop.unroll.disable"}
!51 = distinct !{!51, !49, !50}
!52 = !{!35, !41, i64 48}
!53 = !{!35, !37, i64 32}
!54 = !{!55, !38, i64 48}
!55 = !{!"VoronoiParabola", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !38, i64 40, !38, i64 48}
!56 = !{!55, !37, i64 0}
!57 = !{!55, !37, i64 16}
!58 = !{!55, !37, i64 8}
!59 = !{!60, !37, i64 64}
!60 = !{!"VoronoiEdge", !37, i64 0, !37, i64 8, !38, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !38, i64 48, !41, i64 56, !41, i64 60, !37, i64 64}
!61 = !{!60, !41, i64 56}
!62 = !{!60, !41, i64 60}
!63 = !{!55, !37, i64 32}
!64 = distinct !{!64, !49, !50}
!65 = distinct !{!65, !49, !50}
!66 = distinct !{!66, !49, !50}
!67 = !{!55, !37, i64 24}
!68 = !{!46, !37, i64 32}
!69 = distinct !{!69, !49, !50}
!70 = distinct !{!70, !49, !50}
!71 = distinct !{!71, !49, !50}
!72 = distinct !{!72, !49, !50}
!73 = !{!35, !37, i64 16}
!74 = !{!60, !37, i64 0}
!75 = distinct !{!75, !49, !50}
!76 = !{!40, !40, i64 0}
!77 = !{i64 0, i64 8, !44, i64 8, i64 8, !44, i64 16, i64 8, !78, i64 24, i64 8, !78, i64 32, i64 8, !78, i64 40, i64 8, !78, i64 48, i64 8, !78, i64 56, i64 4, !47, i64 60, i64 4, !47, i64 64, i64 8, !44}
!78 = !{!38, !38, i64 0}
!79 = distinct !{!79, !49, !50}
!80 = !{!36, !37, i64 0}
!81 = distinct !{!81, !49, !50}
!82 = distinct !{!82, !49, !50}
!83 = distinct !{!83, !49, !50}
!84 = distinct !{!84, !49, !50}
!85 = distinct !{!85, !49, !50}
!86 = distinct !{!86, !49, !50}
!87 = !{!88, !40, i64 20}
!88 = !{!"VoronoiTriangulationPoint", !38, i64 0, !38, i64 8, !40, i64 20}
!89 = distinct !{!89, !49, !50}
!90 = distinct !{!90, !49, !50}
!91 = distinct !{!91, !49, !50}
