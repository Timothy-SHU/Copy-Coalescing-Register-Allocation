; ModuleID = 'blender/source/blender/modifiers/intern/MOD_screw.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_screw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ScrewVertIter = type { ptr, ptr, i32, i32, ptr }
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

; Function Attrs: noinline nounwind optsize uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !34 {
  tail call void @modifier_copyData_generic(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @applyModifier(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 !PGOFuncName !35 {
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
  %16 = alloca %struct.ScrewVertIter, align 8
  %17 = alloca [3 x float], align 4
  %18 = alloca [4 x [4 x float]], align 16
  %19 = and i32 %3, 1
  %20 = icmp eq i32 %19, 0
  %21 = getelementptr inbounds %struct.ScrewModifierData, ptr %0, i64 0, i32 3
  %22 = getelementptr inbounds %struct.ScrewModifierData, ptr %0, i64 0, i32 2
  %23 = select i1 %20, ptr %22, ptr %21
  %24 = load i32, ptr %23, align 4, !tbaa !36
  %25 = getelementptr inbounds %struct.ScrewModifierData, ptr %0, i64 0, i32 9
  %26 = load i16, ptr %25, align 2, !tbaa !40
  %27 = and i16 %26, 1
  %28 = icmp eq i16 %27, 0
  %29 = shl nuw nsw i16 %27, 1
  %30 = xor i16 %29, 2
  %31 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 23
  %32 = load ptr, ptr %31, align 8, !tbaa !46
  %33 = tail call i32 %32(ptr noundef %2) #14
  %34 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 24
  %35 = load ptr, ptr %34, align 8, !tbaa !49
  %36 = tail call i32 %35(ptr noundef %2) #14
  %37 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 27
  %38 = load ptr, ptr %37, align 8, !tbaa !50
  %39 = tail call i32 %38(ptr noundef %2) #14
  %40 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 3
  %41 = tail call i32 @CustomData_number_of_layers(ptr noundef nonnull %40, i32 noundef 16) #14
  %42 = zext i32 %41 to i64
  %43 = shl nuw nsw i64 %42, 3
  %44 = alloca i8, i64 %43, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  %45 = getelementptr inbounds %struct.ScrewModifierData, ptr %0, i64 0, i32 6
  %46 = load float, ptr %45, align 8, !tbaa !51
  %47 = getelementptr inbounds %struct.ScrewModifierData, ptr %0, i64 0, i32 5
  %48 = load float, ptr %47, align 4, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #15
  %49 = load i16, ptr %25, align 2, !tbaa !40
  %50 = trunc i16 %49 to i8
  %51 = lshr i8 %50, 5
  %52 = and i8 %51, 1
  %53 = icmp eq i32 %33, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %4
  %55 = tail call ptr @CDDM_from_template(ptr noundef nonnull %2, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #14
  br label %941

56:                                               ; preds = %4
  %57 = getelementptr inbounds %struct.ScrewModifierData, ptr %0, i64 0, i32 7
  %58 = load i8, ptr %57, align 4, !tbaa !53
  switch i8 %58, label %60 [
    i8 0, label %61
    i8 1, label %59
  ]

59:                                               ; preds = %56
  br label %61

60:                                               ; preds = %56
  br label %61

61:                                               ; preds = %56, %60, %59
  %62 = phi i64 [ 1, %60 ], [ 2, %59 ], [ 2, %56 ]
  %63 = phi i64 [ 0, %60 ], [ 0, %59 ], [ 1, %56 ]
  %64 = zext i8 %58 to i64
  %65 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 %64
  store float 1.000000e+00, ptr %65, align 4, !tbaa !54
  %66 = getelementptr inbounds %struct.ScrewModifierData, ptr %0, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !55
  %68 = icmp eq ptr %67, null
  br i1 %68, label %83, label %69

69:                                               ; preds = %61
  %70 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %71 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %12, ptr noundef nonnull %70) #14
  %72 = load ptr, ptr %66, align 8, !tbaa !55
  %73 = getelementptr inbounds %struct.Object, ptr %72, i64 0, i32 47
  call void @copy_m4_m4(ptr noundef nonnull %11, ptr noundef nonnull %73) #14
  call void @mul_m4_m4m4(ptr noundef nonnull %10, ptr noundef nonnull %12, ptr noundef nonnull %11) #14
  call void @mul_mat3_m4_v3(ptr noundef nonnull %10, ptr noundef nonnull %6) #14
  call fastcc void @normalize_v3(ptr noundef nonnull %6) #16
  %74 = load i16, ptr %25, align 2, !tbaa !40
  %75 = and i16 %74, 4
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %85, label %77

77:                                               ; preds = %69
  %78 = getelementptr inbounds [4 x [4 x float]], ptr %10, i64 0, i64 3
  %79 = call fastcc float @len_v3(ptr noundef nonnull %78) #16
  %80 = fcmp une float %79, 0.000000e+00
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %13, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #15
  %82 = call float @closest_to_line_v3(ptr noundef nonnull %14, ptr noundef nonnull %78, ptr noundef nonnull %13, ptr noundef nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #15
  br label %85

83:                                               ; preds = %61
  %84 = add i8 %58, 88
  call fastcc void @zero_v3(ptr noundef nonnull %6) #16
  store float 1.000000e+00, ptr %65, align 4, !tbaa !54
  br label %85

85:                                               ; preds = %81, %77, %69, %83
  %86 = phi float [ %48, %69 ], [ %48, %83 ], [ %82, %81 ], [ 0.000000e+00, %77 ]
  %87 = phi i8 [ 88, %69 ], [ %84, %83 ], [ 88, %81 ], [ 88, %77 ]
  %88 = getelementptr inbounds %struct.ScrewModifierData, ptr %0, i64 0, i32 4
  %89 = load i32, ptr %88, align 8, !tbaa !56
  %90 = uitofp i32 %89 to float
  %91 = fmul float %46, %90
  %92 = fmul float %86, %90
  %93 = uitofp i32 %24 to float
  %94 = fdiv float 1.000000e+00, %93
  %95 = mul i32 %89, %24
  %96 = add i32 %95, 1
  %97 = call float @llvm.fabs.f32(float %92)
  %98 = fcmp ugt float %97, 0x3EE9000000000000
  br i1 %98, label %109, label %99

99:                                               ; preds = %85
  %100 = call float @llvm.fabs.f32(float %91)
  %101 = fadd float %100, 0xC01921FB60000000
  %102 = call float @llvm.fabs.f32(float %101)
  %103 = fcmp ugt float %102, 0x3EE9000000000000
  br i1 %103, label %109, label %104

104:                                              ; preds = %99
  %105 = call i32 @llvm.umax.i32(i32 %95, i32 3)
  %106 = mul i32 %105, %33
  %107 = mul i32 %105, %36
  %108 = add i32 %106, %107
  br label %117

109:                                              ; preds = %99, %85
  %110 = call i32 @llvm.umax.i32(i32 %96, i32 3)
  %111 = mul i32 %110, %33
  %112 = add i32 %110, -1
  %113 = mul i32 %112, %33
  %114 = mul i32 %110, %36
  %115 = add i32 %113, %114
  %116 = mul i32 %112, %36
  br label %117

117:                                              ; preds = %109, %104
  %118 = phi float [ 0.000000e+00, %104 ], [ %92, %109 ]
  %119 = phi i1 [ false, %104 ], [ true, %109 ]
  %120 = phi i32 [ %107, %104 ], [ %116, %109 ]
  %121 = phi i32 [ %108, %104 ], [ %115, %109 ]
  %122 = phi i32 [ %106, %104 ], [ %111, %109 ]
  %123 = phi i32 [ %105, %104 ], [ %110, %109 ]
  %124 = load i16, ptr %25, align 2, !tbaa !40
  %125 = and i16 %124, 64
  %126 = icmp eq i16 %125, 0
  %127 = fdiv float %94, %90
  %128 = fdiv float %91, 0x401921FB60000000
  %129 = fmul float %127, %128
  %130 = select i1 %126, float %129, float %94
  %131 = shl nsw i32 %120, 2
  %132 = call ptr @CDDM_from_template(ptr noundef nonnull %2, i32 noundef %122, i32 noundef %121, i32 noundef 0, i32 noundef %131, i32 noundef %120) #14
  %133 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 31
  %134 = load ptr, ptr %133, align 8, !tbaa !57
  %135 = call ptr %134(ptr noundef nonnull %2) #14
  %136 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 32
  %137 = load ptr, ptr %136, align 8, !tbaa !58
  %138 = call ptr %137(ptr noundef nonnull %2) #14
  %139 = getelementptr inbounds %struct.DerivedMesh, ptr %132, i64 0, i32 31
  %140 = load ptr, ptr %139, align 8, !tbaa !57
  %141 = call ptr %140(ptr noundef %132) #14
  %142 = getelementptr inbounds %struct.DerivedMesh, ptr %132, i64 0, i32 35
  %143 = load ptr, ptr %142, align 8, !tbaa !59
  %144 = call ptr %143(ptr noundef %132) #14
  %145 = getelementptr inbounds %struct.DerivedMesh, ptr %132, i64 0, i32 34
  %146 = load ptr, ptr %145, align 8, !tbaa !60
  %147 = call ptr %146(ptr noundef %132) #14
  %148 = getelementptr inbounds %struct.DerivedMesh, ptr %132, i64 0, i32 32
  %149 = load ptr, ptr %148, align 8, !tbaa !58
  %150 = call ptr %149(ptr noundef %132) #14
  %151 = getelementptr inbounds %struct.DerivedMesh, ptr %132, i64 0, i32 4
  %152 = call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %151, i32 noundef 7) #14
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %117
  %155 = call ptr @CustomData_add_layer(ptr noundef nonnull %151, i32 noundef 7, i32 noundef 1, ptr noundef null, i32 noundef %120) #14
  br label %156

156:                                              ; preds = %154, %117
  %157 = call ptr @CustomData_get_layer(ptr noundef nonnull %151, i32 noundef 7) #14
  call void @DM_copy_vert_data(ptr noundef nonnull %2, ptr noundef nonnull %132, i32 noundef 0, i32 noundef 0, i32 noundef %33) #14
  %158 = icmp eq i32 %41, 0
  br i1 %158, label %195, label %159

159:                                              ; preds = %156
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %15, i8 0, i64 12, i1 false)
  call void @plane_from_point_normal_v3(ptr noundef nonnull %5, ptr noundef nonnull %15, ptr noundef nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #15
  %160 = getelementptr inbounds %struct.DerivedMesh, ptr %132, i64 0, i32 3
  br label %161

161:                                              ; preds = %159, %161
  %162 = phi i64 [ 0, %159 ], [ %166, %161 ]
  %163 = trunc i64 %162 to i32
  %164 = call ptr @CustomData_get_layer_n(ptr noundef nonnull %160, i32 noundef 16, i32 noundef %163) #14
  %165 = getelementptr inbounds ptr, ptr %44, i64 %162
  store ptr %164, ptr %165, align 8, !tbaa !61
  %166 = add nuw nsw i64 %162, 1
  %167 = icmp eq i64 %166, %42
  br i1 %167, label %168, label %161, !llvm.loop !62

168:                                              ; preds = %161
  %169 = load i16, ptr %25, align 2, !tbaa !40
  %170 = and i16 %169, 128
  %171 = icmp eq i16 %170, 0
  br i1 %171, label %188, label %172

172:                                              ; preds = %168
  %173 = call i32 @llvm.umax.i32(i32 %33, i32 1)
  br label %174

174:                                              ; preds = %172, %174
  %175 = phi i32 [ %182, %174 ], [ 0, %172 ]
  %176 = phi float [ %181, %174 ], [ 0xC7EFFFFFE0000000, %172 ]
  %177 = phi float [ %180, %174 ], [ 0x47EFFFFFE0000000, %172 ]
  %178 = phi ptr [ %183, %174 ], [ %135, %172 ]
  %179 = call float @dist_signed_squared_to_plane_v3(ptr noundef %178, ptr noundef nonnull %5) #14
  %180 = call fastcc float @min_ff(float noundef %179, float noundef %177) #16
  %181 = call fastcc float @max_ff(float noundef %179, float noundef %176) #16
  %182 = add nuw i32 %175, 1
  %183 = getelementptr inbounds %struct.MVert, ptr %178, i64 1
  %184 = icmp eq i32 %182, %173
  br i1 %184, label %185, label %174, !llvm.loop !64

185:                                              ; preds = %174
  %186 = call fastcc float @sqrtf_signed(float noundef %180) #16
  %187 = call fastcc float @sqrtf_signed(float noundef %181) #16
  br label %188

188:                                              ; preds = %185, %168
  %189 = phi float [ %186, %185 ], [ 0x47EFFFFFE0000000, %168 ]
  %190 = phi float [ %187, %185 ], [ 0xC7EFFFFFE0000000, %168 ]
  %191 = fsub float %190, %189
  %192 = fcmp une float %191, 0.000000e+00
  %193 = fdiv float 1.000000e+00, %191
  %194 = select i1 %192, float %193, float 0.000000e+00
  br label %195

195:                                              ; preds = %156, %188
  %196 = phi float [ %194, %188 ], [ undef, %156 ]
  %197 = phi float [ %189, %188 ], [ 0x47EFFFFFE0000000, %156 ]
  %198 = icmp eq i32 %36, 0
  br i1 %198, label %215, label %199

199:                                              ; preds = %195, %199
  %200 = phi i32 [ %211, %199 ], [ 0, %195 ]
  %201 = phi ptr [ %212, %199 ], [ %138, %195 ]
  %202 = phi ptr [ %213, %199 ], [ %150, %195 ]
  %203 = load <2 x i32>, ptr %201, align 4, !tbaa !36
  store <2 x i32> %203, ptr %202, align 4, !tbaa !36
  %204 = getelementptr inbounds %struct.MEdge, ptr %201, i64 0, i32 2
  %205 = load i8, ptr %204, align 4, !tbaa !65
  %206 = getelementptr inbounds %struct.MEdge, ptr %202, i64 0, i32 2
  store i8 %205, ptr %206, align 4, !tbaa !65
  %207 = getelementptr inbounds %struct.MEdge, ptr %201, i64 0, i32 4
  %208 = load i16, ptr %207, align 2, !tbaa !67
  %209 = and i16 %208, -129
  %210 = getelementptr inbounds %struct.MEdge, ptr %202, i64 0, i32 4
  store i16 %209, ptr %210, align 2, !tbaa !67
  %211 = add nuw i32 %200, 1
  %212 = getelementptr inbounds %struct.MEdge, ptr %201, i64 1
  %213 = getelementptr inbounds %struct.MEdge, ptr %202, i64 1
  %214 = icmp eq i32 %211, %36
  br i1 %214, label %215, label %199, !llvm.loop !68

215:                                              ; preds = %199, %195
  %216 = phi ptr [ %150, %195 ], [ %213, %199 ]
  %217 = icmp eq i32 %39, 0
  br i1 %217, label %271, label %218

218:                                              ; preds = %215
  %219 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 35
  %220 = load ptr, ptr %219, align 8, !tbaa !59
  %221 = call ptr %220(ptr noundef %2) #14
  %222 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 34
  %223 = load ptr, ptr %222, align 8, !tbaa !60
  %224 = call ptr %223(ptr noundef %2) #14
  %225 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !61
  %226 = zext i32 %36 to i64
  %227 = shl nuw nsw i64 %226, 2
  %228 = call ptr %225(i64 noundef %227, ptr noundef nonnull @__func__.applyModifier) #14
  call void @llvm.memset.p0.i64(ptr align 4 %228, i8 -1, i64 %227, i1 false)
  %229 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !61
  %230 = zext i32 %33 to i64
  %231 = shl nuw nsw i64 %230, 2
  %232 = call ptr %229(i64 noundef %231, ptr noundef nonnull @__func__.applyModifier) #14
  call void @llvm.memset.p0.i64(ptr align 4 %232, i8 -1, i64 %231, i1 false)
  br label %233

233:                                              ; preds = %218, %267
  %234 = phi i32 [ 0, %218 ], [ %268, %267 ]
  %235 = phi ptr [ %221, %218 ], [ %269, %267 ]
  %236 = load i32, ptr %235, align 4, !tbaa !69
  %237 = getelementptr inbounds %struct.MPoly, ptr %235, i64 0, i32 1
  %238 = load i32, ptr %237, align 4, !tbaa !71
  %239 = add i32 %238, %236
  %240 = icmp ult i32 %236, %239
  br i1 %240, label %241, label %267

241:                                              ; preds = %233
  %242 = zext i32 %236 to i64
  %243 = getelementptr inbounds %struct.MLoop, ptr %224, i64 %242
  br label %244

244:                                              ; preds = %241, %263
  %245 = phi i32 [ %264, %263 ], [ %236, %241 ]
  %246 = phi ptr [ %265, %263 ], [ %243, %241 ]
  %247 = getelementptr inbounds %struct.MLoop, ptr %246, i64 0, i32 1
  %248 = load i32, ptr %247, align 4, !tbaa !72
  %249 = zext i32 %248 to i64
  %250 = getelementptr inbounds i32, ptr %228, i64 %249
  store i32 %234, ptr %250, align 4, !tbaa !36
  %251 = load i32, ptr %246, align 4, !tbaa !74
  %252 = zext i32 %251 to i64
  %253 = getelementptr inbounds i32, ptr %232, i64 %252
  store i32 %245, ptr %253, align 4, !tbaa !36
  %254 = load i32, ptr %247, align 4, !tbaa !72
  %255 = zext i32 %254 to i64
  %256 = getelementptr inbounds %struct.MEdge, ptr %150, i64 %255
  %257 = load i32, ptr %256, align 4, !tbaa !75
  %258 = load i32, ptr %246, align 4, !tbaa !74
  %259 = icmp eq i32 %257, %258
  br i1 %259, label %263, label %260

260:                                              ; preds = %244
  %261 = getelementptr inbounds %struct.MEdge, ptr %150, i64 %255, i32 1
  %262 = load i32, ptr %261, align 4, !tbaa !76
  store i32 %262, ptr %256, align 4, !tbaa !75
  store i32 %257, ptr %261, align 4, !tbaa !76
  br label %263

263:                                              ; preds = %244, %260
  %264 = add nuw i32 %245, 1
  %265 = getelementptr inbounds %struct.MLoop, ptr %246, i64 1
  %266 = icmp eq i32 %264, %239
  br i1 %266, label %267, label %244, !llvm.loop !77

267:                                              ; preds = %263, %233
  %268 = add nuw i32 %234, 1
  %269 = getelementptr inbounds %struct.MPoly, ptr %235, i64 1
  %270 = icmp eq i32 %268, %39
  br i1 %270, label %271, label %233, !llvm.loop !78

271:                                              ; preds = %267, %215
  %272 = phi ptr [ undef, %215 ], [ %221, %267 ]
  %273 = phi ptr [ null, %215 ], [ %232, %267 ]
  %274 = phi ptr [ null, %215 ], [ %228, %267 ]
  %275 = load i16, ptr %25, align 2, !tbaa !40
  %276 = and i16 %275, 2
  %277 = icmp eq i16 %276, 0
  br i1 %277, label %278, label %280

278:                                              ; preds = %271
  %279 = call i32 @llvm.umax.i32(i32 %33, i32 1)
  br label %621

280:                                              ; preds = %271
  %281 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !61
  %282 = zext i32 %33 to i64
  %283 = shl nuw nsw i64 %282, 6
  %284 = call ptr %281(i64 noundef %283, ptr noundef nonnull @.str) #14
  br i1 %198, label %285, label %296

285:                                              ; preds = %280
  %286 = getelementptr inbounds %struct.ScrewVertConnect, ptr %284, i64 0, i32 2
  %287 = call i32 @llvm.umax.i32(i32 %33, i32 1)
  br label %288

288:                                              ; preds = %285, %288
  %289 = phi i32 [ 0, %285 ], [ %292, %288 ]
  %290 = phi ptr [ %141, %285 ], [ %294, %288 ]
  %291 = phi ptr [ %135, %285 ], [ %293, %288 ]
  call fastcc void @copy_v3_v3(ptr noundef %290, ptr noundef %291) #16
  call fastcc void @normalize_v3_v3(ptr noundef nonnull %286, ptr noundef %290) #16
  %292 = add nuw i32 %289, 1
  %293 = getelementptr inbounds %struct.MVert, ptr %291, i64 1
  %294 = getelementptr inbounds %struct.MVert, ptr %290, i64 1
  %295 = icmp eq i32 %292, %287
  br i1 %295, label %629, label %288, !llvm.loop !79

296:                                              ; preds = %280
  %297 = load ptr, ptr %66, align 8, !tbaa !55
  %298 = icmp eq ptr %297, null
  %299 = call i32 @llvm.umax.i32(i32 %33, i32 1)
  br i1 %298, label %329, label %300

300:                                              ; preds = %296, %300
  %301 = phi i32 [ %324, %300 ], [ 0, %296 ]
  %302 = phi ptr [ %327, %300 ], [ %284, %296 ]
  %303 = phi ptr [ %325, %300 ], [ %141, %296 ]
  %304 = phi ptr [ %326, %300 ], [ %135, %296 ]
  %305 = load float, ptr %304, align 4, !tbaa !54
  store float %305, ptr %303, align 4, !tbaa !54
  %306 = getelementptr inbounds %struct.ScrewVertConnect, ptr %302, i64 0, i32 1
  store float %305, ptr %306, align 4, !tbaa !54
  %307 = getelementptr inbounds [3 x float], ptr %304, i64 0, i64 1
  %308 = load float, ptr %307, align 4, !tbaa !54
  %309 = getelementptr inbounds [3 x float], ptr %303, i64 0, i64 1
  store float %308, ptr %309, align 4, !tbaa !54
  %310 = getelementptr inbounds %struct.ScrewVertConnect, ptr %302, i64 0, i32 1, i64 1
  store float %308, ptr %310, align 4, !tbaa !54
  %311 = getelementptr inbounds [3 x float], ptr %304, i64 0, i64 2
  %312 = load float, ptr %311, align 4, !tbaa !54
  %313 = getelementptr inbounds [3 x float], ptr %303, i64 0, i64 2
  store float %312, ptr %313, align 4, !tbaa !54
  %314 = getelementptr inbounds %struct.ScrewVertConnect, ptr %302, i64 0, i32 1, i64 2
  store float %312, ptr %314, align 4, !tbaa !54
  %315 = getelementptr inbounds %struct.ScrewVertConnect, ptr %302, i64 0, i32 4
  %316 = getelementptr inbounds %struct.ScrewVertConnect, ptr %302, i64 0, i32 3
  %317 = getelementptr inbounds %struct.ScrewVertConnect, ptr %302, i64 0, i32 3, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %315, i8 0, i64 17, i1 false)
  store i32 -1, ptr %317, align 4, !tbaa !36
  store i32 -1, ptr %316, align 4, !tbaa !36
  call void @mul_m4_v3(ptr noundef nonnull %10, ptr noundef nonnull %306) #14
  %318 = getelementptr inbounds %struct.ScrewVertConnect, ptr %302, i64 0, i32 1, i64 %63
  %319 = load float, ptr %318, align 4, !tbaa !54
  %320 = getelementptr inbounds %struct.ScrewVertConnect, ptr %302, i64 0, i32 1, i64 %62
  %321 = load float, ptr %320, align 4, !tbaa !54
  %322 = fmul float %321, %321
  %323 = call float @llvm.fmuladd.f32(float %319, float %319, float %322)
  store float %323, ptr %302, align 8, !tbaa !80
  %324 = add nuw i32 %301, 1
  %325 = getelementptr inbounds %struct.MVert, ptr %303, i64 1
  %326 = getelementptr inbounds %struct.MVert, ptr %304, i64 1
  %327 = getelementptr inbounds %struct.ScrewVertConnect, ptr %302, i64 1
  %328 = icmp eq i32 %324, %299
  br i1 %328, label %358, label %300, !llvm.loop !82

329:                                              ; preds = %296, %329
  %330 = phi i32 [ %353, %329 ], [ 0, %296 ]
  %331 = phi ptr [ %356, %329 ], [ %284, %296 ]
  %332 = phi ptr [ %354, %329 ], [ %141, %296 ]
  %333 = phi ptr [ %355, %329 ], [ %135, %296 ]
  %334 = load float, ptr %333, align 4, !tbaa !54
  store float %334, ptr %332, align 4, !tbaa !54
  %335 = getelementptr inbounds %struct.ScrewVertConnect, ptr %331, i64 0, i32 1
  store float %334, ptr %335, align 4, !tbaa !54
  %336 = getelementptr inbounds [3 x float], ptr %333, i64 0, i64 1
  %337 = load float, ptr %336, align 4, !tbaa !54
  %338 = getelementptr inbounds [3 x float], ptr %332, i64 0, i64 1
  store float %337, ptr %338, align 4, !tbaa !54
  %339 = getelementptr inbounds %struct.ScrewVertConnect, ptr %331, i64 0, i32 1, i64 1
  store float %337, ptr %339, align 4, !tbaa !54
  %340 = getelementptr inbounds [3 x float], ptr %333, i64 0, i64 2
  %341 = load float, ptr %340, align 4, !tbaa !54
  %342 = getelementptr inbounds [3 x float], ptr %332, i64 0, i64 2
  store float %341, ptr %342, align 4, !tbaa !54
  %343 = getelementptr inbounds %struct.ScrewVertConnect, ptr %331, i64 0, i32 1, i64 2
  store float %341, ptr %343, align 4, !tbaa !54
  %344 = getelementptr inbounds %struct.ScrewVertConnect, ptr %331, i64 0, i32 4
  %345 = getelementptr inbounds %struct.ScrewVertConnect, ptr %331, i64 0, i32 3
  %346 = getelementptr inbounds %struct.ScrewVertConnect, ptr %331, i64 0, i32 3, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %344, i8 0, i64 17, i1 false)
  store i32 -1, ptr %346, align 4, !tbaa !36
  store i32 -1, ptr %345, align 4, !tbaa !36
  %347 = getelementptr inbounds %struct.ScrewVertConnect, ptr %331, i64 0, i32 1, i64 %63
  %348 = load float, ptr %347, align 4, !tbaa !54
  %349 = getelementptr inbounds %struct.ScrewVertConnect, ptr %331, i64 0, i32 1, i64 %62
  %350 = load float, ptr %349, align 4, !tbaa !54
  %351 = fmul float %350, %350
  %352 = call float @llvm.fmuladd.f32(float %348, float %348, float %351)
  store float %352, ptr %331, align 8, !tbaa !80
  %353 = add nuw i32 %330, 1
  %354 = getelementptr inbounds %struct.MVert, ptr %332, i64 1
  %355 = getelementptr inbounds %struct.MVert, ptr %333, i64 1
  %356 = getelementptr inbounds %struct.ScrewVertConnect, ptr %331, i64 1
  %357 = icmp eq i32 %353, %299
  br i1 %357, label %358, label %329, !llvm.loop !83

358:                                              ; preds = %300, %329
  %359 = call i32 @llvm.umax.i32(i32 %36, i32 1)
  br label %367

360:                                              ; preds = %407
  %361 = getelementptr inbounds %struct.ScrewVertIter, ptr %16, i64 0, i32 1
  %362 = getelementptr inbounds %struct.ScrewVertIter, ptr %16, i64 0, i32 2
  %363 = fcmp olt float %91, 0.000000e+00
  %364 = getelementptr inbounds %struct.ScrewVertIter, ptr %16, i64 0, i32 4
  %365 = call i32 @llvm.umax.i32(i32 %33, i32 1)
  %366 = zext i32 %365 to i64
  br label %411

367:                                              ; preds = %358, %407
  %368 = phi i32 [ 0, %358 ], [ %408, %407 ]
  %369 = phi ptr [ %150, %358 ], [ %409, %407 ]
  %370 = load i32, ptr %369, align 4, !tbaa !75
  %371 = zext i32 %370 to i64
  %372 = getelementptr inbounds %struct.ScrewVertConnect, ptr %284, i64 %371, i32 3
  %373 = load i32, ptr %372, align 4, !tbaa !36
  %374 = icmp eq i32 %373, -1
  br i1 %374, label %375, label %379

375:                                              ; preds = %367
  %376 = getelementptr inbounds %struct.MEdge, ptr %369, i64 0, i32 1
  %377 = load i32, ptr %376, align 4, !tbaa !76
  store i32 %377, ptr %372, align 4, !tbaa !36
  %378 = getelementptr inbounds %struct.ScrewVertConnect, ptr %284, i64 %371, i32 4
  store ptr %369, ptr %378, align 8, !tbaa !61
  br label %390

379:                                              ; preds = %367
  %380 = getelementptr inbounds %struct.ScrewVertConnect, ptr %284, i64 %371, i32 3, i64 1
  %381 = load i32, ptr %380, align 4, !tbaa !36
  %382 = icmp eq i32 %381, -1
  br i1 %382, label %383, label %387

383:                                              ; preds = %379
  %384 = getelementptr inbounds %struct.MEdge, ptr %369, i64 0, i32 1
  %385 = load i32, ptr %384, align 4, !tbaa !76
  store i32 %385, ptr %380, align 4, !tbaa !36
  %386 = getelementptr inbounds %struct.ScrewVertConnect, ptr %284, i64 %371, i32 4, i64 1
  store ptr %369, ptr %386, align 8, !tbaa !61
  br label %390

387:                                              ; preds = %379
  store i32 -2, ptr %380, align 4, !tbaa !36
  store i32 -2, ptr %372, align 4, !tbaa !36
  %388 = getelementptr inbounds %struct.MEdge, ptr %369, i64 0, i32 1
  %389 = load i32, ptr %388, align 4, !tbaa !76
  br label %390

390:                                              ; preds = %383, %387, %375
  %391 = phi i32 [ %385, %383 ], [ %389, %387 ], [ %377, %375 ]
  %392 = zext i32 %391 to i64
  %393 = getelementptr inbounds %struct.ScrewVertConnect, ptr %284, i64 %392, i32 3
  %394 = load i32, ptr %393, align 4, !tbaa !36
  %395 = icmp eq i32 %394, -1
  br i1 %395, label %396, label %399

396:                                              ; preds = %390
  %397 = load i32, ptr %369, align 4, !tbaa !75
  store i32 %397, ptr %393, align 4, !tbaa !36
  %398 = getelementptr inbounds %struct.ScrewVertConnect, ptr %284, i64 %392, i32 4
  store ptr %369, ptr %398, align 8, !tbaa !61
  br label %407

399:                                              ; preds = %390
  %400 = getelementptr inbounds %struct.ScrewVertConnect, ptr %284, i64 %392, i32 3, i64 1
  %401 = load i32, ptr %400, align 4, !tbaa !36
  %402 = icmp eq i32 %401, -1
  br i1 %402, label %403, label %406

403:                                              ; preds = %399
  %404 = load i32, ptr %369, align 4, !tbaa !75
  store i32 %404, ptr %400, align 4, !tbaa !36
  %405 = getelementptr inbounds %struct.ScrewVertConnect, ptr %284, i64 %392, i32 4, i64 1
  store ptr %369, ptr %405, align 8, !tbaa !61
  br label %407

406:                                              ; preds = %399
  store i32 -2, ptr %400, align 4, !tbaa !36
  store i32 -2, ptr %393, align 4, !tbaa !36
  br label %407

407:                                              ; preds = %396, %406, %403
  %408 = add nuw i32 %368, 1
  %409 = getelementptr inbounds %struct.MEdge, ptr %369, i64 1
  %410 = icmp eq i32 %408, %359
  br i1 %410, label %360, label %367, !llvm.loop !84

411:                                              ; preds = %360, %615
  %412 = phi i64 [ 0, %360 ], [ %618, %615 ]
  %413 = phi ptr [ %284, %360 ], [ %619, %615 ]
  %414 = getelementptr inbounds %struct.ScrewVertConnect, ptr %413, i64 0, i32 5
  %415 = load i8, ptr %414, align 8, !tbaa !85
  %416 = icmp eq i8 %415, 0
  br i1 %416, label %417, label %556

417:                                              ; preds = %411
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %16) #15
  %418 = trunc i64 %412 to i32
  br label %419

419:                                              ; preds = %417, %448
  %420 = phi i1 [ false, %417 ], [ true, %448 ]
  %421 = phi i1 [ true, %417 ], [ false, %448 ]
  %422 = phi i32 [ 0, %417 ], [ 1, %448 ]
  %423 = phi i32 [ 0, %417 ], [ %452, %448 ]
  %424 = phi float [ -1.000000e+00, %417 ], [ %451, %448 ]
  %425 = phi i32 [ 0, %417 ], [ %450, %448 ]
  %426 = phi i32 [ -1, %417 ], [ %449, %448 ]
  call fastcc void @screwvert_iter_init(ptr noundef nonnull %16, ptr noundef %284, i32 noundef %418, i32 noundef %422) #16
  br i1 %420, label %427, label %428

427:                                              ; preds = %419
  call fastcc void @screwvert_iter_step(ptr noundef nonnull %16) #16
  br label %428

428:                                              ; preds = %427, %419
  %429 = load ptr, ptr %361, align 8, !tbaa !86
  %430 = icmp eq ptr %429, null
  br i1 %430, label %448, label %431

431:                                              ; preds = %428, %439
  %432 = phi ptr [ %446, %439 ], [ %429, %428 ]
  %433 = phi i32 [ %444, %439 ], [ %426, %428 ]
  %434 = phi float [ %445, %439 ], [ %424, %428 ]
  %435 = phi i32 [ %440, %439 ], [ %423, %428 ]
  %436 = getelementptr inbounds %struct.ScrewVertConnect, ptr %432, i64 0, i32 5
  %437 = load i8, ptr %436, align 8, !tbaa !85
  %438 = icmp eq i8 %437, 0
  br i1 %438, label %439, label %448

439:                                              ; preds = %431
  store i8 1, ptr %436, align 8, !tbaa !85
  %440 = add i32 %435, 1
  %441 = load float, ptr %432, align 8, !tbaa !80
  %442 = fcmp ugt float %434, %441
  %443 = load i32, ptr %362, align 8
  %444 = select i1 %442, i32 %433, i32 %443
  %445 = select i1 %442, float %434, float %441
  call fastcc void @screwvert_iter_step(ptr noundef nonnull %16) #16
  %446 = load ptr, ptr %361, align 8
  %447 = icmp eq ptr %446, null
  br i1 %447, label %448, label %431, !llvm.loop !88

448:                                              ; preds = %431, %439, %428
  %449 = phi i32 [ %426, %428 ], [ %433, %431 ], [ %444, %439 ]
  %450 = phi i32 [ %425, %428 ], [ 1, %431 ], [ %425, %439 ]
  %451 = phi float [ %424, %428 ], [ %434, %431 ], [ %445, %439 ]
  %452 = phi i32 [ %423, %428 ], [ %435, %431 ], [ %440, %439 ]
  br i1 %421, label %419, label %453, !llvm.loop !89

453:                                              ; preds = %448
  %454 = icmp ugt i32 %452, 1
  br i1 %454, label %455, label %555

455:                                              ; preds = %453
  %456 = zext i32 %449 to i64
  %457 = getelementptr inbounds %struct.ScrewVertConnect, ptr %284, i64 %456, i32 3
  %458 = load i32, ptr %457, align 4, !tbaa !36
  %459 = zext i32 %458 to i64
  %460 = getelementptr inbounds %struct.ScrewVertConnect, ptr %284, i64 %459, i32 1
  %461 = getelementptr inbounds %struct.ScrewVertConnect, ptr %284, i64 %456, i32 3, i64 1
  %462 = load i32, ptr %461, align 4, !tbaa !36
  %463 = zext i32 %462 to i64
  %464 = getelementptr inbounds %struct.ScrewVertConnect, ptr %284, i64 %463, i32 1
  %465 = icmp ult i32 %458, -2
  %466 = icmp ult i32 %462, -2
  %467 = select i1 %465, i1 %466, i1 false
  br i1 %467, label %468, label %494

468:                                              ; preds = %455
  %469 = load i8, ptr %57, align 4, !tbaa !53
  %470 = zext i8 %469 to i64
  %471 = getelementptr inbounds float, ptr %460, i64 %470
  %472 = load float, ptr %471, align 4, !tbaa !54
  %473 = getelementptr inbounds float, ptr %464, i64 %470
  %474 = load float, ptr %473, align 4, !tbaa !54
  %475 = getelementptr inbounds %struct.ScrewVertConnect, ptr %284, i64 %456, i32 1
  %476 = getelementptr inbounds %struct.ScrewVertConnect, ptr %284, i64 %456, i32 1, i64 %470
  %477 = load float, ptr %476, align 4, !tbaa !54
  %478 = fcmp olt float %472, %477
  %479 = fcmp olt float %477, %474
  %480 = select i1 %478, i1 %479, i1 false
  br i1 %480, label %504, label %481

481:                                              ; preds = %468
  %482 = fcmp ogt float %472, %477
  %483 = fcmp ogt float %477, %474
  %484 = select i1 %482, i1 %483, i1 false
  br i1 %484, label %504, label %485

485:                                              ; preds = %481
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %460, ptr noundef nonnull %475) #16
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %464, ptr noundef nonnull %475) #16
  call fastcc void @normalize_v3(ptr noundef nonnull %7) #16
  call fastcc void @normalize_v3(ptr noundef nonnull %8) #16
  %486 = load i8, ptr %57, align 4, !tbaa !53
  %487 = zext i8 %486 to i64
  %488 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 %487
  %489 = load float, ptr %488, align 4, !tbaa !54
  %490 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 %487
  %491 = load float, ptr %490, align 4, !tbaa !54
  %492 = fcmp uge float %489, %491
  %493 = xor i1 %492, true
  br label %504

