; ModuleID = 'blender/source/blender/modifiers/intern/MOD_screw.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_screw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ScrewModifierData = type { %struct.ModifierData, ptr, i32, i32, i32, float, float, i8, i8, i16 }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.MEdge = type { i32, i32, i8, i8, i16 }
%struct.MPoly = type { i32, i32, i16, i8, i8 }
%struct.MLoop = type { i32, i32 }
%struct.ScrewVertConnect = type { float, [3 x float], [3 x float], [2 x i32], [2 x ptr], i8 }
%struct.MLoopUV = type { [2 x float], i32 }

@modifierType_Screw = dso_local local_unnamed_addr global %struct.ModifierTypeInfo { [32 x i8] c"Screw\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ScrewModifierData\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 144, i32 2, i32 27, ptr @copyData, ptr null, ptr null, ptr null, ptr null, ptr @applyModifier, ptr null, ptr @initData, ptr null, ptr null, ptr null, ptr @updateDepgraph, ptr null, ptr null, ptr @foreachObjectLink, ptr null, ptr null }, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.applyModifier = private unnamed_addr constant [14 x i8] c"applyModifier\00", align 1
@.str = private unnamed_addr constant [17 x i8] c"ScrewVertConnect\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"Screw Modifier\00", align 1

; Function Attrs: nounwind uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @modifier_copyData_generic(ptr noundef %0, ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @applyModifier(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca [4 x float], align 16
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x [3 x float]], align 16
  %10 = alloca [4 x [4 x float]], align 16
  %11 = alloca [4 x [4 x float]], align 16
  %12 = alloca [4 x [4 x float]], align 16
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x float], align 4
  %17 = alloca [4 x [4 x float]], align 16
  %18 = and i32 %3, 1
  %19 = icmp eq i32 %18, 0
  %20 = getelementptr inbounds %struct.ScrewModifierData, ptr %0, i64 0, i32 3
  %21 = getelementptr inbounds %struct.ScrewModifierData, ptr %0, i64 0, i32 2
  %22 = select i1 %19, ptr %21, ptr %20
  %23 = load i32, ptr %22, align 4, !tbaa !34
  %24 = getelementptr inbounds %struct.ScrewModifierData, ptr %0, i64 0, i32 9
  %25 = load i16, ptr %24, align 2, !tbaa !38
  %26 = and i16 %25, 1
  %27 = icmp eq i16 %26, 0
  %28 = select i1 %27, i32 0, i32 3
  %29 = select i1 %27, i32 1, i32 2
  %30 = select i1 %27, i32 2, i32 1
  %31 = select i1 %27, i32 3, i32 0
  %32 = shl nuw nsw i16 %26, 1
  %33 = xor i16 %32, 2
  %34 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 23
  %35 = load ptr, ptr %34, align 8, !tbaa !44
  %36 = tail call i32 %35(ptr noundef %2) #8
  %37 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 24
  %38 = load ptr, ptr %37, align 8, !tbaa !47
  %39 = tail call i32 %38(ptr noundef %2) #8
  %40 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 27
  %41 = load ptr, ptr %40, align 8, !tbaa !48
  %42 = tail call i32 %41(ptr noundef %2) #8
  %43 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 3
  %44 = tail call i32 @CustomData_number_of_layers(ptr noundef nonnull %43, i32 noundef 16) #8
  %45 = zext i32 %44 to i64
  %46 = shl nuw nsw i64 %45, 3
  %47 = alloca i8, i64 %46, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8
  %48 = getelementptr inbounds %struct.ScrewModifierData, ptr %0, i64 0, i32 6
  %49 = load float, ptr %48, align 8, !tbaa !49
  %50 = getelementptr inbounds %struct.ScrewModifierData, ptr %0, i64 0, i32 5
  %51 = load float, ptr %50, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #8
  %52 = load i16, ptr %24, align 2, !tbaa !38
  %53 = trunc i16 %52 to i8
  %54 = lshr i8 %53, 5
  %55 = and i8 %54, 1
  %56 = icmp eq i32 %36, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %4
  %58 = tail call ptr @CDDM_from_template(ptr noundef %2, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  br label %1439

59:                                               ; preds = %4
  %60 = getelementptr inbounds %struct.ScrewModifierData, ptr %0, i64 0, i32 7
  %61 = load i8, ptr %60, align 4, !tbaa !51
  switch i8 %61, label %63 [
    i8 0, label %64
    i8 1, label %62
  ]

62:                                               ; preds = %59
  br label %64

63:                                               ; preds = %59
  br label %64

64:                                               ; preds = %59, %63, %62
  %65 = phi i64 [ 1, %63 ], [ 2, %62 ], [ 2, %59 ]
  %66 = phi i64 [ 0, %63 ], [ 0, %62 ], [ 1, %59 ]
  %67 = zext i8 %61 to i64
  %68 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 %67
  store float 1.000000e+00, ptr %68, align 4, !tbaa !52
  %69 = getelementptr inbounds %struct.ScrewModifierData, ptr %0, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !53
  %71 = icmp eq ptr %70, null
  br i1 %71, label %115, label %72

72:                                               ; preds = %64
  %73 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %74 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %12, ptr noundef nonnull %73) #8
  %75 = load ptr, ptr %69, align 8, !tbaa !53
  %76 = getelementptr inbounds %struct.Object, ptr %75, i64 0, i32 47
  call void @copy_m4_m4(ptr noundef nonnull %11, ptr noundef nonnull %76) #8
  call void @mul_m4_m4m4(ptr noundef nonnull %10, ptr noundef nonnull %12, ptr noundef nonnull %11) #8
  call void @mul_mat3_m4_v3(ptr noundef nonnull %10, ptr noundef nonnull %6) #8
  %77 = load float, ptr %6, align 4, !tbaa !52
  %78 = getelementptr inbounds float, ptr %6, i64 1
  %79 = load float, ptr %78, align 4, !tbaa !52
  %80 = fmul float %79, %79
  %81 = call float @llvm.fmuladd.f32(float %77, float %77, float %80)
  %82 = getelementptr inbounds float, ptr %6, i64 2
  %83 = load float, ptr %82, align 4, !tbaa !52
  %84 = call float @llvm.fmuladd.f32(float %83, float %83, float %81)
  %85 = fcmp ogt float %84, 0x38AA95A5C0000000
  br i1 %85, label %86, label %95

86:                                               ; preds = %72
  %87 = call float @sqrtf(float noundef %84) #8
  %88 = fdiv float 1.000000e+00, %87
  %89 = load float, ptr %6, align 4, !tbaa !52
  %90 = fmul float %89, %88
  store float %90, ptr %6, align 4, !tbaa !52
  %91 = load float, ptr %78, align 4, !tbaa !52
  %92 = fmul float %88, %91
  store float %92, ptr %78, align 4, !tbaa !52
  %93 = load float, ptr %82, align 4, !tbaa !52
  %94 = fmul float %88, %93
  br label %96

95:                                               ; preds = %72
  store float 0.000000e+00, ptr %6, align 4, !tbaa !52
  store float 0.000000e+00, ptr %78, align 4, !tbaa !52
  br label %96

96:                                               ; preds = %86, %95
  %97 = phi float [ 0.000000e+00, %95 ], [ %94, %86 ]
  store float %97, ptr %82, align 4, !tbaa !52
  %98 = load i16, ptr %24, align 2, !tbaa !38
  %99 = and i16 %98, 4
  %100 = icmp eq i16 %99, 0
  br i1 %100, label %119, label %101

101:                                              ; preds = %96
  %102 = getelementptr inbounds [4 x [4 x float]], ptr %10, i64 0, i64 3
  %103 = load float, ptr %102, align 16, !tbaa !52
  %104 = getelementptr inbounds [4 x [4 x float]], ptr %10, i64 0, i64 3, i64 1
  %105 = load float, ptr %104, align 4, !tbaa !52
  %106 = fmul float %105, %105
  %107 = call float @llvm.fmuladd.f32(float %103, float %103, float %106)
  %108 = getelementptr inbounds [4 x [4 x float]], ptr %10, i64 0, i64 3, i64 2
  %109 = load float, ptr %108, align 8, !tbaa !52
  %110 = call float @llvm.fmuladd.f32(float %109, float %109, float %107)
  %111 = call float @sqrtf(float noundef %110) #8
  %112 = fcmp une float %111, 0.000000e+00
  br i1 %112, label %113, label %119

113:                                              ; preds = %101
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %13, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #8
  %114 = call float @closest_to_line_v3(ptr noundef nonnull %14, ptr noundef nonnull %102, ptr noundef nonnull %13, ptr noundef nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #8
  br label %119

115:                                              ; preds = %64
  %116 = add i8 %61, 88
  store float 0.000000e+00, ptr %6, align 4, !tbaa !52
  %117 = getelementptr inbounds float, ptr %6, i64 1
  store float 0.000000e+00, ptr %117, align 4, !tbaa !52
  %118 = getelementptr inbounds float, ptr %6, i64 2
  store float 0.000000e+00, ptr %118, align 4, !tbaa !52
  store float 1.000000e+00, ptr %68, align 4, !tbaa !52
  br label %119

119:                                              ; preds = %113, %101, %96, %115
  %120 = phi float [ %51, %96 ], [ %51, %115 ], [ %114, %113 ], [ 0.000000e+00, %101 ]
  %121 = phi i8 [ 88, %96 ], [ %116, %115 ], [ 88, %113 ], [ 88, %101 ]
  %122 = getelementptr inbounds %struct.ScrewModifierData, ptr %0, i64 0, i32 4
  %123 = load i32, ptr %122, align 8, !tbaa !54
  %124 = uitofp i32 %123 to float
  %125 = fmul float %49, %124
  %126 = fmul float %120, %124
  %127 = uitofp i32 %23 to float
  %128 = fdiv float 1.000000e+00, %127
  %129 = mul i32 %123, %23
  %130 = add i32 %129, 1
  %131 = call float @llvm.fabs.f32(float %126)
  %132 = fcmp ugt float %131, 0x3EE9000000000000
  br i1 %132, label %143, label %133

133:                                              ; preds = %119
  %134 = call float @llvm.fabs.f32(float %125)
  %135 = fadd float %134, 0xC01921FB60000000
  %136 = call float @llvm.fabs.f32(float %135)
  %137 = fcmp ugt float %136, 0x3EE9000000000000
  br i1 %137, label %143, label %138

138:                                              ; preds = %133
  %139 = call i32 @llvm.umax.i32(i32 %129, i32 3)
  %140 = mul i32 %139, %36
  %141 = mul i32 %139, %39
  %142 = add i32 %140, %141
  br label %151

143:                                              ; preds = %133, %119
  %144 = call i32 @llvm.umax.i32(i32 %130, i32 3)
  %145 = mul i32 %144, %36
  %146 = add i32 %144, -1
  %147 = mul i32 %146, %36
  %148 = mul i32 %144, %39
  %149 = add i32 %147, %148
  %150 = mul i32 %146, %39
  br label %151

151:                                              ; preds = %143, %138
  %152 = phi float [ 0.000000e+00, %138 ], [ %126, %143 ]
  %153 = phi i1 [ false, %138 ], [ true, %143 ]
  %154 = phi i32 [ %141, %138 ], [ %150, %143 ]
  %155 = phi i32 [ %142, %138 ], [ %149, %143 ]
  %156 = phi i32 [ %140, %138 ], [ %145, %143 ]
  %157 = phi i32 [ %139, %138 ], [ %144, %143 ]
  %158 = load i16, ptr %24, align 2, !tbaa !38
  %159 = and i16 %158, 64
  %160 = icmp eq i16 %159, 0
  %161 = fdiv float %128, %124
  %162 = fdiv float %125, 0x401921FB60000000
  %163 = fmul float %161, %162
  %164 = select i1 %160, float %163, float %128
  %165 = shl nsw i32 %154, 2
  %166 = call ptr @CDDM_from_template(ptr noundef %2, i32 noundef %156, i32 noundef %155, i32 noundef 0, i32 noundef %165, i32 noundef %154) #8
  %167 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 31
  %168 = load ptr, ptr %167, align 8, !tbaa !55
  %169 = call ptr %168(ptr noundef %2) #8
  %170 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 32
  %171 = load ptr, ptr %170, align 8, !tbaa !56
  %172 = call ptr %171(ptr noundef %2) #8
  %173 = getelementptr inbounds %struct.DerivedMesh, ptr %166, i64 0, i32 31
  %174 = load ptr, ptr %173, align 8, !tbaa !55
  %175 = call ptr %174(ptr noundef %166) #8
  %176 = getelementptr inbounds %struct.DerivedMesh, ptr %166, i64 0, i32 35
  %177 = load ptr, ptr %176, align 8, !tbaa !57
  %178 = call ptr %177(ptr noundef %166) #8
  %179 = getelementptr inbounds %struct.DerivedMesh, ptr %166, i64 0, i32 34
  %180 = load ptr, ptr %179, align 8, !tbaa !58
  %181 = call ptr %180(ptr noundef %166) #8
  %182 = getelementptr inbounds %struct.DerivedMesh, ptr %166, i64 0, i32 32
  %183 = load ptr, ptr %182, align 8, !tbaa !56
  %184 = call ptr %183(ptr noundef %166) #8
  %185 = getelementptr inbounds %struct.DerivedMesh, ptr %166, i64 0, i32 4
  %186 = call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %185, i32 noundef 7) #8
  %187 = icmp eq i8 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %151
  %189 = call ptr @CustomData_add_layer(ptr noundef nonnull %185, i32 noundef 7, i32 noundef 1, ptr noundef null, i32 noundef %154) #8
  br label %190

190:                                              ; preds = %188, %151
  %191 = call ptr @CustomData_get_layer(ptr noundef nonnull %185, i32 noundef 7) #8
  call void @DM_copy_vert_data(ptr noundef %2, ptr noundef %166, i32 noundef 0, i32 noundef 0, i32 noundef %36) #8
  %192 = icmp eq i32 %44, 0
  br i1 %192, label %246, label %193

193:                                              ; preds = %190
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %15, i8 0, i64 12, i1 false)
  call void @plane_from_point_normal_v3(ptr noundef nonnull %5, ptr noundef nonnull %15, ptr noundef nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #8
  %194 = getelementptr inbounds %struct.DerivedMesh, ptr %166, i64 0, i32 3
  %195 = zext i32 %44 to i64
  br label %196

196:                                              ; preds = %193, %196
  %197 = phi i64 [ 0, %193 ], [ %201, %196 ]
  %198 = trunc i64 %197 to i32
  %199 = call ptr @CustomData_get_layer_n(ptr noundef nonnull %194, i32 noundef 16, i32 noundef %198) #8
  %200 = getelementptr inbounds ptr, ptr %47, i64 %197
  store ptr %199, ptr %200, align 8, !tbaa !59
  %201 = add nuw nsw i64 %197, 1
  %202 = icmp eq i64 %201, %195
  br i1 %202, label %203, label %196, !llvm.loop !60

203:                                              ; preds = %196
  %204 = load i16, ptr %24, align 2, !tbaa !38
  %205 = and i16 %204, 128
  %206 = icmp eq i16 %205, 0
  br i1 %206, label %239, label %207

207:                                              ; preds = %203
  %208 = call i32 @llvm.umax.i32(i32 %36, i32 1)
  br label %209

209:                                              ; preds = %207, %209
  %210 = phi i32 [ %219, %209 ], [ 0, %207 ]
  %211 = phi float [ %218, %209 ], [ 0xC7EFFFFFE0000000, %207 ]
  %212 = phi float [ %216, %209 ], [ 0x47EFFFFFE0000000, %207 ]
  %213 = phi ptr [ %220, %209 ], [ %169, %207 ]
  %214 = call float @dist_signed_squared_to_plane_v3(ptr noundef %213, ptr noundef nonnull %5) #8
  %215 = fcmp olt float %214, %212
  %216 = select i1 %215, float %214, float %212
  %217 = fcmp ogt float %214, %211
  %218 = select i1 %217, float %214, float %211
  %219 = add nuw i32 %210, 1
  %220 = getelementptr inbounds %struct.MVert, ptr %213, i64 1
  %221 = icmp eq i32 %219, %208
  br i1 %221, label %222, label %209, !llvm.loop !63

222:                                              ; preds = %209
  %223 = fcmp ult float %216, 0.000000e+00
  br i1 %223, label %226, label %224

224:                                              ; preds = %222
  %225 = call float @sqrtf(float noundef %216) #8
  br label %230

226:                                              ; preds = %222
  %227 = fneg float %216
  %228 = call float @sqrtf(float noundef %227) #8
  %229 = fneg float %228
  br label %230

230:                                              ; preds = %224, %226
  %231 = phi float [ %225, %224 ], [ %229, %226 ]
  %232 = fcmp ult float %218, 0.000000e+00
  br i1 %232, label %235, label %233

233:                                              ; preds = %230
  %234 = call float @sqrtf(float noundef %218) #8
  br label %239

235:                                              ; preds = %230
  %236 = fneg float %218
  %237 = call float @sqrtf(float noundef %236) #8
  %238 = fneg float %237
  br label %239

239:                                              ; preds = %235, %233, %203
  %240 = phi float [ 0x47EFFFFFE0000000, %203 ], [ %231, %233 ], [ %231, %235 ]
  %241 = phi float [ 0xC7EFFFFFE0000000, %203 ], [ %234, %233 ], [ %238, %235 ]
  %242 = fsub float %241, %240
  %243 = fcmp une float %242, 0.000000e+00
  %244 = fdiv float 1.000000e+00, %242
  %245 = select i1 %243, float %244, float 0.000000e+00
  br label %246

246:                                              ; preds = %190, %239
  %247 = phi float [ %245, %239 ], [ undef, %190 ]
  %248 = phi float [ %240, %239 ], [ 0x47EFFFFFE0000000, %190 ]
  %249 = icmp eq i32 %39, 0
  br i1 %249, label %269, label %250

250:                                              ; preds = %246, %250
  %251 = phi i32 [ %265, %250 ], [ 0, %246 ]
  %252 = phi ptr [ %266, %250 ], [ %172, %246 ]
  %253 = phi ptr [ %267, %250 ], [ %184, %246 ]
  %254 = load i32, ptr %252, align 4, !tbaa !64
  store i32 %254, ptr %253, align 4, !tbaa !64
  %255 = getelementptr inbounds %struct.MEdge, ptr %252, i64 0, i32 1
  %256 = load i32, ptr %255, align 4, !tbaa !66
  %257 = getelementptr inbounds %struct.MEdge, ptr %253, i64 0, i32 1
  store i32 %256, ptr %257, align 4, !tbaa !66
  %258 = getelementptr inbounds %struct.MEdge, ptr %252, i64 0, i32 2
  %259 = load i8, ptr %258, align 4, !tbaa !67
  %260 = getelementptr inbounds %struct.MEdge, ptr %253, i64 0, i32 2
  store i8 %259, ptr %260, align 4, !tbaa !67
  %261 = getelementptr inbounds %struct.MEdge, ptr %252, i64 0, i32 4
  %262 = load i16, ptr %261, align 2, !tbaa !68
  %263 = and i16 %262, -129
  %264 = getelementptr inbounds %struct.MEdge, ptr %253, i64 0, i32 4
  store i16 %263, ptr %264, align 2, !tbaa !68
  %265 = add nuw i32 %251, 1
  %266 = getelementptr inbounds %struct.MEdge, ptr %252, i64 1
  %267 = getelementptr inbounds %struct.MEdge, ptr %253, i64 1
  %268 = icmp eq i32 %265, %39
  br i1 %268, label %269, label %250, !llvm.loop !69

269:                                              ; preds = %250, %246
  %270 = phi ptr [ %184, %246 ], [ %267, %250 ]
  %271 = icmp eq i32 %42, 0
  br i1 %271, label %325, label %272

272:                                              ; preds = %269
  %273 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 35
  %274 = load ptr, ptr %273, align 8, !tbaa !57
  %275 = call ptr %274(ptr noundef %2) #8
  %276 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 34
  %277 = load ptr, ptr %276, align 8, !tbaa !58
  %278 = call ptr %277(ptr noundef %2) #8
  %279 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !59
  %280 = zext i32 %39 to i64
  %281 = shl nuw nsw i64 %280, 2
  %282 = call ptr %279(i64 noundef %281, ptr noundef nonnull @__func__.applyModifier) #8
  call void @llvm.memset.p0.i64(ptr align 4 %282, i8 -1, i64 %281, i1 false)
  %283 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !59
  %284 = zext i32 %36 to i64
  %285 = shl nuw nsw i64 %284, 2
  %286 = call ptr %283(i64 noundef %285, ptr noundef nonnull @__func__.applyModifier) #8
  call void @llvm.memset.p0.i64(ptr align 4 %286, i8 -1, i64 %285, i1 false)
  br label %287

287:                                              ; preds = %272, %321
  %288 = phi i32 [ 0, %272 ], [ %322, %321 ]
  %289 = phi ptr [ %275, %272 ], [ %323, %321 ]
  %290 = load i32, ptr %289, align 4, !tbaa !70
  %291 = getelementptr inbounds %struct.MPoly, ptr %289, i64 0, i32 1
  %292 = load i32, ptr %291, align 4, !tbaa !72
  %293 = add i32 %292, %290
  %294 = icmp ult i32 %290, %293
  br i1 %294, label %295, label %321

295:                                              ; preds = %287
  %296 = zext i32 %290 to i64
  %297 = getelementptr inbounds %struct.MLoop, ptr %278, i64 %296
  br label %298

298:                                              ; preds = %295, %317
  %299 = phi i32 [ %318, %317 ], [ %290, %295 ]
  %300 = phi ptr [ %319, %317 ], [ %297, %295 ]
  %301 = getelementptr inbounds %struct.MLoop, ptr %300, i64 0, i32 1
  %302 = load i32, ptr %301, align 4, !tbaa !73
  %303 = zext i32 %302 to i64
  %304 = getelementptr inbounds i32, ptr %282, i64 %303
  store i32 %288, ptr %304, align 4, !tbaa !34
  %305 = load i32, ptr %300, align 4, !tbaa !75
  %306 = zext i32 %305 to i64
  %307 = getelementptr inbounds i32, ptr %286, i64 %306
  store i32 %299, ptr %307, align 4, !tbaa !34
  %308 = load i32, ptr %301, align 4, !tbaa !73
  %309 = zext i32 %308 to i64
  %310 = getelementptr inbounds %struct.MEdge, ptr %184, i64 %309
  %311 = load i32, ptr %310, align 4, !tbaa !64
  %312 = load i32, ptr %300, align 4, !tbaa !75
  %313 = icmp eq i32 %311, %312
  br i1 %313, label %317, label %314

314:                                              ; preds = %298
  %315 = getelementptr inbounds %struct.MEdge, ptr %184, i64 %309, i32 1
  %316 = load i32, ptr %315, align 4, !tbaa !66
  store i32 %316, ptr %310, align 4, !tbaa !64
  store i32 %311, ptr %315, align 4, !tbaa !66
  br label %317

317:                                              ; preds = %298, %314
  %318 = add nuw i32 %299, 1
  %319 = getelementptr inbounds %struct.MLoop, ptr %300, i64 1
  %320 = icmp eq i32 %318, %293
  br i1 %320, label %321, label %298, !llvm.loop !76

321:                                              ; preds = %317, %287
  %322 = add nuw i32 %288, 1
  %323 = getelementptr inbounds %struct.MPoly, ptr %289, i64 1
  %324 = icmp eq i32 %322, %42
  br i1 %324, label %325, label %287, !llvm.loop !77

325:                                              ; preds = %321, %269
  %326 = phi ptr [ undef, %269 ], [ %275, %321 ]
  %327 = phi ptr [ null, %269 ], [ %286, %321 ]
  %328 = phi ptr [ null, %269 ], [ %282, %321 ]
  %329 = load i16, ptr %24, align 2, !tbaa !38
  %330 = and i16 %329, 2
  %331 = icmp eq i16 %330, 0
  br i1 %331, label %332, label %334

332:                                              ; preds = %325
  %333 = call i32 @llvm.umax.i32(i32 %36, i32 1)
  br label %1014

334:                                              ; preds = %325
  %335 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !59
  %336 = zext i32 %36 to i64
  %337 = shl nuw nsw i64 %336, 6
  %338 = call ptr %335(i64 noundef %337, ptr noundef nonnull @.str) #8
  %339 = icmp eq i32 %39, 0
  br i1 %339, label %340, label %377

340:                                              ; preds = %334
  %341 = getelementptr inbounds %struct.ScrewVertConnect, ptr %338, i64 0, i32 2
  %342 = getelementptr inbounds %struct.ScrewVertConnect, ptr %338, i64 0, i32 2, i64 1
  %343 = getelementptr inbounds %struct.ScrewVertConnect, ptr %338, i64 0, i32 2, i64 2
  %344 = getelementptr inbounds %struct.ScrewVertConnect, ptr %338, i64 0, i32 2, i64 1
  %345 = getelementptr inbounds %struct.ScrewVertConnect, ptr %338, i64 0, i32 2, i64 2
  %346 = call i32 @llvm.umax.i32(i32 %36, i32 1)
  br label %347

347:                                              ; preds = %340, %372
  %348 = phi i32 [ 0, %340 ], [ %373, %372 ]
  %349 = phi ptr [ %175, %340 ], [ %375, %372 ]
  %350 = phi ptr [ %169, %340 ], [ %374, %372 ]
  %351 = load float, ptr %350, align 4, !tbaa !52
  store float %351, ptr %349, align 4, !tbaa !52
  %352 = getelementptr inbounds float, ptr %350, i64 1
  %353 = load float, ptr %352, align 4, !tbaa !52
  %354 = getelementptr inbounds float, ptr %349, i64 1
  store float %353, ptr %354, align 4, !tbaa !52
  %355 = getelementptr inbounds float, ptr %350, i64 2
  %356 = load float, ptr %355, align 4, !tbaa !52
  %357 = getelementptr inbounds float, ptr %349, i64 2
  store float %356, ptr %357, align 4, !tbaa !52
  %358 = fmul float %353, %353
  %359 = call float @llvm.fmuladd.f32(float %351, float %351, float %358)
  %360 = call float @llvm.fmuladd.f32(float %356, float %356, float %359)
  %361 = fcmp ogt float %360, 0x38AA95A5C0000000
  br i1 %361, label %362, label %371

362:                                              ; preds = %347
  %363 = call float @sqrtf(float noundef %360) #8
  %364 = fdiv float 1.000000e+00, %363
  %365 = load float, ptr %349, align 4, !tbaa !52
  %366 = fmul float %365, %364
  store float %366, ptr %341, align 4, !tbaa !52
  %367 = load float, ptr %354, align 4, !tbaa !52
  %368 = fmul float %364, %367
  store float %368, ptr %344, align 4, !tbaa !52
  %369 = load float, ptr %357, align 4, !tbaa !52
  %370 = fmul float %364, %369
  store float %370, ptr %345, align 4, !tbaa !52
  br label %372

371:                                              ; preds = %347
  store float 0.000000e+00, ptr %341, align 4, !tbaa !52
  store float 0.000000e+00, ptr %342, align 4, !tbaa !52
  store float 0.000000e+00, ptr %343, align 4, !tbaa !52
  br label %372

372:                                              ; preds = %362, %371
  %373 = add nuw i32 %348, 1
  %374 = getelementptr inbounds %struct.MVert, ptr %350, i64 1
  %375 = getelementptr inbounds %struct.MVert, ptr %349, i64 1
  %376 = icmp eq i32 %373, %346
  br i1 %376, label %1029, label %347, !llvm.loop !78

377:                                              ; preds = %334
  %378 = load ptr, ptr %69, align 8, !tbaa !53
  %379 = icmp eq ptr %378, null
  %380 = call i32 @llvm.umax.i32(i32 %36, i32 1)
  br i1 %379, label %410, label %381

381:                                              ; preds = %377, %381
  %382 = phi i32 [ %405, %381 ], [ 0, %377 ]
  %383 = phi ptr [ %408, %381 ], [ %338, %377 ]
  %384 = phi ptr [ %406, %381 ], [ %175, %377 ]
  %385 = phi ptr [ %407, %381 ], [ %169, %377 ]
  %386 = load float, ptr %385, align 4, !tbaa !52
  store float %386, ptr %384, align 4, !tbaa !52
  %387 = getelementptr inbounds %struct.ScrewVertConnect, ptr %383, i64 0, i32 1
  store float %386, ptr %387, align 4, !tbaa !52
  %388 = getelementptr inbounds [3 x float], ptr %385, i64 0, i64 1
  %389 = load float, ptr %388, align 4, !tbaa !52
  %390 = getelementptr inbounds [3 x float], ptr %384, i64 0, i64 1
  store float %389, ptr %390, align 4, !tbaa !52
  %391 = getelementptr inbounds %struct.ScrewVertConnect, ptr %383, i64 0, i32 1, i64 1
  store float %389, ptr %391, align 4, !tbaa !52
  %392 = getelementptr inbounds [3 x float], ptr %385, i64 0, i64 2
  %393 = load float, ptr %392, align 4, !tbaa !52
  %394 = getelementptr inbounds [3 x float], ptr %384, i64 0, i64 2
  store float %393, ptr %394, align 4, !tbaa !52
  %395 = getelementptr inbounds %struct.ScrewVertConnect, ptr %383, i64 0, i32 1, i64 2
  store float %393, ptr %395, align 4, !tbaa !52
  %396 = getelementptr inbounds %struct.ScrewVertConnect, ptr %383, i64 0, i32 4
  %397 = getelementptr inbounds %struct.ScrewVertConnect, ptr %383, i64 0, i32 3
  %398 = getelementptr inbounds %struct.ScrewVertConnect, ptr %383, i64 0, i32 3, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %396, i8 0, i64 17, i1 false)
  store i32 -1, ptr %398, align 4, !tbaa !34
  store i32 -1, ptr %397, align 4, !tbaa !34
  call void @mul_m4_v3(ptr noundef nonnull %10, ptr noundef nonnull %387) #8
  %399 = getelementptr inbounds %struct.ScrewVertConnect, ptr %383, i64 0, i32 1, i64 %66
  %400 = load float, ptr %399, align 4, !tbaa !52
  %401 = getelementptr inbounds %struct.ScrewVertConnect, ptr %383, i64 0, i32 1, i64 %65
  %402 = load float, ptr %401, align 4, !tbaa !52
  %403 = fmul float %402, %402
  %404 = call float @llvm.fmuladd.f32(float %400, float %400, float %403)
  store float %404, ptr %383, align 8, !tbaa !79
  %405 = add nuw i32 %382, 1
  %406 = getelementptr inbounds %struct.MVert, ptr %384, i64 1
  %407 = getelementptr inbounds %struct.MVert, ptr %385, i64 1
  %408 = getelementptr inbounds %struct.ScrewVertConnect, ptr %383, i64 1
  %409 = icmp eq i32 %405, %380
  br i1 %409, label %439, label %381, !llvm.loop !81

