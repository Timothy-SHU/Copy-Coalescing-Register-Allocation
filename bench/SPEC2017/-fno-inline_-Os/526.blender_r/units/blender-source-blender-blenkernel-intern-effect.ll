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
%struct.EffectorCache = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x float], [3 x float], float, [3 x float], float, i32 }
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
%struct.BVHTreeRayHit = type { i32, [3 x float], [3 x float], float, i32 }
%struct.ColliderCache = type { ptr, ptr, ptr, ptr }
%struct.CollisionModifierData = type { %struct.ModifierData, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, float, float, ptr }
%struct.TexResult = type { float, float, float, float, float, i32, ptr }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [16 x i8] c"EffectorWeights\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"PartDeflect\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"effectors list\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"EffectorCache\00", align 1
@__const.do_physical_effector.xvec = private unnamed_addr constant [3 x float] [float 1.000000e+00, float 0.000000e+00, float 0.000000e+00], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_add_effector_weights(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 80, ptr noundef nonnull @.str) #15
  br label %4

4:                                                ; preds = %26, %1
  %5 = phi i64 [ 0, %1 ], [ %27, %26 ]
  %6 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %1 ], [ %28, %26 ]
  %7 = icmp ult <4 x i64> %6, <i64 14, i64 14, i64 14, i64 14>
  %8 = extractelement <4 x i1> %7, i64 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.EffectorWeights, ptr %3, i64 0, i32 1, i64 %5
  store float 1.000000e+00, ptr %10, align 4, !tbaa !38
  br label %11

11:                                               ; preds = %9, %4
  %12 = extractelement <4 x i1> %7, i64 1
  br i1 %12, label %13, label %16

13:                                               ; preds = %11
  %14 = or disjoint i64 %5, 1
  %15 = getelementptr inbounds %struct.EffectorWeights, ptr %3, i64 0, i32 1, i64 %14
  store float 1.000000e+00, ptr %15, align 4, !tbaa !38
  br label %16

16:                                               ; preds = %13, %11
  %17 = extractelement <4 x i1> %7, i64 2
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  %19 = or disjoint i64 %5, 2
  %20 = getelementptr inbounds %struct.EffectorWeights, ptr %3, i64 0, i32 1, i64 %19
  store float 1.000000e+00, ptr %20, align 4, !tbaa !38
  br label %21

21:                                               ; preds = %18, %16
  %22 = extractelement <4 x i1> %7, i64 3
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  %24 = or disjoint i64 %5, 3
  %25 = getelementptr inbounds %struct.EffectorWeights, ptr %3, i64 0, i32 1, i64 %24
  store float 1.000000e+00, ptr %25, align 4, !tbaa !38
  br label %26

26:                                               ; preds = %23, %21
  %27 = add i64 %5, 4
  %28 = add <4 x i64> %6, <i64 4, i64 4, i64 4, i64 4>
  %29 = icmp eq i64 %27, 16
  br i1 %29, label %30, label %4, !llvm.loop !40

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.EffectorWeights, ptr %3, i64 0, i32 2
  store float 1.000000e+00, ptr %31, align 8, !tbaa !44
  store ptr %0, ptr %3, align 8, !tbaa !48
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @object_add_collision_fields(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 160, ptr noundef nonnull @.str.1) #15
  %4 = trunc i32 %0 to i16
  %5 = getelementptr inbounds %struct.PartDeflect, ptr %3, i64 0, i32 2
  store i16 %4, ptr %5, align 2, !tbaa !49
  %6 = getelementptr inbounds %struct.PartDeflect, ptr %3, i64 0, i32 26
  store <2 x float> <float 0x3FB99999A0000000, float 0x3FC99999A0000000>, ptr %6, align 8, !tbaa !38
  %7 = getelementptr inbounds %struct.PartDeflect, ptr %3, i64 0, i32 28
  store float 0x3F947AE140000000, ptr %7, align 8, !tbaa !51
  %8 = tail call double @PIL_check_seconds_timer() #15
  %9 = tail call double @llvm.ceil.f64(double %8)
  %10 = fptoui double %9 to i32
  %11 = add i32 %10, 1
  %12 = and i32 %11, 127
  %13 = getelementptr inbounds %struct.PartDeflect, ptr %3, i64 0, i32 39
  store i32 %12, ptr %13, align 4, !tbaa !52
  %14 = getelementptr inbounds %struct.PartDeflect, ptr %3, i64 0, i32 9
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %14, align 4, !tbaa !38
  switch i32 %0, label %24 [
    i32 2, label %15
    i32 4, label %17
    i32 6, label %20
    i32 13, label %22
  ]

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.PartDeflect, ptr %3, i64 0, i32 4
  store i16 1, ptr %16, align 2, !tbaa !53
  br label %24

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.PartDeflect, ptr %3, i64 0, i32 4
  store i16 1, ptr %18, align 2, !tbaa !53
  %19 = getelementptr inbounds %struct.PartDeflect, ptr %3, i64 0, i32 11
  store float 1.000000e+00, ptr %19, align 4, !tbaa !54
  br label %24

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.PartDeflect, ptr %3, i64 0, i32 12
  store float 1.000000e+00, ptr %21, align 8, !tbaa !55
  br label %24

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.PartDeflect, ptr %3, i64 0, i32 11
  store float 1.000000e+00, ptr %23, align 4, !tbaa !54
  br label %24

24:                                               ; preds = %1, %22, %20, %17, %15
  store i32 49152, ptr %3, align 8, !tbaa !56
  ret ptr %3
}

; Function Attrs: optsize
declare double @PIL_check_seconds_timer() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_partdeflect(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.PartDeflect, ptr %0, i64 0, i32 36
  %5 = load ptr, ptr %4, align 8, !tbaa !57
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 6
  %9 = load i32, ptr %8, align 4, !tbaa !58
  %10 = add nsw i32 %9, -1
  store i32 %10, ptr %8, align 4, !tbaa !58
  br label %11

11:                                               ; preds = %7, %3
  %12 = getelementptr inbounds %struct.PartDeflect, ptr %0, i64 0, i32 37
  %13 = load ptr, ptr %12, align 8, !tbaa !62
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @BLI_rng_free(ptr noundef nonnull %13) #15
  br label %16

16:                                               ; preds = %15, %11
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %17(ptr noundef nonnull %0) #15
  br label %18

18:                                               ; preds = %1, %16
  ret void
}

; Function Attrs: optsize
declare void @BLI_rng_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @pdInitEffectors(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 52
  %8 = load i32, ptr %7, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  store ptr null, ptr %6, align 8, !tbaa !34
  %9 = load ptr, ptr %3, align 8, !tbaa !48
  %10 = icmp eq ptr %9, null
  br i1 %10, label %46, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.Group, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %81, label %15

15:                                               ; preds = %11, %43
  %16 = phi ptr [ %44, %43 ], [ %13, %11 ]
  %17 = getelementptr inbounds %struct.GroupObject, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !68
  %19 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 52
  %20 = load i32, ptr %19, align 8, !tbaa !63
  %21 = and i32 %20, %8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %43, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 110
  %25 = load ptr, ptr %24, align 8, !tbaa !70
  %26 = icmp eq ptr %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.PartDeflect, ptr %25, i64 0, i32 2
  %29 = load i16, ptr %28, align 2, !tbaa !49
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  call fastcc void @add_object_to_effectors(ptr noundef nonnull %6, ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %18, ptr noundef %1) #17
  %32 = load ptr, ptr %17, align 8, !tbaa !68
  br label %33

33:                                               ; preds = %31, %27, %23
  %34 = phi ptr [ %32, %31 ], [ %18, %27 ], [ %18, %23 ]
  %35 = getelementptr inbounds %struct.Object, ptr %34, i64 0, i32 109
  %36 = load ptr, ptr %35, align 8, !tbaa !71
  %37 = icmp eq ptr %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %33, %38
  %39 = phi ptr [ %41, %38 ], [ %36, %33 ]
  %40 = load ptr, ptr %17, align 8, !tbaa !68
  call fastcc void @add_particles_to_effectors(ptr noundef nonnull %6, ptr noundef %0, ptr noundef nonnull %3, ptr noundef %40, ptr noundef nonnull %39, ptr noundef %2) #17
  %41 = load ptr, ptr %39, align 8, !tbaa !72
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %38, !llvm.loop !74

43:                                               ; preds = %38, %15, %33
  %44 = load ptr, ptr %16, align 8, !tbaa !34
  %45 = icmp eq ptr %44, null
  br i1 %45, label %81, label %15, !llvm.loop !75

46:                                               ; preds = %5
  %47 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 5
  %48 = load ptr, ptr %47, align 8, !tbaa !34
  %49 = icmp eq ptr %48, null
  br i1 %49, label %81, label %50

50:                                               ; preds = %46, %78
  %51 = phi ptr [ %79, %78 ], [ %48, %46 ]
  %52 = getelementptr inbounds %struct.Base, ptr %51, i64 0, i32 2
  %53 = load i32, ptr %52, align 8, !tbaa !76
  %54 = and i32 %53, %8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %78, label %56

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.Base, ptr %51, i64 0, i32 7
  %58 = load ptr, ptr %57, align 8, !tbaa !78
  %59 = getelementptr inbounds %struct.Object, ptr %58, i64 0, i32 110
  %60 = load ptr, ptr %59, align 8, !tbaa !70
  %61 = icmp eq ptr %60, null
  br i1 %61, label %68, label %62

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.PartDeflect, ptr %60, i64 0, i32 2
  %64 = load i16, ptr %63, align 2, !tbaa !49
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %62
  call fastcc void @add_object_to_effectors(ptr noundef nonnull %6, ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %58, ptr noundef %1) #17
  %67 = load ptr, ptr %57, align 8, !tbaa !78
  br label %68

68:                                               ; preds = %66, %62, %56
  %69 = phi ptr [ %67, %66 ], [ %58, %62 ], [ %58, %56 ]
  %70 = getelementptr inbounds %struct.Object, ptr %69, i64 0, i32 109
  %71 = load ptr, ptr %70, align 8, !tbaa !71
  %72 = icmp eq ptr %71, null
  br i1 %72, label %78, label %73

73:                                               ; preds = %68, %73
  %74 = phi ptr [ %76, %73 ], [ %71, %68 ]
  %75 = load ptr, ptr %57, align 8, !tbaa !78
  call fastcc void @add_particles_to_effectors(ptr noundef nonnull %6, ptr noundef %0, ptr noundef nonnull %3, ptr noundef %75, ptr noundef nonnull %74, ptr noundef %2) #17
  %76 = load ptr, ptr %74, align 8, !tbaa !72
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %73, !llvm.loop !79

78:                                               ; preds = %73, %50, %68
  %79 = load ptr, ptr %51, align 8, !tbaa !34
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %50, !llvm.loop !80

81:                                               ; preds = %43, %78, %11, %46
  %82 = icmp eq i8 %4, 0
  %83 = load ptr, ptr %6, align 8, !tbaa !34
  br i1 %82, label %85, label %84

84:                                               ; preds = %81
  tail call void @pdPrecalculateEffectors(ptr noundef %83) #17
  br label %85

85:                                               ; preds = %84, %81
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  ret ptr %83
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_object_to_effectors(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef readnone %4) unnamed_addr #0 !PGOFuncName !81 {
  %6 = icmp eq ptr %3, %4
  br i1 %6, label %38, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 110
  %9 = load ptr, ptr %8, align 8, !tbaa !70
  %10 = getelementptr inbounds %struct.PartDeflect, ptr %9, i64 0, i32 2
  %11 = load i16, ptr %10, align 2, !tbaa !49
  %12 = sext i16 %11 to i64
  %13 = getelementptr inbounds %struct.EffectorWeights, ptr %2, i64 0, i32 1, i64 %12
  %14 = load float, ptr %13, align 4, !tbaa !38
  %15 = fcmp oeq float %14, 0.000000e+00
  br i1 %15, label %38, label %16

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.PartDeflect, ptr %9, i64 0, i32 4
  %18 = load i16, ptr %17, align 2, !tbaa !53
  %19 = icmp eq i16 %18, 3
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 120
  %22 = load ptr, ptr %21, align 8, !tbaa !82
  %23 = icmp eq ptr %22, null
  br i1 %23, label %38, label %24

24:                                               ; preds = %20, %16
  %25 = load ptr, ptr %0, align 8, !tbaa !34
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %29 = tail call ptr %28(i64 noundef 16, ptr noundef nonnull @.str.2) #15
  store ptr %29, ptr %0, align 8, !tbaa !34
  %30 = load ptr, ptr %8, align 8, !tbaa !70
  br label %31

31:                                               ; preds = %27, %24
  %32 = phi ptr [ %30, %27 ], [ %9, %24 ]
  %33 = tail call fastcc ptr @new_effector_cache(ptr noundef %1, ptr noundef nonnull %3, ptr noundef null, ptr noundef %32) #17
  %34 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 50
  %35 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 47
  %36 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %34, ptr noundef nonnull %35) #15
  %37 = load ptr, ptr %0, align 8, !tbaa !34
  tail call void @BLI_addtail(ptr noundef %37, ptr noundef %33) #15
  br label %38

38:                                               ; preds = %20, %5, %7, %31
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_particles_to_effectors(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4, ptr noundef readnone %5) unnamed_addr #0 !PGOFuncName !83 {
  %7 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !84
  %9 = tail call i32 @psys_check_enabled(ptr noundef %3, ptr noundef %4) #15
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %66, label %11

11:                                               ; preds = %6
  %12 = icmp eq ptr %4, %5
  br i1 %12, label %13, label %18

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.ParticleSettings, ptr %8, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !85
  %16 = and i32 %15, 4194304
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %66, label %18

18:                                               ; preds = %13, %11
  %19 = getelementptr inbounds %struct.ParticleSettings, ptr %8, i64 0, i32 128
  %20 = load ptr, ptr %19, align 8, !tbaa !87
  %21 = icmp eq ptr %20, null
  br i1 %21, label %42, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.PartDeflect, ptr %20, i64 0, i32 2
  %24 = load i16, ptr %23, align 2, !tbaa !49
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %42, label %26

26:                                               ; preds = %22
  %27 = sext i16 %24 to i64
  %28 = getelementptr inbounds %struct.EffectorWeights, ptr %2, i64 0, i32 1, i64 %27
  %29 = load float, ptr %28, align 4, !tbaa !38
  %30 = fcmp une float %29, 0.000000e+00
  br i1 %30, label %31, label %42

31:                                               ; preds = %26
  %32 = load ptr, ptr %0, align 8, !tbaa !34
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %36 = tail call ptr %35(i64 noundef 16, ptr noundef nonnull @.str.2) #15
  store ptr %36, ptr %0, align 8, !tbaa !34
  %37 = load ptr, ptr %19, align 8, !tbaa !87
  br label %38

38:                                               ; preds = %34, %31
  %39 = phi ptr [ %37, %34 ], [ %20, %31 ]
  %40 = phi ptr [ %36, %34 ], [ %32, %31 ]
  %41 = tail call fastcc ptr @new_effector_cache(ptr noundef %1, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %39) #17
  tail call void @BLI_addtail(ptr noundef %40, ptr noundef %41) #15
  br label %42

42:                                               ; preds = %38, %26, %22, %18
  %43 = getelementptr inbounds %struct.ParticleSettings, ptr %8, i64 0, i32 129
  %44 = load ptr, ptr %43, align 8, !tbaa !88
  %45 = icmp eq ptr %44, null
  br i1 %45, label %66, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.PartDeflect, ptr %44, i64 0, i32 2
  %48 = load i16, ptr %47, align 2, !tbaa !49
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %66, label %50

50:                                               ; preds = %46
  %51 = sext i16 %48 to i64
  %52 = getelementptr inbounds %struct.EffectorWeights, ptr %2, i64 0, i32 1, i64 %51
  %53 = load float, ptr %52, align 4, !tbaa !38
  %54 = fcmp une float %53, 0.000000e+00
  br i1 %54, label %55, label %66

55:                                               ; preds = %50
  %56 = load ptr, ptr %0, align 8, !tbaa !34
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %60 = tail call ptr %59(i64 noundef 16, ptr noundef nonnull @.str.2) #15
  store ptr %60, ptr %0, align 8, !tbaa !34
  %61 = load ptr, ptr %43, align 8, !tbaa !88
  br label %62

62:                                               ; preds = %58, %55
  %63 = phi ptr [ %61, %58 ], [ %44, %55 ]
  %64 = phi ptr [ %60, %58 ], [ %56, %55 ]
  %65 = tail call fastcc ptr @new_effector_cache(ptr noundef %1, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %63) #17
  tail call void @BLI_addtail(ptr noundef %64, ptr noundef %65) #15
  br label %66

66:                                               ; preds = %42, %46, %50, %62, %13, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pdPrecalculateEffectors(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %4, %3 ]
  tail call fastcc void @precalculate_effector(ptr noundef nonnull %7) #17
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %6, !llvm.loop !89