494:                                              ; preds = %455
  br i1 %465, label %495, label %504

495:                                              ; preds = %494
  %496 = load i8, ptr %57, align 4, !tbaa !53
  %497 = zext i8 %496 to i64
  %498 = getelementptr inbounds float, ptr %460, i64 %497
  %499 = load float, ptr %498, align 4, !tbaa !54
  %500 = getelementptr inbounds %struct.ScrewVertConnect, ptr %284, i64 %456, i32 1, i64 %497
  %501 = load float, ptr %500, align 4, !tbaa !54
  %502 = fcmp uge float %499, %501
  %503 = xor i1 %502, true
  br label %504

504:                                              ; preds = %494, %468, %481, %485, %495
  %505 = phi i1 [ true, %494 ], [ true, %468 ], [ false, %481 ], [ %492, %485 ], [ %502, %495 ]
  %506 = phi i1 [ false, %494 ], [ false, %468 ], [ true, %481 ], [ %493, %485 ], [ %503, %495 ]
  %507 = select i1 %363, i1 %505, i1 %506
  %508 = zext i1 %507 to i8
  br label %509

509:                                              ; preds = %504, %553
  %510 = phi i32 [ 1, %553 ], [ %450, %504 ]
  %511 = phi i8 [ %525, %553 ], [ %508, %504 ]
  call fastcc void @screwvert_iter_init(ptr noundef nonnull %16, ptr noundef %284, i32 noundef %449, i32 noundef %510) #16
  %512 = load ptr, ptr %361, align 8, !tbaa !86
  %513 = getelementptr inbounds %struct.ScrewVertConnect, ptr %512, i64 0, i32 5
  store i8 1, ptr %513, align 8, !tbaa !85
  %514 = icmp eq i32 %510, 1
  br i1 %514, label %515, label %524

