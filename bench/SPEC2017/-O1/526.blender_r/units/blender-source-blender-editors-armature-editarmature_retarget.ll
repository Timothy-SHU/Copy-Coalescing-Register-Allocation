; ModuleID = 'blender/source/blender/editors/armature/editarmature_retarget.c'
source_filename = "blender/source/blender/editors/armature/editarmature_retarget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.RigGraph = type { %struct.ListBase, %struct.ListBase, float, ptr, ptr, ptr, ptr, i32, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.RigArc = type { ptr, ptr, ptr, ptr, i32, float, i32, i32, i32, %struct.ListBase, i32, ptr }
%struct.BGraph = type { %struct.ListBase, %struct.ListBase, float, ptr, ptr, ptr, ptr }
%struct.RigEdge = type { ptr, ptr, [3 x float], [3 x float], float, float, float, ptr, [3 x float] }
%struct.EditBone = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], float, [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, float, float, float, float, i16 }
%struct.RigNode = type { ptr, ptr, [3 x float], i32, i32, ptr, i32, i32, i32, [3 x float], ptr }
%struct.RigControl = type { ptr, ptr, [3 x float], [3 x float], ptr, ptr, ptr, [3 x float], [3 x float], [4 x float], i32, i32 }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
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
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.bConstraintTypeInfo = type { i16, i16, [32 x i8], [32 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bConstraint = type { ptr, ptr, ptr, i16, i16, i8, i8, [64 x i8], i16, float, float, ptr, float, float }
%struct.bConstraintTarget = type { ptr, ptr, ptr, [64 x i8], [4 x [4 x float]], i16, i16, i16, i16 }
%struct._gh_Entry = type { ptr, ptr, ptr }
%struct.ReebArcIterator = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, i32, i32, ptr, i32, i32, i32 }
%struct.RetargetParam = type { ptr, ptr, ptr, ptr }
%struct.ReebArc = type { ptr, ptr, ptr, ptr, i32, float, i32, i32, i32, %struct.ListBase, i32, ptr, ptr, float, ptr }
%struct.ReebNode = type { ptr, ptr, [3 x float], i32, i32, ptr, i32, i32, i32, [3 x float], [3 x float], i32, float, i32, ptr, ptr }
%struct.EmbedBucket = type { float, i32, [3 x float], [3 x float] }
%struct.MemoNode = type { float, i32 }
%struct.CollectionPointerLink = type { ptr, ptr, %struct.PointerRNA }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.ReebGraph = type { %struct.ListBase, %struct.ListBase, float, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr }
%struct.BArcIterator = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, i32, i32 }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"---- \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"head\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"\09inner joints %0.3f %0.3f %0.3f\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"\09\09length %f\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"\09\09angle %f\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"\09\09%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"symmetry level: %i flag: %i group %i\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"tail\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"HEAD NODE:\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.13 = private unnamed_addr constant [10 x i8] c"EditBones\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"Last joint\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"Done\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"Bone offset\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"retargetting %s\0A\00", align 1
@GLOBAL_RIGG = internal unnamed_addr global ptr null, align 8
@.str.23 = private unnamed_addr constant [16 x i8] c"runtime: \09%.3f\0A\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"reeb: \09\09%.3f (%.1f%%)\0A\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"rig: \09\09%.3f (%.1f%%)\0A\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"retarget: \09%.3f (%.1f%%)\0A\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"Retarget Skeleton\00", align 1
@.str.28 = private unnamed_addr constant [32 x i8] c"%s %p %i <%0.3f, %0.3f, %0.3f>\0A\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"symmetry axis\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"%sBone: %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"%sLink: %s\0A\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"!NONE!\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"%soffset\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"%sFlag: %i\0A\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"rig graph\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"newRigGraph bones gh\00", align 1
@.str.39 = private unnamed_addr constant [20 x i8] c"newRigGraph cont gh\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"rig arc\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"rig node\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"rig edge\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"rig control\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"Best positions\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"memoization table\00", align 1
@.str.47 = private unnamed_addr constant [16 x i8] c"positions cache\00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c"cloneRigGraph gh\00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c"RetargetParam\00", align 1
@str = private unnamed_addr constant [16 x i8] c"Symmetry RADIAL\00", align 1
@str.50 = private unnamed_addr constant [15 x i8] c"Symmetry AXIAL\00", align 1
@str.51 = private unnamed_addr constant [15 x i8] c"---- ARCS ----\00", align 1
@str.52 = private unnamed_addr constant [16 x i8] c"HEAD NODE: NONE\00", align 1
@str.54 = private unnamed_addr constant [20 x i8] c"NOT ENOUGH BUCKETS!\00", align 1
@str.55 = private unnamed_addr constant [19 x i8] c"Reeb Graph created\00", align 1
@str.56 = private unnamed_addr constant [23 x i8] c"Armature graph created\00", align 1
@str.58 = private unnamed_addr constant [12 x i8] c"-----------\00", align 1
@str.59 = private unnamed_addr constant [16 x i8] c"armature cyclic\00", align 1

; Function Attrs: nounwind uwtable
define dso_local float @rollBoneByQuat(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #14
  %5 = load float, ptr %1, align 4, !tbaa !34
  store float %5, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %4, i64 1
  store float %7, ptr %8, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %4, i64 2
  store float %10, ptr %11, align 4, !tbaa !34
  call void @mul_qt_v3(ptr noundef %2, ptr noundef nonnull %4) #14
  %12 = call float @ED_rollBoneToVector(ptr noundef %0, ptr noundef nonnull %4, i8 noundef zeroext 0) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #14
  ret float %12
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @mul_qt_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @ED_rollBoneToVector(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @RIG_freeRigGraph(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 13
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  tail call void @BLI_task_pool_free(ptr noundef %3) #14
  %4 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  tail call void @BLI_task_scheduler_free(ptr noundef %5) #14
  %6 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !44
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void @REEB_freeGraph(ptr noundef nonnull %7) #14
  br label %10

10:                                               ; preds = %9, %1
  %11 = load ptr, ptr %0, align 8, !tbaa !45
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %10, %13
  %14 = phi ptr [ %16, %13 ], [ %11, %10 ]
  %15 = getelementptr inbounds %struct.RigArc, ptr %14, i64 0, i32 9
  tail call void @BLI_freelistN(ptr noundef nonnull %15) #14
  %16 = load ptr, ptr %14, align 8, !tbaa !45
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %13, !llvm.loop !46

18:                                               ; preds = %13, %10
  tail call void @BLI_freelistN(ptr noundef nonnull %0) #14
  %19 = getelementptr inbounds %struct.BGraph, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !45
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %18, %22
  %23 = phi ptr [ %24, %22 ], [ %20, %18 ]
  tail call void @BLI_freeNode(ptr noundef nonnull %0, ptr noundef nonnull %23) #14
  %24 = load ptr, ptr %23, align 8, !tbaa !45
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %22, !llvm.loop !49

26:                                               ; preds = %22, %18
  tail call void @BLI_freelistN(ptr noundef nonnull %19) #14
  %27 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 8
  tail call void @BLI_freelistN(ptr noundef nonnull %27) #14
  %28 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 14
  %29 = load ptr, ptr %28, align 8, !tbaa !50
  tail call void @BLI_ghash_free(ptr noundef %29, ptr noundef null, ptr noundef null) #14
  %30 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 15
  %31 = load ptr, ptr %30, align 8, !tbaa !51
  tail call void @BLI_ghash_free(ptr noundef %31, ptr noundef null, ptr noundef null) #14
  %32 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 7
  %33 = load i32, ptr %32, align 8, !tbaa !52
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 9
  %38 = load ptr, ptr %37, align 8, !tbaa !53
  tail call void @BLI_freelistN(ptr noundef %38) #14
  %39 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %40 = load ptr, ptr %37, align 8, !tbaa !53
  tail call void %39(ptr noundef %40) #14
  br label %41

41:                                               ; preds = %36, %26
  %42 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %42(ptr noundef nonnull %0) #14
  ret void
}

declare void @BLI_task_pool_free(ptr noundef) local_unnamed_addr #2

declare void @BLI_task_scheduler_free(ptr noundef) local_unnamed_addr #2

declare void @REEB_freeGraph(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @RIG_freeRigArc(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.RigArc, ptr %0, i64 0, i32 9
  tail call void @BLI_freelistN(ptr noundef nonnull %2) #14
  ret void
}

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

declare void @BLI_freeNode(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local void @RIG_printArcBones(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.RigArc, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %1, %15
  %6 = phi ptr [ %16, %15 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.RigEdge, ptr %6, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.EditBone, ptr %8, i64 0, i32 5
  %12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull %11)
  br label %15

13:                                               ; preds = %5
  %14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  br label %15

15:                                               ; preds = %10, %13
  %16 = load ptr, ptr %6, align 8, !tbaa !45
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %5, !llvm.loop !56

18:                                               ; preds = %15, %1
  %19 = tail call i32 @putchar(i32 10)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @RIG_printArc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.RigArc, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  %5 = getelementptr inbounds %struct.RigNode, ptr %4, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !59
  %7 = getelementptr inbounds %struct.RigNode, ptr %4, i64 0, i32 2
  %8 = load float, ptr %7, align 8, !tbaa !34
  %9 = fpext float %8 to double
  %10 = getelementptr inbounds %struct.RigNode, ptr %4, i64 0, i32 2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fpext float %11 to double
  %13 = getelementptr inbounds %struct.RigNode, ptr %4, i64 0, i32 2, i64 2
  %14 = load float, ptr %13, align 8, !tbaa !34
  %15 = fpext float %14 to double
  %16 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, ptr noundef nonnull @.str.3, ptr noundef %4, i32 noundef %6, double noundef %9, double noundef %12, double noundef %15)
  %17 = getelementptr inbounds %struct.RigNode, ptr %4, i64 0, i32 8
  %18 = load i32, ptr %17, align 8, !tbaa !61
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %2
  %22 = and i32 %18, 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = and i32 %18, 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24, %21
  %28 = phi ptr [ @str.50, %21 ], [ @str, %24 ]
  %29 = tail call i32 @puts(ptr nonnull dereferenceable(1) %28)
  br label %30

30:                                               ; preds = %27, %24
  %31 = getelementptr inbounds %struct.RigNode, ptr %4, i64 0, i32 9
  tail call void @print_v3(ptr noundef nonnull @.str.31, ptr noundef nonnull %31) #14
  br label %32

32:                                               ; preds = %2, %30
  %33 = getelementptr inbounds %struct.RigArc, ptr %1, i64 0, i32 9
  %34 = load ptr, ptr %33, align 8, !tbaa !45
  %35 = icmp eq ptr %34, null
  br i1 %35, label %67, label %36

36:                                               ; preds = %32, %64
  %37 = phi ptr [ %65, %64 ], [ %34, %32 ]
  %38 = getelementptr inbounds %struct.RigEdge, ptr %37, i64 0, i32 3
  %39 = load float, ptr %38, align 4, !tbaa !34
  %40 = fpext float %39 to double
  %41 = getelementptr inbounds %struct.RigEdge, ptr %37, i64 0, i32 3, i64 1
  %42 = load float, ptr %41, align 4, !tbaa !34
  %43 = fpext float %42 to double
  %44 = getelementptr inbounds %struct.RigEdge, ptr %37, i64 0, i32 3, i64 2
  %45 = load float, ptr %44, align 4, !tbaa !34
  %46 = fpext float %45 to double
  %47 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %40, double noundef %43, double noundef %46)
  %48 = getelementptr inbounds %struct.RigEdge, ptr %37, i64 0, i32 4
  %49 = load float, ptr %48, align 8, !tbaa !62
  %50 = fpext float %49 to double
  %51 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %50)
  %52 = getelementptr inbounds %struct.RigEdge, ptr %37, i64 0, i32 5
  %53 = load float, ptr %52, align 4, !tbaa !63
  %54 = fmul float %53, 0x404CA5DC20000000
  %55 = fpext float %54 to double
  %56 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %55)
  %57 = getelementptr inbounds %struct.RigEdge, ptr %37, i64 0, i32 7
  %58 = load ptr, ptr %57, align 8, !tbaa !54
  %59 = icmp eq ptr %58, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %36
  %61 = getelementptr inbounds %struct.EditBone, ptr %58, i64 0, i32 5
  %62 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef nonnull %61)
  %63 = load ptr, ptr %57, align 8, !tbaa !54
  tail call fastcc void @RIG_printLinkedCtrl(ptr noundef %0, ptr noundef %63, i32 noundef 3)
  br label %64

64:                                               ; preds = %36, %60
  %65 = load ptr, ptr %37, align 8, !tbaa !45
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %36, !llvm.loop !64

67:                                               ; preds = %64, %32
  %68 = getelementptr inbounds %struct.RigArc, ptr %1, i64 0, i32 6
  %69 = load i32, ptr %68, align 8, !tbaa !65
  %70 = getelementptr inbounds %struct.RigArc, ptr %1, i64 0, i32 8
  %71 = load i32, ptr %70, align 8, !tbaa !66
  %72 = getelementptr inbounds %struct.RigArc, ptr %1, i64 0, i32 7
  %73 = load i32, ptr %72, align 4, !tbaa !67
  %74 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %69, i32 noundef %71, i32 noundef %73)
  %75 = getelementptr inbounds %struct.RigArc, ptr %1, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !68
  %77 = getelementptr inbounds %struct.RigNode, ptr %76, i64 0, i32 4
  %78 = load i32, ptr %77, align 8, !tbaa !59
  %79 = getelementptr inbounds %struct.RigNode, ptr %76, i64 0, i32 2
  %80 = load float, ptr %79, align 8, !tbaa !34
  %81 = fpext float %80 to double
  %82 = getelementptr inbounds %struct.RigNode, ptr %76, i64 0, i32 2, i64 1
  %83 = load float, ptr %82, align 4, !tbaa !34
  %84 = fpext float %83 to double
  %85 = getelementptr inbounds %struct.RigNode, ptr %76, i64 0, i32 2, i64 2
  %86 = load float, ptr %85, align 8, !tbaa !34
  %87 = fpext float %86 to double
  %88 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, ptr noundef nonnull @.str.9, ptr noundef %76, i32 noundef %78, double noundef %81, double noundef %84, double noundef %87)
  %89 = getelementptr inbounds %struct.RigNode, ptr %76, i64 0, i32 8
  %90 = load i32, ptr %89, align 8, !tbaa !61
  %91 = and i32 %90, 1
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %104, label %93

93:                                               ; preds = %67
  %94 = and i32 %90, 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = and i32 %90, 8
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %96, %93
  %100 = phi ptr [ @str.50, %93 ], [ @str, %96 ]
  %101 = tail call i32 @puts(ptr nonnull dereferenceable(1) %100)
  br label %102

102:                                              ; preds = %99, %96
  %103 = getelementptr inbounds %struct.RigNode, ptr %76, i64 0, i32 9
  tail call void @print_v3(ptr noundef nonnull @.str.31, ptr noundef nonnull %103) #14
  br label %104

104:                                              ; preds = %67, %102
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @RIG_printLinkedCtrl(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca [128 x i8], align 16
  %5 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #14
  %6 = icmp sgt i32 %2, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = zext nneg i32 %2 to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %5, i8 9, i64 %8, i1 false), !tbaa !69
  %9 = zext nneg i32 %2 to i64
  %10 = getelementptr i8, ptr %5, i64 %9
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi ptr [ %5, %3 ], [ %10, %7 ]
  store i8 0, ptr %12, align 1, !tbaa !69
  %13 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !45
  %15 = icmp eq ptr %14, null
  br i1 %15, label %42, label %16

16:                                               ; preds = %11
  %17 = add nsw i32 %2, 1
  br label %18

18:                                               ; preds = %16, %39
  %19 = phi ptr [ %14, %16 ], [ %40, %39 ]
  %20 = getelementptr inbounds %struct.RigControl, ptr %19, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !70
  %22 = icmp eq ptr %21, %1
  br i1 %22, label %23, label %39

23:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #14
  %24 = getelementptr inbounds %struct.RigControl, ptr %19, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !72
  %26 = getelementptr inbounds %struct.EditBone, ptr %25, i64 0, i32 5
  %27 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, ptr noundef nonnull %5, ptr noundef nonnull %26)
  %28 = load ptr, ptr %20, align 8, !tbaa !70
  %29 = icmp eq ptr %28, null
  %30 = getelementptr inbounds %struct.EditBone, ptr %28, i64 0, i32 5
  %31 = select i1 %29, ptr @.str.34, ptr %30
  %32 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.33, ptr noundef nonnull %5, ptr noundef nonnull %31)
  %33 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 128, ptr noundef nonnull @.str.35, ptr noundef nonnull %5) #14
  %34 = getelementptr inbounds %struct.RigControl, ptr %19, i64 0, i32 8
  call void @print_v3(ptr noundef nonnull %4, ptr noundef nonnull %34) #14
  %35 = getelementptr inbounds %struct.RigControl, ptr %19, i64 0, i32 10
  %36 = load i32, ptr %35, align 8, !tbaa !73
  %37 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.36, ptr noundef nonnull %5, i32 noundef %36)
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #14
  %38 = load ptr, ptr %24, align 8, !tbaa !72
  call fastcc void @RIG_printLinkedCtrl(ptr noundef %0, ptr noundef %38, i32 noundef %17)
  br label %39

39:                                               ; preds = %18, %23
  %40 = load ptr, ptr %19, align 8, !tbaa !45
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %18, !llvm.loop !74

42:                                               ; preds = %39, %11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @RIG_printGraph(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.51)
  %3 = load ptr, ptr %0, align 8, !tbaa !45
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %8, %5 ], [ %3, %1 ]
  tail call void @RIG_printArc(ptr noundef nonnull %0, ptr noundef nonnull %6)
  %7 = tail call i32 @putchar(i32 10)
  %8 = load ptr, ptr %6, align 8, !tbaa !45
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5, !llvm.loop !75

10:                                               ; preds = %5, %1
  %11 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 10
  %12 = load ptr, ptr %11, align 8, !tbaa !76
  %13 = icmp eq ptr %12, null
  br i1 %13, label %42, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.RigNode, ptr %12, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !59
  %17 = getelementptr inbounds %struct.RigNode, ptr %12, i64 0, i32 2
  %18 = load float, ptr %17, align 8, !tbaa !34
  %19 = fpext float %18 to double
  %20 = getelementptr inbounds %struct.RigNode, ptr %12, i64 0, i32 2, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = fpext float %21 to double
  %23 = getelementptr inbounds %struct.RigNode, ptr %12, i64 0, i32 2, i64 2
  %24 = load float, ptr %23, align 8, !tbaa !34
  %25 = fpext float %24 to double
  %26 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, ptr noundef nonnull @.str.11, ptr noundef nonnull %12, i32 noundef %16, double noundef %19, double noundef %22, double noundef %25)
  %27 = getelementptr inbounds %struct.RigNode, ptr %12, i64 0, i32 8
  %28 = load i32, ptr %27, align 8, !tbaa !61
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %14
  %32 = and i32 %28, 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = and i32 %28, 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34, %31
  %38 = phi ptr [ @str.50, %31 ], [ @str, %34 ]
  %39 = tail call i32 @puts(ptr nonnull dereferenceable(1) %38)
  br label %40

40:                                               ; preds = %37, %34
  %41 = getelementptr inbounds %struct.RigNode, ptr %12, i64 0, i32 9
  tail call void @print_v3(ptr noundef nonnull @.str.31, ptr noundef nonnull %41) #14
  br label %44

42:                                               ; preds = %10
  %43 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.52)
  br label %44

44:                                               ; preds = %40, %14, %42
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RIG_graphFromArmature(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #14
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %7 = tail call ptr %6(i64 noundef 160, ptr noundef nonnull @.str.37) #14
  %8 = getelementptr inbounds %struct.RigGraph, ptr %7, i64 0, i32 10
  store ptr null, ptr %8, align 8, !tbaa !76
  %9 = tail call ptr @BLI_ghash_str_new(ptr noundef nonnull @.str.38) #14
  %10 = getelementptr inbounds %struct.RigGraph, ptr %7, i64 0, i32 14
  store ptr %9, ptr %10, align 8, !tbaa !50
  %11 = tail call ptr @BLI_ghash_str_new(ptr noundef nonnull @.str.39) #14
  %12 = getelementptr inbounds %struct.RigGraph, ptr %7, i64 0, i32 15
  store ptr %11, ptr %12, align 8, !tbaa !51
  %13 = getelementptr inbounds %struct.RigGraph, ptr %7, i64 0, i32 3
  store ptr @RIG_freeRigArc, ptr %13, align 8, !tbaa !77
  %14 = getelementptr inbounds %struct.RigGraph, ptr %7, i64 0, i32 4
  store ptr null, ptr %14, align 8, !tbaa !78
  %15 = tail call ptr @BLI_task_scheduler_create(i32 noundef 0) #14
  %16 = getelementptr inbounds %struct.RigGraph, ptr %7, i64 0, i32 12
  store ptr %15, ptr %16, align 8, !tbaa !43
  %17 = tail call ptr @BLI_task_pool_create(ptr noundef %15, ptr noundef null) #14
  %18 = getelementptr inbounds %struct.RigGraph, ptr %7, i64 0, i32 13
  store ptr %17, ptr %18, align 8, !tbaa !38
  %19 = icmp eq ptr %4, %1
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %22 = load ptr, ptr %21, align 8, !tbaa !79
  %23 = getelementptr inbounds %struct.bArmature, ptr %22, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !85
  %25 = getelementptr inbounds %struct.RigGraph, ptr %7, i64 0, i32 9
  store ptr %24, ptr %25, align 8, !tbaa !53
  br label %35

26:                                               ; preds = %3
  %27 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %28 = tail call ptr %27(i64 noundef 16, ptr noundef nonnull @.str.13) #14
  %29 = getelementptr inbounds %struct.RigGraph, ptr %7, i64 0, i32 9
  store ptr %28, ptr %29, align 8, !tbaa !53
  %30 = getelementptr inbounds %struct.bArmature, ptr %2, i64 0, i32 2
  %31 = tail call ptr @make_boneList(ptr noundef %28, ptr noundef nonnull %30, ptr noundef null, ptr noundef null) #14
  %32 = getelementptr inbounds %struct.RigGraph, ptr %7, i64 0, i32 7
  %33 = load i32, ptr %32, align 8, !tbaa !52
  %34 = or i32 %33, 1
  store i32 %34, ptr %32, align 8, !tbaa !52
  br label %35

35:                                               ; preds = %26, %20
  %36 = getelementptr inbounds %struct.RigGraph, ptr %7, i64 0, i32 16
  store ptr %1, ptr %36, align 8, !tbaa !87
  %37 = getelementptr inbounds %struct.RigGraph, ptr %7, i64 0, i32 9
  %38 = load ptr, ptr %37, align 8, !tbaa !53
  %39 = load ptr, ptr %38, align 8, !tbaa !45
  %40 = icmp eq ptr %39, null
  br i1 %40, label %51, label %41

41:                                               ; preds = %35, %48
  %42 = phi ptr [ %49, %48 ], [ %39, %35 ]
  %43 = getelementptr inbounds %struct.EditBone, ptr %42, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !88
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load ptr, ptr %37, align 8, !tbaa !53
  tail call fastcc void @RIG_arcFromBoneChain(ptr noundef %7, ptr noundef %47, ptr noundef nonnull %42, ptr noundef null, i8 noundef zeroext 0)
  br label %48

48:                                               ; preds = %41, %46
  %49 = load ptr, ptr %42, align 8, !tbaa !45
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %41, !llvm.loop !90

51:                                               ; preds = %48, %35
  tail call void @BLI_removeDoubleNodes(ptr noundef %7, float noundef 0x3F50624DE0000000) #14
  tail call fastcc void @RIG_removeNormalNodes(ptr noundef %7)
  tail call fastcc void @RIG_removeUneededOffsets(ptr noundef %7)
  tail call void @BLI_buildAdjacencyList(ptr noundef %7) #14
  %52 = load ptr, ptr %8, align 8, !tbaa !76
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %84

54:                                               ; preds = %51
  %55 = tail call i32 @BLI_countlist(ptr noundef %7) #14
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load ptr, ptr %7, align 8, !tbaa !91
  %59 = getelementptr inbounds %struct.RigArc, ptr %58, i64 0, i32 2
  br label %75

60:                                               ; preds = %54, %64
  %61 = phi ptr [ %62, %64 ], [ %7, %54 ]
  %62 = load ptr, ptr %61, align 8, !tbaa !45
  %63 = icmp eq ptr %62, null
  br i1 %63, label %78, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.RigArc, ptr %62, i64 0, i32 9, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !92
  %67 = getelementptr inbounds %struct.RigEdge, ptr %66, i64 0, i32 7
  %68 = load ptr, ptr %67, align 8, !tbaa !54
  %69 = getelementptr inbounds %struct.EditBone, ptr %68, i64 0, i32 9
  %70 = load i32, ptr %69, align 4, !tbaa !93
  %71 = and i32 %70, 5
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %60, label %73

73:                                               ; preds = %64
  %74 = getelementptr inbounds %struct.RigArc, ptr %62, i64 0, i32 3
  br label %75, !llvm.loop !94

75:                                               ; preds = %57, %73
  %76 = phi ptr [ %74, %73 ], [ %59, %57 ]
  %77 = load ptr, ptr %76, align 8, !tbaa !45
  store ptr %77, ptr %8, align 8, !tbaa !76
  br label %78

78:                                               ; preds = %60, %75
  %79 = load ptr, ptr %8, align 8, !tbaa !76
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.RigGraph, ptr %7, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !95
  store ptr %83, ptr %8, align 8, !tbaa !76
  br label %84

84:                                               ; preds = %51, %78, %81
  %85 = load ptr, ptr %8, align 8, !tbaa !76
  %86 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 20
  %87 = load ptr, ptr %86, align 8, !tbaa !96
  %88 = getelementptr inbounds %struct.ToolSettings, ptr %87, i64 0, i32 32
  %89 = load float, ptr %88, align 8, !tbaa !115
  tail call void @BLI_markdownSymmetry(ptr noundef %7, ptr noundef %85, float noundef %89) #14
  tail call fastcc void @RIG_reconnectControlBones(ptr noundef %7)
  %90 = tail call zeroext i8 @BLI_isGraphCyclic(ptr noundef %7) #14
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %84
  %93 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.59)
  br label %94

94:                                               ; preds = %92, %84
  ret ptr %7
}

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare ptr @make_boneList(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @RIG_arcFromBoneChain(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x [3 x float]], align 16
  %9 = alloca [3 x float], align 4
  %10 = icmp eq ptr %2, null
  br i1 %10, label %265, label %11

11:                                               ; preds = %5
  %12 = icmp eq i8 %4, 0
  %13 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 8
  %14 = getelementptr inbounds float, ptr %7, i64 1
  %15 = getelementptr inbounds float, ptr %7, i64 2
  %16 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2
  %17 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2, i64 1
  %18 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2, i64 2
  %19 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 15
  %20 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 14
  %21 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 1
  %22 = getelementptr inbounds float, ptr %9, i64 1
  %23 = getelementptr inbounds float, ptr %9, i64 2
  %24 = getelementptr inbounds [3 x [3 x float]], ptr %8, i64 0, i64 2
  %25 = getelementptr inbounds [3 x [3 x float]], ptr %8, i64 0, i64 2, i64 1
  %26 = getelementptr inbounds [3 x [3 x float]], ptr %8, i64 0, i64 2, i64 2
  %27 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 1
  %28 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 1
  br label %29

29:                                               ; preds = %11, %259
  %30 = phi i1 [ %10, %11 ], [ %261, %259 ]
  %31 = phi ptr [ %2, %11 ], [ %247, %259 ]
  %32 = phi i32 [ 0, %11 ], [ %185, %259 ]
  %33 = phi ptr [ null, %11 ], [ %184, %259 ]
  %34 = phi ptr [ %2, %11 ], [ %183, %259 ]
  %35 = phi ptr [ %2, %11 ], [ %260, %259 ]
  %36 = phi ptr [ %3, %11 ], [ %182, %259 ]
  br i1 %12, label %42, label %37

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.EditBone, ptr %35, i64 0, i32 9
  %39 = load i32, ptr %38, align 4, !tbaa !93
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %181, label %42

42:                                               ; preds = %37, %29
  %43 = getelementptr inbounds %struct.EditBone, ptr %35, i64 0, i32 9
  %44 = load i32, ptr %43, align 4, !tbaa !93
  %45 = and i32 %44, 4096
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %136

47:                                               ; preds = %42
  %48 = load ptr, ptr %20, align 8, !tbaa !50
  %49 = getelementptr inbounds %struct.EditBone, ptr %35, i64 0, i32 5
  call void @BLI_ghash_insert(ptr noundef %48, ptr noundef nonnull %49, ptr noundef nonnull %35) #14
  %50 = icmp eq ptr %33, null
  br i1 %50, label %51, label %77

51:                                               ; preds = %47
  %52 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %53 = call ptr %52(i64 noundef 88, ptr noundef nonnull @.str.40) #14
  %54 = getelementptr inbounds %struct.RigArc, ptr %53, i64 0, i32 10
  store i32 0, ptr %54, align 8, !tbaa !122
  call void @BLI_addtail(ptr noundef %0, ptr noundef %53) #14
  %55 = icmp eq ptr %36, null
  br i1 %55, label %56, label %70

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.EditBone, ptr %31, i64 0, i32 7
  %58 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %59 = call ptr %58(i64 noundef 80, ptr noundef nonnull @.str.41) #14
  call void @BLI_addtail(ptr noundef nonnull %21, ptr noundef %59) #14
  %60 = getelementptr inbounds %struct.RigNode, ptr %59, i64 0, i32 2
  %61 = load float, ptr %57, align 4, !tbaa !34
  store float %61, ptr %60, align 4, !tbaa !34
  %62 = getelementptr inbounds %struct.EditBone, ptr %31, i64 0, i32 7, i64 1
  %63 = load float, ptr %62, align 4, !tbaa !34
  %64 = getelementptr inbounds %struct.RigNode, ptr %59, i64 0, i32 2, i64 1
  store float %63, ptr %64, align 4, !tbaa !34
  %65 = getelementptr inbounds %struct.EditBone, ptr %31, i64 0, i32 7, i64 2
  %66 = load float, ptr %65, align 4, !tbaa !34
  %67 = getelementptr inbounds %struct.RigNode, ptr %59, i64 0, i32 2, i64 2
  store float %66, ptr %67, align 4, !tbaa !34
  %68 = getelementptr inbounds %struct.RigNode, ptr %59, i64 0, i32 4
  store i32 1, ptr %68, align 8, !tbaa !59
  %69 = getelementptr inbounds %struct.RigNode, ptr %59, i64 0, i32 5
  store ptr null, ptr %69, align 8, !tbaa !123
  br label %74

70:                                               ; preds = %51
  %71 = getelementptr inbounds %struct.RigNode, ptr %36, i64 0, i32 4
  %72 = load i32, ptr %71, align 8, !tbaa !59
  %73 = add nsw i32 %72, 1
  store i32 %73, ptr %71, align 8, !tbaa !59
  br label %74

74:                                               ; preds = %70, %56
  %75 = phi ptr [ %59, %56 ], [ %36, %70 ]
  %76 = getelementptr inbounds %struct.RigArc, ptr %53, i64 0, i32 2
  store ptr %75, ptr %76, align 8, !tbaa !57
  br label %77

77:                                               ; preds = %74, %47
  %78 = phi ptr [ %36, %47 ], [ %75, %74 ]
  %79 = phi ptr [ %33, %47 ], [ %53, %74 ]
  %80 = getelementptr inbounds %struct.EditBone, ptr %35, i64 0, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !88
  %82 = icmp eq ptr %81, null
  br i1 %82, label %100, label %83

83:                                               ; preds = %77
  %84 = load i32, ptr %43, align 4, !tbaa !93
  %85 = and i32 %84, 16
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.EditBone, ptr %35, i64 0, i32 7
  %89 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %90 = call ptr %89(i64 noundef 80, ptr noundef nonnull @.str.42) #14
  %91 = getelementptr inbounds %struct.RigEdge, ptr %90, i64 0, i32 3
  %92 = load float, ptr %88, align 4, !tbaa !34
  store float %92, ptr %91, align 4, !tbaa !34
  %93 = getelementptr inbounds %struct.EditBone, ptr %35, i64 0, i32 7, i64 1
  %94 = load float, ptr %93, align 4, !tbaa !34
  %95 = getelementptr inbounds %struct.RigEdge, ptr %90, i64 0, i32 3, i64 1
  store float %94, ptr %95, align 4, !tbaa !34
  %96 = getelementptr inbounds %struct.EditBone, ptr %35, i64 0, i32 7, i64 2
  %97 = load float, ptr %96, align 4, !tbaa !34
  %98 = getelementptr inbounds %struct.RigEdge, ptr %90, i64 0, i32 3, i64 2
  store float %97, ptr %98, align 4, !tbaa !34
  %99 = getelementptr inbounds %struct.RigEdge, ptr %90, i64 0, i32 7
  store ptr null, ptr %99, align 8, !tbaa !54
  call fastcc void @RIG_appendEdgeToArc(ptr noundef %79, ptr noundef %90)
  br label %100

100:                                              ; preds = %87, %83, %77
  %101 = getelementptr inbounds %struct.EditBone, ptr %35, i64 0, i32 8
  %102 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %103 = call ptr %102(i64 noundef 80, ptr noundef nonnull @.str.42) #14
  %104 = getelementptr inbounds %struct.RigEdge, ptr %103, i64 0, i32 3
  %105 = load float, ptr %101, align 4, !tbaa !34
  store float %105, ptr %104, align 4, !tbaa !34
  %106 = getelementptr inbounds %struct.EditBone, ptr %35, i64 0, i32 8, i64 1
  %107 = load float, ptr %106, align 4, !tbaa !34
  %108 = getelementptr inbounds %struct.RigEdge, ptr %103, i64 0, i32 3, i64 1
  store float %107, ptr %108, align 4, !tbaa !34
  %109 = getelementptr inbounds %struct.EditBone, ptr %35, i64 0, i32 8, i64 2
  %110 = load float, ptr %109, align 4, !tbaa !34
  %111 = getelementptr inbounds %struct.RigEdge, ptr %103, i64 0, i32 3, i64 2
  store float %110, ptr %111, align 4, !tbaa !34
  %112 = getelementptr inbounds %struct.RigEdge, ptr %103, i64 0, i32 7
  store ptr %35, ptr %112, align 8, !tbaa !54
  %113 = getelementptr inbounds %struct.EditBone, ptr %35, i64 0, i32 6
  %114 = load float, ptr %113, align 8, !tbaa !124
  %115 = getelementptr inbounds %struct.RigEdge, ptr %103, i64 0, i32 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #14
  %116 = getelementptr inbounds %struct.EditBone, ptr %35, i64 0, i32 7
  %117 = load float, ptr %101, align 4, !tbaa !34
  %118 = load float, ptr %116, align 4, !tbaa !34
  %119 = fsub float %117, %118
  store float %119, ptr %9, align 4, !tbaa !34
  %120 = load float, ptr %106, align 4, !tbaa !34
  %121 = getelementptr inbounds %struct.EditBone, ptr %35, i64 0, i32 7, i64 1
  %122 = load float, ptr %121, align 4, !tbaa !34
  %123 = fsub float %120, %122
  store float %123, ptr %22, align 4, !tbaa !34
  %124 = load float, ptr %109, align 4, !tbaa !34
  %125 = getelementptr inbounds %struct.EditBone, ptr %35, i64 0, i32 7, i64 2
  %126 = load float, ptr %125, align 4, !tbaa !34
  %127 = fsub float %124, %126
  store float %127, ptr %23, align 4, !tbaa !34
  call void @vec_roll_to_mat3(ptr noundef nonnull %9, float noundef %114, ptr noundef nonnull %8) #14
  %128 = load float, ptr %24, align 8, !tbaa !34
  store float %128, ptr %115, align 4, !tbaa !34
  %129 = load float, ptr %25, align 4, !tbaa !34
  %130 = getelementptr inbounds %struct.RigEdge, ptr %103, i64 0, i32 8, i64 1
  store float %129, ptr %130, align 4, !tbaa !34
  %131 = load float, ptr %26, align 16, !tbaa !34
  %132 = getelementptr inbounds %struct.RigEdge, ptr %103, i64 0, i32 8, i64 2
  store float %131, ptr %132, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #14
  call fastcc void @RIG_appendEdgeToArc(ptr noundef %79, ptr noundef %103)
  %133 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %49, ptr noundef nonnull dereferenceable(5) @.str.3) #15
  %134 = icmp eq i32 %133, 0
  %135 = select i1 %134, i32 1, i32 %32
  br label %181

136:                                              ; preds = %42
  %137 = and i32 %44, 524288
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %181

