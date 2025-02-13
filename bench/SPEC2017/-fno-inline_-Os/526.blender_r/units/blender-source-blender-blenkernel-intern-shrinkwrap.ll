; ModuleID = 'blender/source/blender/blenkernel/intern/shrinkwrap.c'
source_filename = "blender/source/blender/blenkernel/intern/shrinkwrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BVHTreeRayHit = type { i32, [3 x float], [3 x float], float, i32 }
%struct.ShrinkwrapCalcData = type { ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, %struct.SpaceTransform, float }
%struct.SpaceTransform = type { [4 x [4 x float]], [4 x [4 x float]] }
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
%struct.BVHTreeFromMesh = type { ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, float, ptr, i8 }
%struct.BVHTreeNearest = type { i32, [3 x float], [3 x float], float, i32 }

@str.1 = private unnamed_addr constant [26 x i8] c"Shrinkwrap: Out of memory\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BKE_shrinkwrap_project_normal(i8 noundef zeroext %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca %struct.BVHTreeRayHit, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %11) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %11, ptr noundef nonnull align 4 dereferenceable(36) %5, i64 36, i1 false)
  %12 = icmp eq ptr %3, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef %1) #14
  call void @BLI_space_transform_apply(ptr noundef nonnull %3, ptr noundef nonnull %9) #15
  call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef %2) #14
  call void @BLI_space_transform_apply_normal(ptr noundef nonnull %3, ptr noundef nonnull %10) #15
  br label %14

14:                                               ; preds = %8, %13
  %15 = phi ptr [ %9, %13 ], [ %1, %8 ]
  %16 = phi ptr [ %10, %13 ], [ %2, %8 ]
  store i32 -1, ptr %11, align 4, !tbaa !34
  %17 = call i32 @BLI_bvhtree_ray_cast(ptr noundef %4, ptr noundef %15, ptr noundef %16, float noundef 0.000000e+00, ptr noundef nonnull %11, ptr noundef %6, ptr noundef %7) #15
  %18 = load i32, ptr %11, align 4, !tbaa !34
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %43, label %20

20:                                               ; preds = %14
  br i1 %12, label %23, label %21

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %11, i64 0, i32 2
  call void @BLI_space_transform_invert_normal(ptr noundef nonnull %3, ptr noundef nonnull %22) #15
  br label %23

23:                                               ; preds = %21, %20
  %24 = zext i8 %0 to i32
  %25 = and i32 %24, 24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %11, i64 0, i32 2
  %29 = call fastcc float @dot_v3v3(ptr noundef %2, ptr noundef nonnull %28) #14
  %30 = and i32 %24, 8
  %31 = icmp ne i32 %30, 0
  %32 = fcmp ole float %29, 0.000000e+00
  %33 = select i1 %31, i1 %32, i1 false
  br i1 %33, label %43, label %34

34:                                               ; preds = %27
  %35 = and i32 %24, 16
  %36 = icmp ne i32 %35, 0
  %37 = fcmp oge float %29, 0.000000e+00
  %38 = select i1 %36, i1 %37, i1 false
  br i1 %38, label %43, label %39

39:                                               ; preds = %34, %23
  br i1 %12, label %42, label %40

40:                                               ; preds = %39
  %41 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %11, i64 0, i32 1
  call void @BLI_space_transform_invert(ptr noundef nonnull %3, ptr noundef nonnull %41) #15
  br label %42

42:                                               ; preds = %40, %39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %5, ptr noundef nonnull align 4 dereferenceable(36) %11, i64 36, i1 false)
  br label %43

