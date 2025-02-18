; ModuleID = 'blender/source/blender/gpu/intern/gpu_simple_shader.c'
source_filename = "blender/source/blender/gpu/intern/gpu_simple_shader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon = type { [32 x ptr], [32 x i8], i8, i32, i32 }
%struct.GPULightData = type { [4 x float], [4 x float], [4 x float], float, float, float, [3 x float], float, float }

@GPU_MATERIAL_STATE = internal unnamed_addr global %struct.anon zeroinitializer, align 8
@.str = private unnamed_addr constant [19 x i8] c"#define USE_COLOR\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"#define USE_TWO_SIDED\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"#define USE_TEXTURE\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"#define USE_SOLID_LIGHTING\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"#define USE_SCENE_LIGHTING\0A\00", align 1
@datatoc_gpu_shader_simple_vert_glsl = external global [0 x i8], align 1
@datatoc_gpu_shader_simple_frag_glsl = external global [0 x i8], align 1
@__glewUniform1i = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [12 x i8] c"texture_map\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @GPU_simple_shaders_init() local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) @GPU_MATERIAL_STATE, i8 0, i64 304, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local void @GPU_simple_shaders_exit() local_unnamed_addr #2 {
  br label %1

1:                                                ; preds = %0, %7
  %2 = phi i64 [ 0, %0 ], [ %8, %7 ]
  %3 = getelementptr inbounds [32 x ptr], ptr @GPU_MATERIAL_STATE, i64 0, i64 %2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @GPU_shader_free(ptr noundef nonnull %4) #9
  br label %7

7:                                                ; preds = %1, %6
  %8 = add nuw nsw i64 %2, 1
  %9 = icmp eq i64 %8, 32
  br i1 %9, label %10, label %1, !llvm.loop !38

10:                                               ; preds = %7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare void @GPU_shader_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local void @GPU_simple_shader_bind(i32 noundef %0) local_unnamed_addr #2 {
  %2 = alloca [320 x i8], align 16
  %3 = tail call i32 @GPU_glsl_support() #9
  %4 = icmp eq i32 %3, 0
  %5 = and i32 %0, 2
  %6 = icmp eq i32 %5, 0
  br i1 %4, label %71, label %7

7:                                                ; preds = %1
  br i1 %6, label %17, label %8

8:                                                ; preds = %7
  %9 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @GPU_MATERIAL_STATE, i64 0, i32 3), align 4, !tbaa !41
  %10 = icmp sgt i32 %9, 7
  %11 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @GPU_MATERIAL_STATE, i64 0, i32 4), align 8
  %12 = and i32 %11, %9
  %13 = icmp ne i32 %12, %9
  %14 = select i1 %10, i1 true, i1 %13
  %15 = or i32 %0, 16
  %16 = select i1 %14, i32 %0, i32 %15
  br label %17

17:                                               ; preds = %8, %7
  %18 = phi i32 [ %0, %7 ], [ %16, %8 ]
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [32 x ptr], ptr @GPU_MATERIAL_STATE, i64 0, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %67

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.anon, ptr @GPU_MATERIAL_STATE, i64 0, i32 1, i64 %19
  %25 = load i8, ptr %24, align 1, !tbaa !44
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %67

27:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 320, ptr nonnull %2) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(320) %2, i8 0, i64 320, i1 false)
  %28 = and i32 %18, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2)
  %32 = getelementptr inbounds i8, ptr %2, i64 %31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %32, ptr noundef nonnull align 1 dereferenceable(19) @.str, i64 19, i1 false)
  br label %33

33:                                               ; preds = %30, %27
  %34 = and i32 %18, 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2)
  %38 = getelementptr inbounds i8, ptr %2, i64 %37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %38, ptr noundef nonnull align 1 dereferenceable(23) @.str.1, i64 23, i1 false)
  br label %39

39:                                               ; preds = %36, %33
  %40 = and i32 %18, 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2)
  %44 = getelementptr inbounds i8, ptr %2, i64 %43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %44, ptr noundef nonnull align 1 dereferenceable(21) @.str.2, i64 21, i1 false)
  br label %45