139:                                              ; preds = %136
  %140 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %141 = call ptr %140(i64 noundef 112, ptr noundef nonnull @.str.43) #14
  call void @BLI_addtail(ptr noundef nonnull %13, ptr noundef %141) #14
  %142 = getelementptr inbounds %struct.RigControl, ptr %141, i64 0, i32 4
  store ptr %35, ptr %142, align 8, !tbaa !72
  %143 = getelementptr inbounds %struct.RigControl, ptr %141, i64 0, i32 2
  %144 = getelementptr inbounds %struct.EditBone, ptr %35, i64 0, i32 7
  %145 = load float, ptr %144, align 4, !tbaa !34
  store float %145, ptr %143, align 4, !tbaa !34
  %146 = getelementptr inbounds %struct.EditBone, ptr %35, i64 0, i32 7, i64 1
  %147 = load float, ptr %146, align 4, !tbaa !34
  %148 = getelementptr inbounds %struct.RigControl, ptr %141, i64 0, i32 2, i64 1
  store float %147, ptr %148, align 4, !tbaa !34
  %149 = getelementptr inbounds %struct.EditBone, ptr %35, i64 0, i32 7, i64 2
  %150 = load float, ptr %149, align 4, !tbaa !34
  %151 = getelementptr inbounds %struct.RigControl, ptr %141, i64 0, i32 2, i64 2
  store float %150, ptr %151, align 4, !tbaa !34
  %152 = getelementptr inbounds %struct.RigControl, ptr %141, i64 0, i32 3
  %153 = getelementptr inbounds %struct.EditBone, ptr %35, i64 0, i32 8
  %154 = load float, ptr %153, align 4, !tbaa !34
  store float %154, ptr %152, align 4, !tbaa !34
  %155 = getelementptr inbounds %struct.EditBone, ptr %35, i64 0, i32 8, i64 1
  %156 = load float, ptr %155, align 4, !tbaa !34
  %157 = getelementptr inbounds %struct.RigControl, ptr %141, i64 0, i32 3, i64 1
  store float %156, ptr %157, align 4, !tbaa !34
  %158 = getelementptr inbounds %struct.EditBone, ptr %35, i64 0, i32 8, i64 2
  %159 = load float, ptr %158, align 4, !tbaa !34
  %160 = getelementptr inbounds %struct.RigControl, ptr %141, i64 0, i32 3, i64 2
  store float %159, ptr %160, align 4, !tbaa !34
  %161 = getelementptr inbounds %struct.EditBone, ptr %35, i64 0, i32 6
  %162 = load float, ptr %161, align 8, !tbaa !124
  %163 = getelementptr inbounds %struct.RigControl, ptr %141, i64 0, i32 7
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #14
  %164 = load float, ptr %153, align 4, !tbaa !34
  %165 = load float, ptr %144, align 4, !tbaa !34
  %166 = fsub float %164, %165
  store float %166, ptr %7, align 4, !tbaa !34
  %167 = load float, ptr %155, align 4, !tbaa !34
  %168 = load float, ptr %146, align 4, !tbaa !34
  %169 = fsub float %167, %168
  store float %169, ptr %14, align 4, !tbaa !34
  %170 = load float, ptr %158, align 4, !tbaa !34
  %171 = load float, ptr %149, align 4, !tbaa !34
  %172 = fsub float %170, %171
  store float %172, ptr %15, align 4, !tbaa !34
  call void @vec_roll_to_mat3(ptr noundef nonnull %7, float noundef %162, ptr noundef nonnull %6) #14
  %173 = load float, ptr %16, align 8, !tbaa !34
  store float %173, ptr %163, align 4, !tbaa !34
  %174 = load float, ptr %17, align 4, !tbaa !34
  %175 = getelementptr inbounds %struct.RigControl, ptr %141, i64 0, i32 7, i64 1
  store float %174, ptr %175, align 4, !tbaa !34
  %176 = load float, ptr %18, align 16, !tbaa !34
  %177 = getelementptr inbounds %struct.RigControl, ptr %141, i64 0, i32 7, i64 2
  store float %176, ptr %177, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #14
  %178 = getelementptr inbounds %struct.RigControl, ptr %141, i64 0, i32 11
  store i32 0, ptr %178, align 4, !tbaa !125
  %179 = load ptr, ptr %19, align 8, !tbaa !51
  %180 = getelementptr inbounds %struct.EditBone, ptr %35, i64 0, i32 5
  call void @BLI_ghash_insert(ptr noundef %179, ptr noundef nonnull %180, ptr noundef %141) #14
  br label %181

181:                                              ; preds = %100, %139, %136, %37
  %182 = phi ptr [ %36, %139 ], [ %36, %136 ], [ %36, %37 ], [ %78, %100 ]
  %183 = phi ptr [ %34, %139 ], [ %34, %136 ], [ %34, %37 ], [ %35, %100 ]
  %184 = phi ptr [ %33, %139 ], [ %33, %136 ], [ %33, %37 ], [ %79, %100 ]
  %185 = phi i32 [ %32, %139 ], [ %32, %136 ], [ %32, %37 ], [ %135, %100 ]
  %186 = load ptr, ptr %1, align 8, !tbaa !45
  %187 = icmp eq ptr %186, null
  br i1 %187, label %198, label %188

188:                                              ; preds = %181, %188
  %189 = phi ptr [ %196, %188 ], [ %186, %181 ]
  %190 = phi i32 [ %195, %188 ], [ 0, %181 ]
  %191 = getelementptr inbounds %struct.EditBone, ptr %189, i64 0, i32 3
  %192 = load ptr, ptr %191, align 8, !tbaa !88
  %193 = icmp eq ptr %192, %35
  %194 = zext i1 %193 to i32
  %195 = add nuw nsw i32 %190, %194
  %196 = load ptr, ptr %189, align 8, !tbaa !45
  %197 = icmp eq ptr %196, null
  br i1 %197, label %198, label %188, !llvm.loop !126

198:                                              ; preds = %188, %181
  %199 = phi i32 [ 0, %181 ], [ %195, %188 ]
  %200 = icmp ult i32 %199, 2
  br i1 %200, label %246, label %201

201:                                              ; preds = %198
  %202 = icmp eq ptr %184, null
  %203 = getelementptr inbounds %struct.EditBone, ptr %35, i64 0, i32 8
  %204 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %205 = call ptr %204(i64 noundef 80, ptr noundef nonnull @.str.41) #14
  %206 = getelementptr inbounds %struct.RigNode, ptr %205, i64 0, i32 2
  %207 = getelementptr inbounds %struct.EditBone, ptr %35, i64 0, i32 8, i64 1
  %208 = getelementptr inbounds %struct.RigNode, ptr %205, i64 0, i32 2, i64 1
  %209 = getelementptr inbounds %struct.EditBone, ptr %35, i64 0, i32 8, i64 2
  %210 = getelementptr inbounds %struct.RigNode, ptr %205, i64 0, i32 2, i64 2
  %211 = getelementptr inbounds %struct.RigNode, ptr %205, i64 0, i32 4
  %212 = getelementptr inbounds %struct.RigNode, ptr %205, i64 0, i32 5
  br i1 %202, label %218, label %213

213:                                              ; preds = %201
  call void @BLI_addtail(ptr noundef nonnull %27, ptr noundef %205) #14
  %214 = load float, ptr %203, align 4, !tbaa !34
  store float %214, ptr %206, align 4, !tbaa !34
  %215 = load float, ptr %207, align 4, !tbaa !34
  store float %215, ptr %208, align 4, !tbaa !34
  %216 = load float, ptr %209, align 4, !tbaa !34
  store float %216, ptr %210, align 4, !tbaa !34
  store i32 0, ptr %211, align 8, !tbaa !59
  store ptr null, ptr %212, align 8, !tbaa !123
  store i32 1, ptr %211, align 8, !tbaa !59
  %217 = getelementptr inbounds %struct.RigArc, ptr %184, i64 0, i32 3
  store ptr %205, ptr %217, align 8, !tbaa !68
  br label %222

218:                                              ; preds = %201
  call void @BLI_addtail(ptr noundef nonnull %28, ptr noundef %205) #14
  %219 = load float, ptr %203, align 4, !tbaa !34
  store float %219, ptr %206, align 4, !tbaa !34
  %220 = load float, ptr %207, align 4, !tbaa !34
  store float %220, ptr %208, align 4, !tbaa !34
  %221 = load float, ptr %209, align 4, !tbaa !34
  store float %221, ptr %210, align 4, !tbaa !34
  store i32 0, ptr %211, align 8, !tbaa !59
  store ptr null, ptr %212, align 8, !tbaa !123
  br label %222

222:                                              ; preds = %218, %213
  %223 = call i32 @llvm.umax.i32(i32 %199, i32 1)
  br label %224

224:                                              ; preds = %222, %242
  %225 = phi i32 [ 0, %222 ], [ %244, %242 ]
  %226 = load ptr, ptr %1, align 8, !tbaa !45
  %227 = icmp eq ptr %226, null
  br i1 %227, label %242, label %228

228:                                              ; preds = %224, %238
  %229 = phi ptr [ %240, %238 ], [ %226, %224 ]
  %230 = phi i32 [ %239, %238 ], [ %225, %224 ]
  %231 = getelementptr inbounds %struct.EditBone, ptr %229, i64 0, i32 3
  %232 = load ptr, ptr %231, align 8, !tbaa !88
  %233 = icmp eq ptr %232, %35
  br i1 %233, label %234, label %238

234:                                              ; preds = %228
  %235 = icmp eq i32 %230, 0
  br i1 %235, label %242, label %236

236:                                              ; preds = %234
  %237 = add nsw i32 %230, -1
  br label %238

238:                                              ; preds = %236, %228
  %239 = phi i32 [ %237, %236 ], [ %230, %228 ]
  %240 = load ptr, ptr %229, align 8, !tbaa !45
  %241 = icmp eq ptr %240, null
  br i1 %241, label %242, label %228, !llvm.loop !127

242:                                              ; preds = %234, %238, %224
  %243 = phi ptr [ null, %224 ], [ %229, %234 ], [ null, %238 ]
  call fastcc void @RIG_arcFromBoneChain(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %243, ptr noundef %205, i8 noundef zeroext %4)
  %244 = add nuw i32 %225, 1
  %245 = icmp eq i32 %244, %223
  br i1 %245, label %246, label %224, !llvm.loop !128

246:                                              ; preds = %242, %198
  %247 = phi ptr [ %31, %198 ], [ %243, %242 ]
  br i1 %200, label %248, label %262

248:                                              ; preds = %246
  %249 = load ptr, ptr %1, align 8, !tbaa !45
  %250 = icmp eq ptr %249, null
  br i1 %250, label %259, label %251

251:                                              ; preds = %248, %256
  %252 = phi ptr [ %257, %256 ], [ %249, %248 ]
  %253 = getelementptr inbounds %struct.EditBone, ptr %252, i64 0, i32 3
  %254 = load ptr, ptr %253, align 8, !tbaa !88
  %255 = icmp eq ptr %254, %35
  br i1 %255, label %259, label %256

256:                                              ; preds = %251
  %257 = load ptr, ptr %252, align 8, !tbaa !45
  %258 = icmp eq ptr %257, null
  br i1 %258, label %259, label %251, !llvm.loop !127

259:                                              ; preds = %256, %251, %248
  %260 = phi ptr [ null, %248 ], [ null, %256 ], [ %252, %251 ]
  %261 = icmp eq ptr %260, null
  br i1 %261, label %262, label %29, !llvm.loop !129

262:                                              ; preds = %246, %259
  %263 = phi i1 [ %261, %259 ], [ %30, %246 ]
  %264 = icmp eq i32 %185, 0
  br label %265

265:                                              ; preds = %262, %5
  %266 = phi i1 [ %10, %5 ], [ %263, %262 ]
  %267 = phi ptr [ %2, %5 ], [ %183, %262 ]
  %268 = phi ptr [ null, %5 ], [ %184, %262 ]
  %269 = phi i1 [ true, %5 ], [ %264, %262 ]
  %270 = icmp ne ptr %268, null
  %271 = and i1 %266, %270
  br i1 %271, label %272, label %288

272:                                              ; preds = %265
  %273 = getelementptr inbounds %struct.EditBone, ptr %267, i64 0, i32 8
  %274 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %275 = call ptr %274(i64 noundef 80, ptr noundef nonnull @.str.41) #14
  %276 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 1
  call void @BLI_addtail(ptr noundef nonnull %276, ptr noundef %275) #14
  %277 = getelementptr inbounds %struct.RigNode, ptr %275, i64 0, i32 2
  %278 = load float, ptr %273, align 4, !tbaa !34
  store float %278, ptr %277, align 4, !tbaa !34
  %279 = getelementptr inbounds %struct.EditBone, ptr %267, i64 0, i32 8, i64 1
  %280 = load float, ptr %279, align 4, !tbaa !34
  %281 = getelementptr inbounds %struct.RigNode, ptr %275, i64 0, i32 2, i64 1
  store float %280, ptr %281, align 4, !tbaa !34
  %282 = getelementptr inbounds %struct.EditBone, ptr %267, i64 0, i32 8, i64 2
  %283 = load float, ptr %282, align 4, !tbaa !34
  %284 = getelementptr inbounds %struct.RigNode, ptr %275, i64 0, i32 2, i64 2
  store float %283, ptr %284, align 4, !tbaa !34
  %285 = getelementptr inbounds %struct.RigNode, ptr %275, i64 0, i32 4
  store i32 0, ptr %285, align 8, !tbaa !59
  %286 = getelementptr inbounds %struct.RigNode, ptr %275, i64 0, i32 5
  store ptr null, ptr %286, align 8, !tbaa !123
  store i32 1, ptr %285, align 8, !tbaa !59
  %287 = getelementptr inbounds %struct.RigArc, ptr %268, i64 0, i32 3
  store ptr %275, ptr %287, align 8, !tbaa !68
  br label %288

288:                                              ; preds = %272, %265
  br i1 %269, label %293, label %289

289:                                              ; preds = %288
  %290 = getelementptr inbounds %struct.RigArc, ptr %268, i64 0, i32 3
  %291 = load ptr, ptr %290, align 8, !tbaa !68
  %292 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 10
  store ptr %291, ptr %292, align 8, !tbaa !76
  br label %293

293:                                              ; preds = %289, %288
  ret void
}