43:                                               ; preds = %14, %34, %27, %42
  %44 = phi i8 [ 1, %42 ], [ 0, %27 ], [ 0, %34 ], [ 0, %14 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #13
  ret i8 %44
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !40 {
  %3 = load float, ptr %1, align 4, !tbaa !41
  store float %3, ptr %0, align 4, !tbaa !41
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !41
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !41
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !41
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !41
  ret void
}

; Function Attrs: optsize
declare void @BLI_space_transform_apply(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_space_transform_apply_normal(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @BLI_bvhtree_ray_cast(ptr noundef, ptr noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_space_transform_invert_normal(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !42 {
  %3 = load float, ptr %0, align 4, !tbaa !41
  %4 = load float, ptr %1, align 4, !tbaa !41
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !41
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !41
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !41
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !41
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @BLI_space_transform_invert(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @shrinkwrapModifier_deform(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i8 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = alloca %struct.ShrinkwrapCalcData, align 8
  %8 = alloca %struct.SubsurfModifierData, align 8
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %7) #13
  %9 = getelementptr inbounds i8, ptr %7, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %9, i8 0, i64 184, i1 false)
  %10 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %14

13:                                               ; preds = %6
  store ptr null, ptr %10, align 8, !tbaa !43
  br label %14

14:                                               ; preds = %13, %6
  %15 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !48
  %17 = icmp eq ptr %16, %1
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store ptr null, ptr %15, align 8, !tbaa !48
  br label %19

19:                                               ; preds = %18, %14
  store ptr %0, ptr %7, align 8, !tbaa !49
  %20 = getelementptr inbounds %struct.ShrinkwrapCalcData, ptr %7, i64 0, i32 1
  store ptr %1, ptr %20, align 8, !tbaa !52
  %21 = getelementptr inbounds %struct.ShrinkwrapCalcData, ptr %7, i64 0, i32 4
  store i32 %4, ptr %21, align 8, !tbaa !53
  %22 = getelementptr inbounds %struct.ShrinkwrapCalcData, ptr %7, i64 0, i32 3
  store ptr %3, ptr %22, align 8, !tbaa !54
  %23 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %0, i64 0, i32 3
  %24 = tail call i32 @defgroup_name_index(ptr noundef %1, ptr noundef nonnull %23) #15
  %25 = getelementptr inbounds %struct.ShrinkwrapCalcData, ptr %7, i64 0, i32 6
  store i32 %24, ptr %25, align 8, !tbaa !55
  %26 = icmp eq ptr %2, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 50
  %29 = load ptr, ptr %28, align 8, !tbaa !56
  %30 = tail call ptr %29(ptr noundef nonnull %2, i32 noundef 2) #15
  br label %37

31:                                               ; preds = %19
  %32 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %33 = load i16, ptr %32, align 8, !tbaa !59
  %34 = icmp eq i16 %33, 22
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = tail call ptr @BKE_lattice_deform_verts_get(ptr noundef nonnull %1) #15
  br label %37

37:                                               ; preds = %27, %35
  %38 = phi ptr [ %36, %35 ], [ %30, %27 ]
  %39 = getelementptr inbounds %struct.ShrinkwrapCalcData, ptr %7, i64 0, i32 5
  store ptr %38, ptr %39, align 8, !tbaa !65
  br label %40

40:                                               ; preds = %37, %31
  %41 = load ptr, ptr %10, align 8, !tbaa !43
  %42 = icmp eq ptr %41, null
  br i1 %42, label %54, label %43

43:                                               ; preds = %40
  %44 = tail call ptr @object_get_derived_final(ptr noundef nonnull %41, i8 noundef zeroext %5) #15
  %45 = getelementptr inbounds %struct.ShrinkwrapCalcData, ptr %7, i64 0, i32 7
  store ptr %44, ptr %45, align 8, !tbaa !66
  %46 = getelementptr inbounds %struct.ShrinkwrapCalcData, ptr %7, i64 0, i32 8
  %47 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %48 = load ptr, ptr %10, align 8, !tbaa !43
  %49 = getelementptr inbounds %struct.Object, ptr %48, i64 0, i32 47
  call void @BLI_space_transform_from_matrices(ptr noundef nonnull %46, ptr noundef nonnull %47, ptr noundef nonnull %49) #15
  %50 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %0, i64 0, i32 4
  %51 = load float, ptr %50, align 8, !tbaa !67
  %52 = getelementptr inbounds %struct.ShrinkwrapCalcData, ptr %7, i64 0, i32 9
  store float %51, ptr %52, align 8, !tbaa !68
  %53 = load ptr, ptr %20, align 8, !tbaa !52
  br label %54

54:                                               ; preds = %43, %40
  %55 = phi ptr [ %53, %43 ], [ %1, %40 ]
  %56 = call i32 @defgroup_name_index(ptr noundef %55, ptr noundef nonnull %23) #15
  store i32 %56, ptr %25, align 8, !tbaa !55
  br i1 %26, label %99, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %0, i64 0, i32 5
  %59 = load i16, ptr %58, align 4, !tbaa !69
  %60 = icmp eq i16 %59, 1
  br i1 %60, label %61, label %99

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 50
  %63 = load ptr, ptr %62, align 8, !tbaa !56
  %64 = call ptr %63(ptr noundef nonnull %2, i32 noundef 0) #15
  %65 = getelementptr inbounds %struct.ShrinkwrapCalcData, ptr %7, i64 0, i32 2
  store ptr %64, ptr %65, align 8, !tbaa !70
  %66 = load ptr, ptr %62, align 8, !tbaa !56
  %67 = call ptr %66(ptr noundef nonnull %2, i32 noundef 2) #15
  %68 = getelementptr inbounds %struct.ShrinkwrapCalcData, ptr %7, i64 0, i32 5
  store ptr %67, ptr %68, align 8, !tbaa !65
  %69 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %0, i64 0, i32 10
  %70 = load i8, ptr %69, align 1, !tbaa !71
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %99, label %72

72:                                               ; preds = %61
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %8) #13
  %73 = zext i8 %70 to i16
  %74 = getelementptr inbounds %struct.SubsurfModifierData, ptr %8, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %8, i8 0, i64 136, i1 false)
  store i16 %73, ptr %74, align 2, !tbaa !72
  %75 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 27
  %76 = load i32, ptr %75, align 8, !tbaa !74
  %77 = shl i32 %76, 3
  %78 = and i32 %77, 8
  %79 = call ptr @subsurf_make_derived_from_derived(ptr noundef nonnull %2, ptr noundef nonnull %8, ptr noundef null, i32 noundef %78) #15
  %80 = icmp eq ptr %79, null
  br i1 %80, label %98, label %81

81:                                               ; preds = %72
  %82 = getelementptr inbounds %struct.DerivedMesh, ptr %79, i64 0, i32 50
  %83 = load ptr, ptr %82, align 8, !tbaa !56
  %84 = call ptr %83(ptr noundef nonnull %79, i32 noundef 0) #15
  store ptr %84, ptr %65, align 8, !tbaa !70
  %85 = icmp eq ptr %84, null
  br i1 %85, label %98, label %86

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.DerivedMesh, ptr %79, i64 0, i32 23
  %88 = load ptr, ptr %87, align 8, !tbaa !75
  %89 = call i32 %88(ptr noundef nonnull %79) #15
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.MVert, ptr %84, i64 %90
  %92 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 23
  %93 = load ptr, ptr %92, align 8, !tbaa !75
  %94 = call i32 %93(ptr noundef nonnull %2) #15
  %95 = sext i32 %94 to i64
  %96 = sub nsw i64 0, %95
  %97 = getelementptr inbounds %struct.MVert, ptr %91, i64 %96
  store ptr %97, ptr %65, align 8, !tbaa !70
  br label %98

98:                                               ; preds = %81, %86, %72
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %8) #13
  br label %99

99:                                               ; preds = %61, %98, %57, %54
  %100 = phi ptr [ %79, %98 ], [ null, %61 ], [ null, %57 ], [ null, %54 ]
  %101 = getelementptr inbounds %struct.ShrinkwrapCalcData, ptr %7, i64 0, i32 7
  %102 = load ptr, ptr %101, align 8, !tbaa !66
  %103 = icmp eq ptr %102, null
  br i1 %103, label %110, label %104

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %0, i64 0, i32 5
  %106 = load i16, ptr %105, align 4, !tbaa !69
  switch i16 %106, label %110 [
    i16 0, label %107
    i16 1, label %108
    i16 2, label %109
  ]

107:                                              ; preds = %104
  call fastcc void @shrinkwrap_calc_nearest_surface_point(ptr noundef nonnull %7) #14
  br label %110

108:                                              ; preds = %104
  call fastcc void @shrinkwrap_calc_normal_projection(ptr noundef nonnull %7, i8 noundef zeroext %5) #14
  br label %110

109:                                              ; preds = %104
  call fastcc void @shrinkwrap_calc_nearest_vertex(ptr noundef nonnull %7) #14
  br label %110

110:                                              ; preds = %107, %108, %109, %104, %99
  %111 = icmp eq ptr %100, null
  br i1 %111, label %115, label %112

112:                                              ; preds = %110
  %113 = getelementptr inbounds %struct.DerivedMesh, ptr %100, i64 0, i32 95
  %114 = load ptr, ptr %113, align 8, !tbaa !76
  call void %114(ptr noundef nonnull %100) #15
  br label %115

115:                                              ; preds = %112, %110
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %7) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: optsize
declare i32 @defgroup_name_index(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BKE_lattice_deform_verts_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @object_get_derived_final(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_space_transform_from_matrices(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @subsurf_make_derived_from_derived(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @shrinkwrap_calc_nearest_surface_point(ptr noundef %0) unnamed_addr #0 !PGOFuncName !77 {
  %2 = alloca %struct.BVHTreeFromMesh, align 8
  %3 = alloca %struct.BVHTreeNearest, align 4
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %2, i8 0, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #13
  %5 = getelementptr inbounds i8, ptr %3, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %5, i8 0, i64 32, i1 false)
  %6 = getelementptr inbounds %struct.ShrinkwrapCalcData, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !66
  %8 = call ptr @bvhtree_from_mesh_faces(ptr noundef nonnull %2, ptr noundef %7, float noundef 0.000000e+00, i32 noundef 2, i32 noundef 6) #15
  %9 = load ptr, ptr %2, align 8, !tbaa !78
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %79

13:                                               ; preds = %1
  store i32 -1, ptr %3, align 4, !tbaa !80
  %14 = getelementptr inbounds %struct.BVHTreeNearest, ptr %3, i64 0, i32 3
  store float 0x47EFFFFFE0000000, ptr %14, align 4, !tbaa !82
  %15 = getelementptr inbounds %struct.ShrinkwrapCalcData, ptr %0, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !53
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %78

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.ShrinkwrapCalcData, ptr %0, i64 0, i32 3
  %20 = getelementptr inbounds %struct.ShrinkwrapCalcData, ptr %0, i64 0, i32 5
  %21 = getelementptr inbounds %struct.ShrinkwrapCalcData, ptr %0, i64 0, i32 6
  %22 = getelementptr inbounds %struct.ShrinkwrapCalcData, ptr %0, i64 0, i32 2
  %23 = getelementptr inbounds %struct.ShrinkwrapCalcData, ptr %0, i64 0, i32 8
  %24 = getelementptr inbounds %struct.BVHTreeNearest, ptr %3, i64 0, i32 1
  %25 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %2, i64 0, i32 1
  %26 = getelementptr inbounds %struct.BVHTreeNearest, ptr %3, i64 0, i32 2
  %27 = getelementptr inbounds %struct.ShrinkwrapCalcData, ptr %0, i64 0, i32 9
  br label %28

28:                                               ; preds = %18, %73
  %29 = phi i64 [ 0, %18 ], [ %74, %73 ]
  %30 = load ptr, ptr %19, align 8, !tbaa !54
  %31 = getelementptr inbounds [3 x float], ptr %30, i64 %29
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #13
  %32 = load ptr, ptr %20, align 8, !tbaa !65
  %33 = load i32, ptr %21, align 8, !tbaa !55
  %34 = trunc i64 %29 to i32
  %35 = call float @defvert_array_find_weight_safe(ptr noundef %32, i32 noundef %34, i32 noundef %33) #15
  %36 = fcmp oeq float %35, 0.000000e+00
  br i1 %36, label %73, label %37

37:                                               ; preds = %28
  %38 = load ptr, ptr %22, align 8, !tbaa !70
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.MVert, ptr %38, i64 %29
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %41) #14
  br label %43

42:                                               ; preds = %37
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef %31) #14
  br label %43

43:                                               ; preds = %42, %40
  call void @BLI_space_transform_apply(ptr noundef nonnull %23, ptr noundef nonnull %4) #15
  %44 = load i32, ptr %3, align 4, !tbaa !80
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = call fastcc float @len_squared_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %24) #14
  br label %48

48:                                               ; preds = %43, %46
  %49 = phi float [ %47, %46 ], [ 0x47EFFFFFE0000000, %43 ]
  store float %49, ptr %14, align 4, !tbaa !82
  %50 = load ptr, ptr %2, align 8, !tbaa !78
  %51 = load ptr, ptr %25, align 8, !tbaa !83
  %52 = call i32 @BLI_bvhtree_find_nearest(ptr noundef %50, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef %51, ptr noundef nonnull %2) #15
  %53 = load i32, ptr %3, align 4, !tbaa !80
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %73, label %55

55:                                               ; preds = %48
  %56 = load ptr, ptr %0, align 8, !tbaa !49
  %57 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %56, i64 0, i32 6
  %58 = load i8, ptr %57, align 2, !tbaa !84
  %59 = and i8 %58, 32
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %55
  %62 = load float, ptr %27, align 8, !tbaa !68
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %4, ptr noundef nonnull %24, ptr noundef nonnull %26, float noundef %62) #14
  br label %72

63:                                               ; preds = %55
  %64 = load float, ptr %14, align 4, !tbaa !82
  %65 = call fastcc float @sasqrt(float noundef %64) #14
  %66 = fcmp ogt float %65, 0x3E80000000000000
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load float, ptr %27, align 8, !tbaa !68
  %69 = fsub float %65, %68
  %70 = fdiv float %69, %65
  call void @interp_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef nonnull %24, float noundef %70) #15
  br label %72