410:                                              ; preds = %377, %410
  %411 = phi i32 [ %434, %410 ], [ 0, %377 ]
  %412 = phi ptr [ %437, %410 ], [ %338, %377 ]
  %413 = phi ptr [ %435, %410 ], [ %175, %377 ]
  %414 = phi ptr [ %436, %410 ], [ %169, %377 ]
  %415 = load float, ptr %414, align 4, !tbaa !52
  store float %415, ptr %413, align 4, !tbaa !52
  %416 = getelementptr inbounds %struct.ScrewVertConnect, ptr %412, i64 0, i32 1
  store float %415, ptr %416, align 4, !tbaa !52
  %417 = getelementptr inbounds [3 x float], ptr %414, i64 0, i64 1
  %418 = load float, ptr %417, align 4, !tbaa !52
  %419 = getelementptr inbounds [3 x float], ptr %413, i64 0, i64 1
  store float %418, ptr %419, align 4, !tbaa !52
  %420 = getelementptr inbounds %struct.ScrewVertConnect, ptr %412, i64 0, i32 1, i64 1
  store float %418, ptr %420, align 4, !tbaa !52
  %421 = getelementptr inbounds [3 x float], ptr %414, i64 0, i64 2
  %422 = load float, ptr %421, align 4, !tbaa !52
  %423 = getelementptr inbounds [3 x float], ptr %413, i64 0, i64 2
  store float %422, ptr %423, align 4, !tbaa !52
  %424 = getelementptr inbounds %struct.ScrewVertConnect, ptr %412, i64 0, i32 1, i64 2
  store float %422, ptr %424, align 4, !tbaa !52
  %425 = getelementptr inbounds %struct.ScrewVertConnect, ptr %412, i64 0, i32 4
  %426 = getelementptr inbounds %struct.ScrewVertConnect, ptr %412, i64 0, i32 3
  %427 = getelementptr inbounds %struct.ScrewVertConnect, ptr %412, i64 0, i32 3, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %425, i8 0, i64 17, i1 false)
  store i32 -1, ptr %427, align 4, !tbaa !34
  store i32 -1, ptr %426, align 4, !tbaa !34
  %428 = getelementptr inbounds %struct.ScrewVertConnect, ptr %412, i64 0, i32 1, i64 %66
  %429 = load float, ptr %428, align 4, !tbaa !52
  %430 = getelementptr inbounds %struct.ScrewVertConnect, ptr %412, i64 0, i32 1, i64 %65
  %431 = load float, ptr %430, align 4, !tbaa !52
  %432 = fmul float %431, %431
  %433 = call float @llvm.fmuladd.f32(float %429, float %429, float %432)
  store float %433, ptr %412, align 8, !tbaa !79
  %434 = add nuw i32 %411, 1
  %435 = getelementptr inbounds %struct.MVert, ptr %413, i64 1
  %436 = getelementptr inbounds %struct.MVert, ptr %414, i64 1
  %437 = getelementptr inbounds %struct.ScrewVertConnect, ptr %412, i64 1
  %438 = icmp eq i32 %434, %380
  br i1 %438, label %439, label %410, !llvm.loop !82