declare void @BLI_removeDoubleNodes(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @RIG_removeNormalNodes(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !95
  %4 = icmp eq ptr %3, null
  br i1 %4, label %60, label %5

5:                                                ; preds = %1, %58
  %6 = phi ptr [ %7, %58 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !130
  %8 = getelementptr inbounds %struct.RigNode, ptr %6, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !59
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %58

11:                                               ; preds = %5
  %12 = load ptr, ptr %0, align 8, !tbaa !45, !nonnull !131, !noundef !131
  br label %13

13:                                               ; preds = %11, %25
  %14 = phi ptr [ %27, %25 ], [ %12, %11 ]
  %15 = phi ptr [ %26, %25 ], [ null, %11 ]
  %16 = getelementptr inbounds %struct.RigArc, ptr %14, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !57
  %18 = icmp eq ptr %17, %6
  br i1 %18, label %23, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.RigArc, ptr %14, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !68
  %22 = icmp eq ptr %21, %6
  br i1 %22, label %23, label %25

23:                                               ; preds = %19, %13
  %24 = icmp eq ptr %15, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %23, %19
  %26 = phi ptr [ %15, %19 ], [ %14, %23 ]
  %27 = load ptr, ptr %14, align 8, !tbaa !45
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %13, !llvm.loop !132

29:                                               ; preds = %25, %23
  %30 = phi ptr [ %15, %23 ], [ %26, %25 ]
  %31 = phi ptr [ %14, %23 ], [ null, %25 ]
  %32 = getelementptr inbounds %struct.RigArc, ptr %30, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !57
  %34 = getelementptr inbounds %struct.RigArc, ptr %31, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !57
  %36 = icmp eq ptr %33, %35
  br i1 %36, label %58, label %37

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.RigArc, ptr %30, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !68
  %40 = getelementptr inbounds %struct.RigArc, ptr %31, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !68
  %42 = icmp eq ptr %39, %41
  br i1 %42, label %58, label %43

43:                                               ; preds = %37
  %44 = icmp eq ptr %33, %41
  %45 = select i1 %44, ptr %30, ptr %31
  %46 = select i1 %44, ptr %31, ptr %30
  %47 = getelementptr inbounds %struct.RigArc, ptr %45, i64 0, i32 9
  %48 = load ptr, ptr %47, align 8, !tbaa !133
  %49 = icmp eq ptr %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %43, %50
  %51 = phi ptr [ %52, %50 ], [ %48, %43 ]
  %52 = load ptr, ptr %51, align 8, !tbaa !134
  tail call fastcc void @RIG_appendEdgeToArc(ptr noundef %46, ptr noundef nonnull %51)
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %50, !llvm.loop !135

54:                                               ; preds = %50, %43
  %55 = getelementptr inbounds %struct.RigArc, ptr %45, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !68
  %57 = getelementptr inbounds %struct.RigArc, ptr %46, i64 0, i32 3
  store ptr %56, ptr %57, align 8, !tbaa !68
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %47, i8 0, i64 16, i1 false)
  tail call void @BLI_removeArc(ptr noundef nonnull %0, ptr noundef %45) #14
  tail call void @BLI_removeNode(ptr noundef nonnull %0, ptr noundef nonnull %6) #14
  br label %58

58:                                               ; preds = %54, %37, %29, %5
  %59 = icmp eq ptr %7, null
  br i1 %59, label %60, label %5, !llvm.loop !136

60:                                               ; preds = %58, %1
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @RIG_removeUneededOffsets(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !45
  %3 = icmp eq ptr %2, null
  br i1 %3, label %232, label %4

4:                                                ; preds = %1, %229
  %5 = phi ptr [ %230, %229 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.RigArc, ptr %5, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !133
  %8 = getelementptr inbounds %struct.RigArc, ptr %5, i64 0, i32 9, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !92
  %10 = getelementptr inbounds %struct.RigEdge, ptr %7, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !54
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %169

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.RigEdge, ptr %7, i64 0, i32 3
  %15 = getelementptr inbounds %struct.RigArc, ptr %5, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !57
  %17 = getelementptr inbounds %struct.RigNode, ptr %16, i64 0, i32 2
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = load float, ptr %14, align 4, !tbaa !34
  %20 = fsub float %18, %19
  %21 = getelementptr inbounds %struct.RigNode, ptr %16, i64 0, i32 2, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = getelementptr inbounds %struct.RigEdge, ptr %7, i64 0, i32 3, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = fsub float %22, %24
  %26 = getelementptr inbounds %struct.RigNode, ptr %16, i64 0, i32 2, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !34
  %28 = getelementptr inbounds %struct.RigEdge, ptr %7, i64 0, i32 3, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = fsub float %27, %29
  %31 = fmul float %25, %25
  %32 = tail call float @llvm.fmuladd.f32(float %20, float %20, float %31)
  %33 = tail call float @llvm.fmuladd.f32(float %30, float %30, float %32)
  %34 = tail call float @sqrtf(float noundef %33) #14
  %35 = fcmp ugt float %34, 0x3F50624DE0000000
  br i1 %35, label %38, label %36

36:                                               ; preds = %13
  tail call void @BLI_remlink(ptr noundef nonnull %6, ptr noundef %7) #14
  %37 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %37(ptr noundef %7) #14
  br label %169

38:                                               ; preds = %13
  %39 = load ptr, ptr %15, align 8, !tbaa !57
  %40 = getelementptr inbounds %struct.RigNode, ptr %39, i64 0, i32 4
  %41 = load i32, ptr %40, align 8, !tbaa !59
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load ptr, ptr %0, align 8, !tbaa !45
  %45 = icmp eq ptr %44, null
  br i1 %45, label %93, label %67

46:                                               ; preds = %38
  %47 = tail call ptr @BLI_FindNodeByPosition(ptr noundef nonnull %0, ptr noundef nonnull %14, float noundef 0x3F50624DE0000000) #14
  %48 = icmp eq ptr %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  tail call void @BLI_remlink(ptr noundef nonnull %6, ptr noundef %7) #14
  %50 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %50(ptr noundef %7) #14
  %51 = load ptr, ptr %15, align 8, !tbaa !57
  tail call void @BLI_replaceNodeInArc(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %47, ptr noundef %51) #14
  br label %169

52:                                               ; preds = %46
  %53 = load ptr, ptr %7, align 8, !tbaa !134
  %54 = icmp eq ptr %53, null
  br i1 %54, label %169, label %55

55:                                               ; preds = %52
  tail call void @BLI_remlink(ptr noundef nonnull %6, ptr noundef nonnull %7) #14
  %56 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %56(ptr noundef nonnull %7) #14
  %57 = load ptr, ptr %15, align 8, !tbaa !57
  %58 = getelementptr inbounds %struct.RigNode, ptr %57, i64 0, i32 2
  %59 = getelementptr inbounds %struct.RigEdge, ptr %53, i64 0, i32 2
  %60 = load float, ptr %59, align 4, !tbaa !34
  store float %60, ptr %58, align 4, !tbaa !34
  %61 = getelementptr inbounds %struct.RigEdge, ptr %53, i64 0, i32 2, i64 1
  %62 = load float, ptr %61, align 4, !tbaa !34
  %63 = getelementptr inbounds %struct.RigNode, ptr %57, i64 0, i32 2, i64 1
  store float %62, ptr %63, align 4, !tbaa !34
  %64 = getelementptr inbounds %struct.RigEdge, ptr %53, i64 0, i32 2, i64 2
  %65 = load float, ptr %64, align 4, !tbaa !34
  %66 = getelementptr inbounds %struct.RigNode, ptr %57, i64 0, i32 2, i64 2
  store float %65, ptr %66, align 4, !tbaa !34
  br label %169

67:                                               ; preds = %43, %90
  %68 = phi ptr [ %91, %90 ], [ %44, %43 ]
  %69 = icmp eq ptr %68, %5
  br i1 %69, label %90, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.RigArc, ptr %68, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !57
  %73 = icmp eq ptr %72, %39
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.RigArc, ptr %68, i64 0, i32 9
  %76 = load ptr, ptr %75, align 8, !tbaa !133
  %77 = getelementptr inbounds %struct.RigEdge, ptr %76, i64 0, i32 7
  %78 = load ptr, ptr %77, align 8, !tbaa !54
  %79 = icmp eq ptr %78, null
  br i1 %79, label %90, label %169

80:                                               ; preds = %70
  %81 = getelementptr inbounds %struct.RigArc, ptr %68, i64 0, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !68
  %83 = icmp eq ptr %82, %39
  br i1 %83, label %84, label %90

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.RigArc, ptr %68, i64 0, i32 9, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !92
  %87 = getelementptr inbounds %struct.RigEdge, ptr %86, i64 0, i32 7
  %88 = load ptr, ptr %87, align 8, !tbaa !54
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %169

90:                                               ; preds = %74, %84, %80, %67
  %91 = load ptr, ptr %68, align 8, !tbaa !45
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %67, !llvm.loop !137

93:                                               ; preds = %90, %43
  %94 = tail call ptr @BLI_FindNodeByPosition(ptr noundef nonnull %0, ptr noundef nonnull %14, float noundef 0x3F50624DE0000000) #14
  %95 = icmp eq ptr %94, null
  br i1 %95, label %127, label %96

96:                                               ; preds = %93
  %97 = load ptr, ptr %0, align 8, !tbaa !45
  %98 = icmp eq ptr %97, null
  br i1 %98, label %124, label %99

99:                                               ; preds = %96, %121
  %100 = phi ptr [ %122, %121 ], [ %97, %96 ]
  %101 = icmp eq ptr %100, %5
  br i1 %101, label %121, label %102

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.RigArc, ptr %100, i64 0, i32 2
  %104 = load ptr, ptr %103, align 8, !tbaa !57
  %105 = load ptr, ptr %15, align 8, !tbaa !57
  %106 = icmp eq ptr %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  tail call void @BLI_replaceNodeInArc(ptr noundef nonnull %0, ptr noundef nonnull %100, ptr noundef nonnull %94, ptr noundef %104) #14
  %108 = getelementptr inbounds %struct.RigArc, ptr %100, i64 0, i32 9
  %109 = load ptr, ptr %108, align 8, !tbaa !133
  tail call void @BLI_remlink(ptr noundef nonnull %108, ptr noundef %109) #14
  br label %118

110:                                              ; preds = %102
  %111 = getelementptr inbounds %struct.RigArc, ptr %100, i64 0, i32 3
  %112 = load ptr, ptr %111, align 8, !tbaa !68
  %113 = icmp eq ptr %112, %105
  br i1 %113, label %114, label %121

114:                                              ; preds = %110
  tail call void @BLI_replaceNodeInArc(ptr noundef nonnull %0, ptr noundef nonnull %100, ptr noundef nonnull %94, ptr noundef %112) #14
  %115 = getelementptr inbounds %struct.RigArc, ptr %100, i64 0, i32 9
  %116 = getelementptr inbounds %struct.RigArc, ptr %100, i64 0, i32 9, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !92
  tail call void @BLI_remlink(ptr noundef nonnull %115, ptr noundef %117) #14
  br label %118

118:                                              ; preds = %114, %107
  %119 = phi ptr [ %109, %107 ], [ %117, %114 ]
  %120 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %120(ptr noundef %119) #14
  br label %121

121:                                              ; preds = %118, %110, %99
  %122 = load ptr, ptr %100, align 8, !tbaa !45
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %99, !llvm.loop !138

124:                                              ; preds = %121, %96
  tail call void @BLI_remlink(ptr noundef nonnull %6, ptr noundef %7) #14
  %125 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %125(ptr noundef %7) #14
  %126 = load ptr, ptr %15, align 8, !tbaa !57
  tail call void @BLI_replaceNodeInArc(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %94, ptr noundef %126) #14
  br label %169

127:                                              ; preds = %93
  %128 = load ptr, ptr %7, align 8, !tbaa !134
  %129 = icmp eq ptr %128, null
  br i1 %129, label %169, label %130

130:                                              ; preds = %127
  tail call void @BLI_remlink(ptr noundef nonnull %6, ptr noundef nonnull %7) #14
  %131 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %131(ptr noundef nonnull %7) #14
  %132 = load ptr, ptr %15, align 8, !tbaa !57
  %133 = getelementptr inbounds %struct.RigNode, ptr %132, i64 0, i32 2
  %134 = getelementptr inbounds %struct.RigEdge, ptr %128, i64 0, i32 2
  %135 = load float, ptr %134, align 4, !tbaa !34
  store float %135, ptr %133, align 4, !tbaa !34
  %136 = getelementptr inbounds %struct.RigEdge, ptr %128, i64 0, i32 2, i64 1
  %137 = load float, ptr %136, align 4, !tbaa !34
  %138 = getelementptr inbounds %struct.RigNode, ptr %132, i64 0, i32 2, i64 1
  store float %137, ptr %138, align 4, !tbaa !34
  %139 = getelementptr inbounds %struct.RigEdge, ptr %128, i64 0, i32 2, i64 2
  %140 = load float, ptr %139, align 4, !tbaa !34
  %141 = getelementptr inbounds %struct.RigNode, ptr %132, i64 0, i32 2, i64 2
  store float %140, ptr %141, align 4, !tbaa !34
  %142 = load ptr, ptr %0, align 8, !tbaa !45
  %143 = icmp eq ptr %142, null
  br i1 %143, label %169, label %144

144:                                              ; preds = %130, %166
  %145 = phi ptr [ %167, %166 ], [ %142, %130 ]
  %146 = icmp eq ptr %145, %5
  br i1 %146, label %166, label %147

147:                                              ; preds = %144
  %148 = getelementptr inbounds %struct.RigArc, ptr %145, i64 0, i32 2
  %149 = load ptr, ptr %148, align 8, !tbaa !57
  %150 = load ptr, ptr %15, align 8, !tbaa !57
  %151 = icmp eq ptr %149, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %147
  %153 = getelementptr inbounds %struct.RigArc, ptr %145, i64 0, i32 9
  %154 = load ptr, ptr %153, align 8, !tbaa !133
  tail call void @BLI_remlink(ptr noundef nonnull %153, ptr noundef %154) #14
  br label %163

155:                                              ; preds = %147
  %156 = getelementptr inbounds %struct.RigArc, ptr %145, i64 0, i32 3
  %157 = load ptr, ptr %156, align 8, !tbaa !68
  %158 = icmp eq ptr %157, %150
  br i1 %158, label %159, label %166

159:                                              ; preds = %155
  %160 = getelementptr inbounds %struct.RigArc, ptr %145, i64 0, i32 9
  %161 = getelementptr inbounds %struct.RigArc, ptr %145, i64 0, i32 9, i32 1
  %162 = load ptr, ptr %161, align 8, !tbaa !92
  tail call void @BLI_remlink(ptr noundef nonnull %160, ptr noundef %162) #14
  br label %163

163:                                              ; preds = %159, %152
  %164 = phi ptr [ %154, %152 ], [ %162, %159 ]
  %165 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %165(ptr noundef %164) #14
  br label %166

166:                                              ; preds = %163, %155, %144
  %167 = load ptr, ptr %145, align 8, !tbaa !45
  %168 = icmp eq ptr %167, null
  br i1 %168, label %169, label %144, !llvm.loop !139

169:                                              ; preds = %84, %74, %166, %130, %127, %124, %49, %55, %52, %36, %4
  %170 = getelementptr inbounds %struct.RigEdge, ptr %9, i64 0, i32 7
  %171 = load ptr, ptr %170, align 8, !tbaa !54
  %172 = icmp eq ptr %171, null
  br i1 %172, label %173, label %229

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.RigEdge, ptr %9, i64 0, i32 2
  %175 = getelementptr inbounds %struct.RigArc, ptr %5, i64 0, i32 3
  %176 = load ptr, ptr %175, align 8, !tbaa !68
  %177 = getelementptr inbounds %struct.RigNode, ptr %176, i64 0, i32 2
  %178 = load float, ptr %177, align 4, !tbaa !34
  %179 = load float, ptr %174, align 4, !tbaa !34
  %180 = fsub float %178, %179
  %181 = getelementptr inbounds %struct.RigNode, ptr %176, i64 0, i32 2, i64 1
  %182 = load float, ptr %181, align 4, !tbaa !34
  %183 = getelementptr inbounds %struct.RigEdge, ptr %9, i64 0, i32 2, i64 1
  %184 = load float, ptr %183, align 4, !tbaa !34
  %185 = fsub float %182, %184
  %186 = getelementptr inbounds %struct.RigNode, ptr %176, i64 0, i32 2, i64 2
  %187 = load float, ptr %186, align 4, !tbaa !34
  %188 = getelementptr inbounds %struct.RigEdge, ptr %9, i64 0, i32 2, i64 2
  %189 = load float, ptr %188, align 4, !tbaa !34
  %190 = fsub float %187, %189
  %191 = fmul float %185, %185
  %192 = tail call float @llvm.fmuladd.f32(float %180, float %180, float %191)
  %193 = tail call float @llvm.fmuladd.f32(float %190, float %190, float %192)
  %194 = tail call float @sqrtf(float noundef %193) #14
  %195 = fcmp ugt float %194, 0x3F50624DE0000000
  br i1 %195, label %198, label %196

196:                                              ; preds = %173
  tail call void @BLI_remlink(ptr noundef nonnull %6, ptr noundef %9) #14
  %197 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %197(ptr noundef %9) #14
  br label %229

198:                                              ; preds = %173
  %199 = load ptr, ptr %175, align 8, !tbaa !68
  %200 = getelementptr inbounds %struct.RigNode, ptr %199, i64 0, i32 4
  %201 = load i32, ptr %200, align 8, !tbaa !59
  %202 = icmp eq i32 %201, 1
  br i1 %202, label %203, label %229

203:                                              ; preds = %198
  %204 = tail call ptr @BLI_FindNodeByPosition(ptr noundef nonnull %0, ptr noundef nonnull %174, float noundef 0x3F50624DE0000000) #14
  %205 = icmp eq ptr %204, null
  %206 = getelementptr inbounds %struct.RigEdge, ptr %9, i64 0, i32 1
  %207 = load ptr, ptr %206, align 8, !tbaa !140
  br i1 %205, label %214, label %208

208:                                              ; preds = %203
  tail call void @BLI_remlink(ptr noundef nonnull %6, ptr noundef %9) #14
  %209 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %209(ptr noundef %9) #14
  %210 = load ptr, ptr %175, align 8, !tbaa !68
  tail call void @BLI_replaceNodeInArc(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %204, ptr noundef %210) #14
  %211 = icmp eq ptr %207, null
  br i1 %211, label %229, label %212

212:                                              ; preds = %208
  %213 = getelementptr inbounds %struct.RigEdge, ptr %207, i64 0, i32 5
  store float 0.000000e+00, ptr %213, align 4, !tbaa !63
  br label %229

214:                                              ; preds = %203
  %215 = icmp eq ptr %207, null
  br i1 %215, label %229, label %216

216:                                              ; preds = %214
  tail call void @BLI_remlink(ptr noundef nonnull %6, ptr noundef %9) #14
  %217 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %217(ptr noundef %9) #14
  %218 = load ptr, ptr %175, align 8, !tbaa !68
  %219 = getelementptr inbounds %struct.RigNode, ptr %218, i64 0, i32 2
  %220 = getelementptr inbounds %struct.RigEdge, ptr %207, i64 0, i32 3
  %221 = load float, ptr %220, align 4, !tbaa !34
  store float %221, ptr %219, align 4, !tbaa !34
  %222 = getelementptr inbounds %struct.RigEdge, ptr %207, i64 0, i32 3, i64 1
  %223 = load float, ptr %222, align 4, !tbaa !34
  %224 = getelementptr inbounds %struct.RigNode, ptr %218, i64 0, i32 2, i64 1
  store float %223, ptr %224, align 4, !tbaa !34
  %225 = getelementptr inbounds %struct.RigEdge, ptr %207, i64 0, i32 3, i64 2
  %226 = load float, ptr %225, align 4, !tbaa !34
  %227 = getelementptr inbounds %struct.RigNode, ptr %218, i64 0, i32 2, i64 2
  store float %226, ptr %227, align 4, !tbaa !34
  %228 = getelementptr inbounds %struct.RigEdge, ptr %207, i64 0, i32 5
  store float 0.000000e+00, ptr %228, align 4, !tbaa !63
  br label %229

229:                                              ; preds = %212, %208, %216, %214, %196, %198, %169
  %230 = load ptr, ptr %5, align 8, !tbaa !45
  %231 = icmp eq ptr %230, null
  br i1 %231, label %232, label %4, !llvm.loop !141

232:                                              ; preds = %229, %1
  ret void
}

declare void @BLI_buildAdjacencyList(ptr noundef) local_unnamed_addr #2

declare void @BLI_markdownSymmetry(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @RIG_reconnectControlBones(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca %struct.ListBase, align 8
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.GHashIterator, align 8
  %5 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 16
  %10 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 14
  %11 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 14
  br label %16

12:                                               ; preds = %254, %1
  %13 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 15
  %14 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 16
  %15 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 15
  br label %260

16:                                               ; preds = %8, %254
  %17 = phi ptr [ %6, %8 ], [ %255, %254 ]
  %18 = load ptr, ptr %9, align 8, !tbaa !87
  %19 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 18
  %20 = load ptr, ptr %19, align 8, !tbaa !142
  %21 = load ptr, ptr %20, align 8, !tbaa !45
  %22 = icmp eq ptr %21, null
  br i1 %22, label %104, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.RigControl, ptr %17, i64 0, i32 4
  br label %29

25:                                               ; preds = %100, %29
  %26 = phi i32 [ %31, %29 ], [ %101, %100 ]
  %27 = load ptr, ptr %30, align 8, !tbaa !45
  %28 = icmp eq ptr %27, null
  br i1 %28, label %104, label %29, !llvm.loop !143

29:                                               ; preds = %23, %25
  %30 = phi ptr [ %21, %23 ], [ %27, %25 ]
  %31 = phi i32 [ 0, %23 ], [ %26, %25 ]
  %32 = getelementptr inbounds %struct.bPoseChannel, ptr %30, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !45
  %34 = icmp eq ptr %33, null
  br i1 %34, label %25, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.bPoseChannel, ptr %30, i64 0, i32 4
  br label %37

37:                                               ; preds = %35, %100
  %38 = phi ptr [ %33, %35 ], [ %102, %100 ]
  %39 = phi i32 [ %31, %35 ], [ %101, %100 ]
  %40 = call ptr @BKE_constraint_typeinfo_get(ptr noundef nonnull %38) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %41 = icmp eq ptr %40, null
  br i1 %41, label %100, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %40, i64 0, i32 8
  %44 = load ptr, ptr %43, align 8, !tbaa !144
  %45 = icmp eq ptr %44, null
  br i1 %45, label %100, label %46

46:                                               ; preds = %42
  %47 = call i32 %44(ptr noundef nonnull %38, ptr noundef nonnull %2) #14
  %48 = load ptr, ptr %2, align 8, !tbaa !45
  %49 = icmp eq ptr %48, null
  br i1 %49, label %94, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.bConstraint, ptr %38, i64 0, i32 3
  br label %52

52:                                               ; preds = %50, %89
  %53 = phi ptr [ %48, %50 ], [ %92, %89 ]
  %54 = phi i32 [ 0, %50 ], [ %91, %89 ]
  %55 = phi i32 [ %39, %50 ], [ %90, %89 ]
  %56 = getelementptr inbounds %struct.bConstraintTarget, ptr %53, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !146
  %58 = load ptr, ptr %9, align 8, !tbaa !87
  %59 = icmp eq ptr %57, %58
  br i1 %59, label %60, label %89

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.bConstraintTarget, ptr %53, i64 0, i32 3
  %62 = load ptr, ptr %24, align 8, !tbaa !72
  %63 = getelementptr inbounds %struct.EditBone, ptr %62, i64 0, i32 5
  %64 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %61, ptr noundef nonnull dereferenceable(1) %63) #15
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %89

66:                                               ; preds = %60
  %67 = load ptr, ptr %10, align 8, !tbaa !50
  %68 = call ptr @BLI_ghash_lookup(ptr noundef %67, ptr noundef nonnull %36) #14
  %69 = icmp eq ptr %68, null
  br i1 %69, label %89, label %70

70:                                               ; preds = %66
  %71 = load i16, ptr %51, align 8, !tbaa !148
  %72 = icmp eq i16 %71, 3
  %73 = icmp eq i32 %54, 1
  %74 = select i1 %72, i1 %73, i1 false
  br i1 %74, label %75, label %86

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.EditBone, ptr %68, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !88
  %78 = icmp eq ptr %77, null
  br i1 %78, label %86, label %79

79:                                               ; preds = %75
  %80 = load ptr, ptr %10, align 8, !tbaa !50
  %81 = getelementptr inbounds %struct.EditBone, ptr %77, i64 0, i32 5
  %82 = call zeroext i8 @BLI_ghash_haskey(ptr noundef %80, ptr noundef nonnull %81) #14
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %79
  %85 = load ptr, ptr %76, align 8, !tbaa !88
  br label %86

86:                                               ; preds = %75, %79, %84, %70
  %87 = phi ptr [ %85, %84 ], [ %68, %79 ], [ %68, %75 ], [ %68, %70 ]
  %88 = call fastcc i32 @RIG_parentControl(ptr noundef nonnull %17, ptr noundef %87), !range !150
  br label %89

89:                                               ; preds = %66, %86, %52, %60
  %90 = phi i32 [ %55, %60 ], [ %55, %52 ], [ %88, %86 ], [ %55, %66 ]
  %91 = add nuw nsw i32 %54, 1
  %92 = load ptr, ptr %53, align 8, !tbaa !45
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %52, !llvm.loop !151

94:                                               ; preds = %89, %46
  %95 = phi i32 [ %39, %46 ], [ %90, %89 ]
  %96 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %40, i64 0, i32 9
  %97 = load ptr, ptr %96, align 8, !tbaa !152
  %98 = icmp eq ptr %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %94
  call void %97(ptr noundef nonnull %38, ptr noundef nonnull %2, i8 noundef zeroext 0) #14
  br label %100

100:                                              ; preds = %94, %99, %42, %37
  %101 = phi i32 [ %39, %42 ], [ %39, %37 ], [ %95, %99 ], [ %95, %94 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  %102 = load ptr, ptr %38, align 8, !tbaa !45
  %103 = icmp eq ptr %102, null
  br i1 %103, label %25, label %37, !llvm.loop !153

104:                                              ; preds = %25, %16
  %105 = phi i32 [ 0, %16 ], [ %26, %25 ]
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %204

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.RigControl, ptr %17, i64 0, i32 4
  %109 = load ptr, ptr %108, align 8, !tbaa !72
  %110 = getelementptr inbounds %struct.EditBone, ptr %109, i64 0, i32 3
  %111 = load ptr, ptr %110, align 8, !tbaa !88
  %112 = icmp eq ptr %111, null
  br i1 %112, label %118, label %113

113:                                              ; preds = %107
  %114 = load ptr, ptr %11, align 8, !tbaa !50
  %115 = getelementptr inbounds %struct.EditBone, ptr %111, i64 0, i32 5
  %116 = call ptr @BLI_ghash_lookup(ptr noundef %114, ptr noundef nonnull %115) #14
  %117 = call fastcc i32 @RIG_parentControl(ptr noundef nonnull %17, ptr noundef %116), !range !150
  br label %118

118:                                              ; preds = %113, %107
  %119 = load ptr, ptr %0, align 8, !tbaa !45
  %120 = icmp eq ptr %119, null
  br i1 %120, label %201, label %126

121:                                              ; preds = %196, %126
  %122 = phi ptr [ %129, %126 ], [ %197, %196 ]
  %123 = phi ptr [ %128, %126 ], [ %198, %196 ]
  %124 = load ptr, ptr %127, align 8, !tbaa !45
  %125 = icmp eq ptr %124, null
  br i1 %125, label %201, label %126, !llvm.loop !154

126:                                              ; preds = %118, %121
  %127 = phi ptr [ %124, %121 ], [ %119, %118 ]
  %128 = phi ptr [ %123, %121 ], [ null, %118 ]
  %129 = phi ptr [ %122, %121 ], [ null, %118 ]
  %130 = getelementptr inbounds %struct.RigArc, ptr %127, i64 0, i32 9
  %131 = load ptr, ptr %130, align 8, !tbaa !45
  %132 = icmp eq ptr %131, null
  br i1 %132, label %121, label %133

133:                                              ; preds = %126
  %134 = getelementptr inbounds %struct.RigArc, ptr %127, i64 0, i32 6
  br label %135

135:                                              ; preds = %133, %196
  %136 = phi ptr [ %131, %133 ], [ %199, %196 ]
  %137 = phi ptr [ %128, %133 ], [ %198, %196 ]
  %138 = phi ptr [ %129, %133 ], [ %197, %196 ]
  %139 = getelementptr inbounds %struct.RigEdge, ptr %136, i64 0, i32 7
  %140 = load ptr, ptr %139, align 8, !tbaa !54
  %141 = icmp eq ptr %140, null
  br i1 %141, label %196, label %142

142:                                              ; preds = %135
  %143 = load ptr, ptr %108, align 8, !tbaa !72
  %144 = getelementptr inbounds %struct.EditBone, ptr %143, i64 0, i32 7
  %145 = getelementptr inbounds %struct.EditBone, ptr %140, i64 0, i32 7
  %146 = load float, ptr %145, align 4, !tbaa !34
  %147 = load float, ptr %144, align 4, !tbaa !34
  %148 = fsub float %146, %147
  %149 = getelementptr inbounds %struct.EditBone, ptr %140, i64 0, i32 7, i64 1
  %150 = load float, ptr %149, align 4, !tbaa !34
  %151 = getelementptr inbounds %struct.EditBone, ptr %143, i64 0, i32 7, i64 1
  %152 = load float, ptr %151, align 4, !tbaa !34
  %153 = fsub float %150, %152
  %154 = getelementptr inbounds %struct.EditBone, ptr %140, i64 0, i32 7, i64 2
  %155 = load float, ptr %154, align 4, !tbaa !34
  %156 = getelementptr inbounds %struct.EditBone, ptr %143, i64 0, i32 7, i64 2
  %157 = load float, ptr %156, align 4, !tbaa !34
  %158 = fsub float %155, %157
  %159 = fmul float %153, %153
  %160 = call float @llvm.fmuladd.f32(float %148, float %148, float %159)
  %161 = call float @llvm.fmuladd.f32(float %158, float %158, float %160)
  %162 = call float @sqrtf(float noundef %161) #14
  %163 = fcmp olt float %162, 0x3F1A36E2E0000000
  br i1 %163, label %187, label %164

164:                                              ; preds = %142
  %165 = load ptr, ptr %108, align 8, !tbaa !72
  %166 = getelementptr inbounds %struct.EditBone, ptr %165, i64 0, i32 8
  %167 = load ptr, ptr %139, align 8, !tbaa !54
  %168 = getelementptr inbounds %struct.EditBone, ptr %167, i64 0, i32 8
  %169 = load float, ptr %168, align 4, !tbaa !34
  %170 = load float, ptr %166, align 4, !tbaa !34
  %171 = fsub float %169, %170
  %172 = getelementptr inbounds %struct.EditBone, ptr %167, i64 0, i32 8, i64 1
  %173 = load float, ptr %172, align 4, !tbaa !34
  %174 = getelementptr inbounds %struct.EditBone, ptr %165, i64 0, i32 8, i64 1
  %175 = load float, ptr %174, align 4, !tbaa !34
  %176 = fsub float %173, %175
  %177 = getelementptr inbounds %struct.EditBone, ptr %167, i64 0, i32 8, i64 2
  %178 = load float, ptr %177, align 4, !tbaa !34
  %179 = getelementptr inbounds %struct.EditBone, ptr %165, i64 0, i32 8, i64 2
  %180 = load float, ptr %179, align 4, !tbaa !34
  %181 = fsub float %178, %180
  %182 = fmul float %176, %176
  %183 = call float @llvm.fmuladd.f32(float %171, float %171, float %182)
  %184 = call float @llvm.fmuladd.f32(float %181, float %181, float %183)
  %185 = call float @sqrtf(float noundef %184) #14
  %186 = fcmp olt float %185, 0x3F1A36E2E0000000
  br i1 %186, label %187, label %196

187:                                              ; preds = %142, %164
  %188 = icmp eq ptr %138, null
  br i1 %188, label %194, label %189

189:                                              ; preds = %187
  %190 = load i32, ptr %134, align 8, !tbaa !65
  %191 = getelementptr inbounds %struct.RigArc, ptr %138, i64 0, i32 6
  %192 = load i32, ptr %191, align 8, !tbaa !65
  %193 = icmp slt i32 %190, %192
  br i1 %193, label %194, label %196

194:                                              ; preds = %189, %187
  %195 = load ptr, ptr %139, align 8, !tbaa !54
  br label %196

196:                                              ; preds = %164, %194, %189, %135
  %197 = phi ptr [ %138, %135 ], [ %127, %194 ], [ %138, %189 ], [ %138, %164 ]
  %198 = phi ptr [ %137, %135 ], [ %195, %194 ], [ %137, %189 ], [ %137, %164 ]
  %199 = load ptr, ptr %136, align 8, !tbaa !45
  %200 = icmp eq ptr %199, null
  br i1 %200, label %121, label %135, !llvm.loop !155

201:                                              ; preds = %121, %118
  %202 = phi ptr [ null, %118 ], [ %123, %121 ]
  %203 = call fastcc i32 @RIG_parentControl(ptr noundef nonnull %17, ptr noundef %202), !range !150
  br label %204

204:                                              ; preds = %201, %104
  %205 = phi i32 [ %203, %201 ], [ 1, %104 ]
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %254

207:                                              ; preds = %204
  %208 = load ptr, ptr %0, align 8, !tbaa !45
  %209 = icmp eq ptr %208, null
  br i1 %209, label %251, label %210

210:                                              ; preds = %207
  %211 = getelementptr inbounds %struct.RigControl, ptr %17, i64 0, i32 4
  br label %217

212:                                              ; preds = %246, %217
  %213 = phi ptr [ %220, %217 ], [ %247, %246 ]
  %214 = phi ptr [ %219, %217 ], [ %248, %246 ]
  %215 = load ptr, ptr %218, align 8, !tbaa !45
  %216 = icmp eq ptr %215, null
  br i1 %216, label %251, label %217, !llvm.loop !156

217:                                              ; preds = %210, %212
  %218 = phi ptr [ %208, %210 ], [ %215, %212 ]
  %219 = phi ptr [ null, %210 ], [ %214, %212 ]
  %220 = phi ptr [ null, %210 ], [ %213, %212 ]
  %221 = getelementptr inbounds %struct.RigArc, ptr %218, i64 0, i32 9
  %222 = load ptr, ptr %221, align 8, !tbaa !45
  %223 = icmp eq ptr %222, null
  br i1 %223, label %212, label %224

224:                                              ; preds = %217
  %225 = getelementptr inbounds %struct.RigArc, ptr %218, i64 0, i32 6
  br label %226

226:                                              ; preds = %224, %246
  %227 = phi ptr [ %222, %224 ], [ %249, %246 ]
  %228 = phi ptr [ %219, %224 ], [ %248, %246 ]
  %229 = phi ptr [ %220, %224 ], [ %247, %246 ]
  %230 = getelementptr inbounds %struct.RigEdge, ptr %227, i64 0, i32 7
  %231 = load ptr, ptr %230, align 8, !tbaa !54
  %232 = icmp eq ptr %231, null
  br i1 %232, label %246, label %233

233:                                              ; preds = %226
  %234 = getelementptr inbounds %struct.EditBone, ptr %231, i64 0, i32 3
  %235 = load ptr, ptr %234, align 8, !tbaa !88
  %236 = load ptr, ptr %211, align 8, !tbaa !72
  %237 = icmp eq ptr %235, %236
  br i1 %237, label %238, label %246

238:                                              ; preds = %233
  %239 = icmp eq ptr %229, null
  br i1 %239, label %245, label %240

240:                                              ; preds = %238
  %241 = load i32, ptr %225, align 8, !tbaa !65
  %242 = getelementptr inbounds %struct.RigArc, ptr %229, i64 0, i32 6
  %243 = load i32, ptr %242, align 8, !tbaa !65
  %244 = icmp slt i32 %241, %243
  br i1 %244, label %245, label %246

245:                                              ; preds = %240, %238
  br label %246

246:                                              ; preds = %226, %233, %245, %240
  %247 = phi ptr [ %218, %245 ], [ %229, %240 ], [ %229, %233 ], [ %229, %226 ]
  %248 = phi ptr [ %231, %245 ], [ %228, %240 ], [ %228, %233 ], [ %228, %226 ]
  %249 = load ptr, ptr %227, align 8, !tbaa !45
  %250 = icmp eq ptr %249, null
  br i1 %250, label %212, label %226, !llvm.loop !157

251:                                              ; preds = %212, %207
  %252 = phi ptr [ null, %207 ], [ %214, %212 ]
  %253 = call fastcc i32 @RIG_parentControl(ptr noundef nonnull %17, ptr noundef %252), !range !150
  br label %254

254:                                              ; preds = %251, %204
  %255 = load ptr, ptr %17, align 8, !tbaa !45
  %256 = icmp eq ptr %255, null
  br i1 %256, label %12, label %16, !llvm.loop !158

257:                                              ; preds = %392, %260
  %258 = phi i8 [ 0, %260 ], [ %393, %392 ]
  %259 = icmp eq i8 %258, 0
  br i1 %259, label %263, label %260, !llvm.loop !159

260:                                              ; preds = %12, %257
  %261 = load ptr, ptr %5, align 8, !tbaa !45
  %262 = icmp eq ptr %261, null
  br i1 %262, label %257, label %269

263:                                              ; preds = %257
  %264 = load ptr, ptr %5, align 8, !tbaa !45
  %265 = icmp eq ptr %264, null
  br i1 %265, label %470, label %266

266:                                              ; preds = %263
  %267 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 14
  %268 = getelementptr inbounds %struct.GHashIterator, ptr %4, i64 0, i32 1
  br label %396

269:                                              ; preds = %260, %392
  %270 = phi ptr [ %394, %392 ], [ %261, %260 ]
  %271 = phi i8 [ %393, %392 ], [ 0, %260 ]
  %272 = getelementptr inbounds %struct.RigControl, ptr %270, i64 0, i32 5
  %273 = load ptr, ptr %272, align 8, !tbaa !70
  %274 = icmp eq ptr %273, null
  br i1 %274, label %275, label %392

275:                                              ; preds = %269
  %276 = getelementptr inbounds %struct.RigControl, ptr %270, i64 0, i32 4
  %277 = load ptr, ptr %276, align 8, !tbaa !72
  %278 = getelementptr inbounds %struct.EditBone, ptr %277, i64 0, i32 3
  %279 = load ptr, ptr %278, align 8, !tbaa !88
  %280 = icmp eq ptr %279, null
  br i1 %280, label %285, label %281

281:                                              ; preds = %275
  %282 = load ptr, ptr %13, align 8, !tbaa !51
  %283 = getelementptr inbounds %struct.EditBone, ptr %279, i64 0, i32 5
  %284 = call ptr @BLI_ghash_lookup(ptr noundef %282, ptr noundef nonnull %283) #14
  br label %285

285:                                              ; preds = %281, %275
  %286 = phi ptr [ %284, %281 ], [ null, %275 ]
  %287 = load ptr, ptr %14, align 8, !tbaa !87
  %288 = getelementptr inbounds %struct.Object, ptr %287, i64 0, i32 18
  %289 = load ptr, ptr %288, align 8, !tbaa !142
  %290 = load ptr, ptr %289, align 8, !tbaa !45
  %291 = icmp eq ptr %290, null
  br i1 %291, label %359, label %296

292:                                              ; preds = %355, %296
  %293 = phi i32 [ %298, %296 ], [ %356, %355 ]
  %294 = load ptr, ptr %297, align 8, !tbaa !45
  %295 = icmp eq ptr %294, null
  br i1 %295, label %359, label %296, !llvm.loop !160

296:                                              ; preds = %285, %292
  %297 = phi ptr [ %294, %292 ], [ %290, %285 ]
  %298 = phi i32 [ %293, %292 ], [ 0, %285 ]
  %299 = getelementptr inbounds %struct.bPoseChannel, ptr %297, i64 0, i32 3
  %300 = load ptr, ptr %299, align 8, !tbaa !45
  %301 = icmp eq ptr %300, null
  br i1 %301, label %292, label %302

302:                                              ; preds = %296
  %303 = getelementptr inbounds %struct.bPoseChannel, ptr %297, i64 0, i32 4
  br label %304

304:                                              ; preds = %302, %355
  %305 = phi ptr [ %300, %302 ], [ %357, %355 ]
  %306 = phi i32 [ %298, %302 ], [ %356, %355 ]
  %307 = call ptr @BKE_constraint_typeinfo_get(ptr noundef nonnull %305) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %308 = icmp eq ptr %307, null
  br i1 %308, label %355, label %309

309:                                              ; preds = %304
  %310 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %307, i64 0, i32 8
  %311 = load ptr, ptr %310, align 8, !tbaa !144
  %312 = icmp eq ptr %311, null
  br i1 %312, label %355, label %313

313:                                              ; preds = %309
  %314 = call i32 %311(ptr noundef nonnull %305, ptr noundef nonnull %3) #14
  %315 = load ptr, ptr %3, align 8, !tbaa !45
  %316 = icmp eq ptr %315, null
  br i1 %316, label %349, label %317

317:                                              ; preds = %313, %345
  %318 = phi ptr [ %347, %345 ], [ %315, %313 ]
  %319 = phi i32 [ %346, %345 ], [ %306, %313 ]
  %320 = getelementptr inbounds %struct.bConstraintTarget, ptr %318, i64 0, i32 2
  %321 = load ptr, ptr %320, align 8, !tbaa !146
  %322 = load ptr, ptr %14, align 8, !tbaa !87
  %323 = icmp eq ptr %321, %322
  br i1 %323, label %324, label %345

324:                                              ; preds = %317
  %325 = getelementptr inbounds %struct.bConstraintTarget, ptr %318, i64 0, i32 3
  %326 = load ptr, ptr %276, align 8, !tbaa !72
  %327 = getelementptr inbounds %struct.EditBone, ptr %326, i64 0, i32 5
  %328 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %325, ptr noundef nonnull dereferenceable(1) %327) #15
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %330, label %345

330:                                              ; preds = %324
  %331 = load ptr, ptr %15, align 8, !tbaa !51
  %332 = call ptr @BLI_ghash_lookup(ptr noundef %331, ptr noundef nonnull %303) #14
  %333 = icmp eq ptr %332, null
  br i1 %333, label %342, label %334

334:                                              ; preds = %330
  %335 = getelementptr inbounds %struct.RigControl, ptr %332, i64 0, i32 5
  %336 = load ptr, ptr %335, align 8, !tbaa !70
  %337 = icmp eq ptr %336, null
  br i1 %337, label %342, label %338

338:                                              ; preds = %334
  %339 = getelementptr inbounds %struct.RigControl, ptr %332, i64 0, i32 4
  %340 = load ptr, ptr %339, align 8, !tbaa !72
  %341 = call fastcc i32 @RIG_parentControl(ptr noundef nonnull %270, ptr noundef %340), !range !150
  br label %342

342:                                              ; preds = %330, %334, %338
  %343 = phi i32 [ 1, %338 ], [ %319, %334 ], [ %319, %330 ]
  %344 = phi i1 [ false, %338 ], [ true, %334 ], [ true, %330 ]
  br i1 %344, label %345, label %349

345:                                              ; preds = %342, %317, %324
  %346 = phi i32 [ %343, %342 ], [ %319, %324 ], [ %319, %317 ]
  %347 = load ptr, ptr %318, align 8, !tbaa !45
  %348 = icmp eq ptr %347, null
  br i1 %348, label %349, label %317, !llvm.loop !161

349:                                              ; preds = %345, %342, %313
  %350 = phi i32 [ %306, %313 ], [ %346, %345 ], [ %343, %342 ]
  %351 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %307, i64 0, i32 9
  %352 = load ptr, ptr %351, align 8, !tbaa !152
  %353 = icmp eq ptr %352, null
  br i1 %353, label %355, label %354

354:                                              ; preds = %349
  call void %352(ptr noundef nonnull %305, ptr noundef nonnull %3, i8 noundef zeroext 0) #14
  br label %355

355:                                              ; preds = %349, %354, %309, %304
  %356 = phi i32 [ %350, %354 ], [ %350, %349 ], [ %306, %309 ], [ %306, %304 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  %357 = load ptr, ptr %305, align 8, !tbaa !45
  %358 = icmp eq ptr %357, null
  br i1 %358, label %292, label %304, !llvm.loop !162

359:                                              ; preds = %292, %285
  %360 = phi i32 [ 0, %285 ], [ %293, %292 ]
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %362, label %392

362:                                              ; preds = %359
  %363 = icmp eq ptr %286, null
  br i1 %363, label %371, label %364

364:                                              ; preds = %362
  %365 = getelementptr inbounds %struct.RigControl, ptr %286, i64 0, i32 5
  %366 = load ptr, ptr %365, align 8, !tbaa !70
  %367 = icmp eq ptr %366, null
  br i1 %367, label %371, label %368

368:                                              ; preds = %364
  %369 = getelementptr inbounds %struct.RigControl, ptr %286, i64 0, i32 4
  %370 = load ptr, ptr %369, align 8, !tbaa !72
  br label %389

371:                                              ; preds = %364, %362
  %372 = load ptr, ptr %5, align 8, !tbaa !45
  %373 = icmp eq ptr %372, null
  br i1 %373, label %392, label %374

374:                                              ; preds = %371, %386
  %375 = phi ptr [ %387, %386 ], [ %372, %371 ]
  %376 = getelementptr inbounds %struct.RigControl, ptr %375, i64 0, i32 5
  %377 = load ptr, ptr %376, align 8, !tbaa !70
  %378 = icmp eq ptr %377, null
  br i1 %378, label %386, label %379

379:                                              ; preds = %374
  %380 = getelementptr inbounds %struct.RigControl, ptr %375, i64 0, i32 4
  %381 = load ptr, ptr %380, align 8, !tbaa !72
  %382 = getelementptr inbounds %struct.EditBone, ptr %381, i64 0, i32 3
  %383 = load ptr, ptr %382, align 8, !tbaa !88
  %384 = load ptr, ptr %276, align 8, !tbaa !72
  %385 = icmp eq ptr %383, %384
  br i1 %385, label %389, label %386

386:                                              ; preds = %374, %379
  %387 = load ptr, ptr %375, align 8, !tbaa !45
  %388 = icmp eq ptr %387, null
  br i1 %388, label %392, label %374, !llvm.loop !163

389:                                              ; preds = %379, %368
  %390 = phi ptr [ %370, %368 ], [ %381, %379 ]
  %391 = call fastcc i32 @RIG_parentControl(ptr noundef nonnull %270, ptr noundef %390), !range !150
  br label %392

392:                                              ; preds = %386, %389, %371, %359, %269
  %393 = phi i8 [ %271, %269 ], [ %271, %359 ], [ %271, %371 ], [ 1, %389 ], [ %271, %386 ]
  %394 = load ptr, ptr %270, align 8, !tbaa !45
  %395 = icmp eq ptr %394, null
  br i1 %395, label %257, label %269, !llvm.loop !164

396:                                              ; preds = %266, %467
  %397 = phi ptr [ %264, %266 ], [ %468, %467 ]
  %398 = getelementptr inbounds %struct.RigControl, ptr %397, i64 0, i32 10
  %399 = load i32, ptr %398, align 8, !tbaa !73
  %400 = and i32 %399, 16
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %402, label %467

402:                                              ; preds = %396
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #14
  %403 = load ptr, ptr %267, align 8, !tbaa !50
  call void @BLI_ghashIterator_init(ptr noundef nonnull %4, ptr noundef %403) #14
  %404 = load ptr, ptr %268, align 8, !tbaa !165
  %405 = icmp eq ptr %404, null
  br i1 %405, label %466, label %406

406:                                              ; preds = %402
  %407 = getelementptr inbounds %struct.RigControl, ptr %397, i64 0, i32 4
  br label %408

408:                                              ; preds = %406, %459
  %409 = phi ptr [ %404, %406 ], [ %460, %459 ]
  %410 = getelementptr inbounds %struct._gh_Entry, ptr %409, i64 0, i32 2
  %411 = load ptr, ptr %410, align 8, !tbaa !167
  %412 = getelementptr inbounds %struct.EditBone, ptr %411, i64 0, i32 3
  %413 = load ptr, ptr %412, align 8, !tbaa !88
  %414 = load ptr, ptr %407, align 8, !tbaa !72
  %415 = icmp eq ptr %413, %414
  br i1 %415, label %459, label %416

416:                                              ; preds = %408
  %417 = getelementptr inbounds %struct.EditBone, ptr %414, i64 0, i32 8
  %418 = getelementptr inbounds %struct.EditBone, ptr %411, i64 0, i32 7
  %419 = load float, ptr %418, align 4, !tbaa !34
  %420 = load float, ptr %417, align 4, !tbaa !34
  %421 = fsub float %419, %420
  %422 = getelementptr inbounds %struct.EditBone, ptr %411, i64 0, i32 7, i64 1
  %423 = load float, ptr %422, align 4, !tbaa !34
  %424 = getelementptr inbounds %struct.EditBone, ptr %414, i64 0, i32 8, i64 1
  %425 = load float, ptr %424, align 4, !tbaa !34
  %426 = fsub float %423, %425
  %427 = getelementptr inbounds %struct.EditBone, ptr %411, i64 0, i32 7, i64 2
  %428 = load float, ptr %427, align 4, !tbaa !34
  %429 = getelementptr inbounds %struct.EditBone, ptr %414, i64 0, i32 8, i64 2
  %430 = load float, ptr %429, align 4, !tbaa !34
  %431 = fsub float %428, %430
  %432 = fmul float %426, %426
  %433 = call float @llvm.fmuladd.f32(float %421, float %421, float %432)
  %434 = call float @llvm.fmuladd.f32(float %431, float %431, float %433)
  %435 = call float @sqrtf(float noundef %434) #14
  %436 = fcmp olt float %435, 0x3F847AE140000000
  br i1 %436, label %462, label %437

437:                                              ; preds = %416
  %438 = load ptr, ptr %407, align 8, !tbaa !72
  %439 = getelementptr inbounds %struct.EditBone, ptr %438, i64 0, i32 8
  %440 = getelementptr inbounds %struct.EditBone, ptr %411, i64 0, i32 8
  %441 = load float, ptr %440, align 4, !tbaa !34
  %442 = load float, ptr %439, align 4, !tbaa !34
  %443 = fsub float %441, %442
  %444 = getelementptr inbounds %struct.EditBone, ptr %411, i64 0, i32 8, i64 1
  %445 = load float, ptr %444, align 4, !tbaa !34
  %446 = getelementptr inbounds %struct.EditBone, ptr %438, i64 0, i32 8, i64 1
  %447 = load float, ptr %446, align 4, !tbaa !34
  %448 = fsub float %445, %447
  %449 = getelementptr inbounds %struct.EditBone, ptr %411, i64 0, i32 8, i64 2
  %450 = load float, ptr %449, align 4, !tbaa !34
  %451 = getelementptr inbounds %struct.EditBone, ptr %438, i64 0, i32 8, i64 2
  %452 = load float, ptr %451, align 4, !tbaa !34
  %453 = fsub float %450, %452
  %454 = fmul float %448, %448
  %455 = call float @llvm.fmuladd.f32(float %443, float %443, float %454)
  %456 = call float @llvm.fmuladd.f32(float %453, float %453, float %455)
  %457 = call float @sqrtf(float noundef %456) #14
  %458 = fcmp olt float %457, 0x3F847AE140000000
  br i1 %458, label %462, label %459

459:                                              ; preds = %437, %408
  call void @BLI_ghashIterator_step(ptr noundef nonnull %4) #14
  %460 = load ptr, ptr %268, align 8, !tbaa !165
  %461 = icmp eq ptr %460, null
  br i1 %461, label %466, label %408, !llvm.loop !169

462:                                              ; preds = %437, %416
  %463 = phi i32 [ 2, %416 ], [ 1, %437 ]
  %464 = getelementptr inbounds %struct.RigControl, ptr %397, i64 0, i32 11
  store i32 %463, ptr %464, align 4, !tbaa !125
  %465 = getelementptr inbounds %struct.RigControl, ptr %397, i64 0, i32 6
  store ptr %411, ptr %465, align 8, !tbaa !170
  br label %466

466:                                              ; preds = %459, %462, %402
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  br label %467

467:                                              ; preds = %396, %466
  %468 = load ptr, ptr %397, align 8, !tbaa !45
  %469 = icmp eq ptr %468, null
  br i1 %469, label %470, label %396, !llvm.loop !171

470:                                              ; preds = %467, %263
  ret void
}

declare zeroext i8 @BLI_isGraphCyclic(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @exec_retargetArctoArc(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, i32 %2) #0 {
  %4 = alloca %struct.ReebArcIterator, align 8
  %5 = alloca %struct.ReebArcIterator, align 8
  %6 = load ptr, ptr %1, align 8, !tbaa !172
  %7 = getelementptr inbounds %struct.RetargetParam, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !174
  %9 = getelementptr inbounds %struct.RetargetParam, ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !175
  %11 = getelementptr inbounds %struct.RetargetParam, ptr %1, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !176
  %13 = getelementptr inbounds %struct.RigArc, ptr %8, i64 0, i32 11
  %14 = load ptr, ptr %13, align 8, !tbaa !177
  %15 = getelementptr inbounds %struct.RigArc, ptr %8, i64 0, i32 9
  %16 = tail call i32 @BLI_countlist(ptr noundef nonnull %15) #14
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %55

18:                                               ; preds = %3
  %19 = load ptr, ptr %15, align 8, !tbaa !133
  %20 = load ptr, ptr %13, align 8, !tbaa !177
  %21 = getelementptr inbounds %struct.RigNode, ptr %12, i64 0, i32 10
  %22 = load ptr, ptr %21, align 8, !tbaa !178
  %23 = tail call ptr @BIF_NodeFromIndex(ptr noundef %20, ptr noundef %22) #14
  %24 = getelementptr inbounds %struct.ReebArc, ptr %20, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !179
  %26 = icmp eq ptr %23, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.RigArc, ptr %8, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !57
  %30 = icmp eq ptr %29, %12
  br i1 %30, label %47, label %31

31:                                               ; preds = %27, %18
  %32 = getelementptr inbounds %struct.ReebArc, ptr %20, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !181
  %34 = icmp eq ptr %23, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.RigArc, ptr %8, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !68
  %38 = icmp eq ptr %37, %12
  br i1 %38, label %47, label %39

39:                                               ; preds = %35, %31
  %40 = getelementptr inbounds %struct.ReebArc, ptr %14, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !181
  %42 = getelementptr inbounds %struct.ReebNode, ptr %41, i64 0, i32 2
  %43 = getelementptr inbounds %struct.ReebArc, ptr %14, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !179
  %45 = getelementptr inbounds %struct.ReebNode, ptr %44, i64 0, i32 2
  %46 = getelementptr inbounds %struct.ReebNode, ptr %44, i64 0, i32 10
  tail call fastcc void @repositionBone(ptr noundef %10, ptr noundef %6, ptr noundef %19, ptr noundef nonnull %42, ptr noundef nonnull %45, ptr noundef nonnull %46)
  br label %386

47:                                               ; preds = %35, %27
  %48 = getelementptr inbounds %struct.ReebArc, ptr %14, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !179
  %50 = getelementptr inbounds %struct.ReebNode, ptr %49, i64 0, i32 2
  %51 = getelementptr inbounds %struct.ReebArc, ptr %14, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !181
  %53 = getelementptr inbounds %struct.ReebNode, ptr %52, i64 0, i32 2
  %54 = getelementptr inbounds %struct.ReebNode, ptr %52, i64 0, i32 10
  tail call fastcc void @repositionBone(ptr noundef %10, ptr noundef %6, ptr noundef %19, ptr noundef nonnull %50, ptr noundef nonnull %53, ptr noundef nonnull %54)
  br label %386

55:                                               ; preds = %3
  %56 = load ptr, ptr %13, align 8, !tbaa !177
  %57 = load ptr, ptr %15, align 8, !tbaa !45
  %58 = icmp eq ptr %57, null
  br i1 %58, label %69, label %59

59:                                               ; preds = %55, %59
  %60 = phi ptr [ %67, %59 ], [ %57, %55 ]
  %61 = phi i32 [ %66, %59 ], [ 0, %55 ]
  %62 = phi float [ %65, %59 ], [ 0.000000e+00, %55 ]
  %63 = getelementptr inbounds %struct.RigEdge, ptr %60, i64 0, i32 5
  %64 = load float, ptr %63, align 4, !tbaa !63
  %65 = fadd float %62, %64
  %66 = add nuw nsw i32 %61, 1
  %67 = load ptr, ptr %60, align 8, !tbaa !45
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %59, !llvm.loop !182

69:                                               ; preds = %59, %55
  %70 = phi float [ 0.000000e+00, %55 ], [ %65, %59 ]
  %71 = phi i32 [ 0, %55 ], [ %66, %59 ]
  %72 = add nsw i32 %71, -1
  %73 = sitofp i32 %72 to float
  %74 = fdiv float %70, %73
  %75 = icmp ugt i32 %71, 2
  br i1 %75, label %76, label %90

76:                                               ; preds = %69
  %77 = load ptr, ptr %15, align 8, !tbaa !45
  %78 = icmp eq ptr %77, null
  br i1 %78, label %95, label %79

79:                                               ; preds = %76, %79
  %80 = phi ptr [ %88, %79 ], [ %77, %76 ]
  %81 = phi i32 [ %87, %79 ], [ 0, %76 ]
  %82 = getelementptr inbounds %struct.RigEdge, ptr %80, i64 0, i32 5
  %83 = load float, ptr %82, align 4, !tbaa !63
  %84 = fsub float %83, %74
  %85 = tail call float @llvm.fabs.f32(float %84)
  %86 = fcmp ogt float %85, 0x3FE0C15240000000
  %87 = select i1 %86, i32 1, i32 %81
  %88 = load ptr, ptr %80, align 8, !tbaa !45
  %89 = icmp eq ptr %88, null
  br i1 %89, label %95, label %79, !llvm.loop !183

90:                                               ; preds = %69
  %91 = icmp eq i32 %71, 2
  %92 = fcmp ogt float %74, 0.000000e+00
  %93 = select i1 %91, i1 %92, i1 false
  %94 = zext i1 %93 to i32
  br label %95

95:                                               ; preds = %79, %76, %90
  %96 = phi i32 [ %94, %90 ], [ 0, %76 ], [ %87, %79 ]
  %97 = icmp eq i32 %96, 0
  %98 = getelementptr inbounds %struct.ReebArc, ptr %56, i64 0, i32 10
  %99 = load i32, ptr %98, align 8, !tbaa !184
  %100 = getelementptr inbounds %struct.RigArc, ptr %8, i64 0, i32 10
  %101 = load i32, ptr %100, align 8, !tbaa !122
  %102 = icmp slt i32 %99, %101
  %103 = select i1 %102, i1 true, i1 %97
  br i1 %103, label %246, label %104

104:                                              ; preds = %95
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %5) #14
  %105 = load ptr, ptr %13, align 8, !tbaa !177
  %106 = tail call i32 @BLI_countlist(ptr noundef nonnull %15) #14
  %107 = add nsw i32 %106, -1
  %108 = getelementptr inbounds %struct.ReebArc, ptr %105, i64 0, i32 10
  %109 = load i32, ptr %108, align 8, !tbaa !184
  %110 = icmp sgt i32 %107, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %104
  %112 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.54)
  br label %245

113:                                              ; preds = %104
  %114 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %115 = sext i32 %107 to i64
  %116 = shl nsw i64 %115, 2
  %117 = tail call ptr %114(i64 noundef %116, ptr noundef nonnull @.str.45) #14
  %118 = load ptr, ptr %13, align 8, !tbaa !177
  %119 = getelementptr inbounds %struct.RigNode, ptr %12, i64 0, i32 10
  %120 = load ptr, ptr %119, align 8, !tbaa !178
  %121 = tail call ptr @BIF_NodeFromIndex(ptr noundef %118, ptr noundef %120) #14
  %122 = getelementptr inbounds %struct.ReebArc, ptr %118, i64 0, i32 2
  %123 = load ptr, ptr %122, align 8, !tbaa !179
  %124 = icmp eq ptr %121, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %113
  %126 = getelementptr inbounds %struct.RigArc, ptr %8, i64 0, i32 2
  %127 = load ptr, ptr %126, align 8, !tbaa !57
  %128 = icmp eq ptr %127, %12
  br i1 %128, label %138, label %129

129:                                              ; preds = %125, %113
  %130 = getelementptr inbounds %struct.ReebArc, ptr %118, i64 0, i32 3
  %131 = load ptr, ptr %130, align 8, !tbaa !181
  %132 = icmp eq ptr %121, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct.RigArc, ptr %8, i64 0, i32 3
  %135 = load ptr, ptr %134, align 8, !tbaa !68
  %136 = icmp eq ptr %135, %12
  br i1 %136, label %138, label %137

137:                                              ; preds = %133, %129
  br label %138

138:                                              ; preds = %137, %133, %125
  %139 = phi i1 [ false, %137 ], [ true, %133 ], [ true, %125 ]
  %140 = getelementptr inbounds %struct.ReebArc, ptr %105, i64 0, i32 3
  %141 = getelementptr inbounds %struct.ReebArc, ptr %105, i64 0, i32 2
  %142 = select i1 %139, ptr %140, ptr %141
  %143 = select i1 %139, ptr %141, ptr %140
  %144 = load ptr, ptr %143, align 8, !tbaa !45
  %145 = load ptr, ptr %142, align 8, !tbaa !45
  %146 = load i32, ptr %108, align 8, !tbaa !184
  %147 = icmp eq i32 %107, %146
  %148 = icmp sgt i32 %106, 1
  %149 = and i1 %147, %148
  br i1 %149, label %150, label %158

150:                                              ; preds = %138
  %151 = zext i32 %107 to i64
  br label %152

152:                                              ; preds = %150, %152
  %153 = phi i64 [ 0, %150 ], [ %154, %152 ]
  %154 = add nuw nsw i64 %153, 1
  %155 = getelementptr inbounds i32, ptr %117, i64 %153
  %156 = trunc i64 %154 to i32
  store i32 %156, ptr %155, align 4, !tbaa !185
  %157 = icmp eq i64 %154, %151
  br i1 %157, label %158, label %152, !llvm.loop !186

158:                                              ; preds = %152, %138
  %159 = load i32, ptr %108, align 8, !tbaa !184
  %160 = mul i32 %159, %106
  %161 = mul i32 %160, %159
  %162 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %163 = sext i32 %161 to i64
  %164 = shl nsw i64 %163, 3
  %165 = tail call ptr %162(i64 noundef %164, ptr noundef nonnull @.str.46) #14
  %166 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %167 = add nsw i32 %159, 2
  %168 = sext i32 %167 to i64
  %169 = shl nsw i64 %168, 3
  %170 = tail call ptr %166(i64 noundef %169, ptr noundef nonnull @.str.47) #14
  %171 = getelementptr inbounds %struct.ReebNode, ptr %144, i64 0, i32 2
  store ptr %171, ptr %170, align 8, !tbaa !45
  %172 = getelementptr inbounds %struct.ReebNode, ptr %145, i64 0, i32 2
  %173 = sext i32 %159 to i64
  %174 = getelementptr ptr, ptr %170, i64 %173
  %175 = getelementptr ptr, ptr %174, i64 1
  store ptr %172, ptr %175, align 8, !tbaa !45
  call void @initArcIterator(ptr noundef nonnull %5, ptr noundef %105, ptr noundef %144) #14
  %176 = icmp slt i32 %159, 1
  br i1 %176, label %188, label %177

177:                                              ; preds = %158
  %178 = add nuw i32 %159, 1
  %179 = zext i32 %178 to i64
  br label %180

180:                                              ; preds = %177, %180
  %181 = phi i64 [ 1, %177 ], [ %186, %180 ]
  %182 = trunc i64 %181 to i32
  %183 = call ptr @IT_peek(ptr noundef nonnull %5, i32 noundef %182) #14
  %184 = getelementptr inbounds %struct.EmbedBucket, ptr %183, i64 0, i32 2
  %185 = getelementptr inbounds ptr, ptr %170, i64 %181
  store ptr %184, ptr %185, align 8, !tbaa !45
  %186 = add nuw nsw i64 %181, 1
  %187 = icmp eq i64 %186, %179
  br i1 %187, label %188, label %180, !llvm.loop !187

188:                                              ; preds = %180, %158
  %189 = load i32, ptr %108, align 8, !tbaa !184
  %190 = load ptr, ptr %15, align 8, !tbaa !133
  %191 = call fastcc ptr @solveJoints(ptr noundef %165, ptr noundef nonnull %5, ptr noundef nonnull %170, i32 noundef %189, i32 noundef 0, i32 noundef 0, ptr noundef %190, i32 noundef %107)
  %192 = load i32, ptr %108, align 8, !tbaa !184
  %193 = icmp sgt i32 %106, 1
  br i1 %193, label %194, label %213

194:                                              ; preds = %188
  %195 = zext i32 %107 to i64
  br label %196

196:                                              ; preds = %194, %196
  %197 = phi i64 [ 0, %194 ], [ %211, %196 ]
  %198 = phi i32 [ %107, %194 ], [ %210, %196 ]
  %199 = phi i32 [ 0, %194 ], [ %209, %196 ]
  %200 = phi i32 [ 0, %194 ], [ %199, %196 ]
  %201 = mul nsw i32 %198, %192
  %202 = add i32 %201, %199
  %203 = mul i32 %202, %192
  %204 = add nsw i32 %203, %200
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.MemoNode, ptr %165, i64 %205, i32 1
  %207 = load i32, ptr %206, align 4, !tbaa !188
  %208 = getelementptr inbounds i32, ptr %117, i64 %197
  store i32 %207, ptr %208, align 4, !tbaa !185
  %209 = load i32, ptr %206, align 4, !tbaa !188
  %210 = add nsw i32 %198, -1
  %211 = add nuw nsw i64 %197, 1
  %212 = icmp eq i64 %211, %195
  br i1 %212, label %213, label %196, !llvm.loop !190

213:                                              ; preds = %196, %188
  %214 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  call void %214(ptr noundef %165) #14
  %215 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  call void %215(ptr noundef nonnull %170) #14
  call void @initArcIterator(ptr noundef nonnull %5, ptr noundef %105, ptr noundef %144) #14
  %216 = load ptr, ptr %15, align 8, !tbaa !45
  %217 = icmp eq ptr %216, null
  br i1 %217, label %243, label %218

218:                                              ; preds = %213
  %219 = getelementptr inbounds %struct.ReebNode, ptr %145, i64 0, i32 10
  %220 = sext i32 %107 to i64
  br label %221

221:                                              ; preds = %218, %239
  %222 = phi i64 [ 0, %218 ], [ %240, %239 ]
  %223 = phi ptr [ %216, %218 ], [ %241, %239 ]
  %224 = phi ptr [ %171, %218 ], [ %233, %239 ]
  %225 = icmp slt i64 %222, %220
  br i1 %225, label %226, label %232

226:                                              ; preds = %221
  %227 = getelementptr inbounds i32, ptr %117, i64 %222
  %228 = load i32, ptr %227, align 4, !tbaa !185
  %229 = call ptr @IT_peek(ptr noundef nonnull %5, i32 noundef %228) #14
  %230 = getelementptr inbounds %struct.EmbedBucket, ptr %229, i64 0, i32 2
  %231 = getelementptr inbounds %struct.EmbedBucket, ptr %229, i64 0, i32 3
  br label %232

232:                                              ; preds = %221, %226
  %233 = phi ptr [ %230, %226 ], [ %172, %221 ]
  %234 = phi ptr [ %231, %226 ], [ %219, %221 ]
  %235 = getelementptr inbounds %struct.RigEdge, ptr %223, i64 0, i32 7
  %236 = load ptr, ptr %235, align 8, !tbaa !54
  %237 = icmp eq ptr %236, null
  br i1 %237, label %239, label %238

238:                                              ; preds = %232
  call fastcc void @repositionBone(ptr noundef %10, ptr noundef %6, ptr noundef nonnull %223, ptr noundef %224, ptr noundef nonnull %233, ptr noundef nonnull %234)
  br label %239

239:                                              ; preds = %238, %232
  %240 = add nuw i64 %222, 1
  %241 = load ptr, ptr %223, align 8, !tbaa !45
  %242 = icmp eq ptr %241, null
  br i1 %242, label %243, label %221, !llvm.loop !191

243:                                              ; preds = %239, %213
  %244 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  call void %244(ptr noundef %117) #14
  br label %245

245:                                              ; preds = %111, %243
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %5) #14
  br label %386

246:                                              ; preds = %95
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %4) #14
  %247 = load ptr, ptr %13, align 8, !tbaa !177
  %248 = getelementptr inbounds %struct.RigNode, ptr %12, i64 0, i32 10
  %249 = load ptr, ptr %248, align 8, !tbaa !178
  %250 = tail call ptr @BIF_NodeFromIndex(ptr noundef %247, ptr noundef %249) #14
  %251 = getelementptr inbounds %struct.ReebArc, ptr %247, i64 0, i32 2
  %252 = load ptr, ptr %251, align 8, !tbaa !179
  %253 = icmp eq ptr %250, %252
  br i1 %253, label %254, label %258

254:                                              ; preds = %246
  %255 = getelementptr inbounds %struct.RigArc, ptr %8, i64 0, i32 2
  %256 = load ptr, ptr %255, align 8, !tbaa !57
  %257 = icmp eq ptr %256, %12
  br i1 %257, label %267, label %258

258:                                              ; preds = %254, %246
  %259 = getelementptr inbounds %struct.ReebArc, ptr %247, i64 0, i32 3
  %260 = load ptr, ptr %259, align 8, !tbaa !181
  %261 = icmp eq ptr %250, %260
  br i1 %261, label %262, label %266

262:                                              ; preds = %258
  %263 = getelementptr inbounds %struct.RigArc, ptr %8, i64 0, i32 3
  %264 = load ptr, ptr %263, align 8, !tbaa !68
  %265 = icmp eq ptr %264, %12
  br i1 %265, label %267, label %266

266:                                              ; preds = %262, %258
  br label %267

267:                                              ; preds = %266, %262, %254
  %268 = phi i1 [ false, %266 ], [ true, %262 ], [ true, %254 ]
  %269 = getelementptr inbounds %struct.ReebArc, ptr %247, i64 0, i32 3
  %270 = select i1 %268, ptr %269, ptr %251
  %271 = select i1 %268, ptr %251, ptr %269
  %272 = load ptr, ptr %271, align 8, !tbaa !45
  %273 = load ptr, ptr %270, align 8, !tbaa !45
  call void @initArcIterator(ptr noundef nonnull %4, ptr noundef %247, ptr noundef %272) #14
  %274 = call ptr @IT_next(ptr noundef nonnull %4) #14
  %275 = getelementptr inbounds %struct.ReebNode, ptr %272, i64 0, i32 2
  %276 = icmp ne ptr %274, null
  call void @llvm.assume(i1 %276)
  br label %277

277:                                              ; preds = %267, %277
  %278 = phi ptr [ %281, %277 ], [ %275, %267 ]
  %279 = phi float [ %299, %277 ], [ 0.000000e+00, %267 ]
  %280 = phi ptr [ %300, %277 ], [ %274, %267 ]
  %281 = getelementptr inbounds %struct.EmbedBucket, ptr %280, i64 0, i32 2
  %282 = load float, ptr %281, align 4, !tbaa !34
  %283 = load float, ptr %278, align 4, !tbaa !34
  %284 = fsub float %282, %283
  %285 = getelementptr inbounds %struct.EmbedBucket, ptr %280, i64 0, i32 2, i64 1
  %286 = load float, ptr %285, align 4, !tbaa !34
  %287 = getelementptr inbounds float, ptr %278, i64 1
  %288 = load float, ptr %287, align 4, !tbaa !34
  %289 = fsub float %286, %288
  %290 = getelementptr inbounds %struct.EmbedBucket, ptr %280, i64 0, i32 2, i64 2
  %291 = load float, ptr %290, align 4, !tbaa !34
  %292 = getelementptr inbounds float, ptr %278, i64 2
  %293 = load float, ptr %292, align 4, !tbaa !34
  %294 = fsub float %291, %293
  %295 = fmul float %289, %289
  %296 = call float @llvm.fmuladd.f32(float %284, float %284, float %295)
  %297 = call float @llvm.fmuladd.f32(float %294, float %294, float %296)
  %298 = call float @sqrtf(float noundef %297) #14
  %299 = fadd float %279, %298
  %300 = call ptr @IT_next(ptr noundef nonnull %4) #14
  %301 = icmp eq ptr %300, null
  br i1 %301, label %302, label %277, !llvm.loop !192

302:                                              ; preds = %277
  %303 = getelementptr inbounds %struct.ReebNode, ptr %273, i64 0, i32 2
  %304 = load float, ptr %281, align 4, !tbaa !34
  %305 = load float, ptr %303, align 4, !tbaa !34
  %306 = fsub float %304, %305
  %307 = getelementptr inbounds %struct.EmbedBucket, ptr %280, i64 0, i32 2, i64 1
  %308 = load float, ptr %307, align 4, !tbaa !34
  %309 = getelementptr inbounds %struct.ReebNode, ptr %273, i64 0, i32 2, i64 1
  %310 = load float, ptr %309, align 4, !tbaa !34
  %311 = fsub float %308, %310
  %312 = getelementptr inbounds %struct.EmbedBucket, ptr %280, i64 0, i32 2, i64 2
  %313 = load float, ptr %312, align 4, !tbaa !34
  %314 = getelementptr inbounds %struct.ReebNode, ptr %273, i64 0, i32 2, i64 2
  %315 = load float, ptr %314, align 4, !tbaa !34
  %316 = fsub float %313, %315
  %317 = fmul float %311, %311
  %318 = call float @llvm.fmuladd.f32(float %306, float %306, float %317)
  %319 = call float @llvm.fmuladd.f32(float %316, float %316, float %318)
  %320 = call float @sqrtf(float noundef %319) #14
  %321 = fadd float %299, %320
  call void @initArcIterator(ptr noundef nonnull %4, ptr noundef %247, ptr noundef %272) #14
  %322 = call ptr @IT_next(ptr noundef nonnull %4) #14
  %323 = load ptr, ptr %15, align 8, !tbaa !45
  %324 = icmp eq ptr %323, null
  br i1 %324, label %385, label %325

325:                                              ; preds = %302
  %326 = getelementptr inbounds %struct.EmbedBucket, ptr %322, i64 0, i32 2
  %327 = getelementptr inbounds %struct.RigArc, ptr %8, i64 0, i32 5
  %328 = getelementptr inbounds %struct.ReebNode, ptr %273, i64 0, i32 10
  br label %329

329:                                              ; preds = %325, %382
  %330 = phi ptr [ %323, %325 ], [ %383, %382 ]
  %331 = phi ptr [ %275, %325 ], [ %376, %382 ]
  %332 = phi ptr [ %326, %325 ], [ %376, %382 ]
  %333 = phi ptr [ %322, %325 ], [ %372, %382 ]
  %334 = getelementptr inbounds %struct.RigEdge, ptr %330, i64 0, i32 4
  %335 = load float, ptr %334, align 8, !tbaa !62
  %336 = load float, ptr %327, align 4, !tbaa !193
  %337 = fdiv float %335, %336
  %338 = fmul float %321, %337
  %339 = icmp ne ptr %333, null
  %340 = fcmp ogt float %338, 0.000000e+00
  %341 = select i1 %339, i1 %340, i1 false
  br i1 %341, label %342, label %371

342:                                              ; preds = %329, %342
  %343 = phi float [ %363, %342 ], [ 0.000000e+00, %329 ]
  %344 = phi ptr [ %345, %342 ], [ %331, %329 ]
  %345 = phi ptr [ %365, %342 ], [ %332, %329 ]
  %346 = load float, ptr %345, align 4, !tbaa !34
  %347 = load float, ptr %344, align 4, !tbaa !34
  %348 = fsub float %346, %347
  %349 = getelementptr inbounds float, ptr %345, i64 1
  %350 = load float, ptr %349, align 4, !tbaa !34
  %351 = getelementptr inbounds float, ptr %344, i64 1
  %352 = load float, ptr %351, align 4, !tbaa !34
  %353 = fsub float %350, %352
  %354 = getelementptr inbounds float, ptr %345, i64 2
  %355 = load float, ptr %354, align 4, !tbaa !34
  %356 = getelementptr inbounds float, ptr %344, i64 2
  %357 = load float, ptr %356, align 4, !tbaa !34
  %358 = fsub float %355, %357
  %359 = fmul float %353, %353
  %360 = call float @llvm.fmuladd.f32(float %348, float %348, float %359)
  %361 = call float @llvm.fmuladd.f32(float %358, float %358, float %360)
  %362 = call float @sqrtf(float noundef %361) #14
  %363 = fadd float %343, %362
  %364 = call ptr @IT_next(ptr noundef nonnull %4) #14
  %365 = getelementptr inbounds %struct.EmbedBucket, ptr %364, i64 0, i32 2
  %366 = icmp ne ptr %364, null
  %367 = fcmp ogt float %338, %363
  %368 = select i1 %366, i1 %367, i1 false
  br i1 %368, label %342, label %369, !llvm.loop !194

369:                                              ; preds = %342
  %370 = getelementptr inbounds %struct.EmbedBucket, ptr %364, i64 0, i32 3
  br label %371

371:                                              ; preds = %369, %329
  %372 = phi ptr [ %364, %369 ], [ %333, %329 ]
  %373 = phi ptr [ %365, %369 ], [ %332, %329 ]
  %374 = phi ptr [ %370, %369 ], [ null, %329 ]
  %375 = icmp eq ptr %372, null
  %376 = select i1 %375, ptr %303, ptr %373
  %377 = getelementptr inbounds %struct.RigEdge, ptr %330, i64 0, i32 7
  %378 = load ptr, ptr %377, align 8, !tbaa !54
  %379 = icmp eq ptr %378, null
  br i1 %379, label %382, label %380

380:                                              ; preds = %371
  %381 = select i1 %375, ptr %328, ptr %374
  call fastcc void @repositionBone(ptr noundef %10, ptr noundef %6, ptr noundef nonnull %330, ptr noundef %331, ptr noundef %376, ptr noundef %381)
  br label %382

382:                                              ; preds = %380, %371
  %383 = load ptr, ptr %330, align 8, !tbaa !45
  %384 = icmp eq ptr %383, null
  br i1 %384, label %385, label %329, !llvm.loop !195

385:                                              ; preds = %382, %302
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %4) #14
  br label %386

