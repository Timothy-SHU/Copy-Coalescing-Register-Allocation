; ModuleID = 'blender/source/blender/modifiers/intern/MOD_warp.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_warp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.WarpModifierData = type { %struct.ModifierData, ptr, ptr, [64 x i8], i32, i32, ptr, ptr, ptr, [64 x i8], float, float, i8, i8, [6 x i8] }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.TexResult = type { float, float, float, float, float, i32, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.MDeformVert = type { ptr, i32, i32 }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }

@modifierType_Warp = dso_local local_unnamed_addr global %struct.ModifierTypeInfo { [32 x i8] c"Warp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"WarpModifierData\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 304, i32 1, i32 10, ptr @copyData, ptr @deformVerts, ptr null, ptr @deformVertsEM, ptr null, ptr null, ptr null, ptr @initData, ptr @requiredDataMask, ptr @freeData, ptr @isDisabled, ptr @updateDepgraph, ptr @dependsOnTime, ptr null, ptr @foreachObjectLink, ptr @foreachIDLink, ptr @foreachTexLink }, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"warpModifier_do tex_co\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"Warp Modifier1\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Warp Modifier2\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Warp Modifier3\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"texture\00", align 1

; Function Attrs: nounwind uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @modifier_copyData_generic(ptr noundef %0, ptr noundef %1) #6
  %3 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call ptr @curvemapping_copy(ptr noundef %4) #6
  %6 = getelementptr inbounds %struct.WarpModifierData, ptr %1, i64 0, i32 8
  store ptr %5, ptr %6, align 8, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @deformVerts(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 %5) #0 {
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca [4 x [4 x float]], align 16
  %10 = alloca [4 x [4 x float]], align 16
  %11 = alloca [4 x [4 x float]], align 16
  %12 = alloca [4 x [4 x float]], align 16
  %13 = alloca [4 x [4 x float]], align 16
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 8
  %16 = alloca %struct.TexResult, align 8
  %17 = alloca [3 x float], align 4
  %18 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !42
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %6
  %22 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 9
  %23 = load i8, ptr %22, align 8, !tbaa !43
  %24 = icmp eq i8 %23, 0
  br label %25

25:                                               ; preds = %6, %21
  %26 = phi i1 [ false, %6 ], [ %24, %21 ]
  br i1 %26, label %29, label %27

27:                                               ; preds = %25
  %28 = tail call ptr @get_cddm(ptr noundef %1, ptr noundef null, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 0) #6
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi ptr [ %28, %27 ], [ null, %25 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %13) #6
  %31 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 10
  %32 = load float, ptr %31, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #6
  %33 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !45
  %35 = icmp eq ptr %34, null
  br i1 %35, label %194, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 7
  %38 = load ptr, ptr %37, align 8, !tbaa !46
  %39 = icmp eq ptr %38, null
  br i1 %39, label %194, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 9
  call void @modifier_get_vgroup(ptr noundef %1, ptr noundef %30, ptr noundef nonnull %41, ptr noundef nonnull %15, ptr noundef nonnull %14) #6
  %42 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 8
  %43 = load ptr, ptr %42, align 8, !tbaa !34
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = call ptr @curvemapping_add(i32 noundef 1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #6
  store ptr %46, ptr %42, align 8, !tbaa !34
  br label %47

47:                                               ; preds = %45, %40
  %48 = load ptr, ptr %42, align 8, !tbaa !34
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  call void @curvemapping_initialize(ptr noundef nonnull %48) #6
  br label %51

51:                                               ; preds = %50, %47
  %52 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %53 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %7, ptr noundef nonnull %52) #6
  %54 = load ptr, ptr %33, align 8, !tbaa !45
  %55 = getelementptr inbounds %struct.Object, ptr %54, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %55) #6
  %56 = load ptr, ptr %37, align 8, !tbaa !46
  %57 = getelementptr inbounds %struct.Object, ptr %56, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %10, ptr noundef nonnull %7, ptr noundef nonnull %57) #6
  %58 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %13, ptr noundef nonnull %8) #6
  call void @mul_m4_m4m4(ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %10) #6
  %59 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %9, ptr noundef nonnull %8) #6
  call void @unit_m4(ptr noundef nonnull %11) #6
  %60 = fcmp olt float %32, 0.000000e+00
  br i1 %60, label %61, label %73