515:                                              ; preds = %509
  %516 = load i32, ptr %457, align 4, !tbaa !36
  %517 = icmp ult i32 %516, -2
  br i1 %517, label %518, label %524

518:                                              ; preds = %515
  %519 = load i32, ptr %461, align 4, !tbaa !36
  %520 = icmp ult i32 %519, -2
  br i1 %520, label %521, label %524

521:                                              ; preds = %518
  %522 = icmp eq i8 %511, 0
  %523 = zext i1 %522 to i8
  br label %524

524:                                              ; preds = %509, %515, %518, %521
  %525 = phi i8 [ %523, %521 ], [ %511, %518 ], [ %511, %515 ], [ %511, %509 ]
  %526 = icmp eq i8 %525, 1
  %527 = icmp eq i8 %525, 0
  br label %528

528:                                              ; preds = %524, %550
  %529 = phi ptr [ %512, %524 ], [ %551, %550 ]
  %530 = getelementptr inbounds %struct.ScrewVertConnect, ptr %529, i64 0, i32 5
  %531 = load i8, ptr %530, align 8, !tbaa !85
  %532 = icmp eq i8 %531, 2
  br i1 %532, label %553, label %533

533:                                              ; preds = %528
  store i8 2, ptr %530, align 8, !tbaa !85
  %534 = load ptr, ptr %364, align 8, !tbaa !90
  %535 = icmp eq ptr %534, null
  br i1 %535, label %550, label %536

