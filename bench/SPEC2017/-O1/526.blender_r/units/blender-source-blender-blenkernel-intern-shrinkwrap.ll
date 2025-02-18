; ModuleID = 'blender/source/blender/blenkernel/intern/shrinkwrap.c'
source_filename = "blender/source/blender/blenkernel/intern/shrinkwrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BVHTreeRayHit = type { i32, [3 x float], [3 x float], float, i32 }
%struct.BVHTreeFromMesh = type { ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, float, ptr, i8 }
%struct.BVHTreeNearest = type { i32, [3 x float], [3 x float], float, i32 }
%struct.SpaceTransform = type { [4 x [4 x float]], [4 x [4 x float]] }
%struct.ShrinkwrapCalcData = type { ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, %struct.SpaceTransform, float }
%struct.SubsurfModifierData = type { %struct.ModifierData, i16, i16, i16, i16, ptr, ptr }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.ShrinkwrapModifierData = type { %struct.ModifierData, ptr, ptr, [64 x i8], float, i16, i8, i8, float, i8, i8, [2 x i8] }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }

@str.1 = private unnamed_addr constant [26 x i8] c"Shrinkwrap: Out of memory\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BKE_shrinkwrap_project_normal(i8 noundef zeroext %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca %struct.BVHTreeRayHit, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %11) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %11, ptr noundef nonnull align 4 dereferenceable(36) %5, i64 36, i1 false)
  %12 = icmp eq ptr %3, null
  br i1 %12, label %28, label %13

13:                                               ; preds = %8
  %14 = load float, ptr %1, align 4, !tbaa !34
  store float %14, ptr %9, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %1, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = getelementptr inbounds float, ptr %9, i64 1
  store float %16, ptr %17, align 4, !tbaa !34
  %18 = getelementptr inbounds float, ptr %1, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = getelementptr inbounds float, ptr %9, i64 2
  store float %19, ptr %20, align 4, !tbaa !34
  call void @BLI_space_transform_apply(ptr noundef nonnull %3, ptr noundef nonnull %9) #8
  %21 = load float, ptr %2, align 4, !tbaa !34
  store float %21, ptr %10, align 4, !tbaa !34
  %22 = getelementptr inbounds float, ptr %2, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = getelementptr inbounds float, ptr %10, i64 1
  store float %23, ptr %24, align 4, !tbaa !34
  %25 = getelementptr inbounds float, ptr %2, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = getelementptr inbounds float, ptr %10, i64 2
  store float %26, ptr %27, align 4, !tbaa !34
  call void @BLI_space_transform_apply_normal(ptr noundef nonnull %3, ptr noundef nonnull %10) #8
  br label %28

28:                                               ; preds = %8, %13
  %29 = phi ptr [ %9, %13 ], [ %1, %8 ]
  %30 = phi ptr [ %10, %13 ], [ %2, %8 ]
  store i32 -1, ptr %11, align 4, !tbaa !38
  %31 = call i32 @BLI_bvhtree_ray_cast(ptr noundef %4, ptr noundef %29, ptr noundef %30, float noundef 0.000000e+00, ptr noundef nonnull %11, ptr noundef %6, ptr noundef %7) #8
  %32 = load i32, ptr %11, align 4, !tbaa !38
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %69, label %34

34:                                               ; preds = %28
  br i1 %12, label %37, label %35

35:                                               ; preds = %34
  %36 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %11, i64 0, i32 2
  call void @BLI_space_transform_invert_normal(ptr noundef nonnull %3, ptr noundef nonnull %36) #8
  br label %37

37:                                               ; preds = %35, %34
  %38 = zext i8 %0 to i32
  %39 = and i32 %38, 24
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %65, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %11, i64 0, i32 2
  %43 = load float, ptr %2, align 4, !tbaa !34
  %44 = load float, ptr %42, align 4, !tbaa !34
  %45 = getelementptr inbounds float, ptr %2, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !34
  %47 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %11, i64 0, i32 2, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !34
  %49 = fmul float %46, %48
  %50 = call float @llvm.fmuladd.f32(float %43, float %44, float %49)
  %51 = getelementptr inbounds float, ptr %2, i64 2
  %52 = load float, ptr %51, align 4, !tbaa !34
  %53 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %11, i64 0, i32 2, i64 2
  %54 = load float, ptr %53, align 4, !tbaa !34
  %55 = call float @llvm.fmuladd.f32(float %52, float %54, float %50)
  %56 = and i32 %38, 8
  %57 = icmp ne i32 %56, 0
  %58 = fcmp ole float %55, 0.000000e+00
  %59 = select i1 %57, i1 %58, i1 false
  br i1 %59, label %69, label %60

60:                                               ; preds = %41
  %61 = and i32 %38, 16
  %62 = icmp ne i32 %61, 0
  %63 = fcmp oge float %55, 0.000000e+00
  %64 = select i1 %62, i1 %63, i1 false
  br i1 %64, label %69, label %65

65:                                               ; preds = %60, %37
  br i1 %12, label %68, label %66

66:                                               ; preds = %65
  %67 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %11, i64 0, i32 1
  call void @BLI_space_transform_invert(ptr noundef nonnull %3, ptr noundef nonnull %67) #8
  br label %68

68:                                               ; preds = %66, %65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %5, ptr noundef nonnull align 4 dereferenceable(36) %11, i64 36, i1 false)
  br label %69