10:                                               ; preds = %6, %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pdEndEffectors(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %4, %14
  %8 = phi ptr [ %15, %14 ], [ %5, %4 ]
  %9 = getelementptr inbounds %struct.EffectorCache, ptr %8, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !90
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %13(ptr noundef nonnull %10) #15
  br label %14

14:                                               ; preds = %7, %12
  %15 = load ptr, ptr %8, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %7, !llvm.loop !92

17:                                               ; preds = %14
  %18 = load ptr, ptr %0, align 8, !tbaa !34
  br label %19

19:                                               ; preds = %17, %4
  %20 = phi ptr [ %18, %17 ], [ %2, %4 ]
  tail call void @BLI_freelistN(ptr noundef %20) #15
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %22 = load ptr, ptr %0, align 8, !tbaa !34
  tail call void %21(ptr noundef %22) #15
  store ptr null, ptr %0, align 8, !tbaa !34
  br label %23

23:                                               ; preds = %19, %1
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @precalculate_effector(ptr noundef %0) unnamed_addr #0 !PGOFuncName !93 {
  %2 = alloca [3 x float], align 4
  %3 = getelementptr inbounds %struct.EffectorCache, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !94
  %5 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !95
  %7 = tail call i32 @llvm.abs.i32(i32 %6, i1 true)
  %8 = getelementptr inbounds %struct.EffectorCache, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !114
  %10 = getelementptr inbounds %struct.PartDeflect, ptr %9, i64 0, i32 37
  %11 = load ptr, ptr %10, align 8, !tbaa !62
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct.PartDeflect, ptr %9, i64 0, i32 39
  %14 = load i32, ptr %13, align 4, !tbaa !52
  %15 = add i32 %14, %7
  br i1 %12, label %16, label %20

16:                                               ; preds = %1
  %17 = tail call ptr @BLI_rng_new(i32 noundef %15) #15
  %18 = load ptr, ptr %8, align 8, !tbaa !114
  %19 = getelementptr inbounds %struct.PartDeflect, ptr %18, i64 0, i32 37
  store ptr %17, ptr %19, align 8, !tbaa !62
  br label %22

20:                                               ; preds = %1
  tail call void @BLI_rng_srandom(ptr noundef nonnull %11, i32 noundef %15) #15
  %21 = load ptr, ptr %8, align 8, !tbaa !114
  br label %22

22:                                               ; preds = %20, %16
  %23 = phi ptr [ %21, %20 ], [ %18, %16 ]
  %24 = getelementptr inbounds %struct.PartDeflect, ptr %23, i64 0, i32 2
  %25 = load i16, ptr %24, align 2, !tbaa !49
  %26 = icmp eq i16 %25, 5
  br i1 %26, label %27, label %72

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.EffectorCache, ptr %0, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !115
  %30 = getelementptr inbounds %struct.Object, ptr %29, i64 0, i32 3
  %31 = load i16, ptr %30, align 8, !tbaa !116
  %32 = icmp eq i16 %31, 2
  br i1 %32, label %33, label %72

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.Object, ptr %29, i64 0, i32 19
  %35 = load ptr, ptr %34, align 8, !tbaa !117
  %36 = getelementptr inbounds %struct.Curve, ptr %35, i64 0, i32 23
  %37 = load i32, ptr %36, align 4, !tbaa !118
  %38 = and i32 %37, 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %98, label %40

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.Object, ptr %29, i64 0, i32 118
  %42 = load ptr, ptr %41, align 8, !tbaa !121
  %43 = icmp eq ptr %42, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.CurveCache, ptr %42, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !122
  %47 = icmp eq ptr %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %46, align 8, !tbaa !124
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %62

51:                                               ; preds = %40, %44, %48
  %52 = load ptr, ptr %3, align 8, !tbaa !94
  tail call void @BKE_displist_make_curveTypes(ptr noundef %52, ptr noundef nonnull %29, i8 noundef zeroext 0) #15
  %53 = load ptr, ptr %28, align 8, !tbaa !115
  %54 = getelementptr inbounds %struct.Object, ptr %53, i64 0, i32 118
  %55 = load ptr, ptr %54, align 8, !tbaa !121
  %56 = getelementptr inbounds %struct.CurveCache, ptr %55, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !122
  %58 = icmp eq ptr %57, null
  br i1 %58, label %98, label %59

59:                                               ; preds = %51
  %60 = load ptr, ptr %57, align 8, !tbaa !124
  %61 = icmp eq ptr %60, null
  br i1 %61, label %98, label %62

62:                                               ; preds = %48, %59
  %63 = phi ptr [ %53, %59 ], [ %29, %48 ]
  %64 = getelementptr inbounds %struct.EffectorCache, ptr %0, i64 0, i32 8
  %65 = getelementptr inbounds %struct.EffectorCache, ptr %0, i64 0, i32 9
  %66 = getelementptr inbounds %struct.EffectorCache, ptr %0, i64 0, i32 10
  %67 = tail call i32 @where_on_path(ptr noundef nonnull %63, float noundef 0.000000e+00, ptr noundef nonnull %64, ptr noundef nonnull %65, ptr noundef null, ptr noundef nonnull %66, ptr noundef null) #15
  %68 = load ptr, ptr %28, align 8, !tbaa !115
  %69 = getelementptr inbounds %struct.Object, ptr %68, i64 0, i32 47
  tail call void @mul_m4_v3(ptr noundef nonnull %69, ptr noundef nonnull %64) #15
  %70 = load ptr, ptr %28, align 8, !tbaa !115
  %71 = getelementptr inbounds %struct.Object, ptr %70, i64 0, i32 47
  tail call void @mul_mat3_m4_v3(ptr noundef nonnull %71, ptr noundef nonnull %65) #15
  br label %98

72:                                               ; preds = %27, %22
  %73 = getelementptr inbounds %struct.PartDeflect, ptr %23, i64 0, i32 4
  %74 = load i16, ptr %73, align 2, !tbaa !53
  %75 = icmp eq i16 %74, 2
  br i1 %75, label %76, label %89

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.EffectorCache, ptr %0, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !115
  %79 = tail call ptr @modifiers_findByType(ptr noundef %78, i32 noundef 30) #15
  %80 = getelementptr inbounds %struct.EffectorCache, ptr %0, i64 0, i32 5
  store ptr %79, ptr %80, align 8, !tbaa !126
  %81 = load ptr, ptr %77, align 8, !tbaa !115
  %82 = getelementptr inbounds %struct.Object, ptr %81, i64 0, i32 3
  %83 = load i16, ptr %82, align 8, !tbaa !116
  %84 = icmp eq i16 %83, 2
  br i1 %84, label %85, label %98

85:                                               ; preds = %76
  %86 = getelementptr inbounds %struct.EffectorCache, ptr %0, i64 0, i32 13
  %87 = load i32, ptr %86, align 8, !tbaa !127
  %88 = or i32 %87, 4
  store i32 %88, ptr %86, align 8, !tbaa !127
  br label %98

89:                                               ; preds = %72
  %90 = getelementptr inbounds %struct.EffectorCache, ptr %0, i64 0, i32 4
  %91 = load ptr, ptr %90, align 8, !tbaa !128
  %92 = icmp eq ptr %91, null
  br i1 %92, label %98, label %93

93:                                               ; preds = %89
  %94 = load ptr, ptr %3, align 8, !tbaa !94
  %95 = getelementptr inbounds %struct.Scene, ptr %94, i64 0, i32 22, i32 5
  %96 = load i32, ptr %95, align 8, !tbaa !95
  %97 = sitofp i32 %96 to float
  tail call void @psys_update_particle_tree(ptr noundef nonnull %91, float noundef %97) #15
  br label %98

98:                                               ; preds = %33, %62, %59, %51, %85, %76, %93, %89
  %99 = getelementptr inbounds %struct.EffectorCache, ptr %0, i64 0, i32 3
  %100 = load ptr, ptr %99, align 8, !tbaa !115
  %101 = icmp eq ptr %100, null
  br i1 %101, label %112, label %102

102:                                              ; preds = %98
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #16
  %103 = load ptr, ptr %3, align 8, !tbaa !94
  %104 = uitofp i32 %7 to float
  %105 = fadd float %104, -1.000000e+00
  tail call void @BKE_object_where_is_calc_time(ptr noundef %103, ptr noundef nonnull %100, float noundef %105) #15
  %106 = load ptr, ptr %99, align 8, !tbaa !115
  %107 = getelementptr inbounds %struct.Object, ptr %106, i64 0, i32 47, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %2, ptr noundef nonnull %107) #17
  %108 = load ptr, ptr %3, align 8, !tbaa !94
  tail call void @BKE_object_where_is_calc_time(ptr noundef %108, ptr noundef %106, float noundef %104) #15
  %109 = getelementptr inbounds %struct.EffectorCache, ptr %0, i64 0, i32 11
  %110 = load ptr, ptr %99, align 8, !tbaa !115
  %111 = getelementptr inbounds %struct.Object, ptr %110, i64 0, i32 47, i64 3
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %109, ptr noundef nonnull %111, ptr noundef nonnull %2) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #16
  br label %112

112:                                              ; preds = %102, %98
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pd_point_from_particle(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ParticleSimulationData, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !129
  %7 = getelementptr inbounds %struct.ParticleSystem, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !84
  store ptr %2, ptr %3, align 8, !tbaa !131
  %9 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 1
  %10 = getelementptr inbounds %struct.EffectedPoint, ptr %3, i64 0, i32 1
  store ptr %9, ptr %10, align 8, !tbaa !133
  %11 = getelementptr inbounds %struct.ParticleSystem, ptr %6, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !134
  %13 = ptrtoint ptr %1 to i64
  %14 = ptrtoint ptr %12 to i64
  %15 = sub i64 %13, %14
  %16 = sdiv exact i64 %15, 200
  %17 = trunc i64 %16 to i32
  %18 = getelementptr inbounds %struct.EffectedPoint, ptr %3, i64 0, i32 9
  store i32 %17, ptr %18, align 4, !tbaa !135
  %19 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 13
  %20 = load float, ptr %19, align 4, !tbaa !136
  %21 = getelementptr inbounds %struct.EffectedPoint, ptr %3, i64 0, i32 6
  store float %20, ptr %21, align 8, !tbaa !139
  %22 = getelementptr inbounds %struct.EffectedPoint, ptr %3, i64 0, i32 7
  store float 0.000000e+00, ptr %22, align 4, !tbaa !140
  %23 = getelementptr inbounds %struct.ParticleSettings, ptr %8, i64 0, i32 128
  %24 = load ptr, ptr %23, align 8, !tbaa !87
  %25 = icmp eq ptr %24, null
  br i1 %25, label %34, label %26

26:                                               ; preds = %4
  %27 = getelementptr inbounds %struct.PartDeflect, ptr %24, i64 0, i32 2
  %28 = load i16, ptr %27, align 2, !tbaa !49
  %29 = icmp eq i16 %28, 8
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.PartDeflect, ptr %24, i64 0, i32 9
  %32 = load float, ptr %31, align 4, !tbaa !141
  %33 = fadd float %32, 0.000000e+00
  store float %33, ptr %22, align 4, !tbaa !140
  br label %34

34:                                               ; preds = %30, %26, %4
  %35 = phi float [ %33, %30 ], [ 0.000000e+00, %26 ], [ 0.000000e+00, %4 ]
  %36 = getelementptr inbounds %struct.ParticleSettings, ptr %8, i64 0, i32 129
  %37 = load ptr, ptr %36, align 8, !tbaa !88
  %38 = icmp eq ptr %37, null
  br i1 %38, label %47, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.PartDeflect, ptr %37, i64 0, i32 2
  %41 = load i16, ptr %40, align 2, !tbaa !49
  %42 = icmp eq i16 %41, 8
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.PartDeflect, ptr %37, i64 0, i32 9
  %45 = load float, ptr %44, align 4, !tbaa !141
  %46 = fadd float %45, %35
  store float %46, ptr %22, align 4, !tbaa !140
  br label %47

47:                                               ; preds = %43, %39, %34
  %48 = getelementptr inbounds %struct.EffectedPoint, ptr %3, i64 0, i32 5
  store float 1.000000e+00, ptr %48, align 4, !tbaa !142
  %49 = tail call float @psys_get_timestep(ptr noundef nonnull %0) #15
  %50 = getelementptr inbounds %struct.EffectedPoint, ptr %3, i64 0, i32 4
  store float %49, ptr %50, align 8, !tbaa !143
  %51 = getelementptr inbounds %struct.EffectedPoint, ptr %3, i64 0, i32 8
  store i32 0, ptr %51, align 8, !tbaa !144
  %52 = load ptr, ptr %5, align 8, !tbaa !129
  %53 = getelementptr inbounds %struct.ParticleSystem, ptr %52, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !84
  %55 = getelementptr inbounds %struct.ParticleSettings, ptr %54, i64 0, i32 5
  %56 = load i32, ptr %55, align 8, !tbaa !85
  %57 = and i32 %56, 16384
  %58 = icmp eq i32 %57, 0
  %59 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 3
  %60 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 2
  %61 = select i1 %58, ptr null, ptr %60
  %62 = select i1 %58, ptr null, ptr %59
  %63 = getelementptr inbounds %struct.EffectedPoint, ptr %3, i64 0, i32 3
  store ptr %61, ptr %63, align 8
  %64 = getelementptr inbounds %struct.EffectedPoint, ptr %3, i64 0, i32 2
  store ptr %62, ptr %64, align 8
  %65 = getelementptr inbounds %struct.EffectedPoint, ptr %3, i64 0, i32 10
  store ptr %52, ptr %65, align 8, !tbaa !145
  ret void
}