536:                                              ; preds = %533
  %537 = load i32, ptr %362, align 8, !tbaa !91
  %538 = load i32, ptr %534, align 4, !tbaa !75
  %539 = icmp eq i32 %537, %538
  br i1 %539, label %540, label %544

540:                                              ; preds = %536
  br i1 %527, label %541, label %550

541:                                              ; preds = %540
  %542 = getelementptr inbounds %struct.MEdge, ptr %534, i64 0, i32 1
  %543 = load i32, ptr %542, align 4, !tbaa !76
  store i32 %543, ptr %534, align 4, !tbaa !75
  store i32 %537, ptr %542, align 4, !tbaa !76
  br label %550

544:                                              ; preds = %536
  %545 = getelementptr inbounds %struct.MEdge, ptr %534, i64 0, i32 1
  %546 = load i32, ptr %545, align 4, !tbaa !76
  %547 = icmp eq i32 %537, %546
  %548 = select i1 %547, i1 %526, i1 false
  br i1 %548, label %549, label %550

549:                                              ; preds = %544
  store i32 %537, ptr %534, align 4, !tbaa !75
  store i32 %538, ptr %545, align 4, !tbaa !76
  br label %550

550:                                              ; preds = %541, %540, %549, %544, %533
  call fastcc void @screwvert_iter_step(ptr noundef nonnull %16) #16
  %551 = load ptr, ptr %361, align 8, !tbaa !86
  %552 = icmp eq ptr %551, null
  br i1 %552, label %553, label %528, !llvm.loop !92

553:                                              ; preds = %550, %528
  %554 = icmp eq i32 %510, 0
  br i1 %554, label %509, label %555, !llvm.loop !93

555:                                              ; preds = %553, %453
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #15
  br label %556

556:                                              ; preds = %555, %411
  %557 = getelementptr inbounds %struct.ScrewVertConnect, ptr %413, i64 0, i32 3
  %558 = load i32, ptr %557, align 4, !tbaa !36
  %559 = icmp ult i32 %558, -2
  br i1 %559, label %560, label %609

560:                                              ; preds = %556
  %561 = getelementptr inbounds %struct.ScrewVertConnect, ptr %413, i64 0, i32 3, i64 1
  %562 = load i32, ptr %561, align 4, !tbaa !36
  %563 = icmp ult i32 %562, -2
  br i1 %563, label %564, label %578

564:                                              ; preds = %560
  %565 = zext i32 %558 to i64
  %566 = getelementptr inbounds %struct.MVert, ptr %141, i64 %565
  %567 = getelementptr inbounds %struct.MVert, ptr %141, i64 %412
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef %566, ptr noundef %567) #16
  %568 = load i32, ptr %561, align 4, !tbaa !36
  %569 = zext i32 %568 to i64
  %570 = getelementptr inbounds %struct.MVert, ptr %141, i64 %569
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %8, ptr noundef %570, ptr noundef %567) #16
  call fastcc void @normalize_v3(ptr noundef nonnull %7) #16
  call fastcc void @normalize_v3(ptr noundef nonnull %8) #16
  %571 = getelementptr inbounds %struct.ScrewVertConnect, ptr %413, i64 0, i32 4
  %572 = load ptr, ptr %571, align 8, !tbaa !61
  %573 = load i32, ptr %572, align 4, !tbaa !75
  %574 = zext i32 %573 to i64
  %575 = icmp eq i64 %412, %574
  br i1 %575, label %576, label %577

576:                                              ; preds = %564
  call fastcc void @sub_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %8) #16
  br label %593

577:                                              ; preds = %564
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %7) #16
  br label %593

578:                                              ; preds = %560
  %579 = getelementptr inbounds %struct.ScrewVertConnect, ptr %413, i64 0, i32 4
  %580 = load ptr, ptr %579, align 8, !tbaa !61
  %581 = getelementptr inbounds %struct.MEdge, ptr %580, i64 0, i32 1
  %582 = load i32, ptr %581, align 4, !tbaa !76
  %583 = zext i32 %582 to i64
  %584 = icmp eq i64 %412, %583
  br i1 %584, label %585, label %589

585:                                              ; preds = %578
  %586 = getelementptr inbounds %struct.MVert, ptr %141, i64 %412
  %587 = zext i32 %558 to i64
  %588 = getelementptr inbounds %struct.MVert, ptr %141, i64 %587
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef %586, ptr noundef %588) #16
  br label %593

589:                                              ; preds = %578
  %590 = zext i32 %558 to i64
  %591 = getelementptr inbounds %struct.MVert, ptr %141, i64 %590
  %592 = getelementptr inbounds %struct.MVert, ptr %141, i64 %412
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef %591, ptr noundef %592) #16
  br label %593

593:                                              ; preds = %585, %589, %576, %577
  %594 = getelementptr inbounds %struct.ScrewVertConnect, ptr %413, i64 0, i32 1
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %594) #16
  %595 = call fastcc zeroext i8 @is_zero_v3(ptr noundef nonnull %8) #16, !range !94
  %596 = icmp eq i8 %595, 0
  br i1 %596, label %607, label %597

597:                                              ; preds = %593
  %598 = getelementptr inbounds %struct.ScrewVertConnect, ptr %413, i64 0, i32 4
  %599 = load ptr, ptr %598, align 8, !tbaa !61
  %600 = getelementptr inbounds %struct.MEdge, ptr %599, i64 0, i32 1
  %601 = load i32, ptr %600, align 4, !tbaa !76
  %602 = zext i32 %601 to i64
  %603 = icmp eq i64 %412, %602
  %604 = getelementptr inbounds %struct.ScrewVertConnect, ptr %413, i64 0, i32 2
  br i1 %603, label %605, label %606

605:                                              ; preds = %597
  call fastcc void @negate_v3_v3(ptr noundef nonnull %604, ptr noundef nonnull %6) #16
  br label %612

606:                                              ; preds = %597
  call fastcc void @copy_v3_v3(ptr noundef nonnull %604, ptr noundef nonnull %6) #16
  br label %612

607:                                              ; preds = %593
  %608 = getelementptr inbounds %struct.ScrewVertConnect, ptr %413, i64 0, i32 2
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %608, ptr noundef nonnull %7, ptr noundef nonnull %8) #16
  br label %612

609:                                              ; preds = %556
  %610 = getelementptr inbounds %struct.ScrewVertConnect, ptr %413, i64 0, i32 2
  %611 = getelementptr inbounds %struct.ScrewVertConnect, ptr %413, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %610, ptr noundef nonnull %611) #16
  br label %612

612:                                              ; preds = %607, %606, %605, %609
  br i1 %363, label %613, label %615

613:                                              ; preds = %612
  %614 = getelementptr inbounds %struct.ScrewVertConnect, ptr %413, i64 0, i32 2
  call fastcc void @negate_v3(ptr noundef nonnull %614) #16
  br label %615