71:                                               ; preds = %63
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %24) #14
  br label %72

72:                                               ; preds = %67, %71, %61
  call void @BLI_space_transform_invert(ptr noundef nonnull %23, ptr noundef nonnull %4) #15
  call void @interp_v3_v3v3(ptr noundef %31, ptr noundef %31, ptr noundef nonnull %4, float noundef %35) #15
  br label %73

73:                                               ; preds = %48, %72, %28
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #13
  %74 = add nuw nsw i64 %29, 1
  %75 = load i32, ptr %15, align 8, !tbaa !53
  %76 = sext i32 %75 to i64
  %77 = icmp slt i64 %74, %76
  br i1 %77, label %28, label %78, !llvm.loop !85

78:                                               ; preds = %73, %13
  call void @free_bvhtree_from_mesh(ptr noundef nonnull %2) #15
  br label %79

79:                                               ; preds = %78, %11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @shrinkwrap_calc_normal_projection(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !PGOFuncName !87 {
  %3 = alloca [3 x float], align 4
  %4 = alloca %struct.BVHTreeRayHit, align 4
  %5 = alloca %struct.BVHTreeFromMesh, align 8
  %6 = alloca %struct.BVHTreeFromMesh, align 8
  %7 = alloca %struct.SpaceTransform, align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = load ptr, ptr %0, align 8, !tbaa !49
  %12 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %11, i64 0, i32 8
  %13 = load float, ptr %12, align 8, !tbaa !88
  %14 = fmul float %13, %13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %5, i8 0, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %6, i8 0, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %7) #13
  %15 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %11, i64 0, i32 6
  %16 = load i8, ptr %15, align 2, !tbaa !84
  %17 = and i8 %16, 3
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %170, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %11, i64 0, i32 9
  %21 = load i8, ptr %20, align 4, !tbaa !89
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.ShrinkwrapCalcData, ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !70
  %26 = icmp eq ptr %25, null
  br i1 %26, label %170, label %46

27:                                               ; preds = %19
  %28 = and i8 %21, 1
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  store float 1.000000e+00, ptr %3, align 4, !tbaa !41
  br label %31

31:                                               ; preds = %30, %27
  %32 = and i8 %21, 2
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  store float 1.000000e+00, ptr %35, align 4, !tbaa !41
  br label %36

36:                                               ; preds = %34, %31
  %37 = and i8 %21, 4
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  store float 1.000000e+00, ptr %40, align 4, !tbaa !41
  br label %41

41:                                               ; preds = %39, %36
  call fastcc void @normalize_v3(ptr noundef nonnull %3) #14
  %42 = call fastcc float @len_squared_v3(ptr noundef nonnull %3) #14
  %43 = fcmp olt float %42, 0x3E80000000000000
  br i1 %43, label %170, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr %0, align 8, !tbaa !49
  br label %46

46:                                               ; preds = %44, %23
  %47 = phi ptr [ %45, %44 ], [ %11, %23 ]
  %48 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %47, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !48
  %50 = icmp eq ptr %49, null
  br i1 %50, label %62, label %51

51:                                               ; preds = %46
  %52 = tail call ptr @object_get_derived_final(ptr noundef nonnull %49, i8 noundef zeroext %1) #15
  %53 = icmp eq ptr %52, null
  br i1 %53, label %170, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.ShrinkwrapCalcData, ptr %0, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !52
  %57 = getelementptr inbounds %struct.Object, ptr %56, i64 0, i32 47
  %58 = load ptr, ptr %0, align 8, !tbaa !49
  %59 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %58, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !48
  %61 = getelementptr inbounds %struct.Object, ptr %60, i64 0, i32 47
  call void @BLI_space_transform_from_matrices(ptr noundef nonnull %7, ptr noundef nonnull %57, ptr noundef nonnull %61) #15
  br label %62

62:                                               ; preds = %54, %46
  %63 = phi ptr [ %52, %54 ], [ null, %46 ]
  %64 = getelementptr inbounds %struct.ShrinkwrapCalcData, ptr %0, i64 0, i32 7
  %65 = load ptr, ptr %64, align 8, !tbaa !66
  %66 = call ptr @bvhtree_from_mesh_faces(ptr noundef nonnull %5, ptr noundef %65, float noundef 0.000000e+00, i32 noundef 4, i32 noundef 6) #15
  %67 = icmp eq ptr %66, null
  br i1 %67, label %169, label %68

68:                                               ; preds = %62
  %69 = icmp eq ptr %63, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %68
  %71 = call ptr @bvhtree_from_mesh_faces(ptr noundef nonnull %6, ptr noundef nonnull %63, float noundef 0.000000e+00, i32 noundef 4, i32 noundef 6) #15
  %72 = icmp eq ptr %71, null
  br i1 %72, label %169, label %73

73:                                               ; preds = %70, %68
  %74 = getelementptr inbounds %struct.ShrinkwrapCalcData, ptr %0, i64 0, i32 4
  %75 = load i32, ptr %74, align 8, !tbaa !53
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %169

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.ShrinkwrapCalcData, ptr %0, i64 0, i32 3
  %79 = getelementptr inbounds %struct.ShrinkwrapCalcData, ptr %0, i64 0, i32 5
  %80 = getelementptr inbounds %struct.ShrinkwrapCalcData, ptr %0, i64 0, i32 6
  %81 = getelementptr inbounds %struct.ShrinkwrapCalcData, ptr %0, i64 0, i32 2
  %82 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %4, i64 0, i32 3
  %83 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %6, i64 0, i32 2
  %84 = getelementptr inbounds %struct.ShrinkwrapCalcData, ptr %0, i64 0, i32 8
  %85 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %5, i64 0, i32 2
  %86 = fcmp une float %14, 0.000000e+00
  %87 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %4, i64 0, i32 1
  %88 = getelementptr inbounds %struct.ShrinkwrapCalcData, ptr %0, i64 0, i32 9
  br label %89

89:                                               ; preds = %77, %164
  %90 = phi i64 [ 0, %77 ], [ %165, %164 ]
  %91 = load ptr, ptr %78, align 8, !tbaa !54
  %92 = getelementptr inbounds [3 x float], ptr %91, i64 %90
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #13
  %93 = load ptr, ptr %79, align 8, !tbaa !65
  %94 = load i32, ptr %80, align 8, !tbaa !55
  %95 = trunc i64 %90 to i32
  %96 = call float @defvert_array_find_weight_safe(ptr noundef %93, i32 noundef %95, i32 noundef %94) #15
  %97 = fcmp oeq float %96, 0.000000e+00
  br i1 %97, label %164, label %98

98:                                               ; preds = %89
  %99 = load ptr, ptr %81, align 8, !tbaa !70
  %100 = icmp eq ptr %99, null
  br i1 %100, label %110, label %101

101:                                              ; preds = %98
  %102 = load ptr, ptr %0, align 8, !tbaa !49
  %103 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %102, i64 0, i32 9
  %104 = load i8, ptr %103, align 4, !tbaa !89
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.MVert, ptr %99, i64 %90
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %107) #14
  %108 = getelementptr inbounds %struct.MVert, ptr %99, i64 %90, i32 1
  call fastcc void @normal_short_to_float_v3(ptr noundef nonnull %9, ptr noundef nonnull %108) #14
  br label %112