69:                                               ; preds = %28, %60, %41, %68
  %70 = phi i8 [ 1, %68 ], [ 0, %41 ], [ 0, %60 ], [ 0, %28 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #8
  ret i8 %70
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare void @BLI_space_transform_apply(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_space_transform_apply_normal(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @BLI_bvhtree_ray_cast(ptr noundef, ptr noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_space_transform_invert_normal(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @BLI_space_transform_invert(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @shrinkwrapModifier_deform(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i8 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = alloca %struct.BVHTreeFromMesh, align 8
  %8 = alloca %struct.BVHTreeNearest, align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca %struct.BVHTreeRayHit, align 4
  %11 = alloca %struct.BVHTreeFromMesh, align 8
  %12 = alloca %struct.BVHTreeFromMesh, align 8
  %13 = alloca %struct.SpaceTransform, align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x float], align 4
  %17 = alloca %struct.BVHTreeFromMesh, align 8
  %18 = alloca %struct.BVHTreeNearest, align 4
  %19 = alloca [3 x float], align 4
  %20 = alloca %struct.ShrinkwrapCalcData, align 8
  %21 = alloca %struct.SubsurfModifierData, align 8
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %20) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %20, i8 0, i64 200, i1 false)
  %22 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !41
  %24 = icmp eq ptr %23, %1
  br i1 %24, label %25, label %26

25:                                               ; preds = %6
  store ptr null, ptr %22, align 8, !tbaa !41
  br label %26

26:                                               ; preds = %25, %6
  %27 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %0, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !46
  %29 = icmp eq ptr %28, %1
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store ptr null, ptr %27, align 8, !tbaa !46
  br label %31

31:                                               ; preds = %30, %26
  store ptr %0, ptr %20, align 8, !tbaa !47
  %32 = getelementptr inbounds %struct.ShrinkwrapCalcData, ptr %20, i64 0, i32 1
  store ptr %1, ptr %32, align 8, !tbaa !50
  %33 = getelementptr inbounds %struct.ShrinkwrapCalcData, ptr %20, i64 0, i32 4
  store i32 %4, ptr %33, align 8, !tbaa !51
  %34 = getelementptr inbounds %struct.ShrinkwrapCalcData, ptr %20, i64 0, i32 3
  store ptr %3, ptr %34, align 8, !tbaa !52
  %35 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %0, i64 0, i32 3
  %36 = tail call i32 @defgroup_name_index(ptr noundef %1, ptr noundef nonnull %35) #8
  %37 = getelementptr inbounds %struct.ShrinkwrapCalcData, ptr %20, i64 0, i32 6
  store i32 %36, ptr %37, align 8, !tbaa !53
  %38 = icmp eq ptr %2, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 50
  %41 = load ptr, ptr %40, align 8, !tbaa !54
  %42 = tail call ptr %41(ptr noundef nonnull %2, i32 noundef 2) #8
  br label %50

43:                                               ; preds = %31
  %44 = load ptr, ptr %32, align 8, !tbaa !50
  %45 = getelementptr inbounds %struct.Object, ptr %44, i64 0, i32 3
  %46 = load i16, ptr %45, align 8, !tbaa !57
  %47 = icmp eq i16 %46, 22
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = tail call ptr @BKE_lattice_deform_verts_get(ptr noundef %44) #8
  br label %50

50:                                               ; preds = %39, %48
  %51 = phi ptr [ %49, %48 ], [ %42, %39 ]
  %52 = getelementptr inbounds %struct.ShrinkwrapCalcData, ptr %20, i64 0, i32 5
  store ptr %51, ptr %52, align 8, !tbaa !63
  br label %53

53:                                               ; preds = %50, %43
  %54 = load ptr, ptr %22, align 8, !tbaa !41
  %55 = icmp eq ptr %54, null
  br i1 %55, label %66, label %56

56:                                               ; preds = %53
  %57 = tail call ptr @object_get_derived_final(ptr noundef nonnull %54, i8 noundef zeroext %5) #8
  %58 = getelementptr inbounds %struct.ShrinkwrapCalcData, ptr %20, i64 0, i32 7
  store ptr %57, ptr %58, align 8, !tbaa !64
  %59 = getelementptr inbounds %struct.ShrinkwrapCalcData, ptr %20, i64 0, i32 8
  %60 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %61 = load ptr, ptr %22, align 8, !tbaa !41
  %62 = getelementptr inbounds %struct.Object, ptr %61, i64 0, i32 47
  call void @BLI_space_transform_from_matrices(ptr noundef nonnull %59, ptr noundef nonnull %60, ptr noundef nonnull %62) #8
  %63 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %0, i64 0, i32 4
  %64 = load float, ptr %63, align 8, !tbaa !65
  %65 = getelementptr inbounds %struct.ShrinkwrapCalcData, ptr %20, i64 0, i32 9
  store float %64, ptr %65, align 8, !tbaa !66
  br label %66

66:                                               ; preds = %56, %53
  %67 = load ptr, ptr %32, align 8, !tbaa !50
  %68 = call i32 @defgroup_name_index(ptr noundef %67, ptr noundef nonnull %35) #8
  store i32 %68, ptr %37, align 8, !tbaa !53
  br i1 %38, label %111, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %0, i64 0, i32 5
  %71 = load i16, ptr %70, align 4, !tbaa !67
  %72 = icmp eq i16 %71, 1
  br i1 %72, label %73, label %111

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 50
  %75 = load ptr, ptr %74, align 8, !tbaa !54
  %76 = call ptr %75(ptr noundef nonnull %2, i32 noundef 0) #8
  %77 = getelementptr inbounds %struct.ShrinkwrapCalcData, ptr %20, i64 0, i32 2
  store ptr %76, ptr %77, align 8, !tbaa !68
  %78 = load ptr, ptr %74, align 8, !tbaa !54
  %79 = call ptr %78(ptr noundef nonnull %2, i32 noundef 2) #8
  %80 = getelementptr inbounds %struct.ShrinkwrapCalcData, ptr %20, i64 0, i32 5
  store ptr %79, ptr %80, align 8, !tbaa !63
  %81 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %0, i64 0, i32 10
  %82 = load i8, ptr %81, align 1, !tbaa !69
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %111, label %84

84:                                               ; preds = %73
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %21) #8
  %85 = zext i8 %82 to i16
  %86 = getelementptr inbounds %struct.SubsurfModifierData, ptr %21, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %21, i8 0, i64 136, i1 false)
  store i16 %85, ptr %86, align 2, !tbaa !70
  %87 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 27
  %88 = load i32, ptr %87, align 8, !tbaa !72
  %89 = shl i32 %88, 3
  %90 = and i32 %89, 8
  %91 = call ptr @subsurf_make_derived_from_derived(ptr noundef nonnull %2, ptr noundef nonnull %21, ptr noundef null, i32 noundef %90) #8
  %92 = icmp eq ptr %91, null
  br i1 %92, label %110, label %93

93:                                               ; preds = %84
  %94 = getelementptr inbounds %struct.DerivedMesh, ptr %91, i64 0, i32 50
  %95 = load ptr, ptr %94, align 8, !tbaa !54
  %96 = call ptr %95(ptr noundef nonnull %91, i32 noundef 0) #8
  store ptr %96, ptr %77, align 8, !tbaa !68
  %97 = icmp eq ptr %96, null
  br i1 %97, label %110, label %98

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.DerivedMesh, ptr %91, i64 0, i32 23
  %100 = load ptr, ptr %99, align 8, !tbaa !73
  %101 = call i32 %100(ptr noundef nonnull %91) #8
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.MVert, ptr %96, i64 %102
  %104 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 23
  %105 = load ptr, ptr %104, align 8, !tbaa !73
  %106 = call i32 %105(ptr noundef nonnull %2) #8
  %107 = sext i32 %106 to i64
  %108 = sub nsw i64 0, %107
  %109 = getelementptr inbounds %struct.MVert, ptr %103, i64 %108
  store ptr %109, ptr %77, align 8, !tbaa !68
  br label %110

110:                                              ; preds = %93, %98, %84
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %21) #8
  br label %111

111:                                              ; preds = %73, %110, %69, %66
  %112 = phi ptr [ %91, %110 ], [ null, %73 ], [ null, %69 ], [ null, %66 ]
  %113 = getelementptr inbounds %struct.ShrinkwrapCalcData, ptr %20, i64 0, i32 7
  %114 = load ptr, ptr %113, align 8, !tbaa !64
  %115 = icmp eq ptr %114, null
  br i1 %115, label %582, label %116

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %0, i64 0, i32 5
  %118 = load i16, ptr %117, align 4, !tbaa !67
  switch i16 %118, label %582 [
    i16 0, label %119
    i16 1, label %243
    i16 2, label %488
  ]

119:                                              ; preds = %116
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %17) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %17, i8 0, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %18) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %18, i8 0, i64 36, i1 false)
  %120 = call ptr @bvhtree_from_mesh_faces(ptr noundef nonnull %17, ptr noundef nonnull %114, float noundef 0.000000e+00, i32 noundef 2, i32 noundef 6) #8
  %121 = load ptr, ptr %17, align 8, !tbaa !74
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %125

123:                                              ; preds = %119
  %124 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %242