439:                                              ; preds = %381, %410
  %440 = call i32 @llvm.umax.i32(i32 %39, i32 1)
  br label %462

441:                                              ; preds = %501
  %442 = getelementptr inbounds float, ptr %7, i64 1
  %443 = getelementptr inbounds float, ptr %7, i64 2
  %444 = getelementptr inbounds float, ptr %8, i64 1
  %445 = getelementptr inbounds float, ptr %8, i64 2
  %446 = fcmp olt float %125, 0.000000e+00
  %447 = getelementptr inbounds float, ptr %7, i64 1
  %448 = getelementptr inbounds float, ptr %7, i64 2
  %449 = getelementptr inbounds float, ptr %7, i64 1
  %450 = getelementptr inbounds float, ptr %7, i64 2
  %451 = getelementptr inbounds float, ptr %7, i64 1
  %452 = getelementptr inbounds float, ptr %7, i64 2
  %453 = getelementptr inbounds float, ptr %8, i64 1
  %454 = getelementptr inbounds float, ptr %8, i64 2
  %455 = getelementptr inbounds float, ptr %6, i64 1
  %456 = getelementptr inbounds float, ptr %6, i64 2
  %457 = getelementptr inbounds float, ptr %8, i64 1
  %458 = getelementptr inbounds float, ptr %8, i64 2
  %459 = fcmp olt float %125, 0.000000e+00
  %460 = call i32 @llvm.umax.i32(i32 %36, i32 1)
  %461 = zext i32 %460 to i64
  br label %505

462:                                              ; preds = %439, %501
  %463 = phi i32 [ 0, %439 ], [ %502, %501 ]
  %464 = phi ptr [ %184, %439 ], [ %503, %501 ]
  %465 = load i32, ptr %464, align 4, !tbaa !64
  %466 = zext i32 %465 to i64
  %467 = getelementptr inbounds %struct.ScrewVertConnect, ptr %338, i64 %466, i32 3
  %468 = load i32, ptr %467, align 4, !tbaa !34
  %469 = icmp eq i32 %468, -1
  br i1 %469, label %470, label %474

470:                                              ; preds = %462
  %471 = getelementptr inbounds %struct.MEdge, ptr %464, i64 0, i32 1
  %472 = load i32, ptr %471, align 4, !tbaa !66
  store i32 %472, ptr %467, align 4, !tbaa !34
  %473 = getelementptr inbounds %struct.ScrewVertConnect, ptr %338, i64 %466, i32 4
  store ptr %464, ptr %473, align 8, !tbaa !59
  br label %483

474:                                              ; preds = %462
  %475 = getelementptr inbounds %struct.ScrewVertConnect, ptr %338, i64 %466, i32 3, i64 1
  %476 = load i32, ptr %475, align 4, !tbaa !34
  %477 = icmp eq i32 %476, -1
  br i1 %477, label %478, label %482

478:                                              ; preds = %474
  %479 = getelementptr inbounds %struct.MEdge, ptr %464, i64 0, i32 1
  %480 = load i32, ptr %479, align 4, !tbaa !66
  store i32 %480, ptr %475, align 4, !tbaa !34
  %481 = getelementptr inbounds %struct.ScrewVertConnect, ptr %338, i64 %466, i32 4, i64 1
  store ptr %464, ptr %481, align 8, !tbaa !59
  br label %483

482:                                              ; preds = %474
  store i32 -2, ptr %475, align 4, !tbaa !34
  store i32 -2, ptr %467, align 4, !tbaa !34
  br label %483

483:                                              ; preds = %478, %482, %470
  %484 = getelementptr inbounds %struct.MEdge, ptr %464, i64 0, i32 1
  %485 = load i32, ptr %484, align 4, !tbaa !66
  %486 = zext i32 %485 to i64
  %487 = getelementptr inbounds %struct.ScrewVertConnect, ptr %338, i64 %486, i32 3
  %488 = load i32, ptr %487, align 4, !tbaa !34
  %489 = icmp eq i32 %488, -1
  br i1 %489, label %490, label %493

490:                                              ; preds = %483
  %491 = load i32, ptr %464, align 4, !tbaa !64
  store i32 %491, ptr %487, align 4, !tbaa !34
  %492 = getelementptr inbounds %struct.ScrewVertConnect, ptr %338, i64 %486, i32 4
  store ptr %464, ptr %492, align 8, !tbaa !59
  br label %501

493:                                              ; preds = %483
  %494 = getelementptr inbounds %struct.ScrewVertConnect, ptr %338, i64 %486, i32 3, i64 1
  %495 = load i32, ptr %494, align 4, !tbaa !34
  %496 = icmp eq i32 %495, -1
  br i1 %496, label %497, label %500

497:                                              ; preds = %493
  %498 = load i32, ptr %464, align 4, !tbaa !64
  store i32 %498, ptr %494, align 4, !tbaa !34
  %499 = getelementptr inbounds %struct.ScrewVertConnect, ptr %338, i64 %486, i32 4, i64 1
  store ptr %464, ptr %499, align 8, !tbaa !59
  br label %501

500:                                              ; preds = %493
  store i32 -2, ptr %494, align 4, !tbaa !34
  store i32 -2, ptr %487, align 4, !tbaa !34
  br label %501

501:                                              ; preds = %490, %500, %497
  %502 = add nuw i32 %463, 1
  %503 = getelementptr inbounds %struct.MEdge, ptr %464, i64 1
  %504 = icmp eq i32 %502, %440
  br i1 %504, label %441, label %462, !llvm.loop !83

505:                                              ; preds = %441, %998
  %506 = phi i64 [ 0, %441 ], [ %1011, %998 ]
  %507 = phi ptr [ %338, %441 ], [ %1012, %998 ]
  %508 = phi i32 [ undef, %441 ], [ %785, %998 ]
  %509 = getelementptr inbounds %struct.ScrewVertConnect, ptr %507, i64 0, i32 5
  %510 = load i8, ptr %509, align 8, !tbaa !84
  %511 = icmp eq i8 %510, 0
  br i1 %511, label %512, label %784

512:                                              ; preds = %505
  %513 = icmp ult i64 %506, 4294967294
  %514 = getelementptr inbounds %struct.ScrewVertConnect, ptr %338, i64 %506
  %515 = trunc i64 %506 to i32
  %516 = trunc i64 %506 to i32
  %517 = trunc i64 %506 to i32
  %518 = trunc i64 %506 to i32
  br label %519

519:                                              ; preds = %512, %584
  %520 = phi i64 [ 0, %512 ], [ %590, %584 ]
  %521 = phi i32 [ 0, %512 ], [ %589, %584 ]
  %522 = phi float [ -1.000000e+00, %512 ], [ %588, %584 ]
  %523 = phi i32 [ 0, %512 ], [ %587, %584 ]
  %524 = phi i32 [ -1, %512 ], [ %586, %584 ]
  %525 = phi i32 [ %508, %512 ], [ %585, %584 ]
  br i1 %513, label %526, label %529

526:                                              ; preds = %519
  %527 = getelementptr inbounds %struct.ScrewVertConnect, ptr %338, i64 %506, i32 3, i64 %520
  %528 = load i32, ptr %527, align 4, !tbaa !34
  br label %529

529:                                              ; preds = %519, %526
  %530 = phi i32 [ %528, %526 ], [ %525, %519 ]
  %531 = phi ptr [ %514, %526 ], [ null, %519 ]
  %532 = icmp eq i64 %520, 1
  br i1 %532, label %533, label %548

533:                                              ; preds = %529
  %534 = getelementptr inbounds %struct.ScrewVertConnect, ptr %531, i64 0, i32 3
  %535 = load i32, ptr %534, align 4, !tbaa !34
  %536 = icmp eq i32 %535, %530
  %537 = getelementptr inbounds %struct.ScrewVertConnect, ptr %531, i64 0, i32 3, i64 1
  %538 = load i32, ptr %537, align 4, !tbaa !34
  %539 = icmp eq i32 %538, %530
  %540 = select i1 %539, i32 %517, i32 %530
  %541 = select i1 %539, i32 %535, i32 %518
  %542 = select i1 %536, i32 %516, i32 %540
  %543 = select i1 %536, i32 %538, i32 %541
  %544 = icmp ult i32 %543, -2
  br i1 %544, label %545, label %548

545:                                              ; preds = %533
  %546 = zext i32 %543 to i64
  %547 = getelementptr inbounds %struct.ScrewVertConnect, ptr %338, i64 %546
  br label %548

548:                                              ; preds = %545, %533, %529
  %549 = phi i32 [ %530, %529 ], [ %542, %545 ], [ %542, %533 ]
  %550 = phi i32 [ %515, %529 ], [ %543, %545 ], [ %543, %533 ]
  %551 = phi ptr [ %531, %529 ], [ %547, %545 ], [ null, %533 ]
  %552 = icmp eq ptr %551, null
  br i1 %552, label %584, label %553

553:                                              ; preds = %548, %563
  %554 = phi i32 [ %577, %563 ], [ %549, %548 ]
  %555 = phi i32 [ %578, %563 ], [ %550, %548 ]
  %556 = phi ptr [ %582, %563 ], [ %551, %548 ]
  %557 = phi i32 [ %567, %563 ], [ %524, %548 ]
  %558 = phi float [ %568, %563 ], [ %522, %548 ]
  %559 = phi i32 [ %564, %563 ], [ %521, %548 ]
  %560 = getelementptr inbounds %struct.ScrewVertConnect, ptr %556, i64 0, i32 5
  %561 = load i8, ptr %560, align 8, !tbaa !84
  %562 = icmp eq i8 %561, 0
  br i1 %562, label %563, label %584

563:                                              ; preds = %553
  store i8 1, ptr %560, align 8, !tbaa !84
  %564 = add i32 %559, 1
  %565 = load float, ptr %556, align 8, !tbaa !79
  %566 = fcmp ugt float %558, %565
  %567 = select i1 %566, i32 %557, i32 %555
  %568 = select i1 %566, float %558, float %565
  %569 = getelementptr inbounds %struct.ScrewVertConnect, ptr %556, i64 0, i32 3
  %570 = load i32, ptr %569, align 4, !tbaa !34
  %571 = icmp eq i32 %570, %554
  %572 = getelementptr inbounds %struct.ScrewVertConnect, ptr %556, i64 0, i32 3, i64 1
  %573 = load i32, ptr %572, align 4, !tbaa !34
  %574 = icmp eq i32 %573, %554
  %575 = select i1 %574, i32 %570, i32 %555
  %576 = or i1 %571, %574
  %577 = select i1 %576, i32 %555, i32 %554
  %578 = select i1 %571, i32 %573, i32 %575
  %579 = icmp ult i32 %578, -2
  %580 = zext i32 %578 to i64
  %581 = getelementptr inbounds %struct.ScrewVertConnect, ptr %338, i64 %580
  %582 = select i1 %579, ptr %581, ptr null
  %583 = icmp eq ptr %582, null
  br i1 %583, label %584, label %553, !llvm.loop !85

584:                                              ; preds = %553, %563, %548
  %585 = phi i32 [ %549, %548 ], [ %577, %563 ], [ %554, %553 ]
  %586 = phi i32 [ %524, %548 ], [ %567, %563 ], [ %557, %553 ]
  %587 = phi i32 [ %523, %548 ], [ %523, %563 ], [ 1, %553 ]
  %588 = phi float [ %522, %548 ], [ %568, %563 ], [ %558, %553 ]
  %589 = phi i32 [ %521, %548 ], [ %564, %563 ], [ %559, %553 ]
  %590 = add nuw nsw i64 %520, 1
  %591 = icmp eq i64 %520, 0
  br i1 %591, label %519, label %592, !llvm.loop !86

592:                                              ; preds = %584
  %593 = icmp ugt i32 %589, 1
  br i1 %593, label %594, label %784