109:                                              ; preds = %101
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef %92) #14
  call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %3) #14
  br label %112

110:                                              ; preds = %98
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef %92) #14
  call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %3) #14
  %111 = load ptr, ptr %0, align 8, !tbaa !49
  br label %112

112:                                              ; preds = %106, %109, %110
  %113 = phi ptr [ %102, %106 ], [ %102, %109 ], [ %111, %110 ]
  store i32 -1, ptr %4, align 4, !tbaa !34
  store float 1.000000e+04, ptr %82, align 4, !tbaa !90
  %114 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %113, i64 0, i32 6
  %115 = load i8, ptr %114, align 2, !tbaa !84
  %116 = and i8 %115, 1
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %135, label %118

118:                                              ; preds = %112
  %119 = load ptr, ptr %6, align 8, !tbaa !78
  %120 = icmp eq ptr %119, null
  br i1 %120, label %127, label %121

121:                                              ; preds = %118
  %122 = load ptr, ptr %83, align 8, !tbaa !91
  %123 = call zeroext i8 @BKE_shrinkwrap_project_normal(i8 noundef zeroext 0, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %7, ptr noundef nonnull %119, ptr noundef nonnull %4, ptr noundef %122, ptr noundef nonnull %6) #14, !range !92
  %124 = load ptr, ptr %0, align 8, !tbaa !49
  %125 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %124, i64 0, i32 6
  %126 = load i8, ptr %125, align 2, !tbaa !84
  br label %127