125:                                              ; preds = %119
  store i32 -1, ptr %18, align 4, !tbaa !76
  %126 = getelementptr inbounds %struct.BVHTreeNearest, ptr %18, i64 0, i32 3
  store float 0x47EFFFFFE0000000, ptr %126, align 4, !tbaa !78
  %127 = load i32, ptr %33, align 8, !tbaa !51
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %129, label %241

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.ShrinkwrapCalcData, ptr %20, i64 0, i32 5
  %131 = getelementptr inbounds %struct.ShrinkwrapCalcData, ptr %20, i64 0, i32 2
  %132 = getelementptr inbounds float, ptr %19, i64 1
  %133 = getelementptr inbounds float, ptr %19, i64 2
  %134 = getelementptr inbounds float, ptr %19, i64 1
  %135 = getelementptr inbounds float, ptr %19, i64 2
  %136 = getelementptr inbounds %struct.ShrinkwrapCalcData, ptr %20, i64 0, i32 8
  %137 = getelementptr inbounds %struct.BVHTreeNearest, ptr %18, i64 0, i32 1
  %138 = getelementptr inbounds %struct.BVHTreeNearest, ptr %18, i64 0, i32 1, i64 1
  %139 = getelementptr inbounds float, ptr %19, i64 1
  %140 = getelementptr inbounds %struct.BVHTreeNearest, ptr %18, i64 0, i32 1, i64 2
  %141 = getelementptr inbounds float, ptr %19, i64 2
  %142 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %17, i64 0, i32 1
  %143 = getelementptr inbounds %struct.BVHTreeNearest, ptr %18, i64 0, i32 1
  %144 = getelementptr inbounds %struct.BVHTreeNearest, ptr %18, i64 0, i32 2
  %145 = getelementptr inbounds %struct.ShrinkwrapCalcData, ptr %20, i64 0, i32 9
  %146 = getelementptr inbounds %struct.BVHTreeNearest, ptr %18, i64 0, i32 1, i64 1
  %147 = getelementptr inbounds %struct.BVHTreeNearest, ptr %18, i64 0, i32 2, i64 1
  %148 = getelementptr inbounds float, ptr %19, i64 1
  %149 = getelementptr inbounds %struct.BVHTreeNearest, ptr %18, i64 0, i32 1, i64 2
  %150 = getelementptr inbounds %struct.BVHTreeNearest, ptr %18, i64 0, i32 2, i64 2
  %151 = getelementptr inbounds float, ptr %19, i64 2
  %152 = getelementptr inbounds %struct.BVHTreeNearest, ptr %18, i64 0, i32 1
  %153 = getelementptr inbounds %struct.BVHTreeNearest, ptr %18, i64 0, i32 1, i64 1
  %154 = getelementptr inbounds float, ptr %19, i64 1
  %155 = getelementptr inbounds %struct.BVHTreeNearest, ptr %18, i64 0, i32 1, i64 2
  %156 = getelementptr inbounds float, ptr %19, i64 2
  %157 = getelementptr inbounds %struct.BVHTreeNearest, ptr %18, i64 0, i32 1
  %158 = getelementptr inbounds %struct.ShrinkwrapCalcData, ptr %20, i64 0, i32 9
  br label %159

159:                                              ; preds = %129, %236
  %160 = phi i64 [ 0, %129 ], [ %237, %236 ]
  %161 = load ptr, ptr %34, align 8, !tbaa !52
  %162 = getelementptr inbounds [3 x float], ptr %161, i64 %160
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #8
  %163 = load ptr, ptr %130, align 8, !tbaa !63
  %164 = load i32, ptr %37, align 8, !tbaa !53
  %165 = trunc i64 %160 to i32
  %166 = call float @defvert_array_find_weight_safe(ptr noundef %163, i32 noundef %165, i32 noundef %164) #8
  %167 = fcmp oeq float %166, 0.000000e+00
  br i1 %167, label %236, label %168

168:                                              ; preds = %159
  %169 = load ptr, ptr %131, align 8, !tbaa !68
  %170 = icmp eq ptr %169, null
  %171 = getelementptr inbounds %struct.MVert, ptr %169, i64 %160
  %172 = select i1 %170, ptr %162, ptr %171
  %173 = select i1 %170, ptr %134, ptr %132
  %174 = select i1 %170, ptr %135, ptr %133
  %175 = load float, ptr %172, align 4, !tbaa !34
  store float %175, ptr %19, align 4, !tbaa !34
  %176 = getelementptr inbounds float, ptr %172, i64 1
  %177 = load float, ptr %176, align 4, !tbaa !34
  store float %177, ptr %173, align 4, !tbaa !34
  %178 = getelementptr inbounds float, ptr %172, i64 2
  %179 = load float, ptr %178, align 4, !tbaa !34
  store float %179, ptr %174, align 4, !tbaa !34
  call void @BLI_space_transform_apply(ptr noundef nonnull %136, ptr noundef nonnull %19) #8
  %180 = load i32, ptr %18, align 4, !tbaa !76
  %181 = icmp eq i32 %180, -1
  br i1 %181, label %195, label %182

182:                                              ; preds = %168
  %183 = load float, ptr %137, align 4, !tbaa !34
  %184 = load float, ptr %19, align 4, !tbaa !34
  %185 = fsub float %183, %184
  %186 = load float, ptr %138, align 4, !tbaa !34
  %187 = load float, ptr %139, align 4, !tbaa !34
  %188 = fsub float %186, %187
  %189 = load float, ptr %140, align 4, !tbaa !34
  %190 = load float, ptr %141, align 4, !tbaa !34
  %191 = fsub float %189, %190
  %192 = fmul float %188, %188
  %193 = call float @llvm.fmuladd.f32(float %185, float %185, float %192)
  %194 = call float @llvm.fmuladd.f32(float %191, float %191, float %193)
  br label %195

195:                                              ; preds = %182, %168
  %196 = phi float [ %194, %182 ], [ 0x47EFFFFFE0000000, %168 ]
  store float %196, ptr %126, align 4, !tbaa !78
  %197 = load ptr, ptr %17, align 8, !tbaa !74
  %198 = load ptr, ptr %142, align 8, !tbaa !79
  %199 = call i32 @BLI_bvhtree_find_nearest(ptr noundef %197, ptr noundef nonnull %19, ptr noundef nonnull %18, ptr noundef %198, ptr noundef nonnull %17) #8
  %200 = load i32, ptr %18, align 4, !tbaa !76
  %201 = icmp eq i32 %200, -1
  br i1 %201, label %236, label %202

202:                                              ; preds = %195
  %203 = load ptr, ptr %20, align 8, !tbaa !47
  %204 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %203, i64 0, i32 6
  %205 = load i8, ptr %204, align 2, !tbaa !80
  %206 = and i8 %205, 32
  %207 = icmp eq i8 %206, 0
  br i1 %207, label %219, label %208

208:                                              ; preds = %202
  %209 = load float, ptr %145, align 8, !tbaa !66
  %210 = load float, ptr %143, align 4, !tbaa !34
  %211 = load float, ptr %144, align 4, !tbaa !34
  %212 = call float @llvm.fmuladd.f32(float %211, float %209, float %210)
  store float %212, ptr %19, align 4, !tbaa !34
  %213 = load float, ptr %146, align 4, !tbaa !34
  %214 = load float, ptr %147, align 4, !tbaa !34
  %215 = call float @llvm.fmuladd.f32(float %214, float %209, float %213)
  store float %215, ptr %148, align 4, !tbaa !34
  %216 = load float, ptr %149, align 4, !tbaa !34
  %217 = load float, ptr %150, align 4, !tbaa !34
  %218 = call float @llvm.fmuladd.f32(float %217, float %209, float %216)
  store float %218, ptr %151, align 4, !tbaa !34
  br label %235

219:                                              ; preds = %202
  %220 = load float, ptr %126, align 4, !tbaa !78
  %221 = fcmp ugt float %220, 0.000000e+00
  br i1 %221, label %222, label %224

222:                                              ; preds = %219
  %223 = call float @sqrtf(float noundef %220) #8
  br label %224