615:                                              ; preds = %613, %612
  %616 = getelementptr inbounds %struct.ScrewVertConnect, ptr %413, i64 0, i32 2
  call fastcc void @normalize_v3(ptr noundef nonnull %616) #16
  %617 = getelementptr inbounds %struct.MVert, ptr %141, i64 %412, i32 1
  call fastcc void @normal_float_to_short_v3(ptr noundef nonnull %617, ptr noundef nonnull %616) #16
  %618 = add nuw nsw i64 %412, 1
  %619 = getelementptr inbounds %struct.ScrewVertConnect, ptr %413, i64 1
  %620 = icmp eq i64 %618, %366
  br i1 %620, label %629, label %411, !llvm.loop !95

621:                                              ; preds = %278, %621
  %622 = phi i32 [ %625, %621 ], [ 0, %278 ]
  %623 = phi ptr [ %626, %621 ], [ %141, %278 ]
  %624 = phi ptr [ %627, %621 ], [ %135, %278 ]
  call fastcc void @copy_v3_v3(ptr noundef %623, ptr noundef %624) #16
  %625 = add nuw i32 %622, 1
  %626 = getelementptr inbounds %struct.MVert, ptr %623, i64 1
  %627 = getelementptr inbounds %struct.MVert, ptr %624, i64 1
  %628 = icmp eq i32 %625, %279
  br i1 %628, label %629, label %621, !llvm.loop !96

629:                                              ; preds = %615, %288, %621
  %630 = phi ptr [ %216, %621 ], [ %216, %288 ], [ %409, %615 ]
  %631 = phi ptr [ null, %621 ], [ %284, %288 ], [ %284, %615 ]
  %632 = sext i1 %119 to i32
  %633 = add i32 %123, %632
  %634 = uitofp i32 %633 to float
  %635 = fdiv float %91, %634
  %636 = fcmp une float %118, 0.000000e+00
  %637 = getelementptr inbounds [4 x [4 x float]], ptr %18, i64 0, i64 3
  %638 = add i32 %123, -1
  %639 = uitofp i32 %638 to float
  %640 = icmp eq ptr %631, null
  %641 = getelementptr inbounds [4 x [4 x float]], ptr %10, i64 0, i64 3
  %642 = call i32 @llvm.umax.i32(i32 %33, i32 1)
  %643 = zext i32 %123 to i64
  %644 = zext i32 %642 to i64
  br label %645

645:                                              ; preds = %629, %687
  %646 = phi i64 [ 1, %629 ], [ %688, %687 ]
  %647 = phi ptr [ %630, %629 ], [ %682, %687 ]
  %648 = trunc i64 %646 to i32
  %649 = mul i32 %33, %648
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %18) #15
  %650 = uitofp i32 %648 to float
  %651 = fmul float %635, %650
  %652 = load ptr, ptr %66, align 8, !tbaa !55
  %653 = icmp eq ptr %652, null
  br i1 %653, label %655, label %654

654:                                              ; preds = %645
  call void @axis_angle_normalized_to_mat3(ptr noundef nonnull %9, ptr noundef nonnull %6, float noundef %651) #14
  call void @copy_m4_m3(ptr noundef nonnull %18, ptr noundef nonnull %9) #14
  br label %656

655:                                              ; preds = %645
  call void @unit_m4(ptr noundef nonnull %18) #14
  call void @rotate_m4(ptr noundef nonnull %18, i8 noundef zeroext %87, float noundef %651) #14
  call void @copy_m3_m4(ptr noundef nonnull %9, ptr noundef nonnull %18) #14
  br label %656

656:                                              ; preds = %655, %654
  br i1 %636, label %657, label %660

657:                                              ; preds = %656
  %658 = fdiv float %650, %639
  %659 = fmul float %118, %658
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %637, ptr noundef nonnull %6, float noundef %659) #16
  br label %660

660:                                              ; preds = %656, %657
  call void @DM_copy_vert_data(ptr noundef %2, ptr noundef %132, i32 noundef 0, i32 noundef %649, i32 noundef %33) #14
  %661 = zext i32 %649 to i64
  %662 = getelementptr inbounds %struct.MVert, ptr %141, i64 %661
  br label %663

663:                                              ; preds = %660, %676
  %664 = phi i64 [ 0, %660 ], [ %683, %676 ]
  %665 = phi ptr [ %647, %660 ], [ %682, %676 ]
  %666 = phi ptr [ %141, %660 ], [ %684, %676 ]
  %667 = phi ptr [ %662, %660 ], [ %685, %676 ]
  br i1 %640, label %671, label %668

668:                                              ; preds = %663
  %669 = getelementptr inbounds %struct.ScrewVertConnect, ptr %631, i64 %664, i32 2
  call void @mul_v3_m3v3(ptr noundef nonnull %17, ptr noundef nonnull %9, ptr noundef nonnull %669) #14
  %670 = getelementptr inbounds %struct.MVert, ptr %667, i64 0, i32 1
  call fastcc void @normal_float_to_short_v3(ptr noundef nonnull %670, ptr noundef nonnull %17) #16
  br label %671

671:                                              ; preds = %668, %663
  call fastcc void @copy_v3_v3(ptr noundef %667, ptr noundef %666) #16
  %672 = load ptr, ptr %66, align 8, !tbaa !55
  %673 = icmp eq ptr %672, null
  br i1 %673, label %675, label %674

674:                                              ; preds = %671
  call fastcc void @sub_v3_v3(ptr noundef %667, ptr noundef nonnull %641) #16
  call void @mul_m4_v3(ptr noundef nonnull %18, ptr noundef %667) #14
  call fastcc void @add_v3_v3(ptr noundef %667, ptr noundef nonnull %641) #16
  br label %676

675:                                              ; preds = %671
  call void @mul_m4_v3(ptr noundef nonnull %18, ptr noundef %667) #14
  br label %676

676:                                              ; preds = %675, %674
  %677 = trunc i64 %664 to i32
  %678 = add i32 %649, %677
  store i32 %678, ptr %665, align 4, !tbaa !75
  %679 = sub i32 %678, %33
  %680 = getelementptr inbounds %struct.MEdge, ptr %665, i64 0, i32 1
  store i32 %679, ptr %680, align 4, !tbaa !76
  %681 = getelementptr inbounds %struct.MEdge, ptr %665, i64 0, i32 4
  store i16 34, ptr %681, align 2, !tbaa !67
  %682 = getelementptr inbounds %struct.MEdge, ptr %665, i64 1
  %683 = add nuw nsw i64 %664, 1
  %684 = getelementptr inbounds %struct.MVert, ptr %666, i64 1
  %685 = getelementptr inbounds %struct.MVert, ptr %667, i64 1
  %686 = icmp eq i64 %683, %644
  br i1 %686, label %687, label %663, !llvm.loop !97

687:                                              ; preds = %676
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %18) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #15
  %688 = add nuw nsw i64 %646, 1
  %689 = icmp eq i64 %688, %643
  br i1 %689, label %690, label %645, !llvm.loop !98

690:                                              ; preds = %687
  br i1 %640, label %693, label %691

691:                                              ; preds = %690
  %692 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  call void %692(ptr noundef nonnull %631) #14
  br label %693

693:                                              ; preds = %691, %690
  br i1 %119, label %705, label %694

694:                                              ; preds = %693
  %695 = mul i32 %638, %33
  br label %696

696:                                              ; preds = %694, %696
  %697 = phi i32 [ %703, %696 ], [ 0, %694 ]
  %698 = phi ptr [ %702, %696 ], [ %682, %694 ]
  store i32 %697, ptr %698, align 4, !tbaa !75
  %699 = add i32 %697, %695
  %700 = getelementptr inbounds %struct.MEdge, ptr %698, i64 0, i32 1
  store i32 %699, ptr %700, align 4, !tbaa !76
  %701 = getelementptr inbounds %struct.MEdge, ptr %698, i64 0, i32 4
  store i16 34, ptr %701, align 2, !tbaa !67
  %702 = getelementptr inbounds %struct.MEdge, ptr %698, i64 1
  %703 = add nuw i32 %697, 1
  %704 = icmp eq i32 %703, %642
  br i1 %704, label %705, label %696, !llvm.loop !99

705:                                              ; preds = %696, %693
  %706 = phi ptr [ %682, %693 ], [ %702, %696 ]
  %707 = mul i32 %633, %33
  %708 = add i32 %707, %36
  br i1 %198, label %925, label %709

709:                                              ; preds = %705
  %710 = select i1 %119, i32 -2, i32 -1
  %711 = add i32 %123, %710
  %712 = icmp eq ptr %273, null
  %713 = ptrtoint ptr %147 to i64
  %714 = select i1 %28, i64 0, i64 3
  %715 = select i1 %28, i64 1, i64 2
  %716 = select i1 %28, i64 2, i64 1
  %717 = select i1 %28, i64 3, i64 0
  %718 = add i32 %708, -1
  %719 = zext nneg i16 %29 to i64
  %720 = zext nneg i16 %30 to i64
  %721 = zext i32 %36 to i64
  br label %722

722:                                              ; preds = %709, %914
  %723 = phi i64 [ 0, %709 ], [ %922, %914 ]
  %724 = phi i64 [ 0, %709 ], [ %911, %914 ]
  %725 = phi float [ undef, %709 ], [ %783, %914 ]
  %726 = phi float [ undef, %709 ], [ %782, %914 ]
  %727 = phi ptr [ %144, %709 ], [ %909, %914 ]
  %728 = phi ptr [ %147, %709 ], [ %910, %914 ]
  %729 = phi ptr [ %706, %709 ], [ %921, %914 ]
  %730 = phi ptr [ %150, %709 ], [ %923, %914 ]
  br i1 %217, label %734, label %731

731:                                              ; preds = %722
  %732 = getelementptr inbounds i32, ptr %274, i64 %723
  %733 = load i32, ptr %732, align 4, !tbaa !36
  br label %734

734:                                              ; preds = %722, %731
  %735 = phi i32 [ %733, %731 ], [ -1, %722 ]
  %736 = icmp eq i32 %735, -1
  br i1 %712, label %748, label %737

737:                                              ; preds = %734
  %738 = getelementptr inbounds %struct.MEdge, ptr %150, i64 %723
  %739 = load i32, ptr %738, align 4, !tbaa !75
  %740 = zext i32 %739 to i64
  %741 = getelementptr inbounds i32, ptr %273, i64 %740
  %742 = load i32, ptr %741, align 4, !tbaa !36
  %743 = getelementptr inbounds %struct.MEdge, ptr %150, i64 %723, i32 1
  %744 = load i32, ptr %743, align 4, !tbaa !76
  %745 = zext i32 %744 to i64
  %746 = getelementptr inbounds i32, ptr %273, i64 %745
  %747 = load i32, ptr %746, align 4, !tbaa !36
  br label %748

748:                                              ; preds = %734, %737
  %749 = phi i32 [ %742, %737 ], [ -1, %734 ]
  %750 = phi i32 [ %747, %737 ], [ -1, %734 ]
  %751 = icmp ne i32 %749, -1
  %752 = load i32, ptr %730, align 4, !tbaa !75
  %753 = getelementptr inbounds %struct.MEdge, ptr %730, i64 0, i32 1
  %754 = load i32, ptr %753, align 4, !tbaa !76
  br i1 %736, label %759, label %755

755:                                              ; preds = %748
  %756 = zext i32 %735 to i64
  %757 = getelementptr inbounds %struct.MPoly, ptr %272, i64 %756, i32 2
  %758 = load i16, ptr %757, align 4, !tbaa !100
  br label %759

759:                                              ; preds = %748, %755
  %760 = phi i16 [ %758, %755 ], [ 0, %748 ]
  %761 = or i1 %158, %751
  br i1 %761, label %781, label %762

