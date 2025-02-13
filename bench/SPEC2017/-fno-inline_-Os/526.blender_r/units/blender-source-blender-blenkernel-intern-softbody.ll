; ModuleID = 'blender/source/blender/blenkernel/intern/softbody.c'
source_filename = "blender/source/blender/blenkernel/intern/softbody.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.SoftBody = type { i32, i32, ptr, ptr, i8, i8, i16, float, [64 x i8], float, float, float, float, float, float, float, float, float, i16, [64 x i8], i16, float, float, [64 x i8], i32, i32, i32, i16, i16, ptr, i32, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, float, float, ptr, %struct.ListBase, ptr, [3 x float], [3 x [3 x float]], [3 x [3 x float]], i32 }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
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
%struct.SBScratch = type { ptr, i16, i16, ptr, i32, [3 x float], [3 x float], %struct.ReferenceState }
%struct.ReferenceState = type { [3 x float], ptr }
%struct.BodyPoint = type { [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], i32, ptr, float, float, float, float, i16, float, float }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ReferenceVert = type { [3 x float], float }
%struct.PTCacheID = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PointCache = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [64 x i8], [64 x i8], [64 x i8], [1024 x i8], ptr, %struct.ListBase, ptr, ptr }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.BodySpring = type { i32, i32, float, float, float, [3 x float], i32, i16 }
%struct.MEdge = type { i32, i32, i8, i8, i16 }
%struct.Lattice = type { %struct.ID, ptr, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i32, float, float, float, float, float, float, ptr, ptr, ptr, ptr, [64 x i8], ptr }
%struct.Curve = type { %struct.ID, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], i16, i16, i16, i16, float, float, i32, i16, i16, i32, float, float, float, i16, i16, i16, i16, i32, i32, [4 x i8], i16, i8, i8, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.CharInfo, float, float, float, i8, i8, [2 x i8] }
%struct.CharInfo = type { i16, i16, i8, i8, i16 }
%struct.Nurb = type { ptr, ptr, i16, i16, i16, i16, i32, i32, [2 x i16], i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, i16, i16, i32 }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.BPoint = type { [4 x float], float, float, i16, i16, float, float }
%struct.ccd_Mesh = type { i32, i32, ptr, ptr, ptr, i32, ptr, [3 x float], [3 x float] }
%struct.MDeformVert = type { ptr, i32, i32 }
%struct.MDeformWeight = type { i32, float }
%struct.MFace = type { i32, i32, i32, i32, i16, i8, i8 }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.BodyFace = type { i32, i32, i32, i32, [3 x float], i16 }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.PartDeflect = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, ptr, float, i32, ptr }
%struct.EffectedPoint = type { ptr, ptr, ptr, ptr, float, float, float, float, i32, i32, ptr }
%struct.EffectorWeights = type { ptr, [14 x float], float, i16, [3 x i16], i32 }
%struct.CollisionModifierData = type { %struct.ModifierData, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, float, float, ptr }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.ccdf_minmax = type { float, float, float, float, float, float }
%struct.SB_thread_context = type { ptr, ptr, float, float, i32, i32, ptr, i32, float, float, i32, i32 }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct._gh_Entry = type { ptr, ptr, ptr }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [9 x i8] c"softbody\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@SB_localInterruptCallBack = internal unnamed_addr global ptr null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"SB_OPOS\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"SB_RPOS\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"SBScratch\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"sb_new_scratch gh\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"bodyspring\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"bpsprings\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"oops we should not get here -  add_2nd_order_springs\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [10 x i8] c"bodypoint\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"SB_Reference\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"SB_body_Faces\00", align 1
@SoftHeunTol = internal unnamed_addr global float 1.000000e+00, align 4
@.str.12 = private unnamed_addr constant [10 x i8] c"%3.0f%% \0D\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"\0D needed %d steps/frame\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"softbody no valid solver ID!\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.15 = private unnamed_addr constant [24 x i8] c" solver time %f sec %s\0A\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@.str.16 = private unnamed_addr constant [9 x i8] c"ccd_Mesh\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"ccd_Mesh_Faces_mima\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"SBSpringsThread\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"SBThread\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"Aye 998\00", align 1
@str = private unnamed_addr constant [36 x i8] c"_final_mass failed! sb or bp ==NULL\00", align 1
@str.25 = private unnamed_addr constant [36 x i8] c"_final_goal failed! sb or bp ==NULL\00", align 1
@str.27 = private unnamed_addr constant [71 x i8] c"bodypoint <bpi> is not attached to spring  <*bs> --> sb_spring_force()\00", align 1
@str.29 = private unnamed_addr constant [25 x i8] c"Error expected a SB here\00", align 1
@str.32 = private unnamed_addr constant [20 x i8] c"missing cache error\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @sbNew(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 472, ptr noundef nonnull @.str) #23
  %4 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 7
  store float 1.000000e+00, ptr %4, align 4, !tbaa !38
  %5 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 9
  store <4 x float> <float 0x40239999A0000000, float 5.000000e-01, float 0x3FB99999A0000000, float 1.000000e+00>, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 13
  store <4 x float> <float 5.000000e-01, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %6, align 8, !tbaa !44
  %7 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 17
  store float 0x3FE6666660000000, ptr %7, align 8, !tbaa !45
  %8 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 21
  store <2 x float> <float 5.000000e-01, float 5.000000e-01>, ptr %8, align 8, !tbaa !44
  %9 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 46
  store float 5.000000e-01, ptr %9, align 4, !tbaa !46
  %10 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 26
  store i32 10, ptr %10, align 8, !tbaa !47
  %11 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 6
  %12 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 24
  %13 = load <2 x i32>, ptr %11, align 4, !tbaa !48
  store <2 x i32> %13, ptr %12, align 8, !tbaa !48
  %14 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 33
  store <2 x float> <float 0x3FDF5C2900000000, float 5.000000e-01>, ptr %14, align 4, !tbaa !44
  %15 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 35
  store float 1.000000e+00, ptr %15, align 4, !tbaa !49
  %16 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 36
  store i16 1, ptr %16, align 8, !tbaa !50
  %17 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 38
  store i16 10, ptr %17, align 4, !tbaa !51
  %18 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 39
  store i16 300, ptr %18, align 2, !tbaa !52
  %19 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 40
  store i16 3, ptr %19, align 8, !tbaa !53
  tail call fastcc void @sb_new_scratch(ptr noundef %3) #24
  %20 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 45
  store float 1.000000e+00, ptr %20, align 8, !tbaa !54
  %21 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 28
  %22 = load i16, ptr %21, align 2, !tbaa !55
  %23 = or i16 %22, 2
  store i16 %23, ptr %21, align 2, !tbaa !55
  %24 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 48
  %25 = tail call ptr @BKE_ptcache_add(ptr noundef nonnull %24) #23
  %26 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 47
  store ptr %25, ptr %26, align 8, !tbaa !56
  %27 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 49
  %28 = load ptr, ptr %27, align 8, !tbaa !57
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = tail call ptr @BKE_add_effector_weights(ptr noundef null) #23
  store ptr %31, ptr %27, align 8, !tbaa !57
  br label %32

32:                                               ; preds = %30, %1
  %33 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 53
  store i32 -1, ptr %33, align 4, !tbaa !58
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sb_new_scratch(ptr noundef %0) unnamed_addr #0 !PGOFuncName !59 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %5 = tail call ptr %4(i64 noundef 80, ptr noundef nonnull @.str.3) #23
  %6 = getelementptr inbounds %struct.SoftBody, ptr %0, i64 0, i32 44
  store ptr %5, ptr %6, align 8, !tbaa !60
  %7 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.4) #23
  %8 = load ptr, ptr %6, align 8, !tbaa !60
  store ptr %7, ptr %8, align 8, !tbaa !61
  %9 = getelementptr inbounds %struct.SBScratch, ptr %8, i64 0, i32 3
  store ptr null, ptr %9, align 8, !tbaa !64
  %10 = getelementptr inbounds %struct.SBScratch, ptr %8, i64 0, i32 4
  store i32 0, ptr %10, align 8, !tbaa !65
  %11 = getelementptr inbounds %struct.SBScratch, ptr %8, i64 0, i32 6, i64 1
  store <2 x float> <float 0x46293E5940000000, float 0x46293E5940000000>, ptr %11, align 4, !tbaa !44
  %12 = getelementptr inbounds %struct.SBScratch, ptr %8, i64 0, i32 5
  store <4 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000, float 0xC6293E5940000000, float 0x46293E5940000000>, ptr %12, align 4, !tbaa !44
  %13 = getelementptr inbounds %struct.SBScratch, ptr %8, i64 0, i32 7, i32 1
  store ptr null, ptr %13, align 8, !tbaa !66
  br label %14

14:                                               ; preds = %1, %3
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_ptcache_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_add_effector_weights(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sbFree(ptr noundef %0) local_unnamed_addr #0 {
  tail call fastcc void @free_softbody_intern(ptr noundef %0) #24
  %2 = getelementptr inbounds %struct.SoftBody, ptr %0, i64 0, i32 48
  tail call void @BKE_ptcache_free_list(ptr noundef nonnull %2) #23
  %3 = getelementptr inbounds %struct.SoftBody, ptr %0, i64 0, i32 47
  store ptr null, ptr %3, align 8, !tbaa !56
  %4 = getelementptr inbounds %struct.SoftBody, ptr %0, i64 0, i32 49
  %5 = load ptr, ptr %4, align 8, !tbaa !57
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %8(ptr noundef nonnull %5) #23
  br label %9

9:                                                ; preds = %7, %1
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %10(ptr noundef nonnull %0) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_softbody_intern(ptr noundef %0) unnamed_addr #0 !PGOFuncName !67 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %34, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.SoftBody, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !68
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %3
  %8 = load i32, ptr %0, align 8, !tbaa !69
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %7, %18
  %11 = phi ptr [ %20, %18 ], [ %5, %7 ]
  %12 = phi i32 [ %19, %18 ], [ %8, %7 ]
  %13 = getelementptr inbounds %struct.BodyPoint, ptr %11, i64 0, i32 14
  %14 = load ptr, ptr %13, align 8, !tbaa !70
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %10
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %17(ptr noundef nonnull %14) #23
  br label %18

18:                                               ; preds = %10, %16
  %19 = add nsw i32 %12, -1
  %20 = getelementptr inbounds %struct.BodyPoint, ptr %11, i64 1
  %21 = icmp sgt i32 %12, 1
  br i1 %21, label %10, label %22, !llvm.loop !72

22:                                               ; preds = %18
  %23 = load ptr, ptr %4, align 8, !tbaa !68
  br label %24

24:                                               ; preds = %22, %7
  %25 = phi ptr [ %23, %22 ], [ %5, %7 ]
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %26(ptr noundef %25) #23
  br label %27

27:                                               ; preds = %24, %3
  %28 = getelementptr inbounds %struct.SoftBody, ptr %0, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !74
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %32(ptr noundef nonnull %29) #23
  br label %33

33:                                               ; preds = %31, %27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  tail call fastcc void @free_scratch(ptr noundef nonnull %0) #24
  tail call fastcc void @free_softbody_baked(ptr noundef nonnull %0) #24
  br label %34

34:                                               ; preds = %33, %1
  ret void
}

; Function Attrs: optsize
declare void @BKE_ptcache_free_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sbFreeSimulation(ptr noundef %0) local_unnamed_addr #0 {
  tail call fastcc void @free_softbody_intern(ptr noundef %0) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sbObjectToSoftbody(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 111
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  tail call fastcc void @free_softbody_intern(ptr noundef %3) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @sbSetInterruptCallBack(ptr noundef %0) local_unnamed_addr #3 {
  store ptr %0, ptr @SB_localInterruptCallBack, align 8, !tbaa !34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SB_estimate_transform(ptr noundef readonly %0, ptr noundef writeonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #25
  %7 = icmp eq ptr %0, null
  br i1 %7, label %66, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 111
  %10 = load ptr, ptr %9, align 8, !tbaa !75
  %11 = icmp eq ptr %10, null
  br i1 %11, label %66, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.SoftBody, ptr %10, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !68
  %15 = icmp eq ptr %14, null
  br i1 %15, label %66, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %18 = load i32, ptr %10, align 8, !tbaa !69
  %19 = mul nsw i32 %18, 3
  %20 = sext i32 %19 to i64
  %21 = shl nsw i64 %20, 2
  %22 = tail call ptr %17(i64 noundef %21, ptr noundef nonnull @.str.1) #23
  %23 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %24 = load i32, ptr %10, align 8, !tbaa !69
  %25 = mul nsw i32 %24, 3
  %26 = sext i32 %25 to i64
  %27 = shl nsw i64 %26, 2
  %28 = tail call ptr %23(i64 noundef %27, ptr noundef nonnull @.str.2) #23
  %29 = load i32, ptr %10, align 8, !tbaa !69
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %16
  %32 = getelementptr inbounds %struct.SoftBody, ptr %10, i64 0, i32 44
  %33 = load ptr, ptr %32, align 8, !tbaa !60
  %34 = getelementptr inbounds %struct.SBScratch, ptr %33, i64 0, i32 7, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !66
  %36 = load ptr, ptr %13, align 8, !tbaa !68
  br label %37

37:                                               ; preds = %31, %37
  %38 = phi i64 [ 0, %31 ], [ %44, %37 ]
  %39 = phi ptr [ %36, %31 ], [ %45, %37 ]
  %40 = phi ptr [ %35, %31 ], [ %46, %37 ]
  %41 = getelementptr inbounds [3 x float], ptr %28, i64 %38
  tail call fastcc void @copy_v3_v3(ptr noundef %41, ptr noundef %40) #24
  %42 = getelementptr inbounds [3 x float], ptr %22, i64 %38
  %43 = getelementptr inbounds %struct.BodyPoint, ptr %39, i64 0, i32 3
  tail call fastcc void @copy_v3_v3(ptr noundef %42, ptr noundef nonnull %43) #24
  %44 = add nuw nsw i64 %38, 1
  %45 = getelementptr inbounds %struct.BodyPoint, ptr %39, i64 1
  %46 = getelementptr inbounds %struct.ReferenceVert, ptr %40, i64 1
  %47 = load i32, ptr %10, align 8, !tbaa !69
  %48 = sext i32 %47 to i64
  %49 = icmp slt i64 %44, %48
  br i1 %49, label %37, label %50, !llvm.loop !80

50:                                               ; preds = %37, %16
  %51 = phi i32 [ %29, %16 ], [ %47, %37 ]
  call void @vcloud_estimate_transform(i32 noundef %51, ptr noundef %22, ptr noundef null, ptr noundef %28, ptr noundef null, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %2, ptr noundef %3) #23
  %52 = icmp eq ptr %1, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  call fastcc void @copy_v3_v3(ptr noundef nonnull %1, ptr noundef nonnull %5) #24
  br label %54

54:                                               ; preds = %53, %50
  %55 = getelementptr inbounds %struct.SoftBody, ptr %10, i64 0, i32 50
  call fastcc void @copy_v3_v3(ptr noundef nonnull %55, ptr noundef nonnull %5) #24
  %56 = icmp eq ptr %3, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.SoftBody, ptr %10, i64 0, i32 52
  call void @copy_m3_m3(ptr noundef nonnull %58, ptr noundef nonnull %3) #23
  br label %59

59:                                               ; preds = %57, %54
  %60 = icmp eq ptr %2, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.SoftBody, ptr %10, i64 0, i32 51
  call void @copy_m3_m3(ptr noundef nonnull %62, ptr noundef nonnull %2) #23
  br label %63

63:                                               ; preds = %61, %59
  %64 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %64(ptr noundef %22) #23
  %65 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %65(ptr noundef %28) #23
  br label %66

66:                                               ; preds = %12, %4, %8, %63
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !81 {
  %3 = load float, ptr %1, align 4, !tbaa !44
  store float %3, ptr %0, align 4, !tbaa !44
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !44
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !44
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !44
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !44
  ret void
}

; Function Attrs: optsize
declare void @vcloud_estimate_transform(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @copy_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sbObjectStep(ptr noundef %0, ptr noundef %1, float noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.PTCacheID, align 8
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 111
  %11 = load ptr, ptr %10, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #25
  %12 = getelementptr inbounds %struct.SoftBody, ptr %11, i64 0, i32 47
  %13 = load ptr, ptr %12, align 8, !tbaa !56
  %14 = fptosi float %2 to i32
  %15 = getelementptr inbounds %struct.PointCache, ptr %13, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !82
  %17 = sub nsw i32 %14, %16
  call void @BKE_ptcache_id_from_softbody(ptr noundef nonnull %6, ptr noundef %1, ptr noundef %11) #23
  %18 = sitofp i32 %14 to float
  call void @BKE_ptcache_id_time(ptr noundef nonnull %6, ptr noundef %0, float noundef %18, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %7) #23
  %19 = getelementptr inbounds %struct.SoftBody, ptr %11, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !68
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %5
  %23 = load i32, ptr %11, align 8, !tbaa !69
  %24 = icmp eq i32 %23, %4
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  call void @BKE_ptcache_invalidate(ptr noundef nonnull %13) #23
  br label %129

26:                                               ; preds = %5
  %27 = load i32, ptr %8, align 4, !tbaa !48
  %28 = icmp sgt i32 %27, %14
  br i1 %28, label %32, label %33

29:                                               ; preds = %22
  %30 = load i32, ptr %8, align 4, !tbaa !48
  %31 = icmp sgt i32 %30, %14
  br i1 %31, label %32, label %36

32:                                               ; preds = %29, %26
  call void @BKE_ptcache_invalidate(ptr noundef nonnull %13) #23
  br label %129

33:                                               ; preds = %26
  %34 = load i32, ptr %9, align 4, !tbaa !48
  %35 = call i32 @llvm.smin.i32(i32 %34, i32 %14)
  br label %51

36:                                               ; preds = %29
  %37 = load i32, ptr %9, align 4, !tbaa !48
  %38 = call i32 @llvm.smin.i32(i32 %37, i32 %14)
  %39 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 104
  %40 = load i16, ptr %39, align 2, !tbaa !84
  %41 = and i16 %40, 4
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %61, label %43

43:                                               ; preds = %36
  %44 = load ptr, ptr %10, align 8, !tbaa !75
  %45 = getelementptr inbounds %struct.SoftBody, ptr %44, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !74
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %61

48:                                               ; preds = %43
  %49 = call fastcc i32 @object_has_edges(ptr noundef nonnull %1) #24
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %33, %48
  %52 = phi i32 [ %38, %48 ], [ %35, %33 ]
  %53 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %54 = load i16, ptr %53, align 8, !tbaa !85
  switch i16 %54, label %58 [
    i16 1, label %55
    i16 22, label %56
    i16 2, label %57
    i16 3, label %57
  ]

55:                                               ; preds = %51
  call fastcc void @mesh_to_softbody(ptr noundef %0, ptr noundef nonnull %1) #24
  br label %59

56:                                               ; preds = %51
  call fastcc void @lattice_to_softbody(ptr noundef %0, ptr noundef nonnull %1) #24
  br label %59

57:                                               ; preds = %51, %51
  call fastcc void @curve_surf_to_softbody(ptr noundef %0, ptr noundef nonnull %1) #24
  br label %59

58:                                               ; preds = %51
  call fastcc void @renew_softbody(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %4, i32 noundef 0) #24
  br label %59

59:                                               ; preds = %58, %57, %56, %55
  call fastcc void @softbody_update_positions(ptr noundef nonnull %1, ptr noundef nonnull %11, ptr noundef %3, i32 noundef %4) #24
  call fastcc void @softbody_reset(ptr noundef nonnull %1, ptr noundef nonnull %11, ptr noundef %3, i32 noundef %4) #24
  %60 = load i32, ptr %11, align 8, !tbaa !69
  br label %61

61:                                               ; preds = %59, %48, %43, %36
  %62 = phi i32 [ %60, %59 ], [ %4, %48 ], [ %4, %43 ], [ %4, %36 ]
  %63 = phi i32 [ %52, %59 ], [ %38, %48 ], [ %38, %43 ], [ %38, %36 ]
  %64 = icmp eq i32 %62, 0
  br i1 %64, label %129, label %65

65:                                               ; preds = %61
  %66 = load i32, ptr %8, align 4, !tbaa !48
  %67 = icmp eq i32 %63, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = call i32 @BKE_ptcache_id_reset(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 2) #23
  call fastcc void @softbody_update_positions(ptr noundef nonnull %1, ptr noundef nonnull %11, ptr noundef %3, i32 noundef %4) #24
  call void @BKE_ptcache_validate(ptr noundef nonnull %13, i32 noundef %63) #23
  %70 = getelementptr inbounds %struct.PointCache, ptr %13, i64 0, i32 2
  %71 = load i32, ptr %70, align 8, !tbaa !86
  %72 = and i32 %71, -259
  store i32 %72, ptr %70, align 8, !tbaa !86
  %73 = getelementptr inbounds %struct.SoftBody, ptr %11, i64 0, i32 53
  store i32 %63, ptr %73, align 4, !tbaa !58
  br label %129

74:                                               ; preds = %65
  %75 = sitofp i32 %63 to float
  %76 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 8
  %77 = load float, ptr %76, align 4, !tbaa !87
  %78 = fadd float %77, %75
  %79 = call i32 @BKE_ptcache_read(ptr noundef nonnull %6, float noundef %78) #23
  %80 = add i32 %79, -1
  %81 = icmp ult i32 %80, 2
  br i1 %81, label %82, label %96

82:                                               ; preds = %74
  %83 = icmp eq i32 %79, 2
  %84 = getelementptr inbounds %struct.SoftBody, ptr %11, i64 0, i32 27
  %85 = load i16, ptr %84, align 4, !tbaa !106
  %86 = sext i16 %85 to i32
  call fastcc void @softbody_to_object(ptr noundef nonnull %1, ptr noundef %3, i32 noundef %4, i32 noundef %86) #24
  call void @BKE_ptcache_validate(ptr noundef nonnull %13, i32 noundef %63) #23
  br i1 %83, label %87, label %94

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.PointCache, ptr %13, i64 0, i32 2
  %89 = load i32, ptr %88, align 8, !tbaa !86
  %90 = and i32 %89, 258
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %87
  %93 = call i32 @BKE_ptcache_write(ptr noundef nonnull %6, i32 noundef %63) #23
  br label %94

94:                                               ; preds = %92, %87, %82
  %95 = getelementptr inbounds %struct.SoftBody, ptr %11, i64 0, i32 53
  store i32 %63, ptr %95, align 4, !tbaa !58
  br label %129

96:                                               ; preds = %74
  %97 = icmp eq i32 %79, 3
  br i1 %97, label %104, label %98

98:                                               ; preds = %96
  %99 = getelementptr inbounds %struct.PointCache, ptr %13, i64 0, i32 2
  %100 = load i32, ptr %99, align 8, !tbaa !86
  %101 = and i32 %100, 1
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %98
  call void @BKE_ptcache_invalidate(ptr noundef nonnull %13) #23
  br label %129

104:                                              ; preds = %96, %98
  %105 = getelementptr inbounds %struct.SoftBody, ptr %11, i64 0, i32 53
  %106 = load i32, ptr %105, align 4, !tbaa !58
  %107 = add nsw i32 %106, 1
  %108 = icmp eq i32 %63, %107
  br i1 %108, label %109, label %129

109:                                              ; preds = %104
  %110 = load i32, ptr %15, align 8, !tbaa !82
  %111 = load i32, ptr %8, align 4, !tbaa !48
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %124

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.PointCache, ptr %13, i64 0, i32 2
  %115 = load i32, ptr %114, align 8, !tbaa !86
  %116 = and i32 %115, 2
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.PointCache, ptr %13, i64 0, i32 8
  %120 = load i32, ptr %119, align 8, !tbaa !107
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %118, %113
  %123 = call i32 @BKE_ptcache_write(ptr noundef nonnull %6, i32 noundef %110) #23
  br label %124

124:                                              ; preds = %122, %118, %109
  call fastcc void @softbody_update_positions(ptr noundef nonnull %1, ptr noundef nonnull %11, ptr noundef %3, i32 noundef %4) #24
  %125 = sitofp i32 %17 to float
  %126 = load float, ptr %7, align 4, !tbaa !44
  %127 = fmul float %126, %125
  call fastcc void @softbody_step(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %11, float noundef %127) #24
  call fastcc void @softbody_to_object(ptr noundef nonnull %1, ptr noundef %3, i32 noundef %4, i32 noundef 0) #24
  call void @BKE_ptcache_validate(ptr noundef nonnull %13, i32 noundef %63) #23
  %128 = call i32 @BKE_ptcache_write(ptr noundef nonnull %6, i32 noundef %63) #23
  store i32 %63, ptr %105, align 4, !tbaa !58
  br label %129

129:                                              ; preds = %104, %61, %124, %103, %94, %68, %32, %25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %6) #25
  ret void
}

; Function Attrs: optsize
declare void @BKE_ptcache_id_from_softbody(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_ptcache_id_time(ptr noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_ptcache_invalidate(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @object_has_edges(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !108 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 8, !tbaa !85
  switch i16 %3, label %9 [
    i16 1, label %4
    i16 22, label %10
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !109
  %7 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 27
  %8 = load i32, ptr %7, align 4, !tbaa !110
  br label %10

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %1, %9, %4
  %11 = phi i32 [ %8, %4 ], [ 0, %9 ], [ 1, %1 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mesh_to_softbody(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !113 {
  %3 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !109
  %5 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 16
  %6 = load ptr, ptr %5, align 8, !tbaa !114
  tail call void @BKE_mesh_tessface_ensure(ptr noundef %4) #23
  %7 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 104
  %8 = load i16, ptr %7, align 2, !tbaa !84
  %9 = and i16 %8, 4
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 27
  %13 = load i32, ptr %12, align 4, !tbaa !110
  br label %14

14:                                               ; preds = %2, %11
  %15 = phi i32 [ %13, %11 ], [ 0, %2 ]
  %16 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 26
  %17 = load i32, ptr %16, align 8, !tbaa !115
  tail call fastcc void @renew_softbody(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %17, i32 noundef %15) #24
  %18 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 111
  %19 = load ptr, ptr %18, align 8, !tbaa !75
  %20 = load i32, ptr %16, align 8, !tbaa !115
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %66

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.SoftBody, ptr %19, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !68
  %25 = getelementptr inbounds %struct.SoftBody, ptr %19, i64 0, i32 18
  %26 = getelementptr inbounds %struct.SoftBody, ptr %19, i64 0, i32 17
  %27 = getelementptr inbounds %struct.SoftBody, ptr %19, i64 0, i32 8
  %28 = getelementptr inbounds %struct.SoftBody, ptr %19, i64 0, i32 23
  br label %29

29:                                               ; preds = %22, %61
  %30 = phi ptr [ %24, %22 ], [ %63, %61 ]
  %31 = phi i32 [ 0, %22 ], [ %62, %61 ]
  %32 = load i16, ptr %7, align 2, !tbaa !84
  %33 = and i16 %32, 2
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %29
  %36 = load i16, ptr %25, align 4, !tbaa !116
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = sext i16 %36 to i32
  %40 = add nsw i32 %39, -1
  %41 = getelementptr inbounds %struct.BodyPoint, ptr %30, i64 0, i32 6
  tail call fastcc void @get_scalar_from_vertexgroup(ptr noundef nonnull %1, i32 noundef %31, i32 noundef %40, ptr noundef nonnull %41) #24
  br label %45

42:                                               ; preds = %35
  %43 = load float, ptr %26, align 8, !tbaa !45
  %44 = getelementptr inbounds %struct.BodyPoint, ptr %30, i64 0, i32 6
  store float %43, ptr %44, align 8, !tbaa !117
  br label %45

45:                                               ; preds = %29, %42, %38
  %46 = load i8, ptr %27, align 8, !tbaa !118
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = tail call i32 @defgroup_name_index(ptr noundef nonnull %1, ptr noundef nonnull %27) #23
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.BodyPoint, ptr %30, i64 0, i32 20
  tail call fastcc void @get_scalar_from_vertexgroup(ptr noundef nonnull %1, i32 noundef %31, i32 noundef %49, ptr noundef nonnull %52) #24
  br label %53

53:                                               ; preds = %48, %51, %45
  %54 = getelementptr inbounds %struct.BodyPoint, ptr %30, i64 0, i32 21
  store float 1.000000e+00, ptr %54, align 8, !tbaa !119
  %55 = load i8, ptr %28, align 8, !tbaa !118
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = tail call i32 @defgroup_name_index(ptr noundef nonnull %1, ptr noundef nonnull %28) #23
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  tail call fastcc void @get_scalar_from_vertexgroup(ptr noundef nonnull %1, i32 noundef %31, i32 noundef %58, ptr noundef nonnull %54) #24
  br label %61

61:                                               ; preds = %57, %60, %53
  %62 = add nuw nsw i32 %31, 1
  %63 = getelementptr inbounds %struct.BodyPoint, ptr %30, i64 1
  %64 = load i32, ptr %16, align 8, !tbaa !115
  %65 = icmp slt i32 %62, %64
  br i1 %65, label %29, label %66, !llvm.loop !120

66:                                               ; preds = %61, %14
  %67 = load i16, ptr %7, align 2, !tbaa !84
  %68 = and i16 %67, 4
  %69 = icmp ne i16 %68, 0
  %70 = icmp ne ptr %6, null
  %71 = select i1 %69, i1 %70, i1 false
  br i1 %71, label %72, label %103

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 27
  %74 = load i32, ptr %73, align 4, !tbaa !110
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.SoftBody, ptr %19, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !74
  br label %79

79:                                               ; preds = %76, %79
  %80 = phi ptr [ %86, %79 ], [ %6, %76 ]
  %81 = phi i32 [ %85, %79 ], [ %74, %76 ]
  %82 = phi ptr [ %87, %79 ], [ %78, %76 ]
  %83 = load <2 x i32>, ptr %80, align 4, !tbaa !48
  store <2 x i32> %83, ptr %82, align 4, !tbaa !48
  %84 = getelementptr inbounds %struct.BodySpring, ptr %82, i64 0, i32 6
  store i32 1, ptr %84, align 4, !tbaa !121
  %85 = add nsw i32 %81, -1
  %86 = getelementptr inbounds %struct.MEdge, ptr %80, i64 1
  %87 = getelementptr inbounds %struct.BodySpring, ptr %82, i64 1
  %88 = icmp ugt i32 %81, 1
  br i1 %88, label %79, label %89, !llvm.loop !123

89:                                               ; preds = %79, %72
  %90 = and i16 %67, 8
  %91 = icmp eq i16 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %89
  tail call fastcc void @add_mesh_quad_diag_springs(ptr noundef %1) #24
  br label %93

93:                                               ; preds = %92, %89
  tail call fastcc void @build_bps_springlist(ptr noundef %1) #24
  %94 = getelementptr inbounds %struct.SoftBody, ptr %19, i64 0, i32 32
  %95 = load float, ptr %94, align 8, !tbaa !124
  %96 = fcmp ogt float %95, 0x3E7AD7F2A0000000
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  tail call fastcc void @add_2nd_order_springs(ptr noundef %1, float noundef %95) #24
  tail call fastcc void @build_bps_springlist(ptr noundef %1) #24
  br label %98

98:                                               ; preds = %97, %93
  tail call fastcc void @springs_from_mesh(ptr noundef %1) #24
  %99 = load i16, ptr %7, align 2, !tbaa !84
  %100 = and i16 %99, 512
  %101 = icmp eq i16 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %98
  tail call fastcc void @calculate_collision_balls(ptr noundef nonnull %1) #24
  br label %103

103:                                              ; preds = %102, %98, %66
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lattice_to_softbody(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !125 {
  %3 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !109
  %5 = getelementptr inbounds %struct.Lattice, ptr %4, i64 0, i32 2
  %6 = load i16, ptr %5, align 8, !tbaa !126
  %7 = sext i16 %6 to i32
  %8 = getelementptr inbounds %struct.Lattice, ptr %4, i64 0, i32 3
  %9 = load i16, ptr %8, align 2, !tbaa !128
  %10 = sext i16 %9 to i32
  %11 = mul nsw i32 %10, %7
  %12 = getelementptr inbounds %struct.Lattice, ptr %4, i64 0, i32 4
  %13 = load i16, ptr %12, align 4, !tbaa !129
  %14 = sext i16 %13 to i32
  %15 = mul i32 %11, %14
  %16 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 104
  %17 = load i16, ptr %16, align 2, !tbaa !84
  %18 = zext i16 %17 to i32
  %19 = and i32 %18, 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %38, label %21

21:                                               ; preds = %2
  %22 = add nsw i32 %7, -1
  %23 = mul nsw i32 %22, %10
  %24 = add nsw i32 %10, -1
  %25 = mul nsw i32 %24, %7
  %26 = add nsw i32 %25, %23
  %27 = mul nsw i32 %26, %14
  %28 = add nsw i32 %14, -1
  %29 = mul nsw i32 %28, %11
  %30 = add nsw i32 %27, %29
  %31 = and i32 %18, 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %21
  %34 = shl nsw i32 %22, 2
  %35 = mul nsw i32 %34, %24
  %36 = mul nsw i32 %35, %28
  %37 = add nsw i32 %30, %36
  br label %38

38:                                               ; preds = %21, %33, %2
  %39 = phi i32 [ %37, %33 ], [ %30, %21 ], [ 0, %2 ]
  tail call fastcc void @renew_softbody(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %15, i32 noundef %39) #24
  %40 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 111
  %41 = icmp sgt i32 %15, 0
  br i1 %41, label %42, label %68

42:                                               ; preds = %38
  %43 = load ptr, ptr %40, align 8, !tbaa !75
  %44 = getelementptr inbounds %struct.SoftBody, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !68
  %46 = getelementptr inbounds %struct.SoftBody, ptr %43, i64 0, i32 18
  %47 = getelementptr inbounds %struct.SoftBody, ptr %43, i64 0, i32 17
  br label %48

48:                                               ; preds = %42, %64
  %49 = phi ptr [ %45, %42 ], [ %66, %64 ]
  %50 = phi i32 [ 0, %42 ], [ %65, %64 ]
  %51 = load i16, ptr %16, align 2, !tbaa !84
  %52 = and i16 %51, 2
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %48
  %55 = load i16, ptr %46, align 4, !tbaa !116
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %54
  %58 = add i16 %55, -1
  %59 = sext i16 %58 to i32
  %60 = getelementptr inbounds %struct.BodyPoint, ptr %49, i64 0, i32 6
  tail call fastcc void @get_scalar_from_vertexgroup(ptr noundef nonnull %1, i32 noundef %50, i32 noundef %59, ptr noundef nonnull %60) #24
  br label %64

61:                                               ; preds = %54
  %62 = load float, ptr %47, align 8, !tbaa !45
  %63 = getelementptr inbounds %struct.BodyPoint, ptr %49, i64 0, i32 6
  store float %62, ptr %63, align 8, !tbaa !117
  br label %64

64:                                               ; preds = %48, %57, %61
  %65 = add nuw nsw i32 %50, 1
  %66 = getelementptr inbounds %struct.BodyPoint, ptr %49, i64 1
  %67 = icmp eq i32 %65, %15
  br i1 %67, label %68, label %48, !llvm.loop !130

68:                                               ; preds = %64, %38
  %69 = load i16, ptr %16, align 2, !tbaa !84
  %70 = zext i16 %69 to i32
  %71 = and i32 %70, 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  %74 = load ptr, ptr %40, align 8, !tbaa !75
  %75 = getelementptr inbounds %struct.SoftBody, ptr %74, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !74
  %77 = and i32 %70, 8
  tail call fastcc void @makelatticesprings(ptr noundef %4, ptr noundef %76, i32 noundef %77, ptr noundef nonnull %1) #24
  tail call fastcc void @build_bps_springlist(ptr noundef nonnull %1) #24
  br label %78

78:                                               ; preds = %73, %68
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @curve_surf_to_softbody(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !131 {
  %3 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !109
  %5 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 3
  %6 = tail call i32 @BKE_nurbList_verts_count(ptr noundef nonnull %5) #23
  %7 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 104
  %8 = load i16, ptr %7, align 2, !tbaa !84
  %9 = and i16 %8, 4
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %13 = load i16, ptr %12, align 8, !tbaa !85
  %14 = icmp eq i16 %13, 2
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = tail call i32 @BLI_countlist(ptr noundef nonnull %5) #23
  %17 = sub nsw i32 %6, %16
  br label %18

18:                                               ; preds = %11, %15, %2
  %19 = phi i32 [ %17, %15 ], [ 0, %11 ], [ 0, %2 ]
  tail call fastcc void @renew_softbody(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %6, i32 noundef %19) #24
  %20 = load i16, ptr %7, align 2, !tbaa !84
  %21 = and i16 %20, 2
  %22 = icmp eq i16 %21, 0
  %23 = load ptr, ptr %5, align 8, !tbaa !34
  %24 = icmp eq ptr %23, null
  br i1 %24, label %151, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 111
  %27 = load ptr, ptr %26, align 8, !tbaa !75
  %28 = getelementptr inbounds %struct.SoftBody, ptr %27, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !74
  %30 = getelementptr inbounds %struct.SoftBody, ptr %27, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !68
  %32 = icmp eq i32 %19, 0
  %33 = icmp ne i32 %19, 0
  br label %34

34:                                               ; preds = %25, %145
  %35 = phi ptr [ %23, %25 ], [ %149, %145 ]
  %36 = phi ptr [ %31, %25 ], [ %148, %145 ]
  %37 = phi i32 [ 0, %25 ], [ %147, %145 ]
  %38 = phi ptr [ %29, %25 ], [ %146, %145 ]
  %39 = getelementptr inbounds %struct.Nurb, ptr %35, i64 0, i32 18
  %40 = load ptr, ptr %39, align 8, !tbaa !132
  %41 = icmp eq ptr %40, null
  %42 = getelementptr inbounds %struct.Nurb, ptr %35, i64 0, i32 6
  br i1 %41, label %101, label %43

43:                                               ; preds = %34
  %44 = load i32, ptr %42, align 8, !tbaa !134
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %145

46:                                               ; preds = %43, %93
  %47 = phi i32 [ %94, %93 ], [ %44, %43 ]
  %48 = phi ptr [ %98, %93 ], [ %36, %43 ]
  %49 = phi i32 [ %99, %93 ], [ %37, %43 ]
  %50 = phi i32 [ %96, %93 ], [ 0, %43 ]
  %51 = phi ptr [ %97, %93 ], [ %40, %43 ]
  %52 = phi ptr [ %95, %93 ], [ %38, %43 ]
  br i1 %22, label %65, label %53

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.BezTriple, ptr %51, i64 0, i32 2
  %55 = load float, ptr %54, align 4, !tbaa !135
  %56 = getelementptr inbounds %struct.BodyPoint, ptr %48, i64 0, i32 6
  store float %55, ptr %56, align 8, !tbaa !117
  %57 = getelementptr inbounds %struct.BodyPoint, ptr %48, i64 1, i32 6
  store float %55, ptr %57, align 8, !tbaa !117
  %58 = getelementptr inbounds %struct.BodyPoint, ptr %48, i64 2, i32 6
  store float %55, ptr %58, align 8, !tbaa !117
  %59 = getelementptr inbounds %struct.BodyPoint, ptr %48, i64 1, i32 19
  %60 = load i16, ptr %59, align 8, !tbaa !137
  %61 = or i16 %60, 2
  store i16 %61, ptr %59, align 8, !tbaa !137
  %62 = getelementptr inbounds %struct.BodyPoint, ptr %48, i64 2, i32 19
  %63 = load i16, ptr %62, align 8, !tbaa !137
  %64 = or i16 %63, 2
  store i16 %64, ptr %62, align 8, !tbaa !137
  br label %65

65:                                               ; preds = %53, %46
  br i1 %32, label %93, label %66

66:                                               ; preds = %65
  %67 = icmp eq i32 %50, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %66
  %69 = add nsw i32 %49, -3
  store i32 %69, ptr %52, align 4, !tbaa !138
  %70 = getelementptr inbounds %struct.BodySpring, ptr %52, i64 0, i32 1
  store i32 %49, ptr %70, align 4, !tbaa !139
  %71 = getelementptr inbounds %struct.BodySpring, ptr %52, i64 0, i32 6
  store i32 4, ptr %71, align 4, !tbaa !121
  %72 = getelementptr inbounds %struct.BezTriple, ptr %51, i64 -1
  %73 = tail call fastcc float @globallen(ptr noundef nonnull %72, ptr noundef nonnull %51, ptr noundef %1) #24
  %74 = getelementptr inbounds %struct.BodySpring, ptr %52, i64 0, i32 2
  store float %73, ptr %74, align 4, !tbaa !140
  %75 = getelementptr inbounds %struct.BodySpring, ptr %52, i64 1
  br label %76

76:                                               ; preds = %68, %66
  %77 = phi ptr [ %75, %68 ], [ %52, %66 ]
  store i32 %49, ptr %77, align 4, !tbaa !138
  %78 = add nsw i32 %49, 1
  %79 = getelementptr inbounds %struct.BodySpring, ptr %77, i64 0, i32 1
  store i32 %78, ptr %79, align 4, !tbaa !139
  %80 = getelementptr inbounds %struct.BodySpring, ptr %77, i64 0, i32 6
  store i32 4, ptr %80, align 4, !tbaa !121
  %81 = getelementptr inbounds [3 x [3 x float]], ptr %51, i64 0, i64 1
  %82 = tail call fastcc float @globallen(ptr noundef nonnull %51, ptr noundef nonnull %81, ptr noundef %1) #24
  %83 = getelementptr inbounds %struct.BodySpring, ptr %77, i64 0, i32 2
  store float %82, ptr %83, align 4, !tbaa !140
  %84 = getelementptr inbounds %struct.BodySpring, ptr %77, i64 1
  store i32 %78, ptr %84, align 4, !tbaa !138
  %85 = add nsw i32 %49, 2
  %86 = getelementptr inbounds %struct.BodySpring, ptr %77, i64 1, i32 1
  store i32 %85, ptr %86, align 4, !tbaa !139
  %87 = getelementptr inbounds %struct.BodySpring, ptr %77, i64 1, i32 6
  store i32 4, ptr %87, align 4, !tbaa !121
  %88 = getelementptr inbounds [3 x [3 x float]], ptr %51, i64 0, i64 2
  %89 = tail call fastcc float @globallen(ptr noundef nonnull %81, ptr noundef nonnull %88, ptr noundef %1) #24
  %90 = getelementptr inbounds %struct.BodySpring, ptr %77, i64 1, i32 2
  store float %89, ptr %90, align 4, !tbaa !140
  %91 = getelementptr inbounds %struct.BodySpring, ptr %77, i64 2
  %92 = load i32, ptr %42, align 8, !tbaa !134
  br label %93

93:                                               ; preds = %65, %76
  %94 = phi i32 [ %92, %76 ], [ %47, %65 ]
  %95 = phi ptr [ %91, %76 ], [ %52, %65 ]
  %96 = add nuw nsw i32 %50, 1
  %97 = getelementptr inbounds %struct.BezTriple, ptr %51, i64 1
  %98 = getelementptr inbounds %struct.BodyPoint, ptr %48, i64 3
  %99 = add nsw i32 %49, 3
  %100 = icmp slt i32 %96, %94
  br i1 %100, label %46, label %145, !llvm.loop !141

101:                                              ; preds = %34
  %102 = getelementptr inbounds %struct.Nurb, ptr %35, i64 0, i32 7
  %103 = load i32, ptr %42, align 8, !tbaa !134
  %104 = load i32, ptr %102, align 4, !tbaa !142
  %105 = mul nsw i32 %104, %103
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %145

107:                                              ; preds = %101
  %108 = getelementptr inbounds %struct.Nurb, ptr %35, i64 0, i32 17
  %109 = load ptr, ptr %108, align 8, !tbaa !143
  br label %110

110:                                              ; preds = %107, %135
  %111 = phi i32 [ %136, %135 ], [ %104, %107 ]
  %112 = phi i32 [ %137, %135 ], [ %103, %107 ]
  %113 = phi ptr [ %141, %135 ], [ %36, %107 ]
  %114 = phi i32 [ %142, %135 ], [ %37, %107 ]
  %115 = phi i32 [ %139, %135 ], [ 0, %107 ]
  %116 = phi ptr [ %140, %135 ], [ %109, %107 ]
  %117 = phi ptr [ %138, %135 ], [ %38, %107 ]
  br i1 %22, label %122, label %118

118:                                              ; preds = %110
  %119 = getelementptr inbounds %struct.BPoint, ptr %116, i64 0, i32 2
  %120 = load float, ptr %119, align 4, !tbaa !144
  %121 = getelementptr inbounds %struct.BodyPoint, ptr %113, i64 0, i32 6
  store float %120, ptr %121, align 8, !tbaa !117
  br label %122

122:                                              ; preds = %118, %110
  %123 = icmp ne i32 %115, 0
  %124 = and i1 %33, %123
  br i1 %124, label %125, label %135

125:                                              ; preds = %122
  %126 = add nsw i32 %114, -1
  store i32 %126, ptr %117, align 4, !tbaa !138
  %127 = getelementptr inbounds %struct.BodySpring, ptr %117, i64 0, i32 1
  store i32 %114, ptr %127, align 4, !tbaa !139
  %128 = getelementptr inbounds %struct.BodySpring, ptr %117, i64 0, i32 6
  store i32 1, ptr %128, align 4, !tbaa !121
  %129 = getelementptr inbounds %struct.BPoint, ptr %116, i64 -1
  %130 = tail call fastcc float @globallen(ptr noundef nonnull %129, ptr noundef %116, ptr noundef %1) #24
  %131 = getelementptr inbounds %struct.BodySpring, ptr %117, i64 0, i32 2
  store float %130, ptr %131, align 4, !tbaa !140
  %132 = getelementptr inbounds %struct.BodySpring, ptr %117, i64 1
  %133 = load i32, ptr %42, align 8, !tbaa !134
  %134 = load i32, ptr %102, align 4, !tbaa !142
  br label %135

135:                                              ; preds = %122, %125
  %136 = phi i32 [ %134, %125 ], [ %111, %122 ]
  %137 = phi i32 [ %133, %125 ], [ %112, %122 ]
  %138 = phi ptr [ %132, %125 ], [ %117, %122 ]
  %139 = add nuw nsw i32 %115, 1
  %140 = getelementptr inbounds %struct.BPoint, ptr %116, i64 1
  %141 = getelementptr inbounds %struct.BodyPoint, ptr %113, i64 1
  %142 = add nsw i32 %114, 1
  %143 = mul nsw i32 %136, %137
  %144 = icmp slt i32 %139, %143
  br i1 %144, label %110, label %145, !llvm.loop !146

145:                                              ; preds = %93, %135, %43, %101
  %146 = phi ptr [ %38, %101 ], [ %38, %43 ], [ %138, %135 ], [ %95, %93 ]
  %147 = phi i32 [ %37, %101 ], [ %37, %43 ], [ %142, %135 ], [ %99, %93 ]
  %148 = phi ptr [ %36, %101 ], [ %36, %43 ], [ %141, %135 ], [ %98, %93 ]
  %149 = load ptr, ptr %35, align 8, !tbaa !34
  %150 = icmp eq ptr %149, null
  br i1 %150, label %151, label %34, !llvm.loop !147

151:                                              ; preds = %145, %18
  %152 = icmp eq i32 %19, 0
  br i1 %152, label %158, label %153

153:                                              ; preds = %151
  tail call fastcc void @build_bps_springlist(ptr noundef %1) #24
  %154 = load i16, ptr %7, align 2, !tbaa !84
  %155 = and i16 %154, 512
  %156 = icmp eq i16 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %153
  tail call fastcc void @calculate_collision_balls(ptr noundef nonnull %1) #24
  br label %158

158:                                              ; preds = %153, %157, %151
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @renew_softbody(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !148 {
  %5 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 111
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = tail call ptr @sbNew(ptr noundef %0) #24
  store ptr %9, ptr %5, align 8, !tbaa !75
  br label %12

10:                                               ; preds = %4
  tail call fastcc void @free_softbody_intern(ptr noundef nonnull %6) #24
  %11 = load ptr, ptr %5, align 8, !tbaa !75
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi ptr [ %11, %10 ], [ %9, %8 ]
  %14 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 104
  %15 = load i16, ptr %14, align 2, !tbaa !84
  %16 = icmp eq i32 %2, 0
  br i1 %16, label %52, label %17

17:                                               ; preds = %12
  store i32 %2, ptr %13, align 8, !tbaa !69
  %18 = getelementptr inbounds %struct.SoftBody, ptr %13, i64 0, i32 1
  store i32 %3, ptr %18, align 4, !tbaa !149
  %19 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %20 = sext i32 %2 to i64
  %21 = mul nsw i64 %20, 192
  %22 = tail call ptr %19(i64 noundef %21, ptr noundef nonnull @.str.8) #23
  %23 = getelementptr inbounds %struct.SoftBody, ptr %13, i64 0, i32 2
  store ptr %22, ptr %23, align 8, !tbaa !68
  %24 = icmp eq i32 %3, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %17
  %26 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %27 = sext i32 %3 to i64
  %28 = mul nsw i64 %27, 40
  %29 = tail call ptr %26(i64 noundef %28, ptr noundef nonnull @.str.5) #23
  %30 = getelementptr inbounds %struct.SoftBody, ptr %13, i64 0, i32 3
  store ptr %29, ptr %30, align 8, !tbaa !74
  br label %31

31:                                               ; preds = %25, %17
  %32 = icmp sgt i32 %2, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %31
  %34 = load ptr, ptr %23, align 8, !tbaa !68
  %35 = and i16 %15, 2
  %36 = icmp eq i16 %35, 0
  %37 = getelementptr inbounds %struct.SoftBody, ptr %13, i64 0, i32 17
  %38 = zext nneg i32 %2 to i64
  br label %39

39:                                               ; preds = %33, %43
  %40 = phi i64 [ 0, %33 ], [ %50, %43 ]
  br i1 %36, label %43, label %41

41:                                               ; preds = %39
  %42 = load float, ptr %37, align 8, !tbaa !45
  br label %43

43:                                               ; preds = %39, %41
  %44 = phi float [ %42, %41 ], [ 0.000000e+00, %39 ]
  %45 = getelementptr inbounds %struct.BodyPoint, ptr %34, i64 %40, i32 6
  store float %44, ptr %45, align 8
  %46 = getelementptr inbounds %struct.BodyPoint, ptr %34, i64 %40, i32 13
  %47 = getelementptr inbounds %struct.BodyPoint, ptr %34, i64 %40, i32 17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %46, i8 0, i64 20, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %47, align 8, !tbaa !44
  %48 = getelementptr inbounds %struct.BodyPoint, ptr %34, i64 %40, i32 19
  store i16 0, ptr %48, align 8, !tbaa !137
  %49 = getelementptr inbounds %struct.BodyPoint, ptr %34, i64 %40, i32 20
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %49, align 4, !tbaa !44
  %50 = add nuw nsw i64 %40, 1
  %51 = icmp eq i64 %50, %38
  br i1 %51, label %52, label %39, !llvm.loop !150

52:                                               ; preds = %43, %31, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @softbody_update_positions(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !151 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.SoftBody, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !68
  %9 = icmp ne ptr %8, null
  %10 = icmp sgt i32 %3, 0
  %11 = and i1 %9, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  %14 = zext nneg i32 %3 to i64
  br label %15

15:                                               ; preds = %12, %15
  %16 = phi i64 [ 0, %12 ], [ %21, %15 ]
  %17 = phi ptr [ %8, %12 ], [ %22, %15 ]
  %18 = getelementptr inbounds %struct.BodyPoint, ptr %17, i64 0, i32 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %17, ptr noundef nonnull %18) #24
  %19 = getelementptr inbounds [3 x float], ptr %2, i64 %16
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %18, ptr noundef %19) #24
  tail call void @mul_m4_v3(ptr noundef nonnull %13, ptr noundef nonnull %18) #23
  %20 = getelementptr inbounds %struct.BodyPoint, ptr %17, i64 0, i32 2
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %20, ptr noundef nonnull %18) #24
  %21 = add nuw nsw i64 %16, 1
  %22 = getelementptr inbounds %struct.BodyPoint, ptr %17, i64 1
  %23 = icmp eq i64 %21, %14
  br i1 %23, label %24, label %15, !llvm.loop !152

24:                                               ; preds = %15, %4, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @softbody_reset(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !153 {
  %5 = icmp sgt i32 %3, 0
  br i1 %5, label %6, label %27

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.SoftBody, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !68
  %9 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  %10 = zext nneg i32 %3 to i64
  br label %11

11:                                               ; preds = %6, %11
  %12 = phi i64 [ 0, %6 ], [ %24, %11 ]
  %13 = phi ptr [ %8, %6 ], [ %25, %11 ]
  %14 = getelementptr inbounds %struct.BodyPoint, ptr %13, i64 0, i32 3
  %15 = getelementptr inbounds [3 x float], ptr %2, i64 %12
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %14, ptr noundef %15) #24
  tail call void @mul_m4_v3(ptr noundef nonnull %9, ptr noundef nonnull %14) #23
  tail call fastcc void @copy_v3_v3(ptr noundef %13, ptr noundef nonnull %14) #24
  %16 = getelementptr inbounds %struct.BodyPoint, ptr %13, i64 0, i32 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %16, ptr noundef nonnull %14) #24
  %17 = getelementptr inbounds %struct.BodyPoint, ptr %13, i64 0, i32 2
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %17, ptr noundef nonnull %14) #24
  %18 = getelementptr inbounds %struct.BodyPoint, ptr %13, i64 0, i32 4
  %19 = getelementptr inbounds %struct.BodyPoint, ptr %13, i64 0, i32 4, i64 2
  store float 0.000000e+00, ptr %19, align 8, !tbaa !44
  store <2 x float> zeroinitializer, ptr %18, align 8, !tbaa !44
  %20 = getelementptr inbounds %struct.BodyPoint, ptr %13, i64 0, i32 7
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %20, ptr noundef nonnull %14) #24
  %21 = getelementptr inbounds %struct.BodyPoint, ptr %13, i64 0, i32 8
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %21, ptr noundef nonnull %18) #24
  %22 = getelementptr inbounds %struct.BodyPoint, ptr %13, i64 0, i32 9
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %22, ptr noundef nonnull %18) #24
  %23 = getelementptr inbounds %struct.BodyPoint, ptr %13, i64 0, i32 10
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %23, ptr noundef nonnull %18) #24
  %24 = add nuw nsw i64 %12, 1
  %25 = getelementptr inbounds %struct.BodyPoint, ptr %13, i64 1
  %26 = icmp eq i64 %24, %10
  br i1 %26, label %27, label %11, !llvm.loop !154

27:                                               ; preds = %11, %4
  tail call fastcc void @free_scratch(ptr noundef %1) #24
  tail call fastcc void @sb_new_scratch(ptr noundef %1) #24
  %28 = getelementptr inbounds %struct.SoftBody, ptr %1, i64 0, i32 44
  %29 = load ptr, ptr %28, align 8, !tbaa !60
  %30 = getelementptr inbounds %struct.SBScratch, ptr %29, i64 0, i32 1
  store i16 1, ptr %30, align 8, !tbaa !155
  %31 = getelementptr inbounds %struct.SoftBody, ptr %1, i64 0, i32 50
  tail call fastcc void @zero_v3(ptr noundef nonnull %31) #24
  %32 = getelementptr inbounds %struct.SoftBody, ptr %1, i64 0, i32 51
  tail call void @unit_m3(ptr noundef nonnull %32) #23
  %33 = getelementptr inbounds %struct.SoftBody, ptr %1, i64 0, i32 52
  tail call void @unit_m3(ptr noundef nonnull %33) #23
  tail call fastcc void @reference_to_scratch(ptr noundef %0) #24
  tail call void @SB_estimate_transform(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef null) #24
  tail call void @SB_estimate_transform(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef null) #24
  %34 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %35 = load i16, ptr %34, align 8, !tbaa !85
  %36 = icmp eq i16 %35, 1
  br i1 %36, label %37, label %43

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 104
  %39 = load i16, ptr %38, align 2, !tbaa !84
  %40 = and i16 %39, 1024
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  tail call fastcc void @mesh_faces_to_scratch(ptr noundef nonnull %0) #24
  br label %43

43:                                               ; preds = %27, %37, %42
  ret void
}

; Function Attrs: optsize
declare i32 @BKE_ptcache_id_reset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_ptcache_validate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BKE_ptcache_read(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @softbody_to_object(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !156 {
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 111
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = icmp eq ptr %6, null
  br i1 %7, label %37, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.SoftBody, ptr %6, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !68
  %11 = getelementptr inbounds %struct.SoftBody, ptr %6, i64 0, i32 28
  %12 = load i16, ptr %11, align 2, !tbaa !55
  %13 = and i16 %12, 4
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.SoftBody, ptr %6, i64 0, i32 50
  %17 = getelementptr inbounds %struct.SoftBody, ptr %6, i64 0, i32 51
  %18 = getelementptr inbounds %struct.SoftBody, ptr %6, i64 0, i32 52
  tail call void @SB_estimate_transform(ptr noundef nonnull %0, ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef nonnull %18) #24
  br label %19

19:                                               ; preds = %15, %8
  %20 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 50
  %21 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  %22 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %20, ptr noundef nonnull %21) #23
  %23 = icmp sgt i32 %2, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %19
  %25 = icmp eq i32 %3, 0
  %26 = zext nneg i32 %2 to i64
  br label %27

27:                                               ; preds = %24, %33
  %28 = phi i64 [ 0, %24 ], [ %34, %33 ]
  %29 = phi ptr [ %10, %24 ], [ %35, %33 ]
  %30 = getelementptr inbounds [3 x float], ptr %1, i64 %28
  %31 = getelementptr inbounds %struct.BodyPoint, ptr %29, i64 0, i32 3
  tail call fastcc void @copy_v3_v3(ptr noundef %30, ptr noundef nonnull %31) #24
  br i1 %25, label %32, label %33

32:                                               ; preds = %27
  tail call void @mul_m4_v3(ptr noundef nonnull %20, ptr noundef %30) #23
  br label %33

33:                                               ; preds = %27, %32
  %34 = add nuw nsw i64 %28, 1
  %35 = getelementptr inbounds %struct.BodyPoint, ptr %29, i64 1
  %36 = icmp eq i64 %34, %26
  br i1 %36, label %37, label %27, !llvm.loop !157

37:                                               ; preds = %33, %19, %4
  ret void
}

; Function Attrs: optsize
declare i32 @BKE_ptcache_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @softbody_step(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #0 !PGOFuncName !158 {
  %5 = alloca float, align 4
  %6 = tail call double @PIL_check_seconds_timer() #23
  %7 = fcmp olt float %3, 0.000000e+00
  %8 = fcmp ogt float %3, 1.050000e+01
  %9 = or i1 %7, %8
  br i1 %9, label %160, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.SoftBody, ptr %2, i64 0, i32 44
  %12 = load ptr, ptr %11, align 8, !tbaa !60
  %13 = load ptr, ptr %12, align 8, !tbaa !61
  tail call fastcc void @ccd_update_deflector_hash(ptr noundef %0, ptr noundef %1, ptr noundef %13) #24
  %14 = load ptr, ptr %11, align 8, !tbaa !60
  %15 = getelementptr inbounds %struct.SBScratch, ptr %14, i64 0, i32 1
  %16 = load i16, ptr %15, align 8, !tbaa !155
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %10
  %19 = tail call fastcc i32 @query_external_colliders(ptr noundef %0, ptr noundef %1) #24, !range !159
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %14, align 8, !tbaa !61
  tail call fastcc void @ccd_build_deflector_hash(ptr noundef %0, ptr noundef %1, ptr noundef %22) #24
  %23 = load ptr, ptr %11, align 8, !tbaa !60
  br label %24

24:                                               ; preds = %21, %18
  %25 = phi ptr [ %23, %21 ], [ %14, %18 ]
  %26 = getelementptr inbounds %struct.SBScratch, ptr %25, i64 0, i32 1
  store i16 0, ptr %26, align 8, !tbaa !155
  br label %27

27:                                               ; preds = %24, %10
  %28 = getelementptr inbounds %struct.SoftBody, ptr %2, i64 0, i32 41
  %29 = load i16, ptr %28, align 2, !tbaa !160
  %30 = icmp slt i16 %29, 2
  br i1 %30, label %31, label %134

31:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #25
  store float 0.000000e+00, ptr %5, align 4, !tbaa !44
  %32 = getelementptr inbounds %struct.SoftBody, ptr %2, i64 0, i32 11
  %33 = load float, ptr %32, align 8, !tbaa !161
  store float %33, ptr @SoftHeunTol, align 4, !tbaa !44
  %34 = getelementptr inbounds %struct.SoftBody, ptr %2, i64 0, i32 38
  %35 = load i16, ptr %34, align 4, !tbaa !51
  %36 = icmp sgt i16 %35, 0
  %37 = sitofp i16 %35 to float
  %38 = fdiv float %3, %37
  %39 = select i1 %36, float %38, float 1.000000e+00
  %40 = getelementptr inbounds %struct.SoftBody, ptr %2, i64 0, i32 39
  %41 = load i16, ptr %40, align 2, !tbaa !52
  %42 = icmp sgt i16 %41, 0
  %43 = sitofp i16 %41 to float
  %44 = fdiv float %3, %43
  %45 = select i1 %42, float %44, float 0x3F847AE140000000
  %46 = icmp eq i16 %29, 1
  %47 = zext i1 %46 to i32
  %48 = fcmp ogt float %3, 0.000000e+00
  br i1 %48, label %49, label %123

49:                                               ; preds = %31
  %50 = getelementptr inbounds %struct.SoftBody, ptr %2, i64 0, i32 28
  br label %51

51:                                               ; preds = %49, %116
  %52 = phi i32 [ 0, %49 ], [ %97, %116 ]
  %53 = phi float [ 0.000000e+00, %49 ], [ %96, %116 ]
  %54 = phi float [ %39, %49 ], [ %95, %116 ]
  %55 = fdiv float %53, %3
  %56 = fmul float %55, 2.000000e+02
  %57 = fptosi float %56 to i32
  call fastcc void @interpolate_exciter(ptr noundef %1, i32 noundef 200, i32 noundef %57) #24
  %58 = load ptr, ptr %11, align 8, !tbaa !60
  %59 = getelementptr inbounds %struct.SBScratch, ptr %58, i64 0, i32 2
  %60 = load i16, ptr %59, align 2, !tbaa !162
  %61 = and i16 %60, -2
  store i16 %61, ptr %59, align 2, !tbaa !162
  call fastcc void @softbody_calc_forces(ptr noundef %0, ptr noundef %1, float noundef %54, float noundef %55) #24
  call fastcc void @softbody_apply_forces(ptr noundef %1, float noundef %54, i32 noundef 1, ptr noundef null, i32 noundef %47) #24
  call fastcc void @softbody_calc_forces(ptr noundef %0, ptr noundef %1, float noundef %54, float noundef %55) #24
  call fastcc void @softbody_apply_forces(ptr noundef %1, float noundef %54, i32 noundef 2, ptr noundef nonnull %5, i32 noundef %47) #24
  call fastcc void @softbody_apply_goalsnap(ptr noundef %1) #24
  %62 = load float, ptr %5, align 4, !tbaa !44
  %63 = load float, ptr @SoftHeunTol, align 4, !tbaa !44
  %64 = fcmp ogt float %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %51
  %66 = fcmp ogt float %54, %45
  br i1 %66, label %67, label %70

67:                                               ; preds = %65
  %68 = fmul float %54, 5.000000e-01
  %69 = call fastcc float @max_ff(float noundef %68, float noundef %45) #24
  call fastcc void @softbody_restore_prev_step(ptr noundef %1) #24
  br label %94

70:                                               ; preds = %65
  %71 = fadd float %54, %53
  br label %94

72:                                               ; preds = %51
  %73 = load ptr, ptr %11, align 8, !tbaa !60
  %74 = getelementptr inbounds %struct.SBScratch, ptr %73, i64 0, i32 2
  %75 = load i16, ptr %74, align 2, !tbaa !162
  %76 = and i16 %75, 1
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %72
  %79 = fmul float %54, 0x3FF19999A0000000
  %80 = fmul float %63, 5.000000e-01
  %81 = fcmp ogt float %62, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  br label %83

83:                                               ; preds = %72, %78, %82
  %84 = phi float [ %54, %82 ], [ %79, %78 ], [ %54, %72 ]
  %85 = fadd float %54, %53
  %86 = call fastcc float @max_ff(float noundef %84, float noundef %45) #24
  %87 = call fastcc float @min_ff(float noundef %39, float noundef %86) #24
  %88 = fcmp ogt float %54, 0.000000e+00
  %89 = fsub float %3, %85
  br i1 %88, label %90, label %92

90:                                               ; preds = %83
  %91 = call fastcc float @min_ff(float noundef %89, float noundef %87) #24
  br label %94

92:                                               ; preds = %83
  %93 = call fastcc float @max_ff(float noundef %89, float noundef %87) #24
  br label %94

94:                                               ; preds = %90, %92, %67, %70
  %95 = phi float [ %69, %67 ], [ %54, %70 ], [ %91, %90 ], [ %93, %92 ]
  %96 = phi float [ %53, %67 ], [ %71, %70 ], [ %85, %90 ], [ %85, %92 ]
  %97 = add nuw nsw i32 %52, 1
  %98 = load i16, ptr %50, align 2, !tbaa !55
  %99 = and i16 %98, 1
  %100 = icmp eq i16 %99, 0
  br i1 %100, label %110, label %101

101:                                              ; preds = %94
  %102 = call double @PIL_check_seconds_timer() #23
  %103 = fsub double %102, %6
  %104 = fcmp ogt double %103, 5.000000e-01
  br i1 %104, label %105, label %110

105:                                              ; preds = %101
  %106 = fmul float %96, 1.000000e+02
  %107 = fdiv float %106, %3
  %108 = fpext float %107 to double
  %109 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, double noundef %108) #24
  br label %110

110:                                              ; preds = %101, %105, %94
  %111 = load ptr, ptr @SB_localInterruptCallBack, align 8, !tbaa !34
  %112 = icmp eq ptr %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %110
  %114 = call i32 %111() #23
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %113, %110
  %117 = fcmp olt float %96, 0.000000e+00
  %118 = fneg float %96
  %119 = select i1 %117, float %118, float %96
  %120 = fcmp olt float %119, %3
  %121 = icmp ult i32 %52, 1999
  %122 = select i1 %120, i1 %121, i1 false
  br i1 %122, label %51, label %123, !llvm.loop !163

123:                                              ; preds = %116, %113, %31
  %124 = phi i32 [ 0, %31 ], [ %97, %113 ], [ %97, %116 ]
  call fastcc void @interpolate_exciter(ptr noundef %1, i32 noundef 2, i32 noundef 2) #24
  call fastcc void @softbody_apply_goalsnap(ptr noundef %1) #24
  %125 = getelementptr inbounds %struct.SoftBody, ptr %2, i64 0, i32 28
  %126 = load i16, ptr %125, align 2, !tbaa !55
  %127 = and i16 %126, 1
  %128 = icmp ne i16 %127, 0
  %129 = icmp sgt i32 %124, 1
  %130 = select i1 %128, i1 %129, i1 false
  br i1 %130, label %131, label %133

131:                                              ; preds = %123
  %132 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %124) #24
  br label %133

133:                                              ; preds = %131, %123
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #25
  br label %139

134:                                              ; preds = %27
  %135 = add nsw i16 %29, -2
  %136 = icmp ult i16 %135, 3
  br i1 %136, label %139, label %137

137:                                              ; preds = %134
  %138 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14) #24
  br label %139

139:                                              ; preds = %134, %137, %133
  %140 = getelementptr inbounds %struct.SoftBody, ptr %2, i64 0, i32 42
  %141 = load i16, ptr %140, align 4, !tbaa !164
  %142 = icmp eq i16 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %139
  call fastcc void @apply_spring_memory(ptr noundef %1) #24
  br label %144

144:                                              ; preds = %143, %139
  %145 = getelementptr inbounds %struct.SoftBody, ptr %2, i64 0, i32 28
  %146 = load i16, ptr %145, align 2, !tbaa !55
  %147 = and i16 %146, 1
  %148 = icmp eq i16 %147, 0
  br i1 %148, label %160, label %149

149:                                              ; preds = %144
  %150 = call double @PIL_check_seconds_timer() #23
  %151 = fsub double %150, %6
  %152 = fcmp ogt double %151, 5.000000e-01
  br i1 %152, label %157, label %153

153:                                              ; preds = %149
  %154 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !165
  %155 = and i32 %154, 1
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %160, label %157

157:                                              ; preds = %153, %149
  %158 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  %159 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %151, ptr noundef nonnull %158) #24
  br label %160

160:                                              ; preds = %144, %157, %153, %4
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_ghash_ptr_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_scratch(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !167 {
  %2 = getelementptr inbounds %struct.SoftBody, ptr %0, i64 0, i32 44
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  %4 = icmp eq ptr %3, null
  br i1 %4, label %29, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !61
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  tail call void @BLI_ghash_free(ptr noundef nonnull %6, ptr noundef null, ptr noundef nonnull @ccd_mesh_free) #23
  %9 = load ptr, ptr %2, align 8, !tbaa !60
  store ptr null, ptr %9, align 8, !tbaa !61
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi ptr [ %9, %8 ], [ %3, %5 ]
  %12 = getelementptr inbounds %struct.SBScratch, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !64
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %16(ptr noundef nonnull %13) #23
  %17 = load ptr, ptr %2, align 8, !tbaa !60
  br label %18

18:                                               ; preds = %15, %10
  %19 = phi ptr [ %17, %15 ], [ %11, %10 ]
  %20 = getelementptr inbounds %struct.SBScratch, ptr %19, i64 0, i32 7, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !66
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %24(ptr noundef nonnull %21) #23
  %25 = load ptr, ptr %2, align 8, !tbaa !60
  br label %26

26:                                               ; preds = %23, %18
  %27 = phi ptr [ %25, %23 ], [ %19, %18 ]
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %28(ptr noundef %27) #23
  store ptr null, ptr %2, align 8, !tbaa !60
  br label %29

29:                                               ; preds = %26, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_softbody_baked(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !168 {
  %2 = getelementptr inbounds %struct.SoftBody, ptr %0, i64 0, i32 31
  %3 = load i32, ptr %2, align 4, !tbaa !169
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %22

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.SoftBody, ptr %0, i64 0, i32 29
  br label %7

7:                                                ; preds = %5, %17
  %8 = phi i32 [ %3, %5 ], [ %18, %17 ]
  %9 = phi i64 [ 0, %5 ], [ %19, %17 ]
  %10 = load ptr, ptr %6, align 8, !tbaa !170
  %11 = getelementptr inbounds ptr, ptr %10, i64 %9
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %15(ptr noundef nonnull %12) #23
  %16 = load i32, ptr %2, align 4, !tbaa !169
  br label %17

17:                                               ; preds = %7, %14
  %18 = phi i32 [ %8, %7 ], [ %16, %14 ]
  %19 = add nuw nsw i64 %9, 1
  %20 = sext i32 %18 to i64
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %7, label %22, !llvm.loop !171

22:                                               ; preds = %17, %1
  %23 = getelementptr inbounds %struct.SoftBody, ptr %0, i64 0, i32 29
  %24 = load ptr, ptr %23, align 8, !tbaa !170
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %27(ptr noundef nonnull %24) #23
  br label %28

28:                                               ; preds = %26, %22
  store ptr null, ptr %23, align 8, !tbaa !170
  store i32 0, ptr %2, align 4, !tbaa !169
  ret void
}

; Function Attrs: optsize
declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ccd_mesh_free(ptr noundef %0) #0 !PGOFuncName !172 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %24, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ccd_Mesh, ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !173
  %6 = icmp eq i32 %5, 190561
  br i1 %6, label %7, label %24

7:                                                ; preds = %3
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.ccd_Mesh, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !175
  tail call void %8(ptr noundef %10) #23
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.ccd_Mesh, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !176
  tail call void %11(ptr noundef %13) #23
  %14 = getelementptr inbounds %struct.ccd_Mesh, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !177
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %7
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %18(ptr noundef nonnull %15) #23
  br label %19

19:                                               ; preds = %17, %7
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %21 = getelementptr inbounds %struct.ccd_Mesh, ptr %0, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !178
  tail call void %20(ptr noundef %22) #23
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %23(ptr noundef nonnull %0) #23
  br label %24

24:                                               ; preds = %19, %3, %1
  ret void
}

; Function Attrs: optsize
declare void @BKE_mesh_tessface_ensure(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @get_scalar_from_vertexgroup(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #6 !PGOFuncName !179 {
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !85
  switch i16 %6, label %44 [
    i16 1, label %7
    i16 22, label %15
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !109
  %10 = getelementptr inbounds %struct.Mesh, ptr %9, i64 0, i32 17
  %11 = load ptr, ptr %10, align 8, !tbaa !180
  %12 = icmp eq ptr %11, null
  %13 = sext i32 %1 to i64
  %14 = getelementptr inbounds %struct.MDeformVert, ptr %11, i64 %13
  br i1 %12, label %44, label %23

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !109
  %18 = getelementptr inbounds %struct.Lattice, ptr %17, i64 0, i32 24
  %19 = load ptr, ptr %18, align 8, !tbaa !181
  %20 = icmp eq ptr %19, null
  %21 = sext i32 %1 to i64
  %22 = getelementptr inbounds %struct.MDeformVert, ptr %19, i64 %21
  br i1 %20, label %44, label %23

23:                                               ; preds = %15, %7
  %24 = phi ptr [ %14, %7 ], [ %22, %15 ]
  %25 = icmp eq ptr %24, null
  br i1 %25, label %44, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.MDeformVert, ptr %24, i64 0, i32 1
  %28 = load i32, ptr %27, align 8, !tbaa !182
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %26
  %31 = load ptr, ptr %24, align 8, !tbaa !184
  %32 = zext nneg i32 %28 to i64
  br label %36

33:                                               ; preds = %36
  %34 = add nuw nsw i64 %37, 1
  %35 = icmp eq i64 %34, %32
  br i1 %35, label %44, label %36, !llvm.loop !185

36:                                               ; preds = %30, %33
  %37 = phi i64 [ 0, %30 ], [ %34, %33 ]
  %38 = getelementptr inbounds %struct.MDeformWeight, ptr %31, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !186
  %40 = icmp eq i32 %39, %2
  br i1 %40, label %41, label %33

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.MDeformWeight, ptr %31, i64 %37, i32 1
  %43 = load float, ptr %42, align 4, !tbaa !188
  store float %43, ptr %3, align 4, !tbaa !44
  br label %44

44:                                               ; preds = %33, %26, %15, %7, %4, %41, %23
  ret void
}

; Function Attrs: optsize
declare i32 @defgroup_name_index(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_mesh_quad_diag_springs(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !189 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !109
  %4 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !190
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 111
  %7 = load ptr, ptr %6, align 8, !tbaa !75
  %8 = icmp eq ptr %7, null
  br i1 %8, label %75, label %9

9:                                                ; preds = %1
  %10 = tail call fastcc i32 @count_mesh_quads(ptr noundef nonnull %3) #24
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %75, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %14 = getelementptr inbounds %struct.SoftBody, ptr %7, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !149
  %16 = shl nsw i32 %10, 1
  %17 = add nsw i32 %15, %16
  %18 = sext i32 %17 to i64
  %19 = mul nsw i64 %18, 40
  %20 = tail call ptr %13(i64 noundef %19, ptr noundef nonnull @.str.5) #23
  %21 = load ptr, ptr %6, align 8, !tbaa !75
  %22 = getelementptr inbounds %struct.SoftBody, ptr %21, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !74
  %24 = getelementptr inbounds %struct.SoftBody, ptr %21, i64 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !149
  %26 = sext i32 %25 to i64
  %27 = mul nsw i64 %26, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %20, ptr align 4 %23, i64 %27, i1 false)
  %28 = load ptr, ptr %6, align 8, !tbaa !75
  %29 = getelementptr inbounds %struct.SoftBody, ptr %28, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !74
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %12
  %33 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %33(ptr noundef nonnull %30) #23
  %34 = load ptr, ptr %6, align 8, !tbaa !75
  br label %35

35:                                               ; preds = %32, %12
  %36 = phi ptr [ %34, %32 ], [ %28, %12 ]
  %37 = getelementptr inbounds %struct.SoftBody, ptr %36, i64 0, i32 3
  store ptr %20, ptr %37, align 8, !tbaa !74
  %38 = icmp eq ptr %5, null
  %39 = getelementptr inbounds %struct.SoftBody, ptr %36, i64 0, i32 1
  %40 = load i32, ptr %39, align 4, !tbaa !149
  br i1 %38, label %72, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 28
  %43 = load i32, ptr %42, align 8, !tbaa !191
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %72

45:                                               ; preds = %41
  %46 = sext i32 %40 to i64
  %47 = getelementptr inbounds %struct.BodySpring, ptr %20, i64 %46
  br label %48

48:                                               ; preds = %45, %67
  %49 = phi ptr [ %70, %67 ], [ %5, %45 ]
  %50 = phi i32 [ %69, %67 ], [ %43, %45 ]
  %51 = phi ptr [ %68, %67 ], [ %47, %45 ]
  %52 = getelementptr inbounds %struct.MFace, ptr %49, i64 0, i32 3
  %53 = load i32, ptr %52, align 4, !tbaa !192
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %67, label %55

55:                                               ; preds = %48
  %56 = load i32, ptr %49, align 4, !tbaa !194
  store i32 %56, ptr %51, align 4, !tbaa !138
  %57 = getelementptr inbounds %struct.MFace, ptr %49, i64 0, i32 2
  %58 = load i32, ptr %57, align 4, !tbaa !195
  %59 = getelementptr inbounds %struct.BodySpring, ptr %51, i64 0, i32 1
  store i32 %58, ptr %59, align 4, !tbaa !139
  %60 = getelementptr inbounds %struct.BodySpring, ptr %51, i64 0, i32 6
  store i32 3, ptr %60, align 4, !tbaa !121
  %61 = getelementptr inbounds %struct.BodySpring, ptr %51, i64 1
  %62 = getelementptr inbounds %struct.MFace, ptr %49, i64 0, i32 1
  %63 = load i32, ptr %62, align 4, !tbaa !196
  store i32 %63, ptr %61, align 4, !tbaa !138
  %64 = getelementptr inbounds %struct.BodySpring, ptr %51, i64 1, i32 1
  store i32 %53, ptr %64, align 4, !tbaa !139
  %65 = getelementptr inbounds %struct.BodySpring, ptr %51, i64 1, i32 6
  store i32 3, ptr %65, align 4, !tbaa !121
  %66 = getelementptr inbounds %struct.BodySpring, ptr %51, i64 2
  br label %67

67:                                               ; preds = %48, %55
  %68 = phi ptr [ %66, %55 ], [ %51, %48 ]
  %69 = add nsw i32 %50, -1
  %70 = getelementptr inbounds %struct.MFace, ptr %49, i64 1
  %71 = icmp sgt i32 %50, 1
  br i1 %71, label %48, label %72, !llvm.loop !197

72:                                               ; preds = %67, %35, %41
  %73 = getelementptr inbounds %struct.SoftBody, ptr %36, i64 0, i32 1
  %74 = add nsw i32 %40, %16
  store i32 %74, ptr %73, align 4, !tbaa !149
  br label %75

75:                                               ; preds = %9, %72, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @build_bps_springlist(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !198 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 111
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = icmp eq ptr %3, null
  br i1 %4, label %54, label %5

5:                                                ; preds = %1
  %6 = load i32, ptr %3, align 8, !tbaa !69
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %54

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !68
  %11 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 1
  %12 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 3
  br label %13

13:                                               ; preds = %8, %50
  %14 = phi i32 [ %6, %8 ], [ %51, %50 ]
  %15 = phi ptr [ %10, %8 ], [ %52, %50 ]
  %16 = getelementptr inbounds %struct.BodyPoint, ptr %15, i64 0, i32 14
  %17 = load ptr, ptr %16, align 8, !tbaa !70
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %13
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %20(ptr noundef nonnull %17) #23
  store ptr null, ptr %16, align 8, !tbaa !70
  br label %21

21:                                               ; preds = %19, %13
  %22 = load i32, ptr %11, align 4, !tbaa !149
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %50

24:                                               ; preds = %21
  %25 = load ptr, ptr %12, align 8, !tbaa !74
  br label %26

26:                                               ; preds = %24, %46
  %27 = phi i32 [ %47, %46 ], [ %22, %24 ]
  %28 = phi ptr [ %48, %46 ], [ %25, %24 ]
  %29 = load i32, ptr %3, align 8, !tbaa !69
  %30 = sub nsw i32 %29, %14
  %31 = load i32, ptr %28, align 4, !tbaa !138
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load i32, ptr %11, align 4, !tbaa !149
  %35 = sub nsw i32 %34, %27
  tail call fastcc void @add_bp_springlist(ptr noundef %15, i32 noundef %35) #24
  %36 = load i32, ptr %3, align 8, !tbaa !69
  %37 = sub nsw i32 %36, %14
  br label %38

38:                                               ; preds = %33, %26
  %39 = phi i32 [ %37, %33 ], [ %30, %26 ]
  %40 = getelementptr inbounds %struct.BodySpring, ptr %28, i64 0, i32 1
  %41 = load i32, ptr %40, align 4, !tbaa !139
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, ptr %11, align 4, !tbaa !149
  %45 = sub nsw i32 %44, %27
  tail call fastcc void @add_bp_springlist(ptr noundef %15, i32 noundef %45) #24
  br label %46

46:                                               ; preds = %38, %43
  %47 = add nsw i32 %27, -1
  %48 = getelementptr inbounds %struct.BodySpring, ptr %28, i64 1
  %49 = icmp sgt i32 %27, 1
  br i1 %49, label %26, label %50, !llvm.loop !199

50:                                               ; preds = %46, %21
  %51 = add nsw i32 %14, -1
  %52 = getelementptr inbounds %struct.BodyPoint, ptr %15, i64 1
  %53 = icmp sgt i32 %14, 1
  br i1 %53, label %13, label %54, !llvm.loop !200

54:                                               ; preds = %50, %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_2nd_order_springs(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #0 !PGOFuncName !201 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #25
  store i32 0, ptr %3, align 4, !tbaa !48
  call fastcc void @add_2nd_order_roller(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 0) #24
  %4 = load i32, ptr %3, align 4, !tbaa !48
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %38, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 111
  %9 = load ptr, ptr %8, align 8, !tbaa !75
  %10 = getelementptr inbounds %struct.SoftBody, ptr %9, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !149
  %12 = add nsw i32 %11, %4
  %13 = sext i32 %12 to i64
  %14 = mul nsw i64 %13, 40
  %15 = tail call ptr %7(i64 noundef %14, ptr noundef nonnull @.str.5) #23
  %16 = load ptr, ptr %8, align 8, !tbaa !75
  %17 = getelementptr inbounds %struct.SoftBody, ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !74
  %19 = getelementptr inbounds %struct.SoftBody, ptr %16, i64 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !149
  %21 = sext i32 %20 to i64
  %22 = mul nsw i64 %21, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %15, ptr align 4 %18, i64 %22, i1 false)
  %23 = load ptr, ptr %8, align 8, !tbaa !75
  %24 = getelementptr inbounds %struct.SoftBody, ptr %23, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !74
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %6
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %28(ptr noundef nonnull %25) #23
  %29 = load ptr, ptr %8, align 8, !tbaa !75
  br label %30

30:                                               ; preds = %27, %6
  %31 = phi ptr [ %29, %27 ], [ %23, %6 ]
  %32 = getelementptr inbounds %struct.SoftBody, ptr %31, i64 0, i32 3
  store ptr %15, ptr %32, align 8, !tbaa !74
  call fastcc void @add_2nd_order_roller(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 1) #24
  %33 = load i32, ptr %3, align 4, !tbaa !48
  %34 = load ptr, ptr %8, align 8, !tbaa !75
  %35 = getelementptr inbounds %struct.SoftBody, ptr %34, i64 0, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !149
  %37 = add nsw i32 %36, %33
  store i32 %37, ptr %35, align 4, !tbaa !149
  br label %38

38:                                               ; preds = %30, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @springs_from_mesh(ptr noundef %0) unnamed_addr #0 !PGOFuncName !202 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !109
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 111
  %5 = load ptr, ptr %4, align 8, !tbaa !75
  %6 = icmp ne ptr %3, null
  %7 = icmp ne ptr %5, null
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %9, label %60

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 26
  %11 = load i32, ptr %10, align 8, !tbaa !115
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.SoftBody, ptr %5, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !68
  %16 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 15
  %17 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  br label %18

18:                                               ; preds = %13, %18
  %19 = phi i64 [ 0, %13 ], [ %23, %18 ]
  %20 = phi ptr [ %15, %13 ], [ %24, %18 ]
  %21 = load ptr, ptr %16, align 8, !tbaa !203
  %22 = getelementptr inbounds %struct.MVert, ptr %21, i64 %19
  tail call fastcc void @copy_v3_v3(ptr noundef %20, ptr noundef %22) #24
  tail call void @mul_m4_v3(ptr noundef nonnull %17, ptr noundef %20) #23
  %23 = add nuw nsw i64 %19, 1
  %24 = getelementptr inbounds %struct.BodyPoint, ptr %20, i64 1
  %25 = load i32, ptr %10, align 8, !tbaa !115
  %26 = sext i32 %25 to i64
  %27 = icmp slt i64 %23, %26
  br i1 %27, label %18, label %28, !llvm.loop !204

28:                                               ; preds = %18, %9
  %29 = getelementptr inbounds %struct.SoftBody, ptr %5, i64 0, i32 43
  %30 = load i16, ptr %29, align 2, !tbaa !205
  %31 = icmp eq i16 %30, 0
  %32 = sitofp i16 %30 to float
  %33 = fdiv float %32, 1.000000e+02
  %34 = select i1 %31, float 1.000000e+00, float %33
  %35 = getelementptr inbounds %struct.SoftBody, ptr %5, i64 0, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !149
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %60

38:                                               ; preds = %28
  %39 = getelementptr inbounds %struct.SoftBody, ptr %5, i64 0, i32 3
  %40 = getelementptr inbounds %struct.SoftBody, ptr %5, i64 0, i32 2
  br label %41

41:                                               ; preds = %38, %41
  %42 = phi i64 [ 0, %38 ], [ %56, %41 ]
  %43 = load ptr, ptr %39, align 8, !tbaa !74
  %44 = getelementptr inbounds %struct.BodySpring, ptr %43, i64 %42
  %45 = load ptr, ptr %40, align 8, !tbaa !68
  %46 = load i32, ptr %44, align 4, !tbaa !138
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.BodyPoint, ptr %45, i64 %47
  %49 = getelementptr inbounds %struct.BodySpring, ptr %43, i64 %42, i32 1
  %50 = load i32, ptr %49, align 4, !tbaa !139
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.BodyPoint, ptr %45, i64 %51
  %53 = tail call fastcc float @len_v3v3(ptr noundef %48, ptr noundef %52) #24
  %54 = fmul float %34, %53
  %55 = getelementptr inbounds %struct.BodySpring, ptr %43, i64 %42, i32 2
  store float %54, ptr %55, align 4, !tbaa !140
  %56 = add nuw nsw i64 %42, 1
  %57 = load i32, ptr %35, align 4, !tbaa !149
  %58 = sext i32 %57 to i64
  %59 = icmp slt i64 %56, %58
  br i1 %59, label %41, label %60, !llvm.loop !206

60:                                               ; preds = %41, %28, %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @calculate_collision_balls(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !207 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 111
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = icmp eq ptr %3, null
  br i1 %4, label %81, label %5

5:                                                ; preds = %1
  %6 = load i32, ptr %3, align 8, !tbaa !69
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %81

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !68
  %11 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 3
  %12 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 36
  %13 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 33
  br label %14

14:                                               ; preds = %8, %77
  %15 = phi i32 [ %6, %8 ], [ %78, %77 ]
  %16 = phi ptr [ %10, %8 ], [ %79, %77 ]
  %17 = getelementptr inbounds %struct.BodyPoint, ptr %16, i64 0, i32 18
  store float 0.000000e+00, ptr %17, align 4, !tbaa !208
  %18 = getelementptr inbounds %struct.BodyPoint, ptr %16, i64 0, i32 13
  %19 = load i32, ptr %18, align 4, !tbaa !209
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %77

21:                                               ; preds = %14
  %22 = load ptr, ptr %11, align 8, !tbaa !74
  %23 = getelementptr inbounds %struct.BodyPoint, ptr %16, i64 0, i32 14
  %24 = load ptr, ptr %23, align 8, !tbaa !70
  %25 = getelementptr i32, ptr %24, i64 -1
  %26 = zext nneg i32 %19 to i64
  br label %27

27:                                               ; preds = %21, %46
  %28 = phi i64 [ %26, %21 ], [ %51, %46 ]
  %29 = phi float [ 0.000000e+00, %21 ], [ %50, %46 ]
  %30 = phi float [ 0xC480F0CF00000000, %21 ], [ %49, %46 ]
  %31 = phi float [ 0x4480F0CF00000000, %21 ], [ %48, %46 ]
  %32 = phi i32 [ 0, %21 ], [ %47, %46 ]
  %33 = getelementptr i32, ptr %25, i64 %28
  %34 = load i32, ptr %33, align 4, !tbaa !48
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.BodySpring, ptr %22, i64 %35, i32 6
  %37 = load i32, ptr %36, align 4, !tbaa !121
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %46

39:                                               ; preds = %27
  %40 = getelementptr inbounds %struct.BodySpring, ptr %22, i64 %35, i32 2
  %41 = load float, ptr %40, align 4, !tbaa !140
  %42 = fadd float %29, %41
  %43 = add nsw i32 %32, 1
  %44 = tail call fastcc float @min_ff(float noundef %41, float noundef %31) #24
  %45 = tail call fastcc float @max_ff(float noundef %41, float noundef %30) #24
  br label %46

46:                                               ; preds = %27, %39
  %47 = phi i32 [ %43, %39 ], [ %32, %27 ]
  %48 = phi float [ %44, %39 ], [ %31, %27 ]
  %49 = phi float [ %45, %39 ], [ %30, %27 ]
  %50 = phi float [ %42, %39 ], [ %29, %27 ]
  %51 = add nsw i64 %28, -1
  %52 = icmp sgt i64 %28, 1
  br i1 %52, label %27, label %53, !llvm.loop !210

53:                                               ; preds = %46
  %54 = icmp sgt i32 %47, 0
  br i1 %54, label %55, label %77

55:                                               ; preds = %53
  %56 = load i16, ptr %12, align 8, !tbaa !50
  switch i16 %56, label %77 [
    i16 0, label %57
    i16 1, label %59
    i16 2, label %64
    i16 3, label %67
    i16 4, label %70
  ]

57:                                               ; preds = %55
  %58 = load float, ptr %13, align 4, !tbaa !211
  br label %75

59:                                               ; preds = %55
  %60 = sitofp i32 %47 to float
  %61 = fdiv float %50, %60
  %62 = load float, ptr %13, align 4, !tbaa !211
  %63 = fmul float %61, %62
  br label %75

64:                                               ; preds = %55
  %65 = load float, ptr %13, align 4, !tbaa !211
  %66 = fmul float %48, %65
  br label %75

67:                                               ; preds = %55
  %68 = load float, ptr %13, align 4, !tbaa !211
  %69 = fmul float %49, %68
  br label %75

70:                                               ; preds = %55
  %71 = fadd float %48, %49
  %72 = fmul float %71, 5.000000e-01
  %73 = load float, ptr %13, align 4, !tbaa !211
  %74 = fmul float %72, %73
  br label %75

75:                                               ; preds = %70, %67, %64, %57, %59
  %76 = phi float [ %63, %59 ], [ %58, %57 ], [ %66, %64 ], [ %69, %67 ], [ %74, %70 ]
  store float %76, ptr %17, align 4, !tbaa !208
  br label %77

77:                                               ; preds = %75, %53, %14, %55
  %78 = add nsw i32 %15, -1
  %79 = getelementptr inbounds %struct.BodyPoint, ptr %16, i64 1
  %80 = icmp sgt i32 %15, 1
  br i1 %80, label %14, label %81, !llvm.loop !212

81:                                               ; preds = %77, %5, %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @count_mesh_quads(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !213 {
  %2 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !190
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %7 = load i32, ptr %6, align 8, !tbaa !191
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %5, %9
  %10 = phi ptr [ %19, %9 ], [ %3, %5 ]
  %11 = phi i32 [ %17, %9 ], [ 0, %5 ]
  %12 = phi i32 [ %18, %9 ], [ %7, %5 ]
  %13 = getelementptr inbounds %struct.MFace, ptr %10, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !192
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = add nuw nsw i32 %11, %16
  %18 = add nsw i32 %12, -1
  %19 = getelementptr inbounds %struct.MFace, ptr %10, i64 1
  %20 = icmp ugt i32 %12, 1
  br i1 %20, label %9, label %21, !llvm.loop !214

21:                                               ; preds = %9, %5, %1
  %22 = phi i32 [ 0, %1 ], [ 0, %5 ], [ %17, %9 ]
  ret i32 %22
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_bp_springlist(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !215 {
  %3 = getelementptr inbounds %struct.BodyPoint, ptr %0, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !70
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %8 = tail call ptr %7(i64 noundef 4, ptr noundef nonnull @.str.6) #23
  store i32 %1, ptr %8, align 4, !tbaa !48
  %9 = getelementptr inbounds %struct.BodyPoint, ptr %0, i64 0, i32 13
  store i32 1, ptr %9, align 4, !tbaa !209
  br label %29

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.BodyPoint, ptr %0, i64 0, i32 13
  %12 = load i32, ptr %11, align 4, !tbaa !209
  %13 = add nsw i32 %12, 1
  store i32 %13, ptr %11, align 4, !tbaa !209
  %14 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %15 = sext i32 %13 to i64
  %16 = shl nsw i64 %15, 2
  %17 = tail call ptr %14(i64 noundef %16, ptr noundef nonnull @.str.6) #23
  %18 = load ptr, ptr %3, align 8, !tbaa !70
  %19 = load i32, ptr %11, align 4, !tbaa !209
  %20 = add nsw i32 %19, -1
  %21 = sext i32 %20 to i64
  %22 = shl nsw i64 %21, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %17, ptr align 4 %18, i64 %22, i1 false)
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %24 = load ptr, ptr %3, align 8, !tbaa !70
  tail call void %23(ptr noundef %24) #23
  %25 = load i32, ptr %11, align 4, !tbaa !209
  %26 = sext i32 %25 to i64
  %27 = getelementptr i32, ptr %17, i64 %26
  %28 = getelementptr i32, ptr %27, i64 -1
  store i32 %1, ptr %28, align 4, !tbaa !48
  br label %29

29:                                               ; preds = %10, %6
  %30 = phi ptr [ %8, %6 ], [ %17, %10 ]
  store ptr %30, ptr %3, align 8
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @add_2nd_order_roller(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #10 !PGOFuncName !216 {
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 111
  %5 = load ptr, ptr %4, align 8, !tbaa !75
  %6 = getelementptr inbounds %struct.SoftBody, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !74
  %8 = icmp eq ptr %7, null
  br i1 %8, label %128, label %9

9:                                                ; preds = %3
  store i32 0, ptr %1, align 4, !tbaa !48
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.SoftBody, ptr %5, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !149
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.BodySpring, ptr %7, i64 %14
  br label %16

16:                                               ; preds = %11, %9
  %17 = phi ptr [ %15, %11 ], [ null, %9 ]
  %18 = load i32, ptr %5, align 8, !tbaa !69
  %19 = getelementptr inbounds %struct.SoftBody, ptr %5, i64 0, i32 2
  %20 = icmp sgt i32 %18, 0
  br i1 %20, label %21, label %128

21:                                               ; preds = %16
  %22 = load ptr, ptr %19, align 8, !tbaa !68
  br label %23

23:                                               ; preds = %21, %122
  %24 = phi ptr [ %126, %122 ], [ %22, %21 ]
  %25 = phi i32 [ %124, %122 ], [ 0, %21 ]
  %26 = phi i32 [ %125, %122 ], [ %18, %21 ]
  %27 = phi ptr [ %123, %122 ], [ %17, %21 ]
  %28 = load i32, ptr %5, align 8, !tbaa !69
  %29 = sub nsw i32 %28, %26
  %30 = getelementptr inbounds %struct.BodyPoint, ptr %24, i64 0, i32 13
  %31 = load i32, ptr %30, align 4, !tbaa !209
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %122

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.BodyPoint, ptr %24, i64 0, i32 14
  %35 = zext nneg i32 %31 to i64
  br label %36

36:                                               ; preds = %33, %118
  %37 = phi i64 [ %35, %33 ], [ %120, %118 ]
  %38 = phi i32 [ %25, %33 ], [ %68, %118 ]
  %39 = phi ptr [ %27, %33 ], [ %119, %118 ]
  %40 = phi ptr [ null, %33 ], [ %67, %118 ]
  %41 = load ptr, ptr %6, align 8, !tbaa !74
  %42 = load ptr, ptr %34, align 8, !tbaa !70
  %43 = getelementptr i32, ptr %42, i64 %37
  %44 = getelementptr i32, ptr %43, i64 -1
  %45 = load i32, ptr %44, align 4, !tbaa !48
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.BodySpring, ptr %41, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !138
  %49 = icmp eq i32 %29, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %36
  %51 = load ptr, ptr %19, align 8, !tbaa !68
  %52 = getelementptr inbounds %struct.BodySpring, ptr %41, i64 %46, i32 1
  %53 = load i32, ptr %52, align 4, !tbaa !139
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.BodyPoint, ptr %51, i64 %54
  br label %66

56:                                               ; preds = %36
  %57 = getelementptr inbounds %struct.BodySpring, ptr %41, i64 %46, i32 1
  %58 = load i32, ptr %57, align 4, !tbaa !139
  %59 = icmp eq i32 %29, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load ptr, ptr %19, align 8, !tbaa !68
  %62 = sext i32 %48 to i64
  %63 = getelementptr inbounds %struct.BodyPoint, ptr %61, i64 %62
  br label %66

64:                                               ; preds = %56
  %65 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7) #24
  br label %66

66:                                               ; preds = %60, %64, %50
  %67 = phi ptr [ %55, %50 ], [ %63, %60 ], [ %40, %64 ]
  %68 = phi i32 [ %53, %50 ], [ %48, %60 ], [ %38, %64 ]
  %69 = icmp eq ptr %67, null
  br i1 %69, label %118, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.BodyPoint, ptr %67, i64 0, i32 13
  %72 = load i32, ptr %71, align 4, !tbaa !209
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %118

74:                                               ; preds = %70
  %75 = load ptr, ptr %6, align 8, !tbaa !74
  %76 = getelementptr inbounds %struct.BodyPoint, ptr %67, i64 0, i32 14
  %77 = load ptr, ptr %76, align 8, !tbaa !70
  %78 = getelementptr i32, ptr %77, i64 -1
  %79 = zext nneg i32 %72 to i64
  br label %80

80:                                               ; preds = %74, %114
  %81 = phi i64 [ %79, %74 ], [ %116, %114 ]
  %82 = phi ptr [ %39, %74 ], [ %115, %114 ]
  %83 = getelementptr i32, ptr %78, i64 %81
  %84 = load i32, ptr %83, align 4, !tbaa !48
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.BodySpring, ptr %75, i64 %85
  %87 = load i32, ptr %86, align 4, !tbaa !138
  %88 = icmp ne i32 %87, %68
  %89 = icmp sgt i32 %87, %29
  %90 = select i1 %88, i1 %89, i1 false
  br i1 %90, label %91, label %99

91:                                               ; preds = %80
  %92 = load i32, ptr %1, align 4, !tbaa !48
  %93 = add nsw i32 %92, 1
  store i32 %93, ptr %1, align 4, !tbaa !48
  br i1 %10, label %99, label %94

94:                                               ; preds = %91
  store i32 %29, ptr %82, align 4, !tbaa !138
  %95 = load i32, ptr %86, align 4, !tbaa !138
  %96 = getelementptr inbounds %struct.BodySpring, ptr %82, i64 0, i32 1
  store i32 %95, ptr %96, align 4, !tbaa !139
  %97 = getelementptr inbounds %struct.BodySpring, ptr %82, i64 0, i32 6
  store i32 2, ptr %97, align 4, !tbaa !121
  %98 = getelementptr inbounds %struct.BodySpring, ptr %82, i64 1
  br label %99

99:                                               ; preds = %91, %94, %80
  %100 = phi ptr [ %98, %94 ], [ %82, %91 ], [ %82, %80 ]
  %101 = getelementptr inbounds %struct.BodySpring, ptr %75, i64 %85, i32 1
  %102 = load i32, ptr %101, align 4, !tbaa !139
  %103 = icmp ne i32 %102, %68
  %104 = icmp sgt i32 %102, %29
  %105 = select i1 %103, i1 %104, i1 false
  br i1 %105, label %106, label %114

106:                                              ; preds = %99
  %107 = load i32, ptr %1, align 4, !tbaa !48
  %108 = add nsw i32 %107, 1
  store i32 %108, ptr %1, align 4, !tbaa !48
  br i1 %10, label %114, label %109

109:                                              ; preds = %106
  store i32 %29, ptr %100, align 4, !tbaa !138
  %110 = load i32, ptr %101, align 4, !tbaa !139
  %111 = getelementptr inbounds %struct.BodySpring, ptr %100, i64 0, i32 1
  store i32 %110, ptr %111, align 4, !tbaa !139
  %112 = getelementptr inbounds %struct.BodySpring, ptr %100, i64 0, i32 6
  store i32 2, ptr %112, align 4, !tbaa !121
  %113 = getelementptr inbounds %struct.BodySpring, ptr %100, i64 1
  br label %114

114:                                              ; preds = %99, %109, %106
  %115 = phi ptr [ %113, %109 ], [ %100, %106 ], [ %100, %99 ]
  %116 = add nsw i64 %81, -1
  %117 = icmp sgt i64 %81, 1
  br i1 %117, label %80, label %118, !llvm.loop !217

118:                                              ; preds = %114, %70, %66
  %119 = phi ptr [ %39, %66 ], [ %39, %70 ], [ %115, %114 ]
  %120 = add nsw i64 %37, -1
  %121 = icmp sgt i64 %37, 1
  br i1 %121, label %36, label %122, !llvm.loop !218

122:                                              ; preds = %118, %23
  %123 = phi ptr [ %27, %23 ], [ %119, %118 ]
  %124 = phi i32 [ %25, %23 ], [ %68, %118 ]
  %125 = add nsw i32 %26, -1
  %126 = getelementptr inbounds %struct.BodyPoint, ptr %24, i64 1
  %127 = icmp sgt i32 %26, 1
  br i1 %127, label %23, label %128, !llvm.loop !219

128:                                              ; preds = %122, %16, %3
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #12 !PGOFuncName !220 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #25
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #24
  %4 = call fastcc float @len_v3(ptr noundef nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #25
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 !PGOFuncName !221 {
  %4 = load float, ptr %1, align 4, !tbaa !44
  %5 = load float, ptr %2, align 4, !tbaa !44
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !44
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !44
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !44
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !44
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !44
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !44
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #12 !PGOFuncName !222 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #24
  %3 = tail call float @sqrtf(float noundef %2) #23
  ret float %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #14 !PGOFuncName !223 {
  %3 = load float, ptr %0, align 4, !tbaa !44
  %4 = load float, ptr %1, align 4, !tbaa !44
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !44
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !44
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !44
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !44
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #15

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #16 !PGOFuncName !224 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #16 !PGOFuncName !225 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @makelatticesprings(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !226 {
  %5 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 2
  %6 = load i16, ptr %5, align 8, !tbaa !126
  %7 = sext i16 %6 to i32
  %8 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 3
  %9 = load i16, ptr %8, align 2, !tbaa !128
  %10 = sext i16 %9 to i32
  %11 = mul nsw i32 %10, %7
  %12 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 4
  %13 = load i16, ptr %12, align 4, !tbaa !129
  %14 = icmp sgt i16 %13, 0
  br i1 %14, label %15, label %186

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 21
  %17 = load ptr, ptr %16, align 8, !tbaa !227
  %18 = sext i32 %11 to i64
  %19 = sub nsw i64 0, %18
  %20 = sext i16 %6 to i64
  %21 = sub nsw i64 0, %20
  %22 = icmp eq i32 %2, 0
  %23 = add nsw i32 %11, %7
  %24 = xor i32 %23, -1
  %25 = xor i32 %11, -1
  %26 = add nsw i32 %25, %7
  %27 = xor i32 %7, -1
  %28 = add nsw i32 %11, %27
  %29 = add nsw i32 %7, -1
  %30 = add nsw i32 %29, %11
  br label %31

31:                                               ; preds = %15, %175
  %32 = phi i16 [ %13, %15 ], [ %176, %175 ]
  %33 = phi i16 [ %9, %15 ], [ %177, %175 ]
  %34 = phi i16 [ %6, %15 ], [ %178, %175 ]
  %35 = phi i16 [ %9, %15 ], [ %179, %175 ]
  %36 = phi i32 [ 0, %15 ], [ %182, %175 ]
  %37 = phi ptr [ %1, %15 ], [ %181, %175 ]
  %38 = phi ptr [ %17, %15 ], [ %180, %175 ]
  %39 = phi i32 [ 0, %15 ], [ %183, %175 ]
  %40 = icmp sgt i16 %35, 0
  br i1 %40, label %41, label %175

41:                                               ; preds = %31
  %42 = icmp eq i32 %39, 0
  br label %43

43:                                               ; preds = %41, %164
  %44 = phi i16 [ %33, %41 ], [ %165, %164 ]
  %45 = phi i16 [ %34, %41 ], [ %166, %164 ]
  %46 = phi i32 [ %36, %41 ], [ %169, %164 ]
  %47 = phi ptr [ %37, %41 ], [ %168, %164 ]
  %48 = phi ptr [ %38, %41 ], [ %167, %164 ]
  %49 = phi i32 [ 0, %41 ], [ %170, %164 ]
  %50 = icmp sgt i16 %45, 0
  br i1 %50, label %51, label %164

51:                                               ; preds = %43
  %52 = icmp ne i32 %49, 0
  br label %53

53:                                               ; preds = %51, %154
  %54 = phi i32 [ 0, %51 ], [ %55, %154 ]
  %55 = phi i32 [ %46, %51 ], [ %158, %154 ]
  %56 = phi ptr [ %47, %51 ], [ %155, %154 ]
  %57 = phi ptr [ %48, %51 ], [ %157, %154 ]
  %58 = phi i32 [ 0, %51 ], [ %156, %154 ]
  %59 = phi ptr [ null, %51 ], [ %57, %154 ]
  br i1 %42, label %68, label %60

60:                                               ; preds = %53
  store i32 %55, ptr %56, align 4, !tbaa !138
  %61 = sub nsw i32 %55, %11
  %62 = getelementptr inbounds %struct.BodySpring, ptr %56, i64 0, i32 1
  store i32 %61, ptr %62, align 4, !tbaa !139
  %63 = getelementptr inbounds %struct.BodySpring, ptr %56, i64 0, i32 6
  store i32 1, ptr %63, align 4, !tbaa !121
  %64 = getelementptr inbounds %struct.BPoint, ptr %57, i64 %19
  %65 = tail call fastcc float @globallen(ptr noundef %64, ptr noundef %57, ptr noundef %3) #24
  %66 = getelementptr inbounds %struct.BodySpring, ptr %56, i64 0, i32 2
  store float %65, ptr %66, align 4, !tbaa !140
  %67 = getelementptr inbounds %struct.BodySpring, ptr %56, i64 1
  br label %68

68:                                               ; preds = %60, %53
  %69 = phi ptr [ %67, %60 ], [ %56, %53 ]
  br i1 %52, label %70, label %78

70:                                               ; preds = %68
  store i32 %55, ptr %69, align 4, !tbaa !138
  %71 = sub nsw i32 %55, %7
  %72 = getelementptr inbounds %struct.BodySpring, ptr %69, i64 0, i32 1
  store i32 %71, ptr %72, align 4, !tbaa !139
  %73 = getelementptr inbounds %struct.BodySpring, ptr %69, i64 0, i32 6
  store i32 1, ptr %73, align 4, !tbaa !121
  %74 = getelementptr inbounds %struct.BPoint, ptr %57, i64 %21
  %75 = tail call fastcc float @globallen(ptr noundef %74, ptr noundef %57, ptr noundef %3) #24
  %76 = getelementptr inbounds %struct.BodySpring, ptr %69, i64 0, i32 2
  store float %75, ptr %76, align 4, !tbaa !140
  %77 = getelementptr inbounds %struct.BodySpring, ptr %69, i64 1
  br label %78

78:                                               ; preds = %70, %68
  %79 = phi ptr [ %77, %70 ], [ %69, %68 ]
  %80 = icmp ne i32 %58, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  store i32 %54, ptr %79, align 4, !tbaa !138
  %82 = getelementptr inbounds %struct.BodySpring, ptr %79, i64 0, i32 1
  store i32 %55, ptr %82, align 4, !tbaa !139
  %83 = getelementptr inbounds %struct.BodySpring, ptr %79, i64 0, i32 6
  store i32 1, ptr %83, align 4, !tbaa !121
  %84 = tail call fastcc float @globallen(ptr noundef %59, ptr noundef %57, ptr noundef %3) #24
  %85 = getelementptr inbounds %struct.BodySpring, ptr %79, i64 0, i32 2
  store float %84, ptr %85, align 4, !tbaa !140
  %86 = getelementptr inbounds %struct.BodySpring, ptr %79, i64 1
  br label %87

87:                                               ; preds = %81, %78
  %88 = phi ptr [ %86, %81 ], [ %79, %78 ]
  br i1 %22, label %154, label %89

89:                                               ; preds = %87
  br i1 %42, label %119, label %90

90:                                               ; preds = %89
  %91 = and i1 %52, %80
  br i1 %91, label %92, label %102

92:                                               ; preds = %90
  store i32 %55, ptr %88, align 4, !tbaa !138
  %93 = add i32 %55, %24
  %94 = getelementptr inbounds %struct.BodySpring, ptr %88, i64 0, i32 1
  store i32 %93, ptr %94, align 4, !tbaa !139
  %95 = getelementptr inbounds %struct.BodySpring, ptr %88, i64 0, i32 6
  store i32 2, ptr %95, align 4, !tbaa !121
  %96 = getelementptr inbounds %struct.BPoint, ptr %57, i64 %19
  %97 = getelementptr inbounds %struct.BPoint, ptr %96, i64 %21
  %98 = getelementptr inbounds %struct.BPoint, ptr %97, i64 -1
  %99 = tail call fastcc float @globallen(ptr noundef nonnull %98, ptr noundef %57, ptr noundef %3) #24
  %100 = getelementptr inbounds %struct.BodySpring, ptr %88, i64 0, i32 2
  store float %99, ptr %100, align 4, !tbaa !140
  %101 = getelementptr inbounds %struct.BodySpring, ptr %88, i64 1
  br label %102

102:                                              ; preds = %92, %90
  %103 = phi ptr [ %101, %92 ], [ %88, %90 ]
  %104 = load i16, ptr %8, align 2, !tbaa !128
  %105 = sext i16 %104 to i32
  %106 = add nsw i32 %105, -1
  %107 = icmp slt i32 %49, %106
  %108 = and i1 %80, %107
  br i1 %108, label %109, label %119

109:                                              ; preds = %102
  store i32 %55, ptr %103, align 4, !tbaa !138
  %110 = add i32 %26, %55
  %111 = getelementptr inbounds %struct.BodySpring, ptr %103, i64 0, i32 1
  store i32 %110, ptr %111, align 4, !tbaa !139
  %112 = getelementptr inbounds %struct.BodySpring, ptr %103, i64 0, i32 6
  store i32 2, ptr %112, align 4, !tbaa !121
  %113 = getelementptr inbounds %struct.BPoint, ptr %57, i64 %19
  %114 = getelementptr inbounds %struct.BPoint, ptr %113, i64 %20
  %115 = getelementptr inbounds %struct.BPoint, ptr %114, i64 -1
  %116 = tail call fastcc float @globallen(ptr noundef nonnull %115, ptr noundef %57, ptr noundef %3) #24
  %117 = getelementptr inbounds %struct.BodySpring, ptr %103, i64 0, i32 2
  store float %116, ptr %117, align 4, !tbaa !140
  %118 = getelementptr inbounds %struct.BodySpring, ptr %103, i64 1
  br label %119

119:                                              ; preds = %102, %109, %89
  %120 = phi ptr [ %118, %109 ], [ %103, %102 ], [ %88, %89 ]
  %121 = load i16, ptr %12, align 4, !tbaa !129
  %122 = sext i16 %121 to i32
  %123 = add nsw i32 %122, -1
  %124 = icmp slt i32 %39, %123
  br i1 %124, label %125, label %154

125:                                              ; preds = %119
  %126 = and i1 %52, %80
  br i1 %126, label %127, label %137

127:                                              ; preds = %125
  store i32 %55, ptr %120, align 4, !tbaa !138
  %128 = add i32 %28, %55
  %129 = getelementptr inbounds %struct.BodySpring, ptr %120, i64 0, i32 1
  store i32 %128, ptr %129, align 4, !tbaa !139
  %130 = getelementptr inbounds %struct.BodySpring, ptr %120, i64 0, i32 6
  store i32 2, ptr %130, align 4, !tbaa !121
  %131 = getelementptr inbounds %struct.BPoint, ptr %57, i64 %18
  %132 = getelementptr inbounds %struct.BPoint, ptr %131, i64 %21
  %133 = getelementptr inbounds %struct.BPoint, ptr %132, i64 -1
  %134 = tail call fastcc float @globallen(ptr noundef nonnull %133, ptr noundef %57, ptr noundef %3) #24
  %135 = getelementptr inbounds %struct.BodySpring, ptr %120, i64 0, i32 2
  store float %134, ptr %135, align 4, !tbaa !140
  %136 = getelementptr inbounds %struct.BodySpring, ptr %120, i64 1
  br label %137

137:                                              ; preds = %127, %125
  %138 = phi ptr [ %136, %127 ], [ %120, %125 ]
  %139 = load i16, ptr %8, align 2, !tbaa !128
  %140 = sext i16 %139 to i32
  %141 = add nsw i32 %140, -1
  %142 = icmp slt i32 %49, %141
  %143 = and i1 %80, %142
  br i1 %143, label %144, label %154

144:                                              ; preds = %137
  store i32 %55, ptr %138, align 4, !tbaa !138
  %145 = add i32 %30, %55
  %146 = getelementptr inbounds %struct.BodySpring, ptr %138, i64 0, i32 1
  store i32 %145, ptr %146, align 4, !tbaa !139
  %147 = getelementptr inbounds %struct.BodySpring, ptr %138, i64 0, i32 6
  store i32 2, ptr %147, align 4, !tbaa !121
  %148 = getelementptr inbounds %struct.BPoint, ptr %57, i64 %18
  %149 = getelementptr inbounds %struct.BPoint, ptr %148, i64 %20
  %150 = getelementptr inbounds %struct.BPoint, ptr %149, i64 -1
  %151 = tail call fastcc float @globallen(ptr noundef nonnull %150, ptr noundef %57, ptr noundef %3) #24
  %152 = getelementptr inbounds %struct.BodySpring, ptr %138, i64 0, i32 2
  store float %151, ptr %152, align 4, !tbaa !140
  %153 = getelementptr inbounds %struct.BodySpring, ptr %138, i64 1
  br label %154

154:                                              ; preds = %119, %144, %137, %87
  %155 = phi ptr [ %153, %144 ], [ %138, %137 ], [ %120, %119 ], [ %88, %87 ]
  %156 = add nuw nsw i32 %58, 1
  %157 = getelementptr inbounds %struct.BPoint, ptr %57, i64 1
  %158 = add nsw i32 %55, 1
  %159 = load i16, ptr %5, align 8, !tbaa !126
  %160 = sext i16 %159 to i32
  %161 = icmp slt i32 %156, %160
  br i1 %161, label %53, label %162, !llvm.loop !228

162:                                              ; preds = %154
  %163 = load i16, ptr %8, align 2, !tbaa !128
  br label %164

164:                                              ; preds = %162, %43
  %165 = phi i16 [ %44, %43 ], [ %163, %162 ]
  %166 = phi i16 [ %45, %43 ], [ %159, %162 ]
  %167 = phi ptr [ %48, %43 ], [ %157, %162 ]
  %168 = phi ptr [ %47, %43 ], [ %155, %162 ]
  %169 = phi i32 [ %46, %43 ], [ %158, %162 ]
  %170 = add nuw nsw i32 %49, 1
  %171 = sext i16 %165 to i32
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %43, label %173, !llvm.loop !229

173:                                              ; preds = %164
  %174 = load i16, ptr %12, align 4, !tbaa !129
  br label %175

175:                                              ; preds = %173, %31
  %176 = phi i16 [ %32, %31 ], [ %174, %173 ]
  %177 = phi i16 [ %33, %31 ], [ %165, %173 ]
  %178 = phi i16 [ %34, %31 ], [ %166, %173 ]
  %179 = phi i16 [ %35, %31 ], [ %165, %173 ]
  %180 = phi ptr [ %38, %31 ], [ %167, %173 ]
  %181 = phi ptr [ %37, %31 ], [ %168, %173 ]
  %182 = phi i32 [ %36, %31 ], [ %169, %173 ]
  %183 = add nuw nsw i32 %39, 1
  %184 = sext i16 %176 to i32
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %31, label %186, !llvm.loop !230

186:                                              ; preds = %175, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @globallen(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !231 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #25
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef %0) #24
  %6 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  call void @mul_m4_v3(ptr noundef nonnull %6, ptr noundef nonnull %4) #23
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef %1) #24
  call void @mul_m4_v3(ptr noundef nonnull %6, ptr noundef nonnull %5) #23
  %7 = call fastcc float @len_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #25
  ret float %7
}

; Function Attrs: optsize
declare i32 @BKE_nurbList_verts_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #17 !PGOFuncName !232 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !44
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !44
  ret void
}

; Function Attrs: optsize
declare void @unit_m3(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @reference_to_scratch(ptr noundef %0) unnamed_addr #0 !PGOFuncName !233 {
  %2 = alloca [3 x float], align 4
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 111
  %4 = load ptr, ptr %3, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i64 12, i1 false)
  %5 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %6 = load i32, ptr %4, align 8, !tbaa !69
  %7 = sext i32 %6 to i64
  %8 = shl nsw i64 %7, 4
  %9 = tail call ptr %5(i64 noundef %8, ptr noundef nonnull @.str.9) #23
  %10 = getelementptr inbounds %struct.SoftBody, ptr %4, i64 0, i32 44
  %11 = load ptr, ptr %10, align 8, !tbaa !60
  %12 = getelementptr inbounds %struct.SBScratch, ptr %11, i64 0, i32 7, i32 1
  store ptr %9, ptr %12, align 8, !tbaa !66
  %13 = load i32, ptr %4, align 8, !tbaa !69
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %1
  %16 = load ptr, ptr %3, align 8, !tbaa !75
  %17 = getelementptr inbounds %struct.SoftBody, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !68
  br label %19

19:                                               ; preds = %15, %19
  %20 = phi i32 [ %27, %19 ], [ 0, %15 ]
  %21 = phi float [ %26, %19 ], [ 0.000000e+00, %15 ]
  %22 = phi ptr [ %29, %19 ], [ %18, %15 ]
  %23 = phi ptr [ %28, %19 ], [ %9, %15 ]
  %24 = getelementptr inbounds %struct.BodyPoint, ptr %22, i64 0, i32 3
  tail call fastcc void @copy_v3_v3(ptr noundef %23, ptr noundef nonnull %24) #24
  call fastcc void @add_v3_v3(ptr noundef nonnull %2, ptr noundef nonnull %24) #24
  %25 = tail call fastcc float @_final_mass(ptr noundef %0, ptr noundef %22) #24
  %26 = fadd float %21, %25
  %27 = add nuw nsw i32 %20, 1
  %28 = getelementptr inbounds %struct.ReferenceVert, ptr %23, i64 1
  %29 = getelementptr inbounds %struct.BodyPoint, ptr %22, i64 1
  %30 = load i32, ptr %4, align 8, !tbaa !69
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %19, label %32, !llvm.loop !234

32:                                               ; preds = %19
  %33 = load ptr, ptr %10, align 8, !tbaa !60
  br label %34

34:                                               ; preds = %32, %1
  %35 = phi ptr [ %11, %1 ], [ %33, %32 ]
  %36 = phi float [ 0.000000e+00, %1 ], [ %26, %32 ]
  %37 = fdiv float 1.000000e+00, %36
  call fastcc void @mul_v3_fl(ptr noundef nonnull %2, float noundef %37) #24
  %38 = getelementptr inbounds %struct.SBScratch, ptr %35, i64 0, i32 7
  call fastcc void @copy_v3_v3(ptr noundef nonnull %38, ptr noundef nonnull %2) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mesh_faces_to_scratch(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !235 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 111
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !109
  %6 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 28
  %8 = load i32, ptr %7, align 8, !tbaa !191
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 5
  %11 = tail call ptr %6(i64 noundef %10, ptr noundef nonnull @.str.11) #23
  %12 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 44
  %13 = load ptr, ptr %12, align 8, !tbaa !60
  %14 = getelementptr inbounds %struct.SBScratch, ptr %13, i64 0, i32 3
  store ptr %11, ptr %14, align 8, !tbaa !64
  %15 = load i32, ptr %7, align 8, !tbaa !191
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 12
  %19 = load ptr, ptr %18, align 8, !tbaa !190
  br label %20

20:                                               ; preds = %17, %20
  %21 = phi i32 [ %26, %20 ], [ 0, %17 ]
  %22 = phi ptr [ %28, %20 ], [ %11, %17 ]
  %23 = phi ptr [ %27, %20 ], [ %19, %17 ]
  %24 = load <4 x i32>, ptr %23, align 4, !tbaa !48
  store <4 x i32> %24, ptr %22, align 4, !tbaa !48
  %25 = getelementptr inbounds %struct.BodyFace, ptr %22, i64 0, i32 4
  %26 = add nuw nsw i32 %21, 1
  %27 = getelementptr inbounds %struct.MFace, ptr %23, i64 1
  %28 = getelementptr inbounds %struct.BodyFace, ptr %22, i64 1
  %29 = icmp eq i32 %26, %15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %25, i8 0, i64 14, i1 false)
  br i1 %29, label %30, label %20, !llvm.loop !236

30:                                               ; preds = %20, %1
  %31 = getelementptr inbounds %struct.SBScratch, ptr %13, i64 0, i32 4
  store i32 %15, ptr %31, align 8, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #18

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !237 {
  %3 = load float, ptr %1, align 4, !tbaa !44
  %4 = load float, ptr %0, align 4, !tbaa !44
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !44
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !44
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !44
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !44
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !44
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !44
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !44
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc float @_final_mass(ptr noundef readonly %0, ptr noundef readonly %1) unnamed_addr #10 !PGOFuncName !238 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 111
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = icmp ne ptr %6, null
  %8 = icmp ne ptr %1, null
  %9 = and i1 %8, %7
  br i1 %9, label %10, label %16

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.BodyPoint, ptr %1, i64 0, i32 20
  %12 = load float, ptr %11, align 4, !tbaa !239
  %13 = getelementptr inbounds %struct.SoftBody, ptr %6, i64 0, i32 7
  %14 = load float, ptr %13, align 4, !tbaa !38
  %15 = fmul float %12, %14
  br label %18

16:                                               ; preds = %4, %2
  %17 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %18

18:                                               ; preds = %10, %16
  %19 = phi float [ %15, %10 ], [ 1.000000e+00, %16 ]
  ret float %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #4 !PGOFuncName !240 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !44
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !44
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !44
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !44
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare double @PIL_check_seconds_timer() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ccd_update_deflector_hash(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !241 {
  %4 = icmp ne ptr %2, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %5, %4
  br i1 %6, label %7, label %43

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %43, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 52
  br label %13

13:                                               ; preds = %11, %40
  %14 = phi ptr [ %9, %11 ], [ %41, %40 ]
  %15 = getelementptr inbounds %struct.Base, ptr %14, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !242
  %17 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 3
  %18 = load i16, ptr %17, align 8, !tbaa !85
  %19 = icmp eq i16 %18, 1
  br i1 %19, label %20, label %40

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.Base, ptr %14, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !244
  %23 = load i32, ptr %12, align 8, !tbaa !245
  %24 = and i32 %23, %22
  %25 = icmp eq i32 %24, 0
  %26 = icmp eq ptr %16, %1
  %27 = or i1 %25, %26
  br i1 %27, label %40, label %28

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 110
  %30 = load ptr, ptr %29, align 8, !tbaa !246
  %31 = icmp eq ptr %30, null
  br i1 %31, label %40, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.PartDeflect, ptr %30, i64 0, i32 1
  %34 = load i16, ptr %33, align 4, !tbaa !247
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = tail call ptr @BLI_ghash_lookup(ptr noundef nonnull %2, ptr noundef nonnull %16) #23
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  tail call fastcc void @ccd_mesh_update(ptr noundef nonnull %16, ptr noundef nonnull %37) #24
  br label %40

40:                                               ; preds = %13, %20, %32, %28, %39, %36
  %41 = load ptr, ptr %14, align 8, !tbaa !34
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %13, !llvm.loop !249

43:                                               ; preds = %40, %7, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @query_external_colliders(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !250 {
  %3 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 52
  %4 = load i32, ptr %3, align 8, !tbaa !245
  %5 = tail call fastcc i32 @are_there_deflectors(ptr noundef %0, i32 noundef %4) #24, !range !159
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ccd_build_deflector_hash(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !251 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %42, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %42, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 52
  br label %11

11:                                               ; preds = %9, %39
  %12 = phi ptr [ %7, %9 ], [ %40, %39 ]
  %13 = getelementptr inbounds %struct.Base, ptr %12, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !242
  %15 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 3
  %16 = load i16, ptr %15, align 8, !tbaa !85
  %17 = icmp eq i16 %16, 1
  br i1 %17, label %18, label %39

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.Base, ptr %12, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !244
  %21 = load i32, ptr %10, align 8, !tbaa !245
  %22 = and i32 %21, %20
  %23 = icmp eq i32 %22, 0
  %24 = icmp eq ptr %14, %1
  %25 = or i1 %23, %24
  br i1 %25, label %39, label %26

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 110
  %28 = load ptr, ptr %27, align 8, !tbaa !246
  %29 = icmp eq ptr %28, null
  br i1 %29, label %39, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.PartDeflect, ptr %28, i64 0, i32 1
  %32 = load i16, ptr %31, align 4, !tbaa !247
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  %35 = tail call ptr @BLI_ghash_lookup(ptr noundef nonnull %2, ptr noundef nonnull %14) #23
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = tail call fastcc ptr @ccd_mesh_make(ptr noundef nonnull %14) #24
  tail call void @BLI_ghash_insert(ptr noundef nonnull %2, ptr noundef nonnull %14, ptr noundef %38) #23
  br label %39

39:                                               ; preds = %11, %18, %37, %34, %30, %26
  %40 = load ptr, ptr %12, align 8, !tbaa !34
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %11, !llvm.loop !252

42:                                               ; preds = %39, %5, %3
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @interpolate_exciter(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #10 !PGOFuncName !253 {
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 111
  %5 = load ptr, ptr %4, align 8, !tbaa !75
  %6 = sitofp i32 %2 to float
  %7 = sitofp i32 %1 to float
  %8 = fdiv float %6, %7
  %9 = load i32, ptr %5, align 8, !tbaa !69
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %47

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.SoftBody, ptr %5, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !68
  %14 = insertelement <2 x float> poison, float %8, i64 0
  %15 = shufflevector <2 x float> %14, <2 x float> poison, <2 x i32> zeroinitializer
  br label %16

16:                                               ; preds = %11, %43
  %17 = phi i32 [ %44, %43 ], [ %9, %11 ]
  %18 = phi ptr [ %45, %43 ], [ %13, %11 ]
  %19 = getelementptr inbounds %struct.BodyPoint, ptr %18, i64 0, i32 1
  %20 = getelementptr inbounds %struct.BodyPoint, ptr %18, i64 0, i32 2
  %21 = load <2 x float>, ptr %18, align 8, !tbaa !44
  %22 = load <2 x float>, ptr %19, align 4, !tbaa !44
  %23 = fsub <2 x float> %22, %21
  %24 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %15, <2 x float> %23, <2 x float> %21)
  store <2 x float> %24, ptr %20, align 8, !tbaa !44
  %25 = getelementptr inbounds [3 x float], ptr %18, i64 0, i64 2
  %26 = load float, ptr %25, align 8, !tbaa !44
  %27 = getelementptr inbounds %struct.BodyPoint, ptr %18, i64 0, i32 1, i64 2
  %28 = load float, ptr %27, align 4, !tbaa !44
  %29 = fsub float %28, %26
  %30 = tail call float @llvm.fmuladd.f32(float %8, float %29, float %26)
  %31 = getelementptr inbounds %struct.BodyPoint, ptr %18, i64 0, i32 2, i64 2
  store float %30, ptr %31, align 8, !tbaa !44
  %32 = tail call fastcc float @_final_goal(ptr noundef %0, ptr noundef nonnull %18) #24
  %33 = fcmp ult float %32, 0x3FEFF7CEE0000000
  br i1 %33, label %43, label %34

34:                                               ; preds = %16
  %35 = getelementptr inbounds %struct.BodyPoint, ptr %18, i64 0, i32 4
  %36 = load <2 x float>, ptr %19, align 4, !tbaa !44
  %37 = load <2 x float>, ptr %18, align 8, !tbaa !44
  %38 = fsub <2 x float> %36, %37
  store <2 x float> %38, ptr %35, align 8, !tbaa !44
  %39 = load float, ptr %27, align 4, !tbaa !44
  %40 = load float, ptr %25, align 8, !tbaa !44
  %41 = fsub float %39, %40
  %42 = getelementptr inbounds %struct.BodyPoint, ptr %18, i64 0, i32 4, i64 2
  store float %41, ptr %42, align 8, !tbaa !44
  br label %43

43:                                               ; preds = %16, %34
  %44 = add nsw i32 %17, -1
  %45 = getelementptr inbounds %struct.BodyPoint, ptr %18, i64 1
  %46 = icmp sgt i32 %17, 1
  br i1 %46, label %16, label %47, !llvm.loop !254

47:                                               ; preds = %43, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @softbody_calc_forces(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3) unnamed_addr #0 !PGOFuncName !255 {
  %5 = alloca ptr, align 8
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 8
  %11 = alloca [3 x float], align 8
  %12 = alloca %struct.EffectedPoint, align 8
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x float], align 4
  %17 = alloca [3 x float], align 4
  %18 = alloca [3 x float], align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = load i16, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 14), align 4, !tbaa !256
  %22 = and i16 %21, 16
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  tail call fastcc void @softbody_calc_forcesEx(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3) #24
  br label %398

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 111
  %27 = load ptr, ptr %26, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i64 12, i1 false)
  %28 = getelementptr inbounds %struct.SoftBody, ptr %27, i64 0, i32 35
  %29 = load float, ptr %28, align 4, !tbaa !49
  %30 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 40, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !257
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 40
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %35) #24
  %36 = getelementptr inbounds %struct.SoftBody, ptr %27, i64 0, i32 49
  %37 = load ptr, ptr %36, align 8, !tbaa !57
  %38 = getelementptr inbounds %struct.EffectorWeights, ptr %37, i64 0, i32 2
  %39 = load float, ptr %38, align 8, !tbaa !258
  %40 = fmul float %39, 0x3F50624DE0000000
  call fastcc void @mul_v3_fl(ptr noundef nonnull %6, float noundef %40) #24
  br label %41

41:                                               ; preds = %34, %25
  %42 = tail call fastcc i32 @query_external_colliders(ptr noundef nonnull %0, ptr noundef nonnull %1) #24, !range !159
  %43 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 104
  %44 = load i16, ptr %43, align 2, !tbaa !84
  %45 = zext i16 %44 to i32
  %46 = and i32 %45, 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.SoftBody, ptr %27, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !74
  %51 = icmp ne ptr %50, null
  %52 = and i32 %45, 512
  %53 = icmp ne i32 %52, 0
  %54 = and i1 %53, %51
  %55 = icmp eq i32 %42, 0
  br i1 %55, label %61, label %58

56:                                               ; preds = %41
  %57 = icmp eq i32 %42, 0
  br label %61

58:                                               ; preds = %48
  %59 = and i32 %45, 2048
  %60 = icmp ne i32 %59, 0
  br label %61

61:                                               ; preds = %48, %56, %58
  %62 = phi i1 [ true, %48 ], [ false, %58 ], [ %57, %56 ]
  %63 = phi i1 [ %54, %48 ], [ %54, %58 ], [ false, %56 ]
  %64 = phi i1 [ false, %48 ], [ %60, %58 ], [ false, %56 ]
  %65 = getelementptr inbounds %struct.SoftBody, ptr %27, i64 0, i32 37
  %66 = load i16, ptr %65, align 2, !tbaa !260
  %67 = icmp ne i16 %66, 0
  %68 = and i16 %44, 4
  %69 = icmp ne i16 %68, 0
  %70 = and i1 %69, %67
  %71 = select i1 %64, i1 true, i1 %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %61
  tail call fastcc void @scan_for_ext_spring_forces(ptr noundef nonnull %0, ptr noundef nonnull %1, float noundef %3) #24
  %73 = load ptr, ptr %26, align 8, !tbaa !75
  br label %74

74:                                               ; preds = %61, %72
  %75 = phi ptr [ %27, %61 ], [ %73, %72 ]
  %76 = getelementptr inbounds %struct.SoftBody, ptr %75, i64 0, i32 49
  %77 = load ptr, ptr %76, align 8, !tbaa !57
  %78 = tail call ptr @pdInitEffectors(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef null, ptr noundef %77, i8 noundef zeroext 1) #23
  store ptr %78, ptr %5, align 8, !tbaa !34
  br i1 %62, label %82, label %79

79:                                               ; preds = %74
  %80 = tail call fastcc i32 @sb_detect_aabb_collisionCached(ptr noundef nonnull %1) #24
  %81 = icmp eq i32 %80, 0
  br label %82

82:                                               ; preds = %79, %74
  %83 = phi i1 [ %81, %79 ], [ true, %74 ]
  %84 = load i32, ptr %27, align 8, !tbaa !69
  %85 = getelementptr inbounds %struct.SoftBody, ptr %27, i64 0, i32 2
  %86 = icmp sgt i32 %84, 0
  br i1 %86, label %87, label %392

87:                                               ; preds = %82
  %88 = load ptr, ptr %85, align 8, !tbaa !68
  %89 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  %90 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  %91 = getelementptr inbounds %struct.SoftBody, ptr %27, i64 0, i32 3
  %92 = fmul float %29, 2.000000e+00
  %93 = getelementptr inbounds %struct.SoftBody, ptr %27, i64 0, i32 34
  %94 = getelementptr inbounds %struct.SoftBody, ptr %27, i64 0, i32 13
  %95 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %96 = getelementptr inbounds %struct.SoftBody, ptr %27, i64 0, i32 14
  %97 = fcmp ogt float %2, 0.000000e+00
  %98 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  %99 = getelementptr inbounds %struct.SoftBody, ptr %27, i64 0, i32 49
  %100 = getelementptr inbounds %struct.SoftBody, ptr %27, i64 0, i32 10
  %101 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 1
  %102 = getelementptr inbounds %struct.SoftBody, ptr %27, i64 0, i32 44
  %103 = getelementptr inbounds %struct.SoftBody, ptr %27, i64 0, i32 40
  br label %104

104:                                              ; preds = %87, %388
  %105 = phi ptr [ %88, %87 ], [ %390, %388 ]
  %106 = phi i32 [ %84, %87 ], [ %389, %388 ]
  %107 = getelementptr inbounds %struct.BodyPoint, ptr %105, i64 0, i32 5
  %108 = getelementptr inbounds %struct.BodyPoint, ptr %105, i64 0, i32 5, i64 2
  store float 0.000000e+00, ptr %108, align 4, !tbaa !44
  %109 = getelementptr inbounds %struct.BodyPoint, ptr %105, i64 0, i32 5, i64 1
  store <2 x float> zeroinitializer, ptr %107, align 4, !tbaa !44
  br i1 %63, label %110, label %206

110:                                              ; preds = %104
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #25
  %111 = load i32, ptr %27, align 8, !tbaa !69
  %112 = icmp slt i32 %111, %106
  br i1 %112, label %205, label %113

113:                                              ; preds = %110
  %114 = load ptr, ptr %85, align 8, !tbaa !68
  %115 = getelementptr inbounds %struct.BodyPoint, ptr %105, i64 0, i32 18
  %116 = getelementptr inbounds %struct.BodyPoint, ptr %105, i64 0, i32 3
  %117 = getelementptr inbounds %struct.BodyPoint, ptr %105, i64 0, i32 4
  br label %118

118:                                              ; preds = %113, %201
  %119 = phi i32 [ %111, %113 ], [ %202, %201 ]
  %120 = phi ptr [ %114, %113 ], [ %203, %201 ]
  %121 = getelementptr inbounds %struct.BodyPoint, ptr %120, i64 0, i32 18
  %122 = load float, ptr %121, align 4, !tbaa !208
  %123 = load float, ptr %115, align 4, !tbaa !208
  %124 = fadd float %122, %123
  %125 = getelementptr inbounds %struct.BodyPoint, ptr %120, i64 0, i32 3
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %116, ptr noundef nonnull %125) #24
  %126 = load float, ptr %9, align 4
  %127 = fcmp olt float %126, 0.000000e+00
  %128 = fneg float %126
  %129 = select i1 %127, float %128, float %126
  %130 = fcmp ogt float %129, %124
  br i1 %130, label %201, label %131

131:                                              ; preds = %118
  %132 = load float, ptr %89, align 4
  %133 = fcmp olt float %132, 0.000000e+00
  %134 = fneg float %132
  %135 = select i1 %133, float %134, float %132
  %136 = fcmp ogt float %135, %124
  br i1 %136, label %201, label %137

137:                                              ; preds = %131
  %138 = load float, ptr %90, align 4
  %139 = fcmp olt float %138, 0.000000e+00
  %140 = fneg float %138
  %141 = select i1 %139, float %140, float %138
  %142 = fcmp ogt float %141, %124
  br i1 %142, label %201, label %143

143:                                              ; preds = %137
  %144 = call fastcc float @normalize_v3(ptr noundef nonnull %9) #24
  %145 = fcmp olt float %144, %124
  br i1 %145, label %146, label %201

146:                                              ; preds = %143
  %147 = getelementptr inbounds %struct.BodyPoint, ptr %120, i64 0, i32 13
  %148 = load i32, ptr %147, align 4, !tbaa !209
  %149 = icmp sgt i32 %148, 0
  br i1 %149, label %150, label %178

150:                                              ; preds = %146
  %151 = load ptr, ptr %91, align 8, !tbaa !74
  %152 = getelementptr inbounds %struct.BodyPoint, ptr %120, i64 0, i32 14
  %153 = load ptr, ptr %152, align 8, !tbaa !70
  %154 = getelementptr i32, ptr %153, i64 -1
  %155 = load i32, ptr %27, align 8, !tbaa !69
  %156 = sub nsw i32 %155, %106
  %157 = zext nneg i32 %148 to i64
  br label %158

158:                                              ; preds = %150, %172
  %159 = phi i64 [ %157, %150 ], [ %174, %172 ]
  %160 = phi i32 [ 0, %150 ], [ %173, %172 ]
  %161 = getelementptr i32, ptr %154, i64 %159
  %162 = load i32, ptr %161, align 4, !tbaa !48
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.BodySpring, ptr %151, i64 %163, i32 1
  %165 = load i32, ptr %164, align 4, !tbaa !139
  %166 = icmp eq i32 %156, %165
  br i1 %166, label %171, label %167

167:                                              ; preds = %158
  %168 = getelementptr inbounds %struct.BodySpring, ptr %151, i64 %163
  %169 = load i32, ptr %168, align 4, !tbaa !138
  %170 = icmp eq i32 %156, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %167, %158
  br label %172

172:                                              ; preds = %167, %171
  %173 = phi i32 [ 1, %171 ], [ %160, %167 ]
  %174 = add nsw i64 %159, -1
  %175 = icmp sgt i64 %159, 1
  br i1 %175, label %158, label %176, !llvm.loop !261

176:                                              ; preds = %172
  %177 = icmp eq i32 %173, 0
  br i1 %177, label %178, label %201

178:                                              ; preds = %146, %176
  %179 = fdiv float %29, %144
  %180 = fmul float %124, %124
  %181 = fdiv float %29, %180
  %182 = call float @llvm.fmuladd.f32(float %181, float %144, float %179)
  %183 = fdiv float %92, %124
  %184 = fsub float %182, %183
  %185 = getelementptr inbounds %struct.BodyPoint, ptr %120, i64 0, i32 4
  call void @mid_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %117, ptr noundef nonnull %185) #23
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %117) #24
  %186 = call fastcc float @_final_mass(ptr noundef %1, ptr noundef %105) #24
  call fastcc void @mul_v3_fl(ptr noundef nonnull %8, float noundef %186) #24
  %187 = load float, ptr %93, align 8, !tbaa !262
  %188 = fsub float 1.000000e+00, %187
  %189 = fmul float %184, %188
  call fastcc void @Vec3PlusStVec(ptr noundef nonnull %107, float noundef %189, ptr noundef nonnull %9) #24
  %190 = load float, ptr %93, align 8, !tbaa !262
  call fastcc void @Vec3PlusStVec(ptr noundef nonnull %107, float noundef %190, ptr noundef nonnull %8) #24
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %185) #24
  %191 = call fastcc float @_final_mass(ptr noundef %1, ptr noundef %105) #24
  %192 = call fastcc float @_final_mass(ptr noundef %1, ptr noundef nonnull %120) #24
  %193 = fadd float %191, %192
  %194 = fmul float %193, 5.000000e-01
  call fastcc void @mul_v3_fl(ptr noundef nonnull %8, float noundef %194) #24
  %195 = getelementptr inbounds %struct.BodyPoint, ptr %120, i64 0, i32 5
  %196 = load float, ptr %93, align 8, !tbaa !262
  call fastcc void @Vec3PlusStVec(ptr noundef nonnull %195, float noundef %196, ptr noundef nonnull %8) #24
  %197 = fneg float %184
  %198 = load float, ptr %93, align 8, !tbaa !262
  %199 = fsub float 1.000000e+00, %198
  %200 = fmul float %199, %197
  call fastcc void @Vec3PlusStVec(ptr noundef nonnull %195, float noundef %200, ptr noundef nonnull %9) #24
  br label %201

201:                                              ; preds = %143, %178, %176, %118, %131, %137
  %202 = add nsw i32 %119, -1
  %203 = getelementptr inbounds %struct.BodyPoint, ptr %120, i64 1
  %204 = icmp sgt i32 %119, %106
  br i1 %204, label %118, label %205, !llvm.loop !263

205:                                              ; preds = %201, %110
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #25
  br label %206

206:                                              ; preds = %205, %104
  %207 = call fastcc float @_final_goal(ptr noundef %1, ptr noundef %105) #24
  %208 = fcmp olt float %207, 0x3FEFF7CEE0000000
  br i1 %208, label %209, label %388

209:                                              ; preds = %206
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #25
  %210 = load i16, ptr %43, align 2, !tbaa !84
  %211 = and i16 %210, 2
  %212 = icmp eq i16 %211, 0
  br i1 %212, label %262, label %213

213:                                              ; preds = %209
  %214 = getelementptr inbounds %struct.BodyPoint, ptr %105, i64 0, i32 3
  %215 = getelementptr inbounds %struct.BodyPoint, ptr %105, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %214, ptr noundef nonnull %215) #24
  %216 = call fastcc float @_final_goal(ptr noundef nonnull %1, ptr noundef %105) #24
  %217 = load float, ptr %94, align 8, !tbaa !264
  %218 = fneg float %216
  %219 = call float @llvm.fmuladd.f32(float %218, float %217, float 1.000000e+00)
  %220 = fdiv float 1.000000e+00, %219
  %221 = fadd float %220, -1.000000e+00
  %222 = fneg float %221
  %223 = load <2 x float>, ptr %10, align 8, !tbaa !44
  %224 = load <2 x float>, ptr %107, align 4, !tbaa !44
  %225 = insertelement <2 x float> poison, float %222, i64 0
  %226 = shufflevector <2 x float> %225, <2 x float> poison, <2 x i32> zeroinitializer
  %227 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %226, <2 x float> %223, <2 x float> %224)
  store <2 x float> %227, ptr %107, align 4, !tbaa !44
  %228 = load float, ptr %95, align 8, !tbaa !44
  %229 = load float, ptr %108, align 4, !tbaa !44
  %230 = call float @llvm.fmuladd.f32(float %222, float %228, float %229)
  store float %230, ptr %108, align 4, !tbaa !44
  %231 = getelementptr inbounds %struct.BodyPoint, ptr %105, i64 0, i32 1
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %11, ptr noundef %105, ptr noundef nonnull %231) #24
  %232 = load float, ptr %96, align 4, !tbaa !265
  %233 = fmul float %232, 0x3F847AE140000000
  %234 = getelementptr inbounds %struct.BodyPoint, ptr %105, i64 0, i32 4
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %234) #24
  br i1 %97, label %235, label %245

235:                                              ; preds = %213
  %236 = fneg float %233
  %237 = load <2 x float>, ptr %10, align 8, !tbaa !44
  %238 = load <2 x float>, ptr %107, align 4, !tbaa !44
  %239 = insertelement <2 x float> poison, float %236, i64 0
  %240 = shufflevector <2 x float> %239, <2 x float> poison, <2 x i32> zeroinitializer
  %241 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %240, <2 x float> %237, <2 x float> %238)
  store <2 x float> %241, ptr %107, align 4, !tbaa !44
  %242 = load float, ptr %95, align 8, !tbaa !44
  %243 = load float, ptr %108, align 4, !tbaa !44
  %244 = call float @llvm.fmuladd.f32(float %236, float %242, float %243)
  br label %260

245:                                              ; preds = %213
  %246 = fneg float %233
  %247 = load <2 x float>, ptr %11, align 8, !tbaa !44
  %248 = load <2 x float>, ptr %234, align 8, !tbaa !44
  %249 = fsub <2 x float> %247, %248
  %250 = load <2 x float>, ptr %107, align 4, !tbaa !44
  %251 = insertelement <2 x float> poison, float %246, i64 0
  %252 = shufflevector <2 x float> %251, <2 x float> poison, <2 x i32> zeroinitializer
  %253 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %252, <2 x float> %249, <2 x float> %250)
  store <2 x float> %253, ptr %107, align 4, !tbaa !44
  %254 = load float, ptr %98, align 8, !tbaa !44
  %255 = getelementptr inbounds %struct.BodyPoint, ptr %105, i64 0, i32 4, i64 2
  %256 = load float, ptr %255, align 8, !tbaa !44
  %257 = fsub float %254, %256
  %258 = load float, ptr %108, align 4, !tbaa !44
  %259 = call float @llvm.fmuladd.f32(float %246, float %257, float %258)
  br label %260

260:                                              ; preds = %245, %235
  %261 = phi float [ %244, %235 ], [ %259, %245 ]
  store float %261, ptr %108, align 4, !tbaa !44
  br label %262

262:                                              ; preds = %260, %209
  %263 = call fastcc float @_final_mass(ptr noundef nonnull %1, ptr noundef %105) #24
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %107, ptr noundef nonnull %6, float noundef %263) #24
  %264 = load ptr, ptr %5, align 8, !tbaa !34
  %265 = icmp eq ptr %264, null
  br i1 %265, label %296, label %266

266:                                              ; preds = %262
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %13, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %14, i8 0, i64 12, i1 false)
  %267 = getelementptr inbounds %struct.BodyPoint, ptr %105, i64 0, i32 3
  %268 = getelementptr inbounds %struct.BodyPoint, ptr %105, i64 0, i32 4
  %269 = load ptr, ptr %85, align 8, !tbaa !68
  %270 = ptrtoint ptr %269 to i64
  %271 = ptrtoint ptr %105 to i64
  %272 = sub i64 %270, %271
  %273 = sdiv exact i64 %272, 192
  %274 = trunc i64 %273 to i32
  call void @pd_point_from_soft(ptr noundef %0, ptr noundef nonnull %267, ptr noundef nonnull %268, i32 noundef %274, ptr noundef nonnull %12) #23
  %275 = load ptr, ptr %5, align 8, !tbaa !34
  %276 = load ptr, ptr %99, align 8, !tbaa !57
  call void @pdDoEffectors(ptr noundef %275, ptr noundef null, ptr noundef %276, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14) #23
  call fastcc void @mul_v3_fl(ptr noundef nonnull %13, float noundef 0xBF847AE140000000) #24
  call fastcc void @add_v3_v3(ptr noundef nonnull %107, ptr noundef nonnull %13) #24
  %277 = load float, ptr %100, align 4, !tbaa !266
  %278 = load float, ptr %268, align 8, !tbaa !44
  %279 = load float, ptr %14, align 4, !tbaa !44
  %280 = fmul float %279, 2.500000e-01
  %281 = fdiv float %280, 0x3F847AE140000000
  %282 = fadd float %278, %281
  %283 = load float, ptr %107, align 4, !tbaa !44
  %284 = fmul float %277, 0xBF847AE140000000
  %285 = call float @llvm.fmuladd.f32(float %284, float %282, float %283)
  store float %285, ptr %107, align 4, !tbaa !44
  %286 = getelementptr inbounds %struct.BodyPoint, ptr %105, i64 0, i32 4, i64 1
  %287 = load <2 x float>, ptr %286, align 4, !tbaa !44
  %288 = load <2 x float>, ptr %101, align 4, !tbaa !44
  %289 = fmul <2 x float> %288, <float 2.500000e-01, float 2.500000e-01>
  %290 = fdiv <2 x float> %289, <float 0x3F847AE140000000, float 0x3F847AE140000000>
  %291 = fadd <2 x float> %287, %290
  %292 = load <2 x float>, ptr %109, align 4, !tbaa !44
  %293 = insertelement <2 x float> poison, float %284, i64 0
  %294 = shufflevector <2 x float> %293, <2 x float> poison, <2 x i32> zeroinitializer
  %295 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %294, <2 x float> %291, <2 x float> %292)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #25
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #25
  br label %311

296:                                              ; preds = %262
  %297 = load float, ptr %100, align 4, !tbaa !266
  %298 = fmul float %297, 0x3F847AE140000000
  %299 = getelementptr inbounds %struct.BodyPoint, ptr %105, i64 0, i32 4
  %300 = load float, ptr %299, align 8, !tbaa !44
  %301 = load float, ptr %107, align 4, !tbaa !44
  %302 = fneg float %300
  %303 = call float @llvm.fmuladd.f32(float %302, float %298, float %301)
  store float %303, ptr %107, align 4, !tbaa !44
  %304 = getelementptr inbounds %struct.BodyPoint, ptr %105, i64 0, i32 4, i64 1
  %305 = load <2 x float>, ptr %304, align 4, !tbaa !44
  %306 = load <2 x float>, ptr %109, align 4, !tbaa !44
  %307 = fneg <2 x float> %305
  %308 = insertelement <2 x float> poison, float %298, i64 0
  %309 = shufflevector <2 x float> %308, <2 x float> poison, <2 x i32> zeroinitializer
  %310 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %307, <2 x float> %309, <2 x float> %306)
  br label %311

311:                                              ; preds = %296, %266
  %312 = phi <2 x float> [ %310, %296 ], [ %295, %266 ]
  store <2 x float> %312, ptr %109, align 4
  %313 = getelementptr inbounds %struct.BodyPoint, ptr %105, i64 0, i32 15
  store <2 x float> zeroinitializer, ptr %313, align 8, !tbaa !44
  %314 = getelementptr inbounds %struct.BodyPoint, ptr %105, i64 0, i32 19
  %315 = load i16, ptr %314, align 8, !tbaa !137
  %316 = and i16 %315, -2
  store i16 %316, ptr %314, align 8, !tbaa !137
  br i1 %83, label %350, label %317

317:                                              ; preds = %311
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %16, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %17, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #25
  store float 1.000000e+00, ptr %19, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #25
  %318 = getelementptr inbounds %struct.BodyPoint, ptr %105, i64 0, i32 3
  %319 = call fastcc i32 @sb_deflect_face(ptr noundef nonnull %1, ptr noundef nonnull %318, ptr noundef nonnull %18, ptr noundef nonnull %16, ptr noundef nonnull %19, float noundef %3, ptr noundef nonnull %17, ptr noundef nonnull %20) #24, !range !267
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %349, label %321

321:                                              ; preds = %317
  %322 = load float, ptr %20, align 4
  %323 = fcmp olt float %322, 0.000000e+00
  br i1 %323, label %324, label %344

324:                                              ; preds = %321
  %325 = load i16, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 14), align 4, !tbaa !256
  %326 = and i16 %325, 1
  %327 = icmp eq i16 %326, 0
  br i1 %327, label %330, label %328

328:                                              ; preds = %324
  %329 = fneg float %322
  call fastcc void @Vec3PlusStVec(ptr noundef nonnull %318, float noundef %329, ptr noundef nonnull %18) #24
  br label %334

330:                                              ; preds = %324
  %331 = getelementptr inbounds %struct.BodyPoint, ptr %105, i64 0, i32 4
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %15, ptr noundef nonnull %331, ptr noundef nonnull %17) #24
  %332 = load float, ptr %19, align 4, !tbaa !44
  %333 = fmul float %332, -5.000000e+01
  call fastcc void @Vec3PlusStVec(ptr noundef nonnull %107, float noundef %333, ptr noundef nonnull %15) #24
  br label %334

334:                                              ; preds = %330, %328
  %335 = load ptr, ptr %102, align 8, !tbaa !60
  %336 = getelementptr inbounds %struct.SBScratch, ptr %335, i64 0, i32 2
  %337 = load i16, ptr %336, align 2, !tbaa !162
  %338 = or i16 %337, 1
  store i16 %338, ptr %336, align 2, !tbaa !162
  %339 = load i16, ptr %314, align 8, !tbaa !137
  %340 = or i16 %339, 1
  store i16 %340, ptr %314, align 8, !tbaa !137
  %341 = load i16, ptr %103, align 8, !tbaa !53
  %342 = sitofp i16 %341 to float
  %343 = fmul float %342, 0x3F847AE140000000
  store float %343, ptr %313, align 8, !tbaa !268
  br label %348

344:                                              ; preds = %321
  %345 = getelementptr inbounds %struct.BodyPoint, ptr %105, i64 0, i32 4
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %15, ptr noundef nonnull %345, ptr noundef nonnull %17) #24
  %346 = load float, ptr %19, align 4, !tbaa !44
  %347 = fmul float %346, -5.000000e+01
  call fastcc void @Vec3PlusStVec(ptr noundef nonnull %107, float noundef %347, ptr noundef nonnull %15) #24
  br label %348

348:                                              ; preds = %344, %334
  call fastcc void @Vec3PlusStVec(ptr noundef nonnull %107, float noundef 1.000000e+00, ptr noundef nonnull %16) #24
  br label %349

349:                                              ; preds = %348, %317
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #25
  br label %350

350:                                              ; preds = %349, %311
  %351 = load i16, ptr %43, align 2, !tbaa !84
  %352 = and i16 %351, 4
  %353 = icmp eq i16 %352, 0
  br i1 %353, label %387, label %354

354:                                              ; preds = %350
  %355 = load ptr, ptr %91, align 8, !tbaa !74
  %356 = icmp eq ptr %355, null
  br i1 %356, label %387, label %357

357:                                              ; preds = %354
  %358 = getelementptr inbounds %struct.BodyPoint, ptr %105, i64 0, i32 13
  %359 = load i32, ptr %358, align 4, !tbaa !209
  %360 = icmp sgt i32 %359, 0
  br i1 %360, label %361, label %387

361:                                              ; preds = %357
  %362 = getelementptr inbounds %struct.BodyPoint, ptr %105, i64 0, i32 14
  %363 = zext nneg i32 %359 to i64
  br label %364

364:                                              ; preds = %361, %382
  %365 = phi i64 [ %363, %361 ], [ %385, %382 ]
  %366 = load ptr, ptr %91, align 8, !tbaa !74
  %367 = load ptr, ptr %362, align 8, !tbaa !70
  %368 = getelementptr i32, ptr %367, i64 %365
  %369 = getelementptr i32, ptr %368, i64 -1
  %370 = load i32, ptr %369, align 4, !tbaa !48
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds %struct.BodySpring, ptr %366, i64 %371
  br i1 %71, label %373, label %382

373:                                              ; preds = %364
  %374 = getelementptr inbounds %struct.BodySpring, ptr %366, i64 %371, i32 5
  call fastcc void @add_v3_v3(ptr noundef nonnull %107, ptr noundef nonnull %374) #24
  %375 = getelementptr inbounds %struct.BodySpring, ptr %366, i64 %371, i32 7
  %376 = load i16, ptr %375, align 4, !tbaa !269
  %377 = and i16 %376, 1
  %378 = icmp eq i16 %377, 0
  br i1 %378, label %382, label %379

379:                                              ; preds = %373
  %380 = getelementptr inbounds %struct.BodySpring, ptr %366, i64 %371, i32 3
  %381 = load float, ptr %380, align 4, !tbaa !270
  store float %381, ptr %313, align 8, !tbaa !268
  br label %382

382:                                              ; preds = %373, %379, %364
  %383 = load i32, ptr %27, align 8, !tbaa !69
  %384 = sub nsw i32 %383, %106
  call fastcc void @sb_spring_force(ptr noundef %1, i32 noundef %384, ptr noundef %372) #24
  %385 = add nsw i64 %365, -1
  %386 = icmp sgt i64 %365, 1
  br i1 %386, label %364, label %387, !llvm.loop !271

387:                                              ; preds = %382, %357, %354, %350
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #25
  br label %388

388:                                              ; preds = %206, %387
  %389 = add nsw i32 %106, -1
  %390 = getelementptr inbounds %struct.BodyPoint, ptr %105, i64 1
  %391 = icmp sgt i32 %106, 1
  br i1 %391, label %104, label %392, !llvm.loop !272

392:                                              ; preds = %388, %82
  %393 = load i16, ptr %43, align 2, !tbaa !84
  %394 = and i16 %393, 1024
  %395 = icmp eq i16 %394, 0
  br i1 %395, label %397, label %396

396:                                              ; preds = %392
  call fastcc void @scan_for_ext_face_forces(ptr noundef nonnull %1, float noundef %3) #24
  br label %397

397:                                              ; preds = %396, %392
  call void @pdEndEffectors(ptr noundef nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  br label %398

398:                                              ; preds = %24, %397
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @softbody_apply_forces(ptr noundef %0, float noundef %1, i32 noundef %2, ptr noundef writeonly %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !273 {
  %6 = alloca [3 x float], align 8
  %7 = alloca [3 x float], align 8
  %8 = alloca [3 x float], align 8
  %9 = alloca [3 x float], align 8
  %10 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 111
  %11 = load ptr, ptr %10, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %6, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #25
  %12 = tail call fastcc float @sb_time_scale(ptr noundef %0) #24
  %13 = fmul float %12, %1
  %14 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  store float 0x4415AF1D80000000, ptr %14, align 8, !tbaa !44
  store <2 x float> <float 0x4415AF1D80000000, float 0x4415AF1D80000000>, ptr %8, align 8, !tbaa !44
  %15 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  store float 0xC415AF1D80000000, ptr %15, align 8, !tbaa !44
  store <2 x float> <float 0xC415AF1D80000000, float 0xC415AF1D80000000>, ptr %9, align 8, !tbaa !44
  %16 = load i32, ptr %11, align 8, !tbaa !69
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %150

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.SoftBody, ptr %11, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !68
  %21 = and i32 %4, 1
  %22 = icmp eq i32 %21, 0
  %23 = icmp eq i32 %2, 1
  %24 = icmp eq i32 %2, 2
  %25 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %26 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  br label %27

27:                                               ; preds = %18, %136
  %28 = phi i32 [ 0, %18 ], [ %144, %136 ]
  %29 = phi i32 [ %16, %18 ], [ %145, %136 ]
  %30 = phi float [ 0.000000e+00, %18 ], [ %138, %136 ]
  %31 = phi float [ 0.000000e+00, %18 ], [ %137, %136 ]
  %32 = phi ptr [ %20, %18 ], [ %146, %136 ]
  %33 = call fastcc float @_final_mass(ptr noundef %0, ptr noundef %32) #24
  %34 = fcmp ogt float %33, 0x3F847A5B00000000
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = call fastcc float @_final_mass(ptr noundef %0, ptr noundef %32) #24
  br label %37

37:                                               ; preds = %27, %35
  %38 = phi float [ %36, %35 ], [ 0x3F847A5B00000000, %27 ]
  %39 = fdiv float %13, %38
  %40 = call fastcc float @_final_goal(ptr noundef %0, ptr noundef %32) #24
  %41 = fcmp olt float %40, 0x3FEFF7CEE0000000
  br i1 %41, label %42, label %136

42:                                               ; preds = %37
  br i1 %22, label %45, label %43

43:                                               ; preds = %42
  %44 = getelementptr inbounds %struct.BodyPoint, ptr %32, i64 0, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %44) #24
  br label %45

45:                                               ; preds = %43, %42
  %46 = getelementptr inbounds %struct.BodyPoint, ptr %32, i64 0, i32 5
  call fastcc void @mul_v3_fl(ptr noundef nonnull %46, float noundef %39) #24
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %46) #24
  br i1 %23, label %47, label %51

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.BodyPoint, ptr %32, i64 0, i32 8
  %49 = getelementptr inbounds %struct.BodyPoint, ptr %32, i64 0, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %48, ptr noundef nonnull %49) #24
  %50 = getelementptr inbounds %struct.BodyPoint, ptr %32, i64 0, i32 10
  call fastcc void @copy_v3_v3(ptr noundef nonnull %50, ptr noundef nonnull %7) #24
  br label %80

51:                                               ; preds = %45
  br i1 %24, label %52, label %80

52:                                               ; preds = %51
  %53 = getelementptr inbounds %struct.BodyPoint, ptr %32, i64 0, i32 8
  %54 = getelementptr inbounds %struct.BodyPoint, ptr %32, i64 0, i32 10
  %55 = getelementptr inbounds %struct.BodyPoint, ptr %32, i64 0, i32 4
  %56 = load <2 x float>, ptr %53, align 8, !tbaa !44
  %57 = load <2 x float>, ptr %7, align 8, !tbaa !44
  %58 = load <2 x float>, ptr %54, align 8, !tbaa !44
  %59 = fadd <2 x float> %57, %58
  %60 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %59, <2 x float> <float 5.000000e-01, float 5.000000e-01>, <2 x float> %56)
  store <2 x float> %60, ptr %55, align 8, !tbaa !44
  %61 = getelementptr inbounds %struct.BodyPoint, ptr %32, i64 0, i32 8, i64 2
  %62 = load float, ptr %61, align 8, !tbaa !44
  %63 = load float, ptr %25, align 8, !tbaa !44
  %64 = getelementptr inbounds %struct.BodyPoint, ptr %32, i64 0, i32 10, i64 2
  %65 = load float, ptr %64, align 8, !tbaa !44
  %66 = fadd float %63, %65
  %67 = call float @llvm.fmuladd.f32(float %66, float 5.000000e-01, float %62)
  %68 = getelementptr inbounds %struct.BodyPoint, ptr %32, i64 0, i32 4, i64 2
  store float %67, ptr %68, align 8, !tbaa !44
  %69 = fsub <2 x float> %57, %58
  %70 = extractelement <2 x float> %69, i64 0
  %71 = call float @llvm.fabs.f32(float %70)
  %72 = call fastcc float @max_ff(float noundef %30, float noundef %71) #24
  %73 = fsub <2 x float> %57, %58
  %74 = extractelement <2 x float> %73, i64 1
  %75 = call float @llvm.fabs.f32(float %74)
  %76 = call fastcc float @max_ff(float noundef %72, float noundef %75) #24
  %77 = fsub float %63, %65
  %78 = call float @llvm.fabs.f32(float %77)
  %79 = call fastcc float @max_ff(float noundef %76, float noundef %78) #24
  br label %82

80:                                               ; preds = %47, %51
  %81 = getelementptr inbounds %struct.BodyPoint, ptr %32, i64 0, i32 4
  call fastcc void @add_v3_v3(ptr noundef nonnull %81, ptr noundef nonnull %46) #24
  br label %82

82:                                               ; preds = %80, %52
  %83 = phi i1 [ true, %52 ], [ false, %80 ]
  %84 = phi float [ %79, %52 ], [ %30, %80 ]
  br i1 %22, label %85, label %87

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.BodyPoint, ptr %32, i64 0, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %86) #24
  br label %87

87:                                               ; preds = %85, %82
  call fastcc void @mul_v3_fl(ptr noundef nonnull %6, float noundef %13) #24
  br i1 %23, label %88, label %92

88:                                               ; preds = %87
  %89 = getelementptr inbounds %struct.BodyPoint, ptr %32, i64 0, i32 7
  %90 = getelementptr inbounds %struct.BodyPoint, ptr %32, i64 0, i32 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %89, ptr noundef nonnull %90) #24
  %91 = getelementptr inbounds %struct.BodyPoint, ptr %32, i64 0, i32 9
  call fastcc void @copy_v3_v3(ptr noundef nonnull %91, ptr noundef nonnull %6) #24
  br label %92

92:                                               ; preds = %88, %87
  br i1 %83, label %93, label %134

93:                                               ; preds = %92
  %94 = getelementptr inbounds %struct.BodyPoint, ptr %32, i64 0, i32 7
  %95 = getelementptr inbounds %struct.BodyPoint, ptr %32, i64 0, i32 9
  %96 = getelementptr inbounds %struct.BodyPoint, ptr %32, i64 0, i32 3
  %97 = load <2 x float>, ptr %94, align 4, !tbaa !44
  %98 = load <2 x float>, ptr %6, align 8, !tbaa !44
  %99 = load <2 x float>, ptr %95, align 4, !tbaa !44
  %100 = fadd <2 x float> %98, %99
  %101 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %100, <2 x float> <float 5.000000e-01, float 5.000000e-01>, <2 x float> %97)
  store <2 x float> %101, ptr %96, align 4, !tbaa !44
  %102 = getelementptr inbounds %struct.BodyPoint, ptr %32, i64 0, i32 7, i64 2
  %103 = load float, ptr %102, align 4, !tbaa !44
  %104 = load float, ptr %26, align 8, !tbaa !44
  %105 = getelementptr inbounds %struct.BodyPoint, ptr %32, i64 0, i32 9, i64 2
  %106 = load float, ptr %105, align 4, !tbaa !44
  %107 = fadd float %104, %106
  %108 = call float @llvm.fmuladd.f32(float %107, float 5.000000e-01, float %103)
  %109 = getelementptr inbounds %struct.BodyPoint, ptr %32, i64 0, i32 3, i64 2
  store float %108, ptr %109, align 4, !tbaa !44
  %110 = fsub <2 x float> %98, %99
  %111 = extractelement <2 x float> %110, i64 0
  %112 = call float @llvm.fabs.f32(float %111)
  %113 = call fastcc float @max_ff(float noundef %31, float noundef %112) #24
  %114 = fsub <2 x float> %98, %99
  %115 = extractelement <2 x float> %114, i64 1
  %116 = call float @llvm.fabs.f32(float %115)
  %117 = call fastcc float @max_ff(float noundef %113, float noundef %116) #24
  %118 = fsub float %104, %106
  %119 = call float @llvm.fabs.f32(float %118)
  %120 = call fastcc float @max_ff(float noundef %117, float noundef %119) #24
  %121 = getelementptr inbounds %struct.BodyPoint, ptr %32, i64 0, i32 16
  %122 = load float, ptr %121, align 4, !tbaa !274
  %123 = fcmp ogt float %122, 0.000000e+00
  br i1 %123, label %124, label %127

124:                                              ; preds = %93
  %125 = getelementptr inbounds %struct.BodyPoint, ptr %32, i64 0, i32 4
  %126 = fsub float 1.000000e+00, %122
  call fastcc void @mul_v3_fl(ptr noundef nonnull %125, float noundef %126) #24
  br label %127

127:                                              ; preds = %124, %93
  %128 = getelementptr inbounds %struct.BodyPoint, ptr %32, i64 0, i32 15
  %129 = load float, ptr %128, align 8, !tbaa !268
  %130 = fcmp ogt float %129, 0.000000e+00
  br i1 %130, label %131, label %136

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.BodyPoint, ptr %32, i64 0, i32 4
  %133 = fsub float 1.000000e+00, %129
  call fastcc void @mul_v3_fl(ptr noundef nonnull %132, float noundef %133) #24
  br label %136

134:                                              ; preds = %92
  %135 = getelementptr inbounds %struct.BodyPoint, ptr %32, i64 0, i32 3
  call fastcc void @add_v3_v3(ptr noundef nonnull %135, ptr noundef nonnull %6) #24
  br label %136

136:                                              ; preds = %134, %131, %127, %37
  %137 = phi float [ %120, %131 ], [ %120, %127 ], [ %31, %134 ], [ %31, %37 ]
  %138 = phi float [ %84, %131 ], [ %84, %127 ], [ %84, %134 ], [ %30, %37 ]
  %139 = getelementptr inbounds %struct.BodyPoint, ptr %32, i64 0, i32 3
  call void @minmax_v3v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %139) #23
  %140 = getelementptr inbounds %struct.BodyPoint, ptr %32, i64 0, i32 19
  %141 = load i16, ptr %140, align 8, !tbaa !137
  %142 = and i16 %141, 1
  %143 = icmp eq i16 %142, 0
  %144 = select i1 %143, i32 %28, i32 1
  %145 = add nsw i32 %29, -1
  %146 = getelementptr inbounds %struct.BodyPoint, ptr %32, i64 1
  %147 = icmp sgt i32 %29, 1
  br i1 %147, label %27, label %148, !llvm.loop !275

148:                                              ; preds = %136
  %149 = icmp eq i32 %144, 0
  br label %150

150:                                              ; preds = %148, %5
  %151 = phi float [ 0.000000e+00, %5 ], [ %137, %148 ]
  %152 = phi float [ 0.000000e+00, %5 ], [ %138, %148 ]
  %153 = phi i1 [ true, %5 ], [ %149, %148 ]
  %154 = getelementptr inbounds %struct.SoftBody, ptr %11, i64 0, i32 44
  %155 = load ptr, ptr %154, align 8, !tbaa !60
  %156 = icmp eq ptr %155, null
  br i1 %156, label %161, label %157

157:                                              ; preds = %150
  %158 = getelementptr inbounds %struct.SBScratch, ptr %155, i64 0, i32 5
  call fastcc void @copy_v3_v3(ptr noundef nonnull %158, ptr noundef nonnull %8) #24
  %159 = load ptr, ptr %154, align 8, !tbaa !60
  %160 = getelementptr inbounds %struct.SBScratch, ptr %159, i64 0, i32 6
  call fastcc void @copy_v3_v3(ptr noundef nonnull %160, ptr noundef nonnull %9) #24
  br label %161

161:                                              ; preds = %157, %150
  %162 = icmp eq ptr %3, null
  br i1 %162, label %177, label %163

163:                                              ; preds = %161
  %164 = getelementptr inbounds %struct.SoftBody, ptr %11, i64 0, i32 28
  %165 = load i16, ptr %164, align 2, !tbaa !55
  %166 = and i16 %165, 2
  %167 = icmp eq i16 %166, 0
  br i1 %167, label %170, label %168

168:                                              ; preds = %163
  %169 = call fastcc float @max_ff(float noundef %151, float noundef %152) #24
  br label %170

170:                                              ; preds = %163, %168
  %171 = phi float [ %169, %168 ], [ %151, %163 ]
  store float %171, ptr %3, align 4, !tbaa !44
  br i1 %153, label %177, label %172

172:                                              ; preds = %170
  %173 = getelementptr inbounds %struct.SoftBody, ptr %11, i64 0, i32 20
  %174 = load i16, ptr %173, align 2, !tbaa !276
  %175 = sitofp i16 %174 to float
  %176 = fdiv float %171, %175
  store float %176, ptr %3, align 4, !tbaa !44
  br label %177

177:                                              ; preds = %170, %172, %161
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #25
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @softbody_apply_goalsnap(ptr noundef %0) unnamed_addr #10 !PGOFuncName !277 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 111
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = load i32, ptr %3, align 8, !tbaa !69
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %22

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !68
  br label %9

9:                                                ; preds = %6, %18
  %10 = phi i32 [ %19, %18 ], [ %4, %6 ]
  %11 = phi ptr [ %20, %18 ], [ %8, %6 ]
  %12 = tail call fastcc float @_final_goal(ptr noundef %0, ptr noundef %11) #24
  %13 = fcmp ult float %12, 0x3FEFF7CEE0000000
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.BodyPoint, ptr %11, i64 0, i32 7
  %16 = getelementptr inbounds %struct.BodyPoint, ptr %11, i64 0, i32 3
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %15, ptr noundef nonnull %16) #24
  %17 = getelementptr inbounds %struct.BodyPoint, ptr %11, i64 0, i32 2
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %16, ptr noundef nonnull %17) #24
  br label %18

18:                                               ; preds = %9, %14
  %19 = add nsw i32 %10, -1
  %20 = getelementptr inbounds %struct.BodyPoint, ptr %11, i64 1
  %21 = icmp sgt i32 %10, 1
  br i1 %21, label %9, label %22, !llvm.loop !278

22:                                               ; preds = %18, %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @softbody_restore_prev_step(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !279 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 111
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = load i32, ptr %3, align 8, !tbaa !69
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !68
  br label %9

9:                                                ; preds = %6, %9
  %10 = phi i32 [ %16, %9 ], [ %4, %6 ]
  %11 = phi ptr [ %17, %9 ], [ %8, %6 ]
  %12 = getelementptr inbounds %struct.BodyPoint, ptr %11, i64 0, i32 4
  %13 = getelementptr inbounds %struct.BodyPoint, ptr %11, i64 0, i32 8
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %12, ptr noundef nonnull %13) #24
  %14 = getelementptr inbounds %struct.BodyPoint, ptr %11, i64 0, i32 3
  %15 = getelementptr inbounds %struct.BodyPoint, ptr %11, i64 0, i32 7
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %14, ptr noundef nonnull %15) #24
  %16 = add nsw i32 %10, -1
  %17 = getelementptr inbounds %struct.BodyPoint, ptr %11, i64 1
  %18 = icmp ugt i32 %10, 1
  br i1 %18, label %9, label %19, !llvm.loop !280

19:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @apply_spring_memory(ptr nocapture noundef readonly %0) unnamed_addr #19 !PGOFuncName !281 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 111
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = icmp eq ptr %3, null
  br i1 %4, label %46, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !149
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %46, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 42
  %11 = load i16, ptr %10, align 4, !tbaa !164
  %12 = sitofp i16 %11 to float
  %13 = icmp sgt i32 %7, 0
  br i1 %13, label %14, label %46

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 3
  %16 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 2
  %17 = fsub float 1.000000e+02, %12
  br label %18

18:                                               ; preds = %14, %41
  %19 = phi i64 [ 0, %14 ], [ %42, %41 ]
  %20 = load ptr, ptr %15, align 8, !tbaa !74
  %21 = getelementptr inbounds %struct.BodySpring, ptr %20, i64 %19
  %22 = load ptr, ptr %16, align 8, !tbaa !68
  %23 = load i32, ptr %21, align 4, !tbaa !138
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.BodySpring, ptr %20, i64 %19, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !139
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.BodyPoint, ptr %22, i64 %24, i32 3
  %29 = getelementptr inbounds %struct.BodyPoint, ptr %22, i64 %27, i32 3
  %30 = tail call fastcc float @len_v3v3(ptr noundef nonnull %28, ptr noundef nonnull %29) #24
  %31 = getelementptr inbounds %struct.BodySpring, ptr %20, i64 %19, i32 2
  %32 = load float, ptr %31, align 4, !tbaa !140
  %33 = fdiv float %32, %30
  %34 = fcmp ogt float %33, 0x3FF0CCCCC0000000
  %35 = fcmp olt float %33, 0x3FEE666660000000
  %36 = or i1 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %18
  %38 = fmul float %30, %12
  %39 = tail call float @llvm.fmuladd.f32(float %17, float %32, float %38)
  %40 = fdiv float %39, 1.000000e+02
  store float %40, ptr %31, align 4, !tbaa !140
  br label %41

41:                                               ; preds = %37, %18
  %42 = add nuw nsw i64 %19, 1
  %43 = load i32, ptr %6, align 4, !tbaa !149
  %44 = sext i32 %43 to i64
  %45 = icmp slt i64 %42, %44
  br i1 %45, label %18, label %46, !llvm.loop !282

46:                                               ; preds = %41, %9, %5, %1
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ccd_mesh_update(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !PGOFuncName !283 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #25
  %4 = tail call ptr @modifiers_findByType(ptr noundef %0, i32 noundef 23) #23
  %5 = icmp eq ptr %4, null
  br i1 %5, label %319, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.CollisionModifierData, ptr %4, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !284
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %319, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.CollisionModifierData, ptr %4, i64 0, i32 9
  %12 = load i32, ptr %11, align 4, !tbaa !287
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %319, label %14

14:                                               ; preds = %10
  %15 = load i32, ptr %1, align 8, !tbaa !288
  %16 = icmp eq i32 %15, %8
  br i1 %16, label %17, label %319

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.ccd_Mesh, ptr %1, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !289
  %20 = icmp eq i32 %19, %12
  br i1 %20, label %21, label %319

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.ccd_Mesh, ptr %1, i64 0, i32 7
  %23 = getelementptr inbounds %struct.ccd_Mesh, ptr %1, i64 0, i32 7, i64 2
  %24 = getelementptr inbounds %struct.ccd_Mesh, ptr %1, i64 0, i32 7, i64 1
  %25 = getelementptr inbounds %struct.ccd_Mesh, ptr %1, i64 0, i32 8
  %26 = getelementptr inbounds %struct.ccd_Mesh, ptr %1, i64 0, i32 8, i64 2
  %27 = getelementptr inbounds %struct.ccd_Mesh, ptr %1, i64 0, i32 8, i64 1
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %27, align 4, !tbaa !44
  store <4 x float> <float 0x46293E5940000000, float 0x46293E5940000000, float 0x46293E5940000000, float 0xC6293E5940000000>, ptr %22, align 8, !tbaa !44
  %28 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 110
  %29 = load ptr, ptr %28, align 8, !tbaa !246
  %30 = getelementptr inbounds %struct.PartDeflect, ptr %29, i64 0, i32 27
  %31 = load float, ptr %30, align 4, !tbaa !290
  %32 = getelementptr inbounds %struct.PartDeflect, ptr %29, i64 0, i32 28
  %33 = load float, ptr %32, align 8, !tbaa !291
  %34 = tail call fastcc float @max_ff(float noundef %31, float noundef %33) #24
  %35 = getelementptr inbounds %struct.ccd_Mesh, ptr %1, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !177
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %21
  %39 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %39(ptr noundef nonnull %36) #23
  br label %40

40:                                               ; preds = %38, %21
  %41 = getelementptr inbounds %struct.ccd_Mesh, ptr %1, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !176
  store ptr %42, ptr %35, align 8, !tbaa !177
  %43 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %44 = getelementptr inbounds %struct.CollisionModifierData, ptr %4, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !292
  %46 = tail call ptr %43(ptr noundef %45) #23
  store ptr %46, ptr %41, align 8, !tbaa !176
  %47 = load i32, ptr %1, align 8, !tbaa !288
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %102

49:                                               ; preds = %40
  %50 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %51 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %52 = load ptr, ptr %35, align 8, !tbaa !177
  %53 = load float, ptr %22, align 8, !tbaa !44
  %54 = load float, ptr %24, align 4, !tbaa !44
  %55 = load float, ptr %23, align 8, !tbaa !44
  %56 = load float, ptr %25, align 4, !tbaa !44
  %57 = load float, ptr %27, align 4, !tbaa !44
  %58 = load float, ptr %26, align 4, !tbaa !44
  %59 = zext nneg i32 %47 to i64
  br label %60

60:                                               ; preds = %49, %60
  %61 = phi i64 [ 0, %49 ], [ %100, %60 ]
  %62 = phi float [ %58, %49 ], [ %99, %60 ]
  %63 = phi float [ %57, %49 ], [ %97, %60 ]
  %64 = phi float [ %56, %49 ], [ %95, %60 ]
  %65 = phi float [ %55, %49 ], [ %93, %60 ]
  %66 = phi float [ %54, %49 ], [ %90, %60 ]
  %67 = phi float [ %53, %49 ], [ %87, %60 ]
  %68 = getelementptr inbounds %struct.MVert, ptr %46, i64 %61
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef %68) #24
  %69 = load float, ptr %3, align 4, !tbaa !44
  %70 = fsub float %69, %34
  %71 = tail call fastcc float @min_ff(float noundef %67, float noundef %70) #24
  store float %71, ptr %22, align 8, !tbaa !44
  %72 = load float, ptr %50, align 4, !tbaa !44
  %73 = fsub float %72, %34
  %74 = tail call fastcc float @min_ff(float noundef %66, float noundef %73) #24
  store float %74, ptr %24, align 4, !tbaa !44
  %75 = load float, ptr %51, align 4, !tbaa !44
  %76 = fsub float %75, %34
  %77 = tail call fastcc float @min_ff(float noundef %65, float noundef %76) #24
  store float %77, ptr %23, align 8, !tbaa !44
  %78 = fadd float %34, %69
  %79 = tail call fastcc float @max_ff(float noundef %64, float noundef %78) #24
  store float %79, ptr %25, align 4, !tbaa !44
  %80 = fadd float %34, %72
  %81 = tail call fastcc float @max_ff(float noundef %63, float noundef %80) #24
  store float %81, ptr %27, align 4, !tbaa !44
  %82 = fadd float %34, %75
  %83 = tail call fastcc float @max_ff(float noundef %62, float noundef %82) #24
  store float %83, ptr %26, align 4, !tbaa !44
  %84 = getelementptr inbounds %struct.MVert, ptr %52, i64 %61
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef %84) #24
  %85 = load float, ptr %3, align 4, !tbaa !44
  %86 = fsub float %85, %34
  %87 = tail call fastcc float @min_ff(float noundef %71, float noundef %86) #24
  store float %87, ptr %22, align 8, !tbaa !44
  %88 = load float, ptr %50, align 4, !tbaa !44
  %89 = fsub float %88, %34
  %90 = tail call fastcc float @min_ff(float noundef %74, float noundef %89) #24
  store float %90, ptr %24, align 4, !tbaa !44
  %91 = load float, ptr %51, align 4, !tbaa !44
  %92 = fsub float %91, %34
  %93 = tail call fastcc float @min_ff(float noundef %77, float noundef %92) #24
  store float %93, ptr %23, align 8, !tbaa !44
  %94 = fadd float %34, %85
  %95 = tail call fastcc float @max_ff(float noundef %79, float noundef %94) #24
  store float %95, ptr %25, align 4, !tbaa !44
  %96 = fadd float %34, %88
  %97 = tail call fastcc float @max_ff(float noundef %81, float noundef %96) #24
  store float %97, ptr %27, align 4, !tbaa !44
  %98 = fadd float %34, %91
  %99 = tail call fastcc float @max_ff(float noundef %83, float noundef %98) #24
  store float %99, ptr %26, align 4, !tbaa !44
  %100 = add nuw nsw i64 %61, 1
  %101 = icmp eq i64 %100, %59
  br i1 %101, label %102, label %60, !llvm.loop !293

102:                                              ; preds = %60, %40
  %103 = load i32, ptr %18, align 4, !tbaa !289
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %319

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.ccd_Mesh, ptr %1, i64 0, i32 4
  %107 = load ptr, ptr %106, align 8, !tbaa !175
  %108 = getelementptr inbounds %struct.ccd_Mesh, ptr %1, i64 0, i32 6
  %109 = load ptr, ptr %108, align 8, !tbaa !178
  %110 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %111 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  br label %112

112:                                              ; preds = %105, %313
  %113 = phi i32 [ 0, %105 ], [ %316, %313 ]
  %114 = phi ptr [ %109, %105 ], [ %314, %313 ]
  %115 = phi ptr [ %107, %105 ], [ %315, %313 ]
  %116 = getelementptr inbounds %struct.ccdf_minmax, ptr %114, i64 0, i32 2
  %117 = getelementptr inbounds %struct.ccdf_minmax, ptr %114, i64 0, i32 1
  %118 = getelementptr inbounds %struct.ccdf_minmax, ptr %114, i64 0, i32 5
  %119 = getelementptr inbounds %struct.ccdf_minmax, ptr %114, i64 0, i32 4
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %119, align 4, !tbaa !44
  %120 = getelementptr inbounds %struct.ccdf_minmax, ptr %114, i64 0, i32 3
  store <4 x float> <float 0x46293E5940000000, float 0x46293E5940000000, float 0x46293E5940000000, float 0xC6293E5940000000>, ptr %114, align 4, !tbaa !44
  %121 = load i32, ptr %115, align 4, !tbaa !194
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds %struct.MVert, ptr %46, i64 %122
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef %123) #24
  %124 = load float, ptr %3, align 4, !tbaa !44
  %125 = fsub float %124, %34
  %126 = tail call fastcc float @min_ff(float noundef 0x46293E5940000000, float noundef %125) #24
  store float %126, ptr %114, align 4, !tbaa !294
  %127 = load float, ptr %117, align 4, !tbaa !296
  %128 = load float, ptr %110, align 4, !tbaa !44
  %129 = fsub float %128, %34
  %130 = tail call fastcc float @min_ff(float noundef %127, float noundef %129) #24
  store float %130, ptr %117, align 4, !tbaa !296
  %131 = load float, ptr %116, align 4, !tbaa !297
  %132 = load float, ptr %111, align 4, !tbaa !44
  %133 = fsub float %132, %34
  %134 = tail call fastcc float @min_ff(float noundef %131, float noundef %133) #24
  store float %134, ptr %116, align 4, !tbaa !297
  %135 = load float, ptr %120, align 4, !tbaa !298
  %136 = fadd float %34, %124
  %137 = tail call fastcc float @max_ff(float noundef %135, float noundef %136) #24
  store float %137, ptr %120, align 4, !tbaa !298
  %138 = load float, ptr %119, align 4, !tbaa !299
  %139 = fadd float %34, %128
  %140 = tail call fastcc float @max_ff(float noundef %138, float noundef %139) #24
  store float %140, ptr %119, align 4, !tbaa !299
  %141 = load float, ptr %118, align 4, !tbaa !300
  %142 = fadd float %34, %132
  %143 = tail call fastcc float @max_ff(float noundef %141, float noundef %142) #24
  store float %143, ptr %118, align 4, !tbaa !300
  %144 = getelementptr inbounds %struct.MFace, ptr %115, i64 0, i32 1
  %145 = load i32, ptr %144, align 4, !tbaa !196
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds %struct.MVert, ptr %46, i64 %146
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef %147) #24
  %148 = load float, ptr %3, align 4, !tbaa !44
  %149 = fsub float %148, %34
  %150 = tail call fastcc float @min_ff(float noundef %126, float noundef %149) #24
  store float %150, ptr %114, align 4, !tbaa !294
  %151 = load float, ptr %117, align 4, !tbaa !296
  %152 = load float, ptr %110, align 4, !tbaa !44
  %153 = fsub float %152, %34
  %154 = tail call fastcc float @min_ff(float noundef %151, float noundef %153) #24
  store float %154, ptr %117, align 4, !tbaa !296
  %155 = load float, ptr %116, align 4, !tbaa !297
  %156 = load float, ptr %111, align 4, !tbaa !44
  %157 = fsub float %156, %34
  %158 = tail call fastcc float @min_ff(float noundef %155, float noundef %157) #24
  store float %158, ptr %116, align 4, !tbaa !297
  %159 = load float, ptr %120, align 4, !tbaa !298
  %160 = fadd float %34, %148
  %161 = tail call fastcc float @max_ff(float noundef %159, float noundef %160) #24
  store float %161, ptr %120, align 4, !tbaa !298
  %162 = load float, ptr %119, align 4, !tbaa !299
  %163 = fadd float %34, %152
  %164 = tail call fastcc float @max_ff(float noundef %162, float noundef %163) #24
  store float %164, ptr %119, align 4, !tbaa !299
  %165 = load float, ptr %118, align 4, !tbaa !300
  %166 = fadd float %34, %156
  %167 = tail call fastcc float @max_ff(float noundef %165, float noundef %166) #24
  store float %167, ptr %118, align 4, !tbaa !300
  %168 = getelementptr inbounds %struct.MFace, ptr %115, i64 0, i32 2
  %169 = load i32, ptr %168, align 4, !tbaa !195
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds %struct.MVert, ptr %46, i64 %170
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef %171) #24
  %172 = load float, ptr %3, align 4, !tbaa !44
  %173 = fsub float %172, %34
  %174 = tail call fastcc float @min_ff(float noundef %150, float noundef %173) #24
  store float %174, ptr %114, align 4, !tbaa !294
  %175 = load float, ptr %117, align 4, !tbaa !296
  %176 = load float, ptr %110, align 4, !tbaa !44
  %177 = fsub float %176, %34
  %178 = tail call fastcc float @min_ff(float noundef %175, float noundef %177) #24
  store float %178, ptr %117, align 4, !tbaa !296
  %179 = load float, ptr %116, align 4, !tbaa !297
  %180 = load float, ptr %111, align 4, !tbaa !44
  %181 = fsub float %180, %34
  %182 = tail call fastcc float @min_ff(float noundef %179, float noundef %181) #24
  store float %182, ptr %116, align 4, !tbaa !297
  %183 = load float, ptr %120, align 4, !tbaa !298
  %184 = fadd float %34, %172
  %185 = tail call fastcc float @max_ff(float noundef %183, float noundef %184) #24
  store float %185, ptr %120, align 4, !tbaa !298
  %186 = load float, ptr %119, align 4, !tbaa !299
  %187 = fadd float %34, %176
  %188 = tail call fastcc float @max_ff(float noundef %186, float noundef %187) #24
  store float %188, ptr %119, align 4, !tbaa !299
  %189 = load float, ptr %118, align 4, !tbaa !300
  %190 = fadd float %34, %180
  %191 = tail call fastcc float @max_ff(float noundef %189, float noundef %190) #24
  store float %191, ptr %118, align 4, !tbaa !300
  %192 = getelementptr inbounds %struct.MFace, ptr %115, i64 0, i32 3
  %193 = load i32, ptr %192, align 4, !tbaa !192
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %218, label %195

195:                                              ; preds = %112
  %196 = zext i32 %193 to i64
  %197 = getelementptr inbounds %struct.MVert, ptr %46, i64 %196
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %197) #24
  %198 = load float, ptr %3, align 4, !tbaa !44
  %199 = fsub float %198, %34
  %200 = tail call fastcc float @min_ff(float noundef %174, float noundef %199) #24
  store float %200, ptr %114, align 4, !tbaa !294
  %201 = load float, ptr %117, align 4, !tbaa !296
  %202 = load float, ptr %110, align 4, !tbaa !44
  %203 = fsub float %202, %34
  %204 = tail call fastcc float @min_ff(float noundef %201, float noundef %203) #24
  store float %204, ptr %117, align 4, !tbaa !296
  %205 = load float, ptr %116, align 4, !tbaa !297
  %206 = load float, ptr %111, align 4, !tbaa !44
  %207 = fsub float %206, %34
  %208 = tail call fastcc float @min_ff(float noundef %205, float noundef %207) #24
  store float %208, ptr %116, align 4, !tbaa !297
  %209 = load float, ptr %120, align 4, !tbaa !298
  %210 = fadd float %34, %198
  %211 = tail call fastcc float @max_ff(float noundef %209, float noundef %210) #24
  store float %211, ptr %120, align 4, !tbaa !298
  %212 = load float, ptr %119, align 4, !tbaa !299
  %213 = fadd float %34, %202
  %214 = tail call fastcc float @max_ff(float noundef %212, float noundef %213) #24
  store float %214, ptr %119, align 4, !tbaa !299
  %215 = load float, ptr %118, align 4, !tbaa !300
  %216 = fadd float %34, %206
  %217 = tail call fastcc float @max_ff(float noundef %215, float noundef %216) #24
  store float %217, ptr %118, align 4, !tbaa !300
  br label %218

218:                                              ; preds = %195, %112
  %219 = phi float [ %200, %195 ], [ %174, %112 ]
  %220 = load ptr, ptr %35, align 8, !tbaa !177
  %221 = getelementptr inbounds %struct.MVert, ptr %220, i64 %122
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef %221) #24
  %222 = load float, ptr %3, align 4, !tbaa !44
  %223 = fsub float %222, %34
  %224 = tail call fastcc float @min_ff(float noundef %219, float noundef %223) #24
  store float %224, ptr %114, align 4, !tbaa !294
  %225 = load float, ptr %117, align 4, !tbaa !296
  %226 = load float, ptr %110, align 4, !tbaa !44
  %227 = fsub float %226, %34
  %228 = tail call fastcc float @min_ff(float noundef %225, float noundef %227) #24
  store float %228, ptr %117, align 4, !tbaa !296
  %229 = load float, ptr %116, align 4, !tbaa !297
  %230 = load float, ptr %111, align 4, !tbaa !44
  %231 = fsub float %230, %34
  %232 = tail call fastcc float @min_ff(float noundef %229, float noundef %231) #24
  store float %232, ptr %116, align 4, !tbaa !297
  %233 = load float, ptr %120, align 4, !tbaa !298
  %234 = fadd float %34, %222
  %235 = tail call fastcc float @max_ff(float noundef %233, float noundef %234) #24
  store float %235, ptr %120, align 4, !tbaa !298
  %236 = load float, ptr %119, align 4, !tbaa !299
  %237 = fadd float %34, %226
  %238 = tail call fastcc float @max_ff(float noundef %236, float noundef %237) #24
  store float %238, ptr %119, align 4, !tbaa !299
  %239 = load float, ptr %118, align 4, !tbaa !300
  %240 = fadd float %34, %230
  %241 = tail call fastcc float @max_ff(float noundef %239, float noundef %240) #24
  store float %241, ptr %118, align 4, !tbaa !300
  %242 = load i32, ptr %144, align 4, !tbaa !196
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds %struct.MVert, ptr %220, i64 %243
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef %244) #24
  %245 = load float, ptr %3, align 4, !tbaa !44
  %246 = fsub float %245, %34
  %247 = tail call fastcc float @min_ff(float noundef %224, float noundef %246) #24
  store float %247, ptr %114, align 4, !tbaa !294
  %248 = load float, ptr %117, align 4, !tbaa !296
  %249 = load float, ptr %110, align 4, !tbaa !44
  %250 = fsub float %249, %34
  %251 = tail call fastcc float @min_ff(float noundef %248, float noundef %250) #24
  store float %251, ptr %117, align 4, !tbaa !296
  %252 = load float, ptr %116, align 4, !tbaa !297
  %253 = load float, ptr %111, align 4, !tbaa !44
  %254 = fsub float %253, %34
  %255 = tail call fastcc float @min_ff(float noundef %252, float noundef %254) #24
  store float %255, ptr %116, align 4, !tbaa !297
  %256 = load float, ptr %120, align 4, !tbaa !298
  %257 = fadd float %34, %245
  %258 = tail call fastcc float @max_ff(float noundef %256, float noundef %257) #24
  store float %258, ptr %120, align 4, !tbaa !298
  %259 = load float, ptr %119, align 4, !tbaa !299
  %260 = fadd float %34, %249
  %261 = tail call fastcc float @max_ff(float noundef %259, float noundef %260) #24
  store float %261, ptr %119, align 4, !tbaa !299
  %262 = load float, ptr %118, align 4, !tbaa !300
  %263 = fadd float %34, %253
  %264 = tail call fastcc float @max_ff(float noundef %262, float noundef %263) #24
  store float %264, ptr %118, align 4, !tbaa !300
  %265 = load i32, ptr %168, align 4, !tbaa !195
  %266 = zext i32 %265 to i64
  %267 = getelementptr inbounds %struct.MVert, ptr %220, i64 %266
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef %267) #24
  %268 = load float, ptr %3, align 4, !tbaa !44
  %269 = fsub float %268, %34
  %270 = tail call fastcc float @min_ff(float noundef %247, float noundef %269) #24
  store float %270, ptr %114, align 4, !tbaa !294
  %271 = load float, ptr %117, align 4, !tbaa !296
  %272 = load float, ptr %110, align 4, !tbaa !44
  %273 = fsub float %272, %34
  %274 = tail call fastcc float @min_ff(float noundef %271, float noundef %273) #24
  store float %274, ptr %117, align 4, !tbaa !296
  %275 = load float, ptr %116, align 4, !tbaa !297
  %276 = load float, ptr %111, align 4, !tbaa !44
  %277 = fsub float %276, %34
  %278 = tail call fastcc float @min_ff(float noundef %275, float noundef %277) #24
  store float %278, ptr %116, align 4, !tbaa !297
  %279 = load float, ptr %120, align 4, !tbaa !298
  %280 = fadd float %34, %268
  %281 = tail call fastcc float @max_ff(float noundef %279, float noundef %280) #24
  store float %281, ptr %120, align 4, !tbaa !298
  %282 = load float, ptr %119, align 4, !tbaa !299
  %283 = fadd float %34, %272
  %284 = tail call fastcc float @max_ff(float noundef %282, float noundef %283) #24
  store float %284, ptr %119, align 4, !tbaa !299
  %285 = load float, ptr %118, align 4, !tbaa !300
  %286 = fadd float %34, %276
  %287 = tail call fastcc float @max_ff(float noundef %285, float noundef %286) #24
  store float %287, ptr %118, align 4, !tbaa !300
  %288 = load i32, ptr %192, align 4, !tbaa !192
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %313, label %290

290:                                              ; preds = %218
  %291 = zext i32 %288 to i64
  %292 = getelementptr inbounds %struct.MVert, ptr %220, i64 %291
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %292) #24
  %293 = load float, ptr %3, align 4, !tbaa !44
  %294 = fsub float %293, %34
  %295 = tail call fastcc float @min_ff(float noundef %270, float noundef %294) #24
  store float %295, ptr %114, align 4, !tbaa !294
  %296 = load float, ptr %117, align 4, !tbaa !296
  %297 = load float, ptr %110, align 4, !tbaa !44
  %298 = fsub float %297, %34
  %299 = tail call fastcc float @min_ff(float noundef %296, float noundef %298) #24
  store float %299, ptr %117, align 4, !tbaa !296
  %300 = load float, ptr %116, align 4, !tbaa !297
  %301 = load float, ptr %111, align 4, !tbaa !44
  %302 = fsub float %301, %34
  %303 = tail call fastcc float @min_ff(float noundef %300, float noundef %302) #24
  store float %303, ptr %116, align 4, !tbaa !297
  %304 = load float, ptr %120, align 4, !tbaa !298
  %305 = fadd float %34, %293
  %306 = tail call fastcc float @max_ff(float noundef %304, float noundef %305) #24
  store float %306, ptr %120, align 4, !tbaa !298
  %307 = load float, ptr %119, align 4, !tbaa !299
  %308 = fadd float %34, %297
  %309 = tail call fastcc float @max_ff(float noundef %307, float noundef %308) #24
  store float %309, ptr %119, align 4, !tbaa !299
  %310 = load float, ptr %118, align 4, !tbaa !300
  %311 = fadd float %34, %301
  %312 = tail call fastcc float @max_ff(float noundef %310, float noundef %311) #24
  store float %312, ptr %118, align 4, !tbaa !300
  br label %313

313:                                              ; preds = %290, %218
  %314 = getelementptr inbounds %struct.ccdf_minmax, ptr %114, i64 1
  %315 = getelementptr inbounds %struct.MFace, ptr %115, i64 1
  %316 = add nuw nsw i32 %113, 1
  %317 = load i32, ptr %18, align 4, !tbaa !289
  %318 = icmp slt i32 %316, %317
  br i1 %318, label %112, label %319, !llvm.loop !301

319:                                              ; preds = %313, %102, %14, %17, %6, %10, %2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #25
  ret void
}

; Function Attrs: optsize
declare ptr @modifiers_findByType(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @are_there_deflectors(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 !PGOFuncName !302 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %25, label %6

6:                                                ; preds = %2, %22
  %7 = phi ptr [ %23, %22 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.Base, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !244
  %10 = and i32 %9, %1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.Base, ptr %7, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !242
  %15 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 110
  %16 = load ptr, ptr %15, align 8, !tbaa !246
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.PartDeflect, ptr %16, i64 0, i32 1
  %20 = load i16, ptr %19, align 4, !tbaa !247
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %6, %12, %18
  %23 = load ptr, ptr %7, align 8, !tbaa !34
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %6, !llvm.loop !303

25:                                               ; preds = %18, %22, %2
  %26 = phi i32 [ 0, %2 ], [ 0, %22 ], [ 1, %18 ]
  ret i32 %26
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @ccd_mesh_make(ptr noundef %0) unnamed_addr #0 !PGOFuncName !304 {
  %2 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #25
  %3 = tail call ptr @modifiers_findByType(ptr noundef %0, i32 noundef 23) #23
  %4 = icmp eq ptr %3, null
  br i1 %4, label %206, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.CollisionModifierData, ptr %3, i64 0, i32 8
  %7 = load i32, ptr %6, align 8, !tbaa !284
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %206, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.CollisionModifierData, ptr %3, i64 0, i32 9
  %11 = load i32, ptr %10, align 4, !tbaa !287
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %206, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %15 = tail call ptr %14(i64 noundef 72, ptr noundef nonnull @.str.16) #23
  %16 = getelementptr inbounds %struct.ccd_Mesh, ptr %15, i64 0, i32 1
  %17 = load <2 x i32>, ptr %6, align 8, !tbaa !48
  store <2 x i32> %17, ptr %15, align 8, !tbaa !48
  %18 = getelementptr inbounds %struct.ccd_Mesh, ptr %15, i64 0, i32 5
  store i32 190561, ptr %18, align 8, !tbaa !173
  %19 = getelementptr inbounds %struct.ccd_Mesh, ptr %15, i64 0, i32 7
  %20 = getelementptr inbounds %struct.ccd_Mesh, ptr %15, i64 0, i32 7, i64 2
  %21 = getelementptr inbounds %struct.ccd_Mesh, ptr %15, i64 0, i32 7, i64 1
  %22 = getelementptr inbounds %struct.ccd_Mesh, ptr %15, i64 0, i32 8
  %23 = getelementptr inbounds %struct.ccd_Mesh, ptr %15, i64 0, i32 8, i64 2
  %24 = getelementptr inbounds %struct.ccd_Mesh, ptr %15, i64 0, i32 8, i64 1
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %24, align 4, !tbaa !44
  store <4 x float> <float 0x46293E5940000000, float 0x46293E5940000000, float 0x46293E5940000000, float 0xC6293E5940000000>, ptr %19, align 8, !tbaa !44
  %25 = getelementptr inbounds %struct.ccd_Mesh, ptr %15, i64 0, i32 3
  store ptr null, ptr %25, align 8, !tbaa !177
  %26 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 110
  %27 = load ptr, ptr %26, align 8, !tbaa !246
  %28 = getelementptr inbounds %struct.PartDeflect, ptr %27, i64 0, i32 27
  %29 = load float, ptr %28, align 4, !tbaa !290
  %30 = getelementptr inbounds %struct.PartDeflect, ptr %27, i64 0, i32 28
  %31 = load float, ptr %30, align 8, !tbaa !291
  %32 = tail call fastcc float @max_ff(float noundef %29, float noundef %31) #24
  %33 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %34 = getelementptr inbounds %struct.CollisionModifierData, ptr %3, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !292
  %36 = tail call ptr %33(ptr noundef %35) #23
  %37 = getelementptr inbounds %struct.ccd_Mesh, ptr %15, i64 0, i32 2
  store ptr %36, ptr %37, align 8, !tbaa !176
  %38 = load i32, ptr %15, align 8, !tbaa !288
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %76

40:                                               ; preds = %13
  %41 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 1
  %42 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 2
  %43 = load float, ptr %19, align 8, !tbaa !44
  %44 = load float, ptr %21, align 4, !tbaa !44
  %45 = load float, ptr %20, align 8, !tbaa !44
  %46 = load float, ptr %22, align 4, !tbaa !44
  %47 = load float, ptr %24, align 4, !tbaa !44
  %48 = load float, ptr %23, align 4, !tbaa !44
  %49 = zext nneg i32 %38 to i64
  br label %50

50:                                               ; preds = %40, %50
  %51 = phi i64 [ 0, %40 ], [ %74, %50 ]
  %52 = phi float [ %48, %40 ], [ %73, %50 ]
  %53 = phi float [ %47, %40 ], [ %71, %50 ]
  %54 = phi float [ %46, %40 ], [ %69, %50 ]
  %55 = phi float [ %45, %40 ], [ %67, %50 ]
  %56 = phi float [ %44, %40 ], [ %64, %50 ]
  %57 = phi float [ %43, %40 ], [ %61, %50 ]
  %58 = getelementptr inbounds %struct.MVert, ptr %36, i64 %51
  call fastcc void @copy_v3_v3(ptr noundef nonnull %2, ptr noundef %58) #24
  %59 = load float, ptr %2, align 4, !tbaa !44
  %60 = fsub float %59, %32
  %61 = tail call fastcc float @min_ff(float noundef %57, float noundef %60) #24
  store float %61, ptr %19, align 8, !tbaa !44
  %62 = load float, ptr %41, align 4, !tbaa !44
  %63 = fsub float %62, %32
  %64 = tail call fastcc float @min_ff(float noundef %56, float noundef %63) #24
  store float %64, ptr %21, align 4, !tbaa !44
  %65 = load float, ptr %42, align 4, !tbaa !44
  %66 = fsub float %65, %32
  %67 = tail call fastcc float @min_ff(float noundef %55, float noundef %66) #24
  store float %67, ptr %20, align 8, !tbaa !44
  %68 = fadd float %32, %59
  %69 = tail call fastcc float @max_ff(float noundef %54, float noundef %68) #24
  store float %69, ptr %22, align 4, !tbaa !44
  %70 = fadd float %32, %62
  %71 = tail call fastcc float @max_ff(float noundef %53, float noundef %70) #24
  store float %71, ptr %24, align 4, !tbaa !44
  %72 = fadd float %32, %65
  %73 = tail call fastcc float @max_ff(float noundef %52, float noundef %72) #24
  store float %73, ptr %23, align 4, !tbaa !44
  %74 = add nuw nsw i64 %51, 1
  %75 = icmp eq i64 %74, %49
  br i1 %75, label %76, label %50, !llvm.loop !305

76:                                               ; preds = %50, %13
  %77 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %78 = getelementptr inbounds %struct.CollisionModifierData, ptr %3, i64 0, i32 7
  %79 = load ptr, ptr %78, align 8, !tbaa !306
  %80 = tail call ptr %77(ptr noundef %79) #23
  %81 = getelementptr inbounds %struct.ccd_Mesh, ptr %15, i64 0, i32 4
  store ptr %80, ptr %81, align 8, !tbaa !175
  %82 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %83 = load i32, ptr %16, align 4, !tbaa !289
  %84 = sext i32 %83 to i64
  %85 = mul nsw i64 %84, 24
  %86 = tail call ptr %82(i64 noundef %85, ptr noundef nonnull @.str.17) #23
  %87 = getelementptr inbounds %struct.ccd_Mesh, ptr %15, i64 0, i32 6
  store ptr %86, ptr %87, align 8, !tbaa !178
  %88 = load i32, ptr %16, align 4, !tbaa !289
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %206

90:                                               ; preds = %76
  %91 = load ptr, ptr %81, align 8, !tbaa !175
  %92 = load ptr, ptr %37, align 8, !tbaa !176
  %93 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 1
  %94 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 2
  br label %95

95:                                               ; preds = %90, %201
  %96 = phi i32 [ 0, %90 ], [ %204, %201 ]
  %97 = phi ptr [ %91, %90 ], [ %203, %201 ]
  %98 = phi ptr [ %86, %90 ], [ %202, %201 ]
  %99 = getelementptr inbounds %struct.ccdf_minmax, ptr %98, i64 0, i32 2
  %100 = getelementptr inbounds %struct.ccdf_minmax, ptr %98, i64 0, i32 1
  %101 = getelementptr inbounds %struct.ccdf_minmax, ptr %98, i64 0, i32 5
  %102 = getelementptr inbounds %struct.ccdf_minmax, ptr %98, i64 0, i32 4
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %102, align 4, !tbaa !44
  %103 = getelementptr inbounds %struct.ccdf_minmax, ptr %98, i64 0, i32 3
  store <4 x float> <float 0x46293E5940000000, float 0x46293E5940000000, float 0x46293E5940000000, float 0xC6293E5940000000>, ptr %98, align 4, !tbaa !44
  %104 = load i32, ptr %97, align 4, !tbaa !194
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct.MVert, ptr %92, i64 %105
  call fastcc void @copy_v3_v3(ptr noundef nonnull %2, ptr noundef %106) #24
  %107 = load float, ptr %2, align 4, !tbaa !44
  %108 = fsub float %107, %32
  %109 = tail call fastcc float @min_ff(float noundef 0x46293E5940000000, float noundef %108) #24
  store float %109, ptr %98, align 4, !tbaa !294
  %110 = load float, ptr %100, align 4, !tbaa !296
  %111 = load float, ptr %93, align 4, !tbaa !44
  %112 = fsub float %111, %32
  %113 = tail call fastcc float @min_ff(float noundef %110, float noundef %112) #24
  store float %113, ptr %100, align 4, !tbaa !296
  %114 = load float, ptr %99, align 4, !tbaa !297
  %115 = load float, ptr %94, align 4, !tbaa !44
  %116 = fsub float %115, %32
  %117 = tail call fastcc float @min_ff(float noundef %114, float noundef %116) #24
  store float %117, ptr %99, align 4, !tbaa !297
  %118 = load float, ptr %103, align 4, !tbaa !298
  %119 = fadd float %32, %107
  %120 = tail call fastcc float @max_ff(float noundef %118, float noundef %119) #24
  store float %120, ptr %103, align 4, !tbaa !298
  %121 = load float, ptr %102, align 4, !tbaa !299
  %122 = fadd float %32, %111
  %123 = tail call fastcc float @max_ff(float noundef %121, float noundef %122) #24
  store float %123, ptr %102, align 4, !tbaa !299
  %124 = load float, ptr %101, align 4, !tbaa !300
  %125 = fadd float %32, %115
  %126 = tail call fastcc float @max_ff(float noundef %124, float noundef %125) #24
  store float %126, ptr %101, align 4, !tbaa !300
  %127 = getelementptr inbounds %struct.MFace, ptr %97, i64 0, i32 1
  %128 = load i32, ptr %127, align 4, !tbaa !196
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %struct.MVert, ptr %92, i64 %129
  call fastcc void @copy_v3_v3(ptr noundef nonnull %2, ptr noundef %130) #24
  %131 = load float, ptr %2, align 4, !tbaa !44
  %132 = fsub float %131, %32
  %133 = tail call fastcc float @min_ff(float noundef %109, float noundef %132) #24
  store float %133, ptr %98, align 4, !tbaa !294
  %134 = load float, ptr %100, align 4, !tbaa !296
  %135 = load float, ptr %93, align 4, !tbaa !44
  %136 = fsub float %135, %32
  %137 = tail call fastcc float @min_ff(float noundef %134, float noundef %136) #24
  store float %137, ptr %100, align 4, !tbaa !296
  %138 = load float, ptr %99, align 4, !tbaa !297
  %139 = load float, ptr %94, align 4, !tbaa !44
  %140 = fsub float %139, %32
  %141 = tail call fastcc float @min_ff(float noundef %138, float noundef %140) #24
  store float %141, ptr %99, align 4, !tbaa !297
  %142 = load float, ptr %103, align 4, !tbaa !298
  %143 = fadd float %32, %131
  %144 = tail call fastcc float @max_ff(float noundef %142, float noundef %143) #24
  store float %144, ptr %103, align 4, !tbaa !298
  %145 = load float, ptr %102, align 4, !tbaa !299
  %146 = fadd float %32, %135
  %147 = tail call fastcc float @max_ff(float noundef %145, float noundef %146) #24
  store float %147, ptr %102, align 4, !tbaa !299
  %148 = load float, ptr %101, align 4, !tbaa !300
  %149 = fadd float %32, %139
  %150 = tail call fastcc float @max_ff(float noundef %148, float noundef %149) #24
  store float %150, ptr %101, align 4, !tbaa !300
  %151 = getelementptr inbounds %struct.MFace, ptr %97, i64 0, i32 2
  %152 = load i32, ptr %151, align 4, !tbaa !195
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds %struct.MVert, ptr %92, i64 %153
  call fastcc void @copy_v3_v3(ptr noundef nonnull %2, ptr noundef %154) #24
  %155 = load float, ptr %2, align 4, !tbaa !44
  %156 = fsub float %155, %32
  %157 = tail call fastcc float @min_ff(float noundef %133, float noundef %156) #24
  store float %157, ptr %98, align 4, !tbaa !294
  %158 = load float, ptr %100, align 4, !tbaa !296
  %159 = load float, ptr %93, align 4, !tbaa !44
  %160 = fsub float %159, %32
  %161 = tail call fastcc float @min_ff(float noundef %158, float noundef %160) #24
  store float %161, ptr %100, align 4, !tbaa !296
  %162 = load float, ptr %99, align 4, !tbaa !297
  %163 = load float, ptr %94, align 4, !tbaa !44
  %164 = fsub float %163, %32
  %165 = tail call fastcc float @min_ff(float noundef %162, float noundef %164) #24
  store float %165, ptr %99, align 4, !tbaa !297
  %166 = load float, ptr %103, align 4, !tbaa !298
  %167 = fadd float %32, %155
  %168 = tail call fastcc float @max_ff(float noundef %166, float noundef %167) #24
  store float %168, ptr %103, align 4, !tbaa !298
  %169 = load float, ptr %102, align 4, !tbaa !299
  %170 = fadd float %32, %159
  %171 = tail call fastcc float @max_ff(float noundef %169, float noundef %170) #24
  store float %171, ptr %102, align 4, !tbaa !299
  %172 = load float, ptr %101, align 4, !tbaa !300
  %173 = fadd float %32, %163
  %174 = tail call fastcc float @max_ff(float noundef %172, float noundef %173) #24
  store float %174, ptr %101, align 4, !tbaa !300
  %175 = getelementptr inbounds %struct.MFace, ptr %97, i64 0, i32 3
  %176 = load i32, ptr %175, align 4, !tbaa !192
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %201, label %178

178:                                              ; preds = %95
  %179 = zext i32 %176 to i64
  %180 = getelementptr inbounds %struct.MVert, ptr %92, i64 %179
  call fastcc void @copy_v3_v3(ptr noundef nonnull %2, ptr noundef nonnull %180) #24
  %181 = load float, ptr %2, align 4, !tbaa !44
  %182 = fsub float %181, %32
  %183 = tail call fastcc float @min_ff(float noundef %157, float noundef %182) #24
  store float %183, ptr %98, align 4, !tbaa !294
  %184 = load float, ptr %100, align 4, !tbaa !296
  %185 = load float, ptr %93, align 4, !tbaa !44
  %186 = fsub float %185, %32
  %187 = tail call fastcc float @min_ff(float noundef %184, float noundef %186) #24
  store float %187, ptr %100, align 4, !tbaa !296
  %188 = load float, ptr %99, align 4, !tbaa !297
  %189 = load float, ptr %94, align 4, !tbaa !44
  %190 = fsub float %189, %32
  %191 = tail call fastcc float @min_ff(float noundef %188, float noundef %190) #24
  store float %191, ptr %99, align 4, !tbaa !297
  %192 = load float, ptr %103, align 4, !tbaa !298
  %193 = fadd float %32, %181
  %194 = tail call fastcc float @max_ff(float noundef %192, float noundef %193) #24
  store float %194, ptr %103, align 4, !tbaa !298
  %195 = load float, ptr %102, align 4, !tbaa !299
  %196 = fadd float %32, %185
  %197 = tail call fastcc float @max_ff(float noundef %195, float noundef %196) #24
  store float %197, ptr %102, align 4, !tbaa !299
  %198 = load float, ptr %101, align 4, !tbaa !300
  %199 = fadd float %32, %189
  %200 = tail call fastcc float @max_ff(float noundef %198, float noundef %199) #24
  store float %200, ptr %101, align 4, !tbaa !300
  br label %201

201:                                              ; preds = %178, %95
  %202 = getelementptr inbounds %struct.ccdf_minmax, ptr %98, i64 1
  %203 = getelementptr inbounds %struct.MFace, ptr %97, i64 1
  %204 = add nuw nsw i32 %96, 1
  %205 = icmp eq i32 %204, %88
  br i1 %205, label %206, label %95, !llvm.loop !307

206:                                              ; preds = %201, %76, %5, %9, %1
  %207 = phi ptr [ null, %1 ], [ null, %9 ], [ null, %5 ], [ %15, %76 ], [ %15, %201 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #25
  ret ptr %207
}

; Function Attrs: optsize
declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc float @_final_goal(ptr noundef readonly %0, ptr noundef readonly %1) unnamed_addr #10 !PGOFuncName !308 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 111
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 104
  %8 = load i16, ptr %7, align 2, !tbaa !84
  %9 = and i16 %8, 2
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %32, label %11

11:                                               ; preds = %4
  %12 = icmp ne ptr %6, null
  %13 = icmp ne ptr %1, null
  %14 = and i1 %13, %12
  br i1 %14, label %15, label %30

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.BodyPoint, ptr %1, i64 0, i32 6
  %17 = load float, ptr %16, align 8, !tbaa !117
  %18 = fcmp olt float %17, 0.000000e+00
  br i1 %18, label %32, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.SoftBody, ptr %6, i64 0, i32 15
  %21 = load float, ptr %20, align 8, !tbaa !309
  %22 = getelementptr inbounds %struct.SoftBody, ptr %6, i64 0, i32 16
  %23 = load float, ptr %22, align 4, !tbaa !310
  %24 = fsub float %23, %21
  %25 = tail call float @llvm.fabs.f32(float %24)
  %26 = tail call float @llvm.fmuladd.f32(float %17, float %25, float %21)
  %27 = fpext float %26 to double
  %28 = tail call double @pow(double noundef %27, double noundef 4.000000e+00) #23
  %29 = fptrunc double %28 to float
  br label %32

30:                                               ; preds = %11, %2
  %31 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.25)
  br label %32

32:                                               ; preds = %15, %4, %19, %30
  %33 = phi float [ 0xC09F3FF5C0000000, %30 ], [ 0.000000e+00, %15 ], [ 0.000000e+00, %4 ], [ %29, %19 ]
  ret float %33
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #15

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #13

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @softbody_calc_forcesEx(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3) unnamed_addr #0 !PGOFuncName !311 {
  %5 = alloca ptr, align 8
  %6 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 111
  %7 = load ptr, ptr %6, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  %8 = tail call fastcc i32 @query_external_colliders(ptr noundef %0, ptr noundef %1) #24, !range !159
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 104
  %12 = load i16, ptr %11, align 2, !tbaa !84
  %13 = zext i16 %12 to i32
  %14 = and i32 %13, 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = and i32 %13, 2048
  %18 = icmp ne i32 %17, 0
  br label %19

19:                                               ; preds = %16, %10, %4
  %20 = phi i1 [ false, %10 ], [ false, %4 ], [ %18, %16 ]
  %21 = getelementptr inbounds %struct.SoftBody, ptr %7, i64 0, i32 37
  %22 = load i16, ptr %21, align 2, !tbaa !260
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 104
  %26 = load i16, ptr %25, align 2, !tbaa !84
  %27 = and i16 %26, 4
  %28 = icmp ne i16 %27, 0
  br label %29

29:                                               ; preds = %24, %19
  %30 = phi i1 [ false, %19 ], [ %28, %24 ]
  %31 = select i1 %20, i1 true, i1 %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.SoftBody, ptr %7, i64 0, i32 1
  %34 = load i32, ptr %33, align 4, !tbaa !149
  tail call fastcc void @sb_sfesf_threads_run(ptr noundef %0, ptr noundef nonnull %1, float noundef %3, i32 noundef %34) #24
  br label %35

35:                                               ; preds = %29, %32
  %36 = getelementptr inbounds %struct.SoftBody, ptr %7, i64 0, i32 49
  %37 = load ptr, ptr %36, align 8, !tbaa !57
  %38 = tail call ptr @pdInitEffectors(ptr noundef %0, ptr noundef nonnull %1, ptr noundef null, ptr noundef %37, i8 noundef zeroext 1) #23
  store ptr %38, ptr %5, align 8, !tbaa !34
  br i1 %9, label %41, label %39

39:                                               ; preds = %35
  %40 = tail call fastcc i32 @sb_detect_aabb_collisionCached(ptr noundef nonnull %1) #24
  br label %41

41:                                               ; preds = %39, %35
  %42 = phi i32 [ %40, %39 ], [ 0, %35 ]
  %43 = load i32, ptr %7, align 8, !tbaa !69
  tail call fastcc void @sb_cf_threads_run(ptr noundef %0, ptr noundef nonnull %1, float noundef %2, float noundef %3, i32 noundef %43, ptr noundef %38, i32 noundef %42) #24
  %44 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 104
  %45 = load i16, ptr %44, align 2, !tbaa !84
  %46 = and i16 %45, 1024
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %41
  tail call fastcc void @scan_for_ext_face_forces(ptr noundef nonnull %1, float noundef %3) #24
  br label %49

49:                                               ; preds = %48, %41
  call void @pdEndEffectors(ptr noundef nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @scan_for_ext_spring_forces(ptr noundef %0, ptr noundef %1, float noundef %2) unnamed_addr #0 !PGOFuncName !312 {
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 111
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %7 = getelementptr inbounds %struct.SoftBody, ptr %6, i64 0, i32 49
  %8 = load ptr, ptr %7, align 8, !tbaa !57
  %9 = tail call ptr @pdInitEffectors(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef %8, i8 noundef zeroext 1) #23
  store ptr %9, ptr %4, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.SoftBody, ptr %6, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !149
  tail call fastcc void @_scan_for_ext_spring_forces(ptr noundef %0, ptr noundef %1, float noundef %2, i32 noundef 0, i32 noundef %11, ptr noundef %9) #24
  call void @pdEndEffectors(ptr noundef nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  ret void
}

; Function Attrs: optsize
declare ptr @pdInitEffectors(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @sb_detect_aabb_collisionCached(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !313 {
  %2 = alloca [3 x float], align 4
  %3 = alloca [3 x float], align 4
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 111
  %5 = load ptr, ptr %4, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #25
  %6 = icmp eq ptr %5, null
  br i1 %6, label %75, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.SoftBody, ptr %5, i64 0, i32 44
  %9 = load ptr, ptr %8, align 8, !tbaa !60
  %10 = icmp eq ptr %9, null
  br i1 %10, label %75, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.SBScratch, ptr %9, i64 0, i32 5
  call fastcc void @copy_v3_v3(ptr noundef nonnull %2, ptr noundef nonnull %12) #24
  %13 = getelementptr inbounds %struct.SBScratch, ptr %9, i64 0, i32 6
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %13) #24
  %14 = load ptr, ptr %9, align 8, !tbaa !61
  %15 = tail call ptr @BLI_ghashIterator_new(ptr noundef %14) #23
  %16 = tail call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %15) #24, !range !314
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %73

18:                                               ; preds = %11
  %19 = load float, ptr %3, align 4
  %20 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %21 = load float, ptr %20, align 4
  %22 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %23 = load float, ptr %22, align 4
  %24 = load float, ptr %2, align 4
  %25 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 1
  %26 = load float, ptr %25, align 4
  %27 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 2
  %28 = load float, ptr %27, align 4
  br label %29

29:                                               ; preds = %18, %69
  %30 = phi i32 [ 0, %18 ], [ %70, %69 ]
  %31 = tail call fastcc ptr @BLI_ghashIterator_getValue(ptr noundef %15) #24
  %32 = tail call fastcc ptr @BLI_ghashIterator_getKey(ptr noundef %15) #24
  %33 = getelementptr inbounds %struct.Object, ptr %32, i64 0, i32 110
  %34 = load ptr, ptr %33, align 8, !tbaa !246
  %35 = icmp eq ptr %34, null
  br i1 %35, label %69, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.PartDeflect, ptr %34, i64 0, i32 1
  %38 = load i16, ptr %37, align 4, !tbaa !247
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %69, label %40

40:                                               ; preds = %36
  %41 = icmp eq ptr %31, null
  br i1 %41, label %66, label %42

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.ccd_Mesh, ptr %31, i64 0, i32 7
  %44 = load float, ptr %43, align 8, !tbaa !44
  %45 = fcmp olt float %19, %44
  br i1 %45, label %69, label %46, !llvm.loop !315

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.ccd_Mesh, ptr %31, i64 0, i32 7, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !44
  %49 = fcmp olt float %21, %48
  br i1 %49, label %69, label %50, !llvm.loop !315

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.ccd_Mesh, ptr %31, i64 0, i32 7, i64 2
  %52 = load float, ptr %51, align 8, !tbaa !44
  %53 = fcmp olt float %23, %52
  br i1 %53, label %69, label %54, !llvm.loop !315

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.ccd_Mesh, ptr %31, i64 0, i32 8
  %56 = load float, ptr %55, align 4, !tbaa !44
  %57 = fcmp ogt float %24, %56
  br i1 %57, label %69, label %58, !llvm.loop !315

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.ccd_Mesh, ptr %31, i64 0, i32 8, i64 1
  %60 = load float, ptr %59, align 4, !tbaa !44
  %61 = fcmp ogt float %26, %60
  br i1 %61, label %69, label %62, !llvm.loop !315

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.ccd_Mesh, ptr %31, i64 0, i32 8, i64 2
  %64 = load float, ptr %63, align 4, !tbaa !44
  %65 = fcmp ogt float %28, %64
  br i1 %65, label %69, label %68, !llvm.loop !315

66:                                               ; preds = %40
  %67 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.32)
  br label %69, !llvm.loop !315

68:                                               ; preds = %62
  br label %69

69:                                               ; preds = %29, %36, %42, %46, %50, %54, %58, %62, %68, %66
  %70 = phi i32 [ %30, %66 ], [ %30, %62 ], [ %30, %58 ], [ %30, %54 ], [ %30, %50 ], [ %30, %46 ], [ %30, %42 ], [ %30, %36 ], [ %30, %29 ], [ 2, %68 ]
  tail call void @BLI_ghashIterator_step(ptr noundef %15) #23
  %71 = tail call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %15) #24, !range !314
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %29, label %73

73:                                               ; preds = %69, %11
  %74 = phi i32 [ 0, %11 ], [ %70, %69 ]
  tail call void @BLI_ghashIterator_free(ptr noundef %15) #23
  br label %75

75:                                               ; preds = %1, %7, %73
  %76 = phi i32 [ %74, %73 ], [ 0, %7 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #25
  ret i32 %76
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3(ptr nocapture noundef %0) unnamed_addr #12 !PGOFuncName !316 {
  %2 = tail call fastcc float @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #24
  ret float %2
}

; Function Attrs: optsize
declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @Vec3PlusStVec(ptr nocapture noundef %0, float noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #4 !PGOFuncName !317 {
  %4 = load float, ptr %2, align 4, !tbaa !44
  %5 = load float, ptr %0, align 4, !tbaa !44
  %6 = tail call float @llvm.fmuladd.f32(float %1, float %4, float %5)
  store float %6, ptr %0, align 4, !tbaa !44
  %7 = getelementptr inbounds float, ptr %2, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !44
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !44
  %11 = tail call float @llvm.fmuladd.f32(float %1, float %8, float %10)
  store float %11, ptr %9, align 4, !tbaa !44
  %12 = getelementptr inbounds float, ptr %2, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !44
  %14 = getelementptr inbounds float, ptr %0, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !44
  %16 = tail call float @llvm.fmuladd.f32(float %1, float %13, float %15)
  store float %16, ptr %14, align 4, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 !PGOFuncName !318 {
  %4 = load float, ptr %1, align 4, !tbaa !44
  %5 = load float, ptr %2, align 4, !tbaa !44
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !44
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !44
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !44
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !44
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !44
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !44
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3fl(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #4 !PGOFuncName !319 {
  %4 = load float, ptr %1, align 4, !tbaa !44
  %5 = load float, ptr %0, align 4, !tbaa !44
  %6 = tail call float @llvm.fmuladd.f32(float %4, float %2, float %5)
  store float %6, ptr %0, align 4, !tbaa !44
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !44
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !44
  %11 = tail call float @llvm.fmuladd.f32(float %8, float %2, float %10)
  store float %11, ptr %9, align 4, !tbaa !44
  %12 = getelementptr inbounds float, ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !44
  %14 = getelementptr inbounds float, ptr %0, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !44
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %2, float %15)
  store float %16, ptr %14, align 4, !tbaa !44
  ret void
}

; Function Attrs: optsize
declare void @pd_point_from_soft(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @pdDoEffectors(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @sb_deflect_face(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4, float noundef %5, ptr nocapture noundef writeonly %6, ptr nocapture noundef %7) unnamed_addr #0 !PGOFuncName !320 {
  %9 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #25
  call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef %1) #24
  %10 = call fastcc i32 @sb_detect_vertex_collisionCached(ptr noundef nonnull %9, ptr noundef %2, ptr noundef %4, ptr noundef %3, ptr noundef %0, float noundef %5, ptr noundef %6, ptr noundef %7) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #25
  ret i32 %10
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @sb_spring_force(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #10 !PGOFuncName !321 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 111
  %7 = load ptr, ptr %6, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #25
  %8 = load i32, ptr %2, align 4, !tbaa !138
  %9 = icmp eq i32 %8, %1
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.SoftBody, ptr %7, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !68
  %13 = sext i32 %1 to i64
  %14 = getelementptr inbounds %struct.BodyPoint, ptr %12, i64 %13
  %15 = getelementptr inbounds %struct.BodySpring, ptr %2, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !139
  br label %28

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.BodySpring, ptr %2, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !139
  %20 = icmp eq i32 %19, %1
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.SoftBody, ptr %7, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !68
  %24 = sext i32 %1 to i64
  %25 = getelementptr inbounds %struct.BodyPoint, ptr %23, i64 %24
  br label %28

26:                                               ; preds = %17
  %27 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.27)
  br label %86

28:                                               ; preds = %21, %10
  %29 = phi i32 [ %8, %21 ], [ %16, %10 ]
  %30 = phi ptr [ %23, %21 ], [ %12, %10 ]
  %31 = phi ptr [ %25, %21 ], [ %14, %10 ]
  %32 = sext i32 %29 to i64
  %33 = getelementptr inbounds %struct.BodyPoint, ptr %31, i64 0, i32 3
  %34 = getelementptr inbounds %struct.BodyPoint, ptr %30, i64 %32, i32 3
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %33, ptr noundef nonnull %34) #24
  %35 = call fastcc float @normalize_v3(ptr noundef nonnull %4) #24
  %36 = getelementptr inbounds %struct.BodySpring, ptr %2, i64 0, i32 2
  %37 = load float, ptr %36, align 4, !tbaa !140
  %38 = fcmp olt float %37, %35
  %39 = getelementptr inbounds %struct.SoftBody, ptr %7, i64 0, i32 21
  %40 = getelementptr inbounds %struct.SoftBody, ptr %7, i64 0, i32 46
  %41 = select i1 %38, ptr %39, ptr %40
  %42 = load float, ptr %41, align 4, !tbaa !44
  %43 = fsub float 1.000000e+00, %42
  %44 = fdiv float 1.000000e+00, %43
  %45 = fadd float %44, -1.000000e+00
  %46 = fcmp ogt float %37, 0.000000e+00
  %47 = select i1 %46, float %37, float 1.000000e+00
  %48 = fdiv float %45, %47
  %49 = getelementptr inbounds %struct.BodyPoint, ptr %31, i64 0, i32 21
  %50 = load float, ptr %49, align 8, !tbaa !119
  %51 = getelementptr inbounds %struct.BodyPoint, ptr %30, i64 %32, i32 21
  %52 = load float, ptr %51, align 8, !tbaa !119
  %53 = fadd float %50, %52
  %54 = fmul float %53, 5.000000e-01
  %55 = fmul float %54, %54
  %56 = fmul float %55, %55
  %57 = getelementptr inbounds %struct.BodySpring, ptr %2, i64 0, i32 6
  %58 = load i32, ptr %57, align 4, !tbaa !121
  switch i32 %58, label %72 [
    i32 1, label %59
    i32 4, label %59
    i32 2, label %61
    i32 3, label %66
  ]

59:                                               ; preds = %28, %28
  %60 = fmul float %48, %56
  br label %72

61:                                               ; preds = %28
  %62 = getelementptr inbounds %struct.SoftBody, ptr %7, i64 0, i32 32
  %63 = load float, ptr %62, align 8, !tbaa !124
  %64 = fmul float %56, %63
  %65 = fmul float %48, %64
  br label %72

66:                                               ; preds = %28
  %67 = getelementptr inbounds %struct.SoftBody, ptr %7, i64 0, i32 45
  %68 = load float, ptr %67, align 8, !tbaa !54
  %69 = fmul float %68, %68
  %70 = fmul float %56, %69
  %71 = fmul float %48, %70
  br label %72

72:                                               ; preds = %28, %66, %61, %59
  %73 = phi float [ %48, %28 ], [ %71, %66 ], [ %65, %61 ], [ %60, %59 ]
  %74 = getelementptr inbounds %struct.BodyPoint, ptr %31, i64 0, i32 5
  %75 = fsub float %37, %35
  %76 = fmul float %75, %73
  call fastcc void @Vec3PlusStVec(ptr noundef nonnull %74, float noundef %76, ptr noundef nonnull %4) #24
  %77 = getelementptr inbounds %struct.BodyPoint, ptr %31, i64 0, i32 4
  %78 = getelementptr inbounds %struct.BodyPoint, ptr %30, i64 %32, i32 4
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %77, ptr noundef nonnull %78) #24
  %79 = getelementptr inbounds %struct.SoftBody, ptr %7, i64 0, i32 22
  %80 = load float, ptr %79, align 4, !tbaa !322
  %81 = call fastcc float @normalize_v3(ptr noundef nonnull %5) #24
  %82 = call fastcc float @dot_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %5) #24
  %83 = fmul float %81, %82
  %84 = fmul float %80, 0xBF847AE140000000
  %85 = fmul float %84, %83
  call fastcc void @Vec3PlusStVec(ptr noundef nonnull %74, float noundef %85, ptr noundef nonnull %4) #24
  br label %86

86:                                               ; preds = %72, %26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @scan_for_ext_face_forces(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #0 !PGOFuncName !323 {
  %3 = alloca float, align 4
  %4 = alloca [3 x float], align 8
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 111
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #25
  store float 0.000000e+00, ptr %3, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #25
  %7 = icmp eq ptr %6, null
  br i1 %7, label %218, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.SoftBody, ptr %6, i64 0, i32 44
  %10 = load ptr, ptr %9, align 8, !tbaa !60
  %11 = getelementptr inbounds %struct.SBScratch, ptr %10, i64 0, i32 4
  %12 = load i32, ptr %11, align 8, !tbaa !65
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %218

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.SBScratch, ptr %10, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !64
  %17 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %18 = getelementptr inbounds %struct.SoftBody, ptr %6, i64 0, i32 2
  br label %19

19:                                               ; preds = %14, %167
  %20 = phi float [ -1.000000e+01, %14 ], [ %169, %167 ]
  %21 = phi float [ 1.000000e+00, %14 ], [ %168, %167 ]
  %22 = phi i32 [ 0, %14 ], [ %170, %167 ]
  %23 = phi ptr [ %16, %14 ], [ %171, %167 ]
  %24 = getelementptr inbounds %struct.BodyFace, ptr %23, i64 0, i32 4
  %25 = getelementptr inbounds %struct.BodyFace, ptr %23, i64 0, i32 4, i64 2
  store float 0.000000e+00, ptr %25, align 4, !tbaa !44
  store <2 x float> zeroinitializer, ptr %24, align 4, !tbaa !44
  %26 = getelementptr inbounds %struct.BodyFace, ptr %23, i64 0, i32 5
  %27 = load i16, ptr %26, align 4, !tbaa !324
  %28 = and i16 %27, -2
  store i16 %28, ptr %26, align 4, !tbaa !324
  store float 0.000000e+00, ptr %17, align 8, !tbaa !44
  store <2 x float> zeroinitializer, ptr %4, align 8, !tbaa !44
  %29 = load ptr, ptr %18, align 8, !tbaa !68
  %30 = load i32, ptr %23, align 4, !tbaa !326
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.BodyPoint, ptr %29, i64 %31, i32 3
  %33 = getelementptr inbounds %struct.BodyFace, ptr %23, i64 0, i32 1
  %34 = load i32, ptr %33, align 4, !tbaa !327
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.BodyPoint, ptr %29, i64 %35, i32 3
  %37 = getelementptr inbounds %struct.BodyFace, ptr %23, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !328
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.BodyPoint, ptr %29, i64 %39, i32 3
  %41 = call fastcc i32 @sb_detect_face_collisionCached(ptr noundef nonnull %32, ptr noundef nonnull %36, ptr noundef nonnull %40, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %0, float noundef %1) #24
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %61, label %43

43:                                               ; preds = %19
  %44 = load ptr, ptr %18, align 8, !tbaa !68
  %45 = load i32, ptr %23, align 4, !tbaa !326
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.BodyPoint, ptr %44, i64 %46, i32 5
  call fastcc void @Vec3PlusStVec(ptr noundef nonnull %47, float noundef %20, ptr noundef nonnull %4) #24
  %48 = load ptr, ptr %18, align 8, !tbaa !68
  %49 = load i32, ptr %33, align 4, !tbaa !327
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.BodyPoint, ptr %48, i64 %50, i32 5
  call fastcc void @Vec3PlusStVec(ptr noundef nonnull %51, float noundef %20, ptr noundef nonnull %4) #24
  %52 = load ptr, ptr %18, align 8, !tbaa !68
  %53 = load i32, ptr %37, align 4, !tbaa !328
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.BodyPoint, ptr %52, i64 %54, i32 5
  call fastcc void @Vec3PlusStVec(ptr noundef nonnull %55, float noundef %20, ptr noundef nonnull %4) #24
  %56 = load i16, ptr %26, align 4, !tbaa !324
  %57 = or i16 %56, 1
  store i16 %57, ptr %26, align 4, !tbaa !324
  %58 = load float, ptr %3, align 4, !tbaa !44
  %59 = tail call fastcc float @max_ff(float noundef %58, float noundef %21) #24
  %60 = tail call fastcc float @min_ff(float noundef %59, float noundef 1.000000e+00) #24
  br label %61

61:                                               ; preds = %43, %19
  %62 = phi float [ %60, %43 ], [ %21, %19 ]
  store float 0.000000e+00, ptr %17, align 8, !tbaa !44
  store <2 x float> zeroinitializer, ptr %4, align 8, !tbaa !44
  %63 = getelementptr inbounds %struct.BodyFace, ptr %23, i64 0, i32 3
  %64 = load i32, ptr %63, align 4, !tbaa !329
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %96, label %66

66:                                               ; preds = %61
  %67 = load ptr, ptr %18, align 8, !tbaa !68
  %68 = load i32, ptr %23, align 4, !tbaa !326
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.BodyPoint, ptr %67, i64 %69, i32 3
  %71 = load i32, ptr %37, align 4, !tbaa !328
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.BodyPoint, ptr %67, i64 %72, i32 3
  %74 = sext i32 %64 to i64
  %75 = getelementptr inbounds %struct.BodyPoint, ptr %67, i64 %74, i32 3
  %76 = call fastcc i32 @sb_detect_face_collisionCached(ptr noundef nonnull %70, ptr noundef nonnull %73, ptr noundef nonnull %75, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %0, float noundef %1) #24
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %96, label %78

78:                                               ; preds = %66
  %79 = load ptr, ptr %18, align 8, !tbaa !68
  %80 = load i32, ptr %23, align 4, !tbaa !326
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.BodyPoint, ptr %79, i64 %81, i32 5
  call fastcc void @Vec3PlusStVec(ptr noundef nonnull %82, float noundef %20, ptr noundef nonnull %4) #24
  %83 = load ptr, ptr %18, align 8, !tbaa !68
  %84 = load i32, ptr %37, align 4, !tbaa !328
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.BodyPoint, ptr %83, i64 %85, i32 5
  call fastcc void @Vec3PlusStVec(ptr noundef nonnull %86, float noundef %20, ptr noundef nonnull %4) #24
  %87 = load ptr, ptr %18, align 8, !tbaa !68
  %88 = load i32, ptr %63, align 4, !tbaa !329
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.BodyPoint, ptr %87, i64 %89, i32 5
  call fastcc void @Vec3PlusStVec(ptr noundef nonnull %90, float noundef %20, ptr noundef nonnull %4) #24
  %91 = load i16, ptr %26, align 4, !tbaa !324
  %92 = or i16 %91, 1
  store i16 %92, ptr %26, align 4, !tbaa !324
  %93 = load float, ptr %3, align 4, !tbaa !44
  %94 = tail call fastcc float @max_ff(float noundef %93, float noundef %62) #24
  %95 = tail call fastcc float @min_ff(float noundef %94, float noundef 1.000000e+00) #24
  br label %96

96:                                               ; preds = %78, %66, %61
  %97 = phi float [ %95, %78 ], [ %62, %66 ], [ %62, %61 ]
  %98 = load i16, ptr %26, align 4, !tbaa !324
  %99 = and i16 %98, 1
  %100 = icmp eq i16 %99, 0
  br i1 %100, label %101, label %167

101:                                              ; preds = %96
  %102 = and i16 %98, -4
  store i16 %102, ptr %26, align 4, !tbaa !324
  store float 0.000000e+00, ptr %17, align 8, !tbaa !44
  store <2 x float> zeroinitializer, ptr %4, align 8, !tbaa !44
  %103 = load ptr, ptr %18, align 8, !tbaa !68
  %104 = load i32, ptr %23, align 4, !tbaa !326
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.BodyPoint, ptr %103, i64 %105, i32 3
  %107 = load i32, ptr %33, align 4, !tbaa !327
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.BodyPoint, ptr %103, i64 %108, i32 3
  %110 = load i32, ptr %37, align 4, !tbaa !328
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.BodyPoint, ptr %103, i64 %111, i32 3
  %113 = call fastcc i32 @sb_detect_face_pointCached(ptr noundef nonnull %106, ptr noundef nonnull %109, ptr noundef nonnull %112, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %0, float noundef %1) #24
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %133, label %115

115:                                              ; preds = %101
  %116 = load ptr, ptr %18, align 8, !tbaa !68
  %117 = load i32, ptr %23, align 4, !tbaa !326
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.BodyPoint, ptr %116, i64 %118, i32 5
  call fastcc void @Vec3PlusStVec(ptr noundef nonnull %119, float noundef -1.000000e+00, ptr noundef nonnull %4) #24
  %120 = load ptr, ptr %18, align 8, !tbaa !68
  %121 = load i32, ptr %33, align 4, !tbaa !327
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.BodyPoint, ptr %120, i64 %122, i32 5
  call fastcc void @Vec3PlusStVec(ptr noundef nonnull %123, float noundef -1.000000e+00, ptr noundef nonnull %4) #24
  %124 = load ptr, ptr %18, align 8, !tbaa !68
  %125 = load i32, ptr %37, align 4, !tbaa !328
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.BodyPoint, ptr %124, i64 %126, i32 5
  call fastcc void @Vec3PlusStVec(ptr noundef nonnull %127, float noundef -1.000000e+00, ptr noundef nonnull %4) #24
  %128 = load i16, ptr %26, align 4, !tbaa !324
  %129 = or i16 %128, 2
  store i16 %129, ptr %26, align 4, !tbaa !324
  %130 = load float, ptr %3, align 4, !tbaa !44
  %131 = tail call fastcc float @max_ff(float noundef %130, float noundef %97) #24
  %132 = tail call fastcc float @min_ff(float noundef %131, float noundef 1.000000e+00) #24
  br label %133

133:                                              ; preds = %115, %101
  %134 = phi float [ %132, %115 ], [ %97, %101 ]
  store float 0.000000e+00, ptr %17, align 8, !tbaa !44
  store <2 x float> zeroinitializer, ptr %4, align 8, !tbaa !44
  %135 = load i32, ptr %63, align 4, !tbaa !329
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %167, label %137

137:                                              ; preds = %133
  %138 = load ptr, ptr %18, align 8, !tbaa !68
  %139 = load i32, ptr %23, align 4, !tbaa !326
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.BodyPoint, ptr %138, i64 %140, i32 3
  %142 = load i32, ptr %37, align 4, !tbaa !328
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.BodyPoint, ptr %138, i64 %143, i32 3
  %145 = sext i32 %135 to i64
  %146 = getelementptr inbounds %struct.BodyPoint, ptr %138, i64 %145, i32 3
  %147 = call fastcc i32 @sb_detect_face_pointCached(ptr noundef nonnull %141, ptr noundef nonnull %144, ptr noundef nonnull %146, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %0, float noundef %1) #24
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %167, label %149

149:                                              ; preds = %137
  %150 = load ptr, ptr %18, align 8, !tbaa !68
  %151 = load i32, ptr %23, align 4, !tbaa !326
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.BodyPoint, ptr %150, i64 %152, i32 5
  call fastcc void @Vec3PlusStVec(ptr noundef nonnull %153, float noundef -1.000000e+00, ptr noundef nonnull %4) #24
  %154 = load ptr, ptr %18, align 8, !tbaa !68
  %155 = load i32, ptr %37, align 4, !tbaa !328
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.BodyPoint, ptr %154, i64 %156, i32 5
  call fastcc void @Vec3PlusStVec(ptr noundef nonnull %157, float noundef -1.000000e+00, ptr noundef nonnull %4) #24
  %158 = load ptr, ptr %18, align 8, !tbaa !68
  %159 = load i32, ptr %63, align 4, !tbaa !329
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.BodyPoint, ptr %158, i64 %160, i32 5
  call fastcc void @Vec3PlusStVec(ptr noundef nonnull %161, float noundef -1.000000e+00, ptr noundef nonnull %4) #24
  %162 = load i16, ptr %26, align 4, !tbaa !324
  %163 = or i16 %162, 2
  store i16 %163, ptr %26, align 4, !tbaa !324
  %164 = load float, ptr %3, align 4, !tbaa !44
  %165 = tail call fastcc float @max_ff(float noundef %164, float noundef %134) #24
  %166 = tail call fastcc float @min_ff(float noundef %165, float noundef 1.000000e+00) #24
  br label %167

167:                                              ; preds = %96, %149, %137, %133
  %168 = phi float [ %166, %149 ], [ %134, %137 ], [ %134, %133 ], [ %97, %96 ]
  %169 = phi float [ -1.000000e+00, %149 ], [ -1.000000e+00, %137 ], [ -1.000000e+00, %133 ], [ %20, %96 ]
  %170 = add nuw nsw i32 %22, 1
  %171 = getelementptr inbounds %struct.BodyFace, ptr %23, i64 1
  %172 = load ptr, ptr %9, align 8, !tbaa !60
  %173 = getelementptr inbounds %struct.SBScratch, ptr %172, i64 0, i32 4
  %174 = load i32, ptr %173, align 8, !tbaa !65
  %175 = icmp slt i32 %170, %174
  br i1 %175, label %19, label %176, !llvm.loop !330

176:                                              ; preds = %167
  %177 = icmp sgt i32 %174, 0
  br i1 %177, label %178, label %218

178:                                              ; preds = %176
  %179 = getelementptr inbounds %struct.SBScratch, ptr %172, i64 0, i32 3
  %180 = load ptr, ptr %179, align 8, !tbaa !64
  %181 = getelementptr inbounds %struct.SoftBody, ptr %6, i64 0, i32 2
  br label %182

182:                                              ; preds = %178, %214
  %183 = phi i32 [ 0, %178 ], [ %215, %214 ]
  %184 = phi ptr [ %180, %178 ], [ %216, %214 ]
  %185 = getelementptr inbounds %struct.BodyFace, ptr %184, i64 0, i32 5
  %186 = load i16, ptr %185, align 4, !tbaa !324
  %187 = and i16 %186, 3
  %188 = icmp eq i16 %187, 0
  br i1 %188, label %214, label %189

189:                                              ; preds = %182
  %190 = load ptr, ptr %181, align 8, !tbaa !68
  %191 = load i32, ptr %184, align 4, !tbaa !326
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.BodyPoint, ptr %190, i64 %192, i32 16
  %194 = load float, ptr %193, align 4, !tbaa !274
  %195 = tail call fastcc float @max_ff(float noundef %194, float noundef %168) #24
  store float %195, ptr %193, align 4, !tbaa !274
  %196 = getelementptr inbounds %struct.BodyFace, ptr %184, i64 0, i32 1
  %197 = load i32, ptr %196, align 4, !tbaa !327
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.BodyPoint, ptr %190, i64 %198, i32 16
  %200 = load float, ptr %199, align 4, !tbaa !274
  %201 = tail call fastcc float @max_ff(float noundef %200, float noundef %168) #24
  store float %201, ptr %199, align 4, !tbaa !274
  %202 = getelementptr inbounds %struct.BodyFace, ptr %184, i64 0, i32 2
  %203 = load i32, ptr %202, align 4, !tbaa !328
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.BodyPoint, ptr %190, i64 %204, i32 16
  %206 = load float, ptr %205, align 4, !tbaa !274
  %207 = tail call fastcc float @max_ff(float noundef %206, float noundef %168) #24
  store float %207, ptr %205, align 4, !tbaa !274
  %208 = getelementptr inbounds %struct.BodyFace, ptr %184, i64 0, i32 3
  %209 = load i32, ptr %208, align 4, !tbaa !329
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %214, label %211

211:                                              ; preds = %189
  %212 = load float, ptr %199, align 4, !tbaa !274
  %213 = tail call fastcc float @max_ff(float noundef %212, float noundef %168) #24
  store float %213, ptr %199, align 4, !tbaa !274
  br label %214

214:                                              ; preds = %182, %211, %189
  %215 = add nuw nsw i32 %183, 1
  %216 = getelementptr inbounds %struct.BodyFace, ptr %184, i64 1
  %217 = icmp eq i32 %215, %174
  br i1 %217, label %218, label %182, !llvm.loop !331

218:                                              ; preds = %214, %176, %8, %2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  ret void
}

; Function Attrs: optsize
declare void @pdEndEffectors(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sb_sfesf_threads_run(ptr noundef %0, ptr noundef %1, float noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !332 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #25
  %7 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 111
  %8 = load ptr, ptr %7, align 8, !tbaa !75
  %9 = getelementptr inbounds %struct.SoftBody, ptr %8, i64 0, i32 49
  %10 = load ptr, ptr %9, align 8, !tbaa !57
  %11 = tail call ptr @pdInitEffectors(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef %10, i8 noundef zeroext 1) #23
  store ptr %11, ptr %5, align 8, !tbaa !34
  %12 = tail call i32 @BKE_scene_num_threads(ptr noundef %0) #23
  br label %13

13:                                               ; preds = %13, %4
  %14 = phi i32 [ %12, %4 ], [ %19, %13 ]
  %15 = sdiv i32 %3, %14
  %16 = icmp slt i32 %15, 100
  %17 = icmp sgt i32 %14, 1
  %18 = and i1 %17, %16
  %19 = add nsw i32 %14, -1
  br i1 %18, label %13, label %20, !llvm.loop !333

20:                                               ; preds = %13
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %22 = sext i32 %14 to i64
  %23 = shl nsw i64 %22, 6
  %24 = tail call ptr %21(i64 noundef %23, ptr noundef nonnull @.str.19) #23
  tail call void @llvm.memset.p0.i64(ptr align 8 %24, i8 0, i64 %23, i1 false)
  %25 = xor i32 %15, -1
  %26 = icmp sgt i32 %14, 0
  br i1 %26, label %27, label %56

27:                                               ; preds = %20
  %28 = zext nneg i32 %14 to i64
  br label %29

29:                                               ; preds = %27, %29
  %30 = phi i64 [ 0, %27 ], [ %46, %29 ]
  %31 = phi i32 [ %3, %27 ], [ %37, %29 ]
  %32 = getelementptr inbounds %struct.SB_thread_context, ptr %24, i64 %30
  store ptr %0, ptr %32, align 8, !tbaa !334
  %33 = getelementptr inbounds %struct.SB_thread_context, ptr %24, i64 %30, i32 1
  store ptr %1, ptr %33, align 8, !tbaa !336
  %34 = getelementptr inbounds %struct.SB_thread_context, ptr %24, i64 %30, i32 2
  store float 0.000000e+00, ptr %34, align 8, !tbaa !337
  %35 = getelementptr inbounds %struct.SB_thread_context, ptr %24, i64 %30, i32 3
  store float %2, ptr %35, align 4, !tbaa !338
  %36 = getelementptr inbounds %struct.SB_thread_context, ptr %24, i64 %30, i32 5
  store i32 %31, ptr %36, align 4, !tbaa !339
  %37 = add i32 %31, %25
  %38 = tail call i32 @llvm.smax.i32(i32 %37, i32 0)
  %39 = getelementptr inbounds %struct.SB_thread_context, ptr %24, i64 %30, i32 4
  store i32 %38, ptr %39, align 8
  %40 = getelementptr inbounds %struct.SB_thread_context, ptr %24, i64 %30, i32 6
  store ptr %11, ptr %40, align 8, !tbaa !340
  %41 = getelementptr inbounds %struct.SB_thread_context, ptr %24, i64 %30, i32 7
  store i32 0, ptr %41, align 8, !tbaa !341
  %42 = getelementptr inbounds %struct.SB_thread_context, ptr %24, i64 %30, i32 8
  store <2 x float> zeroinitializer, ptr %42, align 4, !tbaa !44
  %43 = getelementptr inbounds %struct.SB_thread_context, ptr %24, i64 %30, i32 10
  %44 = trunc i64 %30 to i32
  store i32 %44, ptr %43, align 4, !tbaa !342
  %45 = getelementptr inbounds %struct.SB_thread_context, ptr %24, i64 %30, i32 11
  store i32 %14, ptr %45, align 8, !tbaa !343
  %46 = add nuw nsw i64 %30, 1
  %47 = icmp eq i64 %46, %28
  br i1 %47, label %48, label %29, !llvm.loop !344

48:                                               ; preds = %29
  br i1 %17, label %49, label %56

49:                                               ; preds = %48
  call void @BLI_init_threads(ptr noundef nonnull %6, ptr noundef nonnull @exec_scan_for_ext_spring_forces, i32 noundef %14) #23
  br label %50

50:                                               ; preds = %49, %50
  %51 = phi i64 [ 0, %49 ], [ %53, %50 ]
  %52 = getelementptr inbounds %struct.SB_thread_context, ptr %24, i64 %51
  call void @BLI_insert_thread(ptr noundef nonnull %6, ptr noundef %52) #23
  %53 = add nuw nsw i64 %51, 1
  %54 = icmp slt i64 %53, %22
  br i1 %54, label %50, label %55, !llvm.loop !345

55:                                               ; preds = %50
  call void @BLI_end_threads(ptr noundef nonnull %6) #23
  br label %58

56:                                               ; preds = %20, %48
  %57 = tail call ptr @exec_scan_for_ext_spring_forces(ptr noundef %24) #24
  br label %58

58:                                               ; preds = %56, %55
  %59 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %59(ptr noundef %24) #23
  call void @pdEndEffectors(ptr noundef nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sb_cf_threads_run(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6) unnamed_addr #0 !PGOFuncName !346 {
  %8 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #25
  %9 = tail call i32 @BKE_scene_num_threads(ptr noundef %0) #23
  br label %10

10:                                               ; preds = %10, %7
  %11 = phi i32 [ %9, %7 ], [ %16, %10 ]
  %12 = sdiv i32 %4, %11
  %13 = icmp slt i32 %12, 100
  %14 = icmp sgt i32 %11, 1
  %15 = and i1 %14, %13
  %16 = add nsw i32 %11, -1
  br i1 %15, label %10, label %17, !llvm.loop !347

17:                                               ; preds = %10
  %18 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %19 = sext i32 %11 to i64
  %20 = shl nsw i64 %19, 6
  %21 = tail call ptr %18(i64 noundef %20, ptr noundef nonnull @.str.21) #23
  tail call void @llvm.memset.p0.i64(ptr align 8 %21, i8 0, i64 %20, i1 false)
  %22 = xor i32 %12, -1
  %23 = icmp sgt i32 %11, 0
  br i1 %23, label %24, label %53

24:                                               ; preds = %17
  %25 = zext nneg i32 %11 to i64
  br label %26

26:                                               ; preds = %24, %26
  %27 = phi i64 [ 0, %24 ], [ %43, %26 ]
  %28 = phi i32 [ %4, %24 ], [ %34, %26 ]
  %29 = getelementptr inbounds %struct.SB_thread_context, ptr %21, i64 %27
  store ptr %0, ptr %29, align 8, !tbaa !334
  %30 = getelementptr inbounds %struct.SB_thread_context, ptr %21, i64 %27, i32 1
  store ptr %1, ptr %30, align 8, !tbaa !336
  %31 = getelementptr inbounds %struct.SB_thread_context, ptr %21, i64 %27, i32 2
  store float %2, ptr %31, align 8, !tbaa !337
  %32 = getelementptr inbounds %struct.SB_thread_context, ptr %21, i64 %27, i32 3
  store float %3, ptr %32, align 4, !tbaa !338
  %33 = getelementptr inbounds %struct.SB_thread_context, ptr %21, i64 %27, i32 5
  store i32 %28, ptr %33, align 4, !tbaa !339
  %34 = add i32 %28, %22
  %35 = tail call i32 @llvm.smax.i32(i32 %34, i32 0)
  %36 = getelementptr inbounds %struct.SB_thread_context, ptr %21, i64 %27, i32 4
  store i32 %35, ptr %36, align 8
  %37 = getelementptr inbounds %struct.SB_thread_context, ptr %21, i64 %27, i32 6
  store ptr %5, ptr %37, align 8, !tbaa !340
  %38 = getelementptr inbounds %struct.SB_thread_context, ptr %21, i64 %27, i32 7
  store i32 %6, ptr %38, align 8, !tbaa !341
  %39 = getelementptr inbounds %struct.SB_thread_context, ptr %21, i64 %27, i32 8
  store <2 x float> <float -1.000000e+00, float 2.500000e-01>, ptr %39, align 4, !tbaa !44
  %40 = getelementptr inbounds %struct.SB_thread_context, ptr %21, i64 %27, i32 10
  %41 = trunc i64 %27 to i32
  store i32 %41, ptr %40, align 4, !tbaa !342
  %42 = getelementptr inbounds %struct.SB_thread_context, ptr %21, i64 %27, i32 11
  store i32 %11, ptr %42, align 8, !tbaa !343
  %43 = add nuw nsw i64 %27, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %45, label %26, !llvm.loop !348

45:                                               ; preds = %26
  br i1 %14, label %46, label %53

46:                                               ; preds = %45
  call void @BLI_init_threads(ptr noundef nonnull %8, ptr noundef nonnull @exec_softbody_calc_forces, i32 noundef %11) #23
  br label %47

47:                                               ; preds = %46, %47
  %48 = phi i64 [ 0, %46 ], [ %50, %47 ]
  %49 = getelementptr inbounds %struct.SB_thread_context, ptr %21, i64 %48
  call void @BLI_insert_thread(ptr noundef nonnull %8, ptr noundef %49) #23
  %50 = add nuw nsw i64 %48, 1
  %51 = icmp slt i64 %50, %19
  br i1 %51, label %47, label %52, !llvm.loop !349

52:                                               ; preds = %47
  call void @BLI_end_threads(ptr noundef nonnull %8) #23
  br label %55

53:                                               ; preds = %17, %45
  %54 = tail call ptr @exec_softbody_calc_forces(ptr noundef %21) #24
  br label %55

55:                                               ; preds = %53, %52
  %56 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %56(ptr noundef %21) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #25
  ret void
}

; Function Attrs: optsize
declare i32 @BKE_scene_num_threads(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_init_threads(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @exec_scan_for_ext_spring_forces(ptr nocapture noundef readonly %0) #0 !PGOFuncName !350 {
  %2 = load ptr, ptr %0, align 8, !tbaa !334
  %3 = getelementptr inbounds %struct.SB_thread_context, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !336
  %5 = getelementptr inbounds %struct.SB_thread_context, ptr %0, i64 0, i32 3
  %6 = load float, ptr %5, align 4, !tbaa !338
  %7 = getelementptr inbounds %struct.SB_thread_context, ptr %0, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !351
  %9 = getelementptr inbounds %struct.SB_thread_context, ptr %0, i64 0, i32 5
  %10 = load i32, ptr %9, align 4, !tbaa !339
  %11 = getelementptr inbounds %struct.SB_thread_context, ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !340
  tail call fastcc void @_scan_for_ext_spring_forces(ptr noundef %2, ptr noundef %4, float noundef %6, i32 noundef %8, i32 noundef %10, ptr noundef %12) #24
  ret ptr null
}

; Function Attrs: optsize
declare void @BLI_insert_thread(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_end_threads(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @_scan_for_ext_spring_forces(ptr noundef %0, ptr nocapture noundef readonly %1, float noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 !PGOFuncName !352 {
  %7 = alloca float, align 4
  %8 = alloca [3 x float], align 8
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca %struct.EffectedPoint, align 8
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 111
  %17 = load ptr, ptr %16, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #25
  %18 = icmp eq ptr %17, null
  br i1 %18, label %130, label %19

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.SoftBody, ptr %17, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !149
  %22 = icmp ne i32 %21, 0
  %23 = icmp slt i32 %3, %4
  %24 = and i1 %22, %23
  br i1 %24, label %25, label %130

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.SoftBody, ptr %17, i64 0, i32 3
  %27 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  %28 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 104
  %29 = getelementptr inbounds %struct.SoftBody, ptr %17, i64 0, i32 2
  %30 = getelementptr inbounds %struct.SoftBody, ptr %17, i64 0, i32 40
  %31 = getelementptr inbounds %struct.SoftBody, ptr %17, i64 0, i32 37
  %32 = icmp eq ptr %5, null
  %33 = getelementptr inbounds %struct.SoftBody, ptr %17, i64 0, i32 49
  %34 = sext i32 %3 to i64
  br label %35

35:                                               ; preds = %25, %126
  %36 = phi i64 [ %34, %25 ], [ %127, %126 ]
  %37 = load ptr, ptr %26, align 8, !tbaa !74
  %38 = getelementptr inbounds %struct.BodySpring, ptr %37, i64 %36
  %39 = getelementptr inbounds %struct.BodySpring, ptr %37, i64 %36, i32 5
  %40 = getelementptr inbounds %struct.BodySpring, ptr %37, i64 %36, i32 5, i64 2
  store float 0.000000e+00, ptr %40, align 4, !tbaa !44
  store <2 x float> zeroinitializer, ptr %39, align 4, !tbaa !44
  store float 0.000000e+00, ptr %27, align 8, !tbaa !44
  store <2 x float> zeroinitializer, ptr %8, align 8, !tbaa !44
  %41 = getelementptr inbounds %struct.BodySpring, ptr %37, i64 %36, i32 7
  %42 = load i16, ptr %41, align 4, !tbaa !269
  %43 = and i16 %42, -2
  store i16 %43, ptr %41, align 4, !tbaa !269
  %44 = getelementptr inbounds %struct.BodySpring, ptr %37, i64 %36, i32 6
  %45 = load i32, ptr %44, align 4, !tbaa !121
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %126

47:                                               ; preds = %35
  %48 = load i16, ptr %28, align 2, !tbaa !84
  %49 = and i16 %48, 2048
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %69, label %51

51:                                               ; preds = %47
  %52 = load ptr, ptr %29, align 8, !tbaa !68
  %53 = load i32, ptr %38, align 4, !tbaa !138
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.BodyPoint, ptr %52, i64 %54, i32 3
  %56 = getelementptr inbounds %struct.BodySpring, ptr %37, i64 %36, i32 1
  %57 = load i32, ptr %56, align 4, !tbaa !139
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.BodyPoint, ptr %52, i64 %58, i32 3
  %60 = call fastcc i32 @sb_detect_edge_collisionCached(ptr noundef nonnull %55, ptr noundef nonnull %59, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %1, float noundef %2) #24
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %51
  call fastcc void @add_v3_v3(ptr noundef nonnull %39, ptr noundef nonnull %8) #24
  %63 = load i16, ptr %41, align 4, !tbaa !269
  %64 = or i16 %63, 1
  store i16 %64, ptr %41, align 4, !tbaa !269
  %65 = load i16, ptr %30, align 8, !tbaa !53
  %66 = sitofp i16 %65 to float
  %67 = fmul float %66, 0x3F847AE140000000
  %68 = getelementptr inbounds %struct.BodySpring, ptr %37, i64 %36, i32 3
  store float %67, ptr %68, align 4, !tbaa !270
  br label %69

69:                                               ; preds = %51, %62, %47
  %70 = load i16, ptr %31, align 2, !tbaa !260
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %126, label %72

72:                                               ; preds = %69
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #25
  br i1 %32, label %90, label %73

73:                                               ; preds = %72
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %13) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %14, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #25
  %74 = load ptr, ptr %29, align 8, !tbaa !68
  %75 = load i32, ptr %38, align 4, !tbaa !138
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.BodyPoint, ptr %74, i64 %76, i32 3
  %78 = getelementptr inbounds %struct.BodySpring, ptr %37, i64 %36, i32 1
  %79 = load i32, ptr %78, align 4, !tbaa !139
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.BodyPoint, ptr %74, i64 %80, i32 3
  call void @mid_v3_v3v3(ptr noundef nonnull %15, ptr noundef nonnull %77, ptr noundef nonnull %81) #23
  %82 = load ptr, ptr %29, align 8, !tbaa !68
  %83 = load i32, ptr %38, align 4, !tbaa !138
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.BodyPoint, ptr %82, i64 %84, i32 4
  %86 = load i32, ptr %78, align 4, !tbaa !139
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.BodyPoint, ptr %82, i64 %87, i32 4
  call void @mid_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %85, ptr noundef nonnull %88) #23
  call void @pd_point_from_soft(ptr noundef %0, ptr noundef nonnull %15, ptr noundef nonnull %9, i32 noundef -1, ptr noundef nonnull %13) #23
  %89 = load ptr, ptr %33, align 8, !tbaa !57
  call void @pdDoEffectors(ptr noundef nonnull %5, ptr noundef null, ptr noundef %89, ptr noundef nonnull %13, ptr noundef nonnull %12, ptr noundef nonnull %14) #23
  call fastcc void @mul_v3_fl(ptr noundef nonnull %14, float noundef 2.500000e-01) #24
  call fastcc void @add_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %14) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #25
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #25
  br label %99

90:                                               ; preds = %72
  %91 = load ptr, ptr %29, align 8, !tbaa !68
  %92 = load i32, ptr %38, align 4, !tbaa !138
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.BodyPoint, ptr %91, i64 %93, i32 4
  %95 = getelementptr inbounds %struct.BodySpring, ptr %37, i64 %36, i32 1
  %96 = load i32, ptr %95, align 4, !tbaa !139
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.BodyPoint, ptr %91, i64 %97, i32 4
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %94, ptr noundef nonnull %98) #24
  br label %99

99:                                               ; preds = %90, %73
  %100 = call fastcc float @normalize_v3(ptr noundef nonnull %9) #24
  %101 = fmul float %100, 0xBF1A36E2E0000000
  %102 = fmul float %100, %101
  %103 = load i16, ptr %31, align 2, !tbaa !260
  %104 = sitofp i16 %103 to float
  %105 = fmul float %102, %104
  %106 = load ptr, ptr %29, align 8, !tbaa !68
  %107 = load i32, ptr %38, align 4, !tbaa !138
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.BodyPoint, ptr %106, i64 %108, i32 3
  %110 = getelementptr inbounds %struct.BodySpring, ptr %37, i64 %36, i32 1
  %111 = load i32, ptr %110, align 4, !tbaa !139
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.BodyPoint, ptr %106, i64 %112, i32 3
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %109, ptr noundef nonnull %113) #24
  call void @project_v3_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %9, ptr noundef nonnull %10) #23
  call fastcc void @sub_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %11) #24
  %114 = call fastcc float @normalize_v3(ptr noundef nonnull %9) #24
  %115 = load i16, ptr %28, align 2, !tbaa !84
  %116 = and i16 %115, 16384
  %117 = icmp eq i16 %116, 0
  br i1 %117, label %124, label %118

118:                                              ; preds = %99
  %119 = call fastcc float @normalize_v3(ptr noundef nonnull %10) #24
  %120 = call fastcc float @dot_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %10) #24
  %121 = call float @llvm.fabs.f32(float %120)
  %122 = fsub float 1.000000e+00, %121
  %123 = fmul float %105, %122
  br label %124

124:                                              ; preds = %99, %118
  %125 = phi float [ %123, %118 ], [ %105, %99 ]
  call fastcc void @Vec3PlusStVec(ptr noundef nonnull %39, float noundef %125, ptr noundef nonnull %9) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #25
  br label %126

126:                                              ; preds = %69, %124, %35
  %127 = add nsw i64 %36, 1
  %128 = trunc i64 %127 to i32
  %129 = icmp eq i32 %128, %4
  br i1 %129, label %130, label %35, !llvm.loop !353

130:                                              ; preds = %126, %19, %6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @sb_detect_edge_collisionCached(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef %3, ptr nocapture noundef readonly %4, float noundef %5) unnamed_addr #0 !PGOFuncName !354 {
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca float, align 4
  %17 = alloca [3 x float], align 4
  %18 = alloca [3 x float], align 4
  %19 = alloca [3 x float], align 4
  %20 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #25
  call void @minmax_v3v3_v3(ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef %0) #23
  call void @minmax_v3v3_v3(ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef %1) #23
  %21 = call fastcc float @len_v3v3(ptr noundef %0, ptr noundef %1) #24
  %22 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 111
  %23 = load ptr, ptr %22, align 8, !tbaa !75
  %24 = getelementptr inbounds %struct.SoftBody, ptr %23, i64 0, i32 44
  %25 = load ptr, ptr %24, align 8, !tbaa !60
  %26 = load ptr, ptr %25, align 8, !tbaa !61
  %27 = call ptr @BLI_ghashIterator_new(ptr noundef %26) #23
  %28 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %27) #24, !range !314
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %214

30:                                               ; preds = %6
  %31 = getelementptr inbounds [3 x float], ptr %15, i64 0, i64 1
  %32 = getelementptr inbounds [3 x float], ptr %15, i64 0, i64 2
  %33 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 1
  %34 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 2
  %35 = fsub float 1.000000e+00, %5
  br label %36

36:                                               ; preds = %30, %210
  %37 = phi i32 [ 0, %30 ], [ %211, %210 ]
  %38 = call fastcc ptr @BLI_ghashIterator_getValue(ptr noundef %27) #24
  %39 = call fastcc ptr @BLI_ghashIterator_getKey(ptr noundef %27) #24
  %40 = getelementptr inbounds %struct.Object, ptr %39, i64 0, i32 110
  %41 = load ptr, ptr %40, align 8, !tbaa !246
  %42 = icmp eq ptr %41, null
  br i1 %42, label %210, label %43

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.PartDeflect, ptr %41, i64 0, i32 1
  %45 = load i16, ptr %44, align 4, !tbaa !247
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %210, label %47

47:                                               ; preds = %43
  %48 = icmp eq ptr %38, null
  br i1 %48, label %94, label %49

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.ccd_Mesh, ptr %38, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !175
  %52 = getelementptr inbounds %struct.ccd_Mesh, ptr %38, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !176
  %54 = getelementptr inbounds %struct.ccd_Mesh, ptr %38, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !177
  %56 = getelementptr inbounds %struct.ccd_Mesh, ptr %38, i64 0, i32 6
  %57 = load ptr, ptr %56, align 8, !tbaa !178
  %58 = getelementptr inbounds %struct.ccd_Mesh, ptr %38, i64 0, i32 1
  %59 = load i32, ptr %58, align 4, !tbaa !289
  %60 = load float, ptr %15, align 4, !tbaa !44
  %61 = getelementptr inbounds %struct.ccd_Mesh, ptr %38, i64 0, i32 7
  %62 = load float, ptr %61, align 8, !tbaa !44
  %63 = fcmp olt float %60, %62
  br i1 %63, label %210, label %64, !llvm.loop !355

64:                                               ; preds = %49
  %65 = load float, ptr %31, align 4, !tbaa !44
  %66 = getelementptr inbounds %struct.ccd_Mesh, ptr %38, i64 0, i32 7, i64 1
  %67 = load float, ptr %66, align 4, !tbaa !44
  %68 = fcmp olt float %65, %67
  br i1 %68, label %210, label %69, !llvm.loop !355

69:                                               ; preds = %64
  %70 = load float, ptr %32, align 4, !tbaa !44
  %71 = getelementptr inbounds %struct.ccd_Mesh, ptr %38, i64 0, i32 7, i64 2
  %72 = load float, ptr %71, align 8, !tbaa !44
  %73 = fcmp olt float %70, %72
  br i1 %73, label %210, label %74, !llvm.loop !355

74:                                               ; preds = %69
  %75 = load float, ptr %14, align 4, !tbaa !44
  %76 = getelementptr inbounds %struct.ccd_Mesh, ptr %38, i64 0, i32 8
  %77 = load float, ptr %76, align 4, !tbaa !44
  %78 = fcmp ogt float %75, %77
  br i1 %78, label %210, label %79, !llvm.loop !355

79:                                               ; preds = %74
  %80 = load float, ptr %33, align 4, !tbaa !44
  %81 = getelementptr inbounds %struct.ccd_Mesh, ptr %38, i64 0, i32 8, i64 1
  %82 = load float, ptr %81, align 4, !tbaa !44
  %83 = fcmp ogt float %80, %82
  br i1 %83, label %210, label %84, !llvm.loop !355

84:                                               ; preds = %79
  %85 = load float, ptr %34, align 4, !tbaa !44
  %86 = getelementptr inbounds %struct.ccd_Mesh, ptr %38, i64 0, i32 8, i64 2
  %87 = load float, ptr %86, align 4, !tbaa !44
  %88 = fcmp ogt float %85, %87
  %89 = icmp eq i32 %59, 0
  %90 = select i1 %88, i1 true, i1 %89
  br i1 %90, label %210, label %91, !llvm.loop !355

91:                                               ; preds = %84
  %92 = icmp eq ptr %53, null
  %93 = icmp eq ptr %55, null
  br label %199

94:                                               ; preds = %47
  %95 = call i32 @puts(ptr nonnull dereferenceable(1) @str.32)
  br label %210, !llvm.loop !355

96:                                               ; preds = %199, %123
  %97 = phi i32 [ %200, %199 ], [ %100, %123 ]
  %98 = phi ptr [ %202, %199 ], [ %124, %123 ]
  %99 = phi ptr [ %203, %199 ], [ %125, %123 ]
  %100 = add nsw i32 %97, -1
  %101 = load float, ptr %99, align 4, !tbaa !294
  %102 = fcmp olt float %204, %101
  br i1 %102, label %123, label %103

103:                                              ; preds = %96
  %104 = getelementptr inbounds %struct.ccdf_minmax, ptr %99, i64 0, i32 3
  %105 = load float, ptr %104, align 4, !tbaa !298
  %106 = fcmp ogt float %205, %105
  br i1 %106, label %123, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.ccdf_minmax, ptr %99, i64 0, i32 1
  %109 = load float, ptr %108, align 4, !tbaa !296
  %110 = fcmp olt float %206, %109
  br i1 %110, label %123, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.ccdf_minmax, ptr %99, i64 0, i32 4
  %113 = load float, ptr %112, align 4, !tbaa !299
  %114 = fcmp ogt float %207, %113
  br i1 %114, label %123, label %115

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.ccdf_minmax, ptr %99, i64 0, i32 2
  %117 = load float, ptr %116, align 4, !tbaa !297
  %118 = fcmp olt float %208, %117
  br i1 %118, label %123, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.ccdf_minmax, ptr %99, i64 0, i32 5
  %121 = load float, ptr %120, align 4, !tbaa !300
  %122 = fcmp ogt float %209, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %119, %115, %111, %107, %103, %96
  %124 = getelementptr inbounds %struct.MFace, ptr %98, i64 1
  %125 = getelementptr inbounds %struct.ccdf_minmax, ptr %99, i64 1
  %126 = icmp eq i32 %100, 0
  br i1 %126, label %210, label %96, !llvm.loop !356

127:                                              ; preds = %119
  br i1 %92, label %163, label %128

128:                                              ; preds = %127
  %129 = load i32, ptr %98, align 4, !tbaa !194
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds %struct.MVert, ptr %53, i64 %130
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %131) #24
  %132 = getelementptr inbounds %struct.MFace, ptr %98, i64 0, i32 1
  %133 = load i32, ptr %132, align 4, !tbaa !196
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds %struct.MVert, ptr %53, i64 %134
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %135) #24
  %136 = getelementptr inbounds %struct.MFace, ptr %98, i64 0, i32 2
  %137 = load i32, ptr %136, align 4, !tbaa !195
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds %struct.MVert, ptr %53, i64 %138
  call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %139) #24
  %140 = getelementptr inbounds %struct.MFace, ptr %98, i64 0, i32 3
  %141 = load i32, ptr %140, align 4, !tbaa !192
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %128
  %144 = zext i32 %141 to i64
  %145 = getelementptr inbounds %struct.MVert, ptr %53, i64 %144
  call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef nonnull %145) #24
  br label %146

146:                                              ; preds = %143, %128
  br i1 %93, label %163, label %147

147:                                              ; preds = %146
  call fastcc void @mul_v3_fl(ptr noundef nonnull %7, float noundef %5) #24
  %148 = load i32, ptr %98, align 4, !tbaa !194
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds %struct.MVert, ptr %55, i64 %149
  call fastcc void @Vec3PlusStVec(ptr noundef nonnull %7, float noundef %35, ptr noundef nonnull %150) #24
  call fastcc void @mul_v3_fl(ptr noundef nonnull %8, float noundef %5) #24
  %151 = load i32, ptr %132, align 4, !tbaa !196
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds %struct.MVert, ptr %55, i64 %152
  call fastcc void @Vec3PlusStVec(ptr noundef nonnull %8, float noundef %35, ptr noundef nonnull %153) #24
  call fastcc void @mul_v3_fl(ptr noundef nonnull %9, float noundef %5) #24
  %154 = load i32, ptr %136, align 4, !tbaa !195
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds %struct.MVert, ptr %55, i64 %155
  call fastcc void @Vec3PlusStVec(ptr noundef nonnull %9, float noundef %35, ptr noundef nonnull %156) #24
  %157 = load i32, ptr %140, align 4, !tbaa !192
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %163, label %159

159:                                              ; preds = %147
  call fastcc void @mul_v3_fl(ptr noundef nonnull %10, float noundef %5) #24
  %160 = load i32, ptr %140, align 4, !tbaa !192
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds %struct.MVert, ptr %55, i64 %161
  call fastcc void @Vec3PlusStVec(ptr noundef nonnull %10, float noundef %35, ptr noundef nonnull %162) #24
  br label %163

163:                                              ; preds = %146, %159, %147, %127
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %7, ptr noundef nonnull %8) #24
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %9, ptr noundef nonnull %8) #24
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %13, ptr noundef nonnull %12, ptr noundef nonnull %11) #24
  %164 = call fastcc float @normalize_v3(ptr noundef nonnull %13) #24
  %165 = call zeroext i8 @isect_line_tri_v3(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %16, ptr noundef null) #23
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %176, label %167

167:                                              ; preds = %163
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #25
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %17, ptr noundef %0, ptr noundef nonnull %8) #24
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %18, ptr noundef %1, ptr noundef nonnull %8) #24
  %168 = call fastcc float @dot_v3v3(ptr noundef nonnull %17, ptr noundef nonnull %13) #24
  %169 = call fastcc float @dot_v3v3(ptr noundef nonnull %18, ptr noundef nonnull %13) #24
  %170 = call fastcc float @min_ff(float noundef %168, float noundef %169) #24
  %171 = fneg float %170
  %172 = fdiv float %171, %21
  call fastcc void @Vec3PlusStVec(ptr noundef %3, float noundef %172, ptr noundef nonnull %13) #24
  %173 = load ptr, ptr %40, align 8, !tbaa !246
  %174 = getelementptr inbounds %struct.PartDeflect, ptr %173, i64 0, i32 26
  %175 = load float, ptr %174, align 8, !tbaa !357
  store float %175, ptr %2, align 4, !tbaa !44
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #25
  br label %176

176:                                              ; preds = %167, %163
  %177 = phi i32 [ 2, %167 ], [ %201, %163 ]
  %178 = getelementptr inbounds %struct.MFace, ptr %98, i64 0, i32 3
  %179 = load i32, ptr %178, align 4, !tbaa !192
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %194, label %181

181:                                              ; preds = %176
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %9, ptr noundef nonnull %10) #24
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %7, ptr noundef nonnull %10) #24
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %13, ptr noundef nonnull %12, ptr noundef nonnull %11) #24
  %182 = call fastcc float @normalize_v3(ptr noundef nonnull %13) #24
  %183 = call zeroext i8 @isect_line_tri_v3(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %16, ptr noundef null) #23
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %194, label %185

185:                                              ; preds = %181
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #25
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %19, ptr noundef %0, ptr noundef nonnull %10) #24
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %20, ptr noundef %1, ptr noundef nonnull %10) #24
  %186 = call fastcc float @dot_v3v3(ptr noundef nonnull %19, ptr noundef nonnull %13) #24
  %187 = call fastcc float @dot_v3v3(ptr noundef nonnull %20, ptr noundef nonnull %13) #24
  %188 = call fastcc float @min_ff(float noundef %186, float noundef %187) #24
  %189 = fneg float %188
  %190 = fdiv float %189, %21
  call fastcc void @Vec3PlusStVec(ptr noundef %3, float noundef %190, ptr noundef nonnull %13) #24
  %191 = load ptr, ptr %40, align 8, !tbaa !246
  %192 = getelementptr inbounds %struct.PartDeflect, ptr %191, i64 0, i32 26
  %193 = load float, ptr %192, align 8, !tbaa !357
  store float %193, ptr %2, align 4, !tbaa !44
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #25
  br label %194

194:                                              ; preds = %181, %185, %176
  %195 = phi i32 [ 2, %185 ], [ %177, %181 ], [ %177, %176 ]
  %196 = getelementptr inbounds %struct.MFace, ptr %98, i64 1
  %197 = getelementptr inbounds %struct.ccdf_minmax, ptr %99, i64 1
  %198 = icmp eq i32 %100, 0
  br i1 %198, label %210, label %199, !llvm.loop !356

199:                                              ; preds = %91, %194
  %200 = phi i32 [ %59, %91 ], [ %100, %194 ]
  %201 = phi i32 [ %37, %91 ], [ %195, %194 ]
  %202 = phi ptr [ %51, %91 ], [ %196, %194 ]
  %203 = phi ptr [ %57, %91 ], [ %197, %194 ]
  %204 = load float, ptr %15, align 4, !tbaa !44
  %205 = load float, ptr %14, align 4
  %206 = load float, ptr %31, align 4
  %207 = load float, ptr %33, align 4
  %208 = load float, ptr %32, align 4
  %209 = load float, ptr %34, align 4
  br label %96

210:                                              ; preds = %194, %123, %36, %43, %49, %64, %69, %74, %79, %84, %94
  %211 = phi i32 [ %37, %94 ], [ %37, %84 ], [ %37, %79 ], [ %37, %74 ], [ %37, %69 ], [ %37, %64 ], [ %37, %49 ], [ %37, %43 ], [ %37, %36 ], [ %201, %123 ], [ %195, %194 ]
  call void @BLI_ghashIterator_step(ptr noundef %27) #23
  %212 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %27) #24, !range !314
  %213 = icmp eq i8 %212, 0
  br i1 %213, label %36, label %214

214:                                              ; preds = %210, %6
  %215 = phi i32 [ 0, %6 ], [ %211, %210 ]
  call void @BLI_ghashIterator_free(ptr noundef %27) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #25
  ret i32 %215
}

; Function Attrs: optsize
declare void @project_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !358 {
  %3 = load float, ptr %1, align 4, !tbaa !44
  %4 = load float, ptr %0, align 4, !tbaa !44
  %5 = fsub float %4, %3
  store float %5, ptr %0, align 4, !tbaa !44
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !44
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !44
  %10 = fsub float %9, %7
  store float %10, ptr %8, align 4, !tbaa !44
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !44
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !44
  %15 = fsub float %14, %12
  store float %15, ptr %13, align 4, !tbaa !44
  ret void
}

; Function Attrs: optsize
declare void @minmax_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_ghashIterator_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_ghashIterator_done(ptr nocapture noundef readonly %0) unnamed_addr #14 !PGOFuncName !359 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !360
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @BLI_ghashIterator_getValue(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !362 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !360
  %4 = getelementptr inbounds %struct._gh_Entry, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !363
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @BLI_ghashIterator_getKey(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !365 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !360
  %4 = getelementptr inbounds %struct._gh_Entry, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !366
  ret ptr %5
}

; Function Attrs: optsize
declare void @BLI_ghashIterator_step(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 !PGOFuncName !367 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !44
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !44
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !44
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !44
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !44
  %15 = load float, ptr %8, align 4, !tbaa !44
  %16 = load float, ptr %2, align 4, !tbaa !44
  %17 = load float, ptr %1, align 4, !tbaa !44
  %18 = load float, ptr %6, align 4, !tbaa !44
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !44
  %23 = load float, ptr %1, align 4, !tbaa !44
  %24 = load float, ptr %10, align 4, !tbaa !44
  %25 = load float, ptr %4, align 4, !tbaa !44
  %26 = load float, ptr %2, align 4, !tbaa !44
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !44
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @isect_line_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_ghashIterator_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @exec_softbody_calc_forces(ptr nocapture noundef readonly %0) #0 !PGOFuncName !368 {
  %2 = load ptr, ptr %0, align 8, !tbaa !334
  %3 = getelementptr inbounds %struct.SB_thread_context, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !336
  %5 = getelementptr inbounds %struct.SB_thread_context, ptr %0, i64 0, i32 2
  %6 = load float, ptr %5, align 8, !tbaa !337
  %7 = getelementptr inbounds %struct.SB_thread_context, ptr %0, i64 0, i32 3
  %8 = load float, ptr %7, align 4, !tbaa !338
  %9 = getelementptr inbounds %struct.SB_thread_context, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !351
  %11 = getelementptr inbounds %struct.SB_thread_context, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !339
  %13 = getelementptr inbounds %struct.SB_thread_context, ptr %0, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !340
  %15 = getelementptr inbounds %struct.SB_thread_context, ptr %0, i64 0, i32 7
  %16 = load i32, ptr %15, align 8, !tbaa !341
  %17 = getelementptr inbounds %struct.SB_thread_context, ptr %0, i64 0, i32 8
  %18 = load float, ptr %17, align 4, !tbaa !369
  %19 = getelementptr inbounds %struct.SB_thread_context, ptr %0, i64 0, i32 9
  %20 = load float, ptr %19, align 8, !tbaa !370
  tail call fastcc void @_softbody_calc_forces_slice_in_a_thread(ptr noundef %2, ptr noundef %4, float noundef %6, float noundef %8, i32 noundef %10, i32 noundef %12, ptr noundef %14, i32 noundef %16, float noundef %18, float noundef %20) #24
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @_softbody_calc_forces_slice_in_a_thread(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, float noundef %8, float noundef %9) unnamed_addr #0 !PGOFuncName !371 {
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 8
  %15 = alloca [3 x float], align 8
  %16 = alloca [3 x float], align 4
  %17 = alloca %struct.EffectedPoint, align 8
  %18 = alloca [3 x float], align 4
  %19 = alloca [3 x float], align 4
  %20 = alloca [3 x float], align 4
  %21 = alloca [3 x float], align 4
  %22 = alloca [3 x float], align 4
  %23 = alloca [3 x float], align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = sub nsw i32 %5, %4
  %27 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 111
  %28 = load ptr, ptr %27, align 8, !tbaa !75
  %29 = icmp eq ptr %28, null
  br i1 %29, label %61, label %30

30:                                               ; preds = %10
  %31 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 104
  %32 = load i16, ptr %31, align 2, !tbaa !84
  %33 = zext i16 %32 to i32
  %34 = and i32 %33, 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.SoftBody, ptr %28, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !74
  %39 = icmp ne ptr %38, null
  %40 = and i32 %33, 512
  %41 = icmp ne i32 %40, 0
  %42 = and i1 %41, %39
  %43 = icmp eq i32 %7, 0
  br i1 %43, label %49, label %46

44:                                               ; preds = %30
  %45 = icmp eq i32 %7, 0
  br label %49

46:                                               ; preds = %36
  %47 = and i32 %33, 2048
  %48 = icmp ne i32 %47, 0
  br label %49

49:                                               ; preds = %36, %44, %46
  %50 = phi i1 [ true, %36 ], [ false, %46 ], [ %45, %44 ]
  %51 = phi i1 [ %42, %36 ], [ %42, %46 ], [ false, %44 ]
  %52 = phi i1 [ false, %36 ], [ %48, %46 ], [ false, %44 ]
  %53 = getelementptr inbounds %struct.SoftBody, ptr %28, i64 0, i32 37
  %54 = load i16, ptr %53, align 2, !tbaa !260
  %55 = icmp ne i16 %54, 0
  %56 = and i16 %32, 4
  %57 = icmp ne i16 %56, 0
  %58 = and i1 %57, %55
  %59 = load i32, ptr %28, align 8, !tbaa !69
  %60 = icmp slt i32 %59, %4
  br i1 %60, label %63, label %65

61:                                               ; preds = %10
  %62 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.29)
  br label %380

63:                                               ; preds = %49
  %64 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23) #24
  br label %380

65:                                               ; preds = %49
  %66 = getelementptr inbounds %struct.SoftBody, ptr %28, i64 0, i32 2
  %67 = icmp sgt i32 %26, 0
  br i1 %67, label %68, label %380

68:                                               ; preds = %65
  %69 = load ptr, ptr %66, align 8, !tbaa !68
  %70 = sext i32 %4 to i64
  %71 = getelementptr inbounds %struct.BodyPoint, ptr %69, i64 %70
  %72 = getelementptr inbounds %struct.SoftBody, ptr %28, i64 0, i32 35
  %73 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 1
  %74 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 2
  %75 = getelementptr inbounds %struct.SoftBody, ptr %28, i64 0, i32 3
  %76 = getelementptr inbounds %struct.SoftBody, ptr %28, i64 0, i32 34
  %77 = getelementptr inbounds %struct.SoftBody, ptr %28, i64 0, i32 13
  %78 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 2
  %79 = getelementptr inbounds %struct.SoftBody, ptr %28, i64 0, i32 14
  %80 = fcmp ogt float %2, 0.000000e+00
  %81 = getelementptr inbounds [3 x float], ptr %15, i64 0, i64 2
  %82 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 40, i32 1
  %83 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 40
  %84 = getelementptr inbounds %struct.SoftBody, ptr %28, i64 0, i32 49
  %85 = icmp eq ptr %6, null
  %86 = fmul float %8, 0x3F847AE140000000
  %87 = getelementptr inbounds %struct.SoftBody, ptr %28, i64 0, i32 10
  %88 = getelementptr inbounds [3 x float], ptr %19, i64 0, i64 1
  %89 = getelementptr inbounds %struct.SoftBody, ptr %28, i64 0, i32 44
  %90 = getelementptr inbounds %struct.SoftBody, ptr %28, i64 0, i32 40
  %91 = select i1 %52, i1 true, i1 %58
  %92 = insertelement <2 x float> poison, float %9, i64 0
  %93 = shufflevector <2 x float> %92, <2 x float> poison, <2 x i32> zeroinitializer
  br label %94

94:                                               ; preds = %68, %376
  %95 = phi i32 [ %26, %68 ], [ %377, %376 ]
  %96 = phi ptr [ %71, %68 ], [ %378, %376 ]
  %97 = getelementptr inbounds %struct.BodyPoint, ptr %96, i64 0, i32 5
  %98 = getelementptr inbounds %struct.BodyPoint, ptr %96, i64 0, i32 5, i64 2
  store float 0.000000e+00, ptr %98, align 4, !tbaa !44
  %99 = getelementptr inbounds %struct.BodyPoint, ptr %96, i64 0, i32 5, i64 1
  store <2 x float> zeroinitializer, ptr %97, align 4, !tbaa !44
  br i1 %51, label %100, label %195

100:                                              ; preds = %94
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #25
  %101 = load float, ptr %72, align 4, !tbaa !49
  %102 = load i32, ptr %28, align 8, !tbaa !69
  %103 = add nsw i32 %95, %4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %194, label %105

105:                                              ; preds = %100
  %106 = load ptr, ptr %66, align 8, !tbaa !68
  %107 = getelementptr inbounds %struct.BodyPoint, ptr %96, i64 0, i32 18
  %108 = getelementptr inbounds %struct.BodyPoint, ptr %96, i64 0, i32 3
  %109 = sub nsw i32 %5, %95
  %110 = fmul float %101, 2.000000e+00
  %111 = getelementptr inbounds %struct.BodyPoint, ptr %96, i64 0, i32 4
  br label %112

112:                                              ; preds = %105, %190
  %113 = phi ptr [ %106, %105 ], [ %192, %190 ]
  %114 = phi i32 [ %102, %105 ], [ %191, %190 ]
  %115 = getelementptr inbounds %struct.BodyPoint, ptr %113, i64 0, i32 18
  %116 = load float, ptr %115, align 4, !tbaa !208
  %117 = load float, ptr %107, align 4, !tbaa !208
  %118 = fadd float %116, %117
  %119 = getelementptr inbounds %struct.BodyPoint, ptr %113, i64 0, i32 3
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %13, ptr noundef nonnull %108, ptr noundef nonnull %119) #24
  %120 = load float, ptr %13, align 4
  %121 = fcmp olt float %120, 0.000000e+00
  %122 = fneg float %120
  %123 = select i1 %121, float %122, float %120
  %124 = fcmp ogt float %123, %118
  br i1 %124, label %190, label %125

125:                                              ; preds = %112
  %126 = load float, ptr %73, align 4
  %127 = fcmp olt float %126, 0.000000e+00
  %128 = fneg float %126
  %129 = select i1 %127, float %128, float %126
  %130 = fcmp ogt float %129, %118
  br i1 %130, label %190, label %131

131:                                              ; preds = %125
  %132 = load float, ptr %74, align 4
  %133 = fcmp olt float %132, 0.000000e+00
  %134 = fneg float %132
  %135 = select i1 %133, float %134, float %132
  %136 = fcmp ogt float %135, %118
  br i1 %136, label %190, label %137

137:                                              ; preds = %131
  %138 = call fastcc float @normalize_v3(ptr noundef nonnull %13) #24
  %139 = fcmp olt float %138, %118
  br i1 %139, label %140, label %190

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct.BodyPoint, ptr %113, i64 0, i32 13
  %142 = load i32, ptr %141, align 4, !tbaa !209
  %143 = icmp sgt i32 %142, 0
  br i1 %143, label %144, label %170

144:                                              ; preds = %140
  %145 = load ptr, ptr %75, align 8, !tbaa !74
  %146 = getelementptr inbounds %struct.BodyPoint, ptr %113, i64 0, i32 14
  %147 = load ptr, ptr %146, align 8, !tbaa !70
  %148 = getelementptr i32, ptr %147, i64 -1
  %149 = zext nneg i32 %142 to i64
  br label %150

150:                                              ; preds = %144, %164
  %151 = phi i64 [ %149, %144 ], [ %166, %164 ]
  %152 = phi i32 [ 0, %144 ], [ %165, %164 ]
  %153 = getelementptr i32, ptr %148, i64 %151
  %154 = load i32, ptr %153, align 4, !tbaa !48
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.BodySpring, ptr %145, i64 %155, i32 1
  %157 = load i32, ptr %156, align 4, !tbaa !139
  %158 = icmp eq i32 %109, %157
  br i1 %158, label %163, label %159

159:                                              ; preds = %150
  %160 = getelementptr inbounds %struct.BodySpring, ptr %145, i64 %155
  %161 = load i32, ptr %160, align 4, !tbaa !138
  %162 = icmp eq i32 %109, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %159, %150
  br label %164

164:                                              ; preds = %159, %163
  %165 = phi i32 [ 1, %163 ], [ %152, %159 ]
  %166 = add nsw i64 %151, -1
  %167 = icmp sgt i64 %151, 1
  br i1 %167, label %150, label %168, !llvm.loop !372

168:                                              ; preds = %164
  %169 = icmp eq i32 %165, 0
  br i1 %169, label %170, label %190

170:                                              ; preds = %140, %168
  %171 = fdiv float %101, %138
  %172 = fmul float %118, %118
  %173 = fdiv float %101, %172
  %174 = call float @llvm.fmuladd.f32(float %173, float %138, float %171)
  %175 = fdiv float %110, %118
  %176 = fsub float %174, %175
  %177 = getelementptr inbounds %struct.BodyPoint, ptr %113, i64 0, i32 4
  call void @mid_v3_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %111, ptr noundef nonnull %177) #23
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %11, ptr noundef nonnull %111) #24
  %178 = call fastcc float @_final_mass(ptr noundef %1, ptr noundef %96) #24
  call fastcc void @mul_v3_fl(ptr noundef nonnull %12, float noundef %178) #24
  %179 = load float, ptr %76, align 8, !tbaa !262
  %180 = fsub float 1.000000e+00, %179
  %181 = fmul float %176, %180
  call fastcc void @Vec3PlusStVec(ptr noundef nonnull %97, float noundef %181, ptr noundef nonnull %13) #24
  %182 = load float, ptr %76, align 8, !tbaa !262
  call fastcc void @Vec3PlusStVec(ptr noundef nonnull %97, float noundef %182, ptr noundef nonnull %12) #24
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %11, ptr noundef nonnull %177) #24
  %183 = call fastcc float @_final_mass(ptr noundef %1, ptr noundef %96) #24
  call fastcc void @mul_v3_fl(ptr noundef nonnull %12, float noundef %183) #24
  %184 = getelementptr inbounds %struct.BodyPoint, ptr %113, i64 0, i32 5
  %185 = load float, ptr %76, align 8, !tbaa !262
  call fastcc void @Vec3PlusStVec(ptr noundef nonnull %184, float noundef %185, ptr noundef nonnull %12) #24
  %186 = fneg float %176
  %187 = load float, ptr %76, align 8, !tbaa !262
  %188 = fsub float 1.000000e+00, %187
  %189 = fmul float %188, %186
  call fastcc void @Vec3PlusStVec(ptr noundef nonnull %184, float noundef %189, ptr noundef nonnull %13) #24
  br label %190

190:                                              ; preds = %137, %170, %168, %112, %125, %131
  %191 = add nsw i32 %114, -1
  %192 = getelementptr inbounds %struct.BodyPoint, ptr %113, i64 1
  %193 = icmp sgt i32 %114, %103
  br i1 %193, label %112, label %194, !llvm.loop !373

194:                                              ; preds = %190, %100
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #25
  br label %195

195:                                              ; preds = %194, %94
  %196 = call fastcc float @_final_goal(ptr noundef %1, ptr noundef %96) #24
  %197 = fcmp olt float %196, 0x3FEFF7CEE0000000
  br i1 %197, label %198, label %376

198:                                              ; preds = %195
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #25
  %199 = load i16, ptr %31, align 2, !tbaa !84
  %200 = and i16 %199, 2
  %201 = icmp eq i16 %200, 0
  br i1 %201, label %252, label %202

202:                                              ; preds = %198
  %203 = getelementptr inbounds %struct.BodyPoint, ptr %96, i64 0, i32 3
  %204 = getelementptr inbounds %struct.BodyPoint, ptr %96, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %14, ptr noundef nonnull %203, ptr noundef nonnull %204) #24
  %205 = call fastcc float @_final_goal(ptr noundef nonnull %1, ptr noundef %96) #24
  %206 = load float, ptr %77, align 8, !tbaa !264
  %207 = fneg float %205
  %208 = call float @llvm.fmuladd.f32(float %207, float %206, float 1.000000e+00)
  %209 = fdiv float 1.000000e+00, %208
  %210 = fadd float %209, -1.000000e+00
  %211 = fneg float %210
  %212 = load <2 x float>, ptr %14, align 8, !tbaa !44
  %213 = load <2 x float>, ptr %97, align 4, !tbaa !44
  %214 = insertelement <2 x float> poison, float %211, i64 0
  %215 = shufflevector <2 x float> %214, <2 x float> poison, <2 x i32> zeroinitializer
  %216 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %215, <2 x float> %212, <2 x float> %213)
  store <2 x float> %216, ptr %97, align 4, !tbaa !44
  %217 = load float, ptr %78, align 8, !tbaa !44
  %218 = load float, ptr %98, align 4, !tbaa !44
  %219 = call float @llvm.fmuladd.f32(float %211, float %217, float %218)
  store float %219, ptr %98, align 4, !tbaa !44
  %220 = getelementptr inbounds %struct.BodyPoint, ptr %96, i64 0, i32 1
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %15, ptr noundef %96, ptr noundef nonnull %220) #24
  %221 = load float, ptr %79, align 4, !tbaa !265
  %222 = fmul float %221, 0x3F847AE140000000
  %223 = getelementptr inbounds %struct.BodyPoint, ptr %96, i64 0, i32 4
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %223) #24
  br i1 %80, label %224, label %234

224:                                              ; preds = %202
  %225 = fneg float %222
  %226 = load <2 x float>, ptr %14, align 8, !tbaa !44
  %227 = load <2 x float>, ptr %97, align 4, !tbaa !44
  %228 = insertelement <2 x float> poison, float %225, i64 0
  %229 = shufflevector <2 x float> %228, <2 x float> poison, <2 x i32> zeroinitializer
  %230 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %229, <2 x float> %226, <2 x float> %227)
  %231 = load float, ptr %78, align 8, !tbaa !44
  %232 = load float, ptr %98, align 4, !tbaa !44
  %233 = call float @llvm.fmuladd.f32(float %225, float %231, float %232)
  br label %249

234:                                              ; preds = %202
  %235 = fneg float %222
  %236 = load <2 x float>, ptr %15, align 8, !tbaa !44
  %237 = load <2 x float>, ptr %223, align 8, !tbaa !44
  %238 = fsub <2 x float> %236, %237
  %239 = load <2 x float>, ptr %97, align 4, !tbaa !44
  %240 = insertelement <2 x float> poison, float %235, i64 0
  %241 = shufflevector <2 x float> %240, <2 x float> poison, <2 x i32> zeroinitializer
  %242 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %241, <2 x float> %238, <2 x float> %239)
  %243 = load float, ptr %81, align 8, !tbaa !44
  %244 = getelementptr inbounds %struct.BodyPoint, ptr %96, i64 0, i32 4, i64 2
  %245 = load float, ptr %244, align 8, !tbaa !44
  %246 = fsub float %243, %245
  %247 = load float, ptr %98, align 4, !tbaa !44
  %248 = call float @llvm.fmuladd.f32(float %235, float %246, float %247)
  br label %249

249:                                              ; preds = %234, %224
  %250 = phi float [ %233, %224 ], [ %248, %234 ]
  %251 = phi <2 x float> [ %230, %224 ], [ %242, %234 ]
  store <2 x float> %251, ptr %97, align 4
  store float %250, ptr %98, align 4, !tbaa !44
  br label %252

252:                                              ; preds = %249, %198
  %253 = load i32, ptr %82, align 4, !tbaa !257
  %254 = and i32 %253, 1
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %263, label %256

256:                                              ; preds = %252
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #25
  call fastcc void @copy_v3_v3(ptr noundef nonnull %16, ptr noundef nonnull %83) #24
  %257 = call fastcc float @_final_mass(ptr noundef nonnull %1, ptr noundef %96) #24
  %258 = fmul float %257, 0x3F50624DE0000000
  %259 = load ptr, ptr %84, align 8, !tbaa !57
  %260 = getelementptr inbounds %struct.EffectorWeights, ptr %259, i64 0, i32 2
  %261 = load float, ptr %260, align 8, !tbaa !258
  %262 = fmul float %258, %261
  call fastcc void @mul_v3_fl(ptr noundef nonnull %16, float noundef %262) #24
  call fastcc void @add_v3_v3(ptr noundef nonnull %97, ptr noundef nonnull %16) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #25
  br label %263

263:                                              ; preds = %256, %252
  br i1 %85, label %293, label %264

264:                                              ; preds = %263
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %17) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %18, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %19, i8 0, i64 12, i1 false)
  %265 = getelementptr inbounds %struct.BodyPoint, ptr %96, i64 0, i32 3
  %266 = getelementptr inbounds %struct.BodyPoint, ptr %96, i64 0, i32 4
  %267 = load ptr, ptr %66, align 8, !tbaa !68
  %268 = ptrtoint ptr %267 to i64
  %269 = ptrtoint ptr %96 to i64
  %270 = sub i64 %268, %269
  %271 = sdiv exact i64 %270, 192
  %272 = trunc i64 %271 to i32
  call void @pd_point_from_soft(ptr noundef nonnull %0, ptr noundef nonnull %265, ptr noundef nonnull %266, i32 noundef %272, ptr noundef nonnull %17) #23
  %273 = load ptr, ptr %84, align 8, !tbaa !57
  call void @pdDoEffectors(ptr noundef nonnull %6, ptr noundef null, ptr noundef %273, ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef nonnull %19) #23
  call fastcc void @mul_v3_fl(ptr noundef nonnull %18, float noundef %86) #24
  call fastcc void @add_v3_v3(ptr noundef nonnull %97, ptr noundef nonnull %18) #24
  %274 = load float, ptr %87, align 4, !tbaa !266
  %275 = load float, ptr %266, align 8, !tbaa !44
  %276 = load float, ptr %19, align 4, !tbaa !44
  %277 = fmul float %276, %9
  %278 = fdiv float %277, 0x3F847AE140000000
  %279 = fadd float %275, %278
  %280 = load float, ptr %97, align 4, !tbaa !44
  %281 = fmul float %274, 0xBF847AE140000000
  %282 = call float @llvm.fmuladd.f32(float %281, float %279, float %280)
  store float %282, ptr %97, align 4, !tbaa !44
  %283 = getelementptr inbounds %struct.BodyPoint, ptr %96, i64 0, i32 4, i64 1
  %284 = load <2 x float>, ptr %283, align 4, !tbaa !44
  %285 = load <2 x float>, ptr %88, align 4, !tbaa !44
  %286 = fmul <2 x float> %285, %93
  %287 = fdiv <2 x float> %286, <float 0x3F847AE140000000, float 0x3F847AE140000000>
  %288 = fadd <2 x float> %284, %287
  %289 = load <2 x float>, ptr %99, align 4, !tbaa !44
  %290 = insertelement <2 x float> poison, float %281, i64 0
  %291 = shufflevector <2 x float> %290, <2 x float> poison, <2 x i32> zeroinitializer
  %292 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %291, <2 x float> %288, <2 x float> %289)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #25
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %17) #25
  br label %308

293:                                              ; preds = %263
  %294 = load float, ptr %87, align 4, !tbaa !266
  %295 = fmul float %294, 0x3F847AE140000000
  %296 = getelementptr inbounds %struct.BodyPoint, ptr %96, i64 0, i32 4
  %297 = load float, ptr %296, align 8, !tbaa !44
  %298 = load float, ptr %97, align 4, !tbaa !44
  %299 = fneg float %297
  %300 = call float @llvm.fmuladd.f32(float %299, float %295, float %298)
  store float %300, ptr %97, align 4, !tbaa !44
  %301 = getelementptr inbounds %struct.BodyPoint, ptr %96, i64 0, i32 4, i64 1
  %302 = load <2 x float>, ptr %301, align 4, !tbaa !44
  %303 = load <2 x float>, ptr %99, align 4, !tbaa !44
  %304 = fneg <2 x float> %302
  %305 = insertelement <2 x float> poison, float %295, i64 0
  %306 = shufflevector <2 x float> %305, <2 x float> poison, <2 x i32> zeroinitializer
  %307 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %304, <2 x float> %306, <2 x float> %303)
  br label %308

308:                                              ; preds = %293, %264
  %309 = phi <2 x float> [ %307, %293 ], [ %292, %264 ]
  store <2 x float> %309, ptr %99, align 4
  %310 = getelementptr inbounds %struct.BodyPoint, ptr %96, i64 0, i32 15
  store <2 x float> zeroinitializer, ptr %310, align 8, !tbaa !44
  %311 = getelementptr inbounds %struct.BodyPoint, ptr %96, i64 0, i32 19
  %312 = load i16, ptr %311, align 8, !tbaa !137
  %313 = and i16 %312, -2
  store i16 %313, ptr %311, align 8, !tbaa !137
  %314 = and i16 %312, 2
  %315 = icmp ne i16 %314, 0
  %316 = select i1 %50, i1 true, i1 %315
  br i1 %316, label %339, label %317

317:                                              ; preds = %308
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %21, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %22) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %22, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %24) #25
  store float 1.000000e+00, ptr %24, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %25) #25
  %318 = getelementptr inbounds %struct.BodyPoint, ptr %96, i64 0, i32 3
  %319 = call fastcc i32 @sb_deflect_face(ptr noundef nonnull %1, ptr noundef nonnull %318, ptr noundef nonnull %23, ptr noundef nonnull %21, ptr noundef nonnull %24, float noundef %3, ptr noundef nonnull %22, ptr noundef nonnull %25) #24, !range !267
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %338, label %321

321:                                              ; preds = %317
  %322 = load float, ptr %25, align 4, !tbaa !44
  %323 = fcmp olt float %322, 0.000000e+00
  br i1 %323, label %324, label %334

324:                                              ; preds = %321
  %325 = load ptr, ptr %89, align 8, !tbaa !60
  %326 = getelementptr inbounds %struct.SBScratch, ptr %325, i64 0, i32 2
  %327 = load i16, ptr %326, align 2, !tbaa !162
  %328 = or i16 %327, 1
  store i16 %328, ptr %326, align 2, !tbaa !162
  %329 = load i16, ptr %311, align 8, !tbaa !137
  %330 = or i16 %329, 1
  store i16 %330, ptr %311, align 8, !tbaa !137
  %331 = load i16, ptr %90, align 8, !tbaa !53
  %332 = sitofp i16 %331 to float
  %333 = fmul float %332, 0x3F847AE140000000
  store float %333, ptr %310, align 8, !tbaa !268
  br label %334

334:                                              ; preds = %324, %321
  %335 = getelementptr inbounds %struct.BodyPoint, ptr %96, i64 0, i32 4
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %20, ptr noundef nonnull %335, ptr noundef nonnull %22) #24
  %336 = load float, ptr %24, align 4, !tbaa !44
  %337 = fmul float %336, -5.000000e+01
  call fastcc void @Vec3PlusStVec(ptr noundef nonnull %97, float noundef %337, ptr noundef nonnull %20) #24
  call fastcc void @Vec3PlusStVec(ptr noundef nonnull %97, float noundef 1.000000e+00, ptr noundef nonnull %21) #24
  br label %338

338:                                              ; preds = %334, %317
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %25) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %24) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %22) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #25
  br label %339

339:                                              ; preds = %338, %308
  %340 = load i16, ptr %31, align 2, !tbaa !84
  %341 = and i16 %340, 4
  %342 = icmp eq i16 %341, 0
  br i1 %342, label %375, label %343

343:                                              ; preds = %339
  %344 = load ptr, ptr %75, align 8, !tbaa !74
  %345 = icmp eq ptr %344, null
  br i1 %345, label %375, label %346

346:                                              ; preds = %343
  %347 = getelementptr inbounds %struct.BodyPoint, ptr %96, i64 0, i32 13
  %348 = load i32, ptr %347, align 4, !tbaa !209
  %349 = icmp sgt i32 %348, 0
  br i1 %349, label %350, label %375

350:                                              ; preds = %346
  %351 = getelementptr inbounds %struct.BodyPoint, ptr %96, i64 0, i32 14
  %352 = sub nsw i32 %5, %95
  %353 = zext nneg i32 %348 to i64
  br label %354

354:                                              ; preds = %350, %372
  %355 = phi i64 [ %353, %350 ], [ %373, %372 ]
  %356 = load ptr, ptr %75, align 8, !tbaa !74
  %357 = load ptr, ptr %351, align 8, !tbaa !70
  %358 = getelementptr i32, ptr %357, i64 %355
  %359 = getelementptr i32, ptr %358, i64 -1
  %360 = load i32, ptr %359, align 4, !tbaa !48
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds %struct.BodySpring, ptr %356, i64 %361
  br i1 %91, label %363, label %372

363:                                              ; preds = %354
  %364 = getelementptr inbounds %struct.BodySpring, ptr %356, i64 %361, i32 5
  call fastcc void @add_v3_v3(ptr noundef nonnull %97, ptr noundef nonnull %364) #24
  %365 = getelementptr inbounds %struct.BodySpring, ptr %356, i64 %361, i32 7
  %366 = load i16, ptr %365, align 4, !tbaa !269
  %367 = and i16 %366, 1
  %368 = icmp eq i16 %367, 0
  br i1 %368, label %372, label %369

369:                                              ; preds = %363
  %370 = getelementptr inbounds %struct.BodySpring, ptr %356, i64 %361, i32 3
  %371 = load float, ptr %370, align 4, !tbaa !270
  store float %371, ptr %310, align 8, !tbaa !268
  br label %372

372:                                              ; preds = %363, %369, %354
  call fastcc void @sb_spring_force(ptr noundef %1, i32 noundef %352, ptr noundef %362) #24
  %373 = add nsw i64 %355, -1
  %374 = icmp sgt i64 %355, 1
  br i1 %374, label %354, label %375, !llvm.loop !374

375:                                              ; preds = %372, %346, %343, %339
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #25
  br label %376

376:                                              ; preds = %195, %375
  %377 = add nsw i32 %95, -1
  %378 = getelementptr inbounds %struct.BodyPoint, ptr %96, i64 1
  %379 = icmp sgt i32 %95, 1
  br i1 %379, label %94, label %380, !llvm.loop !375

380:                                              ; preds = %376, %65, %63, %61
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #12 !PGOFuncName !376 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #24
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #23
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #24
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #24
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi float [ %6, %5 ], [ 0.000000e+00, %8 ]
  ret float %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #4 !PGOFuncName !377 {
  %4 = load float, ptr %1, align 4, !tbaa !44
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !44
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !44
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !44
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !44
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !44
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @sb_detect_vertex_collisionCached(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef %3, ptr nocapture noundef readonly %4, float noundef %5, ptr nocapture noundef writeonly %6, ptr nocapture noundef %7) unnamed_addr #0 !PGOFuncName !378 {
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x float], align 4
  %17 = alloca [3 x float], align 4
  %18 = alloca [3 x float], align 8
  %19 = alloca [3 x float], align 4
  %20 = alloca [3 x float], align 4
  %21 = alloca [3 x float], align 4
  %22 = alloca [3 x float], align 4
  %23 = alloca [3 x float], align 4
  %24 = alloca [3 x float], align 8
  %25 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %18, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %22) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %23, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %24) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %25) #25
  store float 0.000000e+00, ptr %7, align 4, !tbaa !44
  %26 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 111
  %27 = load ptr, ptr %26, align 8, !tbaa !75
  %28 = getelementptr inbounds %struct.SoftBody, ptr %27, i64 0, i32 44
  %29 = load ptr, ptr %28, align 8, !tbaa !60
  %30 = load ptr, ptr %29, align 8, !tbaa !61
  %31 = tail call ptr @BLI_ghashIterator_new(ptr noundef %30) #23
  %32 = getelementptr inbounds [3 x float], ptr %24, i64 0, i64 2
  store float 0.000000e+00, ptr %32, align 8, !tbaa !44
  store <2 x float> zeroinitializer, ptr %24, align 8, !tbaa !44
  %33 = getelementptr inbounds [3 x float], ptr %25, i64 0, i64 2
  store float 0.000000e+00, ptr %33, align 8, !tbaa !44
  store <2 x float> zeroinitializer, ptr %25, align 8, !tbaa !44
  %34 = tail call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %31) #24, !range !314
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %8
  tail call void @BLI_ghashIterator_free(ptr noundef %31) #23
  call fastcc void @copy_v3_v3(ptr noundef %6, ptr noundef nonnull %18) #24
  br label %401

37:                                               ; preds = %8
  %38 = getelementptr inbounds float, ptr %0, i64 1
  %39 = getelementptr inbounds float, ptr %0, i64 2
  %40 = getelementptr inbounds [3 x float], ptr %18, i64 0, i64 2
  %41 = fsub float 1.000000e+00, %5
  br label %42

42:                                               ; preds = %37, %352
  %43 = phi i32 [ 0, %37 ], [ %358, %352 ]
  %44 = phi i32 [ 0, %37 ], [ %357, %352 ]
  %45 = phi i32 [ 0, %37 ], [ %356, %352 ]
  %46 = phi float [ 1.000000e+00, %37 ], [ %355, %352 ]
  %47 = phi float [ 1.000000e+03, %37 ], [ %354, %352 ]
  %48 = phi float [ 0x3FC99999A0000000, %37 ], [ %353, %352 ]
  %49 = call fastcc ptr @BLI_ghashIterator_getValue(ptr noundef %31) #24
  %50 = call fastcc ptr @BLI_ghashIterator_getKey(ptr noundef %31) #24
  %51 = getelementptr inbounds %struct.Object, ptr %50, i64 0, i32 110
  %52 = load ptr, ptr %51, align 8, !tbaa !246
  %53 = icmp eq ptr %52, null
  br i1 %53, label %352, label %54

54:                                               ; preds = %42
  %55 = getelementptr inbounds %struct.PartDeflect, ptr %52, i64 0, i32 1
  %56 = load i16, ptr %55, align 4, !tbaa !247
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %352, label %58

58:                                               ; preds = %54
  %59 = icmp eq ptr %49, null
  br i1 %59, label %97, label %60

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.ccd_Mesh, ptr %49, i64 0, i32 4
  %62 = load ptr, ptr %61, align 8, !tbaa !175
  %63 = getelementptr inbounds %struct.ccd_Mesh, ptr %49, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !176
  %65 = getelementptr inbounds %struct.ccd_Mesh, ptr %49, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !177
  %67 = getelementptr inbounds %struct.ccd_Mesh, ptr %49, i64 0, i32 6
  %68 = load ptr, ptr %67, align 8, !tbaa !178
  %69 = getelementptr inbounds %struct.ccd_Mesh, ptr %49, i64 0, i32 1
  %70 = load i32, ptr %69, align 4, !tbaa !289
  %71 = getelementptr inbounds %struct.ccd_Mesh, ptr %49, i64 0, i32 7
  %72 = load float, ptr %71, align 8, !tbaa !44
  %73 = getelementptr inbounds %struct.ccd_Mesh, ptr %49, i64 0, i32 7, i64 2
  %74 = load float, ptr %73, align 8, !tbaa !44
  %75 = getelementptr inbounds %struct.ccd_Mesh, ptr %49, i64 0, i32 8
  %76 = load float, ptr %75, align 4, !tbaa !44
  %77 = getelementptr inbounds %struct.ccd_Mesh, ptr %49, i64 0, i32 8, i64 1
  %78 = load float, ptr %77, align 4, !tbaa !44
  %79 = getelementptr inbounds %struct.ccd_Mesh, ptr %49, i64 0, i32 8, i64 2
  %80 = load float, ptr %79, align 4, !tbaa !44
  %81 = load float, ptr %0, align 4, !tbaa !44
  %82 = fcmp olt float %81, %72
  br i1 %82, label %352, label %83, !llvm.loop !379

83:                                               ; preds = %60
  %84 = getelementptr inbounds %struct.ccd_Mesh, ptr %49, i64 0, i32 7, i64 1
  %85 = load float, ptr %84, align 4, !tbaa !44
  %86 = load float, ptr %38, align 4, !tbaa !44
  %87 = fcmp olt float %86, %85
  br i1 %87, label %352, label %88, !llvm.loop !379

88:                                               ; preds = %83
  %89 = load float, ptr %39, align 4, !tbaa !44
  %90 = fcmp olt float %89, %74
  %91 = fcmp ogt float %81, %76
  %92 = select i1 %90, i1 true, i1 %91
  %93 = fcmp ogt float %86, %78
  %94 = select i1 %92, i1 true, i1 %93
  %95 = fcmp ogt float %89, %80
  %96 = select i1 %94, i1 true, i1 %95
  br i1 %96, label %352, label %99, !llvm.loop !379

97:                                               ; preds = %58
  %98 = call i32 @puts(ptr nonnull dereferenceable(1) @str.32)
  br label %352, !llvm.loop !379

99:                                               ; preds = %88
  %100 = getelementptr inbounds %struct.PartDeflect, ptr %52, i64 0, i32 27
  %101 = load float, ptr %100, align 4, !tbaa !290
  %102 = fneg float %101
  %103 = getelementptr inbounds %struct.PartDeflect, ptr %52, i64 0, i32 28
  %104 = load float, ptr %103, align 8, !tbaa !291
  %105 = fneg float %104
  %106 = call float @llvm.fmuladd.f32(float %104, float 0x3FB99999A0000000, float %105)
  %107 = fmul float %106, %106
  %108 = fdiv float 1.000000e+00, %107
  store float 0.000000e+00, ptr %40, align 8, !tbaa !44
  store <2 x float> zeroinitializer, ptr %18, align 8, !tbaa !44
  %109 = icmp eq i32 %70, 0
  br i1 %109, label %352, label %110

110:                                              ; preds = %99
  %111 = icmp eq ptr %64, null
  %112 = icmp ne ptr %66, null
  %113 = fmul float %104, 0x3FB99999A0000000
  br label %114

114:                                              ; preds = %110, %344
  %115 = phi i32 [ %70, %110 ], [ %127, %344 ]
  %116 = phi ptr [ %68, %110 ], [ %350, %344 ]
  %117 = phi ptr [ %62, %110 ], [ %349, %344 ]
  %118 = phi i32 [ %43, %110 ], [ %348, %344 ]
  %119 = phi i32 [ %44, %110 ], [ %347, %344 ]
  %120 = phi i32 [ %45, %110 ], [ %346, %344 ]
  %121 = phi float [ %47, %110 ], [ %345, %344 ]
  %122 = load float, ptr %0, align 4, !tbaa !44
  br label %123

123:                                              ; preds = %114, %152
  %124 = phi i32 [ %115, %114 ], [ %127, %152 ]
  %125 = phi ptr [ %116, %114 ], [ %154, %152 ]
  %126 = phi ptr [ %117, %114 ], [ %153, %152 ]
  %127 = add nsw i32 %124, -1
  %128 = load float, ptr %125, align 4, !tbaa !294
  %129 = fcmp olt float %122, %128
  br i1 %129, label %152, label %130

130:                                              ; preds = %123
  %131 = getelementptr inbounds %struct.ccdf_minmax, ptr %125, i64 0, i32 3
  %132 = load float, ptr %131, align 4, !tbaa !298
  %133 = fcmp ogt float %122, %132
  br i1 %133, label %152, label %134

134:                                              ; preds = %130
  %135 = load float, ptr %38, align 4, !tbaa !44
  %136 = getelementptr inbounds %struct.ccdf_minmax, ptr %125, i64 0, i32 1
  %137 = load float, ptr %136, align 4, !tbaa !296
  %138 = fcmp olt float %135, %137
  br i1 %138, label %152, label %139

139:                                              ; preds = %134
  %140 = getelementptr inbounds %struct.ccdf_minmax, ptr %125, i64 0, i32 4
  %141 = load float, ptr %140, align 4, !tbaa !299
  %142 = fcmp ogt float %135, %141
  br i1 %142, label %152, label %143

143:                                              ; preds = %139
  %144 = load float, ptr %39, align 4, !tbaa !44
  %145 = getelementptr inbounds %struct.ccdf_minmax, ptr %125, i64 0, i32 2
  %146 = load float, ptr %145, align 4, !tbaa !297
  %147 = fcmp olt float %144, %146
  br i1 %147, label %152, label %148

148:                                              ; preds = %143
  %149 = getelementptr inbounds %struct.ccdf_minmax, ptr %125, i64 0, i32 5
  %150 = load float, ptr %149, align 4, !tbaa !300
  %151 = fcmp ogt float %144, %150
  br i1 %151, label %152, label %156

152:                                              ; preds = %148, %143, %139, %134, %130, %123
  %153 = getelementptr inbounds %struct.MFace, ptr %126, i64 1
  %154 = getelementptr inbounds %struct.ccdf_minmax, ptr %125, i64 1
  %155 = icmp eq i32 %127, 0
  br i1 %155, label %352, label %123, !llvm.loop !380

156:                                              ; preds = %148
  br i1 %111, label %207, label %157

157:                                              ; preds = %156
  %158 = load i32, ptr %126, align 4, !tbaa !194
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds %struct.MVert, ptr %64, i64 %159
  call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %160) #24
  %161 = getelementptr inbounds %struct.MFace, ptr %126, i64 0, i32 1
  %162 = load i32, ptr %161, align 4, !tbaa !196
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds %struct.MVert, ptr %64, i64 %163
  call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef nonnull %164) #24
  %165 = getelementptr inbounds %struct.MFace, ptr %126, i64 0, i32 2
  %166 = load i32, ptr %165, align 4, !tbaa !195
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds %struct.MVert, ptr %64, i64 %167
  call fastcc void @copy_v3_v3(ptr noundef nonnull %11, ptr noundef nonnull %168) #24
  %169 = getelementptr inbounds %struct.MFace, ptr %126, i64 0, i32 3
  %170 = load i32, ptr %169, align 4, !tbaa !192
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %175, label %172

172:                                              ; preds = %157
  %173 = zext i32 %170 to i64
  %174 = getelementptr inbounds %struct.MVert, ptr %64, i64 %173
  call fastcc void @copy_v3_v3(ptr noundef nonnull %12, ptr noundef nonnull %174) #24
  br label %175

175:                                              ; preds = %172, %157
  br i1 %112, label %176, label %207

176:                                              ; preds = %175
  %177 = load i32, ptr %126, align 4, !tbaa !194
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds %struct.MVert, ptr %66, i64 %178
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %19, ptr noundef nonnull %9, ptr noundef nonnull %179) #24
  %180 = load i32, ptr %161, align 4, !tbaa !196
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds %struct.MVert, ptr %66, i64 %181
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %20, ptr noundef nonnull %10, ptr noundef nonnull %182) #24
  %183 = load i32, ptr %165, align 4, !tbaa !195
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds %struct.MVert, ptr %66, i64 %184
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %21, ptr noundef nonnull %11, ptr noundef nonnull %185) #24
  %186 = load i32, ptr %169, align 4, !tbaa !192
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %191, label %188

188:                                              ; preds = %176
  %189 = zext i32 %186 to i64
  %190 = getelementptr inbounds %struct.MVert, ptr %66, i64 %189
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %22, ptr noundef nonnull %12, ptr noundef nonnull %190) #24
  br label %191

191:                                              ; preds = %188, %176
  call fastcc void @mul_v3_fl(ptr noundef nonnull %9, float noundef %5) #24
  %192 = load i32, ptr %126, align 4, !tbaa !194
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds %struct.MVert, ptr %66, i64 %193
  call fastcc void @Vec3PlusStVec(ptr noundef nonnull %9, float noundef %41, ptr noundef nonnull %194) #24
  call fastcc void @mul_v3_fl(ptr noundef nonnull %10, float noundef %5) #24
  %195 = load i32, ptr %161, align 4, !tbaa !196
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds %struct.MVert, ptr %66, i64 %196
  call fastcc void @Vec3PlusStVec(ptr noundef nonnull %10, float noundef %41, ptr noundef nonnull %197) #24
  call fastcc void @mul_v3_fl(ptr noundef nonnull %11, float noundef %5) #24
  %198 = load i32, ptr %165, align 4, !tbaa !195
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds %struct.MVert, ptr %66, i64 %199
  call fastcc void @Vec3PlusStVec(ptr noundef nonnull %11, float noundef %41, ptr noundef nonnull %200) #24
  %201 = load i32, ptr %169, align 4, !tbaa !192
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %207, label %203

203:                                              ; preds = %191
  call fastcc void @mul_v3_fl(ptr noundef nonnull %12, float noundef %5) #24
  %204 = load i32, ptr %169, align 4, !tbaa !192
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds %struct.MVert, ptr %66, i64 %205
  call fastcc void @Vec3PlusStVec(ptr noundef nonnull %12, float noundef %41, ptr noundef nonnull %206) #24
  br label %207

207:                                              ; preds = %175, %203, %191, %156
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %13, ptr noundef nonnull %9, ptr noundef nonnull %10) #24
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %14, ptr noundef nonnull %11, ptr noundef nonnull %10) #24
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %16, ptr noundef nonnull %0, ptr noundef nonnull %10) #24
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %15, ptr noundef nonnull %14, ptr noundef nonnull %13) #24
  %208 = call fastcc float @normalize_v3(ptr noundef nonnull %15) #24
  %209 = call fastcc float @dot_v3v3(ptr noundef nonnull %16, ptr noundef nonnull %15) #24
  %210 = fcmp ogt float %209, %102
  %211 = fcmp olt float %209, %104
  %212 = select i1 %210, i1 %211, i1 false
  br i1 %212, label %213, label %249

213:                                              ; preds = %207
  %214 = call zeroext i8 @isect_point_tri_prism_v3(ptr noundef nonnull %0, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11) #23
  %215 = icmp eq i8 %214, 0
  br i1 %215, label %249, label %216

216:                                              ; preds = %213
  %217 = fmul float %209, -5.000000e+00
  %218 = fpext float %217 to double
  %219 = call double @exp(double noundef %218) #23
  %220 = fptrunc double %219 to float
  %221 = fcmp ogt float %209, %113
  %222 = fmul float %108, %220
  %223 = fsub float %209, %104
  %224 = fmul float %223, %222
  %225 = fmul float %223, %224
  %226 = select i1 %221, float %225, float %220
  %227 = load ptr, ptr %51, align 8, !tbaa !246
  %228 = getelementptr inbounds %struct.PartDeflect, ptr %227, i64 0, i32 26
  %229 = load float, ptr %228, align 8, !tbaa !357
  store float %229, ptr %2, align 4, !tbaa !44
  %230 = fcmp ogt float %209, 0.000000e+00
  br i1 %230, label %231, label %235

231:                                              ; preds = %216
  %232 = fdiv float %209, %104
  %233 = fsub float 1.000000e+00, %232
  %234 = fmul float %233, %229
  store float %234, ptr %2, align 4, !tbaa !44
  call fastcc void @Vec3PlusStVec(ptr noundef nonnull %24, float noundef %226, ptr noundef nonnull %15) #24
  br label %237

235:                                              ; preds = %216
  call fastcc void @Vec3PlusStVec(ptr noundef nonnull %25, float noundef %226, ptr noundef nonnull %15) #24
  %236 = call i32 @llvm.smax.i32(i32 %120, i32 2)
  br label %237

237:                                              ; preds = %235, %231
  %238 = phi float [ %234, %231 ], [ %229, %235 ]
  %239 = phi i32 [ 3, %231 ], [ %236, %235 ]
  %240 = fcmp ogt float %238, 0.000000e+00
  %241 = select i1 %112, i1 %240, i1 false
  br i1 %241, label %242, label %244

242:                                              ; preds = %237
  call fastcc void @choose_winner(ptr noundef nonnull %17, ptr noundef nonnull %0, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %19, ptr noundef nonnull %20, ptr noundef nonnull %21) #24
  call fastcc void @add_v3_v3(ptr noundef nonnull %18, ptr noundef nonnull %17) #24
  %243 = add nsw i32 %119, 1
  br label %244

244:                                              ; preds = %242, %237
  %245 = phi i32 [ %243, %242 ], [ %119, %237 ]
  %246 = load float, ptr %7, align 4, !tbaa !44
  %247 = fadd float %209, %246
  store float %247, ptr %7, align 4, !tbaa !44
  %248 = add nsw i32 %118, 1
  br label %249

249:                                              ; preds = %213, %244, %207
  %250 = phi i32 [ %239, %244 ], [ %120, %213 ], [ %120, %207 ]
  %251 = phi i32 [ %245, %244 ], [ %119, %213 ], [ %119, %207 ]
  %252 = phi i32 [ %248, %244 ], [ %118, %213 ], [ %118, %207 ]
  %253 = getelementptr inbounds %struct.MFace, ptr %126, i64 0, i32 3
  %254 = load i32, ptr %253, align 4, !tbaa !192
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %344, label %256

256:                                              ; preds = %249
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %13, ptr noundef nonnull %11, ptr noundef nonnull %12) #24
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %14, ptr noundef nonnull %9, ptr noundef nonnull %12) #24
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %16, ptr noundef nonnull %0, ptr noundef nonnull %12) #24
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %15, ptr noundef nonnull %14, ptr noundef nonnull %13) #24
  %257 = call fastcc float @normalize_v3(ptr noundef nonnull %15) #24
  %258 = call fastcc float @dot_v3v3(ptr noundef nonnull %16, ptr noundef nonnull %15) #24
  %259 = fcmp ogt float %258, %102
  %260 = fcmp olt float %258, %104
  %261 = select i1 %259, i1 %260, i1 false
  br i1 %261, label %262, label %298

262:                                              ; preds = %256
  %263 = call zeroext i8 @isect_point_tri_prism_v3(ptr noundef nonnull %0, ptr noundef nonnull %9, ptr noundef nonnull %11, ptr noundef nonnull %12) #23
  %264 = icmp eq i8 %263, 0
  br i1 %264, label %298, label %265

265:                                              ; preds = %262
  %266 = fmul float %258, -5.000000e+00
  %267 = fpext float %266 to double
  %268 = call double @exp(double noundef %267) #23
  %269 = fptrunc double %268 to float
  %270 = fcmp ogt float %258, %113
  %271 = fmul float %108, %269
  %272 = fsub float %258, %104
  %273 = fmul float %272, %271
  %274 = fmul float %272, %273
  %275 = select i1 %270, float %274, float %269
  %276 = load ptr, ptr %51, align 8, !tbaa !246
  %277 = getelementptr inbounds %struct.PartDeflect, ptr %276, i64 0, i32 26
  %278 = load float, ptr %277, align 8, !tbaa !357
  store float %278, ptr %2, align 4, !tbaa !44
  %279 = fcmp ogt float %258, 0.000000e+00
  br i1 %279, label %280, label %284

280:                                              ; preds = %265
  %281 = fdiv float %258, %104
  %282 = fsub float 1.000000e+00, %281
  %283 = fmul float %282, %278
  store float %283, ptr %2, align 4, !tbaa !44
  call fastcc void @Vec3PlusStVec(ptr noundef nonnull %24, float noundef %275, ptr noundef nonnull %15) #24
  br label %286

284:                                              ; preds = %265
  call fastcc void @Vec3PlusStVec(ptr noundef nonnull %25, float noundef %275, ptr noundef nonnull %15) #24
  %285 = call i32 @llvm.smax.i32(i32 %250, i32 2)
  br label %286

286:                                              ; preds = %284, %280
  %287 = phi float [ %283, %280 ], [ %278, %284 ]
  %288 = phi i32 [ 3, %280 ], [ %285, %284 ]
  %289 = fcmp ogt float %287, 0.000000e+00
  %290 = select i1 %112, i1 %289, i1 false
  br i1 %290, label %291, label %293

291:                                              ; preds = %286
  call fastcc void @choose_winner(ptr noundef nonnull %17, ptr noundef nonnull %0, ptr noundef nonnull %9, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %19, ptr noundef nonnull %21, ptr noundef nonnull %22) #24
  call fastcc void @add_v3_v3(ptr noundef nonnull %18, ptr noundef nonnull %17) #24
  %292 = add nsw i32 %251, 1
  br label %293

293:                                              ; preds = %286, %291
  %294 = phi i32 [ %292, %291 ], [ %251, %286 ]
  %295 = load float, ptr %7, align 4, !tbaa !44
  %296 = fadd float %258, %295
  store float %296, ptr %7, align 4, !tbaa !44
  %297 = add nsw i32 %252, 1
  br label %344

298:                                              ; preds = %262, %256
  %299 = icmp slt i32 %250, 2
  %300 = load i16, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 14), align 4
  %301 = icmp ne i16 %300, 444
  %302 = select i1 %299, i1 %301, i1 false
  br i1 %302, label %303, label %344

303:                                              ; preds = %298
  call void @closest_to_line_segment_v3(ptr noundef nonnull %17, ptr noundef nonnull %0, ptr noundef nonnull %9, ptr noundef nonnull %10) #23
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %17, ptr noundef nonnull %0, ptr noundef nonnull %17) #24
  %304 = call fastcc float @normalize_v3(ptr noundef nonnull %17) #24
  %305 = fcmp olt float %304, %104
  %306 = fcmp olt float %304, %121
  %307 = select i1 %305, i1 %306, i1 false
  br i1 %307, label %308, label %309

308:                                              ; preds = %303
  call fastcc void @copy_v3_v3(ptr noundef nonnull %23, ptr noundef nonnull %17) #24
  br label %309

309:                                              ; preds = %308, %303
  %310 = phi float [ %304, %308 ], [ %121, %303 ]
  %311 = phi i32 [ 1, %308 ], [ %250, %303 ]
  call void @closest_to_line_segment_v3(ptr noundef nonnull %17, ptr noundef nonnull %0, ptr noundef nonnull %10, ptr noundef nonnull %11) #23
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %17, ptr noundef nonnull %0, ptr noundef nonnull %17) #24
  %312 = call fastcc float @normalize_v3(ptr noundef nonnull %17) #24
  %313 = fcmp olt float %312, %104
  %314 = fcmp olt float %312, %310
  %315 = select i1 %313, i1 %314, i1 false
  br i1 %315, label %316, label %317

316:                                              ; preds = %309
  call fastcc void @copy_v3_v3(ptr noundef nonnull %23, ptr noundef nonnull %17) #24
  br label %317

317:                                              ; preds = %316, %309
  %318 = phi float [ %312, %316 ], [ %310, %309 ]
  %319 = phi i32 [ 1, %316 ], [ %311, %309 ]
  call void @closest_to_line_segment_v3(ptr noundef nonnull %17, ptr noundef nonnull %0, ptr noundef nonnull %11, ptr noundef nonnull %9) #23
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %17, ptr noundef nonnull %0, ptr noundef nonnull %17) #24
  %320 = call fastcc float @normalize_v3(ptr noundef nonnull %17) #24
  %321 = fcmp olt float %320, %104
  %322 = fcmp olt float %320, %318
  %323 = select i1 %321, i1 %322, i1 false
  br i1 %323, label %324, label %325

324:                                              ; preds = %317
  call fastcc void @copy_v3_v3(ptr noundef nonnull %23, ptr noundef nonnull %17) #24
  br label %325

325:                                              ; preds = %324, %317
  %326 = phi float [ %320, %324 ], [ %318, %317 ]
  %327 = phi i32 [ 1, %324 ], [ %319, %317 ]
  %328 = load i32, ptr %253, align 4, !tbaa !192
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %344, label %330

330:                                              ; preds = %325
  call void @closest_to_line_segment_v3(ptr noundef nonnull %17, ptr noundef nonnull %0, ptr noundef nonnull %11, ptr noundef nonnull %12) #23
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %17, ptr noundef nonnull %0, ptr noundef nonnull %17) #24
  %331 = call fastcc float @normalize_v3(ptr noundef nonnull %17) #24
  %332 = fcmp olt float %331, %104
  %333 = fcmp olt float %331, %326
  %334 = select i1 %332, i1 %333, i1 false
  br i1 %334, label %335, label %336

335:                                              ; preds = %330
  call fastcc void @copy_v3_v3(ptr noundef nonnull %23, ptr noundef nonnull %17) #24
  br label %336

336:                                              ; preds = %335, %330
  %337 = phi float [ %331, %335 ], [ %326, %330 ]
  %338 = phi i32 [ 1, %335 ], [ %327, %330 ]
  call void @closest_to_line_segment_v3(ptr noundef nonnull %17, ptr noundef nonnull %0, ptr noundef nonnull %9, ptr noundef nonnull %12) #23
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %17, ptr noundef nonnull %0, ptr noundef nonnull %17) #24
  %339 = call fastcc float @normalize_v3(ptr noundef nonnull %17) #24
  %340 = fcmp olt float %339, %104
  %341 = fcmp olt float %339, %337
  %342 = select i1 %340, i1 %341, i1 false
  br i1 %342, label %343, label %344

343:                                              ; preds = %336
  call fastcc void @copy_v3_v3(ptr noundef nonnull %23, ptr noundef nonnull %17) #24
  br label %344

344:                                              ; preds = %293, %325, %343, %336, %298, %249
  %345 = phi float [ %121, %298 ], [ %121, %249 ], [ %339, %343 ], [ %337, %336 ], [ %326, %325 ], [ %121, %293 ]
  %346 = phi i32 [ %250, %298 ], [ %250, %249 ], [ 1, %343 ], [ %338, %336 ], [ %327, %325 ], [ %288, %293 ]
  %347 = phi i32 [ %251, %298 ], [ %251, %249 ], [ %251, %343 ], [ %251, %336 ], [ %251, %325 ], [ %294, %293 ]
  %348 = phi i32 [ %252, %298 ], [ %252, %249 ], [ %252, %343 ], [ %252, %336 ], [ %252, %325 ], [ %297, %293 ]
  %349 = getelementptr inbounds %struct.MFace, ptr %126, i64 1
  %350 = getelementptr inbounds %struct.ccdf_minmax, ptr %125, i64 1
  %351 = icmp eq i32 %127, 0
  br i1 %351, label %352, label %114, !llvm.loop !380

352:                                              ; preds = %344, %152, %42, %54, %99, %60, %83, %88, %97
  %353 = phi float [ %48, %97 ], [ %48, %88 ], [ %48, %83 ], [ %48, %60 ], [ %48, %54 ], [ %48, %42 ], [ %104, %99 ], [ %104, %152 ], [ %104, %344 ]
  %354 = phi float [ %47, %97 ], [ %47, %88 ], [ %47, %83 ], [ %47, %60 ], [ %47, %54 ], [ %47, %42 ], [ %47, %99 ], [ %121, %152 ], [ %345, %344 ]
  %355 = phi float [ %46, %97 ], [ %46, %88 ], [ %46, %83 ], [ %46, %60 ], [ %46, %54 ], [ %46, %42 ], [ %108, %99 ], [ %108, %152 ], [ %108, %344 ]
  %356 = phi i32 [ %45, %97 ], [ %45, %88 ], [ %45, %83 ], [ %45, %60 ], [ %45, %54 ], [ %45, %42 ], [ %45, %99 ], [ %120, %152 ], [ %346, %344 ]
  %357 = phi i32 [ %44, %97 ], [ %44, %88 ], [ %44, %83 ], [ %44, %60 ], [ %44, %54 ], [ %44, %42 ], [ %44, %99 ], [ %119, %152 ], [ %347, %344 ]
  %358 = phi i32 [ %43, %97 ], [ %43, %88 ], [ %43, %83 ], [ %43, %60 ], [ %43, %54 ], [ %43, %42 ], [ %43, %99 ], [ %118, %152 ], [ %348, %344 ]
  call void @BLI_ghashIterator_step(ptr noundef %31) #23
  %359 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %31) #24, !range !314
  %360 = icmp eq i8 %359, 0
  br i1 %360, label %42, label %361

361:                                              ; preds = %352
  switch i32 %356, label %385 [
    i32 1, label %362
    i32 2, label %383
    i32 3, label %384
  ]

362:                                              ; preds = %361
  %363 = fmul float %354, -5.000000e+00
  %364 = fpext float %363 to double
  %365 = call double @exp(double noundef %364) #23
  %366 = fptrunc double %365 to float
  %367 = fmul float %353, 0x3FB99999A0000000
  %368 = fcmp ogt float %354, %367
  %369 = fmul float %355, %366
  %370 = fsub float %354, %353
  %371 = fmul float %370, %369
  %372 = fmul float %370, %371
  %373 = select i1 %368, float %372, float %366
  call fastcc void @Vec3PlusStVec(ptr noundef %3, float noundef %373, ptr noundef nonnull %23) #24
  %374 = getelementptr inbounds %struct.Object, ptr %50, i64 0, i32 110
  %375 = load ptr, ptr %374, align 8, !tbaa !246
  %376 = getelementptr inbounds %struct.PartDeflect, ptr %375, i64 0, i32 26
  %377 = load float, ptr %376, align 8, !tbaa !357
  store float %377, ptr %2, align 4, !tbaa !44
  %378 = fcmp ogt float %354, 0.000000e+00
  br i1 %378, label %379, label %385

379:                                              ; preds = %362
  %380 = fdiv float %354, %353
  %381 = fsub float 1.000000e+00, %380
  %382 = fmul float %381, %377
  store float %382, ptr %2, align 4, !tbaa !44
  br label %385

383:                                              ; preds = %361
  call fastcc void @add_v3_v3(ptr noundef %3, ptr noundef nonnull %25) #24
  br label %385

384:                                              ; preds = %361
  call fastcc void @add_v3_v3(ptr noundef %3, ptr noundef nonnull %24) #24
  br label %385

385:                                              ; preds = %383, %379, %362, %361, %384
  %386 = phi i32 [ 2, %383 ], [ 1, %379 ], [ 1, %362 ], [ %356, %361 ], [ 3, %384 ]
  call void @BLI_ghashIterator_free(ptr noundef %31) #23
  %387 = icmp eq i32 %357, 0
  br i1 %387, label %391, label %388

388:                                              ; preds = %385
  %389 = sitofp i32 %357 to float
  %390 = fdiv float 1.000000e+00, %389
  call fastcc void @mul_v3_fl(ptr noundef nonnull %18, float noundef %390) #24
  br label %391

391:                                              ; preds = %388, %385
  call fastcc void @copy_v3_v3(ptr noundef %6, ptr noundef nonnull %18) #24
  %392 = icmp eq i32 %358, 0
  br i1 %392, label %397, label %393

393:                                              ; preds = %391
  %394 = sitofp i32 %358 to float
  %395 = load float, ptr %7, align 4, !tbaa !44
  %396 = fdiv float %395, %394
  store float %396, ptr %7, align 4, !tbaa !44
  br label %397

397:                                              ; preds = %393, %391
  %398 = icmp eq i32 %386, 0
  br i1 %398, label %401, label %399

399:                                              ; preds = %397
  %400 = call fastcc float @normalize_v3_v3(ptr noundef %1, ptr noundef %3) #24
  br label %401

401:                                              ; preds = %36, %399, %397
  %402 = phi i32 [ 0, %36 ], [ %386, %399 ], [ 0, %397 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %25) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %24) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %22) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #25
  ret i32 %402
}

; Function Attrs: optsize
declare zeroext i8 @isect_point_tri_prism_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @choose_winner(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6, ptr nocapture noundef readonly %7) unnamed_addr #20 !PGOFuncName !381 {
  %9 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %2) #24
  %10 = tail call float @llvm.fabs.f32(float %9)
  %11 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %3) #24
  %12 = tail call float @llvm.fabs.f32(float %11)
  %13 = fcmp olt float %10, %12
  %14 = select i1 %13, float %12, float %10
  %15 = select i1 %13, i32 2, i32 1
  %16 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %4) #24
  %17 = tail call float @llvm.fabs.f32(float %16)
  %18 = fcmp olt float %14, %17
  %19 = select i1 %18, i32 3, i32 %15
  switch i32 %19, label %22 [
    i32 1, label %23
    i32 2, label %20
    i32 3, label %21
  ]

20:                                               ; preds = %8
  br label %23

21:                                               ; preds = %8
  br label %23

22:                                               ; preds = %8
  unreachable

23:                                               ; preds = %8, %21, %20
  %24 = phi ptr [ %7, %21 ], [ %6, %20 ], [ %5, %8 ]
  tail call fastcc void @copy_v3_v3(ptr noundef %0, ptr noundef %24) #24
  ret void
}

; Function Attrs: optsize
declare void @closest_to_line_segment_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @sb_detect_face_collisionCached(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef %4, ptr nocapture noundef readonly %5, float noundef %6) unnamed_addr #0 !PGOFuncName !382 {
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #25
  %16 = load float, ptr %0, align 4, !tbaa !44
  %17 = load float, ptr %1, align 4, !tbaa !44
  %18 = load float, ptr %2, align 4, !tbaa !44
  %19 = tail call fastcc float @min_fff(float noundef %16, float noundef %17, float noundef %18) #24
  %20 = getelementptr inbounds float, ptr %0, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !44
  %22 = getelementptr inbounds float, ptr %1, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !44
  %24 = getelementptr inbounds float, ptr %2, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !44
  %26 = tail call fastcc float @min_fff(float noundef %21, float noundef %23, float noundef %25) #24
  %27 = getelementptr inbounds float, ptr %0, i64 2
  %28 = load float, ptr %27, align 4, !tbaa !44
  %29 = getelementptr inbounds float, ptr %1, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !44
  %31 = getelementptr inbounds float, ptr %2, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !44
  %33 = tail call fastcc float @min_fff(float noundef %28, float noundef %30, float noundef %32) #24
  %34 = tail call fastcc float @max_fff(float noundef %16, float noundef %17, float noundef %18) #24
  %35 = tail call fastcc float @max_fff(float noundef %21, float noundef %23, float noundef %25) #24
  %36 = tail call fastcc float @max_fff(float noundef %28, float noundef %30, float noundef %32) #24
  %37 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 111
  %38 = load ptr, ptr %37, align 8, !tbaa !75
  %39 = getelementptr inbounds %struct.SoftBody, ptr %38, i64 0, i32 44
  %40 = load ptr, ptr %39, align 8, !tbaa !60
  %41 = load ptr, ptr %40, align 8, !tbaa !61
  %42 = tail call ptr @BLI_ghashIterator_new(ptr noundef %41) #23
  %43 = tail call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %42) #24, !range !314
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %214

45:                                               ; preds = %7
  %46 = fsub float 1.000000e+00, %6
  br label %47

47:                                               ; preds = %45, %210
  %48 = phi i32 [ 0, %45 ], [ %211, %210 ]
  %49 = call fastcc ptr @BLI_ghashIterator_getValue(ptr noundef %42) #24
  %50 = call fastcc ptr @BLI_ghashIterator_getKey(ptr noundef %42) #24
  %51 = getelementptr inbounds %struct.Object, ptr %50, i64 0, i32 110
  %52 = load ptr, ptr %51, align 8, !tbaa !246
  %53 = icmp eq ptr %52, null
  br i1 %53, label %210, label %54

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.PartDeflect, ptr %52, i64 0, i32 1
  %56 = load i16, ptr %55, align 4, !tbaa !247
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %210, label %58

58:                                               ; preds = %54
  %59 = icmp eq ptr %49, null
  br i1 %59, label %99, label %60

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.ccd_Mesh, ptr %49, i64 0, i32 4
  %62 = load ptr, ptr %61, align 8, !tbaa !175
  %63 = getelementptr inbounds %struct.ccd_Mesh, ptr %49, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !176
  %65 = getelementptr inbounds %struct.ccd_Mesh, ptr %49, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !177
  %67 = getelementptr inbounds %struct.ccd_Mesh, ptr %49, i64 0, i32 6
  %68 = load ptr, ptr %67, align 8, !tbaa !178
  %69 = getelementptr inbounds %struct.ccd_Mesh, ptr %49, i64 0, i32 1
  %70 = load i32, ptr %69, align 4, !tbaa !289
  %71 = getelementptr inbounds %struct.ccd_Mesh, ptr %49, i64 0, i32 7
  %72 = load float, ptr %71, align 8, !tbaa !44
  %73 = fcmp olt float %34, %72
  br i1 %73, label %210, label %74, !llvm.loop !383

74:                                               ; preds = %60
  %75 = getelementptr inbounds %struct.ccd_Mesh, ptr %49, i64 0, i32 7, i64 1
  %76 = load float, ptr %75, align 4, !tbaa !44
  %77 = fcmp olt float %35, %76
  br i1 %77, label %210, label %78, !llvm.loop !383

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.ccd_Mesh, ptr %49, i64 0, i32 7, i64 2
  %80 = load float, ptr %79, align 8, !tbaa !44
  %81 = fcmp olt float %36, %80
  br i1 %81, label %210, label %82, !llvm.loop !383

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.ccd_Mesh, ptr %49, i64 0, i32 8
  %84 = load float, ptr %83, align 4, !tbaa !44
  %85 = fcmp ogt float %19, %84
  br i1 %85, label %210, label %86, !llvm.loop !383

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.ccd_Mesh, ptr %49, i64 0, i32 8, i64 1
  %88 = load float, ptr %87, align 4, !tbaa !44
  %89 = fcmp ogt float %26, %88
  br i1 %89, label %210, label %90, !llvm.loop !383

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.ccd_Mesh, ptr %49, i64 0, i32 8, i64 2
  %92 = load float, ptr %91, align 4, !tbaa !44
  %93 = fcmp ogt float %33, %92
  %94 = icmp eq i32 %70, 0
  %95 = select i1 %93, i1 true, i1 %94
  br i1 %95, label %210, label %96, !llvm.loop !383

96:                                               ; preds = %90
  %97 = icmp eq ptr %64, null
  %98 = icmp eq ptr %66, null
  br label %205

99:                                               ; preds = %58
  %100 = call i32 @puts(ptr nonnull dereferenceable(1) @str.32)
  br label %210, !llvm.loop !383

101:                                              ; preds = %205, %128
  %102 = phi i32 [ %206, %205 ], [ %105, %128 ]
  %103 = phi ptr [ %207, %205 ], [ %130, %128 ]
  %104 = phi ptr [ %208, %205 ], [ %129, %128 ]
  %105 = add nsw i32 %102, -1
  %106 = load float, ptr %103, align 4, !tbaa !294
  %107 = fcmp olt float %34, %106
  br i1 %107, label %128, label %108

108:                                              ; preds = %101
  %109 = getelementptr inbounds %struct.ccdf_minmax, ptr %103, i64 0, i32 3
  %110 = load float, ptr %109, align 4, !tbaa !298
  %111 = fcmp ogt float %19, %110
  br i1 %111, label %128, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.ccdf_minmax, ptr %103, i64 0, i32 1
  %114 = load float, ptr %113, align 4, !tbaa !296
  %115 = fcmp olt float %35, %114
  br i1 %115, label %128, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.ccdf_minmax, ptr %103, i64 0, i32 4
  %118 = load float, ptr %117, align 4, !tbaa !299
  %119 = fcmp ogt float %26, %118
  br i1 %119, label %128, label %120

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.ccdf_minmax, ptr %103, i64 0, i32 2
  %122 = load float, ptr %121, align 4, !tbaa !297
  %123 = fcmp olt float %36, %122
  br i1 %123, label %128, label %124

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.ccdf_minmax, ptr %103, i64 0, i32 5
  %126 = load float, ptr %125, align 4, !tbaa !300
  %127 = fcmp ogt float %33, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %124, %120, %116, %112, %108, %101
  %129 = getelementptr inbounds %struct.MFace, ptr %104, i64 1
  %130 = getelementptr inbounds %struct.ccdf_minmax, ptr %103, i64 1
  %131 = icmp eq i32 %105, 0
  br i1 %131, label %210, label %101, !llvm.loop !384

132:                                              ; preds = %124
  br i1 %97, label %168, label %133

133:                                              ; preds = %132
  %134 = load i32, ptr %104, align 4, !tbaa !194
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds %struct.MVert, ptr %64, i64 %135
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %136) #24
  %137 = getelementptr inbounds %struct.MFace, ptr %104, i64 0, i32 1
  %138 = load i32, ptr %137, align 4, !tbaa !196
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds %struct.MVert, ptr %64, i64 %139
  call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %140) #24
  %141 = getelementptr inbounds %struct.MFace, ptr %104, i64 0, i32 2
  %142 = load i32, ptr %141, align 4, !tbaa !195
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds %struct.MVert, ptr %64, i64 %143
  call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef nonnull %144) #24
  %145 = getelementptr inbounds %struct.MFace, ptr %104, i64 0, i32 3
  %146 = load i32, ptr %145, align 4, !tbaa !192
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %133
  %149 = zext i32 %146 to i64
  %150 = getelementptr inbounds %struct.MVert, ptr %64, i64 %149
  call fastcc void @copy_v3_v3(ptr noundef nonnull %11, ptr noundef nonnull %150) #24
  br label %151

151:                                              ; preds = %148, %133
  br i1 %98, label %168, label %152

152:                                              ; preds = %151
  call fastcc void @mul_v3_fl(ptr noundef nonnull %8, float noundef %6) #24
  %153 = load i32, ptr %104, align 4, !tbaa !194
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds %struct.MVert, ptr %66, i64 %154
  call fastcc void @Vec3PlusStVec(ptr noundef nonnull %8, float noundef %46, ptr noundef nonnull %155) #24
  call fastcc void @mul_v3_fl(ptr noundef nonnull %9, float noundef %6) #24
  %156 = load i32, ptr %137, align 4, !tbaa !196
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds %struct.MVert, ptr %66, i64 %157
  call fastcc void @Vec3PlusStVec(ptr noundef nonnull %9, float noundef %46, ptr noundef nonnull %158) #24
  call fastcc void @mul_v3_fl(ptr noundef nonnull %10, float noundef %6) #24
  %159 = load i32, ptr %141, align 4, !tbaa !195
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds %struct.MVert, ptr %66, i64 %160
  call fastcc void @Vec3PlusStVec(ptr noundef nonnull %10, float noundef %46, ptr noundef nonnull %161) #24
  %162 = load i32, ptr %145, align 4, !tbaa !192
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %168, label %164

164:                                              ; preds = %152
  call fastcc void @mul_v3_fl(ptr noundef nonnull %11, float noundef %6) #24
  %165 = load i32, ptr %145, align 4, !tbaa !192
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds %struct.MVert, ptr %66, i64 %166
  call fastcc void @Vec3PlusStVec(ptr noundef nonnull %11, float noundef %46, ptr noundef nonnull %167) #24
  br label %168

168:                                              ; preds = %151, %164, %152, %132
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %8, ptr noundef nonnull %9) #24
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %13, ptr noundef nonnull %10, ptr noundef nonnull %9) #24
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %14, ptr noundef nonnull %13, ptr noundef nonnull %12) #24
  %169 = call fastcc float @normalize_v3(ptr noundef nonnull %14) #24
  %170 = call zeroext i8 @isect_line_tri_v3(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %15, ptr noundef null) #23
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %168
  %173 = call zeroext i8 @isect_line_tri_v3(ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %15, ptr noundef null) #23
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %172
  %176 = call zeroext i8 @isect_line_tri_v3(ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %15, ptr noundef null) #23
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %183, label %178

178:                                              ; preds = %175, %172, %168
  call fastcc void @Vec3PlusStVec(ptr noundef %4, float noundef -5.000000e-01, ptr noundef nonnull %14) #24
  %179 = load ptr, ptr %51, align 8, !tbaa !246
  %180 = getelementptr inbounds %struct.PartDeflect, ptr %179, i64 0, i32 26
  %181 = load float, ptr %180, align 8, !tbaa !357
  %182 = fmul float %181, 1.000000e+01
  store float %182, ptr %3, align 4, !tbaa !44
  br label %183

183:                                              ; preds = %178, %175
  %184 = phi i32 [ 2, %178 ], [ %209, %175 ]
  %185 = getelementptr inbounds %struct.MFace, ptr %104, i64 0, i32 3
  %186 = load i32, ptr %185, align 4, !tbaa !192
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %200, label %188

188:                                              ; preds = %183
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %10, ptr noundef nonnull %11) #24
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %13, ptr noundef nonnull %8, ptr noundef nonnull %11) #24
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %14, ptr noundef nonnull %13, ptr noundef nonnull %12) #24
  %189 = call fastcc float @normalize_v3(ptr noundef nonnull %14) #24
  %190 = call zeroext i8 @isect_line_tri_v3(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %15, ptr noundef null) #23
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %188
  %193 = call zeroext i8 @isect_line_tri_v3(ptr noundef nonnull %11, ptr noundef nonnull %8, ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %15, ptr noundef null) #23
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %200, label %195

195:                                              ; preds = %192, %188
  call fastcc void @Vec3PlusStVec(ptr noundef %4, float noundef -5.000000e-01, ptr noundef nonnull %14) #24
  %196 = load ptr, ptr %51, align 8, !tbaa !246
  %197 = getelementptr inbounds %struct.PartDeflect, ptr %196, i64 0, i32 26
  %198 = load float, ptr %197, align 8, !tbaa !357
  %199 = fmul float %198, 1.000000e+01
  store float %199, ptr %3, align 4, !tbaa !44
  br label %200

200:                                              ; preds = %192, %195, %183
  %201 = phi i32 [ 2, %195 ], [ %184, %192 ], [ %184, %183 ]
  %202 = getelementptr inbounds %struct.MFace, ptr %104, i64 1
  %203 = getelementptr inbounds %struct.ccdf_minmax, ptr %103, i64 1
  %204 = icmp eq i32 %105, 0
  br i1 %204, label %210, label %205, !llvm.loop !384

205:                                              ; preds = %96, %200
  %206 = phi i32 [ %70, %96 ], [ %105, %200 ]
  %207 = phi ptr [ %68, %96 ], [ %203, %200 ]
  %208 = phi ptr [ %62, %96 ], [ %202, %200 ]
  %209 = phi i32 [ %48, %96 ], [ %201, %200 ]
  br label %101

210:                                              ; preds = %200, %128, %47, %54, %60, %74, %78, %82, %86, %90, %99
  %211 = phi i32 [ %48, %99 ], [ %48, %90 ], [ %48, %86 ], [ %48, %82 ], [ %48, %78 ], [ %48, %74 ], [ %48, %60 ], [ %48, %54 ], [ %48, %47 ], [ %209, %128 ], [ %201, %200 ]
  call void @BLI_ghashIterator_step(ptr noundef %42) #23
  %212 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %42) #24, !range !314
  %213 = icmp eq i8 %212, 0
  br i1 %213, label %47, label %214

214:                                              ; preds = %210, %7
  %215 = phi i32 [ 0, %7 ], [ %211, %210 ]
  call void @BLI_ghashIterator_free(ptr noundef %42) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #25
  ret i32 %215
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @sb_detect_face_pointCached(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef %4, ptr nocapture noundef readonly %5, float noundef %6) unnamed_addr #0 !PGOFuncName !385 {
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #25
  %12 = load float, ptr %0, align 4, !tbaa !44
  %13 = load float, ptr %1, align 4, !tbaa !44
  %14 = load float, ptr %2, align 4, !tbaa !44
  %15 = tail call fastcc float @min_fff(float noundef %12, float noundef %13, float noundef %14) #24
  %16 = getelementptr inbounds float, ptr %0, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !44
  %18 = getelementptr inbounds float, ptr %1, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !44
  %20 = getelementptr inbounds float, ptr %2, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !44
  %22 = tail call fastcc float @min_fff(float noundef %17, float noundef %19, float noundef %21) #24
  %23 = getelementptr inbounds float, ptr %0, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !44
  %25 = getelementptr inbounds float, ptr %1, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !44
  %27 = getelementptr inbounds float, ptr %2, i64 2
  %28 = load float, ptr %27, align 4, !tbaa !44
  %29 = tail call fastcc float @min_fff(float noundef %24, float noundef %26, float noundef %28) #24
  %30 = tail call fastcc float @max_fff(float noundef %12, float noundef %13, float noundef %14) #24
  %31 = tail call fastcc float @max_fff(float noundef %17, float noundef %19, float noundef %21) #24
  %32 = tail call fastcc float @max_fff(float noundef %24, float noundef %26, float noundef %28) #24
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %0, ptr noundef nonnull %1) #24
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %2, ptr noundef nonnull %1) #24
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef nonnull %9) #24
  %33 = call fastcc float @normalize_v3(ptr noundef nonnull %11) #24
  %34 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 111
  %35 = load ptr, ptr %34, align 8, !tbaa !75
  %36 = getelementptr inbounds %struct.SoftBody, ptr %35, i64 0, i32 44
  %37 = load ptr, ptr %36, align 8, !tbaa !60
  %38 = load ptr, ptr %37, align 8, !tbaa !61
  %39 = tail call ptr @BLI_ghashIterator_new(ptr noundef %38) #23
  %40 = tail call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %39) #24, !range !314
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %134

42:                                               ; preds = %7
  %43 = fsub float 1.000000e+00, %6
  br label %44

44:                                               ; preds = %42, %130
  %45 = phi i32 [ 0, %42 ], [ %131, %130 ]
  %46 = call fastcc ptr @BLI_ghashIterator_getValue(ptr noundef %39) #24
  %47 = call fastcc ptr @BLI_ghashIterator_getKey(ptr noundef %39) #24
  %48 = getelementptr inbounds %struct.Object, ptr %47, i64 0, i32 110
  %49 = load ptr, ptr %48, align 8, !tbaa !246
  %50 = icmp eq ptr %49, null
  br i1 %50, label %130, label %51

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.PartDeflect, ptr %49, i64 0, i32 1
  %53 = load i16, ptr %52, align 4, !tbaa !247
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %130, label %55

55:                                               ; preds = %51
  %56 = icmp eq ptr %46, null
  br i1 %56, label %88, label %57

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.ccd_Mesh, ptr %46, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !176
  %60 = load i32, ptr %46, align 8, !tbaa !288
  %61 = getelementptr inbounds %struct.ccd_Mesh, ptr %46, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !177
  %63 = getelementptr inbounds %struct.PartDeflect, ptr %49, i64 0, i32 28
  %64 = load float, ptr %63, align 8, !tbaa !291
  %65 = getelementptr inbounds %struct.ccd_Mesh, ptr %46, i64 0, i32 7
  %66 = load float, ptr %65, align 8, !tbaa !44
  %67 = fcmp olt float %30, %66
  br i1 %67, label %130, label %68, !llvm.loop !386

68:                                               ; preds = %57
  %69 = getelementptr inbounds %struct.ccd_Mesh, ptr %46, i64 0, i32 7, i64 1
  %70 = load float, ptr %69, align 4, !tbaa !44
  %71 = fcmp olt float %31, %70
  br i1 %71, label %130, label %72, !llvm.loop !386

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.ccd_Mesh, ptr %46, i64 0, i32 7, i64 2
  %74 = load float, ptr %73, align 8, !tbaa !44
  %75 = fcmp olt float %32, %74
  br i1 %75, label %130, label %76, !llvm.loop !386

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.ccd_Mesh, ptr %46, i64 0, i32 8
  %78 = load float, ptr %77, align 4, !tbaa !44
  %79 = fcmp ogt float %15, %78
  br i1 %79, label %130, label %80, !llvm.loop !386

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.ccd_Mesh, ptr %46, i64 0, i32 8, i64 1
  %82 = load float, ptr %81, align 4, !tbaa !44
  %83 = fcmp ogt float %22, %82
  br i1 %83, label %130, label %84, !llvm.loop !386

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.ccd_Mesh, ptr %46, i64 0, i32 8, i64 2
  %86 = load float, ptr %85, align 4, !tbaa !44
  %87 = fcmp ogt float %29, %86
  br i1 %87, label %130, label %90, !llvm.loop !386

88:                                               ; preds = %55
  %89 = call i32 @puts(ptr nonnull dereferenceable(1) @str.32)
  br label %130, !llvm.loop !386

90:                                               ; preds = %84
  %91 = icmp ne ptr %59, null
  %92 = icmp ne i32 %60, 0
  %93 = select i1 %91, i1 %92, i1 false
  br i1 %93, label %94, label %130

94:                                               ; preds = %90
  %95 = icmp eq ptr %62, null
  %96 = sext i32 %60 to i64
  br label %97

97:                                               ; preds = %94, %126
  %98 = phi i64 [ %96, %94 ], [ %100, %126 ]
  %99 = phi i32 [ %45, %94 ], [ %127, %126 ]
  %100 = add nsw i64 %98, -1
  %101 = getelementptr inbounds %struct.MVert, ptr %59, i64 %100
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %101) #24
  br i1 %95, label %104, label %102

102:                                              ; preds = %97
  call fastcc void @mul_v3_fl(ptr noundef nonnull %8, float noundef %6) #24
  %103 = getelementptr inbounds %struct.MVert, ptr %62, i64 %100
  call fastcc void @Vec3PlusStVec(ptr noundef nonnull %8, float noundef %43, ptr noundef nonnull %103) #24
  br label %104

104:                                              ; preds = %102, %97
  call fastcc void @sub_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %1) #24
  %105 = call fastcc float @dot_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %11) #24
  %106 = fcmp olt float %105, 0.000000e+00
  %107 = fneg float %105
  %108 = select i1 %106, float %107, float %105
  %109 = fcmp olt float %108, %64
  br i1 %109, label %110, label %126

110:                                              ; preds = %104
  %111 = call zeroext i8 @isect_point_tri_prism_v3(ptr noundef nonnull %8, ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #23
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %126, label %113

113:                                              ; preds = %110
  %114 = fcmp ogt float %105, 0.000000e+00
  %115 = select i1 %114, float %107, float %105
  %116 = fadd float %64, %115
  %117 = fdiv float %116, %64
  %118 = fmul float %117, 1.000000e+01
  %119 = load ptr, ptr %48, align 8, !tbaa !246
  %120 = getelementptr inbounds %struct.PartDeflect, ptr %119, i64 0, i32 26
  %121 = load float, ptr %120, align 8, !tbaa !357
  %122 = fmul float %118, %121
  store float %122, ptr %3, align 4, !tbaa !44
  %123 = fmul float %117, -1.000000e+02
  %124 = call float @expf(float noundef %123) #23
  %125 = fmul float %124, 0xBF847AE140000000
  call fastcc void @Vec3PlusStVec(ptr noundef %4, float noundef %125, ptr noundef nonnull %11) #24
  br label %126

126:                                              ; preds = %110, %113, %104
  %127 = phi i32 [ 3, %113 ], [ %99, %110 ], [ %99, %104 ]
  %128 = and i64 %100, 4294967295
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %97

130:                                              ; preds = %126, %44, %51, %90, %57, %68, %72, %76, %80, %84, %88
  %131 = phi i32 [ %45, %88 ], [ %45, %84 ], [ %45, %80 ], [ %45, %76 ], [ %45, %72 ], [ %45, %68 ], [ %45, %57 ], [ %45, %51 ], [ %45, %44 ], [ %45, %90 ], [ %127, %126 ]
  call void @BLI_ghashIterator_step(ptr noundef %39) #23
  %132 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %39) #24, !range !314
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %44, label %134

134:                                              ; preds = %130, %7
  %135 = phi i32 [ 0, %7 ], [ %131, %130 ]
  call void @BLI_ghashIterator_free(ptr noundef %39) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #25
  ret i32 %135
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_fff(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #16 !PGOFuncName !387 {
  %4 = tail call fastcc float @min_ff(float noundef %0, float noundef %1) #24
  %5 = tail call fastcc float @min_ff(float noundef %4, float noundef %2) #24
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_fff(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #16 !PGOFuncName !388 {
  %4 = tail call fastcc float @max_ff(float noundef %0, float noundef %1) #24
  %5 = tail call fastcc float @max_ff(float noundef %4, float noundef %2) #24
  ret float %5
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @expf(float noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc float @sb_time_scale(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !389 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 111
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 12
  %7 = load float, ptr %6, align 4, !tbaa !390
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi float [ %7, %5 ], [ 1.000000e+00, %1 ]
  ret float %9
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #22

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #19 = { nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nounwind optsize }
attributes #24 = { optsize }
attributes #25 = { nounwind }

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
!38 = !{!39, !42, i64 28}
!39 = !{!"SoftBody", !40, i64 0, !40, i64 4, !35, i64 8, !35, i64 16, !36, i64 24, !36, i64 25, !41, i64 26, !42, i64 28, !36, i64 32, !42, i64 96, !42, i64 100, !42, i64 104, !42, i64 108, !42, i64 112, !42, i64 116, !42, i64 120, !42, i64 124, !42, i64 128, !41, i64 132, !36, i64 134, !41, i64 198, !42, i64 200, !42, i64 204, !36, i64 208, !40, i64 272, !40, i64 276, !40, i64 280, !41, i64 284, !41, i64 286, !35, i64 288, !40, i64 296, !40, i64 300, !42, i64 304, !42, i64 308, !42, i64 312, !42, i64 316, !41, i64 320, !41, i64 322, !41, i64 324, !41, i64 326, !41, i64 328, !41, i64 330, !41, i64 332, !41, i64 334, !35, i64 336, !42, i64 344, !42, i64 348, !35, i64 352, !43, i64 360, !35, i64 376, !36, i64 384, !36, i64 396, !36, i64 432, !40, i64 468}
!40 = !{!"int", !36, i64 0}
!41 = !{!"short", !36, i64 0}
!42 = !{!"float", !36, i64 0}
!43 = !{!"ListBase", !35, i64 0, !35, i64 8}
!44 = !{!42, !42, i64 0}
!45 = !{!39, !42, i64 128}
!46 = !{!39, !42, i64 348}
!47 = !{!39, !40, i64 280}
!48 = !{!40, !40, i64 0}
!49 = !{!39, !42, i64 316}
!50 = !{!39, !41, i64 320}
!51 = !{!39, !41, i64 324}
!52 = !{!39, !41, i64 326}
!53 = !{!39, !41, i64 328}
!54 = !{!39, !42, i64 344}
!55 = !{!39, !41, i64 286}
!56 = !{!39, !35, i64 352}
!57 = !{!39, !35, i64 376}
!58 = !{!39, !40, i64 468}
!59 = !{!"softbody.c:sb_new_scratch"}
!60 = !{!39, !35, i64 336}
!61 = !{!62, !35, i64 0}
!62 = !{!"SBScratch", !35, i64 0, !41, i64 8, !41, i64 10, !35, i64 16, !40, i64 24, !36, i64 28, !36, i64 40, !63, i64 56}
!63 = !{!"ReferenceState", !36, i64 0, !35, i64 16}
!64 = !{!62, !35, i64 16}
!65 = !{!62, !40, i64 24}
!66 = !{!62, !35, i64 72}
!67 = !{!"softbody.c:free_softbody_intern"}
!68 = !{!39, !35, i64 8}
!69 = !{!39, !40, i64 0}
!70 = !{!71, !35, i64 152}
!71 = !{!"BodyPoint", !36, i64 0, !36, i64 12, !36, i64 24, !36, i64 36, !36, i64 48, !36, i64 60, !42, i64 72, !36, i64 76, !36, i64 88, !36, i64 100, !36, i64 112, !36, i64 124, !36, i64 136, !40, i64 148, !35, i64 152, !42, i64 160, !42, i64 164, !42, i64 168, !42, i64 172, !41, i64 176, !42, i64 180, !42, i64 184}
!72 = distinct !{!72, !73}
!73 = !{!"llvm.loop.mustprogress"}
!74 = !{!39, !35, i64 16}
!75 = !{!76, !35, i64 1248}
!76 = !{!"Object", !77, i64 0, !35, i64 120, !35, i64 128, !41, i64 136, !41, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !36, i64 152, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !78, i64 312, !35, i64 360, !43, i64 368, !43, i64 384, !43, i64 400, !43, i64 416, !40, i64 432, !40, i64 436, !35, i64 440, !35, i64 448, !40, i64 456, !40, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !42, i64 616, !42, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !40, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !36, i64 966, !36, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !42, i64 988, !42, i64 992, !42, i64 996, !42, i64 1000, !42, i64 1004, !42, i64 1008, !42, i64 1012, !42, i64 1016, !42, i64 1020, !42, i64 1024, !42, i64 1028, !42, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !36, i64 1042, !36, i64 1043, !41, i64 1044, !36, i64 1046, !36, i64 1047, !42, i64 1048, !42, i64 1052, !43, i64 1056, !43, i64 1072, !43, i64 1088, !43, i64 1104, !42, i64 1120, !41, i64 1124, !41, i64 1126, !36, i64 1128, !40, i64 1144, !40, i64 1148, !35, i64 1152, !36, i64 1160, !36, i64 1161, !41, i64 1162, !36, i64 1164, !43, i64 1176, !43, i64 1192, !43, i64 1208, !43, i64 1224, !35, i64 1240, !35, i64 1248, !35, i64 1256, !36, i64 1264, !36, i64 1265, !41, i64 1266, !42, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !79, i64 1304, !79, i64 1312, !40, i64 1320, !40, i64 1324, !43, i64 1328, !43, i64 1344, !35, i64 1360, !35, i64 1368, !35, i64 1376, !36, i64 1384, !35, i64 1392, !43, i64 1400, !35, i64 1416}
!77 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !41, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !35, i64 112}
!78 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!79 = !{!"long", !36, i64 0}
!80 = distinct !{!80, !73}
!81 = !{!"softbody.c:copy_v3_v3"}
!82 = !{!83, !40, i64 24}
!83 = !{!"PointCache", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !41, i64 60, !41, i64 62, !36, i64 64, !36, i64 128, !36, i64 192, !36, i64 256, !35, i64 1280, !43, i64 1288, !35, i64 1304, !35, i64 1312}
!84 = !{!76, !41, i64 1162}
!85 = !{!76, !41, i64 136}
!86 = !{!83, !40, i64 16}
!87 = !{!88, !42, i64 692}
!88 = !{!"Scene", !77, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !43, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !40, i64 232, !40, i64 236, !40, i64 240, !41, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !89, i64 280, !98, i64 4264, !43, i64 4296, !43, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !41, i64 4376, !41, i64 4378, !40, i64 4380, !43, i64 4384, !99, i64 4400, !100, i64 4416, !103, i64 4600, !35, i64 4608, !104, i64 4616, !35, i64 4640, !79, i64 4648, !79, i64 4656, !91, i64 4664, !92, i64 4824, !105, i64 4888, !35, i64 4952}
!89 = !{!"RenderData", !90, i64 0, !35, i64 248, !35, i64 256, !93, i64 264, !94, i64 328, !40, i64 400, !40, i64 404, !40, i64 408, !42, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !41, i64 432, !41, i64 434, !42, i64 436, !42, i64 440, !42, i64 444, !42, i64 448, !42, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !40, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !40, i64 484, !40, i64 488, !41, i64 492, !41, i64 494, !40, i64 496, !40, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !36, i64 514, !36, i64 515, !40, i64 516, !40, i64 520, !40, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !95, i64 544, !95, i64 560, !96, i64 576, !43, i64 592, !41, i64 608, !41, i64 610, !42, i64 612, !42, i64 616, !42, i64 620, !42, i64 624, !40, i64 628, !42, i64 632, !42, i64 636, !42, i64 640, !42, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !42, i64 660, !42, i64 664, !41, i64 668, !41, i64 670, !42, i64 672, !42, i64 676, !36, i64 680, !40, i64 1704, !41, i64 1708, !41, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !40, i64 2520, !41, i64 2524, !41, i64 2526, !42, i64 2528, !42, i64 2532, !41, i64 2536, !41, i64 2538, !42, i64 2540, !41, i64 2544, !41, i64 2546, !40, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !42, i64 2560, !42, i64 2564, !35, i64 2568, !40, i64 2576, !42, i64 2580, !36, i64 2584, !97, i64 2616, !40, i64 3976, !40, i64 3980}
!90 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !41, i64 8, !41, i64 10, !42, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !91, i64 24, !92, i64 184}
!91 = !{!"ColorManagedViewSettings", !40, i64 0, !40, i64 4, !36, i64 8, !36, i64 72, !42, i64 136, !42, i64 140, !35, i64 144, !35, i64 152}
!92 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!93 = !{!"QuicktimeCodecSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !41, i64 48, !41, i64 50, !40, i64 52, !40, i64 56, !40, i64 60}
!94 = !{!"FFMpegCodecData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !42, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !35, i64 64}
!95 = !{!"rctf", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!96 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!97 = !{!"BakeData", !90, i64 0, !36, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !42, i64 1280, !42, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!98 = !{!"AudioData", !40, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !40, i64 16, !41, i64 20, !41, i64 22, !42, i64 24, !42, i64 28}
!99 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!100 = !{!"GameData", !99, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !36, i64 34, !101, i64 40, !41, i64 64, !41, i64 66, !42, i64 68, !102, i64 72, !42, i64 128, !42, i64 132, !40, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180}
!101 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !42, i64 8, !42, i64 12, !35, i64 16}
!102 = !{!"RecastData", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !40, i64 40, !42, i64 44, !42, i64 48, !41, i64 52, !41, i64 54}
!103 = !{!"UnitSettings", !42, i64 0, !36, i64 4, !36, i64 5, !41, i64 6}
!104 = !{!"PhysicsSettings", !36, i64 0, !40, i64 12, !40, i64 16, !40, i64 20}
!105 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!106 = !{!39, !41, i64 284}
!107 = !{!83, !40, i64 40}
!108 = !{!"softbody.c:object_has_edges"}
!109 = !{!76, !35, i64 296}
!110 = !{!111, !40, i64 1284}
!111 = !{!"Mesh", !77, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !35, i64 160, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !35, i64 208, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !112, i64 280, !112, i64 480, !112, i64 680, !112, i64 880, !112, i64 1080, !40, i64 1280, !40, i64 1284, !40, i64 1288, !40, i64 1292, !40, i64 1296, !40, i64 1300, !40, i64 1304, !36, i64 1308, !36, i64 1320, !36, i64 1332, !40, i64 1344, !41, i64 1348, !41, i64 1350, !42, i64 1352, !40, i64 1356, !36, i64 1360, !36, i64 1361, !36, i64 1362, !36, i64 1363, !36, i64 1364, !36, i64 1365, !41, i64 1366, !35, i64 1368}
!112 = !{!"CustomData", !35, i64 0, !36, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !35, i64 184, !35, i64 192}
!113 = !{!"softbody.c:mesh_to_softbody"}
!114 = !{!111, !35, i64 240}
!115 = !{!111, !40, i64 1280}
!116 = !{!39, !41, i64 132}
!117 = !{!71, !42, i64 72}
!118 = !{!36, !36, i64 0}
!119 = !{!71, !42, i64 184}
!120 = distinct !{!120, !73}
!121 = !{!122, !40, i64 32}
!122 = !{!"BodySpring", !40, i64 0, !40, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !36, i64 20, !40, i64 32, !41, i64 36}
!123 = distinct !{!123, !73}
!124 = !{!39, !42, i64 304}
!125 = !{!"softbody.c:lattice_to_softbody"}
!126 = !{!127, !41, i64 128}
!127 = !{!"Lattice", !77, i64 0, !35, i64 120, !41, i64 128, !41, i64 130, !41, i64 132, !41, i64 134, !41, i64 136, !41, i64 138, !41, i64 140, !41, i64 142, !36, i64 144, !36, i64 145, !36, i64 146, !36, i64 147, !40, i64 148, !42, i64 152, !42, i64 156, !42, i64 160, !42, i64 164, !42, i64 168, !42, i64 172, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !36, i64 208, !35, i64 272}
!128 = !{!127, !41, i64 130}
!129 = !{!127, !41, i64 132}
!130 = distinct !{!130, !73}
!131 = !{!"softbody.c:curve_surf_to_softbody"}
!132 = !{!133, !35, i64 72}
!133 = !{!"Nurb", !35, i64 0, !35, i64 8, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !40, i64 24, !40, i64 28, !36, i64 32, !41, i64 36, !41, i64 38, !41, i64 40, !41, i64 42, !41, i64 44, !41, i64 46, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !41, i64 80, !41, i64 82, !40, i64 84}
!134 = !{!133, !40, i64 24}
!135 = !{!136, !42, i64 40}
!136 = !{!"BezTriple", !36, i64 0, !42, i64 36, !42, i64 40, !42, i64 44, !36, i64 48, !36, i64 49, !36, i64 50, !36, i64 51, !36, i64 52, !36, i64 53, !36, i64 54, !36, i64 55, !42, i64 56, !42, i64 60, !42, i64 64, !36, i64 68}
!137 = !{!71, !41, i64 176}
!138 = !{!122, !40, i64 0}
!139 = !{!122, !40, i64 4}
!140 = !{!122, !42, i64 8}
!141 = distinct !{!141, !73}
!142 = !{!133, !40, i64 28}
!143 = !{!133, !35, i64 64}
!144 = !{!145, !42, i64 20}
!145 = !{!"BPoint", !36, i64 0, !42, i64 16, !42, i64 20, !41, i64 24, !41, i64 26, !42, i64 28, !42, i64 32}
!146 = distinct !{!146, !73}
!147 = distinct !{!147, !73}
!148 = !{!"softbody.c:renew_softbody"}
!149 = !{!39, !40, i64 4}
!150 = distinct !{!150, !73}
!151 = !{!"softbody.c:softbody_update_positions"}
!152 = distinct !{!152, !73}
!153 = !{!"softbody.c:softbody_reset"}
!154 = distinct !{!154, !73}
!155 = !{!62, !41, i64 8}
!156 = !{!"softbody.c:softbody_to_object"}
!157 = distinct !{!157, !73}
!158 = !{!"softbody.c:softbody_step"}
!159 = !{i32 0, i32 2}
!160 = !{!39, !41, i64 330}
!161 = !{!39, !42, i64 104}
!162 = !{!62, !41, i64 10}
!163 = distinct !{!163, !73}
!164 = !{!39, !41, i64 332}
!165 = !{!166, !40, i64 2100}
!166 = !{!"Global", !35, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !43, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !36, i64 2090, !41, i64 2092, !40, i64 2096, !40, i64 2100, !36, i64 2104, !40, i64 2108, !40, i64 2112, !36, i64 2116}
!167 = !{!"softbody.c:free_scratch"}
!168 = !{!"softbody.c:free_softbody_baked"}
!169 = !{!39, !40, i64 300}
!170 = !{!39, !35, i64 288}
!171 = distinct !{!171, !73}
!172 = !{!"softbody.c:ccd_mesh_free"}
!173 = !{!174, !40, i64 32}
!174 = !{!"ccd_Mesh", !40, i64 0, !40, i64 4, !35, i64 8, !35, i64 16, !35, i64 24, !40, i64 32, !35, i64 40, !36, i64 48, !36, i64 60}
!175 = !{!174, !35, i64 24}
!176 = !{!174, !35, i64 8}
!177 = !{!174, !35, i64 16}
!178 = !{!174, !35, i64 40}
!179 = !{!"softbody.c:get_scalar_from_vertexgroup"}
!180 = !{!111, !35, i64 248}
!181 = !{!127, !35, i64 200}
!182 = !{!183, !40, i64 8}
!183 = !{!"MDeformVert", !35, i64 0, !40, i64 8, !40, i64 12}
!184 = !{!183, !35, i64 0}
!185 = distinct !{!185, !73}
!186 = !{!187, !40, i64 0}
!187 = !{!"MDeformWeight", !40, i64 0, !42, i64 4}
!188 = !{!187, !42, i64 4}
!189 = !{!"softbody.c:add_mesh_quad_diag_springs"}
!190 = !{!111, !35, i64 208}
!191 = !{!111, !40, i64 1288}
!192 = !{!193, !40, i64 12}
!193 = !{!"MFace", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !41, i64 16, !36, i64 18, !36, i64 19}
!194 = !{!193, !40, i64 0}
!195 = !{!193, !40, i64 8}
!196 = !{!193, !40, i64 4}
!197 = distinct !{!197, !73}
!198 = !{!"softbody.c:build_bps_springlist"}
!199 = distinct !{!199, !73}
!200 = distinct !{!200, !73}
!201 = !{!"softbody.c:add_2nd_order_springs"}
!202 = !{!"softbody.c:springs_from_mesh"}
!203 = !{!111, !35, i64 232}
!204 = distinct !{!204, !73}
!205 = !{!39, !41, i64 334}
!206 = distinct !{!206, !73}
!207 = !{!"softbody.c:calculate_collision_balls"}
!208 = !{!71, !42, i64 172}
!209 = !{!71, !40, i64 148}
!210 = distinct !{!210, !73}
!211 = !{!39, !42, i64 308}
!212 = distinct !{!212, !73}
!213 = !{!"softbody.c:count_mesh_quads"}
!214 = distinct !{!214, !73}
!215 = !{!"softbody.c:add_bp_springlist"}
!216 = !{!"softbody.c:add_2nd_order_roller"}
!217 = distinct !{!217, !73}
!218 = distinct !{!218, !73}
!219 = distinct !{!219, !73}
!220 = !{!"softbody.c:len_v3v3"}
!221 = !{!"softbody.c:sub_v3_v3v3"}
!222 = !{!"softbody.c:len_v3"}
!223 = !{!"softbody.c:dot_v3v3"}
!224 = !{!"softbody.c:min_ff"}
!225 = !{!"softbody.c:max_ff"}
!226 = !{!"softbody.c:makelatticesprings"}
!227 = !{!127, !35, i64 176}
!228 = distinct !{!228, !73}
!229 = distinct !{!229, !73}
!230 = distinct !{!230, !73}
!231 = !{!"softbody.c:globallen"}
!232 = !{!"softbody.c:zero_v3"}
!233 = !{!"softbody.c:reference_to_scratch"}
!234 = distinct !{!234, !73}
!235 = !{!"softbody.c:mesh_faces_to_scratch"}
!236 = distinct !{!236, !73}
!237 = !{!"softbody.c:add_v3_v3"}
!238 = !{!"softbody.c:_final_mass"}
!239 = !{!71, !42, i64 180}
!240 = !{!"softbody.c:mul_v3_fl"}
!241 = !{!"softbody.c:ccd_update_deflector_hash"}
!242 = !{!243, !35, i64 32}
!243 = !{!"Base", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !41, i64 28, !41, i64 30, !35, i64 32}
!244 = !{!243, !40, i64 16}
!245 = !{!76, !40, i64 944}
!246 = !{!76, !35, i64 1240}
!247 = !{!248, !41, i64 4}
!248 = !{!"PartDeflect", !40, i64 0, !41, i64 4, !41, i64 6, !41, i64 8, !41, i64 10, !41, i64 12, !41, i64 14, !41, i64 16, !41, i64 18, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !42, i64 40, !42, i64 44, !42, i64 48, !42, i64 52, !42, i64 56, !42, i64 60, !42, i64 64, !42, i64 68, !42, i64 72, !42, i64 76, !42, i64 80, !42, i64 84, !42, i64 88, !42, i64 92, !42, i64 96, !42, i64 100, !42, i64 104, !42, i64 108, !42, i64 112, !42, i64 116, !42, i64 120, !42, i64 124, !35, i64 128, !35, i64 136, !42, i64 144, !40, i64 148, !35, i64 152}
!249 = distinct !{!249, !73}
!250 = !{!"softbody.c:query_external_colliders"}
!251 = !{!"softbody.c:ccd_build_deflector_hash"}
!252 = distinct !{!252, !73}
!253 = !{!"softbody.c:interpolate_exciter"}
!254 = distinct !{!254, !73}
!255 = !{!"softbody.c:softbody_calc_forces"}
!256 = !{!166, !41, i64 2092}
!257 = !{!88, !40, i64 4628}
!258 = !{!259, !42, i64 64}
!259 = !{!"EffectorWeights", !35, i64 0, !36, i64 8, !42, i64 64, !41, i64 68, !36, i64 70, !40, i64 76}
!260 = !{!39, !41, i64 322}
!261 = distinct !{!261, !73}
!262 = !{!39, !42, i64 312}
!263 = distinct !{!263, !73}
!264 = !{!39, !42, i64 112}
!265 = !{!39, !42, i64 116}
!266 = !{!39, !42, i64 100}
!267 = !{i32 0, i32 4}
!268 = !{!71, !42, i64 160}
!269 = !{!122, !41, i64 36}
!270 = !{!122, !42, i64 12}
!271 = distinct !{!271, !73}
!272 = distinct !{!272, !73}
!273 = !{!"softbody.c:softbody_apply_forces"}
!274 = !{!71, !42, i64 164}
!275 = distinct !{!275, !73}
!276 = !{!39, !41, i64 198}
!277 = !{!"softbody.c:softbody_apply_goalsnap"}
!278 = distinct !{!278, !73}
!279 = !{!"softbody.c:softbody_restore_prev_step"}
!280 = distinct !{!280, !73}
!281 = !{!"softbody.c:apply_spring_memory"}
!282 = distinct !{!282, !73}
!283 = !{!"softbody.c:ccd_mesh_update"}
!284 = !{!285, !40, i64 168}
!285 = !{!"CollisionModifierData", !286, i64 0, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !35, i64 160, !40, i64 168, !40, i64 172, !42, i64 176, !42, i64 180, !35, i64 184}
!286 = !{!"ModifierData", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !36, i64 32, !35, i64 96, !35, i64 104}
!287 = !{!285, !40, i64 172}
!288 = !{!174, !40, i64 0}
!289 = !{!174, !40, i64 4}
!290 = !{!248, !42, i64 92}
!291 = !{!248, !42, i64 96}
!292 = !{!285, !35, i64 120}
!293 = distinct !{!293, !73}
!294 = !{!295, !42, i64 0}
!295 = !{!"ccdf_minmax", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20}
!296 = !{!295, !42, i64 4}
!297 = !{!295, !42, i64 8}
!298 = !{!295, !42, i64 12}
!299 = !{!295, !42, i64 16}
!300 = !{!295, !42, i64 20}
!301 = distinct !{!301, !73}
!302 = !{!"softbody.c:are_there_deflectors"}
!303 = distinct !{!303, !73}
!304 = !{!"softbody.c:ccd_mesh_make"}
!305 = distinct !{!305, !73}
!306 = !{!285, !35, i64 160}
!307 = distinct !{!307, !73}
!308 = !{!"softbody.c:_final_goal"}
!309 = !{!39, !42, i64 120}
!310 = !{!39, !42, i64 124}
!311 = !{!"softbody.c:softbody_calc_forcesEx"}
!312 = !{!"softbody.c:scan_for_ext_spring_forces"}
!313 = !{!"softbody.c:sb_detect_aabb_collisionCached"}
!314 = !{i8 0, i8 2}
!315 = distinct !{!315, !73}
!316 = !{!"softbody.c:normalize_v3"}
!317 = !{!"softbody.c:Vec3PlusStVec"}
!318 = !{!"softbody.c:add_v3_v3v3"}
!319 = !{!"softbody.c:madd_v3_v3fl"}
!320 = !{!"softbody.c:sb_deflect_face"}
!321 = !{!"softbody.c:sb_spring_force"}
!322 = !{!39, !42, i64 204}
!323 = !{!"softbody.c:scan_for_ext_face_forces"}
!324 = !{!325, !41, i64 28}
!325 = !{!"BodyFace", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !36, i64 16, !41, i64 28}
!326 = !{!325, !40, i64 0}
!327 = !{!325, !40, i64 4}
!328 = !{!325, !40, i64 8}
!329 = !{!325, !40, i64 12}
!330 = distinct !{!330, !73}
!331 = distinct !{!331, !73}
!332 = !{!"softbody.c:sb_sfesf_threads_run"}
!333 = distinct !{!333, !73}
!334 = !{!335, !35, i64 0}
!335 = !{!"SB_thread_context", !35, i64 0, !35, i64 8, !42, i64 16, !42, i64 20, !40, i64 24, !40, i64 28, !35, i64 32, !40, i64 40, !42, i64 44, !42, i64 48, !40, i64 52, !40, i64 56}
!336 = !{!335, !35, i64 8}
!337 = !{!335, !42, i64 16}
!338 = !{!335, !42, i64 20}
!339 = !{!335, !40, i64 28}
!340 = !{!335, !35, i64 32}
!341 = !{!335, !40, i64 40}
!342 = !{!335, !40, i64 52}
!343 = !{!335, !40, i64 56}
!344 = distinct !{!344, !73}
!345 = distinct !{!345, !73}
!346 = !{!"softbody.c:sb_cf_threads_run"}
!347 = distinct !{!347, !73}
!348 = distinct !{!348, !73}
!349 = distinct !{!349, !73}
!350 = !{!"softbody.c:exec_scan_for_ext_spring_forces"}
!351 = !{!335, !40, i64 24}
!352 = !{!"softbody.c:_scan_for_ext_spring_forces"}
!353 = distinct !{!353, !73}
!354 = !{!"softbody.c:sb_detect_edge_collisionCached"}
!355 = distinct !{!355, !73}
!356 = distinct !{!356, !73}
!357 = !{!248, !42, i64 88}
!358 = !{!"softbody.c:sub_v3_v3"}
!359 = !{!"softbody.c:BLI_ghashIterator_done"}
!360 = !{!361, !35, i64 8}
!361 = !{!"GHashIterator", !35, i64 0, !35, i64 8, !40, i64 16}
!362 = !{!"softbody.c:BLI_ghashIterator_getValue"}
!363 = !{!364, !35, i64 16}
!364 = !{!"_gh_Entry", !35, i64 0, !35, i64 8, !35, i64 16}
!365 = !{!"softbody.c:BLI_ghashIterator_getKey"}
!366 = !{!364, !35, i64 8}
!367 = !{!"softbody.c:cross_v3_v3v3"}
!368 = !{!"softbody.c:exec_softbody_calc_forces"}
!369 = !{!335, !42, i64 44}
!370 = !{!335, !42, i64 48}
!371 = !{!"softbody.c:_softbody_calc_forces_slice_in_a_thread"}
!372 = distinct !{!372, !73}
!373 = distinct !{!373, !73}
!374 = distinct !{!374, !73}
!375 = distinct !{!375, !73}
!376 = !{!"softbody.c:normalize_v3_v3"}
!377 = !{!"softbody.c:mul_v3_v3fl"}
!378 = !{!"softbody.c:sb_detect_vertex_collisionCached"}
!379 = distinct !{!379, !73}
!380 = distinct !{!380, !73}
!381 = !{!"softbody.c:choose_winner"}
!382 = !{!"softbody.c:sb_detect_face_collisionCached"}
!383 = distinct !{!383, !73}
!384 = distinct !{!384, !73}
!385 = !{!"softbody.c:sb_detect_face_pointCached"}
!386 = distinct !{!386, !73}
!387 = !{!"softbody.c:min_fff"}
!388 = !{!"softbody.c:max_fff"}
!389 = !{!"softbody.c:sb_time_scale"}
!390 = !{!39, !42, i64 108}