; Function Attrs: optsize
declare float @psys_get_timestep(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @pd_point_from_loc(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #4 {
  store ptr %1, ptr %4, align 8, !tbaa !131
  %6 = getelementptr inbounds %struct.EffectedPoint, ptr %4, i64 0, i32 1
  store ptr %2, ptr %6, align 8, !tbaa !133
  %7 = getelementptr inbounds %struct.EffectedPoint, ptr %4, i64 0, i32 9
  store i32 %3, ptr %7, align 4, !tbaa !135
  %8 = getelementptr inbounds %struct.EffectedPoint, ptr %4, i64 0, i32 6
  store float 0.000000e+00, ptr %8, align 8, !tbaa !139
  %9 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 55
  %10 = load i16, ptr %9, align 4, !tbaa !146
  %11 = sitofp i16 %10 to float
  %12 = getelementptr inbounds %struct.EffectedPoint, ptr %4, i64 0, i32 5
  store float %11, ptr %12, align 4, !tbaa !142
  %13 = getelementptr inbounds %struct.EffectedPoint, ptr %4, i64 0, i32 4
  store float 1.000000e+00, ptr %13, align 8, !tbaa !143
  %14 = getelementptr inbounds %struct.EffectedPoint, ptr %4, i64 0, i32 8
  store i32 0, ptr %14, align 8, !tbaa !144
  %15 = getelementptr inbounds %struct.EffectedPoint, ptr %4, i64 0, i32 2
  %16 = getelementptr inbounds %struct.EffectedPoint, ptr %4, i64 0, i32 10
  store ptr null, ptr %16, align 8, !tbaa !145
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @pd_point_from_soft(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #4 {
  store ptr %1, ptr %4, align 8, !tbaa !131
  %6 = getelementptr inbounds %struct.EffectedPoint, ptr %4, i64 0, i32 1
  store ptr %2, ptr %6, align 8, !tbaa !133
  %7 = getelementptr inbounds %struct.EffectedPoint, ptr %4, i64 0, i32 9
  store i32 %3, ptr %7, align 4, !tbaa !135
  %8 = getelementptr inbounds %struct.EffectedPoint, ptr %4, i64 0, i32 6
  store float 0.000000e+00, ptr %8, align 8, !tbaa !139
  %9 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 55
  %10 = load i16, ptr %9, align 4, !tbaa !146
  %11 = sitofp i16 %10 to float
  %12 = getelementptr inbounds %struct.EffectedPoint, ptr %4, i64 0, i32 5
  store float %11, ptr %12, align 4, !tbaa !142
  %13 = getelementptr inbounds %struct.EffectedPoint, ptr %4, i64 0, i32 4
  store float 1.000000e+00, ptr %13, align 8, !tbaa !143
  %14 = getelementptr inbounds %struct.EffectedPoint, ptr %4, i64 0, i32 8
  store i32 1, ptr %14, align 8, !tbaa !144
  %15 = getelementptr inbounds %struct.EffectedPoint, ptr %4, i64 0, i32 2
  %16 = getelementptr inbounds %struct.EffectedPoint, ptr %4, i64 0, i32 10
  store ptr null, ptr %16, align 8, !tbaa !145
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable
define dso_local float @effector_falloff(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, ptr noundef readonly %3) local_unnamed_addr #5 {
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #16
  %6 = icmp eq ptr %3, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.EffectorCache, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !114
  br label %21

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.EffectorWeights, ptr %3, i64 0, i32 1
  %12 = load float, ptr %11, align 8, !tbaa !38
  %13 = getelementptr inbounds %struct.EffectorCache, ptr %0, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !114
  %15 = getelementptr inbounds %struct.PartDeflect, ptr %14, i64 0, i32 2
  %16 = load i16, ptr %15, align 2, !tbaa !49
  %17 = sext i16 %16 to i64
  %18 = getelementptr inbounds %struct.EffectorWeights, ptr %3, i64 0, i32 1, i64 %17
  %19 = load float, ptr %18, align 4, !tbaa !38
  %20 = fmul float %12, %19
  br label %21

21:                                               ; preds = %7, %10
  %22 = phi ptr [ %14, %10 ], [ %9, %7 ]
  %23 = phi float [ %20, %10 ], [ 1.000000e+00, %7 ]
  %24 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 1
  %25 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 9
  %26 = tail call fastcc float @dot_v3v3(ptr noundef nonnull %24, ptr noundef nonnull %25) #17
  %27 = getelementptr inbounds %struct.EffectorCache, ptr %0, i64 0, i32 6
  %28 = getelementptr inbounds %struct.PartDeflect, ptr %22, i64 0, i32 8
  %29 = load i16, ptr %28, align 2, !tbaa !147
  %30 = icmp eq i16 %29, 1
  %31 = fcmp olt float %26, 0.000000e+00
  %32 = select i1 %30, i1 %31, i1 false
  br i1 %32, label %72, label %33

33:                                               ; preds = %21
  %34 = icmp eq i16 %29, 2
  %35 = fcmp ogt float %26, 0.000000e+00
  %36 = select i1 %34, i1 %35, i1 false
  br i1 %36, label %72, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.PartDeflect, ptr %22, i64 0, i32 3
  %39 = load i16, ptr %38, align 8, !tbaa !148
  switch i16 %39, label %72 [
    i16 0, label %40
    i16 1, label %45
    i16 2, label %57
  ]

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 4
  %42 = load float, ptr %41, align 8, !tbaa !149
  %43 = tail call fastcc float @falloff_func_dist(ptr noundef nonnull %22, float noundef %42) #17
  %44 = fmul float %23, %43
  br label %72

45:                                               ; preds = %37
  %46 = fneg float %26
  %47 = select i1 %31, float %46, float %26
  %48 = tail call fastcc float @falloff_func_dist(ptr noundef nonnull %22, float noundef %47) #17
  %49 = fmul float %23, %48
  %50 = fcmp oeq float %49, 0.000000e+00
  br i1 %50, label %72, label %51

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 3
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %5, ptr noundef nonnull %52, ptr noundef nonnull %24, float noundef %46) #17
  %53 = call fastcc float @len_v3(ptr noundef nonnull %5) #17
  %54 = load ptr, ptr %27, align 8, !tbaa !114
  %55 = tail call fastcc float @falloff_func_rad(ptr noundef %54, float noundef %53) #17
  %56 = fmul float %49, %55
  br label %72

57:                                               ; preds = %37
  %58 = fneg float %26
  %59 = select i1 %31, float %58, float %26
  %60 = tail call fastcc float @falloff_func_dist(ptr noundef nonnull %22, float noundef %59) #17
  %61 = fmul float %23, %60
  %62 = fcmp oeq float %61, 0.000000e+00
  br i1 %62, label %72, label %63

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 3
  %65 = tail call fastcc float @len_v3(ptr noundef nonnull %64) #17
  %66 = fdiv float %26, %65
  %67 = tail call fastcc float @saacos(float noundef %66) #17
  %68 = fmul float %67, 0x404CA5DC20000000
  %69 = load ptr, ptr %27, align 8, !tbaa !114
  %70 = tail call fastcc float @falloff_func_rad(ptr noundef %69, float noundef %68) #17
  %71 = fmul float %61, %70
  br label %72

72:                                               ; preds = %33, %21, %57, %45, %37, %63, %51, %40
  %73 = phi float [ %23, %37 ], [ %61, %57 ], [ %71, %63 ], [ %49, %45 ], [ %56, %51 ], [ %44, %40 ], [ 0.000000e+00, %21 ], [ 0.000000e+00, %33 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #16
  ret float %73
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !151 {
  %3 = load float, ptr %0, align 4, !tbaa !38
  %4 = load float, ptr %1, align 4, !tbaa !38
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !38
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !38
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !38
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !38
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @falloff_func_dist(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #7 !PGOFuncName !152 {
  %3 = load i32, ptr %0, align 8, !tbaa !56
  %4 = and i32 %3, 256
  %5 = getelementptr inbounds %struct.PartDeflect, ptr %0, i64 0, i32 15
  %6 = load float, ptr %5, align 4, !tbaa !153
  %7 = and i32 %3, 1
  %8 = getelementptr inbounds %struct.PartDeflect, ptr %0, i64 0, i32 14
  %9 = load float, ptr %8, align 8, !tbaa !154
  %10 = getelementptr inbounds %struct.PartDeflect, ptr %0, i64 0, i32 13
  %11 = load float, ptr %10, align 4, !tbaa !155
  %12 = tail call fastcc float @falloff_func(float noundef %1, i32 noundef %4, float noundef %6, i32 noundef %7, float noundef %9, float noundef %11) #17
  ret float %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #4 !PGOFuncName !156 {
  %5 = load float, ptr %1, align 4, !tbaa !38
  %6 = load float, ptr %2, align 4, !tbaa !38
  %7 = tail call float @llvm.fmuladd.f32(float %6, float %3, float %5)
  store float %7, ptr %0, align 4, !tbaa !38
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !38
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !38
  %12 = tail call float @llvm.fmuladd.f32(float %11, float %3, float %9)
  %13 = getelementptr inbounds float, ptr %0, i64 1
  store float %12, ptr %13, align 4, !tbaa !38
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !38
  %16 = getelementptr inbounds float, ptr %2, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !38
  %18 = tail call float @llvm.fmuladd.f32(float %17, float %3, float %15)
  %19 = getelementptr inbounds float, ptr %0, i64 2
  store float %18, ptr %19, align 4, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !157 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #17
  %3 = tail call float @sqrtf(float noundef %2) #15
  ret float %3
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @falloff_func_rad(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #7 !PGOFuncName !158 {
  %3 = load i32, ptr %0, align 8, !tbaa !56
  %4 = and i32 %3, 1024
  %5 = getelementptr inbounds %struct.PartDeflect, ptr %0, i64 0, i32 18
  %6 = load float, ptr %5, align 8, !tbaa !159
  %7 = and i32 %3, 512
  %8 = getelementptr inbounds %struct.PartDeflect, ptr %0, i64 0, i32 17
  %9 = load float, ptr %8, align 4, !tbaa !160
  %10 = getelementptr inbounds %struct.PartDeflect, ptr %0, i64 0, i32 16
  %11 = load float, ptr %10, align 8, !tbaa !161
  %12 = tail call fastcc float @falloff_func(float noundef %1, i32 noundef %4, float noundef %6, i32 noundef %7, float noundef %9, float noundef %11) #17
  ret float %12
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc float @saacos(float noundef %0) unnamed_addr #8 !PGOFuncName !162 {
  %2 = fcmp ugt float %0, -1.000000e+00
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = fcmp ult float %0, 1.000000e+00
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call float @acosf(float noundef %0) #15
  br label %7

7:                                                ; preds = %3, %1, %5
  %8 = phi float [ %6, %5 ], [ 0x400921FB60000000, %1 ], [ 0.000000e+00, %3 ]
  ret float %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @closest_point_on_surface(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr noundef writeonly %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.BVHTreeNearest, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #16
  store i32 -1, ptr %6, align 4, !tbaa !163
  %7 = getelementptr inbounds %struct.BVHTreeNearest, ptr %6, i64 0, i32 3
  store float 0x47EFFFFFE0000000, ptr %7, align 4, !tbaa !165
  %8 = getelementptr inbounds %struct.SurfaceModifierData, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !166
  %10 = load ptr, ptr %9, align 8, !tbaa !169
  %11 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %9, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !171
  %13 = call i32 @BLI_bvhtree_find_nearest(ptr noundef %10, ptr noundef %1, ptr noundef nonnull %6, ptr noundef %12, ptr noundef nonnull %9) #15
  %14 = load i32, ptr %6, align 4, !tbaa !163
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %54, label %16

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.BVHTreeNearest, ptr %6, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef nonnull %17) #17
  %18 = icmp eq ptr %3, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.BVHTreeNearest, ptr %6, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %20) #17
  br label %21

21:                                               ; preds = %19, %16
  %22 = icmp eq ptr %4, null
  br i1 %22, label %54, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.SurfaceModifierData, ptr %0, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !172
  %26 = call ptr @CDDM_get_tessface(ptr noundef %25, i32 noundef %14) #15
  %27 = getelementptr inbounds %struct.SurfaceModifierData, ptr %0, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !173
  %29 = load i32, ptr %26, align 4, !tbaa !174
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.MVert, ptr %28, i64 %30
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef %31) #17
  %32 = load ptr, ptr %27, align 8, !tbaa !173
  %33 = getelementptr inbounds %struct.MFace, ptr %26, i64 0, i32 1
  %34 = load i32, ptr %33, align 4, !tbaa !176
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.MVert, ptr %32, i64 %35
  call fastcc void @add_v3_v3(ptr noundef nonnull %4, ptr noundef %36) #17
  %37 = load ptr, ptr %27, align 8, !tbaa !173
  %38 = getelementptr inbounds %struct.MFace, ptr %26, i64 0, i32 2
  %39 = load i32, ptr %38, align 4, !tbaa !177
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.MVert, ptr %37, i64 %40
  call fastcc void @add_v3_v3(ptr noundef nonnull %4, ptr noundef %41) #17
  %42 = getelementptr inbounds %struct.MFace, ptr %26, i64 0, i32 3
  %43 = load i32, ptr %42, align 4, !tbaa !178
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %23
  %46 = load ptr, ptr %27, align 8, !tbaa !173
  %47 = zext i32 %43 to i64
  %48 = getelementptr inbounds %struct.MVert, ptr %46, i64 %47
  call fastcc void @add_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %48) #17
  %49 = load i32, ptr %42, align 4, !tbaa !178
  %50 = icmp eq i32 %49, 0
  %51 = select i1 %50, float 0x3FD5555560000000, float 2.500000e-01
  br label %52

52:                                               ; preds = %45, %23
  %53 = phi float [ %51, %45 ], [ 0x3FD5555560000000, %23 ]
  call fastcc void @mul_v3_fl(ptr noundef nonnull %4, float noundef %53) #17
  br label %54

54:                                               ; preds = %5, %21, %52
  %55 = phi i32 [ 1, %52 ], [ 1, %21 ], [ 0, %5 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #16
  ret i32 %55
}

; Function Attrs: optsize
declare i32 @BLI_bvhtree_find_nearest(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !179 {
  %3 = load float, ptr %1, align 4, !tbaa !38
  store float %3, ptr %0, align 4, !tbaa !38
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !38
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !38
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !38
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !38
  ret void
}

; Function Attrs: optsize
declare ptr @CDDM_get_tessface(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !180 {
  %3 = load float, ptr %1, align 4, !tbaa !38
  %4 = load float, ptr %0, align 4, !tbaa !38
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !38
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !38
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !38
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !38
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !38
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !38
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #4 !PGOFuncName !181 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !38
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !38
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !38
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !38
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_effector_data(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [3 x float], align 4
  %6 = alloca %struct.ParticleKey, align 4
  %7 = alloca %struct.ParticleSimulationData, align 8
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = getelementptr inbounds %struct.EffectorCache, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !94
  %12 = getelementptr inbounds %struct.Scene, ptr %11, i64 0, i32 22, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !95
  %14 = sitofp i32 %13 to float
  %15 = getelementptr inbounds %struct.EffectorCache, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !114
  %17 = icmp eq ptr %16, null
  br i1 %17, label %59, label %18

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.PartDeflect, ptr %16, i64 0, i32 4
  %20 = load i16, ptr %19, align 2, !tbaa !53
  switch i16 %20, label %59 [
    i16 2, label %21
    i16 3, label %37
  ]

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.EffectorCache, ptr %0, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !126
  %24 = icmp eq ptr %23, null
  br i1 %24, label %59, label %25

25:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #16
  %26 = getelementptr inbounds %struct.EffectedPoint, ptr %2, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !133
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef %27) #17
  %28 = getelementptr inbounds %struct.EffectedPoint, ptr %2, i64 0, i32 4
  %29 = load float, ptr %28, align 8, !tbaa !143
  call fastcc void @mul_v3_fl(ptr noundef nonnull %5, float noundef %29) #17
  %30 = load ptr, ptr %2, align 8, !tbaa !131
  call fastcc void @add_v3_v3(ptr noundef nonnull %5, ptr noundef %30) #17
  %31 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 1
  %32 = icmp eq i32 %3, 0
  %33 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 2
  %34 = select i1 %32, ptr null, ptr %33
  %35 = call i32 @closest_point_on_surface(ptr noundef nonnull %23, ptr noundef nonnull %5, ptr noundef %1, ptr noundef nonnull %31, ptr noundef %34) #17, !range !182
  %36 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 6
  store float 0.000000e+00, ptr %36, align 8, !tbaa !183
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #16
  br label %129

37:                                               ; preds = %18
  %38 = getelementptr inbounds %struct.EffectorCache, ptr %0, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !115
  %40 = getelementptr inbounds %struct.Object, ptr %39, i64 0, i32 120
  %41 = load ptr, ptr %40, align 8, !tbaa !82
  %42 = icmp eq ptr %41, null
  br i1 %42, label %171, label %43

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.DerivedMesh, ptr %41, i64 0, i32 76
  %45 = load ptr, ptr %44, align 8, !tbaa !184
  %46 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 10
  %47 = load ptr, ptr %46, align 8, !tbaa !187
  %48 = load i32, ptr %47, align 4, !tbaa !188
  tail call void %45(ptr noundef nonnull %41, i32 noundef %48, ptr noundef %1) #15
  %49 = getelementptr inbounds %struct.DerivedMesh, ptr %41, i64 0, i32 78
  %50 = load ptr, ptr %49, align 8, !tbaa !189
  %51 = load ptr, ptr %46, align 8, !tbaa !187
  %52 = load i32, ptr %51, align 4, !tbaa !188
  %53 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 1
  tail call void %50(ptr noundef nonnull %41, i32 noundef %52, ptr noundef nonnull %53) #15
  %54 = load ptr, ptr %38, align 8, !tbaa !115
  %55 = getelementptr inbounds %struct.Object, ptr %54, i64 0, i32 47
  tail call void @mul_m4_v3(ptr noundef nonnull %55, ptr noundef %1) #15
  %56 = load ptr, ptr %38, align 8, !tbaa !115
  %57 = getelementptr inbounds %struct.Object, ptr %56, i64 0, i32 47
  tail call void @mul_mat3_m4_v3(ptr noundef nonnull %57, ptr noundef nonnull %53) #15
  %58 = tail call fastcc float @normalize_v3(ptr noundef nonnull %53) #17
  br label %132

59:                                               ; preds = %18, %21, %4
  %60 = getelementptr inbounds %struct.EffectorCache, ptr %0, i64 0, i32 4
  %61 = load ptr, ptr %60, align 8, !tbaa !128
  %62 = icmp eq ptr %61, null
  br i1 %62, label %99, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.ParticleSystem, ptr %61, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !134
  %66 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 10
  %67 = load ptr, ptr %66, align 8, !tbaa !187
  %68 = load i32, ptr %67, align 4, !tbaa !188
  %69 = sext i32 %68 to i64
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #16
  %70 = getelementptr inbounds %struct.EffectedPoint, ptr %2, i64 0, i32 10
  %71 = load ptr, ptr %70, align 8, !tbaa !145
  %72 = icmp eq ptr %61, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %63
  %74 = getelementptr inbounds %struct.EffectedPoint, ptr %2, i64 0, i32 9
  %75 = load i32, ptr %74, align 4, !tbaa !135
  %76 = icmp eq i32 %68, %75
  br i1 %76, label %97, label %77

77:                                               ; preds = %73, %63
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #16
  %78 = getelementptr inbounds i8, ptr %7, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %78, i8 0, i64 24, i1 false)
  store ptr %11, ptr %7, align 8, !tbaa !190
  %79 = getelementptr inbounds %struct.EffectorCache, ptr %0, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !115
  %81 = getelementptr inbounds %struct.ParticleSimulationData, ptr %7, i64 0, i32 1
  store ptr %80, ptr %81, align 8, !tbaa !191
  %82 = getelementptr inbounds %struct.ParticleSimulationData, ptr %7, i64 0, i32 2
  store ptr %61, ptr %82, align 8, !tbaa !129
  %83 = fadd float %14, -1.000000e+00
  %84 = getelementptr inbounds %struct.ParticleKey, ptr %6, i64 0, i32 4
  store float %83, ptr %84, align 4, !tbaa !192
  %85 = call i32 @psys_get_particle_state(ptr noundef nonnull %7, i32 noundef %68, ptr noundef nonnull %6, i32 noundef 0) #15
  call fastcc void @copy_v3_v3(ptr noundef nonnull %1, ptr noundef nonnull %6) #17
  %86 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 1
  %87 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 1, i64 2
  store float 0.000000e+00, ptr %87, align 4, !tbaa !38
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %86, align 4, !tbaa !38
  %88 = getelementptr inbounds %struct.ParticleKey, ptr %6, i64 0, i32 2
  call void @mul_qt_v3(ptr noundef nonnull %88, ptr noundef nonnull %86) #15
  %89 = icmp eq i32 %3, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %77
  %91 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 2
  %92 = getelementptr inbounds %struct.ParticleKey, ptr %6, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %91, ptr noundef nonnull %92) #17
  br label %93

93:                                               ; preds = %90, %77
  %94 = getelementptr inbounds %struct.ParticleData, ptr %65, i64 %69, i32 13
  %95 = load float, ptr %94, align 4, !tbaa !136
  %96 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 6
  store float %95, ptr %96, align 8, !tbaa !183
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #16
  br label %97

97:                                               ; preds = %73, %93
  %98 = phi i32 [ 0, %73 ], [ %85, %93 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #16
  br label %129

99:                                               ; preds = %59
  %100 = getelementptr inbounds %struct.EffectorCache, ptr %0, i64 0, i32 3
  %101 = load ptr, ptr %100, align 8, !tbaa !115
  %102 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 1
  %103 = getelementptr inbounds %struct.Object, ptr %101, i64 0, i32 47, i64 2
  %104 = tail call fastcc float @normalize_v3_v3(ptr noundef nonnull %102, ptr noundef nonnull %103) #17
  %105 = load ptr, ptr %15, align 8, !tbaa !114
  %106 = icmp eq ptr %105, null
  br i1 %106, label %122, label %107

107:                                              ; preds = %99
  %108 = getelementptr inbounds %struct.PartDeflect, ptr %105, i64 0, i32 4
  %109 = load i16, ptr %108, align 2, !tbaa !53
  %110 = icmp eq i16 %109, 1
  br i1 %110, label %111, label %122

111:                                              ; preds = %107
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #16
  %112 = load ptr, ptr %2, align 8, !tbaa !131
  %113 = getelementptr inbounds %struct.Object, ptr %101, i64 0, i32 47, i64 3
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %8, ptr noundef %112, ptr noundef nonnull %113) #17
  call void @project_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %102) #15
  %114 = load ptr, ptr %15, align 8, !tbaa !114
  %115 = getelementptr inbounds %struct.PartDeflect, ptr %114, i64 0, i32 2
  %116 = load i16, ptr %115, align 2, !tbaa !49
  %117 = icmp eq i16 %116, 2
  br i1 %117, label %118, label %119

118:                                              ; preds = %111
  call fastcc void @add_v3_v3v3(ptr noundef %1, ptr noundef nonnull %113, ptr noundef nonnull %9) #17
  br label %121

119:                                              ; preds = %111
  %120 = load ptr, ptr %2, align 8, !tbaa !131
  call fastcc void @sub_v3_v3v3(ptr noundef %1, ptr noundef %120, ptr noundef nonnull %9) #17
  br label %121

121:                                              ; preds = %119, %118
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #16
  br label %124

122:                                              ; preds = %107, %99
  %123 = getelementptr inbounds %struct.Object, ptr %101, i64 0, i32 47, i64 3
  tail call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef nonnull %123) #17
  br label %124

124:                                              ; preds = %122, %121
  %125 = icmp eq i32 %3, 0
  br i1 %125, label %132, label %126

126:                                              ; preds = %124
  %127 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 2
  %128 = getelementptr inbounds %struct.EffectorCache, ptr %0, i64 0, i32 11
  call fastcc void @copy_v3_v3(ptr noundef nonnull %127, ptr noundef nonnull %128) #17
  br label %132

129:                                              ; preds = %97, %25
  %130 = phi i32 [ %35, %25 ], [ %98, %97 ]
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %171, label %134

132:                                              ; preds = %124, %126, %43
  %133 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 6
  store float 0.000000e+00, ptr %133, align 8, !tbaa !183
  br label %134

134:                                              ; preds = %132, %129
  %135 = phi i32 [ %130, %129 ], [ 1, %132 ]
  %136 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 3
  %137 = load ptr, ptr %2, align 8, !tbaa !131
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %136, ptr noundef %137, ptr noundef nonnull %1) #17
  %138 = call fastcc float @len_v3(ptr noundef nonnull %136) #17
  %139 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 4
  store float %138, ptr %139, align 8, !tbaa !149
  %140 = load ptr, ptr %15, align 8, !tbaa !114
  %141 = icmp eq ptr %140, null
  br i1 %141, label %153, label %142

142:                                              ; preds = %134
  %143 = getelementptr inbounds %struct.PartDeflect, ptr %140, i64 0, i32 2
  %144 = load i16, ptr %143, align 2, !tbaa !49
  %145 = icmp eq i16 %144, 7
  br i1 %145, label %146, label %153

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.PartDeflect, ptr %140, i64 0, i32 12
  %148 = load float, ptr %147, align 8, !tbaa !55
  %149 = fcmp une float %148, 0.000000e+00
  br i1 %149, label %150, label %153

150:                                              ; preds = %146
  %151 = fsub float %138, %148
  %152 = fdiv float %151, %138
  call fastcc void @mul_v3_fl(ptr noundef nonnull %136, float noundef %152) #17
  br label %153

153:                                              ; preds = %150, %146, %142, %134
  %154 = getelementptr inbounds %struct.EffectorCache, ptr %0, i64 0, i32 13
  %155 = load i32, ptr %154, align 8, !tbaa !127
  %156 = and i32 %155, 4
  %157 = icmp eq i32 %156, 0
  %158 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 9
  br i1 %157, label %162, label %159

159:                                              ; preds = %153
  call fastcc void @copy_v3_v3(ptr noundef nonnull %158, ptr noundef nonnull %136) #17
  %160 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 8
  %161 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %160, ptr noundef nonnull %161) #17
  br label %171