61:                                               ; preds = %51
  %62 = fneg float %32
  %63 = getelementptr inbounds [4 x [4 x float]], ptr %12, i64 0, i64 3
  %64 = load float, ptr %63, align 16, !tbaa !47
  %65 = getelementptr inbounds [4 x [4 x float]], ptr %12, i64 0, i64 3, i64 1
  %66 = load float, ptr %65, align 4, !tbaa !47
  %67 = getelementptr inbounds [4 x [4 x float]], ptr %12, i64 0, i64 3, i64 2
  %68 = load float, ptr %67, align 8, !tbaa !47
  %69 = call zeroext i8 @invert_m4(ptr noundef nonnull %12) #6
  %70 = fneg float %64
  store float %70, ptr %63, align 16, !tbaa !47
  %71 = fneg float %66
  store float %71, ptr %65, align 4, !tbaa !47
  %72 = fneg float %68
  store float %72, ptr %67, align 8, !tbaa !47
  br label %73

73:                                               ; preds = %61, %51
  %74 = phi float [ %62, %61 ], [ %32, %51 ]
  %75 = load ptr, ptr %18, align 8, !tbaa !42
  %76 = icmp eq ptr %75, null
  br i1 %76, label %85, label %77

77:                                               ; preds = %73
  %78 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !48
  %79 = sext i32 %4 to i64
  %80 = mul nsw i64 %79, 12
  %81 = call ptr %78(i64 noundef %80, ptr noundef nonnull @.str) #6
  call void @get_texture_coords(ptr noundef %0, ptr noundef %1, ptr noundef %30, ptr noundef %3, ptr noundef %81, i32 noundef %4) #6
  %82 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 7
  %83 = load ptr, ptr %82, align 8, !tbaa !49
  %84 = load ptr, ptr %18, align 8, !tbaa !42
  call void @modifier_init_texture(ptr noundef %83, ptr noundef %84) #6
  br label %85

85:                                               ; preds = %77, %73
  %86 = phi ptr [ %81, %77 ], [ null, %73 ]
  %87 = icmp sgt i32 %4, 0
  br i1 %87, label %88, label %190

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 13
  %90 = getelementptr inbounds [4 x [4 x float]], ptr %8, i64 0, i64 3
  %91 = getelementptr inbounds [4 x [4 x float]], ptr %8, i64 0, i64 3, i64 1
  %92 = getelementptr inbounds [4 x [4 x float]], ptr %8, i64 0, i64 3, i64 2
  %93 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 11
  %94 = icmp eq ptr %86, null
  %95 = getelementptr inbounds %struct.TexResult, ptr %16, i64 0, i32 6
  %96 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 7
  %97 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 12
  %98 = zext nneg i32 %4 to i64
  br label %99

99:                                               ; preds = %88, %185
  %100 = phi i64 [ 0, %88 ], [ %188, %185 ]
  %101 = phi float [ %74, %88 ], [ %187, %185 ]
  %102 = phi float [ 1.000000e+00, %88 ], [ %186, %185 ]
  %103 = getelementptr inbounds [3 x float], ptr %3, i64 %100
  %104 = load i8, ptr %89, align 1, !tbaa !50
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %128, label %106

106:                                              ; preds = %99
  %107 = load float, ptr %90, align 16, !tbaa !47
  %108 = load float, ptr %103, align 4, !tbaa !47
  %109 = fsub float %107, %108
  %110 = load float, ptr %91, align 4, !tbaa !47
  %111 = getelementptr inbounds float, ptr %103, i64 1
  %112 = load float, ptr %111, align 4, !tbaa !47
  %113 = fsub float %110, %112
  %114 = load float, ptr %92, align 8, !tbaa !47
  %115 = getelementptr inbounds float, ptr %103, i64 2
  %116 = load float, ptr %115, align 4, !tbaa !47
  %117 = fsub float %114, %116
  %118 = fmul float %113, %113
  %119 = call float @llvm.fmuladd.f32(float %109, float %109, float %118)
  %120 = call float @llvm.fmuladd.f32(float %117, float %117, float %119)
  %121 = call float @sqrtf(float noundef %120) #6
  %122 = load float, ptr %93, align 4, !tbaa !51
  %123 = fcmp olt float %121, %122
  br i1 %123, label %124, label %185

