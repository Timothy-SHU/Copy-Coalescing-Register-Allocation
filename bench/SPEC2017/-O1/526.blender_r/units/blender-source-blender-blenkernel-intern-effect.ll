; ModuleID = 'blender/source/blender/blenkernel/intern/effect.c'
source_filename = "blender/source/blender/blenkernel/intern/effect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EffectorWeights = type { ptr, [14 x float], float, i16, [3 x i16], i32 }
%struct.PartDeflect = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, ptr, float, i32, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.Group = type { %struct.ID, %struct.ListBase, i32, [3 x float] }
%struct.GroupObject = type { ptr, ptr, ptr, ptr, i16, [6 x i8] }
%struct.EffectorCache = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x float], [3 x float], float, [3 x float], float, i32 }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.BakeData = type { %struct.ImageFormatData, [1024 x i8], i16, i16, i16, i16, float, float, [3 x i8], i8, i8, [3 x i8], [64 x i8] }
%struct.AudioData = type { i32, float, float, float, i32, i16, i16, float, float }
%struct.GameFraming = type { [3 x float], i8, i8, i8, i8 }
%struct.GameData = type { %struct.GameFraming, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i16], %struct.GameDome, i16, i16, float, %struct.RecastData, float, float, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float }
%struct.GameDome = type { i16, i16, i16, i16, float, float, ptr }
%struct.RecastData = type { float, float, float, float, float, float, float, float, float, float, i32, float, float, i16, i16 }
%struct.UnitSettings = type { float, i8, i8, i16 }
%struct.PhysicsSettings = type { [3 x float], i32, i32, i32 }
%struct.ColorManagedViewSettings = type { i32, i32, [64 x i8], [64 x i8], float, float, ptr, ptr }
%struct.ColorManagedDisplaySettings = type { [64 x i8] }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.ParticleSystem = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], [4 x [4 x float]], float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [3 x [64 x i8]], [12 x i16], i16, i16, ptr, ptr, %struct.ListBase, ptr, ptr, i32, i32, ptr, ptr, ptr, float, float }
%struct.ParticleSettings = type { %struct.ID, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, [2 x float], [2 x float], float, float, float, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, [1 x float], i32, i32, i32, i32, i16, [3 x i16], float, float, float, float, float, float, float, [3 x float], float, float, float, float, float, float, float, [3 x float], float, float, float, float, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, [2 x float], float, float, i32, i32, [18 x ptr], ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, [3 x i16] }
%struct.Curve = type { %struct.ID, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], i16, i16, i16, i16, float, float, i32, i16, i16, i32, float, float, float, i16, i16, i16, i16, i32, i32, [4 x i8], i16, i8, i8, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.CharInfo, float, float, float, i8, i8, [2 x i8] }
%struct.CharInfo = type { i16, i16, i8, i8, i16 }
%struct.CurveCache = type { %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr }
%struct.ParticleSimulationData = type { ptr, ptr, ptr, ptr, ptr, float }
%struct.ParticleKey = type { [3 x float], [3 x float], [4 x float], [3 x float], float }
%struct.EffectedPoint = type { ptr, ptr, ptr, ptr, float, float, float, float, i32, i32, ptr }
%struct.ParticleData = type { %struct.ParticleKey, %struct.ParticleKey, ptr, ptr, ptr, i32, float, float, float, i32, i32, [4 x float], float, float, float, i32, i32, i16, i16 }
%struct.EffectorData = type { [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, float, [3 x float], [3 x float], ptr }
%struct.BVHTreeNearest = type { i32, [3 x float], [3 x float], float, i32 }
%struct.SurfaceModifierData = type { %struct.ModifierData, ptr, ptr, ptr, ptr, i32, i32 }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.BVHTreeFromMesh = type { ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, float, ptr, i8 }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.MFace = type { i32, i32, i32, i32, i16, i8, i8 }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.TexResult = type { float, float, float, float, float, i32, ptr }
%struct.BVHTreeRayHit = type { i32, [3 x float], [3 x float], float, i32 }
%struct.ColliderCache = type { ptr, ptr, ptr, ptr }
%struct.CollisionModifierData = type { %struct.ModifierData, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, float, float, ptr }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [16 x i8] c"EffectorWeights\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"PartDeflect\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"effectors list\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"EffectorCache\00", align 1
@__const.do_physical_effector.xvec = private unnamed_addr constant [3 x float] [float 1.000000e+00, float 0.000000e+00, float 0.000000e+00], align 4

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_add_effector_weights(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 80, ptr noundef nonnull @.str) #11
  br label %4

4:                                                ; preds = %1, %4
  %5 = phi i64 [ 0, %1 ], [ %7, %4 ]
  %6 = getelementptr inbounds %struct.EffectorWeights, ptr %3, i64 0, i32 1, i64 %5
  store float 1.000000e+00, ptr %6, align 4, !tbaa !38
  %7 = add nuw nsw i64 %5, 1
  %8 = icmp eq i64 %7, 14
  br i1 %8, label %9, label %4, !llvm.loop !40

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.EffectorWeights, ptr %3, i64 0, i32 2
  store float 1.000000e+00, ptr %10, align 8, !tbaa !43
  store ptr %0, ptr %3, align 8, !tbaa !47
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @object_add_collision_fields(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 160, ptr noundef nonnull @.str.1) #11
  %4 = trunc i32 %0 to i16
  %5 = getelementptr inbounds %struct.PartDeflect, ptr %3, i64 0, i32 2
  store i16 %4, ptr %5, align 2, !tbaa !48
  %6 = getelementptr inbounds %struct.PartDeflect, ptr %3, i64 0, i32 26
  store float 0x3FB99999A0000000, ptr %6, align 8, !tbaa !50
  %7 = getelementptr inbounds %struct.PartDeflect, ptr %3, i64 0, i32 27
  store float 0x3FC99999A0000000, ptr %7, align 4, !tbaa !51
  %8 = getelementptr inbounds %struct.PartDeflect, ptr %3, i64 0, i32 28
  store float 0x3F947AE140000000, ptr %8, align 8, !tbaa !52
  %9 = tail call double @PIL_check_seconds_timer() #11
  %10 = tail call double @llvm.ceil.f64(double %9)
  %11 = fptoui double %10 to i32
  %12 = add i32 %11, 1
  %13 = and i32 %12, 127
  %14 = getelementptr inbounds %struct.PartDeflect, ptr %3, i64 0, i32 39
  store i32 %13, ptr %14, align 4, !tbaa !53
  %15 = getelementptr inbounds %struct.PartDeflect, ptr %3, i64 0, i32 9
  store float 1.000000e+00, ptr %15, align 4, !tbaa !54
  %16 = getelementptr inbounds %struct.PartDeflect, ptr %3, i64 0, i32 10
  store float 1.000000e+00, ptr %16, align 8, !tbaa !55
  switch i32 %0, label %26 [
    i32 2, label %17
    i32 4, label %19
    i32 6, label %22
    i32 13, label %24
  ]

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.PartDeflect, ptr %3, i64 0, i32 4
  store i16 1, ptr %18, align 2, !tbaa !56
  br label %26

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.PartDeflect, ptr %3, i64 0, i32 4
  store i16 1, ptr %20, align 2, !tbaa !56
  %21 = getelementptr inbounds %struct.PartDeflect, ptr %3, i64 0, i32 11
  store float 1.000000e+00, ptr %21, align 4, !tbaa !57
  br label %26

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.PartDeflect, ptr %3, i64 0, i32 12
  store float 1.000000e+00, ptr %23, align 8, !tbaa !58
  br label %26

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.PartDeflect, ptr %3, i64 0, i32 11
  store float 1.000000e+00, ptr %25, align 4, !tbaa !57
  br label %26

26:                                               ; preds = %1, %24, %22, %19, %17
  store i32 49152, ptr %3, align 8, !tbaa !59
  ret ptr %3
}

declare double @PIL_check_seconds_timer() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #3

; Function Attrs: nounwind uwtable
define dso_local void @free_partdeflect(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.PartDeflect, ptr %0, i64 0, i32 36
  %5 = load ptr, ptr %4, align 8, !tbaa !60
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 6
  %9 = load i32, ptr %8, align 4, !tbaa !61
  %10 = add nsw i32 %9, -1
  store i32 %10, ptr %8, align 4, !tbaa !61
  br label %11

11:                                               ; preds = %7, %3
  %12 = getelementptr inbounds %struct.PartDeflect, ptr %0, i64 0, i32 37
  %13 = load ptr, ptr %12, align 8, !tbaa !65
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @BLI_rng_free(ptr noundef nonnull %13) #11
  br label %16

16:                                               ; preds = %15, %11
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %17(ptr noundef nonnull %0) #11
  br label %18

18:                                               ; preds = %1, %16
  ret void
}

declare void @BLI_rng_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @pdInitEffectors(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 52
  %8 = load i32, ptr %7, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  store ptr null, ptr %6, align 8, !tbaa !34
  %9 = load ptr, ptr %3, align 8, !tbaa !47
  %10 = icmp eq ptr %9, null
  br i1 %10, label %78, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.Group, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %145, label %15

15:                                               ; preds = %11, %75
  %16 = phi ptr [ %76, %75 ], [ %13, %11 ]
  %17 = getelementptr inbounds %struct.GroupObject, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !71
  %19 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 52
  %20 = load i32, ptr %19, align 8, !tbaa !66
  %21 = and i32 %20, %8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %75, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 110
  %25 = load ptr, ptr %24, align 8, !tbaa !73
  %26 = icmp eq ptr %25, null
  br i1 %26, label %65, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.PartDeflect, ptr %25, i64 0, i32 2
  %29 = load i16, ptr %28, align 2, !tbaa !48
  %30 = icmp eq i16 %29, 0
  %31 = icmp eq ptr %18, %1
  %32 = or i1 %31, %30
  br i1 %32, label %65, label %33

33:                                               ; preds = %27
  %34 = sext i16 %29 to i64
  %35 = getelementptr inbounds %struct.EffectorWeights, ptr %3, i64 0, i32 1, i64 %34
  %36 = load float, ptr %35, align 4, !tbaa !38
  %37 = fcmp oeq float %36, 0.000000e+00
  br i1 %37, label %65, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.PartDeflect, ptr %25, i64 0, i32 4
  %40 = load i16, ptr %39, align 2, !tbaa !56
  %41 = icmp eq i16 %40, 3
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 120
  %44 = load ptr, ptr %43, align 8, !tbaa !74
  %45 = icmp eq ptr %44, null
  br i1 %45, label %65, label %46

46:                                               ; preds = %42, %38
  %47 = load ptr, ptr %6, align 8, !tbaa !34
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %51 = tail call ptr %50(i64 noundef 16, ptr noundef nonnull @.str.2) #11
  store ptr %51, ptr %6, align 8, !tbaa !34
  br label %52

52:                                               ; preds = %49, %46
  %53 = load ptr, ptr %24, align 8, !tbaa !73
  %54 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %55 = tail call ptr %54(i64 noundef 120, ptr noundef nonnull @.str.3) #11
  %56 = getelementptr inbounds %struct.EffectorCache, ptr %55, i64 0, i32 2
  store ptr %0, ptr %56, align 8, !tbaa !75
  %57 = getelementptr inbounds %struct.EffectorCache, ptr %55, i64 0, i32 3
  store ptr %18, ptr %57, align 8, !tbaa !77
  %58 = getelementptr inbounds %struct.EffectorCache, ptr %55, i64 0, i32 4
  store ptr null, ptr %58, align 8, !tbaa !78
  %59 = getelementptr inbounds %struct.EffectorCache, ptr %55, i64 0, i32 6
  store ptr %53, ptr %59, align 8, !tbaa !79
  %60 = getelementptr inbounds %struct.EffectorCache, ptr %55, i64 0, i32 12
  store float -1.000000e+00, ptr %60, align 4, !tbaa !80
  %61 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 50
  %62 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 47
  %63 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %61, ptr noundef nonnull %62) #11
  %64 = load ptr, ptr %6, align 8, !tbaa !34
  tail call void @BLI_addtail(ptr noundef %64, ptr noundef %55) #11
  br label %65

65:                                               ; preds = %52, %42, %33, %27, %23
  %66 = load ptr, ptr %17, align 8, !tbaa !71
  %67 = getelementptr inbounds %struct.Object, ptr %66, i64 0, i32 109
  %68 = load ptr, ptr %67, align 8, !tbaa !81
  %69 = icmp eq ptr %68, null
  br i1 %69, label %75, label %70

70:                                               ; preds = %65, %70
  %71 = phi ptr [ %73, %70 ], [ %68, %65 ]
  %72 = load ptr, ptr %17, align 8, !tbaa !71
  call fastcc void @add_particles_to_effectors(ptr noundef nonnull %6, ptr noundef %0, ptr noundef nonnull %3, ptr noundef %72, ptr noundef nonnull %71, ptr noundef %2)
  %73 = load ptr, ptr %71, align 8, !tbaa !82
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %70, !llvm.loop !84

75:                                               ; preds = %70, %15, %65
  %76 = load ptr, ptr %16, align 8, !tbaa !34
  %77 = icmp eq ptr %76, null
  br i1 %77, label %145, label %15, !llvm.loop !85

78:                                               ; preds = %5
  %79 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 5
  %80 = load ptr, ptr %79, align 8, !tbaa !34
  %81 = icmp eq ptr %80, null
  br i1 %81, label %145, label %82

82:                                               ; preds = %78, %142
  %83 = phi ptr [ %143, %142 ], [ %80, %78 ]
  %84 = getelementptr inbounds %struct.Base, ptr %83, i64 0, i32 2
  %85 = load i32, ptr %84, align 8, !tbaa !86
  %86 = and i32 %85, %8
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %142, label %88

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.Base, ptr %83, i64 0, i32 7
  %90 = load ptr, ptr %89, align 8, !tbaa !88
  %91 = getelementptr inbounds %struct.Object, ptr %90, i64 0, i32 110
  %92 = load ptr, ptr %91, align 8, !tbaa !73
  %93 = icmp eq ptr %92, null
  br i1 %93, label %132, label %94

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.PartDeflect, ptr %92, i64 0, i32 2
  %96 = load i16, ptr %95, align 2, !tbaa !48
  %97 = icmp eq i16 %96, 0
  %98 = icmp eq ptr %90, %1
  %99 = or i1 %98, %97
  br i1 %99, label %132, label %100

100:                                              ; preds = %94
  %101 = sext i16 %96 to i64
  %102 = getelementptr inbounds %struct.EffectorWeights, ptr %3, i64 0, i32 1, i64 %101
  %103 = load float, ptr %102, align 4, !tbaa !38
  %104 = fcmp oeq float %103, 0.000000e+00
  br i1 %104, label %132, label %105

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct.PartDeflect, ptr %92, i64 0, i32 4
  %107 = load i16, ptr %106, align 2, !tbaa !56
  %108 = icmp eq i16 %107, 3
  br i1 %108, label %109, label %113

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.Object, ptr %90, i64 0, i32 120
  %111 = load ptr, ptr %110, align 8, !tbaa !74
  %112 = icmp eq ptr %111, null
  br i1 %112, label %132, label %113

113:                                              ; preds = %109, %105
  %114 = load ptr, ptr %6, align 8, !tbaa !34
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %118 = tail call ptr %117(i64 noundef 16, ptr noundef nonnull @.str.2) #11
  store ptr %118, ptr %6, align 8, !tbaa !34
  br label %119

119:                                              ; preds = %116, %113
  %120 = load ptr, ptr %91, align 8, !tbaa !73
  %121 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %122 = tail call ptr %121(i64 noundef 120, ptr noundef nonnull @.str.3) #11
  %123 = getelementptr inbounds %struct.EffectorCache, ptr %122, i64 0, i32 2
  store ptr %0, ptr %123, align 8, !tbaa !75
  %124 = getelementptr inbounds %struct.EffectorCache, ptr %122, i64 0, i32 3
  store ptr %90, ptr %124, align 8, !tbaa !77
  %125 = getelementptr inbounds %struct.EffectorCache, ptr %122, i64 0, i32 4
  store ptr null, ptr %125, align 8, !tbaa !78
  %126 = getelementptr inbounds %struct.EffectorCache, ptr %122, i64 0, i32 6
  store ptr %120, ptr %126, align 8, !tbaa !79
  %127 = getelementptr inbounds %struct.EffectorCache, ptr %122, i64 0, i32 12
  store float -1.000000e+00, ptr %127, align 4, !tbaa !80
  %128 = getelementptr inbounds %struct.Object, ptr %90, i64 0, i32 50
  %129 = getelementptr inbounds %struct.Object, ptr %90, i64 0, i32 47
  %130 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %128, ptr noundef nonnull %129) #11
  %131 = load ptr, ptr %6, align 8, !tbaa !34
  tail call void @BLI_addtail(ptr noundef %131, ptr noundef %122) #11
  br label %132

132:                                              ; preds = %119, %109, %100, %94, %88
  %133 = load ptr, ptr %89, align 8, !tbaa !88
  %134 = getelementptr inbounds %struct.Object, ptr %133, i64 0, i32 109
  %135 = load ptr, ptr %134, align 8, !tbaa !81
  %136 = icmp eq ptr %135, null
  br i1 %136, label %142, label %137

137:                                              ; preds = %132, %137
  %138 = phi ptr [ %140, %137 ], [ %135, %132 ]
  %139 = load ptr, ptr %89, align 8, !tbaa !88
  call fastcc void @add_particles_to_effectors(ptr noundef nonnull %6, ptr noundef %0, ptr noundef nonnull %3, ptr noundef %139, ptr noundef nonnull %138, ptr noundef %2)
  %140 = load ptr, ptr %138, align 8, !tbaa !82
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %137, !llvm.loop !89

142:                                              ; preds = %137, %82, %132
  %143 = load ptr, ptr %83, align 8, !tbaa !34
  %144 = icmp eq ptr %143, null
  br i1 %144, label %145, label %82, !llvm.loop !90

145:                                              ; preds = %75, %142, %11, %78
  %146 = icmp eq i8 %4, 0
  br i1 %146, label %149, label %147

147:                                              ; preds = %145
  %148 = load ptr, ptr %6, align 8, !tbaa !34
  tail call void @pdPrecalculateEffectors(ptr noundef %148)
  br label %149

149:                                              ; preds = %147, %145
  %150 = load ptr, ptr %6, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  ret ptr %150
}

; Function Attrs: nounwind uwtable
define internal fastcc void @add_particles_to_effectors(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4, ptr noundef readnone %5) unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !91
  %9 = tail call i32 @psys_check_enabled(ptr noundef %3, ptr noundef %4) #11
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %76, label %11

11:                                               ; preds = %6
  %12 = icmp eq ptr %4, %5
  br i1 %12, label %13, label %18

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.ParticleSettings, ptr %8, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !92
  %16 = and i32 %15, 4194304
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %76, label %18

18:                                               ; preds = %13, %11
  %19 = getelementptr inbounds %struct.ParticleSettings, ptr %8, i64 0, i32 128
  %20 = load ptr, ptr %19, align 8, !tbaa !94
  %21 = icmp eq ptr %20, null
  br i1 %21, label %47, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.PartDeflect, ptr %20, i64 0, i32 2
  %24 = load i16, ptr %23, align 2, !tbaa !48
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %47, label %26

26:                                               ; preds = %22
  %27 = sext i16 %24 to i64
  %28 = getelementptr inbounds %struct.EffectorWeights, ptr %2, i64 0, i32 1, i64 %27
  %29 = load float, ptr %28, align 4, !tbaa !38
  %30 = fcmp une float %29, 0.000000e+00
  br i1 %30, label %31, label %47

31:                                               ; preds = %26
  %32 = load ptr, ptr %0, align 8, !tbaa !34
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %36 = tail call ptr %35(i64 noundef 16, ptr noundef nonnull @.str.2) #11
  store ptr %36, ptr %0, align 8, !tbaa !34
  br label %37

37:                                               ; preds = %34, %31
  %38 = load ptr, ptr %0, align 8, !tbaa !34
  %39 = load ptr, ptr %19, align 8, !tbaa !94
  %40 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %41 = tail call ptr %40(i64 noundef 120, ptr noundef nonnull @.str.3) #11
  %42 = getelementptr inbounds %struct.EffectorCache, ptr %41, i64 0, i32 2
  store ptr %1, ptr %42, align 8, !tbaa !75
  %43 = getelementptr inbounds %struct.EffectorCache, ptr %41, i64 0, i32 3
  store ptr %3, ptr %43, align 8, !tbaa !77
  %44 = getelementptr inbounds %struct.EffectorCache, ptr %41, i64 0, i32 4
  store ptr %4, ptr %44, align 8, !tbaa !78
  %45 = getelementptr inbounds %struct.EffectorCache, ptr %41, i64 0, i32 6
  store ptr %39, ptr %45, align 8, !tbaa !79
  %46 = getelementptr inbounds %struct.EffectorCache, ptr %41, i64 0, i32 12
  store float -1.000000e+00, ptr %46, align 4, !tbaa !80
  tail call void @BLI_addtail(ptr noundef %38, ptr noundef %41) #11
  br label %47

47:                                               ; preds = %37, %26, %22, %18
  %48 = getelementptr inbounds %struct.ParticleSettings, ptr %8, i64 0, i32 129
  %49 = load ptr, ptr %48, align 8, !tbaa !95
  %50 = icmp eq ptr %49, null
  br i1 %50, label %76, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.PartDeflect, ptr %49, i64 0, i32 2
  %53 = load i16, ptr %52, align 2, !tbaa !48
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %76, label %55

55:                                               ; preds = %51
  %56 = sext i16 %53 to i64
  %57 = getelementptr inbounds %struct.EffectorWeights, ptr %2, i64 0, i32 1, i64 %56
  %58 = load float, ptr %57, align 4, !tbaa !38
  %59 = fcmp une float %58, 0.000000e+00
  br i1 %59, label %60, label %76

60:                                               ; preds = %55
  %61 = load ptr, ptr %0, align 8, !tbaa !34
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %65 = tail call ptr %64(i64 noundef 16, ptr noundef nonnull @.str.2) #11
  store ptr %65, ptr %0, align 8, !tbaa !34
  br label %66

66:                                               ; preds = %63, %60
  %67 = load ptr, ptr %0, align 8, !tbaa !34
  %68 = load ptr, ptr %48, align 8, !tbaa !95
  %69 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %70 = tail call ptr %69(i64 noundef 120, ptr noundef nonnull @.str.3) #11
  %71 = getelementptr inbounds %struct.EffectorCache, ptr %70, i64 0, i32 2
  store ptr %1, ptr %71, align 8, !tbaa !75
  %72 = getelementptr inbounds %struct.EffectorCache, ptr %70, i64 0, i32 3
  store ptr %3, ptr %72, align 8, !tbaa !77
  %73 = getelementptr inbounds %struct.EffectorCache, ptr %70, i64 0, i32 4
  store ptr %4, ptr %73, align 8, !tbaa !78
  %74 = getelementptr inbounds %struct.EffectorCache, ptr %70, i64 0, i32 6
  store ptr %68, ptr %74, align 8, !tbaa !79
  %75 = getelementptr inbounds %struct.EffectorCache, ptr %70, i64 0, i32 12
  store float -1.000000e+00, ptr %75, align 4, !tbaa !80
  tail call void @BLI_addtail(ptr noundef %67, ptr noundef %70) #11
  br label %76