162:                                              ; preds = %153
  %163 = load ptr, ptr %2, align 8, !tbaa !131
  %164 = getelementptr inbounds %struct.EffectorCache, ptr %0, i64 0, i32 3
  %165 = load ptr, ptr %164, align 8, !tbaa !115
  %166 = getelementptr inbounds %struct.Object, ptr %165, i64 0, i32 47, i64 3
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %158, ptr noundef %163, ptr noundef nonnull %166) #17
  %167 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 8
  %168 = load ptr, ptr %164, align 8, !tbaa !115
  %169 = getelementptr inbounds %struct.Object, ptr %168, i64 0, i32 47, i64 2
  %170 = call fastcc float @normalize_v3_v3(ptr noundef nonnull %167, ptr noundef nonnull %169) #17
  br label %171

171:                                              ; preds = %37, %159, %162, %129
  %172 = phi i32 [ %135, %159 ], [ %135, %162 ], [ 0, %129 ], [ 0, %37 ]
  ret i32 %172
}

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3(ptr nocapture noundef %0) unnamed_addr #7 !PGOFuncName !193 {
  %2 = tail call fastcc float @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #17
  ret float %2
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: optsize
declare i32 @psys_get_particle_state(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_qt_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !194 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #17
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #15
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #17
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #17
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi float [ %6, %5 ], [ 0.000000e+00, %8 ]
  ret float %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 !PGOFuncName !195 {
  %4 = load float, ptr %1, align 4, !tbaa !38
  %5 = load float, ptr %2, align 4, !tbaa !38
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !38
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !38
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !38
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !38
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !38
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !38
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !38
  ret void
}

; Function Attrs: optsize
declare void @project_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 !PGOFuncName !196 {
  %4 = load float, ptr %1, align 4, !tbaa !38
  %5 = load float, ptr %2, align 4, !tbaa !38
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !38
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !38
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !38
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !38
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !38
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !38
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !38
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pdDoEffectors(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.EffectorData, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  store i32 0, ptr %8, align 4, !tbaa !188
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #16
  store i32 1, ptr %9, align 4, !tbaa !188
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #16
  store i32 1, ptr %10, align 4, !tbaa !188
  %13 = icmp eq ptr %0, null
  br i1 %13, label %70, label %14

14:                                               ; preds = %6
  %15 = load ptr, ptr %0, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %70, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.EffectorData, ptr %7, i64 0, i32 5
  %19 = getelementptr inbounds %struct.EffectedPoint, ptr %3, i64 0, i32 8
  %20 = icmp ne ptr %5, null
  %21 = getelementptr inbounds %struct.EffectorData, ptr %7, i64 0, i32 2
  br label %25

22:                                               ; preds = %66, %25
  %23 = load ptr, ptr %26, align 8, !tbaa !34
  %24 = icmp eq ptr %23, null
  br i1 %24, label %70, label %25, !llvm.loop !197

25:                                               ; preds = %17, %22
  %26 = phi ptr [ %15, %17 ], [ %23, %22 ]
  call fastcc void @get_effector_tot(ptr noundef nonnull %26, ptr noundef nonnull %7, ptr noundef %3, ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %10) #17
  %27 = load i32, ptr %9, align 4, !tbaa !188
  %28 = load i32, ptr %8, align 4, !tbaa !188
  %29 = icmp slt i32 %28, %27
  br i1 %29, label %30, label %22

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.EffectorCache, ptr %26, i64 0, i32 6
  %32 = getelementptr inbounds %struct.EffectorCache, ptr %26, i64 0, i32 13
  %33 = load i32, ptr %10, align 4
  br label %34

34:                                               ; preds = %30, %66
  %35 = call i32 @get_effector_data(ptr noundef nonnull %26, ptr noundef nonnull %7, ptr noundef %3, i32 noundef 0) #17
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %60, label %37

37:                                               ; preds = %34
  %38 = call float @effector_falloff(ptr noundef nonnull %26, ptr noundef nonnull %7, ptr poison, ptr noundef %2) #17
  store float %38, ptr %18, align 4, !tbaa !198
  %39 = fcmp ogt float %38, 0.000000e+00
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = call fastcc float @eff_calc_visibility(ptr noundef %1, ptr noundef nonnull %26, ptr noundef nonnull %7, ptr noundef %3) #17
  %42 = load float, ptr %18, align 4, !tbaa !198
  %43 = fmul float %41, %42
  store float %43, ptr %18, align 4, !tbaa !198
  br label %44

44:                                               ; preds = %40, %37
  %45 = phi float [ %43, %40 ], [ %38, %37 ]
  %46 = fcmp ugt float %45, 0.000000e+00
  br i1 %46, label %47, label %66

47:                                               ; preds = %44
  %48 = load ptr, ptr %31, align 8, !tbaa !114
  %49 = getelementptr inbounds %struct.PartDeflect, ptr %48, i64 0, i32 2
  %50 = load i16, ptr %49, align 2, !tbaa !49
  %51 = icmp eq i16 %50, 6
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  call fastcc void @do_texture_effector(ptr noundef nonnull %26, ptr noundef nonnull %7, ptr noundef %3, ptr noundef %4) #17
  br label %66

53:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %11, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #16
  call fastcc void @copy_v3_v3(ptr noundef nonnull %11, ptr noundef %4) #17
  call fastcc void @do_physical_effector(ptr noundef nonnull %26, ptr noundef nonnull %7, ptr noundef %3, ptr noundef %4) #17
  %54 = load i32, ptr %19, align 8, !tbaa !144
  %55 = and i32 %54, 1
  %56 = icmp ne i32 %55, 0
  %57 = and i1 %20, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %12, ptr noundef %4, ptr noundef nonnull %11) #17
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %12) #17
  br label %59

59:                                               ; preds = %58, %53
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #16
  br label %66

60:                                               ; preds = %34
  %61 = load i32, ptr %32, align 8, !tbaa !127
  %62 = and i32 %61, 1
  %63 = icmp ne i32 %62, 0
  %64 = and i1 %20, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %21) #17
  br label %66

66:                                               ; preds = %52, %59, %44, %65, %60
  %67 = load i32, ptr %8, align 4, !tbaa !188
  %68 = add nsw i32 %67, %33
  store i32 %68, ptr %8, align 4, !tbaa !188
  %69 = icmp slt i32 %68, %27
  br i1 %69, label %34, label %22, !llvm.loop !199

70:                                               ; preds = %22, %14, %6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %7) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @get_effector_tot(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3, ptr noundef %4, ptr nocapture noundef writeonly %5) unnamed_addr #10 !PGOFuncName !200 {
  %7 = getelementptr inbounds %struct.EffectorCache, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !114
  %9 = getelementptr inbounds %struct.PartDeflect, ptr %8, i64 0, i32 4
  %10 = load i16, ptr %9, align 2, !tbaa !53
  %11 = icmp eq i16 %10, 3
  br i1 %11, label %12, label %36

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 10
  store ptr %4, ptr %13, align 8, !tbaa !187
  store i32 0, ptr %4, align 4, !tbaa !188
  %14 = getelementptr inbounds %struct.EffectorCache, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !115
  %16 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 120
  %17 = load ptr, ptr %16, align 8, !tbaa !82
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  store i32 1, ptr %3, align 4, !tbaa !188
  br label %24

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.DerivedMesh, ptr %17, i64 0, i32 5
  %22 = load i32, ptr %21, align 8, !tbaa !201
  store i32 %22, ptr %3, align 4, !tbaa !188
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %73, label %24

24:                                               ; preds = %19, %20
  %25 = phi i32 [ 1, %19 ], [ %22, %20 ]
  %26 = getelementptr inbounds %struct.PartDeflect, ptr %8, i64 0, i32 2
  %27 = load i16, ptr %26, align 2, !tbaa !49
  %28 = icmp eq i16 %27, 7
  br i1 %28, label %29, label %73

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.EffectedPoint, ptr %2, i64 0, i32 9
  %31 = load i32, ptr %30, align 4, !tbaa !135
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %33, label %73

33:                                               ; preds = %29
  %34 = srem i32 %31, %25
  store i32 %34, ptr %4, align 4, !tbaa !188
  %35 = add nuw nsw i32 %34, 1
  store i32 %35, ptr %3, align 4, !tbaa !188
  br label %73

36:                                               ; preds = %6
  %37 = getelementptr inbounds %struct.EffectorCache, ptr %0, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !128
  %39 = icmp eq ptr %38, null
  br i1 %39, label %72, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 10
  store ptr %4, ptr %41, align 8, !tbaa !187
  store i32 0, ptr %4, align 4, !tbaa !188
  %42 = getelementptr inbounds %struct.ParticleSystem, ptr %38, i64 0, i32 26
  %43 = load i32, ptr %42, align 8, !tbaa !202
  store i32 %43, ptr %3, align 4, !tbaa !188
  %44 = getelementptr inbounds %struct.PartDeflect, ptr %8, i64 0, i32 2
  %45 = load i16, ptr %44, align 2, !tbaa !49
  switch i16 %45, label %59 [
    i16 8, label %46
    i16 7, label %50
  ]

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.PartDeflect, ptr %8, i64 0, i32 9
  %48 = load float, ptr %47, align 4, !tbaa !141
  %49 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 7
  store float %48, ptr %49, align 4, !tbaa !203
  br label %59

50:                                               ; preds = %40
  %51 = load i32, ptr %8, align 8, !tbaa !56
  %52 = and i32 %51, 128
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.EffectedPoint, ptr %2, i64 0, i32 9
  %56 = load i32, ptr %55, align 4, !tbaa !135
  %57 = srem i32 %56, %43
  store i32 %57, ptr %4, align 4, !tbaa !188
  %58 = add nsw i32 %57, 1
  store i32 %58, ptr %3, align 4, !tbaa !188
  br label %59

59:                                               ; preds = %40, %50, %54, %46
  %60 = getelementptr inbounds %struct.ParticleSystem, ptr %38, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !84
  %62 = getelementptr inbounds %struct.ParticleSettings, ptr %61, i64 0, i32 66
  %63 = load i32, ptr %62, align 8, !tbaa !204
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %59
  %66 = load i32, ptr %42, align 8, !tbaa !202
  %67 = icmp sgt i32 %66, %63
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = sdiv i32 %66, %63
  br label %70

70:                                               ; preds = %65, %68
  %71 = phi i32 [ %69, %68 ], [ 1, %65 ]
  store i32 %71, ptr %5, align 4, !tbaa !188
  br label %73

72:                                               ; preds = %36
  store i32 0, ptr %4, align 4, !tbaa !188
  store i32 1, ptr %3, align 4, !tbaa !188
  br label %73