124:                                              ; preds = %106
  %125 = fsub float %122, %121
  %126 = fdiv float %125, %122
  %127 = fcmp une float %126, 0.000000e+00
  br i1 %127, label %128, label %185

128:                                              ; preds = %124, %99
  %129 = phi float [ %102, %99 ], [ %126, %124 ]
  %130 = load ptr, ptr %15, align 8, !tbaa !48
  %131 = icmp ne ptr %130, null
  %132 = load i32, ptr %14, align 4
  %133 = icmp ne i32 %132, -1
  %134 = select i1 %131, i1 %133, i1 false
  br i1 %134, label %135, label %140

135:                                              ; preds = %128
  %136 = getelementptr inbounds %struct.MDeformVert, ptr %130, i64 %100
  %137 = call float @defvert_find_weight(ptr noundef nonnull %136, i32 noundef %132) #6
  %138 = fmul float %74, %137
  %139 = fcmp ugt float %138, 0.000000e+00
  br i1 %139, label %140, label %185

140:                                              ; preds = %135, %128
  %141 = phi float [ %138, %135 ], [ %101, %128 ]
  %142 = load i8, ptr %89, align 1, !tbaa !50
  switch i8 %142, label %163 [
    i8 0, label %143
    i8 1, label %144
    i8 2, label %147
    i8 3, label %149
    i8 4, label %155
    i8 7, label %158
    i8 6, label %157
  ]

143:                                              ; preds = %140
  br label %163

144:                                              ; preds = %140
  %145 = load ptr, ptr %42, align 8, !tbaa !34
  %146 = call float @curvemapping_evaluateF(ptr noundef %145, i32 noundef 0, float noundef %129) #6
  br label %163

147:                                              ; preds = %140
  %148 = fmul float %129, %129
  br label %163

149:                                              ; preds = %140
  %150 = fmul float %129, 3.000000e+00
  %151 = fmul float %129, -2.000000e+00
  %152 = fmul float %129, %151
  %153 = fmul float %129, %152
  %154 = call float @llvm.fmuladd.f32(float %150, float %129, float %153)
  br label %163

155:                                              ; preds = %140
  %156 = call float @sqrtf(float noundef %129) #6
  br label %163

157:                                              ; preds = %140
  br label %163

158:                                              ; preds = %140
  %159 = fneg float %129
  %160 = fmul float %129, %159
  %161 = call float @llvm.fmuladd.f32(float %129, float 2.000000e+00, float %160)
  %162 = call float @sqrtf(float noundef %161) #6
  br label %163

163:                                              ; preds = %158, %157, %155, %149, %147, %144, %143, %140
  %164 = phi float [ %129, %140 ], [ 1.000000e+00, %157 ], [ %162, %158 ], [ %156, %155 ], [ %154, %149 ], [ %148, %147 ], [ %146, %144 ], [ 1.000000e+00, %143 ]
  %165 = fmul float %141, %164
  br i1 %94, label %172, label %166

166:                                              ; preds = %163
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %16) #6
  store ptr null, ptr %95, align 8, !tbaa !52
  %167 = load ptr, ptr %96, align 8, !tbaa !49
  %168 = load ptr, ptr %18, align 8, !tbaa !42
  %169 = getelementptr inbounds [3 x float], ptr %86, i64 %100
  call void @BKE_texture_get_value(ptr noundef %167, ptr noundef %168, ptr noundef nonnull %169, ptr noundef nonnull %16, i8 noundef zeroext 0) #6
  %170 = load float, ptr %16, align 8, !tbaa !54
  %171 = fmul float %165, %170
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #6
  br label %172

172:                                              ; preds = %166, %163
  %173 = phi float [ %171, %166 ], [ %165, %163 ]
  call void @mul_m4_v3(ptr noundef nonnull %9, ptr noundef %103) #6
  %174 = fcmp ult float %173, 1.000000e+00
  br i1 %174, label %176, label %175

175:                                              ; preds = %172
  call void @mul_m4_v3(ptr noundef nonnull %12, ptr noundef %103) #6
  br label %184

176:                                              ; preds = %172
  %177 = fcmp ogt float %173, 0.000000e+00
  br i1 %177, label %178, label %184

178:                                              ; preds = %176
  %179 = load i8, ptr %97, align 8, !tbaa !55
  %180 = and i8 %179, 1
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %183, label %182

