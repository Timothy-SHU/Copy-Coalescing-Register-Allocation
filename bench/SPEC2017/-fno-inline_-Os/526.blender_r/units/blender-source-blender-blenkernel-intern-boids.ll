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
@__const.boid_find_ground.zvec = private unnamed_addr constant [3 x float] [float 0.000000e+00, float 0.000000e+00, float 2.000000e+03], align 4

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @boids_precalc_rules(ptr nocapture noundef readonly %0, float noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.BoidSettings, ptr %4, i64 0, i32 22
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = icmp eq ptr %6, null
  br i1 %7, label %37, label %11

8:                                                ; preds = %34, %11
  %9 = load ptr, ptr %12, align 8, !tbaa !44
  %10 = icmp eq ptr %9, null
  br i1 %10, label %37, label %11, !llvm.loop !45

11:                                               ; preds = %2, %8
  %12 = phi ptr [ %9, %8 ], [ %6, %2 ]
  %13 = getelementptr inbounds %struct.BoidState, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = icmp eq ptr %14, null
  br i1 %15, label %8, label %16

16:                                               ; preds = %11, %34
  %17 = phi ptr [ %35, %34 ], [ %14, %11 ]
  %18 = getelementptr inbounds %struct.BoidRule, ptr %17, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !47
  %20 = icmp eq i32 %19, 6
  br i1 %20, label %21, label %34

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.BoidRuleFollowLeader, ptr %17, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !49
  %24 = icmp eq ptr %23, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.BoidRuleFollowLeader, ptr %17, i64 0, i32 4
  %27 = load float, ptr %26, align 8, !tbaa !51
  %28 = fcmp une float %27, %1
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.BoidRuleFollowLeader, ptr %17, i64 0, i32 3
  %31 = getelementptr inbounds %struct.BoidRuleFollowLeader, ptr %17, i64 0, i32 2
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %30, ptr noundef nonnull %31) #19
  %32 = load ptr, ptr %22, align 8, !tbaa !49
  %33 = getelementptr inbounds %struct.Object, ptr %32, i64 0, i32 47, i64 3
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %31, ptr noundef nonnull %33) #19
  store float %1, ptr %26, align 8, !tbaa !51
  br label %34

34:                                               ; preds = %21, %25, %29, %16
  %35 = load ptr, ptr %17, align 8, !tbaa !44
  %36 = icmp eq ptr %35, null
  br i1 %36, label %8, label %16, !llvm.loop !52

37:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !53 {
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

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @boid_brain(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #3 {
  %4 = alloca %struct.BoidValues, align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !55
  %13 = getelementptr inbounds %struct.ParticleSettings, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #20
  %15 = tail call fastcc ptr @get_boid_state(ptr noundef %14, ptr noundef %2) #19
  %16 = getelementptr inbounds %struct.ParticleData, ptr %2, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !57
  %18 = getelementptr inbounds %struct.BoidParticle, ptr %17, i64 0, i32 1
  %19 = load float, ptr %18, align 8, !tbaa !60
  %20 = fcmp ugt float %19, 0.000000e+00
  br i1 %20, label %26, label %21

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.ParticleData, ptr %2, i64 0, i32 18
  store i16 4, ptr %22, align 2, !tbaa !63
  %23 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 3
  %24 = load float, ptr %23, align 4, !tbaa !64
  %25 = getelementptr inbounds %struct.ParticleData, ptr %2, i64 0, i32 8
  store float %24, ptr %25, align 4, !tbaa !65
  br label %174

26:                                               ; preds = %3
  %27 = load ptr, ptr %0, align 8, !tbaa !66
  %28 = getelementptr inbounds %struct.ParticleSimulationData, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !67
  %30 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 5
  tail call fastcc void @zero_v3(ptr noundef nonnull %30) #19
  %31 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 6
  store float 0.000000e+00, ptr %31, align 8, !tbaa !69
  %32 = getelementptr inbounds %struct.ParticleSystem, ptr %29, i64 0, i32 23
  %33 = load i32, ptr %32, align 4, !tbaa !70
  %34 = add nsw i32 %33, %1
  %35 = tail call fastcc float @psys_frand(ptr noundef %29, i32 noundef %34) #19
  %36 = fmul float %35, 1.000000e+03
  %37 = fptosi float %36 to i32
  %38 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 3
  %39 = load float, ptr %38, align 4, !tbaa !64
  %40 = fptosi float %39 to i32
  %41 = add nsw i32 %40, %37
  %42 = tail call fastcc float @psys_frand(ptr noundef %29, i32 noundef %41) #19
  %43 = load ptr, ptr %11, align 8, !tbaa !55
  %44 = getelementptr inbounds %struct.ParticleSettings, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !34
  call fastcc void @set_boid_values(ptr noundef nonnull %4, ptr noundef %45, ptr noundef nonnull %2) #19
  %46 = getelementptr inbounds %struct.BoidState, ptr %15, i64 0, i32 8
  %47 = load i32, ptr %46, align 8, !tbaa !72
  switch i32 %47, label %94 [
    i32 0, label %48
    i32 1, label %59
    i32 2, label %67
  ]

48:                                               ; preds = %26
  %49 = getelementptr inbounds %struct.BoidState, ptr %15, i64 0, i32 2
  %50 = getelementptr inbounds %struct.BoidState, ptr %15, i64 0, i32 9
  br label %51

51:                                               ; preds = %55, %48
  %52 = phi ptr [ %49, %48 ], [ %53, %55 ]
  %53 = load ptr, ptr %52, align 8, !tbaa !44
  %54 = icmp eq ptr %53, null
  br i1 %54, label %94, label %55

55:                                               ; preds = %51
  %56 = load float, ptr %50, align 4, !tbaa !74
  %57 = call fastcc i32 @apply_boid_rule(ptr noundef nonnull %0, ptr noundef nonnull %53, ptr noundef nonnull %4, ptr noundef %2, float noundef %56) #19, !range !75
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %51, label %94, !llvm.loop !76

59:                                               ; preds = %26
  %60 = fmul float %42, 1.000000e+03
  %61 = fptosi float %60 to i32
  %62 = getelementptr inbounds %struct.BoidState, ptr %15, i64 0, i32 2
  %63 = tail call i32 @BLI_countlist(ptr noundef nonnull %62) #21
  %64 = srem i32 %61, %63
  %65 = tail call ptr @BLI_findlink(ptr noundef nonnull %62, i32 noundef %64) #21
  %66 = call fastcc i32 @apply_boid_rule(ptr noundef nonnull %0, ptr noundef %65, ptr noundef nonnull %4, ptr noundef nonnull %2, float noundef -1.000000e+00) #19, !range !75
  br label %94

67:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i64 12, i1 false)
  %68 = getelementptr inbounds %struct.BoidState, ptr %15, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !44
  %70 = icmp eq ptr %69, null
  br i1 %70, label %92, label %71

71:                                               ; preds = %67, %81
  %72 = phi ptr [ %84, %81 ], [ %69, %67 ]
  %73 = phi float [ %83, %81 ], [ 0.000000e+00, %67 ]
  %74 = phi i32 [ %82, %81 ], [ 0, %67 ]
  %75 = call fastcc i32 @apply_boid_rule(ptr noundef nonnull %0, ptr noundef nonnull %72, ptr noundef nonnull %4, ptr noundef %2, float noundef -1.000000e+00) #19, !range !75
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %71
  call fastcc void @add_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %30) #19
  %78 = load float, ptr %31, align 8, !tbaa !69
  %79 = fadd float %73, %78
  %80 = add nsw i32 %74, 1
  call fastcc void @zero_v3(ptr noundef nonnull %30) #19
  store float 0.000000e+00, ptr %31, align 8, !tbaa !69
  br label %81

81:                                               ; preds = %71, %77
  %82 = phi i32 [ %80, %77 ], [ %74, %71 ]
  %83 = phi float [ %79, %77 ], [ %73, %71 ]
  %84 = load ptr, ptr %72, align 8, !tbaa !44
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %71, !llvm.loop !77

86:                                               ; preds = %81
  %87 = icmp sgt i32 %82, 1
  br i1 %87, label %88, label %92

88:                                               ; preds = %86
  %89 = sitofp i32 %82 to float
  %90 = fdiv float 1.000000e+00, %89
  call fastcc void @mul_v3_fl(ptr noundef nonnull %5, float noundef %90) #19
  %91 = fdiv float %83, %89
  br label %92

92:                                               ; preds = %67, %88, %86
  %93 = phi float [ %91, %88 ], [ %83, %86 ], [ 0.000000e+00, %67 ]
  call fastcc void @copy_v3_v3(ptr noundef nonnull %30, ptr noundef nonnull %5) #19
  store float %93, ptr %31, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #20
  br label %94

94:                                               ; preds = %51, %55, %26, %92, %59
  %95 = getelementptr inbounds %struct.BoidParticle, ptr %17, i64 0, i32 1, i32 3
  %96 = load i16, ptr %95, align 2, !tbaa !78
  %97 = icmp eq i16 %96, 1
  br i1 %97, label %98, label %174

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.BoidState, ptr %15, i64 0, i32 9
  %100 = load float, ptr %99, align 4, !tbaa !74
  %101 = fadd float %100, 1.000000e+00
  %102 = load i32, ptr %14, align 8, !tbaa !79
  %103 = and i32 %102, 1
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %116, label %105

105:                                              ; preds = %98
  %106 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 5, i64 2
  %107 = load float, ptr %106, align 4, !tbaa !54
  %108 = fcmp ogt float %107, 0.000000e+00
  br i1 %108, label %109, label %116

109:                                              ; preds = %105
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #20
  %110 = getelementptr inbounds %struct.ParticleData, ptr %2, i64 0, i32 1, i32 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %110) #19
  call fastcc void @normalize_v2(ptr noundef nonnull %7) #19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %30) #19
  call fastcc void @normalize_v2(ptr noundef nonnull %6) #19
  %111 = call fastcc float @dot_v2v2(ptr noundef nonnull %6, ptr noundef nonnull %7) #19
  %112 = fdiv float 0x3FEE666660000000, %101
  %113 = fcmp ogt float %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  store i16 4, ptr %95, align 2, !tbaa !78
  br label %115

115:                                              ; preds = %114, %109
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #20
  br label %174

116:                                              ; preds = %105, %98
  %117 = getelementptr inbounds %struct.BoidValues, ptr %4, i64 0, i32 5
  %118 = load float, ptr %117, align 4, !tbaa !81
  %119 = fcmp ogt float %118, 0.000000e+00
  br i1 %119, label %120, label %174

120:                                              ; preds = %116
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #20
  %121 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 5, i64 2
  %122 = load float, ptr %121, align 4, !tbaa !54
  %123 = fcmp ogt float %122, 0.000000e+00
  br i1 %123, label %124, label %173

124:                                              ; preds = %120
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #20
  %125 = getelementptr inbounds %struct.ParticleData, ptr %2, i64 0, i32 1, i32 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef nonnull %125) #19
  call fastcc void @normalize_v2(ptr noundef nonnull %10) #19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %30) #19
  call fastcc void @normalize_v2(ptr noundef nonnull %9) #19
  %126 = getelementptr inbounds %struct.ParticleData, ptr %2, i64 0, i32 1, i32 1
  %127 = call fastcc float @len_v2(ptr noundef nonnull %126) #19
  %128 = call fastcc float @dot_v2v2(ptr noundef nonnull %9, ptr noundef nonnull %10) #19
  %129 = fdiv float 0x3FEE666660000000, %101
  %130 = fcmp ogt float %128, %129
  br i1 %130, label %134, label %131

131:                                              ; preds = %124
  %132 = load float, ptr %99, align 4, !tbaa !74
  %133 = fcmp ugt float %127, %132
  br i1 %133, label %172, label %134

134:                                              ; preds = %131, %124
  %135 = load ptr, ptr %0, align 8, !tbaa !66
  %136 = load ptr, ptr %135, align 8, !tbaa !83
  %137 = getelementptr inbounds %struct.Scene, ptr %136, i64 0, i32 40, i32 0, i64 2
  %138 = load float, ptr %137, align 8, !tbaa !54
  %139 = fmul float %138, -2.000000e+00
  %140 = load float, ptr %121, align 4, !tbaa !54
  %141 = fmul float %139, %140
  %142 = call fastcc float @sasqrt(float noundef %141) #19
  %143 = call fastcc float @len_v2(ptr noundef nonnull %30) #19
  %144 = load ptr, ptr %0, align 8, !tbaa !66
  %145 = load ptr, ptr %144, align 8, !tbaa !83
  %146 = getelementptr inbounds %struct.Scene, ptr %145, i64 0, i32 40, i32 0, i64 2
  %147 = load float, ptr %146, align 8, !tbaa !54
  %148 = fmul float %147, -5.000000e-01
  %149 = load float, ptr %121, align 4, !tbaa !54
  %150 = fdiv float %148, %149
  %151 = call fastcc float @sasqrt(float noundef %150) #19
  %152 = fmul float %143, %151
  %153 = fsub float %152, %127
  %154 = fmul float %142, %142
  %155 = call float @llvm.fmuladd.f32(float %153, float %153, float %154)
  %156 = call fastcc float @sasqrt(float noundef %155) #19
  %157 = load float, ptr %117, align 4
  %158 = fmul float %101, %157
  %159 = fcmp olt float %156, %158
  br i1 %159, label %167, label %160

160:                                              ; preds = %134
  %161 = load ptr, ptr %11, align 8, !tbaa !55
  %162 = getelementptr inbounds %struct.ParticleSettings, ptr %161, i64 0, i32 2
  %163 = load ptr, ptr %162, align 8, !tbaa !34
  %164 = load i32, ptr %163, align 8, !tbaa !79
  %165 = and i32 %164, 1
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %172, label %167

167:                                              ; preds = %160, %134
  %168 = fcmp olt float %156, %157
  %169 = select i1 %168, float %156, float %157
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %10) #19
  %170 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  store float %142, ptr %170, align 4, !tbaa !54
  call fastcc void @mul_v3_fl(ptr noundef nonnull %8, float noundef %152) #19
  %171 = call fastcc float @normalize_v3(ptr noundef nonnull %8) #19
  call fastcc void @mul_v3_fl(ptr noundef nonnull %8, float noundef %169) #19
  call fastcc void @add_v2_v2v2(ptr noundef nonnull %8, ptr noundef nonnull %8, ptr noundef nonnull %126) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #20
  call fastcc void @copy_v3_v3(ptr noundef nonnull %126, ptr noundef nonnull %8) #19
  store i16 3, ptr %95, align 2, !tbaa !78
  br label %173

172:                                              ; preds = %160, %131
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #20
  br label %173

173:                                              ; preds = %172, %120, %167
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #20
  br label %174