386:                                              ; preds = %245, %385, %39, %47
  ret void
}

declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @repositionBone(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5) unnamed_addr #0 {
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [4 x float], align 16
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [4 x float], align 16
  %15 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #14
  %16 = getelementptr inbounds %struct.RigEdge, ptr %2, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !54
  %18 = getelementptr inbounds %struct.RigEdge, ptr %2, i64 0, i32 3
  %19 = getelementptr inbounds %struct.RigEdge, ptr %2, i64 0, i32 2
  %20 = load float, ptr %18, align 4, !tbaa !34
  %21 = load float, ptr %19, align 4, !tbaa !34
  %22 = fsub float %20, %21
  store float %22, ptr %12, align 4, !tbaa !34
  %23 = getelementptr inbounds %struct.RigEdge, ptr %2, i64 0, i32 3, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = getelementptr inbounds %struct.RigEdge, ptr %2, i64 0, i32 2, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = fsub float %24, %26
  %28 = getelementptr inbounds float, ptr %12, i64 1
  store float %27, ptr %28, align 4, !tbaa !34
  %29 = getelementptr inbounds %struct.RigEdge, ptr %2, i64 0, i32 3, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !34
  %31 = getelementptr inbounds %struct.RigEdge, ptr %2, i64 0, i32 2, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !34
  %33 = fsub float %30, %32
  %34 = getelementptr inbounds float, ptr %12, i64 2
  store float %33, ptr %34, align 4, !tbaa !34
  %35 = load float, ptr %4, align 4, !tbaa !34
  %36 = load float, ptr %3, align 4, !tbaa !34
  %37 = fsub float %35, %36
  store float %37, ptr %13, align 4, !tbaa !34
  %38 = getelementptr inbounds float, ptr %4, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !34
  %40 = getelementptr inbounds float, ptr %3, i64 1
  %41 = load float, ptr %40, align 4, !tbaa !34
  %42 = fsub float %39, %41
  %43 = getelementptr inbounds float, ptr %13, i64 1
  store float %42, ptr %43, align 4, !tbaa !34
  %44 = getelementptr inbounds float, ptr %4, i64 2
  %45 = load float, ptr %44, align 4, !tbaa !34
  %46 = getelementptr inbounds float, ptr %3, i64 2
  %47 = load float, ptr %46, align 4, !tbaa !34
  %48 = fsub float %45, %47
  %49 = getelementptr inbounds float, ptr %13, i64 2
  store float %48, ptr %49, align 4, !tbaa !34
  %50 = fmul float %27, %27
  %51 = tail call float @llvm.fmuladd.f32(float %22, float %22, float %50)
  %52 = tail call float @llvm.fmuladd.f32(float %33, float %33, float %51)
  %53 = fcmp ogt float %52, 0x38AA95A5C0000000
  br i1 %53, label %54, label %63

54:                                               ; preds = %6
  %55 = tail call float @sqrtf(float noundef %52) #14
  %56 = fdiv float 1.000000e+00, %55
  %57 = load float, ptr %12, align 4, !tbaa !34
  %58 = fmul float %57, %56
  store float %58, ptr %12, align 4, !tbaa !34
  %59 = load float, ptr %28, align 4, !tbaa !34
  %60 = fmul float %56, %59
  store float %60, ptr %28, align 4, !tbaa !34
  %61 = load float, ptr %34, align 4, !tbaa !34
  %62 = fmul float %56, %61
  br label %64

63:                                               ; preds = %6
  store float 0.000000e+00, ptr %12, align 4, !tbaa !34
  store float 0.000000e+00, ptr %28, align 4, !tbaa !34
  br label %64

64:                                               ; preds = %54, %63
  %65 = phi float [ 0.000000e+00, %63 ], [ %62, %54 ]
  %66 = phi float [ 0.000000e+00, %63 ], [ %55, %54 ]
  store float %65, ptr %34, align 4, !tbaa !34
  %67 = load float, ptr %13, align 4, !tbaa !34
  %68 = load float, ptr %43, align 4, !tbaa !34
  %69 = fmul float %68, %68
  %70 = tail call float @llvm.fmuladd.f32(float %67, float %67, float %69)
  %71 = load float, ptr %49, align 4, !tbaa !34
  %72 = tail call float @llvm.fmuladd.f32(float %71, float %71, float %70)
  %73 = fcmp ogt float %72, 0x38AA95A5C0000000
  br i1 %73, label %74, label %83

74:                                               ; preds = %64
  %75 = tail call float @sqrtf(float noundef %72) #14
  %76 = fdiv float 1.000000e+00, %75
  %77 = load float, ptr %13, align 4, !tbaa !34
  %78 = fmul float %77, %76
  store float %78, ptr %13, align 4, !tbaa !34
  %79 = load float, ptr %43, align 4, !tbaa !34
  %80 = fmul float %76, %79
  store float %80, ptr %43, align 4, !tbaa !34
  %81 = load float, ptr %49, align 4, !tbaa !34
  %82 = fmul float %76, %81
  br label %84

83:                                               ; preds = %64
  store float 0.000000e+00, ptr %13, align 4, !tbaa !34
  store float 0.000000e+00, ptr %43, align 4, !tbaa !34
  br label %84

84:                                               ; preds = %74, %83
  %85 = phi float [ 0.000000e+00, %83 ], [ %82, %74 ]
  %86 = phi float [ 0.000000e+00, %83 ], [ %75, %74 ]
  store float %85, ptr %49, align 4, !tbaa !34
  %87 = fdiv float %86, %66
  call void @rotation_between_vecs_to_quat(ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13) #14
  %88 = getelementptr inbounds %struct.EditBone, ptr %17, i64 0, i32 7
  %89 = load float, ptr %3, align 4, !tbaa !34
  store float %89, ptr %88, align 4, !tbaa !34
  %90 = load float, ptr %40, align 4, !tbaa !34
  %91 = getelementptr inbounds %struct.EditBone, ptr %17, i64 0, i32 7, i64 1
  store float %90, ptr %91, align 4, !tbaa !34
  %92 = load float, ptr %46, align 4, !tbaa !34
  %93 = getelementptr inbounds %struct.EditBone, ptr %17, i64 0, i32 7, i64 2
  store float %92, ptr %93, align 4, !tbaa !34
  %94 = getelementptr inbounds %struct.EditBone, ptr %17, i64 0, i32 8
  %95 = load float, ptr %4, align 4, !tbaa !34
  store float %95, ptr %94, align 4, !tbaa !34
  %96 = load float, ptr %38, align 4, !tbaa !34
  %97 = getelementptr inbounds %struct.EditBone, ptr %17, i64 0, i32 8, i64 1
  store float %96, ptr %97, align 4, !tbaa !34
  %98 = load float, ptr %44, align 4, !tbaa !34
  %99 = getelementptr inbounds %struct.EditBone, ptr %17, i64 0, i32 8, i64 2
  store float %98, ptr %99, align 4, !tbaa !34
  %100 = load float, ptr %5, align 4, !tbaa !34
  %101 = fcmp oeq float %100, 0.000000e+00
  br i1 %101, label %102, label %110

102:                                              ; preds = %84
  %103 = getelementptr inbounds float, ptr %5, i64 1
  %104 = load float, ptr %103, align 4, !tbaa !34
  %105 = fcmp oeq float %104, 0.000000e+00
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = getelementptr inbounds float, ptr %5, i64 2
  %108 = load float, ptr %107, align 4, !tbaa !34
  %109 = fcmp une float %108, 0.000000e+00
  br i1 %109, label %110, label %293

110:                                              ; preds = %102, %84, %106
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #14
  %111 = getelementptr inbounds %struct.Scene, ptr %15, i64 0, i32 20
  %112 = load ptr, ptr %111, align 8, !tbaa !96
  %113 = getelementptr inbounds %struct.ToolSettings, ptr %112, i64 0, i32 46
  %114 = load i8, ptr %113, align 4, !tbaa !196
  switch i8 %114, label %291 [
    i8 1, label %115
    i8 2, label %119
  ]

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.RigEdge, ptr %2, i64 0, i32 8
  %117 = call fastcc float @rollBoneByQuatAligned(ptr noundef %17, ptr noundef nonnull %116, ptr noundef nonnull %11, ptr noundef nonnull %14, ptr noundef nonnull %5)
  %118 = getelementptr inbounds %struct.EditBone, ptr %17, i64 0, i32 6
  store float %117, ptr %118, align 8, !tbaa !124
  br label %292

119:                                              ; preds = %110
  %120 = getelementptr inbounds %struct.RigEdge, ptr %2, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !140
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %127

123:                                              ; preds = %119
  %124 = load ptr, ptr %16, align 8, !tbaa !54
  %125 = getelementptr inbounds %struct.RigEdge, ptr %2, i64 0, i32 8
  %126 = call fastcc float @rollBoneByQuatAligned(ptr noundef %124, ptr noundef nonnull %125, ptr noundef nonnull %11, ptr noundef nonnull %14, ptr noundef nonnull %5)
  br label %288

127:                                              ; preds = %119
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #14
  %128 = getelementptr inbounds %struct.RigEdge, ptr %121, i64 0, i32 7
  %129 = load ptr, ptr %128, align 8, !tbaa !54
  %130 = icmp eq ptr %129, null
  br i1 %130, label %144, label %131

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.EditBone, ptr %129, i64 0, i32 8
  %133 = getelementptr inbounds %struct.EditBone, ptr %129, i64 0, i32 7
  %134 = load float, ptr %132, align 4, !tbaa !34
  %135 = load float, ptr %133, align 4, !tbaa !34
  %136 = fsub float %134, %135
  %137 = getelementptr inbounds %struct.EditBone, ptr %129, i64 0, i32 8, i64 1
  %138 = load float, ptr %137, align 4, !tbaa !34
  %139 = getelementptr inbounds %struct.EditBone, ptr %129, i64 0, i32 7, i64 1
  %140 = load float, ptr %139, align 4, !tbaa !34
  %141 = fsub float %138, %140
  %142 = getelementptr inbounds %struct.EditBone, ptr %129, i64 0, i32 8, i64 2
  %143 = getelementptr inbounds %struct.EditBone, ptr %129, i64 0, i32 7, i64 2
  br label %167

144:                                              ; preds = %127
  %145 = getelementptr inbounds %struct.RigEdge, ptr %121, i64 0, i32 1
  %146 = load ptr, ptr %145, align 8, !tbaa !140
  %147 = getelementptr inbounds %struct.RigEdge, ptr %146, i64 0, i32 7
  %148 = load ptr, ptr %147, align 8, !tbaa !54
  %149 = icmp eq ptr %148, null
  %150 = load ptr, ptr %16, align 8, !tbaa !54
  br i1 %149, label %164, label %151

151:                                              ; preds = %144
  %152 = getelementptr inbounds %struct.EditBone, ptr %150, i64 0, i32 7
  %153 = getelementptr inbounds %struct.EditBone, ptr %148, i64 0, i32 8
  %154 = load float, ptr %152, align 4, !tbaa !34
  %155 = load float, ptr %153, align 4, !tbaa !34
  %156 = fsub float %154, %155
  %157 = getelementptr inbounds %struct.EditBone, ptr %150, i64 0, i32 7, i64 1
  %158 = load float, ptr %157, align 4, !tbaa !34
  %159 = getelementptr inbounds %struct.EditBone, ptr %148, i64 0, i32 8, i64 1
  %160 = load float, ptr %159, align 4, !tbaa !34
  %161 = fsub float %158, %160
  %162 = getelementptr inbounds %struct.EditBone, ptr %150, i64 0, i32 7, i64 2
  %163 = getelementptr inbounds %struct.EditBone, ptr %148, i64 0, i32 8, i64 2
  br label %167

164:                                              ; preds = %144
  %165 = getelementptr inbounds %struct.RigEdge, ptr %2, i64 0, i32 8
  %166 = call fastcc float @rollBoneByQuatAligned(ptr noundef %150, ptr noundef nonnull %165, ptr noundef nonnull %11, ptr noundef nonnull %14, ptr noundef nonnull %5)
  br label %286

167:                                              ; preds = %151, %131
  %168 = phi ptr [ %163, %151 ], [ %143, %131 ]
  %169 = phi ptr [ %162, %151 ], [ %142, %131 ]
  %170 = phi float [ %161, %151 ], [ %141, %131 ]
  %171 = phi float [ %156, %151 ], [ %136, %131 ]
  %172 = load float, ptr %169, align 4, !tbaa !34
  %173 = load float, ptr %168, align 4, !tbaa !34
  %174 = fsub float %172, %173
  %175 = load ptr, ptr %16, align 8, !tbaa !54
  %176 = getelementptr inbounds %struct.EditBone, ptr %175, i64 0, i32 8
  %177 = getelementptr inbounds %struct.EditBone, ptr %175, i64 0, i32 7
  %178 = load float, ptr %176, align 4, !tbaa !34
  %179 = load float, ptr %177, align 4, !tbaa !34
  %180 = fsub float %178, %179
  store float %180, ptr %9, align 4, !tbaa !34
  %181 = getelementptr inbounds %struct.EditBone, ptr %175, i64 0, i32 8, i64 1
  %182 = load float, ptr %181, align 4, !tbaa !34
  %183 = getelementptr inbounds %struct.EditBone, ptr %175, i64 0, i32 7, i64 1
  %184 = load float, ptr %183, align 4, !tbaa !34
  %185 = fsub float %182, %184
  %186 = getelementptr inbounds float, ptr %9, i64 1
  store float %185, ptr %186, align 4, !tbaa !34
  %187 = getelementptr inbounds %struct.EditBone, ptr %175, i64 0, i32 8, i64 2
  %188 = load float, ptr %187, align 4, !tbaa !34
  %189 = getelementptr inbounds %struct.EditBone, ptr %175, i64 0, i32 7, i64 2
  %190 = load float, ptr %189, align 4, !tbaa !34
  %191 = fsub float %188, %190
  %192 = getelementptr inbounds float, ptr %9, i64 2
  store float %191, ptr %192, align 4, !tbaa !34
  %193 = fmul float %170, %170
  %194 = call float @llvm.fmuladd.f32(float %171, float %171, float %193)
  %195 = call float @llvm.fmuladd.f32(float %174, float %174, float %194)
  %196 = fcmp ogt float %195, 0x38AA95A5C0000000
  br i1 %196, label %197, label %203

197:                                              ; preds = %167
  %198 = call float @sqrtf(float noundef %195) #14
  %199 = fdiv float 1.000000e+00, %198
  %200 = fmul float %171, %199
  %201 = fmul float %170, %199
  %202 = fmul float %174, %199
  br label %203

203:                                              ; preds = %197, %167
  %204 = phi float [ %201, %197 ], [ 0.000000e+00, %167 ]
  %205 = phi float [ %200, %197 ], [ 0.000000e+00, %167 ]
  %206 = phi float [ %202, %197 ], [ 0.000000e+00, %167 ]
  %207 = load float, ptr %9, align 4, !tbaa !34
  %208 = load float, ptr %186, align 4, !tbaa !34
  %209 = fmul float %208, %208
  %210 = call float @llvm.fmuladd.f32(float %207, float %207, float %209)
  %211 = load float, ptr %192, align 4, !tbaa !34
  %212 = call float @llvm.fmuladd.f32(float %211, float %211, float %210)
  %213 = fcmp ogt float %212, 0x38AA95A5C0000000
  br i1 %213, label %214, label %223

214:                                              ; preds = %203
  %215 = call float @sqrtf(float noundef %212) #14
  %216 = fdiv float 1.000000e+00, %215
  %217 = load float, ptr %9, align 4, !tbaa !34
  %218 = fmul float %217, %216
  store float %218, ptr %9, align 4, !tbaa !34
  %219 = load float, ptr %186, align 4, !tbaa !34
  %220 = fmul float %216, %219
  store float %220, ptr %186, align 4, !tbaa !34
  %221 = load float, ptr %192, align 4, !tbaa !34
  %222 = fmul float %216, %221
  br label %224

223:                                              ; preds = %203
  store float 0.000000e+00, ptr %9, align 4, !tbaa !34
  store float 0.000000e+00, ptr %186, align 4, !tbaa !34
  br label %224

224:                                              ; preds = %223, %214
  %225 = phi float [ 0.000000e+00, %223 ], [ %222, %214 ]
  store float %225, ptr %192, align 4, !tbaa !34
  %226 = load float, ptr %186, align 4, !tbaa !34
  %227 = fneg float %206
  %228 = fmul float %226, %227
  %229 = call float @llvm.fmuladd.f32(float %204, float %225, float %228)
  store float %229, ptr %10, align 4, !tbaa !34
  %230 = load float, ptr %9, align 4, !tbaa !34
  %231 = fneg float %205
  %232 = fmul float %225, %231
  %233 = call float @llvm.fmuladd.f32(float %206, float %230, float %232)
  %234 = getelementptr inbounds float, ptr %10, i64 1
  store float %233, ptr %234, align 4, !tbaa !34
  %235 = fneg float %204
  %236 = fmul float %230, %235
  %237 = call float @llvm.fmuladd.f32(float %205, float %226, float %236)
  %238 = getelementptr inbounds float, ptr %10, i64 2
  store float %237, ptr %238, align 4, !tbaa !34
  %239 = fmul float %233, %233
  %240 = call float @llvm.fmuladd.f32(float %229, float %229, float %239)
  %241 = call float @llvm.fmuladd.f32(float %237, float %237, float %240)
  %242 = fcmp ogt float %241, 0x38AA95A5C0000000
  br i1 %242, label %243, label %252

243:                                              ; preds = %224
  %244 = call float @sqrtf(float noundef %241) #14
  %245 = fdiv float 1.000000e+00, %244
  %246 = load float, ptr %10, align 4, !tbaa !34
  %247 = fmul float %246, %245
  store float %247, ptr %10, align 4, !tbaa !34
  %248 = load float, ptr %234, align 4, !tbaa !34
  %249 = fmul float %245, %248
  store float %249, ptr %234, align 4, !tbaa !34
  %250 = load float, ptr %238, align 4, !tbaa !34
  %251 = fmul float %245, %250
  br label %253

252:                                              ; preds = %224
  store float 0.000000e+00, ptr %10, align 4, !tbaa !34
  store float 0.000000e+00, ptr %234, align 4, !tbaa !34
  br label %253

253:                                              ; preds = %252, %243
  %254 = phi float [ 0.000000e+00, %252 ], [ %251, %243 ]
  store float %254, ptr %238, align 4, !tbaa !34
  %255 = getelementptr inbounds %struct.RigEdge, ptr %2, i64 0, i32 6
  %256 = load float, ptr %255, align 8, !tbaa !197
  call void @axis_angle_to_quat(ptr noundef nonnull %14, ptr noundef nonnull %9, float noundef %256) #14
  call void @mul_qt_v3(ptr noundef nonnull %14, ptr noundef nonnull %10) #14
  %257 = getelementptr inbounds %struct.RigEdge, ptr %2, i64 0, i32 8
  %258 = load float, ptr %257, align 4, !tbaa !34
  store float %258, ptr %8, align 4, !tbaa !34
  %259 = getelementptr inbounds %struct.RigEdge, ptr %2, i64 0, i32 8, i64 1
  %260 = load float, ptr %259, align 4, !tbaa !34
  %261 = getelementptr inbounds float, ptr %8, i64 1
  store float %260, ptr %261, align 4, !tbaa !34
  %262 = getelementptr inbounds %struct.RigEdge, ptr %2, i64 0, i32 8, i64 2
  %263 = load float, ptr %262, align 4, !tbaa !34
  %264 = getelementptr inbounds float, ptr %8, i64 2
  store float %263, ptr %264, align 4, !tbaa !34
  call void @mul_qt_v3(ptr noundef nonnull %11, ptr noundef nonnull %8) #14
  %265 = load float, ptr %8, align 4, !tbaa !34
  %266 = load float, ptr %261, align 4, !tbaa !34
  %267 = fmul float %266, %266
  %268 = call float @llvm.fmuladd.f32(float %265, float %265, float %267)
  %269 = load float, ptr %264, align 4, !tbaa !34
  %270 = call float @llvm.fmuladd.f32(float %269, float %269, float %268)
  %271 = fcmp ogt float %270, 0x38AA95A5C0000000
  br i1 %271, label %272, label %281

272:                                              ; preds = %253
  %273 = call float @sqrtf(float noundef %270) #14
  %274 = fdiv float 1.000000e+00, %273
  %275 = load float, ptr %8, align 4, !tbaa !34
  %276 = fmul float %275, %274
  store float %276, ptr %8, align 4, !tbaa !34
  %277 = load float, ptr %261, align 4, !tbaa !34
  %278 = fmul float %274, %277
  store float %278, ptr %261, align 4, !tbaa !34
  %279 = load float, ptr %264, align 4, !tbaa !34
  %280 = fmul float %274, %279
  br label %282

281:                                              ; preds = %253
  store float 0.000000e+00, ptr %8, align 4, !tbaa !34
  store float 0.000000e+00, ptr %261, align 4, !tbaa !34
  br label %282

