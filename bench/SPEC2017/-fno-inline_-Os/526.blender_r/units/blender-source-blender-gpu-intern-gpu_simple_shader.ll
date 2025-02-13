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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @GPU_simple_shaders_init() local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) @GPU_MATERIAL_STATE, i8 0, i64 304, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_simple_shaders_exit() local_unnamed_addr #2 {
  br label %1

1:                                                ; preds = %0, %7
  %2 = phi i64 [ 0, %0 ], [ %8, %7 ]
  %3 = getelementptr inbounds [32 x ptr], ptr @GPU_MATERIAL_STATE, i64 0, i64 %2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @GPU_shader_free(ptr noundef nonnull %4) #10
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

; Function Attrs: optsize
declare void @GPU_shader_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_simple_shader_bind(i32 noundef %0) local_unnamed_addr #2 {
  %2 = tail call i32 @GPU_glsl_support() #10
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gpu_simple_shader(i32 noundef %0) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %24, label %7

7:                                                ; preds = %4
  tail call void @GPU_shader_bind(ptr noundef nonnull %5) #10
  br label %24

8:                                                ; preds = %1
  %9 = and i32 %0, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @glEnable(i32 noundef 2896) #10
  br label %12

12:                                               ; preds = %11, %8
  %13 = and i32 %0, 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void @glLightModeli(i32 noundef 2898, i32 noundef 1) #10
  br label %16

16:                                               ; preds = %15, %12
  %17 = and i32 %0, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void @glEnable(i32 noundef 2903) #10
  tail call void @glColorMaterial(i32 noundef 1032, i32 noundef 4609) #10
  br label %20

20:                                               ; preds = %19, %16
  %21 = and i32 %0, 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  tail call void @glEnable(i32 noundef 3553) #10
  br label %24

24:                                               ; preds = %4, %7, %20, %23
  %25 = trunc i32 %0 to i8
  %26 = and i8 %25, 2
  store i8 %26, ptr getelementptr inbounds (%struct.anon, ptr @GPU_MATERIAL_STATE, i64 0, i32 2), align 8, !tbaa !40
  ret void
}

; Function Attrs: optsize
declare i32 @GPU_glsl_support() local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gpu_simple_shader(i32 noundef %0) unnamed_addr #2 !PGOFuncName !43 {
  %2 = alloca [320 x i8], align 16
  %3 = and i32 %0, 2
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = tail call fastcc zeroext i8 @solid_compatible_lighting() #11, !range !44
  %7 = icmp eq i8 %6, 0
  %8 = or i32 %0, 16
  %9 = select i1 %7, i32 %0, i32 %8
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ %0, %1 ], [ %9, %5 ]
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [32 x ptr], ptr @GPU_MATERIAL_STATE, i64 0, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %60

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.anon, ptr @GPU_MATERIAL_STATE, i64 0, i32 1, i64 %12
  %18 = load i8, ptr %17, align 1, !tbaa !45
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %60

20:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 320, ptr nonnull %2) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(320) %2, i8 0, i64 320, i1 false)
  %21 = and i32 %11, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2)
  %25 = getelementptr inbounds i8, ptr %2, i64 %24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %25, ptr noundef nonnull align 1 dereferenceable(19) @.str, i64 19, i1 false)
  br label %26

26:                                               ; preds = %23, %20
  %27 = and i32 %11, 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2)
  %31 = getelementptr inbounds i8, ptr %2, i64 %30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %31, ptr noundef nonnull align 1 dereferenceable(23) @.str.1, i64 23, i1 false)
  br label %32

32:                                               ; preds = %29, %26
  %33 = and i32 %11, 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2)
  %37 = getelementptr inbounds i8, ptr %2, i64 %36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %37, ptr noundef nonnull align 1 dereferenceable(21) @.str.2, i64 21, i1 false)
  br label %38

38:                                               ; preds = %35, %32
  %39 = and i32 %11, 16
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2)
  %43 = getelementptr inbounds i8, ptr %2, i64 %42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %43, ptr noundef nonnull align 1 dereferenceable(28) @.str.3, i64 28, i1 false)
  br label %50

44:                                               ; preds = %38
  %45 = and i32 %11, 2
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2)
  %49 = getelementptr inbounds i8, ptr %2, i64 %48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %49, ptr noundef nonnull align 1 dereferenceable(28) @.str.4, i64 28, i1 false)
  br label %50

50:                                               ; preds = %44, %47, %41
  %51 = call ptr @GPU_shader_create(ptr noundef nonnull @datatoc_gpu_shader_simple_vert_glsl, ptr noundef nonnull @datatoc_gpu_shader_simple_frag_glsl, ptr noundef null, ptr noundef nonnull %2) #10
  %52 = icmp eq ptr %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %50
  br i1 %34, label %57, label %54