174:                                              ; preds = %94, %116, %173, %115, %21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #20
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_boid_state(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !84 {
  %3 = getelementptr inbounds %struct.BoidSettings, ptr %0, i64 0, i32 22
  %4 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !57
  %6 = getelementptr inbounds %struct.BoidParticle, ptr %5, i64 0, i32 1, i32 2
  br label %7

7:                                                ; preds = %11, %2
  %8 = phi ptr [ %3, %2 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !44
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.BoidState, ptr %9, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !85
  %14 = load i16, ptr %6, align 8, !tbaa !86
  %15 = sext i16 %14 to i32
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %24, label %7, !llvm.loop !87

17:                                               ; preds = %7
  %18 = load ptr, ptr %3, align 8, !tbaa !88
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.BoidState, ptr %18, i64 0, i32 6
  %22 = load i32, ptr %21, align 8, !tbaa !85
  %23 = trunc i32 %22 to i16
  store i16 %23, ptr %6, align 8, !tbaa !86
  br label %24

24:                                               ; preds = %11, %17, %20
  %25 = phi ptr [ %18, %20 ], [ null, %17 ], [ %9, %11 ]
  ret ptr %25
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #4 !PGOFuncName !89 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !54
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc float @psys_frand(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !PGOFuncName !90 {
  %3 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 23
  %4 = load i32, ptr %3, align 4, !tbaa !70
  %5 = srem i32 %4, 1024
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_OFFSET, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !91
  %9 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_MULTIPLIER, i64 0, i64 %6
  %10 = load i32, ptr %9, align 4, !tbaa !91
  %11 = mul i32 %10, %1
  %12 = add i32 %11, %8
  %13 = and i32 %12, 1023
  %14 = zext nneg i32 %13 to i64
  %15 = getelementptr inbounds [1024 x float], ptr @PSYS_FRAND_BASE, i64 0, i64 %14
  %16 = load float, ptr %15, align 4, !tbaa !54
  ret float %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_boid_values(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 !PGOFuncName !92 {
  %4 = getelementptr inbounds %struct.ParticleData, ptr %2, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !57
  %6 = getelementptr inbounds %struct.BoidParticle, ptr %5, i64 0, i32 1
  %7 = getelementptr inbounds %struct.BoidParticle, ptr %5, i64 0, i32 1, i32 3
  %8 = load i16, ptr %7, align 2, !tbaa !78
  %9 = add i16 %8, -1
  %10 = icmp ult i16 %9, 2
  %11 = load float, ptr %6, align 8, !tbaa !60
  %12 = getelementptr inbounds %struct.BoidSettings, ptr %1, i64 0, i32 6
  %13 = load float, ptr %12, align 8, !tbaa !93
  br i1 %10, label %14, label %28

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.BoidSettings, ptr %1, i64 0, i32 17
  %16 = load float, ptr %15, align 4, !tbaa !94
  %17 = fmul float %16, %11
  %18 = fdiv float %17, %13
  %19 = getelementptr inbounds %struct.BoidSettings, ptr %1, i64 0, i32 18
  %20 = load float, ptr %19, align 8, !tbaa !95
  %21 = fmul float %18, %20
  %22 = getelementptr inbounds %struct.BoidSettings, ptr %1, i64 0, i32 19
  %23 = getelementptr inbounds %struct.BoidSettings, ptr %1, i64 0, i32 20
  %24 = getelementptr inbounds %struct.BoidSettings, ptr %1, i64 0, i32 16
  %25 = load float, ptr %24, align 8, !tbaa !96
  %26 = fmul float %11, %25
  %27 = fdiv float %26, %13
  br label %41

28:                                               ; preds = %3
  %29 = getelementptr inbounds %struct.BoidSettings, ptr %1, i64 0, i32 12
  %30 = load float, ptr %29, align 8, !tbaa !97
  %31 = fmul float %30, %11
  %32 = fdiv float %31, %13
  %33 = getelementptr inbounds %struct.BoidSettings, ptr %1, i64 0, i32 13
  %34 = load float, ptr %33, align 4, !tbaa !98
  %35 = fmul float %32, %34
  %36 = getelementptr inbounds %struct.BoidSettings, ptr %1, i64 0, i32 14
  %37 = getelementptr inbounds %struct.BoidSettings, ptr %1, i64 0, i32 11
  %38 = load float, ptr %37, align 4, !tbaa !99
  %39 = fmul float %30, %38
  %40 = getelementptr inbounds %struct.BoidSettings, ptr %1, i64 0, i32 15
  br label %41

41:                                               ; preds = %28, %14
  %42 = phi float [ %18, %14 ], [ %32, %28 ]
  %43 = phi float [ %21, %14 ], [ %35, %28 ]
  %44 = phi ptr [ %22, %14 ], [ %36, %28 ]
  %45 = phi float [ 0.000000e+00, %14 ], [ %39, %28 ]
  %46 = phi ptr [ %23, %14 ], [ %40, %28 ]
  %47 = phi float [ %27, %14 ], [ 0.000000e+00, %28 ]
  %48 = load float, ptr %44, align 4, !tbaa !54
  %49 = fmul float %48, 0x400921FB60000000
  %50 = fmul float %11, %49
  %51 = fdiv float %50, %13
  %52 = load float, ptr %46, align 4, !tbaa !54
  store float %42, ptr %0, align 4
  %53 = getelementptr inbounds %struct.BoidValues, ptr %0, i64 0, i32 1
  store float %43, ptr %53, align 4
  %54 = getelementptr inbounds %struct.BoidValues, ptr %0, i64 0, i32 2
  store float %51, ptr %54, align 4
  %55 = getelementptr inbounds %struct.BoidValues, ptr %0, i64 0, i32 3
  store float %45, ptr %55, align 4
  %56 = getelementptr inbounds %struct.BoidValues, ptr %0, i64 0, i32 4
  store float %52, ptr %56, align 4
  %57 = getelementptr inbounds %struct.BoidValues, ptr %0, i64 0, i32 5
  store float %47, ptr %57, align 4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @apply_boid_rule(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, float noundef %4) unnamed_addr #3 !PGOFuncName !100 {
  %6 = icmp eq ptr %1, null
  br i1 %6, label %28, label %7

7:                                                ; preds = %5
  %8 = tail call fastcc i32 @boid_rule_applies(ptr noundef %3, ptr noundef nonnull %1) #19
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %28, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.BoidRule, ptr %1, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !47
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [9 x ptr], ptr @boid_rules, i64 0, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !44
  %16 = tail call i32 %15(ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3) #21
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %10
  %19 = fcmp olt float %4, 0.000000e+00
  br i1 %19, label %28, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 5
  %22 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 1
  %23 = tail call fastcc float @len_v3(ptr noundef nonnull %22) #19
  %24 = fmul float %23, %4
  %25 = tail call fastcc zeroext i8 @compare_len_v3v3(ptr noundef nonnull %21, ptr noundef nonnull %22, float noundef %24) #19, !range !101
  %26 = xor i8 %25, 1
  %27 = zext nneg i8 %26 to i32
  br label %28

28:                                               ; preds = %20, %18, %10, %7, %5
  %29 = phi i32 [ 0, %5 ], [ 0, %7 ], [ 0, %10 ], [ 1, %18 ], [ %27, %20 ]
  ret i32 %29
}

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !102 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #2 !PGOFuncName !103 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !54
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !54
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !54
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v2(ptr nocapture noundef %0) unnamed_addr #9 !PGOFuncName !104 {
  tail call fastcc void @normalize_v2_v2(ptr noundef %0, ptr noundef %0) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !PGOFuncName !105 {
  %3 = load float, ptr %0, align 4, !tbaa !54
  %4 = load float, ptr %1, align 4, !tbaa !54
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !54
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !54
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  ret float %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_v2(ptr nocapture noundef readonly %0) unnamed_addr #10 !PGOFuncName !106 {
  %2 = load float, ptr %0, align 4, !tbaa !54
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !54
  %5 = fmul float %4, %4
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %5)
  %7 = tail call float @llvm.sqrt.f32(float %6)
  ret float %7
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc float @sasqrt(float noundef %0) unnamed_addr #11 !PGOFuncName !107 {
  %2 = fcmp ugt float %0, 0.000000e+00
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = tail call float @sqrtf(float noundef %0) #21
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi float [ %4, %3 ], [ 0.000000e+00, %1 ]
  ret float %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #12

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3(ptr nocapture noundef %0) unnamed_addr #9 !PGOFuncName !108 {
  %2 = tail call fastcc float @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #19
  ret float %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !PGOFuncName !109 {
  %4 = load float, ptr %1, align 4, !tbaa !54
  %5 = load float, ptr %2, align 4, !tbaa !54
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !54
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !54
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !54
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !54
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @boid_body(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = alloca %struct.BoidValues, align 4
  %4 = alloca %struct.EffectedPoint, align 8
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 8
  %12 = alloca [4 x float], align 16
  %13 = alloca [3 x [3 x float]], align 16
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x float], align 4
  %17 = alloca [3 x float], align 4
  %18 = alloca [2 x float], align 4
  %19 = alloca [2 x float], align 4
  %20 = alloca [3 x float], align 4
  %21 = alloca [3 x float], align 8
  %22 = alloca [3 x float], align 8
  %23 = alloca [3 x float], align 4
  %24 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !55
  %26 = getelementptr inbounds %struct.ParticleSettings, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !34
  %28 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #20
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %13) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %14, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %15, ptr noundef nonnull align 4 dereferenceable(12) @__const.boid_body.ground_nor, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %16, i8 0, i64 12, i1 false)
  %30 = getelementptr inbounds %struct.ParticleSettings, ptr %25, i64 0, i32 81
  %31 = load float, ptr %30, align 4, !tbaa !110
  %32 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 4
  %33 = load float, ptr %32, align 8, !tbaa !111
  %34 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 2
  %35 = load float, ptr %34, align 8, !tbaa !112
  %36 = fmul float %33, %35
  call fastcc void @set_boid_values(ptr noundef nonnull %3, ptr noundef %27, ptr noundef %1) #19
  %37 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 1
  tail call void @copy_particle_key(ptr noundef %1, ptr noundef nonnull %37, i32 noundef 0) #21
  %38 = load ptr, ptr %24, align 8, !tbaa !55
  %39 = getelementptr inbounds %struct.ParticleSettings, ptr %38, i64 0, i32 5
  %40 = load i32, ptr %39, align 8, !tbaa !113
  %41 = and i32 %40, 65536
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %2
  %44 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 13
  %45 = load float, ptr %44, align 4, !tbaa !114
  %46 = fmul float %31, %45
  br label %47

47:                                               ; preds = %43, %2
  %48 = phi float [ %46, %43 ], [ %31, %2 ]
  %49 = load i32, ptr %27, align 8, !tbaa !79
  %50 = and i32 %49, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.BoidParticle, ptr %29, i64 0, i32 1, i32 3
  %54 = load i16, ptr %53, align 2, !tbaa !78
  %55 = add i16 %54, -1
  %56 = icmp ult i16 %55, 2
  br i1 %56, label %62, label %57

57:                                               ; preds = %52
  %58 = load ptr, ptr %0, align 8, !tbaa !66
  %59 = tail call i32 @psys_uses_gravity(ptr noundef %58) #21
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  store i16 3, ptr %53, align 2, !tbaa !78
  br label %62

62:                                               ; preds = %52, %61, %57, %47
  %63 = getelementptr inbounds %struct.BoidParticle, ptr %29, i64 0, i32 1, i32 3
  %64 = load i16, ptr %63, align 2, !tbaa !78
  %65 = icmp eq i16 %64, 3
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load ptr, ptr %0, align 8, !tbaa !66
  %68 = load ptr, ptr %67, align 8, !tbaa !83
  %69 = getelementptr inbounds %struct.Scene, ptr %68, i64 0, i32 40, i32 0, i64 2
  %70 = load float, ptr %69, align 8, !tbaa !54
  %71 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  store float %70, ptr %71, align 4, !tbaa !54
  br label %191

72:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #20
  switch i16 %64, label %113 [
    i16 4, label %73
    i16 0, label %75
  ]

73:                                               ; preds = %72
  store i16 0, ptr %63, align 2, !tbaa !78
  %74 = call fastcc ptr @boid_find_ground(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %14, ptr noundef nonnull %15) #19
  store ptr %74, ptr %29, align 8, !tbaa !115
  br label %113

75:                                               ; preds = %72
  %76 = load i32, ptr %27, align 8, !tbaa !79
  %77 = and i32 %76, 2
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %113, label %79

79:                                               ; preds = %75
  %80 = call fastcc ptr @boid_find_ground(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %14, ptr noundef nonnull %15) #19
  store ptr %80, ptr %29, align 8, !tbaa !115
  %81 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 1, i32 0, i64 2
  %82 = load float, ptr %81, align 8, !tbaa !54
  %83 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 2
  %84 = load float, ptr %83, align 4, !tbaa !54
  %85 = fsub float %82, %84
  %86 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 13
  %87 = load float, ptr %86, align 4, !tbaa !114
  %88 = fmul float %87, 2.000000e+00
  %89 = fdiv float %85, %88
  %90 = fadd float %89, -5.000000e-01
  %91 = getelementptr inbounds %struct.BoidSettings, ptr %27, i64 0, i32 2
  %92 = load float, ptr %91, align 8, !tbaa !116
  %93 = fneg float %92
  %94 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 1, i32 1, i64 2
  %95 = load float, ptr %94, align 4, !tbaa !54
  %96 = fmul float %95, %93
  %97 = fmul float %48, %96
  %98 = fcmp olt float %95, 0.000000e+00
  br i1 %98, label %99, label %113

99:                                               ; preds = %79
  %100 = fcmp olt float %90, 1.000000e+00
  br i1 %100, label %101, label %103

101:                                              ; preds = %99
  %102 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %102, i8 0, i64 16, i1 false)
  store i16 3, ptr %63, align 2, !tbaa !78
  br label %113

103:                                              ; preds = %99
  %104 = fcmp olt float %90, %97
  br i1 %104, label %105, label %113

105:                                              ; preds = %103
  %106 = fadd float %90, -1.000000e+00
  %107 = fdiv float %106, %97
  %108 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 5, i64 2
  %109 = load <2 x float>, ptr %108, align 4, !tbaa !54
  %110 = insertelement <2 x float> poison, float %107, i64 0
  %111 = shufflevector <2 x float> %110, <2 x float> poison, <2 x i32> zeroinitializer
  %112 = fmul <2 x float> %111, %109
  store <2 x float> %112, ptr %108, align 4, !tbaa !54
  br label %113

113:                                              ; preds = %72, %75, %101, %105, %103, %79, %73
  %114 = phi float [ 3.000000e+00, %73 ], [ %90, %101 ], [ %90, %105 ], [ %90, %103 ], [ %90, %79 ], [ 3.000000e+00, %75 ], [ 3.000000e+00, %72 ]
  %115 = phi float [ 2.000000e+00, %73 ], [ %97, %101 ], [ %97, %105 ], [ %97, %103 ], [ %97, %79 ], [ 2.000000e+00, %75 ], [ 2.000000e+00, %72 ]
  %116 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 1, i32 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef nonnull %116) #19
  %117 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 5
  %118 = call fastcc float @normalize_v3_v3(ptr noundef nonnull %11, ptr noundef nonnull %117) #19
  %119 = fcmp oeq float %118, 0.000000e+00
  br i1 %119, label %120, label %121

120:                                              ; preds = %113
  call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %10) #19
  br label %150

121:                                              ; preds = %113
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #20
  call fastcc void @copy_v2_v2(ptr noundef nonnull %18, ptr noundef nonnull %10) #19
  call fastcc void @normalize_v2(ptr noundef nonnull %18) #19
  call fastcc void @copy_v2_v2(ptr noundef nonnull %19, ptr noundef nonnull %11) #19
  call fastcc void @normalize_v2(ptr noundef nonnull %19) #19
  %122 = call fastcc float @dot_v2v2(ptr noundef nonnull %18, ptr noundef nonnull %19) #19
  %123 = fcmp olt float %122, 0xBFEFAE1480000000
  br i1 %123, label %124, label %140

124:                                              ; preds = %121
  %125 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 11
  %126 = load ptr, ptr %125, align 8, !tbaa !117
  %127 = call float @BLI_rng_get_float(ptr noundef %126) #21
  %128 = load ptr, ptr %125, align 8, !tbaa !117
  %129 = call float @BLI_rng_get_float(ptr noundef %128) #21
  %130 = insertelement <2 x float> poison, float %127, i64 0
  %131 = insertelement <2 x float> %130, float %129, i64 1
  %132 = fsub <2 x float> <float 5.000000e-01, float 5.000000e-01>, %131
  %133 = fmul <2 x float> %132, <float 2.000000e+00, float 2.000000e+00>
  store <2 x float> %133, ptr %11, align 8, !tbaa !54
  %134 = load ptr, ptr %125, align 8, !tbaa !117
  %135 = call float @BLI_rng_get_float(ptr noundef %134) #21
  %136 = fsub float 5.000000e-01, %135
  %137 = fmul float %136, 2.000000e+00
  %138 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  store float %137, ptr %138, align 8, !tbaa !54
  %139 = call fastcc float @normalize_v3(ptr noundef nonnull %11) #19
  br label %140

140:                                              ; preds = %124, %121
  %141 = call fastcc float @dot_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %11) #19
  %142 = call fastcc float @saacos(float noundef %141) #19
  %143 = getelementptr inbounds %struct.BoidValues, ptr %3, i64 0, i32 2
  %144 = load float, ptr %143, align 4, !tbaa !118
  %145 = call fastcc float @min_ff(float noundef %142, float noundef %144) #19
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %20, ptr noundef nonnull %10, ptr noundef nonnull %11) #19
  call void @axis_angle_to_quat(ptr noundef nonnull %12, ptr noundef nonnull %20, float noundef %145) #21
  call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %10) #19
  call void @mul_qt_v3(ptr noundef nonnull %12, ptr noundef nonnull %9) #21
  %146 = call fastcc float @normalize_v3(ptr noundef nonnull %9) #19
  %147 = fmul float %36, %145
  call void @axis_angle_to_quat(ptr noundef nonnull %12, ptr noundef nonnull %20, float noundef %147) #21
  %148 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %148, ptr noundef nonnull %10) #19
  call void @mul_qt_v3(ptr noundef nonnull %12, ptr noundef nonnull %148) #21
  %149 = call fastcc float @normalize_v3(ptr noundef nonnull %148) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #20
  br label %150

150:                                              ; preds = %140, %120
  %151 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 1, i32 1
  %152 = call fastcc float @len_v3(ptr noundef nonnull %151) #19
  %153 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 6
  %154 = load float, ptr %153, align 8, !tbaa !69
  %155 = fcmp olt float %154, %152
  %156 = getelementptr inbounds %struct.BoidValues, ptr %3, i64 0, i32 1
  %157 = load float, ptr %156, align 4, !tbaa !119
  br i1 %155, label %158, label %162

158:                                              ; preds = %150
  %159 = fsub float %152, %157
  %160 = fcmp ogt float %154, %159
  %161 = select i1 %160, float %154, float %159
  br label %166

162:                                              ; preds = %150
  %163 = fadd float %152, %157
  %164 = fcmp olt float %154, %163
  %165 = select i1 %164, float %154, float %163
  br label %166

166:                                              ; preds = %162, %158
  %167 = phi float [ %161, %158 ], [ %165, %162 ]
  call fastcc void @copy_v3_v3(ptr noundef nonnull %17, ptr noundef nonnull %9) #19
  call fastcc void @mul_v3_fl(ptr noundef nonnull %17, float noundef %167) #19
  %168 = fcmp ult float %114, %115
  br i1 %168, label %185, label %169

169:                                              ; preds = %166
  %170 = call fastcc float @dot_v2v2(ptr noundef nonnull %17, ptr noundef nonnull %17) #19
  %171 = getelementptr inbounds %struct.BoidValues, ptr %3, i64 0, i32 3
  %172 = load float, ptr %171, align 4
  %173 = fmul float %172, %172
  %174 = fcmp ogt float %170, %173
  %175 = select i1 %174, float %170, float %173
  %176 = fneg float %175
  %177 = call float @llvm.fmuladd.f32(float %167, float %167, float %176)
  %178 = call fastcc float @sasqrt(float noundef %177) #19
  %179 = getelementptr inbounds [3 x float], ptr %17, i64 0, i64 2
  %180 = load float, ptr %179, align 4, !tbaa !54
  %181 = fcmp olt float %180, 0.000000e+00
  %182 = fneg float %178
  %183 = select i1 %181, float %182, float %178
  store float %183, ptr %179, align 4, !tbaa !54
  call fastcc void @normalize_v2(ptr noundef nonnull %17) #19
  %184 = call fastcc float @sasqrt(float noundef %175) #19
  call fastcc void @mul_v2_fl(ptr noundef nonnull %17, float noundef %184) #19
  br label %185

185:                                              ; preds = %169, %166
  %186 = call fastcc float @normalize_v3(ptr noundef nonnull %17) #19
  %187 = load float, ptr %3, align 4
  %188 = fcmp olt float %186, %187
  %189 = select i1 %188, float %186, float %187
  call fastcc void @mul_v3_fl(ptr noundef nonnull %17, float noundef %189) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %17, ptr noundef nonnull %151) #19
  call void @project_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %116) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #20
  %190 = load ptr, ptr %0, align 8, !tbaa !66
  br label %191

191:                                              ; preds = %185, %66
  %192 = phi ptr [ %190, %185 ], [ %67, %66 ]
  call void @pd_point_from_particle(ptr noundef %192, ptr noundef nonnull %1, ptr noundef nonnull %1, ptr noundef nonnull %4) #21
  %193 = load ptr, ptr %0, align 8, !tbaa !66
  %194 = getelementptr inbounds %struct.ParticleSimulationData, ptr %193, i64 0, i32 2
  %195 = load ptr, ptr %194, align 8, !tbaa !67
  %196 = getelementptr inbounds %struct.ParticleSystem, ptr %195, i64 0, i32 42
  %197 = load ptr, ptr %196, align 8, !tbaa !120
  %198 = getelementptr inbounds %struct.ParticleSimulationData, ptr %193, i64 0, i32 4
  %199 = load ptr, ptr %198, align 8, !tbaa !121
  %200 = load ptr, ptr %24, align 8, !tbaa !55
  %201 = getelementptr inbounds %struct.ParticleSettings, ptr %200, i64 0, i32 4
  %202 = load ptr, ptr %201, align 8, !tbaa !122
  call void @pdDoEffectors(ptr noundef %197, ptr noundef %199, ptr noundef %202, ptr noundef nonnull %4, ptr noundef nonnull %16, ptr noundef null) #21
  %203 = load i16, ptr %63, align 2, !tbaa !78
  %204 = add i16 %203, -1
  %205 = icmp ult i16 %204, 2
  br i1 %205, label %206, label %213

206:                                              ; preds = %191
  %207 = call fastcc float @normalize_v3(ptr noundef nonnull %16) #19
  %208 = getelementptr inbounds %struct.BoidSettings, ptr %27, i64 0, i32 21
  %209 = load float, ptr %208, align 4, !tbaa !123
  %210 = fsub float %207, %209
  %211 = fcmp olt float %210, 0.000000e+00
  %212 = select i1 %211, float 0.000000e+00, float %210
  call fastcc void @mul_v3_fl(ptr noundef nonnull %16, float noundef %212) #19
  br label %213

213:                                              ; preds = %191, %206
  call fastcc void @add_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %16) #19
  %214 = getelementptr inbounds %struct.BoidParticle, ptr %29, i64 0, i32 1, i32 1
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %214, ptr noundef nonnull %5, float noundef %36) #19
  %215 = fadd float %36, 1.000000e+00
  %216 = fdiv float 1.000000e+00, %215
  call fastcc void @mul_v3_fl(ptr noundef nonnull %214, float noundef %216) #19
  %217 = fdiv float 1.000000e+00, %48
  call fastcc void @mul_v3_fl(ptr noundef nonnull %5, float noundef %217) #19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %5) #19
  %218 = fmul float %36, %36
  %219 = fmul float %218, 5.000000e-01
  call fastcc void @mul_v3_fl(ptr noundef nonnull %7, float noundef %219) #19
  %220 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 1, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %220) #19
  call fastcc void @mul_v3_fl(ptr noundef nonnull %8, float noundef %36) #19
  call fastcc void @add_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %8) #19
  call fastcc void @add_v3_v3(ptr noundef nonnull %1, ptr noundef nonnull %7) #19
  %221 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %221, ptr noundef nonnull %5, float noundef %36) #19
  %222 = call fastcc ptr @boid_find_ground(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %14, ptr noundef nonnull %15) #19
  store ptr %222, ptr %29, align 8, !tbaa !115
  %223 = load i16, ptr %63, align 2, !tbaa !78
  switch i16 %223, label %392 [
    i16 0, label %224
    i16 3, label %283
    i16 2, label %340
    i16 1, label %341
  ]

224:                                              ; preds = %213
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #20
  store <2 x float> zeroinitializer, ptr %21, align 8, !tbaa !54
  %225 = load ptr, ptr %0, align 8, !tbaa !66
  %226 = load ptr, ptr %225, align 8, !tbaa !83
  %227 = getelementptr inbounds %struct.Scene, ptr %226, i64 0, i32 40, i32 0, i64 2
  %228 = load float, ptr %227, align 8, !tbaa !54
  %229 = fcmp olt float %228, 0.000000e+00
  %230 = select i1 %229, float -1.000000e+00, float 0.000000e+00
  %231 = getelementptr inbounds [3 x float], ptr %21, i64 0, i64 2
  store float %230, ptr %231, align 8, !tbaa !54
  %232 = call fastcc float @dot_v3v3(ptr noundef nonnull %214, ptr noundef nonnull %221) #19
  %233 = fcmp ogt float %232, 0.000000e+00
  br i1 %233, label %234, label %235

234:                                              ; preds = %224
  call void @project_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %214, ptr noundef nonnull %221) #21
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %214, ptr noundef nonnull %7) #19
  br label %236

235:                                              ; preds = %224
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %214) #19
  br label %236

236:                                              ; preds = %235, %234
  %237 = getelementptr inbounds %struct.BoidParticle, ptr %29, i64 0, i32 2
  %238 = getelementptr inbounds %struct.BoidSettings, ptr %27, i64 0, i32 4
  %239 = load float, ptr %238, align 8, !tbaa !124
  %240 = fneg float %239
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %237, ptr noundef nonnull %21, ptr noundef nonnull %7, float noundef %240) #19
  %241 = call fastcc float @normalize_v3(ptr noundef nonnull %237) #19
  %242 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 7
  %243 = load ptr, ptr %242, align 8, !tbaa !125
  %244 = icmp eq ptr %243, null
  br i1 %244, label %245, label %250

245:                                              ; preds = %236
  %246 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 13
  %247 = load float, ptr %246, align 4, !tbaa !114
  %248 = getelementptr inbounds %struct.BoidSettings, ptr %27, i64 0, i32 3
  %249 = load float, ptr %248, align 4, !tbaa !126
  br label %262

250:                                              ; preds = %236
  %251 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 8
  %252 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 9
  %253 = call fastcc float @boid_goal_signed_dist(ptr noundef nonnull %1, ptr noundef nonnull %251, ptr noundef nonnull %252) #19
  %254 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 13
  %255 = load float, ptr %254, align 4, !tbaa !114
  %256 = getelementptr inbounds %struct.BoidSettings, ptr %27, i64 0, i32 3
  %257 = load float, ptr %256, align 4, !tbaa !126
  %258 = fmul float %255, %257
  %259 = fcmp ugt float %253, %258
  br i1 %259, label %262, label %260

260:                                              ; preds = %250
  store i16 2, ptr %63, align 2, !tbaa !78
  store ptr %243, ptr %29, align 8, !tbaa !115
  %261 = call fastcc ptr @boid_find_ground(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %14, ptr noundef nonnull %15) #19
  call fastcc void @boid_climb(ptr noundef nonnull %27, ptr noundef nonnull %1, ptr noundef nonnull %14, ptr noundef nonnull %15) #19
  br label %282

262:                                              ; preds = %245, %250
  %263 = phi float [ %249, %245 ], [ %257, %250 ]
  %264 = phi float [ %247, %245 ], [ %255, %250 ]
  %265 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 2
  %266 = load float, ptr %265, align 8, !tbaa !54
  %267 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 2
  %268 = load float, ptr %267, align 4, !tbaa !54
  %269 = call float @llvm.fmuladd.f32(float %264, float %263, float %268)
  %270 = fcmp ugt float %266, %269
  br i1 %270, label %282, label %271

271:                                              ; preds = %262
  %272 = load i32, ptr %27, align 8, !tbaa !79
  %273 = and i32 %272, 2
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %277, label %275

275:                                              ; preds = %271
  store float %269, ptr %265, align 8, !tbaa !54
  %276 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1, i64 2
  store float 0.000000e+00, ptr %276, align 4, !tbaa !54
  store i16 1, ptr %63, align 2, !tbaa !78
  br label %282

277:                                              ; preds = %271
  %278 = load ptr, ptr %29, align 8, !tbaa !115
  %279 = icmp eq ptr %278, null
  br i1 %279, label %282, label %280

280:                                              ; preds = %277
  store float %269, ptr %265, align 8, !tbaa !54
  %281 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1, i64 2
  store float 0.000000e+00, ptr %281, align 4, !tbaa !54
  br label %282

282:                                              ; preds = %262, %277, %280, %275, %260
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #20
  br label %389

