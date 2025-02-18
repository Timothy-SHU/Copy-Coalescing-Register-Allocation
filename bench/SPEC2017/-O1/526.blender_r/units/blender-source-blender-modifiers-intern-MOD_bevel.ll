; ModuleID = 'blender/source/blender/modifiers/intern/MOD_bevel.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_bevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BevelModifierData = type { %struct.ModifierData, float, i32, i16, i16, i16, i16, i16, i16, i32, float, float, [64 x i8] }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@modifierType_Bevel = dso_local local_unnamed_addr global %struct.ModifierTypeInfo { [32 x i8] c"Bevel\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"BevelModifierData\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 208, i32 2, i32 25, ptr @copyData, ptr null, ptr null, ptr null, ptr null, ptr @applyModifier, ptr null, ptr @initData, ptr @requiredDataMask, ptr null, ptr null, ptr null, ptr null, ptr @dependsOnNormals, ptr null, ptr null, ptr null }, align 8

; Function Attrs: nounwind uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.BevelModifierData, ptr %0, i64 0, i32 1
  %4 = load float, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.BevelModifierData, ptr %1, i64 0, i32 1
  store float %4, ptr %5, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.BevelModifierData, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !43
  %8 = getelementptr inbounds %struct.BevelModifierData, ptr %1, i64 0, i32 2
  store i32 %7, ptr %8, align 4, !tbaa !43
  %9 = getelementptr inbounds %struct.BevelModifierData, ptr %0, i64 0, i32 3
  %10 = load i16, ptr %9, align 8, !tbaa !44
  %11 = getelementptr inbounds %struct.BevelModifierData, ptr %1, i64 0, i32 3
  store i16 %10, ptr %11, align 8, !tbaa !44
  %12 = getelementptr inbounds %struct.BevelModifierData, ptr %0, i64 0, i32 4
  %13 = load i16, ptr %12, align 2, !tbaa !45
  %14 = getelementptr inbounds %struct.BevelModifierData, ptr %1, i64 0, i32 4
  store i16 %13, ptr %14, align 2, !tbaa !45
  %15 = getelementptr inbounds %struct.BevelModifierData, ptr %0, i64 0, i32 5
  %16 = load i16, ptr %15, align 4, !tbaa !46
  %17 = getelementptr inbounds %struct.BevelModifierData, ptr %1, i64 0, i32 5
  store i16 %16, ptr %17, align 4, !tbaa !46
  %18 = getelementptr inbounds %struct.BevelModifierData, ptr %0, i64 0, i32 6
  %19 = load i16, ptr %18, align 2, !tbaa !47
  %20 = getelementptr inbounds %struct.BevelModifierData, ptr %1, i64 0, i32 6
  store i16 %19, ptr %20, align 2, !tbaa !47
  %21 = getelementptr inbounds %struct.BevelModifierData, ptr %0, i64 0, i32 7
  %22 = load i16, ptr %21, align 8, !tbaa !48
  %23 = getelementptr inbounds %struct.BevelModifierData, ptr %1, i64 0, i32 7
  store i16 %22, ptr %23, align 8, !tbaa !48
  %24 = getelementptr inbounds %struct.BevelModifierData, ptr %0, i64 0, i32 10
  %25 = load float, ptr %24, align 8, !tbaa !49
  %26 = getelementptr inbounds %struct.BevelModifierData, ptr %1, i64 0, i32 10
  store float %25, ptr %26, align 8, !tbaa !49
  %27 = getelementptr inbounds %struct.BevelModifierData, ptr %0, i64 0, i32 11
  %28 = load float, ptr %27, align 4, !tbaa !50
  %29 = getelementptr inbounds %struct.BevelModifierData, ptr %1, i64 0, i32 11
  store float %28, ptr %29, align 4, !tbaa !50
  %30 = getelementptr inbounds %struct.BevelModifierData, ptr %1, i64 0, i32 12
  %31 = getelementptr inbounds %struct.BevelModifierData, ptr %0, i64 0, i32 12
  %32 = tail call ptr @BLI_strncpy(ptr noundef nonnull %30, ptr noundef nonnull %31, i64 noundef 64) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @applyModifier(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 %3) #0 {
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 -1, ptr %6, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  store ptr null, ptr %7, align 8, !tbaa !52
  %10 = getelementptr inbounds %struct.BevelModifierData, ptr %0, i64 0, i32 11
  %11 = load float, ptr %10, align 4, !tbaa !50
  %12 = fadd float %11, 0x3E877CF440000000
  %13 = tail call float @cosf(float noundef %12) #8
  %14 = getelementptr inbounds %struct.BevelModifierData, ptr %0, i64 0, i32 3
  %15 = load i16, ptr %14, align 8, !tbaa !44
  %16 = trunc i16 %15 to i8
  %17 = lshr i8 %16, 1
  %18 = and i8 %17, 1
  %19 = getelementptr inbounds %struct.BevelModifierData, ptr %0, i64 0, i32 4
  %20 = load i16, ptr %19, align 2, !tbaa !45
  %21 = getelementptr inbounds %struct.BevelModifierData, ptr %0, i64 0, i32 7
  %22 = load i16, ptr %21, align 8, !tbaa !48
  %23 = icmp slt i16 %22, -1
  br i1 %23, label %31, label %24