73:                                               ; preds = %72, %70, %59, %20, %24, %29, %33
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @eff_calc_visibility(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #0 !PGOFuncName !205 {
  %5 = alloca ptr, align 8
  %6 = alloca [3 x float], align 4
  %7 = alloca %struct.BVHTreeRayHit, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  store ptr %0, ptr %5, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #16
  %8 = getelementptr inbounds %struct.EffectorCache, ptr %1, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !114
  %10 = load i32, ptr %9, align 8, !tbaa !56
  %11 = and i32 %10, 8192
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %72, label %13

13:                                               ; preds = %4
  %14 = icmp eq ptr %0, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.EffectorCache, ptr %1, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !94
  %18 = getelementptr inbounds %struct.EffectorCache, ptr %1, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !115
  %20 = tail call ptr @get_collider_cache(ptr noundef %17, ptr noundef %19, ptr noundef null) #15
  store ptr %20, ptr %5, align 8, !tbaa !34
  %21 = icmp eq ptr %20, null
  br i1 %21, label %72, label %22

22:                                               ; preds = %13, %15
  %23 = phi ptr [ %20, %15 ], [ %0, %13 ]
  %24 = getelementptr inbounds %struct.EffectorData, ptr %2, i64 0, i32 3
  call fastcc void @negate_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %24) #17
  %25 = call fastcc float @normalize_v3(ptr noundef nonnull %6) #17
  %26 = load ptr, ptr %23, align 8, !tbaa !34
  %27 = icmp eq ptr %26, null
  br i1 %27, label %69, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.EffectorCache, ptr %1, i64 0, i32 3
  %30 = fadd float %25, 0x3E80000000000000
  %31 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %7, i64 0, i32 3
  br label %32

32:                                               ; preds = %28, %65
  %33 = phi ptr [ %26, %28 ], [ %67, %65 ]
  %34 = phi float [ 1.000000e+00, %28 ], [ %66, %65 ]
  %35 = getelementptr inbounds %struct.ColliderCache, ptr %33, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !206
  %37 = load ptr, ptr %29, align 8, !tbaa !115
  %38 = icmp eq ptr %36, %37
  br i1 %38, label %65, label %39

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.ColliderCache, ptr %33, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !208
  %42 = getelementptr inbounds %struct.CollisionModifierData, ptr %41, i64 0, i32 12
  %43 = load ptr, ptr %42, align 8, !tbaa !209
  %44 = icmp eq ptr %43, null
  br i1 %44, label %65, label %45

45:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #16
  store i32 -1, ptr %7, align 4, !tbaa !211
  store float %30, ptr %31, align 4, !tbaa !213
  %46 = load ptr, ptr %3, align 8, !tbaa !131
  %47 = call i32 @BLI_bvhtree_ray_cast(ptr noundef nonnull %43, ptr noundef %46, ptr noundef nonnull %6, float noundef 0.000000e+00, ptr noundef nonnull %7, ptr noundef nonnull @eff_tri_ray_hit, ptr noundef null) #15
  %48 = icmp sgt i32 %47, -1
  br i1 %48, label %49, label %63

49:                                               ; preds = %45
  %50 = load ptr, ptr %35, align 8, !tbaa !206
  %51 = getelementptr inbounds %struct.Object, ptr %50, i64 0, i32 110
  %52 = load ptr, ptr %51, align 8, !tbaa !70
  %53 = getelementptr inbounds %struct.PartDeflect, ptr %52, i64 0, i32 25
  %54 = load float, ptr %53, align 4, !tbaa !214
  %55 = fsub float 1.000000e+00, %54
  %56 = fcmp olt float %55, 0.000000e+00
  %57 = fcmp ogt float %55, 1.000000e+00
  %58 = select i1 %57, float 1.000000e+00, float %55
  %59 = select i1 %56, float 0.000000e+00, float %58
  %60 = fmul float %34, %59
  %61 = fcmp ugt float %60, 0.000000e+00
  br i1 %61, label %63, label %62

62:                                               ; preds = %49
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #16
  br label %69

63:                                               ; preds = %49, %45
  %64 = phi float [ %34, %45 ], [ %60, %49 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #16
  br label %65

65:                                               ; preds = %63, %39, %32
  %66 = phi float [ %34, %32 ], [ %34, %39 ], [ %64, %63 ]
  %67 = load ptr, ptr %33, align 8, !tbaa !34
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %32

69:                                               ; preds = %65, %22, %62
  %70 = phi float [ %60, %62 ], [ 1.000000e+00, %22 ], [ %66, %65 ]
  br i1 %14, label %71, label %72

71:                                               ; preds = %69
  call void @free_collider_cache(ptr noundef nonnull %5) #15
  br label %72

72:                                               ; preds = %69, %71, %15, %4
  %73 = phi float [ 1.000000e+00, %4 ], [ 1.000000e+00, %15 ], [ %70, %71 ], [ %70, %69 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  ret float %73
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_texture_effector(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) unnamed_addr #0 !PGOFuncName !215 {
  %5 = alloca [4 x %struct.TexResult], align 16
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #16
  %8 = getelementptr inbounds %struct.EffectorCache, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !114
  %10 = getelementptr inbounds %struct.PartDeflect, ptr %9, i64 0, i32 35
  %11 = load float, ptr %10, align 4, !tbaa !216
  %12 = getelementptr inbounds %struct.PartDeflect, ptr %9, i64 0, i32 5
  %13 = load i16, ptr %12, align 4, !tbaa !217
  %14 = getelementptr inbounds %struct.PartDeflect, ptr %9, i64 0, i32 36
  %15 = load ptr, ptr %14, align 8, !tbaa !57
  %16 = icmp eq ptr %15, null
  br i1 %16, label %203, label %17

17:                                               ; preds = %4
  %18 = getelementptr inbounds [4 x %struct.TexResult], ptr %5, i64 0, i64 3
  %19 = getelementptr inbounds [4 x %struct.TexResult], ptr %5, i64 0, i64 3, i32 6
  store ptr null, ptr %19, align 8, !tbaa !218
  %20 = getelementptr inbounds [4 x %struct.TexResult], ptr %5, i64 0, i64 2
  %21 = getelementptr inbounds [4 x %struct.TexResult], ptr %5, i64 0, i64 2, i32 6
  store ptr null, ptr %21, align 8, !tbaa !218
  %22 = getelementptr inbounds [4 x %struct.TexResult], ptr %5, i64 0, i64 1
  %23 = getelementptr inbounds [4 x %struct.TexResult], ptr %5, i64 0, i64 1, i32 6
  store ptr null, ptr %23, align 8, !tbaa !218
  %24 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 6
  store ptr null, ptr %24, align 8, !tbaa !218
  %25 = getelementptr inbounds %struct.PartDeflect, ptr %9, i64 0, i32 9
  %26 = load float, ptr %25, align 4, !tbaa !141
  %27 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 5
  %28 = load float, ptr %27, align 4, !tbaa !198
  %29 = fmul float %26, %28
  %30 = load ptr, ptr %2, align 8, !tbaa !131
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef %30) #17
  %31 = load i32, ptr %9, align 8, !tbaa !56
  %32 = and i32 %31, 128
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %17
  %35 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 1
  %36 = call fastcc float @dot_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %35) #17
  %37 = fneg float %36
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %6, ptr noundef nonnull %35, float noundef %37) #17
  br label %38

38:                                               ; preds = %34, %17
  %39 = and i32 %31, 64
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.EffectorCache, ptr %0, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !115
  %44 = getelementptr inbounds %struct.Object, ptr %43, i64 0, i32 50
  call void @mul_m4_v3(ptr noundef nonnull %44, ptr noundef nonnull %6) #15
  br label %45

45:                                               ; preds = %41, %38
  %46 = getelementptr inbounds %struct.EffectorCache, ptr %0, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !94
  %48 = call zeroext i8 @BKE_scene_check_color_management_enabled(ptr noundef %47) #15
  %49 = load ptr, ptr %8, align 8, !tbaa !114
  %50 = getelementptr inbounds %struct.PartDeflect, ptr %49, i64 0, i32 36
  %51 = load ptr, ptr %50, align 8, !tbaa !57
  %52 = call i32 @multitex_ext(ptr noundef %51, ptr noundef nonnull %6, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef nonnull %5, ptr noundef null, i8 noundef zeroext %48) #15
  %53 = icmp ne i32 %52, 0
  %54 = icmp eq i16 %13, 0
  %55 = select i1 %53, i1 %54, i1 false
  br i1 %55, label %56, label %67

56:                                               ; preds = %45
  %57 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 1
  %58 = load <2 x float>, ptr %57, align 4, !tbaa !38
  %59 = fsub <2 x float> <float 5.000000e-01, float 5.000000e-01>, %58
  %60 = insertelement <2 x float> poison, float %29, i64 0
  %61 = shufflevector <2 x float> %60, <2 x float> poison, <2 x i32> zeroinitializer
  %62 = fmul <2 x float> %61, %59
  store <2 x float> %62, ptr %7, align 8, !tbaa !38
  %63 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 3
  %64 = load float, ptr %63, align 4, !tbaa !220
  %65 = fsub float 5.000000e-01, %64
  %66 = fmul float %29, %65
  br label %191

67:                                               ; preds = %45
  %68 = fdiv float %29, %11
  %69 = load float, ptr %6, align 4, !tbaa !38
  %70 = fadd float %11, %69
  store float %70, ptr %6, align 4, !tbaa !38
  %71 = load ptr, ptr %8, align 8, !tbaa !114
  %72 = getelementptr inbounds %struct.PartDeflect, ptr %71, i64 0, i32 36
  %73 = load ptr, ptr %72, align 8, !tbaa !57
  %74 = call i32 @multitex_ext(ptr noundef %73, ptr noundef nonnull %6, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef nonnull %22, ptr noundef null, i8 noundef zeroext %48) #15
  %75 = load float, ptr %6, align 4, !tbaa !38
  %76 = fsub float %75, %11
  store float %76, ptr %6, align 4, !tbaa !38
  %77 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %78 = load float, ptr %77, align 4, !tbaa !38
  %79 = fadd float %11, %78
  store float %79, ptr %77, align 4, !tbaa !38
  %80 = load ptr, ptr %8, align 8, !tbaa !114
  %81 = getelementptr inbounds %struct.PartDeflect, ptr %80, i64 0, i32 36
  %82 = load ptr, ptr %81, align 8, !tbaa !57
  %83 = call i32 @multitex_ext(ptr noundef %82, ptr noundef nonnull %6, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef nonnull %20, ptr noundef null, i8 noundef zeroext %48) #15
  %84 = load float, ptr %77, align 4, !tbaa !38
  %85 = fsub float %84, %11
  store float %85, ptr %77, align 4, !tbaa !38
  %86 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %87 = load float, ptr %86, align 4, !tbaa !38
  %88 = fadd float %11, %87
  store float %88, ptr %86, align 4, !tbaa !38
  %89 = load ptr, ptr %8, align 8, !tbaa !114
  %90 = getelementptr inbounds %struct.PartDeflect, ptr %89, i64 0, i32 36
  %91 = load ptr, ptr %90, align 8, !tbaa !57
  %92 = call i32 @multitex_ext(ptr noundef %91, ptr noundef nonnull %6, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef nonnull %18, ptr noundef null, i8 noundef zeroext %48) #15
  %93 = icmp ne i16 %13, 1
  %94 = and i1 %93, %53
  br i1 %94, label %157, label %95

95:                                               ; preds = %67
  %96 = and i32 %52, 1
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %142, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds [4 x %struct.TexResult], ptr %5, i64 0, i64 1
  %100 = getelementptr inbounds [4 x %struct.TexResult], ptr %5, i64 0, i64 2
  %101 = getelementptr inbounds [4 x %struct.TexResult], ptr %5, i64 0, i64 3
  %102 = getelementptr inbounds [4 x %struct.TexResult], ptr %5, i64 0, i64 0, i32 1
  %103 = getelementptr inbounds [4 x %struct.TexResult], ptr %5, i64 0, i64 1, i32 1
  %104 = getelementptr inbounds [4 x %struct.TexResult], ptr %5, i64 0, i64 2, i32 1
  %105 = getelementptr inbounds [4 x %struct.TexResult], ptr %5, i64 0, i64 3, i32 1
  %106 = load <4 x float>, ptr %102, align 4
  %107 = load float, ptr %103, align 4, !tbaa !221
  %108 = load float, ptr %104, align 4, !tbaa !221
  %109 = load float, ptr %105, align 4, !tbaa !221
  %110 = insertelement <4 x float> %106, float %107, i64 1
  %111 = insertelement <4 x float> %110, float %108, i64 2
  %112 = insertelement <4 x float> %111, float %109, i64 3
  %113 = getelementptr inbounds [4 x %struct.TexResult], ptr %5, i64 0, i64 0, i32 2
  %114 = getelementptr inbounds [4 x %struct.TexResult], ptr %5, i64 0, i64 1, i32 2
  %115 = getelementptr inbounds [4 x %struct.TexResult], ptr %5, i64 0, i64 2, i32 2
  %116 = getelementptr inbounds [4 x %struct.TexResult], ptr %5, i64 0, i64 3, i32 2
  %117 = load <4 x float>, ptr %113, align 8
  %118 = load float, ptr %114, align 8, !tbaa !222
  %119 = load float, ptr %115, align 8, !tbaa !222
  %120 = load float, ptr %116, align 8, !tbaa !222
  %121 = insertelement <4 x float> %117, float %118, i64 1
  %122 = insertelement <4 x float> %121, float %119, i64 2
  %123 = insertelement <4 x float> %122, float %120, i64 3
  %124 = fadd <4 x float> %112, %123
  %125 = getelementptr inbounds [4 x %struct.TexResult], ptr %5, i64 0, i64 0, i32 3
  %126 = getelementptr inbounds [4 x %struct.TexResult], ptr %5, i64 0, i64 1, i32 3
  %127 = getelementptr inbounds [4 x %struct.TexResult], ptr %5, i64 0, i64 2, i32 3
  %128 = getelementptr inbounds [4 x %struct.TexResult], ptr %5, i64 0, i64 3, i32 3
  %129 = load <4 x float>, ptr %125, align 4
  %130 = load float, ptr %126, align 4, !tbaa !220
  %131 = load float, ptr %127, align 4, !tbaa !220
  %132 = load float, ptr %128, align 4, !tbaa !220
  %133 = insertelement <4 x float> %129, float %130, i64 1
  %134 = insertelement <4 x float> %133, float %131, i64 2
  %135 = insertelement <4 x float> %134, float %132, i64 3
  %136 = fadd <4 x float> %124, %135
  %137 = fmul <4 x float> %136, <float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000>
  %138 = extractelement <4 x float> %137, i64 0
  store float %138, ptr %5, align 16, !tbaa !223
  %139 = extractelement <4 x float> %137, i64 1
  store float %139, ptr %99, align 16, !tbaa !223
  %140 = extractelement <4 x float> %137, i64 2
  store float %140, ptr %100, align 16, !tbaa !223
  %141 = extractelement <4 x float> %137, i64 3
  store float %141, ptr %101, align 16, !tbaa !223
  br label %142

142:                                              ; preds = %98, %95
  %143 = load float, ptr %5, align 16, !tbaa !223
  %144 = load <4 x float>, ptr %22, align 16
  %145 = shufflevector <4 x float> %144, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %146 = load float, ptr %20, align 16, !tbaa !223
  %147 = insertelement <2 x float> poison, float %143, i64 0
  %148 = shufflevector <2 x float> %147, <2 x float> poison, <2 x i32> zeroinitializer
  %149 = insertelement <2 x float> %145, float %146, i64 1
  %150 = fsub <2 x float> %148, %149
  %151 = insertelement <2 x float> poison, float %68, i64 0
  %152 = shufflevector <2 x float> %151, <2 x float> poison, <2 x i32> zeroinitializer
  %153 = fmul <2 x float> %152, %150
  store <2 x float> %153, ptr %7, align 8, !tbaa !38
  %154 = load float, ptr %18, align 16, !tbaa !223
  %155 = fsub float %143, %154
  %156 = fmul float %68, %155
  br label %191

157:                                              ; preds = %67
  %158 = getelementptr inbounds [4 x %struct.TexResult], ptr %5, i64 0, i64 2, i32 3
  %159 = load float, ptr %158, align 4, !tbaa !220
  %160 = getelementptr inbounds [4 x %struct.TexResult], ptr %5, i64 0, i64 3, i32 2
  %161 = load <4 x float>, ptr %160, align 8
  %162 = shufflevector <4 x float> %161, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %163 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 2
  %164 = getelementptr inbounds [4 x %struct.TexResult], ptr %5, i64 0, i64 3, i32 1
  %165 = load <4 x float>, ptr %164, align 4
  %166 = shufflevector <4 x float> %165, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %167 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 1
  %168 = load float, ptr %167, align 4, !tbaa !221
  %169 = getelementptr inbounds [4 x %struct.TexResult], ptr %5, i64 0, i64 1, i32 3
  %170 = load float, ptr %169, align 4, !tbaa !220
  %171 = getelementptr inbounds [4 x %struct.TexResult], ptr %5, i64 0, i64 1, i32 2
  %172 = load float, ptr %171, align 8, !tbaa !222
  %173 = getelementptr inbounds [4 x %struct.TexResult], ptr %5, i64 0, i64 2, i32 1
  %174 = load float, ptr %173, align 4, !tbaa !221
  %175 = fsub float %174, %168
  %176 = load <2 x float>, ptr %163, align 8, !tbaa !38
  %177 = insertelement <2 x float> %166, float %159, i64 1
  %178 = insertelement <2 x float> %176, float %168, i64 0
  %179 = fsub <2 x float> %177, %178
  %180 = shufflevector <2 x float> %179, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %181 = insertelement <2 x float> %162, float %170, i64 1
  %182 = fsub <2 x float> %181, %176
  %183 = extractelement <2 x float> %176, i64 0
  %184 = fsub float %172, %183
  %185 = fsub <2 x float> %180, %182
  %186 = insertelement <2 x float> poison, float %68, i64 0
  %187 = shufflevector <2 x float> %186, <2 x float> poison, <2 x i32> zeroinitializer
  %188 = fmul <2 x float> %187, %185
  store <2 x float> %188, ptr %7, align 8, !tbaa !38
  %189 = fsub float %184, %175
  %190 = fmul float %68, %189
  br label %191