283:                                              ; preds = %213
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %22) #20
  store <2 x float> zeroinitializer, ptr %22, align 8, !tbaa !54
  %284 = load ptr, ptr %0, align 8, !tbaa !66
  %285 = load ptr, ptr %284, align 8, !tbaa !83
  %286 = getelementptr inbounds %struct.Scene, ptr %285, i64 0, i32 40, i32 0, i64 2
  %287 = load float, ptr %286, align 8, !tbaa !54
  %288 = fcmp olt float %287, 0.000000e+00
  %289 = select i1 %288, float -1.000000e+00, float 0.000000e+00
  %290 = getelementptr inbounds [3 x float], ptr %22, i64 0, i64 2
  store float %289, ptr %290, align 8, !tbaa !54
  %291 = getelementptr inbounds %struct.BoidParticle, ptr %29, i64 0, i32 2
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %291, ptr noundef nonnull %22, float noundef %36) #19
  %292 = call fastcc float @normalize_v3(ptr noundef nonnull %291) #19
  %293 = load i32, ptr %27, align 8, !tbaa !79
  %294 = and i32 %293, 2
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %338, label %296

296:                                              ; preds = %283
  %297 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 7
  %298 = load ptr, ptr %297, align 8, !tbaa !125
  %299 = icmp eq ptr %298, null
  br i1 %299, label %300, label %305

300:                                              ; preds = %296
  %301 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 13
  %302 = load float, ptr %301, align 4, !tbaa !114
  %303 = getelementptr inbounds %struct.BoidSettings, ptr %27, i64 0, i32 3
  %304 = load float, ptr %303, align 4, !tbaa !126
  br label %317

305:                                              ; preds = %296
  %306 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 8
  %307 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 9
  %308 = call fastcc float @boid_goal_signed_dist(ptr noundef nonnull %1, ptr noundef nonnull %306, ptr noundef nonnull %307) #19
  %309 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 13
  %310 = load float, ptr %309, align 4, !tbaa !114
  %311 = getelementptr inbounds %struct.BoidSettings, ptr %27, i64 0, i32 3
  %312 = load float, ptr %311, align 4, !tbaa !126
  %313 = fmul float %310, %312
  %314 = fcmp ugt float %308, %313
  br i1 %314, label %317, label %315

315:                                              ; preds = %305
  store i16 2, ptr %63, align 2, !tbaa !78
  store ptr %298, ptr %29, align 8, !tbaa !115
  %316 = call fastcc ptr @boid_find_ground(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %14, ptr noundef nonnull %15) #19
  call fastcc void @boid_climb(ptr noundef nonnull %27, ptr noundef nonnull %1, ptr noundef nonnull %14, ptr noundef nonnull %15) #19
  br label %339

317:                                              ; preds = %300, %305
  %318 = phi float [ %304, %300 ], [ %312, %305 ]
  %319 = phi float [ %302, %300 ], [ %310, %305 ]
  %320 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 2
  %321 = load float, ptr %320, align 8, !tbaa !54
  %322 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 2
  %323 = load float, ptr %322, align 4, !tbaa !54
  %324 = fmul float %319, 0x3FF028F5C0000000
  %325 = call float @llvm.fmuladd.f32(float %324, float %318, float %323)
  %326 = fcmp ugt float %321, %325
  br i1 %326, label %330, label %327

327:                                              ; preds = %317
  %328 = call float @llvm.fmuladd.f32(float %319, float %318, float %323)
  store float %328, ptr %320, align 8, !tbaa !54
  %329 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1, i64 2
  store float 0.000000e+00, ptr %329, align 4, !tbaa !54
  store i16 1, ptr %63, align 2, !tbaa !78
  br label %339

330:                                              ; preds = %317
  %331 = and i32 %293, 1
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %339, label %333

333:                                              ; preds = %330
  %334 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 5, i64 2
  %335 = load float, ptr %334, align 4, !tbaa !54
  %336 = fcmp ogt float %335, 0.000000e+00
  br i1 %336, label %337, label %339

337:                                              ; preds = %333
  store i16 0, ptr %63, align 2, !tbaa !78
  br label %339

338:                                              ; preds = %283
  store i16 0, ptr %63, align 2, !tbaa !78
  br label %339

339:                                              ; preds = %315, %330, %333, %337, %327, %338
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %22) #20
  br label %389

340:                                              ; preds = %213
  call fastcc void @boid_climb(ptr noundef nonnull %27, ptr noundef nonnull %1, ptr noundef nonnull %14, ptr noundef nonnull %15) #19
  br label %389

341:                                              ; preds = %213
  %342 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 7
  %343 = load ptr, ptr %342, align 8, !tbaa !125
  %344 = icmp eq ptr %343, null
  br i1 %344, label %345, label %350

345:                                              ; preds = %341
  %346 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 13
  %347 = load float, ptr %346, align 4, !tbaa !114
  %348 = getelementptr inbounds %struct.BoidSettings, ptr %27, i64 0, i32 3
  %349 = load float, ptr %348, align 4, !tbaa !126
  br label %362

350:                                              ; preds = %341
  %351 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 8
  %352 = getelementptr inbounds %struct.BoidBrainData, ptr %0, i64 0, i32 9
  %353 = call fastcc float @boid_goal_signed_dist(ptr noundef nonnull %1, ptr noundef nonnull %351, ptr noundef nonnull %352) #19
  %354 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 13
  %355 = load float, ptr %354, align 4, !tbaa !114
  %356 = getelementptr inbounds %struct.BoidSettings, ptr %27, i64 0, i32 3
  %357 = load float, ptr %356, align 4, !tbaa !126
  %358 = fmul float %355, %357
  %359 = fcmp ugt float %353, %358
  br i1 %359, label %362, label %360

360:                                              ; preds = %350
  store i16 2, ptr %63, align 2, !tbaa !78
  store ptr %343, ptr %29, align 8, !tbaa !115
  %361 = call fastcc ptr @boid_find_ground(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %14, ptr noundef nonnull %15) #19
  call fastcc void @boid_climb(ptr noundef nonnull %27, ptr noundef nonnull %1, ptr noundef nonnull %14, ptr noundef nonnull %15) #19
  br label %377

362:                                              ; preds = %345, %350
  %363 = phi float [ %349, %345 ], [ %357, %350 ]
  %364 = phi float [ %347, %345 ], [ %355, %350 ]
  %365 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 2
  %366 = load float, ptr %365, align 8, !tbaa !54
  %367 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 2
  %368 = load float, ptr %367, align 4, !tbaa !54
  %369 = fsub float %366, %368
  %370 = fmul float %364, 0x3FF19999A0000000
  %371 = fmul float %370, %363
  %372 = fcmp ogt float %369, %371
  br i1 %372, label %373, label %374

373:                                              ; preds = %362
  store i16 3, ptr %63, align 2, !tbaa !78
  br label %377

374:                                              ; preds = %362
  %375 = call float @llvm.fmuladd.f32(float %364, float %363, float %368)
  store float %375, ptr %365, align 8, !tbaa !54
  %376 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1, i64 2
  store float 0.000000e+00, ptr %376, align 4, !tbaa !54
  br label %377

377:                                              ; preds = %373, %374, %360
  %378 = getelementptr inbounds %struct.BoidSettings, ptr %27, i64 0, i32 4
  %379 = load float, ptr %378, align 8, !tbaa !124
  %380 = fcmp ogt float %379, 0.000000e+00
  br i1 %380, label %381, label %386

381:                                              ; preds = %377
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #20
  call fastcc void @negate_v3_v3(ptr noundef nonnull %23, ptr noundef nonnull %15) #19
  call void @project_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %214, ptr noundef nonnull %221) #21
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %214, ptr noundef nonnull %7) #19
  %382 = getelementptr inbounds %struct.BoidParticle, ptr %29, i64 0, i32 2
  %383 = load float, ptr %378, align 8, !tbaa !124
  %384 = fneg float %383
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %382, ptr noundef nonnull %23, ptr noundef nonnull %7, float noundef %384) #19
  %385 = call fastcc float @normalize_v3(ptr noundef nonnull %382) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #20
  br label %389

386:                                              ; preds = %377
  %387 = getelementptr inbounds %struct.BoidParticle, ptr %29, i64 0, i32 2
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %387, ptr noundef nonnull %15, float noundef -1.000000e+00) #19
  %388 = call fastcc float @normalize_v3(ptr noundef nonnull %387) #19
  br label %389

389:                                              ; preds = %381, %386, %340, %339, %282
  %390 = load i16, ptr %63, align 2, !tbaa !78
  %391 = icmp eq i16 %390, 3
  br i1 %391, label %409, label %392

392:                                              ; preds = %213, %389
  %393 = call fastcc float @len_v3(ptr noundef nonnull %221) #19
  %394 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 13
  %395 = load float, ptr %394, align 4, !tbaa !114
  %396 = fmul float %395, 0x3FB99999A0000000
  %397 = fcmp ogt float %393, %396
  br i1 %397, label %398, label %409

398:                                              ; preds = %392
  %399 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %399, ptr noundef nonnull %221) #19
  %400 = load ptr, ptr %24, align 8, !tbaa !55
  %401 = getelementptr inbounds %struct.ParticleSettings, ptr %400, i64 0, i32 2
  %402 = load ptr, ptr %401, align 8, !tbaa !34
  %403 = getelementptr inbounds %struct.BoidSettings, ptr %402, i64 0, i32 5
  %404 = load float, ptr %403, align 4, !tbaa !127
  %405 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 3, i64 2
  %406 = load float, ptr %405, align 8, !tbaa !54
  %407 = fmul float %404, %406
  store float %407, ptr %405, align 8, !tbaa !54
  %408 = call fastcc float @normalize_v3(ptr noundef nonnull %399) #19
  br label %409

409:                                              ; preds = %398, %392, %389
  %410 = load i16, ptr %63, align 2, !tbaa !78
  %411 = add i16 %410, -1
  %412 = icmp ult i16 %411, 2
  br i1 %412, label %413, label %419

413:                                              ; preds = %409
  %414 = load ptr, ptr %24, align 8, !tbaa !55
  %415 = getelementptr inbounds %struct.ParticleSettings, ptr %414, i64 0, i32 87
  %416 = load float, ptr %415, align 4, !tbaa !128
  %417 = call float @llvm.fmuladd.f32(float %416, float 0xBFC99999A0000000, float 1.000000e+00)
  call fastcc void @mul_v3_fl(ptr noundef nonnull %221, float noundef %417) #19
  %418 = load i16, ptr %63, align 2, !tbaa !78
  br label %419

419:                                              ; preds = %409, %413
  %420 = phi i16 [ %410, %409 ], [ %418, %413 ]
  %421 = icmp eq i16 %420, 0
  %422 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 3
  br i1 %421, label %423, label %427

423:                                              ; preds = %419
  call fastcc void @copy_v3_v3(ptr noundef nonnull %13, ptr noundef nonnull %422) #19
  %424 = getelementptr inbounds %struct.BoidParticle, ptr %29, i64 0, i32 2
  call void @project_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %424, ptr noundef nonnull %422) #21
  %425 = getelementptr inbounds [3 x [3 x float]], ptr %13, i64 0, i64 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %425, ptr noundef nonnull %424, ptr noundef nonnull %7) #19
  %426 = call fastcc float @normalize_v3(ptr noundef nonnull %425) #19
  br label %431

427:                                              ; preds = %419
  %428 = getelementptr inbounds %struct.BoidParticle, ptr %29, i64 0, i32 2
  call void @project_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %422, ptr noundef nonnull %428) #21
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %13, ptr noundef nonnull %422, ptr noundef nonnull %7) #19
  %429 = call fastcc float @normalize_v3(ptr noundef nonnull %13) #19
  %430 = getelementptr inbounds [3 x [3 x float]], ptr %13, i64 0, i64 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %430, ptr noundef nonnull %428) #19
  br label %431

431:                                              ; preds = %427, %423
  %432 = getelementptr inbounds [3 x [3 x float]], ptr %13, i64 0, i64 2
  call fastcc void @negate_v3(ptr noundef nonnull %432) #19
  %433 = getelementptr inbounds [3 x [3 x float]], ptr %13, i64 0, i64 1
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %433, ptr noundef nonnull %432, ptr noundef nonnull %13) #19
  call void @mat3_to_quat_is_ok(ptr noundef nonnull %12, ptr noundef nonnull %13) #21
  %434 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 2
  call void @copy_qt_qt(ptr noundef nonnull %434, ptr noundef nonnull %12) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: optsize
declare void @copy_particle_key(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @psys_uses_gravity(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @boid_find_ground(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 !PGOFuncName !129 {
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
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #20
  %16 = load ptr, ptr %11, align 8, !tbaa !115
  %17 = tail call ptr @modifiers_findByType(ptr noundef %16, i32 noundef 30) #21
  %18 = call i32 @closest_point_on_surface(ptr noundef %17, ptr noundef nonnull %1, ptr noundef nonnull %5, ptr noundef null, ptr noundef nonnull %6) #21
  call fastcc void @add_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %6) #19
  %19 = call i32 @closest_point_on_surface(ptr noundef %17, ptr noundef nonnull %5, ptr noundef %2, ptr noundef %3, ptr noundef null) #21
  %20 = load ptr, ptr %11, align 8, !tbaa !115
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #20
  br label %110

21:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 328, ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #20
  %22 = load ptr, ptr %0, align 8, !tbaa !66
  %23 = getelementptr inbounds %struct.ParticleSimulationData, ptr %22, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !121
  %25 = icmp eq ptr %24, null
  br i1 %25, label %108, label %26

26:                                               ; preds = %21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %7, i8 0, i64 328, i1 false)
  %27 = getelementptr inbounds %struct.ParticleCollision, ptr %7, i64 0, i32 18
  call fastcc void @copy_v3_v3(ptr noundef nonnull %27, ptr noundef nonnull %1) #19
  %28 = getelementptr inbounds %struct.ParticleCollision, ptr %7, i64 0, i32 19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %28, ptr noundef nonnull %1, ptr noundef nonnull @__const.boid_find_ground.zvec) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %28, ptr noundef nonnull %27) #19
  %29 = getelementptr inbounds %struct.ParticleCollision, ptr %7, i64 0, i32 6
  store float 0.000000e+00, ptr %29, align 8, !tbaa !130
  store i32 -1, ptr %8, align 4, !tbaa !133
  %30 = call fastcc float @len_v3(ptr noundef nonnull %9) #19
  %31 = getelementptr inbounds %struct.ParticleCollision, ptr %7, i64 0, i32 11
  store float %30, ptr %31, align 4, !tbaa !135
  %32 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %8, i64 0, i32 3
  store float %30, ptr %32, align 4, !tbaa !136
  %33 = getelementptr inbounds %struct.ParticleCollision, ptr %7, i64 0, i32 13, i32 12
  store i16 0, ptr %33, align 2, !tbaa !137
  %34 = load ptr, ptr %0, align 8, !tbaa !66
  %35 = getelementptr inbounds %struct.ParticleSimulationData, ptr %34, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !121
  %37 = load ptr, ptr %36, align 8, !tbaa !44
  %38 = icmp eq ptr %37, null
  br i1 %38, label %69, label %39

39:                                               ; preds = %26
  %40 = getelementptr inbounds %struct.ParticleCollision, ptr %7, i64 0, i32 5
  %41 = getelementptr inbounds %struct.ParticleCollision, ptr %7, i64 0, i32 7
  br label %42

42:                                               ; preds = %39, %55
  %43 = phi ptr [ %37, %39 ], [ %56, %55 ]
  %44 = getelementptr inbounds %struct.ColliderCache, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !138
  store ptr %45, ptr %7, align 8, !tbaa !140
  %46 = getelementptr inbounds %struct.ColliderCache, ptr %43, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !141
  store ptr %47, ptr %40, align 8, !tbaa !142
  store <2 x float> zeroinitializer, ptr %41, align 4, !tbaa !54
  %48 = icmp eq ptr %47, null
  br i1 %48, label %55, label %49

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.CollisionModifierData, ptr %47, i64 0, i32 12
  %51 = load ptr, ptr %50, align 8, !tbaa !143
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = call i32 @BLI_bvhtree_ray_cast(ptr noundef nonnull %51, ptr noundef nonnull %27, ptr noundef nonnull %9, float noundef 0.000000e+00, ptr noundef nonnull %8, ptr noundef nonnull @BKE_psys_collision_neartest_cb, ptr noundef nonnull %7) #21
  br label %55

55:                                               ; preds = %42, %49, %53
  %56 = load ptr, ptr %43, align 8, !tbaa !44
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %42, !llvm.loop !146

58:                                               ; preds = %55
  %59 = load i32, ptr %8, align 4, !tbaa !133
  %60 = icmp sgt i32 %59, -1
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = load float, ptr %32, align 4, !tbaa !136
  %63 = load float, ptr %31, align 4, !tbaa !135
  %64 = fdiv float %62, %63
  call void @interp_v3_v3v3(ptr noundef %2, ptr noundef nonnull %27, ptr noundef nonnull %28, float noundef %64) #21
  %65 = getelementptr inbounds %struct.ParticleCollision, ptr %7, i64 0, i32 13, i32 6
  %66 = call fastcc float @normalize_v3_v3(ptr noundef %3, ptr noundef nonnull %65) #19
  %67 = getelementptr inbounds %struct.ParticleCollision, ptr %7, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !147
  br label %108

69:                                               ; preds = %26, %58
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %27, ptr noundef %1, ptr noundef nonnull @__const.boid_find_ground.zvec) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %28, ptr noundef %1, ptr noundef nonnull @__const.boid_find_ground.zvec) #19
  call fastcc void @sub_v3_v3(ptr noundef nonnull %28, ptr noundef nonnull @__const.boid_find_ground.zvec) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %28, ptr noundef nonnull %27) #19
  store float 0.000000e+00, ptr %29, align 8, !tbaa !130
  store i32 -1, ptr %8, align 4, !tbaa !133
  %70 = call fastcc float @len_v3(ptr noundef nonnull %9) #19
  store float %70, ptr %31, align 4, !tbaa !135
  store float %70, ptr %32, align 4, !tbaa !136
  %71 = load ptr, ptr %0, align 8, !tbaa !66
  %72 = getelementptr inbounds %struct.ParticleSimulationData, ptr %71, i64 0, i32 4
  %73 = load ptr, ptr %72, align 8, !tbaa !121
  %74 = load ptr, ptr %73, align 8, !tbaa !44
  %75 = icmp eq ptr %74, null
  br i1 %75, label %94, label %76

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.ParticleCollision, ptr %7, i64 0, i32 5
  br label %78

78:                                               ; preds = %76, %91
  %79 = phi ptr [ %74, %76 ], [ %92, %91 ]
  %80 = getelementptr inbounds %struct.ColliderCache, ptr %79, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !138
  store ptr %81, ptr %7, align 8, !tbaa !140
  %82 = getelementptr inbounds %struct.ColliderCache, ptr %79, i64 0, i32 3
  %83 = load ptr, ptr %82, align 8, !tbaa !141
  store ptr %83, ptr %77, align 8, !tbaa !142
  %84 = icmp eq ptr %83, null
  br i1 %84, label %91, label %85

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.CollisionModifierData, ptr %83, i64 0, i32 12
  %87 = load ptr, ptr %86, align 8, !tbaa !143
  %88 = icmp eq ptr %87, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %85
  %90 = call i32 @BLI_bvhtree_ray_cast(ptr noundef nonnull %87, ptr noundef nonnull %27, ptr noundef nonnull %9, float noundef 0.000000e+00, ptr noundef nonnull %8, ptr noundef nonnull @BKE_psys_collision_neartest_cb, ptr noundef nonnull %7) #21
  br label %91

91:                                               ; preds = %78, %85, %89
  %92 = load ptr, ptr %79, align 8, !tbaa !44
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %78, !llvm.loop !148

94:                                               ; preds = %91, %69
  %95 = load i32, ptr %8, align 4, !tbaa !133
  %96 = icmp sgt i32 %95, -1
  br i1 %96, label %97, label %105

97:                                               ; preds = %94
  %98 = load float, ptr %32, align 4, !tbaa !136
  %99 = load float, ptr %31, align 4, !tbaa !135
  %100 = fdiv float %98, %99
  call void @interp_v3_v3v3(ptr noundef %2, ptr noundef nonnull %27, ptr noundef nonnull %28, float noundef %100) #21
  %101 = getelementptr inbounds %struct.ParticleCollision, ptr %7, i64 0, i32 13, i32 6
  %102 = call fastcc float @normalize_v3_v3(ptr noundef %3, ptr noundef nonnull %101) #19
  %103 = getelementptr inbounds %struct.ParticleCollision, ptr %7, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !147
  br label %108

105:                                              ; preds = %94
  call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef %1) #19
  %106 = getelementptr inbounds float, ptr %2, i64 2
  store float 0.000000e+00, ptr %106, align 4, !tbaa !54
  store <2 x float> zeroinitializer, ptr %3, align 4, !tbaa !54
  %107 = getelementptr inbounds float, ptr %3, i64 2
  store float 1.000000e+00, ptr %107, align 4, !tbaa !54
  br label %108

108:                                              ; preds = %21, %105, %97, %61
  %109 = phi ptr [ %68, %61 ], [ %104, %97 ], [ null, %105 ], [ null, %21 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 328, ptr nonnull %7) #20
  br label %110

110:                                              ; preds = %108, %15
  %111 = phi ptr [ %20, %15 ], [ %109, %108 ]
  ret ptr %111
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !149 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #19
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #21
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #19
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #19
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi float [ %6, %5 ], [ 0.000000e+00, %8 ]
  ret float %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !150 {
  %3 = load float, ptr %1, align 4, !tbaa !54
  store float %3, ptr %0, align 4, !tbaa !54
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !54
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !54
  ret void
}