127:                                              ; preds = %121, %118
  %128 = phi i8 [ %126, %121 ], [ %115, %118 ]
  %129 = load ptr, ptr %5, align 8, !tbaa !78
  %130 = load ptr, ptr %85, align 8, !tbaa !91
  %131 = call zeroext i8 @BKE_shrinkwrap_project_normal(i8 noundef zeroext %128, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %84, ptr noundef %129, ptr noundef nonnull %4, ptr noundef %130, ptr noundef nonnull %5) #14, !range !92
  %132 = load ptr, ptr %0, align 8, !tbaa !49
  %133 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %132, i64 0, i32 6
  %134 = load i8, ptr %133, align 2, !tbaa !84
  br label %135

135:                                              ; preds = %127, %112
  %136 = phi i8 [ %134, %127 ], [ %115, %112 ]
  %137 = phi ptr [ %132, %127 ], [ %113, %112 ]
  %138 = and i8 %136, 2
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %154, label %140

140:                                              ; preds = %135
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #13
  call fastcc void @negate_v3_v3(ptr noundef nonnull %10, ptr noundef nonnull %9) #14
  %141 = load ptr, ptr %6, align 8, !tbaa !78
  %142 = icmp eq ptr %141, null
  br i1 %142, label %147, label %143

143:                                              ; preds = %140
  %144 = load ptr, ptr %83, align 8, !tbaa !91
  %145 = call zeroext i8 @BKE_shrinkwrap_project_normal(i8 noundef zeroext 0, ptr noundef nonnull %8, ptr noundef nonnull %10, ptr noundef nonnull %7, ptr noundef nonnull %141, ptr noundef nonnull %4, ptr noundef %144, ptr noundef nonnull %6) #14, !range !92
  %146 = load ptr, ptr %0, align 8, !tbaa !49
  br label %147

147:                                              ; preds = %143, %140
  %148 = phi ptr [ %146, %143 ], [ %137, %140 ]
  %149 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %148, i64 0, i32 6
  %150 = load i8, ptr %149, align 2, !tbaa !84
  %151 = load ptr, ptr %5, align 8, !tbaa !78
  %152 = load ptr, ptr %85, align 8, !tbaa !91
  %153 = call zeroext i8 @BKE_shrinkwrap_project_normal(i8 noundef zeroext %150, ptr noundef nonnull %8, ptr noundef nonnull %10, ptr noundef nonnull %84, ptr noundef %151, ptr noundef nonnull %4, ptr noundef %152, ptr noundef nonnull %5) #14, !range !92
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #13
  br label %154

154:                                              ; preds = %147, %135
  br i1 %86, label %155, label %159

155:                                              ; preds = %154
  %156 = call fastcc float @len_squared_v3v3(ptr noundef nonnull %87, ptr noundef %92) #14
  %157 = fcmp ogt float %156, %14
  br i1 %157, label %158, label %159

158:                                              ; preds = %155
  store i32 -1, ptr %4, align 4, !tbaa !34
  br label %164

159:                                              ; preds = %155, %154
  %160 = load i32, ptr %4, align 4, !tbaa !34
  %161 = icmp eq i32 %160, -1
  br i1 %161, label %164, label %162

162:                                              ; preds = %159
  %163 = load float, ptr %88, align 8, !tbaa !68
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %87, ptr noundef nonnull %87, ptr noundef nonnull %9, float noundef %163) #14
  call void @interp_v3_v3v3(ptr noundef %92, ptr noundef %92, ptr noundef nonnull %87, float noundef %96) #15
  br label %164

164:                                              ; preds = %158, %159, %162, %89
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #13
  %165 = add nuw nsw i64 %90, 1
  %166 = load i32, ptr %74, align 8, !tbaa !53
  %167 = sext i32 %166 to i64
  %168 = icmp slt i64 %165, %167
  br i1 %168, label %89, label %169, !llvm.loop !93

169:                                              ; preds = %164, %73, %70, %62
  call void @free_bvhtree_from_mesh(ptr noundef nonnull %5) #15
  call void @free_bvhtree_from_mesh(ptr noundef nonnull %6) #15
  br label %170