182:                                              ; preds = %178
  call void @blend_m4_m4m4(ptr noundef nonnull %13, ptr noundef nonnull %11, ptr noundef nonnull %12, float noundef %173) #6
  call void @mul_m4_v3(ptr noundef nonnull %13, ptr noundef %103) #6
  br label %184

183:                                              ; preds = %178
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #6
  call void @mul_v3_m4v3(ptr noundef nonnull %17, ptr noundef nonnull %12, ptr noundef %103) #6
  call void @interp_v3_v3v3(ptr noundef %103, ptr noundef %103, ptr noundef nonnull %17, float noundef %173) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #6
  br label %184

184:                                              ; preds = %183, %182, %176, %175
  call void @mul_m4_v3(ptr noundef nonnull %8, ptr noundef %103) #6
  br label %185

185:                                              ; preds = %184, %135, %124, %106
  %186 = phi float [ %129, %135 ], [ %173, %184 ], [ %126, %124 ], [ %121, %106 ]
  %187 = phi float [ %138, %135 ], [ %141, %184 ], [ %101, %124 ], [ %101, %106 ]
  %188 = add nuw nsw i64 %100, 1
  %189 = icmp eq i64 %188, %98
  br i1 %189, label %190, label %99, !llvm.loop !56

190:                                              ; preds = %185, %85
  %191 = icmp eq ptr %86, null
  br i1 %191, label %194, label %192

192:                                              ; preds = %190
  %193 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  call void %193(ptr noundef nonnull %86) #6
  br label %194

194:                                              ; preds = %29, %36, %190, %192
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #6
  %195 = icmp eq ptr %30, %2
  %196 = or i1 %26, %195
  br i1 %196, label %200, label %197

197:                                              ; preds = %194
  %198 = getelementptr inbounds %struct.DerivedMesh, ptr %30, i64 0, i32 95
  %199 = load ptr, ptr %198, align 8, !tbaa !59
  call void %199(ptr noundef %30) #6
  br label %200