762:                                              ; preds = %759
  %763 = getelementptr inbounds %struct.MEdge, ptr %150, i64 %723
  %764 = load i32, ptr %763, align 4, !tbaa !75
  %765 = zext i32 %764 to i64
  %766 = getelementptr inbounds %struct.MVert, ptr %141, i64 %765
  %767 = call float @dist_signed_to_plane_v3(ptr noundef %766, ptr noundef nonnull %5) #14
  %768 = getelementptr inbounds %struct.MEdge, ptr %150, i64 %723, i32 1
  %769 = load i32, ptr %768, align 4, !tbaa !76
  %770 = zext i32 %769 to i64
  %771 = getelementptr inbounds %struct.MVert, ptr %141, i64 %770
  %772 = call float @dist_signed_to_plane_v3(ptr noundef %771, ptr noundef nonnull %5) #14
  %773 = load i16, ptr %25, align 2, !tbaa !40
  %774 = and i16 %773, 128
  %775 = icmp eq i16 %774, 0
  br i1 %775, label %781, label %776

776:                                              ; preds = %762
  %777 = fsub float %767, %197
  %778 = fmul float %196, %777
  %779 = fsub float %772, %197
  %780 = fmul float %196, %779
  br label %781

781:                                              ; preds = %762, %776, %759
  %782 = phi float [ %778, %776 ], [ %767, %762 ], [ %726, %759 ]
  %783 = phi float [ %780, %776 ], [ %772, %762 ], [ %725, %759 ]
  %784 = trunc i64 %723 to i32
  %785 = mul i32 %638, %784
  %786 = add i32 %718, %785
  %787 = add i32 %785, %708
  %788 = getelementptr inbounds %struct.MEdge, ptr %730, i64 0, i32 4
  %789 = getelementptr inbounds %struct.MEdge, ptr %730, i64 0, i32 2
  %790 = shl i64 %724, 32
  %791 = ashr exact i64 %790, 32
  %792 = add i32 %786, %711
  br label %793

793:                                              ; preds = %781, %905
  %794 = phi i64 [ %791, %781 ], [ %911, %905 ]
  %795 = phi i32 [ 0, %781 ], [ %912, %905 ]
  %796 = phi i32 [ %752, %781 ], [ %908, %905 ]
  %797 = phi i32 [ %754, %781 ], [ %907, %905 ]
  %798 = phi ptr [ %727, %781 ], [ %909, %905 ]
  %799 = phi ptr [ %728, %781 ], [ %910, %905 ]
  %800 = phi ptr [ %729, %781 ], [ %906, %905 ]
  br i1 %736, label %803, label %801

801:                                              ; preds = %793
  %802 = trunc i64 %794 to i32
  call void @DM_copy_poly_data(ptr noundef %2, ptr noundef %132, i32 noundef %735, i32 noundef %802, i32 noundef 1) #14
  br label %807

803:                                              ; preds = %793
  %804 = getelementptr inbounds %struct.MPoly, ptr %798, i64 0, i32 3
  store i8 %52, ptr %804, align 2, !tbaa !101
  %805 = getelementptr inbounds %struct.MPoly, ptr %798, i64 0, i32 2
  store i16 %760, ptr %805, align 4, !tbaa !100
  %806 = trunc i64 %794 to i32
  br label %807

807:                                              ; preds = %803, %801
  %808 = phi i32 [ %806, %803 ], [ %802, %801 ]
  %809 = getelementptr inbounds i32, ptr %157, i64 %794
  store i32 %735, ptr %809, align 4
  %810 = shl nsw i32 %808, 2
  store i32 %810, ptr %798, align 4, !tbaa !69
  %811 = getelementptr inbounds %struct.MPoly, ptr %798, i64 0, i32 1
  store i32 4, ptr %811, align 4, !tbaa !71
  br i1 %751, label %812, label %847

812:                                              ; preds = %807
  %813 = ptrtoint ptr %799 to i64
  %814 = sub i64 %813, %713
  %815 = lshr exact i64 %814, 3
  %816 = trunc i64 %815 to i32
  call void @DM_copy_loop_data(ptr noundef %2, ptr noundef %132, i32 noundef %749, i32 noundef %816, i32 noundef 1) #14
  %817 = add nsw i32 %816, 1
  call void @DM_copy_loop_data(ptr noundef %2, ptr noundef %132, i32 noundef %750, i32 noundef %817, i32 noundef 1) #14
  %818 = add nsw i32 %816, 2
  call void @DM_copy_loop_data(ptr noundef %2, ptr noundef %132, i32 noundef %750, i32 noundef %818, i32 noundef 1) #14
  %819 = add nsw i32 %816, 3
  call void @DM_copy_loop_data(ptr noundef %2, ptr noundef %132, i32 noundef %749, i32 noundef %819, i32 noundef 1) #14
  br i1 %158, label %869, label %820

820:                                              ; preds = %812
  %821 = uitofp i32 %795 to float
  %822 = fmul float %130, %821
  %823 = add nuw i32 %795, 1
  %824 = uitofp i32 %823 to float
  %825 = fmul float %130, %824
  %826 = shl i64 %814, 29
  %827 = ashr i64 %826, 32
  br label %828

828:                                              ; preds = %820, %828
  %829 = phi i64 [ 0, %820 ], [ %845, %828 ]
  %830 = getelementptr inbounds ptr, ptr %44, i64 %829
  %831 = load ptr, ptr %830, align 8, !tbaa !61
  %832 = getelementptr inbounds %struct.MLoopUV, ptr %831, i64 %827
  %833 = getelementptr inbounds %struct.MLoopUV, ptr %832, i64 %714
  %834 = load float, ptr %833, align 4, !tbaa !54
  %835 = fadd float %822, %834
  store float %835, ptr %833, align 4, !tbaa !54
  %836 = getelementptr inbounds %struct.MLoopUV, ptr %832, i64 %715
  %837 = load float, ptr %836, align 4, !tbaa !54
  %838 = fadd float %822, %837
  store float %838, ptr %836, align 4, !tbaa !54
  %839 = getelementptr inbounds %struct.MLoopUV, ptr %832, i64 %716
  %840 = load float, ptr %839, align 4, !tbaa !54
  %841 = fadd float %825, %840
  store float %841, ptr %839, align 4, !tbaa !54
  %842 = getelementptr inbounds %struct.MLoopUV, ptr %832, i64 %717
  %843 = load float, ptr %842, align 4, !tbaa !54
  %844 = fadd float %825, %843
  store float %844, ptr %842, align 4, !tbaa !54
  %845 = add nuw nsw i64 %829, 1
  %846 = icmp eq i64 %845, %42
  br i1 %846, label %869, label %828, !llvm.loop !102

847:                                              ; preds = %807
  br i1 %158, label %869, label %848

848:                                              ; preds = %847
  %849 = ptrtoint ptr %799 to i64
  %850 = sub i64 %849, %713
  %851 = uitofp i32 %795 to float
  %852 = fmul float %130, %851
  %853 = add nuw i32 %795, 1
  %854 = uitofp i32 %853 to float
  %855 = fmul float %130, %854
  %856 = shl i64 %850, 29
  %857 = ashr i64 %856, 32
  br label %858

858:                                              ; preds = %848, %858
  %859 = phi i64 [ 0, %848 ], [ %867, %858 ]
  %860 = getelementptr inbounds ptr, ptr %44, i64 %859
  %861 = load ptr, ptr %860, align 8, !tbaa !61
  %862 = getelementptr inbounds %struct.MLoopUV, ptr %861, i64 %857
  %863 = getelementptr inbounds %struct.MLoopUV, ptr %862, i64 %714
  call fastcc void @copy_v2_fl2(ptr noundef %863, float noundef %852, float noundef %782) #16
  %864 = getelementptr inbounds %struct.MLoopUV, ptr %862, i64 %715
  call fastcc void @copy_v2_fl2(ptr noundef nonnull %864, float noundef %852, float noundef %783) #16
  %865 = getelementptr inbounds %struct.MLoopUV, ptr %862, i64 %716
  call fastcc void @copy_v2_fl2(ptr noundef nonnull %865, float noundef %855, float noundef %783) #16
  %866 = getelementptr inbounds %struct.MLoopUV, ptr %862, i64 %717
  call fastcc void @copy_v2_fl2(ptr noundef %866, float noundef %855, float noundef %782) #16
  %867 = add nuw nsw i64 %859, 1
  %868 = icmp eq i64 %867, %42
  br i1 %868, label %869, label %858, !llvm.loop !103

869:                                              ; preds = %858, %828, %812, %847
  %870 = icmp ne i32 %795, %711
  %871 = select i1 %119, i1 true, i1 %870
  %872 = getelementptr inbounds %struct.MLoop, ptr %799, i64 %714
  store i32 %796, ptr %872, align 4, !tbaa !74
  %873 = getelementptr inbounds %struct.MLoop, ptr %799, i64 %715
  store i32 %797, ptr %873, align 4, !tbaa !74
  %874 = getelementptr inbounds %struct.MLoop, ptr %799, i64 %716
  %875 = getelementptr inbounds %struct.MLoop, ptr %799, i64 %717
  br i1 %871, label %876, label %896

876:                                              ; preds = %869
  %877 = add i32 %797, %33
  store i32 %877, ptr %874, align 4, !tbaa !74
  %878 = add i32 %796, %33
  store i32 %878, ptr %875, align 4, !tbaa !74
  %879 = icmp eq i32 %795, 0
  %880 = add i32 %786, %795
  %881 = select i1 %879, i32 %784, i32 %880
  %882 = getelementptr inbounds %struct.MLoop, ptr %799, i64 %719, i32 1
  store i32 %881, ptr %882, align 4, !tbaa !72
  %883 = add i32 %797, %36
  %884 = getelementptr inbounds %struct.MLoop, ptr %799, i64 1, i32 1
  store i32 %883, ptr %884, align 4, !tbaa !72
  %885 = add i32 %787, %795
  %886 = getelementptr inbounds %struct.MLoop, ptr %799, i64 %720, i32 1
  store i32 %885, ptr %886, align 4, !tbaa !72
  %887 = add i32 %796, %36
  %888 = getelementptr inbounds %struct.MLoop, ptr %799, i64 3, i32 1
  store i32 %887, ptr %888, align 4, !tbaa !72
  br i1 %879, label %905, label %889

889:                                              ; preds = %876
  store i32 %796, ptr %800, align 4, !tbaa !75
  %890 = getelementptr inbounds %struct.MEdge, ptr %800, i64 0, i32 1
  store i32 %797, ptr %890, align 4, !tbaa !76
  %891 = load i16, ptr %788, align 2, !tbaa !67
  %892 = getelementptr inbounds %struct.MEdge, ptr %800, i64 0, i32 4
  store i16 %891, ptr %892, align 2, !tbaa !67
  %893 = load i8, ptr %789, align 4, !tbaa !65
  %894 = getelementptr inbounds %struct.MEdge, ptr %800, i64 0, i32 2
  store i8 %893, ptr %894, align 4, !tbaa !65
  %895 = getelementptr inbounds %struct.MEdge, ptr %800, i64 1
  br label %905

896:                                              ; preds = %869
  %897 = load i32, ptr %753, align 4, !tbaa !76
  store i32 %897, ptr %874, align 4, !tbaa !74
  %898 = load i32, ptr %730, align 4, !tbaa !75
  store i32 %898, ptr %875, align 4, !tbaa !74
  %899 = getelementptr inbounds %struct.MLoop, ptr %799, i64 %719, i32 1
  store i32 %792, ptr %899, align 4, !tbaa !72
  %900 = add i32 %797, %36
  %901 = getelementptr inbounds %struct.MLoop, ptr %799, i64 1, i32 1
  store i32 %900, ptr %901, align 4, !tbaa !72
  %902 = getelementptr inbounds %struct.MLoop, ptr %799, i64 %720, i32 1
  store i32 %784, ptr %902, align 4, !tbaa !72
  %903 = add i32 %796, %36
  %904 = getelementptr inbounds %struct.MLoop, ptr %799, i64 3, i32 1
  store i32 %903, ptr %904, align 4, !tbaa !72
  br label %905