24:                                               ; preds = %4
  %25 = sext i16 %22 to i32
  %26 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 31
  %27 = load i32, ptr %26, align 8, !tbaa !53
  %28 = icmp sgt i32 %27, %25
  %29 = add nsw i32 %27, -1
  %30 = select i1 %28, i32 %25, i32 %29
  br label %31

31:                                               ; preds = %24, %4
  %32 = phi i32 [ -1, %4 ], [ %30, %24 ]
  %33 = tail call ptr @DM_to_bmesh(ptr noundef %2, i8 noundef zeroext 1) #8
  %34 = getelementptr inbounds %struct.BevelModifierData, ptr %0, i64 0, i32 5
  %35 = load i16, ptr %34, align 4, !tbaa !46
  %36 = and i16 %35, 32
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.BevelModifierData, ptr %0, i64 0, i32 12
  %40 = load i8, ptr %39, align 8, !tbaa !59
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  call void @modifier_get_vgroup(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %39, ptr noundef nonnull %7, ptr noundef nonnull %6) #8
  br label %43

43:                                               ; preds = %42, %38, %31
  %44 = icmp eq i8 %18, 0
  br i1 %44, label %84, label %45

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 1, ptr %46, align 4, !tbaa !60
  %47 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %47, align 8, !tbaa !62
  %48 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %48, align 8, !tbaa !63
  %49 = getelementptr inbounds %struct.BMesh, ptr %33, i64 0, i32 9
  %50 = load ptr, ptr %49, align 8, !tbaa !52
  store ptr %50, ptr %5, align 8, !tbaa !59
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #8
  %51 = load ptr, ptr %48, align 8, !tbaa !63
  %52 = call ptr %51(ptr noundef nonnull %5) #8
  %53 = icmp eq ptr %52, null
  br i1 %53, label %207, label %54

54:                                               ; preds = %45
  %55 = getelementptr inbounds %struct.BMesh, ptr %33, i64 0, i32 24
  br label %56

56:                                               ; preds = %54, %80
  %57 = phi ptr [ %52, %54 ], [ %82, %80 ]
  %58 = call zeroext i8 @BM_vert_is_manifold(ptr noundef nonnull %57) #8
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %80, label %60

60:                                               ; preds = %56
  %61 = load i16, ptr %34, align 4, !tbaa !46
  %62 = and i16 %61, 16
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = call float @BM_elem_float_data_get(ptr noundef nonnull %55, ptr noundef nonnull %57, i32 noundef 29) #8
  %66 = fcmp oeq float %65, 0.000000e+00
  br i1 %66, label %80, label %76