282:                                              ; preds = %281, %272
  %283 = phi float [ 0.000000e+00, %281 ], [ %280, %272 ]
  store float %283, ptr %264, align 4, !tbaa !34
  call void @rotation_between_vecs_to_quat(ptr noundef nonnull %14, ptr noundef nonnull %8, ptr noundef nonnull %10) #14
  %284 = load ptr, ptr %16, align 8, !tbaa !54
  %285 = call float @ED_rollBoneToVector(ptr noundef %284, ptr noundef nonnull %10, i8 noundef zeroext 0) #14
  br label %286

286:                                              ; preds = %282, %164
  %287 = phi float [ %285, %282 ], [ %166, %164 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #14
  br label %288

288:                                              ; preds = %123, %286
  %289 = phi float [ %126, %123 ], [ %287, %286 ]
  %290 = getelementptr inbounds %struct.EditBone, ptr %17, i64 0, i32 6
  store float %289, ptr %290, align 8, !tbaa !124
  br label %292

291:                                              ; preds = %110
  call void @unit_qt(ptr noundef nonnull %14) #14
  br label %292

292:                                              ; preds = %288, %291, %115
  call void @mul_qt_qtqt(ptr noundef nonnull %11, ptr noundef nonnull %14, ptr noundef nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #14
  br label %304

293:                                              ; preds = %106
  %294 = getelementptr inbounds %struct.RigEdge, ptr %2, i64 0, i32 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #14
  %295 = load float, ptr %294, align 4, !tbaa !34
  store float %295, ptr %7, align 4, !tbaa !34
  %296 = getelementptr inbounds %struct.RigEdge, ptr %2, i64 0, i32 8, i64 1
  %297 = load float, ptr %296, align 4, !tbaa !34
  %298 = getelementptr inbounds float, ptr %7, i64 1
  store float %297, ptr %298, align 4, !tbaa !34
  %299 = getelementptr inbounds %struct.RigEdge, ptr %2, i64 0, i32 8, i64 2
  %300 = load float, ptr %299, align 4, !tbaa !34
  %301 = getelementptr inbounds float, ptr %7, i64 2
  store float %300, ptr %301, align 4, !tbaa !34
  call void @mul_qt_v3(ptr noundef nonnull %11, ptr noundef nonnull %7) #14
  %302 = call float @ED_rollBoneToVector(ptr noundef %17, ptr noundef nonnull %7, i8 noundef zeroext 0) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #14
  %303 = getelementptr inbounds %struct.EditBone, ptr %17, i64 0, i32 6
  store float %302, ptr %303, align 8, !tbaa !124
  br label %304

304:                                              ; preds = %293, %292
  %305 = getelementptr inbounds %struct.RigGraph, ptr %1, i64 0, i32 8
  %306 = load ptr, ptr %305, align 8, !tbaa !45
  %307 = icmp eq ptr %306, null
  br i1 %307, label %325, label %308

308:                                              ; preds = %304, %322
  %309 = phi ptr [ %323, %322 ], [ %306, %304 ]
  %310 = getelementptr inbounds %struct.RigControl, ptr %309, i64 0, i32 5
  %311 = load ptr, ptr %310, align 8, !tbaa !70
  %312 = icmp eq ptr %311, %17
  br i1 %312, label %313, label %314

313:                                              ; preds = %308
  call fastcc void @repositionControl(ptr noundef %1, ptr noundef nonnull %309, ptr noundef nonnull %3, ptr noundef nonnull %11, float noundef %87)
  br label %314

314:                                              ; preds = %313, %308
  %315 = getelementptr inbounds %struct.RigControl, ptr %309, i64 0, i32 6
  %316 = load ptr, ptr %315, align 8, !tbaa !170
  %317 = icmp eq ptr %316, %17
  br i1 %317, label %318, label %322

318:                                              ; preds = %314
  %319 = getelementptr inbounds %struct.RigControl, ptr %309, i64 0, i32 10
  %320 = load i32, ptr %319, align 8, !tbaa !73
  %321 = or i32 %320, 2
  store i32 %321, ptr %319, align 8, !tbaa !73
  call fastcc void @finalizeControl(ptr noundef %1, ptr noundef nonnull %309, float noundef 1.000000e+00)
  br label %322

322:                                              ; preds = %314, %318
  %323 = load ptr, ptr %309, align 8, !tbaa !45
  %324 = icmp eq ptr %323, null
  br i1 %324, label %325, label %308, !llvm.loop !198

325:                                              ; preds = %322, %304
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @RIG_nameBone(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @BLI_findlink(ptr noundef %0, i32 noundef %1) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.RigArc, ptr %4, i64 0, i32 9
  %8 = tail call i32 @BLI_countlist(ptr noundef nonnull %7) #14
  %9 = icmp eq i32 %8, %2
  br i1 %9, label %19, label %10

10:                                               ; preds = %6
  %11 = tail call ptr @BLI_findlink(ptr noundef nonnull %7, i32 noundef %2) #14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.RigEdge, ptr %11, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !54
  %16 = icmp eq ptr %15, null
  %17 = getelementptr inbounds %struct.EditBone, ptr %15, i64 0, i32 5
  %18 = select i1 %16, ptr @.str.18, ptr %17
  br label %19

19:                                               ; preds = %13, %10, %6, %3
  %20 = phi ptr [ @.str.15, %3 ], [ @.str.16, %6 ], [ @.str.17, %10 ], [ %18, %13 ]
  ret ptr %20
}

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @RIG_nbJoints(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 1
  %3 = tail call i32 @BLI_countlist(ptr noundef nonnull %2) #14
  %4 = load ptr, ptr %0, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %1, %6
  %7 = phi ptr [ %13, %6 ], [ %4, %1 ]
  %8 = phi i32 [ %12, %6 ], [ %3, %1 ]
  %9 = getelementptr inbounds %struct.RigArc, ptr %7, i64 0, i32 9
  %10 = tail call i32 @BLI_countlist(ptr noundef nonnull %9) #14
  %11 = add i32 %8, -1
  %12 = add i32 %11, %10
  %13 = load ptr, ptr %7, align 8, !tbaa !45
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %6, !llvm.loop !199

15:                                               ; preds = %6, %1
  %16 = phi i32 [ %3, %1 ], [ %12, %6 ]
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define dso_local void @BIF_retargetArmature(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.ListBase, align 8
  %3 = tail call double @PIL_check_seconds_timer() #14
  %4 = tail call ptr @BIF_ReebGraphMultiFromEditMesh(ptr noundef %0) #14
  %5 = tail call double @PIL_check_seconds_timer() #14
  %6 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.55)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #14
  %7 = call i32 @CTX_data_selected_editable_bases(ptr noundef %0, ptr noundef nonnull %2) #14
  br label %8

8:                                                ; preds = %78, %1
  %9 = phi ptr [ %2, %1 ], [ %12, %78 ]
  %10 = phi double [ 0.000000e+00, %1 ], [ %79, %78 ]
  %11 = phi double [ 0.000000e+00, %1 ], [ %80, %78 ]
  %12 = load ptr, ptr %9, align 8, !tbaa !45
  %13 = icmp eq ptr %12, null
  br i1 %13, label %81, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.CollectionPointerLink, ptr %12, i64 0, i32 2, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !200
  %17 = getelementptr inbounds %struct.Base, ptr %16, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !204
  %19 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 3
  %20 = load i16, ptr %19, align 8, !tbaa !206
  %21 = icmp eq i16 %20, 25
  br i1 %21, label %22, label %78

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 19
  %24 = load ptr, ptr %23, align 8, !tbaa !79
  %25 = call double @PIL_check_seconds_timer() #14
  %26 = call ptr @RIG_graphFromArmature(ptr noundef %0, ptr noundef %18, ptr noundef %24)
  %27 = call double @PIL_check_seconds_timer() #14
  %28 = fsub double %27, %25
  %29 = call i32 @puts(ptr nonnull dereferenceable(1) @str.56)
  %30 = getelementptr inbounds %struct.RigGraph, ptr %26, i64 0, i32 11
  store ptr %4, ptr %30, align 8, !tbaa !44
  %31 = getelementptr inbounds %struct.ID, ptr %18, i64 0, i32 4
  %32 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, ptr noundef nonnull %31)
  %33 = call double @PIL_check_seconds_timer() #14
  %34 = getelementptr inbounds %struct.RigGraph, ptr %26, i64 0, i32 16
  %35 = load ptr, ptr %34, align 8, !tbaa !87
  %36 = getelementptr inbounds %struct.Object, ptr %35, i64 0, i32 19
  %37 = load ptr, ptr %36, align 8, !tbaa !79
  %38 = load ptr, ptr %30, align 8, !tbaa !44
  call void @BIF_flagMultiArcs(ptr noundef %38, i32 noundef 0) #14
  %39 = getelementptr inbounds %struct.RigGraph, ptr %26, i64 0, i32 10
  %40 = load ptr, ptr %39, align 8, !tbaa !76
  %41 = getelementptr inbounds %struct.ReebGraph, ptr %38, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !207
  %43 = call i32 @BLI_subtreeShape(ptr noundef %26, ptr noundef %40, ptr noundef null, i32 noundef 0) #14
  %44 = srem i32 %43, 100
  %45 = load ptr, ptr %30, align 8, !tbaa !44
  %46 = call i32 @BLI_subtreeShape(ptr noundef %45, ptr noundef %42, ptr noundef null, i32 noundef 0) #14
  %47 = srem i32 %46, 100
  %48 = icmp eq i32 %44, %47
  br i1 %48, label %64, label %49

49:                                               ; preds = %22
  %50 = getelementptr inbounds %struct.ReebGraph, ptr %38, i64 0, i32 11
  %51 = load ptr, ptr %50, align 8, !tbaa !209
  %52 = icmp eq ptr %51, null
  br i1 %52, label %64, label %57

53:                                               ; preds = %57
  %54 = getelementptr inbounds %struct.ReebGraph, ptr %58, i64 0, i32 11
  %55 = load ptr, ptr %54, align 8, !tbaa !209
  %56 = icmp eq ptr %55, null
  br i1 %56, label %64, label %57, !llvm.loop !210

57:                                               ; preds = %49, %53
  %58 = phi ptr [ %55, %53 ], [ %51, %49 ]
  %59 = getelementptr inbounds %struct.ReebGraph, ptr %58, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !207
  %61 = call i32 @BLI_subtreeShape(ptr noundef nonnull %58, ptr noundef %60, ptr noundef null, i32 noundef 0) #14
  %62 = srem i32 %61, 100
  %63 = icmp eq i32 %44, %62
  br i1 %63, label %64, label %53, !llvm.loop !210

64:                                               ; preds = %57, %53, %49, %22
  %65 = phi ptr [ %42, %22 ], [ %42, %49 ], [ %60, %53 ], [ %60, %57 ]
  %66 = getelementptr inbounds %struct.RigNode, ptr %40, i64 0, i32 10
  store ptr %65, ptr %66, align 8, !tbaa !178
  call fastcc void @retargetSubgraph(ptr noundef %0, ptr noundef %26, ptr noundef null, ptr noundef %40)
  %67 = getelementptr inbounds %struct.RigGraph, ptr %26, i64 0, i32 13
  %68 = load ptr, ptr %67, align 8, !tbaa !38
  call void @BLI_task_pool_work_and_wait(ptr noundef %68) #14
  %69 = getelementptr inbounds %struct.RigGraph, ptr %26, i64 0, i32 9
  %70 = load ptr, ptr %69, align 8, !tbaa !53
  %71 = getelementptr inbounds %struct.bArmature, ptr %37, i64 0, i32 4
  store ptr %70, ptr %71, align 8, !tbaa !85
  call void @ED_armature_from_edit(ptr noundef %37) #14
  %72 = call double @PIL_check_seconds_timer() #14
  %73 = fsub double %72, %33
  %74 = load ptr, ptr @GLOBAL_RIGG, align 8, !tbaa !45
  %75 = icmp eq ptr %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %64
  call void @RIG_freeRigGraph(ptr noundef nonnull %74)
  store ptr null, ptr @GLOBAL_RIGG, align 8, !tbaa !45
  br label %77

77:                                               ; preds = %64, %76
  store ptr %26, ptr @GLOBAL_RIGG, align 8, !tbaa !45
  br label %78

78:                                               ; preds = %14, %77
  %79 = phi double [ %73, %77 ], [ %10, %14 ]
  %80 = phi double [ %28, %77 ], [ %11, %14 ]
  br i1 %21, label %81, label %8, !llvm.loop !211

81:                                               ; preds = %78, %8
  %82 = phi double [ %79, %78 ], [ %10, %8 ]
  %83 = phi double [ %80, %78 ], [ %11, %8 ]
  %84 = fsub double %5, %3
  call void @BLI_freelistN(ptr noundef nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  %85 = call double @PIL_check_seconds_timer() #14
  %86 = fsub double %85, %3
  %87 = call i32 @puts(ptr nonnull dereferenceable(1) @str.58)
  %88 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, double noundef %86)
  %89 = fdiv double %84, %86
  %90 = fmul double %89, 1.000000e+02
  %91 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, double noundef %84, double noundef %90)
  %92 = fdiv double %83, %86
  %93 = fmul double %92, 1.000000e+02
  %94 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, double noundef %83, double noundef %93)
  %95 = fdiv double %82, %86
  %96 = fmul double %95, 1.000000e+02
  %97 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, double noundef %82, double noundef %96)
  %98 = call i32 @puts(ptr nonnull dereferenceable(1) @str.58)
  call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.27) #14
  ret void
}

declare double @PIL_check_seconds_timer() local_unnamed_addr #2

declare ptr @BIF_ReebGraphMultiFromEditMesh(ptr noundef) local_unnamed_addr #2

declare i32 @CTX_data_selected_editable_bases(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_undo_push(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BIF_retargetArc(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [64 x i8], align 16
  %5 = alloca [64 x i8], align 16
  %6 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #14
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %8 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !79
  %10 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 20
  %11 = load ptr, ptr %10, align 8, !tbaa !96
  %12 = getelementptr inbounds %struct.ToolSettings, ptr %11, i64 0, i32 47
  %13 = getelementptr inbounds %struct.ToolSettings, ptr %11, i64 0, i32 48
  %14 = icmp eq ptr %2, null
  br i1 %14, label %15, label %103

15:                                               ; preds = %3
  %16 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #14
  %17 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %18 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %19 = tail call ptr %18(i64 noundef 160, ptr noundef nonnull @.str.37) #14
  %20 = getelementptr inbounds %struct.RigGraph, ptr %19, i64 0, i32 10
  store ptr null, ptr %20, align 8, !tbaa !76
  %21 = tail call ptr @BLI_ghash_str_new(ptr noundef nonnull @.str.38) #14
  %22 = getelementptr inbounds %struct.RigGraph, ptr %19, i64 0, i32 14
  store ptr %21, ptr %22, align 8, !tbaa !50
  %23 = tail call ptr @BLI_ghash_str_new(ptr noundef nonnull @.str.39) #14
  %24 = getelementptr inbounds %struct.RigGraph, ptr %19, i64 0, i32 15
  store ptr %23, ptr %24, align 8, !tbaa !51
  %25 = getelementptr inbounds %struct.RigGraph, ptr %19, i64 0, i32 3
  store ptr @RIG_freeRigArc, ptr %25, align 8, !tbaa !77
  %26 = getelementptr inbounds %struct.RigGraph, ptr %19, i64 0, i32 4
  store ptr null, ptr %26, align 8, !tbaa !78
  %27 = tail call ptr @BLI_task_scheduler_create(i32 noundef 0) #14
  %28 = getelementptr inbounds %struct.RigGraph, ptr %19, i64 0, i32 12
  store ptr %27, ptr %28, align 8, !tbaa !43
  %29 = tail call ptr @BLI_task_pool_create(ptr noundef %27, ptr noundef null) #14
  %30 = getelementptr inbounds %struct.RigGraph, ptr %19, i64 0, i32 13
  store ptr %29, ptr %30, align 8, !tbaa !38
  %31 = icmp eq ptr %16, %6
  %32 = getelementptr inbounds %struct.RigGraph, ptr %19, i64 0, i32 9
  br i1 %31, label %33, label %36

33:                                               ; preds = %15
  %34 = getelementptr inbounds %struct.bArmature, ptr %9, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !85
  store ptr %35, ptr %32, align 8, !tbaa !53
  br label %44

36:                                               ; preds = %15
  %37 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %38 = tail call ptr %37(i64 noundef 16, ptr noundef nonnull @.str.13) #14
  store ptr %38, ptr %32, align 8, !tbaa !53
  %39 = getelementptr inbounds %struct.bArmature, ptr %9, i64 0, i32 2
  %40 = tail call ptr @make_boneList(ptr noundef %38, ptr noundef nonnull %39, ptr noundef null, ptr noundef null) #14
  %41 = getelementptr inbounds %struct.RigGraph, ptr %19, i64 0, i32 7
  %42 = load i32, ptr %41, align 8, !tbaa !52
  %43 = or i32 %42, 1
  store i32 %43, ptr %41, align 8, !tbaa !52
  br label %44

44:                                               ; preds = %36, %33
  %45 = getelementptr inbounds %struct.RigGraph, ptr %19, i64 0, i32 16
  store ptr %6, ptr %45, align 8, !tbaa !87
  %46 = getelementptr inbounds %struct.RigGraph, ptr %19, i64 0, i32 9
  %47 = load ptr, ptr %46, align 8, !tbaa !53
  %48 = load ptr, ptr %47, align 8, !tbaa !45
  %49 = icmp eq ptr %48, null
  br i1 %49, label %60, label %50

50:                                               ; preds = %44, %57
  %51 = phi ptr [ %58, %57 ], [ %48, %44 ]
  %52 = getelementptr inbounds %struct.EditBone, ptr %51, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !88
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load ptr, ptr %46, align 8, !tbaa !53
  tail call fastcc void @RIG_arcFromBoneChain(ptr noundef %19, ptr noundef %56, ptr noundef nonnull %51, ptr noundef null, i8 noundef zeroext 1)
  br label %57

57:                                               ; preds = %55, %50
  %58 = load ptr, ptr %51, align 8, !tbaa !45
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %50, !llvm.loop !212

60:                                               ; preds = %57, %44
  tail call void @BLI_removeDoubleNodes(ptr noundef %19, float noundef 0x3F50624DE0000000) #14
  tail call fastcc void @RIG_removeNormalNodes(ptr noundef %19)
  tail call fastcc void @RIG_removeUneededOffsets(ptr noundef %19)
  tail call void @BLI_buildAdjacencyList(ptr noundef %19) #14
  %61 = load ptr, ptr %20, align 8, !tbaa !76
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %93

63:                                               ; preds = %60
  %64 = tail call i32 @BLI_countlist(ptr noundef %19) #14
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load ptr, ptr %19, align 8, !tbaa !91
  %68 = getelementptr inbounds %struct.RigArc, ptr %67, i64 0, i32 2
  br label %84

69:                                               ; preds = %63, %73
  %70 = phi ptr [ %71, %73 ], [ %19, %63 ]
  %71 = load ptr, ptr %70, align 8, !tbaa !45
  %72 = icmp eq ptr %71, null
  br i1 %72, label %87, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.RigArc, ptr %71, i64 0, i32 9, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !92
  %76 = getelementptr inbounds %struct.RigEdge, ptr %75, i64 0, i32 7
  %77 = load ptr, ptr %76, align 8, !tbaa !54
  %78 = getelementptr inbounds %struct.EditBone, ptr %77, i64 0, i32 9
  %79 = load i32, ptr %78, align 4, !tbaa !93
  %80 = and i32 %79, 5
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %69, label %82

82:                                               ; preds = %73
  %83 = getelementptr inbounds %struct.RigArc, ptr %71, i64 0, i32 3
  br label %84, !llvm.loop !94

84:                                               ; preds = %66, %82
  %85 = phi ptr [ %83, %82 ], [ %68, %66 ]
  %86 = load ptr, ptr %85, align 8, !tbaa !45
  store ptr %86, ptr %20, align 8, !tbaa !76
  br label %87

87:                                               ; preds = %69, %84
  %88 = load ptr, ptr %20, align 8, !tbaa !76
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.RigGraph, ptr %19, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !95
  store ptr %92, ptr %20, align 8, !tbaa !76
  br label %93

93:                                               ; preds = %60, %87, %90
  %94 = load ptr, ptr %20, align 8, !tbaa !76
  %95 = getelementptr inbounds %struct.Scene, ptr %17, i64 0, i32 20
  %96 = load ptr, ptr %95, align 8, !tbaa !96
  %97 = getelementptr inbounds %struct.ToolSettings, ptr %96, i64 0, i32 32
  %98 = load float, ptr %97, align 8, !tbaa !115
  tail call void @BLI_markdownSymmetry(ptr noundef %19, ptr noundef %94, float noundef %98) #14
  tail call fastcc void @RIG_reconnectControlBones(ptr noundef %19)
  %99 = tail call zeroext i8 @BLI_isGraphCyclic(ptr noundef %19) #14
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %93
  %102 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.59)
  br label %103

103:                                              ; preds = %101, %93, %3
  %104 = phi ptr [ %2, %3 ], [ %19, %93 ], [ %19, %101 ]
  %105 = load ptr, ptr %104, align 8, !tbaa !213
  %106 = icmp eq ptr %105, null
  br i1 %106, label %423, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.bArmature, ptr %9, i64 0, i32 4
  %109 = load ptr, ptr %108, align 8, !tbaa !85
  %110 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.48) #14
  %111 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %112 = tail call ptr %111(i64 noundef 160, ptr noundef nonnull @.str.37) #14
  %113 = getelementptr inbounds %struct.RigGraph, ptr %112, i64 0, i32 10
  store ptr null, ptr %113, align 8, !tbaa !76
  %114 = tail call ptr @BLI_ghash_str_new(ptr noundef nonnull @.str.38) #14
  %115 = getelementptr inbounds %struct.RigGraph, ptr %112, i64 0, i32 14
  store ptr %114, ptr %115, align 8, !tbaa !50
  %116 = tail call ptr @BLI_ghash_str_new(ptr noundef nonnull @.str.39) #14
  %117 = getelementptr inbounds %struct.RigGraph, ptr %112, i64 0, i32 15
  store ptr %116, ptr %117, align 8, !tbaa !51
  %118 = getelementptr inbounds %struct.RigGraph, ptr %112, i64 0, i32 3
  store ptr @RIG_freeRigArc, ptr %118, align 8, !tbaa !77
  %119 = getelementptr inbounds %struct.RigGraph, ptr %112, i64 0, i32 4
  store ptr null, ptr %119, align 8, !tbaa !78
  %120 = tail call ptr @BLI_task_scheduler_create(i32 noundef 0) #14
  %121 = getelementptr inbounds %struct.RigGraph, ptr %112, i64 0, i32 12
  store ptr %120, ptr %121, align 8, !tbaa !43
  %122 = tail call ptr @BLI_task_pool_create(ptr noundef %120, ptr noundef null) #14
  %123 = getelementptr inbounds %struct.RigGraph, ptr %112, i64 0, i32 13
  store ptr %122, ptr %123, align 8, !tbaa !38
  %124 = getelementptr inbounds %struct.RigGraph, ptr %112, i64 0, i32 16
  store ptr %6, ptr %124, align 8, !tbaa !87
  %125 = getelementptr inbounds %struct.RigGraph, ptr %112, i64 0, i32 9
  store ptr %109, ptr %125, align 8, !tbaa !53
  tail call void @preEditBoneDuplicate(ptr noundef %109) #14
  %126 = getelementptr inbounds %struct.RigGraph, ptr %104, i64 0, i32 9
  %127 = load ptr, ptr %126, align 8, !tbaa !53
  tail call void @preEditBoneDuplicate(ptr noundef %127) #14
  %128 = getelementptr inbounds %struct.RigGraph, ptr %104, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !45
  %130 = icmp eq ptr %129, null
  br i1 %130, label %150, label %131

131:                                              ; preds = %107
  %132 = getelementptr inbounds %struct.RigGraph, ptr %112, i64 0, i32 1
  br label %133

133:                                              ; preds = %131, %133
  %134 = phi ptr [ %129, %131 ], [ %148, %133 ]
  %135 = getelementptr inbounds %struct.RigNode, ptr %134, i64 0, i32 2
  %136 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %137 = tail call ptr %136(i64 noundef 80, ptr noundef nonnull @.str.41) #14
  tail call void @BLI_addtail(ptr noundef nonnull %132, ptr noundef %137) #14
  %138 = getelementptr inbounds %struct.RigNode, ptr %137, i64 0, i32 2
  %139 = load float, ptr %135, align 4, !tbaa !34
  store float %139, ptr %138, align 4, !tbaa !34
  %140 = getelementptr inbounds %struct.RigNode, ptr %134, i64 0, i32 2, i64 1
  %141 = load float, ptr %140, align 4, !tbaa !34
  %142 = getelementptr inbounds %struct.RigNode, ptr %137, i64 0, i32 2, i64 1
  store float %141, ptr %142, align 4, !tbaa !34
  %143 = getelementptr inbounds %struct.RigNode, ptr %134, i64 0, i32 2, i64 2
  %144 = load float, ptr %143, align 4, !tbaa !34
  %145 = getelementptr inbounds %struct.RigNode, ptr %137, i64 0, i32 2, i64 2
  store float %144, ptr %145, align 4, !tbaa !34
  %146 = getelementptr inbounds %struct.RigNode, ptr %137, i64 0, i32 4
  store i32 0, ptr %146, align 8, !tbaa !59
  %147 = getelementptr inbounds %struct.RigNode, ptr %137, i64 0, i32 5
  store ptr null, ptr %147, align 8, !tbaa !123
  tail call void @BLI_ghash_insert(ptr noundef %110, ptr noundef nonnull %134, ptr noundef %137) #14
  %148 = load ptr, ptr %134, align 8, !tbaa !45
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %133, !llvm.loop !214

150:                                              ; preds = %133, %107
  %151 = getelementptr inbounds %struct.RigGraph, ptr %104, i64 0, i32 10
  %152 = load ptr, ptr %151, align 8, !tbaa !76
  %153 = tail call ptr @BLI_ghash_lookup(ptr noundef %110, ptr noundef %152) #14
  store ptr %153, ptr %113, align 8, !tbaa !76
  %154 = load ptr, ptr %104, align 8, !tbaa !45
  %155 = icmp eq ptr %154, null
  br i1 %155, label %251, label %156

156:                                              ; preds = %150
  %157 = getelementptr inbounds %struct.RigGraph, ptr %104, i64 0, i32 16
  br label %161

158:                                              ; preds = %248, %161
  %159 = load ptr, ptr %162, align 8, !tbaa !45
  %160 = icmp eq ptr %159, null
  br i1 %160, label %251, label %161, !llvm.loop !215

161:                                              ; preds = %156, %158
  %162 = phi ptr [ %154, %156 ], [ %159, %158 ]
  %163 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %164 = call ptr %163(i64 noundef 88, ptr noundef nonnull @.str.40) #14
  %165 = getelementptr inbounds %struct.RigArc, ptr %164, i64 0, i32 10
  store i32 0, ptr %165, align 8, !tbaa !122
  call void @BLI_addtail(ptr noundef %112, ptr noundef %164) #14
  %166 = getelementptr inbounds %struct.RigArc, ptr %162, i64 0, i32 2
  %167 = load ptr, ptr %166, align 8, !tbaa !57
  %168 = call ptr @BLI_ghash_lookup(ptr noundef %110, ptr noundef %167) #14
  %169 = getelementptr inbounds %struct.RigArc, ptr %164, i64 0, i32 2
  store ptr %168, ptr %169, align 8, !tbaa !57
  %170 = getelementptr inbounds %struct.RigArc, ptr %162, i64 0, i32 3
  %171 = load ptr, ptr %170, align 8, !tbaa !68
  %172 = call ptr @BLI_ghash_lookup(ptr noundef %110, ptr noundef %171) #14
  %173 = getelementptr inbounds %struct.RigArc, ptr %164, i64 0, i32 3
  store ptr %172, ptr %173, align 8, !tbaa !68
  %174 = load ptr, ptr %169, align 8, !tbaa !57
  %175 = getelementptr inbounds %struct.RigNode, ptr %174, i64 0, i32 4
  %176 = load i32, ptr %175, align 8, !tbaa !59
  %177 = add nsw i32 %176, 1
  store i32 %177, ptr %175, align 8, !tbaa !59
  %178 = getelementptr inbounds %struct.RigNode, ptr %172, i64 0, i32 4
  %179 = load i32, ptr %178, align 8, !tbaa !59
  %180 = add nsw i32 %179, 1
  store i32 %180, ptr %178, align 8, !tbaa !59
  %181 = getelementptr inbounds %struct.RigArc, ptr %162, i64 0, i32 5
  %182 = load float, ptr %181, align 4, !tbaa !193
  %183 = getelementptr inbounds %struct.RigArc, ptr %164, i64 0, i32 5
  store float %182, ptr %183, align 4, !tbaa !193
  %184 = getelementptr inbounds %struct.RigArc, ptr %162, i64 0, i32 10
  %185 = load i32, ptr %184, align 8, !tbaa !122
  store i32 %185, ptr %165, align 8, !tbaa !122
  %186 = getelementptr inbounds %struct.RigArc, ptr %162, i64 0, i32 9
  %187 = load ptr, ptr %186, align 8, !tbaa !45
  %188 = icmp eq ptr %187, null
  br i1 %188, label %158, label %189

189:                                              ; preds = %161
  %190 = getelementptr inbounds %struct.RigArc, ptr %164, i64 0, i32 9
  br label %191

191:                                              ; preds = %189, %248
  %192 = phi ptr [ %187, %189 ], [ %249, %248 ]
  %193 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %194 = call ptr %193(i64 noundef 80, ptr noundef nonnull @.str.42) #14
  %195 = getelementptr inbounds %struct.RigEdge, ptr %194, i64 0, i32 2
  %196 = getelementptr inbounds %struct.RigEdge, ptr %192, i64 0, i32 2
  %197 = load float, ptr %196, align 4, !tbaa !34
  store float %197, ptr %195, align 4, !tbaa !34
  %198 = getelementptr inbounds %struct.RigEdge, ptr %192, i64 0, i32 2, i64 1
  %199 = load float, ptr %198, align 4, !tbaa !34
  %200 = getelementptr inbounds %struct.RigEdge, ptr %194, i64 0, i32 2, i64 1
  store float %199, ptr %200, align 4, !tbaa !34
  %201 = getelementptr inbounds %struct.RigEdge, ptr %192, i64 0, i32 2, i64 2
  %202 = load float, ptr %201, align 4, !tbaa !34
  %203 = getelementptr inbounds %struct.RigEdge, ptr %194, i64 0, i32 2, i64 2
  store float %202, ptr %203, align 4, !tbaa !34
  %204 = getelementptr inbounds %struct.RigEdge, ptr %194, i64 0, i32 3
  %205 = getelementptr inbounds %struct.RigEdge, ptr %192, i64 0, i32 3
  %206 = load float, ptr %205, align 4, !tbaa !34
  store float %206, ptr %204, align 4, !tbaa !34
  %207 = getelementptr inbounds %struct.RigEdge, ptr %192, i64 0, i32 3, i64 1
  %208 = load float, ptr %207, align 4, !tbaa !34
  %209 = getelementptr inbounds %struct.RigEdge, ptr %194, i64 0, i32 3, i64 1
  store float %208, ptr %209, align 4, !tbaa !34
  %210 = getelementptr inbounds %struct.RigEdge, ptr %192, i64 0, i32 3, i64 2
  %211 = load float, ptr %210, align 4, !tbaa !34
  %212 = getelementptr inbounds %struct.RigEdge, ptr %194, i64 0, i32 3, i64 2
  store float %211, ptr %212, align 4, !tbaa !34
  %213 = getelementptr inbounds %struct.RigEdge, ptr %194, i64 0, i32 8
  %214 = getelementptr inbounds %struct.RigEdge, ptr %192, i64 0, i32 8
  %215 = load float, ptr %214, align 4, !tbaa !34
  store float %215, ptr %213, align 4, !tbaa !34
  %216 = getelementptr inbounds %struct.RigEdge, ptr %192, i64 0, i32 8, i64 1
  %217 = load float, ptr %216, align 4, !tbaa !34
  %218 = getelementptr inbounds %struct.RigEdge, ptr %194, i64 0, i32 8, i64 1
  store float %217, ptr %218, align 4, !tbaa !34
  %219 = getelementptr inbounds %struct.RigEdge, ptr %192, i64 0, i32 8, i64 2
  %220 = load float, ptr %219, align 4, !tbaa !34
  %221 = getelementptr inbounds %struct.RigEdge, ptr %194, i64 0, i32 8, i64 2
  store float %220, ptr %221, align 4, !tbaa !34
  %222 = getelementptr inbounds %struct.RigEdge, ptr %192, i64 0, i32 4
  %223 = load float, ptr %222, align 8, !tbaa !62
  %224 = getelementptr inbounds %struct.RigEdge, ptr %194, i64 0, i32 4
  store float %223, ptr %224, align 8, !tbaa !62
  %225 = getelementptr inbounds %struct.RigEdge, ptr %192, i64 0, i32 5
  %226 = load float, ptr %225, align 4, !tbaa !63
  %227 = getelementptr inbounds %struct.RigEdge, ptr %194, i64 0, i32 5
  store float %226, ptr %227, align 4, !tbaa !63
  %228 = getelementptr inbounds %struct.RigEdge, ptr %192, i64 0, i32 6
  %229 = load float, ptr %228, align 8, !tbaa !197
  %230 = getelementptr inbounds %struct.RigEdge, ptr %194, i64 0, i32 6
  store float %229, ptr %230, align 8, !tbaa !197
  %231 = getelementptr inbounds %struct.RigEdge, ptr %192, i64 0, i32 7
  %232 = load ptr, ptr %231, align 8, !tbaa !54
  %233 = icmp eq ptr %232, null
  br i1 %233, label %248, label %234

234:                                              ; preds = %191
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #14
  %235 = load ptr, ptr %231, align 8, !tbaa !54
  %236 = getelementptr inbounds %struct.EditBone, ptr %235, i64 0, i32 5
  %237 = load ptr, ptr %125, align 8, !tbaa !53
  call fastcc void @renameTemplateBone(ptr noundef nonnull %5, ptr noundef nonnull %236, ptr noundef %237, ptr noundef nonnull %12, ptr noundef nonnull %13)
  %238 = load ptr, ptr %231, align 8, !tbaa !54
  %239 = load ptr, ptr %125, align 8, !tbaa !53
  %240 = load ptr, ptr %157, align 8, !tbaa !87
  %241 = load ptr, ptr %124, align 8, !tbaa !87
  %242 = call ptr @duplicateEditBoneObjects(ptr noundef %238, ptr noundef nonnull %5, ptr noundef %239, ptr noundef %240, ptr noundef %241) #14
  %243 = getelementptr inbounds %struct.RigEdge, ptr %194, i64 0, i32 7
  store ptr %242, ptr %243, align 8, !tbaa !54
  %244 = getelementptr inbounds %struct.EditBone, ptr %242, i64 0, i32 9
  %245 = load i32, ptr %244, align 4, !tbaa !93
  %246 = and i32 %245, -8
  store i32 %246, ptr %244, align 4, !tbaa !93
  %247 = load ptr, ptr %231, align 8, !tbaa !54
  call void @BLI_ghash_insert(ptr noundef %110, ptr noundef %247, ptr noundef %242) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #14
  br label %248

248:                                              ; preds = %234, %191
  call void @BLI_addtail(ptr noundef nonnull %190, ptr noundef %194) #14
  %249 = load ptr, ptr %192, align 8, !tbaa !45
  %250 = icmp eq ptr %249, null
  br i1 %250, label %158, label %191, !llvm.loop !216

251:                                              ; preds = %158, %150
  %252 = getelementptr inbounds %struct.RigGraph, ptr %104, i64 0, i32 8
  %253 = load ptr, ptr %252, align 8, !tbaa !45
  %254 = icmp eq ptr %253, null
  br i1 %254, label %258, label %255

255:                                              ; preds = %251
  %256 = getelementptr inbounds %struct.RigGraph, ptr %112, i64 0, i32 8
  %257 = getelementptr inbounds %struct.RigGraph, ptr %104, i64 0, i32 16
  br label %263

258:                                              ; preds = %263, %251
  %259 = load ptr, ptr %112, align 8, !tbaa !45
  %260 = icmp eq ptr %259, null
  br i1 %260, label %365, label %261

261:                                              ; preds = %258
  %262 = getelementptr inbounds %struct.RigGraph, ptr %104, i64 0, i32 16
  br label %334

263:                                              ; preds = %255, %263
  %264 = phi ptr [ %253, %255 ], [ %329, %263 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #14
  %265 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %266 = call ptr %265(i64 noundef 112, ptr noundef nonnull @.str.43) #14
  call void @BLI_addtail(ptr noundef nonnull %256, ptr noundef %266) #14
  %267 = getelementptr inbounds %struct.RigControl, ptr %266, i64 0, i32 2
  %268 = getelementptr inbounds %struct.RigControl, ptr %264, i64 0, i32 2
  %269 = load float, ptr %268, align 4, !tbaa !34
  store float %269, ptr %267, align 4, !tbaa !34
  %270 = getelementptr inbounds %struct.RigControl, ptr %264, i64 0, i32 2, i64 1
  %271 = load float, ptr %270, align 4, !tbaa !34
  %272 = getelementptr inbounds %struct.RigControl, ptr %266, i64 0, i32 2, i64 1
  store float %271, ptr %272, align 4, !tbaa !34
  %273 = getelementptr inbounds %struct.RigControl, ptr %264, i64 0, i32 2, i64 2
  %274 = load float, ptr %273, align 4, !tbaa !34
  %275 = getelementptr inbounds %struct.RigControl, ptr %266, i64 0, i32 2, i64 2
  store float %274, ptr %275, align 4, !tbaa !34
  %276 = getelementptr inbounds %struct.RigControl, ptr %266, i64 0, i32 3
  %277 = getelementptr inbounds %struct.RigControl, ptr %264, i64 0, i32 3
  %278 = load float, ptr %277, align 4, !tbaa !34
  store float %278, ptr %276, align 4, !tbaa !34
  %279 = getelementptr inbounds %struct.RigControl, ptr %264, i64 0, i32 3, i64 1
  %280 = load float, ptr %279, align 4, !tbaa !34
  %281 = getelementptr inbounds %struct.RigControl, ptr %266, i64 0, i32 3, i64 1
  store float %280, ptr %281, align 4, !tbaa !34
  %282 = getelementptr inbounds %struct.RigControl, ptr %264, i64 0, i32 3, i64 2
  %283 = load float, ptr %282, align 4, !tbaa !34
  %284 = getelementptr inbounds %struct.RigControl, ptr %266, i64 0, i32 3, i64 2
  store float %283, ptr %284, align 4, !tbaa !34
  %285 = getelementptr inbounds %struct.RigControl, ptr %266, i64 0, i32 7
  %286 = getelementptr inbounds %struct.RigControl, ptr %264, i64 0, i32 7
  %287 = load float, ptr %286, align 4, !tbaa !34
  store float %287, ptr %285, align 4, !tbaa !34
  %288 = getelementptr inbounds %struct.RigControl, ptr %264, i64 0, i32 7, i64 1
  %289 = load float, ptr %288, align 4, !tbaa !34
  %290 = getelementptr inbounds %struct.RigControl, ptr %266, i64 0, i32 7, i64 1
  store float %289, ptr %290, align 4, !tbaa !34
  %291 = getelementptr inbounds %struct.RigControl, ptr %264, i64 0, i32 7, i64 2
  %292 = load float, ptr %291, align 4, !tbaa !34
  %293 = getelementptr inbounds %struct.RigControl, ptr %266, i64 0, i32 7, i64 2
  store float %292, ptr %293, align 4, !tbaa !34
  %294 = getelementptr inbounds %struct.RigControl, ptr %266, i64 0, i32 8
  %295 = getelementptr inbounds %struct.RigControl, ptr %264, i64 0, i32 8
  %296 = load float, ptr %295, align 4, !tbaa !34
  store float %296, ptr %294, align 4, !tbaa !34
  %297 = getelementptr inbounds %struct.RigControl, ptr %264, i64 0, i32 8, i64 1
  %298 = load float, ptr %297, align 4, !tbaa !34
  %299 = getelementptr inbounds %struct.RigControl, ptr %266, i64 0, i32 8, i64 1
  store float %298, ptr %299, align 4, !tbaa !34
  %300 = getelementptr inbounds %struct.RigControl, ptr %264, i64 0, i32 8, i64 2
  %301 = load float, ptr %300, align 4, !tbaa !34
  %302 = getelementptr inbounds %struct.RigControl, ptr %266, i64 0, i32 8, i64 2
  store float %301, ptr %302, align 4, !tbaa !34
  %303 = getelementptr inbounds %struct.RigControl, ptr %264, i64 0, i32 11
  %304 = load i32, ptr %303, align 4, !tbaa !125
  %305 = getelementptr inbounds %struct.RigControl, ptr %266, i64 0, i32 11
  store i32 %304, ptr %305, align 4, !tbaa !125
  %306 = getelementptr inbounds %struct.RigControl, ptr %264, i64 0, i32 10
  %307 = load i32, ptr %306, align 8, !tbaa !73
  %308 = getelementptr inbounds %struct.RigControl, ptr %266, i64 0, i32 10
  store i32 %307, ptr %308, align 8, !tbaa !73
  %309 = getelementptr inbounds %struct.RigControl, ptr %264, i64 0, i32 4
  %310 = load ptr, ptr %309, align 8, !tbaa !72
  %311 = getelementptr inbounds %struct.EditBone, ptr %310, i64 0, i32 5
  %312 = load ptr, ptr %125, align 8, !tbaa !53
  call fastcc void @renameTemplateBone(ptr noundef nonnull %4, ptr noundef nonnull %311, ptr noundef %312, ptr noundef nonnull %12, ptr noundef nonnull %13)
  %313 = load ptr, ptr %309, align 8, !tbaa !72
  %314 = load ptr, ptr %125, align 8, !tbaa !53
  %315 = load ptr, ptr %257, align 8, !tbaa !87
  %316 = load ptr, ptr %124, align 8, !tbaa !87
  %317 = call ptr @duplicateEditBoneObjects(ptr noundef %313, ptr noundef nonnull %4, ptr noundef %314, ptr noundef %315, ptr noundef %316) #14
  %318 = getelementptr inbounds %struct.RigControl, ptr %266, i64 0, i32 4
  store ptr %317, ptr %318, align 8, !tbaa !72
  %319 = getelementptr inbounds %struct.EditBone, ptr %317, i64 0, i32 9
  %320 = load i32, ptr %319, align 4, !tbaa !93
  %321 = and i32 %320, -8
  store i32 %321, ptr %319, align 4, !tbaa !93
  %322 = load ptr, ptr %309, align 8, !tbaa !72
  call void @BLI_ghash_insert(ptr noundef %110, ptr noundef %322, ptr noundef %317) #14
  %323 = getelementptr inbounds %struct.RigControl, ptr %264, i64 0, i32 5
  %324 = load ptr, ptr %323, align 8, !tbaa !70
  %325 = getelementptr inbounds %struct.RigControl, ptr %266, i64 0, i32 5
  store ptr %324, ptr %325, align 8, !tbaa !70
  %326 = getelementptr inbounds %struct.RigControl, ptr %264, i64 0, i32 6
  %327 = load ptr, ptr %326, align 8, !tbaa !170
  %328 = getelementptr inbounds %struct.RigControl, ptr %266, i64 0, i32 6
  store ptr %327, ptr %328, align 8, !tbaa !170
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #14
  %329 = load ptr, ptr %264, align 8, !tbaa !45
  %330 = icmp eq ptr %329, null
  br i1 %330, label %258, label %263, !llvm.loop !217

331:                                              ; preds = %362, %334
  %332 = load ptr, ptr %335, align 8, !tbaa !45
  %333 = icmp eq ptr %332, null
  br i1 %333, label %365, label %334, !llvm.loop !218

334:                                              ; preds = %261, %331
  %335 = phi ptr [ %259, %261 ], [ %332, %331 ]
  %336 = getelementptr inbounds %struct.RigArc, ptr %335, i64 0, i32 9
  %337 = load ptr, ptr %336, align 8, !tbaa !45
  %338 = icmp eq ptr %337, null
  br i1 %338, label %331, label %339

339:                                              ; preds = %334, %362
  %340 = phi ptr [ %363, %362 ], [ %337, %334 ]
  %341 = getelementptr inbounds %struct.RigEdge, ptr %340, i64 0, i32 7
  %342 = load ptr, ptr %341, align 8, !tbaa !54
  %343 = icmp eq ptr %342, null
  br i1 %343, label %362, label %344

344:                                              ; preds = %339
  %345 = load ptr, ptr %126, align 8, !tbaa !53
  %346 = load ptr, ptr %262, align 8, !tbaa !87
  %347 = load ptr, ptr %124, align 8, !tbaa !87
  call void @updateDuplicateSubtargetObjects(ptr noundef nonnull %342, ptr noundef %345, ptr noundef %346, ptr noundef %347) #14
  %348 = load ptr, ptr %341, align 8, !tbaa !54
  %349 = getelementptr inbounds %struct.EditBone, ptr %348, i64 0, i32 3
  %350 = load ptr, ptr %349, align 8, !tbaa !88
  %351 = icmp eq ptr %350, null
  br i1 %351, label %362, label %352

352:                                              ; preds = %344
  %353 = call ptr @BLI_ghash_lookup(ptr noundef %110, ptr noundef nonnull %350) #14
  %354 = icmp eq ptr %353, null
  %355 = load ptr, ptr %341, align 8, !tbaa !54
  br i1 %354, label %358, label %356

356:                                              ; preds = %352
  %357 = getelementptr inbounds %struct.EditBone, ptr %355, i64 0, i32 3
  store ptr %353, ptr %357, align 8, !tbaa !88
  br label %362

358:                                              ; preds = %352
  %359 = getelementptr inbounds %struct.EditBone, ptr %355, i64 0, i32 9
  %360 = load i32, ptr %359, align 4, !tbaa !93
  %361 = and i32 %360, -17
  store i32 %361, ptr %359, align 4, !tbaa !93
  br label %362

362:                                              ; preds = %358, %356, %344, %339
  %363 = load ptr, ptr %340, align 8, !tbaa !45
  %364 = icmp eq ptr %363, null
  br i1 %364, label %331, label %339, !llvm.loop !219

365:                                              ; preds = %331, %258
  %366 = getelementptr inbounds %struct.RigGraph, ptr %112, i64 0, i32 8
  %367 = load ptr, ptr %366, align 8, !tbaa !45
  %368 = icmp eq ptr %367, null
  br i1 %368, label %401, label %369

369:                                              ; preds = %365
  %370 = getelementptr inbounds %struct.RigGraph, ptr %104, i64 0, i32 16
  br label %371

371:                                              ; preds = %369, %392
  %372 = phi ptr [ %367, %369 ], [ %399, %392 ]
  %373 = getelementptr inbounds %struct.RigControl, ptr %372, i64 0, i32 4
  %374 = load ptr, ptr %373, align 8, !tbaa !72
  %375 = load ptr, ptr %126, align 8, !tbaa !53
  %376 = load ptr, ptr %370, align 8, !tbaa !87
  %377 = load ptr, ptr %124, align 8, !tbaa !87
  call void @updateDuplicateSubtargetObjects(ptr noundef %374, ptr noundef %375, ptr noundef %376, ptr noundef %377) #14
  %378 = load ptr, ptr %373, align 8, !tbaa !72
  %379 = getelementptr inbounds %struct.EditBone, ptr %378, i64 0, i32 3
  %380 = load ptr, ptr %379, align 8, !tbaa !88
  %381 = icmp eq ptr %380, null
  br i1 %381, label %392, label %382

382:                                              ; preds = %371
  %383 = call ptr @BLI_ghash_lookup(ptr noundef %110, ptr noundef nonnull %380) #14
  %384 = icmp eq ptr %383, null
  %385 = load ptr, ptr %373, align 8, !tbaa !72
  br i1 %384, label %388, label %386

386:                                              ; preds = %382
  %387 = getelementptr inbounds %struct.EditBone, ptr %385, i64 0, i32 3
  store ptr %383, ptr %387, align 8, !tbaa !88
  br label %392

388:                                              ; preds = %382
  %389 = getelementptr inbounds %struct.EditBone, ptr %385, i64 0, i32 9
  %390 = load i32, ptr %389, align 4, !tbaa !93
  %391 = and i32 %390, -17
  store i32 %391, ptr %389, align 4, !tbaa !93
  br label %392

392:                                              ; preds = %388, %386, %371
  %393 = getelementptr inbounds %struct.RigControl, ptr %372, i64 0, i32 5
  %394 = load ptr, ptr %393, align 8, !tbaa !70
  %395 = call ptr @BLI_ghash_lookup(ptr noundef %110, ptr noundef %394) #14
  store ptr %395, ptr %393, align 8, !tbaa !70
  %396 = getelementptr inbounds %struct.RigControl, ptr %372, i64 0, i32 6
  %397 = load ptr, ptr %396, align 8, !tbaa !170
  %398 = call ptr @BLI_ghash_lookup(ptr noundef %110, ptr noundef %397) #14
  store ptr %398, ptr %396, align 8, !tbaa !170
  %399 = load ptr, ptr %372, align 8, !tbaa !45
  %400 = icmp eq ptr %399, null
  br i1 %400, label %401, label %371, !llvm.loop !220

401:                                              ; preds = %392, %365
  call void @BLI_ghash_free(ptr noundef %110, ptr noundef null, ptr noundef null) #14
  %402 = load ptr, ptr %112, align 8, !tbaa !91
  %403 = getelementptr inbounds %struct.RigArc, ptr %402, i64 0, i32 11
  store ptr %1, ptr %403, align 8, !tbaa !177
  %404 = getelementptr inbounds %struct.ReebArc, ptr %1, i64 0, i32 2
  %405 = load ptr, ptr %404, align 8, !tbaa !179
  %406 = getelementptr inbounds %struct.RigArc, ptr %402, i64 0, i32 2
  %407 = load ptr, ptr %406, align 8, !tbaa !57
  %408 = getelementptr inbounds %struct.RigNode, ptr %407, i64 0, i32 10
  store ptr %405, ptr %408, align 8, !tbaa !178
  %409 = getelementptr inbounds %struct.ReebArc, ptr %1, i64 0, i32 3
  %410 = load ptr, ptr %409, align 8, !tbaa !181
  %411 = getelementptr inbounds %struct.RigArc, ptr %402, i64 0, i32 3
  %412 = load ptr, ptr %411, align 8, !tbaa !68
  %413 = getelementptr inbounds %struct.RigNode, ptr %412, i64 0, i32 10
  store ptr %410, ptr %413, align 8, !tbaa !178
  %414 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %415 = call ptr %414(i64 noundef 32, ptr noundef nonnull @.str.49) #14
  store ptr %112, ptr %415, align 8, !tbaa !172
  %416 = getelementptr inbounds %struct.RetargetParam, ptr %415, i64 0, i32 1
  store ptr %402, ptr %416, align 8, !tbaa !174
  %417 = getelementptr inbounds %struct.RetargetParam, ptr %415, i64 0, i32 2
  store ptr %407, ptr %417, align 8, !tbaa !176
  %418 = getelementptr inbounds %struct.RetargetParam, ptr %415, i64 0, i32 3
  store ptr %0, ptr %418, align 8, !tbaa !175
  %419 = load ptr, ptr %123, align 8, !tbaa !38
  call void @BLI_task_pool_push(ptr noundef %419, ptr noundef nonnull @exec_retargetArctoArc, ptr noundef nonnull %415, i8 noundef zeroext 1, i32 noundef 1) #14
  %420 = load ptr, ptr %123, align 8, !tbaa !38
  call void @BLI_task_pool_work_and_wait(ptr noundef %420) #14
  br i1 %14, label %421, label %422

421:                                              ; preds = %401
  call void @RIG_freeRigGraph(ptr noundef nonnull %104)
  br label %422

422:                                              ; preds = %421, %401
  call void @RIG_freeRigGraph(ptr noundef nonnull %112)
  call void @ED_armature_validate_active(ptr noundef %9) #14
  br label %423

423:                                              ; preds = %103, %422
  ret void
}

declare void @ED_armature_validate_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BIF_adjustRetarget(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @GLOBAL_RIGG, align 8, !tbaa !45
  %3 = icmp eq ptr %2, null
  br i1 %3, label %36, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.RigGraph, ptr %2, i64 0, i32 16
  %6 = load ptr, ptr %5, align 8, !tbaa !87
  %7 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !79
  %9 = load ptr, ptr %2, align 8, !tbaa !45
  %10 = icmp eq ptr %9, null
  br i1 %10, label %30, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.RigGraph, ptr %2, i64 0, i32 13
  br label %13

13:                                               ; preds = %11, %27
  %14 = phi ptr [ %9, %11 ], [ %28, %27 ]
  %15 = getelementptr inbounds %struct.RigArc, ptr %14, i64 0, i32 11
  %16 = load ptr, ptr %15, align 8, !tbaa !177
  %17 = icmp eq ptr %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.RigArc, ptr %14, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !57
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %22 = tail call ptr %21(i64 noundef 32, ptr noundef nonnull @.str.49) #14
  store ptr %2, ptr %22, align 8, !tbaa !172
  %23 = getelementptr inbounds %struct.RetargetParam, ptr %22, i64 0, i32 1
  store ptr %14, ptr %23, align 8, !tbaa !174
  %24 = getelementptr inbounds %struct.RetargetParam, ptr %22, i64 0, i32 2
  store ptr %20, ptr %24, align 8, !tbaa !176
  %25 = getelementptr inbounds %struct.RetargetParam, ptr %22, i64 0, i32 3
  store ptr %0, ptr %25, align 8, !tbaa !175
  %26 = load ptr, ptr %12, align 8, !tbaa !38
  tail call void @BLI_task_pool_push(ptr noundef %26, ptr noundef nonnull @exec_retargetArctoArc, ptr noundef nonnull %22, i8 noundef zeroext 1, i32 noundef 1) #14
  br label %27

27:                                               ; preds = %18, %13
  %28 = load ptr, ptr %14, align 8, !tbaa !45
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %13, !llvm.loop !221

30:                                               ; preds = %27, %4
  %31 = getelementptr inbounds %struct.RigGraph, ptr %2, i64 0, i32 13
  %32 = load ptr, ptr %31, align 8, !tbaa !38
  tail call void @BLI_task_pool_work_and_wait(ptr noundef %32) #14
  %33 = getelementptr inbounds %struct.RigGraph, ptr %2, i64 0, i32 9
  %34 = load ptr, ptr %33, align 8, !tbaa !53
  %35 = getelementptr inbounds %struct.bArmature, ptr %8, i64 0, i32 4
  store ptr %34, ptr %35, align 8, !tbaa !85
  tail call void @ED_armature_from_edit(ptr noundef %8) #14
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.27) #14
  br label %36

36:                                               ; preds = %30, %1
  ret void
}