905:                                              ; preds = %876, %889, %896
  %906 = phi ptr [ %800, %896 ], [ %895, %889 ], [ %800, %876 ]
  %907 = phi i32 [ %797, %896 ], [ %877, %889 ], [ %877, %876 ]
  %908 = phi i32 [ %796, %896 ], [ %878, %889 ], [ %878, %876 ]
  %909 = getelementptr inbounds %struct.MPoly, ptr %798, i64 1
  %910 = getelementptr inbounds %struct.MLoop, ptr %799, i64 4
  %911 = add nsw i64 %794, 1
  %912 = add nuw i32 %795, 1
  %913 = icmp eq i32 %795, %711
  br i1 %913, label %914, label %793, !llvm.loop !104

914:                                              ; preds = %905
  store i32 %908, ptr %906, align 4, !tbaa !75
  %915 = getelementptr inbounds %struct.MEdge, ptr %906, i64 0, i32 1
  store i32 %907, ptr %915, align 4, !tbaa !76
  %916 = load i16, ptr %788, align 2, !tbaa !67
  %917 = and i16 %916, -129
  %918 = getelementptr inbounds %struct.MEdge, ptr %906, i64 0, i32 4
  store i16 %917, ptr %918, align 2, !tbaa !67
  %919 = load i8, ptr %789, align 4, !tbaa !65
  %920 = getelementptr inbounds %struct.MEdge, ptr %906, i64 0, i32 2
  store i8 %919, ptr %920, align 4, !tbaa !65
  %921 = getelementptr inbounds %struct.MEdge, ptr %906, i64 1
  %922 = add nuw nsw i64 %723, 1
  %923 = getelementptr inbounds %struct.MEdge, ptr %730, i64 1
  %924 = icmp eq i64 %922, %721
  br i1 %924, label %925, label %722, !llvm.loop !105

925:                                              ; preds = %914, %705
  %926 = icmp eq ptr %274, null
  br i1 %926, label %929, label %927

927:                                              ; preds = %925
  %928 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  call void %928(ptr noundef nonnull %274) #14
  br label %929

929:                                              ; preds = %927, %925
  %930 = icmp eq ptr %273, null
  br i1 %930, label %933, label %931

931:                                              ; preds = %929
  %932 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  call void %932(ptr noundef nonnull %273) #14
  br label %933

933:                                              ; preds = %931, %929
  %934 = load i16, ptr %25, align 2, !tbaa !40
  %935 = and i16 %934, 2
  %936 = icmp eq i16 %935, 0
  br i1 %936, label %937, label %941

937:                                              ; preds = %933
  %938 = getelementptr inbounds %struct.DerivedMesh, ptr %132, i64 0, i32 16
  %939 = load i32, ptr %938, align 8, !tbaa !106
  %940 = or i32 %939, 4
  store i32 %940, ptr %938, align 8, !tbaa !106
  br label %941

941:                                              ; preds = %933, %937, %54
  %942 = phi ptr [ %55, %54 ], [ %132, %937 ], [ %132, %933 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  ret ptr %942
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @initData(ptr nocapture noundef writeonly %0) #1 !PGOFuncName !107 {
  %2 = getelementptr inbounds %struct.ScrewModifierData, ptr %0, i64 0, i32 1
  store ptr null, ptr %2, align 8, !tbaa !55
  %3 = getelementptr inbounds %struct.ScrewModifierData, ptr %0, i64 0, i32 6
  store float 0x401921FB60000000, ptr %3, align 8, !tbaa !51
  %4 = getelementptr inbounds %struct.ScrewModifierData, ptr %0, i64 0, i32 7
  store i8 2, ptr %4, align 4, !tbaa !53
  %5 = getelementptr inbounds %struct.ScrewModifierData, ptr %0, i64 0, i32 9
  store i16 32, ptr %5, align 2, !tbaa !40
  %6 = getelementptr inbounds %struct.ScrewModifierData, ptr %0, i64 0, i32 2
  store i32 16, ptr %6, align 8, !tbaa !108
  %7 = getelementptr inbounds %struct.ScrewModifierData, ptr %0, i64 0, i32 3
  store i32 16, ptr %7, align 4, !tbaa !109
  %8 = getelementptr inbounds %struct.ScrewModifierData, ptr %0, i64 0, i32 4
  store i32 1, ptr %8, align 8, !tbaa !56
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @updateDepgraph(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr noundef %4) #0 !PGOFuncName !110 {
  %6 = getelementptr inbounds %struct.ScrewModifierData, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !55
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @dag_get_node(ptr noundef %1, ptr noundef nonnull %7) #14
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %10, ptr noundef %4, i16 noundef signext 40, ptr noundef nonnull @.str.1) #14
  br label %11

11:                                               ; preds = %9, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @foreachObjectLink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !PGOFuncName !111 {
  %5 = getelementptr inbounds %struct.ScrewModifierData, ptr %0, i64 0, i32 1
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %5) #14
  ret void
}