54:                                               ; preds = %53
  %55 = load ptr, ptr @__glewUniform1i, align 8, !tbaa !34
  %56 = call i32 @GPU_shader_get_uniform(ptr noundef nonnull %51, ptr noundef nonnull @.str.5) #10
  call void %55(i32 noundef %56, i32 noundef 0) #10
  br label %57

57:                                               ; preds = %54, %53
  store ptr %51, ptr %13, align 8, !tbaa !34
  br label %59

58:                                               ; preds = %50
  store i8 1, ptr %17, align 1, !tbaa !45
  br label %59

59:                                               ; preds = %58, %57
  call void @llvm.lifetime.end.p0(i64 320, ptr nonnull %2) #12
  br label %60

60:                                               ; preds = %59, %16, %10
  %61 = phi ptr [ %14, %10 ], [ null, %16 ], [ %51, %59 ]
  ret ptr %61
}

; Function Attrs: optsize
declare void @GPU_shader_bind(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glLightModeli(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glColorMaterial(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_simple_shader_unbind() local_unnamed_addr #2 {
  %1 = tail call i32 @GPU_glsl_support() #10
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @GPU_shader_unbind() #10
  br label %5

4:                                                ; preds = %0
  tail call void @glDisable(i32 noundef 2896) #10
  tail call void @glDisable(i32 noundef 2903) #10
  tail call void @glDisable(i32 noundef 3553) #10
  tail call void @glLightModeli(i32 noundef 2898, i32 noundef 0) #10
  br label %5

5:                                                ; preds = %4, %3
  ret void
}

; Function Attrs: optsize
declare void @GPU_shader_unbind() local_unnamed_addr #4

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_simple_shader_colors(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, float noundef %3) local_unnamed_addr #2 {
  %5 = alloca [4 x float], align 16
  %6 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #12
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef %0) #11
  %7 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 3
  store float %3, ptr %7, align 4, !tbaa !46
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef %1) #11
  %8 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 3
  store float 1.000000e+00, ptr %8, align 4, !tbaa !46
  call void @glMaterialfv(i32 noundef 1032, i32 noundef 4609, ptr noundef nonnull %5) #10
  call void @glMaterialfv(i32 noundef 1032, i32 noundef 4610, ptr noundef nonnull %6) #10
  %9 = call i32 @llvm.smin.i32(i32 %2, i32 128)
  %10 = call i32 @llvm.smax.i32(i32 %9, i32 1)
  call void @glMateriali(i32 noundef 1032, i32 noundef 5633, i32 noundef %10) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !48 {
  %3 = load float, ptr %1, align 4, !tbaa !46
  store float %3, ptr %0, align 4, !tbaa !46
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !46
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !46
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !46
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !46
  ret void
}

