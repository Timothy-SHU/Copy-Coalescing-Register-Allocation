; ModuleID = 'blender/source/blender/blenkernel/intern/boids.c'
source_filename = "blender/source/blender/blenkernel/intern/boids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.ParticleSettings = type { %struct.ID, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, [2 x float], [2 x float], float, float, float, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, [1 x float], i32, i32, i32, i32, i16, [3 x i16], float, float, float, float, float, float, float, [3 x float], float, float, float, float, float, float, float, [3 x float], float, float, float, float, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, [2 x float], float, float, i32, i32, [18 x ptr], ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, [3 x i16] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BoidSettings = type { i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.ListBase }
%struct.BoidState = type { ptr, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, [32 x i8], i32, i32, i32, float, i32, i32, float, float }
%struct.BoidRule = type { ptr, ptr, i32, i32, [32 x i8] }
%struct.BoidRuleFollowLeader = type { %struct.BoidRule, ptr, [3 x float], [3 x float], float, float, i32, i32 }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.BoidValues = type { float, float, float, float, float, float }
%struct.BoidBrainData = type { ptr, ptr, float, float, float, [3 x float], float, ptr, [3 x float], [3 x float], float, ptr }
%struct.ParticleData = type { %struct.ParticleKey, %struct.ParticleKey, ptr, ptr, ptr, i32, float, float, float, i32, i32, [4 x float], float, float, float, i32, i32, i16, i16 }
%struct.ParticleKey = type { [3 x float], [3 x float], [4 x float], [3 x float], float }
%struct.BoidParticle = type { ptr, %struct.BoidData, [3 x float], [3 x float], float }
%struct.BoidData = type { float, [3 x float], i16, i16 }
%struct.ParticleSimulationData = type { ptr, ptr, ptr, ptr, ptr, float }
%struct.ParticleSystem = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], [4 x [4 x float]], float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [3 x [64 x i8]], [12 x i16], i16, i16, ptr, ptr, %struct.ListBase, ptr, ptr, i32, i32, ptr, ptr, ptr, float, float }
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
%struct.EffectedPoint = type { ptr, ptr, ptr, ptr, float, float, float, float, i32, i32, ptr }
%struct.ParticleCollision = type { ptr, ptr, ptr, ptr, ptr, ptr, float, float, float, float, float, float, i32, %struct.ParticleCollisionElement, float, float, float, float, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, i32 }
%struct.ParticleCollisionElement = type { [4 x ptr], [4 x ptr], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [2 x float], i32, i32, i16, i16 }
%struct.BVHTreeRayHit = type { i32, [3 x float], [3 x float], float, i32 }
%struct.ColliderCache = type { ptr, ptr, ptr, ptr }
%struct.CollisionModifierData = type { %struct.ModifierData, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, float, float, ptr }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.BoidRuleAvoidCollision = type { %struct.BoidRule, i32, float }
%struct.BoidRuleAverageSpeed = type { %struct.BoidRule, float, float, float, float }
%struct.BoidRuleFight = type { %struct.BoidRule, float, float }
%struct.EffectorCache = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x float], [3 x float], float, [3 x float], float, i32 }
%struct.EffectorData = type { [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, float, [3 x float], [3 x float], ptr }
%struct.BoidRuleGoalAvoid = type { %struct.BoidRule, ptr, i32, float, i32, i32 }
%struct.PartDeflect = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, ptr, float, i32, ptr }
%struct.KDTreeNearest = type { i32, float, [3 x float] }
%struct.ParticleTarget = type { ptr, ptr, ptr, i32, i16, i16, float, float }

@__const.boid_body.ground_nor = private unnamed_addr constant [3 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00], align 4
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [18 x i8] c"BoidRuleGoalAvoid\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"BoidRuleAvoidCollision\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"BoidRuleFollowLeader\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"BoidRuleAverageSpeed\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"BoidRuleFight\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"BoidRule\00", align 1
@boidrule_type_items = external local_unnamed_addr global [0 x %struct.EnumPropertyItem], align 8
@.str.6 = private unnamed_addr constant [10 x i8] c"BoidState\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"State %i\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"State\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@PSYS_FRAND_SEED_OFFSET = external local_unnamed_addr global [1024 x i32], align 16
@PSYS_FRAND_SEED_MULTIPLIER = external local_unnamed_addr global [1024 x i32], align 16
@PSYS_FRAND_BASE = external local_unnamed_addr global [1024 x float], align 16
@boid_rules = internal unnamed_addr constant [9 x ptr] [ptr @rule_none, ptr @rule_goal_avoid, ptr @rule_goal_avoid, ptr @rule_avoid_collision, ptr @rule_separate, ptr @rule_flock, ptr @rule_follow_leader, ptr @rule_average_speed, ptr @rule_fight], align 16

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @boids_precalc_rules(ptr nocapture noundef readonly %0, float noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.BoidSettings, ptr %4, i64 0, i32 22
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = icmp eq ptr %6, null
  br i1 %7, label %48, label %11

8:                                                ; preds = %45, %11
  %9 = load ptr, ptr %12, align 8, !tbaa !44
  %10 = icmp eq ptr %9, null
  br i1 %10, label %48, label %11, !llvm.loop !45

11:                                               ; preds = %2, %8
  %12 = phi ptr [ %9, %8 ], [ %6, %2 ]
  %13 = getelementptr inbounds %struct.BoidState, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = icmp eq ptr %14, null
  br i1 %15, label %8, label %16

16:                                               ; preds = %11, %45
  %17 = phi ptr [ %46, %45 ], [ %14, %11 ]
  %18 = getelementptr inbounds %struct.BoidRule, ptr %17, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !48
  %20 = icmp eq i32 %19, 6
  br i1 %20, label %21, label %45

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.BoidRuleFollowLeader, ptr %17, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !50
  %24 = icmp eq ptr %23, null
  br i1 %24, label %45, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.BoidRuleFollowLeader, ptr %17, i64 0, i32 4
  %27 = load float, ptr %26, align 8, !tbaa !52
  %28 = fcmp une float %27, %1
  br i1 %28, label %29, label %45

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.BoidRuleFollowLeader, ptr %17, i64 0, i32 3
  %31 = getelementptr inbounds %struct.BoidRuleFollowLeader, ptr %17, i64 0, i32 2
  %32 = load float, ptr %31, align 4, !tbaa !53
  store float %32, ptr %30, align 4, !tbaa !53
  %33 = getelementptr inbounds %struct.BoidRuleFollowLeader, ptr %17, i64 0, i32 2, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !53
  %35 = getelementptr inbounds %struct.BoidRuleFollowLeader, ptr %17, i64 0, i32 3, i64 1
  store float %34, ptr %35, align 4, !tbaa !53
  %36 = getelementptr inbounds %struct.BoidRuleFollowLeader, ptr %17, i64 0, i32 2, i64 2
  %37 = load float, ptr %36, align 4, !tbaa !53
  %38 = getelementptr inbounds %struct.BoidRuleFollowLeader, ptr %17, i64 0, i32 3, i64 2
  store float %37, ptr %38, align 4, !tbaa !53
  %39 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 47, i64 3
  %40 = load float, ptr %39, align 4, !tbaa !53
  store float %40, ptr %31, align 4, !tbaa !53
  %41 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 47, i64 3, i64 1
  %42 = load float, ptr %41, align 4, !tbaa !53
  store float %42, ptr %33, align 4, !tbaa !53
  %43 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 47, i64 3, i64 2
  %44 = load float, ptr %43, align 4, !tbaa !53
  store float %44, ptr %36, align 4, !tbaa !53
  store float %1, ptr %26, align 8, !tbaa !52
  br label %45

45:                                               ; preds = %21, %25, %29, %16
  %46 = load ptr, ptr %17, align 8, !tbaa !44
  %47 = icmp eq ptr %46, null
  br i1 %47, label %8, label %16, !llvm.loop !54

48:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @boid_brain(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = alloca %struct.BoidValues, align 4
  %5 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #12
  %9 = getelementptr inbounds %struct.BoidSettings, ptr %8, i64 0, i32 22
  %10 = getelementptr inbounds %struct.ParticleData, ptr %2, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !57
  %12 = getelementptr inbounds %struct.BoidParticle, ptr %11, i64 0, i32 1, i32 2
  br label %13

13:                                               ; preds = %17, %3
  %14 = phi ptr [ %9, %3 ], [ %15, %17 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !44
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.BoidState, ptr %15, i64 0, i32 6
  %19 = load i32, ptr %18, align 8, !tbaa !60
  %20 = load i16, ptr %12, align 8, !tbaa !62
  %21 = sext i16 %20 to i32
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %31, label %13, !llvm.loop !65

23:                                               ; preds = %13
  %24 = load ptr, ptr %9, align 8, !tbaa !66
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.BoidState, ptr %24, i64 0, i32 6
  %28 = load i32, ptr %27, align 8, !tbaa !60
  %29 = trunc i32 %28 to i16
  %30 = getelementptr inbounds %struct.BoidParticle, ptr %11, i64 0, i32 1, i32 2
  store i16 %29, ptr %30, align 8, !tbaa !62
  br label %31

31:                                               ; preds = %17, %23, %26
  %32 = phi ptr [ %24, %26 ], [ %24, %23 ], [ %15, %17 ]
  %33 = getelementptr inbounds %struct.BoidParticle, ptr %11, i64 0, i32 1
  %34 = load float, ptr %33, align 8, !tbaa !68
  %35 = fcmp ugt float %34, 0.000000e+00
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.ParticleData, ptr %2, i64 0, i32 18
  store i16 4, ptr %37, align 2, !tbaa !69
  %38 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 3
  %39 = load float, ptr %38, align 4, !tbaa !70
  %40 = getelementptr inbounds %struct.ParticleData, ptr %2, i64 0, i32 8
  store float %39, ptr %40, align 4, !tbaa !71
  br label %486

41:                                               ; preds = %31
  %42 = load ptr, ptr %0, align 8, !tbaa !72
  %43 = getelementptr inbounds %struct.ParticleSimulationData, ptr %42, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !73
  %45 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 5
  %46 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 5, i64 1
  %47 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 5, i64 2
  %48 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 6
  %49 = getelementptr inbounds %struct.ParticleSystem, ptr %44, i64 0, i32 23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %45, i8 0, i64 16, i1 false)
  %50 = load i32, ptr %49, align 4, !tbaa !75
  %51 = add nsw i32 %50, %1
  %52 = srem i32 %50, 1024
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_OFFSET, i64 0, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !77
  %56 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_MULTIPLIER, i64 0, i64 %53
  %57 = load i32, ptr %56, align 4, !tbaa !77
  %58 = mul i32 %57, %51
  %59 = add i32 %58, %55
  %60 = and i32 %59, 1023
  %61 = zext nneg i32 %60 to i64
  %62 = getelementptr inbounds [1024 x float], ptr @PSYS_FRAND_BASE, i64 0, i64 %61
  %63 = load float, ptr %62, align 4, !tbaa !53
  %64 = fmul float %63, 1.000000e+03
  %65 = fptosi float %64 to i32
  %66 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 3
  %67 = load float, ptr %66, align 4, !tbaa !70
  %68 = fptosi float %67 to i32
  %69 = add nsw i32 %68, %65
  %70 = mul i32 %69, %57
  %71 = add i32 %70, %55
  %72 = and i32 %71, 1023
  %73 = zext nneg i32 %72 to i64
  %74 = getelementptr inbounds [1024 x float], ptr @PSYS_FRAND_BASE, i64 0, i64 %73
  %75 = load float, ptr %74, align 4, !tbaa !53
  %76 = getelementptr inbounds %struct.BoidParticle, ptr %11, i64 0, i32 1, i32 3
  %77 = load i16, ptr %76, align 2, !tbaa !78
  %78 = add i16 %77, -1
  %79 = icmp ult i16 %78, 2
  %80 = load float, ptr %33, align 8, !tbaa !68
  %81 = getelementptr inbounds %struct.BoidSettings, ptr %8, i64 0, i32 6
  %82 = load float, ptr %81, align 8, !tbaa !79
  %83 = getelementptr inbounds %struct.BoidValues, ptr %4, i64 0, i32 1
  %84 = getelementptr inbounds %struct.BoidValues, ptr %4, i64 0, i32 2
  br i1 %79, label %85, label %106

85:                                               ; preds = %41
  %86 = getelementptr inbounds %struct.BoidSettings, ptr %8, i64 0, i32 17
  %87 = load float, ptr %86, align 4, !tbaa !80
  %88 = fmul float %87, %80
  %89 = fdiv float %88, %82
  store float %89, ptr %4, align 4, !tbaa !81
  %90 = getelementptr inbounds %struct.BoidSettings, ptr %8, i64 0, i32 18
  %91 = load float, ptr %90, align 8, !tbaa !83
  %92 = fmul float %89, %91
  store float %92, ptr %83, align 4, !tbaa !84
  %93 = getelementptr inbounds %struct.BoidSettings, ptr %8, i64 0, i32 19
  %94 = load float, ptr %93, align 4, !tbaa !85
  %95 = fmul float %94, 0x400921FB60000000
  %96 = fmul float %80, %95
  %97 = fdiv float %96, %82
  store float %97, ptr %84, align 4, !tbaa !86
  %98 = getelementptr inbounds %struct.BoidValues, ptr %4, i64 0, i32 3
  store float 0.000000e+00, ptr %98, align 4, !tbaa !87
  %99 = getelementptr inbounds %struct.BoidSettings, ptr %8, i64 0, i32 20
  %100 = load float, ptr %99, align 8, !tbaa !88
  %101 = getelementptr inbounds %struct.BoidValues, ptr %4, i64 0, i32 4
  store float %100, ptr %101, align 4, !tbaa !89
  %102 = getelementptr inbounds %struct.BoidSettings, ptr %8, i64 0, i32 16
  %103 = load float, ptr %102, align 8, !tbaa !90
  %104 = fmul float %80, %103
  %105 = fdiv float %104, %82
  br label %126

106:                                              ; preds = %41
  %107 = getelementptr inbounds %struct.BoidSettings, ptr %8, i64 0, i32 12
  %108 = load float, ptr %107, align 8, !tbaa !91
  %109 = fmul float %108, %80
  %110 = fdiv float %109, %82
  store float %110, ptr %4, align 4, !tbaa !81
  %111 = getelementptr inbounds %struct.BoidSettings, ptr %8, i64 0, i32 13
  %112 = load float, ptr %111, align 4, !tbaa !92
  %113 = fmul float %110, %112
  store float %113, ptr %83, align 4, !tbaa !84
  %114 = getelementptr inbounds %struct.BoidSettings, ptr %8, i64 0, i32 14
  %115 = load float, ptr %114, align 8, !tbaa !93
  %116 = fmul float %115, 0x400921FB60000000
  %117 = fmul float %80, %116
  %118 = fdiv float %117, %82
  store float %118, ptr %84, align 4, !tbaa !86
  %119 = getelementptr inbounds %struct.BoidSettings, ptr %8, i64 0, i32 11
  %120 = load float, ptr %119, align 4, !tbaa !94
  %121 = fmul float %108, %120
  %122 = getelementptr inbounds %struct.BoidValues, ptr %4, i64 0, i32 3
  store float %121, ptr %122, align 4, !tbaa !87
  %123 = getelementptr inbounds %struct.BoidSettings, ptr %8, i64 0, i32 15
  %124 = load float, ptr %123, align 4, !tbaa !95
  %125 = getelementptr inbounds %struct.BoidValues, ptr %4, i64 0, i32 4
  store float %124, ptr %125, align 4, !tbaa !89
  br label %126

126:                                              ; preds = %85, %106
  %127 = phi float [ %105, %85 ], [ 0.000000e+00, %106 ]
  %128 = getelementptr inbounds %struct.BoidValues, ptr %4, i64 0, i32 5
  store float %127, ptr %128, align 4, !tbaa !96
  %129 = getelementptr inbounds %struct.BoidState, ptr %32, i64 0, i32 8
  %130 = load i32, ptr %129, align 8, !tbaa !97
  switch i32 %130, label %307 [
    i32 0, label %131
    i32 1, label %197
    i32 2, label %230
  ]

131:                                              ; preds = %126
  %132 = getelementptr inbounds %struct.BoidState, ptr %32, i64 0, i32 2
  %133 = getelementptr inbounds %struct.BoidState, ptr %32, i64 0, i32 9
  %134 = getelementptr inbounds %struct.ParticleData, ptr %2, i64 0, i32 1, i32 1
  %135 = getelementptr inbounds %struct.ParticleData, ptr %2, i64 0, i32 1, i32 1, i64 1
  %136 = getelementptr inbounds %struct.ParticleData, ptr %2, i64 0, i32 1, i32 1, i64 2
  br label %137

137:                                              ; preds = %194, %131
  %138 = phi ptr [ %132, %131 ], [ %139, %194 ]
  %139 = load ptr, ptr %138, align 8, !tbaa !44
  %140 = icmp eq ptr %139, null
  br i1 %140, label %307, label %141

141:                                              ; preds = %137
  %142 = load float, ptr %133, align 4, !tbaa !98
  %143 = load ptr, ptr %10, align 8, !tbaa !57
  %144 = getelementptr inbounds %struct.BoidParticle, ptr %143, i64 0, i32 1, i32 3
  %145 = load i16, ptr %144, align 2, !tbaa !78
  %146 = add i16 %145, -1
  %147 = icmp ult i16 %146, 2
  br i1 %147, label %148, label %153

148:                                              ; preds = %141
  %149 = getelementptr inbounds %struct.BoidRule, ptr %139, i64 0, i32 3
  %150 = load i32, ptr %149, align 4, !tbaa !99
  %151 = and i32 %150, 8
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %148, %141
  %154 = icmp eq i16 %145, 0
  br i1 %154, label %155, label %194

155:                                              ; preds = %153
  %156 = getelementptr inbounds %struct.BoidRule, ptr %139, i64 0, i32 3
  %157 = load i32, ptr %156, align 4, !tbaa !99
  %158 = and i32 %157, 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %194, label %160

160:                                              ; preds = %155, %148
  %161 = getelementptr inbounds %struct.BoidRule, ptr %139, i64 0, i32 2
  %162 = load i32, ptr %161, align 8, !tbaa !48
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [9 x ptr], ptr @boid_rules, i64 0, i64 %163
  %165 = load ptr, ptr %164, align 8, !tbaa !44
  %166 = call i32 %165(ptr noundef nonnull %139, ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef %2) #12
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %194, label %168

168:                                              ; preds = %160
  %169 = fcmp olt float %142, 0.000000e+00
  br i1 %169, label %194, label %170

170:                                              ; preds = %168
  %171 = load float, ptr %134, align 4, !tbaa !53
  %172 = load float, ptr %135, align 4, !tbaa !53
  %173 = fmul float %172, %172
  %174 = call float @llvm.fmuladd.f32(float %171, float %171, float %173)
  %175 = load float, ptr %136, align 4, !tbaa !53
  %176 = call float @llvm.fmuladd.f32(float %175, float %175, float %174)
  %177 = call float @sqrtf(float noundef %176) #12
  %178 = fmul float %142, %177
  %179 = load float, ptr %45, align 4, !tbaa !53
  %180 = load float, ptr %134, align 4, !tbaa !53
  %181 = fsub float %179, %180
  %182 = load float, ptr %46, align 4, !tbaa !53
  %183 = load float, ptr %135, align 4, !tbaa !53
  %184 = fsub float %182, %183
  %185 = load float, ptr %47, align 4, !tbaa !53
  %186 = load float, ptr %136, align 4, !tbaa !53
  %187 = fsub float %185, %186
  %188 = fmul float %184, %184
  %189 = call float @llvm.fmuladd.f32(float %181, float %181, float %188)
  %190 = call float @llvm.fmuladd.f32(float %187, float %187, float %189)
  %191 = fmul float %178, %178
  %192 = fcmp ugt float %190, %191
  %193 = zext i1 %192 to i32
  br label %194

194:                                              ; preds = %153, %155, %160, %168, %170
  %195 = phi i32 [ 0, %160 ], [ 1, %168 ], [ %193, %170 ], [ 0, %155 ], [ 0, %153 ]
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %137, label %307, !llvm.loop !100

197:                                              ; preds = %126
  %198 = fmul float %75, 1.000000e+03
  %199 = fptosi float %198 to i32
  %200 = getelementptr inbounds %struct.BoidState, ptr %32, i64 0, i32 2
  %201 = tail call i32 @BLI_countlist(ptr noundef nonnull %200) #12
  %202 = srem i32 %199, %201
  %203 = tail call ptr @BLI_findlink(ptr noundef nonnull %200, i32 noundef %202) #12
  %204 = icmp eq ptr %203, null
  br i1 %204, label %307, label %205

205:                                              ; preds = %197
  %206 = load ptr, ptr %10, align 8, !tbaa !57
  %207 = getelementptr inbounds %struct.BoidParticle, ptr %206, i64 0, i32 1, i32 3
  %208 = load i16, ptr %207, align 2, !tbaa !78
  %209 = add i16 %208, -1
  %210 = icmp ult i16 %209, 2
  br i1 %210, label %211, label %216

211:                                              ; preds = %205
  %212 = getelementptr inbounds %struct.BoidRule, ptr %203, i64 0, i32 3
  %213 = load i32, ptr %212, align 4, !tbaa !99
  %214 = and i32 %213, 8
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %223

216:                                              ; preds = %211, %205
  %217 = icmp eq i16 %208, 0
  br i1 %217, label %218, label %307

218:                                              ; preds = %216
  %219 = getelementptr inbounds %struct.BoidRule, ptr %203, i64 0, i32 3
  %220 = load i32, ptr %219, align 4, !tbaa !99
  %221 = and i32 %220, 4
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %307, label %223

223:                                              ; preds = %218, %211
  %224 = getelementptr inbounds %struct.BoidRule, ptr %203, i64 0, i32 2
  %225 = load i32, ptr %224, align 8, !tbaa !48
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds [9 x ptr], ptr @boid_rules, i64 0, i64 %226
  %228 = load ptr, ptr %227, align 8, !tbaa !44
  %229 = call i32 %228(ptr noundef nonnull %203, ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef %2) #12
  br label %307

230:                                              ; preds = %126
  %231 = getelementptr inbounds %struct.BoidState, ptr %32, i64 0, i32 2
  %232 = load ptr, ptr %231, align 8, !tbaa !44
  %233 = icmp eq ptr %232, null
  br i1 %233, label %288, label %234

234:                                              ; preds = %230, %280
  %235 = phi ptr [ %286, %280 ], [ %232, %230 ]
  %236 = phi float [ %285, %280 ], [ 0.000000e+00, %230 ]
  %237 = phi i32 [ %284, %280 ], [ 0, %230 ]
  %238 = phi float [ %283, %280 ], [ 0.000000e+00, %230 ]
  %239 = phi float [ %282, %280 ], [ 0.000000e+00, %230 ]
  %240 = phi float [ %281, %280 ], [ 0.000000e+00, %230 ]
  %241 = load ptr, ptr %10, align 8, !tbaa !57
  %242 = getelementptr inbounds %struct.BoidParticle, ptr %241, i64 0, i32 1, i32 3
  %243 = load i16, ptr %242, align 2, !tbaa !78
  %244 = add i16 %243, -1
  %245 = icmp ult i16 %244, 2
  br i1 %245, label %246, label %251

246:                                              ; preds = %234
  %247 = getelementptr inbounds %struct.BoidRule, ptr %235, i64 0, i32 3
  %248 = load i32, ptr %247, align 4, !tbaa !99
  %249 = and i32 %248, 8
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %258

251:                                              ; preds = %246, %234
  %252 = icmp eq i16 %243, 0
  br i1 %252, label %253, label %267

253:                                              ; preds = %251
  %254 = getelementptr inbounds %struct.BoidRule, ptr %235, i64 0, i32 3
  %255 = load i32, ptr %254, align 4, !tbaa !99
  %256 = and i32 %255, 4
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %267, label %258

258:                                              ; preds = %253, %246
  %259 = getelementptr inbounds %struct.BoidRule, ptr %235, i64 0, i32 2
  %260 = load i32, ptr %259, align 8, !tbaa !48
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [9 x ptr], ptr @boid_rules, i64 0, i64 %261
  %263 = load ptr, ptr %262, align 8, !tbaa !44
  %264 = call i32 %263(ptr noundef nonnull %235, ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef %2) #12
  %265 = icmp ne i32 %264, 0
  %266 = zext i1 %265 to i32
  br label %267

267:                                              ; preds = %258, %251, %253
  %268 = phi i32 [ 0, %253 ], [ 0, %251 ], [ %266, %258 ]
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %280, label %270

270:                                              ; preds = %267
  %271 = load float, ptr %45, align 4, !tbaa !53
  %272 = fadd float %238, %271
  %273 = load float, ptr %46, align 4, !tbaa !53
  %274 = fadd float %239, %273
  %275 = load float, ptr %47, align 4, !tbaa !53
  %276 = fadd float %240, %275
  %277 = load float, ptr %48, align 8, !tbaa !101
  %278 = fadd float %236, %277
  %279 = add nsw i32 %237, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %45, i8 0, i64 16, i1 false)
  br label %280

280:                                              ; preds = %267, %270
  %281 = phi float [ %240, %267 ], [ %276, %270 ]
  %282 = phi float [ %239, %267 ], [ %274, %270 ]
  %283 = phi float [ %238, %267 ], [ %272, %270 ]
  %284 = phi i32 [ %237, %267 ], [ %279, %270 ]
  %285 = phi float [ %236, %267 ], [ %278, %270 ]
  %286 = load ptr, ptr %235, align 8, !tbaa !44
  %287 = icmp eq ptr %286, null
  br i1 %287, label %288, label %234, !llvm.loop !102

288:                                              ; preds = %280, %230
  %289 = phi float [ 0.000000e+00, %230 ], [ %281, %280 ]
  %290 = phi float [ 0.000000e+00, %230 ], [ %282, %280 ]
  %291 = phi float [ 0.000000e+00, %230 ], [ %283, %280 ]
  %292 = phi i32 [ 0, %230 ], [ %284, %280 ]
  %293 = phi float [ 0.000000e+00, %230 ], [ %285, %280 ]
  %294 = icmp sgt i32 %292, 1
  br i1 %294, label %295, label %302

295:                                              ; preds = %288
  %296 = sitofp i32 %292 to float
  %297 = fdiv float 1.000000e+00, %296
  %298 = fmul float %291, %297
  %299 = fmul float %290, %297
  %300 = fmul float %289, %297
  %301 = fdiv float %293, %296
  br label %302

302:                                              ; preds = %295, %288
  %303 = phi float [ %300, %295 ], [ %289, %288 ]
  %304 = phi float [ %299, %295 ], [ %290, %288 ]
  %305 = phi float [ %298, %295 ], [ %291, %288 ]
  %306 = phi float [ %301, %295 ], [ %293, %288 ]
  store float %305, ptr %45, align 4, !tbaa !53
  store float %304, ptr %46, align 4, !tbaa !53
  store float %303, ptr %47, align 4, !tbaa !53
  store float %306, ptr %48, align 8, !tbaa !101
  br label %307

307:                                              ; preds = %137, %194, %223, %218, %216, %197, %126, %302
  %308 = load i16, ptr %76, align 2, !tbaa !78
  %309 = icmp eq i16 %308, 1
  br i1 %309, label %310, label %486

310:                                              ; preds = %307
  %311 = getelementptr inbounds %struct.BoidState, ptr %32, i64 0, i32 9
  %312 = load float, ptr %311, align 4, !tbaa !98
  %313 = fadd float %312, 1.000000e+00
  %314 = load i32, ptr %8, align 8, !tbaa !103
  %315 = and i32 %314, 1
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %354, label %317

317:                                              ; preds = %310
  %318 = load float, ptr %47, align 4, !tbaa !53
  %319 = fcmp ogt float %318, 0.000000e+00
  br i1 %319, label %320, label %354

320:                                              ; preds = %317
  %321 = getelementptr inbounds %struct.ParticleData, ptr %2, i64 0, i32 1, i32 3
  %322 = load float, ptr %321, align 4, !tbaa !53
  %323 = getelementptr inbounds %struct.ParticleData, ptr %2, i64 0, i32 1, i32 3, i64 1
  %324 = load float, ptr %323, align 4, !tbaa !53
  %325 = fmul float %324, %324
  %326 = call float @llvm.fmuladd.f32(float %322, float %322, float %325)
  %327 = fcmp ogt float %326, 0x38AA95A5C0000000
  br i1 %327, label %328, label %333

328:                                              ; preds = %320
  %329 = call float @sqrtf(float noundef %326) #12
  %330 = fdiv float 1.000000e+00, %329
  %331 = fmul float %322, %330
  %332 = fmul float %324, %330
  br label %333

333:                                              ; preds = %320, %328
  %334 = phi float [ %331, %328 ], [ 0.000000e+00, %320 ]
  %335 = phi float [ %332, %328 ], [ 0.000000e+00, %320 ]
  %336 = load float, ptr %45, align 4, !tbaa !53
  %337 = load float, ptr %46, align 4, !tbaa !53
  %338 = fmul float %337, %337
  %339 = call float @llvm.fmuladd.f32(float %336, float %336, float %338)
  %340 = fcmp ogt float %339, 0x38AA95A5C0000000
  br i1 %340, label %341, label %346

341:                                              ; preds = %333
  %342 = call float @sqrtf(float noundef %339) #12
  %343 = fdiv float 1.000000e+00, %342
  %344 = fmul float %336, %343
  %345 = fmul float %337, %343
  br label %346

346:                                              ; preds = %333, %341
  %347 = phi float [ %344, %341 ], [ 0.000000e+00, %333 ]
  %348 = phi float [ %345, %341 ], [ 0.000000e+00, %333 ]
  %349 = fmul float %335, %348
  %350 = call float @llvm.fmuladd.f32(float %347, float %334, float %349)
  %351 = fdiv float 0x3FEE666660000000, %313
  %352 = fcmp ogt float %350, %351
  br i1 %352, label %353, label %486

353:                                              ; preds = %346
  store i16 4, ptr %76, align 2, !tbaa !78
  br label %486

354:                                              ; preds = %317, %310
  %355 = getelementptr inbounds %struct.BoidValues, ptr %4, i64 0, i32 5
  %356 = load float, ptr %355, align 4, !tbaa !96
  %357 = fcmp ogt float %356, 0.000000e+00
  br i1 %357, label %358, label %486

358:                                              ; preds = %354
  %359 = load float, ptr %47, align 4, !tbaa !53
  %360 = fcmp ogt float %359, 0.000000e+00
  br i1 %360, label %361, label %486

361:                                              ; preds = %358
  %362 = getelementptr inbounds %struct.ParticleData, ptr %2, i64 0, i32 1, i32 3
  %363 = load float, ptr %362, align 4, !tbaa !53
  %364 = getelementptr inbounds %struct.ParticleData, ptr %2, i64 0, i32 1, i32 3, i64 1
  %365 = load float, ptr %364, align 4, !tbaa !53
  %366 = fmul float %365, %365
  %367 = call float @llvm.fmuladd.f32(float %363, float %363, float %366)
  %368 = fcmp ogt float %367, 0x38AA95A5C0000000
  br i1 %368, label %369, label %374

369:                                              ; preds = %361
  %370 = call float @sqrtf(float noundef %367) #12
  %371 = fdiv float 1.000000e+00, %370
  %372 = fmul float %363, %371
  %373 = fmul float %365, %371
  br label %374

374:                                              ; preds = %361, %369
  %375 = phi float [ %372, %369 ], [ 0.000000e+00, %361 ]
  %376 = phi float [ %373, %369 ], [ 0.000000e+00, %361 ]
  %377 = load float, ptr %45, align 4, !tbaa !53
  %378 = load float, ptr %46, align 4, !tbaa !53
  %379 = fmul float %378, %378
  %380 = call float @llvm.fmuladd.f32(float %377, float %377, float %379)
  %381 = fcmp ogt float %380, 0x38AA95A5C0000000
  br i1 %381, label %382, label %387

382:                                              ; preds = %374
  %383 = call float @sqrtf(float noundef %380) #12
  %384 = fdiv float 1.000000e+00, %383
  %385 = fmul float %377, %384
  %386 = fmul float %378, %384
  br label %387

387:                                              ; preds = %374, %382
  %388 = phi float [ %385, %382 ], [ 0.000000e+00, %374 ]
  %389 = phi float [ %386, %382 ], [ 0.000000e+00, %374 ]
  %390 = getelementptr inbounds %struct.ParticleData, ptr %2, i64 0, i32 1, i32 1
  %391 = load float, ptr %390, align 4, !tbaa !53
  %392 = getelementptr inbounds %struct.ParticleData, ptr %2, i64 0, i32 1, i32 1, i64 1
  %393 = load float, ptr %392, align 4, !tbaa !53
  %394 = fmul float %393, %393
  %395 = call float @llvm.fmuladd.f32(float %391, float %391, float %394)
  %396 = call float @sqrtf(float noundef %395) #12
  %397 = fmul float %376, %389
  %398 = call float @llvm.fmuladd.f32(float %388, float %375, float %397)
  %399 = fdiv float 0x3FEE666660000000, %313
  %400 = fcmp ogt float %398, %399
  br i1 %400, label %404, label %401

401:                                              ; preds = %387
  %402 = load float, ptr %311, align 4, !tbaa !98
  %403 = fcmp ugt float %396, %402
  br i1 %403, label %486, label %404

404:                                              ; preds = %401, %387
  %405 = load float, ptr %390, align 4, !tbaa !53
  %406 = load float, ptr %392, align 4, !tbaa !53
  %407 = fmul float %406, %406
  %408 = call float @llvm.fmuladd.f32(float %405, float %405, float %407)
  %409 = call float @sqrtf(float noundef %408) #12
  %410 = load ptr, ptr %0, align 8, !tbaa !72
  %411 = load ptr, ptr %410, align 8, !tbaa !104
  %412 = getelementptr inbounds %struct.Scene, ptr %411, i64 0, i32 40, i32 0, i64 2
  %413 = load float, ptr %412, align 8, !tbaa !53
  %414 = fmul float %413, -2.000000e+00
  %415 = load float, ptr %47, align 4, !tbaa !53
  %416 = fmul float %414, %415
  %417 = fcmp ugt float %416, 0.000000e+00
  br i1 %417, label %418, label %420

418:                                              ; preds = %404
  %419 = call float @sqrtf(float noundef %416) #12
  br label %420

420:                                              ; preds = %404, %418
  %421 = phi float [ %419, %418 ], [ 0.000000e+00, %404 ]
  %422 = load float, ptr %45, align 4, !tbaa !53
  %423 = load float, ptr %46, align 4, !tbaa !53
  %424 = fmul float %423, %423
  %425 = call float @llvm.fmuladd.f32(float %422, float %422, float %424)
  %426 = call float @sqrtf(float noundef %425) #12
  %427 = load ptr, ptr %0, align 8, !tbaa !72
  %428 = load ptr, ptr %427, align 8, !tbaa !104
  %429 = getelementptr inbounds %struct.Scene, ptr %428, i64 0, i32 40, i32 0, i64 2
  %430 = load float, ptr %429, align 8, !tbaa !53
  %431 = fmul float %430, -5.000000e-01
  %432 = load float, ptr %47, align 4, !tbaa !53
  %433 = fdiv float %431, %432
  %434 = fcmp ugt float %433, 0.000000e+00
  br i1 %434, label %435, label %437

435:                                              ; preds = %420
  %436 = call float @sqrtf(float noundef %433) #12
  br label %437

437:                                              ; preds = %420, %435
  %438 = phi float [ %436, %435 ], [ 0.000000e+00, %420 ]
  %439 = fmul float %426, %438
  %440 = fsub float %439, %409
  %441 = fmul float %421, %421
  %442 = call float @llvm.fmuladd.f32(float %440, float %440, float %441)
  %443 = fcmp ugt float %442, 0.000000e+00
  br i1 %443, label %444, label %446

444:                                              ; preds = %437
  %445 = call float @sqrtf(float noundef %442) #12
  br label %446

446:                                              ; preds = %437, %444
  %447 = phi float [ %445, %444 ], [ 0.000000e+00, %437 ]
  %448 = load float, ptr %355, align 4
  %449 = fmul float %313, %448
  %450 = fcmp olt float %447, %449
  br i1 %450, label %458, label %451

451:                                              ; preds = %446
  %452 = load ptr, ptr %5, align 8, !tbaa !55
  %453 = getelementptr inbounds %struct.ParticleSettings, ptr %452, i64 0, i32 2
  %454 = load ptr, ptr %453, align 8, !tbaa !34
  %455 = load i32, ptr %454, align 8, !tbaa !103
  %456 = and i32 %455, 1
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %486, label %458

458:                                              ; preds = %451, %446
  %459 = fcmp olt float %447, %448
  %460 = select i1 %459, float %447, float %448
  %461 = fmul float %375, %439
  %462 = fmul float %376, %439
  %463 = fmul float %421, %439
  %464 = fmul float %462, %462
  %465 = call float @llvm.fmuladd.f32(float %461, float %461, float %464)
  %466 = call float @llvm.fmuladd.f32(float %463, float %463, float %465)
  %467 = fcmp ogt float %466, 0x38AA95A5C0000000
  br i1 %467, label %468, label %474

468:                                              ; preds = %458
  %469 = call float @sqrtf(float noundef %466) #12
  %470 = fdiv float 1.000000e+00, %469
  %471 = fmul float %461, %470
  %472 = fmul float %462, %470
  %473 = fmul float %463, %470
  br label %474

474:                                              ; preds = %458, %468
  %475 = phi float [ %472, %468 ], [ 0.000000e+00, %458 ]
  %476 = phi float [ %471, %468 ], [ 0.000000e+00, %458 ]
  %477 = phi float [ %473, %468 ], [ 0.000000e+00, %458 ]
  %478 = fmul float %460, %476
  %479 = fmul float %460, %475
  %480 = fmul float %460, %477
  %481 = load float, ptr %390, align 4, !tbaa !53
  %482 = fadd float %478, %481
  %483 = load float, ptr %392, align 4, !tbaa !53
  %484 = fadd float %479, %483
  store float %482, ptr %390, align 4, !tbaa !53
  store float %484, ptr %392, align 4, !tbaa !53
  %485 = getelementptr inbounds %struct.ParticleData, ptr %2, i64 0, i32 1, i32 1, i64 2
  store float %480, ptr %485, align 4, !tbaa !53
  store i16 3, ptr %76, align 2, !tbaa !78
  br label %486

486:                                              ; preds = %474, %358, %451, %401, %346, %353, %307, %354, %36
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #12
  ret void
}

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: nounwind uwtable
define dso_local void @boid_body(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = alloca %struct.EffectedPoint, align 8
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [4 x float], align 16
  %9 = alloca [3 x [3 x float]], align 16
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !55
  %16 = getelementptr inbounds %struct.ParticleSettings, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %10, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %11, ptr noundef nonnull align 4 dereferenceable(12) @__const.boid_body.ground_nor, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %12, i8 0, i64 12, i1 false)
  %20 = getelementptr inbounds %struct.ParticleSettings, ptr %15, i64 0, i32 81
  %21 = load float, ptr %20, align 4, !tbaa !105
  %22 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 4
  %23 = load float, ptr %22, align 8, !tbaa !106
  %24 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 2
  %25 = load float, ptr %24, align 8, !tbaa !107
  %26 = fmul float %23, %25
  %27 = getelementptr inbounds %struct.BoidParticle, ptr %19, i64 0, i32 1
  %28 = getelementptr inbounds %struct.BoidParticle, ptr %19, i64 0, i32 1, i32 3
  %29 = load i16, ptr %28, align 2, !tbaa !78
  %30 = add i16 %29, -1
  %31 = icmp ult i16 %30, 2
  %32 = load float, ptr %27, align 8, !tbaa !68
  %33 = getelementptr inbounds %struct.BoidSettings, ptr %17, i64 0, i32 6
  %34 = load float, ptr %33, align 8, !tbaa !79
  br i1 %31, label %35, label %44