170:                                              ; preds = %51, %41, %23, %2, %169
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @shrinkwrap_calc_nearest_vertex(ptr noundef %0) unnamed_addr #0 !PGOFuncName !94 {
  %2 = alloca %struct.BVHTreeFromMesh, align 8
  %3 = alloca %struct.BVHTreeNearest, align 4
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %2, i8 0, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #13
  %5 = getelementptr inbounds i8, ptr %3, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %5, i8 0, i64 32, i1 false)
  %6 = getelementptr inbounds %struct.ShrinkwrapCalcData, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !66
  %8 = call ptr @bvhtree_from_mesh_verts(ptr noundef nonnull %2, ptr noundef %7, float noundef 0.000000e+00, i32 noundef 2, i32 noundef 6) #15
  %9 = load ptr, ptr %2, align 8, !tbaa !78
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %71

13:                                               ; preds = %1
  store i32 -1, ptr %3, align 4, !tbaa !80
  %14 = getelementptr inbounds %struct.BVHTreeNearest, ptr %3, i64 0, i32 3
  store float 0x47EFFFFFE0000000, ptr %14, align 4, !tbaa !82
  %15 = getelementptr inbounds %struct.ShrinkwrapCalcData, ptr %0, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !53
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %70

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.ShrinkwrapCalcData, ptr %0, i64 0, i32 3
  %20 = getelementptr inbounds %struct.ShrinkwrapCalcData, ptr %0, i64 0, i32 5
  %21 = getelementptr inbounds %struct.ShrinkwrapCalcData, ptr %0, i64 0, i32 6
  %22 = getelementptr inbounds %struct.ShrinkwrapCalcData, ptr %0, i64 0, i32 2
  %23 = getelementptr inbounds %struct.ShrinkwrapCalcData, ptr %0, i64 0, i32 8
  %24 = getelementptr inbounds %struct.BVHTreeNearest, ptr %3, i64 0, i32 1
  %25 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %2, i64 0, i32 1
  %26 = getelementptr inbounds %struct.ShrinkwrapCalcData, ptr %0, i64 0, i32 9
  br label %27

27:                                               ; preds = %18, %65
  %28 = phi i64 [ 0, %18 ], [ %66, %65 ]
  %29 = load ptr, ptr %19, align 8, !tbaa !54
  %30 = getelementptr inbounds [3 x float], ptr %29, i64 %28
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #13
  %31 = load ptr, ptr %20, align 8, !tbaa !65
  %32 = load i32, ptr %21, align 8, !tbaa !55
  %33 = trunc i64 %28 to i32
  %34 = call float @defvert_array_find_weight_safe(ptr noundef %31, i32 noundef %33, i32 noundef %32) #15
  %35 = fcmp oeq float %34, 0.000000e+00
  br i1 %35, label %65, label %36

36:                                               ; preds = %27
  %37 = load ptr, ptr %22, align 8, !tbaa !70
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.MVert, ptr %37, i64 %28
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %40) #14
  br label %42

41:                                               ; preds = %36
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef %30) #14
  br label %42

42:                                               ; preds = %41, %39
  call void @BLI_space_transform_apply(ptr noundef nonnull %23, ptr noundef nonnull %4) #15
  %43 = load i32, ptr %3, align 4, !tbaa !80
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  %46 = call fastcc float @len_squared_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %24) #14
  br label %47

47:                                               ; preds = %42, %45
  %48 = phi float [ %46, %45 ], [ 0x47EFFFFFE0000000, %42 ]
  store float %48, ptr %14, align 4, !tbaa !82
  %49 = load ptr, ptr %2, align 8, !tbaa !78
  %50 = load ptr, ptr %25, align 8, !tbaa !83
  %51 = call i32 @BLI_bvhtree_find_nearest(ptr noundef %49, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef %50, ptr noundef nonnull %2) #15
  %52 = load i32, ptr %3, align 4, !tbaa !80
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %65, label %54

54:                                               ; preds = %47
  %55 = load float, ptr %14, align 4, !tbaa !82
  %56 = fcmp ogt float %55, 0x3E80000000000000
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = call float @sqrtf(float noundef %55) #15
  %59 = load float, ptr %26, align 8, !tbaa !68
  %60 = fsub float %58, %59
  %61 = fdiv float %60, %58
  %62 = fmul float %34, %61
  br label %63

63:                                               ; preds = %57, %54
  %64 = phi float [ %62, %57 ], [ %34, %54 ]
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %24) #14
  call void @BLI_space_transform_invert(ptr noundef nonnull %23, ptr noundef nonnull %4) #15
  call void @interp_v3_v3v3(ptr noundef %30, ptr noundef %30, ptr noundef nonnull %4, float noundef %64) #15
  br label %65

65:                                               ; preds = %47, %63, %27
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #13
  %66 = add nuw nsw i64 %28, 1
  %67 = load i32, ptr %15, align 8, !tbaa !53
  %68 = sext i32 %67 to i64
  %69 = icmp slt i64 %66, %68
  br i1 %69, label %27, label %70, !llvm.loop !95

70:                                               ; preds = %65, %13
  call void @free_bvhtree_from_mesh(ptr noundef nonnull %2) #15
  br label %71