; Function Attrs: optsize
declare float @BLI_rng_get_float(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc float @saacos(float noundef %0) unnamed_addr #11 !PGOFuncName !151 {
  %2 = fcmp ugt float %0, -1.000000e+00
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = fcmp ult float %0, 1.000000e+00
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call float @acosf(float noundef %0) #21
  br label %7

7:                                                ; preds = %3, %1, %5
  %8 = phi float [ %6, %5 ], [ 0x400921FB60000000, %1 ], [ 0.000000e+00, %3 ]
  ret float %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !PGOFuncName !152 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #14 !PGOFuncName !153 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !PGOFuncName !154 {
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

; Function Attrs: optsize
declare void @axis_angle_to_quat(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @mul_qt_v3(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #9 !PGOFuncName !155 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #19
  %3 = tail call float @sqrtf(float noundef %2) #21
  ret float %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v2_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #2 !PGOFuncName !156 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !54
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !PGOFuncName !157 {
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

; Function Attrs: optsize
declare void @project_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @pd_point_from_particle(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @pdDoEffectors(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3fl(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #2 !PGOFuncName !158 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #2 !PGOFuncName !159 {
  %5 = load float, ptr %1, align 4, !tbaa !54
  %6 = load float, ptr %2, align 4, !tbaa !54
  %7 = tail call float @llvm.fmuladd.f32(float %6, float %3, float %5)
  store float %7, ptr %0, align 4, !tbaa !54
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !54
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !54
  %12 = tail call float @llvm.fmuladd.f32(float %11, float %3, float %9)
  %13 = getelementptr inbounds float, ptr %0, i64 1
  store float %12, ptr %13, align 4, !tbaa !54
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !54
  %16 = getelementptr inbounds float, ptr %2, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !54
  %18 = tail call float @llvm.fmuladd.f32(float %17, float %3, float %15)
  %19 = getelementptr inbounds float, ptr %0, i64 2
  store float %18, ptr %19, align 4, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @boid_goal_signed_dist(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !PGOFuncName !160 {
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #20
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %4, ptr noundef %0, ptr noundef %1) #19
  %5 = call fastcc float @dot_v3v3(ptr noundef nonnull %4, ptr noundef %2) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #20
  ret float %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @boid_climb(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #3 !PGOFuncName !161 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #20
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef %3) #19
  %9 = getelementptr inbounds %struct.BoidParticle, ptr %8, i64 0, i32 2
  tail call fastcc void @madd_v3_v3fl(ptr noundef nonnull %9, ptr noundef %3, float noundef -1.000000e+00) #19
  %10 = tail call fastcc float @normalize_v3(ptr noundef nonnull %9) #19
  %11 = getelementptr inbounds %struct.ParticleData, ptr %1, i64 0, i32 13
  %12 = load float, ptr %11, align 4, !tbaa !114
  %13 = getelementptr inbounds %struct.BoidSettings, ptr %0, i64 0, i32 3
  %14 = load float, ptr %13, align 4, !tbaa !126
  %15 = fmul float %12, %14
  call fastcc void @mul_v3_fl(ptr noundef nonnull %5, float noundef %15) #19
  call fastcc void @add_v3_v3v3(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5) #19
  %16 = getelementptr inbounds %struct.ParticleKey, ptr %1, i64 0, i32 1
  call void @project_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %16, ptr noundef %3) #21
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %16, ptr noundef nonnull %16, ptr noundef nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !162 {
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
define internal fastcc void @negate_v3(ptr nocapture noundef %0) unnamed_addr #2 !PGOFuncName !163 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !54
  %3 = fneg <2 x float> %2
  store <2 x float> %3, ptr %0, align 4, !tbaa !54
  %4 = getelementptr inbounds float, ptr %0, i64 2
  %5 = load float, ptr %4, align 4, !tbaa !54
  %6 = fneg float %5
  store float %6, ptr %4, align 4, !tbaa !54
  ret void
}

; Function Attrs: optsize
declare void @mat3_to_quat_is_ok(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @copy_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @boid_new_rule(i32 noundef %0) local_unnamed_addr #3 {
  %2 = icmp slt i32 %0, 1
  br i1 %2, label %38, label %3

3:                                                ; preds = %1
  switch i32 %0, label %23 [
    i32 1, label %4
    i32 2, label %4
    i32 3, label %7
    i32 6, label %11
    i32 7, label %15
    i32 8, label %19
  ]

4:                                                ; preds = %3, %3
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %6 = tail call ptr %5(i64 noundef 80, ptr noundef nonnull @.str) #21
  br label %26

7:                                                ; preds = %3
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %9 = tail call ptr %8(i64 noundef 64, ptr noundef nonnull @.str.1) #21
  %10 = getelementptr inbounds %struct.BoidRuleAvoidCollision, ptr %9, i64 0, i32 2
  store float 2.000000e+00, ptr %10, align 4, !tbaa !164
  br label %26

11:                                               ; preds = %3
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %13 = tail call ptr %12(i64 noundef 104, ptr noundef nonnull @.str.2) #21
  %14 = getelementptr inbounds %struct.BoidRuleFollowLeader, ptr %13, i64 0, i32 5
  store float 1.000000e+00, ptr %14, align 4, !tbaa !166
  br label %26

15:                                               ; preds = %3
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %17 = tail call ptr %16(i64 noundef 72, ptr noundef nonnull @.str.3) #21
  %18 = getelementptr inbounds %struct.BoidRuleAverageSpeed, ptr %17, i64 0, i32 3
  store float 5.000000e-01, ptr %18, align 8, !tbaa !167
  br label %26

19:                                               ; preds = %3
  %20 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %21 = tail call ptr %20(i64 noundef 64, ptr noundef nonnull @.str.4) #21
  %22 = getelementptr inbounds %struct.BoidRuleFight, ptr %21, i64 0, i32 1
  store <2 x float> <float 1.000000e+02, float 1.000000e+02>, ptr %22, align 8, !tbaa !54
  br label %26

23:                                               ; preds = %3
  %24 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %25 = tail call ptr %24(i64 noundef 56, ptr noundef nonnull @.str.5) #21
  br label %26

26:                                               ; preds = %23, %19, %15, %11, %7, %4
  %27 = phi ptr [ %25, %23 ], [ %21, %19 ], [ %17, %15 ], [ %13, %11 ], [ %9, %7 ], [ %6, %4 ]
  %28 = getelementptr inbounds %struct.BoidRule, ptr %27, i64 0, i32 2
  store i32 %0, ptr %28, align 8, !tbaa !47
  %29 = getelementptr inbounds %struct.BoidRule, ptr %27, i64 0, i32 3
  %30 = load i32, ptr %29, align 4, !tbaa !169
  %31 = or i32 %30, 12
  store i32 %31, ptr %29, align 4, !tbaa !169
  %32 = getelementptr inbounds %struct.BoidRule, ptr %27, i64 0, i32 4
  %33 = add nsw i32 %0, -1
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds [0 x %struct.EnumPropertyItem], ptr @boidrule_type_items, i64 0, i64 %34, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !170
  %37 = tail call ptr @BLI_strncpy(ptr noundef nonnull %32, ptr noundef %36, i64 noundef 32) #21
  br label %38

38:                                               ; preds = %1, %26
  %39 = phi ptr [ %27, %26 ], [ null, %1 ]
  ret ptr %39
}

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @boid_default_settings(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.BoidSettings, ptr %0, i64 0, i32 12
  store <4 x float> <float 1.000000e+01, float 5.000000e-01, float 5.000000e-01, float 1.000000e+00>, ptr %2, align 8, !tbaa !54
  %3 = getelementptr inbounds %struct.BoidSettings, ptr %0, i64 0, i32 17
  store <4 x float> <float 5.000000e+00, float 5.000000e-01, float 5.000000e-01, float 1.000000e+00>, ptr %3, align 4, !tbaa !54
  store i32 1, ptr %0, align 8, !tbaa !79
  %4 = getelementptr inbounds %struct.BoidSettings, ptr %0, i64 0, i32 2
  store <4 x float> <float 3.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.BoidSettings, ptr %0, i64 0, i32 6
  %6 = getelementptr inbounds %struct.BoidSettings, ptr %0, i64 0, i32 10
  store float 1.000000e+00, ptr %6, align 8, !tbaa !172
  store <4 x float> <float 1.000000e+00, float 2.000000e+00, float 0x3FB99999A0000000, float 1.000000e+00>, ptr %5, align 8, !tbaa !54
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @boid_new_state(ptr nocapture noundef %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %3 = tail call ptr %2(i64 noundef 128, ptr noundef nonnull @.str.6) #21
  %4 = getelementptr inbounds %struct.BoidSettings, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !173
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr %4, align 4, !tbaa !173
  %7 = getelementptr inbounds %struct.BoidState, ptr %3, i64 0, i32 6
  store i32 %5, ptr %7, align 8, !tbaa !85
  %8 = icmp eq i32 %5, 0
  %9 = getelementptr inbounds %struct.BoidState, ptr %3, i64 0, i32 5
  br i1 %8, label %12, label %10

10:                                               ; preds = %1
  %11 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %9, i64 noundef 32, ptr noundef nonnull @.str.7, i32 noundef %5) #21
  br label %13

12:                                               ; preds = %1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %9, ptr noundef nonnull align 1 dereferenceable(6) @.str.8, i64 6, i1 false) #21
  br label %13

13:                                               ; preds = %12, %10
  %14 = getelementptr inbounds %struct.BoidState, ptr %3, i64 0, i32 9
  store float 5.000000e-01, ptr %14, align 4, !tbaa !74
  %15 = getelementptr inbounds %struct.BoidState, ptr %3, i64 0, i32 12
  store float 1.000000e+00, ptr %15, align 8, !tbaa !174
  %16 = getelementptr inbounds %struct.BoidState, ptr %3, i64 0, i32 11
  store i32 -1, ptr %16, align 4, !tbaa !175
  ret ptr %3
}

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @boid_duplicate_state(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !44
  %4 = tail call ptr %3(ptr noundef %1) #21
  %5 = getelementptr inbounds %struct.BoidState, ptr %4, i64 0, i32 2
  %6 = getelementptr inbounds %struct.BoidState, ptr %1, i64 0, i32 2
  tail call void @BLI_duplicatelist(ptr noundef nonnull %5, ptr noundef nonnull %6) #21
  %7 = getelementptr inbounds %struct.BoidState, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.BoidState, ptr %1, i64 0, i32 3
  tail call void @BLI_duplicatelist(ptr noundef nonnull %7, ptr noundef nonnull %8) #21
  %9 = getelementptr inbounds %struct.BoidState, ptr %4, i64 0, i32 4
  %10 = getelementptr inbounds %struct.BoidState, ptr %1, i64 0, i32 4
  tail call void @BLI_duplicatelist(ptr noundef nonnull %9, ptr noundef nonnull %10) #21
  %11 = getelementptr inbounds %struct.BoidSettings, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !173
  %13 = add nsw i32 %12, 1
  store i32 %13, ptr %11, align 4, !tbaa !173
  %14 = getelementptr inbounds %struct.BoidState, ptr %4, i64 0, i32 6
  store i32 %12, ptr %14, align 8, !tbaa !85
  ret ptr %4
}

; Function Attrs: optsize
declare void @BLI_duplicatelist(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @boid_free_settings(ptr noundef %0) local_unnamed_addr #3 {
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
  tail call void @BLI_freelistN(ptr noundef nonnull %9) #21
  %10 = getelementptr inbounds %struct.BoidState, ptr %8, i64 0, i32 3
  tail call void @BLI_freelistN(ptr noundef nonnull %10) #21
  %11 = getelementptr inbounds %struct.BoidState, ptr %8, i64 0, i32 4
  tail call void @BLI_freelistN(ptr noundef nonnull %11) #21
  %12 = load ptr, ptr %8, align 8, !tbaa !44
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %7, !llvm.loop !176

14:                                               ; preds = %7, %3
  tail call void @BLI_freelistN(ptr noundef nonnull %4) #21
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %15(ptr noundef nonnull %0) #21
  br label %16

16:                                               ; preds = %14, %1
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @boid_copy_settings(ptr noundef %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %22, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !44
  %5 = tail call ptr %4(ptr noundef nonnull %0) #21
  %6 = getelementptr inbounds %struct.BoidSettings, ptr %5, i64 0, i32 22
  %7 = getelementptr inbounds %struct.BoidSettings, ptr %0, i64 0, i32 22
  tail call void @BLI_duplicatelist(ptr noundef nonnull %6, ptr noundef nonnull %7) #21
  %8 = load ptr, ptr %7, align 8, !tbaa !44
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %3, %10
  %11 = phi ptr [ %20, %10 ], [ %8, %3 ]
  %12 = phi ptr [ %13, %10 ], [ %6, %3 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !44
  %14 = getelementptr inbounds %struct.BoidState, ptr %13, i64 0, i32 2
  %15 = getelementptr inbounds %struct.BoidState, ptr %11, i64 0, i32 2
  tail call void @BLI_duplicatelist(ptr noundef nonnull %14, ptr noundef nonnull %15) #21
  %16 = getelementptr inbounds %struct.BoidState, ptr %13, i64 0, i32 3
  %17 = getelementptr inbounds %struct.BoidState, ptr %11, i64 0, i32 3
  tail call void @BLI_duplicatelist(ptr noundef nonnull %16, ptr noundef nonnull %17) #21
  %18 = getelementptr inbounds %struct.BoidState, ptr %13, i64 0, i32 4
  %19 = getelementptr inbounds %struct.BoidState, ptr %11, i64 0, i32 4
  tail call void @BLI_duplicatelist(ptr noundef nonnull %18, ptr noundef nonnull %19) #21
  %20 = load ptr, ptr %11, align 8, !tbaa !44
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %10, !llvm.loop !177

22:                                               ; preds = %10, %3, %1
  %23 = phi ptr [ null, %1 ], [ %5, %3 ], [ %5, %10 ]
  ret ptr %23
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @boid_get_current_state(ptr nocapture noundef readonly %0) local_unnamed_addr #15 {
  %2 = getelementptr inbounds %struct.BoidSettings, ptr %0, i64 0, i32 22
  br label %3

3:                                                ; preds = %7, %1
  %4 = phi ptr [ %2, %1 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.BoidState, ptr %5, i64 0, i32 7
  %9 = load i32, ptr %8, align 4, !tbaa !178
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %3, label %12, !llvm.loop !179

12:                                               ; preds = %7, %3
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @boid_rule_applies(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !180 {
  %3 = getelementptr inbounds %struct.ParticleData, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  %5 = getelementptr inbounds %struct.BoidParticle, ptr %4, i64 0, i32 1, i32 3
  %6 = load i16, ptr %5, align 2, !tbaa !78
  %7 = add i16 %6, -1
  %8 = icmp ult i16 %7, 2
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.BoidRule, ptr %1, i64 0, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !169
  %12 = and i32 %11, 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %21, label %22

14:                                               ; preds = %2
  %15 = icmp eq i16 %6, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.BoidRule, ptr %1, i64 0, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !169
  %19 = and i32 %18, 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %9, %16, %14
  br label %22

22:                                               ; preds = %16, %9, %21
  %23 = phi i32 [ 0, %21 ], [ 1, %9 ], [ 1, %16 ]
  ret i32 %23
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @compare_len_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #10 !PGOFuncName !181 {
  %4 = load float, ptr %0, align 4, !tbaa !54
  %5 = load float, ptr %1, align 4, !tbaa !54
  %6 = fsub float %4, %5
  %7 = getelementptr inbounds float, ptr %0, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !54
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !54
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !54
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !54
  %16 = fsub float %13, %15
  %17 = fmul float %11, %11
  %18 = tail call float @llvm.fmuladd.f32(float %6, float %6, float %17)
  %19 = tail call float @llvm.fmuladd.f32(float %16, float %16, float %18)
  %20 = fmul float %2, %2
  %21 = fcmp ole float %19, %20
  %22 = zext i1 %21 to i8
  ret i8 %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @rule_none(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #14 !PGOFuncName !182 {
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rule_goal_avoid(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #3 !PGOFuncName !183 {
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
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #20
  %15 = load ptr, ptr %1, align 8, !tbaa !66
  %16 = getelementptr inbounds %struct.ParticleSimulationData, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !67
  %18 = getelementptr inbounds %struct.ParticleSystem, ptr %17, i64 0, i32 42
  %19 = load ptr, ptr %18, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %8) #20
  %20 = getelementptr inbounds %struct.BoidRule, ptr %0, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !47
  %22 = icmp eq i32 %21, 2
  %23 = select i1 %22, float 1.000000e+00, float -1.000000e+00
  call void @pd_point_from_particle(ptr noundef %15, ptr noundef %3, ptr noundef %3, ptr noundef nonnull %5) #21
  %24 = icmp eq ptr %19, null
  br i1 %24, label %117, label %25

25:                                               ; preds = %4
  %26 = load ptr, ptr %19, align 8, !tbaa !44
  %27 = icmp eq ptr %26, null
  br i1 %27, label %117, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.BoidRuleGoalAvoid, ptr %0, i64 0, i32 1
  %30 = getelementptr inbounds %struct.EffectorData, ptr %7, i64 0, i32 4
  br label %31

31:                                               ; preds = %28, %107
  %32 = phi ptr [ %26, %28 ], [ %111, %107 ]
  %33 = phi ptr [ null, %28 ], [ %110, %107 ]
  %34 = phi float [ 0.000000e+00, %28 ], [ %109, %107 ]
  %35 = phi float [ 0.000000e+00, %28 ], [ %108, %107 ]
  %36 = getelementptr inbounds %struct.EffectorCache, ptr %32, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !184
  %38 = getelementptr inbounds %struct.EffectorCache, ptr %32, i64 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !186
  %40 = load ptr, ptr %29, align 8, !tbaa !187
  %41 = icmp eq ptr %40, null
  %42 = load i32, ptr %20, align 8, !tbaa !47
  %43 = icmp eq i32 %42, 1
  br i1 %41, label %70, label %44

44:                                               ; preds = %31
  br i1 %43, label %45, label %48

45:                                               ; preds = %44
  %46 = load ptr, ptr %14, align 8, !tbaa !115
  %47 = icmp eq ptr %40, %46
  br i1 %47, label %73, label %48

48:                                               ; preds = %45, %44
  %49 = icmp eq ptr %40, %37
  br i1 %49, label %50, label %107

50:                                               ; preds = %48
  %51 = call i32 @get_effector_data(ptr noundef nonnull %32, ptr noundef nonnull %7, ptr noundef nonnull %5, i32 noundef 0) #21
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %113, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.EffectorCache, ptr %32, i64 0, i32 6
  %55 = load ptr, ptr %54, align 8, !tbaa !186
  %56 = icmp eq ptr %55, null
  br i1 %56, label %128, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.PartDeflect, ptr %55, i64 0, i32 2
  %59 = load i16, ptr %58, align 2, !tbaa !189
  %60 = icmp eq i16 %59, 10
  br i1 %60, label %61, label %128

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.PartDeflect, ptr %39, i64 0, i32 9
  %63 = load float, ptr %62, align 4, !tbaa !191
  %64 = fmul float %23, %63
  %65 = load ptr, ptr %9, align 8, !tbaa !55
  %66 = getelementptr inbounds %struct.ParticleSettings, ptr %65, i64 0, i32 4
  %67 = load ptr, ptr %66, align 8, !tbaa !122
  %68 = call float @effector_falloff(ptr noundef nonnull %32, ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef %67) #21
  %69 = fmul float %64, %68
  br label %128

70:                                               ; preds = %31
  br i1 %43, label %71, label %76

71:                                               ; preds = %70
  %72 = load ptr, ptr %14, align 8, !tbaa !115
  br label %73

73:                                               ; preds = %71, %45
  %74 = phi ptr [ %72, %71 ], [ %40, %45 ]
  %75 = icmp eq ptr %37, %74
  br i1 %75, label %107, label %76

76:                                               ; preds = %73, %70
  %77 = getelementptr inbounds %struct.PartDeflect, ptr %39, i64 0, i32 2
  %78 = load i16, ptr %77, align 2, !tbaa !189
  %79 = icmp eq i16 %78, 10
  br i1 %79, label %80, label %107

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.PartDeflect, ptr %39, i64 0, i32 9
  %82 = load float, ptr %81, align 4, !tbaa !191
  %83 = fmul float %23, %82
  %84 = fcmp ogt float %83, 0.000000e+00
  br i1 %84, label %85, label %107

85:                                               ; preds = %80
  %86 = call i32 @get_effector_data(ptr noundef nonnull %32, ptr noundef nonnull %8, ptr noundef nonnull %5, i32 noundef 0) #21
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %107, label %88

88:                                               ; preds = %85
  %89 = load float, ptr %81, align 4, !tbaa !191
  %90 = fmul float %23, %89
  %91 = load ptr, ptr %9, align 8, !tbaa !55
  %92 = getelementptr inbounds %struct.ParticleSettings, ptr %91, i64 0, i32 4
  %93 = load ptr, ptr %92, align 8, !tbaa !122
  %94 = call float @effector_falloff(ptr noundef nonnull %32, ptr noundef nonnull %8, ptr noundef nonnull %5, ptr noundef %93) #21
  %95 = fmul float %90, %94
  %96 = fcmp oeq float %95, 0.000000e+00
  br i1 %96, label %107, label %97

97:                                               ; preds = %88
  %98 = fcmp ogt float %95, %34
  br i1 %98, label %104, label %99

99:                                               ; preds = %97
  %100 = fcmp oeq float %95, %34
  %101 = load float, ptr %30, align 8
  %102 = fcmp olt float %101, %35
  %103 = select i1 %100, i1 %102, i1 false
  br i1 %103, label %104, label %107

104:                                              ; preds = %99, %97
  %105 = phi float [ %95, %97 ], [ %34, %99 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %7, ptr noundef nonnull align 8 dereferenceable(96) %8, i64 96, i1 false)
  %106 = load float, ptr %30, align 8, !tbaa !192
  br label %107

107:                                              ; preds = %104, %48, %76, %80, %85, %73, %99, %88
  %108 = phi float [ %35, %48 ], [ %35, %73 ], [ %35, %85 ], [ %35, %80 ], [ %35, %76 ], [ %35, %88 ], [ %35, %99 ], [ %106, %104 ]
  %109 = phi float [ %34, %48 ], [ %34, %73 ], [ %34, %85 ], [ %34, %80 ], [ %34, %76 ], [ %34, %88 ], [ %34, %99 ], [ %105, %104 ]
  %110 = phi ptr [ %33, %48 ], [ %33, %73 ], [ %33, %85 ], [ %33, %80 ], [ %33, %76 ], [ %33, %88 ], [ %33, %99 ], [ %32, %104 ]
  %111 = load ptr, ptr %32, align 8, !tbaa !44
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %31, !llvm.loop !194

113:                                              ; preds = %107, %50
  %114 = phi float [ %34, %50 ], [ %109, %107 ]
  %115 = phi ptr [ %33, %50 ], [ %110, %107 ]
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %128

117:                                              ; preds = %25, %4, %113
  %118 = phi float [ %114, %113 ], [ 0.000000e+00, %4 ], [ 0.000000e+00, %25 ]
  %119 = getelementptr inbounds %struct.BoidRuleGoalAvoid, ptr %0, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !187
  %121 = icmp eq ptr %120, null
  br i1 %121, label %128, label %122

122:                                              ; preds = %117
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %6, i8 0, i64 120, i1 false)
  %123 = getelementptr inbounds %struct.EffectorCache, ptr %6, i64 0, i32 3
  store ptr %120, ptr %123, align 8, !tbaa !184
  %124 = load ptr, ptr %1, align 8, !tbaa !66
  %125 = load ptr, ptr %124, align 8, !tbaa !83
  %126 = getelementptr inbounds %struct.EffectorCache, ptr %6, i64 0, i32 2
  store ptr %125, ptr %126, align 8, !tbaa !195
  %127 = call i32 @get_effector_data(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %5, i32 noundef 0) #21
  br label %128

128:                                              ; preds = %53, %57, %61, %122, %117, %113
  %129 = phi float [ 1.000000e+00, %122 ], [ %118, %117 ], [ %114, %113 ], [ %69, %61 ], [ 1.000000e+00, %57 ], [ 1.000000e+00, %53 ]
  %130 = phi ptr [ %6, %122 ], [ null, %117 ], [ %115, %113 ], [ %32, %61 ], [ %32, %57 ], [ %32, %53 ]
  %131 = load i32, ptr %20, align 8, !tbaa !47
  %132 = icmp eq i32 %131, 2
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.BoidRuleGoalAvoid, ptr %0, i64 0, i32 3
  %135 = load float, ptr %134, align 4, !tbaa !196
  br label %136

136:                                              ; preds = %128, %133
  %137 = phi float [ %135, %133 ], [ 0.000000e+00, %128 ]
  %138 = fcmp ogt float %129, %137
  br i1 %138, label %139, label %237

139:                                              ; preds = %136
  %140 = getelementptr inbounds %struct.EffectorCache, ptr %130, i64 0, i32 3
  %141 = load ptr, ptr %140, align 8, !tbaa !184
  %142 = getelementptr inbounds %struct.EffectorCache, ptr %130, i64 0, i32 6
  %143 = load ptr, ptr %142, align 8, !tbaa !186
  %144 = icmp eq ptr %143, null
  br i1 %144, label %151, label %145

145:                                              ; preds = %139
  %146 = getelementptr inbounds %struct.PartDeflect, ptr %143, i64 0, i32 4
  %147 = load i16, ptr %146, align 2, !tbaa !197
  %148 = freeze i16 %147
  %149 = icmp eq i16 %148, 2
  br i1 %149, label %150, label %151

150:                                              ; preds = %145
  br label %151

151:                                              ; preds = %139, %145, %150
  %152 = phi i1 [ true, %150 ], [ false, %145 ], [ false, %139 ]
  %153 = phi float [ 1.000000e+00, %150 ], [ 0.000000e+00, %145 ], [ 0.000000e+00, %139 ]
  %154 = getelementptr inbounds %struct.BoidRuleGoalAvoid, ptr %0, i64 0, i32 2
  %155 = load i32, ptr %154, align 8, !tbaa !198
  %156 = and i32 %155, 1
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %172, label %158

158:                                              ; preds = %151
  %159 = call i32 @get_effector_data(ptr noundef nonnull %130, ptr noundef nonnull %7, ptr noundef nonnull %5, i32 noundef 1) #21
  %160 = getelementptr inbounds %struct.EffectorData, ptr %7, i64 0, i32 2
  %161 = getelementptr inbounds %struct.EffectorData, ptr %7, i64 0, i32 4
  %162 = load float, ptr %161, align 8, !tbaa !192
  %163 = load float, ptr %2, align 4, !tbaa !199
  %164 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 2
  %165 = load float, ptr %164, align 8, !tbaa !112
  %166 = fmul float %163, %165
  %167 = fdiv float %162, %166
  call fastcc void @mul_v3_fl(ptr noundef nonnull %160, float noundef %167) #19
  call fastcc void @add_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %160) #19
  %168 = getelementptr inbounds %struct.EffectorData, ptr %7, i64 0, i32 3
  %169 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %168, ptr noundef nonnull %169, ptr noundef nonnull %7) #19
  %170 = call fastcc float @len_v3(ptr noundef nonnull %168) #19
  store float %170, ptr %161, align 8, !tbaa !192
  %171 = load i32, ptr %20, align 8, !tbaa !47
  br label %172

172:                                              ; preds = %158, %151
  %173 = phi i32 [ %171, %158 ], [ %131, %151 ]
  switch i32 %173, label %203 [
    i32 1, label %174
    i32 2, label %191
  ]

174:                                              ; preds = %172
  %175 = load i32, ptr %12, align 8, !tbaa !79
  %176 = and i32 %175, 4
  %177 = icmp ne i32 %176, 0
  %178 = and i1 %152, %177
  br i1 %178, label %179, label %203

179:                                              ; preds = %174
  %180 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 7
  %181 = load ptr, ptr %180, align 8, !tbaa !125
  %182 = icmp eq ptr %181, null
  br i1 %182, label %187, label %183

183:                                              ; preds = %179
  %184 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 10
  %185 = load float, ptr %184, align 8, !tbaa !200
  %186 = fcmp olt float %185, %129
  br i1 %186, label %187, label %203

187:                                              ; preds = %183, %179
  store ptr %141, ptr %180, align 8, !tbaa !125
  %188 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 8
  call fastcc void @copy_v3_v3(ptr noundef nonnull %188, ptr noundef nonnull %7) #19
  %189 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 9
  %190 = getelementptr inbounds %struct.EffectorData, ptr %7, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %189, ptr noundef nonnull %190) #19
  br label %203

191:                                              ; preds = %172
  %192 = getelementptr inbounds %struct.BoidParticle, ptr %14, i64 0, i32 1, i32 3
  %193 = load i16, ptr %192, align 2, !tbaa !78
  %194 = icmp eq i16 %193, 2
  br i1 %194, label %195, label %203

195:                                              ; preds = %191
  %196 = getelementptr inbounds %struct.BoidRuleGoalAvoid, ptr %0, i64 0, i32 3
  %197 = load float, ptr %196, align 4, !tbaa !196
  %198 = fmul float %197, 2.000000e+00
  %199 = fcmp ogt float %129, %198
  br i1 %199, label %200, label %203

200:                                              ; preds = %195
  %201 = getelementptr inbounds %struct.EffectorData, ptr %7, i64 0, i32 3
  %202 = getelementptr inbounds %struct.BoidParticle, ptr %14, i64 0, i32 2
  call fastcc void @negate_v3_v3(ptr noundef nonnull %201, ptr noundef nonnull %202) #19
  br label %203

203:                                              ; preds = %172, %174, %191, %195, %200, %183, %187
  %204 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5
  %205 = getelementptr inbounds %struct.EffectorData, ptr %7, i64 0, i32 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %204, ptr noundef nonnull %205) #19
  call fastcc void @mul_v3_fl(ptr noundef nonnull %204, float noundef %23) #19
  %206 = load float, ptr %2, align 4, !tbaa !199
  %207 = fmul float %129, %206
  %208 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 6
  store float %207, ptr %208, align 8, !tbaa !69
  %209 = load i32, ptr %20, align 8, !tbaa !47
  %210 = icmp eq i32 %209, 1
  br i1 %210, label %211, label %237

211:                                              ; preds = %203
  %212 = getelementptr inbounds %struct.BoidSettings, ptr %12, i64 0, i32 2
  %213 = load float, ptr %212, align 8, !tbaa !116
  %214 = fcmp ogt float %213, 0.000000e+00
  br i1 %214, label %215, label %237

215:                                              ; preds = %211
  %216 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 1
  %217 = call fastcc float @len_v3(ptr noundef nonnull %216) #19
  %218 = fmul float %217, 2.000000e+00
  %219 = fcmp ogt float %218, 0.000000e+00
  br i1 %219, label %220, label %237

220:                                              ; preds = %215
  %221 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 13
  %222 = load float, ptr %221, align 4, !tbaa !114
  %223 = getelementptr inbounds %struct.BoidSettings, ptr %12, i64 0, i32 3
  %224 = load float, ptr %223, align 4, !tbaa !126
  %225 = fmul float %222, %224
  %226 = fmul float %153, %225
  %227 = getelementptr inbounds %struct.EffectorData, ptr %7, i64 0, i32 4
  %228 = load float, ptr %227, align 8, !tbaa !192
  %229 = fsub float %228, %226
  %230 = fcmp olt float %229, %218
  br i1 %230, label %231, label %237

231:                                              ; preds = %220
  %232 = fdiv float %229, %218
  %233 = load float, ptr %212, align 8, !tbaa !116
  %234 = call float @powf(float noundef %232, float noundef %233) #21
  %235 = load float, ptr %208, align 8, !tbaa !69
  %236 = fmul float %234, %235
  store float %236, ptr %208, align 8, !tbaa !69
  br label %237

237:                                              ; preds = %203, %211, %231, %220, %215, %136
  %238 = phi i32 [ 0, %136 ], [ 1, %215 ], [ 1, %220 ], [ 1, %231 ], [ 1, %211 ], [ 1, %203 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #20
  ret i32 %238
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @rule_avoid_collision(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #3 !PGOFuncName !201 {
  %5 = alloca ptr, align 8
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca %struct.ParticleCollision, align 8
  %13 = alloca %struct.BVHTreeRayHit, align 4
  %14 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  store ptr null, ptr %5, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #20
  %17 = getelementptr inbounds %struct.BoidRuleAvoidCollision, ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !202
  %19 = and i32 %18, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %109, label %21

21:                                               ; preds = %4
  %22 = load ptr, ptr %1, align 8, !tbaa !66
  %23 = getelementptr inbounds %struct.ParticleSimulationData, ptr %22, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !121
  %25 = icmp eq ptr %24, null
  br i1 %25, label %109, label %26

26:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 328, ptr nonnull %12) #20
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %13) #20
  %27 = getelementptr inbounds %struct.BoidValues, ptr %2, i64 0, i32 4
  %28 = load float, ptr %27, align 4, !tbaa !203
  %29 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 13
  %30 = load float, ptr %29, align 4, !tbaa !114
  %31 = fmul float %28, %30
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %12, i8 0, i64 328, i1 false)
  %32 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 18
  %33 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %32, ptr noundef nonnull %33) #19
  %34 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 19
  %35 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 1
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %34, ptr noundef nonnull %33, ptr noundef nonnull %35) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %14, ptr noundef nonnull %34, ptr noundef nonnull %32) #19
  %36 = getelementptr inbounds %struct.BoidRuleAvoidCollision, ptr %0, i64 0, i32 2
  %37 = load float, ptr %36, align 4, !tbaa !164
  call fastcc void @mul_v3_fl(ptr noundef nonnull %14, float noundef %37) #19
  %38 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 6
  store float 0.000000e+00, ptr %38, align 8, !tbaa !130
  store i32 -1, ptr %13, align 4, !tbaa !133
  %39 = call fastcc float @len_v3(ptr noundef nonnull %14) #19
  %40 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 11
  store float %39, ptr %40, align 4, !tbaa !135
  %41 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %13, i64 0, i32 3
  store float %39, ptr %41, align 4, !tbaa !136
  %42 = load ptr, ptr %1, align 8, !tbaa !66
  %43 = getelementptr inbounds %struct.ParticleSimulationData, ptr %42, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !121
  %45 = load ptr, ptr %44, align 8, !tbaa !44
  %46 = icmp eq ptr %45, null
  br i1 %46, label %68, label %47

47:                                               ; preds = %26
  %48 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 5
  br label %49

49:                                               ; preds = %47, %65
  %50 = phi ptr [ %45, %47 ], [ %66, %65 ]
  %51 = getelementptr inbounds %struct.ColliderCache, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !138
  %53 = load ptr, ptr %16, align 8, !tbaa !115
  %54 = icmp eq ptr %52, %53
  br i1 %54, label %65, label %55

55:                                               ; preds = %49
  store ptr %52, ptr %12, align 8, !tbaa !140
  %56 = getelementptr inbounds %struct.ColliderCache, ptr %50, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !141
  store ptr %57, ptr %48, align 8, !tbaa !142
  %58 = icmp eq ptr %57, null
  br i1 %58, label %65, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.CollisionModifierData, ptr %57, i64 0, i32 12
  %61 = load ptr, ptr %60, align 8, !tbaa !143
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = call i32 @BLI_bvhtree_ray_cast(ptr noundef nonnull %61, ptr noundef nonnull %32, ptr noundef nonnull %14, float noundef %31, ptr noundef nonnull %13, ptr noundef nonnull @BKE_psys_collision_neartest_cb, ptr noundef nonnull %12) #21
  br label %65

65:                                               ; preds = %55, %59, %63, %49
  %66 = load ptr, ptr %50, align 8, !tbaa !44
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %49, !llvm.loop !204

68:                                               ; preds = %65, %26
  %69 = load i32, ptr %13, align 4, !tbaa !133
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %107, label %71

71:                                               ; preds = %68
  %72 = load float, ptr %41, align 4, !tbaa !136
  %73 = load float, ptr %40, align 4, !tbaa !135
  %74 = fdiv float %72, %73
  %75 = getelementptr inbounds %struct.ParticleCollision, ptr %12, i64 0, i32 13, i32 6
  %76 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 3
  %77 = call fastcc float @dot_v3v3(ptr noundef nonnull %75, ptr noundef nonnull %76) #19
  %78 = fcmp olt float %77, 0xBFEFAE1480000000
  br i1 %78, label %79, label %90

79:                                               ; preds = %71
  %80 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 11
  %81 = load ptr, ptr %80, align 8, !tbaa !117
  %82 = call float @BLI_rng_get_float(ptr noundef %81) #21
  %83 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5
  store float %82, ptr %83, align 4, !tbaa !54
  %84 = load ptr, ptr %80, align 8, !tbaa !117
  %85 = call float @BLI_rng_get_float(ptr noundef %84) #21
  %86 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5, i64 1
  store float %85, ptr %86, align 4, !tbaa !54
  %87 = load ptr, ptr %80, align 8, !tbaa !117
  %88 = call float @BLI_rng_get_float(ptr noundef %87) #21
  %89 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5, i64 2
  store float %88, ptr %89, align 4, !tbaa !54
  br label %92

90:                                               ; preds = %71
  %91 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5
  call fastcc void @copy_v3_v3(ptr noundef nonnull %91, ptr noundef nonnull %75) #19
  br label %92

92:                                               ; preds = %90, %79
  %93 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5
  %94 = fsub float 1.000000e+00, %74
  %95 = load float, ptr %27, align 4, !tbaa !203
  %96 = fmul float %94, %95
  %97 = load float, ptr %29, align 4, !tbaa !114
  %98 = fmul float %96, %97
  call fastcc void @mul_v3_fl(ptr noundef nonnull %93, float noundef %98) #19
  %99 = call float @sqrtf(float noundef %74) #21
  %100 = call fastcc float @len_v3(ptr noundef nonnull %35) #19
  %101 = fmul float %99, %100
  %102 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 6
  %103 = getelementptr inbounds %struct.BoidValues, ptr %2, i64 0, i32 3
  %104 = load float, ptr %103, align 4, !tbaa !205
  %105 = fcmp ogt float %101, %104
  %106 = select i1 %105, float %101, float %104
  store float %106, ptr %102, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(i64 328, ptr nonnull %12) #20
  br label %272

107:                                              ; preds = %68
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(i64 328, ptr nonnull %12) #20
  %108 = load i32, ptr %17, align 8, !tbaa !202
  br label %109

109:                                              ; preds = %107, %21, %4
  %110 = phi i32 [ %108, %107 ], [ %18, %21 ], [ %18, %4 ]
  %111 = and i32 %110, 1
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %175, label %113

113:                                              ; preds = %109
  %114 = load ptr, ptr %1, align 8, !tbaa !66
  %115 = getelementptr inbounds %struct.ParticleSimulationData, ptr %114, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !67
  %117 = getelementptr inbounds %struct.ParticleSystem, ptr %116, i64 0, i32 46
  %118 = load ptr, ptr %117, align 8, !tbaa !206
  %119 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1
  %120 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 3
  %121 = getelementptr inbounds %struct.BoidRuleAvoidCollision, ptr %0, i64 0, i32 2
  %122 = load float, ptr %121, align 4, !tbaa !164
  %123 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 1
  %124 = call fastcc float @len_v3(ptr noundef nonnull %123) #19
  %125 = fmul float %122, %124
  %126 = call i32 @BLI_kdtree_range_search__normal(ptr noundef %118, ptr noundef nonnull %119, ptr noundef nonnull %120, ptr noundef nonnull %5, float noundef %125) #21
  %127 = icmp sgt i32 %126, 1
  br i1 %127, label %128, label %175

128:                                              ; preds = %113
  %129 = getelementptr inbounds %struct.BoidValues, ptr %2, i64 0, i32 4
  %130 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 13
  %131 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5
  %132 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 6
  %133 = zext nneg i32 %126 to i64
  br label %134

134:                                              ; preds = %128, %170
  %135 = phi i64 [ 1, %128 ], [ %173, %170 ]
  %136 = phi i32 [ 0, %128 ], [ %172, %170 ]
  %137 = phi float [ 2.000000e+00, %128 ], [ %171, %170 ]
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %119) #19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %123) #19
  %138 = load ptr, ptr %1, align 8, !tbaa !66
  %139 = getelementptr inbounds %struct.ParticleSimulationData, ptr %138, i64 0, i32 2
  %140 = load ptr, ptr %139, align 8, !tbaa !67
  %141 = getelementptr inbounds %struct.ParticleSystem, ptr %140, i64 0, i32 3
  %142 = load ptr, ptr %141, align 8, !tbaa !207
  %143 = load ptr, ptr %5, align 8, !tbaa !44
  %144 = getelementptr inbounds %struct.KDTreeNearest, ptr %143, i64 %135
  %145 = load i32, ptr %144, align 4, !tbaa !208
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.ParticleData, ptr %142, i64 %146, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef nonnull %147) #19
  %148 = getelementptr inbounds %struct.ParticleData, ptr %142, i64 %146, i32 1, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %11, ptr noundef nonnull %148) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %10) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %9, ptr noundef nonnull %11) #19
  %149 = call fastcc float @dot_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %6) #19
  %150 = fcmp une float %149, 0.000000e+00
  br i1 %150, label %151, label %170