45:                                               ; preds = %42, %39
  %46 = and i32 %18, 16
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2)
  %50 = getelementptr inbounds i8, ptr %2, i64 %49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %50, ptr noundef nonnull align 1 dereferenceable(28) @.str.3, i64 28, i1 false)
  br label %57

51:                                               ; preds = %45
  %52 = and i32 %18, 2
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2)
  %56 = getelementptr inbounds i8, ptr %2, i64 %55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %56, ptr noundef nonnull align 1 dereferenceable(28) @.str.4, i64 28, i1 false)
  br label %57

57:                                               ; preds = %54, %51, %48
  %58 = call ptr @GPU_shader_create(ptr noundef nonnull @datatoc_gpu_shader_simple_vert_glsl, ptr noundef nonnull @datatoc_gpu_shader_simple_frag_glsl, ptr noundef null, ptr noundef nonnull %2) #9
  %59 = icmp eq ptr %58, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %57
  br i1 %41, label %64, label %61

61:                                               ; preds = %60
  %62 = load ptr, ptr @__glewUniform1i, align 8, !tbaa !34
  %63 = call i32 @GPU_shader_get_uniform(ptr noundef nonnull %58, ptr noundef nonnull @.str.5) #9
  call void %62(i32 noundef %63, i32 noundef 0) #9
  br label %64

64:                                               ; preds = %61, %60
  store ptr %58, ptr %20, align 8, !tbaa !34
  br label %66

65:                                               ; preds = %57
  store i8 1, ptr %24, align 1, !tbaa !44
  br label %66

66:                                               ; preds = %65, %64
  call void @llvm.lifetime.end.p0(i64 320, ptr nonnull %2) #9
  br label %67

67:                                               ; preds = %17, %23, %66
  %68 = phi ptr [ %21, %17 ], [ null, %23 ], [ %58, %66 ]
  %69 = icmp eq ptr %68, null
  br i1 %69, label %85, label %70

70:                                               ; preds = %67
  call void @GPU_shader_bind(ptr noundef nonnull %68) #9
  br label %85

71:                                               ; preds = %1
  br i1 %6, label %73, label %72

72:                                               ; preds = %71
  tail call void @glEnable(i32 noundef 2896) #9
  br label %73

73:                                               ; preds = %72, %71
  %74 = and i32 %0, 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %73
  tail call void @glLightModeli(i32 noundef 2898, i32 noundef 1) #9
  br label %77

77:                                               ; preds = %76, %73
  %78 = and i32 %0, 1
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %77
  tail call void @glEnable(i32 noundef 2903) #9
  tail call void @glColorMaterial(i32 noundef 1032, i32 noundef 4609) #9
  br label %81

81:                                               ; preds = %80, %77
  %82 = and i32 %0, 8
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %81
  tail call void @glEnable(i32 noundef 3553) #9
  br label %85

85:                                               ; preds = %67, %70, %81, %84
  %86 = trunc i32 %0 to i8
  %87 = and i8 %86, 2
  store i8 %87, ptr getelementptr inbounds (%struct.anon, ptr @GPU_MATERIAL_STATE, i64 0, i32 2), align 8, !tbaa !45
  ret void
}

declare i32 @GPU_glsl_support() local_unnamed_addr #4

declare void @GPU_shader_bind(ptr noundef) local_unnamed_addr #4

declare void @glEnable(i32 noundef) local_unnamed_addr #4