35:                                               ; preds = %2
  %36 = getelementptr inbounds %struct.BoidSettings, ptr %17, i64 0, i32 17
  %37 = load float, ptr %36, align 4, !tbaa !80
  %38 = fmul float %37, %32
  %39 = fdiv float %38, %34
  %40 = getelementptr inbounds %struct.BoidSettings, ptr %17, i64 0, i32 18
  %41 = load float, ptr %40, align 8, !tbaa !83
  %42 = fmul float %39, %41
  %43 = getelementptr inbounds %struct.BoidSettings, ptr %17, i64 0, i32 19
  br label %56

44:                                               ; preds = %2
  %45 = getelementptr inbounds %struct.BoidSettings, ptr %17, i64 0, i32 12
  %46 = load float, ptr %45, align 8, !tbaa !91
  %47 = fmul float %46, %32
  %48 = fdiv float %47, %34
  %49 = getelementptr inbounds %struct.BoidSettings, ptr %17, i64 0, i32 13
  %50 = load float, ptr %49, align 4, !tbaa !92
  %51 = fmul float %48, %50
  %52 = getelementptr inbounds %struct.BoidSettings, ptr %17, i64 0, i32 14
  %53 = getelementptr inbounds %struct.BoidSettings, ptr %17, i64 0, i32 11
  %54 = load float, ptr %53, align 4, !tbaa !94
  %55 = fmul float %46, %54
  br label %56

56:                                               ; preds = %35, %44
  %57 = phi float [ 0.000000e+00, %35 ], [ %55, %44 ]
  %58 = phi ptr [ %43, %35 ], [ %52, %44 ]
  %59 = phi float [ %42, %35 ], [ %51, %44 ]
  %60 = phi float [ %39, %35 ], [ %48, %44 ]
  %61 = load float, ptr %58, align 4, !tbaa !53
  %62 = fmul float %61, 0x400921FB60000000
  %63 = fmul float %32, %62
  %64 = fdiv float %63, %34
  %65 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 1
  tail call void @copy_particle_key(ptr noundef %1, ptr noundef nonnull %65, i32 noundef 0) #12
  %66 = load ptr, ptr %14, align 8, !tbaa !55
  %67 = getelementptr inbounds %struct.ParticleSettings, ptr %66, i64 0, i32 5
  %68 = load i32, ptr %67, align 8, !tbaa !108
  %69 = and i32 %68, 65536
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %56
  %72 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 13
  %73 = load float, ptr %72, align 4, !tbaa !109
  %74 = fmul float %21, %73
  br label %75

75:                                               ; preds = %71, %56
  %76 = phi float [ %74, %71 ], [ %21, %56 ]
  %77 = load i32, ptr %17, align 8, !tbaa !103
  %78 = and i32 %77, 1
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %75
  %81 = load i16, ptr %28, align 2, !tbaa !78
  %82 = add i16 %81, -1
  %83 = icmp ult i16 %82, 2
  br i1 %83, label %89, label %84

84:                                               ; preds = %80
  %85 = load ptr, ptr %0, align 8, !tbaa !72
  %86 = tail call i32 @psys_uses_gravity(ptr noundef %85) #12
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %84
  store i16 3, ptr %28, align 2, !tbaa !78
  br label %89

89:                                               ; preds = %80, %88, %84, %75
  %90 = load i16, ptr %28, align 2, !tbaa !78
  switch i16 %90, label %138 [
    i16 3, label %91
    i16 4, label %97
    i16 0, label %99
  ]

91:                                               ; preds = %89
  %92 = load ptr, ptr %0, align 8, !tbaa !72
  %93 = load ptr, ptr %92, align 8, !tbaa !104
  %94 = getelementptr inbounds %struct.Scene, ptr %93, i64 0, i32 40, i32 0, i64 2
  %95 = load float, ptr %94, align 8, !tbaa !53
  %96 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float %95, ptr %96, align 4, !tbaa !53
  br label %393

97:                                               ; preds = %89
  store i16 0, ptr %28, align 2, !tbaa !78
  %98 = call fastcc ptr @boid_find_ground(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %10, ptr noundef nonnull %11)
  store ptr %98, ptr %19, align 8, !tbaa !110
  br label %138

99:                                               ; preds = %89
  %100 = load i32, ptr %17, align 8, !tbaa !103
  %101 = and i32 %100, 2
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %138, label %103

103:                                              ; preds = %99
  %104 = call fastcc ptr @boid_find_ground(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %10, ptr noundef nonnull %11)
  store ptr %104, ptr %19, align 8, !tbaa !110
  %105 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 1, i32 0, i64 2
  %106 = load float, ptr %105, align 8, !tbaa !53
  %107 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %108 = load float, ptr %107, align 4, !tbaa !53
  %109 = fsub float %106, %108
  %110 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 13
  %111 = load float, ptr %110, align 4, !tbaa !109
  %112 = fmul float %111, 2.000000e+00
  %113 = fdiv float %109, %112
  %114 = fadd float %113, -5.000000e-01
  %115 = getelementptr inbounds %struct.BoidSettings, ptr %17, i64 0, i32 2
  %116 = load float, ptr %115, align 8, !tbaa !111
  %117 = fneg float %116
  %118 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 1, i32 1, i64 2
  %119 = load float, ptr %118, align 4, !tbaa !53
  %120 = fmul float %119, %117
  %121 = fmul float %76, %120
  %122 = fcmp olt float %119, 0.000000e+00
  br i1 %122, label %123, label %138

123:                                              ; preds = %103
  %124 = fcmp olt float %114, 1.000000e+00
  br i1 %124, label %125, label %127

125:                                              ; preds = %123
  %126 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %126, i8 0, i64 16, i1 false)
  store i16 3, ptr %28, align 2, !tbaa !78
  br label %138

127:                                              ; preds = %123
  %128 = fcmp olt float %114, %121
  br i1 %128, label %129, label %138

129:                                              ; preds = %127
  %130 = fadd float %114, -1.000000e+00
  %131 = fdiv float %130, %121
  %132 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 6
  %133 = load float, ptr %132, align 8, !tbaa !101
  %134 = fmul float %131, %133
  store float %134, ptr %132, align 8, !tbaa !101
  %135 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 5, i64 2
  %136 = load float, ptr %135, align 4, !tbaa !53
  %137 = fmul float %131, %136
  store float %137, ptr %135, align 4, !tbaa !53
  br label %138

138:                                              ; preds = %89, %99, %125, %129, %127, %103, %97
  %139 = phi float [ 3.000000e+00, %97 ], [ %114, %125 ], [ %114, %129 ], [ %114, %127 ], [ %114, %103 ], [ 3.000000e+00, %99 ], [ 3.000000e+00, %89 ]
  %140 = phi float [ 2.000000e+00, %97 ], [ %121, %125 ], [ %121, %129 ], [ %121, %127 ], [ %121, %103 ], [ 2.000000e+00, %99 ], [ 2.000000e+00, %89 ]
  %141 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 1, i32 3
  %142 = load float, ptr %141, align 4, !tbaa !53
  %143 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 1, i32 3, i64 1
  %144 = load float, ptr %143, align 4, !tbaa !53
  %145 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 1, i32 3, i64 2
  %146 = load float, ptr %145, align 4, !tbaa !53
  %147 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 5
  %148 = load float, ptr %147, align 4, !tbaa !53
  %149 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 5, i64 1
  %150 = load float, ptr %149, align 4, !tbaa !53
  %151 = fmul float %150, %150
  %152 = call float @llvm.fmuladd.f32(float %148, float %148, float %151)
  %153 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 5, i64 2
  %154 = load float, ptr %153, align 4, !tbaa !53
  %155 = call float @llvm.fmuladd.f32(float %154, float %154, float %152)
  %156 = fcmp ogt float %155, 0x38AA95A5C0000000
  br i1 %156, label %157, label %166

157:                                              ; preds = %138
  %158 = call float @sqrtf(float noundef %155) #12
  %159 = fdiv float 1.000000e+00, %158
  %160 = load float, ptr %147, align 4, !tbaa !53
  %161 = fmul float %160, %159
  %162 = load float, ptr %149, align 4, !tbaa !53
  %163 = fmul float %159, %162
  %164 = load float, ptr %153, align 4, !tbaa !53
  %165 = fmul float %159, %164
  br label %166

166:                                              ; preds = %138, %157
  %167 = phi float [ %161, %157 ], [ 0.000000e+00, %138 ]
  %168 = phi float [ %163, %157 ], [ 0.000000e+00, %138 ]
  %169 = phi float [ %165, %157 ], [ 0.000000e+00, %138 ]
  %170 = phi float [ %158, %157 ], [ 0.000000e+00, %138 ]
  %171 = fcmp oeq float %170, 0.000000e+00
  br i1 %171, label %172, label %175

172:                                              ; preds = %166
  store float %142, ptr %7, align 4, !tbaa !53
  %173 = getelementptr inbounds float, ptr %7, i64 1
  store float %144, ptr %173, align 4, !tbaa !53
  %174 = getelementptr inbounds float, ptr %7, i64 2
  store float %146, ptr %174, align 4, !tbaa !53
  br label %296

175:                                              ; preds = %166
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #12
  %176 = fmul float %144, %144
  %177 = call float @llvm.fmuladd.f32(float %142, float %142, float %176)
  %178 = fcmp ogt float %177, 0x38AA95A5C0000000
  br i1 %178, label %179, label %184

179:                                              ; preds = %175
  %180 = call float @sqrtf(float noundef %177) #12
  %181 = fdiv float 1.000000e+00, %180
  %182 = fmul float %142, %181
  %183 = fmul float %144, %181
  br label %184

184:                                              ; preds = %175, %179
  %185 = phi float [ %182, %179 ], [ 0.000000e+00, %175 ]
  %186 = phi float [ %183, %179 ], [ 0.000000e+00, %175 ]
  %187 = fmul float %168, %168
  %188 = call float @llvm.fmuladd.f32(float %167, float %167, float %187)
  %189 = fcmp ogt float %188, 0x38AA95A5C0000000
  br i1 %189, label %190, label %195

190:                                              ; preds = %184
  %191 = call float @sqrtf(float noundef %188) #12
  %192 = fdiv float 1.000000e+00, %191
  %193 = fmul float %167, %192
  %194 = fmul float %168, %192
  br label %195

195:                                              ; preds = %184, %190
  %196 = phi float [ %193, %190 ], [ 0.000000e+00, %184 ]
  %197 = phi float [ %194, %190 ], [ 0.000000e+00, %184 ]
  %198 = fmul float %186, %197
  %199 = call float @llvm.fmuladd.f32(float %185, float %196, float %198)
  %200 = fcmp olt float %199, 0xBFEFAE1480000000
  br i1 %200, label %201, label %225

201:                                              ; preds = %195
  %202 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 11
  %203 = load ptr, ptr %202, align 8, !tbaa !112
  %204 = call float @BLI_rng_get_float(ptr noundef %203) #12
  %205 = fsub float 5.000000e-01, %204
  %206 = fmul float %205, 2.000000e+00
  %207 = load ptr, ptr %202, align 8, !tbaa !112
  %208 = call float @BLI_rng_get_float(ptr noundef %207) #12
  %209 = fsub float 5.000000e-01, %208
  %210 = fmul float %209, 2.000000e+00
  %211 = load ptr, ptr %202, align 8, !tbaa !112
  %212 = call float @BLI_rng_get_float(ptr noundef %211) #12
  %213 = fsub float 5.000000e-01, %212
  %214 = fmul float %213, 2.000000e+00
  %215 = fmul float %210, %210
  %216 = call float @llvm.fmuladd.f32(float %206, float %206, float %215)
  %217 = call float @llvm.fmuladd.f32(float %214, float %214, float %216)
  %218 = fcmp ogt float %217, 0x38AA95A5C0000000
  br i1 %218, label %219, label %225

219:                                              ; preds = %201
  %220 = call float @sqrtf(float noundef %217) #12
  %221 = fdiv float 1.000000e+00, %220
  %222 = fmul float %206, %221
  %223 = fmul float %210, %221
  %224 = fmul float %214, %221
  br label %225

225:                                              ; preds = %219, %201, %195
  %226 = phi float [ %167, %195 ], [ %222, %219 ], [ 0.000000e+00, %201 ]
  %227 = phi float [ %168, %195 ], [ %223, %219 ], [ 0.000000e+00, %201 ]
  %228 = phi float [ %169, %195 ], [ %224, %219 ], [ 0.000000e+00, %201 ]
  %229 = fmul float %144, %227
  %230 = call float @llvm.fmuladd.f32(float %142, float %226, float %229)
  %231 = call float @llvm.fmuladd.f32(float %146, float %228, float %230)
  %232 = fcmp ugt float %231, -1.000000e+00
  br i1 %232, label %233, label %237

233:                                              ; preds = %225
  %234 = fcmp ult float %231, 1.000000e+00
  br i1 %234, label %235, label %237

235:                                              ; preds = %233
  %236 = call float @acosf(float noundef %231) #12
  br label %237

237:                                              ; preds = %225, %233, %235
  %238 = phi float [ %236, %235 ], [ 0x400921FB60000000, %225 ], [ 0.000000e+00, %233 ]
  %239 = fcmp olt float %238, %64
  %240 = select i1 %239, float %238, float %64
  %241 = fneg float %146
  %242 = fmul float %227, %241
  %243 = call float @llvm.fmuladd.f32(float %144, float %228, float %242)
  store float %243, ptr %13, align 4, !tbaa !53
  %244 = fneg float %142
  %245 = fmul float %228, %244
  %246 = call float @llvm.fmuladd.f32(float %146, float %226, float %245)
  %247 = getelementptr inbounds float, ptr %13, i64 1
  store float %246, ptr %247, align 4, !tbaa !53
  %248 = fneg float %144
  %249 = fmul float %226, %248
  %250 = call float @llvm.fmuladd.f32(float %142, float %227, float %249)
  %251 = getelementptr inbounds float, ptr %13, i64 2
  store float %250, ptr %251, align 4, !tbaa !53
  call void @axis_angle_to_quat(ptr noundef nonnull %8, ptr noundef nonnull %13, float noundef %240) #12
  store float %142, ptr %7, align 4, !tbaa !53
  %252 = getelementptr inbounds float, ptr %7, i64 1
  store float %144, ptr %252, align 4, !tbaa !53
  %253 = getelementptr inbounds float, ptr %7, i64 2
  store float %146, ptr %253, align 4, !tbaa !53
  call void @mul_qt_v3(ptr noundef nonnull %8, ptr noundef nonnull %7) #12
  %254 = load float, ptr %7, align 4, !tbaa !53
  %255 = load float, ptr %252, align 4, !tbaa !53
  %256 = fmul float %255, %255
  %257 = call float @llvm.fmuladd.f32(float %254, float %254, float %256)
  %258 = load float, ptr %253, align 4, !tbaa !53
  %259 = call float @llvm.fmuladd.f32(float %258, float %258, float %257)
  %260 = fcmp ogt float %259, 0x38AA95A5C0000000
  br i1 %260, label %261, label %270

261:                                              ; preds = %237
  %262 = call float @sqrtf(float noundef %259) #12
  %263 = fdiv float 1.000000e+00, %262
  %264 = load float, ptr %7, align 4, !tbaa !53
  %265 = fmul float %264, %263
  store float %265, ptr %7, align 4, !tbaa !53
  %266 = load float, ptr %252, align 4, !tbaa !53
  %267 = fmul float %263, %266
  store float %267, ptr %252, align 4, !tbaa !53
  %268 = load float, ptr %253, align 4, !tbaa !53
  %269 = fmul float %263, %268
  br label %271

270:                                              ; preds = %237
  store float 0.000000e+00, ptr %7, align 4, !tbaa !53
  store float 0.000000e+00, ptr %252, align 4, !tbaa !53
  br label %271

271:                                              ; preds = %261, %270
  %272 = phi float [ 0.000000e+00, %270 ], [ %269, %261 ]
  store float %272, ptr %253, align 4, !tbaa !53
  %273 = fmul float %26, %240
  call void @axis_angle_to_quat(ptr noundef nonnull %8, ptr noundef nonnull %13, float noundef %273) #12
  %274 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 3
  store float %142, ptr %274, align 4, !tbaa !53
  %275 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 3, i64 1
  store float %144, ptr %275, align 4, !tbaa !53
  %276 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 3, i64 2
  store float %146, ptr %276, align 4, !tbaa !53
  call void @mul_qt_v3(ptr noundef nonnull %8, ptr noundef nonnull %274) #12
  %277 = load float, ptr %274, align 4, !tbaa !53
  %278 = load float, ptr %275, align 4, !tbaa !53
  %279 = fmul float %278, %278
  %280 = call float @llvm.fmuladd.f32(float %277, float %277, float %279)
  %281 = load float, ptr %276, align 4, !tbaa !53
  %282 = call float @llvm.fmuladd.f32(float %281, float %281, float %280)
  %283 = fcmp ogt float %282, 0x38AA95A5C0000000
  br i1 %283, label %284, label %293

284:                                              ; preds = %271
  %285 = call float @sqrtf(float noundef %282) #12
  %286 = fdiv float 1.000000e+00, %285
  %287 = load float, ptr %274, align 4, !tbaa !53
  %288 = fmul float %287, %286
  store float %288, ptr %274, align 4, !tbaa !53
  %289 = load float, ptr %275, align 4, !tbaa !53
  %290 = fmul float %286, %289
  store float %290, ptr %275, align 4, !tbaa !53
  %291 = load float, ptr %276, align 4, !tbaa !53
  %292 = fmul float %286, %291
  br label %294

293:                                              ; preds = %271
  store float 0.000000e+00, ptr %274, align 4, !tbaa !53
  store float 0.000000e+00, ptr %275, align 4, !tbaa !53
  br label %294

294:                                              ; preds = %284, %293
  %295 = phi float [ 0.000000e+00, %293 ], [ %292, %284 ]
  store float %295, ptr %276, align 4, !tbaa !53
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #12
  br label %296

296:                                              ; preds = %294, %172
  %297 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 1, i32 1
  %298 = load float, ptr %297, align 4, !tbaa !53
  %299 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 1, i32 1, i64 1
  %300 = load float, ptr %299, align 4, !tbaa !53
  %301 = fmul float %300, %300
  %302 = call float @llvm.fmuladd.f32(float %298, float %298, float %301)
  %303 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 1, i32 1, i64 2
  %304 = load float, ptr %303, align 4, !tbaa !53
  %305 = call float @llvm.fmuladd.f32(float %304, float %304, float %302)
  %306 = call float @sqrtf(float noundef %305) #12
  %307 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 6
  %308 = load float, ptr %307, align 8, !tbaa !101
  %309 = fcmp olt float %308, %306
  br i1 %309, label %310, label %314

310:                                              ; preds = %296
  %311 = fsub float %306, %59
  %312 = fcmp ogt float %308, %311
  %313 = select i1 %312, float %308, float %311
  br label %318

314:                                              ; preds = %296
  %315 = fadd float %59, %306
  %316 = fcmp olt float %308, %315
  %317 = select i1 %316, float %308, float %315
  br label %318

318:                                              ; preds = %314, %310
  %319 = phi float [ %313, %310 ], [ %317, %314 ]
  %320 = load float, ptr %7, align 4, !tbaa !53
  %321 = getelementptr inbounds float, ptr %7, i64 1
  %322 = load float, ptr %321, align 4, !tbaa !53
  %323 = getelementptr inbounds float, ptr %7, i64 2
  %324 = load float, ptr %323, align 4, !tbaa !53
  %325 = fmul float %319, %320
  %326 = fmul float %319, %322
  %327 = fmul float %319, %324
  %328 = fcmp ult float %139, %140
  br i1 %328, label %361, label %329

329:                                              ; preds = %318
  %330 = fmul float %326, %326
  %331 = call float @llvm.fmuladd.f32(float %325, float %325, float %330)
  %332 = fmul float %57, %57
  %333 = fcmp ogt float %331, %332
  %334 = select i1 %333, float %331, float %332
  %335 = fneg float %334
  %336 = call float @llvm.fmuladd.f32(float %319, float %319, float %335)
  %337 = fcmp ugt float %336, 0.000000e+00
  br i1 %337, label %338, label %340

338:                                              ; preds = %329
  %339 = call float @sqrtf(float noundef %336) #12
  br label %340

340:                                              ; preds = %329, %338
  %341 = phi float [ %339, %338 ], [ 0.000000e+00, %329 ]
  %342 = fcmp olt float %327, 0.000000e+00
  %343 = fneg float %341
  %344 = select i1 %342, float %343, float %341
  %345 = fcmp ogt float %331, 0x38AA95A5C0000000
  br i1 %345, label %346, label %351

346:                                              ; preds = %340
  %347 = call float @sqrtf(float noundef %331) #12
  %348 = fdiv float 1.000000e+00, %347
  %349 = fmul float %325, %348
  %350 = fmul float %326, %348
  br label %351

351:                                              ; preds = %340, %346
  %352 = phi float [ %349, %346 ], [ 0.000000e+00, %340 ]
  %353 = phi float [ %350, %346 ], [ 0.000000e+00, %340 ]
  %354 = fcmp ugt float %334, 0.000000e+00
  br i1 %354, label %355, label %357

355:                                              ; preds = %351
  %356 = call float @sqrtf(float noundef %334) #12
  br label %357

357:                                              ; preds = %351, %355
  %358 = phi float [ %356, %355 ], [ 0.000000e+00, %351 ]
  %359 = fmul float %352, %358
  %360 = fmul float %353, %358
  br label %361

361:                                              ; preds = %357, %318
  %362 = phi float [ %325, %318 ], [ %359, %357 ]
  %363 = phi float [ %326, %318 ], [ %360, %357 ]
  %364 = phi float [ %327, %318 ], [ %344, %357 ]
  %365 = fmul float %363, %363
  %366 = call float @llvm.fmuladd.f32(float %362, float %362, float %365)
  %367 = call float @llvm.fmuladd.f32(float %364, float %364, float %366)
  %368 = fcmp ogt float %367, 0x38AA95A5C0000000
  br i1 %368, label %369, label %375

369:                                              ; preds = %361
  %370 = call float @sqrtf(float noundef %367) #12
  %371 = fdiv float 1.000000e+00, %370
  %372 = fmul float %362, %371
  %373 = fmul float %363, %371
  %374 = fmul float %364, %371
  br label %375

375:                                              ; preds = %361, %369
  %376 = phi float [ %372, %369 ], [ 0.000000e+00, %361 ]
  %377 = phi float [ %373, %369 ], [ 0.000000e+00, %361 ]
  %378 = phi float [ %374, %369 ], [ 0.000000e+00, %361 ]
  %379 = phi float [ %370, %369 ], [ 0.000000e+00, %361 ]
  %380 = fcmp olt float %379, %60
  %381 = select i1 %380, float %379, float %60
  %382 = fmul float %376, %381
  %383 = fmul float %377, %381
  %384 = fmul float %378, %381
  %385 = load float, ptr %297, align 4, !tbaa !53
  %386 = fsub float %382, %385
  store float %386, ptr %4, align 4, !tbaa !53
  %387 = load float, ptr %299, align 4, !tbaa !53
  %388 = fsub float %383, %387
  %389 = getelementptr inbounds float, ptr %4, i64 1
  store float %388, ptr %389, align 4, !tbaa !53
  %390 = load float, ptr %303, align 4, !tbaa !53
  %391 = fsub float %384, %390
  %392 = getelementptr inbounds float, ptr %4, i64 2
  store float %391, ptr %392, align 4, !tbaa !53
  call void @project_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %141) #12
  br label %393

393:                                              ; preds = %375, %91
  %394 = load ptr, ptr %0, align 8, !tbaa !72
  call void @pd_point_from_particle(ptr noundef %394, ptr noundef %1, ptr noundef %1, ptr noundef nonnull %3) #12
  %395 = load ptr, ptr %0, align 8, !tbaa !72
  %396 = getelementptr inbounds %struct.ParticleSimulationData, ptr %395, i64 0, i32 2
  %397 = load ptr, ptr %396, align 8, !tbaa !73
  %398 = getelementptr inbounds %struct.ParticleSystem, ptr %397, i64 0, i32 42
  %399 = load ptr, ptr %398, align 8, !tbaa !113
  %400 = getelementptr inbounds %struct.ParticleSimulationData, ptr %395, i64 0, i32 4
  %401 = load ptr, ptr %400, align 8, !tbaa !114
  %402 = load ptr, ptr %14, align 8, !tbaa !55
  %403 = getelementptr inbounds %struct.ParticleSettings, ptr %402, i64 0, i32 4
  %404 = load ptr, ptr %403, align 8, !tbaa !115
  call void @pdDoEffectors(ptr noundef %399, ptr noundef %401, ptr noundef %404, ptr noundef nonnull %3, ptr noundef nonnull %12, ptr noundef null) #12
  %405 = load i16, ptr %28, align 2, !tbaa !78
  %406 = add i16 %405, -1
  %407 = icmp ult i16 %406, 2
  br i1 %407, label %408, label %441

408:                                              ; preds = %393
  %409 = load float, ptr %12, align 4, !tbaa !53
  %410 = getelementptr inbounds float, ptr %12, i64 1
  %411 = load float, ptr %410, align 4, !tbaa !53
  %412 = fmul float %411, %411
  %413 = call float @llvm.fmuladd.f32(float %409, float %409, float %412)
  %414 = getelementptr inbounds float, ptr %12, i64 2
  %415 = load float, ptr %414, align 4, !tbaa !53
  %416 = call float @llvm.fmuladd.f32(float %415, float %415, float %413)
  %417 = fcmp ogt float %416, 0x38AA95A5C0000000
  br i1 %417, label %418, label %427

418:                                              ; preds = %408
  %419 = call float @sqrtf(float noundef %416) #12
  %420 = fdiv float 1.000000e+00, %419
  %421 = load float, ptr %12, align 4, !tbaa !53
  %422 = fmul float %421, %420
  store float %422, ptr %12, align 4, !tbaa !53
  %423 = load float, ptr %410, align 4, !tbaa !53
  %424 = fmul float %420, %423
  store float %424, ptr %410, align 4, !tbaa !53
  %425 = load float, ptr %414, align 4, !tbaa !53
  %426 = fmul float %420, %425
  br label %428

427:                                              ; preds = %408
  store float 0.000000e+00, ptr %12, align 4, !tbaa !53
  store float 0.000000e+00, ptr %410, align 4, !tbaa !53
  br label %428

428:                                              ; preds = %418, %427
  %429 = phi float [ 0.000000e+00, %427 ], [ %426, %418 ]
  %430 = phi float [ 0.000000e+00, %427 ], [ %419, %418 ]
  store float %429, ptr %414, align 4, !tbaa !53
  %431 = getelementptr inbounds %struct.BoidSettings, ptr %17, i64 0, i32 21
  %432 = load float, ptr %431, align 4, !tbaa !116
  %433 = fsub float %430, %432
  %434 = fcmp olt float %433, 0.000000e+00
  %435 = select i1 %434, float 0.000000e+00, float %433
  %436 = load float, ptr %12, align 4, !tbaa !53
  %437 = fmul float %436, %435
  store float %437, ptr %12, align 4, !tbaa !53
  %438 = load float, ptr %410, align 4, !tbaa !53
  %439 = fmul float %438, %435
  store float %439, ptr %410, align 4, !tbaa !53
  %440 = fmul float %429, %435
  store float %440, ptr %414, align 4, !tbaa !53
  br label %441