224:                                              ; preds = %222, %219
  %225 = phi float [ %223, %222 ], [ 0.000000e+00, %219 ]
  %226 = fcmp ogt float %225, 0x3E80000000000000
  br i1 %226, label %227, label %231

227:                                              ; preds = %224
  %228 = load float, ptr %158, align 8, !tbaa !66
  %229 = fsub float %225, %228
  %230 = fdiv float %229, %225
  call void @interp_v3_v3v3(ptr noundef nonnull %19, ptr noundef nonnull %19, ptr noundef nonnull %157, float noundef %230) #8
  br label %235

231:                                              ; preds = %224
  %232 = load float, ptr %152, align 4, !tbaa !34
  store float %232, ptr %19, align 4, !tbaa !34
  %233 = load float, ptr %153, align 4, !tbaa !34
  store float %233, ptr %154, align 4, !tbaa !34
  %234 = load float, ptr %155, align 4, !tbaa !34
  store float %234, ptr %156, align 4, !tbaa !34
  br label %235

235:                                              ; preds = %231, %227, %208
  call void @BLI_space_transform_invert(ptr noundef nonnull %136, ptr noundef nonnull %19) #8
  call void @interp_v3_v3v3(ptr noundef %162, ptr noundef %162, ptr noundef nonnull %19, float noundef %166) #8
  br label %236

236:                                              ; preds = %235, %195, %159
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #8
  %237 = add nuw nsw i64 %160, 1
  %238 = load i32, ptr %33, align 8, !tbaa !51
  %239 = sext i32 %238 to i64
  %240 = icmp slt i64 %237, %239
  br i1 %240, label %159, label %241, !llvm.loop !81

241:                                              ; preds = %236, %125
  call void @free_bvhtree_from_mesh(ptr noundef nonnull %17) #8
  br label %242

242:                                              ; preds = %123, %241
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %18) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %17) #8
  br label %582

243:                                              ; preds = %116
  %244 = load ptr, ptr %20, align 8, !tbaa !47
  %245 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %244, i64 0, i32 8
  %246 = load float, ptr %245, align 8, !tbaa !84
  %247 = fmul float %246, %246
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %11) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %11, i8 0, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %12) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %12, i8 0, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %13) #8
  %248 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %244, i64 0, i32 6
  %249 = load i8, ptr %248, align 2, !tbaa !80
  %250 = and i8 %249, 3
  %251 = icmp eq i8 %250, 0
  br i1 %251, label %487, label %252

252:                                              ; preds = %243
  %253 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %244, i64 0, i32 9
  %254 = load i8, ptr %253, align 4, !tbaa !85
  %255 = icmp eq i8 %254, 0
  br i1 %255, label %256, label %260

256:                                              ; preds = %252
  %257 = getelementptr inbounds %struct.ShrinkwrapCalcData, ptr %20, i64 0, i32 2
  %258 = load ptr, ptr %257, align 8, !tbaa !68
  %259 = icmp eq ptr %258, null
  br i1 %259, label %487, label %287

260:                                              ; preds = %252
  %261 = and i8 %254, 1
  %262 = icmp eq i8 %261, 0
  %263 = select i1 %262, float 0.000000e+00, float 1.000000e+00
  %264 = and i8 %254, 2
  %265 = icmp eq i8 %264, 0
  %266 = and i8 %254, 4
  %267 = icmp eq i8 %266, 0
  %268 = select i1 %267, float 0.000000e+00, float 1.000000e+00
  %269 = select i1 %265, float 0.000000e+00, float 1.000000e+00
  %270 = call float @llvm.fmuladd.f32(float %263, float %263, float %269)
  %271 = call float @llvm.fmuladd.f32(float %268, float %268, float %270)
  %272 = fcmp ogt float %271, 0x38AA95A5C0000000
  br i1 %272, label %273, label %279

273:                                              ; preds = %260
  %274 = call float @sqrtf(float noundef %271) #8
  %275 = fdiv float 1.000000e+00, %274
  %276 = fmul float %263, %275
  %277 = fmul float %269, %275
  %278 = fmul float %268, %275
  br label %279

279:                                              ; preds = %273, %260
  %280 = phi float [ %276, %273 ], [ 0.000000e+00, %260 ]
  %281 = phi float [ %277, %273 ], [ 0.000000e+00, %260 ]
  %282 = phi float [ %278, %273 ], [ 0.000000e+00, %260 ]
  %283 = fmul float %281, %281
  %284 = call float @llvm.fmuladd.f32(float %280, float %280, float %283)
  %285 = call float @llvm.fmuladd.f32(float %282, float %282, float %284)
  %286 = fcmp olt float %285, 0x3E80000000000000
  br i1 %286, label %487, label %287

287:                                              ; preds = %279, %256
  %288 = phi float [ 0.000000e+00, %256 ], [ %280, %279 ]
  %289 = phi float [ 0.000000e+00, %256 ], [ %281, %279 ]
  %290 = phi float [ 0.000000e+00, %256 ], [ %282, %279 ]
  %291 = load ptr, ptr %20, align 8, !tbaa !47
  %292 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %291, i64 0, i32 2
  %293 = load ptr, ptr %292, align 8, !tbaa !46
  %294 = icmp eq ptr %293, null
  br i1 %294, label %305, label %295

295:                                              ; preds = %287
  %296 = call ptr @object_get_derived_final(ptr noundef nonnull %293, i8 noundef zeroext %5) #8
  %297 = icmp eq ptr %296, null
  br i1 %297, label %487, label %298

298:                                              ; preds = %295
  %299 = load ptr, ptr %32, align 8, !tbaa !50
  %300 = getelementptr inbounds %struct.Object, ptr %299, i64 0, i32 47
  %301 = load ptr, ptr %20, align 8, !tbaa !47
  %302 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %301, i64 0, i32 2
  %303 = load ptr, ptr %302, align 8, !tbaa !46
  %304 = getelementptr inbounds %struct.Object, ptr %303, i64 0, i32 47
  call void @BLI_space_transform_from_matrices(ptr noundef nonnull %13, ptr noundef nonnull %300, ptr noundef nonnull %304) #8
  br label %305

305:                                              ; preds = %298, %287
  %306 = phi ptr [ %296, %298 ], [ null, %287 ]
  %307 = load ptr, ptr %113, align 8, !tbaa !64
  %308 = call ptr @bvhtree_from_mesh_faces(ptr noundef nonnull %11, ptr noundef %307, float noundef 0.000000e+00, i32 noundef 4, i32 noundef 6) #8
  %309 = icmp eq ptr %308, null
  br i1 %309, label %486, label %310

310:                                              ; preds = %305
  %311 = icmp eq ptr %306, null
  br i1 %311, label %318, label %312

312:                                              ; preds = %310
  %313 = call ptr @bvhtree_from_mesh_faces(ptr noundef nonnull %12, ptr noundef nonnull %306, float noundef 0.000000e+00, i32 noundef 4, i32 noundef 6) #8
  %314 = icmp ne ptr %313, null
  %315 = load i32, ptr %33, align 8
  %316 = icmp sgt i32 %315, 0
  %317 = select i1 %314, i1 %316, i1 false
  br i1 %317, label %321, label %486

318:                                              ; preds = %310
  %319 = load i32, ptr %33, align 8, !tbaa !51
  %320 = icmp sgt i32 %319, 0
  br i1 %320, label %321, label %486