594:                                              ; preds = %592
  %595 = zext i32 %586 to i64
  %596 = getelementptr inbounds %struct.ScrewVertConnect, ptr %338, i64 %595, i32 3
  %597 = load i32, ptr %596, align 4, !tbaa !34
  %598 = zext i32 %597 to i64
  %599 = getelementptr inbounds %struct.ScrewVertConnect, ptr %338, i64 %598, i32 1
  %600 = getelementptr inbounds %struct.ScrewVertConnect, ptr %338, i64 %595, i32 3, i64 1
  %601 = load i32, ptr %600, align 4, !tbaa !34
  %602 = zext i32 %601 to i64
  %603 = getelementptr inbounds %struct.ScrewVertConnect, ptr %338, i64 %602, i32 1
  %604 = icmp ult i32 %597, -2
  %605 = icmp ult i32 %601, -2
  %606 = select i1 %604, i1 %605, i1 false
  br i1 %606, label %607, label %680

607:                                              ; preds = %594
  %608 = load i8, ptr %60, align 4, !tbaa !51
  %609 = zext i8 %608 to i64
  %610 = getelementptr inbounds float, ptr %599, i64 %609
  %611 = load float, ptr %610, align 4, !tbaa !52
  %612 = getelementptr inbounds float, ptr %603, i64 %609
  %613 = load float, ptr %612, align 4, !tbaa !52
  %614 = getelementptr inbounds %struct.ScrewVertConnect, ptr %338, i64 %595, i32 1
  %615 = getelementptr inbounds %struct.ScrewVertConnect, ptr %338, i64 %595, i32 1, i64 %609
  %616 = load float, ptr %615, align 4, !tbaa !52
  %617 = fcmp olt float %611, %616
  %618 = fcmp olt float %616, %613
  %619 = select i1 %617, i1 %618, i1 false
  br i1 %619, label %690, label %620

620:                                              ; preds = %607
  %621 = fcmp ogt float %611, %616
  %622 = fcmp ogt float %616, %613
  %623 = select i1 %621, i1 %622, i1 false
  br i1 %623, label %690, label %624

624:                                              ; preds = %620
  %625 = load float, ptr %599, align 4, !tbaa !52
  %626 = load float, ptr %614, align 4, !tbaa !52
  %627 = fsub float %625, %626
  store float %627, ptr %7, align 4, !tbaa !52
  %628 = getelementptr inbounds float, ptr %599, i64 1
  %629 = load float, ptr %628, align 4, !tbaa !52
  %630 = getelementptr inbounds float, ptr %614, i64 1
  %631 = load float, ptr %630, align 4, !tbaa !52
  %632 = fsub float %629, %631
  store float %632, ptr %442, align 4, !tbaa !52
  %633 = getelementptr inbounds float, ptr %599, i64 2
  %634 = load float, ptr %633, align 4, !tbaa !52
  %635 = getelementptr inbounds float, ptr %614, i64 2
  %636 = load float, ptr %635, align 4, !tbaa !52
  %637 = fsub float %634, %636
  store float %637, ptr %443, align 4, !tbaa !52
  %638 = load float, ptr %603, align 4, !tbaa !52
  %639 = fsub float %638, %626
  store float %639, ptr %8, align 4, !tbaa !52
  %640 = getelementptr inbounds float, ptr %603, i64 1
  %641 = load float, ptr %640, align 4, !tbaa !52
  %642 = fsub float %641, %631
  store float %642, ptr %444, align 4, !tbaa !52
  %643 = getelementptr inbounds float, ptr %603, i64 2
  %644 = load float, ptr %643, align 4, !tbaa !52
  %645 = fsub float %644, %636
  store float %645, ptr %445, align 4, !tbaa !52
  %646 = fmul float %632, %632
  %647 = call float @llvm.fmuladd.f32(float %627, float %627, float %646)
  %648 = call float @llvm.fmuladd.f32(float %637, float %637, float %647)
  %649 = fcmp ogt float %648, 0x38AA95A5C0000000
  br i1 %649, label %650, label %656

650:                                              ; preds = %624
  %651 = call float @sqrtf(float noundef %648) #8
  %652 = fdiv float 1.000000e+00, %651
  %653 = fmul float %627, %652
  store float %653, ptr %7, align 4, !tbaa !52
  %654 = fmul float %632, %652
  store float %654, ptr %442, align 4, !tbaa !52
  %655 = fmul float %637, %652
  br label %657

656:                                              ; preds = %624
  store float 0.000000e+00, ptr %7, align 4, !tbaa !52
  store float 0.000000e+00, ptr %442, align 4, !tbaa !52
  br label %657

657:                                              ; preds = %650, %656
  %658 = phi float [ 0.000000e+00, %656 ], [ %655, %650 ]
  store float %658, ptr %443, align 4, !tbaa !52
  %659 = fmul float %642, %642
  %660 = call float @llvm.fmuladd.f32(float %639, float %639, float %659)
  %661 = call float @llvm.fmuladd.f32(float %645, float %645, float %660)
  %662 = fcmp ogt float %661, 0x38AA95A5C0000000
  br i1 %662, label %663, label %669

663:                                              ; preds = %657
  %664 = call float @sqrtf(float noundef %661) #8
  %665 = fdiv float 1.000000e+00, %664
  %666 = fmul float %639, %665
  store float %666, ptr %8, align 4, !tbaa !52
  %667 = fmul float %642, %665
  store float %667, ptr %444, align 4, !tbaa !52
  %668 = fmul float %645, %665
  br label %670

669:                                              ; preds = %657
  store float 0.000000e+00, ptr %8, align 4, !tbaa !52
  store float 0.000000e+00, ptr %444, align 4, !tbaa !52
  br label %670

670:                                              ; preds = %663, %669
  %671 = phi float [ 0.000000e+00, %669 ], [ %668, %663 ]
  store float %671, ptr %445, align 4, !tbaa !52
  %672 = load i8, ptr %60, align 4, !tbaa !51
  %673 = zext i8 %672 to i64
  %674 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 %673
  %675 = load float, ptr %674, align 4, !tbaa !52
  %676 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 %673
  %677 = load float, ptr %676, align 4, !tbaa !52
  %678 = fcmp uge float %675, %677
  %679 = xor i1 %678, true
  br label %690

680:                                              ; preds = %594
  br i1 %604, label %681, label %690

681:                                              ; preds = %680
  %682 = load i8, ptr %60, align 4, !tbaa !51
  %683 = zext i8 %682 to i64
  %684 = getelementptr inbounds float, ptr %599, i64 %683
  %685 = load float, ptr %684, align 4, !tbaa !52
  %686 = getelementptr inbounds %struct.ScrewVertConnect, ptr %338, i64 %595, i32 1, i64 %683
  %687 = load float, ptr %686, align 4, !tbaa !52
  %688 = fcmp uge float %685, %687
  %689 = xor i1 %688, true
  br label %690

690:                                              ; preds = %680, %607, %620, %670, %681
  %691 = phi i1 [ true, %680 ], [ true, %607 ], [ false, %620 ], [ %678, %670 ], [ %688, %681 ]
  %692 = phi i1 [ false, %680 ], [ false, %607 ], [ true, %620 ], [ %679, %670 ], [ %689, %681 ]
  %693 = select i1 %446, i1 %691, i1 %692
  %694 = zext i1 %693 to i8
  %695 = icmp ult i32 %586, -2
  %696 = getelementptr inbounds %struct.ScrewVertConnect, ptr %338, i64 %595
  %697 = zext nneg i32 %587 to i64
  br label %698

698:                                              ; preds = %690, %780
  %699 = phi i64 [ %697, %690 ], [ %782, %780 ]
  %700 = phi i8 [ %694, %690 ], [ %725, %780 ]
  %701 = phi i32 [ %585, %690 ], [ %781, %780 ]
  br i1 %695, label %702, label %709

702:                                              ; preds = %698
  %703 = getelementptr inbounds %struct.ScrewVertConnect, ptr %338, i64 %595, i32 3, i64 %699
  %704 = load i32, ptr %703, align 4, !tbaa !34
  %705 = and i64 %699, 4294967295
  %706 = xor i64 %705, 1
  %707 = getelementptr inbounds %struct.ScrewVertConnect, ptr %338, i64 %595, i32 4, i64 %706
  %708 = load ptr, ptr %707, align 8, !tbaa !59
  br label %709

709:                                              ; preds = %698, %702
  %710 = phi ptr [ %708, %702 ], [ null, %698 ]
  %711 = phi i32 [ %704, %702 ], [ %701, %698 ]
  %712 = phi ptr [ %696, %702 ], [ null, %698 ]
  %713 = getelementptr inbounds %struct.ScrewVertConnect, ptr %712, i64 0, i32 5
  store i8 1, ptr %713, align 8, !tbaa !84
  %714 = icmp eq i64 %699, 1
  br i1 %714, label %715, label %724

715:                                              ; preds = %709
  %716 = load i32, ptr %596, align 4, !tbaa !34
  %717 = icmp ult i32 %716, -2
  br i1 %717, label %718, label %724

718:                                              ; preds = %715
  %719 = load i32, ptr %600, align 4, !tbaa !34
  %720 = icmp ult i32 %719, -2
  br i1 %720, label %721, label %724

721:                                              ; preds = %718
  %722 = icmp eq i8 %700, 0
  %723 = zext i1 %722 to i8
  br label %724

724:                                              ; preds = %721, %718, %715, %709
  %725 = phi i8 [ %723, %721 ], [ %700, %718 ], [ %700, %715 ], [ %700, %709 ]
  %726 = icmp eq ptr %712, null
  br i1 %726, label %780, label %727

727:                                              ; preds = %724
  %728 = icmp eq i8 %725, 1
  %729 = icmp eq i8 %725, 0
  br label %730

730:                                              ; preds = %727, %776
  %731 = phi ptr [ %712, %727 ], [ %778, %776 ]
  %732 = phi i32 [ %586, %727 ], [ %765, %776 ]
  %733 = phi i32 [ %711, %727 ], [ %764, %776 ]
  %734 = phi ptr [ %710, %727 ], [ %777, %776 ]
  %735 = getelementptr inbounds %struct.ScrewVertConnect, ptr %731, i64 0, i32 5
  %736 = load i8, ptr %735, align 8, !tbaa !84
  %737 = icmp eq i8 %736, 2
  br i1 %737, label %780, label %738

738:                                              ; preds = %730
  store i8 2, ptr %735, align 8, !tbaa !84
  %739 = icmp eq ptr %734, null
  br i1 %739, label %755, label %740

740:                                              ; preds = %738
  %741 = load i32, ptr %734, align 4, !tbaa !64
  %742 = icmp eq i32 %732, %741
  br i1 %742, label %743, label %747

743:                                              ; preds = %740
  br i1 %729, label %744, label %755

744:                                              ; preds = %743
  %745 = getelementptr inbounds %struct.MEdge, ptr %734, i64 0, i32 1
  %746 = load i32, ptr %745, align 4, !tbaa !66
  br label %752

747:                                              ; preds = %740
  %748 = getelementptr inbounds %struct.MEdge, ptr %734, i64 0, i32 1
  %749 = load i32, ptr %748, align 4, !tbaa !66
  %750 = icmp eq i32 %732, %749
  %751 = select i1 %750, i1 %728, i1 false
  br i1 %751, label %752, label %755

752:                                              ; preds = %747, %744
  %753 = phi i32 [ %746, %744 ], [ %749, %747 ]
  %754 = phi ptr [ %745, %744 ], [ %748, %747 ]
  store i32 %753, ptr %734, align 4, !tbaa !64
  store i32 %741, ptr %754, align 4, !tbaa !66
  br label %755

755:                                              ; preds = %752, %743, %747, %738
  %756 = getelementptr inbounds %struct.ScrewVertConnect, ptr %731, i64 0, i32 3
  %757 = load i32, ptr %756, align 4, !tbaa !34
  %758 = icmp eq i32 %757, %733
  %759 = getelementptr inbounds %struct.ScrewVertConnect, ptr %731, i64 0, i32 3, i64 1
  %760 = load i32, ptr %759, align 4, !tbaa !34
  %761 = icmp eq i32 %760, %733
  %762 = select i1 %761, i32 %757, i32 %732
  %763 = or i1 %758, %761
  %764 = select i1 %763, i32 %732, i32 %733
  %765 = select i1 %758, i32 %760, i32 %762
  %766 = icmp ult i32 %765, -2
  br i1 %766, label %767, label %776

767:                                              ; preds = %755
  %768 = zext i32 %765 to i64
  %769 = getelementptr inbounds %struct.ScrewVertConnect, ptr %338, i64 %768
  %770 = getelementptr inbounds %struct.ScrewVertConnect, ptr %338, i64 %768, i32 4
  %771 = load ptr, ptr %770, align 8, !tbaa !59
  %772 = icmp eq ptr %771, %734
  %773 = zext i1 %772 to i64
  %774 = getelementptr inbounds %struct.ScrewVertConnect, ptr %338, i64 %768, i32 4, i64 %773
  %775 = load ptr, ptr %774, align 8, !tbaa !59
  br label %776

776:                                              ; preds = %755, %767
  %777 = phi ptr [ %775, %767 ], [ null, %755 ]
  %778 = phi ptr [ %769, %767 ], [ null, %755 ]
  %779 = icmp eq ptr %778, null
  br i1 %779, label %780, label %730, !llvm.loop !87

780:                                              ; preds = %776, %730, %724
  %781 = phi i32 [ %711, %724 ], [ %764, %776 ], [ %733, %730 ]
  %782 = add nuw nsw i64 %699, 1
  %783 = icmp eq i64 %699, 0
  br i1 %783, label %698, label %784, !llvm.loop !88

784:                                              ; preds = %780, %592, %505
  %785 = phi i32 [ %508, %505 ], [ %585, %592 ], [ %781, %780 ]
  %786 = getelementptr inbounds %struct.ScrewVertConnect, ptr %507, i64 0, i32 3
  %787 = load i32, ptr %786, align 4, !tbaa !34
  %788 = icmp ult i32 %787, -2
  br i1 %788, label %789, label %956

789:                                              ; preds = %784
  %790 = getelementptr inbounds %struct.ScrewVertConnect, ptr %507, i64 0, i32 3, i64 1
  %791 = load i32, ptr %790, align 4, !tbaa !34
  %792 = icmp ult i32 %791, -2
  br i1 %792, label %793, label %863

