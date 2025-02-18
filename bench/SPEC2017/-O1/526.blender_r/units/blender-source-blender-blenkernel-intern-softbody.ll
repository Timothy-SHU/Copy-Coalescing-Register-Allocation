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
%struct.MDeformVert = type { ptr, i32, i32 }
%struct.Lattice = type { %struct.ID, ptr, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i32, float, float, float, float, float, float, ptr, ptr, ptr, ptr, [64 x i8], ptr }
%struct.MDeformWeight = type { i32, float }
%struct.MEdge = type { i32, i32, i8, i8, i16 }
%struct.BodySpring = type { i32, i32, float, float, float, [3 x float], i32, i16 }
%struct.MFace = type { i32, i32, i32, i32, i16, i8, i8 }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.BPoint = type { [4 x float], float, float, i16, i16, float, float }
%struct.Curve = type { %struct.ID, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], i16, i16, i16, i16, float, float, i32, i16, i16, i32, float, float, float, i16, i16, i16, i16, i32, i32, [4 x i8], i16, i8, i8, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.CharInfo, float, float, float, i8, i8, [2 x i8] }
%struct.CharInfo = type { i16, i16, i8, i8, i16 }
%struct.Nurb = type { ptr, ptr, i16, i16, i16, i16, i32, i32, [2 x i16], i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, i16, i16, i32 }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.BodyFace = type { i32, i32, i32, i32, [3 x float], i16 }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.PartDeflect = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, ptr, float, i32, ptr }
%struct.CollisionModifierData = type { %struct.ModifierData, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, float, float, ptr }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.ccd_Mesh = type { i32, i32, ptr, ptr, ptr, i32, ptr, [3 x float], [3 x float] }
%struct.ccdf_minmax = type { float, float, float, float, float, float }
%struct.EffectedPoint = type { ptr, ptr, ptr, ptr, float, float, float, float, i32, i32, ptr }
%struct.SB_thread_context = type { ptr, ptr, float, float, i32, i32, ptr, i32, float, float, i32, i32 }
%struct.EffectorWeights = type { ptr, [14 x float], float, i16, [3 x i16], i32 }
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

; Function Attrs: nounwind uwtable
define dso_local ptr @sbNew(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 472, ptr noundef nonnull @.str) #13
  %4 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 10
  store float 5.000000e-01, ptr %4, align 4, !tbaa !38
  %5 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 7
  store float 1.000000e+00, ptr %5, align 4, !tbaa !44
  %6 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 9
  store float 0x40239999A0000000, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 12
  store float 1.000000e+00, ptr %7, align 4, !tbaa !46
  %8 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 11
  store float 0x3FB99999A0000000, ptr %8, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 13
  store float 5.000000e-01, ptr %9, align 8, !tbaa !48
  %10 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 14
  store float 0.000000e+00, ptr %10, align 4, !tbaa !49
  %11 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 15
  store float 0.000000e+00, ptr %11, align 8, !tbaa !50
  %12 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 16
  store float 1.000000e+00, ptr %12, align 4, !tbaa !51
  %13 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 17
  store float 0x3FE6666660000000, ptr %13, align 8, !tbaa !52
  %14 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 21
  store float 5.000000e-01, ptr %14, align 8, !tbaa !53
  %15 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 22
  store float 5.000000e-01, ptr %15, align 4, !tbaa !54
  %16 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 46
  store float 5.000000e-01, ptr %16, align 4, !tbaa !55
  %17 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 26
  store i32 10, ptr %17, align 8, !tbaa !56
  %18 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 6
  %19 = load i32, ptr %18, align 4, !tbaa !57
  %20 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 24
  store i32 %19, ptr %20, align 8, !tbaa !78
  %21 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 7
  %22 = load i32, ptr %21, align 8, !tbaa !79
  %23 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 25
  store i32 %22, ptr %23, align 4, !tbaa !80
  %24 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 33
  store float 0x3FDF5C2900000000, ptr %24, align 4, !tbaa !81
  %25 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 34
  store float 5.000000e-01, ptr %25, align 8, !tbaa !82
  %26 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 35
  store float 1.000000e+00, ptr %26, align 4, !tbaa !83
  %27 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 36
  store i16 1, ptr %27, align 8, !tbaa !84
  %28 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 38
  store i16 10, ptr %28, align 4, !tbaa !85
  %29 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 39
  store i16 300, ptr %29, align 2, !tbaa !86
  %30 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 40
  store i16 3, ptr %30, align 8, !tbaa !87
  %31 = icmp eq ptr %3, null
  br i1 %31, label %47, label %32

32:                                               ; preds = %1
  %33 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %34 = tail call ptr %33(i64 noundef 80, ptr noundef nonnull @.str.3) #13
  %35 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 44
  store ptr %34, ptr %35, align 8, !tbaa !88
  %36 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.4) #13
  %37 = load ptr, ptr %35, align 8, !tbaa !88
  store ptr %36, ptr %37, align 8, !tbaa !89
  %38 = getelementptr inbounds %struct.SBScratch, ptr %37, i64 0, i32 3
  store ptr null, ptr %38, align 8, !tbaa !92
  %39 = getelementptr inbounds %struct.SBScratch, ptr %37, i64 0, i32 4
  store i32 0, ptr %39, align 8, !tbaa !93
  %40 = getelementptr inbounds %struct.SBScratch, ptr %37, i64 0, i32 6, i64 2
  store float 0x46293E5940000000, ptr %40, align 8, !tbaa !94
  %41 = getelementptr inbounds %struct.SBScratch, ptr %37, i64 0, i32 6, i64 1
  store float 0x46293E5940000000, ptr %41, align 4, !tbaa !94
  %42 = getelementptr inbounds %struct.SBScratch, ptr %37, i64 0, i32 6
  store float 0x46293E5940000000, ptr %42, align 8, !tbaa !94
  %43 = getelementptr inbounds %struct.SBScratch, ptr %37, i64 0, i32 5, i64 2
  store float 0xC6293E5940000000, ptr %43, align 4, !tbaa !94
  %44 = getelementptr inbounds %struct.SBScratch, ptr %37, i64 0, i32 5, i64 1
  store float 0xC6293E5940000000, ptr %44, align 4, !tbaa !94
  %45 = getelementptr inbounds %struct.SBScratch, ptr %37, i64 0, i32 5
  store float 0xC6293E5940000000, ptr %45, align 4, !tbaa !94
  %46 = getelementptr inbounds %struct.SBScratch, ptr %37, i64 0, i32 7, i32 1
  store ptr null, ptr %46, align 8, !tbaa !95
  br label %47

47:                                               ; preds = %1, %32
  %48 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 45
  store float 1.000000e+00, ptr %48, align 8, !tbaa !96
  %49 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 28
  %50 = load i16, ptr %49, align 2, !tbaa !97
  %51 = or i16 %50, 2
  store i16 %51, ptr %49, align 2, !tbaa !97
  %52 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 48
  %53 = tail call ptr @BKE_ptcache_add(ptr noundef nonnull %52) #13
  %54 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 47
  store ptr %53, ptr %54, align 8, !tbaa !98
  %55 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 49
  %56 = load ptr, ptr %55, align 8, !tbaa !99
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %47
  %59 = tail call ptr @BKE_add_effector_weights(ptr noundef null) #13
  store ptr %59, ptr %55, align 8, !tbaa !99
  br label %60

60:                                               ; preds = %58, %47
  %61 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 53
  store i32 -1, ptr %61, align 4, !tbaa !100
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @BKE_ptcache_add(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_add_effector_weights(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @sbFree(ptr noundef %0) local_unnamed_addr #0 {
  tail call fastcc void @free_softbody_intern(ptr noundef %0)
  %2 = getelementptr inbounds %struct.SoftBody, ptr %0, i64 0, i32 48
  tail call void @BKE_ptcache_free_list(ptr noundef nonnull %2) #13
  %3 = getelementptr inbounds %struct.SoftBody, ptr %0, i64 0, i32 47
  store ptr null, ptr %3, align 8, !tbaa !98
  %4 = getelementptr inbounds %struct.SoftBody, ptr %0, i64 0, i32 49
  %5 = load ptr, ptr %4, align 8, !tbaa !99
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %8(ptr noundef nonnull %5) #13
  br label %9

9:                                                ; preds = %7, %1
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %10(ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @free_softbody_intern(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %84, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.SoftBody, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !101
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %3
  %8 = load i32, ptr %0, align 8, !tbaa !102
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %7, %18
  %11 = phi ptr [ %20, %18 ], [ %5, %7 ]
  %12 = phi i32 [ %19, %18 ], [ %8, %7 ]
  %13 = getelementptr inbounds %struct.BodyPoint, ptr %11, i64 0, i32 14
  %14 = load ptr, ptr %13, align 8, !tbaa !103
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %10
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %17(ptr noundef nonnull %14) #13
  br label %18

18:                                               ; preds = %10, %16
  %19 = add nsw i32 %12, -1
  %20 = getelementptr inbounds %struct.BodyPoint, ptr %11, i64 1
  %21 = icmp sgt i32 %12, 1
  br i1 %21, label %10, label %22, !llvm.loop !105

22:                                               ; preds = %18, %7
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %24 = load ptr, ptr %4, align 8, !tbaa !101
  tail call void %23(ptr noundef %24) #13
  br label %25

25:                                               ; preds = %22, %3
  %26 = getelementptr inbounds %struct.SoftBody, ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !108
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %30(ptr noundef nonnull %27) #13
  br label %31

31:                                               ; preds = %29, %25
  %32 = getelementptr inbounds %struct.SoftBody, ptr %0, i64 0, i32 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %33 = load ptr, ptr %32, align 8, !tbaa !88
  %34 = icmp eq ptr %33, null
  br i1 %34, label %57, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %33, align 8, !tbaa !89
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  tail call void @BLI_ghash_free(ptr noundef nonnull %36, ptr noundef null, ptr noundef nonnull @ccd_mesh_free) #13
  %39 = load ptr, ptr %32, align 8, !tbaa !88
  store ptr null, ptr %39, align 8, !tbaa !89
  br label %40

40:                                               ; preds = %38, %35
  %41 = load ptr, ptr %32, align 8, !tbaa !88
  %42 = getelementptr inbounds %struct.SBScratch, ptr %41, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !92
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  %46 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %46(ptr noundef nonnull %43) #13
  br label %47

47:                                               ; preds = %45, %40
  %48 = load ptr, ptr %32, align 8, !tbaa !88
  %49 = getelementptr inbounds %struct.SBScratch, ptr %48, i64 0, i32 7, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !95
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %47
  %53 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %53(ptr noundef nonnull %50) #13
  br label %54

54:                                               ; preds = %52, %47
  %55 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %56 = load ptr, ptr %32, align 8, !tbaa !88
  tail call void %55(ptr noundef %56) #13
  store ptr null, ptr %32, align 8, !tbaa !88
  br label %57

57:                                               ; preds = %31, %54
  %58 = getelementptr inbounds %struct.SoftBody, ptr %0, i64 0, i32 31
  %59 = load i32, ptr %58, align 4, !tbaa !109
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %76

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.SoftBody, ptr %0, i64 0, i32 29
  br label %63

63:                                               ; preds = %61, %71
  %64 = phi i64 [ 0, %61 ], [ %72, %71 ]
  %65 = load ptr, ptr %62, align 8, !tbaa !110
  %66 = getelementptr inbounds ptr, ptr %65, i64 %64
  %67 = load ptr, ptr %66, align 8, !tbaa !34
  %68 = icmp eq ptr %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %63
  %70 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %70(ptr noundef nonnull %67) #13
  br label %71

71:                                               ; preds = %69, %63
  %72 = add nuw nsw i64 %64, 1
  %73 = load i32, ptr %58, align 4, !tbaa !109
  %74 = sext i32 %73 to i64
  %75 = icmp slt i64 %72, %74
  br i1 %75, label %63, label %76, !llvm.loop !111

76:                                               ; preds = %71, %57
  %77 = getelementptr inbounds %struct.SoftBody, ptr %0, i64 0, i32 31
  %78 = getelementptr inbounds %struct.SoftBody, ptr %0, i64 0, i32 29
  %79 = load ptr, ptr %78, align 8, !tbaa !110
  %80 = icmp eq ptr %79, null
  br i1 %80, label %83, label %81

81:                                               ; preds = %76
  %82 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %82(ptr noundef nonnull %79) #13
  br label %83

83:                                               ; preds = %76, %81
  store ptr null, ptr %78, align 8, !tbaa !110
  store i32 0, ptr %77, align 4, !tbaa !109
  br label %84

84:                                               ; preds = %83, %1
  ret void
}

declare void @BKE_ptcache_free_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @sbFreeSimulation(ptr noundef %0) local_unnamed_addr #0 {
  tail call fastcc void @free_softbody_intern(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @sbObjectToSoftbody(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 111
  %3 = load ptr, ptr %2, align 8, !tbaa !112
  tail call fastcc void @free_softbody_intern(ptr noundef %3)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @sbSetInterruptCallBack(ptr noundef %0) local_unnamed_addr #3 {
  store ptr %0, ptr @SB_localInterruptCallBack, align 8, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SB_estimate_transform(ptr noundef readonly %0, ptr noundef writeonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #13
  %7 = icmp eq ptr %0, null
  br i1 %7, label %92, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 111
  %10 = load ptr, ptr %9, align 8, !tbaa !112
  %11 = icmp eq ptr %10, null
  br i1 %11, label %92, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.SoftBody, ptr %10, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !101
  %15 = icmp eq ptr %14, null
  br i1 %15, label %92, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %18 = load i32, ptr %10, align 8, !tbaa !102
  %19 = mul nsw i32 %18, 3
  %20 = sext i32 %19 to i64
  %21 = shl nsw i64 %20, 2
  %22 = tail call ptr %17(i64 noundef %21, ptr noundef nonnull @.str.1) #13
  %23 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %24 = load i32, ptr %10, align 8, !tbaa !102
  %25 = mul nsw i32 %24, 3
  %26 = sext i32 %25 to i64
  %27 = shl nsw i64 %26, 2
  %28 = tail call ptr %23(i64 noundef %27, ptr noundef nonnull @.str.2) #13
  %29 = load i32, ptr %10, align 8, !tbaa !102
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %63

31:                                               ; preds = %16
  %32 = getelementptr inbounds %struct.SoftBody, ptr %10, i64 0, i32 44
  %33 = load ptr, ptr %32, align 8, !tbaa !88
  %34 = getelementptr inbounds %struct.SBScratch, ptr %33, i64 0, i32 7, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !95
  %36 = load ptr, ptr %13, align 8, !tbaa !101
  %37 = zext nneg i32 %29 to i64
  br label %38

38:                                               ; preds = %31, %38
  %39 = phi i64 [ 0, %31 ], [ %59, %38 ]
  %40 = phi ptr [ %36, %31 ], [ %60, %38 ]
  %41 = phi ptr [ %35, %31 ], [ %61, %38 ]
  %42 = getelementptr inbounds [3 x float], ptr %28, i64 %39
  %43 = load float, ptr %41, align 4, !tbaa !94
  store float %43, ptr %42, align 4, !tbaa !94
  %44 = getelementptr inbounds float, ptr %41, i64 1
  %45 = load float, ptr %44, align 4, !tbaa !94
  %46 = getelementptr inbounds float, ptr %42, i64 1
  store float %45, ptr %46, align 4, !tbaa !94
  %47 = getelementptr inbounds float, ptr %41, i64 2
  %48 = load float, ptr %47, align 4, !tbaa !94
  %49 = getelementptr inbounds float, ptr %42, i64 2
  store float %48, ptr %49, align 4, !tbaa !94
  %50 = getelementptr inbounds [3 x float], ptr %22, i64 %39
  %51 = getelementptr inbounds %struct.BodyPoint, ptr %40, i64 0, i32 3
  %52 = load float, ptr %51, align 4, !tbaa !94
  store float %52, ptr %50, align 4, !tbaa !94
  %53 = getelementptr inbounds %struct.BodyPoint, ptr %40, i64 0, i32 3, i64 1
  %54 = load float, ptr %53, align 4, !tbaa !94
  %55 = getelementptr inbounds float, ptr %50, i64 1
  store float %54, ptr %55, align 4, !tbaa !94
  %56 = getelementptr inbounds %struct.BodyPoint, ptr %40, i64 0, i32 3, i64 2
  %57 = load float, ptr %56, align 4, !tbaa !94
  %58 = getelementptr inbounds float, ptr %50, i64 2
  store float %57, ptr %58, align 4, !tbaa !94
  %59 = add nuw nsw i64 %39, 1
  %60 = getelementptr inbounds %struct.BodyPoint, ptr %40, i64 1
  %61 = getelementptr inbounds %struct.ReferenceVert, ptr %41, i64 1
  %62 = icmp eq i64 %59, %37
  br i1 %62, label %63, label %38, !llvm.loop !115

63:                                               ; preds = %38, %16
  call void @vcloud_estimate_transform(i32 noundef %29, ptr noundef %22, ptr noundef null, ptr noundef %28, ptr noundef null, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %2, ptr noundef %3) #13
  %64 = icmp eq ptr %1, null
  br i1 %64, label %73, label %65

65:                                               ; preds = %63
  %66 = load float, ptr %5, align 4, !tbaa !94
  store float %66, ptr %1, align 4, !tbaa !94
  %67 = getelementptr inbounds float, ptr %5, i64 1
  %68 = load float, ptr %67, align 4, !tbaa !94
  %69 = getelementptr inbounds float, ptr %1, i64 1
  store float %68, ptr %69, align 4, !tbaa !94
  %70 = getelementptr inbounds float, ptr %5, i64 2
  %71 = load float, ptr %70, align 4, !tbaa !94
  %72 = getelementptr inbounds float, ptr %1, i64 2
  store float %71, ptr %72, align 4, !tbaa !94
  br label %73

73:                                               ; preds = %65, %63
  %74 = getelementptr inbounds %struct.SoftBody, ptr %10, i64 0, i32 50
  %75 = load float, ptr %5, align 4, !tbaa !94
  store float %75, ptr %74, align 4, !tbaa !94
  %76 = getelementptr inbounds float, ptr %5, i64 1
  %77 = load float, ptr %76, align 4, !tbaa !94
  %78 = getelementptr inbounds %struct.SoftBody, ptr %10, i64 0, i32 50, i64 1
  store float %77, ptr %78, align 4, !tbaa !94
  %79 = getelementptr inbounds float, ptr %5, i64 2
  %80 = load float, ptr %79, align 4, !tbaa !94
  %81 = getelementptr inbounds %struct.SoftBody, ptr %10, i64 0, i32 50, i64 2
  store float %80, ptr %81, align 4, !tbaa !94
  %82 = icmp eq ptr %3, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %73
  %84 = getelementptr inbounds %struct.SoftBody, ptr %10, i64 0, i32 52
  call void @copy_m3_m3(ptr noundef nonnull %84, ptr noundef nonnull %3) #13
  br label %85

85:                                               ; preds = %83, %73
  %86 = icmp eq ptr %2, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %85
  %88 = getelementptr inbounds %struct.SoftBody, ptr %10, i64 0, i32 51
  call void @copy_m3_m3(ptr noundef nonnull %88, ptr noundef nonnull %2) #13
  br label %89

89:                                               ; preds = %87, %85
  %90 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %90(ptr noundef %22) #13
  %91 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %91(ptr noundef %28) #13
  br label %92

92:                                               ; preds = %12, %4, %8, %89
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #13
  ret void
}

declare void @vcloud_estimate_transform(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @copy_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @sbObjectStep(ptr noundef %0, ptr noundef %1, float noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x float], align 4
  %17 = alloca [3 x float], align 4
  %18 = alloca [3 x float], align 4
  %19 = alloca [3 x float], align 4
  %20 = alloca [3 x float], align 4
  %21 = alloca [3 x float], align 4
  %22 = alloca [3 x float], align 4
  %23 = alloca [3 x float], align 4
  %24 = alloca [3 x float], align 4
  %25 = alloca [3 x float], align 4
  %26 = alloca [3 x float], align 4
  %27 = alloca [3 x float], align 4
  %28 = alloca float, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.PTCacheID, align 8
  %31 = alloca float, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 111
  %35 = load ptr, ptr %34, align 8, !tbaa !112
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %30) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %31) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %32) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %33) #13
  %36 = getelementptr inbounds %struct.SoftBody, ptr %35, i64 0, i32 47
  %37 = load ptr, ptr %36, align 8, !tbaa !98
  %38 = fptosi float %2 to i32
  %39 = getelementptr inbounds %struct.PointCache, ptr %37, i64 0, i32 4
  %40 = load i32, ptr %39, align 8, !tbaa !116
  %41 = sub nsw i32 %38, %40
  call void @BKE_ptcache_id_from_softbody(ptr noundef nonnull %30, ptr noundef %1, ptr noundef %35) #13
  %42 = sitofp i32 %38 to float
  call void @BKE_ptcache_id_time(ptr noundef nonnull %30, ptr noundef %0, float noundef %42, ptr noundef nonnull %32, ptr noundef nonnull %33, ptr noundef nonnull %31) #13
  %43 = getelementptr inbounds %struct.SoftBody, ptr %35, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !101
  %45 = icmp eq ptr %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %5
  %47 = load i32, ptr %35, align 8, !tbaa !102
  %48 = icmp eq i32 %47, %4
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  call void @BKE_ptcache_invalidate(ptr noundef %37) #13
  br label %2767

50:                                               ; preds = %46, %5
  %51 = load i32, ptr %32, align 4, !tbaa !118
  %52 = icmp sgt i32 %51, %38
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  call void @BKE_ptcache_invalidate(ptr noundef %37) #13
  br label %2767

54:                                               ; preds = %50
  %55 = load i32, ptr %33, align 4, !tbaa !118
  %56 = call i32 @llvm.smin.i32(i32 %55, i32 %38)
  br i1 %45, label %79, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 104
  %59 = load i16, ptr %58, align 2, !tbaa !119
  %60 = and i16 %59, 4
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %1477, label %62

62:                                               ; preds = %57
  %63 = load ptr, ptr %34, align 8, !tbaa !112
  %64 = getelementptr inbounds %struct.SoftBody, ptr %63, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !108
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %1477

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %69 = load i16, ptr %68, align 8, !tbaa !120
  switch i16 %69, label %75 [
    i16 1, label %70
    i16 22, label %76
  ]

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %72 = load ptr, ptr %71, align 8, !tbaa !121
  %73 = getelementptr inbounds %struct.Mesh, ptr %72, i64 0, i32 27
  %74 = load i32, ptr %73, align 4, !tbaa !122
  br label %76

75:                                               ; preds = %67
  br label %76

76:                                               ; preds = %67, %70, %75
  %77 = phi i32 [ %74, %70 ], [ 0, %75 ], [ 1, %67 ]
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %1477, label %79

79:                                               ; preds = %76, %54
  %80 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %81 = load i16, ptr %80, align 8, !tbaa !120
  switch i16 %81, label %1232 [
    i16 1, label %82
    i16 22, label %499
    i16 2, label %979
    i16 3, label %979
  ]

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %84 = load ptr, ptr %83, align 8, !tbaa !121
  %85 = getelementptr inbounds %struct.Mesh, ptr %84, i64 0, i32 16
  %86 = load ptr, ptr %85, align 8, !tbaa !125
  call void @BKE_mesh_tessface_ensure(ptr noundef %84) #13
  %87 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 104
  %88 = load i16, ptr %87, align 2, !tbaa !119
  %89 = and i16 %88, 4
  %90 = icmp eq i16 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %82
  %92 = getelementptr inbounds %struct.Mesh, ptr %84, i64 0, i32 27
  %93 = load i32, ptr %92, align 4, !tbaa !122
  br label %94

94:                                               ; preds = %91, %82
  %95 = phi i32 [ %93, %91 ], [ 0, %82 ]
  %96 = getelementptr inbounds %struct.Mesh, ptr %84, i64 0, i32 26
  %97 = load i32, ptr %96, align 8, !tbaa !126
  call fastcc void @renew_softbody(ptr noundef %0, ptr noundef %1, i32 noundef %97, i32 noundef %95)
  %98 = load ptr, ptr %34, align 8, !tbaa !112
  %99 = load i32, ptr %96, align 8, !tbaa !126
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %255

101:                                              ; preds = %94
  %102 = getelementptr inbounds %struct.SoftBody, ptr %98, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !101
  %104 = getelementptr inbounds %struct.SoftBody, ptr %98, i64 0, i32 18
  %105 = getelementptr inbounds %struct.SoftBody, ptr %98, i64 0, i32 17
  %106 = getelementptr inbounds %struct.SoftBody, ptr %98, i64 0, i32 8
  %107 = getelementptr inbounds %struct.SoftBody, ptr %98, i64 0, i32 23
  br label %108

108:                                              ; preds = %101, %249
  %109 = phi i64 [ 0, %101 ], [ %250, %249 ]
  %110 = phi ptr [ %103, %101 ], [ %251, %249 ]
  %111 = load i16, ptr %87, align 2, !tbaa !119
  %112 = and i16 %111, 2
  %113 = icmp eq i16 %112, 0
  br i1 %113, label %161, label %114

114:                                              ; preds = %108
  %115 = load i16, ptr %104, align 4, !tbaa !127
  %116 = icmp eq i16 %115, 0
  br i1 %116, label %157, label %117

117:                                              ; preds = %114
  %118 = sext i16 %115 to i32
  %119 = add nsw i32 %118, -1
  %120 = getelementptr inbounds %struct.BodyPoint, ptr %110, i64 0, i32 6
  %121 = load i16, ptr %80, align 8, !tbaa !120
  switch i16 %121, label %136 [
    i16 1, label %122
    i16 22, label %129
  ]

122:                                              ; preds = %117
  %123 = load ptr, ptr %83, align 8, !tbaa !121
  %124 = getelementptr inbounds %struct.Mesh, ptr %123, i64 0, i32 17
  %125 = load ptr, ptr %124, align 8, !tbaa !128
  %126 = icmp eq ptr %125, null
  %127 = getelementptr inbounds %struct.MDeformVert, ptr %125, i64 %109
  %128 = select i1 %126, ptr null, ptr %127
  br label %136

129:                                              ; preds = %117
  %130 = load ptr, ptr %83, align 8, !tbaa !121
  %131 = getelementptr inbounds %struct.Lattice, ptr %130, i64 0, i32 24
  %132 = load ptr, ptr %131, align 8, !tbaa !129
  %133 = icmp eq ptr %132, null
  %134 = getelementptr inbounds %struct.MDeformVert, ptr %132, i64 %109
  %135 = select i1 %133, ptr null, ptr %134
  br label %136

136:                                              ; preds = %129, %122, %117
  %137 = phi ptr [ %128, %122 ], [ %135, %129 ], [ null, %117 ]
  %138 = icmp eq ptr %137, null
  br i1 %138, label %161, label %139

139:                                              ; preds = %136
  %140 = getelementptr inbounds %struct.MDeformVert, ptr %137, i64 0, i32 1
  %141 = load i32, ptr %140, align 8, !tbaa !131
  %142 = icmp sgt i32 %141, 0
  br i1 %142, label %143, label %161

143:                                              ; preds = %139
  %144 = load ptr, ptr %137, align 8, !tbaa !133
  %145 = zext nneg i32 %141 to i64
  br label %149

146:                                              ; preds = %149
  %147 = add nuw nsw i64 %150, 1
  %148 = icmp eq i64 %147, %145
  br i1 %148, label %161, label %149, !llvm.loop !134

149:                                              ; preds = %146, %143
  %150 = phi i64 [ 0, %143 ], [ %147, %146 ]
  %151 = getelementptr inbounds %struct.MDeformWeight, ptr %144, i64 %150
  %152 = load i32, ptr %151, align 4, !tbaa !135
  %153 = icmp eq i32 %152, %119
  br i1 %153, label %154, label %146

154:                                              ; preds = %149
  %155 = getelementptr inbounds %struct.MDeformWeight, ptr %144, i64 %150, i32 1
  %156 = load float, ptr %155, align 4, !tbaa !137
  store float %156, ptr %120, align 4, !tbaa !94
  br label %161

157:                                              ; preds = %114
  br i1 %113, label %161, label %158

158:                                              ; preds = %157
  %159 = load float, ptr %105, align 8, !tbaa !52
  %160 = getelementptr inbounds %struct.BodyPoint, ptr %110, i64 0, i32 6
  store float %159, ptr %160, align 8, !tbaa !138
  br label %161

161:                                              ; preds = %146, %108, %154, %139, %136, %158, %157
  %162 = load i8, ptr %106, align 8, !tbaa !139
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %205, label %164

164:                                              ; preds = %161
  %165 = call i32 @defgroup_name_index(ptr noundef %1, ptr noundef nonnull %106) #13
  %166 = icmp eq i32 %165, -1
  br i1 %166, label %205, label %167

167:                                              ; preds = %164
  %168 = getelementptr inbounds %struct.BodyPoint, ptr %110, i64 0, i32 20
  %169 = load i16, ptr %80, align 8, !tbaa !120
  switch i16 %169, label %184 [
    i16 1, label %170
    i16 22, label %177
  ]

170:                                              ; preds = %167
  %171 = load ptr, ptr %83, align 8, !tbaa !121
  %172 = getelementptr inbounds %struct.Mesh, ptr %171, i64 0, i32 17
  %173 = load ptr, ptr %172, align 8, !tbaa !128
  %174 = icmp eq ptr %173, null
  %175 = getelementptr inbounds %struct.MDeformVert, ptr %173, i64 %109
  %176 = select i1 %174, ptr null, ptr %175
  br label %184

177:                                              ; preds = %167
  %178 = load ptr, ptr %83, align 8, !tbaa !121
  %179 = getelementptr inbounds %struct.Lattice, ptr %178, i64 0, i32 24
  %180 = load ptr, ptr %179, align 8, !tbaa !129
  %181 = icmp eq ptr %180, null
  %182 = getelementptr inbounds %struct.MDeformVert, ptr %180, i64 %109
  %183 = select i1 %181, ptr null, ptr %182
  br label %184

184:                                              ; preds = %177, %170, %167
  %185 = phi ptr [ %176, %170 ], [ %183, %177 ], [ null, %167 ]
  %186 = icmp eq ptr %185, null
  br i1 %186, label %205, label %187

187:                                              ; preds = %184
  %188 = getelementptr inbounds %struct.MDeformVert, ptr %185, i64 0, i32 1
  %189 = load i32, ptr %188, align 8, !tbaa !131
  %190 = icmp sgt i32 %189, 0
  br i1 %190, label %191, label %205

191:                                              ; preds = %187
  %192 = load ptr, ptr %185, align 8, !tbaa !133
  %193 = zext nneg i32 %189 to i64
  br label %197

194:                                              ; preds = %197
  %195 = add nuw nsw i64 %198, 1
  %196 = icmp eq i64 %195, %193
  br i1 %196, label %205, label %197, !llvm.loop !134

197:                                              ; preds = %194, %191
  %198 = phi i64 [ 0, %191 ], [ %195, %194 ]
  %199 = getelementptr inbounds %struct.MDeformWeight, ptr %192, i64 %198
  %200 = load i32, ptr %199, align 4, !tbaa !135
  %201 = icmp eq i32 %200, %165
  br i1 %201, label %202, label %194

202:                                              ; preds = %197
  %203 = getelementptr inbounds %struct.MDeformWeight, ptr %192, i64 %198, i32 1
  %204 = load float, ptr %203, align 4, !tbaa !137
  store float %204, ptr %168, align 4, !tbaa !94
  br label %205

205:                                              ; preds = %194, %202, %187, %184, %164, %161
  %206 = getelementptr inbounds %struct.BodyPoint, ptr %110, i64 0, i32 21
  store float 1.000000e+00, ptr %206, align 8, !tbaa !140
  %207 = load i8, ptr %107, align 8, !tbaa !139
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %249, label %209

209:                                              ; preds = %205
  %210 = call i32 @defgroup_name_index(ptr noundef %1, ptr noundef nonnull %107) #13
  %211 = icmp eq i32 %210, -1
  br i1 %211, label %249, label %212

212:                                              ; preds = %209
  %213 = load i16, ptr %80, align 8, !tbaa !120
  switch i16 %213, label %228 [
    i16 1, label %214
    i16 22, label %221
  ]

214:                                              ; preds = %212
  %215 = load ptr, ptr %83, align 8, !tbaa !121
  %216 = getelementptr inbounds %struct.Mesh, ptr %215, i64 0, i32 17
  %217 = load ptr, ptr %216, align 8, !tbaa !128
  %218 = icmp eq ptr %217, null
  %219 = getelementptr inbounds %struct.MDeformVert, ptr %217, i64 %109
  %220 = select i1 %218, ptr null, ptr %219
  br label %228

221:                                              ; preds = %212
  %222 = load ptr, ptr %83, align 8, !tbaa !121
  %223 = getelementptr inbounds %struct.Lattice, ptr %222, i64 0, i32 24
  %224 = load ptr, ptr %223, align 8, !tbaa !129
  %225 = icmp eq ptr %224, null
  %226 = getelementptr inbounds %struct.MDeformVert, ptr %224, i64 %109
  %227 = select i1 %225, ptr null, ptr %226
  br label %228

228:                                              ; preds = %221, %214, %212
  %229 = phi ptr [ %220, %214 ], [ %227, %221 ], [ null, %212 ]
  %230 = icmp eq ptr %229, null
  br i1 %230, label %249, label %231

231:                                              ; preds = %228
  %232 = getelementptr inbounds %struct.MDeformVert, ptr %229, i64 0, i32 1
  %233 = load i32, ptr %232, align 8, !tbaa !131
  %234 = icmp sgt i32 %233, 0
  br i1 %234, label %235, label %249

235:                                              ; preds = %231
  %236 = load ptr, ptr %229, align 8, !tbaa !133
  %237 = zext nneg i32 %233 to i64
  br label %241

238:                                              ; preds = %241
  %239 = add nuw nsw i64 %242, 1
  %240 = icmp eq i64 %239, %237
  br i1 %240, label %249, label %241, !llvm.loop !134

241:                                              ; preds = %238, %235
  %242 = phi i64 [ 0, %235 ], [ %239, %238 ]
  %243 = getelementptr inbounds %struct.MDeformWeight, ptr %236, i64 %242
  %244 = load i32, ptr %243, align 4, !tbaa !135
  %245 = icmp eq i32 %244, %210
  br i1 %245, label %246, label %238

246:                                              ; preds = %241
  %247 = getelementptr inbounds %struct.MDeformWeight, ptr %236, i64 %242, i32 1
  %248 = load float, ptr %247, align 4, !tbaa !137
  store float %248, ptr %206, align 4, !tbaa !94
  br label %249

249:                                              ; preds = %238, %246, %231, %228, %209, %205
  %250 = add nuw nsw i64 %109, 1
  %251 = getelementptr inbounds %struct.BodyPoint, ptr %110, i64 1
  %252 = load i32, ptr %96, align 8, !tbaa !126
  %253 = sext i32 %252 to i64
  %254 = icmp slt i64 %250, %253
  br i1 %254, label %108, label %255, !llvm.loop !141

255:                                              ; preds = %249, %94
  %256 = load i16, ptr %87, align 2, !tbaa !119
  %257 = and i16 %256, 4
  %258 = icmp ne i16 %257, 0
  %259 = icmp ne ptr %86, null
  %260 = select i1 %258, i1 %259, i1 false
  br i1 %260, label %261, label %1233

261:                                              ; preds = %255
  %262 = getelementptr inbounds %struct.Mesh, ptr %84, i64 0, i32 27
  %263 = load i32, ptr %262, align 4, !tbaa !122
  %264 = icmp sgt i32 %263, 0
  br i1 %264, label %265, label %281

265:                                              ; preds = %261
  %266 = getelementptr inbounds %struct.SoftBody, ptr %98, i64 0, i32 3
  %267 = load ptr, ptr %266, align 8, !tbaa !108
  br label %268

268:                                              ; preds = %265, %268
  %269 = phi ptr [ %278, %268 ], [ %86, %265 ]
  %270 = phi i32 [ %277, %268 ], [ %263, %265 ]
  %271 = phi ptr [ %279, %268 ], [ %267, %265 ]
  %272 = load i32, ptr %269, align 4, !tbaa !142
  store i32 %272, ptr %271, align 4, !tbaa !144
  %273 = getelementptr inbounds %struct.MEdge, ptr %269, i64 0, i32 1
  %274 = load i32, ptr %273, align 4, !tbaa !146
  %275 = getelementptr inbounds %struct.BodySpring, ptr %271, i64 0, i32 1
  store i32 %274, ptr %275, align 4, !tbaa !147
  %276 = getelementptr inbounds %struct.BodySpring, ptr %271, i64 0, i32 6
  store i32 1, ptr %276, align 4, !tbaa !148
  %277 = add nsw i32 %270, -1
  %278 = getelementptr inbounds %struct.MEdge, ptr %269, i64 1
  %279 = getelementptr inbounds %struct.BodySpring, ptr %271, i64 1
  %280 = icmp sgt i32 %270, 1
  br i1 %280, label %268, label %281, !llvm.loop !149

281:                                              ; preds = %268, %261
  %282 = and i16 %256, 8
  %283 = icmp eq i16 %282, 0
  br i1 %283, label %373, label %284

284:                                              ; preds = %281
  %285 = load ptr, ptr %83, align 8, !tbaa !121
  %286 = getelementptr inbounds %struct.Mesh, ptr %285, i64 0, i32 12
  %287 = load ptr, ptr %286, align 8, !tbaa !150
  %288 = load ptr, ptr %34, align 8, !tbaa !112
  %289 = icmp eq ptr %288, null
  br i1 %289, label %373, label %290

290:                                              ; preds = %284
  %291 = icmp eq ptr %287, null
  br i1 %291, label %308, label %292

292:                                              ; preds = %290
  %293 = getelementptr inbounds %struct.Mesh, ptr %285, i64 0, i32 28
  %294 = load i32, ptr %293, align 8, !tbaa !151
  %295 = icmp sgt i32 %294, 0
  br i1 %295, label %296, label %308

296:                                              ; preds = %292, %296
  %297 = phi ptr [ %306, %296 ], [ %287, %292 ]
  %298 = phi i32 [ %304, %296 ], [ 0, %292 ]
  %299 = phi i32 [ %305, %296 ], [ %294, %292 ]
  %300 = getelementptr inbounds %struct.MFace, ptr %297, i64 0, i32 3
  %301 = load i32, ptr %300, align 4, !tbaa !152
  %302 = icmp ne i32 %301, 0
  %303 = zext i1 %302 to i32
  %304 = add nuw nsw i32 %298, %303
  %305 = add nsw i32 %299, -1
  %306 = getelementptr inbounds %struct.MFace, ptr %297, i64 1
  %307 = icmp sgt i32 %299, 1
  br i1 %307, label %296, label %308, !llvm.loop !154

308:                                              ; preds = %296, %292, %290
  %309 = phi i32 [ 0, %290 ], [ 0, %292 ], [ %304, %296 ]
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %373, label %311

311:                                              ; preds = %308
  %312 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %313 = getelementptr inbounds %struct.SoftBody, ptr %288, i64 0, i32 1
  %314 = load i32, ptr %313, align 4, !tbaa !155
  %315 = shl nsw i32 %309, 1
  %316 = add nsw i32 %314, %315
  %317 = sext i32 %316 to i64
  %318 = mul nsw i64 %317, 40
  %319 = call ptr %312(i64 noundef %318, ptr noundef nonnull @.str.5) #13
  %320 = load ptr, ptr %34, align 8, !tbaa !112
  %321 = getelementptr inbounds %struct.SoftBody, ptr %320, i64 0, i32 3
  %322 = load ptr, ptr %321, align 8, !tbaa !108
  %323 = getelementptr inbounds %struct.SoftBody, ptr %320, i64 0, i32 1
  %324 = load i32, ptr %323, align 4, !tbaa !155
  %325 = sext i32 %324 to i64
  %326 = mul nsw i64 %325, 40
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %319, ptr align 4 %322, i64 %326, i1 false)
  %327 = load ptr, ptr %34, align 8, !tbaa !112
  %328 = getelementptr inbounds %struct.SoftBody, ptr %327, i64 0, i32 3
  %329 = load ptr, ptr %328, align 8, !tbaa !108
  %330 = icmp eq ptr %329, null
  br i1 %330, label %333, label %331

331:                                              ; preds = %311
  %332 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %332(ptr noundef nonnull %329) #13
  br label %333

333:                                              ; preds = %331, %311
  %334 = load ptr, ptr %34, align 8, !tbaa !112
  %335 = getelementptr inbounds %struct.SoftBody, ptr %334, i64 0, i32 3
  store ptr %319, ptr %335, align 8, !tbaa !108
  br i1 %291, label %369, label %336

336:                                              ; preds = %333
  %337 = getelementptr inbounds %struct.Mesh, ptr %285, i64 0, i32 28
  %338 = load i32, ptr %337, align 8, !tbaa !151
  %339 = icmp sgt i32 %338, 0
  br i1 %339, label %340, label %369

340:                                              ; preds = %336
  %341 = getelementptr inbounds %struct.SoftBody, ptr %334, i64 0, i32 1
  %342 = load i32, ptr %341, align 4, !tbaa !155
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds %struct.BodySpring, ptr %319, i64 %343
  br label %345

345:                                              ; preds = %340, %364
  %346 = phi ptr [ %367, %364 ], [ %287, %340 ]
  %347 = phi i32 [ %366, %364 ], [ %338, %340 ]
  %348 = phi ptr [ %365, %364 ], [ %344, %340 ]
  %349 = getelementptr inbounds %struct.MFace, ptr %346, i64 0, i32 3
  %350 = load i32, ptr %349, align 4, !tbaa !152
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %364, label %352

352:                                              ; preds = %345
  %353 = load i32, ptr %346, align 4, !tbaa !156
  store i32 %353, ptr %348, align 4, !tbaa !144
  %354 = getelementptr inbounds %struct.MFace, ptr %346, i64 0, i32 2
  %355 = load i32, ptr %354, align 4, !tbaa !157
  %356 = getelementptr inbounds %struct.BodySpring, ptr %348, i64 0, i32 1
  store i32 %355, ptr %356, align 4, !tbaa !147
  %357 = getelementptr inbounds %struct.BodySpring, ptr %348, i64 0, i32 6
  store i32 3, ptr %357, align 4, !tbaa !148
  %358 = getelementptr inbounds %struct.BodySpring, ptr %348, i64 1
  %359 = getelementptr inbounds %struct.MFace, ptr %346, i64 0, i32 1
  %360 = load i32, ptr %359, align 4, !tbaa !158
  store i32 %360, ptr %358, align 4, !tbaa !144
  %361 = getelementptr inbounds %struct.BodySpring, ptr %348, i64 1, i32 1
  store i32 %350, ptr %361, align 4, !tbaa !147
  %362 = getelementptr inbounds %struct.BodySpring, ptr %348, i64 1, i32 6
  store i32 3, ptr %362, align 4, !tbaa !148
  %363 = getelementptr inbounds %struct.BodySpring, ptr %348, i64 2
  br label %364

364:                                              ; preds = %352, %345
  %365 = phi ptr [ %363, %352 ], [ %348, %345 ]
  %366 = add nsw i32 %347, -1
  %367 = getelementptr inbounds %struct.MFace, ptr %346, i64 1
  %368 = icmp sgt i32 %347, 1
  br i1 %368, label %345, label %369, !llvm.loop !159

369:                                              ; preds = %364, %336, %333
  %370 = getelementptr inbounds %struct.SoftBody, ptr %334, i64 0, i32 1
  %371 = load i32, ptr %370, align 4, !tbaa !155
  %372 = add nsw i32 %371, %315
  store i32 %372, ptr %370, align 4, !tbaa !155
  br label %373

373:                                              ; preds = %369, %308, %284, %281
  call fastcc void @build_bps_springlist(ptr noundef %1)
  %374 = getelementptr inbounds %struct.SoftBody, ptr %98, i64 0, i32 32
  %375 = load float, ptr %374, align 8, !tbaa !160
  %376 = fcmp ogt float %375, 0x3E7AD7F2A0000000
  br i1 %376, label %377, label %411

377:                                              ; preds = %373
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %29) #13
  store i32 0, ptr %29, align 4, !tbaa !118
  call fastcc void @add_2nd_order_roller(ptr noundef %1, ptr noundef nonnull %29, i32 noundef 0)
  %378 = load i32, ptr %29, align 4, !tbaa !118
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %410, label %380

380:                                              ; preds = %377
  %381 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %382 = load ptr, ptr %34, align 8, !tbaa !112
  %383 = getelementptr inbounds %struct.SoftBody, ptr %382, i64 0, i32 1
  %384 = load i32, ptr %383, align 4, !tbaa !155
  %385 = add nsw i32 %384, %378
  %386 = sext i32 %385 to i64
  %387 = mul nsw i64 %386, 40
  %388 = call ptr %381(i64 noundef %387, ptr noundef nonnull @.str.5) #13
  %389 = load ptr, ptr %34, align 8, !tbaa !112
  %390 = getelementptr inbounds %struct.SoftBody, ptr %389, i64 0, i32 3
  %391 = load ptr, ptr %390, align 8, !tbaa !108
  %392 = getelementptr inbounds %struct.SoftBody, ptr %389, i64 0, i32 1
  %393 = load i32, ptr %392, align 4, !tbaa !155
  %394 = sext i32 %393 to i64
  %395 = mul nsw i64 %394, 40
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %388, ptr align 4 %391, i64 %395, i1 false)
  %396 = load ptr, ptr %34, align 8, !tbaa !112
  %397 = getelementptr inbounds %struct.SoftBody, ptr %396, i64 0, i32 3
  %398 = load ptr, ptr %397, align 8, !tbaa !108
  %399 = icmp eq ptr %398, null
  br i1 %399, label %402, label %400

400:                                              ; preds = %380
  %401 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %401(ptr noundef nonnull %398) #13
  br label %402

402:                                              ; preds = %400, %380
  %403 = load ptr, ptr %34, align 8, !tbaa !112
  %404 = getelementptr inbounds %struct.SoftBody, ptr %403, i64 0, i32 3
  store ptr %388, ptr %404, align 8, !tbaa !108
  call fastcc void @add_2nd_order_roller(ptr noundef %1, ptr noundef nonnull %29, i32 noundef 1)
  %405 = load i32, ptr %29, align 4, !tbaa !118
  %406 = load ptr, ptr %34, align 8, !tbaa !112
  %407 = getelementptr inbounds %struct.SoftBody, ptr %406, i64 0, i32 1
  %408 = load i32, ptr %407, align 4, !tbaa !155
  %409 = add nsw i32 %408, %405
  store i32 %409, ptr %407, align 4, !tbaa !155
  br label %410

410:                                              ; preds = %402, %377
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %29) #13
  call fastcc void @build_bps_springlist(ptr noundef %1)
  br label %411

411:                                              ; preds = %410, %373
  %412 = load ptr, ptr %83, align 8, !tbaa !121
  %413 = load ptr, ptr %34, align 8, !tbaa !112
  %414 = icmp ne ptr %412, null
  %415 = icmp ne ptr %413, null
  %416 = select i1 %414, i1 %415, i1 false
  br i1 %416, label %417, label %494

417:                                              ; preds = %411
  %418 = getelementptr inbounds %struct.Mesh, ptr %412, i64 0, i32 26
  %419 = load i32, ptr %418, align 8, !tbaa !126
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %446, label %421

421:                                              ; preds = %417
  %422 = load i32, ptr %418, align 8, !tbaa !126
  %423 = icmp sgt i32 %422, 0
  br i1 %423, label %424, label %446

424:                                              ; preds = %421
  %425 = getelementptr inbounds %struct.SoftBody, ptr %413, i64 0, i32 2
  %426 = load ptr, ptr %425, align 8, !tbaa !101
  %427 = getelementptr inbounds %struct.Mesh, ptr %412, i64 0, i32 15
  %428 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  br label %429

429:                                              ; preds = %424, %429
  %430 = phi i64 [ 0, %424 ], [ %441, %429 ]
  %431 = phi ptr [ %426, %424 ], [ %442, %429 ]
  %432 = load ptr, ptr %427, align 8, !tbaa !161
  %433 = getelementptr inbounds %struct.MVert, ptr %432, i64 %430
  %434 = load float, ptr %433, align 4, !tbaa !94
  store float %434, ptr %431, align 4, !tbaa !94
  %435 = getelementptr inbounds float, ptr %433, i64 1
  %436 = load float, ptr %435, align 4, !tbaa !94
  %437 = getelementptr inbounds float, ptr %431, i64 1
  store float %436, ptr %437, align 4, !tbaa !94
  %438 = getelementptr inbounds float, ptr %433, i64 2
  %439 = load float, ptr %438, align 4, !tbaa !94
  %440 = getelementptr inbounds float, ptr %431, i64 2
  store float %439, ptr %440, align 4, !tbaa !94
  call void @mul_m4_v3(ptr noundef nonnull %428, ptr noundef nonnull %431) #13
  %441 = add nuw nsw i64 %430, 1
  %442 = getelementptr inbounds %struct.BodyPoint, ptr %431, i64 1
  %443 = load i32, ptr %418, align 8, !tbaa !126
  %444 = sext i32 %443 to i64
  %445 = icmp slt i64 %441, %444
  br i1 %445, label %429, label %446, !llvm.loop !162

446:                                              ; preds = %429, %421, %417
  %447 = getelementptr inbounds %struct.SoftBody, ptr %413, i64 0, i32 43
  %448 = load i16, ptr %447, align 2, !tbaa !163
  %449 = icmp eq i16 %448, 0
  %450 = sitofp i16 %448 to float
  %451 = fdiv float %450, 1.000000e+02
  %452 = select i1 %449, float 1.000000e+00, float %451
  %453 = getelementptr inbounds %struct.SoftBody, ptr %413, i64 0, i32 1
  %454 = load i32, ptr %453, align 4, !tbaa !155
  %455 = icmp sgt i32 %454, 0
  br i1 %455, label %456, label %494

456:                                              ; preds = %446
  %457 = getelementptr inbounds %struct.SoftBody, ptr %413, i64 0, i32 3
  %458 = getelementptr inbounds %struct.SoftBody, ptr %413, i64 0, i32 2
  br label %459

459:                                              ; preds = %456, %459
  %460 = phi i64 [ 0, %456 ], [ %490, %459 ]
  %461 = load ptr, ptr %457, align 8, !tbaa !108
  %462 = getelementptr inbounds %struct.BodySpring, ptr %461, i64 %460
  %463 = load ptr, ptr %458, align 8, !tbaa !101
  %464 = load i32, ptr %462, align 4, !tbaa !144
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds %struct.BodyPoint, ptr %463, i64 %465
  %467 = getelementptr inbounds %struct.BodySpring, ptr %461, i64 %460, i32 1
  %468 = load i32, ptr %467, align 4, !tbaa !147
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds %struct.BodyPoint, ptr %463, i64 %469
  %471 = load float, ptr %470, align 4, !tbaa !94
  %472 = load float, ptr %466, align 4, !tbaa !94
  %473 = fsub float %471, %472
  %474 = getelementptr inbounds float, ptr %470, i64 1
  %475 = load float, ptr %474, align 4, !tbaa !94
  %476 = getelementptr inbounds float, ptr %466, i64 1
  %477 = load float, ptr %476, align 4, !tbaa !94
  %478 = fsub float %475, %477
  %479 = getelementptr inbounds float, ptr %470, i64 2
  %480 = load float, ptr %479, align 4, !tbaa !94
  %481 = getelementptr inbounds float, ptr %466, i64 2
  %482 = load float, ptr %481, align 4, !tbaa !94
  %483 = fsub float %480, %482
  %484 = fmul float %478, %478
  %485 = call float @llvm.fmuladd.f32(float %473, float %473, float %484)
  %486 = call float @llvm.fmuladd.f32(float %483, float %483, float %485)
  %487 = call float @sqrtf(float noundef %486) #13
  %488 = fmul float %452, %487
  %489 = getelementptr inbounds %struct.BodySpring, ptr %461, i64 %460, i32 2
  store float %488, ptr %489, align 4, !tbaa !164
  %490 = add nuw nsw i64 %460, 1
  %491 = load i32, ptr %453, align 4, !tbaa !155
  %492 = sext i32 %491 to i64
  %493 = icmp slt i64 %490, %492
  br i1 %493, label %459, label %494, !llvm.loop !165

494:                                              ; preds = %459, %446, %411
  %495 = load i16, ptr %87, align 2, !tbaa !119
  %496 = and i16 %495, 512
  %497 = icmp eq i16 %496, 0
  br i1 %497, label %1233, label %498

498:                                              ; preds = %494
  call fastcc void @calculate_collision_balls(ptr noundef %1)
  br label %1233

499:                                              ; preds = %79
  %500 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %501 = load ptr, ptr %500, align 8, !tbaa !121
  %502 = getelementptr inbounds %struct.Lattice, ptr %501, i64 0, i32 2
  %503 = load i16, ptr %502, align 8, !tbaa !166
  %504 = sext i16 %503 to i32
  %505 = getelementptr inbounds %struct.Lattice, ptr %501, i64 0, i32 3
  %506 = load i16, ptr %505, align 2, !tbaa !167
  %507 = sext i16 %506 to i32
  %508 = mul nsw i32 %507, %504
  %509 = getelementptr inbounds %struct.Lattice, ptr %501, i64 0, i32 4
  %510 = load i16, ptr %509, align 4, !tbaa !168
  %511 = sext i16 %510 to i32
  %512 = mul i32 %508, %511
  %513 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 104
  %514 = load i16, ptr %513, align 2, !tbaa !119
  %515 = zext i16 %514 to i32
  %516 = and i32 %515, 4
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %535, label %518

518:                                              ; preds = %499
  %519 = add nsw i32 %504, -1
  %520 = mul nsw i32 %519, %507
  %521 = add nsw i32 %507, -1
  %522 = mul nsw i32 %521, %504
  %523 = add nsw i32 %522, %520
  %524 = mul nsw i32 %523, %511
  %525 = add nsw i32 %511, -1
  %526 = mul nsw i32 %525, %508
  %527 = add nsw i32 %524, %526
  %528 = and i32 %515, 8
  %529 = icmp eq i32 %528, 0
  br i1 %529, label %535, label %530

530:                                              ; preds = %518
  %531 = shl nsw i32 %519, 2
  %532 = mul nsw i32 %531, %521
  %533 = mul nsw i32 %532, %525
  %534 = add nsw i32 %527, %533
  br label %535

535:                                              ; preds = %530, %518, %499
  %536 = phi i32 [ %534, %530 ], [ %527, %518 ], [ 0, %499 ]
  call fastcc void @renew_softbody(ptr noundef %0, ptr noundef %1, i32 noundef %512, i32 noundef %536)
  %537 = load ptr, ptr %34, align 8, !tbaa !112
  %538 = icmp sgt i32 %512, 0
  br i1 %538, label %539, label %602

539:                                              ; preds = %535
  %540 = getelementptr inbounds %struct.SoftBody, ptr %537, i64 0, i32 2
  %541 = load ptr, ptr %540, align 8, !tbaa !101
  %542 = load i16, ptr %513, align 2, !tbaa !119
  %543 = and i16 %542, 2
  %544 = icmp eq i16 %543, 0
  %545 = getelementptr inbounds %struct.SoftBody, ptr %537, i64 0, i32 18
  %546 = getelementptr inbounds %struct.SoftBody, ptr %537, i64 0, i32 17
  %547 = zext nneg i32 %512 to i64
  br label %548

548:                                              ; preds = %539, %598
  %549 = phi i64 [ 0, %539 ], [ %599, %598 ]
  %550 = phi ptr [ %541, %539 ], [ %600, %598 ]
  br i1 %544, label %598, label %551

551:                                              ; preds = %548
  %552 = load i16, ptr %545, align 4, !tbaa !127
  %553 = icmp eq i16 %552, 0
  br i1 %553, label %594, label %554

554:                                              ; preds = %551
  %555 = add i16 %552, -1
  %556 = sext i16 %555 to i32
  %557 = getelementptr inbounds %struct.BodyPoint, ptr %550, i64 0, i32 6
  %558 = load i16, ptr %80, align 8, !tbaa !120
  switch i16 %558, label %573 [
    i16 1, label %559
    i16 22, label %566
  ]

559:                                              ; preds = %554
  %560 = load ptr, ptr %500, align 8, !tbaa !121
  %561 = getelementptr inbounds %struct.Mesh, ptr %560, i64 0, i32 17
  %562 = load ptr, ptr %561, align 8, !tbaa !128
  %563 = icmp eq ptr %562, null
  %564 = getelementptr inbounds %struct.MDeformVert, ptr %562, i64 %549
  %565 = select i1 %563, ptr null, ptr %564
  br label %573

566:                                              ; preds = %554
  %567 = load ptr, ptr %500, align 8, !tbaa !121
  %568 = getelementptr inbounds %struct.Lattice, ptr %567, i64 0, i32 24
  %569 = load ptr, ptr %568, align 8, !tbaa !129
  %570 = icmp eq ptr %569, null
  %571 = getelementptr inbounds %struct.MDeformVert, ptr %569, i64 %549
  %572 = select i1 %570, ptr null, ptr %571
  br label %573

573:                                              ; preds = %566, %559, %554
  %574 = phi ptr [ %565, %559 ], [ %572, %566 ], [ null, %554 ]
  %575 = icmp eq ptr %574, null
  br i1 %575, label %598, label %576

576:                                              ; preds = %573
  %577 = getelementptr inbounds %struct.MDeformVert, ptr %574, i64 0, i32 1
  %578 = load i32, ptr %577, align 8, !tbaa !131
  %579 = icmp sgt i32 %578, 0
  br i1 %579, label %580, label %598

580:                                              ; preds = %576
  %581 = load ptr, ptr %574, align 8, !tbaa !133
  %582 = zext nneg i32 %578 to i64
  br label %586

583:                                              ; preds = %586
  %584 = add nuw nsw i64 %587, 1
  %585 = icmp eq i64 %584, %582
  br i1 %585, label %598, label %586, !llvm.loop !134

586:                                              ; preds = %583, %580
  %587 = phi i64 [ 0, %580 ], [ %584, %583 ]
  %588 = getelementptr inbounds %struct.MDeformWeight, ptr %581, i64 %587
  %589 = load i32, ptr %588, align 4, !tbaa !135
  %590 = icmp eq i32 %589, %556
  br i1 %590, label %591, label %583

591:                                              ; preds = %586
  %592 = getelementptr inbounds %struct.MDeformWeight, ptr %581, i64 %587, i32 1
  %593 = load float, ptr %592, align 4, !tbaa !137
  store float %593, ptr %557, align 4, !tbaa !94
  br label %598

594:                                              ; preds = %551
  br i1 %544, label %598, label %595

595:                                              ; preds = %594
  %596 = load float, ptr %546, align 8, !tbaa !52
  %597 = getelementptr inbounds %struct.BodyPoint, ptr %550, i64 0, i32 6
  store float %596, ptr %597, align 8, !tbaa !138
  br label %598

598:                                              ; preds = %583, %548, %591, %576, %573, %595, %594
  %599 = add nuw nsw i64 %549, 1
  %600 = getelementptr inbounds %struct.BodyPoint, ptr %550, i64 1
  %601 = icmp eq i64 %599, %547
  br i1 %601, label %602, label %548, !llvm.loop !169

602:                                              ; preds = %598, %535
  %603 = load i16, ptr %513, align 2, !tbaa !119
  %604 = zext i16 %603 to i32
  %605 = and i32 %604, 4
  %606 = icmp eq i32 %605, 0
  br i1 %606, label %1233, label %607

607:                                              ; preds = %602
  %608 = load i16, ptr %502, align 8, !tbaa !166
  %609 = sext i16 %608 to i32
  %610 = load i16, ptr %505, align 2, !tbaa !167
  %611 = sext i16 %610 to i32
  %612 = mul nsw i32 %611, %609
  %613 = load i16, ptr %509, align 4, !tbaa !168
  %614 = icmp sgt i16 %613, 0
  br i1 %614, label %615, label %978

615:                                              ; preds = %607
  %616 = getelementptr inbounds %struct.Lattice, ptr %501, i64 0, i32 21
  %617 = load ptr, ptr %616, align 8, !tbaa !170
  %618 = and i32 %604, 8
  %619 = getelementptr inbounds %struct.SoftBody, ptr %537, i64 0, i32 3
  %620 = load ptr, ptr %619, align 8, !tbaa !108
  %621 = sext i32 %612 to i64
  %622 = sub nsw i64 0, %621
  %623 = getelementptr inbounds float, ptr %26, i64 1
  %624 = getelementptr inbounds float, ptr %26, i64 2
  %625 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %626 = getelementptr inbounds float, ptr %27, i64 1
  %627 = getelementptr inbounds float, ptr %27, i64 2
  %628 = sext i16 %608 to i64
  %629 = sub nsw i64 0, %628
  %630 = getelementptr inbounds float, ptr %24, i64 1
  %631 = getelementptr inbounds float, ptr %24, i64 2
  %632 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %633 = getelementptr inbounds float, ptr %25, i64 1
  %634 = getelementptr inbounds float, ptr %25, i64 2
  %635 = getelementptr inbounds float, ptr %22, i64 1
  %636 = getelementptr inbounds float, ptr %22, i64 2
  %637 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %638 = getelementptr inbounds float, ptr %23, i64 1
  %639 = getelementptr inbounds float, ptr %23, i64 2
  %640 = icmp eq i32 %618, 0
  %641 = add nsw i32 %612, %609
  %642 = xor i32 %641, -1
  %643 = sext i32 %612 to i64
  %644 = sub nsw i64 0, %643
  %645 = sext i16 %608 to i64
  %646 = sub nsw i64 0, %645
  %647 = getelementptr inbounds float, ptr %20, i64 1
  %648 = getelementptr inbounds float, ptr %20, i64 2
  %649 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %650 = getelementptr inbounds float, ptr %21, i64 1
  %651 = getelementptr inbounds float, ptr %21, i64 2
  %652 = xor i32 %612, -1
  %653 = add nsw i32 %652, %609
  %654 = sext i32 %612 to i64
  %655 = sub nsw i64 0, %654
  %656 = sext i16 %608 to i64
  %657 = getelementptr inbounds float, ptr %18, i64 1
  %658 = getelementptr inbounds float, ptr %18, i64 2
  %659 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %660 = getelementptr inbounds float, ptr %19, i64 1
  %661 = getelementptr inbounds float, ptr %19, i64 2
  %662 = xor i32 %609, -1
  %663 = add nsw i32 %612, %662
  %664 = sext i32 %612 to i64
  %665 = sext i16 %608 to i64
  %666 = sub nsw i64 0, %665
  %667 = getelementptr inbounds float, ptr %16, i64 1
  %668 = getelementptr inbounds float, ptr %16, i64 2
  %669 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %670 = getelementptr inbounds float, ptr %17, i64 1
  %671 = getelementptr inbounds float, ptr %17, i64 2
  %672 = add nsw i32 %609, -1
  %673 = add nsw i32 %672, %612
  %674 = sext i32 %612 to i64
  %675 = sext i16 %608 to i64
  %676 = getelementptr inbounds float, ptr %14, i64 1
  %677 = getelementptr inbounds float, ptr %14, i64 2
  %678 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %679 = getelementptr inbounds float, ptr %15, i64 1
  %680 = getelementptr inbounds float, ptr %15, i64 2
  br label %681

681:                                              ; preds = %615, %970
  %682 = phi i32 [ 0, %615 ], [ %973, %970 ]
  %683 = phi ptr [ %620, %615 ], [ %972, %970 ]
  %684 = phi ptr [ %617, %615 ], [ %971, %970 ]
  %685 = phi i32 [ 0, %615 ], [ %974, %970 ]
  %686 = load i16, ptr %505, align 2, !tbaa !167
  %687 = icmp sgt i16 %686, 0
  br i1 %687, label %688, label %970

688:                                              ; preds = %681
  %689 = icmp eq i32 %685, 0
  br label %690

690:                                              ; preds = %688, %962
  %691 = phi i32 [ %682, %688 ], [ %965, %962 ]
  %692 = phi ptr [ %683, %688 ], [ %964, %962 ]
  %693 = phi ptr [ %684, %688 ], [ %963, %962 ]
  %694 = phi i32 [ 0, %688 ], [ %966, %962 ]
  %695 = load i16, ptr %502, align 8, !tbaa !166
  %696 = icmp sgt i16 %695, 0
  br i1 %696, label %697, label %962

697:                                              ; preds = %690
  %698 = icmp ne i32 %694, 0
  br label %699

699:                                              ; preds = %697, %954
  %700 = phi i32 [ 0, %697 ], [ %701, %954 ]
  %701 = phi i32 [ %691, %697 ], [ %958, %954 ]
  %702 = phi ptr [ %692, %697 ], [ %955, %954 ]
  %703 = phi ptr [ %693, %697 ], [ %957, %954 ]
  %704 = phi i32 [ 0, %697 ], [ %956, %954 ]
  %705 = phi ptr [ null, %697 ], [ %703, %954 ]
  br i1 %689, label %736, label %706

706:                                              ; preds = %699
  store i32 %701, ptr %702, align 4, !tbaa !144
  %707 = sub nsw i32 %701, %612
  %708 = getelementptr inbounds %struct.BodySpring, ptr %702, i64 0, i32 1
  store i32 %707, ptr %708, align 4, !tbaa !147
  %709 = getelementptr inbounds %struct.BodySpring, ptr %702, i64 0, i32 6
  store i32 1, ptr %709, align 4, !tbaa !148
  %710 = getelementptr inbounds %struct.BPoint, ptr %703, i64 %622
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %26) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %27) #13
  %711 = load float, ptr %710, align 4, !tbaa !94
  store float %711, ptr %26, align 4, !tbaa !94
  %712 = getelementptr inbounds float, ptr %710, i64 1
  %713 = load float, ptr %712, align 4, !tbaa !94
  store float %713, ptr %623, align 4, !tbaa !94
  %714 = getelementptr inbounds float, ptr %710, i64 2
  %715 = load float, ptr %714, align 4, !tbaa !94
  store float %715, ptr %624, align 4, !tbaa !94
  call void @mul_m4_v3(ptr noundef nonnull %625, ptr noundef nonnull %26) #13
  %716 = load float, ptr %703, align 4, !tbaa !94
  store float %716, ptr %27, align 4, !tbaa !94
  %717 = getelementptr inbounds float, ptr %703, i64 1
  %718 = load float, ptr %717, align 4, !tbaa !94
  store float %718, ptr %626, align 4, !tbaa !94
  %719 = getelementptr inbounds float, ptr %703, i64 2
  %720 = load float, ptr %719, align 4, !tbaa !94
  store float %720, ptr %627, align 4, !tbaa !94
  call void @mul_m4_v3(ptr noundef nonnull %625, ptr noundef nonnull %27) #13
  %721 = load float, ptr %27, align 4, !tbaa !94
  %722 = load float, ptr %26, align 4, !tbaa !94
  %723 = fsub float %721, %722
  %724 = load float, ptr %626, align 4, !tbaa !94
  %725 = load float, ptr %623, align 4, !tbaa !94
  %726 = fsub float %724, %725
  %727 = load float, ptr %627, align 4, !tbaa !94
  %728 = load float, ptr %624, align 4, !tbaa !94
  %729 = fsub float %727, %728
  %730 = fmul float %726, %726
  %731 = call float @llvm.fmuladd.f32(float %723, float %723, float %730)
  %732 = call float @llvm.fmuladd.f32(float %729, float %729, float %731)
  %733 = call float @sqrtf(float noundef %732) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %27) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %26) #13
  %734 = getelementptr inbounds %struct.BodySpring, ptr %702, i64 0, i32 2
  store float %733, ptr %734, align 4, !tbaa !164
  %735 = getelementptr inbounds %struct.BodySpring, ptr %702, i64 1
  br label %736

736:                                              ; preds = %706, %699
  %737 = phi ptr [ %735, %706 ], [ %702, %699 ]
  br i1 %698, label %738, label %768

738:                                              ; preds = %736
  store i32 %701, ptr %737, align 4, !tbaa !144
  %739 = sub nsw i32 %701, %609
  %740 = getelementptr inbounds %struct.BodySpring, ptr %737, i64 0, i32 1
  store i32 %739, ptr %740, align 4, !tbaa !147
  %741 = getelementptr inbounds %struct.BodySpring, ptr %737, i64 0, i32 6
  store i32 1, ptr %741, align 4, !tbaa !148
  %742 = getelementptr inbounds %struct.BPoint, ptr %703, i64 %629
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %24) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %25) #13
  %743 = load float, ptr %742, align 4, !tbaa !94
  store float %743, ptr %24, align 4, !tbaa !94
  %744 = getelementptr inbounds float, ptr %742, i64 1
  %745 = load float, ptr %744, align 4, !tbaa !94
  store float %745, ptr %630, align 4, !tbaa !94
  %746 = getelementptr inbounds float, ptr %742, i64 2
  %747 = load float, ptr %746, align 4, !tbaa !94
  store float %747, ptr %631, align 4, !tbaa !94
  call void @mul_m4_v3(ptr noundef nonnull %632, ptr noundef nonnull %24) #13
  %748 = load float, ptr %703, align 4, !tbaa !94
  store float %748, ptr %25, align 4, !tbaa !94
  %749 = getelementptr inbounds float, ptr %703, i64 1
  %750 = load float, ptr %749, align 4, !tbaa !94
  store float %750, ptr %633, align 4, !tbaa !94
  %751 = getelementptr inbounds float, ptr %703, i64 2
  %752 = load float, ptr %751, align 4, !tbaa !94
  store float %752, ptr %634, align 4, !tbaa !94
  call void @mul_m4_v3(ptr noundef nonnull %632, ptr noundef nonnull %25) #13
  %753 = load float, ptr %25, align 4, !tbaa !94
  %754 = load float, ptr %24, align 4, !tbaa !94
  %755 = fsub float %753, %754
  %756 = load float, ptr %633, align 4, !tbaa !94
  %757 = load float, ptr %630, align 4, !tbaa !94
  %758 = fsub float %756, %757
  %759 = load float, ptr %634, align 4, !tbaa !94
  %760 = load float, ptr %631, align 4, !tbaa !94
  %761 = fsub float %759, %760
  %762 = fmul float %758, %758
  %763 = call float @llvm.fmuladd.f32(float %755, float %755, float %762)
  %764 = call float @llvm.fmuladd.f32(float %761, float %761, float %763)
  %765 = call float @sqrtf(float noundef %764) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %25) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %24) #13
  %766 = getelementptr inbounds %struct.BodySpring, ptr %737, i64 0, i32 2
  store float %765, ptr %766, align 4, !tbaa !164
  %767 = getelementptr inbounds %struct.BodySpring, ptr %737, i64 1
  br label %768

768:                                              ; preds = %738, %736
  %769 = phi ptr [ %767, %738 ], [ %737, %736 ]
  %770 = icmp ne i32 %704, 0
  br i1 %770, label %771, label %799

771:                                              ; preds = %768
  store i32 %700, ptr %769, align 4, !tbaa !144
  %772 = getelementptr inbounds %struct.BodySpring, ptr %769, i64 0, i32 1
  store i32 %701, ptr %772, align 4, !tbaa !147
  %773 = getelementptr inbounds %struct.BodySpring, ptr %769, i64 0, i32 6
  store i32 1, ptr %773, align 4, !tbaa !148
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %22) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #13
  %774 = load float, ptr %705, align 4, !tbaa !94
  store float %774, ptr %22, align 4, !tbaa !94
  %775 = getelementptr inbounds float, ptr %705, i64 1
  %776 = load float, ptr %775, align 4, !tbaa !94
  store float %776, ptr %635, align 4, !tbaa !94
  %777 = getelementptr inbounds float, ptr %705, i64 2
  %778 = load float, ptr %777, align 4, !tbaa !94
  store float %778, ptr %636, align 4, !tbaa !94
  call void @mul_m4_v3(ptr noundef nonnull %637, ptr noundef nonnull %22) #13
  %779 = load float, ptr %703, align 4, !tbaa !94
  store float %779, ptr %23, align 4, !tbaa !94
  %780 = getelementptr inbounds float, ptr %703, i64 1
  %781 = load float, ptr %780, align 4, !tbaa !94
  store float %781, ptr %638, align 4, !tbaa !94
  %782 = getelementptr inbounds float, ptr %703, i64 2
  %783 = load float, ptr %782, align 4, !tbaa !94
  store float %783, ptr %639, align 4, !tbaa !94
  call void @mul_m4_v3(ptr noundef nonnull %637, ptr noundef nonnull %23) #13
  %784 = load float, ptr %23, align 4, !tbaa !94
  %785 = load float, ptr %22, align 4, !tbaa !94
  %786 = fsub float %784, %785
  %787 = load float, ptr %638, align 4, !tbaa !94
  %788 = load float, ptr %635, align 4, !tbaa !94
  %789 = fsub float %787, %788
  %790 = load float, ptr %639, align 4, !tbaa !94
  %791 = load float, ptr %636, align 4, !tbaa !94
  %792 = fsub float %790, %791
  %793 = fmul float %789, %789
  %794 = call float @llvm.fmuladd.f32(float %786, float %786, float %793)
  %795 = call float @llvm.fmuladd.f32(float %792, float %792, float %794)
  %796 = call float @sqrtf(float noundef %795) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %22) #13
  %797 = getelementptr inbounds %struct.BodySpring, ptr %769, i64 0, i32 2
  store float %796, ptr %797, align 4, !tbaa !164
  %798 = getelementptr inbounds %struct.BodySpring, ptr %769, i64 1
  br label %799

799:                                              ; preds = %771, %768
  %800 = phi ptr [ %798, %771 ], [ %769, %768 ]
  br i1 %640, label %954, label %801

801:                                              ; preds = %799
  br i1 %689, label %875, label %802

802:                                              ; preds = %801
  %803 = and i1 %698, %770
  br i1 %803, label %804, label %836

804:                                              ; preds = %802
  store i32 %701, ptr %800, align 4, !tbaa !144
  %805 = add i32 %701, %642
  %806 = getelementptr inbounds %struct.BodySpring, ptr %800, i64 0, i32 1
  store i32 %805, ptr %806, align 4, !tbaa !147
  %807 = getelementptr inbounds %struct.BodySpring, ptr %800, i64 0, i32 6
  store i32 2, ptr %807, align 4, !tbaa !148
  %808 = getelementptr inbounds %struct.BPoint, ptr %703, i64 %644
  %809 = getelementptr inbounds %struct.BPoint, ptr %808, i64 %646
  %810 = getelementptr inbounds %struct.BPoint, ptr %809, i64 -1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #13
  %811 = load float, ptr %810, align 4, !tbaa !94
  store float %811, ptr %20, align 4, !tbaa !94
  %812 = getelementptr %struct.BPoint, ptr %809, i64 -1, i32 0, i64 1
  %813 = load float, ptr %812, align 4, !tbaa !94
  store float %813, ptr %647, align 4, !tbaa !94
  %814 = getelementptr %struct.BPoint, ptr %809, i64 -1, i32 0, i64 2
  %815 = load float, ptr %814, align 4, !tbaa !94
  store float %815, ptr %648, align 4, !tbaa !94
  call void @mul_m4_v3(ptr noundef nonnull %649, ptr noundef nonnull %20) #13
  %816 = load float, ptr %703, align 4, !tbaa !94
  store float %816, ptr %21, align 4, !tbaa !94
  %817 = getelementptr inbounds float, ptr %703, i64 1
  %818 = load float, ptr %817, align 4, !tbaa !94
  store float %818, ptr %650, align 4, !tbaa !94
  %819 = getelementptr inbounds float, ptr %703, i64 2
  %820 = load float, ptr %819, align 4, !tbaa !94
  store float %820, ptr %651, align 4, !tbaa !94
  call void @mul_m4_v3(ptr noundef nonnull %649, ptr noundef nonnull %21) #13
  %821 = load float, ptr %21, align 4, !tbaa !94
  %822 = load float, ptr %20, align 4, !tbaa !94
  %823 = fsub float %821, %822
  %824 = load float, ptr %650, align 4, !tbaa !94
  %825 = load float, ptr %647, align 4, !tbaa !94
  %826 = fsub float %824, %825
  %827 = load float, ptr %651, align 4, !tbaa !94
  %828 = load float, ptr %648, align 4, !tbaa !94
  %829 = fsub float %827, %828
  %830 = fmul float %826, %826
  %831 = call float @llvm.fmuladd.f32(float %823, float %823, float %830)
  %832 = call float @llvm.fmuladd.f32(float %829, float %829, float %831)
  %833 = call float @sqrtf(float noundef %832) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #13
  %834 = getelementptr inbounds %struct.BodySpring, ptr %800, i64 0, i32 2
  store float %833, ptr %834, align 4, !tbaa !164
  %835 = getelementptr inbounds %struct.BodySpring, ptr %800, i64 1
  br label %836

836:                                              ; preds = %804, %802
  %837 = phi ptr [ %835, %804 ], [ %800, %802 ]
  %838 = load i16, ptr %505, align 2, !tbaa !167
  %839 = sext i16 %838 to i32
  %840 = add nsw i32 %839, -1
  %841 = icmp slt i32 %694, %840
  %842 = and i1 %770, %841
  br i1 %842, label %843, label %875

843:                                              ; preds = %836
  store i32 %701, ptr %837, align 4, !tbaa !144
  %844 = add i32 %653, %701
  %845 = getelementptr inbounds %struct.BodySpring, ptr %837, i64 0, i32 1
  store i32 %844, ptr %845, align 4, !tbaa !147
  %846 = getelementptr inbounds %struct.BodySpring, ptr %837, i64 0, i32 6
  store i32 2, ptr %846, align 4, !tbaa !148
  %847 = getelementptr inbounds %struct.BPoint, ptr %703, i64 %655
  %848 = getelementptr inbounds %struct.BPoint, ptr %847, i64 %656
  %849 = getelementptr inbounds %struct.BPoint, ptr %848, i64 -1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #13
  %850 = load float, ptr %849, align 4, !tbaa !94
  store float %850, ptr %18, align 4, !tbaa !94
  %851 = getelementptr %struct.BPoint, ptr %848, i64 -1, i32 0, i64 1
  %852 = load float, ptr %851, align 4, !tbaa !94
  store float %852, ptr %657, align 4, !tbaa !94
  %853 = getelementptr %struct.BPoint, ptr %848, i64 -1, i32 0, i64 2
  %854 = load float, ptr %853, align 4, !tbaa !94
  store float %854, ptr %658, align 4, !tbaa !94
  call void @mul_m4_v3(ptr noundef nonnull %659, ptr noundef nonnull %18) #13
  %855 = load float, ptr %703, align 4, !tbaa !94
  store float %855, ptr %19, align 4, !tbaa !94
  %856 = getelementptr inbounds float, ptr %703, i64 1
  %857 = load float, ptr %856, align 4, !tbaa !94
  store float %857, ptr %660, align 4, !tbaa !94
  %858 = getelementptr inbounds float, ptr %703, i64 2
  %859 = load float, ptr %858, align 4, !tbaa !94
  store float %859, ptr %661, align 4, !tbaa !94
  call void @mul_m4_v3(ptr noundef nonnull %659, ptr noundef nonnull %19) #13
  %860 = load float, ptr %19, align 4, !tbaa !94
  %861 = load float, ptr %18, align 4, !tbaa !94
  %862 = fsub float %860, %861
  %863 = load float, ptr %660, align 4, !tbaa !94
  %864 = load float, ptr %657, align 4, !tbaa !94
  %865 = fsub float %863, %864
  %866 = load float, ptr %661, align 4, !tbaa !94
  %867 = load float, ptr %658, align 4, !tbaa !94
  %868 = fsub float %866, %867
  %869 = fmul float %865, %865
  %870 = call float @llvm.fmuladd.f32(float %862, float %862, float %869)
  %871 = call float @llvm.fmuladd.f32(float %868, float %868, float %870)
  %872 = call float @sqrtf(float noundef %871) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #13
  %873 = getelementptr inbounds %struct.BodySpring, ptr %837, i64 0, i32 2
  store float %872, ptr %873, align 4, !tbaa !164
  %874 = getelementptr inbounds %struct.BodySpring, ptr %837, i64 1
  br label %875

875:                                              ; preds = %843, %836, %801
  %876 = phi ptr [ %874, %843 ], [ %837, %836 ], [ %800, %801 ]
  %877 = load i16, ptr %509, align 4, !tbaa !168
  %878 = sext i16 %877 to i32
  %879 = add nsw i32 %878, -1
  %880 = icmp slt i32 %685, %879
  br i1 %880, label %881, label %954

881:                                              ; preds = %875
  %882 = and i1 %698, %770
  br i1 %882, label %883, label %915

883:                                              ; preds = %881
  store i32 %701, ptr %876, align 4, !tbaa !144
  %884 = add i32 %663, %701
  %885 = getelementptr inbounds %struct.BodySpring, ptr %876, i64 0, i32 1
  store i32 %884, ptr %885, align 4, !tbaa !147
  %886 = getelementptr inbounds %struct.BodySpring, ptr %876, i64 0, i32 6
  store i32 2, ptr %886, align 4, !tbaa !148
  %887 = getelementptr inbounds %struct.BPoint, ptr %703, i64 %664
  %888 = getelementptr inbounds %struct.BPoint, ptr %887, i64 %666
  %889 = getelementptr inbounds %struct.BPoint, ptr %888, i64 -1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #13
  %890 = load float, ptr %889, align 4, !tbaa !94
  store float %890, ptr %16, align 4, !tbaa !94
  %891 = getelementptr %struct.BPoint, ptr %888, i64 -1, i32 0, i64 1
  %892 = load float, ptr %891, align 4, !tbaa !94
  store float %892, ptr %667, align 4, !tbaa !94
  %893 = getelementptr %struct.BPoint, ptr %888, i64 -1, i32 0, i64 2
  %894 = load float, ptr %893, align 4, !tbaa !94
  store float %894, ptr %668, align 4, !tbaa !94
  call void @mul_m4_v3(ptr noundef nonnull %669, ptr noundef nonnull %16) #13
  %895 = load float, ptr %703, align 4, !tbaa !94
  store float %895, ptr %17, align 4, !tbaa !94
  %896 = getelementptr inbounds float, ptr %703, i64 1
  %897 = load float, ptr %896, align 4, !tbaa !94
  store float %897, ptr %670, align 4, !tbaa !94
  %898 = getelementptr inbounds float, ptr %703, i64 2
  %899 = load float, ptr %898, align 4, !tbaa !94
  store float %899, ptr %671, align 4, !tbaa !94
  call void @mul_m4_v3(ptr noundef nonnull %669, ptr noundef nonnull %17) #13
  %900 = load float, ptr %17, align 4, !tbaa !94
  %901 = load float, ptr %16, align 4, !tbaa !94
  %902 = fsub float %900, %901
  %903 = load float, ptr %670, align 4, !tbaa !94
  %904 = load float, ptr %667, align 4, !tbaa !94
  %905 = fsub float %903, %904
  %906 = load float, ptr %671, align 4, !tbaa !94
  %907 = load float, ptr %668, align 4, !tbaa !94
  %908 = fsub float %906, %907
  %909 = fmul float %905, %905
  %910 = call float @llvm.fmuladd.f32(float %902, float %902, float %909)
  %911 = call float @llvm.fmuladd.f32(float %908, float %908, float %910)
  %912 = call float @sqrtf(float noundef %911) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #13
  %913 = getelementptr inbounds %struct.BodySpring, ptr %876, i64 0, i32 2
  store float %912, ptr %913, align 4, !tbaa !164
  %914 = getelementptr inbounds %struct.BodySpring, ptr %876, i64 1
  br label %915

915:                                              ; preds = %883, %881
  %916 = phi ptr [ %914, %883 ], [ %876, %881 ]
  %917 = load i16, ptr %505, align 2, !tbaa !167
  %918 = sext i16 %917 to i32
  %919 = add nsw i32 %918, -1
  %920 = icmp slt i32 %694, %919
  %921 = and i1 %770, %920
  br i1 %921, label %922, label %954

922:                                              ; preds = %915
  store i32 %701, ptr %916, align 4, !tbaa !144
  %923 = add i32 %673, %701
  %924 = getelementptr inbounds %struct.BodySpring, ptr %916, i64 0, i32 1
  store i32 %923, ptr %924, align 4, !tbaa !147
  %925 = getelementptr inbounds %struct.BodySpring, ptr %916, i64 0, i32 6
  store i32 2, ptr %925, align 4, !tbaa !148
  %926 = getelementptr inbounds %struct.BPoint, ptr %703, i64 %674
  %927 = getelementptr inbounds %struct.BPoint, ptr %926, i64 %675
  %928 = getelementptr inbounds %struct.BPoint, ptr %927, i64 -1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #13
  %929 = load float, ptr %928, align 4, !tbaa !94
  store float %929, ptr %14, align 4, !tbaa !94
  %930 = getelementptr %struct.BPoint, ptr %927, i64 -1, i32 0, i64 1
  %931 = load float, ptr %930, align 4, !tbaa !94
  store float %931, ptr %676, align 4, !tbaa !94
  %932 = getelementptr %struct.BPoint, ptr %927, i64 -1, i32 0, i64 2
  %933 = load float, ptr %932, align 4, !tbaa !94
  store float %933, ptr %677, align 4, !tbaa !94
  call void @mul_m4_v3(ptr noundef nonnull %678, ptr noundef nonnull %14) #13
  %934 = load float, ptr %703, align 4, !tbaa !94
  store float %934, ptr %15, align 4, !tbaa !94
  %935 = getelementptr inbounds float, ptr %703, i64 1
  %936 = load float, ptr %935, align 4, !tbaa !94
  store float %936, ptr %679, align 4, !tbaa !94
  %937 = getelementptr inbounds float, ptr %703, i64 2
  %938 = load float, ptr %937, align 4, !tbaa !94
  store float %938, ptr %680, align 4, !tbaa !94
  call void @mul_m4_v3(ptr noundef nonnull %678, ptr noundef nonnull %15) #13
  %939 = load float, ptr %15, align 4, !tbaa !94
  %940 = load float, ptr %14, align 4, !tbaa !94
  %941 = fsub float %939, %940
  %942 = load float, ptr %679, align 4, !tbaa !94
  %943 = load float, ptr %676, align 4, !tbaa !94
  %944 = fsub float %942, %943
  %945 = load float, ptr %680, align 4, !tbaa !94
  %946 = load float, ptr %677, align 4, !tbaa !94
  %947 = fsub float %945, %946
  %948 = fmul float %944, %944
  %949 = call float @llvm.fmuladd.f32(float %941, float %941, float %948)
  %950 = call float @llvm.fmuladd.f32(float %947, float %947, float %949)
  %951 = call float @sqrtf(float noundef %950) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #13
  %952 = getelementptr inbounds %struct.BodySpring, ptr %916, i64 0, i32 2
  store float %951, ptr %952, align 4, !tbaa !164
  %953 = getelementptr inbounds %struct.BodySpring, ptr %916, i64 1
  br label %954

954:                                              ; preds = %922, %915, %875, %799
  %955 = phi ptr [ %953, %922 ], [ %916, %915 ], [ %876, %875 ], [ %800, %799 ]
  %956 = add nuw nsw i32 %704, 1
  %957 = getelementptr inbounds %struct.BPoint, ptr %703, i64 1
  %958 = add nsw i32 %701, 1
  %959 = load i16, ptr %502, align 8, !tbaa !166
  %960 = sext i16 %959 to i32
  %961 = icmp slt i32 %956, %960
  br i1 %961, label %699, label %962, !llvm.loop !171

962:                                              ; preds = %954, %690
  %963 = phi ptr [ %693, %690 ], [ %957, %954 ]
  %964 = phi ptr [ %692, %690 ], [ %955, %954 ]
  %965 = phi i32 [ %691, %690 ], [ %958, %954 ]
  %966 = add nuw nsw i32 %694, 1
  %967 = load i16, ptr %505, align 2, !tbaa !167
  %968 = sext i16 %967 to i32
  %969 = icmp slt i32 %966, %968
  br i1 %969, label %690, label %970, !llvm.loop !172

970:                                              ; preds = %962, %681
  %971 = phi ptr [ %684, %681 ], [ %963, %962 ]
  %972 = phi ptr [ %683, %681 ], [ %964, %962 ]
  %973 = phi i32 [ %682, %681 ], [ %965, %962 ]
  %974 = add nuw nsw i32 %685, 1
  %975 = load i16, ptr %509, align 4, !tbaa !168
  %976 = sext i16 %975 to i32
  %977 = icmp slt i32 %974, %976
  br i1 %977, label %681, label %978, !llvm.loop !173

978:                                              ; preds = %970, %607
  call fastcc void @build_bps_springlist(ptr noundef %1)
  br label %1233

979:                                              ; preds = %79, %79
  %980 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %981 = load ptr, ptr %980, align 8, !tbaa !121
  %982 = getelementptr inbounds %struct.Curve, ptr %981, i64 0, i32 3
  %983 = call i32 @BKE_nurbList_verts_count(ptr noundef nonnull %982) #13
  %984 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 104
  %985 = load i16, ptr %984, align 2, !tbaa !119
  %986 = and i16 %985, 4
  %987 = icmp eq i16 %986, 0
  br i1 %987, label %994, label %988

988:                                              ; preds = %979
  %989 = load i16, ptr %80, align 8, !tbaa !120
  %990 = icmp eq i16 %989, 2
  br i1 %990, label %991, label %994

991:                                              ; preds = %988
  %992 = call i32 @BLI_countlist(ptr noundef nonnull %982) #13
  %993 = sub nsw i32 %983, %992
  br label %994

994:                                              ; preds = %991, %988, %979
  %995 = phi i32 [ %993, %991 ], [ 0, %988 ], [ 0, %979 ]
  call fastcc void @renew_softbody(ptr noundef %0, ptr noundef %1, i32 noundef %983, i32 noundef %995)
  %996 = load i16, ptr %984, align 2, !tbaa !119
  %997 = and i16 %996, 2
  %998 = icmp eq i16 %997, 0
  %999 = load ptr, ptr %982, align 8, !tbaa !34
  %1000 = icmp eq ptr %999, null
  br i1 %1000, label %1225, label %1001

1001:                                             ; preds = %994
  %1002 = load ptr, ptr %34, align 8, !tbaa !112
  %1003 = getelementptr inbounds %struct.SoftBody, ptr %1002, i64 0, i32 3
  %1004 = load ptr, ptr %1003, align 8, !tbaa !108
  %1005 = getelementptr inbounds %struct.SoftBody, ptr %1002, i64 0, i32 2
  %1006 = load ptr, ptr %1005, align 8, !tbaa !101
  %1007 = icmp eq i32 %995, 0
  %1008 = getelementptr inbounds float, ptr %12, i64 1
  %1009 = getelementptr inbounds float, ptr %12, i64 2
  %1010 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %1011 = getelementptr inbounds float, ptr %13, i64 1
  %1012 = getelementptr inbounds float, ptr %13, i64 2
  %1013 = getelementptr inbounds float, ptr %10, i64 1
  %1014 = getelementptr inbounds float, ptr %10, i64 2
  %1015 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %1016 = getelementptr inbounds float, ptr %11, i64 1
  %1017 = getelementptr inbounds float, ptr %11, i64 2
  %1018 = getelementptr inbounds float, ptr %8, i64 1
  %1019 = getelementptr inbounds float, ptr %8, i64 2
  %1020 = getelementptr inbounds float, ptr %9, i64 1
  %1021 = getelementptr inbounds float, ptr %9, i64 2
  %1022 = icmp ne i32 %995, 0
  %1023 = getelementptr inbounds float, ptr %6, i64 1
  %1024 = getelementptr inbounds float, ptr %6, i64 2
  %1025 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %1026 = getelementptr inbounds float, ptr %7, i64 1
  %1027 = getelementptr inbounds float, ptr %7, i64 2
  br label %1028

1028:                                             ; preds = %1001, %1219
  %1029 = phi ptr [ %999, %1001 ], [ %1223, %1219 ]
  %1030 = phi ptr [ %1006, %1001 ], [ %1222, %1219 ]
  %1031 = phi i32 [ 0, %1001 ], [ %1221, %1219 ]
  %1032 = phi ptr [ %1004, %1001 ], [ %1220, %1219 ]
  %1033 = getelementptr inbounds %struct.Nurb, ptr %1029, i64 0, i32 18
  %1034 = load ptr, ptr %1033, align 8, !tbaa !174
  %1035 = icmp eq ptr %1034, null
  %1036 = getelementptr inbounds %struct.Nurb, ptr %1029, i64 0, i32 6
  br i1 %1035, label %1157, label %1037

1037:                                             ; preds = %1028
  %1038 = load i32, ptr %1036, align 8, !tbaa !176
  %1039 = icmp sgt i32 %1038, 0
  br i1 %1039, label %1040, label %1219

1040:                                             ; preds = %1037, %1149
  %1041 = phi ptr [ %1153, %1149 ], [ %1030, %1037 ]
  %1042 = phi i32 [ %1154, %1149 ], [ %1031, %1037 ]
  %1043 = phi i32 [ %1151, %1149 ], [ 0, %1037 ]
  %1044 = phi ptr [ %1152, %1149 ], [ %1034, %1037 ]
  %1045 = phi ptr [ %1150, %1149 ], [ %1032, %1037 ]
  br i1 %998, label %1058, label %1046

1046:                                             ; preds = %1040
  %1047 = getelementptr inbounds %struct.BezTriple, ptr %1044, i64 0, i32 2
  %1048 = load float, ptr %1047, align 4, !tbaa !177
  %1049 = getelementptr inbounds %struct.BodyPoint, ptr %1041, i64 0, i32 6
  store float %1048, ptr %1049, align 8, !tbaa !138
  %1050 = getelementptr inbounds %struct.BodyPoint, ptr %1041, i64 1, i32 6
  store float %1048, ptr %1050, align 8, !tbaa !138
  %1051 = getelementptr inbounds %struct.BodyPoint, ptr %1041, i64 2, i32 6
  store float %1048, ptr %1051, align 8, !tbaa !138
  %1052 = getelementptr inbounds %struct.BodyPoint, ptr %1041, i64 1, i32 19
  %1053 = load i16, ptr %1052, align 8, !tbaa !179
  %1054 = or i16 %1053, 2
  store i16 %1054, ptr %1052, align 8, !tbaa !179
  %1055 = getelementptr inbounds %struct.BodyPoint, ptr %1041, i64 2, i32 19
  %1056 = load i16, ptr %1055, align 8, !tbaa !179
  %1057 = or i16 %1056, 2
  store i16 %1057, ptr %1055, align 8, !tbaa !179
  br label %1058

1058:                                             ; preds = %1046, %1040
  br i1 %1007, label %1149, label %1059

1059:                                             ; preds = %1058
  %1060 = icmp eq i32 %1043, 0
  br i1 %1060, label %1091, label %1061

1061:                                             ; preds = %1059
  %1062 = add nsw i32 %1042, -3
  store i32 %1062, ptr %1045, align 4, !tbaa !144
  %1063 = getelementptr inbounds %struct.BodySpring, ptr %1045, i64 0, i32 1
  store i32 %1042, ptr %1063, align 4, !tbaa !147
  %1064 = getelementptr inbounds %struct.BodySpring, ptr %1045, i64 0, i32 6
  store i32 4, ptr %1064, align 4, !tbaa !148
  %1065 = getelementptr inbounds %struct.BezTriple, ptr %1044, i64 -1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #13
  %1066 = load float, ptr %1065, align 4, !tbaa !94
  store float %1066, ptr %12, align 4, !tbaa !94
  %1067 = getelementptr %struct.BezTriple, ptr %1044, i64 -1, i32 0, i64 0, i64 1
  %1068 = load float, ptr %1067, align 4, !tbaa !94
  store float %1068, ptr %1008, align 4, !tbaa !94
  %1069 = getelementptr %struct.BezTriple, ptr %1044, i64 -1, i32 0, i64 0, i64 2
  %1070 = load float, ptr %1069, align 4, !tbaa !94
  store float %1070, ptr %1009, align 4, !tbaa !94
  call void @mul_m4_v3(ptr noundef nonnull %1010, ptr noundef nonnull %12) #13
  %1071 = load float, ptr %1044, align 4, !tbaa !94
  store float %1071, ptr %13, align 4, !tbaa !94
  %1072 = getelementptr inbounds float, ptr %1044, i64 1
  %1073 = load float, ptr %1072, align 4, !tbaa !94
  store float %1073, ptr %1011, align 4, !tbaa !94
  %1074 = getelementptr inbounds float, ptr %1044, i64 2
  %1075 = load float, ptr %1074, align 4, !tbaa !94
  store float %1075, ptr %1012, align 4, !tbaa !94
  call void @mul_m4_v3(ptr noundef nonnull %1010, ptr noundef nonnull %13) #13
  %1076 = load float, ptr %13, align 4, !tbaa !94
  %1077 = load float, ptr %12, align 4, !tbaa !94
  %1078 = fsub float %1076, %1077
  %1079 = load float, ptr %1011, align 4, !tbaa !94
  %1080 = load float, ptr %1008, align 4, !tbaa !94
  %1081 = fsub float %1079, %1080
  %1082 = load float, ptr %1012, align 4, !tbaa !94
  %1083 = load float, ptr %1009, align 4, !tbaa !94
  %1084 = fsub float %1082, %1083
  %1085 = fmul float %1081, %1081
  %1086 = call float @llvm.fmuladd.f32(float %1078, float %1078, float %1085)
  %1087 = call float @llvm.fmuladd.f32(float %1084, float %1084, float %1086)
  %1088 = call float @sqrtf(float noundef %1087) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #13
  %1089 = getelementptr inbounds %struct.BodySpring, ptr %1045, i64 0, i32 2
  store float %1088, ptr %1089, align 4, !tbaa !164
  %1090 = getelementptr inbounds %struct.BodySpring, ptr %1045, i64 1
  br label %1091

1091:                                             ; preds = %1061, %1059
  %1092 = phi ptr [ %1090, %1061 ], [ %1045, %1059 ]
  store i32 %1042, ptr %1092, align 4, !tbaa !144
  %1093 = add nsw i32 %1042, 1
  %1094 = getelementptr inbounds %struct.BodySpring, ptr %1092, i64 0, i32 1
  store i32 %1093, ptr %1094, align 4, !tbaa !147
  %1095 = getelementptr inbounds %struct.BodySpring, ptr %1092, i64 0, i32 6
  store i32 4, ptr %1095, align 4, !tbaa !148
  %1096 = getelementptr inbounds [3 x [3 x float]], ptr %1044, i64 0, i64 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #13
  %1097 = load float, ptr %1044, align 4, !tbaa !94
  store float %1097, ptr %10, align 4, !tbaa !94
  %1098 = getelementptr inbounds float, ptr %1044, i64 1
  %1099 = load float, ptr %1098, align 4, !tbaa !94
  store float %1099, ptr %1013, align 4, !tbaa !94
  %1100 = getelementptr inbounds float, ptr %1044, i64 2
  %1101 = load float, ptr %1100, align 4, !tbaa !94
  store float %1101, ptr %1014, align 4, !tbaa !94
  call void @mul_m4_v3(ptr noundef nonnull %1015, ptr noundef nonnull %10) #13
  %1102 = load float, ptr %1096, align 4, !tbaa !94
  store float %1102, ptr %11, align 4, !tbaa !94
  %1103 = getelementptr inbounds [3 x [3 x float]], ptr %1044, i64 0, i64 1, i64 1
  %1104 = load float, ptr %1103, align 4, !tbaa !94
  store float %1104, ptr %1016, align 4, !tbaa !94
  %1105 = getelementptr inbounds [3 x [3 x float]], ptr %1044, i64 0, i64 1, i64 2
  %1106 = load float, ptr %1105, align 4, !tbaa !94
  store float %1106, ptr %1017, align 4, !tbaa !94
  call void @mul_m4_v3(ptr noundef nonnull %1015, ptr noundef nonnull %11) #13
  %1107 = load float, ptr %11, align 4, !tbaa !94
  %1108 = load float, ptr %10, align 4, !tbaa !94
  %1109 = fsub float %1107, %1108
  %1110 = load float, ptr %1016, align 4, !tbaa !94
  %1111 = load float, ptr %1013, align 4, !tbaa !94
  %1112 = fsub float %1110, %1111
  %1113 = load float, ptr %1017, align 4, !tbaa !94
  %1114 = load float, ptr %1014, align 4, !tbaa !94
  %1115 = fsub float %1113, %1114
  %1116 = fmul float %1112, %1112
  %1117 = call float @llvm.fmuladd.f32(float %1109, float %1109, float %1116)
  %1118 = call float @llvm.fmuladd.f32(float %1115, float %1115, float %1117)
  %1119 = call float @sqrtf(float noundef %1118) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #13
  %1120 = getelementptr inbounds %struct.BodySpring, ptr %1092, i64 0, i32 2
  store float %1119, ptr %1120, align 4, !tbaa !164
  %1121 = getelementptr inbounds %struct.BodySpring, ptr %1092, i64 1
  store i32 %1093, ptr %1121, align 4, !tbaa !144
  %1122 = add nsw i32 %1042, 2
  %1123 = getelementptr inbounds %struct.BodySpring, ptr %1092, i64 1, i32 1
  store i32 %1122, ptr %1123, align 4, !tbaa !147
  %1124 = getelementptr inbounds %struct.BodySpring, ptr %1092, i64 1, i32 6
  store i32 4, ptr %1124, align 4, !tbaa !148
  %1125 = getelementptr inbounds [3 x [3 x float]], ptr %1044, i64 0, i64 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #13
  %1126 = load float, ptr %1096, align 4, !tbaa !94
  store float %1126, ptr %8, align 4, !tbaa !94
  %1127 = load float, ptr %1103, align 4, !tbaa !94
  store float %1127, ptr %1018, align 4, !tbaa !94
  %1128 = load float, ptr %1105, align 4, !tbaa !94
  store float %1128, ptr %1019, align 4, !tbaa !94
  call void @mul_m4_v3(ptr noundef nonnull %1015, ptr noundef nonnull %8) #13
  %1129 = load float, ptr %1125, align 4, !tbaa !94
  store float %1129, ptr %9, align 4, !tbaa !94
  %1130 = getelementptr inbounds [3 x [3 x float]], ptr %1044, i64 0, i64 2, i64 1
  %1131 = load float, ptr %1130, align 4, !tbaa !94
  store float %1131, ptr %1020, align 4, !tbaa !94
  %1132 = getelementptr inbounds [3 x [3 x float]], ptr %1044, i64 0, i64 2, i64 2
  %1133 = load float, ptr %1132, align 4, !tbaa !94
  store float %1133, ptr %1021, align 4, !tbaa !94
  call void @mul_m4_v3(ptr noundef nonnull %1015, ptr noundef nonnull %9) #13
  %1134 = load float, ptr %9, align 4, !tbaa !94
  %1135 = load float, ptr %8, align 4, !tbaa !94
  %1136 = fsub float %1134, %1135
  %1137 = load float, ptr %1020, align 4, !tbaa !94
  %1138 = load float, ptr %1018, align 4, !tbaa !94
  %1139 = fsub float %1137, %1138
  %1140 = load float, ptr %1021, align 4, !tbaa !94
  %1141 = load float, ptr %1019, align 4, !tbaa !94
  %1142 = fsub float %1140, %1141
  %1143 = fmul float %1139, %1139
  %1144 = call float @llvm.fmuladd.f32(float %1136, float %1136, float %1143)
  %1145 = call float @llvm.fmuladd.f32(float %1142, float %1142, float %1144)
  %1146 = call float @sqrtf(float noundef %1145) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #13
  %1147 = getelementptr inbounds %struct.BodySpring, ptr %1092, i64 1, i32 2
  store float %1146, ptr %1147, align 4, !tbaa !164
  %1148 = getelementptr inbounds %struct.BodySpring, ptr %1092, i64 2
  br label %1149

1149:                                             ; preds = %1091, %1058
  %1150 = phi ptr [ %1148, %1091 ], [ %1045, %1058 ]
  %1151 = add nuw nsw i32 %1043, 1
  %1152 = getelementptr inbounds %struct.BezTriple, ptr %1044, i64 1
  %1153 = getelementptr inbounds %struct.BodyPoint, ptr %1041, i64 3
  %1154 = add nsw i32 %1042, 3
  %1155 = load i32, ptr %1036, align 8, !tbaa !176
  %1156 = icmp slt i32 %1151, %1155
  br i1 %1156, label %1040, label %1219, !llvm.loop !180

1157:                                             ; preds = %1028
  %1158 = getelementptr inbounds %struct.Nurb, ptr %1029, i64 0, i32 7
  %1159 = load i32, ptr %1036, align 8, !tbaa !176
  %1160 = load i32, ptr %1158, align 4, !tbaa !181
  %1161 = mul nsw i32 %1160, %1159
  %1162 = icmp sgt i32 %1161, 0
  br i1 %1162, label %1163, label %1219

1163:                                             ; preds = %1157
  %1164 = getelementptr inbounds %struct.Nurb, ptr %1029, i64 0, i32 17
  %1165 = load ptr, ptr %1164, align 8, !tbaa !182
  br label %1166

1166:                                             ; preds = %1163, %1209
  %1167 = phi ptr [ %1213, %1209 ], [ %1030, %1163 ]
  %1168 = phi i32 [ %1214, %1209 ], [ %1031, %1163 ]
  %1169 = phi i32 [ %1211, %1209 ], [ 0, %1163 ]
  %1170 = phi ptr [ %1212, %1209 ], [ %1165, %1163 ]
  %1171 = phi ptr [ %1210, %1209 ], [ %1032, %1163 ]
  br i1 %998, label %1176, label %1172

1172:                                             ; preds = %1166
  %1173 = getelementptr inbounds %struct.BPoint, ptr %1170, i64 0, i32 2
  %1174 = load float, ptr %1173, align 4, !tbaa !183
  %1175 = getelementptr inbounds %struct.BodyPoint, ptr %1167, i64 0, i32 6
  store float %1174, ptr %1175, align 8, !tbaa !138
  br label %1176

1176:                                             ; preds = %1172, %1166
  %1177 = icmp ne i32 %1169, 0
  %1178 = and i1 %1022, %1177
  br i1 %1178, label %1179, label %1209

1179:                                             ; preds = %1176
  %1180 = add nsw i32 %1168, -1
  store i32 %1180, ptr %1171, align 4, !tbaa !144
  %1181 = getelementptr inbounds %struct.BodySpring, ptr %1171, i64 0, i32 1
  store i32 %1168, ptr %1181, align 4, !tbaa !147
  %1182 = getelementptr inbounds %struct.BodySpring, ptr %1171, i64 0, i32 6
  store i32 1, ptr %1182, align 4, !tbaa !148
  %1183 = getelementptr inbounds %struct.BPoint, ptr %1170, i64 -1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #13
  %1184 = load float, ptr %1183, align 4, !tbaa !94
  store float %1184, ptr %6, align 4, !tbaa !94
  %1185 = getelementptr %struct.BPoint, ptr %1170, i64 -1, i32 0, i64 1
  %1186 = load float, ptr %1185, align 4, !tbaa !94
  store float %1186, ptr %1023, align 4, !tbaa !94
  %1187 = getelementptr %struct.BPoint, ptr %1170, i64 -1, i32 0, i64 2
  %1188 = load float, ptr %1187, align 4, !tbaa !94
  store float %1188, ptr %1024, align 4, !tbaa !94
  call void @mul_m4_v3(ptr noundef nonnull %1025, ptr noundef nonnull %6) #13
  %1189 = load float, ptr %1170, align 4, !tbaa !94
  store float %1189, ptr %7, align 4, !tbaa !94
  %1190 = getelementptr inbounds float, ptr %1170, i64 1
  %1191 = load float, ptr %1190, align 4, !tbaa !94
  store float %1191, ptr %1026, align 4, !tbaa !94
  %1192 = getelementptr inbounds float, ptr %1170, i64 2
  %1193 = load float, ptr %1192, align 4, !tbaa !94
  store float %1193, ptr %1027, align 4, !tbaa !94
  call void @mul_m4_v3(ptr noundef nonnull %1025, ptr noundef nonnull %7) #13
  %1194 = load float, ptr %7, align 4, !tbaa !94
  %1195 = load float, ptr %6, align 4, !tbaa !94
  %1196 = fsub float %1194, %1195
  %1197 = load float, ptr %1026, align 4, !tbaa !94
  %1198 = load float, ptr %1023, align 4, !tbaa !94
  %1199 = fsub float %1197, %1198
  %1200 = load float, ptr %1027, align 4, !tbaa !94
  %1201 = load float, ptr %1024, align 4, !tbaa !94
  %1202 = fsub float %1200, %1201
  %1203 = fmul float %1199, %1199
  %1204 = call float @llvm.fmuladd.f32(float %1196, float %1196, float %1203)
  %1205 = call float @llvm.fmuladd.f32(float %1202, float %1202, float %1204)
  %1206 = call float @sqrtf(float noundef %1205) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #13
  %1207 = getelementptr inbounds %struct.BodySpring, ptr %1171, i64 0, i32 2
  store float %1206, ptr %1207, align 4, !tbaa !164
  %1208 = getelementptr inbounds %struct.BodySpring, ptr %1171, i64 1
  br label %1209

1209:                                             ; preds = %1179, %1176
  %1210 = phi ptr [ %1208, %1179 ], [ %1171, %1176 ]
  %1211 = add nuw nsw i32 %1169, 1
  %1212 = getelementptr inbounds %struct.BPoint, ptr %1170, i64 1
  %1213 = getelementptr inbounds %struct.BodyPoint, ptr %1167, i64 1
  %1214 = add nsw i32 %1168, 1
  %1215 = load i32, ptr %1036, align 8, !tbaa !176
  %1216 = load i32, ptr %1158, align 4, !tbaa !181
  %1217 = mul nsw i32 %1216, %1215
  %1218 = icmp slt i32 %1211, %1217
  br i1 %1218, label %1166, label %1219, !llvm.loop !185

1219:                                             ; preds = %1149, %1209, %1037, %1157
  %1220 = phi ptr [ %1032, %1157 ], [ %1032, %1037 ], [ %1210, %1209 ], [ %1150, %1149 ]
  %1221 = phi i32 [ %1031, %1157 ], [ %1031, %1037 ], [ %1214, %1209 ], [ %1154, %1149 ]
  %1222 = phi ptr [ %1030, %1157 ], [ %1030, %1037 ], [ %1213, %1209 ], [ %1153, %1149 ]
  %1223 = load ptr, ptr %1029, align 8, !tbaa !34
  %1224 = icmp eq ptr %1223, null
  br i1 %1224, label %1225, label %1028, !llvm.loop !186

1225:                                             ; preds = %1219, %994
  %1226 = icmp eq i32 %995, 0
  br i1 %1226, label %1233, label %1227

1227:                                             ; preds = %1225
  call fastcc void @build_bps_springlist(ptr noundef %1)
  %1228 = load i16, ptr %984, align 2, !tbaa !119
  %1229 = and i16 %1228, 512
  %1230 = icmp eq i16 %1229, 0
  br i1 %1230, label %1233, label %1231

1231:                                             ; preds = %1227
  call fastcc void @calculate_collision_balls(ptr noundef %1)
  br label %1233

1232:                                             ; preds = %79
  call fastcc void @renew_softbody(ptr noundef %0, ptr noundef %1, i32 noundef %4, i32 noundef 0)
  br label %1233

1233:                                             ; preds = %1231, %1227, %1225, %978, %602, %498, %494, %255, %1232
  %1234 = icmp eq ptr %35, null
  br i1 %1234, label %1269, label %1235

1235:                                             ; preds = %1233
  %1236 = load ptr, ptr %43, align 8, !tbaa !101
  %1237 = icmp ne ptr %1236, null
  %1238 = icmp sgt i32 %4, 0
  %1239 = and i1 %1238, %1237
  br i1 %1239, label %1240, label %1269

1240:                                             ; preds = %1235
  %1241 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %1242 = zext i32 %4 to i64
  br label %1243

1243:                                             ; preds = %1243, %1240
  %1244 = phi i64 [ 0, %1240 ], [ %1266, %1243 ]
  %1245 = phi ptr [ %1236, %1240 ], [ %1267, %1243 ]
  %1246 = getelementptr inbounds %struct.BodyPoint, ptr %1245, i64 0, i32 1
  %1247 = load float, ptr %1246, align 4, !tbaa !94
  store float %1247, ptr %1245, align 4, !tbaa !94
  %1248 = getelementptr inbounds %struct.BodyPoint, ptr %1245, i64 0, i32 1, i64 1
  %1249 = load float, ptr %1248, align 4, !tbaa !94
  %1250 = getelementptr inbounds float, ptr %1245, i64 1
  store float %1249, ptr %1250, align 4, !tbaa !94
  %1251 = getelementptr inbounds %struct.BodyPoint, ptr %1245, i64 0, i32 1, i64 2
  %1252 = load float, ptr %1251, align 4, !tbaa !94
  %1253 = getelementptr inbounds float, ptr %1245, i64 2
  store float %1252, ptr %1253, align 4, !tbaa !94
  %1254 = getelementptr inbounds [3 x float], ptr %3, i64 %1244
  %1255 = load float, ptr %1254, align 4, !tbaa !94
  store float %1255, ptr %1246, align 4, !tbaa !94
  %1256 = getelementptr inbounds float, ptr %1254, i64 1
  %1257 = load float, ptr %1256, align 4, !tbaa !94
  store float %1257, ptr %1248, align 4, !tbaa !94
  %1258 = getelementptr inbounds float, ptr %1254, i64 2
  %1259 = load float, ptr %1258, align 4, !tbaa !94
  store float %1259, ptr %1251, align 4, !tbaa !94
  call void @mul_m4_v3(ptr noundef nonnull %1241, ptr noundef nonnull %1246) #13
  %1260 = getelementptr inbounds %struct.BodyPoint, ptr %1245, i64 0, i32 2
  %1261 = load float, ptr %1246, align 4, !tbaa !94
  store float %1261, ptr %1260, align 4, !tbaa !94
  %1262 = load float, ptr %1248, align 4, !tbaa !94
  %1263 = getelementptr inbounds %struct.BodyPoint, ptr %1245, i64 0, i32 2, i64 1
  store float %1262, ptr %1263, align 4, !tbaa !94
  %1264 = load float, ptr %1251, align 4, !tbaa !94
  %1265 = getelementptr inbounds %struct.BodyPoint, ptr %1245, i64 0, i32 2, i64 2
  store float %1264, ptr %1265, align 4, !tbaa !94
  %1266 = add nuw nsw i64 %1244, 1
  %1267 = getelementptr inbounds %struct.BodyPoint, ptr %1245, i64 1
  %1268 = icmp eq i64 %1266, %1242
  br i1 %1268, label %1269, label %1243, !llvm.loop !187

1269:                                             ; preds = %1243, %1233, %1235
  %1270 = icmp sgt i32 %4, 0
  br i1 %1270, label %1271, label %1308

1271:                                             ; preds = %1269
  %1272 = load ptr, ptr %43, align 8, !tbaa !101
  %1273 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %1274 = zext nneg i32 %4 to i64
  br label %1275

1275:                                             ; preds = %1271, %1275
  %1276 = phi i64 [ 0, %1271 ], [ %1305, %1275 ]
  %1277 = phi ptr [ %1272, %1271 ], [ %1306, %1275 ]
  %1278 = getelementptr inbounds %struct.BodyPoint, ptr %1277, i64 0, i32 3
  %1279 = getelementptr inbounds [3 x float], ptr %3, i64 %1276
  %1280 = load float, ptr %1279, align 4, !tbaa !94
  store float %1280, ptr %1278, align 4, !tbaa !94
  %1281 = getelementptr inbounds float, ptr %1279, i64 1
  %1282 = load float, ptr %1281, align 4, !tbaa !94
  %1283 = getelementptr inbounds %struct.BodyPoint, ptr %1277, i64 0, i32 3, i64 1
  store float %1282, ptr %1283, align 4, !tbaa !94
  %1284 = getelementptr inbounds float, ptr %1279, i64 2
  %1285 = load float, ptr %1284, align 4, !tbaa !94
  %1286 = getelementptr inbounds %struct.BodyPoint, ptr %1277, i64 0, i32 3, i64 2
  store float %1285, ptr %1286, align 4, !tbaa !94
  call void @mul_m4_v3(ptr noundef nonnull %1273, ptr noundef nonnull %1278) #13
  %1287 = load float, ptr %1278, align 4, !tbaa !94
  store float %1287, ptr %1277, align 4, !tbaa !94
  %1288 = load float, ptr %1283, align 4, !tbaa !94
  %1289 = getelementptr inbounds float, ptr %1277, i64 1
  store float %1288, ptr %1289, align 4, !tbaa !94
  %1290 = load float, ptr %1286, align 4, !tbaa !94
  %1291 = getelementptr inbounds float, ptr %1277, i64 2
  store float %1290, ptr %1291, align 4, !tbaa !94
  %1292 = getelementptr inbounds %struct.BodyPoint, ptr %1277, i64 0, i32 1
  store float %1287, ptr %1292, align 4, !tbaa !94
  %1293 = getelementptr inbounds %struct.BodyPoint, ptr %1277, i64 0, i32 1, i64 1
  store float %1288, ptr %1293, align 4, !tbaa !94
  %1294 = getelementptr inbounds %struct.BodyPoint, ptr %1277, i64 0, i32 1, i64 2
  store float %1290, ptr %1294, align 4, !tbaa !94
  %1295 = getelementptr inbounds %struct.BodyPoint, ptr %1277, i64 0, i32 2
  store float %1287, ptr %1295, align 4, !tbaa !94
  %1296 = getelementptr inbounds %struct.BodyPoint, ptr %1277, i64 0, i32 2, i64 1
  store float %1288, ptr %1296, align 4, !tbaa !94
  %1297 = getelementptr inbounds %struct.BodyPoint, ptr %1277, i64 0, i32 2, i64 2
  store float %1290, ptr %1297, align 4, !tbaa !94
  %1298 = getelementptr inbounds %struct.BodyPoint, ptr %1277, i64 0, i32 4
  %1299 = getelementptr inbounds %struct.BodyPoint, ptr %1277, i64 0, i32 4, i64 2
  store float 0.000000e+00, ptr %1299, align 8, !tbaa !94
  %1300 = getelementptr inbounds %struct.BodyPoint, ptr %1277, i64 0, i32 4, i64 1
  store float 0.000000e+00, ptr %1300, align 4, !tbaa !94
  store float 0.000000e+00, ptr %1298, align 8, !tbaa !94
  %1301 = getelementptr inbounds %struct.BodyPoint, ptr %1277, i64 0, i32 7
  store float %1287, ptr %1301, align 4, !tbaa !94
  %1302 = getelementptr inbounds %struct.BodyPoint, ptr %1277, i64 0, i32 7, i64 1
  store float %1288, ptr %1302, align 4, !tbaa !94
  %1303 = getelementptr inbounds %struct.BodyPoint, ptr %1277, i64 0, i32 7, i64 2
  store float %1290, ptr %1303, align 4, !tbaa !94
  %1304 = getelementptr inbounds %struct.BodyPoint, ptr %1277, i64 0, i32 8
  %1305 = add nuw nsw i64 %1276, 1
  %1306 = getelementptr inbounds %struct.BodyPoint, ptr %1277, i64 1
  %1307 = icmp eq i64 %1305, %1274
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %1304, i8 0, i64 36, i1 false)
  br i1 %1307, label %1308, label %1275, !llvm.loop !188

1308:                                             ; preds = %1275, %1269
  %1309 = getelementptr inbounds %struct.SoftBody, ptr %35, i64 0, i32 44
  %1310 = load ptr, ptr %1309, align 8, !tbaa !88
  %1311 = icmp eq ptr %1310, null
  br i1 %1311, label %1334, label %1312

1312:                                             ; preds = %1308
  %1313 = load ptr, ptr %1310, align 8, !tbaa !89
  %1314 = icmp eq ptr %1313, null
  br i1 %1314, label %1317, label %1315

1315:                                             ; preds = %1312
  call void @BLI_ghash_free(ptr noundef nonnull %1313, ptr noundef null, ptr noundef nonnull @ccd_mesh_free) #13
  %1316 = load ptr, ptr %1309, align 8, !tbaa !88
  store ptr null, ptr %1316, align 8, !tbaa !89
  br label %1317

1317:                                             ; preds = %1315, %1312
  %1318 = load ptr, ptr %1309, align 8, !tbaa !88
  %1319 = getelementptr inbounds %struct.SBScratch, ptr %1318, i64 0, i32 3
  %1320 = load ptr, ptr %1319, align 8, !tbaa !92
  %1321 = icmp eq ptr %1320, null
  br i1 %1321, label %1324, label %1322

1322:                                             ; preds = %1317
  %1323 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %1323(ptr noundef nonnull %1320) #13
  br label %1324

1324:                                             ; preds = %1322, %1317
  %1325 = load ptr, ptr %1309, align 8, !tbaa !88
  %1326 = getelementptr inbounds %struct.SBScratch, ptr %1325, i64 0, i32 7, i32 1
  %1327 = load ptr, ptr %1326, align 8, !tbaa !95
  %1328 = icmp eq ptr %1327, null
  br i1 %1328, label %1331, label %1329

1329:                                             ; preds = %1324
  %1330 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %1330(ptr noundef nonnull %1327) #13
  br label %1331

1331:                                             ; preds = %1329, %1324
  %1332 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %1333 = load ptr, ptr %1309, align 8, !tbaa !88
  call void %1332(ptr noundef %1333) #13
  store ptr null, ptr %1309, align 8, !tbaa !88
  br label %1334

1334:                                             ; preds = %1308, %1331
  br i1 %1234, label %1349, label %1335

1335:                                             ; preds = %1334
  %1336 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %1337 = call ptr %1336(i64 noundef 80, ptr noundef nonnull @.str.3) #13
  store ptr %1337, ptr %1309, align 8, !tbaa !88
  %1338 = call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.4) #13
  %1339 = load ptr, ptr %1309, align 8, !tbaa !88
  store ptr %1338, ptr %1339, align 8, !tbaa !89
  %1340 = getelementptr inbounds %struct.SBScratch, ptr %1339, i64 0, i32 3
  store ptr null, ptr %1340, align 8, !tbaa !92
  %1341 = getelementptr inbounds %struct.SBScratch, ptr %1339, i64 0, i32 4
  store i32 0, ptr %1341, align 8, !tbaa !93
  %1342 = getelementptr inbounds %struct.SBScratch, ptr %1339, i64 0, i32 6, i64 2
  store float 0x46293E5940000000, ptr %1342, align 8, !tbaa !94
  %1343 = getelementptr inbounds %struct.SBScratch, ptr %1339, i64 0, i32 6, i64 1
  store float 0x46293E5940000000, ptr %1343, align 4, !tbaa !94
  %1344 = getelementptr inbounds %struct.SBScratch, ptr %1339, i64 0, i32 6
  store float 0x46293E5940000000, ptr %1344, align 8, !tbaa !94
  %1345 = getelementptr inbounds %struct.SBScratch, ptr %1339, i64 0, i32 5, i64 2
  store float 0xC6293E5940000000, ptr %1345, align 4, !tbaa !94
  %1346 = getelementptr inbounds %struct.SBScratch, ptr %1339, i64 0, i32 5, i64 1
  store float 0xC6293E5940000000, ptr %1346, align 4, !tbaa !94
  %1347 = getelementptr inbounds %struct.SBScratch, ptr %1339, i64 0, i32 5
  store float 0xC6293E5940000000, ptr %1347, align 4, !tbaa !94
  %1348 = getelementptr inbounds %struct.SBScratch, ptr %1339, i64 0, i32 7, i32 1
  store ptr null, ptr %1348, align 8, !tbaa !95
  br label %1349

1349:                                             ; preds = %1334, %1335
  %1350 = load ptr, ptr %1309, align 8, !tbaa !88
  %1351 = getelementptr inbounds %struct.SBScratch, ptr %1350, i64 0, i32 1
  store i16 1, ptr %1351, align 8, !tbaa !189
  %1352 = getelementptr inbounds %struct.SoftBody, ptr %35, i64 0, i32 50
  store float 0.000000e+00, ptr %1352, align 4, !tbaa !94
  %1353 = getelementptr inbounds %struct.SoftBody, ptr %35, i64 0, i32 50, i64 1
  store float 0.000000e+00, ptr %1353, align 4, !tbaa !94
  %1354 = getelementptr inbounds %struct.SoftBody, ptr %35, i64 0, i32 50, i64 2
  store float 0.000000e+00, ptr %1354, align 4, !tbaa !94
  %1355 = getelementptr inbounds %struct.SoftBody, ptr %35, i64 0, i32 51
  call void @unit_m3(ptr noundef nonnull %1355) #13
  %1356 = getelementptr inbounds %struct.SoftBody, ptr %35, i64 0, i32 52
  call void @unit_m3(ptr noundef nonnull %1356) #13
  %1357 = load ptr, ptr %34, align 8, !tbaa !112
  %1358 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %1359 = load i32, ptr %1357, align 8, !tbaa !102
  %1360 = sext i32 %1359 to i64
  %1361 = shl nsw i64 %1360, 4
  %1362 = call ptr %1358(i64 noundef %1361, ptr noundef nonnull @.str.9) #13
  %1363 = getelementptr inbounds %struct.SoftBody, ptr %1357, i64 0, i32 44
  %1364 = load ptr, ptr %1363, align 8, !tbaa !88
  %1365 = getelementptr inbounds %struct.SBScratch, ptr %1364, i64 0, i32 7, i32 1
  store ptr %1362, ptr %1365, align 8, !tbaa !95
  %1366 = load i32, ptr %1357, align 8, !tbaa !102
  %1367 = icmp sgt i32 %1366, 0
  br i1 %1367, label %1368, label %1418

1368:                                             ; preds = %1349
  %1369 = load ptr, ptr %34, align 8, !tbaa !112
  %1370 = getelementptr inbounds %struct.SoftBody, ptr %1369, i64 0, i32 2
  %1371 = load ptr, ptr %1370, align 8, !tbaa !101
  %1372 = icmp eq ptr %1, null
  br label %1373

1373:                                             ; preds = %1368, %1410
  %1374 = phi i32 [ 0, %1368 ], [ %1413, %1410 ]
  %1375 = phi float [ 0.000000e+00, %1368 ], [ %1412, %1410 ]
  %1376 = phi ptr [ %1371, %1368 ], [ %1415, %1410 ]
  %1377 = phi ptr [ %1362, %1368 ], [ %1414, %1410 ]
  %1378 = phi float [ 0.000000e+00, %1368 ], [ %1394, %1410 ]
  %1379 = phi float [ 0.000000e+00, %1368 ], [ %1392, %1410 ]
  %1380 = phi float [ 0.000000e+00, %1368 ], [ %1390, %1410 ]
  %1381 = getelementptr inbounds %struct.BodyPoint, ptr %1376, i64 0, i32 3
  %1382 = load float, ptr %1381, align 4, !tbaa !94
  store float %1382, ptr %1377, align 4, !tbaa !94
  %1383 = getelementptr inbounds %struct.BodyPoint, ptr %1376, i64 0, i32 3, i64 1
  %1384 = load float, ptr %1383, align 4, !tbaa !94
  %1385 = getelementptr inbounds float, ptr %1377, i64 1
  store float %1384, ptr %1385, align 4, !tbaa !94
  %1386 = getelementptr inbounds %struct.BodyPoint, ptr %1376, i64 0, i32 3, i64 2
  %1387 = load float, ptr %1386, align 4, !tbaa !94
  %1388 = getelementptr inbounds float, ptr %1377, i64 2
  store float %1387, ptr %1388, align 4, !tbaa !94
  %1389 = load float, ptr %1381, align 4, !tbaa !94
  %1390 = fadd float %1380, %1389
  %1391 = load float, ptr %1383, align 4, !tbaa !94
  %1392 = fadd float %1379, %1391
  %1393 = load float, ptr %1386, align 4, !tbaa !94
  %1394 = fadd float %1378, %1393
  br i1 %1372, label %1408, label %1395

1395:                                             ; preds = %1373
  %1396 = load ptr, ptr %34, align 8, !tbaa !112
  %1397 = icmp eq ptr %1396, null
  %1398 = icmp eq ptr %1376, null
  %1399 = or i1 %1398, %1397
  br i1 %1399, label %1406, label %1400

1400:                                             ; preds = %1395
  %1401 = getelementptr inbounds %struct.BodyPoint, ptr %1376, i64 0, i32 20
  %1402 = load float, ptr %1401, align 4, !tbaa !190
  %1403 = getelementptr inbounds %struct.SoftBody, ptr %1396, i64 0, i32 7
  %1404 = load float, ptr %1403, align 4, !tbaa !44
  %1405 = fmul float %1402, %1404
  br label %1406

1406:                                             ; preds = %1400, %1395
  %1407 = phi float [ %1405, %1400 ], [ undef, %1395 ]
  br i1 %1399, label %1408, label %1410

1408:                                             ; preds = %1406, %1373
  %1409 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %1410

1410:                                             ; preds = %1408, %1406
  %1411 = phi float [ %1407, %1406 ], [ 1.000000e+00, %1408 ]
  %1412 = fadd float %1375, %1411
  %1413 = add nuw nsw i32 %1374, 1
  %1414 = getelementptr inbounds %struct.ReferenceVert, ptr %1377, i64 1
  %1415 = getelementptr inbounds %struct.BodyPoint, ptr %1376, i64 1
  %1416 = load i32, ptr %1357, align 8, !tbaa !102
  %1417 = icmp slt i32 %1413, %1416
  br i1 %1417, label %1373, label %1418, !llvm.loop !191

1418:                                             ; preds = %1410, %1349
  %1419 = phi float [ 0.000000e+00, %1349 ], [ %1390, %1410 ]
  %1420 = phi float [ 0.000000e+00, %1349 ], [ %1392, %1410 ]
  %1421 = phi float [ 0.000000e+00, %1349 ], [ %1394, %1410 ]
  %1422 = phi float [ 0.000000e+00, %1349 ], [ %1412, %1410 ]
  %1423 = fdiv float 1.000000e+00, %1422
  %1424 = fmul float %1419, %1423
  %1425 = fmul float %1420, %1423
  %1426 = fmul float %1421, %1423
  %1427 = load ptr, ptr %1363, align 8, !tbaa !88
  %1428 = getelementptr inbounds %struct.SBScratch, ptr %1427, i64 0, i32 7
  store float %1424, ptr %1428, align 4, !tbaa !94
  %1429 = getelementptr inbounds %struct.SBScratch, ptr %1427, i64 0, i32 7, i32 0, i64 1
  store float %1425, ptr %1429, align 4, !tbaa !94
  %1430 = getelementptr inbounds %struct.SBScratch, ptr %1427, i64 0, i32 7, i32 0, i64 2
  store float %1426, ptr %1430, align 4, !tbaa !94
  call void @SB_estimate_transform(ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null)
  call void @SB_estimate_transform(ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null)
  %1431 = load i16, ptr %80, align 8, !tbaa !120
  %1432 = icmp eq i16 %1431, 1
  br i1 %1432, label %1433, label %1477

1433:                                             ; preds = %1418
  %1434 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 104
  %1435 = load i16, ptr %1434, align 2, !tbaa !119
  %1436 = and i16 %1435, 1024
  %1437 = icmp eq i16 %1436, 0
  br i1 %1437, label %1477, label %1438

1438:                                             ; preds = %1433
  %1439 = load ptr, ptr %34, align 8, !tbaa !112
  %1440 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %1441 = load ptr, ptr %1440, align 8, !tbaa !121
  %1442 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %1443 = getelementptr inbounds %struct.Mesh, ptr %1441, i64 0, i32 28
  %1444 = load i32, ptr %1443, align 8, !tbaa !151
  %1445 = sext i32 %1444 to i64
  %1446 = shl nsw i64 %1445, 5
  %1447 = call ptr %1442(i64 noundef %1446, ptr noundef nonnull @.str.11) #13
  %1448 = getelementptr inbounds %struct.SoftBody, ptr %1439, i64 0, i32 44
  %1449 = load ptr, ptr %1448, align 8, !tbaa !88
  %1450 = getelementptr inbounds %struct.SBScratch, ptr %1449, i64 0, i32 3
  store ptr %1447, ptr %1450, align 8, !tbaa !92
  %1451 = load i32, ptr %1443, align 8, !tbaa !151
  %1452 = icmp sgt i32 %1451, 0
  br i1 %1452, label %1453, label %1475

1453:                                             ; preds = %1438
  %1454 = getelementptr inbounds %struct.Mesh, ptr %1441, i64 0, i32 12
  %1455 = load ptr, ptr %1454, align 8, !tbaa !150
  br label %1456

1456:                                             ; preds = %1453, %1456
  %1457 = phi i32 [ %1471, %1456 ], [ 0, %1453 ]
  %1458 = phi ptr [ %1473, %1456 ], [ %1447, %1453 ]
  %1459 = phi ptr [ %1472, %1456 ], [ %1455, %1453 ]
  %1460 = load i32, ptr %1459, align 4, !tbaa !156
  store i32 %1460, ptr %1458, align 4, !tbaa !192
  %1461 = getelementptr inbounds %struct.MFace, ptr %1459, i64 0, i32 1
  %1462 = load i32, ptr %1461, align 4, !tbaa !158
  %1463 = getelementptr inbounds %struct.BodyFace, ptr %1458, i64 0, i32 1
  store i32 %1462, ptr %1463, align 4, !tbaa !194
  %1464 = getelementptr inbounds %struct.MFace, ptr %1459, i64 0, i32 2
  %1465 = load i32, ptr %1464, align 4, !tbaa !157
  %1466 = getelementptr inbounds %struct.BodyFace, ptr %1458, i64 0, i32 2
  store i32 %1465, ptr %1466, align 4, !tbaa !195
  %1467 = getelementptr inbounds %struct.MFace, ptr %1459, i64 0, i32 3
  %1468 = load i32, ptr %1467, align 4, !tbaa !152
  %1469 = getelementptr inbounds %struct.BodyFace, ptr %1458, i64 0, i32 3
  store i32 %1468, ptr %1469, align 4, !tbaa !196
  %1470 = getelementptr inbounds %struct.BodyFace, ptr %1458, i64 0, i32 4
  %1471 = add nuw nsw i32 %1457, 1
  %1472 = getelementptr inbounds %struct.MFace, ptr %1459, i64 1
  %1473 = getelementptr inbounds %struct.BodyFace, ptr %1458, i64 1
  %1474 = icmp eq i32 %1471, %1451
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %1470, i8 0, i64 14, i1 false)
  br i1 %1474, label %1475, label %1456, !llvm.loop !197

1475:                                             ; preds = %1456, %1438
  %1476 = getelementptr inbounds %struct.SBScratch, ptr %1449, i64 0, i32 4
  store i32 %1451, ptr %1476, align 8, !tbaa !93
  br label %1477

1477:                                             ; preds = %1475, %1433, %1418, %76, %62, %57
  %1478 = load i32, ptr %35, align 8, !tbaa !102
  %1479 = icmp eq i32 %1478, 0
  br i1 %1479, label %2767, label %1480

1480:                                             ; preds = %1477
  %1481 = load i32, ptr %32, align 4, !tbaa !118
  %1482 = icmp eq i32 %56, %1481
  br i1 %1482, label %1483, label %1523

1483:                                             ; preds = %1480
  %1484 = call i32 @BKE_ptcache_id_reset(ptr noundef %0, ptr noundef nonnull %30, i32 noundef 2) #13
  %1485 = load ptr, ptr %43, align 8, !tbaa !101
  %1486 = icmp ne ptr %1485, null
  %1487 = icmp sgt i32 %4, 0
  %1488 = and i1 %1487, %1486
  br i1 %1488, label %1489, label %1518

1489:                                             ; preds = %1483
  %1490 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %1491 = zext i32 %4 to i64
  br label %1492

1492:                                             ; preds = %1492, %1489
  %1493 = phi i64 [ 0, %1489 ], [ %1515, %1492 ]
  %1494 = phi ptr [ %1485, %1489 ], [ %1516, %1492 ]
  %1495 = getelementptr inbounds %struct.BodyPoint, ptr %1494, i64 0, i32 1
  %1496 = load float, ptr %1495, align 4, !tbaa !94
  store float %1496, ptr %1494, align 4, !tbaa !94
  %1497 = getelementptr inbounds %struct.BodyPoint, ptr %1494, i64 0, i32 1, i64 1
  %1498 = load float, ptr %1497, align 4, !tbaa !94
  %1499 = getelementptr inbounds float, ptr %1494, i64 1
  store float %1498, ptr %1499, align 4, !tbaa !94
  %1500 = getelementptr inbounds %struct.BodyPoint, ptr %1494, i64 0, i32 1, i64 2
  %1501 = load float, ptr %1500, align 4, !tbaa !94
  %1502 = getelementptr inbounds float, ptr %1494, i64 2
  store float %1501, ptr %1502, align 4, !tbaa !94
  %1503 = getelementptr inbounds [3 x float], ptr %3, i64 %1493
  %1504 = load float, ptr %1503, align 4, !tbaa !94
  store float %1504, ptr %1495, align 4, !tbaa !94
  %1505 = getelementptr inbounds float, ptr %1503, i64 1
  %1506 = load float, ptr %1505, align 4, !tbaa !94
  store float %1506, ptr %1497, align 4, !tbaa !94
  %1507 = getelementptr inbounds float, ptr %1503, i64 2
  %1508 = load float, ptr %1507, align 4, !tbaa !94
  store float %1508, ptr %1500, align 4, !tbaa !94
  call void @mul_m4_v3(ptr noundef nonnull %1490, ptr noundef nonnull %1495) #13
  %1509 = getelementptr inbounds %struct.BodyPoint, ptr %1494, i64 0, i32 2
  %1510 = load float, ptr %1495, align 4, !tbaa !94
  store float %1510, ptr %1509, align 4, !tbaa !94
  %1511 = load float, ptr %1497, align 4, !tbaa !94
  %1512 = getelementptr inbounds %struct.BodyPoint, ptr %1494, i64 0, i32 2, i64 1
  store float %1511, ptr %1512, align 4, !tbaa !94
  %1513 = load float, ptr %1500, align 4, !tbaa !94
  %1514 = getelementptr inbounds %struct.BodyPoint, ptr %1494, i64 0, i32 2, i64 2
  store float %1513, ptr %1514, align 4, !tbaa !94
  %1515 = add nuw nsw i64 %1493, 1
  %1516 = getelementptr inbounds %struct.BodyPoint, ptr %1494, i64 1
  %1517 = icmp eq i64 %1515, %1491
  br i1 %1517, label %1518, label %1492, !llvm.loop !187

1518:                                             ; preds = %1492, %1483
  call void @BKE_ptcache_validate(ptr noundef %37, i32 noundef %56) #13
  %1519 = getelementptr inbounds %struct.PointCache, ptr %37, i64 0, i32 2
  %1520 = load i32, ptr %1519, align 8, !tbaa !198
  %1521 = and i32 %1520, -259
  store i32 %1521, ptr %1519, align 8, !tbaa !198
  %1522 = getelementptr inbounds %struct.SoftBody, ptr %35, i64 0, i32 53
  store i32 %56, ptr %1522, align 4, !tbaa !100
  br label %2767

1523:                                             ; preds = %1480
  %1524 = sitofp i32 %56 to float
  %1525 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 8
  %1526 = load float, ptr %1525, align 4, !tbaa !199
  %1527 = fadd float %1526, %1524
  %1528 = call i32 @BKE_ptcache_read(ptr noundef nonnull %30, float noundef %1527) #13
  %1529 = add i32 %1528, -1
  %1530 = icmp ult i32 %1529, 2
  br i1 %1530, label %1531, label %1583

1531:                                             ; preds = %1523
  %1532 = icmp eq i32 %1528, 2
  %1533 = getelementptr inbounds %struct.SoftBody, ptr %35, i64 0, i32 27
  %1534 = load i16, ptr %1533, align 4, !tbaa !200
  %1535 = load ptr, ptr %34, align 8, !tbaa !112
  %1536 = icmp eq ptr %1535, null
  br i1 %1536, label %1573, label %1537

1537:                                             ; preds = %1531
  %1538 = getelementptr inbounds %struct.SoftBody, ptr %1535, i64 0, i32 2
  %1539 = load ptr, ptr %1538, align 8, !tbaa !101
  %1540 = getelementptr inbounds %struct.SoftBody, ptr %1535, i64 0, i32 28
  %1541 = load i16, ptr %1540, align 2, !tbaa !97
  %1542 = and i16 %1541, 4
  %1543 = icmp eq i16 %1542, 0
  br i1 %1543, label %1548, label %1544

1544:                                             ; preds = %1537
  %1545 = getelementptr inbounds %struct.SoftBody, ptr %1535, i64 0, i32 50
  %1546 = getelementptr inbounds %struct.SoftBody, ptr %1535, i64 0, i32 51
  %1547 = getelementptr inbounds %struct.SoftBody, ptr %1535, i64 0, i32 52
  call void @SB_estimate_transform(ptr noundef %1, ptr noundef nonnull %1545, ptr noundef nonnull %1546, ptr noundef nonnull %1547)
  br label %1548

1548:                                             ; preds = %1544, %1537
  %1549 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 50
  %1550 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %1551 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %1549, ptr noundef nonnull %1550) #13
  %1552 = icmp sgt i32 %4, 0
  br i1 %1552, label %1553, label %1573

1553:                                             ; preds = %1548
  %1554 = icmp eq i16 %1534, 0
  %1555 = zext nneg i32 %4 to i64
  br label %1556

1556:                                             ; preds = %1569, %1553
  %1557 = phi i64 [ 0, %1553 ], [ %1570, %1569 ]
  %1558 = phi ptr [ %1539, %1553 ], [ %1571, %1569 ]
  %1559 = getelementptr inbounds [3 x float], ptr %3, i64 %1557
  %1560 = getelementptr inbounds %struct.BodyPoint, ptr %1558, i64 0, i32 3
  %1561 = load float, ptr %1560, align 4, !tbaa !94
  store float %1561, ptr %1559, align 4, !tbaa !94
  %1562 = getelementptr inbounds %struct.BodyPoint, ptr %1558, i64 0, i32 3, i64 1
  %1563 = load float, ptr %1562, align 4, !tbaa !94
  %1564 = getelementptr inbounds float, ptr %1559, i64 1
  store float %1563, ptr %1564, align 4, !tbaa !94
  %1565 = getelementptr inbounds %struct.BodyPoint, ptr %1558, i64 0, i32 3, i64 2
  %1566 = load float, ptr %1565, align 4, !tbaa !94
  %1567 = getelementptr inbounds float, ptr %1559, i64 2
  store float %1566, ptr %1567, align 4, !tbaa !94
  br i1 %1554, label %1568, label %1569

1568:                                             ; preds = %1556
  call void @mul_m4_v3(ptr noundef nonnull %1549, ptr noundef nonnull %1559) #13
  br label %1569

1569:                                             ; preds = %1568, %1556
  %1570 = add nuw nsw i64 %1557, 1
  %1571 = getelementptr inbounds %struct.BodyPoint, ptr %1558, i64 1
  %1572 = icmp eq i64 %1570, %1555
  br i1 %1572, label %1573, label %1556, !llvm.loop !201

1573:                                             ; preds = %1569, %1531, %1548
  call void @BKE_ptcache_validate(ptr noundef %37, i32 noundef %56) #13
  br i1 %1532, label %1574, label %1581

1574:                                             ; preds = %1573
  %1575 = getelementptr inbounds %struct.PointCache, ptr %37, i64 0, i32 2
  %1576 = load i32, ptr %1575, align 8, !tbaa !198
  %1577 = and i32 %1576, 258
  %1578 = icmp eq i32 %1577, 0
  br i1 %1578, label %1581, label %1579

1579:                                             ; preds = %1574
  %1580 = call i32 @BKE_ptcache_write(ptr noundef nonnull %30, i32 noundef %56) #13
  br label %1581

1581:                                             ; preds = %1579, %1574, %1573
  %1582 = getelementptr inbounds %struct.SoftBody, ptr %35, i64 0, i32 53
  store i32 %56, ptr %1582, align 4, !tbaa !100
  br label %2767

1583:                                             ; preds = %1523
  %1584 = icmp eq i32 %1528, 3
  br i1 %1584, label %1591, label %1585

1585:                                             ; preds = %1583
  %1586 = getelementptr inbounds %struct.PointCache, ptr %37, i64 0, i32 2
  %1587 = load i32, ptr %1586, align 8, !tbaa !198
  %1588 = and i32 %1587, 1
  %1589 = icmp eq i32 %1588, 0
  br i1 %1589, label %1591, label %1590

1590:                                             ; preds = %1585
  call void @BKE_ptcache_invalidate(ptr noundef %37) #13
  br label %2767

1591:                                             ; preds = %1583, %1585
  %1592 = getelementptr inbounds %struct.SoftBody, ptr %35, i64 0, i32 53
  %1593 = load i32, ptr %1592, align 4, !tbaa !100
  %1594 = add nsw i32 %1593, 1
  %1595 = icmp eq i32 %56, %1594
  br i1 %1595, label %1596, label %2767

1596:                                             ; preds = %1591
  %1597 = load i32, ptr %39, align 8, !tbaa !116
  %1598 = load i32, ptr %32, align 4, !tbaa !118
  %1599 = icmp eq i32 %1597, %1598
  br i1 %1599, label %1600, label %1611

1600:                                             ; preds = %1596
  %1601 = getelementptr inbounds %struct.PointCache, ptr %37, i64 0, i32 2
  %1602 = load i32, ptr %1601, align 8, !tbaa !198
  %1603 = and i32 %1602, 2
  %1604 = icmp eq i32 %1603, 0
  br i1 %1604, label %1605, label %1609

1605:                                             ; preds = %1600
  %1606 = getelementptr inbounds %struct.PointCache, ptr %37, i64 0, i32 8
  %1607 = load i32, ptr %1606, align 8, !tbaa !202
  %1608 = icmp eq i32 %1607, 0
  br i1 %1608, label %1609, label %1611

1609:                                             ; preds = %1605, %1600
  %1610 = call i32 @BKE_ptcache_write(ptr noundef nonnull %30, i32 noundef %1598) #13
  br label %1611

1611:                                             ; preds = %1596, %1605, %1609
  %1612 = load ptr, ptr %43, align 8, !tbaa !101
  %1613 = icmp ne ptr %1612, null
  %1614 = icmp sgt i32 %4, 0
  %1615 = and i1 %1614, %1613
  br i1 %1615, label %1616, label %1645

1616:                                             ; preds = %1611
  %1617 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %1618 = zext i32 %4 to i64
  br label %1619

1619:                                             ; preds = %1619, %1616
  %1620 = phi i64 [ 0, %1616 ], [ %1642, %1619 ]
  %1621 = phi ptr [ %1612, %1616 ], [ %1643, %1619 ]
  %1622 = getelementptr inbounds %struct.BodyPoint, ptr %1621, i64 0, i32 1
  %1623 = load float, ptr %1622, align 4, !tbaa !94
  store float %1623, ptr %1621, align 4, !tbaa !94
  %1624 = getelementptr inbounds %struct.BodyPoint, ptr %1621, i64 0, i32 1, i64 1
  %1625 = load float, ptr %1624, align 4, !tbaa !94
  %1626 = getelementptr inbounds float, ptr %1621, i64 1
  store float %1625, ptr %1626, align 4, !tbaa !94
  %1627 = getelementptr inbounds %struct.BodyPoint, ptr %1621, i64 0, i32 1, i64 2
  %1628 = load float, ptr %1627, align 4, !tbaa !94
  %1629 = getelementptr inbounds float, ptr %1621, i64 2
  store float %1628, ptr %1629, align 4, !tbaa !94
  %1630 = getelementptr inbounds [3 x float], ptr %3, i64 %1620
  %1631 = load float, ptr %1630, align 4, !tbaa !94
  store float %1631, ptr %1622, align 4, !tbaa !94
  %1632 = getelementptr inbounds float, ptr %1630, i64 1
  %1633 = load float, ptr %1632, align 4, !tbaa !94
  store float %1633, ptr %1624, align 4, !tbaa !94
  %1634 = getelementptr inbounds float, ptr %1630, i64 2
  %1635 = load float, ptr %1634, align 4, !tbaa !94
  store float %1635, ptr %1627, align 4, !tbaa !94
  call void @mul_m4_v3(ptr noundef nonnull %1617, ptr noundef nonnull %1622) #13
  %1636 = getelementptr inbounds %struct.BodyPoint, ptr %1621, i64 0, i32 2
  %1637 = load float, ptr %1622, align 4, !tbaa !94
  store float %1637, ptr %1636, align 4, !tbaa !94
  %1638 = load float, ptr %1624, align 4, !tbaa !94
  %1639 = getelementptr inbounds %struct.BodyPoint, ptr %1621, i64 0, i32 2, i64 1
  store float %1638, ptr %1639, align 4, !tbaa !94
  %1640 = load float, ptr %1627, align 4, !tbaa !94
  %1641 = getelementptr inbounds %struct.BodyPoint, ptr %1621, i64 0, i32 2, i64 2
  store float %1640, ptr %1641, align 4, !tbaa !94
  %1642 = add nuw nsw i64 %1620, 1
  %1643 = getelementptr inbounds %struct.BodyPoint, ptr %1621, i64 1
  %1644 = icmp eq i64 %1642, %1618
  br i1 %1644, label %1645, label %1619, !llvm.loop !187

1645:                                             ; preds = %1619, %1611
  %1646 = sitofp i32 %41 to float
  %1647 = load float, ptr %31, align 4, !tbaa !94
  %1648 = fmul float %1647, %1646
  %1649 = call double @PIL_check_seconds_timer() #13
  %1650 = fcmp olt float %1648, 0.000000e+00
  %1651 = fcmp ogt float %1648, 1.050000e+01
  %1652 = or i1 %1650, %1651
  br i1 %1652, label %2729, label %1653

1653:                                             ; preds = %1645
  %1654 = getelementptr inbounds %struct.SoftBody, ptr %35, i64 0, i32 44
  %1655 = load ptr, ptr %1654, align 8, !tbaa !88
  %1656 = load ptr, ptr %1655, align 8, !tbaa !89
  %1657 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 5
  %1658 = icmp ne ptr %1656, null
  %1659 = icmp ne ptr %1, null
  %1660 = and i1 %1659, %1658
  br i1 %1660, label %1661, label %2046

1661:                                             ; preds = %1653
  %1662 = load ptr, ptr %1657, align 8, !tbaa !34
  %1663 = icmp eq ptr %1662, null
  br i1 %1663, label %2046, label %1664

1664:                                             ; preds = %1661
  %1665 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 52
  br label %1666

1666:                                             ; preds = %1664, %1681
  %1667 = phi ptr [ %1662, %1664 ], [ %1682, %1681 ]
  %1668 = getelementptr inbounds %struct.Base, ptr %1667, i64 0, i32 7
  %1669 = load ptr, ptr %1668, align 8, !tbaa !203
  %1670 = getelementptr inbounds %struct.Object, ptr %1669, i64 0, i32 3
  %1671 = load i16, ptr %1670, align 8, !tbaa !120
  %1672 = icmp eq i16 %1671, 1
  br i1 %1672, label %1673, label %1681

1673:                                             ; preds = %1666
  %1674 = getelementptr inbounds %struct.Base, ptr %1667, i64 0, i32 2
  %1675 = load i32, ptr %1674, align 8, !tbaa !205
  %1676 = load i32, ptr %1665, align 8, !tbaa !206
  %1677 = and i32 %1676, %1675
  %1678 = icmp eq i32 %1677, 0
  %1679 = icmp eq ptr %1669, %1
  %1680 = or i1 %1678, %1679
  br i1 %1680, label %1681, label %1684

1681:                                             ; preds = %2041, %1666, %1673, %1684, %1688, %1692, %1695, %1698, %1702, %1706, %1709, %1808
  %1682 = load ptr, ptr %1667, align 8, !tbaa !34
  %1683 = icmp eq ptr %1682, null
  br i1 %1683, label %2046, label %1666, !llvm.loop !207

1684:                                             ; preds = %1673
  %1685 = getelementptr inbounds %struct.Object, ptr %1669, i64 0, i32 110
  %1686 = load ptr, ptr %1685, align 8, !tbaa !208
  %1687 = icmp eq ptr %1686, null
  br i1 %1687, label %1681, label %1688

1688:                                             ; preds = %1684
  %1689 = getelementptr inbounds %struct.PartDeflect, ptr %1686, i64 0, i32 1
  %1690 = load i16, ptr %1689, align 4, !tbaa !209
  %1691 = icmp eq i16 %1690, 0
  br i1 %1691, label %1681, label %1692

1692:                                             ; preds = %1688
  %1693 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %1656, ptr noundef %1669) #13
  %1694 = icmp eq ptr %1693, null
  br i1 %1694, label %1681, label %1695

1695:                                             ; preds = %1692
  %1696 = call ptr @modifiers_findByType(ptr noundef %1669, i32 noundef 23) #13
  %1697 = icmp eq ptr %1696, null
  br i1 %1697, label %1681, label %1698

1698:                                             ; preds = %1695
  %1699 = getelementptr inbounds %struct.CollisionModifierData, ptr %1696, i64 0, i32 8
  %1700 = load i32, ptr %1699, align 8, !tbaa !211
  %1701 = icmp eq i32 %1700, 0
  br i1 %1701, label %1681, label %1702

1702:                                             ; preds = %1698
  %1703 = getelementptr inbounds %struct.CollisionModifierData, ptr %1696, i64 0, i32 9
  %1704 = load i32, ptr %1703, align 4, !tbaa !214
  %1705 = icmp eq i32 %1704, 0
  br i1 %1705, label %1681, label %1706

1706:                                             ; preds = %1702
  %1707 = load i32, ptr %1693, align 8, !tbaa !215
  %1708 = icmp eq i32 %1707, %1700
  br i1 %1708, label %1709, label %1681

1709:                                             ; preds = %1706
  %1710 = getelementptr inbounds %struct.ccd_Mesh, ptr %1693, i64 0, i32 1
  %1711 = load i32, ptr %1710, align 4, !tbaa !217
  %1712 = icmp eq i32 %1711, %1704
  br i1 %1712, label %1713, label %1681

1713:                                             ; preds = %1709
  %1714 = getelementptr inbounds %struct.ccd_Mesh, ptr %1693, i64 0, i32 7
  %1715 = getelementptr inbounds %struct.ccd_Mesh, ptr %1693, i64 0, i32 7, i64 2
  store float 0x46293E5940000000, ptr %1715, align 8, !tbaa !94
  %1716 = getelementptr inbounds %struct.ccd_Mesh, ptr %1693, i64 0, i32 7, i64 1
  store float 0x46293E5940000000, ptr %1716, align 4, !tbaa !94
  store float 0x46293E5940000000, ptr %1714, align 8, !tbaa !94
  %1717 = getelementptr inbounds %struct.ccd_Mesh, ptr %1693, i64 0, i32 8
  %1718 = getelementptr inbounds %struct.ccd_Mesh, ptr %1693, i64 0, i32 8, i64 2
  store float 0xC6293E5940000000, ptr %1718, align 4, !tbaa !94
  %1719 = getelementptr inbounds %struct.ccd_Mesh, ptr %1693, i64 0, i32 8, i64 1
  store float 0xC6293E5940000000, ptr %1719, align 4, !tbaa !94
  store float 0xC6293E5940000000, ptr %1717, align 4, !tbaa !94
  %1720 = load ptr, ptr %1685, align 8, !tbaa !208
  %1721 = getelementptr inbounds %struct.PartDeflect, ptr %1720, i64 0, i32 27
  %1722 = load float, ptr %1721, align 4, !tbaa !218
  %1723 = getelementptr inbounds %struct.PartDeflect, ptr %1720, i64 0, i32 28
  %1724 = load float, ptr %1723, align 8, !tbaa !219
  %1725 = fcmp ogt float %1722, %1724
  %1726 = select i1 %1725, float %1722, float %1724
  %1727 = getelementptr inbounds %struct.ccd_Mesh, ptr %1693, i64 0, i32 3
  %1728 = load ptr, ptr %1727, align 8, !tbaa !220
  %1729 = icmp eq ptr %1728, null
  br i1 %1729, label %1732, label %1730

1730:                                             ; preds = %1713
  %1731 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %1731(ptr noundef nonnull %1728) #13
  br label %1732

1732:                                             ; preds = %1730, %1713
  %1733 = getelementptr inbounds %struct.ccd_Mesh, ptr %1693, i64 0, i32 2
  %1734 = load ptr, ptr %1733, align 8, !tbaa !221
  store ptr %1734, ptr %1727, align 8, !tbaa !220
  %1735 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %1736 = getelementptr inbounds %struct.CollisionModifierData, ptr %1696, i64 0, i32 2
  %1737 = load ptr, ptr %1736, align 8, !tbaa !222
  %1738 = call ptr %1735(ptr noundef %1737) #13
  store ptr %1738, ptr %1733, align 8, !tbaa !221
  %1739 = load i32, ptr %1693, align 8, !tbaa !215
  %1740 = icmp sgt i32 %1739, 0
  br i1 %1740, label %1741, label %1808

1741:                                             ; preds = %1732
  %1742 = load ptr, ptr %1727, align 8, !tbaa !220
  %1743 = load float, ptr %1714, align 8, !tbaa !94
  %1744 = load float, ptr %1716, align 4, !tbaa !94
  %1745 = load float, ptr %1715, align 8, !tbaa !94
  %1746 = load float, ptr %1717, align 4, !tbaa !94
  %1747 = load float, ptr %1719, align 4, !tbaa !94
  %1748 = load float, ptr %1718, align 4, !tbaa !94
  %1749 = zext nneg i32 %1739 to i64
  br label %1750

1750:                                             ; preds = %1741, %1750
  %1751 = phi i64 [ 0, %1741 ], [ %1806, %1750 ]
  %1752 = phi float [ %1748, %1741 ], [ %1805, %1750 ]
  %1753 = phi float [ %1747, %1741 ], [ %1802, %1750 ]
  %1754 = phi float [ %1746, %1741 ], [ %1799, %1750 ]
  %1755 = phi float [ %1745, %1741 ], [ %1796, %1750 ]
  %1756 = phi float [ %1744, %1741 ], [ %1793, %1750 ]
  %1757 = phi float [ %1743, %1741 ], [ %1790, %1750 ]
  %1758 = getelementptr inbounds %struct.MVert, ptr %1738, i64 %1751
  %1759 = load float, ptr %1758, align 4, !tbaa !94
  %1760 = getelementptr inbounds float, ptr %1758, i64 1
  %1761 = load float, ptr %1760, align 4, !tbaa !94
  %1762 = getelementptr inbounds float, ptr %1758, i64 2
  %1763 = load float, ptr %1762, align 4, !tbaa !94
  %1764 = fsub float %1759, %1726
  %1765 = fcmp olt float %1757, %1764
  %1766 = select i1 %1765, float %1757, float %1764
  store float %1766, ptr %1714, align 8, !tbaa !94
  %1767 = fsub float %1761, %1726
  %1768 = fcmp olt float %1756, %1767
  %1769 = select i1 %1768, float %1756, float %1767
  store float %1769, ptr %1716, align 4, !tbaa !94
  %1770 = fsub float %1763, %1726
  %1771 = fcmp olt float %1755, %1770
  %1772 = select i1 %1771, float %1755, float %1770
  store float %1772, ptr %1715, align 8, !tbaa !94
  %1773 = fadd float %1726, %1759
  %1774 = fcmp ogt float %1754, %1773
  %1775 = select i1 %1774, float %1754, float %1773
  store float %1775, ptr %1717, align 4, !tbaa !94
  %1776 = fadd float %1726, %1761
  %1777 = fcmp ogt float %1753, %1776
  %1778 = select i1 %1777, float %1753, float %1776
  store float %1778, ptr %1719, align 4, !tbaa !94
  %1779 = fadd float %1726, %1763
  %1780 = fcmp ogt float %1752, %1779
  %1781 = select i1 %1780, float %1752, float %1779
  store float %1781, ptr %1718, align 4, !tbaa !94
  %1782 = getelementptr inbounds %struct.MVert, ptr %1742, i64 %1751
  %1783 = load float, ptr %1782, align 4, !tbaa !94
  %1784 = getelementptr inbounds float, ptr %1782, i64 1
  %1785 = load float, ptr %1784, align 4, !tbaa !94
  %1786 = getelementptr inbounds float, ptr %1782, i64 2
  %1787 = load float, ptr %1786, align 4, !tbaa !94
  %1788 = fsub float %1783, %1726
  %1789 = fcmp olt float %1766, %1788
  %1790 = select i1 %1789, float %1766, float %1788
  store float %1790, ptr %1714, align 8, !tbaa !94
  %1791 = fsub float %1785, %1726
  %1792 = fcmp olt float %1769, %1791
  %1793 = select i1 %1792, float %1769, float %1791
  store float %1793, ptr %1716, align 4, !tbaa !94
  %1794 = fsub float %1787, %1726
  %1795 = fcmp olt float %1772, %1794
  %1796 = select i1 %1795, float %1772, float %1794
  store float %1796, ptr %1715, align 8, !tbaa !94
  %1797 = fadd float %1726, %1783
  %1798 = fcmp ogt float %1775, %1797
  %1799 = select i1 %1798, float %1775, float %1797
  store float %1799, ptr %1717, align 4, !tbaa !94
  %1800 = fadd float %1726, %1785
  %1801 = fcmp ogt float %1778, %1800
  %1802 = select i1 %1801, float %1778, float %1800
  store float %1802, ptr %1719, align 4, !tbaa !94
  %1803 = fadd float %1726, %1787
  %1804 = fcmp ogt float %1781, %1803
  %1805 = select i1 %1804, float %1781, float %1803
  store float %1805, ptr %1718, align 4, !tbaa !94
  %1806 = add nuw nsw i64 %1751, 1
  %1807 = icmp eq i64 %1806, %1749
  br i1 %1807, label %1808, label %1750, !llvm.loop !223

1808:                                             ; preds = %1750, %1732
  %1809 = load i32, ptr %1710, align 4, !tbaa !217
  %1810 = icmp sgt i32 %1809, 0
  br i1 %1810, label %1811, label %1681

1811:                                             ; preds = %1808
  %1812 = getelementptr inbounds %struct.ccd_Mesh, ptr %1693, i64 0, i32 4
  %1813 = load ptr, ptr %1812, align 8, !tbaa !224
  %1814 = getelementptr inbounds %struct.ccd_Mesh, ptr %1693, i64 0, i32 6
  %1815 = load ptr, ptr %1814, align 8, !tbaa !225
  %1816 = load ptr, ptr %1733, align 8, !tbaa !221
  %1817 = load ptr, ptr %1727, align 8, !tbaa !220
  br label %1818

1818:                                             ; preds = %1811, %2041
  %1819 = phi i32 [ 0, %1811 ], [ %2044, %2041 ]
  %1820 = phi ptr [ %1815, %1811 ], [ %2042, %2041 ]
  %1821 = phi ptr [ %1813, %1811 ], [ %2043, %2041 ]
  %1822 = getelementptr inbounds %struct.ccdf_minmax, ptr %1820, i64 0, i32 2
  store float 0x46293E5940000000, ptr %1822, align 4, !tbaa !226
  %1823 = getelementptr inbounds %struct.ccdf_minmax, ptr %1820, i64 0, i32 1
  store float 0x46293E5940000000, ptr %1823, align 4, !tbaa !228
  store float 0x46293E5940000000, ptr %1820, align 4, !tbaa !229
  %1824 = getelementptr inbounds %struct.ccdf_minmax, ptr %1820, i64 0, i32 5
  store float 0xC6293E5940000000, ptr %1824, align 4, !tbaa !230
  %1825 = getelementptr inbounds %struct.ccdf_minmax, ptr %1820, i64 0, i32 4
  store float 0xC6293E5940000000, ptr %1825, align 4, !tbaa !231
  %1826 = getelementptr inbounds %struct.ccdf_minmax, ptr %1820, i64 0, i32 3
  store float 0xC6293E5940000000, ptr %1826, align 4, !tbaa !232
  %1827 = load i32, ptr %1821, align 4, !tbaa !156
  %1828 = zext i32 %1827 to i64
  %1829 = getelementptr inbounds %struct.MVert, ptr %1816, i64 %1828
  %1830 = load float, ptr %1829, align 4, !tbaa !94
  %1831 = getelementptr inbounds float, ptr %1829, i64 1
  %1832 = load float, ptr %1831, align 4, !tbaa !94
  %1833 = getelementptr inbounds float, ptr %1829, i64 2
  %1834 = load float, ptr %1833, align 4, !tbaa !94
  %1835 = fsub float %1830, %1726
  %1836 = fcmp ogt float %1835, 0x46293E5940000000
  %1837 = select i1 %1836, float 0x46293E5940000000, float %1835
  store float %1837, ptr %1820, align 4, !tbaa !229
  %1838 = fsub float %1832, %1726
  %1839 = fcmp ogt float %1838, 0x46293E5940000000
  %1840 = select i1 %1839, float 0x46293E5940000000, float %1838
  store float %1840, ptr %1823, align 4, !tbaa !228
  %1841 = fsub float %1834, %1726
  %1842 = fcmp ogt float %1841, 0x46293E5940000000
  %1843 = select i1 %1842, float 0x46293E5940000000, float %1841
  store float %1843, ptr %1822, align 4, !tbaa !226
  %1844 = fadd float %1726, %1830
  %1845 = fcmp olt float %1844, 0xC6293E5940000000
  %1846 = select i1 %1845, float 0xC6293E5940000000, float %1844
  store float %1846, ptr %1826, align 4, !tbaa !232
  %1847 = fadd float %1726, %1832
  %1848 = fcmp olt float %1847, 0xC6293E5940000000
  %1849 = select i1 %1848, float 0xC6293E5940000000, float %1847
  store float %1849, ptr %1825, align 4, !tbaa !231
  %1850 = fadd float %1726, %1834
  %1851 = fcmp olt float %1850, 0xC6293E5940000000
  %1852 = select i1 %1851, float 0xC6293E5940000000, float %1850
  store float %1852, ptr %1824, align 4, !tbaa !230
  %1853 = getelementptr inbounds %struct.MFace, ptr %1821, i64 0, i32 1
  %1854 = load i32, ptr %1853, align 4, !tbaa !158
  %1855 = zext i32 %1854 to i64
  %1856 = getelementptr inbounds %struct.MVert, ptr %1816, i64 %1855
  %1857 = load float, ptr %1856, align 4, !tbaa !94
  %1858 = getelementptr inbounds float, ptr %1856, i64 1
  %1859 = load float, ptr %1858, align 4, !tbaa !94
  %1860 = getelementptr inbounds float, ptr %1856, i64 2
  %1861 = load float, ptr %1860, align 4, !tbaa !94
  %1862 = fsub float %1857, %1726
  %1863 = fcmp olt float %1837, %1862
  %1864 = select i1 %1863, float %1837, float %1862
  store float %1864, ptr %1820, align 4, !tbaa !229
  %1865 = fsub float %1859, %1726
  %1866 = fcmp olt float %1840, %1865
  %1867 = select i1 %1866, float %1840, float %1865
  store float %1867, ptr %1823, align 4, !tbaa !228
  %1868 = fsub float %1861, %1726
  %1869 = fcmp olt float %1843, %1868
  %1870 = select i1 %1869, float %1843, float %1868
  store float %1870, ptr %1822, align 4, !tbaa !226
  %1871 = fadd float %1726, %1857
  %1872 = fcmp ogt float %1846, %1871
  %1873 = select i1 %1872, float %1846, float %1871
  store float %1873, ptr %1826, align 4, !tbaa !232
  %1874 = fadd float %1726, %1859
  %1875 = fcmp ogt float %1849, %1874
  %1876 = select i1 %1875, float %1849, float %1874
  store float %1876, ptr %1825, align 4, !tbaa !231
  %1877 = fadd float %1726, %1861
  %1878 = fcmp ogt float %1852, %1877
  %1879 = select i1 %1878, float %1852, float %1877
  store float %1879, ptr %1824, align 4, !tbaa !230
  %1880 = getelementptr inbounds %struct.MFace, ptr %1821, i64 0, i32 2
  %1881 = load i32, ptr %1880, align 4, !tbaa !157
  %1882 = zext i32 %1881 to i64
  %1883 = getelementptr inbounds %struct.MVert, ptr %1816, i64 %1882
  %1884 = load float, ptr %1883, align 4, !tbaa !94
  %1885 = getelementptr inbounds float, ptr %1883, i64 1
  %1886 = load float, ptr %1885, align 4, !tbaa !94
  %1887 = getelementptr inbounds float, ptr %1883, i64 2
  %1888 = load float, ptr %1887, align 4, !tbaa !94
  %1889 = fsub float %1884, %1726
  %1890 = fcmp olt float %1864, %1889
  %1891 = select i1 %1890, float %1864, float %1889
  store float %1891, ptr %1820, align 4, !tbaa !229
  %1892 = fsub float %1886, %1726
  %1893 = fcmp olt float %1867, %1892
  %1894 = select i1 %1893, float %1867, float %1892
  store float %1894, ptr %1823, align 4, !tbaa !228
  %1895 = fsub float %1888, %1726
  %1896 = fcmp olt float %1870, %1895
  %1897 = select i1 %1896, float %1870, float %1895
  store float %1897, ptr %1822, align 4, !tbaa !226
  %1898 = fadd float %1726, %1884
  %1899 = fcmp ogt float %1873, %1898
  %1900 = select i1 %1899, float %1873, float %1898
  store float %1900, ptr %1826, align 4, !tbaa !232
  %1901 = fadd float %1726, %1886
  %1902 = fcmp ogt float %1876, %1901
  %1903 = select i1 %1902, float %1876, float %1901
  store float %1903, ptr %1825, align 4, !tbaa !231
  %1904 = fadd float %1726, %1888
  %1905 = fcmp ogt float %1879, %1904
  %1906 = select i1 %1905, float %1879, float %1904
  store float %1906, ptr %1824, align 4, !tbaa !230
  %1907 = getelementptr inbounds %struct.MFace, ptr %1821, i64 0, i32 3
  %1908 = load i32, ptr %1907, align 4, !tbaa !152
  %1909 = icmp eq i32 %1908, 0
  br i1 %1909, label %1936, label %1910

1910:                                             ; preds = %1818
  %1911 = zext i32 %1908 to i64
  %1912 = getelementptr inbounds %struct.MVert, ptr %1816, i64 %1911
  %1913 = load float, ptr %1912, align 4, !tbaa !94
  %1914 = getelementptr inbounds float, ptr %1912, i64 1
  %1915 = load float, ptr %1914, align 4, !tbaa !94
  %1916 = getelementptr inbounds float, ptr %1912, i64 2
  %1917 = load float, ptr %1916, align 4, !tbaa !94
  %1918 = fsub float %1913, %1726
  %1919 = fcmp olt float %1891, %1918
  %1920 = select i1 %1919, float %1891, float %1918
  store float %1920, ptr %1820, align 4, !tbaa !229
  %1921 = fsub float %1915, %1726
  %1922 = fcmp olt float %1894, %1921
  %1923 = select i1 %1922, float %1894, float %1921
  store float %1923, ptr %1823, align 4, !tbaa !228
  %1924 = fsub float %1917, %1726
  %1925 = fcmp olt float %1897, %1924
  %1926 = select i1 %1925, float %1897, float %1924
  store float %1926, ptr %1822, align 4, !tbaa !226
  %1927 = fadd float %1726, %1913
  %1928 = fcmp ogt float %1900, %1927
  %1929 = select i1 %1928, float %1900, float %1927
  store float %1929, ptr %1826, align 4, !tbaa !232
  %1930 = fadd float %1726, %1915
  %1931 = fcmp ogt float %1903, %1930
  %1932 = select i1 %1931, float %1903, float %1930
  store float %1932, ptr %1825, align 4, !tbaa !231
  %1933 = fadd float %1726, %1917
  %1934 = fcmp ogt float %1906, %1933
  %1935 = select i1 %1934, float %1906, float %1933
  store float %1935, ptr %1824, align 4, !tbaa !230
  br label %1936

1936:                                             ; preds = %1910, %1818
  %1937 = getelementptr inbounds %struct.MVert, ptr %1817, i64 %1828
  %1938 = load float, ptr %1937, align 4, !tbaa !94
  %1939 = getelementptr inbounds float, ptr %1937, i64 1
  %1940 = load float, ptr %1939, align 4, !tbaa !94
  %1941 = getelementptr inbounds float, ptr %1937, i64 2
  %1942 = load float, ptr %1941, align 4, !tbaa !94
  %1943 = load float, ptr %1820, align 4, !tbaa !229
  %1944 = fsub float %1938, %1726
  %1945 = fcmp olt float %1943, %1944
  %1946 = select i1 %1945, float %1943, float %1944
  store float %1946, ptr %1820, align 4, !tbaa !229
  %1947 = load float, ptr %1823, align 4, !tbaa !228
  %1948 = fsub float %1940, %1726
  %1949 = fcmp olt float %1947, %1948
  %1950 = select i1 %1949, float %1947, float %1948
  store float %1950, ptr %1823, align 4, !tbaa !228
  %1951 = load float, ptr %1822, align 4, !tbaa !226
  %1952 = fsub float %1942, %1726
  %1953 = fcmp olt float %1951, %1952
  %1954 = select i1 %1953, float %1951, float %1952
  store float %1954, ptr %1822, align 4, !tbaa !226
  %1955 = load float, ptr %1826, align 4, !tbaa !232
  %1956 = fadd float %1726, %1938
  %1957 = fcmp ogt float %1955, %1956
  %1958 = select i1 %1957, float %1955, float %1956
  store float %1958, ptr %1826, align 4, !tbaa !232
  %1959 = load float, ptr %1825, align 4, !tbaa !231
  %1960 = fadd float %1726, %1940
  %1961 = fcmp ogt float %1959, %1960
  %1962 = select i1 %1961, float %1959, float %1960
  store float %1962, ptr %1825, align 4, !tbaa !231
  %1963 = load float, ptr %1824, align 4, !tbaa !230
  %1964 = fadd float %1726, %1942
  %1965 = fcmp ogt float %1963, %1964
  %1966 = select i1 %1965, float %1963, float %1964
  store float %1966, ptr %1824, align 4, !tbaa !230
  %1967 = getelementptr inbounds %struct.MVert, ptr %1817, i64 %1855
  %1968 = load float, ptr %1967, align 4, !tbaa !94
  %1969 = getelementptr inbounds float, ptr %1967, i64 1
  %1970 = load float, ptr %1969, align 4, !tbaa !94
  %1971 = getelementptr inbounds float, ptr %1967, i64 2
  %1972 = load float, ptr %1971, align 4, !tbaa !94
  %1973 = fsub float %1968, %1726
  %1974 = fcmp olt float %1946, %1973
  %1975 = select i1 %1974, float %1946, float %1973
  store float %1975, ptr %1820, align 4, !tbaa !229
  %1976 = fsub float %1970, %1726
  %1977 = fcmp olt float %1950, %1976
  %1978 = select i1 %1977, float %1950, float %1976
  store float %1978, ptr %1823, align 4, !tbaa !228
  %1979 = fsub float %1972, %1726
  %1980 = fcmp olt float %1954, %1979
  %1981 = select i1 %1980, float %1954, float %1979
  store float %1981, ptr %1822, align 4, !tbaa !226
  %1982 = fadd float %1726, %1968
  %1983 = fcmp ogt float %1958, %1982
  %1984 = select i1 %1983, float %1958, float %1982
  store float %1984, ptr %1826, align 4, !tbaa !232
  %1985 = fadd float %1726, %1970
  %1986 = fcmp ogt float %1962, %1985
  %1987 = select i1 %1986, float %1962, float %1985
  store float %1987, ptr %1825, align 4, !tbaa !231
  %1988 = fadd float %1726, %1972
  %1989 = fcmp ogt float %1966, %1988
  %1990 = select i1 %1989, float %1966, float %1988
  store float %1990, ptr %1824, align 4, !tbaa !230
  %1991 = getelementptr inbounds %struct.MVert, ptr %1817, i64 %1882
  %1992 = load float, ptr %1991, align 4, !tbaa !94
  %1993 = getelementptr inbounds float, ptr %1991, i64 1
  %1994 = load float, ptr %1993, align 4, !tbaa !94
  %1995 = getelementptr inbounds float, ptr %1991, i64 2
  %1996 = load float, ptr %1995, align 4, !tbaa !94
  %1997 = fsub float %1992, %1726
  %1998 = fcmp olt float %1975, %1997
  %1999 = select i1 %1998, float %1975, float %1997
  store float %1999, ptr %1820, align 4, !tbaa !229
  %2000 = fsub float %1994, %1726
  %2001 = fcmp olt float %1978, %2000
  %2002 = select i1 %2001, float %1978, float %2000
  store float %2002, ptr %1823, align 4, !tbaa !228
  %2003 = fsub float %1996, %1726
  %2004 = fcmp olt float %1981, %2003
  %2005 = select i1 %2004, float %1981, float %2003
  store float %2005, ptr %1822, align 4, !tbaa !226
  %2006 = fadd float %1726, %1992
  %2007 = fcmp ogt float %1984, %2006
  %2008 = select i1 %2007, float %1984, float %2006
  store float %2008, ptr %1826, align 4, !tbaa !232
  %2009 = fadd float %1726, %1994
  %2010 = fcmp ogt float %1987, %2009
  %2011 = select i1 %2010, float %1987, float %2009
  store float %2011, ptr %1825, align 4, !tbaa !231
  %2012 = fadd float %1726, %1996
  %2013 = fcmp ogt float %1990, %2012
  %2014 = select i1 %2013, float %1990, float %2012
  store float %2014, ptr %1824, align 4, !tbaa !230
  br i1 %1909, label %2041, label %2015

2015:                                             ; preds = %1936
  %2016 = zext i32 %1908 to i64
  %2017 = getelementptr inbounds %struct.MVert, ptr %1817, i64 %2016
  %2018 = load float, ptr %2017, align 4, !tbaa !94
  %2019 = getelementptr inbounds float, ptr %2017, i64 1
  %2020 = load float, ptr %2019, align 4, !tbaa !94
  %2021 = getelementptr inbounds float, ptr %2017, i64 2
  %2022 = load float, ptr %2021, align 4, !tbaa !94
  %2023 = fsub float %2018, %1726
  %2024 = fcmp olt float %1999, %2023
  %2025 = select i1 %2024, float %1999, float %2023
  store float %2025, ptr %1820, align 4, !tbaa !229
  %2026 = fsub float %2020, %1726
  %2027 = fcmp olt float %2002, %2026
  %2028 = select i1 %2027, float %2002, float %2026
  store float %2028, ptr %1823, align 4, !tbaa !228
  %2029 = fsub float %2022, %1726
  %2030 = fcmp olt float %2005, %2029
  %2031 = select i1 %2030, float %2005, float %2029
  store float %2031, ptr %1822, align 4, !tbaa !226
  %2032 = fadd float %1726, %2018
  %2033 = fcmp ogt float %2008, %2032
  %2034 = select i1 %2033, float %2008, float %2032
  store float %2034, ptr %1826, align 4, !tbaa !232
  %2035 = fadd float %1726, %2020
  %2036 = fcmp ogt float %2011, %2035
  %2037 = select i1 %2036, float %2011, float %2035
  store float %2037, ptr %1825, align 4, !tbaa !231
  %2038 = fadd float %1726, %2022
  %2039 = fcmp ogt float %2014, %2038
  %2040 = select i1 %2039, float %2014, float %2038
  store float %2040, ptr %1824, align 4, !tbaa !230
  br label %2041

2041:                                             ; preds = %2015, %1936
  %2042 = getelementptr inbounds %struct.ccdf_minmax, ptr %1820, i64 1
  %2043 = getelementptr inbounds %struct.MFace, ptr %1821, i64 1
  %2044 = add nuw nsw i32 %1819, 1
  %2045 = icmp eq i32 %2044, %1809
  br i1 %2045, label %1681, label %1818, !llvm.loop !233

2046:                                             ; preds = %1681, %1661, %1653
  %2047 = load ptr, ptr %1654, align 8, !tbaa !88
  %2048 = getelementptr inbounds %struct.SBScratch, ptr %2047, i64 0, i32 1
  %2049 = load i16, ptr %2048, align 8, !tbaa !189
  %2050 = icmp eq i16 %2049, 0
  br i1 %2050, label %2337, label %2051

2051:                                             ; preds = %2046
  %2052 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 52
  %2053 = load i32, ptr %2052, align 8, !tbaa !206
  %2054 = load ptr, ptr %1657, align 8, !tbaa !34
  %2055 = icmp eq ptr %2054, null
  br i1 %2055, label %2334, label %2056

2056:                                             ; preds = %2051, %2072
  %2057 = phi ptr [ %2073, %2072 ], [ %2054, %2051 ]
  %2058 = getelementptr inbounds %struct.Base, ptr %2057, i64 0, i32 2
  %2059 = load i32, ptr %2058, align 8, !tbaa !205
  %2060 = and i32 %2059, %2053
  %2061 = icmp eq i32 %2060, 0
  br i1 %2061, label %2072, label %2062

2062:                                             ; preds = %2056
  %2063 = getelementptr inbounds %struct.Base, ptr %2057, i64 0, i32 7
  %2064 = load ptr, ptr %2063, align 8, !tbaa !203
  %2065 = getelementptr inbounds %struct.Object, ptr %2064, i64 0, i32 110
  %2066 = load ptr, ptr %2065, align 8, !tbaa !208
  %2067 = icmp eq ptr %2066, null
  br i1 %2067, label %2072, label %2068

2068:                                             ; preds = %2062
  %2069 = getelementptr inbounds %struct.PartDeflect, ptr %2066, i64 0, i32 1
  %2070 = load i16, ptr %2069, align 4, !tbaa !209
  %2071 = icmp eq i16 %2070, 0
  br i1 %2071, label %2072, label %2075

2072:                                             ; preds = %2068, %2062, %2056
  %2073 = load ptr, ptr %2057, align 8, !tbaa !34
  %2074 = icmp eq ptr %2073, null
  br i1 %2074, label %2334, label %2056, !llvm.loop !234

2075:                                             ; preds = %2068
  %2076 = load ptr, ptr %2047, align 8, !tbaa !89
  %2077 = icmp eq ptr %2076, null
  br i1 %2077, label %2334, label %2078

2078:                                             ; preds = %2075
  %2079 = load ptr, ptr %1657, align 8, !tbaa !34
  %2080 = icmp eq ptr %2079, null
  br i1 %2080, label %2334, label %2081

2081:                                             ; preds = %2078, %2097
  %2082 = phi ptr [ %2098, %2097 ], [ %2079, %2078 ]
  %2083 = getelementptr inbounds %struct.Base, ptr %2082, i64 0, i32 7
  %2084 = load ptr, ptr %2083, align 8, !tbaa !203
  %2085 = getelementptr inbounds %struct.Object, ptr %2084, i64 0, i32 3
  %2086 = load i16, ptr %2085, align 8, !tbaa !120
  %2087 = icmp eq i16 %2086, 1
  br i1 %2087, label %2088, label %2097

2088:                                             ; preds = %2081
  %2089 = getelementptr inbounds %struct.Base, ptr %2082, i64 0, i32 2
  %2090 = load i32, ptr %2089, align 8, !tbaa !205
  %2091 = load i32, ptr %2052, align 8, !tbaa !206
  %2092 = and i32 %2091, %2090
  %2093 = icmp eq i32 %2092, 0
  %2094 = icmp eq ptr %2084, %1
  %2095 = and i1 %1659, %2094
  %2096 = or i1 %2093, %2095
  br i1 %2096, label %2097, label %2100

2097:                                             ; preds = %2081, %2088, %2100, %2104, %2108, %2332
  %2098 = load ptr, ptr %2082, align 8, !tbaa !34
  %2099 = icmp eq ptr %2098, null
  br i1 %2099, label %2334, label %2081, !llvm.loop !235

2100:                                             ; preds = %2088
  %2101 = getelementptr inbounds %struct.Object, ptr %2084, i64 0, i32 110
  %2102 = load ptr, ptr %2101, align 8, !tbaa !208
  %2103 = icmp eq ptr %2102, null
  br i1 %2103, label %2097, label %2104

2104:                                             ; preds = %2100
  %2105 = getelementptr inbounds %struct.PartDeflect, ptr %2102, i64 0, i32 1
  %2106 = load i16, ptr %2105, align 4, !tbaa !209
  %2107 = icmp eq i16 %2106, 0
  br i1 %2107, label %2097, label %2108

2108:                                             ; preds = %2104
  %2109 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %2076, ptr noundef %2084) #13
  %2110 = icmp eq ptr %2109, null
  br i1 %2110, label %2111, label %2097

2111:                                             ; preds = %2108
  %2112 = call ptr @modifiers_findByType(ptr noundef %2084, i32 noundef 23) #13
  %2113 = icmp eq ptr %2112, null
  br i1 %2113, label %2332, label %2114

2114:                                             ; preds = %2111
  %2115 = getelementptr inbounds %struct.CollisionModifierData, ptr %2112, i64 0, i32 8
  %2116 = load i32, ptr %2115, align 8, !tbaa !211
  %2117 = icmp eq i32 %2116, 0
  br i1 %2117, label %2332, label %2118

2118:                                             ; preds = %2114
  %2119 = getelementptr inbounds %struct.CollisionModifierData, ptr %2112, i64 0, i32 9
  %2120 = load i32, ptr %2119, align 4, !tbaa !214
  %2121 = icmp eq i32 %2120, 0
  br i1 %2121, label %2332, label %2122

2122:                                             ; preds = %2118
  %2123 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %2124 = call ptr %2123(i64 noundef 72, ptr noundef nonnull @.str.16) #13
  %2125 = load i32, ptr %2115, align 8, !tbaa !211
  store i32 %2125, ptr %2124, align 8, !tbaa !215
  %2126 = load i32, ptr %2119, align 4, !tbaa !214
  %2127 = getelementptr inbounds %struct.ccd_Mesh, ptr %2124, i64 0, i32 1
  store i32 %2126, ptr %2127, align 4, !tbaa !217
  %2128 = getelementptr inbounds %struct.ccd_Mesh, ptr %2124, i64 0, i32 5
  store i32 190561, ptr %2128, align 8, !tbaa !236
  %2129 = getelementptr inbounds %struct.ccd_Mesh, ptr %2124, i64 0, i32 7
  %2130 = getelementptr inbounds %struct.ccd_Mesh, ptr %2124, i64 0, i32 7, i64 2
  store float 0x46293E5940000000, ptr %2130, align 8, !tbaa !94
  %2131 = getelementptr inbounds %struct.ccd_Mesh, ptr %2124, i64 0, i32 7, i64 1
  store float 0x46293E5940000000, ptr %2131, align 4, !tbaa !94
  store float 0x46293E5940000000, ptr %2129, align 8, !tbaa !94
  %2132 = getelementptr inbounds %struct.ccd_Mesh, ptr %2124, i64 0, i32 8
  %2133 = getelementptr inbounds %struct.ccd_Mesh, ptr %2124, i64 0, i32 8, i64 2
  store float 0xC6293E5940000000, ptr %2133, align 4, !tbaa !94
  %2134 = getelementptr inbounds %struct.ccd_Mesh, ptr %2124, i64 0, i32 8, i64 1
  store float 0xC6293E5940000000, ptr %2134, align 4, !tbaa !94
  store float 0xC6293E5940000000, ptr %2132, align 4, !tbaa !94
  %2135 = getelementptr inbounds %struct.ccd_Mesh, ptr %2124, i64 0, i32 3
  store ptr null, ptr %2135, align 8, !tbaa !220
  %2136 = load ptr, ptr %2101, align 8, !tbaa !208
  %2137 = getelementptr inbounds %struct.PartDeflect, ptr %2136, i64 0, i32 27
  %2138 = load float, ptr %2137, align 4, !tbaa !218
  %2139 = getelementptr inbounds %struct.PartDeflect, ptr %2136, i64 0, i32 28
  %2140 = load float, ptr %2139, align 8, !tbaa !219
  %2141 = fcmp ogt float %2138, %2140
  %2142 = select i1 %2141, float %2138, float %2140
  %2143 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %2144 = getelementptr inbounds %struct.CollisionModifierData, ptr %2112, i64 0, i32 2
  %2145 = load ptr, ptr %2144, align 8, !tbaa !222
  %2146 = call ptr %2143(ptr noundef %2145) #13
  %2147 = getelementptr inbounds %struct.ccd_Mesh, ptr %2124, i64 0, i32 2
  store ptr %2146, ptr %2147, align 8, !tbaa !221
  %2148 = load i32, ptr %2124, align 8, !tbaa !215
  %2149 = icmp sgt i32 %2148, 0
  br i1 %2149, label %2150, label %2192

2150:                                             ; preds = %2122
  %2151 = load float, ptr %2129, align 8, !tbaa !94
  %2152 = load float, ptr %2131, align 4, !tbaa !94
  %2153 = load float, ptr %2130, align 8, !tbaa !94
  %2154 = load float, ptr %2132, align 4, !tbaa !94
  %2155 = load float, ptr %2134, align 4, !tbaa !94
  %2156 = load float, ptr %2133, align 4, !tbaa !94
  %2157 = zext nneg i32 %2148 to i64
  br label %2158

2158:                                             ; preds = %2150, %2158
  %2159 = phi i64 [ 0, %2150 ], [ %2190, %2158 ]
  %2160 = phi float [ %2156, %2150 ], [ %2189, %2158 ]
  %2161 = phi float [ %2155, %2150 ], [ %2186, %2158 ]
  %2162 = phi float [ %2154, %2150 ], [ %2183, %2158 ]
  %2163 = phi float [ %2153, %2150 ], [ %2180, %2158 ]
  %2164 = phi float [ %2152, %2150 ], [ %2177, %2158 ]
  %2165 = phi float [ %2151, %2150 ], [ %2174, %2158 ]
  %2166 = getelementptr inbounds %struct.MVert, ptr %2146, i64 %2159
  %2167 = load float, ptr %2166, align 4, !tbaa !94
  %2168 = getelementptr inbounds float, ptr %2166, i64 1
  %2169 = load float, ptr %2168, align 4, !tbaa !94
  %2170 = getelementptr inbounds float, ptr %2166, i64 2
  %2171 = load float, ptr %2170, align 4, !tbaa !94
  %2172 = fsub float %2167, %2142
  %2173 = fcmp olt float %2165, %2172
  %2174 = select i1 %2173, float %2165, float %2172
  store float %2174, ptr %2129, align 8, !tbaa !94
  %2175 = fsub float %2169, %2142
  %2176 = fcmp olt float %2164, %2175
  %2177 = select i1 %2176, float %2164, float %2175
  store float %2177, ptr %2131, align 4, !tbaa !94
  %2178 = fsub float %2171, %2142
  %2179 = fcmp olt float %2163, %2178
  %2180 = select i1 %2179, float %2163, float %2178
  store float %2180, ptr %2130, align 8, !tbaa !94
  %2181 = fadd float %2142, %2167
  %2182 = fcmp ogt float %2162, %2181
  %2183 = select i1 %2182, float %2162, float %2181
  store float %2183, ptr %2132, align 4, !tbaa !94
  %2184 = fadd float %2142, %2169
  %2185 = fcmp ogt float %2161, %2184
  %2186 = select i1 %2185, float %2161, float %2184
  store float %2186, ptr %2134, align 4, !tbaa !94
  %2187 = fadd float %2142, %2171
  %2188 = fcmp ogt float %2160, %2187
  %2189 = select i1 %2188, float %2160, float %2187
  store float %2189, ptr %2133, align 4, !tbaa !94
  %2190 = add nuw nsw i64 %2159, 1
  %2191 = icmp eq i64 %2190, %2157
  br i1 %2191, label %2192, label %2158, !llvm.loop !237

2192:                                             ; preds = %2158, %2122
  %2193 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %2194 = getelementptr inbounds %struct.CollisionModifierData, ptr %2112, i64 0, i32 7
  %2195 = load ptr, ptr %2194, align 8, !tbaa !238
  %2196 = call ptr %2193(ptr noundef %2195) #13
  %2197 = getelementptr inbounds %struct.ccd_Mesh, ptr %2124, i64 0, i32 4
  store ptr %2196, ptr %2197, align 8, !tbaa !224
  %2198 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %2199 = load i32, ptr %2127, align 4, !tbaa !217
  %2200 = sext i32 %2199 to i64
  %2201 = mul nsw i64 %2200, 24
  %2202 = call ptr %2198(i64 noundef %2201, ptr noundef nonnull @.str.17) #13
  %2203 = getelementptr inbounds %struct.ccd_Mesh, ptr %2124, i64 0, i32 6
  store ptr %2202, ptr %2203, align 8, !tbaa !225
  %2204 = load i32, ptr %2127, align 4, !tbaa !217
  %2205 = icmp sgt i32 %2204, 0
  br i1 %2205, label %2206, label %2332

2206:                                             ; preds = %2192
  %2207 = load ptr, ptr %2197, align 8, !tbaa !224
  %2208 = load ptr, ptr %2147, align 8, !tbaa !221
  br label %2209

2209:                                             ; preds = %2206, %2327
  %2210 = phi i32 [ 0, %2206 ], [ %2330, %2327 ]
  %2211 = phi ptr [ %2207, %2206 ], [ %2329, %2327 ]
  %2212 = phi ptr [ %2202, %2206 ], [ %2328, %2327 ]
  %2213 = getelementptr inbounds %struct.ccdf_minmax, ptr %2212, i64 0, i32 2
  store float 0x46293E5940000000, ptr %2213, align 4, !tbaa !226
  %2214 = getelementptr inbounds %struct.ccdf_minmax, ptr %2212, i64 0, i32 1
  store float 0x46293E5940000000, ptr %2214, align 4, !tbaa !228
  store float 0x46293E5940000000, ptr %2212, align 4, !tbaa !229
  %2215 = getelementptr inbounds %struct.ccdf_minmax, ptr %2212, i64 0, i32 5
  store float 0xC6293E5940000000, ptr %2215, align 4, !tbaa !230
  %2216 = getelementptr inbounds %struct.ccdf_minmax, ptr %2212, i64 0, i32 4
  store float 0xC6293E5940000000, ptr %2216, align 4, !tbaa !231
  %2217 = getelementptr inbounds %struct.ccdf_minmax, ptr %2212, i64 0, i32 3
  store float 0xC6293E5940000000, ptr %2217, align 4, !tbaa !232
  %2218 = load i32, ptr %2211, align 4, !tbaa !156
  %2219 = zext i32 %2218 to i64
  %2220 = getelementptr inbounds %struct.MVert, ptr %2208, i64 %2219
  %2221 = load float, ptr %2220, align 4, !tbaa !94
  %2222 = getelementptr inbounds float, ptr %2220, i64 1
  %2223 = load float, ptr %2222, align 4, !tbaa !94
  %2224 = getelementptr inbounds float, ptr %2220, i64 2
  %2225 = load float, ptr %2224, align 4, !tbaa !94
  %2226 = fsub float %2221, %2142
  %2227 = fcmp ogt float %2226, 0x46293E5940000000
  %2228 = select i1 %2227, float 0x46293E5940000000, float %2226
  store float %2228, ptr %2212, align 4, !tbaa !229
  %2229 = fsub float %2223, %2142
  %2230 = fcmp ogt float %2229, 0x46293E5940000000
  %2231 = select i1 %2230, float 0x46293E5940000000, float %2229
  store float %2231, ptr %2214, align 4, !tbaa !228
  %2232 = fsub float %2225, %2142
  %2233 = fcmp ogt float %2232, 0x46293E5940000000
  %2234 = select i1 %2233, float 0x46293E5940000000, float %2232
  store float %2234, ptr %2213, align 4, !tbaa !226
  %2235 = fadd float %2142, %2221
  %2236 = fcmp olt float %2235, 0xC6293E5940000000
  %2237 = select i1 %2236, float 0xC6293E5940000000, float %2235
  store float %2237, ptr %2217, align 4, !tbaa !232
  %2238 = fadd float %2142, %2223
  %2239 = fcmp olt float %2238, 0xC6293E5940000000
  %2240 = select i1 %2239, float 0xC6293E5940000000, float %2238
  store float %2240, ptr %2216, align 4, !tbaa !231
  %2241 = fadd float %2142, %2225
  %2242 = fcmp olt float %2241, 0xC6293E5940000000
  %2243 = select i1 %2242, float 0xC6293E5940000000, float %2241
  store float %2243, ptr %2215, align 4, !tbaa !230
  %2244 = getelementptr inbounds %struct.MFace, ptr %2211, i64 0, i32 1
  %2245 = load i32, ptr %2244, align 4, !tbaa !158
  %2246 = zext i32 %2245 to i64
  %2247 = getelementptr inbounds %struct.MVert, ptr %2208, i64 %2246
  %2248 = load float, ptr %2247, align 4, !tbaa !94
  %2249 = getelementptr inbounds float, ptr %2247, i64 1
  %2250 = load float, ptr %2249, align 4, !tbaa !94
  %2251 = getelementptr inbounds float, ptr %2247, i64 2
  %2252 = load float, ptr %2251, align 4, !tbaa !94
  %2253 = fsub float %2248, %2142
  %2254 = fcmp olt float %2228, %2253
  %2255 = select i1 %2254, float %2228, float %2253
  store float %2255, ptr %2212, align 4, !tbaa !229
  %2256 = fsub float %2250, %2142
  %2257 = fcmp olt float %2231, %2256
  %2258 = select i1 %2257, float %2231, float %2256
  store float %2258, ptr %2214, align 4, !tbaa !228
  %2259 = fsub float %2252, %2142
  %2260 = fcmp olt float %2234, %2259
  %2261 = select i1 %2260, float %2234, float %2259
  store float %2261, ptr %2213, align 4, !tbaa !226
  %2262 = fadd float %2142, %2248
  %2263 = fcmp ogt float %2237, %2262
  %2264 = select i1 %2263, float %2237, float %2262
  store float %2264, ptr %2217, align 4, !tbaa !232
  %2265 = fadd float %2142, %2250
  %2266 = fcmp ogt float %2240, %2265
  %2267 = select i1 %2266, float %2240, float %2265
  store float %2267, ptr %2216, align 4, !tbaa !231
  %2268 = fadd float %2142, %2252
  %2269 = fcmp ogt float %2243, %2268
  %2270 = select i1 %2269, float %2243, float %2268
  store float %2270, ptr %2215, align 4, !tbaa !230
  %2271 = getelementptr inbounds %struct.MFace, ptr %2211, i64 0, i32 2
  %2272 = load i32, ptr %2271, align 4, !tbaa !157
  %2273 = zext i32 %2272 to i64
  %2274 = getelementptr inbounds %struct.MVert, ptr %2208, i64 %2273
  %2275 = load float, ptr %2274, align 4, !tbaa !94
  %2276 = getelementptr inbounds float, ptr %2274, i64 1
  %2277 = load float, ptr %2276, align 4, !tbaa !94
  %2278 = getelementptr inbounds float, ptr %2274, i64 2
  %2279 = load float, ptr %2278, align 4, !tbaa !94
  %2280 = fsub float %2275, %2142
  %2281 = fcmp olt float %2255, %2280
  %2282 = select i1 %2281, float %2255, float %2280
  store float %2282, ptr %2212, align 4, !tbaa !229
  %2283 = fsub float %2277, %2142
  %2284 = fcmp olt float %2258, %2283
  %2285 = select i1 %2284, float %2258, float %2283
  store float %2285, ptr %2214, align 4, !tbaa !228
  %2286 = fsub float %2279, %2142
  %2287 = fcmp olt float %2261, %2286
  %2288 = select i1 %2287, float %2261, float %2286
  store float %2288, ptr %2213, align 4, !tbaa !226
  %2289 = fadd float %2142, %2275
  %2290 = fcmp ogt float %2264, %2289
  %2291 = select i1 %2290, float %2264, float %2289
  store float %2291, ptr %2217, align 4, !tbaa !232
  %2292 = fadd float %2142, %2277
  %2293 = fcmp ogt float %2267, %2292
  %2294 = select i1 %2293, float %2267, float %2292
  store float %2294, ptr %2216, align 4, !tbaa !231
  %2295 = fadd float %2142, %2279
  %2296 = fcmp ogt float %2270, %2295
  %2297 = select i1 %2296, float %2270, float %2295
  store float %2297, ptr %2215, align 4, !tbaa !230
  %2298 = getelementptr inbounds %struct.MFace, ptr %2211, i64 0, i32 3
  %2299 = load i32, ptr %2298, align 4, !tbaa !152
  %2300 = icmp eq i32 %2299, 0
  br i1 %2300, label %2327, label %2301

2301:                                             ; preds = %2209
  %2302 = zext i32 %2299 to i64
  %2303 = getelementptr inbounds %struct.MVert, ptr %2208, i64 %2302
  %2304 = load float, ptr %2303, align 4, !tbaa !94
  %2305 = getelementptr inbounds float, ptr %2303, i64 1
  %2306 = load float, ptr %2305, align 4, !tbaa !94
  %2307 = getelementptr inbounds float, ptr %2303, i64 2
  %2308 = load float, ptr %2307, align 4, !tbaa !94
  %2309 = fsub float %2304, %2142
  %2310 = fcmp olt float %2282, %2309
  %2311 = select i1 %2310, float %2282, float %2309
  store float %2311, ptr %2212, align 4, !tbaa !229
  %2312 = fsub float %2306, %2142
  %2313 = fcmp olt float %2285, %2312
  %2314 = select i1 %2313, float %2285, float %2312
  store float %2314, ptr %2214, align 4, !tbaa !228
  %2315 = fsub float %2308, %2142
  %2316 = fcmp olt float %2288, %2315
  %2317 = select i1 %2316, float %2288, float %2315
  store float %2317, ptr %2213, align 4, !tbaa !226
  %2318 = fadd float %2142, %2304
  %2319 = fcmp ogt float %2291, %2318
  %2320 = select i1 %2319, float %2291, float %2318
  store float %2320, ptr %2217, align 4, !tbaa !232
  %2321 = fadd float %2142, %2306
  %2322 = fcmp ogt float %2294, %2321
  %2323 = select i1 %2322, float %2294, float %2321
  store float %2323, ptr %2216, align 4, !tbaa !231
  %2324 = fadd float %2142, %2308
  %2325 = fcmp ogt float %2297, %2324
  %2326 = select i1 %2325, float %2297, float %2324
  store float %2326, ptr %2215, align 4, !tbaa !230
  br label %2327

2327:                                             ; preds = %2301, %2209
  %2328 = getelementptr inbounds %struct.ccdf_minmax, ptr %2212, i64 1
  %2329 = getelementptr inbounds %struct.MFace, ptr %2211, i64 1
  %2330 = add nuw nsw i32 %2210, 1
  %2331 = icmp eq i32 %2330, %2204
  br i1 %2331, label %2332, label %2209, !llvm.loop !239

2332:                                             ; preds = %2327, %2192, %2118, %2114, %2111
  %2333 = phi ptr [ null, %2111 ], [ null, %2118 ], [ null, %2114 ], [ %2124, %2192 ], [ %2124, %2327 ]
  call void @BLI_ghash_insert(ptr noundef nonnull %2076, ptr noundef %2084, ptr noundef %2333) #13
  br label %2097

2334:                                             ; preds = %2072, %2097, %2051, %2078, %2075
  %2335 = load ptr, ptr %1654, align 8, !tbaa !88
  %2336 = getelementptr inbounds %struct.SBScratch, ptr %2335, i64 0, i32 1
  store i16 0, ptr %2336, align 8, !tbaa !189
  br label %2337

2337:                                             ; preds = %2334, %2046
  %2338 = getelementptr inbounds %struct.SoftBody, ptr %35, i64 0, i32 41
  %2339 = load i16, ptr %2338, align 2, !tbaa !240
  %2340 = icmp slt i16 %2339, 2
  br i1 %2340, label %2341, label %2643

2341:                                             ; preds = %2337
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %28) #13
  store float 0.000000e+00, ptr %28, align 4, !tbaa !94
  %2342 = getelementptr inbounds %struct.SoftBody, ptr %35, i64 0, i32 11
  %2343 = load float, ptr %2342, align 8, !tbaa !47
  store float %2343, ptr @SoftHeunTol, align 4, !tbaa !94
  %2344 = getelementptr inbounds %struct.SoftBody, ptr %35, i64 0, i32 38
  %2345 = load i16, ptr %2344, align 4, !tbaa !85
  %2346 = icmp sgt i16 %2345, 0
  %2347 = sitofp i16 %2345 to float
  %2348 = fdiv float %1648, %2347
  %2349 = select i1 %2346, float %2348, float 1.000000e+00
  %2350 = getelementptr inbounds %struct.SoftBody, ptr %35, i64 0, i32 39
  %2351 = load i16, ptr %2350, align 2, !tbaa !86
  %2352 = icmp sgt i16 %2351, 0
  %2353 = sitofp i16 %2351 to float
  %2354 = fdiv float %1648, %2353
  %2355 = select i1 %2352, float %2354, float 0x3F847AE140000000
  %2356 = icmp eq i16 %2339, 1
  %2357 = zext i1 %2356 to i32
  %2358 = fcmp ogt float %1648, 0.000000e+00
  br i1 %2358, label %2359, label %2551

2359:                                             ; preds = %2341
  %2360 = icmp eq ptr %1, null
  %2361 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 104
  %2362 = getelementptr inbounds %struct.SoftBody, ptr %35, i64 0, i32 28
  br label %2363

2363:                                             ; preds = %2359, %2544
  %2364 = phi i32 [ 0, %2359 ], [ %2525, %2544 ]
  %2365 = phi float [ 0.000000e+00, %2359 ], [ %2524, %2544 ]
  %2366 = phi float [ %2349, %2359 ], [ %2523, %2544 ]
  %2367 = fdiv float %2365, %1648
  %2368 = fmul float %2367, 2.000000e+02
  %2369 = fptosi float %2368 to i32
  %2370 = load ptr, ptr %34, align 8, !tbaa !112
  %2371 = sitofp i32 %2369 to float
  %2372 = fdiv float %2371, 2.000000e+02
  %2373 = load i32, ptr %2370, align 8, !tbaa !102
  %2374 = icmp sgt i32 %2373, 0
  br i1 %2374, label %2375, label %2450

2375:                                             ; preds = %2363
  %2376 = getelementptr inbounds %struct.SoftBody, ptr %2370, i64 0, i32 2
  %2377 = load ptr, ptr %2376, align 8, !tbaa !101
  br label %2378

2378:                                             ; preds = %2446, %2375
  %2379 = phi i32 [ %2447, %2446 ], [ %2373, %2375 ]
  %2380 = phi ptr [ %2448, %2446 ], [ %2377, %2375 ]
  %2381 = load float, ptr %2380, align 8, !tbaa !94
  %2382 = getelementptr inbounds %struct.BodyPoint, ptr %2380, i64 0, i32 1
  %2383 = load float, ptr %2382, align 4, !tbaa !94
  %2384 = fsub float %2383, %2381
  %2385 = call float @llvm.fmuladd.f32(float %2372, float %2384, float %2381)
  %2386 = getelementptr inbounds %struct.BodyPoint, ptr %2380, i64 0, i32 2
  store float %2385, ptr %2386, align 8, !tbaa !94
  %2387 = getelementptr inbounds [3 x float], ptr %2380, i64 0, i64 1
  %2388 = load float, ptr %2387, align 4, !tbaa !94
  %2389 = getelementptr inbounds %struct.BodyPoint, ptr %2380, i64 0, i32 1, i64 1
  %2390 = load float, ptr %2389, align 4, !tbaa !94
  %2391 = fsub float %2390, %2388
  %2392 = call float @llvm.fmuladd.f32(float %2372, float %2391, float %2388)
  %2393 = getelementptr inbounds %struct.BodyPoint, ptr %2380, i64 0, i32 2, i64 1
  store float %2392, ptr %2393, align 4, !tbaa !94
  %2394 = getelementptr inbounds [3 x float], ptr %2380, i64 0, i64 2
  %2395 = load float, ptr %2394, align 8, !tbaa !94
  %2396 = getelementptr inbounds %struct.BodyPoint, ptr %2380, i64 0, i32 1, i64 2
  %2397 = load float, ptr %2396, align 4, !tbaa !94
  %2398 = fsub float %2397, %2395
  %2399 = call float @llvm.fmuladd.f32(float %2372, float %2398, float %2395)
  %2400 = getelementptr inbounds %struct.BodyPoint, ptr %2380, i64 0, i32 2, i64 2
  store float %2399, ptr %2400, align 8, !tbaa !94
  br i1 %2360, label %2427, label %2401

2401:                                             ; preds = %2378
  %2402 = load ptr, ptr %34, align 8, !tbaa !112
  %2403 = load i16, ptr %2361, align 2, !tbaa !119
  %2404 = and i16 %2403, 2
  %2405 = icmp eq i16 %2404, 0
  br i1 %2405, label %2423, label %2406

2406:                                             ; preds = %2401
  %2407 = icmp eq ptr %2402, null
  br i1 %2407, label %2423, label %2408

2408:                                             ; preds = %2406
  %2409 = getelementptr inbounds %struct.BodyPoint, ptr %2380, i64 0, i32 6
  %2410 = load float, ptr %2409, align 8, !tbaa !138
  %2411 = fcmp olt float %2410, 0.000000e+00
  br i1 %2411, label %2423, label %2412

2412:                                             ; preds = %2408
  %2413 = getelementptr inbounds %struct.SoftBody, ptr %2402, i64 0, i32 15
  %2414 = load float, ptr %2413, align 8, !tbaa !50
  %2415 = getelementptr inbounds %struct.SoftBody, ptr %2402, i64 0, i32 16
  %2416 = load float, ptr %2415, align 4, !tbaa !51
  %2417 = fsub float %2416, %2414
  %2418 = call float @llvm.fabs.f32(float %2417)
  %2419 = call float @llvm.fmuladd.f32(float %2410, float %2418, float %2414)
  %2420 = fpext float %2419 to double
  %2421 = call double @pow(double noundef %2420, double noundef 4.000000e+00) #13
  %2422 = fptrunc double %2421 to float
  br label %2423

2423:                                             ; preds = %2412, %2408, %2406, %2401
  %2424 = phi float [ %2422, %2412 ], [ 0xC09F3FF5C0000000, %2401 ], [ 0xC09F3FF5C0000000, %2408 ], [ 0xC09F3FF5C0000000, %2406 ]
  %2425 = phi float [ %2422, %2412 ], [ 0.000000e+00, %2401 ], [ 0.000000e+00, %2408 ], [ undef, %2406 ]
  %2426 = phi i1 [ false, %2412 ], [ false, %2401 ], [ false, %2408 ], [ true, %2406 ]
  br i1 %2426, label %2427, label %2430

2427:                                             ; preds = %2423, %2378
  %2428 = phi float [ %2424, %2423 ], [ 0xC09F3FF5C0000000, %2378 ]
  %2429 = call i32 @puts(ptr nonnull dereferenceable(1) @str.25)
  br label %2430

2430:                                             ; preds = %2423, %2427
  %2431 = phi float [ %2428, %2427 ], [ %2425, %2423 ]
  %2432 = fcmp ult float %2431, 0x3FEFF7CEE0000000
  br i1 %2432, label %2446, label %2433

2433:                                             ; preds = %2430
  %2434 = load float, ptr %2382, align 4, !tbaa !94
  %2435 = load float, ptr %2380, align 8, !tbaa !94
  %2436 = fsub float %2434, %2435
  %2437 = getelementptr inbounds %struct.BodyPoint, ptr %2380, i64 0, i32 4
  store float %2436, ptr %2437, align 8, !tbaa !94
  %2438 = load float, ptr %2389, align 4, !tbaa !94
  %2439 = load float, ptr %2387, align 4, !tbaa !94
  %2440 = fsub float %2438, %2439
  %2441 = getelementptr inbounds %struct.BodyPoint, ptr %2380, i64 0, i32 4, i64 1
  store float %2440, ptr %2441, align 4, !tbaa !94
  %2442 = load float, ptr %2396, align 4, !tbaa !94
  %2443 = load float, ptr %2394, align 8, !tbaa !94
  %2444 = fsub float %2442, %2443
  %2445 = getelementptr inbounds %struct.BodyPoint, ptr %2380, i64 0, i32 4, i64 2
  store float %2444, ptr %2445, align 8, !tbaa !94
  br label %2446

2446:                                             ; preds = %2433, %2430
  %2447 = add nsw i32 %2379, -1
  %2448 = getelementptr inbounds %struct.BodyPoint, ptr %2380, i64 1
  %2449 = icmp sgt i32 %2379, 1
  br i1 %2449, label %2378, label %2450, !llvm.loop !241

2450:                                             ; preds = %2446, %2363
  %2451 = load ptr, ptr %1654, align 8, !tbaa !88
  %2452 = getelementptr inbounds %struct.SBScratch, ptr %2451, i64 0, i32 2
  %2453 = load i16, ptr %2452, align 2, !tbaa !242
  %2454 = and i16 %2453, -2
  store i16 %2454, ptr %2452, align 2, !tbaa !242
  call fastcc void @softbody_calc_forces(ptr noundef %0, ptr noundef %1, float noundef %2366, float noundef %2367)
  call fastcc void @softbody_apply_forces(ptr noundef %1, float noundef %2366, i32 noundef 1, ptr noundef null, i32 noundef %2357)
  call fastcc void @softbody_calc_forces(ptr noundef %0, ptr noundef %1, float noundef %2366, float noundef %2367)
  call fastcc void @softbody_apply_forces(ptr noundef %1, float noundef %2366, i32 noundef 2, ptr noundef nonnull %28, i32 noundef %2357)
  call fastcc void @softbody_apply_goalsnap(ptr noundef %1)
  %2455 = load float, ptr %28, align 4, !tbaa !94
  %2456 = load float, ptr @SoftHeunTol, align 4, !tbaa !94
  %2457 = fcmp ogt float %2455, %2456
  br i1 %2457, label %2458, label %2496

2458:                                             ; preds = %2450
  %2459 = fcmp ogt float %2366, %2355
  br i1 %2459, label %2460, label %2494

2460:                                             ; preds = %2458
  %2461 = fmul float %2366, 5.000000e-01
  %2462 = fcmp ogt float %2461, %2355
  %2463 = select i1 %2462, float %2461, float %2355
  %2464 = load ptr, ptr %34, align 8, !tbaa !112
  %2465 = load i32, ptr %2464, align 8, !tbaa !102
  %2466 = icmp sgt i32 %2465, 0
  br i1 %2466, label %2467, label %2522

2467:                                             ; preds = %2460
  %2468 = getelementptr inbounds %struct.SoftBody, ptr %2464, i64 0, i32 2
  %2469 = load ptr, ptr %2468, align 8, !tbaa !101
  br label %2470

2470:                                             ; preds = %2467, %2470
  %2471 = phi i32 [ %2491, %2470 ], [ %2465, %2467 ]
  %2472 = phi ptr [ %2492, %2470 ], [ %2469, %2467 ]
  %2473 = getelementptr inbounds %struct.BodyPoint, ptr %2472, i64 0, i32 4
  %2474 = getelementptr inbounds %struct.BodyPoint, ptr %2472, i64 0, i32 8
  %2475 = load float, ptr %2474, align 4, !tbaa !94
  store float %2475, ptr %2473, align 4, !tbaa !94
  %2476 = getelementptr inbounds %struct.BodyPoint, ptr %2472, i64 0, i32 8, i64 1
  %2477 = load float, ptr %2476, align 4, !tbaa !94
  %2478 = getelementptr inbounds %struct.BodyPoint, ptr %2472, i64 0, i32 4, i64 1
  store float %2477, ptr %2478, align 4, !tbaa !94
  %2479 = getelementptr inbounds %struct.BodyPoint, ptr %2472, i64 0, i32 8, i64 2
  %2480 = load float, ptr %2479, align 4, !tbaa !94
  %2481 = getelementptr inbounds %struct.BodyPoint, ptr %2472, i64 0, i32 4, i64 2
  store float %2480, ptr %2481, align 4, !tbaa !94
  %2482 = getelementptr inbounds %struct.BodyPoint, ptr %2472, i64 0, i32 3
  %2483 = getelementptr inbounds %struct.BodyPoint, ptr %2472, i64 0, i32 7
  %2484 = load float, ptr %2483, align 4, !tbaa !94
  store float %2484, ptr %2482, align 4, !tbaa !94
  %2485 = getelementptr inbounds %struct.BodyPoint, ptr %2472, i64 0, i32 7, i64 1
  %2486 = load float, ptr %2485, align 4, !tbaa !94
  %2487 = getelementptr inbounds %struct.BodyPoint, ptr %2472, i64 0, i32 3, i64 1
  store float %2486, ptr %2487, align 4, !tbaa !94
  %2488 = getelementptr inbounds %struct.BodyPoint, ptr %2472, i64 0, i32 7, i64 2
  %2489 = load float, ptr %2488, align 4, !tbaa !94
  %2490 = getelementptr inbounds %struct.BodyPoint, ptr %2472, i64 0, i32 3, i64 2
  store float %2489, ptr %2490, align 4, !tbaa !94
  %2491 = add nsw i32 %2471, -1
  %2492 = getelementptr inbounds %struct.BodyPoint, ptr %2472, i64 1
  %2493 = icmp sgt i32 %2471, 1
  br i1 %2493, label %2470, label %2522, !llvm.loop !243

2494:                                             ; preds = %2458
  %2495 = fadd float %2366, %2365
  br label %2522

2496:                                             ; preds = %2450
  %2497 = load ptr, ptr %1654, align 8, !tbaa !88
  %2498 = getelementptr inbounds %struct.SBScratch, ptr %2497, i64 0, i32 2
  %2499 = load i16, ptr %2498, align 2, !tbaa !242
  %2500 = and i16 %2499, 1
  %2501 = icmp eq i16 %2500, 0
  br i1 %2501, label %2502, label %2507

2502:                                             ; preds = %2496
  %2503 = fmul float %2366, 0x3FF19999A0000000
  %2504 = fmul float %2456, 5.000000e-01
  %2505 = fcmp ogt float %2455, %2504
  br i1 %2505, label %2506, label %2507

2506:                                             ; preds = %2502
  br label %2507

2507:                                             ; preds = %2506, %2502, %2496
  %2508 = phi float [ %2366, %2506 ], [ %2503, %2502 ], [ %2366, %2496 ]
  %2509 = fadd float %2366, %2365
  %2510 = fcmp ogt float %2508, %2355
  %2511 = select i1 %2510, float %2508, float %2355
  %2512 = fcmp olt float %2349, %2511
  %2513 = select i1 %2512, float %2349, float %2511
  %2514 = fcmp ogt float %2366, 0.000000e+00
  %2515 = fsub float %1648, %2509
  br i1 %2514, label %2516, label %2519

2516:                                             ; preds = %2507
  %2517 = fcmp olt float %2515, %2513
  %2518 = select i1 %2517, float %2515, float %2513
  br label %2522

2519:                                             ; preds = %2507
  %2520 = fcmp ogt float %2515, %2513
  %2521 = select i1 %2520, float %2515, float %2513
  br label %2522

2522:                                             ; preds = %2470, %2460, %2519, %2516, %2494
  %2523 = phi float [ %2366, %2494 ], [ %2518, %2516 ], [ %2521, %2519 ], [ %2463, %2460 ], [ %2463, %2470 ]
  %2524 = phi float [ %2495, %2494 ], [ %2509, %2516 ], [ %2509, %2519 ], [ %2365, %2460 ], [ %2365, %2470 ]
  %2525 = add nuw nsw i32 %2364, 1
  %2526 = load i16, ptr %2362, align 2, !tbaa !97
  %2527 = and i16 %2526, 1
  %2528 = icmp eq i16 %2527, 0
  br i1 %2528, label %2538, label %2529

2529:                                             ; preds = %2522
  %2530 = call double @PIL_check_seconds_timer() #13
  %2531 = fsub double %2530, %1649
  %2532 = fcmp ogt double %2531, 5.000000e-01
  br i1 %2532, label %2533, label %2538

2533:                                             ; preds = %2529
  %2534 = fmul float %2524, 1.000000e+02
  %2535 = fdiv float %2534, %1648
  %2536 = fpext float %2535 to double
  %2537 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, double noundef %2536)
  br label %2538

2538:                                             ; preds = %2533, %2529, %2522
  %2539 = load ptr, ptr @SB_localInterruptCallBack, align 8, !tbaa !34
  %2540 = icmp eq ptr %2539, null
  br i1 %2540, label %2544, label %2541

2541:                                             ; preds = %2538
  %2542 = call i32 %2539() #13
  %2543 = icmp eq i32 %2542, 0
  br i1 %2543, label %2544, label %2551

2544:                                             ; preds = %2541, %2538
  %2545 = fcmp olt float %2524, 0.000000e+00
  %2546 = fneg float %2524
  %2547 = select i1 %2545, float %2546, float %2524
  %2548 = fcmp olt float %2547, %1648
  %2549 = icmp ult i32 %2364, 1999
  %2550 = select i1 %2548, i1 %2549, i1 false
  br i1 %2550, label %2363, label %2551, !llvm.loop !244

2551:                                             ; preds = %2544, %2541, %2341
  %2552 = phi i32 [ 0, %2341 ], [ %2525, %2541 ], [ %2525, %2544 ]
  %2553 = load ptr, ptr %34, align 8, !tbaa !112
  %2554 = load i32, ptr %2553, align 8, !tbaa !102
  %2555 = icmp sgt i32 %2554, 0
  br i1 %2555, label %2556, label %2633

2556:                                             ; preds = %2551
  %2557 = getelementptr inbounds %struct.SoftBody, ptr %2553, i64 0, i32 2
  %2558 = load ptr, ptr %2557, align 8, !tbaa !101
  %2559 = icmp eq ptr %1, null
  %2560 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 104
  br label %2561

2561:                                             ; preds = %2629, %2556
  %2562 = phi i32 [ %2630, %2629 ], [ %2554, %2556 ]
  %2563 = phi ptr [ %2631, %2629 ], [ %2558, %2556 ]
  %2564 = load float, ptr %2563, align 8, !tbaa !94
  %2565 = getelementptr inbounds %struct.BodyPoint, ptr %2563, i64 0, i32 1
  %2566 = load float, ptr %2565, align 4, !tbaa !94
  %2567 = fsub float %2566, %2564
  %2568 = fadd float %2564, %2567
  %2569 = getelementptr inbounds %struct.BodyPoint, ptr %2563, i64 0, i32 2
  store float %2568, ptr %2569, align 8, !tbaa !94
  %2570 = getelementptr inbounds [3 x float], ptr %2563, i64 0, i64 1
  %2571 = load float, ptr %2570, align 4, !tbaa !94
  %2572 = getelementptr inbounds %struct.BodyPoint, ptr %2563, i64 0, i32 1, i64 1
  %2573 = load float, ptr %2572, align 4, !tbaa !94
  %2574 = fsub float %2573, %2571
  %2575 = fadd float %2571, %2574
  %2576 = getelementptr inbounds %struct.BodyPoint, ptr %2563, i64 0, i32 2, i64 1
  store float %2575, ptr %2576, align 4, !tbaa !94
  %2577 = getelementptr inbounds [3 x float], ptr %2563, i64 0, i64 2
  %2578 = load float, ptr %2577, align 8, !tbaa !94
  %2579 = getelementptr inbounds %struct.BodyPoint, ptr %2563, i64 0, i32 1, i64 2
  %2580 = load float, ptr %2579, align 4, !tbaa !94
  %2581 = fsub float %2580, %2578
  %2582 = fadd float %2578, %2581
  %2583 = getelementptr inbounds %struct.BodyPoint, ptr %2563, i64 0, i32 2, i64 2
  store float %2582, ptr %2583, align 8, !tbaa !94
  br i1 %2559, label %2610, label %2584

2584:                                             ; preds = %2561
  %2585 = load ptr, ptr %34, align 8, !tbaa !112
  %2586 = load i16, ptr %2560, align 2, !tbaa !119
  %2587 = and i16 %2586, 2
  %2588 = icmp eq i16 %2587, 0
  br i1 %2588, label %2606, label %2589

2589:                                             ; preds = %2584
  %2590 = icmp eq ptr %2585, null
  br i1 %2590, label %2606, label %2591

2591:                                             ; preds = %2589
  %2592 = getelementptr inbounds %struct.BodyPoint, ptr %2563, i64 0, i32 6
  %2593 = load float, ptr %2592, align 8, !tbaa !138
  %2594 = fcmp olt float %2593, 0.000000e+00
  br i1 %2594, label %2606, label %2595

2595:                                             ; preds = %2591
  %2596 = getelementptr inbounds %struct.SoftBody, ptr %2585, i64 0, i32 15
  %2597 = load float, ptr %2596, align 8, !tbaa !50
  %2598 = getelementptr inbounds %struct.SoftBody, ptr %2585, i64 0, i32 16
  %2599 = load float, ptr %2598, align 4, !tbaa !51
  %2600 = fsub float %2599, %2597
  %2601 = call float @llvm.fabs.f32(float %2600)
  %2602 = call float @llvm.fmuladd.f32(float %2593, float %2601, float %2597)
  %2603 = fpext float %2602 to double
  %2604 = call double @pow(double noundef %2603, double noundef 4.000000e+00) #13
  %2605 = fptrunc double %2604 to float
  br label %2606

2606:                                             ; preds = %2595, %2591, %2589, %2584
  %2607 = phi float [ %2605, %2595 ], [ 0xC09F3FF5C0000000, %2584 ], [ 0xC09F3FF5C0000000, %2591 ], [ 0xC09F3FF5C0000000, %2589 ]
  %2608 = phi float [ %2605, %2595 ], [ 0.000000e+00, %2584 ], [ 0.000000e+00, %2591 ], [ undef, %2589 ]
  %2609 = phi i1 [ false, %2595 ], [ false, %2584 ], [ false, %2591 ], [ true, %2589 ]
  br i1 %2609, label %2610, label %2613

2610:                                             ; preds = %2606, %2561
  %2611 = phi float [ %2607, %2606 ], [ 0xC09F3FF5C0000000, %2561 ]
  %2612 = call i32 @puts(ptr nonnull dereferenceable(1) @str.25)
  br label %2613

2613:                                             ; preds = %2606, %2610
  %2614 = phi float [ %2611, %2610 ], [ %2608, %2606 ]
  %2615 = fcmp ult float %2614, 0x3FEFF7CEE0000000
  br i1 %2615, label %2629, label %2616

2616:                                             ; preds = %2613
  %2617 = load float, ptr %2565, align 4, !tbaa !94
  %2618 = load float, ptr %2563, align 8, !tbaa !94
  %2619 = fsub float %2617, %2618
  %2620 = getelementptr inbounds %struct.BodyPoint, ptr %2563, i64 0, i32 4
  store float %2619, ptr %2620, align 8, !tbaa !94
  %2621 = load float, ptr %2572, align 4, !tbaa !94
  %2622 = load float, ptr %2570, align 4, !tbaa !94
  %2623 = fsub float %2621, %2622
  %2624 = getelementptr inbounds %struct.BodyPoint, ptr %2563, i64 0, i32 4, i64 1
  store float %2623, ptr %2624, align 4, !tbaa !94
  %2625 = load float, ptr %2579, align 4, !tbaa !94
  %2626 = load float, ptr %2577, align 8, !tbaa !94
  %2627 = fsub float %2625, %2626
  %2628 = getelementptr inbounds %struct.BodyPoint, ptr %2563, i64 0, i32 4, i64 2
  store float %2627, ptr %2628, align 8, !tbaa !94
  br label %2629

2629:                                             ; preds = %2616, %2613
  %2630 = add nsw i32 %2562, -1
  %2631 = getelementptr inbounds %struct.BodyPoint, ptr %2563, i64 1
  %2632 = icmp sgt i32 %2562, 1
  br i1 %2632, label %2561, label %2633, !llvm.loop !241

2633:                                             ; preds = %2629, %2551
  call fastcc void @softbody_apply_goalsnap(ptr noundef %1)
  %2634 = getelementptr inbounds %struct.SoftBody, ptr %35, i64 0, i32 28
  %2635 = load i16, ptr %2634, align 2, !tbaa !97
  %2636 = and i16 %2635, 1
  %2637 = icmp ne i16 %2636, 0
  %2638 = icmp sgt i32 %2552, 1
  %2639 = select i1 %2637, i1 %2638, i1 false
  br i1 %2639, label %2640, label %2642

2640:                                             ; preds = %2633
  %2641 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %2552)
  br label %2642

2642:                                             ; preds = %2640, %2633
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %28) #13
  br label %2648

2643:                                             ; preds = %2337
  %2644 = add nsw i16 %2339, -2
  %2645 = icmp ult i16 %2644, 3
  br i1 %2645, label %2648, label %2646

2646:                                             ; preds = %2643
  %2647 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14)
  br label %2648

2648:                                             ; preds = %2646, %2643, %2642
  %2649 = getelementptr inbounds %struct.SoftBody, ptr %35, i64 0, i32 42
  %2650 = load i16, ptr %2649, align 4, !tbaa !245
  %2651 = icmp eq i16 %2650, 0
  br i1 %2651, label %2713, label %2652

2652:                                             ; preds = %2648
  %2653 = load ptr, ptr %34, align 8, !tbaa !112
  %2654 = icmp eq ptr %2653, null
  br i1 %2654, label %2713, label %2655

2655:                                             ; preds = %2652
  %2656 = getelementptr inbounds %struct.SoftBody, ptr %2653, i64 0, i32 1
  %2657 = load i32, ptr %2656, align 4, !tbaa !155
  %2658 = icmp eq i32 %2657, 0
  br i1 %2658, label %2713, label %2659

2659:                                             ; preds = %2655
  %2660 = getelementptr inbounds %struct.SoftBody, ptr %2653, i64 0, i32 42
  %2661 = load i16, ptr %2660, align 4, !tbaa !245
  %2662 = sitofp i16 %2661 to float
  %2663 = load i32, ptr %2656, align 4, !tbaa !155
  %2664 = icmp sgt i32 %2663, 0
  br i1 %2664, label %2665, label %2713

2665:                                             ; preds = %2659
  %2666 = getelementptr inbounds %struct.SoftBody, ptr %2653, i64 0, i32 3
  %2667 = getelementptr inbounds %struct.SoftBody, ptr %2653, i64 0, i32 2
  %2668 = fsub float 1.000000e+02, %2662
  br label %2669

2669:                                             ; preds = %2665, %2708
  %2670 = phi i64 [ 0, %2665 ], [ %2709, %2708 ]
  %2671 = load ptr, ptr %2666, align 8, !tbaa !108
  %2672 = getelementptr inbounds %struct.BodySpring, ptr %2671, i64 %2670
  %2673 = load ptr, ptr %2667, align 8, !tbaa !101
  %2674 = load i32, ptr %2672, align 4, !tbaa !144
  %2675 = sext i32 %2674 to i64
  %2676 = getelementptr inbounds %struct.BodySpring, ptr %2671, i64 %2670, i32 1
  %2677 = load i32, ptr %2676, align 4, !tbaa !147
  %2678 = sext i32 %2677 to i64
  %2679 = getelementptr inbounds %struct.BodyPoint, ptr %2673, i64 %2675, i32 3
  %2680 = getelementptr inbounds %struct.BodyPoint, ptr %2673, i64 %2678, i32 3
  %2681 = load float, ptr %2680, align 4, !tbaa !94
  %2682 = load float, ptr %2679, align 4, !tbaa !94
  %2683 = fsub float %2681, %2682
  %2684 = getelementptr inbounds float, ptr %2680, i64 1
  %2685 = load float, ptr %2684, align 4, !tbaa !94
  %2686 = getelementptr inbounds float, ptr %2679, i64 1
  %2687 = load float, ptr %2686, align 4, !tbaa !94
  %2688 = fsub float %2685, %2687
  %2689 = getelementptr inbounds float, ptr %2680, i64 2
  %2690 = load float, ptr %2689, align 4, !tbaa !94
  %2691 = getelementptr inbounds float, ptr %2679, i64 2
  %2692 = load float, ptr %2691, align 4, !tbaa !94
  %2693 = fsub float %2690, %2692
  %2694 = fmul float %2688, %2688
  %2695 = call float @llvm.fmuladd.f32(float %2683, float %2683, float %2694)
  %2696 = call float @llvm.fmuladd.f32(float %2693, float %2693, float %2695)
  %2697 = call float @sqrtf(float noundef %2696) #13
  %2698 = getelementptr inbounds %struct.BodySpring, ptr %2671, i64 %2670, i32 2
  %2699 = load float, ptr %2698, align 4, !tbaa !164
  %2700 = fdiv float %2699, %2697
  %2701 = fcmp ogt float %2700, 0x3FF0CCCCC0000000
  %2702 = fcmp olt float %2700, 0x3FEE666660000000
  %2703 = or i1 %2701, %2702
  br i1 %2703, label %2704, label %2708

2704:                                             ; preds = %2669
  %2705 = fmul float %2697, %2662
  %2706 = call float @llvm.fmuladd.f32(float %2668, float %2699, float %2705)
  %2707 = fdiv float %2706, 1.000000e+02
  store float %2707, ptr %2698, align 4, !tbaa !164
  br label %2708

2708:                                             ; preds = %2704, %2669
  %2709 = add nuw nsw i64 %2670, 1
  %2710 = load i32, ptr %2656, align 4, !tbaa !155
  %2711 = sext i32 %2710 to i64
  %2712 = icmp slt i64 %2709, %2711
  br i1 %2712, label %2669, label %2713, !llvm.loop !246

2713:                                             ; preds = %2708, %2659, %2655, %2652, %2648
  %2714 = getelementptr inbounds %struct.SoftBody, ptr %35, i64 0, i32 28
  %2715 = load i16, ptr %2714, align 2, !tbaa !97
  %2716 = and i16 %2715, 1
  %2717 = icmp eq i16 %2716, 0
  br i1 %2717, label %2729, label %2718

2718:                                             ; preds = %2713
  %2719 = call double @PIL_check_seconds_timer() #13
  %2720 = fsub double %2719, %1649
  %2721 = fcmp ogt double %2720, 5.000000e-01
  br i1 %2721, label %2726, label %2722

2722:                                             ; preds = %2718
  %2723 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !247
  %2724 = and i32 %2723, 1
  %2725 = icmp eq i32 %2724, 0
  br i1 %2725, label %2729, label %2726

2726:                                             ; preds = %2722, %2718
  %2727 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  %2728 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %2720, ptr noundef nonnull %2727)
  br label %2729

2729:                                             ; preds = %1645, %2713, %2722, %2726
  %2730 = load ptr, ptr %34, align 8, !tbaa !112
  %2731 = icmp eq ptr %2730, null
  br i1 %2731, label %2765, label %2732

2732:                                             ; preds = %2729
  %2733 = getelementptr inbounds %struct.SoftBody, ptr %2730, i64 0, i32 2
  %2734 = load ptr, ptr %2733, align 8, !tbaa !101
  %2735 = getelementptr inbounds %struct.SoftBody, ptr %2730, i64 0, i32 28
  %2736 = load i16, ptr %2735, align 2, !tbaa !97
  %2737 = and i16 %2736, 4
  %2738 = icmp eq i16 %2737, 0
  br i1 %2738, label %2743, label %2739

2739:                                             ; preds = %2732
  %2740 = getelementptr inbounds %struct.SoftBody, ptr %2730, i64 0, i32 50
  %2741 = getelementptr inbounds %struct.SoftBody, ptr %2730, i64 0, i32 51
  %2742 = getelementptr inbounds %struct.SoftBody, ptr %2730, i64 0, i32 52
  call void @SB_estimate_transform(ptr noundef %1, ptr noundef nonnull %2740, ptr noundef nonnull %2741, ptr noundef nonnull %2742)
  br label %2743

2743:                                             ; preds = %2739, %2732
  %2744 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 50
  %2745 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %2746 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %2744, ptr noundef nonnull %2745) #13
  %2747 = icmp sgt i32 %4, 0
  br i1 %2747, label %2748, label %2765

2748:                                             ; preds = %2743
  %2749 = zext nneg i32 %4 to i64
  br label %2750

2750:                                             ; preds = %2750, %2748
  %2751 = phi i64 [ 0, %2748 ], [ %2762, %2750 ]
  %2752 = phi ptr [ %2734, %2748 ], [ %2763, %2750 ]
  %2753 = getelementptr inbounds [3 x float], ptr %3, i64 %2751
  %2754 = getelementptr inbounds %struct.BodyPoint, ptr %2752, i64 0, i32 3
  %2755 = load float, ptr %2754, align 4, !tbaa !94
  store float %2755, ptr %2753, align 4, !tbaa !94
  %2756 = getelementptr inbounds %struct.BodyPoint, ptr %2752, i64 0, i32 3, i64 1
  %2757 = load float, ptr %2756, align 4, !tbaa !94
  %2758 = getelementptr inbounds float, ptr %2753, i64 1
  store float %2757, ptr %2758, align 4, !tbaa !94
  %2759 = getelementptr inbounds %struct.BodyPoint, ptr %2752, i64 0, i32 3, i64 2
  %2760 = load float, ptr %2759, align 4, !tbaa !94
  %2761 = getelementptr inbounds float, ptr %2753, i64 2
  store float %2760, ptr %2761, align 4, !tbaa !94
  call void @mul_m4_v3(ptr noundef nonnull %2744, ptr noundef nonnull %2753) #13
  %2762 = add nuw nsw i64 %2751, 1
  %2763 = getelementptr inbounds %struct.BodyPoint, ptr %2752, i64 1
  %2764 = icmp eq i64 %2762, %2749
  br i1 %2764, label %2765, label %2750, !llvm.loop !201

2765:                                             ; preds = %2750, %2729, %2743
  call void @BKE_ptcache_validate(ptr noundef %37, i32 noundef %56) #13
  %2766 = call i32 @BKE_ptcache_write(ptr noundef nonnull %30, i32 noundef %56) #13
  store i32 %56, ptr %1592, align 4, !tbaa !100
  br label %2767

2767:                                             ; preds = %1591, %1477, %2765, %1590, %1581, %1518, %53, %49
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %33) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %32) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %31) #13
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %30) #13
  ret void
}

declare void @BKE_ptcache_id_from_softbody(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_ptcache_id_time(ptr noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_ptcache_invalidate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @renew_softbody(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 111
  %6 = load ptr, ptr %5, align 8, !tbaa !112
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = tail call ptr @sbNew(ptr noundef %0)
  store ptr %9, ptr %5, align 8, !tbaa !112
  br label %11

10:                                               ; preds = %4
  tail call fastcc void @free_softbody_intern(ptr noundef nonnull %6)
  br label %11

11:                                               ; preds = %10, %8
  %12 = load ptr, ptr %5, align 8, !tbaa !112
  %13 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 104
  %14 = load i16, ptr %13, align 2, !tbaa !119
  %15 = icmp eq i32 %2, 0
  br i1 %15, label %53, label %16

16:                                               ; preds = %11
  store i32 %2, ptr %12, align 8, !tbaa !102
  %17 = getelementptr inbounds %struct.SoftBody, ptr %12, i64 0, i32 1
  store i32 %3, ptr %17, align 4, !tbaa !155
  %18 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %19 = sext i32 %2 to i64
  %20 = mul nsw i64 %19, 192
  %21 = tail call ptr %18(i64 noundef %20, ptr noundef nonnull @.str.8) #13
  %22 = getelementptr inbounds %struct.SoftBody, ptr %12, i64 0, i32 2
  store ptr %21, ptr %22, align 8, !tbaa !101
  %23 = icmp eq i32 %3, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %16
  %25 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %26 = sext i32 %3 to i64
  %27 = mul nsw i64 %26, 40
  %28 = tail call ptr %25(i64 noundef %27, ptr noundef nonnull @.str.5) #13
  %29 = getelementptr inbounds %struct.SoftBody, ptr %12, i64 0, i32 3
  store ptr %28, ptr %29, align 8, !tbaa !108
  br label %30

30:                                               ; preds = %24, %16
  %31 = icmp sgt i32 %2, 0
  br i1 %31, label %32, label %53

32:                                               ; preds = %30
  %33 = load ptr, ptr %22, align 8, !tbaa !101
  %34 = and i16 %14, 2
  %35 = icmp eq i16 %34, 0
  %36 = getelementptr inbounds %struct.SoftBody, ptr %12, i64 0, i32 17
  %37 = zext nneg i32 %2 to i64
  br label %38

38:                                               ; preds = %32, %42
  %39 = phi i64 [ 0, %32 ], [ %51, %42 ]
  br i1 %35, label %42, label %40

40:                                               ; preds = %38
  %41 = load float, ptr %36, align 8, !tbaa !52
  br label %42

42:                                               ; preds = %38, %40
  %43 = phi float [ %41, %40 ], [ 0.000000e+00, %38 ]
  %44 = getelementptr inbounds %struct.BodyPoint, ptr %33, i64 %39, i32 6
  store float %43, ptr %44, align 8, !tbaa !138
  %45 = getelementptr inbounds %struct.BodyPoint, ptr %33, i64 %39, i32 13
  %46 = getelementptr inbounds %struct.BodyPoint, ptr %33, i64 %39, i32 17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %45, i8 0, i64 20, i1 false)
  store float 1.000000e+00, ptr %46, align 8, !tbaa !249
  %47 = getelementptr inbounds %struct.BodyPoint, ptr %33, i64 %39, i32 18
  store float 0.000000e+00, ptr %47, align 4, !tbaa !250
  %48 = getelementptr inbounds %struct.BodyPoint, ptr %33, i64 %39, i32 19
  store i16 0, ptr %48, align 8, !tbaa !179
  %49 = getelementptr inbounds %struct.BodyPoint, ptr %33, i64 %39, i32 21
  store float 1.000000e+00, ptr %49, align 8, !tbaa !140
  %50 = getelementptr inbounds %struct.BodyPoint, ptr %33, i64 %39, i32 20
  store float 1.000000e+00, ptr %50, align 4, !tbaa !190
  %51 = add nuw nsw i64 %39, 1
  %52 = icmp eq i64 %51, %37
  br i1 %52, label %53, label %38, !llvm.loop !251

53:                                               ; preds = %42, %30, %11
  ret void
}

declare i32 @BKE_ptcache_id_reset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BKE_ptcache_validate(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BKE_ptcache_read(ptr noundef, float noundef) local_unnamed_addr #2

declare i32 @BKE_ptcache_write(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BLI_ghash_ptr_new(ptr noundef) local_unnamed_addr #2

declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @ccd_mesh_free(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %24, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ccd_Mesh, ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !236
  %6 = icmp eq i32 %5, 190561
  br i1 %6, label %7, label %24

7:                                                ; preds = %3
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.ccd_Mesh, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !224
  tail call void %8(ptr noundef %10) #13
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.ccd_Mesh, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !221
  tail call void %11(ptr noundef %13) #13
  %14 = getelementptr inbounds %struct.ccd_Mesh, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !220
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %7
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %18(ptr noundef nonnull %15) #13
  br label %19

19:                                               ; preds = %17, %7
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %21 = getelementptr inbounds %struct.ccd_Mesh, ptr %0, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !225
  tail call void %20(ptr noundef %22) #13
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %23(ptr noundef nonnull %0) #13
  br label %24

24:                                               ; preds = %19, %3, %1
  ret void
}

declare void @BKE_mesh_tessface_ensure(ptr noundef) local_unnamed_addr #2

declare i32 @defgroup_name_index(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @build_bps_springlist(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 111
  %3 = load ptr, ptr %2, align 8, !tbaa !112
  %4 = icmp eq ptr %3, null
  br i1 %4, label %53, label %5

5:                                                ; preds = %1
  %6 = load i32, ptr %3, align 8, !tbaa !102
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %53

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !101
  %11 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 1
  %12 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 3
  br label %13

13:                                               ; preds = %8, %49
  %14 = phi i32 [ %6, %8 ], [ %50, %49 ]
  %15 = phi ptr [ %10, %8 ], [ %51, %49 ]
  %16 = getelementptr inbounds %struct.BodyPoint, ptr %15, i64 0, i32 14
  %17 = load ptr, ptr %16, align 8, !tbaa !103
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %13
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %20(ptr noundef nonnull %17) #13
  store ptr null, ptr %16, align 8, !tbaa !103
  br label %21

21:                                               ; preds = %19, %13
  %22 = load i32, ptr %11, align 4, !tbaa !155
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %49

24:                                               ; preds = %21
  %25 = load ptr, ptr %12, align 8, !tbaa !108
  br label %26

26:                                               ; preds = %24, %45
  %27 = phi i32 [ %46, %45 ], [ %22, %24 ]
  %28 = phi ptr [ %47, %45 ], [ %25, %24 ]
  %29 = load i32, ptr %3, align 8, !tbaa !102
  %30 = sub nsw i32 %29, %14
  %31 = load i32, ptr %28, align 4, !tbaa !144
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, ptr %11, align 4, !tbaa !155
  %35 = sub nsw i32 %34, %27
  tail call fastcc void @add_bp_springlist(ptr noundef %15, i32 noundef %35)
  br label %36

36:                                               ; preds = %33, %26
  %37 = load i32, ptr %3, align 8, !tbaa !102
  %38 = sub nsw i32 %37, %14
  %39 = getelementptr inbounds %struct.BodySpring, ptr %28, i64 0, i32 1
  %40 = load i32, ptr %39, align 4, !tbaa !147
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, ptr %11, align 4, !tbaa !155
  %44 = sub nsw i32 %43, %27
  tail call fastcc void @add_bp_springlist(ptr noundef %15, i32 noundef %44)
  br label %45

45:                                               ; preds = %36, %42
  %46 = add nsw i32 %27, -1
  %47 = getelementptr inbounds %struct.BodySpring, ptr %28, i64 1
  %48 = icmp sgt i32 %27, 1
  br i1 %48, label %26, label %49, !llvm.loop !252

49:                                               ; preds = %45, %21
  %50 = add nsw i32 %14, -1
  %51 = getelementptr inbounds %struct.BodyPoint, ptr %15, i64 1
  %52 = icmp sgt i32 %14, 1
  br i1 %52, label %13, label %53, !llvm.loop !253

53:                                               ; preds = %49, %5, %1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @calculate_collision_balls(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 111
  %3 = load ptr, ptr %2, align 8, !tbaa !112
  %4 = icmp eq ptr %3, null
  br i1 %4, label %91, label %5

5:                                                ; preds = %1
  %6 = load i32, ptr %3, align 8, !tbaa !102
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %91

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !101
  %11 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 3
  %12 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 36
  %13 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 33
  %14 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 33
  %15 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 33
  %16 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 33
  %17 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 33
  br label %18

18:                                               ; preds = %8, %87
  %19 = phi i32 [ %6, %8 ], [ %88, %87 ]
  %20 = phi ptr [ %10, %8 ], [ %89, %87 ]
  %21 = getelementptr inbounds %struct.BodyPoint, ptr %20, i64 0, i32 18
  store float 0.000000e+00, ptr %21, align 4, !tbaa !250
  %22 = getelementptr inbounds %struct.BodyPoint, ptr %20, i64 0, i32 13
  %23 = load i32, ptr %22, align 4, !tbaa !254
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %59

25:                                               ; preds = %18
  %26 = load ptr, ptr %11, align 8, !tbaa !108
  %27 = getelementptr inbounds %struct.BodyPoint, ptr %20, i64 0, i32 14
  %28 = load ptr, ptr %27, align 8, !tbaa !103
  %29 = getelementptr i32, ptr %28, i64 -1
  %30 = zext nneg i32 %23 to i64
  br label %31

31:                                               ; preds = %25, %52
  %32 = phi i64 [ %30, %25 ], [ %57, %52 ]
  %33 = phi float [ 0.000000e+00, %25 ], [ %56, %52 ]
  %34 = phi float [ 0xC480F0CF00000000, %25 ], [ %55, %52 ]
  %35 = phi float [ 0x4480F0CF00000000, %25 ], [ %54, %52 ]
  %36 = phi i32 [ 0, %25 ], [ %53, %52 ]
  %37 = getelementptr i32, ptr %29, i64 %32
  %38 = load i32, ptr %37, align 4, !tbaa !118
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.BodySpring, ptr %26, i64 %39, i32 6
  %41 = load i32, ptr %40, align 4, !tbaa !148
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %52

43:                                               ; preds = %31
  %44 = getelementptr inbounds %struct.BodySpring, ptr %26, i64 %39, i32 2
  %45 = load float, ptr %44, align 4, !tbaa !164
  %46 = fadd float %33, %45
  %47 = add nsw i32 %36, 1
  %48 = fcmp olt float %45, %35
  %49 = select i1 %48, float %45, float %35
  %50 = fcmp ogt float %45, %34
  %51 = select i1 %50, float %45, float %34
  br label %52

52:                                               ; preds = %31, %43
  %53 = phi i32 [ %47, %43 ], [ %36, %31 ]
  %54 = phi float [ %49, %43 ], [ %35, %31 ]
  %55 = phi float [ %51, %43 ], [ %34, %31 ]
  %56 = phi float [ %46, %43 ], [ %33, %31 ]
  %57 = add nsw i64 %32, -1
  %58 = icmp sgt i64 %32, 1
  br i1 %58, label %31, label %59, !llvm.loop !255

59:                                               ; preds = %52, %18
  %60 = phi i32 [ 0, %18 ], [ %53, %52 ]
  %61 = phi float [ 0x4480F0CF00000000, %18 ], [ %54, %52 ]
  %62 = phi float [ 0xC480F0CF00000000, %18 ], [ %55, %52 ]
  %63 = phi float [ 0.000000e+00, %18 ], [ %56, %52 ]
  %64 = icmp sgt i32 %60, 0
  br i1 %64, label %65, label %85

65:                                               ; preds = %59
  %66 = load i16, ptr %12, align 8, !tbaa !84
  switch i16 %66, label %87 [
    i16 0, label %67
    i16 1, label %69
    i16 2, label %74
    i16 3, label %77
    i16 4, label %80
  ]

67:                                               ; preds = %65
  %68 = load float, ptr %17, align 4, !tbaa !81
  br label %85

69:                                               ; preds = %65
  %70 = sitofp i32 %60 to float
  %71 = fdiv float %63, %70
  %72 = load float, ptr %16, align 4, !tbaa !81
  %73 = fmul float %71, %72
  br label %85

74:                                               ; preds = %65
  %75 = load float, ptr %15, align 4, !tbaa !81
  %76 = fmul float %61, %75
  br label %85

77:                                               ; preds = %65
  %78 = load float, ptr %14, align 4, !tbaa !81
  %79 = fmul float %62, %78
  br label %85

80:                                               ; preds = %65
  %81 = fadd float %61, %62
  %82 = fmul float %81, 5.000000e-01
  %83 = load float, ptr %13, align 4, !tbaa !81
  %84 = fmul float %82, %83
  br label %85

85:                                               ; preds = %59, %80, %67, %69, %74, %77
  %86 = phi float [ %79, %77 ], [ %76, %74 ], [ %73, %69 ], [ %68, %67 ], [ %84, %80 ], [ 0.000000e+00, %59 ]
  store float %86, ptr %21, align 4, !tbaa !250
  br label %87

87:                                               ; preds = %85, %65
  %88 = add nsw i32 %19, -1
  %89 = getelementptr inbounds %struct.BodyPoint, ptr %20, i64 1
  %90 = icmp sgt i32 %19, 1
  br i1 %90, label %18, label %91, !llvm.loop !256

91:                                               ; preds = %87, %5, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define internal fastcc void @add_bp_springlist(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BodyPoint, ptr %0, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !103
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %8 = tail call ptr %7(i64 noundef 4, ptr noundef nonnull @.str.6) #13
  store ptr %8, ptr %3, align 8, !tbaa !103
  store i32 %1, ptr %8, align 4, !tbaa !118
  %9 = getelementptr inbounds %struct.BodyPoint, ptr %0, i64 0, i32 13
  store i32 1, ptr %9, align 4, !tbaa !254
  br label %29

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.BodyPoint, ptr %0, i64 0, i32 13
  %12 = load i32, ptr %11, align 4, !tbaa !254
  %13 = add nsw i32 %12, 1
  store i32 %13, ptr %11, align 4, !tbaa !254
  %14 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %15 = sext i32 %13 to i64
  %16 = shl nsw i64 %15, 2
  %17 = tail call ptr %14(i64 noundef %16, ptr noundef nonnull @.str.6) #13
  %18 = load ptr, ptr %3, align 8, !tbaa !103
  %19 = load i32, ptr %11, align 4, !tbaa !254
  %20 = add nsw i32 %19, -1
  %21 = sext i32 %20 to i64
  %22 = shl nsw i64 %21, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %17, ptr align 4 %18, i64 %22, i1 false)
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %24 = load ptr, ptr %3, align 8, !tbaa !103
  tail call void %23(ptr noundef %24) #13
  store ptr %17, ptr %3, align 8, !tbaa !103
  %25 = load i32, ptr %11, align 4, !tbaa !254
  %26 = sext i32 %25 to i64
  %27 = getelementptr i32, ptr %17, i64 %26
  %28 = getelementptr i32, ptr %27, i64 -1
  store i32 %1, ptr %28, align 4, !tbaa !118
  br label %29

29:                                               ; preds = %10, %6
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @add_2nd_order_roller(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 111
  %5 = load ptr, ptr %4, align 8, !tbaa !112
  %6 = getelementptr inbounds %struct.SoftBody, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !108
  %8 = icmp eq ptr %7, null
  br i1 %8, label %128, label %9

9:                                                ; preds = %3
  store i32 0, ptr %1, align 4, !tbaa !118
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.SoftBody, ptr %5, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !155
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.BodySpring, ptr %7, i64 %14
  br label %16

16:                                               ; preds = %11, %9
  %17 = phi ptr [ %15, %11 ], [ null, %9 ]
  %18 = load i32, ptr %5, align 8, !tbaa !102
  %19 = getelementptr inbounds %struct.SoftBody, ptr %5, i64 0, i32 2
  %20 = icmp sgt i32 %18, 0
  br i1 %20, label %21, label %128

21:                                               ; preds = %16
  %22 = load ptr, ptr %19, align 8, !tbaa !101
  br label %23

23:                                               ; preds = %21, %122
  %24 = phi ptr [ %126, %122 ], [ %22, %21 ]
  %25 = phi i32 [ %124, %122 ], [ 0, %21 ]
  %26 = phi i32 [ %125, %122 ], [ %18, %21 ]
  %27 = phi ptr [ %123, %122 ], [ %17, %21 ]
  %28 = load i32, ptr %5, align 8, !tbaa !102
  %29 = sub nsw i32 %28, %26
  %30 = getelementptr inbounds %struct.BodyPoint, ptr %24, i64 0, i32 13
  %31 = load i32, ptr %30, align 4, !tbaa !254
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
  %41 = load ptr, ptr %6, align 8, !tbaa !108
  %42 = load ptr, ptr %34, align 8, !tbaa !103
  %43 = getelementptr i32, ptr %42, i64 %37
  %44 = getelementptr i32, ptr %43, i64 -1
  %45 = load i32, ptr %44, align 4, !tbaa !118
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.BodySpring, ptr %41, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !144
  %49 = icmp eq i32 %29, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %36
  %51 = load ptr, ptr %19, align 8, !tbaa !101
  %52 = getelementptr inbounds %struct.BodySpring, ptr %41, i64 %46, i32 1
  %53 = load i32, ptr %52, align 4, !tbaa !147
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.BodyPoint, ptr %51, i64 %54
  br label %66

56:                                               ; preds = %36
  %57 = getelementptr inbounds %struct.BodySpring, ptr %41, i64 %46, i32 1
  %58 = load i32, ptr %57, align 4, !tbaa !147
  %59 = icmp eq i32 %29, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load ptr, ptr %19, align 8, !tbaa !101
  %62 = sext i32 %48 to i64
  %63 = getelementptr inbounds %struct.BodyPoint, ptr %61, i64 %62
  br label %66

64:                                               ; preds = %56
  %65 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7)
  br label %66

66:                                               ; preds = %60, %64, %50
  %67 = phi ptr [ %55, %50 ], [ %63, %60 ], [ %40, %64 ]
  %68 = phi i32 [ %53, %50 ], [ %48, %60 ], [ %38, %64 ]
  %69 = icmp eq ptr %67, null
  br i1 %69, label %118, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.BodyPoint, ptr %67, i64 0, i32 13
  %72 = load i32, ptr %71, align 4, !tbaa !254
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %118

74:                                               ; preds = %70
  %75 = load ptr, ptr %6, align 8, !tbaa !108
  %76 = getelementptr inbounds %struct.BodyPoint, ptr %67, i64 0, i32 14
  %77 = load ptr, ptr %76, align 8, !tbaa !103
  %78 = getelementptr i32, ptr %77, i64 -1
  %79 = zext nneg i32 %72 to i64
  br label %80

80:                                               ; preds = %74, %114
  %81 = phi i64 [ %79, %74 ], [ %116, %114 ]
  %82 = phi ptr [ %39, %74 ], [ %115, %114 ]
  %83 = getelementptr i32, ptr %78, i64 %81
  %84 = load i32, ptr %83, align 4, !tbaa !118
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.BodySpring, ptr %75, i64 %85
  %87 = load i32, ptr %86, align 4, !tbaa !144
  %88 = icmp ne i32 %87, %68
  %89 = icmp sgt i32 %87, %29
  %90 = select i1 %88, i1 %89, i1 false
  br i1 %90, label %91, label %99

91:                                               ; preds = %80
  %92 = load i32, ptr %1, align 4, !tbaa !118
  %93 = add nsw i32 %92, 1
  store i32 %93, ptr %1, align 4, !tbaa !118
  br i1 %10, label %99, label %94

94:                                               ; preds = %91
  store i32 %29, ptr %82, align 4, !tbaa !144
  %95 = load i32, ptr %86, align 4, !tbaa !144
  %96 = getelementptr inbounds %struct.BodySpring, ptr %82, i64 0, i32 1
  store i32 %95, ptr %96, align 4, !tbaa !147
  %97 = getelementptr inbounds %struct.BodySpring, ptr %82, i64 0, i32 6
  store i32 2, ptr %97, align 4, !tbaa !148
  %98 = getelementptr inbounds %struct.BodySpring, ptr %82, i64 1
  br label %99

99:                                               ; preds = %91, %94, %80
  %100 = phi ptr [ %98, %94 ], [ %82, %91 ], [ %82, %80 ]
  %101 = getelementptr inbounds %struct.BodySpring, ptr %75, i64 %85, i32 1
  %102 = load i32, ptr %101, align 4, !tbaa !147
  %103 = icmp ne i32 %102, %68
  %104 = icmp sgt i32 %102, %29
  %105 = select i1 %103, i1 %104, i1 false
  br i1 %105, label %106, label %114

106:                                              ; preds = %99
  %107 = load i32, ptr %1, align 4, !tbaa !118
  %108 = add nsw i32 %107, 1
  store i32 %108, ptr %1, align 4, !tbaa !118
  br i1 %10, label %114, label %109

109:                                              ; preds = %106
  store i32 %29, ptr %100, align 4, !tbaa !144
  %110 = load i32, ptr %101, align 4, !tbaa !147
  %111 = getelementptr inbounds %struct.BodySpring, ptr %100, i64 0, i32 1
  store i32 %110, ptr %111, align 4, !tbaa !147
  %112 = getelementptr inbounds %struct.BodySpring, ptr %100, i64 0, i32 6
  store i32 2, ptr %112, align 4, !tbaa !148
  %113 = getelementptr inbounds %struct.BodySpring, ptr %100, i64 1
  br label %114

114:                                              ; preds = %99, %109, %106
  %115 = phi ptr [ %113, %109 ], [ %100, %106 ], [ %100, %99 ]
  %116 = add nsw i64 %81, -1
  %117 = icmp sgt i64 %81, 1
  br i1 %117, label %80, label %118, !llvm.loop !257

118:                                              ; preds = %114, %70, %66
  %119 = phi ptr [ %39, %66 ], [ %39, %70 ], [ %115, %114 ]
  %120 = add nsw i64 %37, -1
  %121 = icmp sgt i64 %37, 1
  br i1 %121, label %36, label %122, !llvm.loop !258

122:                                              ; preds = %118, %23
  %123 = phi ptr [ %27, %23 ], [ %119, %118 ]
  %124 = phi i32 [ %25, %23 ], [ %68, %118 ]
  %125 = add nsw i32 %26, -1
  %126 = getelementptr inbounds %struct.BodyPoint, ptr %24, i64 1
  %127 = icmp sgt i32 %26, 1
  br i1 %127, label %23, label %128, !llvm.loop !259

128:                                              ; preds = %122, %16, %3
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #7

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

declare i32 @BKE_nurbList_verts_count(ptr noundef) local_unnamed_addr #2

declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

declare void @unit_m3(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare double @PIL_check_seconds_timer() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @softbody_calc_forces(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3) unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.ListBase, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %struct.ListBase, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca [3 x float], align 4
  %12 = alloca %struct.EffectedPoint, align 8
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x float], align 4
  %17 = alloca [3 x float], align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = load i16, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 14), align 4, !tbaa !260
  %21 = and i16 %20, 16
  %22 = icmp eq i16 %21, 0
  %23 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 111
  %24 = load ptr, ptr %23, align 8, !tbaa !112
  br i1 %22, label %25, label %207

25:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #13
  store ptr null, ptr %9, align 8, !tbaa !34
  %26 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 52
  %27 = load i32, ptr %26, align 8, !tbaa !206
  %28 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !34
  %30 = icmp eq ptr %29, null
  br i1 %30, label %60, label %31

31:                                               ; preds = %25, %48
  %32 = phi i1 [ %50, %48 ], [ %30, %25 ]
  %33 = phi ptr [ %49, %48 ], [ %29, %25 ]
  %34 = getelementptr inbounds %struct.Base, ptr %33, i64 0, i32 2
  %35 = load i32, ptr %34, align 8, !tbaa !205
  %36 = and i32 %35, %27
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.Base, ptr %33, i64 0, i32 7
  %40 = load ptr, ptr %39, align 8, !tbaa !203
  %41 = getelementptr inbounds %struct.Object, ptr %40, i64 0, i32 110
  %42 = load ptr, ptr %41, align 8, !tbaa !208
  %43 = icmp eq ptr %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.PartDeflect, ptr %42, i64 0, i32 1
  %46 = load i16, ptr %45, align 4, !tbaa !209
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44, %38, %31
  %49 = load ptr, ptr %33, align 8, !tbaa !34
  %50 = icmp eq ptr %49, null
  br i1 %50, label %60, label %31, !llvm.loop !234

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 104
  %53 = load i16, ptr %52, align 2, !tbaa !119
  %54 = zext i16 %53 to i32
  %55 = and i32 %54, 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %51
  %58 = and i32 %54, 2048
  %59 = icmp ne i32 %58, 0
  br label %60

60:                                               ; preds = %48, %25, %57, %51
  %61 = phi i1 [ %32, %51 ], [ %32, %57 ], [ %30, %25 ], [ %50, %48 ]
  %62 = phi i1 [ false, %51 ], [ %59, %57 ], [ false, %25 ], [ false, %48 ]
  %63 = getelementptr inbounds %struct.SoftBody, ptr %24, i64 0, i32 37
  %64 = load i16, ptr %63, align 2, !tbaa !261
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 104
  %68 = load i16, ptr %67, align 2, !tbaa !119
  %69 = and i16 %68, 4
  %70 = icmp ne i16 %69, 0
  br label %71

71:                                               ; preds = %66, %60
  %72 = phi i1 [ false, %60 ], [ %70, %66 ]
  %73 = select i1 %62, i1 true, i1 %72
  br i1 %73, label %74, label %141

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.SoftBody, ptr %24, i64 0, i32 1
  %76 = load i32, ptr %75, align 4, !tbaa !155
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  store ptr null, ptr %7, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #13
  %77 = getelementptr inbounds %struct.SoftBody, ptr %24, i64 0, i32 49
  %78 = load ptr, ptr %77, align 8, !tbaa !99
  %79 = tail call ptr @pdInitEffectors(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef %78, i8 noundef zeroext 1) #13
  store ptr %79, ptr %7, align 8, !tbaa !34
  %80 = tail call i32 @BKE_scene_num_threads(ptr noundef %0) #13
  br label %81

81:                                               ; preds = %81, %74
  %82 = phi i32 [ %80, %74 ], [ %87, %81 ]
  %83 = sdiv i32 %76, %82
  %84 = icmp slt i32 %83, 100
  %85 = icmp sgt i32 %82, 1
  %86 = and i1 %85, %84
  %87 = add nsw i32 %82, -1
  br i1 %86, label %81, label %88, !llvm.loop !262

88:                                               ; preds = %81
  %89 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %90 = sext i32 %82 to i64
  %91 = shl nsw i64 %90, 6
  %92 = tail call ptr %89(i64 noundef %91, ptr noundef nonnull @.str.19) #13
  tail call void @llvm.memset.p0.i64(ptr align 8 %92, i8 0, i64 %91, i1 false)
  %93 = xor i32 %83, -1
  %94 = icmp sgt i32 %82, 0
  br i1 %94, label %95, label %118

95:                                               ; preds = %88
  %96 = zext nneg i32 %82 to i64
  br label %97

97:                                               ; preds = %95, %97
  %98 = phi i64 [ 0, %95 ], [ %116, %97 ]
  %99 = phi i32 [ %76, %95 ], [ %105, %97 ]
  %100 = getelementptr inbounds %struct.SB_thread_context, ptr %92, i64 %98
  store ptr %0, ptr %100, align 8, !tbaa !263
  %101 = getelementptr inbounds %struct.SB_thread_context, ptr %92, i64 %98, i32 1
  store ptr %1, ptr %101, align 8, !tbaa !265
  %102 = getelementptr inbounds %struct.SB_thread_context, ptr %92, i64 %98, i32 2
  store float 0.000000e+00, ptr %102, align 8, !tbaa !266
  %103 = getelementptr inbounds %struct.SB_thread_context, ptr %92, i64 %98, i32 3
  store float %3, ptr %103, align 4, !tbaa !267
  %104 = getelementptr inbounds %struct.SB_thread_context, ptr %92, i64 %98, i32 5
  store i32 %99, ptr %104, align 4, !tbaa !268
  %105 = add i32 %99, %93
  %106 = getelementptr inbounds %struct.SB_thread_context, ptr %92, i64 %98, i32 4
  %107 = tail call i32 @llvm.smax.i32(i32 %105, i32 0)
  store i32 %107, ptr %106, align 8, !tbaa !269
  %108 = load ptr, ptr %7, align 8, !tbaa !34
  %109 = getelementptr inbounds %struct.SB_thread_context, ptr %92, i64 %98, i32 6
  store ptr %108, ptr %109, align 8, !tbaa !270
  %110 = getelementptr inbounds %struct.SB_thread_context, ptr %92, i64 %98, i32 7
  store i32 0, ptr %110, align 8, !tbaa !271
  %111 = getelementptr inbounds %struct.SB_thread_context, ptr %92, i64 %98, i32 8
  store float 0.000000e+00, ptr %111, align 4, !tbaa !272
  %112 = getelementptr inbounds %struct.SB_thread_context, ptr %92, i64 %98, i32 9
  store float 0.000000e+00, ptr %112, align 8, !tbaa !273
  %113 = getelementptr inbounds %struct.SB_thread_context, ptr %92, i64 %98, i32 10
  %114 = trunc i64 %98 to i32
  store i32 %114, ptr %113, align 4, !tbaa !274
  %115 = getelementptr inbounds %struct.SB_thread_context, ptr %92, i64 %98, i32 11
  store i32 %82, ptr %115, align 8, !tbaa !275
  %116 = add nuw nsw i64 %98, 1
  %117 = icmp eq i64 %116, %96
  br i1 %117, label %118, label %97, !llvm.loop !276

118:                                              ; preds = %97, %88
  br i1 %85, label %119, label %127

119:                                              ; preds = %118
  call void @BLI_init_threads(ptr noundef nonnull %8, ptr noundef nonnull @exec_scan_for_ext_spring_forces, i32 noundef %82) #13
  %120 = zext nneg i32 %82 to i64
  br label %121

121:                                              ; preds = %119, %121
  %122 = phi i64 [ 0, %119 ], [ %124, %121 ]
  %123 = getelementptr inbounds %struct.SB_thread_context, ptr %92, i64 %122
  call void @BLI_insert_thread(ptr noundef nonnull %8, ptr noundef %123) #13
  %124 = add nuw nsw i64 %122, 1
  %125 = icmp ult i64 %124, %120
  br i1 %125, label %121, label %126, !llvm.loop !277

126:                                              ; preds = %121
  call void @BLI_end_threads(ptr noundef nonnull %8) #13
  br label %139

127:                                              ; preds = %118
  %128 = load ptr, ptr %92, align 8, !tbaa !263
  %129 = getelementptr inbounds %struct.SB_thread_context, ptr %92, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !265
  %131 = getelementptr inbounds %struct.SB_thread_context, ptr %92, i64 0, i32 3
  %132 = load float, ptr %131, align 4, !tbaa !267
  %133 = getelementptr inbounds %struct.SB_thread_context, ptr %92, i64 0, i32 4
  %134 = load i32, ptr %133, align 8, !tbaa !269
  %135 = getelementptr inbounds %struct.SB_thread_context, ptr %92, i64 0, i32 5
  %136 = load i32, ptr %135, align 4, !tbaa !268
  %137 = getelementptr inbounds %struct.SB_thread_context, ptr %92, i64 0, i32 6
  %138 = load ptr, ptr %137, align 8, !tbaa !270
  tail call fastcc void @_scan_for_ext_spring_forces(ptr noundef %128, ptr noundef %130, float noundef %132, i32 noundef %134, i32 noundef %136, ptr noundef %138)
  br label %139

139:                                              ; preds = %127, %126
  %140 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %140(ptr noundef %92) #13
  call void @pdEndEffectors(ptr noundef nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  br label %141

141:                                              ; preds = %139, %71
  %142 = getelementptr inbounds %struct.SoftBody, ptr %24, i64 0, i32 49
  %143 = load ptr, ptr %142, align 8, !tbaa !99
  %144 = call ptr @pdInitEffectors(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef %143, i8 noundef zeroext 1) #13
  store ptr %144, ptr %9, align 8, !tbaa !34
  br i1 %61, label %147, label %145

145:                                              ; preds = %141
  %146 = call fastcc i32 @sb_detect_aabb_collisionCached(ptr noundef %1)
  br label %147

147:                                              ; preds = %145, %141
  %148 = phi i32 [ %146, %145 ], [ 0, %141 ]
  %149 = load i32, ptr %24, align 8, !tbaa !102
  %150 = load ptr, ptr %9, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #13
  %151 = call i32 @BKE_scene_num_threads(ptr noundef %0) #13
  br label %152

152:                                              ; preds = %152, %147
  %153 = phi i32 [ %151, %147 ], [ %158, %152 ]
  %154 = sdiv i32 %149, %153
  %155 = icmp slt i32 %154, 100
  %156 = icmp sgt i32 %153, 1
  %157 = and i1 %156, %155
  %158 = add nsw i32 %153, -1
  br i1 %157, label %152, label %159, !llvm.loop !278

159:                                              ; preds = %152
  %160 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %161 = sext i32 %153 to i64
  %162 = shl nsw i64 %161, 6
  %163 = call ptr %160(i64 noundef %162, ptr noundef nonnull @.str.21) #13
  call void @llvm.memset.p0.i64(ptr align 8 %163, i8 0, i64 %162, i1 false)
  %164 = xor i32 %154, -1
  %165 = icmp sgt i32 %153, 0
  br i1 %165, label %166, label %188

166:                                              ; preds = %159
  %167 = zext nneg i32 %153 to i64
  br label %168

168:                                              ; preds = %166, %168
  %169 = phi i64 [ 0, %166 ], [ %186, %168 ]
  %170 = phi i32 [ %149, %166 ], [ %176, %168 ]
  %171 = getelementptr inbounds %struct.SB_thread_context, ptr %163, i64 %169
  store ptr %0, ptr %171, align 8, !tbaa !263
  %172 = getelementptr inbounds %struct.SB_thread_context, ptr %163, i64 %169, i32 1
  store ptr %1, ptr %172, align 8, !tbaa !265
  %173 = getelementptr inbounds %struct.SB_thread_context, ptr %163, i64 %169, i32 2
  store float %2, ptr %173, align 8, !tbaa !266
  %174 = getelementptr inbounds %struct.SB_thread_context, ptr %163, i64 %169, i32 3
  store float %3, ptr %174, align 4, !tbaa !267
  %175 = getelementptr inbounds %struct.SB_thread_context, ptr %163, i64 %169, i32 5
  store i32 %170, ptr %175, align 4, !tbaa !268
  %176 = add i32 %170, %164
  %177 = getelementptr inbounds %struct.SB_thread_context, ptr %163, i64 %169, i32 4
  %178 = call i32 @llvm.smax.i32(i32 %176, i32 0)
  store i32 %178, ptr %177, align 8, !tbaa !269
  %179 = getelementptr inbounds %struct.SB_thread_context, ptr %163, i64 %169, i32 6
  store ptr %150, ptr %179, align 8, !tbaa !270
  %180 = getelementptr inbounds %struct.SB_thread_context, ptr %163, i64 %169, i32 7
  store i32 %148, ptr %180, align 8, !tbaa !271
  %181 = getelementptr inbounds %struct.SB_thread_context, ptr %163, i64 %169, i32 8
  store float -1.000000e+00, ptr %181, align 4, !tbaa !272
  %182 = getelementptr inbounds %struct.SB_thread_context, ptr %163, i64 %169, i32 9
  store float 2.500000e-01, ptr %182, align 8, !tbaa !273
  %183 = getelementptr inbounds %struct.SB_thread_context, ptr %163, i64 %169, i32 10
  %184 = trunc i64 %169 to i32
  store i32 %184, ptr %183, align 4, !tbaa !274
  %185 = getelementptr inbounds %struct.SB_thread_context, ptr %163, i64 %169, i32 11
  store i32 %153, ptr %185, align 8, !tbaa !275
  %186 = add nuw nsw i64 %169, 1
  %187 = icmp eq i64 %186, %167
  br i1 %187, label %188, label %168, !llvm.loop !279

188:                                              ; preds = %168, %159
  br i1 %156, label %189, label %197

189:                                              ; preds = %188
  call void @BLI_init_threads(ptr noundef nonnull %6, ptr noundef nonnull @exec_softbody_calc_forces, i32 noundef %153) #13
  %190 = zext nneg i32 %153 to i64
  br label %191

191:                                              ; preds = %189, %191
  %192 = phi i64 [ 0, %189 ], [ %194, %191 ]
  %193 = getelementptr inbounds %struct.SB_thread_context, ptr %163, i64 %192
  call void @BLI_insert_thread(ptr noundef nonnull %6, ptr noundef %193) #13
  %194 = add nuw nsw i64 %192, 1
  %195 = icmp ult i64 %194, %190
  br i1 %195, label %191, label %196, !llvm.loop !280

196:                                              ; preds = %191
  call void @BLI_end_threads(ptr noundef nonnull %6) #13
  br label %199

197:                                              ; preds = %188
  %198 = call ptr @exec_softbody_calc_forces(ptr noundef %163)
  br label %199

199:                                              ; preds = %197, %196
  %200 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %200(ptr noundef %163) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #13
  %201 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 104
  %202 = load i16, ptr %201, align 2, !tbaa !119
  %203 = and i16 %202, 1024
  %204 = icmp eq i16 %203, 0
  br i1 %204, label %206, label %205

205:                                              ; preds = %199
  call fastcc void @scan_for_ext_face_forces(ptr noundef %1, float noundef %3)
  br label %206

206:                                              ; preds = %199, %205
  call void @pdEndEffectors(ptr noundef nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #13
  br label %935

207:                                              ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #13
  store ptr null, ptr %10, align 8, !tbaa !34
  %208 = getelementptr inbounds %struct.SoftBody, ptr %24, i64 0, i32 35
  %209 = load float, ptr %208, align 4, !tbaa !83
  %210 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 40, i32 1
  %211 = load i32, ptr %210, align 4, !tbaa !281
  %212 = and i32 %211, 1
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %229, label %214

214:                                              ; preds = %207
  %215 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 40
  %216 = load float, ptr %215, align 4, !tbaa !94
  %217 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 40, i32 0, i64 1
  %218 = load float, ptr %217, align 4, !tbaa !94
  %219 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 40, i32 0, i64 2
  %220 = load float, ptr %219, align 4, !tbaa !94
  %221 = getelementptr inbounds %struct.SoftBody, ptr %24, i64 0, i32 49
  %222 = load ptr, ptr %221, align 8, !tbaa !99
  %223 = getelementptr inbounds %struct.EffectorWeights, ptr %222, i64 0, i32 2
  %224 = load float, ptr %223, align 8, !tbaa !282
  %225 = fmul float %224, 0x3F50624DE0000000
  %226 = fmul float %216, %225
  %227 = fmul float %218, %225
  %228 = fmul float %220, %225
  br label %229

229:                                              ; preds = %214, %207
  %230 = phi float [ 0.000000e+00, %207 ], [ %228, %214 ]
  %231 = phi float [ 0.000000e+00, %207 ], [ %227, %214 ]
  %232 = phi float [ 0.000000e+00, %207 ], [ %226, %214 ]
  %233 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 52
  %234 = load i32, ptr %233, align 8, !tbaa !206
  %235 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 5
  %236 = load ptr, ptr %235, align 8, !tbaa !34
  %237 = icmp eq ptr %236, null
  br i1 %237, label %258, label %238

238:                                              ; preds = %229, %255
  %239 = phi i1 [ %257, %255 ], [ %237, %229 ]
  %240 = phi ptr [ %256, %255 ], [ %236, %229 ]
  %241 = getelementptr inbounds %struct.Base, ptr %240, i64 0, i32 2
  %242 = load i32, ptr %241, align 8, !tbaa !205
  %243 = and i32 %242, %234
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %255, label %245

245:                                              ; preds = %238
  %246 = getelementptr inbounds %struct.Base, ptr %240, i64 0, i32 7
  %247 = load ptr, ptr %246, align 8, !tbaa !203
  %248 = getelementptr inbounds %struct.Object, ptr %247, i64 0, i32 110
  %249 = load ptr, ptr %248, align 8, !tbaa !208
  %250 = icmp eq ptr %249, null
  br i1 %250, label %255, label %251

251:                                              ; preds = %245
  %252 = getelementptr inbounds %struct.PartDeflect, ptr %249, i64 0, i32 1
  %253 = load i16, ptr %252, align 4, !tbaa !209
  %254 = icmp eq i16 %253, 0
  br i1 %254, label %255, label %258

255:                                              ; preds = %251, %245, %238
  %256 = load ptr, ptr %240, align 8, !tbaa !34
  %257 = icmp eq ptr %256, null
  br i1 %257, label %258, label %238, !llvm.loop !234

258:                                              ; preds = %251, %255, %229
  %259 = phi i1 [ %237, %229 ], [ %239, %251 ], [ %257, %255 ]
  %260 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 104
  %261 = load i16, ptr %260, align 2, !tbaa !119
  %262 = zext i16 %261 to i32
  %263 = and i32 %262, 4
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %272, label %265

265:                                              ; preds = %258
  %266 = getelementptr inbounds %struct.SoftBody, ptr %24, i64 0, i32 3
  %267 = load ptr, ptr %266, align 8, !tbaa !108
  %268 = icmp eq ptr %267, null
  br i1 %268, label %272, label %269

269:                                              ; preds = %265
  %270 = and i32 %262, 512
  %271 = icmp ne i32 %270, 0
  br label %272

272:                                              ; preds = %269, %265, %258
  %273 = phi i1 [ false, %265 ], [ false, %258 ], [ %271, %269 ]
  %274 = or i1 %259, %264
  br i1 %274, label %278, label %275

275:                                              ; preds = %272
  %276 = and i32 %262, 2048
  %277 = icmp ne i32 %276, 0
  br label %278

278:                                              ; preds = %272, %275
  %279 = phi i1 [ false, %272 ], [ %277, %275 ]
  %280 = getelementptr inbounds %struct.SoftBody, ptr %24, i64 0, i32 37
  %281 = load i16, ptr %280, align 2, !tbaa !261
  %282 = icmp ne i16 %281, 0
  %283 = and i16 %261, 4
  %284 = icmp ne i16 %283, 0
  %285 = and i1 %284, %282
  %286 = select i1 %279, i1 true, i1 %285
  br i1 %286, label %287, label %293

287:                                              ; preds = %278
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  store ptr null, ptr %5, align 8, !tbaa !34
  %288 = getelementptr inbounds %struct.SoftBody, ptr %24, i64 0, i32 49
  %289 = load ptr, ptr %288, align 8, !tbaa !99
  %290 = tail call ptr @pdInitEffectors(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef %289, i8 noundef zeroext 1) #13
  store ptr %290, ptr %5, align 8, !tbaa !34
  %291 = getelementptr inbounds %struct.SoftBody, ptr %24, i64 0, i32 1
  %292 = load i32, ptr %291, align 4, !tbaa !155
  tail call fastcc void @_scan_for_ext_spring_forces(ptr noundef %0, ptr noundef %1, float noundef %3, i32 noundef 0, i32 noundef %292, ptr noundef %290)
  call void @pdEndEffectors(ptr noundef nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  br label %293

293:                                              ; preds = %278, %287
  %294 = load ptr, ptr %23, align 8, !tbaa !112
  %295 = getelementptr inbounds %struct.SoftBody, ptr %294, i64 0, i32 49
  %296 = load ptr, ptr %295, align 8, !tbaa !99
  %297 = call ptr @pdInitEffectors(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef %296, i8 noundef zeroext 1) #13
  store ptr %297, ptr %10, align 8, !tbaa !34
  br i1 %259, label %301, label %298

298:                                              ; preds = %293
  %299 = call fastcc i32 @sb_detect_aabb_collisionCached(ptr noundef %1)
  %300 = icmp eq i32 %299, 0
  br label %301

301:                                              ; preds = %298, %293
  %302 = phi i1 [ %300, %298 ], [ true, %293 ]
  %303 = load i32, ptr %24, align 8, !tbaa !102
  %304 = getelementptr inbounds %struct.SoftBody, ptr %24, i64 0, i32 2
  %305 = icmp sgt i32 %303, 0
  br i1 %305, label %306, label %929

306:                                              ; preds = %301
  %307 = load ptr, ptr %304, align 8, !tbaa !101
  %308 = getelementptr inbounds %struct.SoftBody, ptr %24, i64 0, i32 3
  %309 = fmul float %209, 2.000000e+00
  %310 = getelementptr inbounds float, ptr %11, i64 1
  %311 = getelementptr inbounds float, ptr %11, i64 2
  %312 = icmp eq ptr %1, null
  %313 = getelementptr inbounds %struct.SoftBody, ptr %24, i64 0, i32 34
  %314 = icmp eq ptr %1, null
  %315 = getelementptr inbounds %struct.SoftBody, ptr %24, i64 0, i32 13
  %316 = getelementptr inbounds %struct.SoftBody, ptr %24, i64 0, i32 14
  %317 = fcmp ogt float %2, 0.000000e+00
  %318 = getelementptr inbounds %struct.SoftBody, ptr %24, i64 0, i32 49
  %319 = getelementptr inbounds float, ptr %13, i64 1
  %320 = getelementptr inbounds float, ptr %13, i64 2
  %321 = getelementptr inbounds %struct.SoftBody, ptr %24, i64 0, i32 10
  %322 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 1
  %323 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 2
  %324 = getelementptr inbounds %struct.SoftBody, ptr %24, i64 0, i32 10
  %325 = getelementptr inbounds float, ptr %16, i64 1
  %326 = getelementptr inbounds float, ptr %16, i64 2
  %327 = getelementptr inbounds float, ptr %17, i64 1
  %328 = getelementptr inbounds float, ptr %17, i64 2
  %329 = getelementptr inbounds float, ptr %16, i64 1
  %330 = getelementptr inbounds float, ptr %16, i64 2
  %331 = getelementptr inbounds %struct.SoftBody, ptr %24, i64 0, i32 44
  %332 = getelementptr inbounds %struct.SoftBody, ptr %24, i64 0, i32 40
  %333 = getelementptr inbounds float, ptr %15, i64 1
  %334 = getelementptr inbounds float, ptr %15, i64 2
  %335 = getelementptr inbounds %struct.SoftBody, ptr %24, i64 0, i32 3
  br label %336

336:                                              ; preds = %306, %925
  %337 = phi ptr [ %307, %306 ], [ %927, %925 ]
  %338 = phi i32 [ %303, %306 ], [ %926, %925 ]
  %339 = getelementptr inbounds %struct.BodyPoint, ptr %337, i64 0, i32 5
  %340 = getelementptr inbounds %struct.BodyPoint, ptr %337, i64 0, i32 5, i64 2
  store float 0.000000e+00, ptr %340, align 4, !tbaa !94
  %341 = getelementptr inbounds %struct.BodyPoint, ptr %337, i64 0, i32 5, i64 1
  store float 0.000000e+00, ptr %341, align 4, !tbaa !94
  store float 0.000000e+00, ptr %339, align 4, !tbaa !94
  br i1 %273, label %342, label %559

342:                                              ; preds = %336
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #13
  %343 = load i32, ptr %24, align 8, !tbaa !102
  %344 = icmp slt i32 %343, %338
  br i1 %344, label %558, label %345

345:                                              ; preds = %342
  %346 = load ptr, ptr %304, align 8, !tbaa !101
  %347 = getelementptr inbounds %struct.BodyPoint, ptr %337, i64 0, i32 18
  %348 = getelementptr inbounds %struct.BodyPoint, ptr %337, i64 0, i32 3
  %349 = getelementptr inbounds %struct.BodyPoint, ptr %337, i64 0, i32 3, i64 1
  %350 = getelementptr inbounds %struct.BodyPoint, ptr %337, i64 0, i32 3, i64 2
  %351 = getelementptr inbounds %struct.BodyPoint, ptr %337, i64 0, i32 4
  %352 = getelementptr inbounds %struct.BodyPoint, ptr %337, i64 0, i32 4, i64 1
  %353 = getelementptr inbounds %struct.BodyPoint, ptr %337, i64 0, i32 4, i64 2
  %354 = icmp eq ptr %337, null
  %355 = getelementptr inbounds %struct.BodyPoint, ptr %337, i64 0, i32 20
  %356 = icmp eq ptr %337, null
  %357 = getelementptr inbounds %struct.BodyPoint, ptr %337, i64 0, i32 20
  br label %358

358:                                              ; preds = %345, %554
  %359 = phi i32 [ %343, %345 ], [ %555, %554 ]
  %360 = phi ptr [ %346, %345 ], [ %556, %554 ]
  %361 = getelementptr inbounds %struct.BodyPoint, ptr %360, i64 0, i32 18
  %362 = load float, ptr %361, align 4, !tbaa !250
  %363 = load float, ptr %347, align 4, !tbaa !250
  %364 = fadd float %362, %363
  %365 = getelementptr inbounds %struct.BodyPoint, ptr %360, i64 0, i32 3
  %366 = load float, ptr %348, align 4, !tbaa !94
  %367 = load float, ptr %365, align 4, !tbaa !94
  %368 = fsub float %366, %367
  %369 = load float, ptr %349, align 4, !tbaa !94
  %370 = getelementptr inbounds %struct.BodyPoint, ptr %360, i64 0, i32 3, i64 1
  %371 = load float, ptr %370, align 4, !tbaa !94
  %372 = fsub float %369, %371
  %373 = load float, ptr %350, align 4, !tbaa !94
  %374 = getelementptr inbounds %struct.BodyPoint, ptr %360, i64 0, i32 3, i64 2
  %375 = load float, ptr %374, align 4, !tbaa !94
  %376 = fsub float %373, %375
  %377 = fcmp olt float %368, 0.000000e+00
  %378 = fneg float %368
  %379 = select i1 %377, float %378, float %368
  %380 = fcmp ogt float %379, %364
  br i1 %380, label %554, label %381

381:                                              ; preds = %358
  %382 = fcmp olt float %372, 0.000000e+00
  %383 = fneg float %372
  %384 = select i1 %382, float %383, float %372
  %385 = fcmp ogt float %384, %364
  br i1 %385, label %554, label %386

386:                                              ; preds = %381
  %387 = fcmp olt float %376, 0.000000e+00
  %388 = fneg float %376
  %389 = select i1 %387, float %388, float %376
  %390 = fcmp ogt float %389, %364
  br i1 %390, label %554, label %391

391:                                              ; preds = %386
  %392 = fmul float %372, %372
  %393 = call float @llvm.fmuladd.f32(float %368, float %368, float %392)
  %394 = call float @llvm.fmuladd.f32(float %376, float %376, float %393)
  %395 = fcmp ogt float %394, 0x38AA95A5C0000000
  br i1 %395, label %396, label %402

396:                                              ; preds = %391
  %397 = call float @sqrtf(float noundef %394) #13
  %398 = fdiv float 1.000000e+00, %397
  %399 = fmul float %368, %398
  %400 = fmul float %372, %398
  %401 = fmul float %376, %398
  br label %402

402:                                              ; preds = %391, %396
  %403 = phi float [ %400, %396 ], [ 0.000000e+00, %391 ]
  %404 = phi float [ %399, %396 ], [ 0.000000e+00, %391 ]
  %405 = phi float [ %401, %396 ], [ 0.000000e+00, %391 ]
  %406 = phi float [ %397, %396 ], [ 0.000000e+00, %391 ]
  %407 = fcmp olt float %406, %364
  br i1 %407, label %408, label %554

408:                                              ; preds = %402
  %409 = getelementptr inbounds %struct.BodyPoint, ptr %360, i64 0, i32 13
  %410 = load i32, ptr %409, align 4, !tbaa !254
  %411 = icmp sgt i32 %410, 0
  br i1 %411, label %412, label %438

412:                                              ; preds = %408
  %413 = load ptr, ptr %308, align 8, !tbaa !108
  %414 = getelementptr inbounds %struct.BodyPoint, ptr %360, i64 0, i32 14
  %415 = load ptr, ptr %414, align 8, !tbaa !103
  %416 = getelementptr i32, ptr %415, i64 -1
  %417 = load i32, ptr %24, align 8, !tbaa !102
  %418 = sub nsw i32 %417, %338
  %419 = zext nneg i32 %410 to i64
  br label %420

420:                                              ; preds = %412, %434
  %421 = phi i64 [ %419, %412 ], [ %436, %434 ]
  %422 = phi i32 [ 0, %412 ], [ %435, %434 ]
  %423 = getelementptr i32, ptr %416, i64 %421
  %424 = load i32, ptr %423, align 4, !tbaa !118
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds %struct.BodySpring, ptr %413, i64 %425, i32 1
  %427 = load i32, ptr %426, align 4, !tbaa !147
  %428 = icmp eq i32 %418, %427
  br i1 %428, label %433, label %429

429:                                              ; preds = %420
  %430 = getelementptr inbounds %struct.BodySpring, ptr %413, i64 %425
  %431 = load i32, ptr %430, align 4, !tbaa !144
  %432 = icmp eq i32 %418, %431
  br i1 %432, label %433, label %434

433:                                              ; preds = %429, %420
  br label %434

434:                                              ; preds = %429, %433
  %435 = phi i32 [ 1, %433 ], [ %422, %429 ]
  %436 = add nsw i64 %421, -1
  %437 = icmp sgt i64 %421, 1
  br i1 %437, label %420, label %438, !llvm.loop !284

438:                                              ; preds = %434, %408
  %439 = phi i32 [ 0, %408 ], [ %435, %434 ]
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %441, label %554

441:                                              ; preds = %438
  %442 = fdiv float %209, %406
  %443 = fmul float %364, %364
  %444 = fdiv float %209, %443
  %445 = call float @llvm.fmuladd.f32(float %444, float %406, float %442)
  %446 = fdiv float %309, %364
  %447 = fsub float %445, %446
  %448 = getelementptr inbounds %struct.BodyPoint, ptr %360, i64 0, i32 4
  call void @mid_v3_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %351, ptr noundef nonnull %448) #13
  %449 = load float, ptr %11, align 4, !tbaa !94
  %450 = load float, ptr %351, align 4, !tbaa !94
  %451 = fsub float %449, %450
  %452 = load float, ptr %310, align 4, !tbaa !94
  %453 = load float, ptr %352, align 4, !tbaa !94
  %454 = fsub float %452, %453
  %455 = load float, ptr %311, align 4, !tbaa !94
  %456 = load float, ptr %353, align 4, !tbaa !94
  %457 = fsub float %455, %456
  br i1 %312, label %469, label %458

458:                                              ; preds = %441
  %459 = load ptr, ptr %23, align 8, !tbaa !112
  %460 = icmp eq ptr %459, null
  %461 = or i1 %354, %460
  br i1 %461, label %467, label %462

462:                                              ; preds = %458
  %463 = load float, ptr %355, align 4, !tbaa !190
  %464 = getelementptr inbounds %struct.SoftBody, ptr %459, i64 0, i32 7
  %465 = load float, ptr %464, align 4, !tbaa !44
  %466 = fmul float %463, %465
  br label %467

467:                                              ; preds = %462, %458
  %468 = phi float [ %466, %462 ], [ undef, %458 ]
  br i1 %461, label %469, label %471

469:                                              ; preds = %467, %441
  %470 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %471

471:                                              ; preds = %467, %469
  %472 = phi float [ %468, %467 ], [ 1.000000e+00, %469 ]
  %473 = fmul float %451, %472
  %474 = fmul float %454, %472
  %475 = fmul float %457, %472
  %476 = load float, ptr %313, align 8, !tbaa !82
  %477 = fsub float 1.000000e+00, %476
  %478 = fmul float %447, %477
  %479 = load float, ptr %339, align 4, !tbaa !94
  %480 = call float @llvm.fmuladd.f32(float %478, float %404, float %479)
  store float %480, ptr %339, align 4, !tbaa !94
  %481 = load float, ptr %341, align 4, !tbaa !94
  %482 = call float @llvm.fmuladd.f32(float %478, float %403, float %481)
  store float %482, ptr %341, align 4, !tbaa !94
  %483 = load float, ptr %340, align 4, !tbaa !94
  %484 = call float @llvm.fmuladd.f32(float %478, float %405, float %483)
  store float %484, ptr %340, align 4, !tbaa !94
  %485 = load float, ptr %313, align 8, !tbaa !82
  %486 = call float @llvm.fmuladd.f32(float %485, float %473, float %480)
  store float %486, ptr %339, align 4, !tbaa !94
  %487 = call float @llvm.fmuladd.f32(float %485, float %474, float %482)
  store float %487, ptr %341, align 4, !tbaa !94
  %488 = call float @llvm.fmuladd.f32(float %485, float %475, float %484)
  store float %488, ptr %340, align 4, !tbaa !94
  %489 = load float, ptr %11, align 4, !tbaa !94
  %490 = load float, ptr %448, align 4, !tbaa !94
  %491 = fsub float %489, %490
  %492 = load float, ptr %310, align 4, !tbaa !94
  %493 = getelementptr inbounds %struct.BodyPoint, ptr %360, i64 0, i32 4, i64 1
  %494 = load float, ptr %493, align 4, !tbaa !94
  %495 = fsub float %492, %494
  %496 = load float, ptr %311, align 4, !tbaa !94
  %497 = getelementptr inbounds %struct.BodyPoint, ptr %360, i64 0, i32 4, i64 2
  %498 = load float, ptr %497, align 4, !tbaa !94
  %499 = fsub float %496, %498
  br i1 %312, label %511, label %500

500:                                              ; preds = %471
  %501 = load ptr, ptr %23, align 8, !tbaa !112
  %502 = icmp eq ptr %501, null
  %503 = or i1 %356, %502
  br i1 %503, label %509, label %504

504:                                              ; preds = %500
  %505 = load float, ptr %357, align 4, !tbaa !190
  %506 = getelementptr inbounds %struct.SoftBody, ptr %501, i64 0, i32 7
  %507 = load float, ptr %506, align 4, !tbaa !44
  %508 = fmul float %505, %507
  br label %509

509:                                              ; preds = %504, %500
  %510 = phi float [ %508, %504 ], [ undef, %500 ]
  br i1 %503, label %511, label %513

511:                                              ; preds = %509, %471
  %512 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %513

513:                                              ; preds = %509, %511
  %514 = phi float [ %510, %509 ], [ 1.000000e+00, %511 ]
  br i1 %312, label %528, label %515

515:                                              ; preds = %513
  %516 = load ptr, ptr %23, align 8, !tbaa !112
  %517 = icmp eq ptr %516, null
  %518 = icmp eq ptr %360, null
  %519 = or i1 %518, %517
  br i1 %519, label %526, label %520

520:                                              ; preds = %515
  %521 = getelementptr inbounds %struct.BodyPoint, ptr %360, i64 0, i32 20
  %522 = load float, ptr %521, align 4, !tbaa !190
  %523 = getelementptr inbounds %struct.SoftBody, ptr %516, i64 0, i32 7
  %524 = load float, ptr %523, align 4, !tbaa !44
  %525 = fmul float %522, %524
  br label %526

526:                                              ; preds = %520, %515
  %527 = phi float [ %525, %520 ], [ undef, %515 ]
  br i1 %519, label %528, label %530

528:                                              ; preds = %526, %513
  %529 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %530

530:                                              ; preds = %526, %528
  %531 = phi float [ %527, %526 ], [ 1.000000e+00, %528 ]
  %532 = fadd float %514, %531
  %533 = fmul float %532, 5.000000e-01
  %534 = fmul float %491, %533
  %535 = fmul float %495, %533
  %536 = fmul float %499, %533
  %537 = getelementptr inbounds %struct.BodyPoint, ptr %360, i64 0, i32 5
  %538 = load float, ptr %313, align 8, !tbaa !82
  %539 = load float, ptr %537, align 4, !tbaa !94
  %540 = call float @llvm.fmuladd.f32(float %538, float %534, float %539)
  store float %540, ptr %537, align 4, !tbaa !94
  %541 = getelementptr inbounds %struct.BodyPoint, ptr %360, i64 0, i32 5, i64 1
  %542 = load float, ptr %541, align 4, !tbaa !94
  %543 = call float @llvm.fmuladd.f32(float %538, float %535, float %542)
  store float %543, ptr %541, align 4, !tbaa !94
  %544 = getelementptr inbounds %struct.BodyPoint, ptr %360, i64 0, i32 5, i64 2
  %545 = load float, ptr %544, align 4, !tbaa !94
  %546 = call float @llvm.fmuladd.f32(float %538, float %536, float %545)
  store float %546, ptr %544, align 4, !tbaa !94
  %547 = fneg float %447
  %548 = load float, ptr %313, align 8, !tbaa !82
  %549 = fsub float 1.000000e+00, %548
  %550 = fmul float %549, %547
  %551 = call float @llvm.fmuladd.f32(float %550, float %404, float %540)
  store float %551, ptr %537, align 4, !tbaa !94
  %552 = call float @llvm.fmuladd.f32(float %550, float %403, float %543)
  store float %552, ptr %541, align 4, !tbaa !94
  %553 = call float @llvm.fmuladd.f32(float %550, float %405, float %546)
  store float %553, ptr %544, align 4, !tbaa !94
  br label %554

554:                                              ; preds = %402, %530, %438, %358, %381, %386
  %555 = add nsw i32 %359, -1
  %556 = getelementptr inbounds %struct.BodyPoint, ptr %360, i64 1
  %557 = icmp sgt i32 %359, %338
  br i1 %557, label %358, label %558, !llvm.loop !285

558:                                              ; preds = %554, %342
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #13
  br label %559

559:                                              ; preds = %558, %336
  br i1 %314, label %588, label %560

560:                                              ; preds = %559
  %561 = load ptr, ptr %23, align 8, !tbaa !112
  %562 = load i16, ptr %260, align 2, !tbaa !119
  %563 = and i16 %562, 2
  %564 = icmp eq i16 %563, 0
  br i1 %564, label %584, label %565

565:                                              ; preds = %560
  %566 = icmp ne ptr %561, null
  %567 = icmp ne ptr %337, null
  %568 = and i1 %567, %566
  br i1 %568, label %569, label %584

569:                                              ; preds = %565
  %570 = getelementptr inbounds %struct.BodyPoint, ptr %337, i64 0, i32 6
  %571 = load float, ptr %570, align 8, !tbaa !138
  %572 = fcmp olt float %571, 0.000000e+00
  br i1 %572, label %584, label %573

573:                                              ; preds = %569
  %574 = getelementptr inbounds %struct.SoftBody, ptr %561, i64 0, i32 15
  %575 = load float, ptr %574, align 8, !tbaa !50
  %576 = getelementptr inbounds %struct.SoftBody, ptr %561, i64 0, i32 16
  %577 = load float, ptr %576, align 4, !tbaa !51
  %578 = fsub float %577, %575
  %579 = call float @llvm.fabs.f32(float %578)
  %580 = call float @llvm.fmuladd.f32(float %571, float %579, float %575)
  %581 = fpext float %580 to double
  %582 = call double @pow(double noundef %581, double noundef 4.000000e+00) #13
  %583 = fptrunc double %582 to float
  br label %584

584:                                              ; preds = %573, %569, %565, %560
  %585 = phi float [ %583, %573 ], [ 0xC09F3FF5C0000000, %560 ], [ 0xC09F3FF5C0000000, %569 ], [ 0xC09F3FF5C0000000, %565 ]
  %586 = phi float [ %583, %573 ], [ 0.000000e+00, %560 ], [ 0.000000e+00, %569 ], [ undef, %565 ]
  %587 = phi i1 [ false, %573 ], [ false, %560 ], [ false, %569 ], [ true, %565 ]
  br i1 %587, label %588, label %591

588:                                              ; preds = %584, %559
  %589 = phi float [ %585, %584 ], [ 0xC09F3FF5C0000000, %559 ]
  %590 = call i32 @puts(ptr nonnull dereferenceable(1) @str.25)
  br label %591

591:                                              ; preds = %584, %588
  %592 = phi float [ %589, %588 ], [ %586, %584 ]
  %593 = fcmp olt float %592, 0x3FEFF7CEE0000000
  br i1 %593, label %594, label %925

594:                                              ; preds = %591
  %595 = load i16, ptr %260, align 2, !tbaa !119
  %596 = and i16 %595, 2
  %597 = icmp eq i16 %596, 0
  br i1 %597, label %698, label %598

598:                                              ; preds = %594
  %599 = getelementptr inbounds %struct.BodyPoint, ptr %337, i64 0, i32 3
  %600 = getelementptr inbounds %struct.BodyPoint, ptr %337, i64 0, i32 2
  %601 = load float, ptr %599, align 4, !tbaa !94
  %602 = load float, ptr %600, align 4, !tbaa !94
  %603 = fsub float %601, %602
  %604 = getelementptr inbounds %struct.BodyPoint, ptr %337, i64 0, i32 3, i64 1
  %605 = load float, ptr %604, align 4, !tbaa !94
  %606 = getelementptr inbounds %struct.BodyPoint, ptr %337, i64 0, i32 2, i64 1
  %607 = load float, ptr %606, align 4, !tbaa !94
  %608 = fsub float %605, %607
  %609 = getelementptr inbounds %struct.BodyPoint, ptr %337, i64 0, i32 3, i64 2
  %610 = load float, ptr %609, align 4, !tbaa !94
  %611 = getelementptr inbounds %struct.BodyPoint, ptr %337, i64 0, i32 2, i64 2
  %612 = load float, ptr %611, align 4, !tbaa !94
  %613 = fsub float %610, %612
  br i1 %314, label %637, label %614

614:                                              ; preds = %598
  %615 = load ptr, ptr %23, align 8, !tbaa !112
  %616 = icmp eq ptr %615, null
  %617 = icmp eq ptr %337, null
  %618 = or i1 %617, %616
  br i1 %618, label %634, label %619

619:                                              ; preds = %614
  %620 = getelementptr inbounds %struct.BodyPoint, ptr %337, i64 0, i32 6
  %621 = load float, ptr %620, align 8, !tbaa !138
  %622 = fcmp olt float %621, 0.000000e+00
  br i1 %622, label %634, label %623

623:                                              ; preds = %619
  %624 = getelementptr inbounds %struct.SoftBody, ptr %615, i64 0, i32 15
  %625 = load float, ptr %624, align 8, !tbaa !50
  %626 = getelementptr inbounds %struct.SoftBody, ptr %615, i64 0, i32 16
  %627 = load float, ptr %626, align 4, !tbaa !51
  %628 = fsub float %627, %625
  %629 = call float @llvm.fabs.f32(float %628)
  %630 = call float @llvm.fmuladd.f32(float %621, float %629, float %625)
  %631 = fpext float %630 to double
  %632 = call double @pow(double noundef %631, double noundef 4.000000e+00) #13
  %633 = fptrunc double %632 to float
  br label %634

634:                                              ; preds = %623, %619, %614
  %635 = phi float [ %633, %623 ], [ 0xC09F3FF5C0000000, %619 ], [ 0xC09F3FF5C0000000, %614 ]
  %636 = phi float [ %633, %623 ], [ 0.000000e+00, %619 ], [ undef, %614 ]
  br i1 %618, label %637, label %640

637:                                              ; preds = %634, %598
  %638 = phi float [ %635, %634 ], [ 0xC09F3FF5C0000000, %598 ]
  %639 = call i32 @puts(ptr nonnull dereferenceable(1) @str.25)
  br label %640

640:                                              ; preds = %634, %637
  %641 = phi float [ %638, %637 ], [ %636, %634 ]
  %642 = load float, ptr %315, align 8, !tbaa !48
  %643 = fneg float %641
  %644 = call float @llvm.fmuladd.f32(float %643, float %642, float 1.000000e+00)
  %645 = fdiv float 1.000000e+00, %644
  %646 = fadd float %645, -1.000000e+00
  %647 = fneg float %646
  %648 = load float, ptr %339, align 4, !tbaa !94
  %649 = call float @llvm.fmuladd.f32(float %647, float %603, float %648)
  store float %649, ptr %339, align 4, !tbaa !94
  %650 = load float, ptr %341, align 4, !tbaa !94
  %651 = call float @llvm.fmuladd.f32(float %647, float %608, float %650)
  store float %651, ptr %341, align 4, !tbaa !94
  %652 = load float, ptr %340, align 4, !tbaa !94
  %653 = call float @llvm.fmuladd.f32(float %647, float %613, float %652)
  store float %653, ptr %340, align 4, !tbaa !94
  %654 = getelementptr inbounds %struct.BodyPoint, ptr %337, i64 0, i32 1
  %655 = load float, ptr %337, align 4, !tbaa !94
  %656 = load float, ptr %654, align 4, !tbaa !94
  %657 = fsub float %655, %656
  %658 = getelementptr inbounds float, ptr %337, i64 1
  %659 = load float, ptr %658, align 4, !tbaa !94
  %660 = getelementptr inbounds %struct.BodyPoint, ptr %337, i64 0, i32 1, i64 1
  %661 = load float, ptr %660, align 4, !tbaa !94
  %662 = fsub float %659, %661
  %663 = getelementptr inbounds float, ptr %337, i64 2
  %664 = load float, ptr %663, align 4, !tbaa !94
  %665 = getelementptr inbounds %struct.BodyPoint, ptr %337, i64 0, i32 1, i64 2
  %666 = load float, ptr %665, align 4, !tbaa !94
  %667 = fsub float %664, %666
  %668 = load float, ptr %316, align 4, !tbaa !49
  %669 = fmul float %668, 0x3F847AE140000000
  %670 = getelementptr inbounds %struct.BodyPoint, ptr %337, i64 0, i32 4
  %671 = load float, ptr %670, align 4, !tbaa !94
  br i1 %317, label %672, label %684

672:                                              ; preds = %640
  %673 = getelementptr inbounds %struct.BodyPoint, ptr %337, i64 0, i32 4, i64 2
  %674 = load float, ptr %673, align 4, !tbaa !94
  %675 = fadd float %667, %674
  %676 = getelementptr inbounds %struct.BodyPoint, ptr %337, i64 0, i32 4, i64 1
  %677 = load float, ptr %676, align 4, !tbaa !94
  %678 = fadd float %662, %677
  %679 = fadd float %657, %671
  %680 = fneg float %669
  %681 = call float @llvm.fmuladd.f32(float %680, float %679, float %649)
  store float %681, ptr %339, align 4, !tbaa !94
  %682 = call float @llvm.fmuladd.f32(float %680, float %678, float %651)
  store float %682, ptr %341, align 4, !tbaa !94
  %683 = call float @llvm.fmuladd.f32(float %680, float %675, float %653)
  br label %696

684:                                              ; preds = %640
  %685 = fsub float %657, %671
  %686 = fneg float %669
  %687 = call float @llvm.fmuladd.f32(float %686, float %685, float %649)
  store float %687, ptr %339, align 4, !tbaa !94
  %688 = getelementptr inbounds %struct.BodyPoint, ptr %337, i64 0, i32 4, i64 1
  %689 = load float, ptr %688, align 4, !tbaa !94
  %690 = fsub float %662, %689
  %691 = call float @llvm.fmuladd.f32(float %686, float %690, float %651)
  store float %691, ptr %341, align 4, !tbaa !94
  %692 = getelementptr inbounds %struct.BodyPoint, ptr %337, i64 0, i32 4, i64 2
  %693 = load float, ptr %692, align 8, !tbaa !94
  %694 = fsub float %667, %693
  %695 = call float @llvm.fmuladd.f32(float %686, float %694, float %653)
  br label %696

696:                                              ; preds = %684, %672
  %697 = phi float [ %683, %672 ], [ %695, %684 ]
  store float %697, ptr %340, align 4, !tbaa !94
  br label %698

698:                                              ; preds = %696, %594
  br i1 %314, label %712, label %699

699:                                              ; preds = %698
  %700 = load ptr, ptr %23, align 8, !tbaa !112
  %701 = icmp eq ptr %700, null
  %702 = icmp eq ptr %337, null
  %703 = or i1 %702, %701
  br i1 %703, label %710, label %704

704:                                              ; preds = %699
  %705 = getelementptr inbounds %struct.BodyPoint, ptr %337, i64 0, i32 20
  %706 = load float, ptr %705, align 4, !tbaa !190
  %707 = getelementptr inbounds %struct.SoftBody, ptr %700, i64 0, i32 7
  %708 = load float, ptr %707, align 4, !tbaa !44
  %709 = fmul float %706, %708
  br label %710

710:                                              ; preds = %704, %699
  %711 = phi float [ %709, %704 ], [ undef, %699 ]
  br i1 %703, label %712, label %714

712:                                              ; preds = %710, %698
  %713 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %714

714:                                              ; preds = %710, %712
  %715 = phi float [ %711, %710 ], [ 1.000000e+00, %712 ]
  %716 = load float, ptr %339, align 4, !tbaa !94
  %717 = call float @llvm.fmuladd.f32(float %232, float %715, float %716)
  store float %717, ptr %339, align 4, !tbaa !94
  %718 = load float, ptr %341, align 4, !tbaa !94
  %719 = call float @llvm.fmuladd.f32(float %231, float %715, float %718)
  store float %719, ptr %341, align 4, !tbaa !94
  %720 = load float, ptr %340, align 4, !tbaa !94
  %721 = call float @llvm.fmuladd.f32(float %230, float %715, float %720)
  store float %721, ptr %340, align 4, !tbaa !94
  %722 = load ptr, ptr %10, align 8, !tbaa !34
  %723 = icmp eq ptr %722, null
  br i1 %723, label %769, label %724

724:                                              ; preds = %714
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %13, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %14, i8 0, i64 12, i1 false)
  %725 = getelementptr inbounds %struct.BodyPoint, ptr %337, i64 0, i32 3
  %726 = getelementptr inbounds %struct.BodyPoint, ptr %337, i64 0, i32 4
  %727 = load ptr, ptr %304, align 8, !tbaa !101
  %728 = ptrtoint ptr %727 to i64
  %729 = ptrtoint ptr %337 to i64
  %730 = sub i64 %728, %729
  %731 = sdiv exact i64 %730, 192
  %732 = trunc i64 %731 to i32
  call void @pd_point_from_soft(ptr noundef %0, ptr noundef nonnull %725, ptr noundef nonnull %726, i32 noundef %732, ptr noundef nonnull %12) #13
  %733 = load ptr, ptr %10, align 8, !tbaa !34
  %734 = load ptr, ptr %318, align 8, !tbaa !99
  call void @pdDoEffectors(ptr noundef %733, ptr noundef null, ptr noundef %734, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14) #13
  %735 = load float, ptr %13, align 4, !tbaa !94
  %736 = fmul float %735, 0xBF847AE140000000
  store float %736, ptr %13, align 4, !tbaa !94
  %737 = load float, ptr %319, align 4, !tbaa !94
  %738 = fmul float %737, 0xBF847AE140000000
  store float %738, ptr %319, align 4, !tbaa !94
  %739 = load float, ptr %320, align 4, !tbaa !94
  %740 = fmul float %739, 0xBF847AE140000000
  store float %740, ptr %320, align 4, !tbaa !94
  %741 = load float, ptr %339, align 4, !tbaa !94
  %742 = fadd float %736, %741
  store float %742, ptr %339, align 4, !tbaa !94
  %743 = load float, ptr %341, align 4, !tbaa !94
  %744 = fadd float %738, %743
  store float %744, ptr %341, align 4, !tbaa !94
  %745 = load float, ptr %340, align 4, !tbaa !94
  %746 = fadd float %740, %745
  store float %746, ptr %340, align 4, !tbaa !94
  %747 = load float, ptr %321, align 4, !tbaa !38
  %748 = load float, ptr %726, align 8, !tbaa !94
  %749 = load float, ptr %14, align 4, !tbaa !94
  %750 = fmul float %749, 2.500000e-01
  %751 = fdiv float %750, 0x3F847AE140000000
  %752 = fadd float %748, %751
  %753 = fmul float %747, 0xBF847AE140000000
  %754 = call float @llvm.fmuladd.f32(float %753, float %752, float %742)
  store float %754, ptr %339, align 4, !tbaa !94
  %755 = getelementptr inbounds %struct.BodyPoint, ptr %337, i64 0, i32 4, i64 1
  %756 = load float, ptr %755, align 4, !tbaa !94
  %757 = load float, ptr %322, align 4, !tbaa !94
  %758 = fmul float %757, 2.500000e-01
  %759 = fdiv float %758, 0x3F847AE140000000
  %760 = fadd float %756, %759
  %761 = call float @llvm.fmuladd.f32(float %753, float %760, float %744)
  store float %761, ptr %341, align 4, !tbaa !94
  %762 = getelementptr inbounds %struct.BodyPoint, ptr %337, i64 0, i32 4, i64 2
  %763 = load float, ptr %762, align 8, !tbaa !94
  %764 = load float, ptr %323, align 4, !tbaa !94
  %765 = fmul float %764, 2.500000e-01
  %766 = fdiv float %765, 0x3F847AE140000000
  %767 = fadd float %763, %766
  %768 = call float @llvm.fmuladd.f32(float %753, float %767, float %746)
  store float %768, ptr %340, align 4, !tbaa !94
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #13
  br label %784

769:                                              ; preds = %714
  %770 = load float, ptr %324, align 4, !tbaa !38
  %771 = fmul float %770, 0x3F847AE140000000
  %772 = getelementptr inbounds %struct.BodyPoint, ptr %337, i64 0, i32 4
  %773 = load float, ptr %772, align 8, !tbaa !94
  %774 = fneg float %773
  %775 = call float @llvm.fmuladd.f32(float %774, float %771, float %717)
  store float %775, ptr %339, align 4, !tbaa !94
  %776 = getelementptr inbounds %struct.BodyPoint, ptr %337, i64 0, i32 4, i64 1
  %777 = load float, ptr %776, align 4, !tbaa !94
  %778 = fneg float %777
  %779 = call float @llvm.fmuladd.f32(float %778, float %771, float %719)
  store float %779, ptr %341, align 4, !tbaa !94
  %780 = getelementptr inbounds %struct.BodyPoint, ptr %337, i64 0, i32 4, i64 2
  %781 = load float, ptr %780, align 8, !tbaa !94
  %782 = fneg float %781
  %783 = call float @llvm.fmuladd.f32(float %782, float %771, float %721)
  store float %783, ptr %340, align 4, !tbaa !94
  br label %784

784:                                              ; preds = %769, %724
  %785 = getelementptr inbounds %struct.BodyPoint, ptr %337, i64 0, i32 15
  store float 0.000000e+00, ptr %785, align 8, !tbaa !286
  %786 = getelementptr inbounds %struct.BodyPoint, ptr %337, i64 0, i32 16
  store float 0.000000e+00, ptr %786, align 4, !tbaa !287
  %787 = getelementptr inbounds %struct.BodyPoint, ptr %337, i64 0, i32 19
  %788 = load i16, ptr %787, align 8, !tbaa !179
  %789 = and i16 %788, -2
  store i16 %789, ptr %787, align 8, !tbaa !179
  br i1 %302, label %877, label %790

790:                                              ; preds = %784
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %15, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %16, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #13
  store float 1.000000e+00, ptr %18, align 4, !tbaa !94
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #13
  %791 = getelementptr inbounds %struct.BodyPoint, ptr %337, i64 0, i32 3
  %792 = call fastcc i32 @sb_deflect_face(ptr noundef %1, ptr noundef nonnull %791, ptr noundef nonnull %17, ptr noundef nonnull %15, ptr noundef nonnull %18, float noundef %3, ptr noundef nonnull %16, ptr noundef nonnull %19), !range !288
  %793 = icmp eq i32 %792, 0
  br i1 %793, label %876, label %794

794:                                              ; preds = %790
  %795 = load float, ptr %19, align 4
  %796 = fcmp olt float %795, 0.000000e+00
  br i1 %796, label %797, label %845

797:                                              ; preds = %794
  %798 = load i16, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 14), align 4, !tbaa !260
  %799 = and i16 %798, 1
  %800 = icmp eq i16 %799, 0
  br i1 %800, label %814, label %801

801:                                              ; preds = %797
  %802 = fneg float %795
  %803 = load float, ptr %17, align 4, !tbaa !94
  %804 = load float, ptr %791, align 4, !tbaa !94
  %805 = call float @llvm.fmuladd.f32(float %802, float %803, float %804)
  store float %805, ptr %791, align 4, !tbaa !94
  %806 = load float, ptr %327, align 4, !tbaa !94
  %807 = getelementptr inbounds %struct.BodyPoint, ptr %337, i64 0, i32 3, i64 1
  %808 = load float, ptr %807, align 4, !tbaa !94
  %809 = call float @llvm.fmuladd.f32(float %802, float %806, float %808)
  store float %809, ptr %807, align 4, !tbaa !94
  %810 = load float, ptr %328, align 4, !tbaa !94
  %811 = getelementptr inbounds %struct.BodyPoint, ptr %337, i64 0, i32 3, i64 2
  %812 = load float, ptr %811, align 4, !tbaa !94
  %813 = call float @llvm.fmuladd.f32(float %802, float %810, float %812)
  store float %813, ptr %811, align 4, !tbaa !94
  br label %835

814:                                              ; preds = %797
  %815 = getelementptr inbounds %struct.BodyPoint, ptr %337, i64 0, i32 4
  %816 = load float, ptr %815, align 4, !tbaa !94
  %817 = load float, ptr %16, align 4, !tbaa !94
  %818 = fsub float %816, %817
  %819 = getelementptr inbounds %struct.BodyPoint, ptr %337, i64 0, i32 4, i64 1
  %820 = load float, ptr %819, align 4, !tbaa !94
  %821 = load float, ptr %329, align 4, !tbaa !94
  %822 = fsub float %820, %821
  %823 = getelementptr inbounds %struct.BodyPoint, ptr %337, i64 0, i32 4, i64 2
  %824 = load float, ptr %823, align 4, !tbaa !94
  %825 = load float, ptr %330, align 4, !tbaa !94
  %826 = fsub float %824, %825
  %827 = load float, ptr %18, align 4, !tbaa !94
  %828 = fmul float %827, -5.000000e+01
  %829 = load float, ptr %339, align 4, !tbaa !94
  %830 = call float @llvm.fmuladd.f32(float %828, float %818, float %829)
  store float %830, ptr %339, align 4, !tbaa !94
  %831 = load float, ptr %341, align 4, !tbaa !94
  %832 = call float @llvm.fmuladd.f32(float %828, float %822, float %831)
  store float %832, ptr %341, align 4, !tbaa !94
  %833 = load float, ptr %340, align 4, !tbaa !94
  %834 = call float @llvm.fmuladd.f32(float %828, float %826, float %833)
  store float %834, ptr %340, align 4, !tbaa !94
  br label %835

835:                                              ; preds = %814, %801
  %836 = load ptr, ptr %331, align 8, !tbaa !88
  %837 = getelementptr inbounds %struct.SBScratch, ptr %836, i64 0, i32 2
  %838 = load i16, ptr %837, align 2, !tbaa !242
  %839 = or i16 %838, 1
  store i16 %839, ptr %837, align 2, !tbaa !242
  %840 = load i16, ptr %787, align 8, !tbaa !179
  %841 = or i16 %840, 1
  store i16 %841, ptr %787, align 8, !tbaa !179
  %842 = load i16, ptr %332, align 8, !tbaa !87
  %843 = sitofp i16 %842 to float
  %844 = fmul float %843, 0x3F847AE140000000
  store float %844, ptr %785, align 8, !tbaa !286
  br label %866

845:                                              ; preds = %794
  %846 = getelementptr inbounds %struct.BodyPoint, ptr %337, i64 0, i32 4
  %847 = load float, ptr %846, align 4, !tbaa !94
  %848 = load float, ptr %16, align 4, !tbaa !94
  %849 = fsub float %847, %848
  %850 = getelementptr inbounds %struct.BodyPoint, ptr %337, i64 0, i32 4, i64 1
  %851 = load float, ptr %850, align 4, !tbaa !94
  %852 = load float, ptr %325, align 4, !tbaa !94
  %853 = fsub float %851, %852
  %854 = getelementptr inbounds %struct.BodyPoint, ptr %337, i64 0, i32 4, i64 2
  %855 = load float, ptr %854, align 4, !tbaa !94
  %856 = load float, ptr %326, align 4, !tbaa !94
  %857 = fsub float %855, %856
  %858 = load float, ptr %18, align 4, !tbaa !94
  %859 = fmul float %858, -5.000000e+01
  %860 = load float, ptr %339, align 4, !tbaa !94
  %861 = call float @llvm.fmuladd.f32(float %859, float %849, float %860)
  store float %861, ptr %339, align 4, !tbaa !94
  %862 = load float, ptr %341, align 4, !tbaa !94
  %863 = call float @llvm.fmuladd.f32(float %859, float %853, float %862)
  store float %863, ptr %341, align 4, !tbaa !94
  %864 = load float, ptr %340, align 4, !tbaa !94
  %865 = call float @llvm.fmuladd.f32(float %859, float %857, float %864)
  store float %865, ptr %340, align 4, !tbaa !94
  br label %866

866:                                              ; preds = %845, %835
  %867 = load float, ptr %15, align 4, !tbaa !94
  %868 = load float, ptr %339, align 4, !tbaa !94
  %869 = fadd float %867, %868
  store float %869, ptr %339, align 4, !tbaa !94
  %870 = load float, ptr %333, align 4, !tbaa !94
  %871 = load float, ptr %341, align 4, !tbaa !94
  %872 = fadd float %870, %871
  store float %872, ptr %341, align 4, !tbaa !94
  %873 = load float, ptr %334, align 4, !tbaa !94
  %874 = load float, ptr %340, align 4, !tbaa !94
  %875 = fadd float %873, %874
  store float %875, ptr %340, align 4, !tbaa !94
  br label %876

876:                                              ; preds = %866, %790
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #13
  br label %877

877:                                              ; preds = %876, %784
  %878 = load i16, ptr %260, align 2, !tbaa !119
  %879 = and i16 %878, 4
  %880 = icmp eq i16 %879, 0
  br i1 %880, label %925, label %881

881:                                              ; preds = %877
  %882 = load ptr, ptr %335, align 8, !tbaa !108
  %883 = icmp eq ptr %882, null
  br i1 %883, label %925, label %884

884:                                              ; preds = %881
  %885 = getelementptr inbounds %struct.BodyPoint, ptr %337, i64 0, i32 13
  %886 = load i32, ptr %885, align 4, !tbaa !254
  %887 = icmp sgt i32 %886, 0
  br i1 %887, label %888, label %925

888:                                              ; preds = %884
  %889 = getelementptr inbounds %struct.BodyPoint, ptr %337, i64 0, i32 14
  %890 = zext nneg i32 %886 to i64
  br label %891

891:                                              ; preds = %888, %920
  %892 = phi i64 [ %890, %888 ], [ %923, %920 ]
  %893 = load ptr, ptr %335, align 8, !tbaa !108
  %894 = load ptr, ptr %889, align 8, !tbaa !103
  %895 = getelementptr i32, ptr %894, i64 %892
  %896 = getelementptr i32, ptr %895, i64 -1
  %897 = load i32, ptr %896, align 4, !tbaa !118
  %898 = sext i32 %897 to i64
  %899 = getelementptr inbounds %struct.BodySpring, ptr %893, i64 %898
  br i1 %286, label %900, label %920

900:                                              ; preds = %891
  %901 = getelementptr inbounds %struct.BodySpring, ptr %893, i64 %898, i32 5
  %902 = load float, ptr %901, align 4, !tbaa !94
  %903 = load float, ptr %339, align 4, !tbaa !94
  %904 = fadd float %902, %903
  store float %904, ptr %339, align 4, !tbaa !94
  %905 = getelementptr inbounds float, ptr %901, i64 1
  %906 = load float, ptr %905, align 4, !tbaa !94
  %907 = load float, ptr %341, align 4, !tbaa !94
  %908 = fadd float %906, %907
  store float %908, ptr %341, align 4, !tbaa !94
  %909 = getelementptr inbounds float, ptr %901, i64 2
  %910 = load float, ptr %909, align 4, !tbaa !94
  %911 = load float, ptr %340, align 4, !tbaa !94
  %912 = fadd float %910, %911
  store float %912, ptr %340, align 4, !tbaa !94
  %913 = getelementptr inbounds %struct.BodySpring, ptr %893, i64 %898, i32 7
  %914 = load i16, ptr %913, align 4, !tbaa !289
  %915 = and i16 %914, 1
  %916 = icmp eq i16 %915, 0
  br i1 %916, label %920, label %917

917:                                              ; preds = %900
  %918 = getelementptr inbounds %struct.BodySpring, ptr %893, i64 %898, i32 3
  %919 = load float, ptr %918, align 4, !tbaa !290
  store float %919, ptr %785, align 8, !tbaa !286
  br label %920

920:                                              ; preds = %900, %917, %891
  %921 = load i32, ptr %24, align 8, !tbaa !102
  %922 = sub nsw i32 %921, %338
  call fastcc void @sb_spring_force(ptr noundef %1, i32 noundef %922, ptr noundef %899)
  %923 = add nsw i64 %892, -1
  %924 = icmp sgt i64 %892, 1
  br i1 %924, label %891, label %925, !llvm.loop !291

925:                                              ; preds = %920, %884, %877, %881, %591
  %926 = add nsw i32 %338, -1
  %927 = getelementptr inbounds %struct.BodyPoint, ptr %337, i64 1
  %928 = icmp sgt i32 %338, 1
  br i1 %928, label %336, label %929, !llvm.loop !292

929:                                              ; preds = %925, %301
  %930 = load i16, ptr %260, align 2, !tbaa !119
  %931 = and i16 %930, 1024
  %932 = icmp eq i16 %931, 0
  br i1 %932, label %934, label %933

933:                                              ; preds = %929
  call fastcc void @scan_for_ext_face_forces(ptr noundef %1, float noundef %3)
  br label %934

934:                                              ; preds = %933, %929
  call void @pdEndEffectors(ptr noundef nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #13
  br label %935

935:                                              ; preds = %206, %934
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @softbody_apply_forces(ptr noundef readonly %0, float noundef %1, i32 noundef %2, ptr noundef writeonly %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 111
  %9 = load ptr, ptr %8, align 8, !tbaa !112
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #13
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.SoftBody, ptr %9, i64 0, i32 12
  %13 = load float, ptr %12, align 4, !tbaa !46
  br label %14

14:                                               ; preds = %5, %11
  %15 = phi float [ %13, %11 ], [ 1.000000e+00, %5 ]
  %16 = fmul float %15, %1
  %17 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  store float 0x4415AF1D80000000, ptr %17, align 4, !tbaa !94
  %18 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  store float 0x4415AF1D80000000, ptr %18, align 4, !tbaa !94
  store float 0x4415AF1D80000000, ptr %6, align 4, !tbaa !94
  %19 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  store float 0xC415AF1D80000000, ptr %19, align 4, !tbaa !94
  %20 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  store float 0xC415AF1D80000000, ptr %20, align 4, !tbaa !94
  store float 0xC415AF1D80000000, ptr %7, align 4, !tbaa !94
  %21 = load i32, ptr %9, align 8, !tbaa !102
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %314

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.SoftBody, ptr %9, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !101
  %26 = icmp eq ptr %0, null
  %27 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 104
  %28 = and i32 %4, 1
  %29 = icmp eq i32 %28, 0
  %30 = icmp eq i32 %2, 1
  %31 = icmp eq i32 %2, 2
  br label %32

32:                                               ; preds = %23, %297
  %33 = phi i32 [ 0, %23 ], [ %308, %297 ]
  %34 = phi i32 [ %21, %23 ], [ %309, %297 ]
  %35 = phi float [ 0.000000e+00, %23 ], [ %302, %297 ]
  %36 = phi float [ 0.000000e+00, %23 ], [ %301, %297 ]
  %37 = phi ptr [ %25, %23 ], [ %310, %297 ]
  %38 = phi float [ 0.000000e+00, %23 ], [ %300, %297 ]
  %39 = phi float [ 0.000000e+00, %23 ], [ %299, %297 ]
  %40 = phi float [ 0.000000e+00, %23 ], [ %298, %297 ]
  br i1 %26, label %54, label %41

41:                                               ; preds = %32
  %42 = load ptr, ptr %8, align 8, !tbaa !112
  %43 = icmp eq ptr %42, null
  %44 = icmp eq ptr %37, null
  %45 = or i1 %44, %43
  br i1 %45, label %52, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 20
  %48 = load float, ptr %47, align 4, !tbaa !190
  %49 = getelementptr inbounds %struct.SoftBody, ptr %42, i64 0, i32 7
  %50 = load float, ptr %49, align 4, !tbaa !44
  %51 = fmul float %48, %50
  br label %52

52:                                               ; preds = %46, %41
  %53 = phi float [ %51, %46 ], [ undef, %41 ]
  br i1 %45, label %54, label %56

54:                                               ; preds = %52, %32
  %55 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %56

56:                                               ; preds = %52, %54
  %57 = phi float [ %53, %52 ], [ 1.000000e+00, %54 ]
  %58 = fcmp ogt float %57, 0x3F847A5B00000000
  br i1 %58, label %59, label %75

59:                                               ; preds = %56
  br i1 %26, label %73, label %60

60:                                               ; preds = %59
  %61 = load ptr, ptr %8, align 8, !tbaa !112
  %62 = icmp eq ptr %61, null
  %63 = icmp eq ptr %37, null
  %64 = or i1 %63, %62
  br i1 %64, label %71, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 20
  %67 = load float, ptr %66, align 4, !tbaa !190
  %68 = getelementptr inbounds %struct.SoftBody, ptr %61, i64 0, i32 7
  %69 = load float, ptr %68, align 4, !tbaa !44
  %70 = fmul float %67, %69
  br label %71

71:                                               ; preds = %65, %60
  %72 = phi float [ %70, %65 ], [ undef, %60 ]
  br i1 %64, label %73, label %75

73:                                               ; preds = %71, %59
  %74 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %75

75:                                               ; preds = %73, %71, %56
  %76 = phi float [ 0x3F847A5B00000000, %56 ], [ %72, %71 ], [ 1.000000e+00, %73 ]
  %77 = fdiv float %16, %76
  br i1 %26, label %106, label %78

78:                                               ; preds = %75
  %79 = load ptr, ptr %8, align 8, !tbaa !112
  %80 = load i16, ptr %27, align 2, !tbaa !119
  %81 = and i16 %80, 2
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %102, label %83

83:                                               ; preds = %78
  %84 = icmp ne ptr %79, null
  %85 = icmp ne ptr %37, null
  %86 = and i1 %85, %84
  br i1 %86, label %87, label %102

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 6
  %89 = load float, ptr %88, align 8, !tbaa !138
  %90 = fcmp olt float %89, 0.000000e+00
  br i1 %90, label %102, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.SoftBody, ptr %79, i64 0, i32 15
  %93 = load float, ptr %92, align 8, !tbaa !50
  %94 = getelementptr inbounds %struct.SoftBody, ptr %79, i64 0, i32 16
  %95 = load float, ptr %94, align 4, !tbaa !51
  %96 = fsub float %95, %93
  %97 = call float @llvm.fabs.f32(float %96)
  %98 = call float @llvm.fmuladd.f32(float %89, float %97, float %93)
  %99 = fpext float %98 to double
  %100 = call double @pow(double noundef %99, double noundef 4.000000e+00) #13
  %101 = fptrunc double %100 to float
  br label %102

102:                                              ; preds = %91, %87, %83, %78
  %103 = phi float [ %101, %91 ], [ 0xC09F3FF5C0000000, %78 ], [ 0xC09F3FF5C0000000, %87 ], [ 0xC09F3FF5C0000000, %83 ]
  %104 = phi float [ %101, %91 ], [ 0.000000e+00, %78 ], [ 0.000000e+00, %87 ], [ undef, %83 ]
  %105 = phi i1 [ false, %91 ], [ false, %78 ], [ false, %87 ], [ true, %83 ]
  br i1 %105, label %106, label %109

106:                                              ; preds = %102, %75
  %107 = phi float [ %103, %102 ], [ 0xC09F3FF5C0000000, %75 ]
  %108 = call i32 @puts(ptr nonnull dereferenceable(1) @str.25)
  br label %109

109:                                              ; preds = %102, %106
  %110 = phi float [ %107, %106 ], [ %104, %102 ]
  %111 = fcmp olt float %110, 0x3FEFF7CEE0000000
  br i1 %111, label %112, label %297

112:                                              ; preds = %109
  br i1 %29, label %120, label %113

113:                                              ; preds = %112
  %114 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 4
  %115 = load float, ptr %114, align 4, !tbaa !94
  %116 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 4, i64 1
  %117 = load float, ptr %116, align 4, !tbaa !94
  %118 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 4, i64 2
  %119 = load float, ptr %118, align 4, !tbaa !94
  br label %120

120:                                              ; preds = %113, %112
  %121 = phi float [ %40, %112 ], [ %119, %113 ]
  %122 = phi float [ %39, %112 ], [ %117, %113 ]
  %123 = phi float [ %38, %112 ], [ %115, %113 ]
  %124 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 5
  %125 = load float, ptr %124, align 4, !tbaa !94
  %126 = fmul float %77, %125
  store float %126, ptr %124, align 4, !tbaa !94
  %127 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 5, i64 1
  %128 = load float, ptr %127, align 4, !tbaa !94
  %129 = fmul float %77, %128
  store float %129, ptr %127, align 4, !tbaa !94
  %130 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 5, i64 2
  %131 = load float, ptr %130, align 4, !tbaa !94
  %132 = fmul float %77, %131
  store float %132, ptr %130, align 4, !tbaa !94
  br i1 %30, label %133, label %146

133:                                              ; preds = %120
  %134 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 8
  %135 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 4
  %136 = load float, ptr %135, align 4, !tbaa !94
  store float %136, ptr %134, align 4, !tbaa !94
  %137 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 4, i64 1
  %138 = load float, ptr %137, align 4, !tbaa !94
  %139 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 8, i64 1
  store float %138, ptr %139, align 4, !tbaa !94
  %140 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 4, i64 2
  %141 = load float, ptr %140, align 4, !tbaa !94
  %142 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 8, i64 2
  store float %141, ptr %142, align 4, !tbaa !94
  %143 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 10
  store float %126, ptr %143, align 4, !tbaa !94
  %144 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 10, i64 1
  store float %129, ptr %144, align 4, !tbaa !94
  %145 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 10, i64 2
  store float %132, ptr %145, align 4, !tbaa !94
  br label %146

146:                                              ; preds = %133, %120
  br i1 %31, label %147, label %181

147:                                              ; preds = %146
  %148 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 8
  %149 = load float, ptr %148, align 8, !tbaa !94
  %150 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 10
  %151 = load float, ptr %150, align 8, !tbaa !94
  %152 = fadd float %126, %151
  %153 = call float @llvm.fmuladd.f32(float %152, float 5.000000e-01, float %149)
  %154 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 4
  store float %153, ptr %154, align 8, !tbaa !94
  %155 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 8, i64 1
  %156 = load float, ptr %155, align 4, !tbaa !94
  %157 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 10, i64 1
  %158 = load float, ptr %157, align 4, !tbaa !94
  %159 = fadd float %129, %158
  %160 = call float @llvm.fmuladd.f32(float %159, float 5.000000e-01, float %156)
  %161 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 4, i64 1
  store float %160, ptr %161, align 4, !tbaa !94
  %162 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 8, i64 2
  %163 = load float, ptr %162, align 8, !tbaa !94
  %164 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 10, i64 2
  %165 = load float, ptr %164, align 8, !tbaa !94
  %166 = fadd float %132, %165
  %167 = call float @llvm.fmuladd.f32(float %166, float 5.000000e-01, float %163)
  %168 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 4, i64 2
  store float %167, ptr %168, align 8, !tbaa !94
  %169 = fsub float %126, %151
  %170 = call float @llvm.fabs.f32(float %169)
  %171 = fcmp ogt float %35, %170
  %172 = select i1 %171, float %35, float %170
  %173 = fsub float %129, %158
  %174 = call float @llvm.fabs.f32(float %173)
  %175 = fcmp ogt float %172, %174
  %176 = select i1 %175, float %172, float %174
  %177 = fsub float %132, %165
  %178 = call float @llvm.fabs.f32(float %177)
  %179 = fcmp ogt float %176, %178
  %180 = select i1 %179, float %176, float %178
  br label %194

181:                                              ; preds = %146
  %182 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 4
  %183 = load float, ptr %124, align 4, !tbaa !94
  %184 = load float, ptr %182, align 4, !tbaa !94
  %185 = fadd float %183, %184
  store float %185, ptr %182, align 4, !tbaa !94
  %186 = load float, ptr %127, align 4, !tbaa !94
  %187 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 4, i64 1
  %188 = load float, ptr %187, align 4, !tbaa !94
  %189 = fadd float %186, %188
  store float %189, ptr %187, align 4, !tbaa !94
  %190 = load float, ptr %130, align 4, !tbaa !94
  %191 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 4, i64 2
  %192 = load float, ptr %191, align 4, !tbaa !94
  %193 = fadd float %190, %192
  store float %193, ptr %191, align 4, !tbaa !94
  br label %194

194:                                              ; preds = %181, %147
  %195 = phi float [ %180, %147 ], [ %35, %181 ]
  br i1 %29, label %196, label %203

196:                                              ; preds = %194
  %197 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 4
  %198 = load float, ptr %197, align 4, !tbaa !94
  %199 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 4, i64 1
  %200 = load float, ptr %199, align 4, !tbaa !94
  %201 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 4, i64 2
  %202 = load float, ptr %201, align 4, !tbaa !94
  br label %203

203:                                              ; preds = %196, %194
  %204 = phi float [ %202, %196 ], [ %121, %194 ]
  %205 = phi float [ %200, %196 ], [ %122, %194 ]
  %206 = phi float [ %198, %196 ], [ %123, %194 ]
  %207 = fmul float %16, %206
  %208 = fmul float %16, %205
  %209 = fmul float %16, %204
  br i1 %30, label %210, label %223

210:                                              ; preds = %203
  %211 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 7
  %212 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 3
  %213 = load float, ptr %212, align 4, !tbaa !94
  store float %213, ptr %211, align 4, !tbaa !94
  %214 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 3, i64 1
  %215 = load float, ptr %214, align 4, !tbaa !94
  %216 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 7, i64 1
  store float %215, ptr %216, align 4, !tbaa !94
  %217 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 3, i64 2
  %218 = load float, ptr %217, align 4, !tbaa !94
  %219 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 7, i64 2
  store float %218, ptr %219, align 4, !tbaa !94
  %220 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 9
  store float %207, ptr %220, align 4, !tbaa !94
  %221 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 9, i64 1
  store float %208, ptr %221, align 4, !tbaa !94
  %222 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 9, i64 2
  store float %209, ptr %222, align 4, !tbaa !94
  br label %223

223:                                              ; preds = %210, %203
  br i1 %31, label %224, label %287

224:                                              ; preds = %223
  %225 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 7
  %226 = load float, ptr %225, align 4, !tbaa !94
  %227 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 9
  %228 = load float, ptr %227, align 4, !tbaa !94
  %229 = fadd float %207, %228
  %230 = call float @llvm.fmuladd.f32(float %229, float 5.000000e-01, float %226)
  %231 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 3
  store float %230, ptr %231, align 4, !tbaa !94
  %232 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 7, i64 1
  %233 = load float, ptr %232, align 4, !tbaa !94
  %234 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 9, i64 1
  %235 = load float, ptr %234, align 4, !tbaa !94
  %236 = fadd float %208, %235
  %237 = call float @llvm.fmuladd.f32(float %236, float 5.000000e-01, float %233)
  %238 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 3, i64 1
  store float %237, ptr %238, align 4, !tbaa !94
  %239 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 7, i64 2
  %240 = load float, ptr %239, align 4, !tbaa !94
  %241 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 9, i64 2
  %242 = load float, ptr %241, align 4, !tbaa !94
  %243 = fadd float %209, %242
  %244 = call float @llvm.fmuladd.f32(float %243, float 5.000000e-01, float %240)
  %245 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 3, i64 2
  store float %244, ptr %245, align 4, !tbaa !94
  %246 = fsub float %207, %228
  %247 = call float @llvm.fabs.f32(float %246)
  %248 = fcmp ogt float %36, %247
  %249 = select i1 %248, float %36, float %247
  %250 = fsub float %208, %235
  %251 = call float @llvm.fabs.f32(float %250)
  %252 = fcmp ogt float %249, %251
  %253 = select i1 %252, float %249, float %251
  %254 = fsub float %209, %242
  %255 = call float @llvm.fabs.f32(float %254)
  %256 = fcmp ogt float %253, %255
  %257 = select i1 %256, float %253, float %255
  %258 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 16
  %259 = load float, ptr %258, align 4, !tbaa !287
  %260 = fcmp ogt float %259, 0.000000e+00
  br i1 %260, label %261, label %272

261:                                              ; preds = %224
  %262 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 4
  %263 = fsub float 1.000000e+00, %259
  %264 = load float, ptr %262, align 4, !tbaa !94
  %265 = fmul float %263, %264
  store float %265, ptr %262, align 4, !tbaa !94
  %266 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 4, i64 1
  %267 = load float, ptr %266, align 4, !tbaa !94
  %268 = fmul float %263, %267
  store float %268, ptr %266, align 4, !tbaa !94
  %269 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 4, i64 2
  %270 = load float, ptr %269, align 4, !tbaa !94
  %271 = fmul float %263, %270
  store float %271, ptr %269, align 4, !tbaa !94
  br label %272

272:                                              ; preds = %261, %224
  %273 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 15
  %274 = load float, ptr %273, align 8, !tbaa !286
  %275 = fcmp ogt float %274, 0.000000e+00
  br i1 %275, label %276, label %297

276:                                              ; preds = %272
  %277 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 4
  %278 = fsub float 1.000000e+00, %274
  %279 = load float, ptr %277, align 4, !tbaa !94
  %280 = fmul float %278, %279
  store float %280, ptr %277, align 4, !tbaa !94
  %281 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 4, i64 1
  %282 = load float, ptr %281, align 4, !tbaa !94
  %283 = fmul float %278, %282
  store float %283, ptr %281, align 4, !tbaa !94
  %284 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 4, i64 2
  %285 = load float, ptr %284, align 4, !tbaa !94
  %286 = fmul float %278, %285
  store float %286, ptr %284, align 4, !tbaa !94
  br label %297

287:                                              ; preds = %223
  %288 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 3
  %289 = load float, ptr %288, align 4, !tbaa !94
  %290 = fadd float %207, %289
  store float %290, ptr %288, align 4, !tbaa !94
  %291 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 3, i64 1
  %292 = load float, ptr %291, align 4, !tbaa !94
  %293 = fadd float %208, %292
  store float %293, ptr %291, align 4, !tbaa !94
  %294 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 3, i64 2
  %295 = load float, ptr %294, align 4, !tbaa !94
  %296 = fadd float %209, %295
  store float %296, ptr %294, align 4, !tbaa !94
  br label %297

297:                                              ; preds = %287, %276, %272, %109
  %298 = phi float [ %209, %276 ], [ %209, %272 ], [ %209, %287 ], [ %40, %109 ]
  %299 = phi float [ %208, %276 ], [ %208, %272 ], [ %208, %287 ], [ %39, %109 ]
  %300 = phi float [ %207, %276 ], [ %207, %272 ], [ %207, %287 ], [ %38, %109 ]
  %301 = phi float [ %257, %276 ], [ %257, %272 ], [ %36, %287 ], [ %36, %109 ]
  %302 = phi float [ %195, %276 ], [ %195, %272 ], [ %195, %287 ], [ %35, %109 ]
  %303 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 3
  call void @minmax_v3v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %303) #13
  %304 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 0, i32 19
  %305 = load i16, ptr %304, align 8, !tbaa !179
  %306 = and i16 %305, 1
  %307 = icmp eq i16 %306, 0
  %308 = select i1 %307, i32 %33, i32 1
  %309 = add nsw i32 %34, -1
  %310 = getelementptr inbounds %struct.BodyPoint, ptr %37, i64 1
  %311 = icmp sgt i32 %34, 1
  br i1 %311, label %32, label %312, !llvm.loop !293

312:                                              ; preds = %297
  %313 = icmp eq i32 %308, 0
  br label %314

314:                                              ; preds = %312, %14
  %315 = phi float [ 0.000000e+00, %14 ], [ %301, %312 ]
  %316 = phi float [ 0.000000e+00, %14 ], [ %302, %312 ]
  %317 = phi i1 [ true, %14 ], [ %313, %312 ]
  %318 = getelementptr inbounds %struct.SoftBody, ptr %9, i64 0, i32 44
  %319 = load ptr, ptr %318, align 8, !tbaa !88
  %320 = icmp eq ptr %319, null
  br i1 %320, label %334, label %321

321:                                              ; preds = %314
  %322 = getelementptr inbounds %struct.SBScratch, ptr %319, i64 0, i32 5
  %323 = load float, ptr %6, align 4, !tbaa !94
  store float %323, ptr %322, align 4, !tbaa !94
  %324 = load float, ptr %18, align 4, !tbaa !94
  %325 = getelementptr inbounds %struct.SBScratch, ptr %319, i64 0, i32 5, i64 1
  store float %324, ptr %325, align 4, !tbaa !94
  %326 = load float, ptr %17, align 4, !tbaa !94
  %327 = getelementptr inbounds %struct.SBScratch, ptr %319, i64 0, i32 5, i64 2
  store float %326, ptr %327, align 4, !tbaa !94
  %328 = getelementptr inbounds %struct.SBScratch, ptr %319, i64 0, i32 6
  %329 = load float, ptr %7, align 4, !tbaa !94
  store float %329, ptr %328, align 4, !tbaa !94
  %330 = load float, ptr %20, align 4, !tbaa !94
  %331 = getelementptr inbounds %struct.SBScratch, ptr %319, i64 0, i32 6, i64 1
  store float %330, ptr %331, align 4, !tbaa !94
  %332 = load float, ptr %19, align 4, !tbaa !94
  %333 = getelementptr inbounds %struct.SBScratch, ptr %319, i64 0, i32 6, i64 2
  store float %332, ptr %333, align 4, !tbaa !94
  br label %334

334:                                              ; preds = %321, %314
  %335 = icmp eq ptr %3, null
  br i1 %335, label %349, label %336

336:                                              ; preds = %334
  %337 = getelementptr inbounds %struct.SoftBody, ptr %9, i64 0, i32 28
  %338 = load i16, ptr %337, align 2, !tbaa !97
  %339 = and i16 %338, 2
  %340 = icmp eq i16 %339, 0
  %341 = fcmp ogt float %315, %316
  %342 = select i1 %340, i1 true, i1 %341
  %343 = select i1 %342, float %315, float %316
  store float %343, ptr %3, align 4, !tbaa !94
  br i1 %317, label %349, label %344

344:                                              ; preds = %336
  %345 = getelementptr inbounds %struct.SoftBody, ptr %9, i64 0, i32 20
  %346 = load i16, ptr %345, align 2, !tbaa !294
  %347 = sitofp i16 %346 to float
  %348 = fdiv float %343, %347
  store float %348, ptr %3, align 4, !tbaa !94
  br label %349

349:                                              ; preds = %336, %344, %334
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #13
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @softbody_apply_goalsnap(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 111
  %3 = load ptr, ptr %2, align 8, !tbaa !112
  %4 = load i32, ptr %3, align 8, !tbaa !102
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %68

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !101
  %9 = icmp eq ptr %0, null
  %10 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 104
  br label %11

11:                                               ; preds = %6, %64
  %12 = phi i32 [ %4, %6 ], [ %65, %64 ]
  %13 = phi ptr [ %8, %6 ], [ %66, %64 ]
  br i1 %9, label %42, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %2, align 8, !tbaa !112
  %16 = load i16, ptr %10, align 2, !tbaa !119
  %17 = and i16 %16, 2
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %38, label %19

19:                                               ; preds = %14
  %20 = icmp ne ptr %15, null
  %21 = icmp ne ptr %13, null
  %22 = and i1 %21, %20
  br i1 %22, label %23, label %38

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.BodyPoint, ptr %13, i64 0, i32 6
  %25 = load float, ptr %24, align 8, !tbaa !138
  %26 = fcmp olt float %25, 0.000000e+00
  br i1 %26, label %38, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.SoftBody, ptr %15, i64 0, i32 15
  %29 = load float, ptr %28, align 8, !tbaa !50
  %30 = getelementptr inbounds %struct.SoftBody, ptr %15, i64 0, i32 16
  %31 = load float, ptr %30, align 4, !tbaa !51
  %32 = fsub float %31, %29
  %33 = tail call float @llvm.fabs.f32(float %32)
  %34 = tail call float @llvm.fmuladd.f32(float %25, float %33, float %29)
  %35 = fpext float %34 to double
  %36 = tail call double @pow(double noundef %35, double noundef 4.000000e+00) #13
  %37 = fptrunc double %36 to float
  br label %38

38:                                               ; preds = %27, %23, %19, %14
  %39 = phi float [ %37, %27 ], [ 0xC09F3FF5C0000000, %14 ], [ 0xC09F3FF5C0000000, %23 ], [ 0xC09F3FF5C0000000, %19 ]
  %40 = phi float [ %37, %27 ], [ 0.000000e+00, %14 ], [ 0.000000e+00, %23 ], [ undef, %19 ]
  %41 = phi i1 [ false, %27 ], [ false, %14 ], [ false, %23 ], [ true, %19 ]
  br i1 %41, label %42, label %45

42:                                               ; preds = %38, %11
  %43 = phi float [ %39, %38 ], [ 0xC09F3FF5C0000000, %11 ]
  %44 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.25)
  br label %45

45:                                               ; preds = %38, %42
  %46 = phi float [ %43, %42 ], [ %40, %38 ]
  %47 = fcmp ult float %46, 0x3FEFF7CEE0000000
  br i1 %47, label %64, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.BodyPoint, ptr %13, i64 0, i32 7
  %50 = getelementptr inbounds %struct.BodyPoint, ptr %13, i64 0, i32 3
  %51 = load float, ptr %50, align 4, !tbaa !94
  store float %51, ptr %49, align 4, !tbaa !94
  %52 = getelementptr inbounds %struct.BodyPoint, ptr %13, i64 0, i32 3, i64 1
  %53 = load float, ptr %52, align 4, !tbaa !94
  %54 = getelementptr inbounds %struct.BodyPoint, ptr %13, i64 0, i32 7, i64 1
  store float %53, ptr %54, align 4, !tbaa !94
  %55 = getelementptr inbounds %struct.BodyPoint, ptr %13, i64 0, i32 3, i64 2
  %56 = load float, ptr %55, align 4, !tbaa !94
  %57 = getelementptr inbounds %struct.BodyPoint, ptr %13, i64 0, i32 7, i64 2
  store float %56, ptr %57, align 4, !tbaa !94
  %58 = getelementptr inbounds %struct.BodyPoint, ptr %13, i64 0, i32 2
  %59 = load float, ptr %58, align 4, !tbaa !94
  store float %59, ptr %50, align 4, !tbaa !94
  %60 = getelementptr inbounds %struct.BodyPoint, ptr %13, i64 0, i32 2, i64 1
  %61 = load float, ptr %60, align 4, !tbaa !94
  store float %61, ptr %52, align 4, !tbaa !94
  %62 = getelementptr inbounds %struct.BodyPoint, ptr %13, i64 0, i32 2, i64 2
  %63 = load float, ptr %62, align 4, !tbaa !94
  store float %63, ptr %55, align 4, !tbaa !94
  br label %64

64:                                               ; preds = %45, %48
  %65 = add nsw i32 %12, -1
  %66 = getelementptr inbounds %struct.BodyPoint, ptr %13, i64 1
  %67 = icmp sgt i32 %12, 1
  br i1 %67, label %11, label %68, !llvm.loop !295

68:                                               ; preds = %64, %1
  ret void
}

declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @modifiers_findByType(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #8

declare ptr @pdInitEffectors(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sb_detect_aabb_collisionCached(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 111
  %3 = load ptr, ptr %2, align 8, !tbaa !112
  %4 = icmp eq ptr %3, null
  br i1 %4, label %76, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.SoftBody, ptr %3, i64 0, i32 44
  %7 = load ptr, ptr %6, align 8, !tbaa !88
  %8 = icmp eq ptr %7, null
  br i1 %8, label %76, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.SBScratch, ptr %7, i64 0, i32 5
  %11 = load float, ptr %10, align 4, !tbaa !94
  %12 = getelementptr inbounds %struct.SBScratch, ptr %7, i64 0, i32 5, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !94
  %14 = getelementptr inbounds %struct.SBScratch, ptr %7, i64 0, i32 5, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !94
  %16 = getelementptr inbounds %struct.SBScratch, ptr %7, i64 0, i32 6
  %17 = load float, ptr %16, align 4, !tbaa !94
  %18 = getelementptr inbounds %struct.SBScratch, ptr %7, i64 0, i32 6, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !94
  %20 = getelementptr inbounds %struct.SBScratch, ptr %7, i64 0, i32 6, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !94
  %22 = load ptr, ptr %7, align 8, !tbaa !89
  %23 = tail call ptr @BLI_ghashIterator_new(ptr noundef %22) #13
  %24 = getelementptr inbounds %struct.GHashIterator, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !296
  %26 = icmp eq ptr %25, null
  br i1 %26, label %74, label %27

27:                                               ; preds = %9, %70
  %28 = phi ptr [ %72, %70 ], [ %25, %9 ]
  %29 = phi i32 [ %71, %70 ], [ 0, %9 ]
  %30 = getelementptr inbounds %struct._gh_Entry, ptr %28, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !298
  %32 = getelementptr inbounds %struct._gh_Entry, ptr %28, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !300
  %34 = getelementptr inbounds %struct.Object, ptr %33, i64 0, i32 110
  %35 = load ptr, ptr %34, align 8, !tbaa !208
  %36 = icmp eq ptr %35, null
  br i1 %36, label %70, label %37

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.PartDeflect, ptr %35, i64 0, i32 1
  %39 = load i16, ptr %38, align 4, !tbaa !209
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %70, label %41

41:                                               ; preds = %37
  %42 = icmp eq ptr %31, null
  br i1 %42, label %67, label %43

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.ccd_Mesh, ptr %31, i64 0, i32 7
  %45 = load float, ptr %44, align 8, !tbaa !94
  %46 = fcmp olt float %17, %45
  br i1 %46, label %70, label %47, !llvm.loop !301

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.ccd_Mesh, ptr %31, i64 0, i32 7, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !94
  %50 = fcmp olt float %19, %49
  br i1 %50, label %70, label %51, !llvm.loop !301

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.ccd_Mesh, ptr %31, i64 0, i32 7, i64 2
  %53 = load float, ptr %52, align 8, !tbaa !94
  %54 = fcmp olt float %21, %53
  br i1 %54, label %70, label %55, !llvm.loop !301

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.ccd_Mesh, ptr %31, i64 0, i32 8
  %57 = load float, ptr %56, align 4, !tbaa !94
  %58 = fcmp ogt float %11, %57
  br i1 %58, label %70, label %59, !llvm.loop !301

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.ccd_Mesh, ptr %31, i64 0, i32 8, i64 1
  %61 = load float, ptr %60, align 4, !tbaa !94
  %62 = fcmp ogt float %13, %61
  br i1 %62, label %70, label %63, !llvm.loop !301

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.ccd_Mesh, ptr %31, i64 0, i32 8, i64 2
  %65 = load float, ptr %64, align 4, !tbaa !94
  %66 = fcmp ogt float %15, %65
  br i1 %66, label %70, label %69, !llvm.loop !301

67:                                               ; preds = %41
  %68 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.32)
  br label %70, !llvm.loop !301

69:                                               ; preds = %63
  br label %70

70:                                               ; preds = %27, %37, %43, %47, %51, %55, %59, %63, %69, %67
  %71 = phi i32 [ %29, %67 ], [ %29, %63 ], [ %29, %59 ], [ %29, %55 ], [ %29, %51 ], [ %29, %47 ], [ %29, %43 ], [ %29, %37 ], [ %29, %27 ], [ 2, %69 ]
  tail call void @BLI_ghashIterator_step(ptr noundef %23) #13
  %72 = load ptr, ptr %24, align 8, !tbaa !296
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %27

74:                                               ; preds = %70, %9
  %75 = phi i32 [ 0, %9 ], [ %71, %70 ]
  tail call void @BLI_ghashIterator_free(ptr noundef %23) #13
  br label %76

76:                                               ; preds = %1, %5, %74
  %77 = phi i32 [ %75, %74 ], [ 0, %5 ], [ 0, %1 ]
  ret i32 %77
}

declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @pd_point_from_soft(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @pdDoEffectors(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @sb_deflect_face(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef %3, ptr nocapture noundef %4, float noundef %5, ptr nocapture noundef writeonly %6, ptr nocapture noundef %7) unnamed_addr #0 {
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #13
  %15 = load float, ptr %1, align 4, !tbaa !94
  store float %15, ptr %14, align 4, !tbaa !94
  %16 = getelementptr inbounds float, ptr %1, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !94
  %18 = getelementptr inbounds float, ptr %14, i64 1
  store float %17, ptr %18, align 4, !tbaa !94
  %19 = getelementptr inbounds float, ptr %1, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !94
  %21 = getelementptr inbounds float, ptr %14, i64 2
  store float %20, ptr %21, align 4, !tbaa !94
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #13
  store float 0.000000e+00, ptr %7, align 4, !tbaa !94
  %22 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 111
  %23 = load ptr, ptr %22, align 8, !tbaa !112
  %24 = getelementptr inbounds %struct.SoftBody, ptr %23, i64 0, i32 44
  %25 = load ptr, ptr %24, align 8, !tbaa !88
  %26 = load ptr, ptr %25, align 8, !tbaa !89
  %27 = tail call ptr @BLI_ghashIterator_new(ptr noundef %26) #13
  %28 = getelementptr inbounds %struct.GHashIterator, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !296
  %30 = icmp eq ptr %29, null
  br i1 %30, label %999, label %31

31:                                               ; preds = %8
  %32 = getelementptr inbounds float, ptr %9, i64 1
  %33 = getelementptr inbounds float, ptr %9, i64 2
  %34 = getelementptr inbounds float, ptr %10, i64 1
  %35 = getelementptr inbounds float, ptr %10, i64 2
  %36 = getelementptr inbounds float, ptr %11, i64 1
  %37 = getelementptr inbounds float, ptr %11, i64 2
  %38 = getelementptr inbounds float, ptr %12, i64 1
  %39 = getelementptr inbounds float, ptr %12, i64 2
  %40 = getelementptr inbounds float, ptr %12, i64 1
  %41 = getelementptr inbounds float, ptr %12, i64 2
  %42 = fsub float 1.000000e+00, %5
  %43 = getelementptr inbounds float, ptr %12, i64 1
  %44 = getelementptr inbounds float, ptr %12, i64 2
  %45 = getelementptr inbounds float, ptr %9, i64 1
  %46 = getelementptr inbounds float, ptr %10, i64 1
  %47 = getelementptr inbounds float, ptr %9, i64 2
  %48 = getelementptr inbounds float, ptr %10, i64 2
  %49 = getelementptr inbounds float, ptr %11, i64 1
  %50 = getelementptr inbounds float, ptr %11, i64 2
  %51 = getelementptr inbounds float, ptr %13, i64 1
  %52 = getelementptr inbounds float, ptr %13, i64 2
  %53 = getelementptr inbounds float, ptr %13, i64 1
  %54 = getelementptr inbounds float, ptr %13, i64 2
  %55 = getelementptr inbounds float, ptr %13, i64 1
  %56 = getelementptr inbounds float, ptr %13, i64 2
  %57 = getelementptr inbounds float, ptr %13, i64 1
  %58 = getelementptr inbounds float, ptr %13, i64 2
  %59 = getelementptr inbounds float, ptr %12, i64 1
  %60 = getelementptr inbounds float, ptr %12, i64 2
  %61 = getelementptr inbounds float, ptr %13, i64 1
  %62 = getelementptr inbounds float, ptr %13, i64 2
  %63 = getelementptr inbounds float, ptr %13, i64 1
  %64 = getelementptr inbounds float, ptr %13, i64 2
  %65 = getelementptr inbounds float, ptr %13, i64 1
  %66 = getelementptr inbounds float, ptr %13, i64 2
  %67 = getelementptr inbounds float, ptr %13, i64 1
  %68 = getelementptr inbounds float, ptr %13, i64 2
  %69 = getelementptr inbounds float, ptr %13, i64 1
  %70 = getelementptr inbounds float, ptr %13, i64 2
  br label %71

71:                                               ; preds = %31, %966
  %72 = phi ptr [ %29, %31 ], [ %997, %966 ]
  %73 = phi i32 [ 0, %31 ], [ %996, %966 ]
  %74 = phi i32 [ 0, %31 ], [ %995, %966 ]
  %75 = phi i32 [ 0, %31 ], [ %994, %966 ]
  %76 = phi float [ 1.000000e+00, %31 ], [ %993, %966 ]
  %77 = phi float [ 1.000000e+03, %31 ], [ %992, %966 ]
  %78 = phi float [ 0x3FC99999A0000000, %31 ], [ %991, %966 ]
  %79 = phi float [ 0.000000e+00, %31 ], [ %990, %966 ]
  %80 = phi float [ 0.000000e+00, %31 ], [ %989, %966 ]
  %81 = phi float [ 0.000000e+00, %31 ], [ %988, %966 ]
  %82 = phi float [ 0.000000e+00, %31 ], [ %987, %966 ]
  %83 = phi float [ 0.000000e+00, %31 ], [ %986, %966 ]
  %84 = phi float [ 0.000000e+00, %31 ], [ %985, %966 ]
  %85 = phi float [ 0.000000e+00, %31 ], [ %984, %966 ]
  %86 = phi float [ 0.000000e+00, %31 ], [ %983, %966 ]
  %87 = phi float [ 0.000000e+00, %31 ], [ %982, %966 ]
  %88 = phi float [ undef, %31 ], [ %981, %966 ]
  %89 = phi float [ undef, %31 ], [ %980, %966 ]
  %90 = phi float [ undef, %31 ], [ %979, %966 ]
  %91 = phi float [ undef, %31 ], [ %978, %966 ]
  %92 = phi float [ undef, %31 ], [ %977, %966 ]
  %93 = phi float [ undef, %31 ], [ %976, %966 ]
  %94 = phi float [ undef, %31 ], [ %975, %966 ]
  %95 = phi float [ undef, %31 ], [ %974, %966 ]
  %96 = phi float [ undef, %31 ], [ %973, %966 ]
  %97 = phi float [ undef, %31 ], [ %972, %966 ]
  %98 = phi float [ undef, %31 ], [ %971, %966 ]
  %99 = phi float [ undef, %31 ], [ %970, %966 ]
  %100 = phi float [ 0.000000e+00, %31 ], [ %969, %966 ]
  %101 = phi float [ 0.000000e+00, %31 ], [ %968, %966 ]
  %102 = phi float [ 0.000000e+00, %31 ], [ %967, %966 ]
  %103 = getelementptr inbounds %struct._gh_Entry, ptr %72, i64 0, i32 2
  %104 = load ptr, ptr %103, align 8, !tbaa !298
  %105 = getelementptr inbounds %struct._gh_Entry, ptr %72, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !300
  %107 = getelementptr inbounds %struct.Object, ptr %106, i64 0, i32 110
  %108 = load ptr, ptr %107, align 8, !tbaa !208
  %109 = icmp eq ptr %108, null
  br i1 %109, label %935, label %110

110:                                              ; preds = %71
  %111 = getelementptr inbounds %struct.PartDeflect, ptr %108, i64 0, i32 1
  %112 = load i16, ptr %111, align 4, !tbaa !209
  %113 = icmp eq i16 %112, 0
  br i1 %113, label %935, label %114

114:                                              ; preds = %110
  %115 = icmp eq ptr %104, null
  br i1 %115, label %153, label %116

116:                                              ; preds = %114
  %117 = getelementptr inbounds %struct.ccd_Mesh, ptr %104, i64 0, i32 4
  %118 = load ptr, ptr %117, align 8, !tbaa !224
  %119 = getelementptr inbounds %struct.ccd_Mesh, ptr %104, i64 0, i32 2
  %120 = load ptr, ptr %119, align 8, !tbaa !221
  %121 = getelementptr inbounds %struct.ccd_Mesh, ptr %104, i64 0, i32 3
  %122 = load ptr, ptr %121, align 8, !tbaa !220
  %123 = getelementptr inbounds %struct.ccd_Mesh, ptr %104, i64 0, i32 6
  %124 = load ptr, ptr %123, align 8, !tbaa !225
  %125 = getelementptr inbounds %struct.ccd_Mesh, ptr %104, i64 0, i32 1
  %126 = load i32, ptr %125, align 4, !tbaa !217
  %127 = getelementptr inbounds %struct.ccd_Mesh, ptr %104, i64 0, i32 7
  %128 = load float, ptr %127, align 8, !tbaa !94
  %129 = getelementptr inbounds %struct.ccd_Mesh, ptr %104, i64 0, i32 7, i64 2
  %130 = load float, ptr %129, align 8, !tbaa !94
  %131 = getelementptr inbounds %struct.ccd_Mesh, ptr %104, i64 0, i32 8
  %132 = load float, ptr %131, align 4, !tbaa !94
  %133 = getelementptr inbounds %struct.ccd_Mesh, ptr %104, i64 0, i32 8, i64 1
  %134 = load float, ptr %133, align 4, !tbaa !94
  %135 = getelementptr inbounds %struct.ccd_Mesh, ptr %104, i64 0, i32 8, i64 2
  %136 = load float, ptr %135, align 4, !tbaa !94
  %137 = load float, ptr %14, align 4, !tbaa !94
  %138 = fcmp olt float %137, %128
  br i1 %138, label %902, label %139, !llvm.loop !302

139:                                              ; preds = %116
  %140 = getelementptr inbounds %struct.ccd_Mesh, ptr %104, i64 0, i32 7, i64 1
  %141 = load float, ptr %140, align 4, !tbaa !94
  %142 = load float, ptr %18, align 4, !tbaa !94
  %143 = fcmp olt float %142, %141
  br i1 %143, label %902, label %144, !llvm.loop !302

144:                                              ; preds = %139
  %145 = load float, ptr %21, align 4, !tbaa !94
  %146 = fcmp olt float %145, %130
  %147 = fcmp ogt float %137, %132
  %148 = select i1 %146, i1 true, i1 %147
  %149 = fcmp ogt float %142, %134
  %150 = select i1 %148, i1 true, i1 %149
  %151 = fcmp ogt float %145, %136
  %152 = select i1 %150, i1 true, i1 %151
  br i1 %152, label %902, label %155, !llvm.loop !302

153:                                              ; preds = %114
  %154 = call i32 @puts(ptr nonnull dereferenceable(1) @str.32)
  br label %902, !llvm.loop !302

155:                                              ; preds = %144
  %156 = getelementptr inbounds %struct.PartDeflect, ptr %108, i64 0, i32 27
  %157 = load float, ptr %156, align 4, !tbaa !218
  %158 = fneg float %157
  %159 = getelementptr inbounds %struct.PartDeflect, ptr %108, i64 0, i32 28
  %160 = load float, ptr %159, align 8, !tbaa !219
  %161 = fneg float %160
  %162 = call float @llvm.fmuladd.f32(float %160, float 0x3FB99999A0000000, float %161)
  %163 = fmul float %162, %162
  %164 = fdiv float 1.000000e+00, %163
  %165 = icmp eq i32 %126, 0
  br i1 %165, label %903, label %166

166:                                              ; preds = %155
  %167 = icmp eq ptr %120, null
  %168 = icmp eq ptr %122, null
  %169 = fmul float %160, 0x3FB99999A0000000
  %170 = icmp eq ptr %122, null
  %171 = fmul float %160, 0x3FB99999A0000000
  %172 = icmp eq ptr %122, null
  br label %173

173:                                              ; preds = %166, %882
  %174 = phi i32 [ %126, %166 ], [ %212, %882 ]
  %175 = phi ptr [ %124, %166 ], [ %900, %882 ]
  %176 = phi ptr [ %118, %166 ], [ %899, %882 ]
  %177 = phi i32 [ %73, %166 ], [ %898, %882 ]
  %178 = phi i32 [ %74, %166 ], [ %897, %882 ]
  %179 = phi i32 [ %75, %166 ], [ %896, %882 ]
  %180 = phi float [ %77, %166 ], [ %895, %882 ]
  %181 = phi float [ %79, %166 ], [ %894, %882 ]
  %182 = phi float [ %80, %166 ], [ %893, %882 ]
  %183 = phi float [ %81, %166 ], [ %892, %882 ]
  %184 = phi float [ %82, %166 ], [ %891, %882 ]
  %185 = phi float [ %83, %166 ], [ %890, %882 ]
  %186 = phi float [ %84, %166 ], [ %889, %882 ]
  %187 = phi float [ %85, %166 ], [ %888, %882 ]
  %188 = phi float [ %86, %166 ], [ %887, %882 ]
  %189 = phi float [ %87, %166 ], [ %886, %882 ]
  %190 = phi float [ %88, %166 ], [ %381, %882 ]
  %191 = phi float [ %89, %166 ], [ %380, %882 ]
  %192 = phi float [ %90, %166 ], [ %379, %882 ]
  %193 = phi float [ %91, %166 ], [ %378, %882 ]
  %194 = phi float [ %92, %166 ], [ %377, %882 ]
  %195 = phi float [ %93, %166 ], [ %376, %882 ]
  %196 = phi float [ %94, %166 ], [ %375, %882 ]
  %197 = phi float [ %95, %166 ], [ %374, %882 ]
  %198 = phi float [ %96, %166 ], [ %373, %882 ]
  %199 = phi float [ %97, %166 ], [ %372, %882 ]
  %200 = phi float [ %98, %166 ], [ %371, %882 ]
  %201 = phi float [ %99, %166 ], [ %370, %882 ]
  %202 = phi float [ 0.000000e+00, %166 ], [ %885, %882 ]
  %203 = phi float [ 0.000000e+00, %166 ], [ %884, %882 ]
  %204 = phi float [ 0.000000e+00, %166 ], [ %883, %882 ]
  %205 = load float, ptr %14, align 4, !tbaa !94
  %206 = load float, ptr %18, align 4
  %207 = load float, ptr %21, align 4
  br label %208

208:                                              ; preds = %173, %235
  %209 = phi i32 [ %174, %173 ], [ %212, %235 ]
  %210 = phi ptr [ %175, %173 ], [ %237, %235 ]
  %211 = phi ptr [ %176, %173 ], [ %236, %235 ]
  %212 = add nsw i32 %209, -1
  %213 = load float, ptr %210, align 4, !tbaa !229
  %214 = fcmp olt float %205, %213
  br i1 %214, label %235, label %215

215:                                              ; preds = %208
  %216 = getelementptr inbounds %struct.ccdf_minmax, ptr %210, i64 0, i32 3
  %217 = load float, ptr %216, align 4, !tbaa !232
  %218 = fcmp ogt float %205, %217
  br i1 %218, label %235, label %219

219:                                              ; preds = %215
  %220 = getelementptr inbounds %struct.ccdf_minmax, ptr %210, i64 0, i32 1
  %221 = load float, ptr %220, align 4, !tbaa !228
  %222 = fcmp olt float %206, %221
  br i1 %222, label %235, label %223

223:                                              ; preds = %219
  %224 = getelementptr inbounds %struct.ccdf_minmax, ptr %210, i64 0, i32 4
  %225 = load float, ptr %224, align 4, !tbaa !231
  %226 = fcmp ogt float %206, %225
  br i1 %226, label %235, label %227

227:                                              ; preds = %223
  %228 = getelementptr inbounds %struct.ccdf_minmax, ptr %210, i64 0, i32 2
  %229 = load float, ptr %228, align 4, !tbaa !226
  %230 = fcmp olt float %207, %229
  br i1 %230, label %235, label %231

231:                                              ; preds = %227
  %232 = getelementptr inbounds %struct.ccdf_minmax, ptr %210, i64 0, i32 5
  %233 = load float, ptr %232, align 4, !tbaa !230
  %234 = fcmp ogt float %207, %233
  br i1 %234, label %235, label %239

235:                                              ; preds = %231, %227, %223, %219, %215, %208
  %236 = getelementptr inbounds %struct.MFace, ptr %211, i64 1
  %237 = getelementptr inbounds %struct.ccdf_minmax, ptr %210, i64 1
  %238 = icmp eq i32 %212, 0
  br i1 %238, label %903, label %208, !llvm.loop !303

239:                                              ; preds = %231
  br i1 %167, label %369, label %240

240:                                              ; preds = %239
  %241 = load i32, ptr %211, align 4, !tbaa !156
  %242 = zext i32 %241 to i64
  %243 = getelementptr inbounds %struct.MVert, ptr %120, i64 %242
  %244 = load float, ptr %243, align 4, !tbaa !94
  store float %244, ptr %9, align 4, !tbaa !94
  %245 = getelementptr inbounds float, ptr %243, i64 1
  %246 = load float, ptr %245, align 4, !tbaa !94
  store float %246, ptr %32, align 4, !tbaa !94
  %247 = getelementptr inbounds float, ptr %243, i64 2
  %248 = load float, ptr %247, align 4, !tbaa !94
  store float %248, ptr %33, align 4, !tbaa !94
  %249 = getelementptr inbounds %struct.MFace, ptr %211, i64 0, i32 1
  %250 = load i32, ptr %249, align 4, !tbaa !158
  %251 = zext i32 %250 to i64
  %252 = getelementptr inbounds %struct.MVert, ptr %120, i64 %251
  %253 = load float, ptr %252, align 4, !tbaa !94
  store float %253, ptr %10, align 4, !tbaa !94
  %254 = getelementptr inbounds float, ptr %252, i64 1
  %255 = load float, ptr %254, align 4, !tbaa !94
  store float %255, ptr %34, align 4, !tbaa !94
  %256 = getelementptr inbounds float, ptr %252, i64 2
  %257 = load float, ptr %256, align 4, !tbaa !94
  store float %257, ptr %35, align 4, !tbaa !94
  %258 = getelementptr inbounds %struct.MFace, ptr %211, i64 0, i32 2
  %259 = load i32, ptr %258, align 4, !tbaa !157
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds %struct.MVert, ptr %120, i64 %260
  %262 = load float, ptr %261, align 4, !tbaa !94
  store float %262, ptr %11, align 4, !tbaa !94
  %263 = getelementptr inbounds float, ptr %261, i64 1
  %264 = load float, ptr %263, align 4, !tbaa !94
  store float %264, ptr %36, align 4, !tbaa !94
  %265 = getelementptr inbounds float, ptr %261, i64 2
  %266 = load float, ptr %265, align 4, !tbaa !94
  store float %266, ptr %37, align 4, !tbaa !94
  %267 = getelementptr inbounds %struct.MFace, ptr %211, i64 0, i32 3
  %268 = load i32, ptr %267, align 4, !tbaa !152
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %278, label %270

270:                                              ; preds = %240
  %271 = zext i32 %268 to i64
  %272 = getelementptr inbounds %struct.MVert, ptr %120, i64 %271
  %273 = load float, ptr %272, align 4, !tbaa !94
  store float %273, ptr %12, align 4, !tbaa !94
  %274 = getelementptr inbounds float, ptr %272, i64 1
  %275 = load float, ptr %274, align 4, !tbaa !94
  store float %275, ptr %38, align 4, !tbaa !94
  %276 = getelementptr inbounds float, ptr %272, i64 2
  %277 = load float, ptr %276, align 4, !tbaa !94
  store float %277, ptr %39, align 4, !tbaa !94
  br label %278

278:                                              ; preds = %270, %240
  br i1 %168, label %369, label %279

279:                                              ; preds = %278
  %280 = getelementptr inbounds %struct.MVert, ptr %122, i64 %242
  %281 = load float, ptr %280, align 4, !tbaa !94
  %282 = fsub float %244, %281
  %283 = getelementptr inbounds float, ptr %280, i64 1
  %284 = load float, ptr %283, align 4, !tbaa !94
  %285 = fsub float %246, %284
  %286 = getelementptr inbounds float, ptr %280, i64 2
  %287 = load float, ptr %286, align 4, !tbaa !94
  %288 = fsub float %248, %287
  %289 = getelementptr inbounds %struct.MVert, ptr %122, i64 %251
  %290 = load float, ptr %289, align 4, !tbaa !94
  %291 = fsub float %253, %290
  %292 = getelementptr inbounds float, ptr %289, i64 1
  %293 = load float, ptr %292, align 4, !tbaa !94
  %294 = fsub float %255, %293
  %295 = getelementptr inbounds float, ptr %289, i64 2
  %296 = load float, ptr %295, align 4, !tbaa !94
  %297 = fsub float %257, %296
  %298 = getelementptr inbounds %struct.MVert, ptr %122, i64 %260
  %299 = load float, ptr %298, align 4, !tbaa !94
  %300 = fsub float %262, %299
  %301 = getelementptr inbounds float, ptr %298, i64 1
  %302 = load float, ptr %301, align 4, !tbaa !94
  %303 = fsub float %264, %302
  %304 = getelementptr inbounds float, ptr %298, i64 2
  %305 = load float, ptr %304, align 4, !tbaa !94
  %306 = fsub float %266, %305
  br i1 %269, label %321, label %307

307:                                              ; preds = %279
  %308 = zext i32 %268 to i64
  %309 = getelementptr inbounds %struct.MVert, ptr %122, i64 %308
  %310 = load float, ptr %12, align 4, !tbaa !94
  %311 = load float, ptr %309, align 4, !tbaa !94
  %312 = fsub float %310, %311
  %313 = load float, ptr %40, align 4, !tbaa !94
  %314 = getelementptr inbounds float, ptr %309, i64 1
  %315 = load float, ptr %314, align 4, !tbaa !94
  %316 = fsub float %313, %315
  %317 = load float, ptr %41, align 4, !tbaa !94
  %318 = getelementptr inbounds float, ptr %309, i64 2
  %319 = load float, ptr %318, align 4, !tbaa !94
  %320 = fsub float %317, %319
  br label %321

321:                                              ; preds = %307, %279
  %322 = phi float [ %192, %279 ], [ %320, %307 ]
  %323 = phi float [ %191, %279 ], [ %316, %307 ]
  %324 = phi float [ %190, %279 ], [ %312, %307 ]
  %325 = fmul float %244, %5
  store float %325, ptr %9, align 4, !tbaa !94
  %326 = fmul float %246, %5
  store float %326, ptr %32, align 4, !tbaa !94
  %327 = fmul float %248, %5
  store float %327, ptr %33, align 4, !tbaa !94
  %328 = load float, ptr %280, align 4, !tbaa !94
  %329 = call float @llvm.fmuladd.f32(float %42, float %328, float %325)
  store float %329, ptr %9, align 4, !tbaa !94
  %330 = load float, ptr %283, align 4, !tbaa !94
  %331 = call float @llvm.fmuladd.f32(float %42, float %330, float %326)
  store float %331, ptr %32, align 4, !tbaa !94
  %332 = load float, ptr %286, align 4, !tbaa !94
  %333 = call float @llvm.fmuladd.f32(float %42, float %332, float %327)
  store float %333, ptr %33, align 4, !tbaa !94
  %334 = fmul float %253, %5
  store float %334, ptr %10, align 4, !tbaa !94
  %335 = fmul float %255, %5
  store float %335, ptr %34, align 4, !tbaa !94
  %336 = fmul float %257, %5
  store float %336, ptr %35, align 4, !tbaa !94
  %337 = load float, ptr %289, align 4, !tbaa !94
  %338 = call float @llvm.fmuladd.f32(float %42, float %337, float %334)
  store float %338, ptr %10, align 4, !tbaa !94
  %339 = load float, ptr %292, align 4, !tbaa !94
  %340 = call float @llvm.fmuladd.f32(float %42, float %339, float %335)
  store float %340, ptr %34, align 4, !tbaa !94
  %341 = load float, ptr %295, align 4, !tbaa !94
  %342 = call float @llvm.fmuladd.f32(float %42, float %341, float %336)
  store float %342, ptr %35, align 4, !tbaa !94
  %343 = fmul float %262, %5
  store float %343, ptr %11, align 4, !tbaa !94
  %344 = fmul float %264, %5
  store float %344, ptr %36, align 4, !tbaa !94
  %345 = fmul float %266, %5
  store float %345, ptr %37, align 4, !tbaa !94
  %346 = load float, ptr %298, align 4, !tbaa !94
  %347 = call float @llvm.fmuladd.f32(float %42, float %346, float %343)
  store float %347, ptr %11, align 4, !tbaa !94
  %348 = load float, ptr %301, align 4, !tbaa !94
  %349 = call float @llvm.fmuladd.f32(float %42, float %348, float %344)
  store float %349, ptr %36, align 4, !tbaa !94
  %350 = load float, ptr %304, align 4, !tbaa !94
  %351 = call float @llvm.fmuladd.f32(float %42, float %350, float %345)
  store float %351, ptr %37, align 4, !tbaa !94
  br i1 %269, label %369, label %352

352:                                              ; preds = %321
  %353 = load float, ptr %12, align 4, !tbaa !94
  %354 = fmul float %353, %5
  store float %354, ptr %12, align 4, !tbaa !94
  %355 = load float, ptr %43, align 4, !tbaa !94
  %356 = fmul float %355, %5
  store float %356, ptr %43, align 4, !tbaa !94
  %357 = load float, ptr %44, align 4, !tbaa !94
  %358 = fmul float %357, %5
  store float %358, ptr %44, align 4, !tbaa !94
  %359 = zext i32 %268 to i64
  %360 = getelementptr inbounds %struct.MVert, ptr %122, i64 %359
  %361 = load float, ptr %360, align 4, !tbaa !94
  %362 = call float @llvm.fmuladd.f32(float %42, float %361, float %354)
  store float %362, ptr %12, align 4, !tbaa !94
  %363 = getelementptr inbounds float, ptr %360, i64 1
  %364 = load float, ptr %363, align 4, !tbaa !94
  %365 = call float @llvm.fmuladd.f32(float %42, float %364, float %356)
  store float %365, ptr %43, align 4, !tbaa !94
  %366 = getelementptr inbounds float, ptr %360, i64 2
  %367 = load float, ptr %366, align 4, !tbaa !94
  %368 = call float @llvm.fmuladd.f32(float %42, float %367, float %358)
  store float %368, ptr %44, align 4, !tbaa !94
  br label %369

369:                                              ; preds = %352, %321, %278, %239
  %370 = phi float [ %201, %239 ], [ %201, %278 ], [ %288, %321 ], [ %288, %352 ]
  %371 = phi float [ %200, %239 ], [ %200, %278 ], [ %285, %321 ], [ %285, %352 ]
  %372 = phi float [ %199, %239 ], [ %199, %278 ], [ %282, %321 ], [ %282, %352 ]
  %373 = phi float [ %198, %239 ], [ %198, %278 ], [ %297, %321 ], [ %297, %352 ]
  %374 = phi float [ %197, %239 ], [ %197, %278 ], [ %294, %321 ], [ %294, %352 ]
  %375 = phi float [ %196, %239 ], [ %196, %278 ], [ %291, %321 ], [ %291, %352 ]
  %376 = phi float [ %195, %239 ], [ %195, %278 ], [ %306, %321 ], [ %306, %352 ]
  %377 = phi float [ %194, %239 ], [ %194, %278 ], [ %303, %321 ], [ %303, %352 ]
  %378 = phi float [ %193, %239 ], [ %193, %278 ], [ %300, %321 ], [ %300, %352 ]
  %379 = phi float [ %192, %239 ], [ %192, %278 ], [ %322, %321 ], [ %322, %352 ]
  %380 = phi float [ %191, %239 ], [ %191, %278 ], [ %323, %321 ], [ %323, %352 ]
  %381 = phi float [ %190, %239 ], [ %190, %278 ], [ %324, %321 ], [ %324, %352 ]
  %382 = load float, ptr %9, align 4, !tbaa !94
  %383 = load float, ptr %10, align 4, !tbaa !94
  %384 = fsub float %382, %383
  %385 = load float, ptr %45, align 4, !tbaa !94
  %386 = load float, ptr %46, align 4, !tbaa !94
  %387 = fsub float %385, %386
  %388 = load float, ptr %47, align 4, !tbaa !94
  %389 = load float, ptr %48, align 4, !tbaa !94
  %390 = fsub float %388, %389
  %391 = load float, ptr %11, align 4, !tbaa !94
  %392 = fsub float %391, %383
  %393 = load float, ptr %49, align 4, !tbaa !94
  %394 = fsub float %393, %386
  %395 = load float, ptr %50, align 4, !tbaa !94
  %396 = fsub float %395, %389
  %397 = fsub float %205, %383
  %398 = fsub float %206, %386
  %399 = fsub float %207, %389
  %400 = fneg float %396
  %401 = fmul float %387, %400
  %402 = call float @llvm.fmuladd.f32(float %394, float %390, float %401)
  %403 = fneg float %392
  %404 = fmul float %390, %403
  %405 = call float @llvm.fmuladd.f32(float %396, float %384, float %404)
  %406 = fneg float %394
  %407 = fmul float %384, %406
  %408 = call float @llvm.fmuladd.f32(float %392, float %387, float %407)
  %409 = fmul float %405, %405
  %410 = call float @llvm.fmuladd.f32(float %402, float %402, float %409)
  %411 = call float @llvm.fmuladd.f32(float %408, float %408, float %410)
  %412 = fcmp ogt float %411, 0x38AA95A5C0000000
  br i1 %412, label %413, label %419

413:                                              ; preds = %369
  %414 = call float @sqrtf(float noundef %411) #13
  %415 = fdiv float 1.000000e+00, %414
  %416 = fmul float %402, %415
  %417 = fmul float %405, %415
  %418 = fmul float %408, %415
  br label %419

419:                                              ; preds = %413, %369
  %420 = phi float [ %417, %413 ], [ 0.000000e+00, %369 ]
  %421 = phi float [ %416, %413 ], [ 0.000000e+00, %369 ]
  %422 = phi float [ %418, %413 ], [ 0.000000e+00, %369 ]
  %423 = fmul float %398, %420
  %424 = call float @llvm.fmuladd.f32(float %397, float %421, float %423)
  %425 = call float @llvm.fmuladd.f32(float %399, float %422, float %424)
  %426 = fcmp ogt float %425, %158
  %427 = fcmp olt float %425, %160
  %428 = select i1 %426, i1 %427, i1 false
  br i1 %428, label %429, label %520

429:                                              ; preds = %419
  %430 = call zeroext i8 @isect_point_tri_prism_v3(ptr noundef nonnull %14, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11) #13
  %431 = icmp eq i8 %430, 0
  br i1 %431, label %520, label %432

432:                                              ; preds = %429
  %433 = fmul float %425, -5.000000e+00
  %434 = fpext float %433 to double
  %435 = call double @exp(double noundef %434) #13
  %436 = fptrunc double %435 to float
  %437 = fcmp ogt float %425, %169
  %438 = fmul float %164, %436
  %439 = fsub float %425, %160
  %440 = fmul float %439, %438
  %441 = fmul float %439, %440
  %442 = select i1 %437, float %441, float %436
  %443 = load ptr, ptr %107, align 8, !tbaa !208
  %444 = getelementptr inbounds %struct.PartDeflect, ptr %443, i64 0, i32 26
  %445 = load float, ptr %444, align 8, !tbaa !304
  store float %445, ptr %4, align 4, !tbaa !94
  %446 = fcmp ogt float %425, 0.000000e+00
  br i1 %446, label %447, label %454

447:                                              ; preds = %432
  %448 = fdiv float %425, %160
  %449 = fsub float 1.000000e+00, %448
  %450 = fmul float %449, %445
  store float %450, ptr %4, align 4, !tbaa !94
  %451 = call float @llvm.fmuladd.f32(float %442, float %421, float %184)
  %452 = call float @llvm.fmuladd.f32(float %442, float %420, float %185)
  %453 = call float @llvm.fmuladd.f32(float %442, float %422, float %186)
  br label %459

454:                                              ; preds = %432
  %455 = call float @llvm.fmuladd.f32(float %442, float %421, float %181)
  %456 = call float @llvm.fmuladd.f32(float %442, float %420, float %182)
  %457 = call float @llvm.fmuladd.f32(float %442, float %422, float %183)
  %458 = call i32 @llvm.smax.i32(i32 %179, i32 2)
  br label %459

459:                                              ; preds = %454, %447
  %460 = phi float [ %453, %447 ], [ %186, %454 ]
  %461 = phi float [ %452, %447 ], [ %185, %454 ]
  %462 = phi float [ %451, %447 ], [ %184, %454 ]
  %463 = phi float [ %183, %447 ], [ %457, %454 ]
  %464 = phi float [ %182, %447 ], [ %456, %454 ]
  %465 = phi float [ %181, %447 ], [ %455, %454 ]
  %466 = phi i32 [ 3, %447 ], [ %458, %454 ]
  br i1 %170, label %512, label %467

467:                                              ; preds = %459
  %468 = load float, ptr %4, align 4, !tbaa !94
  %469 = fcmp ogt float %468, 0.000000e+00
  br i1 %469, label %470, label %512

470:                                              ; preds = %467
  %471 = load float, ptr %14, align 4, !tbaa !94
  %472 = load float, ptr %9, align 4, !tbaa !94
  %473 = load float, ptr %18, align 4, !tbaa !94
  %474 = load float, ptr %45, align 4, !tbaa !94
  %475 = fmul float %473, %474
  %476 = call float @llvm.fmuladd.f32(float %471, float %472, float %475)
  %477 = load float, ptr %21, align 4, !tbaa !94
  %478 = load float, ptr %47, align 4, !tbaa !94
  %479 = call float @llvm.fmuladd.f32(float %477, float %478, float %476)
  %480 = call float @llvm.fabs.f32(float %479)
  %481 = load float, ptr %10, align 4, !tbaa !94
  %482 = load float, ptr %46, align 4, !tbaa !94
  %483 = fmul float %473, %482
  %484 = call float @llvm.fmuladd.f32(float %471, float %481, float %483)
  %485 = load float, ptr %48, align 4, !tbaa !94
  %486 = call float @llvm.fmuladd.f32(float %477, float %485, float %484)
  %487 = call float @llvm.fabs.f32(float %486)
  %488 = fcmp olt float %480, %487
  %489 = select i1 %488, float %487, float %480
  %490 = select i1 %488, i32 2, i32 1
  %491 = load float, ptr %11, align 4, !tbaa !94
  %492 = load float, ptr %49, align 4, !tbaa !94
  %493 = fmul float %473, %492
  %494 = call float @llvm.fmuladd.f32(float %471, float %491, float %493)
  %495 = load float, ptr %50, align 4, !tbaa !94
  %496 = call float @llvm.fmuladd.f32(float %477, float %495, float %494)
  %497 = call float @llvm.fabs.f32(float %496)
  %498 = fcmp olt float %489, %497
  %499 = select i1 %498, i32 3, i32 %490
  switch i32 %499, label %503 [
    i32 1, label %500
    i32 2, label %501
    i32 3, label %502
  ]

500:                                              ; preds = %470
  store float %372, ptr %13, align 4, !tbaa !94
  store float %371, ptr %55, align 4, !tbaa !94
  store float %370, ptr %56, align 4, !tbaa !94
  br label %504

501:                                              ; preds = %470
  store float %375, ptr %13, align 4, !tbaa !94
  store float %374, ptr %53, align 4, !tbaa !94
  store float %373, ptr %54, align 4, !tbaa !94
  br label %504

502:                                              ; preds = %470
  store float %378, ptr %13, align 4, !tbaa !94
  store float %377, ptr %51, align 4, !tbaa !94
  store float %376, ptr %52, align 4, !tbaa !94
  br label %504

503:                                              ; preds = %628, %470
  unreachable

504:                                              ; preds = %502, %501, %500
  %505 = load float, ptr %13, align 4, !tbaa !94
  %506 = fadd float %204, %505
  %507 = load float, ptr %57, align 4, !tbaa !94
  %508 = fadd float %203, %507
  %509 = load float, ptr %58, align 4, !tbaa !94
  %510 = fadd float %202, %509
  %511 = add nsw i32 %178, 1
  br label %512

512:                                              ; preds = %504, %467, %459
  %513 = phi float [ %204, %459 ], [ %506, %504 ], [ %204, %467 ]
  %514 = phi float [ %203, %459 ], [ %508, %504 ], [ %203, %467 ]
  %515 = phi float [ %202, %459 ], [ %510, %504 ], [ %202, %467 ]
  %516 = phi i32 [ %178, %459 ], [ %511, %504 ], [ %178, %467 ]
  %517 = load float, ptr %7, align 4, !tbaa !94
  %518 = fadd float %425, %517
  store float %518, ptr %7, align 4, !tbaa !94
  %519 = add nsw i32 %177, 1
  br label %520

520:                                              ; preds = %512, %429, %419
  %521 = phi float [ %204, %429 ], [ %513, %512 ], [ %204, %419 ]
  %522 = phi float [ %203, %429 ], [ %514, %512 ], [ %203, %419 ]
  %523 = phi float [ %202, %429 ], [ %515, %512 ], [ %202, %419 ]
  %524 = phi float [ %186, %429 ], [ %460, %512 ], [ %186, %419 ]
  %525 = phi float [ %185, %429 ], [ %461, %512 ], [ %185, %419 ]
  %526 = phi float [ %184, %429 ], [ %462, %512 ], [ %184, %419 ]
  %527 = phi float [ %183, %429 ], [ %463, %512 ], [ %183, %419 ]
  %528 = phi float [ %182, %429 ], [ %464, %512 ], [ %182, %419 ]
  %529 = phi float [ %181, %429 ], [ %465, %512 ], [ %181, %419 ]
  %530 = phi i32 [ %179, %429 ], [ %466, %512 ], [ %179, %419 ]
  %531 = phi i32 [ %178, %429 ], [ %516, %512 ], [ %178, %419 ]
  %532 = phi i32 [ %177, %429 ], [ %519, %512 ], [ %177, %419 ]
  %533 = getelementptr inbounds %struct.MFace, ptr %211, i64 0, i32 3
  %534 = load i32, ptr %533, align 4, !tbaa !152
  %535 = icmp eq i32 %534, 0
  br i1 %535, label %882, label %536

536:                                              ; preds = %520
  %537 = load float, ptr %11, align 4, !tbaa !94
  %538 = load float, ptr %12, align 4, !tbaa !94
  %539 = fsub float %537, %538
  %540 = load float, ptr %49, align 4, !tbaa !94
  %541 = load float, ptr %59, align 4, !tbaa !94
  %542 = fsub float %540, %541
  %543 = load float, ptr %50, align 4, !tbaa !94
  %544 = load float, ptr %60, align 4, !tbaa !94
  %545 = fsub float %543, %544
  %546 = load float, ptr %9, align 4, !tbaa !94
  %547 = fsub float %546, %538
  %548 = load float, ptr %45, align 4, !tbaa !94
  %549 = fsub float %548, %541
  %550 = load float, ptr %47, align 4, !tbaa !94
  %551 = fsub float %550, %544
  %552 = load float, ptr %14, align 4, !tbaa !94
  %553 = fsub float %552, %538
  %554 = load float, ptr %18, align 4, !tbaa !94
  %555 = fsub float %554, %541
  %556 = load float, ptr %21, align 4, !tbaa !94
  %557 = fsub float %556, %544
  %558 = fneg float %551
  %559 = fmul float %542, %558
  %560 = call float @llvm.fmuladd.f32(float %549, float %545, float %559)
  %561 = fneg float %547
  %562 = fmul float %545, %561
  %563 = call float @llvm.fmuladd.f32(float %551, float %539, float %562)
  %564 = fneg float %549
  %565 = fmul float %539, %564
  %566 = call float @llvm.fmuladd.f32(float %547, float %542, float %565)
  %567 = fmul float %563, %563
  %568 = call float @llvm.fmuladd.f32(float %560, float %560, float %567)
  %569 = call float @llvm.fmuladd.f32(float %566, float %566, float %568)
  %570 = fcmp ogt float %569, 0x38AA95A5C0000000
  br i1 %570, label %571, label %577

571:                                              ; preds = %536
  %572 = call float @sqrtf(float noundef %569) #13
  %573 = fdiv float 1.000000e+00, %572
  %574 = fmul float %560, %573
  %575 = fmul float %563, %573
  %576 = fmul float %566, %573
  br label %577

577:                                              ; preds = %571, %536
  %578 = phi float [ %575, %571 ], [ 0.000000e+00, %536 ]
  %579 = phi float [ %574, %571 ], [ 0.000000e+00, %536 ]
  %580 = phi float [ %576, %571 ], [ 0.000000e+00, %536 ]
  %581 = fmul float %555, %578
  %582 = call float @llvm.fmuladd.f32(float %553, float %579, float %581)
  %583 = call float @llvm.fmuladd.f32(float %557, float %580, float %582)
  %584 = fcmp ogt float %583, %158
  %585 = fcmp olt float %583, %160
  %586 = select i1 %584, i1 %585, i1 false
  br i1 %586, label %587, label %677

587:                                              ; preds = %577
  %588 = call zeroext i8 @isect_point_tri_prism_v3(ptr noundef nonnull %14, ptr noundef nonnull %9, ptr noundef nonnull %11, ptr noundef nonnull %12) #13
  %589 = icmp eq i8 %588, 0
  br i1 %589, label %677, label %590

590:                                              ; preds = %587
  %591 = fmul float %583, -5.000000e+00
  %592 = fpext float %591 to double
  %593 = call double @exp(double noundef %592) #13
  %594 = fptrunc double %593 to float
  %595 = fcmp ogt float %583, %171
  %596 = fmul float %164, %594
  %597 = fsub float %583, %160
  %598 = fmul float %597, %596
  %599 = fmul float %597, %598
  %600 = select i1 %595, float %599, float %594
  %601 = load ptr, ptr %107, align 8, !tbaa !208
  %602 = getelementptr inbounds %struct.PartDeflect, ptr %601, i64 0, i32 26
  %603 = load float, ptr %602, align 8, !tbaa !304
  store float %603, ptr %4, align 4, !tbaa !94
  %604 = fcmp ogt float %583, 0.000000e+00
  br i1 %604, label %605, label %612

605:                                              ; preds = %590
  %606 = fdiv float %583, %160
  %607 = fsub float 1.000000e+00, %606
  %608 = fmul float %607, %603
  store float %608, ptr %4, align 4, !tbaa !94
  %609 = call float @llvm.fmuladd.f32(float %600, float %579, float %526)
  %610 = call float @llvm.fmuladd.f32(float %600, float %578, float %525)
  %611 = call float @llvm.fmuladd.f32(float %600, float %580, float %524)
  br label %617

612:                                              ; preds = %590
  %613 = call float @llvm.fmuladd.f32(float %600, float %579, float %529)
  %614 = call float @llvm.fmuladd.f32(float %600, float %578, float %528)
  %615 = call float @llvm.fmuladd.f32(float %600, float %580, float %527)
  %616 = call i32 @llvm.smax.i32(i32 %530, i32 2)
  br label %617

617:                                              ; preds = %612, %605
  %618 = phi float [ %611, %605 ], [ %524, %612 ]
  %619 = phi float [ %610, %605 ], [ %525, %612 ]
  %620 = phi float [ %609, %605 ], [ %526, %612 ]
  %621 = phi float [ %527, %605 ], [ %615, %612 ]
  %622 = phi float [ %528, %605 ], [ %614, %612 ]
  %623 = phi float [ %529, %605 ], [ %613, %612 ]
  %624 = phi i32 [ 3, %605 ], [ %616, %612 ]
  br i1 %172, label %669, label %625

625:                                              ; preds = %617
  %626 = load float, ptr %4, align 4, !tbaa !94
  %627 = fcmp ogt float %626, 0.000000e+00
  br i1 %627, label %628, label %669

628:                                              ; preds = %625
  %629 = load float, ptr %14, align 4, !tbaa !94
  %630 = load float, ptr %9, align 4, !tbaa !94
  %631 = load float, ptr %18, align 4, !tbaa !94
  %632 = load float, ptr %45, align 4, !tbaa !94
  %633 = fmul float %631, %632
  %634 = call float @llvm.fmuladd.f32(float %629, float %630, float %633)
  %635 = load float, ptr %21, align 4, !tbaa !94
  %636 = load float, ptr %47, align 4, !tbaa !94
  %637 = call float @llvm.fmuladd.f32(float %635, float %636, float %634)
  %638 = call float @llvm.fabs.f32(float %637)
  %639 = load float, ptr %11, align 4, !tbaa !94
  %640 = load float, ptr %49, align 4, !tbaa !94
  %641 = fmul float %631, %640
  %642 = call float @llvm.fmuladd.f32(float %629, float %639, float %641)
  %643 = load float, ptr %50, align 4, !tbaa !94
  %644 = call float @llvm.fmuladd.f32(float %635, float %643, float %642)
  %645 = call float @llvm.fabs.f32(float %644)
  %646 = fcmp olt float %638, %645
  %647 = select i1 %646, float %645, float %638
  %648 = select i1 %646, i32 2, i32 1
  %649 = load float, ptr %12, align 4, !tbaa !94
  %650 = load float, ptr %59, align 4, !tbaa !94
  %651 = fmul float %631, %650
  %652 = call float @llvm.fmuladd.f32(float %629, float %649, float %651)
  %653 = load float, ptr %60, align 4, !tbaa !94
  %654 = call float @llvm.fmuladd.f32(float %635, float %653, float %652)
  %655 = call float @llvm.fabs.f32(float %654)
  %656 = fcmp olt float %647, %655
  %657 = select i1 %656, i32 3, i32 %648
  switch i32 %657, label %503 [
    i32 1, label %658
    i32 2, label %659
    i32 3, label %660
  ]

658:                                              ; preds = %628
  store float %372, ptr %13, align 4, !tbaa !94
  store float %371, ptr %65, align 4, !tbaa !94
  store float %370, ptr %66, align 4, !tbaa !94
  br label %661

659:                                              ; preds = %628
  store float %378, ptr %13, align 4, !tbaa !94
  store float %377, ptr %63, align 4, !tbaa !94
  store float %376, ptr %64, align 4, !tbaa !94
  br label %661

660:                                              ; preds = %628
  store float %381, ptr %13, align 4, !tbaa !94
  store float %380, ptr %61, align 4, !tbaa !94
  store float %379, ptr %62, align 4, !tbaa !94
  br label %661

661:                                              ; preds = %660, %659, %658
  %662 = load float, ptr %13, align 4, !tbaa !94
  %663 = fadd float %521, %662
  %664 = load float, ptr %67, align 4, !tbaa !94
  %665 = fadd float %522, %664
  %666 = load float, ptr %68, align 4, !tbaa !94
  %667 = fadd float %523, %666
  %668 = add nsw i32 %531, 1
  br label %669

669:                                              ; preds = %661, %625, %617
  %670 = phi float [ %521, %617 ], [ %663, %661 ], [ %521, %625 ]
  %671 = phi float [ %522, %617 ], [ %665, %661 ], [ %522, %625 ]
  %672 = phi float [ %523, %617 ], [ %667, %661 ], [ %523, %625 ]
  %673 = phi i32 [ %531, %617 ], [ %668, %661 ], [ %531, %625 ]
  %674 = load float, ptr %7, align 4, !tbaa !94
  %675 = fadd float %583, %674
  store float %675, ptr %7, align 4, !tbaa !94
  %676 = add nsw i32 %532, 1
  br label %677

677:                                              ; preds = %669, %587, %577
  %678 = phi float [ %521, %587 ], [ %670, %669 ], [ %521, %577 ]
  %679 = phi float [ %522, %587 ], [ %671, %669 ], [ %522, %577 ]
  %680 = phi float [ %523, %587 ], [ %672, %669 ], [ %523, %577 ]
  %681 = phi float [ %524, %587 ], [ %618, %669 ], [ %524, %577 ]
  %682 = phi float [ %525, %587 ], [ %619, %669 ], [ %525, %577 ]
  %683 = phi float [ %526, %587 ], [ %620, %669 ], [ %526, %577 ]
  %684 = phi float [ %527, %587 ], [ %621, %669 ], [ %527, %577 ]
  %685 = phi float [ %528, %587 ], [ %622, %669 ], [ %528, %577 ]
  %686 = phi float [ %529, %587 ], [ %623, %669 ], [ %529, %577 ]
  %687 = phi i32 [ %530, %587 ], [ %624, %669 ], [ %530, %577 ]
  %688 = phi i32 [ %531, %587 ], [ %673, %669 ], [ %531, %577 ]
  %689 = phi i32 [ %532, %587 ], [ %676, %669 ], [ %532, %577 ]
  %690 = icmp slt i32 %687, 2
  %691 = load i16, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 14), align 4
  %692 = icmp ne i16 %691, 444
  %693 = select i1 %690, i1 %692, i1 false
  br i1 %693, label %694, label %882

694:                                              ; preds = %677
  call void @closest_to_line_segment_v3(ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %9, ptr noundef nonnull %10) #13
  %695 = load float, ptr %14, align 4, !tbaa !94
  %696 = load float, ptr %13, align 4, !tbaa !94
  %697 = fsub float %695, %696
  store float %697, ptr %13, align 4, !tbaa !94
  %698 = load float, ptr %18, align 4, !tbaa !94
  %699 = load float, ptr %69, align 4, !tbaa !94
  %700 = fsub float %698, %699
  store float %700, ptr %69, align 4, !tbaa !94
  %701 = load float, ptr %21, align 4, !tbaa !94
  %702 = load float, ptr %70, align 4, !tbaa !94
  %703 = fsub float %701, %702
  store float %703, ptr %70, align 4, !tbaa !94
  %704 = fmul float %700, %700
  %705 = call float @llvm.fmuladd.f32(float %697, float %697, float %704)
  %706 = call float @llvm.fmuladd.f32(float %703, float %703, float %705)
  %707 = fcmp ogt float %706, 0x38AA95A5C0000000
  br i1 %707, label %708, label %717

708:                                              ; preds = %694
  %709 = call float @sqrtf(float noundef %706) #13
  %710 = fdiv float 1.000000e+00, %709
  %711 = load float, ptr %13, align 4, !tbaa !94
  %712 = fmul float %711, %710
  store float %712, ptr %13, align 4, !tbaa !94
  %713 = load float, ptr %69, align 4, !tbaa !94
  %714 = fmul float %710, %713
  store float %714, ptr %69, align 4, !tbaa !94
  %715 = load float, ptr %70, align 4, !tbaa !94
  %716 = fmul float %710, %715
  br label %718

717:                                              ; preds = %694
  store float 0.000000e+00, ptr %13, align 4, !tbaa !94
  store float 0.000000e+00, ptr %69, align 4, !tbaa !94
  br label %718

718:                                              ; preds = %717, %708
  %719 = phi float [ 0.000000e+00, %717 ], [ %716, %708 ]
  %720 = phi float [ 0.000000e+00, %717 ], [ %709, %708 ]
  store float %719, ptr %70, align 4, !tbaa !94
  %721 = fcmp olt float %720, %160
  %722 = fcmp olt float %720, %180
  %723 = select i1 %721, i1 %722, i1 false
  br i1 %723, label %724, label %727

724:                                              ; preds = %718
  %725 = load float, ptr %13, align 4, !tbaa !94
  %726 = load float, ptr %69, align 4, !tbaa !94
  br label %727

727:                                              ; preds = %724, %718
  %728 = phi float [ %725, %724 ], [ %189, %718 ]
  %729 = phi float [ %726, %724 ], [ %188, %718 ]
  %730 = phi float [ %719, %724 ], [ %187, %718 ]
  %731 = phi float [ %720, %724 ], [ %180, %718 ]
  %732 = phi i32 [ 1, %724 ], [ %687, %718 ]
  call void @closest_to_line_segment_v3(ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %10, ptr noundef nonnull %11) #13
  %733 = load float, ptr %14, align 4, !tbaa !94
  %734 = load float, ptr %13, align 4, !tbaa !94
  %735 = fsub float %733, %734
  store float %735, ptr %13, align 4, !tbaa !94
  %736 = load float, ptr %18, align 4, !tbaa !94
  %737 = load float, ptr %69, align 4, !tbaa !94
  %738 = fsub float %736, %737
  store float %738, ptr %69, align 4, !tbaa !94
  %739 = load float, ptr %21, align 4, !tbaa !94
  %740 = load float, ptr %70, align 4, !tbaa !94
  %741 = fsub float %739, %740
  store float %741, ptr %70, align 4, !tbaa !94
  %742 = fmul float %738, %738
  %743 = call float @llvm.fmuladd.f32(float %735, float %735, float %742)
  %744 = call float @llvm.fmuladd.f32(float %741, float %741, float %743)
  %745 = fcmp ogt float %744, 0x38AA95A5C0000000
  br i1 %745, label %746, label %755

746:                                              ; preds = %727
  %747 = call float @sqrtf(float noundef %744) #13
  %748 = fdiv float 1.000000e+00, %747
  %749 = load float, ptr %13, align 4, !tbaa !94
  %750 = fmul float %749, %748
  store float %750, ptr %13, align 4, !tbaa !94
  %751 = load float, ptr %69, align 4, !tbaa !94
  %752 = fmul float %748, %751
  store float %752, ptr %69, align 4, !tbaa !94
  %753 = load float, ptr %70, align 4, !tbaa !94
  %754 = fmul float %748, %753
  br label %756

755:                                              ; preds = %727
  store float 0.000000e+00, ptr %13, align 4, !tbaa !94
  store float 0.000000e+00, ptr %69, align 4, !tbaa !94
  br label %756

756:                                              ; preds = %755, %746
  %757 = phi float [ 0.000000e+00, %755 ], [ %754, %746 ]
  %758 = phi float [ 0.000000e+00, %755 ], [ %747, %746 ]
  store float %757, ptr %70, align 4, !tbaa !94
  %759 = fcmp olt float %758, %160
  %760 = fcmp olt float %758, %731
  %761 = select i1 %759, i1 %760, i1 false
  br i1 %761, label %762, label %765

762:                                              ; preds = %756
  %763 = load float, ptr %13, align 4, !tbaa !94
  %764 = load float, ptr %69, align 4, !tbaa !94
  br label %765

765:                                              ; preds = %762, %756
  %766 = phi float [ %763, %762 ], [ %728, %756 ]
  %767 = phi float [ %764, %762 ], [ %729, %756 ]
  %768 = phi float [ %757, %762 ], [ %730, %756 ]
  %769 = phi float [ %758, %762 ], [ %731, %756 ]
  %770 = phi i32 [ 1, %762 ], [ %732, %756 ]
  call void @closest_to_line_segment_v3(ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %11, ptr noundef nonnull %9) #13
  %771 = load float, ptr %14, align 4, !tbaa !94
  %772 = load float, ptr %13, align 4, !tbaa !94
  %773 = fsub float %771, %772
  store float %773, ptr %13, align 4, !tbaa !94
  %774 = load float, ptr %18, align 4, !tbaa !94
  %775 = load float, ptr %69, align 4, !tbaa !94
  %776 = fsub float %774, %775
  store float %776, ptr %69, align 4, !tbaa !94
  %777 = load float, ptr %21, align 4, !tbaa !94
  %778 = load float, ptr %70, align 4, !tbaa !94
  %779 = fsub float %777, %778
  store float %779, ptr %70, align 4, !tbaa !94
  %780 = fmul float %776, %776
  %781 = call float @llvm.fmuladd.f32(float %773, float %773, float %780)
  %782 = call float @llvm.fmuladd.f32(float %779, float %779, float %781)
  %783 = fcmp ogt float %782, 0x38AA95A5C0000000
  br i1 %783, label %784, label %793

784:                                              ; preds = %765
  %785 = call float @sqrtf(float noundef %782) #13
  %786 = fdiv float 1.000000e+00, %785
  %787 = load float, ptr %13, align 4, !tbaa !94
  %788 = fmul float %787, %786
  store float %788, ptr %13, align 4, !tbaa !94
  %789 = load float, ptr %69, align 4, !tbaa !94
  %790 = fmul float %786, %789
  store float %790, ptr %69, align 4, !tbaa !94
  %791 = load float, ptr %70, align 4, !tbaa !94
  %792 = fmul float %786, %791
  br label %794

793:                                              ; preds = %765
  store float 0.000000e+00, ptr %13, align 4, !tbaa !94
  store float 0.000000e+00, ptr %69, align 4, !tbaa !94
  br label %794

794:                                              ; preds = %793, %784
  %795 = phi float [ 0.000000e+00, %793 ], [ %792, %784 ]
  %796 = phi float [ 0.000000e+00, %793 ], [ %785, %784 ]
  store float %795, ptr %70, align 4, !tbaa !94
  %797 = fcmp olt float %796, %160
  %798 = fcmp olt float %796, %769
  %799 = select i1 %797, i1 %798, i1 false
  br i1 %799, label %800, label %803

800:                                              ; preds = %794
  %801 = load float, ptr %13, align 4, !tbaa !94
  %802 = load float, ptr %69, align 4, !tbaa !94
  br label %803

803:                                              ; preds = %800, %794
  %804 = phi float [ %801, %800 ], [ %766, %794 ]
  %805 = phi float [ %802, %800 ], [ %767, %794 ]
  %806 = phi float [ %795, %800 ], [ %768, %794 ]
  %807 = phi float [ %796, %800 ], [ %769, %794 ]
  %808 = phi i32 [ 1, %800 ], [ %770, %794 ]
  %809 = load i32, ptr %533, align 4, !tbaa !152
  %810 = icmp eq i32 %809, 0
  br i1 %810, label %882, label %811

811:                                              ; preds = %803
  call void @closest_to_line_segment_v3(ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %11, ptr noundef nonnull %12) #13
  %812 = load float, ptr %14, align 4, !tbaa !94
  %813 = load float, ptr %13, align 4, !tbaa !94
  %814 = fsub float %812, %813
  store float %814, ptr %13, align 4, !tbaa !94
  %815 = load float, ptr %18, align 4, !tbaa !94
  %816 = load float, ptr %69, align 4, !tbaa !94
  %817 = fsub float %815, %816
  store float %817, ptr %69, align 4, !tbaa !94
  %818 = load float, ptr %21, align 4, !tbaa !94
  %819 = load float, ptr %70, align 4, !tbaa !94
  %820 = fsub float %818, %819
  store float %820, ptr %70, align 4, !tbaa !94
  %821 = fmul float %817, %817
  %822 = call float @llvm.fmuladd.f32(float %814, float %814, float %821)
  %823 = call float @llvm.fmuladd.f32(float %820, float %820, float %822)
  %824 = fcmp ogt float %823, 0x38AA95A5C0000000
  br i1 %824, label %825, label %834

825:                                              ; preds = %811
  %826 = call float @sqrtf(float noundef %823) #13
  %827 = fdiv float 1.000000e+00, %826
  %828 = load float, ptr %13, align 4, !tbaa !94
  %829 = fmul float %828, %827
  store float %829, ptr %13, align 4, !tbaa !94
  %830 = load float, ptr %69, align 4, !tbaa !94
  %831 = fmul float %827, %830
  store float %831, ptr %69, align 4, !tbaa !94
  %832 = load float, ptr %70, align 4, !tbaa !94
  %833 = fmul float %827, %832
  br label %835

834:                                              ; preds = %811
  store float 0.000000e+00, ptr %13, align 4, !tbaa !94
  store float 0.000000e+00, ptr %69, align 4, !tbaa !94
  br label %835

835:                                              ; preds = %834, %825
  %836 = phi float [ 0.000000e+00, %834 ], [ %833, %825 ]
  %837 = phi float [ 0.000000e+00, %834 ], [ %826, %825 ]
  store float %836, ptr %70, align 4, !tbaa !94
  %838 = fcmp olt float %837, %160
  %839 = fcmp olt float %837, %807
  %840 = select i1 %838, i1 %839, i1 false
  br i1 %840, label %841, label %844

841:                                              ; preds = %835
  %842 = load float, ptr %13, align 4, !tbaa !94
  %843 = load float, ptr %69, align 4, !tbaa !94
  br label %844

844:                                              ; preds = %841, %835
  %845 = phi float [ %842, %841 ], [ %804, %835 ]
  %846 = phi float [ %843, %841 ], [ %805, %835 ]
  %847 = phi float [ %836, %841 ], [ %806, %835 ]
  %848 = phi float [ %837, %841 ], [ %807, %835 ]
  %849 = phi i32 [ 1, %841 ], [ %808, %835 ]
  call void @closest_to_line_segment_v3(ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %9, ptr noundef nonnull %12) #13
  %850 = load float, ptr %14, align 4, !tbaa !94
  %851 = load float, ptr %13, align 4, !tbaa !94
  %852 = fsub float %850, %851
  store float %852, ptr %13, align 4, !tbaa !94
  %853 = load float, ptr %18, align 4, !tbaa !94
  %854 = load float, ptr %69, align 4, !tbaa !94
  %855 = fsub float %853, %854
  store float %855, ptr %69, align 4, !tbaa !94
  %856 = load float, ptr %21, align 4, !tbaa !94
  %857 = load float, ptr %70, align 4, !tbaa !94
  %858 = fsub float %856, %857
  store float %858, ptr %70, align 4, !tbaa !94
  %859 = fmul float %855, %855
  %860 = call float @llvm.fmuladd.f32(float %852, float %852, float %859)
  %861 = call float @llvm.fmuladd.f32(float %858, float %858, float %860)
  %862 = fcmp ogt float %861, 0x38AA95A5C0000000
  br i1 %862, label %863, label %872

863:                                              ; preds = %844
  %864 = call float @sqrtf(float noundef %861) #13
  %865 = fdiv float 1.000000e+00, %864
  %866 = load float, ptr %13, align 4, !tbaa !94
  %867 = fmul float %866, %865
  store float %867, ptr %13, align 4, !tbaa !94
  %868 = load float, ptr %69, align 4, !tbaa !94
  %869 = fmul float %865, %868
  store float %869, ptr %69, align 4, !tbaa !94
  %870 = load float, ptr %70, align 4, !tbaa !94
  %871 = fmul float %865, %870
  br label %873

872:                                              ; preds = %844
  store float 0.000000e+00, ptr %13, align 4, !tbaa !94
  store float 0.000000e+00, ptr %69, align 4, !tbaa !94
  br label %873

873:                                              ; preds = %872, %863
  %874 = phi float [ 0.000000e+00, %872 ], [ %871, %863 ]
  %875 = phi float [ 0.000000e+00, %872 ], [ %864, %863 ]
  store float %874, ptr %70, align 4, !tbaa !94
  %876 = fcmp olt float %875, %160
  %877 = fcmp olt float %875, %848
  %878 = select i1 %876, i1 %877, i1 false
  br i1 %878, label %879, label %882

879:                                              ; preds = %873
  %880 = load float, ptr %13, align 4, !tbaa !94
  %881 = load float, ptr %69, align 4, !tbaa !94
  br label %882

882:                                              ; preds = %879, %873, %803, %677, %520
  %883 = phi float [ %521, %520 ], [ %678, %803 ], [ %678, %879 ], [ %678, %873 ], [ %678, %677 ]
  %884 = phi float [ %522, %520 ], [ %679, %803 ], [ %679, %879 ], [ %679, %873 ], [ %679, %677 ]
  %885 = phi float [ %523, %520 ], [ %680, %803 ], [ %680, %879 ], [ %680, %873 ], [ %680, %677 ]
  %886 = phi float [ %189, %520 ], [ %804, %803 ], [ %880, %879 ], [ %845, %873 ], [ %189, %677 ]
  %887 = phi float [ %188, %520 ], [ %805, %803 ], [ %881, %879 ], [ %846, %873 ], [ %188, %677 ]
  %888 = phi float [ %187, %520 ], [ %806, %803 ], [ %874, %879 ], [ %847, %873 ], [ %187, %677 ]
  %889 = phi float [ %524, %520 ], [ %681, %803 ], [ %681, %879 ], [ %681, %873 ], [ %681, %677 ]
  %890 = phi float [ %525, %520 ], [ %682, %803 ], [ %682, %879 ], [ %682, %873 ], [ %682, %677 ]
  %891 = phi float [ %526, %520 ], [ %683, %803 ], [ %683, %879 ], [ %683, %873 ], [ %683, %677 ]
  %892 = phi float [ %527, %520 ], [ %684, %803 ], [ %684, %879 ], [ %684, %873 ], [ %684, %677 ]
  %893 = phi float [ %528, %520 ], [ %685, %803 ], [ %685, %879 ], [ %685, %873 ], [ %685, %677 ]
  %894 = phi float [ %529, %520 ], [ %686, %803 ], [ %686, %879 ], [ %686, %873 ], [ %686, %677 ]
  %895 = phi float [ %180, %520 ], [ %807, %803 ], [ %875, %879 ], [ %848, %873 ], [ %180, %677 ]
  %896 = phi i32 [ %530, %520 ], [ %808, %803 ], [ 1, %879 ], [ %849, %873 ], [ %687, %677 ]
  %897 = phi i32 [ %531, %520 ], [ %688, %803 ], [ %688, %879 ], [ %688, %873 ], [ %688, %677 ]
  %898 = phi i32 [ %532, %520 ], [ %689, %803 ], [ %689, %879 ], [ %689, %873 ], [ %689, %677 ]
  %899 = getelementptr inbounds %struct.MFace, ptr %211, i64 1
  %900 = getelementptr inbounds %struct.ccdf_minmax, ptr %210, i64 1
  %901 = icmp eq i32 %212, 0
  br i1 %901, label %903, label %173, !llvm.loop !303

902:                                              ; preds = %116, %139, %144, %153
  call void @BLI_ghashIterator_step(ptr noundef %27) #13
  br label %903

903:                                              ; preds = %882, %235, %902, %155
  %904 = phi float [ 0.000000e+00, %155 ], [ %102, %902 ], [ %204, %235 ], [ %883, %882 ]
  %905 = phi float [ 0.000000e+00, %155 ], [ %101, %902 ], [ %203, %235 ], [ %884, %882 ]
  %906 = phi float [ 0.000000e+00, %155 ], [ %100, %902 ], [ %202, %235 ], [ %885, %882 ]
  %907 = phi float [ %99, %155 ], [ %99, %902 ], [ %201, %235 ], [ %370, %882 ]
  %908 = phi float [ %98, %155 ], [ %98, %902 ], [ %200, %235 ], [ %371, %882 ]
  %909 = phi float [ %97, %155 ], [ %97, %902 ], [ %199, %235 ], [ %372, %882 ]
  %910 = phi float [ %96, %155 ], [ %96, %902 ], [ %198, %235 ], [ %373, %882 ]
  %911 = phi float [ %95, %155 ], [ %95, %902 ], [ %197, %235 ], [ %374, %882 ]
  %912 = phi float [ %94, %155 ], [ %94, %902 ], [ %196, %235 ], [ %375, %882 ]
  %913 = phi float [ %93, %155 ], [ %93, %902 ], [ %195, %235 ], [ %376, %882 ]
  %914 = phi float [ %92, %155 ], [ %92, %902 ], [ %194, %235 ], [ %377, %882 ]
  %915 = phi float [ %91, %155 ], [ %91, %902 ], [ %193, %235 ], [ %378, %882 ]
  %916 = phi float [ %90, %155 ], [ %90, %902 ], [ %192, %235 ], [ %379, %882 ]
  %917 = phi float [ %89, %155 ], [ %89, %902 ], [ %191, %235 ], [ %380, %882 ]
  %918 = phi float [ %88, %155 ], [ %88, %902 ], [ %190, %235 ], [ %381, %882 ]
  %919 = phi float [ %87, %155 ], [ %87, %902 ], [ %189, %235 ], [ %886, %882 ]
  %920 = phi float [ %86, %155 ], [ %86, %902 ], [ %188, %235 ], [ %887, %882 ]
  %921 = phi float [ %85, %155 ], [ %85, %902 ], [ %187, %235 ], [ %888, %882 ]
  %922 = phi float [ %84, %155 ], [ %84, %902 ], [ %186, %235 ], [ %889, %882 ]
  %923 = phi float [ %83, %155 ], [ %83, %902 ], [ %185, %235 ], [ %890, %882 ]
  %924 = phi float [ %82, %155 ], [ %82, %902 ], [ %184, %235 ], [ %891, %882 ]
  %925 = phi float [ %81, %155 ], [ %81, %902 ], [ %183, %235 ], [ %892, %882 ]
  %926 = phi float [ %80, %155 ], [ %80, %902 ], [ %182, %235 ], [ %893, %882 ]
  %927 = phi float [ %79, %155 ], [ %79, %902 ], [ %181, %235 ], [ %894, %882 ]
  %928 = phi float [ %160, %155 ], [ %78, %902 ], [ %160, %235 ], [ %160, %882 ]
  %929 = phi float [ %77, %155 ], [ %77, %902 ], [ %180, %235 ], [ %895, %882 ]
  %930 = phi float [ %164, %155 ], [ %76, %902 ], [ %164, %235 ], [ %164, %882 ]
  %931 = phi i32 [ %75, %155 ], [ %75, %902 ], [ %179, %235 ], [ %896, %882 ]
  %932 = phi i32 [ %74, %155 ], [ %74, %902 ], [ %178, %235 ], [ %897, %882 ]
  %933 = phi i32 [ %73, %155 ], [ %73, %902 ], [ %177, %235 ], [ %898, %882 ]
  %934 = phi i1 [ true, %155 ], [ false, %902 ], [ true, %235 ], [ true, %882 ]
  br i1 %934, label %935, label %966

935:                                              ; preds = %903, %110, %71
  %936 = phi float [ %102, %71 ], [ %102, %110 ], [ %904, %903 ]
  %937 = phi float [ %101, %71 ], [ %101, %110 ], [ %905, %903 ]
  %938 = phi float [ %100, %71 ], [ %100, %110 ], [ %906, %903 ]
  %939 = phi float [ %99, %71 ], [ %99, %110 ], [ %907, %903 ]
  %940 = phi float [ %98, %71 ], [ %98, %110 ], [ %908, %903 ]
  %941 = phi float [ %97, %71 ], [ %97, %110 ], [ %909, %903 ]
  %942 = phi float [ %96, %71 ], [ %96, %110 ], [ %910, %903 ]
  %943 = phi float [ %95, %71 ], [ %95, %110 ], [ %911, %903 ]
  %944 = phi float [ %94, %71 ], [ %94, %110 ], [ %912, %903 ]
  %945 = phi float [ %93, %71 ], [ %93, %110 ], [ %913, %903 ]
  %946 = phi float [ %92, %71 ], [ %92, %110 ], [ %914, %903 ]
  %947 = phi float [ %91, %71 ], [ %91, %110 ], [ %915, %903 ]
  %948 = phi float [ %90, %71 ], [ %90, %110 ], [ %916, %903 ]
  %949 = phi float [ %89, %71 ], [ %89, %110 ], [ %917, %903 ]
  %950 = phi float [ %88, %71 ], [ %88, %110 ], [ %918, %903 ]
  %951 = phi float [ %87, %71 ], [ %87, %110 ], [ %919, %903 ]
  %952 = phi float [ %86, %71 ], [ %86, %110 ], [ %920, %903 ]
  %953 = phi float [ %85, %71 ], [ %85, %110 ], [ %921, %903 ]
  %954 = phi float [ %84, %71 ], [ %84, %110 ], [ %922, %903 ]
  %955 = phi float [ %83, %71 ], [ %83, %110 ], [ %923, %903 ]
  %956 = phi float [ %82, %71 ], [ %82, %110 ], [ %924, %903 ]
  %957 = phi float [ %81, %71 ], [ %81, %110 ], [ %925, %903 ]
  %958 = phi float [ %80, %71 ], [ %80, %110 ], [ %926, %903 ]
  %959 = phi float [ %79, %71 ], [ %79, %110 ], [ %927, %903 ]
  %960 = phi float [ %78, %71 ], [ %78, %110 ], [ %928, %903 ]
  %961 = phi float [ %77, %71 ], [ %77, %110 ], [ %929, %903 ]
  %962 = phi float [ %76, %71 ], [ %76, %110 ], [ %930, %903 ]
  %963 = phi i32 [ %75, %71 ], [ %75, %110 ], [ %931, %903 ]
  %964 = phi i32 [ %74, %71 ], [ %74, %110 ], [ %932, %903 ]
  %965 = phi i32 [ %73, %71 ], [ %73, %110 ], [ %933, %903 ]
  call void @BLI_ghashIterator_step(ptr noundef %27) #13
  br label %966

966:                                              ; preds = %935, %903
  %967 = phi float [ %936, %935 ], [ %904, %903 ]
  %968 = phi float [ %937, %935 ], [ %905, %903 ]
  %969 = phi float [ %938, %935 ], [ %906, %903 ]
  %970 = phi float [ %939, %935 ], [ %907, %903 ]
  %971 = phi float [ %940, %935 ], [ %908, %903 ]
  %972 = phi float [ %941, %935 ], [ %909, %903 ]
  %973 = phi float [ %942, %935 ], [ %910, %903 ]
  %974 = phi float [ %943, %935 ], [ %911, %903 ]
  %975 = phi float [ %944, %935 ], [ %912, %903 ]
  %976 = phi float [ %945, %935 ], [ %913, %903 ]
  %977 = phi float [ %946, %935 ], [ %914, %903 ]
  %978 = phi float [ %947, %935 ], [ %915, %903 ]
  %979 = phi float [ %948, %935 ], [ %916, %903 ]
  %980 = phi float [ %949, %935 ], [ %917, %903 ]
  %981 = phi float [ %950, %935 ], [ %918, %903 ]
  %982 = phi float [ %951, %935 ], [ %919, %903 ]
  %983 = phi float [ %952, %935 ], [ %920, %903 ]
  %984 = phi float [ %953, %935 ], [ %921, %903 ]
  %985 = phi float [ %954, %935 ], [ %922, %903 ]
  %986 = phi float [ %955, %935 ], [ %923, %903 ]
  %987 = phi float [ %956, %935 ], [ %924, %903 ]
  %988 = phi float [ %957, %935 ], [ %925, %903 ]
  %989 = phi float [ %958, %935 ], [ %926, %903 ]
  %990 = phi float [ %959, %935 ], [ %927, %903 ]
  %991 = phi float [ %960, %935 ], [ %928, %903 ]
  %992 = phi float [ %961, %935 ], [ %929, %903 ]
  %993 = phi float [ %962, %935 ], [ %930, %903 ]
  %994 = phi i32 [ %963, %935 ], [ %931, %903 ]
  %995 = phi i32 [ %964, %935 ], [ %932, %903 ]
  %996 = phi i32 [ %965, %935 ], [ %933, %903 ]
  %997 = load ptr, ptr %28, align 8, !tbaa !296
  %998 = icmp eq ptr %997, null
  br i1 %998, label %999, label %71

999:                                              ; preds = %966, %8
  %1000 = phi float [ 0.000000e+00, %8 ], [ %967, %966 ]
  %1001 = phi float [ 0.000000e+00, %8 ], [ %968, %966 ]
  %1002 = phi float [ 0.000000e+00, %8 ], [ %969, %966 ]
  %1003 = phi float [ 0.000000e+00, %8 ], [ %982, %966 ]
  %1004 = phi float [ 0.000000e+00, %8 ], [ %983, %966 ]
  %1005 = phi float [ 0.000000e+00, %8 ], [ %984, %966 ]
  %1006 = phi float [ 0.000000e+00, %8 ], [ %985, %966 ]
  %1007 = phi float [ 0.000000e+00, %8 ], [ %986, %966 ]
  %1008 = phi float [ 0.000000e+00, %8 ], [ %987, %966 ]
  %1009 = phi float [ 0.000000e+00, %8 ], [ %988, %966 ]
  %1010 = phi float [ 0.000000e+00, %8 ], [ %989, %966 ]
  %1011 = phi float [ 0.000000e+00, %8 ], [ %990, %966 ]
  %1012 = phi float [ 0x3FC99999A0000000, %8 ], [ %991, %966 ]
  %1013 = phi float [ 1.000000e+03, %8 ], [ %992, %966 ]
  %1014 = phi float [ 1.000000e+00, %8 ], [ %993, %966 ]
  %1015 = phi i32 [ 0, %8 ], [ %994, %966 ]
  %1016 = phi i32 [ 0, %8 ], [ %995, %966 ]
  %1017 = phi i32 [ 0, %8 ], [ %996, %966 ]
  %1018 = phi ptr [ null, %8 ], [ %106, %966 ]
  switch i32 %1015, label %1066 [
    i32 1, label %1019
    i32 2, label %1048
    i32 3, label %1057
  ]

1019:                                             ; preds = %999
  %1020 = fmul float %1013, -5.000000e+00
  %1021 = fpext float %1020 to double
  %1022 = call double @exp(double noundef %1021) #13
  %1023 = fptrunc double %1022 to float
  %1024 = fmul float %1012, 0x3FB99999A0000000
  %1025 = fcmp ogt float %1013, %1024
  %1026 = fmul float %1014, %1023
  %1027 = fsub float %1013, %1012
  %1028 = fmul float %1027, %1026
  %1029 = fmul float %1027, %1028
  %1030 = select i1 %1025, float %1029, float %1023
  %1031 = load float, ptr %3, align 4, !tbaa !94
  %1032 = call float @llvm.fmuladd.f32(float %1030, float %1003, float %1031)
  store float %1032, ptr %3, align 4, !tbaa !94
  %1033 = getelementptr inbounds float, ptr %3, i64 1
  %1034 = load float, ptr %1033, align 4, !tbaa !94
  %1035 = call float @llvm.fmuladd.f32(float %1030, float %1004, float %1034)
  store float %1035, ptr %1033, align 4, !tbaa !94
  %1036 = getelementptr inbounds float, ptr %3, i64 2
  %1037 = load float, ptr %1036, align 4, !tbaa !94
  %1038 = call float @llvm.fmuladd.f32(float %1030, float %1005, float %1037)
  store float %1038, ptr %1036, align 4, !tbaa !94
  %1039 = getelementptr inbounds %struct.Object, ptr %1018, i64 0, i32 110
  %1040 = load ptr, ptr %1039, align 8, !tbaa !208
  %1041 = getelementptr inbounds %struct.PartDeflect, ptr %1040, i64 0, i32 26
  %1042 = load float, ptr %1041, align 8, !tbaa !304
  %1043 = fcmp ogt float %1013, 0.000000e+00
  %1044 = fdiv float %1013, %1012
  %1045 = fsub float 1.000000e+00, %1044
  %1046 = select i1 %1043, float %1045, float 1.000000e+00
  %1047 = fmul float %1046, %1042
  store float %1047, ptr %4, align 4, !tbaa !94
  br label %1066

1048:                                             ; preds = %999
  %1049 = load float, ptr %3, align 4, !tbaa !94
  %1050 = fadd float %1011, %1049
  store float %1050, ptr %3, align 4, !tbaa !94
  %1051 = getelementptr inbounds float, ptr %3, i64 1
  %1052 = load float, ptr %1051, align 4, !tbaa !94
  %1053 = fadd float %1010, %1052
  store float %1053, ptr %1051, align 4, !tbaa !94
  %1054 = getelementptr inbounds float, ptr %3, i64 2
  %1055 = load float, ptr %1054, align 4, !tbaa !94
  %1056 = fadd float %1009, %1055
  store float %1056, ptr %1054, align 4, !tbaa !94
  br label %1066

1057:                                             ; preds = %999
  %1058 = load float, ptr %3, align 4, !tbaa !94
  %1059 = fadd float %1008, %1058
  store float %1059, ptr %3, align 4, !tbaa !94
  %1060 = getelementptr inbounds float, ptr %3, i64 1
  %1061 = load float, ptr %1060, align 4, !tbaa !94
  %1062 = fadd float %1007, %1061
  store float %1062, ptr %1060, align 4, !tbaa !94
  %1063 = getelementptr inbounds float, ptr %3, i64 2
  %1064 = load float, ptr %1063, align 4, !tbaa !94
  %1065 = fadd float %1006, %1064
  store float %1065, ptr %1063, align 4, !tbaa !94
  br label %1066

1066:                                             ; preds = %1048, %1019, %1057, %999
  call void @BLI_ghashIterator_free(ptr noundef %27) #13
  %1067 = icmp eq i32 %1016, 0
  br i1 %1067, label %1074, label %1068

1068:                                             ; preds = %1066
  %1069 = sitofp i32 %1016 to float
  %1070 = fdiv float 1.000000e+00, %1069
  %1071 = fmul float %1000, %1070
  %1072 = fmul float %1001, %1070
  %1073 = fmul float %1002, %1070
  br label %1074

1074:                                             ; preds = %1068, %1066
  %1075 = phi float [ %1000, %1066 ], [ %1071, %1068 ]
  %1076 = phi float [ %1001, %1066 ], [ %1072, %1068 ]
  %1077 = phi float [ %1002, %1066 ], [ %1073, %1068 ]
  store float %1075, ptr %6, align 4, !tbaa !94
  %1078 = getelementptr inbounds float, ptr %6, i64 1
  store float %1076, ptr %1078, align 4, !tbaa !94
  %1079 = getelementptr inbounds float, ptr %6, i64 2
  store float %1077, ptr %1079, align 4, !tbaa !94
  %1080 = icmp eq i32 %1017, 0
  br i1 %1080, label %1085, label %1081

1081:                                             ; preds = %1074
  %1082 = sitofp i32 %1017 to float
  %1083 = load float, ptr %7, align 4, !tbaa !94
  %1084 = fdiv float %1083, %1082
  store float %1084, ptr %7, align 4, !tbaa !94
  br label %1085

1085:                                             ; preds = %1081, %1074
  %1086 = icmp eq i32 %1015, 0
  br i1 %1086, label %1112, label %1087

1087:                                             ; preds = %1085
  %1088 = load float, ptr %3, align 4, !tbaa !94
  %1089 = getelementptr inbounds float, ptr %3, i64 1
  %1090 = load float, ptr %1089, align 4, !tbaa !94
  %1091 = fmul float %1090, %1090
  %1092 = call float @llvm.fmuladd.f32(float %1088, float %1088, float %1091)
  %1093 = getelementptr inbounds float, ptr %3, i64 2
  %1094 = load float, ptr %1093, align 4, !tbaa !94
  %1095 = call float @llvm.fmuladd.f32(float %1094, float %1094, float %1092)
  %1096 = fcmp ogt float %1095, 0x38AA95A5C0000000
  br i1 %1096, label %1097, label %1107

1097:                                             ; preds = %1087
  %1098 = call float @sqrtf(float noundef %1095) #13
  %1099 = fdiv float 1.000000e+00, %1098
  %1100 = load float, ptr %3, align 4, !tbaa !94
  %1101 = fmul float %1100, %1099
  store float %1101, ptr %2, align 4, !tbaa !94
  %1102 = load float, ptr %1089, align 4, !tbaa !94
  %1103 = fmul float %1099, %1102
  %1104 = getelementptr inbounds float, ptr %2, i64 1
  store float %1103, ptr %1104, align 4, !tbaa !94
  %1105 = load float, ptr %1093, align 4, !tbaa !94
  %1106 = fmul float %1099, %1105
  br label %1109

1107:                                             ; preds = %1087
  store float 0.000000e+00, ptr %2, align 4, !tbaa !94
  %1108 = getelementptr inbounds float, ptr %2, i64 1
  store float 0.000000e+00, ptr %1108, align 4, !tbaa !94
  br label %1109

1109:                                             ; preds = %1107, %1097
  %1110 = phi float [ %1106, %1097 ], [ 0.000000e+00, %1107 ]
  %1111 = getelementptr inbounds float, ptr %2, i64 2
  store float %1110, ptr %1111, align 4, !tbaa !94
  br label %1112

1112:                                             ; preds = %1109, %1085
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #13
  ret i32 %1015
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @sb_spring_force(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 111
  %5 = load ptr, ptr %4, align 8, !tbaa !112
  %6 = load i32, ptr %2, align 4, !tbaa !144
  %7 = icmp eq i32 %6, %1
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.SoftBody, ptr %5, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !101
  %11 = sext i32 %6 to i64
  %12 = getelementptr inbounds %struct.BodyPoint, ptr %10, i64 %11
  %13 = getelementptr inbounds %struct.BodySpring, ptr %2, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !147
  br label %26

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.BodySpring, ptr %2, i64 0, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !147
  %18 = icmp eq i32 %17, %1
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.SoftBody, ptr %5, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !101
  %22 = sext i32 %17 to i64
  %23 = getelementptr inbounds %struct.BodyPoint, ptr %21, i64 %22
  br label %26

24:                                               ; preds = %15
  %25 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.27)
  br label %154

26:                                               ; preds = %19, %8
  %27 = phi i32 [ %6, %19 ], [ %14, %8 ]
  %28 = phi ptr [ %21, %19 ], [ %10, %8 ]
  %29 = phi ptr [ %23, %19 ], [ %12, %8 ]
  %30 = sext i32 %27 to i64
  %31 = getelementptr inbounds %struct.BodyPoint, ptr %29, i64 0, i32 3
  %32 = getelementptr inbounds %struct.BodyPoint, ptr %28, i64 %30, i32 3
  %33 = load float, ptr %31, align 4, !tbaa !94
  %34 = load float, ptr %32, align 4, !tbaa !94
  %35 = fsub float %33, %34
  %36 = getelementptr inbounds %struct.BodyPoint, ptr %29, i64 0, i32 3, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !94
  %38 = getelementptr inbounds %struct.BodyPoint, ptr %28, i64 %30, i32 3, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !94
  %40 = fsub float %37, %39
  %41 = getelementptr inbounds %struct.BodyPoint, ptr %29, i64 0, i32 3, i64 2
  %42 = load float, ptr %41, align 4, !tbaa !94
  %43 = getelementptr inbounds %struct.BodyPoint, ptr %28, i64 %30, i32 3, i64 2
  %44 = load float, ptr %43, align 4, !tbaa !94
  %45 = fsub float %42, %44
  %46 = fmul float %40, %40
  %47 = tail call float @llvm.fmuladd.f32(float %35, float %35, float %46)
  %48 = tail call float @llvm.fmuladd.f32(float %45, float %45, float %47)
  %49 = fcmp ogt float %48, 0x38AA95A5C0000000
  br i1 %49, label %50, label %56

50:                                               ; preds = %26
  %51 = tail call float @sqrtf(float noundef %48) #13
  %52 = fdiv float 1.000000e+00, %51
  %53 = fmul float %35, %52
  %54 = fmul float %40, %52
  %55 = fmul float %45, %52
  br label %56

56:                                               ; preds = %26, %50
  %57 = phi float [ %54, %50 ], [ 0.000000e+00, %26 ]
  %58 = phi float [ %53, %50 ], [ 0.000000e+00, %26 ]
  %59 = phi float [ %55, %50 ], [ 0.000000e+00, %26 ]
  %60 = phi float [ %51, %50 ], [ 0.000000e+00, %26 ]
  %61 = getelementptr inbounds %struct.BodySpring, ptr %2, i64 0, i32 2
  %62 = load float, ptr %61, align 4, !tbaa !164
  %63 = fcmp olt float %62, %60
  %64 = getelementptr inbounds %struct.SoftBody, ptr %5, i64 0, i32 21
  %65 = getelementptr inbounds %struct.SoftBody, ptr %5, i64 0, i32 46
  %66 = select i1 %63, ptr %64, ptr %65
  %67 = load float, ptr %66, align 4, !tbaa !94
  %68 = fsub float 1.000000e+00, %67
  %69 = fdiv float 1.000000e+00, %68
  %70 = fadd float %69, -1.000000e+00
  %71 = fcmp ogt float %62, 0.000000e+00
  %72 = select i1 %71, float %62, float 1.000000e+00
  %73 = fdiv float %70, %72
  %74 = getelementptr inbounds %struct.BodyPoint, ptr %29, i64 0, i32 21
  %75 = load float, ptr %74, align 8, !tbaa !140
  %76 = getelementptr inbounds %struct.BodyPoint, ptr %28, i64 %30, i32 21
  %77 = load float, ptr %76, align 8, !tbaa !140
  %78 = fadd float %75, %77
  %79 = fmul float %78, 5.000000e-01
  %80 = fmul float %79, %79
  %81 = fmul float %80, %80
  %82 = getelementptr inbounds %struct.BodySpring, ptr %2, i64 0, i32 6
  %83 = load i32, ptr %82, align 4, !tbaa !148
  switch i32 %83, label %97 [
    i32 1, label %84
    i32 4, label %84
    i32 2, label %86
    i32 3, label %91
  ]

84:                                               ; preds = %56, %56
  %85 = fmul float %73, %81
  br label %97

86:                                               ; preds = %56
  %87 = getelementptr inbounds %struct.SoftBody, ptr %5, i64 0, i32 32
  %88 = load float, ptr %87, align 8, !tbaa !160
  %89 = fmul float %81, %88
  %90 = fmul float %73, %89
  br label %97

91:                                               ; preds = %56
  %92 = getelementptr inbounds %struct.SoftBody, ptr %5, i64 0, i32 45
  %93 = load float, ptr %92, align 8, !tbaa !96
  %94 = fmul float %93, %93
  %95 = fmul float %81, %94
  %96 = fmul float %73, %95
  br label %97

97:                                               ; preds = %56, %91, %86, %84
  %98 = phi float [ %73, %56 ], [ %96, %91 ], [ %90, %86 ], [ %85, %84 ]
  %99 = getelementptr inbounds %struct.BodyPoint, ptr %29, i64 0, i32 5
  %100 = fsub float %62, %60
  %101 = fmul float %100, %98
  %102 = load float, ptr %99, align 4, !tbaa !94
  %103 = tail call float @llvm.fmuladd.f32(float %101, float %58, float %102)
  store float %103, ptr %99, align 4, !tbaa !94
  %104 = getelementptr inbounds %struct.BodyPoint, ptr %29, i64 0, i32 5, i64 1
  %105 = load float, ptr %104, align 4, !tbaa !94
  %106 = tail call float @llvm.fmuladd.f32(float %101, float %57, float %105)
  store float %106, ptr %104, align 4, !tbaa !94
  %107 = getelementptr inbounds %struct.BodyPoint, ptr %29, i64 0, i32 5, i64 2
  %108 = load float, ptr %107, align 4, !tbaa !94
  %109 = tail call float @llvm.fmuladd.f32(float %101, float %59, float %108)
  store float %109, ptr %107, align 4, !tbaa !94
  %110 = getelementptr inbounds %struct.BodyPoint, ptr %29, i64 0, i32 4
  %111 = getelementptr inbounds %struct.BodyPoint, ptr %28, i64 %30, i32 4
  %112 = load float, ptr %110, align 4, !tbaa !94
  %113 = load float, ptr %111, align 4, !tbaa !94
  %114 = fsub float %112, %113
  %115 = getelementptr inbounds %struct.BodyPoint, ptr %29, i64 0, i32 4, i64 1
  %116 = load float, ptr %115, align 4, !tbaa !94
  %117 = getelementptr inbounds %struct.BodyPoint, ptr %28, i64 %30, i32 4, i64 1
  %118 = load float, ptr %117, align 4, !tbaa !94
  %119 = fsub float %116, %118
  %120 = getelementptr inbounds %struct.BodyPoint, ptr %29, i64 0, i32 4, i64 2
  %121 = load float, ptr %120, align 4, !tbaa !94
  %122 = getelementptr inbounds %struct.BodyPoint, ptr %28, i64 %30, i32 4, i64 2
  %123 = load float, ptr %122, align 4, !tbaa !94
  %124 = fsub float %121, %123
  %125 = getelementptr inbounds %struct.SoftBody, ptr %5, i64 0, i32 22
  %126 = load float, ptr %125, align 4, !tbaa !54
  %127 = fmul float %119, %119
  %128 = tail call float @llvm.fmuladd.f32(float %114, float %114, float %127)
  %129 = tail call float @llvm.fmuladd.f32(float %124, float %124, float %128)
  %130 = fcmp ogt float %129, 0x38AA95A5C0000000
  br i1 %130, label %131, label %137

131:                                              ; preds = %97
  %132 = tail call float @sqrtf(float noundef %129) #13
  %133 = fdiv float 1.000000e+00, %132
  %134 = fmul float %114, %133
  %135 = fmul float %119, %133
  %136 = fmul float %124, %133
  br label %137

137:                                              ; preds = %97, %131
  %138 = phi float [ %135, %131 ], [ 0.000000e+00, %97 ]
  %139 = phi float [ %134, %131 ], [ 0.000000e+00, %97 ]
  %140 = phi float [ %136, %131 ], [ 0.000000e+00, %97 ]
  %141 = phi float [ %132, %131 ], [ 0.000000e+00, %97 ]
  %142 = fmul float %57, %138
  %143 = tail call float @llvm.fmuladd.f32(float %58, float %139, float %142)
  %144 = tail call float @llvm.fmuladd.f32(float %59, float %140, float %143)
  %145 = fmul float %141, %144
  %146 = fmul float %126, 0xBF847AE140000000
  %147 = fmul float %146, %145
  %148 = load float, ptr %99, align 4, !tbaa !94
  %149 = tail call float @llvm.fmuladd.f32(float %147, float %58, float %148)
  store float %149, ptr %99, align 4, !tbaa !94
  %150 = load float, ptr %104, align 4, !tbaa !94
  %151 = tail call float @llvm.fmuladd.f32(float %147, float %57, float %150)
  store float %151, ptr %104, align 4, !tbaa !94
  %152 = load float, ptr %107, align 4, !tbaa !94
  %153 = tail call float @llvm.fmuladd.f32(float %147, float %59, float %152)
  store float %153, ptr %107, align 4, !tbaa !94
  br label %154

154:                                              ; preds = %137, %24
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @scan_for_ext_face_forces(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #0 {
  %3 = alloca float, align 4
  %4 = alloca [3 x float], align 4
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 111
  %6 = load ptr, ptr %5, align 8, !tbaa !112
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store float 0.000000e+00, ptr %3, align 4, !tbaa !94
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %340, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.SoftBody, ptr %6, i64 0, i32 44
  %10 = load ptr, ptr %9, align 8, !tbaa !88
  %11 = getelementptr inbounds %struct.SBScratch, ptr %10, i64 0, i32 4
  %12 = load i32, ptr %11, align 8, !tbaa !93
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %340, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %9, align 8, !tbaa !88
  %16 = getelementptr inbounds %struct.SBScratch, ptr %15, i64 0, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !93
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %291

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.SBScratch, ptr %10, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !92
  %22 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %23 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %24 = getelementptr inbounds %struct.SoftBody, ptr %6, i64 0, i32 2
  br label %25

25:                                               ; preds = %19, %282
  %26 = phi float [ -1.000000e+01, %19 ], [ %284, %282 ]
  %27 = phi float [ 1.000000e+00, %19 ], [ %283, %282 ]
  %28 = phi i32 [ 0, %19 ], [ %285, %282 ]
  %29 = phi ptr [ %21, %19 ], [ %286, %282 ]
  %30 = getelementptr inbounds %struct.BodyFace, ptr %29, i64 0, i32 4
  %31 = getelementptr inbounds %struct.BodyFace, ptr %29, i64 0, i32 4, i64 2
  store float 0.000000e+00, ptr %31, align 4, !tbaa !94
  %32 = getelementptr inbounds %struct.BodyFace, ptr %29, i64 0, i32 4, i64 1
  store float 0.000000e+00, ptr %32, align 4, !tbaa !94
  store float 0.000000e+00, ptr %30, align 4, !tbaa !94
  %33 = getelementptr inbounds %struct.BodyFace, ptr %29, i64 0, i32 5
  %34 = load i16, ptr %33, align 4, !tbaa !305
  %35 = and i16 %34, -2
  store i16 %35, ptr %33, align 4, !tbaa !305
  store float 0.000000e+00, ptr %22, align 4, !tbaa !94
  store float 0.000000e+00, ptr %23, align 4, !tbaa !94
  store float 0.000000e+00, ptr %4, align 4, !tbaa !94
  %36 = load ptr, ptr %24, align 8, !tbaa !101
  %37 = load i32, ptr %29, align 4, !tbaa !192
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.BodyPoint, ptr %36, i64 %38, i32 3
  %40 = getelementptr inbounds %struct.BodyFace, ptr %29, i64 0, i32 1
  %41 = load i32, ptr %40, align 4, !tbaa !194
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.BodyPoint, ptr %36, i64 %42, i32 3
  %44 = getelementptr inbounds %struct.BodyFace, ptr %29, i64 0, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !195
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.BodyPoint, ptr %36, i64 %46, i32 3
  %48 = call fastcc i32 @sb_detect_face_collisionCached(ptr noundef nonnull %39, ptr noundef nonnull %43, ptr noundef nonnull %47, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %0, float noundef %1)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %95, label %50

50:                                               ; preds = %25
  %51 = load ptr, ptr %24, align 8, !tbaa !101
  %52 = load i32, ptr %29, align 4, !tbaa !192
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.BodyPoint, ptr %51, i64 %53, i32 5
  %55 = load float, ptr %4, align 4, !tbaa !94
  %56 = load float, ptr %54, align 4, !tbaa !94
  %57 = tail call float @llvm.fmuladd.f32(float %26, float %55, float %56)
  store float %57, ptr %54, align 4, !tbaa !94
  %58 = load float, ptr %23, align 4, !tbaa !94
  %59 = getelementptr inbounds float, ptr %54, i64 1
  %60 = load float, ptr %59, align 4, !tbaa !94
  %61 = tail call float @llvm.fmuladd.f32(float %26, float %58, float %60)
  store float %61, ptr %59, align 4, !tbaa !94
  %62 = load float, ptr %22, align 4, !tbaa !94
  %63 = getelementptr inbounds float, ptr %54, i64 2
  %64 = load float, ptr %63, align 4, !tbaa !94
  %65 = tail call float @llvm.fmuladd.f32(float %26, float %62, float %64)
  store float %65, ptr %63, align 4, !tbaa !94
  %66 = load i32, ptr %40, align 4, !tbaa !194
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.BodyPoint, ptr %51, i64 %67, i32 5
  %69 = load float, ptr %68, align 4, !tbaa !94
  %70 = tail call float @llvm.fmuladd.f32(float %26, float %55, float %69)
  store float %70, ptr %68, align 4, !tbaa !94
  %71 = getelementptr inbounds float, ptr %68, i64 1
  %72 = load float, ptr %71, align 4, !tbaa !94
  %73 = tail call float @llvm.fmuladd.f32(float %26, float %58, float %72)
  store float %73, ptr %71, align 4, !tbaa !94
  %74 = getelementptr inbounds float, ptr %68, i64 2
  %75 = load float, ptr %74, align 4, !tbaa !94
  %76 = tail call float @llvm.fmuladd.f32(float %26, float %62, float %75)
  store float %76, ptr %74, align 4, !tbaa !94
  %77 = load i32, ptr %44, align 4, !tbaa !195
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.BodyPoint, ptr %51, i64 %78, i32 5
  %80 = load float, ptr %79, align 4, !tbaa !94
  %81 = tail call float @llvm.fmuladd.f32(float %26, float %55, float %80)
  store float %81, ptr %79, align 4, !tbaa !94
  %82 = getelementptr inbounds float, ptr %79, i64 1
  %83 = load float, ptr %82, align 4, !tbaa !94
  %84 = tail call float @llvm.fmuladd.f32(float %26, float %58, float %83)
  store float %84, ptr %82, align 4, !tbaa !94
  %85 = getelementptr inbounds float, ptr %79, i64 2
  %86 = load float, ptr %85, align 4, !tbaa !94
  %87 = tail call float @llvm.fmuladd.f32(float %26, float %62, float %86)
  store float %87, ptr %85, align 4, !tbaa !94
  %88 = load i16, ptr %33, align 4, !tbaa !305
  %89 = or i16 %88, 1
  store i16 %89, ptr %33, align 4, !tbaa !305
  %90 = load float, ptr %3, align 4, !tbaa !94
  %91 = fcmp ogt float %90, %27
  %92 = select i1 %91, float %90, float %27
  %93 = fcmp olt float %92, 1.000000e+00
  %94 = select i1 %93, float %92, float 1.000000e+00
  br label %95

95:                                               ; preds = %50, %25
  %96 = phi float [ %94, %50 ], [ %27, %25 ]
  store float 0.000000e+00, ptr %22, align 4, !tbaa !94
  store float 0.000000e+00, ptr %23, align 4, !tbaa !94
  store float 0.000000e+00, ptr %4, align 4, !tbaa !94
  %97 = getelementptr inbounds %struct.BodyFace, ptr %29, i64 0, i32 3
  %98 = load i32, ptr %97, align 4, !tbaa !196
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %157, label %100

100:                                              ; preds = %95
  %101 = load ptr, ptr %24, align 8, !tbaa !101
  %102 = load i32, ptr %29, align 4, !tbaa !192
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.BodyPoint, ptr %101, i64 %103, i32 3
  %105 = load i32, ptr %44, align 4, !tbaa !195
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.BodyPoint, ptr %101, i64 %106, i32 3
  %108 = sext i32 %98 to i64
  %109 = getelementptr inbounds %struct.BodyPoint, ptr %101, i64 %108, i32 3
  %110 = call fastcc i32 @sb_detect_face_collisionCached(ptr noundef nonnull %104, ptr noundef nonnull %107, ptr noundef nonnull %109, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %0, float noundef %1)
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %157, label %112

112:                                              ; preds = %100
  %113 = load ptr, ptr %24, align 8, !tbaa !101
  %114 = load i32, ptr %29, align 4, !tbaa !192
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.BodyPoint, ptr %113, i64 %115, i32 5
  %117 = load float, ptr %4, align 4, !tbaa !94
  %118 = load float, ptr %116, align 4, !tbaa !94
  %119 = tail call float @llvm.fmuladd.f32(float %26, float %117, float %118)
  store float %119, ptr %116, align 4, !tbaa !94
  %120 = load float, ptr %23, align 4, !tbaa !94
  %121 = getelementptr inbounds float, ptr %116, i64 1
  %122 = load float, ptr %121, align 4, !tbaa !94
  %123 = tail call float @llvm.fmuladd.f32(float %26, float %120, float %122)
  store float %123, ptr %121, align 4, !tbaa !94
  %124 = load float, ptr %22, align 4, !tbaa !94
  %125 = getelementptr inbounds float, ptr %116, i64 2
  %126 = load float, ptr %125, align 4, !tbaa !94
  %127 = tail call float @llvm.fmuladd.f32(float %26, float %124, float %126)
  store float %127, ptr %125, align 4, !tbaa !94
  %128 = load i32, ptr %44, align 4, !tbaa !195
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.BodyPoint, ptr %113, i64 %129, i32 5
  %131 = load float, ptr %130, align 4, !tbaa !94
  %132 = tail call float @llvm.fmuladd.f32(float %26, float %117, float %131)
  store float %132, ptr %130, align 4, !tbaa !94
  %133 = getelementptr inbounds float, ptr %130, i64 1
  %134 = load float, ptr %133, align 4, !tbaa !94
  %135 = tail call float @llvm.fmuladd.f32(float %26, float %120, float %134)
  store float %135, ptr %133, align 4, !tbaa !94
  %136 = getelementptr inbounds float, ptr %130, i64 2
  %137 = load float, ptr %136, align 4, !tbaa !94
  %138 = tail call float @llvm.fmuladd.f32(float %26, float %124, float %137)
  store float %138, ptr %136, align 4, !tbaa !94
  %139 = load i32, ptr %97, align 4, !tbaa !196
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.BodyPoint, ptr %113, i64 %140, i32 5
  %142 = load float, ptr %141, align 4, !tbaa !94
  %143 = tail call float @llvm.fmuladd.f32(float %26, float %117, float %142)
  store float %143, ptr %141, align 4, !tbaa !94
  %144 = getelementptr inbounds float, ptr %141, i64 1
  %145 = load float, ptr %144, align 4, !tbaa !94
  %146 = tail call float @llvm.fmuladd.f32(float %26, float %120, float %145)
  store float %146, ptr %144, align 4, !tbaa !94
  %147 = getelementptr inbounds float, ptr %141, i64 2
  %148 = load float, ptr %147, align 4, !tbaa !94
  %149 = tail call float @llvm.fmuladd.f32(float %26, float %124, float %148)
  store float %149, ptr %147, align 4, !tbaa !94
  %150 = load i16, ptr %33, align 4, !tbaa !305
  %151 = or i16 %150, 1
  store i16 %151, ptr %33, align 4, !tbaa !305
  %152 = load float, ptr %3, align 4, !tbaa !94
  %153 = fcmp ogt float %152, %96
  %154 = select i1 %153, float %152, float %96
  %155 = fcmp olt float %154, 1.000000e+00
  %156 = select i1 %155, float %154, float 1.000000e+00
  br label %157

157:                                              ; preds = %112, %100, %95
  %158 = phi float [ %156, %112 ], [ %96, %100 ], [ %96, %95 ]
  %159 = load i16, ptr %33, align 4, !tbaa !305
  %160 = and i16 %159, 1
  %161 = icmp eq i16 %160, 0
  br i1 %161, label %162, label %282

162:                                              ; preds = %157
  %163 = and i16 %159, -4
  store i16 %163, ptr %33, align 4, !tbaa !305
  store float 0.000000e+00, ptr %22, align 4, !tbaa !94
  store float 0.000000e+00, ptr %23, align 4, !tbaa !94
  store float 0.000000e+00, ptr %4, align 4, !tbaa !94
  %164 = load ptr, ptr %24, align 8, !tbaa !101
  %165 = load i32, ptr %29, align 4, !tbaa !192
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.BodyPoint, ptr %164, i64 %166, i32 3
  %168 = load i32, ptr %40, align 4, !tbaa !194
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.BodyPoint, ptr %164, i64 %169, i32 3
  %171 = load i32, ptr %44, align 4, !tbaa !195
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.BodyPoint, ptr %164, i64 %172, i32 3
  %174 = call fastcc i32 @sb_detect_face_pointCached(ptr noundef nonnull %167, ptr noundef nonnull %170, ptr noundef nonnull %173, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %0, float noundef %1)
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %221, label %176

176:                                              ; preds = %162
  %177 = load ptr, ptr %24, align 8, !tbaa !101
  %178 = load i32, ptr %29, align 4, !tbaa !192
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.BodyPoint, ptr %177, i64 %179, i32 5
  %181 = load float, ptr %4, align 4, !tbaa !94
  %182 = load float, ptr %180, align 4, !tbaa !94
  %183 = tail call float @llvm.fmuladd.f32(float %181, float -1.000000e+00, float %182)
  store float %183, ptr %180, align 4, !tbaa !94
  %184 = load float, ptr %23, align 4, !tbaa !94
  %185 = getelementptr inbounds float, ptr %180, i64 1
  %186 = load float, ptr %185, align 4, !tbaa !94
  %187 = tail call float @llvm.fmuladd.f32(float %184, float -1.000000e+00, float %186)
  store float %187, ptr %185, align 4, !tbaa !94
  %188 = load float, ptr %22, align 4, !tbaa !94
  %189 = getelementptr inbounds float, ptr %180, i64 2
  %190 = load float, ptr %189, align 4, !tbaa !94
  %191 = tail call float @llvm.fmuladd.f32(float %188, float -1.000000e+00, float %190)
  store float %191, ptr %189, align 4, !tbaa !94
  %192 = load i32, ptr %40, align 4, !tbaa !194
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.BodyPoint, ptr %177, i64 %193, i32 5
  %195 = load float, ptr %194, align 4, !tbaa !94
  %196 = tail call float @llvm.fmuladd.f32(float %181, float -1.000000e+00, float %195)
  store float %196, ptr %194, align 4, !tbaa !94
  %197 = getelementptr inbounds float, ptr %194, i64 1
  %198 = load float, ptr %197, align 4, !tbaa !94
  %199 = tail call float @llvm.fmuladd.f32(float %184, float -1.000000e+00, float %198)
  store float %199, ptr %197, align 4, !tbaa !94
  %200 = getelementptr inbounds float, ptr %194, i64 2
  %201 = load float, ptr %200, align 4, !tbaa !94
  %202 = tail call float @llvm.fmuladd.f32(float %188, float -1.000000e+00, float %201)
  store float %202, ptr %200, align 4, !tbaa !94
  %203 = load i32, ptr %44, align 4, !tbaa !195
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.BodyPoint, ptr %177, i64 %204, i32 5
  %206 = load float, ptr %205, align 4, !tbaa !94
  %207 = tail call float @llvm.fmuladd.f32(float %181, float -1.000000e+00, float %206)
  store float %207, ptr %205, align 4, !tbaa !94
  %208 = getelementptr inbounds float, ptr %205, i64 1
  %209 = load float, ptr %208, align 4, !tbaa !94
  %210 = tail call float @llvm.fmuladd.f32(float %184, float -1.000000e+00, float %209)
  store float %210, ptr %208, align 4, !tbaa !94
  %211 = getelementptr inbounds float, ptr %205, i64 2
  %212 = load float, ptr %211, align 4, !tbaa !94
  %213 = tail call float @llvm.fmuladd.f32(float %188, float -1.000000e+00, float %212)
  store float %213, ptr %211, align 4, !tbaa !94
  %214 = load i16, ptr %33, align 4, !tbaa !305
  %215 = or i16 %214, 2
  store i16 %215, ptr %33, align 4, !tbaa !305
  %216 = load float, ptr %3, align 4, !tbaa !94
  %217 = fcmp ogt float %216, %158
  %218 = select i1 %217, float %216, float %158
  %219 = fcmp olt float %218, 1.000000e+00
  %220 = select i1 %219, float %218, float 1.000000e+00
  br label %221

221:                                              ; preds = %176, %162
  %222 = phi float [ %220, %176 ], [ %158, %162 ]
  store float 0.000000e+00, ptr %22, align 4, !tbaa !94
  store float 0.000000e+00, ptr %23, align 4, !tbaa !94
  store float 0.000000e+00, ptr %4, align 4, !tbaa !94
  %223 = load i32, ptr %97, align 4, !tbaa !196
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %282, label %225

225:                                              ; preds = %221
  %226 = load ptr, ptr %24, align 8, !tbaa !101
  %227 = load i32, ptr %29, align 4, !tbaa !192
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.BodyPoint, ptr %226, i64 %228, i32 3
  %230 = load i32, ptr %44, align 4, !tbaa !195
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.BodyPoint, ptr %226, i64 %231, i32 3
  %233 = sext i32 %223 to i64
  %234 = getelementptr inbounds %struct.BodyPoint, ptr %226, i64 %233, i32 3
  %235 = call fastcc i32 @sb_detect_face_pointCached(ptr noundef nonnull %229, ptr noundef nonnull %232, ptr noundef nonnull %234, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %0, float noundef %1)
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %282, label %237

237:                                              ; preds = %225
  %238 = load ptr, ptr %24, align 8, !tbaa !101
  %239 = load i32, ptr %29, align 4, !tbaa !192
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.BodyPoint, ptr %238, i64 %240, i32 5
  %242 = load float, ptr %4, align 4, !tbaa !94
  %243 = load float, ptr %241, align 4, !tbaa !94
  %244 = tail call float @llvm.fmuladd.f32(float %242, float -1.000000e+00, float %243)
  store float %244, ptr %241, align 4, !tbaa !94
  %245 = load float, ptr %23, align 4, !tbaa !94
  %246 = getelementptr inbounds float, ptr %241, i64 1
  %247 = load float, ptr %246, align 4, !tbaa !94
  %248 = tail call float @llvm.fmuladd.f32(float %245, float -1.000000e+00, float %247)
  store float %248, ptr %246, align 4, !tbaa !94
  %249 = load float, ptr %22, align 4, !tbaa !94
  %250 = getelementptr inbounds float, ptr %241, i64 2
  %251 = load float, ptr %250, align 4, !tbaa !94
  %252 = tail call float @llvm.fmuladd.f32(float %249, float -1.000000e+00, float %251)
  store float %252, ptr %250, align 4, !tbaa !94
  %253 = load i32, ptr %44, align 4, !tbaa !195
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.BodyPoint, ptr %238, i64 %254, i32 5
  %256 = load float, ptr %255, align 4, !tbaa !94
  %257 = tail call float @llvm.fmuladd.f32(float %242, float -1.000000e+00, float %256)
  store float %257, ptr %255, align 4, !tbaa !94
  %258 = getelementptr inbounds float, ptr %255, i64 1
  %259 = load float, ptr %258, align 4, !tbaa !94
  %260 = tail call float @llvm.fmuladd.f32(float %245, float -1.000000e+00, float %259)
  store float %260, ptr %258, align 4, !tbaa !94
  %261 = getelementptr inbounds float, ptr %255, i64 2
  %262 = load float, ptr %261, align 4, !tbaa !94
  %263 = tail call float @llvm.fmuladd.f32(float %249, float -1.000000e+00, float %262)
  store float %263, ptr %261, align 4, !tbaa !94
  %264 = load i32, ptr %97, align 4, !tbaa !196
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.BodyPoint, ptr %238, i64 %265, i32 5
  %267 = load float, ptr %266, align 4, !tbaa !94
  %268 = tail call float @llvm.fmuladd.f32(float %242, float -1.000000e+00, float %267)
  store float %268, ptr %266, align 4, !tbaa !94
  %269 = getelementptr inbounds float, ptr %266, i64 1
  %270 = load float, ptr %269, align 4, !tbaa !94
  %271 = tail call float @llvm.fmuladd.f32(float %245, float -1.000000e+00, float %270)
  store float %271, ptr %269, align 4, !tbaa !94
  %272 = getelementptr inbounds float, ptr %266, i64 2
  %273 = load float, ptr %272, align 4, !tbaa !94
  %274 = tail call float @llvm.fmuladd.f32(float %249, float -1.000000e+00, float %273)
  store float %274, ptr %272, align 4, !tbaa !94
  %275 = load i16, ptr %33, align 4, !tbaa !305
  %276 = or i16 %275, 2
  store i16 %276, ptr %33, align 4, !tbaa !305
  %277 = load float, ptr %3, align 4, !tbaa !94
  %278 = fcmp ogt float %277, %222
  %279 = select i1 %278, float %277, float %222
  %280 = fcmp olt float %279, 1.000000e+00
  %281 = select i1 %280, float %279, float 1.000000e+00
  br label %282

282:                                              ; preds = %157, %237, %225, %221
  %283 = phi float [ %281, %237 ], [ %222, %225 ], [ %222, %221 ], [ %158, %157 ]
  %284 = phi float [ -1.000000e+00, %237 ], [ -1.000000e+00, %225 ], [ -1.000000e+00, %221 ], [ %26, %157 ]
  %285 = add nuw nsw i32 %28, 1
  %286 = getelementptr inbounds %struct.BodyFace, ptr %29, i64 1
  %287 = load ptr, ptr %9, align 8, !tbaa !88
  %288 = getelementptr inbounds %struct.SBScratch, ptr %287, i64 0, i32 4
  %289 = load i32, ptr %288, align 8, !tbaa !93
  %290 = icmp slt i32 %285, %289
  br i1 %290, label %25, label %291, !llvm.loop !306

291:                                              ; preds = %282, %14
  %292 = phi float [ 1.000000e+00, %14 ], [ %283, %282 ]
  %293 = phi ptr [ %15, %14 ], [ %287, %282 ]
  %294 = phi i32 [ %17, %14 ], [ %289, %282 ]
  %295 = icmp sgt i32 %294, 0
  br i1 %295, label %296, label %340

296:                                              ; preds = %291
  %297 = getelementptr inbounds %struct.SBScratch, ptr %293, i64 0, i32 3
  %298 = load ptr, ptr %297, align 8, !tbaa !92
  %299 = getelementptr inbounds %struct.SoftBody, ptr %6, i64 0, i32 2
  br label %300

300:                                              ; preds = %296, %336
  %301 = phi i32 [ 0, %296 ], [ %337, %336 ]
  %302 = phi ptr [ %298, %296 ], [ %338, %336 ]
  %303 = getelementptr inbounds %struct.BodyFace, ptr %302, i64 0, i32 5
  %304 = load i16, ptr %303, align 4, !tbaa !305
  %305 = and i16 %304, 3
  %306 = icmp eq i16 %305, 0
  br i1 %306, label %336, label %307

307:                                              ; preds = %300
  %308 = load ptr, ptr %299, align 8, !tbaa !101
  %309 = load i32, ptr %302, align 4, !tbaa !192
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds %struct.BodyPoint, ptr %308, i64 %310, i32 16
  %312 = load float, ptr %311, align 4, !tbaa !287
  %313 = fcmp ogt float %312, %292
  %314 = select i1 %313, float %312, float %292
  store float %314, ptr %311, align 4, !tbaa !287
  %315 = getelementptr inbounds %struct.BodyFace, ptr %302, i64 0, i32 1
  %316 = load i32, ptr %315, align 4, !tbaa !194
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds %struct.BodyPoint, ptr %308, i64 %317, i32 16
  %319 = load float, ptr %318, align 4, !tbaa !287
  %320 = fcmp ogt float %319, %292
  %321 = select i1 %320, float %319, float %292
  store float %321, ptr %318, align 4, !tbaa !287
  %322 = getelementptr inbounds %struct.BodyFace, ptr %302, i64 0, i32 2
  %323 = load i32, ptr %322, align 4, !tbaa !195
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.BodyPoint, ptr %308, i64 %324, i32 16
  %326 = load float, ptr %325, align 4, !tbaa !287
  %327 = fcmp ogt float %326, %292
  %328 = select i1 %327, float %326, float %292
  store float %328, ptr %325, align 4, !tbaa !287
  %329 = getelementptr inbounds %struct.BodyFace, ptr %302, i64 0, i32 3
  %330 = load i32, ptr %329, align 4, !tbaa !196
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %336, label %332

332:                                              ; preds = %307
  %333 = load float, ptr %318, align 4, !tbaa !287
  %334 = fcmp ogt float %333, %292
  %335 = select i1 %334, float %333, float %292
  store float %335, ptr %318, align 4, !tbaa !287
  br label %336

336:                                              ; preds = %300, %332, %307
  %337 = add nuw nsw i32 %301, 1
  %338 = getelementptr inbounds %struct.BodyFace, ptr %302, i64 1
  %339 = icmp eq i32 %337, %294
  br i1 %339, label %340, label %300, !llvm.loop !307

340:                                              ; preds = %336, %291, %8, %2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret void
}

declare void @pdEndEffectors(ptr noundef) local_unnamed_addr #2

declare i32 @BKE_scene_num_threads(ptr noundef) local_unnamed_addr #2

declare void @BLI_init_threads(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @exec_scan_for_ext_spring_forces(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !263
  %3 = getelementptr inbounds %struct.SB_thread_context, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !265
  %5 = getelementptr inbounds %struct.SB_thread_context, ptr %0, i64 0, i32 3
  %6 = load float, ptr %5, align 4, !tbaa !267
  %7 = getelementptr inbounds %struct.SB_thread_context, ptr %0, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !269
  %9 = getelementptr inbounds %struct.SB_thread_context, ptr %0, i64 0, i32 5
  %10 = load i32, ptr %9, align 4, !tbaa !268
  %11 = getelementptr inbounds %struct.SB_thread_context, ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !270
  tail call fastcc void @_scan_for_ext_spring_forces(ptr noundef %2, ptr noundef %4, float noundef %6, i32 noundef %8, i32 noundef %10, ptr noundef %12)
  ret ptr null
}

declare void @BLI_insert_thread(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_end_threads(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @_scan_for_ext_spring_forces(ptr noundef %0, ptr nocapture noundef readonly %1, float noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca float, align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x float], align 4
  %17 = alloca [3 x float], align 4
  %18 = alloca %struct.EffectedPoint, align 8
  %19 = alloca [3 x float], align 4
  %20 = alloca [3 x float], align 4
  %21 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 111
  %22 = load ptr, ptr %21, align 8, !tbaa !112
  %23 = icmp eq ptr %22, null
  br i1 %23, label %717, label %24

24:                                               ; preds = %6
  %25 = getelementptr inbounds %struct.SoftBody, ptr %22, i64 0, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !155
  %27 = icmp ne i32 %26, 0
  %28 = icmp slt i32 %3, %4
  %29 = and i1 %27, %28
  br i1 %29, label %30, label %717

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.SoftBody, ptr %22, i64 0, i32 3
  %32 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 104
  %33 = getelementptr inbounds %struct.SoftBody, ptr %22, i64 0, i32 2
  %34 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 1
  %35 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 2
  %36 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 1
  %37 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  %38 = getelementptr inbounds float, ptr %7, i64 1
  %39 = getelementptr inbounds float, ptr %7, i64 2
  %40 = getelementptr inbounds float, ptr %8, i64 1
  %41 = getelementptr inbounds float, ptr %8, i64 2
  %42 = getelementptr inbounds float, ptr %9, i64 1
  %43 = getelementptr inbounds float, ptr %9, i64 2
  %44 = getelementptr inbounds float, ptr %10, i64 1
  %45 = getelementptr inbounds float, ptr %10, i64 2
  %46 = fsub float 1.000000e+00, %2
  %47 = getelementptr inbounds float, ptr %10, i64 1
  %48 = getelementptr inbounds float, ptr %10, i64 2
  %49 = getelementptr inbounds float, ptr %7, i64 1
  %50 = getelementptr inbounds float, ptr %8, i64 1
  %51 = getelementptr inbounds float, ptr %7, i64 2
  %52 = getelementptr inbounds float, ptr %8, i64 2
  %53 = getelementptr inbounds float, ptr %9, i64 1
  %54 = getelementptr inbounds float, ptr %9, i64 2
  %55 = getelementptr inbounds float, ptr %10, i64 1
  %56 = getelementptr inbounds float, ptr %10, i64 2
  %57 = getelementptr inbounds %struct.SoftBody, ptr %22, i64 0, i32 40
  %58 = getelementptr inbounds %struct.SoftBody, ptr %22, i64 0, i32 37
  %59 = icmp eq ptr %5, null
  %60 = getelementptr inbounds %struct.SoftBody, ptr %22, i64 0, i32 2
  %61 = getelementptr inbounds %struct.SoftBody, ptr %22, i64 0, i32 49
  %62 = getelementptr inbounds float, ptr %19, i64 1
  %63 = getelementptr inbounds float, ptr %19, i64 2
  %64 = getelementptr inbounds float, ptr %14, i64 1
  %65 = getelementptr inbounds float, ptr %14, i64 2
  %66 = getelementptr inbounds %struct.SoftBody, ptr %22, i64 0, i32 2
  %67 = getelementptr inbounds float, ptr %14, i64 1
  %68 = getelementptr inbounds float, ptr %14, i64 2
  %69 = getelementptr inbounds float, ptr %14, i64 1
  %70 = getelementptr inbounds float, ptr %14, i64 2
  %71 = getelementptr inbounds %struct.SoftBody, ptr %22, i64 0, i32 2
  %72 = getelementptr inbounds float, ptr %15, i64 1
  %73 = getelementptr inbounds float, ptr %15, i64 2
  %74 = getelementptr inbounds float, ptr %16, i64 1
  %75 = getelementptr inbounds float, ptr %16, i64 2
  %76 = sext i32 %3 to i64
  br label %77

77:                                               ; preds = %30, %713
  %78 = phi i64 [ %76, %30 ], [ %714, %713 ]
  %79 = load ptr, ptr %31, align 8, !tbaa !108
  %80 = getelementptr inbounds %struct.BodySpring, ptr %79, i64 %78
  %81 = getelementptr inbounds %struct.BodySpring, ptr %79, i64 %78, i32 5
  %82 = getelementptr inbounds %struct.BodySpring, ptr %79, i64 %78, i32 5, i64 2
  store float 0.000000e+00, ptr %82, align 4, !tbaa !94
  %83 = getelementptr inbounds %struct.BodySpring, ptr %79, i64 %78, i32 5, i64 1
  store float 0.000000e+00, ptr %83, align 4, !tbaa !94
  store float 0.000000e+00, ptr %81, align 4, !tbaa !94
  %84 = getelementptr inbounds %struct.BodySpring, ptr %79, i64 %78, i32 7
  %85 = load i16, ptr %84, align 4, !tbaa !289
  %86 = and i16 %85, -2
  store i16 %86, ptr %84, align 4, !tbaa !289
  %87 = getelementptr inbounds %struct.BodySpring, ptr %79, i64 %78, i32 6
  %88 = load i32, ptr %87, align 4, !tbaa !148
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %90, label %713

90:                                               ; preds = %77
  %91 = load i16, ptr %32, align 2, !tbaa !119
  %92 = and i16 %91, 2048
  %93 = icmp eq i16 %92, 0
  br i1 %93, label %529, label %94

94:                                               ; preds = %90
  %95 = load ptr, ptr %33, align 8, !tbaa !101
  %96 = load i32, ptr %80, align 4, !tbaa !144
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.BodyPoint, ptr %95, i64 %97, i32 3
  %99 = getelementptr inbounds %struct.BodySpring, ptr %79, i64 %78, i32 1
  %100 = load i32, ptr %99, align 4, !tbaa !147
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.BodyPoint, ptr %95, i64 %101, i32 3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #13
  call void @minmax_v3v3_v3(ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %98) #13
  call void @minmax_v3v3_v3(ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %102) #13
  %103 = load float, ptr %102, align 4, !tbaa !94
  %104 = load float, ptr %98, align 4, !tbaa !94
  %105 = fsub float %103, %104
  %106 = getelementptr inbounds float, ptr %102, i64 1
  %107 = load float, ptr %106, align 4, !tbaa !94
  %108 = getelementptr inbounds float, ptr %98, i64 1
  %109 = load float, ptr %108, align 4, !tbaa !94
  %110 = fsub float %107, %109
  %111 = getelementptr inbounds float, ptr %102, i64 2
  %112 = load float, ptr %111, align 4, !tbaa !94
  %113 = getelementptr inbounds float, ptr %98, i64 2
  %114 = load float, ptr %113, align 4, !tbaa !94
  %115 = fsub float %112, %114
  %116 = fmul float %110, %110
  %117 = call float @llvm.fmuladd.f32(float %105, float %105, float %116)
  %118 = call float @llvm.fmuladd.f32(float %115, float %115, float %117)
  %119 = call float @sqrtf(float noundef %118) #13
  %120 = load ptr, ptr %21, align 8, !tbaa !112
  %121 = getelementptr inbounds %struct.SoftBody, ptr %120, i64 0, i32 44
  %122 = load ptr, ptr %121, align 8, !tbaa !88
  %123 = load ptr, ptr %122, align 8, !tbaa !89
  %124 = call ptr @BLI_ghashIterator_new(ptr noundef %123) #13
  %125 = getelementptr inbounds %struct.GHashIterator, ptr %124, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !296
  %127 = icmp eq ptr %126, null
  br i1 %127, label %508, label %128

128:                                              ; preds = %94, %501
  %129 = phi ptr [ %506, %501 ], [ %126, %94 ]
  %130 = phi i32 [ %505, %501 ], [ 0, %94 ]
  %131 = phi float [ %504, %501 ], [ 0.000000e+00, %94 ]
  %132 = phi float [ %503, %501 ], [ 0.000000e+00, %94 ]
  %133 = phi float [ %502, %501 ], [ 0.000000e+00, %94 ]
  %134 = getelementptr inbounds %struct._gh_Entry, ptr %129, i64 0, i32 2
  %135 = load ptr, ptr %134, align 8, !tbaa !298
  %136 = getelementptr inbounds %struct._gh_Entry, ptr %129, i64 0, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !300
  %138 = getelementptr inbounds %struct.Object, ptr %137, i64 0, i32 110
  %139 = load ptr, ptr %138, align 8, !tbaa !208
  %140 = icmp eq ptr %139, null
  br i1 %140, label %496, label %141

141:                                              ; preds = %128
  %142 = getelementptr inbounds %struct.PartDeflect, ptr %139, i64 0, i32 1
  %143 = load i16, ptr %142, align 4, !tbaa !209
  %144 = icmp eq i16 %143, 0
  br i1 %144, label %496, label %145

145:                                              ; preds = %141
  %146 = icmp eq ptr %135, null
  br i1 %146, label %192, label %147

147:                                              ; preds = %145
  %148 = getelementptr inbounds %struct.ccd_Mesh, ptr %135, i64 0, i32 4
  %149 = load ptr, ptr %148, align 8, !tbaa !224
  %150 = getelementptr inbounds %struct.ccd_Mesh, ptr %135, i64 0, i32 2
  %151 = load ptr, ptr %150, align 8, !tbaa !221
  %152 = getelementptr inbounds %struct.ccd_Mesh, ptr %135, i64 0, i32 3
  %153 = load ptr, ptr %152, align 8, !tbaa !220
  %154 = getelementptr inbounds %struct.ccd_Mesh, ptr %135, i64 0, i32 6
  %155 = load ptr, ptr %154, align 8, !tbaa !225
  %156 = getelementptr inbounds %struct.ccd_Mesh, ptr %135, i64 0, i32 1
  %157 = load i32, ptr %156, align 4, !tbaa !217
  %158 = load float, ptr %12, align 4, !tbaa !94
  %159 = getelementptr inbounds %struct.ccd_Mesh, ptr %135, i64 0, i32 7
  %160 = load float, ptr %159, align 8, !tbaa !94
  %161 = fcmp olt float %158, %160
  br i1 %161, label %489, label %162, !llvm.loop !308

162:                                              ; preds = %147
  %163 = load float, ptr %34, align 4, !tbaa !94
  %164 = getelementptr inbounds %struct.ccd_Mesh, ptr %135, i64 0, i32 7, i64 1
  %165 = load float, ptr %164, align 4, !tbaa !94
  %166 = fcmp olt float %163, %165
  br i1 %166, label %489, label %167, !llvm.loop !308

167:                                              ; preds = %162
  %168 = load float, ptr %35, align 4, !tbaa !94
  %169 = getelementptr inbounds %struct.ccd_Mesh, ptr %135, i64 0, i32 7, i64 2
  %170 = load float, ptr %169, align 8, !tbaa !94
  %171 = fcmp olt float %168, %170
  br i1 %171, label %489, label %172, !llvm.loop !308

172:                                              ; preds = %167
  %173 = load float, ptr %11, align 4, !tbaa !94
  %174 = getelementptr inbounds %struct.ccd_Mesh, ptr %135, i64 0, i32 8
  %175 = load float, ptr %174, align 4, !tbaa !94
  %176 = fcmp ogt float %173, %175
  br i1 %176, label %489, label %177, !llvm.loop !308

177:                                              ; preds = %172
  %178 = load float, ptr %36, align 4, !tbaa !94
  %179 = getelementptr inbounds %struct.ccd_Mesh, ptr %135, i64 0, i32 8, i64 1
  %180 = load float, ptr %179, align 4, !tbaa !94
  %181 = fcmp ogt float %178, %180
  br i1 %181, label %489, label %182, !llvm.loop !308

182:                                              ; preds = %177
  %183 = load float, ptr %37, align 4, !tbaa !94
  %184 = getelementptr inbounds %struct.ccd_Mesh, ptr %135, i64 0, i32 8, i64 2
  %185 = load float, ptr %184, align 4, !tbaa !94
  %186 = fcmp ogt float %183, %185
  br i1 %186, label %489, label %187, !llvm.loop !308

187:                                              ; preds = %182
  %188 = icmp eq i32 %157, 0
  br i1 %188, label %490, label %189

189:                                              ; preds = %187
  %190 = icmp eq ptr %151, null
  %191 = icmp eq ptr %153, null
  br label %475

192:                                              ; preds = %145
  %193 = call i32 @puts(ptr nonnull dereferenceable(1) @str.32)
  br label %489, !llvm.loop !308

194:                                              ; preds = %475, %221
  %195 = phi i32 [ %476, %475 ], [ %198, %221 ]
  %196 = phi ptr [ %478, %475 ], [ %222, %221 ]
  %197 = phi ptr [ %479, %475 ], [ %223, %221 ]
  %198 = add nsw i32 %195, -1
  %199 = load float, ptr %197, align 4, !tbaa !229
  %200 = fcmp olt float %483, %199
  br i1 %200, label %221, label %201

201:                                              ; preds = %194
  %202 = getelementptr inbounds %struct.ccdf_minmax, ptr %197, i64 0, i32 3
  %203 = load float, ptr %202, align 4, !tbaa !232
  %204 = fcmp ogt float %484, %203
  br i1 %204, label %221, label %205

205:                                              ; preds = %201
  %206 = getelementptr inbounds %struct.ccdf_minmax, ptr %197, i64 0, i32 1
  %207 = load float, ptr %206, align 4, !tbaa !228
  %208 = fcmp olt float %485, %207
  br i1 %208, label %221, label %209

209:                                              ; preds = %205
  %210 = getelementptr inbounds %struct.ccdf_minmax, ptr %197, i64 0, i32 4
  %211 = load float, ptr %210, align 4, !tbaa !231
  %212 = fcmp ogt float %486, %211
  br i1 %212, label %221, label %213

213:                                              ; preds = %209
  %214 = getelementptr inbounds %struct.ccdf_minmax, ptr %197, i64 0, i32 2
  %215 = load float, ptr %214, align 4, !tbaa !226
  %216 = fcmp olt float %487, %215
  br i1 %216, label %221, label %217

217:                                              ; preds = %213
  %218 = getelementptr inbounds %struct.ccdf_minmax, ptr %197, i64 0, i32 5
  %219 = load float, ptr %218, align 4, !tbaa !230
  %220 = fcmp ogt float %488, %219
  br i1 %220, label %221, label %225

221:                                              ; preds = %217, %213, %209, %205, %201, %194
  %222 = getelementptr inbounds %struct.MFace, ptr %196, i64 1
  %223 = getelementptr inbounds %struct.ccdf_minmax, ptr %197, i64 1
  %224 = icmp eq i32 %198, 0
  br i1 %224, label %490, label %194, !llvm.loop !309

225:                                              ; preds = %217
  br i1 %190, label %319, label %226

226:                                              ; preds = %225
  %227 = load i32, ptr %196, align 4, !tbaa !156
  %228 = zext i32 %227 to i64
  %229 = getelementptr inbounds %struct.MVert, ptr %151, i64 %228
  %230 = load float, ptr %229, align 4, !tbaa !94
  store float %230, ptr %7, align 4, !tbaa !94
  %231 = getelementptr inbounds float, ptr %229, i64 1
  %232 = load float, ptr %231, align 4, !tbaa !94
  store float %232, ptr %38, align 4, !tbaa !94
  %233 = getelementptr inbounds float, ptr %229, i64 2
  %234 = load float, ptr %233, align 4, !tbaa !94
  store float %234, ptr %39, align 4, !tbaa !94
  %235 = getelementptr inbounds %struct.MFace, ptr %196, i64 0, i32 1
  %236 = load i32, ptr %235, align 4, !tbaa !158
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds %struct.MVert, ptr %151, i64 %237
  %239 = load float, ptr %238, align 4, !tbaa !94
  store float %239, ptr %8, align 4, !tbaa !94
  %240 = getelementptr inbounds float, ptr %238, i64 1
  %241 = load float, ptr %240, align 4, !tbaa !94
  store float %241, ptr %40, align 4, !tbaa !94
  %242 = getelementptr inbounds float, ptr %238, i64 2
  %243 = load float, ptr %242, align 4, !tbaa !94
  store float %243, ptr %41, align 4, !tbaa !94
  %244 = getelementptr inbounds %struct.MFace, ptr %196, i64 0, i32 2
  %245 = load i32, ptr %244, align 4, !tbaa !157
  %246 = zext i32 %245 to i64
  %247 = getelementptr inbounds %struct.MVert, ptr %151, i64 %246
  %248 = load float, ptr %247, align 4, !tbaa !94
  store float %248, ptr %9, align 4, !tbaa !94
  %249 = getelementptr inbounds float, ptr %247, i64 1
  %250 = load float, ptr %249, align 4, !tbaa !94
  store float %250, ptr %42, align 4, !tbaa !94
  %251 = getelementptr inbounds float, ptr %247, i64 2
  %252 = load float, ptr %251, align 4, !tbaa !94
  store float %252, ptr %43, align 4, !tbaa !94
  %253 = getelementptr inbounds %struct.MFace, ptr %196, i64 0, i32 3
  %254 = load i32, ptr %253, align 4, !tbaa !152
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %264, label %256

256:                                              ; preds = %226
  %257 = zext i32 %254 to i64
  %258 = getelementptr inbounds %struct.MVert, ptr %151, i64 %257
  %259 = load float, ptr %258, align 4, !tbaa !94
  store float %259, ptr %10, align 4, !tbaa !94
  %260 = getelementptr inbounds float, ptr %258, i64 1
  %261 = load float, ptr %260, align 4, !tbaa !94
  store float %261, ptr %44, align 4, !tbaa !94
  %262 = getelementptr inbounds float, ptr %258, i64 2
  %263 = load float, ptr %262, align 4, !tbaa !94
  store float %263, ptr %45, align 4, !tbaa !94
  br label %264

264:                                              ; preds = %256, %226
  br i1 %191, label %319, label %265

265:                                              ; preds = %264
  %266 = fmul float %230, %2
  store float %266, ptr %7, align 4, !tbaa !94
  %267 = fmul float %232, %2
  store float %267, ptr %38, align 4, !tbaa !94
  %268 = fmul float %234, %2
  store float %268, ptr %39, align 4, !tbaa !94
  %269 = getelementptr inbounds %struct.MVert, ptr %153, i64 %228
  %270 = load float, ptr %269, align 4, !tbaa !94
  %271 = call float @llvm.fmuladd.f32(float %46, float %270, float %266)
  store float %271, ptr %7, align 4, !tbaa !94
  %272 = getelementptr inbounds float, ptr %269, i64 1
  %273 = load float, ptr %272, align 4, !tbaa !94
  %274 = call float @llvm.fmuladd.f32(float %46, float %273, float %267)
  store float %274, ptr %38, align 4, !tbaa !94
  %275 = getelementptr inbounds float, ptr %269, i64 2
  %276 = load float, ptr %275, align 4, !tbaa !94
  %277 = call float @llvm.fmuladd.f32(float %46, float %276, float %268)
  store float %277, ptr %39, align 4, !tbaa !94
  %278 = fmul float %239, %2
  store float %278, ptr %8, align 4, !tbaa !94
  %279 = fmul float %241, %2
  store float %279, ptr %40, align 4, !tbaa !94
  %280 = fmul float %243, %2
  store float %280, ptr %41, align 4, !tbaa !94
  %281 = getelementptr inbounds %struct.MVert, ptr %153, i64 %237
  %282 = load float, ptr %281, align 4, !tbaa !94
  %283 = call float @llvm.fmuladd.f32(float %46, float %282, float %278)
  store float %283, ptr %8, align 4, !tbaa !94
  %284 = getelementptr inbounds float, ptr %281, i64 1
  %285 = load float, ptr %284, align 4, !tbaa !94
  %286 = call float @llvm.fmuladd.f32(float %46, float %285, float %279)
  store float %286, ptr %40, align 4, !tbaa !94
  %287 = getelementptr inbounds float, ptr %281, i64 2
  %288 = load float, ptr %287, align 4, !tbaa !94
  %289 = call float @llvm.fmuladd.f32(float %46, float %288, float %280)
  store float %289, ptr %41, align 4, !tbaa !94
  %290 = fmul float %248, %2
  store float %290, ptr %9, align 4, !tbaa !94
  %291 = fmul float %250, %2
  store float %291, ptr %42, align 4, !tbaa !94
  %292 = fmul float %252, %2
  store float %292, ptr %43, align 4, !tbaa !94
  %293 = getelementptr inbounds %struct.MVert, ptr %153, i64 %246
  %294 = load float, ptr %293, align 4, !tbaa !94
  %295 = call float @llvm.fmuladd.f32(float %46, float %294, float %290)
  store float %295, ptr %9, align 4, !tbaa !94
  %296 = getelementptr inbounds float, ptr %293, i64 1
  %297 = load float, ptr %296, align 4, !tbaa !94
  %298 = call float @llvm.fmuladd.f32(float %46, float %297, float %291)
  store float %298, ptr %42, align 4, !tbaa !94
  %299 = getelementptr inbounds float, ptr %293, i64 2
  %300 = load float, ptr %299, align 4, !tbaa !94
  %301 = call float @llvm.fmuladd.f32(float %46, float %300, float %292)
  store float %301, ptr %43, align 4, !tbaa !94
  br i1 %255, label %319, label %302

302:                                              ; preds = %265
  %303 = load float, ptr %10, align 4, !tbaa !94
  %304 = fmul float %303, %2
  store float %304, ptr %10, align 4, !tbaa !94
  %305 = load float, ptr %47, align 4, !tbaa !94
  %306 = fmul float %305, %2
  store float %306, ptr %47, align 4, !tbaa !94
  %307 = load float, ptr %48, align 4, !tbaa !94
  %308 = fmul float %307, %2
  store float %308, ptr %48, align 4, !tbaa !94
  %309 = zext i32 %254 to i64
  %310 = getelementptr inbounds %struct.MVert, ptr %153, i64 %309
  %311 = load float, ptr %310, align 4, !tbaa !94
  %312 = call float @llvm.fmuladd.f32(float %46, float %311, float %304)
  store float %312, ptr %10, align 4, !tbaa !94
  %313 = getelementptr inbounds float, ptr %310, i64 1
  %314 = load float, ptr %313, align 4, !tbaa !94
  %315 = call float @llvm.fmuladd.f32(float %46, float %314, float %306)
  store float %315, ptr %47, align 4, !tbaa !94
  %316 = getelementptr inbounds float, ptr %310, i64 2
  %317 = load float, ptr %316, align 4, !tbaa !94
  %318 = call float @llvm.fmuladd.f32(float %46, float %317, float %308)
  store float %318, ptr %48, align 4, !tbaa !94
  br label %319

319:                                              ; preds = %302, %265, %264, %225
  %320 = load float, ptr %7, align 4, !tbaa !94
  %321 = load float, ptr %8, align 4, !tbaa !94
  %322 = fsub float %320, %321
  %323 = load float, ptr %49, align 4, !tbaa !94
  %324 = load float, ptr %50, align 4, !tbaa !94
  %325 = fsub float %323, %324
  %326 = load float, ptr %51, align 4, !tbaa !94
  %327 = load float, ptr %52, align 4, !tbaa !94
  %328 = fsub float %326, %327
  %329 = load float, ptr %9, align 4, !tbaa !94
  %330 = fsub float %329, %321
  %331 = load float, ptr %53, align 4, !tbaa !94
  %332 = fsub float %331, %324
  %333 = load float, ptr %54, align 4, !tbaa !94
  %334 = fsub float %333, %327
  %335 = fneg float %334
  %336 = fmul float %325, %335
  %337 = call float @llvm.fmuladd.f32(float %332, float %328, float %336)
  %338 = fneg float %330
  %339 = fmul float %328, %338
  %340 = call float @llvm.fmuladd.f32(float %334, float %322, float %339)
  %341 = fneg float %332
  %342 = fmul float %322, %341
  %343 = call float @llvm.fmuladd.f32(float %330, float %325, float %342)
  %344 = fmul float %340, %340
  %345 = call float @llvm.fmuladd.f32(float %337, float %337, float %344)
  %346 = call float @llvm.fmuladd.f32(float %343, float %343, float %345)
  %347 = fcmp ogt float %346, 0x38AA95A5C0000000
  br i1 %347, label %348, label %354

348:                                              ; preds = %319
  %349 = call float @sqrtf(float noundef %346) #13
  %350 = fdiv float 1.000000e+00, %349
  %351 = fmul float %337, %350
  %352 = fmul float %340, %350
  %353 = fmul float %343, %350
  br label %354

354:                                              ; preds = %348, %319
  %355 = phi float [ %351, %348 ], [ 0.000000e+00, %319 ]
  %356 = phi float [ %352, %348 ], [ 0.000000e+00, %319 ]
  %357 = phi float [ %353, %348 ], [ 0.000000e+00, %319 ]
  %358 = call zeroext i8 @isect_line_tri_v3(ptr noundef nonnull %98, ptr noundef nonnull %102, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %13, ptr noundef null) #13
  %359 = icmp eq i8 %358, 0
  br i1 %359, label %389, label %360

360:                                              ; preds = %354
  %361 = load float, ptr %98, align 4, !tbaa !94
  %362 = load float, ptr %8, align 4, !tbaa !94
  %363 = fsub float %361, %362
  %364 = load float, ptr %108, align 4, !tbaa !94
  %365 = load float, ptr %50, align 4, !tbaa !94
  %366 = fsub float %364, %365
  %367 = load float, ptr %113, align 4, !tbaa !94
  %368 = load float, ptr %52, align 4, !tbaa !94
  %369 = fsub float %367, %368
  %370 = load float, ptr %102, align 4, !tbaa !94
  %371 = fsub float %370, %362
  %372 = load float, ptr %106, align 4, !tbaa !94
  %373 = fsub float %372, %365
  %374 = load float, ptr %111, align 4, !tbaa !94
  %375 = fsub float %374, %368
  %376 = fmul float %356, %366
  %377 = call float @llvm.fmuladd.f32(float %363, float %355, float %376)
  %378 = call float @llvm.fmuladd.f32(float %369, float %357, float %377)
  %379 = fmul float %356, %373
  %380 = call float @llvm.fmuladd.f32(float %371, float %355, float %379)
  %381 = call float @llvm.fmuladd.f32(float %375, float %357, float %380)
  %382 = fcmp olt float %378, %381
  %383 = select i1 %382, float %378, float %381
  %384 = fneg float %383
  %385 = fdiv float %384, %119
  %386 = call float @llvm.fmuladd.f32(float %385, float %355, float %480)
  %387 = call float @llvm.fmuladd.f32(float %385, float %356, float %481)
  %388 = call float @llvm.fmuladd.f32(float %385, float %357, float %482)
  br label %389

389:                                              ; preds = %360, %354
  %390 = phi float [ %482, %354 ], [ %388, %360 ]
  %391 = phi float [ %481, %354 ], [ %387, %360 ]
  %392 = phi float [ %480, %354 ], [ %386, %360 ]
  %393 = phi i32 [ %477, %354 ], [ 2, %360 ]
  %394 = getelementptr inbounds %struct.MFace, ptr %196, i64 0, i32 3
  %395 = load i32, ptr %394, align 4, !tbaa !152
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %467, label %397

397:                                              ; preds = %389
  %398 = load float, ptr %9, align 4, !tbaa !94
  %399 = load float, ptr %10, align 4, !tbaa !94
  %400 = fsub float %398, %399
  %401 = load float, ptr %53, align 4, !tbaa !94
  %402 = load float, ptr %55, align 4, !tbaa !94
  %403 = fsub float %401, %402
  %404 = load float, ptr %54, align 4, !tbaa !94
  %405 = load float, ptr %56, align 4, !tbaa !94
  %406 = fsub float %404, %405
  %407 = load float, ptr %7, align 4, !tbaa !94
  %408 = fsub float %407, %399
  %409 = load float, ptr %49, align 4, !tbaa !94
  %410 = fsub float %409, %402
  %411 = load float, ptr %51, align 4, !tbaa !94
  %412 = fsub float %411, %405
  %413 = fneg float %412
  %414 = fmul float %403, %413
  %415 = call float @llvm.fmuladd.f32(float %410, float %406, float %414)
  %416 = fneg float %408
  %417 = fmul float %406, %416
  %418 = call float @llvm.fmuladd.f32(float %412, float %400, float %417)
  %419 = fneg float %410
  %420 = fmul float %400, %419
  %421 = call float @llvm.fmuladd.f32(float %408, float %403, float %420)
  %422 = fmul float %418, %418
  %423 = call float @llvm.fmuladd.f32(float %415, float %415, float %422)
  %424 = call float @llvm.fmuladd.f32(float %421, float %421, float %423)
  %425 = fcmp ogt float %424, 0x38AA95A5C0000000
  br i1 %425, label %426, label %432

426:                                              ; preds = %397
  %427 = call float @sqrtf(float noundef %424) #13
  %428 = fdiv float 1.000000e+00, %427
  %429 = fmul float %415, %428
  %430 = fmul float %418, %428
  %431 = fmul float %421, %428
  br label %432

432:                                              ; preds = %426, %397
  %433 = phi float [ %429, %426 ], [ 0.000000e+00, %397 ]
  %434 = phi float [ %430, %426 ], [ 0.000000e+00, %397 ]
  %435 = phi float [ %431, %426 ], [ 0.000000e+00, %397 ]
  %436 = call zeroext i8 @isect_line_tri_v3(ptr noundef nonnull %98, ptr noundef nonnull %102, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %13, ptr noundef null) #13
  %437 = icmp eq i8 %436, 0
  br i1 %437, label %467, label %438

438:                                              ; preds = %432
  %439 = load float, ptr %98, align 4, !tbaa !94
  %440 = load float, ptr %10, align 4, !tbaa !94
  %441 = fsub float %439, %440
  %442 = load float, ptr %108, align 4, !tbaa !94
  %443 = load float, ptr %55, align 4, !tbaa !94
  %444 = fsub float %442, %443
  %445 = load float, ptr %113, align 4, !tbaa !94
  %446 = load float, ptr %56, align 4, !tbaa !94
  %447 = fsub float %445, %446
  %448 = load float, ptr %102, align 4, !tbaa !94
  %449 = fsub float %448, %440
  %450 = load float, ptr %106, align 4, !tbaa !94
  %451 = fsub float %450, %443
  %452 = load float, ptr %111, align 4, !tbaa !94
  %453 = fsub float %452, %446
  %454 = fmul float %434, %444
  %455 = call float @llvm.fmuladd.f32(float %441, float %433, float %454)
  %456 = call float @llvm.fmuladd.f32(float %447, float %435, float %455)
  %457 = fmul float %434, %451
  %458 = call float @llvm.fmuladd.f32(float %449, float %433, float %457)
  %459 = call float @llvm.fmuladd.f32(float %453, float %435, float %458)
  %460 = fcmp olt float %456, %459
  %461 = select i1 %460, float %456, float %459
  %462 = fneg float %461
  %463 = fdiv float %462, %119
  %464 = call float @llvm.fmuladd.f32(float %463, float %433, float %392)
  %465 = call float @llvm.fmuladd.f32(float %463, float %434, float %391)
  %466 = call float @llvm.fmuladd.f32(float %463, float %435, float %390)
  br label %467

467:                                              ; preds = %438, %432, %389
  %468 = phi float [ %390, %389 ], [ %390, %432 ], [ %466, %438 ]
  %469 = phi float [ %391, %389 ], [ %391, %432 ], [ %465, %438 ]
  %470 = phi float [ %392, %389 ], [ %392, %432 ], [ %464, %438 ]
  %471 = phi i32 [ %393, %389 ], [ %393, %432 ], [ 2, %438 ]
  %472 = getelementptr inbounds %struct.MFace, ptr %196, i64 1
  %473 = getelementptr inbounds %struct.ccdf_minmax, ptr %197, i64 1
  %474 = icmp eq i32 %198, 0
  br i1 %474, label %490, label %475, !llvm.loop !309

475:                                              ; preds = %189, %467
  %476 = phi i32 [ %157, %189 ], [ %198, %467 ]
  %477 = phi i32 [ %130, %189 ], [ %471, %467 ]
  %478 = phi ptr [ %149, %189 ], [ %472, %467 ]
  %479 = phi ptr [ %155, %189 ], [ %473, %467 ]
  %480 = phi float [ %131, %189 ], [ %470, %467 ]
  %481 = phi float [ %132, %189 ], [ %469, %467 ]
  %482 = phi float [ %133, %189 ], [ %468, %467 ]
  %483 = load float, ptr %12, align 4, !tbaa !94
  %484 = load float, ptr %11, align 4
  %485 = load float, ptr %34, align 4
  %486 = load float, ptr %36, align 4
  %487 = load float, ptr %35, align 4
  %488 = load float, ptr %37, align 4
  br label %194

489:                                              ; preds = %147, %162, %167, %172, %177, %182, %192
  call void @BLI_ghashIterator_step(ptr noundef %124) #13
  br label %490

490:                                              ; preds = %467, %221, %489, %187
  %491 = phi float [ %133, %187 ], [ %133, %489 ], [ %482, %221 ], [ %468, %467 ]
  %492 = phi float [ %132, %187 ], [ %132, %489 ], [ %481, %221 ], [ %469, %467 ]
  %493 = phi float [ %131, %187 ], [ %131, %489 ], [ %480, %221 ], [ %470, %467 ]
  %494 = phi i1 [ true, %187 ], [ false, %489 ], [ true, %221 ], [ true, %467 ]
  %495 = phi i32 [ %130, %187 ], [ %130, %489 ], [ %477, %221 ], [ %471, %467 ]
  br i1 %494, label %496, label %501

496:                                              ; preds = %490, %141, %128
  %497 = phi float [ %133, %128 ], [ %133, %141 ], [ %491, %490 ]
  %498 = phi float [ %132, %128 ], [ %132, %141 ], [ %492, %490 ]
  %499 = phi float [ %131, %128 ], [ %131, %141 ], [ %493, %490 ]
  %500 = phi i32 [ %130, %128 ], [ %130, %141 ], [ %495, %490 ]
  call void @BLI_ghashIterator_step(ptr noundef %124) #13
  br label %501

501:                                              ; preds = %496, %490
  %502 = phi float [ %497, %496 ], [ %491, %490 ]
  %503 = phi float [ %498, %496 ], [ %492, %490 ]
  %504 = phi float [ %499, %496 ], [ %493, %490 ]
  %505 = phi i32 [ %500, %496 ], [ %495, %490 ]
  %506 = load ptr, ptr %125, align 8, !tbaa !296
  %507 = icmp eq ptr %506, null
  br i1 %507, label %508, label %128

508:                                              ; preds = %501, %94
  %509 = phi float [ 0.000000e+00, %94 ], [ %502, %501 ]
  %510 = phi float [ 0.000000e+00, %94 ], [ %503, %501 ]
  %511 = phi float [ 0.000000e+00, %94 ], [ %504, %501 ]
  %512 = phi i32 [ 0, %94 ], [ %505, %501 ]
  call void @BLI_ghashIterator_free(ptr noundef %124) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #13
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %529, label %514

514:                                              ; preds = %508
  %515 = load float, ptr %81, align 4, !tbaa !94
  %516 = fadd float %511, %515
  store float %516, ptr %81, align 4, !tbaa !94
  %517 = getelementptr inbounds float, ptr %81, i64 1
  %518 = load float, ptr %517, align 4, !tbaa !94
  %519 = fadd float %510, %518
  store float %519, ptr %517, align 4, !tbaa !94
  %520 = getelementptr inbounds float, ptr %81, i64 2
  %521 = load float, ptr %520, align 4, !tbaa !94
  %522 = fadd float %509, %521
  store float %522, ptr %520, align 4, !tbaa !94
  %523 = load i16, ptr %84, align 4, !tbaa !289
  %524 = or i16 %523, 1
  store i16 %524, ptr %84, align 4, !tbaa !289
  %525 = load i16, ptr %57, align 8, !tbaa !87
  %526 = sitofp i16 %525 to float
  %527 = fmul float %526, 0x3F847AE140000000
  %528 = getelementptr inbounds %struct.BodySpring, ptr %79, i64 %78, i32 3
  store float %527, ptr %528, align 4, !tbaa !290
  br label %529

529:                                              ; preds = %508, %514, %90
  %530 = load i16, ptr %58, align 2, !tbaa !261
  %531 = icmp eq i16 %530, 0
  br i1 %531, label %713, label %532

532:                                              ; preds = %529
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #13
  br i1 %59, label %562, label %533

533:                                              ; preds = %532
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %18) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %19, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #13
  %534 = load ptr, ptr %60, align 8, !tbaa !101
  %535 = load i32, ptr %80, align 4, !tbaa !144
  %536 = sext i32 %535 to i64
  %537 = getelementptr inbounds %struct.BodyPoint, ptr %534, i64 %536, i32 3
  %538 = getelementptr inbounds %struct.BodySpring, ptr %79, i64 %78, i32 1
  %539 = load i32, ptr %538, align 4, !tbaa !147
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds %struct.BodyPoint, ptr %534, i64 %540, i32 3
  call void @mid_v3_v3v3(ptr noundef nonnull %20, ptr noundef nonnull %537, ptr noundef nonnull %541) #13
  %542 = load ptr, ptr %60, align 8, !tbaa !101
  %543 = load i32, ptr %80, align 4, !tbaa !144
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds %struct.BodyPoint, ptr %542, i64 %544, i32 4
  %546 = load i32, ptr %538, align 4, !tbaa !147
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds %struct.BodyPoint, ptr %542, i64 %547, i32 4
  call void @mid_v3_v3v3(ptr noundef nonnull %14, ptr noundef nonnull %545, ptr noundef nonnull %548) #13
  call void @pd_point_from_soft(ptr noundef %0, ptr noundef nonnull %20, ptr noundef nonnull %14, i32 noundef -1, ptr noundef nonnull %18) #13
  %549 = load ptr, ptr %61, align 8, !tbaa !99
  call void @pdDoEffectors(ptr noundef nonnull %5, ptr noundef null, ptr noundef %549, ptr noundef nonnull %18, ptr noundef nonnull %17, ptr noundef nonnull %19) #13
  %550 = load float, ptr %19, align 4, !tbaa !94
  %551 = fmul float %550, 2.500000e-01
  store float %551, ptr %19, align 4, !tbaa !94
  %552 = load float, ptr %62, align 4, !tbaa !94
  %553 = fmul float %552, 2.500000e-01
  store float %553, ptr %62, align 4, !tbaa !94
  %554 = load float, ptr %63, align 4, !tbaa !94
  %555 = fmul float %554, 2.500000e-01
  store float %555, ptr %63, align 4, !tbaa !94
  %556 = load float, ptr %14, align 4, !tbaa !94
  %557 = fadd float %551, %556
  store float %557, ptr %14, align 4, !tbaa !94
  %558 = load float, ptr %64, align 4, !tbaa !94
  %559 = fadd float %553, %558
  store float %559, ptr %64, align 4, !tbaa !94
  %560 = load float, ptr %65, align 4, !tbaa !94
  %561 = fadd float %555, %560
  store float %561, ptr %65, align 4, !tbaa !94
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %18) #13
  br label %584

562:                                              ; preds = %532
  %563 = load ptr, ptr %66, align 8, !tbaa !101
  %564 = load i32, ptr %80, align 4, !tbaa !144
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds %struct.BodyPoint, ptr %563, i64 %565, i32 4
  %567 = getelementptr inbounds %struct.BodySpring, ptr %79, i64 %78, i32 1
  %568 = load i32, ptr %567, align 4, !tbaa !147
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds %struct.BodyPoint, ptr %563, i64 %569, i32 4
  %571 = load float, ptr %566, align 4, !tbaa !94
  %572 = load float, ptr %570, align 4, !tbaa !94
  %573 = fadd float %571, %572
  store float %573, ptr %14, align 4, !tbaa !94
  %574 = getelementptr inbounds float, ptr %566, i64 1
  %575 = load float, ptr %574, align 4, !tbaa !94
  %576 = getelementptr inbounds float, ptr %570, i64 1
  %577 = load float, ptr %576, align 4, !tbaa !94
  %578 = fadd float %575, %577
  store float %578, ptr %67, align 4, !tbaa !94
  %579 = getelementptr inbounds float, ptr %566, i64 2
  %580 = load float, ptr %579, align 4, !tbaa !94
  %581 = getelementptr inbounds float, ptr %570, i64 2
  %582 = load float, ptr %581, align 4, !tbaa !94
  %583 = fadd float %580, %582
  store float %583, ptr %68, align 4, !tbaa !94
  br label %584

584:                                              ; preds = %562, %533
  %585 = load float, ptr %14, align 4, !tbaa !94
  %586 = load float, ptr %69, align 4, !tbaa !94
  %587 = fmul float %586, %586
  %588 = call float @llvm.fmuladd.f32(float %585, float %585, float %587)
  %589 = load float, ptr %70, align 4, !tbaa !94
  %590 = call float @llvm.fmuladd.f32(float %589, float %589, float %588)
  %591 = fcmp ogt float %590, 0x38AA95A5C0000000
  br i1 %591, label %592, label %601

592:                                              ; preds = %584
  %593 = call float @sqrtf(float noundef %590) #13
  %594 = fdiv float 1.000000e+00, %593
  %595 = load float, ptr %14, align 4, !tbaa !94
  %596 = fmul float %595, %594
  store float %596, ptr %14, align 4, !tbaa !94
  %597 = load float, ptr %69, align 4, !tbaa !94
  %598 = fmul float %594, %597
  store float %598, ptr %69, align 4, !tbaa !94
  %599 = load float, ptr %70, align 4, !tbaa !94
  %600 = fmul float %594, %599
  br label %602

601:                                              ; preds = %584
  store float 0.000000e+00, ptr %14, align 4, !tbaa !94
  store float 0.000000e+00, ptr %69, align 4, !tbaa !94
  br label %602

602:                                              ; preds = %592, %601
  %603 = phi float [ 0.000000e+00, %601 ], [ %600, %592 ]
  %604 = phi float [ 0.000000e+00, %601 ], [ %593, %592 ]
  store float %603, ptr %70, align 4, !tbaa !94
  %605 = fmul float %604, 0xBF1A36E2E0000000
  %606 = fmul float %604, %605
  %607 = load i16, ptr %58, align 2, !tbaa !261
  %608 = sitofp i16 %607 to float
  %609 = fmul float %606, %608
  %610 = load ptr, ptr %71, align 8, !tbaa !101
  %611 = load i32, ptr %80, align 4, !tbaa !144
  %612 = sext i32 %611 to i64
  %613 = getelementptr inbounds %struct.BodyPoint, ptr %610, i64 %612, i32 3
  %614 = getelementptr inbounds %struct.BodySpring, ptr %79, i64 %78, i32 1
  %615 = load i32, ptr %614, align 4, !tbaa !147
  %616 = sext i32 %615 to i64
  %617 = getelementptr inbounds %struct.BodyPoint, ptr %610, i64 %616, i32 3
  %618 = load float, ptr %613, align 4, !tbaa !94
  %619 = load float, ptr %617, align 4, !tbaa !94
  %620 = fsub float %618, %619
  store float %620, ptr %15, align 4, !tbaa !94
  %621 = getelementptr inbounds float, ptr %613, i64 1
  %622 = load float, ptr %621, align 4, !tbaa !94
  %623 = getelementptr inbounds float, ptr %617, i64 1
  %624 = load float, ptr %623, align 4, !tbaa !94
  %625 = fsub float %622, %624
  store float %625, ptr %72, align 4, !tbaa !94
  %626 = getelementptr inbounds float, ptr %613, i64 2
  %627 = load float, ptr %626, align 4, !tbaa !94
  %628 = getelementptr inbounds float, ptr %617, i64 2
  %629 = load float, ptr %628, align 4, !tbaa !94
  %630 = fsub float %627, %629
  store float %630, ptr %73, align 4, !tbaa !94
  call void @project_v3_v3v3(ptr noundef nonnull %16, ptr noundef nonnull %14, ptr noundef nonnull %15) #13
  %631 = load float, ptr %16, align 4, !tbaa !94
  %632 = load float, ptr %14, align 4, !tbaa !94
  %633 = fsub float %632, %631
  store float %633, ptr %14, align 4, !tbaa !94
  %634 = load float, ptr %74, align 4, !tbaa !94
  %635 = load float, ptr %69, align 4, !tbaa !94
  %636 = fsub float %635, %634
  store float %636, ptr %69, align 4, !tbaa !94
  %637 = load float, ptr %75, align 4, !tbaa !94
  %638 = load float, ptr %70, align 4, !tbaa !94
  %639 = fsub float %638, %637
  store float %639, ptr %70, align 4, !tbaa !94
  %640 = fmul float %636, %636
  %641 = call float @llvm.fmuladd.f32(float %633, float %633, float %640)
  %642 = call float @llvm.fmuladd.f32(float %639, float %639, float %641)
  %643 = fcmp ogt float %642, 0x38AA95A5C0000000
  br i1 %643, label %644, label %653

644:                                              ; preds = %602
  %645 = call float @sqrtf(float noundef %642) #13
  %646 = fdiv float 1.000000e+00, %645
  %647 = load float, ptr %14, align 4, !tbaa !94
  %648 = fmul float %647, %646
  store float %648, ptr %14, align 4, !tbaa !94
  %649 = load float, ptr %69, align 4, !tbaa !94
  %650 = fmul float %646, %649
  store float %650, ptr %69, align 4, !tbaa !94
  %651 = load float, ptr %70, align 4, !tbaa !94
  %652 = fmul float %646, %651
  br label %654

653:                                              ; preds = %602
  store float 0.000000e+00, ptr %14, align 4, !tbaa !94
  store float 0.000000e+00, ptr %69, align 4, !tbaa !94
  br label %654

654:                                              ; preds = %644, %653
  %655 = phi float [ 0.000000e+00, %653 ], [ %652, %644 ]
  store float %655, ptr %70, align 4, !tbaa !94
  %656 = load i16, ptr %32, align 2, !tbaa !119
  %657 = and i16 %656, 16384
  %658 = icmp eq i16 %657, 0
  br i1 %658, label %700, label %659

659:                                              ; preds = %654
  %660 = load float, ptr %15, align 4, !tbaa !94
  %661 = load float, ptr %72, align 4, !tbaa !94
  %662 = fmul float %661, %661
  %663 = call float @llvm.fmuladd.f32(float %660, float %660, float %662)
  %664 = load float, ptr %73, align 4, !tbaa !94
  %665 = call float @llvm.fmuladd.f32(float %664, float %664, float %663)
  %666 = fcmp ogt float %665, 0x38AA95A5C0000000
  br i1 %666, label %667, label %676

667:                                              ; preds = %659
  %668 = call float @sqrtf(float noundef %665) #13
  %669 = fdiv float 1.000000e+00, %668
  %670 = load float, ptr %15, align 4, !tbaa !94
  %671 = fmul float %670, %669
  store float %671, ptr %15, align 4, !tbaa !94
  %672 = load float, ptr %72, align 4, !tbaa !94
  %673 = fmul float %669, %672
  store float %673, ptr %72, align 4, !tbaa !94
  %674 = load float, ptr %73, align 4, !tbaa !94
  %675 = fmul float %669, %674
  br label %677

676:                                              ; preds = %659
  store float 0.000000e+00, ptr %15, align 4, !tbaa !94
  store float 0.000000e+00, ptr %72, align 4, !tbaa !94
  br label %677

677:                                              ; preds = %667, %676
  %678 = phi float [ 0.000000e+00, %676 ], [ %675, %667 ]
  store float %678, ptr %73, align 4, !tbaa !94
  %679 = load float, ptr %14, align 4, !tbaa !94
  %680 = load float, ptr %15, align 4, !tbaa !94
  %681 = load float, ptr %69, align 4, !tbaa !94
  %682 = load float, ptr %72, align 4, !tbaa !94
  %683 = fmul float %681, %682
  %684 = call float @llvm.fmuladd.f32(float %679, float %680, float %683)
  %685 = load float, ptr %70, align 4, !tbaa !94
  %686 = call float @llvm.fmuladd.f32(float %685, float %678, float %684)
  %687 = call float @llvm.fabs.f32(float %686)
  %688 = fsub float 1.000000e+00, %687
  %689 = fmul float %609, %688
  %690 = load float, ptr %81, align 4, !tbaa !94
  %691 = call float @llvm.fmuladd.f32(float %689, float %679, float %690)
  store float %691, ptr %81, align 4, !tbaa !94
  %692 = load float, ptr %69, align 4, !tbaa !94
  %693 = getelementptr inbounds float, ptr %81, i64 1
  %694 = load float, ptr %693, align 4, !tbaa !94
  %695 = call float @llvm.fmuladd.f32(float %689, float %692, float %694)
  store float %695, ptr %693, align 4, !tbaa !94
  %696 = load float, ptr %70, align 4, !tbaa !94
  %697 = getelementptr inbounds float, ptr %81, i64 2
  %698 = load float, ptr %697, align 4, !tbaa !94
  %699 = call float @llvm.fmuladd.f32(float %689, float %696, float %698)
  store float %699, ptr %697, align 4, !tbaa !94
  br label %712

700:                                              ; preds = %654
  %701 = load float, ptr %14, align 4, !tbaa !94
  %702 = load float, ptr %81, align 4, !tbaa !94
  %703 = call float @llvm.fmuladd.f32(float %609, float %701, float %702)
  store float %703, ptr %81, align 4, !tbaa !94
  %704 = load float, ptr %69, align 4, !tbaa !94
  %705 = getelementptr inbounds float, ptr %81, i64 1
  %706 = load float, ptr %705, align 4, !tbaa !94
  %707 = call float @llvm.fmuladd.f32(float %609, float %704, float %706)
  store float %707, ptr %705, align 4, !tbaa !94
  %708 = load float, ptr %70, align 4, !tbaa !94
  %709 = getelementptr inbounds float, ptr %81, i64 2
  %710 = load float, ptr %709, align 4, !tbaa !94
  %711 = call float @llvm.fmuladd.f32(float %609, float %708, float %710)
  store float %711, ptr %709, align 4, !tbaa !94
  br label %712

712:                                              ; preds = %700, %677
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #13
  br label %713

713:                                              ; preds = %529, %712, %77
  %714 = add nsw i64 %78, 1
  %715 = trunc i64 %714 to i32
  %716 = icmp eq i32 %715, %4
  br i1 %716, label %717, label %77, !llvm.loop !310

717:                                              ; preds = %713, %24, %6
  ret void
}

declare void @project_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @minmax_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_ghashIterator_new(ptr noundef) local_unnamed_addr #2

declare void @BLI_ghashIterator_step(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @isect_line_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_ghashIterator_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @exec_softbody_calc_forces(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [3 x float], align 4
  %3 = alloca %struct.EffectedPoint, align 8
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = load ptr, ptr %0, align 8, !tbaa !263
  %12 = getelementptr inbounds %struct.SB_thread_context, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !265
  %14 = getelementptr inbounds %struct.SB_thread_context, ptr %0, i64 0, i32 2
  %15 = load float, ptr %14, align 8, !tbaa !266
  %16 = getelementptr inbounds %struct.SB_thread_context, ptr %0, i64 0, i32 3
  %17 = load float, ptr %16, align 4, !tbaa !267
  %18 = getelementptr inbounds %struct.SB_thread_context, ptr %0, i64 0, i32 4
  %19 = load i32, ptr %18, align 8, !tbaa !269
  %20 = getelementptr inbounds %struct.SB_thread_context, ptr %0, i64 0, i32 5
  %21 = load i32, ptr %20, align 4, !tbaa !268
  %22 = getelementptr inbounds %struct.SB_thread_context, ptr %0, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !270
  %24 = getelementptr inbounds %struct.SB_thread_context, ptr %0, i64 0, i32 7
  %25 = load i32, ptr %24, align 8, !tbaa !271
  %26 = getelementptr inbounds %struct.SB_thread_context, ptr %0, i64 0, i32 8
  %27 = load float, ptr %26, align 4, !tbaa !272
  %28 = getelementptr inbounds %struct.SB_thread_context, ptr %0, i64 0, i32 9
  %29 = load float, ptr %28, align 8, !tbaa !273
  %30 = sub nsw i32 %21, %19
  %31 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 111
  %32 = load ptr, ptr %31, align 8, !tbaa !112
  %33 = icmp eq ptr %32, null
  br i1 %33, label %64, label %34

34:                                               ; preds = %1
  %35 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 104
  %36 = load i16, ptr %35, align 2, !tbaa !119
  %37 = zext i16 %36 to i32
  %38 = and i32 %37, 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.SoftBody, ptr %32, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !108
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = and i32 %37, 512
  %46 = icmp ne i32 %45, 0
  br label %47

47:                                               ; preds = %44, %40, %34
  %48 = phi i1 [ false, %40 ], [ false, %34 ], [ %46, %44 ]
  %49 = icmp ne i32 %25, 0
  %50 = and i1 %49, %39
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = and i32 %37, 2048
  %53 = icmp ne i32 %52, 0
  br label %54

54:                                               ; preds = %47, %51
  %55 = phi i1 [ false, %47 ], [ %53, %51 ]
  %56 = getelementptr inbounds %struct.SoftBody, ptr %32, i64 0, i32 37
  %57 = load i16, ptr %56, align 2, !tbaa !261
  %58 = icmp ne i16 %57, 0
  %59 = and i16 %36, 4
  %60 = icmp ne i16 %59, 0
  %61 = and i1 %60, %58
  %62 = load i32, ptr %32, align 8, !tbaa !102
  %63 = icmp slt i32 %62, %19
  br i1 %63, label %66, label %68

64:                                               ; preds = %1
  %65 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.29)
  br label %659

66:                                               ; preds = %54
  %67 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23)
  br label %659

68:                                               ; preds = %54
  %69 = getelementptr inbounds %struct.SoftBody, ptr %32, i64 0, i32 2
  %70 = icmp sgt i32 %30, 0
  br i1 %70, label %71, label %659

71:                                               ; preds = %68
  %72 = load ptr, ptr %69, align 8, !tbaa !101
  %73 = sext i32 %19 to i64
  %74 = getelementptr inbounds %struct.BodyPoint, ptr %72, i64 %73
  %75 = getelementptr inbounds %struct.SoftBody, ptr %32, i64 0, i32 35
  %76 = getelementptr inbounds %struct.SoftBody, ptr %32, i64 0, i32 3
  %77 = getelementptr inbounds float, ptr %2, i64 1
  %78 = getelementptr inbounds float, ptr %2, i64 2
  %79 = icmp eq ptr %13, null
  %80 = getelementptr inbounds %struct.SoftBody, ptr %32, i64 0, i32 34
  %81 = icmp eq ptr %13, null
  %82 = getelementptr inbounds %struct.SoftBody, ptr %32, i64 0, i32 13
  %83 = getelementptr inbounds %struct.SoftBody, ptr %32, i64 0, i32 14
  %84 = fcmp ogt float %15, 0.000000e+00
  %85 = getelementptr inbounds %struct.Scene, ptr %11, i64 0, i32 40, i32 1
  %86 = getelementptr inbounds %struct.Scene, ptr %11, i64 0, i32 40
  %87 = getelementptr inbounds %struct.Scene, ptr %11, i64 0, i32 40, i32 0, i64 1
  %88 = getelementptr inbounds %struct.Scene, ptr %11, i64 0, i32 40, i32 0, i64 2
  %89 = getelementptr inbounds %struct.SoftBody, ptr %32, i64 0, i32 49
  %90 = icmp eq ptr %23, null
  %91 = getelementptr inbounds %struct.SoftBody, ptr %32, i64 0, i32 49
  %92 = fmul float %27, 0x3F847AE140000000
  %93 = getelementptr inbounds float, ptr %4, i64 1
  %94 = getelementptr inbounds float, ptr %4, i64 2
  %95 = getelementptr inbounds %struct.SoftBody, ptr %32, i64 0, i32 10
  %96 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %97 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %98 = getelementptr inbounds %struct.SoftBody, ptr %32, i64 0, i32 10
  %99 = getelementptr inbounds %struct.SoftBody, ptr %32, i64 0, i32 44
  %100 = getelementptr inbounds %struct.SoftBody, ptr %32, i64 0, i32 40
  %101 = getelementptr inbounds float, ptr %7, i64 1
  %102 = getelementptr inbounds float, ptr %7, i64 2
  %103 = getelementptr inbounds float, ptr %6, i64 1
  %104 = getelementptr inbounds float, ptr %6, i64 2
  %105 = getelementptr inbounds %struct.SoftBody, ptr %32, i64 0, i32 3
  %106 = select i1 %55, i1 true, i1 %61
  br label %107

107:                                              ; preds = %71, %655
  %108 = phi i32 [ %30, %71 ], [ %656, %655 ]
  %109 = phi ptr [ %74, %71 ], [ %657, %655 ]
  %110 = getelementptr inbounds %struct.BodyPoint, ptr %109, i64 0, i32 5
  %111 = getelementptr inbounds %struct.BodyPoint, ptr %109, i64 0, i32 5, i64 2
  store float 0.000000e+00, ptr %111, align 4, !tbaa !94
  %112 = getelementptr inbounds %struct.BodyPoint, ptr %109, i64 0, i32 5, i64 1
  store float 0.000000e+00, ptr %112, align 4, !tbaa !94
  store float 0.000000e+00, ptr %110, align 4, !tbaa !94
  br i1 %48, label %113, label %313

113:                                              ; preds = %107
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #13
  %114 = load float, ptr %75, align 4, !tbaa !83
  %115 = load i32, ptr %32, align 8, !tbaa !102
  %116 = add nsw i32 %108, %19
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %312, label %118

118:                                              ; preds = %113
  %119 = load ptr, ptr %69, align 8, !tbaa !101
  %120 = getelementptr inbounds %struct.BodyPoint, ptr %109, i64 0, i32 18
  %121 = getelementptr inbounds %struct.BodyPoint, ptr %109, i64 0, i32 3
  %122 = getelementptr inbounds %struct.BodyPoint, ptr %109, i64 0, i32 3, i64 1
  %123 = getelementptr inbounds %struct.BodyPoint, ptr %109, i64 0, i32 3, i64 2
  %124 = sub nsw i32 %21, %108
  %125 = fmul float %114, 2.000000e+00
  %126 = getelementptr inbounds %struct.BodyPoint, ptr %109, i64 0, i32 4
  %127 = getelementptr inbounds %struct.BodyPoint, ptr %109, i64 0, i32 4, i64 1
  %128 = getelementptr inbounds %struct.BodyPoint, ptr %109, i64 0, i32 4, i64 2
  %129 = icmp eq ptr %109, null
  %130 = getelementptr inbounds %struct.BodyPoint, ptr %109, i64 0, i32 20
  %131 = icmp eq ptr %109, null
  %132 = getelementptr inbounds %struct.BodyPoint, ptr %109, i64 0, i32 20
  br label %133

133:                                              ; preds = %118, %308
  %134 = phi ptr [ %119, %118 ], [ %310, %308 ]
  %135 = phi i32 [ %115, %118 ], [ %309, %308 ]
  %136 = getelementptr inbounds %struct.BodyPoint, ptr %134, i64 0, i32 18
  %137 = load float, ptr %136, align 4, !tbaa !250
  %138 = load float, ptr %120, align 4, !tbaa !250
  %139 = fadd float %137, %138
  %140 = getelementptr inbounds %struct.BodyPoint, ptr %134, i64 0, i32 3
  %141 = load float, ptr %121, align 4, !tbaa !94
  %142 = load float, ptr %140, align 4, !tbaa !94
  %143 = fsub float %141, %142
  %144 = load float, ptr %122, align 4, !tbaa !94
  %145 = getelementptr inbounds %struct.BodyPoint, ptr %134, i64 0, i32 3, i64 1
  %146 = load float, ptr %145, align 4, !tbaa !94
  %147 = fsub float %144, %146
  %148 = load float, ptr %123, align 4, !tbaa !94
  %149 = getelementptr inbounds %struct.BodyPoint, ptr %134, i64 0, i32 3, i64 2
  %150 = load float, ptr %149, align 4, !tbaa !94
  %151 = fsub float %148, %150
  %152 = fcmp olt float %143, 0.000000e+00
  %153 = fneg float %143
  %154 = select i1 %152, float %153, float %143
  %155 = fcmp ogt float %154, %139
  br i1 %155, label %308, label %156

156:                                              ; preds = %133
  %157 = fcmp olt float %147, 0.000000e+00
  %158 = fneg float %147
  %159 = select i1 %157, float %158, float %147
  %160 = fcmp ogt float %159, %139
  br i1 %160, label %308, label %161

161:                                              ; preds = %156
  %162 = fcmp olt float %151, 0.000000e+00
  %163 = fneg float %151
  %164 = select i1 %162, float %163, float %151
  %165 = fcmp ogt float %164, %139
  br i1 %165, label %308, label %166

166:                                              ; preds = %161
  %167 = fmul float %147, %147
  %168 = call float @llvm.fmuladd.f32(float %143, float %143, float %167)
  %169 = call float @llvm.fmuladd.f32(float %151, float %151, float %168)
  %170 = fcmp ogt float %169, 0x38AA95A5C0000000
  br i1 %170, label %171, label %177

171:                                              ; preds = %166
  %172 = call float @sqrtf(float noundef %169) #13
  %173 = fdiv float 1.000000e+00, %172
  %174 = fmul float %143, %173
  %175 = fmul float %147, %173
  %176 = fmul float %151, %173
  br label %177

177:                                              ; preds = %171, %166
  %178 = phi float [ %174, %171 ], [ 0.000000e+00, %166 ]
  %179 = phi float [ %175, %171 ], [ 0.000000e+00, %166 ]
  %180 = phi float [ %176, %171 ], [ 0.000000e+00, %166 ]
  %181 = phi float [ %172, %171 ], [ 0.000000e+00, %166 ]
  %182 = fcmp olt float %181, %139
  br i1 %182, label %183, label %308

183:                                              ; preds = %177
  %184 = getelementptr inbounds %struct.BodyPoint, ptr %134, i64 0, i32 13
  %185 = load i32, ptr %184, align 4, !tbaa !254
  %186 = icmp sgt i32 %185, 0
  br i1 %186, label %187, label %211

187:                                              ; preds = %183
  %188 = load ptr, ptr %76, align 8, !tbaa !108
  %189 = getelementptr inbounds %struct.BodyPoint, ptr %134, i64 0, i32 14
  %190 = load ptr, ptr %189, align 8, !tbaa !103
  %191 = getelementptr i32, ptr %190, i64 -1
  %192 = zext nneg i32 %185 to i64
  br label %193

193:                                              ; preds = %187, %207
  %194 = phi i64 [ %192, %187 ], [ %209, %207 ]
  %195 = phi i32 [ 0, %187 ], [ %208, %207 ]
  %196 = getelementptr i32, ptr %191, i64 %194
  %197 = load i32, ptr %196, align 4, !tbaa !118
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.BodySpring, ptr %188, i64 %198, i32 1
  %200 = load i32, ptr %199, align 4, !tbaa !147
  %201 = icmp eq i32 %124, %200
  br i1 %201, label %206, label %202

202:                                              ; preds = %193
  %203 = getelementptr inbounds %struct.BodySpring, ptr %188, i64 %198
  %204 = load i32, ptr %203, align 4, !tbaa !144
  %205 = icmp eq i32 %124, %204
  br i1 %205, label %206, label %207

206:                                              ; preds = %202, %193
  br label %207

207:                                              ; preds = %206, %202
  %208 = phi i32 [ 1, %206 ], [ %195, %202 ]
  %209 = add nsw i64 %194, -1
  %210 = icmp sgt i64 %194, 1
  br i1 %210, label %193, label %211, !llvm.loop !311

211:                                              ; preds = %207, %183
  %212 = phi i32 [ 0, %183 ], [ %208, %207 ]
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %308

214:                                              ; preds = %211
  %215 = fdiv float %114, %181
  %216 = fmul float %139, %139
  %217 = fdiv float %114, %216
  %218 = call float @llvm.fmuladd.f32(float %217, float %181, float %215)
  %219 = fdiv float %125, %139
  %220 = fsub float %218, %219
  %221 = getelementptr inbounds %struct.BodyPoint, ptr %134, i64 0, i32 4
  call void @mid_v3_v3v3(ptr noundef nonnull %2, ptr noundef nonnull %126, ptr noundef nonnull %221) #13
  %222 = load float, ptr %2, align 4, !tbaa !94
  %223 = load float, ptr %126, align 4, !tbaa !94
  %224 = fsub float %222, %223
  %225 = load float, ptr %77, align 4, !tbaa !94
  %226 = load float, ptr %127, align 4, !tbaa !94
  %227 = fsub float %225, %226
  %228 = load float, ptr %78, align 4, !tbaa !94
  %229 = load float, ptr %128, align 4, !tbaa !94
  %230 = fsub float %228, %229
  br i1 %79, label %242, label %231

231:                                              ; preds = %214
  %232 = load ptr, ptr %31, align 8, !tbaa !112
  %233 = icmp eq ptr %232, null
  %234 = or i1 %129, %233
  br i1 %234, label %240, label %235

235:                                              ; preds = %231
  %236 = load float, ptr %130, align 4, !tbaa !190
  %237 = getelementptr inbounds %struct.SoftBody, ptr %232, i64 0, i32 7
  %238 = load float, ptr %237, align 4, !tbaa !44
  %239 = fmul float %236, %238
  br label %240

240:                                              ; preds = %235, %231
  %241 = phi float [ %239, %235 ], [ undef, %231 ]
  br i1 %234, label %242, label %244

242:                                              ; preds = %240, %214
  %243 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %244

244:                                              ; preds = %242, %240
  %245 = phi float [ %241, %240 ], [ 1.000000e+00, %242 ]
  %246 = fmul float %224, %245
  %247 = fmul float %227, %245
  %248 = fmul float %230, %245
  %249 = load float, ptr %80, align 8, !tbaa !82
  %250 = fsub float 1.000000e+00, %249
  %251 = fmul float %220, %250
  %252 = load float, ptr %110, align 4, !tbaa !94
  %253 = call float @llvm.fmuladd.f32(float %251, float %178, float %252)
  store float %253, ptr %110, align 4, !tbaa !94
  %254 = load float, ptr %112, align 4, !tbaa !94
  %255 = call float @llvm.fmuladd.f32(float %251, float %179, float %254)
  store float %255, ptr %112, align 4, !tbaa !94
  %256 = load float, ptr %111, align 4, !tbaa !94
  %257 = call float @llvm.fmuladd.f32(float %251, float %180, float %256)
  store float %257, ptr %111, align 4, !tbaa !94
  %258 = load float, ptr %80, align 8, !tbaa !82
  %259 = call float @llvm.fmuladd.f32(float %258, float %246, float %253)
  store float %259, ptr %110, align 4, !tbaa !94
  %260 = call float @llvm.fmuladd.f32(float %258, float %247, float %255)
  store float %260, ptr %112, align 4, !tbaa !94
  %261 = call float @llvm.fmuladd.f32(float %258, float %248, float %257)
  store float %261, ptr %111, align 4, !tbaa !94
  %262 = load float, ptr %2, align 4, !tbaa !94
  %263 = load float, ptr %221, align 4, !tbaa !94
  %264 = fsub float %262, %263
  %265 = load float, ptr %77, align 4, !tbaa !94
  %266 = getelementptr inbounds %struct.BodyPoint, ptr %134, i64 0, i32 4, i64 1
  %267 = load float, ptr %266, align 4, !tbaa !94
  %268 = fsub float %265, %267
  %269 = load float, ptr %78, align 4, !tbaa !94
  %270 = getelementptr inbounds %struct.BodyPoint, ptr %134, i64 0, i32 4, i64 2
  %271 = load float, ptr %270, align 4, !tbaa !94
  %272 = fsub float %269, %271
  br i1 %79, label %284, label %273

273:                                              ; preds = %244
  %274 = load ptr, ptr %31, align 8, !tbaa !112
  %275 = icmp eq ptr %274, null
  %276 = or i1 %131, %275
  br i1 %276, label %282, label %277

277:                                              ; preds = %273
  %278 = load float, ptr %132, align 4, !tbaa !190
  %279 = getelementptr inbounds %struct.SoftBody, ptr %274, i64 0, i32 7
  %280 = load float, ptr %279, align 4, !tbaa !44
  %281 = fmul float %278, %280
  br label %282

282:                                              ; preds = %277, %273
  %283 = phi float [ %281, %277 ], [ undef, %273 ]
  br i1 %276, label %284, label %286

284:                                              ; preds = %282, %244
  %285 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %286

286:                                              ; preds = %284, %282
  %287 = phi float [ %283, %282 ], [ 1.000000e+00, %284 ]
  %288 = fmul float %264, %287
  %289 = fmul float %268, %287
  %290 = fmul float %272, %287
  %291 = getelementptr inbounds %struct.BodyPoint, ptr %134, i64 0, i32 5
  %292 = load float, ptr %80, align 8, !tbaa !82
  %293 = load float, ptr %291, align 4, !tbaa !94
  %294 = call float @llvm.fmuladd.f32(float %292, float %288, float %293)
  store float %294, ptr %291, align 4, !tbaa !94
  %295 = getelementptr inbounds %struct.BodyPoint, ptr %134, i64 0, i32 5, i64 1
  %296 = load float, ptr %295, align 4, !tbaa !94
  %297 = call float @llvm.fmuladd.f32(float %292, float %289, float %296)
  store float %297, ptr %295, align 4, !tbaa !94
  %298 = getelementptr inbounds %struct.BodyPoint, ptr %134, i64 0, i32 5, i64 2
  %299 = load float, ptr %298, align 4, !tbaa !94
  %300 = call float @llvm.fmuladd.f32(float %292, float %290, float %299)
  store float %300, ptr %298, align 4, !tbaa !94
  %301 = fneg float %220
  %302 = load float, ptr %80, align 8, !tbaa !82
  %303 = fsub float 1.000000e+00, %302
  %304 = fmul float %303, %301
  %305 = call float @llvm.fmuladd.f32(float %304, float %178, float %294)
  store float %305, ptr %291, align 4, !tbaa !94
  %306 = call float @llvm.fmuladd.f32(float %304, float %179, float %297)
  store float %306, ptr %295, align 4, !tbaa !94
  %307 = call float @llvm.fmuladd.f32(float %304, float %180, float %300)
  store float %307, ptr %298, align 4, !tbaa !94
  br label %308

308:                                              ; preds = %286, %211, %177, %161, %156, %133
  %309 = add nsw i32 %135, -1
  %310 = getelementptr inbounds %struct.BodyPoint, ptr %134, i64 1
  %311 = icmp sgt i32 %135, %116
  br i1 %311, label %133, label %312, !llvm.loop !312

312:                                              ; preds = %308, %113
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #13
  br label %313

313:                                              ; preds = %312, %107
  br i1 %81, label %342, label %314

314:                                              ; preds = %313
  %315 = load ptr, ptr %31, align 8, !tbaa !112
  %316 = load i16, ptr %35, align 2, !tbaa !119
  %317 = and i16 %316, 2
  %318 = icmp eq i16 %317, 0
  br i1 %318, label %338, label %319

319:                                              ; preds = %314
  %320 = icmp ne ptr %315, null
  %321 = icmp ne ptr %109, null
  %322 = and i1 %321, %320
  br i1 %322, label %323, label %338

323:                                              ; preds = %319
  %324 = getelementptr inbounds %struct.BodyPoint, ptr %109, i64 0, i32 6
  %325 = load float, ptr %324, align 8, !tbaa !138
  %326 = fcmp olt float %325, 0.000000e+00
  br i1 %326, label %338, label %327

327:                                              ; preds = %323
  %328 = getelementptr inbounds %struct.SoftBody, ptr %315, i64 0, i32 15
  %329 = load float, ptr %328, align 8, !tbaa !50
  %330 = getelementptr inbounds %struct.SoftBody, ptr %315, i64 0, i32 16
  %331 = load float, ptr %330, align 4, !tbaa !51
  %332 = fsub float %331, %329
  %333 = call float @llvm.fabs.f32(float %332)
  %334 = call float @llvm.fmuladd.f32(float %325, float %333, float %329)
  %335 = fpext float %334 to double
  %336 = call double @pow(double noundef %335, double noundef 4.000000e+00) #13
  %337 = fptrunc double %336 to float
  br label %338

338:                                              ; preds = %327, %323, %319, %314
  %339 = phi float [ %337, %327 ], [ 0xC09F3FF5C0000000, %314 ], [ 0xC09F3FF5C0000000, %323 ], [ 0xC09F3FF5C0000000, %319 ]
  %340 = phi float [ %337, %327 ], [ 0.000000e+00, %314 ], [ 0.000000e+00, %323 ], [ undef, %319 ]
  %341 = phi i1 [ false, %327 ], [ false, %314 ], [ false, %323 ], [ true, %319 ]
  br i1 %341, label %342, label %345

342:                                              ; preds = %338, %313
  %343 = phi float [ %339, %338 ], [ 0xC09F3FF5C0000000, %313 ]
  %344 = call i32 @puts(ptr nonnull dereferenceable(1) @str.25)
  br label %345

345:                                              ; preds = %338, %342
  %346 = phi float [ %343, %342 ], [ %340, %338 ]
  %347 = fcmp olt float %346, 0x3FEFF7CEE0000000
  br i1 %347, label %348, label %655

348:                                              ; preds = %345
  %349 = load i16, ptr %35, align 2, !tbaa !119
  %350 = and i16 %349, 2
  %351 = icmp eq i16 %350, 0
  br i1 %351, label %452, label %352

352:                                              ; preds = %348
  %353 = getelementptr inbounds %struct.BodyPoint, ptr %109, i64 0, i32 3
  %354 = getelementptr inbounds %struct.BodyPoint, ptr %109, i64 0, i32 2
  %355 = load float, ptr %353, align 4, !tbaa !94
  %356 = load float, ptr %354, align 4, !tbaa !94
  %357 = fsub float %355, %356
  %358 = getelementptr inbounds %struct.BodyPoint, ptr %109, i64 0, i32 3, i64 1
  %359 = load float, ptr %358, align 4, !tbaa !94
  %360 = getelementptr inbounds %struct.BodyPoint, ptr %109, i64 0, i32 2, i64 1
  %361 = load float, ptr %360, align 4, !tbaa !94
  %362 = fsub float %359, %361
  %363 = getelementptr inbounds %struct.BodyPoint, ptr %109, i64 0, i32 3, i64 2
  %364 = load float, ptr %363, align 4, !tbaa !94
  %365 = getelementptr inbounds %struct.BodyPoint, ptr %109, i64 0, i32 2, i64 2
  %366 = load float, ptr %365, align 4, !tbaa !94
  %367 = fsub float %364, %366
  br i1 %81, label %391, label %368

368:                                              ; preds = %352
  %369 = load ptr, ptr %31, align 8, !tbaa !112
  %370 = icmp eq ptr %369, null
  %371 = icmp eq ptr %109, null
  %372 = or i1 %371, %370
  br i1 %372, label %388, label %373

373:                                              ; preds = %368
  %374 = getelementptr inbounds %struct.BodyPoint, ptr %109, i64 0, i32 6
  %375 = load float, ptr %374, align 8, !tbaa !138
  %376 = fcmp olt float %375, 0.000000e+00
  br i1 %376, label %388, label %377

377:                                              ; preds = %373
  %378 = getelementptr inbounds %struct.SoftBody, ptr %369, i64 0, i32 15
  %379 = load float, ptr %378, align 8, !tbaa !50
  %380 = getelementptr inbounds %struct.SoftBody, ptr %369, i64 0, i32 16
  %381 = load float, ptr %380, align 4, !tbaa !51
  %382 = fsub float %381, %379
  %383 = call float @llvm.fabs.f32(float %382)
  %384 = call float @llvm.fmuladd.f32(float %375, float %383, float %379)
  %385 = fpext float %384 to double
  %386 = call double @pow(double noundef %385, double noundef 4.000000e+00) #13
  %387 = fptrunc double %386 to float
  br label %388

388:                                              ; preds = %377, %373, %368
  %389 = phi float [ %387, %377 ], [ 0xC09F3FF5C0000000, %373 ], [ 0xC09F3FF5C0000000, %368 ]
  %390 = phi float [ %387, %377 ], [ 0.000000e+00, %373 ], [ undef, %368 ]
  br i1 %372, label %391, label %394

391:                                              ; preds = %388, %352
  %392 = phi float [ %389, %388 ], [ 0xC09F3FF5C0000000, %352 ]
  %393 = call i32 @puts(ptr nonnull dereferenceable(1) @str.25)
  br label %394

394:                                              ; preds = %388, %391
  %395 = phi float [ %392, %391 ], [ %390, %388 ]
  %396 = load float, ptr %82, align 8, !tbaa !48
  %397 = fneg float %395
  %398 = call float @llvm.fmuladd.f32(float %397, float %396, float 1.000000e+00)
  %399 = fdiv float 1.000000e+00, %398
  %400 = fadd float %399, -1.000000e+00
  %401 = fneg float %400
  %402 = load float, ptr %110, align 4, !tbaa !94
  %403 = call float @llvm.fmuladd.f32(float %401, float %357, float %402)
  store float %403, ptr %110, align 4, !tbaa !94
  %404 = load float, ptr %112, align 4, !tbaa !94
  %405 = call float @llvm.fmuladd.f32(float %401, float %362, float %404)
  store float %405, ptr %112, align 4, !tbaa !94
  %406 = load float, ptr %111, align 4, !tbaa !94
  %407 = call float @llvm.fmuladd.f32(float %401, float %367, float %406)
  store float %407, ptr %111, align 4, !tbaa !94
  %408 = getelementptr inbounds %struct.BodyPoint, ptr %109, i64 0, i32 1
  %409 = load float, ptr %109, align 4, !tbaa !94
  %410 = load float, ptr %408, align 4, !tbaa !94
  %411 = fsub float %409, %410
  %412 = getelementptr inbounds float, ptr %109, i64 1
  %413 = load float, ptr %412, align 4, !tbaa !94
  %414 = getelementptr inbounds %struct.BodyPoint, ptr %109, i64 0, i32 1, i64 1
  %415 = load float, ptr %414, align 4, !tbaa !94
  %416 = fsub float %413, %415
  %417 = getelementptr inbounds float, ptr %109, i64 2
  %418 = load float, ptr %417, align 4, !tbaa !94
  %419 = getelementptr inbounds %struct.BodyPoint, ptr %109, i64 0, i32 1, i64 2
  %420 = load float, ptr %419, align 4, !tbaa !94
  %421 = fsub float %418, %420
  %422 = load float, ptr %83, align 4, !tbaa !49
  %423 = fmul float %422, 0x3F847AE140000000
  %424 = getelementptr inbounds %struct.BodyPoint, ptr %109, i64 0, i32 4
  %425 = load float, ptr %424, align 4, !tbaa !94
  br i1 %84, label %426, label %438

426:                                              ; preds = %394
  %427 = getelementptr inbounds %struct.BodyPoint, ptr %109, i64 0, i32 4, i64 2
  %428 = load float, ptr %427, align 4, !tbaa !94
  %429 = fadd float %421, %428
  %430 = getelementptr inbounds %struct.BodyPoint, ptr %109, i64 0, i32 4, i64 1
  %431 = load float, ptr %430, align 4, !tbaa !94
  %432 = fadd float %416, %431
  %433 = fadd float %411, %425
  %434 = fneg float %423
  %435 = call float @llvm.fmuladd.f32(float %434, float %433, float %403)
  store float %435, ptr %110, align 4, !tbaa !94
  %436 = call float @llvm.fmuladd.f32(float %434, float %432, float %405)
  store float %436, ptr %112, align 4, !tbaa !94
  %437 = call float @llvm.fmuladd.f32(float %434, float %429, float %407)
  br label %450

438:                                              ; preds = %394
  %439 = fsub float %411, %425
  %440 = fneg float %423
  %441 = call float @llvm.fmuladd.f32(float %440, float %439, float %403)
  store float %441, ptr %110, align 4, !tbaa !94
  %442 = getelementptr inbounds %struct.BodyPoint, ptr %109, i64 0, i32 4, i64 1
  %443 = load float, ptr %442, align 4, !tbaa !94
  %444 = fsub float %416, %443
  %445 = call float @llvm.fmuladd.f32(float %440, float %444, float %405)
  store float %445, ptr %112, align 4, !tbaa !94
  %446 = getelementptr inbounds %struct.BodyPoint, ptr %109, i64 0, i32 4, i64 2
  %447 = load float, ptr %446, align 8, !tbaa !94
  %448 = fsub float %421, %447
  %449 = call float @llvm.fmuladd.f32(float %440, float %448, float %407)
  br label %450

450:                                              ; preds = %438, %426
  %451 = phi float [ %449, %438 ], [ %437, %426 ]
  store float %451, ptr %111, align 4, !tbaa !94
  br label %452

452:                                              ; preds = %450, %348
  %453 = load i32, ptr %85, align 4, !tbaa !281
  %454 = and i32 %453, 1
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %491, label %456

456:                                              ; preds = %452
  %457 = load float, ptr %86, align 4, !tbaa !94
  %458 = load float, ptr %87, align 4, !tbaa !94
  %459 = load float, ptr %88, align 4, !tbaa !94
  br i1 %81, label %473, label %460

460:                                              ; preds = %456
  %461 = load ptr, ptr %31, align 8, !tbaa !112
  %462 = icmp eq ptr %461, null
  %463 = icmp eq ptr %109, null
  %464 = or i1 %463, %462
  br i1 %464, label %471, label %465

465:                                              ; preds = %460
  %466 = getelementptr inbounds %struct.BodyPoint, ptr %109, i64 0, i32 20
  %467 = load float, ptr %466, align 4, !tbaa !190
  %468 = getelementptr inbounds %struct.SoftBody, ptr %461, i64 0, i32 7
  %469 = load float, ptr %468, align 4, !tbaa !44
  %470 = fmul float %467, %469
  br label %471

471:                                              ; preds = %465, %460
  %472 = phi float [ %470, %465 ], [ undef, %460 ]
  br i1 %464, label %473, label %475

473:                                              ; preds = %471, %456
  %474 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %475

475:                                              ; preds = %473, %471
  %476 = phi float [ %472, %471 ], [ 1.000000e+00, %473 ]
  %477 = fmul float %476, 0x3F50624DE0000000
  %478 = load ptr, ptr %89, align 8, !tbaa !99
  %479 = getelementptr inbounds %struct.EffectorWeights, ptr %478, i64 0, i32 2
  %480 = load float, ptr %479, align 8, !tbaa !282
  %481 = fmul float %477, %480
  %482 = fmul float %457, %481
  %483 = fmul float %458, %481
  %484 = fmul float %459, %481
  %485 = load float, ptr %110, align 4, !tbaa !94
  %486 = fadd float %485, %482
  store float %486, ptr %110, align 4, !tbaa !94
  %487 = load float, ptr %112, align 4, !tbaa !94
  %488 = fadd float %483, %487
  store float %488, ptr %112, align 4, !tbaa !94
  %489 = load float, ptr %111, align 4, !tbaa !94
  %490 = fadd float %484, %489
  store float %490, ptr %111, align 4, !tbaa !94
  br label %491

491:                                              ; preds = %475, %452
  br i1 %90, label %536, label %492

492:                                              ; preds = %491
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i64 12, i1 false)
  %493 = getelementptr inbounds %struct.BodyPoint, ptr %109, i64 0, i32 3
  %494 = getelementptr inbounds %struct.BodyPoint, ptr %109, i64 0, i32 4
  %495 = load ptr, ptr %69, align 8, !tbaa !101
  %496 = ptrtoint ptr %495 to i64
  %497 = ptrtoint ptr %109 to i64
  %498 = sub i64 %496, %497
  %499 = sdiv exact i64 %498, 192
  %500 = trunc i64 %499 to i32
  call void @pd_point_from_soft(ptr noundef %11, ptr noundef nonnull %493, ptr noundef nonnull %494, i32 noundef %500, ptr noundef nonnull %3) #13
  %501 = load ptr, ptr %91, align 8, !tbaa !99
  call void @pdDoEffectors(ptr noundef nonnull %23, ptr noundef null, ptr noundef %501, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  %502 = load float, ptr %4, align 4, !tbaa !94
  %503 = fmul float %92, %502
  store float %503, ptr %4, align 4, !tbaa !94
  %504 = load float, ptr %93, align 4, !tbaa !94
  %505 = fmul float %92, %504
  store float %505, ptr %93, align 4, !tbaa !94
  %506 = load float, ptr %94, align 4, !tbaa !94
  %507 = fmul float %92, %506
  store float %507, ptr %94, align 4, !tbaa !94
  %508 = load float, ptr %110, align 4, !tbaa !94
  %509 = fadd float %503, %508
  store float %509, ptr %110, align 4, !tbaa !94
  %510 = load float, ptr %112, align 4, !tbaa !94
  %511 = fadd float %505, %510
  store float %511, ptr %112, align 4, !tbaa !94
  %512 = load float, ptr %111, align 4, !tbaa !94
  %513 = fadd float %507, %512
  store float %513, ptr %111, align 4, !tbaa !94
  %514 = load float, ptr %95, align 4, !tbaa !38
  %515 = load float, ptr %494, align 8, !tbaa !94
  %516 = load float, ptr %5, align 4, !tbaa !94
  %517 = fmul float %29, %516
  %518 = fdiv float %517, 0x3F847AE140000000
  %519 = fadd float %515, %518
  %520 = fmul float %514, 0xBF847AE140000000
  %521 = call float @llvm.fmuladd.f32(float %520, float %519, float %509)
  store float %521, ptr %110, align 4, !tbaa !94
  %522 = getelementptr inbounds %struct.BodyPoint, ptr %109, i64 0, i32 4, i64 1
  %523 = load float, ptr %522, align 4, !tbaa !94
  %524 = load float, ptr %96, align 4, !tbaa !94
  %525 = fmul float %29, %524
  %526 = fdiv float %525, 0x3F847AE140000000
  %527 = fadd float %523, %526
  %528 = call float @llvm.fmuladd.f32(float %520, float %527, float %511)
  store float %528, ptr %112, align 4, !tbaa !94
  %529 = getelementptr inbounds %struct.BodyPoint, ptr %109, i64 0, i32 4, i64 2
  %530 = load float, ptr %529, align 8, !tbaa !94
  %531 = load float, ptr %97, align 4, !tbaa !94
  %532 = fmul float %29, %531
  %533 = fdiv float %532, 0x3F847AE140000000
  %534 = fadd float %530, %533
  %535 = call float @llvm.fmuladd.f32(float %520, float %534, float %513)
  store float %535, ptr %111, align 4, !tbaa !94
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #13
  br label %554

536:                                              ; preds = %491
  %537 = load float, ptr %98, align 4, !tbaa !38
  %538 = fmul float %537, 0x3F847AE140000000
  %539 = getelementptr inbounds %struct.BodyPoint, ptr %109, i64 0, i32 4
  %540 = load float, ptr %539, align 8, !tbaa !94
  %541 = load float, ptr %110, align 4, !tbaa !94
  %542 = fneg float %540
  %543 = call float @llvm.fmuladd.f32(float %542, float %538, float %541)
  store float %543, ptr %110, align 4, !tbaa !94
  %544 = getelementptr inbounds %struct.BodyPoint, ptr %109, i64 0, i32 4, i64 1
  %545 = load float, ptr %544, align 4, !tbaa !94
  %546 = load float, ptr %112, align 4, !tbaa !94
  %547 = fneg float %545
  %548 = call float @llvm.fmuladd.f32(float %547, float %538, float %546)
  store float %548, ptr %112, align 4, !tbaa !94
  %549 = getelementptr inbounds %struct.BodyPoint, ptr %109, i64 0, i32 4, i64 2
  %550 = load float, ptr %549, align 8, !tbaa !94
  %551 = load float, ptr %111, align 4, !tbaa !94
  %552 = fneg float %550
  %553 = call float @llvm.fmuladd.f32(float %552, float %538, float %551)
  store float %553, ptr %111, align 4, !tbaa !94
  br label %554

554:                                              ; preds = %536, %492
  %555 = getelementptr inbounds %struct.BodyPoint, ptr %109, i64 0, i32 15
  store float 0.000000e+00, ptr %555, align 8, !tbaa !286
  %556 = getelementptr inbounds %struct.BodyPoint, ptr %109, i64 0, i32 16
  store float 0.000000e+00, ptr %556, align 4, !tbaa !287
  %557 = getelementptr inbounds %struct.BodyPoint, ptr %109, i64 0, i32 19
  %558 = load i16, ptr %557, align 8, !tbaa !179
  %559 = and i16 %558, -2
  store i16 %559, ptr %557, align 8, !tbaa !179
  %560 = and i16 %558, 2
  %561 = icmp eq i16 %560, 0
  %562 = select i1 %49, i1 %561, i1 false
  br i1 %562, label %563, label %608

563:                                              ; preds = %554
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #13
  store float 1.000000e+00, ptr %9, align 4, !tbaa !94
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #13
  %564 = getelementptr inbounds %struct.BodyPoint, ptr %109, i64 0, i32 3
  %565 = call fastcc i32 @sb_deflect_face(ptr noundef %13, ptr noundef nonnull %564, ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %9, float noundef %17, ptr noundef nonnull %7, ptr noundef nonnull %10), !range !288
  %566 = icmp eq i32 %565, 0
  br i1 %566, label %607, label %567

567:                                              ; preds = %563
  %568 = load float, ptr %10, align 4, !tbaa !94
  %569 = fcmp olt float %568, 0.000000e+00
  br i1 %569, label %570, label %580

570:                                              ; preds = %567
  %571 = load ptr, ptr %99, align 8, !tbaa !88
  %572 = getelementptr inbounds %struct.SBScratch, ptr %571, i64 0, i32 2
  %573 = load i16, ptr %572, align 2, !tbaa !242
  %574 = or i16 %573, 1
  store i16 %574, ptr %572, align 2, !tbaa !242
  %575 = load i16, ptr %557, align 8, !tbaa !179
  %576 = or i16 %575, 1
  store i16 %576, ptr %557, align 8, !tbaa !179
  %577 = load i16, ptr %100, align 8, !tbaa !87
  %578 = sitofp i16 %577 to float
  %579 = fmul float %578, 0x3F847AE140000000
  store float %579, ptr %555, align 8, !tbaa !286
  br label %580

580:                                              ; preds = %570, %567
  %581 = getelementptr inbounds %struct.BodyPoint, ptr %109, i64 0, i32 4
  %582 = load float, ptr %581, align 4, !tbaa !94
  %583 = load float, ptr %7, align 4, !tbaa !94
  %584 = fsub float %582, %583
  %585 = getelementptr inbounds %struct.BodyPoint, ptr %109, i64 0, i32 4, i64 1
  %586 = load float, ptr %585, align 4, !tbaa !94
  %587 = load float, ptr %101, align 4, !tbaa !94
  %588 = fsub float %586, %587
  %589 = getelementptr inbounds %struct.BodyPoint, ptr %109, i64 0, i32 4, i64 2
  %590 = load float, ptr %589, align 4, !tbaa !94
  %591 = load float, ptr %102, align 4, !tbaa !94
  %592 = fsub float %590, %591
  %593 = load float, ptr %9, align 4, !tbaa !94
  %594 = fmul float %593, -5.000000e+01
  %595 = load float, ptr %110, align 4, !tbaa !94
  %596 = call float @llvm.fmuladd.f32(float %594, float %584, float %595)
  store float %596, ptr %110, align 4, !tbaa !94
  %597 = load float, ptr %112, align 4, !tbaa !94
  %598 = call float @llvm.fmuladd.f32(float %594, float %588, float %597)
  store float %598, ptr %112, align 4, !tbaa !94
  %599 = load float, ptr %111, align 4, !tbaa !94
  %600 = call float @llvm.fmuladd.f32(float %594, float %592, float %599)
  store float %600, ptr %111, align 4, !tbaa !94
  %601 = load float, ptr %6, align 4, !tbaa !94
  %602 = fadd float %596, %601
  store float %602, ptr %110, align 4, !tbaa !94
  %603 = load float, ptr %103, align 4, !tbaa !94
  %604 = fadd float %598, %603
  store float %604, ptr %112, align 4, !tbaa !94
  %605 = load float, ptr %104, align 4, !tbaa !94
  %606 = fadd float %600, %605
  store float %606, ptr %111, align 4, !tbaa !94
  br label %607

607:                                              ; preds = %580, %563
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #13
  br label %608

608:                                              ; preds = %607, %554
  %609 = load i16, ptr %35, align 2, !tbaa !119
  %610 = and i16 %609, 4
  %611 = icmp eq i16 %610, 0
  br i1 %611, label %655, label %612

612:                                              ; preds = %608
  %613 = load ptr, ptr %105, align 8, !tbaa !108
  %614 = icmp eq ptr %613, null
  br i1 %614, label %655, label %615

615:                                              ; preds = %612
  %616 = getelementptr inbounds %struct.BodyPoint, ptr %109, i64 0, i32 13
  %617 = load i32, ptr %616, align 4, !tbaa !254
  %618 = icmp sgt i32 %617, 0
  br i1 %618, label %619, label %655

619:                                              ; preds = %615
  %620 = getelementptr inbounds %struct.BodyPoint, ptr %109, i64 0, i32 14
  %621 = sub nsw i32 %21, %108
  %622 = zext nneg i32 %617 to i64
  br label %623

623:                                              ; preds = %619, %652
  %624 = phi i64 [ %622, %619 ], [ %653, %652 ]
  %625 = load ptr, ptr %105, align 8, !tbaa !108
  %626 = load ptr, ptr %620, align 8, !tbaa !103
  %627 = getelementptr i32, ptr %626, i64 %624
  %628 = getelementptr i32, ptr %627, i64 -1
  %629 = load i32, ptr %628, align 4, !tbaa !118
  %630 = sext i32 %629 to i64
  %631 = getelementptr inbounds %struct.BodySpring, ptr %625, i64 %630
  br i1 %106, label %632, label %652

632:                                              ; preds = %623
  %633 = getelementptr inbounds %struct.BodySpring, ptr %625, i64 %630, i32 5
  %634 = load float, ptr %633, align 4, !tbaa !94
  %635 = load float, ptr %110, align 4, !tbaa !94
  %636 = fadd float %634, %635
  store float %636, ptr %110, align 4, !tbaa !94
  %637 = getelementptr inbounds float, ptr %633, i64 1
  %638 = load float, ptr %637, align 4, !tbaa !94
  %639 = load float, ptr %112, align 4, !tbaa !94
  %640 = fadd float %638, %639
  store float %640, ptr %112, align 4, !tbaa !94
  %641 = getelementptr inbounds float, ptr %633, i64 2
  %642 = load float, ptr %641, align 4, !tbaa !94
  %643 = load float, ptr %111, align 4, !tbaa !94
  %644 = fadd float %642, %643
  store float %644, ptr %111, align 4, !tbaa !94
  %645 = getelementptr inbounds %struct.BodySpring, ptr %625, i64 %630, i32 7
  %646 = load i16, ptr %645, align 4, !tbaa !289
  %647 = and i16 %646, 1
  %648 = icmp eq i16 %647, 0
  br i1 %648, label %652, label %649

649:                                              ; preds = %632
  %650 = getelementptr inbounds %struct.BodySpring, ptr %625, i64 %630, i32 3
  %651 = load float, ptr %650, align 4, !tbaa !290
  store float %651, ptr %555, align 8, !tbaa !286
  br label %652

652:                                              ; preds = %649, %632, %623
  call fastcc void @sb_spring_force(ptr noundef %13, i32 noundef %621, ptr noundef %631)
  %653 = add nsw i64 %624, -1
  %654 = icmp sgt i64 %624, 1
  br i1 %654, label %623, label %655, !llvm.loop !313

655:                                              ; preds = %652, %615, %612, %608, %345
  %656 = add nsw i32 %108, -1
  %657 = getelementptr inbounds %struct.BodyPoint, ptr %109, i64 1
  %658 = icmp sgt i32 %108, 1
  br i1 %658, label %107, label %659, !llvm.loop !314

659:                                              ; preds = %655, %68, %64, %66
  ret ptr null
}

declare zeroext i8 @isect_point_tri_prism_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #8

declare void @closest_to_line_segment_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sb_detect_face_collisionCached(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef %4, ptr nocapture noundef readonly %5, float noundef %6) unnamed_addr #0 {
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #13
  %13 = load float, ptr %0, align 4, !tbaa !94
  %14 = load float, ptr %1, align 4, !tbaa !94
  %15 = load float, ptr %2, align 4, !tbaa !94
  %16 = fcmp olt float %13, %14
  %17 = select i1 %16, float %13, float %14
  %18 = fcmp olt float %17, %15
  %19 = select i1 %18, float %17, float %15
  %20 = getelementptr inbounds float, ptr %0, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !94
  %22 = getelementptr inbounds float, ptr %1, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !94
  %24 = getelementptr inbounds float, ptr %2, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !94
  %26 = fcmp olt float %21, %23
  %27 = select i1 %26, float %21, float %23
  %28 = fcmp olt float %27, %25
  %29 = select i1 %28, float %27, float %25
  %30 = getelementptr inbounds float, ptr %0, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !94
  %32 = getelementptr inbounds float, ptr %1, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !94
  %34 = getelementptr inbounds float, ptr %2, i64 2
  %35 = load float, ptr %34, align 4, !tbaa !94
  %36 = fcmp olt float %31, %33
  %37 = select i1 %36, float %31, float %33
  %38 = fcmp olt float %37, %35
  %39 = select i1 %38, float %37, float %35
  %40 = fcmp ogt float %13, %14
  %41 = select i1 %40, float %13, float %14
  %42 = fcmp ogt float %41, %15
  %43 = select i1 %42, float %41, float %15
  %44 = fcmp ogt float %21, %23
  %45 = select i1 %44, float %21, float %23
  %46 = fcmp ogt float %45, %25
  %47 = select i1 %46, float %45, float %25
  %48 = fcmp ogt float %31, %33
  %49 = select i1 %48, float %31, float %33
  %50 = fcmp ogt float %49, %35
  %51 = select i1 %50, float %49, float %35
  %52 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 111
  %53 = load ptr, ptr %52, align 8, !tbaa !112
  %54 = getelementptr inbounds %struct.SoftBody, ptr %53, i64 0, i32 44
  %55 = load ptr, ptr %54, align 8, !tbaa !88
  %56 = load ptr, ptr %55, align 8, !tbaa !89
  %57 = tail call ptr @BLI_ghashIterator_new(ptr noundef %56) #13
  %58 = getelementptr inbounds %struct.GHashIterator, ptr %57, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !296
  %60 = icmp eq ptr %59, null
  br i1 %60, label %405, label %61

61:                                               ; preds = %7
  %62 = getelementptr inbounds float, ptr %8, i64 1
  %63 = getelementptr inbounds float, ptr %8, i64 2
  %64 = getelementptr inbounds float, ptr %9, i64 1
  %65 = getelementptr inbounds float, ptr %9, i64 2
  %66 = getelementptr inbounds float, ptr %10, i64 1
  %67 = getelementptr inbounds float, ptr %10, i64 2
  %68 = getelementptr inbounds float, ptr %11, i64 1
  %69 = getelementptr inbounds float, ptr %11, i64 2
  %70 = fsub float 1.000000e+00, %6
  %71 = getelementptr inbounds float, ptr %11, i64 1
  %72 = getelementptr inbounds float, ptr %11, i64 2
  %73 = getelementptr inbounds float, ptr %8, i64 1
  %74 = getelementptr inbounds float, ptr %9, i64 1
  %75 = getelementptr inbounds float, ptr %8, i64 2
  %76 = getelementptr inbounds float, ptr %9, i64 2
  %77 = getelementptr inbounds float, ptr %10, i64 1
  %78 = getelementptr inbounds float, ptr %10, i64 2
  %79 = getelementptr inbounds float, ptr %4, i64 1
  %80 = getelementptr inbounds float, ptr %4, i64 2
  %81 = getelementptr inbounds float, ptr %11, i64 1
  %82 = getelementptr inbounds float, ptr %11, i64 2
  %83 = getelementptr inbounds float, ptr %4, i64 1
  %84 = getelementptr inbounds float, ptr %4, i64 2
  br label %85

85:                                               ; preds = %61, %401
  %86 = phi ptr [ %59, %61 ], [ %403, %401 ]
  %87 = phi i32 [ 0, %61 ], [ %402, %401 ]
  %88 = getelementptr inbounds %struct._gh_Entry, ptr %86, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !298
  %90 = getelementptr inbounds %struct._gh_Entry, ptr %86, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !300
  %92 = getelementptr inbounds %struct.Object, ptr %91, i64 0, i32 110
  %93 = load ptr, ptr %92, align 8, !tbaa !208
  %94 = icmp eq ptr %93, null
  br i1 %94, label %399, label %95

95:                                               ; preds = %85
  %96 = getelementptr inbounds %struct.PartDeflect, ptr %93, i64 0, i32 1
  %97 = load i16, ptr %96, align 4, !tbaa !209
  %98 = icmp eq i16 %97, 0
  br i1 %98, label %399, label %99

99:                                               ; preds = %95
  %100 = icmp eq ptr %89, null
  br i1 %100, label %140, label %101

101:                                              ; preds = %99
  %102 = getelementptr inbounds %struct.ccd_Mesh, ptr %89, i64 0, i32 4
  %103 = load ptr, ptr %102, align 8, !tbaa !224
  %104 = getelementptr inbounds %struct.ccd_Mesh, ptr %89, i64 0, i32 2
  %105 = load ptr, ptr %104, align 8, !tbaa !221
  %106 = getelementptr inbounds %struct.ccd_Mesh, ptr %89, i64 0, i32 3
  %107 = load ptr, ptr %106, align 8, !tbaa !220
  %108 = getelementptr inbounds %struct.ccd_Mesh, ptr %89, i64 0, i32 6
  %109 = load ptr, ptr %108, align 8, !tbaa !225
  %110 = getelementptr inbounds %struct.ccd_Mesh, ptr %89, i64 0, i32 1
  %111 = load i32, ptr %110, align 4, !tbaa !217
  %112 = getelementptr inbounds %struct.ccd_Mesh, ptr %89, i64 0, i32 7
  %113 = load float, ptr %112, align 8, !tbaa !94
  %114 = fcmp olt float %43, %113
  br i1 %114, label %395, label %115, !llvm.loop !315

115:                                              ; preds = %101
  %116 = getelementptr inbounds %struct.ccd_Mesh, ptr %89, i64 0, i32 7, i64 1
  %117 = load float, ptr %116, align 4, !tbaa !94
  %118 = fcmp olt float %47, %117
  br i1 %118, label %395, label %119, !llvm.loop !315

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.ccd_Mesh, ptr %89, i64 0, i32 7, i64 2
  %121 = load float, ptr %120, align 8, !tbaa !94
  %122 = fcmp olt float %51, %121
  br i1 %122, label %395, label %123, !llvm.loop !315

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.ccd_Mesh, ptr %89, i64 0, i32 8
  %125 = load float, ptr %124, align 4, !tbaa !94
  %126 = fcmp ogt float %19, %125
  br i1 %126, label %395, label %127, !llvm.loop !315

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.ccd_Mesh, ptr %89, i64 0, i32 8, i64 1
  %129 = load float, ptr %128, align 4, !tbaa !94
  %130 = fcmp ogt float %29, %129
  br i1 %130, label %395, label %131, !llvm.loop !315

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.ccd_Mesh, ptr %89, i64 0, i32 8, i64 2
  %133 = load float, ptr %132, align 4, !tbaa !94
  %134 = fcmp ogt float %39, %133
  br i1 %134, label %395, label %135, !llvm.loop !315

135:                                              ; preds = %131
  %136 = icmp eq i32 %111, 0
  br i1 %136, label %396, label %137

137:                                              ; preds = %135
  %138 = icmp eq ptr %105, null
  %139 = icmp eq ptr %107, null
  br label %390

140:                                              ; preds = %99
  %141 = call i32 @puts(ptr nonnull dereferenceable(1) @str.32)
  br label %395, !llvm.loop !315

142:                                              ; preds = %390, %169
  %143 = phi i32 [ %391, %390 ], [ %146, %169 ]
  %144 = phi ptr [ %392, %390 ], [ %171, %169 ]
  %145 = phi ptr [ %393, %390 ], [ %170, %169 ]
  %146 = add nsw i32 %143, -1
  %147 = load float, ptr %144, align 4, !tbaa !229
  %148 = fcmp olt float %43, %147
  br i1 %148, label %169, label %149

149:                                              ; preds = %142
  %150 = getelementptr inbounds %struct.ccdf_minmax, ptr %144, i64 0, i32 3
  %151 = load float, ptr %150, align 4, !tbaa !232
  %152 = fcmp ogt float %19, %151
  br i1 %152, label %169, label %153

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.ccdf_minmax, ptr %144, i64 0, i32 1
  %155 = load float, ptr %154, align 4, !tbaa !228
  %156 = fcmp olt float %47, %155
  br i1 %156, label %169, label %157

157:                                              ; preds = %153
  %158 = getelementptr inbounds %struct.ccdf_minmax, ptr %144, i64 0, i32 4
  %159 = load float, ptr %158, align 4, !tbaa !231
  %160 = fcmp ogt float %29, %159
  br i1 %160, label %169, label %161

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.ccdf_minmax, ptr %144, i64 0, i32 2
  %163 = load float, ptr %162, align 4, !tbaa !226
  %164 = fcmp olt float %51, %163
  br i1 %164, label %169, label %165

165:                                              ; preds = %161
  %166 = getelementptr inbounds %struct.ccdf_minmax, ptr %144, i64 0, i32 5
  %167 = load float, ptr %166, align 4, !tbaa !230
  %168 = fcmp ogt float %39, %167
  br i1 %168, label %169, label %173

169:                                              ; preds = %165, %161, %157, %153, %149, %142
  %170 = getelementptr inbounds %struct.MFace, ptr %145, i64 1
  %171 = getelementptr inbounds %struct.ccdf_minmax, ptr %144, i64 1
  %172 = icmp eq i32 %146, 0
  br i1 %172, label %396, label %142, !llvm.loop !316

173:                                              ; preds = %165
  br i1 %138, label %267, label %174

174:                                              ; preds = %173
  %175 = load i32, ptr %145, align 4, !tbaa !156
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds %struct.MVert, ptr %105, i64 %176
  %178 = load float, ptr %177, align 4, !tbaa !94
  store float %178, ptr %8, align 4, !tbaa !94
  %179 = getelementptr inbounds float, ptr %177, i64 1
  %180 = load float, ptr %179, align 4, !tbaa !94
  store float %180, ptr %62, align 4, !tbaa !94
  %181 = getelementptr inbounds float, ptr %177, i64 2
  %182 = load float, ptr %181, align 4, !tbaa !94
  store float %182, ptr %63, align 4, !tbaa !94
  %183 = getelementptr inbounds %struct.MFace, ptr %145, i64 0, i32 1
  %184 = load i32, ptr %183, align 4, !tbaa !158
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds %struct.MVert, ptr %105, i64 %185
  %187 = load float, ptr %186, align 4, !tbaa !94
  store float %187, ptr %9, align 4, !tbaa !94
  %188 = getelementptr inbounds float, ptr %186, i64 1
  %189 = load float, ptr %188, align 4, !tbaa !94
  store float %189, ptr %64, align 4, !tbaa !94
  %190 = getelementptr inbounds float, ptr %186, i64 2
  %191 = load float, ptr %190, align 4, !tbaa !94
  store float %191, ptr %65, align 4, !tbaa !94
  %192 = getelementptr inbounds %struct.MFace, ptr %145, i64 0, i32 2
  %193 = load i32, ptr %192, align 4, !tbaa !157
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds %struct.MVert, ptr %105, i64 %194
  %196 = load float, ptr %195, align 4, !tbaa !94
  store float %196, ptr %10, align 4, !tbaa !94
  %197 = getelementptr inbounds float, ptr %195, i64 1
  %198 = load float, ptr %197, align 4, !tbaa !94
  store float %198, ptr %66, align 4, !tbaa !94
  %199 = getelementptr inbounds float, ptr %195, i64 2
  %200 = load float, ptr %199, align 4, !tbaa !94
  store float %200, ptr %67, align 4, !tbaa !94
  %201 = getelementptr inbounds %struct.MFace, ptr %145, i64 0, i32 3
  %202 = load i32, ptr %201, align 4, !tbaa !152
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %212, label %204

204:                                              ; preds = %174
  %205 = zext i32 %202 to i64
  %206 = getelementptr inbounds %struct.MVert, ptr %105, i64 %205
  %207 = load float, ptr %206, align 4, !tbaa !94
  store float %207, ptr %11, align 4, !tbaa !94
  %208 = getelementptr inbounds float, ptr %206, i64 1
  %209 = load float, ptr %208, align 4, !tbaa !94
  store float %209, ptr %68, align 4, !tbaa !94
  %210 = getelementptr inbounds float, ptr %206, i64 2
  %211 = load float, ptr %210, align 4, !tbaa !94
  store float %211, ptr %69, align 4, !tbaa !94
  br label %212

212:                                              ; preds = %204, %174
  br i1 %139, label %267, label %213

213:                                              ; preds = %212
  %214 = fmul float %178, %6
  store float %214, ptr %8, align 4, !tbaa !94
  %215 = fmul float %180, %6
  store float %215, ptr %62, align 4, !tbaa !94
  %216 = fmul float %182, %6
  store float %216, ptr %63, align 4, !tbaa !94
  %217 = getelementptr inbounds %struct.MVert, ptr %107, i64 %176
  %218 = load float, ptr %217, align 4, !tbaa !94
  %219 = call float @llvm.fmuladd.f32(float %70, float %218, float %214)
  store float %219, ptr %8, align 4, !tbaa !94
  %220 = getelementptr inbounds float, ptr %217, i64 1
  %221 = load float, ptr %220, align 4, !tbaa !94
  %222 = call float @llvm.fmuladd.f32(float %70, float %221, float %215)
  store float %222, ptr %62, align 4, !tbaa !94
  %223 = getelementptr inbounds float, ptr %217, i64 2
  %224 = load float, ptr %223, align 4, !tbaa !94
  %225 = call float @llvm.fmuladd.f32(float %70, float %224, float %216)
  store float %225, ptr %63, align 4, !tbaa !94
  %226 = fmul float %187, %6
  store float %226, ptr %9, align 4, !tbaa !94
  %227 = fmul float %189, %6
  store float %227, ptr %64, align 4, !tbaa !94
  %228 = fmul float %191, %6
  store float %228, ptr %65, align 4, !tbaa !94
  %229 = getelementptr inbounds %struct.MVert, ptr %107, i64 %185
  %230 = load float, ptr %229, align 4, !tbaa !94
  %231 = call float @llvm.fmuladd.f32(float %70, float %230, float %226)
  store float %231, ptr %9, align 4, !tbaa !94
  %232 = getelementptr inbounds float, ptr %229, i64 1
  %233 = load float, ptr %232, align 4, !tbaa !94
  %234 = call float @llvm.fmuladd.f32(float %70, float %233, float %227)
  store float %234, ptr %64, align 4, !tbaa !94
  %235 = getelementptr inbounds float, ptr %229, i64 2
  %236 = load float, ptr %235, align 4, !tbaa !94
  %237 = call float @llvm.fmuladd.f32(float %70, float %236, float %228)
  store float %237, ptr %65, align 4, !tbaa !94
  %238 = fmul float %196, %6
  store float %238, ptr %10, align 4, !tbaa !94
  %239 = fmul float %198, %6
  store float %239, ptr %66, align 4, !tbaa !94
  %240 = fmul float %200, %6
  store float %240, ptr %67, align 4, !tbaa !94
  %241 = getelementptr inbounds %struct.MVert, ptr %107, i64 %194
  %242 = load float, ptr %241, align 4, !tbaa !94
  %243 = call float @llvm.fmuladd.f32(float %70, float %242, float %238)
  store float %243, ptr %10, align 4, !tbaa !94
  %244 = getelementptr inbounds float, ptr %241, i64 1
  %245 = load float, ptr %244, align 4, !tbaa !94
  %246 = call float @llvm.fmuladd.f32(float %70, float %245, float %239)
  store float %246, ptr %66, align 4, !tbaa !94
  %247 = getelementptr inbounds float, ptr %241, i64 2
  %248 = load float, ptr %247, align 4, !tbaa !94
  %249 = call float @llvm.fmuladd.f32(float %70, float %248, float %240)
  store float %249, ptr %67, align 4, !tbaa !94
  br i1 %203, label %267, label %250

250:                                              ; preds = %213
  %251 = load float, ptr %11, align 4, !tbaa !94
  %252 = fmul float %251, %6
  store float %252, ptr %11, align 4, !tbaa !94
  %253 = load float, ptr %71, align 4, !tbaa !94
  %254 = fmul float %253, %6
  store float %254, ptr %71, align 4, !tbaa !94
  %255 = load float, ptr %72, align 4, !tbaa !94
  %256 = fmul float %255, %6
  store float %256, ptr %72, align 4, !tbaa !94
  %257 = zext i32 %202 to i64
  %258 = getelementptr inbounds %struct.MVert, ptr %107, i64 %257
  %259 = load float, ptr %258, align 4, !tbaa !94
  %260 = call float @llvm.fmuladd.f32(float %70, float %259, float %252)
  store float %260, ptr %11, align 4, !tbaa !94
  %261 = getelementptr inbounds float, ptr %258, i64 1
  %262 = load float, ptr %261, align 4, !tbaa !94
  %263 = call float @llvm.fmuladd.f32(float %70, float %262, float %254)
  store float %263, ptr %71, align 4, !tbaa !94
  %264 = getelementptr inbounds float, ptr %258, i64 2
  %265 = load float, ptr %264, align 4, !tbaa !94
  %266 = call float @llvm.fmuladd.f32(float %70, float %265, float %256)
  store float %266, ptr %72, align 4, !tbaa !94
  br label %267

267:                                              ; preds = %212, %250, %213, %173
  %268 = load float, ptr %8, align 4, !tbaa !94
  %269 = load float, ptr %9, align 4, !tbaa !94
  %270 = fsub float %268, %269
  %271 = load float, ptr %73, align 4, !tbaa !94
  %272 = load float, ptr %74, align 4, !tbaa !94
  %273 = fsub float %271, %272
  %274 = load float, ptr %75, align 4, !tbaa !94
  %275 = load float, ptr %76, align 4, !tbaa !94
  %276 = fsub float %274, %275
  %277 = load float, ptr %10, align 4, !tbaa !94
  %278 = fsub float %277, %269
  %279 = load float, ptr %77, align 4, !tbaa !94
  %280 = fsub float %279, %272
  %281 = load float, ptr %78, align 4, !tbaa !94
  %282 = fsub float %281, %275
  %283 = fneg float %282
  %284 = fmul float %273, %283
  %285 = call float @llvm.fmuladd.f32(float %280, float %276, float %284)
  %286 = fneg float %278
  %287 = fmul float %276, %286
  %288 = call float @llvm.fmuladd.f32(float %282, float %270, float %287)
  %289 = fneg float %280
  %290 = fmul float %270, %289
  %291 = call float @llvm.fmuladd.f32(float %278, float %273, float %290)
  %292 = fmul float %288, %288
  %293 = call float @llvm.fmuladd.f32(float %285, float %285, float %292)
  %294 = call float @llvm.fmuladd.f32(float %291, float %291, float %293)
  %295 = fcmp ogt float %294, 0x38AA95A5C0000000
  br i1 %295, label %296, label %302

296:                                              ; preds = %267
  %297 = call float @sqrtf(float noundef %294) #13
  %298 = fdiv float 1.000000e+00, %297
  %299 = fmul float %285, %298
  %300 = fmul float %288, %298
  %301 = fmul float %291, %298
  br label %302

302:                                              ; preds = %267, %296
  %303 = phi float [ %300, %296 ], [ 0.000000e+00, %267 ]
  %304 = phi float [ %299, %296 ], [ 0.000000e+00, %267 ]
  %305 = phi float [ %301, %296 ], [ 0.000000e+00, %267 ]
  %306 = call zeroext i8 @isect_line_tri_v3(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %12, ptr noundef null) #13
  %307 = icmp eq i8 %306, 0
  br i1 %307, label %308, label %314

308:                                              ; preds = %302
  %309 = call zeroext i8 @isect_line_tri_v3(ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %12, ptr noundef null) #13
  %310 = icmp eq i8 %309, 0
  br i1 %310, label %311, label %314

311:                                              ; preds = %308
  %312 = call zeroext i8 @isect_line_tri_v3(ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %12, ptr noundef null) #13
  %313 = icmp eq i8 %312, 0
  br i1 %313, label %325, label %314

314:                                              ; preds = %311, %308, %302
  %315 = load float, ptr %4, align 4, !tbaa !94
  %316 = call float @llvm.fmuladd.f32(float %304, float -5.000000e-01, float %315)
  store float %316, ptr %4, align 4, !tbaa !94
  %317 = load float, ptr %79, align 4, !tbaa !94
  %318 = call float @llvm.fmuladd.f32(float %303, float -5.000000e-01, float %317)
  store float %318, ptr %79, align 4, !tbaa !94
  %319 = load float, ptr %80, align 4, !tbaa !94
  %320 = call float @llvm.fmuladd.f32(float %305, float -5.000000e-01, float %319)
  store float %320, ptr %80, align 4, !tbaa !94
  %321 = load ptr, ptr %92, align 8, !tbaa !208
  %322 = getelementptr inbounds %struct.PartDeflect, ptr %321, i64 0, i32 26
  %323 = load float, ptr %322, align 8, !tbaa !304
  %324 = fmul float %323, 1.000000e+01
  store float %324, ptr %3, align 4, !tbaa !94
  br label %325

325:                                              ; preds = %314, %311
  %326 = phi i32 [ 2, %314 ], [ %394, %311 ]
  %327 = getelementptr inbounds %struct.MFace, ptr %145, i64 0, i32 3
  %328 = load i32, ptr %327, align 4, !tbaa !152
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %385, label %330

330:                                              ; preds = %325
  %331 = load float, ptr %10, align 4, !tbaa !94
  %332 = load float, ptr %11, align 4, !tbaa !94
  %333 = fsub float %331, %332
  %334 = load float, ptr %77, align 4, !tbaa !94
  %335 = load float, ptr %81, align 4, !tbaa !94
  %336 = fsub float %334, %335
  %337 = load float, ptr %78, align 4, !tbaa !94
  %338 = load float, ptr %82, align 4, !tbaa !94
  %339 = fsub float %337, %338
  %340 = load float, ptr %8, align 4, !tbaa !94
  %341 = fsub float %340, %332
  %342 = load float, ptr %73, align 4, !tbaa !94
  %343 = fsub float %342, %335
  %344 = load float, ptr %75, align 4, !tbaa !94
  %345 = fsub float %344, %338
  %346 = fneg float %345
  %347 = fmul float %336, %346
  %348 = call float @llvm.fmuladd.f32(float %343, float %339, float %347)
  %349 = fneg float %341
  %350 = fmul float %339, %349
  %351 = call float @llvm.fmuladd.f32(float %345, float %333, float %350)
  %352 = fneg float %343
  %353 = fmul float %333, %352
  %354 = call float @llvm.fmuladd.f32(float %341, float %336, float %353)
  %355 = fmul float %351, %351
  %356 = call float @llvm.fmuladd.f32(float %348, float %348, float %355)
  %357 = call float @llvm.fmuladd.f32(float %354, float %354, float %356)
  %358 = fcmp ogt float %357, 0x38AA95A5C0000000
  br i1 %358, label %359, label %365

359:                                              ; preds = %330
  %360 = call float @sqrtf(float noundef %357) #13
  %361 = fdiv float 1.000000e+00, %360
  %362 = fmul float %348, %361
  %363 = fmul float %351, %361
  %364 = fmul float %354, %361
  br label %365

365:                                              ; preds = %330, %359
  %366 = phi float [ %363, %359 ], [ 0.000000e+00, %330 ]
  %367 = phi float [ %362, %359 ], [ 0.000000e+00, %330 ]
  %368 = phi float [ %364, %359 ], [ 0.000000e+00, %330 ]
  %369 = call zeroext i8 @isect_line_tri_v3(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %12, ptr noundef null) #13
  %370 = icmp eq i8 %369, 0
  br i1 %370, label %371, label %374

371:                                              ; preds = %365
  %372 = call zeroext i8 @isect_line_tri_v3(ptr noundef nonnull %11, ptr noundef nonnull %8, ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %12, ptr noundef null) #13
  %373 = icmp eq i8 %372, 0
  br i1 %373, label %385, label %374

374:                                              ; preds = %371, %365
  %375 = load float, ptr %4, align 4, !tbaa !94
  %376 = call float @llvm.fmuladd.f32(float %367, float -5.000000e-01, float %375)
  store float %376, ptr %4, align 4, !tbaa !94
  %377 = load float, ptr %83, align 4, !tbaa !94
  %378 = call float @llvm.fmuladd.f32(float %366, float -5.000000e-01, float %377)
  store float %378, ptr %83, align 4, !tbaa !94
  %379 = load float, ptr %84, align 4, !tbaa !94
  %380 = call float @llvm.fmuladd.f32(float %368, float -5.000000e-01, float %379)
  store float %380, ptr %84, align 4, !tbaa !94
  %381 = load ptr, ptr %92, align 8, !tbaa !208
  %382 = getelementptr inbounds %struct.PartDeflect, ptr %381, i64 0, i32 26
  %383 = load float, ptr %382, align 8, !tbaa !304
  %384 = fmul float %383, 1.000000e+01
  store float %384, ptr %3, align 4, !tbaa !94
  br label %385

385:                                              ; preds = %371, %374, %325
  %386 = phi i32 [ 2, %374 ], [ %326, %371 ], [ %326, %325 ]
  %387 = getelementptr inbounds %struct.MFace, ptr %145, i64 1
  %388 = getelementptr inbounds %struct.ccdf_minmax, ptr %144, i64 1
  %389 = icmp eq i32 %146, 0
  br i1 %389, label %396, label %390, !llvm.loop !316

390:                                              ; preds = %137, %385
  %391 = phi i32 [ %111, %137 ], [ %146, %385 ]
  %392 = phi ptr [ %109, %137 ], [ %388, %385 ]
  %393 = phi ptr [ %103, %137 ], [ %387, %385 ]
  %394 = phi i32 [ %87, %137 ], [ %386, %385 ]
  br label %142

395:                                              ; preds = %101, %115, %119, %123, %127, %131, %140
  call void @BLI_ghashIterator_step(ptr noundef %57) #13
  br label %396

396:                                              ; preds = %385, %169, %395, %135
  %397 = phi i32 [ %87, %135 ], [ %87, %395 ], [ %394, %169 ], [ %386, %385 ]
  %398 = phi i1 [ true, %135 ], [ false, %395 ], [ true, %169 ], [ true, %385 ]
  br i1 %398, label %399, label %401

399:                                              ; preds = %396, %95, %85
  %400 = phi i32 [ %397, %396 ], [ %87, %95 ], [ %87, %85 ]
  call void @BLI_ghashIterator_step(ptr noundef %57) #13
  br label %401

401:                                              ; preds = %396, %399
  %402 = phi i32 [ %400, %399 ], [ %397, %396 ]
  %403 = load ptr, ptr %58, align 8, !tbaa !296
  %404 = icmp eq ptr %403, null
  br i1 %404, label %405, label %85

405:                                              ; preds = %401, %7
  %406 = phi i32 [ 0, %7 ], [ %402, %401 ]
  call void @BLI_ghashIterator_free(ptr noundef %57) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #13
  ret i32 %406
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sb_detect_face_pointCached(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef %4, ptr nocapture noundef readonly %5, float noundef %6) unnamed_addr #0 {
  %8 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #13
  %9 = load float, ptr %0, align 4, !tbaa !94
  %10 = load float, ptr %1, align 4, !tbaa !94
  %11 = load float, ptr %2, align 4, !tbaa !94
  %12 = fcmp olt float %9, %10
  %13 = select i1 %12, float %9, float %10
  %14 = fcmp olt float %13, %11
  %15 = select i1 %14, float %13, float %11
  %16 = getelementptr inbounds float, ptr %0, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !94
  %18 = getelementptr inbounds float, ptr %1, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !94
  %20 = getelementptr inbounds float, ptr %2, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !94
  %22 = fcmp olt float %17, %19
  %23 = select i1 %22, float %17, float %19
  %24 = fcmp olt float %23, %21
  %25 = select i1 %24, float %23, float %21
  %26 = getelementptr inbounds float, ptr %0, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !94
  %28 = getelementptr inbounds float, ptr %1, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !94
  %30 = getelementptr inbounds float, ptr %2, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !94
  %32 = fcmp olt float %27, %29
  %33 = select i1 %32, float %27, float %29
  %34 = fcmp olt float %33, %31
  %35 = select i1 %34, float %33, float %31
  %36 = fcmp ogt float %9, %10
  %37 = select i1 %36, float %9, float %10
  %38 = fcmp ogt float %37, %11
  %39 = select i1 %38, float %37, float %11
  %40 = fcmp ogt float %17, %19
  %41 = select i1 %40, float %17, float %19
  %42 = fcmp ogt float %41, %21
  %43 = select i1 %42, float %41, float %21
  %44 = fcmp ogt float %27, %29
  %45 = select i1 %44, float %27, float %29
  %46 = fcmp ogt float %45, %31
  %47 = select i1 %46, float %45, float %31
  %48 = fsub float %9, %10
  %49 = fsub float %17, %19
  %50 = fsub float %27, %29
  %51 = fsub float %11, %10
  %52 = fsub float %21, %19
  %53 = fsub float %31, %29
  %54 = fneg float %53
  %55 = fmul float %49, %54
  %56 = tail call float @llvm.fmuladd.f32(float %52, float %50, float %55)
  %57 = fneg float %51
  %58 = fmul float %50, %57
  %59 = tail call float @llvm.fmuladd.f32(float %53, float %48, float %58)
  %60 = fneg float %52
  %61 = fmul float %48, %60
  %62 = tail call float @llvm.fmuladd.f32(float %51, float %49, float %61)
  %63 = fmul float %59, %59
  %64 = tail call float @llvm.fmuladd.f32(float %56, float %56, float %63)
  %65 = tail call float @llvm.fmuladd.f32(float %62, float %62, float %64)
  %66 = fcmp ogt float %65, 0x38AA95A5C0000000
  br i1 %66, label %67, label %73

67:                                               ; preds = %7
  %68 = tail call float @sqrtf(float noundef %65) #13
  %69 = fdiv float 1.000000e+00, %68
  %70 = fmul float %56, %69
  %71 = fmul float %59, %69
  %72 = fmul float %62, %69
  br label %73

73:                                               ; preds = %7, %67
  %74 = phi float [ %71, %67 ], [ 0.000000e+00, %7 ]
  %75 = phi float [ %70, %67 ], [ 0.000000e+00, %7 ]
  %76 = phi float [ %72, %67 ], [ 0.000000e+00, %7 ]
  %77 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 111
  %78 = load ptr, ptr %77, align 8, !tbaa !112
  %79 = getelementptr inbounds %struct.SoftBody, ptr %78, i64 0, i32 44
  %80 = load ptr, ptr %79, align 8, !tbaa !88
  %81 = load ptr, ptr %80, align 8, !tbaa !89
  %82 = tail call ptr @BLI_ghashIterator_new(ptr noundef %81) #13
  %83 = getelementptr inbounds %struct.GHashIterator, ptr %82, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !296
  %85 = icmp eq ptr %84, null
  br i1 %85, label %224, label %86

86:                                               ; preds = %73
  %87 = getelementptr inbounds float, ptr %8, i64 1
  %88 = getelementptr inbounds float, ptr %8, i64 2
  %89 = fsub float 1.000000e+00, %6
  %90 = getelementptr inbounds float, ptr %4, i64 1
  %91 = getelementptr inbounds float, ptr %4, i64 2
  br label %92

92:                                               ; preds = %86, %220
  %93 = phi ptr [ %84, %86 ], [ %222, %220 ]
  %94 = phi i32 [ 0, %86 ], [ %221, %220 ]
  %95 = getelementptr inbounds %struct._gh_Entry, ptr %93, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !298
  %97 = getelementptr inbounds %struct._gh_Entry, ptr %93, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !300
  %99 = getelementptr inbounds %struct.Object, ptr %98, i64 0, i32 110
  %100 = load ptr, ptr %99, align 8, !tbaa !208
  %101 = icmp eq ptr %100, null
  br i1 %101, label %218, label %102

102:                                              ; preds = %92
  %103 = getelementptr inbounds %struct.PartDeflect, ptr %100, i64 0, i32 1
  %104 = load i16, ptr %103, align 4, !tbaa !209
  %105 = icmp eq i16 %104, 0
  br i1 %105, label %218, label %106

106:                                              ; preds = %102
  %107 = icmp eq ptr %96, null
  br i1 %107, label %139, label %108

108:                                              ; preds = %106
  %109 = getelementptr inbounds %struct.ccd_Mesh, ptr %96, i64 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !221
  %111 = load i32, ptr %96, align 8, !tbaa !215
  %112 = getelementptr inbounds %struct.ccd_Mesh, ptr %96, i64 0, i32 3
  %113 = load ptr, ptr %112, align 8, !tbaa !220
  %114 = getelementptr inbounds %struct.PartDeflect, ptr %100, i64 0, i32 28
  %115 = load float, ptr %114, align 8, !tbaa !219
  %116 = getelementptr inbounds %struct.ccd_Mesh, ptr %96, i64 0, i32 7
  %117 = load float, ptr %116, align 8, !tbaa !94
  %118 = fcmp olt float %39, %117
  br i1 %118, label %214, label %119, !llvm.loop !317

119:                                              ; preds = %108
  %120 = getelementptr inbounds %struct.ccd_Mesh, ptr %96, i64 0, i32 7, i64 1
  %121 = load float, ptr %120, align 4, !tbaa !94
  %122 = fcmp olt float %43, %121
  br i1 %122, label %214, label %123, !llvm.loop !317

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.ccd_Mesh, ptr %96, i64 0, i32 7, i64 2
  %125 = load float, ptr %124, align 8, !tbaa !94
  %126 = fcmp olt float %47, %125
  br i1 %126, label %214, label %127, !llvm.loop !317

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.ccd_Mesh, ptr %96, i64 0, i32 8
  %129 = load float, ptr %128, align 4, !tbaa !94
  %130 = fcmp ogt float %15, %129
  br i1 %130, label %214, label %131, !llvm.loop !317

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.ccd_Mesh, ptr %96, i64 0, i32 8, i64 1
  %133 = load float, ptr %132, align 4, !tbaa !94
  %134 = fcmp ogt float %25, %133
  br i1 %134, label %214, label %135, !llvm.loop !317

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.ccd_Mesh, ptr %96, i64 0, i32 8, i64 2
  %137 = load float, ptr %136, align 4, !tbaa !94
  %138 = fcmp ogt float %35, %137
  br i1 %138, label %214, label %141, !llvm.loop !317

139:                                              ; preds = %106
  %140 = call i32 @puts(ptr nonnull dereferenceable(1) @str.32)
  br label %214, !llvm.loop !317

141:                                              ; preds = %135
  %142 = icmp ne ptr %110, null
  %143 = icmp ne i32 %111, 0
  %144 = select i1 %142, i1 %143, i1 false
  br i1 %144, label %145, label %215

145:                                              ; preds = %141
  %146 = icmp eq ptr %113, null
  %147 = sext i32 %111 to i64
  br label %148

148:                                              ; preds = %145, %210
  %149 = phi i64 [ %147, %145 ], [ %151, %210 ]
  %150 = phi i32 [ %94, %145 ], [ %211, %210 ]
  %151 = add nsw i64 %149, -1
  %152 = getelementptr inbounds %struct.MVert, ptr %110, i64 %151
  %153 = load float, ptr %152, align 4, !tbaa !94
  store float %153, ptr %8, align 4, !tbaa !94
  %154 = getelementptr inbounds float, ptr %152, i64 1
  %155 = load float, ptr %154, align 4, !tbaa !94
  store float %155, ptr %87, align 4, !tbaa !94
  %156 = getelementptr inbounds float, ptr %152, i64 2
  %157 = load float, ptr %156, align 4, !tbaa !94
  store float %157, ptr %88, align 4, !tbaa !94
  br i1 %146, label %171, label %158

158:                                              ; preds = %148
  %159 = fmul float %153, %6
  store float %159, ptr %8, align 4, !tbaa !94
  %160 = fmul float %155, %6
  store float %160, ptr %87, align 4, !tbaa !94
  %161 = fmul float %157, %6
  store float %161, ptr %88, align 4, !tbaa !94
  %162 = getelementptr inbounds %struct.MVert, ptr %113, i64 %151
  %163 = load float, ptr %162, align 4, !tbaa !94
  %164 = call float @llvm.fmuladd.f32(float %89, float %163, float %159)
  store float %164, ptr %8, align 4, !tbaa !94
  %165 = getelementptr inbounds float, ptr %162, i64 1
  %166 = load float, ptr %165, align 4, !tbaa !94
  %167 = call float @llvm.fmuladd.f32(float %89, float %166, float %160)
  store float %167, ptr %87, align 4, !tbaa !94
  %168 = getelementptr inbounds float, ptr %162, i64 2
  %169 = load float, ptr %168, align 4, !tbaa !94
  %170 = call float @llvm.fmuladd.f32(float %89, float %169, float %161)
  store float %170, ptr %88, align 4, !tbaa !94
  br label %171

171:                                              ; preds = %158, %148
  %172 = load float, ptr %1, align 4, !tbaa !94
  %173 = load float, ptr %8, align 4, !tbaa !94
  %174 = fsub float %173, %172
  store float %174, ptr %8, align 4, !tbaa !94
  %175 = load float, ptr %18, align 4, !tbaa !94
  %176 = load float, ptr %87, align 4, !tbaa !94
  %177 = fsub float %176, %175
  store float %177, ptr %87, align 4, !tbaa !94
  %178 = load float, ptr %28, align 4, !tbaa !94
  %179 = load float, ptr %88, align 4, !tbaa !94
  %180 = fsub float %179, %178
  store float %180, ptr %88, align 4, !tbaa !94
  %181 = fmul float %74, %177
  %182 = call float @llvm.fmuladd.f32(float %174, float %75, float %181)
  %183 = call float @llvm.fmuladd.f32(float %180, float %76, float %182)
  %184 = fcmp olt float %183, 0.000000e+00
  %185 = fneg float %183
  %186 = select i1 %184, float %185, float %183
  %187 = fcmp olt float %186, %115
  br i1 %187, label %188, label %210

188:                                              ; preds = %171
  %189 = call zeroext i8 @isect_point_tri_prism_v3(ptr noundef nonnull %8, ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #13
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %210, label %191

191:                                              ; preds = %188
  %192 = fcmp ogt float %183, 0.000000e+00
  %193 = select i1 %192, float %185, float %183
  %194 = fadd float %115, %193
  %195 = fdiv float %194, %115
  %196 = fmul float %195, 1.000000e+01
  %197 = load ptr, ptr %99, align 8, !tbaa !208
  %198 = getelementptr inbounds %struct.PartDeflect, ptr %197, i64 0, i32 26
  %199 = load float, ptr %198, align 8, !tbaa !304
  %200 = fmul float %196, %199
  store float %200, ptr %3, align 4, !tbaa !94
  %201 = fmul float %195, -1.000000e+02
  %202 = call float @expf(float noundef %201) #13
  %203 = fmul float %202, 0xBF847AE140000000
  %204 = load float, ptr %4, align 4, !tbaa !94
  %205 = call float @llvm.fmuladd.f32(float %203, float %75, float %204)
  store float %205, ptr %4, align 4, !tbaa !94
  %206 = load float, ptr %90, align 4, !tbaa !94
  %207 = call float @llvm.fmuladd.f32(float %203, float %74, float %206)
  store float %207, ptr %90, align 4, !tbaa !94
  %208 = load float, ptr %91, align 4, !tbaa !94
  %209 = call float @llvm.fmuladd.f32(float %203, float %76, float %208)
  store float %209, ptr %91, align 4, !tbaa !94
  br label %210

210:                                              ; preds = %188, %191, %171
  %211 = phi i32 [ 3, %191 ], [ %150, %188 ], [ %150, %171 ]
  %212 = and i64 %151, 4294967295
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %215, label %148

214:                                              ; preds = %108, %119, %123, %127, %131, %135, %139
  call void @BLI_ghashIterator_step(ptr noundef %82) #13
  br label %215

215:                                              ; preds = %210, %214, %141
  %216 = phi i32 [ %94, %141 ], [ %94, %214 ], [ %211, %210 ]
  %217 = phi i1 [ true, %141 ], [ false, %214 ], [ true, %210 ]
  br i1 %217, label %218, label %220

218:                                              ; preds = %215, %102, %92
  %219 = phi i32 [ %216, %215 ], [ %94, %102 ], [ %94, %92 ]
  call void @BLI_ghashIterator_step(ptr noundef %82) #13
  br label %220

220:                                              ; preds = %215, %218
  %221 = phi i32 [ %219, %218 ], [ %216, %215 ]
  %222 = load ptr, ptr %83, align 8, !tbaa !296
  %223 = icmp eq ptr %222, null
  br i1 %223, label %224, label %92

224:                                              ; preds = %220, %73
  %225 = phi i32 [ 0, %73 ], [ %221, %220 ]
  call void @BLI_ghashIterator_free(ptr noundef %82) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #13
  ret i32 %225
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @expf(float noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nofree nounwind }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }

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
!38 = !{!39, !42, i64 100}
!39 = !{!"SoftBody", !40, i64 0, !40, i64 4, !35, i64 8, !35, i64 16, !36, i64 24, !36, i64 25, !41, i64 26, !42, i64 28, !36, i64 32, !42, i64 96, !42, i64 100, !42, i64 104, !42, i64 108, !42, i64 112, !42, i64 116, !42, i64 120, !42, i64 124, !42, i64 128, !41, i64 132, !36, i64 134, !41, i64 198, !42, i64 200, !42, i64 204, !36, i64 208, !40, i64 272, !40, i64 276, !40, i64 280, !41, i64 284, !41, i64 286, !35, i64 288, !40, i64 296, !40, i64 300, !42, i64 304, !42, i64 308, !42, i64 312, !42, i64 316, !41, i64 320, !41, i64 322, !41, i64 324, !41, i64 326, !41, i64 328, !41, i64 330, !41, i64 332, !41, i64 334, !35, i64 336, !42, i64 344, !42, i64 348, !35, i64 352, !43, i64 360, !35, i64 376, !36, i64 384, !36, i64 396, !36, i64 432, !40, i64 468}
!40 = !{!"int", !36, i64 0}
!41 = !{!"short", !36, i64 0}
!42 = !{!"float", !36, i64 0}
!43 = !{!"ListBase", !35, i64 0, !35, i64 8}
!44 = !{!39, !42, i64 28}
!45 = !{!39, !42, i64 96}
!46 = !{!39, !42, i64 108}
!47 = !{!39, !42, i64 104}
!48 = !{!39, !42, i64 112}
!49 = !{!39, !42, i64 116}
!50 = !{!39, !42, i64 120}
!51 = !{!39, !42, i64 124}
!52 = !{!39, !42, i64 128}
!53 = !{!39, !42, i64 200}
!54 = !{!39, !42, i64 204}
!55 = !{!39, !42, i64 348}
!56 = !{!39, !40, i64 280}
!57 = !{!58, !40, i64 684}
!58 = !{!"Scene", !59, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !43, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !40, i64 232, !40, i64 236, !40, i64 240, !41, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !60, i64 280, !69, i64 4264, !43, i64 4296, !43, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !41, i64 4376, !41, i64 4378, !40, i64 4380, !43, i64 4384, !70, i64 4400, !71, i64 4416, !74, i64 4600, !35, i64 4608, !75, i64 4616, !35, i64 4640, !76, i64 4648, !76, i64 4656, !62, i64 4664, !63, i64 4824, !77, i64 4888, !35, i64 4952}
!59 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !41, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !35, i64 112}
!60 = !{!"RenderData", !61, i64 0, !35, i64 248, !35, i64 256, !64, i64 264, !65, i64 328, !40, i64 400, !40, i64 404, !40, i64 408, !42, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !41, i64 432, !41, i64 434, !42, i64 436, !42, i64 440, !42, i64 444, !42, i64 448, !42, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !40, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !40, i64 484, !40, i64 488, !41, i64 492, !41, i64 494, !40, i64 496, !40, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !36, i64 514, !36, i64 515, !40, i64 516, !40, i64 520, !40, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !66, i64 544, !66, i64 560, !67, i64 576, !43, i64 592, !41, i64 608, !41, i64 610, !42, i64 612, !42, i64 616, !42, i64 620, !42, i64 624, !40, i64 628, !42, i64 632, !42, i64 636, !42, i64 640, !42, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !42, i64 660, !42, i64 664, !41, i64 668, !41, i64 670, !42, i64 672, !42, i64 676, !36, i64 680, !40, i64 1704, !41, i64 1708, !41, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !40, i64 2520, !41, i64 2524, !41, i64 2526, !42, i64 2528, !42, i64 2532, !41, i64 2536, !41, i64 2538, !42, i64 2540, !41, i64 2544, !41, i64 2546, !40, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !42, i64 2560, !42, i64 2564, !35, i64 2568, !40, i64 2576, !42, i64 2580, !36, i64 2584, !68, i64 2616, !40, i64 3976, !40, i64 3980}
!61 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !41, i64 8, !41, i64 10, !42, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !62, i64 24, !63, i64 184}
!62 = !{!"ColorManagedViewSettings", !40, i64 0, !40, i64 4, !36, i64 8, !36, i64 72, !42, i64 136, !42, i64 140, !35, i64 144, !35, i64 152}
!63 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!64 = !{!"QuicktimeCodecSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !41, i64 48, !41, i64 50, !40, i64 52, !40, i64 56, !40, i64 60}
!65 = !{!"FFMpegCodecData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !42, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !35, i64 64}
!66 = !{!"rctf", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!67 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!68 = !{!"BakeData", !61, i64 0, !36, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !42, i64 1280, !42, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!69 = !{!"AudioData", !40, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !40, i64 16, !41, i64 20, !41, i64 22, !42, i64 24, !42, i64 28}
!70 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!71 = !{!"GameData", !70, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !36, i64 34, !72, i64 40, !41, i64 64, !41, i64 66, !42, i64 68, !73, i64 72, !42, i64 128, !42, i64 132, !40, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180}
!72 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !42, i64 8, !42, i64 12, !35, i64 16}
!73 = !{!"RecastData", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !40, i64 40, !42, i64 44, !42, i64 48, !41, i64 52, !41, i64 54}
!74 = !{!"UnitSettings", !42, i64 0, !36, i64 4, !36, i64 5, !41, i64 6}
!75 = !{!"PhysicsSettings", !36, i64 0, !40, i64 12, !40, i64 16, !40, i64 20}
!76 = !{!"long", !36, i64 0}
!77 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!78 = !{!39, !40, i64 272}
!79 = !{!58, !40, i64 688}
!80 = !{!39, !40, i64 276}
!81 = !{!39, !42, i64 308}
!82 = !{!39, !42, i64 312}
!83 = !{!39, !42, i64 316}
!84 = !{!39, !41, i64 320}
!85 = !{!39, !41, i64 324}
!86 = !{!39, !41, i64 326}
!87 = !{!39, !41, i64 328}
!88 = !{!39, !35, i64 336}
!89 = !{!90, !35, i64 0}
!90 = !{!"SBScratch", !35, i64 0, !41, i64 8, !41, i64 10, !35, i64 16, !40, i64 24, !36, i64 28, !36, i64 40, !91, i64 56}
!91 = !{!"ReferenceState", !36, i64 0, !35, i64 16}
!92 = !{!90, !35, i64 16}
!93 = !{!90, !40, i64 24}
!94 = !{!42, !42, i64 0}
!95 = !{!90, !35, i64 72}
!96 = !{!39, !42, i64 344}
!97 = !{!39, !41, i64 286}
!98 = !{!39, !35, i64 352}
!99 = !{!39, !35, i64 376}
!100 = !{!39, !40, i64 468}
!101 = !{!39, !35, i64 8}
!102 = !{!39, !40, i64 0}
!103 = !{!104, !35, i64 152}
!104 = !{!"BodyPoint", !36, i64 0, !36, i64 12, !36, i64 24, !36, i64 36, !36, i64 48, !36, i64 60, !42, i64 72, !36, i64 76, !36, i64 88, !36, i64 100, !36, i64 112, !36, i64 124, !36, i64 136, !40, i64 148, !35, i64 152, !42, i64 160, !42, i64 164, !42, i64 168, !42, i64 172, !41, i64 176, !42, i64 180, !42, i64 184}
!105 = distinct !{!105, !106, !107}
!106 = !{!"llvm.loop.mustprogress"}
!107 = !{!"llvm.loop.unroll.disable"}
!108 = !{!39, !35, i64 16}
!109 = !{!39, !40, i64 300}
!110 = !{!39, !35, i64 288}
!111 = distinct !{!111, !106, !107}
!112 = !{!113, !35, i64 1248}
!113 = !{!"Object", !59, i64 0, !35, i64 120, !35, i64 128, !41, i64 136, !41, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !36, i64 152, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !114, i64 312, !35, i64 360, !43, i64 368, !43, i64 384, !43, i64 400, !43, i64 416, !40, i64 432, !40, i64 436, !35, i64 440, !35, i64 448, !40, i64 456, !40, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !42, i64 616, !42, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !40, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !36, i64 966, !36, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !42, i64 988, !42, i64 992, !42, i64 996, !42, i64 1000, !42, i64 1004, !42, i64 1008, !42, i64 1012, !42, i64 1016, !42, i64 1020, !42, i64 1024, !42, i64 1028, !42, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !36, i64 1042, !36, i64 1043, !41, i64 1044, !36, i64 1046, !36, i64 1047, !42, i64 1048, !42, i64 1052, !43, i64 1056, !43, i64 1072, !43, i64 1088, !43, i64 1104, !42, i64 1120, !41, i64 1124, !41, i64 1126, !36, i64 1128, !40, i64 1144, !40, i64 1148, !35, i64 1152, !36, i64 1160, !36, i64 1161, !41, i64 1162, !36, i64 1164, !43, i64 1176, !43, i64 1192, !43, i64 1208, !43, i64 1224, !35, i64 1240, !35, i64 1248, !35, i64 1256, !36, i64 1264, !36, i64 1265, !41, i64 1266, !42, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !76, i64 1304, !76, i64 1312, !40, i64 1320, !40, i64 1324, !43, i64 1328, !43, i64 1344, !35, i64 1360, !35, i64 1368, !35, i64 1376, !36, i64 1384, !35, i64 1392, !43, i64 1400, !35, i64 1416}
!114 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!115 = distinct !{!115, !106, !107}
!116 = !{!117, !40, i64 24}
!117 = !{!"PointCache", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !41, i64 60, !41, i64 62, !36, i64 64, !36, i64 128, !36, i64 192, !36, i64 256, !35, i64 1280, !43, i64 1288, !35, i64 1304, !35, i64 1312}
!118 = !{!40, !40, i64 0}
!119 = !{!113, !41, i64 1162}
!120 = !{!113, !41, i64 136}
!121 = !{!113, !35, i64 296}
!122 = !{!123, !40, i64 1284}
!123 = !{!"Mesh", !59, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !35, i64 160, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !35, i64 208, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !124, i64 280, !124, i64 480, !124, i64 680, !124, i64 880, !124, i64 1080, !40, i64 1280, !40, i64 1284, !40, i64 1288, !40, i64 1292, !40, i64 1296, !40, i64 1300, !40, i64 1304, !36, i64 1308, !36, i64 1320, !36, i64 1332, !40, i64 1344, !41, i64 1348, !41, i64 1350, !42, i64 1352, !40, i64 1356, !36, i64 1360, !36, i64 1361, !36, i64 1362, !36, i64 1363, !36, i64 1364, !36, i64 1365, !41, i64 1366, !35, i64 1368}
!124 = !{!"CustomData", !35, i64 0, !36, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !35, i64 184, !35, i64 192}
!125 = !{!123, !35, i64 240}
!126 = !{!123, !40, i64 1280}
!127 = !{!39, !41, i64 132}
!128 = !{!123, !35, i64 248}
!129 = !{!130, !35, i64 200}
!130 = !{!"Lattice", !59, i64 0, !35, i64 120, !41, i64 128, !41, i64 130, !41, i64 132, !41, i64 134, !41, i64 136, !41, i64 138, !41, i64 140, !41, i64 142, !36, i64 144, !36, i64 145, !36, i64 146, !36, i64 147, !40, i64 148, !42, i64 152, !42, i64 156, !42, i64 160, !42, i64 164, !42, i64 168, !42, i64 172, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !36, i64 208, !35, i64 272}
!131 = !{!132, !40, i64 8}
!132 = !{!"MDeformVert", !35, i64 0, !40, i64 8, !40, i64 12}
!133 = !{!132, !35, i64 0}
!134 = distinct !{!134, !106, !107}
!135 = !{!136, !40, i64 0}
!136 = !{!"MDeformWeight", !40, i64 0, !42, i64 4}
!137 = !{!136, !42, i64 4}
!138 = !{!104, !42, i64 72}
!139 = !{!36, !36, i64 0}
!140 = !{!104, !42, i64 184}
!141 = distinct !{!141, !106, !107}
!142 = !{!143, !40, i64 0}
!143 = !{!"MEdge", !40, i64 0, !40, i64 4, !36, i64 8, !36, i64 9, !41, i64 10}
!144 = !{!145, !40, i64 0}
!145 = !{!"BodySpring", !40, i64 0, !40, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !36, i64 20, !40, i64 32, !41, i64 36}
!146 = !{!143, !40, i64 4}
!147 = !{!145, !40, i64 4}
!148 = !{!145, !40, i64 32}
!149 = distinct !{!149, !106, !107}
!150 = !{!123, !35, i64 208}
!151 = !{!123, !40, i64 1288}
!152 = !{!153, !40, i64 12}
!153 = !{!"MFace", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !41, i64 16, !36, i64 18, !36, i64 19}
!154 = distinct !{!154, !106, !107}
!155 = !{!39, !40, i64 4}
!156 = !{!153, !40, i64 0}
!157 = !{!153, !40, i64 8}
!158 = !{!153, !40, i64 4}
!159 = distinct !{!159, !106, !107}
!160 = !{!39, !42, i64 304}
!161 = !{!123, !35, i64 232}
!162 = distinct !{!162, !106, !107}
!163 = !{!39, !41, i64 334}
!164 = !{!145, !42, i64 8}
!165 = distinct !{!165, !106, !107}
!166 = !{!130, !41, i64 128}
!167 = !{!130, !41, i64 130}
!168 = !{!130, !41, i64 132}
!169 = distinct !{!169, !106, !107}
!170 = !{!130, !35, i64 176}
!171 = distinct !{!171, !106, !107}
!172 = distinct !{!172, !106, !107}
!173 = distinct !{!173, !106, !107}
!174 = !{!175, !35, i64 72}
!175 = !{!"Nurb", !35, i64 0, !35, i64 8, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !40, i64 24, !40, i64 28, !36, i64 32, !41, i64 36, !41, i64 38, !41, i64 40, !41, i64 42, !41, i64 44, !41, i64 46, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !41, i64 80, !41, i64 82, !40, i64 84}
!176 = !{!175, !40, i64 24}
!177 = !{!178, !42, i64 40}
!178 = !{!"BezTriple", !36, i64 0, !42, i64 36, !42, i64 40, !42, i64 44, !36, i64 48, !36, i64 49, !36, i64 50, !36, i64 51, !36, i64 52, !36, i64 53, !36, i64 54, !36, i64 55, !42, i64 56, !42, i64 60, !42, i64 64, !36, i64 68}
!179 = !{!104, !41, i64 176}
!180 = distinct !{!180, !106, !107}
!181 = !{!175, !40, i64 28}
!182 = !{!175, !35, i64 64}
!183 = !{!184, !42, i64 20}
!184 = !{!"BPoint", !36, i64 0, !42, i64 16, !42, i64 20, !41, i64 24, !41, i64 26, !42, i64 28, !42, i64 32}
!185 = distinct !{!185, !106, !107}
!186 = distinct !{!186, !106, !107}
!187 = distinct !{!187, !106, !107}
!188 = distinct !{!188, !106, !107}
!189 = !{!90, !41, i64 8}
!190 = !{!104, !42, i64 180}
!191 = distinct !{!191, !106, !107}
!192 = !{!193, !40, i64 0}
!193 = !{!"BodyFace", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !36, i64 16, !41, i64 28}
!194 = !{!193, !40, i64 4}
!195 = !{!193, !40, i64 8}
!196 = !{!193, !40, i64 12}
!197 = distinct !{!197, !106, !107}
!198 = !{!117, !40, i64 16}
!199 = !{!58, !42, i64 692}
!200 = !{!39, !41, i64 284}
!201 = distinct !{!201, !106, !107}
!202 = !{!117, !40, i64 40}
!203 = !{!204, !35, i64 32}
!204 = !{!"Base", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !41, i64 28, !41, i64 30, !35, i64 32}
!205 = !{!204, !40, i64 16}
!206 = !{!113, !40, i64 944}
!207 = distinct !{!207, !106, !107}
!208 = !{!113, !35, i64 1240}
!209 = !{!210, !41, i64 4}
!210 = !{!"PartDeflect", !40, i64 0, !41, i64 4, !41, i64 6, !41, i64 8, !41, i64 10, !41, i64 12, !41, i64 14, !41, i64 16, !41, i64 18, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !42, i64 40, !42, i64 44, !42, i64 48, !42, i64 52, !42, i64 56, !42, i64 60, !42, i64 64, !42, i64 68, !42, i64 72, !42, i64 76, !42, i64 80, !42, i64 84, !42, i64 88, !42, i64 92, !42, i64 96, !42, i64 100, !42, i64 104, !42, i64 108, !42, i64 112, !42, i64 116, !42, i64 120, !42, i64 124, !35, i64 128, !35, i64 136, !42, i64 144, !40, i64 148, !35, i64 152}
!211 = !{!212, !40, i64 168}
!212 = !{!"CollisionModifierData", !213, i64 0, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !35, i64 160, !40, i64 168, !40, i64 172, !42, i64 176, !42, i64 180, !35, i64 184}
!213 = !{!"ModifierData", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !36, i64 32, !35, i64 96, !35, i64 104}
!214 = !{!212, !40, i64 172}
!215 = !{!216, !40, i64 0}
!216 = !{!"ccd_Mesh", !40, i64 0, !40, i64 4, !35, i64 8, !35, i64 16, !35, i64 24, !40, i64 32, !35, i64 40, !36, i64 48, !36, i64 60}
!217 = !{!216, !40, i64 4}
!218 = !{!210, !42, i64 92}
!219 = !{!210, !42, i64 96}
!220 = !{!216, !35, i64 16}
!221 = !{!216, !35, i64 8}
!222 = !{!212, !35, i64 120}
!223 = distinct !{!223, !106, !107}
!224 = !{!216, !35, i64 24}
!225 = !{!216, !35, i64 40}
!226 = !{!227, !42, i64 8}
!227 = !{!"ccdf_minmax", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20}
!228 = !{!227, !42, i64 4}
!229 = !{!227, !42, i64 0}
!230 = !{!227, !42, i64 20}
!231 = !{!227, !42, i64 16}
!232 = !{!227, !42, i64 12}
!233 = distinct !{!233, !106, !107}
!234 = distinct !{!234, !106, !107}
!235 = distinct !{!235, !106, !107}
!236 = !{!216, !40, i64 32}
!237 = distinct !{!237, !106, !107}
!238 = !{!212, !35, i64 160}
!239 = distinct !{!239, !106, !107}
!240 = !{!39, !41, i64 330}
!241 = distinct !{!241, !106, !107}
!242 = !{!90, !41, i64 10}
!243 = distinct !{!243, !106, !107}
!244 = distinct !{!244, !106, !107}
!245 = !{!39, !41, i64 332}
!246 = distinct !{!246, !106, !107}
!247 = !{!248, !40, i64 2100}
!248 = !{!"Global", !35, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !43, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !36, i64 2090, !41, i64 2092, !40, i64 2096, !40, i64 2100, !36, i64 2104, !40, i64 2108, !40, i64 2112, !36, i64 2116}
!249 = !{!104, !42, i64 168}
!250 = !{!104, !42, i64 172}
!251 = distinct !{!251, !106, !107}
!252 = distinct !{!252, !106, !107}
!253 = distinct !{!253, !106, !107}
!254 = !{!104, !40, i64 148}
!255 = distinct !{!255, !106, !107}
!256 = distinct !{!256, !106, !107}
!257 = distinct !{!257, !106, !107}
!258 = distinct !{!258, !106, !107}
!259 = distinct !{!259, !106, !107}
!260 = !{!248, !41, i64 2092}
!261 = !{!39, !41, i64 322}
!262 = distinct !{!262, !106, !107}
!263 = !{!264, !35, i64 0}
!264 = !{!"SB_thread_context", !35, i64 0, !35, i64 8, !42, i64 16, !42, i64 20, !40, i64 24, !40, i64 28, !35, i64 32, !40, i64 40, !42, i64 44, !42, i64 48, !40, i64 52, !40, i64 56}
!265 = !{!264, !35, i64 8}
!266 = !{!264, !42, i64 16}
!267 = !{!264, !42, i64 20}
!268 = !{!264, !40, i64 28}
!269 = !{!264, !40, i64 24}
!270 = !{!264, !35, i64 32}
!271 = !{!264, !40, i64 40}
!272 = !{!264, !42, i64 44}
!273 = !{!264, !42, i64 48}
!274 = !{!264, !40, i64 52}
!275 = !{!264, !40, i64 56}
!276 = distinct !{!276, !106, !107}
!277 = distinct !{!277, !106, !107}
!278 = distinct !{!278, !106, !107}
!279 = distinct !{!279, !106, !107}
!280 = distinct !{!280, !106, !107}
!281 = !{!58, !40, i64 4628}
!282 = !{!283, !42, i64 64}
!283 = !{!"EffectorWeights", !35, i64 0, !36, i64 8, !42, i64 64, !41, i64 68, !36, i64 70, !40, i64 76}
!284 = distinct !{!284, !106, !107}
!285 = distinct !{!285, !106, !107}
!286 = !{!104, !42, i64 160}
!287 = !{!104, !42, i64 164}
!288 = !{i32 0, i32 4}
!289 = !{!145, !41, i64 36}
!290 = !{!145, !42, i64 12}
!291 = distinct !{!291, !106, !107}
!292 = distinct !{!292, !106, !107}
!293 = distinct !{!293, !106, !107}
!294 = !{!39, !41, i64 198}
!295 = distinct !{!295, !106, !107}
!296 = !{!297, !35, i64 8}
!297 = !{!"GHashIterator", !35, i64 0, !35, i64 8, !40, i64 16}
!298 = !{!299, !35, i64 16}
!299 = !{!"_gh_Entry", !35, i64 0, !35, i64 8, !35, i64 16}
!300 = !{!299, !35, i64 8}
!301 = distinct !{!301, !106, !107}
!302 = distinct !{!302, !106, !107}
!303 = distinct !{!303, !106, !107}
!304 = !{!210, !42, i64 88}
!305 = !{!193, !41, i64 28}
!306 = distinct !{!306, !106, !107}
!307 = distinct !{!307, !106, !107}
!308 = distinct !{!308, !106, !107}
!309 = distinct !{!309, !106, !107}
!310 = distinct !{!310, !106, !107}
!311 = distinct !{!311, !106, !107}
!312 = distinct !{!312, !106, !107}
!313 = distinct !{!313, !106, !107}
!314 = distinct !{!314, !106, !107}
!315 = distinct !{!315, !106, !107}
!316 = distinct !{!316, !106, !107}
!317 = distinct !{!317, !106, !107}