321:                                              ; preds = %312, %318
  %322 = getelementptr inbounds %struct.ShrinkwrapCalcData, ptr %20, i64 0, i32 5
  %323 = getelementptr inbounds %struct.ShrinkwrapCalcData, ptr %20, i64 0, i32 2
  %324 = getelementptr inbounds float, ptr %14, i64 1
  %325 = getelementptr inbounds float, ptr %14, i64 2
  %326 = getelementptr inbounds float, ptr %15, i64 1
  %327 = getelementptr inbounds float, ptr %15, i64 2
  %328 = getelementptr inbounds float, ptr %14, i64 1
  %329 = getelementptr inbounds float, ptr %14, i64 2
  %330 = getelementptr inbounds float, ptr %15, i64 1
  %331 = getelementptr inbounds float, ptr %15, i64 2
  %332 = getelementptr inbounds float, ptr %14, i64 1
  %333 = getelementptr inbounds float, ptr %14, i64 2
  %334 = getelementptr inbounds float, ptr %15, i64 1
  %335 = getelementptr inbounds float, ptr %15, i64 2
  %336 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %10, i64 0, i32 3
  %337 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %12, i64 0, i32 2
  %338 = getelementptr inbounds %struct.ShrinkwrapCalcData, ptr %20, i64 0, i32 8
  %339 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %11, i64 0, i32 2
  %340 = getelementptr inbounds float, ptr %15, i64 1
  %341 = getelementptr inbounds float, ptr %16, i64 1
  %342 = getelementptr inbounds float, ptr %15, i64 2
  %343 = getelementptr inbounds float, ptr %16, i64 2
  %344 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %12, i64 0, i32 2
  %345 = getelementptr inbounds %struct.ShrinkwrapCalcData, ptr %20, i64 0, i32 8
  %346 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %11, i64 0, i32 2
  %347 = fcmp une float %247, 0.000000e+00
  %348 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %10, i64 0, i32 1
  %349 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %10, i64 0, i32 1, i64 1
  %350 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %10, i64 0, i32 1, i64 2
  %351 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %10, i64 0, i32 1
  %352 = getelementptr inbounds %struct.ShrinkwrapCalcData, ptr %20, i64 0, i32 9
  %353 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %10, i64 0, i32 1, i64 1
  %354 = getelementptr inbounds float, ptr %15, i64 1
  %355 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %10, i64 0, i32 1, i64 2
  %356 = getelementptr inbounds float, ptr %15, i64 2
  br label %357

357:                                              ; preds = %321, %481
  %358 = phi i64 [ 0, %321 ], [ %482, %481 ]
  %359 = load ptr, ptr %34, align 8, !tbaa !52
  %360 = getelementptr inbounds [3 x float], ptr %359, i64 %358
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #8
  %361 = load ptr, ptr %322, align 8, !tbaa !63
  %362 = load i32, ptr %37, align 8, !tbaa !53
  %363 = trunc i64 %358 to i32
  %364 = call float @defvert_array_find_weight_safe(ptr noundef %361, i32 noundef %363, i32 noundef %362) #8
  %365 = fcmp oeq float %364, 0.000000e+00
  br i1 %365, label %481, label %366

366:                                              ; preds = %357
  %367 = load ptr, ptr %323, align 8, !tbaa !68
  %368 = icmp eq ptr %367, null
  br i1 %368, label %399, label %369

369:                                              ; preds = %366
  %370 = load ptr, ptr %20, align 8, !tbaa !47
  %371 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %370, i64 0, i32 9
  %372 = load i8, ptr %371, align 4, !tbaa !85
  %373 = icmp eq i8 %372, 0
  br i1 %373, label %374, label %393

374:                                              ; preds = %369
  %375 = getelementptr inbounds %struct.MVert, ptr %367, i64 %358
  %376 = load float, ptr %375, align 4, !tbaa !34
  store float %376, ptr %14, align 4, !tbaa !34
  %377 = getelementptr inbounds float, ptr %375, i64 1
  %378 = load float, ptr %377, align 4, !tbaa !34
  store float %378, ptr %328, align 4, !tbaa !34
  %379 = getelementptr inbounds float, ptr %375, i64 2
  %380 = load float, ptr %379, align 4, !tbaa !34
  store float %380, ptr %329, align 4, !tbaa !34
  %381 = getelementptr inbounds %struct.MVert, ptr %367, i64 %358, i32 1
  %382 = load i16, ptr %381, align 2, !tbaa !86
  %383 = sitofp i16 %382 to float
  %384 = fmul float %383, 0x3F00002000000000
  store float %384, ptr %15, align 4, !tbaa !34
  %385 = getelementptr inbounds i16, ptr %381, i64 1
  %386 = load i16, ptr %385, align 2, !tbaa !86
  %387 = sitofp i16 %386 to float
  %388 = fmul float %387, 0x3F00002000000000
  store float %388, ptr %330, align 4, !tbaa !34
  %389 = getelementptr inbounds i16, ptr %381, i64 2
  %390 = load i16, ptr %389, align 2, !tbaa !86
  %391 = sitofp i16 %390 to float
  %392 = fmul float %391, 0x3F00002000000000
  store float %392, ptr %331, align 4, !tbaa !34
  br label %405

393:                                              ; preds = %369
  %394 = load float, ptr %360, align 4, !tbaa !34
  store float %394, ptr %14, align 4, !tbaa !34
  %395 = getelementptr inbounds float, ptr %360, i64 1
  %396 = load float, ptr %395, align 4, !tbaa !34
  store float %396, ptr %324, align 4, !tbaa !34
  %397 = getelementptr inbounds float, ptr %360, i64 2
  %398 = load float, ptr %397, align 4, !tbaa !34
  store float %398, ptr %325, align 4, !tbaa !34
  store float %288, ptr %15, align 4, !tbaa !34
  store float %289, ptr %326, align 4, !tbaa !34
  store float %290, ptr %327, align 4, !tbaa !34
  br label %405

399:                                              ; preds = %366
  %400 = load float, ptr %360, align 4, !tbaa !34
  store float %400, ptr %14, align 4, !tbaa !34
  %401 = getelementptr inbounds float, ptr %360, i64 1
  %402 = load float, ptr %401, align 4, !tbaa !34
  store float %402, ptr %332, align 4, !tbaa !34
  %403 = getelementptr inbounds float, ptr %360, i64 2
  %404 = load float, ptr %403, align 4, !tbaa !34
  store float %404, ptr %333, align 4, !tbaa !34
  store float %288, ptr %15, align 4, !tbaa !34
  store float %289, ptr %334, align 4, !tbaa !34
  store float %290, ptr %335, align 4, !tbaa !34
  br label %405

405:                                              ; preds = %399, %393, %374
  store i32 -1, ptr %10, align 4, !tbaa !38
  store float 1.000000e+04, ptr %336, align 4, !tbaa !87
  %406 = load ptr, ptr %20, align 8, !tbaa !47
  %407 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %406, i64 0, i32 6
  %408 = load i8, ptr %407, align 2, !tbaa !80
  %409 = and i8 %408, 1
  %410 = icmp eq i8 %409, 0
  br i1 %410, label %424, label %411

411:                                              ; preds = %405
  %412 = load ptr, ptr %12, align 8, !tbaa !74
  %413 = icmp eq ptr %412, null
  br i1 %413, label %417, label %414

414:                                              ; preds = %411
  %415 = load ptr, ptr %337, align 8, !tbaa !88
  %416 = call zeroext i8 @BKE_shrinkwrap_project_normal(i8 noundef zeroext 0, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %13, ptr noundef nonnull %412, ptr noundef nonnull %10, ptr noundef %415, ptr noundef nonnull %12), !range !89
  br label %417

