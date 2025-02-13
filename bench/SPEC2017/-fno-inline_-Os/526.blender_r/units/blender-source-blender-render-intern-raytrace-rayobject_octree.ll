; ModuleID = 'blender/source/blender/render/intern/raytrace/rayobject_octree.cpp'
source_filename = "blender/source/blender/render/intern/raytrace/rayobject_octree.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.RayObjectAPI = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Octree = type { %struct.RayObject, ptr, ptr, float, float, float, float, [3 x float], [3 x float], i32, i32, i32, ptr, ptr, i32, i32 }
%struct.RayObject = type { ptr, %struct.RayObjectControl }
%struct.RayObjectControl = type { ptr, ptr }
%struct.OcVal = type { i16, i16, i16 }
%struct.Isect = type { [3 x float], [3 x float], float, [3 x float], [3 x float], [6 x i32], [3 x float], i32, i32, i32, i32, ptr, float, float, i32, %struct.anon, %struct.anon, ptr, ptr }
%struct.anon = type { ptr, ptr }
%struct.Node = type { [8 x ptr], [8 x %struct.OcVal], ptr }
%struct.RayFace = type { [4 x float], [4 x float], [4 x float], [3 x float], i32, ptr, ptr }
%struct.Branch = type { [8 x ptr] }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [7 x i8] c"Octree\00", align 1
@_ZL10octree_api = internal global %struct.RayObjectAPI { ptr @_ZL29RE_rayobject_octree_intersectP9RayObjectP5Isect, ptr @_ZL23RE_rayobject_octree_addP9RayObjectS0_, ptr @_ZL24RE_rayobject_octree_doneP9RayObject, ptr @_ZL24RE_rayobject_octree_freeP9RayObject, ptr @_ZL22RE_rayobject_octree_bbP9RayObjectPfS1_, ptr @_ZL24RE_rayobject_octree_costP9RayObject, ptr @_ZL27RE_rayobject_octree_hint_bbP9RayObjectP7RayHintPfS3_ }, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"octree rayobject nodes\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"octree branches\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"octree nodes\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"makeoctree\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"ocface\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [14 x i8] c"new oc branch\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"addnode\00", align 1
@_ZZL12face_in_nodeP7RayFacesssPA3_fE3nor = internal global [3 x float] zeroinitializer, align 4
@_ZZL12face_in_nodeP7RayFacesssPA3_fE1d = internal unnamed_addr global float 0.000000e+00, align 4
@str = private unnamed_addr constant [28 x i8] c"error; octree branches full\00", align 1
@str.10 = private unnamed_addr constant [25 x i8] c"error; octree nodes full\00", align 1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @RE_rayobject_octree_create(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 120, ptr noundef nonnull @.str) #13
  store ptr @_ZL10octree_api, ptr %4, align 8, !tbaa !38
  %5 = getelementptr inbounds %struct.Octree, ptr %4, i64 0, i32 9
  store i32 %0, ptr %5, align 8, !tbaa !44
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %7 = sext i32 %1 to i64
  %8 = shl nsw i64 %7, 3
  %9 = tail call ptr %6(i64 noundef %8, ptr noundef nonnull @.str.1) #13
  %10 = getelementptr inbounds %struct.Octree, ptr %4, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !45
  %11 = getelementptr inbounds %struct.Octree, ptr %4, i64 0, i32 14
  store i32 %1, ptr %11, align 8, !tbaa !46
  %12 = getelementptr inbounds %struct.Octree, ptr %4, i64 0, i32 15
  store i32 0, ptr %12, align 4, !tbaa !47
  %13 = ptrtoint ptr %4 to i64
  %14 = or i64 %13, 2
  %15 = inttoptr i64 %14 to ptr
  ret ptr %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress noinline optsize uwtable
define internal noundef i32 @_ZL29RE_rayobject_octree_intersectP9RayObjectP5Isect(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !PGOFuncName !48 {
  %3 = alloca %struct.OcVal, align 8
  %4 = alloca [3 x float], align 8
  %5 = alloca [3 x float], align 8
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 8
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #14
  %10 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 10
  %11 = load i32, ptr %10, align 4, !tbaa !49
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %319, label %13

13:                                               ; preds = %2
  call fastcc void @_ZL10copy_v3_v3PfPKf(ptr noundef nonnull %6, ptr noundef %1) #13
  %14 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 1
  %15 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 2
  %16 = load float, ptr %15, align 8, !tbaa !50
  call fastcc void @_ZL14madd_v3_v3v3flPfPKfS1_f(ptr noundef nonnull %7, ptr noundef %1, ptr noundef nonnull %14, float noundef %16) #13
  %17 = load float, ptr %14, align 4, !tbaa !53
  %18 = fmul float %16, %17
  store float 0.000000e+00, ptr %8, align 4, !tbaa !53
  store float 1.000000e+00, ptr %9, align 4, !tbaa !53
  %19 = fneg float %18
  %20 = load float, ptr %6, align 4, !tbaa !53
  %21 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 7
  %22 = load float, ptr %21, align 8, !tbaa !53
  %23 = fsub float %20, %22
  %24 = call fastcc noundef i32 @_ZL8cliptestffPfS_(float noundef %19, float noundef %23, ptr noundef nonnull %8, ptr noundef nonnull %9) #13, !range !54
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %319, label %26

26:                                               ; preds = %13
  %27 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 8
  %28 = load float, ptr %27, align 4, !tbaa !53
  %29 = fsub float %28, %20
  %30 = call fastcc noundef i32 @_ZL8cliptestffPfS_(float noundef %18, float noundef %29, ptr noundef nonnull %8, ptr noundef nonnull %9) #13, !range !54
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %319, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 1, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !53
  %35 = fmul float %16, %34
  %36 = fneg float %35
  %37 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !53
  %39 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 7, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !53
  %41 = fsub float %38, %40
  %42 = call fastcc noundef i32 @_ZL8cliptestffPfS_(float noundef %36, float noundef %41, ptr noundef nonnull %8, ptr noundef nonnull %9) #13, !range !54
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %319, label %44

44:                                               ; preds = %32
  %45 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 8, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !53
  %47 = fsub float %46, %38
  %48 = call fastcc noundef i32 @_ZL8cliptestffPfS_(float noundef %35, float noundef %47, ptr noundef nonnull %8, ptr noundef nonnull %9) #13, !range !54
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %319, label %50

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 1, i64 2
  %52 = load float, ptr %51, align 4, !tbaa !53
  %53 = fmul float %16, %52
  %54 = fneg float %53
  %55 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %56 = load float, ptr %55, align 4, !tbaa !53
  %57 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 7, i64 2
  %58 = load float, ptr %57, align 8, !tbaa !53
  %59 = fsub float %56, %58
  %60 = call fastcc noundef i32 @_ZL8cliptestffPfS_(float noundef %54, float noundef %59, ptr noundef nonnull %8, ptr noundef nonnull %9) #13, !range !54
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %319, label %62

62:                                               ; preds = %50
  %63 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 8, i64 2
  %64 = load float, ptr %63, align 4, !tbaa !53
  %65 = fsub float %64, %56
  %66 = call fastcc noundef i32 @_ZL8cliptestffPfS_(float noundef %53, float noundef %65, ptr noundef nonnull %8, ptr noundef nonnull %9) #13, !range !54
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %319, label %68

68:                                               ; preds = %62
  %69 = load float, ptr %9, align 4, !tbaa !53
  %70 = fcmp olt float %69, 1.000000e+00
  br i1 %70, label %71, label %81

71:                                               ; preds = %68
  %72 = insertelement <2 x float> poison, float %69, i64 0
  %73 = shufflevector <2 x float> %72, <2 x float> poison, <2 x i32> zeroinitializer
  %74 = insertelement <2 x float> poison, float %18, i64 0
  %75 = insertelement <2 x float> %74, float %35, i64 1
  %76 = insertelement <2 x float> poison, float %20, i64 0
  %77 = insertelement <2 x float> %76, float %38, i64 1
  %78 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %73, <2 x float> %75, <2 x float> %77)
  store <2 x float> %78, ptr %7, align 8, !tbaa !53
  %79 = tail call float @llvm.fmuladd.f32(float %69, float %53, float %56)
  %80 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  store float %79, ptr %80, align 8, !tbaa !53
  br label %81

81:                                               ; preds = %71, %68
  %82 = load float, ptr %8, align 4, !tbaa !53
  %83 = fcmp ogt float %82, 0.000000e+00
  %84 = insertelement <2 x float> poison, float %23, i64 0
  %85 = insertelement <2 x float> %84, float %41, i64 1
  br i1 %83, label %86, label %99

86:                                               ; preds = %81
  %87 = insertelement <2 x float> poison, float %82, i64 0
  %88 = shufflevector <2 x float> %87, <2 x float> poison, <2 x i32> zeroinitializer
  %89 = insertelement <2 x float> poison, float %18, i64 0
  %90 = insertelement <2 x float> %89, float %35, i64 1
  %91 = insertelement <2 x float> poison, float %20, i64 0
  %92 = insertelement <2 x float> %91, float %38, i64 1
  %93 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %88, <2 x float> %90, <2 x float> %92)
  %94 = tail call float @llvm.fmuladd.f32(float %82, float %53, float %56)
  %95 = insertelement <2 x float> poison, float %22, i64 0
  %96 = insertelement <2 x float> %95, float %40, i64 1
  %97 = fsub <2 x float> %93, %96
  %98 = fsub float %94, %58
  br label %99

99:                                               ; preds = %86, %81
  %100 = phi float [ %98, %86 ], [ %59, %81 ]
  %101 = phi <2 x float> [ %97, %86 ], [ %85, %81 ]
  %102 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 4
  %103 = load <2 x float>, ptr %102, align 4, !tbaa !53
  %104 = fmul <2 x float> %101, %103
  %105 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 6
  %106 = load float, ptr %105, align 4, !tbaa !55
  %107 = fmul float %100, %106
  %108 = load <2 x float>, ptr %7, align 8, !tbaa !53
  %109 = insertelement <2 x float> poison, float %22, i64 0
  %110 = insertelement <2 x float> %109, float %40, i64 1
  %111 = fsub <2 x float> %108, %110
  %112 = fmul <2 x float> %103, %111
  %113 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %114 = load float, ptr %113, align 8, !tbaa !53
  %115 = fsub float %114, %58
  %116 = fmul float %106, %115
  %117 = extractelement <2 x float> %104, i64 0
  %118 = fptosi float %117 to i32
  %119 = fptosi float %107 to i32
  %120 = extractelement <2 x float> %112, i64 0
  %121 = fptosi float %120 to i32
  %122 = fptosi float %116 to i32
  %123 = icmp eq i32 %118, %121
  %124 = shufflevector <2 x float> %104, <2 x float> %112, <2 x i32> <i32 1, i32 3>
  %125 = fptosi <2 x float> %124 to <2 x i32>
  %126 = extractelement <2 x i32> %125, i64 0
  %127 = shufflevector <2 x i32> %125, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %128 = icmp eq <2 x i32> %127, %125
  %129 = extractelement <2 x i1> %128, i64 0
  %130 = select i1 %123, i1 %129, i1 false
  %131 = icmp eq i32 %119, %122
  %132 = select i1 %130, i1 %131, i1 false
  br i1 %132, label %133, label %145

133:                                              ; preds = %99
  %134 = tail call fastcc noundef ptr @_ZL6ocreadP6Octreeiii(ptr noundef nonnull %0, i32 noundef %118, i32 noundef %126, i32 noundef %119) #13
  %135 = icmp eq ptr %134, null
  br i1 %135, label %318, label %136