; Function Attrs: optsize
declare void @glMaterialfv(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glMateriali(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @GPU_simple_shader_need_normals() local_unnamed_addr #6 {
  %1 = load i8, ptr getelementptr inbounds (%struct.anon, ptr @GPU_MATERIAL_STATE, i64 0, i32 2), align 8, !tbaa !40
  ret i8 %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_simple_shader_light_set(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = alloca [4 x float], align 16
  %4 = shl nuw i32 1, %0
  %5 = xor i32 %4, -1
  %6 = load <2 x i32>, ptr getelementptr inbounds (%struct.anon, ptr @GPU_MATERIAL_STATE, i64 0, i32 3), align 4, !tbaa !49
  %7 = insertelement <2 x i32> poison, i32 %5, i64 0
  %8 = shufflevector <2 x i32> %7, <2 x i32> poison, <2 x i32> zeroinitializer
  %9 = and <2 x i32> %6, %8
  store <2 x i32> %9, ptr getelementptr inbounds (%struct.anon, ptr @GPU_MATERIAL_STATE, i64 0, i32 3), align 4, !tbaa !49
  %10 = icmp eq ptr %1, null
  br i1 %10, label %34, label %11

11:                                               ; preds = %2
  %12 = add nsw i32 %0, 16384
  tail call void @glEnable(i32 noundef %12) #10
  tail call void @glLightfv(i32 noundef %12, i32 noundef 4611, ptr noundef nonnull %1) #10
  %13 = getelementptr inbounds %struct.GPULightData, ptr %1, i64 0, i32 1
  tail call void @glLightfv(i32 noundef %12, i32 noundef 4609, ptr noundef nonnull %13) #10
  %14 = getelementptr inbounds %struct.GPULightData, ptr %1, i64 0, i32 2
  tail call void @glLightfv(i32 noundef %12, i32 noundef 4610, ptr noundef nonnull %14) #10
  %15 = getelementptr inbounds %struct.GPULightData, ptr %1, i64 0, i32 3
  %16 = load float, ptr %15, align 4, !tbaa !50
  tail call void @glLightf(i32 noundef %12, i32 noundef 4615, float noundef %16) #10
  %17 = getelementptr inbounds %struct.GPULightData, ptr %1, i64 0, i32 4
  %18 = load float, ptr %17, align 4, !tbaa !52
  tail call void @glLightf(i32 noundef %12, i32 noundef 4616, float noundef %18) #10
  %19 = getelementptr inbounds %struct.GPULightData, ptr %1, i64 0, i32 5
  %20 = load float, ptr %19, align 4, !tbaa !53
  tail call void @glLightf(i32 noundef %12, i32 noundef 4617, float noundef %20) #10
  %21 = getelementptr inbounds %struct.GPULightData, ptr %1, i64 0, i32 6
  tail call void @glLightfv(i32 noundef %12, i32 noundef 4612, ptr noundef nonnull %21) #10
  %22 = getelementptr inbounds %struct.GPULightData, ptr %1, i64 0, i32 7
  %23 = load float, ptr %22, align 4, !tbaa !54
  tail call void @glLightf(i32 noundef %12, i32 noundef 4614, float noundef %23) #10
  %24 = getelementptr inbounds %struct.GPULightData, ptr %1, i64 0, i32 8
  %25 = load float, ptr %24, align 4, !tbaa !55
  tail call void @glLightf(i32 noundef %12, i32 noundef 4613, float noundef %25) #10
  %26 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @GPU_MATERIAL_STATE, i64 0, i32 3), align 4, !tbaa !56
  %27 = or i32 %26, %4
  store i32 %27, ptr getelementptr inbounds (%struct.anon, ptr @GPU_MATERIAL_STATE, i64 0, i32 3), align 4, !tbaa !56
  %28 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 3
  %29 = load float, ptr %28, align 4, !tbaa !46
  %30 = fcmp oeq float %29, 0.000000e+00
  br i1 %30, label %31, label %36

31:                                               ; preds = %11
  %32 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @GPU_MATERIAL_STATE, i64 0, i32 4), align 8, !tbaa !57
  %33 = or i32 %32, %4
  store i32 %33, ptr getelementptr inbounds (%struct.anon, ptr @GPU_MATERIAL_STATE, i64 0, i32 4), align 8, !tbaa !57
  br label %36

34:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %35 = add nsw i32 %0, 16384
  call void @glLightfv(i32 noundef %35, i32 noundef 4611, ptr noundef nonnull %3) #10
  call void @glLightfv(i32 noundef %35, i32 noundef 4609, ptr noundef nonnull %3) #10
  call void @glLightfv(i32 noundef %35, i32 noundef 4610, ptr noundef nonnull %3) #10
  call void @glDisable(i32 noundef %35) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  br label %36

36:                                               ; preds = %11, %31, %34
  ret void
}

; Function Attrs: optsize
declare void @glLightfv(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glLightf(i32 noundef, i32 noundef, float noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_simple_shader_light_set_viewer(i8 noundef zeroext %0) local_unnamed_addr #2 {
  %2 = icmp ne i8 %0, 0
  %3 = zext i1 %2 to i32
  tail call void @glLightModeli(i32 noundef 2897, i32 noundef %3) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @solid_compatible_lighting() unnamed_addr #6 !PGOFuncName !58 {
  %1 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @GPU_MATERIAL_STATE, i64 0, i32 3), align 4, !tbaa !56
  %2 = icmp slt i32 %1, 8
  %3 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @GPU_MATERIAL_STATE, i64 0, i32 4), align 8
  %4 = and i32 %3, %1
  %5 = icmp eq i32 %4, %1
  %6 = select i1 %2, i1 %5, i1 false
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: optsize
declare ptr @GPU_shader_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @GPU_shader_get_uniform(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture) local_unnamed_addr #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind willreturn memory(argmem: read) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind optsize }
attributes #11 = { optsize }
attributes #12 = { nounwind }

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
!37 = !{!"Simple C/C++ TBAA"}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!41, !36, i64 288}
!41 = !{!"", !36, i64 0, !36, i64 256, !36, i64 288, !42, i64 292, !42, i64 296}
!42 = !{!"int", !36, i64 0}
!43 = !{!"gpu_simple_shader.c:gpu_simple_shader"}
!44 = !{i8 0, i8 2}
!45 = !{!36, !36, i64 0}
!46 = !{!47, !47, i64 0}
!47 = !{!"float", !36, i64 0}
!48 = !{!"gpu_simple_shader.c:copy_v3_v3"}
!49 = !{!42, !42, i64 0}
!50 = !{!51, !47, i64 48}
!51 = !{!"GPULightData", !36, i64 0, !36, i64 16, !36, i64 32, !47, i64 48, !47, i64 52, !47, i64 56, !36, i64 60, !47, i64 72, !47, i64 76}
!52 = !{!51, !47, i64 52}
!53 = !{!51, !47, i64 56}
!54 = !{!51, !47, i64 72}
!55 = !{!51, !47, i64 76}
!56 = !{!41, !42, i64 292}
!57 = !{!41, !42, i64 296}
!58 = !{!"gpu_simple_shader.c:solid_compatible_lighting"}