declare void @print_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @BLI_ghash_str_new(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_task_scheduler_create(i32 noundef) local_unnamed_addr #2

declare ptr @BLI_task_pool_create(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @RIG_appendEdgeToArc(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = getelementptr inbounds %struct.RigArc, ptr %0, i64 0, i32 9
  tail call void @BLI_addtail(ptr noundef nonnull %6, ptr noundef %1) #14
  %7 = getelementptr inbounds %struct.RigEdge, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !140
  %9 = icmp eq ptr %8, null
  %10 = getelementptr inbounds %struct.RigEdge, ptr %1, i64 0, i32 2
  br i1 %9, label %11, label %22

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.RigArc, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !57
  %14 = getelementptr inbounds %struct.RigNode, ptr %13, i64 0, i32 2
  %15 = load float, ptr %14, align 4, !tbaa !34
  store float %15, ptr %10, align 4, !tbaa !34
  %16 = getelementptr inbounds %struct.RigNode, ptr %13, i64 0, i32 2, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = getelementptr inbounds %struct.RigEdge, ptr %1, i64 0, i32 2, i64 1
  store float %17, ptr %18, align 4, !tbaa !34
  %19 = getelementptr inbounds %struct.RigNode, ptr %13, i64 0, i32 2, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = getelementptr inbounds %struct.RigEdge, ptr %1, i64 0, i32 2, i64 2
  store float %20, ptr %21, align 4, !tbaa !34
  br label %134

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.RigEdge, ptr %8, i64 0, i32 3
  %24 = load float, ptr %23, align 4, !tbaa !34
  store float %24, ptr %10, align 4, !tbaa !34
  %25 = getelementptr inbounds %struct.RigEdge, ptr %8, i64 0, i32 3, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = getelementptr inbounds %struct.RigEdge, ptr %1, i64 0, i32 2, i64 1
  store float %26, ptr %27, align 4, !tbaa !34
  %28 = getelementptr inbounds %struct.RigEdge, ptr %8, i64 0, i32 3, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = getelementptr inbounds %struct.RigEdge, ptr %1, i64 0, i32 2, i64 2
  store float %29, ptr %30, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #14
  %31 = getelementptr inbounds %struct.RigEdge, ptr %8, i64 0, i32 2
  %32 = load float, ptr %23, align 4, !tbaa !34
  %33 = load float, ptr %31, align 4, !tbaa !34
  %34 = fsub float %32, %33
  store float %34, ptr %3, align 4, !tbaa !34
  %35 = load float, ptr %25, align 4, !tbaa !34
  %36 = getelementptr inbounds %struct.RigEdge, ptr %8, i64 0, i32 2, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !34
  %38 = fsub float %35, %37
  %39 = getelementptr inbounds float, ptr %3, i64 1
  store float %38, ptr %39, align 4, !tbaa !34
  %40 = load float, ptr %28, align 4, !tbaa !34
  %41 = getelementptr inbounds %struct.RigEdge, ptr %8, i64 0, i32 2, i64 2
  %42 = load float, ptr %41, align 4, !tbaa !34
  %43 = fsub float %40, %42
  %44 = getelementptr inbounds float, ptr %3, i64 2
  store float %43, ptr %44, align 4, !tbaa !34
  %45 = getelementptr inbounds %struct.RigEdge, ptr %1, i64 0, i32 3
  %46 = load float, ptr %45, align 4, !tbaa !34
  %47 = fsub float %46, %24
  store float %47, ptr %4, align 4, !tbaa !34
  %48 = getelementptr inbounds %struct.RigEdge, ptr %1, i64 0, i32 3, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !34
  %50 = fsub float %49, %26
  %51 = getelementptr inbounds float, ptr %4, i64 1
  store float %50, ptr %51, align 4, !tbaa !34
  %52 = getelementptr inbounds %struct.RigEdge, ptr %1, i64 0, i32 3, i64 2
  %53 = load float, ptr %52, align 4, !tbaa !34
  %54 = fsub float %53, %29
  %55 = getelementptr inbounds float, ptr %4, i64 2
  store float %54, ptr %55, align 4, !tbaa !34
  %56 = fmul float %38, %38
  %57 = tail call float @llvm.fmuladd.f32(float %34, float %34, float %56)
  %58 = tail call float @llvm.fmuladd.f32(float %43, float %43, float %57)
  %59 = fcmp ogt float %58, 0x38AA95A5C0000000
  br i1 %59, label %60, label %69

60:                                               ; preds = %22
  %61 = tail call float @sqrtf(float noundef %58) #14
  %62 = fdiv float 1.000000e+00, %61
  %63 = load float, ptr %3, align 4, !tbaa !34
  %64 = fmul float %63, %62
  store float %64, ptr %3, align 4, !tbaa !34
  %65 = load float, ptr %39, align 4, !tbaa !34
  %66 = fmul float %62, %65
  store float %66, ptr %39, align 4, !tbaa !34
  %67 = load float, ptr %44, align 4, !tbaa !34
  %68 = fmul float %62, %67
  br label %70

69:                                               ; preds = %22
  store float 0.000000e+00, ptr %3, align 4, !tbaa !34
  store float 0.000000e+00, ptr %39, align 4, !tbaa !34
  br label %70

70:                                               ; preds = %69, %60
  %71 = phi float [ 0.000000e+00, %69 ], [ %68, %60 ]
  store float %71, ptr %44, align 4, !tbaa !34
  %72 = load float, ptr %4, align 4, !tbaa !34
  %73 = load float, ptr %51, align 4, !tbaa !34
  %74 = fmul float %73, %73
  %75 = tail call float @llvm.fmuladd.f32(float %72, float %72, float %74)
  %76 = load float, ptr %55, align 4, !tbaa !34
  %77 = tail call float @llvm.fmuladd.f32(float %76, float %76, float %75)
  %78 = fcmp ogt float %77, 0x38AA95A5C0000000
  br i1 %78, label %79, label %88

79:                                               ; preds = %70
  %80 = tail call float @sqrtf(float noundef %77) #14
  %81 = fdiv float 1.000000e+00, %80
  %82 = load float, ptr %4, align 4, !tbaa !34
  %83 = fmul float %82, %81
  store float %83, ptr %4, align 4, !tbaa !34
  %84 = load float, ptr %51, align 4, !tbaa !34
  %85 = fmul float %81, %84
  store float %85, ptr %51, align 4, !tbaa !34
  %86 = load float, ptr %55, align 4, !tbaa !34
  %87 = fmul float %81, %86
  br label %89

88:                                               ; preds = %70
  store float 0.000000e+00, ptr %4, align 4, !tbaa !34
  store float 0.000000e+00, ptr %51, align 4, !tbaa !34
  br label %89

89:                                               ; preds = %88, %79
  %90 = phi float [ 0.000000e+00, %88 ], [ %87, %79 ]
  store float %90, ptr %55, align 4, !tbaa !34
  %91 = call float @angle_normalized_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %4) #14
  %92 = getelementptr inbounds %struct.RigEdge, ptr %8, i64 0, i32 5
  store float %91, ptr %92, align 4, !tbaa !63
  %93 = getelementptr inbounds %struct.RigEdge, ptr %1, i64 0, i32 7
  %94 = load ptr, ptr %93, align 8, !tbaa !54
  %95 = icmp eq ptr %94, null
  br i1 %95, label %133, label %96

96:                                               ; preds = %89
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #14
  %97 = load float, ptr %39, align 4, !tbaa !34
  %98 = load float, ptr %55, align 4, !tbaa !34
  %99 = load float, ptr %44, align 4, !tbaa !34
  %100 = load float, ptr %51, align 4, !tbaa !34
  %101 = fneg float %99
  %102 = fmul float %100, %101
  %103 = call float @llvm.fmuladd.f32(float %97, float %98, float %102)
  store float %103, ptr %5, align 4, !tbaa !34
  %104 = load float, ptr %4, align 4, !tbaa !34
  %105 = load float, ptr %3, align 4, !tbaa !34
  %106 = fneg float %105
  %107 = fmul float %98, %106
  %108 = call float @llvm.fmuladd.f32(float %99, float %104, float %107)
  %109 = getelementptr inbounds float, ptr %5, i64 1
  store float %108, ptr %109, align 4, !tbaa !34
  %110 = fneg float %97
  %111 = fmul float %104, %110
  %112 = call float @llvm.fmuladd.f32(float %105, float %100, float %111)
  %113 = getelementptr inbounds float, ptr %5, i64 2
  store float %112, ptr %113, align 4, !tbaa !34
  %114 = fmul float %108, %108
  %115 = call float @llvm.fmuladd.f32(float %103, float %103, float %114)
  %116 = call float @llvm.fmuladd.f32(float %112, float %112, float %115)
  %117 = fcmp ogt float %116, 0x38AA95A5C0000000
  br i1 %117, label %118, label %127

118:                                              ; preds = %96
  %119 = call float @sqrtf(float noundef %116) #14
  %120 = fdiv float 1.000000e+00, %119
  %121 = load float, ptr %5, align 4, !tbaa !34
  %122 = fmul float %121, %120
  store float %122, ptr %5, align 4, !tbaa !34
  %123 = load float, ptr %109, align 4, !tbaa !34
  %124 = fmul float %120, %123
  store float %124, ptr %109, align 4, !tbaa !34
  %125 = load float, ptr %113, align 4, !tbaa !34
  %126 = fmul float %120, %125
  br label %128

127:                                              ; preds = %96
  store float 0.000000e+00, ptr %5, align 4, !tbaa !34
  store float 0.000000e+00, ptr %109, align 4, !tbaa !34
  br label %128

128:                                              ; preds = %127, %118
  %129 = phi float [ 0.000000e+00, %127 ], [ %126, %118 ]
  store float %129, ptr %113, align 4, !tbaa !34
  %130 = getelementptr inbounds %struct.RigEdge, ptr %1, i64 0, i32 8
  %131 = call float @angle_normalized_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %130) #14
  %132 = getelementptr inbounds %struct.RigEdge, ptr %1, i64 0, i32 6
  store float %131, ptr %132, align 8, !tbaa !197
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #14
  br label %133

133:                                              ; preds = %89, %128
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #14
  br label %134

134:                                              ; preds = %133, %11
  %135 = getelementptr inbounds %struct.RigEdge, ptr %1, i64 0, i32 2
  %136 = getelementptr inbounds %struct.RigEdge, ptr %1, i64 0, i32 3
  %137 = load float, ptr %136, align 4, !tbaa !34
  %138 = load float, ptr %135, align 4, !tbaa !34
  %139 = fsub float %137, %138
  %140 = getelementptr inbounds %struct.RigEdge, ptr %1, i64 0, i32 3, i64 1
  %141 = load float, ptr %140, align 4, !tbaa !34
  %142 = getelementptr inbounds %struct.RigEdge, ptr %1, i64 0, i32 2, i64 1
  %143 = load float, ptr %142, align 4, !tbaa !34
  %144 = fsub float %141, %143
  %145 = getelementptr inbounds %struct.RigEdge, ptr %1, i64 0, i32 3, i64 2
  %146 = load float, ptr %145, align 4, !tbaa !34
  %147 = getelementptr inbounds %struct.RigEdge, ptr %1, i64 0, i32 2, i64 2
  %148 = load float, ptr %147, align 4, !tbaa !34
  %149 = fsub float %146, %148
  %150 = fmul float %144, %144
  %151 = call float @llvm.fmuladd.f32(float %139, float %139, float %150)
  %152 = call float @llvm.fmuladd.f32(float %149, float %149, float %151)
  %153 = call float @sqrtf(float noundef %152) #14
  %154 = getelementptr inbounds %struct.RigEdge, ptr %1, i64 0, i32 4
  store float %153, ptr %154, align 8, !tbaa !62
  %155 = getelementptr inbounds %struct.RigArc, ptr %0, i64 0, i32 5
  %156 = load float, ptr %155, align 4, !tbaa !193
  %157 = fadd float %153, %156
  store float %157, ptr %155, align 4, !tbaa !193
  %158 = getelementptr inbounds %struct.RigArc, ptr %0, i64 0, i32 10
  %159 = load i32, ptr %158, align 8, !tbaa !122
  %160 = add nsw i32 %159, 1
  store i32 %160, ptr %158, align 8, !tbaa !122
  ret void
}