441:                                              ; preds = %393, %428
  %442 = load float, ptr %12, align 4, !tbaa !53
  %443 = load float, ptr %4, align 4, !tbaa !53
  %444 = fadd float %442, %443
  store float %444, ptr %4, align 4, !tbaa !53
  %445 = getelementptr inbounds float, ptr %12, i64 1
  %446 = load float, ptr %445, align 4, !tbaa !53
  %447 = getelementptr inbounds float, ptr %4, i64 1
  %448 = load float, ptr %447, align 4, !tbaa !53
  %449 = fadd float %446, %448
  store float %449, ptr %447, align 4, !tbaa !53
  %450 = getelementptr inbounds float, ptr %12, i64 2
  %451 = load float, ptr %450, align 4, !tbaa !53
  %452 = getelementptr inbounds float, ptr %4, i64 2
  %453 = load float, ptr %452, align 4, !tbaa !53
  %454 = fadd float %451, %453
  store float %454, ptr %452, align 4, !tbaa !53
  %455 = getelementptr inbounds %struct.BoidParticle, ptr %19, i64 0, i32 1, i32 1
  %456 = load float, ptr %455, align 4, !tbaa !53
  %457 = call float @llvm.fmuladd.f32(float %444, float %26, float %456)
  store float %457, ptr %455, align 4, !tbaa !53
  %458 = getelementptr inbounds %struct.BoidParticle, ptr %19, i64 0, i32 1, i32 1, i64 1
  %459 = load float, ptr %458, align 4, !tbaa !53
  %460 = call float @llvm.fmuladd.f32(float %449, float %26, float %459)
  store float %460, ptr %458, align 4, !tbaa !53
  %461 = getelementptr inbounds %struct.BoidParticle, ptr %19, i64 0, i32 1, i32 1, i64 2
  %462 = load float, ptr %461, align 4, !tbaa !53
  %463 = call float @llvm.fmuladd.f32(float %454, float %26, float %462)
  store float %463, ptr %461, align 4, !tbaa !53
  %464 = fadd float %26, 1.000000e+00
  %465 = fdiv float 1.000000e+00, %464
  %466 = fmul float %465, %457
  store float %466, ptr %455, align 4, !tbaa !53
  %467 = fmul float %465, %460
  store float %467, ptr %458, align 4, !tbaa !53
  %468 = fmul float %465, %463
  store float %468, ptr %461, align 4, !tbaa !53
  %469 = fdiv float 1.000000e+00, %76
  %470 = fmul float %469, %444
  store float %470, ptr %4, align 4, !tbaa !53
  %471 = fmul float %469, %449
  store float %471, ptr %447, align 4, !tbaa !53
  %472 = fmul float %469, %454
  store float %472, ptr %452, align 4, !tbaa !53
  store float %470, ptr %6, align 4, !tbaa !53
  %473 = getelementptr inbounds float, ptr %6, i64 1
  store float %471, ptr %473, align 4, !tbaa !53
  %474 = getelementptr inbounds float, ptr %6, i64 2
  store float %472, ptr %474, align 4, !tbaa !53
  %475 = fmul float %26, %26
  %476 = fmul float %475, 5.000000e-01
  %477 = fmul float %476, %470
  store float %477, ptr %6, align 4, !tbaa !53
  %478 = fmul float %476, %471
  store float %478, ptr %473, align 4, !tbaa !53
  %479 = fmul float %476, %472
  store float %479, ptr %474, align 4, !tbaa !53
  %480 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 1, i32 1
  %481 = load float, ptr %480, align 4, !tbaa !53
  %482 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 1, i32 1, i64 1
  %483 = load float, ptr %482, align 4, !tbaa !53
  %484 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 1, i32 1, i64 2
  %485 = load float, ptr %484, align 4, !tbaa !53
  %486 = fmul float %26, %481
  %487 = fmul float %26, %483
  %488 = fmul float %26, %485
  %489 = fadd float %477, %486
  store float %489, ptr %6, align 4, !tbaa !53
  %490 = fadd float %478, %487
  store float %490, ptr %473, align 4, !tbaa !53
  %491 = fadd float %479, %488
  store float %491, ptr %474, align 4, !tbaa !53
  %492 = load float, ptr %1, align 4, !tbaa !53
  %493 = fadd float %489, %492
  store float %493, ptr %1, align 4, !tbaa !53
  %494 = getelementptr inbounds float, ptr %1, i64 1
  %495 = load float, ptr %494, align 4, !tbaa !53
  %496 = fadd float %490, %495
  store float %496, ptr %494, align 4, !tbaa !53
  %497 = getelementptr inbounds float, ptr %1, i64 2
  %498 = load float, ptr %497, align 4, !tbaa !53
  %499 = fadd float %491, %498
  store float %499, ptr %497, align 4, !tbaa !53
  %500 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1
  %501 = load float, ptr %500, align 4, !tbaa !53
  %502 = call float @llvm.fmuladd.f32(float %470, float %26, float %501)
  store float %502, ptr %500, align 4, !tbaa !53
  %503 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1, i64 1
  %504 = load float, ptr %503, align 4, !tbaa !53
  %505 = call float @llvm.fmuladd.f32(float %471, float %26, float %504)
  store float %505, ptr %503, align 4, !tbaa !53
  %506 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1, i64 2
  %507 = load float, ptr %506, align 4, !tbaa !53
  %508 = call float @llvm.fmuladd.f32(float %472, float %26, float %507)
  store float %508, ptr %506, align 4, !tbaa !53
  %509 = call fastcc ptr @boid_find_ground(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %10, ptr noundef nonnull %11)
  store ptr %509, ptr %19, align 8, !tbaa !110
  %510 = load i16, ptr %28, align 2, !tbaa !78
  switch i16 %510, label %838 [
    i16 0, label %511
    i16 3, label %620
    i16 2, label %711
    i16 1, label %712
  ]

511:                                              ; preds = %441
  %512 = load ptr, ptr %0, align 8, !tbaa !72
  %513 = load ptr, ptr %512, align 8, !tbaa !104
  %514 = getelementptr inbounds %struct.Scene, ptr %513, i64 0, i32 40, i32 0, i64 2
  %515 = load float, ptr %514, align 8, !tbaa !53
  %516 = fcmp olt float %515, 0.000000e+00
  %517 = select i1 %516, float -1.000000e+00, float 0.000000e+00
  %518 = load float, ptr %455, align 4, !tbaa !53
  %519 = load float, ptr %500, align 4, !tbaa !53
  %520 = load float, ptr %458, align 4, !tbaa !53
  %521 = load float, ptr %503, align 4, !tbaa !53
  %522 = fmul float %520, %521
  %523 = call float @llvm.fmuladd.f32(float %518, float %519, float %522)
  %524 = load float, ptr %461, align 4, !tbaa !53
  %525 = load float, ptr %506, align 4, !tbaa !53
  %526 = call float @llvm.fmuladd.f32(float %524, float %525, float %523)
  %527 = fcmp ogt float %526, 0.000000e+00
  br i1 %527, label %528, label %538

528:                                              ; preds = %511
  call void @project_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %455, ptr noundef nonnull %500) #12
  %529 = load float, ptr %455, align 4, !tbaa !53
  %530 = load float, ptr %6, align 4, !tbaa !53
  %531 = fsub float %529, %530
  store float %531, ptr %6, align 4, !tbaa !53
  %532 = load float, ptr %458, align 4, !tbaa !53
  %533 = load float, ptr %473, align 4, !tbaa !53
  %534 = fsub float %532, %533
  store float %534, ptr %473, align 4, !tbaa !53
  %535 = load float, ptr %461, align 4, !tbaa !53
  %536 = load float, ptr %474, align 4, !tbaa !53
  %537 = fsub float %535, %536
  br label %539

538:                                              ; preds = %511
  store float %518, ptr %6, align 4, !tbaa !53
  store float %520, ptr %473, align 4, !tbaa !53
  br label %539

539:                                              ; preds = %538, %528
  %540 = phi float [ %524, %538 ], [ %537, %528 ]
  store float %540, ptr %474, align 4, !tbaa !53
  %541 = getelementptr inbounds %struct.BoidParticle, ptr %19, i64 0, i32 2
  %542 = getelementptr inbounds %struct.BoidSettings, ptr %17, i64 0, i32 4
  %543 = load float, ptr %542, align 8, !tbaa !117
  %544 = fneg float %543
  %545 = load float, ptr %6, align 4, !tbaa !53
  %546 = call float @llvm.fmuladd.f32(float %545, float %544, float 0.000000e+00)
  store float %546, ptr %541, align 4, !tbaa !53
  %547 = load float, ptr %473, align 4, !tbaa !53
  %548 = call float @llvm.fmuladd.f32(float %547, float %544, float 0.000000e+00)
  %549 = getelementptr inbounds %struct.BoidParticle, ptr %19, i64 0, i32 2, i64 1
  store float %548, ptr %549, align 4, !tbaa !53
  %550 = call float @llvm.fmuladd.f32(float %540, float %544, float %517)
  %551 = getelementptr inbounds %struct.BoidParticle, ptr %19, i64 0, i32 2, i64 2
  store float %550, ptr %551, align 4, !tbaa !53
  %552 = fmul float %548, %548
  %553 = call float @llvm.fmuladd.f32(float %546, float %546, float %552)
  %554 = call float @llvm.fmuladd.f32(float %550, float %550, float %553)
  %555 = fcmp ogt float %554, 0x38AA95A5C0000000
  br i1 %555, label %556, label %565

556:                                              ; preds = %539
  %557 = call float @sqrtf(float noundef %554) #12
  %558 = fdiv float 1.000000e+00, %557
  %559 = load float, ptr %541, align 4, !tbaa !53
  %560 = fmul float %559, %558
  store float %560, ptr %541, align 4, !tbaa !53
  %561 = load float, ptr %549, align 4, !tbaa !53
  %562 = fmul float %558, %561
  store float %562, ptr %549, align 4, !tbaa !53
  %563 = load float, ptr %551, align 4, !tbaa !53
  %564 = fmul float %558, %563
  br label %566

565:                                              ; preds = %539
  store float 0.000000e+00, ptr %541, align 4, !tbaa !53
  store float 0.000000e+00, ptr %549, align 4, !tbaa !53
  br label %566

566:                                              ; preds = %556, %565
  %567 = phi float [ 0.000000e+00, %565 ], [ %564, %556 ]
  store float %567, ptr %551, align 4, !tbaa !53
  %568 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 7
  %569 = load ptr, ptr %568, align 8, !tbaa !118
  %570 = icmp eq ptr %569, null
  br i1 %570, label %601, label %571

571:                                              ; preds = %566
  %572 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 8
  %573 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 9
  %574 = load float, ptr %1, align 4, !tbaa !53
  %575 = load float, ptr %572, align 4, !tbaa !53
  %576 = fsub float %574, %575
  %577 = load float, ptr %494, align 4, !tbaa !53
  %578 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 8, i64 1
  %579 = load float, ptr %578, align 4, !tbaa !53
  %580 = fsub float %577, %579
  %581 = load float, ptr %497, align 4, !tbaa !53
  %582 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 8, i64 2
  %583 = load float, ptr %582, align 4, !tbaa !53
  %584 = fsub float %581, %583
  %585 = load float, ptr %573, align 4, !tbaa !53
  %586 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 9, i64 1
  %587 = load float, ptr %586, align 4, !tbaa !53
  %588 = fmul float %580, %587
  %589 = call float @llvm.fmuladd.f32(float %576, float %585, float %588)
  %590 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 9, i64 2
  %591 = load float, ptr %590, align 4, !tbaa !53
  %592 = call float @llvm.fmuladd.f32(float %584, float %591, float %589)
  %593 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 13
  %594 = load float, ptr %593, align 4, !tbaa !109
  %595 = getelementptr inbounds %struct.BoidSettings, ptr %17, i64 0, i32 3
  %596 = load float, ptr %595, align 4, !tbaa !119
  %597 = fmul float %594, %596
  %598 = fcmp ugt float %592, %597
  br i1 %598, label %601, label %599

599:                                              ; preds = %571
  store i16 2, ptr %28, align 2, !tbaa !78
  store ptr %569, ptr %19, align 8, !tbaa !110
  %600 = call fastcc ptr @boid_find_ground(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %10, ptr noundef nonnull %11)
  call fastcc void @boid_climb(ptr noundef nonnull %17, ptr noundef nonnull %1, ptr noundef nonnull %10, ptr noundef nonnull %11)
  br label %838

601:                                              ; preds = %571, %566
  %602 = load float, ptr %497, align 8, !tbaa !53
  %603 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %604 = load float, ptr %603, align 4, !tbaa !53
  %605 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 13
  %606 = load float, ptr %605, align 4, !tbaa !109
  %607 = getelementptr inbounds %struct.BoidSettings, ptr %17, i64 0, i32 3
  %608 = load float, ptr %607, align 4, !tbaa !119
  %609 = call float @llvm.fmuladd.f32(float %606, float %608, float %604)
  %610 = fcmp ugt float %602, %609
  br i1 %610, label %838, label %611

611:                                              ; preds = %601
  %612 = load i32, ptr %17, align 8, !tbaa !103
  %613 = and i32 %612, 2
  %614 = icmp eq i32 %613, 0
  br i1 %614, label %616, label %615

615:                                              ; preds = %611
  store float %609, ptr %497, align 8, !tbaa !53
  store float 0.000000e+00, ptr %506, align 4, !tbaa !53
  store i16 1, ptr %28, align 2, !tbaa !78
  br label %838

616:                                              ; preds = %611
  %617 = load ptr, ptr %19, align 8, !tbaa !110
  %618 = icmp eq ptr %617, null
  br i1 %618, label %838, label %619

619:                                              ; preds = %616
  store float %609, ptr %497, align 8, !tbaa !53
  store float 0.000000e+00, ptr %506, align 4, !tbaa !53
  br label %838

620:                                              ; preds = %441
  %621 = load ptr, ptr %0, align 8, !tbaa !72
  %622 = load ptr, ptr %621, align 8, !tbaa !104
  %623 = getelementptr inbounds %struct.Scene, ptr %622, i64 0, i32 40, i32 0, i64 2
  %624 = load float, ptr %623, align 8, !tbaa !53
  %625 = fcmp olt float %624, 0.000000e+00
  %626 = select i1 %625, float -1.000000e+00, float 0.000000e+00
  %627 = getelementptr inbounds %struct.BoidParticle, ptr %19, i64 0, i32 2
  %628 = load float, ptr %627, align 4, !tbaa !53
  %629 = call float @llvm.fmuladd.f32(float %26, float 0.000000e+00, float %628)
  store float %629, ptr %627, align 4, !tbaa !53
  %630 = getelementptr inbounds %struct.BoidParticle, ptr %19, i64 0, i32 2, i64 1
  %631 = load float, ptr %630, align 4, !tbaa !53
  %632 = call float @llvm.fmuladd.f32(float %26, float 0.000000e+00, float %631)
  store float %632, ptr %630, align 4, !tbaa !53
  %633 = getelementptr inbounds %struct.BoidParticle, ptr %19, i64 0, i32 2, i64 2
  %634 = load float, ptr %633, align 4, !tbaa !53
  %635 = call float @llvm.fmuladd.f32(float %626, float %26, float %634)
  store float %635, ptr %633, align 4, !tbaa !53
  %636 = fmul float %632, %632
  %637 = call float @llvm.fmuladd.f32(float %629, float %629, float %636)
  %638 = call float @llvm.fmuladd.f32(float %635, float %635, float %637)
  %639 = fcmp ogt float %638, 0x38AA95A5C0000000
  br i1 %639, label %640, label %649

640:                                              ; preds = %620
  %641 = call float @sqrtf(float noundef %638) #12
  %642 = fdiv float 1.000000e+00, %641
  %643 = load float, ptr %627, align 4, !tbaa !53
  %644 = fmul float %643, %642
  store float %644, ptr %627, align 4, !tbaa !53
  %645 = load float, ptr %630, align 4, !tbaa !53
  %646 = fmul float %642, %645
  store float %646, ptr %630, align 4, !tbaa !53
  %647 = load float, ptr %633, align 4, !tbaa !53
  %648 = fmul float %642, %647
  br label %650

649:                                              ; preds = %620
  store float 0.000000e+00, ptr %627, align 4, !tbaa !53
  store float 0.000000e+00, ptr %630, align 4, !tbaa !53
  br label %650

650:                                              ; preds = %640, %649
  %651 = phi float [ 0.000000e+00, %649 ], [ %648, %640 ]
  store float %651, ptr %633, align 4, !tbaa !53
  %652 = load i32, ptr %17, align 8, !tbaa !103
  %653 = and i32 %652, 2
  %654 = icmp eq i32 %653, 0
  br i1 %654, label %710, label %655

655:                                              ; preds = %650
  %656 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 7
  %657 = load ptr, ptr %656, align 8, !tbaa !118
  %658 = icmp eq ptr %657, null
  br i1 %658, label %689, label %659

659:                                              ; preds = %655
  %660 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 8
  %661 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 9
  %662 = load float, ptr %1, align 4, !tbaa !53
  %663 = load float, ptr %660, align 4, !tbaa !53
  %664 = fsub float %662, %663
  %665 = load float, ptr %494, align 4, !tbaa !53
  %666 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 8, i64 1
  %667 = load float, ptr %666, align 4, !tbaa !53
  %668 = fsub float %665, %667
  %669 = load float, ptr %497, align 4, !tbaa !53
  %670 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 8, i64 2
  %671 = load float, ptr %670, align 4, !tbaa !53
  %672 = fsub float %669, %671
  %673 = load float, ptr %661, align 4, !tbaa !53
  %674 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 9, i64 1
  %675 = load float, ptr %674, align 4, !tbaa !53
  %676 = fmul float %668, %675
  %677 = call float @llvm.fmuladd.f32(float %664, float %673, float %676)
  %678 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 9, i64 2
  %679 = load float, ptr %678, align 4, !tbaa !53
  %680 = call float @llvm.fmuladd.f32(float %672, float %679, float %677)
  %681 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 13
  %682 = load float, ptr %681, align 4, !tbaa !109
  %683 = getelementptr inbounds %struct.BoidSettings, ptr %17, i64 0, i32 3
  %684 = load float, ptr %683, align 4, !tbaa !119
  %685 = fmul float %682, %684
  %686 = fcmp ugt float %680, %685
  br i1 %686, label %689, label %687

687:                                              ; preds = %659
  store i16 2, ptr %28, align 2, !tbaa !78
  store ptr %657, ptr %19, align 8, !tbaa !110
  %688 = call fastcc ptr @boid_find_ground(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %10, ptr noundef nonnull %11)
  call fastcc void @boid_climb(ptr noundef nonnull %17, ptr noundef nonnull %1, ptr noundef nonnull %10, ptr noundef nonnull %11)
  br label %838

689:                                              ; preds = %659, %655
  %690 = load float, ptr %497, align 8, !tbaa !53
  %691 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %692 = load float, ptr %691, align 4, !tbaa !53
  %693 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 13
  %694 = load float, ptr %693, align 4, !tbaa !109
  %695 = fmul float %694, 0x3FF028F5C0000000
  %696 = getelementptr inbounds %struct.BoidSettings, ptr %17, i64 0, i32 3
  %697 = load float, ptr %696, align 4, !tbaa !119
  %698 = call float @llvm.fmuladd.f32(float %695, float %697, float %692)
  %699 = fcmp ugt float %690, %698
  br i1 %699, label %702, label %700

700:                                              ; preds = %689
  %701 = call float @llvm.fmuladd.f32(float %694, float %697, float %692)
  store float %701, ptr %497, align 8, !tbaa !53
  store float 0.000000e+00, ptr %506, align 4, !tbaa !53
  store i16 1, ptr %28, align 2, !tbaa !78
  br label %838

702:                                              ; preds = %689
  %703 = and i32 %652, 1
  %704 = icmp eq i32 %703, 0
  br i1 %704, label %838, label %705

705:                                              ; preds = %702
  %706 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 5, i64 2
  %707 = load float, ptr %706, align 4, !tbaa !53
  %708 = fcmp ogt float %707, 0.000000e+00
  br i1 %708, label %709, label %838

709:                                              ; preds = %705
  store i16 0, ptr %28, align 2, !tbaa !78
  br label %838

710:                                              ; preds = %650
  store i16 0, ptr %28, align 2, !tbaa !78
  br label %838

711:                                              ; preds = %441
  call fastcc void @boid_climb(ptr noundef nonnull %17, ptr noundef nonnull %1, ptr noundef nonnull %10, ptr noundef nonnull %11)
  br label %838

712:                                              ; preds = %441
  %713 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 7
  %714 = load ptr, ptr %713, align 8, !tbaa !118
  %715 = icmp eq ptr %714, null
  br i1 %715, label %746, label %716

716:                                              ; preds = %712
  %717 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 8
  %718 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 9
  %719 = load float, ptr %1, align 4, !tbaa !53
  %720 = load float, ptr %717, align 4, !tbaa !53
  %721 = fsub float %719, %720
  %722 = load float, ptr %494, align 4, !tbaa !53
  %723 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 8, i64 1
  %724 = load float, ptr %723, align 4, !tbaa !53
  %725 = fsub float %722, %724
  %726 = load float, ptr %497, align 4, !tbaa !53
  %727 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 8, i64 2
  %728 = load float, ptr %727, align 4, !tbaa !53
  %729 = fsub float %726, %728
  %730 = load float, ptr %718, align 4, !tbaa !53
  %731 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 9, i64 1
  %732 = load float, ptr %731, align 4, !tbaa !53
  %733 = fmul float %725, %732
  %734 = call float @llvm.fmuladd.f32(float %721, float %730, float %733)
  %735 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 9, i64 2
  %736 = load float, ptr %735, align 4, !tbaa !53
  %737 = call float @llvm.fmuladd.f32(float %729, float %736, float %734)
  %738 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 13
  %739 = load float, ptr %738, align 4, !tbaa !109
  %740 = getelementptr inbounds %struct.BoidSettings, ptr %17, i64 0, i32 3
  %741 = load float, ptr %740, align 4, !tbaa !119
  %742 = fmul float %739, %741
  %743 = fcmp ugt float %737, %742
  br i1 %743, label %746, label %744

744:                                              ; preds = %716
  store i16 2, ptr %28, align 2, !tbaa !78
  store ptr %714, ptr %19, align 8, !tbaa !110
  %745 = call fastcc ptr @boid_find_ground(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %10, ptr noundef nonnull %11)
  call fastcc void @boid_climb(ptr noundef nonnull %17, ptr noundef nonnull %1, ptr noundef nonnull %10, ptr noundef nonnull %11)
  br label %761

746:                                              ; preds = %716, %712
  %747 = load float, ptr %497, align 8, !tbaa !53
  %748 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %749 = load float, ptr %748, align 4, !tbaa !53
  %750 = fsub float %747, %749
  %751 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 13
  %752 = load float, ptr %751, align 4, !tbaa !109
  %753 = fmul float %752, 0x3FF19999A0000000
  %754 = getelementptr inbounds %struct.BoidSettings, ptr %17, i64 0, i32 3
  %755 = load float, ptr %754, align 4, !tbaa !119
  %756 = fmul float %753, %755
  %757 = fcmp ogt float %750, %756
  br i1 %757, label %758, label %759

758:                                              ; preds = %746
  store i16 3, ptr %28, align 2, !tbaa !78
  br label %761

759:                                              ; preds = %746
  %760 = call float @llvm.fmuladd.f32(float %752, float %755, float %749)
  store float %760, ptr %497, align 8, !tbaa !53
  store float 0.000000e+00, ptr %506, align 4, !tbaa !53
  br label %761

761:                                              ; preds = %758, %759, %744
  %762 = getelementptr inbounds %struct.BoidSettings, ptr %17, i64 0, i32 4
  %763 = load float, ptr %762, align 8, !tbaa !117
  %764 = fcmp ogt float %763, 0.000000e+00
  br i1 %764, label %765, label %807

765:                                              ; preds = %761
  %766 = load float, ptr %11, align 4, !tbaa !53
  %767 = fneg float %766
  %768 = getelementptr inbounds float, ptr %11, i64 1
  %769 = load float, ptr %768, align 4, !tbaa !53
  %770 = fneg float %769
  %771 = getelementptr inbounds float, ptr %11, i64 2
  %772 = load float, ptr %771, align 4, !tbaa !53
  %773 = fneg float %772
  call void @project_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %455, ptr noundef nonnull %500) #12
  %774 = load float, ptr %455, align 4, !tbaa !53
  %775 = load float, ptr %6, align 4, !tbaa !53
  %776 = fsub float %774, %775
  store float %776, ptr %6, align 4, !tbaa !53
  %777 = load float, ptr %458, align 4, !tbaa !53
  %778 = load float, ptr %473, align 4, !tbaa !53
  %779 = fsub float %777, %778
  store float %779, ptr %473, align 4, !tbaa !53
  %780 = load float, ptr %461, align 4, !tbaa !53
  %781 = load float, ptr %474, align 4, !tbaa !53
  %782 = fsub float %780, %781
  store float %782, ptr %474, align 4, !tbaa !53
  %783 = getelementptr inbounds %struct.BoidParticle, ptr %19, i64 0, i32 2
  %784 = load float, ptr %762, align 8, !tbaa !117
  %785 = fneg float %784
  %786 = call float @llvm.fmuladd.f32(float %776, float %785, float %767)
  store float %786, ptr %783, align 4, !tbaa !53
  %787 = call float @llvm.fmuladd.f32(float %779, float %785, float %770)
  %788 = getelementptr inbounds %struct.BoidParticle, ptr %19, i64 0, i32 2, i64 1
  store float %787, ptr %788, align 4, !tbaa !53
  %789 = call float @llvm.fmuladd.f32(float %782, float %785, float %773)
  %790 = getelementptr inbounds %struct.BoidParticle, ptr %19, i64 0, i32 2, i64 2
  store float %789, ptr %790, align 4, !tbaa !53
  %791 = fmul float %787, %787
  %792 = call float @llvm.fmuladd.f32(float %786, float %786, float %791)
  %793 = call float @llvm.fmuladd.f32(float %789, float %789, float %792)
  %794 = fcmp ogt float %793, 0x38AA95A5C0000000
  br i1 %794, label %795, label %804

795:                                              ; preds = %765
  %796 = call float @sqrtf(float noundef %793) #12
  %797 = fdiv float 1.000000e+00, %796
  %798 = load float, ptr %783, align 4, !tbaa !53
  %799 = fmul float %798, %797
  store float %799, ptr %783, align 4, !tbaa !53
  %800 = load float, ptr %788, align 4, !tbaa !53
  %801 = fmul float %797, %800
  store float %801, ptr %788, align 4, !tbaa !53
  %802 = load float, ptr %790, align 4, !tbaa !53
  %803 = fmul float %797, %802
  br label %805

804:                                              ; preds = %765
  store float 0.000000e+00, ptr %783, align 4, !tbaa !53
  store float 0.000000e+00, ptr %788, align 4, !tbaa !53
  br label %805

805:                                              ; preds = %795, %804
  %806 = phi float [ 0.000000e+00, %804 ], [ %803, %795 ]
  store float %806, ptr %790, align 4, !tbaa !53
  br label %838

807:                                              ; preds = %761
  %808 = getelementptr inbounds %struct.BoidParticle, ptr %19, i64 0, i32 2
  %809 = load float, ptr %11, align 4, !tbaa !53
  %810 = load float, ptr %808, align 4, !tbaa !53
  %811 = call float @llvm.fmuladd.f32(float %809, float -1.000000e+00, float %810)
  store float %811, ptr %808, align 4, !tbaa !53
  %812 = getelementptr inbounds float, ptr %11, i64 1
  %813 = load float, ptr %812, align 4, !tbaa !53
  %814 = getelementptr inbounds %struct.BoidParticle, ptr %19, i64 0, i32 2, i64 1
  %815 = load float, ptr %814, align 4, !tbaa !53
  %816 = call float @llvm.fmuladd.f32(float %813, float -1.000000e+00, float %815)
  store float %816, ptr %814, align 4, !tbaa !53
  %817 = getelementptr inbounds float, ptr %11, i64 2
  %818 = load float, ptr %817, align 4, !tbaa !53
  %819 = getelementptr inbounds %struct.BoidParticle, ptr %19, i64 0, i32 2, i64 2
  %820 = load float, ptr %819, align 4, !tbaa !53
  %821 = call float @llvm.fmuladd.f32(float %818, float -1.000000e+00, float %820)
  store float %821, ptr %819, align 4, !tbaa !53
  %822 = fmul float %816, %816
  %823 = call float @llvm.fmuladd.f32(float %811, float %811, float %822)
  %824 = call float @llvm.fmuladd.f32(float %821, float %821, float %823)
  %825 = fcmp ogt float %824, 0x38AA95A5C0000000
  br i1 %825, label %826, label %835

826:                                              ; preds = %807
  %827 = call float @sqrtf(float noundef %824) #12
  %828 = fdiv float 1.000000e+00, %827
  %829 = load float, ptr %808, align 4, !tbaa !53
  %830 = fmul float %829, %828
  store float %830, ptr %808, align 4, !tbaa !53
  %831 = load float, ptr %814, align 4, !tbaa !53
  %832 = fmul float %828, %831
  store float %832, ptr %814, align 4, !tbaa !53
  %833 = load float, ptr %819, align 4, !tbaa !53
  %834 = fmul float %828, %833
  br label %836

835:                                              ; preds = %807
  store float 0.000000e+00, ptr %808, align 4, !tbaa !53
  store float 0.000000e+00, ptr %814, align 4, !tbaa !53
  br label %836

836:                                              ; preds = %826, %835
  %837 = phi float [ 0.000000e+00, %835 ], [ %834, %826 ]
  store float %837, ptr %819, align 4, !tbaa !53
  br label %838

838:                                              ; preds = %710, %700, %709, %705, %702, %687, %599, %615, %619, %616, %601, %805, %836, %441, %711
  %839 = load i16, ptr %28, align 2, !tbaa !78
  %840 = icmp eq i16 %839, 3
  br i1 %840, label %882, label %841

841:                                              ; preds = %838
  %842 = load float, ptr %500, align 4, !tbaa !53
  %843 = load float, ptr %503, align 4, !tbaa !53
  %844 = fmul float %843, %843
  %845 = call float @llvm.fmuladd.f32(float %842, float %842, float %844)
  %846 = load float, ptr %506, align 4, !tbaa !53
  %847 = call float @llvm.fmuladd.f32(float %846, float %846, float %845)
  %848 = call float @sqrtf(float noundef %847) #12
  %849 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 13
  %850 = load float, ptr %849, align 4, !tbaa !109
  %851 = fmul float %850, 0x3FB99999A0000000
  %852 = fcmp ogt float %848, %851
  br i1 %852, label %853, label %882

853:                                              ; preds = %841
  %854 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 3
  %855 = load float, ptr %500, align 4, !tbaa !53
  store float %855, ptr %854, align 4, !tbaa !53
  %856 = load float, ptr %503, align 4, !tbaa !53
  %857 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 3, i64 1
  store float %856, ptr %857, align 4, !tbaa !53
  %858 = load float, ptr %506, align 4, !tbaa !53
  %859 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 3, i64 2
  store float %858, ptr %859, align 4, !tbaa !53
  %860 = load ptr, ptr %14, align 8, !tbaa !55
  %861 = getelementptr inbounds %struct.ParticleSettings, ptr %860, i64 0, i32 2
  %862 = load ptr, ptr %861, align 8, !tbaa !34
  %863 = getelementptr inbounds %struct.BoidSettings, ptr %862, i64 0, i32 5
  %864 = load float, ptr %863, align 4, !tbaa !120
  %865 = fmul float %858, %864
  store float %865, ptr %859, align 8, !tbaa !53
  %866 = fmul float %856, %856
  %867 = call float @llvm.fmuladd.f32(float %855, float %855, float %866)
  %868 = call float @llvm.fmuladd.f32(float %865, float %865, float %867)
  %869 = fcmp ogt float %868, 0x38AA95A5C0000000
  br i1 %869, label %870, label %879

870:                                              ; preds = %853
  %871 = call float @sqrtf(float noundef %868) #12
  %872 = fdiv float 1.000000e+00, %871
  %873 = load float, ptr %854, align 4, !tbaa !53
  %874 = fmul float %873, %872
  store float %874, ptr %854, align 4, !tbaa !53
  %875 = load float, ptr %857, align 4, !tbaa !53
  %876 = fmul float %872, %875
  store float %876, ptr %857, align 4, !tbaa !53
  %877 = load float, ptr %859, align 4, !tbaa !53
  %878 = fmul float %872, %877
  br label %880

879:                                              ; preds = %853
  store float 0.000000e+00, ptr %854, align 4, !tbaa !53
  store float 0.000000e+00, ptr %857, align 4, !tbaa !53
  br label %880

880:                                              ; preds = %870, %879
  %881 = phi float [ 0.000000e+00, %879 ], [ %878, %870 ]
  store float %881, ptr %859, align 4, !tbaa !53
  br label %882

882:                                              ; preds = %880, %841, %838
  %883 = load i16, ptr %28, align 2, !tbaa !78
  %884 = add i16 %883, -1
  %885 = icmp ult i16 %884, 2
  br i1 %885, label %886, label %897

886:                                              ; preds = %882
  %887 = load ptr, ptr %14, align 8, !tbaa !55
  %888 = getelementptr inbounds %struct.ParticleSettings, ptr %887, i64 0, i32 87
  %889 = load float, ptr %888, align 4, !tbaa !121
  %890 = call float @llvm.fmuladd.f32(float %889, float 0xBFC99999A0000000, float 1.000000e+00)
  %891 = load float, ptr %500, align 4, !tbaa !53
  %892 = fmul float %891, %890
  store float %892, ptr %500, align 4, !tbaa !53
  %893 = load float, ptr %503, align 4, !tbaa !53
  %894 = fmul float %890, %893
  store float %894, ptr %503, align 4, !tbaa !53
  %895 = load float, ptr %506, align 4, !tbaa !53
  %896 = fmul float %890, %895
  store float %896, ptr %506, align 4, !tbaa !53
  br label %897

897:                                              ; preds = %882, %886
  %898 = icmp eq i16 %883, 0
  %899 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 3
  br i1 %898, label %900, label %939

900:                                              ; preds = %897
  %901 = load float, ptr %899, align 4, !tbaa !53
  store float %901, ptr %9, align 16, !tbaa !53
  %902 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 3, i64 1
  %903 = load float, ptr %902, align 4, !tbaa !53
  %904 = getelementptr inbounds float, ptr %9, i64 1
  store float %903, ptr %904, align 4, !tbaa !53
  %905 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 3, i64 2
  %906 = load float, ptr %905, align 4, !tbaa !53
  %907 = getelementptr inbounds float, ptr %9, i64 2
  store float %906, ptr %907, align 8, !tbaa !53
  %908 = getelementptr inbounds %struct.BoidParticle, ptr %19, i64 0, i32 2
  call void @project_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %908, ptr noundef nonnull %899) #12
  %909 = getelementptr inbounds [3 x [3 x float]], ptr %9, i64 0, i64 2
  %910 = load float, ptr %908, align 4, !tbaa !53
  %911 = load float, ptr %6, align 4, !tbaa !53
  %912 = fsub float %910, %911
  store float %912, ptr %909, align 8, !tbaa !53
  %913 = getelementptr inbounds %struct.BoidParticle, ptr %19, i64 0, i32 2, i64 1
  %914 = load float, ptr %913, align 4, !tbaa !53
  %915 = load float, ptr %473, align 4, !tbaa !53
  %916 = fsub float %914, %915
  %917 = getelementptr inbounds [3 x [3 x float]], ptr %9, i64 0, i64 2, i64 1
  store float %916, ptr %917, align 4, !tbaa !53
  %918 = getelementptr inbounds %struct.BoidParticle, ptr %19, i64 0, i32 2, i64 2
  %919 = load float, ptr %918, align 4, !tbaa !53
  %920 = load float, ptr %474, align 4, !tbaa !53
  %921 = fsub float %919, %920
  %922 = getelementptr inbounds [3 x [3 x float]], ptr %9, i64 0, i64 2, i64 2
  store float %921, ptr %922, align 16, !tbaa !53
  %923 = fmul float %916, %916
  %924 = call float @llvm.fmuladd.f32(float %912, float %912, float %923)
  %925 = call float @llvm.fmuladd.f32(float %921, float %921, float %924)
  %926 = fcmp ogt float %925, 0x38AA95A5C0000000
  br i1 %926, label %927, label %936

927:                                              ; preds = %900
  %928 = call float @sqrtf(float noundef %925) #12
  %929 = fdiv float 1.000000e+00, %928
  %930 = load float, ptr %909, align 8, !tbaa !53
  %931 = fmul float %930, %929
  store float %931, ptr %909, align 8, !tbaa !53
  %932 = load float, ptr %917, align 4, !tbaa !53
  %933 = fmul float %929, %932
  store float %933, ptr %917, align 4, !tbaa !53
  %934 = load float, ptr %922, align 16, !tbaa !53
  %935 = fmul float %929, %934
  br label %937

936:                                              ; preds = %900
  store float 0.000000e+00, ptr %909, align 8, !tbaa !53
  store float 0.000000e+00, ptr %917, align 4, !tbaa !53
  br label %937

937:                                              ; preds = %927, %936
  %938 = phi float [ 0.000000e+00, %936 ], [ %935, %927 ]
  store float %938, ptr %922, align 16, !tbaa !53
  br label %978