declare void @glLightModeli(i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @glColorMaterial(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @GPU_simple_shader_unbind() local_unnamed_addr #2 {
  %1 = tail call i32 @GPU_glsl_support() #9
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @GPU_shader_unbind() #9
  br label %5

4:                                                ; preds = %0
  tail call void @glDisable(i32 noundef 2896) #9
  tail call void @glDisable(i32 noundef 2903) #9
  tail call void @glDisable(i32 noundef 3553) #9
  tail call void @glLightModeli(i32 noundef 2898, i32 noundef 0) #9
  br label %5

5:                                                ; preds = %4, %3
  ret void
}

declare void @GPU_shader_unbind() local_unnamed_addr #4

declare void @glDisable(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @GPU_simple_shader_colors(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, float noundef %3) local_unnamed_addr #2 {
  %5 = alloca [4 x float], align 16
  %6 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9
  %7 = load float, ptr %0, align 4, !tbaa !46
  store float %7, ptr %5, align 16, !tbaa !46
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !46
  %10 = getelementptr inbounds float, ptr %5, i64 1
  store float %9, ptr %10, align 4, !tbaa !46
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !46
  %13 = getelementptr inbounds float, ptr %5, i64 2
  store float %12, ptr %13, align 8, !tbaa !46
  %14 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 3
  store float %3, ptr %14, align 4, !tbaa !46
  %15 = load float, ptr %1, align 4, !tbaa !46
  store float %15, ptr %6, align 16, !tbaa !46
  %16 = getelementptr inbounds float, ptr %1, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !46
  %18 = getelementptr inbounds float, ptr %6, i64 1
  store float %17, ptr %18, align 4, !tbaa !46
  %19 = getelementptr inbounds float, ptr %1, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !46
  %21 = getelementptr inbounds float, ptr %6, i64 2
  store float %20, ptr %21, align 8, !tbaa !46
  %22 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 3
  store float 1.000000e+00, ptr %22, align 4, !tbaa !46
  call void @glMaterialfv(i32 noundef 1032, i32 noundef 4609, ptr noundef nonnull %5) #9
  call void @glMaterialfv(i32 noundef 1032, i32 noundef 4610, ptr noundef nonnull %6) #9
  %23 = call i32 @llvm.smin.i32(i32 %2, i32 128)
  %24 = call i32 @llvm.smax.i32(i32 %23, i32 1)
  call void @glMateriali(i32 noundef 1032, i32 noundef 5633, i32 noundef %24) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9
  ret void
}

declare void @glMaterialfv(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @glMateriali(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @GPU_simple_shader_need_normals() local_unnamed_addr #5 {
  %1 = load i8, ptr getelementptr inbounds (%struct.anon, ptr @GPU_MATERIAL_STATE, i64 0, i32 2), align 8, !tbaa !45
  ret i8 %1
}

; Function Attrs: nounwind uwtable
define dso_local void @GPU_simple_shader_light_set(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = alloca [4 x float], align 16
  %4 = shl nuw i32 1, %0
  %5 = xor i32 %4, -1
  %6 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @GPU_MATERIAL_STATE, i64 0, i32 3), align 4, !tbaa !41
  %7 = and i32 %6, %5
  store i32 %7, ptr getelementptr inbounds (%struct.anon, ptr @GPU_MATERIAL_STATE, i64 0, i32 3), align 4, !tbaa !41
  %8 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @GPU_MATERIAL_STATE, i64 0, i32 4), align 8, !tbaa !48
  %9 = and i32 %8, %5
  store i32 %9, ptr getelementptr inbounds (%struct.anon, ptr @GPU_MATERIAL_STATE, i64 0, i32 4), align 8, !tbaa !48
  %10 = icmp eq ptr %1, null
  br i1 %10, label %34, label %11

11:                                               ; preds = %2
  %12 = add nsw i32 %0, 16384
  tail call void @glEnable(i32 noundef %12) #9
  tail call void @glLightfv(i32 noundef %12, i32 noundef 4611, ptr noundef nonnull %1) #9
  %13 = getelementptr inbounds %struct.GPULightData, ptr %1, i64 0, i32 1
  tail call void @glLightfv(i32 noundef %12, i32 noundef 4609, ptr noundef nonnull %13) #9
  %14 = getelementptr inbounds %struct.GPULightData, ptr %1, i64 0, i32 2
  tail call void @glLightfv(i32 noundef %12, i32 noundef 4610, ptr noundef nonnull %14) #9
  %15 = getelementptr inbounds %struct.GPULightData, ptr %1, i64 0, i32 3
  %16 = load float, ptr %15, align 4, !tbaa !49
  tail call void @glLightf(i32 noundef %12, i32 noundef 4615, float noundef %16) #9
  %17 = getelementptr inbounds %struct.GPULightData, ptr %1, i64 0, i32 4
  %18 = load float, ptr %17, align 4, !tbaa !51
  tail call void @glLightf(i32 noundef %12, i32 noundef 4616, float noundef %18) #9
  %19 = getelementptr inbounds %struct.GPULightData, ptr %1, i64 0, i32 5
  %20 = load float, ptr %19, align 4, !tbaa !52
  tail call void @glLightf(i32 noundef %12, i32 noundef 4617, float noundef %20) #9
  %21 = getelementptr inbounds %struct.GPULightData, ptr %1, i64 0, i32 6
  tail call void @glLightfv(i32 noundef %12, i32 noundef 4612, ptr noundef nonnull %21) #9
  %22 = getelementptr inbounds %struct.GPULightData, ptr %1, i64 0, i32 7
  %23 = load float, ptr %22, align 4, !tbaa !53
  tail call void @glLightf(i32 noundef %12, i32 noundef 4614, float noundef %23) #9
  %24 = getelementptr inbounds %struct.GPULightData, ptr %1, i64 0, i32 8
  %25 = load float, ptr %24, align 4, !tbaa !54
  tail call void @glLightf(i32 noundef %12, i32 noundef 4613, float noundef %25) #9
  %26 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @GPU_MATERIAL_STATE, i64 0, i32 3), align 4, !tbaa !41
  %27 = or i32 %26, %4
  store i32 %27, ptr getelementptr inbounds (%struct.anon, ptr @GPU_MATERIAL_STATE, i64 0, i32 3), align 4, !tbaa !41
  %28 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 3
  %29 = load float, ptr %28, align 4, !tbaa !46
  %30 = fcmp oeq float %29, 0.000000e+00
  br i1 %30, label %31, label %36