67:                                               ; preds = %60
  %68 = load i32, ptr %6, align 4, !tbaa !51
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %76, label %70

70:                                               ; preds = %67
  %71 = load ptr, ptr %7, align 8, !tbaa !52
  %72 = getelementptr inbounds %struct.BMHeader, ptr %57, i64 0, i32 1
  %73 = load i32, ptr %72, align 8, !tbaa !64
  %74 = call float @defvert_array_find_weight_safe(ptr noundef %71, i32 noundef %73, i32 noundef %68) #8
  %75 = fcmp olt float %74, 5.000000e-01
  br i1 %75, label %80, label %76

76:                                               ; preds = %67, %70, %64
  %77 = getelementptr inbounds %struct.BMHeader, ptr %57, i64 0, i32 3
  %78 = load i8, ptr %77, align 1, !tbaa !66
  %79 = or i8 %78, 16
  store i8 %79, ptr %77, align 1, !tbaa !66
  br label %80

80:                                               ; preds = %70, %64, %56, %76
  %81 = load ptr, ptr %48, align 8, !tbaa !63
  %82 = call ptr %81(ptr noundef nonnull %5) #8
  %83 = icmp eq ptr %82, null
  br i1 %83, label %207, label %56, !llvm.loop !67

84:                                               ; preds = %43
  %85 = load i16, ptr %34, align 4, !tbaa !46
  %86 = and i16 %85, 8
  %87 = icmp eq i16 %86, 0
  %88 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 2, ptr %88, align 4, !tbaa !60
  %89 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %89, align 8, !tbaa !62
  %90 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %90, align 8, !tbaa !63
  %91 = getelementptr inbounds %struct.BMesh, ptr %33, i64 0, i32 10
  %92 = load ptr, ptr %91, align 8, !tbaa !52
  store ptr %92, ptr %5, align 8, !tbaa !59
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #8
  %93 = load ptr, ptr %90, align 8, !tbaa !63
  %94 = call ptr %93(ptr noundef nonnull %5) #8
  %95 = icmp eq ptr %94, null
  br i1 %87, label %142, label %96

96:                                               ; preds = %84
  br i1 %95, label %207, label %97