200:                                              ; preds = %197, %194
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @deformVertsEM(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !42
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 9
  %12 = load i8, ptr %11, align 8, !tbaa !43
  %13 = icmp eq i8 %12, 0
  br label %14

14:                                               ; preds = %6, %10
  %15 = phi i1 [ false, %6 ], [ %13, %10 ]
  %16 = icmp ne ptr %3, null
  %17 = or i1 %16, %15
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = tail call ptr @CDDM_from_editbmesh(ptr noundef %2, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  br label %20

20:                                               ; preds = %18, %14
  %21 = phi ptr [ %3, %14 ], [ %19, %18 ]
  tail call void @deformVerts(ptr noundef %0, ptr noundef %1, ptr noundef %21, ptr noundef %4, i32 noundef %5, i32 poison)
  br i1 %17, label %25, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.DerivedMesh, ptr %21, i64 0, i32 95
  %24 = load ptr, ptr %23, align 8, !tbaa !59
  tail call void %24(ptr noundef %21) #6
  br label %25

25:                                               ; preds = %22, %20
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @initData(ptr nocapture noundef writeonly %0) #0 {
  %2 = tail call ptr @curvemapping_add(i32 noundef 1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #6
  %3 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 8
  store ptr %2, ptr %3, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 1
  store ptr null, ptr %4, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 10
  store float 1.000000e+00, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 11
  store float 1.000000e+00, ptr %6, align 4, !tbaa !51
  %7 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 13
  store i8 3, ptr %7, align 1, !tbaa !50
  %8 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 12
  store i8 0, ptr %8, align 8, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i64 @requiredDataMask(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.WarpModifierData, ptr %1, i64 0, i32 5
  %4 = load i32, ptr %3, align 4, !tbaa !62
  %5 = icmp eq i32 %4, 3
  %6 = select i1 %5, i64 36, i64 4
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define internal void @freeData(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  tail call void @curvemapping_free(ptr noundef %3) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal zeroext i8 @isDisabled(ptr nocapture noundef readonly %0, i32 %1) #1 {
  %3 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = icmp eq ptr %8, null
  %10 = zext i1 %9 to i8
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i8 [ 1, %2 ], [ %10, %6 ]
  ret i8 %12
}

; Function Attrs: nounwind uwtable
define internal void @updateDepgraph(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr noundef %4) #0 {
  %6 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = tail call ptr @dag_get_node(ptr noundef %1, ptr noundef nonnull %7) #6
  %15 = load ptr, ptr %10, align 8, !tbaa !46
  %16 = tail call ptr @dag_get_node(ptr noundef %1, ptr noundef %15) #6
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %14, ptr noundef %4, i16 noundef signext 40, ptr noundef nonnull @.str.1) #6
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %16, ptr noundef %4, i16 noundef signext 40, ptr noundef nonnull @.str.2) #6
  br label %17

17:                                               ; preds = %13, %9, %5
  %18 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 5
  %19 = load i32, ptr %18, align 4, !tbaa !62
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !63
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = tail call ptr @dag_get_node(ptr noundef %1, ptr noundef nonnull %23) #6
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %26, ptr noundef %4, i16 noundef signext 40, ptr noundef nonnull @.str.3) #6
  br label %27

27:                                               ; preds = %25, %21, %17
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @dependsOnTime(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call zeroext i8 @BKE_texture_dependsOnTime(ptr noundef nonnull %3) #6
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i8 [ %6, %5 ], [ 0, %1 ]
  ret i8 %8
}

; Function Attrs: nounwind uwtable
define internal void @foreachObjectLink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 6
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %5) #6
  %6 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 7
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %6) #6
  %7 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 2
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %7) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @foreachIDLink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 1
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %5) #6
  %6 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 6
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %6) #6
  %7 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 7
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %7) #6
  %8 = getelementptr inbounds %struct.WarpModifierData, ptr %0, i64 0, i32 2
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %8) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @foreachTexLink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef %0, ptr noundef nonnull @.str.4) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare void @modifier_copyData_generic(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @curvemapping_copy(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare ptr @get_cddm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @modifier_get_vgroup(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @curvemapping_add(i32 noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

declare void @curvemapping_initialize(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @unit_m4(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @invert_m4(ptr noundef) local_unnamed_addr #3

declare void @get_texture_coords(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @modifier_init_texture(ptr noundef, ptr noundef) local_unnamed_addr #3

declare float @defvert_find_weight(ptr noundef, i32 noundef) local_unnamed_addr #3

declare float @curvemapping_evaluateF(ptr noundef, i32 noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #5

declare void @BKE_texture_get_value(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @blend_m4_m4m4(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

declare ptr @CDDM_from_editbmesh(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

declare void @curvemapping_free(ptr noundef) local_unnamed_addr #3

declare ptr @dag_get_node(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dag_add_relation(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BKE_texture_dependsOnTime(ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

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
!34 = !{!35, !37, i64 216}
!35 = !{!"WarpModifierData", !36, i64 0, !37, i64 112, !37, i64 120, !38, i64 128, !40, i64 192, !40, i64 196, !37, i64 200, !37, i64 208, !37, i64 216, !38, i64 224, !41, i64 288, !41, i64 292, !38, i64 296, !38, i64 297, !38, i64 298}
!36 = !{!"ModifierData", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !38, i64 32, !37, i64 96, !37, i64 104}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"float", !38, i64 0}
!42 = !{!35, !37, i64 112}
!43 = !{!38, !38, i64 0}
!44 = !{!35, !41, i64 288}
!45 = !{!35, !37, i64 200}
!46 = !{!35, !37, i64 208}
!47 = !{!41, !41, i64 0}
!48 = !{!37, !37, i64 0}
!49 = !{!35, !37, i64 96}
!50 = !{!35, !38, i64 297}
!51 = !{!35, !41, i64 292}
!52 = !{!53, !37, i64 24}
!53 = !{!"TexResult", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !40, i64 20, !37, i64 24}
!54 = !{!53, !41, i64 0}
!55 = !{!35, !38, i64 296}
!56 = distinct !{!56, !57, !58}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!"llvm.loop.unroll.disable"}
!59 = !{!60, !37, i64 1680}
!60 = !{!"DerivedMesh", !61, i64 0, !61, i64 200, !61, i64 400, !61, i64 600, !61, i64 800, !40, i64 1000, !40, i64 1004, !40, i64 1008, !40, i64 1012, !40, i64 1016, !40, i64 1020, !40, i64 1024, !37, i64 1032, !37, i64 1040, !40, i64 1048, !41, i64 1052, !40, i64 1056, !40, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!61 = !{!"CustomData", !37, i64 0, !38, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !37, i64 184, !37, i64 192}
!62 = !{!35, !40, i64 196}
!63 = !{!35, !37, i64 120}