31:                                               ; preds = %11
  %32 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @GPU_MATERIAL_STATE, i64 0, i32 4), align 8, !tbaa !48
  %33 = or i32 %32, %4
  store i32 %33, ptr getelementptr inbounds (%struct.anon, ptr @GPU_MATERIAL_STATE, i64 0, i32 4), align 8, !tbaa !48
  br label %36

34:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %35 = add nsw i32 %0, 16384
  call void @glLightfv(i32 noundef %35, i32 noundef 4611, ptr noundef nonnull %3) #9
  call void @glLightfv(i32 noundef %35, i32 noundef 4609, ptr noundef nonnull %3) #9
  call void @glLightfv(i32 noundef %35, i32 noundef 4610, ptr noundef nonnull %3) #9
  call void @glDisable(i32 noundef %35) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  br label %36

36:                                               ; preds = %11, %31, %34
  ret void
}

declare void @glLightfv(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @glLightf(i32 noundef, i32 noundef, float noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @GPU_simple_shader_light_set_viewer(i8 noundef zeroext %0) local_unnamed_addr #2 {
  %2 = icmp ne i8 %0, 0
  %3 = zext i1 %2 to i32
  tail call void @glLightModeli(i32 noundef 2897, i32 noundef %3) #9
  ret void
}

declare ptr @GPU_shader_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @GPU_shader_get_uniform(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture) local_unnamed_addr #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind willreturn memory(argmem: read) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }

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
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = distinct !{!38, !39, !40}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = !{!42, !43, i64 292}
!42 = !{!"", !36, i64 0, !36, i64 256, !36, i64 288, !43, i64 292, !43, i64 296}
!43 = !{!"int", !36, i64 0}
!44 = !{!36, !36, i64 0}
!45 = !{!42, !36, i64 288}
!46 = !{!47, !47, i64 0}
!47 = !{!"float", !36, i64 0}
!48 = !{!42, !43, i64 296}
!49 = !{!50, !47, i64 48}
!50 = !{!"GPULightData", !36, i64 0, !36, i64 16, !36, i64 32, !47, i64 48, !47, i64 52, !47, i64 56, !36, i64 60, !47, i64 72, !47, i64 76}
!51 = !{!50, !47, i64 52}
!52 = !{!50, !47, i64 56}
!53 = !{!50, !47, i64 72}
!54 = !{!50, !47, i64 76}