76:                                               ; preds = %47, %51, %55, %66, %13, %6
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @pdPrecalculateEffectors(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %134, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %134, label %6

6:                                                ; preds = %3, %131
  %7 = phi ptr [ %132, %131 ], [ %4, %3 ]
  %8 = getelementptr inbounds %struct.EffectorCache, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !75
  %10 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !96
  %12 = tail call i32 @llvm.abs.i32(i32 %11, i1 true)
  %13 = getelementptr inbounds %struct.EffectorCache, ptr %7, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !79
  %15 = getelementptr inbounds %struct.PartDeflect, ptr %14, i64 0, i32 37
  %16 = load ptr, ptr %15, align 8, !tbaa !65
  %17 = icmp eq ptr %16, null
  %18 = getelementptr inbounds %struct.PartDeflect, ptr %14, i64 0, i32 39
  %19 = load i32, ptr %18, align 4, !tbaa !53
  %20 = add i32 %19, %12
  br i1 %17, label %21, label %25

21:                                               ; preds = %6
  %22 = tail call ptr @BLI_rng_new(i32 noundef %20) #11
  %23 = load ptr, ptr %13, align 8, !tbaa !79
  %24 = getelementptr inbounds %struct.PartDeflect, ptr %23, i64 0, i32 37
  store ptr %22, ptr %24, align 8, !tbaa !65
  br label %26

25:                                               ; preds = %6
  tail call void @BLI_rng_srandom(ptr noundef nonnull %16, i32 noundef %20) #11
  br label %26

26:                                               ; preds = %25, %21
  %27 = load ptr, ptr %13, align 8, !tbaa !79
  %28 = getelementptr inbounds %struct.PartDeflect, ptr %27, i64 0, i32 2
  %29 = load i16, ptr %28, align 2, !tbaa !48
  %30 = icmp eq i16 %29, 5
  br i1 %30, label %31, label %76

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.EffectorCache, ptr %7, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !77
  %34 = getelementptr inbounds %struct.Object, ptr %33, i64 0, i32 3
  %35 = load i16, ptr %34, align 8, !tbaa !115
  %36 = icmp eq i16 %35, 2
  br i1 %36, label %37, label %76

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.Object, ptr %33, i64 0, i32 19
  %39 = load ptr, ptr %38, align 8, !tbaa !116
  %40 = getelementptr inbounds %struct.Curve, ptr %39, i64 0, i32 23
  %41 = load i32, ptr %40, align 4, !tbaa !117
  %42 = and i32 %41, 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %102, label %44

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.Object, ptr %33, i64 0, i32 118
  %46 = load ptr, ptr %45, align 8, !tbaa !120
  %47 = icmp eq ptr %46, null
  br i1 %47, label %55, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.CurveCache, ptr %46, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !121
  %51 = icmp eq ptr %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = load ptr, ptr %50, align 8, !tbaa !123
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %52, %48, %44
  %56 = load ptr, ptr %8, align 8, !tbaa !75
  tail call void @BKE_displist_make_curveTypes(ptr noundef %56, ptr noundef %33, i8 noundef zeroext 0) #11
  br label %57

57:                                               ; preds = %55, %52
  %58 = load ptr, ptr %32, align 8, !tbaa !77
  %59 = getelementptr inbounds %struct.Object, ptr %58, i64 0, i32 118
  %60 = load ptr, ptr %59, align 8, !tbaa !120
  %61 = getelementptr inbounds %struct.CurveCache, ptr %60, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !121
  %63 = icmp eq ptr %62, null
  br i1 %63, label %102, label %64

64:                                               ; preds = %57
  %65 = load ptr, ptr %62, align 8, !tbaa !123
  %66 = icmp eq ptr %65, null
  br i1 %66, label %102, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.EffectorCache, ptr %7, i64 0, i32 8
  %69 = getelementptr inbounds %struct.EffectorCache, ptr %7, i64 0, i32 9
  %70 = getelementptr inbounds %struct.EffectorCache, ptr %7, i64 0, i32 10
  %71 = tail call i32 @where_on_path(ptr noundef %58, float noundef 0.000000e+00, ptr noundef nonnull %68, ptr noundef nonnull %69, ptr noundef null, ptr noundef nonnull %70, ptr noundef null) #11
  %72 = load ptr, ptr %32, align 8, !tbaa !77
  %73 = getelementptr inbounds %struct.Object, ptr %72, i64 0, i32 47
  tail call void @mul_m4_v3(ptr noundef nonnull %73, ptr noundef nonnull %68) #11
  %74 = load ptr, ptr %32, align 8, !tbaa !77
  %75 = getelementptr inbounds %struct.Object, ptr %74, i64 0, i32 47
  tail call void @mul_mat3_m4_v3(ptr noundef nonnull %75, ptr noundef nonnull %69) #11
  br label %102

76:                                               ; preds = %31, %26
  %77 = getelementptr inbounds %struct.PartDeflect, ptr %27, i64 0, i32 4
  %78 = load i16, ptr %77, align 2, !tbaa !56
  %79 = icmp eq i16 %78, 2
  br i1 %79, label %80, label %93

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.EffectorCache, ptr %7, i64 0, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !77
  %83 = tail call ptr @modifiers_findByType(ptr noundef %82, i32 noundef 30) #11
  %84 = getelementptr inbounds %struct.EffectorCache, ptr %7, i64 0, i32 5
  store ptr %83, ptr %84, align 8, !tbaa !125
  %85 = load ptr, ptr %81, align 8, !tbaa !77
  %86 = getelementptr inbounds %struct.Object, ptr %85, i64 0, i32 3
  %87 = load i16, ptr %86, align 8, !tbaa !115
  %88 = icmp eq i16 %87, 2
  br i1 %88, label %89, label %102

89:                                               ; preds = %80
  %90 = getelementptr inbounds %struct.EffectorCache, ptr %7, i64 0, i32 13
  %91 = load i32, ptr %90, align 8, !tbaa !126
  %92 = or i32 %91, 4
  store i32 %92, ptr %90, align 8, !tbaa !126
  br label %102

93:                                               ; preds = %76
  %94 = getelementptr inbounds %struct.EffectorCache, ptr %7, i64 0, i32 4
  %95 = load ptr, ptr %94, align 8, !tbaa !78
  %96 = icmp eq ptr %95, null
  br i1 %96, label %102, label %97

97:                                               ; preds = %93
  %98 = load ptr, ptr %8, align 8, !tbaa !75
  %99 = getelementptr inbounds %struct.Scene, ptr %98, i64 0, i32 22, i32 5
  %100 = load i32, ptr %99, align 8, !tbaa !96
  %101 = sitofp i32 %100 to float
  tail call void @psys_update_particle_tree(ptr noundef nonnull %95, float noundef %101) #11
  br label %102

102:                                              ; preds = %97, %93, %89, %80, %67, %64, %57, %37
  %103 = getelementptr inbounds %struct.EffectorCache, ptr %7, i64 0, i32 3
  %104 = load ptr, ptr %103, align 8, !tbaa !77
  %105 = icmp eq ptr %104, null
  br i1 %105, label %131, label %106

106:                                              ; preds = %102
  %107 = load ptr, ptr %8, align 8, !tbaa !75
  %108 = uitofp i32 %12 to float
  %109 = fadd float %108, -1.000000e+00
  tail call void @BKE_object_where_is_calc_time(ptr noundef %107, ptr noundef nonnull %104, float noundef %109) #11
  %110 = load ptr, ptr %103, align 8, !tbaa !77
  %111 = getelementptr inbounds %struct.Object, ptr %110, i64 0, i32 47, i64 3
  %112 = load float, ptr %111, align 4, !tbaa !38
  %113 = getelementptr inbounds %struct.Object, ptr %110, i64 0, i32 47, i64 3, i64 1
  %114 = load float, ptr %113, align 4, !tbaa !38
  %115 = getelementptr inbounds %struct.Object, ptr %110, i64 0, i32 47, i64 3, i64 2
  %116 = load float, ptr %115, align 4, !tbaa !38
  %117 = load ptr, ptr %8, align 8, !tbaa !75
  tail call void @BKE_object_where_is_calc_time(ptr noundef %117, ptr noundef %110, float noundef %108) #11
  %118 = getelementptr inbounds %struct.EffectorCache, ptr %7, i64 0, i32 11
  %119 = load ptr, ptr %103, align 8, !tbaa !77
  %120 = getelementptr inbounds %struct.Object, ptr %119, i64 0, i32 47, i64 3
  %121 = load float, ptr %120, align 4, !tbaa !38
  %122 = fsub float %121, %112
  store float %122, ptr %118, align 4, !tbaa !38
  %123 = getelementptr inbounds %struct.Object, ptr %119, i64 0, i32 47, i64 3, i64 1
  %124 = load float, ptr %123, align 4, !tbaa !38
  %125 = fsub float %124, %114
  %126 = getelementptr inbounds %struct.EffectorCache, ptr %7, i64 0, i32 11, i64 1
  store float %125, ptr %126, align 4, !tbaa !38
  %127 = getelementptr inbounds %struct.Object, ptr %119, i64 0, i32 47, i64 3, i64 2
  %128 = load float, ptr %127, align 4, !tbaa !38
  %129 = fsub float %128, %116
  %130 = getelementptr inbounds %struct.EffectorCache, ptr %7, i64 0, i32 11, i64 2
  store float %129, ptr %130, align 4, !tbaa !38
  br label %131

131:                                              ; preds = %102, %106
  %132 = load ptr, ptr %7, align 8, !tbaa !34
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %6, !llvm.loop !127

134:                                              ; preds = %131, %3, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @pdEndEffectors(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %4, %14
  %8 = phi ptr [ %15, %14 ], [ %5, %4 ]
  %9 = getelementptr inbounds %struct.EffectorCache, ptr %8, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !128
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %13(ptr noundef nonnull %10) #11
  br label %14

14:                                               ; preds = %7, %12
  %15 = load ptr, ptr %8, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %7, !llvm.loop !129

17:                                               ; preds = %14, %4
  %18 = load ptr, ptr %0, align 8, !tbaa !34
  tail call void @BLI_freelistN(ptr noundef %18) #11
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %20 = load ptr, ptr %0, align 8, !tbaa !34
  tail call void %19(ptr noundef %20) #11
  store ptr null, ptr %0, align 8, !tbaa !34
  br label %21

21:                                               ; preds = %17, %1
  ret void
}

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @pd_point_from_particle(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !130
  %7 = getelementptr inbounds %struct.ParticleSystem, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !91
  store ptr %2, ptr %3, align 8, !tbaa !132
  %9 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 1
  %10 = getelementptr inbounds %struct.EffectedPoint, ptr %3, i64 0, i32 1
  store ptr %9, ptr %10, align 8, !tbaa !134
  %11 = getelementptr inbounds %struct.ParticleSystem, ptr %6, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !135
  %13 = ptrtoint ptr %1 to i64
  %14 = ptrtoint ptr %12 to i64
  %15 = sub i64 %13, %14
  %16 = sdiv exact i64 %15, 200
  %17 = trunc i64 %16 to i32
  %18 = getelementptr inbounds %struct.EffectedPoint, ptr %3, i64 0, i32 9
  store i32 %17, ptr %18, align 4, !tbaa !136
  %19 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 13
  %20 = load float, ptr %19, align 4, !tbaa !137
  %21 = getelementptr inbounds %struct.EffectedPoint, ptr %3, i64 0, i32 6
  store float %20, ptr %21, align 8, !tbaa !140
  %22 = getelementptr inbounds %struct.EffectedPoint, ptr %3, i64 0, i32 7
  store float 0.000000e+00, ptr %22, align 4, !tbaa !141
  %23 = getelementptr inbounds %struct.ParticleSettings, ptr %8, i64 0, i32 128
  %24 = load ptr, ptr %23, align 8, !tbaa !94
  %25 = icmp eq ptr %24, null
  br i1 %25, label %34, label %26

26:                                               ; preds = %4
  %27 = getelementptr inbounds %struct.PartDeflect, ptr %24, i64 0, i32 2
  %28 = load i16, ptr %27, align 2, !tbaa !48
  %29 = icmp eq i16 %28, 8
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.PartDeflect, ptr %24, i64 0, i32 9
  %32 = load float, ptr %31, align 4, !tbaa !54
  %33 = fadd float %32, 0.000000e+00
  store float %33, ptr %22, align 4, !tbaa !141
  br label %34

34:                                               ; preds = %30, %26, %4
  %35 = getelementptr inbounds %struct.ParticleSettings, ptr %8, i64 0, i32 129
  %36 = load ptr, ptr %35, align 8, !tbaa !95
  %37 = icmp eq ptr %36, null
  br i1 %37, label %47, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.PartDeflect, ptr %36, i64 0, i32 2
  %40 = load i16, ptr %39, align 2, !tbaa !48
  %41 = icmp eq i16 %40, 8
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.PartDeflect, ptr %36, i64 0, i32 9
  %44 = load float, ptr %43, align 4, !tbaa !54
  %45 = load float, ptr %22, align 4, !tbaa !141
  %46 = fadd float %44, %45
  store float %46, ptr %22, align 4, !tbaa !141
  br label %47

47:                                               ; preds = %42, %38, %34
  %48 = getelementptr inbounds %struct.EffectedPoint, ptr %3, i64 0, i32 5
  store float 1.000000e+00, ptr %48, align 4, !tbaa !142
  %49 = tail call float @psys_get_timestep(ptr noundef %0) #11
  %50 = getelementptr inbounds %struct.EffectedPoint, ptr %3, i64 0, i32 4
  store float %49, ptr %50, align 8, !tbaa !143
  %51 = getelementptr inbounds %struct.EffectedPoint, ptr %3, i64 0, i32 8
  store i32 0, ptr %51, align 8, !tbaa !144
  %52 = load ptr, ptr %5, align 8, !tbaa !130
  %53 = getelementptr inbounds %struct.ParticleSystem, ptr %52, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !91
  %55 = getelementptr inbounds %struct.ParticleSettings, ptr %54, i64 0, i32 5
  %56 = load i32, ptr %55, align 8, !tbaa !92
  %57 = and i32 %56, 16384
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %47
  %60 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 3
  %61 = getelementptr inbounds %struct.EffectedPoint, ptr %3, i64 0, i32 2
  store ptr %60, ptr %61, align 8, !tbaa !145
  %62 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 2
  %63 = getelementptr inbounds %struct.EffectedPoint, ptr %3, i64 0, i32 3
  store ptr %62, ptr %63, align 8, !tbaa !146
  br label %66

64:                                               ; preds = %47
  %65 = getelementptr inbounds %struct.EffectedPoint, ptr %3, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %65, i8 0, i64 16, i1 false)
  br label %66

66:                                               ; preds = %64, %59
  %67 = getelementptr inbounds %struct.EffectedPoint, ptr %3, i64 0, i32 10
  store ptr %52, ptr %67, align 8, !tbaa !147
  ret void
}