793:                                              ; preds = %789
  %794 = zext i32 %787 to i64
  %795 = getelementptr inbounds %struct.MVert, ptr %175, i64 %794
  %796 = getelementptr inbounds %struct.MVert, ptr %175, i64 %506
  %797 = load float, ptr %795, align 4, !tbaa !52
  %798 = load float, ptr %796, align 4, !tbaa !52
  %799 = fsub float %797, %798
  store float %799, ptr %7, align 4, !tbaa !52
  %800 = getelementptr inbounds float, ptr %795, i64 1
  %801 = load float, ptr %800, align 4, !tbaa !52
  %802 = getelementptr inbounds float, ptr %796, i64 1
  %803 = load float, ptr %802, align 4, !tbaa !52
  %804 = fsub float %801, %803
  store float %804, ptr %451, align 4, !tbaa !52
  %805 = getelementptr inbounds float, ptr %795, i64 2
  %806 = load float, ptr %805, align 4, !tbaa !52
  %807 = getelementptr inbounds float, ptr %796, i64 2
  %808 = load float, ptr %807, align 4, !tbaa !52
  %809 = fsub float %806, %808
  store float %809, ptr %452, align 4, !tbaa !52
  %810 = zext i32 %791 to i64
  %811 = getelementptr inbounds %struct.MVert, ptr %175, i64 %810
  %812 = load float, ptr %811, align 4, !tbaa !52
  %813 = fsub float %812, %798
  store float %813, ptr %8, align 4, !tbaa !52
  %814 = getelementptr inbounds float, ptr %811, i64 1
  %815 = load float, ptr %814, align 4, !tbaa !52
  %816 = fsub float %815, %803
  store float %816, ptr %453, align 4, !tbaa !52
  %817 = getelementptr inbounds float, ptr %811, i64 2
  %818 = load float, ptr %817, align 4, !tbaa !52
  %819 = fsub float %818, %808
  store float %819, ptr %454, align 4, !tbaa !52
  %820 = fmul float %804, %804
  %821 = call float @llvm.fmuladd.f32(float %799, float %799, float %820)
  %822 = call float @llvm.fmuladd.f32(float %809, float %809, float %821)
  %823 = fcmp ogt float %822, 0x38AA95A5C0000000
  br i1 %823, label %824, label %830

824:                                              ; preds = %793
  %825 = call float @sqrtf(float noundef %822) #8
  %826 = fdiv float 1.000000e+00, %825
  %827 = fmul float %799, %826
  store float %827, ptr %7, align 4, !tbaa !52
  %828 = fmul float %804, %826
  store float %828, ptr %451, align 4, !tbaa !52
  %829 = fmul float %809, %826
  br label %831

830:                                              ; preds = %793
  store float 0.000000e+00, ptr %7, align 4, !tbaa !52
  store float 0.000000e+00, ptr %451, align 4, !tbaa !52
  br label %831

831:                                              ; preds = %824, %830
  %832 = phi float [ 0.000000e+00, %830 ], [ %828, %824 ]
  %833 = phi float [ 0.000000e+00, %830 ], [ %827, %824 ]
  %834 = phi float [ 0.000000e+00, %830 ], [ %829, %824 ]
  store float %834, ptr %452, align 4, !tbaa !52
  %835 = fmul float %816, %816
  %836 = call float @llvm.fmuladd.f32(float %813, float %813, float %835)
  %837 = call float @llvm.fmuladd.f32(float %819, float %819, float %836)
  %838 = fcmp ogt float %837, 0x38AA95A5C0000000
  br i1 %838, label %839, label %845

839:                                              ; preds = %831
  %840 = call float @sqrtf(float noundef %837) #8
  %841 = fdiv float 1.000000e+00, %840
  %842 = fmul float %813, %841
  store float %842, ptr %8, align 4, !tbaa !52
  %843 = fmul float %816, %841
  store float %843, ptr %453, align 4, !tbaa !52
  %844 = fmul float %819, %841
  br label %846

845:                                              ; preds = %831
  store float 0.000000e+00, ptr %8, align 4, !tbaa !52
  store float 0.000000e+00, ptr %453, align 4, !tbaa !52
  br label %846

846:                                              ; preds = %839, %845
  %847 = phi float [ 0.000000e+00, %845 ], [ %843, %839 ]
  %848 = phi float [ 0.000000e+00, %845 ], [ %842, %839 ]
  %849 = phi float [ 0.000000e+00, %845 ], [ %844, %839 ]
  store float %849, ptr %454, align 4, !tbaa !52
  %850 = getelementptr inbounds %struct.ScrewVertConnect, ptr %507, i64 0, i32 4
  %851 = load ptr, ptr %850, align 8, !tbaa !59
  %852 = load i32, ptr %851, align 4, !tbaa !64
  %853 = zext i32 %852 to i64
  %854 = icmp eq i64 %506, %853
  br i1 %854, label %855, label %859

855:                                              ; preds = %846
  %856 = fsub float %833, %848
  store float %856, ptr %7, align 4, !tbaa !52
  %857 = fsub float %832, %847
  store float %857, ptr %451, align 4, !tbaa !52
  %858 = fsub float %834, %849
  store float %858, ptr %452, align 4, !tbaa !52
  br label %904

859:                                              ; preds = %846
  %860 = fsub float %848, %833
  store float %860, ptr %7, align 4, !tbaa !52
  %861 = fsub float %847, %832
  store float %861, ptr %451, align 4, !tbaa !52
  %862 = fsub float %849, %834
  store float %862, ptr %452, align 4, !tbaa !52
  br label %904

863:                                              ; preds = %789
  %864 = getelementptr inbounds %struct.ScrewVertConnect, ptr %507, i64 0, i32 4
  %865 = load ptr, ptr %864, align 8, !tbaa !59
  %866 = getelementptr inbounds %struct.MEdge, ptr %865, i64 0, i32 1
  %867 = load i32, ptr %866, align 4, !tbaa !66
  %868 = zext i32 %867 to i64
  %869 = icmp eq i64 %506, %868
  br i1 %869, label %870, label %887

870:                                              ; preds = %863
  %871 = getelementptr inbounds %struct.MVert, ptr %175, i64 %506
  %872 = zext i32 %787 to i64
  %873 = getelementptr inbounds %struct.MVert, ptr %175, i64 %872
  %874 = load float, ptr %871, align 4, !tbaa !52
  %875 = load float, ptr %873, align 4, !tbaa !52
  %876 = fsub float %874, %875
  store float %876, ptr %7, align 4, !tbaa !52
  %877 = getelementptr inbounds float, ptr %871, i64 1
  %878 = load float, ptr %877, align 4, !tbaa !52
  %879 = getelementptr inbounds float, ptr %873, i64 1
  %880 = load float, ptr %879, align 4, !tbaa !52
  %881 = fsub float %878, %880
  store float %881, ptr %449, align 4, !tbaa !52
  %882 = getelementptr inbounds float, ptr %871, i64 2
  %883 = load float, ptr %882, align 4, !tbaa !52
  %884 = getelementptr inbounds float, ptr %873, i64 2
  %885 = load float, ptr %884, align 4, !tbaa !52
  %886 = fsub float %883, %885
  store float %886, ptr %450, align 4, !tbaa !52
  br label %904

887:                                              ; preds = %863
  %888 = zext i32 %787 to i64
  %889 = getelementptr inbounds %struct.MVert, ptr %175, i64 %888
  %890 = getelementptr inbounds %struct.MVert, ptr %175, i64 %506
  %891 = load float, ptr %889, align 4, !tbaa !52
  %892 = load float, ptr %890, align 4, !tbaa !52
  %893 = fsub float %891, %892
  store float %893, ptr %7, align 4, !tbaa !52
  %894 = getelementptr inbounds float, ptr %889, i64 1
  %895 = load float, ptr %894, align 4, !tbaa !52
  %896 = getelementptr inbounds float, ptr %890, i64 1
  %897 = load float, ptr %896, align 4, !tbaa !52
  %898 = fsub float %895, %897
  store float %898, ptr %447, align 4, !tbaa !52
  %899 = getelementptr inbounds float, ptr %889, i64 2
  %900 = load float, ptr %899, align 4, !tbaa !52
  %901 = getelementptr inbounds float, ptr %890, i64 2
  %902 = load float, ptr %901, align 4, !tbaa !52
  %903 = fsub float %900, %902
  store float %903, ptr %448, align 4, !tbaa !52
  br label %904

904:                                              ; preds = %870, %887, %855, %859
  %905 = phi float [ %886, %870 ], [ %903, %887 ], [ %858, %855 ], [ %862, %859 ]
  %906 = phi float [ %881, %870 ], [ %898, %887 ], [ %857, %855 ], [ %861, %859 ]
  %907 = phi float [ %876, %870 ], [ %893, %887 ], [ %856, %855 ], [ %860, %859 ]
  %908 = getelementptr inbounds %struct.ScrewVertConnect, ptr %507, i64 0, i32 1
  %909 = load float, ptr %455, align 4, !tbaa !52
  %910 = getelementptr inbounds %struct.ScrewVertConnect, ptr %507, i64 0, i32 1, i64 2
  %911 = load float, ptr %910, align 4, !tbaa !52
  %912 = load float, ptr %456, align 4, !tbaa !52
  %913 = getelementptr inbounds %struct.ScrewVertConnect, ptr %507, i64 0, i32 1, i64 1
  %914 = load float, ptr %913, align 4, !tbaa !52
  %915 = fneg float %912
  %916 = fmul float %914, %915
  %917 = call float @llvm.fmuladd.f32(float %909, float %911, float %916)
  store float %917, ptr %8, align 4, !tbaa !52
  %918 = load float, ptr %908, align 4, !tbaa !52
  %919 = load float, ptr %6, align 4, !tbaa !52
  %920 = fneg float %919
  %921 = fmul float %911, %920
  %922 = call float @llvm.fmuladd.f32(float %912, float %918, float %921)
  store float %922, ptr %457, align 4, !tbaa !52
  %923 = fneg float %909
  %924 = fmul float %918, %923
  %925 = call float @llvm.fmuladd.f32(float %919, float %914, float %924)
  store float %925, ptr %458, align 4, !tbaa !52
  %926 = fcmp une float %917, 0.000000e+00
  %927 = fcmp une float %922, 0.000000e+00
  %928 = select i1 %926, i1 true, i1 %927
  %929 = fcmp une float %925, 0.000000e+00
  %930 = select i1 %928, i1 true, i1 %929
  br i1 %930, label %943, label %931

931:                                              ; preds = %904
  %932 = getelementptr inbounds %struct.ScrewVertConnect, ptr %507, i64 0, i32 4
  %933 = load ptr, ptr %932, align 8, !tbaa !59
  %934 = getelementptr inbounds %struct.MEdge, ptr %933, i64 0, i32 1
  %935 = load i32, ptr %934, align 4, !tbaa !66
  %936 = zext i32 %935 to i64
  %937 = icmp eq i64 %506, %936
  %938 = getelementptr inbounds %struct.ScrewVertConnect, ptr %507, i64 0, i32 2
  %939 = getelementptr inbounds %struct.ScrewVertConnect, ptr %507, i64 0, i32 2, i64 1
  %940 = getelementptr inbounds %struct.ScrewVertConnect, ptr %507, i64 0, i32 2, i64 2
  br i1 %937, label %941, label %942

941:                                              ; preds = %931
  store float %920, ptr %938, align 4, !tbaa !52
  store float %923, ptr %939, align 4, !tbaa !52
  store float %915, ptr %940, align 4, !tbaa !52
  br label %966

942:                                              ; preds = %931
  store float %919, ptr %938, align 4, !tbaa !52
  store float %909, ptr %939, align 4, !tbaa !52
  store float %912, ptr %940, align 4, !tbaa !52
  br label %966

943:                                              ; preds = %904
  %944 = getelementptr inbounds %struct.ScrewVertConnect, ptr %507, i64 0, i32 2
  %945 = fneg float %905
  %946 = fmul float %922, %945
  %947 = call float @llvm.fmuladd.f32(float %906, float %925, float %946)
  store float %947, ptr %944, align 4, !tbaa !52
  %948 = fneg float %907
  %949 = fmul float %925, %948
  %950 = call float @llvm.fmuladd.f32(float %905, float %917, float %949)
  %951 = getelementptr inbounds %struct.ScrewVertConnect, ptr %507, i64 0, i32 2, i64 1
  store float %950, ptr %951, align 4, !tbaa !52
  %952 = fneg float %906
  %953 = fmul float %917, %952
  %954 = call float @llvm.fmuladd.f32(float %907, float %922, float %953)
  %955 = getelementptr inbounds %struct.ScrewVertConnect, ptr %507, i64 0, i32 2, i64 2
  store float %954, ptr %955, align 4, !tbaa !52
  br label %966

956:                                              ; preds = %784
  %957 = getelementptr inbounds %struct.ScrewVertConnect, ptr %507, i64 0, i32 2
  %958 = getelementptr inbounds %struct.ScrewVertConnect, ptr %507, i64 0, i32 1
  %959 = load float, ptr %958, align 4, !tbaa !52
  store float %959, ptr %957, align 4, !tbaa !52
  %960 = getelementptr inbounds %struct.ScrewVertConnect, ptr %507, i64 0, i32 1, i64 1
  %961 = load float, ptr %960, align 4, !tbaa !52
  %962 = getelementptr inbounds %struct.ScrewVertConnect, ptr %507, i64 0, i32 2, i64 1
  store float %961, ptr %962, align 4, !tbaa !52
  %963 = getelementptr inbounds %struct.ScrewVertConnect, ptr %507, i64 0, i32 1, i64 2
  %964 = load float, ptr %963, align 4, !tbaa !52
  %965 = getelementptr inbounds %struct.ScrewVertConnect, ptr %507, i64 0, i32 2, i64 2
  store float %964, ptr %965, align 4, !tbaa !52
  br label %966

966:                                              ; preds = %943, %942, %941, %956
  br i1 %459, label %967, label %977

967:                                              ; preds = %966
  %968 = getelementptr inbounds %struct.ScrewVertConnect, ptr %507, i64 0, i32 2
  %969 = load float, ptr %968, align 4, !tbaa !52
  %970 = fneg float %969
  store float %970, ptr %968, align 4, !tbaa !52
  %971 = getelementptr inbounds %struct.ScrewVertConnect, ptr %507, i64 0, i32 2, i64 1
  %972 = load float, ptr %971, align 4, !tbaa !52
  %973 = fneg float %972
  store float %973, ptr %971, align 4, !tbaa !52
  %974 = getelementptr inbounds %struct.ScrewVertConnect, ptr %507, i64 0, i32 2, i64 2
  %975 = load float, ptr %974, align 4, !tbaa !52
  %976 = fneg float %975
  store float %976, ptr %974, align 4, !tbaa !52
  br label %977

977:                                              ; preds = %967, %966
  %978 = getelementptr inbounds %struct.ScrewVertConnect, ptr %507, i64 0, i32 2
  %979 = load float, ptr %978, align 4, !tbaa !52
  %980 = getelementptr inbounds %struct.ScrewVertConnect, ptr %507, i64 0, i32 2, i64 1
  %981 = load float, ptr %980, align 4, !tbaa !52
  %982 = fmul float %981, %981
  %983 = call float @llvm.fmuladd.f32(float %979, float %979, float %982)
  %984 = getelementptr inbounds %struct.ScrewVertConnect, ptr %507, i64 0, i32 2, i64 2
  %985 = load float, ptr %984, align 4, !tbaa !52
  %986 = call float @llvm.fmuladd.f32(float %985, float %985, float %983)
  %987 = fcmp ogt float %986, 0x38AA95A5C0000000
  br i1 %987, label %988, label %997

988:                                              ; preds = %977
  %989 = call float @sqrtf(float noundef %986) #8
  %990 = fdiv float 1.000000e+00, %989
  %991 = load float, ptr %978, align 4, !tbaa !52
  %992 = fmul float %991, %990
  store float %992, ptr %978, align 4, !tbaa !52
  %993 = load float, ptr %980, align 4, !tbaa !52
  %994 = fmul float %990, %993
  store float %994, ptr %980, align 4, !tbaa !52
  %995 = load float, ptr %984, align 4, !tbaa !52
  %996 = fmul float %990, %995
  br label %998