151:                                              ; preds = %134
  %152 = call fastcc float @dot_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %6) #19
  %153 = fneg float %152
  %154 = fdiv float %153, %149
  %155 = fcmp ogt float %154, 0.000000e+00
  %156 = fcmp olt float %154, %137
  %157 = select i1 %155, i1 %156, i1 false
  br i1 %157, label %158, label %170

158:                                              ; preds = %151
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %8, ptr noundef nonnull %9, float noundef %154) #19
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %10, ptr noundef nonnull %11, float noundef %154) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %10, ptr noundef nonnull %8) #19
  %159 = call fastcc float @normalize_v3(ptr noundef nonnull %6) #19
  %160 = load float, ptr %129, align 4, !tbaa !203
  %161 = fmul float %160, 2.000000e+00
  %162 = load float, ptr %130, align 4, !tbaa !114
  %163 = fmul float %161, %162
  %164 = fcmp olt float %159, %163
  br i1 %164, label %165, label %170

165:                                              ; preds = %158
  %166 = call fastcc float @len_v3(ptr noundef nonnull %9) #19
  call fastcc void @mul_v3_fl(ptr noundef nonnull %6, float noundef %166) #19
  %167 = fsub float 2.000000e+00, %154
  %168 = fmul float %167, 5.000000e-01
  call fastcc void @mul_v3_fl(ptr noundef nonnull %6, float noundef %168) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %131, ptr noundef nonnull %9, ptr noundef nonnull %6) #19
  %169 = call fastcc float @len_v3(ptr noundef nonnull %131) #19
  store float %169, ptr %132, align 8, !tbaa !69
  br label %170

170:                                              ; preds = %134, %158, %165, %151
  %171 = phi float [ %154, %165 ], [ %137, %158 ], [ %137, %151 ], [ %137, %134 ]
  %172 = phi i32 [ 1, %165 ], [ %136, %158 ], [ %136, %151 ], [ %136, %134 ]
  %173 = add nuw nsw i64 %135, 1
  %174 = icmp eq i64 %173, %133
  br i1 %174, label %175, label %134, !llvm.loop !210

175:                                              ; preds = %170, %113, %109
  %176 = phi float [ 2.000000e+00, %113 ], [ 2.000000e+00, %109 ], [ %171, %170 ]
  %177 = phi i32 [ 0, %113 ], [ 0, %109 ], [ %172, %170 ]
  %178 = load ptr, ptr %5, align 8, !tbaa !44
  %179 = icmp eq ptr %178, null
  br i1 %179, label %182, label %180

180:                                              ; preds = %175
  %181 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %181(ptr noundef nonnull %178) #21
  store ptr null, ptr %5, align 8, !tbaa !44
  br label %182

182:                                              ; preds = %180, %175
  %183 = load ptr, ptr %1, align 8, !tbaa !66
  %184 = getelementptr inbounds %struct.ParticleSimulationData, ptr %183, i64 0, i32 2
  %185 = load ptr, ptr %184, align 8, !tbaa !67
  %186 = getelementptr inbounds %struct.ParticleSystem, ptr %185, i64 0, i32 17
  %187 = load ptr, ptr %186, align 8, !tbaa !44
  %188 = icmp eq ptr %187, null
  br i1 %188, label %272, label %189

189:                                              ; preds = %182
  %190 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1
  %191 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 3
  %192 = getelementptr inbounds %struct.BoidRuleAvoidCollision, ptr %0, i64 0, i32 2
  %193 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 1
  %194 = getelementptr inbounds %struct.BoidValues, ptr %2, i64 0, i32 4
  %195 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 13
  %196 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5
  %197 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 6
  br label %198

198:                                              ; preds = %189, %262
  %199 = phi ptr [ %187, %189 ], [ %265, %262 ]
  %200 = phi i32 [ %177, %189 ], [ %264, %262 ]
  %201 = phi float [ %176, %189 ], [ %263, %262 ]
  %202 = load ptr, ptr %1, align 8, !tbaa !66
  %203 = getelementptr inbounds %struct.ParticleSimulationData, ptr %202, i64 0, i32 1
  %204 = load ptr, ptr %203, align 8, !tbaa !211
  %205 = call ptr @psys_get_target_system(ptr noundef %204, ptr noundef nonnull %199) #21
  %206 = icmp eq ptr %205, null
  br i1 %206, label %262, label %207