191:                                              ; preds = %142, %157, %56
  %192 = phi float [ %156, %142 ], [ %190, %157 ], [ %66, %56 ]
  %193 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  store float %192, ptr %193, align 8, !tbaa !38
  %194 = load ptr, ptr %8, align 8, !tbaa !114
  %195 = load i32, ptr %194, align 8, !tbaa !56
  %196 = and i32 %195, 128
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %202, label %198

198:                                              ; preds = %191
  %199 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 1
  %200 = call fastcc float @dot_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %199) #17
  %201 = fneg float %200
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %7, ptr noundef nonnull %199, float noundef %201) #17
  br label %202

202:                                              ; preds = %198, %191
  call fastcc void @add_v3_v3(ptr noundef %3, ptr noundef nonnull %7) #17
  br label %203

203:                                              ; preds = %4, %202
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_physical_effector(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) unnamed_addr #0 !PGOFuncName !224 {
  %5 = alloca [3 x float], align 8
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = getelementptr inbounds %struct.EffectorCache, ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !114
  %11 = getelementptr inbounds %struct.PartDeflect, ptr %10, i64 0, i32 37
  %12 = load ptr, ptr %11, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %5, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #16
  %13 = getelementptr inbounds %struct.PartDeflect, ptr %10, i64 0, i32 9
  %14 = load float, ptr %13, align 4, !tbaa !141
  %15 = getelementptr inbounds %struct.PartDeflect, ptr %10, i64 0, i32 10
  %16 = load float, ptr %15, align 8, !tbaa !225
  %17 = getelementptr inbounds %struct.PartDeflect, ptr %10, i64 0, i32 38
  %18 = load float, ptr %17, align 8, !tbaa !226
  %19 = fcmp ogt float %18, 0.000000e+00
  br i1 %19, label %20, label %28

20:                                               ; preds = %4
  %21 = tail call fastcc float @wind_func(ptr noundef %12, float noundef %18) #17
  %22 = fadd float %14, %21
  %23 = getelementptr inbounds %struct.PartDeflect, ptr %10, i64 0, i32 2
  %24 = load i16, ptr %23, align 2, !tbaa !49
  switch i16 %24, label %28 [
    i16 7, label %25
    i16 12, label %25
  ]

25:                                               ; preds = %20, %20
  %26 = tail call fastcc float @wind_func(ptr noundef %12, float noundef %18) #17
  %27 = fadd float %16, %26
  br label %28

28:                                               ; preds = %20, %25, %4
  %29 = phi float [ %27, %25 ], [ %16, %4 ], [ %16, %20 ]
  %30 = phi float [ %22, %25 ], [ %14, %4 ], [ %22, %20 ]
  %31 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %31) #17
  %32 = getelementptr inbounds %struct.PartDeflect, ptr %10, i64 0, i32 2
  %33 = load i16, ptr %32, align 2, !tbaa !49
  switch i16 %33, label %196 [
    i16 4, label %34
    i16 1, label %39
    i16 2, label %44
    i16 3, label %68
    i16 7, label %85
    i16 8, label %99
    i16 9, label %106
    i16 10, label %243
    i16 11, label %126
    i16 12, label %156
    i16 13, label %173
  ]

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %35) #17
  %36 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 5
  %37 = load float, ptr %36, align 4, !tbaa !198
  %38 = fmul float %30, %37
  call fastcc void @mul_v3_fl(ptr noundef nonnull %5, float noundef %38) #17
  br label %196

39:                                               ; preds = %28
  %40 = call fastcc float @normalize_v3(ptr noundef nonnull %5) #17
  %41 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 5
  %42 = load float, ptr %41, align 4, !tbaa !198
  %43 = fmul float %30, %42
  call fastcc void @mul_v3_fl(ptr noundef nonnull %5, float noundef %43) #17
  br label %196

44:                                               ; preds = %28
  %45 = getelementptr inbounds %struct.PartDeflect, ptr %10, i64 0, i32 4
  %46 = load i16, ptr %45, align 2, !tbaa !53
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 1
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %49, ptr noundef nonnull %31) #17
  %50 = call fastcc float @normalize_v3(ptr noundef nonnull %5) #17
  %51 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 4
  %52 = load float, ptr %51, align 8, !tbaa !149
  %53 = fmul float %30, %52
  %54 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 5
  %55 = load float, ptr %54, align 4, !tbaa !198
  %56 = fmul float %53, %55
  call fastcc void @mul_v3_fl(ptr noundef nonnull %5, float noundef %56) #17
  br label %196

57:                                               ; preds = %44
  %58 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 8
  %59 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 9
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %58, ptr noundef nonnull %59) #17
  %60 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 5
  %61 = load float, ptr %60, align 4, !tbaa !198
  %62 = fmul float %30, %61
  call fastcc void @mul_v3_fl(ptr noundef nonnull %6, float noundef %62) #17
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %58, ptr noundef nonnull %6) #17
  call fastcc void @mul_v3_fl(ptr noundef nonnull %5, float noundef %62) #17
  %63 = getelementptr inbounds %struct.EffectedPoint, ptr %2, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !133
  %65 = getelementptr inbounds %struct.EffectedPoint, ptr %2, i64 0, i32 5
  %66 = load float, ptr %65, align 4, !tbaa !142
  %67 = fneg float %66
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %6, ptr noundef %64, float noundef %67) #17
  call fastcc void @add_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %6) #17
  br label %196

68:                                               ; preds = %28
  %69 = load ptr, ptr %9, align 8, !tbaa !114
  %70 = getelementptr inbounds %struct.PartDeflect, ptr %69, i64 0, i32 4
  %71 = load i16, ptr %70, align 2, !tbaa !53
  %72 = icmp eq i16 %71, 0
  %73 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 1
  br i1 %72, label %74, label %75

74:                                               ; preds = %68
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %73, ptr noundef nonnull %31) #17
  br label %76

75:                                               ; preds = %68
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %73) #17
  br label %76

76:                                               ; preds = %75, %74
  %77 = call fastcc float @normalize_v3(ptr noundef nonnull %6) #17
  %78 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 5
  %79 = load float, ptr %78, align 4, !tbaa !198
  %80 = fmul float %30, %79
  call fastcc void @mul_v3_fl(ptr noundef nonnull %6, float noundef %80) #17
  %81 = getelementptr inbounds %struct.EffectedPoint, ptr %2, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !133
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %5, ptr noundef %82, ptr noundef nonnull %6) #17
  %83 = getelementptr inbounds %struct.EffectedPoint, ptr %2, i64 0, i32 5
  %84 = load float, ptr %83, align 4, !tbaa !142
  call fastcc void @mul_v3_fl(ptr noundef nonnull %5, float noundef %84) #17
  br label %196

85:                                               ; preds = %28
  %86 = fneg float %30
  %87 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 5
  %88 = load float, ptr %87, align 4, !tbaa !198
  %89 = fmul float %88, %86
  call fastcc void @mul_v3_fl(ptr noundef nonnull %5, float noundef %89) #17
  %90 = getelementptr inbounds %struct.EffectedPoint, ptr %2, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !133
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef %91) #17
  %92 = fmul float %29, -2.000000e+00
  %93 = tail call float @llvm.fabs.f32(float %30)
  %94 = tail call float @llvm.sqrt.f32(float %93)
  %95 = fmul float %92, %94
  %96 = getelementptr inbounds %struct.EffectedPoint, ptr %2, i64 0, i32 5
  %97 = load float, ptr %96, align 4, !tbaa !142
  %98 = fmul float %95, %97
  call fastcc void @mul_v3_fl(ptr noundef nonnull %6, float noundef %98) #17
  call fastcc void @add_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %6) #17
  br label %196

99:                                               ; preds = %28
  %100 = getelementptr inbounds %struct.EffectedPoint, ptr %2, i64 0, i32 7
  %101 = load float, ptr %100, align 4, !tbaa !140
  %102 = fmul float %30, %101
  %103 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 5
  %104 = load float, ptr %103, align 4, !tbaa !198
  %105 = fmul float %102, %104
  call fastcc void @mul_v3_fl(ptr noundef nonnull %5, float noundef %105) #17
  br label %196

106:                                              ; preds = %28
  %107 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 6
  %108 = load float, ptr %107, align 8, !tbaa !183
  %109 = getelementptr inbounds %struct.EffectedPoint, ptr %2, i64 0, i32 6
  %110 = load float, ptr %109, align 8, !tbaa !139
  %111 = fadd float %108, %110
  %112 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 4
  %113 = load float, ptr %112, align 8, !tbaa !149
  %114 = fdiv float %111, %113
  %115 = fpext float %114 to double
  %116 = tail call double @pow(double noundef %115, double noundef 6.000000e+00) #15
  %117 = fptrunc double %116 to float
  %118 = fneg float %117
  %119 = fsub float 1.000000e+00, %117
  %120 = fmul float %119, %118
  %121 = load float, ptr %112, align 8, !tbaa !149
  %122 = fdiv float %120, %121
  %123 = fcmp ogt float %122, 2.000000e+00
  %124 = select i1 %123, float 2.000000e+00, float %122
  %125 = fmul float %30, %124
  call fastcc void @mul_v3_fl(ptr noundef nonnull %5, float noundef %125) #17
  br label %196

126:                                              ; preds = %28
  %127 = load i32, ptr %10, align 8, !tbaa !56
  %128 = and i32 %127, 64
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %126
  %131 = load ptr, ptr %2, align 8, !tbaa !131
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef %131) #17
  br label %135

132:                                              ; preds = %126
  %133 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 9
  %134 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 8
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %133, ptr noundef nonnull %134) #17
  br label %135

135:                                              ; preds = %132, %130
  %136 = getelementptr inbounds %struct.PartDeflect, ptr %10, i64 0, i32 12
  %137 = load float, ptr %136, align 8, !tbaa !55
  %138 = load float, ptr %6, align 4, !tbaa !38
  %139 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %140 = load float, ptr %139, align 4, !tbaa !38
  %141 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %142 = load float, ptr %141, align 4, !tbaa !38
  %143 = tail call float @BLI_gTurbulence(float noundef %137, float noundef %138, float noundef %140, float noundef %142, i32 noundef 2, i32 noundef 0, i32 noundef 2) #15
  %144 = load float, ptr %136, align 8, !tbaa !55
  %145 = tail call float @BLI_gTurbulence(float noundef %144, float noundef %140, float noundef %142, float noundef %138, i32 noundef 2, i32 noundef 0, i32 noundef 2) #15
  %146 = insertelement <2 x float> poison, float %143, i64 0
  %147 = insertelement <2 x float> %146, float %145, i64 1
  %148 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %147, <2 x float> <float 2.000000e+00, float 2.000000e+00>, <2 x float> <float -1.000000e+00, float -1.000000e+00>)
  store <2 x float> %148, ptr %5, align 8, !tbaa !38
  %149 = load float, ptr %136, align 8, !tbaa !55
  %150 = tail call float @BLI_gTurbulence(float noundef %149, float noundef %142, float noundef %138, float noundef %140, i32 noundef 2, i32 noundef 0, i32 noundef 2) #15
  %151 = tail call float @llvm.fmuladd.f32(float %150, float 2.000000e+00, float -1.000000e+00)
  %152 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  store float %151, ptr %152, align 8, !tbaa !38
  %153 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 5
  %154 = load float, ptr %153, align 4, !tbaa !198
  %155 = fmul float %30, %154
  call fastcc void @mul_v3_fl(ptr noundef nonnull %5, float noundef %155) #17
  br label %196

156:                                              ; preds = %28
  %157 = getelementptr inbounds %struct.EffectedPoint, ptr %2, i64 0, i32 1
  %158 = load ptr, ptr %157, align 8, !tbaa !133
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef %158) #17
  %159 = call fastcc float @normalize_v3(ptr noundef nonnull %5) #17
  %160 = getelementptr inbounds %struct.EffectedPoint, ptr %2, i64 0, i32 5
  %161 = load float, ptr %160, align 4, !tbaa !142
  %162 = fmul float %159, %161
  %163 = fcmp olt float %30, 2.000000e+00
  %164 = select i1 %163, float %30, float 2.000000e+00
  %165 = fcmp olt float %29, 2.000000e+00
  %166 = select i1 %165, float %29, float 2.000000e+00
  %167 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 5
  %168 = load float, ptr %167, align 4, !tbaa !198
  %169 = fneg float %168
  %170 = fmul float %162, %169
  %171 = tail call float @llvm.fmuladd.f32(float %164, float %162, float %166)
  %172 = fmul float %170, %171
  call fastcc void @mul_v3_fl(ptr noundef nonnull %5, float noundef %172) #17
  br label %196

173:                                              ; preds = %28
  call fastcc void @zero_v3(ptr noundef nonnull %5) #17
  %174 = getelementptr inbounds %struct.PartDeflect, ptr %10, i64 0, i32 40
  %175 = load ptr, ptr %174, align 8, !tbaa !227
  %176 = icmp eq ptr %175, null
  br i1 %176, label %196, label %177

177:                                              ; preds = %173
  %178 = load ptr, ptr %2, align 8, !tbaa !131
  %179 = call float @smoke_get_velocity_at(ptr noundef nonnull %175, ptr noundef %178, ptr noundef nonnull %5) #15
  %180 = fcmp ult float %179, 0.000000e+00
  br i1 %180, label %196, label %181

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 5
  %183 = load float, ptr %182, align 4, !tbaa !198
  %184 = fmul float %30, %183
  %185 = load i32, ptr %10, align 8, !tbaa !56
  %186 = and i32 %185, 131072
  %187 = icmp eq i32 %186, 0
  %188 = select i1 %187, float 1.000000e+00, float %179
  %189 = fmul float %184, %188
  call fastcc void @mul_v3_fl(ptr noundef nonnull %5, float noundef %189) #17
  %190 = getelementptr inbounds %struct.EffectedPoint, ptr %2, i64 0, i32 1
  %191 = load ptr, ptr %190, align 8, !tbaa !133
  %192 = getelementptr inbounds %struct.PartDeflect, ptr %10, i64 0, i32 11
  %193 = load float, ptr %192, align 4, !tbaa !54
  %194 = fneg float %193
  %195 = fmul float %189, %194
  call fastcc void @madd_v3_v3fl(ptr noundef %3, ptr noundef %191, float noundef %195) #17
  br label %196

196:                                              ; preds = %177, %181, %173, %48, %57, %28, %156, %135, %106, %99, %85, %76, %39, %34
  %197 = load i32, ptr %10, align 8, !tbaa !56
  %198 = and i32 %197, 16384
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %216, label %200

200:                                              ; preds = %196
  %201 = getelementptr inbounds %struct.EffectedPoint, ptr %2, i64 0, i32 5
  %202 = load float, ptr %201, align 4, !tbaa !142
  %203 = fdiv float 1.000000e+00, %202
  call fastcc void @madd_v3_v3fl(ptr noundef %3, ptr noundef nonnull %5, float noundef %203) #17
  %204 = load i16, ptr %32, align 2, !tbaa !49
  switch i16 %204, label %205 [
    i16 7, label %216
    i16 12, label %216
    i16 13, label %216
  ]

205:                                              ; preds = %200
  %206 = getelementptr inbounds %struct.PartDeflect, ptr %10, i64 0, i32 11
  %207 = load float, ptr %206, align 4, !tbaa !54
  %208 = fcmp une float %207, 0.000000e+00
  br i1 %208, label %209, label %216

209:                                              ; preds = %205
  %210 = getelementptr inbounds %struct.EffectedPoint, ptr %2, i64 0, i32 1
  %211 = load ptr, ptr %210, align 8, !tbaa !133
  %212 = fneg float %207
  %213 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 5
  %214 = load float, ptr %213, align 4, !tbaa !198
  %215 = fmul float %214, %212
  call fastcc void @madd_v3_v3fl(ptr noundef %3, ptr noundef %211, float noundef %215) #17
  br label %216

216:                                              ; preds = %200, %200, %200, %205, %209, %196
  %217 = getelementptr inbounds %struct.EffectedPoint, ptr %2, i64 0, i32 2
  %218 = load ptr, ptr %217, align 8, !tbaa !228
  %219 = icmp eq ptr %218, null
  br i1 %219, label %221, label %220

220:                                              ; preds = %216
  call fastcc void @zero_v3(ptr noundef nonnull %218) #17
  br label %221

221:                                              ; preds = %220, %216
  %222 = load i32, ptr %10, align 8, !tbaa !56
  %223 = and i32 %222, 32768
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %243, label %225