417:                                              ; preds = %414, %411
  %418 = load ptr, ptr %20, align 8, !tbaa !47
  %419 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %418, i64 0, i32 6
  %420 = load i8, ptr %419, align 2, !tbaa !80
  %421 = load ptr, ptr %11, align 8, !tbaa !74
  %422 = load ptr, ptr %339, align 8, !tbaa !88
  %423 = call zeroext i8 @BKE_shrinkwrap_project_normal(i8 noundef zeroext %420, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %338, ptr noundef %421, ptr noundef nonnull %10, ptr noundef %422, ptr noundef nonnull %11), !range !89
  br label %424

424:                                              ; preds = %417, %405
  %425 = load ptr, ptr %20, align 8, !tbaa !47
  %426 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %425, i64 0, i32 6
  %427 = load i8, ptr %426, align 2, !tbaa !80
  %428 = and i8 %427, 2
  %429 = icmp eq i8 %428, 0
  br i1 %429, label %449, label %430

430:                                              ; preds = %424
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #8
  %431 = load float, ptr %15, align 4, !tbaa !34
  %432 = fneg float %431
  store float %432, ptr %16, align 4, !tbaa !34
  %433 = load float, ptr %340, align 4, !tbaa !34
  %434 = fneg float %433
  store float %434, ptr %341, align 4, !tbaa !34
  %435 = load float, ptr %342, align 4, !tbaa !34
  %436 = fneg float %435
  store float %436, ptr %343, align 4, !tbaa !34
  %437 = load ptr, ptr %12, align 8, !tbaa !74
  %438 = icmp eq ptr %437, null
  br i1 %438, label %442, label %439

439:                                              ; preds = %430
  %440 = load ptr, ptr %344, align 8, !tbaa !88
  %441 = call zeroext i8 @BKE_shrinkwrap_project_normal(i8 noundef zeroext 0, ptr noundef nonnull %14, ptr noundef nonnull %16, ptr noundef nonnull %13, ptr noundef nonnull %437, ptr noundef nonnull %10, ptr noundef %440, ptr noundef nonnull %12), !range !89
  br label %442

442:                                              ; preds = %439, %430
  %443 = load ptr, ptr %20, align 8, !tbaa !47
  %444 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %443, i64 0, i32 6
  %445 = load i8, ptr %444, align 2, !tbaa !80
  %446 = load ptr, ptr %11, align 8, !tbaa !74
  %447 = load ptr, ptr %346, align 8, !tbaa !88
  %448 = call zeroext i8 @BKE_shrinkwrap_project_normal(i8 noundef zeroext %445, ptr noundef nonnull %14, ptr noundef nonnull %16, ptr noundef nonnull %345, ptr noundef %446, ptr noundef nonnull %10, ptr noundef %447, ptr noundef nonnull %11), !range !89
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #8
  br label %449

449:                                              ; preds = %442, %424
  br i1 %347, label %450, label %467

450:                                              ; preds = %449
  %451 = load float, ptr %360, align 4, !tbaa !34
  %452 = load float, ptr %348, align 4, !tbaa !34
  %453 = fsub float %451, %452
  %454 = getelementptr inbounds float, ptr %360, i64 1
  %455 = load float, ptr %454, align 4, !tbaa !34
  %456 = load float, ptr %349, align 4, !tbaa !34
  %457 = fsub float %455, %456
  %458 = getelementptr inbounds float, ptr %360, i64 2
  %459 = load float, ptr %458, align 4, !tbaa !34
  %460 = load float, ptr %350, align 4, !tbaa !34
  %461 = fsub float %459, %460
  %462 = fmul float %457, %457
  %463 = call float @llvm.fmuladd.f32(float %453, float %453, float %462)
  %464 = call float @llvm.fmuladd.f32(float %461, float %461, float %463)
  %465 = fcmp ogt float %464, %247
  br i1 %465, label %466, label %467

466:                                              ; preds = %450
  store i32 -1, ptr %10, align 4, !tbaa !38
  br label %467

467:                                              ; preds = %466, %450, %449
  %468 = load i32, ptr %10, align 4, !tbaa !38
  %469 = icmp eq i32 %468, -1
  br i1 %469, label %481, label %470

470:                                              ; preds = %467
  %471 = load float, ptr %352, align 8, !tbaa !66
  %472 = load float, ptr %351, align 4, !tbaa !34
  %473 = load float, ptr %15, align 4, !tbaa !34
  %474 = call float @llvm.fmuladd.f32(float %473, float %471, float %472)
  store float %474, ptr %351, align 4, !tbaa !34
  %475 = load float, ptr %353, align 4, !tbaa !34
  %476 = load float, ptr %354, align 4, !tbaa !34
  %477 = call float @llvm.fmuladd.f32(float %476, float %471, float %475)
  store float %477, ptr %353, align 4, !tbaa !34
  %478 = load float, ptr %355, align 4, !tbaa !34
  %479 = load float, ptr %356, align 4, !tbaa !34
  %480 = call float @llvm.fmuladd.f32(float %479, float %471, float %478)
  store float %480, ptr %355, align 4, !tbaa !34
  call void @interp_v3_v3v3(ptr noundef %360, ptr noundef %360, ptr noundef nonnull %351, float noundef %364) #8
  br label %481

481:                                              ; preds = %470, %467, %357
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #8
  %482 = add nuw nsw i64 %358, 1
  %483 = load i32, ptr %33, align 8, !tbaa !51
  %484 = sext i32 %483 to i64
  %485 = icmp slt i64 %482, %484
  br i1 %485, label %357, label %486, !llvm.loop !90

486:                                              ; preds = %481, %318, %312, %305
  call void @free_bvhtree_from_mesh(ptr noundef nonnull %11) #8
  call void @free_bvhtree_from_mesh(ptr noundef nonnull %12) #8
  br label %487

487:                                              ; preds = %243, %256, %279, %295, %486
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #8
  br label %582

488:                                              ; preds = %116
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %7) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %7, i8 0, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %8, i8 0, i64 36, i1 false)
  %489 = call ptr @bvhtree_from_mesh_verts(ptr noundef nonnull %7, ptr noundef nonnull %114, float noundef 0.000000e+00, i32 noundef 2, i32 noundef 6) #8
  %490 = load ptr, ptr %7, align 8, !tbaa !74
  %491 = icmp eq ptr %490, null
  br i1 %491, label %492, label %494

492:                                              ; preds = %488
  %493 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %581

494:                                              ; preds = %488
  store i32 -1, ptr %8, align 4, !tbaa !76
  %495 = getelementptr inbounds %struct.BVHTreeNearest, ptr %8, i64 0, i32 3
  store float 0x47EFFFFFE0000000, ptr %495, align 4, !tbaa !78
  %496 = load i32, ptr %33, align 8, !tbaa !51
  %497 = icmp sgt i32 %496, 0
  br i1 %497, label %498, label %580

498:                                              ; preds = %494
  %499 = getelementptr inbounds %struct.ShrinkwrapCalcData, ptr %20, i64 0, i32 5
  %500 = getelementptr inbounds %struct.ShrinkwrapCalcData, ptr %20, i64 0, i32 2
  %501 = getelementptr inbounds float, ptr %9, i64 1
  %502 = getelementptr inbounds float, ptr %9, i64 2
  %503 = getelementptr inbounds float, ptr %9, i64 1
  %504 = getelementptr inbounds float, ptr %9, i64 2
  %505 = getelementptr inbounds %struct.ShrinkwrapCalcData, ptr %20, i64 0, i32 8
  %506 = getelementptr inbounds %struct.BVHTreeNearest, ptr %8, i64 0, i32 1
  %507 = getelementptr inbounds %struct.BVHTreeNearest, ptr %8, i64 0, i32 1, i64 1
  %508 = getelementptr inbounds float, ptr %9, i64 1
  %509 = getelementptr inbounds %struct.BVHTreeNearest, ptr %8, i64 0, i32 1, i64 2
  %510 = getelementptr inbounds float, ptr %9, i64 2
  %511 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %7, i64 0, i32 1
  %512 = getelementptr inbounds %struct.ShrinkwrapCalcData, ptr %20, i64 0, i32 9
  %513 = getelementptr inbounds %struct.BVHTreeNearest, ptr %8, i64 0, i32 1
  %514 = getelementptr inbounds %struct.BVHTreeNearest, ptr %8, i64 0, i32 1, i64 1
  %515 = getelementptr inbounds float, ptr %9, i64 1
  %516 = getelementptr inbounds %struct.BVHTreeNearest, ptr %8, i64 0, i32 1, i64 2
  %517 = getelementptr inbounds float, ptr %9, i64 2
  br label %518