997:                                              ; preds = %977
  store float 0.000000e+00, ptr %978, align 4, !tbaa !52
  store float 0.000000e+00, ptr %980, align 4, !tbaa !52
  br label %998

998:                                              ; preds = %988, %997
  %999 = phi float [ 0.000000e+00, %997 ], [ %996, %988 ]
  store float %999, ptr %984, align 4, !tbaa !52
  %1000 = getelementptr inbounds %struct.MVert, ptr %175, i64 %506, i32 1
  %1001 = load float, ptr %978, align 4, !tbaa !52
  %1002 = fmul float %1001, 3.276700e+04
  %1003 = fptosi float %1002 to i16
  store i16 %1003, ptr %1000, align 2, !tbaa !89
  %1004 = load float, ptr %980, align 4, !tbaa !52
  %1005 = fmul float %1004, 3.276700e+04
  %1006 = fptosi float %1005 to i16
  %1007 = getelementptr inbounds i16, ptr %1000, i64 1
  store i16 %1006, ptr %1007, align 2, !tbaa !89
  %1008 = fmul float %999, 3.276700e+04
  %1009 = fptosi float %1008 to i16
  %1010 = getelementptr inbounds i16, ptr %1000, i64 2
  store i16 %1009, ptr %1010, align 2, !tbaa !89
  %1011 = add nuw nsw i64 %506, 1
  %1012 = getelementptr inbounds %struct.ScrewVertConnect, ptr %507, i64 1
  %1013 = icmp eq i64 %1011, %461
  br i1 %1013, label %1029, label %505, !llvm.loop !90

1014:                                             ; preds = %332, %1014
  %1015 = phi i32 [ %1025, %1014 ], [ 0, %332 ]
  %1016 = phi ptr [ %1026, %1014 ], [ %175, %332 ]
  %1017 = phi ptr [ %1027, %1014 ], [ %169, %332 ]
  %1018 = load float, ptr %1017, align 4, !tbaa !52
  store float %1018, ptr %1016, align 4, !tbaa !52
  %1019 = getelementptr inbounds float, ptr %1017, i64 1
  %1020 = load float, ptr %1019, align 4, !tbaa !52
  %1021 = getelementptr inbounds float, ptr %1016, i64 1
  store float %1020, ptr %1021, align 4, !tbaa !52
  %1022 = getelementptr inbounds float, ptr %1017, i64 2
  %1023 = load float, ptr %1022, align 4, !tbaa !52
  %1024 = getelementptr inbounds float, ptr %1016, i64 2
  store float %1023, ptr %1024, align 4, !tbaa !52
  %1025 = add nuw i32 %1015, 1
  %1026 = getelementptr inbounds %struct.MVert, ptr %1016, i64 1
  %1027 = getelementptr inbounds %struct.MVert, ptr %1017, i64 1
  %1028 = icmp eq i32 %1025, %333
  br i1 %1028, label %1029, label %1014, !llvm.loop !91

1029:                                             ; preds = %998, %372, %1014
  %1030 = phi ptr [ %270, %1014 ], [ %270, %372 ], [ %503, %998 ]
  %1031 = phi ptr [ null, %1014 ], [ %338, %372 ], [ %338, %998 ]
  %1032 = sext i1 %153 to i32
  %1033 = add i32 %157, %1032
  %1034 = uitofp i32 %1033 to float
  %1035 = fdiv float %125, %1034
  %1036 = fcmp une float %152, 0.000000e+00
  %1037 = getelementptr inbounds [4 x [4 x float]], ptr %17, i64 0, i64 3
  %1038 = add i32 %157, -1
  %1039 = uitofp i32 %1038 to float
  %1040 = getelementptr inbounds float, ptr %6, i64 1
  %1041 = getelementptr inbounds [4 x [4 x float]], ptr %17, i64 0, i64 3, i64 1
  %1042 = getelementptr inbounds float, ptr %6, i64 2
  %1043 = getelementptr inbounds [4 x [4 x float]], ptr %17, i64 0, i64 3, i64 2
  %1044 = icmp eq ptr %1031, null
  %1045 = getelementptr inbounds float, ptr %16, i64 1
  %1046 = getelementptr inbounds float, ptr %16, i64 2
  %1047 = getelementptr inbounds [4 x [4 x float]], ptr %10, i64 0, i64 3
  %1048 = getelementptr inbounds [4 x [4 x float]], ptr %10, i64 0, i64 3, i64 1
  %1049 = getelementptr inbounds [4 x [4 x float]], ptr %10, i64 0, i64 3, i64 2
  %1050 = call i32 @llvm.umax.i32(i32 %36, i32 1)
  %1051 = zext i32 %157 to i64
  %1052 = zext i32 %1050 to i64
  br label %1053

1053:                                             ; preds = %1029, %1138
  %1054 = phi i64 [ 1, %1029 ], [ %1139, %1138 ]
  %1055 = phi ptr [ %1030, %1029 ], [ %1133, %1138 ]
  %1056 = trunc i64 %1054 to i32
  %1057 = mul i32 %36, %1056
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %17) #8
  %1058 = trunc i64 %1054 to i32
  %1059 = uitofp i32 %1058 to float
  %1060 = fmul float %1035, %1059
  %1061 = load ptr, ptr %69, align 8, !tbaa !53
  %1062 = icmp eq ptr %1061, null
  br i1 %1062, label %1064, label %1063

1063:                                             ; preds = %1053
  call void @axis_angle_normalized_to_mat3(ptr noundef nonnull %9, ptr noundef nonnull %6, float noundef %1060) #8
  call void @copy_m4_m3(ptr noundef nonnull %17, ptr noundef nonnull %9) #8
  br label %1065

1064:                                             ; preds = %1053
  call void @unit_m4(ptr noundef nonnull %17) #8
  call void @rotate_m4(ptr noundef nonnull %17, i8 noundef zeroext %121, float noundef %1060) #8
  call void @copy_m3_m4(ptr noundef nonnull %9, ptr noundef nonnull %17) #8
  br label %1065

1065:                                             ; preds = %1064, %1063
  br i1 %1036, label %1066, label %1078

1066:                                             ; preds = %1065
  %1067 = fdiv float %1059, %1039
  %1068 = fmul float %152, %1067
  %1069 = load float, ptr %6, align 4, !tbaa !52
  %1070 = load float, ptr %1037, align 16, !tbaa !52
  %1071 = call float @llvm.fmuladd.f32(float %1069, float %1068, float %1070)
  store float %1071, ptr %1037, align 16, !tbaa !52
  %1072 = load float, ptr %1040, align 4, !tbaa !52
  %1073 = load float, ptr %1041, align 4, !tbaa !52
  %1074 = call float @llvm.fmuladd.f32(float %1072, float %1068, float %1073)
  store float %1074, ptr %1041, align 4, !tbaa !52
  %1075 = load float, ptr %1042, align 4, !tbaa !52
  %1076 = load float, ptr %1043, align 8, !tbaa !52
  %1077 = call float @llvm.fmuladd.f32(float %1075, float %1068, float %1076)
  store float %1077, ptr %1043, align 8, !tbaa !52
  br label %1078

1078:                                             ; preds = %1066, %1065
  call void @DM_copy_vert_data(ptr noundef %2, ptr noundef %166, i32 noundef 0, i32 noundef %1057, i32 noundef %36) #8
  %1079 = zext i32 %1057 to i64
  %1080 = getelementptr inbounds %struct.MVert, ptr %175, i64 %1079
  br label %1081

1081:                                             ; preds = %1078, %1127
  %1082 = phi i64 [ 0, %1078 ], [ %1134, %1127 ]
  %1083 = phi ptr [ %1055, %1078 ], [ %1133, %1127 ]
  %1084 = phi ptr [ %175, %1078 ], [ %1135, %1127 ]
  %1085 = phi ptr [ %1080, %1078 ], [ %1136, %1127 ]
  br i1 %1044, label %1100, label %1086

1086:                                             ; preds = %1081
  %1087 = getelementptr inbounds %struct.ScrewVertConnect, ptr %1031, i64 %1082, i32 2
  call void @mul_v3_m3v3(ptr noundef nonnull %16, ptr noundef nonnull %9, ptr noundef nonnull %1087) #8
  %1088 = getelementptr inbounds %struct.MVert, ptr %1085, i64 0, i32 1
  %1089 = load float, ptr %16, align 4, !tbaa !52
  %1090 = fmul float %1089, 3.276700e+04
  %1091 = fptosi float %1090 to i16
  store i16 %1091, ptr %1088, align 2, !tbaa !89
  %1092 = load float, ptr %1045, align 4, !tbaa !52
  %1093 = fmul float %1092, 3.276700e+04
  %1094 = fptosi float %1093 to i16
  %1095 = getelementptr inbounds %struct.MVert, ptr %1085, i64 0, i32 1, i64 1
  store i16 %1094, ptr %1095, align 2, !tbaa !89
  %1096 = load float, ptr %1046, align 4, !tbaa !52
  %1097 = fmul float %1096, 3.276700e+04
  %1098 = fptosi float %1097 to i16
  %1099 = getelementptr inbounds %struct.MVert, ptr %1085, i64 0, i32 1, i64 2
  store i16 %1098, ptr %1099, align 2, !tbaa !89
  br label %1100

1100:                                             ; preds = %1086, %1081
  %1101 = load float, ptr %1084, align 4, !tbaa !52
  store float %1101, ptr %1085, align 4, !tbaa !52
  %1102 = getelementptr inbounds float, ptr %1084, i64 1
  %1103 = load float, ptr %1102, align 4, !tbaa !52
  %1104 = getelementptr inbounds float, ptr %1085, i64 1
  store float %1103, ptr %1104, align 4, !tbaa !52
  %1105 = getelementptr inbounds float, ptr %1084, i64 2
  %1106 = load float, ptr %1105, align 4, !tbaa !52
  %1107 = getelementptr inbounds float, ptr %1085, i64 2
  store float %1106, ptr %1107, align 4, !tbaa !52
  %1108 = load ptr, ptr %69, align 8, !tbaa !53
  %1109 = icmp eq ptr %1108, null
  br i1 %1109, label %1126, label %1110

1110:                                             ; preds = %1100
  %1111 = load float, ptr %1047, align 16, !tbaa !52
  %1112 = fsub float %1101, %1111
  store float %1112, ptr %1085, align 4, !tbaa !52
  %1113 = load float, ptr %1048, align 4, !tbaa !52
  %1114 = fsub float %1103, %1113
  store float %1114, ptr %1104, align 4, !tbaa !52
  %1115 = load float, ptr %1049, align 8, !tbaa !52
  %1116 = fsub float %1106, %1115
  store float %1116, ptr %1107, align 4, !tbaa !52
  call void @mul_m4_v3(ptr noundef nonnull %17, ptr noundef nonnull %1085) #8
  %1117 = load float, ptr %1047, align 16, !tbaa !52
  %1118 = load float, ptr %1085, align 4, !tbaa !52
  %1119 = fadd float %1117, %1118
  store float %1119, ptr %1085, align 4, !tbaa !52
  %1120 = load float, ptr %1048, align 4, !tbaa !52
  %1121 = load float, ptr %1104, align 4, !tbaa !52
  %1122 = fadd float %1120, %1121
  store float %1122, ptr %1104, align 4, !tbaa !52
  %1123 = load float, ptr %1049, align 8, !tbaa !52
  %1124 = load float, ptr %1107, align 4, !tbaa !52
  %1125 = fadd float %1123, %1124
  store float %1125, ptr %1107, align 4, !tbaa !52
  br label %1127

1126:                                             ; preds = %1100
  call void @mul_m4_v3(ptr noundef nonnull %17, ptr noundef nonnull %1085) #8
  br label %1127

1127:                                             ; preds = %1126, %1110
  %1128 = trunc i64 %1082 to i32
  %1129 = add i32 %1057, %1128
  store i32 %1129, ptr %1083, align 4, !tbaa !64
  %1130 = sub i32 %1129, %36
  %1131 = getelementptr inbounds %struct.MEdge, ptr %1083, i64 0, i32 1
  store i32 %1130, ptr %1131, align 4, !tbaa !66
  %1132 = getelementptr inbounds %struct.MEdge, ptr %1083, i64 0, i32 4
  store i16 34, ptr %1132, align 2, !tbaa !68
  %1133 = getelementptr inbounds %struct.MEdge, ptr %1083, i64 1
  %1134 = add nuw nsw i64 %1082, 1
  %1135 = getelementptr inbounds %struct.MVert, ptr %1084, i64 1
  %1136 = getelementptr inbounds %struct.MVert, ptr %1085, i64 1
  %1137 = icmp eq i64 %1134, %1052
  br i1 %1137, label %1138, label %1081, !llvm.loop !92

1138:                                             ; preds = %1127
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %17) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #8
  %1139 = add nuw nsw i64 %1054, 1
  %1140 = icmp eq i64 %1139, %1051
  br i1 %1140, label %1141, label %1053, !llvm.loop !93

1141:                                             ; preds = %1138
  %1142 = icmp eq ptr %1031, null
  br i1 %1142, label %1145, label %1143

1143:                                             ; preds = %1141
  %1144 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  call void %1144(ptr noundef nonnull %1031) #8
  br label %1145

1145:                                             ; preds = %1143, %1141
  br i1 %153, label %1159, label %1146

1146:                                             ; preds = %1145
  %1147 = add i32 %157, -1
  %1148 = mul i32 %1147, %36
  %1149 = call i32 @llvm.umax.i32(i32 %36, i32 1)
  br label %1150

1150:                                             ; preds = %1146, %1150
  %1151 = phi i32 [ %1157, %1150 ], [ 0, %1146 ]
  %1152 = phi ptr [ %1156, %1150 ], [ %1133, %1146 ]
  store i32 %1151, ptr %1152, align 4, !tbaa !64
  %1153 = add i32 %1151, %1148
  %1154 = getelementptr inbounds %struct.MEdge, ptr %1152, i64 0, i32 1
  store i32 %1153, ptr %1154, align 4, !tbaa !66
  %1155 = getelementptr inbounds %struct.MEdge, ptr %1152, i64 0, i32 4
  store i16 34, ptr %1155, align 2, !tbaa !68
  %1156 = getelementptr inbounds %struct.MEdge, ptr %1152, i64 1
  %1157 = add nuw i32 %1151, 1
  %1158 = icmp eq i32 %1157, %1149
  br i1 %1158, label %1159, label %1150, !llvm.loop !94

1159:                                             ; preds = %1150, %1145
  %1160 = phi ptr [ %1133, %1145 ], [ %1156, %1150 ]
  %1161 = sext i1 %153 to i32
  %1162 = add i32 %157, %1161
  %1163 = mul i32 %1162, %36
  %1164 = add i32 %1163, %39
  %1165 = icmp eq i32 %39, 0
  br i1 %1165, label %1423, label %1166