207:                                              ; preds = %198
  %208 = getelementptr inbounds %struct.ParticleSystem, ptr %205, i64 0, i32 46
  %209 = load ptr, ptr %208, align 8, !tbaa !206
  %210 = load float, ptr %192, align 4, !tbaa !164
  %211 = call fastcc float @len_v3(ptr noundef nonnull %193) #19
  %212 = fmul float %210, %211
  %213 = call i32 @BLI_kdtree_range_search__normal(ptr noundef %209, ptr noundef nonnull %190, ptr noundef nonnull %191, ptr noundef nonnull %5, float noundef %212) #21
  %214 = icmp sgt i32 %213, 0
  br i1 %214, label %215, label %255

215:                                              ; preds = %207
  %216 = getelementptr inbounds %struct.ParticleSystem, ptr %205, i64 0, i32 3
  %217 = zext nneg i32 %213 to i64
  br label %218

218:                                              ; preds = %215, %250
  %219 = phi i64 [ 0, %215 ], [ %253, %250 ]
  %220 = phi i32 [ %200, %215 ], [ %252, %250 ]
  %221 = phi float [ %201, %215 ], [ %251, %250 ]
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %190) #19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %193) #19
  %222 = load ptr, ptr %216, align 8, !tbaa !207
  %223 = load ptr, ptr %5, align 8, !tbaa !44
  %224 = getelementptr inbounds %struct.KDTreeNearest, ptr %223, i64 %219
  %225 = load i32, ptr %224, align 4, !tbaa !208
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.ParticleData, ptr %222, i64 %226, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef nonnull %227) #19
  %228 = getelementptr inbounds %struct.ParticleData, ptr %222, i64 %226, i32 1, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %11, ptr noundef nonnull %228) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %10) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %9, ptr noundef nonnull %11) #19
  %229 = call fastcc float @dot_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %6) #19
  %230 = fcmp une float %229, 0.000000e+00
  br i1 %230, label %231, label %250

231:                                              ; preds = %218
  %232 = call fastcc float @dot_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %6) #19
  %233 = fneg float %232
  %234 = fdiv float %233, %229
  %235 = fcmp ogt float %234, 0.000000e+00
  %236 = fcmp olt float %234, %221
  %237 = select i1 %235, i1 %236, i1 false
  br i1 %237, label %238, label %250

238:                                              ; preds = %231
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %8, ptr noundef nonnull %9, float noundef %234) #19
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %10, ptr noundef nonnull %11, float noundef %234) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %10, ptr noundef nonnull %8) #19
  %239 = call fastcc float @normalize_v3(ptr noundef nonnull %6) #19
  %240 = load float, ptr %194, align 4, !tbaa !203
  %241 = fmul float %240, 2.000000e+00
  %242 = load float, ptr %195, align 4, !tbaa !114
  %243 = fmul float %241, %242
  %244 = fcmp olt float %239, %243
  br i1 %244, label %245, label %250

245:                                              ; preds = %238
  %246 = call fastcc float @len_v3(ptr noundef nonnull %9) #19
  call fastcc void @mul_v3_fl(ptr noundef nonnull %6, float noundef %246) #19
  %247 = fsub float 2.000000e+00, %234
  %248 = fmul float %247, 5.000000e-01
  call fastcc void @mul_v3_fl(ptr noundef nonnull %6, float noundef %248) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %196, ptr noundef nonnull %9, ptr noundef nonnull %6) #19
  %249 = call fastcc float @len_v3(ptr noundef nonnull %196) #19
  store float %249, ptr %197, align 8, !tbaa !69
  br label %250

250:                                              ; preds = %218, %238, %245, %231
  %251 = phi float [ %234, %245 ], [ %221, %238 ], [ %221, %231 ], [ %221, %218 ]
  %252 = phi i32 [ 1, %245 ], [ %220, %238 ], [ %220, %231 ], [ %220, %218 ]
  %253 = add nuw nsw i64 %219, 1
  %254 = icmp eq i64 %253, %217
  br i1 %254, label %255, label %218, !llvm.loop !212

255:                                              ; preds = %250, %207
  %256 = phi float [ %201, %207 ], [ %251, %250 ]
  %257 = phi i32 [ %200, %207 ], [ %252, %250 ]
  %258 = load ptr, ptr %5, align 8, !tbaa !44
  %259 = icmp eq ptr %258, null
  br i1 %259, label %262, label %260

260:                                              ; preds = %255
  %261 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %261(ptr noundef nonnull %258) #21
  store ptr null, ptr %5, align 8, !tbaa !44
  br label %262

262:                                              ; preds = %255, %260, %198
  %263 = phi float [ %256, %260 ], [ %256, %255 ], [ %201, %198 ]
  %264 = phi i32 [ %257, %260 ], [ %257, %255 ], [ %200, %198 ]
  %265 = load ptr, ptr %199, align 8, !tbaa !44
  %266 = icmp eq ptr %265, null
  br i1 %266, label %267, label %198, !llvm.loop !213

267:                                              ; preds = %262
  %268 = load ptr, ptr %5, align 8, !tbaa !44
  %269 = icmp eq ptr %268, null
  br i1 %269, label %272, label %270

270:                                              ; preds = %267
  %271 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %271(ptr noundef nonnull %268) #21
  br label %272

272:                                              ; preds = %182, %92, %267, %270
  %273 = phi i32 [ 1, %92 ], [ %264, %270 ], [ %264, %267 ], [ %177, %182 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  ret i32 %273
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @rule_separate(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #3 !PGOFuncName !214 {
  %5 = alloca ptr, align 8
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  store ptr null, ptr %5, align 8, !tbaa !44
  %7 = getelementptr inbounds %struct.BoidValues, ptr %2, i64 0, i32 4
  %8 = load float, ptr %7, align 4, !tbaa !203
  %9 = fmul float %8, 2.000000e+00
  %10 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 13
  %11 = load float, ptr %10, align 4, !tbaa !114
  %12 = tail call float @llvm.fmuladd.f32(float %9, float %11, float 1.000000e+00)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i64 12, i1 false)
  %13 = load ptr, ptr %1, align 8, !tbaa !66
  %14 = getelementptr inbounds %struct.ParticleSimulationData, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !67
  %16 = getelementptr inbounds %struct.ParticleSystem, ptr %15, i64 0, i32 46
  %17 = load ptr, ptr %16, align 8, !tbaa !206
  %18 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1
  %19 = fmul float %9, %11
  %20 = call i32 @BLI_kdtree_range_search__normal(ptr noundef %17, ptr noundef nonnull %18, ptr noundef null, ptr noundef nonnull %5, float noundef %19) #21
  %21 = icmp sgt i32 %20, 1
  %22 = load ptr, ptr %5, align 8, !tbaa !44
  br i1 %21, label %23, label %47

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct.KDTreeNearest, ptr %22, i64 1, i32 1
  %25 = load float, ptr %24, align 4, !tbaa !215
  %26 = fcmp une float %25, 0.000000e+00
  br i1 %26, label %27, label %49

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.KDTreeNearest, ptr %22, i64 1
  %29 = load ptr, ptr %1, align 8, !tbaa !66
  %30 = getelementptr inbounds %struct.ParticleSimulationData, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !67
  %32 = getelementptr inbounds %struct.ParticleSystem, ptr %31, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !207
  %34 = load i32, ptr %28, align 4, !tbaa !208
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.ParticleData, ptr %33, i64 %35
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %18, ptr noundef %36) #19
  %37 = load float, ptr %7, align 4, !tbaa !203
  %38 = fmul float %37, 2.000000e+00
  %39 = load float, ptr %10, align 4, !tbaa !114
  %40 = fneg float %25
  %41 = call float @llvm.fmuladd.f32(float %38, float %39, float %40)
  %42 = fdiv float %41, %25
  call fastcc void @mul_v3_fl(ptr noundef nonnull %6, float noundef %42) #19
  %43 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5
  call fastcc void @add_v3_v3(ptr noundef nonnull %43, ptr noundef nonnull %6) #19
  %44 = load float, ptr %2, align 4, !tbaa !199
  %45 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 6
  store float %44, ptr %45, align 8, !tbaa !69
  %46 = load float, ptr %24, align 4, !tbaa !215
  br label %49

47:                                               ; preds = %4
  %48 = icmp eq ptr %22, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %27, %23, %47
  %50 = phi i32 [ 0, %47 ], [ 0, %23 ], [ 1, %27 ]
  %51 = phi float [ %12, %47 ], [ %12, %23 ], [ %46, %27 ]
  %52 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %52(ptr noundef nonnull %22) #21
  store ptr null, ptr %5, align 8, !tbaa !44
  br label %53

53:                                               ; preds = %49, %47
  %54 = phi i32 [ %50, %49 ], [ 0, %47 ]
  %55 = phi float [ %51, %49 ], [ %12, %47 ]
  %56 = load ptr, ptr %1, align 8, !tbaa !66
  %57 = getelementptr inbounds %struct.ParticleSimulationData, ptr %56, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !67
  %59 = getelementptr inbounds %struct.ParticleSystem, ptr %58, i64 0, i32 17
  %60 = load ptr, ptr %59, align 8, !tbaa !44
  %61 = icmp eq ptr %60, null
  br i1 %61, label %111, label %62

62:                                               ; preds = %53
  %63 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5
  %64 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 6
  br label %65

65:                                               ; preds = %62, %106
  %66 = phi ptr [ %60, %62 ], [ %109, %106 ]
  %67 = phi i32 [ %54, %62 ], [ %108, %106 ]
  %68 = phi float [ %55, %62 ], [ %107, %106 ]
  %69 = load ptr, ptr %1, align 8, !tbaa !66
  %70 = getelementptr inbounds %struct.ParticleSimulationData, ptr %69, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !211
  %72 = call ptr @psys_get_target_system(ptr noundef %71, ptr noundef nonnull %66) #21
  %73 = icmp eq ptr %72, null
  br i1 %73, label %106, label %74

74:                                               ; preds = %65
  %75 = getelementptr inbounds %struct.ParticleSystem, ptr %72, i64 0, i32 46
  %76 = load ptr, ptr %75, align 8, !tbaa !206
  %77 = load float, ptr %7, align 4, !tbaa !203
  %78 = fmul float %77, 2.000000e+00
  %79 = load float, ptr %10, align 4, !tbaa !114
  %80 = fmul float %78, %79
  %81 = call i32 @BLI_kdtree_range_search__normal(ptr noundef %76, ptr noundef nonnull %18, ptr noundef null, ptr noundef nonnull %5, float noundef %80) #21
  %82 = icmp sgt i32 %81, 0
  %83 = load ptr, ptr %5, align 8, !tbaa !44
  br i1 %82, label %84, label %100

84:                                               ; preds = %74
  %85 = getelementptr inbounds %struct.KDTreeNearest, ptr %83, i64 0, i32 1
  %86 = load float, ptr %85, align 4, !tbaa !215
  %87 = fcmp olt float %86, %68
  br i1 %87, label %88, label %102

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.KDTreeNearest, ptr %83, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %18, ptr noundef nonnull %89) #19
  %90 = load float, ptr %7, align 4, !tbaa !203
  %91 = fmul float %90, 2.000000e+00
  %92 = load float, ptr %10, align 4, !tbaa !114
  %93 = fneg float %86
  %94 = call float @llvm.fmuladd.f32(float %91, float %92, float %93)
  %95 = getelementptr inbounds %struct.KDTreeNearest, ptr %83, i64 1, i32 1
  %96 = load float, ptr %95, align 4, !tbaa !215
  %97 = fdiv float %94, %96
  call fastcc void @mul_v3_fl(ptr noundef nonnull %6, float noundef %97) #19
  call fastcc void @add_v3_v3(ptr noundef nonnull %63, ptr noundef nonnull %6) #19
  %98 = load float, ptr %2, align 4, !tbaa !199
  store float %98, ptr %64, align 8, !tbaa !69
  %99 = load float, ptr %85, align 4, !tbaa !215
  br label %102

100:                                              ; preds = %74
  %101 = icmp eq ptr %83, null
  br i1 %101, label %106, label %102

102:                                              ; preds = %88, %84, %100
  %103 = phi i32 [ %67, %100 ], [ %67, %84 ], [ 1, %88 ]
  %104 = phi float [ %68, %100 ], [ %68, %84 ], [ %99, %88 ]
  %105 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %105(ptr noundef nonnull %83) #21
  store ptr null, ptr %5, align 8, !tbaa !44
  br label %106

106:                                              ; preds = %100, %102, %65
  %107 = phi float [ %104, %102 ], [ %68, %100 ], [ %68, %65 ]
  %108 = phi i32 [ %103, %102 ], [ %67, %100 ], [ %67, %65 ]
  %109 = load ptr, ptr %66, align 8, !tbaa !44
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %65, !llvm.loop !216

111:                                              ; preds = %106, %53
  %112 = phi i32 [ %54, %53 ], [ %108, %106 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  ret i32 %112
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rule_flock(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr nocapture readnone %2, ptr noundef %3) #3 !PGOFuncName !217 {
  %5 = alloca [11 x %struct.KDTreeNearest], align 16
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 220, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, i8 0, i64 12, i1 false)
  %8 = load ptr, ptr %1, align 8, !tbaa !66
  %9 = getelementptr inbounds %struct.ParticleSimulationData, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !67
  %11 = getelementptr inbounds %struct.ParticleSystem, ptr %10, i64 0, i32 46
  %12 = load ptr, ptr %11, align 8, !tbaa !206
  %13 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1
  %14 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 3
  %15 = call i32 @BLI_kdtree_find_nearest_n__normal(ptr noundef %12, ptr noundef %3, ptr noundef nonnull %14, ptr noundef nonnull %5, i32 noundef 11) #21
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %41

17:                                               ; preds = %4
  %18 = load ptr, ptr %1, align 8, !tbaa !66
  %19 = getelementptr inbounds %struct.ParticleSimulationData, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !67
  %21 = getelementptr inbounds %struct.ParticleSystem, ptr %20, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !207
  %23 = zext nneg i32 %15 to i64
  br label %24

24:                                               ; preds = %17, %24
  %25 = phi i64 [ 1, %17 ], [ %31, %24 ]
  %26 = getelementptr inbounds [11 x %struct.KDTreeNearest], ptr %5, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !208
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ParticleData, ptr %22, i64 %28, i32 1
  call fastcc void @add_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %29) #19
  %30 = getelementptr inbounds %struct.ParticleData, ptr %22, i64 %28, i32 1, i32 1
  call fastcc void @add_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %30) #19
  %31 = add nuw nsw i64 %25, 1
  %32 = icmp eq i64 %31, %23
  br i1 %32, label %33, label %24, !llvm.loop !218

33:                                               ; preds = %24
  %34 = sitofp i32 %15 to float
  %35 = fadd float %34, -1.000000e+00
  %36 = fdiv float 1.000000e+00, %35
  call fastcc void @mul_v3_fl(ptr noundef nonnull %7, float noundef %36) #19
  call fastcc void @mul_v3_fl(ptr noundef nonnull %6, float noundef %36) #19
  call fastcc void @sub_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %13) #19
  %37 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 1
  call fastcc void @sub_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %37) #19
  %38 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5
  call fastcc void @add_v3_v3(ptr noundef nonnull %38, ptr noundef nonnull %6) #19
  call fastcc void @add_v3_v3(ptr noundef nonnull %38, ptr noundef nonnull %7) #19
  %39 = call fastcc float @len_v3(ptr noundef nonnull %38) #19
  %40 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 6
  store float %39, ptr %40, align 8, !tbaa !69
  br label %41

41:                                               ; preds = %33, %4
  %42 = phi i32 [ 1, %33 ], [ 0, %4 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 220, ptr nonnull %5) #20
  ret i32 %42
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal noundef i32 @rule_follow_leader(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #16 !PGOFuncName !219 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i64 12, i1 false)
  %9 = getelementptr inbounds %struct.BoidRuleFollowLeader, ptr %0, i64 0, i32 7
  %10 = load i32, ptr %9, align 4, !tbaa !220
  %11 = icmp slt i32 %10, 2
  %12 = load ptr, ptr %1, align 8, !tbaa !66
  %13 = getelementptr inbounds %struct.ParticleSimulationData, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !67
  br i1 %11, label %15, label %18

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.ParticleSystem, ptr %14, i64 0, i32 26
  %17 = load i32, ptr %16, align 8, !tbaa !221
  br label %18

18:                                               ; preds = %4, %15
  %19 = phi i32 [ %17, %15 ], [ %10, %4 ]
  %20 = getelementptr inbounds %struct.ParticleSystem, ptr %14, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !207
  %22 = ptrtoint ptr %3 to i64
  %23 = ptrtoint ptr %21 to i64
  %24 = sub i64 %22, %23
  %25 = sdiv exact i64 %24, 200
  %26 = trunc i64 %25 to i32
  %27 = getelementptr inbounds %struct.BoidRuleFollowLeader, ptr %0, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !49
  %29 = icmp eq ptr %28, null
  br i1 %29, label %103, label %30

30:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #20
  %31 = getelementptr inbounds %struct.BoidRuleFollowLeader, ptr %0, i64 0, i32 2
  %32 = getelementptr inbounds %struct.BoidRuleFollowLeader, ptr %0, i64 0, i32 3
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %31, ptr noundef nonnull %32) #19
  %33 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 2
  %34 = load float, ptr %33, align 8, !tbaa !112
  %35 = fdiv float 1.000000e+00, %34
  call fastcc void @mul_v3_fl(ptr noundef nonnull %5, float noundef %35) #19
  %36 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %36, ptr noundef nonnull %32) #19
  %37 = call fastcc float @dot_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %5) #19
  %38 = fcmp olt float %37, 0x3F847AE140000000
  br i1 %38, label %39, label %51

39:                                               ; preds = %30
  %40 = call fastcc float @len_v3(ptr noundef nonnull %6) #19
  %41 = getelementptr inbounds %struct.BoidValues, ptr %2, i64 0, i32 4
  %42 = load float, ptr %41, align 4, !tbaa !203
  %43 = fmul float %42, 2.000000e+00
  %44 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 13
  %45 = load float, ptr %44, align 4, !tbaa !114
  %46 = fmul float %43, %45
  %47 = fcmp olt float %40, %46
  br i1 %47, label %48, label %72

48:                                               ; preds = %39
  %49 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5
  call fastcc void @copy_v3_v3(ptr noundef nonnull %49, ptr noundef nonnull %6) #19
  %50 = load float, ptr %2, align 4, !tbaa !199
  br label %93

51:                                               ; preds = %30
  %52 = call fastcc float @dot_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %5) #19
  %53 = fdiv float %52, %37
  %54 = fcmp ogt float %53, 0.000000e+00
  %55 = fcmp olt float %53, 3.000000e+00
  %56 = and i1 %54, %55
  br i1 %56, label %57, label %72

57:                                               ; preds = %51
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %5) #19
  call fastcc void @mul_v3_fl(ptr noundef nonnull %7, float noundef %53) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %7) #19
  %58 = call fastcc float @len_v3(ptr noundef nonnull %7) #19
  %59 = getelementptr inbounds %struct.BoidValues, ptr %2, i64 0, i32 4
  %60 = load float, ptr %59, align 4, !tbaa !203
  %61 = fmul float %60, 2.000000e+00
  %62 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 13
  %63 = load float, ptr %62, align 4, !tbaa !114
  %64 = fmul float %61, %63
  %65 = fcmp olt float %58, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %57
  %67 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5
  call fastcc void @copy_v3_v3(ptr noundef nonnull %67, ptr noundef nonnull %7) #19
  %68 = load float, ptr %2, align 4, !tbaa !199
  %69 = fsub float 3.000000e+00, %53
  %70 = fmul float %69, %68
  %71 = fdiv float %70, 3.000000e+00
  br label %93

72:                                               ; preds = %51, %57, %39
  %73 = icmp eq i32 %26, 0
  br i1 %73, label %90, label %74

74:                                               ; preds = %72
  %75 = getelementptr inbounds %struct.BoidRuleFollowLeader, ptr %0, i64 0, i32 6
  %76 = load i32, ptr %75, align 8, !tbaa !222
  %77 = and i32 %76, 1
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %90, label %79

79:                                               ; preds = %74
  %80 = load ptr, ptr %1, align 8, !tbaa !66
  %81 = getelementptr inbounds %struct.ParticleSimulationData, ptr %80, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !67
  %83 = getelementptr inbounds %struct.ParticleSystem, ptr %82, i64 0, i32 3
  %84 = load ptr, ptr %83, align 8, !tbaa !207
  %85 = shl i64 %25, 32
  %86 = add i64 %85, -4294967296
  %87 = ashr exact i64 %86, 32
  %88 = getelementptr inbounds %struct.ParticleData, ptr %84, i64 %87, i32 1, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %88) #19
  %89 = getelementptr inbounds %struct.ParticleData, ptr %84, i64 %87, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %89) #19
  br label %96

90:                                               ; preds = %74, %72
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %32) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %31, ptr noundef nonnull %32) #19
  %91 = load float, ptr %33, align 8, !tbaa !112
  %92 = fdiv float 1.000000e+00, %91
  call fastcc void @mul_v3_fl(ptr noundef nonnull %5, float noundef %92) #19
  br label %96

93:                                               ; preds = %48, %66
  %94 = phi float [ %50, %48 ], [ %71, %66 ]
  %95 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 6
  store float %94, ptr %95, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #20
  br label %203

96:                                               ; preds = %79, %90
  %97 = getelementptr inbounds %struct.BoidRuleFollowLeader, ptr %0, i64 0, i32 5
  %98 = load float, ptr %97, align 4, !tbaa !166
  %99 = fneg float %98
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %6, ptr noundef nonnull %5, float noundef %99) #19
  %100 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %100, ptr noundef nonnull %6, ptr noundef nonnull %36) #19
  %101 = tail call fastcc float @len_v3(ptr noundef nonnull %100) #19
  %102 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 6
  store float %101, ptr %102, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #20
  br label %203

103:                                              ; preds = %18
  %104 = srem i32 %26, %19
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %203, label %106

106:                                              ; preds = %103
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #20
  %107 = getelementptr inbounds %struct.ParticleSystem, ptr %14, i64 0, i32 26
  %108 = load i32, ptr %107, align 8, !tbaa !221
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %176

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1
  %112 = getelementptr inbounds %struct.BoidValues, ptr %2, i64 0, i32 4
  %113 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 13
  %114 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5
  %115 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 6
  %116 = sext i32 %19 to i64
  br label %117