; Function Attrs: optsize
declare void @modifier_copyData_generic(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare i32 @CustomData_number_of_layers(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: optsize
declare ptr @CDDM_from_template(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #5 !PGOFuncName !112 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !113 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #16
  %3 = tail call float @sqrtf(float noundef %2) #14
  ret float %3
}

; Function Attrs: optsize
declare float @closest_to_line_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #1 !PGOFuncName !114 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !54
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

; Function Attrs: optsize
declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CustomData_add_layer(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CustomData_get_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DM_copy_vert_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @plane_from_point_normal_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CustomData_get_layer_n(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @dist_signed_squared_to_plane_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #7 !PGOFuncName !115 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #7 !PGOFuncName !116 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc float @sqrtf_signed(float noundef %0) unnamed_addr #8 !PGOFuncName !117 {
  %2 = fcmp ult float %0, 0.000000e+00
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call float @sqrtf(float noundef %0) #14
  br label %9

5:                                                ; preds = %1
  %6 = fneg float %0
  %7 = tail call float @sqrtf(float noundef %6) #14
  %8 = fneg float %7
  br label %9

9:                                                ; preds = %5, %3
  %10 = phi float [ %4, %3 ], [ %8, %5 ]
  ret float %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !118 {
  %3 = load float, ptr %1, align 4, !tbaa !54
  store float %3, ptr %0, align 4, !tbaa !54
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !54
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !54
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !54
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !119 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #16
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #14
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #16
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #16
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @screwvert_iter_init(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #9 !PGOFuncName !120 {
  store ptr %1, ptr %0, align 8, !tbaa !121
  %5 = getelementptr inbounds %struct.ScrewVertIter, ptr %0, i64 0, i32 2
  store i32 %2, ptr %5, align 8, !tbaa !91
  %6 = icmp ult i32 %2, -2
  br i1 %6, label %7, label %19

7:                                                ; preds = %4
  %8 = zext i32 %2 to i64
  %9 = getelementptr inbounds %struct.ScrewVertConnect, ptr %1, i64 %8
  %10 = getelementptr inbounds %struct.ScrewVertIter, ptr %0, i64 0, i32 1
  store ptr %9, ptr %10, align 8, !tbaa !86
  %11 = zext nneg i32 %3 to i64
  %12 = getelementptr inbounds %struct.ScrewVertConnect, ptr %1, i64 %8, i32 3, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !36
  %14 = getelementptr inbounds %struct.ScrewVertIter, ptr %0, i64 0, i32 3
  store i32 %13, ptr %14, align 4, !tbaa !122
  %15 = icmp eq i32 %3, 0
  %16 = zext i1 %15 to i64
  %17 = getelementptr inbounds %struct.ScrewVertConnect, ptr %1, i64 %8, i32 4, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !61
  br label %21

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.ScrewVertIter, ptr %0, i64 0, i32 1
  store ptr null, ptr %20, align 8, !tbaa !86
  br label %21

21:                                               ; preds = %19, %7
  %22 = phi ptr [ %18, %7 ], [ null, %19 ]
  %23 = getelementptr inbounds %struct.ScrewVertIter, ptr %0, i64 0, i32 4
  store ptr %22, ptr %23, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @screwvert_iter_step(ptr nocapture noundef %0) unnamed_addr #10 !PGOFuncName !123 {
  %2 = getelementptr inbounds %struct.ScrewVertIter, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !86
  %4 = getelementptr inbounds %struct.ScrewVertConnect, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !36
  %6 = getelementptr inbounds %struct.ScrewVertIter, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !122
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ScrewVertIter, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !91
  store i32 %11, ptr %6, align 4, !tbaa !122
  %12 = getelementptr inbounds %struct.ScrewVertConnect, ptr %3, i64 0, i32 3, i64 1
  %13 = load i32, ptr %12, align 4, !tbaa !36
  store i32 %13, ptr %10, align 8, !tbaa !91
  br label %22

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.ScrewVertConnect, ptr %3, i64 0, i32 3, i64 1
  %16 = load i32, ptr %15, align 4, !tbaa !36
  %17 = icmp eq i32 %16, %7
  %18 = getelementptr inbounds %struct.ScrewVertIter, ptr %0, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !91
  br i1 %17, label %20, label %22

20:                                               ; preds = %14
  store i32 %19, ptr %6, align 4, !tbaa !122
  %21 = load i32, ptr %4, align 4, !tbaa !36
  store i32 %21, ptr %18, align 8, !tbaa !91
  br label %22

22:                                               ; preds = %14, %20, %9
  %23 = phi i32 [ %21, %20 ], [ %13, %9 ], [ %19, %14 ]
  %24 = icmp ult i32 %23, -2
  br i1 %24, label %25, label %37

25:                                               ; preds = %22
  %26 = load ptr, ptr %0, align 8, !tbaa !121
  %27 = zext i32 %23 to i64
  %28 = getelementptr inbounds %struct.ScrewVertConnect, ptr %26, i64 %27
  store ptr %28, ptr %2, align 8, !tbaa !86
  %29 = getelementptr inbounds %struct.ScrewVertConnect, ptr %26, i64 %27, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !61
  %31 = getelementptr inbounds %struct.ScrewVertIter, ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !90
  %33 = icmp eq ptr %30, %32
  %34 = zext i1 %33 to i64
  %35 = getelementptr inbounds %struct.ScrewVertConnect, ptr %26, i64 %27, i32 4, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !61
  store ptr %36, ptr %31, align 8, !tbaa !90
  br label %39

37:                                               ; preds = %22
  %38 = getelementptr inbounds %struct.ScrewVertIter, ptr %0, i64 0, i32 4
  store ptr null, ptr %38, align 8, !tbaa !90
  store ptr null, ptr %2, align 8, !tbaa !86
  br label %39

39:                                               ; preds = %37, %25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #9 !PGOFuncName !124 {
  %4 = load float, ptr %1, align 4, !tbaa !54
  %5 = load float, ptr %2, align 4, !tbaa !54
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !54
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !54
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !54
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !54
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !54
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !54
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !125 {
  %3 = load float, ptr %1, align 4, !tbaa !54
  %4 = load float, ptr %0, align 4, !tbaa !54
  %5 = fsub float %4, %3
  store float %5, ptr %0, align 4, !tbaa !54
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !54
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !54
  %10 = fsub float %9, %7
  store float %10, ptr %8, align 4, !tbaa !54
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !54
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !54
  %15 = fsub float %14, %12
  store float %15, ptr %13, align 4, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #9 !PGOFuncName !126 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !54
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !54
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !54
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !54
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !54
  %15 = load float, ptr %8, align 4, !tbaa !54
  %16 = load float, ptr %2, align 4, !tbaa !54
  %17 = load float, ptr %1, align 4, !tbaa !54
  %18 = load float, ptr %6, align 4, !tbaa !54
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !54
  %23 = load float, ptr %1, align 4, !tbaa !54
  %24 = load float, ptr %10, align 4, !tbaa !54
  %25 = load float, ptr %4, align 4, !tbaa !54
  %26 = load float, ptr %2, align 4, !tbaa !54
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_zero_v3(ptr nocapture noundef readonly %0) unnamed_addr #11 !PGOFuncName !127 {
  %2 = load float, ptr %0, align 4, !tbaa !54
  %3 = fcmp oeq float %2, 0.000000e+00
  br i1 %3, label %4, label %13

4:                                                ; preds = %1
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !54
  %7 = fcmp oeq float %6, 0.000000e+00
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds float, ptr %0, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !54
  %11 = fcmp oeq float %10, 0.000000e+00
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %8, %4, %1
  %14 = phi i8 [ 0, %4 ], [ 0, %1 ], [ %12, %8 ]
  ret i8 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !128 {
  %3 = load float, ptr %1, align 4, !tbaa !54
  %4 = fneg float %3
  store float %4, ptr %0, align 4, !tbaa !54
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !54
  %7 = fneg float %6
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !54
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !54
  %11 = fneg float %10
  %12 = getelementptr inbounds float, ptr %0, i64 2
  store float %11, ptr %12, align 4, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3(ptr nocapture noundef %0) unnamed_addr #9 !PGOFuncName !129 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !54
  %3 = fneg <2 x float> %2
  store <2 x float> %3, ptr %0, align 4, !tbaa !54
  %4 = getelementptr inbounds float, ptr %0, i64 2
  %5 = load float, ptr %4, align 4, !tbaa !54
  %6 = fneg float %5
  store float %6, ptr %4, align 4, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @normal_float_to_short_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !130 {
  %3 = load <2 x float>, ptr %1, align 4, !tbaa !54
  %4 = fmul <2 x float> %3, <float 3.276700e+04, float 3.276700e+04>
  %5 = fptosi <2 x float> %4 to <2 x i16>
  store <2 x i16> %5, ptr %0, align 2, !tbaa !131
  %6 = getelementptr inbounds float, ptr %1, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !54
  %8 = fmul float %7, 3.276700e+04
  %9 = fptosi float %8 to i16
  %10 = getelementptr inbounds i16, ptr %0, i64 2
  store i16 %9, ptr %10, align 2, !tbaa !131
  ret void
}

; Function Attrs: optsize
declare void @axis_angle_normalized_to_mat3(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @copy_m4_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @unit_m4(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @rotate_m4(ptr noundef, i8 noundef zeroext, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3fl(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #9 !PGOFuncName !132 {
  %4 = load float, ptr %1, align 4, !tbaa !54
  %5 = load float, ptr %0, align 4, !tbaa !54
  %6 = tail call float @llvm.fmuladd.f32(float %4, float %2, float %5)
  store float %6, ptr %0, align 4, !tbaa !54
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !54
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !54
  %11 = tail call float @llvm.fmuladd.f32(float %8, float %2, float %10)
  store float %11, ptr %9, align 4, !tbaa !54
  %12 = getelementptr inbounds float, ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !54
  %14 = getelementptr inbounds float, ptr %0, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !54
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %2, float %15)
  store float %16, ptr %14, align 4, !tbaa !54
  ret void
}

; Function Attrs: optsize
declare void @mul_v3_m3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !133 {
  %3 = load float, ptr %1, align 4, !tbaa !54
  %4 = load float, ptr %0, align 4, !tbaa !54
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !54
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !54
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !54
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !54
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !54
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !54
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !54
  ret void
}

; Function Attrs: optsize
declare float @dist_signed_to_plane_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DM_copy_poly_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DM_copy_loop_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @copy_v2_fl2(ptr nocapture noundef writeonly %0, float noundef %1, float noundef %2) unnamed_addr #1 !PGOFuncName !134 {
  store float %1, ptr %0, align 4, !tbaa !54
  %4 = getelementptr inbounds float, ptr %0, i64 1
  store float %2, ptr %4, align 4, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #11 !PGOFuncName !135 {
  %3 = load float, ptr %0, align 4, !tbaa !54
  %4 = load float, ptr %1, align 4, !tbaa !54
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !54
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !54
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !54
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !54
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #9 !PGOFuncName !136 {
  %4 = load float, ptr %1, align 4, !tbaa !54
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !54
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !54
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !54
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !54
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !54
  ret void
}

; Function Attrs: optsize
declare ptr @dag_get_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @dag_add_relation(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #13

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind optsize }
attributes #15 = { nounwind }
attributes #16 = { optsize }

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
!34 = !{!"MOD_screw.c:copyData"}
!35 = !{!"MOD_screw.c:applyModifier"}
!36 = !{!37, !37, i64 0}
!37 = !{!"int", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!41, !45, i64 142}
!41 = !{!"ScrewModifierData", !42, i64 0, !43, i64 112, !37, i64 120, !37, i64 124, !37, i64 128, !44, i64 132, !44, i64 136, !38, i64 140, !38, i64 141, !45, i64 142}
!42 = !{!"ModifierData", !43, i64 0, !43, i64 8, !37, i64 16, !37, i64 20, !37, i64 24, !37, i64 28, !38, i64 32, !43, i64 96, !43, i64 104}
!43 = !{!"any pointer", !38, i64 0}
!44 = !{!"float", !38, i64 0}
!45 = !{!"short", !38, i64 0}
!46 = !{!47, !43, i64 1104}
!47 = !{!"DerivedMesh", !48, i64 0, !48, i64 200, !48, i64 400, !48, i64 600, !48, i64 800, !37, i64 1000, !37, i64 1004, !37, i64 1008, !37, i64 1012, !37, i64 1016, !37, i64 1020, !37, i64 1024, !43, i64 1032, !43, i64 1040, !37, i64 1048, !44, i64 1052, !37, i64 1056, !37, i64 1060, !43, i64 1064, !38, i64 1072, !43, i64 1080, !43, i64 1088, !43, i64 1096, !43, i64 1104, !43, i64 1112, !43, i64 1120, !43, i64 1128, !43, i64 1136, !43, i64 1144, !43, i64 1152, !43, i64 1160, !43, i64 1168, !43, i64 1176, !43, i64 1184, !43, i64 1192, !43, i64 1200, !43, i64 1208, !43, i64 1216, !43, i64 1224, !43, i64 1232, !43, i64 1240, !43, i64 1248, !43, i64 1256, !43, i64 1264, !43, i64 1272, !43, i64 1280, !43, i64 1288, !43, i64 1296, !43, i64 1304, !43, i64 1312, !43, i64 1320, !43, i64 1328, !43, i64 1336, !43, i64 1344, !43, i64 1352, !43, i64 1360, !43, i64 1368, !43, i64 1376, !43, i64 1384, !43, i64 1392, !43, i64 1400, !43, i64 1408, !43, i64 1416, !43, i64 1424, !43, i64 1432, !43, i64 1440, !43, i64 1448, !43, i64 1456, !43, i64 1464, !43, i64 1472, !43, i64 1480, !43, i64 1488, !43, i64 1496, !43, i64 1504, !43, i64 1512, !43, i64 1520, !43, i64 1528, !43, i64 1536, !43, i64 1544, !43, i64 1552, !43, i64 1560, !43, i64 1568, !43, i64 1576, !43, i64 1584, !43, i64 1592, !43, i64 1600, !43, i64 1608, !43, i64 1616, !43, i64 1624, !43, i64 1632, !43, i64 1640, !43, i64 1648, !43, i64 1656, !43, i64 1664, !43, i64 1672, !43, i64 1680}
!48 = !{!"CustomData", !43, i64 0, !38, i64 8, !37, i64 172, !37, i64 176, !37, i64 180, !43, i64 184, !43, i64 192}
!49 = !{!47, !43, i64 1112}
!50 = !{!47, !43, i64 1136}
!51 = !{!41, !44, i64 136}
!52 = !{!41, !44, i64 132}
!53 = !{!41, !38, i64 140}
!54 = !{!44, !44, i64 0}
!55 = !{!41, !43, i64 112}
!56 = !{!41, !37, i64 128}
!57 = !{!47, !43, i64 1168}
!58 = !{!47, !43, i64 1176}
!59 = !{!47, !43, i64 1200}
!60 = !{!47, !43, i64 1192}
!61 = !{!43, !43, i64 0}
!62 = distinct !{!62, !63}
!63 = !{!"llvm.loop.mustprogress"}
!64 = distinct !{!64, !63}
!65 = !{!66, !38, i64 8}
!66 = !{!"MEdge", !37, i64 0, !37, i64 4, !38, i64 8, !38, i64 9, !45, i64 10}
!67 = !{!66, !45, i64 10}
!68 = distinct !{!68, !63}
!69 = !{!70, !37, i64 0}
!70 = !{!"MPoly", !37, i64 0, !37, i64 4, !45, i64 8, !38, i64 10, !38, i64 11}
!71 = !{!70, !37, i64 4}
!72 = !{!73, !37, i64 4}
!73 = !{!"MLoop", !37, i64 0, !37, i64 4}
!74 = !{!73, !37, i64 0}
!75 = !{!66, !37, i64 0}
!76 = !{!66, !37, i64 4}
!77 = distinct !{!77, !63}
!78 = distinct !{!78, !63}
!79 = distinct !{!79, !63}
!80 = !{!81, !44, i64 0}
!81 = !{!"ScrewVertConnect", !44, i64 0, !38, i64 4, !38, i64 16, !38, i64 28, !38, i64 40, !38, i64 56}
!82 = distinct !{!82, !63}
!83 = distinct !{!83, !63}
!84 = distinct !{!84, !63}
!85 = !{!81, !38, i64 56}
!86 = !{!87, !43, i64 8}
!87 = !{!"ScrewVertIter", !43, i64 0, !43, i64 8, !37, i64 16, !37, i64 20, !43, i64 24}
!88 = distinct !{!88, !63}
!89 = distinct !{!89, !63}
!90 = !{!87, !43, i64 24}
!91 = !{!87, !37, i64 16}
!92 = distinct !{!92, !63}
!93 = distinct !{!93, !63}
!94 = !{i8 0, i8 2}
!95 = distinct !{!95, !63}
!96 = distinct !{!96, !63}
!97 = distinct !{!97, !63}
!98 = distinct !{!98, !63}
!99 = distinct !{!99, !63}
!100 = !{!70, !45, i64 8}
!101 = !{!70, !38, i64 10}
!102 = distinct !{!102, !63}
!103 = distinct !{!103, !63}
!104 = distinct !{!104, !63}
!105 = distinct !{!105, !63}
!106 = !{!47, !37, i64 1056}
!107 = !{!"MOD_screw.c:initData"}
!108 = !{!41, !37, i64 120}
!109 = !{!41, !37, i64 124}
!110 = !{!"MOD_screw.c:updateDepgraph"}
!111 = !{!"MOD_screw.c:foreachObjectLink"}
!112 = !{!"MOD_screw.c:normalize_v3"}
!113 = !{!"MOD_screw.c:len_v3"}
!114 = !{!"MOD_screw.c:zero_v3"}
!115 = !{!"MOD_screw.c:min_ff"}
!116 = !{!"MOD_screw.c:max_ff"}
!117 = !{!"MOD_screw.c:sqrtf_signed"}
!118 = !{!"MOD_screw.c:copy_v3_v3"}
!119 = !{!"MOD_screw.c:normalize_v3_v3"}
!120 = !{!"MOD_screw.c:screwvert_iter_init"}
!121 = !{!87, !43, i64 0}
!122 = !{!87, !37, i64 20}
!123 = !{!"MOD_screw.c:screwvert_iter_step"}
!124 = !{!"MOD_screw.c:sub_v3_v3v3"}
!125 = !{!"MOD_screw.c:sub_v3_v3"}
!126 = !{!"MOD_screw.c:cross_v3_v3v3"}
!127 = !{!"MOD_screw.c:is_zero_v3"}
!128 = !{!"MOD_screw.c:negate_v3_v3"}
!129 = !{!"MOD_screw.c:negate_v3"}
!130 = !{!"MOD_screw.c:normal_float_to_short_v3"}
!131 = !{!45, !45, i64 0}
!132 = !{!"MOD_screw.c:madd_v3_v3fl"}
!133 = !{!"MOD_screw.c:add_v3_v3"}
!134 = !{!"MOD_screw.c:copy_v2_fl2"}
!135 = !{!"MOD_screw.c:dot_v3v3"}
!136 = !{!"MOD_screw.c:mul_v3_v3fl"}