declare float @psys_get_timestep(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @pd_point_from_loc(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #4 {
  store ptr %1, ptr %4, align 8, !tbaa !132
  %6 = getelementptr inbounds %struct.EffectedPoint, ptr %4, i64 0, i32 1
  store ptr %2, ptr %6, align 8, !tbaa !134
  %7 = getelementptr inbounds %struct.EffectedPoint, ptr %4, i64 0, i32 9
  store i32 %3, ptr %7, align 4, !tbaa !136
  %8 = getelementptr inbounds %struct.EffectedPoint, ptr %4, i64 0, i32 6
  store float 0.000000e+00, ptr %8, align 8, !tbaa !140
  %9 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 55
  %10 = load i16, ptr %9, align 4, !tbaa !148
  %11 = sitofp i16 %10 to float
  %12 = getelementptr inbounds %struct.EffectedPoint, ptr %4, i64 0, i32 5
  store float %11, ptr %12, align 4, !tbaa !142
  %13 = getelementptr inbounds %struct.EffectedPoint, ptr %4, i64 0, i32 4
  store float 1.000000e+00, ptr %13, align 8, !tbaa !143
  %14 = getelementptr inbounds %struct.EffectedPoint, ptr %4, i64 0, i32 8
  store i32 0, ptr %14, align 8, !tbaa !144
  %15 = getelementptr inbounds %struct.EffectedPoint, ptr %4, i64 0, i32 2
  %16 = getelementptr inbounds %struct.EffectedPoint, ptr %4, i64 0, i32 10
  store ptr null, ptr %16, align 8, !tbaa !147
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @pd_point_from_soft(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #4 {
  store ptr %1, ptr %4, align 8, !tbaa !132
  %6 = getelementptr inbounds %struct.EffectedPoint, ptr %4, i64 0, i32 1
  store ptr %2, ptr %6, align 8, !tbaa !134
  %7 = getelementptr inbounds %struct.EffectedPoint, ptr %4, i64 0, i32 9
  store i32 %3, ptr %7, align 4, !tbaa !136
  %8 = getelementptr inbounds %struct.EffectedPoint, ptr %4, i64 0, i32 6
  store float 0.000000e+00, ptr %8, align 8, !tbaa !140
  %9 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 55
  %10 = load i16, ptr %9, align 4, !tbaa !148
  %11 = sitofp i16 %10 to float
  %12 = getelementptr inbounds %struct.EffectedPoint, ptr %4, i64 0, i32 5
  store float %11, ptr %12, align 4, !tbaa !142
  %13 = getelementptr inbounds %struct.EffectedPoint, ptr %4, i64 0, i32 4
  store float 1.000000e+00, ptr %13, align 8, !tbaa !143
  %14 = getelementptr inbounds %struct.EffectedPoint, ptr %4, i64 0, i32 8
  store i32 1, ptr %14, align 8, !tbaa !144
  %15 = getelementptr inbounds %struct.EffectedPoint, ptr %4, i64 0, i32 2
  %16 = getelementptr inbounds %struct.EffectedPoint, ptr %4, i64 0, i32 10
  store ptr null, ptr %16, align 8, !tbaa !147
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: write) uwtable
define dso_local float @effector_falloff(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, ptr noundef readonly %3) local_unnamed_addr #5 {
  %5 = icmp eq ptr %3, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.EffectorWeights, ptr %3, i64 0, i32 1
  %8 = load float, ptr %7, align 8, !tbaa !38
  %9 = getelementptr inbounds %struct.EffectorCache, ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !79
  %11 = getelementptr inbounds %struct.PartDeflect, ptr %10, i64 0, i32 2
  %12 = load i16, ptr %11, align 2, !tbaa !48
  %13 = sext i16 %12 to i64
  %14 = getelementptr inbounds %struct.EffectorWeights, ptr %3, i64 0, i32 1, i64 %13
  %15 = load float, ptr %14, align 4, !tbaa !38
  %16 = fmul float %8, %15
  br label %17

17:                                               ; preds = %4, %6
  %18 = phi float [ %16, %6 ], [ 1.000000e+00, %4 ]
  %19 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 1
  %20 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 9
  %21 = load float, ptr %19, align 4, !tbaa !38
  %22 = load float, ptr %20, align 4, !tbaa !38
  %23 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 1, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !38
  %25 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 9, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !38
  %27 = fmul float %24, %26
  %28 = tail call float @llvm.fmuladd.f32(float %21, float %22, float %27)
  %29 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 1, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !38
  %31 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 9, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !38
  %33 = tail call float @llvm.fmuladd.f32(float %30, float %32, float %28)
  %34 = getelementptr inbounds %struct.EffectorCache, ptr %0, i64 0, i32 6
  %35 = load ptr, ptr %34, align 8, !tbaa !79
  %36 = getelementptr inbounds %struct.PartDeflect, ptr %35, i64 0, i32 8
  %37 = load i16, ptr %36, align 2, !tbaa !149
  %38 = icmp eq i16 %37, 1
  %39 = fcmp olt float %33, 0.000000e+00
  %40 = select i1 %38, i1 %39, i1 false
  br i1 %40, label %238, label %41

41:                                               ; preds = %17
  %42 = icmp eq i16 %37, 2
  %43 = fcmp ogt float %33, 0.000000e+00
  %44 = select i1 %42, i1 %43, i1 false
  br i1 %44, label %238, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.PartDeflect, ptr %35, i64 0, i32 3
  %47 = load i16, ptr %46, align 8, !tbaa !150
  switch i16 %47, label %238 [
    i16 0, label %48
    i16 1, label %79
    i16 2, label %157
  ]

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 4
  %50 = load float, ptr %49, align 8, !tbaa !151
  %51 = load i32, ptr %35, align 8, !tbaa !59
  %52 = getelementptr inbounds %struct.PartDeflect, ptr %35, i64 0, i32 15
  %53 = load float, ptr %52, align 4, !tbaa !153
  %54 = and i32 %51, 1
  %55 = getelementptr inbounds %struct.PartDeflect, ptr %35, i64 0, i32 14
  %56 = load float, ptr %55, align 8, !tbaa !154
  %57 = getelementptr inbounds %struct.PartDeflect, ptr %35, i64 0, i32 13
  %58 = load float, ptr %57, align 4, !tbaa !155
  %59 = icmp ne i32 %54, 0
  %60 = fcmp olt float %56, %50
  %61 = and i1 %59, %60
  br i1 %61, label %76, label %62

62:                                               ; preds = %48
  %63 = and i32 %51, 256
  %64 = icmp ne i32 %63, 0
  %65 = fcmp ogt float %53, %50
  %66 = and i1 %64, %65
  br i1 %66, label %76, label %67

67:                                               ; preds = %62
  %68 = select i1 %64, float %53, float 0.000000e+00
  %69 = fadd float %50, 1.000000e+00
  %70 = fsub float %69, %68
  %71 = fpext float %70 to double
  %72 = fneg float %58
  %73 = fpext float %72 to double
  %74 = tail call double @pow(double noundef %71, double noundef %73) #11
  %75 = fptrunc double %74 to float
  br label %76

76:                                               ; preds = %48, %62, %67
  %77 = phi float [ %75, %67 ], [ 0.000000e+00, %48 ], [ 1.000000e+00, %62 ]
  %78 = fmul float %18, %77
  br label %238

79:                                               ; preds = %45
  %80 = fneg float %33
  %81 = select i1 %39, float %80, float %33
  %82 = load i32, ptr %35, align 8, !tbaa !59
  %83 = getelementptr inbounds %struct.PartDeflect, ptr %35, i64 0, i32 15
  %84 = load float, ptr %83, align 4, !tbaa !153
  %85 = and i32 %82, 1
  %86 = getelementptr inbounds %struct.PartDeflect, ptr %35, i64 0, i32 14
  %87 = load float, ptr %86, align 8, !tbaa !154
  %88 = getelementptr inbounds %struct.PartDeflect, ptr %35, i64 0, i32 13
  %89 = load float, ptr %88, align 4, !tbaa !155
  %90 = icmp ne i32 %85, 0
  %91 = fcmp olt float %87, %81
  %92 = and i1 %90, %91
  br i1 %92, label %107, label %93

93:                                               ; preds = %79
  %94 = and i32 %82, 256
  %95 = icmp ne i32 %94, 0
  %96 = fcmp ogt float %84, %81
  %97 = and i1 %95, %96
  br i1 %97, label %107, label %98

98:                                               ; preds = %93
  %99 = select i1 %95, float %84, float 0.000000e+00
  %100 = fadd float %81, 1.000000e+00
  %101 = fsub float %100, %99
  %102 = fpext float %101 to double
  %103 = fneg float %89
  %104 = fpext float %103 to double
  %105 = tail call double @pow(double noundef %102, double noundef %104) #11
  %106 = fptrunc double %105 to float
  br label %107

107:                                              ; preds = %79, %93, %98
  %108 = phi float [ %106, %98 ], [ 0.000000e+00, %79 ], [ 1.000000e+00, %93 ]
  %109 = fmul float %18, %108
  %110 = fcmp oeq float %109, 0.000000e+00
  br i1 %110, label %238, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 3
  %113 = load float, ptr %112, align 4, !tbaa !38
  %114 = load float, ptr %19, align 4, !tbaa !38
  %115 = tail call float @llvm.fmuladd.f32(float %114, float %80, float %113)
  %116 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 3, i64 1
  %117 = load float, ptr %116, align 4, !tbaa !38
  %118 = load float, ptr %23, align 4, !tbaa !38
  %119 = tail call float @llvm.fmuladd.f32(float %118, float %80, float %117)
  %120 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 3, i64 2
  %121 = load float, ptr %120, align 4, !tbaa !38
  %122 = load float, ptr %29, align 4, !tbaa !38
  %123 = tail call float @llvm.fmuladd.f32(float %122, float %80, float %121)
  %124 = fmul float %119, %119
  %125 = tail call float @llvm.fmuladd.f32(float %115, float %115, float %124)
  %126 = tail call float @llvm.fmuladd.f32(float %123, float %123, float %125)
  %127 = tail call float @sqrtf(float noundef %126) #11
  %128 = load ptr, ptr %34, align 8, !tbaa !79
  %129 = load i32, ptr %128, align 8, !tbaa !59
  %130 = getelementptr inbounds %struct.PartDeflect, ptr %128, i64 0, i32 18
  %131 = load float, ptr %130, align 8, !tbaa !156
  %132 = and i32 %129, 512
  %133 = getelementptr inbounds %struct.PartDeflect, ptr %128, i64 0, i32 17
  %134 = load float, ptr %133, align 4, !tbaa !157
  %135 = getelementptr inbounds %struct.PartDeflect, ptr %128, i64 0, i32 16
  %136 = load float, ptr %135, align 8, !tbaa !158
  %137 = icmp ne i32 %132, 0
  %138 = fcmp olt float %134, %127
  %139 = and i1 %137, %138
  br i1 %139, label %154, label %140

140:                                              ; preds = %111
  %141 = and i32 %129, 1024
  %142 = icmp ne i32 %141, 0
  %143 = fcmp ogt float %131, %127
  %144 = and i1 %142, %143
  br i1 %144, label %154, label %145

145:                                              ; preds = %140
  %146 = select i1 %142, float %131, float 0.000000e+00
  %147 = fadd float %127, 1.000000e+00
  %148 = fsub float %147, %146
  %149 = fpext float %148 to double
  %150 = fneg float %136
  %151 = fpext float %150 to double
  %152 = tail call double @pow(double noundef %149, double noundef %151) #11
  %153 = fptrunc double %152 to float
  br label %154

154:                                              ; preds = %111, %140, %145
  %155 = phi float [ %153, %145 ], [ 0.000000e+00, %111 ], [ 1.000000e+00, %140 ]
  %156 = fmul float %109, %155
  br label %238

157:                                              ; preds = %45
  %158 = fneg float %33
  %159 = select i1 %39, float %158, float %33
  %160 = load i32, ptr %35, align 8, !tbaa !59
  %161 = getelementptr inbounds %struct.PartDeflect, ptr %35, i64 0, i32 15
  %162 = load float, ptr %161, align 4, !tbaa !153
  %163 = and i32 %160, 1
  %164 = getelementptr inbounds %struct.PartDeflect, ptr %35, i64 0, i32 14
  %165 = load float, ptr %164, align 8, !tbaa !154
  %166 = getelementptr inbounds %struct.PartDeflect, ptr %35, i64 0, i32 13
  %167 = load float, ptr %166, align 4, !tbaa !155
  %168 = icmp ne i32 %163, 0
  %169 = fcmp olt float %165, %159
  %170 = and i1 %168, %169
  br i1 %170, label %185, label %171

171:                                              ; preds = %157
  %172 = and i32 %160, 256
  %173 = icmp ne i32 %172, 0
  %174 = fcmp ogt float %162, %159
  %175 = and i1 %173, %174
  br i1 %175, label %185, label %176

176:                                              ; preds = %171
  %177 = select i1 %173, float %162, float 0.000000e+00
  %178 = fadd float %159, 1.000000e+00
  %179 = fsub float %178, %177
  %180 = fpext float %179 to double
  %181 = fneg float %167
  %182 = fpext float %181 to double
  %183 = tail call double @pow(double noundef %180, double noundef %182) #11
  %184 = fptrunc double %183 to float
  br label %185

185:                                              ; preds = %157, %171, %176
  %186 = phi float [ %184, %176 ], [ 0.000000e+00, %157 ], [ 1.000000e+00, %171 ]
  %187 = fmul float %18, %186
  %188 = fcmp oeq float %187, 0.000000e+00
  br i1 %188, label %238, label %189

189:                                              ; preds = %185
  %190 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 3
  %191 = load float, ptr %190, align 4, !tbaa !38
  %192 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 3, i64 1
  %193 = load float, ptr %192, align 4, !tbaa !38
  %194 = fmul float %193, %193
  %195 = tail call float @llvm.fmuladd.f32(float %191, float %191, float %194)
  %196 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 3, i64 2
  %197 = load float, ptr %196, align 4, !tbaa !38
  %198 = tail call float @llvm.fmuladd.f32(float %197, float %197, float %195)
  %199 = tail call float @sqrtf(float noundef %198) #11
  %200 = fdiv float %33, %199
  %201 = fcmp ugt float %200, -1.000000e+00
  br i1 %201, label %202, label %207

202:                                              ; preds = %189
  %203 = fcmp ult float %200, 1.000000e+00
  br i1 %203, label %204, label %207

204:                                              ; preds = %202
  %205 = tail call float @acosf(float noundef %200) #11
  %206 = fmul float %205, 0x404CA5DC20000000
  br label %207

207:                                              ; preds = %189, %202, %204
  %208 = phi float [ %206, %204 ], [ 1.800000e+02, %189 ], [ 0.000000e+00, %202 ]
  %209 = load ptr, ptr %34, align 8, !tbaa !79
  %210 = load i32, ptr %209, align 8, !tbaa !59
  %211 = getelementptr inbounds %struct.PartDeflect, ptr %209, i64 0, i32 18
  %212 = load float, ptr %211, align 8, !tbaa !156
  %213 = and i32 %210, 512
  %214 = getelementptr inbounds %struct.PartDeflect, ptr %209, i64 0, i32 17
  %215 = load float, ptr %214, align 4, !tbaa !157
  %216 = getelementptr inbounds %struct.PartDeflect, ptr %209, i64 0, i32 16
  %217 = load float, ptr %216, align 8, !tbaa !158
  %218 = icmp ne i32 %213, 0
  %219 = fcmp olt float %215, %208
  %220 = and i1 %218, %219
  br i1 %220, label %235, label %221

221:                                              ; preds = %207
  %222 = and i32 %210, 1024
  %223 = icmp ne i32 %222, 0
  %224 = fcmp ogt float %212, %208
  %225 = and i1 %223, %224
  br i1 %225, label %235, label %226

226:                                              ; preds = %221
  %227 = select i1 %223, float %212, float 0.000000e+00
  %228 = fadd float %208, 1.000000e+00
  %229 = fsub float %228, %227
  %230 = fpext float %229 to double
  %231 = fneg float %217
  %232 = fpext float %231 to double
  %233 = tail call double @pow(double noundef %230, double noundef %232) #11
  %234 = fptrunc double %233 to float
  br label %235

235:                                              ; preds = %207, %221, %226
  %236 = phi float [ %234, %226 ], [ 0.000000e+00, %207 ], [ 1.000000e+00, %221 ]
  %237 = fmul float %187, %236
  br label %238

238:                                              ; preds = %41, %17, %185, %107, %45, %235, %154, %76
  %239 = phi float [ %18, %45 ], [ %187, %185 ], [ %237, %235 ], [ %109, %107 ], [ %156, %154 ], [ %78, %76 ], [ 0.000000e+00, %17 ], [ 0.000000e+00, %41 ]
  ret float %239
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @closest_point_on_surface(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr noundef writeonly %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.BVHTreeNearest, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #11
  store i32 -1, ptr %6, align 4, !tbaa !159
  %7 = getelementptr inbounds %struct.BVHTreeNearest, ptr %6, i64 0, i32 3
  store float 0x47EFFFFFE0000000, ptr %7, align 4, !tbaa !161
  %8 = getelementptr inbounds %struct.SurfaceModifierData, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !162
  %10 = load ptr, ptr %9, align 8, !tbaa !165
  %11 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %9, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !167
  %13 = call i32 @BLI_bvhtree_find_nearest(ptr noundef %10, ptr noundef %1, ptr noundef nonnull %6, ptr noundef %12, ptr noundef nonnull %9) #11
  %14 = load i32, ptr %6, align 4, !tbaa !159
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %99, label %16

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.BVHTreeNearest, ptr %6, i64 0, i32 1
  %18 = load float, ptr %17, align 4, !tbaa !38
  store float %18, ptr %2, align 4, !tbaa !38
  %19 = getelementptr inbounds %struct.BVHTreeNearest, ptr %6, i64 0, i32 1, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !38
  %21 = getelementptr inbounds float, ptr %2, i64 1
  store float %20, ptr %21, align 4, !tbaa !38
  %22 = getelementptr inbounds %struct.BVHTreeNearest, ptr %6, i64 0, i32 1, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !38
  %24 = getelementptr inbounds float, ptr %2, i64 2
  store float %23, ptr %24, align 4, !tbaa !38
  %25 = icmp eq ptr %3, null
  br i1 %25, label %35, label %26

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.BVHTreeNearest, ptr %6, i64 0, i32 2
  %28 = load float, ptr %27, align 4, !tbaa !38
  store float %28, ptr %3, align 4, !tbaa !38
  %29 = getelementptr inbounds %struct.BVHTreeNearest, ptr %6, i64 0, i32 2, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !38
  %31 = getelementptr inbounds float, ptr %3, i64 1
  store float %30, ptr %31, align 4, !tbaa !38
  %32 = getelementptr inbounds %struct.BVHTreeNearest, ptr %6, i64 0, i32 2, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !38
  %34 = getelementptr inbounds float, ptr %3, i64 2
  store float %33, ptr %34, align 4, !tbaa !38
  br label %35

35:                                               ; preds = %26, %16
  %36 = icmp eq ptr %4, null
  br i1 %36, label %99, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.SurfaceModifierData, ptr %0, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !168
  %40 = call ptr @CDDM_get_tessface(ptr noundef %39, i32 noundef %14) #11
  %41 = getelementptr inbounds %struct.SurfaceModifierData, ptr %0, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !169
  %43 = load i32, ptr %40, align 4, !tbaa !170
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.MVert, ptr %42, i64 %44
  %46 = load float, ptr %45, align 4, !tbaa !38
  store float %46, ptr %4, align 4, !tbaa !38
  %47 = getelementptr inbounds float, ptr %45, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !38
  %49 = getelementptr inbounds float, ptr %4, i64 1
  store float %48, ptr %49, align 4, !tbaa !38
  %50 = getelementptr inbounds float, ptr %45, i64 2
  %51 = load float, ptr %50, align 4, !tbaa !38
  %52 = getelementptr inbounds float, ptr %4, i64 2
  store float %51, ptr %52, align 4, !tbaa !38
  %53 = getelementptr inbounds %struct.MFace, ptr %40, i64 0, i32 1
  %54 = load i32, ptr %53, align 4, !tbaa !172
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.MVert, ptr %42, i64 %55
  %57 = load float, ptr %56, align 4, !tbaa !38
  %58 = fadd float %46, %57
  store float %58, ptr %4, align 4, !tbaa !38
  %59 = getelementptr inbounds float, ptr %56, i64 1
  %60 = load float, ptr %59, align 4, !tbaa !38
  %61 = fadd float %48, %60
  store float %61, ptr %49, align 4, !tbaa !38
  %62 = getelementptr inbounds float, ptr %56, i64 2
  %63 = load float, ptr %62, align 4, !tbaa !38
  %64 = fadd float %51, %63
  store float %64, ptr %52, align 4, !tbaa !38
  %65 = getelementptr inbounds %struct.MFace, ptr %40, i64 0, i32 2
  %66 = load i32, ptr %65, align 4, !tbaa !173
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.MVert, ptr %42, i64 %67
  %69 = load float, ptr %68, align 4, !tbaa !38
  %70 = fadd float %58, %69
  store float %70, ptr %4, align 4, !tbaa !38
  %71 = getelementptr inbounds float, ptr %68, i64 1
  %72 = load float, ptr %71, align 4, !tbaa !38
  %73 = fadd float %61, %72
  store float %73, ptr %49, align 4, !tbaa !38
  %74 = getelementptr inbounds float, ptr %68, i64 2
  %75 = load float, ptr %74, align 4, !tbaa !38
  %76 = fadd float %64, %75
  store float %76, ptr %52, align 4, !tbaa !38
  %77 = getelementptr inbounds %struct.MFace, ptr %40, i64 0, i32 3
  %78 = load i32, ptr %77, align 4, !tbaa !174
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %91, label %80

80:                                               ; preds = %37
  %81 = zext i32 %78 to i64
  %82 = getelementptr inbounds %struct.MVert, ptr %42, i64 %81
  %83 = load float, ptr %82, align 4, !tbaa !38
  %84 = fadd float %70, %83
  store float %84, ptr %4, align 4, !tbaa !38
  %85 = getelementptr inbounds float, ptr %82, i64 1
  %86 = load float, ptr %85, align 4, !tbaa !38
  %87 = fadd float %73, %86
  store float %87, ptr %49, align 4, !tbaa !38
  %88 = getelementptr inbounds float, ptr %82, i64 2
  %89 = load float, ptr %88, align 4, !tbaa !38
  %90 = fadd float %76, %89
  store float %90, ptr %52, align 4, !tbaa !38
  br label %91

91:                                               ; preds = %80, %37
  %92 = phi float [ 2.500000e-01, %80 ], [ 0x3FD5555560000000, %37 ]
  %93 = load float, ptr %4, align 4, !tbaa !38
  %94 = fmul float %92, %93
  store float %94, ptr %4, align 4, !tbaa !38
  %95 = load float, ptr %49, align 4, !tbaa !38
  %96 = fmul float %92, %95
  store float %96, ptr %49, align 4, !tbaa !38
  %97 = load float, ptr %52, align 4, !tbaa !38
  %98 = fmul float %92, %97
  store float %98, ptr %52, align 4, !tbaa !38
  br label %99

99:                                               ; preds = %5, %35, %91
  %100 = phi i32 [ 1, %91 ], [ 1, %35 ], [ 0, %5 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #11
  ret i32 %100
}

declare i32 @BLI_bvhtree_find_nearest(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CDDM_get_tessface(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @get_effector_data(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [3 x float], align 4
  %6 = alloca %struct.ParticleKey, align 4
  %7 = alloca %struct.ParticleSimulationData, align 8
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = getelementptr inbounds %struct.EffectorCache, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !75
  %12 = getelementptr inbounds %struct.Scene, ptr %11, i64 0, i32 22, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !96
  %14 = sitofp i32 %13 to float
  %15 = getelementptr inbounds %struct.EffectorCache, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !79
  %17 = icmp eq ptr %16, null
  br i1 %17, label %104, label %18

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.PartDeflect, ptr %16, i64 0, i32 4
  %20 = load i16, ptr %19, align 2, !tbaa !56
  %21 = icmp eq i16 %20, 2
  br i1 %21, label %22, label %56

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.EffectorCache, ptr %0, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !125
  %25 = icmp eq ptr %24, null
  br i1 %25, label %56, label %26

26:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  %27 = getelementptr inbounds %struct.EffectedPoint, ptr %2, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !134
  %29 = load float, ptr %28, align 4, !tbaa !38
  store float %29, ptr %5, align 4, !tbaa !38
  %30 = getelementptr inbounds float, ptr %28, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !38
  %32 = getelementptr inbounds float, ptr %5, i64 1
  store float %31, ptr %32, align 4, !tbaa !38
  %33 = getelementptr inbounds float, ptr %28, i64 2
  %34 = load float, ptr %33, align 4, !tbaa !38
  %35 = getelementptr inbounds float, ptr %5, i64 2
  store float %34, ptr %35, align 4, !tbaa !38
  %36 = getelementptr inbounds %struct.EffectedPoint, ptr %2, i64 0, i32 4
  %37 = load float, ptr %36, align 8, !tbaa !143
  %38 = fmul float %29, %37
  store float %38, ptr %5, align 4, !tbaa !38
  %39 = fmul float %31, %37
  store float %39, ptr %32, align 4, !tbaa !38
  %40 = fmul float %34, %37
  store float %40, ptr %35, align 4, !tbaa !38
  %41 = load ptr, ptr %2, align 8, !tbaa !132
  %42 = load float, ptr %41, align 4, !tbaa !38
  %43 = fadd float %38, %42
  store float %43, ptr %5, align 4, !tbaa !38
  %44 = getelementptr inbounds float, ptr %41, i64 1
  %45 = load float, ptr %44, align 4, !tbaa !38
  %46 = fadd float %39, %45
  store float %46, ptr %32, align 4, !tbaa !38
  %47 = getelementptr inbounds float, ptr %41, i64 2
  %48 = load float, ptr %47, align 4, !tbaa !38
  %49 = fadd float %40, %48
  store float %49, ptr %35, align 4, !tbaa !38
  %50 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 1
  %51 = icmp eq i32 %3, 0
  %52 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 2
  %53 = select i1 %51, ptr null, ptr %52
  %54 = call i32 @closest_point_on_surface(ptr noundef nonnull %24, ptr noundef nonnull %5, ptr noundef %1, ptr noundef nonnull %50, ptr noundef %53), !range !175
  %55 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 6
  store float 0.000000e+00, ptr %55, align 8, !tbaa !176
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  br label %272

56:                                               ; preds = %22, %18
  br i1 %17, label %104, label %57

57:                                               ; preds = %56
  %58 = getelementptr inbounds %struct.PartDeflect, ptr %16, i64 0, i32 4
  %59 = load i16, ptr %58, align 2, !tbaa !56
  %60 = icmp eq i16 %59, 3
  br i1 %60, label %61, label %104

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.EffectorCache, ptr %0, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !77
  %64 = getelementptr inbounds %struct.Object, ptr %63, i64 0, i32 120
  %65 = load ptr, ptr %64, align 8, !tbaa !74
  %66 = icmp eq ptr %65, null
  br i1 %66, label %272, label %67

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.DerivedMesh, ptr %65, i64 0, i32 76
  %69 = load ptr, ptr %68, align 8, !tbaa !177
  %70 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 10
  %71 = load ptr, ptr %70, align 8, !tbaa !180
  %72 = load i32, ptr %71, align 4, !tbaa !181
  tail call void %69(ptr noundef nonnull %65, i32 noundef %72, ptr noundef %1) #11
  %73 = getelementptr inbounds %struct.DerivedMesh, ptr %65, i64 0, i32 78
  %74 = load ptr, ptr %73, align 8, !tbaa !182
  %75 = load ptr, ptr %70, align 8, !tbaa !180
  %76 = load i32, ptr %75, align 4, !tbaa !181
  %77 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 1
  tail call void %74(ptr noundef nonnull %65, i32 noundef %76, ptr noundef nonnull %77) #11
  %78 = load ptr, ptr %62, align 8, !tbaa !77
  %79 = getelementptr inbounds %struct.Object, ptr %78, i64 0, i32 47
  tail call void @mul_m4_v3(ptr noundef nonnull %79, ptr noundef %1) #11
  %80 = load ptr, ptr %62, align 8, !tbaa !77
  %81 = getelementptr inbounds %struct.Object, ptr %80, i64 0, i32 47
  tail call void @mul_mat3_m4_v3(ptr noundef nonnull %81, ptr noundef nonnull %77) #11
  %82 = load float, ptr %77, align 4, !tbaa !38
  %83 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 1, i64 1
  %84 = load float, ptr %83, align 4, !tbaa !38
  %85 = fmul float %84, %84
  %86 = tail call float @llvm.fmuladd.f32(float %82, float %82, float %85)
  %87 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 1, i64 2
  %88 = load float, ptr %87, align 4, !tbaa !38
  %89 = tail call float @llvm.fmuladd.f32(float %88, float %88, float %86)
  %90 = fcmp ogt float %89, 0x38AA95A5C0000000
  br i1 %90, label %91, label %100

91:                                               ; preds = %67
  %92 = tail call float @sqrtf(float noundef %89) #11
  %93 = fdiv float 1.000000e+00, %92
  %94 = load float, ptr %77, align 4, !tbaa !38
  %95 = fmul float %94, %93
  store float %95, ptr %77, align 4, !tbaa !38
  %96 = load float, ptr %83, align 4, !tbaa !38
  %97 = fmul float %93, %96
  store float %97, ptr %83, align 4, !tbaa !38
  %98 = load float, ptr %87, align 4, !tbaa !38
  %99 = fmul float %93, %98
  br label %101

100:                                              ; preds = %67
  store float 0.000000e+00, ptr %77, align 4, !tbaa !38
  store float 0.000000e+00, ptr %83, align 4, !tbaa !38
  br label %101

101:                                              ; preds = %91, %100
  %102 = phi float [ 0.000000e+00, %100 ], [ %99, %91 ]
  store float %102, ptr %87, align 4, !tbaa !38
  %103 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 6
  store float 0.000000e+00, ptr %103, align 8, !tbaa !176
  br label %272

104:                                              ; preds = %4, %57, %56
  %105 = getelementptr inbounds %struct.EffectorCache, ptr %0, i64 0, i32 4
  %106 = load ptr, ptr %105, align 8, !tbaa !78
  %107 = icmp eq ptr %106, null
  br i1 %107, label %160, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.ParticleSystem, ptr %106, i64 0, i32 3
  %110 = load ptr, ptr %109, align 8, !tbaa !135
  %111 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 10
  %112 = load ptr, ptr %111, align 8, !tbaa !180
  %113 = load i32, ptr %112, align 4, !tbaa !181
  %114 = sext i32 %113 to i64
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #11
  %115 = getelementptr inbounds %struct.EffectedPoint, ptr %2, i64 0, i32 10
  %116 = load ptr, ptr %115, align 8, !tbaa !147
  %117 = icmp eq ptr %106, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %108
  %119 = load i32, ptr %112, align 4, !tbaa !181
  %120 = getelementptr inbounds %struct.EffectedPoint, ptr %2, i64 0, i32 9
  %121 = load i32, ptr %120, align 4, !tbaa !136
  %122 = icmp eq i32 %119, %121
  br i1 %122, label %158, label %123

123:                                              ; preds = %118, %108
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, i8 0, i64 48, i1 false)
  store ptr %11, ptr %7, align 8, !tbaa !183
  %124 = getelementptr inbounds %struct.EffectorCache, ptr %0, i64 0, i32 3
  %125 = load ptr, ptr %124, align 8, !tbaa !77
  %126 = getelementptr inbounds %struct.ParticleSimulationData, ptr %7, i64 0, i32 1
  store ptr %125, ptr %126, align 8, !tbaa !184
  %127 = getelementptr inbounds %struct.ParticleSimulationData, ptr %7, i64 0, i32 2
  store ptr %106, ptr %127, align 8, !tbaa !130
  %128 = fadd float %14, -1.000000e+00
  %129 = getelementptr inbounds %struct.ParticleKey, ptr %6, i64 0, i32 4
  store float %128, ptr %129, align 4, !tbaa !185
  %130 = load i32, ptr %112, align 4, !tbaa !181
  %131 = call i32 @psys_get_particle_state(ptr noundef nonnull %7, i32 noundef %130, ptr noundef nonnull %6, i32 noundef 0) #11
  %132 = load float, ptr %6, align 4, !tbaa !38
  store float %132, ptr %1, align 4, !tbaa !38
  %133 = getelementptr inbounds float, ptr %6, i64 1
  %134 = load float, ptr %133, align 4, !tbaa !38
  %135 = getelementptr inbounds float, ptr %1, i64 1
  store float %134, ptr %135, align 4, !tbaa !38
  %136 = getelementptr inbounds float, ptr %6, i64 2
  %137 = load float, ptr %136, align 4, !tbaa !38
  %138 = getelementptr inbounds float, ptr %1, i64 2
  store float %137, ptr %138, align 4, !tbaa !38
  %139 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 1
  store float 1.000000e+00, ptr %139, align 4, !tbaa !38
  %140 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 1, i64 2
  store float 0.000000e+00, ptr %140, align 4, !tbaa !38
  %141 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 1, i64 1
  store float 0.000000e+00, ptr %141, align 4, !tbaa !38
  %142 = getelementptr inbounds %struct.ParticleKey, ptr %6, i64 0, i32 2
  call void @mul_qt_v3(ptr noundef nonnull %142, ptr noundef nonnull %139) #11
  %143 = icmp eq i32 %3, 0
  br i1 %143, label %154, label %144

144:                                              ; preds = %123
  %145 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 2
  %146 = getelementptr inbounds %struct.ParticleKey, ptr %6, i64 0, i32 1
  %147 = load float, ptr %146, align 4, !tbaa !38
  store float %147, ptr %145, align 4, !tbaa !38
  %148 = getelementptr inbounds %struct.ParticleKey, ptr %6, i64 0, i32 1, i64 1
  %149 = load float, ptr %148, align 4, !tbaa !38
  %150 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 2, i64 1
  store float %149, ptr %150, align 4, !tbaa !38
  %151 = getelementptr inbounds %struct.ParticleKey, ptr %6, i64 0, i32 1, i64 2
  %152 = load float, ptr %151, align 4, !tbaa !38
  %153 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 2, i64 2
  store float %152, ptr %153, align 4, !tbaa !38
  br label %154

154:                                              ; preds = %144, %123
  %155 = getelementptr inbounds %struct.ParticleData, ptr %110, i64 %114, i32 13
  %156 = load float, ptr %155, align 4, !tbaa !137
  %157 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 6
  store float %156, ptr %157, align 8, !tbaa !176
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #11
  br label %158

158:                                              ; preds = %118, %154
  %159 = phi i32 [ 0, %118 ], [ %131, %154 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #11
  br label %272

160:                                              ; preds = %104
  %161 = getelementptr inbounds %struct.EffectorCache, ptr %0, i64 0, i32 3
  %162 = load ptr, ptr %161, align 8, !tbaa !77
  %163 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 1
  %164 = getelementptr inbounds %struct.Object, ptr %162, i64 0, i32 47, i64 2
  %165 = load float, ptr %164, align 4, !tbaa !38
  %166 = getelementptr inbounds %struct.Object, ptr %162, i64 0, i32 47, i64 2, i64 1
  %167 = load float, ptr %166, align 4, !tbaa !38
  %168 = fmul float %167, %167
  %169 = tail call float @llvm.fmuladd.f32(float %165, float %165, float %168)
  %170 = getelementptr inbounds %struct.Object, ptr %162, i64 0, i32 47, i64 2, i64 2
  %171 = load float, ptr %170, align 4, !tbaa !38
  %172 = tail call float @llvm.fmuladd.f32(float %171, float %171, float %169)
  %173 = fcmp ogt float %172, 0x38AA95A5C0000000
  br i1 %173, label %174, label %184

174:                                              ; preds = %160
  %175 = tail call float @sqrtf(float noundef %172) #11
  %176 = fdiv float 1.000000e+00, %175
  %177 = load float, ptr %164, align 4, !tbaa !38
  %178 = fmul float %177, %176
  store float %178, ptr %163, align 4, !tbaa !38
  %179 = load float, ptr %166, align 4, !tbaa !38
  %180 = fmul float %176, %179
  %181 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 1, i64 1
  store float %180, ptr %181, align 4, !tbaa !38
  %182 = load float, ptr %170, align 4, !tbaa !38
  %183 = fmul float %176, %182
  br label %186

184:                                              ; preds = %160
  store float 0.000000e+00, ptr %163, align 4, !tbaa !38
  %185 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 1, i64 1
  store float 0.000000e+00, ptr %185, align 4, !tbaa !38
  br label %186

186:                                              ; preds = %174, %184
  %187 = phi float [ %183, %174 ], [ 0.000000e+00, %184 ]
  %188 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 1, i64 2
  store float %187, ptr %188, align 4, !tbaa !38
  %189 = load ptr, ptr %15, align 8, !tbaa !79
  %190 = icmp eq ptr %189, null
  br i1 %190, label %249, label %191

191:                                              ; preds = %186
  %192 = getelementptr inbounds %struct.PartDeflect, ptr %189, i64 0, i32 4
  %193 = load i16, ptr %192, align 2, !tbaa !56
  %194 = icmp eq i16 %193, 1
  br i1 %194, label %195, label %249

195:                                              ; preds = %191
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #11
  %196 = load ptr, ptr %2, align 8, !tbaa !132
  %197 = getelementptr inbounds %struct.Object, ptr %162, i64 0, i32 47, i64 3
  %198 = load float, ptr %196, align 4, !tbaa !38
  %199 = load float, ptr %197, align 4, !tbaa !38
  %200 = fsub float %198, %199
  store float %200, ptr %8, align 4, !tbaa !38
  %201 = getelementptr inbounds float, ptr %196, i64 1
  %202 = load float, ptr %201, align 4, !tbaa !38
  %203 = getelementptr inbounds %struct.Object, ptr %162, i64 0, i32 47, i64 3, i64 1
  %204 = load float, ptr %203, align 4, !tbaa !38
  %205 = fsub float %202, %204
  %206 = getelementptr inbounds float, ptr %8, i64 1
  store float %205, ptr %206, align 4, !tbaa !38
  %207 = getelementptr inbounds float, ptr %196, i64 2
  %208 = load float, ptr %207, align 4, !tbaa !38
  %209 = getelementptr inbounds %struct.Object, ptr %162, i64 0, i32 47, i64 3, i64 2
  %210 = load float, ptr %209, align 4, !tbaa !38
  %211 = fsub float %208, %210
  %212 = getelementptr inbounds float, ptr %8, i64 2
  store float %211, ptr %212, align 4, !tbaa !38
  call void @project_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %163) #11
  %213 = load ptr, ptr %15, align 8, !tbaa !79
  %214 = getelementptr inbounds %struct.PartDeflect, ptr %213, i64 0, i32 2
  %215 = load i16, ptr %214, align 2, !tbaa !48
  %216 = icmp eq i16 %215, 2
  br i1 %216, label %217, label %230

217:                                              ; preds = %195
  %218 = load float, ptr %197, align 4, !tbaa !38
  %219 = load float, ptr %9, align 4, !tbaa !38
  %220 = fadd float %218, %219
  store float %220, ptr %1, align 4, !tbaa !38
  %221 = load float, ptr %203, align 4, !tbaa !38
  %222 = getelementptr inbounds float, ptr %9, i64 1
  %223 = load float, ptr %222, align 4, !tbaa !38
  %224 = fadd float %221, %223
  %225 = getelementptr inbounds float, ptr %1, i64 1
  store float %224, ptr %225, align 4, !tbaa !38
  %226 = load float, ptr %209, align 4, !tbaa !38
  %227 = getelementptr inbounds float, ptr %9, i64 2
  %228 = load float, ptr %227, align 4, !tbaa !38
  %229 = fadd float %226, %228
  br label %246

230:                                              ; preds = %195
  %231 = load ptr, ptr %2, align 8, !tbaa !132
  %232 = load float, ptr %231, align 4, !tbaa !38
  %233 = load float, ptr %9, align 4, !tbaa !38
  %234 = fsub float %232, %233
  store float %234, ptr %1, align 4, !tbaa !38
  %235 = getelementptr inbounds float, ptr %231, i64 1
  %236 = load float, ptr %235, align 4, !tbaa !38
  %237 = getelementptr inbounds float, ptr %9, i64 1
  %238 = load float, ptr %237, align 4, !tbaa !38
  %239 = fsub float %236, %238
  %240 = getelementptr inbounds float, ptr %1, i64 1
  store float %239, ptr %240, align 4, !tbaa !38
  %241 = getelementptr inbounds float, ptr %231, i64 2
  %242 = load float, ptr %241, align 4, !tbaa !38
  %243 = getelementptr inbounds float, ptr %9, i64 2
  %244 = load float, ptr %243, align 4, !tbaa !38
  %245 = fsub float %242, %244
  br label %246

246:                                              ; preds = %230, %217
  %247 = phi float [ %245, %230 ], [ %229, %217 ]
  %248 = getelementptr inbounds float, ptr %1, i64 2
  store float %247, ptr %248, align 4, !tbaa !38
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #11
  br label %258

249:                                              ; preds = %191, %186
  %250 = getelementptr inbounds %struct.Object, ptr %162, i64 0, i32 47, i64 3
  %251 = load float, ptr %250, align 4, !tbaa !38
  store float %251, ptr %1, align 4, !tbaa !38
  %252 = getelementptr inbounds %struct.Object, ptr %162, i64 0, i32 47, i64 3, i64 1
  %253 = load float, ptr %252, align 4, !tbaa !38
  %254 = getelementptr inbounds float, ptr %1, i64 1
  store float %253, ptr %254, align 4, !tbaa !38
  %255 = getelementptr inbounds %struct.Object, ptr %162, i64 0, i32 47, i64 3, i64 2
  %256 = load float, ptr %255, align 4, !tbaa !38
  %257 = getelementptr inbounds float, ptr %1, i64 2
  store float %256, ptr %257, align 4, !tbaa !38
  br label %258

258:                                              ; preds = %249, %246
  %259 = icmp eq i32 %3, 0
  br i1 %259, label %270, label %260

260:                                              ; preds = %258
  %261 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 2
  %262 = getelementptr inbounds %struct.EffectorCache, ptr %0, i64 0, i32 11
  %263 = load float, ptr %262, align 4, !tbaa !38
  store float %263, ptr %261, align 4, !tbaa !38
  %264 = getelementptr inbounds %struct.EffectorCache, ptr %0, i64 0, i32 11, i64 1
  %265 = load float, ptr %264, align 4, !tbaa !38
  %266 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 2, i64 1
  store float %265, ptr %266, align 4, !tbaa !38
  %267 = getelementptr inbounds %struct.EffectorCache, ptr %0, i64 0, i32 11, i64 2
  %268 = load float, ptr %267, align 4, !tbaa !38
  %269 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 2, i64 2
  store float %268, ptr %269, align 4, !tbaa !38
  br label %270

270:                                              ; preds = %260, %258
  %271 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 6
  store float 0.000000e+00, ptr %271, align 8, !tbaa !176
  br label %272

272:                                              ; preds = %101, %61, %270, %158, %26
  %273 = phi i32 [ %54, %26 ], [ 1, %101 ], [ 0, %61 ], [ %159, %158 ], [ 1, %270 ]
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %383, label %275

275:                                              ; preds = %272
  %276 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 3
  %277 = load ptr, ptr %2, align 8, !tbaa !132
  %278 = load float, ptr %277, align 4, !tbaa !38
  %279 = load float, ptr %1, align 4, !tbaa !38
  %280 = fsub float %278, %279
  store float %280, ptr %276, align 4, !tbaa !38
  %281 = getelementptr inbounds float, ptr %277, i64 1
  %282 = load float, ptr %281, align 4, !tbaa !38
  %283 = getelementptr inbounds float, ptr %1, i64 1
  %284 = load float, ptr %283, align 4, !tbaa !38
  %285 = fsub float %282, %284
  %286 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 3, i64 1
  store float %285, ptr %286, align 4, !tbaa !38
  %287 = getelementptr inbounds float, ptr %277, i64 2
  %288 = load float, ptr %287, align 4, !tbaa !38
  %289 = getelementptr inbounds float, ptr %1, i64 2
  %290 = load float, ptr %289, align 4, !tbaa !38
  %291 = fsub float %288, %290
  %292 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 3, i64 2
  store float %291, ptr %292, align 4, !tbaa !38
  %293 = fmul float %285, %285
  %294 = call float @llvm.fmuladd.f32(float %280, float %280, float %293)
  %295 = call float @llvm.fmuladd.f32(float %291, float %291, float %294)
  %296 = call float @sqrtf(float noundef %295) #11
  %297 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 4
  store float %296, ptr %297, align 8, !tbaa !151
  %298 = load ptr, ptr %15, align 8, !tbaa !79
  %299 = icmp eq ptr %298, null
  br i1 %299, label %317, label %300

300:                                              ; preds = %275
  %301 = getelementptr inbounds %struct.PartDeflect, ptr %298, i64 0, i32 2
  %302 = load i16, ptr %301, align 2, !tbaa !48
  %303 = icmp eq i16 %302, 7
  br i1 %303, label %304, label %317

304:                                              ; preds = %300
  %305 = getelementptr inbounds %struct.PartDeflect, ptr %298, i64 0, i32 12
  %306 = load float, ptr %305, align 8, !tbaa !58
  %307 = fcmp une float %306, 0.000000e+00
  br i1 %307, label %308, label %317

308:                                              ; preds = %304
  %309 = fsub float %296, %306
  %310 = fdiv float %309, %296
  %311 = load float, ptr %276, align 4, !tbaa !38
  %312 = fmul float %310, %311
  store float %312, ptr %276, align 4, !tbaa !38
  %313 = load float, ptr %286, align 4, !tbaa !38
  %314 = fmul float %310, %313
  store float %314, ptr %286, align 4, !tbaa !38
  %315 = load float, ptr %292, align 4, !tbaa !38
  %316 = fmul float %310, %315
  store float %316, ptr %292, align 4, !tbaa !38
  br label %317

317:                                              ; preds = %308, %304, %300, %275
  %318 = getelementptr inbounds %struct.EffectorCache, ptr %0, i64 0, i32 13
  %319 = load i32, ptr %318, align 8, !tbaa !126
  %320 = and i32 %319, 4
  %321 = icmp eq i32 %320, 0
  %322 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 9
  br i1 %321, label %337, label %323

323:                                              ; preds = %317
  %324 = load float, ptr %276, align 4, !tbaa !38
  store float %324, ptr %322, align 4, !tbaa !38
  %325 = load float, ptr %286, align 4, !tbaa !38
  %326 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 9, i64 1
  store float %325, ptr %326, align 4, !tbaa !38
  %327 = load float, ptr %292, align 4, !tbaa !38
  %328 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 9, i64 2
  store float %327, ptr %328, align 4, !tbaa !38
  %329 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 8
  %330 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 1
  %331 = load float, ptr %330, align 4, !tbaa !38
  store float %331, ptr %329, align 4, !tbaa !38
  %332 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 1, i64 1
  %333 = load float, ptr %332, align 4, !tbaa !38
  %334 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 8, i64 1
  store float %333, ptr %334, align 4, !tbaa !38
  %335 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 1, i64 2
  %336 = load float, ptr %335, align 4, !tbaa !38
  br label %380

337:                                              ; preds = %317
  %338 = load ptr, ptr %2, align 8, !tbaa !132
  %339 = getelementptr inbounds %struct.EffectorCache, ptr %0, i64 0, i32 3
  %340 = load ptr, ptr %339, align 8, !tbaa !77
  %341 = getelementptr inbounds %struct.Object, ptr %340, i64 0, i32 47, i64 3
  %342 = load float, ptr %338, align 4, !tbaa !38
  %343 = load float, ptr %341, align 4, !tbaa !38
  %344 = fsub float %342, %343
  store float %344, ptr %322, align 4, !tbaa !38
  %345 = getelementptr inbounds float, ptr %338, i64 1
  %346 = load float, ptr %345, align 4, !tbaa !38
  %347 = getelementptr inbounds %struct.Object, ptr %340, i64 0, i32 47, i64 3, i64 1
  %348 = load float, ptr %347, align 4, !tbaa !38
  %349 = fsub float %346, %348
  %350 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 9, i64 1
  store float %349, ptr %350, align 4, !tbaa !38
  %351 = getelementptr inbounds float, ptr %338, i64 2
  %352 = load float, ptr %351, align 4, !tbaa !38
  %353 = getelementptr inbounds %struct.Object, ptr %340, i64 0, i32 47, i64 3, i64 2
  %354 = load float, ptr %353, align 4, !tbaa !38
  %355 = fsub float %352, %354
  %356 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 9, i64 2
  store float %355, ptr %356, align 4, !tbaa !38
  %357 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 8
  %358 = getelementptr inbounds %struct.Object, ptr %340, i64 0, i32 47, i64 2
  %359 = load float, ptr %358, align 4, !tbaa !38
  %360 = getelementptr inbounds %struct.Object, ptr %340, i64 0, i32 47, i64 2, i64 1
  %361 = load float, ptr %360, align 4, !tbaa !38
  %362 = fmul float %361, %361
  %363 = call float @llvm.fmuladd.f32(float %359, float %359, float %362)
  %364 = getelementptr inbounds %struct.Object, ptr %340, i64 0, i32 47, i64 2, i64 2
  %365 = load float, ptr %364, align 4, !tbaa !38
  %366 = call float @llvm.fmuladd.f32(float %365, float %365, float %363)
  %367 = fcmp ogt float %366, 0x38AA95A5C0000000
  br i1 %367, label %368, label %378

368:                                              ; preds = %337
  %369 = call float @sqrtf(float noundef %366) #11
  %370 = fdiv float 1.000000e+00, %369
  %371 = load float, ptr %358, align 4, !tbaa !38
  %372 = fmul float %371, %370
  store float %372, ptr %357, align 4, !tbaa !38
  %373 = load float, ptr %360, align 4, !tbaa !38
  %374 = fmul float %370, %373
  %375 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 8, i64 1
  store float %374, ptr %375, align 4, !tbaa !38
  %376 = load float, ptr %364, align 4, !tbaa !38
  %377 = fmul float %370, %376
  br label %380

378:                                              ; preds = %337
  store float 0.000000e+00, ptr %357, align 4, !tbaa !38
  %379 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 8, i64 1
  store float 0.000000e+00, ptr %379, align 4, !tbaa !38
  br label %380

380:                                              ; preds = %323, %368, %378
  %381 = phi float [ 0.000000e+00, %378 ], [ %377, %368 ], [ %336, %323 ]
  %382 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 8, i64 2
  store float %381, ptr %382, align 4, !tbaa !38
  br label %383

383:                                              ; preds = %380, %272
  ret i32 %273
}

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

declare i32 @psys_get_particle_state(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @mul_qt_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @project_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @pdDoEffectors(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [4 x %struct.TexResult], align 16
  %10 = alloca [3 x float], align 4
  %11 = alloca ptr, align 8
  %12 = alloca [3 x float], align 4
  %13 = alloca %struct.BVHTreeRayHit, align 4
  %14 = alloca %struct.EffectorData, align 8
  %15 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %14) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #11
  store i32 0, ptr %15, align 4, !tbaa !181
  %16 = icmp eq ptr %0, null
  br i1 %16, label %1010, label %17

17:                                               ; preds = %6
  %18 = load ptr, ptr %0, align 8, !tbaa !34
  %19 = icmp eq ptr %18, null
  br i1 %19, label %1010, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.EffectorData, ptr %14, i64 0, i32 10
  %22 = getelementptr inbounds %struct.EffectedPoint, ptr %3, i64 0, i32 9
  %23 = getelementptr inbounds %struct.EffectorData, ptr %14, i64 0, i32 7
  %24 = getelementptr inbounds %struct.EffectorData, ptr %14, i64 0, i32 10
  %25 = getelementptr inbounds %struct.EffectedPoint, ptr %3, i64 0, i32 9
  %26 = getelementptr inbounds %struct.EffectorData, ptr %14, i64 0, i32 5
  %27 = icmp eq ptr %1, null
  %28 = getelementptr inbounds %struct.EffectorData, ptr %14, i64 0, i32 3
  %29 = getelementptr inbounds %struct.EffectorData, ptr %14, i64 0, i32 3, i64 1
  %30 = getelementptr inbounds float, ptr %12, i64 1
  %31 = getelementptr inbounds %struct.EffectorData, ptr %14, i64 0, i32 3, i64 2
  %32 = getelementptr inbounds float, ptr %12, i64 2
  %33 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %13, i64 0, i32 3
  %34 = getelementptr inbounds float, ptr %4, i64 1
  %35 = getelementptr inbounds float, ptr %4, i64 2
  %36 = getelementptr inbounds %struct.EffectorData, ptr %14, i64 0, i32 3
  %37 = getelementptr inbounds %struct.EffectorData, ptr %14, i64 0, i32 3, i64 1
  %38 = getelementptr inbounds float, ptr %7, i64 1
  %39 = getelementptr inbounds %struct.EffectorData, ptr %14, i64 0, i32 3, i64 2
  %40 = getelementptr inbounds float, ptr %7, i64 2
  %41 = getelementptr inbounds %struct.EffectedPoint, ptr %3, i64 0, i32 1
  %42 = getelementptr inbounds %struct.EffectedPoint, ptr %3, i64 0, i32 1
  %43 = getelementptr inbounds %struct.EffectedPoint, ptr %3, i64 0, i32 5
  %44 = getelementptr inbounds %struct.EffectorData, ptr %14, i64 0, i32 9
  %45 = getelementptr inbounds %struct.EffectorData, ptr %14, i64 0, i32 8
  %46 = getelementptr inbounds %struct.EffectorData, ptr %14, i64 0, i32 9, i64 1
  %47 = getelementptr inbounds %struct.EffectorData, ptr %14, i64 0, i32 8, i64 1
  %48 = getelementptr inbounds %struct.EffectorData, ptr %14, i64 0, i32 9, i64 2
  %49 = getelementptr inbounds %struct.EffectorData, ptr %14, i64 0, i32 8, i64 2
  %50 = getelementptr inbounds %struct.EffectorData, ptr %14, i64 0, i32 6
  %51 = getelementptr inbounds %struct.EffectedPoint, ptr %3, i64 0, i32 6
  %52 = getelementptr inbounds %struct.EffectorData, ptr %14, i64 0, i32 4
  %53 = getelementptr inbounds %struct.EffectedPoint, ptr %3, i64 0, i32 7
  %54 = getelementptr inbounds %struct.EffectedPoint, ptr %3, i64 0, i32 1
  %55 = getelementptr inbounds %struct.EffectedPoint, ptr %3, i64 0, i32 5
  %56 = getelementptr inbounds %struct.EffectorData, ptr %14, i64 0, i32 1
  %57 = getelementptr inbounds %struct.EffectorData, ptr %14, i64 0, i32 1, i64 1
  %58 = getelementptr inbounds %struct.EffectorData, ptr %14, i64 0, i32 1, i64 2
  %59 = getelementptr inbounds %struct.EffectorData, ptr %14, i64 0, i32 1
  %60 = getelementptr inbounds %struct.EffectorData, ptr %14, i64 0, i32 1, i64 1
  %61 = getelementptr inbounds %struct.EffectorData, ptr %14, i64 0, i32 1, i64 2
  %62 = getelementptr inbounds %struct.EffectedPoint, ptr %3, i64 0, i32 1
  %63 = getelementptr inbounds %struct.EffectedPoint, ptr %3, i64 0, i32 5
  %64 = getelementptr inbounds %struct.EffectorData, ptr %14, i64 0, i32 8
  %65 = getelementptr inbounds %struct.EffectorData, ptr %14, i64 0, i32 9
  %66 = getelementptr inbounds %struct.EffectorData, ptr %14, i64 0, i32 8, i64 1
  %67 = getelementptr inbounds %struct.EffectorData, ptr %14, i64 0, i32 9, i64 2
  %68 = getelementptr inbounds %struct.EffectorData, ptr %14, i64 0, i32 8, i64 2
  %69 = getelementptr inbounds %struct.EffectorData, ptr %14, i64 0, i32 9, i64 1
  %70 = getelementptr inbounds %struct.EffectedPoint, ptr %3, i64 0, i32 1
  %71 = getelementptr inbounds %struct.EffectedPoint, ptr %3, i64 0, i32 5
  %72 = getelementptr inbounds %struct.EffectorData, ptr %14, i64 0, i32 1
  %73 = getelementptr inbounds %struct.EffectorData, ptr %14, i64 0, i32 1, i64 1
  %74 = getelementptr inbounds %struct.EffectorData, ptr %14, i64 0, i32 1, i64 2
  %75 = getelementptr inbounds %struct.EffectorData, ptr %14, i64 0, i32 4
  %76 = getelementptr inbounds %struct.EffectorData, ptr %14, i64 0, i32 1
  %77 = getelementptr inbounds %struct.EffectorData, ptr %14, i64 0, i32 1, i64 1
  %78 = getelementptr inbounds %struct.EffectorData, ptr %14, i64 0, i32 1, i64 2
  %79 = getelementptr inbounds %struct.EffectedPoint, ptr %3, i64 0, i32 5
  %80 = getelementptr inbounds %struct.EffectedPoint, ptr %3, i64 0, i32 1
  %81 = getelementptr inbounds %struct.EffectedPoint, ptr %3, i64 0, i32 2
  %82 = getelementptr inbounds %struct.EffectedPoint, ptr %3, i64 0, i32 3
  %83 = getelementptr inbounds float, ptr %8, i64 1
  %84 = getelementptr inbounds float, ptr %8, i64 2
  %85 = getelementptr inbounds %struct.EffectedPoint, ptr %3, i64 0, i32 8
  %86 = icmp ne ptr %5, null
  %87 = getelementptr inbounds float, ptr %5, i64 1
  %88 = getelementptr inbounds float, ptr %5, i64 2
  %89 = getelementptr inbounds [4 x %struct.TexResult], ptr %9, i64 0, i64 3
  %90 = getelementptr inbounds [4 x %struct.TexResult], ptr %9, i64 0, i64 3, i32 6
  %91 = getelementptr inbounds [4 x %struct.TexResult], ptr %9, i64 0, i64 2
  %92 = getelementptr inbounds [4 x %struct.TexResult], ptr %9, i64 0, i64 2, i32 6
  %93 = getelementptr inbounds [4 x %struct.TexResult], ptr %9, i64 0, i64 1
  %94 = getelementptr inbounds [4 x %struct.TexResult], ptr %9, i64 0, i64 1, i32 6
  %95 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 6
  %96 = getelementptr inbounds float, ptr %10, i64 1
  %97 = getelementptr inbounds float, ptr %10, i64 2
  %98 = getelementptr inbounds %struct.EffectorData, ptr %14, i64 0, i32 1
  %99 = getelementptr inbounds %struct.EffectorData, ptr %14, i64 0, i32 1, i64 1
  %100 = getelementptr inbounds %struct.EffectorData, ptr %14, i64 0, i32 1, i64 2
  %101 = getelementptr inbounds [4 x %struct.TexResult], ptr %9, i64 0, i64 2, i32 3
  %102 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 3
  %103 = getelementptr inbounds [4 x %struct.TexResult], ptr %9, i64 0, i64 3, i32 2
  %104 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 2
  %105 = getelementptr inbounds [4 x %struct.TexResult], ptr %9, i64 0, i64 3, i32 1
  %106 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 1
  %107 = getelementptr inbounds [4 x %struct.TexResult], ptr %9, i64 0, i64 1, i32 3
  %108 = getelementptr inbounds [4 x %struct.TexResult], ptr %9, i64 0, i64 1, i32 2
  %109 = getelementptr inbounds [4 x %struct.TexResult], ptr %9, i64 0, i64 2, i32 1
  %110 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 1
  %111 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 2
  %112 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 3
  %113 = getelementptr inbounds %struct.EffectorData, ptr %14, i64 0, i32 1
  %114 = getelementptr inbounds %struct.EffectorData, ptr %14, i64 0, i32 1, i64 1
  %115 = getelementptr inbounds %struct.EffectorData, ptr %14, i64 0, i32 1, i64 2
  %116 = getelementptr inbounds float, ptr %4, i64 1
  %117 = getelementptr inbounds float, ptr %4, i64 2
  %118 = icmp ne ptr %5, null
  %119 = getelementptr inbounds %struct.EffectorData, ptr %14, i64 0, i32 2
  %120 = getelementptr inbounds float, ptr %5, i64 1
  %121 = getelementptr inbounds %struct.EffectorData, ptr %14, i64 0, i32 2, i64 1
  %122 = getelementptr inbounds float, ptr %5, i64 2
  %123 = getelementptr inbounds %struct.EffectorData, ptr %14, i64 0, i32 2, i64 2
  br label %127

124:                                              ; preds = %1006, %190
  %125 = load ptr, ptr %128, align 8, !tbaa !34
  %126 = icmp eq ptr %125, null
  br i1 %126, label %1010, label %127, !llvm.loop !186

127:                                              ; preds = %20, %124
  %128 = phi ptr [ %18, %20 ], [ %125, %124 ]
  %129 = phi i32 [ 1, %20 ], [ %191, %124 ]
  %130 = getelementptr inbounds %struct.EffectorCache, ptr %128, i64 0, i32 6
  %131 = load ptr, ptr %130, align 8, !tbaa !79
  %132 = getelementptr inbounds %struct.PartDeflect, ptr %131, i64 0, i32 4
  %133 = load i16, ptr %132, align 2, !tbaa !56
  %134 = icmp eq i16 %133, 3
  br i1 %134, label %135, label %157

135:                                              ; preds = %127
  store ptr %15, ptr %24, align 8, !tbaa !180
  store i32 0, ptr %15, align 4, !tbaa !181
  %136 = getelementptr inbounds %struct.EffectorCache, ptr %128, i64 0, i32 3
  %137 = load ptr, ptr %136, align 8, !tbaa !77
  %138 = getelementptr inbounds %struct.Object, ptr %137, i64 0, i32 120
  %139 = load ptr, ptr %138, align 8, !tbaa !74
  %140 = icmp eq ptr %139, null
  br i1 %140, label %144, label %141

141:                                              ; preds = %135
  %142 = getelementptr inbounds %struct.DerivedMesh, ptr %139, i64 0, i32 5
  %143 = load i32, ptr %142, align 8, !tbaa !187
  br label %144

144:                                              ; preds = %141, %135
  %145 = phi i32 [ %143, %141 ], [ 1, %135 ]
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %190, label %147

147:                                              ; preds = %144
  %148 = getelementptr inbounds %struct.PartDeflect, ptr %131, i64 0, i32 2
  %149 = load i16, ptr %148, align 2, !tbaa !48
  %150 = icmp eq i16 %149, 7
  br i1 %150, label %151, label %190

151:                                              ; preds = %147
  %152 = load i32, ptr %25, align 4, !tbaa !136
  %153 = icmp sgt i32 %152, -1
  br i1 %153, label %154, label %190

154:                                              ; preds = %151
  %155 = srem i32 %152, %145
  store i32 %155, ptr %15, align 4, !tbaa !181
  %156 = add nuw nsw i32 %155, 1
  br label %190

157:                                              ; preds = %127
  %158 = getelementptr inbounds %struct.EffectorCache, ptr %128, i64 0, i32 4
  %159 = load ptr, ptr %158, align 8, !tbaa !78
  %160 = icmp eq ptr %159, null
  br i1 %160, label %189, label %161

161:                                              ; preds = %157
  store ptr %15, ptr %21, align 8, !tbaa !180
  store i32 0, ptr %15, align 4, !tbaa !181
  %162 = getelementptr inbounds %struct.ParticleSystem, ptr %159, i64 0, i32 26
  %163 = load i32, ptr %162, align 8, !tbaa !188
  %164 = getelementptr inbounds %struct.PartDeflect, ptr %131, i64 0, i32 2
  %165 = load i16, ptr %164, align 2, !tbaa !48
  switch i16 %165, label %177 [
    i16 8, label %166
    i16 7, label %169
  ]

166:                                              ; preds = %161
  %167 = getelementptr inbounds %struct.PartDeflect, ptr %131, i64 0, i32 9
  %168 = load float, ptr %167, align 4, !tbaa !54
  store float %168, ptr %23, align 4, !tbaa !189
  br label %177

169:                                              ; preds = %161
  %170 = load i32, ptr %131, align 8, !tbaa !59
  %171 = and i32 %170, 128
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %169
  %174 = load i32, ptr %22, align 4, !tbaa !136
  %175 = srem i32 %174, %163
  store i32 %175, ptr %15, align 4, !tbaa !181
  %176 = add nsw i32 %175, 1
  br label %177

177:                                              ; preds = %173, %169, %166, %161
  %178 = phi i32 [ %163, %161 ], [ %176, %173 ], [ %163, %169 ], [ %163, %166 ]
  %179 = getelementptr inbounds %struct.ParticleSystem, ptr %159, i64 0, i32 2
  %180 = load ptr, ptr %179, align 8, !tbaa !91
  %181 = getelementptr inbounds %struct.ParticleSettings, ptr %180, i64 0, i32 66
  %182 = load i32, ptr %181, align 8, !tbaa !190
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %190, label %184

184:                                              ; preds = %177
  %185 = load i32, ptr %162, align 8, !tbaa !188
  %186 = icmp sgt i32 %185, %182
  br i1 %186, label %187, label %190

187:                                              ; preds = %184
  %188 = sdiv i32 %185, %182
  br label %190

189:                                              ; preds = %157
  store i32 0, ptr %15, align 4, !tbaa !181
  br label %190

190:                                              ; preds = %184, %187, %144, %147, %151, %154, %177, %189
  %191 = phi i32 [ %129, %144 ], [ %129, %154 ], [ %129, %151 ], [ %129, %147 ], [ %129, %189 ], [ %129, %177 ], [ %188, %187 ], [ 1, %184 ]
  %192 = phi i32 [ %145, %144 ], [ %156, %154 ], [ %145, %151 ], [ %145, %147 ], [ 1, %189 ], [ %178, %177 ], [ %178, %187 ], [ %178, %184 ]
  %193 = load i32, ptr %15, align 4, !tbaa !181
  %194 = icmp slt i32 %193, %192
  br i1 %194, label %195, label %124

195:                                              ; preds = %190
  %196 = getelementptr inbounds %struct.EffectorCache, ptr %128, i64 0, i32 2
  %197 = getelementptr inbounds %struct.EffectorCache, ptr %128, i64 0, i32 3
  %198 = getelementptr inbounds %struct.EffectorCache, ptr %128, i64 0, i32 3
  %199 = getelementptr inbounds %struct.EffectorCache, ptr %128, i64 0, i32 3
  %200 = getelementptr inbounds %struct.EffectorCache, ptr %128, i64 0, i32 2
  %201 = getelementptr inbounds %struct.EffectorCache, ptr %128, i64 0, i32 13
  br label %202

202:                                              ; preds = %195, %1006
  %203 = call i32 @get_effector_data(ptr noundef nonnull %128, ptr noundef nonnull %14, ptr noundef %3, i32 noundef 0)
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %991, label %205

205:                                              ; preds = %202
  %206 = call float @effector_falloff(ptr noundef nonnull %128, ptr noundef nonnull %14, ptr poison, ptr noundef %2)
  store float %206, ptr %26, align 4, !tbaa !191
  %207 = fcmp ogt float %206, 0.000000e+00
  br i1 %207, label %208, label %295

208:                                              ; preds = %205
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #11
  store ptr %1, ptr %11, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #11
  %209 = load ptr, ptr %130, align 8, !tbaa !79
  %210 = load i32, ptr %209, align 8, !tbaa !59
  %211 = and i32 %210, 8192
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %291, label %213

213:                                              ; preds = %208
  br i1 %27, label %214, label %218

214:                                              ; preds = %213
  %215 = load ptr, ptr %196, align 8, !tbaa !75
  %216 = load ptr, ptr %197, align 8, !tbaa !77
  %217 = call ptr @get_collider_cache(ptr noundef %215, ptr noundef %216, ptr noundef null) #11
  store ptr %217, ptr %11, align 8, !tbaa !34
  br label %218

218:                                              ; preds = %214, %213
  %219 = load ptr, ptr %11, align 8, !tbaa !34
  %220 = icmp eq ptr %219, null
  br i1 %220, label %291, label %221

221:                                              ; preds = %218
  %222 = load float, ptr %28, align 4, !tbaa !38
  %223 = fneg float %222
  store float %223, ptr %12, align 4, !tbaa !38
  %224 = load float, ptr %29, align 8, !tbaa !38
  %225 = fneg float %224
  store float %225, ptr %30, align 4, !tbaa !38
  %226 = load float, ptr %31, align 4, !tbaa !38
  %227 = fneg float %226
  store float %227, ptr %32, align 4, !tbaa !38
  %228 = fmul float %224, %224
  %229 = call float @llvm.fmuladd.f32(float %222, float %222, float %228)
  %230 = call float @llvm.fmuladd.f32(float %226, float %226, float %229)
  %231 = fcmp ogt float %230, 0x38AA95A5C0000000
  br i1 %231, label %232, label %242

232:                                              ; preds = %221
  %233 = call float @sqrtf(float noundef %230) #11
  %234 = fdiv float 1.000000e+00, %233
  %235 = load float, ptr %12, align 4, !tbaa !38
  %236 = fmul float %235, %234
  store float %236, ptr %12, align 4, !tbaa !38
  %237 = load float, ptr %30, align 4, !tbaa !38
  %238 = fmul float %234, %237
  store float %238, ptr %30, align 4, !tbaa !38
  %239 = load float, ptr %32, align 4, !tbaa !38
  %240 = fmul float %234, %239
  %241 = fadd float %233, 0x3E80000000000000
  br label %243

242:                                              ; preds = %221
  store float 0.000000e+00, ptr %12, align 4, !tbaa !38
  store float 0.000000e+00, ptr %30, align 4, !tbaa !38
  br label %243

243:                                              ; preds = %242, %232
  %244 = phi float [ 0.000000e+00, %242 ], [ %240, %232 ]
  %245 = phi float [ 0x3E80000000000000, %242 ], [ %241, %232 ]
  store float %244, ptr %32, align 4, !tbaa !38
  %246 = load ptr, ptr %11, align 8, !tbaa !34
  br label %247

247:                                              ; preds = %284, %243
  %248 = phi ptr [ %246, %243 ], [ %250, %284 ]
  %249 = phi float [ 1.000000e+00, %243 ], [ %285, %284 ]
  %250 = load ptr, ptr %248, align 8, !tbaa !34
  %251 = icmp eq ptr %250, null
  br i1 %251, label %288, label %252

252:                                              ; preds = %247
  %253 = getelementptr inbounds %struct.ColliderCache, ptr %250, i64 0, i32 2
  %254 = load ptr, ptr %253, align 8, !tbaa !192
  %255 = load ptr, ptr %198, align 8, !tbaa !77
  %256 = icmp eq ptr %254, %255
  br i1 %256, label %284, label %257

257:                                              ; preds = %252
  %258 = getelementptr inbounds %struct.ColliderCache, ptr %250, i64 0, i32 3
  %259 = load ptr, ptr %258, align 8, !tbaa !194
  %260 = getelementptr inbounds %struct.CollisionModifierData, ptr %259, i64 0, i32 12
  %261 = load ptr, ptr %260, align 8, !tbaa !195
  %262 = icmp eq ptr %261, null
  br i1 %262, label %284, label %263

263:                                              ; preds = %257
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %13) #11
  store i32 -1, ptr %13, align 4, !tbaa !197
  store float %245, ptr %33, align 4, !tbaa !199
  %264 = load ptr, ptr %3, align 8, !tbaa !132
  %265 = call i32 @BLI_bvhtree_ray_cast(ptr noundef nonnull %261, ptr noundef %264, ptr noundef nonnull %12, float noundef 0.000000e+00, ptr noundef nonnull %13, ptr noundef nonnull @eff_tri_ray_hit, ptr noundef null) #11
  %266 = icmp sgt i32 %265, -1
  br i1 %266, label %267, label %281

267:                                              ; preds = %263
  %268 = load ptr, ptr %253, align 8, !tbaa !192
  %269 = getelementptr inbounds %struct.Object, ptr %268, i64 0, i32 110
  %270 = load ptr, ptr %269, align 8, !tbaa !73
  %271 = getelementptr inbounds %struct.PartDeflect, ptr %270, i64 0, i32 25
  %272 = load float, ptr %271, align 4, !tbaa !200
  %273 = fsub float 1.000000e+00, %272
  %274 = fcmp olt float %273, 0.000000e+00
  %275 = fcmp ogt float %273, 1.000000e+00
  %276 = select i1 %275, float 1.000000e+00, float %273
  %277 = select i1 %274, float 0.000000e+00, float %276
  %278 = fmul float %249, %277
  %279 = fcmp ugt float %278, 0.000000e+00
  br i1 %279, label %280, label %281

280:                                              ; preds = %267
  br label %281

281:                                              ; preds = %280, %267, %263
  %282 = phi float [ %278, %267 ], [ %249, %263 ], [ %278, %280 ]
  %283 = phi i32 [ 2, %267 ], [ 0, %263 ], [ 0, %280 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %13) #11
  br label %284

284:                                              ; preds = %281, %257, %252
  %285 = phi float [ %249, %252 ], [ %249, %257 ], [ %282, %281 ]
  %286 = phi i32 [ 4, %252 ], [ 0, %257 ], [ %283, %281 ]
  %287 = icmp eq i32 %286, 2
  br i1 %287, label %288, label %247, !llvm.loop !201

288:                                              ; preds = %284, %247
  %289 = phi float [ %285, %284 ], [ %249, %247 ]
  br i1 %27, label %290, label %291

290:                                              ; preds = %288
  call void @free_collider_cache(ptr noundef nonnull %11) #11
  br label %291

291:                                              ; preds = %208, %218, %288, %290
  %292 = phi float [ 1.000000e+00, %208 ], [ 1.000000e+00, %218 ], [ %289, %290 ], [ %289, %288 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #11
  %293 = load float, ptr %26, align 4, !tbaa !191
  %294 = fmul float %292, %293
  store float %294, ptr %26, align 4, !tbaa !191
  br label %295

295:                                              ; preds = %291, %205
  %296 = load float, ptr %26, align 4, !tbaa !191
  %297 = fcmp ugt float %296, 0.000000e+00
  br i1 %297, label %298, label %1006

298:                                              ; preds = %295
  %299 = load ptr, ptr %130, align 8, !tbaa !79
  %300 = getelementptr inbounds %struct.PartDeflect, ptr %299, i64 0, i32 2
  %301 = load i16, ptr %300, align 2, !tbaa !48
  %302 = icmp eq i16 %301, 6
  br i1 %302, label %303, label %468

303:                                              ; preds = %298
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #11
  %304 = load ptr, ptr %130, align 8, !tbaa !79
  %305 = getelementptr inbounds %struct.PartDeflect, ptr %304, i64 0, i32 35
  %306 = load float, ptr %305, align 4, !tbaa !202
  %307 = getelementptr inbounds %struct.PartDeflect, ptr %304, i64 0, i32 5
  %308 = load i16, ptr %307, align 4, !tbaa !203
  %309 = getelementptr inbounds %struct.PartDeflect, ptr %304, i64 0, i32 36
  %310 = load ptr, ptr %309, align 8, !tbaa !60
  %311 = icmp eq ptr %310, null
  br i1 %311, label %467, label %312

312:                                              ; preds = %303
  store ptr null, ptr %90, align 8, !tbaa !204
  store ptr null, ptr %92, align 8, !tbaa !204
  store ptr null, ptr %94, align 8, !tbaa !204
  store ptr null, ptr %95, align 8, !tbaa !204
  %313 = getelementptr inbounds %struct.PartDeflect, ptr %304, i64 0, i32 9
  %314 = load float, ptr %313, align 4, !tbaa !54
  %315 = fmul float %296, %314
  %316 = load ptr, ptr %3, align 8, !tbaa !132
  %317 = load float, ptr %316, align 4, !tbaa !38
  store float %317, ptr %10, align 4, !tbaa !38
  %318 = getelementptr inbounds float, ptr %316, i64 1
  %319 = load float, ptr %318, align 4, !tbaa !38
  store float %319, ptr %96, align 4, !tbaa !38
  %320 = getelementptr inbounds float, ptr %316, i64 2
  %321 = load float, ptr %320, align 4, !tbaa !38
  store float %321, ptr %97, align 4, !tbaa !38
  %322 = load i32, ptr %304, align 8, !tbaa !59
  %323 = and i32 %322, 128
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %336, label %325

325:                                              ; preds = %312
  %326 = load float, ptr %98, align 4, !tbaa !38
  %327 = load float, ptr %99, align 8, !tbaa !38
  %328 = fmul float %319, %327
  %329 = call float @llvm.fmuladd.f32(float %317, float %326, float %328)
  %330 = load float, ptr %100, align 4, !tbaa !38
  %331 = call float @llvm.fmuladd.f32(float %321, float %330, float %329)
  %332 = fneg float %331
  %333 = call float @llvm.fmuladd.f32(float %326, float %332, float %317)
  store float %333, ptr %10, align 4, !tbaa !38
  %334 = call float @llvm.fmuladd.f32(float %327, float %332, float %319)
  store float %334, ptr %96, align 4, !tbaa !38
  %335 = call float @llvm.fmuladd.f32(float %330, float %332, float %321)
  store float %335, ptr %97, align 4, !tbaa !38
  br label %336

336:                                              ; preds = %325, %312
  %337 = and i32 %322, 64
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %342, label %339

339:                                              ; preds = %336
  %340 = load ptr, ptr %199, align 8, !tbaa !77
  %341 = getelementptr inbounds %struct.Object, ptr %340, i64 0, i32 50
  call void @mul_m4_v3(ptr noundef nonnull %341, ptr noundef nonnull %10) #11
  br label %342

342:                                              ; preds = %339, %336
  %343 = load ptr, ptr %200, align 8, !tbaa !75
  %344 = call zeroext i8 @BKE_scene_check_color_management_enabled(ptr noundef %343) #11
  %345 = load ptr, ptr %130, align 8, !tbaa !79
  %346 = getelementptr inbounds %struct.PartDeflect, ptr %345, i64 0, i32 36
  %347 = load ptr, ptr %346, align 8, !tbaa !60
  %348 = call i32 @multitex_ext(ptr noundef %347, ptr noundef nonnull %10, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef nonnull %9, ptr noundef null, i8 noundef zeroext %344) #11
  %349 = icmp ne i32 %348, 0
  %350 = icmp eq i16 %308, 0
  %351 = select i1 %349, i1 %350, i1 false
  br i1 %351, label %352, label %362

352:                                              ; preds = %342
  %353 = load float, ptr %110, align 4, !tbaa !206
  %354 = fsub float 5.000000e-01, %353
  %355 = fmul float %315, %354
  %356 = load float, ptr %111, align 8, !tbaa !207
  %357 = fsub float 5.000000e-01, %356
  %358 = fmul float %315, %357
  %359 = load float, ptr %112, align 4, !tbaa !208
  %360 = fsub float 5.000000e-01, %359
  %361 = fmul float %315, %360
  br label %438

362:                                              ; preds = %342
  %363 = fdiv float %315, %306
  %364 = load float, ptr %10, align 4, !tbaa !38
  %365 = fadd float %306, %364
  store float %365, ptr %10, align 4, !tbaa !38
  %366 = load ptr, ptr %130, align 8, !tbaa !79
  %367 = getelementptr inbounds %struct.PartDeflect, ptr %366, i64 0, i32 36
  %368 = load ptr, ptr %367, align 8, !tbaa !60
  %369 = call i32 @multitex_ext(ptr noundef %368, ptr noundef nonnull %10, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef nonnull %93, ptr noundef null, i8 noundef zeroext %344) #11
  %370 = load float, ptr %10, align 4, !tbaa !38
  %371 = fsub float %370, %306
  store float %371, ptr %10, align 4, !tbaa !38
  %372 = load float, ptr %96, align 4, !tbaa !38
  %373 = fadd float %306, %372
  store float %373, ptr %96, align 4, !tbaa !38
  %374 = load ptr, ptr %130, align 8, !tbaa !79
  %375 = getelementptr inbounds %struct.PartDeflect, ptr %374, i64 0, i32 36
  %376 = load ptr, ptr %375, align 8, !tbaa !60
  %377 = call i32 @multitex_ext(ptr noundef %376, ptr noundef nonnull %10, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef nonnull %91, ptr noundef null, i8 noundef zeroext %344) #11
  %378 = load float, ptr %96, align 4, !tbaa !38
  %379 = fsub float %378, %306
  store float %379, ptr %96, align 4, !tbaa !38
  %380 = load float, ptr %97, align 4, !tbaa !38
  %381 = fadd float %306, %380
  store float %381, ptr %97, align 4, !tbaa !38
  %382 = load ptr, ptr %130, align 8, !tbaa !79
  %383 = getelementptr inbounds %struct.PartDeflect, ptr %382, i64 0, i32 36
  %384 = load ptr, ptr %383, align 8, !tbaa !60
  %385 = call i32 @multitex_ext(ptr noundef %384, ptr noundef nonnull %10, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef nonnull %89, ptr noundef null, i8 noundef zeroext %344) #11
  %386 = icmp ne i16 %308, 1
  %387 = and i1 %386, %349
  br i1 %387, label %416, label %388

388:                                              ; preds = %362
  %389 = and i32 %348, 1
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %405, label %391

391:                                              ; preds = %388, %391
  %392 = phi i64 [ %403, %391 ], [ 0, %388 ]
  %393 = getelementptr inbounds [4 x %struct.TexResult], ptr %9, i64 0, i64 %392
  %394 = getelementptr inbounds [4 x %struct.TexResult], ptr %9, i64 0, i64 %392, i32 1
  %395 = load float, ptr %394, align 4, !tbaa !206
  %396 = getelementptr inbounds [4 x %struct.TexResult], ptr %9, i64 0, i64 %392, i32 2
  %397 = load float, ptr %396, align 8, !tbaa !207
  %398 = fadd float %395, %397
  %399 = getelementptr inbounds [4 x %struct.TexResult], ptr %9, i64 0, i64 %392, i32 3
  %400 = load float, ptr %399, align 4, !tbaa !208
  %401 = fadd float %398, %400
  %402 = fmul float %401, 0x3FD5555560000000
  store float %402, ptr %393, align 16, !tbaa !209
  %403 = add nuw nsw i64 %392, 1
  %404 = icmp eq i64 %403, 4
  br i1 %404, label %405, label %391, !llvm.loop !210

405:                                              ; preds = %391, %388
  %406 = load float, ptr %9, align 16, !tbaa !209
  %407 = load float, ptr %93, align 16, !tbaa !209
  %408 = fsub float %406, %407
  %409 = fmul float %363, %408
  %410 = load float, ptr %91, align 16, !tbaa !209
  %411 = fsub float %406, %410
  %412 = fmul float %363, %411
  %413 = load float, ptr %89, align 16, !tbaa !209
  %414 = fsub float %406, %413
  %415 = fmul float %363, %414
  br label %438

416:                                              ; preds = %362
  %417 = load float, ptr %101, align 4, !tbaa !208
  %418 = load float, ptr %102, align 4, !tbaa !208
  %419 = fsub float %417, %418
  %420 = load float, ptr %103, align 8, !tbaa !207
  %421 = load float, ptr %104, align 8, !tbaa !207
  %422 = fsub float %420, %421
  %423 = load float, ptr %105, align 4, !tbaa !206
  %424 = load float, ptr %106, align 4, !tbaa !206
  %425 = fsub float %423, %424
  %426 = load float, ptr %107, align 4, !tbaa !208
  %427 = fsub float %426, %418
  %428 = load float, ptr %108, align 8, !tbaa !207
  %429 = fsub float %428, %421
  %430 = load float, ptr %109, align 4, !tbaa !206
  %431 = fsub float %430, %424
  %432 = fsub float %419, %422
  %433 = fmul float %363, %432
  %434 = fsub float %425, %427
  %435 = fmul float %363, %434
  %436 = fsub float %429, %431
  %437 = fmul float %363, %436
  br label %438

438:                                              ; preds = %416, %405, %352
  %439 = phi float [ %361, %352 ], [ %437, %416 ], [ %415, %405 ]
  %440 = phi float [ %358, %352 ], [ %435, %416 ], [ %412, %405 ]
  %441 = phi float [ %355, %352 ], [ %433, %416 ], [ %409, %405 ]
  %442 = load ptr, ptr %130, align 8, !tbaa !79
  %443 = load i32, ptr %442, align 8, !tbaa !59
  %444 = and i32 %443, 128
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %457, label %446

446:                                              ; preds = %438
  %447 = load float, ptr %113, align 4, !tbaa !38
  %448 = load float, ptr %114, align 8, !tbaa !38
  %449 = fmul float %440, %448
  %450 = call float @llvm.fmuladd.f32(float %441, float %447, float %449)
  %451 = load float, ptr %115, align 4, !tbaa !38
  %452 = call float @llvm.fmuladd.f32(float %439, float %451, float %450)
  %453 = fneg float %452
  %454 = call float @llvm.fmuladd.f32(float %447, float %453, float %441)
  %455 = call float @llvm.fmuladd.f32(float %448, float %453, float %440)
  %456 = call float @llvm.fmuladd.f32(float %451, float %453, float %439)
  br label %457

457:                                              ; preds = %446, %438
  %458 = phi float [ %439, %438 ], [ %456, %446 ]
  %459 = phi float [ %440, %438 ], [ %455, %446 ]
  %460 = phi float [ %441, %438 ], [ %454, %446 ]
  %461 = load float, ptr %4, align 4, !tbaa !38
  %462 = fadd float %460, %461
  store float %462, ptr %4, align 4, !tbaa !38
  %463 = load float, ptr %116, align 4, !tbaa !38
  %464 = fadd float %459, %463
  store float %464, ptr %116, align 4, !tbaa !38
  %465 = load float, ptr %117, align 4, !tbaa !38
  %466 = fadd float %458, %465
  store float %466, ptr %117, align 4, !tbaa !38
  br label %467

467:                                              ; preds = %303, %457
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %9) #11
  br label %1006

468:                                              ; preds = %298
  %469 = load float, ptr %4, align 4, !tbaa !38
  %470 = load float, ptr %34, align 4, !tbaa !38
  %471 = load float, ptr %35, align 4, !tbaa !38
  %472 = getelementptr inbounds %struct.PartDeflect, ptr %299, i64 0, i32 37
  %473 = load ptr, ptr %472, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, i8 0, i64 12, i1 false)
  %474 = getelementptr inbounds %struct.PartDeflect, ptr %299, i64 0, i32 9
  %475 = load float, ptr %474, align 4, !tbaa !54
  %476 = getelementptr inbounds %struct.PartDeflect, ptr %299, i64 0, i32 10
  %477 = load float, ptr %476, align 8, !tbaa !55
  %478 = getelementptr inbounds %struct.PartDeflect, ptr %299, i64 0, i32 38
  %479 = load float, ptr %478, align 8, !tbaa !211
  %480 = fcmp ogt float %479, 0.000000e+00
  br i1 %480, label %481, label %510

481:                                              ; preds = %468
  %482 = call i32 @BLI_rng_get_int(ptr noundef %473) #11
  %483 = add nsw i32 %482, 1
  %484 = srem i32 %483, 128
  %485 = call float @BLI_rng_get_float(ptr noundef %473) #11
  %486 = fadd float %485, 1.000000e+00
  %487 = sitofp i32 %484 to float
  %488 = icmp sgt i32 %484, 64
  %489 = fdiv float %487, %486
  %490 = fneg float %489
  %491 = select i1 %488, float %489, float %490
  %492 = fmul float %479, %491
  %493 = fmul float %492, 7.812500e-03
  %494 = fadd float %475, %493
  %495 = load i16, ptr %300, align 2, !tbaa !48
  switch i16 %495, label %510 [
    i16 7, label %496
    i16 12, label %496
  ]

496:                                              ; preds = %481, %481
  %497 = call i32 @BLI_rng_get_int(ptr noundef %473) #11
  %498 = add nsw i32 %497, 1
  %499 = srem i32 %498, 128
  %500 = call float @BLI_rng_get_float(ptr noundef %473) #11
  %501 = fadd float %500, 1.000000e+00
  %502 = sitofp i32 %499 to float
  %503 = icmp sgt i32 %499, 64
  %504 = fdiv float %502, %501
  %505 = fneg float %504
  %506 = select i1 %503, float %504, float %505
  %507 = fmul float %479, %506
  %508 = fmul float %507, 7.812500e-03
  %509 = fadd float %477, %508
  br label %510

510:                                              ; preds = %496, %481, %468
  %511 = phi float [ %509, %496 ], [ %477, %468 ], [ %477, %481 ]
  %512 = phi float [ %494, %496 ], [ %475, %468 ], [ %494, %481 ]
  %513 = load float, ptr %36, align 4, !tbaa !38
  store float %513, ptr %7, align 4, !tbaa !38
  %514 = load float, ptr %37, align 8, !tbaa !38
  store float %514, ptr %38, align 4, !tbaa !38
  %515 = load float, ptr %39, align 4, !tbaa !38
  store float %515, ptr %40, align 4, !tbaa !38
  %516 = load i16, ptr %300, align 2, !tbaa !48
  switch i16 %516, label %881 [
    i16 4, label %517
    i16 1, label %526
    i16 2, label %550
    i16 3, label %636
    i16 7, label %702
    i16 8, label %730
    i16 9, label %738
    i16 10, label %973
    i16 11, label %761
    i16 12, label %803
    i16 13, label %843
  ]

517:                                              ; preds = %510
  %518 = load float, ptr %76, align 4, !tbaa !38
  store float %518, ptr %7, align 4, !tbaa !38
  %519 = load float, ptr %77, align 8, !tbaa !38
  store float %519, ptr %38, align 4, !tbaa !38
  %520 = load float, ptr %78, align 4, !tbaa !38
  store float %520, ptr %40, align 4, !tbaa !38
  %521 = load float, ptr %26, align 4, !tbaa !191
  %522 = fmul float %512, %521
  %523 = fmul float %518, %522
  store float %523, ptr %7, align 4, !tbaa !38
  %524 = fmul float %519, %522
  store float %524, ptr %38, align 4, !tbaa !38
  %525 = fmul float %520, %522
  store float %525, ptr %40, align 4, !tbaa !38
  br label %881

526:                                              ; preds = %510
  %527 = fmul float %514, %514
  %528 = call float @llvm.fmuladd.f32(float %513, float %513, float %527)
  %529 = call float @llvm.fmuladd.f32(float %515, float %515, float %528)
  %530 = fcmp ogt float %529, 0x38AA95A5C0000000
  br i1 %530, label %531, label %540

531:                                              ; preds = %526
  %532 = call float @sqrtf(float noundef %529) #11
  %533 = fdiv float 1.000000e+00, %532
  %534 = load float, ptr %7, align 4, !tbaa !38
  %535 = fmul float %534, %533
  store float %535, ptr %7, align 4, !tbaa !38
  %536 = load float, ptr %38, align 4, !tbaa !38
  %537 = fmul float %533, %536
  store float %537, ptr %38, align 4, !tbaa !38
  %538 = load float, ptr %40, align 4, !tbaa !38
  %539 = fmul float %533, %538
  br label %541

540:                                              ; preds = %526
  store float 0.000000e+00, ptr %7, align 4, !tbaa !38
  store float 0.000000e+00, ptr %38, align 4, !tbaa !38
  br label %541

541:                                              ; preds = %540, %531
  %542 = phi float [ 0.000000e+00, %540 ], [ %539, %531 ]
  store float %542, ptr %40, align 4, !tbaa !38
  %543 = load float, ptr %26, align 4, !tbaa !191
  %544 = fmul float %512, %543
  %545 = load float, ptr %7, align 4, !tbaa !38
  %546 = fmul float %545, %544
  store float %546, ptr %7, align 4, !tbaa !38
  %547 = load float, ptr %38, align 4, !tbaa !38
  %548 = fmul float %544, %547
  store float %548, ptr %38, align 4, !tbaa !38
  %549 = fmul float %542, %544
  store float %549, ptr %40, align 4, !tbaa !38
  br label %881

550:                                              ; preds = %510
  %551 = getelementptr inbounds %struct.PartDeflect, ptr %299, i64 0, i32 4
  %552 = load i16, ptr %551, align 2, !tbaa !56
  %553 = icmp eq i16 %552, 0
  br i1 %553, label %554, label %592

554:                                              ; preds = %550
  %555 = load float, ptr %73, align 8, !tbaa !38
  %556 = load float, ptr %74, align 4, !tbaa !38
  %557 = fneg float %556
  %558 = fmul float %514, %557
  %559 = call float @llvm.fmuladd.f32(float %555, float %515, float %558)
  store float %559, ptr %7, align 4, !tbaa !38
  %560 = load float, ptr %72, align 4, !tbaa !38
  %561 = fneg float %560
  %562 = fmul float %515, %561
  %563 = call float @llvm.fmuladd.f32(float %556, float %513, float %562)
  store float %563, ptr %38, align 4, !tbaa !38
  %564 = fneg float %555
  %565 = fmul float %513, %564
  %566 = call float @llvm.fmuladd.f32(float %560, float %514, float %565)
  store float %566, ptr %40, align 4, !tbaa !38
  %567 = fmul float %563, %563
  %568 = call float @llvm.fmuladd.f32(float %559, float %559, float %567)
  %569 = call float @llvm.fmuladd.f32(float %566, float %566, float %568)
  %570 = fcmp ogt float %569, 0x38AA95A5C0000000
  br i1 %570, label %571, label %580

571:                                              ; preds = %554
  %572 = call float @sqrtf(float noundef %569) #11
  %573 = fdiv float 1.000000e+00, %572
  %574 = load float, ptr %7, align 4, !tbaa !38
  %575 = fmul float %574, %573
  store float %575, ptr %7, align 4, !tbaa !38
  %576 = load float, ptr %38, align 4, !tbaa !38
  %577 = fmul float %573, %576
  store float %577, ptr %38, align 4, !tbaa !38
  %578 = load float, ptr %40, align 4, !tbaa !38
  %579 = fmul float %573, %578
  br label %581

580:                                              ; preds = %554
  store float 0.000000e+00, ptr %7, align 4, !tbaa !38
  store float 0.000000e+00, ptr %38, align 4, !tbaa !38
  br label %581

581:                                              ; preds = %580, %571
  %582 = phi float [ 0.000000e+00, %580 ], [ %579, %571 ]
  store float %582, ptr %40, align 4, !tbaa !38
  %583 = load float, ptr %75, align 8, !tbaa !151
  %584 = fmul float %512, %583
  %585 = load float, ptr %26, align 4, !tbaa !191
  %586 = fmul float %584, %585
  %587 = load float, ptr %7, align 4, !tbaa !38
  %588 = fmul float %587, %586
  store float %588, ptr %7, align 4, !tbaa !38
  %589 = load float, ptr %38, align 4, !tbaa !38
  %590 = fmul float %586, %589
  store float %590, ptr %38, align 4, !tbaa !38
  %591 = fmul float %582, %586
  store float %591, ptr %40, align 4, !tbaa !38
  br label %881

592:                                              ; preds = %550
  %593 = load float, ptr %66, align 4, !tbaa !38
  %594 = load float, ptr %67, align 4, !tbaa !38
  %595 = load float, ptr %68, align 8, !tbaa !38
  %596 = load float, ptr %69, align 8, !tbaa !38
  %597 = fneg float %595
  %598 = fmul float %596, %597
  %599 = call float @llvm.fmuladd.f32(float %593, float %594, float %598)
  %600 = load float, ptr %65, align 4, !tbaa !38
  %601 = load float, ptr %64, align 8, !tbaa !38
  %602 = fneg float %601
  %603 = fmul float %594, %602
  %604 = call float @llvm.fmuladd.f32(float %595, float %600, float %603)
  %605 = fneg float %593
  %606 = fmul float %600, %605
  %607 = call float @llvm.fmuladd.f32(float %601, float %596, float %606)
  %608 = load float, ptr %26, align 4, !tbaa !191
  %609 = fmul float %512, %608
  %610 = fmul float %599, %609
  %611 = fmul float %604, %609
  %612 = fmul float %607, %609
  %613 = fmul float %611, %597
  %614 = call float @llvm.fmuladd.f32(float %593, float %612, float %613)
  store float %614, ptr %7, align 4, !tbaa !38
  %615 = fmul float %612, %602
  %616 = call float @llvm.fmuladd.f32(float %595, float %610, float %615)
  store float %616, ptr %38, align 4, !tbaa !38
  %617 = fmul float %610, %605
  %618 = call float @llvm.fmuladd.f32(float %601, float %611, float %617)
  store float %618, ptr %40, align 4, !tbaa !38
  %619 = fmul float %609, %614
  store float %619, ptr %7, align 4, !tbaa !38
  %620 = fmul float %609, %616
  store float %620, ptr %38, align 4, !tbaa !38
  %621 = fmul float %609, %618
  store float %621, ptr %40, align 4, !tbaa !38
  %622 = load ptr, ptr %70, align 8, !tbaa !134
  %623 = load float, ptr %71, align 4, !tbaa !142
  %624 = fneg float %623
  %625 = load float, ptr %622, align 4, !tbaa !38
  %626 = call float @llvm.fmuladd.f32(float %625, float %624, float %610)
  %627 = getelementptr inbounds float, ptr %622, i64 1
  %628 = load float, ptr %627, align 4, !tbaa !38
  %629 = call float @llvm.fmuladd.f32(float %628, float %624, float %611)
  %630 = getelementptr inbounds float, ptr %622, i64 2
  %631 = load float, ptr %630, align 4, !tbaa !38
  %632 = call float @llvm.fmuladd.f32(float %631, float %624, float %612)
  %633 = fadd float %619, %626
  store float %633, ptr %7, align 4, !tbaa !38
  %634 = fadd float %620, %629
  store float %634, ptr %38, align 4, !tbaa !38
  %635 = fadd float %621, %632
  store float %635, ptr %40, align 4, !tbaa !38
  br label %881

636:                                              ; preds = %510
  %637 = load ptr, ptr %130, align 8, !tbaa !79
  %638 = getelementptr inbounds %struct.PartDeflect, ptr %637, i64 0, i32 4
  %639 = load i16, ptr %638, align 2, !tbaa !56
  %640 = icmp eq i16 %639, 0
  br i1 %640, label %641, label %654

641:                                              ; preds = %636
  %642 = load float, ptr %60, align 8, !tbaa !38
  %643 = load float, ptr %61, align 4, !tbaa !38
  %644 = fneg float %643
  %645 = fmul float %514, %644
  %646 = call float @llvm.fmuladd.f32(float %642, float %515, float %645)
  %647 = load float, ptr %59, align 4, !tbaa !38
  %648 = fneg float %647
  %649 = fmul float %515, %648
  %650 = call float @llvm.fmuladd.f32(float %643, float %513, float %649)
  %651 = fneg float %642
  %652 = fmul float %513, %651
  %653 = call float @llvm.fmuladd.f32(float %647, float %514, float %652)
  br label %658

654:                                              ; preds = %636
  %655 = load float, ptr %56, align 4, !tbaa !38
  %656 = load float, ptr %57, align 8, !tbaa !38
  %657 = load float, ptr %58, align 4, !tbaa !38
  br label %658

658:                                              ; preds = %654, %641
  %659 = phi float [ %653, %641 ], [ %657, %654 ]
  %660 = phi float [ %650, %641 ], [ %656, %654 ]
  %661 = phi float [ %646, %641 ], [ %655, %654 ]
  %662 = fmul float %660, %660
  %663 = call float @llvm.fmuladd.f32(float %661, float %661, float %662)
  %664 = call float @llvm.fmuladd.f32(float %659, float %659, float %663)
  %665 = fcmp ogt float %664, 0x38AA95A5C0000000
  br i1 %665, label %666, label %672

666:                                              ; preds = %658
  %667 = call float @sqrtf(float noundef %664) #11
  %668 = fdiv float 1.000000e+00, %667
  %669 = fmul float %661, %668
  %670 = fmul float %660, %668
  %671 = fmul float %659, %668
  br label %672

672:                                              ; preds = %666, %658
  %673 = phi float [ %670, %666 ], [ 0.000000e+00, %658 ]
  %674 = phi float [ %669, %666 ], [ 0.000000e+00, %658 ]
  %675 = phi float [ %671, %666 ], [ 0.000000e+00, %658 ]
  %676 = load float, ptr %26, align 4, !tbaa !191
  %677 = fmul float %512, %676
  %678 = fmul float %674, %677
  %679 = fmul float %673, %677
  %680 = fmul float %675, %677
  %681 = load ptr, ptr %62, align 8, !tbaa !134
  %682 = getelementptr inbounds float, ptr %681, i64 1
  %683 = load float, ptr %682, align 4, !tbaa !38
  %684 = getelementptr inbounds float, ptr %681, i64 2
  %685 = load float, ptr %684, align 4, !tbaa !38
  %686 = fneg float %685
  %687 = fmul float %679, %686
  %688 = call float @llvm.fmuladd.f32(float %683, float %680, float %687)
  store float %688, ptr %7, align 4, !tbaa !38
  %689 = load float, ptr %681, align 4, !tbaa !38
  %690 = fneg float %689
  %691 = fmul float %680, %690
  %692 = call float @llvm.fmuladd.f32(float %685, float %678, float %691)
  store float %692, ptr %38, align 4, !tbaa !38
  %693 = load float, ptr %681, align 4, !tbaa !38
  %694 = load float, ptr %682, align 4, !tbaa !38
  %695 = fneg float %694
  %696 = fmul float %678, %695
  %697 = call float @llvm.fmuladd.f32(float %693, float %679, float %696)
  store float %697, ptr %40, align 4, !tbaa !38
  %698 = load float, ptr %63, align 4, !tbaa !142
  %699 = fmul float %688, %698
  store float %699, ptr %7, align 4, !tbaa !38
  %700 = fmul float %692, %698
  store float %700, ptr %38, align 4, !tbaa !38
  %701 = fmul float %697, %698
  store float %701, ptr %40, align 4, !tbaa !38
  br label %881

702:                                              ; preds = %510
  %703 = fneg float %512
  %704 = load float, ptr %26, align 4, !tbaa !191
  %705 = fmul float %704, %703
  %706 = fmul float %513, %705
  store float %706, ptr %7, align 4, !tbaa !38
  %707 = fmul float %514, %705
  store float %707, ptr %38, align 4, !tbaa !38
  %708 = fmul float %515, %705
  store float %708, ptr %40, align 4, !tbaa !38
  %709 = load ptr, ptr %54, align 8, !tbaa !134
  %710 = load float, ptr %709, align 4, !tbaa !38
  %711 = getelementptr inbounds float, ptr %709, i64 1
  %712 = load float, ptr %711, align 4, !tbaa !38
  %713 = getelementptr inbounds float, ptr %709, i64 2
  %714 = load float, ptr %713, align 4, !tbaa !38
  %715 = fmul float %511, -2.000000e+00
  %716 = call float @llvm.fabs.f32(float %512)
  %717 = call float @sqrtf(float noundef %716) #11
  %718 = fmul float %715, %717
  %719 = load float, ptr %55, align 4, !tbaa !142
  %720 = fmul float %718, %719
  %721 = fmul float %710, %720
  %722 = fmul float %712, %720
  %723 = fmul float %714, %720
  %724 = load float, ptr %7, align 4, !tbaa !38
  %725 = fadd float %724, %721
  store float %725, ptr %7, align 4, !tbaa !38
  %726 = load float, ptr %38, align 4, !tbaa !38
  %727 = fadd float %722, %726
  store float %727, ptr %38, align 4, !tbaa !38
  %728 = load float, ptr %40, align 4, !tbaa !38
  %729 = fadd float %723, %728
  store float %729, ptr %40, align 4, !tbaa !38
  br label %881

730:                                              ; preds = %510
  %731 = load float, ptr %53, align 4, !tbaa !141
  %732 = fmul float %512, %731
  %733 = load float, ptr %26, align 4, !tbaa !191
  %734 = fmul float %732, %733
  %735 = fmul float %513, %734
  store float %735, ptr %7, align 4, !tbaa !38
  %736 = fmul float %514, %734
  store float %736, ptr %38, align 4, !tbaa !38
  %737 = fmul float %515, %734
  store float %737, ptr %40, align 4, !tbaa !38
  br label %881

738:                                              ; preds = %510
  %739 = load float, ptr %50, align 8, !tbaa !176
  %740 = load float, ptr %51, align 8, !tbaa !140
  %741 = fadd float %739, %740
  %742 = load float, ptr %52, align 8, !tbaa !151
  %743 = fdiv float %741, %742
  %744 = fpext float %743 to double
  %745 = call double @pow(double noundef %744, double noundef 6.000000e+00) #11
  %746 = fptrunc double %745 to float
  %747 = fneg float %746
  %748 = fsub float 1.000000e+00, %746
  %749 = fmul float %748, %747
  %750 = load float, ptr %52, align 8, !tbaa !151
  %751 = fdiv float %749, %750
  %752 = fcmp ogt float %751, 2.000000e+00
  %753 = select i1 %752, float 2.000000e+00, float %751
  %754 = fmul float %512, %753
  %755 = load float, ptr %7, align 4, !tbaa !38
  %756 = fmul float %755, %754
  store float %756, ptr %7, align 4, !tbaa !38
  %757 = load float, ptr %38, align 4, !tbaa !38
  %758 = fmul float %757, %754
  store float %758, ptr %38, align 4, !tbaa !38
  %759 = load float, ptr %40, align 4, !tbaa !38
  %760 = fmul float %759, %754
  store float %760, ptr %40, align 4, !tbaa !38
  br label %881

761:                                              ; preds = %510
  %762 = load i32, ptr %299, align 8, !tbaa !59
  %763 = and i32 %762, 64
  %764 = icmp eq i32 %763, 0
  br i1 %764, label %772, label %765

765:                                              ; preds = %761
  %766 = load ptr, ptr %3, align 8, !tbaa !132
  %767 = load float, ptr %766, align 4, !tbaa !38
  %768 = getelementptr inbounds float, ptr %766, i64 1
  %769 = load float, ptr %768, align 4, !tbaa !38
  %770 = getelementptr inbounds float, ptr %766, i64 2
  %771 = load float, ptr %770, align 4, !tbaa !38
  br label %782

772:                                              ; preds = %761
  %773 = load float, ptr %44, align 4, !tbaa !38
  %774 = load float, ptr %45, align 8, !tbaa !38
  %775 = fadd float %773, %774
  %776 = load float, ptr %46, align 8, !tbaa !38
  %777 = load float, ptr %47, align 4, !tbaa !38
  %778 = fadd float %776, %777
  %779 = load float, ptr %48, align 4, !tbaa !38
  %780 = load float, ptr %49, align 8, !tbaa !38
  %781 = fadd float %779, %780
  br label %782

782:                                              ; preds = %772, %765
  %783 = phi float [ %781, %772 ], [ %771, %765 ]
  %784 = phi float [ %778, %772 ], [ %769, %765 ]
  %785 = phi float [ %775, %772 ], [ %767, %765 ]
  %786 = getelementptr inbounds %struct.PartDeflect, ptr %299, i64 0, i32 12
  %787 = load float, ptr %786, align 8, !tbaa !58
  %788 = call float @BLI_gTurbulence(float noundef %787, float noundef %785, float noundef %784, float noundef %783, i32 noundef 2, i32 noundef 0, i32 noundef 2) #11
  %789 = call float @llvm.fmuladd.f32(float %788, float 2.000000e+00, float -1.000000e+00)
  store float %789, ptr %7, align 4, !tbaa !38
  %790 = load float, ptr %786, align 8, !tbaa !58
  %791 = call float @BLI_gTurbulence(float noundef %790, float noundef %784, float noundef %783, float noundef %785, i32 noundef 2, i32 noundef 0, i32 noundef 2) #11
  %792 = call float @llvm.fmuladd.f32(float %791, float 2.000000e+00, float -1.000000e+00)
  store float %792, ptr %38, align 4, !tbaa !38
  %793 = load float, ptr %786, align 8, !tbaa !58
  %794 = call float @BLI_gTurbulence(float noundef %793, float noundef %783, float noundef %785, float noundef %784, i32 noundef 2, i32 noundef 0, i32 noundef 2) #11
  %795 = call float @llvm.fmuladd.f32(float %794, float 2.000000e+00, float -1.000000e+00)
  store float %795, ptr %40, align 4, !tbaa !38
  %796 = load float, ptr %26, align 4, !tbaa !191
  %797 = fmul float %512, %796
  %798 = load float, ptr %7, align 4, !tbaa !38
  %799 = fmul float %798, %797
  store float %799, ptr %7, align 4, !tbaa !38
  %800 = load float, ptr %38, align 4, !tbaa !38
  %801 = fmul float %797, %800
  store float %801, ptr %38, align 4, !tbaa !38
  %802 = fmul float %795, %797
  store float %802, ptr %40, align 4, !tbaa !38
  br label %881

803:                                              ; preds = %510
  %804 = load ptr, ptr %42, align 8, !tbaa !134
  %805 = load float, ptr %804, align 4, !tbaa !38
  store float %805, ptr %7, align 4, !tbaa !38
  %806 = getelementptr inbounds float, ptr %804, i64 1
  %807 = load float, ptr %806, align 4, !tbaa !38
  store float %807, ptr %38, align 4, !tbaa !38
  %808 = getelementptr inbounds float, ptr %804, i64 2
  %809 = load float, ptr %808, align 4, !tbaa !38
  store float %809, ptr %40, align 4, !tbaa !38
  %810 = fmul float %807, %807
  %811 = call float @llvm.fmuladd.f32(float %805, float %805, float %810)
  %812 = call float @llvm.fmuladd.f32(float %809, float %809, float %811)
  %813 = fcmp ogt float %812, 0x38AA95A5C0000000
  br i1 %813, label %814, label %823

814:                                              ; preds = %803
  %815 = call float @sqrtf(float noundef %812) #11
  %816 = fdiv float 1.000000e+00, %815
  %817 = load float, ptr %7, align 4, !tbaa !38
  %818 = fmul float %817, %816
  store float %818, ptr %7, align 4, !tbaa !38
  %819 = load float, ptr %38, align 4, !tbaa !38
  %820 = fmul float %816, %819
  store float %820, ptr %38, align 4, !tbaa !38
  %821 = load float, ptr %40, align 4, !tbaa !38
  %822 = fmul float %816, %821
  br label %824

823:                                              ; preds = %803
  store float 0.000000e+00, ptr %7, align 4, !tbaa !38
  store float 0.000000e+00, ptr %38, align 4, !tbaa !38
  br label %824

824:                                              ; preds = %823, %814
  %825 = phi float [ 0.000000e+00, %823 ], [ %822, %814 ]
  %826 = phi float [ 0.000000e+00, %823 ], [ %815, %814 ]
  store float %825, ptr %40, align 4, !tbaa !38
  %827 = load float, ptr %43, align 4, !tbaa !142
  %828 = fmul float %826, %827
  %829 = fcmp olt float %512, 2.000000e+00
  %830 = select i1 %829, float %512, float 2.000000e+00
  %831 = fcmp olt float %511, 2.000000e+00
  %832 = select i1 %831, float %511, float 2.000000e+00
  %833 = load float, ptr %26, align 4, !tbaa !191
  %834 = fneg float %833
  %835 = fmul float %828, %834
  %836 = call float @llvm.fmuladd.f32(float %830, float %828, float %832)
  %837 = fmul float %835, %836
  %838 = load float, ptr %7, align 4, !tbaa !38
  %839 = fmul float %838, %837
  store float %839, ptr %7, align 4, !tbaa !38
  %840 = load float, ptr %38, align 4, !tbaa !38
  %841 = fmul float %837, %840
  store float %841, ptr %38, align 4, !tbaa !38
  %842 = fmul float %825, %837
  store float %842, ptr %40, align 4, !tbaa !38
  br label %881

843:                                              ; preds = %510
  store float 0.000000e+00, ptr %7, align 4, !tbaa !38
  store float 0.000000e+00, ptr %38, align 4, !tbaa !38
  store float 0.000000e+00, ptr %40, align 4, !tbaa !38
  %844 = getelementptr inbounds %struct.PartDeflect, ptr %299, i64 0, i32 40
  %845 = load ptr, ptr %844, align 8, !tbaa !212
  %846 = icmp eq ptr %845, null
  br i1 %846, label %881, label %847

847:                                              ; preds = %843
  %848 = load ptr, ptr %3, align 8, !tbaa !132
  %849 = call float @smoke_get_velocity_at(ptr noundef nonnull %845, ptr noundef %848, ptr noundef nonnull %7) #11
  %850 = fcmp ult float %849, 0.000000e+00
  br i1 %850, label %881, label %851

851:                                              ; preds = %847
  %852 = load float, ptr %26, align 4, !tbaa !191
  %853 = fmul float %512, %852
  %854 = load i32, ptr %299, align 8, !tbaa !59
  %855 = and i32 %854, 131072
  %856 = icmp eq i32 %855, 0
  %857 = select i1 %856, float 1.000000e+00, float %849
  %858 = fmul float %853, %857
  %859 = load float, ptr %7, align 4, !tbaa !38
  %860 = fmul float %859, %858
  store float %860, ptr %7, align 4, !tbaa !38
  %861 = load float, ptr %38, align 4, !tbaa !38
  %862 = fmul float %861, %858
  store float %862, ptr %38, align 4, !tbaa !38
  %863 = load float, ptr %40, align 4, !tbaa !38
  %864 = fmul float %858, %863
  store float %864, ptr %40, align 4, !tbaa !38
  %865 = load ptr, ptr %41, align 8, !tbaa !134
  %866 = getelementptr inbounds %struct.PartDeflect, ptr %299, i64 0, i32 11
  %867 = load float, ptr %866, align 4, !tbaa !57
  %868 = fneg float %867
  %869 = fmul float %858, %868
  %870 = load float, ptr %865, align 4, !tbaa !38
  %871 = load float, ptr %4, align 4, !tbaa !38
  %872 = call float @llvm.fmuladd.f32(float %870, float %869, float %871)
  store float %872, ptr %4, align 4, !tbaa !38
  %873 = getelementptr inbounds float, ptr %865, i64 1
  %874 = load float, ptr %873, align 4, !tbaa !38
  %875 = load float, ptr %34, align 4, !tbaa !38
  %876 = call float @llvm.fmuladd.f32(float %874, float %869, float %875)
  store float %876, ptr %34, align 4, !tbaa !38
  %877 = getelementptr inbounds float, ptr %865, i64 2
  %878 = load float, ptr %877, align 4, !tbaa !38
  %879 = load float, ptr %35, align 4, !tbaa !38
  %880 = call float @llvm.fmuladd.f32(float %878, float %869, float %879)
  store float %880, ptr %35, align 4, !tbaa !38
  br label %881

881:                                              ; preds = %851, %847, %843, %824, %782, %738, %730, %702, %672, %592, %581, %541, %517, %510
  %882 = load i32, ptr %299, align 8, !tbaa !59
  %883 = and i32 %882, 16384
  %884 = icmp eq i32 %883, 0
  br i1 %884, label %915, label %885

885:                                              ; preds = %881
  %886 = load float, ptr %79, align 4, !tbaa !142
  %887 = fdiv float 1.000000e+00, %886
  %888 = load float, ptr %7, align 4, !tbaa !38
  %889 = load float, ptr %4, align 4, !tbaa !38
  %890 = call float @llvm.fmuladd.f32(float %888, float %887, float %889)
  store float %890, ptr %4, align 4, !tbaa !38
  %891 = load float, ptr %38, align 4, !tbaa !38
  %892 = load float, ptr %34, align 4, !tbaa !38
  %893 = call float @llvm.fmuladd.f32(float %891, float %887, float %892)
  store float %893, ptr %34, align 4, !tbaa !38
  %894 = load float, ptr %40, align 4, !tbaa !38
  %895 = load float, ptr %35, align 4, !tbaa !38
  %896 = call float @llvm.fmuladd.f32(float %894, float %887, float %895)
  store float %896, ptr %35, align 4, !tbaa !38
  %897 = load i16, ptr %300, align 2, !tbaa !48
  switch i16 %897, label %898 [
    i16 7, label %915
    i16 12, label %915
    i16 13, label %915
  ]

898:                                              ; preds = %885
  %899 = getelementptr inbounds %struct.PartDeflect, ptr %299, i64 0, i32 11
  %900 = load float, ptr %899, align 4, !tbaa !57
  %901 = fcmp une float %900, 0.000000e+00
  br i1 %901, label %902, label %915

902:                                              ; preds = %898
  %903 = load ptr, ptr %80, align 8, !tbaa !134
  %904 = fneg float %900
  %905 = load float, ptr %26, align 4, !tbaa !191
  %906 = fmul float %905, %904
  %907 = load float, ptr %903, align 4, !tbaa !38
  %908 = call float @llvm.fmuladd.f32(float %907, float %906, float %890)
  store float %908, ptr %4, align 4, !tbaa !38
  %909 = getelementptr inbounds float, ptr %903, i64 1
  %910 = load float, ptr %909, align 4, !tbaa !38
  %911 = call float @llvm.fmuladd.f32(float %910, float %906, float %893)
  store float %911, ptr %34, align 4, !tbaa !38
  %912 = getelementptr inbounds float, ptr %903, i64 2
  %913 = load float, ptr %912, align 4, !tbaa !38
  %914 = call float @llvm.fmuladd.f32(float %913, float %906, float %896)
  store float %914, ptr %35, align 4, !tbaa !38
  br label %915

915:                                              ; preds = %902, %898, %885, %885, %885, %881
  %916 = load ptr, ptr %81, align 8, !tbaa !145
  %917 = icmp eq ptr %916, null
  br i1 %917, label %921, label %918

918:                                              ; preds = %915
  store float 0.000000e+00, ptr %916, align 4, !tbaa !38
  %919 = getelementptr inbounds float, ptr %916, i64 1
  store float 0.000000e+00, ptr %919, align 4, !tbaa !38
  %920 = getelementptr inbounds float, ptr %916, i64 2
  store float 0.000000e+00, ptr %920, align 4, !tbaa !38
  br label %921

921:                                              ; preds = %918, %915
  %922 = and i32 %882, 32768
  %923 = icmp eq i32 %922, 0
  %924 = or i1 %923, %917
  br i1 %924, label %973, label %925

925:                                              ; preds = %921
  %926 = load ptr, ptr %82, align 8, !tbaa !146
  %927 = icmp eq ptr %926, null
  br i1 %927, label %973, label %928

928:                                              ; preds = %925
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %8, ptr noundef nonnull align 4 dereferenceable(12) @__const.do_physical_effector.xvec, i64 12, i1 false)
  call void @mul_qt_v3(ptr noundef nonnull %926, ptr noundef nonnull %8) #11
  %929 = load float, ptr %83, align 4, !tbaa !38
  %930 = load float, ptr %40, align 4, !tbaa !38
  %931 = load float, ptr %84, align 4, !tbaa !38
  %932 = load float, ptr %38, align 4, !tbaa !38
  %933 = fneg float %931
  %934 = fmul float %932, %933
  %935 = call float @llvm.fmuladd.f32(float %929, float %930, float %934)
  %936 = load float, ptr %7, align 4, !tbaa !38
  %937 = load float, ptr %8, align 4, !tbaa !38
  %938 = fneg float %937
  %939 = fmul float %930, %938
  %940 = call float @llvm.fmuladd.f32(float %931, float %936, float %939)
  %941 = fneg float %929
  %942 = fmul float %936, %941
  %943 = call float @llvm.fmuladd.f32(float %937, float %932, float %942)
  %944 = getelementptr inbounds %struct.PartDeflect, ptr %299, i64 0, i32 11
  %945 = load float, ptr %944, align 4, !tbaa !57
  %946 = fcmp une float %945, 0.000000e+00
  br i1 %946, label %947, label %960

947:                                              ; preds = %928
  %948 = load ptr, ptr %81, align 8, !tbaa !145
  %949 = fneg float %945
  %950 = load float, ptr %26, align 4, !tbaa !191
  %951 = fmul float %950, %949
  %952 = load float, ptr %948, align 4, !tbaa !38
  %953 = call float @llvm.fmuladd.f32(float %952, float %951, float %935)
  %954 = getelementptr inbounds float, ptr %948, i64 1
  %955 = load float, ptr %954, align 4, !tbaa !38
  %956 = call float @llvm.fmuladd.f32(float %955, float %951, float %940)
  %957 = getelementptr inbounds float, ptr %948, i64 2
  %958 = load float, ptr %957, align 4, !tbaa !38
  %959 = call float @llvm.fmuladd.f32(float %958, float %951, float %943)
  br label %960

960:                                              ; preds = %947, %928
  %961 = phi float [ %959, %947 ], [ %943, %928 ]
  %962 = phi float [ %956, %947 ], [ %940, %928 ]
  %963 = phi float [ %953, %947 ], [ %935, %928 ]
  %964 = load ptr, ptr %81, align 8, !tbaa !145
  %965 = load float, ptr %964, align 4, !tbaa !38
  %966 = fadd float %963, %965
  store float %966, ptr %964, align 4, !tbaa !38
  %967 = getelementptr inbounds float, ptr %964, i64 1
  %968 = load float, ptr %967, align 4, !tbaa !38
  %969 = fadd float %962, %968
  store float %969, ptr %967, align 4, !tbaa !38
  %970 = getelementptr inbounds float, ptr %964, i64 2
  %971 = load float, ptr %970, align 4, !tbaa !38
  %972 = fadd float %961, %971
  store float %972, ptr %970, align 4, !tbaa !38
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #11
  br label %973

973:                                              ; preds = %921, %510, %925, %960
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #11
  %974 = load i32, ptr %85, align 8, !tbaa !144
  %975 = and i32 %974, 1
  %976 = icmp ne i32 %975, 0
  %977 = and i1 %86, %976
  br i1 %977, label %978, label %1006

978:                                              ; preds = %973
  %979 = load float, ptr %4, align 4, !tbaa !38
  %980 = fsub float %979, %469
  %981 = load float, ptr %34, align 4, !tbaa !38
  %982 = fsub float %981, %470
  %983 = load float, ptr %35, align 4, !tbaa !38
  %984 = fsub float %983, %471
  %985 = load float, ptr %5, align 4, !tbaa !38
  %986 = fsub float %985, %980
  store float %986, ptr %5, align 4, !tbaa !38
  %987 = load float, ptr %87, align 4, !tbaa !38
  %988 = fsub float %987, %982
  store float %988, ptr %87, align 4, !tbaa !38
  %989 = load float, ptr %88, align 4, !tbaa !38
  %990 = fsub float %989, %984
  store float %990, ptr %88, align 4, !tbaa !38
  br label %1006

991:                                              ; preds = %202
  %992 = load i32, ptr %201, align 8, !tbaa !126
  %993 = and i32 %992, 1
  %994 = icmp ne i32 %993, 0
  %995 = and i1 %118, %994
  br i1 %995, label %996, label %1006

996:                                              ; preds = %991
  %997 = load float, ptr %5, align 4, !tbaa !38
  %998 = load float, ptr %119, align 8, !tbaa !38
  %999 = fadd float %997, %998
  store float %999, ptr %5, align 4, !tbaa !38
  %1000 = load float, ptr %120, align 4, !tbaa !38
  %1001 = load float, ptr %121, align 4, !tbaa !38
  %1002 = fadd float %1000, %1001
  store float %1002, ptr %120, align 4, !tbaa !38
  %1003 = load float, ptr %122, align 4, !tbaa !38
  %1004 = load float, ptr %123, align 8, !tbaa !38
  %1005 = fadd float %1003, %1004
  store float %1005, ptr %122, align 4, !tbaa !38
  br label %1006

1006:                                             ; preds = %973, %978, %467, %295, %996, %991
  %1007 = load i32, ptr %15, align 4, !tbaa !181
  %1008 = add nsw i32 %1007, %191
  store i32 %1008, ptr %15, align 4, !tbaa !181
  %1009 = icmp slt i32 %1008, %192
  br i1 %1009, label %202, label %124, !llvm.loop !213

1010:                                             ; preds = %124, %17, %6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %14) #11
  ret void
}

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @psys_check_enabled(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_rng_new(i32 noundef) local_unnamed_addr #2

declare void @BLI_rng_srandom(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BKE_displist_make_curveTypes(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare i32 @where_on_path(ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @modifiers_findByType(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @psys_update_particle_tree(ptr noundef, float noundef) local_unnamed_addr #2

declare void @BKE_object_where_is_calc_time(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #7

declare ptr @get_collider_cache(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BLI_bvhtree_ray_cast(ptr noundef, ptr noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @eff_tri_ray_hit(ptr nocapture readnone %0, i32 %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #8 {
  %5 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %3, i64 0, i32 3
  store float -1.000000e+00, ptr %5, align 4, !tbaa !199
  store i32 1, ptr %3, align 4, !tbaa !197
  ret void
}

declare void @free_collider_cache(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_scene_check_color_management_enabled(ptr noundef) local_unnamed_addr #2

declare i32 @multitex_ext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

declare float @BLI_gTurbulence(float noundef, float noundef, float noundef, float noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare float @smoke_get_velocity_at(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

declare i32 @BLI_rng_get_int(ptr noundef) local_unnamed_addr #2

declare float @BLI_rng_get_float(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }

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
!38 = !{!39, !39, i64 0}
!39 = !{!"float", !36, i64 0}
!40 = distinct !{!40, !41, !42}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!"llvm.loop.unroll.disable"}
!43 = !{!44, !39, i64 64}
!44 = !{!"EffectorWeights", !35, i64 0, !36, i64 8, !39, i64 64, !45, i64 68, !36, i64 70, !46, i64 76}
!45 = !{!"short", !36, i64 0}
!46 = !{!"int", !36, i64 0}
!47 = !{!44, !35, i64 0}
!48 = !{!49, !45, i64 6}
!49 = !{!"PartDeflect", !46, i64 0, !45, i64 4, !45, i64 6, !45, i64 8, !45, i64 10, !45, i64 12, !45, i64 14, !45, i64 16, !45, i64 18, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !39, i64 88, !39, i64 92, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !39, i64 112, !39, i64 116, !39, i64 120, !39, i64 124, !35, i64 128, !35, i64 136, !39, i64 144, !46, i64 148, !35, i64 152}
!50 = !{!49, !39, i64 88}
!51 = !{!49, !39, i64 92}
!52 = !{!49, !39, i64 96}
!53 = !{!49, !46, i64 148}
!54 = !{!49, !39, i64 20}
!55 = !{!49, !39, i64 24}
!56 = !{!49, !45, i64 10}
!57 = !{!49, !39, i64 28}
!58 = !{!49, !39, i64 32}
!59 = !{!49, !46, i64 0}
!60 = !{!49, !35, i64 128}
!61 = !{!62, !46, i64 100}
!62 = !{!"Tex", !63, i64 0, !35, i64 120, !39, i64 128, !39, i64 132, !39, i64 136, !39, i64 140, !39, i64 144, !39, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !39, i64 180, !39, i64 184, !39, i64 188, !39, i64 192, !39, i64 196, !39, i64 200, !39, i64 204, !39, i64 208, !39, i64 212, !45, i64 216, !45, i64 218, !45, i64 220, !45, i64 222, !45, i64 224, !45, i64 226, !45, i64 228, !45, i64 230, !45, i64 232, !45, i64 234, !39, i64 236, !39, i64 240, !39, i64 244, !39, i64 248, !46, i64 252, !46, i64 256, !45, i64 260, !45, i64 262, !45, i64 264, !45, i64 266, !46, i64 268, !46, i64 272, !46, i64 276, !46, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !64, i64 296, !35, i64 336, !35, i64 344, !35, i64 352, !35, i64 360, !35, i64 368, !35, i64 376, !35, i64 384, !35, i64 392, !35, i64 400, !36, i64 408, !36, i64 409}
!63 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !45, i64 98, !46, i64 100, !46, i64 104, !46, i64 108, !35, i64 112}
!64 = !{!"ImageUser", !35, i64 0, !46, i64 8, !46, i64 12, !46, i64 16, !46, i64 20, !36, i64 24, !36, i64 25, !36, i64 26, !36, i64 27, !45, i64 28, !45, i64 30, !45, i64 32, !45, i64 34, !46, i64 36}
!65 = !{!49, !35, i64 136}
!66 = !{!67, !46, i64 944}
!67 = !{!"Object", !63, i64 0, !35, i64 120, !35, i64 128, !45, i64 136, !45, i64 138, !46, i64 140, !46, i64 144, !46, i64 148, !36, i64 152, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !68, i64 312, !35, i64 360, !69, i64 368, !69, i64 384, !69, i64 400, !69, i64 416, !46, i64 432, !46, i64 436, !35, i64 440, !35, i64 448, !46, i64 456, !46, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !39, i64 616, !39, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !46, i64 944, !45, i64 948, !45, i64 950, !45, i64 952, !45, i64 954, !45, i64 956, !45, i64 958, !45, i64 960, !45, i64 962, !45, i64 964, !36, i64 966, !36, i64 967, !46, i64 968, !46, i64 972, !46, i64 976, !46, i64 980, !46, i64 984, !39, i64 988, !39, i64 992, !39, i64 996, !39, i64 1000, !39, i64 1004, !39, i64 1008, !39, i64 1012, !39, i64 1016, !39, i64 1020, !39, i64 1024, !39, i64 1028, !39, i64 1032, !45, i64 1036, !45, i64 1038, !45, i64 1040, !36, i64 1042, !36, i64 1043, !45, i64 1044, !36, i64 1046, !36, i64 1047, !39, i64 1048, !39, i64 1052, !69, i64 1056, !69, i64 1072, !69, i64 1088, !69, i64 1104, !39, i64 1120, !45, i64 1124, !45, i64 1126, !36, i64 1128, !46, i64 1144, !46, i64 1148, !35, i64 1152, !36, i64 1160, !36, i64 1161, !45, i64 1162, !36, i64 1164, !69, i64 1176, !69, i64 1192, !69, i64 1208, !69, i64 1224, !35, i64 1240, !35, i64 1248, !35, i64 1256, !36, i64 1264, !36, i64 1265, !45, i64 1266, !39, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !70, i64 1304, !70, i64 1312, !46, i64 1320, !46, i64 1324, !69, i64 1328, !69, i64 1344, !35, i64 1360, !35, i64 1368, !35, i64 1376, !36, i64 1384, !35, i64 1392, !69, i64 1400, !35, i64 1416}
!68 = !{!"bAnimVizSettings", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !45, i64 16, !45, i64 18, !45, i64 20, !45, i64 22, !45, i64 24, !45, i64 26, !45, i64 28, !45, i64 30, !46, i64 32, !46, i64 36, !46, i64 40, !46, i64 44}
!69 = !{!"ListBase", !35, i64 0, !35, i64 8}
!70 = !{!"long", !36, i64 0}
!71 = !{!72, !35, i64 16}
!72 = !{!"GroupObject", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !45, i64 32, !36, i64 34}
!73 = !{!67, !35, i64 1240}
!74 = !{!67, !35, i64 1296}
!75 = !{!76, !35, i64 16}
!76 = !{!"EffectorCache", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !36, i64 64, !36, i64 80, !39, i64 92, !36, i64 96, !39, i64 108, !46, i64 112}
!77 = !{!76, !35, i64 24}
!78 = !{!76, !35, i64 32}
!79 = !{!76, !35, i64 48}
!80 = !{!76, !39, i64 108}
!81 = !{!67, !35, i64 1224}
!82 = !{!83, !35, i64 0}
!83 = !{!"ParticleSystem", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !69, i64 72, !69, i64 88, !35, i64 104, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !69, i64 152, !36, i64 168, !36, i64 232, !39, i64 296, !39, i64 300, !39, i64 304, !46, i64 308, !46, i64 312, !46, i64 316, !46, i64 320, !46, i64 324, !46, i64 328, !46, i64 332, !46, i64 336, !45, i64 340, !45, i64 342, !45, i64 344, !45, i64 346, !36, i64 348, !36, i64 540, !45, i64 564, !45, i64 566, !35, i64 568, !35, i64 576, !69, i64 584, !35, i64 600, !35, i64 608, !46, i64 616, !46, i64 620, !35, i64 624, !35, i64 632, !35, i64 640, !39, i64 648, !39, i64 652}
!84 = distinct !{!84, !41, !42}
!85 = distinct !{!85, !41, !42}
!86 = !{!87, !46, i64 16}
!87 = !{!"Base", !35, i64 0, !35, i64 8, !46, i64 16, !46, i64 20, !46, i64 24, !45, i64 28, !45, i64 30, !35, i64 32}
!88 = !{!87, !35, i64 32}
!89 = distinct !{!89, !41, !42}
!90 = distinct !{!90, !41, !42}
!91 = !{!83, !35, i64 16}
!92 = !{!93, !46, i64 152}
!93 = !{!"ParticleSettings", !63, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !46, i64 152, !46, i64 156, !45, i64 160, !45, i64 162, !45, i64 164, !45, i64 166, !45, i64 168, !45, i64 170, !45, i64 172, !45, i64 174, !46, i64 176, !46, i64 180, !45, i64 184, !45, i64 186, !45, i64 188, !45, i64 190, !45, i64 192, !45, i64 194, !45, i64 196, !45, i64 198, !45, i64 200, !45, i64 202, !45, i64 204, !45, i64 206, !45, i64 208, !45, i64 210, !45, i64 212, !45, i64 214, !45, i64 216, !45, i64 218, !45, i64 220, !45, i64 222, !45, i64 224, !45, i64 226, !45, i64 228, !45, i64 230, !39, i64 232, !39, i64 236, !36, i64 240, !36, i64 248, !39, i64 256, !39, i64 260, !39, i64 264, !45, i64 268, !45, i64 270, !39, i64 272, !39, i64 276, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !39, i64 296, !39, i64 300, !39, i64 304, !39, i64 308, !39, i64 312, !39, i64 316, !36, i64 320, !46, i64 324, !46, i64 328, !46, i64 332, !46, i64 336, !45, i64 340, !36, i64 342, !39, i64 348, !39, i64 352, !39, i64 356, !39, i64 360, !39, i64 364, !39, i64 368, !39, i64 372, !36, i64 376, !39, i64 388, !39, i64 392, !39, i64 396, !39, i64 400, !39, i64 404, !39, i64 408, !39, i64 412, !36, i64 416, !39, i64 428, !39, i64 432, !39, i64 436, !39, i64 440, !46, i64 444, !46, i64 448, !39, i64 452, !39, i64 456, !39, i64 460, !39, i64 464, !39, i64 468, !39, i64 472, !39, i64 476, !39, i64 480, !39, i64 484, !39, i64 488, !39, i64 492, !39, i64 496, !39, i64 500, !39, i64 504, !39, i64 508, !39, i64 512, !39, i64 516, !39, i64 520, !39, i64 524, !39, i64 528, !39, i64 532, !39, i64 536, !39, i64 540, !39, i64 544, !39, i64 548, !36, i64 552, !39, i64 560, !39, i64 564, !46, i64 568, !46, i64 572, !36, i64 576, !35, i64 720, !69, i64 728, !35, i64 744, !35, i64 752, !35, i64 760, !35, i64 768, !35, i64 776, !35, i64 784, !45, i64 792, !36, i64 794}
!94 = !{!93, !35, i64 776}
!95 = !{!93, !35, i64 784}
!96 = !{!97, !46, i64 680}
!97 = !{!"Scene", !63, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !69, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !46, i64 232, !46, i64 236, !46, i64 240, !45, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !98, i64 280, !107, i64 4264, !69, i64 4296, !69, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !45, i64 4376, !45, i64 4378, !46, i64 4380, !69, i64 4384, !108, i64 4400, !109, i64 4416, !112, i64 4600, !35, i64 4608, !113, i64 4616, !35, i64 4640, !70, i64 4648, !70, i64 4656, !100, i64 4664, !101, i64 4824, !114, i64 4888, !35, i64 4952}
!98 = !{!"RenderData", !99, i64 0, !35, i64 248, !35, i64 256, !102, i64 264, !103, i64 328, !46, i64 400, !46, i64 404, !46, i64 408, !39, i64 412, !46, i64 416, !46, i64 420, !46, i64 424, !46, i64 428, !45, i64 432, !45, i64 434, !39, i64 436, !39, i64 440, !39, i64 444, !39, i64 448, !39, i64 452, !45, i64 456, !45, i64 458, !45, i64 460, !45, i64 462, !45, i64 464, !45, i64 466, !46, i64 468, !45, i64 472, !45, i64 474, !45, i64 476, !45, i64 478, !45, i64 480, !45, i64 482, !46, i64 484, !46, i64 488, !45, i64 492, !45, i64 494, !46, i64 496, !46, i64 500, !45, i64 504, !45, i64 506, !45, i64 508, !45, i64 510, !45, i64 512, !36, i64 514, !36, i64 515, !46, i64 516, !46, i64 520, !46, i64 524, !45, i64 528, !45, i64 530, !45, i64 532, !45, i64 534, !45, i64 536, !45, i64 538, !45, i64 540, !45, i64 542, !104, i64 544, !104, i64 560, !105, i64 576, !69, i64 592, !45, i64 608, !45, i64 610, !39, i64 612, !39, i64 616, !39, i64 620, !39, i64 624, !46, i64 628, !39, i64 632, !39, i64 636, !39, i64 640, !39, i64 644, !45, i64 648, !45, i64 650, !45, i64 652, !45, i64 654, !45, i64 656, !45, i64 658, !39, i64 660, !39, i64 664, !45, i64 668, !45, i64 670, !39, i64 672, !39, i64 676, !36, i64 680, !46, i64 1704, !45, i64 1708, !45, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !46, i64 2520, !45, i64 2524, !45, i64 2526, !39, i64 2528, !39, i64 2532, !45, i64 2536, !45, i64 2538, !39, i64 2540, !45, i64 2544, !45, i64 2546, !46, i64 2548, !45, i64 2552, !45, i64 2554, !45, i64 2556, !45, i64 2558, !39, i64 2560, !39, i64 2564, !35, i64 2568, !46, i64 2576, !39, i64 2580, !36, i64 2584, !106, i64 2616, !46, i64 3976, !46, i64 3980}
!99 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !45, i64 8, !45, i64 10, !39, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !100, i64 24, !101, i64 184}
!100 = !{!"ColorManagedViewSettings", !46, i64 0, !46, i64 4, !36, i64 8, !36, i64 72, !39, i64 136, !39, i64 140, !35, i64 144, !35, i64 152}
!101 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!102 = !{!"QuicktimeCodecSettings", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !46, i64 16, !46, i64 20, !46, i64 24, !46, i64 28, !46, i64 32, !46, i64 36, !46, i64 40, !46, i64 44, !45, i64 48, !45, i64 50, !46, i64 52, !46, i64 56, !46, i64 60}
!103 = !{!"FFMpegCodecData", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !46, i64 16, !46, i64 20, !46, i64 24, !46, i64 28, !39, i64 32, !46, i64 36, !46, i64 40, !46, i64 44, !46, i64 48, !46, i64 52, !46, i64 56, !46, i64 60, !35, i64 64}
!104 = !{!"rctf", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!105 = !{!"rcti", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12}
!106 = !{!"BakeData", !99, i64 0, !36, i64 248, !45, i64 1272, !45, i64 1274, !45, i64 1276, !45, i64 1278, !39, i64 1280, !39, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!107 = !{!"AudioData", !46, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !46, i64 16, !45, i64 20, !45, i64 22, !39, i64 24, !39, i64 28}
!108 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!109 = !{!"GameData", !108, i64 0, !45, i64 16, !45, i64 18, !45, i64 20, !45, i64 22, !45, i64 24, !45, i64 26, !45, i64 28, !45, i64 30, !45, i64 32, !36, i64 34, !110, i64 40, !45, i64 64, !45, i64 66, !39, i64 68, !111, i64 72, !39, i64 128, !39, i64 132, !46, i64 136, !45, i64 140, !45, i64 142, !45, i64 144, !45, i64 146, !45, i64 148, !45, i64 150, !45, i64 152, !45, i64 154, !45, i64 156, !45, i64 158, !45, i64 160, !45, i64 162, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !39, i64 180}
!110 = !{!"GameDome", !45, i64 0, !45, i64 2, !45, i64 4, !45, i64 6, !39, i64 8, !39, i64 12, !35, i64 16}
!111 = !{!"RecastData", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !46, i64 40, !39, i64 44, !39, i64 48, !45, i64 52, !45, i64 54}
!112 = !{!"UnitSettings", !39, i64 0, !36, i64 4, !36, i64 5, !45, i64 6}
!113 = !{!"PhysicsSettings", !36, i64 0, !46, i64 12, !46, i64 16, !46, i64 20}
!114 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!115 = !{!67, !45, i64 136}
!116 = !{!67, !35, i64 296}
!117 = !{!118, !46, i64 268}
!118 = !{!"Curve", !63, i64 0, !35, i64 120, !35, i64 128, !69, i64 136, !35, i64 152, !35, i64 160, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !36, i64 208, !36, i64 220, !36, i64 232, !45, i64 244, !45, i64 246, !45, i64 248, !45, i64 250, !39, i64 252, !39, i64 256, !46, i64 260, !45, i64 264, !45, i64 266, !46, i64 268, !39, i64 272, !39, i64 276, !39, i64 280, !45, i64 284, !45, i64 286, !45, i64 288, !45, i64 290, !46, i64 292, !46, i64 296, !36, i64 300, !45, i64 304, !36, i64 306, !36, i64 307, !39, i64 308, !39, i64 312, !39, i64 316, !39, i64 320, !39, i64 324, !39, i64 328, !39, i64 332, !39, i64 336, !39, i64 340, !39, i64 344, !46, i64 348, !46, i64 352, !46, i64 356, !46, i64 360, !46, i64 364, !35, i64 368, !35, i64 376, !36, i64 384, !35, i64 448, !35, i64 456, !35, i64 464, !35, i64 472, !35, i64 480, !46, i64 488, !46, i64 492, !35, i64 496, !119, i64 504, !39, i64 512, !39, i64 516, !39, i64 520, !36, i64 524, !36, i64 525, !36, i64 526}
!119 = !{!"CharInfo", !45, i64 0, !45, i64 2, !36, i64 4, !36, i64 5, !45, i64 6}
!120 = !{!67, !35, i64 1280}
!121 = !{!122, !35, i64 48}
!122 = !{!"CurveCache", !69, i64 0, !69, i64 16, !69, i64 32, !35, i64 48}
!123 = !{!124, !35, i64 0}
!124 = !{!"Path", !35, i64 0, !46, i64 8, !39, i64 12}
!125 = !{!76, !35, i64 40}
!126 = !{!76, !46, i64 112}
!127 = distinct !{!127, !41, !42}
!128 = !{!76, !35, i64 56}
!129 = distinct !{!129, !41, !42}
!130 = !{!131, !35, i64 16}
!131 = !{!"ParticleSimulationData", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !39, i64 40}
!132 = !{!133, !35, i64 0}
!133 = !{!"EffectedPoint", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !46, i64 48, !46, i64 52, !35, i64 56}
!134 = !{!133, !35, i64 8}
!135 = !{!83, !35, i64 24}
!136 = !{!133, !46, i64 52}
!137 = !{!138, !39, i64 180}
!138 = !{!"ParticleData", !139, i64 0, !139, i64 56, !35, i64 112, !35, i64 120, !35, i64 128, !46, i64 136, !39, i64 140, !39, i64 144, !39, i64 148, !46, i64 152, !46, i64 156, !36, i64 160, !39, i64 176, !39, i64 180, !39, i64 184, !46, i64 188, !46, i64 192, !45, i64 196, !45, i64 198}
!139 = !{!"ParticleKey", !36, i64 0, !36, i64 12, !36, i64 24, !36, i64 40, !39, i64 52}
!140 = !{!133, !39, i64 40}
!141 = !{!133, !39, i64 44}
!142 = !{!133, !39, i64 36}
!143 = !{!133, !39, i64 32}
!144 = !{!133, !46, i64 48}
!145 = !{!133, !35, i64 16}
!146 = !{!133, !35, i64 24}
!147 = !{!133, !35, i64 56}
!148 = !{!97, !45, i64 820}
!149 = !{!49, !45, i64 18}
!150 = !{!49, !45, i64 8}
!151 = !{!152, !39, i64 48}
!152 = !{!"EffectorData", !36, i64 0, !36, i64 12, !36, i64 24, !36, i64 36, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !36, i64 64, !36, i64 76, !35, i64 88}
!153 = !{!49, !39, i64 44}
!154 = !{!49, !39, i64 40}
!155 = !{!49, !39, i64 36}
!156 = !{!49, !39, i64 56}
!157 = !{!49, !39, i64 52}
!158 = !{!49, !39, i64 48}
!159 = !{!160, !46, i64 0}
!160 = !{!"BVHTreeNearest", !46, i64 0, !36, i64 4, !36, i64 16, !39, i64 28, !46, i64 32}
!161 = !{!160, !39, i64 28}
!162 = !{!163, !35, i64 136}
!163 = !{!"SurfaceModifierData", !164, i64 0, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !46, i64 144, !46, i64 148}
!164 = !{!"ModifierData", !35, i64 0, !35, i64 8, !46, i64 16, !46, i64 20, !46, i64 24, !46, i64 28, !36, i64 32, !35, i64 96, !35, i64 104}
!165 = !{!166, !35, i64 0}
!166 = !{!"BVHTreeFromMesh", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !36, i64 48, !36, i64 49, !36, i64 50, !39, i64 52, !35, i64 56, !36, i64 64}
!167 = !{!166, !35, i64 8}
!168 = !{!163, !35, i64 128}
!169 = !{!163, !35, i64 120}
!170 = !{!171, !46, i64 0}
!171 = !{!"MFace", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !45, i64 16, !36, i64 18, !36, i64 19}
!172 = !{!171, !46, i64 4}
!173 = !{!171, !46, i64 8}
!174 = !{!171, !46, i64 12}
!175 = !{i32 0, i32 2}
!176 = !{!152, !39, i64 56}
!177 = !{!178, !35, i64 1528}
!178 = !{!"DerivedMesh", !179, i64 0, !179, i64 200, !179, i64 400, !179, i64 600, !179, i64 800, !46, i64 1000, !46, i64 1004, !46, i64 1008, !46, i64 1012, !46, i64 1016, !46, i64 1020, !46, i64 1024, !35, i64 1032, !35, i64 1040, !46, i64 1048, !39, i64 1052, !46, i64 1056, !46, i64 1060, !35, i64 1064, !36, i64 1072, !35, i64 1080, !35, i64 1088, !35, i64 1096, !35, i64 1104, !35, i64 1112, !35, i64 1120, !35, i64 1128, !35, i64 1136, !35, i64 1144, !35, i64 1152, !35, i64 1160, !35, i64 1168, !35, i64 1176, !35, i64 1184, !35, i64 1192, !35, i64 1200, !35, i64 1208, !35, i64 1216, !35, i64 1224, !35, i64 1232, !35, i64 1240, !35, i64 1248, !35, i64 1256, !35, i64 1264, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !35, i64 1304, !35, i64 1312, !35, i64 1320, !35, i64 1328, !35, i64 1336, !35, i64 1344, !35, i64 1352, !35, i64 1360, !35, i64 1368, !35, i64 1376, !35, i64 1384, !35, i64 1392, !35, i64 1400, !35, i64 1408, !35, i64 1416, !35, i64 1424, !35, i64 1432, !35, i64 1440, !35, i64 1448, !35, i64 1456, !35, i64 1464, !35, i64 1472, !35, i64 1480, !35, i64 1488, !35, i64 1496, !35, i64 1504, !35, i64 1512, !35, i64 1520, !35, i64 1528, !35, i64 1536, !35, i64 1544, !35, i64 1552, !35, i64 1560, !35, i64 1568, !35, i64 1576, !35, i64 1584, !35, i64 1592, !35, i64 1600, !35, i64 1608, !35, i64 1616, !35, i64 1624, !35, i64 1632, !35, i64 1640, !35, i64 1648, !35, i64 1656, !35, i64 1664, !35, i64 1672, !35, i64 1680}
!179 = !{!"CustomData", !35, i64 0, !36, i64 8, !46, i64 172, !46, i64 176, !46, i64 180, !35, i64 184, !35, i64 192}
!180 = !{!152, !35, i64 88}
!181 = !{!46, !46, i64 0}
!182 = !{!178, !35, i64 1544}
!183 = !{!131, !35, i64 0}
!184 = !{!131, !35, i64 8}
!185 = !{!139, !39, i64 52}
!186 = distinct !{!186, !41, !42}
!187 = !{!178, !46, i64 1000}
!188 = !{!83, !46, i64 320}
!189 = !{!152, !39, i64 60}
!190 = !{!93, !46, i64 336}
!191 = !{!152, !39, i64 52}
!192 = !{!193, !35, i64 16}
!193 = !{!"ColliderCache", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24}
!194 = !{!193, !35, i64 24}
!195 = !{!196, !35, i64 184}
!196 = !{!"CollisionModifierData", !164, i64 0, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !35, i64 160, !46, i64 168, !46, i64 172, !39, i64 176, !39, i64 180, !35, i64 184}
!197 = !{!198, !46, i64 0}
!198 = !{!"BVHTreeRayHit", !46, i64 0, !36, i64 4, !36, i64 16, !39, i64 28, !46, i64 32}
!199 = !{!198, !39, i64 28}
!200 = !{!49, !39, i64 84}
!201 = distinct !{!201, !41, !42}
!202 = !{!49, !39, i64 124}
!203 = !{!49, !45, i64 12}
!204 = !{!205, !35, i64 24}
!205 = !{!"TexResult", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !46, i64 20, !35, i64 24}
!206 = !{!205, !39, i64 4}
!207 = !{!205, !39, i64 8}
!208 = !{!205, !39, i64 12}
!209 = !{!205, !39, i64 0}
!210 = distinct !{!210, !41, !42}
!211 = !{!49, !39, i64 144}
!212 = !{!49, !35, i64 152}
!213 = distinct !{!213, !41, !42}