117:                                              ; preds = %162, %110
  %118 = phi i64 [ %167, %162 ], [ 0, %110 ]
  %119 = phi ptr [ %170, %162 ], [ %14, %110 ]
  %120 = phi float [ %142, %162 ], [ 3.000000e+00, %110 ]
  %121 = phi i1 [ false, %162 ], [ true, %110 ]
  br label %122

122:                                              ; preds = %117, %153
  %123 = phi i64 [ %154, %153 ], [ %118, %117 ]
  %124 = phi ptr [ %157, %153 ], [ %119, %117 ]
  %125 = getelementptr inbounds %struct.ParticleSystem, ptr %124, i64 0, i32 3
  %126 = load ptr, ptr %125, align 8, !tbaa !207
  %127 = getelementptr inbounds %struct.ParticleData, ptr %126, i64 %123, i32 1, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %127) #19
  %128 = getelementptr inbounds %struct.ParticleData, ptr %126, i64 %123, i32 1
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %111, ptr noundef nonnull %128) #19
  %129 = call fastcc float @dot_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %5) #19
  %130 = fcmp olt float %129, 0x3F847AE140000000
  br i1 %130, label %131, label %140

131:                                              ; preds = %122
  %132 = call fastcc float @len_v3(ptr noundef nonnull %6) #19
  %133 = load float, ptr %112, align 4, !tbaa !203
  %134 = fmul float %133, 2.000000e+00
  %135 = load float, ptr %113, align 4, !tbaa !114
  %136 = fmul float %134, %135
  %137 = fcmp olt float %132, %136
  br i1 %137, label %138, label %153

138:                                              ; preds = %131
  call fastcc void @copy_v3_v3(ptr noundef nonnull %114, ptr noundef nonnull %6) #19
  %139 = load float, ptr %2, align 4, !tbaa !199
  store float %139, ptr %115, align 8, !tbaa !69
  br label %191

140:                                              ; preds = %122
  %141 = call fastcc float @dot_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %5) #19
  %142 = fdiv float %141, %129
  %143 = fcmp ogt float %142, 0.000000e+00
  %144 = fcmp olt float %142, %120
  %145 = and i1 %143, %144
  br i1 %145, label %146, label %153

146:                                              ; preds = %140
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %5) #19
  call fastcc void @mul_v3_fl(ptr noundef nonnull %8, float noundef %142) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %8) #19
  %147 = call fastcc float @len_v3(ptr noundef nonnull %8) #19
  %148 = load float, ptr %112, align 4, !tbaa !203
  %149 = fmul float %148, 2.000000e+00
  %150 = load float, ptr %113, align 4, !tbaa !114
  %151 = fmul float %149, %150
  %152 = fcmp olt float %147, %151
  br i1 %152, label %162, label %153

153:                                              ; preds = %131, %146, %140
  %154 = add i64 %123, %116
  %155 = load ptr, ptr %1, align 8, !tbaa !66
  %156 = getelementptr inbounds %struct.ParticleSimulationData, ptr %155, i64 0, i32 2
  %157 = load ptr, ptr %156, align 8, !tbaa !67
  %158 = getelementptr inbounds %struct.ParticleSystem, ptr %157, i64 0, i32 26
  %159 = load i32, ptr %158, align 8, !tbaa !221
  %160 = sext i32 %159 to i64
  %161 = icmp slt i64 %154, %160
  br i1 %161, label %122, label %175, !llvm.loop !223

162:                                              ; preds = %146
  call fastcc void @copy_v3_v3(ptr noundef nonnull %114, ptr noundef nonnull %6) #19
  %163 = load float, ptr %2, align 4, !tbaa !199
  %164 = fsub float 3.000000e+00, %142
  %165 = fmul float %164, %163
  %166 = fdiv float %165, 3.000000e+00
  store float %166, ptr %115, align 8, !tbaa !69
  %167 = add i64 %123, %116
  %168 = load ptr, ptr %1, align 8, !tbaa !66
  %169 = getelementptr inbounds %struct.ParticleSimulationData, ptr %168, i64 0, i32 2
  %170 = load ptr, ptr %169, align 8, !tbaa !67
  %171 = getelementptr inbounds %struct.ParticleSystem, ptr %170, i64 0, i32 26
  %172 = load i32, ptr %171, align 8, !tbaa !221
  %173 = sext i32 %172 to i64
  %174 = icmp slt i64 %167, %173
  br i1 %174, label %117, label %191, !llvm.loop !223

175:                                              ; preds = %153
  br i1 %121, label %176, label %191

176:                                              ; preds = %106, %175
  %177 = phi ptr [ %157, %175 ], [ %14, %106 ]
  %178 = getelementptr inbounds %struct.BoidRuleFollowLeader, ptr %0, i64 0, i32 6
  %179 = load i32, ptr %178, align 8, !tbaa !222
  %180 = and i32 %179, 1
  %181 = icmp eq i32 %180, 0
  %182 = getelementptr inbounds %struct.ParticleSystem, ptr %177, i64 0, i32 3
  %183 = load ptr, ptr %182, align 8, !tbaa !207
  br i1 %181, label %188, label %184

184:                                              ; preds = %176
  %185 = shl i64 %25, 32
  %186 = add i64 %185, -4294967296
  %187 = ashr exact i64 %186, 32
  br label %192

188:                                              ; preds = %176
  %189 = sub nsw i32 %26, %104
  %190 = sext i32 %189 to i64
  br label %192

191:                                              ; preds = %162, %138, %175
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #20
  br label %203

192:                                              ; preds = %184, %188
  %193 = phi i64 [ %187, %184 ], [ %190, %188 ]
  %194 = getelementptr inbounds %struct.ParticleData, ptr %183, i64 %193, i32 1, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %194) #19
  %195 = getelementptr inbounds %struct.ParticleData, ptr %183, i64 %193, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %195) #19
  %196 = getelementptr inbounds %struct.BoidRuleFollowLeader, ptr %0, i64 0, i32 5
  %197 = load float, ptr %196, align 4, !tbaa !166
  %198 = fneg float %197
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %6, ptr noundef nonnull %5, float noundef %198) #19
  %199 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5
  %200 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %199, ptr noundef nonnull %6, ptr noundef nonnull %200) #19
  %201 = tail call fastcc float @len_v3(ptr noundef nonnull %199) #19
  %202 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 6
  store float %201, ptr %202, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #20
  br label %203

203:                                              ; preds = %103, %96, %192, %191, %93
  %204 = phi i32 [ 1, %93 ], [ 1, %191 ], [ 1, %96 ], [ 1, %192 ], [ 0, %103 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #20
  ret i32 %204
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rule_average_speed(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #3 !PGOFuncName !224 {
  %5 = alloca [3 x float], align 4
  %6 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i64 12, i1 false)
  %8 = getelementptr inbounds %struct.BoidRuleAverageSpeed, ptr %0, i64 0, i32 1
  %9 = load float, ptr %8, align 8, !tbaa !225
  %10 = fcmp ogt float %9, 0.000000e+00
  br i1 %10, label %11, label %44

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 11
  %13 = load ptr, ptr %12, align 8, !tbaa !117
  %14 = tail call float @BLI_rng_get_float(ptr noundef %13) #21
  %15 = tail call float @llvm.fmuladd.f32(float %14, float 2.000000e+00, float -1.000000e+00)
  %16 = getelementptr inbounds %struct.BoidParticle, ptr %7, i64 0, i32 3
  %17 = load float, ptr %16, align 8, !tbaa !54
  %18 = tail call float @llvm.fmuladd.f32(float %9, float %15, float %17)
  store float %18, ptr %16, align 8, !tbaa !54
  %19 = load float, ptr %8, align 8, !tbaa !225
  %20 = load ptr, ptr %12, align 8, !tbaa !117
  %21 = tail call float @BLI_rng_get_float(ptr noundef %20) #21
  %22 = tail call float @llvm.fmuladd.f32(float %21, float 2.000000e+00, float -1.000000e+00)
  %23 = getelementptr inbounds %struct.BoidParticle, ptr %7, i64 0, i32 3, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !54
  %25 = tail call float @llvm.fmuladd.f32(float %19, float %22, float %24)
  store float %25, ptr %23, align 4, !tbaa !54
  %26 = load float, ptr %8, align 8, !tbaa !225
  %27 = load ptr, ptr %12, align 8, !tbaa !117
  %28 = tail call float @BLI_rng_get_float(ptr noundef %27) #21
  %29 = tail call float @llvm.fmuladd.f32(float %28, float 2.000000e+00, float -1.000000e+00)
  %30 = getelementptr inbounds %struct.BoidParticle, ptr %7, i64 0, i32 3, i64 2
  %31 = load float, ptr %30, align 8, !tbaa !54
  %32 = tail call float @llvm.fmuladd.f32(float %26, float %29, float %31)
  store float %32, ptr %30, align 8, !tbaa !54
  %33 = tail call fastcc float @normalize_v3(ptr noundef nonnull %16) #19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %16) #19
  %34 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 2
  call void @mul_qt_v3(ptr noundef nonnull %34, ptr noundef nonnull %5) #21
  %35 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5
  %36 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %35, ptr noundef nonnull %36) #19
  call fastcc void @mul_v3_fl(ptr noundef nonnull %35, float noundef 0x3FF19999A0000000) #19
  call fastcc void @add_v3_v3(ptr noundef nonnull %35, ptr noundef nonnull %5) #19
  %37 = getelementptr inbounds %struct.BoidRuleAverageSpeed, ptr %0, i64 0, i32 2
  %38 = load float, ptr %37, align 4, !tbaa !226
  %39 = fcmp ogt float %38, 0.000000e+00
  br i1 %39, label %40, label %80

40:                                               ; preds = %11
  %41 = load ptr, ptr %1, align 8, !tbaa !66
  %42 = call i32 @psys_uses_gravity(ptr noundef %41) #21
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %80, label %73

44:                                               ; preds = %4
  %45 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5
  %46 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 3
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %45, ptr noundef nonnull %46) #19
  %47 = tail call fastcc float @dot_v2v2(ptr noundef nonnull %45, ptr noundef nonnull %45) #19
  %48 = fcmp oeq float %47, 0.000000e+00
  br i1 %48, label %49, label %65

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 11
  %51 = load ptr, ptr %50, align 8, !tbaa !117
  %52 = tail call float @BLI_rng_get_float(ptr noundef %51) #21
  %53 = fsub float 5.000000e-01, %52
  %54 = fmul float %53, 2.000000e+00
  store float %54, ptr %45, align 4, !tbaa !54
  %55 = load ptr, ptr %50, align 8, !tbaa !117
  %56 = tail call float @BLI_rng_get_float(ptr noundef %55) #21
  %57 = fsub float 5.000000e-01, %56
  %58 = fmul float %57, 2.000000e+00
  %59 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5, i64 1
  store float %58, ptr %59, align 4, !tbaa !54
  %60 = load ptr, ptr %50, align 8, !tbaa !117
  %61 = tail call float @BLI_rng_get_float(ptr noundef %60) #21
  %62 = fsub float 5.000000e-01, %61
  %63 = fmul float %62, 2.000000e+00
  %64 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5, i64 2
  store float %63, ptr %64, align 4, !tbaa !54
  br label %65

65:                                               ; preds = %49, %44
  %66 = getelementptr inbounds %struct.BoidRuleAverageSpeed, ptr %0, i64 0, i32 2
  %67 = load float, ptr %66, align 4, !tbaa !226
  %68 = fcmp ogt float %67, 0.000000e+00
  br i1 %68, label %69, label %80

69:                                               ; preds = %65
  %70 = load ptr, ptr %1, align 8, !tbaa !66
  %71 = tail call i32 @psys_uses_gravity(ptr noundef %70) #21
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %69, %40
  %74 = phi ptr [ %35, %40 ], [ %45, %69 ]
  %75 = phi ptr [ %37, %40 ], [ %66, %69 ]
  %76 = load ptr, ptr %1, align 8, !tbaa !66
  %77 = load ptr, ptr %76, align 8, !tbaa !83
  %78 = getelementptr inbounds %struct.Scene, ptr %77, i64 0, i32 40
  call void @project_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %74, ptr noundef nonnull %78) #21
  %79 = load float, ptr %75, align 4, !tbaa !226
  call fastcc void @mul_v3_fl(ptr noundef nonnull %5, float noundef %79) #19
  call fastcc void @sub_v3_v3(ptr noundef nonnull %74, ptr noundef nonnull %5) #19
  br label %80

80:                                               ; preds = %73, %65, %69, %11, %40
  %81 = getelementptr inbounds %struct.BoidRuleAverageSpeed, ptr %0, i64 0, i32 3
  %82 = load float, ptr %81, align 8, !tbaa !167
  %83 = load float, ptr %2, align 4, !tbaa !199
  %84 = fmul float %82, %83
  %85 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 6
  store float %84, ptr %85, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #20
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rule_fight(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #3 !PGOFuncName !227 {
  %5 = alloca ptr, align 8
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  store ptr null, ptr %5, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i64 12, i1 false)
  %8 = getelementptr inbounds %struct.BoidRuleFight, ptr %0, i64 0, i32 1
  %9 = load float, ptr %8, align 8, !tbaa !228
  %10 = fadd float %9, 1.000000e+00
  %11 = load ptr, ptr %1, align 8, !tbaa !66
  %12 = getelementptr inbounds %struct.ParticleSimulationData, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !67
  %14 = getelementptr inbounds %struct.ParticleSystem, ptr %13, i64 0, i32 46
  %15 = load ptr, ptr %14, align 8, !tbaa !206
  %16 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1
  %17 = call i32 @BLI_kdtree_range_search__normal(ptr noundef %15, ptr noundef nonnull %16, ptr noundef null, ptr noundef nonnull %5, float noundef %9) #21
  %18 = icmp sgt i32 %17, 0
  %19 = load ptr, ptr %5, align 8, !tbaa !44
  br i1 %18, label %20, label %48

20:                                               ; preds = %4
  %21 = load ptr, ptr %1, align 8, !tbaa !66
  %22 = getelementptr inbounds %struct.ParticleSimulationData, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !67
  %24 = getelementptr inbounds %struct.ParticleSystem, ptr %23, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !207
  %26 = zext nneg i32 %17 to i64
  br label %27

27:                                               ; preds = %20, %27
  %28 = phi i64 [ 0, %20 ], [ %38, %27 ]
  %29 = phi float [ 0.000000e+00, %20 ], [ %37, %27 ]
  %30 = getelementptr inbounds %struct.KDTreeNearest, ptr %19, i64 %28
  %31 = load i32, ptr %30, align 4, !tbaa !208
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.ParticleData, ptr %25, i64 %32, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !57
  %35 = getelementptr inbounds %struct.BoidParticle, ptr %34, i64 0, i32 1
  %36 = load float, ptr %35, align 8, !tbaa !60
  %37 = fadd float %29, %36
  %38 = add nuw nsw i64 %28, 1
  %39 = icmp eq i64 %38, %26
  br i1 %39, label %40, label %27, !llvm.loop !230

40:                                               ; preds = %27
  %41 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !55
  %43 = getelementptr inbounds %struct.ParticleSettings, ptr %42, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !34
  %45 = getelementptr inbounds %struct.BoidSettings, ptr %44, i64 0, i32 8
  %46 = load float, ptr %45, align 8, !tbaa !231
  %47 = call float @llvm.fmuladd.f32(float %46, float %37, float 0.000000e+00)
  br label %57

48:                                               ; preds = %4
  %49 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !55
  %51 = getelementptr inbounds %struct.ParticleSettings, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !34
  %53 = getelementptr inbounds %struct.BoidSettings, ptr %52, i64 0, i32 8
  %54 = load float, ptr %53, align 8, !tbaa !231
  %55 = call float @llvm.fmuladd.f32(float %54, float 0.000000e+00, float 0.000000e+00)
  %56 = icmp eq ptr %19, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %40, %48
  %58 = phi float [ %47, %40 ], [ %55, %48 ]
  %59 = phi ptr [ %41, %40 ], [ %49, %48 ]
  %60 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %60(ptr noundef nonnull %19) #21
  store ptr null, ptr %5, align 8, !tbaa !44
  br label %61

61:                                               ; preds = %57, %48
  %62 = phi float [ %58, %57 ], [ %55, %48 ]
  %63 = phi ptr [ %59, %57 ], [ %49, %48 ]
  %64 = load ptr, ptr %1, align 8, !tbaa !66
  %65 = getelementptr inbounds %struct.ParticleSimulationData, ptr %64, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !67
  %67 = getelementptr inbounds %struct.ParticleSystem, ptr %66, i64 0, i32 17
  %68 = load ptr, ptr %67, align 8, !tbaa !44
  %69 = icmp eq ptr %68, null
  br i1 %69, label %240, label %70

70:                                               ; preds = %61, %151
  %71 = phi ptr [ %156, %151 ], [ %68, %61 ]
  %72 = phi ptr [ %155, %151 ], [ null, %61 ]
  %73 = phi float [ %154, %151 ], [ 0.000000e+00, %61 ]
  %74 = phi float [ %153, %151 ], [ %62, %61 ]
  %75 = phi float [ %152, %151 ], [ %10, %61 ]
  %76 = load ptr, ptr %1, align 8, !tbaa !66
  %77 = getelementptr inbounds %struct.ParticleSimulationData, ptr %76, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !211
  %79 = call ptr @psys_get_target_system(ptr noundef %78, ptr noundef nonnull %71) #21
  %80 = icmp eq ptr %79, null
  br i1 %80, label %151, label %81

81:                                               ; preds = %70
  %82 = getelementptr inbounds %struct.ParticleSystem, ptr %79, i64 0, i32 3
  %83 = load ptr, ptr %82, align 8, !tbaa !207
  %84 = getelementptr inbounds %struct.ParticleSystem, ptr %79, i64 0, i32 46
  %85 = load ptr, ptr %84, align 8, !tbaa !206
  %86 = load float, ptr %8, align 8, !tbaa !228
  %87 = call i32 @BLI_kdtree_range_search__normal(ptr noundef %85, ptr noundef nonnull %16, ptr noundef null, ptr noundef nonnull %5, float noundef %86) #21
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %122

89:                                               ; preds = %81
  %90 = load ptr, ptr %5, align 8, !tbaa !44
  %91 = getelementptr inbounds %struct.ParticleTarget, ptr %71, i64 0, i32 5
  %92 = zext nneg i32 %87 to i64
  %93 = getelementptr inbounds %struct.KDTreeNearest, ptr %90, i64 0, i32 1
  %94 = getelementptr inbounds %struct.KDTreeNearest, ptr %90, i64 0, i32 2
  br label %95

95:                                               ; preds = %89, %117
  %96 = phi i64 [ 0, %89 ], [ %120, %117 ]
  %97 = phi ptr [ %72, %89 ], [ %119, %117 ]
  %98 = phi float [ 0.000000e+00, %89 ], [ %107, %117 ]
  %99 = phi float [ %75, %89 ], [ %118, %117 ]
  %100 = getelementptr inbounds %struct.KDTreeNearest, ptr %90, i64 %96
  %101 = load i32, ptr %100, align 4, !tbaa !208
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.ParticleData, ptr %83, i64 %102, i32 4
  %104 = load ptr, ptr %103, align 8, !tbaa !57
  %105 = getelementptr inbounds %struct.BoidParticle, ptr %104, i64 0, i32 1
  %106 = load float, ptr %105, align 8, !tbaa !60
  %107 = fadd float %98, %106
  %108 = icmp eq i64 %96, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %95
  %110 = load i16, ptr %91, align 2, !tbaa !232
  %111 = icmp eq i16 %110, 2
  br i1 %111, label %112, label %117

112:                                              ; preds = %109
  %113 = load float, ptr %93, align 4, !tbaa !215
  %114 = fcmp olt float %113, %99
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %94) #19
  %116 = getelementptr inbounds %struct.ParticleData, ptr %83, i64 %102
  br label %117

117:                                              ; preds = %95, %109, %112, %115
  %118 = phi float [ %113, %115 ], [ %99, %112 ], [ %99, %109 ], [ %99, %95 ]
  %119 = phi ptr [ %116, %115 ], [ %97, %112 ], [ %97, %109 ], [ %97, %95 ]
  %120 = add nuw nsw i64 %96, 1
  %121 = icmp eq i64 %120, %92
  br i1 %121, label %122, label %95, !llvm.loop !234

122:                                              ; preds = %117, %81
  %123 = phi float [ %75, %81 ], [ %118, %117 ]
  %124 = phi float [ 0.000000e+00, %81 ], [ %107, %117 ]
  %125 = phi ptr [ %72, %81 ], [ %119, %117 ]
  %126 = getelementptr inbounds %struct.ParticleTarget, ptr %71, i64 0, i32 5
  %127 = load i16, ptr %126, align 2, !tbaa !232
  switch i16 %127, label %144 [
    i16 2, label %128
    i16 1, label %136
  ]

128:                                              ; preds = %122
  %129 = getelementptr inbounds %struct.ParticleSystem, ptr %79, i64 0, i32 2
  %130 = load ptr, ptr %129, align 8, !tbaa !235
  %131 = getelementptr inbounds %struct.ParticleSettings, ptr %130, i64 0, i32 2
  %132 = load ptr, ptr %131, align 8, !tbaa !34
  %133 = getelementptr inbounds %struct.BoidSettings, ptr %132, i64 0, i32 8
  %134 = load float, ptr %133, align 8, !tbaa !231
  %135 = call float @llvm.fmuladd.f32(float %134, float %124, float %73)
  br label %144

136:                                              ; preds = %122
  %137 = getelementptr inbounds %struct.ParticleSystem, ptr %79, i64 0, i32 2
  %138 = load ptr, ptr %137, align 8, !tbaa !235
  %139 = getelementptr inbounds %struct.ParticleSettings, ptr %138, i64 0, i32 2
  %140 = load ptr, ptr %139, align 8, !tbaa !34
  %141 = getelementptr inbounds %struct.BoidSettings, ptr %140, i64 0, i32 8
  %142 = load float, ptr %141, align 8, !tbaa !231
  %143 = call float @llvm.fmuladd.f32(float %142, float %124, float %74)
  br label %144

144:                                              ; preds = %122, %136, %128
  %145 = phi float [ %74, %128 ], [ %143, %136 ], [ %74, %122 ]
  %146 = phi float [ %135, %128 ], [ %73, %136 ], [ %73, %122 ]
  %147 = load ptr, ptr %5, align 8, !tbaa !44
  %148 = icmp eq ptr %147, null
  br i1 %148, label %151, label %149