518:                                              ; preds = %498, %575
  %519 = phi i64 [ 0, %498 ], [ %576, %575 ]
  %520 = load ptr, ptr %34, align 8, !tbaa !52
  %521 = getelementptr inbounds [3 x float], ptr %520, i64 %519
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #8
  %522 = load ptr, ptr %499, align 8, !tbaa !63
  %523 = load i32, ptr %37, align 8, !tbaa !53
  %524 = trunc i64 %519 to i32
  %525 = call float @defvert_array_find_weight_safe(ptr noundef %522, i32 noundef %524, i32 noundef %523) #8
  %526 = fcmp oeq float %525, 0.000000e+00
  br i1 %526, label %575, label %527

527:                                              ; preds = %518
  %528 = load ptr, ptr %500, align 8, !tbaa !68
  %529 = icmp eq ptr %528, null
  %530 = getelementptr inbounds %struct.MVert, ptr %528, i64 %519
  %531 = select i1 %529, ptr %521, ptr %530
  %532 = select i1 %529, ptr %503, ptr %501
  %533 = select i1 %529, ptr %504, ptr %502
  %534 = load float, ptr %531, align 4, !tbaa !34
  store float %534, ptr %9, align 4, !tbaa !34
  %535 = getelementptr inbounds float, ptr %531, i64 1
  %536 = load float, ptr %535, align 4, !tbaa !34
  store float %536, ptr %532, align 4, !tbaa !34
  %537 = getelementptr inbounds float, ptr %531, i64 2
  %538 = load float, ptr %537, align 4, !tbaa !34
  store float %538, ptr %533, align 4, !tbaa !34
  call void @BLI_space_transform_apply(ptr noundef nonnull %505, ptr noundef nonnull %9) #8
  %539 = load i32, ptr %8, align 4, !tbaa !76
  %540 = icmp eq i32 %539, -1
  br i1 %540, label %554, label %541

541:                                              ; preds = %527
  %542 = load float, ptr %506, align 4, !tbaa !34
  %543 = load float, ptr %9, align 4, !tbaa !34
  %544 = fsub float %542, %543
  %545 = load float, ptr %507, align 4, !tbaa !34
  %546 = load float, ptr %508, align 4, !tbaa !34
  %547 = fsub float %545, %546
  %548 = load float, ptr %509, align 4, !tbaa !34
  %549 = load float, ptr %510, align 4, !tbaa !34
  %550 = fsub float %548, %549
  %551 = fmul float %547, %547
  %552 = call float @llvm.fmuladd.f32(float %544, float %544, float %551)
  %553 = call float @llvm.fmuladd.f32(float %550, float %550, float %552)
  br label %554

554:                                              ; preds = %541, %527
  %555 = phi float [ %553, %541 ], [ 0x47EFFFFFE0000000, %527 ]
  store float %555, ptr %495, align 4, !tbaa !78
  %556 = load ptr, ptr %7, align 8, !tbaa !74
  %557 = load ptr, ptr %511, align 8, !tbaa !79
  %558 = call i32 @BLI_bvhtree_find_nearest(ptr noundef %556, ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef %557, ptr noundef nonnull %7) #8
  %559 = load i32, ptr %8, align 4, !tbaa !76
  %560 = icmp eq i32 %559, -1
  br i1 %560, label %575, label %561

561:                                              ; preds = %554
  %562 = load float, ptr %495, align 4, !tbaa !78
  %563 = fcmp ogt float %562, 0x3E80000000000000
  br i1 %563, label %564, label %570

564:                                              ; preds = %561
  %565 = call float @sqrtf(float noundef %562) #8
  %566 = load float, ptr %512, align 8, !tbaa !66
  %567 = fsub float %565, %566
  %568 = fdiv float %567, %565
  %569 = fmul float %525, %568
  br label %570

570:                                              ; preds = %564, %561
  %571 = phi float [ %569, %564 ], [ %525, %561 ]
  %572 = load float, ptr %513, align 4, !tbaa !34
  store float %572, ptr %9, align 4, !tbaa !34
  %573 = load float, ptr %514, align 4, !tbaa !34
  store float %573, ptr %515, align 4, !tbaa !34
  %574 = load float, ptr %516, align 4, !tbaa !34
  store float %574, ptr %517, align 4, !tbaa !34
  call void @BLI_space_transform_invert(ptr noundef nonnull %505, ptr noundef nonnull %9) #8
  call void @interp_v3_v3v3(ptr noundef %521, ptr noundef %521, ptr noundef nonnull %9, float noundef %571) #8
  br label %575

575:                                              ; preds = %570, %554, %518
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #8
  %576 = add nuw nsw i64 %519, 1
  %577 = load i32, ptr %33, align 8, !tbaa !51
  %578 = sext i32 %577 to i64
  %579 = icmp slt i64 %576, %578
  br i1 %579, label %518, label %580, !llvm.loop !91

580:                                              ; preds = %575, %494
  call void @free_bvhtree_from_mesh(ptr noundef nonnull %7) #8
  br label %581

581:                                              ; preds = %492, %580
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %7) #8
  br label %582

582:                                              ; preds = %242, %487, %581, %116, %111
  %583 = icmp eq ptr %112, null
  br i1 %583, label %587, label %584

584:                                              ; preds = %582
  %585 = getelementptr inbounds %struct.DerivedMesh, ptr %112, i64 0, i32 95
  %586 = load ptr, ptr %585, align 8, !tbaa !92
  call void %586(ptr noundef nonnull %112) #8
  br label %587