225:                                              ; preds = %221
  %226 = load ptr, ptr %217, align 8, !tbaa !228
  %227 = icmp eq ptr %226, null
  br i1 %227, label %243, label %228

228:                                              ; preds = %225
  %229 = getelementptr inbounds %struct.EffectedPoint, ptr %2, i64 0, i32 3
  %230 = load ptr, ptr %229, align 8, !tbaa !229
  %231 = icmp eq ptr %230, null
  br i1 %231, label %243, label %232

232:                                              ; preds = %228
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 4 dereferenceable(12) @__const.do_physical_effector.xvec, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #16
  call void @mul_qt_v3(ptr noundef nonnull %230, ptr noundef nonnull %7) #15
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %5) #17
  %233 = getelementptr inbounds %struct.PartDeflect, ptr %10, i64 0, i32 11
  %234 = load float, ptr %233, align 4, !tbaa !54
  %235 = fcmp une float %234, 0.000000e+00
  %236 = load ptr, ptr %217, align 8, !tbaa !228
  br i1 %235, label %237, label %242

237:                                              ; preds = %232
  %238 = fneg float %234
  %239 = getelementptr inbounds %struct.EffectorData, ptr %1, i64 0, i32 5
  %240 = load float, ptr %239, align 4, !tbaa !198
  %241 = fmul float %240, %238
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %8, ptr noundef %236, float noundef %241) #17
  br label %242