1166:                                             ; preds = %1159
  %1167 = select i1 %153, i32 -2, i32 -1
  %1168 = add i32 %157, %1167
  %1169 = icmp eq ptr %327, null
  %1170 = ptrtoint ptr %181 to i64
  %1171 = zext nneg i32 %28 to i64
  %1172 = zext nneg i32 %29 to i64
  %1173 = zext nneg i32 %30 to i64
  %1174 = zext nneg i32 %31 to i64
  %1175 = ptrtoint ptr %181 to i64
  %1176 = zext nneg i32 %28 to i64
  %1177 = zext nneg i32 %29 to i64
  %1178 = zext nneg i32 %30 to i64
  %1179 = zext nneg i32 %31 to i64
  %1180 = zext nneg i32 %28 to i64
  %1181 = zext nneg i32 %29 to i64
  %1182 = zext nneg i32 %30 to i64
  %1183 = zext nneg i32 %31 to i64
  %1184 = add i32 %157, -1
  %1185 = add i32 %1164, -1
  %1186 = zext nneg i16 %32 to i64
  %1187 = zext nneg i16 %33 to i64
  %1188 = zext nneg i32 %28 to i64
  %1189 = zext nneg i32 %29 to i64
  %1190 = zext nneg i32 %30 to i64
  %1191 = zext nneg i32 %31 to i64
  %1192 = add i32 %157, -1
  %1193 = add i32 %1164, -1
  %1194 = zext nneg i16 %32 to i64
  %1195 = add i32 %157, -1
  %1196 = zext nneg i16 %33 to i64
  %1197 = add i32 %1167, %157
  %1198 = zext i32 %39 to i64
  %1199 = zext i32 %44 to i64
  %1200 = zext i32 %44 to i64
  br label %1201

1201:                                             ; preds = %1166, %1410
  %1202 = phi i64 [ 0, %1166 ], [ %1420, %1410 ]
  %1203 = phi i64 [ 0, %1166 ], [ %1407, %1410 ]
  %1204 = phi float [ undef, %1166 ], [ %1264, %1410 ]
  %1205 = phi float [ undef, %1166 ], [ %1263, %1410 ]
  %1206 = phi ptr [ %178, %1166 ], [ %1405, %1410 ]
  %1207 = phi ptr [ %181, %1166 ], [ %1406, %1410 ]
  %1208 = phi ptr [ %1160, %1166 ], [ %1419, %1410 ]
  %1209 = phi ptr [ %184, %1166 ], [ %1421, %1410 ]
  br i1 %271, label %1213, label %1210

1210:                                             ; preds = %1201
  %1211 = getelementptr inbounds i32, ptr %328, i64 %1202
  %1212 = load i32, ptr %1211, align 4, !tbaa !34
  br label %1213

1213:                                             ; preds = %1201, %1210
  %1214 = phi i32 [ %1212, %1210 ], [ -1, %1201 ]
  %1215 = icmp eq i32 %1214, -1
  br i1 %1169, label %1222, label %1216

1216:                                             ; preds = %1213
  %1217 = getelementptr inbounds %struct.MEdge, ptr %184, i64 %1202
  %1218 = load i32, ptr %1217, align 4, !tbaa !64
  %1219 = zext i32 %1218 to i64
  %1220 = getelementptr inbounds i32, ptr %327, i64 %1219
  %1221 = load i32, ptr %1220, align 4, !tbaa !34
  br label %1222

1222:                                             ; preds = %1213, %1216
  %1223 = phi i32 [ %1221, %1216 ], [ -1, %1213 ]
  br i1 %1169, label %1230, label %1224

1224:                                             ; preds = %1222
  %1225 = getelementptr inbounds %struct.MEdge, ptr %184, i64 %1202, i32 1
  %1226 = load i32, ptr %1225, align 4, !tbaa !66
  %1227 = zext i32 %1226 to i64
  %1228 = getelementptr inbounds i32, ptr %327, i64 %1227
  %1229 = load i32, ptr %1228, align 4, !tbaa !34
  br label %1230

1230:                                             ; preds = %1222, %1224
  %1231 = phi i32 [ %1229, %1224 ], [ -1, %1222 ]
  %1232 = icmp ne i32 %1223, -1
  %1233 = load i32, ptr %1209, align 4, !tbaa !64
  %1234 = getelementptr inbounds %struct.MEdge, ptr %1209, i64 0, i32 1
  %1235 = load i32, ptr %1234, align 4, !tbaa !66
  br i1 %1215, label %1240, label %1236

1236:                                             ; preds = %1230
  %1237 = zext i32 %1214 to i64
  %1238 = getelementptr inbounds %struct.MPoly, ptr %326, i64 %1237, i32 2
  %1239 = load i16, ptr %1238, align 4, !tbaa !95
  br label %1240

1240:                                             ; preds = %1230, %1236
  %1241 = phi i16 [ %1239, %1236 ], [ 0, %1230 ]
  %1242 = or i1 %192, %1232
  br i1 %1242, label %1262, label %1243

1243:                                             ; preds = %1240
  %1244 = getelementptr inbounds %struct.MEdge, ptr %184, i64 %1202
  %1245 = load i32, ptr %1244, align 4, !tbaa !64
  %1246 = zext i32 %1245 to i64
  %1247 = getelementptr inbounds %struct.MVert, ptr %175, i64 %1246
  %1248 = call float @dist_signed_to_plane_v3(ptr noundef %1247, ptr noundef nonnull %5) #8
  %1249 = getelementptr inbounds %struct.MEdge, ptr %184, i64 %1202, i32 1
  %1250 = load i32, ptr %1249, align 4, !tbaa !66
  %1251 = zext i32 %1250 to i64
  %1252 = getelementptr inbounds %struct.MVert, ptr %175, i64 %1251
  %1253 = call float @dist_signed_to_plane_v3(ptr noundef %1252, ptr noundef nonnull %5) #8
  %1254 = load i16, ptr %24, align 2, !tbaa !38
  %1255 = and i16 %1254, 128
  %1256 = icmp eq i16 %1255, 0
  br i1 %1256, label %1262, label %1257

1257:                                             ; preds = %1243
  %1258 = fsub float %1248, %248
  %1259 = fmul float %247, %1258
  %1260 = fsub float %1253, %248
  %1261 = fmul float %247, %1260
  br label %1262

1262:                                             ; preds = %1243, %1257, %1240
  %1263 = phi float [ %1259, %1257 ], [ %1248, %1243 ], [ %1205, %1240 ]
  %1264 = phi float [ %1261, %1257 ], [ %1253, %1243 ], [ %1204, %1240 ]
  %1265 = trunc i64 %1202 to i32
  %1266 = mul i32 %1184, %1265
  %1267 = add i32 %1185, %1266
  %1268 = trunc i64 %1202 to i32
  %1269 = mul i32 %1192, %1268
  %1270 = add i32 %1193, %1269
  %1271 = trunc i64 %1202 to i32
  %1272 = mul i32 %1195, %1271
  %1273 = add i32 %1272, %1164
  %1274 = getelementptr inbounds %struct.MEdge, ptr %1209, i64 0, i32 4
  %1275 = getelementptr inbounds %struct.MEdge, ptr %1209, i64 0, i32 2
  %1276 = shl i64 %1203, 32
  %1277 = ashr exact i64 %1276, 32
  %1278 = trunc i64 %1202 to i32
  %1279 = trunc i64 %1202 to i32
  br label %1280

1280:                                             ; preds = %1262, %1401
  %1281 = phi i64 [ %1277, %1262 ], [ %1407, %1401 ]
  %1282 = phi i32 [ 0, %1262 ], [ %1408, %1401 ]
  %1283 = phi i32 [ %1233, %1262 ], [ %1404, %1401 ]
  %1284 = phi i32 [ %1235, %1262 ], [ %1403, %1401 ]
  %1285 = phi ptr [ %1206, %1262 ], [ %1405, %1401 ]
  %1286 = phi ptr [ %1207, %1262 ], [ %1406, %1401 ]
  %1287 = phi ptr [ %1208, %1262 ], [ %1402, %1401 ]
  br i1 %1215, label %1291, label %1288

1288:                                             ; preds = %1280
  %1289 = trunc i64 %1281 to i32
  call void @DM_copy_poly_data(ptr noundef %2, ptr noundef %166, i32 noundef %1214, i32 noundef %1289, i32 noundef 1) #8
  %1290 = getelementptr inbounds i32, ptr %191, i64 %1281
  store i32 %1214, ptr %1290, align 4, !tbaa !34
  br label %1295

1291:                                             ; preds = %1280
  %1292 = getelementptr inbounds i32, ptr %191, i64 %1281
  store i32 -1, ptr %1292, align 4, !tbaa !34
  %1293 = getelementptr inbounds %struct.MPoly, ptr %1285, i64 0, i32 3
  store i8 %55, ptr %1293, align 2, !tbaa !96
  %1294 = getelementptr inbounds %struct.MPoly, ptr %1285, i64 0, i32 2
  store i16 %1241, ptr %1294, align 4, !tbaa !95
  br label %1295

1295:                                             ; preds = %1291, %1288
  %1296 = trunc i64 %1281 to i32
  %1297 = shl nsw i32 %1296, 2
  store i32 %1297, ptr %1285, align 4, !tbaa !70
  %1298 = getelementptr inbounds %struct.MPoly, ptr %1285, i64 0, i32 1
  store i32 4, ptr %1298, align 4, !tbaa !72
  br i1 %1232, label %1299, label %1334

1299:                                             ; preds = %1295
  %1300 = ptrtoint ptr %1286 to i64
  %1301 = sub i64 %1300, %1175
  %1302 = lshr exact i64 %1301, 3
  %1303 = trunc i64 %1302 to i32
  call void @DM_copy_loop_data(ptr noundef %2, ptr noundef %166, i32 noundef %1223, i32 noundef %1303, i32 noundef 1) #8
  %1304 = add nsw i32 %1303, 1
  call void @DM_copy_loop_data(ptr noundef %2, ptr noundef %166, i32 noundef %1231, i32 noundef %1304, i32 noundef 1) #8
  %1305 = add nsw i32 %1303, 2
  call void @DM_copy_loop_data(ptr noundef %2, ptr noundef %166, i32 noundef %1231, i32 noundef %1305, i32 noundef 1) #8
  %1306 = add nsw i32 %1303, 3
  call void @DM_copy_loop_data(ptr noundef %2, ptr noundef %166, i32 noundef %1223, i32 noundef %1306, i32 noundef 1) #8
  br i1 %192, label %1360, label %1307

1307:                                             ; preds = %1299
  %1308 = uitofp i32 %1282 to float
  %1309 = fmul float %164, %1308
  %1310 = add nuw i32 %1282, 1
  %1311 = uitofp i32 %1310 to float
  %1312 = fmul float %164, %1311
  %1313 = shl i64 %1301, 29
  %1314 = ashr i64 %1313, 32
  br label %1315

1315:                                             ; preds = %1307, %1315
  %1316 = phi i64 [ 0, %1307 ], [ %1332, %1315 ]
  %1317 = getelementptr inbounds ptr, ptr %47, i64 %1316
  %1318 = load ptr, ptr %1317, align 8, !tbaa !59
  %1319 = getelementptr inbounds %struct.MLoopUV, ptr %1318, i64 %1314
  %1320 = getelementptr inbounds %struct.MLoopUV, ptr %1319, i64 %1176
  %1321 = load float, ptr %1320, align 4, !tbaa !52
  %1322 = fadd float %1309, %1321
  store float %1322, ptr %1320, align 4, !tbaa !52
  %1323 = getelementptr inbounds %struct.MLoopUV, ptr %1319, i64 %1177
  %1324 = load float, ptr %1323, align 4, !tbaa !52
  %1325 = fadd float %1309, %1324
  store float %1325, ptr %1323, align 4, !tbaa !52
  %1326 = getelementptr inbounds %struct.MLoopUV, ptr %1319, i64 %1178
  %1327 = load float, ptr %1326, align 4, !tbaa !52
  %1328 = fadd float %1312, %1327
  store float %1328, ptr %1326, align 4, !tbaa !52
  %1329 = getelementptr inbounds %struct.MLoopUV, ptr %1319, i64 %1179
  %1330 = load float, ptr %1329, align 4, !tbaa !52
  %1331 = fadd float %1312, %1330
  store float %1331, ptr %1329, align 4, !tbaa !52
  %1332 = add nuw nsw i64 %1316, 1
  %1333 = icmp eq i64 %1332, %1200
  br i1 %1333, label %1360, label %1315, !llvm.loop !97

1334:                                             ; preds = %1295
  br i1 %192, label %1360, label %1335

1335:                                             ; preds = %1334
  %1336 = ptrtoint ptr %1286 to i64
  %1337 = sub i64 %1336, %1170
  %1338 = uitofp i32 %1282 to float
  %1339 = fmul float %164, %1338
  %1340 = add nuw i32 %1282, 1
  %1341 = uitofp i32 %1340 to float
  %1342 = fmul float %164, %1341
  %1343 = shl i64 %1337, 29
  %1344 = ashr i64 %1343, 32
  br label %1345

1345:                                             ; preds = %1335, %1345
  %1346 = phi i64 [ 0, %1335 ], [ %1358, %1345 ]
  %1347 = getelementptr inbounds ptr, ptr %47, i64 %1346
  %1348 = load ptr, ptr %1347, align 8, !tbaa !59
  %1349 = getelementptr inbounds %struct.MLoopUV, ptr %1348, i64 %1344
  %1350 = getelementptr inbounds %struct.MLoopUV, ptr %1349, i64 %1171
  store float %1339, ptr %1350, align 4, !tbaa !52
  %1351 = getelementptr inbounds float, ptr %1350, i64 1
  store float %1263, ptr %1351, align 4, !tbaa !52
  %1352 = getelementptr inbounds %struct.MLoopUV, ptr %1349, i64 %1172
  store float %1339, ptr %1352, align 4, !tbaa !52
  %1353 = getelementptr inbounds float, ptr %1352, i64 1
  store float %1264, ptr %1353, align 4, !tbaa !52
  %1354 = getelementptr inbounds %struct.MLoopUV, ptr %1349, i64 %1173
  store float %1342, ptr %1354, align 4, !tbaa !52
  %1355 = getelementptr inbounds float, ptr %1354, i64 1
  store float %1264, ptr %1355, align 4, !tbaa !52
  %1356 = getelementptr inbounds %struct.MLoopUV, ptr %1349, i64 %1174
  store float %1342, ptr %1356, align 4, !tbaa !52
  %1357 = getelementptr inbounds float, ptr %1356, i64 1
  store float %1263, ptr %1357, align 4, !tbaa !52
  %1358 = add nuw nsw i64 %1346, 1
  %1359 = icmp eq i64 %1358, %1199
  br i1 %1359, label %1360, label %1345, !llvm.loop !98

1360:                                             ; preds = %1345, %1315, %1299, %1334
  %1361 = icmp ne i32 %1282, %1168
  %1362 = select i1 %153, i1 true, i1 %1361
  br i1 %1362, label %1363, label %1387