587:                                              ; preds = %584, %582
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %20) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare i32 @defgroup_name_index(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BKE_lattice_deform_verts_get(ptr noundef) local_unnamed_addr #3

declare ptr @object_get_derived_final(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @BLI_space_transform_from_matrices(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @subsurf_make_derived_from_derived(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

declare ptr @bvhtree_from_mesh_faces(ptr noundef, ptr noundef, float noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare float @defvert_array_find_weight_safe(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @BLI_bvhtree_find_nearest(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

declare void @free_bvhtree_from_mesh(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #6

declare ptr @bvhtree_from_mesh_verts(ptr noundef, ptr noundef, float noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
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
!35 = !{!"float", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !40, i64 0}
!39 = !{!"BVHTreeRayHit", !40, i64 0, !36, i64 4, !36, i64 16, !35, i64 28, !40, i64 32}
!40 = !{!"int", !36, i64 0}
!41 = !{!42, !44, i64 112}
!42 = !{!"ShrinkwrapModifierData", !43, i64 0, !44, i64 112, !44, i64 120, !36, i64 128, !35, i64 192, !45, i64 196, !36, i64 198, !36, i64 199, !35, i64 200, !36, i64 204, !36, i64 205, !36, i64 206}
!43 = !{!"ModifierData", !44, i64 0, !44, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !36, i64 32, !44, i64 96, !44, i64 104}
!44 = !{!"any pointer", !36, i64 0}
!45 = !{!"short", !36, i64 0}
!46 = !{!42, !44, i64 120}
!47 = !{!48, !44, i64 0}
!48 = !{!"ShrinkwrapCalcData", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !40, i64 32, !44, i64 40, !40, i64 48, !44, i64 56, !49, i64 64, !35, i64 192}
!49 = !{!"SpaceTransform", !36, i64 0, !36, i64 64}
!50 = !{!48, !44, i64 8}
!51 = !{!48, !40, i64 32}
!52 = !{!48, !44, i64 24}
!53 = !{!48, !40, i64 48}
!54 = !{!55, !44, i64 1320}
!55 = !{!"DerivedMesh", !56, i64 0, !56, i64 200, !56, i64 400, !56, i64 600, !56, i64 800, !40, i64 1000, !40, i64 1004, !40, i64 1008, !40, i64 1012, !40, i64 1016, !40, i64 1020, !40, i64 1024, !44, i64 1032, !44, i64 1040, !40, i64 1048, !35, i64 1052, !40, i64 1056, !40, i64 1060, !44, i64 1064, !36, i64 1072, !44, i64 1080, !44, i64 1088, !44, i64 1096, !44, i64 1104, !44, i64 1112, !44, i64 1120, !44, i64 1128, !44, i64 1136, !44, i64 1144, !44, i64 1152, !44, i64 1160, !44, i64 1168, !44, i64 1176, !44, i64 1184, !44, i64 1192, !44, i64 1200, !44, i64 1208, !44, i64 1216, !44, i64 1224, !44, i64 1232, !44, i64 1240, !44, i64 1248, !44, i64 1256, !44, i64 1264, !44, i64 1272, !44, i64 1280, !44, i64 1288, !44, i64 1296, !44, i64 1304, !44, i64 1312, !44, i64 1320, !44, i64 1328, !44, i64 1336, !44, i64 1344, !44, i64 1352, !44, i64 1360, !44, i64 1368, !44, i64 1376, !44, i64 1384, !44, i64 1392, !44, i64 1400, !44, i64 1408, !44, i64 1416, !44, i64 1424, !44, i64 1432, !44, i64 1440, !44, i64 1448, !44, i64 1456, !44, i64 1464, !44, i64 1472, !44, i64 1480, !44, i64 1488, !44, i64 1496, !44, i64 1504, !44, i64 1512, !44, i64 1520, !44, i64 1528, !44, i64 1536, !44, i64 1544, !44, i64 1552, !44, i64 1560, !44, i64 1568, !44, i64 1576, !44, i64 1584, !44, i64 1592, !44, i64 1600, !44, i64 1608, !44, i64 1616, !44, i64 1624, !44, i64 1632, !44, i64 1640, !44, i64 1648, !44, i64 1656, !44, i64 1664, !44, i64 1672, !44, i64 1680}
!56 = !{!"CustomData", !44, i64 0, !36, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !44, i64 184, !44, i64 192}
!57 = !{!58, !45, i64 136}
!58 = !{!"Object", !59, i64 0, !44, i64 120, !44, i64 128, !45, i64 136, !45, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !36, i64 152, !44, i64 216, !44, i64 224, !44, i64 232, !44, i64 240, !44, i64 248, !44, i64 256, !44, i64 264, !44, i64 272, !44, i64 280, !44, i64 288, !44, i64 296, !44, i64 304, !60, i64 312, !44, i64 360, !61, i64 368, !61, i64 384, !61, i64 400, !61, i64 416, !40, i64 432, !40, i64 436, !44, i64 440, !44, i64 448, !40, i64 456, !40, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !35, i64 616, !35, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !40, i64 944, !45, i64 948, !45, i64 950, !45, i64 952, !45, i64 954, !45, i64 956, !45, i64 958, !45, i64 960, !45, i64 962, !45, i64 964, !36, i64 966, !36, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !35, i64 988, !35, i64 992, !35, i64 996, !35, i64 1000, !35, i64 1004, !35, i64 1008, !35, i64 1012, !35, i64 1016, !35, i64 1020, !35, i64 1024, !35, i64 1028, !35, i64 1032, !45, i64 1036, !45, i64 1038, !45, i64 1040, !36, i64 1042, !36, i64 1043, !45, i64 1044, !36, i64 1046, !36, i64 1047, !35, i64 1048, !35, i64 1052, !61, i64 1056, !61, i64 1072, !61, i64 1088, !61, i64 1104, !35, i64 1120, !45, i64 1124, !45, i64 1126, !36, i64 1128, !40, i64 1144, !40, i64 1148, !44, i64 1152, !36, i64 1160, !36, i64 1161, !45, i64 1162, !36, i64 1164, !61, i64 1176, !61, i64 1192, !61, i64 1208, !61, i64 1224, !44, i64 1240, !44, i64 1248, !44, i64 1256, !36, i64 1264, !36, i64 1265, !45, i64 1266, !35, i64 1268, !44, i64 1272, !44, i64 1280, !44, i64 1288, !44, i64 1296, !62, i64 1304, !62, i64 1312, !40, i64 1320, !40, i64 1324, !61, i64 1328, !61, i64 1344, !44, i64 1360, !44, i64 1368, !44, i64 1376, !36, i64 1384, !44, i64 1392, !61, i64 1400, !44, i64 1416}
!59 = !{!"ID", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !36, i64 32, !45, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !44, i64 112}
!60 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !45, i64 16, !45, i64 18, !45, i64 20, !45, i64 22, !45, i64 24, !45, i64 26, !45, i64 28, !45, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!61 = !{!"ListBase", !44, i64 0, !44, i64 8}
!62 = !{!"long", !36, i64 0}
!63 = !{!48, !44, i64 40}
!64 = !{!48, !44, i64 56}
!65 = !{!42, !35, i64 192}
!66 = !{!48, !35, i64 192}
!67 = !{!42, !45, i64 196}
!68 = !{!48, !44, i64 16}
!69 = !{!42, !36, i64 205}
!70 = !{!71, !45, i64 114}
!71 = !{!"SubsurfModifierData", !43, i64 0, !45, i64 112, !45, i64 114, !45, i64 116, !45, i64 118, !44, i64 120, !44, i64 128}
!72 = !{!58, !40, i64 432}
!73 = !{!55, !44, i64 1104}
!74 = !{!75, !44, i64 0}
!75 = !{!"BVHTreeFromMesh", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !44, i64 32, !44, i64 40, !36, i64 48, !36, i64 49, !36, i64 50, !35, i64 52, !44, i64 56, !36, i64 64}
!76 = !{!77, !40, i64 0}
!77 = !{!"BVHTreeNearest", !40, i64 0, !36, i64 4, !36, i64 16, !35, i64 28, !40, i64 32}
!78 = !{!77, !35, i64 28}
!79 = !{!75, !44, i64 8}
!80 = !{!42, !36, i64 198}
!81 = distinct !{!81, !82, !83}
!82 = !{!"llvm.loop.mustprogress"}
!83 = !{!"llvm.loop.unroll.disable"}
!84 = !{!42, !35, i64 200}
!85 = !{!42, !36, i64 204}
!86 = !{!45, !45, i64 0}
!87 = !{!39, !35, i64 28}
!88 = !{!75, !44, i64 16}
!89 = !{i8 0, i8 2}
!90 = distinct !{!90, !82, !83}
!91 = distinct !{!91, !82, !83}
!92 = !{!55, !44, i64 1680}