71:                                               ; preds = %70, %11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: optsize
declare ptr @bvhtree_from_mesh_faces(ptr noundef, ptr noundef, float noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare float @defvert_array_find_weight_safe(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_squared_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !96 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #13
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #14
  %4 = call fastcc float @dot_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #13
  ret float %4
}

; Function Attrs: optsize
declare i32 @BLI_bvhtree_find_nearest(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #3 !PGOFuncName !97 {
  %5 = load float, ptr %1, align 4, !tbaa !41
  %6 = load float, ptr %2, align 4, !tbaa !41
  %7 = tail call float @llvm.fmuladd.f32(float %6, float %3, float %5)
  store float %7, ptr %0, align 4, !tbaa !41
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !41
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !41
  %12 = tail call float @llvm.fmuladd.f32(float %11, float %3, float %9)
  %13 = getelementptr inbounds float, ptr %0, i64 1
  store float %12, ptr %13, align 4, !tbaa !41
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !41
  %16 = getelementptr inbounds float, ptr %2, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !41
  %18 = tail call float @llvm.fmuladd.f32(float %17, float %3, float %15)
  %19 = getelementptr inbounds float, ptr %0, i64 2
  store float %18, ptr %19, align 4, !tbaa !41
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc float @sasqrt(float noundef %0) unnamed_addr #8 !PGOFuncName !98 {
  %2 = fcmp ugt float %0, 0.000000e+00
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = tail call float @sqrtf(float noundef %0) #15
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi float [ %4, %3 ], [ 0.000000e+00, %1 ]
  ret float %6
}

; Function Attrs: optsize
declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @free_bvhtree_from_mesh(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 !PGOFuncName !99 {
  %4 = load float, ptr %1, align 4, !tbaa !41
  %5 = load float, ptr %2, align 4, !tbaa !41
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !41
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !41
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !41
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !41
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !41
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !41
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !41
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #10 !PGOFuncName !100 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_squared_v3(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !101 {
  %2 = load float, ptr %0, align 4, !tbaa !41
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !41
  %5 = fmul float %4, %4
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %5)
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !41
  %9 = tail call float @llvm.fmuladd.f32(float %8, float %8, float %6)
  ret float %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @normal_short_to_float_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !102 {
  %3 = load <2 x i16>, ptr %1, align 2, !tbaa !103
  %4 = sitofp <2 x i16> %3 to <2 x float>
  %5 = fmul <2 x float> %4, <float 0x3F00002000000000, float 0x3F00002000000000>
  store <2 x float> %5, ptr %0, align 4, !tbaa !41
  %6 = getelementptr inbounds i16, ptr %1, i64 2
  %7 = load i16, ptr %6, align 2, !tbaa !103
  %8 = sitofp i16 %7 to float
  %9 = fmul float %8, 0x3F00002000000000
  %10 = getelementptr inbounds float, ptr %0, i64 2
  store float %9, ptr %10, align 4, !tbaa !41
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !104 {
  %3 = load float, ptr %1, align 4, !tbaa !41
  %4 = fneg float %3
  store float %4, ptr %0, align 4, !tbaa !41
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !41
  %7 = fneg float %6
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !41
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !41
  %11 = fneg float %10
  %12 = getelementptr inbounds float, ptr %0, i64 2
  store float %11, ptr %12, align 4, !tbaa !41
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !PGOFuncName !105 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #14
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #15
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #14
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #14
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #3 !PGOFuncName !106 {
  %4 = load float, ptr %1, align 4, !tbaa !41
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !41
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !41
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !41
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !41
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !41
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #11 !PGOFuncName !107 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !41
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !41
  ret void
}

; Function Attrs: optsize
declare ptr @bvhtree_from_mesh_verts(ptr noundef, ptr noundef, float noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #12

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nounwind }
attributes #14 = { optsize }
attributes #15 = { nounwind optsize }

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
!34 = !{!35, !36, i64 0}
!35 = !{!"BVHTreeRayHit", !36, i64 0, !37, i64 4, !37, i64 16, !39, i64 28, !36, i64 32}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"float", !37, i64 0}
!40 = !{!"shrinkwrap.c:copy_v3_v3"}
!41 = !{!39, !39, i64 0}
!42 = !{!"shrinkwrap.c:dot_v3v3"}
!43 = !{!44, !46, i64 112}
!44 = !{!"ShrinkwrapModifierData", !45, i64 0, !46, i64 112, !46, i64 120, !37, i64 128, !39, i64 192, !47, i64 196, !37, i64 198, !37, i64 199, !39, i64 200, !37, i64 204, !37, i64 205, !37, i64 206}
!45 = !{!"ModifierData", !46, i64 0, !46, i64 8, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !37, i64 32, !46, i64 96, !46, i64 104}
!46 = !{!"any pointer", !37, i64 0}
!47 = !{!"short", !37, i64 0}
!48 = !{!44, !46, i64 120}
!49 = !{!50, !46, i64 0}
!50 = !{!"ShrinkwrapCalcData", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24, !36, i64 32, !46, i64 40, !36, i64 48, !46, i64 56, !51, i64 64, !39, i64 192}
!51 = !{!"SpaceTransform", !37, i64 0, !37, i64 64}
!52 = !{!50, !46, i64 8}
!53 = !{!50, !36, i64 32}
!54 = !{!50, !46, i64 24}
!55 = !{!50, !36, i64 48}
!56 = !{!57, !46, i64 1320}
!57 = !{!"DerivedMesh", !58, i64 0, !58, i64 200, !58, i64 400, !58, i64 600, !58, i64 800, !36, i64 1000, !36, i64 1004, !36, i64 1008, !36, i64 1012, !36, i64 1016, !36, i64 1020, !36, i64 1024, !46, i64 1032, !46, i64 1040, !36, i64 1048, !39, i64 1052, !36, i64 1056, !36, i64 1060, !46, i64 1064, !37, i64 1072, !46, i64 1080, !46, i64 1088, !46, i64 1096, !46, i64 1104, !46, i64 1112, !46, i64 1120, !46, i64 1128, !46, i64 1136, !46, i64 1144, !46, i64 1152, !46, i64 1160, !46, i64 1168, !46, i64 1176, !46, i64 1184, !46, i64 1192, !46, i64 1200, !46, i64 1208, !46, i64 1216, !46, i64 1224, !46, i64 1232, !46, i64 1240, !46, i64 1248, !46, i64 1256, !46, i64 1264, !46, i64 1272, !46, i64 1280, !46, i64 1288, !46, i64 1296, !46, i64 1304, !46, i64 1312, !46, i64 1320, !46, i64 1328, !46, i64 1336, !46, i64 1344, !46, i64 1352, !46, i64 1360, !46, i64 1368, !46, i64 1376, !46, i64 1384, !46, i64 1392, !46, i64 1400, !46, i64 1408, !46, i64 1416, !46, i64 1424, !46, i64 1432, !46, i64 1440, !46, i64 1448, !46, i64 1456, !46, i64 1464, !46, i64 1472, !46, i64 1480, !46, i64 1488, !46, i64 1496, !46, i64 1504, !46, i64 1512, !46, i64 1520, !46, i64 1528, !46, i64 1536, !46, i64 1544, !46, i64 1552, !46, i64 1560, !46, i64 1568, !46, i64 1576, !46, i64 1584, !46, i64 1592, !46, i64 1600, !46, i64 1608, !46, i64 1616, !46, i64 1624, !46, i64 1632, !46, i64 1640, !46, i64 1648, !46, i64 1656, !46, i64 1664, !46, i64 1672, !46, i64 1680}
!58 = !{!"CustomData", !46, i64 0, !37, i64 8, !36, i64 172, !36, i64 176, !36, i64 180, !46, i64 184, !46, i64 192}
!59 = !{!60, !47, i64 136}
!60 = !{!"Object", !61, i64 0, !46, i64 120, !46, i64 128, !47, i64 136, !47, i64 138, !36, i64 140, !36, i64 144, !36, i64 148, !37, i64 152, !46, i64 216, !46, i64 224, !46, i64 232, !46, i64 240, !46, i64 248, !46, i64 256, !46, i64 264, !46, i64 272, !46, i64 280, !46, i64 288, !46, i64 296, !46, i64 304, !62, i64 312, !46, i64 360, !63, i64 368, !63, i64 384, !63, i64 400, !63, i64 416, !36, i64 432, !36, i64 436, !46, i64 440, !46, i64 448, !36, i64 456, !36, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !39, i64 616, !39, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !36, i64 944, !47, i64 948, !47, i64 950, !47, i64 952, !47, i64 954, !47, i64 956, !47, i64 958, !47, i64 960, !47, i64 962, !47, i64 964, !37, i64 966, !37, i64 967, !36, i64 968, !36, i64 972, !36, i64 976, !36, i64 980, !36, i64 984, !39, i64 988, !39, i64 992, !39, i64 996, !39, i64 1000, !39, i64 1004, !39, i64 1008, !39, i64 1012, !39, i64 1016, !39, i64 1020, !39, i64 1024, !39, i64 1028, !39, i64 1032, !47, i64 1036, !47, i64 1038, !47, i64 1040, !37, i64 1042, !37, i64 1043, !47, i64 1044, !37, i64 1046, !37, i64 1047, !39, i64 1048, !39, i64 1052, !63, i64 1056, !63, i64 1072, !63, i64 1088, !63, i64 1104, !39, i64 1120, !47, i64 1124, !47, i64 1126, !37, i64 1128, !36, i64 1144, !36, i64 1148, !46, i64 1152, !37, i64 1160, !37, i64 1161, !47, i64 1162, !37, i64 1164, !63, i64 1176, !63, i64 1192, !63, i64 1208, !63, i64 1224, !46, i64 1240, !46, i64 1248, !46, i64 1256, !37, i64 1264, !37, i64 1265, !47, i64 1266, !39, i64 1268, !46, i64 1272, !46, i64 1280, !46, i64 1288, !46, i64 1296, !64, i64 1304, !64, i64 1312, !36, i64 1320, !36, i64 1324, !63, i64 1328, !63, i64 1344, !46, i64 1360, !46, i64 1368, !46, i64 1376, !37, i64 1384, !46, i64 1392, !63, i64 1400, !46, i64 1416}
!61 = !{!"ID", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24, !37, i64 32, !47, i64 98, !36, i64 100, !36, i64 104, !36, i64 108, !46, i64 112}
!62 = !{!"bAnimVizSettings", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !47, i64 16, !47, i64 18, !47, i64 20, !47, i64 22, !47, i64 24, !47, i64 26, !47, i64 28, !47, i64 30, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44}
!63 = !{!"ListBase", !46, i64 0, !46, i64 8}
!64 = !{!"long", !37, i64 0}
!65 = !{!50, !46, i64 40}
!66 = !{!50, !46, i64 56}
!67 = !{!44, !39, i64 192}
!68 = !{!50, !39, i64 192}
!69 = !{!44, !47, i64 196}
!70 = !{!50, !46, i64 16}
!71 = !{!44, !37, i64 205}
!72 = !{!73, !47, i64 114}
!73 = !{!"SubsurfModifierData", !45, i64 0, !47, i64 112, !47, i64 114, !47, i64 116, !47, i64 118, !46, i64 120, !46, i64 128}
!74 = !{!60, !36, i64 432}
!75 = !{!57, !46, i64 1104}
!76 = !{!57, !46, i64 1680}
!77 = !{!"shrinkwrap.c:shrinkwrap_calc_nearest_surface_point"}
!78 = !{!79, !46, i64 0}
!79 = !{!"BVHTreeFromMesh", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24, !46, i64 32, !46, i64 40, !37, i64 48, !37, i64 49, !37, i64 50, !39, i64 52, !46, i64 56, !37, i64 64}
!80 = !{!81, !36, i64 0}
!81 = !{!"BVHTreeNearest", !36, i64 0, !37, i64 4, !37, i64 16, !39, i64 28, !36, i64 32}
!82 = !{!81, !39, i64 28}
!83 = !{!79, !46, i64 8}
!84 = !{!44, !37, i64 198}
!85 = distinct !{!85, !86}
!86 = !{!"llvm.loop.mustprogress"}
!87 = !{!"shrinkwrap.c:shrinkwrap_calc_normal_projection"}
!88 = !{!44, !39, i64 200}
!89 = !{!44, !37, i64 204}
!90 = !{!35, !39, i64 28}
!91 = !{!79, !46, i64 16}
!92 = !{i8 0, i8 2}
!93 = distinct !{!93, !86}
!94 = !{!"shrinkwrap.c:shrinkwrap_calc_nearest_vertex"}
!95 = distinct !{!95, !86}
!96 = !{!"shrinkwrap.c:len_squared_v3v3"}
!97 = !{!"shrinkwrap.c:madd_v3_v3v3fl"}
!98 = !{!"shrinkwrap.c:sasqrt"}
!99 = !{!"shrinkwrap.c:sub_v3_v3v3"}
!100 = !{!"shrinkwrap.c:normalize_v3"}
!101 = !{!"shrinkwrap.c:len_squared_v3"}
!102 = !{!"shrinkwrap.c:normal_short_to_float_v3"}
!103 = !{!47, !47, i64 0}
!104 = !{!"shrinkwrap.c:negate_v3_v3"}
!105 = !{!"shrinkwrap.c:normalize_v3_v3"}
!106 = !{!"shrinkwrap.c:mul_v3_v3fl"}
!107 = !{!"shrinkwrap.c:zero_v3"}