939:                                              ; preds = %897
  %940 = getelementptr inbounds %struct.BoidParticle, ptr %19, i64 0, i32 2
  call void @project_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %899, ptr noundef nonnull %940) #12
  %941 = load float, ptr %899, align 4, !tbaa !53
  %942 = load float, ptr %6, align 4, !tbaa !53
  %943 = fsub float %941, %942
  store float %943, ptr %9, align 16, !tbaa !53
  %944 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 3, i64 1
  %945 = load float, ptr %944, align 4, !tbaa !53
  %946 = load float, ptr %473, align 4, !tbaa !53
  %947 = fsub float %945, %946
  %948 = getelementptr inbounds float, ptr %9, i64 1
  store float %947, ptr %948, align 4, !tbaa !53
  %949 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 3, i64 2
  %950 = load float, ptr %949, align 4, !tbaa !53
  %951 = load float, ptr %474, align 4, !tbaa !53
  %952 = fsub float %950, %951
  %953 = getelementptr inbounds float, ptr %9, i64 2
  store float %952, ptr %953, align 8, !tbaa !53
  %954 = fmul float %947, %947
  %955 = call float @llvm.fmuladd.f32(float %943, float %943, float %954)
  %956 = call float @llvm.fmuladd.f32(float %952, float %952, float %955)
  %957 = fcmp ogt float %956, 0x38AA95A5C0000000
  br i1 %957, label %958, label %967

958:                                              ; preds = %939
  %959 = call float @sqrtf(float noundef %956) #12
  %960 = fdiv float 1.000000e+00, %959
  %961 = load float, ptr %9, align 16, !tbaa !53
  %962 = fmul float %961, %960
  store float %962, ptr %9, align 16, !tbaa !53
  %963 = load float, ptr %948, align 4, !tbaa !53
  %964 = fmul float %960, %963
  store float %964, ptr %948, align 4, !tbaa !53
  %965 = load float, ptr %953, align 8, !tbaa !53
  %966 = fmul float %960, %965
  br label %968

967:                                              ; preds = %939
  store float 0.000000e+00, ptr %9, align 16, !tbaa !53
  store float 0.000000e+00, ptr %948, align 4, !tbaa !53
  br label %968

968:                                              ; preds = %958, %967
  %969 = phi float [ 0.000000e+00, %967 ], [ %966, %958 ]
  store float %969, ptr %953, align 8, !tbaa !53
  %970 = getelementptr inbounds [3 x [3 x float]], ptr %9, i64 0, i64 2
  %971 = load float, ptr %940, align 4, !tbaa !53
  store float %971, ptr %970, align 8, !tbaa !53
  %972 = getelementptr inbounds %struct.BoidParticle, ptr %19, i64 0, i32 2, i64 1
  %973 = load float, ptr %972, align 4, !tbaa !53
  %974 = getelementptr inbounds [3 x [3 x float]], ptr %9, i64 0, i64 2, i64 1
  store float %973, ptr %974, align 4, !tbaa !53
  %975 = getelementptr inbounds %struct.BoidParticle, ptr %19, i64 0, i32 2, i64 2
  %976 = load float, ptr %975, align 4, !tbaa !53
  %977 = getelementptr inbounds [3 x [3 x float]], ptr %9, i64 0, i64 2, i64 2
  store float %976, ptr %977, align 16, !tbaa !53
  br label %978