97:                                               ; preds = %96, %138
  %98 = phi ptr [ %140, %138 ], [ %94, %96 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  %99 = call zeroext i8 @BM_edge_loop_pair(ptr noundef nonnull %98, ptr noundef nonnull %8, ptr noundef nonnull %9) #8
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %138, label %101

101:                                              ; preds = %97
  %102 = load ptr, ptr %8, align 8, !tbaa !52
  %103 = getelementptr inbounds %struct.BMLoop, ptr %102, i64 0, i32 3
  %104 = load ptr, ptr %103, align 8, !tbaa !70
  %105 = getelementptr inbounds %struct.BMFace, ptr %104, i64 0, i32 4
  %106 = load ptr, ptr %9, align 8, !tbaa !52
  %107 = getelementptr inbounds %struct.BMLoop, ptr %106, i64 0, i32 3
  %108 = load ptr, ptr %107, align 8, !tbaa !70
  %109 = getelementptr inbounds %struct.BMFace, ptr %108, i64 0, i32 4
  %110 = load float, ptr %105, align 4, !tbaa !72
  %111 = load float, ptr %109, align 4, !tbaa !72
  %112 = getelementptr inbounds %struct.BMFace, ptr %104, i64 0, i32 4, i64 1
  %113 = load float, ptr %112, align 4, !tbaa !72
  %114 = getelementptr inbounds %struct.BMFace, ptr %108, i64 0, i32 4, i64 1
  %115 = load float, ptr %114, align 4, !tbaa !72
  %116 = fmul float %113, %115
  %117 = call float @llvm.fmuladd.f32(float %110, float %111, float %116)
  %118 = getelementptr inbounds %struct.BMFace, ptr %104, i64 0, i32 4, i64 2
  %119 = load float, ptr %118, align 4, !tbaa !72
  %120 = getelementptr inbounds %struct.BMFace, ptr %108, i64 0, i32 4, i64 2
  %121 = load float, ptr %120, align 4, !tbaa !72
  %122 = call float @llvm.fmuladd.f32(float %119, float %121, float %117)
  %123 = fcmp olt float %122, %13
  br i1 %123, label %124, label %138

124:                                              ; preds = %101
  %125 = getelementptr inbounds %struct.BMHeader, ptr %98, i64 0, i32 3
  %126 = load i8, ptr %125, align 1, !tbaa !66
  %127 = or i8 %126, 16
  store i8 %127, ptr %125, align 1, !tbaa !66
  %128 = getelementptr inbounds %struct.BMEdge, ptr %98, i64 0, i32 2
  %129 = load ptr, ptr %128, align 8, !tbaa !73
  %130 = getelementptr inbounds %struct.BMHeader, ptr %129, i64 0, i32 3
  %131 = load i8, ptr %130, align 1, !tbaa !66
  %132 = or i8 %131, 16
  store i8 %132, ptr %130, align 1, !tbaa !66
  %133 = getelementptr inbounds %struct.BMEdge, ptr %98, i64 0, i32 3
  %134 = load ptr, ptr %133, align 8, !tbaa !76
  %135 = getelementptr inbounds %struct.BMHeader, ptr %134, i64 0, i32 3
  %136 = load i8, ptr %135, align 1, !tbaa !66
  %137 = or i8 %136, 16
  store i8 %137, ptr %135, align 1, !tbaa !66
  br label %138

138:                                              ; preds = %101, %124, %97
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  %139 = load ptr, ptr %90, align 8, !tbaa !63
  %140 = call ptr %139(ptr noundef nonnull %5) #8
  %141 = icmp eq ptr %140, null
  br i1 %141, label %207, label %97, !llvm.loop !77

142:                                              ; preds = %84
  br i1 %95, label %207, label %143

143:                                              ; preds = %142
  %144 = getelementptr inbounds %struct.BMesh, ptr %33, i64 0, i32 25
  br label %145

145:                                              ; preds = %143, %203
  %146 = phi ptr [ %94, %143 ], [ %205, %203 ]
  %147 = getelementptr inbounds %struct.BMEdge, ptr %146, i64 0, i32 4
  %148 = load ptr, ptr %147, align 8, !tbaa !78
  %149 = icmp eq ptr %148, null
  br i1 %149, label %159, label %150

150:                                              ; preds = %145
  %151 = getelementptr inbounds %struct.BMLoop, ptr %148, i64 0, i32 4
  %152 = load ptr, ptr %151, align 8, !tbaa !79
  %153 = icmp eq ptr %152, %148
  br i1 %153, label %159, label %154

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.BMLoop, ptr %152, i64 0, i32 4
  %156 = load ptr, ptr %155, align 8, !tbaa !79
  %157 = icmp eq ptr %156, %148
  %158 = zext i1 %157 to i8
  br label %159

159:                                              ; preds = %145, %150, %154
  %160 = phi i8 [ 0, %150 ], [ 0, %145 ], [ %158, %154 ]
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %203, label %162

162:                                              ; preds = %159
  %163 = load i16, ptr %34, align 4, !tbaa !46
  %164 = and i16 %163, 16
  %165 = icmp eq i16 %164, 0
  br i1 %165, label %169, label %166

166:                                              ; preds = %162
  %167 = call float @BM_elem_float_data_get(ptr noundef nonnull %144, ptr noundef nonnull %146, i32 noundef 29) #8
  %168 = fcmp oeq float %167, 0.000000e+00
  br i1 %168, label %203, label %189

169:                                              ; preds = %162
  %170 = load i32, ptr %6, align 4, !tbaa !51
  %171 = icmp eq i32 %170, -1
  br i1 %171, label %189, label %172

172:                                              ; preds = %169
  %173 = load ptr, ptr %7, align 8, !tbaa !52
  %174 = getelementptr inbounds %struct.BMEdge, ptr %146, i64 0, i32 2
  %175 = load ptr, ptr %174, align 8, !tbaa !73
  %176 = getelementptr inbounds %struct.BMHeader, ptr %175, i64 0, i32 1
  %177 = load i32, ptr %176, align 8, !tbaa !64
  %178 = call float @defvert_array_find_weight_safe(ptr noundef %173, i32 noundef %177, i32 noundef %170) #8
  %179 = load ptr, ptr %7, align 8, !tbaa !52
  %180 = getelementptr inbounds %struct.BMEdge, ptr %146, i64 0, i32 3
  %181 = load ptr, ptr %180, align 8, !tbaa !76
  %182 = getelementptr inbounds %struct.BMHeader, ptr %181, i64 0, i32 1
  %183 = load i32, ptr %182, align 8, !tbaa !64
  %184 = load i32, ptr %6, align 4, !tbaa !51
  %185 = call float @defvert_array_find_weight_safe(ptr noundef %179, i32 noundef %183, i32 noundef %184) #8
  %186 = fcmp olt float %178, 5.000000e-01
  %187 = fcmp olt float %185, 5.000000e-01
  %188 = select i1 %186, i1 true, i1 %187
  br i1 %188, label %203, label %189

189:                                              ; preds = %169, %172, %166
  %190 = getelementptr inbounds %struct.BMHeader, ptr %146, i64 0, i32 3
  %191 = load i8, ptr %190, align 1, !tbaa !66
  %192 = or i8 %191, 16
  store i8 %192, ptr %190, align 1, !tbaa !66
  %193 = getelementptr inbounds %struct.BMEdge, ptr %146, i64 0, i32 2
  %194 = load ptr, ptr %193, align 8, !tbaa !73
  %195 = getelementptr inbounds %struct.BMHeader, ptr %194, i64 0, i32 3
  %196 = load i8, ptr %195, align 1, !tbaa !66
  %197 = or i8 %196, 16
  store i8 %197, ptr %195, align 1, !tbaa !66
  %198 = getelementptr inbounds %struct.BMEdge, ptr %146, i64 0, i32 3
  %199 = load ptr, ptr %198, align 8, !tbaa !76
  %200 = getelementptr inbounds %struct.BMHeader, ptr %199, i64 0, i32 3
  %201 = load i8, ptr %200, align 1, !tbaa !66
  %202 = or i8 %201, 16
  store i8 %202, ptr %200, align 1, !tbaa !66
  br label %203

203:                                              ; preds = %159, %189, %172, %166
  %204 = load ptr, ptr %90, align 8, !tbaa !63
  %205 = call ptr %204(ptr noundef nonnull %5) #8
  %206 = icmp eq ptr %205, null
  br i1 %206, label %207, label %145, !llvm.loop !80

207:                                              ; preds = %80, %138, %203, %45, %96, %142
  %208 = sext i16 %20 to i32
  %209 = and i16 %15, 8192
  %210 = icmp eq i16 %209, 0
  %211 = zext i1 %210 to i8
  %212 = getelementptr inbounds %struct.BevelModifierData, ptr %0, i64 0, i32 1
  %213 = load float, ptr %212, align 8, !tbaa !34
  %214 = getelementptr inbounds %struct.BevelModifierData, ptr %0, i64 0, i32 2
  %215 = load i32, ptr %214, align 4, !tbaa !43
  %216 = sitofp i32 %215 to float
  %217 = getelementptr inbounds %struct.BevelModifierData, ptr %0, i64 0, i32 10
  %218 = load float, ptr %217, align 8, !tbaa !49
  %219 = load i16, ptr %34, align 4, !tbaa !46
  %220 = trunc i16 %219 to i8
  %221 = and i8 %220, 16
  %222 = load ptr, ptr %7, align 8, !tbaa !52
  %223 = load i32, ptr %6, align 4, !tbaa !51
  call void @BM_mesh_bevel(ptr noundef %33, float noundef %213, i32 noundef %208, float noundef %216, float noundef %218, i8 noundef zeroext %18, i8 noundef zeroext %221, i8 noundef zeroext %211, ptr noundef %222, i32 noundef %223, i32 noundef %32) #8
  %224 = call ptr @CDDM_from_bmesh(ptr noundef %33, i8 noundef zeroext 1) #8
  call void @BM_mesh_free(ptr noundef %33) #8
  %225 = getelementptr inbounds %struct.DerivedMesh, ptr %224, i64 0, i32 16
  %226 = load i32, ptr %225, align 8, !tbaa !81
  %227 = or i32 %226, 4
  store i32 %227, ptr %225, align 8, !tbaa !81
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #8
  ret ptr %224
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @initData(ptr nocapture noundef writeonly %0) #1 {
  %2 = getelementptr inbounds %struct.BevelModifierData, ptr %0, i64 0, i32 1
  store float 0x3FB99999A0000000, ptr %2, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.BevelModifierData, ptr %0, i64 0, i32 2
  store i32 1, ptr %3, align 4, !tbaa !43
  %4 = getelementptr inbounds %struct.BevelModifierData, ptr %0, i64 0, i32 3
  %5 = getelementptr inbounds %struct.BevelModifierData, ptr %0, i64 0, i32 7
  store i64 0, ptr %4, align 8
  store i16 -1, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.BevelModifierData, ptr %0, i64 0, i32 10
  store float 5.000000e-01, ptr %6, align 8, !tbaa !49
  %7 = getelementptr inbounds %struct.BevelModifierData, ptr %0, i64 0, i32 11
  store float 0x3FE0C15240000000, ptr %7, align 4, !tbaa !50
  %8 = getelementptr inbounds %struct.BevelModifierData, ptr %0, i64 0, i32 12
  store i8 0, ptr %8, align 8, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i64 @requiredDataMask(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.BevelModifierData, ptr %1, i64 0, i32 12
  %4 = load i8, ptr %3, align 8, !tbaa !59
  %5 = icmp eq i8 %4, 0
  %6 = select i1 %5, i64 0, i64 4
  ret i64 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i8 @dependsOnNormals(ptr nocapture readnone %0) #3 {
  ret i8 1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #6

declare ptr @DM_to_bmesh(ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

declare void @modifier_get_vgroup(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare zeroext i8 @BM_vert_is_manifold(ptr noundef) local_unnamed_addr #5

declare float @BM_elem_float_data_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare float @defvert_array_find_weight_safe(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare zeroext i8 @BM_edge_loop_pair(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @BM_mesh_bevel(ptr noundef, float noundef, i32 noundef, float noundef, float noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare ptr @CDDM_from_bmesh(ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

declare void @BM_mesh_free(ptr noundef) local_unnamed_addr #5

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #5

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!34 = !{!35, !41, i64 112}
!35 = !{!"BevelModifierData", !36, i64 0, !41, i64 112, !40, i64 116, !42, i64 120, !42, i64 122, !42, i64 124, !42, i64 126, !42, i64 128, !42, i64 130, !40, i64 132, !41, i64 136, !41, i64 140, !38, i64 144}
!36 = !{!"ModifierData", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !38, i64 32, !37, i64 96, !37, i64 104}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"float", !38, i64 0}
!42 = !{!"short", !38, i64 0}
!43 = !{!35, !40, i64 116}
!44 = !{!35, !42, i64 120}
!45 = !{!35, !42, i64 122}
!46 = !{!35, !42, i64 124}
!47 = !{!35, !42, i64 126}
!48 = !{!35, !42, i64 128}
!49 = !{!35, !41, i64 136}
!50 = !{!35, !41, i64 140}
!51 = !{!40, !40, i64 0}
!52 = !{!37, !37, i64 0}
!53 = !{!54, !40, i64 456}
!54 = !{!"Object", !55, i64 0, !37, i64 120, !37, i64 128, !42, i64 136, !42, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !56, i64 312, !37, i64 360, !57, i64 368, !57, i64 384, !57, i64 400, !57, i64 416, !40, i64 432, !40, i64 436, !37, i64 440, !37, i64 448, !40, i64 456, !40, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !41, i64 616, !41, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !40, i64 944, !42, i64 948, !42, i64 950, !42, i64 952, !42, i64 954, !42, i64 956, !42, i64 958, !42, i64 960, !42, i64 962, !42, i64 964, !38, i64 966, !38, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !41, i64 988, !41, i64 992, !41, i64 996, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !41, i64 1028, !41, i64 1032, !42, i64 1036, !42, i64 1038, !42, i64 1040, !38, i64 1042, !38, i64 1043, !42, i64 1044, !38, i64 1046, !38, i64 1047, !41, i64 1048, !41, i64 1052, !57, i64 1056, !57, i64 1072, !57, i64 1088, !57, i64 1104, !41, i64 1120, !42, i64 1124, !42, i64 1126, !38, i64 1128, !40, i64 1144, !40, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !42, i64 1162, !38, i64 1164, !57, i64 1176, !57, i64 1192, !57, i64 1208, !57, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !42, i64 1266, !41, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !58, i64 1304, !58, i64 1312, !40, i64 1320, !40, i64 1324, !57, i64 1328, !57, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !57, i64 1400, !37, i64 1416}
!55 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !42, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !37, i64 112}
!56 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!57 = !{!"ListBase", !37, i64 0, !37, i64 8}
!58 = !{!"long", !38, i64 0}
!59 = !{!38, !38, i64 0}
!60 = !{!61, !38, i64 60}
!61 = !{!"BMIter", !38, i64 0, !37, i64 40, !37, i64 48, !40, i64 56, !38, i64 60}
!62 = !{!61, !37, i64 40}
!63 = !{!61, !37, i64 48}
!64 = !{!65, !40, i64 8}
!65 = !{!"BMHeader", !37, i64 0, !40, i64 8, !38, i64 12, !38, i64 13, !38, i64 14}
!66 = !{!65, !38, i64 13}
!67 = distinct !{!67, !68, !69}
!68 = !{!"llvm.loop.mustprogress"}
!69 = !{!"llvm.loop.unroll.disable"}
!70 = !{!71, !37, i64 32}
!71 = !{!"BMLoop", !65, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64}
!72 = !{!41, !41, i64 0}
!73 = !{!74, !37, i64 24}
!74 = !{!"BMEdge", !65, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !75, i64 48, !75, i64 64}
!75 = !{!"BMDiskLink", !37, i64 0, !37, i64 8}
!76 = !{!74, !37, i64 32}
!77 = distinct !{!77, !68, !69}
!78 = !{!74, !37, i64 40}
!79 = !{!71, !37, i64 40}
!80 = distinct !{!80, !68, !69}
!81 = !{!82, !40, i64 1056}
!82 = !{!"DerivedMesh", !83, i64 0, !83, i64 200, !83, i64 400, !83, i64 600, !83, i64 800, !40, i64 1000, !40, i64 1004, !40, i64 1008, !40, i64 1012, !40, i64 1016, !40, i64 1020, !40, i64 1024, !37, i64 1032, !37, i64 1040, !40, i64 1048, !41, i64 1052, !40, i64 1056, !40, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!83 = !{!"CustomData", !37, i64 0, !38, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !37, i64 184, !37, i64 192}
