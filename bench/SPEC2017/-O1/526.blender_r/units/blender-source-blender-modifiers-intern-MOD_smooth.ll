; ModuleID = 'blender/source/blender/modifiers/intern/MOD_smooth.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_smooth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.SmoothModifierData = type { %struct.ModifierData, float, [64 x i8], i16, i16 }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.MEdge = type { i32, i32, i8, i8, i16 }
%struct.MDeformVert = type { ptr, i32, i32 }

@modifierType_Smooth = dso_local local_unnamed_addr global %struct.ModifierTypeInfo { [32 x i8] c"Smooth\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"SmoothModifierData\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 184, i32 1, i32 11, ptr @copyData, ptr @deformVerts, ptr null, ptr @deformVertsEM, ptr null, ptr null, ptr null, ptr @initData, ptr @requiredDataMask, ptr null, ptr @isDisabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [17 x i8] c"smoothmodifier_f\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"smoothmodifier_uc\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @modifier_copyData_generic(ptr noundef %0, ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @deformVerts(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 %5) #0 {
  %7 = tail call ptr @get_dm(ptr noundef %1, ptr noundef null, ptr noundef %2, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call fastcc void @smoothModifier_do(ptr noundef %0, ptr noundef %1, ptr noundef %7, ptr noundef %3, i32 noundef %4)
  %8 = icmp eq ptr %7, %2
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 95
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  tail call void %11(ptr noundef %7) #7
  br label %12

12:                                               ; preds = %9, %6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @deformVertsEM(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
  %7 = tail call ptr @get_dm(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call fastcc void @smoothModifier_do(ptr noundef %0, ptr noundef %1, ptr noundef %7, ptr noundef %4, i32 noundef %5)
  %8 = icmp eq ptr %7, %3
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 95
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  tail call void %11(ptr noundef %7) #7
  br label %12

12:                                               ; preds = %9, %6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @initData(ptr nocapture noundef writeonly %0) #1 {
  %2 = getelementptr inbounds %struct.SmoothModifierData, ptr %0, i64 0, i32 1
  store float 5.000000e-01, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.SmoothModifierData, ptr %0, i64 0, i32 4
  store i16 1, ptr %3, align 2, !tbaa !46
  %4 = getelementptr inbounds %struct.SmoothModifierData, ptr %0, i64 0, i32 3
  store i16 14, ptr %4, align 4, !tbaa !47
  %5 = getelementptr inbounds %struct.SmoothModifierData, ptr %0, i64 0, i32 2
  store i8 0, ptr %5, align 4, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i64 @requiredDataMask(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.SmoothModifierData, ptr %1, i64 0, i32 2
  %4 = load i8, ptr %3, align 4, !tbaa !48
  %5 = icmp eq i8 %4, 0
  %6 = select i1 %5, i64 0, i64 4
  ret i64 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal zeroext i8 @isDisabled(ptr nocapture noundef readonly %0, i32 %1) #2 {
  %3 = getelementptr inbounds %struct.SmoothModifierData, ptr %0, i64 0, i32 3
  %4 = load i16, ptr %3, align 4, !tbaa !47
  %5 = and i16 %4, 14
  %6 = getelementptr inbounds %struct.SmoothModifierData, ptr %0, i64 0, i32 1
  %7 = load float, ptr %6, align 8, !tbaa !42
  %8 = fcmp oeq float %7, 0.000000e+00
  %9 = icmp eq i16 %5, 0
  %10 = select i1 %8, i1 true, i1 %9
  %11 = zext i1 %10 to i8
  ret i8 %11
}

declare void @modifier_copyData_generic(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

declare ptr @get_dm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @smoothModifier_do(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  store ptr null, ptr %6, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %10 = sext i32 %4 to i64
  %11 = mul nsw i64 %10, 12
  %12 = tail call ptr %9(i64 noundef %11, ptr noundef nonnull @.str) #7
  %13 = icmp eq ptr %12, null
  br i1 %13, label %217, label %14

14:                                               ; preds = %5
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %16 = tail call ptr %15(i64 noundef %10, ptr noundef nonnull @.str.1) #7
  %17 = icmp eq ptr %16, null
  br i1 %17, label %214, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.SmoothModifierData, ptr %0, i64 0, i32 1
  %20 = load float, ptr %19, align 8, !tbaa !42
  %21 = fsub float 1.000000e+00, %20
  %22 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 23
  %23 = load ptr, ptr %22, align 8, !tbaa !50
  %24 = tail call i32 %23(ptr noundef %2) #7
  %25 = icmp eq i32 %24, %4
  br i1 %25, label %26, label %33

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 32
  %28 = load ptr, ptr %27, align 8, !tbaa !51
  %29 = tail call ptr %28(ptr noundef %2) #7
  %30 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 24
  %31 = load ptr, ptr %30, align 8, !tbaa !52
  %32 = tail call i32 %31(ptr noundef %2) #7
  br label %33

33:                                               ; preds = %18, %26
  %34 = phi i32 [ %32, %26 ], [ 0, %18 ]
  %35 = phi ptr [ %29, %26 ], [ null, %18 ]
  %36 = getelementptr inbounds %struct.SmoothModifierData, ptr %0, i64 0, i32 2
  call void @modifier_get_vgroup(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %36, ptr noundef nonnull %6, ptr noundef nonnull %7) #7
  %37 = getelementptr inbounds %struct.SmoothModifierData, ptr %0, i64 0, i32 4
  %38 = load i16, ptr %37, align 2, !tbaa !46
  %39 = icmp sgt i16 %38, 0
  br i1 %39, label %40, label %212

40:                                               ; preds = %33
  %41 = icmp sgt i32 %34, 0
  %42 = getelementptr inbounds float, ptr %8, i64 1
  %43 = getelementptr inbounds float, ptr %8, i64 2
  %44 = getelementptr inbounds float, ptr %8, i64 1
  %45 = getelementptr inbounds float, ptr %8, i64 2
  %46 = icmp sgt i32 %4, 0
  %47 = getelementptr inbounds %struct.SmoothModifierData, ptr %0, i64 0, i32 3
  %48 = icmp sgt i32 %4, 0
  %49 = getelementptr inbounds %struct.SmoothModifierData, ptr %0, i64 0, i32 3
  %50 = zext nneg i32 %34 to i64
  %51 = zext nneg i32 %4 to i64
  %52 = zext nneg i32 %4 to i64
  br label %53

53:                                               ; preds = %40, %207
  %54 = phi i32 [ 0, %40 ], [ %208, %207 ]
  br i1 %41, label %55, label %107

55:                                               ; preds = %53, %104
  %56 = phi i64 [ %105, %104 ], [ 0, %53 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #7
  %57 = getelementptr inbounds %struct.MEdge, ptr %35, i64 %56
  %58 = load i32, ptr %57, align 4, !tbaa !53
  %59 = getelementptr inbounds %struct.MEdge, ptr %35, i64 %56, i32 1
  %60 = load i32, ptr %59, align 4, !tbaa !55
  %61 = zext i32 %58 to i64
  %62 = getelementptr inbounds [3 x float], ptr %3, i64 %61
  %63 = zext i32 %60 to i64
  %64 = getelementptr inbounds [3 x float], ptr %3, i64 %63
  call void @mid_v3_v3v3(ptr noundef nonnull %8, ptr noundef %62, ptr noundef %64) #7
  %65 = mul i32 %60, 3
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds float, ptr %12, i64 %66
  %68 = getelementptr inbounds i8, ptr %16, i64 %61
  %69 = load i8, ptr %68, align 1, !tbaa !48
  %70 = icmp eq i8 %69, -1
  br i1 %70, label %87, label %71

71:                                               ; preds = %55
  %72 = mul i32 %58, 3
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds float, ptr %12, i64 %73
  %75 = add i8 %69, 1
  store i8 %75, ptr %68, align 1, !tbaa !48
  %76 = load float, ptr %8, align 4, !tbaa !56
  %77 = load float, ptr %74, align 4, !tbaa !56
  %78 = fadd float %76, %77
  store float %78, ptr %74, align 4, !tbaa !56
  %79 = load float, ptr %42, align 4, !tbaa !56
  %80 = getelementptr inbounds float, ptr %74, i64 1
  %81 = load float, ptr %80, align 4, !tbaa !56
  %82 = fadd float %79, %81
  store float %82, ptr %80, align 4, !tbaa !56
  %83 = load float, ptr %43, align 4, !tbaa !56
  %84 = getelementptr inbounds float, ptr %74, i64 2
  %85 = load float, ptr %84, align 4, !tbaa !56
  %86 = fadd float %83, %85
  store float %86, ptr %84, align 4, !tbaa !56
  br label %87

87:                                               ; preds = %71, %55
  %88 = getelementptr inbounds i8, ptr %16, i64 %63
  %89 = load i8, ptr %88, align 1, !tbaa !48
  %90 = icmp eq i8 %89, -1
  br i1 %90, label %104, label %91

91:                                               ; preds = %87
  %92 = add i8 %89, 1
  store i8 %92, ptr %88, align 1, !tbaa !48
  %93 = load float, ptr %8, align 4, !tbaa !56
  %94 = load float, ptr %67, align 4, !tbaa !56
  %95 = fadd float %93, %94
  store float %95, ptr %67, align 4, !tbaa !56
  %96 = load float, ptr %44, align 4, !tbaa !56
  %97 = getelementptr inbounds float, ptr %67, i64 1
  %98 = load float, ptr %97, align 4, !tbaa !56
  %99 = fadd float %96, %98
  store float %99, ptr %97, align 4, !tbaa !56
  %100 = load float, ptr %45, align 4, !tbaa !56
  %101 = getelementptr inbounds float, ptr %67, i64 2
  %102 = load float, ptr %101, align 4, !tbaa !56
  %103 = fadd float %100, %102
  store float %103, ptr %101, align 4, !tbaa !56
  br label %104

104:                                              ; preds = %91, %87
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #7
  %105 = add nuw nsw i64 %56, 1
  %106 = icmp eq i64 %105, %50
  br i1 %106, label %107, label %55, !llvm.loop !57

107:                                              ; preds = %104, %53
  %108 = load ptr, ptr %6, align 8, !tbaa !49
  %109 = icmp eq ptr %108, null
  br i1 %109, label %111, label %110

110:                                              ; preds = %107
  br i1 %46, label %121, label %207

111:                                              ; preds = %107
  br i1 %48, label %112, label %207

112:                                              ; preds = %111
  %113 = load i16, ptr %49, align 4, !tbaa !47
  %114 = zext i16 %113 to i32
  %115 = and i32 %114, 2
  %116 = icmp eq i32 %115, 0
  %117 = and i32 %114, 4
  %118 = icmp eq i32 %117, 0
  %119 = and i32 %114, 8
  %120 = icmp eq i32 %119, 0
  br label %172

121:                                              ; preds = %110, %168
  %122 = phi i64 [ %169, %168 ], [ 0, %110 ]
  %123 = phi ptr [ %170, %168 ], [ %108, %110 ]
  %124 = load i16, ptr %47, align 4, !tbaa !47
  %125 = getelementptr inbounds [3 x float], ptr %3, i64 %122
  %126 = mul nuw nsw i64 %122, 3
  %127 = getelementptr inbounds float, ptr %12, i64 %126
  %128 = load i32, ptr %7, align 4, !tbaa !60
  %129 = call float @defvert_find_weight(ptr noundef nonnull %123, i32 noundef %128) #7
  %130 = fcmp ugt float %129, 0.000000e+00
  br i1 %130, label %131, label %168

131:                                              ; preds = %121
  %132 = fmul float %20, %129
  %133 = fsub float 1.000000e+00, %132
  %134 = getelementptr inbounds i8, ptr %16, i64 %122
  %135 = load i8, ptr %134, align 1, !tbaa !48
  %136 = icmp eq i8 %135, 0
  %137 = uitofp i8 %135 to float
  %138 = fdiv float %132, %137
  %139 = select i1 %136, float 0.000000e+00, float %138
  %140 = zext i16 %124 to i32
  %141 = and i32 %140, 2
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %148, label %143

143:                                              ; preds = %131
  %144 = load float, ptr %125, align 4, !tbaa !56
  %145 = load float, ptr %127, align 4, !tbaa !56
  %146 = fmul float %139, %145
  %147 = call float @llvm.fmuladd.f32(float %133, float %144, float %146)
  store float %147, ptr %125, align 4, !tbaa !56
  br label %148

148:                                              ; preds = %143, %131
  %149 = and i32 %140, 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %158, label %151

151:                                              ; preds = %148
  %152 = getelementptr inbounds float, ptr %125, i64 1
  %153 = load float, ptr %152, align 4, !tbaa !56
  %154 = getelementptr inbounds float, ptr %127, i64 1
  %155 = load float, ptr %154, align 4, !tbaa !56
  %156 = fmul float %139, %155
  %157 = call float @llvm.fmuladd.f32(float %133, float %153, float %156)
  store float %157, ptr %152, align 4, !tbaa !56
  br label %158

158:                                              ; preds = %151, %148
  %159 = and i32 %140, 8
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %168, label %161

161:                                              ; preds = %158
  %162 = getelementptr inbounds float, ptr %125, i64 2
  %163 = load float, ptr %162, align 4, !tbaa !56
  %164 = getelementptr inbounds float, ptr %127, i64 2
  %165 = load float, ptr %164, align 4, !tbaa !56
  %166 = fmul float %139, %165
  %167 = call float @llvm.fmuladd.f32(float %133, float %163, float %166)
  store float %167, ptr %162, align 4, !tbaa !56
  br label %168

168:                                              ; preds = %158, %161, %121
  %169 = add nuw nsw i64 %122, 1
  %170 = getelementptr inbounds %struct.MDeformVert, ptr %123, i64 1
  %171 = icmp eq i64 %169, %51
  br i1 %171, label %207, label %121, !llvm.loop !61

172:                                              ; preds = %112, %204
  %173 = phi i64 [ 0, %112 ], [ %205, %204 ]
  %174 = getelementptr inbounds [3 x float], ptr %3, i64 %173
  %175 = mul nuw nsw i64 %173, 3
  %176 = getelementptr inbounds float, ptr %12, i64 %175
  %177 = getelementptr inbounds i8, ptr %16, i64 %173
  %178 = load i8, ptr %177, align 1, !tbaa !48
  %179 = icmp eq i8 %178, 0
  %180 = uitofp i8 %178 to float
  %181 = fdiv float %20, %180
  %182 = select i1 %179, float 0.000000e+00, float %181
  br i1 %116, label %188, label %183

183:                                              ; preds = %172
  %184 = load float, ptr %174, align 4, !tbaa !56
  %185 = load float, ptr %176, align 4, !tbaa !56
  %186 = fmul float %182, %185
  %187 = call float @llvm.fmuladd.f32(float %21, float %184, float %186)
  store float %187, ptr %174, align 4, !tbaa !56
  br label %188

188:                                              ; preds = %183, %172
  br i1 %118, label %196, label %189

189:                                              ; preds = %188
  %190 = getelementptr inbounds float, ptr %174, i64 1
  %191 = load float, ptr %190, align 4, !tbaa !56
  %192 = getelementptr inbounds float, ptr %176, i64 1
  %193 = load float, ptr %192, align 4, !tbaa !56
  %194 = fmul float %182, %193
  %195 = call float @llvm.fmuladd.f32(float %21, float %191, float %194)
  store float %195, ptr %190, align 4, !tbaa !56
  br label %196

196:                                              ; preds = %189, %188
  br i1 %120, label %204, label %197

197:                                              ; preds = %196
  %198 = getelementptr inbounds float, ptr %174, i64 2
  %199 = load float, ptr %198, align 4, !tbaa !56
  %200 = getelementptr inbounds float, ptr %176, i64 2
  %201 = load float, ptr %200, align 4, !tbaa !56
  %202 = fmul float %182, %201
  %203 = call float @llvm.fmuladd.f32(float %21, float %199, float %202)
  store float %203, ptr %198, align 4, !tbaa !56
  br label %204

204:                                              ; preds = %197, %196
  %205 = add nuw nsw i64 %173, 1
  %206 = icmp eq i64 %205, %52
  br i1 %206, label %207, label %172, !llvm.loop !62

207:                                              ; preds = %168, %204, %110, %111
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %12, i8 0, i64 %11, i1 false)
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %16, i8 0, i64 %10, i1 false)
  %208 = add nuw nsw i32 %54, 1
  %209 = load i16, ptr %37, align 2, !tbaa !46
  %210 = sext i16 %209 to i32
  %211 = icmp slt i32 %208, %210
  br i1 %211, label %53, label %212, !llvm.loop !63

212:                                              ; preds = %207, %33
  %213 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  call void %213(ptr noundef nonnull %12) #7
  br label %214

214:                                              ; preds = %14, %212
  %215 = phi ptr [ %16, %212 ], [ %12, %14 ]
  %216 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  call void %216(ptr noundef nonnull %215) #7
  br label %217

217:                                              ; preds = %214, %5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

declare void @modifier_get_vgroup(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare float @defvert_find_weight(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

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
!34 = !{!35, !37, i64 1680}
!35 = !{!"DerivedMesh", !36, i64 0, !36, i64 200, !36, i64 400, !36, i64 600, !36, i64 800, !40, i64 1000, !40, i64 1004, !40, i64 1008, !40, i64 1012, !40, i64 1016, !40, i64 1020, !40, i64 1024, !37, i64 1032, !37, i64 1040, !40, i64 1048, !41, i64 1052, !40, i64 1056, !40, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!36 = !{!"CustomData", !37, i64 0, !38, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !37, i64 184, !37, i64 192}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"float", !38, i64 0}
!42 = !{!43, !41, i64 112}
!43 = !{!"SmoothModifierData", !44, i64 0, !41, i64 112, !38, i64 116, !45, i64 180, !45, i64 182}
!44 = !{!"ModifierData", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !38, i64 32, !37, i64 96, !37, i64 104}
!45 = !{!"short", !38, i64 0}
!46 = !{!43, !45, i64 182}
!47 = !{!43, !45, i64 180}
!48 = !{!38, !38, i64 0}
!49 = !{!37, !37, i64 0}
!50 = !{!35, !37, i64 1104}
!51 = !{!35, !37, i64 1176}
!52 = !{!35, !37, i64 1112}
!53 = !{!54, !40, i64 0}
!54 = !{!"MEdge", !40, i64 0, !40, i64 4, !38, i64 8, !38, i64 9, !45, i64 10}
!55 = !{!54, !40, i64 4}
!56 = !{!41, !41, i64 0}
!57 = distinct !{!57, !58, !59}
!58 = !{!"llvm.loop.mustprogress"}
!59 = !{!"llvm.loop.unroll.disable"}
!60 = !{!40, !40, i64 0}
!61 = distinct !{!61, !58, !59}
!62 = distinct !{!62, !58, !59}
!63 = distinct !{!63, !58, !59}