136:                                              ; preds = %133
  store <2 x float> %104, ptr %4, align 8, !tbaa !53
  %137 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float %107, ptr %137, align 8, !tbaa !53
  store <2 x float> %112, ptr %5, align 8, !tbaa !53
  %138 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  store float %116, ptr %138, align 8, !tbaa !53
  %139 = sitofp i32 %118 to float
  %140 = sitofp i32 %126 to float
  %141 = sitofp i32 %119 to float
  call fastcc void @_ZL14calc_ocval_rayP5OcValfffPfS1_(ptr noundef nonnull %3, float noundef %139, float noundef %140, float noundef %141, ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  %142 = load i48, ptr %3, align 8, !tbaa.struct !56
  %143 = tail call fastcc noundef i32 @_ZL8testnodeP6OctreeP5IsectP4Node5OcVal(ptr noundef nonnull %1, ptr noundef nonnull %134, i48 %142) #13
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %318, label %319

145:                                              ; preds = %99
  %146 = fsub <2 x float> %104, %112
  %147 = fsub float %107, %116
  %148 = extractelement <2 x float> %146, i64 0
  %149 = fcmp olt float %148, 0xBE80000000000000
  br i1 %149, label %150, label %156

150:                                              ; preds = %145
  %151 = fdiv float -1.000000e+00, %148
  %152 = sitofp i32 %118 to float
  %153 = fsub float %152, %117
  %154 = fadd float %153, 1.000000e+00
  %155 = fmul float %154, %151
  br label %163

156:                                              ; preds = %145
  %157 = fcmp ogt float %148, 0x3E80000000000000
  br i1 %157, label %158, label %163

158:                                              ; preds = %156
  %159 = fdiv float 1.000000e+00, %148
  %160 = sitofp i32 %118 to float
  %161 = fsub float %117, %160
  %162 = fmul float %161, %159
  br label %163

163:                                              ; preds = %156, %158, %150
  %164 = phi i32 [ 1, %150 ], [ -1, %158 ], [ 0, %156 ]
  %165 = phi float [ %151, %150 ], [ %159, %158 ], [ 0.000000e+00, %156 ]
  %166 = phi float [ %155, %150 ], [ %162, %158 ], [ 1.000000e+00, %156 ]
  %167 = extractelement <2 x float> %146, i64 1
  %168 = fcmp olt float %167, 0xBE80000000000000
  br i1 %168, label %169, label %176

169:                                              ; preds = %163
  %170 = fdiv float -1.000000e+00, %167
  %171 = sitofp i32 %126 to float
  %172 = extractelement <2 x float> %104, i64 1
  %173 = fsub float %171, %172
  %174 = fadd float %173, 1.000000e+00
  %175 = fmul float %174, %170
  br label %184

176:                                              ; preds = %163
  %177 = fcmp ogt float %167, 0x3E80000000000000
  br i1 %177, label %178, label %184

178:                                              ; preds = %176
  %179 = fdiv float 1.000000e+00, %167
  %180 = sitofp i32 %126 to float
  %181 = extractelement <2 x float> %104, i64 1
  %182 = fsub float %181, %180
  %183 = fmul float %182, %179
  br label %184

184:                                              ; preds = %176, %178, %169
  %185 = phi i32 [ 1, %169 ], [ -1, %178 ], [ 0, %176 ]
  %186 = phi float [ %170, %169 ], [ %179, %178 ], [ 0.000000e+00, %176 ]
  %187 = phi float [ %175, %169 ], [ %183, %178 ], [ 1.000000e+00, %176 ]
  %188 = fcmp olt float %147, 0xBE80000000000000
  br i1 %188, label %189, label %195

189:                                              ; preds = %184
  %190 = fdiv float -1.000000e+00, %147
  %191 = sitofp i32 %119 to float
  %192 = fsub float %191, %107
  %193 = fadd float %192, 1.000000e+00
  %194 = fmul float %193, %190
  br label %202

195:                                              ; preds = %184
  %196 = fcmp ogt float %147, 0x3E80000000000000
  br i1 %196, label %197, label %202

197:                                              ; preds = %195
  %198 = fdiv float 1.000000e+00, %147
  %199 = sitofp i32 %119 to float
  %200 = fsub float %107, %199
  %201 = fmul float %200, %198
  br label %202

202:                                              ; preds = %195, %197, %189
  %203 = phi i32 [ 1, %189 ], [ -1, %197 ], [ 0, %195 ]
  %204 = phi float [ %190, %189 ], [ %198, %197 ], [ 0.000000e+00, %195 ]
  %205 = phi float [ %194, %189 ], [ %201, %197 ], [ 1.000000e+00, %195 ]
  %206 = tail call fastcc noundef float @_ZL7min_ffffff(float noundef %166, float noundef %187, float noundef %205) #13
  store <2 x float> %104, ptr %5, align 8, !tbaa !53
  %207 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  store float %107, ptr %207, align 8, !tbaa !53
  %208 = fsub float %69, %82
  br label %209

209:                                              ; preds = %307, %202
  %210 = phi i32 [ %118, %202 ], [ %308, %307 ]
  %211 = phi i32 [ %126, %202 ], [ %309, %307 ]
  %212 = phi i32 [ %119, %202 ], [ %310, %307 ]
  %213 = phi float [ %206, %202 ], [ %314, %307 ]
  %214 = phi float [ %205, %202 ], [ %311, %307 ]
  %215 = phi i32 [ 0, %202 ], [ %238, %307 ]
  %216 = phi float [ %187, %202 ], [ %312, %307 ]
  %217 = phi float [ %166, %202 ], [ %313, %307 ]
  %218 = tail call fastcc noundef ptr @_ZL6ocreadP6Octreeiii(ptr noundef %0, i32 noundef %210, i32 noundef %211, i32 noundef %212) #13
  %219 = icmp eq ptr %218, null
  br i1 %219, label %237, label %220

220:                                              ; preds = %209
  call fastcc void @_ZL10copy_v3_v3PfPKf(ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  %221 = fneg float %213
  %222 = insertelement <2 x float> poison, float %221, i64 0
  %223 = shufflevector <2 x float> %222, <2 x float> poison, <2 x i32> zeroinitializer
  %224 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %223, <2 x float> %146, <2 x float> %104)
  store <2 x float> %224, ptr %5, align 8, !tbaa !53
  %225 = tail call float @llvm.fmuladd.f32(float %221, float %147, float %107)
  store float %225, ptr %207, align 8, !tbaa !53
  %226 = sitofp i32 %210 to float
  %227 = sitofp i32 %211 to float
  %228 = sitofp i32 %212 to float
  call fastcc void @_ZL14calc_ocval_rayP5OcValfffPfS1_(ptr noundef nonnull %3, float noundef %226, float noundef %227, float noundef %228, ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  %229 = load i48, ptr %3, align 8, !tbaa.struct !56
  %230 = tail call fastcc noundef i32 @_ZL8testnodeP6OctreeP5IsectP4Node5OcVal(ptr noundef %1, ptr noundef nonnull %218, i48 %229) #13
  %231 = icmp eq i32 %230, 0
  %232 = select i1 %231, i32 %215, i32 1
  %233 = load float, ptr %15, align 8, !tbaa !50
  %234 = tail call float @llvm.fmuladd.f32(float %213, float %208, float %82)
  %235 = fmul float %16, %234
  %236 = fcmp olt float %233, %235
  br i1 %236, label %319, label %237

237:                                              ; preds = %220, %209
  %238 = phi i32 [ %232, %220 ], [ %215, %209 ]
  %239 = fcmp oeq float %217, %216
  %240 = zext i1 %239 to i32
  %241 = fcmp oeq float %216, %214
  %242 = select i1 %239, i32 3, i32 2
  %243 = select i1 %241, i32 %242, i32 %240
  %244 = fcmp oeq float %217, %214
  %245 = or disjoint i32 %243, 4
  %246 = select i1 %244, i32 %245, i32 %243
  switch i32 %246, label %274 [
    i32 0, label %284
    i32 7, label %247
    i32 1, label %254
    i32 2, label %264
  ]

247:                                              ; preds = %237
  %248 = add nsw i32 %210, %164
  %249 = fadd float %165, %217
  %250 = add nsw i32 %211, %185
  %251 = fadd float %186, %216
  %252 = add nsw i32 %212, %203
  %253 = fadd float %204, %214
  br label %307

254:                                              ; preds = %237
  %255 = fcmp olt float %216, %214
  br i1 %255, label %256, label %261

256:                                              ; preds = %254
  %257 = add nsw i32 %210, %164
  %258 = fadd float %165, %217
  %259 = add nsw i32 %211, %185
  %260 = fadd float %186, %216
  br label %307

261:                                              ; preds = %254
  %262 = add nsw i32 %212, %203
  %263 = fadd float %204, %214
  br label %307

264:                                              ; preds = %237
  %265 = fcmp olt float %217, %216
  br i1 %265, label %266, label %269

266:                                              ; preds = %264
  %267 = add nsw i32 %210, %164
  %268 = fadd float %165, %217
  br label %307

269:                                              ; preds = %264
  %270 = add nsw i32 %211, %185
  %271 = fadd float %186, %216
  %272 = add nsw i32 %212, %203
  %273 = fadd float %204, %214
  br label %307

274:                                              ; preds = %237
  %275 = fcmp olt float %216, %217
  br i1 %275, label %276, label %279

276:                                              ; preds = %274
  %277 = add nsw i32 %211, %185
  %278 = fadd float %186, %216
  br label %307

279:                                              ; preds = %274
  %280 = add nsw i32 %210, %164
  %281 = fadd float %165, %217
  %282 = add nsw i32 %212, %203
  %283 = fadd float %204, %214
  br label %307

284:                                              ; preds = %237
  %285 = fcmp olt float %217, %216
  %286 = zext i1 %285 to i32
  %287 = fcmp olt float %216, %214
  %288 = select i1 %285, i32 3, i32 2
  %289 = select i1 %287, i32 %288, i32 %286
  %290 = fcmp olt float %217, %214
  %291 = or disjoint i32 %289, 4
  %292 = select i1 %290, i32 %291, i32 %289
  %293 = and i32 %292, 5
  %294 = icmp eq i32 %293, 5
  br i1 %294, label %295, label %298

295:                                              ; preds = %284
  %296 = add nsw i32 %210, %164
  %297 = fadd float %165, %217
  br label %307

298:                                              ; preds = %284
  %299 = and i32 %292, 3
  %300 = icmp eq i32 %299, 2
  br i1 %300, label %301, label %304

301:                                              ; preds = %298
  %302 = add nsw i32 %211, %185
  %303 = fadd float %186, %216
  br label %307

304:                                              ; preds = %298
  %305 = add nsw i32 %212, %203
  %306 = fadd float %204, %214
  br label %307

307:                                              ; preds = %295, %304, %301, %247, %269, %266, %279, %276, %256, %261
  %308 = phi i32 [ %248, %247 ], [ %257, %256 ], [ %210, %261 ], [ %267, %266 ], [ %210, %269 ], [ %210, %276 ], [ %280, %279 ], [ %296, %295 ], [ %210, %301 ], [ %210, %304 ]
  %309 = phi i32 [ %250, %247 ], [ %259, %256 ], [ %211, %261 ], [ %211, %266 ], [ %270, %269 ], [ %277, %276 ], [ %211, %279 ], [ %211, %295 ], [ %302, %301 ], [ %211, %304 ]
  %310 = phi i32 [ %252, %247 ], [ %212, %256 ], [ %262, %261 ], [ %212, %266 ], [ %272, %269 ], [ %212, %276 ], [ %282, %279 ], [ %212, %295 ], [ %212, %301 ], [ %305, %304 ]
  %311 = phi float [ %253, %247 ], [ %214, %256 ], [ %263, %261 ], [ %214, %266 ], [ %273, %269 ], [ %214, %276 ], [ %283, %279 ], [ %214, %295 ], [ %214, %301 ], [ %306, %304 ]
  %312 = phi float [ %251, %247 ], [ %260, %256 ], [ %216, %261 ], [ %216, %266 ], [ %271, %269 ], [ %278, %276 ], [ %216, %279 ], [ %216, %295 ], [ %303, %301 ], [ %216, %304 ]
  %313 = phi float [ %249, %247 ], [ %258, %256 ], [ %217, %261 ], [ %268, %266 ], [ %217, %269 ], [ %217, %276 ], [ %281, %279 ], [ %297, %295 ], [ %217, %301 ], [ %217, %304 ]
  %314 = tail call fastcc noundef float @_ZL7min_ffffff(float noundef %313, float noundef %312, float noundef %311) #13
  %315 = fcmp oeq float %314, %213
  %316 = fcmp oge float %213, 1.000000e+00
  %317 = or i1 %316, %315
  br i1 %317, label %318, label %209, !llvm.loop !59

318:                                              ; preds = %307, %133, %136
  br label %319

319:                                              ; preds = %220, %136, %26, %44, %62, %50, %32, %13, %2, %318
  %320 = phi i32 [ 0, %318 ], [ 0, %2 ], [ 0, %13 ], [ 0, %32 ], [ 0, %50 ], [ 0, %62 ], [ 0, %44 ], [ 0, %26 ], [ 1, %136 ], [ %232, %220 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #14
  ret i32 %320
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @_ZL23RE_rayobject_octree_addP9RayObjectS0_(ptr nocapture noundef %0, ptr noundef %1) #2 !PGOFuncName !61 {
  %3 = ptrtoint ptr %1 to i64
  %4 = and i64 %3, -4
  %5 = inttoptr i64 %4 to ptr
  %6 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 13
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 15
  %9 = load i32, ptr %8, align 4, !tbaa !47
  %10 = add nsw i32 %9, 1
  store i32 %10, ptr %8, align 4, !tbaa !47
  %11 = sext i32 %9 to i64
  %12 = getelementptr inbounds ptr, ptr %7, i64 %11
  store ptr %5, ptr %12, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZL24RE_rayobject_octree_doneP9RayObject(ptr noundef %0) #0 !PGOFuncName !62 {
  %2 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !44
  %4 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 7
  %5 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 7, i64 2
  %6 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 8
  %7 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 8, i64 2
  %8 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 8, i64 1
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %8, align 4, !tbaa !53
  store <4 x float> <float 0x46293E5940000000, float 0x46293E5940000000, float 0x46293E5940000000, float 0xC6293E5940000000>, ptr %4, align 8, !tbaa !53
  %9 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 15
  %10 = load i32, ptr %9, align 4, !tbaa !47
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 13
  br label %14

14:                                               ; preds = %12, %14
  %15 = phi i64 [ 0, %12 ], [ %22, %14 ]
  %16 = load ptr, ptr %13, align 8, !tbaa !45
  %17 = getelementptr inbounds ptr, ptr %16, i64 %15
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = ptrtoint ptr %18 to i64
  %20 = or i64 %19, 1
  %21 = inttoptr i64 %20 to ptr
  tail call void @RE_rayobject_merge_bb(ptr noundef nonnull %21, ptr noundef nonnull %4, ptr noundef nonnull %6) #13
  %22 = add nuw nsw i64 %15, 1
  %23 = load i32, ptr %9, align 4, !tbaa !47
  %24 = sext i32 %23 to i64
  %25 = icmp slt i64 %22, %24
  br i1 %25, label %14, label %26, !llvm.loop !63

26:                                               ; preds = %14, %1
  %27 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %28 = tail call ptr %27(i64 noundef 8192, ptr noundef nonnull @.str.2) #13
  %29 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 1
  store ptr %28, ptr %29, align 8, !tbaa !64
  %30 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %31 = tail call ptr %30(i64 noundef 32768, ptr noundef nonnull @.str.3) #13
  %32 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 2
  store ptr %31, ptr %32, align 8, !tbaa !65
  %33 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %34 = tail call ptr %33(i64 noundef 262144, ptr noundef nonnull @.str.4) #13
  %35 = load ptr, ptr %29, align 8, !tbaa !64
  store ptr %34, ptr %35, align 8, !tbaa !34
  %36 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %37 = mul i32 %3, 3
  %38 = mul i32 %37, %3
  %39 = add nuw nsw i32 %38, 8
  %40 = zext nneg i32 %39 to i64
  %41 = tail call ptr %36(i64 noundef %40, ptr noundef nonnull @.str.5) #13
  %42 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 12
  store ptr %41, ptr %42, align 8, !tbaa !66
  %43 = zext nneg i32 %38 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %41, i8 0, i64 %43, i1 false)
  br label %44

44:                                               ; preds = %26, %44
  %45 = phi i64 [ 0, %26 ], [ %52, %44 ]
  %46 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 7, i64 %45
  %47 = load float, ptr %46, align 4, !tbaa !53
  %48 = fadd float %47, 0xBF847AE140000000
  store float %48, ptr %46, align 4, !tbaa !53
  %49 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 8, i64 %45
  %50 = load float, ptr %49, align 4, !tbaa !53
  %51 = fadd float %50, 0x3F847AE140000000
  store float %51, ptr %49, align 4, !tbaa !53
  %52 = add nuw nsw i64 %45, 1
  %53 = icmp eq i64 %52, 3
  br i1 %53, label %54, label %44, !llvm.loop !67

54:                                               ; preds = %44
  %55 = load float, ptr %7, align 4, !tbaa !53
  %56 = load float, ptr %5, align 8, !tbaa !53
  %57 = fsub float %55, %56
  %58 = load i32, ptr %2, align 8, !tbaa !44
  %59 = sitofp i32 %58 to float
  %60 = fadd float %59, 0xBFB99999A0000000
  %61 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 4
  %62 = load <2 x float>, ptr %6, align 4, !tbaa !53
  %63 = load <2 x float>, ptr %4, align 8, !tbaa !53
  %64 = fsub <2 x float> %62, %63
  %65 = insertelement <2 x float> poison, float %60, i64 0
  %66 = shufflevector <2 x float> %65, <2 x float> poison, <2 x i32> zeroinitializer
  %67 = fdiv <2 x float> %66, %64
  store <2 x float> %67, ptr %61, align 4, !tbaa !53
  %68 = fdiv float %60, %57
  %69 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 6
  store float %68, ptr %69, align 4, !tbaa !55
  %70 = fmul <2 x float> %64, %64
  %71 = extractelement <2 x float> %70, i64 1
  %72 = extractelement <2 x float> %64, i64 0
  %73 = tail call float @llvm.fmuladd.f32(float %72, float %72, float %71)
  %74 = tail call float @llvm.fmuladd.f32(float %57, float %57, float %73)
  %75 = tail call float @llvm.sqrt.f32(float %74)
  %76 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 3
  store float %75, ptr %76, align 8, !tbaa !68
  %77 = load i32, ptr %9, align 4, !tbaa !47
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %54
  %80 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 13
  br label %81

81:                                               ; preds = %79, %81
  %82 = phi i64 [ 0, %79 ], [ %86, %81 ]
  %83 = load ptr, ptr %80, align 8, !tbaa !45
  %84 = getelementptr inbounds ptr, ptr %83, i64 %82
  %85 = load ptr, ptr %84, align 8, !tbaa !34
  tail call fastcc void @_ZL19octree_fill_rayfaceP6OctreeP7RayFace(ptr noundef nonnull %0, ptr noundef %85) #13
  %86 = add nuw nsw i64 %82, 1
  %87 = load i32, ptr %9, align 4, !tbaa !47
  %88 = sext i32 %87 to i64
  %89 = icmp slt i64 %86, %88
  br i1 %89, label %81, label %90, !llvm.loop !69

90:                                               ; preds = %81, %54
  %91 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %92 = load ptr, ptr %42, align 8, !tbaa !66
  tail call void %91(ptr noundef %92) #13
  store ptr null, ptr %42, align 8, !tbaa !66
  %93 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %94 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 13
  %95 = load ptr, ptr %94, align 8, !tbaa !45
  tail call void %93(ptr noundef %95) #13
  store ptr null, ptr %94, align 8, !tbaa !45
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZL24RE_rayobject_octree_freeP9RayObject(ptr noundef %0) #0 !PGOFuncName !70 {
  %2 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %6(ptr noundef nonnull %3) #13
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !64
  %10 = icmp eq ptr %9, null
  br i1 %10, label %28, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %9, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %25, label %14

14:                                               ; preds = %11, %14
  %15 = phi i64 [ %20, %14 ], [ 0, %11 ]
  %16 = phi ptr [ %23, %14 ], [ %12, %11 ]
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %17(ptr noundef nonnull %16) #13
  %18 = load ptr, ptr %8, align 8, !tbaa !64
  %19 = getelementptr inbounds ptr, ptr %18, i64 %15
  store ptr null, ptr %19, align 8, !tbaa !34
  %20 = add nuw i64 %15, 1
  %21 = load ptr, ptr %8, align 8, !tbaa !64
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %14, !llvm.loop !71

25:                                               ; preds = %14, %11
  %26 = phi ptr [ %9, %11 ], [ %21, %14 ]
  %27 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %27(ptr noundef nonnull %26) #13
  store ptr null, ptr %8, align 8, !tbaa !64
  br label %28

28:                                               ; preds = %25, %7
  %29 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 10
  store i32 0, ptr %29, align 4, !tbaa !49
  %30 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !65
  %32 = icmp eq ptr %31, null
  br i1 %32, label %50, label %33

33:                                               ; preds = %28
  %34 = load ptr, ptr %31, align 8, !tbaa !34
  %35 = icmp eq ptr %34, null
  br i1 %35, label %47, label %36

36:                                               ; preds = %33, %36
  %37 = phi i64 [ %42, %36 ], [ 0, %33 ]
  %38 = phi ptr [ %45, %36 ], [ %34, %33 ]
  %39 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %39(ptr noundef nonnull %38) #13
  %40 = load ptr, ptr %30, align 8, !tbaa !65
  %41 = getelementptr inbounds ptr, ptr %40, i64 %37
  store ptr null, ptr %41, align 8, !tbaa !34
  %42 = add nuw i64 %37, 1
  %43 = load ptr, ptr %30, align 8, !tbaa !65
  %44 = getelementptr inbounds ptr, ptr %43, i64 %42
  %45 = load ptr, ptr %44, align 8, !tbaa !34
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %36, !llvm.loop !72

47:                                               ; preds = %36, %33
  %48 = phi ptr [ %31, %33 ], [ %43, %36 ]
  %49 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %49(ptr noundef nonnull %48) #13
  store ptr null, ptr %30, align 8, !tbaa !65
  br label %50

50:                                               ; preds = %47, %28
  %51 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 11
  store i32 0, ptr %51, align 8, !tbaa !73
  %52 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %52(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @_ZL22RE_rayobject_octree_bbP9RayObjectPfS1_(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2) #3 !PGOFuncName !74 {
  %4 = load float, ptr %1, align 4, !tbaa !53
  %5 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 7
  %6 = load float, ptr %5, align 8, !tbaa !53
  %7 = fcmp ogt float %4, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  store float %6, ptr %1, align 4, !tbaa !53
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds float, ptr %1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !53
  %12 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 7, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !53
  %14 = fcmp ogt float %11, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store float %13, ptr %10, align 4, !tbaa !53
  br label %16

16:                                               ; preds = %15, %9
  %17 = getelementptr inbounds float, ptr %1, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !53
  %19 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 7, i64 2
  %20 = load float, ptr %19, align 8, !tbaa !53
  %21 = fcmp ogt float %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store float %20, ptr %17, align 4, !tbaa !53
  br label %23

23:                                               ; preds = %22, %16
  %24 = load float, ptr %2, align 4, !tbaa !53
  %25 = load float, ptr %5, align 8, !tbaa !53
  %26 = fcmp olt float %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store float %25, ptr %2, align 4, !tbaa !53
  br label %28

28:                                               ; preds = %27, %23
  %29 = getelementptr inbounds float, ptr %2, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !53
  %31 = load float, ptr %12, align 4, !tbaa !53
  %32 = fcmp olt float %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store float %31, ptr %29, align 4, !tbaa !53
  br label %34

34:                                               ; preds = %33, %28
  %35 = getelementptr inbounds float, ptr %2, i64 2
  %36 = load float, ptr %35, align 4, !tbaa !53
  %37 = load float, ptr %19, align 8, !tbaa !53
  %38 = fcmp olt float %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store float %37, ptr %35, align 4, !tbaa !53
  br label %40

40:                                               ; preds = %39, %34
  %41 = load float, ptr %1, align 4, !tbaa !53
  %42 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 8
  %43 = load float, ptr %42, align 4, !tbaa !53
  %44 = fcmp ogt float %41, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store float %43, ptr %1, align 4, !tbaa !53
  br label %46

46:                                               ; preds = %45, %40
  %47 = load float, ptr %10, align 4, !tbaa !53
  %48 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 8, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !53
  %50 = fcmp ogt float %47, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store float %49, ptr %10, align 4, !tbaa !53
  br label %52

52:                                               ; preds = %51, %46
  %53 = load float, ptr %17, align 4, !tbaa !53
  %54 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 8, i64 2
  %55 = load float, ptr %54, align 4, !tbaa !53
  %56 = fcmp ogt float %53, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  store float %55, ptr %17, align 4, !tbaa !53
  br label %58

58:                                               ; preds = %57, %52
  %59 = load float, ptr %2, align 4, !tbaa !53
  %60 = load float, ptr %42, align 4, !tbaa !53
  %61 = fcmp olt float %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store float %60, ptr %2, align 4, !tbaa !53
  br label %63

63:                                               ; preds = %62, %58
  %64 = load float, ptr %29, align 4, !tbaa !53
  %65 = load float, ptr %48, align 4, !tbaa !53
  %66 = fcmp olt float %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store float %65, ptr %29, align 4, !tbaa !53
  br label %68

68:                                               ; preds = %67, %63
  %69 = load float, ptr %35, align 4, !tbaa !53
  %70 = load float, ptr %54, align 4, !tbaa !53
  %71 = fcmp olt float %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store float %70, ptr %35, align 4, !tbaa !53
  br label %73

73:                                               ; preds = %72, %68
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef float @_ZL24RE_rayobject_octree_costP9RayObject(ptr nocapture readnone %0) #4 !PGOFuncName !75 {
  ret float 1.000000e+00
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @_ZL27RE_rayobject_octree_hint_bbP9RayObjectP7RayHintPfS3_(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #4 !PGOFuncName !76 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL10copy_v3_v3PfPKf(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !77 {
  %3 = load float, ptr %1, align 4, !tbaa !53
  store float %3, ptr %0, align 4, !tbaa !53
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !53
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !53
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !53
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL14madd_v3_v3v3flPfPKfS1_f(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #3 !PGOFuncName !78 {
  %5 = load float, ptr %1, align 4, !tbaa !53
  %6 = load float, ptr %2, align 4, !tbaa !53
  %7 = tail call float @llvm.fmuladd.f32(float %6, float %3, float %5)
  store float %7, ptr %0, align 4, !tbaa !53
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !53
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !53
  %12 = tail call float @llvm.fmuladd.f32(float %11, float %3, float %9)
  %13 = getelementptr inbounds float, ptr %0, i64 1
  store float %12, ptr %13, align 4, !tbaa !53
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !53
  %16 = getelementptr inbounds float, ptr %2, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !53
  %18 = tail call float @llvm.fmuladd.f32(float %17, float %3, float %15)
  %19 = getelementptr inbounds float, ptr %0, i64 2
  store float %18, ptr %19, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @_ZL8cliptestffPfS_(float noundef %0, float noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) unnamed_addr #3 !PGOFuncName !79 {
  %5 = fcmp olt float %0, 0.000000e+00
  br i1 %5, label %6, label %18

6:                                                ; preds = %4
  %7 = fcmp olt float %1, %0
  br i1 %7, label %34, label %8

8:                                                ; preds = %6
  %9 = fcmp olt float %1, 0.000000e+00
  br i1 %9, label %10, label %33

10:                                               ; preds = %8
  %11 = fdiv float %1, %0
  %12 = load float, ptr %3, align 4, !tbaa !53
  %13 = fcmp ogt float %11, %12
  br i1 %13, label %34, label %14

14:                                               ; preds = %10
  %15 = load float, ptr %2, align 4, !tbaa !53
  %16 = fcmp ogt float %11, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %14
  store float %11, ptr %2, align 4, !tbaa !53
  br label %33

18:                                               ; preds = %4
  %19 = fcmp ogt float %0, 0.000000e+00
  %20 = fcmp olt float %1, 0.000000e+00
  br i1 %19, label %21, label %32

21:                                               ; preds = %18
  br i1 %20, label %34, label %22

22:                                               ; preds = %21
  %23 = fcmp olt float %1, %0
  br i1 %23, label %24, label %33

24:                                               ; preds = %22
  %25 = fdiv float %1, %0
  %26 = load float, ptr %2, align 4, !tbaa !53
  %27 = fcmp olt float %25, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  %29 = load float, ptr %3, align 4, !tbaa !53
  %30 = fcmp olt float %25, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  store float %25, ptr %3, align 4, !tbaa !53
  br label %33

32:                                               ; preds = %18
  br i1 %20, label %34, label %33

33:                                               ; preds = %22, %28, %31, %32, %17, %14, %8
  br label %34

34:                                               ; preds = %32, %24, %21, %10, %6, %33
  %35 = phi i32 [ 1, %33 ], [ 0, %6 ], [ 0, %10 ], [ 0, %21 ], [ 0, %24 ], [ 0, %32 ]
  ret i32 %35
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @_ZL6ocreadP6Octreeiii(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #6 !PGOFuncName !80 {
  %5 = shl i32 %1, 2
  %6 = shl i32 %2, 1
  %7 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !64
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 9
  %11 = load i32, ptr %10, align 8, !tbaa !44
  %12 = icmp eq i32 %11, 512
  br i1 %12, label %13, label %24

13:                                               ; preds = %4
  %14 = and i32 %5, 1024
  %15 = and i32 %6, 512
  %16 = or disjoint i32 %15, %14
  %17 = and i32 %3, 256
  %18 = or disjoint i32 %16, %17
  %19 = lshr exact i32 %18, 8
  %20 = zext nneg i32 %19 to i64
  %21 = getelementptr inbounds [8 x ptr], ptr %9, i64 0, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !34
  %23 = icmp eq ptr %22, null
  br i1 %23, label %117, label %26

24:                                               ; preds = %4
  %25 = icmp sgt i32 %11, 255
  br i1 %25, label %26, label %38

26:                                               ; preds = %13, %24
  %27 = phi ptr [ %9, %24 ], [ %22, %13 ]
  %28 = and i32 %5, 512
  %29 = and i32 %6, 256
  %30 = or disjoint i32 %29, %28
  %31 = and i32 %3, 128
  %32 = or disjoint i32 %30, %31
  %33 = lshr exact i32 %32, 7
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds [8 x ptr], ptr %27, i64 0, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !34
  %37 = icmp eq ptr %36, null
  br i1 %37, label %117, label %40

38:                                               ; preds = %24
  %39 = icmp sgt i32 %11, 127
  br i1 %39, label %40, label %52

40:                                               ; preds = %26, %38
  %41 = phi ptr [ %9, %38 ], [ %36, %26 ]
  %42 = and i32 %5, 256
  %43 = and i32 %6, 128
  %44 = or disjoint i32 %43, %42
  %45 = and i32 %3, 64
  %46 = or disjoint i32 %44, %45
  %47 = lshr exact i32 %46, 6
  %48 = zext nneg i32 %47 to i64
  %49 = getelementptr inbounds [8 x ptr], ptr %41, i64 0, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !34
  %51 = icmp eq ptr %50, null
  br i1 %51, label %117, label %52

52:                                               ; preds = %40, %38
  %53 = phi ptr [ %50, %40 ], [ %9, %38 ]
  %54 = and i32 %5, 128
  %55 = and i32 %6, 64
  %56 = or disjoint i32 %55, %54
  %57 = and i32 %3, 32
  %58 = or disjoint i32 %56, %57
  %59 = lshr exact i32 %58, 5
  %60 = zext nneg i32 %59 to i64
  %61 = getelementptr inbounds [8 x ptr], ptr %53, i64 0, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !34
  %63 = icmp eq ptr %62, null
  br i1 %63, label %117, label %64

64:                                               ; preds = %52
  %65 = and i32 %5, 64
  %66 = and i32 %6, 32
  %67 = or disjoint i32 %66, %65
  %68 = and i32 %3, 16
  %69 = or disjoint i32 %67, %68
  %70 = lshr exact i32 %69, 4
  %71 = zext nneg i32 %70 to i64
  %72 = getelementptr inbounds [8 x ptr], ptr %62, i64 0, i64 %71
  %73 = load ptr, ptr %72, align 8, !tbaa !34
  %74 = icmp eq ptr %73, null
  br i1 %74, label %117, label %75

75:                                               ; preds = %64
  %76 = and i32 %5, 32
  %77 = and i32 %6, 16
  %78 = or disjoint i32 %77, %76
  %79 = and i32 %3, 8
  %80 = or disjoint i32 %78, %79
  %81 = lshr exact i32 %80, 3
  %82 = zext nneg i32 %81 to i64
  %83 = getelementptr inbounds [8 x ptr], ptr %73, i64 0, i64 %82
  %84 = load ptr, ptr %83, align 8, !tbaa !34
  %85 = icmp eq ptr %84, null
  br i1 %85, label %117, label %86

86:                                               ; preds = %75
  %87 = and i32 %5, 16
  %88 = and i32 %6, 8
  %89 = or disjoint i32 %88, %87
  %90 = and i32 %3, 4
  %91 = or disjoint i32 %89, %90
  %92 = lshr exact i32 %91, 2
  %93 = zext nneg i32 %92 to i64
  %94 = getelementptr inbounds [8 x ptr], ptr %84, i64 0, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !34
  %96 = icmp eq ptr %95, null
  br i1 %96, label %117, label %97

97:                                               ; preds = %86
  %98 = and i32 %5, 8
  %99 = and i32 %6, 4
  %100 = or disjoint i32 %99, %98
  %101 = and i32 %3, 2
  %102 = or disjoint i32 %100, %101
  %103 = lshr exact i32 %102, 1
  %104 = zext nneg i32 %103 to i64
  %105 = getelementptr inbounds [8 x ptr], ptr %95, i64 0, i64 %104
  %106 = load ptr, ptr %105, align 8, !tbaa !34
  %107 = icmp eq ptr %106, null
  br i1 %107, label %117, label %108

108:                                              ; preds = %97
  %109 = and i32 %5, 4
  %110 = and i32 %6, 2
  %111 = or disjoint i32 %110, %109
  %112 = and i32 %3, 1
  %113 = or disjoint i32 %111, %112
  %114 = zext nneg i32 %113 to i64
  %115 = getelementptr inbounds [8 x ptr], ptr %106, i64 0, i64 %114
  %116 = load ptr, ptr %115, align 8, !tbaa !34
  br label %117

117:                                              ; preds = %52, %75, %97, %86, %64, %40, %26, %13, %108
  %118 = phi ptr [ %116, %108 ], [ null, %13 ], [ null, %26 ], [ null, %40 ], [ null, %64 ], [ null, %86 ], [ null, %97 ], [ null, %75 ], [ null, %52 ]
  ret ptr %118
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL14calc_ocval_rayP5OcValfffPfS1_(ptr nocapture noundef writeonly %0, float noundef %1, float noundef %2, float noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5) unnamed_addr #3 !PGOFuncName !81 {
  %7 = load float, ptr %4, align 4, !tbaa !53
  %8 = load float, ptr %5, align 4, !tbaa !53
  %9 = fcmp olt float %7, %8
  %10 = select i1 %9, float %7, float %8
  %11 = select i1 %9, float %8, float %7
  %12 = fsub float %11, %1
  %13 = fmul float %12, 1.500000e+01
  %14 = fptosi float %13 to i32
  %15 = fsub float %10, %1
  %16 = fmul float %15, 1.500000e+01
  %17 = fptosi float %16 to i32
  %18 = icmp sgt i32 %14, 14
  %19 = add nsw i32 %14, 1
  %20 = shl nsw i32 -1, %19
  %21 = xor i32 %20, -1
  %22 = select i1 %18, i32 65535, i32 %21
  %23 = icmp sgt i32 %17, 0
  %24 = shl nsw i32 -1, %17
  %25 = add nsw i32 %24, 1
  %26 = select i1 %23, i32 %25, i32 0
  %27 = add i32 %26, %22
  %28 = trunc i32 %27 to i16
  store i16 %28, ptr %0, align 2, !tbaa !82
  %29 = getelementptr inbounds float, ptr %4, i64 1
  %30 = getelementptr inbounds float, ptr %5, i64 1
  %31 = getelementptr inbounds %struct.OcVal, ptr %0, i64 0, i32 1
  %32 = load <2 x float>, ptr %29, align 4, !tbaa !53
  %33 = load <2 x float>, ptr %30, align 4, !tbaa !53
  %34 = fcmp olt <2 x float> %32, %33
  %35 = shufflevector <2 x i1> %34, <2 x i1> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %36 = shufflevector <2 x float> %32, <2 x float> %33, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %37 = shufflevector <2 x float> %32, <2 x float> %33, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %38 = select <4 x i1> %35, <4 x float> %36, <4 x float> %37
  %39 = insertelement <4 x float> poison, float %3, i64 0
  %40 = insertelement <4 x float> %39, float %2, i64 1
  %41 = shufflevector <4 x float> %40, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %42 = fsub <4 x float> %38, %41
  %43 = fmul <4 x float> %42, <float 1.500000e+01, float 1.500000e+01, float 1.500000e+01, float 1.500000e+01>
  %44 = fptosi <4 x float> %43 to <4 x i32>
  %45 = extractelement <4 x i32> %44, i64 2
  %46 = add nsw i32 %45, 1
  %47 = shl nsw i32 -1, %46
  %48 = xor i32 %47, -1
  %49 = icmp sgt <4 x i32> %44, <i32 0, i32 0, i32 14, i32 14>
  %50 = extractelement <4 x i1> %49, i64 2
  %51 = select i1 %50, i32 65535, i32 %48
  %52 = extractelement <4 x i32> %44, i64 0
  %53 = shl nsw i32 -1, %52
  %54 = add nsw i32 %53, 1
  %55 = extractelement <4 x i1> %49, i64 0
  %56 = select i1 %55, i32 %54, i32 0
  %57 = add i32 %56, %51
  %58 = trunc i32 %57 to i16
  store i16 %58, ptr %31, align 2, !tbaa !84
  %59 = extractelement <4 x i32> %44, i64 3
  %60 = add nsw i32 %59, 1
  %61 = shl nsw i32 -1, %60
  %62 = xor i32 %61, -1
  %63 = extractelement <4 x i1> %49, i64 3
  %64 = select i1 %63, i32 65535, i32 %62
  %65 = extractelement <4 x i32> %44, i64 1
  %66 = shl nsw i32 -1, %65
  %67 = add nsw i32 %66, 1
  %68 = extractelement <4 x i1> %49, i64 1
  %69 = select i1 %68, i32 %67, i32 0
  %70 = add i32 %69, %64
  %71 = trunc i32 %70 to i16
  %72 = getelementptr inbounds %struct.OcVal, ptr %0, i64 0, i32 2
  store i16 %71, ptr %72, align 2, !tbaa !85
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc noundef i32 @_ZL8testnodeP6OctreeP5IsectP4Node5OcVal(ptr noundef %0, ptr noundef readonly %1, i48 %2) unnamed_addr #0 !PGOFuncName !86 {
  %4 = trunc i48 %2 to i16
  %5 = lshr i48 %2, 16
  %6 = trunc i48 %5 to i16
  %7 = lshr i48 %2, 32
  %8 = trunc i48 %7 to i16
  %9 = getelementptr inbounds %struct.Isect, ptr %0, i64 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !87
  %11 = icmp eq i32 %10, 0
  %12 = icmp eq ptr %1, null
  br i1 %11, label %14, label %13

13:                                               ; preds = %3
  br i1 %12, label %92, label %51

14:                                               ; preds = %3
  br i1 %12, label %92, label %15

15:                                               ; preds = %14, %47
  %16 = phi ptr [ %49, %47 ], [ %1, %14 ]
  %17 = getelementptr inbounds %struct.Node, ptr %16, i64 0, i32 1
  br label %18

18:                                               ; preds = %15, %44
  %19 = phi i64 [ 0, %15 ], [ %45, %44 ]
  %20 = getelementptr inbounds [8 x ptr], ptr %16, i64 0, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  %22 = icmp eq ptr %21, null
  br i1 %22, label %47, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.OcVal, ptr %17, i64 %19
  %25 = load i16, ptr %24, align 2, !tbaa !82
  %26 = and i16 %25, %4
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.OcVal, ptr %17, i64 %19, i32 1
  %30 = load i16, ptr %29, align 2, !tbaa !84
  %31 = and i16 %30, %6
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.OcVal, ptr %17, i64 %19, i32 2
  %35 = load i16, ptr %34, align 2, !tbaa !85
  %36 = and i16 %35, %8
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %33
  %39 = ptrtoint ptr %21 to i64
  %40 = or i64 %39, 1
  %41 = inttoptr i64 %40 to ptr
  %42 = tail call i32 @RE_rayobject_intersect(ptr noundef nonnull %41, ptr noundef %0) #13
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %92

44:                                               ; preds = %23, %28, %33, %38
  %45 = add nuw nsw i64 %19, 1
  %46 = icmp eq i64 %45, 8
  br i1 %46, label %47, label %18, !llvm.loop !88

47:                                               ; preds = %18, %44
  %48 = getelementptr inbounds %struct.Node, ptr %16, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !89
  %50 = icmp eq ptr %49, null
  br i1 %50, label %92, label %15, !llvm.loop !91

51:                                               ; preds = %13, %87
  %52 = phi ptr [ %90, %87 ], [ %1, %13 ]
  %53 = phi i32 [ %88, %87 ], [ 0, %13 ]
  %54 = getelementptr inbounds %struct.Node, ptr %52, i64 0, i32 1
  br label %55

55:                                               ; preds = %51, %83
  %56 = phi i64 [ 0, %51 ], [ %85, %83 ]
  %57 = phi i32 [ %53, %51 ], [ %84, %83 ]
  %58 = getelementptr inbounds [8 x ptr], ptr %52, i64 0, i64 %56
  %59 = load ptr, ptr %58, align 8, !tbaa !34
  %60 = icmp eq ptr %59, null
  br i1 %60, label %87, label %61

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.OcVal, ptr %54, i64 %56
  %63 = load i16, ptr %62, align 2, !tbaa !82
  %64 = and i16 %63, %4
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %83, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.OcVal, ptr %54, i64 %56, i32 1
  %68 = load i16, ptr %67, align 2, !tbaa !84
  %69 = and i16 %68, %6
  %70 = icmp eq i16 %69, 0
  br i1 %70, label %83, label %71

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.OcVal, ptr %54, i64 %56, i32 2
  %73 = load i16, ptr %72, align 2, !tbaa !85
  %74 = and i16 %73, %8
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %71
  %77 = ptrtoint ptr %59 to i64
  %78 = or i64 %77, 1
  %79 = inttoptr i64 %78 to ptr
  %80 = tail call i32 @RE_rayobject_intersect(ptr noundef nonnull %79, ptr noundef %0) #13
  %81 = icmp eq i32 %80, 0
  %82 = select i1 %81, i32 %57, i32 1
  br label %83

83:                                               ; preds = %76, %71, %66, %61
  %84 = phi i32 [ %82, %76 ], [ %57, %61 ], [ %57, %66 ], [ %57, %71 ]
  %85 = add nuw nsw i64 %56, 1
  %86 = icmp eq i64 %85, 8
  br i1 %86, label %87, label %55, !llvm.loop !92

87:                                               ; preds = %55, %83
  %88 = phi i32 [ %57, %55 ], [ %84, %83 ]
  %89 = getelementptr inbounds %struct.Node, ptr %52, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !89
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %51, !llvm.loop !93

92:                                               ; preds = %87, %47, %38, %13, %14
  %93 = phi i32 [ 0, %14 ], [ 0, %13 ], [ 1, %38 ], [ 0, %47 ], [ %88, %87 ]
  ret i32 %93
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @_ZL7min_ffffff(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #4 !PGOFuncName !94 {
  %4 = tail call fastcc noundef float @_ZL6min_ffff(float noundef %0, float noundef %1) #13
  %5 = tail call fastcc noundef float @_ZL6min_ffff(float noundef %4, float noundef %2) #13
  ret float %5
}

; Function Attrs: optsize
declare i32 @RE_rayobject_intersect(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @_ZL6min_ffff(float noundef %0, float noundef %1) unnamed_addr #4 !PGOFuncName !95 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: optsize
declare void @RE_rayobject_merge_bb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc void @_ZL19octree_fill_rayfaceP6OctreeP7RayFace(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !96 {
  %3 = alloca [3 x float], align 8
  %4 = alloca [4 x [3 x float]], align 16
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [4 x [3 x i16]], align 16
  %10 = alloca [3 x i16], align 2
  %11 = alloca [3 x i16], align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %11) #14
  %12 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 12
  %13 = load ptr, ptr %12, align 8, !tbaa !66
  %14 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 4
  %15 = load <2 x float>, ptr %14, align 4, !tbaa !53
  store <2 x float> %15, ptr %3, align 8, !tbaa !53
  %16 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 6
  %17 = load float, ptr %16, align 4, !tbaa !55
  %18 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  store float %17, ptr %18, align 8, !tbaa !53
  %19 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 9
  %20 = load i32, ptr %19, align 8, !tbaa !44
  %21 = mul nsw i32 %20, %20
  call fastcc void @_ZL10copy_v3_v3PfPKf(ptr noundef nonnull %5, ptr noundef %1) #13
  %22 = getelementptr inbounds %struct.RayFace, ptr %1, i64 0, i32 1
  call fastcc void @_ZL10copy_v3_v3PfPKf(ptr noundef nonnull %6, ptr noundef nonnull %22) #13
  %23 = getelementptr inbounds %struct.RayFace, ptr %1, i64 0, i32 2
  call fastcc void @_ZL10copy_v3_v3PfPKf(ptr noundef nonnull %7, ptr noundef nonnull %23) #13
  %24 = getelementptr inbounds %struct.RayFace, ptr %1, i64 0, i32 4
  %25 = load i32, ptr %24, align 4, !tbaa !97
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %28, %2
  br label %33

28:                                               ; preds = %2
  %29 = getelementptr inbounds %struct.RayFace, ptr %1, i64 0, i32 3
  call fastcc void @_ZL10copy_v3_v3PfPKf(ptr noundef nonnull %8, ptr noundef nonnull %29) #13
  br label %27

30:                                               ; preds = %68
  %31 = trunc i32 %20 to i16
  %32 = add i16 %31, -1
  br label %71

33:                                               ; preds = %27, %68
  %34 = phi i64 [ %69, %68 ], [ 0, %27 ]
  %35 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 %34
  %36 = load float, ptr %35, align 4, !tbaa !53
  %37 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 7, i64 %34
  %38 = load float, ptr %37, align 4, !tbaa !53
  %39 = fsub float %36, %38
  %40 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 %34
  %41 = load float, ptr %40, align 4, !tbaa !53
  %42 = fmul float %39, %41
  %43 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 %34
  store float %42, ptr %43, align 4, !tbaa !53
  %44 = fptosi float %42 to i16
  %45 = getelementptr inbounds [3 x i16], ptr %9, i64 0, i64 %34
  store i16 %44, ptr %45, align 2, !tbaa !57
  %46 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 %34
  %47 = load float, ptr %46, align 4, !tbaa !53
  %48 = fsub float %47, %38
  %49 = fmul float %41, %48
  %50 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 0, i64 1, i64 %34
  store float %49, ptr %50, align 4, !tbaa !53
  %51 = fptosi float %49 to i16
  %52 = getelementptr inbounds [4 x [3 x i16]], ptr %9, i64 0, i64 1, i64 %34
  store i16 %51, ptr %52, align 2, !tbaa !57
  %53 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 %34
  %54 = load float, ptr %53, align 4, !tbaa !53
  %55 = fsub float %54, %38
  %56 = fmul float %41, %55
  %57 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 0, i64 2, i64 %34
  store float %56, ptr %57, align 4, !tbaa !53
  %58 = fptosi float %56 to i16
  %59 = getelementptr inbounds [4 x [3 x i16]], ptr %9, i64 0, i64 2, i64 %34
  store i16 %58, ptr %59, align 2, !tbaa !57
  br i1 %26, label %68, label %60

60:                                               ; preds = %33
  %61 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 %34
  %62 = load float, ptr %61, align 4, !tbaa !53
  %63 = fsub float %62, %38
  %64 = fmul float %41, %63
  %65 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 0, i64 3, i64 %34
  store float %64, ptr %65, align 4, !tbaa !53
  %66 = fptosi float %64 to i16
  %67 = getelementptr inbounds [4 x [3 x i16]], ptr %9, i64 0, i64 3, i64 %34
  store i16 %66, ptr %67, align 2, !tbaa !57
  br label %68

68:                                               ; preds = %33, %60
  %69 = add nuw nsw i64 %34, 1
  %70 = icmp eq i64 %69, 3
  br i1 %70, label %30, label %33, !llvm.loop !99

71:                                               ; preds = %30, %91
  %72 = phi i64 [ 0, %30 ], [ %101, %91 ]
  %73 = getelementptr inbounds [3 x i16], ptr %9, i64 0, i64 %72
  %74 = load i16, ptr %73, align 2, !tbaa !57
  %75 = sext i16 %74 to i32
  %76 = getelementptr inbounds [4 x [3 x i16]], ptr %9, i64 0, i64 1, i64 %72
  %77 = load i16, ptr %76, align 2, !tbaa !57
  %78 = sext i16 %77 to i32
  %79 = getelementptr inbounds [4 x [3 x i16]], ptr %9, i64 0, i64 2, i64 %72
  %80 = load i16, ptr %79, align 2, !tbaa !57
  %81 = sext i16 %80 to i32
  br i1 %26, label %82, label %85

82:                                               ; preds = %71
  %83 = tail call fastcc noundef i32 @_ZL7min_iiiiii(i32 noundef %75, i32 noundef %78, i32 noundef %81) #13, !range !100
  %84 = tail call fastcc noundef i32 @_ZL7max_iiiiii(i32 noundef %75, i32 noundef %78, i32 noundef %81) #13, !range !100
  br label %91

85:                                               ; preds = %71
  %86 = getelementptr inbounds [4 x [3 x i16]], ptr %9, i64 0, i64 3, i64 %72
  %87 = load i16, ptr %86, align 2, !tbaa !57
  %88 = sext i16 %87 to i32
  %89 = tail call fastcc noundef i32 @_ZL8min_iiiiiiii(i32 noundef %75, i32 noundef %78, i32 noundef %81, i32 noundef %88) #13, !range !100
  %90 = tail call fastcc noundef i32 @_ZL8max_iiiiiiii(i32 noundef %75, i32 noundef %78, i32 noundef %81, i32 noundef %88) #13, !range !100
  br label %91

91:                                               ; preds = %85, %82
  %92 = phi i32 [ %83, %82 ], [ %89, %85 ]
  %93 = phi i32 [ %84, %82 ], [ %90, %85 ]
  %94 = trunc i32 %93 to i16
  %95 = trunc i32 %92 to i16
  %96 = getelementptr inbounds [3 x i16], ptr %10, i64 0, i64 %72
  %97 = getelementptr inbounds [3 x i16], ptr %11, i64 0, i64 %72
  %98 = icmp sgt i32 %20, %93
  %99 = select i1 %98, i16 %94, i16 %32
  store i16 %99, ptr %97, align 2
  %100 = tail call i16 @llvm.smax.i16(i16 %95, i16 0)
  store i16 %100, ptr %96, align 2
  %101 = add nuw nsw i64 %72, 1
  %102 = icmp eq i64 %101, 3
  br i1 %102, label %103, label %71, !llvm.loop !101

103:                                              ; preds = %91
  %104 = load i16, ptr %10, align 2, !tbaa !57
  %105 = load i16, ptr %11, align 2, !tbaa !57
  %106 = icmp eq i16 %104, %105
  br i1 %106, label %107, label %120

107:                                              ; preds = %103
  %108 = getelementptr inbounds [3 x i16], ptr %10, i64 0, i64 1
  %109 = load i16, ptr %108, align 2, !tbaa !57
  %110 = getelementptr inbounds [3 x i16], ptr %11, i64 0, i64 1
  %111 = load i16, ptr %110, align 2, !tbaa !57
  %112 = icmp eq i16 %109, %111
  br i1 %112, label %113, label %120

113:                                              ; preds = %107
  %114 = getelementptr inbounds [3 x i16], ptr %10, i64 0, i64 2
  %115 = load i16, ptr %114, align 2, !tbaa !57
  %116 = getelementptr inbounds [3 x i16], ptr %11, i64 0, i64 2
  %117 = load i16, ptr %116, align 2, !tbaa !57
  %118 = icmp eq i16 %115, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %113
  call fastcc void @_ZL7ocwriteP6OctreeP7RayFaceisssPA3_f(ptr noundef %0, ptr noundef %1, i32 noundef %25, i16 noundef signext %104, i16 noundef signext %109, i16 noundef signext %115, ptr noundef nonnull %4) #13
  br label %250

120:                                              ; preds = %113, %107, %103
  %121 = zext nneg i32 %21 to i64
  %122 = getelementptr inbounds i8, ptr %13, i64 %121
  call fastcc void @_ZL5d2ddaP6OctreessssPcPA3_sPA3_f(ptr noundef %0, i16 noundef signext 0, i16 noundef signext 1, i16 noundef signext 0, i16 noundef signext 1, ptr noundef %122, ptr noundef nonnull %9, ptr noundef nonnull %4) #13
  call fastcc void @_ZL5d2ddaP6OctreessssPcPA3_sPA3_f(ptr noundef %0, i16 noundef signext 0, i16 noundef signext 1, i16 noundef signext 0, i16 noundef signext 2, ptr noundef %13, ptr noundef nonnull %9, ptr noundef nonnull %4) #13
  %123 = shl nuw nsw i32 %21, 1
  %124 = zext nneg i32 %123 to i64
  %125 = getelementptr inbounds i8, ptr %13, i64 %124
  call fastcc void @_ZL5d2ddaP6OctreessssPcPA3_sPA3_f(ptr noundef %0, i16 noundef signext 0, i16 noundef signext 1, i16 noundef signext 1, i16 noundef signext 2, ptr noundef %125, ptr noundef nonnull %9, ptr noundef nonnull %4) #13
  call fastcc void @_ZL5d2ddaP6OctreessssPcPA3_sPA3_f(ptr noundef %0, i16 noundef signext 1, i16 noundef signext 2, i16 noundef signext 0, i16 noundef signext 1, ptr noundef %122, ptr noundef nonnull %9, ptr noundef nonnull %4) #13
  call fastcc void @_ZL5d2ddaP6OctreessssPcPA3_sPA3_f(ptr noundef %0, i16 noundef signext 1, i16 noundef signext 2, i16 noundef signext 0, i16 noundef signext 2, ptr noundef %13, ptr noundef nonnull %9, ptr noundef nonnull %4) #13
  call fastcc void @_ZL5d2ddaP6OctreessssPcPA3_sPA3_f(ptr noundef %0, i16 noundef signext 1, i16 noundef signext 2, i16 noundef signext 1, i16 noundef signext 2, ptr noundef %125, ptr noundef nonnull %9, ptr noundef nonnull %4) #13
  %126 = load i32, ptr %24, align 4, !tbaa !97
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %120
  call fastcc void @_ZL5d2ddaP6OctreessssPcPA3_sPA3_f(ptr noundef %0, i16 noundef signext 2, i16 noundef signext 3, i16 noundef signext 0, i16 noundef signext 1, ptr noundef %122, ptr noundef nonnull %9, ptr noundef nonnull %4) #13
  call fastcc void @_ZL5d2ddaP6OctreessssPcPA3_sPA3_f(ptr noundef %0, i16 noundef signext 2, i16 noundef signext 3, i16 noundef signext 0, i16 noundef signext 2, ptr noundef %13, ptr noundef nonnull %9, ptr noundef nonnull %4) #13
  call fastcc void @_ZL5d2ddaP6OctreessssPcPA3_sPA3_f(ptr noundef %0, i16 noundef signext 2, i16 noundef signext 3, i16 noundef signext 1, i16 noundef signext 2, ptr noundef %125, ptr noundef nonnull %9, ptr noundef nonnull %4) #13
  br label %129

129:                                              ; preds = %120, %128
  %130 = phi i16 [ 3, %128 ], [ 2, %120 ]
  call fastcc void @_ZL5d2ddaP6OctreessssPcPA3_sPA3_f(ptr noundef %0, i16 noundef signext %130, i16 noundef signext 0, i16 noundef signext 0, i16 noundef signext 1, ptr noundef %122, ptr noundef nonnull %9, ptr noundef nonnull %4) #13
  call fastcc void @_ZL5d2ddaP6OctreessssPcPA3_sPA3_f(ptr noundef %0, i16 noundef signext %130, i16 noundef signext 0, i16 noundef signext 0, i16 noundef signext 2, ptr noundef %13, ptr noundef nonnull %9, ptr noundef nonnull %4) #13
  call fastcc void @_ZL5d2ddaP6OctreessssPcPA3_sPA3_f(ptr noundef %0, i16 noundef signext %130, i16 noundef signext 0, i16 noundef signext 1, i16 noundef signext 2, ptr noundef %125, ptr noundef nonnull %9, ptr noundef nonnull %4) #13
  call fastcc void @_ZL12filltriangleP6OctreessPcPsS2_(ptr noundef %0, i16 noundef signext 0, i16 noundef signext 1, ptr noundef %122, ptr noundef nonnull %10, ptr noundef nonnull %11) #13
  call fastcc void @_ZL12filltriangleP6OctreessPcPsS2_(ptr noundef %0, i16 noundef signext 0, i16 noundef signext 2, ptr noundef %13, ptr noundef nonnull %10, ptr noundef nonnull %11) #13
  call fastcc void @_ZL12filltriangleP6OctreessPcPsS2_(ptr noundef %0, i16 noundef signext 1, i16 noundef signext 2, ptr noundef %125, ptr noundef nonnull %10, ptr noundef nonnull %11) #13
  %131 = call fastcc noundef zeroext i1 @_ZL12face_in_nodeP7RayFacesssPA3_f(ptr noundef nonnull %1, i16 noundef signext 0, i16 noundef signext 0, i16 noundef signext 0, ptr noundef nonnull %4) #13
  %132 = sext i16 %104 to i32
  %133 = sext i16 %105 to i32
  %134 = icmp sgt i16 %104, %105
  br i1 %134, label %250, label %135

135:                                              ; preds = %129
  %136 = getelementptr inbounds [3 x i16], ptr %10, i64 0, i64 1
  %137 = load i16, ptr %136, align 2, !tbaa !57
  %138 = getelementptr inbounds [3 x i16], ptr %11, i64 0, i64 1
  %139 = load i16, ptr %138, align 2, !tbaa !57
  %140 = icmp sgt i16 %137, %139
  %141 = getelementptr inbounds [3 x i16], ptr %10, i64 0, i64 2
  %142 = load i16, ptr %141, align 2
  %143 = getelementptr inbounds [3 x i16], ptr %11, i64 0, i64 2
  %144 = load i16, ptr %143, align 2
  %145 = icmp sgt i16 %142, %144
  %146 = sext i16 %142 to i64
  %147 = call i16 @llvm.smax.i16(i16 %142, i16 %144)
  %148 = sext i16 %147 to i64
  %149 = sext i16 %137 to i64
  %150 = call i16 @llvm.smax.i16(i16 %137, i16 %139)
  %151 = sext i16 %150 to i64
  br label %170

152:                                              ; preds = %215
  br i1 %134, label %250, label %153

153:                                              ; preds = %152
  %154 = getelementptr inbounds [3 x i16], ptr %10, i64 0, i64 1
  %155 = load i16, ptr %154, align 2, !tbaa !57
  %156 = getelementptr inbounds [3 x i16], ptr %11, i64 0, i64 1
  %157 = load i16, ptr %156, align 2, !tbaa !57
  %158 = icmp sgt i16 %155, %157
  %159 = getelementptr inbounds [3 x i16], ptr %10, i64 0, i64 2
  %160 = load i16, ptr %159, align 2
  %161 = getelementptr inbounds [3 x i16], ptr %11, i64 0, i64 2
  %162 = load i16, ptr %161, align 2
  %163 = icmp sgt i16 %160, %162
  %164 = sext i16 %160 to i64
  %165 = call i16 @llvm.smax.i16(i16 %160, i16 %162)
  %166 = sext i16 %165 to i64
  %167 = sext i16 %155 to i64
  %168 = call i16 @llvm.smax.i16(i16 %155, i16 %157)
  %169 = sext i16 %168 to i64
  br label %218

170:                                              ; preds = %135, %215
  %171 = phi i32 [ %132, %135 ], [ %216, %215 ]
  br i1 %140, label %215, label %172

172:                                              ; preds = %170
  %173 = load i32, ptr %19, align 8, !tbaa !44
  %174 = mul nsw i32 %173, %171
  %175 = add i32 %174, %21
  %176 = trunc i32 %171 to i16
  %177 = sext i32 %174 to i64
  %178 = getelementptr i8, ptr %13, i64 %177
  br label %179

179:                                              ; preds = %172, %212
  %180 = phi i64 [ %149, %172 ], [ %213, %212 ]
  %181 = trunc i64 %180 to i32
  %182 = add i32 %175, %181
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8, ptr %13, i64 %183
  %185 = load i8, ptr %184, align 1, !tbaa !102
  %186 = icmp eq i8 %185, 0
  %187 = select i1 %186, i1 true, i1 %145
  br i1 %187, label %212, label %188

188:                                              ; preds = %179
  %189 = load i32, ptr %19, align 8, !tbaa !44
  %190 = mul nsw i32 %189, %181
  %191 = add nsw i32 %190, %123
  %192 = trunc i64 %180 to i16
  %193 = sext i32 %191 to i64
  %194 = getelementptr i8, ptr %13, i64 %193
  br label %195

195:                                              ; preds = %188, %209
  %196 = phi i64 [ %146, %188 ], [ %210, %209 ]
  %197 = getelementptr i8, ptr %194, i64 %196
  %198 = load i8, ptr %197, align 1, !tbaa !102
  %199 = icmp eq i8 %198, 0
  br i1 %199, label %209, label %200

200:                                              ; preds = %195
  %201 = getelementptr i8, ptr %178, i64 %196
  %202 = load i8, ptr %201, align 1, !tbaa !102
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %209, label %204

204:                                              ; preds = %200
  %205 = trunc i64 %196 to i16
  %206 = call fastcc noundef zeroext i1 @_ZL12face_in_nodeP7RayFacesssPA3_f(ptr noundef null, i16 noundef signext %176, i16 noundef signext %192, i16 noundef signext %205, ptr noundef nonnull %4) #13
  br i1 %206, label %207, label %209

207:                                              ; preds = %204
  %208 = load i32, ptr %24, align 4, !tbaa !97
  call fastcc void @_ZL7ocwriteP6OctreeP7RayFaceisssPA3_f(ptr noundef %0, ptr noundef %1, i32 noundef %208, i16 noundef signext %176, i16 noundef signext %192, i16 noundef signext %205, ptr noundef nonnull %4) #13
  br label %209

209:                                              ; preds = %195, %200, %207, %204
  %210 = add nsw i64 %196, 1
  %211 = icmp eq i64 %196, %148
  br i1 %211, label %212, label %195, !llvm.loop !103

212:                                              ; preds = %209, %179
  %213 = add nsw i64 %180, 1
  %214 = icmp eq i64 %180, %151
  br i1 %214, label %215, label %179, !llvm.loop !104

215:                                              ; preds = %212, %170
  %216 = add nsw i32 %171, 1
  %217 = icmp eq i32 %171, %133
  br i1 %217, label %152, label %170, !llvm.loop !105

218:                                              ; preds = %153, %247
  %219 = phi i32 [ %132, %153 ], [ %248, %247 ]
  br i1 %158, label %247, label %220

220:                                              ; preds = %218
  %221 = load i32, ptr %19, align 8, !tbaa !44
  %222 = mul i32 %221, %219
  %223 = add i32 %222, %21
  %224 = sext i32 %222 to i64
  %225 = getelementptr i8, ptr %13, i64 %224
  br label %226

226:                                              ; preds = %220, %244
  %227 = phi i64 [ %167, %220 ], [ %245, %244 ]
  %228 = trunc i64 %227 to i32
  %229 = add i32 %223, %228
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i8, ptr %13, i64 %230
  store i8 0, ptr %231, align 1, !tbaa !102
  br i1 %163, label %244, label %232

232:                                              ; preds = %226
  %233 = load i32, ptr %19, align 8, !tbaa !44
  %234 = mul nsw i32 %233, %228
  %235 = add nsw i32 %234, %123
  %236 = sext i32 %235 to i64
  %237 = getelementptr i8, ptr %13, i64 %236
  br label %238

238:                                              ; preds = %232, %238
  %239 = phi i64 [ %164, %232 ], [ %242, %238 ]
  %240 = getelementptr i8, ptr %237, i64 %239
  store i8 0, ptr %240, align 1, !tbaa !102
  %241 = getelementptr i8, ptr %225, i64 %239
  store i8 0, ptr %241, align 1, !tbaa !102
  %242 = add nsw i64 %239, 1
  %243 = icmp eq i64 %239, %166
  br i1 %243, label %244, label %238, !llvm.loop !106

244:                                              ; preds = %238, %226
  %245 = add nsw i64 %227, 1
  %246 = icmp eq i64 %227, %169
  br i1 %246, label %247, label %226, !llvm.loop !107

247:                                              ; preds = %244, %218
  %248 = add nsw i32 %219, 1
  %249 = icmp eq i32 %219, %133
  br i1 %249, label %250, label %218, !llvm.loop !108

250:                                              ; preds = %247, %129, %152, %119
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @_ZL7min_iiiiii(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 !PGOFuncName !109 {
  %4 = tail call fastcc noundef i32 @_ZL6min_iiii(i32 noundef %0, i32 noundef %1) #13, !range !100
  %5 = tail call fastcc noundef i32 @_ZL6min_iiii(i32 noundef %4, i32 noundef %2) #13, !range !100
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @_ZL7max_iiiiii(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 !PGOFuncName !110 {
  %4 = tail call fastcc noundef i32 @_ZL6max_iiii(i32 noundef %0, i32 noundef %1) #13, !range !100
  %5 = tail call fastcc noundef i32 @_ZL6max_iiii(i32 noundef %4, i32 noundef %2) #13, !range !100
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @_ZL8min_iiiiiiii(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #4 !PGOFuncName !111 {
  %5 = tail call fastcc noundef i32 @_ZL7min_iiiiii(i32 noundef %0, i32 noundef %1, i32 noundef %2) #13, !range !100
  %6 = tail call fastcc noundef i32 @_ZL6min_iiii(i32 noundef %5, i32 noundef %3) #13, !range !100
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @_ZL8max_iiiiiiii(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #4 !PGOFuncName !112 {
  %5 = tail call fastcc noundef i32 @_ZL7max_iiiiii(i32 noundef %0, i32 noundef %1, i32 noundef %2) #13, !range !100
  %6 = tail call fastcc noundef i32 @_ZL6max_iiii(i32 noundef %5, i32 noundef %3) #13, !range !100
  ret i32 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc void @_ZL7ocwriteP6OctreeP7RayFaceisssPA3_f(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i16 noundef signext %3, i16 noundef signext %4, i16 noundef signext %5, ptr noundef %6) unnamed_addr #0 !PGOFuncName !113 {
  %8 = shl i16 %3, 2
  %9 = shl i16 %4, 1
  %10 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !64
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !44
  %15 = icmp eq i32 %14, 512
  br i1 %15, label %16, label %25

16:                                               ; preds = %7
  %17 = and i16 %8, 1024
  %18 = and i16 %9, 512
  %19 = or disjoint i16 %18, %17
  %20 = and i16 %5, 256
  %21 = or disjoint i16 %19, %20
  %22 = lshr exact i16 %21, 8
  %23 = tail call fastcc noundef ptr @_ZL9addbranchP6OctreeP6Branchs(ptr noundef nonnull %0, ptr noundef %12, i16 noundef signext %22) #13
  %24 = load i32, ptr %13, align 8, !tbaa !44
  br label %25

25:                                               ; preds = %16, %7
  %26 = phi i32 [ %24, %16 ], [ %14, %7 ]
  %27 = phi ptr [ %23, %16 ], [ %12, %7 ]
  %28 = icmp sgt i32 %26, 255
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = and i16 %8, 512
  %31 = and i16 %9, 256
  %32 = or disjoint i16 %31, %30
  %33 = and i16 %5, 128
  %34 = or disjoint i16 %32, %33
  %35 = lshr exact i16 %34, 7
  %36 = tail call fastcc noundef ptr @_ZL9addbranchP6OctreeP6Branchs(ptr noundef nonnull %0, ptr noundef %27, i16 noundef signext %35) #13
  %37 = load i32, ptr %13, align 8, !tbaa !44
  br label %38

38:                                               ; preds = %29, %25
  %39 = phi i32 [ %37, %29 ], [ %26, %25 ]
  %40 = phi ptr [ %36, %29 ], [ %27, %25 ]
  %41 = icmp sgt i32 %39, 127
  br i1 %41, label %42, label %50

42:                                               ; preds = %38
  %43 = and i16 %8, 256
  %44 = and i16 %9, 128
  %45 = or disjoint i16 %44, %43
  %46 = and i16 %5, 64
  %47 = or disjoint i16 %45, %46
  %48 = lshr exact i16 %47, 6
  %49 = tail call fastcc noundef ptr @_ZL9addbranchP6OctreeP6Branchs(ptr noundef nonnull %0, ptr noundef %40, i16 noundef signext %48) #13
  br label %50

50:                                               ; preds = %42, %38
  %51 = phi ptr [ %49, %42 ], [ %40, %38 ]
  %52 = and i16 %8, 128
  %53 = and i16 %9, 64
  %54 = or disjoint i16 %53, %52
  %55 = and i16 %5, 32
  %56 = or disjoint i16 %54, %55
  %57 = lshr exact i16 %56, 5
  %58 = and i16 %8, 64
  %59 = and i16 %9, 32
  %60 = or disjoint i16 %59, %58
  %61 = and i16 %5, 16
  %62 = or disjoint i16 %60, %61
  %63 = lshr exact i16 %62, 4
  %64 = and i16 %8, 32
  %65 = and i16 %9, 16
  %66 = or disjoint i16 %65, %64
  %67 = and i16 %5, 8
  %68 = or disjoint i16 %66, %67
  %69 = lshr exact i16 %68, 3
  %70 = and i16 %8, 16
  %71 = and i16 %9, 8
  %72 = or disjoint i16 %71, %70
  %73 = and i16 %5, 4
  %74 = or disjoint i16 %72, %73
  %75 = lshr exact i16 %74, 2
  %76 = and i16 %8, 8
  %77 = and i16 %9, 4
  %78 = or disjoint i16 %77, %76
  %79 = and i16 %5, 2
  %80 = or disjoint i16 %78, %79
  %81 = lshr exact i16 %80, 1
  %82 = and i16 %8, 4
  %83 = and i16 %9, 2
  %84 = or disjoint i16 %83, %82
  %85 = and i16 %5, 1
  %86 = or disjoint i16 %84, %85
  %87 = tail call fastcc noundef ptr @_ZL9addbranchP6OctreeP6Branchs(ptr noundef nonnull %0, ptr noundef %51, i16 noundef signext %57) #13
  %88 = tail call fastcc noundef ptr @_ZL9addbranchP6OctreeP6Branchs(ptr noundef nonnull %0, ptr noundef %87, i16 noundef signext %63) #13
  %89 = tail call fastcc noundef ptr @_ZL9addbranchP6OctreeP6Branchs(ptr noundef nonnull %0, ptr noundef %88, i16 noundef signext %69) #13
  %90 = tail call fastcc noundef ptr @_ZL9addbranchP6OctreeP6Branchs(ptr noundef nonnull %0, ptr noundef %89, i16 noundef signext %75) #13
  %91 = tail call fastcc noundef ptr @_ZL9addbranchP6OctreeP6Branchs(ptr noundef nonnull %0, ptr noundef %90, i16 noundef signext %81) #13
  %92 = zext nneg i16 %86 to i64
  %93 = getelementptr inbounds [8 x ptr], ptr %91, i64 0, i64 %92
  %94 = load ptr, ptr %93, align 8, !tbaa !34
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %98

96:                                               ; preds = %50
  %97 = tail call fastcc noundef ptr @_ZL7addnodeP6Octree(ptr noundef nonnull %0) #13
  store ptr %97, ptr %93, align 8, !tbaa !34
  br label %98

98:                                               ; preds = %96, %50
  %99 = phi ptr [ %94, %50 ], [ %97, %96 ]
  br label %100

100:                                              ; preds = %98, %100
  %101 = phi ptr [ %103, %100 ], [ %99, %98 ]
  %102 = getelementptr inbounds %struct.Node, ptr %101, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !89
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %100, !llvm.loop !114

105:                                              ; preds = %100
  %106 = getelementptr inbounds [8 x ptr], ptr %101, i64 0, i64 7
  %107 = load ptr, ptr %106, align 8, !tbaa !34
  %108 = icmp eq ptr %107, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.Node, ptr %101, i64 0, i32 2
  %111 = tail call fastcc noundef ptr @_ZL7addnodeP6Octree(ptr noundef %0) #13
  store ptr %111, ptr %110, align 8, !tbaa !89
  br label %121

112:                                              ; preds = %105, %112
  %113 = phi i16 [ %118, %112 ], [ 0, %105 ]
  %114 = sext i16 %113 to i64
  %115 = getelementptr inbounds [8 x ptr], ptr %101, i64 0, i64 %114
  %116 = load ptr, ptr %115, align 8, !tbaa !34
  %117 = icmp eq ptr %116, null
  %118 = add i16 %113, 1
  br i1 %117, label %119, label %112, !llvm.loop !115

119:                                              ; preds = %112
  %120 = sext i16 %113 to i64
  br label %121

121:                                              ; preds = %119, %109
  %122 = phi i64 [ 0, %109 ], [ %120, %119 ]
  %123 = phi ptr [ %111, %109 ], [ %101, %119 ]
  %124 = ptrtoint ptr %1 to i64
  %125 = and i64 %124, -4
  %126 = inttoptr i64 %125 to ptr
  %127 = getelementptr inbounds [8 x ptr], ptr %123, i64 0, i64 %122
  store ptr %126, ptr %127, align 8, !tbaa !34
  %128 = icmp eq i32 %2, 0
  %129 = getelementptr inbounds [3 x float], ptr %6, i64 1
  %130 = getelementptr inbounds [3 x float], ptr %6, i64 2
  br i1 %128, label %136, label %131

131:                                              ; preds = %121
  %132 = getelementptr inbounds [3 x float], ptr %6, i64 3
  %133 = ashr exact i16 %8, 2
  %134 = ashr exact i16 %9, 1
  %135 = getelementptr inbounds %struct.Node, ptr %123, i64 0, i32 1, i64 %122
  tail call fastcc void @_ZL15calc_ocval_facePfS_S_S_sssP5OcVal(ptr noundef %6, ptr noundef nonnull %129, ptr noundef nonnull %130, ptr noundef nonnull %132, i16 noundef signext %133, i16 noundef signext %134, i16 noundef signext %5, ptr noundef nonnull %135) #13
  br label %140

136:                                              ; preds = %121
  %137 = ashr exact i16 %8, 2
  %138 = ashr exact i16 %9, 1
  %139 = getelementptr inbounds %struct.Node, ptr %123, i64 0, i32 1, i64 %122
  tail call fastcc void @_ZL15calc_ocval_facePfS_S_S_sssP5OcVal(ptr noundef %6, ptr noundef nonnull %129, ptr noundef nonnull %130, ptr noundef null, i16 noundef signext %137, i16 noundef signext %138, i16 noundef signext %5, ptr noundef nonnull %139) #13
  br label %140

140:                                              ; preds = %136, %131
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @_ZL5d2ddaP6OctreessssPcPA3_sPA3_f(ptr nocapture noundef readonly %0, i16 noundef signext %1, i16 noundef signext %2, i16 noundef signext %3, i16 noundef signext %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef readonly %6, ptr nocapture noundef readonly %7) unnamed_addr #9 !PGOFuncName !116 {
  %9 = zext nneg i16 %1 to i64
  %10 = zext nneg i16 %3 to i64
  %11 = getelementptr inbounds [3 x i16], ptr %6, i64 %9, i64 %10
  %12 = load i16, ptr %11, align 2, !tbaa !57
  %13 = sext i16 %12 to i32
  %14 = zext nneg i16 %4 to i64
  %15 = getelementptr inbounds [3 x i16], ptr %6, i64 %9, i64 %14
  %16 = load i16, ptr %15, align 2, !tbaa !57
  %17 = sext i16 %16 to i32
  %18 = zext nneg i16 %2 to i64
  %19 = getelementptr inbounds [3 x i16], ptr %6, i64 %18, i64 %10
  %20 = load i16, ptr %19, align 2, !tbaa !57
  %21 = sext i16 %20 to i32
  %22 = getelementptr inbounds [3 x i16], ptr %6, i64 %18, i64 %14
  %23 = load i16, ptr %22, align 2, !tbaa !57
  %24 = sext i16 %23 to i32
  %25 = icmp eq i16 %12, %20
  %26 = icmp eq i16 %16, %23
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %28, label %30

28:                                               ; preds = %8
  %29 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 9
  br label %134

30:                                               ; preds = %8
  %31 = getelementptr inbounds [3 x float], ptr %7, i64 %9, i64 %10
  %32 = load float, ptr %31, align 4, !tbaa !53
  %33 = getelementptr inbounds [3 x float], ptr %7, i64 %9, i64 %14
  %34 = load float, ptr %33, align 4, !tbaa !53
  %35 = getelementptr inbounds [3 x float], ptr %7, i64 %18, i64 %10
  %36 = load float, ptr %35, align 4, !tbaa !53
  %37 = getelementptr inbounds [3 x float], ptr %7, i64 %18, i64 %14
  %38 = load float, ptr %37, align 4, !tbaa !53
  %39 = fcmp une float %32, %36
  br i1 %39, label %40, label %58

40:                                               ; preds = %30
  %41 = fsub float %36, %32
  %42 = fcmp ogt float %41, 0.000000e+00
  %43 = sitofp i16 %12 to float
  %44 = fsub float %32, %43
  br i1 %42, label %45, label %52

45:                                               ; preds = %40
  %46 = fadd float %44, -1.000000e+00
  %47 = fsub float %32, %36
  %48 = insertelement <2 x float> <float poison, float -1.000000e+00>, float %46, i64 0
  %49 = insertelement <2 x float> poison, float %47, i64 0
  %50 = shufflevector <2 x float> %49, <2 x float> poison, <2 x i32> zeroinitializer
  %51 = fdiv <2 x float> %48, %50
  br label %58

52:                                               ; preds = %40
  %53 = fsub float %32, %36
  %54 = insertelement <2 x float> <float poison, float 1.000000e+00>, float %44, i64 0
  %55 = insertelement <2 x float> poison, float %53, i64 0
  %56 = shufflevector <2 x float> %55, <2 x float> poison, <2 x i32> zeroinitializer
  %57 = fdiv <2 x float> %54, %56
  br label %58

58:                                               ; preds = %30, %45, %52
  %59 = phi i32 [ 1, %45 ], [ -1, %52 ], [ 0, %30 ]
  %60 = phi <2 x float> [ %51, %45 ], [ %57, %52 ], [ <float 1.000000e+00, float 0.000000e+00>, %30 ]
  %61 = fcmp une float %34, %38
  br i1 %61, label %62, label %80

62:                                               ; preds = %58
  %63 = fsub float %38, %34
  %64 = fcmp ogt float %63, 0.000000e+00
  %65 = sitofp i16 %16 to float
  %66 = fsub float %34, %65
  br i1 %64, label %67, label %74

67:                                               ; preds = %62
  %68 = fadd float %66, -1.000000e+00
  %69 = fsub float %34, %38
  %70 = insertelement <2 x float> <float poison, float -1.000000e+00>, float %68, i64 0
  %71 = insertelement <2 x float> poison, float %69, i64 0
  %72 = shufflevector <2 x float> %71, <2 x float> poison, <2 x i32> zeroinitializer
  %73 = fdiv <2 x float> %70, %72
  br label %80

74:                                               ; preds = %62
  %75 = fsub float %34, %38
  %76 = insertelement <2 x float> <float poison, float 1.000000e+00>, float %66, i64 0
  %77 = insertelement <2 x float> poison, float %75, i64 0
  %78 = shufflevector <2 x float> %77, <2 x float> poison, <2 x i32> zeroinitializer
  %79 = fdiv <2 x float> %76, %78
  br label %80

80:                                               ; preds = %58, %67, %74
  %81 = phi i32 [ 1, %67 ], [ -1, %74 ], [ 0, %58 ]
  %82 = phi <2 x float> [ %73, %67 ], [ %79, %74 ], [ <float 1.000000e+00, float 0.000000e+00>, %58 ]
  %83 = extractelement <2 x float> %82, i64 0
  %84 = extractelement <2 x float> %60, i64 0
  %85 = fcmp olt float %84, %83
  %86 = select i1 %85, float %84, float %83
  %87 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 9
  %88 = extractelement <2 x float> %82, i64 1
  %89 = extractelement <2 x float> %60, i64 1
  br label %90

90:                                               ; preds = %124, %80
  %91 = phi i32 [ %17, %80 ], [ %125, %124 ]
  %92 = phi float [ %86, %80 ], [ %130, %124 ]
  %93 = phi i32 [ %13, %80 ], [ %126, %124 ]
  %94 = phi float [ %84, %80 ], [ %127, %124 ]
  %95 = phi float [ %83, %80 ], [ %128, %124 ]
  %96 = icmp slt i32 %93, 0
  %97 = icmp slt i32 %91, 0
  %98 = select i1 %96, i1 true, i1 %97
  br i1 %98, label %109, label %99

99:                                               ; preds = %90
  %100 = load i32, ptr %87, align 8, !tbaa !44
  %101 = icmp slt i32 %93, %100
  %102 = icmp slt i32 %91, %100
  %103 = select i1 %101, i1 %102, i1 false
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = mul nsw i32 %100, %93
  %106 = add nsw i32 %105, %91
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, ptr %5, i64 %107
  store i8 1, ptr %108, align 1, !tbaa !102
  br label %109

109:                                              ; preds = %90, %99, %104
  %110 = fcmp oeq float %94, %95
  br i1 %110, label %111, label %116

111:                                              ; preds = %109
  %112 = fadd float %89, %94
  %113 = add nsw i32 %93, %59
  %114 = fadd float %88, %95
  %115 = add nsw i32 %91, %81
  br label %124

116:                                              ; preds = %109
  %117 = fcmp olt float %94, %95
  br i1 %117, label %118, label %121

118:                                              ; preds = %116
  %119 = fadd float %89, %94
  %120 = add nsw i32 %93, %59
  br label %124

121:                                              ; preds = %116
  %122 = fadd float %88, %95
  %123 = add nsw i32 %91, %81
  br label %124

124:                                              ; preds = %118, %121, %111
  %125 = phi i32 [ %115, %111 ], [ %91, %118 ], [ %123, %121 ]
  %126 = phi i32 [ %113, %111 ], [ %120, %118 ], [ %93, %121 ]
  %127 = phi float [ %112, %111 ], [ %119, %118 ], [ %94, %121 ]
  %128 = phi float [ %114, %111 ], [ %95, %118 ], [ %122, %121 ]
  %129 = fcmp olt float %127, %128
  %130 = select i1 %129, float %127, float %128
  %131 = fcmp oeq float %130, %92
  %132 = fcmp oge float %130, 1.000000e+00
  %133 = or i1 %131, %132
  br i1 %133, label %134, label %90, !llvm.loop !117

134:                                              ; preds = %124, %28
  %135 = phi ptr [ %29, %28 ], [ %87, %124 ]
  %136 = phi i32 [ %13, %28 ], [ %21, %124 ]
  %137 = phi i32 [ %17, %28 ], [ %24, %124 ]
  %138 = load i32, ptr %135, align 8, !tbaa !44
  %139 = mul nsw i32 %138, %136
  %140 = add nsw i32 %139, %137
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, ptr %5, i64 %141
  store i8 1, ptr %142, align 1, !tbaa !102
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL12filltriangleP6OctreessPcPsS2_(ptr nocapture noundef readonly %0, i16 noundef signext %1, i16 noundef signext %2, ptr nocapture noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5) unnamed_addr #10 !PGOFuncName !118 {
  %7 = zext nneg i16 %1 to i64
  %8 = getelementptr inbounds i16, ptr %4, i64 %7
  %9 = load i16, ptr %8, align 2, !tbaa !57
  %10 = getelementptr inbounds i16, ptr %5, i64 %7
  %11 = load i16, ptr %10, align 2, !tbaa !57
  %12 = icmp sgt i16 %9, %11
  br i1 %12, label %107, label %13

13:                                               ; preds = %6
  %14 = sext i16 %9 to i32
  %15 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 9
  %16 = zext nneg i16 %2 to i64
  %17 = getelementptr inbounds i16, ptr %4, i64 %16
  %18 = getelementptr inbounds i16, ptr %5, i64 %16
  %19 = load i16, ptr %18, align 2, !tbaa !57
  br label %20

20:                                               ; preds = %13, %100
  %21 = phi i16 [ %11, %13 ], [ %101, %100 ]
  %22 = phi i16 [ %19, %13 ], [ %102, %100 ]
  %23 = phi i16 [ %19, %13 ], [ %103, %100 ]
  %24 = phi i32 [ %14, %13 ], [ %104, %100 ]
  %25 = load i32, ptr %15, align 8, !tbaa !44
  %26 = mul i32 %25, %24
  %27 = load i16, ptr %17, align 2, !tbaa !57
  %28 = icmp sgt i16 %27, %23
  br i1 %28, label %100, label %29

29:                                               ; preds = %20
  %30 = sext i16 %23 to i32
  %31 = sext i16 %27 to i32
  %32 = sext i32 %26 to i64
  %33 = add i32 %26, 1
  %34 = getelementptr i8, ptr %3, i64 %32
  br label %35

35:                                               ; preds = %29, %92
  %36 = phi i16 [ %93, %92 ], [ %22, %29 ]
  %37 = phi i16 [ %93, %92 ], [ %23, %29 ]
  %38 = phi i32 [ %96, %92 ], [ %30, %29 ]
  %39 = phi i32 [ %95, %92 ], [ %31, %29 ]
  %40 = add nsw i32 %39, %26
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, ptr %3, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !102
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %92, label %45

45:                                               ; preds = %35
  %46 = sext i32 %39 to i64
  br label %47

47:                                               ; preds = %45, %47
  %48 = phi i64 [ 0, %45 ], [ %57, %47 ]
  %49 = phi i64 [ %46, %45 ], [ %50, %47 ]
  %50 = add nsw i64 %49, 1
  %51 = getelementptr i8, ptr %34, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !102
  %53 = icmp eq i8 %52, 0
  %54 = trunc i64 %50 to i32
  %55 = icmp eq i32 %38, %54
  %56 = or i1 %53, %55
  %57 = add i64 %48, 1
  br i1 %56, label %58, label %47, !llvm.loop !119

58:                                               ; preds = %47
  %59 = trunc i64 %49 to i32
  %60 = icmp sgt i32 %38, %54
  br i1 %60, label %61, label %88

61:                                               ; preds = %58
  %62 = add i32 %33, %39
  %63 = sext i32 %62 to i64
  %64 = getelementptr i8, ptr %3, i64 %48
  %65 = getelementptr i8, ptr %64, i64 %63
  %66 = xor i32 %39, -1
  %67 = trunc i64 %48 to i32
  %68 = sub i32 %66, %67
  br label %69

69:                                               ; preds = %61, %82
  %70 = phi i32 [ %84, %82 ], [ %38, %61 ]
  %71 = add nsw i32 %70, %26
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, ptr %3, i64 %72
  %74 = load i8, ptr %73, align 1, !tbaa !102
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %69
  %77 = icmp sgt i32 %70, %59
  br i1 %77, label %78, label %82

78:                                               ; preds = %76
  %79 = add i32 %68, %70
  %80 = zext i32 %79 to i64
  %81 = add nuw nsw i64 %80, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %65, i8 1, i64 %81, i1 false), !tbaa !102
  br label %82

82:                                               ; preds = %78, %76, %69
  %83 = phi i32 [ %70, %69 ], [ 0, %76 ], [ 0, %78 ]
  %84 = add nsw i32 %83, -1
  %85 = icmp sgt i32 %84, %54
  br i1 %85, label %69, label %86, !llvm.loop !120

86:                                               ; preds = %82
  %87 = load i16, ptr %18, align 2, !tbaa !57
  br label %88

88:                                               ; preds = %86, %58
  %89 = phi i16 [ %87, %86 ], [ %36, %58 ]
  %90 = phi i16 [ %87, %86 ], [ %37, %58 ]
  %91 = sext i16 %90 to i32
  br label %92

92:                                               ; preds = %35, %88
  %93 = phi i16 [ %89, %88 ], [ %36, %35 ]
  %94 = phi i32 [ %91, %88 ], [ %39, %35 ]
  %95 = add nsw i32 %94, 1
  %96 = sext i16 %93 to i32
  %97 = icmp slt i32 %94, %96
  br i1 %97, label %35, label %98, !llvm.loop !121

98:                                               ; preds = %92
  %99 = load i16, ptr %10, align 2, !tbaa !57
  br label %100

100:                                              ; preds = %98, %20
  %101 = phi i16 [ %99, %98 ], [ %21, %20 ]
  %102 = phi i16 [ %93, %98 ], [ %22, %20 ]
  %103 = phi i16 [ %93, %98 ], [ %23, %20 ]
  %104 = add nsw i32 %24, 1
  %105 = sext i16 %101 to i32
  %106 = icmp slt i32 %24, %105
  br i1 %106, label %20, label %107, !llvm.loop !122

107:                                              ; preds = %100, %6
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc noundef zeroext i1 @_ZL12face_in_nodeP7RayFacesssPA3_f(ptr noundef readnone %0, i16 noundef signext %1, i16 noundef signext %2, i16 noundef signext %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !123 {
  %6 = icmp eq ptr %0, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds [3 x float], ptr %4, i64 1
  %9 = getelementptr inbounds [3 x float], ptr %4, i64 2
  %10 = tail call float @normal_tri_v3(ptr noundef nonnull @_ZZL12face_in_nodeP7RayFacesssPA3_fE3nor, ptr noundef %4, ptr noundef nonnull %8, ptr noundef nonnull %9) #13
  %11 = load float, ptr @_ZZL12face_in_nodeP7RayFacesssPA3_fE3nor, align 4, !tbaa !53
  %12 = fneg float %11
  %13 = load float, ptr %4, align 4, !tbaa !53
  %14 = load float, ptr getelementptr inbounds ([3 x float], ptr @_ZZL12face_in_nodeP7RayFacesssPA3_fE3nor, i64 0, i64 1), align 4, !tbaa !53
  %15 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !53
  %17 = fneg float %14
  %18 = fmul float %16, %17
  %19 = tail call float @llvm.fmuladd.f32(float %12, float %13, float %18)
  %20 = load float, ptr getelementptr inbounds ([3 x float], ptr @_ZZL12face_in_nodeP7RayFacesssPA3_fE3nor, i64 0, i64 2), align 4, !tbaa !53
  %21 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %22 = load float, ptr %21, align 4, !tbaa !53
  %23 = fneg float %20
  %24 = tail call float @llvm.fmuladd.f32(float %23, float %22, float %19)
  store float %24, ptr @_ZZL12face_in_nodeP7RayFacesssPA3_fE1d, align 4, !tbaa !53
  br label %105

25:                                               ; preds = %5
  %26 = sitofp i16 %1 to float
  %27 = sitofp i16 %2 to float
  %28 = sitofp i16 %3 to float
  %29 = load float, ptr @_ZZL12face_in_nodeP7RayFacesssPA3_fE3nor, align 4, !tbaa !53
  %30 = load float, ptr getelementptr inbounds ([3 x float], ptr @_ZZL12face_in_nodeP7RayFacesssPA3_fE3nor, i64 0, i64 1), align 4, !tbaa !53
  %31 = fmul float %30, %27
  %32 = tail call float @llvm.fmuladd.f32(float %26, float %29, float %31)
  %33 = load float, ptr getelementptr inbounds ([3 x float], ptr @_ZZL12face_in_nodeP7RayFacesssPA3_fE3nor, i64 0, i64 2), align 4, !tbaa !53
  %34 = tail call float @llvm.fmuladd.f32(float %28, float %33, float %32)
  %35 = load float, ptr @_ZZL12face_in_nodeP7RayFacesssPA3_fE1d, align 4, !tbaa !53
  %36 = fadd float %35, %34
  %37 = fcmp ogt float %36, 0.000000e+00
  %38 = fadd float %26, 1.000000e+00
  %39 = tail call float @llvm.fmuladd.f32(float %38, float %29, float %31)
  %40 = tail call float @llvm.fmuladd.f32(float %28, float %33, float %39)
  %41 = fadd float %35, %40
  br i1 %37, label %42, label %73

42:                                               ; preds = %25
  %43 = fcmp olt float %41, 0.000000e+00
  br i1 %43, label %105, label %44

44:                                               ; preds = %42
  %45 = fadd float %27, 1.000000e+00
  %46 = fmul float %45, %30
  %47 = tail call float @llvm.fmuladd.f32(float %26, float %29, float %46)
  %48 = tail call float @llvm.fmuladd.f32(float %28, float %33, float %47)
  %49 = fadd float %35, %48
  %50 = fcmp olt float %49, 0.000000e+00
  br i1 %50, label %105, label %51

51:                                               ; preds = %44
  %52 = tail call float @llvm.fmuladd.f32(float %38, float %29, float %46)
  %53 = tail call float @llvm.fmuladd.f32(float %28, float %33, float %52)
  %54 = fadd float %35, %53
  %55 = fcmp olt float %54, 0.000000e+00
  br i1 %55, label %105, label %56

56:                                               ; preds = %51
  %57 = fadd float %28, 1.000000e+00
  %58 = tail call float @llvm.fmuladd.f32(float %57, float %33, float %32)
  %59 = fadd float %35, %58
  %60 = fcmp olt float %59, 0.000000e+00
  br i1 %60, label %105, label %61

61:                                               ; preds = %56
  %62 = tail call float @llvm.fmuladd.f32(float %57, float %33, float %39)
  %63 = fadd float %35, %62
  %64 = fcmp olt float %63, 0.000000e+00
  br i1 %64, label %105, label %65

65:                                               ; preds = %61
  %66 = tail call float @llvm.fmuladd.f32(float %57, float %33, float %47)
  %67 = fadd float %35, %66
  %68 = fcmp olt float %67, 0.000000e+00
  br i1 %68, label %105, label %69

69:                                               ; preds = %65
  %70 = tail call float @llvm.fmuladd.f32(float %57, float %33, float %52)
  %71 = fadd float %35, %70
  %72 = fcmp olt float %71, 0.000000e+00
  br i1 %72, label %105, label %104

73:                                               ; preds = %25
  %74 = fcmp ogt float %41, 0.000000e+00
  br i1 %74, label %105, label %75

75:                                               ; preds = %73
  %76 = fadd float %27, 1.000000e+00
  %77 = fmul float %76, %30
  %78 = tail call float @llvm.fmuladd.f32(float %26, float %29, float %77)
  %79 = tail call float @llvm.fmuladd.f32(float %28, float %33, float %78)
  %80 = fadd float %35, %79
  %81 = fcmp ogt float %80, 0.000000e+00
  br i1 %81, label %105, label %82

82:                                               ; preds = %75
  %83 = tail call float @llvm.fmuladd.f32(float %38, float %29, float %77)
  %84 = tail call float @llvm.fmuladd.f32(float %28, float %33, float %83)
  %85 = fadd float %35, %84
  %86 = fcmp ogt float %85, 0.000000e+00
  br i1 %86, label %105, label %87

87:                                               ; preds = %82
  %88 = fadd float %28, 1.000000e+00
  %89 = tail call float @llvm.fmuladd.f32(float %88, float %33, float %32)
  %90 = fadd float %35, %89
  %91 = fcmp ogt float %90, 0.000000e+00
  br i1 %91, label %105, label %92

92:                                               ; preds = %87
  %93 = tail call float @llvm.fmuladd.f32(float %88, float %33, float %39)
  %94 = fadd float %35, %93
  %95 = fcmp ogt float %94, 0.000000e+00
  br i1 %95, label %105, label %96

96:                                               ; preds = %92
  %97 = tail call float @llvm.fmuladd.f32(float %88, float %33, float %78)
  %98 = fadd float %35, %97
  %99 = fcmp ogt float %98, 0.000000e+00
  br i1 %99, label %105, label %100

100:                                              ; preds = %96
  %101 = tail call float @llvm.fmuladd.f32(float %88, float %33, float %83)
  %102 = fadd float %35, %101
  %103 = fcmp ogt float %102, 0.000000e+00
  br i1 %103, label %105, label %104

104:                                              ; preds = %100, %69
  br label %105

105:                                              ; preds = %100, %96, %92, %87, %82, %75, %73, %69, %65, %61, %56, %51, %44, %42, %104, %7
  %106 = phi i1 [ false, %7 ], [ false, %104 ], [ true, %42 ], [ true, %44 ], [ true, %51 ], [ true, %56 ], [ true, %61 ], [ true, %65 ], [ true, %69 ], [ true, %73 ], [ true, %75 ], [ true, %82 ], [ true, %87 ], [ true, %92 ], [ true, %96 ], [ true, %100 ]
  ret i1 %106
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @_ZL6min_iiii(i32 noundef %0, i32 noundef %1) unnamed_addr #4 !PGOFuncName !124 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @_ZL6max_iiii(i32 noundef %0, i32 noundef %1) unnamed_addr #4 !PGOFuncName !125 {
  %3 = tail call i32 @llvm.smax.i32(i32 %1, i32 %0)
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc noundef ptr @_ZL9addbranchP6OctreeP6Branchs(ptr nocapture noundef %0, ptr nocapture noundef %1, i16 noundef signext %2) unnamed_addr #0 !PGOFuncName !126 {
  %4 = zext nneg i16 %2 to i64
  %5 = getelementptr inbounds [8 x ptr], ptr %1, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %38

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 10
  %10 = load i32, ptr %9, align 4, !tbaa !49
  %11 = add nsw i32 %10, 1
  store i32 %11, ptr %9, align 4, !tbaa !49
  %12 = ashr i32 %11, 12
  %13 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !64
  %15 = sext i32 %12 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %8
  %20 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %21 = tail call ptr %20(i64 noundef 262144, ptr noundef nonnull @.str.6) #13
  %22 = load ptr, ptr %13, align 8, !tbaa !64
  %23 = getelementptr inbounds ptr, ptr %22, i64 %15
  store ptr %21, ptr %23, align 8, !tbaa !34
  %24 = load i32, ptr %9, align 4, !tbaa !49
  br label %25

25:                                               ; preds = %19, %8
  %26 = phi i32 [ %24, %19 ], [ %11, %8 ]
  %27 = icmp sgt i32 %26, 4194303
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  store i32 0, ptr %9, align 4, !tbaa !49
  br label %30

30:                                               ; preds = %28, %25
  %31 = phi i32 [ 0, %28 ], [ %26, %25 ]
  %32 = load ptr, ptr %13, align 8, !tbaa !64
  %33 = getelementptr inbounds ptr, ptr %32, i64 %15
  %34 = load ptr, ptr %33, align 8, !tbaa !34
  %35 = and i32 %31, 4095
  %36 = zext nneg i32 %35 to i64
  %37 = getelementptr inbounds %struct.Branch, ptr %34, i64 %36
  store ptr %37, ptr %5, align 8, !tbaa !34
  br label %38

38:                                               ; preds = %3, %30
  %39 = phi ptr [ %37, %30 ], [ %6, %3 ]
  ret ptr %39
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc noundef ptr @_ZL7addnodeP6Octree(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !127 {
  %2 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 11
  %3 = load i32, ptr %2, align 8, !tbaa !73
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr %2, align 8, !tbaa !73
  %5 = ashr i32 %4, 12
  %6 = getelementptr inbounds %struct.Octree, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !65
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %7, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %14 = tail call ptr %13(i64 noundef 491520, ptr noundef nonnull @.str.8) #13
  %15 = load ptr, ptr %6, align 8, !tbaa !65
  %16 = getelementptr inbounds ptr, ptr %15, i64 %8
  store ptr %14, ptr %16, align 8, !tbaa !34
  %17 = load i32, ptr %2, align 8, !tbaa !73
  br label %18

18:                                               ; preds = %12, %1
  %19 = phi i32 [ %17, %12 ], [ %4, %1 ]
  %20 = icmp sgt i32 %19, 16777216
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.10)
  store i32 0, ptr %2, align 8, !tbaa !73
  br label %23

23:                                               ; preds = %21, %18
  %24 = phi i32 [ 0, %21 ], [ %19, %18 ]
  %25 = load ptr, ptr %6, align 8, !tbaa !65
  %26 = getelementptr inbounds ptr, ptr %25, i64 %8
  %27 = load ptr, ptr %26, align 8, !tbaa !34
  %28 = and i32 %24, 4095
  %29 = zext nneg i32 %28 to i64
  %30 = getelementptr inbounds %struct.Node, ptr %27, i64 %29
  ret ptr %30
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL15calc_ocval_facePfS_S_S_sssP5OcVal(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef readonly %3, i16 noundef signext %4, i16 noundef signext %5, i16 noundef signext %6, ptr nocapture noundef writeonly %7) unnamed_addr #3 !PGOFuncName !128 {
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #14
  call fastcc void @_ZL10copy_v3_v3PfPKf(ptr noundef nonnull %9, ptr noundef %0) #13
  call fastcc void @_ZL10copy_v3_v3PfPKf(ptr noundef nonnull %10, ptr noundef %0) #13
  %11 = load float, ptr %9, align 4, !tbaa !53
  %12 = load float, ptr %1, align 4, !tbaa !53
  %13 = fcmp ogt float %11, %12
  %14 = select i1 %13, float %12, float %11
  %15 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  %16 = getelementptr inbounds float, ptr %1, i64 1
  %17 = load <2 x float>, ptr %15, align 4, !tbaa !53
  %18 = load <2 x float>, ptr %16, align 4, !tbaa !53
  %19 = load <2 x float>, ptr %10, align 8, !tbaa !53
  %20 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %21 = load float, ptr %20, align 8, !tbaa !53
  %22 = extractelement <2 x float> %18, i64 1
  %23 = fcmp olt float %21, %22
  %24 = select i1 %23, float %22, float %21
  %25 = load float, ptr %2, align 4, !tbaa !53
  %26 = fcmp ogt float %14, %25
  %27 = select i1 %26, float %25, float %14
  %28 = getelementptr inbounds float, ptr %2, i64 1
  %29 = load <2 x float>, ptr %28, align 4, !tbaa !53
  %30 = shufflevector <2 x float> %17, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %31 = insertelement <4 x float> %30, float %12, i64 2
  %32 = shufflevector <2 x float> %18, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %33 = shufflevector <4 x float> %31, <4 x float> %32, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %34 = shufflevector <2 x float> %18, <2 x float> %19, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %35 = fcmp ogt <4 x float> %33, %34
  %36 = insertelement <4 x float> %32, float %12, i64 2
  %37 = shufflevector <4 x float> %36, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %38 = shufflevector <2 x float> %17, <2 x float> %19, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %39 = select <4 x i1> %35, <4 x float> %37, <4 x float> %38
  %40 = shufflevector <2 x float> %29, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %41 = insertelement <4 x float> %40, float %25, i64 2
  %42 = shufflevector <4 x float> %41, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %43 = fcmp ogt <4 x float> %39, %42
  %44 = fcmp olt <4 x float> %39, %42
  %45 = shufflevector <4 x i1> %43, <4 x i1> %44, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %46 = select <4 x i1> %45, <4 x float> %42, <4 x float> %39
  %47 = extractelement <2 x float> %29, i64 1
  %48 = fcmp olt float %24, %47
  %49 = select i1 %48, float %47, float %24
  %50 = icmp eq ptr %3, null
  br i1 %50, label %67, label %51

51:                                               ; preds = %8
  %52 = load float, ptr %3, align 4, !tbaa !53
  %53 = fcmp ogt float %27, %52
  %54 = select i1 %53, float %52, float %27
  %55 = getelementptr inbounds float, ptr %3, i64 1
  %56 = load <2 x float>, ptr %55, align 4, !tbaa !53
  %57 = shufflevector <2 x float> %56, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %58 = insertelement <4 x float> %57, float %52, i64 2
  %59 = shufflevector <4 x float> %58, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %60 = fcmp ogt <4 x float> %46, %59
  %61 = fcmp olt <4 x float> %46, %59
  %62 = shufflevector <4 x i1> %60, <4 x i1> %61, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %63 = select <4 x i1> %62, <4 x float> %59, <4 x float> %46
  %64 = extractelement <2 x float> %56, i64 1
  %65 = fcmp olt float %49, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %51
  br label %67

67:                                               ; preds = %51, %66, %8
  %68 = phi float [ %49, %51 ], [ %64, %66 ], [ %49, %8 ]
  %69 = phi float [ %54, %51 ], [ %54, %66 ], [ %27, %8 ]
  %70 = phi <4 x float> [ %63, %51 ], [ %63, %66 ], [ %46, %8 ]
  %71 = sitofp i16 %4 to float
  %72 = fsub float %69, %71
  %73 = fmul float %72, 1.500000e+01
  %74 = fptosi float %73 to i32
  %75 = extractelement <4 x float> %70, i64 2
  %76 = fsub float %75, %71
  %77 = fmul float %76, 1.500000e+01
  %78 = fptosi float %77 to i32
  %79 = icmp sgt i32 %78, 14
  %80 = add nsw i32 %78, 1
  %81 = shl nsw i32 -1, %80
  %82 = xor i32 %81, -1
  %83 = select i1 %79, i32 65535, i32 %82
  %84 = icmp sgt i32 %74, 0
  %85 = shl nsw i32 -1, %74
  %86 = add nsw i32 %85, 1
  %87 = select i1 %84, i32 %86, i32 0
  %88 = add i32 %83, %87
  %89 = trunc i32 %88 to i16
  store i16 %89, ptr %7, align 2, !tbaa !82
  %90 = insertelement <2 x i16> poison, i16 %6, i64 0
  %91 = insertelement <2 x i16> %90, i16 %5, i64 1
  %92 = sitofp <2 x i16> %91 to <2 x float>
  %93 = shufflevector <2 x float> %92, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %94 = getelementptr inbounds %struct.OcVal, ptr %7, i64 0, i32 1
  %95 = shufflevector <4 x float> %70, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 3>
  %96 = insertelement <4 x float> %95, float %68, i64 1
  %97 = fsub <4 x float> %96, %93
  %98 = fmul <4 x float> %97, <float 1.500000e+01, float 1.500000e+01, float 1.500000e+01, float 1.500000e+01>
  %99 = fptosi <4 x float> %98 to <4 x i32>
  %100 = extractelement <4 x i32> %99, i64 3
  %101 = add nsw i32 %100, 1
  %102 = shl nsw i32 -1, %101
  %103 = xor i32 %102, -1
  %104 = icmp sgt <4 x i32> %99, <i32 0, i32 14, i32 0, i32 14>
  %105 = extractelement <4 x i1> %104, i64 3
  %106 = select i1 %105, i32 65535, i32 %103
  %107 = extractelement <4 x i32> %99, i64 2
  %108 = shl nsw i32 -1, %107
  %109 = add nsw i32 %108, 1
  %110 = extractelement <4 x i1> %104, i64 2
  %111 = select i1 %110, i32 %109, i32 0
  %112 = add i32 %106, %111
  %113 = trunc i32 %112 to i16
  store i16 %113, ptr %94, align 2, !tbaa !84
  %114 = extractelement <4 x i32> %99, i64 1
  %115 = add nsw i32 %114, 1
  %116 = shl nsw i32 -1, %115
  %117 = xor i32 %116, -1
  %118 = extractelement <4 x i1> %104, i64 1
  %119 = select i1 %118, i32 65535, i32 %117
  %120 = extractelement <4 x i32> %99, i64 0
  %121 = shl nsw i32 -1, %120
  %122 = add nsw i32 %121, 1
  %123 = extractelement <4 x i1> %104, i64 0
  %124 = select i1 %123, i32 %122, i32 0
  %125 = add i32 %119, %124
  %126 = trunc i32 %125 to i16
  %127 = getelementptr inbounds %struct.OcVal, ptr %7, i64 0, i32 2
  store i16 %126, ptr %127, align 2, !tbaa !85
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #14
  ret void
}

; Function Attrs: optsize
declare float @normal_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #11

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nofree nounwind }
attributes #13 = { optsize }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!39, !35, i64 0}
!39 = !{!"_ZTS6Octree", !40, i64 0, !35, i64 24, !35, i64 32, !42, i64 40, !42, i64 44, !42, i64 48, !42, i64 52, !36, i64 56, !36, i64 68, !43, i64 80, !43, i64 84, !43, i64 88, !35, i64 96, !35, i64 104, !43, i64 112, !43, i64 116}
!40 = !{!"_ZTS9RayObject", !35, i64 0, !41, i64 8}
!41 = !{!"_ZTS16RayObjectControl", !35, i64 0, !35, i64 8}
!42 = !{!"float", !36, i64 0}
!43 = !{!"int", !36, i64 0}
!44 = !{!39, !43, i64 80}
!45 = !{!39, !35, i64 104}
!46 = !{!39, !43, i64 112}
!47 = !{!39, !43, i64 116}
!48 = !{!"rayobject_octree.cpp:_ZL29RE_rayobject_octree_intersectP9RayObjectP5Isect"}
!49 = !{!39, !43, i64 84}
!50 = !{!51, !42, i64 24}
!51 = !{!"_ZTS5Isect", !36, i64 0, !36, i64 12, !42, i64 24, !36, i64 28, !36, i64 40, !36, i64 52, !36, i64 76, !43, i64 88, !43, i64 92, !43, i64 96, !43, i64 100, !35, i64 104, !42, i64 112, !42, i64 116, !43, i64 120, !52, i64 128, !52, i64 144, !35, i64 160, !35, i64 168}
!52 = !{!"_ZTSN5IsectUt_E", !35, i64 0, !35, i64 8}
!53 = !{!42, !42, i64 0}
!54 = !{i32 0, i32 2}
!55 = !{!39, !42, i64 52}
!56 = !{i64 0, i64 2, !57, i64 2, i64 2, !57, i64 4, i64 2, !57}
!57 = !{!58, !58, i64 0}
!58 = !{!"short", !36, i64 0}
!59 = distinct !{!59, !60}
!60 = !{!"llvm.loop.mustprogress"}
!61 = !{!"rayobject_octree.cpp:_ZL23RE_rayobject_octree_addP9RayObjectS0_"}
!62 = !{!"rayobject_octree.cpp:_ZL24RE_rayobject_octree_doneP9RayObject"}
!63 = distinct !{!63, !60}
!64 = !{!39, !35, i64 24}
!65 = !{!39, !35, i64 32}
!66 = !{!39, !35, i64 96}
!67 = distinct !{!67, !60}
!68 = !{!39, !42, i64 40}
!69 = distinct !{!69, !60}
!70 = !{!"rayobject_octree.cpp:_ZL24RE_rayobject_octree_freeP9RayObject"}
!71 = distinct !{!71, !60}
!72 = distinct !{!72, !60}
!73 = !{!39, !43, i64 88}
!74 = !{!"rayobject_octree.cpp:_ZL22RE_rayobject_octree_bbP9RayObjectPfS1_"}
!75 = !{!"rayobject_octree.cpp:_ZL24RE_rayobject_octree_costP9RayObject"}
!76 = !{!"rayobject_octree.cpp:_ZL27RE_rayobject_octree_hint_bbP9RayObjectP7RayHintPfS3_"}
!77 = !{!"rayobject_octree.cpp:_ZL10copy_v3_v3PfPKf"}
!78 = !{!"rayobject_octree.cpp:_ZL14madd_v3_v3v3flPfPKfS1_f"}
!79 = !{!"rayobject_octree.cpp:_ZL8cliptestffPfS_"}
!80 = !{!"rayobject_octree.cpp:_ZL6ocreadP6Octreeiii"}
!81 = !{!"rayobject_octree.cpp:_ZL14calc_ocval_rayP5OcValfffPfS1_"}
!82 = !{!83, !58, i64 0}
!83 = !{!"_ZTS5OcVal", !58, i64 0, !58, i64 2, !58, i64 4}
!84 = !{!83, !58, i64 2}
!85 = !{!83, !58, i64 4}
!86 = !{!"rayobject_octree.cpp:_ZL8testnodeP6OctreeP5IsectP4Node5OcVal"}
!87 = !{!51, !43, i64 88}
!88 = distinct !{!88, !60}
!89 = !{!90, !35, i64 112}
!90 = !{!"_ZTS4Node", !36, i64 0, !36, i64 64, !35, i64 112}
!91 = distinct !{!91, !60}
!92 = distinct !{!92, !60}
!93 = distinct !{!93, !60}
!94 = !{!"rayobject_octree.cpp:_ZL7min_ffffff"}
!95 = !{!"rayobject_octree.cpp:_ZL6min_ffff"}
!96 = !{!"rayobject_octree.cpp:_ZL19octree_fill_rayfaceP6OctreeP7RayFace"}
!97 = !{!98, !43, i64 60}
!98 = !{!"_ZTS7RayFace", !36, i64 0, !36, i64 16, !36, i64 32, !36, i64 48, !43, i64 60, !35, i64 64, !35, i64 72}
!99 = distinct !{!99, !60}
!100 = !{i32 -32768, i32 32768}
!101 = distinct !{!101, !60}
!102 = !{!36, !36, i64 0}
!103 = distinct !{!103, !60}
!104 = distinct !{!104, !60}
!105 = distinct !{!105, !60}
!106 = distinct !{!106, !60}
!107 = distinct !{!107, !60}
!108 = distinct !{!108, !60}
!109 = !{!"rayobject_octree.cpp:_ZL7min_iiiiii"}
!110 = !{!"rayobject_octree.cpp:_ZL7max_iiiiii"}
!111 = !{!"rayobject_octree.cpp:_ZL8min_iiiiiiii"}
!112 = !{!"rayobject_octree.cpp:_ZL8max_iiiiiiii"}
!113 = !{!"rayobject_octree.cpp:_ZL7ocwriteP6OctreeP7RayFaceisssPA3_f"}
!114 = distinct !{!114, !60}
!115 = distinct !{!115, !60}
!116 = !{!"rayobject_octree.cpp:_ZL5d2ddaP6OctreessssPcPA3_sPA3_f"}
!117 = distinct !{!117, !60}
!118 = !{!"rayobject_octree.cpp:_ZL12filltriangleP6OctreessPcPsS2_"}
!119 = distinct !{!119, !60}
!120 = distinct !{!120, !60}
!121 = distinct !{!121, !60}
!122 = distinct !{!122, !60}
!123 = !{!"rayobject_octree.cpp:_ZL12face_in_nodeP7RayFacesssPA3_f"}
!124 = !{!"rayobject_octree.cpp:_ZL6min_iiii"}
!125 = !{!"rayobject_octree.cpp:_ZL6max_iiii"}
!126 = !{!"rayobject_octree.cpp:_ZL9addbranchP6OctreeP6Branchs"}
!127 = !{!"rayobject_octree.cpp:_ZL7addnodeP6Octree"}
!128 = !{!"rayobject_octree.cpp:_ZL15calc_ocval_facePfS_S_S_sssP5OcVal"}