149:                                              ; preds = %144
  %150 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %150(ptr noundef nonnull %147) #21
  store ptr null, ptr %5, align 8, !tbaa !44
  br label %151

151:                                              ; preds = %144, %149, %70
  %152 = phi float [ %123, %149 ], [ %123, %144 ], [ %75, %70 ]
  %153 = phi float [ %145, %149 ], [ %145, %144 ], [ %74, %70 ]
  %154 = phi float [ %146, %149 ], [ %146, %144 ], [ %73, %70 ]
  %155 = phi ptr [ %125, %149 ], [ %125, %144 ], [ %72, %70 ]
  %156 = load ptr, ptr %71, align 8, !tbaa !44
  %157 = icmp eq ptr %156, null
  br i1 %157, label %158, label %70, !llvm.loop !236

158:                                              ; preds = %151
  %159 = fcmp ogt float %154, 0.000000e+00
  br i1 %159, label %160, label %240

160:                                              ; preds = %158
  %161 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 5
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %161, ptr noundef nonnull %6, ptr noundef nonnull %16) #19
  %162 = load ptr, ptr %63, align 8, !tbaa !55
  %163 = getelementptr inbounds %struct.ParticleSettings, ptr %162, i64 0, i32 2
  %164 = load ptr, ptr %163, align 8, !tbaa !34
  %165 = getelementptr inbounds %struct.BoidSettings, ptr %164, i64 0, i32 10
  %166 = load float, ptr %165, align 8, !tbaa !172
  %167 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 13
  %168 = load float, ptr %167, align 4, !tbaa !114
  %169 = fadd float %166, %168
  %170 = getelementptr inbounds %struct.ParticleData, ptr %155, i64 0, i32 13
  %171 = load float, ptr %170, align 4, !tbaa !114
  %172 = fadd float %169, %171
  %173 = fcmp ugt float %152, %172
  br i1 %173, label %207, label %174

174:                                              ; preds = %160
  %175 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 11
  %176 = load ptr, ptr %175, align 8, !tbaa !117
  %177 = call float @BLI_rng_get_float(ptr noundef %176) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #20
  %178 = call fastcc float @normalize_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %161) #19
  %179 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 6
  store float 0.000000e+00, ptr %179, align 8, !tbaa !69
  %180 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 1, i32 3
  %181 = call fastcc float @dot_v3v3(ptr noundef nonnull %180, ptr noundef nonnull %7) #19
  %182 = fcmp ogt float %181, 5.000000e-01
  %183 = load ptr, ptr %63, align 8, !tbaa !55
  br i1 %182, label %187, label %184

184:                                              ; preds = %174
  %185 = getelementptr inbounds %struct.ParticleSettings, ptr %183, i64 0, i32 2
  %186 = load ptr, ptr %185, align 8, !tbaa !34
  br label %205

187:                                              ; preds = %174
  %188 = getelementptr inbounds %struct.ParticleData, ptr %155, i64 0, i32 4
  %189 = load ptr, ptr %188, align 8, !tbaa !57
  %190 = getelementptr inbounds %struct.ParticleSettings, ptr %183, i64 0, i32 2
  %191 = load ptr, ptr %190, align 8, !tbaa !34
  %192 = getelementptr inbounds %struct.BoidSettings, ptr %191, i64 0, i32 8
  %193 = load float, ptr %192, align 8, !tbaa !231
  %194 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 2
  %195 = load float, ptr %194, align 8, !tbaa !112
  %196 = getelementptr inbounds %struct.BoidSettings, ptr %191, i64 0, i32 9
  %197 = load float, ptr %196, align 4, !tbaa !237
  %198 = fsub float 1.000000e+00, %197
  %199 = call float @llvm.fmuladd.f32(float %198, float %177, float %197)
  %200 = getelementptr inbounds %struct.BoidParticle, ptr %189, i64 0, i32 1
  %201 = load float, ptr %200, align 8, !tbaa !60
  %202 = fneg float %193
  %203 = fmul float %195, %202
  %204 = call float @llvm.fmuladd.f32(float %203, float %199, float %201)
  store float %204, ptr %200, align 8, !tbaa !60
  br label %205

205:                                              ; preds = %184, %187
  %206 = phi ptr [ %186, %184 ], [ %191, %187 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #20
  br label %210

207:                                              ; preds = %160
  %208 = load float, ptr %2, align 4, !tbaa !199
  %209 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 6
  store float %208, ptr %209, align 8, !tbaa !69
  br label %210

210:                                              ; preds = %207, %205
  %211 = phi ptr [ %164, %207 ], [ %206, %205 ]
  %212 = getelementptr inbounds %struct.ParticleData, ptr %3, i64 0, i32 4
  %213 = load ptr, ptr %212, align 8, !tbaa !57
  %214 = getelementptr inbounds %struct.BoidParticle, ptr %213, i64 0, i32 1
  %215 = load float, ptr %214, align 8, !tbaa !60
  %216 = getelementptr inbounds %struct.BoidSettings, ptr %211, i64 0, i32 6
  %217 = load float, ptr %216, align 8, !tbaa !93
  %218 = getelementptr inbounds %struct.BoidSettings, ptr %211, i64 0, i32 7
  %219 = load float, ptr %218, align 4, !tbaa !238
  %220 = insertelement <2 x float> poison, float %215, i64 0
  %221 = insertelement <2 x float> %220, float %154, i64 1
  %222 = insertelement <2 x float> poison, float %217, i64 0
  %223 = insertelement <2 x float> %222, float %153, i64 1
  %224 = fdiv <2 x float> %221, %223
  %225 = extractelement <2 x float> %224, i64 0
  %226 = fmul float %225, %219
  %227 = extractelement <2 x float> %224, i64 1
  %228 = fcmp olt float %226, %227
  br i1 %228, label %229, label %240

229:                                              ; preds = %210
  %230 = getelementptr inbounds %struct.BoidRuleFight, ptr %0, i64 0, i32 2
  %231 = load float, ptr %230, align 4, !tbaa !239
  %232 = load float, ptr %8, align 8, !tbaa !228
  %233 = fmul float %231, %232
  %234 = fcmp olt float %152, %233
  br i1 %234, label %235, label %237

235:                                              ; preds = %229
  call fastcc void @negate_v3(ptr noundef nonnull %161) #19
  %236 = load float, ptr %2, align 4, !tbaa !199
  br label %237

237:                                              ; preds = %229, %235
  %238 = phi float [ %236, %235 ], [ 0.000000e+00, %229 ]
  %239 = getelementptr inbounds %struct.BoidBrainData, ptr %1, i64 0, i32 6
  store float %238, ptr %239, align 8, !tbaa !69
  br label %240

240:                                              ; preds = %237, %61, %210, %158
  %241 = phi i32 [ 0, %158 ], [ 1, %210 ], [ 0, %61 ], [ 1, %237 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  ret i32 %241
}

; Function Attrs: optsize
declare i32 @get_effector_data(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare float @effector_falloff(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !PGOFuncName !240 {
  %4 = load float, ptr %1, align 4, !tbaa !54
  %5 = load float, ptr %2, align 4, !tbaa !54
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !54
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !54
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !54
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !54
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !54
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !54
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !54
  ret void
}

; Function Attrs: optsize
declare i32 @BLI_bvhtree_ray_cast(ptr noundef, ptr noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @BKE_psys_collision_neartest_cb(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #17

; Function Attrs: optsize
declare i32 @BLI_kdtree_range_search__normal(ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @psys_get_target_system(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @BLI_kdtree_find_nearest_n__normal(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !241 {
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

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !242 {
  %3 = tail call fastcc float @dot_v2v2(ptr noundef %1, ptr noundef %1) #19
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #21
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v2_v2fl(ptr noundef %0, ptr noundef %1, float noundef %7) #19
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v2(ptr noundef %0) #19
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v2_v2fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #2 !PGOFuncName !243 {
  %4 = load float, ptr %1, align 4, !tbaa !54
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !54
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !54
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v2(ptr nocapture noundef writeonly %0) unnamed_addr #4 !PGOFuncName !244 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !54
  ret void
}

; Function Attrs: optsize
declare ptr @modifiers_findByType(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @closest_point_on_surface(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #2 !PGOFuncName !245 {
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

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #18

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { optsize }
attributes #20 = { nounwind }
attributes #21 = { nounwind optsize }

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
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!48, !41, i64 16}
!48 = !{!"BoidRule", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !38, i64 24}
!49 = !{!50, !37, i64 56}
!50 = !{!"BoidRuleFollowLeader", !48, i64 0, !37, i64 56, !38, i64 64, !38, i64 76, !42, i64 88, !42, i64 92, !41, i64 96, !41, i64 100}
!51 = !{!50, !42, i64 88}
!52 = distinct !{!52, !46}
!53 = !{!"boids.c:copy_v3_v3"}
!54 = !{!42, !42, i64 0}
!55 = !{!56, !37, i64 8}
!56 = !{!"BoidBrainData", !37, i64 0, !37, i64 8, !42, i64 16, !42, i64 20, !42, i64 24, !38, i64 28, !42, i64 40, !37, i64 48, !38, i64 56, !38, i64 68, !42, i64 80, !37, i64 88}
!57 = !{!58, !37, i64 128}
!58 = !{!"ParticleData", !59, i64 0, !59, i64 56, !37, i64 112, !37, i64 120, !37, i64 128, !41, i64 136, !42, i64 140, !42, i64 144, !42, i64 148, !41, i64 152, !41, i64 156, !38, i64 160, !42, i64 176, !42, i64 180, !42, i64 184, !41, i64 188, !41, i64 192, !40, i64 196, !40, i64 198}
!59 = !{!"ParticleKey", !38, i64 0, !38, i64 12, !38, i64 24, !38, i64 40, !42, i64 52}
!60 = !{!61, !42, i64 8}
!61 = !{!"BoidParticle", !37, i64 0, !62, i64 8, !38, i64 28, !38, i64 40, !42, i64 52}
!62 = !{!"BoidData", !42, i64 0, !38, i64 4, !40, i64 16, !40, i64 18}
!63 = !{!58, !40, i64 198}
!64 = !{!56, !42, i64 20}
!65 = !{!58, !42, i64 148}
!66 = !{!56, !37, i64 0}
!67 = !{!68, !37, i64 16}
!68 = !{!"ParticleSimulationData", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !42, i64 40}
!69 = !{!56, !42, i64 40}
!70 = !{!71, !41, i64 308}
!71 = !{!"ParticleSystem", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !43, i64 72, !43, i64 88, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !43, i64 152, !38, i64 168, !38, i64 232, !42, i64 296, !42, i64 300, !42, i64 304, !41, i64 308, !41, i64 312, !41, i64 316, !41, i64 320, !41, i64 324, !41, i64 328, !41, i64 332, !41, i64 336, !40, i64 340, !40, i64 342, !40, i64 344, !40, i64 346, !38, i64 348, !38, i64 540, !40, i64 564, !40, i64 566, !37, i64 568, !37, i64 576, !43, i64 584, !37, i64 600, !37, i64 608, !41, i64 616, !41, i64 620, !37, i64 624, !37, i64 632, !37, i64 640, !42, i64 648, !42, i64 652}
!72 = !{!73, !41, i64 104}
!73 = !{!"BoidState", !37, i64 0, !37, i64 8, !43, i64 16, !43, i64 32, !43, i64 48, !38, i64 64, !41, i64 96, !41, i64 100, !41, i64 104, !42, i64 108, !41, i64 112, !41, i64 116, !42, i64 120, !42, i64 124}
!74 = !{!73, !42, i64 108}
!75 = !{i32 0, i32 2}
!76 = distinct !{!76, !46}
!77 = distinct !{!77, !46}
!78 = !{!61, !40, i64 26}
!79 = !{!80, !41, i64 0}
!80 = !{!"BoidSettings", !41, i64 0, !41, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !42, i64 40, !42, i64 44, !42, i64 48, !42, i64 52, !42, i64 56, !42, i64 60, !42, i64 64, !42, i64 68, !42, i64 72, !42, i64 76, !42, i64 80, !42, i64 84, !43, i64 88}
!81 = !{!82, !42, i64 20}
!82 = !{!"BoidValues", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20}
!83 = !{!68, !37, i64 0}
!84 = !{!"boids.c:get_boid_state"}
!85 = !{!73, !41, i64 96}
!86 = !{!61, !40, i64 24}
!87 = distinct !{!87, !46}
!88 = !{!80, !37, i64 88}
!89 = !{!"boids.c:zero_v3"}
!90 = !{!"boids.c:psys_frand"}
!91 = !{!41, !41, i64 0}
!92 = !{!"boids.c:set_boid_values"}
!93 = !{!80, !42, i64 24}
!94 = !{!80, !42, i64 68}
!95 = !{!80, !42, i64 72}
!96 = !{!80, !42, i64 64}
!97 = !{!80, !42, i64 48}
!98 = !{!80, !42, i64 52}
!99 = !{!80, !42, i64 44}
!100 = !{!"boids.c:apply_boid_rule"}
!101 = !{i8 0, i8 2}
!102 = !{!"boids.c:add_v3_v3"}
!103 = !{!"boids.c:mul_v3_fl"}
!104 = !{!"boids.c:normalize_v2"}
!105 = !{!"boids.c:dot_v2v2"}
!106 = !{!"boids.c:len_v2"}
!107 = !{!"boids.c:sasqrt"}
!108 = !{!"boids.c:normalize_v3"}
!109 = !{!"boids.c:add_v2_v2v2"}
!110 = !{!35, !42, i64 404}
!111 = !{!56, !42, i64 24}
!112 = !{!56, !42, i64 16}
!113 = !{!35, !41, i64 152}
!114 = !{!58, !42, i64 180}
!115 = !{!61, !37, i64 0}
!116 = !{!80, !42, i64 8}
!117 = !{!56, !37, i64 88}
!118 = !{!82, !42, i64 8}
!119 = !{!82, !42, i64 4}
!120 = !{!71, !37, i64 600}
!121 = !{!68, !37, i64 32}
!122 = !{!35, !37, i64 144}
!123 = !{!80, !42, i64 84}
!124 = !{!80, !42, i64 16}
!125 = !{!56, !37, i64 48}
!126 = !{!80, !42, i64 12}
!127 = !{!80, !42, i64 20}
!128 = !{!35, !42, i64 436}
!129 = !{!"boids.c:boid_find_ground"}
!130 = !{!131, !42, i64 48}
!131 = !{!"ParticleCollision", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !42, i64 48, !42, i64 52, !42, i64 56, !42, i64 60, !42, i64 64, !42, i64 68, !41, i64 72, !132, i64 80, !42, i64 240, !42, i64 244, !42, i64 248, !42, i64 252, !38, i64 256, !38, i64 268, !38, i64 280, !38, i64 292, !38, i64 304, !42, i64 316, !41, i64 320}
!132 = !{!"ParticleCollisionElement", !38, i64 0, !38, i64 32, !38, i64 64, !38, i64 76, !38, i64 88, !38, i64 100, !38, i64 112, !38, i64 124, !38, i64 136, !41, i64 144, !41, i64 148, !40, i64 152, !40, i64 154}
!133 = !{!134, !41, i64 0}
!134 = !{!"BVHTreeRayHit", !41, i64 0, !38, i64 4, !38, i64 16, !42, i64 28, !41, i64 32}
!135 = !{!131, !42, i64 68}
!136 = !{!134, !42, i64 28}
!137 = !{!131, !40, i64 234}
!138 = !{!139, !37, i64 16}
!139 = !{!"ColliderCache", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!140 = !{!131, !37, i64 0}
!141 = !{!139, !37, i64 24}
!142 = !{!131, !37, i64 40}
!143 = !{!144, !37, i64 184}
!144 = !{!"CollisionModifierData", !145, i64 0, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !41, i64 168, !41, i64 172, !42, i64 176, !42, i64 180, !37, i64 184}
!145 = !{!"ModifierData", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !38, i64 32, !37, i64 96, !37, i64 104}
!146 = distinct !{!146, !46}
!147 = !{!131, !37, i64 8}
!148 = distinct !{!148, !46}
!149 = !{!"boids.c:normalize_v3_v3"}
!150 = !{!"boids.c:copy_v2_v2"}
!151 = !{!"boids.c:saacos"}
!152 = !{!"boids.c:dot_v3v3"}
!153 = !{!"boids.c:min_ff"}
!154 = !{!"boids.c:cross_v3_v3v3"}
!155 = !{!"boids.c:len_v3"}
!156 = !{!"boids.c:mul_v2_fl"}
!157 = !{!"boids.c:sub_v3_v3v3"}
!158 = !{!"boids.c:madd_v3_v3fl"}
!159 = !{!"boids.c:madd_v3_v3v3fl"}
!160 = !{!"boids.c:boid_goal_signed_dist"}
!161 = !{!"boids.c:boid_climb"}
!162 = !{!"boids.c:negate_v3_v3"}
!163 = !{!"boids.c:negate_v3"}
!164 = !{!165, !42, i64 60}
!165 = !{!"BoidRuleAvoidCollision", !48, i64 0, !41, i64 56, !42, i64 60}
!166 = !{!50, !42, i64 92}
!167 = !{!168, !42, i64 64}
!168 = !{!"BoidRuleAverageSpeed", !48, i64 0, !42, i64 56, !42, i64 60, !42, i64 64, !42, i64 68}
!169 = !{!48, !41, i64 20}
!170 = !{!171, !37, i64 24}
!171 = !{!"EnumPropertyItem", !41, i64 0, !37, i64 8, !41, i64 16, !37, i64 24, !37, i64 32}
!172 = !{!80, !42, i64 40}
!173 = !{!80, !41, i64 4}
!174 = !{!73, !42, i64 120}
!175 = !{!73, !41, i64 116}
!176 = distinct !{!176, !46}
!177 = distinct !{!177, !46}
!178 = !{!73, !41, i64 100}
!179 = distinct !{!179, !46}
!180 = !{!"boids.c:boid_rule_applies"}
!181 = !{!"boids.c:compare_len_v3v3"}
!182 = !{!"boids.c:rule_none"}
!183 = !{!"boids.c:rule_goal_avoid"}
!184 = !{!185, !37, i64 24}
!185 = !{!"EffectorCache", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !38, i64 64, !38, i64 80, !42, i64 92, !38, i64 96, !42, i64 108, !41, i64 112}
!186 = !{!185, !37, i64 48}
!187 = !{!188, !37, i64 56}
!188 = !{!"BoidRuleGoalAvoid", !48, i64 0, !37, i64 56, !41, i64 64, !42, i64 68, !41, i64 72, !41, i64 76}
!189 = !{!190, !40, i64 6}
!190 = !{!"PartDeflect", !41, i64 0, !40, i64 4, !40, i64 6, !40, i64 8, !40, i64 10, !40, i64 12, !40, i64 14, !40, i64 16, !40, i64 18, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !42, i64 40, !42, i64 44, !42, i64 48, !42, i64 52, !42, i64 56, !42, i64 60, !42, i64 64, !42, i64 68, !42, i64 72, !42, i64 76, !42, i64 80, !42, i64 84, !42, i64 88, !42, i64 92, !42, i64 96, !42, i64 100, !42, i64 104, !42, i64 108, !42, i64 112, !42, i64 116, !42, i64 120, !42, i64 124, !37, i64 128, !37, i64 136, !42, i64 144, !41, i64 148, !37, i64 152}
!191 = !{!190, !42, i64 20}
!192 = !{!193, !42, i64 48}
!193 = !{!"EffectorData", !38, i64 0, !38, i64 12, !38, i64 24, !38, i64 36, !42, i64 48, !42, i64 52, !42, i64 56, !42, i64 60, !38, i64 64, !38, i64 76, !37, i64 88}
!194 = distinct !{!194, !46}
!195 = !{!185, !37, i64 16}
!196 = !{!188, !42, i64 68}
!197 = !{!190, !40, i64 10}
!198 = !{!188, !41, i64 64}
!199 = !{!82, !42, i64 0}
!200 = !{!56, !42, i64 80}
!201 = !{!"boids.c:rule_avoid_collision"}
!202 = !{!165, !41, i64 56}
!203 = !{!82, !42, i64 16}
!204 = distinct !{!204, !46}
!205 = !{!82, !42, i64 12}
!206 = !{!71, !37, i64 624}
!207 = !{!71, !37, i64 24}
!208 = !{!209, !41, i64 0}
!209 = !{!"KDTreeNearest", !41, i64 0, !42, i64 4, !38, i64 8}
!210 = distinct !{!210, !46}
!211 = !{!68, !37, i64 8}
!212 = distinct !{!212, !46}
!213 = distinct !{!213, !46}
!214 = !{!"boids.c:rule_separate"}
!215 = !{!209, !42, i64 4}
!216 = distinct !{!216, !46}
!217 = !{!"boids.c:rule_flock"}
!218 = distinct !{!218, !46}
!219 = !{!"boids.c:rule_follow_leader"}
!220 = !{!50, !41, i64 100}
!221 = !{!71, !41, i64 320}
!222 = !{!50, !41, i64 96}
!223 = distinct !{!223, !46}
!224 = !{!"boids.c:rule_average_speed"}
!225 = !{!168, !42, i64 56}
!226 = !{!168, !42, i64 60}
!227 = !{!"boids.c:rule_fight"}
!228 = !{!229, !42, i64 56}
!229 = !{!"BoidRuleFight", !48, i64 0, !42, i64 56, !42, i64 60}
!230 = distinct !{!230, !46}
!231 = !{!80, !42, i64 32}
!232 = !{!233, !40, i64 30}
!233 = !{!"ParticleTarget", !37, i64 0, !37, i64 8, !37, i64 16, !41, i64 24, !40, i64 28, !40, i64 30, !42, i64 32, !42, i64 36}
!234 = distinct !{!234, !46}
!235 = !{!71, !37, i64 16}
!236 = distinct !{!236, !46}
!237 = !{!80, !42, i64 36}
!238 = !{!80, !42, i64 28}
!239 = !{!229, !42, i64 60}
!240 = !{!"boids.c:add_v3_v3v3"}
!241 = !{!"boids.c:sub_v3_v3"}
!242 = !{!"boids.c:normalize_v2_v2"}
!243 = !{!"boids.c:mul_v2_v2fl"}
!244 = !{!"boids.c:zero_v2"}
!245 = !{!"boids.c:mul_v3_v3fl"}