1363:                                             ; preds = %1360
  %1364 = getelementptr inbounds %struct.MLoop, ptr %1286, i64 %1188
  store i32 %1283, ptr %1364, align 4, !tbaa !75
  %1365 = getelementptr inbounds %struct.MLoop, ptr %1286, i64 %1189
  store i32 %1284, ptr %1365, align 4, !tbaa !75
  %1366 = add i32 %1284, %36
  %1367 = getelementptr inbounds %struct.MLoop, ptr %1286, i64 %1190
  store i32 %1366, ptr %1367, align 4, !tbaa !75
  %1368 = add i32 %1283, %36
  %1369 = getelementptr inbounds %struct.MLoop, ptr %1286, i64 %1191
  store i32 %1368, ptr %1369, align 4, !tbaa !75
  %1370 = icmp eq i32 %1282, 0
  %1371 = add i32 %1270, %1282
  %1372 = select i1 %1370, i32 %1279, i32 %1371
  %1373 = getelementptr inbounds %struct.MLoop, ptr %1286, i64 %1194, i32 1
  store i32 %1372, ptr %1373, align 4, !tbaa !73
  %1374 = add i32 %1284, %39
  %1375 = getelementptr inbounds %struct.MLoop, ptr %1286, i64 1, i32 1
  store i32 %1374, ptr %1375, align 4, !tbaa !73
  %1376 = add i32 %1273, %1282
  %1377 = getelementptr inbounds %struct.MLoop, ptr %1286, i64 %1196, i32 1
  store i32 %1376, ptr %1377, align 4, !tbaa !73
  %1378 = add i32 %1283, %39
  %1379 = getelementptr inbounds %struct.MLoop, ptr %1286, i64 3, i32 1
  store i32 %1378, ptr %1379, align 4, !tbaa !73
  br i1 %1370, label %1401, label %1380

1380:                                             ; preds = %1363
  store i32 %1283, ptr %1287, align 4, !tbaa !64
  %1381 = getelementptr inbounds %struct.MEdge, ptr %1287, i64 0, i32 1
  store i32 %1284, ptr %1381, align 4, !tbaa !66
  %1382 = load i16, ptr %1274, align 2, !tbaa !68
  %1383 = getelementptr inbounds %struct.MEdge, ptr %1287, i64 0, i32 4
  store i16 %1382, ptr %1383, align 2, !tbaa !68
  %1384 = load i8, ptr %1275, align 4, !tbaa !67
  %1385 = getelementptr inbounds %struct.MEdge, ptr %1287, i64 0, i32 2
  store i8 %1384, ptr %1385, align 4, !tbaa !67
  %1386 = getelementptr inbounds %struct.MEdge, ptr %1287, i64 1
  br label %1401

1387:                                             ; preds = %1360
  %1388 = getelementptr inbounds %struct.MLoop, ptr %1286, i64 %1180
  store i32 %1283, ptr %1388, align 4, !tbaa !75
  %1389 = getelementptr inbounds %struct.MLoop, ptr %1286, i64 %1181
  store i32 %1284, ptr %1389, align 4, !tbaa !75
  %1390 = load i32, ptr %1234, align 4, !tbaa !66
  %1391 = getelementptr inbounds %struct.MLoop, ptr %1286, i64 %1182
  store i32 %1390, ptr %1391, align 4, !tbaa !75
  %1392 = load i32, ptr %1209, align 4, !tbaa !64
  %1393 = getelementptr inbounds %struct.MLoop, ptr %1286, i64 %1183
  store i32 %1392, ptr %1393, align 4, !tbaa !75
  %1394 = add i32 %1267, %1282
  %1395 = getelementptr inbounds %struct.MLoop, ptr %1286, i64 %1186, i32 1
  store i32 %1394, ptr %1395, align 4, !tbaa !73
  %1396 = add i32 %1284, %39
  %1397 = getelementptr inbounds %struct.MLoop, ptr %1286, i64 1, i32 1
  store i32 %1396, ptr %1397, align 4, !tbaa !73
  %1398 = getelementptr inbounds %struct.MLoop, ptr %1286, i64 %1187, i32 1
  store i32 %1278, ptr %1398, align 4, !tbaa !73
  %1399 = add i32 %1283, %39
  %1400 = getelementptr inbounds %struct.MLoop, ptr %1286, i64 3, i32 1
  store i32 %1399, ptr %1400, align 4, !tbaa !73
  br label %1401

1401:                                             ; preds = %1363, %1380, %1387
  %1402 = phi ptr [ %1287, %1387 ], [ %1386, %1380 ], [ %1287, %1363 ]
  %1403 = phi i32 [ %1284, %1387 ], [ %1366, %1380 ], [ %1366, %1363 ]
  %1404 = phi i32 [ %1283, %1387 ], [ %1368, %1380 ], [ %1368, %1363 ]
  %1405 = getelementptr inbounds %struct.MPoly, ptr %1285, i64 1
  %1406 = getelementptr inbounds %struct.MLoop, ptr %1286, i64 4
  %1407 = add nsw i64 %1281, 1
  %1408 = add nuw i32 %1282, 1
  %1409 = icmp eq i32 %1282, %1197
  br i1 %1409, label %1410, label %1280, !llvm.loop !99

1410:                                             ; preds = %1401
  store i32 %1404, ptr %1402, align 4, !tbaa !64
  %1411 = getelementptr inbounds %struct.MEdge, ptr %1402, i64 0, i32 1
  store i32 %1403, ptr %1411, align 4, !tbaa !66
  %1412 = getelementptr inbounds %struct.MEdge, ptr %1209, i64 0, i32 4
  %1413 = load i16, ptr %1412, align 2, !tbaa !68
  %1414 = and i16 %1413, -129
  %1415 = getelementptr inbounds %struct.MEdge, ptr %1402, i64 0, i32 4
  store i16 %1414, ptr %1415, align 2, !tbaa !68
  %1416 = getelementptr inbounds %struct.MEdge, ptr %1209, i64 0, i32 2
  %1417 = load i8, ptr %1416, align 4, !tbaa !67
  %1418 = getelementptr inbounds %struct.MEdge, ptr %1402, i64 0, i32 2
  store i8 %1417, ptr %1418, align 4, !tbaa !67
  %1419 = getelementptr inbounds %struct.MEdge, ptr %1402, i64 1
  %1420 = add nuw nsw i64 %1202, 1
  %1421 = getelementptr inbounds %struct.MEdge, ptr %1209, i64 1
  %1422 = icmp eq i64 %1420, %1198
  br i1 %1422, label %1423, label %1201, !llvm.loop !100

1423:                                             ; preds = %1410, %1159
  %1424 = icmp eq ptr %328, null
  br i1 %1424, label %1427, label %1425

1425:                                             ; preds = %1423
  %1426 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  call void %1426(ptr noundef nonnull %328) #8
  br label %1427

1427:                                             ; preds = %1425, %1423
  %1428 = icmp eq ptr %327, null
  br i1 %1428, label %1431, label %1429

1429:                                             ; preds = %1427
  %1430 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  call void %1430(ptr noundef nonnull %327) #8
  br label %1431

1431:                                             ; preds = %1429, %1427
  %1432 = load i16, ptr %24, align 2, !tbaa !38
  %1433 = and i16 %1432, 2
  %1434 = icmp eq i16 %1433, 0
  br i1 %1434, label %1435, label %1439

1435:                                             ; preds = %1431
  %1436 = getelementptr inbounds %struct.DerivedMesh, ptr %166, i64 0, i32 16
  %1437 = load i32, ptr %1436, align 8, !tbaa !101
  %1438 = or i32 %1437, 4
  store i32 %1438, ptr %1436, align 8, !tbaa !101
  br label %1439

1439:                                             ; preds = %1431, %1435, %57
  %1440 = phi ptr [ %58, %57 ], [ %166, %1435 ], [ %166, %1431 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8
  ret ptr %1440
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @initData(ptr nocapture noundef writeonly %0) #1 {
  %2 = getelementptr inbounds %struct.ScrewModifierData, ptr %0, i64 0, i32 1
  store ptr null, ptr %2, align 8, !tbaa !53
  %3 = getelementptr inbounds %struct.ScrewModifierData, ptr %0, i64 0, i32 6
  store float 0x401921FB60000000, ptr %3, align 8, !tbaa !49
  %4 = getelementptr inbounds %struct.ScrewModifierData, ptr %0, i64 0, i32 7
  store i8 2, ptr %4, align 4, !tbaa !51
  %5 = getelementptr inbounds %struct.ScrewModifierData, ptr %0, i64 0, i32 9
  store i16 32, ptr %5, align 2, !tbaa !38
  %6 = getelementptr inbounds %struct.ScrewModifierData, ptr %0, i64 0, i32 2
  store i32 16, ptr %6, align 8, !tbaa !102
  %7 = getelementptr inbounds %struct.ScrewModifierData, ptr %0, i64 0, i32 3
  store i32 16, ptr %7, align 4, !tbaa !103
  %8 = getelementptr inbounds %struct.ScrewModifierData, ptr %0, i64 0, i32 4
  store i32 1, ptr %8, align 8, !tbaa !54
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @updateDepgraph(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr noundef %4) #0 {
  %6 = getelementptr inbounds %struct.ScrewModifierData, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !53
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @dag_get_node(ptr noundef %1, ptr noundef nonnull %7) #8
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %10, ptr noundef %4, i16 noundef signext 40, ptr noundef nonnull @.str.1) #8
  br label %11

11:                                               ; preds = %9, %5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @foreachObjectLink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.ScrewModifierData, ptr %0, i64 0, i32 1
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %5) #8
  ret void
}

declare void @modifier_copyData_generic(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare i32 @CustomData_number_of_layers(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare ptr @CDDM_from_template(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @closest_to_line_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CustomData_add_layer(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CustomData_get_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @DM_copy_vert_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @plane_from_point_normal_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CustomData_get_layer_n(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare float @dist_signed_squared_to_plane_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

declare void @axis_angle_normalized_to_mat3(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare void @copy_m4_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @unit_m4(ptr noundef) local_unnamed_addr #2

declare void @rotate_m4(ptr noundef, i8 noundef zeroext, float noundef) local_unnamed_addr #2

declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_v3_m3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @dist_signed_to_plane_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @DM_copy_poly_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @DM_copy_loop_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #6

declare ptr @dag_get_node(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dag_add_relation(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!34 = !{!35, !35, i64 0}
!35 = !{!"int", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !43, i64 142}
!39 = !{!"ScrewModifierData", !40, i64 0, !41, i64 112, !35, i64 120, !35, i64 124, !35, i64 128, !42, i64 132, !42, i64 136, !36, i64 140, !36, i64 141, !43, i64 142}
!40 = !{!"ModifierData", !41, i64 0, !41, i64 8, !35, i64 16, !35, i64 20, !35, i64 24, !35, i64 28, !36, i64 32, !41, i64 96, !41, i64 104}
!41 = !{!"any pointer", !36, i64 0}
!42 = !{!"float", !36, i64 0}
!43 = !{!"short", !36, i64 0}
!44 = !{!45, !41, i64 1104}
!45 = !{!"DerivedMesh", !46, i64 0, !46, i64 200, !46, i64 400, !46, i64 600, !46, i64 800, !35, i64 1000, !35, i64 1004, !35, i64 1008, !35, i64 1012, !35, i64 1016, !35, i64 1020, !35, i64 1024, !41, i64 1032, !41, i64 1040, !35, i64 1048, !42, i64 1052, !35, i64 1056, !35, i64 1060, !41, i64 1064, !36, i64 1072, !41, i64 1080, !41, i64 1088, !41, i64 1096, !41, i64 1104, !41, i64 1112, !41, i64 1120, !41, i64 1128, !41, i64 1136, !41, i64 1144, !41, i64 1152, !41, i64 1160, !41, i64 1168, !41, i64 1176, !41, i64 1184, !41, i64 1192, !41, i64 1200, !41, i64 1208, !41, i64 1216, !41, i64 1224, !41, i64 1232, !41, i64 1240, !41, i64 1248, !41, i64 1256, !41, i64 1264, !41, i64 1272, !41, i64 1280, !41, i64 1288, !41, i64 1296, !41, i64 1304, !41, i64 1312, !41, i64 1320, !41, i64 1328, !41, i64 1336, !41, i64 1344, !41, i64 1352, !41, i64 1360, !41, i64 1368, !41, i64 1376, !41, i64 1384, !41, i64 1392, !41, i64 1400, !41, i64 1408, !41, i64 1416, !41, i64 1424, !41, i64 1432, !41, i64 1440, !41, i64 1448, !41, i64 1456, !41, i64 1464, !41, i64 1472, !41, i64 1480, !41, i64 1488, !41, i64 1496, !41, i64 1504, !41, i64 1512, !41, i64 1520, !41, i64 1528, !41, i64 1536, !41, i64 1544, !41, i64 1552, !41, i64 1560, !41, i64 1568, !41, i64 1576, !41, i64 1584, !41, i64 1592, !41, i64 1600, !41, i64 1608, !41, i64 1616, !41, i64 1624, !41, i64 1632, !41, i64 1640, !41, i64 1648, !41, i64 1656, !41, i64 1664, !41, i64 1672, !41, i64 1680}
!46 = !{!"CustomData", !41, i64 0, !36, i64 8, !35, i64 172, !35, i64 176, !35, i64 180, !41, i64 184, !41, i64 192}
!47 = !{!45, !41, i64 1112}
!48 = !{!45, !41, i64 1136}
!49 = !{!39, !42, i64 136}
!50 = !{!39, !42, i64 132}
!51 = !{!39, !36, i64 140}
!52 = !{!42, !42, i64 0}
!53 = !{!39, !41, i64 112}
!54 = !{!39, !35, i64 128}
!55 = !{!45, !41, i64 1168}
!56 = !{!45, !41, i64 1176}
!57 = !{!45, !41, i64 1200}
!58 = !{!45, !41, i64 1192}
!59 = !{!41, !41, i64 0}
!60 = distinct !{!60, !61, !62}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!"llvm.loop.unroll.disable"}
!63 = distinct !{!63, !61, !62}
!64 = !{!65, !35, i64 0}
!65 = !{!"MEdge", !35, i64 0, !35, i64 4, !36, i64 8, !36, i64 9, !43, i64 10}
!66 = !{!65, !35, i64 4}
!67 = !{!65, !36, i64 8}
!68 = !{!65, !43, i64 10}
!69 = distinct !{!69, !61, !62}
!70 = !{!71, !35, i64 0}
!71 = !{!"MPoly", !35, i64 0, !35, i64 4, !43, i64 8, !36, i64 10, !36, i64 11}
!72 = !{!71, !35, i64 4}
!73 = !{!74, !35, i64 4}
!74 = !{!"MLoop", !35, i64 0, !35, i64 4}
!75 = !{!74, !35, i64 0}
!76 = distinct !{!76, !61, !62}
!77 = distinct !{!77, !61, !62}
!78 = distinct !{!78, !61, !62}
!79 = !{!80, !42, i64 0}
!80 = !{!"ScrewVertConnect", !42, i64 0, !36, i64 4, !36, i64 16, !36, i64 28, !36, i64 40, !36, i64 56}
!81 = distinct !{!81, !61, !62}
!82 = distinct !{!82, !61, !62}
!83 = distinct !{!83, !61, !62}
!84 = !{!80, !36, i64 56}
!85 = distinct !{!85, !61, !62}
!86 = distinct !{!86, !61, !62}
!87 = distinct !{!87, !61, !62}
!88 = distinct !{!88, !61, !62}
!89 = !{!43, !43, i64 0}
!90 = distinct !{!90, !61, !62}
!91 = distinct !{!91, !61, !62}
!92 = distinct !{!92, !61, !62}
!93 = distinct !{!93, !61, !62}
!94 = distinct !{!94, !61, !62}
!95 = !{!71, !43, i64 8}
!96 = !{!71, !36, i64 10}
!97 = distinct !{!97, !61, !62}
!98 = distinct !{!98, !61, !62}
!99 = distinct !{!99, !61, !62}
!100 = distinct !{!100, !61, !62}
!101 = !{!45, !35, i64 1056}
!102 = !{!39, !35, i64 120}
!103 = !{!39, !35, i64 124}