978:                                              ; preds = %968, %937
  %979 = getelementptr inbounds [3 x [3 x float]], ptr %9, i64 0, i64 2
  %980 = load float, ptr %979, align 8, !tbaa !53
  %981 = fneg float %980
  store float %981, ptr %979, align 8, !tbaa !53
  %982 = getelementptr inbounds [3 x [3 x float]], ptr %9, i64 0, i64 2, i64 1
  %983 = load float, ptr %982, align 4, !tbaa !53
  %984 = fneg float %983
  store float %984, ptr %982, align 4, !tbaa !53
  %985 = getelementptr inbounds [3 x [3 x float]], ptr %9, i64 0, i64 2, i64 2
  %986 = load float, ptr %985, align 16, !tbaa !53
  %987 = fneg float %986
  store float %987, ptr %985, align 16, !tbaa !53
  %988 = getelementptr inbounds [3 x [3 x float]], ptr %9, i64 0, i64 1
  %989 = getelementptr inbounds float, ptr %9, i64 2
  %990 = load float, ptr %989, align 8, !tbaa !53
  %991 = getelementptr inbounds float, ptr %9, i64 1
  %992 = load float, ptr %991, align 4, !tbaa !53
  %993 = fmul float %986, %992
  %994 = call float @llvm.fmuladd.f32(float %984, float %990, float %993)
  store float %994, ptr %988, align 4, !tbaa !53
  %995 = load float, ptr %9, align 16, !tbaa !53
  %996 = fmul float %980, %990
  %997 = call float @llvm.fmuladd.f32(float %987, float %995, float %996)
  %998 = getelementptr inbounds [3 x [3 x float]], ptr %9, i64 0, i64 1, i64 1
  store float %997, ptr %998, align 16, !tbaa !53
  %999 = fmul float %983, %995
  %1000 = call float @llvm.fmuladd.f32(float %981, float %992, float %999)
  %1001 = getelementptr inbounds [3 x [3 x float]], ptr %9, i64 0, i64 1, i64 2
  store float %1000, ptr %1001, align 4, !tbaa !53
  call void @mat3_to_quat_is_ok(ptr noundef nonnull %8, ptr noundef nonnull %9) #12
  %1002 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 2
  call void @copy_qt_qt(ptr noundef nonnull %1002, ptr noundef nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare void @copy_particle_key(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @psys_uses_gravity(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @boid_find_ground(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca %struct.ParticleCollision, align 8
  %8 = alloca %struct.BVHTreeRayHit, align 4
  %9 = alloca [3 x float], align 4
  %10 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !57
  %12 = getelementptr inbounds %struct.BoidParticle, ptr %11, i64 0, i32 1, i32 3
  %13 = load i16, ptr %12, align 2, !tbaa !78
  %14 = icmp eq i16 %13, 2
  br i1 %14, label %15, label %34

15:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #12
  %16 = load ptr, ptr %11, align 8, !tbaa !110
  %17 = tail call ptr @modifiers_findByType(ptr noundef %16, i32 noundef 30) #12
  %18 = call i32 @closest_point_on_surface(ptr noundef %17, ptr noundef %1, ptr noundef nonnull %5, ptr noundef null, ptr noundef nonnull %6) #12
  %19 = load float, ptr %6, align 4, !tbaa !53
  %20 = load float, ptr %5, align 4, !tbaa !53
  %21 = fadd float %19, %20
  store float %21, ptr %5, align 4, !tbaa !53
  %22 = getelementptr inbounds float, ptr %6, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !53
  %24 = getelementptr inbounds float, ptr %5, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !53
  %26 = fadd float %23, %25
  store float %26, ptr %24, align 4, !tbaa !53
  %27 = getelementptr inbounds float, ptr %6, i64 2
  %28 = load float, ptr %27, align 4, !tbaa !53
  %29 = getelementptr inbounds float, ptr %5, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !53
  %31 = fadd float %28, %30
  store float %31, ptr %29, align 4, !tbaa !53
  %32 = call i32 @closest_point_on_surface(ptr noundef %17, ptr noundef nonnull %5, ptr noundef %2, ptr noundef %3, ptr noundef null) #12
  %33 = load ptr, ptr %11, align 8, !tbaa !110
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #12
  br label %206

34:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 328, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #12
  %35 = load ptr, ptr %0, align 8, !tbaa !72
  %36 = getelementptr inbounds %struct.ParticleSimulationData, ptr %35, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !114
  %38 = icmp eq ptr %37, null
  br i1 %38, label %204, label %39

39:                                               ; preds = %34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %7, i8 0, i64 328, i1 false)
  %40 = getelementptr inbounds %struct.ParticleCollision, ptr %7, i64 0, i32 18
  %41 = load float, ptr %1, align 4, !tbaa !53
  store float %41, ptr %40, align 8, !tbaa !53
  %42 = getelementptr inbounds float, ptr %1, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !53
  %44 = getelementptr inbounds %struct.ParticleCollision, ptr %7, i64 0, i32 18, i64 1
  store float %43, ptr %44, align 4, !tbaa !53
  %45 = getelementptr inbounds float, ptr %1, i64 2
  %46 = load float, ptr %45, align 4, !tbaa !53
  %47 = getelementptr inbounds %struct.ParticleCollision, ptr %7, i64 0, i32 18, i64 2
  store float %46, ptr %47, align 8, !tbaa !53
  %48 = getelementptr inbounds %struct.ParticleCollision, ptr %7, i64 0, i32 19
  store float %41, ptr %48, align 4, !tbaa !53
  %49 = getelementptr inbounds %struct.ParticleCollision, ptr %7, i64 0, i32 19, i64 1
  store float %43, ptr %49, align 8, !tbaa !53
  %50 = fadd float %46, -2.000000e+03
  %51 = getelementptr inbounds %struct.ParticleCollision, ptr %7, i64 0, i32 19, i64 2
  store float %50, ptr %51, align 4, !tbaa !53
  %52 = fsub float %41, %41
  store float %52, ptr %9, align 4, !tbaa !53
  %53 = fsub float %43, %43
  %54 = getelementptr inbounds float, ptr %9, i64 1
  store float %53, ptr %54, align 4, !tbaa !53
  %55 = fsub float %50, %46
  %56 = getelementptr inbounds float, ptr %9, i64 2
  store float %55, ptr %56, align 4, !tbaa !53
  %57 = getelementptr inbounds %struct.ParticleCollision, ptr %7, i64 0, i32 6
  store float 0.000000e+00, ptr %57, align 8, !tbaa !122
  store i32 -1, ptr %8, align 4, !tbaa !125
  %58 = fmul float %53, %53
  %59 = tail call float @llvm.fmuladd.f32(float %52, float %52, float %58)
  %60 = tail call float @llvm.fmuladd.f32(float %55, float %55, float %59)
  %61 = tail call float @sqrtf(float noundef %60) #12
  %62 = getelementptr inbounds %struct.ParticleCollision, ptr %7, i64 0, i32 11
  store float %61, ptr %62, align 4, !tbaa !127
  %63 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %8, i64 0, i32 3
  store float %61, ptr %63, align 4, !tbaa !128
  %64 = getelementptr inbounds %struct.ParticleCollision, ptr %7, i64 0, i32 13, i32 12
  store i16 0, ptr %64, align 2, !tbaa !129
  %65 = load ptr, ptr %0, align 8, !tbaa !72
  %66 = getelementptr inbounds %struct.ParticleSimulationData, ptr %65, i64 0, i32 4
  %67 = load ptr, ptr %66, align 8, !tbaa !114
  %68 = load ptr, ptr %67, align 8, !tbaa !44
  %69 = icmp eq ptr %68, null
  br i1 %69, label %90, label %70

70:                                               ; preds = %39
  %71 = getelementptr inbounds %struct.ParticleCollision, ptr %7, i64 0, i32 5
  %72 = getelementptr inbounds %struct.ParticleCollision, ptr %7, i64 0, i32 8
  %73 = getelementptr inbounds %struct.ParticleCollision, ptr %7, i64 0, i32 7
  br label %74

74:                                               ; preds = %70, %87
  %75 = phi ptr [ %68, %70 ], [ %88, %87 ]
  %76 = getelementptr inbounds %struct.ColliderCache, ptr %75, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !130
  store ptr %77, ptr %7, align 8, !tbaa !132
  %78 = getelementptr inbounds %struct.ColliderCache, ptr %75, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !133
  store ptr %79, ptr %71, align 8, !tbaa !134
  store float 0.000000e+00, ptr %72, align 8, !tbaa !135
  store float 0.000000e+00, ptr %73, align 4, !tbaa !136
  %80 = icmp eq ptr %79, null
  br i1 %80, label %87, label %81

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.CollisionModifierData, ptr %79, i64 0, i32 12
  %83 = load ptr, ptr %82, align 8, !tbaa !137
  %84 = icmp eq ptr %83, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %81
  %86 = call i32 @BLI_bvhtree_ray_cast(ptr noundef nonnull %83, ptr noundef nonnull %40, ptr noundef nonnull %9, float noundef 0.000000e+00, ptr noundef nonnull %8, ptr noundef nonnull @BKE_psys_collision_neartest_cb, ptr noundef nonnull %7) #12
  br label %87

87:                                               ; preds = %74, %81, %85
  %88 = load ptr, ptr %75, align 8, !tbaa !44
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %74, !llvm.loop !140

90:                                               ; preds = %87, %39
  %91 = load i32, ptr %8, align 4, !tbaa !125
  %92 = icmp sgt i32 %91, -1
  br i1 %92, label %93, label %124

93:                                               ; preds = %90
  %94 = load float, ptr %63, align 4, !tbaa !128
  %95 = load float, ptr %62, align 4, !tbaa !127
  %96 = fdiv float %94, %95
  call void @interp_v3_v3v3(ptr noundef %2, ptr noundef nonnull %40, ptr noundef nonnull %48, float noundef %96) #12
  %97 = getelementptr inbounds %struct.ParticleCollision, ptr %7, i64 0, i32 13, i32 6
  %98 = load float, ptr %97, align 8, !tbaa !53
  %99 = getelementptr inbounds %struct.ParticleCollision, ptr %7, i64 0, i32 13, i32 6, i64 1
  %100 = load float, ptr %99, align 4, !tbaa !53
  %101 = fmul float %100, %100
  %102 = call float @llvm.fmuladd.f32(float %98, float %98, float %101)
  %103 = getelementptr inbounds %struct.ParticleCollision, ptr %7, i64 0, i32 13, i32 6, i64 2
  %104 = load float, ptr %103, align 8, !tbaa !53
  %105 = call float @llvm.fmuladd.f32(float %104, float %104, float %102)
  %106 = fcmp ogt float %105, 0x38AA95A5C0000000
  br i1 %106, label %107, label %117

107:                                              ; preds = %93
  %108 = call float @sqrtf(float noundef %105) #12
  %109 = fdiv float 1.000000e+00, %108
  %110 = load float, ptr %97, align 8, !tbaa !53
  %111 = fmul float %110, %109
  store float %111, ptr %3, align 4, !tbaa !53
  %112 = load float, ptr %99, align 4, !tbaa !53
  %113 = fmul float %109, %112
  %114 = getelementptr inbounds float, ptr %3, i64 1
  store float %113, ptr %114, align 4, !tbaa !53
  %115 = load float, ptr %103, align 8, !tbaa !53
  %116 = fmul float %109, %115
  br label %119

117:                                              ; preds = %93
  store float 0.000000e+00, ptr %3, align 4, !tbaa !53
  %118 = getelementptr inbounds float, ptr %3, i64 1
  store float 0.000000e+00, ptr %118, align 4, !tbaa !53
  br label %119

119:                                              ; preds = %107, %117
  %120 = phi float [ %116, %107 ], [ 0.000000e+00, %117 ]
  %121 = getelementptr inbounds float, ptr %3, i64 2
  store float %120, ptr %121, align 4, !tbaa !53
  %122 = getelementptr inbounds %struct.ParticleCollision, ptr %7, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !141
  br label %204

124:                                              ; preds = %90
  %125 = load float, ptr %1, align 4, !tbaa !53
  %126 = fadd float %125, 0.000000e+00
  store float %126, ptr %40, align 8, !tbaa !53
  %127 = load float, ptr %42, align 4, !tbaa !53
  %128 = fadd float %127, 0.000000e+00
  store float %128, ptr %44, align 4, !tbaa !53
  %129 = load float, ptr %45, align 4, !tbaa !53
  %130 = fadd float %129, 2.000000e+03
  store float %130, ptr %47, align 8, !tbaa !53
  store float %125, ptr %48, align 4, !tbaa !53
  store float %127, ptr %49, align 8, !tbaa !53
  %131 = fadd float %129, -2.000000e+03
  %132 = fadd float %131, -2.000000e+03
  store float %132, ptr %51, align 4, !tbaa !53
  %133 = fsub float %125, %126
  store float %133, ptr %9, align 4, !tbaa !53
  %134 = fsub float %127, %128
  store float %134, ptr %54, align 4, !tbaa !53
  %135 = fsub float %132, %130
  store float %135, ptr %56, align 4, !tbaa !53
  store float 0.000000e+00, ptr %57, align 8, !tbaa !122
  store i32 -1, ptr %8, align 4, !tbaa !125
  %136 = fmul float %134, %134
  %137 = call float @llvm.fmuladd.f32(float %133, float %133, float %136)
  %138 = call float @llvm.fmuladd.f32(float %135, float %135, float %137)
  %139 = call float @sqrtf(float noundef %138) #12
  store float %139, ptr %62, align 4, !tbaa !127
  store float %139, ptr %63, align 4, !tbaa !128
  %140 = load ptr, ptr %0, align 8, !tbaa !72
  %141 = getelementptr inbounds %struct.ParticleSimulationData, ptr %140, i64 0, i32 4
  %142 = load ptr, ptr %141, align 8, !tbaa !114
  %143 = load ptr, ptr %142, align 8, !tbaa !44
  %144 = icmp eq ptr %143, null
  br i1 %144, label %163, label %145

145:                                              ; preds = %124
  %146 = getelementptr inbounds %struct.ParticleCollision, ptr %7, i64 0, i32 5
  br label %147

147:                                              ; preds = %145, %160
  %148 = phi ptr [ %143, %145 ], [ %161, %160 ]
  %149 = getelementptr inbounds %struct.ColliderCache, ptr %148, i64 0, i32 2
  %150 = load ptr, ptr %149, align 8, !tbaa !130
  store ptr %150, ptr %7, align 8, !tbaa !132
  %151 = getelementptr inbounds %struct.ColliderCache, ptr %148, i64 0, i32 3
  %152 = load ptr, ptr %151, align 8, !tbaa !133
  store ptr %152, ptr %146, align 8, !tbaa !134
  %153 = icmp eq ptr %152, null
  br i1 %153, label %160, label %154

154:                                              ; preds = %147
  %155 = getelementptr inbounds %struct.CollisionModifierData, ptr %152, i64 0, i32 12
  %156 = load ptr, ptr %155, align 8, !tbaa !137
  %157 = icmp eq ptr %156, null
  br i1 %157, label %160, label %158

158:                                              ; preds = %154
  %159 = call i32 @BLI_bvhtree_ray_cast(ptr noundef nonnull %156, ptr noundef nonnull %40, ptr noundef nonnull %9, float noundef 0.000000e+00, ptr noundef nonnull %8, ptr noundef nonnull @BKE_psys_collision_neartest_cb, ptr noundef nonnull %7) #12
  br label %160

160:                                              ; preds = %147, %154, %158
  %161 = load ptr, ptr %148, align 8, !tbaa !44
  %162 = icmp eq ptr %161, null
  br i1 %162, label %163, label %147, !llvm.loop !142

163:                                              ; preds = %160, %124
  %164 = load i32, ptr %8, align 4, !tbaa !125
  %165 = icmp sgt i32 %164, -1
  br i1 %165, label %166, label %197

166:                                              ; preds = %163
  %167 = load float, ptr %63, align 4, !tbaa !128
  %168 = load float, ptr %62, align 4, !tbaa !127
  %169 = fdiv float %167, %168
  call void @interp_v3_v3v3(ptr noundef %2, ptr noundef nonnull %40, ptr noundef nonnull %48, float noundef %169) #12
  %170 = getelementptr inbounds %struct.ParticleCollision, ptr %7, i64 0, i32 13, i32 6
  %171 = load float, ptr %170, align 8, !tbaa !53
  %172 = getelementptr inbounds %struct.ParticleCollision, ptr %7, i64 0, i32 13, i32 6, i64 1
  %173 = load float, ptr %172, align 4, !tbaa !53
  %174 = fmul float %173, %173
  %175 = call float @llvm.fmuladd.f32(float %171, float %171, float %174)
  %176 = getelementptr inbounds %struct.ParticleCollision, ptr %7, i64 0, i32 13, i32 6, i64 2
  %177 = load float, ptr %176, align 8, !tbaa !53
  %178 = call float @llvm.fmuladd.f32(float %177, float %177, float %175)
  %179 = fcmp ogt float %178, 0x38AA95A5C0000000
  br i1 %179, label %180, label %190

180:                                              ; preds = %166
  %181 = call float @sqrtf(float noundef %178) #12
  %182 = fdiv float 1.000000e+00, %181
  %183 = load float, ptr %170, align 8, !tbaa !53
  %184 = fmul float %183, %182
  store float %184, ptr %3, align 4, !tbaa !53
  %185 = load float, ptr %172, align 4, !tbaa !53
  %186 = fmul float %182, %185
  %187 = getelementptr inbounds float, ptr %3, i64 1
  store float %186, ptr %187, align 4, !tbaa !53
  %188 = load float, ptr %176, align 8, !tbaa !53
  %189 = fmul float %182, %188
  br label %192

190:                                              ; preds = %166
  store float 0.000000e+00, ptr %3, align 4, !tbaa !53
  %191 = getelementptr inbounds float, ptr %3, i64 1
  store float 0.000000e+00, ptr %191, align 4, !tbaa !53
  br label %192

192:                                              ; preds = %180, %190
  %193 = phi float [ %189, %180 ], [ 0.000000e+00, %190 ]
  %194 = getelementptr inbounds float, ptr %3, i64 2
  store float %193, ptr %194, align 4, !tbaa !53
  %195 = getelementptr inbounds %struct.ParticleCollision, ptr %7, i64 0, i32 1
  %196 = load ptr, ptr %195, align 8, !tbaa !141
  br label %204

197:                                              ; preds = %163
  %198 = load float, ptr %1, align 4, !tbaa !53
  store float %198, ptr %2, align 4, !tbaa !53
  %199 = load float, ptr %42, align 4, !tbaa !53
  %200 = getelementptr inbounds float, ptr %2, i64 1
  store float %199, ptr %200, align 4, !tbaa !53
  %201 = getelementptr inbounds float, ptr %2, i64 2
  store float 0.000000e+00, ptr %201, align 4, !tbaa !53
  %202 = getelementptr inbounds float, ptr %3, i64 1
  store float 0.000000e+00, ptr %202, align 4, !tbaa !53
  store float 0.000000e+00, ptr %3, align 4, !tbaa !53
  %203 = getelementptr inbounds float, ptr %3, i64 2
  store float 1.000000e+00, ptr %203, align 4, !tbaa !53
  br label %204

204:                                              ; preds = %34, %197, %192, %119
  %205 = phi ptr [ %123, %119 ], [ %196, %192 ], [ null, %197 ], [ null, %34 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 328, ptr nonnull %7) #12
  br label %206

206:                                              ; preds = %204, %15
  %207 = phi ptr [ %33, %15 ], [ %205, %204 ]
  ret ptr %207
}

declare float @BLI_rng_get_float(ptr noundef) local_unnamed_addr #3

declare void @axis_angle_to_quat(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

declare void @mul_qt_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @project_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @pd_point_from_particle(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @pdDoEffectors(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @boid_climb(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #2 {
  %5 = alloca [3 x float], align 4
  %6 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #12
  %8 = load float, ptr %3, align 4, !tbaa !53
  %9 = getelementptr inbounds float, ptr %3, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !53
  %11 = getelementptr inbounds float, ptr %3, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !53
  %13 = getelementptr inbounds %struct.BoidParticle, ptr %7, i64 0, i32 2
  %14 = load float, ptr %13, align 4, !tbaa !53
  %15 = tail call float @llvm.fmuladd.f32(float %8, float -1.000000e+00, float %14)
  store float %15, ptr %13, align 4, !tbaa !53
  %16 = load float, ptr %9, align 4, !tbaa !53
  %17 = getelementptr inbounds %struct.BoidParticle, ptr %7, i64 0, i32 2, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !53
  %19 = tail call float @llvm.fmuladd.f32(float %16, float -1.000000e+00, float %18)
  store float %19, ptr %17, align 4, !tbaa !53
  %20 = load float, ptr %11, align 4, !tbaa !53
  %21 = getelementptr inbounds %struct.BoidParticle, ptr %7, i64 0, i32 2, i64 2
  %22 = load float, ptr %21, align 4, !tbaa !53
  %23 = tail call float @llvm.fmuladd.f32(float %20, float -1.000000e+00, float %22)
  store float %23, ptr %21, align 4, !tbaa !53
  %24 = fmul float %19, %19
  %25 = tail call float @llvm.fmuladd.f32(float %15, float %15, float %24)
  %26 = tail call float @llvm.fmuladd.f32(float %23, float %23, float %25)
  %27 = fcmp ogt float %26, 0x38AA95A5C0000000
  br i1 %27, label %28, label %37

28:                                               ; preds = %4
  %29 = tail call float @sqrtf(float noundef %26) #12
  %30 = fdiv float 1.000000e+00, %29
  %31 = load float, ptr %13, align 4, !tbaa !53
  %32 = fmul float %31, %30
  store float %32, ptr %13, align 4, !tbaa !53
  %33 = load float, ptr %17, align 4, !tbaa !53
  %34 = fmul float %30, %33
  store float %34, ptr %17, align 4, !tbaa !53
  %35 = load float, ptr %21, align 4, !tbaa !53
  %36 = fmul float %30, %35
  br label %38

37:                                               ; preds = %4
  store float 0.000000e+00, ptr %13, align 4, !tbaa !53
  store float 0.000000e+00, ptr %17, align 4, !tbaa !53
  br label %38

38:                                               ; preds = %28, %37
  %39 = phi float [ 0.000000e+00, %37 ], [ %36, %28 ]
  store float %39, ptr %21, align 4, !tbaa !53
  %40 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 13
  %41 = load float, ptr %40, align 4, !tbaa !109
  %42 = getelementptr inbounds %struct.BoidSettings, ptr %0, i64 0, i32 3
  %43 = load float, ptr %42, align 4, !tbaa !119
  %44 = fmul float %41, %43
  %45 = fmul float %8, %44
  %46 = fmul float %10, %44
  %47 = fmul float %12, %44
  %48 = load float, ptr %2, align 4, !tbaa !53
  %49 = fadd float %48, %45
  store float %49, ptr %1, align 4, !tbaa !53
  %50 = getelementptr inbounds float, ptr %2, i64 1
  %51 = load float, ptr %50, align 4, !tbaa !53
  %52 = fadd float %46, %51
  %53 = getelementptr inbounds float, ptr %1, i64 1
  store float %52, ptr %53, align 4, !tbaa !53
  %54 = getelementptr inbounds float, ptr %2, i64 2
  %55 = load float, ptr %54, align 4, !tbaa !53
  %56 = fadd float %47, %55
  %57 = getelementptr inbounds float, ptr %1, i64 2
  store float %56, ptr %57, align 4, !tbaa !53
  %58 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1
  call void @project_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %58, ptr noundef nonnull %3) #12
  %59 = load float, ptr %58, align 4, !tbaa !53
  %60 = load float, ptr %5, align 4, !tbaa !53
  %61 = fsub float %59, %60
  store float %61, ptr %58, align 4, !tbaa !53
  %62 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1, i64 1
  %63 = load float, ptr %62, align 4, !tbaa !53
  %64 = getelementptr inbounds float, ptr %5, i64 1
  %65 = load float, ptr %64, align 4, !tbaa !53
  %66 = fsub float %63, %65
  store float %66, ptr %62, align 4, !tbaa !53
  %67 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1, i64 2
  %68 = load float, ptr %67, align 4, !tbaa !53
  %69 = getelementptr inbounds float, ptr %5, i64 2
  %70 = load float, ptr %69, align 4, !tbaa !53
  %71 = fsub float %68, %70
  store float %71, ptr %67, align 4, !tbaa !53
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #12
  ret void
}

declare void @mat3_to_quat_is_ok(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @copy_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @boid_new_rule(i32 noundef %0) local_unnamed_addr #2 {
  %2 = icmp slt i32 %0, 1
  br i1 %2, label %39, label %3

3:                                                ; preds = %1
  switch i32 %0, label %24 [
    i32 1, label %4
    i32 2, label %4
    i32 3, label %7
    i32 6, label %11
    i32 7, label %15
    i32 8, label %19
  ]

4:                                                ; preds = %3, %3
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %6 = tail call ptr %5(i64 noundef 80, ptr noundef nonnull @.str) #12
  br label %27

7:                                                ; preds = %3
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %9 = tail call ptr %8(i64 noundef 64, ptr noundef nonnull @.str.1) #12
  %10 = getelementptr inbounds %struct.BoidRuleAvoidCollision, ptr %9, i64 0, i32 2
  store float 2.000000e+00, ptr %10, align 4, !tbaa !143
  br label %27

11:                                               ; preds = %3
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %13 = tail call ptr %12(i64 noundef 104, ptr noundef nonnull @.str.2) #12
  %14 = getelementptr inbounds %struct.BoidRuleFollowLeader, ptr %13, i64 0, i32 5
  store float 1.000000e+00, ptr %14, align 4, !tbaa !145
  br label %27

15:                                               ; preds = %3
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %17 = tail call ptr %16(i64 noundef 72, ptr noundef nonnull @.str.3) #12
  %18 = getelementptr inbounds %struct.BoidRuleAverageSpeed, ptr %17, i64 0, i32 3
  store float 5.000000e-01, ptr %18, align 8, !tbaa !146
  br label %27

19:                                               ; preds = %3
  %20 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %21 = tail call ptr %20(i64 noundef 64, ptr noundef nonnull @.str.4) #12
  %22 = getelementptr inbounds %struct.BoidRuleFight, ptr %21, i64 0, i32 1
  store float 1.000000e+02, ptr %22, align 8, !tbaa !148
  %23 = getelementptr inbounds %struct.BoidRuleFight, ptr %21, i64 0, i32 2
  store float 1.000000e+02, ptr %23, align 4, !tbaa !150
  br label %27

24:                                               ; preds = %3
  %25 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %26 = tail call ptr %25(i64 noundef 56, ptr noundef nonnull @.str.5) #12
  br label %27

27:                                               ; preds = %24, %19, %15, %11, %7, %4
  %28 = phi ptr [ %26, %24 ], [ %21, %19 ], [ %17, %15 ], [ %13, %11 ], [ %9, %7 ], [ %6, %4 ]
  %29 = getelementptr inbounds %struct.BoidRule, ptr %28, i64 0, i32 2
  store i32 %0, ptr %29, align 8, !tbaa !48
  %30 = getelementptr inbounds %struct.BoidRule, ptr %28, i64 0, i32 3
  %31 = load i32, ptr %30, align 4, !tbaa !99
  %32 = or i32 %31, 12
  store i32 %32, ptr %30, align 4, !tbaa !99
  %33 = getelementptr inbounds %struct.BoidRule, ptr %28, i64 0, i32 4
  %34 = add nsw i32 %0, -1
  %35 = zext nneg i32 %34 to i64
  %36 = getelementptr inbounds [0 x %struct.EnumPropertyItem], ptr @boidrule_type_items, i64 0, i64 %35, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !151
  %38 = tail call ptr @BLI_strncpy(ptr noundef nonnull %33, ptr noundef %37, i64 noundef 32) #12
  br label %39

39:                                               ; preds = %1, %27
  %40 = phi ptr [ %28, %27 ], [ null, %1 ]
  ret ptr %40
}

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @boid_default_settings(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.BoidSettings, ptr %0, i64 0, i32 12
  store float 1.000000e+01, ptr %2, align 8, !tbaa !91
  %3 = getelementptr inbounds %struct.BoidSettings, ptr %0, i64 0, i32 13
  store float 5.000000e-01, ptr %3, align 4, !tbaa !92
  %4 = getelementptr inbounds %struct.BoidSettings, ptr %0, i64 0, i32 14
  store float 5.000000e-01, ptr %4, align 8, !tbaa !93
  %5 = getelementptr inbounds %struct.BoidSettings, ptr %0, i64 0, i32 15
  store float 1.000000e+00, ptr %5, align 4, !tbaa !95
  %6 = getelementptr inbounds %struct.BoidSettings, ptr %0, i64 0, i32 17
  store float 5.000000e+00, ptr %6, align 4, !tbaa !80
  %7 = getelementptr inbounds %struct.BoidSettings, ptr %0, i64 0, i32 18
  store float 5.000000e-01, ptr %7, align 8, !tbaa !83
  %8 = getelementptr inbounds %struct.BoidSettings, ptr %0, i64 0, i32 19
  store float 5.000000e-01, ptr %8, align 4, !tbaa !85
  %9 = getelementptr inbounds %struct.BoidSettings, ptr %0, i64 0, i32 20
  store float 1.000000e+00, ptr %9, align 8, !tbaa !88
  store i32 1, ptr %0, align 8, !tbaa !103
  %10 = getelementptr inbounds %struct.BoidSettings, ptr %0, i64 0, i32 2
  store float 3.000000e+00, ptr %10, align 8, !tbaa !111
  %11 = getelementptr inbounds %struct.BoidSettings, ptr %0, i64 0, i32 4
  store float 1.000000e+00, ptr %11, align 8, !tbaa !117
  %12 = getelementptr inbounds %struct.BoidSettings, ptr %0, i64 0, i32 5
  store float 1.000000e+00, ptr %12, align 4, !tbaa !120
  %13 = getelementptr inbounds %struct.BoidSettings, ptr %0, i64 0, i32 3
  store float 1.000000e+00, ptr %13, align 4, !tbaa !119
  %14 = getelementptr inbounds %struct.BoidSettings, ptr %0, i64 0, i32 6
  store float 1.000000e+00, ptr %14, align 8, !tbaa !79
  %15 = getelementptr inbounds %struct.BoidSettings, ptr %0, i64 0, i32 9
  store float 1.000000e+00, ptr %15, align 4, !tbaa !153
  %16 = getelementptr inbounds %struct.BoidSettings, ptr %0, i64 0, i32 7
  store float 2.000000e+00, ptr %16, align 4, !tbaa !154
  %17 = getelementptr inbounds %struct.BoidSettings, ptr %0, i64 0, i32 10
  store float 1.000000e+00, ptr %17, align 8, !tbaa !155
  %18 = getelementptr inbounds %struct.BoidSettings, ptr %0, i64 0, i32 8
  store float 0x3FB99999A0000000, ptr %18, align 8, !tbaa !156
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @boid_new_state(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %3 = tail call ptr %2(i64 noundef 128, ptr noundef nonnull @.str.6) #12
  %4 = getelementptr inbounds %struct.BoidSettings, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !157
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr %4, align 4, !tbaa !157
  %7 = getelementptr inbounds %struct.BoidState, ptr %3, i64 0, i32 6
  store i32 %5, ptr %7, align 8, !tbaa !60
  %8 = icmp eq i32 %5, 0
  %9 = getelementptr inbounds %struct.BoidState, ptr %3, i64 0, i32 5
  br i1 %8, label %12, label %10

10:                                               ; preds = %1
  %11 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %9, i64 noundef 32, ptr noundef nonnull @.str.7, i32 noundef %5) #12
  br label %13

12:                                               ; preds = %1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %9, ptr noundef nonnull align 1 dereferenceable(6) @.str.8, i64 6, i1 false) #12
  br label %13

13:                                               ; preds = %12, %10
  %14 = getelementptr inbounds %struct.BoidState, ptr %3, i64 0, i32 9
  store float 5.000000e-01, ptr %14, align 4, !tbaa !98
  %15 = getelementptr inbounds %struct.BoidState, ptr %3, i64 0, i32 12
  store float 1.000000e+00, ptr %15, align 8, !tbaa !158
  %16 = getelementptr inbounds %struct.BoidState, ptr %3, i64 0, i32 11
  store i32 -1, ptr %16, align 4, !tbaa !159
  ret ptr %3
}

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @boid_duplicate_state(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !44
  %4 = tail call ptr %3(ptr noundef %1) #12
  %5 = getelementptr inbounds %struct.BoidState, ptr %4, i64 0, i32 2
  %6 = getelementptr inbounds %struct.BoidState, ptr %1, i64 0, i32 2
  tail call void @BLI_duplicatelist(ptr noundef nonnull %5, ptr noundef nonnull %6) #12
  %7 = getelementptr inbounds %struct.BoidState, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.BoidState, ptr %1, i64 0, i32 3
  tail call void @BLI_duplicatelist(ptr noundef nonnull %7, ptr noundef nonnull %8) #12
  %9 = getelementptr inbounds %struct.BoidState, ptr %4, i64 0, i32 4
  %10 = getelementptr inbounds %struct.BoidState, ptr %1, i64 0, i32 4
  tail call void @BLI_duplicatelist(ptr noundef nonnull %9, ptr noundef nonnull %10) #12
  %11 = getelementptr inbounds %struct.BoidSettings, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !157
  %13 = add nsw i32 %12, 1
  store i32 %13, ptr %11, align 4, !tbaa !157
  %14 = getelementptr inbounds %struct.BoidState, ptr %4, i64 0, i32 6
  store i32 %12, ptr %14, align 8, !tbaa !60
  ret ptr %4
}

declare void @BLI_duplicatelist(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @boid_free_settings(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.BoidSettings, ptr %0, i64 0, i32 22
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3, %7
  %8 = phi ptr [ %12, %7 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.BoidState, ptr %8, i64 0, i32 2
  tail call void @BLI_freelistN(ptr noundef nonnull %9) #12
  %10 = getelementptr inbounds %struct.BoidState, ptr %8, i64 0, i32 3
  tail call void @BLI_freelistN(ptr noundef nonnull %10) #12
  %11 = getelementptr inbounds %struct.BoidState, ptr %8, i64 0, i32 4
  tail call void @BLI_freelistN(ptr noundef nonnull %11) #12
  %12 = load ptr, ptr %8, align 8, !tbaa !44
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %7, !llvm.loop !160

14:                                               ; preds = %7, %3
  tail call void @BLI_freelistN(ptr noundef nonnull %4) #12
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %15(ptr noundef nonnull %0) #12
  br label %16

16:                                               ; preds = %14, %1
  ret void
}

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @boid_copy_settings(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %22, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !44
  %5 = tail call ptr %4(ptr noundef nonnull %0) #12
  %6 = getelementptr inbounds %struct.BoidSettings, ptr %5, i64 0, i32 22
  %7 = getelementptr inbounds %struct.BoidSettings, ptr %0, i64 0, i32 22
  tail call void @BLI_duplicatelist(ptr noundef nonnull %6, ptr noundef nonnull %7) #12
  %8 = load ptr, ptr %7, align 8, !tbaa !44
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %3, %10
  %11 = phi ptr [ %20, %10 ], [ %8, %3 ]
  %12 = phi ptr [ %13, %10 ], [ %6, %3 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !44
  %14 = getelementptr inbounds %struct.BoidState, ptr %13, i64 0, i32 2
  %15 = getelementptr inbounds %struct.BoidState, ptr %11, i64 0, i32 2
  tail call void @BLI_duplicatelist(ptr noundef nonnull %14, ptr noundef nonnull %15) #12
  %16 = getelementptr inbounds %struct.BoidState, ptr %13, i64 0, i32 3
  %17 = getelementptr inbounds %struct.BoidState, ptr %11, i64 0, i32 3
  tail call void @BLI_duplicatelist(ptr noundef nonnull %16, ptr noundef nonnull %17) #12
  %18 = getelementptr inbounds %struct.BoidState, ptr %13, i64 0, i32 4
  %19 = getelementptr inbounds %struct.BoidState, ptr %11, i64 0, i32 4
  tail call void @BLI_duplicatelist(ptr noundef nonnull %18, ptr noundef nonnull %19) #12
  %20 = load ptr, ptr %11, align 8, !tbaa !44
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %10, !llvm.loop !161

22:                                               ; preds = %10, %3, %1
  %23 = phi ptr [ null, %1 ], [ %5, %3 ], [ %5, %10 ]
  ret ptr %23
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @boid_get_current_state(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.BoidSettings, ptr %0, i64 0, i32 22
  br label %3

3:                                                ; preds = %7, %1
  %4 = phi ptr [ %2, %1 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.BoidState, ptr %5, i64 0, i32 7
  %9 = load i32, ptr %8, align 4, !tbaa !162
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %3, label %12, !llvm.loop !163

12:                                               ; preds = %7, %3
  ret ptr %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rule_none(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #9 {
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @rule_goal_avoid(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #2 {
  %5 = alloca %struct.EffectedPoint, align 8
  %6 = alloca %struct.EffectorCache, align 8
  %7 = alloca %struct.EffectorData, align 8
  %8 = alloca %struct.EffectorData, align 8
  %9 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !55
  %11 = getelementptr inbounds %struct.ParticleSettings, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #12
  %15 = load ptr, ptr %1, align 8, !tbaa !72
  %16 = getelementptr inbounds %struct.ParticleSimulationData, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !73
  %18 = getelementptr inbounds %struct.ParticleSystem, ptr %17, i64 0, i32 42
  %19 = load ptr, ptr %18, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %8) #12
  %20 = getelementptr inbounds %struct.BoidRule, ptr %0, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !48
  %22 = icmp eq i32 %21, 2
  %23 = select i1 %22, float 1.000000e+00, float -1.000000e+00
  call void @pd_point_from_particle(ptr noundef %15, ptr noundef %3, ptr noundef %3, ptr noundef nonnull %5) #12
  %24 = icmp eq ptr %19, null
  br i1 %24, label %113, label %25

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.BoidRuleGoalAvoid, ptr %0, i64 0, i32 1
  %27 = getelementptr inbounds %struct.EffectorData, ptr %7, i64 0, i32 4
  %28 = getelementptr inbounds %struct.EffectorData, ptr %7, i64 0, i32 4
  br label %29

29:                                               ; preds = %25, %108
  %30 = phi float [ %109, %108 ], [ 0.000000e+00, %25 ]
  %31 = phi float [ %111, %108 ], [ 0.000000e+00, %25 ]
  %32 = phi ptr [ %112, %108 ], [ null, %25 ]
  %33 = phi ptr [ %34, %108 ], [ %19, %25 ]
  %34 = load ptr, ptr %33, align 8, !tbaa !44
  %35 = icmp eq ptr %34, null
  br i1 %35, label %113, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.EffectorCache, ptr %34, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !164
  %39 = getelementptr inbounds %struct.EffectorCache, ptr %34, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !166
  %41 = load ptr, ptr %26, align 8, !tbaa !167
  %42 = icmp eq ptr %41, null
  br i1 %42, label %70, label %43

43:                                               ; preds = %36
  %44 = load i32, ptr %20, align 8, !tbaa !48
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load ptr, ptr %14, align 8, !tbaa !110
  %48 = icmp eq ptr %41, %47
  br i1 %48, label %70, label %49

49:                                               ; preds = %46, %43
  %50 = icmp eq ptr %41, %38
  br i1 %50, label %51, label %108

51:                                               ; preds = %49
  %52 = call i32 @get_effector_data(ptr noundef nonnull %34, ptr noundef nonnull %7, ptr noundef nonnull %5, i32 noundef 0) #12
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %108, label %54

54:                                               ; preds = %51
  %55 = load ptr, ptr %39, align 8, !tbaa !166
  %56 = icmp eq ptr %55, null
  br i1 %56, label %108, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.PartDeflect, ptr %55, i64 0, i32 2
  %59 = load i16, ptr %58, align 2, !tbaa !169
  %60 = icmp eq i16 %59, 10
  br i1 %60, label %61, label %108

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.PartDeflect, ptr %40, i64 0, i32 9
  %63 = load float, ptr %62, align 4, !tbaa !171
  %64 = fmul float %23, %63
  %65 = load ptr, ptr %9, align 8, !tbaa !55
  %66 = getelementptr inbounds %struct.ParticleSettings, ptr %65, i64 0, i32 4
  %67 = load ptr, ptr %66, align 8, !tbaa !115
  %68 = call float @effector_falloff(ptr noundef nonnull %34, ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef %67) #12
  %69 = fmul float %64, %68
  br label %108

70:                                               ; preds = %46, %36
  %71 = load i32, ptr %20, align 8, !tbaa !48
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load ptr, ptr %14, align 8, !tbaa !110
  %75 = icmp eq ptr %38, %74
  br i1 %75, label %108, label %76

76:                                               ; preds = %73, %70
  %77 = getelementptr inbounds %struct.PartDeflect, ptr %40, i64 0, i32 2
  %78 = load i16, ptr %77, align 2, !tbaa !169
  %79 = icmp eq i16 %78, 10
  br i1 %79, label %80, label %108

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.PartDeflect, ptr %40, i64 0, i32 9
  %82 = load float, ptr %81, align 4, !tbaa !171
  %83 = fmul float %23, %82
  %84 = fcmp ogt float %83, 0.000000e+00
  br i1 %84, label %85, label %108

85:                                               ; preds = %80
  %86 = call i32 @get_effector_data(ptr noundef nonnull %34, ptr noundef nonnull %8, ptr noundef nonnull %5, i32 noundef 0) #12
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %108, label %88

88:                                               ; preds = %85
  %89 = load float, ptr %81, align 4, !tbaa !171
  %90 = fmul float %23, %89
  %91 = load ptr, ptr %9, align 8, !tbaa !55
  %92 = getelementptr inbounds %struct.ParticleSettings, ptr %91, i64 0, i32 4
  %93 = load ptr, ptr %92, align 8, !tbaa !115
  %94 = call float @effector_falloff(ptr noundef nonnull %34, ptr noundef nonnull %8, ptr noundef nonnull %5, ptr noundef %93) #12
  %95 = fmul float %90, %94
  %96 = fcmp oeq float %95, 0.000000e+00
  br i1 %96, label %108, label %97

97:                                               ; preds = %88
  %98 = fcmp ogt float %95, %31
  br i1 %98, label %99, label %101

99:                                               ; preds = %97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %7, ptr noundef nonnull align 8 dereferenceable(96) %8, i64 96, i1 false), !tbaa.struct !172
  %100 = load float, ptr %28, align 8, !tbaa !174
  br label %108

101:                                              ; preds = %97
  %102 = fcmp oeq float %95, %31
  %103 = load float, ptr %27, align 8
  %104 = fcmp olt float %103, %30
  %105 = select i1 %102, i1 %104, i1 false
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %7, ptr noundef nonnull align 8 dereferenceable(96) %8, i64 96, i1 false), !tbaa.struct !172
  %107 = load float, ptr %27, align 8, !tbaa !174
  br label %108

108:                                              ; preds = %49, %76, %80, %85, %73, %99, %106, %101, %88, %51, %54, %57, %61
  %109 = phi float [ %30, %61 ], [ %30, %57 ], [ %30, %54 ], [ %30, %51 ], [ %30, %49 ], [ %30, %73 ], [ %30, %85 ], [ %30, %80 ], [ %30, %76 ], [ %30, %88 ], [ %100, %99 ], [ %107, %106 ], [ %30, %101 ]
  %110 = phi i1 [ false, %61 ], [ false, %57 ], [ false, %54 ], [ false, %51 ], [ true, %49 ], [ true, %73 ], [ true, %85 ], [ true, %80 ], [ true, %76 ], [ true, %88 ], [ true, %99 ], [ true, %106 ], [ true, %101 ]
  %111 = phi float [ %69, %61 ], [ 1.000000e+00, %57 ], [ 1.000000e+00, %54 ], [ %31, %51 ], [ %31, %49 ], [ %31, %73 ], [ %31, %85 ], [ %31, %80 ], [ %31, %76 ], [ %31, %88 ], [ %95, %99 ], [ %31, %106 ], [ %31, %101 ]
  %112 = phi ptr [ %34, %61 ], [ %34, %57 ], [ %34, %54 ], [ %32, %51 ], [ %32, %49 ], [ %32, %73 ], [ %32, %85 ], [ %32, %80 ], [ %32, %76 ], [ %32, %88 ], [ %34, %99 ], [ %34, %106 ], [ %32, %101 ]
  br i1 %110, label %29, label %113, !llvm.loop !176

113:                                              ; preds = %108, %29, %4
  %114 = phi float [ 0.000000e+00, %4 ], [ %111, %108 ], [ %31, %29 ]
  %115 = phi ptr [ null, %4 ], [ %112, %108 ], [ %32, %29 ]
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %127

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.BoidRuleGoalAvoid, ptr %0, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !167
  %120 = icmp eq ptr %119, null
  br i1 %120, label %127, label %121

121:                                              ; preds = %117
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %6, i8 0, i64 120, i1 false)
  %122 = getelementptr inbounds %struct.EffectorCache, ptr %6, i64 0, i32 3
  store ptr %119, ptr %122, align 8, !tbaa !164
  %123 = load ptr, ptr %1, align 8, !tbaa !72
  %124 = load ptr, ptr %123, align 8, !tbaa !104
  %125 = getelementptr inbounds %struct.EffectorCache, ptr %6, i64 0, i32 2
  store ptr %124, ptr %125, align 8, !tbaa !177
  %126 = call i32 @get_effector_data(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %5, i32 noundef 0) #12
  br label %127

127:                                              ; preds = %121, %117, %113
  %128 = phi float [ 1.000000e+00, %121 ], [ %114, %117 ], [ %114, %113 ]
  %129 = phi ptr [ %6, %121 ], [ null, %117 ], [ %115, %113 ]
  %130 = load i32, ptr %20, align 8, !tbaa !48
  %131 = icmp eq i32 %130, 2
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.BoidRuleGoalAvoid, ptr %0, i64 0, i32 3
  %134 = load float, ptr %133, align 4, !tbaa !178
  br label %135

135:                                              ; preds = %127, %132
  %136 = phi float [ %134, %132 ], [ 0.000000e+00, %127 ]
  %137 = fcmp ogt float %128, %136
  br i1 %137, label %138, label %305

138:                                              ; preds = %135
  %139 = getelementptr inbounds %struct.EffectorCache, ptr %129, i64 0, i32 3
  %140 = load ptr, ptr %139, align 8, !tbaa !164
  %141 = getelementptr inbounds %struct.EffectorCache, ptr %129, i64 0, i32 6
  %142 = load ptr, ptr %141, align 8, !tbaa !166
  %143 = icmp eq ptr %142, null
  br i1 %143, label %148, label %144

144:                                              ; preds = %138
  %145 = getelementptr inbounds %struct.PartDeflect, ptr %142, i64 0, i32 4
  %146 = load i16, ptr %145, align 2, !tbaa !179
  %147 = icmp eq i16 %146, 2
  br label %148

148:                                              ; preds = %144, %138
  %149 = phi i1 [ false, %138 ], [ %147, %144 ]
  %150 = select i1 %149, float 1.000000e+00, float 0.000000e+00
  %151 = getelementptr inbounds %struct.BoidRuleGoalAvoid, ptr %0, i64 0, i32 2
  %152 = load i32, ptr %151, align 8, !tbaa !180
  %153 = and i32 %152, 1
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %197, label %155

155:                                              ; preds = %148
  %156 = call i32 @get_effector_data(ptr noundef %129, ptr noundef nonnull %7, ptr noundef nonnull %5, i32 noundef 1) #12
  %157 = getelementptr inbounds %struct.EffectorData, ptr %7, i64 0, i32 2
  %158 = getelementptr inbounds %struct.EffectorData, ptr %7, i64 0, i32 4
  %159 = load float, ptr %158, align 8, !tbaa !174
  %160 = load float, ptr %2, align 4, !tbaa !81
  %161 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 2
  %162 = load float, ptr %161, align 8, !tbaa !107
  %163 = fmul float %160, %162
  %164 = fdiv float %159, %163
  %165 = load float, ptr %157, align 8, !tbaa !53
  %166 = fmul float %165, %164
  store float %166, ptr %157, align 8, !tbaa !53
  %167 = getelementptr inbounds %struct.EffectorData, ptr %7, i64 0, i32 2, i64 1
  %168 = load float, ptr %167, align 4, !tbaa !53
  %169 = fmul float %164, %168
  store float %169, ptr %167, align 4, !tbaa !53
  %170 = getelementptr inbounds %struct.EffectorData, ptr %7, i64 0, i32 2, i64 2
  %171 = load float, ptr %170, align 8, !tbaa !53
  %172 = fmul float %164, %171
  store float %172, ptr %170, align 8, !tbaa !53
  %173 = load float, ptr %7, align 8, !tbaa !53
  %174 = fadd float %166, %173
  store float %174, ptr %7, align 8, !tbaa !53
  %175 = getelementptr inbounds float, ptr %7, i64 1
  %176 = load float, ptr %175, align 4, !tbaa !53
  %177 = fadd float %169, %176
  store float %177, ptr %175, align 4, !tbaa !53
  %178 = getelementptr inbounds float, ptr %7, i64 2
  %179 = load float, ptr %178, align 8, !tbaa !53
  %180 = fadd float %172, %179
  store float %180, ptr %178, align 8, !tbaa !53
  %181 = getelementptr inbounds %struct.EffectorData, ptr %7, i64 0, i32 3
  %182 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1
  %183 = load float, ptr %182, align 4, !tbaa !53
  %184 = fsub float %183, %174
  store float %184, ptr %181, align 4, !tbaa !53
  %185 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 0, i64 1
  %186 = load float, ptr %185, align 4, !tbaa !53
  %187 = fsub float %186, %177
  %188 = getelementptr inbounds %struct.EffectorData, ptr %7, i64 0, i32 3, i64 1
  store float %187, ptr %188, align 8, !tbaa !53
  %189 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 0, i64 2
  %190 = load float, ptr %189, align 4, !tbaa !53
  %191 = fsub float %190, %180
  %192 = getelementptr inbounds %struct.EffectorData, ptr %7, i64 0, i32 3, i64 2
  store float %191, ptr %192, align 4, !tbaa !53
  %193 = fmul float %187, %187
  %194 = call float @llvm.fmuladd.f32(float %184, float %184, float %193)
  %195 = call float @llvm.fmuladd.f32(float %191, float %191, float %194)
  %196 = call float @sqrtf(float noundef %195) #12
  store float %196, ptr %158, align 8, !tbaa !174
  br label %197

197:                                              ; preds = %155, %148
  %198 = load i32, ptr %20, align 8, !tbaa !48
  %199 = icmp eq i32 %198, 1
  br i1 %199, label %200, label %231

200:                                              ; preds = %197
  %201 = load i32, ptr %12, align 8, !tbaa !103
  %202 = and i32 %201, 4
  %203 = icmp ne i32 %202, 0
  %204 = select i1 %203, i1 %149, i1 false
  br i1 %204, label %205, label %231

205:                                              ; preds = %200
  %206 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 7
  %207 = load ptr, ptr %206, align 8, !tbaa !118
  %208 = icmp eq ptr %207, null
  br i1 %208, label %213, label %209

209:                                              ; preds = %205
  %210 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 10
  %211 = load float, ptr %210, align 8, !tbaa !181
  %212 = fcmp olt float %211, %128
  br i1 %212, label %213, label %255

213:                                              ; preds = %209, %205
  store ptr %140, ptr %206, align 8, !tbaa !118
  %214 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 8
  %215 = load float, ptr %7, align 8, !tbaa !53
  store float %215, ptr %214, align 4, !tbaa !53
  %216 = getelementptr inbounds float, ptr %7, i64 1
  %217 = load float, ptr %216, align 4, !tbaa !53
  %218 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 8, i64 1
  store float %217, ptr %218, align 4, !tbaa !53
  %219 = getelementptr inbounds float, ptr %7, i64 2
  %220 = load float, ptr %219, align 8, !tbaa !53
  %221 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 8, i64 2
  store float %220, ptr %221, align 4, !tbaa !53
  %222 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 9
  %223 = getelementptr inbounds %struct.EffectorData, ptr %7, i64 0, i32 1
  %224 = load float, ptr %223, align 4, !tbaa !53
  store float %224, ptr %222, align 4, !tbaa !53
  %225 = getelementptr inbounds %struct.EffectorData, ptr %7, i64 0, i32 1, i64 1
  %226 = load float, ptr %225, align 8, !tbaa !53
  %227 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 9, i64 1
  store float %226, ptr %227, align 4, !tbaa !53
  %228 = getelementptr inbounds %struct.EffectorData, ptr %7, i64 0, i32 1, i64 2
  %229 = load float, ptr %228, align 4, !tbaa !53
  %230 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 9, i64 2
  store float %229, ptr %230, align 4, !tbaa !53
  br label %255

231:                                              ; preds = %200, %197
  %232 = icmp eq i32 %198, 2
  br i1 %232, label %233, label %255

233:                                              ; preds = %231
  %234 = getelementptr inbounds %struct.BoidParticle, ptr %14, i64 0, i32 1, i32 3
  %235 = load i16, ptr %234, align 2, !tbaa !78
  %236 = icmp eq i16 %235, 2
  br i1 %236, label %237, label %255

237:                                              ; preds = %233
  %238 = getelementptr inbounds %struct.BoidRuleGoalAvoid, ptr %0, i64 0, i32 3
  %239 = load float, ptr %238, align 4, !tbaa !178
  %240 = fmul float %239, 2.000000e+00
  %241 = fcmp ogt float %128, %240
  br i1 %241, label %242, label %255

242:                                              ; preds = %237
  %243 = getelementptr inbounds %struct.EffectorData, ptr %7, i64 0, i32 3
  %244 = getelementptr inbounds %struct.BoidParticle, ptr %14, i64 0, i32 2
  %245 = load float, ptr %244, align 4, !tbaa !53
  %246 = fneg float %245
  store float %246, ptr %243, align 4, !tbaa !53
  %247 = getelementptr inbounds %struct.BoidParticle, ptr %14, i64 0, i32 2, i64 1
  %248 = load float, ptr %247, align 4, !tbaa !53
  %249 = fneg float %248
  %250 = getelementptr inbounds %struct.EffectorData, ptr %7, i64 0, i32 3, i64 1
  store float %249, ptr %250, align 8, !tbaa !53
  %251 = getelementptr inbounds %struct.BoidParticle, ptr %14, i64 0, i32 2, i64 2
  %252 = load float, ptr %251, align 4, !tbaa !53
  %253 = fneg float %252
  %254 = getelementptr inbounds %struct.EffectorData, ptr %7, i64 0, i32 3, i64 2
  store float %253, ptr %254, align 4, !tbaa !53
  br label %255

255:                                              ; preds = %231, %233, %237, %242, %209, %213
  %256 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5
  %257 = getelementptr inbounds %struct.EffectorData, ptr %7, i64 0, i32 3
  %258 = load float, ptr %257, align 4, !tbaa !53
  store float %258, ptr %256, align 4, !tbaa !53
  %259 = getelementptr inbounds %struct.EffectorData, ptr %7, i64 0, i32 3, i64 1
  %260 = load float, ptr %259, align 8, !tbaa !53
  %261 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5, i64 1
  store float %260, ptr %261, align 4, !tbaa !53
  %262 = getelementptr inbounds %struct.EffectorData, ptr %7, i64 0, i32 3, i64 2
  %263 = load float, ptr %262, align 4, !tbaa !53
  %264 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5, i64 2
  store float %263, ptr %264, align 4, !tbaa !53
  %265 = fmul float %23, %258
  store float %265, ptr %256, align 4, !tbaa !53
  %266 = fmul float %23, %260
  store float %266, ptr %261, align 4, !tbaa !53
  %267 = fmul float %23, %263
  store float %267, ptr %264, align 4, !tbaa !53
  %268 = load float, ptr %2, align 4, !tbaa !81
  %269 = fmul float %128, %268
  %270 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 6
  store float %269, ptr %270, align 8, !tbaa !101
  br i1 %199, label %271, label %305

271:                                              ; preds = %255
  %272 = getelementptr inbounds %struct.BoidSettings, ptr %12, i64 0, i32 2
  %273 = load float, ptr %272, align 8, !tbaa !111
  %274 = fcmp ogt float %273, 0.000000e+00
  br i1 %274, label %275, label %305

275:                                              ; preds = %271
  %276 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 1
  %277 = load float, ptr %276, align 4, !tbaa !53
  %278 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 1, i64 1
  %279 = load float, ptr %278, align 4, !tbaa !53
  %280 = fmul float %279, %279
  %281 = call float @llvm.fmuladd.f32(float %277, float %277, float %280)
  %282 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 1, i64 2
  %283 = load float, ptr %282, align 4, !tbaa !53
  %284 = call float @llvm.fmuladd.f32(float %283, float %283, float %281)
  %285 = call float @sqrtf(float noundef %284) #12
  %286 = fmul float %285, 2.000000e+00
  %287 = fcmp ogt float %286, 0.000000e+00
  br i1 %287, label %288, label %305

288:                                              ; preds = %275
  %289 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 13
  %290 = load float, ptr %289, align 4, !tbaa !109
  %291 = getelementptr inbounds %struct.BoidSettings, ptr %12, i64 0, i32 3
  %292 = load float, ptr %291, align 4, !tbaa !119
  %293 = fmul float %290, %292
  %294 = fmul float %150, %293
  %295 = getelementptr inbounds %struct.EffectorData, ptr %7, i64 0, i32 4
  %296 = load float, ptr %295, align 8, !tbaa !174
  %297 = fsub float %296, %294
  %298 = fcmp olt float %297, %286
  br i1 %298, label %299, label %305

299:                                              ; preds = %288
  %300 = fdiv float %297, %286
  %301 = load float, ptr %272, align 8, !tbaa !111
  %302 = call float @powf(float noundef %300, float noundef %301) #12
  %303 = load float, ptr %270, align 8, !tbaa !101
  %304 = fmul float %302, %303
  store float %304, ptr %270, align 8, !tbaa !101
  br label %305

305:                                              ; preds = %255, %271, %299, %288, %275, %135
  %306 = phi i32 [ 0, %135 ], [ 1, %275 ], [ 1, %288 ], [ 1, %299 ], [ 1, %271 ], [ 1, %255 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #12
  ret i32 %306
}

; Function Attrs: nounwind uwtable
define internal i32 @rule_avoid_collision(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #2 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.ParticleCollision, align 8
  %7 = alloca %struct.BVHTreeRayHit, align 4
  %8 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  store ptr null, ptr %5, align 8, !tbaa !44
  %9 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !57
  %11 = getelementptr inbounds %struct.BoidRuleAvoidCollision, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !182
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %158, label %15

15:                                               ; preds = %4
  %16 = load ptr, ptr %1, align 8, !tbaa !72
  %17 = getelementptr inbounds %struct.ParticleSimulationData, ptr %16, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !114
  %19 = icmp eq ptr %18, null
  br i1 %19, label %158, label %20

20:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 328, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #12
  %21 = getelementptr inbounds %struct.BoidValues, ptr %2, i64 0, i32 4
  %22 = load float, ptr %21, align 4, !tbaa !89
  %23 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 13
  %24 = load float, ptr %23, align 4, !tbaa !109
  %25 = fmul float %22, %24
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %6, i8 0, i64 328, i1 false)
  %26 = getelementptr inbounds %struct.ParticleCollision, ptr %6, i64 0, i32 18
  %27 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1
  %28 = load float, ptr %27, align 4, !tbaa !53
  store float %28, ptr %26, align 8, !tbaa !53
  %29 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 0, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !53
  %31 = getelementptr inbounds %struct.ParticleCollision, ptr %6, i64 0, i32 18, i64 1
  store float %30, ptr %31, align 4, !tbaa !53
  %32 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 0, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !53
  %34 = getelementptr inbounds %struct.ParticleCollision, ptr %6, i64 0, i32 18, i64 2
  store float %33, ptr %34, align 8, !tbaa !53
  %35 = getelementptr inbounds %struct.ParticleCollision, ptr %6, i64 0, i32 19
  %36 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 1
  %37 = load float, ptr %36, align 4, !tbaa !53
  %38 = fadd float %28, %37
  store float %38, ptr %35, align 4, !tbaa !53
  %39 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 1, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !53
  %41 = fadd float %30, %40
  %42 = getelementptr inbounds %struct.ParticleCollision, ptr %6, i64 0, i32 19, i64 1
  store float %41, ptr %42, align 8, !tbaa !53
  %43 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 1, i64 2
  %44 = load float, ptr %43, align 4, !tbaa !53
  %45 = fadd float %33, %44
  %46 = getelementptr inbounds %struct.ParticleCollision, ptr %6, i64 0, i32 19, i64 2
  store float %45, ptr %46, align 4, !tbaa !53
  %47 = fsub float %38, %28
  store float %47, ptr %8, align 4, !tbaa !53
  %48 = fsub float %41, %30
  %49 = getelementptr inbounds float, ptr %8, i64 1
  store float %48, ptr %49, align 4, !tbaa !53
  %50 = fsub float %45, %33
  %51 = getelementptr inbounds float, ptr %8, i64 2
  store float %50, ptr %51, align 4, !tbaa !53
  %52 = getelementptr inbounds %struct.BoidRuleAvoidCollision, ptr %0, i64 0, i32 2
  %53 = load float, ptr %52, align 4, !tbaa !143
  %54 = fmul float %47, %53
  store float %54, ptr %8, align 4, !tbaa !53
  %55 = fmul float %48, %53
  store float %55, ptr %49, align 4, !tbaa !53
  %56 = fmul float %50, %53
  store float %56, ptr %51, align 4, !tbaa !53
  %57 = getelementptr inbounds %struct.ParticleCollision, ptr %6, i64 0, i32 6
  store float 0.000000e+00, ptr %57, align 8, !tbaa !122
  store i32 -1, ptr %7, align 4, !tbaa !125
  %58 = fmul float %55, %55
  %59 = tail call float @llvm.fmuladd.f32(float %54, float %54, float %58)
  %60 = tail call float @llvm.fmuladd.f32(float %56, float %56, float %59)
  %61 = tail call float @sqrtf(float noundef %60) #12
  %62 = getelementptr inbounds %struct.ParticleCollision, ptr %6, i64 0, i32 11
  store float %61, ptr %62, align 4, !tbaa !127
  %63 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %7, i64 0, i32 3
  store float %61, ptr %63, align 4, !tbaa !128
  %64 = load ptr, ptr %1, align 8, !tbaa !72
  %65 = getelementptr inbounds %struct.ParticleSimulationData, ptr %64, i64 0, i32 4
  %66 = load ptr, ptr %65, align 8, !tbaa !114
  %67 = load ptr, ptr %66, align 8, !tbaa !44
  %68 = icmp eq ptr %67, null
  br i1 %68, label %90, label %69

69:                                               ; preds = %20
  %70 = getelementptr inbounds %struct.ParticleCollision, ptr %6, i64 0, i32 5
  br label %71

71:                                               ; preds = %69, %87
  %72 = phi ptr [ %67, %69 ], [ %88, %87 ]
  %73 = getelementptr inbounds %struct.ColliderCache, ptr %72, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !130
  %75 = load ptr, ptr %10, align 8, !tbaa !110
  %76 = icmp eq ptr %74, %75
  br i1 %76, label %87, label %77

77:                                               ; preds = %71
  store ptr %74, ptr %6, align 8, !tbaa !132
  %78 = getelementptr inbounds %struct.ColliderCache, ptr %72, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !133
  store ptr %79, ptr %70, align 8, !tbaa !134
  %80 = icmp eq ptr %79, null
  br i1 %80, label %87, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.CollisionModifierData, ptr %79, i64 0, i32 12
  %83 = load ptr, ptr %82, align 8, !tbaa !137
  %84 = icmp eq ptr %83, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %81
  %86 = call i32 @BLI_bvhtree_ray_cast(ptr noundef nonnull %83, ptr noundef nonnull %26, ptr noundef nonnull %8, float noundef %25, ptr noundef nonnull %7, ptr noundef nonnull @BKE_psys_collision_neartest_cb, ptr noundef nonnull %6) #12
  br label %87

87:                                               ; preds = %77, %81, %85, %71
  %88 = load ptr, ptr %72, align 8, !tbaa !44
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %71, !llvm.loop !183

90:                                               ; preds = %87, %20
  %91 = load i32, ptr %7, align 4, !tbaa !125
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %157, label %93

93:                                               ; preds = %90
  %94 = load float, ptr %63, align 4, !tbaa !128
  %95 = load float, ptr %62, align 4, !tbaa !127
  %96 = fdiv float %94, %95
  %97 = getelementptr inbounds %struct.ParticleCollision, ptr %6, i64 0, i32 13, i32 6
  %98 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 3
  %99 = load float, ptr %97, align 8, !tbaa !53
  %100 = load float, ptr %98, align 4, !tbaa !53
  %101 = getelementptr inbounds %struct.ParticleCollision, ptr %6, i64 0, i32 13, i32 6, i64 1
  %102 = load float, ptr %101, align 4, !tbaa !53
  %103 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 3, i64 1
  %104 = load float, ptr %103, align 4, !tbaa !53
  %105 = fmul float %102, %104
  %106 = call float @llvm.fmuladd.f32(float %99, float %100, float %105)
  %107 = getelementptr inbounds %struct.ParticleCollision, ptr %6, i64 0, i32 13, i32 6, i64 2
  %108 = load float, ptr %107, align 8, !tbaa !53
  %109 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 3, i64 2
  %110 = load float, ptr %109, align 4, !tbaa !53
  %111 = call float @llvm.fmuladd.f32(float %108, float %110, float %106)
  %112 = fcmp olt float %111, 0xBFEFAE1480000000
  br i1 %112, label %113, label %123

113:                                              ; preds = %93
  %114 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 11
  %115 = load ptr, ptr %114, align 8, !tbaa !112
  %116 = call float @BLI_rng_get_float(ptr noundef %115) #12
  %117 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5
  store float %116, ptr %117, align 4, !tbaa !53
  %118 = load ptr, ptr %114, align 8, !tbaa !112
  %119 = call float @BLI_rng_get_float(ptr noundef %118) #12
  %120 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5, i64 1
  store float %119, ptr %120, align 4, !tbaa !53
  %121 = load ptr, ptr %114, align 8, !tbaa !112
  %122 = call float @BLI_rng_get_float(ptr noundef %121) #12
  br label %126

123:                                              ; preds = %93
  %124 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5
  store float %99, ptr %124, align 4, !tbaa !53
  %125 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5, i64 1
  store float %102, ptr %125, align 4, !tbaa !53
  br label %126

126:                                              ; preds = %123, %113
  %127 = phi float [ %108, %123 ], [ %122, %113 ]
  %128 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5, i64 2
  store float %127, ptr %128, align 4, !tbaa !53
  %129 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5
  %130 = fsub float 1.000000e+00, %96
  %131 = load float, ptr %21, align 4, !tbaa !89
  %132 = fmul float %130, %131
  %133 = load float, ptr %23, align 4, !tbaa !109
  %134 = fmul float %132, %133
  %135 = load float, ptr %129, align 4, !tbaa !53
  %136 = fmul float %135, %134
  store float %136, ptr %129, align 4, !tbaa !53
  %137 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5, i64 1
  %138 = load float, ptr %137, align 4, !tbaa !53
  %139 = fmul float %134, %138
  store float %139, ptr %137, align 4, !tbaa !53
  %140 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5, i64 2
  %141 = load float, ptr %140, align 4, !tbaa !53
  %142 = fmul float %134, %141
  store float %142, ptr %140, align 4, !tbaa !53
  %143 = call float @sqrtf(float noundef %96) #12
  %144 = load float, ptr %36, align 4, !tbaa !53
  %145 = load float, ptr %39, align 4, !tbaa !53
  %146 = fmul float %145, %145
  %147 = call float @llvm.fmuladd.f32(float %144, float %144, float %146)
  %148 = load float, ptr %43, align 4, !tbaa !53
  %149 = call float @llvm.fmuladd.f32(float %148, float %148, float %147)
  %150 = call float @sqrtf(float noundef %149) #12
  %151 = fmul float %143, %150
  %152 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 6
  store float %151, ptr %152, align 8, !tbaa !101
  %153 = getelementptr inbounds %struct.BoidValues, ptr %2, i64 0, i32 3
  %154 = load float, ptr %153, align 4, !tbaa !87
  %155 = fcmp ogt float %151, %154
  %156 = select i1 %155, float %151, float %154
  store float %156, ptr %152, align 8, !tbaa !101
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 328, ptr nonnull %6) #12
  br label %474

157:                                              ; preds = %90
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 328, ptr nonnull %6) #12
  br label %158

158:                                              ; preds = %157, %15, %4
  %159 = load i32, ptr %11, align 8, !tbaa !182
  %160 = and i32 %159, 1
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %300, label %162

162:                                              ; preds = %158
  %163 = load ptr, ptr %1, align 8, !tbaa !72
  %164 = getelementptr inbounds %struct.ParticleSimulationData, ptr %163, i64 0, i32 2
  %165 = load ptr, ptr %164, align 8, !tbaa !73
  %166 = getelementptr inbounds %struct.ParticleSystem, ptr %165, i64 0, i32 46
  %167 = load ptr, ptr %166, align 8, !tbaa !184
  %168 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1
  %169 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 3
  %170 = getelementptr inbounds %struct.BoidRuleAvoidCollision, ptr %0, i64 0, i32 2
  %171 = load float, ptr %170, align 4, !tbaa !143
  %172 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 1
  %173 = load float, ptr %172, align 4, !tbaa !53
  %174 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 1, i64 1
  %175 = load float, ptr %174, align 4, !tbaa !53
  %176 = fmul float %175, %175
  %177 = call float @llvm.fmuladd.f32(float %173, float %173, float %176)
  %178 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 1, i64 2
  %179 = load float, ptr %178, align 4, !tbaa !53
  %180 = call float @llvm.fmuladd.f32(float %179, float %179, float %177)
  %181 = call float @sqrtf(float noundef %180) #12
  %182 = fmul float %171, %181
  %183 = call i32 @BLI_kdtree_range_search__normal(ptr noundef %167, ptr noundef nonnull %168, ptr noundef nonnull %169, ptr noundef nonnull %5, float noundef %182) #12
  %184 = icmp sgt i32 %183, 1
  br i1 %184, label %185, label %300

185:                                              ; preds = %162
  %186 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 0, i64 1
  %187 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 0, i64 2
  %188 = getelementptr inbounds %struct.BoidValues, ptr %2, i64 0, i32 4
  %189 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 13
  %190 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5
  %191 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5, i64 1
  %192 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5, i64 2
  %193 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 6
  %194 = zext nneg i32 %183 to i64
  br label %195

195:                                              ; preds = %185, %295
  %196 = phi i64 [ 1, %185 ], [ %298, %295 ]
  %197 = phi i32 [ 0, %185 ], [ %297, %295 ]
  %198 = phi float [ 2.000000e+00, %185 ], [ %296, %295 ]
  %199 = load float, ptr %168, align 4, !tbaa !53
  %200 = load float, ptr %186, align 4, !tbaa !53
  %201 = load float, ptr %187, align 4, !tbaa !53
  %202 = load float, ptr %172, align 4, !tbaa !53
  %203 = load float, ptr %174, align 4, !tbaa !53
  %204 = load float, ptr %178, align 4, !tbaa !53
  %205 = load ptr, ptr %1, align 8, !tbaa !72
  %206 = getelementptr inbounds %struct.ParticleSimulationData, ptr %205, i64 0, i32 2
  %207 = load ptr, ptr %206, align 8, !tbaa !73
  %208 = getelementptr inbounds %struct.ParticleSystem, ptr %207, i64 0, i32 3
  %209 = load ptr, ptr %208, align 8, !tbaa !185
  %210 = load ptr, ptr %5, align 8, !tbaa !44
  %211 = getelementptr inbounds %struct.KDTreeNearest, ptr %210, i64 %196
  %212 = load i32, ptr %211, align 4, !tbaa !186
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.ParticleData, ptr %209, i64 %213, i32 1
  %215 = load float, ptr %214, align 4, !tbaa !53
  %216 = getelementptr inbounds float, ptr %214, i64 1
  %217 = load float, ptr %216, align 4, !tbaa !53
  %218 = getelementptr inbounds float, ptr %214, i64 2
  %219 = load float, ptr %218, align 4, !tbaa !53
  %220 = getelementptr inbounds %struct.ParticleData, ptr %209, i64 %213, i32 1, i32 1
  %221 = load float, ptr %220, align 4, !tbaa !53
  %222 = getelementptr inbounds float, ptr %220, i64 1
  %223 = load float, ptr %222, align 4, !tbaa !53
  %224 = getelementptr inbounds float, ptr %220, i64 2
  %225 = load float, ptr %224, align 4, !tbaa !53
  %226 = fsub float %202, %221
  %227 = fsub float %203, %223
  %228 = fsub float %204, %225
  %229 = fmul float %227, %227
  %230 = call float @llvm.fmuladd.f32(float %226, float %226, float %229)
  %231 = call float @llvm.fmuladd.f32(float %228, float %228, float %230)
  %232 = fcmp une float %231, 0.000000e+00
  br i1 %232, label %233, label %295

233:                                              ; preds = %195
  %234 = fsub float %201, %219
  %235 = fsub float %200, %217
  %236 = fsub float %199, %215
  %237 = fmul float %235, %227
  %238 = call float @llvm.fmuladd.f32(float %236, float %226, float %237)
  %239 = call float @llvm.fmuladd.f32(float %234, float %228, float %238)
  %240 = fneg float %239
  %241 = fdiv float %240, %231
  %242 = fcmp ogt float %241, 0.000000e+00
  %243 = fcmp olt float %241, %198
  %244 = select i1 %242, i1 %243, i1 false
  br i1 %244, label %245, label %295

245:                                              ; preds = %233
  %246 = call float @llvm.fmuladd.f32(float %202, float %241, float %199)
  %247 = call float @llvm.fmuladd.f32(float %203, float %241, float %200)
  %248 = call float @llvm.fmuladd.f32(float %204, float %241, float %201)
  %249 = call float @llvm.fmuladd.f32(float %221, float %241, float %215)
  %250 = call float @llvm.fmuladd.f32(float %223, float %241, float %217)
  %251 = call float @llvm.fmuladd.f32(float %225, float %241, float %219)
  %252 = fsub float %249, %246
  %253 = fsub float %250, %247
  %254 = fsub float %251, %248
  %255 = fmul float %253, %253
  %256 = call float @llvm.fmuladd.f32(float %252, float %252, float %255)
  %257 = call float @llvm.fmuladd.f32(float %254, float %254, float %256)
  %258 = fcmp ogt float %257, 0x38AA95A5C0000000
  br i1 %258, label %259, label %265

259:                                              ; preds = %245
  %260 = call float @sqrtf(float noundef %257) #12
  %261 = fdiv float 1.000000e+00, %260
  %262 = fmul float %252, %261
  %263 = fmul float %253, %261
  %264 = fmul float %254, %261
  br label %265

265:                                              ; preds = %245, %259
  %266 = phi float [ %262, %259 ], [ 0.000000e+00, %245 ]
  %267 = phi float [ %263, %259 ], [ 0.000000e+00, %245 ]
  %268 = phi float [ %264, %259 ], [ 0.000000e+00, %245 ]
  %269 = phi float [ %260, %259 ], [ 0.000000e+00, %245 ]
  %270 = load float, ptr %188, align 4, !tbaa !89
  %271 = fmul float %270, 2.000000e+00
  %272 = load float, ptr %189, align 4, !tbaa !109
  %273 = fmul float %271, %272
  %274 = fcmp olt float %269, %273
  br i1 %274, label %275, label %295

275:                                              ; preds = %265
  %276 = fmul float %203, %203
  %277 = call float @llvm.fmuladd.f32(float %202, float %202, float %276)
  %278 = call float @llvm.fmuladd.f32(float %204, float %204, float %277)
  %279 = call float @sqrtf(float noundef %278) #12
  %280 = fmul float %266, %279
  %281 = fmul float %267, %279
  %282 = fmul float %268, %279
  %283 = fsub float 2.000000e+00, %241
  %284 = fmul float %283, 5.000000e-01
  %285 = fmul float %284, %280
  %286 = fmul float %284, %281
  %287 = fmul float %284, %282
  %288 = fsub float %202, %285
  store float %288, ptr %190, align 4, !tbaa !53
  %289 = fsub float %203, %286
  store float %289, ptr %191, align 4, !tbaa !53
  %290 = fsub float %204, %287
  store float %290, ptr %192, align 4, !tbaa !53
  %291 = fmul float %289, %289
  %292 = call float @llvm.fmuladd.f32(float %288, float %288, float %291)
  %293 = call float @llvm.fmuladd.f32(float %290, float %290, float %292)
  %294 = call float @sqrtf(float noundef %293) #12
  store float %294, ptr %193, align 8, !tbaa !101
  br label %295

295:                                              ; preds = %195, %265, %275, %233
  %296 = phi float [ %241, %275 ], [ %198, %265 ], [ %198, %233 ], [ %198, %195 ]
  %297 = phi i32 [ 1, %275 ], [ %197, %265 ], [ %197, %233 ], [ %197, %195 ]
  %298 = add nuw nsw i64 %196, 1
  %299 = icmp eq i64 %298, %194
  br i1 %299, label %300, label %195, !llvm.loop !188

300:                                              ; preds = %295, %162, %158
  %301 = phi float [ 2.000000e+00, %162 ], [ 2.000000e+00, %158 ], [ %296, %295 ]
  %302 = phi i32 [ 0, %162 ], [ 0, %158 ], [ %297, %295 ]
  %303 = load ptr, ptr %5, align 8, !tbaa !44
  %304 = icmp eq ptr %303, null
  br i1 %304, label %307, label %305

305:                                              ; preds = %300
  %306 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %306(ptr noundef nonnull %303) #12
  store ptr null, ptr %5, align 8, !tbaa !44
  br label %307

307:                                              ; preds = %305, %300
  %308 = load ptr, ptr %1, align 8, !tbaa !72
  %309 = getelementptr inbounds %struct.ParticleSimulationData, ptr %308, i64 0, i32 2
  %310 = load ptr, ptr %309, align 8, !tbaa !73
  %311 = getelementptr inbounds %struct.ParticleSystem, ptr %310, i64 0, i32 17
  %312 = load ptr, ptr %311, align 8, !tbaa !44
  %313 = icmp eq ptr %312, null
  br i1 %313, label %468, label %314

314:                                              ; preds = %307
  %315 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1
  %316 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 3
  %317 = getelementptr inbounds %struct.BoidRuleAvoidCollision, ptr %0, i64 0, i32 2
  %318 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 1
  %319 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 1, i64 1
  %320 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 1, i64 2
  %321 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 0, i64 1
  %322 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 0, i64 2
  %323 = getelementptr inbounds %struct.BoidValues, ptr %2, i64 0, i32 4
  %324 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 13
  %325 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5
  %326 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5, i64 1
  %327 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5, i64 2
  %328 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 6
  br label %329

329:                                              ; preds = %314, %463
  %330 = phi ptr [ %312, %314 ], [ %466, %463 ]
  %331 = phi i32 [ %302, %314 ], [ %465, %463 ]
  %332 = phi float [ %301, %314 ], [ %464, %463 ]
  %333 = load ptr, ptr %1, align 8, !tbaa !72
  %334 = getelementptr inbounds %struct.ParticleSimulationData, ptr %333, i64 0, i32 1
  %335 = load ptr, ptr %334, align 8, !tbaa !189
  %336 = call ptr @psys_get_target_system(ptr noundef %335, ptr noundef nonnull %330) #12
  %337 = icmp eq ptr %336, null
  br i1 %337, label %463, label %338

338:                                              ; preds = %329
  %339 = getelementptr inbounds %struct.ParticleSystem, ptr %336, i64 0, i32 46
  %340 = load ptr, ptr %339, align 8, !tbaa !184
  %341 = load float, ptr %317, align 4, !tbaa !143
  %342 = load float, ptr %318, align 4, !tbaa !53
  %343 = load float, ptr %319, align 4, !tbaa !53
  %344 = fmul float %343, %343
  %345 = call float @llvm.fmuladd.f32(float %342, float %342, float %344)
  %346 = load float, ptr %320, align 4, !tbaa !53
  %347 = call float @llvm.fmuladd.f32(float %346, float %346, float %345)
  %348 = call float @sqrtf(float noundef %347) #12
  %349 = fmul float %341, %348
  %350 = call i32 @BLI_kdtree_range_search__normal(ptr noundef %340, ptr noundef nonnull %315, ptr noundef nonnull %316, ptr noundef nonnull %5, float noundef %349) #12
  %351 = icmp sgt i32 %350, 0
  br i1 %351, label %352, label %456

352:                                              ; preds = %338
  %353 = getelementptr inbounds %struct.ParticleSystem, ptr %336, i64 0, i32 3
  %354 = zext nneg i32 %350 to i64
  br label %355

355:                                              ; preds = %352, %451
  %356 = phi i64 [ 0, %352 ], [ %454, %451 ]
  %357 = phi i32 [ %331, %352 ], [ %453, %451 ]
  %358 = phi float [ %332, %352 ], [ %452, %451 ]
  %359 = load float, ptr %315, align 4, !tbaa !53
  %360 = load float, ptr %321, align 4, !tbaa !53
  %361 = load float, ptr %322, align 4, !tbaa !53
  %362 = load float, ptr %318, align 4, !tbaa !53
  %363 = load float, ptr %319, align 4, !tbaa !53
  %364 = load float, ptr %320, align 4, !tbaa !53
  %365 = load ptr, ptr %353, align 8, !tbaa !185
  %366 = load ptr, ptr %5, align 8, !tbaa !44
  %367 = getelementptr inbounds %struct.KDTreeNearest, ptr %366, i64 %356
  %368 = load i32, ptr %367, align 4, !tbaa !186
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds %struct.ParticleData, ptr %365, i64 %369, i32 1
  %371 = load float, ptr %370, align 4, !tbaa !53
  %372 = getelementptr inbounds float, ptr %370, i64 1
  %373 = load float, ptr %372, align 4, !tbaa !53
  %374 = getelementptr inbounds float, ptr %370, i64 2
  %375 = load float, ptr %374, align 4, !tbaa !53
  %376 = getelementptr inbounds %struct.ParticleData, ptr %365, i64 %369, i32 1, i32 1
  %377 = load float, ptr %376, align 4, !tbaa !53
  %378 = getelementptr inbounds float, ptr %376, i64 1
  %379 = load float, ptr %378, align 4, !tbaa !53
  %380 = getelementptr inbounds float, ptr %376, i64 2
  %381 = load float, ptr %380, align 4, !tbaa !53
  %382 = fsub float %362, %377
  %383 = fsub float %363, %379
  %384 = fsub float %364, %381
  %385 = fmul float %383, %383
  %386 = call float @llvm.fmuladd.f32(float %382, float %382, float %385)
  %387 = call float @llvm.fmuladd.f32(float %384, float %384, float %386)
  %388 = fcmp une float %387, 0.000000e+00
  br i1 %388, label %389, label %451

389:                                              ; preds = %355
  %390 = fsub float %361, %375
  %391 = fsub float %360, %373
  %392 = fsub float %359, %371
  %393 = fmul float %391, %383
  %394 = call float @llvm.fmuladd.f32(float %392, float %382, float %393)
  %395 = call float @llvm.fmuladd.f32(float %390, float %384, float %394)
  %396 = fneg float %395
  %397 = fdiv float %396, %387
  %398 = fcmp ogt float %397, 0.000000e+00
  %399 = fcmp olt float %397, %358
  %400 = select i1 %398, i1 %399, i1 false
  br i1 %400, label %401, label %451

401:                                              ; preds = %389
  %402 = call float @llvm.fmuladd.f32(float %362, float %397, float %359)
  %403 = call float @llvm.fmuladd.f32(float %363, float %397, float %360)
  %404 = call float @llvm.fmuladd.f32(float %364, float %397, float %361)
  %405 = call float @llvm.fmuladd.f32(float %377, float %397, float %371)
  %406 = call float @llvm.fmuladd.f32(float %379, float %397, float %373)
  %407 = call float @llvm.fmuladd.f32(float %381, float %397, float %375)
  %408 = fsub float %405, %402
  %409 = fsub float %406, %403
  %410 = fsub float %407, %404
  %411 = fmul float %409, %409
  %412 = call float @llvm.fmuladd.f32(float %408, float %408, float %411)
  %413 = call float @llvm.fmuladd.f32(float %410, float %410, float %412)
  %414 = fcmp ogt float %413, 0x38AA95A5C0000000
  br i1 %414, label %415, label %421

415:                                              ; preds = %401
  %416 = call float @sqrtf(float noundef %413) #12
  %417 = fdiv float 1.000000e+00, %416
  %418 = fmul float %408, %417
  %419 = fmul float %409, %417
  %420 = fmul float %410, %417
  br label %421

421:                                              ; preds = %401, %415
  %422 = phi float [ %418, %415 ], [ 0.000000e+00, %401 ]
  %423 = phi float [ %419, %415 ], [ 0.000000e+00, %401 ]
  %424 = phi float [ %420, %415 ], [ 0.000000e+00, %401 ]
  %425 = phi float [ %416, %415 ], [ 0.000000e+00, %401 ]
  %426 = load float, ptr %323, align 4, !tbaa !89
  %427 = fmul float %426, 2.000000e+00
  %428 = load float, ptr %324, align 4, !tbaa !109
  %429 = fmul float %427, %428
  %430 = fcmp olt float %425, %429
  br i1 %430, label %431, label %451

431:                                              ; preds = %421
  %432 = fmul float %363, %363
  %433 = call float @llvm.fmuladd.f32(float %362, float %362, float %432)
  %434 = call float @llvm.fmuladd.f32(float %364, float %364, float %433)
  %435 = call float @sqrtf(float noundef %434) #12
  %436 = fmul float %422, %435
  %437 = fmul float %423, %435
  %438 = fmul float %424, %435
  %439 = fsub float 2.000000e+00, %397
  %440 = fmul float %439, 5.000000e-01
  %441 = fmul float %440, %436
  %442 = fmul float %440, %437
  %443 = fmul float %440, %438
  %444 = fsub float %362, %441
  store float %444, ptr %325, align 4, !tbaa !53
  %445 = fsub float %363, %442
  store float %445, ptr %326, align 4, !tbaa !53
  %446 = fsub float %364, %443
  store float %446, ptr %327, align 4, !tbaa !53
  %447 = fmul float %445, %445
  %448 = call float @llvm.fmuladd.f32(float %444, float %444, float %447)
  %449 = call float @llvm.fmuladd.f32(float %446, float %446, float %448)
  %450 = call float @sqrtf(float noundef %449) #12
  store float %450, ptr %328, align 8, !tbaa !101
  br label %451

451:                                              ; preds = %355, %421, %431, %389
  %452 = phi float [ %397, %431 ], [ %358, %421 ], [ %358, %389 ], [ %358, %355 ]
  %453 = phi i32 [ 1, %431 ], [ %357, %421 ], [ %357, %389 ], [ %357, %355 ]
  %454 = add nuw nsw i64 %356, 1
  %455 = icmp eq i64 %454, %354
  br i1 %455, label %456, label %355, !llvm.loop !190

456:                                              ; preds = %451, %338
  %457 = phi float [ %332, %338 ], [ %452, %451 ]
  %458 = phi i32 [ %331, %338 ], [ %453, %451 ]
  %459 = load ptr, ptr %5, align 8, !tbaa !44
  %460 = icmp eq ptr %459, null
  br i1 %460, label %463, label %461

461:                                              ; preds = %456
  %462 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %462(ptr noundef nonnull %459) #12
  store ptr null, ptr %5, align 8, !tbaa !44
  br label %463

463:                                              ; preds = %456, %461, %329
  %464 = phi float [ %457, %461 ], [ %457, %456 ], [ %332, %329 ]
  %465 = phi i32 [ %458, %461 ], [ %458, %456 ], [ %331, %329 ]
  %466 = load ptr, ptr %330, align 8, !tbaa !44
  %467 = icmp eq ptr %466, null
  br i1 %467, label %468, label %329, !llvm.loop !191

468:                                              ; preds = %463, %307
  %469 = phi i32 [ %302, %307 ], [ %465, %463 ]
  %470 = load ptr, ptr %5, align 8, !tbaa !44
  %471 = icmp eq ptr %470, null
  br i1 %471, label %474, label %472

472:                                              ; preds = %468
  %473 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %473(ptr noundef nonnull %470) #12
  br label %474

474:                                              ; preds = %126, %468, %472
  %475 = phi i32 [ 1, %126 ], [ %469, %472 ], [ %469, %468 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  ret i32 %475
}

; Function Attrs: nounwind uwtable
define internal i32 @rule_separate(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #2 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  store ptr null, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.BoidValues, ptr %2, i64 0, i32 4
  %7 = load float, ptr %6, align 4, !tbaa !89
  %8 = fmul float %7, 2.000000e+00
  %9 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 13
  %10 = load float, ptr %9, align 4, !tbaa !109
  %11 = tail call float @llvm.fmuladd.f32(float %8, float %10, float 1.000000e+00)
  %12 = load ptr, ptr %1, align 8, !tbaa !72
  %13 = getelementptr inbounds %struct.ParticleSimulationData, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !73
  %15 = getelementptr inbounds %struct.ParticleSystem, ptr %14, i64 0, i32 46
  %16 = load ptr, ptr %15, align 8, !tbaa !184
  %17 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1
  %18 = fmul float %8, %10
  %19 = call i32 @BLI_kdtree_range_search__normal(ptr noundef %16, ptr noundef nonnull %17, ptr noundef null, ptr noundef nonnull %5, float noundef %18) #12
  %20 = icmp sgt i32 %19, 1
  br i1 %20, label %21, label %70

21:                                               ; preds = %4
  %22 = load ptr, ptr %5, align 8, !tbaa !44
  %23 = getelementptr inbounds %struct.KDTreeNearest, ptr %22, i64 1, i32 1
  %24 = load float, ptr %23, align 4, !tbaa !192
  %25 = fcmp une float %24, 0.000000e+00
  br i1 %25, label %26, label %70

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.KDTreeNearest, ptr %22, i64 1
  %28 = load ptr, ptr %1, align 8, !tbaa !72
  %29 = getelementptr inbounds %struct.ParticleSimulationData, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !73
  %31 = getelementptr inbounds %struct.ParticleSystem, ptr %30, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !185
  %33 = load i32, ptr %27, align 4, !tbaa !186
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.ParticleData, ptr %32, i64 %34
  %36 = load float, ptr %17, align 4, !tbaa !53
  %37 = load float, ptr %35, align 4, !tbaa !53
  %38 = fsub float %36, %37
  %39 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 0, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !53
  %41 = getelementptr inbounds float, ptr %35, i64 1
  %42 = load float, ptr %41, align 4, !tbaa !53
  %43 = fsub float %40, %42
  %44 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 0, i64 2
  %45 = load float, ptr %44, align 4, !tbaa !53
  %46 = getelementptr inbounds float, ptr %35, i64 2
  %47 = load float, ptr %46, align 4, !tbaa !53
  %48 = fsub float %45, %47
  %49 = load float, ptr %6, align 4, !tbaa !89
  %50 = fmul float %49, 2.000000e+00
  %51 = load float, ptr %9, align 4, !tbaa !109
  %52 = fneg float %24
  %53 = call float @llvm.fmuladd.f32(float %50, float %51, float %52)
  %54 = fdiv float %53, %24
  %55 = fmul float %38, %54
  %56 = fmul float %43, %54
  %57 = fmul float %48, %54
  %58 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5
  %59 = load float, ptr %58, align 4, !tbaa !53
  %60 = fadd float %59, %55
  store float %60, ptr %58, align 4, !tbaa !53
  %61 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5, i64 1
  %62 = load float, ptr %61, align 4, !tbaa !53
  %63 = fadd float %62, %56
  store float %63, ptr %61, align 4, !tbaa !53
  %64 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5, i64 2
  %65 = load float, ptr %64, align 4, !tbaa !53
  %66 = fadd float %57, %65
  store float %66, ptr %64, align 4, !tbaa !53
  %67 = load float, ptr %2, align 4, !tbaa !81
  %68 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 6
  store float %67, ptr %68, align 8, !tbaa !101
  %69 = load float, ptr %23, align 4, !tbaa !192
  br label %70

70:                                               ; preds = %26, %21, %4
  %71 = phi float [ %69, %26 ], [ %11, %21 ], [ %11, %4 ]
  %72 = phi i32 [ 1, %26 ], [ 0, %21 ], [ 0, %4 ]
  %73 = load ptr, ptr %5, align 8, !tbaa !44
  %74 = icmp eq ptr %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %70
  %76 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %76(ptr noundef nonnull %73) #12
  store ptr null, ptr %5, align 8, !tbaa !44
  br label %77

77:                                               ; preds = %75, %70
  %78 = load ptr, ptr %1, align 8, !tbaa !72
  %79 = getelementptr inbounds %struct.ParticleSimulationData, ptr %78, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !73
  %81 = getelementptr inbounds %struct.ParticleSystem, ptr %80, i64 0, i32 17
  %82 = load ptr, ptr %81, align 8, !tbaa !44
  %83 = icmp eq ptr %82, null
  br i1 %83, label %158, label %84

84:                                               ; preds = %77
  %85 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 0, i64 1
  %86 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 0, i64 2
  %87 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5
  %88 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5, i64 1
  %89 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5, i64 2
  %90 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 6
  br label %91

91:                                               ; preds = %84, %153
  %92 = phi ptr [ %82, %84 ], [ %156, %153 ]
  %93 = phi i32 [ %72, %84 ], [ %155, %153 ]
  %94 = phi float [ %71, %84 ], [ %154, %153 ]
  %95 = load ptr, ptr %1, align 8, !tbaa !72
  %96 = getelementptr inbounds %struct.ParticleSimulationData, ptr %95, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !189
  %98 = call ptr @psys_get_target_system(ptr noundef %97, ptr noundef nonnull %92) #12
  %99 = icmp eq ptr %98, null
  br i1 %99, label %153, label %100

100:                                              ; preds = %91
  %101 = getelementptr inbounds %struct.ParticleSystem, ptr %98, i64 0, i32 46
  %102 = load ptr, ptr %101, align 8, !tbaa !184
  %103 = load float, ptr %6, align 4, !tbaa !89
  %104 = fmul float %103, 2.000000e+00
  %105 = load float, ptr %9, align 4, !tbaa !109
  %106 = fmul float %104, %105
  %107 = call i32 @BLI_kdtree_range_search__normal(ptr noundef %102, ptr noundef nonnull %17, ptr noundef null, ptr noundef nonnull %5, float noundef %106) #12
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %146

109:                                              ; preds = %100
  %110 = load ptr, ptr %5, align 8, !tbaa !44
  %111 = getelementptr inbounds %struct.KDTreeNearest, ptr %110, i64 0, i32 1
  %112 = load float, ptr %111, align 4, !tbaa !192
  %113 = fcmp olt float %112, %94
  br i1 %113, label %114, label %146

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.KDTreeNearest, ptr %110, i64 0, i32 2
  %116 = load float, ptr %17, align 4, !tbaa !53
  %117 = load float, ptr %115, align 4, !tbaa !53
  %118 = fsub float %116, %117
  %119 = load float, ptr %85, align 4, !tbaa !53
  %120 = getelementptr inbounds %struct.KDTreeNearest, ptr %110, i64 0, i32 2, i64 1
  %121 = load float, ptr %120, align 4, !tbaa !53
  %122 = fsub float %119, %121
  %123 = load float, ptr %86, align 4, !tbaa !53
  %124 = getelementptr inbounds %struct.KDTreeNearest, ptr %110, i64 0, i32 2, i64 2
  %125 = load float, ptr %124, align 4, !tbaa !53
  %126 = fsub float %123, %125
  %127 = load float, ptr %6, align 4, !tbaa !89
  %128 = fmul float %127, 2.000000e+00
  %129 = load float, ptr %9, align 4, !tbaa !109
  %130 = fneg float %112
  %131 = call float @llvm.fmuladd.f32(float %128, float %129, float %130)
  %132 = getelementptr inbounds %struct.KDTreeNearest, ptr %110, i64 1, i32 1
  %133 = load float, ptr %132, align 4, !tbaa !192
  %134 = fdiv float %131, %133
  %135 = fmul float %118, %134
  %136 = fmul float %122, %134
  %137 = fmul float %126, %134
  %138 = load float, ptr %87, align 4, !tbaa !53
  %139 = fadd float %138, %135
  store float %139, ptr %87, align 4, !tbaa !53
  %140 = load float, ptr %88, align 4, !tbaa !53
  %141 = fadd float %136, %140
  store float %141, ptr %88, align 4, !tbaa !53
  %142 = load float, ptr %89, align 4, !tbaa !53
  %143 = fadd float %137, %142
  store float %143, ptr %89, align 4, !tbaa !53
  %144 = load float, ptr %2, align 4, !tbaa !81
  store float %144, ptr %90, align 8, !tbaa !101
  %145 = load float, ptr %111, align 4, !tbaa !192
  br label %146

146:                                              ; preds = %114, %109, %100
  %147 = phi float [ %145, %114 ], [ %94, %109 ], [ %94, %100 ]
  %148 = phi i32 [ 1, %114 ], [ %93, %109 ], [ %93, %100 ]
  %149 = load ptr, ptr %5, align 8, !tbaa !44
  %150 = icmp eq ptr %149, null
  br i1 %150, label %153, label %151

151:                                              ; preds = %146
  %152 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %152(ptr noundef nonnull %149) #12
  store ptr null, ptr %5, align 8, !tbaa !44
  br label %153

153:                                              ; preds = %146, %151, %91
  %154 = phi float [ %147, %151 ], [ %147, %146 ], [ %94, %91 ]
  %155 = phi i32 [ %148, %151 ], [ %148, %146 ], [ %93, %91 ]
  %156 = load ptr, ptr %92, align 8, !tbaa !44
  %157 = icmp eq ptr %156, null
  br i1 %157, label %158, label %91, !llvm.loop !193

158:                                              ; preds = %153, %77
  %159 = phi i32 [ %72, %77 ], [ %155, %153 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  ret i32 %159
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @rule_flock(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr nocapture readnone %2, ptr noundef %3) #2 {
  %5 = alloca [11 x %struct.KDTreeNearest], align 16
  call void @llvm.lifetime.start.p0(i64 220, ptr nonnull %5) #12
  %6 = load ptr, ptr %1, align 8, !tbaa !72
  %7 = getelementptr inbounds %struct.ParticleSimulationData, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !73
  %9 = getelementptr inbounds %struct.ParticleSystem, ptr %8, i64 0, i32 46
  %10 = load ptr, ptr %9, align 8, !tbaa !184
  %11 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1
  %12 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 3
  %13 = call i32 @BLI_kdtree_find_nearest_n__normal(ptr noundef %10, ptr noundef %3, ptr noundef nonnull %12, ptr noundef nonnull %5, i32 noundef 11) #12
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %97

15:                                               ; preds = %4
  %16 = load ptr, ptr %1, align 8, !tbaa !72
  %17 = getelementptr inbounds %struct.ParticleSimulationData, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !73
  %19 = getelementptr inbounds %struct.ParticleSystem, ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !185
  %21 = zext nneg i32 %13 to i64
  br label %22

22:                                               ; preds = %15, %22
  %23 = phi i64 [ 1, %15 ], [ %51, %22 ]
  %24 = phi float [ 0.000000e+00, %15 ], [ %41, %22 ]
  %25 = phi float [ 0.000000e+00, %15 ], [ %38, %22 ]
  %26 = phi float [ 0.000000e+00, %15 ], [ %35, %22 ]
  %27 = phi float [ 0.000000e+00, %15 ], [ %50, %22 ]
  %28 = phi float [ 0.000000e+00, %15 ], [ %47, %22 ]
  %29 = phi float [ 0.000000e+00, %15 ], [ %44, %22 ]
  %30 = getelementptr inbounds [11 x %struct.KDTreeNearest], ptr %5, i64 0, i64 %23
  %31 = load i32, ptr %30, align 4, !tbaa !186
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.ParticleData, ptr %20, i64 %32, i32 1
  %34 = load float, ptr %33, align 4, !tbaa !53
  %35 = fadd float %26, %34
  %36 = getelementptr inbounds float, ptr %33, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !53
  %38 = fadd float %25, %37
  %39 = getelementptr inbounds float, ptr %33, i64 2
  %40 = load float, ptr %39, align 4, !tbaa !53
  %41 = fadd float %24, %40
  %42 = getelementptr inbounds %struct.ParticleData, ptr %20, i64 %32, i32 1, i32 1
  %43 = load float, ptr %42, align 4, !tbaa !53
  %44 = fadd float %29, %43
  %45 = getelementptr inbounds float, ptr %42, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !53
  %47 = fadd float %28, %46
  %48 = getelementptr inbounds float, ptr %42, i64 2
  %49 = load float, ptr %48, align 4, !tbaa !53
  %50 = fadd float %27, %49
  %51 = add nuw nsw i64 %23, 1
  %52 = icmp eq i64 %51, %21
  br i1 %52, label %53, label %22, !llvm.loop !194

53:                                               ; preds = %22
  %54 = sitofp i32 %13 to float
  %55 = fadd float %54, -1.000000e+00
  %56 = fdiv float 1.000000e+00, %55
  %57 = fmul float %56, %35
  %58 = fmul float %56, %38
  %59 = fmul float %56, %41
  %60 = fmul float %56, %44
  %61 = fmul float %56, %47
  %62 = fmul float %56, %50
  %63 = load float, ptr %11, align 4, !tbaa !53
  %64 = fsub float %57, %63
  %65 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 0, i64 1
  %66 = load float, ptr %65, align 4, !tbaa !53
  %67 = fsub float %58, %66
  %68 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 0, i64 2
  %69 = load float, ptr %68, align 4, !tbaa !53
  %70 = fsub float %59, %69
  %71 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 1
  %72 = load float, ptr %71, align 4, !tbaa !53
  %73 = fsub float %60, %72
  %74 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 1, i64 1
  %75 = load float, ptr %74, align 4, !tbaa !53
  %76 = fsub float %61, %75
  %77 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 1, i64 2
  %78 = load float, ptr %77, align 4, !tbaa !53
  %79 = fsub float %62, %78
  %80 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5
  %81 = load float, ptr %80, align 4, !tbaa !53
  %82 = fadd float %73, %81
  store float %82, ptr %80, align 4, !tbaa !53
  %83 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5, i64 1
  %84 = load float, ptr %83, align 4, !tbaa !53
  %85 = fadd float %76, %84
  store float %85, ptr %83, align 4, !tbaa !53
  %86 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5, i64 2
  %87 = load float, ptr %86, align 4, !tbaa !53
  %88 = fadd float %79, %87
  store float %88, ptr %86, align 4, !tbaa !53
  %89 = fadd float %64, %82
  store float %89, ptr %80, align 4, !tbaa !53
  %90 = fadd float %67, %85
  store float %90, ptr %83, align 4, !tbaa !53
  %91 = fadd float %70, %88
  store float %91, ptr %86, align 4, !tbaa !53
  %92 = fmul float %90, %90
  %93 = call float @llvm.fmuladd.f32(float %89, float %89, float %92)
  %94 = call float @llvm.fmuladd.f32(float %91, float %91, float %93)
  %95 = call float @sqrtf(float noundef %94) #12
  %96 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 6
  store float %95, ptr %96, align 8, !tbaa !101
  br label %97

97:                                               ; preds = %53, %4
  %98 = phi i32 [ 1, %53 ], [ 0, %4 ]
  call void @llvm.lifetime.end.p0(i64 220, ptr nonnull %5) #12
  ret i32 %98
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define internal i32 @rule_follow_leader(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #10 {
  %5 = getelementptr inbounds %struct.BoidRuleFollowLeader, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 4, !tbaa !195
  %7 = icmp slt i32 %6, 2
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = load ptr, ptr %1, align 8, !tbaa !72
  %10 = getelementptr inbounds %struct.ParticleSimulationData, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !73
  %12 = getelementptr inbounds %struct.ParticleSystem, ptr %11, i64 0, i32 26
  %13 = load i32, ptr %12, align 8, !tbaa !196
  br label %14

14:                                               ; preds = %4, %8
  %15 = phi i32 [ %13, %8 ], [ %6, %4 ]
  %16 = load ptr, ptr %1, align 8, !tbaa !72
  %17 = getelementptr inbounds %struct.ParticleSimulationData, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !73
  %19 = getelementptr inbounds %struct.ParticleSystem, ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !185
  %21 = ptrtoint ptr %3 to i64
  %22 = ptrtoint ptr %20 to i64
  %23 = sub i64 %21, %22
  %24 = sdiv exact i64 %23, 200
  %25 = trunc i64 %24 to i32
  %26 = getelementptr inbounds %struct.BoidRuleFollowLeader, ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !50
  %28 = icmp eq ptr %27, null
  br i1 %28, label %189, label %29

29:                                               ; preds = %14
  %30 = getelementptr inbounds %struct.BoidRuleFollowLeader, ptr %0, i64 0, i32 2
  %31 = getelementptr inbounds %struct.BoidRuleFollowLeader, ptr %0, i64 0, i32 3
  %32 = load float, ptr %30, align 4, !tbaa !53
  %33 = load float, ptr %31, align 4, !tbaa !53
  %34 = fsub float %32, %33
  %35 = getelementptr inbounds %struct.BoidRuleFollowLeader, ptr %0, i64 0, i32 2, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !53
  %37 = getelementptr inbounds %struct.BoidRuleFollowLeader, ptr %0, i64 0, i32 3, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !53
  %39 = fsub float %36, %38
  %40 = getelementptr inbounds %struct.BoidRuleFollowLeader, ptr %0, i64 0, i32 2, i64 2
  %41 = load float, ptr %40, align 4, !tbaa !53
  %42 = getelementptr inbounds %struct.BoidRuleFollowLeader, ptr %0, i64 0, i32 3, i64 2
  %43 = load float, ptr %42, align 4, !tbaa !53
  %44 = fsub float %41, %43
  %45 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 2
  %46 = load float, ptr %45, align 8, !tbaa !107
  %47 = fdiv float 1.000000e+00, %46
  %48 = fmul float %34, %47
  %49 = fmul float %39, %47
  %50 = fmul float %44, %47
  %51 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1
  %52 = load float, ptr %51, align 4, !tbaa !53
  %53 = fsub float %52, %33
  %54 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 0, i64 1
  %55 = load float, ptr %54, align 4, !tbaa !53
  %56 = fsub float %55, %38
  %57 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 0, i64 2
  %58 = load float, ptr %57, align 4, !tbaa !53
  %59 = fsub float %58, %43
  %60 = fmul float %49, %49
  %61 = tail call float @llvm.fmuladd.f32(float %48, float %48, float %60)
  %62 = tail call float @llvm.fmuladd.f32(float %50, float %50, float %61)
  %63 = fcmp olt float %62, 0x3F847AE140000000
  br i1 %63, label %64, label %81

64:                                               ; preds = %29
  %65 = fmul float %56, %56
  %66 = tail call float @llvm.fmuladd.f32(float %53, float %53, float %65)
  %67 = tail call float @llvm.fmuladd.f32(float %59, float %59, float %66)
  %68 = tail call float @sqrtf(float noundef %67) #12
  %69 = getelementptr inbounds %struct.BoidValues, ptr %2, i64 0, i32 4
  %70 = load float, ptr %69, align 4, !tbaa !89
  %71 = fmul float %70, 2.000000e+00
  %72 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 13
  %73 = load float, ptr %72, align 4, !tbaa !109
  %74 = fmul float %71, %73
  %75 = fcmp olt float %68, %74
  br i1 %75, label %76, label %115

76:                                               ; preds = %64
  %77 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5
  store float %53, ptr %77, align 4, !tbaa !53
  %78 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5, i64 1
  store float %56, ptr %78, align 4, !tbaa !53
  %79 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5, i64 2
  store float %59, ptr %79, align 4, !tbaa !53
  %80 = load float, ptr %2, align 4, !tbaa !81
  br label %184

81:                                               ; preds = %29
  %82 = fmul float %49, %56
  %83 = tail call float @llvm.fmuladd.f32(float %53, float %48, float %82)
  %84 = tail call float @llvm.fmuladd.f32(float %59, float %50, float %83)
  %85 = fdiv float %84, %62
  %86 = fcmp ogt float %85, 0.000000e+00
  %87 = fcmp olt float %85, 3.000000e+00
  %88 = and i1 %86, %87
  br i1 %88, label %89, label %115

89:                                               ; preds = %81
  %90 = fmul float %48, %85
  %91 = fmul float %49, %85
  %92 = fmul float %50, %85
  %93 = fsub float %53, %90
  %94 = fsub float %56, %91
  %95 = fsub float %59, %92
  %96 = fmul float %94, %94
  %97 = tail call float @llvm.fmuladd.f32(float %93, float %93, float %96)
  %98 = tail call float @llvm.fmuladd.f32(float %95, float %95, float %97)
  %99 = tail call float @sqrtf(float noundef %98) #12
  %100 = getelementptr inbounds %struct.BoidValues, ptr %2, i64 0, i32 4
  %101 = load float, ptr %100, align 4, !tbaa !89
  %102 = fmul float %101, 2.000000e+00
  %103 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 13
  %104 = load float, ptr %103, align 4, !tbaa !109
  %105 = fmul float %102, %104
  %106 = fcmp olt float %99, %105
  br i1 %106, label %107, label %115

107:                                              ; preds = %89
  %108 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5
  store float %93, ptr %108, align 4, !tbaa !53
  %109 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5, i64 1
  store float %94, ptr %109, align 4, !tbaa !53
  %110 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5, i64 2
  store float %95, ptr %110, align 4, !tbaa !53
  %111 = load float, ptr %2, align 4, !tbaa !81
  %112 = fsub float 3.000000e+00, %85
  %113 = fmul float %112, %111
  %114 = fdiv float %113, 3.000000e+00
  br label %184

115:                                              ; preds = %81, %89, %64
  %116 = icmp eq i32 %25, 0
  br i1 %116, label %143, label %117

117:                                              ; preds = %115
  %118 = getelementptr inbounds %struct.BoidRuleFollowLeader, ptr %0, i64 0, i32 6
  %119 = load i32, ptr %118, align 8, !tbaa !197
  %120 = and i32 %119, 1
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %143, label %122

122:                                              ; preds = %117
  %123 = load ptr, ptr %1, align 8, !tbaa !72
  %124 = getelementptr inbounds %struct.ParticleSimulationData, ptr %123, i64 0, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !73
  %126 = getelementptr inbounds %struct.ParticleSystem, ptr %125, i64 0, i32 3
  %127 = load ptr, ptr %126, align 8, !tbaa !185
  %128 = shl i64 %24, 32
  %129 = add i64 %128, -4294967296
  %130 = ashr exact i64 %129, 32
  %131 = getelementptr inbounds %struct.ParticleData, ptr %127, i64 %130, i32 1, i32 1
  %132 = load float, ptr %131, align 4, !tbaa !53
  %133 = getelementptr inbounds float, ptr %131, i64 1
  %134 = load float, ptr %133, align 4, !tbaa !53
  %135 = getelementptr inbounds float, ptr %131, i64 2
  %136 = load float, ptr %135, align 4, !tbaa !53
  %137 = getelementptr inbounds %struct.ParticleData, ptr %127, i64 %130, i32 1
  %138 = load float, ptr %137, align 4, !tbaa !53
  %139 = getelementptr inbounds float, ptr %137, i64 1
  %140 = load float, ptr %139, align 4, !tbaa !53
  %141 = getelementptr inbounds float, ptr %137, i64 2
  %142 = load float, ptr %141, align 4, !tbaa !53
  br label %158

143:                                              ; preds = %117, %115
  %144 = load float, ptr %31, align 4, !tbaa !53
  %145 = load float, ptr %37, align 4, !tbaa !53
  %146 = load float, ptr %42, align 4, !tbaa !53
  %147 = load float, ptr %30, align 4, !tbaa !53
  %148 = fsub float %147, %144
  %149 = load float, ptr %35, align 4, !tbaa !53
  %150 = fsub float %149, %145
  %151 = load float, ptr %40, align 4, !tbaa !53
  %152 = fsub float %151, %146
  %153 = load float, ptr %45, align 8, !tbaa !107
  %154 = fdiv float 1.000000e+00, %153
  %155 = fmul float %148, %154
  %156 = fmul float %150, %154
  %157 = fmul float %152, %154
  br label %158

158:                                              ; preds = %143, %122
  %159 = phi float [ %144, %143 ], [ %138, %122 ]
  %160 = phi float [ %145, %143 ], [ %140, %122 ]
  %161 = phi float [ %146, %143 ], [ %142, %122 ]
  %162 = phi float [ %157, %143 ], [ %136, %122 ]
  %163 = phi float [ %156, %143 ], [ %134, %122 ]
  %164 = phi float [ %155, %143 ], [ %132, %122 ]
  %165 = getelementptr inbounds %struct.BoidRuleFollowLeader, ptr %0, i64 0, i32 5
  %166 = load float, ptr %165, align 4, !tbaa !145
  %167 = fneg float %166
  %168 = tail call float @llvm.fmuladd.f32(float %164, float %167, float %159)
  %169 = tail call float @llvm.fmuladd.f32(float %163, float %167, float %160)
  %170 = tail call float @llvm.fmuladd.f32(float %162, float %167, float %161)
  %171 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5
  %172 = load float, ptr %51, align 4, !tbaa !53
  %173 = fsub float %168, %172
  store float %173, ptr %171, align 4, !tbaa !53
  %174 = load float, ptr %54, align 4, !tbaa !53
  %175 = fsub float %169, %174
  %176 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5, i64 1
  store float %175, ptr %176, align 4, !tbaa !53
  %177 = load float, ptr %57, align 4, !tbaa !53
  %178 = fsub float %170, %177
  %179 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5, i64 2
  store float %178, ptr %179, align 4, !tbaa !53
  %180 = fmul float %175, %175
  %181 = tail call float @llvm.fmuladd.f32(float %173, float %173, float %180)
  %182 = tail call float @llvm.fmuladd.f32(float %178, float %178, float %181)
  %183 = tail call float @sqrtf(float noundef %182) #12
  br label %184

184:                                              ; preds = %158, %107, %76
  %185 = phi float [ %183, %158 ], [ %114, %107 ], [ %80, %76 ]
  %186 = phi i32 [ 1, %158 ], [ 0, %107 ], [ 0, %76 ]
  %187 = phi i1 [ true, %158 ], [ false, %107 ], [ false, %76 ]
  %188 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 6
  store float %185, ptr %188, align 8, !tbaa !101
  br i1 %187, label %359, label %361

189:                                              ; preds = %14
  %190 = srem i32 %25, %15
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %359, label %192

192:                                              ; preds = %189
  %193 = load ptr, ptr %1, align 8, !tbaa !72
  %194 = getelementptr inbounds %struct.ParticleSimulationData, ptr %193, i64 0, i32 2
  %195 = load ptr, ptr %194, align 8, !tbaa !73
  %196 = getelementptr inbounds %struct.ParticleSystem, ptr %195, i64 0, i32 26
  %197 = load i32, ptr %196, align 8, !tbaa !196
  %198 = icmp sgt i32 %197, 0
  br i1 %198, label %199, label %298

199:                                              ; preds = %192
  %200 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1
  %201 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 0, i64 1
  %202 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 0, i64 2
  %203 = getelementptr inbounds %struct.BoidValues, ptr %2, i64 0, i32 4
  %204 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 13
  %205 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5
  %206 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5, i64 1
  %207 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5, i64 2
  %208 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 6
  %209 = getelementptr inbounds %struct.BoidValues, ptr %2, i64 0, i32 4
  %210 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 13
  %211 = sext i32 %15 to i64
  br label %212

212:                                              ; preds = %199, %285
  %213 = phi i64 [ 0, %199 ], [ %288, %285 ]
  %214 = phi ptr [ %195, %199 ], [ %291, %285 ]
  %215 = phi float [ 3.000000e+00, %199 ], [ %287, %285 ]
  %216 = phi i32 [ 0, %199 ], [ %286, %285 ]
  %217 = getelementptr inbounds %struct.ParticleSystem, ptr %214, i64 0, i32 3
  %218 = load ptr, ptr %217, align 8, !tbaa !185
  %219 = getelementptr inbounds %struct.ParticleData, ptr %218, i64 %213, i32 1, i32 1
  %220 = load float, ptr %219, align 4, !tbaa !53
  %221 = getelementptr inbounds float, ptr %219, i64 1
  %222 = load float, ptr %221, align 4, !tbaa !53
  %223 = getelementptr inbounds float, ptr %219, i64 2
  %224 = load float, ptr %223, align 4, !tbaa !53
  %225 = getelementptr inbounds %struct.ParticleData, ptr %218, i64 %213, i32 1
  %226 = load float, ptr %200, align 4, !tbaa !53
  %227 = load float, ptr %225, align 4, !tbaa !53
  %228 = fsub float %226, %227
  %229 = load float, ptr %201, align 4, !tbaa !53
  %230 = getelementptr inbounds float, ptr %225, i64 1
  %231 = load float, ptr %230, align 4, !tbaa !53
  %232 = fsub float %229, %231
  %233 = load float, ptr %202, align 4, !tbaa !53
  %234 = getelementptr inbounds float, ptr %225, i64 2
  %235 = load float, ptr %234, align 4, !tbaa !53
  %236 = fsub float %233, %235
  %237 = fmul float %222, %222
  %238 = tail call float @llvm.fmuladd.f32(float %220, float %220, float %237)
  %239 = tail call float @llvm.fmuladd.f32(float %224, float %224, float %238)
  %240 = fcmp olt float %239, 0x3F847AE140000000
  br i1 %240, label %241, label %256

241:                                              ; preds = %212
  %242 = fmul float %232, %232
  %243 = tail call float @llvm.fmuladd.f32(float %228, float %228, float %242)
  %244 = tail call float @llvm.fmuladd.f32(float %236, float %236, float %243)
  %245 = tail call float @sqrtf(float noundef %244) #12
  %246 = load float, ptr %209, align 4, !tbaa !89
  %247 = fmul float %246, 2.000000e+00
  %248 = load float, ptr %210, align 4, !tbaa !109
  %249 = fmul float %247, %248
  %250 = fcmp olt float %245, %249
  br i1 %250, label %251, label %285

251:                                              ; preds = %241
  %252 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5
  store float %228, ptr %252, align 4, !tbaa !53
  %253 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5, i64 1
  store float %232, ptr %253, align 4, !tbaa !53
  %254 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5, i64 2
  store float %236, ptr %254, align 4, !tbaa !53
  %255 = load float, ptr %2, align 4, !tbaa !81
  br label %351

256:                                              ; preds = %212
  %257 = fmul float %222, %232
  %258 = tail call float @llvm.fmuladd.f32(float %228, float %220, float %257)
  %259 = tail call float @llvm.fmuladd.f32(float %236, float %224, float %258)
  %260 = fdiv float %259, %239
  %261 = fcmp ogt float %260, 0.000000e+00
  %262 = fcmp olt float %260, %215
  %263 = select i1 %261, i1 %262, i1 false
  br i1 %263, label %264, label %285

264:                                              ; preds = %256
  %265 = fmul float %220, %260
  %266 = fmul float %222, %260
  %267 = fmul float %224, %260
  %268 = fsub float %228, %265
  %269 = fsub float %232, %266
  %270 = fsub float %236, %267
  %271 = fmul float %269, %269
  %272 = tail call float @llvm.fmuladd.f32(float %268, float %268, float %271)
  %273 = tail call float @llvm.fmuladd.f32(float %270, float %270, float %272)
  %274 = tail call float @sqrtf(float noundef %273) #12
  %275 = load float, ptr %203, align 4, !tbaa !89
  %276 = fmul float %275, 2.000000e+00
  %277 = load float, ptr %204, align 4, !tbaa !109
  %278 = fmul float %276, %277
  %279 = fcmp olt float %274, %278
  br i1 %279, label %280, label %285

280:                                              ; preds = %264
  store float %228, ptr %205, align 4, !tbaa !53
  store float %232, ptr %206, align 4, !tbaa !53
  store float %236, ptr %207, align 4, !tbaa !53
  %281 = load float, ptr %2, align 4, !tbaa !81
  %282 = fsub float 3.000000e+00, %260
  %283 = fmul float %282, %281
  %284 = fdiv float %283, 3.000000e+00
  store float %284, ptr %208, align 8, !tbaa !101
  br label %285

285:                                              ; preds = %241, %264, %280, %256
  %286 = phi i32 [ %216, %241 ], [ 1, %280 ], [ %216, %264 ], [ %216, %256 ]
  %287 = phi float [ %215, %241 ], [ %260, %280 ], [ %215, %264 ], [ %215, %256 ]
  %288 = add i64 %213, %211
  %289 = load ptr, ptr %1, align 8, !tbaa !72
  %290 = getelementptr inbounds %struct.ParticleSimulationData, ptr %289, i64 0, i32 2
  %291 = load ptr, ptr %290, align 8, !tbaa !73
  %292 = getelementptr inbounds %struct.ParticleSystem, ptr %291, i64 0, i32 26
  %293 = load i32, ptr %292, align 8, !tbaa !196
  %294 = sext i32 %293 to i64
  %295 = icmp slt i64 %288, %294
  br i1 %295, label %212, label %296, !llvm.loop !198

296:                                              ; preds = %285
  %297 = icmp eq i32 %286, 0
  br label %298

298:                                              ; preds = %296, %192
  %299 = phi i1 [ true, %192 ], [ %297, %296 ]
  %300 = phi ptr [ %195, %192 ], [ %291, %296 ]
  br i1 %299, label %301, label %356

301:                                              ; preds = %298
  %302 = getelementptr inbounds %struct.BoidRuleFollowLeader, ptr %0, i64 0, i32 6
  %303 = load i32, ptr %302, align 8, !tbaa !197
  %304 = and i32 %303, 1
  %305 = icmp eq i32 %304, 0
  %306 = getelementptr inbounds %struct.ParticleSystem, ptr %300, i64 0, i32 3
  %307 = load ptr, ptr %306, align 8, !tbaa !185
  br i1 %305, label %312, label %308

308:                                              ; preds = %301
  %309 = shl i64 %24, 32
  %310 = add i64 %309, -4294967296
  %311 = ashr exact i64 %310, 32
  br label %315

312:                                              ; preds = %301
  %313 = sub nsw i32 %25, %190
  %314 = sext i32 %313 to i64
  br label %315

315:                                              ; preds = %312, %308
  %316 = phi i64 [ %314, %312 ], [ %311, %308 ]
  %317 = getelementptr inbounds %struct.ParticleData, ptr %307, i64 %316, i32 1, i32 1
  %318 = getelementptr inbounds %struct.ParticleData, ptr %307, i64 %316, i32 1
  %319 = load float, ptr %317, align 4, !tbaa !53
  %320 = getelementptr inbounds float, ptr %317, i64 1
  %321 = load float, ptr %320, align 4, !tbaa !53
  %322 = getelementptr inbounds float, ptr %317, i64 2
  %323 = load float, ptr %322, align 4, !tbaa !53
  %324 = getelementptr inbounds float, ptr %318, i64 2
  %325 = load float, ptr %324, align 4, !tbaa !53
  %326 = getelementptr inbounds float, ptr %318, i64 1
  %327 = load float, ptr %326, align 4, !tbaa !53
  %328 = load float, ptr %318, align 4, !tbaa !53
  %329 = getelementptr inbounds %struct.BoidRuleFollowLeader, ptr %0, i64 0, i32 5
  %330 = load float, ptr %329, align 4, !tbaa !145
  %331 = fneg float %330
  %332 = tail call float @llvm.fmuladd.f32(float %319, float %331, float %328)
  %333 = tail call float @llvm.fmuladd.f32(float %321, float %331, float %327)
  %334 = tail call float @llvm.fmuladd.f32(float %323, float %331, float %325)
  %335 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5
  %336 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1
  %337 = load float, ptr %336, align 4, !tbaa !53
  %338 = fsub float %332, %337
  store float %338, ptr %335, align 4, !tbaa !53
  %339 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 0, i64 1
  %340 = load float, ptr %339, align 4, !tbaa !53
  %341 = fsub float %333, %340
  %342 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5, i64 1
  store float %341, ptr %342, align 4, !tbaa !53
  %343 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 0, i64 2
  %344 = load float, ptr %343, align 4, !tbaa !53
  %345 = fsub float %334, %344
  %346 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5, i64 2
  store float %345, ptr %346, align 4, !tbaa !53
  %347 = fmul float %341, %341
  %348 = tail call float @llvm.fmuladd.f32(float %338, float %338, float %347)
  %349 = tail call float @llvm.fmuladd.f32(float %345, float %345, float %348)
  %350 = tail call float @sqrtf(float noundef %349) #12
  br label %351

351:                                              ; preds = %251, %315
  %352 = phi float [ %350, %315 ], [ %255, %251 ]
  %353 = phi i32 [ 1, %315 ], [ %216, %251 ]
  %354 = phi i1 [ true, %315 ], [ false, %251 ]
  %355 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 6
  store float %352, ptr %355, align 8, !tbaa !101
  br label %356

356:                                              ; preds = %351, %298
  %357 = phi i32 [ 1, %298 ], [ %353, %351 ]
  %358 = phi i1 [ false, %298 ], [ %354, %351 ]
  br i1 %358, label %359, label %361

359:                                              ; preds = %189, %356, %184
  %360 = phi i32 [ %186, %184 ], [ %357, %356 ], [ 0, %189 ]
  br label %361

361:                                              ; preds = %184, %356, %359
  %362 = phi i32 [ %360, %359 ], [ 1, %184 ], [ 1, %356 ]
  ret i32 %362
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @rule_average_speed(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #2 {
  %5 = alloca [3 x float], align 4
  %6 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i64 12, i1 false)
  %8 = getelementptr inbounds %struct.BoidRuleAverageSpeed, ptr %0, i64 0, i32 1
  %9 = load float, ptr %8, align 8, !tbaa !199
  %10 = fcmp ogt float %9, 0.000000e+00
  br i1 %10, label %11, label %92

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 11
  %13 = load ptr, ptr %12, align 8, !tbaa !112
  %14 = tail call float @BLI_rng_get_float(ptr noundef %13) #12
  %15 = tail call float @llvm.fmuladd.f32(float %14, float 2.000000e+00, float -1.000000e+00)
  %16 = getelementptr inbounds %struct.BoidParticle, ptr %7, i64 0, i32 3
  %17 = load float, ptr %16, align 8, !tbaa !53
  %18 = tail call float @llvm.fmuladd.f32(float %9, float %15, float %17)
  store float %18, ptr %16, align 8, !tbaa !53
  %19 = load float, ptr %8, align 8, !tbaa !199
  %20 = load ptr, ptr %12, align 8, !tbaa !112
  %21 = tail call float @BLI_rng_get_float(ptr noundef %20) #12
  %22 = tail call float @llvm.fmuladd.f32(float %21, float 2.000000e+00, float -1.000000e+00)
  %23 = getelementptr inbounds %struct.BoidParticle, ptr %7, i64 0, i32 3, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !53
  %25 = tail call float @llvm.fmuladd.f32(float %19, float %22, float %24)
  store float %25, ptr %23, align 4, !tbaa !53
  %26 = load float, ptr %8, align 8, !tbaa !199
  %27 = load ptr, ptr %12, align 8, !tbaa !112
  %28 = tail call float @BLI_rng_get_float(ptr noundef %27) #12
  %29 = tail call float @llvm.fmuladd.f32(float %28, float 2.000000e+00, float -1.000000e+00)
  %30 = getelementptr inbounds %struct.BoidParticle, ptr %7, i64 0, i32 3, i64 2
  %31 = load float, ptr %30, align 8, !tbaa !53
  %32 = tail call float @llvm.fmuladd.f32(float %26, float %29, float %31)
  store float %32, ptr %30, align 8, !tbaa !53
  %33 = load float, ptr %16, align 4, !tbaa !53
  %34 = load float, ptr %23, align 4, !tbaa !53
  %35 = fmul float %34, %34
  %36 = tail call float @llvm.fmuladd.f32(float %33, float %33, float %35)
  %37 = tail call float @llvm.fmuladd.f32(float %32, float %32, float %36)
  %38 = fcmp ogt float %37, 0x38AA95A5C0000000
  br i1 %38, label %39, label %48

39:                                               ; preds = %11
  %40 = tail call float @sqrtf(float noundef %37) #12
  %41 = fdiv float 1.000000e+00, %40
  %42 = load float, ptr %16, align 4, !tbaa !53
  %43 = fmul float %42, %41
  store float %43, ptr %16, align 4, !tbaa !53
  %44 = load float, ptr %23, align 4, !tbaa !53
  %45 = fmul float %41, %44
  store float %45, ptr %23, align 4, !tbaa !53
  %46 = load float, ptr %30, align 4, !tbaa !53
  %47 = fmul float %41, %46
  br label %49

48:                                               ; preds = %11
  store float 0.000000e+00, ptr %16, align 4, !tbaa !53
  store float 0.000000e+00, ptr %23, align 4, !tbaa !53
  br label %49

49:                                               ; preds = %39, %48
  %50 = phi float [ 0.000000e+00, %48 ], [ %47, %39 ]
  store float %50, ptr %30, align 4, !tbaa !53
  %51 = load float, ptr %16, align 4, !tbaa !53
  store float %51, ptr %5, align 4, !tbaa !53
  %52 = load float, ptr %23, align 4, !tbaa !53
  %53 = getelementptr inbounds float, ptr %5, i64 1
  store float %52, ptr %53, align 4, !tbaa !53
  %54 = getelementptr inbounds float, ptr %5, i64 2
  store float %50, ptr %54, align 4, !tbaa !53
  %55 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 2
  call void @mul_qt_v3(ptr noundef nonnull %55, ptr noundef nonnull %5) #12
  %56 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5
  %57 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 3
  %58 = load float, ptr %57, align 4, !tbaa !53
  store float %58, ptr %56, align 4, !tbaa !53
  %59 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 3, i64 1
  %60 = load float, ptr %59, align 4, !tbaa !53
  %61 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5, i64 1
  store float %60, ptr %61, align 4, !tbaa !53
  %62 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 3, i64 2
  %63 = load float, ptr %62, align 4, !tbaa !53
  %64 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5, i64 2
  store float %63, ptr %64, align 4, !tbaa !53
  %65 = fmul float %58, 0x3FF19999A0000000
  store float %65, ptr %56, align 4, !tbaa !53
  %66 = fmul float %60, 0x3FF19999A0000000
  store float %66, ptr %61, align 4, !tbaa !53
  %67 = fmul float %63, 0x3FF19999A0000000
  store float %67, ptr %64, align 4, !tbaa !53
  %68 = load float, ptr %5, align 4, !tbaa !53
  %69 = fadd float %65, %68
  store float %69, ptr %56, align 4, !tbaa !53
  %70 = load float, ptr %53, align 4, !tbaa !53
  %71 = fadd float %66, %70
  store float %71, ptr %61, align 4, !tbaa !53
  %72 = load float, ptr %54, align 4, !tbaa !53
  %73 = fadd float %67, %72
  store float %73, ptr %64, align 4, !tbaa !53
  %74 = getelementptr inbounds %struct.BoidRuleAverageSpeed, ptr %0, i64 0, i32 2
  %75 = load float, ptr %74, align 4, !tbaa !200
  %76 = fcmp ogt float %75, 0.000000e+00
  br i1 %76, label %77, label %153

77:                                               ; preds = %49
  %78 = load ptr, ptr %1, align 8, !tbaa !72
  %79 = call i32 @psys_uses_gravity(ptr noundef %78) #12
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %153, label %81

81:                                               ; preds = %77
  %82 = load ptr, ptr %1, align 8, !tbaa !72
  %83 = load ptr, ptr %82, align 8, !tbaa !104
  %84 = getelementptr inbounds %struct.Scene, ptr %83, i64 0, i32 40
  call void @project_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %56, ptr noundef nonnull %84) #12
  %85 = load float, ptr %74, align 4, !tbaa !200
  %86 = load float, ptr %5, align 4, !tbaa !53
  %87 = fmul float %85, %86
  store float %87, ptr %5, align 4, !tbaa !53
  %88 = load float, ptr %53, align 4, !tbaa !53
  %89 = fmul float %85, %88
  store float %89, ptr %53, align 4, !tbaa !53
  %90 = load float, ptr %54, align 4, !tbaa !53
  %91 = fmul float %85, %90
  store float %91, ptr %54, align 4, !tbaa !53
  br label %140

92:                                               ; preds = %4
  %93 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5
  %94 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 3
  %95 = load float, ptr %94, align 4, !tbaa !53
  store float %95, ptr %93, align 4, !tbaa !53
  %96 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 3, i64 1
  %97 = load float, ptr %96, align 4, !tbaa !53
  %98 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5, i64 1
  store float %97, ptr %98, align 4, !tbaa !53
  %99 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 3, i64 2
  %100 = load float, ptr %99, align 4, !tbaa !53
  %101 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5, i64 2
  store float %100, ptr %101, align 4, !tbaa !53
  %102 = fmul float %97, %97
  %103 = tail call float @llvm.fmuladd.f32(float %95, float %95, float %102)
  %104 = fcmp oeq float %103, 0.000000e+00
  br i1 %104, label %105, label %119

105:                                              ; preds = %92
  %106 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 11
  %107 = load ptr, ptr %106, align 8, !tbaa !112
  %108 = tail call float @BLI_rng_get_float(ptr noundef %107) #12
  %109 = fsub float 5.000000e-01, %108
  %110 = fmul float %109, 2.000000e+00
  store float %110, ptr %93, align 4, !tbaa !53
  %111 = load ptr, ptr %106, align 8, !tbaa !112
  %112 = tail call float @BLI_rng_get_float(ptr noundef %111) #12
  %113 = fsub float 5.000000e-01, %112
  %114 = fmul float %113, 2.000000e+00
  store float %114, ptr %98, align 4, !tbaa !53
  %115 = load ptr, ptr %106, align 8, !tbaa !112
  %116 = tail call float @BLI_rng_get_float(ptr noundef %115) #12
  %117 = fsub float 5.000000e-01, %116
  %118 = fmul float %117, 2.000000e+00
  store float %118, ptr %101, align 4, !tbaa !53
  br label %119

119:                                              ; preds = %105, %92
  %120 = getelementptr inbounds %struct.BoidRuleAverageSpeed, ptr %0, i64 0, i32 2
  %121 = load float, ptr %120, align 4, !tbaa !200
  %122 = fcmp ogt float %121, 0.000000e+00
  br i1 %122, label %123, label %153

123:                                              ; preds = %119
  %124 = load ptr, ptr %1, align 8, !tbaa !72
  %125 = tail call i32 @psys_uses_gravity(ptr noundef %124) #12
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %153, label %127

127:                                              ; preds = %123
  %128 = load ptr, ptr %1, align 8, !tbaa !72
  %129 = load ptr, ptr %128, align 8, !tbaa !104
  %130 = getelementptr inbounds %struct.Scene, ptr %129, i64 0, i32 40
  call void @project_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %93, ptr noundef nonnull %130) #12
  %131 = load float, ptr %120, align 4, !tbaa !200
  %132 = load float, ptr %5, align 4, !tbaa !53
  %133 = fmul float %131, %132
  store float %133, ptr %5, align 4, !tbaa !53
  %134 = getelementptr inbounds float, ptr %5, i64 1
  %135 = load float, ptr %134, align 4, !tbaa !53
  %136 = fmul float %131, %135
  store float %136, ptr %134, align 4, !tbaa !53
  %137 = getelementptr inbounds float, ptr %5, i64 2
  %138 = load float, ptr %137, align 4, !tbaa !53
  %139 = fmul float %131, %138
  store float %139, ptr %137, align 4, !tbaa !53
  br label %140

140:                                              ; preds = %81, %127
  %141 = phi ptr [ %93, %127 ], [ %56, %81 ]
  %142 = phi float [ %133, %127 ], [ %87, %81 ]
  %143 = phi ptr [ %98, %127 ], [ %61, %81 ]
  %144 = phi float [ %136, %127 ], [ %89, %81 ]
  %145 = phi ptr [ %101, %127 ], [ %64, %81 ]
  %146 = phi float [ %139, %127 ], [ %91, %81 ]
  %147 = load float, ptr %141, align 4, !tbaa !53
  %148 = fsub float %147, %142
  store float %148, ptr %141, align 4, !tbaa !53
  %149 = load float, ptr %143, align 4, !tbaa !53
  %150 = fsub float %149, %144
  store float %150, ptr %143, align 4, !tbaa !53
  %151 = load float, ptr %145, align 4, !tbaa !53
  %152 = fsub float %151, %146
  store float %152, ptr %145, align 4, !tbaa !53
  br label %153

153:                                              ; preds = %140, %119, %123, %49, %77
  %154 = getelementptr inbounds %struct.BoidRuleAverageSpeed, ptr %0, i64 0, i32 3
  %155 = load float, ptr %154, align 8, !tbaa !146
  %156 = load float, ptr %2, align 4, !tbaa !81
  %157 = fmul float %155, %156
  %158 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 6
  store float %157, ptr %158, align 8, !tbaa !101
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #12
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @rule_fight(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #2 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  store ptr null, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.BoidRuleFight, ptr %0, i64 0, i32 1
  %7 = load float, ptr %6, align 8, !tbaa !148
  %8 = fadd float %7, 1.000000e+00
  %9 = load ptr, ptr %1, align 8, !tbaa !72
  %10 = getelementptr inbounds %struct.ParticleSimulationData, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !73
  %12 = getelementptr inbounds %struct.ParticleSystem, ptr %11, i64 0, i32 46
  %13 = load ptr, ptr %12, align 8, !tbaa !184
  %14 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1
  %15 = call i32 @BLI_kdtree_range_search__normal(ptr noundef %13, ptr noundef nonnull %14, ptr noundef null, ptr noundef nonnull %5, float noundef %7) #12
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %4
  %18 = load ptr, ptr %1, align 8, !tbaa !72
  %19 = getelementptr inbounds %struct.ParticleSimulationData, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !73
  %21 = getelementptr inbounds %struct.ParticleSystem, ptr %20, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !185
  %23 = load ptr, ptr %5, align 8, !tbaa !44
  %24 = zext nneg i32 %15 to i64
  br label %25

25:                                               ; preds = %17, %25
  %26 = phi i64 [ 0, %17 ], [ %36, %25 ]
  %27 = phi float [ 0.000000e+00, %17 ], [ %35, %25 ]
  %28 = getelementptr inbounds %struct.KDTreeNearest, ptr %23, i64 %26
  %29 = load i32, ptr %28, align 4, !tbaa !186
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.ParticleData, ptr %22, i64 %30, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !57
  %33 = getelementptr inbounds %struct.BoidParticle, ptr %32, i64 0, i32 1
  %34 = load float, ptr %33, align 8, !tbaa !68
  %35 = fadd float %27, %34
  %36 = add nuw nsw i64 %26, 1
  %37 = icmp eq i64 %36, %24
  br i1 %37, label %38, label %25, !llvm.loop !201

38:                                               ; preds = %25, %4
  %39 = phi float [ 0.000000e+00, %4 ], [ %35, %25 ]
  %40 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !55
  %42 = getelementptr inbounds %struct.ParticleSettings, ptr %41, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !34
  %44 = getelementptr inbounds %struct.BoidSettings, ptr %43, i64 0, i32 8
  %45 = load float, ptr %44, align 8, !tbaa !156
  %46 = call float @llvm.fmuladd.f32(float %45, float %39, float 0.000000e+00)
  %47 = load ptr, ptr %5, align 8, !tbaa !44
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %38
  %50 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %50(ptr noundef nonnull %47) #12
  store ptr null, ptr %5, align 8, !tbaa !44
  br label %51

51:                                               ; preds = %49, %38
  %52 = load ptr, ptr %1, align 8, !tbaa !72
  %53 = getelementptr inbounds %struct.ParticleSimulationData, ptr %52, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !73
  %55 = getelementptr inbounds %struct.ParticleSystem, ptr %54, i64 0, i32 17
  %56 = load ptr, ptr %55, align 8, !tbaa !44
  %57 = icmp eq ptr %56, null
  br i1 %57, label %166, label %58

58:                                               ; preds = %51, %156
  %59 = phi ptr [ %164, %156 ], [ %56, %51 ]
  %60 = phi ptr [ %163, %156 ], [ null, %51 ]
  %61 = phi float [ %162, %156 ], [ 0.000000e+00, %51 ]
  %62 = phi float [ %161, %156 ], [ %46, %51 ]
  %63 = phi float [ %160, %156 ], [ %8, %51 ]
  %64 = phi float [ %159, %156 ], [ 0.000000e+00, %51 ]
  %65 = phi float [ %158, %156 ], [ 0.000000e+00, %51 ]
  %66 = phi float [ %157, %156 ], [ 0.000000e+00, %51 ]
  %67 = load ptr, ptr %1, align 8, !tbaa !72
  %68 = getelementptr inbounds %struct.ParticleSimulationData, ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !189
  %70 = call ptr @psys_get_target_system(ptr noundef %69, ptr noundef nonnull %59) #12
  %71 = icmp eq ptr %70, null
  br i1 %71, label %156, label %72

72:                                               ; preds = %58
  %73 = getelementptr inbounds %struct.ParticleSystem, ptr %70, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !185
  %75 = getelementptr inbounds %struct.ParticleSystem, ptr %70, i64 0, i32 46
  %76 = load ptr, ptr %75, align 8, !tbaa !184
  %77 = load float, ptr %6, align 8, !tbaa !148
  %78 = call i32 @BLI_kdtree_range_search__normal(ptr noundef %76, ptr noundef nonnull %14, ptr noundef null, ptr noundef nonnull %5, float noundef %77) #12
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %124

80:                                               ; preds = %72
  %81 = load ptr, ptr %5, align 8, !tbaa !44
  %82 = getelementptr inbounds %struct.ParticleTarget, ptr %59, i64 0, i32 5
  %83 = zext nneg i32 %78 to i64
  br label %84

84:                                               ; preds = %80, %116
  %85 = phi i64 [ 0, %80 ], [ %122, %116 ]
  %86 = phi ptr [ %60, %80 ], [ %121, %116 ]
  %87 = phi float [ 0.000000e+00, %80 ], [ %99, %116 ]
  %88 = phi float [ %63, %80 ], [ %120, %116 ]
  %89 = phi float [ %64, %80 ], [ %119, %116 ]
  %90 = phi float [ %65, %80 ], [ %118, %116 ]
  %91 = phi float [ %66, %80 ], [ %117, %116 ]
  %92 = getelementptr inbounds %struct.KDTreeNearest, ptr %81, i64 %85
  %93 = load i32, ptr %92, align 4, !tbaa !186
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.ParticleData, ptr %74, i64 %94, i32 4
  %96 = load ptr, ptr %95, align 8, !tbaa !57
  %97 = getelementptr inbounds %struct.BoidParticle, ptr %96, i64 0, i32 1
  %98 = load float, ptr %97, align 8, !tbaa !68
  %99 = fadd float %87, %98
  %100 = icmp eq i64 %85, 0
  br i1 %100, label %101, label %116

101:                                              ; preds = %84
  %102 = load i16, ptr %82, align 2, !tbaa !202
  %103 = icmp eq i16 %102, 2
  br i1 %103, label %104, label %116

104:                                              ; preds = %101
  %105 = getelementptr inbounds %struct.KDTreeNearest, ptr %81, i64 %85, i32 1
  %106 = load float, ptr %105, align 4, !tbaa !192
  %107 = fcmp olt float %106, %88
  br i1 %107, label %108, label %116

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.KDTreeNearest, ptr %81, i64 %85, i32 2
  %110 = load float, ptr %109, align 4, !tbaa !53
  %111 = getelementptr inbounds float, ptr %109, i64 1
  %112 = load float, ptr %111, align 4, !tbaa !53
  %113 = getelementptr inbounds float, ptr %109, i64 2
  %114 = load float, ptr %113, align 4, !tbaa !53
  %115 = getelementptr inbounds %struct.ParticleData, ptr %74, i64 %94
  br label %116

116:                                              ; preds = %84, %101, %104, %108
  %117 = phi float [ %110, %108 ], [ %91, %104 ], [ %91, %101 ], [ %91, %84 ]
  %118 = phi float [ %112, %108 ], [ %90, %104 ], [ %90, %101 ], [ %90, %84 ]
  %119 = phi float [ %114, %108 ], [ %89, %104 ], [ %89, %101 ], [ %89, %84 ]
  %120 = phi float [ %106, %108 ], [ %88, %104 ], [ %88, %101 ], [ %88, %84 ]
  %121 = phi ptr [ %115, %108 ], [ %86, %104 ], [ %86, %101 ], [ %86, %84 ]
  %122 = add nuw nsw i64 %85, 1
  %123 = icmp eq i64 %122, %83
  br i1 %123, label %124, label %84, !llvm.loop !204

124:                                              ; preds = %116, %72
  %125 = phi float [ %66, %72 ], [ %117, %116 ]
  %126 = phi float [ %65, %72 ], [ %118, %116 ]
  %127 = phi float [ %64, %72 ], [ %119, %116 ]
  %128 = phi float [ %63, %72 ], [ %120, %116 ]
  %129 = phi float [ 0.000000e+00, %72 ], [ %99, %116 ]
  %130 = phi ptr [ %60, %72 ], [ %121, %116 ]
  %131 = getelementptr inbounds %struct.ParticleTarget, ptr %59, i64 0, i32 5
  %132 = load i16, ptr %131, align 2, !tbaa !202
  switch i16 %132, label %149 [
    i16 2, label %133
    i16 1, label %141
  ]

133:                                              ; preds = %124
  %134 = getelementptr inbounds %struct.ParticleSystem, ptr %70, i64 0, i32 2
  %135 = load ptr, ptr %134, align 8, !tbaa !205
  %136 = getelementptr inbounds %struct.ParticleSettings, ptr %135, i64 0, i32 2
  %137 = load ptr, ptr %136, align 8, !tbaa !34
  %138 = getelementptr inbounds %struct.BoidSettings, ptr %137, i64 0, i32 8
  %139 = load float, ptr %138, align 8, !tbaa !156
  %140 = call float @llvm.fmuladd.f32(float %139, float %129, float %61)
  br label %149

141:                                              ; preds = %124
  %142 = getelementptr inbounds %struct.ParticleSystem, ptr %70, i64 0, i32 2
  %143 = load ptr, ptr %142, align 8, !tbaa !205
  %144 = getelementptr inbounds %struct.ParticleSettings, ptr %143, i64 0, i32 2
  %145 = load ptr, ptr %144, align 8, !tbaa !34
  %146 = getelementptr inbounds %struct.BoidSettings, ptr %145, i64 0, i32 8
  %147 = load float, ptr %146, align 8, !tbaa !156
  %148 = call float @llvm.fmuladd.f32(float %147, float %129, float %62)
  br label %149

149:                                              ; preds = %124, %141, %133
  %150 = phi float [ %62, %133 ], [ %148, %141 ], [ %62, %124 ]
  %151 = phi float [ %140, %133 ], [ %61, %141 ], [ %61, %124 ]
  %152 = load ptr, ptr %5, align 8, !tbaa !44
  %153 = icmp eq ptr %152, null
  br i1 %153, label %156, label %154

154:                                              ; preds = %149
  %155 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %155(ptr noundef nonnull %152) #12
  store ptr null, ptr %5, align 8, !tbaa !44
  br label %156

156:                                              ; preds = %149, %154, %58
  %157 = phi float [ %66, %58 ], [ %125, %149 ], [ %125, %154 ]
  %158 = phi float [ %65, %58 ], [ %126, %149 ], [ %126, %154 ]
  %159 = phi float [ %64, %58 ], [ %127, %149 ], [ %127, %154 ]
  %160 = phi float [ %63, %58 ], [ %128, %149 ], [ %128, %154 ]
  %161 = phi float [ %62, %58 ], [ %150, %149 ], [ %150, %154 ]
  %162 = phi float [ %61, %58 ], [ %151, %149 ], [ %151, %154 ]
  %163 = phi ptr [ %60, %58 ], [ %130, %149 ], [ %130, %154 ]
  %164 = load ptr, ptr %59, align 8, !tbaa !44
  %165 = icmp eq ptr %164, null
  br i1 %165, label %166, label %58, !llvm.loop !206

166:                                              ; preds = %156, %51
  %167 = phi float [ 0.000000e+00, %51 ], [ %157, %156 ]
  %168 = phi float [ 0.000000e+00, %51 ], [ %158, %156 ]
  %169 = phi float [ 0.000000e+00, %51 ], [ %159, %156 ]
  %170 = phi float [ %8, %51 ], [ %160, %156 ]
  %171 = phi float [ %46, %51 ], [ %161, %156 ]
  %172 = phi float [ 0.000000e+00, %51 ], [ %162, %156 ]
  %173 = phi ptr [ null, %51 ], [ %163, %156 ]
  %174 = fcmp ogt float %172, 0.000000e+00
  br i1 %174, label %175, label %289

175:                                              ; preds = %166
  %176 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5
  %177 = load float, ptr %14, align 4, !tbaa !53
  %178 = fsub float %167, %177
  store float %178, ptr %176, align 4, !tbaa !53
  %179 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 0, i64 1
  %180 = load float, ptr %179, align 4, !tbaa !53
  %181 = fsub float %168, %180
  %182 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5, i64 1
  store float %181, ptr %182, align 4, !tbaa !53
  %183 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 0, i64 2
  %184 = load float, ptr %183, align 4, !tbaa !53
  %185 = fsub float %169, %184
  %186 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5, i64 2
  store float %185, ptr %186, align 4, !tbaa !53
  %187 = load ptr, ptr %40, align 8, !tbaa !55
  %188 = getelementptr inbounds %struct.ParticleSettings, ptr %187, i64 0, i32 2
  %189 = load ptr, ptr %188, align 8, !tbaa !34
  %190 = getelementptr inbounds %struct.BoidSettings, ptr %189, i64 0, i32 10
  %191 = load float, ptr %190, align 8, !tbaa !155
  %192 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 13
  %193 = load float, ptr %192, align 4, !tbaa !109
  %194 = fadd float %191, %193
  %195 = getelementptr inbounds %struct.ParticleData, ptr %173, i64 0, i32 13
  %196 = load float, ptr %195, align 4, !tbaa !109
  %197 = fadd float %194, %196
  %198 = fcmp ugt float %170, %197
  br i1 %198, label %253, label %199

199:                                              ; preds = %175
  %200 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 11
  %201 = load ptr, ptr %200, align 8, !tbaa !112
  %202 = call float @BLI_rng_get_float(ptr noundef %201) #12
  %203 = load float, ptr %176, align 4, !tbaa !53
  %204 = load float, ptr %182, align 4, !tbaa !53
  %205 = fmul float %204, %204
  %206 = call float @llvm.fmuladd.f32(float %203, float %203, float %205)
  %207 = load float, ptr %186, align 4, !tbaa !53
  %208 = call float @llvm.fmuladd.f32(float %207, float %207, float %206)
  %209 = fcmp ogt float %208, 0x38AA95A5C0000000
  br i1 %209, label %210, label %219

210:                                              ; preds = %199
  %211 = call float @sqrtf(float noundef %208) #12
  %212 = fdiv float 1.000000e+00, %211
  %213 = load float, ptr %176, align 4, !tbaa !53
  %214 = fmul float %213, %212
  %215 = load float, ptr %182, align 4, !tbaa !53
  %216 = fmul float %212, %215
  %217 = load float, ptr %186, align 4, !tbaa !53
  %218 = fmul float %212, %217
  br label %219

219:                                              ; preds = %199, %210
  %220 = phi float [ %218, %210 ], [ 0.000000e+00, %199 ]
  %221 = phi float [ %216, %210 ], [ 0.000000e+00, %199 ]
  %222 = phi float [ %214, %210 ], [ 0.000000e+00, %199 ]
  %223 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 6
  store float 0.000000e+00, ptr %223, align 8, !tbaa !101
  %224 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 3
  %225 = load float, ptr %224, align 4, !tbaa !53
  %226 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 3, i64 1
  %227 = load float, ptr %226, align 4, !tbaa !53
  %228 = fmul float %221, %227
  %229 = call float @llvm.fmuladd.f32(float %225, float %222, float %228)
  %230 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 3, i64 2
  %231 = load float, ptr %230, align 4, !tbaa !53
  %232 = call float @llvm.fmuladd.f32(float %231, float %220, float %229)
  %233 = fcmp ogt float %232, 5.000000e-01
  br i1 %233, label %234, label %256

234:                                              ; preds = %219
  %235 = getelementptr inbounds %struct.ParticleData, ptr %173, i64 0, i32 4
  %236 = load ptr, ptr %235, align 8, !tbaa !57
  %237 = load ptr, ptr %40, align 8, !tbaa !55
  %238 = getelementptr inbounds %struct.ParticleSettings, ptr %237, i64 0, i32 2
  %239 = load ptr, ptr %238, align 8, !tbaa !34
  %240 = getelementptr inbounds %struct.BoidSettings, ptr %239, i64 0, i32 8
  %241 = load float, ptr %240, align 8, !tbaa !156
  %242 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 2
  %243 = load float, ptr %242, align 8, !tbaa !107
  %244 = getelementptr inbounds %struct.BoidSettings, ptr %239, i64 0, i32 9
  %245 = load float, ptr %244, align 4, !tbaa !153
  %246 = fsub float 1.000000e+00, %245
  %247 = call float @llvm.fmuladd.f32(float %246, float %202, float %245)
  %248 = getelementptr inbounds %struct.BoidParticle, ptr %236, i64 0, i32 1
  %249 = load float, ptr %248, align 8, !tbaa !68
  %250 = fneg float %241
  %251 = fmul float %243, %250
  %252 = call float @llvm.fmuladd.f32(float %251, float %247, float %249)
  store float %252, ptr %248, align 8, !tbaa !68
  br label %256

253:                                              ; preds = %175
  %254 = load float, ptr %2, align 4, !tbaa !81
  %255 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 6
  store float %254, ptr %255, align 8, !tbaa !101
  br label %256

256:                                              ; preds = %219, %234, %253
  %257 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 4
  %258 = load ptr, ptr %257, align 8, !tbaa !57
  %259 = getelementptr inbounds %struct.BoidParticle, ptr %258, i64 0, i32 1
  %260 = load float, ptr %259, align 8, !tbaa !68
  %261 = load ptr, ptr %40, align 8, !tbaa !55
  %262 = getelementptr inbounds %struct.ParticleSettings, ptr %261, i64 0, i32 2
  %263 = load ptr, ptr %262, align 8, !tbaa !34
  %264 = getelementptr inbounds %struct.BoidSettings, ptr %263, i64 0, i32 6
  %265 = load float, ptr %264, align 8, !tbaa !79
  %266 = fdiv float %260, %265
  %267 = getelementptr inbounds %struct.BoidSettings, ptr %263, i64 0, i32 7
  %268 = load float, ptr %267, align 4, !tbaa !154
  %269 = fmul float %266, %268
  %270 = fdiv float %172, %171
  %271 = fcmp olt float %269, %270
  br i1 %271, label %272, label %289

272:                                              ; preds = %256
  %273 = getelementptr inbounds %struct.BoidRuleFight, ptr %0, i64 0, i32 2
  %274 = load float, ptr %273, align 4, !tbaa !150
  %275 = load float, ptr %6, align 8, !tbaa !148
  %276 = fmul float %274, %275
  %277 = fcmp olt float %170, %276
  br i1 %277, label %278, label %286

278:                                              ; preds = %272
  %279 = load float, ptr %176, align 4, !tbaa !53
  %280 = fneg float %279
  store float %280, ptr %176, align 4, !tbaa !53
  %281 = load float, ptr %182, align 4, !tbaa !53
  %282 = fneg float %281
  store float %282, ptr %182, align 4, !tbaa !53
  %283 = load float, ptr %186, align 4, !tbaa !53
  %284 = fneg float %283
  store float %284, ptr %186, align 4, !tbaa !53
  %285 = load float, ptr %2, align 4, !tbaa !81
  br label %286

286:                                              ; preds = %272, %278
  %287 = phi float [ %285, %278 ], [ 0.000000e+00, %272 ]
  %288 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 6
  store float %287, ptr %288, align 8, !tbaa !101
  br label %289

289:                                              ; preds = %286, %256, %166
  %290 = phi i32 [ 0, %166 ], [ 1, %256 ], [ 1, %286 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  ret i32 %290
}

declare i32 @get_effector_data(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare float @effector_falloff(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #11

declare i32 @BLI_bvhtree_ray_cast(ptr noundef, ptr noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_psys_collision_neartest_cb(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #11

declare i32 @BLI_kdtree_range_search__normal(ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

declare ptr @psys_get_target_system(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @BLI_kdtree_find_nearest_n__normal(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @modifiers_findByType(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @closest_point_on_surface(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #11

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind }

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
!34 = !{!35, !37, i64 128}
!35 = !{!"ParticleSettings", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !41, i64 152, !41, i64 156, !40, i64 160, !40, i64 162, !40, i64 164, !40, i64 166, !40, i64 168, !40, i64 170, !40, i64 172, !40, i64 174, !41, i64 176, !41, i64 180, !40, i64 184, !40, i64 186, !40, i64 188, !40, i64 190, !40, i64 192, !40, i64 194, !40, i64 196, !40, i64 198, !40, i64 200, !40, i64 202, !40, i64 204, !40, i64 206, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !40, i64 220, !40, i64 222, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !42, i64 232, !42, i64 236, !38, i64 240, !38, i64 248, !42, i64 256, !42, i64 260, !42, i64 264, !40, i64 268, !40, i64 270, !42, i64 272, !42, i64 276, !42, i64 280, !42, i64 284, !42, i64 288, !42, i64 292, !42, i64 296, !42, i64 300, !42, i64 304, !42, i64 308, !42, i64 312, !42, i64 316, !38, i64 320, !41, i64 324, !41, i64 328, !41, i64 332, !41, i64 336, !40, i64 340, !38, i64 342, !42, i64 348, !42, i64 352, !42, i64 356, !42, i64 360, !42, i64 364, !42, i64 368, !42, i64 372, !38, i64 376, !42, i64 388, !42, i64 392, !42, i64 396, !42, i64 400, !42, i64 404, !42, i64 408, !42, i64 412, !38, i64 416, !42, i64 428, !42, i64 432, !42, i64 436, !42, i64 440, !41, i64 444, !41, i64 448, !42, i64 452, !42, i64 456, !42, i64 460, !42, i64 464, !42, i64 468, !42, i64 472, !42, i64 476, !42, i64 480, !42, i64 484, !42, i64 488, !42, i64 492, !42, i64 496, !42, i64 500, !42, i64 504, !42, i64 508, !42, i64 512, !42, i64 516, !42, i64 520, !42, i64 524, !42, i64 528, !42, i64 532, !42, i64 536, !42, i64 540, !42, i64 544, !42, i64 548, !38, i64 552, !42, i64 560, !42, i64 564, !41, i64 568, !41, i64 572, !38, i64 576, !37, i64 720, !43, i64 728, !37, i64 744, !37, i64 752, !37, i64 760, !37, i64 768, !37, i64 776, !37, i64 784, !40, i64 792, !38, i64 794}
!36 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !37, i64 112}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!"float", !38, i64 0}
!43 = !{!"ListBase", !37, i64 0, !37, i64 8}
!44 = !{!37, !37, i64 0}
!45 = distinct !{!45, !46, !47}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"llvm.loop.unroll.disable"}
!48 = !{!49, !41, i64 16}
!49 = !{!"BoidRule", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !38, i64 24}
!50 = !{!51, !37, i64 56}
!51 = !{!"BoidRuleFollowLeader", !49, i64 0, !37, i64 56, !38, i64 64, !38, i64 76, !42, i64 88, !42, i64 92, !41, i64 96, !41, i64 100}
!52 = !{!51, !42, i64 88}
!53 = !{!42, !42, i64 0}
!54 = distinct !{!54, !46, !47}
!55 = !{!56, !37, i64 8}
!56 = !{!"BoidBrainData", !37, i64 0, !37, i64 8, !42, i64 16, !42, i64 20, !42, i64 24, !38, i64 28, !42, i64 40, !37, i64 48, !38, i64 56, !38, i64 68, !42, i64 80, !37, i64 88}
!57 = !{!58, !37, i64 128}
!58 = !{!"ParticleData", !59, i64 0, !59, i64 56, !37, i64 112, !37, i64 120, !37, i64 128, !41, i64 136, !42, i64 140, !42, i64 144, !42, i64 148, !41, i64 152, !41, i64 156, !38, i64 160, !42, i64 176, !42, i64 180, !42, i64 184, !41, i64 188, !41, i64 192, !40, i64 196, !40, i64 198}
!59 = !{!"ParticleKey", !38, i64 0, !38, i64 12, !38, i64 24, !38, i64 40, !42, i64 52}
!60 = !{!61, !41, i64 96}
!61 = !{!"BoidState", !37, i64 0, !37, i64 8, !43, i64 16, !43, i64 32, !43, i64 48, !38, i64 64, !41, i64 96, !41, i64 100, !41, i64 104, !42, i64 108, !41, i64 112, !41, i64 116, !42, i64 120, !42, i64 124}
!62 = !{!63, !40, i64 24}
!63 = !{!"BoidParticle", !37, i64 0, !64, i64 8, !38, i64 28, !38, i64 40, !42, i64 52}
!64 = !{!"BoidData", !42, i64 0, !38, i64 4, !40, i64 16, !40, i64 18}
!65 = distinct !{!65, !46, !47}
!66 = !{!67, !37, i64 88}
!67 = !{!"BoidSettings", !41, i64 0, !41, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !42, i64 40, !42, i64 44, !42, i64 48, !42, i64 52, !42, i64 56, !42, i64 60, !42, i64 64, !42, i64 68, !42, i64 72, !42, i64 76, !42, i64 80, !42, i64 84, !43, i64 88}
!68 = !{!63, !42, i64 8}
!69 = !{!58, !40, i64 198}
!70 = !{!56, !42, i64 20}
!71 = !{!58, !42, i64 148}
!72 = !{!56, !37, i64 0}
!73 = !{!74, !37, i64 16}
!74 = !{!"ParticleSimulationData", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !42, i64 40}
!75 = !{!76, !41, i64 308}
!76 = !{!"ParticleSystem", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !43, i64 72, !43, i64 88, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !43, i64 152, !38, i64 168, !38, i64 232, !42, i64 296, !42, i64 300, !42, i64 304, !41, i64 308, !41, i64 312, !41, i64 316, !41, i64 320, !41, i64 324, !41, i64 328, !41, i64 332, !41, i64 336, !40, i64 340, !40, i64 342, !40, i64 344, !40, i64 346, !38, i64 348, !38, i64 540, !40, i64 564, !40, i64 566, !37, i64 568, !37, i64 576, !43, i64 584, !37, i64 600, !37, i64 608, !41, i64 616, !41, i64 620, !37, i64 624, !37, i64 632, !37, i64 640, !42, i64 648, !42, i64 652}
!77 = !{!41, !41, i64 0}
!78 = !{!63, !40, i64 26}
!79 = !{!67, !42, i64 24}
!80 = !{!67, !42, i64 68}
!81 = !{!82, !42, i64 0}
!82 = !{!"BoidValues", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20}
!83 = !{!67, !42, i64 72}
!84 = !{!82, !42, i64 4}
!85 = !{!67, !42, i64 76}
!86 = !{!82, !42, i64 8}
!87 = !{!82, !42, i64 12}
!88 = !{!67, !42, i64 80}
!89 = !{!82, !42, i64 16}
!90 = !{!67, !42, i64 64}
!91 = !{!67, !42, i64 48}
!92 = !{!67, !42, i64 52}
!93 = !{!67, !42, i64 56}
!94 = !{!67, !42, i64 44}
!95 = !{!67, !42, i64 60}
!96 = !{!82, !42, i64 20}
!97 = !{!61, !41, i64 104}
!98 = !{!61, !42, i64 108}
!99 = !{!49, !41, i64 20}
!100 = distinct !{!100, !46, !47}
!101 = !{!56, !42, i64 40}
!102 = distinct !{!102, !46, !47}
!103 = !{!67, !41, i64 0}
!104 = !{!74, !37, i64 0}
!105 = !{!35, !42, i64 404}
!106 = !{!56, !42, i64 24}
!107 = !{!56, !42, i64 16}
!108 = !{!35, !41, i64 152}
!109 = !{!58, !42, i64 180}
!110 = !{!63, !37, i64 0}
!111 = !{!67, !42, i64 8}
!112 = !{!56, !37, i64 88}
!113 = !{!76, !37, i64 600}
!114 = !{!74, !37, i64 32}
!115 = !{!35, !37, i64 144}
!116 = !{!67, !42, i64 84}
!117 = !{!67, !42, i64 16}
!118 = !{!56, !37, i64 48}
!119 = !{!67, !42, i64 12}
!120 = !{!67, !42, i64 20}
!121 = !{!35, !42, i64 436}
!122 = !{!123, !42, i64 48}
!123 = !{!"ParticleCollision", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !42, i64 48, !42, i64 52, !42, i64 56, !42, i64 60, !42, i64 64, !42, i64 68, !41, i64 72, !124, i64 80, !42, i64 240, !42, i64 244, !42, i64 248, !42, i64 252, !38, i64 256, !38, i64 268, !38, i64 280, !38, i64 292, !38, i64 304, !42, i64 316, !41, i64 320}
!124 = !{!"ParticleCollisionElement", !38, i64 0, !38, i64 32, !38, i64 64, !38, i64 76, !38, i64 88, !38, i64 100, !38, i64 112, !38, i64 124, !38, i64 136, !41, i64 144, !41, i64 148, !40, i64 152, !40, i64 154}
!125 = !{!126, !41, i64 0}
!126 = !{!"BVHTreeRayHit", !41, i64 0, !38, i64 4, !38, i64 16, !42, i64 28, !41, i64 32}
!127 = !{!123, !42, i64 68}
!128 = !{!126, !42, i64 28}
!129 = !{!123, !40, i64 234}
!130 = !{!131, !37, i64 16}
!131 = !{!"ColliderCache", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!132 = !{!123, !37, i64 0}
!133 = !{!131, !37, i64 24}
!134 = !{!123, !37, i64 40}
!135 = !{!123, !42, i64 56}
!136 = !{!123, !42, i64 52}
!137 = !{!138, !37, i64 184}
!138 = !{!"CollisionModifierData", !139, i64 0, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !41, i64 168, !41, i64 172, !42, i64 176, !42, i64 180, !37, i64 184}
!139 = !{!"ModifierData", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !38, i64 32, !37, i64 96, !37, i64 104}
!140 = distinct !{!140, !46, !47}
!141 = !{!123, !37, i64 8}
!142 = distinct !{!142, !46, !47}
!143 = !{!144, !42, i64 60}
!144 = !{!"BoidRuleAvoidCollision", !49, i64 0, !41, i64 56, !42, i64 60}
!145 = !{!51, !42, i64 92}
!146 = !{!147, !42, i64 64}
!147 = !{!"BoidRuleAverageSpeed", !49, i64 0, !42, i64 56, !42, i64 60, !42, i64 64, !42, i64 68}
!148 = !{!149, !42, i64 56}
!149 = !{!"BoidRuleFight", !49, i64 0, !42, i64 56, !42, i64 60}
!150 = !{!149, !42, i64 60}
!151 = !{!152, !37, i64 24}
!152 = !{!"EnumPropertyItem", !41, i64 0, !37, i64 8, !41, i64 16, !37, i64 24, !37, i64 32}
!153 = !{!67, !42, i64 36}
!154 = !{!67, !42, i64 28}
!155 = !{!67, !42, i64 40}
!156 = !{!67, !42, i64 32}
!157 = !{!67, !41, i64 4}
!158 = !{!61, !42, i64 120}
!159 = !{!61, !41, i64 116}
!160 = distinct !{!160, !46, !47}
!161 = distinct !{!161, !46, !47}
!162 = !{!61, !41, i64 100}
!163 = distinct !{!163, !46, !47}
!164 = !{!165, !37, i64 24}
!165 = !{!"EffectorCache", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !38, i64 64, !38, i64 80, !42, i64 92, !38, i64 96, !42, i64 108, !41, i64 112}
!166 = !{!165, !37, i64 48}
!167 = !{!168, !37, i64 56}
!168 = !{!"BoidRuleGoalAvoid", !49, i64 0, !37, i64 56, !41, i64 64, !42, i64 68, !41, i64 72, !41, i64 76}
!169 = !{!170, !40, i64 6}
!170 = !{!"PartDeflect", !41, i64 0, !40, i64 4, !40, i64 6, !40, i64 8, !40, i64 10, !40, i64 12, !40, i64 14, !40, i64 16, !40, i64 18, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !42, i64 40, !42, i64 44, !42, i64 48, !42, i64 52, !42, i64 56, !42, i64 60, !42, i64 64, !42, i64 68, !42, i64 72, !42, i64 76, !42, i64 80, !42, i64 84, !42, i64 88, !42, i64 92, !42, i64 96, !42, i64 100, !42, i64 104, !42, i64 108, !42, i64 112, !42, i64 116, !42, i64 120, !42, i64 124, !37, i64 128, !37, i64 136, !42, i64 144, !41, i64 148, !37, i64 152}
!171 = !{!170, !42, i64 20}
!172 = !{i64 0, i64 12, !173, i64 12, i64 12, !173, i64 24, i64 12, !173, i64 36, i64 12, !173, i64 48, i64 4, !53, i64 52, i64 4, !53, i64 56, i64 4, !53, i64 60, i64 4, !53, i64 64, i64 12, !173, i64 76, i64 12, !173, i64 88, i64 8, !44}
!173 = !{!38, !38, i64 0}
!174 = !{!175, !42, i64 48}
!175 = !{!"EffectorData", !38, i64 0, !38, i64 12, !38, i64 24, !38, i64 36, !42, i64 48, !42, i64 52, !42, i64 56, !42, i64 60, !38, i64 64, !38, i64 76, !37, i64 88}
!176 = distinct !{!176, !46, !47}
!177 = !{!165, !37, i64 16}
!178 = !{!168, !42, i64 68}
!179 = !{!170, !40, i64 10}
!180 = !{!168, !41, i64 64}
!181 = !{!56, !42, i64 80}
!182 = !{!144, !41, i64 56}
!183 = distinct !{!183, !46, !47}
!184 = !{!76, !37, i64 624}
!185 = !{!76, !37, i64 24}
!186 = !{!187, !41, i64 0}
!187 = !{!"KDTreeNearest", !41, i64 0, !42, i64 4, !38, i64 8}
!188 = distinct !{!188, !46, !47}
!189 = !{!74, !37, i64 8}
!190 = distinct !{!190, !46, !47}
!191 = distinct !{!191, !46, !47}
!192 = !{!187, !42, i64 4}
!193 = distinct !{!193, !46, !47}
!194 = distinct !{!194, !46, !47}
!195 = !{!51, !41, i64 100}
!196 = !{!76, !41, i64 320}
!197 = !{!51, !41, i64 96}
!198 = distinct !{!198, !46, !47}
!199 = !{!147, !42, i64 56}
!200 = !{!147, !42, i64 60}
!201 = distinct !{!201, !46, !47}
!202 = !{!203, !40, i64 30}
!203 = !{!"ParticleTarget", !37, i64 0, !37, i64 8, !37, i64 16, !41, i64 24, !40, i64 28, !40, i64 30, !42, i64 32, !42, i64 36}
!204 = distinct !{!204, !46, !47}
!205 = !{!76, !37, i64 16}
!206 = distinct !{!206, !46, !47}