242:                                              ; preds = %237, %232
  call fastcc void @add_v3_v3(ptr noundef %236, ptr noundef nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #16
  br label %243

243:                                              ; preds = %221, %225, %228, %242, %28
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @new_effector_cache(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !230 {
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %6 = tail call ptr %5(i64 noundef 120, ptr noundef nonnull @.str.3) #15
  %7 = getelementptr inbounds %struct.EffectorCache, ptr %6, i64 0, i32 2
  store ptr %0, ptr %7, align 8, !tbaa !94
  %8 = getelementptr inbounds %struct.EffectorCache, ptr %6, i64 0, i32 3
  store ptr %1, ptr %8, align 8, !tbaa !115
  %9 = getelementptr inbounds %struct.EffectorCache, ptr %6, i64 0, i32 4
  store ptr %2, ptr %9, align 8, !tbaa !128
  %10 = getelementptr inbounds %struct.EffectorCache, ptr %6, i64 0, i32 6
  store ptr %3, ptr %10, align 8, !tbaa !114
  %11 = getelementptr inbounds %struct.EffectorCache, ptr %6, i64 0, i32 12
  store float -1.000000e+00, ptr %11, align 4, !tbaa !231
  ret ptr %6
}

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @psys_check_enabled(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_rng_new(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_rng_srandom(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_displist_make_curveTypes(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @where_on_path(ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @modifiers_findByType(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @psys_update_particle_tree(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_object_where_is_calc_time(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc float @falloff_func(float noundef %0, i32 noundef %1, float noundef %2, i32 noundef %3, float noundef %4, float noundef %5) unnamed_addr #8 !PGOFuncName !232 {
  %7 = icmp ne i32 %3, 0
  %8 = fcmp ogt float %0, %4
  %9 = and i1 %7, %8
  br i1 %9, label %23, label %10

10:                                               ; preds = %6
  %11 = icmp ne i32 %1, 0
  %12 = fcmp olt float %0, %2
  %13 = and i1 %11, %12
  br i1 %13, label %23, label %14

14:                                               ; preds = %10
  %15 = select i1 %11, float %2, float 0.000000e+00
  %16 = fadd float %0, 1.000000e+00
  %17 = fsub float %16, %15
  %18 = fpext float %17 to double
  %19 = fneg float %5
  %20 = fpext float %19 to double
  %21 = tail call double @pow(double noundef %18, double noundef %20) #15
  %22 = fptrunc double %21 to float
  br label %23

23:                                               ; preds = %10, %6, %14
  %24 = phi float [ %22, %14 ], [ 0.000000e+00, %6 ], [ 1.000000e+00, %10 ]
  ret float %24
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #4 !PGOFuncName !233 {
  %4 = load float, ptr %1, align 4, !tbaa !38
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !38
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !38
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !38
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !38
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #12 !PGOFuncName !234 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !38
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !38
  ret void
}

; Function Attrs: optsize
declare ptr @get_collider_cache(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !235 {
  %3 = load float, ptr %1, align 4, !tbaa !38
  %4 = fneg float %3
  store float %4, ptr %0, align 4, !tbaa !38
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !38
  %7 = fneg float %6
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !38
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !38
  %11 = fneg float %10
  %12 = getelementptr inbounds float, ptr %0, i64 2
  store float %11, ptr %12, align 4, !tbaa !38
  ret void
}

; Function Attrs: optsize
declare i32 @BLI_bvhtree_ray_cast(ptr noundef, ptr noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @eff_tri_ray_hit(ptr nocapture readnone %0, i32 %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #12 !PGOFuncName !236 {
  %5 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %3, i64 0, i32 3
  store float -1.000000e+00, ptr %5, align 4, !tbaa !213
  store i32 1, ptr %3, align 4, !tbaa !211
  ret void
}

; Function Attrs: optsize
declare void @free_collider_cache(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3fl(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #4 !PGOFuncName !237 {
  %4 = load float, ptr %1, align 4, !tbaa !38
  %5 = load float, ptr %0, align 4, !tbaa !38
  %6 = tail call float @llvm.fmuladd.f32(float %4, float %2, float %5)
  store float %6, ptr %0, align 4, !tbaa !38
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !38
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !38
  %11 = tail call float @llvm.fmuladd.f32(float %8, float %2, float %10)
  store float %11, ptr %9, align 4, !tbaa !38
  %12 = getelementptr inbounds float, ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !38
  %14 = getelementptr inbounds float, ptr %0, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !38
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %2, float %15)
  store float %16, ptr %14, align 4, !tbaa !38
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BKE_scene_check_color_management_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @multitex_ext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @wind_func(ptr noundef %0, float noundef %1) unnamed_addr #0 !PGOFuncName !238 {
  %3 = tail call i32 @BLI_rng_get_int(ptr noundef %0) #15
  %4 = add nsw i32 %3, 1
  %5 = srem i32 %4, 128
  %6 = tail call float @BLI_rng_get_float(ptr noundef %0) #15
  %7 = fadd float %6, 1.000000e+00
  %8 = sitofp i32 %5 to float
  %9 = icmp sgt i32 %5, 64
  %10 = fdiv float %8, %7
  %11 = fneg float %10
  %12 = select i1 %9, float %10, float %11
  %13 = fmul float %12, %1
  %14 = fmul float %13, 7.812500e-03
  ret float %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 !PGOFuncName !239 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !38
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !38
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !38
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !38
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !38
  %15 = load float, ptr %8, align 4, !tbaa !38
  %16 = load float, ptr %2, align 4, !tbaa !38
  %17 = load float, ptr %1, align 4, !tbaa !38
  %18 = load float, ptr %6, align 4, !tbaa !38
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !38
  %23 = load float, ptr %1, align 4, !tbaa !38
  %24 = load float, ptr %10, align 4, !tbaa !38
  %25 = load float, ptr %4, align 4, !tbaa !38
  %26 = load float, ptr %2, align 4, !tbaa !38
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

; Function Attrs: optsize
declare float @BLI_gTurbulence(float noundef, float noundef, float noundef, float noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @smoke_get_velocity_at(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: optsize
declare i32 @BLI_rng_get_int(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @BLI_rng_get_float(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #14

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind optsize }
attributes #16 = { nounwind }
attributes #17 = { optsize }

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
!38 = !{!39, !39, i64 0}
!39 = !{!"float", !36, i64 0}
!40 = distinct !{!40, !41, !42, !43}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!"llvm.loop.isvectorized", i32 1}
!43 = !{!"llvm.loop.unroll.runtime.disable"}
!44 = !{!45, !39, i64 64}
!45 = !{!"EffectorWeights", !35, i64 0, !36, i64 8, !39, i64 64, !46, i64 68, !36, i64 70, !47, i64 76}
!46 = !{!"short", !36, i64 0}
!47 = !{!"int", !36, i64 0}
!48 = !{!45, !35, i64 0}
!49 = !{!50, !46, i64 6}
!50 = !{!"PartDeflect", !47, i64 0, !46, i64 4, !46, i64 6, !46, i64 8, !46, i64 10, !46, i64 12, !46, i64 14, !46, i64 16, !46, i64 18, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !39, i64 88, !39, i64 92, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !39, i64 112, !39, i64 116, !39, i64 120, !39, i64 124, !35, i64 128, !35, i64 136, !39, i64 144, !47, i64 148, !35, i64 152}
!51 = !{!50, !39, i64 96}
!52 = !{!50, !47, i64 148}
!53 = !{!50, !46, i64 10}
!54 = !{!50, !39, i64 28}
!55 = !{!50, !39, i64 32}
!56 = !{!50, !47, i64 0}
!57 = !{!50, !35, i64 128}
!58 = !{!59, !47, i64 100}
!59 = !{!"Tex", !60, i64 0, !35, i64 120, !39, i64 128, !39, i64 132, !39, i64 136, !39, i64 140, !39, i64 144, !39, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !39, i64 180, !39, i64 184, !39, i64 188, !39, i64 192, !39, i64 196, !39, i64 200, !39, i64 204, !39, i64 208, !39, i64 212, !46, i64 216, !46, i64 218, !46, i64 220, !46, i64 222, !46, i64 224, !46, i64 226, !46, i64 228, !46, i64 230, !46, i64 232, !46, i64 234, !39, i64 236, !39, i64 240, !39, i64 244, !39, i64 248, !47, i64 252, !47, i64 256, !46, i64 260, !46, i64 262, !46, i64 264, !46, i64 266, !47, i64 268, !47, i64 272, !47, i64 276, !47, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !61, i64 296, !35, i64 336, !35, i64 344, !35, i64 352, !35, i64 360, !35, i64 368, !35, i64 376, !35, i64 384, !35, i64 392, !35, i64 400, !36, i64 408, !36, i64 409}
!60 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !46, i64 98, !47, i64 100, !47, i64 104, !47, i64 108, !35, i64 112}
!61 = !{!"ImageUser", !35, i64 0, !47, i64 8, !47, i64 12, !47, i64 16, !47, i64 20, !36, i64 24, !36, i64 25, !36, i64 26, !36, i64 27, !46, i64 28, !46, i64 30, !46, i64 32, !46, i64 34, !47, i64 36}
!62 = !{!50, !35, i64 136}
!63 = !{!64, !47, i64 944}
!64 = !{!"Object", !60, i64 0, !35, i64 120, !35, i64 128, !46, i64 136, !46, i64 138, !47, i64 140, !47, i64 144, !47, i64 148, !36, i64 152, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !65, i64 312, !35, i64 360, !66, i64 368, !66, i64 384, !66, i64 400, !66, i64 416, !47, i64 432, !47, i64 436, !35, i64 440, !35, i64 448, !47, i64 456, !47, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !39, i64 616, !39, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !47, i64 944, !46, i64 948, !46, i64 950, !46, i64 952, !46, i64 954, !46, i64 956, !46, i64 958, !46, i64 960, !46, i64 962, !46, i64 964, !36, i64 966, !36, i64 967, !47, i64 968, !47, i64 972, !47, i64 976, !47, i64 980, !47, i64 984, !39, i64 988, !39, i64 992, !39, i64 996, !39, i64 1000, !39, i64 1004, !39, i64 1008, !39, i64 1012, !39, i64 1016, !39, i64 1020, !39, i64 1024, !39, i64 1028, !39, i64 1032, !46, i64 1036, !46, i64 1038, !46, i64 1040, !36, i64 1042, !36, i64 1043, !46, i64 1044, !36, i64 1046, !36, i64 1047, !39, i64 1048, !39, i64 1052, !66, i64 1056, !66, i64 1072, !66, i64 1088, !66, i64 1104, !39, i64 1120, !46, i64 1124, !46, i64 1126, !36, i64 1128, !47, i64 1144, !47, i64 1148, !35, i64 1152, !36, i64 1160, !36, i64 1161, !46, i64 1162, !36, i64 1164, !66, i64 1176, !66, i64 1192, !66, i64 1208, !66, i64 1224, !35, i64 1240, !35, i64 1248, !35, i64 1256, !36, i64 1264, !36, i64 1265, !46, i64 1266, !39, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !67, i64 1304, !67, i64 1312, !47, i64 1320, !47, i64 1324, !66, i64 1328, !66, i64 1344, !35, i64 1360, !35, i64 1368, !35, i64 1376, !36, i64 1384, !35, i64 1392, !66, i64 1400, !35, i64 1416}
!65 = !{!"bAnimVizSettings", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !46, i64 16, !46, i64 18, !46, i64 20, !46, i64 22, !46, i64 24, !46, i64 26, !46, i64 28, !46, i64 30, !47, i64 32, !47, i64 36, !47, i64 40, !47, i64 44}
!66 = !{!"ListBase", !35, i64 0, !35, i64 8}
!67 = !{!"long", !36, i64 0}
!68 = !{!69, !35, i64 16}
!69 = !{!"GroupObject", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !46, i64 32, !36, i64 34}
!70 = !{!64, !35, i64 1240}
!71 = !{!64, !35, i64 1224}
!72 = !{!73, !35, i64 0}
!73 = !{!"ParticleSystem", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !66, i64 72, !66, i64 88, !35, i64 104, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !66, i64 152, !36, i64 168, !36, i64 232, !39, i64 296, !39, i64 300, !39, i64 304, !47, i64 308, !47, i64 312, !47, i64 316, !47, i64 320, !47, i64 324, !47, i64 328, !47, i64 332, !47, i64 336, !46, i64 340, !46, i64 342, !46, i64 344, !46, i64 346, !36, i64 348, !36, i64 540, !46, i64 564, !46, i64 566, !35, i64 568, !35, i64 576, !66, i64 584, !35, i64 600, !35, i64 608, !47, i64 616, !47, i64 620, !35, i64 624, !35, i64 632, !35, i64 640, !39, i64 648, !39, i64 652}
!74 = distinct !{!74, !41}
!75 = distinct !{!75, !41}
!76 = !{!77, !47, i64 16}
!77 = !{!"Base", !35, i64 0, !35, i64 8, !47, i64 16, !47, i64 20, !47, i64 24, !46, i64 28, !46, i64 30, !35, i64 32}
!78 = !{!77, !35, i64 32}
!79 = distinct !{!79, !41}
!80 = distinct !{!80, !41}
!81 = !{!"effect.c:add_object_to_effectors"}
!82 = !{!64, !35, i64 1296}
!83 = !{!"effect.c:add_particles_to_effectors"}
!84 = !{!73, !35, i64 16}
!85 = !{!86, !47, i64 152}
!86 = !{!"ParticleSettings", !60, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !47, i64 152, !47, i64 156, !46, i64 160, !46, i64 162, !46, i64 164, !46, i64 166, !46, i64 168, !46, i64 170, !46, i64 172, !46, i64 174, !47, i64 176, !47, i64 180, !46, i64 184, !46, i64 186, !46, i64 188, !46, i64 190, !46, i64 192, !46, i64 194, !46, i64 196, !46, i64 198, !46, i64 200, !46, i64 202, !46, i64 204, !46, i64 206, !46, i64 208, !46, i64 210, !46, i64 212, !46, i64 214, !46, i64 216, !46, i64 218, !46, i64 220, !46, i64 222, !46, i64 224, !46, i64 226, !46, i64 228, !46, i64 230, !39, i64 232, !39, i64 236, !36, i64 240, !36, i64 248, !39, i64 256, !39, i64 260, !39, i64 264, !46, i64 268, !46, i64 270, !39, i64 272, !39, i64 276, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !39, i64 296, !39, i64 300, !39, i64 304, !39, i64 308, !39, i64 312, !39, i64 316, !36, i64 320, !47, i64 324, !47, i64 328, !47, i64 332, !47, i64 336, !46, i64 340, !36, i64 342, !39, i64 348, !39, i64 352, !39, i64 356, !39, i64 360, !39, i64 364, !39, i64 368, !39, i64 372, !36, i64 376, !39, i64 388, !39, i64 392, !39, i64 396, !39, i64 400, !39, i64 404, !39, i64 408, !39, i64 412, !36, i64 416, !39, i64 428, !39, i64 432, !39, i64 436, !39, i64 440, !47, i64 444, !47, i64 448, !39, i64 452, !39, i64 456, !39, i64 460, !39, i64 464, !39, i64 468, !39, i64 472, !39, i64 476, !39, i64 480, !39, i64 484, !39, i64 488, !39, i64 492, !39, i64 496, !39, i64 500, !39, i64 504, !39, i64 508, !39, i64 512, !39, i64 516, !39, i64 520, !39, i64 524, !39, i64 528, !39, i64 532, !39, i64 536, !39, i64 540, !39, i64 544, !39, i64 548, !36, i64 552, !39, i64 560, !39, i64 564, !47, i64 568, !47, i64 572, !36, i64 576, !35, i64 720, !66, i64 728, !35, i64 744, !35, i64 752, !35, i64 760, !35, i64 768, !35, i64 776, !35, i64 784, !46, i64 792, !36, i64 794}
!87 = !{!86, !35, i64 776}
!88 = !{!86, !35, i64 784}
!89 = distinct !{!89, !41}
!90 = !{!91, !35, i64 56}
!91 = !{!"EffectorCache", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !36, i64 64, !36, i64 80, !39, i64 92, !36, i64 96, !39, i64 108, !47, i64 112}
!92 = distinct !{!92, !41}
!93 = !{!"effect.c:precalculate_effector"}
!94 = !{!91, !35, i64 16}
!95 = !{!96, !47, i64 680}
!96 = !{!"Scene", !60, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !66, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !47, i64 232, !47, i64 236, !47, i64 240, !46, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !97, i64 280, !106, i64 4264, !66, i64 4296, !66, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !46, i64 4376, !46, i64 4378, !47, i64 4380, !66, i64 4384, !107, i64 4400, !108, i64 4416, !111, i64 4600, !35, i64 4608, !112, i64 4616, !35, i64 4640, !67, i64 4648, !67, i64 4656, !99, i64 4664, !100, i64 4824, !113, i64 4888, !35, i64 4952}
!97 = !{!"RenderData", !98, i64 0, !35, i64 248, !35, i64 256, !101, i64 264, !102, i64 328, !47, i64 400, !47, i64 404, !47, i64 408, !39, i64 412, !47, i64 416, !47, i64 420, !47, i64 424, !47, i64 428, !46, i64 432, !46, i64 434, !39, i64 436, !39, i64 440, !39, i64 444, !39, i64 448, !39, i64 452, !46, i64 456, !46, i64 458, !46, i64 460, !46, i64 462, !46, i64 464, !46, i64 466, !47, i64 468, !46, i64 472, !46, i64 474, !46, i64 476, !46, i64 478, !46, i64 480, !46, i64 482, !47, i64 484, !47, i64 488, !46, i64 492, !46, i64 494, !47, i64 496, !47, i64 500, !46, i64 504, !46, i64 506, !46, i64 508, !46, i64 510, !46, i64 512, !36, i64 514, !36, i64 515, !47, i64 516, !47, i64 520, !47, i64 524, !46, i64 528, !46, i64 530, !46, i64 532, !46, i64 534, !46, i64 536, !46, i64 538, !46, i64 540, !46, i64 542, !103, i64 544, !103, i64 560, !104, i64 576, !66, i64 592, !46, i64 608, !46, i64 610, !39, i64 612, !39, i64 616, !39, i64 620, !39, i64 624, !47, i64 628, !39, i64 632, !39, i64 636, !39, i64 640, !39, i64 644, !46, i64 648, !46, i64 650, !46, i64 652, !46, i64 654, !46, i64 656, !46, i64 658, !39, i64 660, !39, i64 664, !46, i64 668, !46, i64 670, !39, i64 672, !39, i64 676, !36, i64 680, !47, i64 1704, !46, i64 1708, !46, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !47, i64 2520, !46, i64 2524, !46, i64 2526, !39, i64 2528, !39, i64 2532, !46, i64 2536, !46, i64 2538, !39, i64 2540, !46, i64 2544, !46, i64 2546, !47, i64 2548, !46, i64 2552, !46, i64 2554, !46, i64 2556, !46, i64 2558, !39, i64 2560, !39, i64 2564, !35, i64 2568, !47, i64 2576, !39, i64 2580, !36, i64 2584, !105, i64 2616, !47, i64 3976, !47, i64 3980}
!98 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !46, i64 8, !46, i64 10, !39, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !99, i64 24, !100, i64 184}
!99 = !{!"ColorManagedViewSettings", !47, i64 0, !47, i64 4, !36, i64 8, !36, i64 72, !39, i64 136, !39, i64 140, !35, i64 144, !35, i64 152}
!100 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!101 = !{!"QuicktimeCodecSettings", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !47, i64 16, !47, i64 20, !47, i64 24, !47, i64 28, !47, i64 32, !47, i64 36, !47, i64 40, !47, i64 44, !46, i64 48, !46, i64 50, !47, i64 52, !47, i64 56, !47, i64 60}
!102 = !{!"FFMpegCodecData", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !47, i64 16, !47, i64 20, !47, i64 24, !47, i64 28, !39, i64 32, !47, i64 36, !47, i64 40, !47, i64 44, !47, i64 48, !47, i64 52, !47, i64 56, !47, i64 60, !35, i64 64}
!103 = !{!"rctf", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!104 = !{!"rcti", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12}
!105 = !{!"BakeData", !98, i64 0, !36, i64 248, !46, i64 1272, !46, i64 1274, !46, i64 1276, !46, i64 1278, !39, i64 1280, !39, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!106 = !{!"AudioData", !47, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !47, i64 16, !46, i64 20, !46, i64 22, !39, i64 24, !39, i64 28}
!107 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!108 = !{!"GameData", !107, i64 0, !46, i64 16, !46, i64 18, !46, i64 20, !46, i64 22, !46, i64 24, !46, i64 26, !46, i64 28, !46, i64 30, !46, i64 32, !36, i64 34, !109, i64 40, !46, i64 64, !46, i64 66, !39, i64 68, !110, i64 72, !39, i64 128, !39, i64 132, !47, i64 136, !46, i64 140, !46, i64 142, !46, i64 144, !46, i64 146, !46, i64 148, !46, i64 150, !46, i64 152, !46, i64 154, !46, i64 156, !46, i64 158, !46, i64 160, !46, i64 162, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !39, i64 180}
!109 = !{!"GameDome", !46, i64 0, !46, i64 2, !46, i64 4, !46, i64 6, !39, i64 8, !39, i64 12, !35, i64 16}
!110 = !{!"RecastData", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !47, i64 40, !39, i64 44, !39, i64 48, !46, i64 52, !46, i64 54}
!111 = !{!"UnitSettings", !39, i64 0, !36, i64 4, !36, i64 5, !46, i64 6}
!112 = !{!"PhysicsSettings", !36, i64 0, !47, i64 12, !47, i64 16, !47, i64 20}
!113 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!114 = !{!91, !35, i64 48}
!115 = !{!91, !35, i64 24}
!116 = !{!64, !46, i64 136}
!117 = !{!64, !35, i64 296}
!118 = !{!119, !47, i64 268}
!119 = !{!"Curve", !60, i64 0, !35, i64 120, !35, i64 128, !66, i64 136, !35, i64 152, !35, i64 160, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !36, i64 208, !36, i64 220, !36, i64 232, !46, i64 244, !46, i64 246, !46, i64 248, !46, i64 250, !39, i64 252, !39, i64 256, !47, i64 260, !46, i64 264, !46, i64 266, !47, i64 268, !39, i64 272, !39, i64 276, !39, i64 280, !46, i64 284, !46, i64 286, !46, i64 288, !46, i64 290, !47, i64 292, !47, i64 296, !36, i64 300, !46, i64 304, !36, i64 306, !36, i64 307, !39, i64 308, !39, i64 312, !39, i64 316, !39, i64 320, !39, i64 324, !39, i64 328, !39, i64 332, !39, i64 336, !39, i64 340, !39, i64 344, !47, i64 348, !47, i64 352, !47, i64 356, !47, i64 360, !47, i64 364, !35, i64 368, !35, i64 376, !36, i64 384, !35, i64 448, !35, i64 456, !35, i64 464, !35, i64 472, !35, i64 480, !47, i64 488, !47, i64 492, !35, i64 496, !120, i64 504, !39, i64 512, !39, i64 516, !39, i64 520, !36, i64 524, !36, i64 525, !36, i64 526}
!120 = !{!"CharInfo", !46, i64 0, !46, i64 2, !36, i64 4, !36, i64 5, !46, i64 6}
!121 = !{!64, !35, i64 1280}
!122 = !{!123, !35, i64 48}
!123 = !{!"CurveCache", !66, i64 0, !66, i64 16, !66, i64 32, !35, i64 48}
!124 = !{!125, !35, i64 0}
!125 = !{!"Path", !35, i64 0, !47, i64 8, !39, i64 12}
!126 = !{!91, !35, i64 40}
!127 = !{!91, !47, i64 112}
!128 = !{!91, !35, i64 32}
!129 = !{!130, !35, i64 16}
!130 = !{!"ParticleSimulationData", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !39, i64 40}
!131 = !{!132, !35, i64 0}
!132 = !{!"EffectedPoint", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !47, i64 48, !47, i64 52, !35, i64 56}
!133 = !{!132, !35, i64 8}
!134 = !{!73, !35, i64 24}
!135 = !{!132, !47, i64 52}
!136 = !{!137, !39, i64 180}
!137 = !{!"ParticleData", !138, i64 0, !138, i64 56, !35, i64 112, !35, i64 120, !35, i64 128, !47, i64 136, !39, i64 140, !39, i64 144, !39, i64 148, !47, i64 152, !47, i64 156, !36, i64 160, !39, i64 176, !39, i64 180, !39, i64 184, !47, i64 188, !47, i64 192, !46, i64 196, !46, i64 198}
!138 = !{!"ParticleKey", !36, i64 0, !36, i64 12, !36, i64 24, !36, i64 40, !39, i64 52}
!139 = !{!132, !39, i64 40}
!140 = !{!132, !39, i64 44}
!141 = !{!50, !39, i64 20}
!142 = !{!132, !39, i64 36}
!143 = !{!132, !39, i64 32}
!144 = !{!132, !47, i64 48}
!145 = !{!132, !35, i64 56}
!146 = !{!96, !46, i64 820}
!147 = !{!50, !46, i64 18}
!148 = !{!50, !46, i64 8}
!149 = !{!150, !39, i64 48}
!150 = !{!"EffectorData", !36, i64 0, !36, i64 12, !36, i64 24, !36, i64 36, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !36, i64 64, !36, i64 76, !35, i64 88}
!151 = !{!"effect.c:dot_v3v3"}
!152 = !{!"effect.c:falloff_func_dist"}
!153 = !{!50, !39, i64 44}
!154 = !{!50, !39, i64 40}
!155 = !{!50, !39, i64 36}
!156 = !{!"effect.c:madd_v3_v3v3fl"}
!157 = !{!"effect.c:len_v3"}
!158 = !{!"effect.c:falloff_func_rad"}
!159 = !{!50, !39, i64 56}
!160 = !{!50, !39, i64 52}
!161 = !{!50, !39, i64 48}
!162 = !{!"effect.c:saacos"}
!163 = !{!164, !47, i64 0}
!164 = !{!"BVHTreeNearest", !47, i64 0, !36, i64 4, !36, i64 16, !39, i64 28, !47, i64 32}
!165 = !{!164, !39, i64 28}
!166 = !{!167, !35, i64 136}
!167 = !{!"SurfaceModifierData", !168, i64 0, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !47, i64 144, !47, i64 148}
!168 = !{!"ModifierData", !35, i64 0, !35, i64 8, !47, i64 16, !47, i64 20, !47, i64 24, !47, i64 28, !36, i64 32, !35, i64 96, !35, i64 104}
!169 = !{!170, !35, i64 0}
!170 = !{!"BVHTreeFromMesh", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !36, i64 48, !36, i64 49, !36, i64 50, !39, i64 52, !35, i64 56, !36, i64 64}
!171 = !{!170, !35, i64 8}
!172 = !{!167, !35, i64 128}
!173 = !{!167, !35, i64 120}
!174 = !{!175, !47, i64 0}
!175 = !{!"MFace", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !46, i64 16, !36, i64 18, !36, i64 19}
!176 = !{!175, !47, i64 4}
!177 = !{!175, !47, i64 8}
!178 = !{!175, !47, i64 12}
!179 = !{!"effect.c:copy_v3_v3"}
!180 = !{!"effect.c:add_v3_v3"}
!181 = !{!"effect.c:mul_v3_fl"}
!182 = !{i32 0, i32 2}
!183 = !{!150, !39, i64 56}
!184 = !{!185, !35, i64 1528}
!185 = !{!"DerivedMesh", !186, i64 0, !186, i64 200, !186, i64 400, !186, i64 600, !186, i64 800, !47, i64 1000, !47, i64 1004, !47, i64 1008, !47, i64 1012, !47, i64 1016, !47, i64 1020, !47, i64 1024, !35, i64 1032, !35, i64 1040, !47, i64 1048, !39, i64 1052, !47, i64 1056, !47, i64 1060, !35, i64 1064, !36, i64 1072, !35, i64 1080, !35, i64 1088, !35, i64 1096, !35, i64 1104, !35, i64 1112, !35, i64 1120, !35, i64 1128, !35, i64 1136, !35, i64 1144, !35, i64 1152, !35, i64 1160, !35, i64 1168, !35, i64 1176, !35, i64 1184, !35, i64 1192, !35, i64 1200, !35, i64 1208, !35, i64 1216, !35, i64 1224, !35, i64 1232, !35, i64 1240, !35, i64 1248, !35, i64 1256, !35, i64 1264, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !35, i64 1304, !35, i64 1312, !35, i64 1320, !35, i64 1328, !35, i64 1336, !35, i64 1344, !35, i64 1352, !35, i64 1360, !35, i64 1368, !35, i64 1376, !35, i64 1384, !35, i64 1392, !35, i64 1400, !35, i64 1408, !35, i64 1416, !35, i64 1424, !35, i64 1432, !35, i64 1440, !35, i64 1448, !35, i64 1456, !35, i64 1464, !35, i64 1472, !35, i64 1480, !35, i64 1488, !35, i64 1496, !35, i64 1504, !35, i64 1512, !35, i64 1520, !35, i64 1528, !35, i64 1536, !35, i64 1544, !35, i64 1552, !35, i64 1560, !35, i64 1568, !35, i64 1576, !35, i64 1584, !35, i64 1592, !35, i64 1600, !35, i64 1608, !35, i64 1616, !35, i64 1624, !35, i64 1632, !35, i64 1640, !35, i64 1648, !35, i64 1656, !35, i64 1664, !35, i64 1672, !35, i64 1680}
!186 = !{!"CustomData", !35, i64 0, !36, i64 8, !47, i64 172, !47, i64 176, !47, i64 180, !35, i64 184, !35, i64 192}
!187 = !{!150, !35, i64 88}
!188 = !{!47, !47, i64 0}
!189 = !{!185, !35, i64 1544}
!190 = !{!130, !35, i64 0}
!191 = !{!130, !35, i64 8}
!192 = !{!138, !39, i64 52}
!193 = !{!"effect.c:normalize_v3"}
!194 = !{!"effect.c:normalize_v3_v3"}
!195 = !{!"effect.c:sub_v3_v3v3"}
!196 = !{!"effect.c:add_v3_v3v3"}
!197 = distinct !{!197, !41}
!198 = !{!150, !39, i64 52}
!199 = distinct !{!199, !41}
!200 = !{!"effect.c:get_effector_tot"}
!201 = !{!185, !47, i64 1000}
!202 = !{!73, !47, i64 320}
!203 = !{!150, !39, i64 60}
!204 = !{!86, !47, i64 336}
!205 = !{!"effect.c:eff_calc_visibility"}
!206 = !{!207, !35, i64 16}
!207 = !{!"ColliderCache", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24}
!208 = !{!207, !35, i64 24}
!209 = !{!210, !35, i64 184}
!210 = !{!"CollisionModifierData", !168, i64 0, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !35, i64 160, !47, i64 168, !47, i64 172, !39, i64 176, !39, i64 180, !35, i64 184}
!211 = !{!212, !47, i64 0}
!212 = !{!"BVHTreeRayHit", !47, i64 0, !36, i64 4, !36, i64 16, !39, i64 28, !47, i64 32}
!213 = !{!212, !39, i64 28}
!214 = !{!50, !39, i64 84}
!215 = !{!"effect.c:do_texture_effector"}
!216 = !{!50, !39, i64 124}
!217 = !{!50, !46, i64 12}
!218 = !{!219, !35, i64 24}
!219 = !{!"TexResult", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !47, i64 20, !35, i64 24}
!220 = !{!219, !39, i64 12}
!221 = !{!219, !39, i64 4}
!222 = !{!219, !39, i64 8}
!223 = !{!219, !39, i64 0}
!224 = !{!"effect.c:do_physical_effector"}
!225 = !{!50, !39, i64 24}
!226 = !{!50, !39, i64 144}
!227 = !{!50, !35, i64 152}
!228 = !{!132, !35, i64 16}
!229 = !{!132, !35, i64 24}
!230 = !{!"effect.c:new_effector_cache"}
!231 = !{!91, !39, i64 108}
!232 = !{!"effect.c:falloff_func"}
!233 = !{!"effect.c:mul_v3_v3fl"}
!234 = !{!"effect.c:zero_v3"}
!235 = !{!"effect.c:negate_v3_v3"}
!236 = !{!"effect.c:eff_tri_ray_hit"}
!237 = !{!"effect.c:madd_v3_v3fl"}
!238 = !{!"effect.c:wind_func"}
!239 = !{!"effect.c:cross_v3_v3v3"}