declare void @vec_roll_to_mat3(ptr noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare float @angle_normalized_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

declare void @BLI_removeArc(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_removeNode(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_FindNodeByPosition(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare void @BLI_replaceNodeInArc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_constraint_typeinfo_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_ghash_haskey(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @RIG_parentControl(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #9 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %89, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.RigControl, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !72
  %7 = getelementptr inbounds %struct.EditBone, ptr %6, i64 0, i32 7
  %8 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 7
  %9 = load float, ptr %7, align 4, !tbaa !34
  %10 = load float, ptr %8, align 4, !tbaa !34
  %11 = fsub float %9, %10
  %12 = getelementptr inbounds %struct.EditBone, ptr %6, i64 0, i32 7, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 7, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = fsub float %13, %15
  %17 = getelementptr inbounds %struct.EditBone, ptr %6, i64 0, i32 7, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 7, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = fsub float %18, %20
  %22 = fmul float %16, %16
  %23 = tail call float @llvm.fmuladd.f32(float %11, float %11, float %22)
  %24 = tail call float @llvm.fmuladd.f32(float %21, float %21, float %23)
  %25 = fcmp olt float %24, 0x3F1A36E2E0000000
  br i1 %25, label %26, label %64

26:                                               ; preds = %4
  %27 = getelementptr inbounds %struct.EditBone, ptr %6, i64 0, i32 8
  %28 = load float, ptr %27, align 4, !tbaa !34
  %29 = fsub float %28, %9
  %30 = getelementptr inbounds %struct.EditBone, ptr %6, i64 0, i32 8, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !34
  %32 = fsub float %31, %13
  %33 = getelementptr inbounds %struct.EditBone, ptr %6, i64 0, i32 8, i64 2
  %34 = load float, ptr %33, align 4, !tbaa !34
  %35 = fsub float %34, %18
  %36 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 8
  %37 = load float, ptr %36, align 4, !tbaa !34
  %38 = fsub float %37, %10
  %39 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 8, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !34
  %41 = fsub float %40, %15
  %42 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 8, i64 2
  %43 = load float, ptr %42, align 4, !tbaa !34
  %44 = fsub float %43, %20
  %45 = fmul float %32, %41
  %46 = tail call float @llvm.fmuladd.f32(float %29, float %38, float %45)
  %47 = tail call float @llvm.fmuladd.f32(float %35, float %44, float %46)
  %48 = fcmp ogt float %47, 0.000000e+00
  br i1 %48, label %49, label %64

49:                                               ; preds = %26
  %50 = fneg float %35
  %51 = fmul float %41, %50
  %52 = tail call float @llvm.fmuladd.f32(float %32, float %44, float %51)
  %53 = fneg float %29
  %54 = fmul float %44, %53
  %55 = tail call float @llvm.fmuladd.f32(float %35, float %38, float %54)
  %56 = fneg float %32
  %57 = fmul float %38, %56
  %58 = tail call float @llvm.fmuladd.f32(float %29, float %41, float %57)
  %59 = fmul float %55, %55
  %60 = tail call float @llvm.fmuladd.f32(float %52, float %52, float %59)
  %61 = tail call float @llvm.fmuladd.f32(float %58, float %58, float %60)
  %62 = fcmp olt float %61, 0x3F1A36E2E0000000
  %63 = select i1 %62, i32 24, i32 8
  br label %64

64:                                               ; preds = %26, %49, %4
  %65 = phi i32 [ 0, %4 ], [ %63, %49 ], [ 8, %26 ]
  %66 = getelementptr inbounds %struct.RigControl, ptr %0, i64 0, i32 10
  %67 = load i32, ptr %66, align 8, !tbaa !73
  %68 = icmp slt i32 %65, %67
  br i1 %68, label %89, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.RigControl, ptr %0, i64 0, i32 5
  %71 = load ptr, ptr %70, align 8, !tbaa !70
  %72 = icmp eq ptr %71, null
  %73 = icmp ne i32 %65, %67
  %74 = or i1 %73, %72
  %75 = icmp eq ptr %71, %1
  %76 = or i1 %74, %75
  br i1 %76, label %85, label %77

77:                                               ; preds = %69, %77
  %78 = phi ptr [ %80, %77 ], [ %71, %69 ]
  %79 = getelementptr inbounds %struct.EditBone, ptr %78, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !88
  %81 = icmp eq ptr %80, null
  %82 = icmp eq ptr %80, %1
  %83 = or i1 %81, %82
  br i1 %83, label %84, label %77, !llvm.loop !222

84:                                               ; preds = %77
  br i1 %81, label %89, label %85

85:                                               ; preds = %84, %69
  store ptr %1, ptr %70, align 8, !tbaa !70
  store i32 %65, ptr %66, align 8, !tbaa !73
  %86 = getelementptr inbounds %struct.RigControl, ptr %0, i64 0, i32 8
  store float %11, ptr %86, align 4, !tbaa !34
  %87 = getelementptr inbounds %struct.RigControl, ptr %0, i64 0, i32 8, i64 1
  store float %16, ptr %87, align 4, !tbaa !34
  %88 = getelementptr inbounds %struct.RigControl, ptr %0, i64 0, i32 8, i64 2
  store float %21, ptr %88, align 4, !tbaa !34
  br label %89

89:                                               ; preds = %85, %84, %64, %2
  %90 = phi i32 [ 0, %2 ], [ 1, %85 ], [ 0, %84 ], [ 0, %64 ]
  ret i32 %90
}

declare void @BLI_ghashIterator_init(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_ghashIterator_step(ptr noundef) local_unnamed_addr #2

declare ptr @BIF_NodeFromIndex(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @rotation_between_vecs_to_quat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc float @rollBoneByQuatAligned(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #14
  %9 = load float, ptr %1, align 4, !tbaa !34
  store float %9, ptr %6, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = getelementptr inbounds float, ptr %6, i64 1
  store float %11, ptr %12, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %6, i64 2
  store float %14, ptr %15, align 4, !tbaa !34
  call void @mul_qt_v3(ptr noundef %2, ptr noundef nonnull %6) #14
  %16 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 8
  %17 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 7
  %18 = load float, ptr %16, align 4, !tbaa !34
  %19 = load float, ptr %17, align 4, !tbaa !34
  %20 = fsub float %18, %19
  %21 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 8, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 7, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = fsub float %22, %24
  %26 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 8, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !34
  %28 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 7, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = fsub float %27, %29
  %31 = getelementptr inbounds float, ptr %4, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !34
  %33 = getelementptr inbounds float, ptr %4, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !34
  %35 = fneg float %30
  %36 = fmul float %34, %35
  %37 = call float @llvm.fmuladd.f32(float %25, float %32, float %36)
  store float %37, ptr %7, align 4, !tbaa !34
  %38 = load float, ptr %4, align 4, !tbaa !34
  %39 = fneg float %20
  %40 = fmul float %32, %39
  %41 = call float @llvm.fmuladd.f32(float %30, float %38, float %40)
  %42 = getelementptr inbounds float, ptr %7, i64 1
  store float %41, ptr %42, align 4, !tbaa !34
  %43 = fneg float %25
  %44 = fmul float %38, %43
  %45 = call float @llvm.fmuladd.f32(float %20, float %34, float %44)
  %46 = getelementptr inbounds float, ptr %7, i64 2
  store float %45, ptr %46, align 4, !tbaa !34
  %47 = fneg float %45
  %48 = fmul float %25, %47
  %49 = call float @llvm.fmuladd.f32(float %41, float %30, float %48)
  store float %49, ptr %8, align 4, !tbaa !34
  %50 = fneg float %37
  %51 = fmul float %30, %50
  %52 = call float @llvm.fmuladd.f32(float %45, float %20, float %51)
  %53 = getelementptr inbounds float, ptr %8, i64 1
  store float %52, ptr %53, align 4, !tbaa !34
  %54 = fneg float %41
  %55 = fmul float %20, %54
  %56 = call float @llvm.fmuladd.f32(float %37, float %25, float %55)
  %57 = getelementptr inbounds float, ptr %8, i64 2
  store float %56, ptr %57, align 4, !tbaa !34
  %58 = load float, ptr %6, align 4, !tbaa !34
  %59 = load float, ptr %12, align 4, !tbaa !34
  %60 = fmul float %59, %59
  %61 = call float @llvm.fmuladd.f32(float %58, float %58, float %60)
  %62 = load float, ptr %15, align 4, !tbaa !34
  %63 = call float @llvm.fmuladd.f32(float %62, float %62, float %61)
  %64 = fcmp ogt float %63, 0x38AA95A5C0000000
  br i1 %64, label %65, label %74

65:                                               ; preds = %5
  %66 = call float @sqrtf(float noundef %63) #14
  %67 = fdiv float 1.000000e+00, %66
  %68 = load float, ptr %6, align 4, !tbaa !34
  %69 = fmul float %68, %67
  store float %69, ptr %6, align 4, !tbaa !34
  %70 = load float, ptr %12, align 4, !tbaa !34
  %71 = fmul float %67, %70
  store float %71, ptr %12, align 4, !tbaa !34
  %72 = load float, ptr %15, align 4, !tbaa !34
  %73 = fmul float %67, %72
  br label %75

74:                                               ; preds = %5
  store float 0.000000e+00, ptr %6, align 4, !tbaa !34
  store float 0.000000e+00, ptr %12, align 4, !tbaa !34
  br label %75

75:                                               ; preds = %65, %74
  %76 = phi float [ 0.000000e+00, %74 ], [ %73, %65 ]
  store float %76, ptr %15, align 4, !tbaa !34
  %77 = load float, ptr %7, align 4, !tbaa !34
  %78 = load float, ptr %42, align 4, !tbaa !34
  %79 = fmul float %78, %78
  %80 = call float @llvm.fmuladd.f32(float %77, float %77, float %79)
  %81 = load float, ptr %46, align 4, !tbaa !34
  %82 = call float @llvm.fmuladd.f32(float %81, float %81, float %80)
  %83 = fcmp ogt float %82, 0x38AA95A5C0000000
  br i1 %83, label %84, label %93

84:                                               ; preds = %75
  %85 = call float @sqrtf(float noundef %82) #14
  %86 = fdiv float 1.000000e+00, %85
  %87 = load float, ptr %7, align 4, !tbaa !34
  %88 = fmul float %87, %86
  store float %88, ptr %7, align 4, !tbaa !34
  %89 = load float, ptr %42, align 4, !tbaa !34
  %90 = fmul float %86, %89
  store float %90, ptr %42, align 4, !tbaa !34
  %91 = load float, ptr %46, align 4, !tbaa !34
  %92 = fmul float %86, %91
  br label %94

93:                                               ; preds = %75
  store float 0.000000e+00, ptr %7, align 4, !tbaa !34
  store float 0.000000e+00, ptr %42, align 4, !tbaa !34
  br label %94

94:                                               ; preds = %84, %93
  %95 = phi float [ 0.000000e+00, %93 ], [ %92, %84 ]
  store float %95, ptr %46, align 4, !tbaa !34
  %96 = load float, ptr %8, align 4, !tbaa !34
  %97 = load float, ptr %53, align 4, !tbaa !34
  %98 = fmul float %97, %97
  %99 = call float @llvm.fmuladd.f32(float %96, float %96, float %98)
  %100 = load float, ptr %57, align 4, !tbaa !34
  %101 = call float @llvm.fmuladd.f32(float %100, float %100, float %99)
  %102 = fcmp ogt float %101, 0x38AA95A5C0000000
  br i1 %102, label %103, label %112

103:                                              ; preds = %94
  %104 = call float @sqrtf(float noundef %101) #14
  %105 = fdiv float 1.000000e+00, %104
  %106 = load float, ptr %8, align 4, !tbaa !34
  %107 = fmul float %106, %105
  store float %107, ptr %8, align 4, !tbaa !34
  %108 = load float, ptr %53, align 4, !tbaa !34
  %109 = fmul float %105, %108
  store float %109, ptr %53, align 4, !tbaa !34
  %110 = load float, ptr %57, align 4, !tbaa !34
  %111 = fmul float %105, %110
  br label %113

112:                                              ; preds = %94
  store float 0.000000e+00, ptr %8, align 4, !tbaa !34
  store float 0.000000e+00, ptr %53, align 4, !tbaa !34
  br label %113

113:                                              ; preds = %103, %112
  %114 = phi float [ 0.000000e+00, %112 ], [ %111, %103 ]
  store float %114, ptr %57, align 4, !tbaa !34
  %115 = load float, ptr %6, align 4, !tbaa !34
  %116 = load float, ptr %7, align 4, !tbaa !34
  %117 = load float, ptr %12, align 4, !tbaa !34
  %118 = load float, ptr %42, align 4, !tbaa !34
  %119 = fmul float %117, %118
  %120 = call float @llvm.fmuladd.f32(float %115, float %116, float %119)
  %121 = load float, ptr %15, align 4, !tbaa !34
  %122 = load float, ptr %46, align 4, !tbaa !34
  %123 = call float @llvm.fmuladd.f32(float %121, float %122, float %120)
  %124 = fcmp olt float %123, 0.000000e+00
  br i1 %124, label %125, label %129

125:                                              ; preds = %113
  %126 = fneg float %116
  store float %126, ptr %7, align 4, !tbaa !34
  %127 = fneg float %118
  store float %127, ptr %42, align 4, !tbaa !34
  %128 = fneg float %122
  store float %128, ptr %46, align 4, !tbaa !34
  br label %129

129:                                              ; preds = %125, %113
  %130 = load float, ptr %8, align 4, !tbaa !34
  %131 = load float, ptr %53, align 4, !tbaa !34
  %132 = fmul float %117, %131
  %133 = call float @llvm.fmuladd.f32(float %115, float %130, float %132)
  %134 = call float @llvm.fmuladd.f32(float %121, float %114, float %133)
  %135 = fcmp olt float %134, 0.000000e+00
  br i1 %135, label %136, label %140

136:                                              ; preds = %129
  %137 = fneg float %130
  store float %137, ptr %8, align 4, !tbaa !34
  %138 = fneg float %131
  store float %138, ptr %53, align 4, !tbaa !34
  %139 = fneg float %114
  store float %139, ptr %57, align 4, !tbaa !34
  br label %140

140:                                              ; preds = %136, %129
  %141 = call float @angle_normalized_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %6) #14
  %142 = call float @angle_normalized_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %6) #14
  %143 = fcmp olt float %141, %142
  %144 = select i1 %143, ptr %7, ptr %8
  call void @rotation_between_vecs_to_quat(ptr noundef %3, ptr noundef nonnull %6, ptr noundef nonnull %144) #14
  %145 = call float @ED_rollBoneToVector(ptr noundef %0, ptr noundef nonnull %144, i8 noundef zeroext 0) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #14
  ret float %145
}

declare void @unit_qt(ptr noundef) local_unnamed_addr #2

declare void @mul_qt_qtqt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @repositionControl(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, float noundef %4) unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #14
  %8 = getelementptr inbounds %struct.RigControl, ptr %1, i64 0, i32 8
  %9 = load float, ptr %8, align 4, !tbaa !34
  store float %9, ptr %6, align 4, !tbaa !34
  %10 = getelementptr inbounds %struct.RigControl, ptr %1, i64 0, i32 8, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = getelementptr inbounds float, ptr %6, i64 1
  store float %11, ptr %12, align 4, !tbaa !34
  %13 = getelementptr inbounds %struct.RigControl, ptr %1, i64 0, i32 8, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %6, i64 2
  store float %14, ptr %15, align 4, !tbaa !34
  %16 = fmul float %9, %4
  store float %16, ptr %6, align 4, !tbaa !34
  %17 = fmul float %11, %4
  store float %17, ptr %12, align 4, !tbaa !34
  %18 = fmul float %14, %4
  store float %18, ptr %15, align 4, !tbaa !34
  call void @mul_qt_v3(ptr noundef %3, ptr noundef nonnull %6) #14
  %19 = getelementptr inbounds %struct.RigControl, ptr %1, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !72
  %21 = getelementptr inbounds %struct.EditBone, ptr %20, i64 0, i32 7
  %22 = load float, ptr %2, align 4, !tbaa !34
  %23 = load float, ptr %6, align 4, !tbaa !34
  %24 = fadd float %22, %23
  store float %24, ptr %21, align 4, !tbaa !34
  %25 = getelementptr inbounds float, ptr %2, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = load float, ptr %12, align 4, !tbaa !34
  %28 = fadd float %26, %27
  %29 = getelementptr inbounds %struct.EditBone, ptr %20, i64 0, i32 7, i64 1
  store float %28, ptr %29, align 4, !tbaa !34
  %30 = getelementptr inbounds float, ptr %2, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !34
  %32 = load float, ptr %15, align 4, !tbaa !34
  %33 = fadd float %31, %32
  %34 = getelementptr inbounds %struct.EditBone, ptr %20, i64 0, i32 7, i64 2
  store float %33, ptr %34, align 4, !tbaa !34
  %35 = getelementptr inbounds %struct.RigControl, ptr %1, i64 0, i32 10
  %36 = load i32, ptr %35, align 8, !tbaa !73
  %37 = or i32 %36, 1
  store i32 %37, ptr %35, align 8, !tbaa !73
  %38 = getelementptr inbounds %struct.RigControl, ptr %1, i64 0, i32 9
  call void @copy_qt_qt(ptr noundef nonnull %38, ptr noundef %3) #14
  %39 = getelementptr inbounds %struct.RigControl, ptr %1, i64 0, i32 11
  %40 = load i32, ptr %39, align 4, !tbaa !125
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %81

42:                                               ; preds = %5
  %43 = getelementptr inbounds %struct.RigControl, ptr %1, i64 0, i32 3
  %44 = getelementptr inbounds %struct.RigControl, ptr %1, i64 0, i32 2
  %45 = load float, ptr %43, align 4, !tbaa !34
  %46 = load float, ptr %44, align 4, !tbaa !34
  %47 = fsub float %45, %46
  store float %47, ptr %7, align 4, !tbaa !34
  %48 = getelementptr inbounds %struct.RigControl, ptr %1, i64 0, i32 3, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !34
  %50 = getelementptr inbounds %struct.RigControl, ptr %1, i64 0, i32 2, i64 1
  %51 = load float, ptr %50, align 4, !tbaa !34
  %52 = fsub float %49, %51
  %53 = getelementptr inbounds float, ptr %7, i64 1
  store float %52, ptr %53, align 4, !tbaa !34
  %54 = getelementptr inbounds %struct.RigControl, ptr %1, i64 0, i32 3, i64 2
  %55 = load float, ptr %54, align 4, !tbaa !34
  %56 = getelementptr inbounds %struct.RigControl, ptr %1, i64 0, i32 2, i64 2
  %57 = load float, ptr %56, align 4, !tbaa !34
  %58 = fsub float %55, %57
  %59 = getelementptr inbounds float, ptr %7, i64 2
  store float %58, ptr %59, align 4, !tbaa !34
  %60 = fmul float %47, %4
  store float %60, ptr %7, align 4, !tbaa !34
  %61 = fmul float %52, %4
  store float %61, ptr %53, align 4, !tbaa !34
  %62 = fmul float %58, %4
  store float %62, ptr %59, align 4, !tbaa !34
  call void @mul_qt_v3(ptr noundef %3, ptr noundef nonnull %7) #14
  %63 = load ptr, ptr %19, align 8, !tbaa !72
  %64 = getelementptr inbounds %struct.EditBone, ptr %63, i64 0, i32 8
  %65 = getelementptr inbounds %struct.EditBone, ptr %63, i64 0, i32 7
  %66 = load float, ptr %65, align 4, !tbaa !34
  %67 = load float, ptr %7, align 4, !tbaa !34
  %68 = fadd float %66, %67
  store float %68, ptr %64, align 4, !tbaa !34
  %69 = getelementptr inbounds %struct.EditBone, ptr %63, i64 0, i32 7, i64 1
  %70 = load float, ptr %69, align 4, !tbaa !34
  %71 = load float, ptr %53, align 4, !tbaa !34
  %72 = fadd float %70, %71
  %73 = getelementptr inbounds %struct.EditBone, ptr %63, i64 0, i32 8, i64 1
  store float %72, ptr %73, align 4, !tbaa !34
  %74 = getelementptr inbounds %struct.EditBone, ptr %63, i64 0, i32 7, i64 2
  %75 = load float, ptr %74, align 4, !tbaa !34
  %76 = load float, ptr %59, align 4, !tbaa !34
  %77 = fadd float %75, %76
  %78 = getelementptr inbounds %struct.EditBone, ptr %63, i64 0, i32 8, i64 2
  store float %77, ptr %78, align 4, !tbaa !34
  %79 = load i32, ptr %35, align 8, !tbaa !73
  %80 = or i32 %79, 2
  store i32 %80, ptr %35, align 8, !tbaa !73
  br label %81

81:                                               ; preds = %42, %5
  call fastcc void @finalizeControl(ptr noundef %0, ptr noundef %1, float noundef %4)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #14
  ret void
}

declare void @axis_angle_to_quat(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare void @copy_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @finalizeControl(ptr nocapture noundef readonly %0, ptr noundef %1, float noundef %2) unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [4 x float], align 16
  %8 = getelementptr inbounds %struct.RigControl, ptr %1, i64 0, i32 10
  %9 = load i32, ptr %8, align 8, !tbaa !73
  %10 = and i32 %9, 3
  %11 = icmp eq i32 %10, 3
  br i1 %11, label %12, label %121

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.RigControl, ptr %1, i64 0, i32 11
  %14 = load i32, ptr %13, align 4, !tbaa !125
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %82, label %16

16:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #14
  %17 = icmp eq i32 %14, 1
  %18 = getelementptr inbounds %struct.RigControl, ptr %1, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !170
  %20 = getelementptr inbounds %struct.EditBone, ptr %19, i64 0, i32 8
  %21 = getelementptr inbounds %struct.EditBone, ptr %19, i64 0, i32 7
  %22 = select i1 %17, ptr %20, ptr %21
  %23 = getelementptr inbounds %struct.RigControl, ptr %1, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !72
  %25 = getelementptr inbounds %struct.EditBone, ptr %24, i64 0, i32 8
  %26 = getelementptr inbounds %struct.EditBone, ptr %24, i64 0, i32 7
  %27 = load float, ptr %25, align 4, !tbaa !34
  %28 = load float, ptr %26, align 4, !tbaa !34
  %29 = fsub float %27, %28
  store float %29, ptr %5, align 4, !tbaa !34
  %30 = getelementptr inbounds %struct.EditBone, ptr %24, i64 0, i32 8, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !34
  %32 = getelementptr inbounds %struct.EditBone, ptr %24, i64 0, i32 7, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !34
  %34 = fsub float %31, %33
  %35 = getelementptr inbounds float, ptr %5, i64 1
  store float %34, ptr %35, align 4, !tbaa !34
  %36 = getelementptr inbounds %struct.EditBone, ptr %24, i64 0, i32 8, i64 2
  %37 = load float, ptr %36, align 4, !tbaa !34
  %38 = getelementptr inbounds %struct.EditBone, ptr %24, i64 0, i32 7, i64 2
  %39 = load float, ptr %38, align 4, !tbaa !34
  %40 = fsub float %37, %39
  %41 = getelementptr inbounds float, ptr %5, i64 2
  store float %40, ptr %41, align 4, !tbaa !34
  %42 = load float, ptr %22, align 4, !tbaa !34
  %43 = fsub float %42, %28
  store float %43, ptr %6, align 4, !tbaa !34
  %44 = getelementptr inbounds float, ptr %22, i64 1
  %45 = load float, ptr %44, align 4, !tbaa !34
  %46 = fsub float %45, %33
  %47 = getelementptr inbounds float, ptr %6, i64 1
  store float %46, ptr %47, align 4, !tbaa !34
  %48 = getelementptr inbounds float, ptr %22, i64 2
  %49 = load float, ptr %48, align 4, !tbaa !34
  %50 = fsub float %49, %39
  %51 = getelementptr inbounds float, ptr %6, i64 2
  store float %50, ptr %51, align 4, !tbaa !34
  store float %42, ptr %25, align 4, !tbaa !34
  %52 = load float, ptr %44, align 4, !tbaa !34
  store float %52, ptr %30, align 4, !tbaa !34
  %53 = load float, ptr %48, align 4, !tbaa !34
  store float %53, ptr %36, align 4, !tbaa !34
  call void @rotation_between_vecs_to_quat(ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef nonnull %6) #14
  %54 = getelementptr inbounds %struct.RigControl, ptr %1, i64 0, i32 9
  call void @mul_qt_qtqt(ptr noundef nonnull %54, ptr noundef nonnull %7, ptr noundef nonnull %54) #14
  %55 = load float, ptr %6, align 4, !tbaa !34
  %56 = load float, ptr %47, align 4, !tbaa !34
  %57 = fmul float %56, %56
  %58 = call float @llvm.fmuladd.f32(float %55, float %55, float %57)
  %59 = load float, ptr %51, align 4, !tbaa !34
  %60 = call float @llvm.fmuladd.f32(float %59, float %59, float %58)
  %61 = call float @sqrtf(float noundef %60) #14
  %62 = getelementptr inbounds %struct.RigControl, ptr %1, i64 0, i32 2
  %63 = getelementptr inbounds %struct.RigControl, ptr %1, i64 0, i32 3
  %64 = load float, ptr %63, align 4, !tbaa !34
  %65 = load float, ptr %62, align 4, !tbaa !34
  %66 = fsub float %64, %65
  %67 = getelementptr inbounds %struct.RigControl, ptr %1, i64 0, i32 3, i64 1
  %68 = load float, ptr %67, align 4, !tbaa !34
  %69 = getelementptr inbounds %struct.RigControl, ptr %1, i64 0, i32 2, i64 1
  %70 = load float, ptr %69, align 4, !tbaa !34
  %71 = fsub float %68, %70
  %72 = getelementptr inbounds %struct.RigControl, ptr %1, i64 0, i32 3, i64 2
  %73 = load float, ptr %72, align 4, !tbaa !34
  %74 = getelementptr inbounds %struct.RigControl, ptr %1, i64 0, i32 2, i64 2
  %75 = load float, ptr %74, align 4, !tbaa !34
  %76 = fsub float %73, %75
  %77 = fmul float %71, %71
  %78 = call float @llvm.fmuladd.f32(float %66, float %66, float %77)
  %79 = call float @llvm.fmuladd.f32(float %76, float %76, float %78)
  %80 = call float @sqrtf(float noundef %79) #14
  %81 = fdiv float %61, %80
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #14
  br label %82

82:                                               ; preds = %16, %12
  %83 = phi float [ %81, %16 ], [ %2, %12 ]
  %84 = getelementptr inbounds %struct.RigControl, ptr %1, i64 0, i32 4
  %85 = load ptr, ptr %84, align 8, !tbaa !72
  %86 = getelementptr inbounds %struct.RigControl, ptr %1, i64 0, i32 7
  %87 = getelementptr inbounds %struct.RigControl, ptr %1, i64 0, i32 9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #14
  %88 = load float, ptr %86, align 4, !tbaa !34
  store float %88, ptr %4, align 4, !tbaa !34
  %89 = getelementptr inbounds %struct.RigControl, ptr %1, i64 0, i32 7, i64 1
  %90 = load float, ptr %89, align 4, !tbaa !34
  %91 = getelementptr inbounds float, ptr %4, i64 1
  store float %90, ptr %91, align 4, !tbaa !34
  %92 = getelementptr inbounds %struct.RigControl, ptr %1, i64 0, i32 7, i64 2
  %93 = load float, ptr %92, align 4, !tbaa !34
  %94 = getelementptr inbounds float, ptr %4, i64 2
  store float %93, ptr %94, align 4, !tbaa !34
  call void @mul_qt_v3(ptr noundef nonnull %87, ptr noundef nonnull %4) #14
  %95 = call float @ED_rollBoneToVector(ptr noundef %85, ptr noundef nonnull %4, i8 noundef zeroext 0) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #14
  %96 = load ptr, ptr %84, align 8, !tbaa !72
  %97 = getelementptr inbounds %struct.EditBone, ptr %96, i64 0, i32 6
  store float %95, ptr %97, align 8, !tbaa !124
  %98 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 8
  %99 = load ptr, ptr %98, align 8, !tbaa !45
  %100 = icmp eq ptr %99, null
  br i1 %100, label %121, label %101

101:                                              ; preds = %82, %118
  %102 = phi ptr [ %119, %118 ], [ %99, %82 ]
  %103 = getelementptr inbounds %struct.RigControl, ptr %102, i64 0, i32 5
  %104 = load ptr, ptr %103, align 8, !tbaa !70
  %105 = load ptr, ptr %84, align 8, !tbaa !72
  %106 = icmp eq ptr %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = getelementptr inbounds %struct.EditBone, ptr %105, i64 0, i32 7
  call fastcc void @repositionControl(ptr noundef %0, ptr noundef nonnull %102, ptr noundef nonnull %108, ptr noundef nonnull %87, float noundef %83)
  br label %109

109:                                              ; preds = %107, %101
  %110 = getelementptr inbounds %struct.RigControl, ptr %102, i64 0, i32 6
  %111 = load ptr, ptr %110, align 8, !tbaa !170
  %112 = load ptr, ptr %84, align 8, !tbaa !72
  %113 = icmp eq ptr %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.RigControl, ptr %102, i64 0, i32 10
  %116 = load i32, ptr %115, align 8, !tbaa !73
  %117 = or i32 %116, 2
  store i32 %117, ptr %115, align 8, !tbaa !73
  call fastcc void @finalizeControl(ptr noundef %0, ptr noundef nonnull %102, float noundef 1.000000e+00)
  br label %118

118:                                              ; preds = %109, %114
  %119 = load ptr, ptr %102, align 8, !tbaa !45
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %101, !llvm.loop !223

121:                                              ; preds = %118, %82, %3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

declare void @initArcIterator(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @IT_peek(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @solveJoints(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef readonly %6, i32 noundef %7) unnamed_addr #0 {
  %9 = mul nsw i32 %7, %3
  %10 = add i32 %9, %5
  %11 = mul i32 %10, %3
  %12 = add nsw i32 %11, %4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.MemoNode, ptr %0, i64 %13
  %15 = load float, ptr %14, align 4, !tbaa !224
  %16 = fcmp une float %15, 0.000000e+00
  br i1 %16, label %78, label %17

17:                                               ; preds = %8
  %18 = icmp eq i32 %7, 0
  %19 = sext i32 %4 to i64
  %20 = getelementptr inbounds ptr, ptr %2, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !45
  %22 = sext i32 %5 to i64
  %23 = getelementptr inbounds ptr, ptr %2, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !45
  br i1 %18, label %25, label %33

25:                                               ; preds = %17
  %26 = sext i32 %3 to i64
  %27 = getelementptr ptr, ptr %2, i64 %26
  %28 = getelementptr ptr, ptr %27, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !45
  %30 = getelementptr inbounds %struct.BArcIterator, ptr %1, i64 0, i32 10
  %31 = load i32, ptr %30, align 4, !tbaa !225
  %32 = tail call fastcc float @calcCostAngleLengthDistance(ptr noundef %1, ptr noundef %6, ptr noundef %21, ptr noundef %24, ptr noundef %29, i32 noundef %5, i32 noundef %31)
  store float %32, ptr %14, align 4, !tbaa !224
  br label %78

33:                                               ; preds = %17
  %34 = add nsw i32 %7, -1
  %35 = sub nsw i32 %3, %34
  %36 = icmp sgt i32 %35, %5
  br i1 %36, label %37, label %71

37:                                               ; preds = %33
  %38 = sext i32 %5 to i64
  %39 = sext i32 %35 to i64
  br label %40

40:                                               ; preds = %37, %64
  %41 = phi i64 [ %38, %37 ], [ %45, %64 ]
  %42 = phi i32 [ 0, %37 ], [ %67, %64 ]
  %43 = phi float [ 0.000000e+00, %37 ], [ %66, %64 ]
  %44 = phi ptr [ null, %37 ], [ %65, %64 ]
  %45 = add nsw i64 %41, 1
  %46 = getelementptr inbounds ptr, ptr %2, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !45
  %48 = trunc i64 %45 to i32
  %49 = tail call fastcc float @calcCostAngleLengthDistance(ptr noundef %1, ptr noundef %6, ptr noundef %21, ptr noundef %24, ptr noundef %47, i32 noundef %5, i32 noundef %48)
  %50 = fcmp ult float %49, 0x47EFFFFFE0000000
  br i1 %50, label %51, label %64

51:                                               ; preds = %40
  %52 = load ptr, ptr %6, align 8, !tbaa !134
  %53 = trunc i64 %45 to i32
  %54 = tail call fastcc ptr @solveJoints(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %5, i32 noundef %53, ptr noundef %52, i32 noundef %34)
  %55 = load float, ptr %54, align 4, !tbaa !224
  %56 = fadd float %49, %55
  %57 = icmp eq ptr %44, null
  %58 = fcmp olt float %56, %43
  %59 = select i1 %57, i1 true, i1 %58
  %60 = select i1 %59, ptr %54, ptr %44
  %61 = select i1 %59, float %56, float %43
  %62 = trunc i64 %45 to i32
  %63 = select i1 %59, i32 %62, i32 %42
  br label %64

64:                                               ; preds = %40, %51
  %65 = phi ptr [ %60, %51 ], [ %44, %40 ]
  %66 = phi float [ %61, %51 ], [ %43, %40 ]
  %67 = phi i32 [ %63, %51 ], [ %42, %40 ]
  %68 = icmp eq i64 %45, %39
  br i1 %68, label %69, label %40, !llvm.loop !227

69:                                               ; preds = %64
  %70 = icmp eq ptr %65, null
  br label %71

71:                                               ; preds = %69, %33
  %72 = phi i1 [ true, %33 ], [ %70, %69 ]
  %73 = phi float [ 0.000000e+00, %33 ], [ %66, %69 ]
  %74 = phi i32 [ 0, %33 ], [ %67, %69 ]
  br i1 %72, label %77, label %75

75:                                               ; preds = %71
  store float %73, ptr %14, align 4, !tbaa !224
  %76 = getelementptr inbounds %struct.MemoNode, ptr %0, i64 %13, i32 1
  store i32 %74, ptr %76, align 4, !tbaa !188
  br label %78

77:                                               ; preds = %71
  store float 0x47EFFFFFE0000000, ptr %14, align 4, !tbaa !224
  br label %78

78:                                               ; preds = %75, %77, %8, %25
  ret ptr %14
}

; Function Attrs: nounwind uwtable
define internal fastcc float @calcCostAngleLengthDistance(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 {
  %8 = load float, ptr %4, align 4, !tbaa !34
  %9 = load float, ptr %3, align 4, !tbaa !34
  %10 = fsub float %8, %9
  %11 = getelementptr inbounds float, ptr %4, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %3, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = fsub float %12, %14
  %16 = getelementptr inbounds float, ptr %4, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = getelementptr inbounds float, ptr %3, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = fsub float %17, %19
  %21 = fmul float %15, %15
  %22 = tail call float @llvm.fmuladd.f32(float %10, float %10, float %21)
  %23 = tail call float @llvm.fmuladd.f32(float %20, float %20, float %22)
  %24 = fcmp ogt float %23, 0x38AA95A5C0000000
  br i1 %24, label %25, label %31

25:                                               ; preds = %7
  %26 = tail call float @sqrtf(float noundef %23) #14
  %27 = fdiv float 1.000000e+00, %26
  %28 = fmul float %10, %27
  %29 = fmul float %15, %27
  %30 = fmul float %20, %27
  br label %31

31:                                               ; preds = %7, %25
  %32 = phi float [ %29, %25 ], [ 0.000000e+00, %7 ]
  %33 = phi float [ %28, %25 ], [ 0.000000e+00, %7 ]
  %34 = phi float [ %30, %25 ], [ 0.000000e+00, %7 ]
  %35 = phi float [ %26, %25 ], [ 0.000000e+00, %7 ]
  %36 = getelementptr inbounds %struct.RigEdge, ptr %1, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !140
  %38 = icmp eq ptr %37, null
  br i1 %38, label %92, label %39

39:                                               ; preds = %31
  %40 = load float, ptr %3, align 4, !tbaa !34
  %41 = load float, ptr %2, align 4, !tbaa !34
  %42 = fsub float %40, %41
  %43 = load float, ptr %13, align 4, !tbaa !34
  %44 = getelementptr inbounds float, ptr %2, i64 1
  %45 = load float, ptr %44, align 4, !tbaa !34
  %46 = fsub float %43, %45
  %47 = load float, ptr %18, align 4, !tbaa !34
  %48 = getelementptr inbounds float, ptr %2, i64 2
  %49 = load float, ptr %48, align 4, !tbaa !34
  %50 = fsub float %47, %49
  %51 = fmul float %46, %46
  %52 = tail call float @llvm.fmuladd.f32(float %42, float %42, float %51)
  %53 = tail call float @llvm.fmuladd.f32(float %50, float %50, float %52)
  %54 = fcmp ogt float %53, 0x38AA95A5C0000000
  br i1 %54, label %55, label %61

55:                                               ; preds = %39
  %56 = tail call float @sqrtf(float noundef %53) #14
  %57 = fdiv float 1.000000e+00, %56
  %58 = fmul float %42, %57
  %59 = fmul float %46, %57
  %60 = fmul float %50, %57
  br label %61

61:                                               ; preds = %39, %55
  %62 = phi float [ %59, %55 ], [ 0.000000e+00, %39 ]
  %63 = phi float [ %58, %55 ], [ 0.000000e+00, %39 ]
  %64 = phi float [ %60, %55 ], [ 0.000000e+00, %39 ]
  %65 = load ptr, ptr %36, align 8, !tbaa !140
  %66 = getelementptr inbounds %struct.RigEdge, ptr %65, i64 0, i32 5
  %67 = load float, ptr %66, align 4, !tbaa !63
  %68 = fcmp une float %63, 0.000000e+00
  %69 = fcmp une float %62, 0.000000e+00
  %70 = select i1 %68, i1 true, i1 %69
  %71 = fcmp une float %64, 0.000000e+00
  %72 = select i1 %70, i1 true, i1 %71
  br i1 %72, label %73, label %92

73:                                               ; preds = %61
  %74 = fcmp une float %33, 0.000000e+00
  %75 = fcmp une float %32, 0.000000e+00
  %76 = select i1 %74, i1 true, i1 %75
  %77 = fcmp une float %34, 0.000000e+00
  %78 = select i1 %76, i1 true, i1 %77
  br i1 %78, label %79, label %92

79:                                               ; preds = %73
  %80 = fmul float %32, %62
  %81 = tail call float @llvm.fmuladd.f32(float %63, float %33, float %80)
  %82 = tail call float @llvm.fmuladd.f32(float %64, float %34, float %81)
  %83 = fcmp ugt float %82, -1.000000e+00
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = fcmp ult float %82, 1.000000e+00
  br i1 %85, label %86, label %88

86:                                               ; preds = %84
  %87 = tail call float @acosf(float noundef %82) #14
  br label %88

88:                                               ; preds = %86, %84, %79
  %89 = phi float [ %87, %86 ], [ 0x400921FB60000000, %79 ], [ 0.000000e+00, %84 ]
  %90 = fsub float %89, %67
  %91 = tail call float @llvm.fabs.f32(float %90)
  br label %92

92:                                               ; preds = %73, %61, %88, %31
  %93 = phi float [ 0.000000e+00, %31 ], [ %91, %88 ], [ 0x400921FB60000000, %61 ], [ 0x400921FB60000000, %73 ]
  %94 = getelementptr inbounds %struct.RigEdge, ptr %1, i64 0, i32 4
  %95 = load float, ptr %94, align 8, !tbaa !62
  %96 = load float, ptr %3, align 4, !tbaa !34
  %97 = load float, ptr %4, align 4, !tbaa !34
  %98 = fsub float %96, %97
  %99 = load float, ptr %13, align 4, !tbaa !34
  %100 = load float, ptr %11, align 4, !tbaa !34
  %101 = fsub float %99, %100
  %102 = load float, ptr %18, align 4, !tbaa !34
  %103 = load float, ptr %16, align 4, !tbaa !34
  %104 = fsub float %102, %103
  %105 = fmul float %101, %101
  %106 = tail call float @llvm.fmuladd.f32(float %98, float %98, float %105)
  %107 = tail call float @llvm.fmuladd.f32(float %104, float %104, float %106)
  %108 = fcmp ogt float %107, 0.000000e+00
  br i1 %108, label %109, label %147

109:                                              ; preds = %92
  %110 = add nsw i32 %6, -1
  %111 = add nsw i32 %5, 1
  %112 = icmp slt i32 %111, %110
  br i1 %112, label %113, label %147

113:                                              ; preds = %109
  %114 = fneg float %104
  %115 = fneg float %98
  %116 = fneg float %101
  br label %117

117:                                              ; preds = %113, %117
  %118 = phi i32 [ %111, %113 ], [ %145, %117 ]
  %119 = phi float [ 0.000000e+00, %113 ], [ %144, %117 ]
  %120 = tail call ptr @IT_peek(ptr noundef %0, i32 noundef %118) #14
  %121 = getelementptr inbounds %struct.EmbedBucket, ptr %120, i64 0, i32 2
  %122 = load float, ptr %121, align 4, !tbaa !34
  %123 = load float, ptr %4, align 4, !tbaa !34
  %124 = fsub float %122, %123
  %125 = getelementptr inbounds %struct.EmbedBucket, ptr %120, i64 0, i32 2, i64 1
  %126 = load float, ptr %125, align 4, !tbaa !34
  %127 = load float, ptr %11, align 4, !tbaa !34
  %128 = fsub float %126, %127
  %129 = getelementptr inbounds %struct.EmbedBucket, ptr %120, i64 0, i32 2, i64 2
  %130 = load float, ptr %129, align 4, !tbaa !34
  %131 = load float, ptr %16, align 4, !tbaa !34
  %132 = fsub float %130, %131
  %133 = fmul float %128, %114
  %134 = tail call float @llvm.fmuladd.f32(float %101, float %132, float %133)
  %135 = fmul float %132, %115
  %136 = tail call float @llvm.fmuladd.f32(float %104, float %124, float %135)
  %137 = fmul float %124, %116
  %138 = tail call float @llvm.fmuladd.f32(float %98, float %128, float %137)
  %139 = fmul float %136, %136
  %140 = tail call float @llvm.fmuladd.f32(float %134, float %134, float %139)
  %141 = tail call float @llvm.fmuladd.f32(float %138, float %138, float %140)
  %142 = fdiv float %141, %107
  %143 = fcmp ogt float %142, %119
  %144 = select i1 %143, float %142, float %119
  %145 = add i32 %118, 1
  %146 = icmp eq i32 %145, %110
  br i1 %146, label %147, label %117, !llvm.loop !228

147:                                              ; preds = %117, %109, %92
  %148 = phi float [ 0x47EFFFFFE0000000, %92 ], [ 0.000000e+00, %109 ], [ %144, %117 ]
  %149 = fcmp oeq float %35, 0.000000e+00
  %150 = fsub float %35, %95
  %151 = fdiv float %150, %95
  %152 = fmul float %151, %151
  %153 = select i1 %149, float 0x47EFFFFFE0000000, float %152
  %154 = fadd float %93, %153
  %155 = fadd float %154, %148
  ret float %155
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #6

declare ptr @IT_next(ptr noundef) local_unnamed_addr #2

declare void @BIF_flagMultiArcs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @retargetSubgraph(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %40, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.RigNode, ptr %3, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !178
  %9 = getelementptr inbounds %struct.RigArc, ptr %2, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !177
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %12 = tail call ptr %11(i64 noundef 32, ptr noundef nonnull @.str.49) #14
  store ptr %1, ptr %12, align 8, !tbaa !172
  %13 = getelementptr inbounds %struct.RetargetParam, ptr %12, i64 0, i32 1
  store ptr %2, ptr %13, align 8, !tbaa !174
  %14 = getelementptr inbounds %struct.RetargetParam, ptr %12, i64 0, i32 2
  store ptr %3, ptr %14, align 8, !tbaa !176
  %15 = getelementptr inbounds %struct.RetargetParam, ptr %12, i64 0, i32 3
  store ptr %0, ptr %15, align 8, !tbaa !175
  %16 = getelementptr inbounds %struct.RigGraph, ptr %1, i64 0, i32 13
  %17 = load ptr, ptr %16, align 8, !tbaa !38
  tail call void @BLI_task_pool_push(ptr noundef %17, ptr noundef nonnull @exec_retargetArctoArc, ptr noundef nonnull %12, i8 noundef zeroext 1, i32 noundef 1) #14
  %18 = tail call ptr @BIF_otherNodeFromIndex(ptr noundef %10, ptr noundef %8) #14
  %19 = tail call ptr @BLI_otherNode(ptr noundef nonnull %2, ptr noundef %3) #14
  %20 = getelementptr inbounds %struct.RigGraph, ptr %1, i64 0, i32 11
  %21 = load ptr, ptr %20, align 8, !tbaa !44
  %22 = tail call ptr @BIF_graphForMultiNode(ptr noundef %21, ptr noundef %18) #14
  %23 = tail call i32 @BLI_subtreeShape(ptr noundef %1, ptr noundef %19, ptr noundef null, i32 noundef 0) #14
  %24 = srem i32 %23, 100
  %25 = tail call i32 @BLI_subtreeShape(ptr noundef %22, ptr noundef %18, ptr noundef null, i32 noundef 0) #14
  %26 = getelementptr inbounds %struct.RigNode, ptr %19, i64 0, i32 10
  store ptr %18, ptr %26, align 8, !tbaa !178
  %27 = srem i32 %25, 100
  %28 = icmp eq i32 %24, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %6, %34
  %30 = phi ptr [ %32, %34 ], [ %18, %6 ]
  %31 = getelementptr inbounds %struct.ReebNode, ptr %30, i64 0, i32 14
  %32 = load ptr, ptr %31, align 8, !tbaa !229
  %33 = icmp eq ptr %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %29
  store ptr %30, ptr %26, align 8, !tbaa !178
  %35 = load ptr, ptr %20, align 8, !tbaa !44
  %36 = tail call ptr @BIF_graphForMultiNode(ptr noundef %35, ptr noundef nonnull %32) #14
  %37 = tail call i32 @BLI_subtreeShape(ptr noundef %36, ptr noundef nonnull %32, ptr noundef null, i32 noundef 0) #14
  %38 = srem i32 %37, 100
  %39 = icmp eq i32 %24, %38
  br i1 %39, label %29, label %40, !llvm.loop !231

40:                                               ; preds = %34, %29, %6, %4
  %41 = phi ptr [ %3, %4 ], [ %19, %6 ], [ %19, %29 ], [ %19, %34 ]
  %42 = getelementptr inbounds %struct.RigNode, ptr %41, i64 0, i32 4
  %43 = load i32, ptr %42, align 8, !tbaa !59
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.RigNode, ptr %41, i64 0, i32 5
  br label %47

47:                                               ; preds = %45, %58
  %48 = phi i64 [ 0, %45 ], [ %59, %58 ]
  %49 = load ptr, ptr %46, align 8, !tbaa !123
  %50 = getelementptr inbounds ptr, ptr %49, i64 %48
  %51 = load ptr, ptr %50, align 8, !tbaa !45
  %52 = icmp eq ptr %51, %2
  br i1 %52, label %58, label %53

53:                                               ; preds = %47
  tail call fastcc void @findCorrespondingArc(ptr noundef %1, ptr noundef %41, ptr noundef %51, i32 noundef 1)
  %54 = getelementptr inbounds %struct.RigArc, ptr %51, i64 0, i32 11
  %55 = load ptr, ptr %54, align 8, !tbaa !177
  %56 = icmp eq ptr %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  tail call fastcc void @retargetSubgraph(ptr noundef %0, ptr noundef %1, ptr noundef %51, ptr noundef %41)
  br label %58

58:                                               ; preds = %53, %57, %47
  %59 = add nuw nsw i64 %48, 1
  %60 = load i32, ptr %42, align 8, !tbaa !59
  %61 = sext i32 %60 to i64
  %62 = icmp slt i64 %59, %61
  br i1 %62, label %47, label %63, !llvm.loop !232

63:                                               ; preds = %58, %40
  ret void
}

declare void @ED_armature_from_edit(ptr noundef) local_unnamed_addr #2

declare i32 @BLI_subtreeShape(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BIF_otherNodeFromIndex(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_otherNode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @findCorrespondingArc(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.RigNode, ptr %1, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !178
  %7 = getelementptr inbounds %struct.RigArc, ptr %2, i64 0, i32 6
  %8 = load i32, ptr %7, align 8, !tbaa !65
  %9 = getelementptr inbounds %struct.RigArc, ptr %2, i64 0, i32 7
  %10 = load i32, ptr %9, align 4, !tbaa !67
  %11 = getelementptr inbounds %struct.RigArc, ptr %2, i64 0, i32 8
  %12 = load i32, ptr %11, align 8, !tbaa !66
  %13 = getelementptr inbounds %struct.RigArc, ptr %2, i64 0, i32 11
  store ptr null, ptr %13, align 8, !tbaa !177
  %14 = getelementptr inbounds %struct.ReebNode, ptr %6, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !233
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %44

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.ReebNode, ptr %6, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !234
  %20 = zext nneg i32 %15 to i64
  br label %21

21:                                               ; preds = %17, %41
  %22 = phi i64 [ 0, %17 ], [ %42, %41 ]
  %23 = getelementptr inbounds ptr, ptr %19, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !45
  %25 = getelementptr inbounds %struct.ReebArc, ptr %24, i64 0, i32 4
  %26 = load i32, ptr %25, align 8, !tbaa !235
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.ReebArc, ptr %24, i64 0, i32 8
  %30 = load i32, ptr %29, align 8, !tbaa !236
  %31 = icmp eq i32 %30, %12
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.ReebArc, ptr %24, i64 0, i32 7
  %34 = load i32, ptr %33, align 4, !tbaa !237
  %35 = icmp eq i32 %34, %10
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.ReebArc, ptr %24, i64 0, i32 6
  %38 = load i32, ptr %37, align 8, !tbaa !238
  %39 = icmp eq i32 %38, %8
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  tail call fastcc void @matchMultiResolutionArc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %24)
  br label %44

41:                                               ; preds = %21, %28, %32, %36
  %42 = add nuw nsw i64 %22, 1
  %43 = icmp eq i64 %42, %20
  br i1 %43, label %44, label %21, !llvm.loop !239

44:                                               ; preds = %41, %4, %40
  %45 = getelementptr inbounds %struct.ReebNode, ptr %6, i64 0, i32 4
  %46 = load ptr, ptr %13, align 8, !tbaa !177
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.ReebNode, ptr %6, i64 0, i32 15
  %50 = load ptr, ptr %49, align 8, !tbaa !240
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  store ptr %50, ptr %5, align 8, !tbaa !178
  tail call fastcc void @findCorrespondingArc(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0)
  br label %53

53:                                               ; preds = %48, %52, %44
  %54 = icmp eq i32 %3, 0
  br i1 %54, label %80, label %55

55:                                               ; preds = %53
  %56 = load ptr, ptr %13, align 8, !tbaa !177
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %80

58:                                               ; preds = %55
  store ptr %6, ptr %5, align 8, !tbaa !178
  %59 = load i32, ptr %45, align 8, !tbaa !233
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %80

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.ReebNode, ptr %6, i64 0, i32 5
  %63 = load ptr, ptr %62, align 8, !tbaa !234
  %64 = zext nneg i32 %59 to i64
  br label %65

65:                                               ; preds = %61, %77
  %66 = phi i64 [ 0, %61 ], [ %78, %77 ]
  %67 = getelementptr inbounds ptr, ptr %63, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !45
  %69 = getelementptr inbounds %struct.ReebArc, ptr %68, i64 0, i32 4
  %70 = load i32, ptr %69, align 8, !tbaa !235
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.ReebArc, ptr %68, i64 0, i32 6
  %74 = load i32, ptr %73, align 8, !tbaa !238
  %75 = icmp eq i32 %74, %8
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  tail call fastcc void @matchMultiResolutionArc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %68)
  br label %80

77:                                               ; preds = %65, %72
  %78 = add nuw nsw i64 %66, 1
  %79 = icmp eq i64 %78, %64
  br i1 %79, label %80, label %65, !llvm.loop !241

80:                                               ; preds = %77, %58, %76, %55, %53
  ret void
}

declare ptr @BIF_graphForMultiNode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @matchMultiResolutionArc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ReebArc, ptr %3, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !179
  %7 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !44
  %9 = tail call ptr @BIF_graphForMultiNode(ptr noundef %8, ptr noundef %6) #14
  %10 = tail call i32 @BLI_subtreeShape(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 1) #14
  %11 = srem i32 %10, 100
  %12 = tail call i32 @BLI_subtreeShape(ptr noundef %9, ptr noundef %6, ptr noundef %3, i32 noundef 1) #14
  %13 = srem i32 %12, 100
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %30, label %15

15:                                               ; preds = %4, %21
  %16 = phi ptr [ %19, %21 ], [ %3, %4 ]
  %17 = phi ptr [ %24, %21 ], [ %9, %4 ]
  %18 = getelementptr inbounds %struct.ReebArc, ptr %16, i64 0, i32 14
  %19 = load ptr, ptr %18, align 8, !tbaa !242
  %20 = icmp eq ptr %19, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.ReebArc, ptr %16, i64 0, i32 4
  store i32 1, ptr %22, align 8, !tbaa !235
  %23 = getelementptr inbounds %struct.ReebGraph, ptr %17, i64 0, i32 11
  %24 = load ptr, ptr %23, align 8, !tbaa !209
  %25 = getelementptr inbounds %struct.ReebArc, ptr %19, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !179
  %27 = tail call i32 @BLI_subtreeShape(ptr noundef %24, ptr noundef %26, ptr noundef nonnull %19, i32 noundef 1) #14
  %28 = srem i32 %27, 100
  %29 = icmp eq i32 %11, %28
  br i1 %29, label %30, label %15, !llvm.loop !243

30:                                               ; preds = %15, %21, %4
  %31 = phi ptr [ %3, %4 ], [ %16, %15 ], [ %19, %21 ]
  %32 = getelementptr inbounds %struct.ReebArc, ptr %31, i64 0, i32 4
  store i32 2, ptr %32, align 8, !tbaa !235
  %33 = getelementptr inbounds %struct.RigArc, ptr %2, i64 0, i32 11
  store ptr %31, ptr %33, align 8, !tbaa !177
  %34 = getelementptr inbounds %struct.ReebArc, ptr %31, i64 0, i32 14
  %35 = load ptr, ptr %34, align 8, !tbaa !242
  %36 = icmp eq ptr %35, null
  br i1 %36, label %55, label %37

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.ReebArc, ptr %31, i64 0, i32 3
  br label %39

39:                                               ; preds = %37, %51
  %40 = phi ptr [ %35, %37 ], [ %53, %51 ]
  %41 = getelementptr inbounds %struct.ReebArc, ptr %40, i64 0, i32 4
  store i32 1, ptr %41, align 8, !tbaa !235
  %42 = getelementptr inbounds %struct.ReebArc, ptr %40, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !181
  %44 = getelementptr inbounds %struct.ReebNode, ptr %43, i64 0, i32 11
  %45 = load i32, ptr %44, align 4, !tbaa !244
  %46 = load ptr, ptr %38, align 8, !tbaa !181
  %47 = getelementptr inbounds %struct.ReebNode, ptr %46, i64 0, i32 11
  %48 = load i32, ptr %47, align 4, !tbaa !244
  %49 = icmp eq i32 %45, %48
  br i1 %49, label %51, label %50

50:                                               ; preds = %39
  tail call fastcc void @markMultiResolutionChildArc(ptr noundef %43, ptr noundef %43)
  br label %51

51:                                               ; preds = %50, %39
  %52 = getelementptr inbounds %struct.ReebArc, ptr %40, i64 0, i32 14
  %53 = load ptr, ptr %52, align 8, !tbaa !242
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %39, !llvm.loop !245

55:                                               ; preds = %51, %30
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @markMultiResolutionChildArc(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.ReebNode, ptr %1, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !233
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %31

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ReebNode, ptr %1, i64 0, i32 5
  br label %8

8:                                                ; preds = %6, %26
  %9 = phi i64 [ 0, %6 ], [ %27, %26 ]
  %10 = load ptr, ptr %7, align 8, !tbaa !234
  %11 = getelementptr inbounds ptr, ptr %10, i64 %9
  %12 = load ptr, ptr %11, align 8, !tbaa !45
  %13 = getelementptr inbounds %struct.ReebArc, ptr %12, i64 0, i32 4
  %14 = load i32, ptr %13, align 8, !tbaa !235
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %8
  store i32 1, ptr %13, align 8, !tbaa !235
  %17 = getelementptr inbounds %struct.ReebArc, ptr %12, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !181
  %19 = getelementptr inbounds %struct.ReebNode, ptr %18, i64 0, i32 4
  %20 = load i32, ptr %19, align 8, !tbaa !233
  %21 = icmp slt i32 %20, 2
  %22 = icmp eq ptr %18, %0
  %23 = or i1 %22, %21
  br i1 %23, label %25, label %24

24:                                               ; preds = %16
  tail call fastcc void @markMultiResolutionChildArc(ptr noundef %0, ptr noundef %18)
  br label %25

25:                                               ; preds = %16, %24
  br i1 %15, label %31, label %26

26:                                               ; preds = %8, %25
  %27 = add nuw nsw i64 %9, 1
  %28 = load i32, ptr %3, align 8, !tbaa !233
  %29 = sext i32 %28 to i64
  %30 = icmp slt i64 %27, %29
  br i1 %30, label %8, label %31, !llvm.loop !246

31:                                               ; preds = %26, %25, %2
  ret void
}

declare ptr @BLI_ghash_ptr_new(ptr noundef) local_unnamed_addr #2

declare void @preEditBoneDuplicate(ptr noundef) local_unnamed_addr #2

declare void @updateDuplicateSubtargetObjects(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @renameTemplateBone(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  br label %6

6:                                                ; preds = %5, %33
  %7 = phi i32 [ 0, %5 ], [ %36, %33 ]
  %8 = phi i32 [ 0, %5 ], [ %37, %33 ]
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i8, ptr %1, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !69
  switch i8 %11, label %30 [
    i8 0, label %41
    i8 38, label %12
  ]

12:                                               ; preds = %6
  %13 = add nsw i32 %8, 1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, ptr %1, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !69
  switch i8 %16, label %27 [
    i8 83, label %17
    i8 115, label %17
    i8 78, label %22
    i8 110, label %22
  ]

17:                                               ; preds = %12, %12
  %18 = sext i32 %7 to i64
  %19 = getelementptr inbounds i8, ptr %0, i64 %18
  %20 = tail call i64 @BLI_strncpy_rlen(ptr noundef %19, ptr noundef %3, i64 noundef 64) #14
  %21 = trunc i64 %20 to i32
  br label %33

22:                                               ; preds = %12, %12
  %23 = sext i32 %7 to i64
  %24 = getelementptr inbounds i8, ptr %0, i64 %23
  %25 = tail call i64 @BLI_strncpy_rlen(ptr noundef %24, ptr noundef %4, i64 noundef 64) #14
  %26 = trunc i64 %25 to i32
  br label %33

27:                                               ; preds = %12
  %28 = sext i32 %7 to i64
  %29 = getelementptr inbounds i8, ptr %0, i64 %28
  store i8 %11, ptr %29, align 1, !tbaa !69
  br label %33

30:                                               ; preds = %6
  %31 = sext i32 %7 to i64
  %32 = getelementptr inbounds i8, ptr %0, i64 %31
  store i8 %11, ptr %32, align 1, !tbaa !69
  br label %33

33:                                               ; preds = %30, %22, %27, %17
  %34 = phi i32 [ %13, %17 ], [ %13, %22 ], [ %8, %27 ], [ %8, %30 ]
  %35 = phi i32 [ %21, %17 ], [ %26, %22 ], [ 1, %27 ], [ 1, %30 ]
  %36 = add i32 %35, %7
  %37 = add nsw i32 %34, 1
  %38 = icmp slt i32 %34, 62
  %39 = icmp slt i32 %36, 63
  %40 = select i1 %38, i1 %39, i1 false
  br i1 %40, label %6, label %41, !llvm.loop !247

41:                                               ; preds = %6, %33
  %42 = phi i32 [ %7, %6 ], [ %36, %33 ]
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, ptr %0, i64 %43
  store i8 0, ptr %44, align 1, !tbaa !69
  tail call void @unique_editbone_name(ptr noundef %2, ptr noundef %0, ptr noundef null) #14
  ret void
}

declare ptr @duplicateEditBoneObjects(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @BLI_strncpy_rlen(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @unique_editbone_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_task_pool_push(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare void @BLI_task_pool_work_and_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(read) }

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
!38 = !{!39, !41, i64 128}
!39 = !{!"RigGraph", !40, i64 0, !40, i64 16, !35, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !42, i64 72, !40, i64 80, !41, i64 96, !41, i64 104, !41, i64 112, !41, i64 120, !41, i64 128, !41, i64 136, !41, i64 144, !41, i64 152}
!40 = !{!"ListBase", !41, i64 0, !41, i64 8}
!41 = !{!"any pointer", !36, i64 0}
!42 = !{!"int", !36, i64 0}
!43 = !{!39, !41, i64 120}
!44 = !{!39, !41, i64 112}
!45 = !{!41, !41, i64 0}
!46 = distinct !{!46, !47, !48}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!"llvm.loop.unroll.disable"}
!49 = distinct !{!49, !47, !48}
!50 = !{!39, !41, i64 136}
!51 = !{!39, !41, i64 144}
!52 = !{!39, !42, i64 72}
!53 = !{!39, !41, i64 96}
!54 = !{!55, !41, i64 56}
!55 = !{!"RigEdge", !41, i64 0, !41, i64 8, !36, i64 16, !36, i64 28, !35, i64 40, !35, i64 44, !35, i64 48, !41, i64 56, !36, i64 64}
!56 = distinct !{!56, !47, !48}
!57 = !{!58, !41, i64 16}
!58 = !{!"RigArc", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !42, i64 32, !35, i64 36, !42, i64 40, !42, i64 44, !42, i64 48, !40, i64 56, !42, i64 72, !41, i64 80}
!59 = !{!60, !42, i64 32}
!60 = !{!"RigNode", !41, i64 0, !41, i64 8, !36, i64 16, !42, i64 28, !42, i64 32, !41, i64 40, !42, i64 48, !42, i64 52, !42, i64 56, !36, i64 60, !41, i64 72}
!61 = !{!60, !42, i64 56}
!62 = !{!55, !35, i64 40}
!63 = !{!55, !35, i64 44}
!64 = distinct !{!64, !47, !48}
!65 = !{!58, !42, i64 40}
!66 = !{!58, !42, i64 48}
!67 = !{!58, !42, i64 44}
!68 = !{!58, !41, i64 24}
!69 = !{!36, !36, i64 0}
!70 = !{!71, !41, i64 48}
!71 = !{!"RigControl", !41, i64 0, !41, i64 8, !36, i64 16, !36, i64 28, !41, i64 40, !41, i64 48, !41, i64 56, !36, i64 64, !36, i64 76, !36, i64 88, !42, i64 104, !42, i64 108}
!72 = !{!71, !41, i64 40}
!73 = !{!71, !42, i64 104}
!74 = distinct !{!74, !47, !48}
!75 = distinct !{!75, !47, !48}
!76 = !{!39, !41, i64 104}
!77 = !{!39, !41, i64 40}
!78 = !{!39, !41, i64 48}
!79 = !{!80, !41, i64 296}
!80 = !{!"Object", !81, i64 0, !41, i64 120, !41, i64 128, !82, i64 136, !82, i64 138, !42, i64 140, !42, i64 144, !42, i64 148, !36, i64 152, !41, i64 216, !41, i64 224, !41, i64 232, !41, i64 240, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !41, i64 280, !41, i64 288, !41, i64 296, !41, i64 304, !83, i64 312, !41, i64 360, !40, i64 368, !40, i64 384, !40, i64 400, !40, i64 416, !42, i64 432, !42, i64 436, !41, i64 440, !41, i64 448, !42, i64 456, !42, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !35, i64 616, !35, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !42, i64 944, !82, i64 948, !82, i64 950, !82, i64 952, !82, i64 954, !82, i64 956, !82, i64 958, !82, i64 960, !82, i64 962, !82, i64 964, !36, i64 966, !36, i64 967, !42, i64 968, !42, i64 972, !42, i64 976, !42, i64 980, !42, i64 984, !35, i64 988, !35, i64 992, !35, i64 996, !35, i64 1000, !35, i64 1004, !35, i64 1008, !35, i64 1012, !35, i64 1016, !35, i64 1020, !35, i64 1024, !35, i64 1028, !35, i64 1032, !82, i64 1036, !82, i64 1038, !82, i64 1040, !36, i64 1042, !36, i64 1043, !82, i64 1044, !36, i64 1046, !36, i64 1047, !35, i64 1048, !35, i64 1052, !40, i64 1056, !40, i64 1072, !40, i64 1088, !40, i64 1104, !35, i64 1120, !82, i64 1124, !82, i64 1126, !36, i64 1128, !42, i64 1144, !42, i64 1148, !41, i64 1152, !36, i64 1160, !36, i64 1161, !82, i64 1162, !36, i64 1164, !40, i64 1176, !40, i64 1192, !40, i64 1208, !40, i64 1224, !41, i64 1240, !41, i64 1248, !41, i64 1256, !36, i64 1264, !36, i64 1265, !82, i64 1266, !35, i64 1268, !41, i64 1272, !41, i64 1280, !41, i64 1288, !41, i64 1296, !84, i64 1304, !84, i64 1312, !42, i64 1320, !42, i64 1324, !40, i64 1328, !40, i64 1344, !41, i64 1360, !41, i64 1368, !41, i64 1376, !36, i64 1384, !41, i64 1392, !40, i64 1400, !41, i64 1416}
!81 = !{!"ID", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !36, i64 32, !82, i64 98, !42, i64 100, !42, i64 104, !42, i64 108, !41, i64 112}
!82 = !{!"short", !36, i64 0}
!83 = !{!"bAnimVizSettings", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !82, i64 16, !82, i64 18, !82, i64 20, !82, i64 22, !82, i64 24, !82, i64 26, !82, i64 28, !82, i64 30, !42, i64 32, !42, i64 36, !42, i64 40, !42, i64 44}
!84 = !{!"long", !36, i64 0}
!85 = !{!86, !41, i64 160}
!86 = !{!"bArmature", !81, i64 0, !41, i64 120, !40, i64 128, !40, i64 144, !41, i64 160, !41, i64 168, !41, i64 176, !41, i64 184, !42, i64 192, !42, i64 196, !42, i64 200, !42, i64 204, !82, i64 208, !82, i64 210, !42, i64 212, !42, i64 216, !42, i64 220, !82, i64 224, !82, i64 226, !82, i64 228, !82, i64 230, !42, i64 232, !42, i64 236, !42, i64 240, !42, i64 244, !42, i64 248, !42, i64 252}
!87 = !{!39, !41, i64 152}
!88 = !{!89, !41, i64 24}
!89 = !{!"EditBone", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !36, i64 40, !35, i64 104, !36, i64 108, !36, i64 120, !42, i64 132, !42, i64 136, !35, i64 140, !35, i64 144, !35, i64 148, !35, i64 152, !35, i64 156, !35, i64 160, !35, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !82, i64 180}
!90 = distinct !{!90, !47, !48}
!91 = !{!39, !41, i64 0}
!92 = !{!58, !41, i64 64}
!93 = !{!89, !42, i64 132}
!94 = distinct !{!94, !47, !48}
!95 = !{!39, !41, i64 16}
!96 = !{!97, !41, i64 264}
!97 = !{!"Scene", !81, i64 0, !41, i64 120, !41, i64 128, !41, i64 136, !41, i64 144, !40, i64 152, !41, i64 168, !41, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !42, i64 232, !42, i64 236, !42, i64 240, !82, i64 244, !36, i64 246, !36, i64 247, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !98, i64 280, !107, i64 4264, !40, i64 4296, !40, i64 4312, !41, i64 4328, !41, i64 4336, !41, i64 4344, !41, i64 4352, !41, i64 4360, !41, i64 4368, !82, i64 4376, !82, i64 4378, !42, i64 4380, !40, i64 4384, !108, i64 4400, !109, i64 4416, !112, i64 4600, !41, i64 4608, !113, i64 4616, !41, i64 4640, !84, i64 4648, !84, i64 4656, !100, i64 4664, !101, i64 4824, !114, i64 4888, !41, i64 4952}
!98 = !{!"RenderData", !99, i64 0, !41, i64 248, !41, i64 256, !102, i64 264, !103, i64 328, !42, i64 400, !42, i64 404, !42, i64 408, !35, i64 412, !42, i64 416, !42, i64 420, !42, i64 424, !42, i64 428, !82, i64 432, !82, i64 434, !35, i64 436, !35, i64 440, !35, i64 444, !35, i64 448, !35, i64 452, !82, i64 456, !82, i64 458, !82, i64 460, !82, i64 462, !82, i64 464, !82, i64 466, !42, i64 468, !82, i64 472, !82, i64 474, !82, i64 476, !82, i64 478, !82, i64 480, !82, i64 482, !42, i64 484, !42, i64 488, !82, i64 492, !82, i64 494, !42, i64 496, !42, i64 500, !82, i64 504, !82, i64 506, !82, i64 508, !82, i64 510, !82, i64 512, !36, i64 514, !36, i64 515, !42, i64 516, !42, i64 520, !42, i64 524, !82, i64 528, !82, i64 530, !82, i64 532, !82, i64 534, !82, i64 536, !82, i64 538, !82, i64 540, !82, i64 542, !104, i64 544, !104, i64 560, !105, i64 576, !40, i64 592, !82, i64 608, !82, i64 610, !35, i64 612, !35, i64 616, !35, i64 620, !35, i64 624, !42, i64 628, !35, i64 632, !35, i64 636, !35, i64 640, !35, i64 644, !82, i64 648, !82, i64 650, !82, i64 652, !82, i64 654, !82, i64 656, !82, i64 658, !35, i64 660, !35, i64 664, !82, i64 668, !82, i64 670, !35, i64 672, !35, i64 676, !36, i64 680, !42, i64 1704, !82, i64 1708, !82, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !42, i64 2520, !82, i64 2524, !82, i64 2526, !35, i64 2528, !35, i64 2532, !82, i64 2536, !82, i64 2538, !35, i64 2540, !82, i64 2544, !82, i64 2546, !42, i64 2548, !82, i64 2552, !82, i64 2554, !82, i64 2556, !82, i64 2558, !35, i64 2560, !35, i64 2564, !41, i64 2568, !42, i64 2576, !35, i64 2580, !36, i64 2584, !106, i64 2616, !42, i64 3976, !42, i64 3980}
!99 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !82, i64 8, !82, i64 10, !35, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !100, i64 24, !101, i64 184}
!100 = !{!"ColorManagedViewSettings", !42, i64 0, !42, i64 4, !36, i64 8, !36, i64 72, !35, i64 136, !35, i64 140, !41, i64 144, !41, i64 152}
!101 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!102 = !{!"QuicktimeCodecSettings", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !42, i64 40, !42, i64 44, !82, i64 48, !82, i64 50, !42, i64 52, !42, i64 56, !42, i64 60}
!103 = !{!"FFMpegCodecData", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !35, i64 32, !42, i64 36, !42, i64 40, !42, i64 44, !42, i64 48, !42, i64 52, !42, i64 56, !42, i64 60, !41, i64 64}
!104 = !{!"rctf", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12}
!105 = !{!"rcti", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!106 = !{!"BakeData", !99, i64 0, !36, i64 248, !82, i64 1272, !82, i64 1274, !82, i64 1276, !82, i64 1278, !35, i64 1280, !35, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!107 = !{!"AudioData", !42, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !42, i64 16, !82, i64 20, !82, i64 22, !35, i64 24, !35, i64 28}
!108 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!109 = !{!"GameData", !108, i64 0, !82, i64 16, !82, i64 18, !82, i64 20, !82, i64 22, !82, i64 24, !82, i64 26, !82, i64 28, !82, i64 30, !82, i64 32, !36, i64 34, !110, i64 40, !82, i64 64, !82, i64 66, !35, i64 68, !111, i64 72, !35, i64 128, !35, i64 132, !42, i64 136, !82, i64 140, !82, i64 142, !82, i64 144, !82, i64 146, !82, i64 148, !82, i64 150, !82, i64 152, !82, i64 154, !82, i64 156, !82, i64 158, !82, i64 160, !82, i64 162, !35, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !35, i64 180}
!110 = !{!"GameDome", !82, i64 0, !82, i64 2, !82, i64 4, !82, i64 6, !35, i64 8, !35, i64 12, !41, i64 16}
!111 = !{!"RecastData", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !35, i64 24, !35, i64 28, !35, i64 32, !35, i64 36, !42, i64 40, !35, i64 44, !35, i64 48, !82, i64 52, !82, i64 54}
!112 = !{!"UnitSettings", !35, i64 0, !36, i64 4, !36, i64 5, !82, i64 6}
!113 = !{!"PhysicsSettings", !36, i64 0, !42, i64 12, !42, i64 16, !42, i64 20}
!114 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!115 = !{!116, !35, i64 376}
!116 = !{!"ToolSettings", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !35, i64 32, !35, i64 36, !35, i64 40, !82, i64 44, !82, i64 46, !36, i64 48, !36, i64 49, !36, i64 50, !36, i64 51, !35, i64 52, !82, i64 56, !36, i64 58, !36, i64 59, !117, i64 64, !119, i64 168, !35, i64 336, !35, i64 340, !82, i64 344, !82, i64 346, !36, i64 348, !36, i64 349, !82, i64 350, !35, i64 352, !35, i64 356, !35, i64 360, !35, i64 364, !35, i64 368, !35, i64 372, !35, i64 376, !35, i64 380, !35, i64 384, !35, i64 388, !82, i64 392, !36, i64 394, !36, i64 395, !36, i64 396, !36, i64 399, !41, i64 400, !36, i64 408, !36, i64 409, !36, i64 410, !36, i64 411, !36, i64 412, !36, i64 413, !36, i64 421, !36, i64 429, !36, i64 430, !36, i64 431, !36, i64 432, !36, i64 433, !82, i64 434, !82, i64 436, !82, i64 438, !82, i64 440, !36, i64 442, !36, i64 443, !36, i64 444, !36, i64 445, !36, i64 446, !36, i64 447, !42, i64 448, !42, i64 452, !42, i64 456, !42, i64 460, !82, i64 464, !82, i64 466, !42, i64 468, !35, i64 472, !35, i64 476, !120, i64 480, !121, i64 608}
!117 = !{!"ImagePaintSettings", !118, i64 0, !82, i64 40, !82, i64 42, !82, i64 44, !82, i64 46, !36, i64 48, !42, i64 52, !41, i64 56, !41, i64 64, !41, i64 72, !41, i64 80, !36, i64 88, !35, i64 100}
!118 = !{!"Paint", !41, i64 0, !41, i64 8, !41, i64 16, !36, i64 24, !42, i64 28, !42, i64 32, !42, i64 36}
!119 = !{!"ParticleEditSettings", !82, i64 0, !82, i64 2, !82, i64 4, !82, i64 6, !36, i64 8, !41, i64 120, !35, i64 128, !35, i64 132, !42, i64 136, !42, i64 140, !42, i64 144, !42, i64 148, !41, i64 152, !41, i64 160}
!120 = !{!"UnifiedPaintSettings", !42, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !36, i64 16, !36, i64 28, !42, i64 40, !36, i64 44, !35, i64 52, !42, i64 56, !42, i64 60, !36, i64 64, !36, i64 65, !35, i64 72, !36, i64 76, !42, i64 84, !35, i64 88, !36, i64 92, !36, i64 100, !42, i64 108, !41, i64 112, !35, i64 120, !42, i64 124}
!121 = !{!"MeshStatVis", !36, i64 0, !36, i64 1, !36, i64 3, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !36, i64 20, !36, i64 21, !35, i64 24, !35, i64 28, !35, i64 32, !35, i64 36}
!122 = !{!58, !42, i64 72}
!123 = !{!60, !41, i64 40}
!124 = !{!89, !35, i64 104}
!125 = !{!71, !42, i64 108}
!126 = distinct !{!126, !47, !48}
!127 = distinct !{!127, !47, !48}
!128 = distinct !{!128, !47, !48}
!129 = distinct !{!129, !47, !48}
!130 = !{!60, !41, i64 0}
!131 = !{}
!132 = distinct !{!132, !47, !48}
!133 = !{!58, !41, i64 56}
!134 = !{!55, !41, i64 0}
!135 = distinct !{!135, !47, !48}
!136 = distinct !{!136, !47, !48}
!137 = distinct !{!137, !47, !48}
!138 = distinct !{!138, !47, !48}
!139 = distinct !{!139, !47, !48}
!140 = !{!55, !41, i64 8}
!141 = distinct !{!141, !47, !48}
!142 = !{!80, !41, i64 288}
!143 = distinct !{!143, !47, !48}
!144 = !{!145, !41, i64 104}
!145 = !{!"bConstraintTypeInfo", !82, i64 0, !82, i64 2, !36, i64 4, !36, i64 36, !41, i64 72, !41, i64 80, !41, i64 88, !41, i64 96, !41, i64 104, !41, i64 112, !41, i64 120, !41, i64 128}
!146 = !{!147, !41, i64 16}
!147 = !{!"bConstraintTarget", !41, i64 0, !41, i64 8, !41, i64 16, !36, i64 24, !36, i64 88, !82, i64 152, !82, i64 154, !82, i64 156, !82, i64 158}
!148 = !{!149, !82, i64 24}
!149 = !{!"bConstraint", !41, i64 0, !41, i64 8, !41, i64 16, !82, i64 24, !82, i64 26, !36, i64 28, !36, i64 29, !36, i64 30, !82, i64 94, !35, i64 96, !35, i64 100, !41, i64 104, !35, i64 112, !35, i64 116}
!150 = !{i32 0, i32 2}
!151 = distinct !{!151, !47, !48}
!152 = !{!145, !41, i64 112}
!153 = distinct !{!153, !47, !48}
!154 = distinct !{!154, !47, !48}
!155 = distinct !{!155, !47, !48}
!156 = distinct !{!156, !47, !48}
!157 = distinct !{!157, !47, !48}
!158 = distinct !{!158, !47, !48}
!159 = distinct !{!159, !47, !48}
!160 = distinct !{!160, !47, !48}
!161 = distinct !{!161, !47, !48}
!162 = distinct !{!162, !47, !48}
!163 = distinct !{!163, !47, !48}
!164 = distinct !{!164, !47, !48}
!165 = !{!166, !41, i64 8}
!166 = !{!"GHashIterator", !41, i64 0, !41, i64 8, !42, i64 16}
!167 = !{!168, !41, i64 16}
!168 = !{!"_gh_Entry", !41, i64 0, !41, i64 8, !41, i64 16}
!169 = distinct !{!169, !47, !48}
!170 = !{!71, !41, i64 56}
!171 = distinct !{!171, !47, !48}
!172 = !{!173, !41, i64 0}
!173 = !{!"RetargetParam", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24}
!174 = !{!173, !41, i64 8}
!175 = !{!173, !41, i64 24}
!176 = !{!173, !41, i64 16}
!177 = !{!58, !41, i64 80}
!178 = !{!60, !41, i64 72}
!179 = !{!180, !41, i64 16}
!180 = !{!"ReebArc", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !42, i64 32, !35, i64 36, !42, i64 40, !42, i64 44, !42, i64 48, !40, i64 56, !42, i64 72, !41, i64 80, !41, i64 88, !35, i64 96, !41, i64 104}
!181 = !{!180, !41, i64 24}
!182 = distinct !{!182, !47, !48}
!183 = distinct !{!183, !47, !48}
!184 = !{!180, !42, i64 72}
!185 = !{!42, !42, i64 0}
!186 = distinct !{!186, !47, !48}
!187 = distinct !{!187, !47, !48}
!188 = !{!189, !42, i64 4}
!189 = !{!"MemoNode", !35, i64 0, !42, i64 4}
!190 = distinct !{!190, !47, !48}
!191 = distinct !{!191, !47, !48}
!192 = distinct !{!192, !47, !48}
!193 = !{!58, !35, i64 36}
!194 = distinct !{!194, !47, !48}
!195 = distinct !{!195, !47, !48}
!196 = !{!116, !36, i64 412}
!197 = !{!55, !35, i64 48}
!198 = distinct !{!198, !47, !48}
!199 = distinct !{!199, !47, !48}
!200 = !{!201, !41, i64 32}
!201 = !{!"CollectionPointerLink", !41, i64 0, !41, i64 8, !202, i64 16}
!202 = !{!"PointerRNA", !203, i64 0, !41, i64 8, !41, i64 16}
!203 = !{!"", !41, i64 0}
!204 = !{!205, !41, i64 32}
!205 = !{!"Base", !41, i64 0, !41, i64 8, !42, i64 16, !42, i64 20, !42, i64 24, !82, i64 28, !82, i64 30, !41, i64 32}
!206 = !{!80, !82, i64 136}
!207 = !{!208, !41, i64 16}
!208 = !{!"ReebGraph", !40, i64 0, !40, i64 16, !35, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !42, i64 72, !42, i64 76, !41, i64 80, !42, i64 88, !41, i64 96}
!209 = !{!208, !41, i64 96}
!210 = distinct !{!210, !47, !48}
!211 = distinct !{!211, !47, !48}
!212 = distinct !{!212, !47, !48}
!213 = !{!40, !41, i64 0}
!214 = distinct !{!214, !47, !48}
!215 = distinct !{!215, !47, !48}
!216 = distinct !{!216, !47, !48}
!217 = distinct !{!217, !47, !48}
!218 = distinct !{!218, !47, !48}
!219 = distinct !{!219, !47, !48}
!220 = distinct !{!220, !47, !48}
!221 = distinct !{!221, !47, !48}
!222 = distinct !{!222, !47, !48}
!223 = distinct !{!223, !47, !48}
!224 = !{!189, !35, i64 0}
!225 = !{!226, !42, i64 76}
!226 = !{!"BArcIterator", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !35, i64 72, !42, i64 76, !42, i64 80}
!227 = distinct !{!227, !47, !48}
!228 = distinct !{!228, !47, !48}
!229 = !{!230, !41, i64 96}
!230 = !{!"ReebNode", !41, i64 0, !41, i64 8, !36, i64 16, !42, i64 28, !42, i64 32, !41, i64 40, !42, i64 48, !42, i64 52, !42, i64 56, !36, i64 60, !36, i64 72, !42, i64 84, !35, i64 88, !42, i64 92, !41, i64 96, !41, i64 104}
!231 = distinct !{!231, !47, !48}
!232 = distinct !{!232, !47, !48}
!233 = !{!230, !42, i64 32}
!234 = !{!230, !41, i64 40}
!235 = !{!180, !42, i64 32}
!236 = !{!180, !42, i64 48}
!237 = !{!180, !42, i64 44}
!238 = !{!180, !42, i64 40}
!239 = distinct !{!239, !47, !48}
!240 = !{!230, !41, i64 104}
!241 = distinct !{!241, !47, !48}
!242 = !{!180, !41, i64 104}
!243 = distinct !{!243, !47, !48}
!244 = !{!230, !42, i64 84}
!245 = distinct !{!245, !47, !48}
!246 = distinct !{!246, !47, !48}
!247 = distinct !{!247, !47, !48}
